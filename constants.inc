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

v_CF76_counter                = ram_0005
v_CE5A_counter                = ram_0005
v_cache_reg_y                 = ram_0011
v_temp_check_buttons          = ram_0012 ; There is a variable that stores the checked state of the button
v_temp_counter12              = ram_0012
v_sub_AF4D_counter            = ram_001A ; Intermediate counter
v_btn_pressed_in_game         = ram_001C ; In a level 1-4 or a title screen
v_copy_001C                   = ram_001D
v_player1_btn_pressed         = ram_001E ; For a contoller1
v_player2_btn_pressed         = ram_001F ; For a contoller2
v_last_p2_btn_pressed         = ram_0020 ; It's the previouse value for a contoller2 (the state of the buttons)
v_last_p1_btn_pressed         = ram_0021 ; It's the previouse value for a contoller1 (the state of the buttons)
v_chr_pos_x                   = ram_0027 ; In level it's the position of the character along the x-axis relative to the screen (may repeat)
v_nmi_counter                 = ram_002B
v_low_counter                 = ram_002C
v_high_counter                = ram_002D
v_menu_counter                = ram_0033
v_menu_counter_times          = ram_0034
v_game_mode                   = ram_0037 ; 0x00 - in game, 0xFF - Starting cutscenes
v_resists                     = ram_003A ; TODO: !!!, 0x80 - The enemies don't damage
v_npc_message_status          = ram_0041
v_current_number_sprite       = ram_0043
v_copy_current_number_sprite  = ram_0044
v_temp_bank_data              = ram_0045 ; 
v_no_sub_level                = ram_0046
; 0x00 - level 1.0
; 0x03 - level 1.1
; 0x04 - level 1.2
; 0x05 - level 1.3
; 0x06 - level 2 (outside)
; 0x07 - level 2 (1-3)
; 0x08 - level 2 (2)
; 0x09 - level 2 (4-5)
; 0x0A - level 2 (6-8)
; 0x0B - level 2 (7)
; 0x0C - level 2 (9-10)
; 0x0D - level 2 (11-13)
; 0x0E - level 2 (12)
; 0x0F - level 3.0
; 0x10 - level 3.1
; 0x11 - level 3.2
; 0x12 - level 3.3
; 0x13 - level 3.4
; 0x14 - boss of level 4
; ....
; 0x19 - level racing
; 0x1A - ending cutscene + select of a character before level 2
; 0x1C - ending cutscene + select of a character before level 3
; 0x1D - ending cutscene + select of a character before level 4 (racing)
; 0x1F - boss of level 1
; ...
; 0x21 - boss of level 2
; 0x22 - boss of level 3
; ...
;
; Map 1
;
;       A    B    C    D
;
;   @@@@@@@@@@@@@@@@@@@@@@@@
;   @@@&&&&&&&&&&&&&&&&&&&@@
; 0 @@@                   @@
;   @@@   @@@@@@@@  @@@   @@
; 1 @@@   @@        @@@   @@
;   @@@   @@   @@@  @@@   @@
; 2 @@@   @@    -         @@
;   @@@   @@   @@@@@@@@   @@
; 3 @@@                   @@
;   @@@ | @@@@@@@@@@@@@@@@@@
;
; 0x42 - level 4, map 1 (B2-D2)
; 0x43 - level 4, map 1 (C0-C2)
; 0x44 - level 4, map 1 (B1-C1)
; 0x45 - level 4, map 1 (B1-B3)
; 0x46 - level 4, map 1 (A3-D3)
; 0x47 - level 4, map 1 (D0-D3)
; 0x48 - level 4, map 1 (A0-D0)
; 0x49 - level 4, map 1 (A0-A3)
;
; Map 2
;
;       A      B      C    D     E     F
; 
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; 0 @@@                                  @@@
;   @@@   .@@@@@@@@@@@@@@@@@@@@@   @@@   @@@
; 1 @@@   .@@@                           @@@
;   @@@   .@@@   @@@@@@@@@@@@@@@   @@@   @@@
;   @@@   .@@@   @@@@@@@@@@@@@@@   @@@   @@@
; 2 @@@   .@@@   @@@    |    @@@   @@@   @@@
; 3 @@@     @@   @@@   @@@   @@@   @@@   @@@
; 4 @@@   .@@@               @@@   @@@   @@@
;   @@@   .@@@   @@@@@@@@@@@@@@@   @@@   @@@
;   @@@   .@@@   @@@@@@@@@@@@@@@   @@@   @@@
; 5 @@@   .@@@                     @@@   @@@
;   @@@   .@@@@@@@@@@@@@@@@@@@@@   @@@   @@@
; 6 @@@                                  @@@
;   @@@ - .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
;
; 0x4A - level 4, map 2 (A0-A6)
; 0x4B - level 4, map 2 (A6-F6)
; 0x4C - level 4, map 2 (F0-F6)
; 0x4D - level 4, map 2 (A0-F0)
; 0x4E - level 4, map 2 (B1-B5)
; 0x4F - level 4, map 2 (A3-A3)
; 0x50 - level 4, map 2 (B5-E5)
; 0x51 - level 4, map 2 (E0-E6)
; 0x52 - level 4, map 2 (B1-F1)
; 0x53 - level 4, map 2 (C2-C4)
; 0x54 - level 4, map 2 (B4-D4)
; 0x55 - level 4, map 2 (D2-D4)
; 0x56 - level 4, map 2 (C2-D2)
;
; Map 3
;
;        A      B      C      D       E     F      G      H
;  
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; 0  |                                                       @@@
;   @@@@   %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@
;   @@@@   %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@
; 1 @@@@   %@@@                                       @@@    @@@
;   @@@@   %@@@   /@@@   .@@@@@@@@@@@@@@@@@@@@@@@@    @@@    @@@
;   @@@@   %@@@   /@@@   .%%%%%%%%/%%%%%%%%%%%%%%%    @@@    @@@
; 2 @@@@   %@@@   /@@@            /                   @@@    @@@
;   @@@@   %@@@   /@@@   .@@@@@@@@@@@@@@@@@    @@@    @@@    @@@
; 3 @@@@   %@@@////@@@   .@             @@@    @@@    @@@    @@@
;   @@@@   %@@@////@@@   .@       -     @@@    @@@    @@@    @@@
;   @@@@   %@@@////@@@   .@@@    @@@    @@@    @@@    @@@    @@@
; 4 @@@@   %@@@////@@@   .@@@                  @@@    @@@    @@@
;   @@@@   %@@@////@@@   .@@@                  @@@    @@@    @@@
;   @@@@   %@@@   /@@@   .@@@    @@@@@@@@@@    @@@    @@@    @@@
; 5 @@@@   %@@@   /@@@                         @@@    @@@    @@@
;   @@@@   %@@@   /@@@   .@@@@@@@@@@@@@@@@@@@@@@@@    @@@    @@@
;   @@@@   %@@@   /@@@   .@@@@@@@@@@@@@@@@@@@@@@@@    @@@    @@@
; 6 @@@@   %@@@                                       @@@    @@@
;   @@@@   %@@@   /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@
;   @@@@   %@@@   /@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@
; 7 @@@@                                                     @@@
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;
; 0x57 - level 4, map 3 (D3-E3)
; 0x58 - level 4, map 3 (D3-D5)
; 0x59 - level 4, map 3 (D4-F4)
; 0x5A - level 4, map 3 (E3-E4)
; 0x5B - level 4, map 3 (C2-G2)
; 0x5C - level 4, map 3 (C1-C6)
; 0x5D - level 4, map 3 (C5-F5)
; 0x5E - level 4, map 3 (F2-F5)
; 0x5F - level 4, map 3 (B1-G1)
; 0x60 - level 4, map 3 (B1-B7)
; 0x61 - level 4, map 3 (B6-G6)
; 0x62 - level 4, map 3 (G1-G6)
; 0x63 - level 4, map 3 (A0-H0)
; 0x64 - level 4, map 3 (A0-A7)
; 0x65 - level 4, map 3 (A7-H7)
; 0x66 - level 4, map 3 (H0-H7)
;
; Map 4
;
;        A        B      C      D      E       F       G       H      I       J
;  
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
; 0   -                                                                         .@@@
;   ((((    (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((   .@@@
;   @@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   .@@@
; 1 @@@@    @@@@                                                         @@@@   .@@@
;   @@@@    @@@@                                                         @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@   .@@@
; 2 @@@@    @@@@    @@@,                  (@@@@@@@@@@@                   @@@@   .@@@
;   @@@@    @@@@    @@@,                  (@@@@@@@@@@@                   @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@#   @@@@    @@@@   .@@@
; 3 @@@@    @@@@    @@@,   @@@@                           @@@#   @@@@    @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@                           @@@#   @@@@    @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@   (@@@@@@@@@@@    @@@#   @@@@    @@@@   .@@@
; 4 @@@@    @@@@    @@@,   @@@@    @@@@                   @@@#   @@@@@@@@@@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@                   @@@#   @@@@@@@@@@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@   (@@@    @@@@    @@@#   @@@@@@@@@@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@     |     @@@@    @@@#   @@@@@@@@@@@@   .@@@
; 5 @@@@    @@@@    @@@,   @@@@    @@@@           @@@@    @@@#   @@@@@@@@@@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@@@@@@@@@@@@@@@@    @@@#   @@@@    @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@                                  @@@@    @@@@   .@@@
; 6 @@@@    @@@@    @@@,   @@@@                                  @@@@    @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@#   @@@@    @@@@   .@@@
;   @@@@                                                                 @@@@   .@@@
; 7 @@@@                                                                 @@@@   .@@@
;   @@@@    @@@@    @@@,   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@   .@@@
; 8 @@@@    @@@@                       @@@@@@@@@@@@@@@@@@@                      .@@@
;   @@@@    @@@@                       @@@@@@@@@@@@@@@@@@@                      .@@@
;   @@@@    @@@@@@@@@@@,   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   .@@@
; 9 @@@@                                                                        .@@@
;   @@@@                                                                        .@@@
;   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
;
; 0x67 - level 4, map 4 (A0-J0)
; 0x68 - level 4, map 4 (A0-A9)
; 0x69 - level 4, map 4 (A9-J9)
; 0x6A - level 4, map 4 (J0-J9)
; 0x6B - level 4, map 4 (B1-I1)
; 0x6C - level 4, map 4 (B1-B8)
; 0x6D - level 4, map 4 (B8-E8)
; 0x6E - level 4, map 4 (G8-J8)
; 0x6F - level 4, map 4 (I6-I8)
; 0x70 - level 4, map 4 (I1-I3)
; 0x71 - level 4, map 4 (G2-I2)
; 0x72 - level 4, map 4 (C2-E2)
; 0x73 - level 4, map 4 (C1-C9)
; 0x74 - level 4, map 4 (A7-I7)
; 0x75 - level 4, map 4 (H2-H7)
; 0x76 - level 4, map 4 (D3-G3)
; 0x77 - level 4, map 4 (D2-D7)
; 0x78 - level 4, map 4 (D6-H6)
; 0x79 - level 4, map 4 (G3-G6)
; 0x7A - level 4, map 4 (E4-G4)
; 0x7B - level 4, map 4 (E3-E5)
; 0x7C - level 4, map 4 (E5-F5)
; 0x7D - level 4, map 4 (F4-F5)

v_macro_chr_pos_x             = ram_004B ; The high value for an overflow ram_0027
v_no_level                    = ram_005E ; It is a number of a level than it starts with 0.
; 0x00 - level 1
; 0x01 - level 2
; 0x02 - level 3
; 0x03 - level 4 + racing
v_no_screen                   = ram_0068 ; The number of 1 of 4 screen (name tables)
v_chr_status                  = ram_006C ; A status of a character
; 0x00000001 - the character is looking to the left
; 0x00000010 - the character is sitting
; 0x00010000 - the character is jumping
							  
v_start_level                 = ram_00B1 ; The start level [0-3]
v_count_secret_hits           = ram_00B2 ; Stage select codes at the title screen
v_lock_secret_hits            = ram_00B3 ; Allow button to be pressed only when other buttons aren't pressed
v_offset_in_secret_codes      = ram_00B4
v_tmp_target_room             = ram_00BC
v_low_corridor_address        = ram_00BD
v_high_corridor_address       = ram_00BE
v_low_destr_wall_address      = ram_00BF
v_high_destr_wall_address     = ram_00C0
v_low_msg_ppu_address         = ram_00CF ; This temporary address for the message on the screen
v_high_msg_ppu_address        = ram_00D0
v_letter_offset               = ram_00C9
v_last_level                  = ram_0109 ; It is a last played level.
v_items                       = ram_0200 ; 0x0200-0x0208
v_radio_item                  = ram_0200
v_breathing_apparatus_item    = ram_0205
v_helium_balloon_item         = ram_0206
v_bullet_proof_vest_item      = ram_0207
v_ruby_ring                   = ram_0208
v_array_white_briefcase       = ram_0219
; flag 0x80 - the item is got (see BIT_USING_WHITE_BRIEFCASE)
v_enemies                     = ram_0300
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

v_enemyA                      = ram_0300
v_enemyB                      = ram_0301
v_briefcase_index             = ram_0398 ; [0399-039D]
v_item_on_screen              = ram_039E ; [039F-03A3] - briefcase, 039E - screen
; C0 - briefcase
; D0 - self item
v_bomb_on_screen              = ram_039E ; C2 - a bomb

v_sound_counter               = ram_0406
v_rooms                       = ram_0500
; flag 0x80 - the room has already been visited
v_low_ppu_address             = ram_0630
v_high_ppu_address            = ram_0631
v_ppu_buffer_count            = ram_0632
v_bank_data                   = ram_06B5
v_sprite_magics               = ram_06B7
v_sprite_magic1               = ram_06B7
v_sprite_magic2               = ram_06B8
v_sprite_magic3               = ram_06B9 ; BBBB XXXX, BBBB - sign MMC3 bank data
v_sprite_magic4               = ram_06BA
v_offset_sprite_magic         = ram_06F7 ; The pack is using 1,2,3,4 sprite magic
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

; Byte join regex: "\s\s\s;\s.*\n.*\$" -> ", $"