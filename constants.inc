; Contants

MMC3_Bank_select    = $8000 ; see https://www.nesdev.org/wiki/MMC3
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
v_temp_check_buttons          = ram_0012 ; There is a variable that stores the checked state of the button
v_temp_counter12              = ram_0012
vCacheRam12                   = ram_0012 ;
vRenderActive                 = ram_0019 ; 0x00 - active, else deactive
v_sub_AF4D_briefcase_no       = ram_001A ; Intermediate counter
v_loc_CA48_counter            = ram_001A ; Intermediate counter
vBtnPressedInGame             = ram_001C ; In a level 1-4 or a title screen
vCopy001C                     = ram_001D
v_player1_btn_pressed         = ram_001E ; For a contoller1
v_player2_btn_pressed         = ram_001F ; For a contoller2
v_last_p2_btn_pressed         = ram_0020 ; It's the previouse value for a contoller2 (the state of the buttons)
v_last_p1_btn_pressed         = ram_0021 ; It's the previouse value for a contoller1 (the state of the buttons)
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
v_low_counter                 = ram_002C
v_high_counter                = ram_002D
vLowMenuCounter               = ram_0033
vHighMenuCounter              = ram_0034 ; Only for a demo (the message scenes are not included)
vEnemyRNG                     = ram_0035
vGameMode                     = ram_0037
; 0x00 - in game
; 0xFF - Starting cutscenes
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
; 0x40 - Pause in the game
; 0x41 - Pause in the game (a screen with the message)
; 0x80 - Main menu
; 0x91 - First cutscene

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
v_copy_current_number_sprite  = ram_0044
vCharacterRenderData          = ram_0045
; Byte: LLL??AAA
; AAA - the OAM-attributes
; LLL - the high part of address (0%10000LLL), e.i. [0x8000 - 0x8300]


vSortOfRoom                   = ram_0046 ; Only in the room
; 1A - a npc room or a character tied up
; 1F - a room with briefcases

vNoSubLevel                   = ram_0046
; see docs (Rooms, Maze1, Maze2, Maze3, Maze4)

vTempNoSubLevel               = ram_0047
vCurrentRoomLength            = ram_0049 ; in screen units
vNearCurrentRoomLength        = ram_004A ; vCurrentRoomLength - 1 (in screen units)
vHighViewPortPosX             = ram_004B ; The high value for an overflow ram_0027 (in screen units)
vTempHighViewPortPosX         = ram_004C
vCacheNoScreen                = ram_004D ; In screen units
vBackgroundScreenInfo         = ram_004E
vHighBackgroundScreenInfo     = ram_004F

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
; L - the character is getting a damage  (1 - getting, 0 - no getting)
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

vVelocity                     = ram_0071 ; 0x04 - min, 0x0C - max


vRifleShotCount               = ram_0072 ; A number of rifle shots
vRifleFireTime                = ram_0073 ; The time it takes for a rifle to fire
vChrLandStatus                = ram_0079 ;
; 0x00 - the character is in the air
; 0x80 - the character stands on the ground

vBulletCount                  = ram_007A ; 0x00 - 1 bullet, 0x01 - 2 bullets, 0x02 - 3 bullets and so on...

; ??? - ram_00AD
; 0x8F - ???

vBulletStatus                 = ram_008F ; [0x8F-0x93] , for a rifle, Lupin's pistol, Jigen's pistol

vNonUsed                      = ram_009C

; 0x9F - ???

vNonUsed3                     = ram_00A3

vIndexSelectableChr           = ram_00AD ; Selectable character number in character selection mode
vCacheIndexSelectableChr      = ram_00AE ;
							  
v_start_level                 = ram_00B1 ; The start level [0-3]
v_count_secret_hits           = ram_00B2 ; Stage select codes at the title screen
v_lock_secret_hits            = ram_00B3 ; Allow button to be pressed only when other buttons aren't pressed
v_offset_in_secret_codes      = ram_00B4
v_corridor_magic5             = ram_00B7
v_corridor_magic5_cache       = ram_00B8
v_tmp_target_room             = ram_00BC
vCorridorAddr                 = ram_00BD ; low address (address to table tbl_ptr_corridors)
vHighCorridorAddr             = ram_00BE ; high address
vDestrWallAddr                = ram_00BF ; low address  (address to table tbl_ptr_destructible_walls)
vHighDestrWallAddr            = ram_00C0 ; high address

vCheckpoint                   = ram_00C4
; 0x00 - level 1
; 0x06 - level 2
; 0x0F - level 3
; 0x19 - level racing
; 0x42 - level 4 (pyramid)

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
vReasonCharacterChange        = ram_00D6
; 0x00 - no reason
; 0x40 - the character is fell or arrested
; 0x80 - the radio was using
vSoundRoomIndex               = ram_00FD
v_last_level                  = ram_0109 ; It is a last played level.
v_items                       = ram_0200 ; 0x0200-0x0208
v_radio_item                  = ram_0200
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
vBreathingApparatusLowCounter  = ram_0215
vBreathingApparatusHighCounter = ram_0216

v_array_white_briefcase        = ram_0219
; flag 0x80 - the item is got (see BIT_USING_WHITE_BRIEFCASE)
vEnemies                       = ram_0300
; 0x00 - Nobody
; 0x01 - Cat with the weapon (level 3) (0x01 - knife, 0x81 - gun)
; 0x02 - Gray Land hat (level 3) Type B
; 0x03 - Black Land hat (level 3) Type B
; 0x04 - Land Diver (level 3)
; 0x05 - Land Diver (level 2) Type A
; 0x06 - Land Diver (level 1) Type A
; 0x07 - Zenigata Type A
; 0x08 - Shooter with bazooka (level 3) Type A
; 0x09 - The fat sailor (level 3) Type A
; 0x0A - The barrel (level 3) Type B
; 0x0B - Jumping sailor (level 3) Type A
; 0x0C - The lift (level 3) Type A
; 0x0D - Sensor (level 3) Type B
; 0x0E - Bat (level 1) Type B
; 0x0F - Gray cat (level 1) Type B
; 0x10 - Nun (level 2) Type A
; 0x11 - Girl in red, in the castle (level 1) Type A
; 0x12 - Batterfly (level 2) Type B
; 0x13 - Broned batterfly (level 2) Type B
; 0x14 - Shooter with bazooka (level 2) Type A
; 0x15 - Sensor (level 2) Type B
; 0x16 - Black cat (level 1) Type B
; 0x17 - Karate-boy (level 2) Type A
; 0x18 - Karate-boy in blue on the street (level 2) Type A
; 0x19 - Karate-girl (level 2) Type A
; 0x1A - Boy in green (level 2) Type A
; 0x1B - Girl with sword (level 1) Type A
; 0x1C - Knight in armor with a shield (level 1) Type A
; 0x1D - The barrel (level 2) Type B
; 0x1E - Sensor (level 1) Type B
; 0x1F - Fly man (level 1) Type A
; 0x20 - Shooter with bazooka (level 1) Type A
; 0x21 - Cobblestone (level-racing, level 4) Type B
; 0x22 - The bird (level-racing) Type B
; 0x23 - The bird with a bomb (level-racing) Type B
; 0x24 - Skeleton (level 4) Type A
; 0x25 - Diver Type B
; 0x26 - Mummy (level 4) Type A
; 0x27 - Gargoyle (level 4) Type B
; 0x28 - Boss (level 1) Type A
; 0x29 - ???
; 0x2A - Boss (level 2) Type A
; 0x2B - ???
; 0x2C - Boss (level 3) Type A
; 0x2D - ???
; 0x2E - Boss (level 4) Type A
; 0x2F - ???
; 0x30 - Wall (level 4) Type B
; 0x31 - Wall (level 4) Type B
; 0x32 - Breaking platform (level 4) Type B
; 0x33 - Blade trap (level 4) Type B
; 0x34 - Potted snakes (level 4) Type B
; 0x35 - Egyptian with bow (level 4) Type A
; 0x36 - Egyptian with a sword (level 4) Type A
; 0x37 - Egyptian with a boomerung (level 4) Type A
; 0x38 - Ninja upside down (level 4) Type A
; 0x39 - Sensor (level 4) Type B

vEnemyA                       = ram_0300
vEnemyB                       = ram_0301
vEnemyACount                  = ram_030A
vEnemyBCount                  = ram_030B
vEnemyTimerLow1               = ram_0314 ; the low counter after which the enemy will appear
vEnemyTimerHigh1              = ram_0315 ; the high counter after which the enemy will appear
v_briefcase_index             = ram_0398 ; [0399-039D]
v_bomb_on_screen              = ram_039E ; C2 - a bomb
v_item_on_screen              = ram_039E ; [039F-03A3] - briefcase, 039E - screen
; 0%10000000 - ???
; For briefcase:
; C0 - allow briefcase
; D0 - self item
; E0 - disallow briefcase

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
vBankData                     = ram_06B5
vChrBankData                  = ram_06B6
v_sprite_magics               = ram_06B7
v_sprite_magic1               = ram_06B7 ; Y-position, 0xF0 - a sprite doesn't exist
v_sprite_magic2               = ram_06B8
v_sprite_magic3               = ram_06B9 ; BBBB XXXX, BBBB - sign MMC3 bank data
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