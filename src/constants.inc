; Contants

MMC3_Bank_select    = $8000 ; see https://www.nesdev.org/wiki/INES_Mapper_206
MMC3_Bank_data      = $8001 ;
Set_features        = $FFF6 ;
; XYZW KLMN
; X - Test mode (debug mode)
; Y - Demo version (?)

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
vCacheRam_12                  = ram_0012 ;
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
vGameCounters                 = ram_002E ; [vCorridorCounter, the unknown counter1, 2, 3]
vCorridorCounter              = ram_002E ; The counter starts when we enter the corridor
vAnimationCounter             = ram_002F ; To animate the balloon and squeezing Lupine's legs on the jet-pack
; Also the counter starts when the character is flying after damage
; ram_0030 - the unknown counter1
; ram_0031 - the unknown counter2

vPostAttackCounter            = ram_0030 ; e.g. for the boss of level 1

vResistantToDamageCounter     = ram_0032
vLowCutsceneCounter           = ram_0033
vHighCutsceneCounter          = ram_0034 ; Only for a demo (the message scenes are not included)
vEnemyRNGValue                = ram_0035
vCutscenesMode                = ram_0037 ; 0xFF - Starting cutscenes are used (with Clarisse Cagliostro), 0x00 - no used
; 0x00 - in game

vPauseStatus                  = ram_0038 ; 0x00 - no pause, 0x40 - pause


vGameInterruptEvent           = ram_0039
; 0x80 - to select the character (the character is arrested) or to next character in demo
; 0x81 - to select the character (the character is dying)
; 0xC0 - go into the corridor (sub level or unique room)
; 0xC1 - dive into the water
; 0xC2 - get out of the water
; 0xC3 - leave the unique room
; 0xC4 - to the cutscene of defeating the boss
; 0xE0 - to next level

vDamageStatus                 = ram_003A
; 0x80 - The character isn't getting damage
; 0x40 - The character got damage with a non-zero bullet proof vest item
; 0x20 - The character got damage from Zenigata (arrested)

vSharedGameStatus             = ram_003B
; Value (some the flags):
; 0x00 - In the game
; 0x01 - A screen with the message
; 0x03 - A screen with the message after boss
; 0x0B - A final scene
; 0x10 - Select the character
; 0x20 - Death by fall
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
; 0x40 N - the Lupin's balloon is exploding
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
vNoScreen                     = ram_0068 ; The number of the level screen, vHighChrPosX
vTempNoScreen                 = ram_0069
vScreenChrPosY                = ram_006A ; The character's position along the Y axis relative to the screen (no repeat)
vTempScreenChrPosY            = ram_006B
vChrStatus                    = ram_006C ; A status of a character
; Byte: XYZW KLMN
; N - the character is looking to the right/left (1 - left, 0 - right)
; M - the character is/isn't sitting (1 - sitting, 0 - no sitting)
; L - ??
; K - the character is dying  (1 - dying, 0 - no dying)
; W - the character is/isn't jumping (1 - jumping, 0 - no jumping)
; Z - the character is entering a corridor or hiding place or died (1 - entering, 0 - no entering)
; Y - ??
; X - ??
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
; 4 - jump off after the squatting (for enemies)
; For fly man:
; 0x00 - 0x07 - the right fly direction
; 0x08 - 0x0F - the left fly direction

vJumpCounter                  = ram_006F

; ram_0070 - vChrFrameIndex ???

vVelocity                     = ram_0071 ; 0x04 - min, 0x0C - max


vRifleShotCount               = ram_0072 ; A number of rifle shots
vRifleFireTime                = ram_0073 ; The time it takes for a rifle to fire
vChrLandStatus                = ram_0079 ;
; 0x00 - the character is in the air
; 0x80 - the character stands on the ground

vBulletCount                  = ram_007A ; 0x00 - 1 bullet, 0x01 - 2 bullets, 0x02 - 3 bullets and so on...
vBulletPosX                   = ram_007B ; [0x7B-0x7F] on the screen, in pixel units
vBulletPosY                   = ram_0080 ; [0x80-0x84] on the screen, in pixel units
vBulletLowPosX                = ram_0085 ; [0x85-0x89] on the level, in pixel units (with repeat)
vBulletHighPosX               = ram_008A ; [0x8A-0x8E] on the level, in screen units
vBulletStatus                 = ram_008F ; [0x8F-0x93] , for a rifle, Lupin's pistol, Jigen's pistol
; Byte: XYZW KLMM
; X - the bullet is activated (1 - is activated, 0, isn't activated)
; Y - the dictance (1 - short, 0 - long)
; Z - ???
; W - the direction (1 - left, 0 - right)
; K - ???
; L - ???
; M - start of the shoot (1,2,3 - start, 0 - no start), the value decrements with each rendering

vBulletCounter                = ram_0094 ; only for Lupin [0x94-0x98]

vNonUsed                      = ram_009C

vHiScore                      = ram_0099 ; [0x99-0x9F]

vNonUsed3                     = ram_00A3

vEnemyScore                   = ram_00A6 ; [0xA6-0xAC]

vIndexSelectableChr           = ram_00AD ; Selectable character number in character selection mode
vMainMenuGunYPos              = ram_00AD ;
vEnemyHitBoxY                 = ram_00AD ; position Y on the screen, in pixel units
vCopyIndexSelectableChr       = ram_00AE ;
vEnemyHitBoxX                 = ram_00AE ; position X on the screen, in pixel units
vEnemyHitBoxH                 = ram_00AF ; height, in pixel units
vEnemyHitBoxW                 = ram_00B0 ; width, in pixel units							  
v_start_level                 = ram_00B1 ; The start level [0-3]
vTmpHitBoxY                   = ram_00B1 ; position Y, in pixel units
v_count_secret_hits           = ram_00B2 ; Stage select codes at the title screen
vTmpHitBoxX                   = ram_00B2 ; position X, in pixel units
v_lock_secret_hits            = ram_00B3 ; Allow button to be pressed only when other buttons aren't pressed
vTmpHitBoxH                   = ram_00B3 ; height, in pixel units
v_offset_in_secret_codes      = ram_00B4
vTmpHitBoxW                   = ram_00B4 ; width, in pixel units
vCurrentUniqueRoom            = ram_00B6
; Byte: 00UU 00RR
; UU - 0x01 for an unique room (NPC, briefcase, boss), else 0x00
; RR - 0x01 - NPC room (use with UU), 0x02 - briefcase room (use with UU), 0x03 - room with the room

vCorridorMagic5               = ram_00B7
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
vTmpEnemyStartingPosXHigh     = ram_00D4
vTmpEnemyStartingPosXLow      = ram_00D5
vReasonCharacterChange        = ram_00D6

vCrcChecksumLowValue          = ram_00F5
vCrcChecksumMiddleValue       = ram_00F6
vCrcChecksumHighValue         = ram_00F7
vCrcBankData                  = ram_00F8

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

vEnemies                      = ram_0300 ; see docs (Bestiary)
vEnemyA                       = ram_0300
vEnemyB                       = ram_0301
vEnemyASpriteMagic2           = ram_0302 ; see v_sprite_magic2
vEnemyASpriteMagic3           = ram_0303 ; see v_sprite_magic3
vEnemyASpriteMagic2Ex1        = ram_0304 ; see v_sprite_magic2
vEnemyASpriteMagic2Ex2        = ram_0305 ; see v_sprite_magic2
vEnemyBSpriteMagic2           = ram_0306 ; see v_sprite_magic2
vEnemyBSpriteMagic3           = ram_0307 ; see v_sprite_magic3

vEnemyACount                  = ram_030A
vEnemyBCount                  = ram_030B
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

; Byte: 0YZW KLMN (template1, land diver)
; N - the direction (1 - on the left, 0 - on the right)
; M - the jump
; L - the appearance
; K - the stop
; W - squatting
; Z - the dying
; Y - see above

; Byte: 0YZ0 00MN (fly man)
; N - see above
; M - the jump
; Z - see above
; Y - see above

; Byte: 00ZW KLM0 (projective)
; M - moving along a parabola
; L - using vJumpCounter
; K - ???

vEnemyAStatus1                = ram_0320
vEnemyAStatus2                = ram_0321
vEnemyAProjectileStatus       = ram_0322 ; $0322-$0325

vEnemyASwordStatus            = ram_0326
; 0x80 - the sword is used, below
; 0x81 - the sword is used, above

vEnemyAProjectileIsUsed       = ram_0326
vEnemyASwordFrame_            = ram_0326
vEnemyAVelocity               = ram_0326
vEnemyAVelocity1              = ram_0326
vEnemyAVelocity2              = ram_0327
vEnemyAProjectileVelocity     = ram_0328 ; $0328-$032B

vEnemyAPosY                   = ram_032C ; see below
vEnemyAPosY1                  = ram_032C ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAPosY2                  = ram_032D ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAProjectilePosY         = ram_032E ; $032E-$0331

vEnemyAScreenPosX             = ram_0332 ; see below
vEnemyAScreenPosX1            = ram_0332 ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyAScreenPosX2            = ram_0333 ; The enemy position along the X axis relative to the screen (no repeat)

vEnemyAPosXLow                = ram_0338 ; see below
vEnemyAPosXLow1               = ram_0338 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAPosXLow2               = ram_0339 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAProjectilePosXLow      = ram_033A ; $033A-$033D

vEnemyAPosXHigh               = ram_033E ; see below
vEnemyAPosXHigh1              = ram_033E ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAPosXHigh2              = ram_033F ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAProjectilePosXHigh     = ram_0340 ; $0340-$0343

vEnemyAFrame_Counter           = ram_0344 ; see below
vEnemyAFrame_Counter1          = ram_0344 ; The frame index (the enemy number = 1)
vEnemyAFrame_Counter2          = ram_0345 ; The frame index (the enemy number = 2)
vEnemyAProjectileFrame_Counter = ram_0346 ; $0346-$0349

vEnemyAJumpCounter            = ram_034A ; see below (* bazooka man)
vEnemyAJumpCounter1           = ram_034A ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyAJumpCounter2           = ram_034B ; vJumpCounter analog for the enemy (the enemy number = 2)
vEnemyAProjectileJumpCounter  = ram_034C ; $034C-$034F

vEnemyAHealthPoints           = ram_0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints1          = ram_0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints2          = ram_0351 ; Only for the egyptian with a boomerung, nun

vEnemyAJumpType               = ram_0356 ; see below
vEnemyAJumpType1              = ram_0356 ; vJumpType analog for the enemy (the enemy number = 1)
vEnemyAJumpType2              = ram_0357 ; vJumpType analog for the enemy (the enemy number = 2)

vEnemyBStatus                 = ram_035C ; see below and docs (Bestiary)
; 0x00 - None
; 0x01 - the direction (1 - on the left, 0 - on the right) 
; 0x20 - the enemy is dying (1 - true, 0 - false)
; 0x40 - the enemy can get damage (1 - true, 0 - false)
; 0x80 - The status is used (1 - true, 0 - false)

; Byte: 0YZW KLMN (template2, cat or snake)
; N - see above
; M - the jump
; L - ???
; K - the stop
; W - ???
; Z - see above
; Y - see above

vEnemyBStatus1                = ram_035C
vEnemyBStatus2                = ram_035D
vEnemyBStatus3                = ram_035E ; For Kim
vEnemyBStatus4                = ram_035F ; For Kim
vEnemyBStatus5                = ram_0360 ; For Kim
vEnemyBStatus6                = ram_0361 ; For Kim

vEnemyBThrowingPower          = ram_0362 ; For Hulk
vButterflyRebound             = ram_0362 ; For Kim
; 0x05 - there was no rebound (the right direction)
; 0x0B - there was no rebound (the left direction)
; 0x03 - there was a rebound (the right direction)
; 0x0D - there was a rebound (the left direction)

vEnemyBPosY                   = ram_0368 ; see below
vEnemyBPosY1                  = ram_0368 ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyBPosY2                  = ram_0369 ; The enemy position along the Y axis relative to the level (no repeat)

vEnemyBScreenPosX             = ram_036E ; see below
vEnemyBScreenPosX1            = ram_036E ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyBScreenPosX2            = ram_036F ; The enemy position along the X axis relative to the screen (no repeat)

vEnemyBPosXLow                = ram_0374 ; see below
vEnemyBPosXLow1               = ram_0374 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBPosXLow2               = ram_0375 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBPosXHigh               = ram_037A ; see below
vEnemyBPosXHigh1              = ram_037A ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyBPosXHigh2              = ram_037B ; The enemy position along the X axis relative to the level (in screen unit)

vEnemyBFrame_Counter          = ram_0380 ; see below
vEnemyBFrame_Counter1         = ram_0380 ; The frame index (the enemy number = 1)
vEnemyBFrame_Counter2         = ram_0381 ; The frame index (the enemy number = 2)

vEnemyBJumpCounter            = ram_0386 ; see below
vEnemyBJumpCounter1           = ram_0386 ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyBJumpCounter2           = ram_0387 ; vJumpCounter analog for the enemy (the enemy number = 2)

vEnemyBHealthPoints           = ram_038C ; Only for the gargoyle
vEnemyBHealthPoints1          = ram_038C ; Only for the gargoyle
vEnemyBHealthPoints2          = ram_038D ; Only for the gargoyle

vEnemyBJumpType               = ram_0392 ; see below
vEnemyBJumpType1              = ram_0392 ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyBJumpType2              = ram_0393 ; vJumpCounter analog for the enemy (the enemy number = 2)

vButterflyCircularFlightCounter = ram_0392 ; For Kim

vBombOnScreen                 = ram_0398 ; 0x00 - no exist, 0x01 - on screen
v_briefcase_index             = ram_0398 ; [0399-039D]
vBombStatus                   = ram_039E
; 0x00 - none
; 0xC2 - a bomb is laying on screen
; 0xC0 - a bomb is exploding
v_item_on_screen              = ram_039E ; [039F-03A3] - briefcase, 039E - screen
; 0%10000000 - ???
; For briefcase:
; 0xC0 - allow briefcase
; 0xD0 - self item
; 0xE0 - disallow briefcase

vBriefcaseHitCount            = ram_03A5 ; number of shots the briefcase must receive before it collapses {$03A5, $03A6, $03A7, $03A8, $03A9}

vItemPosY                     = ram_03AA ; [03AB-03AF] The item position in th water along the X axis relative to the screen (no repeat)
vItemPosXLow                  = ram_03B6 ; [03B7-03BB] The item position in th water along the X axis relative to the level (with repeat)
vItemPosXHigh                 = ram_03BC ; [03BD-03C1] The item position in th water along the X axis relative to the level (in screen unit)

vCacheBossStatus              = ram_03D7 ; the cache is used after defeating the boss
vCacheBossScreenPosX          = ram_03D8 ; the cache is used after defeating the boss

vApuChannelStatus             = ram_0400 ; Secondary status flag for adjusting APU_STATUS during sound and music processing
vApuChannelProcessed          = ram_0401 ; 0x01 - pulse 1, 0x02 - pulse 2, 0x04 - triangle, 0x08 - noise
vCurrentApuChannel            = ram_0402 ; apu channel (0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise) for each sound row
vCurrentApuChannelFlag        = ram_0403 ; apu channel flags (0x00 - pulse 1, 0x01 - pulse 2, 0x82 - triangle, 0x43 - noise)
vSoundTempValue1              = ram_0404
vSoundTempValue2              = ram_0405
vSoundCounter                 = ram_0406
vSoundRowIndex                 = ram_0410 ; sound pair index
vSoundRowComplexChannel        = ram_0411
; SVVV 00CC
; S - 1 if the shaking effect is used
; V - the shaking effect index in tbl_B1AA_shaking_spread (Bank 2, Page 1)
; C - apu channel for the sound track (0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise)
vSoundRowTrackLow              = ram_0412 ; low address of the current track
vSoundRowTrackHigh             = ram_0413 ; high address of the current track
vSoundRowFPPValue              = ram_0414 ; ppu frames per sound pair (FPP) in the sound track
vSoundRowFPPCounter            = ram_0415 ; ppu frames per sound pair (FPP) counter, i.e. counter for number of frames per sound instruction
vSoundRowMainChannelByte       = ram_0416 ; the current value for $4000 (pulse 1), $4004 (pulse 1), $4008 (triangle) or $400C (noise)
vSoundRowFPPLength             = ram_0417 ; length of sound row, affects FPP (see vSoundRowFPPCounter)
vSoundRowSweep                 = ram_0418
vSoundRowMarkCacheNoReplay     = ram_0419 ; the sound row index for the replays
vSoundRowCacheNoReplay         = ram_041A ; the cache number of replays
vSoundRowVolumeDirection       = ram_041B ; It's the direction of distributions for the volume changes
vSoundRowVolumeChLength        = ram_041C ; length in FPP (see vSoundRowFPPCounter) utits for next sound rows, feature 'volume changes'
                                          ; Note: vSoundRowVolumeChLength is not cleared (may be bugs)
vSoundRowVolumeChCounter       = ram_041D ; the counter between 0x00 and vSoundRowVolumeChLength
vSoundRowVolumeIterCount       = ram_041E ; The count of the changes is for the constant volume change (0x0X - increasing or 0xFX - decreasing)
vSoundRowVolumeIterStep        = ram_041F ; the constant step of changing the volume in the sound row
vSoundRowVolumeIterCurrentStep = ram_0420 ; the current step of changing the volume in the sound row
vSoundRowTimerCorrection       = ram_0421 ; the correction when the timer value < 0x02 or >= 0xFE
vSoundRowMarkForReplay         = ram_0422 ; sound pair index for replays
vSoundRowShakingEfValue        = ram_0423 ; shaking effect value in the sound track
vSoundRowShakingEfCounter      = ram_0424 ; counter to skip shaking effect
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
v_sprite_magic2               = ram_06B8 ; The offset by the address SS (see v_sprite_magic3)
v_sprite_magic3               = ram_06B9
; SSBB XCOO
; SS - the offset of the high address ($8000), i.e. $8000 + $(0%000000SS 0%00000000)
; BB - 0x00 - bank 05 (2 page), 0x01 - bank 02 (2 page), 0x1X - bank 05 (1 page)
; C  -  0x1 - usign next CHR-page size 1 Kb, 0x0 - using current CHR-page
; OO - OAM-attributes
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
; проверить, почему используется 7 строк вместо 8 для таблицы атрибутов (уровень 2.0, внутренний)
; индексы в одной из таблиц доходят до 0x70, хотя используются до 0x9F, почему так?
; Game Genie коды - исправление пробелов
; Баги - перейти в комнату 0x78, перейти на экран с двумя стенами и сменить персонажа. Стена сменится на стенообразного персонажа
; vNoSubLevel -> vNoRoom
; JSR $AD6E ; to sub_AD6E bank 06_2 - проверить записи
; 0x008B91 - лишние байты музыки
; удалить лишние директивы .export/.import