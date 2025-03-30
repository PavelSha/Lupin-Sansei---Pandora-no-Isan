# Общие обозначения

***0x00*** - шестнадцатиричное представление числа

***0%00000000*** - двоичное представление числа

***0xX0*** - шестнадцатиричное представление числа, где X - произвольно значение от 0 до 16 (т.е. от 0x00 до 0x0F), например 0xA0 или 0x50
В выражении 0xXX совсем не значит, что первое значение полубайте совпадает со вторым значением полубайт.
Их повторяемость лишь подчеркивает общую смысловую часть.

***0%XXXX0000*** - двоичное представление числа, где X - произвольно значение от 0 до 1, например 0%12340000 или 0%FEDC0000
В выражении 0%XXXX0000 совсем не значит, что произвольные биты имеют одинаковые значения.
Их повторяемость лишь подчеркивает общую смысловую часть, т.е. первые 4 бита кодируют информацию с 16 всевозможными вариантами.

***{}*** - множество допустимых числе, например {0x00, 0x01}

***|0xXX|*** - абсолютное значение числа, например |0xFF| = 0x01

***==*** - оператор равенства, аналогичный по смыслу операторам в C++, javaScript и т.д.

***!=*** - оператор неравенства, аналогичный по смыслу операторам в C++, javaScript и т.д.

Нуменая битов байта идет справа на лево, начиная с 0-я, т.е. 0-вой бит - это самый правый бит, а 7-ой - самый левый

***[Hx:Lx]*** - пара значений, старшее и младшее значение в контексте использования x. Например, [Hс:Lс] может означать положение персонажа игры относительно игровой области (младшее значение в рамках экрана, старшее значение - номер экрана).

# Аннотации по кодовым инструкциям

***!(WHY?)*** - избыточная инструкция, как например сложение с нулем или деление на единицу.

***!(UNUSED)*** - инструкция, которая никогда не выполнится

***!(BUG?)*** - ошибочная инструкция

# BBBAAAAA формат

Этот сжатый формат нужен для адресации к памяти, с учетом банка и страницы банка.
Представим байт в виде `0%BBBAAAAA`, где B - 7-ой, 6-ой и 5-ый бит, а A - все остальные.
Биты BBB задают номер банка маппера с учетом страницы.

|BBB|Банк и страница|ROM адрес|
|---|---|---|
|0x00|0 банк, 1 страница|0x000010-0x00200F|
|0x01|0 банк, 2 страница|0x002010-0x00400F|
|0x02|1 банк, 1 страница|0x004010-0x00600F|
|0x03|1 банк, 2 страница|0x006010-0x00800F|
|0x04|2 банк, 1 страница|0x008010-0x00A00F|
|0x05|2 банк, 2 страница|0x00A010-0x00C00F|
|0x06|3 банк, 1 страница|0x00C010-0x00E00F|
|0x07|3 банк, 2 страница|0x00E010-0x01000F|

Биты AAAAA - часть адреса, которая суммируется с 0x80.

## Пример

У нас имеется сжатый старший байт адреса - `0x45`, т.е. `0%01000101`.
Судя по таблице, это 1 банк, 1 страница, а настоящий старший байт адреса - `0x85`.

# Структура BackgroundScreenInfo

Cтруктура представляет собой набор из 8 байт, т.е. 4 слов.
Каждое из 4 слово задает адрес в памяти.
Первые 3 слова представляет собой младший байт адреса и старший байт адреса.
Старший байт адреса задается в формате [BBBAAAAA](terminology.md#BBBAAAAA-формат).
У 4-го слова старший байт просто суммируется  с 0x80, а младшая часть не меняется.
Это связано, что все адреса находятся в том же банке и той же странице, т.е. в 00 банке, на 1 странице.

* ***1 слово*** - адрес на индексы элементов экрана комнаты.
Эти индексы задают номера метатайлов в таблице метатайлов заднего фона.
Также эти индексы совпадают с индексами таблицы столкновений.
* ***2 слово*** - адрес на таблицу атрибутов заднего фона экрана комнаты.
* ***3 слово*** - адрес на таблицу метатайлов заднего фона
* ***4 слово*** - адрес на список номеров CHR ROM байтов.

Их, согласно описанию [маппера](https://www.nesdev.org/wiki/INES_Mapper_206), может использоваться одновременно 6 штук.

# Модели неиграбельных персонажей для уникальных комнат

|Идентификатор|Имя|Миниатюра|Внешний вид|
|---|---|---|---|
|0x01|Граф Калиостро 1| ![Preview01](../images/NPC/portrait01.png) | ![Sprite01](../images/NPC/model01.png) |
|0x02|Граф Калиостро 2| ![Preview02](../images/NPC/portrait02.png) | ![Sprite02](../images/NPC/model02.png) |
|0x03|Мужчина 1| ![Preview03](../images/NPC/portrait03.png) | ![Sprite03](../images/NPC/model03.png) |
|0x04|Мужчина 2| ![Preview04](../images/NPC/portrait04.png) | ![Sprite04](../images/NPC/model04.png) |
|0x05|Моряк 1| ![Preview05](../images/NPC/portrait05.png) | ![Sprite05](../images/NPC/model05.png) |
|0x06|Моряк 2| ![Preview06](../images/NPC/portrait06.png) | ![Sprite06](../images/NPC/model06.png) |
|0x07|Гробница 1| ![Preview07](../images/NPC/portrait07.png) | ![Sprite07](../images/NPC/model07.png) |
|0x08|Гробница 2| ![Preview08](../images/NPC/portrait08.png) | ![Sprite08](../images/NPC/model08.png) |
|0x09|Женщина 1| ![Preview09](../images/NPC/portrait09.png) | ![Sprite09](../images/NPC/model09.png) |
|0x0A|Женщина 2| ![Preview0A](../images/NPC/portrait0A.png) | ![Sprite0A](../images/NPC/model0A.png) |
|0x0B|Женщина 3| ![Preview0B](../images/NPC/portrait0B.png) | ![Sprite0B](../images/NPC/model0B.png) |
|0x0C|Гробница 3| ![Preview0C](../images/NPC/portrait0C.png) | ![Sprite0C](../images/NPC/model0C.png) |
|0x0D|Гробница 4| ![Preview0D](../images/NPC/portrait0D.png) | ![Sprite0D](../images/NPC/model0D.png) |
|0x0E|Гробница 5| ![Preview0E](../images/NPC/portrait0E.png) | ![Sprite0E](../images/NPC/model0E.png) |
|0x0F|Женщина 1| ![Preview0F](../images/NPC/portrait0F.png) | ![Sprite0F](../images/NPC/model0F.png) |
|0x10|Женщина 2| ![Preview10](../images/NPC/portrait10.png) | ![Sprite10](../images/NPC/model10.png) |
|0x11|Женщина 3| ![Preview11](../images/NPC/portrait11.png) | ![Sprite11](../images/NPC/model11.png) |
|0x12|Женщина 4| ![Preview12](../images/NPC/portrait12.png) | ![Sprite12](../images/NPC/model12.png) |
|0x13|Женщина 5| ![Preview13](../images/NPC/portrait13.png) | ![Sprite13](../images/NPC/model13.png) |
|0x14|Женщина 6| ![Preview14](../images/NPC/portrait14.png) | ![Sprite14](../images/NPC/model14.png) |
|0x15|Гробница 6| ![Preview15](../images/NPC/portrait15.png) | ![Sprite15](../images/NPC/model15.png) |
|0x16|Гробница 7| ![Preview16](../images/NPC/portrait16.png) | ![Sprite16](../images/NPC/model16.png) |
|0x17|Yi 1| ![Preview17](../images/NPC/portrait17.png) | ![Sprite17](../images/NPC/model17.png) |
|0x18|Yi 2| ![Preview18](../images/NPC/portrait18.png) | ![Sprite18](../images/NPC/model18.png) |
|0x19|Lian 1| ![Preview19](../images/NPC/portrait19.png) | ![Sprite19](../images/NPC/model19.png) |
|0x1A|Lian 2| ![Preview1A](../images/NPC/portrait1A.png) | ![Sprite1A](../images/NPC/model1A.png) |
|0x1B|San 1| ![Preview1B](../images/NPC/portrait1B.png) | ![Sprite1B](../images/NPC/model1B.png) |
|0x1C|San 2| ![Preview1C](../images/NPC/portrait1C.png) | ![Sprite1C](../images/NPC/model1C.png) |
|0x1D|Suu 1| ![Preview1D](../images/NPC/portrait1D.png) | ![Sprite1D](../images/NPC/model1D.png) |
|0x1E|Suu 2| ![Preview1E](../images/NPC/portrait1E.png) | ![Sprite1E](../images/NPC/model1E.png) |
|0x1F|Гробница 8| ![Preview1F](../images/NPC/portrait1F.png) | ![Sprite1F](../images/NPC/model1F.png) |
|0x20|Гробница 9| ![Preview20](../images/NPC/portrait20.png) | ![Sprite20](../images/NPC/model20.png) |
|0x21|Гробница 10| ![Preview21](../images/NPC/portrait21.png) | ![Sprite21](../images/NPC/model21.png) |
|0x22|Женщина 7| ![Preview22](../images/NPC/portrait22.png) | ![Sprite22](../images/NPC/model22.png) |
|0x23|Гробница 11| ![Preview23](../images/NPC/portrait23.png) | ![Sprite23](../images/NPC/model23.png) |
|0x24| ? | ![Preview24](../images/NPC/portrait24.png) | ![Sprite24](../images/NPC/model24.png) |
|0x25|Халк| ![Preview25](../images/NPC/portrait25.png) | ![Sprite25](../images/NPC/model25.png) |
|0x26|Ким| ![Preview26](../images/NPC/portrait26.png) | ![Sprite26](../images/NPC/model26.png) |
|0x27|Рейд| ![Preview27](../images/NPC/portrait27.png) | ![Sprite27](../images/NPC/model27.png) |
|0x28|Люпен| ![Preview28](../images/NPC/portrait28.png) | ![Sprite28](../images/NPC/model28.png) |
|0x29|Дзигэн| ![Preview29](../images/NPC/portrait29.png) | ![Sprite29](../images/NPC/model29.png) |
|0x2A|Гоэмон| ![Preview2A](../images/NPC/portrait2A.png) | ![Sprite2A](../images/NPC/model2A.png) |
|0x2B|Фудзико| ![Preview2B](../images/NPC/portrait2B.png) | ![Sprite2B](../images/NPC/model2B.png) |
|0x2C|Кларисса| ![Preview2C](../images/NPC/portrait2C.png) | ![Sprite2C](../images/NPC/model2C.png) |
|0x2D|Дзэнигата| ![Preview2D](../images/NPC/portrait2D.png) | ![Sprite2D](../images/NPC/model2D.png) |