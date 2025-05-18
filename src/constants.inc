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

; Variables

vEnemyAStartingPosXHigh1      = ram_030C ; macro X-position in which the enemy (A) appeared
vEnemyAStartingPosXLow1       = ram_030D ; X-position in which the enemy (A) appeared
vEnemyBStartingPosXHigh1      = ram_030E ; macro X-position in which the enemy (B) appeared
vEnemyBStartingPosXLow1       = ram_030F ; X-position in which the enemy (B) appeared
vEnemyAStartingPosXHigh2      = ram_0310 ; macro X-position in which the enemy (A) appeared
vEnemyAStartingPosXLow2       = ram_0311 ; X-position in which the enemy (A) appeared
vEnemyBStartingPosXHigh2      = ram_0312 ; macro X-position in which the enemy (B) appeared
vEnemyBStartingPosXLow2       = ram_0313 ; X-position in which the enemy (B) appeared
vEnemyTimerLow1               = ram_0314 ; the low counter after which the enemy will appear
vEnemyTimerHigh1              = ram_0315 ; the high counter after which the enemy will appear
vZenigataTimerLow1            = ram_0316 ; the low counter after which Zenigata will appear
vZenigataTimerHigh1           = ram_0317 ; the high counter after which Zenigata will appear
vEnemyAppearTimersHigh        = ram_0318 ; see below
vEnemyAppearTimersLow         = ram_0319 ; see below
vEnemyAAppearTimerHigh1       = ram_0318 ; the high counter after which the same killed enemy (A) will appear in the same position
vEnemyAAppearTimerLow1        = ram_0319 ; the low counter after which the same killed enemy (A) will appear in the same position
vEnemyBAppearTimerHigh1       = ram_031A ; the high counter after which the same killed enemy (B) will appear in the same position
vEnemyBAppearTimerLow1        = ram_031B ; the low counter after which the same killed enemy (B) will appear in the same position
vEnemyAAppearTimerHigh2       = ram_031C ; the high counter after which the same killed enemy (A) will appear in the same position
vEnemyAAppearTimerLow2        = ram_031D ; the low counter after which the same killed enemy (A) will appear in the same position
vEnemyBAppearTimerHigh2       = ram_031E ; the high counter after which the same killed enemy (B) will appear in the same position
vEnemyBAppearTimerLow2        = ram_031F ; the low counter after which the same killed enemy (B) will appear in the same position
vEnemyAStatus                 = ram_0320 ; see below and docs (Bestiary)
; 0x00 - None
; 0x40 - the enemy can get damage (1 - true, 0 - false)
; 0x80 - The status is used

vEnemyAStatus1                = ram_0320
vEnemyAStatus2                = ram_0321
vEnemyAProjectileStatus       = ram_0322 ; $0322-$0325

vEnemyASwordStatus            = ram_0326
; 0x80 - the sword is used, below
; 0x81 - the sword is used, above

vEnemyAWaitCounter            = ram_0326 ; For last boss, counter value * 256 frames before starting the flying

vEnemyAProjectileIsUsed       = ram_0326
vEnemyASwordFrame_            = ram_0326
vEnemyAVelocity               = ram_0326
vEnemyAVelocity1              = ram_0326
vEnemyARecoverCounter         = ram_0326 ; it's a recover from damage (e.g. skeleton)
; 0xFF - it's not used
vEnemyAVelocity2              = ram_0327
vEnemyAProjectileVelocity     = ram_0328 ; $0328-$032B

vPhenixPosY                   = ram_032C ; see below
vEnemyAPosY                   = ram_032C ; see below
vEnemyAPosY1                  = ram_032C ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAPosY2                  = ram_032D ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAProjectilePosY         = ram_032E ; $032E-$0331

vEnemyAScreenPosX             = ram_0332 ; see below
vEnemyAScreenPosX1            = ram_0332 ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyAScreenPosX2            = ram_0333 ; The enemy position along the X axis relative to the screen (no repeat)

vPhenixPosXLow                = ram_0338 ; see below
vEnemyAPosXLow                = ram_0338 ; see below
vEnemyAPosXLow1               = ram_0338 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAPosXLow2               = ram_0339 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAProjectilePosXLow      = ram_033A ; $033A-$033D

vPhenixPosXHigh               = ram_033E ; see below
vEnemyAPosXHigh               = ram_033E ; see below
vEnemyAPosXHigh1              = ram_033E ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAPosXHigh2              = ram_033F ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAProjectilePosXHigh     = ram_0340 ; $0340-$0343

vLiftCounter                   = ram_0344 ; range: [0x00, 0x7F], for $0345-$0346
vPhenixFrame_Counter           = ram_0344 ; see below
vEnemyAFrame_Counter           = ram_0344 ; see below
vEnemyAFrame_Counter1          = ram_0344 ; The frame index (the enemy number = 1)
vEnemyAFrame_Counter2          = ram_0345 ; The frame index (the enemy number = 2)
vEnemyAProjectileFrame_Counter = ram_0346 ; $0346-$0349

vEnemyASpecSubCounter         = ram_0344 ; for last boss
vEnemyASpecSubCounter1        = ram_0344 ; for last boss
vEnemyASpecSubCounter2        = ram_0345 ; for last boss

vPhenixJumpCounter            = ram_034A ; see below
vEnemyAJumpCounter            = ram_034A ; see below (* bazooka man)
vEnemyAJumpCounter1           = ram_034A ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyAJumpCounter2           = ram_034B ; vJumpCounter analog for the enemy (the enemy number = 2)
vEnemyAProjectileJumpCounter  = ram_034C ; $034C-$034F

vEnemyAHealthPoints           = ram_0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints1          = ram_0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints2          = ram_0351 ; Only for the egyptian with a boomerung, nun

vPhenixJumpType               = ram_0356 ; see below
vEnemyAJumpType               = ram_0356 ; see below
vEnemyAJumpType1              = ram_0356 ; vJumpType analog for the enemy (the enemy number = 1)
vEnemyAJumpType2              = ram_0357 ; vJumpType analog for the enemy (the enemy number = 2)
vEnemyAProjectileJumpType     = ram_0358 ; $0358-$035B

vEnemyBStatus                 = ram_035C ; see below and docs (Bestiary)
; 0x00 - None
; 0x01 - the direction (1 - on the left, 0 - on the right) 
; 0x20 - the enemy is dying (1 - true, 0 - false)
; 0x40 - the enemy can get damage (1 - true, 0 - false)
; 0x80 - The status is used (1 - true, 0 - false)

vEnemyBStatus1                = ram_035C
vEnemyBStatus2                = ram_035D
vEnemyBBombStatus             = ram_035E ; For the bird with the bomb
vEnemyBStatus3                = ram_035E ; For Kim and last boss
vEnemyBStatus4                = ram_035F ; For Kim and last boss
vEnemyBStatus5                = ram_0360 ; For Kim
vEnemyBStatus6                = ram_0361 ; For Kim

vEnemyBThrowingPower          = ram_0362 ; For Hulk
vButterflyRebound             = ram_0362 ; For Kim
; 0x05 - there was no rebound (the right direction)
; 0x0B - there was no rebound (the left direction)
; 0x03 - there was a rebound (the right direction)
; 0x0D - there was a rebound (the left direction)
vEnemyBThrowingDirection      = ram_0362 ; For Raid and the last boss
vEnemyBWallIndex              = ram_0362 ; For wall - the index of the table 'tbl_ptr_walls'
vEnemyBSoarFlags              = ram_0362 ; For soar enemies
; 0x80 - the enemy is armored

vEnemyBPosY                   = ram_0368 ; see below
vEnemyBPosY1                  = ram_0368 ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyBPosY2                  = ram_0369 ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyBProjectilePosY         = ram_036A ; $036A-$036D

vEnemyBScreenPosX             = ram_036E ; see below
vEnemyBScreenPosX1            = ram_036E ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyBScreenPosX2            = ram_036F ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyBProjectileScreenPosY   = ram_0370 ; $0370-$0373

vEnemyBPosXLow                = ram_0374 ; see below
vEnemyBPosXLow1               = ram_0374 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBPosXLow2               = ram_0375 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBProjectilePosXLow      = ram_0376 ; $0376-$0379

vEnemyBPosXHigh               = ram_037A ; see below
vEnemyBPosXHigh1              = ram_037A ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyBPosXHigh2              = ram_037B ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyBProjectilePosXHigh     = ram_037C ; $037C-$037F

vEnemyBFrame_Counter          = ram_0380 ; see below
vEnemyBFrame_Counter1         = ram_0380 ; The frame index (the enemy number = 1)
vEnemyBFrame_Counter2         = ram_0381 ; The frame index (the enemy number = 2)
vEnemyBProjectileFrame_Counter = ram_0382 ; $0382-$0385

vEnemyBJumpCounter            = ram_0386 ; see below
vEnemyBJumpCounter1           = ram_0386 ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyBJumpCounter2           = ram_0387 ; vJumpCounter analog for the enemy (the enemy number = 2)
vEnemyBProjectileJumpCounter  = ram_0388 ; $0388-$038B

vEnemyBHealthPoints           = ram_038C ; Only for the gargoyle
vEnemyBHealthPoints1          = ram_038C ; Only for the gargoyle
vEnemyBHealthPoints2          = ram_038D ; Only for the gargoyle

vEnemyBJumpType               = ram_0392 ; see below
vEnemyBJumpType1              = ram_0392 ; vJumpType analog for the enemy (the enemy number = 1)
vEnemyBJumpType2              = ram_0393 ; vJumpType analog for the enemy (the enemy number = 2)

vButterflyCircularFlightCounter = ram_0392 ; For Kim

vBombOnScreen                 = ram_0398 ; 0x00 - no exist, 0x01 - on screen
vBriefcaseIndex               = ram_0398 ; [0399-039D] in vArrayWhiteBriefcase
; 0x00 - it is not used
vBombStatus                   = ram_039E
; 0x00 - none
; 0x02 - waiting for the explosion
; 0xC2 - a bomb is laying on screen
; 0xC0 - a bomb is exploding
vItemStatus                   = ram_039E ; [039F-03A3] - briefcase, 039E - screen
; For briefcase:
; 0x10 - the briefcase is hidden (0x01 - hidden, 0x00 - visible)
; 0x40 - the briefcase can get damage (0x01 - can, 0x00 - can not)
; 0x80 - The status is used (1 - true, 0 - false)

; 0xD0 - self item
; 0xE0 - disallow briefcase

vBriefcaseHitCount            = ram_03A5 ; number of shots the briefcase must receive before it collapses {$03A5, $03A6, $03A7, $03A8, $03A9}

vItemPosY                     = ram_03AA ; [$03AB-$03AF] The item position in th water along the X axis relative to the screen (no repeat)
vItemScreenPosX               = ram_03B0 ; [$03B1-$03B5] The item or briefcase position along the X axis relative to the screen (no repeat)
vItemPosXLow                  = ram_03B6 ; [$03B7-$03BB] The item position in th water along the X axis relative to the level (with repeat)
vItemPosXHigh                 = ram_03BC ; [$03BD-$03C1] The item position in th water along the X axis relative to the level (in screen unit)

vItemJumpCounter              = ram_03C8 ; [$03C9-$03CD]

vCacheBossStatus              = ram_03D7 ; the cache is used after defeating the boss
vCacheBossScreenPosX          = ram_03D8 ; the cache is used after defeating the boss

vBubbleStatus                 = ram_03D4 ; [$03D4-$03D6]
; 0xC0 - the bubble is used
vBubbleScreenPosY             = ram_03D7 ; [$03D7-$03D9]
vBubblePosXLow                = ram_03DD ; [$03DD-$03DF]
vBubblePosXHigh               = ram_03E0 ; [$03E0-$03E2]
vBubbleJumpCounter            = ram_03E3 ; [$03E3-$03E5]

vPpuAddrDataCache             = ram_067B ; [ram_067B - ram_06AC]
; 1st - count (N)
; 2nd + 3rd - ppu address
; next Nth byte - ppu data
; next repeat
vCacheChrBankSelect           = ram_06AF ; [ram_06AF - ram_06B4]
vChrBankData                  = ram_06B6
vSpriteMagics                 = ram_06B7
vSpriteMagic1                 = ram_06B7 ; Y-position, 0xF0 - a sprite doesn't exist
vSpriteMagic2                 = ram_06B8 ; The offset by the address SS (see vSpriteMagic3)
vSpriteMagic3                 = ram_06B9
; SSBB XCOO
; SS - the offset of the high address ($8000), i.e. $8000 + $(0%000000SS 0%00000000)
; BB - 0x00 - bank 05 (2 page), 0x01 - bank 02 (2 page), 0x1X - bank 05 (1 page)
; C  -  0x1 - usign next CHR-page size 1 Kb, 0x0 - using current CHR-page
; OO - OAM-attributes
vSpriteMagic4                 = ram_06BA ; X-position
vShiftSpriteMagic             = ram_06F7 ; The pack is using 1,2,3,4 sprite magic

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
; Game Genie коды - исправление пробелов
; Баги - перейти в комнату 0x78, перейти на экран с двумя стенами и сменить персонажа. Стена сменится на стенообразного персонажа
; JSR $AD6E ; to sub_AD6E bank 06_2 - проверить записи
; 0x008B91 - лишние байты музыки
; удалить лишние директивы .export/.import
; 03:B360 - баг с остановкой врага
; FF:CC5F - не слышен полностью звук активации радио (баг?)
; 0x01FB2F - проверить изображения по константе CHR
; vCharacterRenderData - for rendering bubbles
; vChrLandStatus - rename
; vLowCounter - составить список вероятностей
; C - - - - - 0x01B213 06:B203: 20 EE CD  JSR sub_CDEE_deactivate_activable_items_after_damage - переименовать