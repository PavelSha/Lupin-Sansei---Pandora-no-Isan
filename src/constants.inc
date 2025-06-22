; Contants

MMC3_Bank_select    = $8000 ; see https://www.nesdev.org/wiki/INES_Mapper_206
MMC3_Bank_data      = $8001 ;
Set_features        = $FFF6 ;
; XY00 0000
; X - Release or debug mode (1 - release, 0 - debug)
; Y - Full or demo version (1 - full, 0 - demo)

PPU_CTRL     = $2000
PPU_MASK     = $2001
PPU_STATUS   = $2002 ; (R)
PPU_OAM_ADDR = $2003
PPU_OAM_DATA = $2004
PPU_SCROLL   = $2005
PPU_ADDRESS  = $2006
PPU_DATA     = $2007
TRI_LINEAR   = $4008
DMC_FREQ     = $4010
OAM_DMA      = $4014
APU_STATUS   = $4015
JOY1         = $4016
JOY2         = $4017

BIT_BUTTON_START         = %00001000 ; 0x08
BIT_BUTTON_SELECT        = %00000100 ; 0x04
BIT_BUTTON_A             = %00000001 ; 0x01
BIT_BUTTON_B             = %00000010 ; 0x02
BIT_BUTTON_B_OR_A        = %00000011 ; 0x03
BIT_BUTTON_Up            = %00010000 ; 0x10
BIT_BUTTON_Down          = %00100000 ; 0x20
BIT_BUTTON_Up_OR_Down    = %00110000 ; 0x30
BIT_BUTTON_Left          = %01000000 ; 0x40
BIT_BUTTON_Right         = %10000000 ; 0x80
BIT_BUTTON_Left_OR_Right = %11000000 ; 0xC0
BIT_BUTTON_Arrows        = %11110000 ; 0xF0
BIT_BUTTON_NOT_Arrows    = %00001111 ; 0x0F
BIT_BUTTON_Arrows_OR_A   = %11110001 ; 0xF1

RADIO_IN_WHITE_BRIEFCASE               = $00
BOMB_IN_WHITE_BRIEFCASE                = $01
ARTILLERY_RIFLE_IN_WHITE_BRIEFCASE     = $02
JET_PACK_IN_WHITE_BRIEFCASE            = $03
INFRARED_GOGGLES_IN_WHITE_BRIEFCASE    = $04
BREATHING_APPARATUS_IN_WHITE_BRIEFCASE = $05
HELIUM_BALLOON_IN_WHITE_BRIEFCASE      = $06
BULLET_PROOF_VEST_IN_WHITE_BRIEFCASE   = $07

; Byte join regex: "\s\s\s;\s.*\n.*\$" -> ", $"

; Last mini:
; "^;.*\n.*\n" -> ""
; "^bra_.*\n" -> "\n"
; "^@bra_.*\n" -> "\n"
; "^sub_.*\n" -> "\n"
; "^@sub_.*\n" -> "\n"
; "^loc_.*\n" -> "\n"
; "^@loc_.*\n" -> "\n"
; "^\(.*\)\s\n" -> "\n"
; $02: -> Tab
; $06: -> Tab

; "^\$06:.+\n" -> ""
; "^\$02:.+\n" -> ""
; "f\d+\s+\$06:.+\n" -> ""
; "f\d+\s+\$02:.+\n" -> ""

; TODO list:
; tbl_demo_btn_pressed - dissabling
; проверить, почему используется 7 строк вместо 8 для таблицы атрибутов (уровень 2.0, внутренний)
; индексы в одной из таблиц доходят до 0x70, хотя используются до 0x9F, почему так?
; Баги - перейти в комнату 0x78, перейти на экран с двумя стенами и сменить персонажа. Стена сменится на стенообразного персонажа
; JSR $AD6E ; to sub_AD6E bank 06_2 - проверить записи
; 0x008B91 - лишние байты музыки
; удалить лишние директивы .export/.import
; 03:B360 - баг с остановкой врага
; FF:CC5F - не слышен полностью звук активации радио (баг?)
; 0x01FB2F - проверить изображения по константе CHR
; vCharacterRenderData - for rendering bubbles
; vLowCounter - составить список вероятностей
; C - - - - - 0x01B213 06:B203: 20 EE CD  JSR sub_CDEE_deactivate_activable_items_after_damage - переименовать