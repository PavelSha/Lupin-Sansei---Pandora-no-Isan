; Contants

MMC3_Bank_select    = $8000 ; see https://www.nesdev.org/wiki/INES_Mapper_206
MMC3_Bank_data      = $8001 ;
Set_features        = $FFF6 ;

PPU_CTRL     = $2000
PPU_MASK     = $2001
PPU_STATUS   = $2002 ; (R)
PPU_OAM_ADDR = $2003
PPU_SCROLL   = $2005
PPU_ADDRESS  = $2006
PPU_DATA     = $2007
TRI_LINEAR   = $4008
DMC_FREQ     = $4010
OAM_DMA      = $4014
APU_STATUS   = $4015
JOY1 = $4016
JOY2 = $4017

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

RADIO_IN_WHITE_BRIEFCASE               = $00
BOMB_IN_WHITE_BRIEFCASE                = $01
ARTILLERY_RIFLE_IN_WHITE_BRIEFCASE     = $02
JET_PACK_IN_WHITE_BRIEFCASE            = $03
INFRARED_GOGGLES_IN_WHITE_BRIEFCASE    = $04
BREATHING_APPARATUS_IN_WHITE_BRIEFCASE = $05
HELIUM_BALLOON_IN_WHITE_BRIEFCASE      = $06
BULLET_PROOF_VEST_IN_WHITE_BRIEFCASE   = $07
BIT_USING_WHITE_BRIEFCASE             = %10000000

; Variables

v_CE5A_counter                = ram_0005
vTempCounterC                 = ram_000C
vTempCounter10                = ram_0010
v_cache_reg_y                 = ram_0011
vTempCounter11                = ram_0011 ; Intermediate counter
v_temp_check_buttons          = ram_0012 ; There is a variable that stores the checked state of the button
vTempCounter12                = ram_0012
vCacheRam12                   = ram_0012 ;
vRenderActive                 = ram_0019 ; 0x00 - active, else deactive
v_sub_AF4D_briefcase_no       = ram_001A ; Intermediate counter
v_loc_CA48_counter            = ram_001A ; Intermediate counter
vTempRowNumber1A              = ram_001A ; Intermediate counter
vTempCounter1A                = ram_001A ; Intermediate counter
vBtnPressedInGame             = ram_001C ; In a level 1-4 or a title screen
vCopy001C                     = ram_001D
v_player1_btn_pressed         = ram_001E ; For a contoller1
v_player2_btn_pressed         = ram_001F ; For a contoller2
v_last_p2_btn_pressed         = ram_0020 ; It's the previouse value for a contoller2 (the state of the buttons)
v_last_p1_btn_pressed         = ram_0021 ; It's the previouse value for a contoller1 (the state of the buttons)
vDemoBtnPrsdCounter           = ram_0022 ; Counter after which an attempt is made to simulate a button press in demo scenes
vDemoBtnPrsdIndex             = ram_0023 ; Index in the table of pressed buttons in demo scenes
vMenuDemoIndex                = ram_0024
; 0x00 - The menu
; 0x01 - Lupin demo
; 0x02 - Jigen demo
; 0x03 - Goemon demo
; 0x04 - Zenigata demo
; 0x05 - Fujiko demo
; 0x06 - Clarisse demo
; 0x07 - Stop demo

vPpuCtrlSettings              = ram_0026 ; This is a last actual ppu controller flags.
vLowViewPortPosX              = ram_0027 ; a horizontal scroll, in level it's the position of the viewport along the x-axis relative to the level (may repeat, with scrolling)
vTempLowViewPortPosX          = ram_0028
vLowViewPortPosY              = ram_0029 ; a vertical scroll
v_nmi_counter                 = ram_002B
vLowCounter                   = ram_002C
v_high_counter                = ram_002D
vGameCounters                 = ram_002E ; [vCorridorCounter, the unknown counter1, 2, 3, 4]
vCorridorCounter              = ram_002E ; The counter starts when we enter the corridor
; ram_002F - the unknown counter1
; ram_0030 - the unknown counter2
; ram_0031 - the unknown counter3
; ram_0032 - the unknown counter4
vLowCutsceneCounter           = ram_0033
vHighCutsceneCounter          = ram_0034 ; Only for a demo (the message scenes are not included)
vEnemyRNGValue                = ram_0035
vCutscenesMode                = ram_0037 ; 0xFF - Starting cutscenes are used (with Clarisse Cagliostro), 0x00 - no used
; 0x00 - in game

vPauseStatus                  = ram_0038 ; 0x00 - no pause, 0x40 - pause

; ??? = ram_0039
; 0x00 - ???
; 0x81 - ???
; 0xC0 - ??? (in corridor)
; 0xC1 - ???
; 0xC2 - ???
; 0xC3 - ??? (out corridor with briefcase)
; 0xC4 - ???
; 0xE0 - ???

v_resists                     = ram_003A ; TODO: !!!, 0x80 - The enemies don't damage
vSharedGameStatus             = ram_003B
; Value (some the flags):
; 0x00 - In the game
; 0x01 - A screen with the message
; 0x03 - A screen with the message after boss
; 0x0B - A final scene
; 0x10 - Select the character
; 0x20 - Not used
; 0x40 - Pause in the game
; 0x41 - Pause in the game (a screen with the message)
; 0x80 - Main menu
; 0x91 - First cutscene (with Clarisse Cagliostro)
; 0x93 - Last cutscene (with Clarisse Cagliostro)

; Byte: XYZW KLMN
; N - status 'The screen with the message'
; M - status 'The boss is defeated'
; W - status 'Select the character'
; Z - status 'Not used'
; Y - status 'Pause in the game'

vGameLocks                    = ram_003C
; Byte: XYZ0 0000
; X - the lock for the process 'Select character' (1 - true)
; Y - the process, after 'Select a character', but before the game itself
; Z - use with X, 0 - after the radio; 1 - after a fall or arrest

vStartStatus                  = ram_003D
; 0x00 - The starting cutscene, before typing the message
; 0x01 - The starting cutscene, during typing the message
; 0x02 - The starting cutscene, after typing the message
; 0x00 - Allowed to show menu

vCharacterSelectionCounter    = ram_003D ; If 0x00 - no selection else selection

v_npc_message_status          = ram_0041
; 83 - npc is saying the message 
; C3 - npc said the message 

; ram_0042 - ???
; 0x80 N - the character is looking to the left
; 0x00 N - the character is looking to the right


vCurrentNumberSprite          = ram_0043
vCurrentNumberSpriteAfCh      = ram_0044 ; Last sprite number received after character rendering
vCharacterRenderData          = ram_0045
; Byte: LLL??AAA
; AAA - the OAM-attributes
; LLL - the high part of address (0%10000LLL), e.i. [0x8000 - 0x8300]


vNoSubLevel                   = ram_0046
; see docs (Rooms, Maze1, Maze2, Maze3, Maze4)

vTempNoSubLevel               = ram_0047
vScrollDirection              = ram_0048 ; The direction in which the screen will automatically scroll (viewport offset), e.g. if the character moves
; 0x00 - none
; 0x40 - to left
; 0x80 - to right

vCurrentRoomLength            = ram_0049 ; in screen units
vNearCurrentRoomLength        = ram_004A ; vCurrentRoomLength - 1 (in screen units)
vHighViewPortPosX             = ram_004B ; The high value for an overflow ram_0027 (in screen units)
vTempHighViewPortPosX         = ram_004C
vCacheNoScreen                = ram_004D ; In screen units
vBackgroundScreenInfo         = ram_004E
vHighBackgroundScreenInfo     = ram_004F

vTempValue50                  = ram_0050
vTempValue51                  = ram_0051

vScore                        = ram_0056 ; [0x56-0x5C]

vNonUsed2                     = ram_005D
v_no_level                    = ram_005E ; It is a number of a level than it starts with 0.
; 0x00 - level 1
; 0x01 - level 2
; 0x02 - level 3
; 0x03 - level 4 + racing
vChrLiveStatus                = ram_005F
; Byte: XYZW KLMN
; MN - the current selected character (0x00 - Lupin, 0x01 - Jigen, 0x10 - Goemon)
; X - Goemon fell (0 - true)
; Y - Goemon arrested (0 - true)
; Z - Jigen fell (0 - true)
; W - Jigen arrested (0 - true)
; K - Lupin fell (0 - true)
; L - Lupin arrested (0 - true)
vScreenChrPosX                = ram_0064 ; The character's position along the X axis relative to the screen (no repeat)
vTempScreenChrPosX            = ram_0065
vLowChrPosX                   = ram_0066 ; The character's position along the X axis relative to the level (with repeat) 
vTempLowChrPosX               = ram_0067
vNoScreen                     = ram_0068 ; The number of the level screen
vTempNoScreen                 = ram_0069
vScreenChrPosY                = ram_006A ; The character's position along the Y axis relative to the screen (no repeat)
vChrStatus                    = ram_006C ; A status of a character
; Byte: XYZW KLMN
; N - the character is looking to the right/left (1 - left, 0 - right)
; M - the character is/isn't sitting (1 - sitting, 0 - no sitting)
; K - the character is getting a damage  (1 - getting, 0 - no getting)
; W - the character is/isn't jumping (1 - jumping, 0 - no jumping)
; Z - the character is entering a corridor or hiding place (1 - entering, 0 - no entering)
; ...
vMovableChrStatus             = ram_006D
; Byte: XYZW KLMN
; Z - the character is moving on the roof pitch (1 - moving, 0 - no moving)
; Y - the character is moving on the balloon (1 - moving, 0 - no moving)
; X - the character is moving in the water (1 - moving, 0 - no moving)
; ...
vJumpType                     = ram_006E
; 0 - simple jump
; 1 - high jump
; 2 - jumping off
; 3 - jump by side
vJumpCounter                  = ram_006F

; ram_0070 - vChrFrameIndex ???

vVelocity                     = ram_0071 ; 0x04 - min, 0x0C - max


vRifleShotCount               = ram_0072 ; A number of rifle shots
vRifleFireTime                = ram_0073 ; The time it takes for a rifle to fire
vChrLandStatus                = ram_0079 ;
; 0x00 - the character is in the air
; 0x80 - the character stands on the ground

vBulletCount                  = ram_007A ; 0x00 - 1 bullet, 0x01 - 2 bullets, 0x02 - 3 bullets and so on...

vBulletStatus                 = ram_008F ; [0x8F-0x93] , for a rifle, Lupin's pistol, Jigen's pistol

vNonUsed                      = ram_009C

vHiScore                      = ram_0099 ; [0x99-0x9F]

vNonUsed3                     = ram_00A3

vIndexSelectableChr           = ram_00AD ; Selectable character number in character selection mode
vMainMenuGunYPos              = ram_00AD ;

vCopyIndexSelectableChr       = ram_00AE ;
							  
v_start_level                 = ram_00B1 ; The start level [0-3]
v_count_secret_hits           = ram_00B2 ; Stage select codes at the title screen
v_lock_secret_hits            = ram_00B3 ; Allow button to be pressed only when other buttons aren't pressed
v_offset_in_secret_codes      = ram_00B4
vCurrentUniqueRoom            = ram_00B6
; Byte: 00UU 00RR
; UU - 0x01 for an unique room (NPC, briefcase, boss), else 0x00
; RR - 0x01 - NPC room (use with UU), 0x02 - briefcase room (use with UU), 0x03 - room with the room

v_corridor_magic5             = ram_00B7
; 0x80 - secondary list, else main list
; For main list and briefcase rooms - 5th-byte index in the briefcase indexes table
v_corridor_magic5_cache       = ram_00B8

vCheckpointAddr               = ram_00BA ; low address (address to table tbl_ptr_checkpoints_on_the_level)
vHignCheckpointAddr           = ram_00BB ; high address
v_tmp_target_room             = ram_00BC
vCorridorAddr                 = ram_00BD ; low address (address to table tbl_ptr_corridors)
vHighCorridorAddr             = ram_00BE ; high address
vDestrWallAddr                = ram_00BF ; low address  (address to table tbl_ptr_destructible_walls)
vHighDestrWallAddr            = ram_00C0 ; high address

vCheckpoint                   = ram_00C4 ; see docs (Rooms), i.e. (0x00 - level 1.0, 0x06 - level 2 outside, 0x19 - level racing etc.)

vMessageInProgress            = ram_00C8
; 0x00 - no message
; 0x80 - the message is typing

v_letter_offset               = ram_00C9
vMessageCounter               = ram_00CA
v_low_vram_msg_address        = ram_00CB
v_hign_vram_msg_address       = ram_00CC
v_low_msg_ppu_address         = ram_00CF ; This temporary address for the message on the screen
v_high_msg_ppu_address        = ram_00D0
vGogglesActive                = ram_00D1 ; 0x80 - active, 0x00 - deactive
vGogglesLowCounter            = ram_00D2
vGogglesHighCounter           = ram_00D3
vTempChrLiveStatus            = ram_00D4
vReasonCharacterChange        = ram_00D6
; 0x00 - no reason
; 0x40 - the character is fell or arrested
; 0x80 - the radio was using
vSoundRoomIndex               = ram_00FD
v_last_level                  = ram_0109 ; It is a last played level.
vRadioItem                    = ram_0200
v_items                       = ram_0200 ; 0x0200-0x0208
v_breathing_apparatus_item    = ram_0205
v_helium_balloon_item         = ram_0206
v_bullet_proof_vest_item      = ram_0207
v_ruby_ring                   = ram_0208
vItemsBlinkTime               = ram_020A ; 0x020A-0x0212
vCurrentWeaponStatus          = ram_0214 ; Only the active items
; 0x10000000 - the weapons are not exist
; 0x01000000 - the weapon is activated
; 0x00000000 - Using the radio
; 0x00000001 - Using the bomb
; 0x00000010 - Using the artillery rifle
; 0x00000011 - Using the jet-pack
; 0x00000100 - Using the infrared goggles
vApparatusLowCounter  = ram_0215 ; Breathing or flying
vApparatusHighCounter = ram_0216

vArrayWhiteBriefcase           = ram_0219
; flag 0x80 - the item is got (see BIT_USING_WHITE_BRIEFCASE)
vEnemies                       = ram_0300
; see docs (Bestiary)

vEnemyA                       = ram_0300
vEnemyB                       = ram_0301
vEnemyACount                  = ram_030A
vEnemyBCount                  = ram_030B
vEnemyTimerLow1               = ram_0314 ; the low counter after which the enemy will appear
vEnemyTimerHigh1              = ram_0315 ; the high counter after which the enemy will appear
vZenigataTimerLow1            = ram_0316 ; the low counter after which Zenigata will appear
vZenigataTimerHigh1           = ram_0317 ; the high counter after which Zenigata will appear
v_briefcase_index             = ram_0398 ; [0399-039D]
v_bomb_on_screen              = ram_039E ; C2 - a bomb
v_item_on_screen              = ram_039E ; [039F-03A3] - briefcase, 039E - screen
; 0%10000000 - ???
; For briefcase:
; C0 - allow briefcase
; D0 - self item
; E0 - disallow briefcase

vBriefcaseHitCount            = ram_03A5 ; number of shots the briefcase must receive before it collapses {$03A5, $03A6, $03A7, $03A8, $03A9}

v_sound_counter               = ram_0406
vSoundRowB_0                  = ram_0410 ; ???
vSoundRowB_1                  = ram_0411 ; apu channel (0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise)
vSoundRowB_2                  = ram_0412 ; low address of the current track
vSoundRowB_3                  = ram_0413 ; high address of the current track
vSoundRowB_4                  = ram_0414 ; ???
vSoundRowB_5                  = ram_0415 ; ???
vSoundRowB_6                  = ram_0416 ; ???
vSoundRowB_7                  = ram_0417 ; ???
vSoundRowB_8                  = ram_0418 ; ???
vSoundRowB_9                  = ram_0419 ; ???
vSoundRowB_A                  = ram_041A ; ???
vSoundRowB_B                  = ram_041B ; ???
vSoundRowB_C                  = ram_041C ; ???
vSoundRowB_D                  = ram_041D ; ???
vSoundRowB_E                  = ram_041E ; ???
vSoundRowB_F                  = ram_041F ; ???
vSoundRowB_G                  = ram_0420 ; ???
vSoundRowB_H                  = ram_0421 ; ???
vSoundRowB_I                  = ram_0422 ; ???
vSoundRowB_J                  = ram_0423 ; ???
vSoundRowB_K                  = ram_0424 ; ???
vRooms                        = ram_0500
; flag 0x80 - the room has already been visited

vCachePalette                 = ram_0600 ; [ram_0600 - ram_061F]
vNonUsed614                   = ram_0614 ; +ram_0615, ram_0616, ram_0617
vLowPpuAddress                = ram_0630
vHighPpuAddress               = ram_0631
v_ppu_buffer_count            = ram_0632
vPpuBufferData                = ram_0633
vPpuAddrDataCache             = ram_067B ; [ram_067B - ram_06AC]
; 1st - count (N)
; 2nd + 3rd - ppu address
; next Nth byte - ppu data
; next repeat
vCacheChrBankSelect           = ram_06AF ; [ram_06AF - ram_06B4]
vNonUsed6B2                   = ram_06B2 ; !(WHY?), may be for debug
vBankData                     = ram_06B5
vChrBankData                  = ram_06B6
v_sprite_magics               = ram_06B7
v_sprite_magic1               = ram_06B7 ; Y-position, 0xF0 - a sprite doesn't exist
v_sprite_magic2               = ram_06B8 ; The offset by the address SS (see v_sprite_magic3)
v_sprite_magic3               = ram_06B9
; SSBB XCOO
; SS - the offset of the high address ($8000), i.e. $8000 + $SS00
; BB - 0x00 - bank 05 (2 page), 0x01 - bank 02 (2 page), 0x1X - bank 05 (1 page)
; C  -  0x1 - usign next CHR-page size 1 Kb, 0x0 - using current CHR-page
; OO - the OAM-attributes
v_sprite_magic4               = ram_06BA ; X-position
vShiftSpriteMagic             = ram_06F7 ; The pack is using 1,2,3,4 sprite magic
vStartOAM                     = ram_0700
vStartOAM_2b                  = ram_0701 ; 2nd byte
vStartOAM_3b                  = ram_0702 ; 3rd byte
vStartOAM_4b                  = ram_0703 ; 4th byte
v_OAM_2                  = ram_0704
v_OAM_2_2b               = ram_0705 ; 2nd byte
v_OAM_2_3b               = ram_0706 ; 3rd byte
v_OAM_2_4b               = ram_0707 ; 4th byte
v_OAM_3                  = ram_0708
v_OAM_3_2b               = ram_0709 ; 2nd byte
v_OAM_3_3b               = ram_070A ; 3rd byte
v_OAM_3_4b               = ram_070B ; 4th byte

; Unknown:
; 0x0042 - 0 - left, 0x80 - right in 1st level

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
; преобразовать банк 02 по адресу 0х8000 (1 страница)
; проверить, почему используется 7 строк вместо 8 для таблицы атрибутов (уровень 2.0, внутренний)
; индексы в одной из таблиц доходят до 0x70, хотя используются до 0x9F, почему так?
; Game Genie коды - исправление пробелов
; Баги - перейти в комнату 0x78, перейти на экран с двумя стенами и сменить персонажа. Стена сменится на стенообразного персонажа
; vNoSubLevel -> vNoRoom
; JSR $AD6E ; to sub_AD6E bank 06_2 - проверить записи