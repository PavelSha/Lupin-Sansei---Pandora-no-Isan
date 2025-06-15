; RAM
vTempCounter5                   = $05 ;
vTempCounter6                   = $06 ;
vTempCounterC                   = $0C ; 
vTempCounterF                   = $0F ;
vTempCounter10                  = $10 ;	
vCacheRam11                     = $11 ;
vNonUsed11                      = $11 ;
vTempCheckButtons               = $12 ; This is a variable that stores the checked state of the button
vTempCounter12                  = $12 ;
;ram_0013                       = $13 ;
vNonUsed14                      = $14 ;
;ram_0015                       = $15 ;
;ram_0016                       = $16 ;
;ram_0017                       = $17 ;
;ram_0018                       = $18 ;
vRenderActive                   = $19 ; 0x00 - active, else deactive
vTempCounter1A                  = $1A ; Intermediate counter
vTempRowNumber1A                = $1A ;
;ram_001B                       = $1B ;
vBtnPressedInGame               = $1C ; In a level 1-4 or a title screen
vCopy001C                       = $1D ; 
vPlayer1BtnPressed              = $1E ; Button pressed status (A = 0x01, B = 0x02, Select = 0x04, Start = 0x08, Up = 0x10, Down = 0x20, Left = 0x40, Right = 0x80)
vPlayer2BtnPressed              = $1F ; For a contoller2
vLastP2BtnPressed               = $20 ; It's the previouse value for a contoller2 (the state of the buttons)
vLastP1BtnPressed               = $21 ; It's the previouse value for a contoller1 (the state of the buttons)
vDemoBtnPrsdCounter             = $22 ; Counter after which an attempt is made to simulate a button press in demo scenes
vDemoBtnPrsdIndex               = $23 ; Index in the table of pressed buttons in demo scenes
vMenuDemoIndex                  = $24 ;
; 0x00 - The menu
; 0x01 - Lupin demo
; 0x02 - Jigen demo
; 0x03 - Goemon demo
; 0x04 - Zenigata demo
; 0x05 - Fujiko demo
; 0x06 - Clarisse demo
; 0x07 - Stop demo
vGameplayDemoCounter            = $25 ;
vPpuCtrlSettings                = $26 ; This is a last actual ppu controller flags.
vLowViewPortPosX                = $27 ; a horizontal scroll, in level it's the position of the viewport along the x-axis relative to the level (may repeat, with scrolling)
vTempLowViewPortPosX            = $28 ;
vLowViewPortPosY                = $29 ; a vertical scroll
;ram_002A                       = $2A ;
vNmiCounter                     = $2B ; The shared counter of the game
vLowCounter                     = $2C ;
vHighCounter                    = $2D ;
vGameCounters                   = $2E ; [vCorridorCounter, the unknown counter1, 2, 3]
vCorridorCounter                = $2E ; The counter starts when we enter the corridor
vJetPackRiseCounter             = $2E ;
vCarExplosionCounter            = $2E ;
vCarLandingCounter              = $2E ;
vIntoPyramid_Counter            = $2E ;
vWaterDashCounter               = $2E ;
vWaterDeathCounter              = $2E ;
vAnimationCounter               = $2F ; To animate the balloon and squeezing Lupin's legs on the jet-pack
; Also the counter starts when the character is flying after damage
; $30 - the unknown counter1
; $31 - the unknown counter2
vPostAttackCounter              = $30 ; e.g. for the boss of level 1
vClearMessageCounter            = $30 ;
vNonUsedCounter                 = $31 ;
vResistantToDamageCounter       = $32 ;
vLowCutsceneCounter             = $33 ; The counter at title screen
vHighCutsceneCounter            = $34 ; At title screen with $33 do a time of demo scene, only for a demo (the message scenes are not included)
vEnemyRNGValue                  = $35 ;
;ram_0036                       = $36 ;
vCutscenesMode                  = $37 ;
; 0xFF - Starting cutscenes are used (with Clarisse Cagliostro), 0x00 - no used
; 0x00 - in game
vPauseStatus                    = $38 ; 0x00 - no pause, 0x40 - pause
vGameInterruptEvent             = $39 ;
; Byte: XYZW KLMN
; X - the game interrupt is exist (1 - exist, 0 - no exist)
; 0x80 - to select the character (the character is arrested) or to next character in demo
; 0x81 - to select the character (the character is dying)
; 0xC0 - go into the corridor (sub level or unique room)
; 0xC1 - dive into the water
; 0xC2 - get out of the water
; 0xC3 - leave the unique room
; 0xC4 - to the cutscene of defeating the boss
; 0xE0 - to next level
vDamageStatus                   = $3A ;
; 0x80 - The character isn't getting damage
; 0x40 - The character got damage with a non-zero bullet proof vest item
; 0x20 - The character got damage from Zenigata (arrested)
vSharedGameStatus               = $3B ;
; Byte: XYZW KLMN
; M - the boss is defeated
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
vGameLocks                      = $3C ;
; Byte: XYZ0 0000
; X - the lock for the process 'Select character' (1 - true)
; Y - the process, after 'Select a character', but before the game itself
; Z - use with X, 0 - after the radio; 1 - after a fall or arrest
vStartStatus                    = $3D ;
; 0x00 - The starting cutscene, before typing the message
; 0x01 - The starting cutscene, during typing the message
; 0x02 - The starting cutscene, after typing the message
; 0x00 - Allowed to show menu
vCharacterSelectionCounter      = $3D ; If 0x00 - no selection else selection
vDrowningRate                   = $3E ;
vFlowingOffset                  = $3F ; by X-position in the water
vFlyingOffset                   = $3F ; by X-position in the air
vWaterRoomIndex                 = $40 ; [0x00-0x3D]
vNPCMessageStatus               = $41 ;
; Byte: XYZW KKKK
; Y - the message is clearing
; X - the message was appearing
; K - 0x00, 0x03 (1st message), 0x06 (2nd message, scene with the boss)
vChrDirectMovement              = $42 ;
; Byte: XY00 0000
; X - the horizontal direction (0 - right, 1 - left)
; Y - falling from a balloon (0 - no falling, 1 - falling)
; Y - in process changing the vertical direction on the jet-pack (0 - in procees, 1 - outside the process)
vCurrentNumberSprite            = $43 ;
vCurrentNumberSpriteAfCh        = $44 ; Last sprite number received after character rendering
vCharacterRenderData            = $45 ;
; Byte: LL0000AA
; AA - the OAM-attributes
; LL - the high part of address (0%100000LL), e.i. [$8000 - $8300]
vNoRoom                         = $46 ; see docs (Rooms, Maze1, Maze2, Maze3, Maze4)
vTempNoSubLevel                 = $47 ;
vScrollDirection                = $48 ; The direction in which the screen will automatically scroll (viewport offset), e.g. if the character moves
; 0x00 - none
; 0x40 - to left
; 0x80 - to right
vCurrentRoomLength              = $49 ; in screen units
vNearCurrentRoomLength          = $4A ; vCurrentRoomLength - 1 (in screen units)
vHighViewPortPosX               = $4B ; The high value for an overflow $27 (in screen units)
vTempHighViewPortPosX           = $4C ;
vCacheNoScreen                  = $4D ; In screen units
vBackgroundScreenInfo           = $4E ;
vHighBackgroundScreenInfo       = $4F ;
vTempValue50                    = $50 ;
vTempValue51                    = $51 ;
vBackgroundScreenIndexes        = $52 ;
vHighBackgroundScreenIndexes    = $53 ;
vPpuBufferInitValue             = $54 ;
vNonUsed55                      = $55 ;
vScore                          = $56 ; score X000000, [$0056-$005C]
;ram_0057                       = $57 ; score 0X00000
;ram_0058                       = $58 ; score 00X0000
;ram_0059                       = $59 ; score 000X000
;ram_005A                       = $5A ; score 0000X00
;ram_005B                       = $5B ; score 00000X0
;ram_005C                       = $5C ; score 000000X
vNonUsed5D                      = $5D ;
vNoLevel                        = $5E ; It is a number of a level than it starts with 0.
; 0x00 - level 1
; 0x01 - level 2
; 0x02 - level 3
; 0x03 - level 4 + racing
vChrLiveStatus                  = $5F ;
; Byte: XYZW KLMM
; MM - the current selected character (0x00 - Lupin, 0x01 - Jigen, 0x10 - Goemon)
; X - Goemon fell (0 - true)
; Y - Goemon arrested (0 - true)
; Z - Jigen fell (0 - true)
; W - Jigen arrested (0 - true)
; K - Lupin fell (0 - true)
; L - Lupin arrested (0 - true)
vRoomWithPrisoners              = $60 ;
vRoomWithPrisoner1              = $60 ;
vRoomWithPrisoner2              = $61 ;
vPrisoners                      = $62 ; [$0062-$0063], 0x00 - Lupin, 0x01 - Jigen, 0x02 - Goemon
;ram_0063                       = $63 ; 
vScreenChrPosX                  = $64 ; The character's position along the X axis relative to the screen (no repeat)
vTempScreenChrPosX              = $65 ;
vLowChrPosX                     = $66 ; The character's position along the X axis relative to the room (with repeat) 
vTempLowChrPosX                 = $67 ;
vHighChrPosX                    = $68 ; The number of the level screen, vNoScreen
vTempHighChrPosX                = $69 ;
vScreenChrPosY                  = $6A ; The character's position along the Y axis relative to the screen (no repeat)
vTempScreenChrPosY              = $6B ; 
vChrStatus                      = $6C ; A status of a character
; Byte: XAAA K0MN
; N - the character is looking to the right/left (1 - left, 0 - right)
; M - the character is/isn't sitting (1 - sitting, 0 - no sitting)
; K - the character is dying  (1 - dying, 0 - no dying)
; X - the character can hide in the room (1 - can, 0 - cann't)
; AAA - the action:
; 0x01 = the character is jumping
; 0x02 = the character is entering a corridor or hiding place or died
; 0x04 = Goemon's unknown technique !(UNUSED)
vCarStatus                      = $6C ; A status of a car with character
; Byte: XYZW K0MN
; N - unused, the car with character is always looking to the right
; M - the car is inside the road hill  (1 - is, 0 - is not)
; K - the car with character is destroying  (1 - destroying, 0 - not destroying)
; XYZW - the action:
; 0x01 - the car with character is jumping
; ....
; 0x03 - the strong collision
; 0x04 - the car is landing
; 0x05 - the water collision
; ....
; 0x07 - entry into the pyramid
vMovableChrStatus               = $6D ;
; Byte: XYZ0 000N
; N - the character is moving on the lift (1 - moving, 0 - no moving)
; Z - the character is moving on the roof pitch (1 - moving, 0 - no moving)
; Y - the character is moving on the balloon (1 - moving, 0 - no moving)
; X - the character is moving in the water (1 - moving, 0 - no moving)
vJumpType                       = $6E ;
; 0 - simple jump
; 1 - high jump
; 2 - jumping off
; 3 - jump by side (or stand on the lift)
; 4 - jump off after the squatting (for enemies)
; For fly man:
; 0x00 - 0x07 - the right fly direction
; 0x08 - 0x0F - the left fly direction
vJumpCounter                    = $6F ;
vChrFrame_Counter               = $70 ;
vVelocity                       = $71 ;
; By default: 0x04 - min, 0x0C - max
; Level-racing: 0x00 - min, 0x10 - max, 0x06 - default
vCarRenderParams_               = $72 ; [$0072-$0077]
vRifleShotCount                 = $72 ; A number of rifle shots
vCarWheelsFrame_Offset          = $72 ;
vRifleFireCounter               = $73 ; The time it takes for a rifle to fire
vCarFrame_Offset                = $73 ;
vCarRenderOffsetY               = $74 ;
vCarChrRenderOffsetY            = $75 ;
vCarChrFrame_Offset             = $76 ;
vBulletPosOffsetY               = $77 ;
vSwordPosition                  = $78 ; For Goemon, {0x00, 0x01, 0x02, ..., 0x08}
vChrAllowedStatus               = $79 ; To give Lupin and Jigen a chance to shoot
; Byte: X000 0000
; X - the character is allowed the hit (1 - he can, 0 - he cann't)
vBulletCount                    = $7A ; 0x00 - 1 bullet, 0x01 - 2 bullets, 0x02 - 3 bullets and so on...
vBulletPosX                     = $7B ; [$007B-$007F] on the screen, in pixel units   
;ram_007C                       = $7C ;
;ram_007D                       = $7D ;
;ram_007E                       = $7E ;
;ram_007F                       = $7F ;
vBulletPosY                     = $80 ; [$0080-$0084] on the screen, in pixel units
;ram_0081                       = $81 ;
;ram_0082                       = $82 ;
;ram_0083                       = $83 ;
;ram_0084                       = $84 ;
vBulletLowPosX                  = $85 ; [$0085-$0089] on the level, in pixel units (with repeat)
;ram_0086                       = $86 ;
;ram_0087                       = $87 ;
;ram_0088                       = $88 ;
;ram_0089                       = $89 ;
vBulletHighPosX                 = $8A ; [$008A-$008E] on the level, in screen units
;ram_008B                       = $8B ;
;ram_008C                       = $8C ;
;ram_008D                       = $8D ;
;ram_008E                       = $8E ;
vBulletStatus                   = $8F ; [$008F-$0093] , for a rifle, Lupin's pistol, Jigen's pistol
; Byte: XYZW KLMM
; X - the bullet is activated (1 - is activated, 0, isn't activated)
; Y - the dictance (1 - short, 0 - long)
; Z - slow mode (1 - is activated, 0, isn't activated)
; W - the direction (1 - left, 0 - right)
; K - ???
; L - the vBulletOffsetOrCounter indication (1 - the offset, 0 - the counter)
; M - start of the shoot (1,2,3 - start, 0 - no start), the value decrements with each rendering
;ram_0090                       = $90 ;
;ram_0091                       = $91 ;
;ram_0092                       = $92 ;
;ram_0093                       = $93 ;
vBulletOffsetOrCounter          = $94 ; [$0094-$0098], only for Lupin
;ram_0095                       = $95 ;
;ram_0096                       = $96 ;
;ram_0097                       = $97 ;
;ram_0098                       = $98 ;
vHiScore                        = $99 ; score X000000, [$0099-$009F]
;ram_009A                       = $9A ; score 0X00000
;ram_009B                       = $9B ; score 00X0000
;ram_009C                       = $9C ; score 000X000
;ram_009D                       = $9D ; score 0000X00
;ram_009E                       = $9E ; score 00000X0
;ram_009F                       = $9F ; score 000000X
;ram_00A0                       = $A0 ;
;ram_00A1                       = $A1 ;
;ram_00A2                       = $A2 ;
vNonUsed3                       = $A3 ;
;ram_00A4                       = $A4 ;
;ram_00A5                       = $A5 ;
vEnemyScore                     = $A6 ; score X000000, [$00A6-$00AC]
;ram_00A7                       = $A7 ; score 0X00000
;ram_00A8                       = $A8 ; score 00X0000
;ram_00A9                       = $A9 ; score 000X000
;ram_00AA                       = $AA ; score 0000X00
;ram_00AB                       = $AB ; score 00000X0
;ram_00AC                       = $AC ; score 000000X
vNonUsedAD                      = $AD ;
vIndexSelectableChr             = $AD ; Selectable character number in character selection mode
vMainMenuGunYPos                = $AD ;
vEnemyHitBoxY                   = $AD ; position Y on the screen, in pixel units
vCopyIndexSelectableChr         = $AE ;
vEnemyHitBoxX                   = $AE ; position X on the screen, in pixel units
vEnemyHitBoxH                   = $AF ;
vEnemyHitBoxW                   = $B0 ;
vStartLevel                     = $B1 ; The start level [0-3]
vTmpHitBoxY                     = $B1 ; position Y, in pixel units
vSecretHitIndex                 = $B2 ; Stage select codes at the title screen
vTmpHitBoxX                     = $B2 ; position X, in pixel units
vLockSecretHits                 = $B3 ; Allow button to be pressed only when other buttons aren't pressed
vTmpHitBoxH                     = $B3 ; height, in pixel units
vOffsetInSecretCodes            = $B4 ;
vTmpHitBoxW                     = $B4 ; width, in pixel units
vNonUsedB5                      = $B5 ;
vCurrentUniqueRoom              = $B6 ;
; Byte: 00UU 00RR
; UU - 0x01 for an unique room (NPC, briefcase, boss), else 0x00
; RR - 0x01 - NPC room (use with UU), 0x02 - briefcase room (use with UU), 0x03 - room with the boss
vRoomExtraInfo                  = $B7 ;
; If it is the NPC room - the NPC index in tbl_ptr_roomsX_with_NPC
; If it is the room with briefcases - the table index in tbl_briefcases_indexes_on_the_levelX
; If it is the broken wall - the number + 1 of items in a wall
; If it is the checkpoint - 0x80 for secondary list, else main list
; For main list and briefcase rooms - 5th-byte index in the briefcase indexes table
vRoomExtraInfoCache             = $B8 ;
vCurUniqueRoomShort             = $B9 ;
; 0x00 - the room with the arrested character, 0x01 - NPC room (use with UU), 0x02 - briefcase room (use with UU), 0x03 - room with the boss
vCheckpointAddr                 = $BA ; low address (address to table tbl_ptr_checkpoints_on_the_level)
vHignCheckpointAddr             = $BB ; high address
vRoomCurrentIndex               = $BC ; For using with vRooms
vCorridorAddr                   = $BD ; low address (address to table tbl_ptr_corridors)
vHighCorridorAddr               = $BE ; high address
vDestrWallAddr                  = $BF ; low address  (address to table tbl_ptr_destructible_walls)
vHighDestrWallAddr              = $C0 ; high address
vCurrentCorridorOffset          = $C1 ; the offset for 1 of 5 bytes (e.g. see tbl_ptr_corridors_level_1_0)
;ram_00C2                       = $C2 ;
vDisplayRoomType                = $C3 ; for the rooms and the destructible walls
vCheckpoint                     = $C4 ; see docs (Rooms)
; 0x00 - level 1.0 or the room is empty
; ...
; 0x06 - level 2 outside
; ...
; 0x19 - level racing and etc.
; 0xD8 - level 3.0 (from water)
; 0xFF - exit from the unique room
vRoomAttrubute                  = $C5 ;
; BYTE: XYZW KLMN
; X - the room has already been visited
; Y - it is possible to enter the room (0 - possible, 1 - impossible)
; K - the room for walkthrough already been visited (Lian, Yi, San, Suu) (0 - haven't, 1 - have)
; L - the room can used as a prison room (0 - possible, 1 - impossible)
vDoorAttribute                  = $C6 ;
; BYTE: XYZW KLMN
; X - to allow to leave the door open (1  - allow, 0 - disallow)
;ram_00C7                       = $C7 ;
vMessageInProgress              = $C8 ;
; 0x00 - no message
; 0x80 - the message is typing
vLetterOffset                   = $C9 ;
vMessageCounter                 = $CA ;
vLowVramMsgAddress              = $CB ;
vHignVramMsgAddress             = $CC ;
;ram_00CD                       = $CD ;
;ram_00CE                       = $CE ;
vLowMsgPpuAddress               = $CF ; This temporary address for the message on the screen
vHighMsgPpuAddress              = $D0 ;
vGogglesActive                  = $D1 ;
; 0x80 - active
; 0x40 - projectiles are falling
; 0x00 - deactive
vGogglesLowCounter              = $D2 ;
vGogglesHighCounter             = $D3 ;
vTempChrLiveStatus              = $D4 ;
vTmpEnemyStartingPosXHigh       = $D4 ;
vTmpEnemyStartingPosXLow        = $D5 ;
vReasonCharacterChange          = $D6 ;
; 0x00 - no reason
; 0x40 - the character is fell or arrested
; 0x80 - the radio was using
vTempGapHighChrPosX             = $D7 ;
vFinalSceneNo                   = $D8 ;
; 0x00 - a starting value (after killing the last boss)
; see $B60F, 06 bank, 2 page

vCrcLowAddress                  = $F2 ;
vCrcHighAddress                 = $F3 ;
;ram_00F4                       = $F4 ;
vCrcChecksumLowValue            = $F5 ;
vCrcChecksumMiddleValue         = $F6 ;
vCrcChecksumHighValue           = $F7 ;
vCrcBankData                    = $F8 ;
vCurrentDeviceData              = $F9 ;
;ram_00FA                       = $FA ;
;ram_00FB                       = $FB ;
;ram_00FC                       = $FC ;
vSoundRoomIndex                 = $FD ;
vSoundRowLowPtr                 = $FE ;
vSoundRowHighPtr                = $FF ;
vCacheYoshikawa                 = $0100 ; [$0100-$0108]
;ram_0101                       = $0101 ;
;ram_0102                       = $0102 ;
;ram_0103                       = $0103 ;
;ram_0104                       = $0104 ;
;ram_0105                       = $0105 ;
;ram_0106                       = $0106 ;
;ram_0107                       = $0107 ;
;ram_0108                       = $0108 ;
vLastLevel                      = $0109 ; It is a last played level.

vItems                          = $0200 ; [$0200-$0208]
vRadioItem                      = $0200 ; Radio
;ram_0201                       = $0201 ; Bomb
;ram_0202                       = $0202 ; Artillery Rifle
;ram_0203                       = $0203 ; Jet-pack
;ram_0204                       = $0204 ; Infrared Goggles
vBreathingApparatusItem         = $0205 ; Breathing apparatus
vHeliumBalloonItem              = $0206 ; Helium balloon
vBulletProofVestItem            = $0207 ; Bullet proof vest
vRubyRing                       = $0208 ; Ruby ring
vTestSelectedItem               = $0209 ;
vItemsBlinkTime                 = $020A ; [$020A-$0212]
;ram_020B                       = $020B ;
;ram_020C                       = $020C ;
;ram_020D                       = $020D ;
;ram_020E                       = $020E ;
;ram_020F                       = $020F ;
;ram_0210                       = $0210 ;
;ram_0211                       = $0211 ;
;ram_0212                       = $0212 ;
;ram_0213                       = $0213 ;
vCurrentWeaponStatus            = $0214 ; Only the active items
; Byte: XY00 KKKK
; X - the weapons are not exist
; Y - the weapon is activated
; K - the current item:
; 0x0000 - Using the radio
; 0x0001 - Using the bomb
; 0x0010 - Using the artillery rifle
; 0x0011 - Using the jet-pack
; 0x0100 - Using the infrared goggles
vApparatusLowCounter            = $0215 ; Breathing or flying   
vApparatusHighCounter           = $0216 ; 
vSensorActiveLowCounter         = $0217 ; 
vSensorActiveHighCounter        = $0218 ; 
vArrayWhiteBriefcase            = $0219 ; [$0219-$02FF]
; Byte: XYZW KKKK
; X - the item is got (1 - got, 0 - no got)
; Y - ???
; Z - ???
; W - ???
; K - the item number

vEnemies                        = $0300 ; see docs (Bestiary)
vEnemyA                         = $0300 ;
vEnemyB                         = $0301 ;
vEnemyASpriteMagic2             = $0302 ; see vSpriteMagic2
vEnemyASpriteMagic3             = $0303 ; see vSpriteMagic3
vEnemyASpriteMagic2Ex1          = $0304 ; see vSpriteMagic2
vEnemyASpriteMagic2Ex2          = $0305 ; see vSpriteMagic2
vEnemyBSpriteMagic2             = $0306 ; see vSpriteMagic2
vEnemyBSpriteMagic3             = $0307 ; see vSpriteMagic3
;ram_0308                       = $0308 ;
;ram_0309                       = $0309 ;
vEnemyACount                    = $030A ;
vEnemyBCount                    = $030B ;
vEnemyAStartingPosXHigh1        = $030C ; macro X-position in which the enemy (A) appeared
vEnemyAStartingPosXLow1         = $030D ; X-position in which the enemy (A) appeared
vEnemyBStartingPosXHigh1        = $030E ; macro X-position in which the enemy (B) appeared
vEnemyBStartingPosXLow1         = $030F ; X-position in which the enemy (B) appeared
vEnemyAStartingPosXHigh2        = $0310 ; macro X-position in which the enemy (A) appeared
vEnemyAStartingPosXLow2         = $0311 ; X-position in which the enemy (A) appeared
vEnemyBStartingPosXHigh2        = $0312 ; macro X-position in which the enemy (B) appeared
vEnemyBStartingPosXLow2         = $0313 ; X-position in which the enemy (B) appeared
vEnemyTimerLow1                 = $0314 ; the low counter after which the enemy will appear
vEnemyTimerHigh1                = $0315 ; the high counter after which the enemy will appear
vZenigataTimerLow1              = $0316 ; the low counter after which Zenigata will appear
vZenigataTimerHigh1             = $0317 ; the high counter after which Zenigata will appear
vEnemyAppearTimersHigh          = $0318 ; see below
vEnemyAAppearTimerHigh1         = $0318 ; the high counter after which the same killed enemy (A) will appear in the same position
vEnemyAppearTimersLow           = $0319 ; see below
vEnemyAAppearTimerLow1          = $0319 ; the low counter after which the same killed enemy (A) will appear in the same position
vEnemyBAppearTimerHigh1         = $031A ; the high counter after which the same killed enemy (B) will appear in the same position
vEnemyBAppearTimerLow1          = $031B ; the low counter after which the same killed enemy (B) will appear in the same position
vEnemyAAppearTimerHigh2         = $031C ; the high counter after which the same killed enemy (A) will appear in the same position
vEnemyAAppearTimerLow2          = $031D ; the low counter after which the same killed enemy (A) will appear in the same position
vEnemyBAppearTimerHigh2         = $031E ; the high counter after which the same killed enemy (B) will appear in the same position
vEnemyBAppearTimerLow2          = $031F ; the low counter after which the same killed enemy (B) will appear in the same position
vEnemyAStatus                   = $0320 ; see below and docs (Bestiary)
; 0x00 - None
; 0x40 - the enemy can get damage (1 - true, 0 - false)
; 0x80 - The status is used
vEnemyAStatus1                  = $0320 ;
vEnemyAStatus2                  = $0321 ;
vEnemyAProjectileStatus         = $0322 ; [$0322-$0325]
;ram_0323                       = $0323 ;
;ram_0324                       = $0324 ;
;ram_0325                       = $0325 ;
vEnemyASwordStatus              = $0326 ;
; 0x80 - the sword is used, below
; 0x81 - the sword is used, above
vEnemyAWaitCounter              = $0326 ;
vEnemyAProjectileIsUsed         = $0326 ;
vEnemyASwordFrame_              = $0326 ;
vEnemyAVelocity                 = $0326 ;
vEnemyAVelocity1                = $0326 ;
vEnemyARecoverCounter           = $0326 ; it's a recover from damage (e.g. skeleton)
; 0xFF - it's not used
vEnemyAVelocity2                = $0327 ;
vEnemyAProjectileVelocity       = $0328 ; [$0328-$032B]
;ram_0329                       = $0329 ;
;ram_032A                       = $032A ;
;ram_032B                       = $032B ;
vPhenixPosY                     = $032C ; see below
vEnemyAPosY                     = $032C ; see below
vEnemyAPosY1                    = $032C ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAPosY2                    = $032D ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyAProjectilePosY           = $032E ; [$032E-$0331]
;ram_032F                       = $032F ;
;ram_0330                       = $0330 ;
;ram_0331                       = $0331 ;
vEnemyAScreenPosX               = $0332 ; see below
vEnemyAScreenPosX1              = $0332 ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyAScreenPosX2              = $0333 ; The enemy position along the X axis relative to the screen (no repeat)
;ram_0334                       = $0334 ;
;ram_0335                       = $0335 ;
;ram_0336                       = $0336 ;
;ram_0337                       = $0337 ;
vPhenixPosXLow                  = $0338 ; see below
vEnemyAPosXLow                  = $0338 ; see below
vEnemyAPosXLow1                 = $0338 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAPosXLow2                 = $0339 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyAProjectilePosXLow        = $033A ; [$033A-$033D]
;ram_033B                       = $033B ;
;ram_033C                       = $033C ;
;ram_033D                       = $033D ;
vPhenixPosXHigh                 = $033E ; see below
vEnemyAPosXHigh                 = $033E ; see below
vEnemyAPosXHigh1                = $033E ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAPosXHigh2                = $033F ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyAProjectilePosXHigh       = $0340 ; [$0340-$0343]
;ram_0341                       = $0341 ;
;ram_0342                       = $0342 ;
;ram_0343                       = $0343 ;
vLiftCounter                    = $0344 ; range: [0x00, 0x7F], for $0345-$0346
vPhenixFrame_Counter            = $0344 ; see below
vEnemyAFrame_Counter            = $0344 ; see below
vEnemyAFrame_Counter1           = $0344 ; The frame index (the enemy number = 1)
vEnemyASpecSubCounter           = $0344 ; for last boss
vEnemyASpecSubCounter1          = $0344 ; for last boss
vEnemyAFrame_Counter2           = $0345 ; The frame index (the enemy number = 2)
vEnemyASpecSubCounter2          = $0345 ; for last boss
vEnemyAProjectileFrame_Counter  = $0346 ; [$0346-$0349]
;ram_0347                       = $0347 ;
;ram_0348                       = $0348 ;
;ram_0349                       = $0349 ;
vPhenixJumpCounter              = $034A ; see below
vEnemyAJumpCounter              = $034A ; see below (* bazooka man)
vEnemyAJumpCounter1             = $034A ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyAJumpCounter2             = $034B ; vJumpCounter analog for the enemy (the enemy number = 2)
vEnemyAProjectileJumpCounter    = $034C ; [$034C-$034F]
;ram_034D                       = $034D ;
;ram_034E                       = $034E ;
;ram_034F                       = $034F ;
vEnemyAHealthPoints             = $0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints1            = $0350 ; Only for the egyptian with a boomerung, nun
vEnemyAHealthPoints2            = $0351 ; Only for the egyptian with a boomerung, nun
;ram_0352                       = $0352 ;
;ram_0353                       = $0353 ;
;ram_0354                       = $0354 ;
;ram_0355                       = $0355 ;
vPhenixJumpType                 = $0356 ; see below
vEnemyAJumpType                 = $0356 ; see below
vEnemyAJumpType1                = $0356 ; vJumpType analog for the enemy (the enemy number = 1)
vEnemyAJumpType2                = $0357 ; vJumpType analog for the enemy (the enemy number = 2)
vEnemyAProjectileJumpType       = $0358 ; [$0358-$035B]
;ram_0359                       = $0359 ;
;ram_035A                       = $035A ;
;ram_035B                       = $035B ;
vEnemyBStatus                   = $035C ; see below and docs (Bestiary)
; 0x00 - None
; 0x01 - the direction (1 - on the left, 0 - on the right) 
; 0x20 - the enemy is dying (1 - true, 0 - false)
; 0x40 - the enemy can get damage (1 - true, 0 - false)
; 0x80 - The status is used (1 - true, 0 - false)
vEnemyBStatus1                  = $035C ;
vEnemyBStatus2                  = $035D ;
vEnemyBBombStatus               = $035E ; For the bird with the bomb
vEnemyBStatus3                  = $035E ; For Kim and last boss
vEnemyBStatus4                  = $035F ; For Kim and last boss
vEnemyBStatus5                  = $0360 ; For Kim
vEnemyBStatus6                  = $0361 ; For Kim
vEnemyBThrowingPower            = $0362 ; For Hulk
vButterflyRebound               = $0362 ; For Kim
; 0x05 - there was no rebound (the right direction)
; 0x0B - there was no rebound (the left direction)
; 0x03 - there was a rebound (the right direction)
; 0x0D - there was a rebound (the left direction)
vEnemyBThrowingDirection        = $0362 ; For Raid and the last boss
vEnemyBWallIndex                = $0362 ; For wall - the index of the table 'tbl_ptr_walls'
vEnemyBSoarFlags                = $0362 ; For soar enemies
; 0x80 - the enemy is armored
;ram_0363                       = $0363 ;
;ram_0364                       = $0364 ;
;ram_0365                       = $0365 ;
;ram_0366                       = $0366 ;
;ram_0367                       = $0367 ;
vEnemyBPosY                     = $0368 ; see below
vEnemyBPosY1                    = $0368 ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyBPosY2                    = $0369 ; The enemy position along the Y axis relative to the level (no repeat)
vEnemyBProjectilePosY           = $036A ; [$036A-$036D]
;ram_036B                       = $036B ;
;ram_036C                       = $036C ;
;ram_036D                       = $036D ;
vEnemyBScreenPosX               = $036E ; see below
vEnemyBScreenPosX1              = $036E ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyBScreenPosX2              = $036F ; The enemy position along the X axis relative to the screen (no repeat)
vEnemyBProjectileScreenPosY     = $0370 ; [$0370-$0373]
;ram_0371                       = $0371 ;
;ram_0372                       = $0372 ;
;ram_0373                       = $0373 ;
vEnemyBPosXLow                  = $0374 ; see below
vEnemyBPosXLow1                 = $0374 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBPosXLow2                 = $0375 ; The enemy position along the X axis relative to the level (with repeat)
vEnemyBProjectilePosXLow        = $0376 ; [$0376-$0379]
;ram_0377                       = $0377 ;
;ram_0378                       = $0378 ;
;ram_0379                       = $0379 ;
vEnemyBPosXHigh                 = $037A ; see below
vEnemyBPosXHigh1                = $037A ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyBPosXHigh2                = $037B ; The enemy position along the X axis relative to the level (in screen unit)
vEnemyBProjectilePosXHigh       = $037C ; [$037C-$037F]
;ram_037D                       = $037D ;
;ram_037E                       = $037E ;
;ram_037F                       = $037F ;
vEnemyBFrame_Counter            = $0380 ; see below
vEnemyBFrame_Counter1           = $0380 ; The frame index (the enemy number = 1)
vEnemyBFrame_Counter2           = $0381 ; The frame index (the enemy number = 2)
vEnemyBProjectileFrame_Counter  = $0382 ; [$0382-$0385]
;ram_0383                       = $0383 ;
;ram_0384                       = $0384 ;
;ram_0385                       = $0385 ;
vEnemyBJumpCounter              = $0386 ; see below
vEnemyBJumpCounter1             = $0386 ; vJumpCounter analog for the enemy (the enemy number = 1)
vEnemyBJumpCounter2             = $0387 ; vJumpCounter analog for the enemy (the enemy number = 2)
vEnemyBProjectileJumpCounter    = $0388 ; [$0388-$038B]
;ram_0389                       = $0389 ;
;ram_038A                       = $038A ;
;ram_038B                       = $038B ;
vEnemyBHealthPoints             = $038C ; Only for the gargoyle
vEnemyBHealthPoints1            = $038C ; Only for the gargoyle
vEnemyBHealthPoints2            = $038D ; Only for the gargoyle
;ram_038E                       = $038E ;
;ram_038F                       = $038F ;
;ram_0390                       = $0390 ;
;ram_0391                       = $0391 ;
vButterflyCircularFlightCounter = $0392 ; For Kim
vEnemyBJumpType                 = $0392 ; see below
vEnemyBJumpType1                = $0392 ; vJumpType analog for the enemy (the enemy number = 1)
vEnemyBJumpType2                = $0393 ; vJumpType analog for the enemy (the enemy number = 2)
;ram_0394                       = $0394 ;
;ram_0395                       = $0395 ;
;ram_0396                       = $0396 ;
;ram_0397                       = $0397 ;
vBombOnScreen                   = $0398 ; 0x00 - no exist, 0x01 - on screen
vBriefcaseIndex                 = $0398 ; [$0399-$039D] in vArrayWhiteBriefcase
; 0x00 - it is not used
;ram_0399                       = $0399 ;
;ram_039A                       = $039A ;
;ram_039B                       = $039B ;
;ram_039C                       = $039C ;
;ram_039D                       = $039D ;
vBombStatus                        = $039E ;
; 0x00 - none
; 0x02 - waiting for the explosion
; 0xC2 - a bomb is laying on screen
; 0xC0 - a bomb is exploding
vItemStatus                        = $039E ; [$039F-$03A3] - briefcase, $039E - screen
; For briefcase:
; 0x10 - the briefcase is hidden (0x01 - hidden, 0x00 - visible)
; 0x40 - the briefcase can get damage (0x01 - can, 0x00 - can not)
; 0x80 - The status is used (1 - true, 0 - false)
; ...
; 0xD0 - self item
; 0xE0 - disallow briefcase
;ram_039F                       = $039F ;
;ram_03A0                       = $03A0 ;
;ram_03A1                       = $03A1 ;
;ram_03A2                       = $03A2 ;
;ram_03A3                       = $03A3 ;
;ram_03A4                       = $03A4 ;
vBriefcaseHitCount              = $03A5 ; number of shots the briefcase must receive before it collapses {$03A5, $03A6, $03A7, $03A8, $03A9}
;ram_03A6                       = $03A6 ;
;ram_03A7                       = $03A7 ;
;ram_03A8                       = $03A8 ;
;ram_03A9                       = $03A9 ;
vItemPosY                       = $03AA ; [$03AB-$03AF] The item position in th water along the X axis relative to the screen (no repeat)
;ram_03AB                       = $03AB ;
;ram_03AC                       = $03AC ;
;ram_03AD                       = $03AD ;
;ram_03AE                       = $03AE ;
;ram_03AF                       = $03AF ;
vItemScreenPosX                 = $03B0 ; [$03B1-$03B5] The item or briefcase position along the X axis relative to the screen (no repeat)
;ram_03B1                       = $03B1 ;
;ram_03B2                       = $03B2 ;
;ram_03B3                       = $03B3 ;
;ram_03B4                       = $03B4 ;
;ram_03B5                       = $03B5 ;
vItemPosXLow                    = $03B6 ; [$03B7-$03BB] The item position in th water along the X axis relative to the level (with repeat)
;ram_03B7                       = $03B7 ;
;ram_03B8                       = $03B8 ;
;ram_03B9                       = $03B9 ;
;ram_03BA                       = $03BA ;
;ram_03BB                       = $03BB ;
vItemPosXHigh                   = $03BC ; [$03BD-$03C1] The item position in th water along the X axis relative to the level (in screen unit)
;ram_03BD                       = $03BD ;
;ram_03BE                       = $03BE ;
;ram_03BF                       = $03BF ;
;ram_03C0                       = $03C0 ;
;ram_03C1                       = $03C1 ;
;ram_03C2                       = $03C2 ;
;ram_03C3                       = $03C3 ;
;ram_03C4                       = $03C4 ;
;ram_03C5                       = $03C5 ;
;ram_03C6                       = $03C6 ;
;ram_03C7                       = $03C7 ;
vItemJumpCounter                = $03C8 ; [$03C9-$03CD]
;ram_03C9                       = $03C9 ;
;ram_03CA                       = $03CA ;
;ram_03CB                       = $03CB ;
;ram_03CC                       = $03CC ;
;ram_03CD                       = $03CD ;
;ram_03CE                       = $03CE ;
;ram_03CF                       = $03CF ;
;ram_03D0                       = $03D0 ;
;ram_03D1                       = $03D1 ;
;ram_03D2                       = $03D2 ;
;ram_03D3                       = $03D3 ;
vBubbleStatus                   = $03D4 ; [$03D4-$03D6]
; 0xC0 - the bubble is used
;ram_03D5                       = $03D5 ;
;ram_03D6                       = $03D6 ;
vBubbleScreenPosY               = $03D7 ; [$03D7-$03D9]
vCacheBossStatus                = $03D7 ; the cache is used after defeating the boss
vCacheBossScreenPosX            = $03D8 ; the cache is used after defeating the boss
;ram_03D9                       = $03D9 ;
;ram_03DA                       = $03DA ;
;ram_03DB                       = $03DB ;
;ram_03DC                       = $03DC ;
vBubblePosXLow                  = $03DD ; [$03DD-$03DF]
;ram_03DE                       = $03DE ;
;ram_03DF                       = $03DF ;
vBubblePosXHigh                 = $03E0 ; [$03E0-$03E2]
;ram_03E1                       = $03E1 ;
;ram_03E2                       = $03E2 ;
vBubbleJumpCounter              = $03E3 ; [$03E3-$03E5]
;ram_03E4                       = $03E4 ;
;ram_03E5                       = $03E5 ;
;ram_03E6                       = $03E6 ;
;ram_03E7                       = $03E7 ;
;ram_03E8                       = $03E8 ;
;ram_03E9                       = $03E9 ;
;ram_03EA                       = $03EA ;
;ram_03EB                       = $03EB ;
;ram_03EC                       = $03EC ;
;ram_03ED                       = $03ED ;
;ram_03EE                       = $03EE ;
;ram_03EF                       = $03EF ;
;ram_03F0                       = $03F0 ;
;ram_03F1                       = $03F1 ;
;ram_03F2                       = $03F2 ;
;ram_03F3                       = $03F3 ;
;ram_03F4                       = $03F4 ;
;ram_03F5                       = $03F5 ;
;ram_03F6                       = $03F6 ;
;ram_03F7                       = $03F7 ;
;ram_03F8                       = $03F8 ;
;ram_03F9                       = $03F9 ;
;ram_03FA                       = $03FA ;
;ram_03FB                       = $03FB ;
;ram_03FC                       = $03FC ;
;ram_03FD                       = $03FD ;
;ram_03FE                       = $03FE ;
;ram_03FF                       = $03FF ; 
vApuChannelStatus               = $0400 ; Secondary status flag for adjusting APU_STATUS during sound and music processing
vApuChannelProcessed            = $0401 ; 0x01 - pulse 1, 0x02 - pulse 2, 0x04 - triangle, 0x08 - noise
vCurrentApuChannel              = $0402 ; apu channel (0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise) for each sound row
vCurrentApuChannelFlag          = $0403 ; apu channel flags (0x00 - pulse 1, 0x01 - pulse 2, 0x82 - triangle, 0x43 - noise)
vSoundTempValue1                = $0404 ;
vSoundTempValue2                = $0405 ;
vSoundCounter                   = $0406 ;
vSoundNonUsed                   = $0407 ;
;ram_0408                       = $0408 ;
;ram_0409                       = $0409 ;
;ram_040A                       = $040A ;
;ram_040B                       = $040B ;
;ram_040C                       = $040C ;
;ram_040D                       = $040D ;
;ram_040E                       = $040E ;
;ram_040F                       = $040F ;
vSoundRowIndex                  = $0410 ;
vSoundRowComplexChannel         = $0411 ;
; SVVV 00CC
; S - 1 if the shaking effect is used
; V - the shaking effect index in tbl_B1AA_shaking_spread (Bank 2, Page 1)
; C - apu channel for the sound track (0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise)
vSoundRowTrackLow               = $0412 ; low address of the current track   
vSoundRowTrackHigh              = $0413 ; high address of the current track
vSoundRowFPPValue               = $0414 ; ppu frames per sound pair (FPP) in the sound track
vSoundRowFPPCounter             = $0415 ; ppu frames per sound pair (FPP) counter, i.e. counter for number of frames per sound instruction
vSoundRowMainChannelByte        = $0416 ; the current value for $4000 (pulse 1), $4004 (pulse 1), $4008 (triangle) or $400C (noise)
vSoundRowFPPLength              = $0417 ; length of sound row, affects FPP (see vSoundRowFPPCounter)
vSoundRowSweep                  = $0418 ;
vSoundRowMarkCacheNoReplay      = $0419 ; the sound row index for the replays
vSoundRowCacheNoReplay          = $041A ; the cache number of replays
vSoundRowVolumeDirection        = $041B ; It's the direction of distributions for the volume changes
vSoundRowVolumeChLength         = $041C ; length in FPP (see vSoundRowFPPCounter) utits for next sound rows, feature 'volume changes'
; Note: vSoundRowVolumeChLength is not cleared (may be bugs)
vSoundRowVolumeChCounter        = $041D ; 
vSoundRowVolumeIterCount        = $041E ; 
vSoundRowVolumeIterStep         = $041F ; 
vSoundRowVolumeIterCurrentStep  = $0420 ; 
vSoundRowTimerCorrection        = $0421 ; 
vSoundRowMarkForReplay          = $0422 ; 
vSoundRowShakingEfValue         = $0423 ; 
vSoundRowShakingEfCounter       = $0424 ; 

vRooms                          = $0500 ; the array of vRoomAttrubute
;ram_0501                       = $0501 ;
;ram_0502                       = $0502 ;
;ram_0503                       = $0503 ;
;ram_0504                       = $0504 ;
;ram_0505                       = $0505 ;
;ram_0506                       = $0506 ;
;ram_0507                       = $0507 ;
;ram_0508                       = $0508 ;
;ram_0509                       = $0509 ;
;ram_050A                       = $050A ;
;ram_050B                       = $050B ;
;ram_050C                       = $050C ;
;ram_050D                       = $050D ;
;ram_050E                       = $050E ;
;ram_050F                       = $050F ;
;ram_0510                       = $0510 ;
;ram_0511                       = $0511 ;
;ram_0512                       = $0512 ;
;ram_0513                       = $0513 ;
;ram_0514                       = $0514 ;
;ram_0515                       = $0515 ;
;ram_0516                       = $0516 ;
;ram_0517                       = $0517 ;
;ram_0518                       = $0518 ;
;ram_0519                       = $0519 ;
;ram_051A                       = $051A ;
;ram_051B                       = $051B ;
;ram_051C                       = $051C ;
;ram_051D                       = $051D ;
;ram_051E                       = $051E ;
;ram_051F                       = $051F ;
;ram_0520                       = $0520 ;
;ram_0521                       = $0521 ;
;ram_0522                       = $0522 ;
;ram_0523                       = $0523 ;
;ram_0524                       = $0524 ;
;ram_0525                       = $0525 ;
;ram_0526                       = $0526 ;
;ram_0527                       = $0527 ;
;ram_0528                       = $0528 ;
;ram_0529                       = $0529 ;
;ram_052A                       = $052A ;
;ram_052B                       = $052B ;
;ram_052C                       = $052C ;
;ram_052D                       = $052D ;
;ram_052E                       = $052E ;
;ram_052F                       = $052F ;
;ram_0530                       = $0530 ;
;ram_0531                       = $0531 ;
;ram_0532                       = $0532 ;
;ram_0533                       = $0533 ;
;ram_0534                       = $0534 ;
;ram_0535                       = $0535 ;
;ram_0536                       = $0536 ;
;ram_0537                       = $0537 ;
;ram_0538                       = $0538 ;
;ram_0539                       = $0539 ;
;ram_053A                       = $053A ;
;ram_053B                       = $053B ;
;ram_053C                       = $053C ;
;ram_053D                       = $053D ;
;ram_053E                       = $053E ;
;ram_053F                       = $053F ;
;ram_0540                       = $0540 ;
;ram_0541                       = $0541 ;
;ram_0542                       = $0542 ;
;ram_0543                       = $0543 ;
;ram_0544                       = $0544 ;
;ram_0545                       = $0545 ;
;ram_0546                       = $0546 ;
;ram_0547                       = $0547 ;
;ram_0548                       = $0548 ;
;ram_0549                       = $0549 ;
;ram_054A                       = $054A ;
;ram_054B                       = $054B ;
;ram_054C                       = $054C ;
;ram_054D                       = $054D ;
;ram_054E                       = $054E ;
;ram_054F                       = $054F ;
;ram_0550                       = $0550 ;
;ram_0551                       = $0551 ;
;ram_0552                       = $0552 ;
;ram_0553                       = $0553 ;
;ram_0554                       = $0554 ;
;ram_0555                       = $0555 ;
;ram_0556                       = $0556 ;
;ram_0557                       = $0557 ;
;ram_0558                       = $0558 ;
;ram_0559                       = $0559 ;
;ram_055A                       = $055A ;
;ram_055B                       = $055B ;
;ram_055C                       = $055C ;
;ram_055D                       = $055D ;
;ram_055E                       = $055E ;
;ram_055F                       = $055F ;
;ram_0560                       = $0560 ;
;ram_0561                       = $0561 ;
;ram_0562                       = $0562 ;
;ram_0563                       = $0563 ;
;ram_0564                       = $0564 ;
;ram_0565                       = $0565 ;
;ram_0566                       = $0566 ;
;ram_0567                       = $0567 ;
;ram_0568                       = $0568 ;
;ram_0569                       = $0569 ;
;ram_056A                       = $056A ;
;ram_056B                       = $056B ;
;ram_056C                       = $056C ;
;ram_056D                       = $056D ;
;ram_056E                       = $056E ;
;ram_056F                       = $056F ;
;ram_0570                       = $0570 ;
;ram_0571                       = $0571 ;
;ram_0572                       = $0572 ;
;ram_0573                       = $0573 ;
;ram_0574                       = $0574 ;
;ram_0575                       = $0575 ;
;ram_0576                       = $0576 ;
;ram_0577                       = $0577 ;
;ram_0578                       = $0578 ;
;ram_0579                       = $0579 ;
;ram_057A                       = $057A ;
;ram_057B                       = $057B ;
;ram_057C                       = $057C ;
;ram_057D                       = $057D ;
;ram_057E                       = $057E ;
;ram_057F                       = $057F ;
;ram_0580                       = $0580 ;
;ram_0581                       = $0581 ;
;ram_0582                       = $0582 ;
;ram_0583                       = $0583 ;
;ram_0584                       = $0584 ;
;ram_0585                       = $0585 ;
;ram_0586                       = $0586 ;
;ram_0587                       = $0587 ;
;ram_0588                       = $0588 ;
;ram_0589                       = $0589 ;
;ram_058A                       = $058A ;
;ram_058B                       = $058B ;
;ram_058C                       = $058C ;
;ram_058D                       = $058D ;
;ram_058E                       = $058E ;
;ram_058F                       = $058F ;
;ram_0590                       = $0590 ;
;ram_0591                       = $0591 ;
;ram_0592                       = $0592 ;
;ram_0593                       = $0593 ;
;ram_0594                       = $0594 ;
;ram_0595                       = $0595 ;
;ram_0596                       = $0596 ;
;ram_0597                       = $0597 ;
;ram_0598                       = $0598 ;
;ram_0599                       = $0599 ;
;ram_059A                       = $059A ;
;ram_059B                       = $059B ;
;ram_059C                       = $059C ;
;ram_059D                       = $059D ;
;ram_059E                       = $059E ;
;ram_059F                       = $059F ;
;ram_05A0                       = $05A0 ;
;ram_05A1                       = $05A1 ;
;ram_05A2                       = $05A2 ;
;ram_05A3                       = $05A3 ;
;ram_05A4                       = $05A4 ;
;ram_05A5                       = $05A5 ;
;ram_05A6                       = $05A6 ;
;ram_05A7                       = $05A7 ;
;ram_05A8                       = $05A8 ;
;ram_05A9                       = $05A9 ;
;ram_05AA                       = $05AA ;
;ram_05AB                       = $05AB ;
;ram_05AC                       = $05AC ;
;ram_05AD                       = $05AD ;
;ram_05AE                       = $05AE ;
;ram_05AF                       = $05AF ;
;ram_05B0                       = $05B0 ;
;ram_05B1                       = $05B1 ;
;ram_05B2                       = $05B2 ;
;ram_05B3                       = $05B3 ;
;ram_05B4                       = $05B4 ;
;ram_05B5                       = $05B5 ;
;ram_05B6                       = $05B6 ;
;ram_05B7                       = $05B7 ;
;ram_05B8                       = $05B8 ;
;ram_05B9                       = $05B9 ;
;ram_05BA                       = $05BA ;
;ram_05BB                       = $05BB ;
;ram_05BC                       = $05BC ;
;ram_05BD                       = $05BD ;
;ram_05BE                       = $05BE ;
;ram_05BF                       = $05BF ;
vWalls                          = $05C0 ; [$05C0-$05FF]
; flag 0xFF - the wall has already been destroyed
;ram_05C1                       = $05C1 ;
;ram_05C2                       = $05C2 ;
;ram_05C3                       = $05C3 ;
;ram_05C4                       = $05C4 ;
;ram_05C5                       = $05C5 ;
;ram_05C6                       = $05C6 ;
;ram_05C7                       = $05C7 ;
;ram_05C8                       = $05C8 ;
;ram_05C9                       = $05C9 ;
;ram_05CA                       = $05CA ;
;ram_05CB                       = $05CB ;
;ram_05CC                       = $05CC ;
;ram_05CD                       = $05CD ;
;ram_05CE                       = $05CE ;
;ram_05CF                       = $05CF ;
;ram_05D0                       = $05D0 ;
;ram_05D1                       = $05D1 ;
;ram_05D2                       = $05D2 ;
;ram_05D3                       = $05D3 ;
;ram_05D4                       = $05D4 ;
;ram_05D5                       = $05D5 ;
;ram_05D6                       = $05D6 ;
;ram_05D7                       = $05D7 ;
;ram_05D8                       = $05D8 ;
;ram_05D9                       = $05D9 ;
;ram_05DA                       = $05DA ;
;ram_05DB                       = $05DB ;
;ram_05DC                       = $05DC ;
;ram_05DD                       = $05DD ;
;ram_05DE                       = $05DE ;
;ram_05DF                       = $05DF ;
;ram_05E0                       = $05E0 ;
;ram_05E1                       = $05E1 ;
;ram_05E2                       = $05E2 ;
;ram_05E3                       = $05E3 ;
;ram_05E4                       = $05E4 ;
;ram_05E5                       = $05E5 ;
;ram_05E6                       = $05E6 ;
;ram_05E7                       = $05E7 ;
;ram_05E8                       = $05E8 ;
;ram_05E9                       = $05E9 ;
;ram_05EA                       = $05EA ;
;ram_05EB                       = $05EB ;
;ram_05EC                       = $05EC ;
;ram_05ED                       = $05ED ;
;ram_05EE                       = $05EE ;
;ram_05EF                       = $05EF ;
;ram_05F0                       = $05F0 ;
;ram_05F1                       = $05F1 ;
;ram_05F2                       = $05F2 ;
;ram_05F3                       = $05F3 ;
;ram_05F4                       = $05F4 ;
;ram_05F5                       = $05F5 ;
;ram_05F6                       = $05F6 ;
;ram_05F7                       = $05F7 ;
;ram_05F8                       = $05F8 ;
;ram_05F9                       = $05F9 ;
;ram_05FA                       = $05FA ;
;ram_05FB                       = $05FB ;
;ram_05FC                       = $05FC ;
;ram_05FD                       = $05FD ;
;ram_05FE                       = $05FE ;
;ram_05FF                       = $05FF ;
vCachePalette                   = $0600 ; [$0600 - $061F]
;ram_0601                       = $0601 ;
;ram_0602                       = $0602 ;
;ram_0603                       = $0603 ;
;ram_0604                       = $0604 ;
;ram_0605                       = $0605 ;
;ram_0606                       = $0606 ;
;ram_0607                       = $0607 ;
;ram_0608                       = $0608 ;
;ram_0609                       = $0609 ;
;ram_060A                       = $060A ;
;ram_060B                       = $060B ;
;ram_060C                       = $060C ;
;ram_060D                       = $060D ;
;ram_060E                       = $060E ;
;ram_060F                       = $060F ;
;ram_0610                       = $0610 ;
;ram_0611                       = $0611 ;
;ram_0612                       = $0612 ;
;ram_0613                       = $0613 ;
;ram_0614                       = $0614 ;
;ram_0615                       = $0615 ;
;ram_0616                       = $0616 ;
;ram_0617                       = $0617 ;
;ram_0618                       = $0618 ;
;ram_0619                       = $0619 ;
;ram_061A                       = $061A ;
;ram_061B                       = $061B ;
;ram_061C                       = $061C ;
;ram_061D                       = $061D ;
;ram_061E                       = $061E ;
;ram_061F                       = $061F ;
vTempCachePalette               = $0620 ; [$0620-$062B], for the bomb explosion animation
;ram_0621                       = $0621 ;
;ram_0622                       = $0622 ;
;ram_0623                       = $0623 ;
;ram_0624                       = $0624 ;
;ram_0625                       = $0625 ;
;ram_0626                       = $0626 ;
;ram_0627                       = $0627 ;
;ram_0628                       = $0628 ;
;ram_0629                       = $0629 ;
;ram_062A                       = $062A ;
;ram_062B                       = $062B ;

vLowPpuAddress                  = $0630 ;
vHighPpuAddress                 = $0631 ;
vPpuBufferCount                 = $0632 ;
vPpuBufferData                  = $0633 ;
vNonUsed634                     = $0634 ;
;ram_0635                       = $0635 ;
;ram_0636                       = $0636 ;
;ram_0637                       = $0637 ;
;ram_0638                       = $0638 ;
;ram_0639                       = $0639 ;
;ram_063A                       = $063A ;
;ram_063B                       = $063B ;
;ram_063C                       = $063C ;
;ram_063D                       = $063D ;
;ram_063E                       = $063E ;
;ram_063F                       = $063F ;
;ram_0640                       = $0640 ;
;ram_0641                       = $0641 ;
;ram_0642                       = $0642 ;
;ram_0643                       = $0643 ;
;ram_0644                       = $0644 ;
;ram_0645                       = $0645 ;
;ram_0646                       = $0646 ;
;ram_0647                       = $0647 ;
;ram_0648                       = $0648 ;
;ram_0649                       = $0649 ;
;ram_064A                       = $064A ;
;ram_064B                       = $064B ;
;ram_064C                       = $064C ;
;ram_064D                       = $064D ;
;ram_064E                       = $064E ;
;ram_064F                       = $064F ;
;ram_0650                       = $0650 ;
;ram_0651                       = $0651 ;
;ram_0652                       = $0652 ;
;ram_0653                       = $0653 ;
;ram_0654                       = $0654 ;
;ram_0655                       = $0655 ;
;ram_0656                       = $0656 ;
;ram_0657                       = $0657 ;
;ram_0658                       = $0658 ;
;ram_0659                       = $0659 ;
;ram_065A                       = $065A ;
;ram_065B                       = $065B ;
;ram_065C                       = $065C ;
;ram_065D                       = $065D ;
;ram_065E                       = $065E ;
;ram_065F                       = $065F ;
;ram_0660                       = $0660 ;
;ram_0661                       = $0661 ;
;ram_0662                       = $0662 ;
;ram_0663                       = $0663 ;
;ram_0664                       = $0664 ;
;ram_0665                       = $0665 ;
;ram_0666                       = $0666 ;
;ram_0667                       = $0667 ;
;ram_0668                       = $0668 ;
;ram_0669                       = $0669 ;
;ram_066A                       = $066A ;
;ram_066B                       = $066B ;
;ram_066C                       = $066C ;
;ram_066D                       = $066D ;
;ram_066E                       = $066E ;
;ram_066F                       = $066F ;
;ram_0670                       = $0670 ;
;ram_0671                       = $0671 ;
;ram_0672                       = $0672 ;
;ram_0673                       = $0673 ;
;ram_0674                       = $0674 ;
;ram_0675                       = $0675 ;
;ram_0676                       = $0676 ;
;ram_0677                       = $0677 ;
;ram_0678                       = $0678 ;
;ram_0679                       = $0679 ;
;ram_067A                       = $067A ;
vPpuAddrDataCache               = $067B ; [$067B-$06AC]
; 1st - count (N)
; 2nd + 3rd - ppu address
; next Nth byte - ppu data
; next repeat
;ram_067C                       = $067C ;
;ram_067D                       = $067D ;
;ram_067E                       = $067E ;
;ram_067F                       = $067F ;
;ram_0680                       = $0680 ;
;ram_0681                       = $0681 ;
;ram_0682                       = $0682 ;
;ram_0683                       = $0683 ;
;ram_0684                       = $0684 ;
;ram_0685                       = $0685 ;
;ram_0686                       = $0686 ;
;ram_0687                       = $0687 ;
;ram_0688                       = $0688 ;
;ram_0689                       = $0689 ;
;ram_068A                       = $068A ;
;ram_068B                       = $068B ;
;ram_068C                       = $068C ;
;ram_068D                       = $068D ;
;ram_068E                       = $068E ;
;ram_068F                       = $068F ;
;ram_0690                       = $0690 ;
;ram_0691                       = $0691 ;
;ram_0692                       = $0692 ;
;ram_0693                       = $0693 ;
;ram_0694                       = $0694 ;
;ram_0695                       = $0695 ;
;ram_0696                       = $0696 ;
;ram_0697                       = $0697 ;
;ram_0698                       = $0698 ;
;ram_0699                       = $0699 ;
;ram_069A                       = $069A ;
;ram_069B                       = $069B ;
;ram_069C                       = $069C ;
;ram_069D                       = $069D ;
;ram_069E                       = $069E ;
;ram_069F                       = $069F ;
;ram_06A0                       = $06A0 ;
;ram_06A1                       = $06A1 ;
;ram_06A2                       = $06A2 ;
;ram_06A3                       = $06A3 ;
;ram_06A4                       = $06A4 ;
;ram_06A5                       = $06A5 ;
;ram_06A6                       = $06A6 ;
;ram_06A7                       = $06A7 ;
;ram_06A8                       = $06A8 ;
;ram_06A9                       = $06A9 ;
;ram_06AA                       = $06AA ;
;ram_06AB                       = $06AB ;
;ram_06AC                       = $06AC ;
;ram_06AD                       = $06AD ;
;ram_06AE                       = $06AE ;
vCacheChrBankSelect             = $06AF ; [$06AF - $06B4]
;ram_06B0                       = $06B0 ;
;ram_06B1                       = $06B1 ;
;ram_06B2                       = $06B2 ;
;ram_06B3                       = $06B3 ;
;ram_06B4                       = $06B4 ;
vBankData                       = $06B5 ; A number of PRG-bank data (MMC3)
vChrBankData                    = $06B6 ;
vSpriteMagics                   = $06B7 ;
vSpriteMagic1                   = $06B7 ; Y-position, 0xF0 - a sprite doesn't exist
vSpriteMagic2                   = $06B8 ; The offset by the address SS (see vSpriteMagic3)
vSpriteMagic3                   = $06B9 ;
; SSBB XCOO
; SS - the offset of the high address ($8000), i.e. $8000 + $(0%000000SS 0%00000000)
; BB - 0x00 - bank 05 (2 page), 0x01 - bank 02 (2 page), 0x1X - bank 05 (1 page)
; C  -  0x1 - usign next CHR-page size 1 Kb, 0x0 - using current CHR-page
; OO - OAM-attributes
vSpriteMagic4                   = $06BA ; X-position
;ram_06BB                       = $06BB ;
;ram_06BC                       = $06BC ;
;ram_06BD                       = $06BD ;
;ram_06BE                       = $06BE ;
;ram_06BF                       = $06BF ;
;ram_06C0                       = $06C0 ;
;ram_06C1                       = $06C1 ;
;ram_06C2                       = $06C2 ;
;ram_06C3                       = $06C3 ;
;ram_06C4                       = $06C4 ;
;ram_06C5                       = $06C5 ;
;ram_06C6                       = $06C6 ;
;ram_06C7                       = $06C7 ;
;ram_06C8                       = $06C8 ;
;ram_06C9                       = $06C9 ;
;ram_06CA                       = $06CA ;
;ram_06CB                       = $06CB ;
;ram_06CC                       = $06CC ;
;ram_06CD                       = $06CD ;
;ram_06CE                       = $06CE ;
;ram_06CF                       = $06CF ;
;ram_06D0                       = $06D0 ;
;ram_06D1                       = $06D1 ;
;ram_06D2                       = $06D2 ;
;ram_06D3                       = $06D3 ;
;ram_06D4                       = $06D4 ;
;ram_06D5                       = $06D5 ;
;ram_06D6                       = $06D6 ;
;ram_06D7                       = $06D7 ;
;ram_06D8                       = $06D8 ;
;ram_06D9                       = $06D9 ;
;ram_06DA                       = $06DA ;
;ram_06DB                       = $06DB ;
;ram_06DC                       = $06DC ;
;ram_06DD                       = $06DD ;
;ram_06DE                       = $06DE ;
;ram_06DF                       = $06DF ;
;ram_06E0                       = $06E0 ;
;ram_06E1                       = $06E1 ;
;ram_06E2                       = $06E2 ;
;ram_06E3                       = $06E3 ;
;ram_06E4                       = $06E4 ;
;ram_06E5                       = $06E5 ;
;ram_06E6                       = $06E6 ;
;ram_06E7                       = $06E7 ;
;ram_06E8                       = $06E8 ;
;ram_06E9                       = $06E9 ;
;ram_06EA                       = $06EA ;
;ram_06EB                       = $06EB ;
;ram_06EC                       = $06EC ;
;ram_06ED                       = $06ED ;
;ram_06EE                       = $06EE ;
;ram_06EF                       = $06EF ;
;ram_06F0                       = $06F0 ;
;ram_06F1                       = $06F1 ;
;ram_06F2                       = $06F2 ;
;ram_06F3                       = $06F3 ;
;ram_06F4                       = $06F4 ;
;ram_06F5                       = $06F5 ;
;ram_06F6                       = $06F6 ;
vShiftSpriteMagic               = $06F7 ; The pack is using 1,2,3,4 sprite magic
;ram_06F8                       = $06F8 ;
;ram_06F9                       = $06F9 ;
;ram_06FA                       = $06FA ;
;ram_06FB                       = $06FB ;
;ram_06FC                       = $06FC ;
;ram_06FD                       = $06FD ;
;ram_06FE                       = $06FE ;
;ram_06FF                       = $06FF ;
vStartOAM                       = $0700 ;
vStartOAM_2b                    = $0701 ; 2nd byte
vStartOAM_3b                    = $0702 ; 3rd byte
vStartOAM_4b                    = $0703 ; 4th byte
vOAM_2                          = $0704 ;
vOAM_2_2b                       = $0705 ; 2nd byte
vOAM_2_3b                       = $0706 ; 3rd byte
vOAM_2_4b                       = $0707 ; 4th byte
vOAM_3                          = $0708 ;
vOAM_3_2b                       = $0709 ; 2nd byte
vOAM_3_3b                       = $070A ; 3rd byte
vOAM_3_4b                       = $070B ; 4th byte
;ram_070C                       = $070C ;
;ram_070D                       = $070D ;
;ram_070E                       = $070E ;
;ram_070F                       = $070F ;
;ram_0710                       = $0710 ;
;ram_0711                       = $0711 ;
;ram_0712                       = $0712 ;
;ram_0713                       = $0713 ;
;ram_0714                       = $0714 ;
;ram_0715                       = $0715 ;
;ram_0716                       = $0716 ;
;ram_0717                       = $0717 ;
;ram_0718                       = $0718 ;
;ram_0719                       = $0719 ;
;ram_071A                       = $071A ;
;ram_071B                       = $071B ;
;ram_071C                       = $071C ;
;ram_071D                       = $071D ;
;ram_071E                       = $071E ;
;ram_071F                       = $071F ;
;ram_0720                       = $0720 ;
;ram_0721                       = $0721 ;
;ram_0722                       = $0722 ;
;ram_0723                       = $0723 ;
;ram_0724                       = $0724 ;
;ram_0725                       = $0725 ;
;ram_0726                       = $0726 ;
;ram_0727                       = $0727 ;
;ram_0728                       = $0728 ;
;ram_0729                       = $0729 ;
;ram_072A                       = $072A ;
;ram_072B                       = $072B ;
;ram_072C                       = $072C ;
;ram_072D                       = $072D ;
;ram_072E                       = $072E ;
;ram_072F                       = $072F ;
;ram_0730                       = $0730 ;
;ram_0731                       = $0731 ;
;ram_0732                       = $0732 ;
;ram_0733                       = $0733 ;
;ram_0734                       = $0734 ;
;ram_0735                       = $0735 ;
;ram_0736                       = $0736 ;
;ram_0737                       = $0737 ;
;ram_0738                       = $0738 ;
;ram_0739                       = $0739 ;
;ram_073A                       = $073A ;
;ram_073B                       = $073B ;
;ram_073C                       = $073C ;
;ram_073D                       = $073D ;
;ram_073E                       = $073E ;
;ram_073F                       = $073F ;
;ram_0740                       = $0740 ;
;ram_0741                       = $0741 ;
;ram_0742                       = $0742 ;
;ram_0743                       = $0743 ;
;ram_0744                       = $0744 ;
;ram_0745                       = $0745 ;
;ram_0746                       = $0746 ;
;ram_0747                       = $0747 ;
;ram_0748                       = $0748 ;
;ram_0749                       = $0749 ;
;ram_074A                       = $074A ;
;ram_074B                       = $074B ;
;ram_074C                       = $074C ;
;ram_074D                       = $074D ;
;ram_074E                       = $074E ;
;ram_074F                       = $074F ;
;ram_0750                       = $0750 ;
;ram_0751                       = $0751 ;
;ram_0752                       = $0752 ;
;ram_0753                       = $0753 ;
;ram_0754                       = $0754 ;
;ram_0755                       = $0755 ;
;ram_0756                       = $0756 ;
;ram_0757                       = $0757 ;
;ram_0758                       = $0758 ;
;ram_0759                       = $0759 ;
;ram_075A                       = $075A ;
;ram_075B                       = $075B ;
;ram_075C                       = $075C ;
;ram_075D                       = $075D ;
;ram_075E                       = $075E ;
;ram_075F                       = $075F ;
;ram_0760                       = $0760 ;
;ram_0761                       = $0761 ;
;ram_0762                       = $0762 ;
;ram_0763                       = $0763 ;
;ram_0764                       = $0764 ;
;ram_0765                       = $0765 ;
;ram_0766                       = $0766 ;
;ram_0767                       = $0767 ;
;ram_0768                       = $0768 ;
;ram_0769                       = $0769 ;
;ram_076A                       = $076A ;
;ram_076B                       = $076B ;
;ram_076C                       = $076C ;
;ram_076D                       = $076D ;
;ram_076E                       = $076E ;
;ram_076F                       = $076F ;
;ram_0770                       = $0770 ;
;ram_0771                       = $0771 ;
;ram_0772                       = $0772 ;
;ram_0773                       = $0773 ;
;ram_0774                       = $0774 ;
;ram_0775                       = $0775 ;
;ram_0776                       = $0776 ;
;ram_0777                       = $0777 ;
;ram_0778                       = $0778 ;
;ram_0779                       = $0779 ;
;ram_077A                       = $077A ;
;ram_077B                       = $077B ;
;ram_077C                       = $077C ;
;ram_077D                       = $077D ;
;ram_077E                       = $077E ;
;ram_077F                       = $077F ;
;ram_0780                       = $0780 ;
;ram_0781                       = $0781 ;
;ram_0782                       = $0782 ;
;ram_0783                       = $0783 ;
;ram_0784                       = $0784 ;
;ram_0785                       = $0785 ;
;ram_0786                       = $0786 ;
;ram_0787                       = $0787 ;
;ram_0788                       = $0788 ;
;ram_0789                       = $0789 ;
;ram_078A                       = $078A ;
;ram_078B                       = $078B ;
;ram_078C                       = $078C ;
;ram_078D                       = $078D ;
;ram_078E                       = $078E ;
;ram_078F                       = $078F ;
;ram_0790                       = $0790 ;
;ram_0791                       = $0791 ;
;ram_0792                       = $0792 ;
;ram_0793                       = $0793 ;
;ram_0794                       = $0794 ;
;ram_0795                       = $0795 ;
;ram_0796                       = $0796 ;
;ram_0797                       = $0797 ;
;ram_0798                       = $0798 ;
;ram_0799                       = $0799 ;
;ram_079A                       = $079A ;
;ram_079B                       = $079B ;
;ram_079C                       = $079C ;
;ram_079D                       = $079D ;
;ram_079E                       = $079E ;
;ram_079F                       = $079F ;
;ram_07A0                       = $07A0 ;
;ram_07A1                       = $07A1 ;
;ram_07A2                       = $07A2 ;
;ram_07A3                       = $07A3 ;
;ram_07A4                       = $07A4 ;
;ram_07A5                       = $07A5 ;
;ram_07A6                       = $07A6 ;
;ram_07A7                       = $07A7 ;
;ram_07A8                       = $07A8 ;
;ram_07A9                       = $07A9 ;
;ram_07AA                       = $07AA ;
;ram_07AB                       = $07AB ;
;ram_07AC                       = $07AC ;
;ram_07AD                       = $07AD ;
;ram_07AE                       = $07AE ;
;ram_07AF                       = $07AF ;
;ram_07B0                       = $07B0 ;
;ram_07B1                       = $07B1 ;
;ram_07B2                       = $07B2 ;
;ram_07B3                       = $07B3 ;
;ram_07B4                       = $07B4 ;
;ram_07B5                       = $07B5 ;
;ram_07B6                       = $07B6 ;
;ram_07B7                       = $07B7 ;
;ram_07B8                       = $07B8 ;
;ram_07B9                       = $07B9 ;
;ram_07BA                       = $07BA ;
;ram_07BB                       = $07BB ;
;ram_07BC                       = $07BC ;
;ram_07BD                       = $07BD ;
;ram_07BE                       = $07BE ;
;ram_07BF                       = $07BF ;
;ram_07C0                       = $07C0 ;
;ram_07C1                       = $07C1 ;
;ram_07C2                       = $07C2 ;
;ram_07C3                       = $07C3 ;
;ram_07C4                       = $07C4 ;
;ram_07C5                       = $07C5 ;
;ram_07C6                       = $07C6 ;
;ram_07C7                       = $07C7 ;
;ram_07C8                       = $07C8 ;
;ram_07C9                       = $07C9 ;
;ram_07CA                       = $07CA ;
;ram_07CB                       = $07CB ;
;ram_07CC                       = $07CC ;
;ram_07CD                       = $07CD ;
;ram_07CE                       = $07CE ;
;ram_07CF                       = $07CF ;
;ram_07D0                       = $07D0 ;
;ram_07D1                       = $07D1 ;
;ram_07D2                       = $07D2 ;
;ram_07D3                       = $07D3 ;
;ram_07D4                       = $07D4 ;
;ram_07D5                       = $07D5 ;
;ram_07D6                       = $07D6 ;
;ram_07D7                       = $07D7 ;
;ram_07D8                       = $07D8 ;
;ram_07D9                       = $07D9 ;
;ram_07DA                       = $07DA ;
;ram_07DB                       = $07DB ;
;ram_07DC                       = $07DC ;
;ram_07DD                       = $07DD ;
;ram_07DE                       = $07DE ;
;ram_07DF                       = $07DF ;
;ram_07E0                       = $07E0 ;
;ram_07E1                       = $07E1 ;
;ram_07E2                       = $07E2 ;
;ram_07E3                       = $07E3 ;
;ram_07E4                       = $07E4 ;
;ram_07E5                       = $07E5 ;
;ram_07E6                       = $07E6 ;
;ram_07E7                       = $07E7 ;
;ram_07E8                       = $07E8 ;
;ram_07E9                       = $07E9 ;
;ram_07EA                       = $07EA ;
;ram_07EB                       = $07EB ;
;ram_07EC                       = $07EC ;
;ram_07ED                       = $07ED ;
;ram_07EE                       = $07EE ;
;ram_07EF                       = $07EF ;
;ram_07F0                       = $07F0 ;
;ram_07F1                       = $07F1 ;
;ram_07F2                       = $07F2 ;
;ram_07F3                       = $07F3 ;
;ram_07F4                       = $07F4 ;
;ram_07F5                       = $07F5 ;
;ram_07F6                       = $07F6 ;
;ram_07F7                       = $07F7 ;
;ram_07F8                       = $07F8 ;
;ram_07F9                       = $07F9 ;
;ram_07FA                       = $07FA ;
;ram_07FB                       = $07FB ;
;ram_07FC                       = $07FC ;
;ram_07FD                       = $07FD ;
;ram_07FE                       = $07FE ;
;ram_07FF                       = $07FF ;
