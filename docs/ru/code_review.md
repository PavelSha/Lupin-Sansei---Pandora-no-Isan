# Предисловие

Некоторые участки кода будет описаны с помощью языка программирования JavaScript для более упрощенного понимаю с ссылками на дизассемблированный код в комментариях.
Под RegA будем понимать содержимое регистра A.

# Jump table реализации

Следующая функция реализует поведение, напоминающее switch в языке JavaScript:

```nasm
; ROM address - 0x01D0D1, bank FF - $D0C1
sub_D0C1_change_stack_pointer:
  ASL
  TAY
  INY
  INY
  PLA
  STA $0012
  PLA
  STA $0013
  LDA ($0012),Y
  PHA
  DEY
  LDA ($0012),Y
  PHA
  RTS
```

Теперь вызов вышеуказанной функции в таком виде:

```nasm
JSR sub_D0C1_change_stack_pointer

.addr loc_00 - 1
.addr loc_01 - 1
.addr loc_02 - 1
.addr loc_03 - 1
.addr loc_04 - 1
.addr loc_05 - 1
.addr loc_06 - 1
.addr loc_07 - 1
```

Будет выполнять очень похожий механизм на языке JavaScript:

```js
// RegA - значение регистра-аккумулятора (регистр А)
switch(RegA) {
  case 0:
    fn_loc_00();
    break;
  case 1:
    fn_loc_01();
    break;
  case 2:
    fn_loc_02();
    break;
  case 3:
    fn_loc_03();
    break;
  case 4:
    fn_loc_04();
    break;
  case 5:
    fn_loc_05();
    break;
  case 6:
    fn_loc_06();
    break;
  case 7:
    fn_loc_07();
    break;
}
```

# Генерация случайных чисел (RNG)

Следующая функция используется в качестве генератора случайны чисел.
По сути, это функция ***5 * seed + 19*** на множестве значений байта, где ``seed`` постоянно заменяется по предыдыщему вычисленному случайному числу.

```js
/**
 * Смотри: ROM address - 0x01D074, bank FF - $D064
 * @return {Number} Случайное число из множества {0, 1, 2, ..., 255 }
 */
let rngSeed;
function fn_D064_generate_rng()
{
  // LDA vEnemyRNGValue
  // STA $0012
  let _ = rngSeed;
  
  // ASL
  // ASL
  // CLC
  // $0012
  _ = 5 * _;
  
  // CLC
  // ADC #$13
  _ = _ + 0x13;
  
  // STA vEnemyRNGValue
  rngSeed = _ & 0xFF;
  
  // RTS
  return rngSeed;
}
```

# Таблица с порядком отображения спрайтов

Для избежания ограничения в отображении 8-ми тайлов в ряд спрайты с каждым кадром отображаются в разном порядке, что может вызывать "эффект мерцания" (flicker effect).
Смотри ROM address - 0x01CFEE, bank FF - $CFDE

|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|Индекс|
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10| 11| 12| 13| 14| 15|
| 9 | 10| 11| 12| 13| 14| 15| 2 | 3 | 4 | 5 | 6 | 7 | 8 | 1 | 0 |
| 15| 14| 13| 12| 11| 10| 0 | 1 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 |
| 1 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 0 | 15| 14| 13| 12| 11| 10| 9 |
| 5 | 6 | 7 | 8 | 2 | 3 | 4 | 12| 13| 14| 0 | 1 | 15| 9 | 8 | 7 |
| 12| 13| 14| 15| 1 | 0 | 9 | 10| 11| 5 | 6 | 7 | 8 | 2 | 3 | 4 |
| 4 | 3 | 2 | 1 | 0 | 8 | 7 | 6 | 5 | 11| 10| 9 | 15| 14| 13| 12|
| 11| 10| 9 | 15| 14| 13| 12| 1 | 0 | 4 | 3 | 2 | 8 | 7 | 6 | 5 |

# Логика поведения врагов

В целом, все враги, включая боссов ведут себя похожим образом, используя или не используя код, который отвечает за особенности поведения врага.
Существует цепочки кода для серии врагом, а есть цепочки только конкрентного типа врага или босса.
Рассмотрим на примере логику поведения врага - [земного водолаза](bestiary.md#враг-04).

```js
// Зададим статусы врагов как список булевских переменных
let enemyStatus = [{}, {}];
for (let i = 0; i < enemyStatus.length; i++)
{
  enemyStatus[i]['direction']    = false;
  enemyStatus[i]['jump']         = false;
  enemyStatus[i]['appear']       = false;
  enemyStatus[i]['stop']         = false;
  enemyStatus[i]['squatting']    = false;
  enemyStatus[i]['dying']        = false;
  enemyStatus[i]['canGetDamage'] = false;
  enemyStatus[i]['use']          = false;
}
// Временные переменные для хранения прямоугольной области столкновения
let hitBoxX, hitBoxY, hitBoxW, hitBoxH;
// Предположим, что следующая переменная после объявления приняла одно из следующих значений - 'lupin','jigen','goemon'.
let currentCharacter;
// Аналогично, одно из следующих значений - от 0 до 5;
let bulletCount;

/**
 * Функция, которая вызывается, когда земной водолаз появляется на экране.
 * Смотри: ROM address - 0x01805D, bank 06, page 01 - $A04D
 */
function fn_A04D_land_enemy_handler()
{
  // LDX #$01
  // STX vTempCounter1A
  for (let enemyNo = 0; enemyNo <= 1; enemyNo++)
  {
    // JSR sub_A0FA_status_behavior
    fn_A0FA_status_behavior(enemyNo);

    // CMP #$E0
    // BCS bra_A089_next
    // CMP #$C0
    // BCC bra_A089_next
    if (!('use' in enemyStatus[enemyNo] && 'canGetDamage' in enemyStatus[enemyNo] && !('dying' in enemyStatus[enemyNo])))
      continue;

    // sub_A0CC_prepare_hitbox
    fn_A0CC_prepare_hitbox(enemyNo);

    // JSR sub_D660_is_bomb_exploding
    // BCS @bra_A074_bomb_hit
    // Смотри: ROM address - 0x01D670, bank FF - $D660
    if (fn_D660_is_bomb_exploding())
    {
      // JSR sub_A098_hit
      fn_A098_hit(enemyNo);

      // JMP loc_A089_next
      continue;
    }
    else
    {
      // LDA vChrLiveStatus
      // AND #$02
      // BEQ bra_A07A_check_bullets
      if (currentCharacter != 'goemon')
      {
        // LDX vBulletCount
        for (let b = 0; b < bulletCount; b++)
        {
          // JSR sub_D5B6_have_intersect_bullet
          // BCS bra_A08E_bullet_hit
          // Смотри: ROM address - 0x01D5C6, bank FF - $D5B6
          if (fn_D5B6_have_intersect_bullet(b))
          {
            // LDA #$00
            // STA vBulletStatus,X
            // Здесь просто укажем, что vBulletStatus должна настроить все флаги на false по структуре, похожей на enemyStatus

            // JSR sub_A098_hit
            fn_A098_hit(enemyNo);

            // JMP loc_A089_next
            continue;
          }

        // DEX
        // BPL @bra_A07C_loop
        }

        // LDX vTempCounter1A
        // JSR sub_D562_has_character_damage
        // Смотри: ROM address - 0x01D572, bank FF - $D562
        fn_D562_has_character_damage();
      }
      else
      {
        // JSR sub_D606_have_intersect_sword
        // Смотри: ROM address - 0x01D616, bank FF - $D606
        if (fn_D606_have_intersect_sword())
        {
          // JSR sub_A098_hit
          fn_A098_hit(enemyNo);

          // JMP loc_A089_next
          continue;
        }
        else
        {
          // LDX vTempCounter1A
          // JSR sub_D562_has_character_damage
          // Смотри: ROM address - 0x01D572, bank FF - $D562
          fn_D562_has_character_damage();
        }
      }
    }

  // DEC vTempCounter1A
  // BPL bra_A051_loop
  }
  // RTS
}

/**
 * @param {number} enemyNo - номер врага
 */
function fn_A0FA_status_behavior(enemyNo)
{
  // todo ...
}

/**
 * @param {number} enemyNo - номер врага
 */
function fn_A0CC_prepare_hitbox(enemyNo)
{
  // todo ...
}

/**
 * Фиксируем нанесение урона по врагу
 * @param {number} enemyNo - номер врага
 */
function fn_A098_hit(enemyNo)
{
  // todo ...
}
```
