; Contants

MMC3_Bank_select    = $8000 ; see https://www.nesdev.org/wiki/MMC3
MMC3_Bank_data      = $8001 ;
Set_features        = $FFF6 ;

PPU_CTRL     = $2000
PPU_MASK     = $2001
PPU_STATUS   = $2002 ; (R)
PPU_OAM_ADDR = $2003
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

v_CE5A_counter           = ram_0005
v_temp_check_buttons     = ram_0012 ; There is a variable that stores the checked state of the button
v_sub_AF4D_counter       = ram_001A ; Intermediate counter
v_btn_pressed_in_game    = ram_001C ; In a level 1-4 or a title screen
v_copy_001C              = ram_001D
v_player1_btn_pressed    = ram_001E ; For a contoller1
v_player2_btn_pressed    = ram_001F ; For a contoller2
v_last_p2_btn_pressed    = ram_0020 ; It's the previouse value for a contoller2 (the state of the buttons)
v_last_p1_btn_pressed    = ram_0021 ; It's the previouse value for a contoller1 (the state of the buttons)
v_nmi_counter            = ram_002B
v_menu_counter           = ram_0033
v_menu_counter_times     = ram_0034
v_game_mode              = ram_0037 ; 0x00 - in game, 0xFF - Starting cutscenes
v_resists                = ram_003A ; TODO: !!!, 0x80 - The enemies don't damage
v_temp_bank_data         = ram_0045 ; 
v_no_level               = ram_005E ; It is a number of a level than it starts with 0.
v_start_level            = ram_00B1 ; The start level [0-3]
v_count_secret_hits      = ram_00B2 ; Stage select codes at the title screen
v_lock_secret_hits       = ram_00B3 ; Allow button to be pressed only when other buttons aren't pressed
v_offset_in_secret_codes = ram_00B4
v_last_level             = ram_0109 ; It is a last played level.
v_bomb_on_screen         = ram_039E
v_bank_data              = ram_06B5
v_array_white_briefcase  = ram_0219
v_enemies                = ram_0300
v_enemyA                 = ram_0300
v_enemyB                 = ram_0301
v_item_on_screen         = ram_039E ; [039F-03A3] - briefcase, C0 - briefcase, D0 - self item
v_sound_counter          = ram_0406
v_start_OAM              = ram_0700
v_start_OAM_2b           = ram_0701 ; 2nd byte
v_start_OAM_3b           = ram_0702 ; 3rd byte
v_start_OAM_4b           = ram_0703 ; 4th byte
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
