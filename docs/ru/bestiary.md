|Идентификатор|Имя|Тип|Подробнее|Уровень|
|---|---|---|---|---|
|0x00| - | - | - | - |
|0x01|Cat with the gun| A | [Большой кот](#враг-01) | 3 |
|0x02|Gray land hat| B |   | 3 |
|0x03|Black land hat| B |   | 3 |
|0x04|Land Diver| A |   | 3 |
|0x05|Land Diver| A |   | 2 |
|0x06|Land Diver| A | [Земной водолаз](#враг-06) | 1 |
|0x07|Zenigata| A |   |All|
|0x08|Shooter with bazooka| A |   | 3 |
|0x09|The fat sailor| A | [Полный моряк](#враг-09) | 3 |
|0x0A|The barrel| B |   | 3 |
|0x0B|Jumping sailor| B | [Прыгающий моряк](#враг-0b) | 3 |
|0x0C|The lift| A |   | 3 |
|0x0D|Sensor| B |   | 3 |
|0x0E|Bat| B | [Летучая мышь](#враг-0e) | 1 |
|0x0F|Gray cat| B | [Серый кот](#враг-0f) | 1 |
|0x10|Nun| A | [Монашка](#враг-10) | 2 |
|0x11|Girl in red, in the castle| A | [Девушка в красном](#враг-11) | 1 |
|0x12|Batterfly| B |   | 2 |
|0x13|Broned batterfly| B |   | 2 |
|0x14|Shooter with bazooka| A |   | 2 |
|0x15|Sensor| B |   | 2 |
|0x16|Black cat| B | [Чёрный кот](#враг-16) | 1 |
|0x17|Karate-boy| A | [Каратист](#враг-17) | 2 |
|0x18|Street karate-boy| A | [Уличный каратист](#враг-18) | 2 |
|0x19|Karate-girl| A | [Каратистка](#враг-19) | 2 |
|0x1A|Boy in green| A | [Парень в зелёном](#враг-1a) | 2 |
|0x1B|Girl with sword| A | [Девушка в красном, с мечом](#враг-1b) | 1 |
|0x1C|Knight in armor with a shield| A | [Рыцарь в доспехах](#враг-1c) | 1 |
|0x1D|The barrel| B |   | 2 |
|0x1E|Sensor| B |   | 1 |
|0x1F|Fly man| A | [Летающий человек](#враг-1f) | 1 |
|0x20|Shooter with bazooka| A | [Стрелок из базуки](#враг-20) | 1 |
|0x21|Cobblestone| B |   |4, racing|
|0x22|The bird| B |   |racing|
|0x23|The bird with a bomb| B |   |racing|
|0x24|Skeleton| A |   | 4 |
|0x25|Diver| B |   |   |
|0x26|Mummy| A |   | 4 |
|0x27|Gargoyle| B | [Гаргулья](#враг-27) | 4 |
|0x28|Boss1| A | [Халк](#враг-28) | 1 |
|0x29| - | - | - | - |
|0x2A|Boss2| A | [Ким](#враг-2a) | 2 |
|0x2B| - | - | - | - |
|0x2C|Boss3| A | [Рейд](#враг-2c) | 3 |
|0x2D| - | - | - | - |
|0x2E|Boss4| A | [Финальный босс](#враг-2e) | 4 |
|0x2F| - | - | - | - |
|0x30|Wall| B |   | 4 |
|0x31|Wall| B |   | 4 |
|0x32|Breaking platform| B |   | 4 |
|0x33|Blade trap| B |   | 4 |
|0x34|Potted snakes| B |   | 4 |
|0x35|Egyptian with bow| A | [Египтянин с луком](#враг-35) | 4 |
|0x36|Egyptian with a sword| A | [Египтянин с мечом](#враг-36) | 4 |
|0x37|Egyptian with a boomerung| A | [Египтянин с бумерангом](#враг-37) | 4 |
|0x38|Ninja upside down| A | [Ниндзя сверху](#враг-38) | 4 |
|0x39|Sensor| B |   | 4 |
|0x81|Cat with the knife| A | [Большой кот](#враг-01) | 3 |

## Враг 01
Большой кот
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/01/frame1-r.png) | ![Frame2](../images/enemies/01/frame2-r.png) | ![Frame3](../images/enemies/01/frame3-r.png) | ![Frame4](../images/enemies/01/frame4-r.png) | ![Frame5](../images/enemies/01/frame5-r.png) | ![Frame6](../images/enemies/01/frame6-r.png) |
| ![Frame1](../images/enemies/01/frame1-l.png) | ![Frame2](../images/enemies/01/frame2-l.png) | ![Frame3](../images/enemies/01/frame3-l.png) | ![Frame4](../images/enemies/01/frame4-l.png) | ![Frame5](../images/enemies/01/frame5-l.png) | ![Frame6](../images/enemies/01/frame6-l.png) |

|Кадр 1|Кадр 2|
|---|---|
| ![Frame1](../images/enemies/01/frame7-r.png) | ![Frame2](../images/enemies/01/frame8-r.png) |
| ![Frame1](../images/enemies/01/frame7-l.png) | ![Frame2](../images/enemies/01/frame8-l.png) |

|Кадр 1|Кадр 2|
|---|---|
| ![Frame1](../images/enemies/01/frame9-r.png) | ![Frame2](../images/enemies/01/frame10-r.png) |
| ![Frame1](../images/enemies/01/frame9-l.png) | ![Frame2](../images/enemies/01/frame10-l.png) |
### Статусы 
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - (_если используется нож_) флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***L*** - (_если используется пистолет_) используется совместно с ***K***, флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг остановки (**_0x00_** - не остановился, **_0x01_** - остановился)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 06
Земной водолаз, версия 1
<!---
<style>
    .frames
    {
        text-align: center;
    }
    .frames th
    {
        background: #C8ED58;
        text-align: center;
    }
</style>
-->
<!---
<div class="frames">
-->
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|
|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/06/frame1-r.png) | ![Frame2](../images/enemies/06/frame2-r.png) | ![Frame3](../images/enemies/06/frame3-r.png) | ![Frame4](../images/enemies/06/frame4-r.png) | ![Frame5](../images/enemies/06/frame5-r.png) | ![Frame6](../images/enemies/06/frame6-r.png) | ![Frame7](../images/enemies/06/frame7-r.png) |
| ![Frame1](../images/enemies/06/frame1-l.png) | ![Frame2](../images/enemies/06/frame2-l.png) | ![Frame3](../images/enemies/06/frame3-l.png) | ![Frame4](../images/enemies/06/frame4-l.png) | ![Frame5](../images/enemies/06/frame5-l.png) | ![Frame6](../images/enemies/06/frame6-l.png) | ![Frame7](../images/enemies/06/frame7-l.png) |
<!---
</div>
-->
<!---
Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-->

## Враг 09
Полный моряк
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/09/frame1-r.png) | ![Frame2](../images/enemies/09/frame2-r.png) | ![Frame3](../images/enemies/09/frame3-r.png) | ![Frame4](../images/enemies/09/frame4-r.png) | ![Frame5](../images/enemies/09/frame5-r.png) |
| ![Frame1](../images/enemies/09/frame1-l.png) | ![Frame2](../images/enemies/09/frame2-l.png) | ![Frame3](../images/enemies/09/frame3-l.png) | ![Frame4](../images/enemies/09/frame4-l.png) | ![Frame5](../images/enemies/09/frame5-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг обычного прыжка и прыжка через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - флаг ускоренного режима (**_0x00_** - режим не активирован, **_0x01_** - режим активирован)
-  ***K*** - флаг остановки (**_0x00_** - не остановился, **_0x01_** - остановился)
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 0B
Прыгающий моряк
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/0B/frame1-r.png) | ![Frame2](../images/enemies/0B/frame2-r.png) | ![Frame3](../images/enemies/0B/frame3-r.png) | ![Frame4](../images/enemies/0B/frame4-r.png) | ![Frame5](../images/enemies/0B/frame5-r.png) |
| ![Frame1](../images/enemies/0B/frame1-l.png) | ![Frame2](../images/enemies/0B/frame2-l.png) | ![Frame3](../images/enemies/0B/frame3-l.png) | ![Frame4](../images/enemies/0B/frame4-l.png) | ![Frame5](../images/enemies/0B/frame5-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - _не используется_
-  ***K*** - флаг ожидания приседания (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 0E
Летучая мышь
|Кадр 1|Кадр 2|Кадр 3|
|---|---|---|
| ![Frame1](../images/enemies/0E/frame1-r.png) | ![Frame2](../images/enemies/0E/frame2-r.png) | ![Frame3](../images/enemies/0E/frame3-r.png) |
| ![Frame1](../images/enemies/0E/frame1-l.png) | ![Frame2](../images/enemies/0E/frame2-l.png) | ![Frame3](../images/enemies/0E/frame3-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - _не используется_
-  ***L*** - _не используется_
-  ***K*** - _не используется_
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 0F
Серый кот
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/0F/frame1-r.png) | ![Frame2](../images/enemies/0F/frame2-r.png) | ![Frame3](../images/enemies/0F/frame3-r.png) | ![Frame4](../images/enemies/0F/frame4-r.png) | ![Frame5](../images/enemies/0F/frame5-r.png) |
| ![Frame1](../images/enemies/0F/frame1-l.png) | ![Frame2](../images/enemies/0F/frame2-l.png) | ![Frame3](../images/enemies/0F/frame3-l.png) | ![Frame4](../images/enemies/0F/frame4-l.png) | ![Frame5](../images/enemies/0F/frame5-l.png) |
<!---
Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-->

## Враг 10
Монашка
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/10/frame1-r.png) | ![Frame2](../images/enemies/10/frame2-r.png) | ![Frame3](../images/enemies/10/frame3-r.png) | ![Frame4](../images/enemies/10/frame4-r.png) | ![Frame5](../images/enemies/10/frame5-r.png) |
| ![Frame1](../images/enemies/10/frame1-l.png) | ![Frame2](../images/enemies/10/frame2-l.png) | ![Frame3](../images/enemies/10/frame3-l.png) | ![Frame4](../images/enemies/10/frame4-l.png) | ![Frame5](../images/enemies/10/frame5-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - _не используется_
-  ***K*** - флаг ожидания приседания (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 11
Девушка в красном
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/11/frame1-r.png) | ![Frame2](../images/enemies/11/frame2-r.png) | ![Frame3](../images/enemies/11/frame3-r.png) | ![Frame4](../images/enemies/11/frame4-r.png) | ![Frame5](../images/enemies/11/frame5-r.png) | ![Frame6](../images/enemies/11/frame6-r.png) | ![Frame7](../images/enemies/11/frame7-r.png) | ![Frame8](../images/enemies/11/frame8-r.png) |
| ![Frame1](../images/enemies/11/frame1-l.png) | ![Frame2](../images/enemies/11/frame2-l.png) | ![Frame3](../images/enemies/11/frame3-l.png) | ![Frame4](../images/enemies/11/frame4-l.png) | ![Frame5](../images/enemies/11/frame5-l.png) | ![Frame6](../images/enemies/11/frame6-l.png) | ![Frame7](../images/enemies/11/frame7-l.png) | ![Frame8](../images/enemies/11/frame8-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - _не используется_
-  ***K*** - флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 16
Чёрный кот
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/16/frame1-r.png) | ![Frame2](../images/enemies/16/frame2-r.png) | ![Frame3](../images/enemies/16/frame3-r.png) | ![Frame4](../images/enemies/16/frame4-r.png) | ![Frame5](../images/enemies/16/frame5-r.png) |
| ![Frame1](../images/enemies/16/frame1-l.png) | ![Frame2](../images/enemies/16/frame2-l.png) | ![Frame3](../images/enemies/16/frame3-l.png) | ![Frame4](../images/enemies/16/frame4-l.png) | ![Frame5](../images/enemies/16/frame5-l.png) |
<!---
Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-->

## Враг 17
Каратист
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/17/frame1-r.png) | ![Frame2](../images/enemies/17/frame2-r.png) | ![Frame3](../images/enemies/17/frame3-r.png) | ![Frame4](../images/enemies/17/frame4-r.png) | ![Frame5](../images/enemies/17/frame5-r.png) | ![Frame6](../images/enemies/17/frame6-r.png) | ![Frame7](../images/enemies/17/frame7-r.png) | ![Frame8](../images/enemies/17/frame8-r.png) |
| ![Frame1](../images/enemies/17/frame1-l.png) | ![Frame2](../images/enemies/17/frame2-l.png) | ![Frame3](../images/enemies/17/frame3-l.png) | ![Frame4](../images/enemies/17/frame4-l.png) | ![Frame5](../images/enemies/17/frame5-l.png) | ![Frame6](../images/enemies/17/frame6-l.png) | ![Frame7](../images/enemies/17/frame7-l.png) | ![Frame8](../images/enemies/17/frame8-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/19/frame1-r-b.png) | ![Frame2](../images/enemies/19/frame2-r-b.png) | ![Frame3](../images/enemies/19/frame3-r-b.png) | ![Frame4](../images/enemies/19/frame4-r-b.png) | ![Frame5](../images/enemies/19/frame5-r-b.png) | ![Frame6](../images/enemies/19/frame6-r-b.png) |
| ![Frame1](../images/enemies/19/frame1-l-b.png) | ![Frame2](../images/enemies/19/frame2-l-b.png) | ![Frame3](../images/enemies/19/frame3-l-b.png) | ![Frame4](../images/enemies/19/frame4-l-b.png) | ![Frame5](../images/enemies/19/frame5-l-b.png) | ![Frame6](../images/enemies/19/frame6-l-b.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - используется совместно с ***K***, флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 18
Уличный каратист
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/17/frame1-r.png) | ![Frame2](../images/enemies/17/frame2-r.png) | ![Frame3](../images/enemies/17/frame3-r.png) | ![Frame4](../images/enemies/17/frame4-r.png) | ![Frame5](../images/enemies/17/frame5-r.png) | ![Frame6](../images/enemies/17/frame6-r.png) | ![Frame7](../images/enemies/17/frame7-r.png) | ![Frame8](../images/enemies/17/frame8-r.png) |
| ![Frame1](../images/enemies/17/frame1-l.png) | ![Frame2](../images/enemies/17/frame2-l.png) | ![Frame3](../images/enemies/17/frame3-l.png) | ![Frame4](../images/enemies/17/frame4-l.png) | ![Frame5](../images/enemies/17/frame5-l.png) | ![Frame6](../images/enemies/17/frame6-l.png) | ![Frame7](../images/enemies/17/frame7-l.png) | ![Frame8](../images/enemies/17/frame8-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/19/frame1-r-b.png) | ![Frame2](../images/enemies/19/frame2-r-b.png) | ![Frame3](../images/enemies/19/frame3-r-b.png) | ![Frame4](../images/enemies/19/frame4-r-b.png) | ![Frame5](../images/enemies/19/frame5-r-b.png) | ![Frame6](../images/enemies/19/frame6-r-b.png) |
| ![Frame1](../images/enemies/19/frame1-l-b.png) | ![Frame2](../images/enemies/19/frame2-l-b.png) | ![Frame3](../images/enemies/19/frame3-l-b.png) | ![Frame4](../images/enemies/19/frame4-l-b.png) | ![Frame5](../images/enemies/19/frame5-l-b.png) | ![Frame6](../images/enemies/19/frame6-l-b.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/18/frame1-r.png) | ![Frame2](../images/enemies/18/frame2-r.png) | ![Frame3](../images/enemies/18/frame3-r.png) | ![Frame4](../images/enemies/18/frame4-r.png) | ![Frame5](../images/enemies/18/frame5-r.png) |
| ![Frame1](../images/enemies/18/frame1-l.png) | ![Frame2](../images/enemies/18/frame2-l.png) | ![Frame3](../images/enemies/18/frame3-l.png) | ![Frame4](../images/enemies/18/frame4-l.png) | ![Frame5](../images/enemies/18/frame5-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - флаг вращения во время прыжка (**_0x00_** - сальто, **_0x01_** - обычный прыжок)
-  ***K*** - флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 19
Каратистка
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|
|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/19/frame1-r.png) | ![Frame2](../images/enemies/19/frame2-r.png) | ![Frame3](../images/enemies/19/frame3-r.png) | ![Frame4](../images/enemies/19/frame4-r.png) | ![Frame5](../images/enemies/19/frame5-r.png) | ![Frame6](../images/enemies/19/frame6-r.png) | ![Frame7](../images/enemies/19/frame7-r.png) | ![Frame8](../images/enemies/19/frame8-r.png) | ![Frame9](../images/enemies/19/frame9-r.png) |
| ![Frame1](../images/enemies/19/frame1-l.png) | ![Frame2](../images/enemies/19/frame2-l.png) | ![Frame3](../images/enemies/19/frame3-l.png) | ![Frame4](../images/enemies/19/frame4-l.png) | ![Frame5](../images/enemies/19/frame5-l.png) | ![Frame6](../images/enemies/19/frame6-l.png) | ![Frame7](../images/enemies/19/frame7-l.png) | ![Frame8](../images/enemies/19/frame8-l.png) | ![Frame9](../images/enemies/19/frame9-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/19/frame1-r-b.png) | ![Frame2](../images/enemies/19/frame2-r-b.png) | ![Frame3](../images/enemies/19/frame3-r-b.png) | ![Frame4](../images/enemies/19/frame4-r-b.png) | ![Frame5](../images/enemies/19/frame5-r-b.png) | ![Frame6](../images/enemies/19/frame6-r-b.png) |
| ![Frame1](../images/enemies/19/frame1-l-b.png) | ![Frame2](../images/enemies/19/frame2-l-b.png) | ![Frame3](../images/enemies/19/frame3-l-b.png) | ![Frame4](../images/enemies/19/frame4-l-b.png) | ![Frame5](../images/enemies/19/frame5-l-b.png) | ![Frame6](../images/enemies/19/frame6-l-b.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - используется совместно с ***K***, флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг уклонения от выстрелов (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 1A
Парень в зелёном
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|Кадр 10|
|---|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/1A/frame1-r.png) | ![Frame2](../images/enemies/1A/frame2-r.png) | ![Frame3](../images/enemies/1A/frame3-r.png) | ![Frame4](../images/enemies/1A/frame4-r.png) | ![Frame5](../images/enemies/1A/frame5-r.png) | ![Frame6](../images/enemies/1A/frame6-r.png) | ![Frame7](../images/enemies/1A/frame7-r.png) | ![Frame8](../images/enemies/1A/frame8-r.png) | ![Frame9](../images/enemies/1A/frame9-r.png) | ![Frame10](../images/enemies/1A/frame10-r.png) |
| ![Frame1](../images/enemies/1A/frame1-l.png) | ![Frame2](../images/enemies/1A/frame2-l.png) | ![Frame3](../images/enemies/1A/frame3-l.png) | ![Frame4](../images/enemies/1A/frame4-l.png) | ![Frame5](../images/enemies/1A/frame5-l.png) | ![Frame6](../images/enemies/1A/frame6-l.png) | ![Frame7](../images/enemies/1A/frame7-l.png) | ![Frame8](../images/enemies/1A/frame8-l.png) | ![Frame9](../images/enemies/1A/frame9-l.png) | ![Frame10](../images/enemies/1A/frame10-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/19/frame1-r-b.png) | ![Frame2](../images/enemies/19/frame2-r-b.png) | ![Frame3](../images/enemies/19/frame3-r-b.png) | ![Frame4](../images/enemies/19/frame4-r-b.png) | ![Frame5](../images/enemies/19/frame5-r-b.png) | ![Frame6](../images/enemies/19/frame6-r-b.png) |
| ![Frame1](../images/enemies/19/frame1-l-b.png) | ![Frame2](../images/enemies/19/frame2-l-b.png) | ![Frame3](../images/enemies/19/frame3-l-b.png) | ![Frame4](../images/enemies/19/frame4-l-b.png) | ![Frame5](../images/enemies/19/frame5-l-b.png) | ![Frame6](../images/enemies/19/frame6-l-b.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - флаг использования дополнительного оружия, нунчаки (**_0x00_** - не используется, **_0x01_** - используется)
-  ***K*** - флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 1B
Девушка в красном, с мечом
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|
|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/11/frame1-r.png) | ![Frame2](../images/enemies/11/frame2-r.png) | ![Frame3](../images/enemies/11/frame3-r.png) | ![Frame4](../images/enemies/11/frame4-r.png) | ![Frame5](../images/enemies/11/frame5-r.png) | ![Frame6](../images/enemies/11/frame6-r.png) | ![Frame7](../images/enemies/11/frame7-r.png) | ![Frame9](../images/enemies/11/frame9-r.png) | ![Frame10](../images/enemies/11/frame10-r.png) |
| ![Frame1](../images/enemies/11/frame1-l.png) | ![Frame2](../images/enemies/11/frame2-l.png) | ![Frame3](../images/enemies/11/frame3-l.png) | ![Frame4](../images/enemies/11/frame4-l.png) | ![Frame5](../images/enemies/11/frame5-l.png) | ![Frame6](../images/enemies/11/frame6-l.png) | ![Frame7](../images/enemies/11/frame7-l.png) | ![Frame9](../images/enemies/11/frame9-l.png) | ![Frame10](../images/enemies/11/frame10-l.png) |
<!---
Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-->

## Враг 1С
Рыцарь в доспехах
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|
|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/1C/frame1-r.png) | ![Frame2](../images/enemies/1C/frame2-r.png) | ![Frame3](../images/enemies/1C/frame3-r.png) | ![Frame4](../images/enemies/1C/frame4-r.png) | ![Frame5](../images/enemies/1C/frame5-r.png) | ![Frame6](../images/enemies/1C/frame6-r.png) | ![Frame7](../images/enemies/1C/frame7-r.png) | ![Frame8](../images/enemies/1C/frame8-r.png) | ![Frame9](../images/enemies/1C/frame9.png) |
| ![Frame1](../images/enemies/1C/frame1-l.png) | ![Frame2](../images/enemies/1C/frame2-l.png) | ![Frame3](../images/enemies/1C/frame3-l.png) | ![Frame4](../images/enemies/1C/frame4-l.png) | ![Frame5](../images/enemies/1C/frame5-l.png) | ![Frame6](../images/enemies/1C/frame6-l.png) | ![Frame7](../images/enemies/1C/frame7-l.png) | ![Frame8](../images/enemies/1C/frame8-l.png) |  |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - флаг ближнего контакта, атака мечом (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг скрытия "в стене" (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 1F
Летающий человек
|Кадр 1|Кадр 2|Кадр 3|
|---|---|---|
| ![Frame1](../images/enemies/1F/frame1-r.png) | ![Frame2](../images/enemies/1F/frame2-r.png) | ![Frame3](../images/enemies/1F/frame3-r.png) |
| ![Frame1](../images/enemies/1F/frame1-l.png) | ![Frame2](../images/enemies/1F/frame2-l.png) | ![Frame3](../images/enemies/1F/frame3-l.png) |
<!---
Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-->

## Враг 20
Стрелок из базуки, версия 1
|Кадр 1|Кадр 2|Кадр 3|
|---|---|---|
| ![Frame1](../images/enemies/20/frame1-r.png) | ![Frame2](../images/enemies/20/frame2-r.png) | ![Frame3](../images/enemies/20/frame3-r.png) |
| ![Frame1](../images/enemies/20/frame1-l.png) | ![Frame2](../images/enemies/20/frame2-l.png) | ![Frame3](../images/enemies/20/frame3-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка после получения урона (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - _не используется_
-  ***K*** - _не используется_
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 27
Гаргулья
|Кадр 1|Кадр 2|Кадр 3|
|---|---|---|
| ![Frame1](../images/enemies/27/frame1-r.png) | ![Frame2](../images/enemies/27/frame2-r.png) | ![Frame3](../images/enemies/27/frame3-r.png) |
| ![Frame1](../images/enemies/27/frame1-l.png) | ![Frame2](../images/enemies/27/frame2-l.png) | ![Frame3](../images/enemies/27/frame3-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг ускоренного режима (**_0x00_** - режим не активирован, **_0x01_** - режим активирован)
-  ***L*** - _не используется_
-  ***K*** - _не используется_
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 28
Халк
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/28/frame1-r.png) | ![Frame2](../images/enemies/28/frame2-r.png) | ![Frame3](../images/enemies/28/frame3-r.png) | ![Frame4](../images/enemies/28/frame4-r.png) | ![Frame5](../images/enemies/28/frame5-r.png) | ![Frame6](../images/enemies/28/frame6-r.png) |
| ![Frame1](../images/enemies/28/frame1-l.png) | ![Frame2](../images/enemies/28/frame2-l.png) | ![Frame3](../images/enemies/28/frame3-l.png) | ![Frame4](../images/enemies/28/frame4-l.png) | ![Frame5](../images/enemies/28/frame5-l.png) | ![Frame6](../images/enemies/28/frame6-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|
|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/28/frame7-r.png) | ![Frame2](../images/enemies/28/frame8-r.png) | ![Frame3](../images/enemies/28/frame9-r.png) | ![Frame4](../images/enemies/28/frame10-r.png) | ![Frame5](../images/enemies/28/frame11-r.png) | ![Frame6](../images/enemies/28/frame12-r.png) | ![Frame7](../images/enemies/28/frame13-r.png) |
| ![Frame1](../images/enemies/28/frame7-l.png) | ![Frame2](../images/enemies/28/frame8-l.png) | ![Frame3](../images/enemies/28/frame9-l.png) | ![Frame4](../images/enemies/28/frame10-l.png) | ![Frame5](../images/enemies/28/frame11-l.png) | ![Frame6](../images/enemies/28/frame12-l.png) | ![Frame7](../images/enemies/28/frame13-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|
|---|---|---|---|
| ![Frame1](../images/enemies/28/frame14.png) | ![Frame2](../images/enemies/28/frame15.png) | ![Frame3](../images/enemies/28/frame16.png) | ![Frame4](../images/enemies/28/frame17.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг блокирования пули после выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***L*** - флаг броска снаряда (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг остановки босса (**_0x00_** - не остановился, **_0x01_** - остановился)
-  ***W*** - флаг получения урона (**_0x00_** - не получает урон, **_0x01_** - получает урон)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг отхода назад (**_0x00_** - не отходит, **_0x01_** - отходит)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 2A
Ким
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|Кадр 10|
|---|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/2A/frame1-r.png) | ![Frame2](../images/enemies/2A/frame2-r.png) | ![Frame3](../images/enemies/2A/frame3-r.png) | ![Frame4](../images/enemies/2A/frame4-r.png) | ![Frame5](../images/enemies/2A/frame5-r.png) | ![Frame6](../images/enemies/2A/frame6-r.png) | ![Frame7](../images/enemies/2A/frame7-r.png) | ![Frame8](../images/enemies/2A/frame8-r.png) | ![Frame9](../images/enemies/2A/frame9-r.png) | ![Frame10](../images/enemies/2A/frame10-r.png) |
| ![Frame1](../images/enemies/2A/frame1-l.png) | ![Frame2](../images/enemies/2A/frame2-l.png) | ![Frame3](../images/enemies/2A/frame3-l.png) | ![Frame4](../images/enemies/2A/frame4-l.png) | ![Frame5](../images/enemies/2A/frame5-l.png) | ![Frame6](../images/enemies/2A/frame6-l.png) | ![Frame7](../images/enemies/2A/frame7-l.png) | ![Frame8](../images/enemies/2A/frame8-l.png) | ![Frame9](../images/enemies/2A/frame9-l.png) | ![Frame10](../images/enemies/2A/frame10-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - _не используется_
-  ***L*** - флаг броска бабочки (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг остановки босса (**_0x00_** - не остановился, **_0x01_** - остановился)
-  ***W*** - флаг получения урона (**_0x00_** - не получает урон, **_0x01_** - получает урон)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - _не используется_
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

Бабочка Кима
|Кадр 1|Кадр 2|Кадр 3|
|---|---|---|
| ![Frame1](../images/enemies/2A/frame11-r.png) | ![Frame2](../images/enemies/2A/frame12-r.png) | ![Frame3](../images/enemies/2A/frame13-r.png) |
| ![Frame1](../images/enemies/2A/frame11-l.png) | ![Frame2](../images/enemies/2A/frame12-l.png) | ![Frame3](../images/enemies/2A/frame13-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - _не используется_
-  ***L*** - флаг типа полета (**_0x00_** - круговое движение, **_0x01_** - движение по прямой)
-  ***K*** - _не используется_
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - _не используется_
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 2C
Рейд
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|
|---|---|---|---|---|---|
| ![Frame1](../images/enemies/2C/frame1-r.png) | ![Frame2](../images/enemies/2C/frame2-r.png) | ![Frame3](../images/enemies/2C/frame3-r.png) | ![Frame4](../images/enemies/2C/frame4-r.png) | ![Frame5](../images/enemies/2C/frame5-r.png) | ![Frame6](../images/enemies/2C/frame6-r.png) |
| ![Frame1](../images/enemies/2C/frame1-l.png) | ![Frame2](../images/enemies/2C/frame2-l.png) | ![Frame3](../images/enemies/2C/frame3-l.png) | ![Frame4](../images/enemies/2C/frame4-l.png) | ![Frame5](../images/enemies/2C/frame5-l.png) | ![Frame6](../images/enemies/2C/frame6-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|
|---|---|---|---|
| ![Frame1](../images/enemies/2C/frame7.png) | ![Frame2](../images/enemies/2C/frame8.png) | ![Frame3](../images/enemies/2C/frame9.png) | ![Frame4](../images/enemies/2C/frame10.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - _не используется_
-  ***L*** - флаг броска снаряда (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг остановки босса (**_0x00_** - не остановился, **_0x01_** - остановился)
-  ***W*** - флаг получения урона (**_0x00_** - не получает урон, **_0x01_** - получает урон)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг отхода назад (**_0x00_** - не отходит, **_0x01_** - отходит)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

Снаряд Рейда
|Кадр 1|Кадр 2|
|---|---|
| ![Frame1](../images/enemies/2C/frame11.png) | ![Frame2](../images/enemies/2C/frame12.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление снаряда (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг направление полета снаряда (**_0x00_** - движение по прямой, **_0x01_** - движение по параболе)
-  ***L*** - _не используется_
-  ***K*** - _не используется_
-  ***W*** - _не используется_
-  ***Z*** - флаг разрушения снаряда (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - _не используется_
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 2E
Финальный босс
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/2E/frame1-r.png) | ![Frame2](../images/enemies/2E/frame2-r.png) | ![Frame3](../images/enemies/2E/frame3-r.png) | ![Frame4](../images/enemies/2E/frame4-r.png) | ![Frame5](../images/enemies/2E/frame5-r.png) | ![Frame6](../images/enemies/2E/frame6-r.png) | ![Frame7](../images/enemies/2E/frame7-r.png) | ![Frame8](../images/enemies/2E/frame8-r.png) |
| ![Frame1](../images/enemies/2E/frame1-l.png) | ![Frame2](../images/enemies/2E/frame2-l.png) | ![Frame3](../images/enemies/2E/frame3-l.png) | ![Frame4](../images/enemies/2E/frame4-l.png) | ![Frame5](../images/enemies/2E/frame5-l.png) | ![Frame6](../images/enemies/2E/frame6-l.png) | ![Frame7](../images/enemies/2E/frame7-l.png) | ![Frame8](../images/enemies/2E/frame8-l.png) |

|Кадр 9|Кадр 10|Кадр 11|Кадр 12|Кадр 13|Кадр 14|Кадр 15|Кадр 16|
|---|---|---|---|---|---|---|---|
| ![Frame9](../images/enemies/2E/frame9-r.png) | ![Frame10](../images/enemies/2E/frame10-r.png) | ![Frame11](../images/enemies/2E/frame11-r.png) | ![Frame12](../images/enemies/2E/frame12-r.png) | ![Frame13](../images/enemies/2E/frame13-r.png) | ![Frame14](../images/enemies/2E/frame14-r.png) | ![Frame15](../images/enemies/2E/frame15-r.png) | ![Frame16](../images/enemies/2E/frame16-r.png) |
| ![Frame9](../images/enemies/2E/frame9-l.png) | ![Frame10](../images/enemies/2E/frame10-l.png) | ![Frame11](../images/enemies/2E/frame11-l.png) | ![Frame12](../images/enemies/2E/frame12-l.png) | ![Frame13](../images/enemies/2E/frame13-l.png) | ![Frame14](../images/enemies/2E/frame14-l.png) | ![Frame15](../images/enemies/2E/frame15-l.png) | ![Frame16](../images/enemies/2E/frame16-l.png) |

|Кадр 17|Кадр 18|Кадр 19|Кадр 20|
|---|---|---|---|
| ![Frame17](../images/enemies/2E/frame19-r.png) | ![Frame18](../images/enemies/2E/frame20-r.png) | ![Frame19](../images/enemies/2E/frame21-r.png) | ![Frame20](../images/enemies/2E/frame22-r.png) |
| ![Frame17](../images/enemies/2E/frame19-l.png) | ![Frame18](../images/enemies/2E/frame20-l.png) | ![Frame19](../images/enemies/2E/frame21-l.png) | ![Frame20](../images/enemies/2E/frame22-l.png) |

|Кадр 1|Кадр 2|
|---|---|
| ![Frame1](../images/enemies/2E/frame17.png) | ![Frame2](../images/enemies/2E/frame18.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг падения после получения финального урона (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***L*** - флаг атаки мечом (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***K*** - флаг ожидания перед началом боя (**_0x00_** - нет ожидания, **_0x01_** - есть ожидание)
-  ***W*** - флаг получения урона (**_0x00_** - не получает урон, **_0x01_** - получает урон)
-  ***Z*** - флаг умирания врага (на земле) (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - _не используется_
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 35
Египтянин с луком
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/35/frame1-r.png) | ![Frame2](../images/enemies/35/frame2-r.png) | ![Frame3](../images/enemies/35/frame3-r.png) | ![Frame4](../images/enemies/35/frame4-r.png) | ![Frame5](../images/enemies/35/frame5-r.png) | ![Frame6](../images/enemies/35/frame6-r.png) | ![Frame7](../images/enemies/35/frame7-r.png) | ![Frame8](../images/enemies/35/frame8-r.png) |
| ![Frame1](../images/enemies/35/frame1-l.png) | ![Frame2](../images/enemies/35/frame2-l.png) | ![Frame3](../images/enemies/35/frame3-l.png) | ![Frame4](../images/enemies/35/frame4-l.png) | ![Frame5](../images/enemies/35/frame5-l.png) | ![Frame6](../images/enemies/35/frame6-l.png) | ![Frame7](../images/enemies/35/frame7-l.png) | ![Frame8](../images/enemies/35/frame8-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - используется совместно с ***K***
-  ***K*** - используется совместно с ***L***, флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 36
Египтянин с мечом
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|
|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/36/frame1-r.png) | ![Frame2](../images/enemies/36/frame2-r.png) | ![Frame3](../images/enemies/36/frame3-r.png) | ![Frame4](../images/enemies/36/frame4-r.png) | ![Frame5](../images/enemies/36/frame5-r.png) | ![Frame6](../images/enemies/36/frame6-r.png) | ![Frame7](../images/enemies/36/frame7-r.png) | ![Frame8](../images/enemies/36/frame8-r.png) | ![Frame9](../images/enemies/36/frame9-r.png) |
| ![Frame1](../images/enemies/36/frame1-l.png) | ![Frame2](../images/enemies/36/frame2-l.png) | ![Frame3](../images/enemies/36/frame3-l.png) | ![Frame4](../images/enemies/36/frame4-l.png) | ![Frame5](../images/enemies/36/frame5-l.png) | ![Frame6](../images/enemies/36/frame6-l.png) | ![Frame7](../images/enemies/36/frame7-l.png) | ![Frame8](../images/enemies/36/frame8-l.png) | ![Frame9](../images/enemies/36/frame9-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - используется совместно с ***K***
-  ***K*** - используется совместно с ***L***, флаг ближнего контакта (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 37
Египтянин с бумерангом
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|Кадр 9|
|---|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/37/frame1-r.png) | ![Frame2](../images/enemies/37/frame2-r.png) | ![Frame3](../images/enemies/37/frame3-r.png) | ![Frame4](../images/enemies/37/frame4-r.png) | ![Frame5](../images/enemies/37/frame5-r.png) | ![Frame6](../images/enemies/37/frame6-r.png) | ![Frame7](../images/enemies/37/frame15-r.png) | ![Frame8](../images/enemies/37/frame16-r.png) | ![Frame9](../images/enemies/37/frame17-r.png) |
| ![Frame1](../images/enemies/37/frame1-l.png) | ![Frame2](../images/enemies/37/frame2-l.png) | ![Frame3](../images/enemies/37/frame3-l.png) | ![Frame4](../images/enemies/37/frame4-l.png) | ![Frame5](../images/enemies/37/frame5-l.png) | ![Frame6](../images/enemies/37/frame6-l.png) | ![Frame7](../images/enemies/37/frame15-l.png) | ![Frame8](../images/enemies/37/frame16-l.png) | ![Frame9](../images/enemies/37/frame17-l.png) |

|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|Кадр 6|Кадр 7|Кадр 8|
|---|---|---|---|---|---|---|---|
| ![Frame1](../images/enemies/37/frame7.png) | ![Frame2](../images/enemies/37/frame8.png) | ![Frame3](../images/enemies/37/frame9.png) | ![Frame4](../images/enemies/37/frame10.png) | ![Frame5](../images/enemies/37/frame11.png) | ![Frame6](../images/enemies/37/frame12.png) | ![Frame7](../images/enemies/37/frame13.png) | ![Frame8](../images/enemies/37/frame14.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает)
-  ***L*** - используется совместно с ***K***
-  ***K*** - используется совместно с ***L***, флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - флаг приседания перед прыжком (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)

## Враг 38
Ниндзя сверху
|Кадр 1|Кадр 2|Кадр 3|Кадр 4|Кадр 5|
|---|---|---|---|---|
| ![Frame1](../images/enemies/38/frame1-r.png) | ![Frame2](../images/enemies/38/frame2-r.png) | ![Frame3](../images/enemies/38/frame3-r.png) | ![Frame4](../images/enemies/38/frame4-r.png) | ![Frame5](../images/enemies/38/frame5-r.png) |
| ![Frame1](../images/enemies/38/frame1-l.png) | ![Frame2](../images/enemies/38/frame2-l.png) | ![Frame3](../images/enemies/38/frame3-l.png) | ![Frame4](../images/enemies/38/frame4-l.png) | ![Frame5](../images/enemies/38/frame5-l.png) |
### Статусы
![DescriptionBits](../images/descriptionBits.jpg)
-  ***N*** - направление врага (**_0x00_** - вправо, **_0x01_** - влево)
-  ***M*** - флаг прыжка, например через препятствие (**_0x00_** - не прыгает, **_0x01_** - прыгает) ***(???)***
-  ***L*** - флаг наклона (**_0x00_** - не наклоняется, **_0x01_** - наклоняется)
-  ***K*** - флаг выстрела (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***W*** - _не используется_
-  ***Z*** - флаг умирания врага (**_0x00_** - неактивно, **_0x01_** - активно)
-  ***Y*** - флаг получения урона врагом (**_0x00_** - не получает урон, **_0x01_** - получает)
-  ***X*** - общий флаг активности статусов (**_0x00_** - статусы не используются, **_0x01_** - используются)
