# Предисловие

Некоторые участки кода будет описаны с помощью языка программирования JavaScript для более упрощенного понимаю с ссылками на дизассемблированный код в комментариях.

# Jump table реализации

Следующая функция реализует поведение, напоминающее switch в языке JavaScript:

```nasm
; ROM address - 0x01D0D1, bank FF - D0C1
sub_D0C1_change_stack_pointer:
  ASL
  TAY
  INY
  INY
  PLA
  STA ram_0012
  PLA
  STA ram_0013
  LDA (ram_0012),Y
  PHA
  DEY
  LDA (ram_0012),Y
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