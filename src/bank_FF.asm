.segment "BANK_FF"
.include "bank_ram.inc"
.include "constants.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F

.import tbl_background_screens               ; bank 00 (Page 1)

.import tbl_background_palette               ; bank 01 (Page 2)
.import tbl_background_collisions            ; bank 01 (Page 2)

.import loc_AD80_activate_sound_manager      ; bank 02 (Page 1)
.import tbl_select_characters_dialog         ; bank 02 (Page 1)
.import tbl_enemy_score                      ; bank 02 (Page 1)
.import tbl_water_gap_level4                 ; bank 02 (Page 1)

.import sub_A00F_swordtail                   ; bank 03 (Page 2)
.import sub_A012_knight                      ; bank 03 (Page 2)
.import sub_A015_cat_or_snake_enemy          ; bank 03 (Page 2)

.import tbl_ptr_checkpoints                  ; bank 04 (Page 1)
.import tbl_demo_btn_pressed                 ; bank 04 (Page 1)
.import tbl_ptr_corridors                    ; bank 04 (Page 1)
.import tbl_ptr_destructible_walls           ; bank 04 (Page 1)
.import tbl_room_lengths                     ; bank 04 (Page 1)
.import tbl_roof_pitches                     ; bank 04 (Page 1)
.import tbl_message_bar_bottom_attrs         ; bank 04 (Page 1)
.import tbl_character_select_palette         ; bank 04 (Page 1)
.import tbl_ptr_enemy_palette                ; bank 04 (Page 1)
.import tbl_road_hills                       ; bank 04 (Page 1)
.import tbl_checkpoint_after_death           ; bank 04 (Page 1)
.import number_of_rooms_on_the_level         ; bank 04 (Page 2)
.import tbl_ptr_enemies                      ; bank 04 (Page 2)
.import tbl_ptr_rooms_on_the_level           ; bank 04 (Page 2)
.import number_of_briefcases_on_the_level    ; bank 04 (Page 2)
.import tbl_ptr_briefcases_on_the_level      ; bank 04 (Page 2)
.import tbl_ptr_checkpoints_on_the_level     ; bank 04 (Page 2)

.import sub_A000_land_diver_enemy            ; bank 06 (Page 1)
.import sub_A003_soar_enemy                  ; bank 06 (Page 1)
.import sub_A009_bazooka_man                 ; bank 06 (Page 1)
.import sub_A012_fly_man                     ; bank 06 (Page 1)
.import sub_A015_shooter                     ; bank 06 (Page 1)
.import sub_A018_Zenigata                    ; bank 06 (Page 1)
.import loc_A028_jumper                      ; bank 06 (Page 1)
.import loc_B234_add_message                 ; bank 06 (Page 2)
.import sub_B234_add_message                 ; bank 06 (Page 2)
.import loc_B255_display_message_by_letter   ; bank 06 (Page 2)
.import sub_BB2A_solve_secret_codes          ; bank 06 (Page 2)
.import loc_BBA4_play_background_music       ; bank 06 (Page 2)
.import sub_BBA4_play_background_music       ; bank 06 (Page 2)
.import sub_BBFE_is_unique_room              ; bank 06 (Page 2)
.import sub_B8C7_main_menu_shared_routine    ; bank 06 (Page 2)
.import sub_B9DA_curscene_shared_routine     ; bank 06 (Page 2)
.import sub_B18C_prepare_briefcases_by_index ; bank 06 (Page 2)
.import loc_B1FB_rifle                       ; bank 06 (Page 2)
.import sub_B319_hide_character_in_room      ; bank 06 (Page 2)
.import tbl_ptr_enemy_t2_types_for_sprites   ; bank 06 (Page 2)
.import tbl_ptr_enemy_t3_types_for_sprites   ; bank 06 (Page 2)
.import tbl_ptr_enemy_t2_sprite_params_      ; bank 06 (Page 2)
.import tbl_ptr_enemy_t3_sprite_params_      ; bank 06 (Page 2)
.import tbl_ptr_enemy_t4_sprite_params_      ; bank 06 (Page 2)

.export sub_accumulator_shift_right_by_4
.export sub_C305_update_ppu_ctrl_with_no_nmi
.export sub_C51E_update_ppu_and_screen
.export sub_C313_screen_off
.export sub_C31D_clear_ppu
.export sub_C358_clear_OAM
.export loc_C371_update_palette
.export loc_C402_clear_sound_parts
.export sub_C402_clear_sound_parts
.export sub_C420_add_sound_effect
.export loc_C420_add_sound_effect
.export sub_C904_clear_score
.export sub_CE33_add_sprite_magic
.export loc_CE33_add_sprite_magic
.export sub_EF46_switch_bank_4_p1
.export loc_EF4F_switch_bank_4_p2
.export sub_EF4F_switch_bank_4_p2
.export sub_EF3B_switch_bank_2_p1
.export sub_F2D6_try_put_briefcase
.export sub_D073_invert_sign
.export sub_D079_check_button_press
.export sub_D086_render_14_15_16_17_18_v1
.export sub_C4F5_selectAllChrBanks
.export tbl_C1CA_checkpoint_on_start_levels
.export sub_CE5A_render_character
.export sub_C91C_display_menu_score
.export loc_C046_repeat_starting_mode
.export sub_D2E5_get_collision_value
.export sub_D0B8_change_stack_pointer_by_bits
.export sub_D0C1_change_stack_pointer
.export sub_D67B_out_of_sight
.export sub_D6AC_out_of_screen
.export loc_D99F_add_flash_sprite
.export sub_D660_is_bomb_exploding
.export tbl_E35D_jump_posY_offset
.export tbl_E358_init_counter
.export sub_D064_generate_rng
.export sub_FC3E_boss_defeated_status
.export sub_D562_has_character_damage
.export loc_D562_has_character_damage
.export sub_D5B6_have_intersect_bullet
.export sub_D606_have_intersect_sword
.export sub_D347_check_landing_enemyA
.export sub_D358_check_enemyA_collision_by_Y
.export sub_D35E_check_enemyB_collision_by_Y
.export sub_D7D5_check_enemyA_collision_by_Y_in_maze
.export sub_D7BF_check_enemyA_movement_on_the_right
.export sub_D8B7_check_enemyB_movement_on_the_right
.export sub_D7CA_check_enemyA_movement_on_the_left
.export sub_D8C2_check_enemyB_movement_on_the_left
.export sub_D70F_inc_EnemyAPosXLow
.export loc_D70F_inc_EnemyAPosXLow
.export sub_D71C_inc_EnemyAPosXLow_unsafe
.export loc_D71C_inc_EnemyAPosXLow_unsafe
.export loc_D81B_inc_EnemyBPosXLow
.export loc_D828_short_inc_EnemyBPosXLow
.export sub_D828_short_inc_EnemyBPosXLow
.export sub_D6F0_dec_EnemyAPosXLow
.export loc_D6F0_dec_EnemyAPosXLow
.export sub_D6FD_dec_EnemyAPosXLow_unsafe
.export loc_D6FD_dec_EnemyAPosXLow_unsafe
.export loc_D7FC_dec_EnemyBPosXLow
.export sub_D809_short_dec_EnemyBPosXLow
.export loc_D809_short_dec_EnemyBPosXLow
.export loc_D77F_free_enemyA
.export loc_D78A_free_enemyA_while_creating
.export loc_D78F_dec_enemyA_counter
.export loc_D873_free_enemyB
.export loc_D87E_free_enemyB_while_creating
.export loc_D883_dec_enemyB_counter
.export sub_D6BD_try_change_enemyA_direction
.export sub_D6DB_try_change_enemyB_direction
.export sub_D6DF_check_enemyB_direction
.export sub_D9AE_inc_enemyA_frame_counter
.export loc_D9AE_inc_enemyA_frame_counter
.export sub_D9C4_inc_enemyB_frame_counter
.export loc_D741_enemyA_off_screen
.export sub_D84D_enemyB_off_screen
.export loc_D84D_enemyB_off_screen
.export sub_D725_enemyA_on_screen
.export sub_D831_enemyB_on_screen
.export loc_D989_add_enemyA_sprite_magic_v1
.export loc_D97D_add_flash_sprite_magic
.export loc_D980_add_flash_sprite_magic_ex
.export sub_D7A8_correction_EnemyAPosY
.export sub_D89C_correction_EnemyBPosY
.export sub_D8A8_correction2_EnemyBPosY
.export sub_E332_generate_jump_type
.export sub_D937_init_absolute_enemyA_positions
.export sub_D94A_init_absolute_enemyB_positions
.export sub_D952_init_short_enemyB_positions
.export sub_D8D9_enemyB_collision_by_one
.export sub_D8CD_enemyB_collision_plus_one
.export sub_D8D1_enemyB_collision_minus_16
.export sub_D8DB_enemyB_collision_by_shift_posY
.export tbl_flying_track_offset
.export tbl_lift_positions
.export sub_D397_right_collision_by_inc_posX
.export loc_D397_right_collision_by_inc_posX
.export sub_D3AD_left_collision_by_inc_posX
.export loc_D3AD_left_collision_by_inc_posX
.export sub_D642_have_intersect_with_character
.export loc_CDAC_decrement_counters_ex
.export sub_CDEE_deactivate_activable_items
.export sub_DF63_update_left_right_direction
.export loc_DBC2_before_rendering
.export sub_DCB1_try_move_on_the_left
.export sub_DCE5_try_move_on_the_right
.export sub_DCF1_reset_velocity
.export sub_C652_display_character_portraits
.export sub_C62F_init_character_select
.export sub_C668_render_14_15_16_17_18_loop
.export sub_C960_add_score2
.export loc_DA7C_add_sprite_magic_in_05_p1
.export sub_DA28_get_explode_sprite_magic2
.export loc_D913_short_inc_ItemPosXLow
.export loc_D8F4_short_dec_ItemPosXLow_unsafe
.export loc_C924_display_menu_score_ex
.export sub_C924_display_menu_score_ex
.export loc_C28D_next_menu_demo
.export loc_C803_render_each_character_in_the_end

vec_C000_RESET:
C D 2 - - - 0x01C010 07:C000: 78        SEI                                        ; disable interrupts
C - - - - - 0x01C011 07:C001: D8        CLD                                        ; disable decimal mode (NES chip 2A03 doesn't use decimal mode)
C - - - - - 0x01C012 07:C002: A9 00     LDA #$00                                   ;
C - - - - - 0x01C014 07:C004: 8D 00 20  STA PPU_CTRL                               ; clear ppu
C - - - - - 0x01C017 07:C007: 8D 01 20  STA PPU_MASK                               ; clear ppu
C - - - - - 0x01C01A 07:C00A: 85 26     STA vPpuCtrlSettings                       ; clear ppu
@bra_C00C_wait_til_vblank:
C - - - - - 0x01C01C 07:C00C: AD 02 20  LDA PPU_STATUS                             ; wait for vblank (1 time)
C - - - - - 0x01C01F 07:C00F: 10 FB     BPL @bra_C00C_wait_til_vblank              ;
@bra_C011_wait_til_vblank:
C - - - - - 0x01C021 07:C011: AD 02 20  LDA PPU_STATUS                             ; wait for vblank (2 time)
C - - - - - 0x01C024 07:C014: 10 FB     BPL @bra_C011_wait_til_vblank              ;
C - - - - - 0x01C026 07:C016: A2 FF     LDX #$FF                                   ; 
C - - - - - 0x01C028 07:C018: 9A        TXS                                        ; set a stack pointer
C - - - - - 0x01C029 07:C019: A9 00     LDA #$00                                   ;    
C - - - - - 0x01C02B 07:C01B: AA        TAX                                        ; set loop counter
@bra_C01C_memset_zero:                                                             ; loop by x
C - - - - - 0x01C02C 07:C01C: 9D 00 02  STA $0200,X                                ; [0x0200-0x02FF] in 0
C - - - - - 0x01C02F 07:C01F: 9D 00 03  STA $0300,X                                ; [0x0300-0x03FF] in 0
C - - - - - 0x01C032 07:C022: 9D 00 04  STA $0400,X                                ; [0x0400-0x04FF] in 0
C - - - - - 0x01C035 07:C025: 9D 00 05  STA $0500,X                                ; [0x0500-0x05FF] in 0
C - - - - - 0x01C038 07:C028: 9D 00 06  STA vCachePalette,X                        ; [0x0600-0x06FF] in 0
C - - - - - 0x01C03B 07:C02B: 9D 00 07  STA vStartOAM,X                            ; [0x0700-0x07FF] in 0
C - - - - - 0x01C03E 07:C02E: E8        INX                                        ; increment counter x
C - - - - - 0x01C03F 07:C02F: D0 EB     BNE @bra_C01C_memset_zero                  ;
@bra_C031_loop:                                                                    ; loop by x
C - - - - - 0x01C041 07:C031: 95 00     STA $0000,X                                ; [0x0000-0x0098] in 0
C - - - - - 0x01C043 07:C033: E8        INX                                        ; increment counter x
C - - - - - 0x01C044 07:C034: E0 99     CPX #$99                                   ;
C - - - - - 0x01C046 07:C036: 90 F9     BCC @bra_C031_loop                         ; If Register X < 0x99
C - - - - - 0x01C048 07:C038: A2 A7     LDX #$A7                                   ; set loop counter
@bra_C03A_loop:                                                                    ; loop by x
C - - - - - 0x01C04A 07:C03A: 95 00     STA $0000,X                                ; [0x00A7-0x00FF] in 0
C - - - - - 0x01C04C 07:C03C: E8        INX                                        ; increments loop counter
C - - - - - 0x01C04D 07:C03D: D0 FB     BNE @bra_C03A_loop                         ; If Register X != 0
C - - - - - 0x01C04F 07:C03F: 20 FB FD  JSR sub_FDFB_crc_test                      ;
C - - - - - 0x01C052 07:C042: A9 FF     LDA #$FF                                   ; CONSTANT - Cutscene
C - - - - - 0x01C054 07:C044: 85 37     STA vCutscenesMode                         ; assign a value
loc_C046_repeat_starting_mode:                                                     ; Main menu or cutscene with a message.
C D 2 - - - 0x01C056 07:C046: A9 07     LDA #$07                                   ;
C - - - - - 0x01C058 07:C048: 8D 00 80  STA MMC3_Bank_select                       ;
C - - - - - 0x01C05B 07:C04B: A9 0D     LDA #$0D                                   ;
C - - - - - 0x01C05D 07:C04D: 8D 01 80  STA MMC3_Bank_data                         ; switch bank 06_2 in 0xA000-0BFFF
C - - - - - 0x01C060 07:C050: A2 00     LDX #$00                                   ;
C - - - - - 0x01C062 07:C052: 86 19     STX vRenderActive                          ; clear
C - - - - - 0x01C064 07:C054: 8E 10 40  STX DMC_FREQ                               ; clear
C - - - - - 0x01C067 07:C057: 86 3B     STX vSharedGameStatus                      ; clear
C - - - - - 0x01C069 07:C059: 86 3C     STX vGameLocks                             ; clear
C - - - - - 0x01C06B 07:C05B: 86 39     STX vGameInterruptEvent                    ; clear
C - - - - - 0x01C06D 07:C05D: 86 3A     STX vDamageStatus                          ; clear
C - - - - - 0x01C06F 07:C05F: 86 38     STX vPauseStatus                           ; clear
C - - - - - 0x01C071 07:C061: 86 D6     STX vReasonCharacterChange                 ; clear
C - - - - - 0x01C073 07:C063: 86 27     STX vLowViewPortPosX                       ; clear
C - - - - - 0x01C075 07:C065: 86 29     STX vLowViewPortPosY                       ; clear
C - - - - - 0x01C077 07:C067: 86 1C     STX vBtnPressedInGame                      ; clear
C - - - - - 0x01C079 07:C069: 86 1F     STX v_player2_btn_pressed                  ; clear
C - - - - - 0x01C07B 07:C06B: 86 5E     STX vNoLevel                               ; clear
C - - - - - 0x01C07D 07:C06D: 86 C4     STX vCheckpoint                            ; clear
C - - - - - 0x01C07F 07:C06F: 8E B6 06  STX vChrBankData                           ; clear
C - - - - - 0x01C082 07:C072: 86 C8     STX vMessageInProgress                     ; clear
C - - - - - 0x01C084 07:C074: 86 2E     STX vCorridorCounter                       ; clear
C - - - - - 0x01C086 07:C076: 86 2F     STX vAnimationCounter                      ; clear
C - - - - - 0x01C088 07:C078: 86 30     STX vClearMessageCounter                   ; clear
C - - - - - 0x01C08A 07:C07A: 86 31     STX vNonUsedCounter                        ; clear
C - - - - - 0x01C08C 07:C07C: 86 32     STX vResistantToDamageCounter              ; clear
C - - - - - 0x01C08E 07:C07E: 86 33     STX vLowCutsceneCounter                    ; clear
C - - - - - 0x01C090 07:C080: A9 40     LDA #$40                                   ;
C - - - - - 0x01C092 07:C082: 8D 17 40  STA JOY2                                   ; set apu frame counter - 4-step mode, the interrupts are disabled
C - - - - - 0x01C095 07:C085: A9 FC     LDA #$FC                                   ;
C - - - - - 0x01C097 07:C087: 85 5F     STA vChrLiveStatus                         ; clear (see vChrLiveStatus)
C - - - - - 0x01C099 07:C089: 20 D4 C8  JSR sub_C8D4_check_Yoshikawa               ;
C - - - - - 0x01C09C 07:C08C: 20 C7 B8  JSR sub_B8C7_main_menu_shared_routine      ; bank 06_2
C - - - - - 0x01C09F 07:C08F: 20 DA B9  JSR sub_B9DA_curscene_shared_routine       ; bank 06_2
C - - - - - 0x01C0A2 07:C092: 20 96 EF  JSR sub_EF96_initialize                    ;
loc_C095_repeat_waiting_select_character:
C D 2 - - - 0x01C0A5 07:C095: A5 37     LDA vCutscenesMode                         ;
C - - - - - 0x01C0A7 07:C097: 30 03     BMI bra_C09C_skip                          ; Branch If cutscenes are used
C - - - - - 0x01C0A9 07:C099: 20 72 C6  JSR sub_C672_wait_character_select         ;
bra_C09C_skip:
loc_C09C_restart_current_room:
C D 2 - - - 0x01C0AC 07:C09C: 20 C0 FA  JSR sub_FAC0_event_poll                    ;
C - - - - - 0x01C0AF 07:C09F: 20 46 EF  JSR sub_EF46_switch_bank_4_p1              ;
C - - - - - 0x01C0B2 07:C0A2: A4 46     LDY vNoRoom                                ;
C - - - - - 0x01C0B4 07:C0A4: BE 38 85  LDX tbl_room_lengths,Y                     ;
C - - - - - 0x01C0B7 07:C0A7: 86 49     STX vCurrentRoomLength                     ;
C - - - - - 0x01C0B9 07:C0A9: CA        DEX                                        ;
C - - - - - 0x01C0BA 07:C0AA: 86 4A     STX vNearCurrentRoomLength                 ;
C - - - - - 0x01C0BC 07:C0AC: A2 6C     LDX #$6C                                   ; set loop counter
C - - - - - 0x01C0BE 07:C0AE: A9 00     LDA #$00                                   ; set assigning value
@bra_C0B0_loop:                                                                    ; loop by x
C - - - - - 0x01C0C0 07:C0B0: 95 00     STA $0000,X                                ; [0x006C-0x0099] in 0x00
C - - - - - 0x01C0C2 07:C0B2: E8        INX                                        ; increments loop counter
C - - - - - 0x01C0C3 07:C0B3: E0 99     CPX #$99                                   ;
C - - - - - 0x01C0C5 07:C0B5: D0 F9     BNE @bra_C0B0_loop                         ; If Register X != 0x99
loc_C0B7_character_is_selected:
C D 2 - - - 0x01C0C7 07:C0B7: A9 00     LDA #$00                                   ;
C - - - - - 0x01C0C9 07:C0B9: 8D 15 40  STA APU_STATUS                             ; clear
C - - - - - 0x01C0CC 07:C0BC: 20 19 C3  JSR sub_C319_fill_ppu                      ;
C - - - - - 0x01C0CF 07:C0BF: 20 58 C3  JSR sub_C358_clear_OAM                     ;
C - - - - - 0x01C0D2 07:C0C2: 20 FC EF  JSR sub_EFFC_after_select_character        ;
C - - - - - 0x01C0D5 07:C0C5: A5 4B     LDA vHighViewPortPosX                      ;
C - - - - - 0x01C0D7 07:C0C7: 48        PHA                                        ; store the high position of the character
C - - - - - 0x01C0D8 07:C0C8: A5 27     LDA vLowViewPortPosX                       ; 
C - - - - - 0x01C0DA 07:C0CA: 48        PHA                                        ; store the low position of the character
C - - - - - 0x01C0DB 07:C0CB: 20 53 D4  JSR sub_D453_prepare_gaming_environment    ;
C - - - - - 0x01C0DE 07:C0CE: 20 13 CE  JSR sub_CE13_set_sprite_zero_hits          ;
C - - - - - 0x01C0E1 07:C0D1: 68        PLA                                        ; retrieve the low position of the character
C - - - - - 0x01C0E2 07:C0D2: 85 27     STA vLowViewPortPosX                       ;
C - - - - - 0x01C0E4 07:C0D4: 68        PLA                                        ; retrieve the high position of the character
C - - - - - 0x01C0E5 07:C0D5: 29 01     AND #$01                                   ; multiplicity of vHighViewPortPosX by 2 sets the nametable address (0x2000 or 0x2400)
C - - - - - 0x01C0E7 07:C0D7: 09 08     ORA #$08                                   ; activate the right pattern table (0x1000)
C - - - - - 0x01C0E9 07:C0D9: 85 26     STA vPpuCtrlSettings                       ;
C - - - - - 0x01C0EB 07:C0DB: A9 00     LDA #$00                                   ;
C - - - - - 0x01C0ED 07:C0DD: 85 39     STA vGameInterruptEvent                    ; clear
C - - - - - 0x01C0EF 07:C0DF: 8D 31 06  STA vHighPpuAddress                        ; clear, 2nd mode
C - - - - - 0x01C0F2 07:C0E2: 8D 7B 06  STA vPpuAddrDataCache                      ; clear
C - - - - - 0x01C0F5 07:C0E5: 85 19     STA vRenderActive                          ; clear
C - - - - - 0x01C0F7 07:C0E7: A5 3A     LDA vDamageStatus                          ;
C - - - - - 0x01C0F9 07:C0E9: 29 80     AND #$80                                   ;
C - - - - - 0x01C0FB 07:C0EB: 85 3A     STA vDamageStatus                          ; clear expect NO DAMAGE MODE
C - - - - - 0x01C0FD 07:C0ED: 20 57 DF  JSR sub_DF57_get_current_character         ;
C - - - - - 0x01C100 07:C0F0: 8D B2 06  STA vCacheChrBankSelect + 3                ;
C - - - - - 0x01C103 07:C0F3: EE B2 06  INC vCacheChrBankSelect + 3                ;
C - - - - - 0x01C106 07:C0F6: 20 F8 E2  JSR sub_E2F8_set_character_palette         ;
C - - - - - 0x01C109 07:C0F9: 20 F3 CD  JSR sub_CDF3_deactivate_activable_items_ex ;
C - - - - - 0x01C10C 07:C0FC: 20 ED C2  JSR sub_C2ED_prepare_character_in_water    ;
C - - - - - 0x01C10F 07:C0FF: 20 A4 BB  JSR sub_BBA4_play_background_music         ;
C - - - - - 0x01C112 07:C102: 20 14 FC  JSR sub_FC14_prepare_boss                  ;
C - - - - - 0x01C115 07:C105: A9 00     LDA #$00                                   ;
C - - - - - 0x01C117 07:C107: 85 3C     STA vGameLocks                             ; clear locks
C - - - - - 0x01C119 07:C109: 20 0F C3  JSR sub_C30F_screen_on                     ;
C - - - - - 0x01C11C 07:C10C: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi      ;
C - - - - - 0x01C11F 07:C10F: A5 3B     LDA vSharedGameStatus                      ;
C - - - - - 0x01C121 07:C111: C9 0B     CMP #$0B                                   ; CONSTANT - A final scene
C - - - - - 0x01C123 07:C113: D0 03     BNE bra_C118_skip                          ; If vSharedGameStatus != 0x0B
C - - - - - 0x01C125 07:C115: 4C A6 C2  JMP loc_C2A6_final_process                 ;

bra_C118_skip:
C - - - - - 0x01C128 07:C118: A9 FF     LDA #$FF                      ;
C - - - - - 0x01C12A 07:C11A: 85 33     STA vLowCutsceneCounter       ; Initializes a counter.
C - - - - - 0x01C12C 07:C11C: A9 02     LDA #$02                      ;
C - - - - - 0x01C12E 07:C11E: 85 34     STA vHighCutsceneCounter      ; Initializes a time of a demo scene.
bra_C120_wait:
C - - - - - 0x01C130 07:C120: 20 64 D0  JSR sub_D064_generate_rng     ;
C - - - - - 0x01C133 07:C123: A5 37     LDA vCutscenesMode            ;
C - - - - - 0x01C135 07:C125: 10 08     BPL @bra_C12F_skip            ; Branch If in game
C - - - - - 0x01C137 07:C127: A5 34     LDA vHighCutsceneCounter      ;
C - - - - - 0x01C139 07:C129: D0 04     BNE @bra_C12F_skip            ; If vHighCutsceneCounter != 0x00
C - - - - - 0x01C13B 07:C12B: A9 80     LDA #$80                      ; CONSTANT - to next character in demo
C - - - - - 0x01C13D 07:C12D: 85 39     STA vGameInterruptEvent       ;
@bra_C12F_skip:
C - - - - - 0x01C13F 07:C12F: AD F6 FF  LDA Set_features              ;
C - - - - - 0x01C142 07:C132: 30 14     BMI bra_C148_skip             ; If test mode is disabled
; Only for test mode
C - - - - - 0x01C144 07:C134: A5 1F     LDA v_player2_btn_pressed     ;
C - - - - - 0x01C146 07:C136: 29 02     AND #BIT_BUTTON_B             ;
C - - - - - 0x01C148 07:C138: F0 0E     BEQ bra_C148_skip             ; Go to the branch If the button 'B' doesn't press
C - - - - - 0x01C14A 07:C13A: 45 20     EOR v_last_p2_btn_pressed     ;
C - - - - - 0x01C14C 07:C13C: 29 02     AND #BIT_BUTTON_B             ; avoid looping
C - - - - - 0x01C14E 07:C13E: F0 08     BEQ bra_C148_skip             ; If v_player2_btn_pressed = v_last_p2_btn_pressed
C - - - - - 0x01C150 07:C140: 85 20     STA v_last_p2_btn_pressed     ; <~ #BIT_BUTTON_B
C - - - - - 0x01C152 07:C142: 20 48 BC  JSR sub_BC48_next_room        ;
C - - - - - 0x01C155 07:C145: 4C 94 C1  JMP loc_C194_update_level_no  ;

bra_C148_skip:
C - - - - - 0x01C158 07:C148: 24 39     BIT vGameInterruptEvent             ; 
C - - - - - 0x01C15A 07:C14A: 30 12     BMI bra_C15E_select_character_event ; If the event is 'to select the character'
C - - - - - 0x01C15C 07:C14C: A5 3B     LDA vSharedGameStatus               ;
C - - - - - 0x01C15E 07:C14E: 29 10     AND #$10                            ; CONSTANT - status 'Select the character'
C - - - - - 0x01C160 07:C150: F0 CE     BEQ bra_C120_wait                   ; If vSharedGameStatus isn't contains 'Select the character'
C - - - - - 0x01C162 07:C152: A9 80     LDA #$80                            ;
C - - - - - 0x01C164 07:C154: 85 3C     STA vGameLocks                      ; CONSTANT - select a character (1)
C - - - - - 0x01C166 07:C156: 85 D6     STA vReasonCharacterChange          ; CONSTANT - 'the radio was using'
C - - - - - 0x01C168 07:C158: 20 72 C6  JSR sub_C672_wait_character_select  ;
C - - - - - 0x01C16B 07:C15B: 4C B7 C0  JMP loc_C0B7_character_is_selected  ; 

bra_C15E_select_character_event:
C - - - - - 0x01C16E 07:C15E: 50 6E     BVC bra_C1CE_main_interrupt                 ; if the event is only 'to select the character'
C - - - - - 0x01C170 07:C160: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi    ;
C - - - - - 0x01C173 07:C163: 20 13 C3  JSR sub_C313_screen_off                     ;
C - - - - - 0x01C176 07:C166: A5 39     LDA vGameInterruptEvent                     ;
C - - - - - 0x01C178 07:C168: C9 E0     CMP #$E0                                    ;
C - - - - - 0x01C17A 07:C16A: F0 03     BEQ bra_C16F_next_level                     ; If the event is 'to next level'
C - - - - - 0x01C17C 07:C16C: 4C 9C C0  JMP loc_C09C_restart_current_room           ;

bra_C16F_next_level:
C - - - - - 0x01C17F 07:C16F: A9 00     LDA #$00                    ; CONSTANT - no reason
C - - - - - 0x01C181 07:C171: 85 D6     STA vReasonCharacterChange  ; clear
C - - - - - 0x01C183 07:C173: E6 5E     INC vNoLevel                ;
C - - - - - 0x01C185 07:C175: A5 5E     LDA vNoLevel                ;
C - - - - - 0x01C187 07:C177: C9 02     CMP #$02                    ; CONSTANT - the level 3
C - - - - - 0x01C189 07:C179: D0 08     BNE @bra_C183_skip          ; If vNoLevel != 0x02
C - - - - - 0x01C18B 07:C17B: 2C F6 FF  BIT Set_features            ;
C - - - - - 0x01C18E 07:C17E: 70 03     BVS @bra_C183_skip          ; If it is full game version
C - - - - - 0x01C190 07:C180: 4C 5B C2  JMP loc_C25B_the_short_end  ;

@bra_C183_skip:
C - - - - - 0x01C193 07:C183: CD 09 01  CMP v_last_level                              ;
C - - - - - 0x01C196 07:C186: 90 03     BCC @bra_C18B_skip                            ; If vNoLevel < vLastLevel
C - - - - - 0x01C198 07:C188: 8D 09 01  STA v_last_level                              ; updates vLastLevel
@bra_C18B_skip:
C - - - - - 0x01C19B 07:C18B: AA        TAX                                           ;
C - - - - - 0x01C19C 07:C18C: BD CA C1  LDA tbl_C1CA_checkpoint_on_start_levels,X     ;
C - - - - - 0x01C19F 07:C18F: 85 C4     STA vCheckpoint                               ; assigned
C - - - - - 0x01C1A1 07:C191: 4C B1 C1  JMP loc_C1B1_character_and_room_initializaton ;

; Only for test mode
loc_C194_update_level_no:
C - - - - - 0x01C1A4 07:C194: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi   ;
C - - - - - 0x01C1A7 07:C197: 20 13 C3  JSR sub_C313_screen_off                    ;
C - - - - - 0x01C1AA 07:C19A: A2 00     LDX #$00                                   ; X <~ 0
C - - - - - 0x01C1AC 07:C19C: A5 C4     LDA vCheckpoint                            ;
C - - - - - 0x01C1AE 07:C19E: F0 0F     BEQ @bra_C1AF_assign                       ; If vCheckpoint == 0x00
C - - - - - 0x01C1B0 07:C1A0: E8        INX                                        ; X <~ 1
C - - - - - 0x01C1B1 07:C1A1: C9 06     CMP #$06                                   ; CONSTANT - level 2 (outside)
C - - - - - 0x01C1B3 07:C1A3: F0 0A     BEQ @bra_C1AF_assign                       ; If vCheckpoint == 0x06
C - - - - - 0x01C1B5 07:C1A5: E8        INX                                        ; X <~ 2
C - - - - - 0x01C1B6 07:C1A6: C9 0F     CMP #$0F                                   ; CONSTANT - level 3.0
C - - - - - 0x01C1B8 07:C1A8: F0 05     BEQ @bra_C1AF_assign                       ; If vCheckpoint == 0x0F
C - - - - - 0x01C1BA 07:C1AA: E8        INX                                        ; X <~ 3
C - - - - - 0x01C1BB 07:C1AB: C9 19     CMP #$19                                   ; CONSTANT - level racing
C - - - - - 0x01C1BD 07:C1AD: D0 14     BNE bra_C1C3_skip_initializaton            ; If vCheckpoint != 0x19
; In: Register X - a new level number
@bra_C1AF_assign:
C - - - - - 0x01C1BF 07:C1AF: 86 5E     STX vNoLevel                               ;
loc_C1B1_character_and_room_initializaton:
C D 2 - - - 0x01C1C1 07:C1B1: A9 00     LDA #$00                                   ; CONSTANT - no reason
C - - - - - 0x01C1C3 07:C1B3: 85 D6     STA vReasonCharacterChange                 ; 
C - - - - - 0x01C1C5 07:C1B5: A5 5F     LDA vChrLiveStatus                         ;
C - - - - - 0x01C1C7 07:C1B7: 85 D4     STA vTempChrLiveStatus                     ; store a last value
C - - - - - 0x01C1C9 07:C1B9: A9 FC     LDA #$FC                                   ; CONSTANT (see vChrLiveStatus)
C - - - - - 0x01C1CB 07:C1BB: 85 5F     STA vChrLiveStatus                         ; All characters are ready to play, Lupin is selected
C - - - - - 0x01C1CD 07:C1BD: 20 72 C6  JSR sub_C672_wait_character_select         ;
C - - - - - 0x01C1D0 07:C1C0: 20 A5 EF  JSR sub_EFA5_initialize_without_items      ;
bra_C1C3_skip_initializaton:
C - - - - - 0x01C1D3 07:C1C3: A2 00     LDX #$00                                   ;
C - - - - - 0x01C1D5 07:C1C5: 86 B6     STX vCurrentUniqueRoom                     ; clear
C - - - - - 0x01C1D7 07:C1C7: 4C 9C C0  JMP loc_C09C_restart_current_room          ;

tbl_C1CA_checkpoint_on_start_levels:
- D - - - - 0x01C1DA 07:C1CA: 00        .byte $00
- D 2 - - - 0x01C1DB 07:C1CB: 06        .byte $06
- D 2 - - - 0x01C1DC 07:C1CC: 0F        .byte $0F
- D 2 - - - 0x01C1DD 07:C1CD: 19        .byte $19

bra_C1CE_main_interrupt:
C - - - - - 0x01C1DE 07:C1CE: A5 37     LDA vCutscenesMode           ;
C - - - - - 0x01C1E0 07:C1D0: 10 03     BPL bra_C1D5_skip            ; Branch If in game
C - - - - - 0x01C1E2 07:C1D2: 4C 8D C2  JMP loc_C28D_next_menu_demo  ;

bra_C1D5_skip:
C - - - - - 0x01C1E5 07:C1D5: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi     ;
C - - - - - 0x01C1E8 07:C1D8: A5 6A     LDA vScreenChrPosY                           ;
C - - - - - 0x01C1EA 07:C1DA: C9 DF     CMP #$DF                                     ; CONSTANT - Maximum permissible height value
C - - - - - 0x01C1EC 07:C1DC: 90 14     BCC @bra_C1F2_skip                           ; If vScreenChrPosY < 0xDF
C - - - - - 0x01C1EE 07:C1DE: A9 20     LDA #$20                                     ; CONSTANT - Death by fall
C - - - - - 0x01C1F0 07:C1E0: 85 3B     STA vSharedGameStatus                        ;
C - - - - - 0x01C1F2 07:C1E2: A9 00     LDA #$00                                     ;
C - - - - - 0x01C1F4 07:C1E4: 85 2C     STA vLowCounter                              ; reset
C - - - - - 0x01C1F6 07:C1E6: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi        ;
@bra_C1E9_repeat:
C - - - - - 0x01C1F9 07:C1E9: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x01C1FB 07:C1EB: C9 40     CMP #$40                                     ;
C - - - - - 0x01C1FD 07:C1ED: 90 FA     BCC @bra_C1E9_repeat                         ; If vLowCounter < 0x40 (waiting 64 frames)
C - - - - - 0x01C1FF 07:C1EF: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi     ;
@bra_C1F2_skip:
C - - - - - 0x01C202 07:C1F2: A9 40     LDA #$40                                     ; CONSTANT - 'the character is fell or arrested'
C - - - - - 0x01C204 07:C1F4: 85 D6     STA vReasonCharacterChange                   ;
C - - - - - 0x01C206 07:C1F6: 20 8D EF  JSR sub_EF8D_clear_Zenigata_timer            ;
C - - - - - 0x01C209 07:C1F9: A9 A0     LDA #$A0                                     ; CONSTANT - select a character (2)
C - - - - - 0x01C20B 07:C1FB: 85 3C     STA vGameLocks                               ;
C - - - - - 0x01C20D 07:C1FD: 20 57 DF  JSR sub_DF57_get_current_character           ;
C - - - - - 0x01C210 07:C200: A8        TAY                                          ; Y <~ the character index
C - - - - - 0x01C211 07:C201: A9 FD     LDA #$FD                                     ; mask #1 (falling)
C - - - - - 0x01C213 07:C203: A6 39     LDX vGameInterruptEvent                      ;
C - - - - - 0x01C215 07:C205: E0 81     CPX #$81                                     ; CONSTANT - to select the character (the character is dying)
C - - - - - 0x01C217 07:C207: F0 05     BEQ @bra_C20E_skip                           ; If vGameInterruptEvent == 0x81
C - - - - - 0x01C219 07:C209: 20 8D EF  JSR sub_EF8D_clear_Zenigata_timer            ;
C - - - - - 0x01C21C 07:C20C: A9 FC     LDA #$FC                                     ; mask #2 (arrest)
@bra_C20E_skip:
C - - - - - 0x01C21E 07:C20E: 38        SEC                                          ; to preserve bits when shifted
@bra_C20F_repeat:
C - - - - - 0x01C21F 07:C20F: 2A        ROL                                          ;
C - - - - - 0x01C220 07:C210: 2A        ROL                                          ; get a character status (see vChrLiveStatus)
C - - - - - 0x01C221 07:C211: 88        DEY                                          ; switch to current character
C - - - - - 0x01C222 07:C212: 10 FB     BPL @bra_C20F_repeat                         ; If Register Y >= 0x00
C - - - - - 0x01C224 07:C214: 25 5F     AND vChrLiveStatus                           ;
C - - - - - 0x01C226 07:C216: 85 5F     STA vChrLiveStatus                           ; updates a status
C - - - - - 0x01C228 07:C218: 29 A8     AND #$A8                                     ;
C - - - - - 0x01C22A 07:C21A: F0 20     BEQ bra_C23C_all                             ; If all are fell or arrested
C - - - - - 0x01C22C 07:C21C: 24 6D     BIT vMovableChrStatus                        ;
C - - - - - 0x01C22E 07:C21E: 10 0C     BPL bra_C22C_skip                            ; If the character didn't move in the water
C - - - - - 0x01C230 07:C220: A5 47     LDA vTempNoSubLevel                          ;
C - - - - - 0x01C232 07:C222: 85 46     STA vNoRoom                                  ; restores
C - - - - - 0x01C234 07:C224: A5 67     LDA vTempLowChrPosX                          ;
C - - - - - 0x01C236 07:C226: 85 66     STA vLowChrPosX                              ; restores
C - - - - - 0x01C238 07:C228: A5 69     LDA vTempHighChrPosX                         ;
C - - - - - 0x01C23A 07:C22A: 85 68     STA vHighChrPosX                             ; restores
bra_C22C_skip:
C - - - - - 0x01C23C 07:C22C: A5 39     LDA vGameInterruptEvent                      ;
C - - - - - 0x01C23E 07:C22E: C9 80     CMP #$80                                     ; CONSTANT - to select the character (the character is arrested)
C - - - - - 0x01C240 07:C230: F0 03     BEQ bra_C235_to_start                        ; If vGameInterruptEvent == 0x80
C - - - - - 0x01C242 07:C232: 20 19 B3  JSR sub_B319_hide_character_in_room          ;
bra_C235_to_start:
C - - - - - 0x01C245 07:C235: A5 46     LDA vNoRoom                                  ; 
C - - - - - 0x01C247 07:C237: 85 C4     STA vCheckpoint                              ; assigned
C - - - - - 0x01C249 07:C239: 4C 95 C0  JMP loc_C095_repeat_waiting_select_character ;

bra_C23C_all:
C - - - - - 0x01C24C 07:C23C: A5 5E     LDA vNoLevel                              ;
C - - - - - 0x01C24E 07:C23E: CD 09 01  CMP v_last_level                          ;
C - - - - - 0x01C251 07:C241: 90 03     BCC @bra_C246_skip                        ; If vNoLevel < vLastLevel
C - - - - - 0x01C253 07:C243: 8D 09 01  STA v_last_level                          ; updates
@bra_C246_skip:
C - - - - - 0x01C256 07:C246: A9 20     LDA #$20                                  ; CONSTANT - Death by fall
C - - - - - 0x01C258 07:C248: 85 3B     STA vSharedGameStatus                     ;
C - - - - - 0x01C25A 07:C24A: A9 00     LDA #$00                                  ;
C - - - - - 0x01C25C 07:C24C: 85 2C     STA vLowCounter                           ; reset
C - - - - - 0x01C25E 07:C24E: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi     ;
@bra_C251_repeat:
C - - - - - 0x01C261 07:C251: A5 2C     LDA vLowCounter                           ;
C - - - - - 0x01C263 07:C253: C9 40     CMP #$40                                  ;
C - - - - - 0x01C265 07:C255: 90 FA     BCC @bra_C251_repeat                      ; If vLowCounter < 0x40 (waiting 64 frames)
C - - - - - 0x01C267 07:C257: A9 06     LDA #$06                                  ; CONSTANT - fake index for the below code
C - - - - - 0x01C269 07:C259: 85 24     STA vMenuDemoIndex                        ;
loc_C25B_the_short_end:
C - - - - - 0x01C26B 07:C25B: 20 13 C3  JSR sub_C313_screen_off                   ;
C - - - - - 0x01C26E 07:C25E: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi  ;
C - - - - - 0x01C271 07:C261: 20 0D B8  JSR sub_B80D_init_final_score_screen      ;
C - - - - - 0x01C274 07:C264: A9 00     LDA #$00                                  ;
C - - - - - 0x01C276 07:C266: 85 27     STA vLowViewPortPosX                      ; ViewPort adjusts to the start of the screen
C - - - - - 0x01C278 07:C268: 85 30     STA vClearMessageCounter                  ; clear
C - - - - - 0x01C27A 07:C26A: 8D 31 06  STA vHighPpuAddress                       ; clear, 2nd mode
C - - - - - 0x01C27D 07:C26D: 8D 7B 06  STA vPpuAddrDataCache                     ; put empty cache
C - - - - - 0x01C280 07:C270: 85 C8     STA vMessageInProgress                    ; clear
C - - - - - 0x01C282 07:C272: A9 90     LDA #$90                                  ; CONSTANT - Generate an NMI at the start of the vblank + Background pattern table address: $1000
C - - - - - 0x01C284 07:C274: 85 26     STA vPpuCtrlSettings                      ;
C - - - - - 0x01C286 07:C276: A9 93     LDA #$93                                  ; CONSTANT - Last cutscene (with Clarisse Cagliostro)
C - - - - - 0x01C288 07:C278: 85 3B     STA vSharedGameStatus                     ;
C - - - - - 0x01C28A 07:C27A: A9 0F     LDA #$0F                                  ; CONSTANT - Game Over Scene
C - - - - - 0x01C28C 07:C27C: 85 D8     STA vFinalSceneNo                         ;
C - - - - - 0x01C28E 07:C27E: 20 F4 C3  JSR sub_C3F4_set_OAM_address              ;
C - - - - - 0x01C291 07:C281: 20 0F C3  JSR sub_C30F_screen_on                    ;
C - - - - - 0x01C294 07:C284: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi     ;
@bra_C287_wait:
C - - - - - 0x01C297 07:C287: A5 D8     LDA vFinalSceneNo                         ;
C - - - - - 0x01C299 07:C289: C9 11     CMP #$11                                  ; CONSTANT - After waiting for pressing in game over 
C - - - - - 0x01C29B 07:C28B: 90 FA     BCC @bra_C287_wait                        ; If vSceneNo < 0x11
loc_C28D_next_menu_demo:
C D 2 - - - 0x01C29D 07:C28D: 20 13 C3  JSR sub_C313_screen_off                   ;
C - - - - - 0x01C2A0 07:C290: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi  ;
C - - - - - 0x01C2A3 07:C293: E6 24     INC vMenuDemoIndex                        ;
C - - - - - 0x01C2A5 07:C295: A5 24     LDA vMenuDemoIndex                        ;
C - - - - - 0x01C2A7 07:C297: C9 07     CMP #$07                                  ; CONSTANT - Stop demo
C - - - - - 0x01C2A9 07:C299: 90 08     BCC @bra_C2A3_skip                        ; If vMenuDemoIndex < 0x07
C - - - - - 0x01C2AB 07:C29B: A9 FF     LDA #$FF                                  ; CONSTANT - Cutscene
C - - - - - 0x01C2AD 07:C29D: 85 37     STA vCutscenesMode                        ;
C - - - - - 0x01C2AF 07:C29F: A9 00     LDA #$00                                  ; CONSTANT - 'The menu' index
C - - - - - 0x01C2B1 07:C2A1: 85 24     STA vMenuDemoIndex                        ;
@bra_C2A3_skip:
C - - - - - 0x01C2B3 07:C2A3: 4C 46 C0  JMP loc_C046_repeat_starting_mode         ;

loc_C2A6_final_process:
@bra_C2A6_wait:
C D 2 - - - 0x01C2B6 07:C2A6: A5 D8     LDA vFinalSceneNo                         ;
C - - - - - 0x01C2B8 07:C2A8: C9 0A     CMP #$0A                                  ; CONSTANT - Last cutscene (with Clarisse Cagliostro)
C - - - - - 0x01C2BA 07:C2AA: 90 FA     BCC @bra_C2A6_wait                        ; If vSceneNo < 0x0A
C - - - - - 0x01C2BC 07:C2AC: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi  ;
C - - - - - 0x01C2BF 07:C2AF: 20 13 C3  JSR sub_C313_screen_off                   ;
C - - - - - 0x01C2C2 07:C2B2: 20 DB B7  JSR sub_B7DB_prepare_last_cutscene        ; bank 06, page 2
C - - - - - 0x01C2C5 07:C2B5: A9 93     LDA #$93                                  ; CONSTANT - Last cutscene (with Clarisse Cagliostro)
C - - - - - 0x01C2C7 07:C2B7: 85 3B     STA vSharedGameStatus                     ;
C - - - - - 0x01C2C9 07:C2B9: 20 F4 C3  JSR sub_C3F4_set_OAM_address              ;
C - - - - - 0x01C2CC 07:C2BC: 20 0F C3  JSR sub_C30F_screen_on                    ;
C - - - - - 0x01C2CF 07:C2BF: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi     ;
@bra_C2C2_wait:
C - - - - - 0x01C2D2 07:C2C2: A5 D8     LDA vFinalSceneNo                         ;
C - - - - - 0x01C2D4 07:C2C4: C9 0C     CMP #$0C                                  ; CONSTANT - The end and Hi-Score
C - - - - - 0x01C2D6 07:C2C6: 90 FA     BCC @bra_C2C2_wait                        ; If vSceneNo < 0x0C
C - - - - - 0x01C2D8 07:C2C8: 20 13 C3  JSR sub_C313_screen_off                   ;
C - - - - - 0x01C2DB 07:C2CB: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi  ;
C - - - - - 0x01C2DE 07:C2CE: A9 30     LDA #$30                                  ; CONSTANT - 3000 Score
C - - - - - 0x01C2E0 07:C2D0: 20 60 C9  JSR sub_C960_add_score2                   ;
C - - - - - 0x01C2E3 07:C2D3: 20 0D B8  JSR sub_B80D_init_final_score_screen      ;
C - - - - - 0x01C2E6 07:C2D6: 20 F4 C3  JSR sub_C3F4_set_OAM_address              ;
C - - - - - 0x01C2E9 07:C2D9: 20 0F C3  JSR sub_C30F_screen_on                    ;
C - - - - - 0x01C2EC 07:C2DC: 20 FF C2  JSR sub_C2FF_update_ppu_ctrl_with_nmi     ;
@bra_C2DF_wait:
C - - - - - 0x01C2EF 07:C2DF: A5 D8     LDA vFinalSceneNo                         ;
C - - - - - 0x01C2F1 07:C2E1: C9 0E     CMP #$0E                                  ; CONSTANT - the button 'B' or 'A' is pressed after finishing a game
C - - - - - 0x01C2F3 07:C2E3: 90 FA     BCC @bra_C2DF_wait                        ; If vSceneNo < 0x0E
C - - - - - 0x01C2F5 07:C2E5: A9 00     LDA #$00                                  ;
C - - - - - 0x01C2F7 07:C2E7: 8D 09 01  STA v_last_level                          ; clear
C - - - - - 0x01C2FA 07:C2EA: 4C 00 C0  JMP vec_C000_RESET                        ; restart a game

sub_C2ED_prepare_character_in_water:
C - - - - - 0x01C2FD 07:C2ED: A5 46     LDA vNoRoom                            ;
C - - - - - 0x01C2FF 07:C2EF: C9 24     CMP #$24                               ; CONSTANT - level 3.0 (water room)
C - - - - - 0x01C301 07:C2F1: 90 0B     BCC bra_C2FE_RTS                       ; If vNoRoom < 0x24
C - - - - - 0x01C303 07:C2F3: C9 42     CMP #$42                               ; CONSTANT - level 4, map 1 (B2-D2) (0x41 - water room)
C - - - - - 0x01C305 07:C2F5: B0 07     BCS bra_C2FE_RTS                       ; If vNoRoom >= 0x42
C - - - - - 0x01C307 07:C2F7: A9 80     LDA #$80                               ; CONSTANT - the character is moving in the water 
C - - - - - 0x01C309 07:C2F9: 85 6D     STA vMovableChrStatus                  ;
C - - - - - 0x01C30B 07:C2FB: 4C DF CC  JMP loc_CCDF_set_apparatus_counter     ;

bra_C2FE_RTS:
C - - - - - 0x01C30E 07:C2FE: 60        RTS                                    ;

sub_C2FF_update_ppu_ctrl_with_nmi:
C - - - - - 0x01C30F 07:C2FF: A5 26     LDA vPpuCtrlSettings ;
C - - - - - 0x01C311 07:C301: 09 80     ORA #$80             ; CONSTANT - Generate an NMI at the start of the vblank
C - - - - - 0x01C313 07:C303: D0 04     BNE bra_C309_skip    ; Always true

sub_C305_update_ppu_ctrl_with_no_nmi:
C - - - - - 0x01C315 07:C305: A5 26     LDA vPpuCtrlSettings ;
C - - - - - 0x01C317 07:C307: 29 7F     AND #$7F             ; 
bra_C309_skip:
C - - - - - 0x01C319 07:C309: 85 26     STA vPpuCtrlSettings ;
C - - - - - 0x01C31B 07:C30B: 8D 00 20  STA PPU_CTRL         ;
C - - - - - 0x01C31E 07:C30E: 60        RTS                  ;

sub_C30F_screen_on:
loc_C30F_screen_on:
C D 2 - - - 0x01C31F 07:C30F: A9 1E     LDA #$1E          ; see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
C - - - - - 0x01C321 07:C311: D0 02     BNE bra_C315_skip ; Always true

sub_C313_screen_off:
C - - - - - 0x01C323 07:C313: A9 00     LDA #$00          ; see https://www.nesdev.org/wiki/PPU_registers#Mask_($2001)_%3E_write
bra_C315_skip:
C - - - - - 0x01C325 07:C315: 8D 01 20  STA PPU_MASK      ;
C - - - - - 0x01C328 07:C318: 60        RTS               ;

sub_C319_fill_ppu:
C - - - - - 0x01C329 07:C319: A9 01     LDA #$01                                 ; CONSTANT - A white tile
C - - - - - 0x01C32B 07:C31B: D0 02     BNE bra_C31F_skip                        ; Always true

sub_C31D_clear_ppu:                                                              
C - - - - - 0x01C32D 07:C31D: A9 00     LDA #$00                                 ; CONSTANT - A black tile
bra_C31F_skip:                                                                   
C - - - - - 0x01C32F 07:C31F: 85 12     STA $0012                                ; set a tile value
C - - - - - 0x01C331 07:C321: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi ;
C - - - - - 0x01C334 07:C324: 20 13 C3  JSR sub_C313_screen_off                  ;
C - - - - - 0x01C337 07:C327: AD 02 20  LDA PPU_STATUS                           ; Read PPU status to reset the high/low latch
C - - - - - 0x01C33A 07:C32A: A9 20     LDA #$20                                 ; For the first ppu data ($2000)
C - - - - - 0x01C33C 07:C32C: 20 31 C3  JSR sub_C331_store_ppu_data              ;
C - - - - - 0x01C33F 07:C32F: A9 24     LDA #$24                                 ; For the second ppu data  ($2400)
sub_C331_store_ppu_data:
C - - - - - 0x01C341 07:C331: 8D 06 20  STA PPU_ADDRESS             ;
C - - - - - 0x01C344 07:C334: A9 00     LDA #$00                    ;
C - - - - - 0x01C346 07:C336: 8D 06 20  STA PPU_ADDRESS             ;
C - - - - - 0x01C349 07:C339: A8        TAY                         ; set loop counter (y = 0)
C - - - - - 0x01C34A 07:C33A: A2 03     LDX #$03                    ; set loop counter (x)
C - - - - - 0x01C34C 07:C33C: A5 12     LDA $0012                   ; put a tile value
@bra_C33E_loop:                                                     ; loop by x, y
C - - - - - 0x01C34E 07:C33E: 8D 07 20  STA PPU_DATA                ; [$2000-$22FF] or [$2400-$26FF] in $0012
C - - - - - 0x01C351 07:C341: C8        INY                         ; increment counter (y)
C - - - - - 0x01C352 07:C342: D0 FA     BNE @bra_C33E_loop          ; If Register Y != 0
C - - - - - 0x01C354 07:C344: CA        DEX                         ; decrement counter (x)
C - - - - - 0x01C355 07:C345: D0 F7     BNE @bra_C33E_loop          ; If Register X != 0
@bra_C347_loop:                                                     ; loop by y
C - - - - - 0x01C357 07:C347: 8D 07 20  STA PPU_DATA                ; [$2300-$23BF] or [$2700-$27BF] in $0012
C - - - - - 0x01C35A 07:C34A: C8        INY                         ; increment counter (y)
C - - - - - 0x01C35B 07:C34B: C0 C0     CPY #$C0                    ;
C - - - - - 0x01C35D 07:C34D: 90 F8     BCC @bra_C347_loop          ; If Register Y < 0xC0
C - - - - - 0x01C35F 07:C34F: A9 00     LDA #$00                    ; put a tile value
@bra_C351_loop:                                                     ; loop by y
C - - - - - 0x01C361 07:C351: 8D 07 20  STA PPU_DATA                ; [$23C0-$23FF] or [$27C0-$27FF] in 0x00
C - - - - - 0x01C364 07:C354: C8        INY                         ; increment counter (y)
C - - - - - 0x01C365 07:C355: D0 FA     BNE @bra_C351_loop          ; If Register Y != 0
C - - - - - 0x01C367 07:C357: 60        RTS                         ;

sub_C358_clear_OAM:
C - - - - - 0x01C368 07:C358: A2 00     LDX #$00                 ; set loop counter
C - - - - - 0x01C36A 07:C35A: A0 00     LDY #$00                 ; set a sprite position
C - - - - - 0x01C36C 07:C35C: A9 F0     LDA #$F0                 ; an assigned value
@bra_C35E_loop:                                                  ; loop by x
C - - - - - 0x01C36E 07:C35E: 9D 00 07  STA vStartOAM,X          ; OAM in 0F XX XX XX 0F XX XX XX 0F XX XX XX 0F ...
C - - - - - 0x01C371 07:C361: 99 B7 06  STA v_sprite_magics,Y    ; [0x06B7-0x06F6] in 0xF0
C - - - - - 0x01C374 07:C364: C8        INY                      ; next a sprite position
C - - - - - 0x01C375 07:C365: E8        INX                      ; To 2nd sprite data byte
C - - - - - 0x01C376 07:C366: E8        INX                      ; To 3rd sprite data byte
C - - - - - 0x01C377 07:C367: E8        INX                      ; To 4th sprite data byte
C - - - - - 0x01C378 07:C368: E8        INX                      ; To 1st next sprite data byte
C - - - - - 0x01C379 07:C369: D0 F3     BNE @bra_C35E_loop       ; If Register X != 0
C - - - - - 0x01C37B 07:C36B: 86 43     STX vCurrentNumberSprite ; Store 0x00
C - - - - - 0x01C37D 07:C36D: 8E F7 06  STX vShiftSpriteMagic    ; Store 0x00
C - - - - - 0x01C380 07:C370: 60        RTS                      ;

loc_C371_update_palette:
C D 2 - - - 0x01C381 07:C371: A9 3F     LDA #$3F                 ;
C - - - - - 0x01C383 07:C373: 8D 06 20  STA PPU_ADDRESS          ;
C - - - - - 0x01C386 07:C376: A9 00     LDA #$00                 ;
C - - - - - 0x01C388 07:C378: 8D 06 20  STA PPU_ADDRESS          ; PPU address is 0x3F00
C - - - - - 0x01C38B 07:C37B: A8        TAY                      ; set loop counter (y=0)
@bra_C37C_loop:                                                  ; loop by y (4 times)
C - - - - - 0x01C38C 07:C37C: B9 00 06  LDA vCachePalette,Y      ;
C - - - - - 0x01C38F 07:C37F: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C392 07:C382: B9 01 06  LDA vCachePalette + 1,Y  ;
C - - - - - 0x01C395 07:C385: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C398 07:C388: B9 02 06  LDA vCachePalette + 2,Y  ;
C - - - - - 0x01C39B 07:C38B: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C39E 07:C38E: B9 03 06  LDA vCachePalette + 3,Y  ;
C - - - - - 0x01C3A1 07:C391: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C3A4 07:C394: B9 04 06  LDA vCachePalette + 4,Y  ;
C - - - - - 0x01C3A7 07:C397: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C3AA 07:C39A: B9 05 06  LDA vCachePalette + 5,Y  ;
C - - - - - 0x01C3AD 07:C39D: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C3B0 07:C3A0: B9 06 06  LDA vCachePalette + 6,Y  ;
C - - - - - 0x01C3B3 07:C3A3: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C3B6 07:C3A6: B9 07 06  LDA vCachePalette + 7,Y  ;
C - - - - - 0x01C3B9 07:C3A9: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01C3BC 07:C3AC: 98        TYA                      ;
C - - - - - 0x01C3BD 07:C3AD: 18        CLC                      ;
C - - - - - 0x01C3BE 07:C3AE: 69 08     ADC #$08                 ; increment 8
C - - - - - 0x01C3C0 07:C3B0: A8        TAY                      ;
C - - - - - 0x01C3C1 07:C3B1: C0 20     CPY #$20                 ;
C - - - - - 0x01C3C3 07:C3B3: 90 C7     BCC @bra_C37C_loop       ; If Register Y < 0x20 (a loop condition)
C - - - - - 0x01C3C5 07:C3B5: A9 3F     LDA #$3F                 ;
C - - - - - 0x01C3C7 07:C3B7: 8D 06 20  STA PPU_ADDRESS          ;
C - - - - - 0x01C3CA 07:C3BA: A9 00     LDA #$00                 ; 
C - - - - - 0x01C3CC 07:C3BC: 8D 06 20  STA PPU_ADDRESS          ; 
C - - - - - 0x01C3CF 07:C3BF: 8D 06 20  STA PPU_ADDRESS          ;
C - - - - - 0x01C3D2 07:C3C2: 8D 06 20  STA PPU_ADDRESS          ; see https://www.nesdev.org/wiki/PPU_registers#Palette_corruption
C - - - - - 0x01C3D5 07:C3C5: 60        RTS                      ;

sub_C3C6_update_ppu_params_:
C - - - - - 0x01C3D6 07:C3C6: A5 26     LDA vPpuCtrlSettings  ;
C - - - - - 0x01C3D8 07:C3C8: 8D 00 20  STA PPU_CTRL          ;
C - - - - - 0x01C3DB 07:C3CB: AD 02 20  LDA PPU_STATUS        ; read to reset PPU latch
C - - - - - 0x01C3DE 07:C3CE: A5 27     LDA vLowViewPortPosX  ;
C - - - - - 0x01C3E0 07:C3D0: 8D 05 20  STA PPU_SCROLL        ;
C - - - - - 0x01C3E3 07:C3D3: A5 29     LDA vLowViewPortPosY  ;
C - - - - - 0x01C3E5 07:C3D5: 8D 05 20  STA PPU_SCROLL        ;
C - - - - - 0x01C3E8 07:C3D8: 60        RTS                   ;

sub_C3D9_increment_nmi_counter:
C - - - - - 0x01C3E9 07:C3D9: E6 2B     INC v_nmi_counter ;
C - - - - - 0x01C3EB 07:C3DB: 60        RTS               ; 

C - - - - - 0x01C3EC 07:C3DC: A5 2B     LDA v_nmi_counter      ; !(UNUSED), not used
C - - - - - 0x01C3EE 07:C3DE: 29 03     AND #$03               ; !(UNUSED), not used
C - - - - - 0x01C3F0 07:C3E0: 6A        ROR                    ; !(UNUSED), not used
C - - - - - 0x01C3F1 07:C3E1: 6A        ROR                    ; !(UNUSED), not used
C - - - - - 0x01C3F2 07:C3E2: 6A        ROR                    ; !(UNUSED), not used
C - - - - - 0x01C3F3 07:C3E3: AA        TAX                    ; !(UNUSED), not used
C - - - - - 0x01C3F4 07:C3E4: 8E 03 20  STX PPU_OAM_ADDR       ; !(UNUSED), not used
C - - - - - 0x01C3F7 07:C3E7: A0 40     LDY #$40               ; !(UNUSED), not used
@bra_C3E9_not_used:
C - - - - - 0x01C3F9 07:C3E9: BD 00 07  LDA vStartOAM,X        ; !(UNUSED), not used
C - - - - - 0x01C3FC 07:C3EC: 8D 04 20  STA PPU_OAM_DATA       ; !(UNUSED), not used
C - - - - - 0x01C3FF 07:C3EF: E8        INX                    ; !(UNUSED), not used
C - - - - - 0x01C400 07:C3F0: 88        DEY                    ; !(UNUSED), not used
C - - - - - 0x01C401 07:C3F1: D0 F6     BNE @bra_C3E9_not_used ; !(UNUSED), not used
C - - - - - 0x01C403 07:C3F3: 60        RTS                    ; !(UNUSED), not used

sub_C3F4_set_OAM_address:
C - - - - - 0x01C404 07:C3F4: AD 02 20  LDA PPU_STATUS   ;
C - - - - - 0x01C407 07:C3F7: A9 00     LDA #$00         ;
C - - - - - 0x01C409 07:C3F9: 8D 03 20  STA PPU_OAM_ADDR ; DMA is used instead
C - - - - - 0x01C40C 07:C3FC: A9 07     LDA #$07         ;
C - - - - - 0x01C40E 07:C3FE: 8D 14 40  STA OAM_DMA      ; set 0x0700-0x07FF
C - - - - - 0x01C411 07:C401: 60        RTS              ;

loc_C402_clear_sound_parts:
sub_C402_clear_sound_parts:
C D 2 - - - 0x01C412 07:C402: A9 FF     LDA #$FF              ;
C - - - - - 0x01C414 07:C404: 85 FD     STA vSoundRoomIndex   ; set the fake index
C - - - - - 0x01C416 07:C406: A0 00     LDY #$00              ; set loop counter
C - - - - - 0x01C418 07:C408: 8C 07 04  STY vSoundNonUsed     ; clear
C - - - - - 0x01C41B 07:C40B: 8C 15 40  STY APU_STATUS        ; clear
C - - - - - 0x01C41E 07:C40E: 8C 00 04  STY vApuChannelStatus ; clear
@bra_C411_loop:
C - - - - - 0x01C421 07:C411: A9 FF     LDA #$FF              ;
C - - - - - 0x01C423 07:C413: 99 10 04  STA vSoundRowIndex,Y  ;
C - - - - - 0x01C426 07:C416: 98        TYA                   ;
C - - - - - 0x01C427 07:C417: 18        CLC                   ; 
C - - - - - 0x01C428 07:C418: 69 15     ADC #$15              ; CONSTANT: Sound row step
C - - - - - 0x01C42A 07:C41A: A8        TAY                   ;
C - - - - - 0x01C42B 07:C41B: C9 A8     CMP #$A8              ; 8 iterations for sound row
C - - - - - 0x01C42D 07:C41D: D0 F2     BNE @bra_C411_loop    ; If Register A != 0xA8
C - - - - - 0x01C42F 07:C41F: 60        RTS                   ;

; In: Register A - a track number
sub_C420_add_sound_effect:
loc_C420_add_sound_effect:
C D 2 - - - 0x01C430 07:C420: 85 12     STA $0012                     ;
C - - - - - 0x01C432 07:C422: 8A        TXA                           ;
C - - - - - 0x01C433 07:C423: 48        PHA                           ; store x
C - - - - - 0x01C434 07:C424: 98        TYA                           ;
C - - - - - 0x01C435 07:C425: 48        PHA                           ; store y
C - - - - - 0x01C436 07:C426: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1 ;
C - - - - - 0x01C439 07:C429: A9 00     LDA #$00                      ; Resolve an address: $8000 + $0012 * 4
C - - - - - 0x01C43B 07:C42B: 06 12     ASL $0012                     ;
C - - - - - 0x01C43D 07:C42D: 2A        ROL                           ;
C - - - - - 0x01C43E 07:C42E: 06 12     ASL $0012                     ;
C - - - - - 0x01C440 07:C430: 2A        ROL                           ;
C - - - - - 0x01C441 07:C431: 85 13     STA $0013                     ;
C - - - - - 0x01C443 07:C433: A9 00     LDA #$00                      ;
C - - - - - 0x01C445 07:C435: 18        CLC                           ;
C - - - - - 0x01C446 07:C436: 65 12     ADC $0012                     ;
C - - - - - 0x01C448 07:C438: 85 12     STA $0012                     ; Low address
C - - - - - 0x01C44A 07:C43A: A9 80     LDA #$80                      ; 
C - - - - - 0x01C44C 07:C43C: 65 13     ADC $0013                     ; High address
C - - - - - 0x01C44E 07:C43E: 85 13     STA $0013                     ; 
C - - - - - 0x01C450 07:C440: A0 00     LDY #$00                      ; to 1 byte of 4
C - - - - - 0x01C452 07:C442: B1 12     LDA ($0012),Y                 ;
C - - - - - 0x01C454 07:C444: AA        TAX                           ;
C - - - - - 0x01C455 07:C445: C8        INY                           ; to 2 byte of 4
C - - - - - 0x01C456 07:C446: B1 12     LDA ($0012),Y                 ;
C - - - - - 0x01C458 07:C448: 9D 11 04  STA vSoundRowComplexChannel,X ;
C - - - - - 0x01C45B 07:C44B: C8        INY                           ; to 3 byte of 4
C - - - - - 0x01C45C 07:C44C: B1 12     LDA ($0012),Y                 ;
C - - - - - 0x01C45E 07:C44E: 9D 12 04  STA vSoundRowTrackLow,X       ;
C - - - - - 0x01C461 07:C451: C8        INY                           ; to 4 byte of 4
C - - - - - 0x01C462 07:C452: B1 12     LDA ($0012),Y                 ;
C - - - - - 0x01C464 07:C454: 9D 13 04  STA vSoundRowTrackHigh,X      ;
C - - - - - 0x01C467 07:C457: A9 00     LDA #$00                      ;
C - - - - - 0x01C469 07:C459: 9D 10 04  STA vSoundRowIndex,X          ; reset an index
C - - - - - 0x01C46C 07:C45C: A9 06     LDA #$06                      ;
C - - - - - 0x01C46E 07:C45E: 8D 00 80  STA MMC3_Bank_select          ;
C - - - - - 0x01C471 07:C461: AD B5 06  LDA vBankData                 ;
C - - - - - 0x01C474 07:C464: 8D 01 80  STA MMC3_Bank_data            ; switch vBankData (PRG) in 0x8000-09FFF
C - - - - - 0x01C477 07:C467: 68        PLA                           ;
C - - - - - 0x01C478 07:C468: A8        TAY                           ; retrieve y
C - - - - - 0x01C479 07:C469: 68        PLA                           ;
C - - - - - 0x01C47A 07:C46A: AA        TAX                           ; retrieve x
C - - - - - 0x01C47B 07:C46B: 60        RTS                           ;

sub_C46C_simulate_presses_in_demo:
C - - - - - 0x01C47C 07:C46C: A5 1C     LDA vBtnPressedInGame           ;
C - - - - - 0x01C47E 07:C46E: 85 1D     STA vCopy001C                   ; Store for the double click protection
C - - - - - 0x01C480 07:C470: A5 37     LDA vCutscenesMode              ;
C - - - - - 0x01C482 07:C472: 10 5C     BPL bra_C4D0_update_btn_pressed ; Branch If in game
C - - - - - 0x01C484 07:C474: 20 46 EF  JSR sub_EF46_switch_bank_4_p1   ;
C - - - - - 0x01C487 07:C477: A5 22     LDA vDemoBtnPrsdCounter         ;
C - - - - - 0x01C489 07:C479: D0 1E     BNE @bra_C499_skip              ; If vDemoBtnPrsdCounter != 0x00
C - - - - - 0x01C48B 07:C47B: A6 24     LDX vMenuDemoIndex              ; If vMenuDemoIndex == 0x00 then we put the garbage
C - - - - - 0x01C48D 07:C47D: CA        DEX                             ;
C - - - - - 0x01C48E 07:C47E: 8A        TXA                             ;
C - - - - - 0x01C48F 07:C47F: 0A        ASL                             ; *2, because the addresses have 2 bytes
C - - - - - 0x01C490 07:C480: AA        TAX                             ;
C - - - - - 0x01C491 07:C481: BD 0E 80  LDA tbl_demo_btn_pressed,X      ;
C - - - - - 0x01C494 07:C484: 85 00     STA $0000                       ; Low address
C - - - - - 0x01C496 07:C486: BD 0F 80  LDA tbl_demo_btn_pressed + 1,X  ;
C - - - - - 0x01C499 07:C489: 85 01     STA $0001                       ; High address
C - - - - - 0x01C49B 07:C48B: A4 23     LDY vDemoBtnPrsdIndex           ; restore the table index
C - - - - - 0x01C49D 07:C48D: B1 00     LDA ($0000),Y                   ;
C - - - - - 0x01C49F 07:C48F: 85 22     STA vDemoBtnPrsdCounter         ;
C - - - - - 0x01C4A1 07:C491: C8        INY                             ; increment the table index (to 2 byte)
C - - - - - 0x01C4A2 07:C492: B1 00     LDA ($0000),Y                   ;
C - - - - - 0x01C4A4 07:C494: 85 1C     STA vBtnPressedInGame           ;
C - - - - - 0x01C4A6 07:C496: C8        INY                             ; increment the table index (to 1 byte)
C - - - - - 0x01C4A7 07:C497: 84 23     STY vDemoBtnPrsdIndex           ; store  the table index
@bra_C499_skip:
C - - - - - 0x01C4A9 07:C499: C6 22     DEC vDemoBtnPrsdCounter         ; decrement a counter
C - - - - - 0x01C4AB 07:C49B: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01C4AD 07:C49D: 29 0F     AND #$0F                        ;
C - - - - - 0x01C4AF 07:C49F: D0 06     BNE bra_C4A7_read_io_controller ; Branch if vLowCounter doesn't multiple of 16
C - - - - - 0x01C4B1 07:C4A1: A9 02     LDA #BIT_BUTTON_B               ;
C - - - - - 0x01C4B3 07:C4A3: 45 1C     EOR vBtnPressedInGame           ; addes a shoot every 16th frame unless otherwise specified
C - - - - - 0x01C4B5 07:C4A5: 85 1C     STA vBtnPressedInGame           ;
bra_C4A7_read_io_controller:
sub_C4A7_read_io_controller:
C - - - - - 0x01C4B7 07:C4A7: A5 1E     LDA v_player1_btn_pressed ;
C - - - - - 0x01C4B9 07:C4A9: 85 21     STA v_last_p1_btn_pressed ; store a last button state (player1)
C - - - - - 0x01C4BB 07:C4AB: A5 1F     LDA v_player2_btn_pressed ;
C - - - - - 0x01C4BD 07:C4AD: 85 20     STA v_last_p2_btn_pressed ; store a last button state (player2)
C - - - - - 0x01C4BF 07:C4AF: A2 01     LDX #$01                  ; 
C - - - - - 0x01C4C1 07:C4B1: 8E 16 40  STX JOY1                  ; Writes to instruct both controllers to start recording the current states of all pressed buttons)
C - - - - - 0x01C4C4 07:C4B4: CA        DEX                       ; 0x01 -> 0x00
C - - - - - 0x01C4C5 07:C4B5: 8E 16 40  STX JOY1                  ; Writes to stop recording button states so they can be read out
C - - - - - 0x01C4C8 07:C4B8: A2 08     LDX #$08                  ; The count of the buttons
@bra_C4BA_loop:                                                   ; loop by x
C - - - - - 0x01C4CA 07:C4BA: AD 16 40  LDA JOY1                  ;
C - - - - - 0x01C4CD 07:C4BD: 29 03     AND #$03                  ;
C - - - - - 0x01C4CF 07:C4BF: C9 01     CMP #$01                  ;
C - - - - - 0x01C4D1 07:C4C1: 66 1E     ROR v_player1_btn_pressed ;
C - - - - - 0x01C4D3 07:C4C3: AD 17 40  LDA JOY2                  ;
C - - - - - 0x01C4D6 07:C4C6: 29 03     AND #$03                  ;
C - - - - - 0x01C4D8 07:C4C8: C9 01     CMP #$01                  ;
C - - - - - 0x01C4DA 07:C4CA: 66 1F     ROR v_player2_btn_pressed ; Standard Read for 2 Controllers and Famicom (https://www.nesdev.org/wiki/Controller_reading_code)
C - - - - - 0x01C4DC 07:C4CC: CA        DEX                       ; decrement loop counter
C - - - - - 0x01C4DD 07:C4CD: D0 EB     BNE @bra_C4BA_loop        ; If Register X != 0
C - - - - - 0x01C4DF 07:C4CF: 60        RTS                       ;

bra_C4D0_update_btn_pressed:
C - - - - - 0x01C4E0 07:C4D0: 20 A7 C4  JSR sub_C4A7_read_io_controller ;
C - - - - - 0x01C4E3 07:C4D3: A5 1E     LDA v_player1_btn_pressed       ;
C - - - - - 0x01C4E5 07:C4D5: 85 1C     STA vBtnPressedInGame           ;
C - - - - - 0x01C4E7 07:C4D7: 60        RTS                             ;

sub_C4D8_selectMessagesChrBanks:
C - - - - - 0x01C4E8 07:C4D8: 20 F5 C4  JSR sub_C4F5_selectAllChrBanks ;
C - - - - - 0x01C4EB 07:C4DB: A5 3B     LDA vSharedGameStatus          ;  
C - - - - - 0x01C4ED 07:C4DD: 6A        ROR                            ;
C - - - - - 0x01C4EE 07:C4DE: 90 23     BCC bra_C503_RTS               ; Branch if no exist 'A screen with the message'
C - - - - - 0x01C4F0 07:C4E0: AD B6 06  LDA vChrBankData               ;
C - - - - - 0x01C4F3 07:C4E3: A2 01     LDX #$01                       ;
C - - - - - 0x01C4F5 07:C4E5: 8E 00 80  STX MMC3_Bank_select           ;
C - - - - - 0x01C4F8 07:C4E8: 8D 01 80  STA MMC3_Bank_data             ; switch 2 Kb CHR-bank (#XX) in $0800-$0FFF
C - - - - - 0x01C4FB 07:C4EB: CA        DEX                            ;
C - - - - - 0x01C4FC 07:C4EC: A9 38     LDA #$38                       ;
C - - - - - 0x01C4FE 07:C4EE: 8E 00 80  STX MMC3_Bank_select           ;
C - - - - - 0x01C501 07:C4F1: 8D 01 80  STA MMC3_Bank_data             ; switch 2 Kb CHR-bank (#38) in $0000-$07FF
C - - - - - 0x01C504 07:C4F4: 60        RTS                            ;

sub_C4F5_selectAllChrBanks:
C - - - - - 0x01C505 07:C4F5: A2 05     LDX #$05                  ; set loop counter
@bra_C4F7_loop:                                                   ; loop by x (6 times)
C - - - - - 0x01C507 07:C4F7: 8E 00 80  STX MMC3_Bank_select      ;
C - - - - - 0x01C50A 07:C4FA: BD AF 06  LDA vCacheChrBankSelect,X ;
C - - - - - 0x01C50D 07:C4FD: 8D 01 80  STA MMC3_Bank_data        ;
C - - - - - 0x01C510 07:C500: CA        DEX                       ; decrements loop counter
C - - - - - 0x01C511 07:C501: 10 F4     BPL @bra_C4F7_loop        ; If Register X >= 0
bra_C503_RTS:
C - - - - - 0x01C513 07:C503: 60        RTS                       ;

; In: Register A - %BBBAAAAA (B - for bank data)
; Out: Register A - high part of the address (0x8X or 0x9X)
sub_C504_switch_prg_8000:
C - - - - - 0x01C514 07:C504: 84 11     STY vCacheRam_11                     ;
C - - - - - 0x01C516 07:C506: 48        PHA                                  ; store A
C - - - - - 0x01C517 07:C507: 20 5E D0  JSR sub_accumulator_shift_right_by_5 ;
C - - - - - 0x01C51A 07:C50A: A8        TAY                                  ; a new bank data
C - - - - - 0x01C51B 07:C50B: A9 06     LDA #$06                             ;
C - - - - - 0x01C51D 07:C50D: 8D 00 80  STA MMC3_Bank_select                 ;
C - - - - - 0x01C520 07:C510: 8C 01 80  STY MMC3_Bank_data                   ; switch vBankData (PRG) in 0x8000-09FFF
C - - - - - 0x01C523 07:C513: 8C B5 06  STY vBankData                        ;
C - - - - - 0x01C526 07:C516: 68        PLA                                  ; retrieve A ($C506)
C - - - - - 0x01C527 07:C517: 29 1F     AND #$1F                             ;
C - - - - - 0x01C529 07:C519: 09 80     ORA #$80                             ;
C - - - - - 0x01C52B 07:C51B: A4 11     LDY vCacheRam_11                     ;
C - - - - - 0x01C52D 07:C51D: 60        RTS                                  ;

sub_C51E_update_ppu_and_screen:
C - - - - - 0x01C52E 07:C51E: 20 F5 C4  JSR sub_C4F5_selectAllChrBanks        ;
C - - - - - 0x01C531 07:C521: 20 F4 C3  JSR sub_C3F4_set_OAM_address          ;
C - - - - - 0x01C534 07:C524: 20 F3 D4  JSR sub_D4F3_update_palette_with_wait ;
C - - - - - 0x01C537 07:C527: A9 90     LDA #$90                              ; CONSTANT - Generate an NMI at the start of the vblank + Background pattern table address: $1000
C - - - - - 0x01C539 07:C529: 85 26     STA vPpuCtrlSettings                  ;
C - - - - - 0x01C53B 07:C52B: 8D 00 20  STA PPU_CTRL                          ;
C - - - - - 0x01C53E 07:C52E: AD 02 20  LDA PPU_STATUS                        ; Read PPU status to reset the high/low latch
C - - - - - 0x01C541 07:C531: A9 00     LDA #$00                              ;
C - - - - - 0x01C543 07:C533: 8D 05 20  STA PPU_SCROLL                        ; write X scroll-position <~ 0x00
C - - - - - 0x01C546 07:C536: 8D 05 20  STA PPU_SCROLL                        ; write Y scroll-position <~ 0x00
C - - - - - 0x01C549 07:C539: 4C 0F C3  JMP loc_C30F_screen_on                ;

sub_C53C_resolve_start_status:
C - - - - - 0x01C54C 07:C53C: A5 3D     LDA vStartStatus         ;
C - - - - - 0x01C54E 07:C53E: D0 0F     BNE bra_C54F_skip        ; If Register A != 0x00 (the message is typing)
C - - - - - 0x01C550 07:C540: A5 2C     LDA vLowCounter          ;
C - - - - - 0x01C552 07:C542: C9 40     CMP #$40                 ; A time before message is shown
C - - - - - 0x01C554 07:C544: D0 22     BNE bra_C568_RTS         ; If Register A != 0x40
C - - - - - 0x01C556 07:C546: E6 3D     INC vStartStatus         ; 0 + 1 = 1
C - - - - - 0x01C558 07:C548: A6 24     LDX vMenuDemoIndex       ;
C - - - - - 0x01C55A 07:C54A: E8        INX                      ; 
C - - - - - 0x01C55B 07:C54B: 8A        TXA                      ; put vMenuDemoIndex + 1 as a message number
C - - - - - 0x01C55C 07:C54C: 4C 34 B2  JMP loc_B234_add_message ;

bra_C54F_skip:
C - - - - - 0x01C55F 07:C54F: C9 01     CMP #$01                 ; CONSTANT - The starting cutscene, during typing the message
C - - - - - 0x01C561 07:C551: F0 0B     BEQ bra_C55E_skip        ; If Register A == 0x01
C - - - - - 0x01C563 07:C553: A9 80     LDA #$80                 ; A time between the message and menu
C - - - - - 0x01C565 07:C555: C5 2C     CMP vLowCounter          ; 
C - - - - - 0x01C567 07:C557: B0 0F     BCS bra_C568_RTS         ; If Register A > counter
C - - - - - 0x01C569 07:C559: A9 FF     LDA #$FF                 ; CONSTANT - Show the menu
C - - - - - 0x01C56B 07:C55B: 85 3D     STA vStartStatus         ;
C - - - - - 0x01C56D 07:C55D: 60        RTS                      ;

bra_C55E_skip:
C - - - - - 0x01C56E 07:C55E: A5 C8     LDA vMessageInProgress   ; 0x00 or 0x80
C - - - - - 0x01C570 07:C560: D0 06     BNE bra_C568_RTS         ; If vMessageInProgress != 0x00
C - - - - - 0x01C572 07:C562: 85 2D     STA v_high_counter       ; clear
C - - - - - 0x01C574 07:C564: 85 2C     STA vLowCounter          ; clear
C - - - - - 0x01C576 07:C566: E6 3D     INC vStartStatus         ; 1 + 1 = 2
bra_C568_RTS:
C - - - - - 0x01C578 07:C568: 60        RTS                      ;

sub_C569_main_menu_subroutine:
C - - - - - 0x01C579 07:C569: A9 08     LDA #BIT_BUTTON_START                 ; Switches a cutscene to a main title screen
C - - - - - 0x01C57B 07:C56B: 20 79 D0  JSR sub_D079_check_button_press       ;
C - - - - - 0x01C57E 07:C56E: F0 02     BEQ @bra_C572_skip                    ; Go to the branch If the button 'Start' isn't pressed
C - - - - - 0x01C580 07:C570: E6 3D     INC vCharacterSelectionCounter        ; Activates the character selection (see $B984, bank 06, page 2)
@bra_C572_skip:
C - - - - - 0x01C582 07:C572: 20 D5 C5  JSR sub_C5D5_display_menu_gun         ;
C - - - - - 0x01C585 07:C575: 20 2A BB  JSR sub_BB2A_solve_secret_codes       ;
C - - - - - 0x01C588 07:C578: A5 2D     LDA v_high_counter                    ;
C - - - - - 0x01C58A 07:C57A: F0 4E     BEQ bra_C5CA_RTS                      ; If vHighCounter == 0x00
C - - - - - 0x01C58C 07:C57C: C9 02     CMP #$02                              ;
C - - - - - 0x01C58E 07:C57E: F0 4A     BEQ bra_C5CA_RTS                      ; If vHighCounter == 0x02
C - - - - - 0x01C590 07:C580: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01C592 07:C582: C9 E0     CMP #$E0                              ;
C - - - - - 0x01C594 07:C584: 90 44     BCC bra_C5CA_RTS                      ; If vLowCounter < 0xE0
C - - - - - 0x01C596 07:C586: F0 43     BEQ bra_C5CB_sounds_of_a_gunshot      ; If vLowCounter == 0xE0
C - - - - - 0x01C598 07:C588: A0 00     LDY #$00                              ; relative address = 0x9D7B in 0x12-0x13 (1st frame)
C - - - - - 0x01C59A 07:C58A: C9 E4     CMP #$E4                              ;
C - - - - - 0x01C59C 07:C58C: 90 3C     BCC bra_C5CA_RTS                      ; If vLowCounter < 0xE4
C - - - - - 0x01C59E 07:C58E: F0 18     BEQ @bra_C5A8_prepare_for_gunshot     ; If vLowCounter == 0xE4
C - - - - - 0x01C5A0 07:C590: A0 02     LDY #$02                              ; relative address = 0x9D9B in 0x12-0x13 (2nd frame)
C - - - - - 0x01C5A2 07:C592: C9 E8     CMP #$E8                              ;
C - - - - - 0x01C5A4 07:C594: F0 12     BEQ @bra_C5A8_prepare_for_gunshot     ; If vLowCounter == 0xE8
C - - - - - 0x01C5A6 07:C596: A0 04     LDY #$04                              ; relative address = 0x9DBE in 0x12-0x13 (3rd frame)
C - - - - - 0x01C5A8 07:C598: C9 EC     CMP #$EC                              ;
C - - - - - 0x01C5AA 07:C59A: F0 0C     BEQ @bra_C5A8_prepare_for_gunshot     ; If vLowCounter == 0xEC
C - - - - - 0x01C5AC 07:C59C: A0 06     LDY #$06                              ; relative address = 0x9DD9 in 0x12-0x13 (4th frame)
C - - - - - 0x01C5AE 07:C59E: C9 F0     CMP #$F0                              ;
C - - - - - 0x01C5B0 07:C5A0: F0 06     BEQ @bra_C5A8_prepare_for_gunshot     ; If vLowCounter == 0xF0
C - - - - - 0x01C5B2 07:C5A2: A0 08     LDY #$08                              ; relative address = 0x9E00 in 0x12-0x13 (5th frame)
C - - - - - 0x01C5B4 07:C5A4: C9 F4     CMP #$F4                              ;
C - - - - - 0x01C5B6 07:C5A6: D0 22     BNE bra_C5CA_RTS                      ; If vLowCounter != 0xF4
@bra_C5A8_prepare_for_gunshot:
C - - - - - 0x01C5B8 07:C5A8: 20 46 EF  JSR sub_EF46_switch_bank_4_p1         ;
C - - - - - 0x01C5BB 07:C5AB: A2 33     LDX #$33                              ;
C - - - - - 0x01C5BD 07:C5AD: A9 00     LDA #$00                              ;
C - - - - - 0x01C5BF 07:C5AF: 20 41 CA  JSR sub_CA41_fill_ppu_addr_data_cache ; clear vPpuAddrDataCache (34 bytes)
C - - - - - 0x01C5C2 07:C5B2: B9 00 80  LDA MMC3_Bank_select,Y                ;
C - - - - - 0x01C5C5 07:C5B5: 85 12     STA $0012                             ; Low address (see $8000,Y in bank 04, page 1)
C - - - - - 0x01C5C7 07:C5B7: B9 01 80  LDA MMC3_Bank_data,Y                  ;
C - - - - - 0x01C5CA 07:C5BA: 85 13     STA $0013                             ; High address
C - - - - - 0x01C5CC 07:C5BC: A0 00     LDY #$00                              ; set loop counter
@bra_C5BE_loop:                                                               ; loop by y
C - - - - - 0x01C5CE 07:C5BE: B1 12     LDA ($0012),Y                         ; load a data cache
C - - - - - 0x01C5D0 07:C5C0: C9 FF     CMP #$FF                              ;
C - - - - - 0x01C5D2 07:C5C2: F0 06     BEQ bra_C5CA_RTS                      ; If Register A is 0xFF
C - - - - - 0x01C5D4 07:C5C4: 99 7B 06  STA vPpuAddrDataCache,Y               ; put a data cache
C - - - - - 0x01C5D7 07:C5C7: C8        INY                                   ; increments y
C - - - - - 0x01C5D8 07:C5C8: D0 F4     BNE @bra_C5BE_loop                    ; If Register X != 0
bra_C5CA_RTS:
C - - - - - 0x01C5DA 07:C5CA: 60        RTS                                   ;

bra_C5CB_sounds_of_a_gunshot:
C - - - - - 0x01C5DB 07:C5CB: A9 51     LDA #$51                      ; sound of a gunshot #1
C - - - - - 0x01C5DD 07:C5CD: 20 20 C4  JSR sub_C420_add_sound_effect ;
C - - - - - 0x01C5E0 07:C5D0: A9 52     LDA #$52                      ; sound of a gunshot #2
C - - - - - 0x01C5E2 07:C5D2: 4C 20 C4  JMP loc_C420_add_sound_effect ;

sub_C5D5_display_menu_gun:
C - - - - - 0x01C5E5 07:C5D5: AD 09 01  LDA v_last_level           ;
C - - - - - 0x01C5E8 07:C5D8: F0 39     BEQ bra_C613_RTS           ; Branch If a last played level is 0.
C - - - - - 0x01C5EA 07:C5DA: A5 AD     LDA vMainMenuGunYPos       ;
C - - - - - 0x01C5EC 07:C5DC: F0 35     BEQ bra_C613_RTS           ; If vMainMenuGunYPos = 0x00 (it isn't set)
C - - - - - 0x01C5EE 07:C5DE: A5 1C     LDA vBtnPressedInGame      ;
C - - - - - 0x01C5F0 07:C5E0: 29 30     AND #BIT_BUTTON_Up_OR_Down ;
C - - - - - 0x01C5F2 07:C5E2: F0 0A     BEQ @bra_C5EE_render       ; If the button 'Up' or 'Down' isn't pressed
C - - - - - 0x01C5F4 07:C5E4: A2 8F     LDX #$8F                   ; CONSTANT - The 'Start' position
C - - - - - 0x01C5F6 07:C5E6: C9 10     CMP #BIT_BUTTON_Up         ;
C - - - - - 0x01C5F8 07:C5E8: F0 02     BEQ @bra_C5EC_change       ; If the button 'Down' is pressed
C - - - - - 0x01C5FA 07:C5EA: A2 9F     LDX #$9F                   ; CONSTANT - The 'Continue' position
@bra_C5EC_change:
C - - - - - 0x01C5FC 07:C5EC: 86 AD     STX vMainMenuGunYPos       ; changes position by pressing a key
@bra_C5EE_render:
C - - - - - 0x01C5FE 07:C5EE: A5 AD     LDA vMainMenuGunYPos       ;
C - - - - - 0x01C600 07:C5F0: 8D 04 07  STA v_OAM_2                ; Y-position <~ 0x8F or 0x9F
C - - - - - 0x01C603 07:C5F3: 8D 08 07  STA v_OAM_3                ; Y-position <~ 0x8F or 0x9F
C - - - - - 0x01C606 07:C5F6: A9 62     LDA #$62                   ; 
C - - - - - 0x01C608 07:C5F8: 8D 05 07  STA v_OAM_2_2b             ; Tile number #1 <~ 0x62
C - - - - - 0x01C60B 07:C5FB: A9 63     LDA #$63                   ;
C - - - - - 0x01C60D 07:C5FD: 8D 09 07  STA v_OAM_3_2b             ; Tile number #2 <~ 0x63
C - - - - - 0x01C610 07:C600: A9 00     LDA #$00                   ;
C - - - - - 0x01C612 07:C602: 8D 06 07  STA v_OAM_2_3b             ; The attributes <~ 0x00
C - - - - - 0x01C615 07:C605: 8D 0A 07  STA v_OAM_3_3b             ; The attributes <~ 0x00
C - - - - - 0x01C618 07:C608: A9 50     LDA #$50                   ;
C - - - - - 0x01C61A 07:C60A: 8D 07 07  STA v_OAM_2_4b             ; X-position <~ 0x50
C - - - - - 0x01C61D 07:C60D: 18        CLC                        ;
C - - - - - 0x01C61E 07:C60E: 69 08     ADC #$08                   ;
C - - - - - 0x01C620 07:C610: 8D 0B 07  STA v_OAM_3_4b             ; X-position <~ 0x58
bra_C613_RTS:
C - - - - - 0x01C623 07:C613: 60        RTS                        ;

tbl_C614_PPU_address:
- D 2 - - - 0x01C624 07:C614: CA 20     .word $20CA ; Name table address, Lupin, 1 message row
- D 2 - - - 0x01C626 07:C616: EA 20     .word $20EA ; Name table address, Lupin, 2 message row
- D 2 - - - 0x01C628 07:C618: 0A 21     .word $210A ; Name table address, Lupin, 3 message row
- D 2 - - - 0x01C62A 07:C61A: 2A 21     .word $212A ; Name table address, Lupin, 4 message row
- D - - - - 0x01C62C 07:C61C: CA 21     .word $21CA ; Name table address, Jigen, 1 message row
- D - - - - 0x01C62E 07:C61E: EA 21     .word $21EA ; Name table address, Jigen, 2 message row
- D 2 - - - 0x01C630 07:C620: 0A 22     .word $220A ; Name table address, Jigen, 3 message row
- D 2 - - - 0x01C632 07:C622: 2A 22     .word $222A ; Name table address, Jigen, 4 message row
- D - - - - 0x01C634 07:C624: CA 22     .word $22CA ; Name table address, Goemon, 1 message row
- D - - - - 0x01C636 07:C626: EA 22     .word $22EA ; Name table address, Goemon, 2 message row
- D 2 - - - 0x01C638 07:C628: 0A 23     .word $230A ; Name table address, Goemon, 3 message row
- D 2 - - - 0x01C63A 07:C62A: 2A 23     .word $232A ; Name table address, Goemon, 4 message row

tbl_C62C_y_position_characters:
- D 2 - - - 0x01C63C 07:C62C: 47        .byte $47   ; Lupin
- D 2 - - - 0x01C63D 07:C62D: 87        .byte $87   ; Jigen
- D 2 - - - 0x01C63E 07:C62E: C7        .byte $C7   ; Goemon

sub_C62F_init_character_select:
C - - - - - 0x01C63F 07:C62F: 20 1D C3  JSR sub_C31D_clear_ppu             ;
C - - - - - 0x01C642 07:C632: 20 58 C3  JSR sub_C358_clear_OAM             ;
C - - - - - 0x01C645 07:C635: 20 46 EF  JSR sub_EF46_switch_bank_4_p1      ;
C - - - - - 0x01C648 07:C638: 20 02 C4  JSR sub_C402_clear_sound_parts     ;
C - - - - - 0x01C64B 07:C63B: A2 05     LDX #$05                           ; set loop counter
@bra_C63D_loop:                                                            ; loop by x
C - - - - - 0x01C64D 07:C63D: BD 14 80  LDA tbl_template_chr_banks1,X      ;
C - - - - - 0x01C650 07:C640: 9D AF 06  STA vCacheChrBankSelect,X          ; set CHR ROMs
C - - - - - 0x01C653 07:C643: CA        DEX                                ; decrements loop counter
C - - - - - 0x01C654 07:C644: 10 F7     BPL @bra_C63D_loop                 ; If Register X < 0x80
C - - - - - 0x01C656 07:C646: A2 17     LDX #$17                           ; set loop counter
@bra_C648_repeat:                                                          ; loop by x
C - - - - - 0x01C658 07:C648: BD 7A 81  LDA tbl_character_select_palette,X ;
C - - - - - 0x01C65B 07:C64B: 9D 00 06  STA vCachePalette,X                ; 4 bg palette + 2 sprite palette (for a gun)
C - - - - - 0x01C65E 07:C64E: CA        DEX                                ; decrements loop counter
C - - - - - 0x01C65F 07:C64F: 10 F7     BPL @bra_C648_repeat               ; If Register X < 0x80
C - - - - - 0x01C661 07:C651: 60        RTS                                ;

sub_C652_display_character_portraits:
C - - - - - 0x01C662 07:C652: A9 6B     LDA #.lobyte(loc_display_all_character_are_died) ;
C - - - - - 0x01C664 07:C654: 85 12     STA $0012                                        ;
C - - - - - 0x01C666 07:C656: A9 81     LDA #.hibyte(loc_display_all_character_are_died) ;
C - - - - - 0x01C668 07:C658: 85 13     STA $0013                                        ; ($0012-$0013) -> $816B
C - - - - - 0x01C66A 07:C65A: A9 02     LDA #$02                                         ;
C - - - - - 0x01C66C 07:C65C: 85 1A     STA vTempCounter1A                               ; set loop counter
@bra_C65E_loop:                                                                          ; loop by vTempCounter1A (3 times)
C - - - - - 0x01C66E 07:C65E: A5 1A     LDA vTempCounter1A                               ; prepares an input parameter
C - - - - - 0x01C670 07:C660: 20 5C C8  JSR sub_C85C_display_character_portrait          ;
C - - - - - 0x01C673 07:C663: C6 1A     DEC vTempCounter1A                               ; decrement loop counter
C - - - - - 0x01C675 07:C665: 10 F7     BPL @bra_C65E_loop                               ; If Register X < 0x80
C - - - - - 0x01C677 07:C667: 60        RTS                                              ;

; Params:
; ram_0000 - the count of the iterations
; $0012-$0013 - an input address
sub_C668_render_14_15_16_17_18_loop:
bra_C668_loop:                                                                ; loop by $0000
C - - - - - 0x01C678 07:C668: A5 00     LDA ram_0000                          ; counter as parameter
C - - - - - 0x01C67A 07:C66A: 20 86 D0  JSR sub_D086_render_14_15_16_17_18_v1 ;
C - - - - - 0x01C67D 07:C66D: C6 00     DEC ram_0000                          ; decrement $0000
C - - - - - 0x01C67F 07:C66F: 10 F7     BPL bra_C668_loop                     ; In $0000 >= 0x00 && $0000 < 0x80
C - - - - - 0x01C681 07:C671: 60        RTS                                   ;

sub_C672_wait_character_select:
C - - - - - 0x01C682 07:C672: 20 2F C6  JSR sub_C62F_init_character_select         ;
C - - - - - 0x01C685 07:C675: A9 39     LDA #.lobyte(loc_display_select_character) ;
C - - - - - 0x01C687 07:C677: 85 12     STA $0012                                  ; Low address
C - - - - - 0x01C689 07:C679: A9 81     LDA #.hibyte(loc_display_select_character) ;
C - - - - - 0x01C68B 07:C67B: 85 13     STA $0013                                  ; High address (0x8139 in the bank 04_1)
C - - - - - 0x01C68D 07:C67D: A9 07     LDA #$07                                   ; 
C - - - - - 0x01C68F 07:C67F: 85 00     STA $0000                                  ; set loop counter
C - - - - - 0x01C691 07:C681: 20 68 C6  JSR sub_C668_render_14_15_16_17_18_loop    ;
C - - - - - 0x01C694 07:C684: 20 52 C6  JSR sub_C652_display_character_portraits   ;
C - - - - - 0x01C697 07:C687: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1              ;
C - - - - - 0x01C69A 07:C68A: A9 0B     LDA #$0B                                   ; CONSTANT - the number of rows containing message symbols
C - - - - - 0x01C69C 07:C68C: 85 1A     STA vTempRowNumber1A                       ; set loop counter
bra_C68E_loop:                                                                     ; loop by vTempRowNumber1A
C - - - - - 0x01C69E 07:C68E: 20 DD C6  JSR sub_C6DD_render_row                    ;
C - - - - - 0x01C6A1 07:C691: C6 1A     DEC vTempRowNumber1A                       ; decrement loop counter
C - - - - - 0x01C6A3 07:C693: 10 F9     BPL bra_C68E_loop                          ; If vTempRowNumber1A >= 0x00
C - - - - - 0x01C6A5 07:C695: A9 00     LDA #$00                                   ;
C - - - - - 0x01C6A7 07:C697: 85 19     STA vRenderActive                          ; put active
C - - - - - 0x01C6A9 07:C699: 8D 31 06  STA vHighPpuAddress                        ; clear
C - - - - - 0x01C6AC 07:C69C: 8D 7B 06  STA vPpuAddrDataCache                      ; empty cache
C - - - - - 0x01C6AF 07:C69F: 85 3D     STA vCharacterSelectionCounter             ; reset
C - - - - - 0x01C6B1 07:C6A1: AA        TAX                                        ; clear Register X
C - - - - - 0x01C6B2 07:C6A2: A5 5F     LDA vChrLiveStatus                         ;
C - - - - - 0x01C6B4 07:C6A4: 6A        ROR                                        ;
C - - - - - 0x01C6B5 07:C6A5: 6A        ROR                                        ;
@bra_C6A6_loop:
C - - - - - 0x01C6B6 07:C6A6: 6A        ROR                                        ;
C - - - - - 0x01C6B7 07:C6A7: 6A        ROR                                        ;
C - - - - - 0x01C6B8 07:C6A8: B0 03     BCS @bra_C6AD_skip                         ; the current character isn't fell
C - - - - - 0x01C6BA 07:C6AA: E8        INX                                        ;
C - - - - - 0x01C6BB 07:C6AB: D0 F9     BNE @bra_C6A6_loop                         ; If Register X != 0 (there should be no more than 3 iterations)
@bra_C6AD_skip:
C - - - - - 0x01C6BD 07:C6AD: 86 AD     STX vIndexSelectableChr                    ; prepare an input parameter
C - - - - - 0x01C6BF 07:C6AF: 20 53 C8  JSR sub_C853_activate_selectable_character ;
C - - - - - 0x01C6C2 07:C6B2: A9 10     LDA #$10                                   ; CONSTANT - Select the character
C - - - - - 0x01C6C4 07:C6B4: 85 3B     STA vSharedGameStatus                      ;
C - - - - - 0x01C6C6 07:C6B6: 20 1E C5  JSR sub_C51E_update_ppu_and_screen         ;
@bra_C6B9_wait:
C - - - - - 0x01C6C9 07:C6B9: A5 3D     LDA vCharacterSelectionCounter             ;
C - - - - - 0x01C6CB 07:C6BB: F0 FC     BEQ @bra_C6B9_wait                         ; Here we wait for the player to select a character.
@bra_C6BD_wait:                                                                    
C - - - - - 0x01C6CD 07:C6BD: A5 3D     LDA vCharacterSelectionCounter             ;
C - - - - - 0x01C6CF 07:C6BF: 30 FC     BMI @bra_C6BD_wait                         ; Here we wait for the counter to reset (the flashing gun animation will be performed)
C - - - - - 0x01C6D1 07:C6C1: 20 13 C3  JSR sub_C313_screen_off                    ;
C - - - - - 0x01C6D4 07:C6C4: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi   ;
sub_C6C7_update_room_with_message:
loc_C6C7_update_room_with_message:
C D 2 - - - 0x01C6D7 07:C6C7: A9 00     LDA #$00                                   ; CHR-bank (a number)
C - - - - - 0x01C6D9 07:C6C9: AA        TAX                                        ; clear vSharedGameStatus
C - - - - - 0x01C6DA 07:C6CA: A4 46     LDY vNoRoom                                ;
C - - - - - 0x01C6DC 07:C6CC: C0 1A     CPY #$1A                                   ; CONSTANT - room with NPC in level 1
C - - - - - 0x01C6DE 07:C6CE: 90 07     BCC @bra_C6D7_skip                         ; If vNoRoom < 0x1A
C - - - - - 0x01C6E0 07:C6D0: C0 1F     CPY #$1F                                   ; CONSTANT - boss of level 1, 0x1E - room with NPC in level 4
C - - - - - 0x01C6E2 07:C6D2: B0 03     BCS @bra_C6D7_skip                         ; If vNoRoom >= 0x1F
C - - - - - 0x01C6E4 07:C6D4: A9 32     LDA #$32                                   ; CHR-bank (a number)
C - - - - - 0x01C6E6 07:C6D6: E8        INX                                        ; For vSharedGameStatus to set 'A screen with the message'
@bra_C6D7_skip:
C - - - - - 0x01C6E7 07:C6D7: 8D B6 06  STA vChrBankData                           ;
C - - - - - 0x01C6EA 07:C6DA: 86 3B     STX vSharedGameStatus                      ;
C - - - - - 0x01C6EC 07:C6DC: 60        RTS                                        ;

sub_C6DD_render_row:
C - - - - - 0x01C6ED 07:C6DD: A5 D6     LDA vReasonCharacterChange  ;
C - - - - - 0x01C6EF 07:C6DF: F0 4B     BEQ bra_C72C_skip           ; If vReasonCharacterChange == 'no reason'
C - - - - - 0x01C6F1 07:C6E1: A5 1A     LDA vTempRowNumber1A        ;
C - - - - - 0x01C6F3 07:C6E3: 29 02     AND #$02                    ;
C - - - - - 0x01C6F5 07:C6E5: D0 01     BNE bra_C6E8_render         ; Branch every 2 times after 2
C - - - - - 0x01C6F7 07:C6E7: 60        RTS                         ;

; In: vTempRowNumber1A - {0x02, 0x03, 0x06, 0x07, 0x0A, 0x0B}
bra_C6E8_render:
C - - - - - 0x01C6F8 07:C6E8: A5 1A     LDA vTempRowNumber1A             ;
C - - - - - 0x01C6FA 07:C6EA: 0A        ASL                              ;
C - - - - - 0x01C6FB 07:C6EB: A8        TAY                              ; Y <~ row / 2 {0x04, 0x06, 0x0C, 0x0E, 0x14, 0x16}
C - - - - - 0x01C6FC 07:C6EC: A5 5F     LDA vChrLiveStatus               ;
C - - - - - 0x01C6FE 07:C6EE: 85 D4     STA vTempChrLiveStatus           ;
C - - - - - 0x01C700 07:C6F0: 20 7B C7  JSR sub_C77B_can_character_play  ;
C - - - - - 0x01C703 07:C6F3: F0 07     BEQ bra_C6FC_no_death            ; If character isn't fell and arrested
C - - - - - 0x01C705 07:C6F5: 88        DEY                              ;
C - - - - - 0x01C706 07:C6F6: 88        DEY                              ;
C - - - - - 0x01C707 07:C6F7: 88        DEY                              ;
C - - - - - 0x01C708 07:C6F8: 88        DEY                              ; Y <~ row / 2 {0x00, 0x02, 0x08, 0x0A, 0x10, 0x12}
C - - - - - 0x01C709 07:C6F9: 4C 1F C7  JMP loc_C71F_continue            ;

; In: vTempRowNumber1A - {0x02, 0x03, 0x06, 0x07, 0x0A, 0x0B}
bra_C6FC_no_death:
C - - - - - 0x01C70C 07:C6FC: A5 D6     LDA vReasonCharacterChange                     ;
C - - - - - 0x01C70E 07:C6FE: 10 1F     BPL bra_C71F_skip                              ; If vReasonCharacterChange != 'the radio was using'
C - - - - - 0x01C710 07:C700: A5 5F     LDA vChrLiveStatus                             ;
C - - - - - 0x01C712 07:C702: 29 03     AND #$03                                       ;
C - - - - - 0x01C714 07:C704: 85 00     STA ram_0000                                   ; $0000 <- the current selected character
C - - - - - 0x01C716 07:C706: A5 1A     LDA vTempRowNumber1A                           ;
C - - - - - 0x01C718 07:C708: 4A        LSR                                            ;
C - - - - - 0x01C719 07:C709: 4A        LSR                                            ; A <~ {0x00, 0x01, 0x02}
C - - - - - 0x01C71A 07:C70A: C5 00     CMP ram_0000                                   ;
C - - - - - 0x01C71C 07:C70C: D0 04     BNE @bra_C712_skip                             ; If the current row doesn't contain the current character 
C - - - - - 0x01C71E 07:C70E: 88        DEY                                            ;
C - - - - - 0x01C71F 07:C70F: 88        DEY                                            ;
C - - - - - 0x01C720 07:C710: 88        DEY                                            ;
C - - - - - 0x01C721 07:C711: 88        DEY                                            ; Y <~ row / 2 {0x00, 0x02, 0x08, 0x0A, 0x10, 0x12}
@bra_C712_skip:
C - - - - - 0x01C722 07:C712: B9 78 94  LDA tbl_select_characters_dialog_radio,Y       ;
C - - - - - 0x01C725 07:C715: 85 02     STA ram_0002                                   ; Low address
C - - - - - 0x01C727 07:C717: B9 79 94  LDA tbl_select_characters_dialog_radio + 1,Y   ;
C - - - - - 0x01C72A 07:C71A: 85 03     STA ram_0003                                   ; High address
C - - - - - 0x01C72C 07:C71C: 4C 54 C7  JMP loc_C754_render_02_03                      ;

bra_C71F_skip:
loc_C71F_continue:
C D 2 - - - 0x01C72F 07:C71F: B9 60 94  LDA tbl_select_characters_dialog_losing,Y      ;
C - - - - - 0x01C732 07:C722: 85 02     STA ram_0002                                   ; Low address
C - - - - - 0x01C734 07:C724: B9 61 94  LDA tbl_select_characters_dialog_losing + 1,Y  ;
C - - - - - 0x01C737 07:C727: 85 03     STA ram_0003                                   ; High address
C - - - - - 0x01C739 07:C729: 4C 54 C7  JMP loc_C754_render_02_03                      ;

bra_C72C_skip:
C - - - - - 0x01C73C 07:C72C: A5 1A     LDA vTempRowNumber1A              ;
C - - - - - 0x01C73E 07:C72E: 29 02     AND #$02                          ;
C - - - - - 0x01C740 07:C730: D0 06     BNE bra_C738_internal_render_row  ; Branch If vTempRowNumber1A = 0x02, 0x03, 0x06, 0x07, 0x0A, 0x0B
C - - - - - 0x01C742 07:C732: 20 7B C7  JSR sub_C77B_can_character_play   ; For 0x08, 0x09 - Lupin; 0x04, 0x05 - Jigen; 0x00, 0x01 - Goemon
C - - - - - 0x01C745 07:C735: D0 01     BNE bra_C738_internal_render_row  ; If character is fell or arrested
C - - - - - 0x01C747 07:C737: 60        RTS                               ;

bra_C738_internal_render_row:
C - - - - - 0x01C748 07:C738: A5 5E     LDA vNoLevel                                            ;
C - - - - - 0x01C74A 07:C73A: 0A        ASL                                                     ;
C - - - - - 0x01C74B 07:C73B: 0A        ASL                                                     ;
C - - - - - 0x01C74C 07:C73C: 0A        ASL                                                     ;
C - - - - - 0x01C74D 07:C73D: 85 00     STA $0000                                               ;
C - - - - - 0x01C74F 07:C73F: 0A        ASL                                                     ;
C - - - - - 0x01C750 07:C740: 18        CLC                                                     ;
C - - - - - 0x01C751 07:C741: 65 00     ADC $0000                                               ; no * 24
C - - - - - 0x01C753 07:C743: 18        CLC                                                     ;
C - - - - - 0x01C754 07:C744: 65 1A     ADC vTempRowNumber1A                                    ;
C - - - - - 0x01C756 07:C746: 18        CLC                                                     ;
C - - - - - 0x01C757 07:C747: 65 1A     ADC vTempRowNumber1A                                    ;
C - - - - - 0x01C759 07:C749: A8        TAY                                                     ; Prepares the index by the row and the number of level
C - - - - - 0x01C75A 07:C74A: B9 00 94  LDA tbl_select_characters_dialog,Y                      ;
C - - - - - 0x01C75D 07:C74D: 85 02     STA $0002                                               ; low address
C - - - - - 0x01C75F 07:C74F: B9 01 94  LDA tbl_select_characters_dialog + 1,Y                  ;
C - - - - - 0x01C762 07:C752: 85 03     STA $0003                                               ; high address
; In: Register $0002 - Low address for ppu buffer data
; In: Register $0003 - High address for ppu buffer data
loc_C754_render_02_03:
C D 2 - - - 0x01C764 07:C754: A0 13     LDY #$13                              ; set loop counter
@bra_C756_loop:                                                               ; loop by y (14 times)
C - - - - - 0x01C766 07:C756: B1 02     LDA ($0002),Y                         ;
C - - - - - 0x01C768 07:C758: 99 33 06  STA vPpuBufferData,Y                  ; fill a buffer for rendering
C - - - - - 0x01C76B 07:C75B: 88        DEY                                   ;
C - - - - - 0x01C76C 07:C75C: 10 F8     BPL @bra_C756_loop                    ; If Register Y >= 0
C - - - - - 0x01C76E 07:C75E: A5 1A     LDA vTempRowNumber1A                  ;
C - - - - - 0x01C770 07:C760: 0A        ASL                                   ; shift, because PPU address contains 2 bytes
C - - - - - 0x01C771 07:C761: A8        TAY                                   ;
C - - - - - 0x01C772 07:C762: B9 14 C6  LDA tbl_C614_PPU_address,Y            ;
C - - - - - 0x01C775 07:C765: 85 14     STA ram_0014                          ; low PPU address
C - - - - - 0x01C777 07:C767: B9 15 C6  LDA tbl_C614_PPU_address + 1,Y        ;
C - - - - - 0x01C77A 07:C76A: 85 15     STA ram_0015                          ; high PPU address
C - - - - - 0x01C77C 07:C76C: A9 33     LDA #$33                              ;
C - - - - - 0x01C77E 07:C76E: 85 16     STA ram_0016                          ; low address
C - - - - - 0x01C780 07:C770: A9 06     LDA #$06                              ;
C - - - - - 0x01C782 07:C772: 85 17     STA ram_0017                          ; high address ($0633)
C - - - - - 0x01C784 07:C774: A9 14     LDA #$14                              ;
C - - - - - 0x01C786 07:C776: 85 18     STA ram_0018                          ; the number of the tiles
C - - - - - 0x01C788 07:C778: 4C 89 D0  JMP loc_D089_render_14_15_16_17_18_v2 ;

; Out: Zero status - The character isn't fell and arrested
; Out: $0000 - vTempChrLiveStatus
sub_C77B_can_character_play:
C - - - - - 0x01C78B 07:C77B: A5 1A     LDA vTempRowNumber1A        ;
C - - - - - 0x01C78D 07:C77D: 4A        LSR                         ;
C - - - - - 0x01C78E 07:C77E: 4A        LSR                         ;
C - - - - - 0x01C78F 07:C77F: AA        TAX                         ; set loop counter (vTempRowNumber1A / 4)
C - - - - - 0x01C790 07:C780: A5 D4     LDA vTempChrLiveStatus      ;
C - - - - - 0x01C792 07:C782: 85 00     STA ram_0000                ; the out parameter
@bra_C784_skip:                                                     ; loop by x (1, 2 or 3 times)
C - - - - - 0x01C794 07:C784: 4A        LSR                         ;
C - - - - - 0x01C795 07:C785: 4A        LSR                         ;
C - - - - - 0x01C796 07:C786: CA        DEX                         ; decrements loop counter
C - - - - - 0x01C797 07:C787: 10 FB     BPL @bra_C784_skip          ; If Register X >= 0
C - - - - - 0x01C799 07:C789: 29 03     AND #$03                    ;
C - - - - - 0x01C79B 07:C78B: C9 03     CMP #$03                    ;
C - - - - - 0x01C79D 07:C78D: 60        RTS                         ;

sub_C78E_select_character_subroutine:
C - - - - - 0x01C79E 07:C78E: AD F6 FF  LDA Set_features                              ;
C - - - - - 0x01C7A1 07:C791: 30 13     BMI bra_C7A6_skip                             ; If test mode is disable
; Only for test mode
C - - - - - 0x01C7A3 07:C793: A5 1C     LDA vBtnPressedInGame                         ;
C - - - - - 0x01C7A5 07:C795: 29 40     AND #BIT_BUTTON_Left                          ;
C - - - - - 0x01C7A7 07:C797: F0 0D     BEQ bra_C7A6_skip                             ; If the button 'Left' isn't pressed
C - - - - - 0x01C7A9 07:C799: A9 08     LDA #BIT_BUTTON_START                         ;
C - - - - - 0x01C7AB 07:C79B: 20 79 D0  JSR sub_D079_check_button_press               ;
C - - - - - 0x01C7AE 07:C79E: F0 06     BEQ bra_C7A6_skip                             ; Branch If the button 'Start' doesn't press
C - - - - - 0x01C7B0 07:C7A0: A5 3A     LDA vDamageStatus                             ;
C - - - - - 0x01C7B2 07:C7A2: 49 80     EOR #$80                                      ; CONSTANT - The character doesn't damage
C - - - - - 0x01C7B4 07:C7A4: 85 3A     STA vDamageStatus                             ; set 'NO DAMAGE MODE'
bra_C7A6_skip:
C - - - - - 0x01C7B6 07:C7A6: A5 3D     LDA vCharacterSelectionCounter                ;
C - - - - - 0x01C7B8 07:C7A8: D0 0B     BNE bra_C7B5_skip                             ; If vCharacterSelectionCounter != 0x00
C - - - - - 0x01C7BA 07:C7AA: A9 03     LDA #BIT_BUTTON_B_OR_A                        ; Selects a character before start a level
C - - - - - 0x01C7BC 07:C7AC: 20 79 D0  JSR sub_D079_check_button_press               ;
C - - - - - 0x01C7BF 07:C7AF: F0 09     BEQ bra_C7BA_skip                             ; Go to the branch If the buttons 'A' or 'B' aren't pressed
C - - - - - 0x01C7C1 07:C7B1: A9 C0     LDA #$C0                                      ;
C - - - - - 0x01C7C3 07:C7B3: 85 3D     STA vCharacterSelectionCounter                ; Initializes a counter
bra_C7B5_skip:
C - - - - - 0x01C7C5 07:C7B5: C6 3D     DEC vCharacterSelectionCounter                ; Decrement a counter
C - - - - - 0x01C7C7 07:C7B7: 4C EF C7  JMP loc_C7EF_sprite_magic_in_select_character ;

bra_C7BA_skip:
C - - - - - 0x01C7CA 07:C7BA: A5 AD     LDA vIndexSelectableChr                       ;
C - - - - - 0x01C7CC 07:C7BC: 85 AE     STA vCopyIndexSelectableChr                   ; put an old value
C - - - - - 0x01C7CE 07:C7BE: A9 30     LDA #BIT_BUTTON_Up_OR_Down                    ;
C - - - - - 0x01C7D0 07:C7C0: 20 79 D0  JSR sub_D079_check_button_press               ;
C - - - - - 0x01C7D3 07:C7C3: F0 2A     BEQ bra_C7EF_sprite_magic_in_select_character ; If the buttons 'Up' or 'Down' aren't pressed
C - - - - - 0x01C7D5 07:C7C5: 48        PHA                                           ; store a
C - - - - - 0x01C7D6 07:C7C6: A9 15     LDA #$15                                      ; CONSTANT - Sound 'switch a character'
C - - - - - 0x01C7D8 07:C7C8: 20 20 C4  JSR sub_C420_add_sound_effect                 ;
C - - - - - 0x01C7DB 07:C7CB: 68        PLA                                           ; restore a ($C7C5)
C - - - - - 0x01C7DC 07:C7CC: 29 10     AND #BIT_BUTTON_Up                            ;
C - - - - - 0x01C7DE 07:C7CE: F0 0B     BEQ bra_C7DB_next                             ; If the button 'Up' isn't pressed
bra_C7D0_prev:
C - - - - - 0x01C7E0 07:C7D0: C6 AE     DEC vCopyIndexSelectableChr                   ; temporarily previous the character
C - - - - - 0x01C7E2 07:C7D2: 30 1B     BMI bra_C7EF_sprite_magic_in_select_character ; if vCopyIndexSelectableChr < 0 (i.e. >= 0xF0), only display sprites
C - - - - - 0x01C7E4 07:C7D4: 20 41 C8  JSR sub_C841_is_playable_character            ;
C - - - - - 0x01C7E7 07:C7D7: F0 F7     BEQ bra_C7D0_prev                             ; If the current character isn't playable
C - - - - - 0x01C7E9 07:C7D9: D0 0D     BNE bra_C7E8_accept                           ; Always true

bra_C7DB_next:
C - - - - - 0x01C7EB 07:C7DB: E6 AE     INC vCopyIndexSelectableChr                   ; temporarily next the character
C - - - - - 0x01C7ED 07:C7DD: A5 AE     LDA vCopyIndexSelectableChr                   ;
C - - - - - 0x01C7EF 07:C7DF: C9 03     CMP #$03                                      ;
C - - - - - 0x01C7F1 07:C7E1: B0 0C     BCS bra_C7EF_sprite_magic_in_select_character ; if vCopyIndexSelectableChr >= 0x03, only display sprites
C - - - - - 0x01C7F3 07:C7E3: 20 41 C8  JSR sub_C841_is_playable_character            ;
C - - - - - 0x01C7F6 07:C7E6: F0 F3     BEQ bra_C7DB_next                             ; If the current character isn't playable
bra_C7E8_accept:
C - - - - - 0x01C7F8 07:C7E8: A5 AE     LDA vCopyIndexSelectableChr                   ;
C - - - - - 0x01C7FA 07:C7EA: 85 AD     STA vIndexSelectableChr                       ; set a new value
C - - - - - 0x01C7FC 07:C7EC: 20 53 C8  JSR sub_C853_activate_selectable_character    ;
bra_C7EF_sprite_magic_in_select_character:
loc_C7EF_sprite_magic_in_select_character:
C D 2 - - - 0x01C7FF 07:C7EF: A5 3D     LDA vCharacterSelectionCounter                ;
C - - - - - 0x01C801 07:C7F1: 29 04     AND #$04                                      ; CONSTANT - a gun display frequency (in select character)
C - - - - - 0x01C803 07:C7F3: D0 0E     BNE bra_C803_skip                             ; If it isn't displayed
C - - - - - 0x01C805 07:C7F5: A6 AD     LDX vIndexSelectableChr                       ; 0x00 - Lupin, 0x01 - Jigen, 0x02 - Goemon
C - - - - - 0x01C807 07:C7F7: BD 2C C6  LDA tbl_C62C_y_position_characters,X          ;
C - - - - - 0x01C80A 07:C7FA: 85 00     STA ram_0000                                  ; ~> sprite_magic1 (Y pos)
C - - - - - 0x01C80C 07:C7FC: A9 10     LDA #$10                                      ; ~> sprite_magic4 (X pos)
C - - - - - 0x01C80E 07:C7FE: A0 02     LDY #$02                                      ; tile 'Gun'
C - - - - - 0x01C810 07:C800: 20 32 C8  JSR sub_C832_add_sprite_magic                 ;
loc_C803_render_each_character_in_the_end:
bra_C803_skip:
C D 2 - - - 0x01C813 07:C803: A9 4F     LDA #$4F                                      ; Y-position for Lupin
C - - - - - 0x01C815 07:C805: 85 00     STA ram_0000                                  ;
C - - - - - 0x01C817 07:C807: A5 5F     LDA vChrLiveStatus                            ;
C - - - - - 0x01C819 07:C809: 4A        LSR                                           ; accumulator_shift_right_by_2
C - - - - - 0x01C81A 07:C80A: 4A        LSR                                           ;
C - - - - - 0x01C81B 07:C80B: 20 24 C8  JSR sub_C824_character_sprite                 ;
C - - - - - 0x01C81E 07:C80E: A9 8F     LDA #$8F                                      ; Y-position for Jigen
C - - - - - 0x01C820 07:C810: 85 00     STA ram_0000                                  ;
C - - - - - 0x01C822 07:C812: A5 5F     LDA vChrLiveStatus                            ;
C - - - - - 0x01C824 07:C814: 20 5F D0  JSR sub_accumulator_shift_right_by_4          ;
C - - - - - 0x01C827 07:C817: 20 24 C8  JSR sub_C824_character_sprite                 ;
C - - - - - 0x01C82A 07:C81A: A9 CF     LDA #$CF                                      ; Y-position for Goemon
C - - - - - 0x01C82C 07:C81C: 85 00     STA ram_0000                                  ;
C - - - - - 0x01C82E 07:C81E: A5 5F     LDA vChrLiveStatus                            ;
C - - - - - 0x01C830 07:C820: 20 5E D0  JSR sub_accumulator_shift_right_by_5          ;
C - - - - - 0x01C833 07:C823: 4A        LSR                                           ; + 1 shift = shift right by 6
sub_C824_character_sprite:
C - - - - - 0x01C834 07:C824: A0 04     LDY #$04                                      ; tile 'Handcuffs'
C - - - - - 0x01C836 07:C826: 29 03     AND #$03                                      ; CONSTANT - Did the character fall or get arrested?
C - - - - - 0x01C838 07:C828: F0 06     BEQ bra_C830_handcuffs_sprite_magic           ;
C - - - - - 0x01C83A 07:C82A: C9 01     CMP #$01                                      ; CONSTANT - Did the character fall?
C - - - - - 0x01C83C 07:C82C: D0 1A     BNE bra_C848_RTS                              ;
C - - - - - 0x01C83E 07:C82E: A0 06     LDY #$06                                      ; tile 'Prison bars'
bra_C830_handcuffs_sprite_magic:
C - - - - - 0x01C840 07:C830: A9 33     LDA #$33                                      ; ~> sprite_magic4 (X pos)
; in: Register A - X pos
; in: Register Y - starting tile position
sub_C832_add_sprite_magic:
C - - - - - 0x01C842 07:C832: 85 03     STA ram_0003                                  ;
C - - - - - 0x01C844 07:C834: 98        TYA                                           ;
C - - - - - 0x01C845 07:C835: 18        CLC                                           ;
C - - - - - 0x01C846 07:C836: 69 70     ADC #$70                                      ; ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01C848 07:C838: 85 01     STA ram_0001                                  ;
C - - - - - 0x01C84A 07:C83A: A9 20     LDA #$20                                      ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01C84C 07:C83C: 85 02     STA ram_0002                                  ;
C - - - - - 0x01C84E 07:C83E: 4C 33 CE  JMP loc_CE33_add_sprite_magic                 ;

; Out: true, if the character isn't fell
sub_C841_is_playable_character:
C - - - - - 0x01C851 07:C841: A6 AE     LDX vCopyIndexSelectableChr       ; prepare an input parameter
C - - - - - 0x01C853 07:C843: 20 49 C8  JSR sub_C849_get_character_status ;
C - - - - - 0x01C856 07:C846: 29 02     AND #$02                          ; CONSTANT - Fallen status
bra_C848_RTS:
C - - - - - 0x01C858 07:C848: 60        RTS                               ;

; In: Register X - 0x00 - Lupin, 0x01 - Jigen, 0x02 - Goemon
; Out: Fallen status (F) | Arrested status (A) (0%000000FA)
sub_C849_get_character_status:
C - - - - - 0x01C859 07:C849: A5 5F     LDA vChrLiveStatus    ;
@bra_C84B_loop:                                               ; loop by x
C - - - - - 0x01C85B 07:C84B: 4A        LSR                   ;
C - - - - - 0x01C85C 07:C84C: 4A        LSR                   ;
C - - - - - 0x01C85D 07:C84D: CA        DEX                   ; decrement loop counter
C - - - - - 0x01C85E 07:C84E: 10 FB     BPL @bra_C84B_loop    ; If Register X < 0x80
C - - - - - 0x01C860 07:C850: 29 03     AND #$03              ;
C - - - - - 0x01C862 07:C852: 60        RTS                   ;

sub_C853_activate_selectable_character:
C - - - - - 0x01C863 07:C853: A5 5F     LDA vChrLiveStatus      ;
C - - - - - 0x01C865 07:C855: 29 FC     AND #$FC                ; CONSTANT - see info 'vChrLiveStatus'
C - - - - - 0x01C867 07:C857: 05 AD     ORA vIndexSelectableChr ;
C - - - - - 0x01C869 07:C859: 85 5F     STA vChrLiveStatus      ;
C - - - - - 0x01C86B 07:C85B: 60        RTS                     ;

; In: 0x12-0x13 - an input address
; In: Register A - position by the content (indirect 0x12-0x13)
sub_C85C_display_character_portrait:
C - - - - - 0x01C86C 07:C85C: 20 A3 D0  JSR sub_D0A3_prepare_14_15_16_17_18   ;
C - - - - - 0x01C86F 07:C85F: A9 03     LDA #$03                              ;
C - - - - - 0x01C871 07:C861: 85 0F     STA ram_000F                          ; set loop counter
bra_C863_loop:                                                                ; loop counter (4 times)
C - - - - - 0x01C873 07:C863: 20 89 D0  JSR sub_D089_render_14_15_16_17_18_v2 ;
C - - - - - 0x01C876 07:C866: A5 14     LDA ram_0014                          ;
C - - - - - 0x01C878 07:C868: 18        CLC                                   ;
C - - - - - 0x01C879 07:C869: 69 20     ADC #$20                              ;
C - - - - - 0x01C87B 07:C86B: 85 14     STA ram_0014                          ; shifts PPU address for next row
C - - - - - 0x01C87D 07:C86D: A5 15     LDA ram_0015                    	  ;
C - - - - - 0x01C87F 07:C86F: 69 00     ADC #$00                        	  ;
C - - - - - 0x01C881 07:C871: 85 15     STA ram_0015                    	  ; shift high address by Carry flag
C - - - - - 0x01C883 07:C873: A5 16     LDA ram_0016                          ;
C - - - - - 0x01C885 07:C875: 18        CLC                                   ;
C - - - - - 0x01C886 07:C876: 65 18     ADC ram_0018                          ;
C - - - - - 0x01C888 07:C878: 85 16     STA ram_0016                          ; shifts ROM-address value by count of the bytes ($0018 contains 0x03)
C - - - - - 0x01C88A 07:C87A: A5 17     LDA ram_0017                          ;
C - - - - - 0x01C88C 07:C87C: 69 00     ADC #$00                              ;
C - - - - - 0x01C88E 07:C87E: 85 17     STA ram_0017                          ; shift high ROM-address value by Carry flag
C - - - - - 0x01C890 07:C880: C6 0F     DEC ram_000F                          ; decrement loop counter
C - - - - - 0x01C892 07:C882: 10 DF     BPL bra_C863_loop                     ; If $000F < 0x80
C - - - - - 0x01C894 07:C884: 60        RTS                                   ;

sub_C885_try_interrupt_mode:
C - - - - - 0x01C895 07:C885: A5 37     LDA vCutscenesMode                ;
C - - - - - 0x01C897 07:C887: 10 20     BPL bra_C8A9_try_change_pause     ; Branch If cutscenes aren't used
C - - - - - 0x01C899 07:C889: C6 33     DEC vLowCutsceneCounter           ;
C - - - - - 0x01C89B 07:C88B: D0 06     BNE @bra_C893_skip                ; If vLowCutsceneCounter != 0x00
C - - - - - 0x01C89D 07:C88D: A5 34     LDA vHighCutsceneCounter          ;
C - - - - - 0x01C89F 07:C88F: F0 02     BEQ @bra_C893_skip                ; If vHighCutsceneCounter == 0x00
C - - - - - 0x01C8A1 07:C891: C6 34     DEC vHighCutsceneCounter          ;
@bra_C893_skip:
C - - - - - 0x01C8A3 07:C893: A5 1E     LDA v_player1_btn_pressed         ;
C - - - - - 0x01C8A5 07:C895: 29 08     AND #BIT_BUTTON_START             ;
C - - - - - 0x01C8A7 07:C897: F0 3A     BEQ bra_C8D3_RTS                  ; Go to the branch If the button 'Start' doesn't press
C - - - - - 0x01C8A9 07:C899: 45 21     EOR v_last_p1_btn_pressed         ;
C - - - - - 0x01C8AB 07:C89B: 29 08     AND #BIT_BUTTON_START             ; avoid looping
C - - - - - 0x01C8AD 07:C89D: F0 34     BEQ bra_C8D3_RTS                  ; If v_player1_btn_pressed = v_last_p1_btn_pressed
C - - - - - 0x01C8AF 07:C89F: A9 00     LDA #$00                          ; CONSTANT - Cutscenes aren't used
C - - - - - 0x01C8B1 07:C8A1: 85 37     STA vCutscenesMode                ;
C - - - - - 0x01C8B3 07:C8A3: A2 FF     LDX #$FF                          ;
C - - - - - 0x01C8B5 07:C8A5: 9A        TXS                               ; clears the stack completely
C - - - - - 0x01C8B6 07:C8A6: 4C 46 C0  JMP loc_C046_repeat_starting_mode ;

bra_C8A9_try_change_pause:
C - - - - - 0x01C8B9 07:C8A9: A9 08     LDA #BIT_BUTTON_START           ;
C - - - - - 0x01C8BB 07:C8AB: 20 79 D0  JSR sub_D079_check_button_press ;
C - - - - - 0x01C8BE 07:C8AE: F0 23     BEQ bra_C8D3_RTS                ; Branch If the button 'Start' doesn't press
C - - - - - 0x01C8C0 07:C8B0: 24 38     BIT vPauseStatus                ;
C - - - - - 0x01C8C2 07:C8B2: 70 12     BVS bra_C8C6_turn_pause_off     ; Branch If pause is activated
C - - - - - 0x01C8C4 07:C8B4: A9 40     LDA #$40                        ; CONSTANT - pause
C - - - - - 0x01C8C6 07:C8B6: 85 38     STA vPauseStatus                ;
C - - - - - 0x01C8C8 07:C8B8: A5 3B     LDA vSharedGameStatus           ;
C - - - - - 0x01C8CA 07:C8BA: 09 40     ORA #$40                        ; CONSTANT - Pause in the game
C - - - - - 0x01C8CC 07:C8BC: 85 3B     STA vSharedGameStatus           ;
C - - - - - 0x01C8CE 07:C8BE: 20 02 C4  JSR sub_C402_clear_sound_parts  ;
C - - - - - 0x01C8D1 07:C8C1: A9 0E     LDA #$0E                        ; sound of pause
C - - - - - 0x01C8D3 07:C8C3: 4C 20 C4  JMP loc_C420_add_sound_effect   ;

bra_C8C6_turn_pause_off:
C - - - - - 0x01C8D6 07:C8C6: A9 00     LDA #$00                           ;
C - - - - - 0x01C8D8 07:C8C8: 85 38     STA vPauseStatus                   ; CONSTANT - no pause
C - - - - - 0x01C8DA 07:C8CA: A5 3B     LDA vSharedGameStatus              ;
C - - - - - 0x01C8DC 07:C8CC: 29 BF     AND #$BF                           ;
C - - - - - 0x01C8DE 07:C8CE: 85 3B     STA vSharedGameStatus              ; Reset a flag 'Pause in the game'
C - - - - - 0x01C8E0 07:C8D0: 4C A4 BB  JMP loc_BBA4_play_background_music ;

bra_C8D3_RTS:
C - - - - - 0x01C8E3 07:C8D3: 60        RTS                                ;

sub_C8D4_check_Yoshikawa:
C - - - - - 0x01C8E4 07:C8D4: A2 08     LDX #$08               ; set loop counter
bra_C8D6_loop:                                                 ; loop by x
C - - - - - 0x01C8E6 07:C8D6: BD E2 C8  LDA tbl_C8E2_symbols,X ;
C - - - - - 0x01C8E9 07:C8D9: DD 00 01  CMP ram_0100,X         ;
C - - - - - 0x01C8EC 07:C8DC: D0 0E     BNE bra_C8EC_skip      ; branch If [0x0100-0x0108] isn't Yoshikawa
C - - - - - 0x01C8EE 07:C8DE: CA        DEX                    ; decrement x
C - - - - - 0x01C8EF 07:C8DF: 10 F5     BPL bra_C8D6_loop      ; In Register X >= 0x00 && X < 0x80
C - - - - - 0x01C8F1 07:C8E1: 60        RTS                    ;

tbl_C8E2_symbols:
- D 2 - - - 0x01C8F2 07:C8E2: 59        .byte $59   ; Y
- D 2 - - - 0x01C8F3 07:C8E3: 6F        .byte $6F   ; o
- D 2 - - - 0x01C8F4 07:C8E4: 73        .byte $73   ; s
- D 2 - - - 0x01C8F5 07:C8E5: 68        .byte $68   ; h
- D 2 - - - 0x01C8F6 07:C8E6: 69        .byte $69   ; i
- D 2 - - - 0x01C8F7 07:C8E7: 6B        .byte $6B   ; k
- D 2 - - - 0x01C8F8 07:C8E8: 61        .byte $61   ; a
- D 2 - - - 0x01C8F9 07:C8E9: 77        .byte $77   ; w
- D 2 - - - 0x01C8FA 07:C8EA: 61        .byte $61   ; a
- D 2 - - - 0x01C8FB 07:C8EB: 00        .byte $00   ; 

bra_C8EC_skip:
C - - - - - 0x01C8FC 07:C8EC: A2 09     LDX #$09                 ; set loop counter
@bra_C8EE_loop:                                                  ; loop by x
C - - - - - 0x01C8FE 07:C8EE: BD E2 C8  LDA tbl_C8E2_symbols,X   ;
C - - - - - 0x01C901 07:C8F1: 9D 00 01  STA ram_0100,X           ; set Yoshikawa
C - - - - - 0x01C904 07:C8F4: CA        DEX                      ; decrement x
C - - - - - 0x01C905 07:C8F5: 10 F7     BPL @bra_C8EE_loop       ; In Register X >= 0x00 && X < 0x80
C - - - - - 0x01C907 07:C8F7: A9 00     LDA #$00                 ; CONSTANT - The menu
C - - - - - 0x01C909 07:C8F9: 85 24     STA vMenuDemoIndex       ;
C - - - - - 0x01C90B 07:C8FB: A2 99     LDX #$99                 ; next [0x0099-0x009F] in 0
C - - - - - 0x01C90D 07:C8FD: 20 11 C9  JSR sub_C911_memset_zero ; 
C - - - - - 0x01C910 07:C900: A9 05     LDA #$05                 ;  
C - - - - - 0x01C912 07:C902: 85 9C     STA vHiScore + 3         ;
sub_C904_clear_score:
C - - - - - 0x01C914 07:C904: A2 A0     LDX #$A0                 ; next [0x00A0-0x00A6] in 0
C - - - - - 0x01C916 07:C906: 20 11 C9  JSR sub_C911_memset_zero ; 
C - - - - - 0x01C919 07:C909: 85 5D     STA vNonUsed5D           ;
C - - - - - 0x01C91B 07:C90B: A9 05     LDA #$05                 ;
C - - - - - 0x01C91D 07:C90D: 85 A3     STA vNonUsed3            ;
C - - - - - 0x01C91F 07:C90F: A2 56     LDX #$56                 ; next [0x0056-0x005C] in 0, i.e. vScore = 0
; in: Register x - the offset of the address
sub_C911_memset_zero:
C - - - - - 0x01C921 07:C911: A0 07     LDY #$07                 ; set loop counter
C - - - - - 0x01C923 07:C913: A9 00     LDA #$00                 ; set loop value
@bra_C915_loop:                                                  ; loop by y
C - - - - - 0x01C925 07:C915: 95 00     STA ram_0000,X           ;
C - - - - - 0x01C927 07:C917: E8        INX                      ;
C - - - - - 0x01C928 07:C918: 88        DEY                      ; decrement y
C - - - - - 0x01C929 07:C919: D0 FA     BNE @bra_C915_loop       ; If Register Y != 0
C - - - - - 0x01C92B 07:C91B: 60        RTS                      ;

; The PPU_ADDRESS is set.
; In: Register X - 0x56 for Score, 0x99 for HiScore
sub_C91C_display_menu_score:
C - - - - - 0x01C92C 07:C91C: A9 80     LDA #$80                ;
C - - - - - 0x01C92E 07:C91E: 85 08     STA ram_0008            ; $0008 <~ 0x80
C - - - - - 0x01C930 07:C920: A9 80     LDA #$80                ;
C - - - - - 0x01C932 07:C922: 85 09     STA ram_0009            ; $0009 <~ 0x80
; In: $0008 - a tile number for blank
; In: $0009 - a tile number '0'
loc_C924_display_menu_score_ex:
sub_C924_display_menu_score_ex:
C D 2 - - - 0x01C934 07:C924: A9 00     LDA #$00                ;
C - - - - - 0x01C936 07:C926: 85 07     STA ram_0007            ; $0007 <~ 0x00
C - - - - - 0x01C938 07:C928: A0 07     LDY #$07                ; set loop counter
@bra_C92A_loop:                                                 ; loop by y (7 times)
C - - - - - 0x01C93A 07:C92A: B5 00     LDA ram_0000,X          ; load a score symbol
C - - - - - 0x01C93C 07:C92C: F0 02     BEQ @bra_C930_skip      ; If symbol == '0'
C - - - - - 0x01C93E 07:C92E: C6 07     DEC ram_0007            ; marks that it's the first non-null symbol
@bra_C930_skip:
C - - - - - 0x01C940 07:C930: 24 07     BIT ram_0007            ;
C - - - - - 0x01C942 07:C932: 30 06     BMI @bra_C93A_skip      ; Branch If need display a symbol
C - - - - - 0x01C944 07:C934: C0 03     CPY #$03                ;
C - - - - - 0x01C946 07:C936: 90 02     BCC @bra_C93A_skip      ; Branch If Register Y < 0x03 (the last 2 symbol are displayed in any case)
C - - - - - 0x01C948 07:C938: A5 08     LDA ram_0008            ; 0x80 + 0x80 -> 0x00, the tile number for blank
@bra_C93A_skip:
C - - - - - 0x01C94A 07:C93A: 18        CLC                     ;
C - - - - - 0x01C94B 07:C93B: 65 09     ADC ram_0009            ; 0x80 - '0', 0x81 - '1', 0x82 - '2', 0x83 - '3', ... , 0x89 - '9'
C - - - - - 0x01C94D 07:C93D: 8D 07 20  STA PPU_DATA            ;
C - - - - - 0x01C950 07:C940: E8        INX                     ; next a score symbol
C - - - - - 0x01C951 07:C941: 88        DEY                     ; decrement y
C - - - - - 0x01C952 07:C942: D0 E6     BNE @bra_C92A_loop      ; If Register Y != 0
C - - - - - 0x01C954 07:C944: 60        RTS                     ;

bra_C945_exit:
C - - - - - 0x01C955 07:C945: 68        PLA                     ; retrieve A (see $C947 or $C960)
C - - - - - 0x01C956 07:C946: 60        RTS                     ;

; In: Register A - score value 0xVV, V - a digit (0x65 - 650 Score)
; In: Register X - the enemyA number
loc_C947_add_score:
C D 2 - - - 0x01C957 07:C947: 48        PHA                                    ; store A
C - - - - - 0x01C958 07:C948: A5 37     LDA vCutscenesMode                     ;
C - - - - - 0x01C95A 07:C94A: 30 F9     BMI bra_C945_exit                      ; Branch If cutscenes are used
C - - - - - 0x01C95C 07:C94C: 68        PLA                                    ; retrieve A (see $C947)
C - - - - - 0x01C95D 07:C94D: 48        PHA                                    ; store A
C - - - - - 0x01C95E 07:C94E: 29 0F     AND #$0F                               ;
C - - - - - 0x01C960 07:C950: 85 AC     STA vEnemyScore + 6                    ; ~> 7th digit of 7
C - - - - - 0x01C962 07:C952: 68        PLA                                    ; retrieve A (see $C94D)
C - - - - - 0x01C963 07:C953: 20 5F D0  JSR sub_accumulator_shift_right_by_4   ;
C - - - - - 0x01C966 07:C956: 85 AB     STA vEnemyScore + 5                    ; ~> 6th digit of 7
C - - - - - 0x01C968 07:C958: 8A        TXA                                    ; A <~ the enemyA number
C - - - - - 0x01C969 07:C959: 48        PHA                                    ; store A
C - - - - - 0x01C96A 07:C95A: A9 00     LDA #$00                               ;
C - - - - - 0x01C96C 07:C95C: 85 AA     STA vEnemyScore + 4                    ; clear 5th digit of 7
C - - - - - 0x01C96E 07:C95E: F0 17     BEQ bra_C977                           ; Always true

; In: Register A - score value 0xVV, V - a digit (0x65 - 6500 Score)
sub_C960_add_score2:
C - - - - - 0x01C970 07:C960: 48        PHA                                    ;
C - - - - - 0x01C971 07:C961: A5 37     LDA vCutscenesMode                     ;
C - - - - - 0x01C973 07:C963: 30 E0     BMI bra_C945_exit                      ; Branch If cutscenes are used
C - - - - - 0x01C975 07:C965: 68        PLA                                    ; retrieve A (see $C960)
C - - - - - 0x01C976 07:C966: 48        PHA                                    ; store A
C - - - - - 0x01C977 07:C967: 29 0F     AND #$0F                               ;
C - - - - - 0x01C979 07:C969: 85 AB     STA vEnemyScore + 5                    ; ~> 6th digit of 7
C - - - - - 0x01C97B 07:C96B: 68        PLA                                    ; retrieve A (see $C966)
C - - - - - 0x01C97C 07:C96C: 20 5F D0  JSR sub_accumulator_shift_right_by_4   ;
C - - - - - 0x01C97F 07:C96F: 85 AA     STA vEnemyScore + 4                    ; ~> 5th digit of 7
C - - - - - 0x01C981 07:C971: 8A        TXA                                    ;
C - - - - - 0x01C982 07:C972: 48        PHA                                    ; diposit X
C - - - - - 0x01C983 07:C973: A9 00     LDA #$00                               ;
C - - - - - 0x01C985 07:C975: 85 AC     STA vEnemyScore + 6                    ; clear 7th digit of 7
bra_C977:
C - - - - - 0x01C987 07:C977: A2 02     LDX #$02                               ; set loop counter
@bra_C979_loop:                                                                ; loop by x (3 times)
C - - - - - 0x01C989 07:C979: 95 A7     STA vEnemyScore + 1,X                  ; clear (A = 0)
C - - - - - 0x01C98B 07:C97B: CA        DEX                                    ; decrement loop counter
C - - - - - 0x01C98C 07:C97C: 10 FB     BPL @bra_C979_loop                     ; If Register X < 0x80
C - - - - - 0x01C98E 07:C97E: A2 05     LDX #$05                               ; set loop counter
bra_C980_loop:                                                                 ; loop by x
C - - - - - 0x01C990 07:C980: B5 A7     LDA vEnemyScore + 1,X                  ;
C - - - - - 0x01C992 07:C982: 18        CLC                                    ;
C - - - - - 0x01C993 07:C983: 75 56     ADC vScore,X                           ; adds an enemy score in the shared score
loc_C985_next:
C D 2 - - - 0x01C995 07:C985: C9 0A     CMP #$0A                               ;
C - - - - - 0x01C997 07:C987: 90 08     BCC bra_C991_store_score               ; If vScore[X] < 0x0A
C - - - - - 0x01C999 07:C989: 38        SEC                                    ;
C - - - - - 0x01C99A 07:C98A: E9 0A     SBC #$0A                               ;
C - - - - - 0x01C99C 07:C98C: F6 A6     INC vEnemyScore,X                      ; fixes an overflow
C - - - - - 0x01C99E 07:C98E: 4C 85 C9  JMP loc_C985_next                      ;

bra_C991_store_score:
C - - - - - 0x01C9A1 07:C991: 95 56     STA vScore,X                           ;
C - - - - - 0x01C9A3 07:C993: CA        DEX                                    ; decrement loop counter
C - - - - - 0x01C9A4 07:C994: 10 EA     BPL bra_C980_loop                      ; If Register X < 0x80
C - - - - - 0x01C9A6 07:C996: A2 00     LDX #$00                               ; set loop counter
bra_C998_loop:                                                                 ; loop by x
C - - - - - 0x01C9A8 07:C998: B5 56     LDA vScore,X                           ;
C - - - - - 0x01C9AA 07:C99A: D5 99     CMP vHiScore,X                         ;
C - - - - - 0x01C9AC 07:C99C: 90 12     BCC bra_C9B0_exit                      ; If vScore[X] < vHiScore[X]
C - - - - - 0x01C9AE 07:C99E: D0 07     BNE @bra_C9A7_loop                     ; If vScore[X] != 0x00 then need update Hi-Score
C - - - - - 0x01C9B0 07:C9A0: E8        INX                                    ; increment loop counter
C - - - - - 0x01C9B1 07:C9A1: E0 07     CPX #$07                               ;
C - - - - - 0x01C9B3 07:C9A3: 90 F3     BCC bra_C998_loop                      ; If Register X < 0x07
C - - - - - 0x01C9B5 07:C9A5: B0 09     BCS bra_C9B0_exit                      ; Always true

@bra_C9A7_loop:
C - - - - - 0x01C9B7 07:C9A7: B5 56     LDA vScore,X                           ;
C - - - - - 0x01C9B9 07:C9A9: 95 99     STA vHiScore,X                         ; updates Hi-Score
C - - - - - 0x01C9BB 07:C9AB: E8        INX                                    ; increment loop counter
C - - - - - 0x01C9BC 07:C9AC: E0 07     CPX #$07                               ;
C - - - - - 0x01C9BE 07:C9AE: 90 F7     BCC @bra_C9A7_loop                     ; If Register X < 0x07
bra_C9B0_exit:
C - - - - - 0x01C9C0 07:C9B0: 68        PLA                                    ;
C - - - - - 0x01C9C1 07:C9B1: AA        TAX                                    ; retrieve X (see $C959 or $C972)
bra_C9B2_RTS:
C - - - - - 0x01C9C2 07:C9B2: 60        RTS                                    ;

sub_C9B3_prepare_inventory_ppu_cache:
C - - - - - 0x01C9C3 07:C9B3: A5 19     LDA vRenderActive               ;
C - - - - - 0x01C9C5 07:C9B5: D0 FB     BNE bra_C9B2_RTS                ; Branch If the render isn't activated
C - - - - - 0x01C9C7 07:C9B7: A5 3B     LDA vSharedGameStatus           ;
C - - - - - 0x01C9C9 07:C9B9: 6A        ROR                             ; 
C - - - - - 0x01C9CA 07:C9BA: B0 F6     BCS bra_C9B2_RTS                ; Branch if 'A screen with the message'
C - - - - - 0x01C9CC 07:C9BC: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01C9CE 07:C9BE: 29 02     AND #$02                        ;
C - - - - - 0x01C9D0 07:C9C0: D0 03     BNE bra_C9C5_skip               ; Branch every 2 times after 2
C - - - - - 0x01C9D2 07:C9C2: 4C 48 CA  JMP loc_CA48_prepare_icon_items ;

bra_C9C5_skip:
C - - - - - 0x01C9D5 07:C9C5: A2 25     LDX #$25                   ; the number of PpuAddrDataCache bytes
C - - - - - 0x01C9D7 07:C9C7: 20 3F CA  JSR sub_CA3F_clear_inventory_panel ;
C - - - - - 0x01C9DA 07:C9CA: 20 13 CA  JSR sub_CA13_score_or_pause        ;
C - - - - - 0x01C9DD 07:C9CD: A9 1B     LDA #$1B                     ; a count
C - - - - - 0x01C9DF 07:C9CF: 8D 83 06  STA vPpuAddrDataCache + 8    ;
C - - - - - 0x01C9E2 07:C9D2: A9 20     LDA #$20                     ; a high ppu address
C - - - - - 0x01C9E4 07:C9D4: 8D 84 06  STA vPpuAddrDataCache + 9    ;
C - - - - - 0x01C9E7 07:C9D7: A9 83     LDA #$83                     ; a low ppu address
C - - - - - 0x01C9E9 07:C9D9: 8D 85 06  STA vPpuAddrDataCache + 10   ;
C - - - - - 0x01C9EC 07:C9DC: A2 00     LDX #$00                     ;
C - - - - - 0x01C9EE 07:C9DE: 86 07     STX ram_0007                 ; fact of displaying some digit
C - - - - - 0x01C9F0 07:C9E0: A0 07     LDY #$07                     ; set loop counter
@bra_C9E2_loop:                                                      ; loop by y
C - - - - - 0x01C9F2 07:C9E2: B5 56     LDA vScore,X                 ;  
C - - - - - 0x01C9F4 07:C9E4: D0 08     BNE @bra_C9EE_skip           ; Branch If Register A != 0x00
C - - - - - 0x01C9F6 07:C9E6: 24 07     BIT ram_0007                 ;
C - - - - - 0x01C9F8 07:C9E8: 30 04     BMI @bra_C9EE_skip           ; Branch If ram_0007 == 0%1XXXXXXX
C - - - - - 0x01C9FA 07:C9EA: C0 03     CPY #$03                     ; show 00 in score (3 - 1 = 2 digits)
C - - - - - 0x01C9FC 07:C9EC: B0 07     BCS @bra_C9F5_skip           ; Branch If Register Y >= 0x03
@bra_C9EE_skip:
C - - - - - 0x01C9FE 07:C9EE: C6 07     DEC ram_0007                 ;
C - - - - - 0x01CA00 07:C9F0: 09 40     ORA #$40                     ; 0x40-0x49 are tiles for '0'-'9' digits
C - - - - - 0x01CA02 07:C9F2: 9D 91 06  STA vPpuAddrDataCache + 22,X ;
@bra_C9F5_skip:
C - - - - - 0x01CA05 07:C9F5: E8        INX                          ; next a score position
C - - - - - 0x01CA06 07:C9F6: 88        DEY                          ; decrement counter y
C - - - - - 0x01CA07 07:C9F7: D0 E9     BNE @bra_C9E2_loop           ; Branch If Register Y != 0
C - - - - - 0x01CA09 07:C9F9: A2 00     LDX #$00                     ; set loop counter
@bra_C9FB_loop:                                                      ; loop by x
C - - - - - 0x01CA0B 07:C9FB: BD 00 02  LDA v_items,X                ;
C - - - - - 0x01CA0E 07:C9FE: F0 08     BEQ @bra_CA08_skip           ; Branch If a item is missing
C - - - - - 0x01CA10 07:CA00: 09 40     ORA #$40                     ; 0x40-0x49 are tiles for '0'-'9' digits
C - - - - - 0x01CA12 07:CA02: BC CE CA  LDY tbl_CACE_offset,X        ;
C - - - - - 0x01CA15 07:CA05: 99 7B 06  STA vPpuAddrDataCache,Y      ; caches only the number of the items (the digits themselves)
@bra_CA08_skip:                                                      ; loop by x
C - - - - - 0x01CA18 07:CA08: E8        INX                          ; increment counter x
C - - - - - 0x01CA19 07:CA09: E0 09     CPX #$09                     ;
C - - - - - 0x01CA1B 07:CA0B: D0 EE     BNE @bra_C9FB_loop           ; Branch If Register X != 0x09
C - - - - - 0x01CA1D 07:CA0D: A9 00     LDA #$00                     ;
C - - - - - 0x01CA1F 07:CA0F: 8D A1 06  STA vPpuAddrDataCache + 38   ; mark for the end of the cache
C - - - - - 0x01CA22 07:CA12: 60        RTS                          ;

; Prepare “SCORE” or “PAUSE” tiles for rendering.
sub_CA13_score_or_pause:
C - - - - - 0x01CA23 07:CA13: A9 05     LDA #$05                    ; a count
C - - - - - 0x01CA25 07:CA15: 8D 7B 06  STA vPpuAddrDataCache       ;
C - - - - - 0x01CA28 07:CA18: A9 20     LDA #$20                    ; a high ppu address
C - - - - - 0x01CA2A 07:CA1A: 8D 7C 06  STA vPpuAddrDataCache + 1   ;
C - - - - - 0x01CA2D 07:CA1D: A9 4F     LDA #$4F                    ; a low ppu address
C - - - - - 0x01CA2F 07:CA1F: 8D 7D 06  STA vPpuAddrDataCache + 2   ;
C - - - - - 0x01CA32 07:CA22: A2 00     LDX #$00                    ;
C - - - - - 0x01CA34 07:CA24: A0 00     LDY #$00                    ;
C - - - - - 0x01CA36 07:CA26: 24 38     BIT vPauseStatus            ;
C - - - - - 0x01CA38 07:CA28: 50 08     BVC @bra_CA32_loop          ; Branch if no pause
C - - - - - 0x01CA3A 07:CA2A: A0 05     LDY #$05                    ; changes the index in the table
C - - - - - 0x01CA3C 07:CA2C: A5 2C     LDA vLowCounter             ;
C - - - - - 0x01CA3E 07:CA2E: 29 18     AND #$18                    ;
C - - - - - 0x01CA40 07:CA30: F0 0C     BEQ @bra_CA3E_RTS           ; Branch If vLowCounter doesn't division without remainder by 8 and 16
@bra_CA32_loop:
C - - - - - 0x01CA42 07:CA32: B9 C4 CA  LDA tbl_CAC4_tiles,Y        ;
C - - - - - 0x01CA45 07:CA35: 9D 7E 06  STA vPpuAddrDataCache + 3,X ; tile numbers
C - - - - - 0x01CA48 07:CA38: C8        INY                         ;
C - - - - - 0x01CA49 07:CA39: E8        INX                         ; increment x
C - - - - - 0x01CA4A 07:CA3A: E0 05     CPX #$05                    ;
C - - - - - 0x01CA4C 07:CA3C: D0 F4     BNE @bra_CA32_loop          ; If Register X != 0x05
@bra_CA3E_RTS:
C - - - - - 0x01CA4E 07:CA3E: 60        RTS                         ;

; In: Register X - the counter
sub_CA3F_clear_inventory_panel:
C - - - - - 0x01CA4F 07:CA3F: A9 01     LDA #$01          ; an assigned value (Tile number)
bra_CA41_loop:
; In: Register X - the counter
; In: Register A - an assigned value
sub_CA41_fill_ppu_addr_data_cache:
C - - - - - 0x01CA51 07:CA41: 9D 7B 06  STA vPpuAddrDataCache,X ;
C - - - - - 0x01CA54 07:CA44: CA        DEX                     ; decrement x
C - - - - - 0x01CA55 07:CA45: 10 FA     BPL bra_CA41_loop       ; In Register X >= 0x00 && X < 0x80
C - - - - - 0x01CA57 07:CA47: 60        RTS                     ;

loc_CA48_prepare_icon_items:
C D 2 - - - 0x01CA58 07:CA48: A2 09     LDX #$09              ; set loop counter
@bra_CA4A_loop:                                               ; loop by x
C - - - - - 0x01CA5A 07:CA4A: BD 0A 02  LDA vItemsBlinkTime,X ;
C - - - - - 0x01CA5D 07:CA4D: F0 03     BEQ @bra_CA52_skip    ; If Register A == 0x00
C - - - - - 0x01CA5F 07:CA4F: DE 0A 02  DEC vItemsBlinkTime,X ;
@bra_CA52_skip:
C - - - - - 0x01CA62 07:CA52: CA        DEX                 ; decrement x
C - - - - - 0x01CA63 07:CA53: 10 F5     BPL @bra_CA4A_loop  ; Branch If Register X < 0x80
C - - - - - 0x01CA65 07:CA55: A2 31     LDX #$31                           ; the number of PpuAddrDataCache bytes
C - - - - - 0x01CA67 07:CA57: 20 3F CA  JSR sub_CA3F_clear_inventory_panel ;
C - - - - - 0x01CA6A 07:CA5A: A2 00     LDX #$00                           ;
C - - - - - 0x01CA6C 07:CA5C: A0 00     LDY #$00                           ; set loop counter
@bra_CA5E_loop:                                                            ; loop by y
C - - - - - 0x01CA6E 07:CA5E: BD E0 CA  LDA tbl_CAE0_attrs,X               ; 
C - - - - - 0x01CA71 07:CA61: 99 7B 06  STA vPpuAddrDataCache,Y            ; 
C - - - - - 0x01CA74 07:CA64: BD E1 CA  LDA tbl_CAE0_attrs + 1,X           ;
C - - - - - 0x01CA77 07:CA67: 99 89 06  STA vPpuAddrDataCache + 14,Y       ;
C - - - - - 0x01CA7A 07:CA6A: BD E2 CA  LDA tbl_CAE0_attrs + 2,X           ;
C - - - - - 0x01CA7D 07:CA6D: 99 94 06  STA vPpuAddrDataCache + 25,Y       ; 
C - - - - - 0x01CA80 07:CA70: BD E3 CA  LDA tbl_CAE0_attrs + 3,X           ;
C - - - - - 0x01CA83 07:CA73: 99 A2 06  STA vPpuAddrDataCache + 39,Y       ;
C - - - - - 0x01CA86 07:CA76: E8        INX                                ; 
C - - - - - 0x01CA87 07:CA77: E8        INX                                ; 
C - - - - - 0x01CA88 07:CA78: E8        INX                                ; 
C - - - - - 0x01CA89 07:CA79: E8        INX                                ; increnemnt x for the table
C - - - - - 0x01CA8A 07:CA7A: C8        INY                                ; increnemnt counter y
C - - - - - 0x01CA8B 07:CA7B: C0 03     CPY #$03                           ;
C - - - - - 0x01CA8D 07:CA7D: D0 DF     BNE @bra_CA5E_loop                 ; If Register Y != 0x03
C - - - - - 0x01CA8F 07:CA7F: A9 08     LDA #$08                ;
C - - - - - 0x01CA91 07:CA81: 85 1A     STA v_loc_CA48_counter  ; set loop counter
@bra_CA83_loop:                                                 ; loop by CA48_counter
C - - - - - 0x01CA93 07:CA83: A6 1A     LDX v_loc_CA48_counter  ;
C - - - - - 0x01CA95 07:CA85: BD 0A 02  LDA vItemsBlinkTime,X   ;
C - - - - - 0x01CA98 07:CA88: 29 08     AND #$08                ;
C - - - - - 0x01CA9A 07:CA8A: D0 0E     BNE @bra_CA9A_put_cache ; If BlinkTime is 0%XXXX1XXX (every 8 after 8)
C - - - - - 0x01CA9C 07:CA8C: BD 00 02  LDA v_items,X           ;
C - - - - - 0x01CA9F 07:CA8F: F0 29     BEQ @bra_CABA_skip      ; Branch If item is missing
C - - - - - 0x01CAA1 07:CA91: BD 0A 02  LDA vItemsBlinkTime,X   ;
C - - - - - 0x01CAA4 07:CA94: F0 04     BEQ @bra_CA9A_put_cache ; Branch If BlinkTime is time out
C - - - - - 0x01CAA6 07:CA96: 29 08     AND #$08                ;
C - - - - - 0x01CAA8 07:CA98: F0 20     BEQ @bra_CABA_skip      ; If BlinkTime isn't 0%XXXX1XXX (every 8 after 8, never true)
@bra_CA9A_put_cache:
C - - - - - 0x01CAAA 07:CA9A: 8A        TXA                          ;  
C - - - - - 0x01CAAB 07:CA9B: 0A        ASL                          ;
C - - - - - 0x01CAAC 07:CA9C: 0A        ASL                          ;
C - - - - - 0x01CAAD 07:CA9D: A8        TAY                          ; Y = 4 * X (offset by 4 bytes)
C - - - - - 0x01CAAE 07:CA9E: BD D7 CA  LDA tbl_CAD7_offset,X        ; offset in vPpuAddrDataCache
C - - - - - 0x01CAB1 07:CAA1: AA        TAX                          ;  
C - - - - - 0x01CAB2 07:CAA2: B9 EC CA  LDA tbl_CAEC_items,Y         ;
C - - - - - 0x01CAB5 07:CAA5: 9D 7B 06  STA vPpuAddrDataCache,X      ; ppu data (tile number)
C - - - - - 0x01CAB8 07:CAA8: B9 ED CA  LDA tbl_CAEC_items + 1,Y     ;
C - - - - - 0x01CABB 07:CAAB: 9D 7C 06  STA vPpuAddrDataCache + 1,X  ; ppu data (tile number)
C - - - - - 0x01CABE 07:CAAE: B9 EE CA  LDA tbl_CAEC_items + 2,Y     ;
C - - - - - 0x01CAC1 07:CAB1: 9D 94 06  STA vPpuAddrDataCache + 25,X ; ppu data (tile number)
C - - - - - 0x01CAC4 07:CAB4: B9 EF CA  LDA tbl_CAEC_items + 3,Y     ;
C - - - - - 0x01CAC7 07:CAB7: 9D 95 06  STA vPpuAddrDataCache + 26,X ; ppu data (tile number)
@bra_CABA_skip:
C - - - - - 0x01CACA 07:CABA: C6 1A     DEC v_loc_CA48_counter       ; decrement CA48_counter
C - - - - - 0x01CACC 07:CABC: 10 C5     BPL @bra_CA83_loop           ; Branch If decrement CA48 < 0x80
C - - - - - 0x01CACE 07:CABE: A9 00     LDA #$00                     ; 
C - - - - - 0x01CAD0 07:CAC0: 8D AD 06  STA vPpuAddrDataCache + 50   ; mark for the end of the cache
C - - - - - 0x01CAD3 07:CAC3: 60        RTS                          ;  

tbl_CAC4_tiles:
- D 2 - - - 0x01CAD4 07:CAC4: 4D        .byte $4D ; S
- D 2 - - - 0x01CAD5 07:CAC5: 50        .byte $50 ; C
- D 2 - - - 0x01CAD6 07:CAC6: 51        .byte $51 ; O
- D 2 - - - 0x01CAD7 07:CAC7: 52        .byte $52 ; R
- D 2 - - - 0x01CAD8 07:CAC8: 4E        .byte $4E ; E
- D 2 - - - 0x01CAD9 07:CAC9: 4A        .byte $4A ; P
- D 2 - - - 0x01CADA 07:CACA: 4B        .byte $4B ; A
- D 2 - - - 0x01CADB 07:CACB: 4C        .byte $4C ; U
- D 2 - - - 0x01CADC 07:CACC: 4D        .byte $4D ; S
- D 2 - - - 0x01CADD 07:CACD: 4E        .byte $4E ; E
tbl_CACE_offset:
- D 2 - - - 0x01CADE 07:CACE: 0B        .byte $0B ; Radio
- D 2 - - - 0x01CADF 07:CACF: 0E        .byte $0E ; Bomb
- D 2 - - - 0x01CAE0 07:CAD0: 10        .byte $10 ; Artillery Rifle
- D 2 - - - 0x01CAE1 07:CAD1: 12        .byte $12 ; Jet-pack
- D 2 - - - 0x01CAE2 07:CAD2: 14        .byte $14 ; Infrared Goggles
- D 2 - - - 0x01CAE3 07:CAD3: 1F        .byte $1F ; Breathing apparatus
- D 2 - - - 0x01CAE4 07:CAD4: 21        .byte $21 ; Helium balloon
- D 2 - - - 0x01CAE5 07:CAD5: 23        .byte $23 ; Bullet proof vest
- D 2 - - - 0x01CAE6 07:CAD6: 25        .byte $25 ; Ruby ring
tbl_CAD7_offset:
- D 2 - - - 0x01CAE7 07:CAD7: 03        .byte $03
- D 2 - - - 0x01CAE8 07:CAD8: 06        .byte $06
- D 2 - - - 0x01CAE9 07:CAD9: 08        .byte $08
- D 2 - - - 0x01CAEA 07:CADA: 0A        .byte $0A
- D 2 - - - 0x01CAEB 07:CADB: 0C        .byte $0C
- D 2 - - - 0x01CAEC 07:CADC: 11        .byte $11
- D 2 - - - 0x01CAED 07:CADD: 13        .byte $13
- D 2 - - - 0x01CAEE 07:CADE: 15        .byte $15
- D 2 - - - 0x01CAEF 07:CADF: 17        .byte $17
tbl_CAE0_attrs:
- D 2 - - - 0x01CAF0 07:CAE0: 0B        .byte $0B ; count
- D 2 - - - 0x01CAF1 07:CAE1: 08        .byte $08 ; count
- D 2 - - - 0x01CAF2 07:CAE2: 0B        .byte $0B ; count
- D 2 - - - 0x01CAF3 07:CAE3: 08        .byte $08 ; count
- D 2 - - - 0x01CAF4 07:CAE4: 20        .byte $20 ; ppu high address
- D 2 - - - 0x01CAF5 07:CAE5: 20        .byte $20 ; ppu high address
- D 2 - - - 0x01CAF6 07:CAE6: 20        .byte $20 ; ppu high address
- D 2 - - - 0x01CAF7 07:CAE7: 20        .byte $20 ; ppu high address
- D 2 - - - 0x01CAF8 07:CAE8: 42        .byte $42 ; ppu low address
- D 2 - - - 0x01CAF9 07:CAE9: 56        .byte $56 ; ppu low address
- D 2 - - - 0x01CAFA 07:CAEA: 62        .byte $62 ; ppu low address
- D 2 - - - 0x01CAFB 07:CAEB: 76        .byte $76 ; ppu low address
tbl_CAEC_items:
- D 2 - - - 0x01CAFC 07:CAEC: 54        .byte $54, $56, $55, $57 ; Radio
- D 2 - - - 0x01CB00 07:CAF0: 58        .byte $58, $5A, $59, $5B ; Bomb
- D 2 - - - 0x01CB04 07:CAF4: 5C        .byte $5C, $5E, $5D, $5F ; Artillery Rifle
- D 2 - - - 0x01CB08 07:CAF8: 60        .byte $60, $62, $61, $63 ; Jet-pack
- D 2 - - - 0x01CB0C 07:CAFC: 64        .byte $64, $66, $65, $67 ; Infrared Goggles
- D 2 - - - 0x01CB10 07:CB00: 68        .byte $68, $6A, $69, $6B ; Breathing apparatus
- D 2 - - - 0x01CB14 07:CB04: 6C        .byte $6C, $6E, $6D, $6F ; Helium balloon
- D 2 - - - 0x01CB18 07:CB08: 70        .byte $70, $72, $71, $73 ; Bullet proof vest
- D 2 - - - 0x01CB1C 07:CB0C: 74        .byte $74, $76, $75, $77 ; Ruby ring
tbl_CB10_frame_for_current_item:
- D 2 - - - 0x01CB20 07:CB10: 0F        .byte $0F, $03, $81, $00
- D 2 - - - 0x01CB24 07:CB14: 0F        .byte $0F, $03, $C1, $08
- D 2 - - - 0x01CB28 07:CB18: 17        .byte $17, $03, $01, $00
- D 2 - - - 0x01CB2C 07:CB1C: 17        .byte $17, $03, $41, $08
tbl_CB20_item_offset_x:
- D 2 - - - 0x01CB30 07:CB20: 10        .byte $10 ; Radio
- D 2 - - - 0x01CB31 07:CB21: 28        .byte $28 ; Bomb
- D 2 - - - 0x01CB32 07:CB22: 38        .byte $38 ; Artillery Rifle
- D 2 - - - 0x01CB33 07:CB23: 48        .byte $48 ; Jet-pack
- D 2 - - - 0x01CB34 07:CB24: 58        .byte $58 ; Infrared Goggles
- D - - - - 0x01CB35 07:CB25: B0        .byte $B0 ; Breathing apparatus
- D - - - - 0x01CB36 07:CB26: C0        .byte $C0 ; Helium balloon
- D - - - - 0x01CB37 07:CB27: D0        .byte $D0 ; Bullet proof vest
- D - - - - 0x01CB38 07:CB28: E0        .byte $E0 ; Ruby ring

; Out: carry flag (analog return true or false):
; 1, the current item is prohibited
; 0, otherwise.
sub_CB29_current_item_is_prohibited:
C - - - - - 0x01CB39 07:CB29: AD 14 02  LDA vCurrentWeaponStatus    ;
C - - - - - 0x01CB3C 07:CB2C: F0 08     BEQ bra_CB36_return_false   ; If the current item is the radio
C - - - - - 0x01CB3E 07:CB2E: A5 5F     LDA vChrLiveStatus          ;
C - - - - - 0x01CB40 07:CB30: 29 03     AND #$03                    ;
C - - - - - 0x01CB42 07:CB32: F0 02     BEQ bra_CB36_return_false   ; If the character is Lupin
C - - - - - 0x01CB44 07:CB34: 38        SEC                         ; return true
C - - - - - 0x01CB45 07:CB35: 60        RTS                         ;

bra_CB36_return_false:
C - - - - - 0x01CB46 07:CB36: 18        CLC                         ; return false
bra_CB37_RTS:
C - - - - - 0x01CB47 07:CB37: 60        RTS                         ;

sub_CB38_pause_handler:
C - - - - - 0x01CB48 07:CB38: A5 3B     LDA vSharedGameStatus                   ;
C - - - - - 0x01CB4A 07:CB3A: 6A        ROR                                     ;
C - - - - - 0x01CB4B 07:CB3B: B0 FA     BCS bra_CB37_RTS                        ; If A screen isn with the message
C - - - - - 0x01CB4D 07:CB3D: 24 6D     BIT vMovableChrStatus                   ;
C - - - - - 0x01CB4F 07:CB3F: 30 F6     BMI bra_CB37_RTS                        ; If the character is moving in the water
C - - - - - 0x01CB51 07:CB41: 70 F4     BVS bra_CB37_RTS                        ; If the character is moving on the balloon
C - - - - - 0x01CB53 07:CB43: 2C 14 02  BIT vCurrentWeaponStatus                ;
C - - - - - 0x01CB56 07:CB46: 30 EF     BMI bra_CB37_RTS                        ; If the weapons are not exist
C - - - - - 0x01CB58 07:CB48: 70 42     BVS bra_CB8C_render_frame_current_item  ; If the weapon is activated
C - - - - - 0x01CB5A 07:CB4A: AD 14 02  LDA vCurrentWeaponStatus                ;
C - - - - - 0x01CB5D 07:CB4D: 29 07     AND #$07                                ;
C - - - - - 0x01CB5F 07:CB4F: AA        TAX                                     ; X <~ the item number
C - - - - - 0x01CB60 07:CB50: A9 05     LDA #$05                                ; !(UNUSED)
C - - - - - 0x01CB62 07:CB52: 85 14     STA ram_0014                            ; !(UNUSED)
C - - - - - 0x01CB64 07:CB54: A9 C0     LDA #BIT_BUTTON_Left_OR_Right           ;
C - - - - - 0x01CB66 07:CB56: 20 79 D0  JSR sub_D079_check_button_press         ;
C - - - - - 0x01CB69 07:CB59: F0 31     BEQ bra_CB8C_render_frame_current_item  ; Go to the branch If the buttons 'Left' or 'Right' aren't pressed
C - - - - - 0x01CB6B 07:CB5B: C9 40     CMP #BIT_BUTTON_Left                    ;
C - - - - - 0x01CB6D 07:CB5D: D0 11     BNE bra_CB70_right                      ; Go to the branch If the buttons 'Right' is pressed
bra_CB5F_left:
C - - - - - 0x01CB6F 07:CB5F: CA        DEX                                     ; previous item
C - - - - - 0x01CB70 07:CB60: 10 02     BPL @bra_CB64_skip                      ; If the previous item >= 0x00
C - - - - - 0x01CB72 07:CB62: A2 04     LDX #$04                                ; CONSTANT - Max allow index
@bra_CB64_skip:
C - - - - - 0x01CB74 07:CB64: BD 00 02  LDA v_items,X                           ;
C - - - - - 0x01CB77 07:CB67: D0 17     BNE bra_CB80_found                      ; If the number of the current item > 0
C - - - - - 0x01CB79 07:CB69: C6 12     DEC v_temp_check_buttons                ; some finite number (at the start - 0xC0)
C - - - - - 0x01CB7B 07:CB6B: D0 F2     BNE bra_CB5F_left                       ; If vTempCheckButtons > 0x00
C - - - - - 0x01CB7D 07:CB6D: 4C 8C CB  JMP loc_CB8C_render_frame_current_item  ;

bra_CB70_right:
C - - - - - 0x01CB80 07:CB70: E8        INX                                     ; next item
C - - - - - 0x01CB81 07:CB71: E0 05     CPX #$05                                ;
C - - - - - 0x01CB83 07:CB73: D0 02     BNE bra_CB77_skip                       ; If the new index != 0x05
C - - - - - 0x01CB85 07:CB75: A2 00     LDX #$00                                ; CONSTANT - Min allow value
bra_CB77_skip:
C - - - - - 0x01CB87 07:CB77: BD 00 02  LDA v_items,X                           ;
C - - - - - 0x01CB8A 07:CB7A: D0 04     BNE bra_CB80_found                      ; If the number of the current item > 0
C - - - - - 0x01CB8C 07:CB7C: C6 12     DEC v_temp_check_buttons                ; some finite number (at the start - 0xC0)
C - - - - - 0x01CB8E 07:CB7E: D0 F0     BNE bra_CB70_right                      ; If vTempCheckButtons > 0x00
bra_CB80_found:
C - - - - - 0x01CB90 07:CB80: 86 00     STX ram_0000                            ;
C - - - - - 0x01CB92 07:CB82: AD 14 02  LDA vCurrentWeaponStatus                ;
C - - - - - 0x01CB95 07:CB85: 29 F0     AND #$F0                                ;
C - - - - - 0x01CB97 07:CB87: 05 00     ORA ram_0000                            ;
C - - - - - 0x01CB99 07:CB89: 8D 14 02  STA vCurrentWeaponStatus                ; reassigns the current item
bra_CB8C_render_frame_current_item:
sub_CB8C_render_frame_current_item:
loc_CB8C_render_frame_current_item:
C - - - - - 0x01CB9C 07:CB8C: A5 6D     LDA vMovableChrStatus                     ;
C - - - - - 0x01CB9E 07:CB8E: 30 48     BMI bra_CBD8_RTS                          ; If 'the character is moving in the water'
C - - - - - 0x01CBA0 07:CB90: A5 5F     LDA vChrLiveStatus                        ;
C - - - - - 0x01CBA2 07:CB92: 29 03     AND #$03                                  ;
C - - - - - 0x01CBA4 07:CB94: F0 0D     BEQ @bra_CBA3_skip                        ; If the character is Lupin
C - - - - - 0x01CBA6 07:CB96: AD 00 02  LDA vRadioItem                            ;
C - - - - - 0x01CBA9 07:CB99: F0 3D     BEQ bra_CBD8_RTS                          ; If vRadioItem = 0
C - - - - - 0x01CBAB 07:CB9B: AD 14 02  LDA vCurrentWeaponStatus                  ;
C - - - - - 0x01CBAE 07:CB9E: 29 F0     AND #$F0                                  ;
C - - - - - 0x01CBB0 07:CBA0: 8D 14 02  STA vCurrentWeaponStatus                  ; Reset the activable items for Jigen and Goemon
@bra_CBA3_skip:
C - - - - - 0x01CBB3 07:CBA3: AD 14 02  LDA vCurrentWeaponStatus                  ; 
C - - - - - 0x01CBB6 07:CBA6: 30 30     BMI bra_CBD8_RTS                          ; If the weapons are not exist
C - - - - - 0x01CBB8 07:CBA8: 29 07     AND #$07                                  ; get the number of the item
C - - - - - 0x01CBBA 07:CBAA: AA        TAX                                       ;
C - - - - - 0x01CBBB 07:CBAB: 20 06 CC  JSR sub_CC06_select_next_activatable_item ;
                                                                                  ; may be a bug with X = 0x80 ($CBA0 -> 8D)
C - - - - - 0x01CBBE 07:CBAE: BD 20 CB  LDA tbl_CB20_item_offset_x,X              ;
C - - - - - 0x01CBC1 07:CBB1: 85 01     STA ram_0001                              ; caches an offset
C - - - - - 0x01CBC3 07:CBB3: A2 00     LDX #$00                                  ; set loop counter
@bra_CBB5_loop:                                                                   ; loop by x (16 times)
C - - - - - 0x01CBC5 07:CBB5: BD 10 CB  LDA tbl_CB10_frame_for_current_item,X     ;
C - - - - - 0x01CBC8 07:CBB8: 9D F0 07  STA vStartOAM + 240,X                     ; <~ sprite Y-position
C - - - - - 0x01CBCB 07:CBBB: E8        INX                                       ; increment loop counter
C - - - - - 0x01CBCC 07:CBBC: BD 10 CB  LDA tbl_CB10_frame_for_current_item,X     ;
C - - - - - 0x01CBCF 07:CBBF: 9D F0 07  STA vStartOAM + 240,X                     ; <~ sprite tile number
C - - - - - 0x01CBD2 07:CBC2: E8        INX                                       ; increment loop counter
C - - - - - 0x01CBD3 07:CBC3: BD 10 CB  LDA tbl_CB10_frame_for_current_item,X     ;
C - - - - - 0x01CBD6 07:CBC6: 9D F0 07  STA vStartOAM + 240,X                     ; <~ the attributes of the sprite
C - - - - - 0x01CBD9 07:CBC9: E8        INX                                       ; increment loop counter
C - - - - - 0x01CBDA 07:CBCA: BD 10 CB  LDA tbl_CB10_frame_for_current_item,X     ;
C - - - - - 0x01CBDD 07:CBCD: 18        CLC                                       ;
C - - - - - 0x01CBDE 07:CBCE: 65 01     ADC ram_0001                              ; adds an offset
C - - - - - 0x01CBE0 07:CBD0: 9D F0 07  STA vStartOAM + 240,X                     ; <~ sprite X-position
C - - - - - 0x01CBE3 07:CBD3: E8        INX                                       ; increment loop counter
C - - - - - 0x01CBE4 07:CBD4: E0 10     CPX #$10                                  ;
C - - - - - 0x01CBE6 07:CBD6: D0 DD     BNE @bra_CBB5_loop                        ; If Register X != 0
bra_CBD8_RTS:
C - - - - - 0x01CBE8 07:CBD8: 60        RTS                                       ;

sub_CBD9_try_use_current_item:
C - - - - - 0x01CBE9 07:CBD9: 2C 14 02  BIT vCurrentWeaponStatus                ;
C - - - - - 0x01CBEC 07:CBDC: 30 4B     BMI bra_CC29_RTS                        ; If the weapons are not exist
C - - - - - 0x01CBEE 07:CBDE: 70 49     BVS bra_CC29_RTS                        ; If the weapon is activated
C - - - - - 0x01CBF0 07:CBE0: A5 6D     LDA vMovableChrStatus                   ;
C - - - - - 0x01CBF2 07:CBE2: 29 FE     AND #$FE                                ; CONSTANT - all except 'the character is moving on the lift'
C - - - - - 0x01CBF4 07:CBE4: D0 43     BNE bra_CC29_RTS                        ; If some movement (except the lift) is exist
C - - - - - 0x01CBF6 07:CBE6: A5 6C     LDA vChrStatus                          ;
C - - - - - 0x01CBF8 07:CBE8: 29 28     AND #$28                                ; CONSTANT - the character is dying or entering a corridor
C - - - - - 0x01CBFA 07:CBEA: D0 3D     BNE bra_CC29_RTS                        ; If the character is dying or entering a corridor
C - - - - - 0x01CBFC 07:CBEC: A9 04     LDA #BIT_BUTTON_SELECT                  ;
C - - - - - 0x01CBFE 07:CBEE: 20 79 D0  JSR sub_D079_check_button_press         ;
C - - - - - 0x01CC01 07:CBF1: F0 36     BEQ bra_CC29_RTS                        ; Go to the branch If the button 'Select' isn't pressed
C - - - - - 0x01CC03 07:CBF3: 20 29 CB  JSR sub_CB29_current_item_is_prohibited ;
C - - - - - 0x01CC06 07:CBF6: B0 31     BCS bra_CC29_RTS                        ; If the current item is prohibited
C - - - - - 0x01CC08 07:CBF8: 20 2A CC  JSR sub_CC2A_activate_current_item      ;
C - - - - - 0x01CC0B 07:CBFB: B0 2C     BCS bra_CC29_RTS                        ; If the current item wasn't activated
C - - - - - 0x01CC0D 07:CBFD: AD 14 02  LDA vCurrentWeaponStatus                ;
C - - - - - 0x01CC10 07:CC00: 29 0F     AND #$0F                                ;
C - - - - - 0x01CC12 07:CC02: AA        TAX                                     ; Prepare 'the index of the item'
C - - - - - 0x01CC13 07:CC03: 4C 13 CD  JMP loc_CD13_use_item                   ;

; In: Register X - the number of the item
; Out: Register X - next activatable item or 0x80
sub_CC06_select_next_activatable_item:
C - - - - - 0x01CC16 07:CC06: BD 00 02  LDA v_items,X              ;
C - - - - - 0x01CC19 07:CC09: D0 1E     BNE bra_CC29_RTS           ; If the count of the current item != 0
C - - - - - 0x01CC1B 07:CC0B: 2C 14 02  BIT vCurrentWeaponStatus   ;
C - - - - - 0x01CC1E 07:CC0E: 70 19     BVS bra_CC29_RTS           ; if the item-weapon is activated
C - - - - - 0x01CC20 07:CC10: A9 05     LDA #$05                   ;
C - - - - - 0x01CC22 07:CC12: 85 12     STA vTempCounter12         ; set loop counter
@bra_CC14_loop:                                                    ; loop by vTempCounter12 (5 times)
C - - - - - 0x01CC24 07:CC14: E8        INX                        ; next activatable item
C - - - - - 0x01CC25 07:CC15: E0 05     CPX #$05                   ;
C - - - - - 0x01CC27 07:CC17: D0 02     BNE @bra_CC1B_skip         ; If Register X != 0x05, i.e. next item exist
C - - - - - 0x01CC29 07:CC19: A2 00     LDX #$00                   ; First activatable item will be assigned next
@bra_CC1B_skip:
C - - - - - 0x01CC2B 07:CC1B: BD 00 02  LDA v_items,X              ;
C - - - - - 0x01CC2E 07:CC1E: D0 06     BNE @bra_CC26_skip         ; If the current item exist
C - - - - - 0x01CC30 07:CC20: C6 12     DEC vTempCounter12         ; decrement loop counter
C - - - - - 0x01CC32 07:CC22: D0 F0     BNE @bra_CC14_loop         ; If vTempCounter12 != 0
C - - - - - 0x01CC34 07:CC24: A2 80     LDX #$80                   ; CONSTANT - the weapons are not exist
@bra_CC26_skip:
C - - - - - 0x01CC36 07:CC26: 8E 14 02  STX vCurrentWeaponStatus   ;
bra_CC29_RTS:
C - - - - - 0x01CC39 07:CC29: 60        RTS                        ;

; Out: carry flag (analog return true or false):
; 0, if the current item was success activated
; 1, otherwise.
sub_CC2A_activate_current_item:
C - - - - - 0x01CC3A 07:CC2A: AD 14 02  LDA vCurrentWeaponStatus         ;
C - - - - - 0x01CC3D 07:CC2D: A4 46     LDY vNoRoom                      ;
C - - - - - 0x01CC3F 07:CC2F: C0 19     CPY #$19                         ; CONSTANT - level racing
C - - - - - 0x01CC41 07:CC31: D0 04     BNE bra_CC37_not_racing          ; If vNoRoom != 0x19
C - - - - - 0x01CC43 07:CC33: C9 00     CMP #$00                         ; CONSTANT - the radio
C - - - - - 0x01CC45 07:CC35: D0 2F     BNE bra_CC66_return_true         ; If the current item isn't the radio
bra_CC37_not_racing:
C - - - - - 0x01CC47 07:CC37: 0A        ASL                              ; *2, because the addresses have 2 bytes
C - - - - - 0x01CC48 07:CC38: A8        TAY                              ;
C - - - - - 0x01CC49 07:CC39: B9 46 CC  LDA tbl_CC46_item_handlers,Y     ;
C - - - - - 0x01CC4C 07:CC3C: 85 00     STA ram_0000                     ; Low address
C - - - - - 0x01CC4E 07:CC3E: B9 47 CC  LDA tbl_CC46_item_handlers + 1,Y ;
C - - - - - 0x01CC51 07:CC41: 85 01     STA ram_0001                     ; High address
C - - - - - 0x01CC53 07:CC43: 6C 00 00  JMP (ram_0000)                   ;

tbl_CC46_item_handlers:
- D 2 - - - 0x01CC56 07:CC46: 58 CC     .addr loc_CC58_radio
- D 2 - - - 0x01CC58 07:CC48: 68 CC     .addr loc_CC68_bomb
- D 2 - - - 0x01CC5A 07:CC4A: 88 CC     .addr loc_CC88_artillery_rifle
- D 2 - - - 0x01CC5C 07:CC4C: 9B CC     .addr loc_CC9B_jet_pack
- D 2 - - - 0x01CC5E 07:CC4E: B0 CC     .addr loc_CCB0_infrared_goggles
- D - - - - 0x01CC60 07:CC50: DF CC     .addr loc_CCDF_set_apparatus_counter
- D - - - - 0x01CC62 07:CC52: EF CC     .addr loc_CCEF_use_balloon
- D - - - - 0x01CC64 07:CC54: 0D CD     .addr loc_CD0D_use_bullet_proof_vest
- D - - - - 0x01CC66 07:CC56: 11 CD     .addr loc_CD11_use_ring

loc_CC58_radio:
C - - J - - 0x01CC68 07:CC58: A9 10     LDA #$10                                   ; CONSTANT - Select the character
C - - - - - 0x01CC6A 07:CC5A: 85 3B     STA vSharedGameStatus                      ;
C - - - - - 0x01CC6C 07:CC5C: 20 F3 CD  JSR sub_CDF3_deactivate_activable_items_ex ;
C - - - - - 0x01CC6F 07:CC5F: A9 11     LDA #$11                                   ; CONSTANT - the sound when the radio is activated
C - - - - - 0x01CC71 07:CC61: 20 20 C4  JSR sub_C420_add_sound_effect              ;
C - - - - - 0x01CC74 07:CC64: 18        CLC                                        ; return false
C - - - - - 0x01CC75 07:CC65: 60        RTS                                        ;

bra_CC66_return_true:
C - - - - - 0x01CC76 07:CC66: 38        SEC    ; return true
C - - - - - 0x01CC77 07:CC67: 60        RTS    ;

loc_CC68_bomb:
C - - J - - 0x01CC78 07:CC68: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01CC7A 07:CC6A: 29 10     AND #$10                           ; CONSTANT - 'the character is jumping'
C - - - - - 0x01CC7C 07:CC6C: D0 F8     BNE bra_CC66_return_true           ; If the character is jumping
C - - - - - 0x01CC7E 07:CC6E: A0 0B     LDY #$0B                           ; set loop counter
@bra_CC70_loop:                                                            ; loop by y (12 times)
C - - - - - 0x01CC80 07:CC70: B9 04 06  LDA vCachePalette + 4,Y            ;
C - - - - - 0x01CC83 07:CC73: 99 20 06  STA vTempCachePalette,Y            ; caches
C - - - - - 0x01CC86 07:CC76: 88        DEY                                ; decrement loop counter
C - - - - - 0x01CC87 07:CC77: 10 F7     BPL @bra_CC70_loop                 ; If Register Y >= 0x00
C - - - - - 0x01CC89 07:CC79: A0 00     LDY #$00                           ; CONSTANT - 1st row
C - - - - - 0x01CC8B 07:CC7B: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01CC8D 07:CC7D: 6A        ROR                                ;
C - - - - - 0x01CC8E 07:CC7E: 90 02     BCC @bra_CC82_right                ; If the character is looking to the right
C - - - - - 0x01CC90 07:CC80: A0 06     LDY #$06                           ; CONSTANT - 2nd row
@bra_CC82_right:
C - - - - - 0x01CC92 07:CC82: 20 1C CD  JSR sub_CD1C_init_bom_params_      ;
C - - - - - 0x01CC95 07:CC85: 4C 49 CD  JMP loc_CD49_activate_one_weapon   ;

loc_CC88_artillery_rifle:
C - - J - - 0x01CC98 07:CC88: 20 75 F0  JSR sub_F075_clear_bullet_statuses ;
C - - - - - 0x01CC9B 07:CC8B: A9 00     LDA #$00                           ;
C - - - - - 0x01CC9D 07:CC8D: 85 73     STA vRifleFireCounter              ; reset a counter
C - - - - - 0x01CC9F 07:CC8F: A9 05     LDA #$05                           ;
C - - - - - 0x01CCA1 07:CC91: 85 72     STA vRifleShotCount                ; initializes a shot count
C - - - - - 0x01CCA3 07:CC93: A9 07     LDA #$07                           ; CHR ROM for the artillery rifle
C - - - - - 0x01CCA5 07:CC95: 8D B2 06  STA vCacheChrBankSelect + 3        ;
C - - - - - 0x01CCA8 07:CC98: 4C 49 CD  JMP loc_CD49_activate_one_weapon   ;

loc_CC9B_jet_pack:
C - - J - - 0x01CCAB 07:CC9B: A9 20     LDA #$20                          ;
C - - - - - 0x01CCAD 07:CC9D: 85 2E     STA vJetPackRiseCounter           ; initializes a rise time
C - - - - - 0x01CCAF 07:CC9F: A9 00     LDA #$00                          ; CONSTANT - the right direction
C - - - - - 0x01CCB1 07:CCA1: 85 42     STA vChrDirectMovement            ;
C - - - - - 0x01CCB3 07:CCA3: A9 07     LDA #$07                          ; CHR ROM for the jet pack
C - - - - - 0x01CCB5 07:CCA5: 8D B2 06  STA vCacheChrBankSelect + 3       ;
C - - - - - 0x01CCB8 07:CCA8: A9 04     LDA #$04                          ; CONSTANT Hc:Lc = 04:XX - time of the jet-pack
C - - - - - 0x01CCBA 07:CCAA: 8D 16 02  STA vApparatusHighCounter         ;
C - - - - - 0x01CCBD 07:CCAD: 4C 49 CD  JMP loc_CD49_activate_one_weapon  ;

loc_CCB0_infrared_goggles:
C - - J - - 0x01CCC0 07:CCB0: 24 D1     BIT vGogglesActive                       ;
C - - - - - 0x01CCC2 07:CCB2: 30 B2     BMI bra_CC66_return_true                 ; If the infrared goggles is activated
C - - - - - 0x01CCC4 07:CCB4: A5 46     LDA vNoRoom                              ;
C - - - - - 0x01CCC6 07:CCB6: C9 06     CMP #$06                                 ; CONSTANT - level 2 (outside)
C - - - - - 0x01CCC8 07:CCB8: F0 AC     BEQ bra_CC66_return_true                 ; If vNoRoom == 0x06
C - - - - - 0x01CCCA 07:CCBA: A9 06     LDA #$06                                 ;
C - - - - - 0x01CCCC 07:CCBC: 85 D3     STA vGogglesHighCounter                  ; Initializes a counter
C - - - - - 0x01CCCE 07:CCBE: 20 28 D4  JSR sub_D428_get_addr_background_palette ; get address in $0000-$0001
C - - - - - 0x01CCD1 07:CCC1: A0 0F     LDY #$0F                                 ; set loop counter
@bra_CCC3_loop:                                                                  ; loop by y
C - - - - - 0x01CCD3 07:CCC3: B1 00     LDA (ram_0000),Y                         ; load a background color
C - - - - - 0x01CCD5 07:CCC5: 38        SEC                                      ;
C - - - - - 0x01CCD6 07:CCC6: E9 10     SBC #$10                                 ;
C - - - - - 0x01CCD8 07:CCC8: 90 03     BCC @bra_CCCD_skip                       ; If color < 0x10
C - - - - - 0x01CCDA 07:CCCA: 99 00 06  STA vCachePalette,Y                      ; changes a color for the infrared goggles
@bra_CCCD_skip:
C - - - - - 0x01CCDD 07:CCCD: 88        DEY                                      ; decrement loop counter
C - - - - - 0x01CCDE 07:CCCE: C0 03     CPY #$03                                 ;
C - - - - - 0x01CCE0 07:CCD0: D0 F1     BNE @bra_CCC3_loop                       ; If Register Y != 0x03
C - - - - - 0x01CCE2 07:CCD2: A5 D1     LDA vGogglesActive                       ;
C - - - - - 0x01CCE4 07:CCD4: 09 80     ORA #$80                                 ; CONSTANT - the infrared goggles is activated
C - - - - - 0x01CCE6 07:CCD6: 85 D1     STA vGogglesActive                       ;
C - - - - - 0x01CCE8 07:CCD8: A9 1A     LDA #$1A                                 ; CONSTANT - the sound of infrared goggles activation
C - - - - - 0x01CCEA 07:CCDA: 20 20 C4  JSR sub_C420_add_sound_effect            ;
C - - - - - 0x01CCED 07:CCDD: 18        CLC                                      ; return false
C - - - - - 0x01CCEE 07:CCDE: 60        RTS                                      ;

loc_CCDF_set_apparatus_counter:
C D 2 - - - 0x01CCEF 07:CCDF: A9 06     LDA #$06                               ;
C - - - - - 0x01CCF1 07:CCE1: 8D B2 06  STA vCacheChrBankSelect + 3            ;
C - - - - - 0x01CCF4 07:CCE4: A2 0C     LDX #$0C                               ; prepare an input parameter
C - - - - - 0x01CCF6 07:CCE6: 20 FF E2  JSR sub_E2FF_set_character_palette_ex  ;
sub_CCE9_set_apparatus_counter_repeat:
C - - - - - 0x01CCF9 07:CCE9: A2 08     LDX #$08                               ; CONSTANT Hc:Lc = 08:XX - time of the breathing apparatus
C - - - - - 0x01CCFB 07:CCEB: 8E 16 02  STX vApparatusHighCounter              ; 
C - - - - - 0x01CCFE 07:CCEE: 60        RTS                                    ;

loc_CCEF_use_balloon:
sub_CCEF_use_balloon:
C - - - - - 0x01CCFF 07:CCEF: A9 08     LDA #$08                         ;
C - - - - - 0x01CD01 07:CCF1: 8D B2 06  STA vCacheChrBankSelect + 3      ;
C - - - - - 0x01CD04 07:CCF4: A9 00     LDA #$00                         ;
C - - - - - 0x01CD06 07:CCF6: 85 42     STA vChrDirectMovement           ; CONSTANT - the right direction
C - - - - - 0x01CD08 07:CCF8: A5 6D     LDA vMovableChrStatus            ;
C - - - - - 0x01CD0A 07:CCFA: 09 40     ORA #$40                         ; CONSTANT - the character is moving on the balloon
C - - - - - 0x01CD0C 07:CCFC: 85 6D     STA vMovableChrStatus            ;
C - - - - - 0x01CD0E 07:CCFE: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01CD10 07:CD00: 29 81     AND #$81                         ;
C - - - - - 0x01CD12 07:CD02: 85 6C     STA vChrStatus                   ; clear Y Z W K L M flags (see vChrStatus)
C - - - - - 0x01CD14 07:CD04: A2 08     LDX #$08                         ; CONSTANT Hc:Lc = 08:XX - time of the balloon apparatus
C - - - - - 0x01CD16 07:CD06: 8E 16 02  STX vApparatusHighCounter        ;
C - - - - - 0x01CD19 07:CD09: A2 06     LDX #$06                         ; CONSTANT - the index of the balloon item
C - - - - - 0x01CD1B 07:CD0B: D0 06     BNE bra_CD13_use_item            ; Always true

loc_CD0D_use_bullet_proof_vest:
sub_CD0D_use_bullet_proof_vest:
C - - - - - 0x01CD1D 07:CD0D: A2 07     LDX #$07                         ; CONSTANT - the index of the bullet proof vest item
C - - - - - 0x01CD1F 07:CD0F: D0 02     BNE bra_CD13_use_item            ; Always true

loc_CD11_use_ring:
C - - - - - 0x01CD21 07:CD11: A2 08     LDX #$08              ; CONSTANT - the index of the ring item
; In: Register X - the index of the item
bra_CD13_use_item:
loc_CD13_use_item:
sub_CD13_use_item:
C D 2 - - - 0x01CD23 07:CD13: DE 00 02  DEC v_items,X         ; Decrement an item
C - - - - - 0x01CD26 07:CD16: A9 20     LDA #$20              ; Initializing the remaining time
C - - - - - 0x01CD28 07:CD18: 9D 0A 02  STA vItemsBlinkTime,X ;
C - - - - - 0x01CD2B 07:CD1B: 60        RTS                   ;

; In: Register Y - 0x00 or 0x06, the bobm info offset (see tbl_CD53_bomb_info)
sub_CD1C_init_bom_params_:
C - - - - - 0x01CD2C 07:CD1C: B9 53 CD  LDA tbl_CD53_bomb_info,Y       ;
C - - - - - 0x01CD2F 07:CD1F: 8D 98 03  STA vBombOnScreen              ;
C - - - - - 0x01CD32 07:CD22: B9 54 CD  LDA tbl_CD53_bomb_info + 1,Y   ;
C - - - - - 0x01CD35 07:CD25: 8D 9E 03  STA vBombStatus                ;
C - - - - - 0x01CD38 07:CD28: A5 6A     LDA vScreenChrPosY             ;
C - - - - - 0x01CD3A 07:CD2A: 18        CLC                            ;
C - - - - - 0x01CD3B 07:CD2B: 79 55 CD  ADC tbl_CD53_bomb_info + 2,Y   ;
C - - - - - 0x01CD3E 07:CD2E: 8D AA 03  STA vItemPosY                  ; <~ ChrPosY + offset
C - - - - - 0x01CD41 07:CD31: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01CD43 07:CD33: 18        CLC                            ;
C - - - - - 0x01CD44 07:CD34: 79 56 CD  ADC tbl_CD53_bomb_info + 3,Y   ;
C - - - - - 0x01CD47 07:CD37: 8D B6 03  STA vItemPosXLow               ; <~ ChrPosX + offset (low value)
C - - - - - 0x01CD4A 07:CD3A: A5 68     LDA vHighChrPosX               ;
C - - - - - 0x01CD4C 07:CD3C: 79 57 CD  ADC tbl_CD53_bomb_info + 4,Y   ;
C - - - - - 0x01CD4F 07:CD3F: 8D BC 03  STA vItemPosXHigh              ; <~ ChrPosX + offset (high, value +1 with overflow)
C - - - - - 0x01CD52 07:CD42: B9 58 CD  LDA tbl_CD53_bomb_info + 5,Y   ;
C - - - - - 0x01CD55 07:CD45: 8D C8 03  STA vItemJumpCounter           ; Initializes a bomn jump counter
C - - - - - 0x01CD58 07:CD48: 60        RTS                            ;

loc_CD49_activate_one_weapon:
C D 2 - - - 0x01CD59 07:CD49: AD 14 02  LDA vCurrentWeaponStatus   ;
C - - - - - 0x01CD5C 07:CD4C: 09 40     ORA #$40                   ; CONSTANT - the weapon is activated
C - - - - - 0x01CD5E 07:CD4E: 8D 14 02  STA vCurrentWeaponStatus   ;
C - - - - - 0x01CD61 07:CD51: 18        CLC                        ; return false
C - - - - - 0x01CD62 07:CD52: 60        RTS                        ;

tbl_CD53_bomb_info:
- D 2 - - - 0x01CD63 07:CD53: 01        .byte $01, $C2, $00, $0C, $00, $40   ; a bomb is on the right
- D 2 - - - 0x01CD69 07:CD59: 01        .byte $01, $C2, $00, $F4, $FF, $40   ; a bomb is on the left

sub_CD5F_try_reset_goggles:
C - - - - - 0x01CD6F 07:CD5F: A5 D1     LDA vGogglesActive                   ;
C - - - - - 0x01CD71 07:CD61: 10 1C     BPL bra_CD7F_skip                    ; If goggles are not deactivated
C - - - - - 0x01CD73 07:CD63: A5 D3     LDA vGogglesHighCounter              ;
C - - - - - 0x01CD75 07:CD65: D0 0B     BNE bra_CD72_decrement_counters      ; If a high counter != 0x00
C - - - - - 0x01CD77 07:CD67: A5 D2     LDA vGogglesLowCounter               ;
C - - - - - 0x01CD79 07:CD69: D0 07     BNE bra_CD72_decrement_counters      ; If a low counter != 0x00
loc_CD6B_reset_goggles:
C - - - - - 0x01CD7B 07:CD6B: A9 00     LDA #$00                             ;
C - - - - - 0x01CD7D 07:CD6D: 85 D1     STA vGogglesActive                   ; reset infrared goggles activity
C - - - - - 0x01CD7F 07:CD6F: 4C 45 D4  JMP loc_D445_load_background_palette ;

bra_CD72_decrement_counters:
C - - - - - 0x01CD82 07:CD72: A5 D2     LDA vGogglesLowCounter               ;
C - - - - - 0x01CD84 07:CD74: 38        SEC                                  ;
C - - - - - 0x01CD85 07:CD75: E9 01     SBC #$01                             ;
C - - - - - 0x01CD87 07:CD77: 85 D2     STA vGogglesLowCounter               ; decrement low value
C - - - - - 0x01CD89 07:CD79: A5 D3     LDA vGogglesHighCounter              ;
C - - - - - 0x01CD8B 07:CD7B: E9 00     SBC #$00                             ;
C - - - - - 0x01CD8D 07:CD7D: 85 D3     STA vGogglesHighCounter              ; decrement high value
bra_CD7F_skip:
C - - - - - 0x01CD8F 07:CD7F: AD 16 02  LDA vApparatusHighCounter            ;
C - - - - - 0x01CD92 07:CD82: D0 26     BNE bra_CDAA_decrement_counters      ; If a high counter != 0x00
C - - - - - 0x01CD94 07:CD84: AD 15 02  LDA vApparatusLowCounter             ;
C - - - - - 0x01CD97 07:CD87: D0 21     BNE bra_CDAA_decrement_counters      ; If a low counter != 0x00
C - - - - - 0x01CD99 07:CD89: 24 6D     BIT vMovableChrStatus                ;
C - - - - - 0x01CD9B 07:CD8B: 30 43     BMI bra_CDD0_decrement_apparatus     ; If the character is moving in the water
C - - - - - 0x01CD9D 07:CD8D: 70 5E     BVS bra_CDED_RTS                     ; If the character is moving on the balloon
C - - - - - 0x01CD9F 07:CD8F: 2C 14 02  BIT vCurrentWeaponStatus             ;
C - - - - - 0x01CDA2 07:CD92: 30 59     BMI bra_CDED_RTS                     ; If the weapons are not exist
C - - - - - 0x01CDA4 07:CD94: 50 57     BVC bra_CDED_RTS                     ; If the weapon isn't activated
C - - - - - 0x01CDA6 07:CD96: AD 14 02  LDA vCurrentWeaponStatus             ;
C - - - - - 0x01CDA9 07:CD99: 29 0F     AND #$0F                             ; filters 'the index of the item'
C - - - - - 0x01CDAB 07:CD9B: 0A        ASL                                  ; *2, because the address contains 2 bytes
C - - - - - 0x01CDAC 07:CD9C: A8        TAY                                  ;
C - - - - - 0x01CDAD 07:CD9D: B9 BE CD  LDA tbl_CDBE_item_dec_callback,Y     ;
C - - - - - 0x01CDB0 07:CDA0: 85 00     STA ram_0000                         ; Low address
C - - - - - 0x01CDB2 07:CDA2: B9 BF CD  LDA tbl_CDBE_item_dec_callback + 1,Y ;
C - - - - - 0x01CDB5 07:CDA5: 85 01     STA ram_0001                         ; High address
C - - - - - 0x01CDB7 07:CDA7: 6C 00 00  JMP (ram_0000)                       ;

bra_CDAA_decrement_counters:
C - - - - - 0x01CDBA 07:CDAA: A0 00     LDY #$00                             ;
; In: Register Y - the counter offset
loc_CDAC_decrement_counters_ex:
C D 2 - - - 0x01CDBC 07:CDAC: B9 15 02  LDA vApparatusLowCounter,Y           ;
C - - - - - 0x01CDBF 07:CDAF: 38        SEC                                  ;
C - - - - - 0x01CDC0 07:CDB0: E9 01     SBC #$01                             ;  
C - - - - - 0x01CDC2 07:CDB2: 99 15 02  STA vApparatusLowCounter,Y           ; decrement low value
C - - - - - 0x01CDC5 07:CDB5: B9 16 02  LDA vApparatusHighCounter,Y          ;
C - - - - - 0x01CDC8 07:CDB8: E9 00     SBC #$00                             ;
C - - - - - 0x01CDCA 07:CDBA: 99 16 02  STA vApparatusHighCounter,Y          ; decrement high value
C - - - - - 0x01CDCD 07:CDBD: 60        RTS                                  ;

tbl_CDBE_item_dec_callback:
- D - - - - 0x01CDCE 07:CDBE: EE CD     .addr loc_CDEE_deactivate_activable_items  ; 0x00 (the radio)
- D 2 - - - 0x01CDD0 07:CDC0: ED CD     .addr loc_CDED_RTS                         ; 0x01 (the bomb)
- D 2 - - - 0x01CDD2 07:CDC2: ED CD     .addr loc_CDED_RTS                         ; 0x02 (the artillery rifle)
- D 2 - - - 0x01CDD4 07:CDC4: EE CD     .addr loc_CDEE_deactivate_activable_items  ; 0x03 (the jet pack)
- D - - - - 0x01CDD6 07:CDC6: 6B CD     .addr loc_CD6B_reset_goggles               ; 0x04 (the infrared goggles)
- D - - - - 0x01CDD8 07:CDC8: D0 CD     .addr loc_CDD0_decrement_apparatus         ; 0x05 (the breathing apparatus)
- D - - - - 0x01CDDA 07:CDCA: ED CD     .addr loc_CDED_RTS                         ; 0x06 (the helium balloon)
- D - - - - 0x01CDDC 07:CDCC: EE CD     .addr loc_CDEE_deactivate_activable_items  ; 0x07 (the bullet proof vest)
- D - - - - 0x01CDDE 07:CDCE: EE CD     .addr loc_CDEE_deactivate_activable_items  ; 0x08 (the ring)

bra_CDD0_decrement_apparatus:
loc_CDD0_decrement_apparatus:
C - - - - - 0x01CDE0 07:CDD0: AD 05 02  LDA v_breathing_apparatus_item            ;
C - - - - - 0x01CDE3 07:CDD3: F0 08     BEQ bra_CDDD_death                        ; If the number of the breathing apparatuses == 0x00
C - - - - - 0x01CDE5 07:CDD5: 20 E9 CC  JSR sub_CCE9_set_apparatus_counter_repeat ;
C - - - - - 0x01CDE8 07:CDD8: A2 05     LDX #$05                                  ; CONSTANT - the breathing apparatuses index
C - - - - - 0x01CDEA 07:CDDA: 4C 13 CD  JMP loc_CD13_use_item                     ;

bra_CDDD_death:
C - - - - - 0x01CDED 07:CDDD: A5 6C     LDA vChrStatus            ;
C - - - - - 0x01CDEF 07:CDDF: 29 08     AND #$08                  ; CONSTANT - the character is dying
C - - - - - 0x01CDF1 07:CDE1: D0 0A     BNE bra_CDED_RTS          ; If the character is dying
C - - - - - 0x01CDF3 07:CDE3: A5 6C     LDA vChrStatus            ;
C - - - - - 0x01CDF5 07:CDE5: 09 08     ORA #$08                  ; CONSTANT - the character is getting damage
C - - - - - 0x01CDF7 07:CDE7: 85 6C     STA vChrStatus            ;
C - - - - - 0x01CDF9 07:CDE9: A9 60     LDA #$60                  ;
C - - - - - 0x01CDFB 07:CDEB: 85 2E     STA vWaterDeathCounter    ; initializes a death time 
loc_CDED_RTS:
bra_CDED_RTS:
C - - - - - 0x01CDFD 07:CDED: 60        RTS                       ;

loc_CDEE_deactivate_activable_items:
sub_CDEE_deactivate_activable_items:
C - - - - - 0x01CDFE 07:CDEE: A9 01     LDA #$01                    ; CONSTANT for CHR ROM
C - - - - - 0x01CE00 07:CDF0: 8D B2 06  STA vCacheChrBankSelect + 3 ;
sub_CDF3_deactivate_activable_items_ex:
loc_CDF3_deactivate_activable_items_ex:
C D 2 - - - 0x01CE03 07:CDF3: AD 14 02  LDA vCurrentWeaponStatus    ;
C - - - - - 0x01CE06 07:CDF6: 29 BF     AND #$BF                    ;
C - - - - - 0x01CE08 07:CDF8: 8D 14 02  STA vCurrentWeaponStatus    ; we make weapon inactive
C - - - - - 0x01CE0B 07:CDFB: A9 00     LDA #$00                    ;
C - - - - - 0x01CE0D 07:CDFD: 8D 15 02  STA vApparatusLowCounter    ;
C - - - - - 0x01CE10 07:CE00: 8D 16 02  STA vApparatusHighCounter   ; clear
C - - - - - 0x01CE13 07:CE03: A2 04     LDX #$04                    ; set loop counter 
@bra_CE05_loop:                                                     ; loop by x (5 times)
C - - - - - 0x01CE15 07:CE05: BD 00 02  LDA v_items,X               ;
C - - - - - 0x01CE18 07:CE08: D0 08     BNE bra_CE12_RTS            ; If some item is exist
C - - - - - 0x01CE1A 07:CE0A: CA        DEX                         ; decrement loop counter
C - - - - - 0x01CE1B 07:CE0B: 10 F8     BPL @bra_CE05_loop          ; If Register X < 0x80
C - - - - - 0x01CE1D 07:CE0D: A9 80     LDA #$80                    ; CONSTANT - the weapons are not exist
C - - - - - 0x01CE1F 07:CE0F: 8D 14 02  STA vCurrentWeaponStatus    ;
bra_CE12_RTS:
C - - - - - 0x01CE22 07:CE12: 60        RTS                         ;

; see https://www.nesdev.org/wiki/PPU_OAM#Sprite_0_hits
sub_CE13_set_sprite_zero_hits:
C - - - - - 0x01CE23 07:CE13: A2 27     LDX #$27                 ; Y-position for message room
C - - - - - 0x01CE25 07:CE15: A5 3B     LDA vSharedGameStatus    ;
C - - - - - 0x01CE27 07:CE17: 6A        ROR                      ;
C - - - - - 0x01CE28 07:CE18: 90 02     BCC @bra_CE1C_skip       ; If A screen isn't with the message
C - - - - - 0x01CE2A 07:CE1A: A2 37     LDX #$37                 ; Y-position for room without messages
@bra_CE1C_skip:
C - - - - - 0x01CE2C 07:CE1C: 8E 00 07  STX vStartOAM            ; set Y-position
C - - - - - 0x01CE2F 07:CE1F: A9 3F     LDA #$3F                 ; a black square
C - - - - - 0x01CE31 07:CE21: 8D 01 07  STA vStartOAM_2b         ; set the tile number sprite
C - - - - - 0x01CE34 07:CE24: A9 20     LDA #$20                 ; behind background
C - - - - - 0x01CE36 07:CE26: 8D 02 07  STA vStartOAM_3b         ; set the attributes
C - - - - - 0x01CE39 07:CE29: A9 00     LDA #$00                 ;
C - - - - - 0x01CE3B 07:CE2B: 8D 03 07  STA vStartOAM_4b         ; set X-position
C - - - - - 0x01CE3E 07:CE2E: A9 04     LDA #$04                 ;
C - - - - - 0x01CE40 07:CE30: 85 43     STA vCurrentNumberSprite ;
C - - - - - 0x01CE42 07:CE32: 60        RTS                      ;

; in: 0x0000 - sprite magic1 (Y-position)
; in: 0x0001 - sprite magic2 (see v_sprite_magic2)
; in: 0x0002 - sprite magic3 (see v_sprite_magic3)
; in: 0x0003 - sprite magic4 (X-position)
sub_CE33_add_sprite_magic:
loc_CE33_add_sprite_magic:
C D 2 - - - 0x01CE43 07:CE33: 98        TYA                     ;
C - - - - - 0x01CE44 07:CE34: 48        PHA                     ; store y
C - - - - - 0x01CE45 07:CE35: AC F7 06  LDY vShiftSpriteMagic   ;
C - - - - - 0x01CE48 07:CE38: C0 40     CPY #$40                ; Maximum sprites
C - - - - - 0x01CE4A 07:CE3A: B0 1B     BCS @bra_CE57_skip      ; If sprite's count == maximum
C - - - - - 0x01CE4C 07:CE3C: A5 00     LDA ram_0000            ;
C - - - - - 0x01CE4E 07:CE3E: 99 B7 06  STA v_sprite_magic1,Y   ;
C - - - - - 0x01CE51 07:CE41: A5 01     LDA ram_0001            ;
C - - - - - 0x01CE53 07:CE43: 99 B8 06  STA v_sprite_magic2,Y   ;
C - - - - - 0x01CE56 07:CE46: A5 02     LDA ram_0002            ;
C - - - - - 0x01CE58 07:CE48: 99 B9 06  STA v_sprite_magic3,Y   ;
C - - - - - 0x01CE5B 07:CE4B: A5 03     LDA ram_0003            ;
C - - - - - 0x01CE5D 07:CE4D: 99 BA 06  STA v_sprite_magic4,Y   ;
C - - - - - 0x01CE60 07:CE50: C8        INY                     ;
C - - - - - 0x01CE61 07:CE51: C8        INY                     ;
C - - - - - 0x01CE62 07:CE52: C8        INY                     ;
C - - - - - 0x01CE63 07:CE53: C8        INY                     ;
C - - - - - 0x01CE64 07:CE54: 8C F7 06  STY vShiftSpriteMagic   ; += 4
@bra_CE57_skip:
C - - - - - 0x01CE67 07:CE57: 68        PLA                     ;  
C - - - - - 0x01CE68 07:CE58: A8        TAY                     ; retrieve y (see CE34)
C - - - - - 0x01CE69 07:CE59: 60        RTS                     ; 

; in: Register X - the offset of the sprite address [0x80XX-0x83XX]
; in: 0x0000 - The character's position along the Y axis relative to the screen
; in: 0x0001 - The character's position along the X axis relative to the screen
sub_CE5A_render_character:
loc_CE5A_render_character:
C D 2 - - - 0x01CE6A 07:CE5A: A9 00     LDA #$00                     ;
C - - - - - 0x01CE6C 07:CE5C: 85 08     STA ram_0008                 ; clear
C - - - - - 0x01CE6E 07:CE5E: 85 09     STA ram_0009                 ; clear
C - - - - - 0x01CE70 07:CE60: A9 06     LDA #$06                     ;
C - - - - - 0x01CE72 07:CE62: 8D 00 80  STA MMC3_Bank_select         ;
C - - - - - 0x01CE75 07:CE65: A9 0A     LDA #$0A                     ;
C - - - - - 0x01CE77 07:CE67: 8D 01 80  STA MMC3_Bank_data           ; switch bank 05 in 0x8000-0x9FFF
C - - - - - 0x01CE7A 07:CE6A: A5 45     LDA vCharacterRenderData     ;
C - - - - - 0x01CE7C 07:CE6C: 48        PHA                          ; store A
C - - - - - 0x01CE7D 07:CE6D: 29 03     AND #$03                     ;
C - - - - - 0x01CE7F 07:CE6F: 85 0C     STA vTempCounterC            ; get the part of the attributes
C - - - - - 0x01CE81 07:CE71: 68        PLA                          ; retrieve A ($CE6C)
C - - - - - 0x01CE82 07:CE72: 2A        ROL                          ;
C - - - - - 0x01CE83 07:CE73: 2A        ROL                          ;
C - - - - - 0x01CE84 07:CE74: 2A        ROL                          ; get the part of the address
C - - - - - 0x01CE85 07:CE75: 29 03     AND #$03                     ;
C - - - - - 0x01CE87 07:CE77: 09 80     ORA #$80                     ;
C - - - - - 0x01CE89 07:CE79: 85 05     STA ram_0005                 ; a high byte address [0x80-0x83]
C - - - - - 0x01CE8B 07:CE7B: A9 00     LDA #$00                     ;
C - - - - - 0x01CE8D 07:CE7D: 85 04     STA ram_0004                 ; a low byte address
C - - - - - 0x01CE8F 07:CE7F: 8A        TXA                          ; shift by x (x - an input parameter)
C - - - - - 0x01CE90 07:CE80: A8        TAY                          ;
C - - - - - 0x01CE91 07:CE81: B1 04     LDA (ram_0004),Y             ;
C - - - - - 0x01CE93 07:CE83: 85 02     STA ram_0002                 ; Assinged a high byte address
C - - - - - 0x01CE95 07:CE85: C8        INY                          ;
C - - - - - 0x01CE96 07:CE86: B1 04     LDA (ram_0004),Y             ;
C - - - - - 0x01CE98 07:CE88: 85 03     STA ram_0003                 ; Assinged a low byte address
C - - - - - 0x01CE9A 07:CE8A: A6 43     LDX vCurrentNumberSprite     ; Offset of the entire OAM
C - - - - - 0x01CE9C 07:CE8C: E0 FF     CPX #$FF                     ;
C - - - - - 0x01CE9E 07:CE8E: F0 5C     BEQ bra_CEEC_end             ; If the count of the sprites is overflow
C - - - - - 0x01CEA0 07:CE90: A0 00     LDY #$00                     ;
C - - - - - 0x01CEA2 07:CE92: B1 02     LDA (ram_0002),Y             ; get a tile count
C - - - - - 0x01CEA4 07:CE94: 85 05     STA v_CE5A_counter           ; set loop counter
C - - - - - 0x01CEA6 07:CE96: F0 54     BEQ bra_CEEC_end             ; If v_CE5A_counter == 0x00
C - - - - - 0x01CEA8 07:CE98: C8        INY                          ; y == 1, the position of first tile-byte
; In: Register Y - the offset by ($0002,$0003)
loc_CE99_render_goemon_hand:
bra_CE99_loop:                                                       ; loop by v_CE5A_counter
C D 2 - - - 0x01CEA9 07:CE99: A9 00     LDA #$00                     ;
C - - - - - 0x01CEAB 07:CE9B: 85 04     STA ram_0004                 ; clear
C - - - - - 0x01CEAD 07:CE9D: B1 02     LDA (ram_0002),Y             ; 1 of 4 (Y-position)
C - - - - - 0x01CEAF 07:CE9F: 10 02     BPL @bra_CEA3_skip           ; If Register A < 0x80
C - - - - - 0x01CEB1 07:CEA1: C6 04     DEC ram_0004                 ; 0x00 -> 0xFF (The position may be negative!)
@bra_CEA3_skip:
C - - - - - 0x01CEB3 07:CEA3: 18        CLC                          ;
C - - - - - 0x01CEB4 07:CEA4: 65 00     ADC ram_0000                 ;
C - - - - - 0x01CEB6 07:CEA6: 9D 00 07  STA vStartOAM,X              ; set Y-position
C - - - - - 0x01CEB9 07:CEA9: A5 04     LDA ram_0004                 ; $0004 is {0x00, 0xFF}, for 0xFF the overflow should be (it's the correction for negative Y-position)
C - - - - - 0x01CEBB 07:CEAB: 65 08     ADC ram_0008                 ;
C - - - - - 0x01CEBD 07:CEAD: D0 40     BNE bra_CEEF_blank           ; If Register A != 0x00 (it is an unacceptable sprite)
C - - - - - 0x01CEBF 07:CEAF: C8        INY                          ; Changes to the second byte (Tile index number)
C - - - - - 0x01CEC0 07:CEB0: B1 02     LDA (ram_0002),Y             ; 2 of 4
C - - - - - 0x01CEC2 07:CEB2: 9D 01 07  STA vStartOAM_2b,X           ; set the tile number sprite
C - - - - - 0x01CEC5 07:CEB5: C8        INY                          ; Changes to the third byte (Attributes)
C - - - - - 0x01CEC6 07:CEB6: B1 02     LDA (ram_0002),Y             ; 3 of 4
C - - - - - 0x01CEC8 07:CEB8: 05 0C     ORA vTempCounterC            ; add attributes from outside
C - - - - - 0x01CECA 07:CEBA: 9D 02 07  STA vStartOAM_3b,X           ; set the attributes
C - - - - - 0x01CECD 07:CEBD: C8        INY                          ; Changes to the fourth byte (X-position)
C - - - - - 0x01CECE 07:CEBE: A9 00     LDA #$00                     ;
C - - - - - 0x01CED0 07:CEC0: 85 04     STA ram_0004                 ; clear
C - - - - - 0x01CED2 07:CEC2: B1 02     LDA (ram_0002),Y             ; 4 of 4
C - - - - - 0x01CED4 07:CEC4: 10 02     BPL @bra_CEC8_skip           ; If Register A < 0x80
C - - - - - 0x01CED6 07:CEC6: C6 04     DEC ram_0004                 ; 0x00 -> 0xFF (The position may be negative!)
@bra_CEC8_skip:
C - - - - - 0x01CED8 07:CEC8: 18        CLC                          ;
C - - - - - 0x01CED9 07:CEC9: 65 01     ADC ram_0001                 ;
C - - - - - 0x01CEDB 07:CECB: 85 06     STA ram_0006                 ; store X-position temporarily
C - - - - - 0x01CEDD 07:CECD: A5 04     LDA ram_0004                 ; $0004 is {0x00, 0xFF}, for 0xFF the overflow should be (it's the correction for negative X-position)
C - - - - - 0x01CEDF 07:CECF: 65 09     ADC ram_0009                 ;
C - - - - - 0x01CEE1 07:CED1: D0 1F     BNE bra_CEF2_blank           ; If Register A != 0x00 (it is an unacceptable sprite)
C - - - - - 0x01CEE3 07:CED3: A5 06     LDA ram_0006                 ;
C - - - - - 0x01CEE5 07:CED5: C9 F9     CMP #$F9                     ;
C - - - - - 0x01CEE7 07:CED7: B0 19     BCS bra_CEF2_blank           ; If Register A >= 0xF9 (it is an unacceptable sprite)
C - - - - - 0x01CEE9 07:CED9: 9D 03 07  STA vStartOAM_4b,X           ; set X-position
C - - - - - 0x01CEEC 07:CEDC: E8        INX                          ;
C - - - - - 0x01CEED 07:CEDD: E8        INX                          ;
C - - - - - 0x01CEEE 07:CEDE: E8        INX                          ;
C - - - - - 0x01CEEF 07:CEDF: E8        INX                          ; To 1st next sprite data byte
C - - - - - 0x01CEF0 07:CEE0: D0 03     BNE bra_CEE5_continue        ; If Register is not overflow
C - - - - - 0x01CEF2 07:CEE2: CA        DEX                          ; Restores a last success sprite byte
C - - - - - 0x01CEF3 07:CEE3: D0 05     BNE bra_CEEA_end             ; If Register X != 0
bra_CEE5_continue:
C - - - - - 0x01CEF5 07:CEE5: C8        INY                          ; increment offset by ($0002,$0003)
C - - - - - 0x01CEF6 07:CEE6: C6 05     DEC v_CE5A_counter           ; decrement counter
C - - - - - 0x01CEF8 07:CEE8: D0 AF     BNE bra_CE99_loop            ; If v_CE5A_counter > 0 (The sprites ($0002,$0003) are exist)
bra_CEEA_end:
C - - - - - 0x01CEFA 07:CEEA: 86 43     STX vCurrentNumberSprite     ; Store target byte OAM (sprite)
bra_CEEC_end:
C - - - - - 0x01CEFC 07:CEEC: 86 44     STX vCurrentNumberSpriteAfCh ;
C - - - - - 0x01CEFE 07:CEEE: 60        RTS                          ;

bra_CEEF_blank:
C - - - - - 0x01CEFF 07:CEEF: C8        INY                          ; a correction ($CEAF)
C - - - - - 0x01CF00 07:CEF0: C8        INY                          ; a correction ($CEB5)
C - - - - - 0x01CF01 07:CEF1: C8        INY                          ; a correction ($CEBD)
bra_CEF2_blank:
C - - - - - 0x01CF02 07:CEF2: A9 F0     LDA #$F0                     ; This value means than the sprite isn't used
C - - - - - 0x01CF04 07:CEF4: 9D 00 07  STA vStartOAM,X              ;
C - - - - - 0x01CF07 07:CEF7: D0 EC     BNE bra_CEE5_continue        ; Always true

; Display 16 sprites starting from vCurrentNumberSprite
sub_CEF9_display_16_sprite_magic:
C - - - - - 0x01CF09 07:CEF9: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x01CF0B 07:CEFB: 29 07     AND #$07                               ;
C - - - - - 0x01CF0D 07:CEFD: 0A        ASL                                    ;
C - - - - - 0x01CF0E 07:CEFE: 0A        ASL                                    ;
C - - - - - 0x01CF0F 07:CEFF: 0A        ASL                                    ;
C - - - - - 0x01CF10 07:CF00: 0A        ASL                                    ; Register A = {0x00, 0x10, 0x20, 0x30, 0x40, 0x50, 0x60, 0x70}
C - - - - - 0x01CF11 07:CF01: 18        CLC                                    ;
C - - - - - 0x01CF12 07:CF02: 69 DE     ADC #.lobyte(tbl_sprite_order_indexes) ;
C - - - - - 0x01CF14 07:CF04: 85 12     STA $0012                              ; $0012 = {0xDE, 0xEE, 0xFE, 0x0E, 0x1E, 0x2E, 0x3E, 0x4E}
C - - - - - 0x01CF16 07:CF06: A9 00     LDA #$00                               ;
C - - - - - 0x01CF18 07:CF08: 69 CF     ADC #.hibyte(tbl_sprite_order_indexes) ; 
C - - - - - 0x01CF1A 07:CF0A: 85 13     STA $0013                              ; $0013 = (0xCF, 0xD0)
C - - - - - 0x01CF1C 07:CF0C: A0 00     LDY #$00                               ;
C - - - - - 0x01CF1E 07:CF0E: 84 1A     STY vTempCounter1A                     ; set loop counter
loc_CF10_loop:                                                                 ; loop by vTempCounter1A (16 times)
C D 2 - - - 0x01CF20 07:CF10: B1 12     LDA ($0012),Y                          ; get a sprite relative index (see 'The order of the indexes X')
C - - - - - 0x01CF22 07:CF12: 0A        ASL                                    ;
C - - - - - 0x01CF23 07:CF13: 0A        ASL                                    ;
C - - - - - 0x01CF24 07:CF14: A8        TAY                                    ; put a sprite offset (4 bytes each)
C - - - - - 0x01CF25 07:CF15: B9 B7 06  LDA v_sprite_magic1,Y                  ;
C - - - - - 0x01CF28 07:CF18: C9 F0     CMP #$F0                               ;
C - - - - - 0x01CF2A 07:CF1A: D0 03     BNE bra_CF1F_skip                      ; If a sprite is configured
C - - - - - 0x01CF2C 07:CF1C: 4C C8 CF  JMP loc_CFC8_continue                  ;

bra_CF1F_skip:
C - - - - - 0x01CF2F 07:CF1F: 85 00     STA $0000                  ; <~ Y-position
C - - - - - 0x01CF31 07:CF21: B9 BA 06  LDA v_sprite_magic4,Y      ;
C - - - - - 0x01CF34 07:CF24: 85 01     STA $0001                  ; <~ X-position
C - - - - - 0x01CF36 07:CF26: B9 B9 06  LDA v_sprite_magic3,Y      ;
C - - - - - 0x01CF39 07:CF29: 48        PHA                        ; store v_sprite_magic3
C - - - - - 0x01CF3A 07:CF2A: 48        PHA                        ; store v_sprite_magic3
C - - - - - 0x01CF3B 07:CF2B: 48        PHA                        ; store v_sprite_magic3
C - - - - - 0x01CF3C 07:CF2C: A2 0B     LDX #$0B                   ; bank 05 (2 page)
C - - - - - 0x01CF3E 07:CF2E: 29 30     AND #$30                   ;
C - - - - - 0x01CF40 07:CF30: F0 08     BEQ @bra_CF3A_set_bank     ; If SSBB = 0xXX00 (see v_sprite_magic3)
C - - - - - 0x01CF42 07:CF32: A2 05     LDX #$05                   ; bank 02 (2 page)
C - - - - - 0x01CF44 07:CF34: C9 10     CMP #$10                   ;
C - - - - - 0x01CF46 07:CF36: F0 02     BEQ @bra_CF3A_set_bank     ; If SSBB = 0xXX01 (see v_sprite_magic3)
C - - - - - 0x01CF48 07:CF38: A2 0A     LDX #$0A                   ; bank 05 (1 page)
@bra_CF3A_set_bank:
C - - - - - 0x01CF4A 07:CF3A: A9 06     LDA #$06                   ;
C - - - - - 0x01CF4C 07:CF3C: 8D 00 80  STA MMC3_Bank_select       ;
C - - - - - 0x01CF4F 07:CF3F: 8E 01 80  STX MMC3_Bank_data         ; bank 02_2 or 05_1 or 05_2 in 0x8000-0x9FFF
C - - - - - 0x01CF52 07:CF42: 68        PLA                        ; retrieve v_sprite_magic3 ($CF2B)
C - - - - - 0x01CF53 07:CF43: 29 03     AND #$03                   ;
C - - - - - 0x01CF55 07:CF45: 85 45     STA vCharacterRenderData   ; put the OAM-attributes
C - - - - - 0x01CF57 07:CF47: 68        PLA                        ; retrieve v_sprite_magic3 ($CF2A)
C - - - - - 0x01CF58 07:CF48: 29 04     AND #$04                   ;
C - - - - - 0x01CF5A 07:CF4A: F0 02     BEQ @bra_CF4E_skip         ; If XCOO = 0xX0XX (see v_sprite_magic3)
C - - - - - 0x01CF5C 07:CF4C: A9 40     LDA #$40                   ; using next CHR-page size 1 Kb
@bra_CF4E_skip:
C - - - - - 0x01CF5E 07:CF4E: 85 0A     STA ram_000A               ; 0x00 or 0x40
C - - - - - 0x01CF60 07:CF50: 68        PLA                        ; retrieve v_sprite_magic3 ($CF29)
C - - - - - 0x01CF61 07:CF51: 2A        ROL                        ;
C - - - - - 0x01CF62 07:CF52: 2A        ROL                        ;
C - - - - - 0x01CF63 07:CF53: 2A        ROL                        ;
C - - - - - 0x01CF64 07:CF54: 29 03     AND #$03                   ; 
C - - - - - 0x01CF66 07:CF56: 09 80     ORA #$80                   ; <~ 0x80 + SS
C - - - - - 0x01CF68 07:CF58: 85 05     STA ram_0005               ; High address
C - - - - - 0x01CF6A 07:CF5A: A9 00     LDA #$00                   ;
C - - - - - 0x01CF6C 07:CF5C: 85 04     STA ram_0004               ; Low address
C - - - - - 0x01CF6E 07:CF5E: B9 B8 06  LDA v_sprite_magic2,Y      ;
C - - - - - 0x01CF71 07:CF61: A8        TAY                        ; 1 of 2 bytes
C - - - - - 0x01CF72 07:CF62: B1 04     LDA (ram_0004),Y           ;
C - - - - - 0x01CF74 07:CF64: 85 02     STA ram_0002               ; Low address
C - - - - - 0x01CF76 07:CF66: C8        INY                        ; 2 of 2 bytes
C - - - - - 0x01CF77 07:CF67: B1 04     LDA (ram_0004),Y           ;
C - - - - - 0x01CF79 07:CF69: 85 03     STA ram_0003               ; High address
C - - - - - 0x01CF7B 07:CF6B: A0 00     LDY #$00                   ;
C - - - - - 0x01CF7D 07:CF6D: B1 02     LDA (ram_0002),Y           ; Tile count
C - - - - - 0x01CF7F 07:CF6F: 85 05     STA ram_0005               ; set loop counter
C - - - - - 0x01CF81 07:CF71: F0 55     BEQ bra_CFC8_skip          ; If counter == 0
C - - - - - 0x01CF83 07:CF73: A6 43     LDX vCurrentNumberSprite   ;
C - - - - - 0x01CF85 07:CF75: C8        INY                        ; y == 1, the position of first tile-byte
bra_CF76_repeat:
C - - - - - 0x01CF86 07:CF76: A9 00     LDA #$00                   ;
C - - - - - 0x01CF88 07:CF78: 85 04     STA ram_0004               ; clear
C - - - - - 0x01CF8A 07:CF7A: B1 02     LDA (ram_0002),Y           ; 1 of 4
C - - - - - 0x01CF8C 07:CF7C: 10 02     BPL @bra_CF80_skip         ; If Register A < 0x80
C - - - - - 0x01CF8E 07:CF7E: C6 04     DEC ram_0004               ; 0x00 -> 0xFF (The position may be negative!)
@bra_CF80_skip:
C - - - - - 0x01CF90 07:CF80: 18        CLC                        ;
C - - - - - 0x01CF91 07:CF81: 65 00     ADC ram_0000               ; adds starting Y-point
C - - - - - 0x01CF93 07:CF83: 9D 00 07  STA vStartOAM,X            ; set Y-position
C - - - - - 0x01CF96 07:CF86: A5 04     LDA ram_0004               ;
C - - - - - 0x01CF98 07:CF88: 69 00     ADC #$00                   ;
C - - - - - 0x01CF9A 07:CF8A: D0 48     BNE bra_CFD4_skip_sprite   ; If Register A != 0x00 (sprite off screen)
C - - - - - 0x01CF9C 07:CF8C: C8        INY                        ; Changes to the second byte (Tile index number)
C - - - - - 0x01CF9D 07:CF8D: B1 02     LDA (ram_0002),Y           ; 2 of 4
C - - - - - 0x01CF9F 07:CF8F: 05 0A     ORA ram_000A               ; 0x00 or 0x40 (current or next CHR-page size 1 Kb)
C - - - - - 0x01CFA1 07:CF91: 9D 01 07  STA vStartOAM_2b,X         ; set the tile number sprite
C - - - - - 0x01CFA4 07:CF94: C8        INY                        ; Changes to the third byte (Attributes)
C - - - - - 0x01CFA5 07:CF95: B1 02     LDA (ram_0002),Y           ; 3 of 4
C - - - - - 0x01CFA7 07:CF97: 05 45     ORA vCharacterRenderData   ; add attributes from vCharacterRenderData (see vCharacterRenderData)
C - - - - - 0x01CFA9 07:CF99: 9D 02 07  STA vStartOAM_3b,X         ; set the attributes
C - - - - - 0x01CFAC 07:CF9C: C8        INY                        ; Changes to the fourth byte (X-position)
C - - - - - 0x01CFAD 07:CF9D: A9 00     LDA #$00                   ;
C - - - - - 0x01CFAF 07:CF9F: 85 04     STA ram_0004               ; clear
C - - - - - 0x01CFB1 07:CFA1: B1 02     LDA (ram_0002),Y           ; 4 of 4
C - - - - - 0x01CFB3 07:CFA3: 10 02     BPL bra_CFA7_skip          ; If Register A < 0x80
C - - - - - 0x01CFB5 07:CFA5: C6 04     DEC ram_0004               ; 0x00 -> 0xFF (The position may be negative!)
bra_CFA7_skip:
C - - - - - 0x01CFB7 07:CFA7: 18        CLC                        ;
C - - - - - 0x01CFB8 07:CFA8: 65 01     ADC ram_0001               ;
C - - - - - 0x01CFBA 07:CFAA: 85 06     STA ram_0006               ; store X-position temporarily
C - - - - - 0x01CFBC 07:CFAC: A5 04     LDA ram_0004               ;
C - - - - - 0x01CFBE 07:CFAE: 69 00     ADC #$00                   ;
C - - - - - 0x01CFC0 07:CFB0: D0 25     BNE bra_CFD7_skip_sprite   ; If Register A != 0x00 (sprite off screen)
C - - - - - 0x01CFC2 07:CFB2: A5 06     LDA ram_0006               ;
C - - - - - 0x01CFC4 07:CFB4: C9 F9     CMP #$F9                   ;
C - - - - - 0x01CFC6 07:CFB6: B0 1F     BCS bra_CFD7_skip_sprite   ; If Register A >= 0xF9 (it is an unacceptable sprite)
C - - - - - 0x01CFC8 07:CFB8: 9D 03 07  STA vStartOAM_4b,X         ; set X-position
C - - - - - 0x01CFCB 07:CFBB: E8        INX                        ;
C - - - - - 0x01CFCC 07:CFBC: E8        INX                        ;
C - - - - - 0x01CFCD 07:CFBD: E8        INX                        ;
C - - - - - 0x01CFCE 07:CFBE: E8        INX                        ; To 1st next sprite data byte
C - - - - - 0x01CFCF 07:CFBF: F0 12     BEQ bra_CFD3_RTS           ; If Register X == 0x00
bra_CFC1_next:
C - - - - - 0x01CFD1 07:CFC1: C8        INY                        ; 1 of 4 again
C - - - - - 0x01CFD2 07:CFC2: C6 05     DEC ram_0005               ; decrement loop counter
C - - - - - 0x01CFD4 07:CFC4: D0 B0     BNE bra_CF76_repeat        ; If counter != 0
C - - - - - 0x01CFD6 07:CFC6: 86 43     STX vCurrentNumberSprite   ; 
bra_CFC8_skip:
loc_CFC8_continue:
C D 2 - - - 0x01CFD8 07:CFC8: E6 1A     INC vTempCounter1A         ; increment counter (vTempCounter1A)
C - - - - - 0x01CFDA 07:CFCA: A4 1A     LDY vTempCounter1A         ;
C - - - - - 0x01CFDC 07:CFCC: C0 10     CPY #$10                   ;
C - - - - - 0x01CFDE 07:CFCE: B0 03     BCS bra_CFD3_RTS           ; Returns If vTempCounter1A >= 0x10
C - - - - - 0x01CFE0 07:CFD0: 4C 10 CF  JMP loc_CF10_loop          ; Repeat the loop

bra_CFD3_RTS:
C - - - - - 0x01CFE3 07:CFD3: 60        RTS                        ;

bra_CFD4_skip_sprite:
C - - - - - 0x01CFE4 07:CFD4: C8        INY                        ; a correction ($CF8C)
C - - - - - 0x01CFE5 07:CFD5: C8        INY                        ; a correction ($CF94)
C - - - - - 0x01CFE6 07:CFD6: C8        INY                        ; a correction ($CF9C)
bra_CFD7_skip_sprite:
C - - - - - 0x01CFE7 07:CFD7: A9 F0     LDA #$F0                   ; CONSTANT - a sprite doesn't exist
C - - - - - 0x01CFE9 07:CFD9: 9D 00 07  STA vStartOAM,X            ; 
C - - - - - 0x01CFEC 07:CFDC: D0 E3     BNE bra_CFC1_next          ; Always true

tbl_sprite_order_indexes:
- D 2 - I - 0x01CFEE 07:CFDE: 00        .byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F  ; The order of the indexes 1
- D 2 - I - 0x01CFFE 07:CFEE: 09        .byte $09, $0A, $0B, $0C, $0D, $0E, $0F, $02, $03, $04, $05, $06, $07, $08, $01, $00  ; The order of the indexes 2
- D 2 - I - 0x01D00E 07:CFFE: 0F        .byte $0F, $0E, $0D, $0C, $0B, $0A, $00, $01, $09, $08, $07, $06, $05, $04, $03, $02  ; The order of the indexes 3
- D 2 - I - 0x01D01E 07:D00E: 01        .byte $01, $08, $07, $06, $05, $04, $03, $02, $00, $0F, $0E, $0D, $0C, $0B, $0A, $09  ; The order of the indexes 4
- D 2 - I - 0x01D02E 07:D01E: 05        .byte $05, $06, $07, $08, $02, $03, $04, $0C, $0D, $0E, $00, $01, $0F, $09, $08, $07  ; The order of the indexes 5
- D 2 - I - 0x01D03E 07:D02E: 0C        .byte $0C, $0D, $0E, $0F, $01, $00, $09, $0A, $0B, $05, $06, $07, $08, $02, $03, $04  ; The order of the indexes 6
- D 2 - I - 0x01D04E 07:D03E: 04        .byte $04, $03, $02, $01, $00, $08, $07, $06, $05, $0B, $0A, $09, $0F, $0E, $0D, $0C  ; The order of the indexes 7
- D 2 - I - 0x01D05E 07:D04E: 0B        .byte $0B, $0A, $09, $0F, $0E, $0D, $0C, $01, $00, $04, $03, $02, $08, $07, $06, $05  ; The order of the indexes 8

sub_accumulator_shift_right_by_5:
C - - - - - 0x01D06E 07:D05E: 4A        LSR  ;
sub_accumulator_shift_right_by_4:
C - - - - - 0x01D06F 07:D05F: 4A        LSR  ;
C - - - - - 0x01D070 07:D060: 4A        LSR  ;
C - - - - - 0x01D071 07:D061: 4A        LSR  ;
C - - - - - 0x01D072 07:D062: 4A        LSR  ;
C - - - - - 0x01D073 07:D063: 60        RTS  ;

; Out: Register A - vEnemyRNGValue
sub_D064_generate_rng:
C - - - - - 0x01D074 07:D064: A5 35     LDA vEnemyRNGValue ;
C - - - - - 0x01D076 07:D066: 85 12     STA $0012          ; cache
C - - - - - 0x01D078 07:D068: 0A        ASL                ;
C - - - - - 0x01D079 07:D069: 0A        ASL                ;
C - - - - - 0x01D07A 07:D06A: 18        CLC                ;
C - - - - - 0x01D07B 07:D06B: 65 12     ADC $0012          ; * 5
C - - - - - 0x01D07D 07:D06D: 18        CLC                ;
C - - - - - 0x01D07E 07:D06E: 69 13     ADC #$13           ;
C - - - - - 0x01D080 07:D070: 85 35     STA vEnemyRNGValue ;
C - - - - - 0x01D082 07:D072: 60        RTS                ;

; in: Register A - signed value X
; out: Register A - signed value -X
sub_D073_invert_sign:
C - - - - - 0x01D083 07:D073: 49 FF     EOR #$FF ; see https://www.atariarchives.org/alp/appendix_1.php (LSR Logical Shift Right)
C - - - - - 0x01D085 07:D075: 18        CLC      ;
C - - - - - 0x01D086 07:D076: 69 01     ADC #$01 ;
C - - - - - 0x01D088 07:D078: 60        RTS      ;

; The accumulator contains a button state
; Returns 0 in Register A if the button isn't pressed
sub_D079_check_button_press: 
C - - - - - 0x01D089 07:D079: 85 12     STA v_temp_check_buttons ;
C - - - - - 0x01D08B 07:D07B: A5 1C     LDA vBtnPressedInGame    ;
C - - - - - 0x01D08D 07:D07D: 25 12     AND v_temp_check_buttons ;
C - - - - - 0x01D08F 07:D07F: F0 04     BEQ @bra_D085_RTS        ; If the button does not match the expected result
C - - - - - 0x01D091 07:D081: 45 1D     EOR vCopy001C            ; The double click protection
C - - - - - 0x01D093 07:D083: 25 12     AND v_temp_check_buttons ;
@bra_D085_RTS:
C - - - - - 0x01D095 07:D085: 60        RTS                      ;

; Params:
; 0x12-0x13 - an input address
; Register A - position by the content (indirect 0x12-0x13)
sub_D086_render_14_15_16_17_18_v1:
C - - - - - 0x01D096 07:D086: 20 A3 D0  JSR sub_D0A3_prepare_14_15_16_17_18 ;
; Or 0x14, 0x15, 0x16, 0x17, 0x18 are prepared outside
loc_D089_render_14_15_16_17_18_v2:
sub_D089_render_14_15_16_17_18_v2:
C D 2 - - - 0x01D099 07:D089: AD 02 20  LDA PPU_STATUS                      ; Reset PPU Address
C - - - - - 0x01D09C 07:D08C: A5 15     LDA ram_0015                        ;
C - - - - - 0x01D09E 07:D08E: 8D 06 20  STA PPU_ADDRESS                     ;
C - - - - - 0x01D0A1 07:D091: A5 14     LDA ram_0014                        ;
C - - - - - 0x01D0A3 07:D093: 8D 06 20  STA PPU_ADDRESS                     ; PPU address is {0x14-0x15}
C - - - - - 0x01D0A6 07:D096: A0 00     LDY #$00                            ; set loop counter
@bra_D098_loop:                                                             ; loop by y
C - - - - - 0x01D0A8 07:D098: B1 16     LDA (ram_0016),Y                    ;
C - - - - - 0x01D0AA 07:D09A: 8D 07 20  STA PPU_DATA                        ;
C - - - - - 0x01D0AD 07:D09D: C8        INY                                 ; increments loop counter
C - - - - - 0x01D0AE 07:D09E: C4 18     CPY ram_0018                        ;
C - - - - - 0x01D0B0 07:D0A0: D0 F6     BNE @bra_D098_loop                  ; If Register Y != ($0018)
C - - - - - 0x01D0B2 07:D0A2: 60        RTS                                 ;

; In: $0012-$0013 - an input address
; In: Register A - position by the content (indirect $0012-$0013)
sub_D0A3_prepare_14_15_16_17_18:
C - - - - - 0x01D0B3 07:D0A3: 85 14     STA ram_0014       ;
C - - - - - 0x01D0B5 07:D0A5: 0A        ASL                ;
C - - - - - 0x01D0B6 07:D0A6: 0A        ASL                ;
C - - - - - 0x01D0B7 07:D0A7: 18        CLC                ;
C - - - - - 0x01D0B8 07:D0A8: 65 14     ADC ram_0014       ; get the content offset (5 byte each * Register A)
C - - - - - 0x01D0BA 07:D0AA: A8        TAY                ; 
C - - - - - 0x01D0BB 07:D0AB: A2 00     LDX #$00           ; set loop counter
@bra_D0AD_loop:                                            ; loop by x (5 times)
C - - - - - 0x01D0BD 07:D0AD: B1 12     LDA ($0012),Y      ; get the content value
C - - - - - 0x01D0BF 07:D0AF: 95 14     STA ram_0014,X     ; prepare 0x14 or 0x15 or 0x16 or 0x17 or 0x18
C - - - - - 0x01D0C1 07:D0B1: C8        INY                ; increment the position by the content
C - - - - - 0x01D0C2 07:D0B2: E8        INX                ; increments loop counter
C - - - - - 0x01D0C3 07:D0B3: E0 05     CPX #$05           ;
C - - - - - 0x01D0C5 07:D0B5: D0 F6     BNE @bra_D0AD_loop ; If Register X != 0x05
C - - - - - 0x01D0C7 07:D0B7: 60        RTS                ;

; In: Register A - the position bits
sub_D0B8_change_stack_pointer_by_bits:
C - - - - - 0x01D0C8 07:D0B8: A0 02     LDY #$02           ; set loop counter (the offset)
@bra_D0BA_loop:                                            ; loop by y
C - - - - - 0x01D0CA 07:D0BA: 6A        ROR                ; shift to next bit
C - - - - - 0x01D0CB 07:D0BB: B0 08     BCS bra_D0C5_done  ; If Register A was 0%XXXXXXX1
C - - - - - 0x01D0CD 07:D0BD: C8        INY                ;
C - - - - - 0x01D0CE 07:D0BE: C8        INY                ; +2 decrement loop counter, because the address contains high and low parts
C - - - - - 0x01D0CF 07:D0BF: D0 F9     BNE @bra_D0BA_loop ; If Register Y != 0
; In: Register A - the address index
sub_D0C1_change_stack_pointer:
C - - - - - 0x01D0D1 07:D0C1: 0A        ASL                ; *2, bacause the address contains high and low parts
C - - - - - 0x01D0D2 07:D0C2: A8        TAY                ;
C - - - - - 0x01D0D3 07:D0C3: C8        INY                ;
C - - - - - 0x01D0D4 07:D0C4: C8        INY                ; +2, i.e below sub_D0C1_change_stack_pointer
; In: Register Y - the offset
bra_D0C5_done:
C - - - - - 0x01D0D5 07:D0C5: 68        PLA                ;
C - - - - - 0x01D0D6 07:D0C6: 85 12     STA $0012          ;
C - - - - - 0x01D0D8 07:D0C8: 68        PLA                ;
C - - - - - 0x01D0D9 07:D0C9: 85 13     STA $0013          ;
C - - - - - 0x01D0DB 07:D0CB: B1 12     LDA ($0012),Y      ;
C - - - - - 0x01D0DD 07:D0CD: 48        PHA                ;
C - - - - - 0x01D0DE 07:D0CE: 88        DEY                ;
C - - - - - 0x01D0DF 07:D0CF: B1 12     LDA ($0012),Y      ;
C - - - - - 0x01D0E1 07:D0D1: 48        PHA                ;
C - - - - - 0x01D0E2 07:D0D2: 60        RTS                ;

; 3 mode
; in: Register A - vHighPpuAddress (negative value)
bra_D0D3_alternative_mode:
C - - - - - 0x01D0E3 07:D0D3: 29 7F     AND #$7F                 ; negative oount -> positive value
C - - - - - 0x01D0E5 07:D0D5: AE 30 06  LDX vLowPpuAddress       ;
C - - - - - 0x01D0E8 07:D0D8: 85 00     STA ram_0000             ; high ppu address -> $0000
C - - - - - 0x01D0EA 07:D0DA: 86 01     STX ram_0001             ; low ppu address ->  $0001
C - - - - - 0x01D0EC 07:D0DC: A5 26     LDA vPpuCtrlSettings     ;
C - - - - - 0x01D0EE 07:D0DE: 09 04     ORA #$04                 ; set vertical increment per CPU read/write of PPUDATA (increment 32)
C - - - - - 0x01D0F0 07:D0E0: 8D 00 20  STA PPU_CTRL             ;
C - - - - - 0x01D0F3 07:D0E3: AD 32 06  LDA vPpuBufferCount      ;
C - - - - - 0x01D0F6 07:D0E6: 85 02     STA ram_0002             ; ppu buffer count -> $0002
C - - - - - 0x01D0F8 07:D0E8: A2 00     LDX #$00                 ;
loc_D0EA_loop:
bra_D0EA_repeat:
C D 2 - - - 0x01D0FA 07:D0EA: A5 00     LDA ram_0000             ;
C - - - - - 0x01D0FC 07:D0EC: 8D 06 20  STA PPU_ADDRESS          ;
C - - - - - 0x01D0FF 07:D0EF: A5 01     LDA ram_0001             ;
C - - - - - 0x01D101 07:D0F1: 8D 06 20  STA PPU_ADDRESS          ; PPU address by ($0000)
C - - - - - 0x01D104 07:D0F4: A4 54     LDY vPpuBufferInitValue  ; set loop counter
@bra_D0F6_loop:
C - - - - - 0x01D106 07:D0F6: BD 33 06  LDA vPpuBufferData,X     ;
C - - - - - 0x01D109 07:D0F9: 8D 07 20  STA PPU_DATA             ;
C - - - - - 0x01D10C 07:D0FC: E8        INX                      ; next data
C - - - - - 0x01D10D 07:D0FD: C6 02     DEC ram_0002             ; decrement count
C - - - - - 0x01D10F 07:D0FF: F0 4D     BEQ bra_D14E_clear       ; If count == 0x00
C - - - - - 0x01D111 07:D101: 88        DEY                      ; increment loop counter
C - - - - - 0x01D112 07:D102: D0 F2     BNE @bra_D0F6_loop       ; If Register Y != 0
C - - - - - 0x01D114 07:D104: A5 01     LDA ram_0001             ;
C - - - - - 0x01D116 07:D106: 29 1F     AND #$1F                 ; filtets by mask
C - - - - - 0x01D118 07:D108: C9 1F     CMP #$1F                 ; CONSTANT - last horizontal tile position in name table
C - - - - - 0x01D11A 07:D10A: D0 0A     BNE bra_D116_skip        ; If low ppu address != 0%XXX11111
C - - - - - 0x01D11C 07:D10C: 85 01     STA ram_0001             ; !(UNUSED), <~ 0x1F
C - - - - - 0x01D11E 07:D10E: A5 00     LDA ram_0000             ; !(UNUSED)
C - - - - - 0x01D120 07:D110: 49 04     EOR #$04                 ; !(UNUSED)
C - - - - - 0x01D122 07:D112: 85 00     STA ram_0000             ; !(UNUSED), toggle trick for name tables, e.g. 0x20 -> 0x24, 0x22 -> 0x26, 0x24 -> 0x20
C - - - - - 0x01D124 07:D114: D0 D4     BNE bra_D0EA_repeat      ; !(UNUSED), Always true, $0000 >= 0x20

bra_D116_skip:
C - - - - - 0x01D126 07:D116: E6 01     INC ram_0001             ; increment low ppu address
C - - - - - 0x01D128 07:D118: 4C EA D0  JMP loc_D0EA_loop        ;

; 3 render modes
sub_D11B_shared_render:
C - - - - - 0x01D12B 07:D11B: A5 19     LDA vRenderActive             ;
C - - - - - 0x01D12D 07:D11D: D0 39     BNE bra_D158_RTS              ; Branch If the render isn't activated
C - - - - - 0x01D12F 07:D11F: AD 31 06  LDA vHighPpuAddress           ;
C - - - - - 0x01D132 07:D122: F0 35     BEQ bra_D159_ppu_cache        ; If high ppu address == 0x00
C - - - - - 0x01D134 07:D124: 30 AD     BMI bra_D0D3_alternative_mode ;
C - - - - - 0x01D136 07:D126: AE 30 06  LDX vLowPpuAddress            ;
C - - - - - 0x01D139 07:D129: 8D 06 20  STA PPU_ADDRESS               ; writes high byte
C - - - - - 0x01D13C 07:D12C: 8E 06 20  STX PPU_ADDRESS               ; writes low byte
C - - - - - 0x01D13F 07:D12F: AD 32 06  LDA vPpuBufferCount           ;
C - - - - - 0x01D142 07:D132: 10 0B     BPL @bra_D13F_skip            ; If positive value - a horiz increment, else a vert increment
C - - - - - 0x01D144 07:D134: 48        PHA                           ; store count
C - - - - - 0x01D145 07:D135: A5 26     LDA vPpuCtrlSettings          ;
C - - - - - 0x01D147 07:D137: 09 04     ORA #$04                      ; vertical increment per CPU read/write of PPUDATA (increment 32)
C - - - - - 0x01D149 07:D139: 8D 00 20  STA PPU_CTRL                  ;
C - - - - - 0x01D14C 07:D13C: 68        PLA                           ; retrieve count ($D134)
C - - - - - 0x01D14D 07:D13D: 29 7F     AND #$7F                      ; negative oount -> positive value
@bra_D13F_skip:
C - - - - - 0x01D14F 07:D13F: 85 00     STA ram_0000                  ; set loop counter
C - - - - - 0x01D151 07:D141: A2 00     LDX #$00                      ;
@bra_D143_loop:                                                       ; loop by ram_0000
C - - - - - 0x01D153 07:D143: BD 33 06  LDA vPpuBufferData,X          ;
C - - - - - 0x01D156 07:D146: 8D 07 20  STA PPU_DATA                  ;
C - - - - - 0x01D159 07:D149: E8        INX                           ;
C - - - - - 0x01D15A 07:D14A: C6 00     DEC ram_0000                  ; decrement ram_0000
C - - - - - 0x01D15C 07:D14C: D0 F5     BNE @bra_D143_loop            ; If ram_0000 != 0
bra_D14E_clear:
C - - - - - 0x01D15E 07:D14E: A9 00     LDA #$00                      ;
C - - - - - 0x01D160 07:D150: 8D 31 06  STA vHighPpuAddress           ; clear
C - - - - - 0x01D163 07:D153: A5 26     LDA vPpuCtrlSettings          ; 
C - - - - - 0x01D165 07:D155: 8D 00 20  STA PPU_CTRL                  ; retrieve ppu ctrl
bra_D158_RTS:
C - - - - - 0x01D168 07:D158: 60        RTS                           ;

; 2 mode
bra_D159_ppu_cache:
C - - - - - 0x01D169 07:D159: A5 2C     LDA vLowCounter               ;
C - - - - - 0x01D16B 07:D15B: 6A        ROR                           ;
C - - - - - 0x01D16C 07:D15C: B0 0B     BCS bra_D169_render_ppu_cache ; Branch if vLowCounter doesn't multiple of 2
bra_D15E_message:
C - - - - - 0x01D16E 07:D15E: A5 3B     LDA vSharedGameStatus                  ;
C - - - - - 0x01D170 07:D160: 6A        ROR                                    ;
C - - - - - 0x01D171 07:D161: 90 03     BCC bra_D166_update_palette            ; Branch if no exist 'A screen with the message'
C - - - - - 0x01D173 07:D163: 4C 55 B2  JMP loc_B255_display_message_by_letter ;

bra_D166_update_palette:
C - - - - - 0x01D176 07:D166: 4C 71 C3  JMP loc_C371_update_palette            ;

bra_D169_render_ppu_cache:
C - - - - - 0x01D179 07:D169: AD 7B 06  LDA vPpuAddrDataCache   ;
C - - - - - 0x01D17C 07:D16C: F0 F0     BEQ bra_D15E_message    ; Branch If the is empty (0x00 - first byte)
C - - - - - 0x01D17E 07:D16E: A2 00     LDX #$00                ; 1 of N
bra_D170_repeat:
C - - - - - 0x01D180 07:D170: BD 7B 06  LDA vPpuAddrDataCache,X ;
C - - - - - 0x01D183 07:D173: F0 1C     BEQ bra_D191_exit       ; Branch If the count == 0x00
C - - - - - 0x01D185 07:D175: A8        TAY                     ; the count -> Register y
C - - - - - 0x01D186 07:D176: E8        INX                     ; 2 + offs of N
C - - - - - 0x01D187 07:D177: BD 7B 06  LDA vPpuAddrDataCache,X ;
C - - - - - 0x01D18A 07:D17A: 8D 06 20  STA PPU_ADDRESS         ;
C - - - - - 0x01D18D 07:D17D: E8        INX                     ; 3 + offs of N
C - - - - - 0x01D18E 07:D17E: BD 7B 06  LDA vPpuAddrDataCache,X ;
C - - - - - 0x01D191 07:D181: 8D 06 20  STA PPU_ADDRESS         ;
C - - - - - 0x01D194 07:D184: E8        INX                     ; 4 + offs of N
@bra_D185_loop:                                                 ; loop by y (the count)
C - - - - - 0x01D195 07:D185: BD 7B 06  LDA vPpuAddrDataCache,X ;
C - - - - - 0x01D198 07:D188: 8D 07 20  STA PPU_DATA            ;  
C - - - - - 0x01D19B 07:D18B: E8        INX                     ;
C - - - - - 0x01D19C 07:D18C: 88        DEY                     ; decrement y (the count)
C - - - - - 0x01D19D 07:D18D: D0 F6     BNE @bra_D185_loop      ; Branch If Register Y != 0
C - - - - - 0x01D19F 07:D18F: F0 DF     BEQ bra_D170_repeat     ; Always true

bra_D191_exit:
C - - - - - 0x01D1A1 07:D191: 8D 7B 06  STA vPpuAddrDataCache   ; clear (set 0x00)
C - - - - - 0x01D1A4 07:D194: 60        RTS                     ;

sub_D195_scroll_to:
loc_D195_scroll_to:
C D 2 - - - 0x01D1A5 07:D195: A5 4B     LDA vHighViewPortPosX         ;
C - - - - - 0x01D1A7 07:D197: 85 4D     STA vCacheNoScreen            ; store a temporarily value - vHighViewPortPosX
C - - - - - 0x01D1A9 07:D199: A5 48     LDA vScrollDirection          ;
C - - - - - 0x01D1AB 07:D19B: 30 33     BMI bra_D1D0_scroll_to_right  ; If vScrollDirection is the auto scroll to right
C - - - - - 0x01D1AD 07:D19D: C6 27     DEC vLowViewPortPosX          ; decrement low X-position 
C - - - - - 0x01D1AF 07:D19F: A5 27     LDA vLowViewPortPosX          ;
C - - - - - 0x01D1B1 07:D1A1: C9 FF     CMP #$FF                      ;
C - - - - - 0x01D1B3 07:D1A3: D0 10     BNE bra_D1B5_skip             ; If vLowViewPortPosX != 0xFF, i.e. a screen isn't changed
C - - - - - 0x01D1B5 07:D1A5: A5 4B     LDA vHighViewPortPosX         ;
C - - - - - 0x01D1B7 07:D1A7: D0 03     BNE bra_D1AC_decrement_screen ; Branch If vHighViewPortPosX != 0
C - - - - - 0x01D1B9 07:D1A9: 85 27     STA vLowViewPortPosX          ; vLowViewPortPosX <- 0
C - - - - - 0x01D1BB 07:D1AB: 60        RTS                           ;

bra_D1AC_decrement_screen:
C - - - - - 0x01D1BC 07:D1AC: A5 26     LDA vPpuCtrlSettings          ;
C - - - - - 0x01D1BE 07:D1AE: 49 01     EOR #$01                      ; switch $2000 -> $2400 or $2400 -> $2000 (name table address)
C - - - - - 0x01D1C0 07:D1B0: 85 26     STA vPpuCtrlSettings          ;
C - - - - - 0x01D1C2 07:D1B2: C6 4B     DEC vHighViewPortPosX         ;
C - - - - - 0x01D1C4 07:D1B4: 60        RTS                           ; 

bra_D1B5_skip:
C - - - - - 0x01D1C5 07:D1B5: C9 FC     CMP #$FC                               ;
C - - - - - 0x01D1C7 07:D1B7: D0 03     BNE bra_D1BC_skip                      ; If vLowViewPortPosX != 0xFC
C - - - - - 0x01D1C9 07:D1B9: 4C A0 D2  JMP loc_D2A0_prepare_attribute_table   ;

bra_D1BC_skip:
C - - - - - 0x01D1CC 07:D1BC: 48        PHA                                    ; store vLowViewPortPosX
C - - - - - 0x01D1CD 07:D1BD: 29 07     AND #$07                               ;
C - - - - - 0x01D1CF 07:D1BF: F0 02     BEQ bra_D1C3_decrement_40              ; If vLowViewPortPosX is multiple of 16
C - - - - - 0x01D1D1 07:D1C1: 68        PLA                                    ; retrieve vLowViewPortPosX ($D1BC)
C - - - - - 0x01D1D2 07:D1C2: 60        RTS                                    ;

bra_D1C3_decrement_40:
C - - - - - 0x01D1D3 07:D1C3: 68        PLA                                 ; retrieve vLowViewPortPosX
C - - - - - 0x01D1D4 07:D1C4: 38        SEC                                 ;
C - - - - - 0x01D1D5 07:D1C5: E9 40     SBC #$40                            ;
C - - - - - 0x01D1D7 07:D1C7: B0 02     BCS @bra_D1CB_skip                  ; If vLowViewPortPosX >= 0x40
C - - - - - 0x01D1D9 07:D1C9: C6 4D     DEC vCacheNoScreen                  ;
@bra_D1CB_skip:
C - - - - - 0x01D1DB 07:D1CB: 85 02     STA ram_0002                        ; puts vLowViewPortPosX - 0x40
C - - - - - 0x01D1DD 07:D1CD: 4C 03 D2  JMP loc_D203_fill_in_the_ppu_buffer ;

bra_D1D0_scroll_to_right:
C - - - - - 0x01D1E0 07:D1D0: E6 4D     INC vCacheNoScreen                   ; temp increment
C - - - - - 0x01D1E2 07:D1D2: A5 4D     LDA vCacheNoScreen                   ;
C - - - - - 0x01D1E4 07:D1D4: C5 49     CMP vCurrentRoomLength               ;
C - - - - - 0x01D1E6 07:D1D6: B0 20     BCS bra_D1F8_RTS                     ; If vCacheNoScreen >= vCurrentRoomLength (outside of the room)
C - - - - - 0x01D1E8 07:D1D8: E6 27     INC vLowViewPortPosX                 ; increment low X-position 
C - - - - - 0x01D1EA 07:D1DA: A5 27     LDA vLowViewPortPosX                 ; 
C - - - - - 0x01D1EC 07:D1DC: D0 0D     BNE @bra_D1EB_skip                   ; If vLowViewPortPosX != 0x00
C - - - - - 0x01D1EE 07:D1DE: 48        PHA                                  ; store vLowViewPortPosX (0x00)
C - - - - - 0x01D1EF 07:D1DF: A5 26     LDA vPpuCtrlSettings                 ;
C - - - - - 0x01D1F1 07:D1E1: 49 01     EOR #$01                             ; switch $2000 -> $2400 or $2400 -> $2000 (name table address)
C - - - - - 0x01D1F3 07:D1E3: 85 26     STA vPpuCtrlSettings                 ;
C - - - - - 0x01D1F5 07:D1E5: E6 4B     INC vHighViewPortPosX                ; next screen
C - - - - - 0x01D1F7 07:D1E7: E6 4D     INC vCacheNoScreen                   ;
C - - - - - 0x01D1F9 07:D1E9: D0 0E     BNE bra_D1F9_increment_40            ;
@bra_D1EB_skip:
C - - - - - 0x01D1FB 07:D1EB: C9 04     CMP #$04                             ; 
C - - - - - 0x01D1FD 07:D1ED: D0 03     BNE bra_D1F2_skip                    ; If vLowViewPortPosX != 0x04
C - - - - - 0x01D1FF 07:D1EF: 4C A0 D2  JMP loc_D2A0_prepare_attribute_table ;

bra_D1F2_skip:
C - - - - - 0x01D202 07:D1F2: 48        PHA                                  ; store vLowViewPortPosX
C - - - - - 0x01D203 07:D1F3: 29 07     AND #$07                             ;
C - - - - - 0x01D205 07:D1F5: F0 02     BEQ bra_D1F9_increment_40            ; If vLowViewPortPosX is multiple of 16
C - - - - - 0x01D207 07:D1F7: 68        PLA                                  ; retrieve vLowViewPortPosX ($D1F2)
bra_D1F8_RTS:
C - - - - - 0x01D208 07:D1F8: 60        RTS                                  ;

bra_D1F9_increment_40:
C - - - - - 0x01D209 07:D1F9: 68        PLA                                             ; retrieve vLowViewPortPosX
C - - - - - 0x01D20A 07:D1FA: 18        CLC                                             ;
C - - - - - 0x01D20B 07:D1FB: 69 40     ADC #$40                                        ;
C - - - - - 0x01D20D 07:D1FD: 90 02     BCC @bra_D201_skip                              ; If vLowViewPortPosX < 0xC0
C - - - - - 0x01D20F 07:D1FF: E6 4D     INC vCacheNoScreen                              ;
@bra_D201_skip:
C - - - - - 0x01D211 07:D201: 85 02     STA ram_0002                                    ; puts vLowViewPortPosX + 0x40
loc_D203_fill_in_the_ppu_buffer:
C D 2 - - - 0x01D213 07:D203: A5 4D     LDA vCacheNoScreen                              ;
C - - - - - 0x01D215 07:D205: C5 49     CMP vCurrentRoomLength                          ;
C - - - - - 0x01D217 07:D207: B0 EF     BCS bra_D1F8_RTS                                ; If vCacheNoScreen >= vCurrentRoomLength (outside of the room)
C - - - - - 0x01D219 07:D209: A9 98     LDA #$98                                        ;
C - - - - - 0x01D21B 07:D20B: 8D 32 06  STA vPpuBufferCount                             ; init count (vPpuBufferCount <~ 0x98)
C - - - - - 0x01D21E 07:D20E: A2 20     LDX #$20                                        ;
C - - - - - 0x01D220 07:D210: A5 4D     LDA vCacheNoScreen                              ;
C - - - - - 0x01D222 07:D212: 6A        ROR                                             ;
C - - - - - 0x01D223 07:D213: 90 02     BCC @bra_D217_skip                              ; If vCacheNoScreen = {0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, ...}
C - - - - - 0x01D225 07:D215: A2 24     LDX #$24                                        ;
@bra_D217_skip:
C - - - - - 0x01D227 07:D217: 8E 31 06  STX vHighPpuAddress                             ; vHighPpuAddress <~ 0x20 or 0x24
C - - - - - 0x01D22A 07:D21A: A9 00     LDA #$00                                        ;
C - - - - - 0x01D22C 07:D21C: 85 01     STA ram_0001                                    ; set zero
C - - - - - 0x01D22E 07:D21E: A5 02     LDA ram_0002                                    ;
C - - - - - 0x01D230 07:D220: 4A        LSR                                             ;
C - - - - - 0x01D231 07:D221: 4A        LSR                                             ;
C - - - - - 0x01D232 07:D222: 4A        LSR                                             ; /8
C - - - - - 0x01D233 07:D223: 09 C0     ORA #$C0                                        ;
C - - - - - 0x01D235 07:D225: 8D 30 06  STA vLowPpuAddress                              ; vLowPpuAddress <~ [0xC0-0xDF]
C - - - - - 0x01D238 07:D228: 20 F7 D3  JSR sub_D3F7_get_background_screen_info_address ;
C - - - - - 0x01D23B 07:D22B: A5 02     LDA ram_0002                                    ;
C - - - - - 0x01D23D 07:D22D: 29 F0     AND #$F0                                        ;
C - - - - - 0x01D23F 07:D22F: 4A        LSR                                             ;
C - - - - - 0x01D240 07:D230: 85 02     STA ram_0002                                    ;
C - - - - - 0x01D242 07:D232: 4A        LSR                                             ;
C - - - - - 0x01D243 07:D233: 18        CLC                                             ;
C - - - - - 0x01D244 07:D234: 65 02     ADC ram_0002                                    ; put in Register A a whole ram_0002 that is a multiple of 12
                                                                                        ; 0x0X -> 0x00, 0x1X -> 0x0C, 0x2X -> 0x18, 0x3X -> 0x24
                                                                                        ; 0x4X -> 0x30, 0x5X -> 0x3C, 0x6X -> 0x48, 0x7X -> 0x54
                                                                                        ; 0x8X -> 0x60, 0x9X -> 0x6C, 0xAX -> 0x78, 0xBX -> 0x84
                                                                                        ; 0xCX -> 0x90, 0xDX -> 0x9C, 0xEX -> 0xA8, 0xFX -> 0xB4
																						; see also loc_D2E5_get_collision_value
C - - - - - 0x01D246 07:D236: A0 00     LDY #$00                                        ; 1th of 8 info bytes
C - - - - - 0x01D248 07:D238: 71 4E     ADC (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D24A 07:D23A: 85 52     STA ram_0052                                    ; low address + offset
C - - - - - 0x01D24C 07:D23C: C8        INY                                             ; 2th of 8 info bytes
C - - - - - 0x01D24D 07:D23D: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D24F 07:D23F: 69 00     ADC #$00                                        ;
C - - - - - 0x01D251 07:D241: 48        PHA                                             ; store A
C - - - - - 0x01D252 07:D242: 29 1F     AND #$1F                                        ;
C - - - - - 0x01D254 07:D244: 09 80     ORA #$80                                        ; using 0x000XXXXX from 0xBBBAAAAA
C - - - - - 0x01D256 07:D246: 85 53     STA ram_0053                                    ; high address + offset
C - - - - - 0x01D258 07:D248: 68        PLA                                             ; retrieve A ($D241)
C - - - - - 0x01D259 07:D249: 20 5E D0  JSR sub_accumulator_shift_right_by_5            ;
C - - - - - 0x01D25C 07:D24C: 85 02     STA ram_0002                                    ; puts a bank data, using 0xXXX00000 from 0xBBBAAAAA
C - - - - - 0x01D25E 07:D24E: A0 04     LDY #$04                                        ; 5th of 8 info bytes
C - - - - - 0x01D260 07:D250: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D262 07:D252: 85 50     STA vTempValue50                                ;
C - - - - - 0x01D264 07:D254: C8        INY                                             ; 6th of 8 info bytes
C - - - - - 0x01D265 07:D255: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D267 07:D257: 85 51     STA vTempValue51                                ;
C - - - - - 0x01D269 07:D259: A0 00     LDY #$00                                        ; set the position in index array
C - - - - - 0x01D26B 07:D25B: A2 00     LDX #$00                                        ; set loop counter
bra_D25D_loop:                                                                          ; loop by x
C - - - - - 0x01D26D 07:D25D: A9 06     LDA #$06                                        ; 
C - - - - - 0x01D26F 07:D25F: 8D 00 80  STA MMC3_Bank_select                            ;
C - - - - - 0x01D272 07:D262: A5 02     LDA ram_0002                                    ;
C - - - - - 0x01D274 07:D264: 8D 01 80  STA MMC3_Bank_data                              ; switch $0002 (PRG) in 0x8000-09FFF
C - - - - - 0x01D277 07:D267: A9 00     LDA #$00                                        ;
C - - - - - 0x01D279 07:D269: 85 07     STA ram_0007                                    ; set zero
C - - - - - 0x01D27B 07:D26B: B1 52     LDA (ram_0052),Y                                ; loads the index of quartet tiles
C - - - - - 0x01D27D 07:D26D: 0A        ASL                                             ;
C - - - - - 0x01D27E 07:D26E: 26 07     ROL ram_0007                                    ;
C - - - - - 0x01D280 07:D270: 0A        ASL                                             ;
C - - - - - 0x01D281 07:D271: 26 07     ROL ram_0007                                    ; ram_0007 = {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x01D283 07:D273: 18        CLC                                             ;
C - - - - - 0x01D284 07:D274: 65 50     ADC vTempValue50                                ; low address = vTempValue50 + ((ram_0052) << 2)
C - - - - - 0x01D286 07:D276: 85 06     STA ram_0006                                    ; puts a low address of ppu datas
C - - - - - 0x01D288 07:D278: A5 07     LDA ram_0007                                    ;
C - - - - - 0x01D28A 07:D27A: 65 51     ADC vTempValue51                                ; 0xBBBAAAAA = vTempValue51 + ram_0007
C - - - - - 0x01D28C 07:D27C: 20 04 C5  JSR sub_C504_switch_prg_8000                    ; switch to the bank with ppu datas
                                                                                        ; vCacheRam_11 <~ the position in index array
C - - - - - 0x01D28F 07:D27F: 85 07     STA ram_0007                                    ; puts a high address of ppu datas
C - - - - - 0x01D291 07:D281: A0 00     LDY #$00                                        ; using first pair of quartet
C - - - - - 0x01D293 07:D283: A5 27     LDA vLowViewPortPosX                            ;
C - - - - - 0x01D295 07:D285: 29 08     AND #$08                                        ;
C - - - - - 0x01D297 07:D287: F0 02     BEQ @bra_D28B_skip                              ; If vLowViewPortPosX == 0xXXXXX000
                                                                                        ; or which is the same, multiple of 8 without remainder
C - - - - - 0x01D299 07:D289: A0 02     LDY #$02                                        ; using second pair of quartet
@bra_D28B_skip:
C - - - - - 0x01D29B 07:D28B: B1 06     LDA (ram_0006),Y                                ;
C - - - - - 0x01D29D 07:D28D: 9D 33 06  STA vPpuBufferData,X                            ; store a tile number 1
C - - - - - 0x01D2A0 07:D290: C8        INY                                             ; next vPpuBufferData
C - - - - - 0x01D2A1 07:D291: E8        INX                                             ; increment loop counter
C - - - - - 0x01D2A2 07:D292: B1 06     LDA (ram_0006),Y                                ;
C - - - - - 0x01D2A4 07:D294: 9D 33 06  STA vPpuBufferData,X                            ; store a tile number 2
C - - - - - 0x01D2A7 07:D297: E8        INX                                             ; increment loop counter
C - - - - - 0x01D2A8 07:D298: A4 11     LDY vCacheRam_11                                ; restores the position in index array
C - - - - - 0x01D2AA 07:D29A: C8        INY                                             ; increment the position in index array
C - - - - - 0x01D2AB 07:D29B: E0 18     CPX #$18                                        ;
C - - - - - 0x01D2AD 07:D29D: 90 BE     BCC bra_D25D_loop                               ; If Register X < 0x18
C - - - - - 0x01D2AF 07:D29F: 60        RTS                                             ;

loc_D2A0_prepare_attribute_table:
C D 2 - - - 0x01D2B0 07:D2A0: A5 46     LDA vNoRoom                                     ;
C - - - - - 0x01D2B2 07:D2A2: C9 06     CMP #$06                                        ; CONSTANT - level 2 (outside)
C - - - - - 0x01D2B4 07:D2A4: D0 0D     BNE bra_D2B3_skip                               ; If vNoRoom != 0x06
C - - - - - 0x01D2B6 07:D2A6: A2 10     LDX #$10                                        ; a building color (background color)
C - - - - - 0x01D2B8 07:D2A8: A5 4B     LDA vHighViewPortPosX                           ;
C - - - - - 0x01D2BA 07:D2AA: C9 0A     CMP #$0A                                        ; 11th level screen 
C - - - - - 0x01D2BC 07:D2AC: B0 02     BCS @bra_D2B0_skip                              ; If vHighViewPortPosX >= 0x0A
C - - - - - 0x01D2BE 07:D2AE: A2 2C     LDX #$2C                                        ; a sky color (background color)
@bra_D2B0_skip:
C - - - - - 0x01D2C0 07:D2B0: 8E 05 06  STX vCachePalette + 5                           ; a shared background color, 2nd bg palette
bra_D2B3_skip:
C - - - - - 0x01D2C3 07:D2B3: A9 38     LDA #$38                                        ;
C - - - - - 0x01D2C5 07:D2B5: 8D 32 06  STA vPpuBufferCount                             ; init count (vPpuBufferCount <~ 0x38)
C - - - - - 0x01D2C8 07:D2B8: A9 C8     LDA #$C8                                        ;
C - - - - - 0x01D2CA 07:D2BA: 8D 30 06  STA vLowPpuAddress                              ; vLowPpuAddress <~ 0xC8
C - - - - - 0x01D2CD 07:D2BD: A2 23     LDX #$23                                        ;
C - - - - - 0x01D2CF 07:D2BF: A5 4D     LDA vCacheNoScreen                              ;
C - - - - - 0x01D2D1 07:D2C1: 6A        ROR                                             ;
C - - - - - 0x01D2D2 07:D2C2: 90 02     BCC @bra_D2C6_skip                              ; If vCacheNoScreen = {0x00, 0x02, 0x04, 0x06, 0x08, 0x0A, ...}
C - - - - - 0x01D2D4 07:D2C4: A2 27     LDX #$27                                        ;
@bra_D2C6_skip:
C - - - - - 0x01D2D6 07:D2C6: 8E 31 06  STX vHighPpuAddress                             ; vHighPpuAddress <~ 0x23 or 0x27 (a shared address is $23C8 or $27C8)
C - - - - - 0x01D2D9 07:D2C9: 20 F7 D3  JSR sub_D3F7_get_background_screen_info_address ;
C - - - - - 0x01D2DC 07:D2CC: A0 02     LDY #$02                                        ; 3rd of 8 info bytes
C - - - - - 0x01D2DE 07:D2CE: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D2E0 07:D2D0: 85 02     STA ram_0002                                    ; low address
C - - - - - 0x01D2E2 07:D2D2: C8        INY                                             ; 4th of 8 info bytes
C - - - - - 0x01D2E3 07:D2D3: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D2E5 07:D2D5: 20 04 C5  JSR sub_C504_switch_prg_8000                    ; select MMC3 bank
C - - - - - 0x01D2E8 07:D2D8: 85 03     STA ram_0003                                    ; high address
C - - - - - 0x01D2EA 07:D2DA: A0 3F     LDY #$3F                                        ; set loop counter, !(BUG?) must be 0x38
@bra_D2DC_loop:                                                                         ; loop by y (64 times)
C - - - - - 0x01D2EC 07:D2DC: B1 02     LDA (ram_0002),Y                                ;
C - - - - - 0x01D2EE 07:D2DE: 99 33 06  STA vPpuBufferData,Y                            ; store a tile number X
C - - - - - 0x01D2F1 07:D2E1: 88        DEY                                             ; decrement loop counter
C - - - - - 0x01D2F2 07:D2E2: 10 F8     BPL @bra_D2DC_loop                              ; If Register Y < 0x80
C - - - - - 0x01D2F4 07:D2E4: 60        RTS                                             ;

; In: $0000 - PosY (in pixel units, e.g. vScreenChrPosY)
; In: $0001 - vLowPosX
; In: $0004 - vHighPosX
; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
loc_D2E5_get_collision_value:
sub_D2E5_get_collision_value:
C D 2 - - - 0x01D2F5 07:D2E5: 8A        TXA                ;
C - - - - - 0x01D2F6 07:D2E6: 48        PHA                ; store x
C - - - - - 0x01D2F7 07:D2E7: A5 01     LDA ram_0001       ;
C - - - - - 0x01D2F9 07:D2E9: 29 F0     AND #$F0           ;
C - - - - - 0x01D2FB 07:D2EB: 4A        LSR                ;
C - - - - - 0x01D2FC 07:D2EC: 85 04     STA ram_0004       ;
C - - - - - 0x01D2FE 07:D2EE: 4A        LSR                ; 
C - - - - - 0x01D2FF 07:D2EF: 18        CLC                ;
C - - - - - 0x01D300 07:D2F0: 65 04     ADC ram_0004       ;
C - - - - - 0x01D302 07:D2F2: 85 04     STA ram_0004       ;
C - - - - - 0x01D304 07:D2F4: A5 00     LDA ram_0000       ;
C - - - - - 0x01D306 07:D2F6: 38        SEC                ;
C - - - - - 0x01D307 07:D2F7: E9 30     SBC #$30           ;
C - - - - - 0x01D309 07:D2F9: B0 05     BCS bra_D300_check ; If vScreenChrPosY >= 0x30
C - - - - - 0x01D30B 07:D2FB: 68        PLA                ;
C - - - - - 0x01D30C 07:D2FC: AA        TAX                ; retrieve x (see D2E6)
C - - - - - 0x01D30D 07:D2FD: A9 00     LDA #$00           ; no collision
C - - - - - 0x01D30F 07:D2FF: 60        RTS                ;

; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; In: $0004 - {0x00, 0x0C, 0x18, 0x24, 0x30, 0x3C, 0x48, 0x54, 0x60, 0x6C, 0x78, 0x84, 0x90, 0x9C, 0xA8, 0xB4}
; In: Register A - vScreenChrPosY minus 0x30
; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
bra_D300_check:
C - - - - - 0x01D310 07:D300: 20 5F D0  JSR sub_accumulator_shift_right_by_4            ; get {0x00, 0x01, 0x02, ..., 0x0C}
C - - - - - 0x01D313 07:D303: 18        CLC                                             ;
C - - - - - 0x01D314 07:D304: 65 04     ADC ram_0004                                    ; get point(x, y)
C - - - - - 0x01D316 07:D306: 48        PHA                                             ; store A
C - - - - - 0x01D317 07:D307: 20 F7 D3  JSR sub_D3F7_get_background_screen_info_address ;
C - - - - - 0x01D31A 07:D30A: A0 00     LDY #$00                                        ; 1th of 8 info bytes
C - - - - - 0x01D31C 07:D30C: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D31E 07:D30E: 85 52     STA ram_0052                                    ; low address
C - - - - - 0x01D320 07:D310: C8        INY                                             ; 2th of 8 info bytes
C - - - - - 0x01D321 07:D311: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D323 07:D313: 20 04 C5  JSR sub_C504_switch_prg_8000                    ; select MMC3 bank
C - - - - - 0x01D326 07:D316: 85 53     STA ram_0053                                    ; high address
C - - - - - 0x01D328 07:D318: 68        PLA                                             ; retrieve A, point(x, y) ($D306)
C - - - - - 0x01D329 07:D319: A8        TAY                                             ;
C - - - - - 0x01D32A 07:D31A: B1 52     LDA (ram_0052),Y                                ; put a index of the metatiles
C - - - - - 0x01D32C 07:D31C: 48        PHA                                             ; store A
C - - - - - 0x01D32D 07:D31D: 20 45 D5  JSR sub_D545_get_bg_collision_address           ;
C - - - - - 0x01D330 07:D320: 68        PLA                                             ; retrieve A, a index of the metatiles ($D31C)
C - - - - - 0x01D331 07:D321: 0A        ASL                                             ; *2, because 2-nd row in the table with the collisions
C - - - - - 0x01D332 07:D322: A8        TAY                                             ; 1 of 2 bytes (a relative to offset)
C - - - - - 0x01D333 07:D323: 90 02     BCC @bra_D327_skip                              ; If an index * 2 < 0xFF
C - - - - - 0x01D335 07:D325: E6 0F     INC ram_000F                                    ; increment a high address (an offset)
@bra_D327_skip:
C - - - - - 0x01D337 07:D327: A5 00     LDA ram_0000                                    ; load Y-position
C - - - - - 0x01D339 07:D329: 29 08     AND #$08                                        ; 
C - - - - - 0x01D33B 07:D32B: D0 01     BNE @bra_D32E_skip                              ; If it isn't a Y-border of the screen block
C - - - - - 0x01D33D 07:D32D: C8        INY                                             ; 2 of 2 bytes (a relative to offset)
@bra_D32E_skip:
C - - - - - 0x01D33E 07:D32E: B1 0E     LDA (ram_000E),Y                                ; load a collision value
C - - - - - 0x01D340 07:D330: 85 04     STA ram_0004                                    ;
C - - - - - 0x01D342 07:D332: A5 01     LDA ram_0001                                    ; load X-position
C - - - - - 0x01D344 07:D334: 29 08     AND #$08                                        ;
C - - - - - 0x01D346 07:D336: F0 08     BEQ @bra_D340_skip                              ; If it is a X-border of the screen block
C - - - - - 0x01D348 07:D338: 46 04     LSR ram_0004                                    ;
C - - - - - 0x01D34A 07:D33A: 46 04     LSR ram_0004                                    ;
C - - - - - 0x01D34C 07:D33C: 46 04     LSR ram_0004                                    ;
C - - - - - 0x01D34E 07:D33E: 46 04     LSR ram_0004                                    ; gets high half-byte
@bra_D340_skip:
C - - - - - 0x01D350 07:D340: 68        PLA                                             ;
C - - - - - 0x01D351 07:D341: AA        TAX                                             ; retrieve x (see D2E6)
C - - - - - 0x01D352 07:D342: A5 04     LDA ram_0004                                    ;
C - - - - - 0x01D354 07:D344: 29 0F     AND #$0F                                        ; return a collision value
C - - - - - 0x01D356 07:D346: 60        RTS                                             ;

; Out: If flag Z = 0 then the landing is allow, 1 - otherwise.
sub_D347_check_landing_enemyA:
C - - - - - 0x01D357 07:D347: A5 5E     LDA vNoLevel                                    ;
C - - - - - 0x01D359 07:D349: C9 03     CMP #$03                                        ; CONSTANT - level 4 or level-racing
C - - - - - 0x01D35B 07:D34B: D0 03     BNE bra_D350_skip                               ; If vNoLevel != 0x03
C - - - - - 0x01D35D 07:D34D: A9 01     LDA #$01                                        ; no collisions
C - - - - - 0x01D35F 07:D34F: 60        RTS                                             ;

bra_D350_skip:
C - - - - - 0x01D360 07:D350: A9 F8     LDA #$F8                                        ; prepare an input parameter
C - - - - - 0x01D362 07:D352: 20 F0 D7  JSR sub_D7F0_enemyA_collision_by_shift_posY     ;
C - - - - - 0x01D365 07:D355: C9 01     CMP #$01                                        ; CONSTANT - a strong collision
C - - - - - 0x01D367 07:D357: 60        RTS                                             ;

; In: $0000 - EnemyAPosY
; Out: Register A - a strong collision or left + right collision value
sub_D358_check_enemyA_collision_by_Y:
C - - - - - 0x01D368 07:D358: 20 3F D9  JSR sub_D93F_init_short_enemyA_positions ;
C - - - - - 0x01D36B 07:D35B: 4C 70 D3  JMP loc_D370_left_right_collision        ;

; In: $0000 - EnemyAPosY
; Out: Register A - a strong collision or left + right collision value
sub_D35E_check_enemyB_collision_by_Y:
C - - - - - 0x01D36E 07:D35E: 20 52 D9  JSR sub_D952_init_short_enemyB_positions ;
C - - - - - 0x01D371 07:D361: 4C 70 D3  JMP loc_D370_left_right_collision        ;

C - - - - - 0x01D374 07:D364: 20 62 D9  JSR sub_D962_init_short_character_positions ; !(UNUSED)
C - - - - - 0x01D377 07:D367: 4C 70 D3  JMP loc_D370_left_right_collision           ; !(UNUSED)

; In: $0000 - ChrPosY (in vScreenChrPosY units)
; Out: Register A - a strong collision or left + right collision value
sub_D36A_short_left_right_collision:
loc_D36A_short_left_right_collision:
C D 2 - - - 0x01D37A 07:D36A: 20 6E AD  JSR sub_AD6E_resolve_lift_or_platform    ;
C - - - - - 0x01D37D 07:D36D: 20 74 D9  JSR sub_D974_init_short_chr_positions    ;
; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; Out: Register A - a strong collision or left + right collision value
loc_D370_left_right_collision:
sub_D370_left_right_collision:
C D 2 - - - 0x01D380 07:D370: A9 04     LDA #$04                                 ; increment by x (+4)
C - - - - - 0x01D382 07:D372: 20 89 D3  JSR sub_D389_collision_by_increment_posX ;
C - - - - - 0x01D385 07:D375: 48        PHA                                      ; store a right collision value
C - - - - - 0x01D386 07:D376: C9 01     CMP #$01                                 ; CONSTANT - a strong collision
C - - - - - 0x01D388 07:D378: D0 02     BNE bra_D37C_left                        ; If a strong collision no exist
C - - - - - 0x01D38A 07:D37A: 68        PLA                                      ; retrieve a right collision value ($D375)
C - - - - - 0x01D38B 07:D37B: 60        RTS                                      ;

bra_D37C_left:
C - - - - - 0x01D38C 07:D37C: A9 F8     LDA #$F8                                 ; increment by x (-8 instead of -4, because see $0001 was changed)
C - - - - - 0x01D38E 07:D37E: 20 9F D3  JSR sub_D39F_collision_by_increment_posX ;
C - - - - - 0x01D391 07:D381: 85 01     STA ram_0001                             ; store a left collision value
C - - - - - 0x01D393 07:D383: 68        PLA                                      ; retrieve a right collision value ($D375)
C - - - - - 0x01D394 07:D384: 85 02     STA ram_0002                             ; store a right collision value
C - - - - - 0x01D396 07:D386: 05 01     ORA ram_0001                             ;
C - - - - - 0x01D398 07:D388: 60        RTS                                      ;

; In: Register A - increment by x
; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
sub_D389_collision_by_increment_posX:
C - - - - - 0x01D399 07:D389: 18        CLC                              ;
C - - - - - 0x01D39A 07:D38A: 65 01     ADC ram_0001                     ; 
C - - - - - 0x01D39C 07:D38C: 85 01     STA ram_0001                     ;
C - - - - - 0x01D39E 07:D38E: A5 4D     LDA vCacheNoScreen               ;
C - - - - - 0x01D3A0 07:D390: 69 00     ADC #$00                         ;
C - - - - - 0x01D3A2 07:D392: 85 4D     STA vCacheNoScreen               ; +1, if A + $0001 caused an overflow
C - - - - - 0x01D3A4 07:D394: 4C E5 D2  JMP loc_D2E5_get_collision_value ;


; In: Register A - increment by x
; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; Out: Register A - a collision value
sub_D397_right_collision_by_inc_posX:
loc_D397_right_collision_by_inc_posX:
C D 2 - - - 0x01D3A7 07:D397: 20 89 D3  JSR sub_D389_collision_by_increment_posX  ;
C - - - - - 0x01D3AA 07:D39A: C9 01     CMP #$01                                  ; CONSTANT - a strong collision
C - - - - - 0x01D3AC 07:D39C: D0 17     BNE bra_D3B5_check_walls                  ; If a strong collision no exist
C - - - - - 0x01D3AE 07:D39E: 60        RTS                                       ;

; In: Register A - increment by x
; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
sub_D39F_collision_by_increment_posX:
C - - - - - 0x01D3AF 07:D39F: 18        CLC                              ;
C - - - - - 0x01D3B0 07:D3A0: 65 01     ADC ram_0001                     ;
C - - - - - 0x01D3B2 07:D3A2: 85 01     STA ram_0001                     ;
C - - - - - 0x01D3B4 07:D3A4: A5 4D     LDA vCacheNoScreen               ;
C - - - - - 0x01D3B6 07:D3A6: 69 FF     ADC #$FF                         ;
C - - - - - 0x01D3B8 07:D3A8: 85 4D     STA vCacheNoScreen               ; -1, if A + $0001 doesn't cause an overflow
C - - - - - 0x01D3BA 07:D3AA: 4C E5 D2  JMP loc_D2E5_get_collision_value ;

; In: Register A - increment by x
; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowChrPosX
; Out: Zero flag - ???, !(BUG?) for the water room
; Out: Register A - 0x00 - no collisions, 0x01 - a strong collision
sub_D3AD_left_collision_by_inc_posX:
loc_D3AD_left_collision_by_inc_posX:
C D 2 - - - 0x01D3BD 07:D3AD: 20 9F D3  JSR sub_D39F_collision_by_increment_posX  ;
C - - - - - 0x01D3C0 07:D3B0: C9 01     CMP #$01                                  ; CONSTANT - a strong collision
C - - - - - 0x01D3C2 07:D3B2: D0 01     BNE bra_D3B5_check_walls                  ; If a strong collision no exist
C - - - - - 0x01D3C4 07:D3B4: 60        RTS                                       ;

; In: $0000 - ChrPosY (in vScreenChrPosY units)
; In: $0001 - vLowPosX
bra_D3B5_check_walls:
C - - - - - 0x01D3C5 07:D3B5: 48        PHA                       ; store A
C - - - - - 0x01D3C6 07:D3B6: A5 5E     LDA vNoLevel              ;
C - - - - - 0x01D3C8 07:D3B8: C9 03     CMP #$03                  ; CONSTANT - level 4 or level-racing
C - - - - - 0x01D3CA 07:D3BA: D0 35     BNE bra_D3F1_return       ; If vNoLevel != 0x03
C - - - - - 0x01D3CC 07:D3BC: AD 01 03  LDA vEnemyB               ;
C - - - - - 0x01D3CF 07:D3BF: C9 30     CMP #$30                  ; CONSTANT - Wall #1
C - - - - - 0x01D3D1 07:D3C1: F0 04     BEQ @bra_D3C7_wall        ; If vEnemyB == 0x30
C - - - - - 0x01D3D3 07:D3C3: C9 31     CMP #$31                  ; CONSTANT - Wall #2
C - - - - - 0x01D3D5 07:D3C5: D0 2A     BNE bra_D3F1_return       ; If vEnemyB != 0x31
@bra_D3C7_wall:
C - - - - - 0x01D3D7 07:D3C7: A0 01     LDY #$01                  ; set loop counter
@bra_D3C9_loop:                                                   ; loop by y (2 times)
C - - - - - 0x01D3D9 07:D3C9: B9 5C 03  LDA vEnemyBStatus,Y       ;
C - - - - - 0x01D3DC 07:D3CC: 10 20     BPL @bra_D3EE_next        ; If the status isn't used
C - - - - - 0x01D3DE 07:D3CE: A5 00     LDA ram_0000              ;
C - - - - - 0x01D3E0 07:D3D0: C9 8F     CMP #$8F                  ; CONSTANT - the top bound of the area for walls
C - - - - - 0x01D3E2 07:D3D2: 90 1A     BCC @bra_D3EE_next        ; If ChrPosY < 0x8F
C - - - - - 0x01D3E4 07:D3D4: C9 C0     CMP #$C0                  ; CONSTANT - the bottom bound of the area for walls
C - - - - - 0x01D3E6 07:D3D6: B0 16     BCS @bra_D3EE_next        ; If ChrPosY >= 0xC0
C - - - - - 0x01D3E8 07:D3D8: A5 4D     LDA vCacheNoScreen        ;
C - - - - - 0x01D3EA 07:D3DA: D9 7A 03  CMP vEnemyBPosXHigh,Y     ;
C - - - - - 0x01D3ED 07:D3DD: D0 0F     BNE @bra_D3EE_next        ; If vCacheNoScreen != high Y-position
C - - - - - 0x01D3EF 07:D3DF: A5 01     LDA ram_0001              ;
C - - - - - 0x01D3F1 07:D3E1: 38        SEC                       ;
C - - - - - 0x01D3F2 07:D3E2: F9 74 03  SBC vEnemyBPosXLow,Y      ;
C - - - - - 0x01D3F5 07:D3E5: B0 03     BCS @bra_D3EA_positive    ; If vLowPosX - vEnemyPosXLow >= 0x00
C - - - - - 0x01D3F7 07:D3E7: 20 73 D0  JSR sub_D073_invert_sign  ;
@bra_D3EA_positive:
C - - - - - 0x01D3FA 07:D3EA: C9 04     CMP #$04                  ; CONSTANT - allowable tolerance for walls
C - - - - - 0x01D3FC 07:D3EC: 90 05     BCC bra_D3F3_collision    ; If |vLowPosX - vEnemyPosXLow| < 0x04
@bra_D3EE_next:
C - - - - - 0x01D3FE 07:D3EE: 88        DEY                       ; decrement loop counter
C - - - - - 0x01D3FF 07:D3EF: 10 D8     BPL @bra_D3C9_loop        ; If Register Y >= 0x00
bra_D3F1_return:
C - - - - - 0x01D401 07:D3F1: 68        PLA                       ; retrieve A ($D3B5)
C - - - - - 0x01D402 07:D3F2: 60        RTS                       ;

bra_D3F3_collision:
C - - - - - 0x01D403 07:D3F3: 68        PLA                       ; retrieve A ($D3B5)
C - - - - - 0x01D404 07:D3F4: A9 01     LDA #$01                  ; set a strong collision
C - - - - - 0x01D406 07:D3F6: 60        RTS                       ;

; There PRG-bank switching happens 
; Out: the CPU-address in [$004E-#004F]
; Out: Register Y - vCacheRam_11
sub_D3F7_get_background_screen_info_address:
C - - - - - 0x01D407 07:D3F7: A9 00     LDA #$00                         ; switch prg: bank 00 (page 1)
C - - - - - 0x01D409 07:D3F9: 20 04 C5  JSR sub_C504_switch_prg_8000     ;
C - - - - - 0x01D40C 07:D3FC: 98        TYA                              ; vCacheRam_11 to A
C - - - - - 0x01D40D 07:D3FD: 48        PHA                              ; store a
C - - - - - 0x01D40E 07:D3FE: A5 46     LDA vNoRoom                      ;
C - - - - - 0x01D410 07:D400: 0A        ASL                              ; *2
C - - - - - 0x01D411 07:D401: A8        TAY                              ;
C - - - - - 0x01D412 07:D402: B9 80 84  LDA tbl_background_screens,Y     ;
C - - - - - 0x01D415 07:D405: 85 0C     STA ram_000C                     ;
C - - - - - 0x01D417 07:D407: B9 81 84  LDA tbl_background_screens + 1,Y ;
C - - - - - 0x01D41A 07:D40A: 29 1F     AND #$1F                         ;
C - - - - - 0x01D41C 07:D40C: 09 80     ORA #$80                         ;
C - - - - - 0x01D41E 07:D40E: 85 0D     STA ram_000D                     ;
C - - - - - 0x01D420 07:D410: A4 4D     LDY vCacheNoScreen               ;
C - - - - - 0x01D422 07:D412: B1 0C     LDA (ram_000C),Y                 ;
C - - - - - 0x01D424 07:D414: 85 4E     STA vBackgroundScreenInfo        ;
C - - - - - 0x01D426 07:D416: A9 00     LDA #$00                         ;
C - - - - - 0x01D428 07:D418: 06 4E     ASL vBackgroundScreenInfo        ;
C - - - - - 0x01D42A 07:D41A: 2A        ROL                              ;
C - - - - - 0x01D42B 07:D41B: 06 4E     ASL vBackgroundScreenInfo        ;
C - - - - - 0x01D42D 07:D41D: 2A        ROL                              ;
C - - - - - 0x01D42E 07:D41E: 06 4E     ASL vBackgroundScreenInfo        ;
C - - - - - 0x01D430 07:D420: 2A        ROL                              ;
C - - - - - 0x01D431 07:D421: 09 80     ORA #$80                         ;
C - - - - - 0x01D433 07:D423: 85 4F     STA vHighBackgroundScreenInfo    ; 0x80, 0x81, 0x83 or 0x87 (depends on the first three bits vBackgroundScreenInfo)
C - - - - - 0x01D435 07:D425: 68        PLA                              ; retrieve a ($D3FD)
C - - - - - 0x01D436 07:D426: A8        TAY                              ;
C - - - - - 0x01D437 07:D427: 60        RTS                              ;

; Return the CPU-address in [$0000-$0001]
sub_D428_get_addr_background_palette:
C - - - - - 0x01D438 07:D428: A9 06     LDA #$06                          ;
C - - - - - 0x01D43A 07:D42A: 8D 00 80  STA MMC3_Bank_select              ;
C - - - - - 0x01D43D 07:D42D: A9 03     LDA #$03                          ;
C - - - - - 0x01D43F 07:D42F: 8D 01 80  STA MMC3_Bank_data                ; switch bank 01 (page 2) in $8000-$9FFF
C - - - - - 0x01D442 07:D432: A5 46     LDA vNoRoom                       ;
C - - - - - 0x01D444 07:D434: 0A        ASL                               ; multiply by 2
C - - - - - 0x01D445 07:D435: A8        TAY                               ;
C - - - - - 0x01D446 07:D436: B9 FC 90  LDA tbl_background_palette,Y      ;
C - - - - - 0x01D449 07:D439: 85 00     STA ram_0000                      ;
C - - - - - 0x01D44B 07:D43B: B9 FD 90  LDA tbl_background_palette + 1,Y  ;
C - - - - - 0x01D44E 07:D43E: 29 1F     AND #$1F                          ;
C - - - - - 0x01D450 07:D440: 09 80     ORA #$80                          ; transfer 0x7XXX -> 0x9XXX
C - - - - - 0x01D452 07:D442: 85 01     STA ram_0001                      ;
C - - - - - 0x01D454 07:D444: 60        RTS                               ;

loc_D445_load_background_palette:
sub_D445_load_background_palette:
C D 2 - - - 0x01D455 07:D445: 20 28 D4  JSR sub_D428_get_addr_background_palette ; get address in $0000-$0001
C - - - - - 0x01D458 07:D448: A0 0F     LDY #$0F                                 ; set loop counter
@bra_D44A_loop:                                                                  ; loop by y
C - - - - - 0x01D45A 07:D44A: B1 00     LDA (ram_0000),Y                         ;
C - - - - - 0x01D45C 07:D44C: 99 00 06  STA vCachePalette,Y                      ;
C - - - - - 0x01D45F 07:D44F: 88        DEY                                      ; decrement y
C - - - - - 0x01D460 07:D450: 10 F8     BPL @bra_D44A_loop                       ; In Register Y >= 0x00 && Y < 0x80
C - - - - - 0x01D462 07:D452: 60        RTS                                      ;

sub_D453_prepare_gaming_environment:
C - - - - - 0x01D463 07:D453: 20 45 D4  JSR sub_D445_load_background_palette            ;
; fill in the missing palette values [0x10-0x13] or [0x10-0x1B]
C - - - - - 0x01D466 07:D456: A0 13     LDY #$13                                        ; set loop counter
C - - - - - 0x01D468 07:D458: A5 46     LDA vNoRoom                                     ;
C - - - - - 0x01D46A 07:D45A: C9 19     CMP #$19                                        ; CONSTANT - level racing
C - - - - - 0x01D46C 07:D45C: D0 02     BNE @bra_D460_loop                              ; If vNoRoom != 0x19
C - - - - - 0x01D46E 07:D45E: A0 1B     LDY #$1B                                        ; set loop counter
@bra_D460_loop:                                                                         ; loop by x
C - - - - - 0x01D470 07:D460: B1 00     LDA (ram_0000),Y                                ;
C - - - - - 0x01D472 07:D462: 99 00 06  STA vCachePalette,Y                             ;
C - - - - - 0x01D475 07:D465: 88        DEY                                             ; decrement x
C - - - - - 0x01D476 07:D466: C0 0F     CPY #$0F                                        ;
C - - - - - 0x01D478 07:D468: D0 F6     BNE @bra_D460_loop                              ; If Register Y != 0x0F
C - - - - - 0x01D47A 07:D46A: A5 4B     LDA vHighViewPortPosX                           ;
C - - - - - 0x01D47C 07:D46C: 85 4D     STA vCacheNoScreen                              ; prepare a value for next function
C - - - - - 0x01D47E 07:D46E: 20 F7 D3  JSR sub_D3F7_get_background_screen_info_address ;
C - - - - - 0x01D481 07:D471: A0 06     LDY #$06                                        ; 7th of 8 info bytes
C - - - - - 0x01D483 07:D473: B1 4E     LDA (vBackgroundScreenInfo),Y                   ;
C - - - - - 0x01D485 07:D475: 85 02     STA ram_0002                                    ; low address
C - - - - - 0x01D487 07:D477: C8        INY                                             ; 8th of 8 info bytes
C - - - - - 0x01D488 07:D478: B1 4E     LDA (vBackgroundScreenInfo),Y                   ; 
C - - - - - 0x01D48A 07:D47A: 29 1F     AND #$1F                                        ;
C - - - - - 0x01D48C 07:D47C: 09 80     ORA #$80                                        ;
C - - - - - 0x01D48E 07:D47E: 85 03     STA ram_0003                                    ; high address
C - - - - - 0x01D490 07:D480: A0 05     LDY #$05                                        ; set loop counter
@bra_D482_loop:                                                                         ; loop by y (6 times)
C - - - - - 0x01D492 07:D482: B1 02     LDA (ram_0002),Y                                ; 
C - - - - - 0x01D494 07:D484: 99 AF 06  STA vCacheChrBankSelect,Y                       ; prepares a cache for all CHR banks
C - - - - - 0x01D497 07:D487: 88        DEY                                             ; decrement y
C - - - - - 0x01D498 07:D488: 10 F8     BPL @bra_D482_loop                              ; If Register Y < 0x80
C - - - - - 0x01D49A 07:D48A: E6 4B     INC vHighViewPortPosX                           ;
C - - - - - 0x01D49C 07:D48C: E6 4B     INC vHighViewPortPosX                           ; scrolls forward 2 screens from the end 
C - - - - - 0x01D49E 07:D48E: A5 27     LDA vLowViewPortPosX                            ;
C - - - - - 0x01D4A0 07:D490: 18        CLC                                             ;
C - - - - - 0x01D4A1 07:D491: 69 44     ADC #$44                                        ; scrolls forward 44 pixels for low X-position (scroll border - 0x40)
C - - - - - 0x01D4A3 07:D493: 85 27     STA vLowViewPortPosX                            ;
C - - - - - 0x01D4A5 07:D495: 90 02     BCC @bra_D499_skip                              ; If vLowViewPortPosX isn't overflow
C - - - - - 0x01D4A7 07:D497: E6 4B     INC vHighViewPortPosX                           ;
@bra_D499_skip:
C - - - - - 0x01D4A9 07:D499: A5 4B     LDA vHighViewPortPosX                           ; $2000 - for 0,2,4,6 ... screens, $2400 - for 1,3,5,7 ... screens
C - - - - - 0x01D4AB 07:D49B: 29 01     AND #$01                                        ; 
C - - - - - 0x01D4AD 07:D49D: 09 08     ORA #$08                                        ; Sprite pattern table address for 8x8 sprites - $1000 
C - - - - - 0x01D4AF 07:D49F: 85 26     STA vPpuCtrlSettings                            ;
C - - - - - 0x01D4B1 07:D4A1: A9 91     LDA #$91                                        ; set loop counter
bra_D4A3_loop:                                                                          ; loop by x (145 times)
C - - - - - 0x01D4B3 07:D4A3: 48        PHA                                             ; store x
C - - - - - 0x01D4B4 07:D4A4: A9 40     LDA #$40                                        ; CONSTANT - to left
C - - - - - 0x01D4B6 07:D4A6: 85 48     STA vScrollDirection                            ;
C - - - - - 0x01D4B8 07:D4A8: 20 95 D1  JSR sub_D195_scroll_to                          ;
C - - - - - 0x01D4BB 07:D4AB: 20 95 D1  JSR sub_D195_scroll_to                          ;
C - - - - - 0x01D4BE 07:D4AE: 20 95 D1  JSR sub_D195_scroll_to                          ;
C - - - - - 0x01D4C1 07:D4B1: 20 95 D1  JSR sub_D195_scroll_to                          ; 145 * 4 = 580 (or 0x244 = 0x80 * 4 + 0x44), i.e 2.5 screen
C - - - - - 0x01D4C4 07:D4B4: 20 7F F0  JSR sub_F07F_prepare_enemy_subroutine           ;
C - - - - - 0x01D4C7 07:D4B7: AD 31 06  LDA vHighPpuAddress                             ;
C - - - - - 0x01D4CA 07:D4BA: F0 03     BEQ bra_D4BF_skip                               ; If high ppu address == 0x00
C - - - - - 0x01D4CC 07:D4BC: 20 1B D1  JSR sub_D11B_shared_render                      ;
bra_D4BF_skip:
C - - - - - 0x01D4CF 07:D4BF: 68        PLA                                             ;
C - - - - - 0x01D4D0 07:D4C0: AA        TAX                                             ; retrieve x ($D4A3)
C - - - - - 0x01D4D1 07:D4C1: CA        DEX                                             ; decrement x
C - - - - - 0x01D4D2 07:D4C2: 8A        TXA                                             ; 
C - - - - - 0x01D4D3 07:D4C3: D0 DE     BNE bra_D4A3_loop                               ; If Register X != 0
C - - - - - 0x01D4D5 07:D4C5: 20 46 EF  JSR sub_EF46_switch_bank_4_p1                   ;
C - - - - - 0x01D4D8 07:D4C8: A5 46     LDA vNoRoom                                     ;
C - - - - - 0x01D4DA 07:D4CA: 0A        ASL                                             ; *2
C - - - - - 0x01D4DB 07:D4CB: A8        TAY                                             ;
C - - - - - 0x01D4DC 07:D4CC: B9 9A 81  LDA tbl_ptr_corridors,Y                         ;
C - - - - - 0x01D4DF 07:D4CF: 85 BD     STA vCorridorAddr                               ; Low address
C - - - - - 0x01D4E1 07:D4D1: B9 9B 81  LDA tbl_ptr_corridors + 1,Y                     ;
C - - - - - 0x01D4E4 07:D4D4: 85 BE     STA vHighCorridorAddr                           ; High address
C - - - - - 0x01D4E6 07:D4D6: B9 96 82  LDA tbl_ptr_destructible_walls,Y                ;
C - - - - - 0x01D4E9 07:D4D9: 85 BF     STA vDestrWallAddr                              ; Low address
C - - - - - 0x01D4EB 07:D4DB: B9 97 82  LDA tbl_ptr_destructible_walls + 1,Y            ;
C - - - - - 0x01D4EE 07:D4DE: 85 C0     STA vHighDestrWallAddr                          ; High address
C - - - - - 0x01D4F0 07:D4E0: A5 B6     LDA vCurrentUniqueRoom                          ;
C - - - - - 0x01D4F2 07:D4E2: 29 33     AND #$33                                        ;
C - - - - - 0x01D4F4 07:D4E4: C9 12     CMP #$12                                        ; CONSTANT - The briefcase room
C - - - - - 0x01D4F6 07:D4E6: D0 03     BNE bra_D4EB_skip                               ; If the current room isn't the briefcase room
C - - - - - 0x01D4F8 07:D4E8: 20 8C B1  JSR sub_B18C_prepare_briefcases_by_index        ;
bra_D4EB_skip:
C - - - - - 0x01D4FB 07:D4EB: A5 3B     LDA vSharedGameStatus                           ;
C - - - - - 0x01D4FD 07:D4ED: 6A        ROR                                             ;
C - - - - - 0x01D4FE 07:D4EE: 90 03     BCC bra_D4F3_wait                               ; Branch if no exist 'A screen with the message'
C - - - - - 0x01D500 07:D4F0: 20 FB D4  JSR sub_D4FB_render_empty_message_bar           ;
bra_D4F3_wait:
sub_D4F3_update_palette_with_wait:
C - - - - - 0x01D503 07:D4F3: AD 02 20  LDA PPU_STATUS                                  ;
C - - - - - 0x01D506 07:D4F6: 10 FB     BPL bra_D4F3_wait                               ; wait for vblank
C - - - - - 0x01D508 07:D4F8: 4C 71 C3  JMP loc_C371_update_palette                     ;

sub_D4FB_render_empty_message_bar:
C - - - - - 0x01D50B 07:D4FB: A5 B7     LDA vRoomExtraInfo                 ;
C - - - - - 0x01D50D 07:D4FD: 85 B8     STA vRoomExtraInfoCache            ; see $B3D6, 6 bank, 2 page
C - - - - - 0x01D50F 07:D4FF: AD 02 20  LDA PPU_STATUS                     ; read PPU status to reset the high/low latch
C - - - - - 0x01D512 07:D502: A9 20     LDA #$20                           ; 
C - - - - - 0x01D514 07:D504: 8D 06 20  STA PPU_ADDRESS                    ;
C - - - - - 0x01D517 07:D507: A9 00     LDA #$00                           ; 
C - - - - - 0x01D519 07:D509: 8D 06 20  STA PPU_ADDRESS                    ; PPU address is 0x2000
C - - - - - 0x01D51C 07:D50C: A8        TAY                                ; set loop counter (y=0)
C - - - - - 0x01D51D 07:D50D: A9 00     LDA #$00                           ; set assigned value, CONSTANT - A black tile 
@bra_D50F_loop:                                                            ; loop by y
C - - - - - 0x01D51F 07:D50F: 8D 07 20  STA PPU_DATA                       ; [$2000-$20FF] - in a black tile (a canvas of the message panel)
C - - - - - 0x01D522 07:D512: C8        INY                                ; increment Y
C - - - - - 0x01D523 07:D513: D0 FA     BNE @bra_D50F_loop                 ; If Register Y != 0
C - - - - - 0x01D525 07:D515: AD 02 20  LDA PPU_STATUS                     ; read PPU status to reset the high/low latch
C - - - - - 0x01D528 07:D518: A9 20     LDA #$20                           ;
C - - - - - 0x01D52A 07:D51A: 8D 06 20  STA PPU_ADDRESS                    ;
C - - - - - 0x01D52D 07:D51D: A9 E0     LDA #$E0                           ;
C - - - - - 0x01D52F 07:D51F: 8D 06 20  STA PPU_ADDRESS                    ; PPU address is 0x20E0
C - - - - - 0x01D532 07:D522: A9 01     LDA #$01                           ; CONSTANT - A white tile (in another palette a tile is black)
C - - - - - 0x01D534 07:D524: 8D 07 20  STA PPU_DATA                       ; $20E0 - in a white tile
C - - - - - 0x01D537 07:D527: 8D 07 20  STA PPU_DATA                       ; $20E1 - in a white tile
C - - - - - 0x01D53A 07:D52A: A9 23     LDA #$23                           ;
C - - - - - 0x01D53C 07:D52C: 8D 06 20  STA PPU_ADDRESS                    ;
C - - - - - 0x01D53F 07:D52F: A9 C0     LDA #$C0                           ;
C - - - - - 0x01D541 07:D531: 8D 06 20  STA PPU_ADDRESS                    ; PPU address is 0x23C0
C - - - - - 0x01D544 07:D534: A2 00     LDX #$00                           ; set loop counter
@bra_D536_loop:                                                            ; loop by X (16 times)
C - - - - - 0x01D546 07:D536: BD BE 85  LDA tbl_message_bar_bottom_attrs,X ;
C - - - - - 0x01D549 07:D539: 8D 07 20  STA PPU_DATA                       ; $23C0-$23D0 by the table with attributes
C - - - - - 0x01D54C 07:D53C: E8        INX                                ; increment X
C - - - - - 0x01D54D 07:D53D: E0 10     CPX #$10                           ;
C - - - - - 0x01D54F 07:D53F: D0 F5     BNE @bra_D536_loop                 ; If Register X != 0x10 (a loop condition)
C - - - - - 0x01D551 07:D541: 60        RTS                                ;

C - - - - - 0x01D552 07:D542: 09 80     ORA #$80                           ; !(UNUSED)
C - - - - - 0x01D554 07:D544: 60        RTS                                ; !(UNUSED)

; Out: the CPU-address in [0x000E-0x000F]
sub_D545_get_bg_collision_address:
C - - - - - 0x01D555 07:D545: A9 06     LDA #$06                             ;
C - - - - - 0x01D557 07:D547: 8D 00 80  STA MMC3_Bank_select                 ;
C - - - - - 0x01D55A 07:D54A: A9 03     LDA #$03                             ;
C - - - - - 0x01D55C 07:D54C: 8D 01 80  STA MMC3_Bank_data                   ; switch bank 01, page 2 in 0x8000-09FFF
C - - - - - 0x01D55F 07:D54F: A5 46     LDA vNoRoom                          ;
C - - - - - 0x01D561 07:D551: 0A        ASL                                  ; *2, each row contains 2 bytes in the table
C - - - - - 0x01D562 07:D552: AA        TAX                                  ;
C - - - - - 0x01D563 07:D553: BD 00 90  LDA tbl_background_collisions,X      ;
C - - - - - 0x01D566 07:D556: 85 0E     STA ram_000E                         ; Low address
C - - - - - 0x01D568 07:D558: BD 01 90  LDA tbl_background_collisions + 1,X  ;
C - - - - - 0x01D56B 07:D55B: 29 1F     AND #$1F                             ;
C - - - - - 0x01D56D 07:D55D: 09 80     ORA #$80                             ;
C - - - - - 0x01D56F 07:D55F: 85 0F     STA ram_000F                         ; High address
C - - - - - 0x01D571 07:D561: 60        RTS                                  ;

; Out: carry flag (analog return true or false):
; 1, if the character got damage
; 0, otherwise.
sub_D562_has_character_damage:
loc_D562_has_character_damage:
C D 2 - - - 0x01D572 07:D562: A5 32     LDA vResistantToDamageCounter ;
C - - - - - 0x01D574 07:D564: D0 06     BNE bra_D56C_return_false     ; If character is resistant to damage
C - - - - - 0x01D576 07:D566: A5 6C     LDA vChrStatus                ;
C - - - - - 0x01D578 07:D568: 29 A8     AND #$A8                      ; CONSTANT - the character isn't controllable (see vChrStatus, flags X Z K)
C - - - - - 0x01D57A 07:D56A: F0 02     BEQ bra_D56E_skip             ; If the character is controllable
bra_D56C_return_false:
C - - - - - 0x01D57C 07:D56C: 18        CLC                           ; return false
C - - - - - 0x01D57D 07:D56D: 60        RTS                           ; 

bra_D56E_skip:
C - - - - - 0x01D57E 07:D56E: A5 3A     LDA vDamageStatus                            ;
C - - - - - 0x01D580 07:D570: 30 FA     BMI bra_D56C_return_false                    ; If the character isn't getting damage
C - - - - - 0x01D582 07:D572: 20 42 D6  JSR sub_D642_have_intersect_with_character   ;
C - - - - - 0x01D585 07:D575: 90 F5     BCC bra_D56C_return_false                    ;
C - - - - - 0x01D587 07:D577: A5 46     LDA vNoRoom                                  ;
C - - - - - 0x01D589 07:D579: C9 19     CMP #$19                                     ; CONSTANT - level racing
C - - - - - 0x01D58B 07:D57B: F0 1E     BEQ @bra_D59B_skip                           ; If vNoRoom is the level racing
C - - - - - 0x01D58D 07:D57D: 20 57 DF  JSR sub_DF57_get_current_character           ;
C - - - - - 0x01D590 07:D580: D0 19     BNE @bra_D59B_skip                           ; If the current character isn't Lupin
C - - - - - 0x01D592 07:D582: A9 60     LDA #$60                                     ; CONSTANT - time of the flying after getting damage
C - - - - - 0x01D594 07:D584: 85 2E     STA vCorridorCounter                         ;
C - - - - - 0x01D596 07:D586: A5 6D     LDA vMovableChrStatus                        ;
C - - - - - 0x01D598 07:D588: 30 11     BMI @bra_D59B_skip                           ; If 'the character is moving in the water'
C - - - - - 0x01D59A 07:D58A: 20 EE CD  JSR sub_CDEE_deactivate_activable_items      ;
C - - - - - 0x01D59D 07:D58D: AD 07 02  LDA v_bullet_proof_vest_item                 ;
C - - - - - 0x01D5A0 07:D590: F0 09     BEQ @bra_D59B_skip                           ; If vBulletProofVestItem = 0x00
C - - - - - 0x01D5A2 07:D592: A5 3A     LDA vDamageStatus                            ;
C - - - - - 0x01D5A4 07:D594: 09 40     ORA #$40                                     ; CONSTANT - The character got damage with a non-zero bullet proof vest item
C - - - - - 0x01D5A6 07:D596: 85 3A     STA vDamageStatus                            ;
C - - - - - 0x01D5A8 07:D598: 20 0D CD  JSR sub_CD0D_use_bullet_proof_vest           ;
@bra_D59B_skip:
C - - - - - 0x01D5AB 07:D59B: A5 6C     LDA vChrStatus                               ;
C - - - - - 0x01D5AD 07:D59D: 29 81     AND #$81                                     ; clear Y Z W K L M flags (see vChrStatus)
C - - - - - 0x01D5AF 07:D59F: 09 18     ORA #$18                                     ; CONSTANT - the character is flying after damage
C - - - - - 0x01D5B1 07:D5A1: 85 6C     STA vChrStatus                               ;
C - - - - - 0x01D5B3 07:D5A3: A9 08     LDA #$08                                     ; 
C - - - - - 0x01D5B5 07:D5A5: 85 6F     STA vJumpCounter                             ; initializes a jump counter
C - - - - - 0x01D5B7 07:D5A7: A9 03     LDA #$03                                     ; CONSTANT - jump by side
C - - - - - 0x01D5B9 07:D5A9: 85 6E     STA vJumpType                                ;
C - - - - - 0x01D5BB 07:D5AB: A9 06     LDA #$06                                     ;
C - - - - - 0x01D5BD 07:D5AD: 85 71     STA vVelocity                                ; initializes a velocity
C - - - - - 0x01D5BF 07:D5AF: A9 12     LDA #$12                                     ; the sound of the damage
C - - - - - 0x01D5C1 07:D5B1: 20 20 C4  JSR sub_C420_add_sound_effect                ;
C - - - - - 0x01D5C4 07:D5B4: 38        SEC                                          ; return true
C - - - - - 0x01D5C5 07:D5B5: 60        RTS                                          ;

; In: Register X - the number of the bullet (0, 1, 2, 3 or 4)
; Out: the carry status (analog return true or false)
; 1, if the hitboxes are intersected
; 0, otherwise.
sub_D5B6_have_intersect_bullet:
C - - - - - 0x01D5C6 07:D5B6: B5 8F     LDA vBulletStatus,X                  ;
C - - - - - 0x01D5C8 07:D5B8: 10 B2     BPL bra_D56C_return_false            ; If the current bullet isn't activated
C - - - - - 0x01D5CA 07:D5BA: B5 80     LDA vBulletPosY,X                    ;
C - - - - - 0x01D5CC 07:D5BC: 18        CLC                                  ;
C - - - - - 0x01D5CD 07:D5BD: 69 02     ADC #$02                             ;
C - - - - - 0x01D5CF 07:D5BF: 85 B1     STA vTmpHitBoxY                      ; <~ vBulletPosY - 2
C - - - - - 0x01D5D1 07:D5C1: B5 7B     LDA vBulletPosX,X                    ;
C - - - - - 0x01D5D3 07:D5C3: 85 B2     STA vTmpHitBoxX                      ; <~ vBulletPosX
C - - - - - 0x01D5D5 07:D5C5: A9 04     LDA #$04                             ;
C - - - - - 0x01D5D7 07:D5C7: 85 B3     STA vTmpHitBoxH                      ;
C - - - - - 0x01D5D9 07:D5C9: A9 01     LDA #$01                             ;
C - - - - - 0x01D5DB 07:D5CB: 85 B4     STA vTmpHitBoxW                      ; dimension hitbox - 1x4
C - - - - - 0x01D5DD 07:D5CD: 20 D9 D5  JSR sub_D5D9_have_intersect_hitboxes ;
C - - - - - 0x01D5E0 07:D5D0: 90 06     BCC @bra_D5D8_RTS                    ; If the intersect doesn't exist
C - - - - - 0x01D5E2 07:D5D2: A9 21     LDA #$21                             ; CONSTANT - the sound of hitting the target
C - - - - - 0x01D5E4 07:D5D4: 20 20 C4  JSR sub_C420_add_sound_effect        ;
C - - - - - 0x01D5E7 07:D5D7: 38        SEC                                  ; return true
@bra_D5D8_RTS:
C - - - - - 0x01D5E8 07:D5D8: 60        RTS                                  ;

; Out: the carry status (analog return true or false)
; 1, if the hitboxes are intersected
; 0, otherwise.
sub_D5D9_have_intersect_hitboxes:
loc_D5D9_have_intersect_hitboxes:
C D 2 - - - 0x01D5E9 07:D5D9: A5 AD     LDA vEnemyHitBoxY            ;
C - - - - - 0x01D5EB 07:D5DB: 38        SEC                          ;
C - - - - - 0x01D5EC 07:D5DC: E5 B1     SBC vTmpHitBoxY              ;
C - - - - - 0x01D5EE 07:D5DE: B0 09     BCS @bra_D5E9_skip           ; If vEnemyHitBoxY - vTmpHitBoxY >= 0x00
C - - - - - 0x01D5F0 07:D5E0: 20 73 D0  JSR sub_D073_invert_sign     ;
C - - - - - 0x01D5F3 07:D5E3: C5 B3     CMP vTmpHitBoxH              ;
C - - - - - 0x01D5F5 07:D5E5: B0 1D     BCS bra_D604_clear_c_rts     ; If (vTmpHitBoxY - vEnemyHitBoxY) >= vTmpHitBoxH
C - - - - - 0x01D5F7 07:D5E7: 90 04     BCC @bra_D5ED_other_side     ; Always true

@bra_D5E9_skip:
C - - - - - 0x01D5F9 07:D5E9: C5 AF     CMP vEnemyHitBoxH            ;
C - - - - - 0x01D5FB 07:D5EB: B0 17     BCS bra_D604_clear_c_rts     ; If (vEnemyHitBoxY - vTmpHitBoxY) >= vEnemyHitBoxH
@bra_D5ED_other_side:
C - - - - - 0x01D5FD 07:D5ED: A5 B0     LDA vEnemyHitBoxW            ;
C - - - - - 0x01D5FF 07:D5EF: 18        CLC                          ;
C - - - - - 0x01D600 07:D5F0: 65 B4     ADC vTmpHitBoxW              ;
C - - - - - 0x01D602 07:D5F2: 85 12     STA vCacheRam_12             ; <~ vEnemyHitBoxW + vTmpHitBoxW
C - - - - - 0x01D604 07:D5F4: A5 AE     LDA vEnemyHitBoxX            ;
C - - - - - 0x01D606 07:D5F6: 38        SEC                          ;
C - - - - - 0x01D607 07:D5F7: E5 B2     SBC vTmpHitBoxX              ;
C - - - - - 0x01D609 07:D5F9: B0 03     BCS @bra_D5FE_skip           ; If vEnemyHitBoxX - vTmpHitBoxX >= 0x00
C - - - - - 0x01D60B 07:D5FB: 20 73 D0  JSR sub_D073_invert_sign     ;
@bra_D5FE_skip:
C - - - - - 0x01D60E 07:D5FE: C5 12     CMP vCacheRam_12             ;
C - - - - - 0x01D610 07:D600: B0 02     BCS bra_D604_clear_c_rts     ; If |vEnemyHitBoxX - vTmpHitBoxX| >= vEnemyHitBoxW + vTmpHitBoxW
C - - - - - 0x01D612 07:D602: 38        SEC                          ; return true
C - - - - - 0x01D613 07:D603: 60        RTS                          ;

bra_D604_clear_c_rts:
C - - - - - 0x01D614 07:D604: 18        CLC                          ; return false
C - - - - - 0x01D615 07:D605: 60        RTS                          ;

; Out: the carry status (analog return true or false)
; 1, if the hitboxes are intersected
; 0, otherwise.
sub_D606_have_intersect_sword:
C - - - - - 0x01D616 07:D606: A5 78     LDA vSwordPosition                     ;
C - - - - - 0x01D618 07:D608: C9 02     CMP #$02                               ; CONSTANT - for 0x00 and 0x01 the sword isn't displayed
C - - - - - 0x01D61A 07:D60A: 90 F8     BCC bra_D604_clear_c_rts               ; If vSwordPosition < 0x02
C - - - - - 0x01D61C 07:D60C: A5 6C     LDA vChrStatus                         ;
C - - - - - 0x01D61E 07:D60E: 29 E8     AND #$E8                               ; CONSTANT - the character is dying or entering a corridor or hidden in the room
                                                                               ; 0x40 - Goemon's unknown technique !(UNUSED)
C - - - - - 0x01D620 07:D610: D0 F2     BNE bra_D604_clear_c_rts               ; If the character is dying or entering a corridor or hidden in the room
C - - - - - 0x01D622 07:D612: A5 6C     LDA vChrStatus                         ;
C - - - - - 0x01D624 07:D614: 29 02     AND #$02                               ; CONSTANT - the character is sitting
C - - - - - 0x01D626 07:D616: F0 02     BEQ @bra_D61A_skip                     ; the character isn't sitting
C - - - - - 0x01D628 07:D618: A9 F8     LDA #$F8                               ; offset #1
@bra_D61A_skip:
C - - - - - 0x01D62A 07:D61A: 18        CLC                                    ;
C - - - - - 0x01D62B 07:D61B: 65 6A     ADC vScreenChrPosY                     ;
C - - - - - 0x01D62D 07:D61D: 85 B1     STA vTmpHitBoxY                        ; <~ vScreenChrPosY or vScreenChrPosY - 8
C - - - - - 0x01D62F 07:D61F: A0 10     LDY #$10                               ; offset #1
C - - - - - 0x01D631 07:D621: A5 6C     LDA vChrStatus                         ;
C - - - - - 0x01D633 07:D623: 6A        ROR                                    ;
C - - - - - 0x01D634 07:D624: 90 02     BCC @bra_D628_skip                     ; If the character is looking to the right
C - - - - - 0x01D636 07:D626: A0 F0     LDY #$F0                               ; offset #2
@bra_D628_skip:
C - - - - - 0x01D638 07:D628: 98        TYA                                    ;
C - - - - - 0x01D639 07:D629: 18        CLC                                    ;
C - - - - - 0x01D63A 07:D62A: 65 64     ADC vScreenChrPosX                     ;
C - - - - - 0x01D63C 07:D62C: 85 B2     STA vTmpHitBoxX                        ; <~ vScreenChrPosX + 10 or vScreenChrPosX - 10
C - - - - - 0x01D63E 07:D62E: A9 24     LDA #$24                               ;
C - - - - - 0x01D640 07:D630: 85 B3     STA vTmpHitBoxH                        ;
C - - - - - 0x01D642 07:D632: A9 0C     LDA #$0C                               ;
C - - - - - 0x01D644 07:D634: 85 B4     STA vTmpHitBoxW                        ; dimension hitbox - 12x36
C - - - - - 0x01D646 07:D636: 20 D9 D5  JSR sub_D5D9_have_intersect_hitboxes   ;
C - - - - - 0x01D649 07:D639: 90 06     BCC bra_D641_RTS                       ; If the intersect doesn't exist
C - - - - - 0x01D64B 07:D63B: A9 19     LDA #$19                               ; the sound of cutting an enemy with a sword
C - - - - - 0x01D64D 07:D63D: 20 20 C4  JSR sub_C420_add_sound_effect          ;
C - - - - - 0x01D650 07:D640: 38        SEC                                    ; return true
bra_D641_RTS:
C - - - - - 0x01D651 07:D641: 60        RTS                                    ;

sub_D642_have_intersect_with_character:
C - - - - - 0x01D652 07:D642: A0 18     LDY #$18                               ; hitBoxH #1
C - - - - - 0x01D654 07:D644: A5 6C     LDA vChrStatus                         ;
C - - - - - 0x01D656 07:D646: 29 42     AND #$42                               ; CONSTANT - the character is sitting
                                                                               ; 0x40 - Goemon's unknown technique !(UNUSED)
C - - - - - 0x01D658 07:D648: F0 02     BEQ @bra_D64C_skip                     ; If the character isn't sitting
C - - - - - 0x01D65A 07:D64A: A0 10     LDY #$10                               ; hitBoxH #2
@bra_D64C_skip:
C - - - - - 0x01D65C 07:D64C: 84 B3     STY vTmpHitBoxH                        ;
C - - - - - 0x01D65E 07:D64E: A5 6A     LDA vScreenChrPosY                     ;
C - - - - - 0x01D660 07:D650: 38        SEC                                    ;
C - - - - - 0x01D661 07:D651: E9 04     SBC #$04                               ;
C - - - - - 0x01D663 07:D653: 85 B1     STA vTmpHitBoxY                        ; <~ vScreenChrPosY - 0x04
C - - - - - 0x01D665 07:D655: A9 06     LDA #$06                               ;
C - - - - - 0x01D667 07:D657: 85 B4     STA vTmpHitBoxW                        ;
C - - - - - 0x01D669 07:D659: A5 64     LDA vScreenChrPosX                     ;
C - - - - - 0x01D66B 07:D65B: 85 B2     STA vTmpHitBoxX                        ; <~ vScreenChrPosX
C - - - - - 0x01D66D 07:D65D: 4C D9 D5  JMP loc_D5D9_have_intersect_hitboxes   ;

; Out: the carry status (analog return true or false)
; 1, if the bomb is exploding
; 0, otherwise
sub_D660_is_bomb_exploding:
C - - - - - 0x01D670 07:D660: AD 9E 03  LDA vBombStatus              ;
C - - - - - 0x01D673 07:D663: 10 10     BPL bra_D675_return_false    ; If the bomb isn't activated
C - - - - - 0x01D675 07:D665: AD 98 03  LDA vBombOnScreen            ;
C - - - - - 0x01D678 07:D668: C9 01     CMP #$01                     ; CONSTANT - 0x01 for bombs always
C - - - - - 0x01D67A 07:D66A: D0 09     BNE bra_D675_return_false    ; If the bomb isn't on the screen
C - - - - - 0x01D67C 07:D66C: AD 9E 03  LDA vBombStatus              ;
C - - - - - 0x01D67F 07:D66F: 29 02     AND #$02                     ; CONSTANT - 0xC2 (a bomb is laying on screen)
C - - - - - 0x01D681 07:D671: D0 02     BNE bra_D675_return_false    ; If the bomb is laying only
C - - - - - 0x01D683 07:D673: 38        SEC                          ; return true
C - - - - - 0x01D684 07:D674: 60        RTS                          ;

bra_D675_return_false:
C - - - - - 0x01D685 07:D675: 18        CLC                          ; return false
C - - - - - 0x01D686 07:D676: 60        RTS                          ;

C - - - - - 0x01D687 07:D677: A9 10     LDA #$10                     ; !(UNUSED)
C - - - - - 0x01D689 07:D679: D0 02     BNE bra_D67D                 ; !(UNUSED)

; In: $0000 - X-position
; In: $0001 - macro X-position
; Out Carry flag (analog return true or false):
; 1, if ($0000, $0001) isn't contained in [(hPosX, lPosX - 0x40), (hPosX + 0x01, lPosX + 0x40)],
; 0, otherwise.
sub_D67B_out_of_sight:
C - - - - - 0x01D68B 07:D67B: A9 40     LDA #$40               ;
bra_D67D:
C - - - - - 0x01D68D 07:D67D: 85 0D     STA ram_000D           ; $000D <~ 0x40
C - - - - - 0x01D68F 07:D67F: A5 27     LDA vLowViewPortPosX   ;
C - - - - - 0x01D691 07:D681: 18        CLC                    ;
C - - - - - 0x01D692 07:D682: 65 0D     ADC ram_000D           ;
C - - - - - 0x01D694 07:D684: 85 02     STA ram_0002           ; $0002 <~ LowPosX + 0x40
C - - - - - 0x01D696 07:D686: A5 4B     LDA vHighViewPortPosX  ;
C - - - - - 0x01D698 07:D688: 69 01     ADC #$01               ;
C - - - - - 0x01D69A 07:D68A: 85 03     STA ram_0003           ; $0003 <~ HighPosX + 0x01 (+1 with overflow)
C - - - - - 0x01D69C 07:D68C: 20 A2 D6  JSR sub_D6A2_sub       ;
C - - - - - 0x01D69F 07:D68F: B0 02     BCS bra_D693_skip      ; If the subroutine returned true.
C - - - - - 0x01D6A1 07:D691: 38        SEC                    ; return true
C - - - - - 0x01D6A2 07:D692: 60        RTS                    ;

bra_D693_skip:
C - - - - - 0x01D6A3 07:D693: A5 27     LDA vLowViewPortPosX   ;
C - - - - - 0x01D6A5 07:D695: 38        SEC                    ;
C - - - - - 0x01D6A6 07:D696: E5 0D     SBC ram_000D           ;
C - - - - - 0x01D6A8 07:D698: 85 02     STA ram_0002           ; $0002 <~ LowPosX - 0x40
C - - - - - 0x01D6AA 07:D69A: A5 4B     LDA vHighViewPortPosX  ;
C - - - - - 0x01D6AC 07:D69C: E9 00     SBC #$00               ;
C - - - - - 0x01D6AE 07:D69E: 85 03     STA ram_0003           ; $0003 <~ HighPosX - 0x01 (+1 with overflow)
C - - - - - 0x01D6B0 07:D6A0: 90 09     BCC bra_D6AB_RTS       ; If vHighViewPortPosX:vLowViewPortPosX < 0x00:0x40
sub_D6A2_sub:
C - - - - - 0x01D6B2 07:D6A2: A5 02     LDA ram_0002           ;
C - - - - - 0x01D6B4 07:D6A4: 38        SEC                    ;
C - - - - - 0x01D6B5 07:D6A5: E5 00     SBC ram_0000           ;
C - - - - - 0x01D6B7 07:D6A7: A5 03     LDA ram_0003           ;
C - - - - - 0x01D6B9 07:D6A9: E5 01     SBC ram_0001           ;
bra_D6AB_RTS:
C - - - - - 0x01D6BB 07:D6AB: 60        RTS                    ;

; In: $0000 - X-position
; In: $0001 - macro X-position
; Out: $0003 = $0000 - vLowViewPortPosX
; Out Carry flag (analog return true or false):
; 1, if vLowViewPortPosX <= $0000 and vHighViewPortPosX == $0001
; 1, if vLowViewPortPosX > $0000 and vHighViewPortPosX + 1 == $0001
; 0, otherwise.
sub_D6AC_out_of_screen:
C - - - - - 0x01D6BC 07:D6AC: A5 00     LDA ram_0000             ;
C - - - - - 0x01D6BE 07:D6AE: 38        SEC                      ;
C - - - - - 0x01D6BF 07:D6AF: E5 27     SBC vLowViewPortPosX     ;
C - - - - - 0x01D6C1 07:D6B1: 85 03     STA ram_0003             ; $0003 <~ $0000 - vLowViewPortPosX
C - - - - - 0x01D6C3 07:D6B3: A5 01     LDA ram_0001             ;
C - - - - - 0x01D6C5 07:D6B5: E5 4B     SBC vHighViewPortPosX    ;
C - - - - - 0x01D6C7 07:D6B7: D0 02     BNE bra_D6BB_return_true ; If HighPosX != $0001 (- 1)
C - - - - - 0x01D6C9 07:D6B9: 18        CLC                      ; return false
C - - - - - 0x01D6CA 07:D6BA: 60        RTS                      ;

bra_D6BB_return_true:
C - - - - - 0x01D6CB 07:D6BB: 38        SEC                      ; return true
C - - - - - 0x01D6CC 07:D6BC: 60        RTS                      ;

; In: Register X - the enemyA number
; In: Register A - the mask of the low counter
; Out: Register Y - 1, if the enemy is to the right of the character, 0 - otherwise.
sub_D6BD_try_change_enemyA_direction:
C - - - - - 0x01D6CD 07:D6BD: 25 2C     AND vLowCounter                             ;
C - - - - - 0x01D6CF 07:D6BF: D0 05     BNE bra_D6C6_double_return                  ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
C - - - - - 0x01D6D1 07:D6C1: 20 CA D6  JSR sub_D6CA_get_enemyA_relative_direction  ;
C - - - - - 0x01D6D4 07:D6C4: 18        CLC                                         ;
C - - - - - 0x01D6D5 07:D6C5: 60        RTS                                         ;

bra_D6C6_double_return:
bra_D6C6_clear_c_rts:
C - - - - - 0x01D6D6 07:D6C6: 68        PLA                                         ;
C - - - - - 0x01D6D7 07:D6C7: 68        PLA                                         ; double return (i.e. $A332 -> $A2FB)
C - - - - - 0x01D6D8 07:D6C8: 18        CLC                                         ;
C - - - - - 0x01D6D9 07:D6C9: 60        RTS                                         ;

; In: Register X - the enemyA number
; Out: Register Y - 1, if the enemy is to the right of the character, 0 - otherwise.
sub_D6CA_get_enemyA_relative_direction:
C - - - - - 0x01D6DA 07:D6CA: A0 00     LDY #$00                 ;
C - - - - - 0x01D6DC 07:D6CC: A5 66     LDA vLowChrPosX          ;
C - - - - - 0x01D6DE 07:D6CE: 38        SEC                      ;
C - - - - - 0x01D6DF 07:D6CF: FD 38 03  SBC vEnemyAPosXLow,X     ;
C - - - - - 0x01D6E2 07:D6D2: A5 68     LDA vHighChrPosX         ;
C - - - - - 0x01D6E4 07:D6D4: FD 3E 03  SBC vEnemyAPosXHigh,X    ;
C - - - - - 0x01D6E7 07:D6D7: B0 01     BCS @bra_D6DA_RTS        ; If [Hc:Lc] >= [He:Le]
C - - - - - 0x01D6E9 07:D6D9: C8        INY                      ;
@bra_D6DA_RTS:
C - - - - - 0x01D6EA 07:D6DA: 60        RTS                      ;

; In: Register X - the enemyB number
; In: Register A - the mask of the low counter
; Out: Register Y - 1, if the enemy is to the right of the character, 0 - otherwise.
sub_D6DB_try_change_enemyB_direction:
C - - - - - 0x01D6EB 07:D6DB: 25 2C     AND vLowCounter            ;
C - - - - - 0x01D6ED 07:D6DD: D0 E7     BNE bra_D6C6_clear_c_rts   ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
; In: Register X - the enemyB number
; Out: Register Y - 1, if the enemy is to the right of the character, 0 - otherwise.
sub_D6DF_check_enemyB_direction:
C - - - - - 0x01D6EF 07:D6DF: A0 00     LDY #$00                   ;
C - - - - - 0x01D6F1 07:D6E1: A5 66     LDA vLowChrPosX            ;
C - - - - - 0x01D6F3 07:D6E3: 38        SEC                        ;
C - - - - - 0x01D6F4 07:D6E4: FD 74 03  SBC vEnemyBPosXLow,X       ;
C - - - - - 0x01D6F7 07:D6E7: A5 68     LDA vHighChrPosX           ;
C - - - - - 0x01D6F9 07:D6E9: FD 7A 03  SBC vEnemyBPosXHigh,X      ;
C - - - - - 0x01D6FC 07:D6EC: B0 01     BCS @bra_D6EF_RTS          ; If [Hc:Lc] >= [He:Le]
C - - - - - 0x01D6FE 07:D6EE: C8        INY                        ;
@bra_D6EF_RTS:
C - - - - - 0x01D6FF 07:D6EF: 60        RTS                        ;

; In: Register X - the enemyA number
sub_D6F0_dec_EnemyAPosXLow:
loc_D6F0_dec_EnemyAPosXLow:
C D 2 - - - 0x01D700 07:D6F0: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x01D703 07:D6F3: 38        SEC                             ;
C - - - - - 0x01D704 07:D6F4: E9 10     SBC #$10                        ; CONSTANT - The enemy should be visible in its entirety on the left
C - - - - - 0x01D706 07:D6F6: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x01D709 07:D6F9: E9 00     SBC #$00                        ;
C - - - - - 0x01D70B 07:D6FB: 90 11     BCC bra_D70E_RTS                ; Branch If the enemy reach the beginning of the room
; In: Register X - the enemyA number
sub_D6FD_dec_EnemyAPosXLow_unsafe:
loc_D6FD_dec_EnemyAPosXLow_unsafe:
C D 2 - - - 0x01D70D 07:D6FD: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x01D710 07:D700: 38        SEC                             ;
C - - - - - 0x01D711 07:D701: E9 01     SBC #$01                        ;
C - - - - - 0x01D713 07:D703: 9D 38 03  STA vEnemyAPosXLow,X            ;
C - - - - - 0x01D716 07:D706: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x01D719 07:D709: E9 00     SBC #$00                        ; decrement vEnemyAPosXHigh, if vEnemyAPosXLow changed a sign
C - - - - - 0x01D71B 07:D70B: 9D 3E 03  STA vEnemyAPosXHigh,X           ;
bra_D70E_RTS:
C - - - - - 0x01D71E 07:D70E: 60        RTS                             ;

; In: Register X - the enemyA number
sub_D70F_inc_EnemyAPosXLow:
loc_D70F_inc_EnemyAPosXLow:
C D 2 - - - 0x01D71F 07:D70F: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x01D722 07:D712: 38        SEC                             ;
C - - - - - 0x01D723 07:D713: E9 F0     SBC #$F0                        ; CONSTANT - The enemy should be visible in its entirety on the right
C - - - - - 0x01D725 07:D715: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x01D728 07:D718: E5 4A     SBC vNearCurrentRoomLength      ;
C - - - - - 0x01D72A 07:D71A: B0 F2     BCS bra_D70E_RTS                ; Branch If the enemy reach the end of the room
; In: Register X - the enemyA number
sub_D71C_inc_EnemyAPosXLow_unsafe:
loc_D71C_inc_EnemyAPosXLow_unsafe:
C D 2 - - - 0x01D72C 07:D71C: FE 38 03  INC vEnemyAPosXLow,X            ;
C - - - - - 0x01D72F 07:D71F: D0 ED     BNE bra_D70E_RTS                ; If the enemy doesn't move from one screen to another
C - - - - - 0x01D731 07:D721: FE 3E 03  INC vEnemyAPosXHigh,X           ;
C - - - - - 0x01D734 07:D724: 60        RTS                             ;

; In: Register X - the enemyA number
; In: Register Y - sprite_magic2 (The offset by the address)
; In:  $0003 - enemy X-position
; Out: $0000 - enemy Y-position
sub_D725_enemyA_on_screen:
C - - - - - 0x01D735 07:D725: BD 2C 03  LDA vEnemyAPosY,X           ;
C - - - - - 0x01D738 07:D728: 85 00     STA ram_0000                ; ~> sprite magic1
C - - - - - 0x01D73A 07:D72A: A5 03     LDA ram_0003                ;
C - - - - - 0x01D73C 07:D72C: 9D 32 03  STA vEnemyAScreenPosX,X     ;
C - - - - - 0x01D73F 07:D72F: C0 FF     CPY #$FF                    ; CONSTANT - death mark
C - - - - - 0x01D741 07:D731: F0 20     BEQ bra_D753_death          ;
C - - - - - 0x01D743 07:D733: BD 20 03  LDA vEnemyAStatus,X         ;
C - - - - - 0x01D746 07:D736: 09 40     ORA #$40                    ; CONSTANT - the enemy can get damage
C - - - - - 0x01D748 07:D738: 9D 20 03  STA vEnemyAStatus,X         ;
C - - - - - 0x01D74B 07:D73B: 6A        ROR                         ;
C - - - - - 0x01D74C 07:D73C: 90 02     BCC bra_D740_RTS            ; if the direction is 'on the right'
C - - - - - 0x01D74E 07:D73E: C8        INY                         ;
C - - - - - 0x01D74F 07:D73F: C8        INY                         ; next the offset for the left frame
bra_D740_RTS:
C - - - - - 0x01D750 07:D740: 60        RTS                         ;

; In: Register X - the enemyA number
; In: Register Y - sprite_magic2 (The offset by the address)
loc_D741_enemyA_off_screen:
C D 2 - - - 0x01D751 07:D741: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x01D754 07:D744: 29 BF     AND #$BF                        ; CONSTANT - the enemy can't get damage
C - - - - - 0x01D756 07:D746: 9D 20 03  STA vEnemyAStatus,X             ; 
C - - - - - 0x01D759 07:D749: C0 FF     CPY #$FF                        ; CONSTANT - death mark
C - - - - - 0x01D75B 07:D74B: D0 05     BNE @bra_D752_RTS               ; If Register Y != 0xFF
C - - - - - 0x01D75D 07:D74D: 20 9F D7  JSR sub_D79F_inc_diving_frameA_ ;
C - - - - - 0x01D760 07:D750: B0 2D     BCS bra_D77F_free_enemyA        ; If vEnemyAFrame_Counter >= 0x1F
@bra_D752_RTS:
C - - - - - 0x01D762 07:D752: 60        RTS                             ;

bra_D753_death:
C - - - - - 0x01D763 07:D753: 68        PLA                                ;
C - - - - - 0x01D764 07:D754: 68        PLA                                ; double return (i.e. $A1C4 -> $A055)
C - - - - - 0x01D765 07:D755: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x01D768 07:D758: 85 D7     STA ram_00D7                       ; prepare an input parameter
C - - - - - 0x01D76A 07:D75A: 20 DA D9  JSR sub_D9DA_screen_with_water_gap ;
C - - - - - 0x01D76D 07:D75D: 90 20     BCC bra_D77F_free_enemyA           ; If the screen hasn't the water gap
C - - - - - 0x01D76F 07:D75F: 20 9F D7  JSR sub_D79F_inc_diving_frameA_    ;
C - - - - - 0x01D772 07:D762: B0 1B     BCS bra_D77F_free_enemyA           ; If vEnemyAFrame_Counter >= 0x1F
; In: Register A - the frame counter
loc_D764_diving_render:
C D 2 - - - 0x01D774 07:D764: 48        PHA                                ; store the frame counter
C - - - - - 0x01D775 07:D765: C9 01     CMP #$01                           ; CONSTANT - 1st frame
C - - - - - 0x01D777 07:D767: D0 05     BNE @bra_D76E_skip                 ; If the frame counter != 0x01
C - - - - - 0x01D779 07:D769: A9 36     LDA #$36                           ; diving sound
C - - - - - 0x01D77B 07:D76B: 20 20 C4  JSR sub_C420_add_sound_effect      ;
@bra_D76E_skip:
C - - - - - 0x01D77E 07:D76E: 68        PLA                                ; retrieve the frame counter (see $D764)
C - - - - - 0x01D77F 07:D76F: 29 18     AND #$18                           ;
C - - - - - 0x01D781 07:D771: 4A        LSR                                ;
C - - - - - 0x01D782 07:D772: 4A        LSR                                ; gets control bits
C - - - - - 0x01D783 07:D773: 18        CLC                                ;
C - - - - - 0x01D784 07:D774: 69 D8     ADC #$D8                           ; ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01D786 07:D776: 85 01     STA ram_0001                       ; 0xD8, 0xDA, 0xDC or 0xDE
C - - - - - 0x01D788 07:D778: A9 40     LDA #$40                           ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01D78A 07:D77A: 85 02     STA ram_0002                       ; $8100, bank 05 (2 page)
C - - - - - 0x01D78C 07:D77C: 4C 33 CE  JMP loc_CE33_add_sprite_magic      ;

loc_D77F_free_enemyA:
bra_D77F_free_enemyA:
C D 2 - - - 0x01D78F 07:D77F: A6 1A     LDX vTempCounter1A             ; puts the enemyA number
C - - - - - 0x01D791 07:D781: AC 00 03  LDY vEnemyA                    ;
C - - - - - 0x01D794 07:D784: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01D797 07:D787: 20 17 DA  JSR sub_DA17_add_enemy_score   ;
loc_D78A_free_enemyA_while_creating:
C D 2 - - - 0x01D79A 07:D78A: A9 00     LDA #$00                       ;
C - - - - - 0x01D79C 07:D78C: 9D 20 03  STA vEnemyAStatus,X            ; clear a status
sub_D78F_dec_enemyA_counter:
loc_D78F_dec_enemyA_counter:
C D 2 - - - 0x01D79F 07:D78F: AD 0A 03  LDA vEnemyACount               ;
C - - - - - 0x01D7A2 07:D792: F0 05     BEQ @bra_D799_skip             ; If vEnemyACount == 0x00
C - - - - - 0x01D7A4 07:D794: CE 0A 03  DEC vEnemyACount               ;
C - - - - - 0x01D7A7 07:D797: D0 05     BNE @bra_D79E_RTS              ; If vEnemyACount != 0x00
@bra_D799_skip:
C - - - - - 0x01D7A9 07:D799: A9 00     LDA #$00                       ;
C - - - - - 0x01D7AB 07:D79B: 8D 00 03  STA vEnemyA                    ; clear
@bra_D79E_RTS:
C - - - - - 0x01D7AE 07:D79E: 60        RTS                            ;

; In: Register X - the enemyA number
sub_D79F_inc_diving_frameA_:
C - - - - - 0x01D7AF 07:D79F: FE 44 03  INC vEnemyAFrame_Counter,X     ;
C - - - - - 0x01D7B2 07:D7A2: BD 44 03  LDA vEnemyAFrame_Counter,X     ;
C - - - - - 0x01D7B5 07:D7A5: C9 1F     CMP #$1F                       ; CONSTANT - the last frame
C - - - - - 0x01D7B7 07:D7A7: 60        RTS                            ;

sub_D7A8_correction_EnemyAPosY:
@bra_D7A8_repeat:
C - - - - - 0x01D7B8 07:D7A8: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x01D7BB 07:D7AB: 29 07     AND #$07                       ;
C - - - - - 0x01D7BD 07:D7AD: C9 07     CMP #$07                       ;
C - - - - - 0x01D7BF 07:D7AF: F0 05     BEQ @bra_D7B6_reset            ; If Register A == 0x07
C - - - - - 0x01D7C1 07:D7B1: DE 2C 03  DEC vEnemyAPosY,X              ;
C - - - - - 0x01D7C4 07:D7B4: D0 F2     BNE @bra_D7A8_repeat           ; If vEnemyAPosY != 0x00
@bra_D7B6_reset:
C - - - - - 0x01D7C6 07:D7B6: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01D7C9 07:D7B9: 29 E1     AND #$E1                       ;
C - - - - - 0x01D7CB 07:D7BB: 9D 20 03  STA vEnemyAStatus,X            ; clear W,K,L,M flags (see vEnemyAStatus)
C - - - - - 0x01D7CE 07:D7BE: 60        RTS                            ;

; Out: If flag Z = 1 then the enemy movement to the right is not allowed
sub_D7BF_check_enemyA_movement_on_the_right:
C - - - - - 0x01D7CF 07:D7BF: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions ;
C - - - - - 0x01D7D2 07:D7C2: A9 08     LDA #$08                                    ; prepare an increment by X (+8)
C - - - - - 0x01D7D4 07:D7C4: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX    ;
C - - - - - 0x01D7D7 07:D7C7: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01D7D9 07:D7C9: 60        RTS                                         ;

; Out: If flag Z = 1 then the enemy movement to the left is not allowed
sub_D7CA_check_enemyA_movement_on_the_left:
C - - - - - 0x01D7DA 07:D7CA: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions ;
C - - - - - 0x01D7DD 07:D7CD: A9 F8     LDA #$F8                                    ; prepare an increment by X (-8)
C - - - - - 0x01D7DF 07:D7CF: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX     ;
C - - - - - 0x01D7E2 07:D7D2: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01D7E4 07:D7D4: 60        RTS                                         ;

; Out: If flag Z = 1 then there is the strong collision
sub_D7D5_check_enemyA_collision_by_Y_in_maze:
C - - - - - 0x01D7E5 07:D7D5: A5 5E     LDA vNoLevel                                ;
C - - - - - 0x01D7E7 07:D7D7: C9 03     CMP #$03                                    ; CONSTANT - level 4 or level-racing
C - - - - - 0x01D7E9 07:D7D9: D0 0A     BNE bra_D7E5_RTS                            ; If vNoLevel != 0x03
C - - - - - 0x01D7EB 07:D7DB: A9 E1     LDA #$E1                                    ; initializes the offset by Y (-31)
C - - - - - 0x01D7ED 07:D7DD: 20 39 D9  JSR sub_D939_init_relative_enemyA_positions ;
C - - - - - 0x01D7F0 07:D7E0: 20 70 D3  JSR sub_D370_left_right_collision           ;
C - - - - - 0x01D7F3 07:D7E3: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
bra_D7E5_RTS:
C - - - - - 0x01D7F5 07:D7E5: 60        RTS                                         ;

C - - - - - 0x01D7F6 07:D7E6: A9 01     LDA #$01                                    ; not used ???
C - - - - - 0x01D7F8 07:D7E8: 20 F0 D7  JSR sub_D7F0_enemyA_collision_by_shift_posY ; not used ???
C - - - - - 0x01D7FB 07:D7EB: C9 01     CMP #$01                                    ; not used ???
C - - - - - 0x01D7FD 07:D7ED: 60        RTS                                         ; not used ???

C - - - - - 0x01D7FE 07:D7EE: A9 01     LDA #$01                                    ; not used ???

; In: Register A - PosY
; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
sub_D7F0_enemyA_collision_by_shift_posY:
C - - - - - 0x01D800 07:D7F0: 18        CLC                                      ;
C - - - - - 0x01D801 07:D7F1: 7D 2C 03  ADC vEnemyAPosY,X                        ;
C - - - - - 0x01D804 07:D7F4: 85 00     STA ram_0000                             ; <~ vEnemyAPosY + PosY
C - - - - - 0x01D806 07:D7F6: 20 3F D9  JSR sub_D93F_init_short_enemyA_positions ;
C - - - - - 0x01D809 07:D7F9: 4C E5 D2  JMP loc_D2E5_get_collision_value         ;

; In: Register X - the enemyB number
loc_D7FC_dec_EnemyBPosXLow:
C D 2 - - - 0x01D80C 07:D7FC: BD 74 03  LDA vEnemyBPosXLow,X            ;
C - - - - - 0x01D80F 07:D7FF: 38        SEC                             ;
C - - - - - 0x01D810 07:D800: E9 10     SBC #$10                        ; CONSTANT - The enemy should be visible in its entirety on the left
C - - - - - 0x01D812 07:D802: BD 7A 03  LDA vEnemyBPosXHigh,X           ;
C - - - - - 0x01D815 07:D805: E9 00     SBC #$00                        ;
C - - - - - 0x01D817 07:D807: 90 11     BCC bra_D81A_RTS                ; Branch If the enemy reach the beginning of the room
; In: Register X - the enemyB number
sub_D809_short_dec_EnemyBPosXLow:
loc_D809_short_dec_EnemyBPosXLow:
C D 2 - - - 0x01D819 07:D809: BD 74 03  LDA vEnemyBPosXLow,X            ;
C - - - - - 0x01D81C 07:D80C: 38        SEC                             ;
C - - - - - 0x01D81D 07:D80D: E9 01     SBC #$01                        ;
C - - - - - 0x01D81F 07:D80F: 9D 74 03  STA vEnemyBPosXLow,X            ;
C - - - - - 0x01D822 07:D812: BD 7A 03  LDA vEnemyBPosXHigh,X           ;
C - - - - - 0x01D825 07:D815: E9 00     SBC #$00                        ; decrement vEnemyBPosXHigh, if vEnemyBPosXLow changed a sign
C - - - - - 0x01D827 07:D817: 9D 7A 03  STA vEnemyBPosXHigh,X           ;
bra_D81A_RTS:
C - - - - - 0x01D82A 07:D81A: 60        RTS                             ;

; In: Register X - the enemyB number
loc_D81B_inc_EnemyBPosXLow:
C D 2 - - - 0x01D82B 07:D81B: BD 74 03  LDA vEnemyBPosXLow,X            ;
C - - - - - 0x01D82E 07:D81E: 38        SEC                             ;
C - - - - - 0x01D82F 07:D81F: E9 F0     SBC #$F0                        ; CONSTANT - The enemy should be visible in its entirety on the right
C - - - - - 0x01D831 07:D821: BD 7A 03  LDA vEnemyBPosXHigh,X           ;
C - - - - - 0x01D834 07:D824: E5 4A     SBC vNearCurrentRoomLength      ;
C - - - - - 0x01D836 07:D826: B0 F2     BCS bra_D81A_RTS                ; Branch If the enemy reach the end of the room
; In: Register X - the enemyB number
loc_D828_short_inc_EnemyBPosXLow:
sub_D828_short_inc_EnemyBPosXLow:
C D 2 - - - 0x01D838 07:D828: FE 74 03  INC vEnemyBPosXLow,X            ;
C - - - - - 0x01D83B 07:D82B: D0 ED     BNE bra_D81A_RTS                ; If the enemy doesn't move from one screen to another
C - - - - - 0x01D83D 07:D82D: FE 7A 03  INC vEnemyBPosXHigh,X           ;
C - - - - - 0x01D840 07:D830: 60        RTS                             ;

; In: Register X - the enemyB number
; In: Register Y - sprite_magic2 (The offset by the address)
; In:  $0003 - enemy X-position
; Out: $0000 - enemy Y-position
sub_D831_enemyB_on_screen:
C - - - - - 0x01D841 07:D831: BD 68 03  LDA vEnemyBPosY,X           ;
C - - - - - 0x01D844 07:D834: 85 00     STA ram_0000                ; ~> sprite magic1
C - - - - - 0x01D846 07:D836: A5 03     LDA ram_0003                ;
C - - - - - 0x01D848 07:D838: 9D 6E 03  STA vEnemyBScreenPosX,X     ;
C - - - - - 0x01D84B 07:D83B: C0 FF     CPY #$FF                    ; CONSTANT - death mark
C - - - - - 0x01D84D 07:D83D: F0 20     BEQ bra_D85F_death          ;
C - - - - - 0x01D84F 07:D83F: BD 5C 03  LDA vEnemyBStatus,X         ;
C - - - - - 0x01D852 07:D842: 09 40     ORA #$40                    ; CONSTANT - the enemy can get damage
C - - - - - 0x01D854 07:D844: 9D 5C 03  STA vEnemyBStatus,X         ;
C - - - - - 0x01D857 07:D847: 6A        ROR                         ;
C - - - - - 0x01D858 07:D848: 90 02     BCC @bra_D84C_RTS           ; if the direction is 'on the right'
C - - - - - 0x01D85A 07:D84A: C8        INY                         ;
C - - - - - 0x01D85B 07:D84B: C8        INY                         ; next the offset for the left frame
@bra_D84C_RTS:
C - - - - - 0x01D85C 07:D84C: 60        RTS                         ;

; In: Register X - the enemyB number
; In: Register Y - sprite_magic2 (The offset by the address)
sub_D84D_enemyB_off_screen:
loc_D84D_enemyB_off_screen:
C D 2 - - - 0x01D85D 07:D84D: BD 5C 03  LDA vEnemyBStatus,X             ;
C - - - - - 0x01D860 07:D850: 29 BF     AND #$BF                        ; CONSTANT - the enemy can't get damage
C - - - - - 0x01D862 07:D852: 9D 5C 03  STA vEnemyBStatus,X             ;
C - - - - - 0x01D865 07:D855: C0 FF     CPY #$FF                        ; CONSTANT - death mark
C - - - - - 0x01D867 07:D857: D0 05     BNE @bra_D85E_RTS               ; If Register Y != 0xFF
C - - - - - 0x01D869 07:D859: 20 93 D8  JSR sub_D893_inc_diving_frameB_ ;
C - - - - - 0x01D86C 07:D85C: B0 15     BCS bra_D873_free_enemyB        ; If vEnemyBFrame_Counter >= 0x1F
@bra_D85E_RTS:
C - - - - - 0x01D86E 07:D85E: 60        RTS                             ;

bra_D85F_death:
C - - - - - 0x01D86F 07:D85F: 68        PLA                                  ;
C - - - - - 0x01D870 07:D860: 68        PLA                                  ; double return (i.e. bank 03, page 2, $BBE2 -> $BB67)
C - - - - - 0x01D871 07:D861: BD 7A 03  LDA vEnemyBPosXHigh,X                ;
C - - - - - 0x01D874 07:D864: 85 D7     STA ram_00D7                         ; prepare an input parameter
C - - - - - 0x01D876 07:D866: 20 DA D9  JSR sub_D9DA_screen_with_water_gap   ;
C - - - - - 0x01D879 07:D869: 90 08     BCC bra_D873_free_enemyB             ; If the screen hasn't the water gap
C - - - - - 0x01D87B 07:D86B: 20 93 D8  JSR sub_D893_inc_diving_frameB_      ;
C - - - - - 0x01D87E 07:D86E: B0 03     BCS bra_D873_free_enemyB             ; If vEnemyBFrame_Counter >= 0x1F
C - - - - - 0x01D880 07:D870: 4C 64 D7  JMP loc_D764_diving_render           ;

loc_D873_free_enemyB:
bra_D873_free_enemyB:
C D 2 - - - 0x01D883 07:D873: A6 1A     LDX vTempCounter1A             ; puts the enemyB number
C - - - - - 0x01D885 07:D875: AC 01 03  LDY vEnemyB                    ;
C - - - - - 0x01D888 07:D878: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01D88B 07:D87B: 20 17 DA  JSR sub_DA17_add_enemy_score   ;
; In: Register X - the enemyB number
loc_D87E_free_enemyB_while_creating:
sub_D87E_free_enemyB_while_creating:
C D 2 - - - 0x01D88E 07:D87E: A9 00     LDA #$00                       ;
C - - - - - 0x01D890 07:D880: 9D 5C 03  STA vEnemyBStatus,X            ; free
sub_D883_dec_enemyB_counter:
loc_D883_dec_enemyB_counter:
C D 2 - - - 0x01D893 07:D883: AD 0B 03  LDA vEnemyBCount               ;
C - - - - - 0x01D896 07:D886: F0 05     BEQ @bra_D88D_skip             ; If vEnemyBCount == 0x00
C - - - - - 0x01D898 07:D888: CE 0B 03  DEC vEnemyBCount               ;
C - - - - - 0x01D89B 07:D88B: D0 05     BNE @bra_D892_RTS              ; If vEnemyBCount != 0x00
@bra_D88D_skip:
C - - - - - 0x01D89D 07:D88D: A9 00     LDA #$00                       ;
C - - - - - 0x01D89F 07:D88F: 8D 01 03  STA vEnemyB                    ; clear
@bra_D892_RTS:
C - - - - - 0x01D8A2 07:D892: 60        RTS                            ;

; In: Register X - the enemyB number
; Out: If flag Z = 1 then the frame counter has the last frame
sub_D893_inc_diving_frameB_:
C - - - - - 0x01D8A3 07:D893: FE 80 03  INC vEnemyBFrame_Counter,X     ;
C - - - - - 0x01D8A6 07:D896: BD 80 03  LDA vEnemyBFrame_Counter,X     ;
C - - - - - 0x01D8A9 07:D899: C9 1F     CMP #$1F                       ; CONSTANT - the last frame
C - - - - - 0x01D8AB 07:D89B: 60        RTS                            ;

; In: Register X - the enemyB number
sub_D89C_correction_EnemyBPosY:
C - - - - - 0x01D8AC 07:D89C: 20 A8 D8  JSR sub_D8A8_correction2_EnemyBPosY ;
C - - - - - 0x01D8AF 07:D89F: BD 5C 03  LDA vEnemyBStatus,X                 ;
C - - - - - 0x01D8B2 07:D8A2: 29 E1     AND #$E1                            ;
C - - - - - 0x01D8B4 07:D8A4: 9D 5C 03  STA vEnemyBStatus,X                 ; clear W,K,L,M flags (see vEnemyBStatus)
C - - - - - 0x01D8B7 07:D8A7: 60        RTS                                 ;

sub_D8A8_correction2_EnemyBPosY:
@bra_D8A8_repeat:
C - - - - - 0x01D8B8 07:D8A8: BD 68 03  LDA vEnemyBPosY,X              ;
C - - - - - 0x01D8BB 07:D8AB: 29 07     AND #$07                       ;
C - - - - - 0x01D8BD 07:D8AD: C9 07     CMP #$07                       ;
C - - - - - 0x01D8BF 07:D8AF: F0 05     BEQ bra_D8B6_RTS               ; If Register A == 0x07
C - - - - - 0x01D8C1 07:D8B1: DE 68 03  DEC vEnemyBPosY,X              ;
C - - - - - 0x01D8C4 07:D8B4: D0 F2     BNE @bra_D8A8_repeat           ; If vEnemyBPosY != 0x00
bra_D8B6_RTS:
C - - - - - 0x01D8C6 07:D8B6: 60        RTS                            ;

; Out: If flag Z = 1 then the enemy movement to the right is not allowed
sub_D8B7_check_enemyB_movement_on_the_right:
C - - - - - 0x01D8C7 07:D8B7: 20 4A D9  JSR sub_D94A_init_absolute_enemyB_positions ;
C - - - - - 0x01D8CA 07:D8BA: A9 08     LDA #$08                                    ; prepare an increment by X (+8)
C - - - - - 0x01D8CC 07:D8BC: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX    ;
C - - - - - 0x01D8CF 07:D8BF: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01D8D1 07:D8C1: 60        RTS                                         ;

; Out: If flag Z = 1 then the enemy movement to the left is not allowed
sub_D8C2_check_enemyB_movement_on_the_left:
C - - - - - 0x01D8D2 07:D8C2: 20 4A D9  JSR sub_D94A_init_absolute_enemyB_positions ;
C - - - - - 0x01D8D5 07:D8C5: A9 F8     LDA #$F8                                    ; prepare an increment by X (-8)
C - - - - - 0x01D8D7 07:D8C7: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX     ;
C - - - - - 0x01D8DA 07:D8CA: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01D8DC 07:D8CC: 60        RTS                                         ;

; Out: If flag Z = 1 then the enemy downward movement is not allowed
sub_D8CD_enemyB_collision_plus_one:
C - - - - - 0x01D8DD 07:D8CD: A9 01     LDA #$01                                     ; prepare an input parameter (+1)
C - - - - - 0x01D8DF 07:D8CF: D0 02     BNE bra_D8D3_skip                            ; Always true

; Out: If flag Z = 1 then the enemy upward movement is not allowed
sub_D8D1_enemyB_collision_minus_16:
C - - - - - 0x01D8E1 07:D8D1: A9 F0     LDA #$F0                                     ; prepare an input parameter (-16)
bra_D8D3_skip:
C - - - - - 0x01D8E3 07:D8D3: 20 DB D8  JSR sub_D8DB_enemyB_collision_by_shift_posY  ;
C - - - - - 0x01D8E6 07:D8D6: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01D8E8 07:D8D8: 60        RTS                                          ;

; Out: Register A - a collision value (0x0X), 0x00 - no collision (see 98C0, bank 01_2)
sub_D8D9_enemyB_collision_by_one:
C - - - - - 0x01D8E9 07:D8D9: A9 01     LDA #$01                                    ; initializes PosY
; In: Register A - PosY
; Out: Register A - a collision value (0x0X), 0x00 - no collision
sub_D8DB_enemyB_collision_by_shift_posY:
C - - - - - 0x01D8EB 07:D8DB: 18        CLC                                         ;
C - - - - - 0x01D8EC 07:D8DC: 7D 68 03  ADC vEnemyBPosY,X                           ;
C - - - - - 0x01D8EF 07:D8DF: 85 00     STA ram_0000                                ; <~ vEnemyBPosY + PosY
C - - - - - 0x01D8F1 07:D8E1: 20 52 D9  JSR sub_D952_init_short_enemyB_positions    ;
C - - - - - 0x01D8F4 07:D8E4: 4C E5 D2  JMP loc_D2E5_get_collision_value            ;

; In: Register X - the item number
sub_D8E7_short_dec_ItemPosXLow:
C - - - - - 0x01D8F7 07:D8E7: BD B6 03  LDA vItemPosXLow,X       ; !(UNUSED)
C - - - - - 0x01D8FA 07:D8EA: 38        SEC                      ; !(UNUSED)
C - - - - - 0x01D8FB 07:D8EB: E9 10     SBC #$10                 ; !(UNUSED), CONSTANT - The item should be visible in its entirety on the left
C - - - - - 0x01D8FD 07:D8ED: BD BC 03  LDA vItemPosXHigh,X      ; !(UNUSED)
C - - - - - 0x01D900 07:D8F0: E9 00     SBC #$00                 ; !(UNUSED)
C - - - - - 0x01D902 07:D8F2: 90 11     BCC bra_D905_RTS         ; !(UNUSED), Branch If the enemy reach the beginning of the room
; In: Register X - the item number
loc_D8F4_short_dec_ItemPosXLow_unsafe:
sub_D8F4_short_dec_ItemPosXLow_unsafe:
C D 2 - - - 0x01D904 07:D8F4: BD B6 03  LDA vItemPosXLow,X       ;
C - - - - - 0x01D907 07:D8F7: 38        SEC                      ;
C - - - - - 0x01D908 07:D8F8: E9 01     SBC #$01                 ;
C - - - - - 0x01D90A 07:D8FA: 9D B6 03  STA vItemPosXLow,X       ;
C - - - - - 0x01D90D 07:D8FD: BD BC 03  LDA vItemPosXHigh,X      ;
C - - - - - 0x01D910 07:D900: E9 00     SBC #$00                 ; decrement vItemPosXHigh, if vEnemyAPosXLow changed a sign
C - - - - - 0x01D912 07:D902: 9D BC 03  STA vItemPosXHigh,X      ;
bra_D905_RTS:
C - - - - - 0x01D915 07:D905: 60        RTS                      ;

C - - - - - 0x01D916 07:D906: BD B6 03  LDA ram_03B6,X           ; !(UNUSED)
C - - - - - 0x01D919 07:D909: 38        SEC                      ; !(UNUSED)
C - - - - - 0x01D91A 07:D90A: E9 F0     SBC #$F0                 ; !(UNUSED)
C - - - - - 0x01D91C 07:D90C: BD BC 03  LDA ram_03BC,X           ; !(UNUSED)
C - - - - - 0x01D91F 07:D90F: E5 4A     SBC ram_004A             ; !(UNUSED)
C - - - - - 0x01D921 07:D911: B0 F2     BCS bra_D905_RTS         ; !(UNUSED)

; In: Register X - the item number
loc_D913_short_inc_ItemPosXLow:
C D 2 - - - 0x01D923 07:D913: FE B6 03  INC vItemPosXLow,X                 ;
C - - - - - 0x01D926 07:D916: D0 ED     BNE bra_D905_RTS                   ; If the item doesn't move from one screen to another
C - - - - - 0x01D928 07:D918: FE BC 03  INC vItemPosXHigh,X                ;
C - - - - - 0x01D92B 07:D91B: 60        RTS                                ;

C - - - - - 0x01D92C 07:D91C: 20 28 D9  JSR sub_D928_correction2_ItemPosY  ; !(UNUSED)

; In: Register X - 0x00 (an index for the bomb)
sub_D91F_clear_substate:
C - - - - - 0x01D92F 07:D91F: BD 9E 03  LDA vItemStatus,X        ;
C - - - - - 0x01D932 07:D922: 29 E1     AND #$E1                 ; clear substate
C - - - - - 0x01D934 07:D924: 9D 9E 03  STA vItemStatus,X        ;
C - - - - - 0x01D937 07:D927: 60        RTS                      ;

sub_D928_correction2_ItemPosY:
bra_D928_loop:
C - - - - - 0x01D938 07:D928: BD AA 03  LDA vItemPosY,X          ; !(UNUSED)
C - - - - - 0x01D93B 07:D92B: 29 07     AND #$07                 ; !(UNUSED)
C - - - - - 0x01D93D 07:D92D: C9 07     CMP #$07                 ; !(UNUSED)
C - - - - - 0x01D93F 07:D92F: F0 05     BEQ bra_D936_RTS         ; !(UNUSED), If Register A == 0x07
C - - - - - 0x01D941 07:D931: DE AA 03  DEC vItemPosY,X          ; !(UNUSED)
C - - - - - 0x01D944 07:D934: D0 F2     BNE bra_D928_loop        ; !(UNUSED), If vItemPosY != 0x00
bra_D936_RTS:
C - - - - - 0x01D946 07:D936: 60        RTS                      ; !(UNUSED)

; In: Register X - the enemyA number
; Out: $0000 - EnemyAPosY
; Out: $0001 - EnemyAPosXLow
sub_D937_init_absolute_enemyA_positions:
C - - - - - 0x01D947 07:D937: A9 00     LDA #$00               ;
; In: Register X - the enemyA number
; In: Register A - the offset
; Out: $0000 - EnemyAPosY + the offset
; Out: $0001 - EnemyAPosXLow
sub_D939_init_relative_enemyA_positions:
C - - - - - 0x01D949 07:D939: 18        CLC                    ;
C - - - - - 0x01D94A 07:D93A: 7D 2C 03  ADC vEnemyAPosY,X      ;
C - - - - - 0x01D94D 07:D93D: 85 00     STA ram_0000           ;
; In: Register X - the enemyA number
; Out: $0001 - EnemyAPosXLow
sub_D93F_init_short_enemyA_positions:
C - - - - - 0x01D94F 07:D93F: BD 3E 03  LDA vEnemyAPosXHigh,X  ;
C - - - - - 0x01D952 07:D942: 85 4D     STA vCacheNoScreen     ;
C - - - - - 0x01D954 07:D944: BD 38 03  LDA vEnemyAPosXLow,X   ;
C - - - - - 0x01D957 07:D947: 85 01     STA ram_0001           ;
C - - - - - 0x01D959 07:D949: 60        RTS                    ;

; In: Register X - the enemyB number
; Out: $0000 - EnemyBPosY
; Out: $0001 - EnemyBPosXLow
sub_D94A_init_absolute_enemyB_positions:
C - - - - - 0x01D95A 07:D94A: A9 00     LDA #$00                  ;
C - - - - - 0x01D95C 07:D94C: 18        CLC                       ;
C - - - - - 0x01D95D 07:D94D: 7D 68 03  ADC vEnemyBPosY,X         ;
C - - - - - 0x01D960 07:D950: 85 00     STA ram_0000              ;
; In: Register X - the enemyB number
; Out: $0001 - EnemyBPosXLow
sub_D952_init_short_enemyB_positions:
C - - - - - 0x01D962 07:D952: BD 7A 03  LDA vEnemyBPosXHigh,X     ;
C - - - - - 0x01D965 07:D955: 85 4D     STA vCacheNoScreen        ;
C - - - - - 0x01D967 07:D957: BD 74 03  LDA vEnemyBPosXLow,X      ;
C - - - - - 0x01D96A 07:D95A: 85 01     STA ram_0001              ;
C - - - - - 0x01D96C 07:D95C: 60        RTS                       ;

C - - - - - 0x01D96D 07:D95D: BD AA 03  LDA vItemPosY,X           ; !(UNUSED), not used ???
C - - - - - 0x01D970 07:D960: 85 00     STA ram_0000              ; !(UNUSED), not used ???
sub_D962_init_short_character_positions:
C - - - - - 0x01D972 07:D962: BD BC 03  LDA vItemPosXHigh,X       ; !(UNUSED), not used ???
C - - - - - 0x01D975 07:D965: 85 4D     STA vCacheNoScreen        ; !(UNUSED), not used ???
C - - - - - 0x01D977 07:D967: BD B6 03  LDA vItemPosXLow,X        ; !(UNUSED), not used ???
C - - - - - 0x01D97A 07:D96A: 85 01     STA ram_0001              ; !(UNUSED), not used ???
C - - - - - 0x01D97C 07:D96C: 60        RTS                       ; !(UNUSED), not used ???

; Out: $0000 - vScreenChrPosY
; Out: $0001 - vLowChrPosX
sub_D96D_init_absolute_chr_positions:
C - - - - - 0x01D97D 07:D96D: A9 00     LDA #$00            ;
; In: Register A - ChrPosY
; Out: $0000 - vScreenChrPosY + ChrPosY
; Out: $0001 - vLowChrPosX
sub_D96F_init_relative_chr_positions:
C - - - - - 0x01D97F 07:D96F: 18        CLC                 ;
C - - - - - 0x01D980 07:D970: 65 6A     ADC vScreenChrPosY  ;
C - - - - - 0x01D982 07:D972: 85 00     STA ram_0000        ;
; Out: $0001 - vLowChrPosX
sub_D974_init_short_chr_positions:
loc_D974_init_short_chr_positions:
C D 2 - - - 0x01D984 07:D974: A5 66     LDA vLowChrPosX     ;
C - - - - - 0x01D986 07:D976: 85 01     STA ram_0001        ;
C - - - - - 0x01D988 07:D978: A5 68     LDA vHighChrPosX    ;
C - - - - - 0x01D98A 07:D97A: 85 4D     STA vCacheNoScreen  ;
C - - - - - 0x01D98C 07:D97C: 60        RTS                 ;

loc_D97D_add_flash_sprite_magic:
C D 2 - - - 0x01D98D 07:D97D: BD 86 03  LDA vEnemyBJumpCounter,X      ;
; In: Register A - the jump counter
loc_D980_add_flash_sprite_magic_ex:
C - - - - - 0x01D990 07:D980: 29 0C     AND #$0C                      ; filters (a mask)
C - - - - - 0x01D992 07:D982: 4A        LSR                           ;
C - - - - - 0x01D993 07:D983: 18        CLC                           ;
C - - - - - 0x01D994 07:D984: 69 D0     ADC #$D0                      ; A <~ (0xD0, 0xD2, 0xD4, 0xD6)
C - - - - - 0x01D996 07:D986: 4C 96 D9  JMP loc_D996_adding           ;

; In: Register Y - sprite_magic2 (The offset by the address)
loc_D989_add_enemyA_sprite_magic_v1:
C D 2 - - - 0x01D999 07:D989: BD 4A 03  LDA vEnemyAJumpCounter,X        ;
C - - - - - 0x01D99C 07:D98C: C9 1F     CMP #$1F                        ; CONSTANT - a jump moment when the sound is activated
C - - - - - 0x01D99E 07:D98E: D0 05     BNE bra_D995_no_sound           ; If vEnemyAJumpCounter != 0x1F
C - - - - - 0x01D9A0 07:D990: A9 13     LDA #$13                        ; CONSTANT - the enemy got a damage
C - - - - - 0x01D9A2 07:D992: 20 20 C4  JSR sub_C420_add_sound_effect   ;
bra_D995_no_sound:
C - - - - - 0x01D9A5 07:D995: 98        TYA                             ; Y -> sprite_magic2
; In: Register A - sprite_magic2 (The offset by the address)
loc_D996_adding:
C D 2 - - - 0x01D9A6 07:D996: 85 01     STA ram_0001                    ; ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01D9A8 07:D998: A9 41     LDA #$41                        ;
C - - - - - 0x01D9AA 07:D99A: 85 02     STA ram_0002                    ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01D9AC 07:D99C: 4C 33 CE  JMP loc_CE33_add_sprite_magic   ;

; In: Register A - The value of the counter
; in: 0x0000 - sprite magic1 (Y-position)
; in: 0x0003 - sprite magic4 (X-position)
; For example, when a diver appears
loc_D99F_add_flash_sprite:
C D 2 - - - 0x01D9AF 07:D99F: 29 0C     AND #$0C                        ; filters (a mask)
C - - - - - 0x01D9B1 07:D9A1: 4A        LSR                             ;
C - - - - - 0x01D9B2 07:D9A2: 18        CLC                             ;
C - - - - - 0x01D9B3 07:D9A3: 69 D0     ADC #$D0                        ; ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01D9B5 07:D9A5: 85 01     STA ram_0001                    ; <~ (0xD0, 0xD2, 0xD4, 0xD6)
C - - - - - 0x01D9B7 07:D9A7: A9 40     LDA #$40                        ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01D9B9 07:D9A9: 85 02     STA ram_0002                    ;
C - - - - - 0x01D9BB 07:D9AB: 4C 33 CE  JMP loc_CE33_add_sprite_magic   ;

sub_D9AE_inc_enemyA_frame_counter:
loc_D9AE_inc_enemyA_frame_counter:
C D 2 - - - 0x01D9BE 07:D9AE: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01D9C0 07:D9B0: 29 07     AND #$07                        ;
C - - - - - 0x01D9C2 07:D9B2: D0 0F     BNE bra_D9C3_RTS                ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0)
C - - - - - 0x01D9C4 07:D9B4: FE 44 03  INC vEnemyAFrame_Counter,X      ;
C - - - - - 0x01D9C7 07:D9B7: BD 44 03  LDA vEnemyAFrame_Counter,X      ;
C - - - - - 0x01D9CA 07:D9BA: C9 03     CMP #$03                        ; CONSTANT - Max value
C - - - - - 0x01D9CC 07:D9BC: 90 05     BCC bra_D9C3_RTS                ; If vEnemyAFrame_Counter < 0x03
C - - - - - 0x01D9CE 07:D9BE: A9 00     LDA #$00                        ;
C - - - - - 0x01D9D0 07:D9C0: 9D 44 03  STA vEnemyAFrame_Counter,X      ; reset a counter
bra_D9C3_RTS:
C - - - - - 0x01D9D3 07:D9C3: 60        RTS                             ;

sub_D9C4_inc_enemyB_frame_counter:
C - - - - - 0x01D9D4 07:D9C4: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01D9D6 07:D9C6: 29 07     AND #$07                        ;
C - - - - - 0x01D9D8 07:D9C8: D0 F9     BNE bra_D9C3_RTS                ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0)
C - - - - - 0x01D9DA 07:D9CA: FE 80 03  INC vEnemyBFrame_Counter,X      ;
C - - - - - 0x01D9DD 07:D9CD: BD 80 03  LDA vEnemyBFrame_Counter,X      ;
C - - - - - 0x01D9E0 07:D9D0: C9 03     CMP #$03                        ; CONSTANT - Max value
C - - - - - 0x01D9E2 07:D9D2: 90 EF     BCC bra_D9C3_RTS                ; If vEnemyBFrame_Counter < 0x03
C - - - - - 0x01D9E4 07:D9D4: A9 00     LDA #$00                        ;
C - - - - - 0x01D9E6 07:D9D6: 9D 80 03  STA vEnemyBFrame_Counter,X      ; reset a counter
C - - - - - 0x01D9E9 07:D9D9: 60        RTS                             ;

; In: $00D7 - noScreen
; Out: carry flag - 1, if the screen has the water gap, otherwise - 0.
sub_D9DA_screen_with_water_gap:
C - - - - - 0x01D9EA 07:D9DA: A5 46     LDA vNoRoom                ;
C - - - - - 0x01D9EC 07:D9DC: C9 07     CMP #$07                   ; CONSTANT - level 2 (1-3)
C - - - - - 0x01D9EE 07:D9DE: 90 08     BCC bra_D9E8_return_false  ; If vNoRoom < 0x07
C - - - - - 0x01D9F0 07:D9E0: C9 14     CMP #$14                   ; CONSTANT - the boss room from level 4.0
C - - - - - 0x01D9F2 07:D9E2: 90 06     BCC bra_D9EA_return_true   ; If vNoRoom < 0x14
C - - - - - 0x01D9F4 07:D9E4: C9 42     CMP #$42                   ; CONSTANT - level 4, map 1 (B2-D2)
C - - - - - 0x01D9F6 07:D9E6: B0 04     BCS bra_D9EC               ; If vNoRoom >= 0x42
bra_D9E8_return_false:
C - - - - - 0x01D9F8 07:D9E8: 18        CLC                        ;
C - - - - - 0x01D9F9 07:D9E9: 60        RTS                        ;

bra_D9EA_return_true:
C - - - - - 0x01D9FA 07:D9EA: 38        SEC                        ;
C - - - - - 0x01D9FB 07:D9EB: 60        RTS                        ;

; In: $00D7 - noScreen
bra_D9EC:
C - - - - - 0x01D9FC 07:D9EC: 38        SEC                                             ;
C - - - - - 0x01D9FD 07:D9ED: E9 42     SBC #$42                                        ; A <~ vNoRoom - 0x42
C - - - - - 0x01D9FF 07:D9EF: 48        PHA                                             ; store A
C - - - - - 0x01DA00 07:D9F0: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1                   ;
C - - - - - 0x01DA03 07:D9F3: 68        PLA                                             ; retrieve A (see $D9EF)
C - - - - - 0x01DA04 07:D9F4: 0A        ASL                                             ; *2, because the address have 2 bytes
C - - - - - 0x01DA05 07:D9F5: A8        TAY                                             ;
C - - - - - 0x01DA06 07:D9F6: B9 1A 96  LDA tbl_water_gap_level4,Y                      ;
C - - - - - 0x01DA09 07:D9F9: 85 12     STA $0012                                       ;
C - - - - - 0x01DA0B 07:D9FB: B9 1B 96  LDA tbl_water_gap_level4 + 1,Y                  ;
C - - - - - 0x01DA0E 07:D9FE: 85 13     STA $0013                                       ;
C - - - - - 0x01DA10 07:DA00: A0 00     LDY #$00                                        ; set loop counter
bra_DA02_loop:
C - - - - - 0x01DA12 07:DA02: B1 12     LDA ($0012),Y                                   ;
C - - - - - 0x01DA14 07:DA04: 10 05     BPL bra_DA0B_valid                              ; If the number of the screen >= 0x00
C - - - - - 0x01DA16 07:DA06: 20 5D EF  JSR sub_EF5D_switch_variable_bank               ; restore page $8000-$9FFF
C - - - - - 0x01DA19 07:DA09: 18        CLC                                             ; return false
C - - - - - 0x01DA1A 07:DA0A: 60        RTS                                             ;

; In: $00D7 - noScreen
bra_DA0B_valid:
C - - - - - 0x01DA1B 07:DA0B: C5 D7     CMP ram_00D7                                    ;
C - - - - - 0x01DA1D 07:DA0D: F0 03     BEQ @bra_DA12_break                             ; If the screen value == input noScreen
C - - - - - 0x01DA1F 07:DA0F: C8        INY                                             ; increment loop counter
C - - - - - 0x01DA20 07:DA10: D0 F0     BNE bra_DA02_loop                               ; If Register Y != 0x00
@bra_DA12_break:
C - - - - - 0x01DA22 07:DA12: 20 5D EF  JSR sub_EF5D_switch_variable_bank               ; restore page $8000-$9FFF
C - - - - - 0x01DA25 07:DA15: 38        SEC                                             ; return true
C - - - - - 0x01DA26 07:DA16: 60        RTS                                             ;

; In: Register A - the enemyA status
; In: Register Y - enemy type A
; In: Register X - the enemyA number
sub_DA17_add_enemy_score:
C - - - - - 0x01DA27 07:DA17: 29 20     AND #$20                                ; CONSTANT - it's getting damage (see vEnemyAStatus)
C - - - - - 0x01DA29 07:DA19: F0 CD     BEQ bra_D9E8_return_false               ; If the enemy didn't get damage
C - - - - - 0x01DA2B 07:DA1B: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1           ;
C - - - - - 0x01DA2E 07:DA1E: B9 E0 95  LDA tbl_enemy_score,Y                   ;
C - - - - - 0x01DA31 07:DA21: A8        TAY                                     ; Y <~ Score value
C - - - - - 0x01DA32 07:DA22: D0 01     BNE bra_DA25_add_score                  ;
C - - - - - 0x01DA34 07:DA24: 60        RTS                                     ;

bra_DA25_add_score:
C - - - - - 0x01DA35 07:DA25: 4C 47 C9  JMP loc_C947_add_score                  ;

; In: Register Y - a start index
; In: Register A - the counter value
; Out: Register Y - sprite_magic2
sub_DA28_get_explode_sprite_magic2:
@bra_DA28_loop:
C - - - - - 0x01DA38 07:DA28: D9 C0 DA  CMP tbl_DAC0_counter_values,Y  ;
C - - - - - 0x01DA3B 07:DA2B: B0 03     BCS bra_DA30_found             ; If the target value >= value from the table
C - - - - - 0x01DA3D 07:DA2D: C8        INY                            ; increment loop counter
C - - - - - 0x01DA3E 07:DA2E: D0 F8     BNE @bra_DA28_loop             ; If Register Y != 0x00
bra_DA30_found:
C - - - - - 0x01DA40 07:DA30: B9 C5 DA  LDA tbl_DAC5_offsets,Y         ;
C - - - - - 0x01DA43 07:DA33: 18        CLC                            ;
C - - - - - 0x01DA44 07:DA34: 69 74     ADC #$74                       ;
C - - - - - 0x01DA46 07:DA36: A8        TAY                            ; Y <~ 0x74 + offset
C - - - - - 0x01DA47 07:DA37: 60        RTS                            ;

; In: Register X - 0x00 (an index for the bomb)
loc_DA38_status_behavior:
C D 2 - - - 0x01DA48 07:DA38: BD 9E 03  LDA vItemStatus,X                ;
C - - - - - 0x01DA4B 07:DA3B: 29 02     AND #$02                         ; CONSTANT - 'waiting for the explosion' status
C - - - - - 0x01DA4D 07:DA3D: F0 6C     BEQ bra_DAAB_exploding           ; If 'waiting for the explosion' status status isn't activated
C - - - - - 0x01DA4F 07:DA3F: DE C8 03  DEC vItemJumpCounter,X           ; updates the counter before exploding
C - - - - - 0x01DA52 07:DA42: D0 1A     BNE bra_DA5E_render              ; If vJumpCounter != 0x00
C - - - - - 0x01DA54 07:DA44: AD 31 06  LDA vHighPpuAddress              ;
C - - - - - 0x01DA57 07:DA47: F0 05     BEQ bra_DA4E_start_explode       ; If main render mode is used (see sub_D11B_shared_render)
C - - - - - 0x01DA59 07:DA49: FE C8 03  INC vItemJumpCounter,X           ;
C - - - - - 0x01DA5C 07:DA4C: D0 10     BNE bra_DA5E_render              ; Always true (vJumpCounter == 1)

bra_DA4E_start_explode:
C - - - - - 0x01DA5E 07:DA4E: 20 CD F9  JSR sub_F9CD_try_to_destroy_wall ;
C - - - - - 0x01DA61 07:DA51: 20 1F D9  JSR sub_D91F_clear_substate      ;
C - - - - - 0x01DA64 07:DA54: A9 10     LDA #$10                         ;
C - - - - - 0x01DA66 07:DA56: 9D C8 03  STA vItemJumpCounter,X           ; Initializes a jump counter for the explode
C - - - - - 0x01DA69 07:DA59: A9 0F     LDA #$0F                         ; CONSTANT - the exploding sound
C - - - - - 0x01DA6B 07:DA5B: 20 20 C4  JSR sub_C420_add_sound_effect    ;
bra_DA5E_render:
C - - - - - 0x01DA6E 07:DA5E: A0 64     LDY #$64                         ; prepare an input parameter (an index for the exploding)
; In: Register X - 0x00 (an index for the bomb)
; In: Register Y - sprite_magic2 (The offset by the address)
loc_DA60_prepare_rendering:
C D 2 - - - 0x01DA70 07:DA60: BD B6 03  LDA vItemPosXLow,X               ;
C - - - - - 0x01DA73 07:DA63: 85 00     STA ram_0000                     ; prepares the 1st parameter
C - - - - - 0x01DA75 07:DA65: BD BC 03  LDA vItemPosXHigh,X              ;
C - - - - - 0x01DA78 07:DA68: 85 01     STA ram_0001                     ; prepares the 2nd parameter
C - - - - - 0x01DA7A 07:DA6A: 20 AC D6  JSR sub_D6AC_out_of_screen       ;
C - - - - - 0x01DA7D 07:DA6D: 90 03     BCC bra_DA72_skip                ; If the item is on the screen
C - - - - - 0x01DA7F 07:DA6F: 4C 88 DA  JMP loc_DA88_clear               ;

bra_DA72_skip:
C - - - - - 0x01DA82 07:DA72: BD AA 03  LDA vItemPosY,X                  ;
C - - - - - 0x01DA85 07:DA75: 85 00     STA ram_0000                     ; ~> sprite magic1
C - - - - - 0x01DA87 07:DA77: A5 03     LDA ram_0003                     ; from sub_D6AC_out_of_screen
C - - - - - 0x01DA89 07:DA79: 9D B0 03  STA vItemScreenPosX,X            ;
; In: Register Y - sprite_magic2 (The offset by the address)
loc_DA7C_add_sprite_magic_in_05_p1:
C D 2 - - - 0x01DA8C 07:DA7C: 84 01     STY ram_0001                     ;
C - - - - - 0x01DA8E 07:DA7E: A9 60     LDA #$60                         ; ~> sprite_magic3
C - - - - - 0x01DA90 07:DA80: 85 02     STA ram_0002                     ;
C - - - - - 0x01DA92 07:DA82: 4C 33 CE  JMP loc_CE33_add_sprite_magic    ;

bra_DA85_finish_exploding:
C - - - - - 0x01DA95 07:DA85: 20 9F DA  JSR sub_DA9F_restore_palette               ;
; In: Register X - 0x00 (an index for the bomb)
loc_DA88_clear:
C - - - - - 0x01DA98 07:DA88: A9 00     LDA #$00                                   ;
C - - - - - 0x01DA9A 07:DA8A: 9D 9E 03  STA vItemStatus,X                          ; clear
C - - - - - 0x01DA9D 07:DA8D: 4C F3 CD  JMP loc_CDF3_deactivate_activable_items_ex ;

; In: Register A - vItemJumpCounter for the bomb
sub_DA90_try_to_render_flash:
C - - - - - 0x01DAA0 07:DA90: 29 04     AND #$04                       ;
C - - - - - 0x01DAA2 07:DA92: F0 0B     BEQ bra_DA9F_restore_palette   ; Branch every 4 times after 4 (after updating vItemJumpCounter)
C - - - - - 0x01DAA4 07:DA94: A0 0B     LDY #$0B                       ; set loop counter
C - - - - - 0x01DAA6 07:DA96: A9 30     LDA #$30                       ; CONSTANT - white color (lightning flash effect)
@bra_DA98_loop:
C - - - - - 0x01DAA8 07:DA98: 99 04 06  STA vCachePalette + 4,Y        ; <~ 0x30
C - - - - - 0x01DAAB 07:DA9B: 88        DEY                            ; decrement loop counter
C - - - - - 0x01DAAC 07:DA9C: 10 FA     BPL @bra_DA98_loop             ; If Register Y >= 0x00
C - - - - - 0x01DAAE 07:DA9E: 60        RTS                            ;

bra_DA9F_restore_palette:
sub_DA9F_restore_palette:
C - - - - - 0x01DAAF 07:DA9F: A0 0B     LDY #$0B                       ; set loop counter
@bra_DAA1_loop:
C - - - - - 0x01DAB1 07:DAA1: B9 20 06  LDA vTempCachePalette,Y        ;
C - - - - - 0x01DAB4 07:DAA4: 99 04 06  STA vCachePalette + 4,Y        ; restore from the cache
C - - - - - 0x01DAB7 07:DAA7: 88        DEY                            ; decrement loop counter
C - - - - - 0x01DAB8 07:DAA8: 10 F7     BPL @bra_DAA1_loop             ; If Register Y >= 0x00
C - - - - - 0x01DABA 07:DAAA: 60        RTS                            ;

; In: Register X - 0x00 (an index for the bomb)
bra_DAAB_exploding:
C - - - - - 0x01DABB 07:DAAB: DE C8 03  DEC vItemJumpCounter,X                  ;
C - - - - - 0x01DABE 07:DAAE: F0 D5     BEQ bra_DA85_finish_exploding           ; If vJumpCounter == 0x00
C - - - - - 0x01DAC0 07:DAB0: BD C8 03  LDA vItemJumpCounter,X                  ;
C - - - - - 0x01DAC3 07:DAB3: 48        PHA                                     ; store vJumpCounter
C - - - - - 0x01DAC4 07:DAB4: 20 90 DA  JSR sub_DA90_try_to_render_flash        ;
C - - - - - 0x01DAC7 07:DAB7: 68        PLA                                     ; retrieve vJumpCounter (see $DAB3)
C - - - - - 0x01DAC8 07:DAB8: A0 00     LDY #$00                                ; prepare an input parameter (a start index)
C - - - - - 0x01DACA 07:DABA: 20 28 DA  JSR sub_DA28_get_explode_sprite_magic2  ;
C - - - - - 0x01DACD 07:DABD: 4C 60 DA  JMP loc_DA60_prepare_rendering          ;

tbl_DAC0_counter_values:
- D 2 - - - 0x01DAD0 07:DAC0: 0E        .byte $0E, $0C, $08, $04, $00

tbl_DAC5_offsets:
- D 2 - - - 0x01DAD5 07:DAC5: 00        .byte $00, $02, $04, $06, $08  ; offsets #1
- D 2 - - - 0x01DADA 07:DACA: 08        .byte $08, $08, $04, $04, $00  ; counter values for bra_ABBB (3 bank, 2 page)
- D 2 - - - 0x01DADF 07:DACF: 0A        .byte $0A, $0A, $0C, $0C, $0E  ; offsets #2

; 1st - the offset by position Y
; 2nd - the offset by position X
tbl_flying_track_offset:
- D 2 - - - 0x01DAE4 07:DAD4: FE        .byte $FE, $00
- D 2 - - - 0x01DAE6 07:DAD6: FE        .byte $FE, $01
- D 2 - - - 0x01DAE8 07:DAD8: FE        .byte $FE, $02
- D 2 - - - 0x01DAEA 07:DADA: FF        .byte $FF, $02
- D 2 - - - 0x01DAEC 07:DADC: 00        .byte $00, $02
- D 2 - - - 0x01DAEE 07:DADE: 01        .byte $01, $02
- D 2 - - - 0x01DAF0 07:DAE0: 02        .byte $02, $02
- D 2 - - - 0x01DAF2 07:DAE2: 02        .byte $02, $01
- D 2 - - - 0x01DAF4 07:DAE4: 02        .byte $02, $00
- D 2 - - - 0x01DAF6 07:DAE6: 02        .byte $02, $FF
- D 2 - - - 0x01DAF8 07:DAE8: 02        .byte $02, $FE
- D 2 - - - 0x01DAFA 07:DAEA: 01        .byte $01, $FE
- D 2 - - - 0x01DAFC 07:DAEC: 00        .byte $00, $FE
- D 2 - - - 0x01DAFE 07:DAEE: FF        .byte $FF, $FE
- D 2 - - - 0x01DB00 07:DAF0: FE        .byte $FE, $FE
- D 2 - - - 0x01DB02 07:DAF2: FE        .byte $FE, $FF

sub_DAF4_character_subroutine:
C - - - - - 0x01DB04 07:DAF4: 20 A6 E2  JSR sub_E2A6_test_feature_smth    ;
C - - - - - 0x01DB07 07:DAF7: A9 00     LDA #$00                          ; 
C - - - - - 0x01DB09 07:DAF9: 85 48     STA vScrollDirection              ; none (see vScrollDirection)
C - - - - - 0x01DB0B 07:DAFB: 85 79     STA vChrAllowedStatus             ; set 'the character isn't allowed the hit'
C - - - - - 0x01DB0D 07:DAFD: A5 46     LDA vNoRoom                       ;
C - - - - - 0x01DB0F 07:DAFF: D0 0C     BNE bra_DB0D_skip                 ; If vNoRoom != 0x00 (level 1.0)
C - - - - - 0x01DB11 07:DB01: 20 0E E3  JSR sub_E30E_fix_colors_in_level1 ;
C - - - - - 0x01DB14 07:DB04: A5 6D     LDA vMovableChrStatus             ;
C - - - - - 0x01DB16 07:DB06: 29 20     AND #$20                          ; CONSTANT - the character is moving on the roof pitch
C - - - - - 0x01DB18 07:DB08: F0 0A     BEQ bra_DB14_skip                 ; If vMovableChrStatus doesn't contains 0x02
C - - - - - 0x01DB1A 07:DB0A: 4C 10 E8  JMP loc_E810_on_the_roof_pitch    ;

bra_DB0D_skip:
C - - - - - 0x01DB1D 07:DB0D: C9 19     CMP #$19                    ; CONSTANT - level racing
C - - - - - 0x01DB1F 07:DB0F: D0 03     BNE bra_DB14_skip           ; If vNoRoom != 0x19
C - - - - - 0x01DB21 07:DB11: 4C DA E8  JMP loc_E8DA_racing         ;

bra_DB14_skip:
C - - - - - 0x01DB24 07:DB14: 24 6D     BIT vMovableChrStatus       ;
C - - - - - 0x01DB26 07:DB16: 10 03     BPL bra_DB1B_skip           ; If the character isn't moving in the water
C - - - - - 0x01DB28 07:DB18: 4C BB E3  JMP loc_E3BB_in_the_water   ;

bra_DB1B_skip:
C - - - - - 0x01DB2B 07:DB1B: 50 03     BVC bra_DB20_skip           ; If the character isn't moving on the balloon
C - - - - - 0x01DB2D 07:DB1D: 4C 47 E8  JMP loc_E847_on_the_balloon ;

bra_DB20_skip:
C - - - - - 0x01DB30 07:DB20: AD 14 02  LDA vCurrentWeaponStatus    ;
C - - - - - 0x01DB33 07:DB23: C9 43     CMP #$43                    ; CONSTANT - 'the weapon is activated' + 'Using the jet-pack'
C - - - - - 0x01DB35 07:DB25: D0 03     BNE bra_DB2A_skip           ; If the character isn't using the jet-pack
C - - - - - 0x01DB37 07:DB27: 4C 24 E6  JMP loc_E624_jet_pack       ;

bra_DB2A_skip:
C - - - - - 0x01DB3A 07:DB2A: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01DB3C 07:DB2C: 29 7F     AND #$7F                             ;
C - - - - - 0x01DB3E 07:DB2E: 20 5F D0  JSR sub_accumulator_shift_right_by_4 ; Register A <~ { 0x00, 0x01, 0x02, ..., 0x07 }
C - - - - - 0x01DB41 07:DB31: 20 C1 D0  JSR sub_D0C1_change_stack_pointer    ;

- D 2 - I - 0x01DB44 07:DB34: 43 DB     .addr loc_DB44_main - 1                ; 0x00, by default
- D 2 - I - 0x01DB46 07:DB36: A6 DD     .addr loc_DDA7_jumping - 1             ; 0x1X
- D 2 - I - 0x01DB48 07:DB38: 8C DF     .addr loc_DF8D_enter_corridor - 1      ; 0x2X
- D 2 - I - 0x01DB4A 07:DB3A: A8 DE     .addr loc_DEA9_died_subroutine_bf2 - 1 ; 0x3X
- D - - - - 0x01DB4C 07:DB3C: 39 E0     .addr loc_E03A_unknown - 1             ; 0x4X
- D - - - - 0x01DB4E 07:DB3E: 43 DB     .addr loc_DB44_main - 1
- D - - - - 0x01DB50 07:DB40: 43 DB     .addr loc_DB44_main - 1
- D - - - - 0x01DB52 07:DB42: 43 DB     .addr loc_DB44_main - 1

loc_DB44_main:
C - - - - - 0x01DB54 07:DB44: A9 00     LDA #$00                                  ; prepare an input parameter
C - - - - - 0x01DB56 07:DB46: 20 AB E5  JSR sub_E5AB_short_collision_by_increment ; Check collisions in vScreenChrPosY + 4 and vScreenChrPosY - 4
C - - - - - 0x01DB59 07:DB49: D0 07     BNE bra_DB52_collisions                   ; If collisions exist
loc_DB4B_jumping_off:
C D 2 - - - 0x01DB5B 07:DB4B: A9 1C     LDA #$1C                                  ; prepare a jump counter
C - - - - - 0x01DB5D 07:DB4D: A0 02     LDY #$02                                  ; prepare a jump type (CONSTANT - jumping off)
C - - - - - 0x01DB5F 07:DB4F: 4C 9D DD  JMP loc_DD9D_assigned_jump_subroutine     ;

bra_DB52_collisions:
C - - - - - 0x01DB62 07:DB52: AD 14 02  LDA vCurrentWeaponStatus    ;
C - - - - - 0x01DB65 07:DB55: C9 42     CMP #$42                    ; CONSTANT - The rifle is current and activated
C - - - - - 0x01DB67 07:DB57: D0 07     BNE bra_DB60_skip           ; If vCurrentWeaponStatus != 0x42
C - - - - - 0x01DB69 07:DB59: A5 73     LDA vRifleFireCounter       ;
C - - - - - 0x01DB6B 07:DB5B: F0 03     BEQ bra_DB60_skip           ; If RifleFire is timeout
C - - - - - 0x01DB6D 07:DB5D: 4C FB B1  JMP loc_B1FB_rifle          ; to bank 06_02

bra_DB60_skip:
C - - - - - 0x01DB70 07:DB60: A9 01     LDA #BIT_BUTTON_A               ;
C - - - - - 0x01DB72 07:DB62: 20 79 D0  JSR sub_D079_check_button_press ;
C - - - - - 0x01DB75 07:DB65: F0 03     BEQ bra_DB6A_skip               ; Go to the branch If the button 'A' isn't pressed
C - - - - - 0x01DB77 07:DB67: 4C 87 DD  JMP loc_DD87_jump_subroutine    ;

bra_DB6A_skip:
C - - - - - 0x01DB7A 07:DB6A: AD 14 02  LDA vCurrentWeaponStatus              ;
C - - - - - 0x01DB7D 07:DB6D: C9 42     CMP #$42                              ; CONSTANT - The rifle is current and activated
C - - - - - 0x01DB7F 07:DB6F: F0 2C     BEQ bra_DB9D_skip                     ; If vCurrentWeaponStatus == 0x42
C - - - - - 0x01DB81 07:DB71: A9 10     LDA #BIT_BUTTON_Up                    ;
C - - - - - 0x01DB83 07:DB73: 20 79 D0  JSR sub_D079_check_button_press       ;
C - - - - - 0x01DB86 07:DB76: F0 1B     BEQ bra_DB93_skip                     ; Go to the branch If the button 'Up' isn't pressed
C - - - - - 0x01DB88 07:DB78: 20 28 FC  JSR sub_FC28_in_room_with_boss        ;
C - - - - - 0x01DB8B 07:DB7B: B0 16     BCS bra_DB93_skip                     ; If the current room is the room with boss
C - - - - - 0x01DB8D 07:DB7D: 20 1A F9  JSR sub_F91A_has_entered_the_corridor ;
C - - - - - 0x01DB90 07:DB80: 90 11     BCC bra_DB93_skip                     ; If the character isn't entering a corridor
C - - - - - 0x01DB92 07:DB82: A5 6C     LDA vChrStatus                        ;
C - - - - - 0x01DB94 07:DB84: 09 20     ORA #$20                              ; CONSTANT - the character is entering a corridor
C - - - - - 0x01DB96 07:DB86: 85 6C     STA vChrStatus                        ;
C - - - - - 0x01DB98 07:DB88: A9 00     LDA #$00                              ;
C - - - - - 0x01DB9A 07:DB8A: 85 70     STA vChrFrame_Counter                 ; reset a frame for the entering a corridor
C - - - - - 0x01DB9C 07:DB8C: A9 40     LDA #$40                              ;
C - - - - - 0x01DB9E 07:DB8E: 85 2E     STA vCorridorCounter                  ; Initializes a counter for the entering a corridor
C - - - - - 0x01DBA0 07:DB90: 4C 8D DF  JMP loc_DF8D_enter_corridor           ;

bra_DB93_skip:
C - - - - - 0x01DBA3 07:DB93: A9 80     LDA #$80                               ; CONSTANT -  the character is allowed the hit
C - - - - - 0x01DBA5 07:DB95: 85 79     STA vChrAllowedStatus                  ;
C - - - - - 0x01DBA7 07:DB97: A5 1C     LDA vBtnPressedInGame                  ;
C - - - - - 0x01DBA9 07:DB99: 29 20     AND #BIT_BUTTON_Down                   ;
C - - - - - 0x01DBAB 07:DB9B: D0 17     BNE bra_DBB4_down                      ; If the button 'Down' is pressed
bra_DB9D_skip:
C - - - - - 0x01DBAD 07:DB9D: A9 80     LDA #$80                               ; CONSTANT -  the character is allowed the hit
C - - - - - 0x01DBAF 07:DB9F: 85 79     STA vChrAllowedStatus                  ;
C - - - - - 0x01DBB1 07:DBA1: A5 6C     LDA vChrStatus                         ;
C - - - - - 0x01DBB3 07:DBA3: 29 FD     AND #$FD                               ;
C - - - - - 0x01DBB5 07:DBA5: 85 6C     STA vChrStatus                         ; We stand up the character, he no longer sits
C - - - - - 0x01DBB7 07:DBA7: A5 1C     LDA vBtnPressedInGame                  ;
C - - - - - 0x01DBB9 07:DBA9: 29 C0     AND #BIT_BUTTON_Left_OR_Right          ;
C - - - - - 0x01DBBB 07:DBAB: F0 03     BEQ bra_DBB0_skip                      ; If the button 'Left' or 'Right' isn't pressed
C - - - - - 0x01DBBD 07:DBAD: 4C 52 DC  JMP loc_DC52_horiz_movement_subroutine ;

bra_DBB0_skip:
C - - - - - 0x01DBC0 07:DBB0: A2 00     LDX #$00                             ;   
C - - - - - 0x01DBC2 07:DBB2: F0 0B     BEQ bra_DBBF_skip                    ; Always true

bra_DBB4_down:
C - - - - - 0x01DBC4 07:DBB4: A5 6C     LDA vChrStatus                           ;
C - - - - - 0x01DBC6 07:DBB6: 09 02     ORA #$02                                 ; CONSTANT - the character is sitting
C - - - - - 0x01DBC8 07:DBB8: 85 6C     STA vChrStatus                           ; 
C - - - - - 0x01DBCA 07:DBBA: 20 63 DF  JSR sub_DF63_update_left_right_direction ;
C - - - - - 0x01DBCD 07:DBBD: A2 14     LDX #$14                                 ; the offset of the sprite address
bra_DBBF_skip:
C - - - - - 0x01DBCF 07:DBBF: 20 F1 DC  JSR sub_DCF1_reset_velocity              ;
; in: Register X - the offset of the sprite address
loc_DBC2_before_rendering:
C D 2 - - - 0x01DBD2 07:DBC2: A5 6C     LDA vChrStatus                               ;
C - - - - - 0x01DBD4 07:DBC4: 29 08     AND #$08                                     ; CONSTANT - the character is getting damage
C - - - - - 0x01DBD6 07:DBC6: D0 07     BNE bra_DBCF_skip                            ; If the character is getting damage
C - - - - - 0x01DBD8 07:DBC8: 8A        TXA                                          ;
C - - - - - 0x01DBD9 07:DBC9: 48        PHA                                          ; deposit x
C - - - - - 0x01DBDA 07:DBCA: 20 4C E0  JSR sub_E04C_try_to_activate_personal_weapon ;
C - - - - - 0x01DBDD 07:DBCD: 68        PLA                                          ;
C - - - - - 0x01DBDE 07:DBCE: AA        TAX                                          ; retrieve x (see DBC9)
bra_DBCF_skip:
C - - - - - 0x01DBDF 07:DBCF: A5 6A     LDA vScreenChrPosY                           ;
C - - - - - 0x01DBE1 07:DBD1: 85 00     STA ram_0000                                 ; prepare an input parameter
C - - - - - 0x01DBE3 07:DBD3: A5 64     LDA vScreenChrPosX                           ;
C - - - - - 0x01DBE5 07:DBD5: 85 01     STA ram_0001                                 ; prepare an input parameter
C - - - - - 0x01DBE7 07:DBD7: A5 6C     LDA vChrStatus                               ;
C - - - - - 0x01DBE9 07:DBD9: 29 70     AND #$70                                     ;
C - - - - - 0x01DBEB 07:DBDB: C9 20     CMP #$20                                     ; CONSTANT - 'the character is entering a corridor or hiding place'
C - - - - - 0x01DBED 07:DBDD: F0 07     BEQ @bra_DBE6_skip                           ; If vChrStatus = 0x2X
C - - - - - 0x01DBEF 07:DBDF: A5 6C     LDA vChrStatus                               ; 
C - - - - - 0x01DBF1 07:DBE1: 6A        ROR                                          ; 
C - - - - - 0x01DBF2 07:DBE2: 90 02     BCC @bra_DBE6_skip                           ; If the character is looking to the right
C - - - - - 0x01DBF4 07:DBE4: E8        INX                                          ;
C - - - - - 0x01DBF5 07:DBE5: E8        INX                                          ; increment the offset of the sprite address (left frame)
@bra_DBE6_skip:
C - - - - - 0x01DBF6 07:DBE6: A5 5F     LDA vChrLiveStatus                           ;
C - - - - - 0x01DBF8 07:DBE8: 29 02     AND #$02                                     ; CONSTANT - Goemon
C - - - - - 0x01DBFA 07:DBEA: F0 03     BEQ bra_DBEF_skip                            ; If the character isn't Goemon
C - - - - - 0x01DBFC 07:DBEC: 4C 1C E2  JMP loc_E21C_goemon                          ;

; in: Register X - the offset of the sprite address
; in: 0x0000 - The character's position along the Y axis relative to the screen
; in: 0x0001 - The character's position along the X axis relative to the screen
bra_DBEF_skip:
C - - - - - 0x01DBFF 07:DBEF: AC 14 02  LDY vCurrentWeaponStatus        ;
C - - - - - 0x01DC02 07:DBF2: A9 40     LDA #$40                        ; AA = 0, LL = 1 (see vCharacterRenderData, $81XX)
C - - - - - 0x01DC04 07:DBF4: C0 42     CPY #$42                        ; CONSTANT - The artillery rifle is activated
C - - - - - 0x01DC06 07:DBF6: F0 1B     BEQ bra_DC13_rifle              ; If Register Y == #$42
C - - - - - 0x01DC08 07:DBF8: 24 6D     BIT vMovableChrStatus           ;
C - - - - - 0x01DC0A 07:DBFA: 70 28     BVS bra_DC24_balloon            ; If the character is moving on the balloon
C - - - - - 0x01DC0C 07:DBFC: 30 02     BMI @bra_DC00_skip              ; If the character is moving in the water
C - - - - - 0x01DC0E 07:DBFE: A9 01     LDA #$01                        ; AA = 1, LL = 0 (see vCharacterRenderData, $80XX)
@bra_DC00_skip:
C - - - - - 0x01DC10 07:DC00: 85 45     STA vCharacterRenderData        ;
C - - - - - 0x01DC12 07:DC02: 20 5A CE  JSR sub_CE5A_render_character   ;
loc_DC05_bullets_subroutine_bf:
C D 2 - - - 0x01DC15 07:DC05: A2 00     LDX #$00                        ; 1 bullet
C - - - - - 0x01DC17 07:DC07: A5 5F     LDA vChrLiveStatus              ;
C - - - - - 0x01DC19 07:DC09: 6A        ROR                             ;
C - - - - - 0x01DC1A 07:DC0A: 90 02     BCC @bra_DC0E_skip              ; If a current character isn't Jigen
C - - - - - 0x01DC1C 07:DC0C: A2 02     LDX #$02                        ; 3 bullets
@bra_DC0E_skip:
C - - - - - 0x01DC1E 07:DC0E: 86 7A     STX vBulletCount                ;
C - - - - - 0x01DC20 07:DC10: 4C 32 E1  JMP loc_E132_bullets_subroutine ;

bra_DC13_rifle:
C - - - - - 0x01DC23 07:DC13: 85 45     STA vCharacterRenderData          ; 
C - - - - - 0x01DC25 07:DC15: 8A        TXA                               ;
C - - - - - 0x01DC26 07:DC16: 18        CLC                               ;
C - - - - - 0x01DC27 07:DC17: 69 3A     ADC #$3A                          ; see bank 05, page 1, $813A
C - - - - - 0x01DC29 07:DC19: AA        TAX                               ; increment the offset of the sprite address
; In: Register X - increment the offset of the sprite address
loc_DC1A_render_character_and_bullets:
C D 2 - - - 0x01DC2A 07:DC1A: 20 5A CE  JSR sub_CE5A_render_character     ;
C - - - - - 0x01DC2D 07:DC1D: A2 04     LDX #$04                          ; 5 bullets
C - - - - - 0x01DC2F 07:DC1F: 86 7A     STX vBulletCount                  ; 
C - - - - - 0x01DC31 07:DC21: 4C 32 E1  JMP loc_E132_bullets_subroutine   ;

bra_DC24_balloon:
C - - - - - 0x01DC34 07:DC24: 85 45     STA vCharacterRenderData                   ;
C - - - - - 0x01DC36 07:DC26: 8A        TXA                                        ;
C - - - - - 0x01DC37 07:DC27: 48        PHA                                        ; store x
C - - - - - 0x01DC38 07:DC28: 20 3B DC  JSR sub_DC3B_render_balloon                ;
C - - - - - 0x01DC3B 07:DC2B: A5 6A     LDA vScreenChrPosY                         ;
C - - - - - 0x01DC3D 07:DC2D: 85 00     STA ram_0000                               ; prepare an input parameter (for render)
C - - - - - 0x01DC3F 07:DC2F: A5 64     LDA vScreenChrPosX                         ;
C - - - - - 0x01DC41 07:DC31: 85 01     STA ram_0001                               ; prepare an input parameter (for render)
C - - - - - 0x01DC43 07:DC33: 68        PLA                                        ; retrieve x (see DC27)
C - - - - - 0x01DC44 07:DC34: 18        CLC                                        ;
C - - - - - 0x01DC45 07:DC35: 69 52     ADC #$52                                   ; see bank 05, page 1, $8152
C - - - - - 0x01DC47 07:DC37: AA        TAX                                        ; increment the offset of the sprite address
C - - - - - 0x01DC48 07:DC38: 4C 1A DC  JMP loc_DC1A_render_character_and_bullets  ;

sub_DC3B_render_balloon:
C - - - - - 0x01DC4B 07:DC3B: A9 04     LDA #$04                                   ; offset frame #1
C - - - - - 0x01DC4D 07:DC3D: 24 42     BIT vChrDirectMovement                     ;
C - - - - - 0x01DC4F 07:DC3F: 50 0A     BVC @bra_DC4B_skip                         ; If the character isn't falling from a balloon
C - - - - - 0x01DC51 07:DC41: A9 06     LDA #$06                                   ; offset frame #2
C - - - - - 0x01DC53 07:DC43: A6 2F     LDX vAnimationCounter                      ;
C - - - - - 0x01DC55 07:DC45: E0 04     CPX #$04                                   ;
C - - - - - 0x01DC57 07:DC47: B0 02     BCS @bra_DC4B_skip                         ; If vAnimationCounter >= 0x04
C - - - - - 0x01DC59 07:DC49: A9 08     LDA #$08                                   ; offset frame #3
@bra_DC4B_skip:
C - - - - - 0x01DC5B 07:DC4B: 18        CLC                                        ;
C - - - - - 0x01DC5C 07:DC4C: 69 52     ADC #$52                                   ; see bank 05, page 1, $8152
C - - - - - 0x01DC5E 07:DC4E: AA        TAX                                        ; increment the offset of the sprite address
C - - - - - 0x01DC5F 07:DC4F: 4C 5A CE  JMP loc_CE5A_render_character              ;

loc_DC52_horiz_movement_subroutine:
C D 2 - - - 0x01DC62 07:DC52: 30 1E     BMI bra_DC72_right                  ; If the button 'Right' is pressed
C - - - - - 0x01DC64 07:DC54: A5 6C     LDA vChrStatus                      ;
C - - - - - 0x01DC66 07:DC56: 6A        ROR                                 ;  
C - - - - - 0x01DC67 07:DC57: B0 05     BCS bra_DC5E_skip                   ; If vChrStatus is changed yet
C - - - - - 0x01DC69 07:DC59: E6 6C     INC vChrStatus                      ; Changes a status to 'left'
C - - - - - 0x01DC6B 07:DC5B: 20 F1 DC  JSR sub_DCF1_reset_velocity         ;
bra_DC5E_skip:
C - - - - - 0x01DC6E 07:DC5E: 20 B1 DC  JSR sub_DCB1_try_move_on_the_left   ;
loc_DC61_after_moving:
C D 2 - - - 0x01DC71 07:DC61: 20 82 DC  JSR sub_DC82_try_inc_velocity       ;
C - - - - - 0x01DC74 07:DC64: 20 96 DC  JSR sub_DC96_try_change_frame_index ;
loc_DC67_after_moving_without_velocity:
C D 2 - - - 0x01DC77 07:DC67: A4 70     LDY vChrFrame_Counter               ;
C - - - - - 0x01DC79 07:DC69: BE 6F DC  LDX tbl_DC6F_movement_frames_,Y     ; prepares the offset of the sprite address
C - - - - - 0x01DC7C 07:DC6C: 4C C2 DB  JMP loc_DBC2_before_rendering       ;

tbl_DC6F_movement_frames_:
- D 2 - - - 0x01DC7F 07:DC6F: 04        .byte $04    ;  1st frame
- D 2 - - - 0x01DC80 07:DC70: 08        .byte $08    ;  2nd frame
- D 2 - - - 0x01DC81 07:DC71: 0C        .byte $0C    ;  3rd frame

bra_DC72_right:
C - - - - - 0x01DC82 07:DC72: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DC84 07:DC74: 6A        ROR                                ;
C - - - - - 0x01DC85 07:DC75: 90 05     BCC bra_DC7C_skip                  ;
C - - - - - 0x01DC87 07:DC77: C6 6C     DEC vChrStatus                     ; Changes a status to 'right'
C D 2 - - - 0x01DC89 07:DC79: 20 F1 DC  JSR sub_DCF1_reset_velocity        ;
bra_DC7C_skip:
C - - - - - 0x01DC8C 07:DC7C: 20 E5 DC  JSR sub_DCE5_try_move_on_the_right ;
C - - - - - 0x01DC8F 07:DC7F: 4C 61 DC  JMP loc_DC61_after_moving          ;

; Out Carry flag - 1, if managed to change the speed, otherwise - 0.
sub_DC82_try_inc_velocity:
C - - - - - 0x01DC92 07:DC82: A5 2C     LDA vLowCounter            ;
C - - - - - 0x01DC94 07:DC84: 29 03     AND #$03                   ;
C - - - - - 0x01DC96 07:DC86: D0 0C     BNE bra_DC94_return_false  ; Branch if vLowCounter doesn't multiple of 4 (vLowCounter % 4 != 0)
C - - - - - 0x01DC98 07:DC88: A2 0C     LDX #$0C                   ; CONSTANT - Max value
; Register X - a velocity limit value
sub_DC8A_inc_velocity:
C - - - - - 0x01DC9A 07:DC8A: E6 71     INC vVelocity              ;
C D 2 - - - 0x01DC9C 07:DC8C: E4 71     CPX vVelocity              ;
C - - - - - 0x01DC9E 07:DC8E: B0 02     BCS @bra_DC92_skip         ; If 0x0C >= vVelocity
C - - - - - 0x01DCA0 07:DC90: 86 71     STX vVelocity              ; vVelocity <~ limit
@bra_DC92_skip:
C - - - - - 0x01DCA2 07:DC92: 38        SEC                        ; return true
C - - - - - 0x01DCA3 07:DC93: 60        RTS                        ;

bra_DC94_return_false:
C - - - - - 0x01DCA4 07:DC94: 18        CLC                        ; return false
bra_DC95_RTS:
C - - - - - 0x01DCA5 07:DC95: 60        RTS                        ;

sub_DC96_try_change_frame_index:
C - - - - - 0x01DCA6 07:DC96: A9 07     LDA #$07               ; f(A) = 8, see $DC98
; Register A - the mask of the low counter
sub_DC98_try_change_frame_index_ex:
C - - - - - 0x01DCA8 07:DC98: 25 2C     AND vLowCounter        ;
C - - - - - 0x01DCAA 07:DC9A: D0 F9     BNE bra_DC95_RTS       ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
C - - - - - 0x01DCAC 07:DC9C: E6 70     INC vChrFrame_Counter  ; updates the frame counter
C - - - - - 0x01DCAE 07:DC9E: A5 70     LDA vChrFrame_Counter  ;
C - - - - - 0x01DCB0 07:DCA0: C9 03     CMP #$03               ; CONSTANT - Max value
C - - - - - 0x01DCB2 07:DCA2: 90 04     BCC bra_DCA8_RTS       ; If the counter < 0x03
C - - - - - 0x01DCB4 07:DCA4: A9 00     LDA #$00               ;
C - - - - - 0x01DCB6 07:DCA6: 85 70     STA vChrFrame_Counter  ; clear (or reset)
bra_DCA8_RTS:
C - - - - - 0x01DCB8 07:DCA8: 60        RTS                    ;

; Out: Register A - vScreenChrPosX
sub_DCA9_calc_ScreenChrPosX:
loc_DCA9_calc_ScreenChrPosX:
C D 2 - - - 0x01DCB9 07:DCA9: A5 66     LDA vLowChrPosX      ;
C - - - - - 0x01DCBB 07:DCAB: 38        SEC                  ;
C - - - - - 0x01DCBC 07:DCAC: E5 27     SBC vLowViewPortPosX ;
C - - - - - 0x01DCBE 07:DCAE: 85 64     STA vScreenChrPosX   ;
C - - - - - 0x01DCC0 07:DCB0: 60        RTS                  ;

sub_DCB1_try_move_on_the_left:
C - - - - - 0x01DCC1 07:DCB1: 20 34 DD  JSR sub_DD34_check_movement_on_the_left  ;
C - - - - - 0x01DCC4 07:DCB4: F0 3B     BEQ bra_DCF1_reset_velocity              ; If the movement isn't allowed
C - - - - - 0x01DCC6 07:DCB6: A9 80     LDA #$80                                 ; CONSTANT - the left direction
C - - - - - 0x01DCC8 07:DCB8: D0 32     BNE bra_DCEC_continue                    ; Always true

bra_DCBA_RTS:
C - - - - - 0x01DCCA 07:DCBA: 60        RTS                                      ;

loc_DCBB_dec_LowChrPosX:
C D 2 - - - 0x01DCCB 07:DCBB: A5 66     LDA vLowChrPosX                 ;
C - - - - - 0x01DCCD 07:DCBD: 38        SEC                             ;
C - - - - - 0x01DCCE 07:DCBE: E9 10     SBC #$10                        ; CONSTANT - The character should be visible in its entirety on the left
C - - - - - 0x01DCD0 07:DCC0: A5 68     LDA vHighChrPosX                ;
C - - - - - 0x01DCD2 07:DCC2: E9 00     SBC #$00                        ;
C - - - - - 0x01DCD4 07:DCC4: 90 F4     BCC bra_DCBA_RTS                ; Branch If the character reach the beginning of the room
C - - - - - 0x01DCD6 07:DCC6: 20 D7 DC  JSR sub_DCD7_internal_decrement ;
C - - - - - 0x01DCD9 07:DCC9: 20 A9 DC  JSR sub_DCA9_calc_ScreenChrPosX ;
C - - - - - 0x01DCDC 07:DCCC: C9 70     CMP #$70                        ; CONSTANT - the scroll border on the left
C - - - - - 0x01DCDE 07:DCCE: B0 EA     BCS bra_DCBA_RTS                ; If vScreenChrPosX >= 0x70
C - - - - - 0x01DCE0 07:DCD0: A9 40     LDA #$40                        ; CONSTANT - to left
C - - - - - 0x01DCE2 07:DCD2: 85 48     STA vScrollDirection            ;
C - - - - - 0x01DCE4 07:DCD4: 4C 95 D1  JMP loc_D195_scroll_to          ;

sub_DCD7_internal_decrement:
C - - - - - 0x01DCE7 07:DCD7: A5 66     LDA vLowChrPosX     ;
C - - - - - 0x01DCE9 07:DCD9: 38        SEC                 ;
C - - - - - 0x01DCEA 07:DCDA: E9 01     SBC #$01            ;
C - - - - - 0x01DCEC 07:DCDC: 85 66     STA vLowChrPosX     ;
C - - - - - 0x01DCEE 07:DCDE: A5 68     LDA vHighChrPosX    ;
C - - - - - 0x01DCF0 07:DCE0: E9 00     SBC #$00            ; decrement vHighChrPosX, if vLowChrPosX changed a sign
C - - - - - 0x01DCF2 07:DCE2: 85 68     STA vHighChrPosX    ;  
C - - - - - 0x01DCF4 07:DCE4: 60        RTS                 ;

sub_DCE5_try_move_on_the_right:
C - - - - - 0x01DCF5 07:DCE5: 20 19 DD  JSR sub_DD19_check_movement_on_the_right   ;
C - - - - - 0x01DCF8 07:DCE8: F0 07     BEQ bra_DCF1_reset_velocity                ; If the movement to the right is not allowed
C - - - - - 0x01DCFA 07:DCEA: A9 00     LDA #$00                                   ; CONSTANT - the right direction
bra_DCEC_continue:
C - - - - - 0x01DCFC 07:DCEC: 85 42     STA vChrDirectMovement                     ;
C - - - - - 0x01DCFE 07:DCEE: 4C 34 E5  JMP loc_E534_change_posX_by_velocity       ;

bra_DCF1_reset_velocity:
sub_DCF1_reset_velocity:
C - - - - - 0x01DD01 07:DCF1: A9 04     LDA #$04           ;
C - - - - - 0x01DD03 07:DCF3: D0 02     BNE @bra_DCF7_skip ; Always true

C - - - - - 0x01DD05 07:DCF5: A9 00     LDA #$00           ; !(UNUSED) it will never happen
@bra_DCF7_skip:
C - - - - - 0x01DD07 07:DCF7: 85 71     STA vVelocity      ;
C - - - - - 0x01DD09 07:DCF9: 60        RTS                ;

loc_DCFA_inc_LowChrPosX:
C D 2 - - - 0x01DD0A 07:DCFA: A5 66     LDA vLowChrPosX                 ;
C - - - - - 0x01DD0C 07:DCFC: 38        SEC                             ;
C - - - - - 0x01DD0D 07:DCFD: E9 F0     SBC #$F0                        ; CONSTANT - The character should be visible in its entirety on the right
C - - - - - 0x01DD0F 07:DCFF: A5 68     LDA vHighChrPosX                ;
C - - - - - 0x01DD11 07:DD01: E5 4A     SBC vNearCurrentRoomLength      ;
C - - - - - 0x01DD13 07:DD03: B0 B5     BCS bra_DCBA_RTS                ; Branch If the character reach the end of the room
C - - - - - 0x01DD15 07:DD05: E6 66     INC vLowChrPosX                 ;
C - - - - - 0x01DD17 07:DD07: D0 02     BNE @bra_DD0B_skip              ; If the character doesn't move from one screen to another
C - - - - - 0x01DD19 07:DD09: E6 68     INC vHighChrPosX                ;
@bra_DD0B_skip:
C - - - - - 0x01DD1B 07:DD0B: 20 A9 DC  JSR sub_DCA9_calc_ScreenChrPosX ;
C - - - - - 0x01DD1E 07:DD0E: C9 90     CMP #$90                        ; CONSTANT - the scroll border on the right
C - - - - - 0x01DD20 07:DD10: 90 A8     BCC bra_DCBA_RTS                ; If vScreenChrPosX < 0x90
sub_DD12_scroll_to_right:
C - - - - - 0x01DD22 07:DD12: A9 80     LDA #$80                        ; CONSTANT - to right
C - - - - - 0x01DD24 07:DD14: 85 48     STA vScrollDirection            ;
C - - - - - 0x01DD26 07:DD16: 4C 95 D1  JMP loc_D195_scroll_to          ;

; Out: If flag Z = 1 then movement to the right is not allowed
sub_DD19_check_movement_on_the_right:
C - - - - - 0x01DD29 07:DD19: A5 5E     LDA vNoLevel                               ;
C - - - - - 0x01DD2B 07:DD1B: C9 03     CMP #$03                                   ; CONSTANT - level 4 or level-racing
C - - - - - 0x01DD2D 07:DD1D: D0 0A     BNE bra_DD29_skip                          ; If Register A != 0x03
C - - - - - 0x01DD2F 07:DD1F: A9 E1     LDA #$E1                                   ; prepare increment by Y (-31)
C - - - - - 0x01DD31 07:DD21: 20 6F D9  JSR sub_D96F_init_relative_chr_positions   ;
C - - - - - 0x01DD34 07:DD24: 20 2C DD  JSR sub_DD2C_control_check                 ;
C - - - - - 0x01DD37 07:DD27: F0 0A     BEQ bra_DD33_RTS                           ; If the collision value exist
bra_DD29_skip:
C - - - - - 0x01DD39 07:DD29: 20 6D D9  JSR sub_D96D_init_absolute_chr_positions   ;
sub_DD2C_control_check:
C - - - - - 0x01DD3C 07:DD2C: A9 08     LDA #$08                                   ; prepare an increment by X (+8)
C - - - - - 0x01DD3E 07:DD2E: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX   ;
C - - - - - 0x01DD41 07:DD31: C9 01     CMP #$01                                   ;
bra_DD33_RTS:
C - - - - - 0x01DD43 07:DD33: 60        RTS                                        ;

; Out: If flag Z = 1 then movement to the left is not allowed
sub_DD34_check_movement_on_the_left:
C - - - - - 0x01DD44 07:DD34: A5 5E     LDA vNoLevel                             ;
C - - - - - 0x01DD46 07:DD36: C9 03     CMP #$03                                 ; CONSTANT - level 4 + racing
C - - - - - 0x01DD48 07:DD38: D0 0A     BNE bra_DD44_skip                        ; If vNoLevel != 0x03
C - - - - - 0x01DD4A 07:DD3A: A9 E1     LDA #$E1                                 ; prepare increment by Y (-31)
C - - - - - 0x01DD4C 07:DD3C: 20 6F D9  JSR sub_D96F_init_relative_chr_positions ;
C - - - - - 0x01DD4F 07:DD3F: 20 47 DD  JSR sub_DD47_control_check               ;
C - - - - - 0x01DD52 07:DD42: F0 EF     BEQ bra_DD33_RTS                         ; If the collision value exist
bra_DD44_skip:
C - - - - - 0x01DD54 07:DD44: 20 6D D9  JSR sub_D96D_init_absolute_chr_positions ;
sub_DD47_control_check:
C - - - - - 0x01DD57 07:DD47: A9 F8     LDA #$F8                                 ; prepare an increment by X (-8)
C - - - - - 0x01DD59 07:DD49: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX  ;
C - - - - - 0x01DD5C 07:DD4C: C9 01     CMP #$01                                 ; 
C - - - - - 0x01DD5E 07:DD4E: 60        RTS                                      ;

; Out: If flag Z = 1 then the strong collision is exist
sub_DD4F_check_strong_from_above:
C - - - - - 0x01DD5F 07:DD4F: A5 5E     LDA vNoLevel                             ;
C - - - - - 0x01DD61 07:DD51: C9 03     CMP #$03                                 ; CONSTANT - level 4 + racing
C - - - - - 0x01DD63 07:DD53: D0 26     BNE bra_DD7B_RTS                         ; If vNoLevel != 0x03
C - - - - - 0x01DD65 07:DD55: A9 E0     LDA #$E0                                 ; prepare ChrPosY (-32), a character with jet-pack height = 32
C - - - - - 0x01DD67 07:DD57: 4C 7E DD  JMP loc_DD7E_check_strong_collision_ex   ;

; Out: If flag Z = 1 then the strong collision is exist
sub_DD5A_check_strong_from_below:
C - - - - - 0x01DD6A 07:DD5A: A5 5E     LDA vNoLevel                             ;
C - - - - - 0x01DD6C 07:DD5C: C9 03     CMP #$03                                 ; CONSTANT - level 4 + racing
C - - - - - 0x01DD6E 07:DD5E: D0 1B     BNE bra_DD7B_RTS                         ; If vNoLevel != 0x03
C - - - - - 0x01DD70 07:DD60: A9 E1     LDA #$E1                                 ; !(WHY?) prepare ChrPosY (-31), a character with jet-pack height = 32
C - - - - - 0x01DD72 07:DD62: 20 7E DD  JSR sub_DD7E_check_strong_collision_ex   ; !(WHY?)
C - - - - - 0x01DD75 07:DD65: A9 01     LDA #$01                                 ; prepare ChrPosY (+1), a character with jet-pack height = 32
C - - - - - 0x01DD77 07:DD67: 4C 7E DD  JMP loc_DD7E_check_strong_collision_ex   ;

C - - - - - 0x01DD7A 07:DD6A: 20 6F D9  JSR sub_D96F_init_relative_chr_positions ; !(UNUSED)
C - - - - - 0x01DD7D 07:DD6D: 20 E5 D2  JSR sub_D2E5_get_collision_value         ; !(UNUSED)
C - - - - - 0x01DD80 07:DD70: C9 01     CMP #$01                                 ; !(UNUSED), CONSTANT - a strong collision
C - - - - - 0x01DD82 07:DD72: 60        RTS                                      ; !(UNUSED)

C - - - - - 0x01DD83 07:DD73: 20 6F D9  JSR sub_D96F_init_relative_chr_positions ; !(UNUSED)
C - - - - - 0x01DD86 07:DD76: 20 6A D3  JSR sub_D36A_short_left_right_collision  ; !(UNUSED)
C - - - - - 0x01DD89 07:DD79: C9 01     CMP #$01                                 ; !(UNUSED), CONSTANT - a strong collision
bra_DD7B_RTS:
C - - - - - 0x01DD8B 07:DD7B: 60        RTS                                      ;

; Out: If flag Z = 1 then there is the strong collision
sub_DD7C_check_strong_collision_minus_7:
C - - - - - 0x01DD8C 07:DD7C: A9 F9     LDA #$F9                                 ; prepare ChrPosY (-7)
; In: Register A - ChrPosY
; Out: If flag Z = 1 then there is the strong collision
loc_DD7E_check_strong_collision_ex:
sub_DD7E_check_strong_collision_ex:
C D 2 - - - 0x01DD8E 07:DD7E: 20 6F D9  JSR sub_D96F_init_relative_chr_positions ;
C - - - - - 0x01DD91 07:DD81: 20 70 D3  JSR sub_D370_left_right_collision        ;
C - - - - - 0x01DD94 07:DD84: C9 01     CMP #$01                                 ; CONSTANT - a strong collision
C - - - - - 0x01DD96 07:DD86: 60        RTS                                      ;

loc_DD87_jump_subroutine:
C D 2 - - - 0x01DD97 07:DD87: A0 00     LDY #$00                           ;
C - - - - - 0x01DD99 07:DD89: A5 1C     LDA vBtnPressedInGame              ;
C - - - - - 0x01DD9B 07:DD8B: 29 F0     AND #$F0                           ;
C - - - - - 0x01DD9D 07:DD8D: F0 0B     BEQ @bra_DD9A_skip                 ; If it was a simple jump
C - - - - - 0x01DD9F 07:DD8F: C8        INY                                ; 
C - - - - - 0x01DDA0 07:DD90: 29 E0     AND #$E0                           ;
C - - - - - 0x01DDA2 07:DD92: F0 06     BEQ @bra_DD9A_skip                 ; If it was a high jump (using Up Button)
C - - - - - 0x01DDA4 07:DD94: C8        INY                                ;
C - - - - - 0x01DDA5 07:DD95: 29 C0     AND #BIT_BUTTON_Left_OR_Right      ;  
C - - - - - 0x01DDA7 07:DD97: F0 01     BEQ @bra_DD9A_skip                 ; If it was a jump down (using Down Button)
C - - - - - 0x01DDA9 07:DD99: C8        INY                                ; else it was a jump by side
@bra_DD9A_skip:
C - - - - - 0x01DDAA 07:DD9A: B9 58 E3  LDA tbl_E358_init_counter,Y        ;
; In: Register A - JumpCounter
; In: Register Y - JumpType
loc_DD9D_assigned_jump_subroutine:
C D 2 - - - 0x01DDAD 07:DD9D: 85 6F     STA vJumpCounter                   ;
C - - - - - 0x01DDAF 07:DD9F: 84 6E     STY vJumpType                      ;
C - - - - - 0x01DDB1 07:DDA1: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DDB3 07:DDA3: 09 10     ORA #$10                           ; CONSTANT - 'the character is jumping'
C - - - - - 0x01DDB5 07:DDA5: 85 6C     STA vChrStatus                     ; updates the character status
loc_DDA7_jumping:
C - - - - - 0x01DDB7 07:DDA7: A5 6A     LDA vScreenChrPosY                 ;
C - - - - - 0x01DDB9 07:DDA9: C9 DF     CMP #$DF                           ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01DDBB 07:DDAB: B0 59     BCS bra_DE06_after_horiz_moving    ; If vScreenChrPosY >= 0xDF
C - - - - - 0x01DDBD 07:DDAD: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DDBF 07:DDAF: 29 08     AND #$08                           ; CONSTANT - 'the character is getting damage'
C - - - - - 0x01DDC1 07:DDB1: D0 23     BNE bra_DDD6_jump_by_side          ; If the character is getting damage
C - - - - - 0x01DDC3 07:DDB3: 20 57 DF  JSR sub_DF57_get_current_character ;
C - - - - - 0x01DDC6 07:DDB6: F0 04     BEQ @bra_DDBC_skip                 ; If the current character is Lupin
C - - - - - 0x01DDC8 07:DDB8: A9 80     LDA #$80                           ; CONSTANT - the character is allowed the hit
C - - - - - 0x01DDCA 07:DDBA: 85 79     STA vChrAllowedStatus              ;
@bra_DDBC_skip:
C - - - - - 0x01DDCC 07:DDBC: A5 6F     LDA vJumpCounter                   ;
C - - - - - 0x01DDCE 07:DDBE: C9 0C     CMP #$0C                           ;
C - - - - - 0x01DDD0 07:DDC0: 90 0E     BCC bra_DDD0_skip                  ; If vJumpCounter < 0x0C
C - - - - - 0x01DDD2 07:DDC2: C9 15     CMP #$15                           ;
C - - - - - 0x01DDD4 07:DDC4: B0 0A     BCS bra_DDD0_skip                  ; If vJumpCounter >= 0x15
C - - - - - 0x01DDD6 07:DDC6: A5 1C     LDA vBtnPressedInGame              ;
C - - - - - 0x01DDD8 07:DDC8: 29 01     AND #BIT_BUTTON_A                  ;
C - - - - - 0x01DDDA 07:DDCA: D0 04     BNE bra_DDD0_skip                  ; If the button 'A' is pressed
C - - - - - 0x01DDDC 07:DDCC: A9 15     LDA #$15                           ;
C - - - - - 0x01DDDE 07:DDCE: 85 6F     STA vJumpCounter                   ; reduce the jump height
bra_DDD0_skip:
C - - - - - 0x01DDE0 07:DDD0: A5 6E     LDA vJumpType                      ;
C - - - - - 0x01DDE2 07:DDD2: C9 03     CMP #$03                           ; CONSTANT - jump by side
C - - - - - 0x01DDE4 07:DDD4: D0 30     BNE bra_DE06_after_horiz_moving    ; Branch If it isn't a jump by side
bra_DDD6_jump_by_side:
C - - - - - 0x01DDE6 07:DDD6: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DDE8 07:DDD8: 6A        ROR                                ;
C - - - - - 0x01DDE9 07:DDD9: 90 17     BCC bra_DDF2_right                 ; If the character is looking to the right
C - - - - - 0x01DDEB 07:DDDB: 29 04     AND #$04                           ;
C - - - - - 0x01DDED 07:DDDD: D0 17     BNE bra_DDF6_right2                ; If the character is getting damage
bra_DDDF_left2:
C - - - - - 0x01DDEF 07:DDDF: 20 B1 DC  JSR sub_DCB1_try_move_on_the_left  ;
C - - - - - 0x01DDF2 07:DDE2: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DDF4 07:DDE4: 29 08     AND #$08                           ; CONSTANT - 'the character is getting damage'
C - - - - - 0x01DDF6 07:DDE6: D0 1E     BNE bra_DE06_after_horiz_moving    ; If the character is getting damage
C - - - - - 0x01DDF8 07:DDE8: 24 1C     BIT vBtnPressedInGame              ;
C - - - - - 0x01DDFA 07:DDEA: 10 03     BPL bra_DDEF_skip                  ; If the button 'Right' isn't pressed
C - - - - - 0x01DDFC 07:DDEC: 20 80 DF  JSR sub_DF80_slow_down_velocity    ;
bra_DDEF_skip:
C - - - - - 0x01DDFF 07:DDEF: 4C 06 DE  JMP loc_DE06_after_horiz_moving    ;

bra_DDF2_right:
C - - - - - 0x01DE02 07:DDF2: 29 04     AND #$04                           ;
C - - - - - 0x01DE04 07:DDF4: D0 E9     BNE bra_DDDF_left2                 ; If the character is getting damage
bra_DDF6_right2:
C - - - - - 0x01DE06 07:DDF6: 20 E5 DC  JSR sub_DCE5_try_move_on_the_right ;
C - - - - - 0x01DE09 07:DDF9: A5 6C     LDA vChrStatus                     ;
C - - - - - 0x01DE0B 07:DDFB: 29 08     AND #$08                           ; CONSTANT - 'the character is getting damage'
C - - - - - 0x01DE0D 07:DDFD: D0 07     BNE bra_DE06_after_horiz_moving    ; If the character is getting damage
C - - - - - 0x01DE0F 07:DDFF: 24 1C     BIT vBtnPressedInGame              ;
C - - - - - 0x01DE11 07:DE01: 50 03     BVC bra_DE06_after_horiz_moving    ; If the button 'Left' isn't pressed
C - - - - - 0x01DE13 07:DE03: 20 80 DF  JSR sub_DF80_slow_down_velocity    ;
bra_DE06_after_horiz_moving:
loc_DE06_after_horiz_moving:
C D 2 - - - 0x01DE16 07:DE06: A6 6F     LDX vJumpCounter                ;
C - - - - - 0x01DE18 07:DE08: BD 5D E3  LDA tbl_E35D_jump_posY_offset,X ; X = [0x00-0x2F]
C - - - - - 0x01DE1B 07:DE0B: 18        CLC                             ;
C - - - - - 0x01DE1C 07:DE0C: 65 6A     ADC vScreenChrPosY              ;
C - - - - - 0x01DE1E 07:DE0E: C9 DF     CMP #$DF                        ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x01DE20 07:DE10: 90 09     BCC @bra_DE1B_skip              ; If Register A < 0xDF
C - - - - - 0x01DE22 07:DE12: A0 DF     LDY #$DF                        ; 0xDF -> vScreenChrPosY
C - - - - - 0x01DE24 07:DE14: C9 F8     CMP #$F8                        ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01DE26 07:DE16: 90 02     BCC @bra_DE1A_skip              ; If Register A < 0xF8
C - - - - - 0x01DE28 07:DE18: A0 00     LDY #$00                        ; 0x00 -> vScreenChrPosY
@bra_DE1A_skip:
C - - - - - 0x01DE2A 07:DE1A: 98        TYA                             ; A <~ 0x00 or 0xDF
@bra_DE1B_skip:
C - - - - - 0x01DE2B 07:DE1B: 85 6A     STA vScreenChrPosY              ; Resolves a new Y-position of the character after jumping
C - - - - - 0x01DE2D 07:DE1D: 85 00     STA ram_0000                    ;
C - - - - - 0x01DE2F 07:DE1F: A2 0C     LDX #$0C                        ; prepares the offset of the sprite address
C - - - - - 0x01DE31 07:DE21: AD 14 02  LDA vCurrentWeaponStatus        ;
C - - - - - 0x01DE34 07:DE24: C9 41     CMP #$41                        ; CONSTANT - the bomb (the weapon) is activated
C - - - - - 0x01DE36 07:DE26: F0 08     BEQ @bra_DE30_skip              ; if vCurrentWeaponStatus = 0x41
C - - - - - 0x01DE38 07:DE28: A5 6E     LDA vJumpType                   ;
C - - - - - 0x01DE3A 07:DE2A: C9 02     CMP #$02                        ; CONSTANT - jumping off
C - - - - - 0x01DE3C 07:DE2C: D0 02     BNE @bra_DE30_skip              ; Branch If it isn't jumping off
C - - - - - 0x01DE3E 07:DE2E: A2 10     LDX #$10                        ; prepares the offset of the sprite address
@bra_DE30_skip:
C - - - - - 0x01DE40 07:DE30: A5 6F     LDA vJumpCounter                ;
C - - - - - 0x01DE42 07:DE32: C9 18     CMP #$18                        ; CONSTANT - a maximum amplitude
C - - - - - 0x01DE44 07:DE34: B0 03     BCS bra_DE39_falling            ; If vJumpCounter >= 0x18
C - - - - - 0x01DE46 07:DE36: 4C D2 DE  JMP loc_DED2_jump_subroutine_bf ;

; In: $0000 - vScreenChrPosY (a new value)
bra_DE39_falling:
C - - - - - 0x01DE49 07:DE39: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01DE4B 07:DE3B: 85 00     STA ram_0000                    ; !(WHY?), seems to be excessive
C - - - - - 0x01DE4D 07:DE3D: C9 DF     CMP #$DF                        ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01DE4F 07:DE3F: 90 03     BCC bra_DE44_safe_falling       ; If vScreenChrPosY < 0xDF
C - - - - - 0x01DE51 07:DE41: 4C E6 DE  JMP loc_DEE6_dead_fallin        ;

; In: $0000 - vScreenChrPosY (a new value)
bra_DE44_safe_falling:
C - - - - - 0x01DE54 07:DE44: E6 00     INC ram_0000                                ; <~ vScreenChrPosY + 1, prepare an input parameter
C - - - - - 0x01DE56 07:DE46: 20 6A D3  JSR sub_D36A_short_left_right_collision     ;
C - - - - - 0x01DE59 07:DE49: F0 3B     BEQ bra_DE86_jump_subroutine_bf2            ; If collisions don't exist
C - - - - - 0x01DE5B 07:DE4B: C9 02     CMP #$02                                    ; CONSTANT - a weak collision
C - - - - - 0x01DE5D 07:DE4D: F0 07     BEQ @bra_DE56_weak                          ; If the weak collision doesn't exist
C - - - - - 0x01DE5F 07:DE4F: 20 7C DD  JSR sub_DD7C_check_strong_collision_minus_7 ;
C - - - - - 0x01DE62 07:DE52: F0 32     BEQ bra_DE86_jump_subroutine_bf2            ; If collisions exist
C - - - - - 0x01DE64 07:DE54: D0 11     BNE bra_DE67_continue                       ; Always true

@bra_DE56_weak:
C - - - - - 0x01DE66 07:DE56: 20 7C DD  JSR sub_DD7C_check_strong_collision_minus_7 ;
C - - - - - 0x01DE69 07:DE59: F0 2B     BEQ bra_DE86_jump_subroutine_bf2            ; If collisions exist
C - - - - - 0x01DE6B 07:DE5B: A5 6E     LDA vJumpType                               ;
C - - - - - 0x01DE6D 07:DE5D: C9 02     CMP #$02                                    ; CONSTANT - jumping off
C - - - - - 0x01DE6F 07:DE5F: D0 06     BNE bra_DE67_continue                       ; If vJumpType != 0x02
C - - - - - 0x01DE71 07:DE61: A5 1C     LDA vBtnPressedInGame                       ;
C - - - - - 0x01DE73 07:DE63: 29 20     AND #BIT_BUTTON_Down                        ;
C - - - - - 0x01DE75 07:DE65: D0 1F     BNE bra_DE86_jump_subroutine_bf2            ; If the button 'Down' is pressed
bra_DE67_continue:
C - - - - - 0x01DE77 07:DE67: A5 6D     LDA vMovableChrStatus                       ;
C - - - - - 0x01DE79 07:DE69: 29 01     AND #$01                                    ; CONSTANT - the character is moving on the lift
C - - - - - 0x01DE7B 07:DE6B: D0 03     BNE @bra_DE70_skip                          ; If the character is moving on the lift
C - - - - - 0x01DE7D 07:DE6D: 20 32 E3  JSR sub_E332_correction_ScreenChrPosY       ;
@bra_DE70_skip:
C - - - - - 0x01DE80 07:DE70: A5 6C     LDA vChrStatus                              ;
C - - - - - 0x01DE82 07:DE72: 29 08     AND #$08                                    ; CONSTANT - the character is getting damage
C - - - - - 0x01DE84 07:DE74: F0 0D     BEQ bra_DE83_jump_subroutine_before_bf2     ; If the character isn't getting damage
C - - - - - 0x01DE86 07:DE76: A9 80     LDA #$80                                    ; CONSTANT - Time to switch to the select character mode
C - - - - - 0x01DE88 07:DE78: 85 2E     STA vCorridorCounter                        ;
C - - - - - 0x01DE8A 07:DE7A: A5 6C     LDA vChrStatus                              ;
C - - - - - 0x01DE8C 07:DE7C: 09 20     ORA #$20                                    ; CONSTANT - the character is died
C - - - - - 0x01DE8E 07:DE7E: 85 6C     STA vChrStatus                              ;
C - - - - - 0x01DE90 07:DE80: 4C A9 DE  JMP loc_DEA9_died_subroutine_bf2            ;

bra_DE83_jump_subroutine_before_bf2:
C - - - - - 0x01DE93 07:DE83: 20 5C DF  JSR sub_DF5C_reset_action_and_death ;
; in: Register X - the offset of the sprite address
bra_DE86_jump_subroutine_bf2:
loc_DE86_jump_subroutine_bf2:
C D 2 - - - 0x01DE96 07:DE86: A5 6F     LDA vJumpCounter                    ;
C - - - - - 0x01DE98 07:DE88: C9 18     CMP #$18                            ; CONSTANT - a maximum amplitude
C - - - - - 0x01DE9A 07:DE8A: 90 08     BCC bra_DE94_skip                   ; If vJumpCounter < 0x18
C - - - - - 0x01DE9C 07:DE8C: 20 8A E7  JSR sub_E78A_has_roof_pitch         ;
C - - - - - 0x01DE9F 07:DE8F: 90 03     BCC bra_DE94_skip                   ; If it has not a roof pitch
C - - - - - 0x01DEA1 07:DE91: 20 5C DF  JSR sub_DF5C_reset_action_and_death ;
bra_DE94_skip:
C - - - - - 0x01DEA4 07:DE94: E6 6F     INC vJumpCounter              ;
C - - - - - 0x01DEA6 07:DE96: A9 2F     LDA #$2F                      ; CONSTANT - a maximum jump value
C - - - - - 0x01DEA8 07:DE98: C5 6F     CMP vJumpCounter              ;
C - - - - - 0x01DEAA 07:DE9A: B0 02     BCS @bra_DE9E_skip            ; If 0x2F >= vJumpCounter, i.e. less than maximum
C - - - - - 0x01DEAC 07:DE9C: 85 6F     STA vJumpCounter              ;
@bra_DE9E_skip:
C - - - - - 0x01DEAE 07:DE9E: A5 6C     LDA vChrStatus                ;
C - - - - - 0x01DEB0 07:DEA0: 29 08     AND #$08                      ; CONSTANT - the character is getting damage
C - - - - - 0x01DEB2 07:DEA2: F0 02     BEQ @bra_DEA6_skip            ; If the character isn't getting damage
C - - - - - 0x01DEB4 07:DEA4: A2 1C     LDX #$1C                      ; prepares the offset of the sprite address
@bra_DEA6_skip:
C - - - - - 0x01DEB6 07:DEA6: 4C C2 DB  JMP loc_DBC2_before_rendering ;

loc_DEA9_died_subroutine_bf2:
C D 2 - - - 0x01DEB9 07:DEA9: 24 3A     BIT vDamageStatus             ;
C - - - - - 0x01DEBB 07:DEAB: 50 19     BVC bra_DEC6_skip             ; If the character is dying finally
C - - - - - 0x01DEBD 07:DEAD: A5 3A     LDA vDamageStatus             ;
C - - - - - 0x01DEBF 07:DEAF: 29 BF     AND #$BF                      ;
C - - - - - 0x01DEC1 07:DEB1: 85 3A     STA vDamageStatus             ; clear 'The character got damage with a non-zero bullet proof vest item'
C - - - - - 0x01DEC3 07:DEB3: A9 40     LDA #$40                      ; CONSTANT
C - - - - - 0x01DEC5 07:DEB5: 85 32     STA vResistantToDamageCounter ; Initializes a counter
C - - - - - 0x01DEC7 07:DEB7: A9 00     LDA #$00                      ;
C - - - - - 0x01DEC9 07:DEB9: 85 2E     STA vCorridorCounter          ; clear
C - - - - - 0x01DECB 07:DEBB: A5 6C     LDA vChrStatus                ;
C - - - - - 0x01DECD 07:DEBD: 29 C1     AND #$C1                      ;
C - - - - - 0x01DECF 07:DEBF: 85 6C     STA vChrStatus                ; clear Z W K L M flags (see vChrStatus)
C - - - - - 0x01DED1 07:DEC1: A2 00     LDX #$00                      ; prepares the offset of the sprite address (the character is standing)
C - - - - - 0x01DED3 07:DEC3: 4C CF DE  JMP loc_DECF_before_rendering ;

bra_DEC6_skip:
C - - - - - 0x01DED6 07:DEC6: A5 2E     LDA vCorridorCounter          ;
C - - - - - 0x01DED8 07:DEC8: D0 03     BNE @bra_DECD_skip            ; If vCorridorCounter != 0x00
C - - - - - 0x01DEDA 07:DECA: 20 31 DF  JSR sub_DF31_finish_dying     ;
@bra_DECD_skip:
C - - - - - 0x01DEDD 07:DECD: A2 20     LDX #$20                      ; prepares the offset of the sprite address (the character is died)
; in: Register X - the offset of the sprite address
loc_DECF_before_rendering:
C D 2 - - - 0x01DEDF 07:DECF: 4C C2 DB  JMP loc_DBC2_before_rendering ;

; in: Register X - the offset of the sprite address
loc_DED2_jump_subroutine_bf:
C D 2 - - - 0x01DEE2 07:DED2: A5 5E     LDA vNoLevel                           ;
C - - - - - 0x01DEE4 07:DED4: C9 03     CMP #$03                               ; CONSTANT - level 4 or level-racing
C - - - - - 0x01DEE6 07:DED6: D0 0B     BNE @bra_DEE3_skip                     ; If vNoLevel != 0x03
C - - - - - 0x01DEE8 07:DED8: A9 E0     LDA #$E0                               ; prepare ChrPosY (-32), a character height = 32
C - - - - - 0x01DEEA 07:DEDA: 20 7E DD  JSR sub_DD7E_check_strong_collision_ex ;
C - - - - - 0x01DEED 07:DEDD: D0 04     BNE @bra_DEE3_skip                     ; If collisions don't exist
C - - - - - 0x01DEEF 07:DEDF: A9 18     LDA #$18                               ; CONSTANT - a maximum amplitude
C - - - - - 0x01DEF1 07:DEE1: 85 6F     STA vJumpCounter                       ; block the jump
@bra_DEE3_skip:
C - - - - - 0x01DEF3 07:DEE3: 4C 86 DE  JMP loc_DE86_jump_subroutine_bf2       ;

loc_DEE6_dead_fallin:
C D 2 - - - 0x01DEF6 07:DEE6: A5 68     LDA vHighChrPosX                          ;
C - - - - - 0x01DEF8 07:DEE8: 85 D7     STA ram_00D7                              ; prepare an input parameter
C - - - - - 0x01DEFA 07:DEEA: 20 DA D9  JSR sub_D9DA_screen_with_water_gap        ;
C - - - - - 0x01DEFD 07:DEED: 90 2D     BCC bra_DF1C_no_water                     ; If the screen has not the water gap
C - - - - - 0x01DEFF 07:DEEF: 20 57 DF  JSR sub_DF57_get_current_character        ;
C - - - - - 0x01DF02 07:DEF2: D0 0A     BNE @bra_DEFE_skip                        ; If the current character isn't Lupin
C - - - - - 0x01DF04 07:DEF4: AD 05 02  LDA v_breathing_apparatus_item            ;
C - - - - - 0x01DF07 07:DEF7: D0 05     BNE @bra_DEFE_skip                        ; if vBreathingApparatusItem != 0x00
C - - - - - 0x01DF09 07:DEF9: AD 06 02  LDA v_helium_balloon_item                 ;
C - - - - - 0x01DF0C 07:DEFC: D0 28     BNE bra_DF26_balloon                      ; If vHeliumBalloonItem != 0x00
@bra_DEFE_skip:
C - - - - - 0x01DF0E 07:DEFE: 20 3E DF  JSR sub_DF3E_update_render_params_for_gap ;
C - - - - - 0x01DF11 07:DF01: 90 16     BCC @bra_DF19_skip                        ; If the frame index < 0x1F
C - - - - - 0x01DF13 07:DF03: 20 57 DF  JSR sub_DF57_get_current_character        ;
C - - - - - 0x01DF16 07:DF06: D0 29     BNE bra_DF31_finish_dying                 ; If the current character isn't Lupin
C - - - - - 0x01DF18 07:DF08: AD 05 02  LDA v_breathing_apparatus_item            ;
C - - - - - 0x01DF1B 07:DF0B: F0 24     BEQ bra_DF31_finish_dying                 ; if vBreathingApparatusItem == 0x00
C - - - - - 0x01DF1D 07:DF0D: A2 05     LDX #$05                                  ; CONSTANT - the index of the breathing apparatus item
C - - - - - 0x01DF1F 07:DF0F: 20 13 CD  JSR sub_CD13_use_item                     ;
C - - - - - 0x01DF22 07:DF12: 20 DA FB  JSR sub_FBDA_store_room_params_           ;
C - - - - - 0x01DF25 07:DF15: A2 C1     LDX #$C1                                  ; CONSTANT - 'dive into the water'
C - - - - - 0x01DF27 07:DF17: 86 39     STX vGameInterruptEvent                   ;
@bra_DF19_skip:
C - - - - - 0x01DF29 07:DF19: 4C 64 D7  JMP loc_D764_diving_render                ;

bra_DF1C_no_water:
C - - - - - 0x01DF2C 07:DF1C: 20 57 DF  JSR sub_DF57_get_current_character         ;
C - - - - - 0x01DF2F 07:DF1F: D0 10     BNE bra_DF31_finish_dying                  ; If the current character isn't Lupin
C - - - - - 0x01DF31 07:DF21: AD 06 02  LDA v_helium_balloon_item                  ;
C - - - - - 0x01DF34 07:DF24: F0 0B     BEQ bra_DF31_finish_dying                  ; If vHeliumBalloonItem == 0x00
bra_DF26_balloon:
C - - - - - 0x01DF36 07:DF26: 20 F3 CD  JSR sub_CDF3_deactivate_activable_items_ex ;
C - - - - - 0x01DF39 07:DF29: 20 EF CC  JSR sub_CCEF_use_balloon                   ;
C - - - - - 0x01DF3C 07:DF2C: A2 00     LDX #$00                                   ;
C - - - - - 0x01DF3E 07:DF2E: 4C C2 DB  JMP loc_DBC2_before_rendering              ; prepares the offset of the sprite address

bra_DF31_finish_dying:
sub_DF31_finish_dying:
loc_DF31_finish_dying:
C D 2 - - - 0x01DF41 07:DF31: A2 80     LDX #$80                ; CONSTANT - the character is arrested
C - - - - - 0x01DF43 07:DF33: A5 3A     LDA vDamageStatus       ;
C - - - - - 0x01DF45 07:DF35: 29 20     AND #$20                ; CONSTANT - The character got damage from Zenigata
C - - - - - 0x01DF47 07:DF37: D0 02     BNE @bra_DF3B_skip      ; If vDamageStatus contains 0x20 flag
C - - - - - 0x01DF49 07:DF39: A2 81     LDX #$81                ; CONSTANT - the character is dying
@bra_DF3B_skip:
C - - - - - 0x01DF4B 07:DF3B: 86 39     STX vGameInterruptEvent ;
C - - - - - 0x01DF4D 07:DF3D: 60        RTS                     ;

; Out: carry flag (analog return true or false):
; 1, if the frame index >= 0x1F
; 0, otherwise
sub_DF3E_update_render_params_for_gap:
C - - - - - 0x01DF4E 07:DF3E: A5 6A     LDA vScreenChrPosY             ;
C - - - - - 0x01DF50 07:DF40: 85 00     STA ram_0000                   ; ~> sprite magic1
C - - - - - 0x01DF52 07:DF42: A5 64     LDA vScreenChrPosX             ;
C - - - - - 0x01DF54 07:DF44: 85 03     STA ram_0003                   ; ~> sprite magic4
C - - - - - 0x01DF56 07:DF46: E6 70     INC vChrFrame_Counter          ; updates the frame counter
C - - - - - 0x01DF58 07:DF48: A5 70     LDA vChrFrame_Counter          ;
C - - - - - 0x01DF5A 07:DF4A: C9 01     CMP #$01                       ; !(BUG?), depends on character animation frame
C - - - - - 0x01DF5C 07:DF4C: D0 06     BNE @bra_DF54_skip_inititalize ; if vChrFrameIndex != 0x01
C - - - - - 0x01DF5E 07:DF4E: 48        PHA                            ; store a frame index
C - - - - - 0x01DF5F 07:DF4F: A9 20     LDA #$20                       ;
C - - - - - 0x01DF61 07:DF51: 85 32     STA vResistantToDamageCounter  ; initializes a counter
C - - - - - 0x01DF63 07:DF53: 68        PLA                            ; retrieve a frame index (see $DF4E)
@bra_DF54_skip_inititalize:
C - - - - - 0x01DF64 07:DF54: C9 1F     CMP #$1F                       ; CONSTANT - max value
C - - - - - 0x01DF66 07:DF56: 60        RTS                            ;

; Out: 0x00 - Lupin, 0x01 - Jigen, 0x10 - Goemon
sub_DF57_get_current_character:
C - - - - - 0x01DF67 07:DF57: A5 5F     LDA vChrLiveStatus ;
C - - - - - 0x01DF69 07:DF59: 29 03     AND #$03           ; CONSTANT - the current selected character
C - - - - - 0x01DF6B 07:DF5B: 60        RTS                ; 

sub_DF5C_reset_action_and_death:
C - - - - - 0x01DF6C 07:DF5C: A5 6C     LDA vChrStatus     ;
C - - - - - 0x01DF6E 07:DF5E: 29 87     AND #$87           ; CONSTANT - all except 'the action' and 'the death'
C - - - - - 0x01DF70 07:DF60: 85 6C     STA vChrStatus     ;
C - - - - - 0x01DF72 07:DF62: 60        RTS                ;

sub_DF63_update_left_right_direction:
C - - - - - 0x01DF73 07:DF63: A5 1C     LDA vBtnPressedInGame           ;
C - - - - - 0x01DF75 07:DF65: 29 C0     AND #BIT_BUTTON_Left_OR_Right   ;
C - - - - - 0x01DF77 07:DF67: F0 23     BEQ bra_DF8C_RTS                ; If the button 'Left' or 'Right' isn't pressed
C - - - - - 0x01DF79 07:DF69: 30 06     BMI @bra_DF71_right             ; If the button 'Right' is pressed
C - - - - - 0x01DF7B 07:DF6B: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01DF7D 07:DF6D: 09 01     ORA #$01                        ; CONSTANT - 'the character is looking to the right/left'
C - - - - - 0x01DF7F 07:DF6F: D0 04     BNE @bra_DF75_left              ; Always true

@bra_DF71_right:
C - - - - - 0x01DF81 07:DF71: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01DF83 07:DF73: 29 FE     AND #$FE                        ; resets 'the character is looking to the right/left'
@bra_DF75_left:
C - - - - - 0x01DF85 07:DF75: 85 6C     STA vChrStatus                  ; 
C - - - - - 0x01DF87 07:DF77: 60        RTS                             ;

sub_DF78_idle_slowdown:
C - - - - - 0x01DF88 07:DF78: A9 03     LDA #$03                           ; f(A) = 4, see $DF82
C - - - - - 0x01DF8A 07:DF7A: D0 06     BNE bra_DF82_slow_down_velocity_ex ;
C - - - - - 0x01DF8C 07:DF7C: A9 00     LDA #$00                           ; f(A) = 1, see $DF82
C - - - - - 0x01DF8E 07:DF7E: F0 02     BEQ bra_DF82_slow_down_velocity_ex ;
sub_DF80_slow_down_velocity:
C - - - - - 0x01DF90 07:DF80: A9 01     LDA #$01                           ; f(A) = 2, see $DF82
; Register A - the mask of the low counter
bra_DF82_slow_down_velocity_ex:
C - - - - - 0x01DF92 07:DF82: 25 2C     AND vLowCounter                    ;
C - - - - - 0x01DF94 07:DF84: D0 06     BNE bra_DF8C_RTS                   ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
C - - - - - 0x01DF96 07:DF86: C6 71     DEC vVelocity                      ; slow down
C - - - - - 0x01DF98 07:DF88: 10 02     BPL bra_DF8C_RTS                   ; If vVelocity is positive
C - - - - - 0x01DF9A 07:DF8A: E6 71     INC vVelocity                      ; vVelocity is closing zero
bra_DF8C_RTS:
C - - - - - 0x01DF9C 07:DF8C: 60        RTS                                ;

loc_DF8D_enter_corridor:
C D 2 - - - 0x01DF9D 07:DF8D: A5 2E     LDA vCorridorCounter              ;
C - - - - - 0x01DF9F 07:DF8F: 29 07     AND #$07                          ;
C - - - - - 0x01DFA1 07:DF91: F0 03     BEQ bra_DF96_next_step            ; Branch if vCorridorCounter multiple of 8 (vLowCounter % 8 == 0, 12.5% chance)
C - - - - - 0x01DFA3 07:DF93: 4C 13 E0  JMP loc_E013_continue             ;

bra_DF96_next_step:
C - - - - - 0x01DFA6 07:DF96: A5 2E     LDA vCorridorCounter              ;
C - - - - - 0x01DFA8 07:DF98: 4A        LSR                               ;
C - - - - - 0x01DFA9 07:DF99: 4A        LSR                               ;
C - - - - - 0x01DFAA 07:DF9A: 4A        LSR                               ; A <~ {0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00}
C - - - - - 0x01DFAB 07:DF9B: 20 C1 D0  JSR sub_D0C1_change_stack_pointer ;

- D 2 - I - 0x01DFAE 07:DF9E: D0 DF     .addr loc_DFD1_close_again - 1           ; 0x00 the door is closing again
- D 2 - I - 0x01DFB0 07:DFA0: B2 DF     .addr loc_DFB3_open_again_continue - 1   ; 0x01 the door is opening again
- D 2 - I - 0x01DFB2 07:DFA2: AF DF     .addr loc_DFB0_open_again - 1            ; 0x02 the door starts opening again
- D 2 - I - 0x01DFB4 07:DFA4: DE DF     .addr loc_DFDF - 1                       ; 0x03
- D 2 - I - 0x01DFB6 07:DFA6: 0C E0     .addr loc_E00D_allow_to_hide - 1         ; 0x04
- D 2 - I - 0x01DFB8 07:DFA8: EE DF     .addr loc_DFEF_try_to_take_item_out - 1  ; 0x05
- D 2 - I - 0x01DFBA 07:DFAA: CA DF     .addr loc_DFCB_close - 1                 ; 0x06 the door is closing
- D 2 - I - 0x01DFBC 07:DFAC: B9 DF     .addr loc_DFBA_open_continue - 1         ; 0x07 the door is opening
- D 2 - I - 0x01DFBE 07:DFAE: B6 DF     .addr loc_DFB7_open - 1                  ; 0x08 the door starts opening

loc_DFB0_open_again:
C - - - - - 0x01DFC0 07:DFB0: 20 2F FA  JSR sub_FA2F_opening_or_closing  ;
loc_DFB3_open_again_continue:
C - - - - - 0x01DFC3 07:DFB3: A9 02     LDA #$02                         ; CONSTANT - the adding for closing
C - - - - - 0x01DFC5 07:DFB5: D0 05     BNE bra_DFBC_continue            ; Always true

loc_DFB7_open:
C - - - - - 0x01DFC7 07:DFB7: 20 2F FA  JSR sub_FA2F_opening_or_closing  ;
loc_DFBA_open_continue:
C - - - - - 0x01DFCA 07:DFBA: A9 00     LDA #$00                         ; CONSTANT - the adding for opening
; In: Register A - the adding
bra_DFBC_continue:
C - - - - - 0x01DFCC 07:DFBC: 85 00     STA ram_0000                   ; set the adding
C - - - - - 0x01DFCE 07:DFBE: E6 70     INC vChrFrame_Counter          ; update for the toggle
C - - - - - 0x01DFD0 07:DFC0: A5 70     LDA vChrFrame_Counter          ;
C - - - - - 0x01DFD2 07:DFC2: 29 01     AND #$01                       ; A <~ 0x00 or 0x01
C - - - - - 0x01DFD4 07:DFC4: 05 00     ORA ram_0000                   ;
C - - - - - 0x01DFD6 07:DFC6: 85 70     STA vChrFrame_Counter          ; <~ 0x00 or 0x01 (opening), 0x02 or 0x03 (closing)
C - - - - - 0x01DFD8 07:DFC8: 4C 05 E0  JMP loc_E005_disallow_to_hide  ;

loc_DFCB_close:
C - - - - - 0x01DFDB 07:DFCB: 20 27 FA  JSR sub_FA27_try_to_close      ;
C - - - - - 0x01DFDE 07:DFCE: 4C 0D E0  JMP loc_E00D_allow_to_hide     ;

loc_DFD1_close_again:
C - - - - - 0x01DFE1 07:DFD1: 20 27 FA  JSR sub_FA27_try_to_close      ;
C - - - - - 0x01DFE4 07:DFD4: A5 6C     LDA vChrStatus                 ;
C - - - - - 0x01DFE6 07:DFD6: 29 DF     AND #$DF                       ; CONSTANT - all except 'the character is entering a corridor or hiding place or died'
C - - - - - 0x01DFE8 07:DFD8: 85 6C     STA vChrStatus                 ;
C - - - - - 0x01DFEA 07:DFDA: A2 00     LDX #$00                       ; prepares the offset of the sprite address
C - - - - - 0x01DFEC 07:DFDC: 4C C2 DB  JMP loc_DBC2_before_rendering  ;

loc_DFDF:
C - - - - - 0x01DFEF 07:DFDF: A5 C4     LDA vCheckpoint                   ;
C - - - - - 0x01DFF1 07:DFE1: F0 2A     BEQ bra_E00D_allow_to_hide        ; If the room is empty
C - - - - - 0x01DFF3 07:DFE3: A2 C0     LDX #$C0                          ; CONSTANT - go into the corridor
C - - - - - 0x01DFF5 07:DFE5: C9 FF     CMP #$FF                          ; CONSTANT - exit from the unique room
C - - - - - 0x01DFF7 07:DFE7: D0 02     BNE @bra_DFEB_is_corridor         ; If it isn't exit
C - - - - - 0x01DFF9 07:DFE9: A2 C3     LDX #$C3                          ; CONSTANT - leave the unique room
@bra_DFEB_is_corridor:
C - - - - - 0x01DFFB 07:DFEB: 86 39     STX vGameInterruptEvent           ; <~ 0xC0 or 0xC3
C - - - - - 0x01DFFD 07:DFED: D0 1E     BNE bra_E00D_allow_to_hide        ; Always true

loc_DFEF_try_to_take_item_out:
C - - - - - 0x01DFFF 07:DFEF: A5 C4     LDA vCheckpoint                   ;
C - - - - - 0x01E001 07:DFF1: D0 1A     BNE bra_E00D_allow_to_hide        ; If the room isn't empty
C - - - - - 0x01E003 07:DFF3: A4 C5     LDY vRoomAttrubute                ;
C - - - - - 0x01E005 07:DFF5: 30 16     BMI bra_E00D_allow_to_hide        ; If the room has already been visited
C - - - - - 0x01E007 07:DFF7: C0 09     CPY #$09                          ; CONSTANT - 'the room for walkthrough already been visited' + 'the room can used as a prison room'
C - - - - - 0x01E009 07:DFF9: B0 12     BCS bra_E00D_allow_to_hide        ; If vRoomAttrubute >= 0x09
@bra_DFFB_loop:
C - - - - - 0x01E00B 07:DFFB: 20 67 B0  JSR sub_B067_take_item_out        ;
C - - - - - 0x01E00E 07:DFFE: C6 B7     DEC vRoomExtraInfo                ; decrement the number of the items
C - - - - - 0x01E010 07:E000: 10 F9     BPL @bra_DFFB_loop                ; If the number of the items >= 0x00
C - - - - - 0x01E012 07:E002: 4C 0D E0  JMP loc_E00D_allow_to_hide        ;

loc_E005_disallow_to_hide:
C D 3 - - - 0x01E015 07:E005: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01E017 07:E007: 29 7F     AND #$7F                         ; CONSTANT - the character cann't hide in the room
C - - - - - 0x01E019 07:E009: 85 6C     STA vChrStatus                   ;
C - - - - - 0x01E01B 07:E00B: D0 06     BNE bra_E013_skip                ; Always true

bra_E00D_allow_to_hide:
loc_E00D_allow_to_hide:
C D 3 - - - 0x01E01D 07:E00D: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01E01F 07:E00F: 09 80     ORA #$80                         ; CONSTANT - the character can hide in the room
C - - - - - 0x01E021 07:E011: 85 6C     STA vChrStatus                   ;
bra_E013_skip:
loc_E013_continue:
C D 3 - - - 0x01E023 07:E013: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01E025 07:E015: 30 08     BMI bra_E01F_try_to_hiding       ; If the character can hide in the room
C - - - - - 0x01E027 07:E017: A4 70     LDY vChrFrame_Counter            ;
C - - - - - 0x01E029 07:E019: BE 36 E0  LDX tbl_E036_frame_,Y            ;
C - - - - - 0x01E02C 07:E01C: 4C C2 DB  JMP loc_DBC2_before_rendering    ; prepares the offset of the sprite address

bra_E01F_try_to_hiding:
C - - - - - 0x01E02F 07:E01F: A5 39     LDA vGameInterruptEvent          ;
C - - - - - 0x01E031 07:E021: 30 12     BMI @bra_E035_RTS                ; If the game interrupt is exist
C - - - - - 0x01E033 07:E023: A5 C4     LDA vCheckpoint                  ;
C - - - - - 0x01E035 07:E025: D0 0E     BNE @bra_E035_RTS                ; If the room isn't empty
C - - - - - 0x01E037 07:E027: A5 1C     LDA vBtnPressedInGame            ;
C - - - - - 0x01E039 07:E029: 29 10     AND #BIT_BUTTON_Up               ;
C - - - - - 0x01E03B 07:E02B: F0 08     BEQ @bra_E035_RTS                ; If the button 'Up' isn't pressed
C - - - - - 0x01E03D 07:E02D: A5 2E     LDA vCorridorCounter             ;
C - - - - - 0x01E03F 07:E02F: C9 18     CMP #$18                         ; CONSTANT - start exiting
C - - - - - 0x01E041 07:E031: B0 02     BCS @bra_E035_RTS                ; If vCorridorCounter >= 0x18
C - - - - - 0x01E043 07:E033: E6 2E     INC vCorridorCounter             ; restores the counter
@bra_E035_RTS:
C - - - - - 0x01E045 07:E035: 60        RTS                              ;

tbl_E036_frame_:
- D 3 - - - 0x01E046 07:E036: 24        .byte $24  ; enter the corridor, frame #1
- D 3 - - - 0x01E047 07:E037: 26        .byte $26  ; enter the corridor, frame #2
- D 3 - - - 0x01E048 07:E038: 28        .byte $28  ; exit the corridor, frame #1
- D 3 - - - 0x01E049 07:E039: 2A        .byte $2A  ; exit the corridor, frame #2

loc_E03A_unknown:
C - - - - - 0x01E04A 07:E03A: A5 2E     LDA vCorridorCounter            ; !(UNUSED)
C - - - - - 0x01E04C 07:E03C: D0 09     BNE @bra_E047_skip              ; !(UNUSED)
C - - - - - 0x01E04E 07:E03E: 20 F1 DC  JSR sub_DCF1_reset_velocity     ; !(UNUSED)
C - - - - - 0x01E051 07:E041: A5 6C     LDA vChrStatus                  ; !(UNUSED)
C - - - - - 0x01E053 07:E043: 29 BF     AND #$BF                        ; !(UNUSED)
C - - - - - 0x01E055 07:E045: 85 6C     STA vChrStatus                  ; !(UNUSED)
@bra_E047_skip:
C - - - - - 0x01E057 07:E047: A2 18     LDX #$18                        ; !(UNUSED)
C - - - - - 0x01E059 07:E049: 4C C2 DB  JMP loc_DBC2_before_rendering   ; !(UNUSED)

sub_E04C_try_to_activate_personal_weapon:
C - - - - - 0x01E05C 07:E04C: A9 02     LDA #BIT_BUTTON_B               ;
C - - - - - 0x01E05E 07:E04E: 20 79 D0  JSR sub_D079_check_button_press ;
C - - - - - 0x01E061 07:E051: F0 30     BEQ bra_E083_RTS                ; Go to the branch If the button 'B' isn't pressed (shot a gun)
C - - - - - 0x01E063 07:E053: 24 79     BIT vChrAllowedStatus           ; 
C - - - - - 0x01E065 07:E055: 10 2C     BPL bra_E083_RTS                ; If the character isn't allowed the hit
C - - - - - 0x01E067 07:E057: A5 5F     LDA vChrLiveStatus              ;
C - - - - - 0x01E069 07:E059: 29 02     AND #$02                        ; CONSTANT - Goemon
C - - - - - 0x01E06B 07:E05B: F0 0F     BEQ @bra_E06C_bullet            ; If the character isn't Goemon
C - - - - - 0x01E06D 07:E05D: A5 78     LDA vSwordPosition              ;
C - - - - - 0x01E06F 07:E05F: D0 22     BNE bra_E083_RTS                ; If the position != 0x00
C - - - - - 0x01E071 07:E061: A9 0C     LDA #$0C                        ; CONSTANT - The sound of a sword swing
C - - - - - 0x01E073 07:E063: 20 20 C4  JSR sub_C420_add_sound_effect   ;
C - - - - - 0x01E076 07:E066: A9 08     LDA #$08                        ;
C - - - - - 0x01E078 07:E068: 85 78     STA vSwordPosition              ;
C - - - - - 0x01E07A 07:E06A: D0 17     BNE bra_E083_RTS                ; Always true

@bra_E06C_bullet:
C - - - - - 0x01E07C 07:E06C: A2 02     LDX #$02                        ; set loop counter (for Jigen)
C - - - - - 0x01E07E 07:E06E: A5 5F     LDA vChrLiveStatus              ;
C - - - - - 0x01E080 07:E070: 6A        ROR                             ;
C - - - - - 0x01E081 07:E071: B0 09     BCS @bra_E07C_loop              ; If a current character is Jigen
C - - - - - 0x01E083 07:E073: AD 14 02  LDA vCurrentWeaponStatus        ;
C - - - - - 0x01E086 07:E076: C9 42     CMP #$42                        ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x01E088 07:E078: F0 0A     BEQ bra_E084_rifle              ; If the rifle is activated
C - - - - - 0x01E08A 07:E07A: A2 00     LDX #$00                        ; set loop counter (for Lupin)
@bra_E07C_loop:                                                         ; loop by x (1 or 3 times)
C - - - - - 0x01E08C 07:E07C: B5 8F     LDA vBulletStatus,X             ;
C - - - - - 0x01E08E 07:E07E: 10 26     BPL bra_E0A6_shot               ; If the current bullet isn't activated
C - - - - - 0x01E090 07:E080: CA        DEX                             ; decrements loop counter
C - - - - - 0x01E091 07:E081: 10 F9     BPL @bra_E07C_loop              ; If Register X >= 0x00
bra_E083_RTS:
C - - - - - 0x01E093 07:E083: 60        RTS                             ;

bra_E084_rifle:
C - - - - - 0x01E094 07:E084: A5 73     LDA vRifleFireCounter           ;
C - - - - - 0x01E096 07:E086: D0 FB     BNE bra_E083_RTS                ; If RifleFire isn't timeout
C - - - - - 0x01E098 07:E088: A9 30     LDA #$30                        ;
C - - - - - 0x01E09A 07:E08A: 85 73     STA vRifleFireCounter           ; initializes a counter
C - - - - - 0x01E09C 07:E08C: A9 17     LDA #$17                        ; a shoot sound
C - - - - - 0x01E09E 07:E08E: 20 20 C4  JSR sub_C420_add_sound_effect   ;
C - - - - - 0x01E0A1 07:E091: A2 04     LDX #$04                        ; set loop counter
@bra_E093_loop:
C - - - - - 0x01E0A3 07:E093: A9 87     LDA #$87                        ; CONSTANT - 'the bullet is activated' + K, L, M flags (see vBulletStatus)
C - - - - - 0x01E0A5 07:E095: 95 8F     STA vBulletStatus,X             ;
C - - - - - 0x01E0A7 07:E097: BD A1 E0  LDA tbl_E0A1_offsets_by_posY,X  ; prepare an input parameter
C - - - - - 0x01E0AA 07:E09A: 20 B9 E0  JSR sub_E0B9_shot_ex            ;
C - - - - - 0x01E0AD 07:E09D: CA        DEX                             ; decrements loop counter
C - - - - - 0x01E0AE 07:E09E: 10 F3     BPL @bra_E093_loop              ; If Register X >= 0x00
C - - - - - 0x01E0B0 07:E0A0: 60        RTS                             ;

tbl_E0A1_offsets_by_posY:
- D 3 - - - 0x01E0B1 07:E0A1: FE        .byte $FE
- D 3 - - - 0x01E0B2 07:E0A2: FF        .byte $FF
- D 3 - - - 0x01E0B3 07:E0A3: 00        .byte $00
- D 3 - - - 0x01E0B4 07:E0A4: 01        .byte $01
- D 3 - - - 0x01E0B5 07:E0A5: 02        .byte $02

; In: Register X - a buller number
bra_E0A6_shot:
C - - - - - 0x01E0B6 07:E0A6: A9 0B     LDA #$0B                            ; Lupin or Jigen shoots (sound effect)
C - - - - - 0x01E0B8 07:E0A8: 20 20 C4  JSR sub_C420_add_sound_effect       ;
C - - - - - 0x01E0BB 07:E0AB: A0 81     LDY #$81                            ; CONSTANT - the bullet is activated + start of the shot
C - - - - - 0x01E0BD 07:E0AD: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x01E0BF 07:E0AF: 6A        ROR                                 ;
C - - - - - 0x01E0C0 07:E0B0: B0 02     BCS @bra_E0B4_assign                ; If a current character is Jigen
C - - - - - 0x01E0C2 07:E0B2: A0 C1     LDY #$C1                            ; CONSTANT - the bullet is activated + start of the shot + short shot
@bra_E0B4_assign:
C - - - - - 0x01E0C4 07:E0B4: 98        TYA                                 ;
C - - - - - 0x01E0C5 07:E0B5: 95 8F     STA vBulletStatus,X                 ;
C - - - - - 0x01E0C7 07:E0B7: A9 15     LDA #$15                            ; Initializes a bullet counter
; In: Register A - a start value for the counter or an offset
; In: Register X - a buller number
sub_E0B9_shot_ex:
C - - - - - 0x01E0C9 07:E0B9: 95 94     STA vBulletOffsetOrCounter,X        ;
C - - - - - 0x01E0CB 07:E0BB: B4 8F     LDY vBulletStatus,X                 ;
C - - - - - 0x01E0CD 07:E0BD: A5 6C     LDA vChrStatus                      ;
C - - - - - 0x01E0CF 07:E0BF: 6A        ROR                                 ;
C - - - - - 0x01E0D0 07:E0C0: 98        TYA                                 ;
C - - - - - 0x01E0D1 07:E0C1: 90 02     BCC @bra_E0C5_skip                  ; If the character is looking to the right
C - - - - - 0x01E0D3 07:E0C3: 09 10     ORA #$10                            ; CONSTANT - the left direction
@bra_E0C5_skip:
C - - - - - 0x01E0D5 07:E0C5: 95 8F     STA vBulletStatus,X                 ; updates the status
C - - - - - 0x01E0D7 07:E0C7: 29 10     AND #$10                            ; CONSTANT - the left direction
C - - - - - 0x01E0D9 07:E0C9: D0 1A     BNE bra_E0E5_left                   ; If the direction is on the left
C - - - - - 0x01E0DB 07:E0CB: A5 46     LDA vNoRoom                         ;
C - - - - - 0x01E0DD 07:E0CD: C9 19     CMP #$19                            ; CONSTANT - level racing
C - - - - - 0x01E0DF 07:E0CF: D0 03     BNE bra_E0D4_right                  ; If vNoRoom != 0x19
C - - - - - 0x01E0E1 07:E0D1: 4C 0A EC  JMP loc_EC0A_shot_with_racing       ;

bra_E0D4_right:
C - - - - - 0x01E0E4 07:E0D4: 20 F6 E0  JSR sub_E0F6_calc_bullet_positions  ;
C - - - - - 0x01E0E7 07:E0D7: A5 66     LDA vLowChrPosX                     ;
C - - - - - 0x01E0E9 07:E0D9: 18        CLC                                 ;
C - - - - - 0x01E0EA 07:E0DA: 65 02     ADC ram_0002                        ;
C - - - - - 0x01E0EC 07:E0DC: 95 85     STA vBulletLowPosX,X                ; <~ LowPosX + $0002
C - - - - - 0x01E0EE 07:E0DE: A5 68     LDA vHighChrPosX                    ;
C - - - - - 0x01E0F0 07:E0E0: 69 00     ADC #$00                            ;
C - - - - - 0x01E0F2 07:E0E2: 95 8A     STA vBulletHighPosX,X               ; <~ HighPosX (+1 with overflow)
C - - - - - 0x01E0F4 07:E0E4: 60        RTS                                 ;

bra_E0E5_left:
C - - - - - 0x01E0F5 07:E0E5: 20 F6 E0  JSR sub_E0F6_calc_bullet_positions  ;
C - - - - - 0x01E0F8 07:E0E8: A5 66     LDA vLowChrPosX                     ;
C - - - - - 0x01E0FA 07:E0EA: 38        SEC                                 ;
C - - - - - 0x01E0FB 07:E0EB: E5 02     SBC ram_0002                        ;
C - - - - - 0x01E0FD 07:E0ED: 95 85     STA vBulletLowPosX,X                ; <~ LowPosX - $0002
C - - - - - 0x01E0FF 07:E0EF: A5 68     LDA vHighChrPosX                    ;
C - - - - - 0x01E101 07:E0F1: E9 00     SBC #$00                            ;
C - - - - - 0x01E103 07:E0F3: 95 8A     STA vBulletHighPosX,X               ; <~ HighPosX - 0x01 (+1 with overflow)
C - - - - - 0x01E105 07:E0F5: 60        RTS                                 ;

; In: Register X - the number of the bullet
; Out: Register Y - the offset by X
sub_E0F6_calc_bullet_positions:
C - - - - - 0x01E106 07:E0F6: A0 16     LDY #$16                             ; offset #1
C - - - - - 0x01E108 07:E0F8: 24 6D     BIT vMovableChrStatus                ;
C - - - - - 0x01E10A 07:E0FA: 30 13     BMI @bra_E10F_tmp_assign             ; If the character is moving in the water
C - - - - - 0x01E10C 07:E0FC: A0 10     LDY #$10                             ; offset #2
C - - - - - 0x01E10E 07:E0FE: AD 14 02  LDA vCurrentWeaponStatus             ;
C - - - - - 0x01E111 07:E101: C9 42     CMP #$42                             ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x01E113 07:E103: F0 0A     BEQ @bra_E10F_tmp_assign             ; If the rifle is activated
C - - - - - 0x01E115 07:E105: A0 0F     LDY #$0F                             ; offset #3
C - - - - - 0x01E117 07:E107: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01E119 07:E109: 29 02     AND #$02                             ; CONSTANT - the character is sitting
C - - - - - 0x01E11B 07:E10B: D0 02     BNE @bra_E10F_tmp_assign             ; the character is sitting
C - - - - - 0x01E11D 07:E10D: A0 17     LDY #$17                             ; offset #4
@bra_E10F_tmp_assign:
C - - - - - 0x01E11F 07:E10F: 84 02     STY ram_0002                         ;
C - - - - - 0x01E121 07:E111: A5 6A     LDA vScreenChrPosY                   ;
C - - - - - 0x01E123 07:E113: 38        SEC                                  ;
C - - - - - 0x01E124 07:E114: E5 02     SBC ram_0002                         ;
C - - - - - 0x01E126 07:E116: 95 80     STA vBulletPosY,X                    ; <~ ChrPosY - $0002
C - - - - - 0x01E128 07:E118: A0 18     LDY #$18                             ; offset #1
C - - - - - 0x01E12A 07:E11A: 24 6D     BIT vMovableChrStatus                ;
C - - - - - 0x01E12C 07:E11C: 70 11     BVS @bra_E12F_assign                 ; If the character is moving in the balloon
C - - - - - 0x01E12E 07:E11E: A0 16     LDY #$16                             ; offset #2
C - - - - - 0x01E130 07:E120: 24 6D     BIT vMovableChrStatus                ;
C - - - - - 0x01E132 07:E122: 30 0B     BMI @bra_E12F_assign                 ; If the character is moving in the water
C - - - - - 0x01E134 07:E124: A0 14     LDY #$14                             ; offset #3
C - - - - - 0x01E136 07:E126: AD 14 02  LDA vCurrentWeaponStatus             ;
C - - - - - 0x01E139 07:E129: C9 42     CMP #$42                             ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x01E13B 07:E12B: F0 02     BEQ @bra_E12F_assign                 ; If the rifle is activated
C - - - - - 0x01E13D 07:E12D: A0 10     LDY #$10                             ; offset #4
@bra_E12F_assign:
C - - - - - 0x01E13F 07:E12F: 84 02     STY ram_0002                         ;
C - - - - - 0x01E141 07:E131: 60        RTS                                  ;

; In Register X - the number of the bullets
loc_E132_bullets_subroutine:
C D 3 - - - 0x01E142 07:E132: 86 10     STX vTempCounter10              ; set loop counter
bra_E134_loop:                                                          ; loop by vTempCounter10
C - - - - - 0x01E144 07:E134: A6 10     LDX vTempCounter10              ;
C - - - - - 0x01E146 07:E136: 20 3E E1  JSR sub_E13E_bullet_subroutine  ;
C - - - - - 0x01E149 07:E139: C6 10     DEC vTempCounter10              ; decrement vTempCounter10
C - - - - - 0x01E14B 07:E13B: 10 F7     BPL bra_E134_loop               ; In vTempCounter10 < 0x80
bra_E13D_RTS:
C - - - - - 0x01E14D 07:E13D: 60        RTS                             ;

; In Register X - the number of the bullet
sub_E13E_bullet_subroutine:
C - - - - - 0x01E14E 07:E13E: B5 8F     LDA vBulletStatus,X              ;
C - - - - - 0x01E150 07:E140: 10 FB     BPL bra_E13D_RTS                 ; If the bullet is not activated
C - - - - - 0x01E152 07:E142: 29 10     AND #$10                         ; CONSTANT - the left direction
C - - - - - 0x01E154 07:E144: F0 06     BEQ bra_E14C_right               ; If the direction is on the right
C - - - - - 0x01E156 07:E146: 20 7A E1  JSR sub_E17A_move_left           ;
C - - - - - 0x01E159 07:E149: 4C 4F E1  JMP loc_E14F_continue            ;

bra_E14C_right:
C - - - - - 0x01E15C 07:E14C: 20 8B E1  JSR sub_E18B_move_right          ;
loc_E14F_continue:
C D 3 - - - 0x01E15F 07:E14F: 20 A8 E1  JSR sub_E1A8_has_bullet_abort    ;
C - - - - - 0x01E162 07:E152: B0 E9     BCS bra_E13D_RTS                 ; If the bullet is destroyed
C - - - - - 0x01E164 07:E154: A4 0A     LDY ram_000A                     ; initializes the frame offset
C - - - - - 0x01E166 07:E156: B5 8F     LDA vBulletStatus,X              ;
C - - - - - 0x01E168 07:E158: 29 10     AND #$10                         ; CONSTANT - the left direction
C - - - - - 0x01E16A 07:E15A: F0 02     BEQ @bra_E15E_right              ; If the direction is on the right
C - - - - - 0x01E16C 07:E15C: C8        INY                              ;
C - - - - - 0x01E16D 07:E15D: C8        INY                              ; next the offset for the left frame
@bra_E15E_right:
C - - - - - 0x01E16E 07:E15E: C0 18     CPY #$18                         ; CONSTANT - Max offset
C - - - - - 0x01E170 07:E160: 90 03     BCC @bra_E165_add                ; If Register Y < 0x18
C - - - - - 0x01E172 07:E162: 8A        TXA                              ; A <~ the number of the bullet
C - - - - - 0x01E173 07:E163: D0 D8     BNE bra_E13D_RTS                 ; If the bullet isn't last
@bra_E165_add:
C - - - - - 0x01E175 07:E165: 98        TYA                              ; A <~ the frame offset
C - - - - - 0x01E176 07:E166: 18        CLC                              ;
C - - - - - 0x01E177 07:E167: 69 A8     ADC #$A8                         ; + Y ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01E179 07:E169: 85 01     STA ram_0001                     ;
C - - - - - 0x01E17B 07:E16B: A9 40     LDA #$40                         ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01E17D 07:E16D: 85 02     STA ram_0002                     ; $8100, bank 05 (2 page)
C - - - - - 0x01E17F 07:E16F: B5 80     LDA vBulletPosY,X                ;
C - - - - - 0x01E181 07:E171: 85 00     STA ram_0000                     ; ~> sprite_magic1 (see v_sprite_magic1)
C - - - - - 0x01E183 07:E173: A5 03     LDA ram_0003                     ; sprite_magic4, assigned in $E1A8, $E20F
C - - - - - 0x01E185 07:E175: 95 7B     STA vBulletPosX,X                ;
C - - - - - 0x01E187 07:E177: 4C 33 CE  JMP loc_CE33_add_sprite_magic    ;

sub_E17A_move_left:
C - - - - - 0x01E18A 07:E17A: 20 9C E1  JSR sub_E19C_get_bullet_velocity   ;
C - - - - - 0x01E18D 07:E17D: B5 85     LDA vBulletLowPosX,X               ;
C - - - - - 0x01E18F 07:E17F: 38        SEC                                ;
C - - - - - 0x01E190 07:E180: E5 02     SBC ram_0002                       ;
C - - - - - 0x01E192 07:E182: 95 85     STA vBulletLowPosX,X               ; <~ LowPosX - $0002
C - - - - - 0x01E194 07:E184: B5 8A     LDA vBulletHighPosX,X              ;
C - - - - - 0x01E196 07:E186: E9 00     SBC #$00                           ;
C - - - - - 0x01E198 07:E188: 95 8A     STA vBulletHighPosX,X              ; <~ HighPosX - 0x01 (+1 with overflow)
C - - - - - 0x01E19A 07:E18A: 60        RTS                                ;

sub_E18B_move_right:
C - - - - - 0x01E19B 07:E18B: 20 9C E1  JSR sub_E19C_get_bullet_velocity   ;
C - - - - - 0x01E19E 07:E18E: B5 85     LDA vBulletLowPosX,X               ;
C - - - - - 0x01E1A0 07:E190: 18        CLC                                ;
C - - - - - 0x01E1A1 07:E191: 65 02     ADC ram_0002                       ;
C - - - - - 0x01E1A3 07:E193: 95 85     STA vBulletLowPosX,X               ; <~ LowPosX + $0002
C - - - - - 0x01E1A5 07:E195: B5 8A     LDA vBulletHighPosX,X              ;
C - - - - - 0x01E1A7 07:E197: 69 00     ADC #$00                           ;
C - - - - - 0x01E1A9 07:E199: 95 8A     STA vBulletHighPosX,X              ; <~ HighPosX (+1 with overflow)
C - - - - - 0x01E1AB 07:E19B: 60        RTS                                ;

; Out: $0002 - the velocity
sub_E19C_get_bullet_velocity:
C - - - - - 0x01E1AC 07:E19C: A0 03     LDY #$03                        ; Initializes a velocity
C - - - - - 0x01E1AE 07:E19E: B5 8F     LDA vBulletStatus,X             ;
C - - - - - 0x01E1B0 07:E1A0: 29 20     AND #$20                        ; CONSTANT - slow mode
C - - - - - 0x01E1B2 07:E1A2: F0 01     BEQ @bra_E1A5_skip              ; If the slow mode isn't activated
C - - - - - 0x01E1B4 07:E1A4: 88        DEY                             ; Y <~ 0x02
@bra_E1A5_skip:
C - - - - - 0x01E1B5 07:E1A5: 84 02     STY ram_0002                    ;
C - - - - - 0x01E1B7 07:E1A7: 60        RTS                             ;

; In Register X - the number of the bullet
; Out: $0003 = vBulletLowPosX - vLowViewPortPosX
; Out: $000A - the frame offset
; Out: carry flag (analog return true or false):
; 1, if the abort has occurred
; 0, otherwise
sub_E1A8_has_bullet_abort:
C - - - - - 0x01E1B8 07:E1A8: A0 00     LDY #$00                             ; Frame - a simple shot
C - - - - - 0x01E1BA 07:E1AA: B5 8F     LDA vBulletStatus,X                  ;
C - - - - - 0x01E1BC 07:E1AC: 29 03     AND #$03                             ; CONSTANT - start of the shot
C - - - - - 0x01E1BE 07:E1AE: F0 0D     BEQ @bra_E1BD_assign                 ; If it isn't the start of the shot
C - - - - - 0x01E1C0 07:E1B0: D6 8F     DEC vBulletStatus,X                  ; Fixes the status 'start of the shot'
C - - - - - 0x01E1C2 07:E1B2: A0 18     LDY #$18                             ; Frame - a rifle flash
C - - - - - 0x01E1C4 07:E1B4: AD 14 02  LDA vCurrentWeaponStatus             ;
C - - - - - 0x01E1C7 07:E1B7: C9 42     CMP #$42                             ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x01E1C9 07:E1B9: F0 02     BEQ @bra_E1BD_assign                 ; If the rifle is activated
C - - - - - 0x01E1CB 07:E1BB: A0 04     LDY #$04                             ; Frame - a start of the shot
@bra_E1BD_assign:
C - - - - - 0x01E1CD 07:E1BD: 84 0A     STY ram_000A                         ;
C - - - - - 0x01E1CF 07:E1BF: B5 8F     LDA vBulletStatus,X                  ;
C - - - - - 0x01E1D1 07:E1C1: 29 04     AND #$04                             ; CONSTANT - 'the vBulletOffsetOrCounter indication'
C - - - - - 0x01E1D3 07:E1C3: F0 11     BEQ @bra_E1D6_as_counter             ; If vBulletOffsetOrCounter is the counter
C - - - - - 0x01E1D5 07:E1C5: C0 00     CPY #$00                             ;
C - - - - - 0x01E1D7 07:E1C7: D0 3E     BNE bra_E207_final_check             ; If the frame is a simple shot
C - - - - - 0x01E1D9 07:E1C9: B5 80     LDA vBulletPosY,X                    ;
C - - - - - 0x01E1DB 07:E1CB: 18        CLC                                  ;
C - - - - - 0x01E1DC 07:E1CC: 75 94     ADC vBulletOffsetOrCounter,X         ;
C - - - - - 0x01E1DE 07:E1CE: 95 80     STA vBulletPosY,X                    ; PosY <~ PosY + the offset
C - - - - - 0x01E1E0 07:E1D0: C9 F0     CMP #$F0                             ;
C - - - - - 0x01E1E2 07:E1D2: B0 40     BCS bra_E214_abort                   ; If the bullet is off screen by Y-axis
C - - - - - 0x01E1E4 07:E1D4: 90 31     BCC bra_E207_final_check             ; Always true

@bra_E1D6_as_counter:
C - - - - - 0x01E1E6 07:E1D6: B5 8F     LDA vBulletStatus,X                  ;
C - - - - - 0x01E1E8 07:E1D8: 29 40     AND #$40                             ; CONSTANT - the dictance
C - - - - - 0x01E1EA 07:E1DA: F0 04     BEQ @bra_E1E0_skip                   ; If the dictance is long
C - - - - - 0x01E1EC 07:E1DC: D6 94     DEC vBulletOffsetOrCounter,X         ; updates a bullet counter
C - - - - - 0x01E1EE 07:E1DE: F0 34     BEQ bra_E214_abort                   ; If the counter is timeout
@bra_E1E0_skip:
C - - - - - 0x01E1F0 07:E1E0: 8A        TXA                                  ; A <~ the number of the bullet
C - - - - - 0x01E1F1 07:E1E1: 29 01     AND #$01                             ;
C - - - - - 0x01E1F3 07:E1E3: 85 00     STA ram_0000                         ; 0x01 - odd numner, 0x00 - even number
C - - - - - 0x01E1F5 07:E1E5: A5 2B     LDA v_nmi_counter                    ;
C - - - - - 0x01E1F7 07:E1E7: 29 01     AND #$01                             ; A <~ 0x00 or 0x01 (0 - even vNmiCounter, 1 - odd vNmiCounter)
C - - - - - 0x01E1F9 07:E1E9: C5 00     CMP ram_0000                         ;
C - - - - - 0x01E1FB 07:E1EB: D0 1A     BNE bra_E207_final_check             ; if the parity doesn't match
C - - - - - 0x01E1FD 07:E1ED: B5 80     LDA vBulletPosY,X                    ;
C - - - - - 0x01E1FF 07:E1EF: 85 00     STA ram_0000                         ; prepares 1st input parameter
C - - - - - 0x01E201 07:E1F1: B5 85     LDA vBulletLowPosX,X                 ;
C - - - - - 0x01E203 07:E1F3: 85 01     STA ram_0001                         ; prepares 2nd input parameter
C - - - - - 0x01E205 07:E1F5: B5 8A     LDA vBulletHighPosX,X                ;
C - - - - - 0x01E207 07:E1F7: 85 4D     STA vCacheNoScreen                   ; prepares 3rd input parameter
C - - - - - 0x01E209 07:E1F9: 20 E5 D2  JSR sub_D2E5_get_collision_value     ;
C - - - - - 0x01E20C 07:E1FC: C9 01     CMP #$01                             ; CONSTANT - a strong collision
C - - - - - 0x01E20E 07:E1FE: D0 07     BNE bra_E207_final_check             ; If the strong collision doesn't exist
C - - - - - 0x01E210 07:E200: 20 14 E2  JSR sub_E214_abort                   ;
C - - - - - 0x01E213 07:E203: A0 08     LDY #$08                             ; Assigns the frame offset
C - - - - - 0x01E215 07:E205: 84 0A     STY ram_000A                         ;
bra_E207_final_check:
C - - - - - 0x01E217 07:E207: B5 85     LDA vBulletLowPosX,X                 ;
C - - - - - 0x01E219 07:E209: 85 00     STA ram_0000                         ; prepares X-position
C - - - - - 0x01E21B 07:E20B: B5 8A     LDA vBulletHighPosX,X                ;
C - - - - - 0x01E21D 07:E20D: 85 01     STA ram_0001                         ; prepares macro X-position
C - - - - - 0x01E21F 07:E20F: 20 AC D6  JSR sub_D6AC_out_of_screen           ;
C - - - - - 0x01E222 07:E212: 90 06     BCC bra_E21A_return_false            ; If the bullet is on the screen
bra_E214_abort:
sub_E214_abort:
C - - - - - 0x01E224 07:E214: A9 00     LDA #$00                             ;
C - - - - - 0x01E226 07:E216: 95 8F     STA vBulletStatus,X                  ; destroy the bullet, clears the status
C - - - - - 0x01E228 07:E218: 38        SEC                                  ; return true
C - - - - - 0x01E229 07:E219: 60        RTS                                  ;

bra_E21A_return_false:
C - - - - - 0x01E22A 07:E21A: 18        CLC                                  ; return false
C - - - - - 0x01E22B 07:E21B: 60        RTS                                  ;

; In: Register X - the offset of the sprite address
; In: $0000 - The Goemon's position along the Y axis relative to the screen
; In: $0001 - The Goemon's position along the X axis relative to the screen
loc_E21C_goemon:
C D 3 - - - 0x01E22C 07:E21C: 20 8D E2  JSR sub_E28D_update_sword_position   ;
C - - - - - 0x01E22F 07:E21F: A5 78     LDA vSwordPosition                   ;
C - - - - - 0x01E231 07:E221: C9 03     CMP #$03                             ; CONSTANT - the finish hit frame
C - - - - - 0x01E233 07:E223: B0 10     BCS bra_E235_hit                     ; If the position >= 0x03
; In: Register X - the offset of the sprite address
bra_E225_skip:
C - - - - - 0x01E235 07:E225: 8A        TXA                                  ;
C - - - - - 0x01E236 07:E226: 48        PHA                                  ; store x (the offset)
C - - - - - 0x01E237 07:E227: 20 82 E2  JSR sub_E282_render_goemon           ;
C - - - - - 0x01E23A 07:E22A: 68        PLA                                  ; retrieve x (see $E226)
C - - - - - 0x01E23B 07:E22B: C9 18     CMP #$18                             ;
C - - - - - 0x01E23D 07:E22D: B0 05     BCS bra_E234_RTS                     ; If the offset by the address >= 0x18
loc_E22F_render:
C D 3 - - - 0x01E23F 07:E22F: E6 05     INC v_CE5A_counter                   ; set loop counter = 1
C - - - - - 0x01E241 07:E231: 4C 99 CE  JMP loc_CE99_render_goemon_hand      ;

bra_E234_RTS:
C - - - - - 0x01E244 07:E234: 60        RTS                                  ;

bra_E235_hit:
C - - - - - 0x01E245 07:E235: A5 79     LDA vChrAllowedStatus                ;
C - - - - - 0x01E247 07:E237: 10 EC     BPL bra_E225_skip                    ; If the character isn't allowed the hit
C - - - - - 0x01E249 07:E239: 8A        TXA                                  ;
C - - - - - 0x01E24A 07:E23A: 48        PHA                                  ; store x (the offset)
C - - - - - 0x01E24B 07:E23B: 20 57 E2  JSR sub_E257_render_sword            ;
C - - - - - 0x01E24E 07:E23E: A5 6A     LDA vScreenChrPosY                   ;
C - - - - - 0x01E250 07:E240: 85 00     STA ram_0000                         ; prepare 1st parameter (for render)
C - - - - - 0x01E252 07:E242: A5 64     LDA vScreenChrPosX                   ;
C - - - - - 0x01E254 07:E244: 85 01     STA ram_0001                         ; prepare 2nd parameter (for render)
C - - - - - 0x01E256 07:E246: 68        PLA                                  ; retrieve x (see $E23A)
C - - - - - 0x01E257 07:E247: 48        PHA                                  ; store a (the offset)
C - - - - - 0x01E258 07:E248: 20 82 E2  JSR sub_E282_render_goemon           ;
C - - - - - 0x01E25B 07:E24B: 68        PLA                                  ; retrieve x (see $E247)
C - - - - - 0x01E25C 07:E24C: C9 18     CMP #$18                             ;
C - - - - - 0x01E25E 07:E24E: B0 E4     BCS bra_E234_RTS                     ; If the offset by the address >= 0x18
C - - - - - 0x01E260 07:E250: C8        INY                                  ;
C - - - - - 0x01E261 07:E251: C8        INY                                  ;
C - - - - - 0x01E262 07:E252: C8        INY                                  ;
C - - - - - 0x01E263 07:E253: C8        INY                                  ; next set by 4 bytes
C - - - - - 0x01E264 07:E254: 4C 2F E2  JMP loc_E22F_render                  ;

; In: Register X - the offset of the sprite address
sub_E257_render_sword:
C - - - - - 0x01E267 07:E257: A5 00     LDA ram_0000                     ;
C - - - - - 0x01E269 07:E259: 18        CLC                              ;
C - - - - - 0x01E26A 07:E25A: 7D 8D E3  ADC tbl_E38D_offsets,X           ;
C - - - - - 0x01E26D 07:E25D: 85 00     STA ram_0000                     ; <~ $0000 + the offset by Y
C - - - - - 0x01E26F 07:E25F: A5 01     LDA ram_0001                     ;
C - - - - - 0x01E271 07:E261: 18        CLC                              ;
C - - - - - 0x01E272 07:E262: 7D 8E E3  ADC tbl_E38D_offsets + 1,X       ;
C - - - - - 0x01E275 07:E265: 85 01     STA ram_0001                     ; <~ $0001 + the offset by X
C - - - - - 0x01E277 07:E267: A5 78     LDA vSwordPosition               ;
C - - - - - 0x01E279 07:E269: 38        SEC                              ;
C - - - - - 0x01E27A 07:E26A: E9 03     SBC #$03                         ; <~ the position - 0x03
C - - - - - 0x01E27C 07:E26C: 0A        ASL                              ;
C - - - - - 0x01E27D 07:E26D: 0A        ASL                              ; *4, because the right and left frames have 2 bytes each
C - - - - - 0x01E27E 07:E26E: AA        TAX                              ;
C - - - - - 0x01E27F 07:E26F: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01E281 07:E271: 6A        ROR                              ;
C - - - - - 0x01E282 07:E272: 90 02     BCC @bra_E276_right              ; If the character is looking to the right
C - - - - - 0x01E284 07:E274: E8        INX                              ;
C - - - - - 0x01E285 07:E275: E8        INX                              ; increment the offset of the sprite address (left frame)
@bra_E276_right:
C - - - - - 0x01E286 07:E276: 8A        TXA                              ;
C - - - - - 0x01E287 07:E277: 18        CLC                              ;
C - - - - - 0x01E288 07:E278: 69 58     ADC #$58                         ; see bank 05, page 1, $8058
C - - - - - 0x01E28A 07:E27A: AA        TAX                              ; X <~ X + 0x58
C - - - - - 0x01E28B 07:E27B: A9 01     LDA #$01                         ; AA = 1, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01E28D 07:E27D: 85 45     STA vCharacterRenderData         ;
C - - - - - 0x01E28F 07:E27F: 4C 5A CE  JMP loc_CE5A_render_character    ;

; In: Register A - the offset of the sprite address
sub_E282_render_goemon:
C - - - - - 0x01E292 07:E282: 18        CLC                              ;
C - - - - - 0x01E293 07:E283: 69 2C     ADC #$2C                         ; see bank 05, page 1, $802C
C - - - - - 0x01E295 07:E285: AA        TAX                              ; X <~ the offset + 0x2C
C - - - - - 0x01E296 07:E286: A9 01     LDA #$01                         ; AA = 1, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01E298 07:E288: 85 45     STA vCharacterRenderData         ;
C - - - - - 0x01E29A 07:E28A: 4C 5A CE  JMP loc_CE5A_render_character    ;

sub_E28D_update_sword_position:
C - - - - - 0x01E29D 07:E28D: A5 78     LDA vSwordPosition    ;
C - - - - - 0x01E29F 07:E28F: F0 66     BEQ bra_E2F7_RTS      ; If the position == 0x00
C - - - - - 0x01E2A1 07:E291: A5 2C     LDA vLowCounter       ;
C - - - - - 0x01E2A3 07:E293: 6A        ROR                   ;
C - - - - - 0x01E2A4 07:E294: 90 02     BCC @bra_E298_RTS     ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x01E2A6 07:E296: C6 78     DEC vSwordPosition    ; updates the position
@bra_E298_RTS:
C - - - - - 0x01E2A8 07:E298: 60        RTS                   ;

; In: Register A - a button state
; Out: Z == 1, if if the button for player 2 isn't pressed
sub_E299_check_button_press:
C - - - - - 0x01E2A9 07:E299: 85 12     STA $0012                    ;
C - - - - - 0x01E2AB 07:E29B: A5 1F     LDA v_player2_btn_pressed    ;
C - - - - - 0x01E2AD 07:E29D: 25 12     AND $0012                    ;
C - - - - - 0x01E2AF 07:E29F: F0 04     BEQ @bra_E2A5_RTS            ; If the button does not match the expected result
C - - - - - 0x01E2B1 07:E2A1: 45 20     EOR v_last_p2_btn_pressed    ; The double click protection
C - - - - - 0x01E2B3 07:E2A3: 25 12     AND $0012                    ;
@bra_E2A5_RTS:
C - - - - - 0x01E2B5 07:E2A5: 60        RTS                          ;

sub_E2A6_test_feature_smth:
C - - - - - 0x01E2B6 07:E2A6: AD F6 FF  LDA Set_features                ;
C - - - - - 0x01E2B9 07:E2A9: 30 4C     BMI bra_E2F7_RTS                ; If test mode is disabled
C - - - - - 0x01E2BB 07:E2AB: A5 3B     LDA vSharedGameStatus           ;
C - - - - - 0x01E2BD 07:E2AD: 6A        ROR                             ;
C - - - - - 0x01E2BE 07:E2AE: B0 47     BCS bra_E2F7_RTS                ; Branch if 'A screen with the message'
C - - - - - 0x01E2C0 07:E2B0: A9 80     LDA #BIT_BUTTON_Right           ;
C - - - - - 0x01E2C2 07:E2B2: 20 99 E2  JSR sub_E299_check_button_press ;
C - - - - - 0x01E2C5 07:E2B5: F0 0F     BEQ @bra_E2C6_skip              ; Go to the branch If the button 'Right' isn't pressed
C - - - - - 0x01E2C7 07:E2B7: EE 09 02  INC vTestSelectedItem           ; next selected item
C - - - - - 0x01E2CA 07:E2BA: AD 09 02  LDA vTestSelectedItem           ;
C - - - - - 0x01E2CD 07:E2BD: C9 09     CMP #$09                        ; CONSTANT - Max allow value-1
C - - - - - 0x01E2CF 07:E2BF: 90 05     BCC @bra_E2C6_skip              ; If vTestSelectedItem < 0x09
C - - - - - 0x01E2D1 07:E2C1: A9 00     LDA #$00                        ;
C - - - - - 0x01E2D3 07:E2C3: 8D 09 02  STA vTestSelectedItem           ; reset to the radio
@bra_E2C6_skip:
C - - - - - 0x01E2D6 07:E2C6: A9 01     LDA #BIT_BUTTON_A               ;
C - - - - - 0x01E2D8 07:E2C8: 20 99 E2  JSR sub_E299_check_button_press ;
C - - - - - 0x01E2DB 07:E2CB: F0 12     BEQ bra_E2DF_set_render_params_ ; Go to the branch If the button 'A' isn't pressed
C - - - - - 0x01E2DD 07:E2CD: AE 09 02  LDX vTestSelectedItem           ;
C - - - - - 0x01E2E0 07:E2D0: FE 00 02  INC v_items,X                   ; +1 for the selected item
C - - - - - 0x01E2E3 07:E2D3: E0 05     CPX #$05                        ; CONSTANT - the breathing apparatus
C - - - - - 0x01E2E5 07:E2D5: B0 08     BCS bra_E2DF_set_render_params_ ; If the selected item index >= 0x05
C - - - - - 0x01E2E7 07:E2D7: AD 14 02  LDA vCurrentWeaponStatus        ;
C - - - - - 0x01E2EA 07:E2DA: 29 7F     AND #$7F                        ; CONSTANT - all except 'the weapons are not exist'
C - - - - - 0x01E2EC 07:E2DC: 8D 14 02  STA vCurrentWeaponStatus        ; the selected item is exist
bra_E2DF_set_render_params_:
C - - - - - 0x01E2EF 07:E2DF: A9 27     LDA #$27                        ; CONSTANT - the Y-position of the selected item
C - - - - - 0x01E2F1 07:E2E1: 8D EC 07  STA vStartOAM + 236             ;
C - - - - - 0x01E2F4 07:E2E4: A9 3F     LDA #$3F                        ; CONSTANT - a white square
C - - - - - 0x01E2F6 07:E2E6: 8D ED 07  STA vStartOAM + 237             ;
C - - - - - 0x01E2F9 07:E2E9: A9 00     LDA #$00                        ; CONSTANT - the attributes of the sprite
C - - - - - 0x01E2FB 07:E2EB: 8D EE 07  STA vStartOAM + 238             ;
C - - - - - 0x01E2FE 07:E2EE: AE 09 02  LDX vTestSelectedItem           ;
C - - - - - 0x01E301 07:E2F1: BD 20 CB  LDA tbl_CB20_item_offset_x,X    ;
C - - - - - 0x01E304 07:E2F4: 8D EF 07  STA vStartOAM + 239             ; <~ X-position
bra_E2F7_RTS:
C - - - - - 0x01E307 07:E2F7: 60        RTS                             ;

sub_E2F8_set_character_palette:
C - - - - - 0x01E308 07:E2F8: A5 5F     LDA vChrLiveStatus       ;
C - - - - - 0x01E30A 07:E2FA: 29 03     AND #$03                 ; CONSTANT - the current selected character
C - - - - - 0x01E30C 07:E2FC: 0A        ASL                      ;
C - - - - - 0x01E30D 07:E2FD: 0A        ASL                      ; *4 
C - - - - - 0x01E30E 07:E2FE: AA        TAX                      ; X <~ {0x00, 0x04, 0x08}
; In: Register X - an offset in the table
sub_E2FF_set_character_palette_ex:
C - - - - - 0x01E30F 07:E2FF: A0 01     LDY #$01                 ; set loop counter
@bra_E301_loop:                                                  ; loop by y
C - - - - - 0x01E311 07:E301: BD A6 E3  LDA tbl_E3A6_palette,X   ;
C - - - - - 0x01E314 07:E304: 99 14 06  STA vCachePalette + 20,Y ;
C - - - - - 0x01E317 07:E307: E8        INX                      ; increment position in the table
C - - - - - 0x01E318 07:E308: C8        INY                      ; increment loop counter
C - - - - - 0x01E319 07:E309: C0 04     CPY #$04                 ;
C - - - - - 0x01E31B 07:E30B: D0 F4     BNE @bra_E301_loop       ; If Register Y != 0x04
C - - - - - 0x01E31D 07:E30D: 60        RTS                      ;

sub_E30E_fix_colors_in_level1:
C - - - - - 0x01E31E 07:E30E: A2 00     LDX #$00                     ; 1 of 3 colors
C - - - - - 0x01E320 07:E310: A5 27     LDA vLowViewPortPosX         ;
C - - - - - 0x01E322 07:E312: 38        SEC                          ;
C - - - - - 0x01E323 07:E313: E9 80     SBC #$80                     ;
C - - - - - 0x01E325 07:E315: A5 4B     LDA vHighViewPortPosX        ;
C - - - - - 0x01E327 07:E317: E9 03     SBC #$03                     ;
C - - - - - 0x01E329 07:E319: 90 0A     BCC @bra_E325_change_colors  ; If Hp:Lp < 0x03:0x80
C - - - - - 0x01E32B 07:E31B: A2 02     LDX #$02                     ; 2 of 3 colors
C - - - - - 0x01E32D 07:E31D: A5 4B     LDA vHighViewPortPosX        ;
C - - - - - 0x01E32F 07:E31F: C9 0D     CMP #$0D                     ;
C - - - - - 0x01E331 07:E321: 90 02     BCC @bra_E325_change_colors  ; If vHighViewPortPosX < 0x0D
C - - - - - 0x01E333 07:E323: A2 04     LDX #$04                     ; 3 of 3 colors
@bra_E325_change_colors:
C - - - - - 0x01E335 07:E325: BD B5 E3  LDA tbl_E3B5_colors,X        ;
C - - - - - 0x01E338 07:E328: 8D 06 06  STA vCachePalette + 6        ;
C - - - - - 0x01E33B 07:E32B: BD B6 E3  LDA tbl_E3B5_colors + 1,X    ;
C - - - - - 0x01E33E 07:E32E: 8D 0A 06  STA vCachePalette + 10       ; 
C - - - - - 0x01E341 07:E331: 60        RTS                          ;

; Out: Register A - a jump type
sub_E332_correction_ScreenChrPosY:
@bra_E332_repeat:
C - - - - - 0x01E342 07:E332: A5 6A     LDA vScreenChrPosY           ;
C - - - - - 0x01E344 07:E334: 29 07     AND #$07                     ;
C - - - - - 0x01E346 07:E336: C9 07     CMP #$07                     ;
C - - - - - 0x01E348 07:E338: F0 04     BEQ bra_E33E_generate        ; If Register A == 0x07
C - - - - - 0x01E34A 07:E33A: C6 6A     DEC vScreenChrPosY           ;
C - - - - - 0x01E34C 07:E33C: D0 F4     BNE @bra_E332_repeat         ; If vScreenChrPosY != 0x00
; Out: Register A - a jump type
sub_E332_generate_jump_type:
bra_E33E_generate:
C - - - - - 0x01E34E 07:E33E: 20 64 D0  JSR sub_D064_generate_rng    ; generates a random value
C - - - - - 0x01E351 07:E341: 29 0F     AND #$0F                     ;
C - - - - - 0x01E353 07:E343: A8        TAY                          ;
C - - - - - 0x01E354 07:E344: B9 48 E3  LDA tbl_E348_counter_index,Y ;
C - - - - - 0x01E357 07:E347: 60        RTS                          ;

tbl_E348_counter_index:
- D 3 - - - 0x01E358 07:E348: 00        .byte $00, $01, $02, $03
- D 3 - - - 0x01E35C 07:E34C: 04        .byte $04, $00, $01, $02
- D 3 - - - 0x01E360 07:E350: 03        .byte $03, $04, $00, $01
- D 3 - - - 0x01E364 07:E354: 02        .byte $02, $03, $04, $00

tbl_E358_init_counter:
- D 3 - - - 0x01E368 07:E358: 06        .byte $06   ; simple jump
- D 3 - - - 0x01E369 07:E359: 00        .byte $00   ; high jump
- D 3 - - - 0x01E36A 07:E35A: 13        .byte $13   ; jumping off
- D 3 - - - 0x01E36B 07:E35B: 06        .byte $06   ; jump by side
- D 3 - - - 0x01E36C 07:E35C: 13        .byte $13   ; jumping off (for the enemies)

; In the case jumpCounter is equal to 0x17 or 0x18 - this is the amplitude
; 0xFF -> -1, 0xFE -> -2, 0xFD -> -3, 0xFC -> -4, 0xFB -> -5
; 0x00 -> 0
; 0x01 -> +1, 0x02 -> +2, 0x03 -> +3, 0x04 -> +4, 0x05 -> +5
tbl_E35D_jump_posY_offset:
- D 3 - - - 0x01E36D 07:E35D: FB        .byte $FB, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FD, $FD, $FD, $FD, $FD, $FD
- D 3 - - - 0x01E37D 07:E36D: FD        .byte $FD, $FE, $FE, $FE, $FE, $FF, $FF, $00, $00, $01, $01, $02, $02, $02, $02, $03
- D 3 - - - 0x01E38D 07:E37D: 03        .byte $03, $03, $03, $03, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04, $04, $05

; 1 byte - Y-position offset
; 2 byte - X-position offset
tbl_E38D_offsets:
- D 3 - - - 0x01E39D 07:E38D: E9        .byte $E9, $02 ; right
- D 3 - - - 0x01E39F 07:E38F: E9        .byte $E9, $F9 ; left
- D 3 - - - 0x01E3A1 07:E391: F0        .byte $F0, $02 ; right
- D 3 - - - 0x01E3A3 07:E393: F0        .byte $F0, $F9 ; left
- D 3 - - - 0x01E3A5 07:E395: F0        .byte $F0, $02 ; right
- D 3 - - - 0x01E3A7 07:E397: F0        .byte $F0, $F9 ; left
- D 3 - - - 0x01E3A9 07:E399: F0        .byte $F0, $02 ; right
- D 3 - - - 0x01E3AB 07:E39B: F0        .byte $F0, $F9 ; left
- D 3 - - - 0x01E3AD 07:E39D: E8        .byte $E8, $03 ; right
- D 3 - - - 0x01E3AF 07:E39F: E8        .byte $E8, $F8 ; left
- D 3 - - - 0x01E3B1 07:E3A1: F4        .byte $F4, $03 ; right
- D 3 - - - 0x01E3B3 07:E3A3: F4        .byte $F4, $F8 ; left

- D - - - - 0x01E3B5 07:E3A5: 0F        .byte $0F

tbl_E3A6_palette:
- D 3 - - - 0x01E3B6 07:E3A6: 37        .byte $37, $2A, $0F, $0F ; Lupin
- D 3 - - - 0x01E3BA 07:E3AA: 37        .byte $37, $22, $0F, $0F ; Jigen
- D 3 - - - 0x01E3BE 07:E3AE: 37        .byte $37, $10, $0F, $0F ; Goemon
- D 3 - - - 0x01E3C2 07:E3B2: 36        .byte $36, $1C, $0F      ; Lupin in the water (4th byte is not changed)

tbl_E3B5_colors:
- D 3 - - - 0x01E3C5 07:E3B5: 06        .byte $06, $00
- D 3 - - - 0x01E3C7 07:E3B7: 06        .byte $06, $17
- D 3 - - - 0x01E3C9 07:E3B9: 17        .byte $17, $17

loc_E3BB_in_the_water:
C D 3 - - - 0x01E3CB 07:E3BB: A9 03     LDA #$03                  ;
C - - - - - 0x01E3CD 07:E3BD: 85 3E     STA vDrowningRate         ; Initializes a rate
C - - - - - 0x01E3CF 07:E3BF: A5 6C     LDA vChrStatus            ;
C - - - - - 0x01E3D1 07:E3C1: 29 08     AND #$08                  ; CONSTANT - the character is getting damage
C - - - - - 0x01E3D3 07:E3C3: F0 03     BEQ bra_E3C8_skip         ; If the character isn't getting damage
C - - - - - 0x01E3D5 07:E3C5: 4C 4A E4  JMP loc_E44A_damage       ;

bra_E3C8_skip:
C - - - - - 0x01E3D8 07:E3C8: A9 80     LDA #$80                                 ; CONSTANT - the character is allowed the hit
C - - - - - 0x01E3DA 07:E3CA: 85 79     STA vChrAllowedStatus                    ;
C - - - - - 0x01E3DC 07:E3CC: 20 63 DF  JSR sub_DF63_update_left_right_direction ;
C - - - - - 0x01E3DF 07:E3CF: A6 2E     LDX vWaterDashCounter                    ;
C - - - - - 0x01E3E1 07:E3D1: D0 0F     BNE @bra_E3E2_dash                       ; If the dash time isn't up
C - - - - - 0x01E3E3 07:E3D3: A9 01     LDA #BIT_BUTTON_A                        ; CONSTANT - the "underwater" jump
C - - - - - 0x01E3E5 07:E3D5: 20 79 D0  JSR sub_D079_check_button_press          ;
C - - - - - 0x01E3E8 07:E3D8: F0 38     BEQ bra_E412_skip                        ; Go to the branch If the button 'A' isn't pressed
C - - - - - 0x01E3EA 07:E3DA: A9 09     LDA #$09                                 ;
C - - - - - 0x01E3EC 07:E3DC: 85 71     STA vVelocity                            ; initializes a velocity for a dash in the water
C - - - - - 0x01E3EE 07:E3DE: A2 18     LDX #$18                                 ;
C - - - - - 0x01E3F0 07:E3E0: 86 2E     STX vWaterDashCounter                    ; initializes a dash counter
@bra_E3E2_dash:
C - - - - - 0x01E3F2 07:E3E2: E0 08     CPX #$08                                 ;
C - - - - - 0x01E3F4 07:E3E4: B0 02     BCS @bra_E3E8_skip                       ; If the dash counter >= 0x08
C - - - - - 0x01E3F6 07:E3E6: C6 71     DEC vVelocity                            ; the dash is slow downing
@bra_E3E8_skip:
C - - - - - 0x01E3F8 07:E3E8: A5 1C     LDA vBtnPressedInGame                    ;
C - - - - - 0x01E3FA 07:E3EA: 29 80     AND #BIT_BUTTON_Right                    ;
C - - - - - 0x01E3FC 07:E3EC: F0 06     BEQ bra_E3F4_skip                        ; Go to the branch If the button 'Right' isn't pressed
C - - - - - 0x01E3FE 07:E3EE: 20 15 E5  JSR sub_E515_try_to_move_on_the_right    ;
C - - - - - 0x01E401 07:E3F1: 4C FD E3  JMP loc_E3FD_continue                    ;

bra_E3F4_skip:
C - - - - - 0x01E404 07:E3F4: A5 1C     LDA vBtnPressedInGame                 ;
C - - - - - 0x01E406 07:E3F6: 29 40     AND #BIT_BUTTON_Left                  ;
C - - - - - 0x01E408 07:E3F8: F0 03     BEQ @bra_E3FD_skip                    ; If the button 'Left' isn't pressed
C - - - - - 0x01E40A 07:E3FA: 20 1F E5  JSR sub_E51F_try_to_move_on_the_left  ;
@bra_E3FD_skip:
loc_E3FD_continue:
C D 3 - - - 0x01E40D 07:E3FD: A5 1C     LDA vBtnPressedInGame      ;
C - - - - - 0x01E40F 07:E3FF: 29 10     AND #BIT_BUTTON_Up         ;
C - - - - - 0x01E411 07:E401: F0 06     BEQ bra_E409_skip          ; If the button 'Up' isn't pressed
C - - - - - 0x01E413 07:E403: 20 D5 E5  JSR sub_E5D5_floating      ;
C - - - - - 0x01E416 07:E406: 4C 12 E4  JMP loc_E412_continue      ;

bra_E409_skip:
C - - - - - 0x01E419 07:E409: A5 1C     LDA vBtnPressedInGame      ;
C - - - - - 0x01E41B 07:E40B: 29 20     AND #BIT_BUTTON_Down       ;
C - - - - - 0x01E41D 07:E40D: F0 03     BEQ bra_E412_skip          ; If the button 'Down' isn't pressed
C - - - - - 0x01E41F 07:E40F: 20 BE E5  JSR sub_E5BE_drowning      ;
bra_E412_skip:
loc_E412_continue:
C D 3 - - - 0x01E422 07:E412: 20 82 E5  JSR sub_E582_change_posX_in_the_water ;
C - - - - - 0x01E425 07:E415: 20 B5 E5  JSR sub_E5B5_drowning_ex              ;
C - - - - - 0x01E428 07:E418: A5 6A     LDA vScreenChrPosY                    ;
C - - - - - 0x01E42A 07:E41A: C9 57     CMP #$57                              ; CONSTANT - the floating out Y-position #1
C - - - - - 0x01E42C 07:E41C: B0 10     BCS bra_E42E_skip                     ; If ChrPosY >= 0x57
C - - - - - 0x01E42E 07:E41E: C9 48     CMP #$48                              ; CONSTANT - the floating out Y-position #2
C - - - - - 0x01E430 07:E420: B0 04     BCS @bra_E426_skip                    ; If ChrPosY >= 0x48
C - - - - - 0x01E432 07:E422: A9 C2     LDA #$C2                              ; CONSTANT - get out of the water
C - - - - - 0x01E434 07:E424: 85 39     STA vGameInterruptEvent               ;
@bra_E426_skip:
C - - - - - 0x01E436 07:E426: A9 00     LDA #$00                              ; CONSTANT - the character isn't allowed the hit
C - - - - - 0x01E438 07:E428: 85 79     STA vChrAllowedStatus                 ;
C - - - - - 0x01E43A 07:E42A: A2 14     LDX #$14                              ; prepares the offset of the sprite address
C - - - - - 0x01E43C 07:E42C: D0 16     BNE bra_E444_skip                     ; Always true

bra_E42E_skip:
C - - - - - 0x01E43E 07:E42E: 20 6C E4  JSR sub_E46C_bubble_handler         ;
C - - - - - 0x01E441 07:E431: 20 64 D0  JSR sub_D064_generate_rng           ;
C - - - - - 0x01E444 07:E434: A2 00     LDX #$00                            ; prepares the offset of the sprite address (by default)
C - - - - - 0x01E446 07:E436: A5 1C     LDA vBtnPressedInGame               ;
C - - - - - 0x01E448 07:E438: 29 F1     AND #BIT_BUTTON_Arrows_OR_A         ;
C - - - - - 0x01E44A 07:E43A: F0 08     BEQ bra_E444_skip                   ; If the button 'A' or arrows aren't pressed
C - - - - - 0x01E44C 07:E43C: 20 96 DC  JSR sub_DC96_try_change_frame_index ;
C - - - - - 0x01E44F 07:E43F: A4 70     LDY vChrFrame_Counter               ;
C - - - - - 0x01E451 07:E441: BE 47 E4  LDX tbl_E447_movement_frames_,Y     ; prepares the offset of the sprite address
; In: Register X - the offset of the sprite address
bra_E444_skip:
C - - - - - 0x01E454 07:E444: 4C C2 DB  JMP loc_DBC2_before_rendering       ;

tbl_E447_movement_frames_:
- D 3 - - - 0x01E457 07:E447: 04        .byte $04    ;  1st frame
- D 3 - - - 0x01E458 07:E448: 08        .byte $08    ;  2nd frame
- D 3 - - - 0x01E459 07:E449: 0C        .byte $0C    ;  3rd frame

loc_E44A_damage:
C D 3 - - - 0x01E45A 07:E44A: 20 82 E5  JSR sub_E582_change_posX_in_the_water      ;
C - - - - - 0x01E45D 07:E44D: 20 B5 E5  JSR sub_E5B5_drowning_ex                   ;
C - - - - - 0x01E460 07:E450: 20 8B E4  JSR sub_E48B_update_and_render_all_bubbles ;
C - - - - - 0x01E463 07:E453: A2 10     LDX #$10                                   ; prepares the offset of the sprite address (the death in the water)
C - - - - - 0x01E465 07:E455: A5 2E     LDA vWaterDeathCounter                     ;
C - - - - - 0x01E467 07:E457: D0 EB     BNE bra_E444_skip                          ; If the death time isn't up
C - - - - - 0x01E469 07:E459: 4C 31 DF  JMP loc_DF31_finish_dying                  ;

; In: Register X - the bubble number
bra_E45C_free_bubble:
C - - - - - 0x01E46C 07:E45C: A9 00     LDA #$00              ;
C - - - - - 0x01E46E 07:E45E: 9D D4 03  STA vBubbleStatus,X   ; clear a status
bra_E461_RTS:
C - - - - - 0x01E471 07:E461: 60        RTS                   ;

bra_E462_dispose:
C - - - - - 0x01E472 07:E462: A9 00     LDA #$00                              ;
C - - - - - 0x01E474 07:E464: 8D D5 03  STA vBubbleStatus + 1                 ; clears a status for 2nd bubble
C - - - - - 0x01E477 07:E467: 8D D6 03  STA vBubbleStatus + 2                 ; clears a status for 3rd bubble
C - - - - - 0x01E47A 07:E46A: F0 2B     BEQ bra_E497_update_and_render_bubble ; Always true

sub_E46C_bubble_handler:
C - - - - - 0x01E47C 07:E46C: A2 00     LDX #$00                                   ; CONSTANT - 1st bubble
C - - - - - 0x01E47E 07:E46E: AD 15 02  LDA vApparatusLowCounter                   ;
C - - - - - 0x01E481 07:E471: 29 1F     AND #$1F                                   ;
C - - - - - 0x01E483 07:E473: F0 13     BEQ @bra_E488_add                          ; If the low counter multiples of 32 (vLowCounter % 32 == 0, 3.125% chance)
C - - - - - 0x01E485 07:E475: AC 16 02  LDY vApparatusHighCounter                  ;
C - - - - - 0x01E488 07:E478: C0 02     CPY #$02                                   ;
C - - - - - 0x01E48A 07:E47A: B0 E6     BCS bra_E462_dispose                       ; If the high counter >= 0x02
C - - - - - 0x01E48C 07:E47C: A2 01     LDX #$01                                   ; CONSTANT - 2nd bubble
C - - - - - 0x01E48E 07:E47E: C9 08     CMP #$08                                   ;
C - - - - - 0x01E490 07:E480: F0 06     BEQ @bra_E488_add                          ; Branch every 8 times after 8
C - - - - - 0x01E492 07:E482: C9 10     CMP #$10                                   ;
C - - - - - 0x01E494 07:E484: D0 05     BNE bra_E48B_update_and_render_all_bubbles ; Branch every 16 times before 16
C - - - - - 0x01E496 07:E486: A2 02     LDX #$02                                   ; CONSTANT - 3rd bubble
@bra_E488_add:
C - - - - - 0x01E498 07:E488: 20 E4 E4  JSR sub_E4E4_add_bubble                    ;
bra_E48B_update_and_render_all_bubbles:
sub_E48B_update_and_render_all_bubbles:
C - - - - - 0x01E49B 07:E48B: A2 02     LDX #$02                                   ; CONSTANT - 3rd bubble
C - - - - - 0x01E49D 07:E48D: 20 97 E4  JSR sub_E497_update_and_render_bubble      ;
C - - - - - 0x01E4A0 07:E490: A2 01     LDX #$01                                   ; CONSTANT - 2nd bubble
C - - - - - 0x01E4A2 07:E492: 20 97 E4  JSR sub_E497_update_and_render_bubble      ;
C - - - - - 0x01E4A5 07:E495: A2 00     LDX #$00                                   ; CONSTANT - 1st bubble
; In: Register X - the bubble number
bra_E497_update_and_render_bubble:
sub_E497_update_and_render_bubble:
C - - - - - 0x01E4A7 07:E497: BD D4 03  LDA vBubbleStatus,X                        ;
C - - - - - 0x01E4AA 07:E49A: 10 C5     BPL bra_E461_RTS                           ; If the status isn't used
C - - - - - 0x01E4AC 07:E49C: DE D7 03  DEC vBubbleScreenPosY,X                    ; the bubble is floating out
C - - - - - 0x01E4AF 07:E49F: BD D7 03  LDA vBubbleScreenPosY,X                    ;
C - - - - - 0x01E4B2 07:E4A2: C9 48     CMP #$48                                   ; CONSTANT - the floating out Y-position #2
C - - - - - 0x01E4B4 07:E4A4: 90 B6     BCC bra_E45C_free_bubble                   ; If ScreenPosY < 0x48
C - - - - - 0x01E4B6 07:E4A6: FE E3 03  INC vBubbleJumpCounter,X                   ; updates the counter value
C - - - - - 0x01E4B9 07:E4A9: BD E3 03  LDA vBubbleJumpCounter,X                   ;
C - - - - - 0x01E4BC 07:E4AC: C9 38     CMP #$38                                   ;
C - - - - - 0x01E4BE 07:E4AE: B0 AC     BCS bra_E45C_free_bubble                   ; If vJumpCounter >= 0x38
C - - - - - 0x01E4C0 07:E4B0: BD DD 03  LDA vBubblePosXLow,X                       ;
C - - - - - 0x01E4C3 07:E4B3: 85 00     STA ram_0000                               ; prepares the 1st parameter
C - - - - - 0x01E4C5 07:E4B5: BD E0 03  LDA vBubblePosXHigh,X                      ;
C - - - - - 0x01E4C8 07:E4B8: 85 01     STA ram_0001                               ; prepares the 2nd parameter
C - - - - - 0x01E4CA 07:E4BA: 20 AC D6  JSR sub_D6AC_out_of_screen                 ;
C - - - - - 0x01E4CD 07:E4BD: B0 9D     BCS bra_E45C_free_bubble                   ; If the bubble isn't on the screen
C - - - - - 0x01E4CF 07:E4BF: BD D7 03  LDA vBubbleScreenPosY,X                    ;
C - - - - - 0x01E4D2 07:E4C2: 85 00     STA ram_0000                               ; ~> sprite magic1
C - - - - - 0x01E4D4 07:E4C4: A5 03     LDA ram_0003                               ; from sub_D6AC_out_of_screen
C - - - - - 0x01E4D6 07:E4C6: 85 01     STA ram_0001                               ; ~> sprite magic2
C - - - - - 0x01E4D8 07:E4C8: A9 04     LDA #$04                                   ; CONSTANT - the offset value #1 (large size)
C - - - - - 0x01E4DA 07:E4CA: BC E3 03  LDY vBubbleJumpCounter,X                   ;
C - - - - - 0x01E4DD 07:E4CD: C0 10     CPY #$10                                   ;
C - - - - - 0x01E4DF 07:E4CF: B0 08     BCS @bra_E4D9_assign                       ; If vJumpCounter >= 0x10
C - - - - - 0x01E4E1 07:E4D1: A9 02     LDA #$02                                   ; CONSTANT - the offset value #2 (middle size)
C - - - - - 0x01E4E3 07:E4D3: C0 08     CPY #$08                                   ;
C - - - - - 0x01E4E5 07:E4D5: B0 02     BCS @bra_E4D9_assign                       ; If vJumpCounter >= 0x08
C - - - - - 0x01E4E7 07:E4D7: A9 00     LDA #$00                                   ; CONSTANT - the offset value #3 (small size)
@bra_E4D9_assign:
C - - - - - 0x01E4E9 07:E4D9: 18        CLC                                        ;
C - - - - - 0x01E4EA 07:E4DA: 69 18     ADC #$18                                   ; see bank 05, page 1, $8118
C - - - - - 0x01E4EC 07:E4DC: AA        TAX                                        ; prepare the offset of the sprite address {0x18, 0x1A, 0x1C}
C - - - - - 0x01E4ED 07:E4DD: A9 40     LDA #$40                                   ; AA = 0, LL = 1 (see vCharacterRenderData, $81XX)
C - - - - - 0x01E4EF 07:E4DF: 85 45     STA vCharacterRenderData                   ;
C - - - - - 0x01E4F1 07:E4E1: 4C 5A CE  JMP loc_CE5A_render_character              ;

; In: Register X - the bubble number
sub_E4E4_add_bubble:
C - - - - - 0x01E4F4 07:E4E4: A0 00     LDY #$00                        ; CONSTANT - an offset in tbl_E511_posX_offsets (a right direction)
C - - - - - 0x01E4F6 07:E4E6: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01E4F8 07:E4E8: 6A        ROR                             ;
C - - - - - 0x01E4F9 07:E4E9: 90 02     BCC @bra_E4ED_right             ; If the character is looking to the right
C - - - - - 0x01E4FB 07:E4EB: A0 02     LDY #$02                        ; CONSTANT - an offset in tbl_E511_posX_offsets (a left direction)
@bra_E4ED_right:
C - - - - - 0x01E4FD 07:E4ED: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01E4FF 07:E4EF: 18        CLC                             ;
C - - - - - 0x01E500 07:E4F0: 69 E4     ADC #$E4                        ;
C - - - - - 0x01E502 07:E4F2: 9D D7 03  STA vBubbleScreenPosY,X         ; <~ ChrPosY - 28
C - - - - - 0x01E505 07:E4F5: A5 66     LDA vLowChrPosX                 ;
C - - - - - 0x01E507 07:E4F7: 18        CLC                             ;
C - - - - - 0x01E508 07:E4F8: 79 11 E5  ADC tbl_E511_posX_offsets,Y     ;
C - - - - - 0x01E50B 07:E4FB: 9D DD 03  STA vBubblePosXLow,X            ; <~ ChrPosX + offset (low value)
C - - - - - 0x01E50E 07:E4FE: A5 68     LDA vHighChrPosX                ;
C - - - - - 0x01E510 07:E500: 79 12 E5  ADC tbl_E511_posX_offsets + 1,Y ;
C - - - - - 0x01E513 07:E503: 9D E0 03  STA vBubblePosXHigh,X           ; <~ ChrPosX + offset (high value, maybe the overflow)
C - - - - - 0x01E516 07:E506: A9 C0     LDA #$C0                        ;
C - - - - - 0x01E518 07:E508: 9D D4 03  STA vBubbleStatus,X             ; initializes a default status
C - - - - - 0x01E51B 07:E50B: A9 00     LDA #$00                        ;
C - - - - - 0x01E51D 07:E50D: 9D E3 03  STA vBubbleJumpCounter,X        ;
C - - - - - 0x01E520 07:E510: 60        RTS                             ;

; 1 byte - the offset by low value
; 2 byte - the offset by high value
tbl_E511_posX_offsets:
- D 3 - - - 0x01E521 07:E511: 0C        .byte $0C, $00
- D 3 - - - 0x01E523 07:E513: F4        .byte $F4, $FF

sub_E515_try_to_move_on_the_right:
C - - - - - 0x01E525 07:E515: 20 F3 E5  JSR sub_E5F3_check_water_movement_on_the_right  ;
C - - - - - 0x01E528 07:E518: F0 15     BEQ bra_E52F_collision                          ; If the collision exists
C - - - - - 0x01E52A 07:E51A: A9 00     LDA #$00                                        ; CONSTANT - the right direction
C - - - - - 0x01E52C 07:E51C: 4C 26 E5  JMP loc_E526_continue                           ;

sub_E51F_try_to_move_on_the_left:
C - - - - - 0x01E52F 07:E51F: 20 E8 E5  JSR sub_E5E8_check_water_movement_on_the_left   ;
C - - - - - 0x01E532 07:E522: F0 0B     BEQ bra_E52F_collision                          ; If the collision exists
C - - - - - 0x01E534 07:E524: A9 80     LDA #$80                                        ; CONSTANT - the left direction
loc_E526_continue:
C D 3 - - - 0x01E536 07:E526: 85 42     STA vChrDirectMovement                          ;
C - - - - - 0x01E538 07:E528: 20 34 E5  JSR sub_E534_change_posX_by_velocity            ;
C - - - - - 0x01E53B 07:E52B: A9 80     LDA #$80                                        ; the unknown value #1
C - - - - - 0x01E53D 07:E52D: D0 02     BNE bra_E531_continue                           ; Always true

bra_E52F_collision:
C - - - - - 0x01E53F 07:E52F: A9 00     LDA #$00                                        ; the unknown value #2
bra_E531_continue:
C - - - - - 0x01E541 07:E531: 85 55     STA vNonUsed55                                  ; <~ 0x00 or 0x80
C - - - - - 0x01E543 07:E533: 60        RTS                                             ;

loc_E534_change_posX_by_velocity:
sub_E534_change_posX_by_velocity:
C D 3 - - - 0x01E544 07:E534: A5 71     LDA vVelocity                    ;
; In: Register A - the velocity
loc_E536_change_posX_by_velocity_ex:
C D 3 - - - 0x01E546 07:E536: C9 02     CMP #$02                         ;
C - - - - - 0x01E548 07:E538: 90 41     BCC bra_E57B_change_by_counter3  ; If the velocity < 0x02
C - - - - - 0x01E54A 07:E53A: C9 04     CMP #$04                         ;
C - - - - - 0x01E54C 07:E53C: 90 39     BCC bra_E577_change_by_counter2  ; If the velocity < 0x04
C - - - - - 0x01E54E 07:E53E: C9 06     CMP #$06                         ;
C - - - - - 0x01E550 07:E540: 90 1D     BCC bra_E55F_change_by_counter1  ; If the velocity < 0x06
C - - - - - 0x01E552 07:E542: 48        PHA                              ; store velocity
C - - - - - 0x01E553 07:E543: 20 65 E5  JSR sub_E565_change_LowChrPosX   ;
C - - - - - 0x01E556 07:E546: 68        PLA                              ; retrieve velocity ($E542)
C - - - - - 0x01E557 07:E547: C9 08     CMP #$08                         ;
C - - - - - 0x01E559 07:E549: 90 36     BCC bra_E581_RTS                 ; If the velocity < 0x08
C - - - - - 0x01E55B 07:E54B: C9 0C     CMP #$0C                         ;
C - - - - - 0x01E55D 07:E54D: 90 28     BCC bra_E577_change_by_counter2  ; If the velocity < 0x0C
C - - - - - 0x01E55F 07:E54F: 48        PHA                              ; store velocity
C - - - - - 0x01E560 07:E550: 20 65 E5  JSR sub_E565_change_LowChrPosX   ;
C - - - - - 0x01E563 07:E553: 68        PLA                              ; retrieve velocity ($E54F)
C - - - - - 0x01E564 07:E554: C9 10     CMP #$10                         ;
C - - - - - 0x01E566 07:E556: 90 29     BCC bra_E581_RTS                 ; If the velocity < 0x10
C - - - - - 0x01E568 07:E558: C9 14     CMP #$14                         ;
C - - - - - 0x01E56A 07:E55A: 90 1B     BCC bra_E577_change_by_counter2  ; If the velocity < 0x14
C - - - - - 0x01E56C 07:E55C: 4C 65 E5  JMP loc_E565_change_LowChrPosX   ;

bra_E55F_change_by_counter1:
C - - - - - 0x01E56F 07:E55F: A9 03     LDA #$03                    ;
C - - - - - 0x01E571 07:E561: 25 2C     AND vLowCounter           ;
C - - - - - 0x01E573 07:E563: F0 1C     BEQ bra_E581_RTS            ; Branch if vLowCounter does multiple of 4 (success chance: 3 of 4)
bra_E565_change_LowChrPosX:
sub_E565_change_LowChrPosX:
loc_E565_change_LowChrPosX:
C D 3 - - - 0x01E575 07:E565: A5 6D     LDA vMovableChrStatus          ;
C - - - - - 0x01E577 07:E567: 29 20     AND #$20                       ;
C - - - - - 0x01E579 07:E569: F0 02     BEQ @bra_E56D_skip             ; Branch If the character isn't moving on the roof pitch
C - - - - - 0x01E57B 07:E56B: E6 6A     INC vScreenChrPosY             ;
@bra_E56D_skip:
C - - - - - 0x01E57D 07:E56D: A5 42     LDA vChrDirectMovement         ;
C - - - - - 0x01E57F 07:E56F: 30 03     BMI bra_E574_skip              ; If the character is looking to the left
C - - - - - 0x01E581 07:E571: 4C FA DC  JMP loc_DCFA_inc_LowChrPosX    ;

bra_E574_skip:
C - - - - - 0x01E584 07:E574: 4C BB DC  JMP loc_DCBB_dec_LowChrPosX    ;

bra_E577_change_by_counter2:
C - - - - - 0x01E587 07:E577: A9 01     LDA #$01                       ; success chance: 1 of 2
C - - - - - 0x01E589 07:E579: D0 02     BNE bra_E57D_skip              ; Always true

bra_E57B_change_by_counter3:
C - - - - - 0x01E58B 07:E57B: A9 03     LDA #$03                       ; success chance: 1 of 4
bra_E57D_skip:
C - - - - - 0x01E58D 07:E57D: 25 2C     AND vLowCounter              ;
C - - - - - 0x01E58F 07:E57F: F0 E4     BEQ bra_E565_change_LowChrPosX ; Branch if vLowCounter does multiple of A
bra_E581_RTS:
C - - - - - 0x01E591 07:E581: 60        RTS                            ;

sub_E582_change_posX_in_the_water:
C - - - - - 0x01E592 07:E582: A5 3F     LDA vFlowingOffset                             ;
C - - - - - 0x01E594 07:E584: F0 FB     BEQ bra_E581_RTS                               ; If the flowing doesn't exist
C - - - - - 0x01E596 07:E586: 30 0C     BMI bra_E594_left                              ; If the flowing offset < 0x00
C - - - - - 0x01E598 07:E588: 20 F3 E5  JSR sub_E5F3_check_water_movement_on_the_right ;
C - - - - - 0x01E59B 07:E58B: F0 F4     BEQ bra_E581_RTS                               ; If the collision exists
C - - - - - 0x01E59D 07:E58D: A5 3F     LDA vFlowingOffset                             ;
C - - - - - 0x01E59F 07:E58F: 85 42     STA vChrDirectMovement                         ; updates the direct by the offset
C - - - - - 0x01E5A1 07:E591: 4C 36 E5  JMP loc_E536_change_posX_by_velocity_ex        ;

bra_E594_left:
C - - - - - 0x01E5A4 07:E594: 20 E8 E5  JSR sub_E5E8_check_water_movement_on_the_left  ;
C - - - - - 0x01E5A7 07:E597: F0 E8     BEQ bra_E581_RTS                               ; If the collision exists
C - - - - - 0x01E5A9 07:E599: A5 3F     LDA vFlowingOffset                             ;
C - - - - - 0x01E5AB 07:E59B: 85 42     STA vChrDirectMovement                         ; updates the direct by the offset
C - - - - - 0x01E5AD 07:E59D: 20 73 D0  JSR sub_D073_invert_sign                       ;
C - - - - - 0x01E5B0 07:E5A0: 4C 36 E5  JMP loc_E536_change_posX_by_velocity_ex        ;

; Out: If flag Z = 1 then the movement with an increment (-4) is not allowed
sub_E5A3_has_strong_collision_minus4:
C - - - - - 0x01E5B3 07:E5A3: A9 FC     LDA #$FC                                  ; prepare an input parameter (-4)
; In: Register A - an increment by Y-position
; Out: If flag Z = 1 then the movement is not allowed
sub_E5A5_has_strong_collision:
C - - - - - 0x01E5B5 07:E5A5: 20 AB E5  JSR sub_E5AB_short_collision_by_increment ;
C - - - - - 0x01E5B8 07:E5A8: C9 01     CMP #$01                                  ; CONSTANT - a strong collision
C - - - - - 0x01E5BA 07:E5AA: 60        RTS                                       ;

; In: Register A - an increment by Y-position
; Out: Register A - a strong collision or left + right collision value (0x02 for the lift)
; Out: 0x0000 - vScreenChrPosY with increment
sub_E5AB_short_collision_by_increment:
C - - - - - 0x01E5BB 07:E5AB: 18        CLC                                     ;
C - - - - - 0x01E5BC 07:E5AC: 65 6A     ADC vScreenChrPosY                      ;
C - - - - - 0x01E5BE 07:E5AE: 85 00     STA ram_0000                            ;
C - - - - - 0x01E5C0 07:E5B0: E6 00     INC ram_0000                            ; an offset (+1)
C - - - - - 0x01E5C2 07:E5B2: 4C 6A D3  JMP loc_D36A_short_left_right_collision ;

sub_E5B5_drowning_ex:
C - - - - - 0x01E5C5 07:E5B5: 20 A3 E5  JSR sub_E5A3_has_strong_collision_minus4 ;
C - - - - - 0x01E5C8 07:E5B8: F0 1A     BEQ bra_E5D4_RTS                         ; If the collision exists
C - - - - - 0x01E5CA 07:E5BA: A5 3E     LDA vDrowningRate                        ;
C - - - - - 0x01E5CC 07:E5BC: D0 07     BNE bra_E5C5_skip                        ; If the rate != 0x00
sub_E5BE_drowning:
C - - - - - 0x01E5CE 07:E5BE: 20 A3 E5  JSR sub_E5A3_has_strong_collision_minus4 ;
C - - - - - 0x01E5D1 07:E5C1: F0 11     BEQ bra_E5D4_RTS                         ; If the collision exists
C - - - - - 0x01E5D3 07:E5C3: A9 01     LDA #$01                                 ; CONSTANT - the rate by default
bra_E5C5_skip:
C - - - - - 0x01E5D5 07:E5C5: 25 2C     AND vLowCounter                          ;
C - - - - - 0x01E5D7 07:E5C7: D0 0B     BNE bra_E5D4_RTS                         ; Branch if vLowCounter doesn't multiple of rate (vLowCounter % rate != 0)
C - - - - - 0x01E5D9 07:E5C9: A9 DF     LDA #$DF                                 ; CONSTANT - Maximum allowed Y-value on the water
C - - - - - 0x01E5DB 07:E5CB: C5 6A     CMP vScreenChrPosY                       ;
C - - - - - 0x01E5DD 07:E5CD: B0 03     BCS bra_E5D2_inc                         ; If 0xDF >= PosY
C - - - - - 0x01E5DF 07:E5CF: 85 6A     STA vScreenChrPosY                       ; PosY <~ 0xDF, i.e. maximum
C - - - - - 0x01E5E1 07:E5D1: 60        RTS                                      ;

bra_E5D2_inc:
C - - - - - 0x01E5E2 07:E5D2: E6 6A     INC vScreenChrPosY                       ; drowning...
bra_E5D4_RTS:
C - - - - - 0x01E5E4 07:E5D4: 60        RTS                                      ;

sub_E5D5_floating:
C - - - - - 0x01E5E5 07:E5D5: A9 E0     LDA #$E0                                 ; prepare an input parameter (-32)
C - - - - - 0x01E5E7 07:E5D7: 20 A5 E5  JSR sub_E5A5_has_strong_collision        ;
C - - - - - 0x01E5EA 07:E5DA: F0 F8     BEQ bra_E5D4_RTS                         ; If the collision exists
C - - - - - 0x01E5EC 07:E5DC: A9 47     LDA #$47                                 ; CONSTANT - Minimum allowed Y-value on the water
C - - - - - 0x01E5EE 07:E5DE: C5 6A     CMP vScreenChrPosY                       ;
C - - - - - 0x01E5F0 07:E5E0: 90 03     BCC bra_E5E5_dec                         ; If 0x47 < PosY
C - - - - - 0x01E5F2 07:E5E2: 85 6A     STA vScreenChrPosY                       ; PosY <~ 0x47, i.e. minimum
C - - - - - 0x01E5F4 07:E5E4: 60        RTS                                      ;

bra_E5E5_dec:
C - - - - - 0x01E5F5 07:E5E5: C6 6A     DEC vScreenChrPosY                       ; floating...
C - - - - - 0x01E5F7 07:E5E7: 60        RTS                                      ;

; Out: If flag Z = 1 then the movement is not allowed
sub_E5E8_check_water_movement_on_the_left:
C - - - - - 0x01E5F8 07:E5E8: 20 1A E6  JSR sub_E61A_init_chr_positions_minus4      ; $0000 <~ ChrPosY - 4
C - - - - - 0x01E5FB 07:E5EB: A9 F8     LDA #$F8                                    ; prepare an increment by X (-8)
C - - - - - 0x01E5FD 07:E5ED: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX     ;
C - - - - - 0x01E600 07:E5F0: 4C FB E5  JMP loc_E5FB_continue                       ;

; Out: If flag Z = 1 then the movement is not allowed
sub_E5F3_check_water_movement_on_the_right:
C - - - - - 0x01E603 07:E5F3: 20 1A E6  JSR sub_E61A_init_chr_positions_minus4      ; $0000 <~ ChrPosY - 4
C - - - - - 0x01E606 07:E5F6: A9 08     LDA #$08                                    ; prepare an increment by X (+8)
C - - - - - 0x01E608 07:E5F8: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX    ;
loc_E5FB_continue:
C D 3 - - - 0x01E60B 07:E5FB: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01E60D 07:E5FD: F0 1A     BEQ @bra_E619_RTS                           ; If the strong collision exist
C - - - - - 0x01E60F 07:E5FF: A5 00     LDA ram_0000                                ;
C - - - - - 0x01E611 07:E601: 38        SEC                                         ;
C - - - - - 0x01E612 07:E602: E9 10     SBC #$10                                    ;
C - - - - - 0x01E614 07:E604: 85 00     STA ram_0000                                ; $0000 <~ ChrPosY - 20
C - - - - - 0x01E616 07:E606: 20 E5 D2  JSR sub_D2E5_get_collision_value            ;
C - - - - - 0x01E619 07:E609: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01E61B 07:E60B: F0 0C     BEQ @bra_E619_RTS                           ; If the strong collision exist
C - - - - - 0x01E61D 07:E60D: A5 00     LDA ram_0000                                ;
C - - - - - 0x01E61F 07:E60F: 38        SEC                                         ;
C - - - - - 0x01E620 07:E610: E9 07     SBC #$07                                    ;
C - - - - - 0x01E622 07:E612: 85 00     STA ram_0000                                ; $0000 <~ ChrPosY - 27
C - - - - - 0x01E624 07:E614: 20 E5 D2  JSR sub_D2E5_get_collision_value            ;
C - - - - - 0x01E627 07:E617: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
@bra_E619_RTS:
C - - - - - 0x01E629 07:E619: 60        RTS                                         ;

sub_E61A_init_chr_positions_minus4:
C - - - - - 0x01E62A 07:E61A: A5 6A     LDA vScreenChrPosY                    ;
C - - - - - 0x01E62C 07:E61C: 38        SEC                                   ;
C - - - - - 0x01E62D 07:E61D: E9 04     SBC #$04                              ;
C - - - - - 0x01E62F 07:E61F: 85 00     STA ram_0000                          ; prepare an input parameter (ChrPosY - 4)
C - - - - - 0x01E631 07:E621: 4C 74 D9  JMP loc_D974_init_short_chr_positions ;

loc_E624_jet_pack:
C D 3 - - - 0x01E634 07:E624: A9 04     LDA #$04                                  ;
C - - - - - 0x01E636 07:E626: 85 3F     STA vFlyingOffset                         ; updates X-position offset (for a velocity) for flying
C - - - - - 0x01E638 07:E628: A9 01     LDA #$01                                  ;
C - - - - - 0x01E63A 07:E62A: 85 3E     STA vDrowningRate                         ; Initializes a rate (the jet-pack doesn't use the rate)
C - - - - - 0x01E63C 07:E62C: A5 6C     LDA vChrStatus                            ;
C - - - - - 0x01E63E 07:E62E: 29 08     AND #$08                                  ; CONSTANT - the character is getting damage
C - - - - - 0x01E640 07:E630: F0 06     BEQ bra_E638_continue                     ; If the character isn't getting damage
bra_E632_stop_jet_pack:
loc_E632_stop_jet_pack_or_balloon:
C D 3 - - - 0x01E642 07:E632: 20 EE CD  JSR sub_CDEE_deactivate_activable_items   ;
C - - - - - 0x01E645 07:E635: 4C 4B DB  JMP loc_DB4B_jumping_off                  ;

bra_E638_continue:
C - - - - - 0x01E648 07:E638: A9 01     LDA #BIT_BUTTON_A                     ;
C - - - - - 0x01E64A 07:E63A: 20 79 D0  JSR sub_D079_check_button_press       ;
C - - - - - 0x01E64D 07:E63D: D0 F3     BNE bra_E632_stop_jet_pack            ; Go to the branch If the button 'A' is pressed (a jump action)
C - - - - - 0x01E64F 07:E63F: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01E651 07:E641: 29 07     AND #$07                              ;
C - - - - - 0x01E653 07:E643: D0 05     BNE @bra_E64A_skip                    ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0) (87.5% chance)
C - - - - - 0x01E655 07:E645: A9 16     LDA #$16                              ; CONSTANT - sound of a jet-pack motor
C - - - - - 0x01E657 07:E647: 20 20 C4  JSR sub_C420_add_sound_effect         ;
@bra_E64A_skip:
C - - - - - 0x01E65A 07:E64A: A5 2E     LDA vJetPackRiseCounter               ;
C - - - - - 0x01E65C 07:E64C: F0 05     BEQ bra_E653_rise_done                ; If the rise time is up
C - - - - - 0x01E65E 07:E64E: A2 08     LDX #$08                              ; prepare the offset of the sprite address (the squatting with the jet-pack)
C - - - - - 0x01E660 07:E650: 4C C0 E6  JMP loc_E6C0_start_render             ;

bra_E653_rise_done:
C - - - - - 0x01E663 07:E653: A9 80     LDA #$80                        ; CONSTANT - the character is allowed the hit
C - - - - - 0x01E665 07:E655: 85 79     STA vChrAllowedStatus           ;
C - - - - - 0x01E667 07:E657: 20 83 E7  JSR sub_E783_stop_falling       ;
C - - - - - 0x01E66A 07:E65A: A5 1C     LDA vBtnPressedInGame           ;
C - - - - - 0x01E66C 07:E65C: 29 C0     AND #BIT_BUTTON_Left_OR_Right   ;
C - - - - - 0x01E66E 07:E65E: F0 31     BEQ bra_E691_idle               ; If the buttons 'Left' or 'Right' aren't pressed
C - - - - - 0x01E670 07:E660: C9 80     CMP #BIT_BUTTON_Right           ;
C - - - - - 0x01E672 07:E662: F0 07     BEQ bra_E66B_left               ; If the button 'Right' isn't pressed
C - - - - - 0x01E674 07:E664: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01E676 07:E666: 6A        ROR                             ;
C - - - - - 0x01E677 07:E667: 90 15     BCC bra_E67E_invert             ; If the character is looking to the right
C - - - - - 0x01E679 07:E669: B0 05     BCS bra_E670_continue           ; Always true

bra_E66B_left:
C - - - - - 0x01E67B 07:E66B: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01E67D 07:E66D: 6A        ROR                             ;
C - - - - - 0x01E67E 07:E66E: B0 0E     BCS bra_E67E_invert             ; If the character is looking to the left
bra_E670_continue:
C - - - - - 0x01E680 07:E670: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01E682 07:E672: 29 07     AND #$07                        ;
C - - - - - 0x01E684 07:E674: D0 1E     BNE bra_E694_skip               ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0) (87.5% chance)
C - - - - - 0x01E686 07:E676: A2 0C     LDX #$0C                        ; CONSTANT - Max value on the jet-pack
C - - - - - 0x01E688 07:E678: 20 8A DC  JSR sub_DC8A_inc_velocity       ;
C - - - - - 0x01E68B 07:E67B: 4C 94 E6  JMP loc_E694_continue           ;

bra_E67E_invert:
C - - - - - 0x01E68E 07:E67E: 20 78 E7  JSR sub_E778_turn_around        ;
C - - - - - 0x01E691 07:E681: 20 80 DF  JSR sub_DF80_slow_down_velocity ;
C - - - - - 0x01E694 07:E684: A5 71     LDA vVelocity                   ;
C - - - - - 0x01E696 07:E686: D0 0C     BNE bra_E694_skip               ; If the velocity != 0x00
C - - - - - 0x01E698 07:E688: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01E69A 07:E68A: 49 01     EOR #$01                        ; changes the direction (left or right)
C - - - - - 0x01E69C 07:E68C: 85 6C     STA vChrStatus                  ;
C - - - - - 0x01E69E 07:E68E: 4C 94 E6  JMP loc_E694_continue           ;

bra_E691_idle:
C - - - - - 0x01E6A1 07:E691: 20 78 DF  JSR sub_DF78_idle_slowdown      ;
bra_E694_skip:
loc_E694_continue:
C D 3 - - - 0x01E6A4 07:E694: 20 1D E7  JSR sub_E71D_try_to_move_in_the_air          ;
C - - - - - 0x01E6A7 07:E697: 20 41 E7  JSR sub_E741_try_to_move_up_or_down          ;
C - - - - - 0x01E6AA 07:E69A: A2 0C     LDX #$0C                                     ; prepare the offset of the sprite address #1
C - - - - - 0x01E6AC 07:E69C: A5 2F     LDA vAnimationCounter                        ;
C - - - - - 0x01E6AE 07:E69E: D0 19     BNE bra_E6B9_assigned                        ; If the time of the squeezing legs isn't up
C - - - - - 0x01E6B0 07:E6A0: A2 04     LDX #$04                                     ; prepare the offset of the sprite address #2
C - - - - - 0x01E6B2 07:E6A2: A9 20     LDA #BIT_BUTTON_Down                         ;
C - - - - - 0x01E6B4 07:E6A4: 20 79 D0  JSR sub_D079_check_button_press              ;
C - - - - - 0x01E6B7 07:E6A7: F0 04     BEQ @bra_E6AD_skip                           ; Go to the branch If the button 'Down' isn't pressed
C - - - - - 0x01E6B9 07:E6A9: A9 08     LDA #$08                                     ;
C - - - - - 0x01E6BB 07:E6AB: 85 2F     STA vAnimationCounter                        ; Initializes a counter
@bra_E6AD_skip:
C - - - - - 0x01E6BD 07:E6AD: A5 1C     LDA vBtnPressedInGame                        ;
C - - - - - 0x01E6BF 07:E6AF: 29 20     AND #BIT_BUTTON_Down                         ;
C - - - - - 0x01E6C1 07:E6B1: D0 06     BNE bra_E6B9_assigned                        ; If the button 'Down' is pressed
C - - - - - 0x01E6C3 07:E6B3: 24 42     BIT vChrDirectMovement                       ;
C - - - - - 0x01E6C5 07:E6B5: 70 02     BVS bra_E6B9_assigned                        ; If the character is in process changing the vertical direction on the jet-pack
C - - - - - 0x01E6C7 07:E6B7: A2 00     LDX #$00                                     ; prepare the offset of the sprite address #3
; In: Register X - sprite_magic2 (The offset by the address)
bra_E6B9_assigned:
C - - - - - 0x01E6C9 07:E6B9: 8A        TXA                                          ;
C - - - - - 0x01E6CA 07:E6BA: 48        PHA                                          ; deposit the offset
C - - - - - 0x01E6CB 07:E6BB: 20 4C E0  JSR sub_E04C_try_to_activate_personal_weapon ;
C - - - - - 0x01E6CE 07:E6BE: 68        PLA                                          ;
C - - - - - 0x01E6CF 07:E6BF: AA        TAX                                          ; retrieve the offset (see $E6BA)
; In: Register X - sprite_magic2 (The offset by the address)
loc_E6C0_start_render:
C D 3 - - - 0x01E6D0 07:E6C0: 8A        TXA                                          ;
C - - - - - 0x01E6D1 07:E6C1: 48        PHA                                          ; deposit the offset
C - - - - - 0x01E6D2 07:E6C2: A5 64     LDA vScreenChrPosX                           ;
C - - - - - 0x01E6D4 07:E6C4: 85 01     STA ram_0001                                 ; prepare 2nd parameter (for render)
C - - - - - 0x01E6D6 07:E6C6: A2 1E     LDX #$1E                                     ; prepare the offset of the sprite address #4
C - - - - - 0x01E6D8 07:E6C8: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x01E6DA 07:E6CA: 29 04     AND #$04                                     ;
C - - - - - 0x01E6DC 07:E6CC: D0 02     BNE @bra_E6D0_skip                           ; Branch every 8 times after 8
C - - - - - 0x01E6DE 07:E6CE: A2 22     LDX #$22                                     ; prepare the offset of the sprite address #5
@bra_E6D0_skip:
C - - - - - 0x01E6E0 07:E6D0: 20 00 E7  JSR sub_E700_render_part                     ; 
C - - - - - 0x01E6E3 07:E6D3: AD 16 02  LDA vApparatusHighCounter                    ;
C - - - - - 0x01E6E6 07:E6D6: D0 0C     BNE @bra_E6E4_skip_render_fire               ; If vHighCounter != 0x00
C - - - - - 0x01E6E8 07:E6D8: AD 15 02  LDA vApparatusLowCounter                     ;
C - - - - - 0x01E6EB 07:E6DB: 29 0C     AND #$0C                                     ;
C - - - - - 0x01E6ED 07:E6DD: D0 05     BNE @bra_E6E4_skip_render_fire               ; If vLowCounter == 0%XXXX00YY (a blinking mechanism)
C - - - - - 0x01E6EF 07:E6DF: A2 26     LDX #$26                                     ; prepare an input parameter (the flying is finishing)
C - - - - - 0x01E6F1 07:E6E1: 20 00 E7  JSR sub_E700_render_part                     ;
@bra_E6E4_skip_render_fire:
C - - - - - 0x01E6F4 07:E6E4: 68        PLA                                          ;
C - - - - - 0x01E6F5 07:E6E5: AA        TAX                                          ; retrieve the offset (see $E6C1)
C - - - - - 0x01E6F6 07:E6E6: A5 6C     LDA vChrStatus                               ;
C - - - - - 0x01E6F8 07:E6E8: 6A        ROR                                          ;
C - - - - - 0x01E6F9 07:E6E9: 90 02     BCC @bra_E6ED_right                          ; If the character is looking to the right
C - - - - - 0x01E6FB 07:E6EB: E8        INX                                          ;
C - - - - - 0x01E6FC 07:E6EC: E8        INX                                          ; increment the offset of the sprite address (left frame)
@bra_E6ED_right:
C - - - - - 0x01E6FD 07:E6ED: 8A        TXA                                          ;
C - - - - - 0x01E6FE 07:E6EE: 18        CLC                                          ;
C - - - - - 0x01E6FF 07:E6EF: 69 2A     ADC #$2A                                     ; see bank 05, page 1, $812A
C - - - - - 0x01E701 07:E6F1: AA        TAX                                          ; X <~ X + 0x2A (the offset of the sprite address)
C - - - - - 0x01E702 07:E6F2: A5 6A     LDA vScreenChrPosY                           ;
C - - - - - 0x01E704 07:E6F4: 85 00     STA ram_0000                                 ; prepare 1st parameter (a Y-position of the jet-pack)
C - - - - - 0x01E706 07:E6F6: 20 5A CE  JSR sub_CE5A_render_character                ;
C - - - - - 0x01E709 07:E6F9: A2 00     LDX #$00                                     ;
C - - - - - 0x01E70B 07:E6FB: 86 7A     STX vBulletCount                             ; no bullets
C - - - - - 0x01E70D 07:E6FD: 4C 32 E1  JMP loc_E132_bullets_subroutine              ;

; In: Register X - sprite_magic2 (The offset by the address)
sub_E700_render_part:
C - - - - - 0x01E710 07:E700: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01E712 07:E702: 6A        ROR                             ;
C - - - - - 0x01E713 07:E703: 90 02     BCC @bra_E707_right             ; If the character is looking to the right
C - - - - - 0x01E715 07:E705: E8        INX                             ;
C - - - - - 0x01E716 07:E706: E8        INX                             ; increment the offset of the sprite address (left frame)
@bra_E707_right:
C - - - - - 0x01E717 07:E707: A9 40     LDA #$40                        ; AA = 0, LL = 1 (see vCharacterRenderData, $81XX)
C - - - - - 0x01E719 07:E709: 85 45     STA vCharacterRenderData        ;
C - - - - - 0x01E71B 07:E70B: A5 2E     LDA vJetPackRiseCounter         ;
C - - - - - 0x01E71D 07:E70D: F0 02     BEQ @bra_E711_skip              ; If the rise time is up
C - - - - - 0x01E71F 07:E70F: A9 04     LDA #$04                        ; CONSTANT - a position of the jet-pack in flight
@bra_E711_skip:
C - - - - - 0x01E721 07:E711: 85 05     STA ram_0005                    ; <~ an offset
C - - - - - 0x01E723 07:E713: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01E725 07:E715: 18        CLC                             ;
C - - - - - 0x01E726 07:E716: 65 05     ADC ram_0005                    ; <~ ChrPosY + offset
C - - - - - 0x01E728 07:E718: 85 00     STA ram_0000                    ; prepare 1st parameter (a Y-position of the jet-pack)
C - - - - - 0x01E72A 07:E71A: 4C 5A CE  JMP loc_CE5A_render_character   ;

sub_E71D_try_to_move_in_the_air:
C - - - - - 0x01E72D 07:E71D: A5 6C     LDA vChrStatus                           ;
C - - - - - 0x01E72F 07:E71F: 6A        ROR                                      ;
C - - - - - 0x01E730 07:E720: B0 0C     BCS bra_E72E_left                        ; If the character is looking to the left
C - - - - - 0x01E732 07:E722: 20 19 DD  JSR sub_DD19_check_movement_on_the_right ;
C - - - - - 0x01E735 07:E725: F0 3A     BEQ bra_E761_RTS                         ; If the movement to the right is not allowed
C - - - - - 0x01E737 07:E727: A5 42     LDA vChrDirectMovement                   ;
C - - - - - 0x01E739 07:E729: 29 7F     AND #$7F                                 ; resets to the right direction
C - - - - - 0x01E73B 07:E72B: 4C 37 E7  JMP loc_E737_continue                    ;

bra_E72E_left:
C - - - - - 0x01E73E 07:E72E: 20 34 DD  JSR sub_DD34_check_movement_on_the_left  ;
C - - - - - 0x01E741 07:E731: F0 2E     BEQ bra_E761_RTS                         ; If the movement to the left isn't allowed
C - - - - - 0x01E743 07:E733: A5 42     LDA vChrDirectMovement                   ;
C - - - - - 0x01E745 07:E735: 09 80     ORA #$80                                 ; CONSTANT - the left direction
; In: Register A - a new vChrDirectMovement value
loc_E737_continue:
C D 3 - - - 0x01E747 07:E737: 85 42     STA vChrDirectMovement                   ;
C - - - - - 0x01E749 07:E739: A5 71     LDA vVelocity                            ;
C - - - - - 0x01E74B 07:E73B: 18        CLC                                      ;
C - - - - - 0x01E74C 07:E73C: 65 3F     ADC vFlyingOffset                        ; prepare a velocity + an offset
C - - - - - 0x01E74E 07:E73E: 4C 36 E5  JMP loc_E536_change_posX_by_velocity_ex  ;

sub_E741_try_to_move_up_or_down:
C - - - - - 0x01E751 07:E741: A2 01     LDX #$01                             ; f(A) = 2, see $E763 (50% chance)
C - - - - - 0x01E753 07:E743: A5 1C     LDA vBtnPressedInGame                ;
C - - - - - 0x01E755 07:E745: 29 30     AND #BIT_BUTTON_Up_OR_Down           ;
C - - - - - 0x01E757 07:E747: F0 19     BEQ bra_E762_rising                  ; If the button 'Up' or 'Down' isn't pressed
C - - - - - 0x01E759 07:E749: CA        DEX                                  ; f(A) = 1, see $E763 (0% chance)
C - - - - - 0x01E75A 07:E74A: C9 10     CMP #BIT_BUTTON_Up                   ;
C - - - - - 0x01E75C 07:E74C: F0 14     BEQ bra_E762_rising                  ; If the button 'Up' is pressed
C - - - - - 0x01E75E 07:E74E: 20 5A DD  JSR sub_DD5A_check_strong_from_below ;
C - - - - - 0x01E761 07:E751: F0 0E     BEQ bra_E761_RTS                     ; If the strong collision is exist
C - - - - - 0x01E763 07:E753: A5 2C     LDA vLowCounter                      ;
C - - - - - 0x01E765 07:E755: 29 01     AND #$01                             ;
C - - - - - 0x01E767 07:E757: D0 08     BNE bra_E761_RTS                     ; Branch if vLowCounter doesn't multiple of 2 (vLowCounter % 2 != 0) (50% chance)
C - - - - - 0x01E769 07:E759: A5 6A     LDA vScreenChrPosY                   ;
C - - - - - 0x01E76B 07:E75B: C9 BF     CMP #$BF                             ; CONSTANT - Max Y-position value
C - - - - - 0x01E76D 07:E75D: B0 02     BCS bra_E761_RTS                     ; If vScreenChrPosY >= 0xBF
C - - - - - 0x01E76F 07:E75F: E6 6A     INC vScreenChrPosY                   ; moves down
bra_E761_RTS:
C - - - - - 0x01E771 07:E761: 60        RTS                                  ;

bra_E762_rising:
C - - - - - 0x01E772 07:E762: 8A        TXA                                  ;
C - - - - - 0x01E773 07:E763: 25 2C     AND vLowCounter                      ;
C - - - - - 0x01E775 07:E765: D0 FA     BNE bra_E761_RTS                     ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
C - - - - - 0x01E777 07:E767: 20 4F DD  JSR sub_DD4F_check_strong_from_above ;
C - - - - - 0x01E77A 07:E76A: F0 F5     BEQ bra_E761_RTS                     ; If the strong collision is exist
C - - - - - 0x01E77C 07:E76C: A9 4F     LDA #$4F                             ; CONSTANT - Min Y-position value
C - - - - - 0x01E77E 07:E76E: C5 6A     CMP vScreenChrPosY                   ;
C - - - - - 0x01E780 07:E770: 90 03     BCC bra_E775_decrement               ; If 0x4F < vScreenChrPosY
C - - - - - 0x01E782 07:E772: 85 6A     STA vScreenChrPosY                   ; <~ 0x4F, assigns the min value
C - - - - - 0x01E784 07:E774: 60        RTS                                  ;

bra_E775_decrement:
C - - - - - 0x01E785 07:E775: C6 6A     DEC vScreenChrPosY                   ; moves up
C - - - - - 0x01E787 07:E777: 60        RTS                                  ;

sub_E778_start_falling:
sub_E778_turn_around:
C - - - - - 0x01E788 07:E778: A5 42     LDA vChrDirectMovement   ;
C - - - - - 0x01E78A 07:E77A: 09 40     ORA #$40                 ; CONSTANT - 'in process changing the vertical direction on the jet-pack' or 'falling from a balloon'
C - - - - - 0x01E78C 07:E77C: 85 42     STA vChrDirectMovement   ;
C - - - - - 0x01E78E 07:E77E: A9 08     LDA #$08                 ;
C - - - - - 0x01E790 07:E780: 85 2F     STA vAnimationCounter    ; initializes for the counter with a turn around/balloon is bursting
C - - - - - 0x01E792 07:E782: 60        RTS                      ;

sub_E783_stop_falling:
C - - - - - 0x01E793 07:E783: A5 42     LDA vChrDirectMovement   ;
C - - - - - 0x01E795 07:E785: 29 BF     AND #$BF                 ;
C - - - - - 0x01E797 07:E787: 85 42     STA vChrDirectMovement   ;
C - - - - - 0x01E799 07:E789: 60        RTS                      ;

; Return the carry status (analog return true or false)
sub_E78A_has_roof_pitch:
C - - - - - 0x01E79A 07:E78A: A5 46     LDA vNoRoom                      ;
C - - - - - 0x01E79C 07:E78C: D0 37     BNE bra_E7C5_return_false        ; If vNoRoom != 0x00 (i.e. level 1.0)
C - - - - - 0x01E79E 07:E78E: 20 46 EF  JSR sub_EF46_switch_bank_4_p1    ;
C - - - - - 0x01E7A1 07:E791: A5 6C     LDA vChrStatus                   ;  
C - - - - - 0x01E7A3 07:E793: 29 08     AND #$08                         ; CONSTANT - the character is getting damage
C - - - - - 0x01E7A5 07:E795: D0 2E     BNE bra_E7C5_return_false        ; If the character is getting damage
C - - - - - 0x01E7A7 07:E797: A0 00     LDY #$00                         ; set loop counter
C - - - - - 0x01E7A9 07:E799: A5 6C     LDA vChrStatus                   ;
C - - - - - 0x01E7AB 07:E79B: 6A        ROR                              ;
C - - - - - 0x01E7AC 07:E79C: B0 02     BCS @bra_E7A0_loop               ; If the character is looking to the left
C - - - - - 0x01E7AE 07:E79E: A0 2F     LDY #$2F                         ; set loop counter
@bra_E7A0_loop:
C - - - - - 0x01E7B0 07:E7A0: B9 CE 85  LDA tbl_roof_pitches,Y           ; get 1 byte
C - - - - - 0x01E7B3 07:E7A3: 38        SEC                              ; 
C - - - - - 0x01E7B4 07:E7A4: E5 66     SBC vLowChrPosX                  ; 
C - - - - - 0x01E7B6 07:E7A6: 85 01     STA ram_0001                     ; store low x-position relative to the starting screen
C - - - - - 0x01E7B8 07:E7A8: B9 CF 85  LDA tbl_roof_pitches + 1,Y       ; get 2 byte
C - - - - - 0x01E7BB 07:E7AB: E5 68     SBC vHighChrPosX                 ;
C - - - - - 0x01E7BD 07:E7AD: B0 16     BCS bra_E7C5_return_false        ; If vHighChrPosX <= start screen-value
C - - - - - 0x01E7BF 07:E7AF: B9 D0 85  LDA tbl_roof_pitches + 2,Y       ; get 3 byte
C - - - - - 0x01E7C2 07:E7B2: 38        SEC                              ;
C - - - - - 0x01E7C3 07:E7B3: E5 66     SBC vLowChrPosX                  ;
C - - - - - 0x01E7C5 07:E7B5: 85 02     STA ram_0002                     ; store low x-position relative to the ending screen
C - - - - - 0x01E7C7 07:E7B7: B9 D1 85  LDA tbl_roof_pitches + 3,Y       ; get 4 byte
C - - - - - 0x01E7CA 07:E7BA: E5 68     SBC vHighChrPosX                 ;
C - - - - - 0x01E7CC 07:E7BC: B0 0F     BCS bra_E7CD_skip                ; If vHighChrPosX <= end screen-value
C - - - - - 0x01E7CE 07:E7BE: C8        INY                              ; increments y
C - - - - - 0x01E7CF 07:E7BF: C8        INY                              ; increments y
C - - - - - 0x01E7D0 07:E7C0: C8        INY                              ; increments y
C - - - - - 0x01E7D1 07:E7C1: C8        INY                              ; increments y
C - - - - - 0x01E7D2 07:E7C2: C8        INY                              ; increments y
C - - - - - 0x01E7D3 07:E7C3: D0 DB     BNE @bra_E7A0_loop               ; If Register Y != 0x00
bra_E7C5_return_false:
sub_E7C5_reset_moving_on_the_roof_pitch:
C - - - - - 0x01E7D5 07:E7C5: A5 6D     LDA vMovableChrStatus            ;
C - - - - - 0x01E7D7 07:E7C7: 29 DF     AND #$DF                         ; 
C - - - - - 0x01E7D9 07:E7C9: 85 6D     STA vMovableChrStatus            ; reset a flag 'the character is moving on the roof pitch'
C - - - - - 0x01E7DB 07:E7CB: 18        CLC                              ; return false
C - - - - - 0x01E7DC 07:E7CC: 60        RTS                              ;

bra_E7CD_skip:
C - - - - - 0x01E7DD 07:E7CD: A5 6D     LDA vMovableChrStatus      ;
C - - - - - 0x01E7DF 07:E7CF: 29 20     AND #$20                   ; CONSTANT - the character is moving on the roof pitch
C - - - - - 0x01E7E1 07:E7D1: D0 31     BNE bra_E804_return_true   ; If the character is moving on the roof pitch
C - - - - - 0x01E7E3 07:E7D3: B9 D2 85  LDA tbl_roof_pitches + 4,Y ; get 5 byte
C - - - - - 0x01E7E6 07:E7D6: 85 03     STA ram_0003               ;
C - - - - - 0x01E7E8 07:E7D8: A5 6C     LDA vChrStatus             ;
C - - - - - 0x01E7EA 07:E7DA: 6A        ROR                        ;
C - - - - - 0x01E7EB 07:E7DB: B0 07     BCS bra_E7E4_skip          ; If the character is looking to the left
C - - - - - 0x01E7ED 07:E7DD: A5 01     LDA ram_0001               ;
C - - - - - 0x01E7EF 07:E7DF: 20 73 D0  JSR sub_D073_invert_sign   ;
C - - - - - 0x01E7F2 07:E7E2: 85 02     STA ram_0002               ; get an distance to the top point along the Y axis
bra_E7E4_skip:
C - - - - - 0x01E7F4 07:E7E4: A5 6A     LDA vScreenChrPosY         ; 
C - - - - - 0x01E7F6 07:E7E6: 38        SEC                        ;
C - - - - - 0x01E7F7 07:E7E7: E5 03     SBC ram_0003               ; 0x0003 + 0x0002 = top - leg of a right triangle
C - - - - - 0x01E7F9 07:E7E9: 38        SEC                        ;
C - - - - - 0x01E7FA 07:E7EA: E5 02     SBC ram_0002               ;
C - - - - - 0x01E7FC 07:E7EC: B0 03     BCS @bra_E7F1_skip         ; If vScreenChrPosY <= 0x0002 + 0x0003
C - - - - - 0x01E7FE 07:E7EE: 20 73 D0  JSR sub_D073_invert_sign   ;
@bra_E7F1_skip:
C - - - - - 0x01E801 07:E7F1: C9 04     CMP #$04                   ; allowable tolerance
C - - - - - 0x01E803 07:E7F3: B0 D0     BCS bra_E7C5_return_false  ; If |vScreenChrPosY - pitchY| >= 4
C - - - - - 0x01E805 07:E7F5: A5 03     LDA ram_0003               ;
C - - - - - 0x01E807 07:E7F7: 18        CLC                        ;
C - - - - - 0x01E808 07:E7F8: 65 02     ADC ram_0002               ;
C - - - - - 0x01E80A 07:E7FA: 85 6A     STA vScreenChrPosY         ; put a leg of a right triangle
C - - - - - 0x01E80C 07:E7FC: A9 20     LDA #$20                   ; CONSTANT - the character is moving on the roof pitch
C - - - - - 0x01E80E 07:E7FE: 85 6D     STA vMovableChrStatus      ; 
C - - - - - 0x01E810 07:E800: A9 00     LDA #$00                   ;
C - - - - - 0x01E812 07:E802: 85 71     STA vVelocity              ; reset a velocity
bra_E804_return_true:
C - - - - - 0x01E814 07:E804: 38        SEC                        ; return true
C - - - - - 0x01E815 07:E805: 60        RTS                        ;

bra_E806_to_jump:
C - - - - - 0x01E816 07:E806: 20 C5 E7  JSR sub_E7C5_reset_moving_on_the_roof_pitch ;
C - - - - - 0x01E819 07:E809: A9 1C     LDA #$1C                                    ; prepare a jump counter
C - - - - - 0x01E81B 07:E80B: A0 03     LDY #$03                                    ; CONSTANT - jump by side
C - - - - - 0x01E81D 07:E80D: 4C 9D DD  JMP loc_DD9D_assigned_jump_subroutine       ;

loc_E810_on_the_roof_pitch:
C D 3 - - - 0x01E820 07:E810: 20 8A E7  JSR sub_E78A_has_roof_pitch                ;
C - - - - - 0x01E823 07:E813: 90 F1     BCC bra_E806_to_jump                       ; If it has not a roof pitch
C - - - - - 0x01E825 07:E815: A5 2C     LDA vLowCounter                            ;
C - - - - - 0x01E827 07:E817: 29 01     AND #$01                                   ;
C - - - - - 0x01E829 07:E819: D0 05     BNE @bra_E820_skip                         ; Branch if vLowCounter doesn't multiple of 2 (vLowCounter % 2 != 0) (50% chance)
C - - - - - 0x01E82B 07:E81B: A2 18     LDX #$18                                   ; CONSTANT - Max value on the roof pitch
C - - - - - 0x01E82D 07:E81D: 20 8A DC  JSR sub_DC8A_inc_velocity                  ;
@bra_E820_skip:
C - - - - - 0x01E830 07:E820: A2 00     LDX #$00                                   ; CONSTANT - the right direction
C - - - - - 0x01E832 07:E822: A5 6C     LDA vChrStatus                             ;
C - - - - - 0x01E834 07:E824: 6A        ROR                                        ;
C - - - - - 0x01E835 07:E825: 90 02     BCC @bra_E829_right                        ; If the character is looking to the right
C - - - - - 0x01E837 07:E827: A2 80     LDX #$80                                   ; CONSTANT - the left direction
@bra_E829_right:
C - - - - - 0x01E839 07:E829: 86 42     STX vChrDirectMovement                     ; <~ 0x00 or 0x80
C - - - - - 0x01E83B 07:E82B: A9 01     LDA #BIT_BUTTON_A                          ;
C - - - - - 0x01E83D 07:E82D: 20 79 D0  JSR sub_D079_check_button_press            ;
C - - - - - 0x01E840 07:E830: D0 0B     BNE bra_E83D_jump_on_the_roof_pitch        ; Go to the branch If the button 'A' is pressed
C - - - - - 0x01E842 07:E832: 20 34 E5  JSR sub_E534_change_posX_by_velocity       ;
C - - - - - 0x01E845 07:E835: A9 03     LDA #$03                                   ; f(A) = 4, see $DC98
C - - - - - 0x01E847 07:E837: 20 98 DC  JSR sub_DC98_try_change_frame_index_ex     ;
C - - - - - 0x01E84A 07:E83A: 4C 67 DC  JMP loc_DC67_after_moving_without_velocity ;

bra_E83D_jump_on_the_roof_pitch:
C - - - - - 0x01E84D 07:E83D: 20 C5 E7  JSR sub_E7C5_reset_moving_on_the_roof_pitch  ;
C - - - - - 0x01E850 07:E840: A9 00     LDA #$00                                     ; CONSTANT - the value of jumping from a standing position
C - - - - - 0x01E852 07:E842: A0 03     LDY #$03                                     ; CONSTANT - jump by side
C - - - - - 0x01E854 07:E844: 4C 9D DD  JMP loc_DD9D_assigned_jump_subroutine        ;

loc_E847_on_the_balloon:
C D 3 - - - 0x01E857 07:E847: A9 01     LDA #$01                             ;
C - - - - - 0x01E859 07:E849: 85 3F     STA vFlyingOffset                    ; updates X-position offset (for a velocity) for flying
C - - - - - 0x01E85B 07:E84B: A9 01     LDA #$01                             ;
C - - - - - 0x01E85D 07:E84D: 85 3E     STA vDrowningRate                    ; Initializes a rate (the balloon doesn't use the rate)
C - - - - - 0x01E85F 07:E84F: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01E861 07:E851: 29 08     AND #$08                             ; CONSTANT - the character is getting damage
C - - - - - 0x01E863 07:E853: D0 6F     BNE bra_E8C4_damage                  ; If the character is getting damage
C - - - - - 0x01E865 07:E855: 24 42     BIT vChrDirectMovement               ;
C - - - - - 0x01E867 07:E857: 70 67     BVS bra_E8C0_falling                 ; If the character is falling from a balloon
C - - - - - 0x01E869 07:E859: A9 01     LDA #BIT_BUTTON_A                    ;
C - - - - - 0x01E86B 07:E85B: 20 79 D0  JSR sub_D079_check_button_press      ;
C - - - - - 0x01E86E 07:E85E: D0 6D     BNE bra_E8CD_start_falling           ; Go to the branch If the button 'A' is pressed
C - - - - - 0x01E870 07:E860: A9 80     LDA #$80                             ; CONSTANT - the character is allowed the hit
C - - - - - 0x01E872 07:E862: 85 79     STA vChrAllowedStatus                ;
C - - - - - 0x01E874 07:E864: A5 1C     LDA vBtnPressedInGame                ;
C - - - - - 0x01E876 07:E866: 29 C0     AND #BIT_BUTTON_Left_OR_Right        ;
C - - - - - 0x01E878 07:E868: F0 26     BEQ bra_E890_idle                    ; If the button 'Left' or 'Right' isn't pressed
C - - - - - 0x01E87A 07:E86A: C9 80     CMP #BIT_BUTTON_Right                ;
C - - - - - 0x01E87C 07:E86C: F0 0A     BEQ bra_E878_right                   ; If the button 'Right' isn't pressed
C - - - - - 0x01E87E 07:E86E: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01E880 07:E870: 6A        ROR                                  ;
C - - - - - 0x01E881 07:E871: B0 0F     BCS bra_E882_non_invert              ; If the character is looking to the left
C - - - - - 0x01E883 07:E873: E6 6C     INC vChrStatus                       ; simple change the direction (right to left)
C - - - - - 0x01E885 07:E875: 4C 7F E8  JMP loc_E87F_continue                ;

bra_E878_right:
C - - - - - 0x01E888 07:E878: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01E88A 07:E87A: 6A        ROR                                  ;
C - - - - - 0x01E88B 07:E87B: 90 05     BCC bra_E882_non_invert              ; If the character is looking to the right
C - - - - - 0x01E88D 07:E87D: C6 6C     DEC vChrStatus                       ; simple change the direction (left to right)
loc_E87F_continue:
C D 3 - - - 0x01E88F 07:E87F: 20 F1 DC  JSR sub_DCF1_reset_velocity          ;
bra_E882_non_invert:
C - - - - - 0x01E892 07:E882: A5 2C     LDA vLowCounter                      ;
C - - - - - 0x01E894 07:E884: 29 07     AND #$07                             ;
C - - - - - 0x01E896 07:E886: D0 0B     BNE bra_E893_non_increment           ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0)
C - - - - - 0x01E898 07:E888: A2 04     LDX #$04                             ; CONSTANT - Max value on the balloon
C - - - - - 0x01E89A 07:E88A: 20 8A DC  JSR sub_DC8A_inc_velocity            ;
C - - - - - 0x01E89D 07:E88D: 4C 93 E8  JMP loc_E893_continue                ;

bra_E890_idle:
C - - - - - 0x01E8A0 07:E890: 20 78 DF  JSR sub_DF78_idle_slowdown           ;
bra_E893_non_increment:
loc_E893_continue:
C D 3 - - - 0x01E8A3 07:E893: 20 1D E7  JSR sub_E71D_try_to_move_in_the_air     ;
C - - - - - 0x01E8A6 07:E896: A2 03     LDX #$03                                ; CONSTANT - for a normal speed
C - - - - - 0x01E8A8 07:E898: A5 1C     LDA vBtnPressedInGame                   ;
C - - - - - 0x01E8AA 07:E89A: 29 10     AND #BIT_BUTTON_Up                      ;
C - - - - - 0x01E8AC 07:E89C: F0 02     BEQ @bra_E8A0_skip                      ; If the button 'Up' isn't pressed
C - - - - - 0x01E8AE 07:E89E: A2 01     LDX #$01                                ; CONSTANT - for a fast speed
@bra_E8A0_skip:
C - - - - - 0x01E8B0 07:E8A0: 86 00     STX ram_0000                            ; <~ 0x01 or 0x03
C - - - - - 0x01E8B2 07:E8A2: A5 2C     LDA vLowCounter                         ;
C - - - - - 0x01E8B4 07:E8A4: 25 00     AND ram_0000                            ;
C - - - - - 0x01E8B6 07:E8A6: D0 02     BNE @bra_E8AA_skip_decrement            ; Branch if vLowCounter doesn't multiple of 4 ($0000 = 0x03) or 2 ($0000 = 0x01)
C - - - - - 0x01E8B8 07:E8A8: C6 6A     DEC vScreenChrPosY                      ;
@bra_E8AA_skip_decrement:
C - - - - - 0x01E8BA 07:E8AA: A5 6A     LDA vScreenChrPosY                      ;
C - - - - - 0x01E8BC 07:E8AC: C9 6F     CMP #$6F                                ; CONSTANT - mininal Y-position for the character on the balloon
C - - - - - 0x01E8BE 07:E8AE: 90 1D     BCC bra_E8CD_start_falling              ; If ChrPosY < 0x6F
C - - - - - 0x01E8C0 07:E8B0: A5 5E     LDA vNoLevel                            ;
C - - - - - 0x01E8C2 07:E8B2: C9 03     CMP #$03                                ; CONSTANT - level 4 or level-racing
C - - - - - 0x01E8C4 07:E8B4: D0 1F     BNE bra_E8D5_skip                       ; If vNoLevel != 0x03
C - - - - - 0x01E8C6 07:E8B6: A9 C0     LDA #$C0                                ; prepare ChrPosY (-64), a character + balloon height = 64
C - - - - - 0x01E8C8 07:E8B8: 20 7E DD  JSR sub_DD7E_check_strong_collision_ex  ;
C - - - - - 0x01E8CB 07:E8BB: F0 10     BEQ bra_E8CD_start_falling              ; If collisions exist
C - - - - - 0x01E8CD 07:E8BD: 4C D5 E8  JMP loc_E8D5_continue                   ;

bra_E8C0_falling:
C - - - - - 0x01E8D0 07:E8C0: A5 2F     LDA vAnimationCounter                 ;
C - - - - - 0x01E8D2 07:E8C2: D0 11     BNE bra_E8D5_skip                     ; If the time the balloon exploding isn't up
bra_E8C4_damage:
C - - - - - 0x01E8D4 07:E8C4: A5 6D     LDA vMovableChrStatus                 ;
C - - - - - 0x01E8D6 07:E8C6: 29 BF     AND #$BF                              ; CONSTANT - all except 'the character is moving on the balloon'
C - - - - - 0x01E8D8 07:E8C8: 85 6D     STA vMovableChrStatus                 ;
C - - - - - 0x01E8DA 07:E8CA: 4C 32 E6  JMP loc_E632_stop_jet_pack_or_balloon ;

bra_E8CD_start_falling:
C - - - - - 0x01E8DD 07:E8CD: A9 28     LDA #$28                              ; CONSTANT - the sound of the balloon is bursting
C - - - - - 0x01E8DF 07:E8CF: 20 20 C4  JSR sub_C420_add_sound_effect         ;
C - - - - - 0x01E8E2 07:E8D2: 20 78 E7  JSR sub_E778_start_falling            ;
bra_E8D5_skip:
loc_E8D5_continue:
C D 3 - - - 0x01E8E5 07:E8D5: A2 00     LDX #$00                              ; prepares the offset of the sprite address
C - - - - - 0x01E8E7 07:E8D7: 4C C2 DB  JMP loc_DBC2_before_rendering         ;

loc_E8DA_racing:
C D 3 - - - 0x01E8EA 07:E8DA: A9 09     LDA #$09                              ; CHR ROM for the character with the car
C - - - - - 0x01E8EC 07:E8DC: 8D B2 06  STA vCacheChrBankSelect + 3           ;
C - - - - - 0x01E8EF 07:E8DF: A5 6C     LDA vCarStatus                        ;
C - - - - - 0x01E8F1 07:E8E1: 29 08     AND #$08                              ; CONSTANT - the car with character is destroying
C - - - - - 0x01E8F3 07:E8E3: D0 0B     BNE @bra_E8F0_skip                    ; If the car with character is destroying
C - - - - - 0x01E8F5 07:E8E5: 20 12 DD  JSR sub_DD12_scroll_to_right          ;
C - - - - - 0x01E8F8 07:E8E8: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01E8FA 07:E8EA: 6A        ROR                                   ;
C - - - - - 0x01E8FB 07:E8EB: 90 03     BCC @bra_E8F0_skip                    ; Branch if vLowCounter multiples of 2
C - - - - - 0x01E8FD 07:E8ED: 20 12 DD  JSR sub_DD12_scroll_to_right          ;
@bra_E8F0_skip:
C - - - - - 0x01E900 07:E8F0: A5 4B     LDA vHighViewPortPosX                 ;
C - - - - - 0x01E902 07:E8F2: C9 05     CMP #$05                              ;
C - - - - - 0x01E904 07:E8F4: 90 1C     BCC @bra_E912_skip                    ; If HighViewPortPosX < 0x05
C - - - - - 0x01E906 07:E8F6: A2 00     LDX #$00                              ; the table index #1
C - - - - - 0x01E908 07:E8F8: C9 0A     CMP #$0A                              ;
C - - - - - 0x01E90A 07:E8FA: 90 08     BCC @bra_E904_skip                    ; If HighViewPortPosX < 0x0A
C - - - - - 0x01E90C 07:E8FC: A2 08     LDX #$08                              ; the table index #2
C - - - - - 0x01E90E 07:E8FE: C9 0C     CMP #$0C                              ;
C - - - - - 0x01E910 07:E900: 90 02     BCC @bra_E904_skip                    ; If HighViewPortPosX < 0x0C
C - - - - - 0x01E912 07:E902: A2 04     LDX #$04                              ; the table index #3
@bra_E904_skip:
C - - - - - 0x01E914 07:E904: A0 00     LDY #$00                              ; set loop counter
@bra_E906_loop:                                                               ; loop by y (4 times)
C - - - - - 0x01E916 07:E906: BD 38 ED  LDA tbl_ED38_pallete,X                ;
C - - - - - 0x01E919 07:E909: 99 08 06  STA vCachePalette + 8,Y               ; a shared background color, 3rd bg palette
C - - - - - 0x01E91C 07:E90C: E8        INX                                   ; next color
C - - - - - 0x01E91D 07:E90D: C8        INY                                   ; increment loop counter
C - - - - - 0x01E91E 07:E90E: C0 04     CPY #$04                              ;
C - - - - - 0x01E920 07:E910: D0 F4     BNE @bra_E906_loop                    ; If Register Y != 0x04
@bra_E912_skip:
C - - - - - 0x01E922 07:E912: A5 6C     LDA vCarStatus                        ;
C - - - - - 0x01E924 07:E914: 29 7F     AND #$7F                              ; filters (a mask)
C - - - - - 0x01E926 07:E916: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ; Register A <~ { 0x00, 0x01, 0x02, ..., 0x07 }
C - - - - - 0x01E929 07:E919: 20 C1 D0  JSR sub_D0C1_change_stack_pointer     ;

- D 3 - I - 0x01E92C 07:E91C: 2B E9     .addr loc_E92C_main - 1          ; 0x0X
- D 3 - I - 0x01E92E 07:E91E: 2E EB     .addr loc_EB2F_jump - 1          ; 0x1X
- D - - - - 0x01E930 07:E920: 2B E9     .addr loc_E92C_main - 1          ; 0x2X
- D 3 - I - 0x01E932 07:E922: C2 EB     .addr loc_EBC3_explosion - 1     ; 0x3X
- D 3 - I - 0x01E934 07:E924: F7 EB     .addr loc_EBF8_landing - 1       ; 0x4X
- D 3 - I - 0x01E936 07:E926: A1 EB     .addr loc_EBA2_drowning - 1      ; 0x5X
- D - - - - 0x01E938 07:E928: 2B E9     .addr loc_E92C_main - 1          ; 0x6X
- D 3 - I - 0x01E93A 07:E92A: 5F E9     .addr loc_E960_into_pyramid_ - 1 ; 0x7X

loc_E92C_main:
C - - - - - 0x01E93C 07:E92C: A5 6A     LDA vScreenChrPosY                       ;
C - - - - - 0x01E93E 07:E92E: 85 00     STA ram_0000                             ;
C - - - - - 0x01E940 07:E930: E6 00     INC ram_0000                             ; <~ vScreenChrPosY + 1, prepare an input parameter
C - - - - - 0x01E942 07:E932: 20 A3 EA  JSR sub_EAA3_inside_road_hill            ;
C - - - - - 0x01E945 07:E935: B0 14     BCS bra_E94B_skip                        ; if the car is inside the road hill
C - - - - - 0x01E947 07:E937: A5 6A     LDA vScreenChrPosY                       ;
C - - - - - 0x01E949 07:E939: 85 00     STA ram_0000                             ;
C - - - - - 0x01E94B 07:E93B: E6 00     INC ram_0000                             ; <~ vScreenChrPosY + 1, prepare an input parameter
C - - - - - 0x01E94D 07:E93D: 20 6A D3  JSR sub_D36A_short_left_right_collision  ;
C - - - - - 0x01E950 07:E940: C9 01     CMP #$01                                 ; CONSTANT - a strong collision
C - - - - - 0x01E952 07:E942: F0 07     BEQ bra_E94B_skip                        ; If the strong collision by Y-position exists
C - - - - - 0x01E954 07:E944: A9 18     LDA #$18                                 ; CONSTANT - a maximum amplitude
C - - - - - 0x01E956 07:E946: A0 03     LDY #$03                                 ; CONSTANT - jump by side
C - - - - - 0x01E958 07:E948: 4C 23 EB  JMP loc_EB23_activate_jump_status        ;

bra_E94B_skip:
C - - - - - 0x01E95B 07:E94B: A5 68     LDA vHighChrPosX                 ;
C - - - - - 0x01E95D 07:E94D: C5 4A     CMP vNearCurrentRoomLength       ;
C - - - - - 0x01E95F 07:E94F: F0 0F     BEQ bra_E960_into_pyramid_       ; If the car with character reach the end of the room
C - - - - - 0x01E961 07:E951: A9 01     LDA #BIT_BUTTON_A                ; tries to execute a jump action
C - - - - - 0x01E963 07:E953: 20 79 D0  JSR sub_D079_check_button_press  ;
C - - - - - 0x01E966 07:E956: F0 35     BEQ bra_E98D_skip                ; Go to the branch If the button 'A' isn't pressed
C - - - - - 0x01E968 07:E958: A9 40     LDA #$40                         ; CONSTANT - the car bouncing sound
C - - - - - 0x01E96A 07:E95A: 20 20 C4  JSR sub_C420_add_sound_effect    ;
C - - - - - 0x01E96D 07:E95D: 4C 1F EB  JMP loc_EB1F_start_jump          ;

bra_E960_into_pyramid_:
loc_E960_into_pyramid_:
C - - - - - 0x01E970 07:E960: A5 1C     LDA vBtnPressedInGame                     ;
C - - - - - 0x01E972 07:E962: 29 0F     AND #BIT_BUTTON_NOT_Arrows                ; !(WHY?)
C - - - - - 0x01E974 07:E964: A6 27     LDX vLowViewPortPosX                      ;
C - - - - - 0x01E976 07:E966: F0 02     BEQ @bra_E96A_skip                        ; If the car with character reach the beginning of the screen
C - - - - - 0x01E978 07:E968: 09 40     ORA #BIT_BUTTON_Left                      ; simulates the braking
@bra_E96A_skip:
C - - - - - 0x01E97A 07:E96A: 85 1C     STA vBtnPressedInGame                     ; <~ 0x40 or the old value
C - - - - - 0x01E97C 07:E96C: A5 66     LDA vLowChrPosX                           ;
C - - - - - 0x01E97E 07:E96E: C9 B8     CMP #$B8                                  ; CONSTANT - Limit X-position for completion the movement
C - - - - - 0x01E980 07:E970: 90 08     BCC @bra_E97A_not_complete                ; If ChrPosX < 0xB8 (low value)
C - - - - - 0x01E982 07:E972: A2 C0     LDX #$C0                                  ; CONSTANT - 'go into the corridor' (sub-level)
C - - - - - 0x01E984 07:E974: 86 39     STX vGameInterruptEvent                   ;
C - - - - - 0x01E986 07:E976: A2 42     LDX #$42                                  ; CONSTANT - level 4, map 1 (B2-D2)
C - - - - - 0x01E988 07:E978: 86 C4     STX vCheckpoint                           ;
@bra_E97A_not_complete:
C - - - - - 0x01E98A 07:E97A: C9 55     CMP #$55                                  ; CONSTANT - Limit X-position for starting the animation (the cut-scene with the movement)
C - - - - - 0x01E98C 07:E97C: 90 0F     BCC bra_E98D_skip                         ; If ChrPosX < 0x55 (low value)
C - - - - - 0x01E98E 07:E97E: D0 0A     BNE @bra_E98A_repeated                    ; If ChrPosX != 0x55  (low value)
C - - - - - 0x01E990 07:E980: A9 C6     LDA #$C6                                  ;
C - - - - - 0x01E992 07:E982: 85 2E     STA vIntoPyramid_Counter                  ; initializes the counter for the driving into the pyramid
C - - - - - 0x01E994 07:E984: A5 6C     LDA vCarStatus                            ;
C - - - - - 0x01E996 07:E986: 09 70     ORA #$70                                  ; CONSTANT - entry into the pyramid
C - - - - - 0x01E998 07:E988: 85 6C     STA vCarStatus                            ;
@bra_E98A_repeated:
C - - - - - 0x01E99A 07:E98A: 4C 1F EC  JMP loc_EC1F_render_driving_into_pyramid_ ;

bra_E98D_skip:
C - - - - - 0x01E99D 07:E98D: 20 B3 E9  JSR sub_E9B3_movements                       ;
loc_E990_continue:
C D 3 - - - 0x01E9A0 07:E990: A9 80     LDA #$80                                     ; CONSTANT -  the character is allowed the hit
C - - - - - 0x01E9A2 07:E992: 85 79     STA vChrAllowedStatus                        ;
C - - - - - 0x01E9A4 07:E994: 20 CE EC  JSR sub_ECCE_set_car_render_params_          ;
C - - - - - 0x01E9A7 07:E997: A5 6C     LDA vCarStatus                               ;
C - - - - - 0x01E9A9 07:E999: 29 08     AND #$08                                     ; CONSTANT - 'the car with character is destroying' status
C - - - - - 0x01E9AB 07:E99B: D0 07     BNE @bra_E9A4_destroy                        ; If the 'destroy' status is activated
C - - - - - 0x01E9AD 07:E99D: 8A        TXA                                          ;
C - - - - - 0x01E9AE 07:E99E: 48        PHA                                          ; deposit x
C - - - - - 0x01E9AF 07:E99F: 20 4C E0  JSR sub_E04C_try_to_activate_personal_weapon ;
C - - - - - 0x01E9B2 07:E9A2: 68        PLA                                          ;
C - - - - - 0x01E9B3 07:E9A3: AA        TAX                                          ; retrieve x (see E99D)
@bra_E9A4_destroy:
C - - - - - 0x01E9B4 07:E9A4: A5 5F     LDA vChrLiveStatus                           ;
C - - - - - 0x01E9B6 07:E9A6: 29 02     AND #$02                                     ; CONSTANT - Goemon
C - - - - - 0x01E9B8 07:E9A8: F0 03     BEQ bra_E9AD_with_bullets                    ; If the character isn't Goemon
C - - - - - 0x01E9BA 07:E9AA: 4C 5C EC  JMP loc_EC5C_render_car_and_parts            ;

bra_E9AD_with_bullets:
C - - - - - 0x01E9BD 07:E9AD: 20 5C EC  JSR sub_EC5C_render_car_and_parts   ;
C - - - - - 0x01E9C0 07:E9B0: 4C 05 DC  JMP loc_DC05_bullets_subroutine_bf  ;

sub_E9B3_movements:
C - - - - - 0x01E9C3 07:E9B3: A5 1C     LDA vBtnPressedInGame              ;
C - - - - - 0x01E9C5 07:E9B5: 29 C0     AND #BIT_BUTTON_Left_OR_Right      ;
C - - - - - 0x01E9C7 07:E9B7: F0 18     BEQ bra_E9D1_reset                 ; If the button 'Left' or 'Right' isn't pressed
C - - - - - 0x01E9C9 07:E9B9: 29 40     AND #BIT_BUTTON_Left               ;
C - - - - - 0x01E9CB 07:E9BB: F0 06     BEQ bra_E9C3_right                 ; If the button 'Left' isn't pressed
C - - - - - 0x01E9CD 07:E9BD: 20 80 DF  JSR sub_DF80_slow_down_velocity    ;
C - - - - - 0x01E9D0 07:E9C0: 4C D5 E9  JMP loc_E9D5_continue              ;

bra_E9C3_right:
C - - - - - 0x01E9D3 07:E9C3: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01E9D5 07:E9C5: 29 01     AND #$01                           ;
C - - - - - 0x01E9D7 07:E9C7: D0 0C     BNE bra_E9D5_skip                  ; Branch if vLowCounter doesn't multiple of 2 (50% chance)
C - - - - - 0x01E9D9 07:E9C9: A2 10     LDX #$10                           ; CONSTANT - Max value
C - - - - - 0x01E9DB 07:E9CB: 20 8A DC  JSR sub_DC8A_inc_velocity          ;
C - - - - - 0x01E9DE 07:E9CE: 4C D5 E9  JMP loc_E9D5_continue              ;

bra_E9D1_reset:
C - - - - - 0x01E9E1 07:E9D1: A9 06     LDA #$06                              ; CONSTANT - the value by default
C - - - - - 0x01E9E3 07:E9D3: 85 71     STA vVelocity                         ;
bra_E9D5_skip:
loc_E9D5_continue:
C D 3 - - - 0x01E9E5 07:E9D5: A5 1C     LDA vBtnPressedInGame                 ;
C - - - - - 0x01E9E7 07:E9D7: 29 30     AND #BIT_BUTTON_Up_OR_Down            ;
C - - - - - 0x01E9E9 07:E9D9: F0 36     BEQ bra_EA11_try_to_move_on_the_right ; If the button 'Up' or 'Down' isn't pressed
C - - - - - 0x01E9EB 07:E9DB: C9 10     CMP #BIT_BUTTON_Up                    ;
C - - - - - 0x01E9ED 07:E9DD: D0 0E     BNE bra_E9ED_down                     ; If the button 'Up' isn't pressed
C - - - - - 0x01E9EF 07:E9DF: A5 6A     LDA vScreenChrPosY                    ;
C - - - - - 0x01E9F1 07:E9E1: 85 00     STA ram_0000                          ; prepare an input parameter
C - - - - - 0x01E9F3 07:E9E3: 20 A3 EA  JSR sub_EAA3_inside_road_hill         ;
C - - - - - 0x01E9F6 07:E9E6: 90 1F     BCC bra_EA07_outside                  ; if the car isn't inside the road hill
C - - - - - 0x01E9F8 07:E9E8: C6 6A     DEC vScreenChrPosY                    ; moves to the top of the road hill
C - - - - - 0x01E9FA 07:E9EA: 4C FC E9  JMP loc_E9FC_continue                 ;

bra_E9ED_down:
C - - - - - 0x01E9FD 07:E9ED: A5 6A     LDA vScreenChrPosY                    ;
C - - - - - 0x01E9FF 07:E9EF: 85 00     STA ram_0000                          ;
C - - - - - 0x01EA01 07:E9F1: E6 00     INC ram_0000                          ;
C - - - - - 0x01EA03 07:E9F3: E6 00     INC ram_0000                          ; <~ vScreenChrPosY + 2, prepare an input parameter
C - - - - - 0x01EA05 07:E9F5: 20 A3 EA  JSR sub_EAA3_inside_road_hill         ;
C - - - - - 0x01EA08 07:E9F8: 90 0D     BCC bra_EA07_outside                  ; if the car isn't inside the road hill
C - - - - - 0x01EA0A 07:E9FA: E6 6A     INC vScreenChrPosY                    ; moves to the bottom of the road hill
loc_E9FC_continue:
C D 3 - - - 0x01EA0C 07:E9FC: E6 6F     INC vJumpCounter                      ; updates the counter value
C - - - - - 0x01EA0E 07:E9FE: A5 6C     LDA vCarStatus                        ;
C - - - - - 0x01EA10 07:EA00: 09 02     ORA #$02                              ; CONSTANT - 'the car is inside the road hill' status
C - - - - - 0x01EA12 07:EA02: 85 6C     STA vCarStatus                        ;
C - - - - - 0x01EA14 07:EA04: 4C 11 EA  JMP loc_EA11_try_to_move_on_the_right ;

bra_EA07_outside:
C - - - - - 0x01EA17 07:EA07: A9 00     LDA #$00                 ;
C - - - - - 0x01EA19 07:EA09: 85 6F     STA vJumpCounter         ; resets the counter value
C - - - - - 0x01EA1B 07:EA0B: A5 6C     LDA vCarStatus           ;
C - - - - - 0x01EA1D 07:EA0D: 29 FD     AND #$FD                 ; 'the car is inside the road hill' status turns off
C - - - - - 0x01EA1F 07:EA0F: 85 6C     STA vCarStatus           ;
bra_EA11_try_to_move_on_the_right:
loc_EA11_try_to_move_on_the_right:
sub_EA11_try_to_move_on_the_right:
C D 3 - - - 0x01EA21 07:EA11: 20 6D D9  JSR sub_D96D_init_absolute_chr_positions    ;
C - - - - - 0x01EA24 07:EA14: A9 0E     LDA #$0E                                    ; prepare an increment by X (+14)
C - - - - - 0x01EA26 07:EA16: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX    ;
C - - - - - 0x01EA29 07:EA19: C9 01     CMP #$01                                    ; CONSTANT - a strong collision
C - - - - - 0x01EA2B 07:EA1B: D0 03     BNE bra_EA20_change_posX                    ; If the strong collision doesn't exist
C - - - - - 0x01EA2D 07:EA1D: 4C 8F EB  JMP loc_EB8F_strong_collision               ;

bra_EA20_change_posX:
sub_EA20_change_posX:
C - - - - - 0x01EA30 07:EA20: 20 5E EA  JSR sub_EA5E_change_posX_by_velocity ;
C - - - - - 0x01EA33 07:EA23: A5 27     LDA vLowViewPortPosX                 ;
C - - - - - 0x01EA35 07:EA25: 18        CLC                                  ;
C - - - - - 0x01EA36 07:EA26: 69 14     ADC #$14                             ;
C - - - - - 0x01EA38 07:EA28: 85 00     STA ram_0000                         ; <~ vLowViewPortPosX + 0x14
C - - - - - 0x01EA3A 07:EA2A: A5 4B     LDA vHighViewPortPosX                ;
C - - - - - 0x01EA3C 07:EA2C: 69 00     ADC #$00                             ;
C - - - - - 0x01EA3E 07:EA2E: 85 01     STA ram_0001                         ; <~ vHighViewPortPosX (+1 with overflow)
C - - - - - 0x01EA40 07:EA30: A5 66     LDA vLowChrPosX                      ;
C - - - - - 0x01EA42 07:EA32: 38        SEC                                  ;
C - - - - - 0x01EA43 07:EA33: E5 00     SBC ram_0000                         ;
C - - - - - 0x01EA45 07:EA35: A5 68     LDA vHighChrPosX                     ;
C - - - - - 0x01EA47 07:EA37: E5 01     SBC ram_0001                         ;
C - - - - - 0x01EA49 07:EA39: 90 18     BCC @bra_EA53_calc_posX_by_viewport  ; If [H:L] character < [Hvp:Lvp + 0x14] (1 and 2 bytes)
C - - - - - 0x01EA4B 07:EA3B: A5 27     LDA vLowViewPortPosX                 ;
C - - - - - 0x01EA4D 07:EA3D: 18        CLC                                  ;
C - - - - - 0x01EA4E 07:EA3E: 69 E0     ADC #$E0                             ;
C - - - - - 0x01EA50 07:EA40: 85 00     STA ram_0000                         ; <~ vLowViewPortPosX - 0x20
C - - - - - 0x01EA52 07:EA42: A5 4B     LDA vHighViewPortPosX                ;
C - - - - - 0x01EA54 07:EA44: 69 00     ADC #$00                             ;
C - - - - - 0x01EA56 07:EA46: 85 01     STA ram_0001                         ; <~ vHighViewPortPosX (+1 with overflow)
C - - - - - 0x01EA58 07:EA48: A5 66     LDA vLowChrPosX                      ;
C - - - - - 0x01EA5A 07:EA4A: 38        SEC                                  ;
C - - - - - 0x01EA5B 07:EA4B: E5 00     SBC ram_0000                         ;
C - - - - - 0x01EA5D 07:EA4D: A5 68     LDA vHighChrPosX                     ;
C - - - - - 0x01EA5F 07:EA4F: E5 01     SBC ram_0001                         ;
C - - - - - 0x01EA61 07:EA51: 90 08     BCC @bra_EA5B_calc_screenPosX        ; If [H:L] character < [Hvp:Lvp - 0x20] (1 and 2 bytes)
@bra_EA53_calc_posX_by_viewport:
C - - - - - 0x01EA63 07:EA53: A5 00     LDA ram_0000                         ;
C - - - - - 0x01EA65 07:EA55: 85 66     STA vLowChrPosX                      ; assigns a new low value
C - - - - - 0x01EA67 07:EA57: A5 01     LDA ram_0001                         ;
C - - - - - 0x01EA69 07:EA59: 85 68     STA vHighChrPosX                     ; assigns a new high value
@bra_EA5B_calc_screenPosX:
C - - - - - 0x01EA6B 07:EA5B: 4C A9 DC  JMP loc_DCA9_calc_ScreenChrPosX      ;

sub_EA5E_change_posX_by_velocity:
C - - - - - 0x01EA6E 07:EA5E: A5 71     LDA vVelocity                 ;
C - - - - - 0x01EA70 07:EA60: F0 40     BEQ bra_EAA2_RTS              ; If the velocity == 0x00
C - - - - - 0x01EA72 07:EA62: C9 02     CMP #$02                      ;
C - - - - - 0x01EA74 07:EA64: 90 36     BCC bra_EA9C_1_of_4           ; If the velocity < 0x02
C - - - - - 0x01EA76 07:EA66: C9 04     CMP #$04                      ;
C - - - - - 0x01EA78 07:EA68: 90 2E     BCC bra_EA98_1_of_2           ; If the velocity < 0x04
C - - - - - 0x01EA7A 07:EA6A: C9 06     CMP #$06                      ;
C - - - - - 0x01EA7C 07:EA6C: 90 1D     BCC bra_EA8B_3_of_4           ; If the velocity < 0x06
C - - - - - 0x01EA7E 07:EA6E: 48        PHA                           ; store a (the velocity)
C - - - - - 0x01EA7F 07:EA6F: 20 91 EA  JSR sub_EA91_inc_LowChrPosX   ;
C - - - - - 0x01EA82 07:EA72: 68        PLA                           ; retrieve a (see $EA6E)
C - - - - - 0x01EA83 07:EA73: C9 08     CMP #$08                      ;
C - - - - - 0x01EA85 07:EA75: 90 2B     BCC bra_EAA2_RTS              ; If the velocity < 0x08
C - - - - - 0x01EA87 07:EA77: C9 0C     CMP #$0C                      ;
C - - - - - 0x01EA89 07:EA79: 90 1D     BCC bra_EA98_1_of_2           ; If the velocity < 0x0C
C - - - - - 0x01EA8B 07:EA7B: 48        PHA                           ; store a (the velocity)
C - - - - - 0x01EA8C 07:EA7C: 20 91 EA  JSR sub_EA91_inc_LowChrPosX   ;
C - - - - - 0x01EA8F 07:EA7F: 68        PLA                           ; retrieve a (see $EA7B)
C - - - - - 0x01EA90 07:EA80: C9 10     CMP #$10                      ;
C - - - - - 0x01EA92 07:EA82: 90 1E     BCC bra_EAA2_RTS              ; If the velocity < 0x10
C - - - - - 0x01EA94 07:EA84: C9 14     CMP #$14                      ;
C - - - - - 0x01EA96 07:EA86: 90 10     BCC bra_EA98_1_of_2           ; If the velocity < 0x14
C - - - - - 0x01EA98 07:EA88: 4C 91 EA  JMP loc_EA91_inc_LowChrPosX   ;

bra_EA8B_3_of_4:
C - - - - - 0x01EA9B 07:EA8B: A9 03     LDA #$03                      ; CONSTANT - 75% chance
C - - - - - 0x01EA9D 07:EA8D: 25 2C     AND vLowCounter               ;
C - - - - - 0x01EA9F 07:EA8F: F0 11     BEQ bra_EAA2_RTS              ; Branch if vLowCounter multiple of 4 (vLowCounter % 4 == 0)
bra_EA91_inc_LowChrPosX:
sub_EA91_inc_LowChrPosX:
loc_EA91_inc_LowChrPosX:
C - - - - - 0x01EAA1 07:EA91: E6 66     INC vLowChrPosX               ;
C - - - - - 0x01EAA3 07:EA93: D0 02     BNE @bra_EA97_RTS             ; If the car doesn't move from one screen to another
C - - - - - 0x01EAA5 07:EA95: E6 68     INC vHighChrPosX              ;
@bra_EA97_RTS:
C - - - - - 0x01EAA7 07:EA97: 60        RTS                           ;

bra_EA98_1_of_2:
C - - - - - 0x01EAA8 07:EA98: A9 01     LDA #$01                      ; f(A) = 2, see $EA9E (50% chance)
C - - - - - 0x01EAAA 07:EA9A: D0 02     BNE bra_EA9E_continue         ; Always true

bra_EA9C_1_of_4:
C - - - - - 0x01EAAC 07:EA9C: A9 03     LDA #$03                      ; f(A) = 4, see $EA9E (25% chance)
bra_EA9E_continue:
C - - - - - 0x01EAAE 07:EA9E: 25 2C     AND vLowCounter               ;
C - - - - - 0x01EAB0 07:EAA0: F0 EF     BEQ bra_EA91_inc_LowChrPosX   ; Branch if vLowCounter multiple of f(A) (vLowCounter % f(A) == 0)
bra_EAA2_RTS:
C - - - - - 0x01EAB2 07:EAA2: 60        RTS                           ;

; In: $0000 - vScreenChrPosY + offset
; Out; Register X - the byte number in tbl_road_hills
; Out: carry flag (analog return true or false):
; 1, if the car is inside the road hill
; 0, otherwise.
sub_EAA3_inside_road_hill:
C - - - - - 0x01EAB3 07:EAA3: 20 46 EF  JSR sub_EF46_switch_bank_4_p1  ;
C - - - - - 0x01EAB6 07:EAA6: A0 00     LDY #$00                       ; set loop counter
C - - - - - 0x01EAB8 07:EAA8: A2 FF     LDX #$FF                       ;
@bra_EAAA_loop:                                                        ; loop by y (5 times)
C - - - - - 0x01EABA 07:EAAA: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01EABC 07:EAAC: 38        SEC                            ;
C - - - - - 0x01EABD 07:EAAD: F9 58 86  SBC tbl_road_hills + 1,Y       ;
C - - - - - 0x01EAC0 07:EAB0: A5 68     LDA vHighChrPosX               ;
C - - - - - 0x01EAC2 07:EAB2: F9 57 86  SBC tbl_road_hills,Y           ;
C - - - - - 0x01EAC5 07:EAB5: 90 34     BCC bra_EAEB_return_false      ; If [H:L] character < [H:L] current road hill (1 and 2 bytes)
C - - - - - 0x01EAC7 07:EAB7: E8        INX                            ; X = {0, 4, 8, 12, 16}
C - - - - - 0x01EAC8 07:EAB8: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01EACA 07:EABA: 38        SEC                            ;
C - - - - - 0x01EACB 07:EABB: F9 59 86  SBC tbl_road_hills + 2,Y       ;
C - - - - - 0x01EACE 07:EABE: A5 68     LDA vHighChrPosX               ;
C - - - - - 0x01EAD0 07:EAC0: F9 57 86  SBC tbl_road_hills,Y           ;
C - - - - - 0x01EAD3 07:EAC3: 90 28     BCC bra_EAED_inside_ascent     ; If [H:L] character < [H:L] current road hill (1 and 3 bytes)
C - - - - - 0x01EAD5 07:EAC5: E8        INX                            ; X = {1, 5, 9, 13, 17}
C - - - - - 0x01EAD6 07:EAC6: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01EAD8 07:EAC8: 38        SEC                            ;
C - - - - - 0x01EAD9 07:EAC9: F9 5B 86  SBC tbl_road_hills + 4,Y       ;
C - - - - - 0x01EADC 07:EACC: A5 68     LDA vHighChrPosX               ;
C - - - - - 0x01EADE 07:EACE: F9 5A 86  SBC tbl_road_hills + 3,Y       ;
C - - - - - 0x01EAE1 07:EAD1: 90 3E     BCC bra_EB11_inside_hill       ; If [H:L] character < [H:L] current road hill (4 and 5 bytes)
C - - - - - 0x01EAE3 07:EAD3: E8        INX                            ; X = {2, 6, 10, 14, 18}
C - - - - - 0x01EAE4 07:EAD4: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01EAE6 07:EAD6: 38        SEC                            ;
C - - - - - 0x01EAE7 07:EAD7: F9 5C 86  SBC tbl_road_hills + 5,Y       ;
C - - - - - 0x01EAEA 07:EADA: A5 68     LDA vHighChrPosX               ;
C - - - - - 0x01EAEC 07:EADC: F9 5A 86  SBC tbl_road_hills + 3,Y       ;
C - - - - - 0x01EAEF 07:EADF: 90 27     BCC bra_EB08_inside_descent    ; If [H:L] character < [H:L] current road hill (4 and 6 bytes)
C - - - - - 0x01EAF1 07:EAE1: E8        INX                            ; X = {3, 7, 11, 15, 19}
C - - - - - 0x01EAF2 07:EAE2: 98        TYA                            ;
C - - - - - 0x01EAF3 07:EAE3: 18        CLC                            ;
C - - - - - 0x01EAF4 07:EAE4: 69 06     ADC #$06                       ;
C - - - - - 0x01EAF6 07:EAE6: A8        TAY                            ; increment loop counter (+6)
C - - - - - 0x01EAF7 07:EAE7: C0 1E     CPY #$1E                       ;
C - - - - - 0x01EAF9 07:EAE9: 90 BF     BCC @bra_EAAA_loop             ; If Register Y < 0x1E
bra_EAEB_return_false:
C - - - - - 0x01EAFB 07:EAEB: 18        CLC                            ;
C - - - - - 0x01EAFC 07:EAEC: 60        RTS                            ;

; In: $0000 - vScreenChrPosY + offset
bra_EAED_inside_ascent:
C - - - - - 0x01EAFD 07:EAED: A5 66     LDA vLowChrPosX                ;
C - - - - - 0x01EAFF 07:EAEF: 38        SEC                            ;
C - - - - - 0x01EB00 07:EAF0: F9 58 86  SBC tbl_road_hills + 1,Y       ; A <~ chrPosX - hillPosX, A >= 0
; In: Register A - the hill height
bra_EAF3_control_check:
loc_EAF3_control_check:
C D 3 - - - 0x01EB03 07:EAF3: 85 01     STA ram_0001                   ; $0001 <~ the hill height
C - - - - - 0x01EB05 07:EAF5: A9 C8     LDA #$C8                       ; CONSTANT - lower part of the hill
C - - - - - 0x01EB07 07:EAF7: 38        SEC                            ;
C - - - - - 0x01EB08 07:EAF8: E5 01     SBC ram_0001                   ;
C - - - - - 0x01EB0A 07:EAFA: 85 01     STA ram_0001                   ; $0001 <~ 0xC8 - the hill height
C - - - - - 0x01EB0C 07:EAFC: C5 00     CMP ram_0000                   ;
C - - - - - 0x01EB0E 07:EAFE: B0 EB     BCS bra_EAEB_return_false      ; If $0001 >= $0000 (higher than the hill)
C - - - - - 0x01EB10 07:EB00: A9 C7     LDA #$C7                       ;
C - - - - - 0x01EB12 07:EB02: C5 00     CMP ram_0000                   ;
C - - - - - 0x01EB14 07:EB04: 90 E5     BCC bra_EAEB_return_false      ; If 0xC7 < $0000 (below the hill)
C - - - - - 0x01EB16 07:EB06: 38        SEC                            ; return true
C - - - - - 0x01EB17 07:EB07: 60        RTS                            ;

; In: $0000 - vScreenChrPosY + offset
bra_EB08_inside_descent:
C - - - - - 0x01EB18 07:EB08: B9 5C 86  LDA tbl_road_hills + 5,Y       ;
C - - - - - 0x01EB1B 07:EB0B: 38        SEC                            ;
C - - - - - 0x01EB1C 07:EB0C: E5 66     SBC vLowChrPosX                ; A <~ hillPosX - chrPosX, A >= 0
C - - - - - 0x01EB1E 07:EB0E: 4C F3 EA  JMP loc_EAF3_control_check     ;

; In: $0000 - vScreenChrPosY + offset
; In; Register X - the byte number in tbl_road_hills
bra_EB11_inside_hill:
C - - - - - 0x01EB21 07:EB11: A9 30     LDA #$30                       ; the hill height #1
C - - - - - 0x01EB23 07:EB13: E0 05     CPX #$05                       ; CONSTANT - 2th of 5 hills
C - - - - - 0x01EB25 07:EB15: F0 DC     BEQ bra_EAF3_control_check     ; If Register X = 0x05
C - - - - - 0x01EB27 07:EB17: E0 11     CPX #$11                       ; CONSTANT - 5th of 5 hills
C - - - - - 0x01EB29 07:EB19: F0 D8     BEQ bra_EAF3_control_check     ; If Register X = 0x11
C - - - - - 0x01EB2B 07:EB1B: A9 40     LDA #$40                       ; the hill height #2
C - - - - - 0x01EB2D 07:EB1D: D0 D4     BNE bra_EAF3_control_check     ; Always true

loc_EB1F_start_jump:
C D 3 - - - 0x01EB2F 07:EB1F: A0 03     LDY #$03                         ; CONSTANT - jump by side
C - - - - - 0x01EB31 07:EB21: A9 03     LDA #$03                         ; CONSTANT - a start value
; In: Register A - a jump counter
; In: Register Y - a jump type
loc_EB23_activate_jump_status:
C D 3 - - - 0x01EB33 07:EB23: 85 6F     STA vJumpCounter                 ;
C - - - - - 0x01EB35 07:EB25: 84 6E     STY vJumpType                    ;
C - - - - - 0x01EB37 07:EB27: A5 6C     LDA vCarStatus                   ;
C - - - - - 0x01EB39 07:EB29: 29 89     AND #$89                         ; filters by mask (see vCarStatus, X, K, N flags)
C - - - - - 0x01EB3B 07:EB2B: 09 10     ORA #$10                         ; CONSTANT - the car with character is jumping
C - - - - - 0x01EB3D 07:EB2D: 85 6C     STA vCarStatus                   ;
loc_EB2F_jump:
C - - - - - 0x01EB3F 07:EB2F: A5 6C     LDA vCarStatus                   ;
C - - - - - 0x01EB41 07:EB31: 29 08     AND #$08                         ; CONSTANT - the car with character is destroying
C - - - - - 0x01EB43 07:EB33: D0 1E     BNE @bra_EB53_skip               ; If the car with character is destroying
C - - - - - 0x01EB45 07:EB35: A5 5F     LDA vChrLiveStatus               ;
C - - - - - 0x01EB47 07:EB37: 29 02     AND #$02                         ; CONSTANT - Goemon
C - - - - - 0x01EB49 07:EB39: F0 04     BEQ @bra_EB3F_skip               ; If the character isn't Goemon
C - - - - - 0x01EB4B 07:EB3B: A9 80     LDA #$80                         ; CONSTANT - the character is allowed the hit
C - - - - - 0x01EB4D 07:EB3D: 85 79     STA vChrAllowedStatus            ;
@bra_EB3F_skip:
C - - - - - 0x01EB4F 07:EB3F: A5 6F     LDA vJumpCounter                 ;
C - - - - - 0x01EB51 07:EB41: C9 0C     CMP #$0C                         ; CONSTANT - a half maximum amplitude
C - - - - - 0x01EB53 07:EB43: 90 0E     BCC @bra_EB53_skip               ; If JumpCounter < 0x08
C - - - - - 0x01EB55 07:EB45: C9 15     CMP #$15                         ; CONSTANT - almost maximum amplitude
C - - - - - 0x01EB57 07:EB47: B0 0A     BCS @bra_EB53_skip               ; If JumpCounter >= 0x15
C - - - - - 0x01EB59 07:EB49: A5 1C     LDA vBtnPressedInGame            ;
C - - - - - 0x01EB5B 07:EB4B: 29 01     AND #BIT_BUTTON_A                ;
C - - - - - 0x01EB5D 07:EB4D: D0 04     BNE @bra_EB53_skip               ; If the button 'A' is pressed
C - - - - - 0x01EB5F 07:EB4F: A9 15     LDA #$15                         ; CONSTANT - almost maximum amplitude
C - - - - - 0x01EB61 07:EB51: 85 6F     STA vJumpCounter                 ; for a lower jump
@bra_EB53_skip:
C - - - - - 0x01EB63 07:EB53: 20 20 EA  JSR sub_EA20_change_posX         ;
C - - - - - 0x01EB66 07:EB56: A6 6F     LDX vJumpCounter                 ;
C - - - - - 0x01EB68 07:EB58: BD 5D E3  LDA tbl_E35D_jump_posY_offset,X  ; X = [0x00-0x2F]
C - - - - - 0x01EB6B 07:EB5B: 18        CLC                              ;
C - - - - - 0x01EB6C 07:EB5C: 65 6A     ADC vScreenChrPosY               ;
C - - - - - 0x01EB6E 07:EB5E: 85 6A     STA vScreenChrPosY               ; Resolves a new throw Y-position
C - - - - - 0x01EB70 07:EB60: 85 00     STA ram_0000                     ; !(WHY?)
C - - - - - 0x01EB72 07:EB62: A5 6F     LDA vJumpCounter                 ;
C - - - - - 0x01EB74 07:EB64: C9 18     CMP #$18                         ; CONSTANT - a maximum amplitude
C - - - - - 0x01EB76 07:EB66: 90 4E     BCC bra_EBB6_inc                 ; If vJumpCounter < 0x18
C - - - - - 0x01EB78 07:EB68: A5 6A     LDA vScreenChrPosY               ;
C - - - - - 0x01EB7A 07:EB6A: C9 EF     CMP #$EF                         ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01EB7C 07:EB6C: 90 06     BCC bra_EB74_skip                ; If vChrPosY < 0xEF
C - - - - - 0x01EB7E 07:EB6E: 20 31 DF  JSR sub_DF31_finish_dying        ;
C - - - - - 0x01EB81 07:EB71: 4C B6 EB  JMP loc_EBB6_inc                 ;

; In: Register A - ChrPosY (in vScreenChrPosY units)
bra_EB74_skip:
C - - - - - 0x01EB84 07:EB74: 85 00     STA ram_0000                              ;
C - - - - - 0x01EB86 07:EB76: E6 00     INC ram_0000                              ; <~ vScreenChrPosY + 1, prepare an input parameter
C - - - - - 0x01EB88 07:EB78: 20 6A D3  JSR sub_D36A_short_left_right_collision   ;
C - - - - - 0x01EB8B 07:EB7B: F0 39     BEQ bra_EBB6_inc                          ; If collisions don't exist
C - - - - - 0x01EB8D 07:EB7D: C9 03     CMP #$03                                  ; CONSTANT - a water collision
C - - - - - 0x01EB8F 07:EB7F: F0 19     BEQ bra_EB9A_start_drowning               ; If the water collision exists
C - - - - - 0x01EB91 07:EB81: 20 32 E3  JSR sub_E332_correction_ScreenChrPosY     ;
C - - - - - 0x01EB94 07:EB84: A9 41     LDA #$41                                  ; CONSTANT - the car landing sound
C - - - - - 0x01EB96 07:EB86: 20 20 C4  JSR sub_C420_add_sound_effect             ;
C - - - - - 0x01EB99 07:EB89: A5 6C     LDA vCarStatus                            ;
C - - - - - 0x01EB9B 07:EB8B: 29 08     AND #$08                                  ; CONSTANT - the car with character is destroying
C - - - - - 0x01EB9D 07:EB8D: F0 1B     BEQ bra_EBAA_skip                         ; If the car with character isn't destroying
loc_EB8F_strong_collision:
C D 3 - - - 0x01EB9F 07:EB8F: A9 38     LDA #$38                                  ; CONSTANT - 'the strong collision' + 'the detroying'
C - - - - - 0x01EBA1 07:EB91: 85 6C     STA vCarStatus                            ;
C - - - - - 0x01EBA3 07:EB93: A9 60     LDA #$60                                  ;
C - - - - - 0x01EBA5 07:EB95: 85 2E     STA vCarExplosionCounter                  ; initializes a counter
C - - - - - 0x01EBA7 07:EB97: 4C C3 EB  JMP loc_EBC3_explosion                    ;

bra_EB9A_start_drowning:
C - - - - - 0x01EBAA 07:EB9A: A9 58     LDA #$58                                  ; CONSTANT - 'the water collision' + 'the detroying'
C - - - - - 0x01EBAC 07:EB9C: 85 6C     STA vCarStatus                            ;
C - - - - - 0x01EBAE 07:EB9E: A9 00     LDA #$00                                  ;
C - - - - - 0x01EBB0 07:EBA0: 85 70     STA vChrFrame_Counter                     ; initializes a frame counter
loc_EBA2_drowning:
C - - - - - 0x01EBB2 07:EBA2: 20 3E DF  JSR sub_DF3E_update_render_params_for_gap ;
C - - - - - 0x01EBB5 07:EBA5: B0 32     BCS bra_EBD9_finish_dying                 ; If the frame index >= 0x1F
C - - - - - 0x01EBB7 07:EBA7: 4C 64 D7  JMP loc_D764_diving_render                ;

bra_EBAA_skip:
C - - - - - 0x01EBBA 07:EBAA: A5 6C     LDA vCarStatus                   ;
C - - - - - 0x01EBBC 07:EBAC: 29 89     AND #$89                         ; filters by mask (see vCarStatus, X, K, N flags)
C - - - - - 0x01EBBE 07:EBAE: 09 40     ORA #$40                         ; CONSTANT - 'the car is landing' status
C - - - - - 0x01EBC0 07:EBB0: 85 6C     STA vCarStatus                   ;
C - - - - - 0x01EBC2 07:EBB2: A9 04     LDA #$04                         ;
C - - - - - 0x01EBC4 07:EBB4: 85 2E     STA vCarLandingCounter           ; initializes a counter
bra_EBB6_inc:
loc_EBB6_inc:
C D 3 - - - 0x01EBC6 07:EBB6: E6 6F     INC vJumpCounter                 ;
C - - - - - 0x01EBC8 07:EBB8: A9 2F     LDA #$2F                         ; CONSTANT - a maximum jump value
C - - - - - 0x01EBCA 07:EBBA: C5 6F     CMP vJumpCounter                 ;
C - - - - - 0x01EBCC 07:EBBC: B0 02     BCS @bra_EBC0_skip               ; If vJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x01EBCE 07:EBBE: 85 6F     STA vJumpCounter                 ; <~ 0x2F (the correction)
@bra_EBC0_skip:
C - - - - - 0x01EBD0 07:EBC0: 4C 90 E9  JMP loc_E990_continue            ;

loc_EBC3_explosion:
C D 3 - - - 0x01EBD3 07:EBC3: A5 2E     LDA vCarExplosionCounter         ;
C - - - - - 0x01EBD5 07:EBC5: C9 5F     CMP #$5F                         ;
C - - - - - 0x01EBD7 07:EBC7: D0 05     BNE @bra_EBCE_skip_sound         ; If the counter != 0x5F
C - - - - - 0x01EBD9 07:EBC9: A9 0F     LDA #$0F                         ; CONSTANT - the exploding sound
C - - - - - 0x01EBDB 07:EBCB: 20 20 C4  JSR sub_C420_add_sound_effect    ;
@bra_EBCE_skip_sound:
C - - - - - 0x01EBDE 07:EBCE: A5 2E     LDA vCarExplosionCounter         ;
C - - - - - 0x01EBE0 07:EBD0: 38        SEC                              ;
C - - - - - 0x01EBE1 07:EBD1: E9 50     SBC #$50                         ;
C - - - - - 0x01EBE3 07:EBD3: B0 08     BCS bra_EBDD_render_explosion    ; If the counter >= 0x50
C - - - - - 0x01EBE5 07:EBD5: A5 2E     LDA vCarExplosionCounter         ;
C - - - - - 0x01EBE7 07:EBD7: D0 03     BNE bra_EBDC_RTS                 ; If the counter != 0x00
bra_EBD9_finish_dying:
C - - - - - 0x01EBE9 07:EBD9: 20 31 DF  JSR sub_DF31_finish_dying        ;
bra_EBDC_RTS:
C - - - - - 0x01EBEC 07:EBDC: 60        RTS                              ;

bra_EBDD_render_explosion:
C - - - - - 0x01EBED 07:EBDD: A0 00     LDY #$00                                ; prepare an input parameter (a start index)
C - - - - - 0x01EBEF 07:EBDF: 20 28 DA  JSR sub_DA28_get_explode_sprite_magic2  ;
C - - - - - 0x01EBF2 07:EBE2: 84 01     STY ram_0001                            ; ~> sprite_magic2 (see v_sprite_magic2)
C - - - - - 0x01EBF4 07:EBE4: A9 08     LDA #$08                                ; CONSTANT for CHR ROM (the explosion)
C - - - - - 0x01EBF6 07:EBE6: 8D B2 06  STA vCacheChrBankSelect + 3             ;
C - - - - - 0x01EBF9 07:EBE9: A5 6A     LDA vScreenChrPosY                      ;
C - - - - - 0x01EBFB 07:EBEB: 85 00     STA ram_0000                            ; <~ sprite_magic1
C - - - - - 0x01EBFD 07:EBED: A5 64     LDA vScreenChrPosX                      ;
C - - - - - 0x01EBFF 07:EBEF: 85 03     STA ram_0003                            ; <~ sprite_magic4
C - - - - - 0x01EC01 07:EBF1: A9 60     LDA #$60                                ; ~> sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01EC03 07:EBF3: 85 02     STA ram_0002                            ; $8100, bank 05 (1 page), see $8174
C - - - - - 0x01EC05 07:EBF5: 4C 33 CE  JMP loc_CE33_add_sprite_magic           ;

loc_EBF8_landing:
C - - - - - 0x01EC08 07:EBF8: 20 11 EA  JSR sub_EA11_try_to_move_on_the_right ;
C - - - - - 0x01EC0B 07:EBFB: A5 2E     LDA vCarLandingCounter                ;
C - - - - - 0x01EC0D 07:EBFD: D0 06     BNE @bra_EC05_skip                    ; If vCounter != 0x00
C - - - - - 0x01EC0F 07:EBFF: A5 6C     LDA vCarStatus                        ;
C - - - - - 0x01EC11 07:EC01: 29 BF     AND #$BF                              ; 'the car is landing' status turns off
C - - - - - 0x01EC13 07:EC03: 85 6C     STA vCarStatus                        ;
@bra_EC05_skip:
C - - - - - 0x01EC15 07:EC05: A2 18     LDX #$18                              ; !(WHY?)
C - - - - - 0x01EC17 07:EC07: 4C 90 E9  JMP loc_E990_continue                 ;

; In: Register X - a buller number
loc_EC0A_shot_with_racing:
C D 3 - - - 0x01EC1A 07:EC0A: A5 6A     LDA vScreenChrPosY           ;
C - - - - - 0x01EC1C 07:EC0C: 18        CLC                          ;
C - - - - - 0x01EC1D 07:EC0D: 65 77     ADC vBulletPosOffsetY        ;
C - - - - - 0x01EC1F 07:EC0F: 95 80     STA vBulletPosY,X            ; <~ ChrPosY + offset
C - - - - - 0x01EC21 07:EC11: A5 66     LDA vLowChrPosX              ;
C - - - - - 0x01EC23 07:EC13: 18        CLC                          ;
C - - - - - 0x01EC24 07:EC14: 69 0A     ADC #$0A                     ;
C - - - - - 0x01EC26 07:EC16: 95 85     STA vBulletLowPosX,X         ; <~ LowPosX + 0x0A
C - - - - - 0x01EC28 07:EC18: A5 68     LDA vHighChrPosX             ;
C - - - - - 0x01EC2A 07:EC1A: 69 00     ADC #$00                     ;
C - - - - - 0x01EC2C 07:EC1C: 95 8A     STA vBulletHighPosX,X        ; <~ HighPosX - 0x01 (+1 with overflow)
C - - - - - 0x01EC2E 07:EC1E: 60        RTS                          ;

loc_EC1F_render_driving_into_pyramid_:
C D 3 - - - 0x01EC2F 07:EC1F: A0 00     LDY #$00                        ; set loop counter
C - - - - - 0x01EC31 07:EC21: A5 2E     LDA vIntoPyramid_Counter        ;
@bra_EC23_loop:                                                         ; loop by y
C - - - - - 0x01EC33 07:EC23: D9 44 ED  CMP tbl_ED44_counter_values,Y   ;
C - - - - - 0x01EC36 07:EC26: B0 03     BCS @bra_EC2B_found             ; If vCounter >= the current counter value
C - - - - - 0x01EC38 07:EC28: C8        INY                             ; increment loop counter
C - - - - - 0x01EC39 07:EC29: D0 F8     BNE @bra_EC23_loop              ; If Register Y != 0x00
; In: Register Y - the offset index
@bra_EC2B_found:
C - - - - - 0x01EC3B 07:EC2B: BE 49 ED  LDX tbl_ED49_offsets,Y          ;
C - - - - - 0x01EC3E 07:EC2E: E0 30     CPX #$30                        ; CONSTANT - 1st offset of 5
C - - - - - 0x01EC40 07:EC30: F0 08     BEQ @bra_EC3A_skip              ; If it's 1st offset
C - - - - - 0x01EC42 07:EC32: A5 2E     LDA vIntoPyramid_Counter        ;
C - - - - - 0x01EC44 07:EC34: 29 08     AND #$08                        ;
C - - - - - 0x01EC46 07:EC36: D0 02     BNE @bra_EC3A_skip              ; Branch every 8 times after 8 (after updating vCounter)
C - - - - - 0x01EC48 07:EC38: E8        INX                             ;
C - - - - - 0x01EC49 07:EC39: E8        INX                             ; next offset (the address contains 2 byte)
@bra_EC3A_skip:
C - - - - - 0x01EC4A 07:EC3A: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x01EC4C 07:EC3C: 29 03     AND #$03                        ;
C - - - - - 0x01EC4E 07:EC3E: F0 02     BEQ @bra_EC42_skip              ; Branch if vLowCounter multiples of 4 (25% chance)
C - - - - - 0x01EC50 07:EC40: C6 6A     DEC vScreenChrPosY              ; driving into in the pyramid by Y-position
@bra_EC42_skip:
C - - - - - 0x01EC52 07:EC42: 29 01     AND #$01                        ;
C - - - - - 0x01EC54 07:EC44: F0 02     BEQ @bra_EC48_skip              ; Branch if vLowCounter multiples of 2 (50% chance)
C - - - - - 0x01EC56 07:EC46: E6 66     INC vLowChrPosX                 ; driving into in the pyramid by X-position
@bra_EC48_skip:
C - - - - - 0x01EC58 07:EC48: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01EC5A 07:EC4A: 85 00     STA ram_0000                    ; prepare 1st parameter (for render)
C - - - - - 0x01EC5C 07:EC4C: A5 66     LDA vLowChrPosX                 ;
C - - - - - 0x01EC5E 07:EC4E: 85 01     STA ram_0001                    ; prepare 2nd parameter (for render)
C - - - - - 0x01EC60 07:EC50: A9 02     LDA #$02                        ; AA = 2, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01EC62 07:EC52: 85 45     STA vCharacterRenderData        ;
C - - - - - 0x01EC64 07:EC54: 8A        TXA                             ; A <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x01EC65 07:EC55: 18        CLC                             ;
C - - - - - 0x01EC66 07:EC56: 69 7E     ADC #$7E                        ; see bank 05, page 1, $807E
C - - - - - 0x01EC68 07:EC58: AA        TAX                             ; X <~ A + 0x7E (the offset of the sprite address)
C - - - - - 0x01EC69 07:EC59: 4C 5A CE  JMP loc_CE5A_render_character   ;

loc_EC5C_render_car_and_parts:
sub_EC5C_render_car_and_parts:
C D 3 - - - 0x01EC6C 07:EC5C: 20 65 EC  JSR sub_EC65_render_car_wheels     ;
C - - - - - 0x01EC6F 07:EC5F: 20 7A EC  JSR sub_EC7A_render_head_and_body  ;
C - - - - - 0x01EC72 07:EC62: 4C B6 EC  JMP loc_ECB6_render_car            ;

sub_EC65_render_car_wheels:
C - - - - - 0x01EC75 07:EC65: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01EC77 07:EC67: 85 00     STA ram_0000                    ; prepare 1st parameter (for render)
C - - - - - 0x01EC79 07:EC69: A5 64     LDA vScreenChrPosX              ;
C - - - - - 0x01EC7B 07:EC6B: 85 01     STA ram_0001                    ; prepare 2nd parameter (for render)
C - - - - - 0x01EC7D 07:EC6D: A9 02     LDA #$02                        ; AA = 2, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01EC7F 07:EC6F: 85 45     STA vCharacterRenderData        ;
C - - - - - 0x01EC81 07:EC71: A5 72     LDA vCarWheelsFrame_Offset      ;
C - - - - - 0x01EC83 07:EC73: 18        CLC                             ;
C - - - - - 0x01EC84 07:EC74: 69 7E     ADC #$7E                        ; see bank 05, page 1, $807E
C - - - - - 0x01EC86 07:EC76: AA        TAX                             ; X <~ frame offset + 0x7E (the offset of the sprite address)
C - - - - - 0x01EC87 07:EC77: 4C 5A CE  JMP loc_CE5A_render_character   ;

sub_EC7A_render_head_and_body:
C - - - - - 0x01EC8A 07:EC7A: A5 6A     LDA vScreenChrPosY                  ;
C - - - - - 0x01EC8C 07:EC7C: 18        CLC                                 ;
C - - - - - 0x01EC8D 07:EC7D: 65 75     ADC vCarChrRenderOffsetY            ;
C - - - - - 0x01EC8F 07:EC7F: 85 00     STA $0000                           ; <~ ChrPosY + offset, prepare 1st parameter (for render)
C - - - - - 0x01EC91 07:EC81: A5 64     LDA vScreenChrPosX                  ;
C - - - - - 0x01EC93 07:EC83: 85 01     STA $0001                           ; prepare 2nd parameter (for render)
C - - - - - 0x01EC95 07:EC85: A9 01     LDA #$01                            ; AA = 1, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01EC97 07:EC87: 85 45     STA vCharacterRenderData            ;
C - - - - - 0x01EC99 07:EC89: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x01EC9B 07:EC8B: 29 03     AND #$03                            ; A <~ {0x00, 0x01, 0x02}
C - - - - - 0x01EC9D 07:EC8D: 0A        ASL                                 ;
C - - - - - 0x01EC9E 07:EC8E: 85 12     STA $0012                           ;
C - - - - - 0x01ECA0 07:EC90: 0A        ASL                                 ;
C - - - - - 0x01ECA1 07:EC91: 65 12     ADC $0012                           ; A <~ A * 6
C - - - - - 0x01ECA3 07:EC93: 18        CLC                                 ;
C - - - - - 0x01ECA4 07:EC94: 65 76     ADC vCarChrFrame_Offset             ;
C - - - - - 0x01ECA6 07:EC96: 18        CLC                                 ;
C - - - - - 0x01ECA7 07:EC97: 69 7E     ADC #$7E                            ; see bank 05, page 1, $807E
C - - - - - 0x01ECA9 07:EC99: AA        TAX                                 ; X <~ 6 * the character number + 0x7E + offset
C - - - - - 0x01ECAA 07:EC9A: 20 5A CE  JSR sub_CE5A_render_character       ;
C - - - - - 0x01ECAD 07:EC9D: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x01ECAF 07:EC9F: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x01ECB1 07:ECA1: F0 12     BEQ bra_ECB5_RTS                    ; If the character isn't Goemon
C - - - - - 0x01ECB3 07:ECA3: 20 8D E2  JSR sub_E28D_update_sword_position  ;
C - - - - - 0x01ECB6 07:ECA6: A5 78     LDA vSwordPosition                  ;
C - - - - - 0x01ECB8 07:ECA8: 38        SEC                                 ;
C - - - - - 0x01ECB9 07:ECA9: E9 06     SBC #$06                            ;
C - - - - - 0x01ECBB 07:ECAB: 90 08     BCC bra_ECB5_RTS                    ; If vSwordPosition < 0x06
C - - - - - 0x01ECBD 07:ECAD: 0A        ASL                                 ;
C - - - - - 0x01ECBE 07:ECAE: 18        CLC                                 ;
C - - - - - 0x01ECBF 07:ECAF: 69 A8     ADC #$A8                            ; see bank 05, page 1, $80A8
C - - - - - 0x01ECC1 07:ECB1: AA        TAX                                 ; X <~ 2 * vSwordPosition + 0xA8
C - - - - - 0x01ECC2 07:ECB2: 4C 5A CE  JMP loc_CE5A_render_character       ;

bra_ECB5_RTS:
C - - - - - 0x01ECC5 07:ECB5: 60        RTS                                 ;

loc_ECB6_render_car:
C D 3 - - - 0x01ECC6 07:ECB6: A5 6A     LDA vScreenChrPosY              ;
C - - - - - 0x01ECC8 07:ECB8: 18        CLC                             ;
C - - - - - 0x01ECC9 07:ECB9: 65 74     ADC vCarRenderOffsetY           ;
C - - - - - 0x01ECCB 07:ECBB: 85 00     STA ram_0000                    ; <~ ChrPosY + offset, prepare 1st parameter (for render)
C - - - - - 0x01ECCD 07:ECBD: A5 64     LDA vScreenChrPosX              ;
C - - - - - 0x01ECCF 07:ECBF: 85 01     STA ram_0001                    ; prepare 2nd parameter (for render)
C - - - - - 0x01ECD1 07:ECC1: A9 02     LDA #$02                        ; AA = 2, LL = 0 (see vCharacterRenderData, $80XX)
C - - - - - 0x01ECD3 07:ECC3: 85 45     STA vCharacterRenderData        ;
C - - - - - 0x01ECD5 07:ECC5: A5 73     LDA vCarFrame_Offset            ;
C - - - - - 0x01ECD7 07:ECC7: 18        CLC                             ;
C - - - - - 0x01ECD8 07:ECC8: 69 7E     ADC #$7E                        ; see bank 05, page 1, $807E
C - - - - - 0x01ECDA 07:ECCA: AA        TAX                             ; X <~ frame offset + 0x7E (the offset of the sprite address)
C - - - - - 0x01ECDB 07:ECCB: 4C 5A CE  JMP loc_CE5A_render_character   ;

sub_ECCE_set_car_render_params_:
C - - - - - 0x01ECDE 07:ECCE: A2 07     LDX #$07               ; CONSTANT - an table index #1
C - - - - - 0x01ECE0 07:ECD0: 24 6C     BIT vCarStatus         ;
C - - - - - 0x01ECE2 07:ECD2: 70 48     BVS bra_ED1C_set       ; If Y flag for vCarStatus is usused
C - - - - - 0x01ECE4 07:ECD4: A5 6C     LDA vCarStatus         ;
C - - - - - 0x01ECE6 07:ECD6: 29 14     AND #$14               ; CONSTANT - see XYWZ and L flags for vCarStatus
C - - - - - 0x01ECE8 07:ECD8: F0 22     BEQ bra_ECFC_skip      ; If XYWZ and L flags aren't usused
C - - - - - 0x01ECEA 07:ECDA: A2 04     LDX #$04               ; CONSTANT - an table index #2
C - - - - - 0x01ECEC 07:ECDC: C9 10     CMP #$10               ; CONSTANT - see XYWZ flags for vCarStatus
C - - - - - 0x01ECEE 07:ECDE: F0 3C     BEQ bra_ED1C_set       ; If XYWZ flags are usused
C - - - - - 0x01ECF0 07:ECE0: A2 05     LDX #$05               ; !(UNUSED), CONSTANT - an table index #3
C - - - - - 0x01ECF2 07:ECE2: C9 04     CMP #$04               ; !(UNUSED)
C - - - - - 0x01ECF4 07:ECE4: F0 36     BEQ bra_ED1C_set       ; !(UNUSED)
C - - - - - 0x01ECF6 07:ECE6: A5 6F     LDA vJumpCounter       ; !(UNUSED)
C - - - - - 0x01ECF8 07:ECE8: C9 10     CMP #$10               ; !(UNUSED)
C - - - - - 0x01ECFA 07:ECEA: 90 30     BCC bra_ED1C_set       ; !(UNUSED)
C - - - - - 0x01ECFC 07:ECEC: A2 00     LDX #$00               ; !(UNUSED), CONSTANT - an table index #4
C - - - - - 0x01ECFE 07:ECEE: C9 18     CMP #$18               ; !(UNUSED)
C - - - - - 0x01ED00 07:ECF0: 90 2A     BCC bra_ED1C_set       ; !(UNUSED)
C - - - - - 0x01ED02 07:ECF2: A2 01     LDX #$01               ; !(UNUSED), CONSTANT - an table index #5
C - - - - - 0x01ED04 07:ECF4: C9 20     CMP #$20               ; !(UNUSED)
C - - - - - 0x01ED06 07:ECF6: 90 24     BCC bra_ED1C_set       ; !(UNUSED)
C - - - - - 0x01ED08 07:ECF8: A2 06     LDX #$06               ; !(UNUSED), CONSTANT - an table index #6
C - - - - - 0x01ED0A 07:ECFA: D0 20     BNE bra_ED1C_set       ; !(UNUSED), Always true

bra_ECFC_skip:
C - - - - - 0x01ED0C 07:ECFC: A2 00     LDX #$00               ; CONSTANT - an table index #7
C - - - - - 0x01ED0E 07:ECFE: A5 6C     LDA vCarStatus         ;
C - - - - - 0x01ED10 07:ED00: 29 02     AND #$02               ; CONSTANT - 'the car is inside the road hill' status
C - - - - - 0x01ED12 07:ED02: F0 10     BEQ bra_ED14_skip      ; If the car isn't inside the road hill
C - - - - - 0x01ED14 07:ED04: A2 02     LDX #$02               ; CONSTANT - an table index #8 (almost overhead view)
C - - - - - 0x01ED16 07:ED06: A5 6F     LDA vJumpCounter       ;
C - - - - - 0x01ED18 07:ED08: C9 10     CMP #$10               ;
C - - - - - 0x01ED1A 07:ED0A: 90 10     BCC bra_ED1C_set       ; If vJumpCounter < 0x10
C - - - - - 0x01ED1C 07:ED0C: C9 28     CMP #$28               ;
C - - - - - 0x01ED1E 07:ED0E: B0 0C     BCS bra_ED1C_set       ; If vJumpCounter >= 0x28
C - - - - - 0x01ED20 07:ED10: A2 03     LDX #$03               ; CONSTANT - an table index #9 (overhead view)
C - - - - - 0x01ED22 07:ED12: D0 08     BNE bra_ED1C_set       ; Always true

bra_ED14_skip:
C - - - - - 0x01ED24 07:ED14: A5 2C     LDA vLowCounter        ;
C - - - - - 0x01ED26 07:ED16: 29 04     AND #$04               ;
C - - - - - 0x01ED28 07:ED18: D0 02     BNE bra_ED1C_set       ; Branch every 8 times after 8
C - - - - - 0x01ED2A 07:ED1A: A2 01     LDX #$01               ; CONSTANT - an table index #10
; In: Register X - a table index
bra_ED1C_set:
C - - - - - 0x01ED2C 07:ED1C: 20 46 EF  JSR sub_EF46_switch_bank_4_p1 ;
C - - - - - 0x01ED2F 07:ED1F: 8A        TXA                           ; A <~ X
C - - - - - 0x01ED30 07:ED20: 0A        ASL                           ;
C - - - - - 0x01ED31 07:ED21: 85 12     STA $0012                     ;
C - - - - - 0x01ED33 07:ED23: 0A        ASL                           ;
C - - - - - 0x01ED34 07:ED24: 18        CLC                           ;
C - - - - - 0x01ED35 07:ED25: 65 12     ADC $0012                     ;
C - - - - - 0x01ED37 07:ED27: 18        CLC                           ;
C - - - - - 0x01ED38 07:ED28: 69 05     ADC #$05                      ;
C - - - - - 0x01ED3A 07:ED2A: AA        TAX                           ; X <~ 6 * A + 5 (X >= 5)
C - - - - - 0x01ED3B 07:ED2B: A0 05     LDY #$05                      ; set loop counter
@bra_ED2D_loop:                                                       ; loop by y
C - - - - - 0x01ED3D 07:ED2D: BD 27 86  LDA tbl_car_render_offsets,X  ;
C - - - - - 0x01ED40 07:ED30: 99 72 00  STA vCarRenderParams_,Y       ;
C - - - - - 0x01ED43 07:ED33: CA        DEX                           ; previous offset
C - - - - - 0x01ED44 07:ED34: 88        DEY                           ; decrement loop counter
C - - - - - 0x01ED45 07:ED35: 10 F6     BPL @bra_ED2D_loop            ; If Register Y >= 0
C - - - - - 0x01ED47 07:ED37: 60        RTS                           ;

tbl_ED38_pallete:
- D 3 - - - 0x01ED48 07:ED38: 37        .byte $37, $29, $0F, $21
- D 3 - - - 0x01ED4C 07:ED3C: 37        .byte $37, $20, $28, $0F
- D 3 - - - 0x01ED50 07:ED40: 37        .byte $37, $20, $18, $0F

tbl_ED44_counter_values:
- D 3 - - - 0x01ED54 07:ED44: BC        .byte $BC
- D 3 - - - 0x01ED55 07:ED45: B4        .byte $B4
- D 3 - - - 0x01ED56 07:ED46: AC        .byte $AC
- D 3 - - - 0x01ED57 07:ED47: A4        .byte $A4
- D 3 - - - 0x01ED58 07:ED48: 00        .byte $00

tbl_ED49_offsets:
- D 3 - - - 0x01ED59 07:ED49: 30        .byte $30
- D 3 - - - 0x01ED5A 07:ED4A: 32        .byte $32
- D 3 - - - 0x01ED5B 07:ED4B: 36        .byte $36
- D 3 - - - 0x01ED5C 07:ED4C: 3A        .byte $3A
- D 3 - - - 0x01ED5D 07:ED4D: 3E        .byte $3E

vec_ED4E_NMI:
C - - - - - 0x01ED5E 07:ED4E: 48        PHA                                 ; store a
C - - - - - 0x01ED5F 07:ED4F: 8A        TXA                                 ;
C - - - - - 0x01ED60 07:ED50: 48        PHA                                 ; store x
C - - - - - 0x01ED61 07:ED51: 98        TYA                                 ; 
C - - - - - 0x01ED62 07:ED52: 48        PHA                                 ; store y
C - - - - - 0x01ED63 07:ED53: AD 02 20  LDA PPU_STATUS                      ; Read PPU status to reset the high/low latch
C - - - - - 0x01ED66 07:ED56: A9 00     LDA #$00                            ;
C - - - - - 0x01ED68 07:ED58: 8D 03 20  STA PPU_OAM_ADDR                    ; DMA is used instead
C - - - - - 0x01ED6B 07:ED5B: A9 07     LDA #$07                            ;
C - - - - - 0x01ED6D 07:ED5D: 8D 14 40  STA OAM_DMA                         ; set 0x0700-0x07FF
C - - - - - 0x01ED70 07:ED60: 20 D9 C3  JSR sub_C3D9_increment_nmi_counter  ;
C - - - - - 0x01ED73 07:ED63: 20 1B D1  JSR sub_D11B_shared_render          ;
C - - - - - 0x01ED76 07:ED66: A5 26     LDA vPpuCtrlSettings                ;
C - - - - - 0x01ED78 07:ED68: 29 FC     AND #$FC                            ;
C - - - - - 0x01ED7A 07:ED6A: 8D 00 20  STA PPU_CTRL                        ; switch $2000 (name table address)
C - - - - - 0x01ED7D 07:ED6D: AD 02 20  LDA PPU_STATUS                      ; Read PPU status to reset the high/low latch
C - - - - - 0x01ED80 07:ED70: A9 00     LDA #$00                            ;
C - - - - - 0x01ED82 07:ED72: 8D 05 20  STA PPU_SCROLL                      ; write X scroll-position
C - - - - - 0x01ED85 07:ED75: 8D 05 20  STA PPU_SCROLL                      ; write Y scroll-position
C - - - - - 0x01ED88 07:ED78: 20 D8 C4  JSR sub_C4D8_selectMessagesChrBanks ;
C - - - - - 0x01ED8B 07:ED7B: A5 3B     LDA vSharedGameStatus               ;
C - - - - - 0x01ED8D 07:ED7D: 10 03     BPL bra_ED82_next_check             ; Branch if it doesn't contain "Main Menu"
C - - - - - 0x01ED8F 07:ED7F: 4C 34 EE  JMP loc_EE34_nmi_main_menu          ;

bra_ED82_next_check:
C - - - - - 0x01ED92 07:ED82: 29 10     AND #$10                            ; CONSTANT - Select the character
C - - - - - 0x01ED94 07:ED84: F0 03     BEQ bra_ED89_next_check             ; If vSharedGameStatus != 'Select the character'
C - - - - - 0x01ED96 07:ED86: 4C 21 EE  JMP loc_EE21_nmi_select_character   ;

bra_ED89_next_check:
C - - - - - 0x01ED99 07:ED89: 20 B3 C9  JSR sub_C9B3_prepare_inventory_ppu_cache ;
@bra_ED8C_wait:
C - - - - - 0x01ED9C 07:ED8C: 2C 02 20  BIT PPU_STATUS                           ;
C - - - - - 0x01ED9F 07:ED8F: 70 FB     BVS @bra_ED8C_wait                       ; checking a sprite 0 hits
@bra_ED91_wait:
C - - - - - 0x01EDA1 07:ED91: 2C 02 20  BIT PPU_STATUS                           ;
C - - - - - 0x01EDA4 07:ED94: 50 FB     BVC @bra_ED91_wait                       ; checking a sprite 0 hits
C - - - - - 0x01EDA6 07:ED96: 20 F5 C4  JSR sub_C4F5_selectAllChrBanks           ;
C - - - - - 0x01EDA9 07:ED99: 20 C6 C3  JSR sub_C3C6_update_ppu_params_          ;
C - - - - - 0x01EDAC 07:ED9C: A5 19     LDA vRenderActive                        ;
C - - - - - 0x01EDAE 07:ED9E: D0 68     BNE bra_EE08_skip                        ; Branch If the render isn't activated
C - - - - - 0x01EDB0 07:EDA0: E6 19     INC vRenderActive                        ; Making rendering temporarily deactivate
C - - - - - 0x01EDB2 07:EDA2: 24 3B     BIT vSharedGameStatus                    ;
C - - - - - 0x01EDB4 07:EDA4: 70 35     BVS bra_EDDB_pause                       ; If status is 'Pause in the game'
C - - - - - 0x01EDB6 07:EDA6: A5 3B     LDA vSharedGameStatus                    ;
C - - - - - 0x01EDB8 07:EDA8: 29 20     AND #$20                                 ; CONSTANT - status 'Not used'
C - - - - - 0x01EDBA 07:EDAA: D0 69     BNE bra_EE15_skip                        ; !(WHY?), it will never follow this branch
C - - - - - 0x01EDBC 07:EDAC: 20 58 C3  JSR sub_C358_clear_OAM                   ;
C - - - - - 0x01EDBF 07:EDAF: 20 13 CE  JSR sub_CE13_set_sprite_zero_hits        ;
C - - - - - 0x01EDC2 07:EDB2: 20 F4 DA  JSR sub_DAF4_character_subroutine        ;
C - - - - - 0x01EDC5 07:EDB5: A5 3B     LDA vSharedGameStatus                    ;
C - - - - - 0x01EDC7 07:EDB7: C9 0B     CMP #$0B                                 ; CONSTANT - 'A final scene'
C - - - - - 0x01EDC9 07:EDB9: F0 54     BEQ bra_EE0F_nmi_last_cutscene           ; If vSharedGameStatus == 0x0B
C - - - - - 0x01EDCB 07:EDBB: 20 A9 F0  JSR sub_F0A9_enemy_subroutine            ;
C - - - - - 0x01EDCE 07:EDBE: 20 53 EE  JSR sub_EE53_enemies_subroutine          ;
C - - - - - 0x01EDD1 07:EDC1: A5 3B     LDA vSharedGameStatus                    ;
C - - - - - 0x01EDD3 07:EDC3: 6A        ROR                                      ;
C - - - - - 0x01EDD4 07:EDC4: B0 55     BCS bra_EE1B_skip                        ; Branch if 'A screen with the message'
C - - - - - 0x01EDD6 07:EDC6: 20 9A B0  JSR sub_B09A_try_to_create_item          ; to bank 06_2
C - - - - - 0x01EDD9 07:EDC9: 20 4D AF  JSR sub_AF4D_briefcase_or_item_handler   ; to bank 06_2
C - - - - - 0x01EDDC 07:EDCC: 20 8C CB  JSR sub_CB8C_render_frame_current_item   ;
C - - - - - 0x01EDDF 07:EDCF: 20 D9 CB  JSR sub_CBD9_try_use_current_item        ;
C - - - - - 0x01EDE2 07:EDD2: 20 5F CD  JSR sub_CD5F_try_reset_goggles           ;
loc_EDD5_nmi_skip:
C D 3 - - - 0x01EDE5 07:EDD5: 20 7B EF  JSR sub_EF7B_shift_all_counters          ;
C - - - - - 0x01EDE8 07:EDD8: 4C E1 ED  JMP loc_EDE1_nmi_skip                    ;

bra_EDDB_pause:
C - - - - - 0x01EDEB 07:EDDB: 20 86 EF  JSR sub_EF86_increment_counter        ;
C - - - - - 0x01EDEE 07:EDDE: 20 38 CB  JSR sub_CB38_pause_handler            ;
loc_EDE1_nmi_skip:
C D 3 - - - 0x01EDF1 07:EDE1: 20 6C C4  JSR sub_C46C_simulate_presses_in_demo ;
C - - - - - 0x01EDF4 07:EDE4: 20 85 C8  JSR sub_C885_try_interrupt_mode       ;
loc_EDE7_nmi_prefinish:
C D 3 - - - 0x01EDF7 07:EDE7: A6 44     LDX vCurrentNumberSpriteAfCh          ;
C - - - - - 0x01EDF9 07:EDE9: 86 43     STX vCurrentNumberSprite              ; restore last sprite number received after character rendering
C - - - - - 0x01EDFB 07:EDEB: 20 F9 CE  JSR sub_CEF9_display_16_sprite_magic  ;
C - - - - - 0x01EDFE 07:EDEE: A9 07     LDA #$07                              ;
C - - - - - 0x01EE00 07:EDF0: A2 04     LDX #$04                              ; 
C - - - - - 0x01EE02 07:EDF2: 8D 00 80  STA MMC3_Bank_select                  ;
C - - - - - 0x01EE05 07:EDF5: 8E 01 80  STX MMC3_Bank_data                    ; switch bank 02 (page 1) in 0xA000-0BFFF
C - - - - - 0x01EE08 07:EDF8: 20 F0 FF  JSR sub_FFF0_update_sounds            ;
C - - - - - 0x01EE0B 07:EDFB: 20 1A EF  JSR sub_EF1A_switch_bank_06_2         ;
C - - - - - 0x01EE0E 07:EDFE: A9 00     LDA #$00                              ; CONSTANT - active
C - - - - - 0x01EE10 07:EE00: 85 19     STA vRenderActive                     ;
bra_EE02_nmi_finish:
C - - - - - 0x01EE12 07:EE02: 68        PLA                                   ;
C - - - - - 0x01EE13 07:EE03: A8        TAY                                   ; retrieve y
C - - - - - 0x01EE14 07:EE04: 68        PLA                                   ;
C - - - - - 0x01EE15 07:EE05: AA        TAX                                   ; retrieve x
C - - - - - 0x01EE16 07:EE06: 68        PLA                                   ; retrieve a
vec_C000_IRQ:
C - - - - - 0x01EE17 07:EE07: 40        RTI                                   ; irq

bra_EE08_skip:
C - - - - - 0x01EE18 07:EE08: A9 07     LDA #$07                      ;
C - - - - - 0x01EE1A 07:EE0A: 8D 00 80  STA MMC3_Bank_select          ; switch by MMC3_Bank_data in 0xA000-0BFFF
C - - - - - 0x01EE1D 07:EE0D: D0 F3     BNE bra_EE02_nmi_finish       ; Always true

bra_EE0F_nmi_last_cutscene:
C - - - - - 0x01EE1F 07:EE0F: 20 FE B5  JSR sub_B5FE_final_scene_handler       ;
C - - - - - 0x01EE22 07:EE12: 20 6C C4  JSR sub_C46C_simulate_presses_in_demo  ;
bra_EE15_skip:
C - - - - - 0x01EE25 07:EE15: 20 7B EF  JSR sub_EF7B_shift_all_counters        ;
C - - - - - 0x01EE28 07:EE18: 4C E7 ED  JMP loc_EDE7_nmi_prefinish             ;

bra_EE1B_skip:
C - - - - - 0x01EE2B 07:EE1B: 20 AA B3  JSR sub_B3AA_room_with_NPC_or_prisoner ;
C - - - - - 0x01EE2E 07:EE1E: 4C D5 ED  JMP loc_EDD5_nmi_skip                  ;

loc_EE21_nmi_select_character:
C D 3 - - - 0x01EE31 07:EE21: A5 19     LDA vRenderActive                        ;
C - - - - - 0x01EE33 07:EE23: D0 E3     BNE bra_EE08_skip                        ; Branch If the render isn't activated
C - - - - - 0x01EE35 07:EE25: 20 58 C3  JSR sub_C358_clear_OAM                   ;
C - - - - - 0x01EE38 07:EE28: 20 8E C7  JSR sub_C78E_select_character_subroutine ;
C - - - - - 0x01EE3B 07:EE2B: 20 6C C4  JSR sub_C46C_simulate_presses_in_demo    ;
C - - - - - 0x01EE3E 07:EE2E: 20 86 EF  JSR sub_EF86_increment_counter           ;
C - - - - - 0x01EE41 07:EE31: 4C E7 ED  JMP loc_EDE7_nmi_prefinish               ;

loc_EE34_nmi_main_menu:
C D 3 - - - 0x01EE44 07:EE34: 20 58 C3  JSR sub_C358_clear_OAM                ;
C - - - - - 0x01EE47 07:EE37: A5 3B     LDA vSharedGameStatus                 ;
C - - - - - 0x01EE49 07:EE39: C9 91     CMP #$91                              ; CONSTANT - First cutscene with Clarisse Cagliostro
C - - - - - 0x01EE4B 07:EE3B: F0 10     BEQ bra_EE4D_nmi_first_cutscene       ; If Register A == 0x91
C - - - - - 0x01EE4D 07:EE3D: C9 93     CMP #$93                              ; CONSTANT - Last cutscene with Clarisse Cagliostro
C - - - - - 0x01EE4F 07:EE3F: F0 CE     BEQ bra_EE0F_nmi_last_cutscene        ; If Register A == 0x93
C - - - - - 0x01EE51 07:EE41: 20 69 C5  JSR sub_C569_main_menu_subroutine     ;
C - - - - - 0x01EE54 07:EE44: 20 7B EF  JSR sub_EF7B_shift_all_counters       ;
C - - - - - 0x01EE57 07:EE47: 20 6C C4  JSR sub_C46C_simulate_presses_in_demo ;
C - - - - - 0x01EE5A 07:EE4A: 4C E7 ED  JMP loc_EDE7_nmi_prefinish            ;

bra_EE4D_nmi_first_cutscene:
C - - - - - 0x01EE5D 07:EE4D: 20 3C C5  JSR sub_C53C_resolve_start_status ;
C - - - - - 0x01EE60 07:EE50: 4C D5 ED  JMP loc_EDD5_nmi_skip             ;

sub_EE53_enemies_subroutine:
C - - - - - 0x01EE63 07:EE53: 20 69 EF  JSR sub_EF69_bomb_handler  ;
C - - - - - 0x01EE66 07:EE56: A2 00     LDX #$00                   ; assign type A
C - - - - - 0x01EE68 07:EE58: 20 5D EE  JSR sub_EE5D_enemy_handler ;
C - - - - - 0x01EE6B 07:EE5B: A2 01     LDX #$01                   ; assign type B
; In: Register x - 0x00 - enemy type A, 0x01 - enemy type B
sub_EE5D_enemy_handler:
C - - - - - 0x01EE6D 07:EE5D: BD 00 03  LDA vEnemies,X             ;
C - - - - - 0x01EE70 07:EE60: 0A        ASL                        ; *2, because the address has 2 bytes
C - - - - - 0x01EE71 07:EE61: A8        TAY                        ;
C - - - - - 0x01EE72 07:EE62: B9 BA FC  LDA tbl_FCBA_enemies,Y     ;
C - - - - - 0x01EE75 07:EE65: 85 00     STA ram_0000               ; Low address
C - - - - - 0x01EE77 07:EE67: B9 BB FC  LDA tbl_FCBA_enemies + 1,Y ;
C - - - - - 0x01EE7A 07:EE6A: 85 01     STA ram_0001               ; High address
C - - - - - 0x01EE7C 07:EE6C: 6C 00 00  JMP (ram_0000)             ;

loc_EE6F_land_diver_enemy:
C - - J - - 0x01EE7F 07:EE6F: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EE82 07:EE72: 20 00 A0  JSR sub_A000_land_diver_enemy   ; basic mechanics of enemy behavior
C - - - - - 0x01EE85 07:EE75: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EE78_soar_enemy:
C - - J - - 0x01EE88 07:EE78: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EE8B 07:EE7B: 20 03 A0  JSR sub_A003_soar_enemy         ; basic mechanics of enemy behavior
C - - - - - 0x01EE8E 07:EE7E: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EE81_barrel_or_stone:
C - - J - - 0x01EE91 07:EE81: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EE94 07:EE84: 20 06 A0  JSR sub_A006_barrel_or_stone    ; basic mechanics of enemy behavior
C - - - - - 0x01EE97 07:EE87: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EE8A_bazooka_man:
C - - J - - 0x01EE9A 07:EE8A: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EE9D 07:EE8D: 20 09 A0  JSR sub_A009_bazooka_man        ; basic mechanics of enemy behavior
C - - - - - 0x01EEA0 07:EE90: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EE93_sensor:
C - - J - - 0x01EEA3 07:EE93: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EEA6 07:EE96: 20 0C A0  JSR sub_A00C_sensor             ; to sub_A00C
C - - - - - 0x01EEA9 07:EE99: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EE9C_diver:
C - - J - - 0x01EEAC 07:EE9C: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EEAF 07:EE9F: 20 0F A0  JSR sub_A00F_diver              ; to sub_A00F
C - - - - - 0x01EEB2 07:EEA2: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEA5_fly_man:
C - - J - - 0x01EEB5 07:EEA5: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EEB8 07:EEA8: 20 12 A0  JSR sub_A012_fly_man            ; basic mechanics of enemy behavior
C - - - - - 0x01EEBB 07:EEAB: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEAE_shooter:
C - - J - - 0x01EEBE 07:EEAE: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EEC1 07:EEB1: 20 15 A0  JSR sub_A015_shooter            ; basic mechanics of enemy behavior
C - - - - - 0x01EEC4 07:EEB4: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEB7_Zenigata:
C - - J - - 0x01EEC7 07:EEB7: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EECA 07:EEBA: 20 18 A0  JSR sub_A018_Zenigata           ; basic mechanics of enemy behavior
C - - - - - 0x01EECD 07:EEBD: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEC0_fat_sailor:
C - - J - - 0x01EED0 07:EEC0: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EED3 07:EEC3: 20 1B A0  JSR sub_A01B_fat_sailor         ; basic mechanics of enemy behavior
C - - - - - 0x01EED6 07:EEC6: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEC9_blade_trap:
C - - J - - 0x01EED9 07:EEC9: 20 25 EF  JSR sub_EF25_switch_bank_06_1   ;
C - - - - - 0x01EEDC 07:EECC: 20 1E A0  JSR sub_A01E_blade_trap         ; basic mechanics of enemy behavior
C - - - - - 0x01EEDF 07:EECF: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_boss_hulk:
C - - J - - 0x01EEE2 07:EED2: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EEE5 07:EED5: 20 00 A0  JSR sub_A000_boss1              ; basic mechanics of enemy behavior
C - - - - - 0x01EEE8 07:EED8: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_boss_kim:
C - - J - - 0x01EEEB 07:EEDB: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EEEE 07:EEDE: 20 03 A0  JSR sub_A003_boss2              ; basic mechanics of enemy behavior
C - - - - - 0x01EEF1 07:EEE1: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_boss_raid:
C - - J - - 0x01EEF4 07:EEE4: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EEF7 07:EEE7: 20 06 A0  JSR sub_A006_boss3              ; basic mechanics of enemy behavior
C - - - - - 0x01EEFA 07:EEEA: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_final_boss:
C - - J - - 0x01EEFD 07:EEED: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EF00 07:EEF0: 20 09 A0  JSR sub_A009_boss4              ; basic mechanics of enemy behavior
C - - - - - 0x01EF03 07:EEF3: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEF6_undead:
C - - J - - 0x01EF06 07:EEF6: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EF09 07:EEF9: 20 0C A0  JSR sub_A00C_undead             ; basic mechanics of enemy behavior
C - - - - - 0x01EF0C 07:EEFC: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EEFF_swordtail:
C - - J - - 0x01EF0F 07:EEFF: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EF12 07:EF02: 20 0F A0  JSR sub_A00F_swordtail          ; basic mechanics of enemy behavior
C - - - - - 0x01EF15 07:EF05: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EF08_knight:
C - - J - - 0x01EF18 07:EF08: 20 30 EF  JSR sub_EF30_switch_bank_3_p2   ;
C - - - - - 0x01EF1B 07:EF0B: 20 12 A0  JSR sub_A012_knight             ; basic mechanics of enemy behavior
C - - - - - 0x01EF1E 07:EF0E: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2   ; restore bank 06, page 2

loc_EF11_cat_or_snake:
C - - J - - 0x01EF21 07:EF11: 20 30 EF  JSR sub_EF30_switch_bank_3_p2    ;
C - - - - - 0x01EF24 07:EF14: 20 15 A0  JSR sub_A015_cat_or_snake_enemy  ; basic mechanics of enemy behavior 
C - - - - - 0x01EF27 07:EF17: 4C 1A EF  JMP loc_EF1A_switch_bank_06_2    ; restore bank 06, page 2

sub_EF1A_switch_bank_06_2:
loc_EF1A_switch_bank_06_2:
C D 3 - - - 0x01EF2A 07:EF1A: A9 07     LDA #$07              ;
C - - - - - 0x01EF2C 07:EF1C: 8D 00 80  STA MMC3_Bank_select  ;
C - - - - - 0x01EF2F 07:EF1F: A9 0D     LDA #$0D              ;
C - - - - - 0x01EF31 07:EF21: 8D 01 80  STA MMC3_Bank_data    ; switch bank 06_2 in $A000-$BFFF
C - - - - - 0x01EF34 07:EF24: 60        RTS                   ;

sub_EF25_switch_bank_06_1:
C - - - - - 0x01EF35 07:EF25: A9 07     LDA #$07             ;
C - - - - - 0x01EF37 07:EF27: 8D 00 80  STA MMC3_Bank_select ;
C - - - - - 0x01EF3A 07:EF2A: A9 0C     LDA #$0C             ;
C - - - - - 0x01EF3C 07:EF2C: 8D 01 80  STA MMC3_Bank_data   ; switch bank 06_1 in $A000-$BFFF
C - - - - - 0x01EF3F 07:EF2F: 60        RTS                  ;

sub_EF30_switch_bank_3_p2:
C - - - - - 0x01EF40 07:EF30: A9 07     LDA #$07             ;
C - - - - - 0x01EF42 07:EF32: 8D 00 80  STA MMC3_Bank_select ;
C - - - - - 0x01EF45 07:EF35: A9 07     LDA #$07             ;
C - - - - - 0x01EF47 07:EF37: 8D 01 80  STA MMC3_Bank_data   ; switch bank 03 (page 2) in $A000-$BFFF
C - - - - - 0x01EF4A 07:EF3A: 60        RTS                  ;

sub_EF3B_switch_bank_2_p1:
C - - - - - 0x01EF4B 07:EF3B: A9 06     LDA #$06             ;
C - - - - - 0x01EF4D 07:EF3D: 8D 00 80  STA MMC3_Bank_select ;
C - - - - - 0x01EF50 07:EF40: A9 04     LDA #$04             ; 
C - - - - - 0x01EF52 07:EF42: 8D 01 80  STA MMC3_Bank_data   ; switch bank 02 (page 1) in $8000-$9FFF
C - - - - - 0x01EF55 07:EF45: 60        RTS                  ;

sub_EF46_switch_bank_4_p1:
C - - - - - 0x01EF56 07:EF46: A9 06     LDA #$06               ;
C - - - - - 0x01EF58 07:EF48: 8D 00 80  STA MMC3_Bank_select   ;
C - - - - - 0x01EF5B 07:EF4B: A9 08     LDA #$08               ; 
C - - - - - 0x01EF5D 07:EF4D: D0 07     BNE bra_EF56_on_page1  ; If Register A != 0x00
loc_EF4F_switch_bank_4_p2:
sub_EF4F_switch_bank_4_p2:
C D 3 - - - 0x01EF5F 07:EF4F: A9 06     LDA #$06               ;
C - - - - - 0x01EF61 07:EF51: 8D 00 80  STA MMC3_Bank_select   ;
C - - - - - 0x01EF64 07:EF54: A9 09     LDA #$09               ;
bra_EF56_on_page1:
C - - - - - 0x01EF66 07:EF56: 8D 01 80  STA MMC3_Bank_data     ; switch bank 04 (page 1 or 2) in $8000-$9FFF
C - - - - - 0x01EF69 07:EF59: 8D B5 06  STA vBankData          ; assign 0x08 or 0x09
C - - - - - 0x01EF6C 07:EF5C: 60        RTS                    ;

sub_EF5D_switch_variable_bank:
loc_EF5D_switch_variable_bank:
C D 3 - - - 0x01EF6D 07:EF5D: A9 06     LDA #$06             ;
C - - - - - 0x01EF6F 07:EF5F: 8D 00 80  STA MMC3_Bank_select ;
C - - - - - 0x01EF72 07:EF62: AD B5 06  LDA vBankData        ;
C - - - - - 0x01EF75 07:EF65: 8D 01 80  STA MMC3_Bank_data   ; switch vBankData (PRG) in $8000-$9FFF
C - - - - - 0x01EF78 07:EF68: 60        RTS                  ;

sub_EF69_bomb_handler:
C - - - - - 0x01EF79 07:EF69: A2 00     LDX #$00                     ; CONSTANT - an index for the bomb
C - - - - - 0x01EF7B 07:EF6B: AD 9E 03  LDA vBombStatus              ;
C - - - - - 0x01EF7E 07:EF6E: 10 0A     BPL bra_EF7A_RTS             ; If the status isn't used
C - - - - - 0x01EF80 07:EF70: AD 98 03  LDA vBombOnScreen            ;
C - - - - - 0x01EF83 07:EF73: C9 01     CMP #$01                     ; CONSTANT - the bomb is on the screen
C - - - - - 0x01EF85 07:EF75: D0 03     BNE bra_EF7A_RTS             ; If the bomb isn't on the screen
C - - - - - 0x01EF87 07:EF77: 4C 38 DA  JMP loc_DA38_status_behavior ;

bra_EF7A_RTS:
C - - - - - 0x01EF8A 07:EF7A: 60        RTS                          ;

sub_EF7B_shift_all_counters:
C - - - - - 0x01EF8B 07:EF7B: A2 04     LDX #$04                ; set loop counter (5 times)
@bra_EF7D_loop:                                                 ; loop by x
C - - - - - 0x01EF8D 07:EF7D: B5 2E     LDA vGameCounters,X     ;
C - - - - - 0x01EF8F 07:EF7F: F0 02     BEQ @bra_EF83_skip      ; If counterX == 0x00
C - - - - - 0x01EF91 07:EF81: D6 2E     DEC vGameCounters,X     ;
@bra_EF83_skip:
C - - - - - 0x01EF93 07:EF83: CA        DEX                     ; decrement x
C - - - - - 0x01EF94 07:EF84: 10 F7     BPL @bra_EF7D_loop      ; If Register X < 0x80
sub_EF86_increment_counter:                                     
C - - - - - 0x01EF96 07:EF86: E6 2C     INC vLowCounter       ;
C - - - - - 0x01EF98 07:EF88: D0 02     BNE @bra_EF8C_RTS       ; If vLowCounter != 0
C - - - - - 0x01EF9A 07:EF8A: E6 2D     INC v_high_counter      ;
@bra_EF8C_RTS:                                                  
C - - - - - 0x01EF9C 07:EF8C: 60        RTS                     ;

sub_EF8D_clear_Zenigata_timer:
C - - - - - 0x01EF9D 07:EF8D: A9 00     LDA #$00                 ; a clear value
C - - - - - 0x01EF9F 07:EF8F: 8D 16 03  STA vZenigataTimerLow1   ;
C - - - - - 0x01EFA2 07:EF92: 8D 17 03  STA vZenigataTimerHigh1  ;
C - - - - - 0x01EFA5 07:EF95: 60        RTS                      ;

sub_EF96_initialize:
C - - - - - 0x01EFA6 07:EF96: A9 00     LDA #$00                                    ; a clear value
C - - - - - 0x01EFA8 07:EF98: A2 09     LDX #$09                                    ; set loop counter
@bra_clear_loop:                                                                    ; loop by x (10 times)
C - - - - - 0x01EFAA 07:EF9A: 9D 00 02  STA v_items,X                               ; 0x0200-0x0209 in 0
C - - - - - 0x01EFAD 07:EF9D: CA        DEX                                         ; decrements loop counter
C - - - - - 0x01EFAE 07:EF9E: 10 FA     BPL @bra_clear_loop                         ; If Register X < 0x80
C - - - - - 0x01EFB0 07:EFA0: A9 00     LDA #$00                                    ;
C - - - - - 0x01EFB2 07:EFA2: 8D 14 02  STA vCurrentWeaponStatus                    ; clear
sub_EFA5_initialize_without_items:
C - - - - - 0x01EFB5 07:EFA5: 20 8D EF  JSR sub_EF8D_clear_Zenigata_timer           ;
C - - - - - 0x01EFB8 07:EFA8: 85 60     STA vRoomWithPrisoner1                      ; clear
C - - - - - 0x01EFBA 07:EFAA: 85 61     STA vRoomWithPrisoner2                      ; clear
C - - - - - 0x01EFBC 07:EFAC: A2 0F     LDX #$0F                                    ; set loop counter
@bra_EFAE_loop:                                                                     ; loop by x (16 times)
C - - - - - 0x01EFBE 07:EFAE: 9D C0 05  STA vWalls,X                                ; clear, the walls are destructible again
C - - - - - 0x01EFC1 07:EFB1: CA        DEX                                         ; decrement loop counter
C - - - - - 0x01EFC2 07:EFB2: 10 FA     BPL @bra_EFAE_loop                          ; If Register X >= 0x00
C - - - - - 0x01EFC4 07:EFB4: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2               ;
C - - - - - 0x01EFC7 07:EFB7: A5 5E     LDA vNoLevel                                ;
C - - - - - 0x01EFC9 07:EFB9: 85 00     STA ram_0000                                ;
C - - - - - 0x01EFCB 07:EFBB: 0A        ASL                                         ;
C - - - - - 0x01EFCC 07:EFBC: 18        CLC                                         ;
C - - - - - 0x01EFCD 07:EFBD: 65 00     ADC ram_0000                                ; A <~ vNoLevel * 3, because the offset is 3 bytes
C - - - - - 0x01EFCF 07:EFBF: AA        TAX                                         ;
; Fill memory the rooms from ROM (Register X - level number)
C - - - - - 0x01EFD0 07:EFC0: BC 16 81  LDY loc_number_of_rooms_on_the_level,X      ; set loop counter, Y <~ the number of the rooms
C - - - - - 0x01EFD3 07:EFC3: BD 17 81  LDA tbl_ptr_rooms_on_the_level,X            ;
C - - - - - 0x01EFD6 07:EFC6: 85 12     STA $0012                                   ; Low address
C - - - - - 0x01EFD8 07:EFC8: BD 18 81  LDA tbl_ptr_rooms_on_the_level + 1,X        ;
C - - - - - 0x01EFDB 07:EFCB: 85 13     STA $0013                                   ; High address
@bra_room_loop:                                                                     ; loop by y
C - - - - - 0x01EFDD 07:EFCD: B1 12     LDA ($0012),Y                               ;
C - - - - - 0x01EFDF 07:EFCF: 99 00 05  STA vRooms,Y                                ; <~ attributes (see vRoomAttrubute)
C - - - - - 0x01EFE2 07:EFD2: 88        DEY                                         ; decrements loop counter
C - - - - - 0x01EFE3 07:EFD3: D0 F8     BNE @bra_room_loop                          ; If Register Y != 0
 ; Fill memory the white briefcases from ROM  (Register X - level number)
C - - - - - 0x01EFE5 07:EFD5: BC 22 81  LDY loc_number_of_briefcases_on_the_level,X ; set loop counter, Y <~ the number of the briefcase
C - - - - - 0x01EFE8 07:EFD8: BD 23 81  LDA tbl_ptr_briefcases_on_the_level,X       ;
C - - - - - 0x01EFEB 07:EFDB: 85 12     STA $0012                                   ; Low address
C - - - - - 0x01EFED 07:EFDD: BD 24 81  LDA tbl_ptr_briefcases_on_the_level + 1,X   ;
C - - - - - 0x01EFF0 07:EFE0: 85 13     STA $0013                                   ; High address
@bra_briefcase_loop:                                                                ; loop by y
C - - - - - 0x01EFF2 07:EFE2: B1 12     LDA ($0012),Y                               ;
C - - - - - 0x01EFF4 07:EFE4: 99 19 02  STA vArrayWhiteBriefcase,Y                  ; a briefcase ROM-value
C - - - - - 0x01EFF7 07:EFE7: 88        DEY                                         ; decrements loop counter
C - - - - - 0x01EFF8 07:EFE8: D0 F8     BNE @bra_briefcase_loop                     ; If Register Y != 0
C - - - - - 0x01EFFA 07:EFEA: 20 46 EF  JSR sub_EF46_switch_bank_4_p1               ;
C - - - - - 0x01EFFD 07:EFED: A5 5E     LDA vNoLevel                                ;
C - - - - - 0x01EFFF 07:EFEF: 0A        ASL                                         ; *2, because RAM address contains 2 bytes
C - - - - - 0x01F000 07:EFF0: AA        TAX                                         ;
C - - - - - 0x01F001 07:EFF1: BD B6 85  LDA tbl_ptr_checkpoints_on_the_level,X      ;
C - - - - - 0x01F004 07:EFF4: 85 BA     STA vCheckpointAddr                         ;
C - - - - - 0x01F006 07:EFF6: BD B7 85  LDA tbl_ptr_checkpoints_on_the_level + 1,X  ;
C - - - - - 0x01F009 07:EFF9: 85 BB     STA vHignCheckpointAddr                     ;
C - - - - - 0x01F00B 07:EFFB: 60        RTS                                         ;

sub_EFFC_after_select_character:
C - - - - - 0x01F00C 07:EFFC: A2 09     LDX #$09                            ; set loop counter
C - - - - - 0x01F00E 07:EFFE: A9 00     LDA #$00                            ; set assigning value
@bra_F000_loop:                                                             ; loop by x (10 times)
C - - - - - 0x01F010 07:F000: 9D 0A 02  STA v_items + 10,X                  ; clear items
C - - - - - 0x01F013 07:F003: CA        DEX                                 ; decrements loop counter
C - - - - - 0x01F014 07:F004: 10 FA     BPL @bra_F000_loop                  ; If Register X < 0x80
C - - - - - 0x01F016 07:F006: A2 05     LDX #$05                            ; set loop counter
bra_F008_loop:                                                              ; loop by x (6 times)
C - - - - - 0x01F018 07:F008: A4 3C     LDY vGameLocks                      ;
C - - - - - 0x01F01A 07:F00A: 10 0C     BPL @bra_F018_clear_enemy           ; If lock 'Select a character' doesn't exist
C - - - - - 0x01F01C 07:F00C: AC 00 03  LDY vEnemyA                         ;
C - - - - - 0x01F01F 07:F00F: C0 0C     CPY #$0C                            ; CONSTANT - The lift
C - - - - - 0x01F021 07:F011: F0 10     BEQ @bra_F023_next_enemies          ; If vEnemyA == 0x0C
C - - - - - 0x01F023 07:F013: 20 28 FC  JSR sub_FC28_in_room_with_boss      ;
C - - - - - 0x01F026 07:F016: B0 0B     BCS @bra_F023_next_enemies          ; If the current room is the room with boss
@bra_F018_clear_enemy:
C - - - - - 0x01F028 07:F018: A9 00     LDA #$00                            ;
C - - - - - 0x01F02A 07:F01A: 8D 0A 03  STA vEnemyACount                    ; clear
C - - - - - 0x01F02D 07:F01D: 8D 00 03  STA vEnemyA                         ; clear
C - - - - - 0x01F030 07:F020: 9D 20 03  STA vEnemyAStatus,X                 ; clear
@bra_F023_next_enemies:
C - - - - - 0x01F033 07:F023: A4 3C     LDY vGameLocks                      ;
C - - - - - 0x01F035 07:F025: 10 0B     BPL bra_F032_clear_enemy            ; If lock 'Select a character' doesn't exist
C - - - - - 0x01F037 07:F027: AC 01 03  LDY vEnemyB                         ;
C - - - - - 0x01F03A 07:F02A: C0 30     CPY #$30                            ; CONSTANT - The wall
C - - - - - 0x01F03C 07:F02C: 90 04     BCC bra_F032_clear_enemy            ; If vEnemyB < 0x30
C - - - - - 0x01F03E 07:F02E: C0 33     CPY #$33                            ; CONSTANT - Blade trap
C - - - - - 0x01F040 07:F030: 90 0B     BCC bra_F03D_skip                   ; If vEnemyB < 0x33
bra_F032_clear_enemy:
C - - - - - 0x01F042 07:F032: A9 00     LDA #$00                            ;
C - - - - - 0x01F044 07:F034: 9D 5C 03  STA vEnemyBStatus,X                 ; clear
C - - - - - 0x01F047 07:F037: 8D 0B 03  STA vEnemyBCount                    ; clear
C - - - - - 0x01F04A 07:F03A: 8D 01 03  STA vEnemyB                         ; clear
bra_F03D_skip:
C - - - - - 0x01F04D 07:F03D: CA        DEX                                 ; decrements loop counter
C - - - - - 0x01F04E 07:F03E: 10 C8     BPL bra_F008_loop                   ; If Register X < 0x80 (a loop condition)
C - - - - - 0x01F050 07:F040: A5 3C     LDA vGameLocks                      ;
C - - - - - 0x01F052 07:F042: 09 40     ORA #$40                            ; CONSTANT - the process, after 'Select a character', but before the game itself
C - - - - - 0x01F054 07:F044: 85 3C     STA vGameLocks                      ;
C - - - - - 0x01F056 07:F046: A9 00     LDA #$00                            ; set assigning value
C - - - - - 0x01F058 07:F048: A2 05     LDX #$05                            ; set loop counter
@bra_F04A_clear_loop:                                                       ; loop by x (5 times)
C - - - - - 0x01F05A 07:F04A: 9D 9E 03  STA vItemStatus,X                   ; clear
C - - - - - 0x01F05D 07:F04D: CA        DEX                                 ; decrements loop counter
C - - - - - 0x01F05E 07:F04E: 10 FA     BPL @bra_F04A_clear_loop            ; If Register X < 0x80 (a loop condition)
C - - - - - 0x01F060 07:F050: 8D D4 03  STA vBubbleStatus                   ; clears a status for 1st bubble
C - - - - - 0x01F063 07:F053: 8D D5 03  STA vBubbleStatus + 1               ; clears a status for 2nd bubble
C - - - - - 0x01F066 07:F056: 8D D6 03  STA vBubbleStatus + 2               ; clears a status for 3rd bubble
C - - - - - 0x01F069 07:F059: 85 D1     STA vGogglesActive                  ; reset the infrared goggles
C - - - - - 0x01F06B 07:F05B: A2 03     LDX #$03                            ; set loop counter
@bra_F05D_loop:                                                             ; loop by x (4 times)
C - - - - - 0x01F06D 07:F05D: 9D 18 03  STA vEnemyAAppearTimerHigh1,X       ; reset the counters
C - - - - - 0x01F070 07:F060: 9D 1C 03  STA vEnemyAAppearTimerHigh2,X       ; reset the counters
C - - - - - 0x01F073 07:F063: 9D 15 02  STA vApparatusLowCounter,X          ; clear
C - - - - - 0x01F076 07:F066: CA        DEX                                 ; decrements loop counter
C - - - - - 0x01F077 07:F067: 10 F4     BPL @bra_F05D_loop                  ; If Register X < 0x80 (a loop condition)
C - - - - - 0x01F079 07:F069: 20 75 F0  JSR sub_F075_clear_bullet_statuses  ;
C - - - - - 0x01F07C 07:F06C: A9 00     LDA #$00                            ;
C - - - - - 0x01F07E 07:F06E: 8D 14 03  STA vEnemyTimerLow1                 ; clear a low part
C - - - - - 0x01F081 07:F071: 8D 15 03  STA vEnemyTimerHigh1                ; clear a high part
C - - - - - 0x01F084 07:F074: 60        RTS                                 ;

sub_F075_clear_bullet_statuses:
C - - - - - 0x01F085 07:F075: A9 00     LDA #$00            ;
C - - - - - 0x01F087 07:F077: A2 04     LDX #$04            ; set loop counter
@bra_F079_loop:                                             ; loop by x
C - - - - - 0x01F089 07:F079: 95 8F     STA vBulletStatus,X ;
C - - - - - 0x01F08B 07:F07B: CA        DEX                 ; decrement x
C - - - - - 0x01F08C 07:F07C: 10 FB     BPL @bra_F079_loop  ; If Register A < 0x80
C - - - - - 0x01F08E 07:F07E: 60        RTS                 ;

sub_F07F_prepare_enemy_subroutine:
C - - - - - 0x01F08F 07:F07F: A5 6D     LDA vMovableChrStatus           ;
C - - - - - 0x01F091 07:F081: 30 25     BMI bra_F0A8_RTS                ; If 'the character is moving in the water'
C - - - - - 0x01F093 07:F083: A2 00     LDX #$00                        ; a new starting value
C - - - - - 0x01F095 07:F085: A5 6C     LDA vChrStatus                  ;
C - - - - - 0x01F097 07:F087: 6A        ROR                             ;
C - - - - - 0x01F098 07:F088: 90 02     BCC @bra_F08C_skip              ; If the character is looking to the right
C - - - - - 0x01F09A 07:F08A: A2 02     LDX #$02                        ; a new starting value
@bra_F08C_skip:
C - - - - - 0x01F09C 07:F08C: 86 2C     STX vLowCounter                 ; reset a counter
C - - - - - 0x01F09E 07:F08E: 20 B2 F2  JSR sub_F2B2_try_generate_enemy ;
C - - - - - 0x01F0A1 07:F091: 90 15     BCC bra_F0A8_RTS                ; If the generation is failed
C - - - - - 0x01F0A3 07:F093: A5 0A     LDA ram_000A                    ; type of an enemy
C - - - - - 0x01F0A5 07:F095: C9 0C     CMP #$0C                        ; CONSTANT - The lift
C - - - - - 0x01F0A7 07:F097: F0 1F     BEQ bra_F0B8_skip               ; If enemy == 0x30
C - - - - - 0x01F0A9 07:F099: C9 30     CMP #$30                        ; CONSTANT - The wall
C - - - - - 0x01F0AB 07:F09B: 90 0B     BCC bra_F0A8_RTS                ; If enemy < 0x30
C - - - - - 0x01F0AD 07:F09D: C9 33     CMP #$33                        ; CONSTANT - Blade trap
C - - - - - 0x01F0AF 07:F09F: B0 07     BCS bra_F0A8_RTS                ; If enemy >= 0x30
C - - - - - 0x01F0B1 07:F0A1: A9 18     LDA #$18                        ; CONSTANT for CHR ROM
C - - - - - 0x01F0B3 07:F0A3: 8D B4 06  STA vCacheChrBankSelect + 5     ;
C - - - - - 0x01F0B6 07:F0A6: D0 10     BNE bra_F0B8_skip               ; Always true

bra_F0A8_RTS:
C - - - - - 0x01F0B8 07:F0A8: 60        RTS                             ;

sub_F0A9_enemy_subroutine:
C - - - - - 0x01F0B9 07:F0A9: A5 6D     LDA vMovableChrStatus             ;
C - - - - - 0x01F0BB 07:F0AB: 10 03     BPL bra_F0B0_skip                 ; If 'the character isn't moving in the water'
C - - - - - 0x01F0BD 07:F0AD: 4C 59 F2  JMP loc_F259_try_to_appear_diver  ;

bra_F0B0_skip:
C - - - - - 0x01F0C0 07:F0B0: 20 B2 F2  JSR sub_F2B2_try_generate_enemy   ;
C - - - - - 0x01F0C3 07:F0B3: B0 03     BCS bra_F0B8_skip                 ; If the generation is success
C - - - - - 0x01F0C5 07:F0B5: 4C 46 F1  JMP loc_F146_try_before_appearing ;

; In: $0000 - macro X-position (in screen units)
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000A - type of an enemy
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
bra_F0B8_skip:
C - - - - - 0x01F0C8 07:F0B8: A2 01     LDX #$01                        ; CONSTANT - type B
C - - - - - 0x01F0CA 07:F0BA: A0 15     LDY #$15                        ; set loop counter
C - - - - - 0x01F0CC 07:F0BC: A5 0A     LDA ram_000A                    ; type of an enemy
@bra_F0BE_loop:                                                         ; loop by y (22 times)
C - - - - - 0x01F0CE 07:F0BE: D9 FC F8  CMP tbl_F8FC_enemies,Y          ;
C - - - - - 0x01F0D1 07:F0C1: F0 04     BEQ @bra_F0C7_skip              ; If enemy = the current enemy in the table
C - - - - - 0x01F0D3 07:F0C3: 88        DEY                             ; decrement loop counter
C - - - - - 0x01F0D4 07:F0C4: 10 F8     BPL @bra_F0BE_loop              ; If Register Y <= 0x80
C - - - - - 0x01F0D6 07:F0C6: CA        DEX                             ; 0x01 -> 0x00, type A
@bra_F0C7_skip:
; In: $0000 - macro X-position (in screen units)
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000A - type of an enemy
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; In: Register A - type of an enemy
; in: Register X - enemy type A/B (0x00 - A, 0x01 - B)
loc_F0C7_try_to_appear:
C D 3 - - - 0x01F0D7 07:F0C7: 20 EB F1  JSR sub_F1EB_is_creation_available ;
C - - - - - 0x01F0DA 07:F0CA: 90 44     BCC bra_F110_inc_counters          ; If the creation is not available
C - - - - - 0x01F0DC 07:F0CC: BD 00 03  LDA vEnemies,X                     ;
C - - - - - 0x01F0DF 07:F0CF: F0 16     BEQ bra_F0E7_skip                  ; If the old enemy no exist
C - - - - - 0x01F0E1 07:F0D1: A5 0A     LDA ram_000A                       ;
C - - - - - 0x01F0E3 07:F0D3: DD 00 03  CMP vEnemies,X                     ;
C - - - - - 0x01F0E6 07:F0D6: F0 0F     BEQ bra_F0E7_skip                  ; If the type of the old enemy == $000A
C - - - - - 0x01F0E8 07:F0D8: C9 0C     CMP #$0C                           ; CONSTANT - the lift
C - - - - - 0x01F0EA 07:F0DA: D0 34     BNE bra_F110_inc_counters          ; If the type of an enemy != 0x0C
C - - - - - 0x01F0EC 07:F0DC: A9 00     LDA #$00                           ;
C - - - - - 0x01F0EE 07:F0DE: 8D 20 03  STA vEnemyAStatus1                 ; clear
C - - - - - 0x01F0F1 07:F0E1: 8D 21 03  STA vEnemyAStatus2                 ; clear
C - - - - - 0x01F0F4 07:F0E4: 9D 0A 03  STA vEnemyACount,X                 ; clear (or vEnemyBCount)
; In: $0000 - macro X-position (in screen units)
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; In: Register A - type of an enemy
; In: Register X - enemy type A/B (0x00 - A, 0x01 - B)
loc_F0E7_try_to_appear_ex:
bra_F0E7_skip:
C D 3 - - - 0x01F0F7 07:F0E7: BD 0A 03  LDA vEnemyACount,X                 ;
C - - - - - 0x01F0FA 07:F0EA: C9 02     CMP #$02                           ;
C - - - - - 0x01F0FC 07:F0EC: B0 22     BCS bra_F110_inc_counters          ; If vEnemyACount (or vEnemyBCount) >= 0x02
C - - - - - 0x01F0FE 07:F0EE: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x01F101 07:F0F1: C9 07     CMP #$07                           ; CONSTANT - Zenigata
C - - - - - 0x01F103 07:F0F3: F0 1B     BEQ bra_F110_inc_counters          ; If vEnemyA is Zenigata
C - - - - - 0x01F105 07:F0F5: A5 00     LDA ram_0000                       ;
C - - - - - 0x01F107 07:F0F7: 85 D4     STA vTmpEnemyStartingPosXHigh      ; set macro X-position temporarily
C - - - - - 0x01F109 07:F0F9: A5 01     LDA ram_0001                       ;
C - - - - - 0x01F10B 07:F0FB: 85 D5     STA vTmpEnemyStartingPosXLow       ; set X-position temporarily
C - - - - - 0x01F10D 07:F0FD: A5 0A     LDA ram_000A                       ;
C - - - - - 0x01F10F 07:F0FF: 9D 00 03  STA vEnemyA,X                      ; set the current enemy type
C - - - - - 0x01F112 07:F102: FE 0A 03  INC vEnemyACount,X                 ; increases the counter
C - - - - - 0x01F115 07:F105: 20 27 F3  JSR sub_F327_enemy_appearance      ;
C - - - - - 0x01F118 07:F108: A9 00     LDA #$00                           ;
C - - - - - 0x01F11A 07:F10A: 8D 14 03  STA vEnemyTimerLow1                ; clear a low part
C - - - - - 0x01F11D 07:F10D: 8D 15 03  STA vEnemyTimerHigh1               ; clear a high part
bra_F110_inc_counters:
C - - - - - 0x01F120 07:F110: 24 3C     BIT vGameLocks                     ;
C - - - - - 0x01F122 07:F112: 70 31     BVS bra_F145_RTS                   ; If the process, after 'Select a character', but before the game itself
C - - - - - 0x01F124 07:F114: A5 6D     LDA vMovableChrStatus              ;
C - - - - - 0x01F126 07:F116: 30 0D     BMI @bra_F125_skip                 ; If 'the character is moving in the water'
C - - - - - 0x01F128 07:F118: A5 46     LDA vNoRoom                        ;
C - - - - - 0x01F12A 07:F11A: C9 19     CMP #$19                           ; CONSTANT - level racing
C - - - - - 0x01F12C 07:F11C: F0 07     BEQ @bra_F125_skip                 ; If vNoRoom is the level racing
C - - - - - 0x01F12E 07:F11E: AD 17 03  LDA vZenigataTimerHigh1            ;
C - - - - - 0x01F131 07:F121: C9 4B     CMP #$4B                           ; CONSTANT - Max value
C - - - - - 0x01F133 07:F123: B0 66     BCS bra_F18B_Zenigata_appearance   ; If vZenigataTimerHigh1 >= $4B
@bra_F125_skip:
C - - - - - 0x01F135 07:F125: A2 06     LDX #$06                           ; set loop counter
@bra_F127_loop:                                                            ; loop by x (4 times)
C - - - - - 0x01F137 07:F127: FE 19 03  INC vEnemyAppearTimersLow,X        ; a low counter
C - - - - - 0x01F13A 07:F12A: D0 03     BNE @bra_F12F_skip                 ; If low counter is overflow
C - - - - - 0x01F13C 07:F12C: FE 18 03  INC vEnemyAppearTimersHigh,X       ;
@bra_F12F_skip:
C - - - - - 0x01F13F 07:F12F: CA        DEX                                ; decrement loop counter
C - - - - - 0x01F140 07:F130: CA        DEX                                ; decrement loop counter
C - - - - - 0x01F141 07:F131: 10 F4     BPL @bra_F127_loop                 ; If Register X >= 0 && X < 0x80
C - - - - - 0x01F143 07:F133: EE 16 03  INC vZenigataTimerLow1             ;
C - - - - - 0x01F146 07:F136: D0 0D     BNE bra_F145_RTS                   ; If a counter is overflow
C - - - - - 0x01F148 07:F138: EE 17 03  INC vZenigataTimerHigh1            ;  
C - - - - - 0x01F14B 07:F13B: A9 4B     LDA #$4B                           ; CONSTANT - Max value
C - - - - - 0x01F14D 07:F13D: CD 17 03  CMP vZenigataTimerHigh1            ;
C - - - - - 0x01F150 07:F140: B0 03     BCS bra_F145_RTS                   ; If vZenigataTimerHigh1 < $4B
C - - - - - 0x01F152 07:F142: 8D 17 03  STA vZenigataTimerHigh1            ; Assigned $4B
bra_F145_RTS:
C - - - - - 0x01F155 07:F145: 60        RTS                                ;

loc_F146_try_before_appearing:
C D 3 - - - 0x01F156 07:F146: AD 0A 03  LDA vEnemyACount                      ;
C - - - - - 0x01F159 07:F149: D0 C5     BNE bra_F110_inc_counters             ; If vEnemyACount != 0
C - - - - - 0x01F15B 07:F14B: AD 0B 03  LDA vEnemyBCount                      ;
C - - - - - 0x01F15E 07:F14E: D0 C0     BNE bra_F110_inc_counters             ; If vEnemyBCount != 0
C - - - - - 0x01F160 07:F150: EE 14 03  INC vEnemyTimerLow1                   ; increment low
C - - - - - 0x01F163 07:F153: D0 03     BNE @bra_F158_skip                    ; If vEnemyTimerLow1 is overflow
C - - - - - 0x01F165 07:F155: EE 15 03  INC vEnemyTimerHigh1                  ; increment high
@bra_F158_skip:
C - - - - - 0x01F168 07:F158: AD 15 03  LDA vEnemyTimerHigh1                  ;
C - - - - - 0x01F16B 07:F15B: C9 03     CMP #$03                              ; CONSTANT - from now on we create a random enemy
C - - - - - 0x01F16D 07:F15D: 90 B1     BCC bra_F110_inc_counters             ; If vEnemyTimerHigh1 < 3
C - - - - - 0x01F16F 07:F15F: AD 00 03  LDA vEnemyA                           ;
C - - - - - 0x01F172 07:F162: C9 07     CMP #$07                              ; CONSTANT - Zenigata
C - - - - - 0x01F174 07:F164: F0 DF     BEQ bra_F145_RTS                      ; If vEnemyA is Zenigata
C - - - - - 0x01F176 07:F166: A4 46     LDY vNoRoom                           ;
C - - - - - 0x01F178 07:F168: A9 00     LDA #$00                              ; CONSTANT - the right direction
C - - - - - 0x01F17A 07:F16A: 20 1F F2  JSR sub_F21F_get_params_after_waiting ;
C - - - - - 0x01F17D 07:F16D: 20 77 F1  JSR sub_F177_appearance               ;
C - - - - - 0x01F180 07:F170: A4 46     LDY vNoRoom                           ;
C - - - - - 0x01F182 07:F172: A9 01     LDA #$01                              ; CONSTANT - the left direction
C - - - - - 0x01F184 07:F174: 20 1F F2  JSR sub_F21F_get_params_after_waiting ;
sub_F177_appearance:
C - - - - - 0x01F187 07:F177: F0 CC     BEQ bra_F145_RTS                      ; If the enemy is 'nobody'
C - - - - - 0x01F189 07:F179: A5 0A     LDA ram_000A                          ;
C - - - - - 0x01F18B 07:F17B: C9 21     CMP #$21                              ; CONSTANT - Cobblestone
C - - - - - 0x01F18D 07:F17D: F0 04     BEQ bra_F183_for_level4               ; If the enemy is 'cobblestone'
C - - - - - 0x01F18F 07:F17F: C9 27     CMP #$27                              ; CONSTANT - Gargoyle
C - - - - - 0x01F191 07:F181: D0 05     BNE bra_F188_skip                     ; If the enemy isn't 'gargoyle'
bra_F183_for_level4:
C - - - - - 0x01F193 07:F183: 20 95 F2  JSR sub_F295_check_collision          ;
C - - - - - 0x01F196 07:F186: B0 BD     BCS bra_F145_RTS                      ; if the collision exists
bra_F188_skip:
C - - - - - 0x01F198 07:F188: 4C E7 F0  JMP loc_F0E7_try_to_appear_ex         ;

bra_F18B_Zenigata_appearance:
C - - - - - 0x01F19B 07:F18B: 20 FE BB  JSR sub_BBFE_is_unique_room   ;
C - - - - - 0x01F19E 07:F18E: B0 B5     BCS bra_F145_RTS              ; If the last function returned true
C - - - - - 0x01F1A0 07:F190: AD 0A 03  LDA vEnemyACount              ;
C - - - - - 0x01F1A3 07:F193: D0 B0     BNE bra_F145_RTS              ; If vEnemyACount isn't empty
C - - - - - 0x01F1A5 07:F195: AD 0B 03  LDA vEnemyBCount              ;
C - - - - - 0x01F1A8 07:F198: D0 AB     BNE bra_F145_RTS              ; If vEnemyBCount isn't empty
C - - - - - 0x01F1AA 07:F19A: 24 D1     BIT vGogglesActive            ;
C - - - - - 0x01F1AC 07:F19C: 30 A7     BMI bra_F145_RTS              ; If the infrared goggles is activated
C - - - - - 0x01F1AE 07:F19E: A9 AF     LDA #$AF                      ; CONSTANT - starting Y-position
C - - - - - 0x01F1B0 07:F1A0: 85 02     STA ram_0002                  ;
C - - - - - 0x01F1B2 07:F1A2: A0 10     LDY #$10                      ; the offset value #1 (+10)
C - - - - - 0x01F1B4 07:F1A4: A5 6C     LDA vChrStatus                ;
C - - - - - 0x01F1B6 07:F1A6: 29 01     AND #$01                      ; CONSTANT - the character is looking to the right/left
C - - - - - 0x01F1B8 07:F1A8: 49 01     EOR #$01                      ; changes the direction (left or right)
C - - - - - 0x01F1BA 07:F1AA: 85 0B     STA ram_000B                  ; prepares an input parameter
C - - - - - 0x01F1BC 07:F1AC: 6A        ROR                           ;
C - - - - - 0x01F1BD 07:F1AD: 90 02     BCC @bra_F1B1_right           ; If the character is looking to the right
C - - - - - 0x01F1BF 07:F1AF: A0 F0     LDY #$F0                      ; the offset value #2 (-10)
@bra_F1B1_right:
C - - - - - 0x01F1C1 07:F1B1: 98        TYA                           ;
C - - - - - 0x01F1C2 07:F1B2: 18        CLC                           ;
C - - - - - 0x01F1C3 07:F1B3: 65 27     ADC vLowViewPortPosX          ;
C - - - - - 0x01F1C5 07:F1B5: 85 01     STA ram_0001                  ; X-position <~ vLowViewPortPosX + 10 or vLowViewPortPosX - 10
C - - - - - 0x01F1C7 07:F1B7: A5 4B     LDA vHighViewPortPosX         ;
C - - - - - 0x01F1C9 07:F1B9: 69 00     ADC #$00                      ;
C - - - - - 0x01F1CB 07:F1BB: 85 00     STA ram_0000                  ; macro X-position <~ vHighViewPortPosX (+1 with overflow)
C - - - - - 0x01F1CD 07:F1BD: 20 95 F2  JSR sub_F295_check_collision  ;
C - - - - - 0x01F1D0 07:F1C0: B0 83     BCS bra_F145_RTS              ; if the collision exists
C - - - - - 0x01F1D2 07:F1C2: A9 07     LDA #$07                      ; CONSTANT - Zenigata
C - - - - - 0x01F1D4 07:F1C4: 85 0A     STA ram_000A                  ;
C - - - - - 0x01F1D6 07:F1C6: CE 17 03  DEC vZenigataTimerHigh1       ;
C - - - - - 0x01F1D9 07:F1C9: CE 17 03  DEC vZenigataTimerHigh1       ; double resets a high value of the timer
C - - - - - 0x01F1DC 07:F1CC: A0 08     LDY #$08                      ; CONSTANT - low X-position offset (+8)
C - - - - - 0x01F1DE 07:F1CE: A5 6C     LDA vChrStatus                ;
C - - - - - 0x01F1E0 07:F1D0: 29 01     AND #$01                      ; CONSTANT - the character is looking to the right/left
C - - - - - 0x01F1E2 07:F1D2: F0 04     BEQ @bra_F1D8_right           ; If the character is looking to the right
C - - - - - 0x01F1E4 07:F1D4: A9 FF     LDA #$FF                      ; CONSTANT - high X-position offset (-1)
C - - - - - 0x01F1E6 07:F1D6: A0 F8     LDY #$F8                      ; CONSTANT - low X-position offset (-8)
@bra_F1D8_right:
C - - - - - 0x01F1E8 07:F1D8: 85 12     STA $0012                     ; <~ , 0x00 or 0xFF
C - - - - - 0x01F1EA 07:F1DA: 98        TYA                           ;
C - - - - - 0x01F1EB 07:F1DB: 18        CLC                           ;
C - - - - - 0x01F1EC 07:F1DC: 65 01     ADC ram_0001                  ;
C - - - - - 0x01F1EE 07:F1DE: 85 01     STA ram_0001                  ; X-position <~ X-position + 8 or X-position - 8
C - - - - - 0x01F1F0 07:F1E0: A5 00     LDA ram_0000                  ;
C - - - - - 0x01F1F2 07:F1E2: 65 12     ADC $0012                     ;
C - - - - - 0x01F1F4 07:F1E4: 85 00     STA ram_0000                  ; macro X-position <~ macro X-position + 0 or macro X-position - 1 (+1 with overflow)
C - - - - - 0x01F1F6 07:F1E6: A2 00     LDX #$00                      ; CONSTANT - enemy type A
C - - - - - 0x01F1F8 07:F1E8: 4C E7 F0  JMP loc_F0E7_try_to_appear_ex ;

; In: $0000 - macro X-position (in screen units)
; In: $0001 - X-position
; In: $000A - type of an enemy
; In: Register A - type of an enemy
; in: Register X - enemy type A/B (0x00 - A, 0x01 - B)
; Out: Carry flag, 1 - if allow the creation of an enemy
sub_F1EB_is_creation_available:
C - - - - - 0x01F1FB 07:F1EB: 20 38 F2  JSR sub_F238_is_psevdo_enemy   ;
C - - - - - 0x01F1FE 07:F1EE: F0 2D     BEQ @bra_F21D_return_true      ; if the enemy is psevdo enemy
C - - - - - 0x01F200 07:F1F0: 8A        TXA                            ;
C - - - - - 0x01F201 07:F1F1: 0A        ASL                            ; *2
C - - - - - 0x01F202 07:F1F2: A8        TAY                            ; Y = {0x00, 0x02}
C - - - - - 0x01F203 07:F1F3: A5 00     LDA ram_0000                   ;
C - - - - - 0x01F205 07:F1F5: D9 0C 03  CMP vEnemyAStartingPosXHigh1,Y ;
C - - - - - 0x01F208 07:F1F8: D0 0E     BNE @bra_F208_skip             ; If macro X-position != vEnemyAStartingPosXHigh1
C - - - - - 0x01F20A 07:F1FA: A5 01     LDA ram_0001                   ;
C - - - - - 0x01F20C 07:F1FC: D9 0D 03  CMP vEnemyAStartingPosXLow1,Y  ;
C - - - - - 0x01F20F 07:F1FF: D0 07     BNE @bra_F208_skip             ; If X-position != vEnemyAStartingPosXLow1
C - - - - - 0x01F211 07:F201: B9 18 03  LDA vEnemyAAppearTimerHigh1,Y  ;
C - - - - - 0x01F214 07:F204: C9 03     CMP #$03                       ;
C - - - - - 0x01F216 07:F206: 90 16     BCC @bra_F21E_RTS              ; If vEnemyAAppearTimerHigh1 < 0x03
@bra_F208_skip:
C - - - - - 0x01F218 07:F208: A5 00     LDA ram_0000                   ;
C - - - - - 0x01F21A 07:F20A: D9 10 03  CMP vEnemyAStartingPosXHigh2,Y ;
C - - - - - 0x01F21D 07:F20D: D0 0E     BNE @bra_F21D_return_true      ; If macro X-position != vEnemyAStartingPosXHigh2
C - - - - - 0x01F21F 07:F20F: A5 01     LDA ram_0001                   ;
C - - - - - 0x01F221 07:F211: D9 11 03  CMP vEnemyAStartingPosXLow2,Y  ;
C - - - - - 0x01F224 07:F214: D0 07     BNE @bra_F21D_return_true      ; If X-position != vEnemyAStartingPosXLow2
C - - - - - 0x01F226 07:F216: B9 1C 03  LDA vEnemyAAppearTimerHigh2,Y  ;
C - - - - - 0x01F229 07:F219: C9 03     CMP #$03                       ;
C - - - - - 0x01F22B 07:F21B: 90 01     BCC @bra_F21E_RTS              ; If vEnemyAAppearTimerHigh2 < 0x03
@bra_F21D_return_true:
C - - - - - 0x01F22D 07:F21D: 38        SEC                            ;
@bra_F21E_RTS:
C - - - - - 0x01F22E 07:F21E: 60        RTS                            ;

; In: Register Y - vNoRoom
; In: Register A - the direction of appearance (0x00 - right, 0x01 - left)
; Out: $0000 - macro X-position (in screen units)
; Out: $0001 - X-position
; Out: $0002 - Y-position
; Out: $000A - enemy type (see vEnemies)
; Out: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; Out: Register X - enemy type A/B (0x00 - A, 0x01 - B)
sub_F21F_get_params_after_waiting:
C - - - - - 0x01F22F 07:F21F: A2 01     LDX #$01                        ; CONSTANT - type B
C - - - - - 0x01F231 07:F221: 85 0B     STA ram_000B                    ;
C - - - - - 0x01F233 07:F223: 65 4B     ADC vHighViewPortPosX           ;
C - - - - - 0x01F235 07:F225: 85 00     STA ram_0000                    ; macro X-position <~ vHighViewPortPosX or vHighViewPortPosX + 1
C - - - - - 0x01F237 07:F227: A5 27     LDA vLowViewPortPosX            ;
C - - - - - 0x01F239 07:F229: 85 01     STA ram_0001                    ; X-position <~ vLowViewPortPosX
C - - - - - 0x01F23B 07:F22B: A9 60     LDA #$60                        ;
C - - - - - 0x01F23D 07:F22D: 85 02     STA ram_0002                    ; Y-position <~ 0x60
C - - - - - 0x01F23F 07:F22F: 20 46 EF  JSR sub_EF46_switch_bank_4_p1   ;
C - - - - - 0x01F242 07:F232: B9 BA 84  LDA tbl_enemies_after_waiting,Y ;
C - - - - - 0x01F245 07:F235: 85 0A     STA ram_000A                    ;
C - - - - - 0x01F247 07:F237: 60        RTS                             ;

; In: $000A - type of an enemy
; Out: Z = 1, if the enemy is psevdo enemy (safe)
sub_F238_is_psevdo_enemy:
C - - - - - 0x01F248 07:F238: A5 0A     LDA ram_000A         ;
C - - - - - 0x01F24A 07:F23A: C9 0C     CMP #$0C             ; CONSTANT - The lift
C - - - - - 0x01F24C 07:F23C: F0 1A     BEQ bra_F258_RTS     ; If the type of an enemy is the lift
C - - - - - 0x01F24E 07:F23E: C9 0D     CMP #$0D             ; CONSTANT - Sensor
C - - - - - 0x01F250 07:F240: F0 16     BEQ bra_F258_RTS     ; If the type of an enemy is the sensor
C - - - - - 0x01F252 07:F242: C9 15     CMP #$15             ; CONSTANT - Sensor
C - - - - - 0x01F254 07:F244: F0 12     BEQ bra_F258_RTS     ; If the type of an enemy is the sensor
C - - - - - 0x01F256 07:F246: C9 1E     CMP #$1E             ; CONSTANT - Sensor
C - - - - - 0x01F258 07:F248: F0 0E     BEQ bra_F258_RTS     ; If the type of an enemy is the sensor
C - - - - - 0x01F25A 07:F24A: C9 39     CMP #$39             ; CONSTANT - Sensor
C - - - - - 0x01F25C 07:F24C: F0 0A     BEQ bra_F258_RTS     ; If the type of an enemy is the sensor
C - - - - - 0x01F25E 07:F24E: C9 30     CMP #$30             ; CONSTANT - Wall
C - - - - - 0x01F260 07:F250: F0 06     BEQ bra_F258_RTS     ; If the type of an enemy is the wall
C - - - - - 0x01F262 07:F252: C9 31     CMP #$31             ; CONSTANT - Wall
C - - - - - 0x01F264 07:F254: F0 02     BEQ bra_F258_RTS     ; If the type of an enemy is the wall
C - - - - - 0x01F266 07:F256: C9 32     CMP #$32             ; CONSTANT - Breaking platform
bra_F258_RTS:
C - - - - - 0x01F268 07:F258: 60        RTS                  ;

loc_F259_try_to_appear_diver:
C D 3 - - - 0x01F269 07:F259: A5 2B     LDA v_nmi_counter             ;
C - - - - - 0x01F26B 07:F25B: 29 1F     AND #$1F                      ;
C - - - - - 0x01F26D 07:F25D: D0 F9     BNE bra_F258_RTS              ; Branch in 31/32 cases
C - - - - - 0x01F26F 07:F25F: 20 64 D0  JSR sub_D064_generate_rng     ;
C - - - - - 0x01F272 07:F262: 29 03     AND #$03                      ;
C - - - - - 0x01F274 07:F264: D0 F2     BNE bra_F258_RTS              ; Branch in 3/4 cases
C - - - - - 0x01F276 07:F266: A9 08     LDA #$08                      ; CONSTANT - low X-position offset (+8)
C - - - - - 0x01F278 07:F268: A0 00     LDY #$00                      ; CONSTANT - the right direction
C - - - - - 0x01F27A 07:F26A: 24 35     BIT vEnemyRNGValue            ;
C - - - - - 0x01F27C 07:F26C: 30 03     BMI @bra_F271_skip            ; If the sign bit is used - appearance on the left, otherwise on the right
C - - - - - 0x01F27E 07:F26E: C8        INY                           ; Y <- the left direction
C - - - - - 0x01F27F 07:F26F: A9 F8     LDA #$F8                      ; CONSTANT - low X-position offset (-8)
@bra_F271_skip:
C - - - - - 0x01F281 07:F271: 84 0B     STY ram_000B                  ;
C - - - - - 0x01F283 07:F273: 18        CLC                           ;
C - - - - - 0x01F284 07:F274: 65 27     ADC vLowViewPortPosX          ;
C - - - - - 0x01F286 07:F276: 85 01     STA ram_0001                  ; <~ vLowViewPortPosX + 8 or vLowViewPortPosX - 8
C - - - - - 0x01F288 07:F278: A5 4B     LDA vHighViewPortPosX         ;
C - - - - - 0x01F28A 07:F27A: 69 00     ADC #$00                      ;
C - - - - - 0x01F28C 07:F27C: 85 00     STA ram_0000                  ; <~ vHighViewPortPosX (+1 with overflow)
C - - - - - 0x01F28E 07:F27E: A9 25     LDA #$25                      ; CONSTANT - Diver
C - - - - - 0x01F290 07:F280: 85 0A     STA ram_000A                  ; prepare an input parameter (enemy type)
C - - - - - 0x01F292 07:F282: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1 ;
C - - - - - 0x01F295 07:F285: 20 64 D0  JSR sub_D064_generate_rng     ;
C - - - - - 0x01F298 07:F288: 29 1F     AND #$1F                      ;
C - - - - - 0x01F29A 07:F28A: A8        TAY                           ; Y <~ {0x00, 0x01, 0x02, ..., 0x1F}
C - - - - - 0x01F29B 07:F28B: B9 C0 95  LDA tbl_water_y_position,Y    ;
C - - - - - 0x01F29E 07:F28E: 85 02     STA ram_0002                  ; prepare an input parameter (Y-position)
C - - - - - 0x01F2A0 07:F290: A2 01     LDX #$01                      ; CONSTANT - enemy type B
C - - - - - 0x01F2A2 07:F292: 4C C7 F0  JMP loc_F0C7_try_to_appear    ;

; In: $0000 - macro X-position (in screen units)
; In: $0001 - X-position
; In: $0002 - Y-position
; Out: Return the carry status (analog return true or false)
; 1 - if the collision exists
; 0 - otherwise
sub_F295_check_collision:
C - - - - - 0x01F2A5 07:F295: A5 00     LDA ram_0000                         ;
C - - - - - 0x01F2A7 07:F297: 48        PHA                                  ; diposit macro X-position ($F297)
C - - - - - 0x01F2A8 07:F298: 85 4D     STA vCacheNoScreen                   ; prepares 3rd input parameter
C - - - - - 0x01F2AA 07:F29A: A5 02     LDA ram_0002                         ;
C - - - - - 0x01F2AC 07:F29C: 48        PHA                                  ; diposit Y-position ($F29C)
C - - - - - 0x01F2AD 07:F29D: 85 00     STA ram_0000                         ; prepares 1st input parameter
C - - - - - 0x01F2AF 07:F29F: 20 E5 D2  JSR sub_D2E5_get_collision_value     ;
C - - - - - 0x01F2B2 07:F2A2: C9 01     CMP #$01                             ; CONSTANT - a strong collision
C - - - - - 0x01F2B4 07:F2A4: D0 04     BNE bra_F2AA_restore                 ; If the strong collision doesn't exist
C - - - - - 0x01F2B6 07:F2A6: 68        PLA                                  ; retrieve Y-position (see $F29C)
C - - - - - 0x01F2B7 07:F2A7: 68        PLA                                  ; retrieve macro X-position (see $F297)
C - - - - - 0x01F2B8 07:F2A8: 38        SEC                                  ; return false
C - - - - - 0x01F2B9 07:F2A9: 60        RTS                                  ;

bra_F2AA_restore:
C - - - - - 0x01F2BA 07:F2AA: 68        PLA                                  ; retrieve Y-position (see $F29C)
C - - - - - 0x01F2BB 07:F2AB: 85 02     STA ram_0002                         ;
C - - - - - 0x01F2BD 07:F2AD: 68        PLA                                  ; retrieve macro X-position (see $F297)
C - - - - - 0x01F2BE 07:F2AE: 85 00     STA ram_0000                         ;
C - - - - - 0x01F2C0 07:F2B0: 18        CLC                                  ; return true
C - - - - - 0x01F2C1 07:F2B1: 60        RTS                                  ;

; Out: Return the carry status (analog return true or false)
; Out: $0000 - macro X-position
; Out: $0001 - X-position
; Out: $0002 - Y-position
; Out: $000A - type of an enemy
; Out: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; Out: $000C - ???
sub_F2B2_try_generate_enemy:
C - - - - - 0x01F2C2 07:F2B2: AD 00 03  LDA vEnemyA                   ;
C - - - - - 0x01F2C5 07:F2B5: C9 07     CMP #$07                      ; CONSTANT - Zenigata
C - - - - - 0x01F2C7 07:F2B7: F0 41     BEQ bra_F2FA_return_false     ; If enemyA is Zenigata
C - - - - - 0x01F2C9 07:F2B9: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2 ;
C - - - - - 0x01F2CC 07:F2BC: A5 46     LDA vNoRoom                   ;
C - - - - - 0x01F2CE 07:F2BE: 0A        ASL                           ; *2, because the CPU addresses have 2 bytes
C - - - - - 0x01F2CF 07:F2BF: AA        TAX                           ;
C - - - - - 0x01F2D0 07:F2C0: BD A2 83  LDA tbl_ptr_enemies,X         ;
C - - - - - 0x01F2D3 07:F2C3: 85 12     STA $0012                     ; Low address
C - - - - - 0x01F2D5 07:F2C5: BD A3 83  LDA tbl_ptr_enemies + 1,X     ;
C - - - - - 0x01F2D8 07:F2C8: 85 13     STA $0013                     ; High address
C - - - - - 0x01F2DA 07:F2CA: A5 2C     LDA vLowCounter               ;
C - - - - - 0x01F2DC 07:F2CC: 29 07     AND #$07                      ;
C - - - - - 0x01F2DE 07:F2CE: F0 06     BEQ bra_F2D6_skip             ; if low_counter == 0xX0 or if low_counter == 0xX8 (right-to-left direction, multiple of 8)
C - - - - - 0x01F2E0 07:F2D0: 29 01     AND #$01                      ;
C - - - - - 0x01F2E2 07:F2D2: D0 26     BNE bra_F2FA_return_false     ; if low_counter is odd (multiple of 2)
C - - - - - 0x01F2E4 07:F2D4: A9 01     LDA #$01                      ; CONSTANT - left-to-right direction
; in: Register A - the direction, 0x00 - +1 for left direction (see $F2DE), 0x01 - for right direction (see $F2DE)
; In: $0012-$0013 - an input address
; Out: Return the carry status (analog return true or false)
; Out: $0000 - macro X-position
; Out: $0001 - X-position
; Out: $0002 - Y-position
; Out: $000A - an index of briefcase in an array
; Out: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; Out: $000C - ???
sub_F2D6_try_put_briefcase:
bra_F2D6_skip:
C - - - - - 0x01F2E6 07:F2D6: 85 00     STA ram_0000             ; Register A has 0x00 or 0x01
C - - - - - 0x01F2E8 07:F2D8: A5 6C     LDA vChrStatus           ;
C - - - - - 0x01F2EA 07:F2DA: 29 01     AND #$01                 ; only left or right
C - - - - - 0x01F2EC 07:F2DC: 45 00     EOR ram_0000             ;
C - - - - - 0x01F2EE 07:F2DE: 85 0B     STA ram_000B             ; 0x00 or 0x01
C - - - - - 0x01F2F0 07:F2E0: A5 4B     LDA vHighViewPortPosX    ;
C - - - - - 0x01F2F2 07:F2E2: 18        CLC                      ; 
C - - - - - 0x01F2F3 07:F2E3: 65 0B     ADC ram_000B             ;
C - - - - - 0x01F2F5 07:F2E5: 85 01     STA ram_0001             ; <~ vHighViewPortPosX or vHighViewPortPosX + 1
C - - - - - 0x01F2F7 07:F2E7: A0 00     LDY #$00                 ; set loop counter, 1 of 4
loc_F2E9_repeat_loop:
bra_F2E9_loop:                                                   ; loop by y
C D 3 - - - 0x01F2F9 07:F2E9: B1 12     LDA ($0012),Y            ; load a item macro X-position
C - - - - - 0x01F2FB 07:F2EB: C5 01     CMP ram_0001             ;
C - - - - - 0x01F2FD 07:F2ED: B0 0D     BCS bra_F2FC_skip        ; If the item macro X-position >= HighViewPortPosX (+1)
C - - - - - 0x01F2FF 07:F2EF: C8        INY                      ; 2 of 4
bra_F2F0_repeat:
C - - - - - 0x01F300 07:F2F0: C8        INY                      ; 3 of 4
C - - - - - 0x01F301 07:F2F1: C8        INY                      ; 4 of 4
C - - - - - 0x01F302 07:F2F2: C8        INY                      ; 1 of 4 again
C - - - - - 0x01F303 07:F2F3: D0 F4     BNE bra_F2E9_loop        ; If Register Y != 0x00
C - - - - - 0x01F305 07:F2F5: E6 13     INC ram_0013             ; increment the high address
C - - - - - 0x01F307 07:F2F7: 4C E9 F2  JMP loc_F2E9_repeat_loop ;

bra_F2FA_return_false:
C - - - - - 0x01F30A 07:F2FA: 18        CLC                      ; return false
C - - - - - 0x01F30B 07:F2FB: 60        RTS                      ;

bra_F2FC_skip:
C - - - - - 0x01F30C 07:F2FC: D0 FC     BNE bra_F2FA_return_false ; If the item macro X-position != HighViewPortPosX (+1)
C - - - - - 0x01F30E 07:F2FE: C8        INY                       ; to 2 byte of 4
C - - - - - 0x01F30F 07:F2FF: B1 12     LDA ($0012),Y             ; load a item X-position
C - - - - - 0x01F311 07:F301: 38        SEC                       ;
C - - - - - 0x01F312 07:F302: E5 27     SBC vLowViewPortPosX      ;
C - - - - - 0x01F314 07:F304: B0 03     BCS bra_F309_skip         ; If vLowViewPortPosX <= item position X
C - - - - - 0x01F316 07:F306: 20 73 D0  JSR sub_D073_invert_sign  ;
bra_F309_skip:
C - - - - - 0x01F319 07:F309: C9 0A     CMP #$0A                  ; CONSTANT - allowable tolerance for items
C - - - - - 0x01F31B 07:F30B: B0 E3     BCS bra_F2F0_repeat       ; If Register A >= 0x0A
C - - - - - 0x01F31D 07:F30D: 88        DEY                       ; to 1 byte of 4
C - - - - - 0x01F31E 07:F30E: B1 12     LDA ($0012),Y             ;
C - - - - - 0x01F320 07:F310: 85 00     STA ram_0000              ; store 1 item value
C - - - - - 0x01F322 07:F312: C8        INY                       ; 2 of 4
C - - - - - 0x01F323 07:F313: B1 12     LDA ($0012),Y             ;
C - - - - - 0x01F325 07:F315: 85 01     STA ram_0001              ; store 2 item value
C - - - - - 0x01F327 07:F317: C8        INY                       ; 3 of 4
C - - - - - 0x01F328 07:F318: B1 12     LDA ($0012),Y             ;
C - - - - - 0x01F32A 07:F31A: 85 02     STA ram_0002              ; store 3 item value
C - - - - - 0x01F32C 07:F31C: C8        INY                       ; 4 of 4
C - - - - - 0x01F32D 07:F31D: B1 12     LDA ($0012),Y             ;
C - - - - - 0x01F32F 07:F31F: 85 0C     STA ram_000C              ; store 4 item value
C - - - - - 0x01F331 07:F321: 29 7F     AND #$7F                  ;
C - - - - - 0x01F333 07:F323: 85 0A     STA ram_000A              ; store a type or an index
C - - - - - 0x01F335 07:F325: 38        SEC                       ; return true
C - - - - - 0x01F336 07:F326: 60        RTS                       ;

; In: Register X - a enemy number (or a stub for 0x00)
sub_F327_enemy_appearance:
loc_F327_enemy_appearance:
C D 3 - - - 0x01F337 07:F327: BD 00 03  LDA vEnemies,X                        ;
C - - - - - 0x01F33A 07:F32A: 0A        ASL                                   ; *2, because the addresses have 2 bytes
C - - - - - 0x01F33B 07:F32B: AA        TAX                                   ;
C - - - - - 0x01F33C 07:F32C: BD 88 F8  LDA tbl_F888_enemy_appearance,X       ;
C - - - - - 0x01F33F 07:F32F: 85 14     STA ram_0014                          ; Low address
C - - - - - 0x01F341 07:F331: BD 89 F8  LDA tbl_F888_enemy_appearance + 1,X   ;
C - - - - - 0x01F344 07:F334: 85 15     STA ram_0015                          ; High address
C - - - - - 0x01F346 07:F336: 6C 14 00  JMP (ram_0014)                        ;

; In: $0000 - macro X-position
; In: $0001 - X-position
sub_F339_check_position:
C - - - - - 0x01F349 07:F339: A2 01     LDX #$01                           ; CONSTANT - second enemy
C - - - - - 0x01F34B 07:F33B: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01F34E 07:F33E: 30 06     BMI @bra_F346_skip                 ; If the status is used
C - - - - - 0x01F350 07:F340: CA        DEX                                ; X <~ 0 (first enemy)
C - - - - - 0x01F351 07:F341: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01F354 07:F344: 10 12     BPL @bra_F358_RTS                  ; If the status isn't used
@bra_F346_skip:
C - - - - - 0x01F356 07:F346: A5 00     LDA ram_0000                       ;
C - - - - - 0x01F358 07:F348: 38        SEC                                ;
C - - - - - 0x01F359 07:F349: FD 7A 03  SBC vEnemyBPosXHigh,X              ;
C - - - - - 0x01F35C 07:F34C: A5 01     LDA ram_0001                       ;
C - - - - - 0x01F35E 07:F34E: FD 74 03  SBC vEnemyBPosXLow,X               ;
C - - - - - 0x01F361 07:F351: D0 05     BNE @bra_F358_RTS                  ; If [$0000:$0001] != [He:Le]
C - - - - - 0x01F363 07:F353: 20 83 D8  JSR sub_D883_dec_enemyB_counter    ;
C - - - - - 0x01F366 07:F356: 68        PLA                                ;
C - - - - - 0x01F367 07:F357: 68        PLA                                ; double return (i.e. $F634 -> $F108)
@bra_F358_RTS:
C - - - - - 0x01F368 07:F358: 60        RTS                                ;

; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
sub_F359_prepare_enemyA_start_status:
C - - - - - 0x01F369 07:F359: 20 67 F3  JSR sub_F367_prepare_start_status    ;
C - - - - - 0x01F36C 07:F35C: 9D 20 03  STA vEnemyAStatus,X                  ;
C - - - - - 0x01F36F 07:F35F: 60        RTS                                  ;

; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
sub_F360_prepare_enemyB_start_status:
C - - - - - 0x01F370 07:F360: 20 67 F3  JSR sub_F367_prepare_start_status    ;
C - - - - - 0x01F373 07:F363: 9D 5C 03  STA vEnemyBStatus,X                  ;
C - - - - - 0x01F376 07:F366: 60        RTS                                  ;

; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; Out: Register A - the status
sub_F367_prepare_start_status:
C - - - - - 0x01F377 07:F367: A0 C0     LDY #$C0                ; CONSTANT - the start status (Y - see vEnemyBStatus)
C - - - - - 0x01F379 07:F369: A5 0B     LDA ram_000B            ;
C - - - - - 0x01F37B 07:F36B: 6A        ROR                     ;
C - - - - - 0x01F37C 07:F36C: 90 02     BCC @bra_F370_skip      ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F37E 07:F36E: A0 C1     LDY #$C1                ; CONSTANT - the start status (Y, N - see vEnemyBStatus)
@bra_F370_skip:
C - - - - - 0x01F380 07:F370: 98        TYA                     ;
C - - - - - 0x01F381 07:F371: 60        RTS                     ;

; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
sub_F372_start_enemyA_appearance:
C - - - - - 0x01F382 07:F372: A2 01     LDX #$01                     ; X <~ 1
C - - - - - 0x01F384 07:F374: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01F387 07:F377: 10 01     BPL @bra_F37A_skip           ; If vEnemyAStatus < 0x80, i.e. vEnemyAStatus2 isn't used
C - - - - - 0x01F389 07:F379: CA        DEX                          ; X <~ 0
; In: Register X - the enemyA number
@bra_F37A_skip:
sub_F37A_assign_enemyA_position:
C - - - - - 0x01F38A 07:F37A: A5 00     LDA ram_0000                 ;
C - - - - - 0x01F38C 07:F37C: 9D 3E 03  STA vEnemyAPosXHigh,X        ; store macro X-position
C - - - - - 0x01F38F 07:F37F: A5 01     LDA ram_0001                 ;
C - - - - - 0x01F391 07:F381: 9D 38 03  STA vEnemyAPosXLow,X         ; store X-position
C - - - - - 0x01F394 07:F384: A5 02     LDA ram_0002                 ;
C - - - - - 0x01F396 07:F386: 9D 2C 03  STA vEnemyAPosY,X            ; store Y-position
C - - - - - 0x01F399 07:F389: 60        RTS                          ;

; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
sub_F38A_start_enemyB_appearance:
C - - - - - 0x01F39A 07:F38A: A2 01     LDX #$01                     ; X <~ 1
C - - - - - 0x01F39C 07:F38C: BD 5C 03  LDA vEnemyBStatus,X          ;
C - - - - - 0x01F39F 07:F38F: 10 01     BPL @bra_F392_skip           ; If vEnemyBStatus < 0x80, i.e. vEnemyBStatus2 isn't used
C - - - - - 0x01F3A1 07:F391: CA        DEX                          ; X <~ 0
; In: Register X - the enemyB number
@bra_F392_skip:
sub_F392_assign_enemyB_position:
C - - - - - 0x01F3A2 07:F392: A5 00     LDA ram_0000                 ;
C - - - - - 0x01F3A4 07:F394: 9D 7A 03  STA vEnemyBPosXHigh,X        ; store macro X-position
C - - - - - 0x01F3A7 07:F397: A5 01     LDA ram_0001                 ;
C - - - - - 0x01F3A9 07:F399: 9D 74 03  STA vEnemyBPosXLow,X         ; store X-position
C - - - - - 0x01F3AC 07:F39C: A5 02     LDA ram_0002                 ;
C - - - - - 0x01F3AE 07:F39E: 9D 68 03  STA vEnemyBPosY,X            ; store Y-position
C - - - - - 0x01F3B1 07:F3A1: 60        RTS                          ;

; Template 2
; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
; In: $000C - For 0x80 - with the projectile
loc_F3A2_enemy_appearance_t3:
C - - J - - 0x01F3B2 07:F3A2: 20 72 F3  JSR sub_F372_start_enemyA_appearance        ;
C - - - - - 0x01F3B5 07:F3A5: 20 59 F3  JSR sub_F359_prepare_enemyA_start_status    ;
C - - - - - 0x01F3B8 07:F3A8: A9 0F     LDA #$0F                                    ;
C - - - - - 0x01F3BA 07:F3AA: 85 11     STA vNonUsed11                              ;
C - - - - - 0x01F3BC 07:F3AC: A0 00     LDY #$00                                    ; set loop counter
C - - - - - 0x01F3BE 07:F3AE: AD 00 03  LDA vEnemyA                                 ;
@bra_F3B1_loop:                                                                     ; loop by y (15 times)
C - - - - - 0x01F3C1 07:F3B1: D9 0D BD  CMP tbl_ptr_enemy_t3_types_for_sprites,Y    ;
C - - - - - 0x01F3C4 07:F3B4: F0 05     BEQ @bra_F3BB_skip                          ; If vEnemyA == the current type in the table
C - - - - - 0x01F3C6 07:F3B6: C8        INY                                         ; increment loop counter
C - - - - - 0x01F3C7 07:F3B7: C0 0F     CPY #$0F                                    ;
C - - - - - 0x01F3C9 07:F3B9: D0 F6     BNE @bra_F3B1_loop                          ; If Register Y != 0x0F
@bra_F3BB_skip:
C - - - - - 0x01F3CB 07:F3BB: 98        TYA                                         ;
C - - - - - 0x01F3CC 07:F3BC: 0A        ASL                                         ;
C - - - - - 0x01F3CD 07:F3BD: 0A        ASL                                         ;
C - - - - - 0x01F3CE 07:F3BE: 0A        ASL                                         ; *8, because the set of 8th bytes
C - - - - - 0x01F3CF 07:F3BF: A8        TAY                                         ;
C - - - - - 0x01F3D0 07:F3C0: A9 00     LDA #$00                                    ;
C - - - - - 0x01F3D2 07:F3C2: 9D 44 03  STA vEnemyAFrame_Counter,X                  ; reset a frame counter
C - - - - - 0x01F3D5 07:F3C5: 9D 4A 03  STA vEnemyAJumpCounter,X                    ; clear
C - - - - - 0x01F3D8 07:F3C8: 9D 22 03  STA vEnemyAProjectileStatus,X               ; clear
C - - - - - 0x01F3DB 07:F3CB: 9D 24 03  STA ram_0324,X                              ; !(UNUSED), not used
C - - - - - 0x01F3DE 07:F3CE: B9 1C BD  LDA tbl_ptr_enemy_t3_sprite_params_,Y       ;
C - - - - - 0x01F3E1 07:F3D1: 9D 26 03  STA vEnemyAProjectileIsUsed,X               ;
C - - - - - 0x01F3E4 07:F3D4: B9 1D BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 1,Y   ;
C - - - - - 0x01F3E7 07:F3D7: 9D 50 03  STA vEnemyAHealthPoints,X                   ; set enemy HP
C - - - - - 0x01F3EA 07:F3DA: B9 1E BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 2,Y   ; CONSTANT for CHR ROM
C - - - - - 0x01F3ED 07:F3DD: 30 03     BMI @bra_F3E2_skip                          ; If CHR ROM is 0%1XXXXXXX, i.e. not used
C - - - - - 0x01F3EF 07:F3DF: 8D B3 06  STA vCacheChrBankSelect + 4                 ;
@bra_F3E2_skip:
C - - - - - 0x01F3F2 07:F3E2: B9 1F BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 3,Y   ; CONSTANT for CHR ROM
C - - - - - 0x01F3F5 07:F3E5: 30 03     BMI @bra_F3EA_skip                          ; If CHR ROM is 0%1XXXXXXX, i.e. not used
C - - - - - 0x01F3F7 07:F3E7: 8D B4 06  STA vCacheChrBankSelect + 5                 ;
@bra_F3EA_skip:
C - - - - - 0x01F3FA 07:F3EA: B9 20 BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 4,Y   ; the offset for sprite_magic2
C - - - - - 0x01F3FD 07:F3ED: 8D 02 03  STA vEnemyASpriteMagic2                     ;
C - - - - - 0x01F400 07:F3F0: B9 21 BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 5,Y   ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F403 07:F3F3: 8D 03 03  STA vEnemyASpriteMagic3                     ;
C - - - - - 0x01F406 07:F3F6: B9 22 BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 6,Y   ;
C - - - - - 0x01F409 07:F3F9: 8D 04 03  STA vEnemyASpriteMagic2Ex1                  ;
C - - - - - 0x01F40C 07:F3FC: B9 23 BD  LDA tbl_ptr_enemy_t3_sprite_params_ + 7,Y   ;
C - - - - - 0x01F40F 07:F3FF: 8D 05 03  STA vEnemyASpriteMagic2Ex2                  ;
C - - - - - 0x01F412 07:F402: AD 00 03  LDA vEnemyA                                 ;
C - - - - - 0x01F415 07:F405: C9 01     CMP #$01                                    ; CONSTANT - Cat with the gun
C - - - - - 0x01F417 07:F407: D0 09     BNE @bra_F412_skip                          ; If vEnemyA != 0x01
C - - - - - 0x01F419 07:F409: A5 0C     LDA ram_000C                                ;
C - - - - - 0x01F41B 07:F40B: 29 80     AND #$80                                    ; CONSTANT - the projectile is used
C - - - - - 0x01F41D 07:F40D: 9D 26 03  STA vEnemyAProjectileIsUsed,X               ;
C - - - - - 0x01F420 07:F410: D0 15     BNE bra_F427_finish                         ; If the projectile is used
@bra_F412_skip:
C - - - - - 0x01F422 07:F412: C9 38     CMP #$38                                    ; CONSTANT - Ninja upside down
C - - - - - 0x01F424 07:F414: F0 09     BEQ @bra_F41F_ninja                         ; If vEnemyA == 0x38
C - - - - - 0x01F426 07:F416: C9 1C     CMP #$1C                                    ; CONSTANT - Knight in armor with a shield
C - - - - - 0x01F428 07:F418: D0 10     BNE bra_F42A_prepare_jump                   ; If vEnemyA != 0x1C
C - - - - - 0x01F42A 07:F41A: A9 30     LDA #$30                                    ;
C - - - - - 0x01F42C 07:F41C: 9D 4A 03  STA vEnemyAJumpCounter,X                    ; Initializes a jump status by default
@bra_F41F_ninja:
C - - - - - 0x01F42F 07:F41F: BD 20 03  LDA vEnemyAStatus,X                         ;
C - - - - - 0x01F432 07:F422: 09 08     ORA #$08                                    ; CONSTANT - 'shoot' status
C - - - - - 0x01F434 07:F424: 9D 20 03  STA vEnemyAStatus,X                         ; set 'shoot' status by default
bra_F427_finish:
C - - - - - 0x01F437 07:F427: 4C 4A F8  JMP loc_F84A_finish_creating_enemyA         ;

; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
bra_F42A_prepare_jump:
C - - - - - 0x01F43A 07:F42A: A0 00     LDY #$00                                    ; a jump type #1
C - - - - - 0x01F43C 07:F42C: A5 0B     LDA ram_000B                                ;
C - - - - - 0x01F43E 07:F42E: 6A        ROR                                         ;
C - - - - - 0x01F43F 07:F42F: 90 02     BCC @bra_F433_right                         ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F441 07:F431: A0 08     LDY #$08                                    ; a jump type #2
@bra_F433_right:
C - - - - - 0x01F443 07:F433: 98        TYA                                         ;
C - - - - - 0x01F444 07:F434: 9D 56 03  STA vEnemyAJumpType,X                       ; initializes a jump type
C - - - - - 0x01F447 07:F437: A9 10     LDA #$10                                    ; 
C - - - - - 0x01F449 07:F439: 9D 4A 03  STA vEnemyAJumpCounter,X                    ; initializes a jump counter
C - - - - - 0x01F44C 07:F43C: D0 E9     BNE bra_F427_finish                         ; Always true

; Template 4
; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
loc_F43E_enemy_appearance_t4:
C - - J - - 0x01F44E 07:F43E: 20 8A F3  JSR sub_F38A_start_enemyB_appearance        ;
C - - - - - 0x01F451 07:F441: A0 00     LDY #$00                                    ; params #1
C - - - - - 0x01F453 07:F443: AD 01 03  LDA vEnemyB                                 ;
C - - - - - 0x01F456 07:F446: C9 02     CMP #$02                                    ; CONSTANT - Gray land hat
C - - - - - 0x01F458 07:F448: F0 1A     BEQ @bra_F464_skip                          ; If vEnemyB == 0x02
C - - - - - 0x01F45A 07:F44A: A0 08     LDY #$08                                    ; params #2
C - - - - - 0x01F45C 07:F44C: C9 03     CMP #$03                                    ; CONSTANT - Black land hat
C - - - - - 0x01F45E 07:F44E: F0 14     BEQ @bra_F464_skip                          ; If vEnemyB == 0x03
C - - - - - 0x01F460 07:F450: A0 10     LDY #$10                                    ; params #3
C - - - - - 0x01F462 07:F452: C9 0E     CMP #$0E                                    ; CONSTANT - Bat
C - - - - - 0x01F464 07:F454: F0 0E     BEQ @bra_F464_skip                          ; If vEnemyB == 0x0E
C - - - - - 0x01F466 07:F456: A0 18     LDY #$18                                    ; params #4
C - - - - - 0x01F468 07:F458: C9 12     CMP #$12                                    ; CONSTANT - Batterfly
C - - - - - 0x01F46A 07:F45A: F0 08     BEQ @bra_F464_skip                          ; If vEnemyB == 0x12
C - - - - - 0x01F46C 07:F45C: A0 20     LDY #$20                                    ; params #5
C - - - - - 0x01F46E 07:F45E: C9 13     CMP #$13                                    ; CONSTANT - Broned batterfly
C - - - - - 0x01F470 07:F460: F0 02     BEQ @bra_F464_skip                          ; If vEnemyB == 0x13
C - - - - - 0x01F472 07:F462: A0 28     LDY #$28                                    ; params #6
@bra_F464_skip:
C - - - - - 0x01F474 07:F464: A5 0B     LDA ram_000B                                ;
C - - - - - 0x01F476 07:F466: 6A        ROR                                         ;
C - - - - - 0x01F477 07:F467: 90 05     BCC @bra_F46E_right                         ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F479 07:F469: 98        TYA                                         ;
C - - - - - 0x01F47A 07:F46A: 18        CLC                                         ;
C - - - - - 0x01F47B 07:F46B: 69 04     ADC #$04                                    ; an offset on 4 bytes for the left direction
C - - - - - 0x01F47D 07:F46D: A8        TAY                                         ;
@bra_F46E_right:
C - - - - - 0x01F47E 07:F46E: B9 9C BD  LDA tbl_ptr_enemy_t4_sprite_params_,Y       ;
C - - - - - 0x01F481 07:F471: 9D 62 03  STA vEnemyBSoarFlags,X                      ;
C - - - - - 0x01F484 07:F474: A9 00     LDA #$00                                    ;
C - - - - - 0x01F486 07:F476: 9D 80 03  STA vEnemyBFrame_Counter,X                  ; Initializes a frame counter
C - - - - - 0x01F489 07:F479: A9 40     LDA #$40                                    ;
C - - - - - 0x01F48B 07:F47B: 9D 86 03  STA vEnemyBJumpCounter,X                    ; Initializes a jump counter
C - - - - - 0x01F48E 07:F47E: B9 9D BD  LDA tbl_ptr_enemy_t4_sprite_params_ + 1,Y   ;
C - - - - - 0x01F491 07:F481: 9D 92 03  STA vEnemyBJumpType,X                       ; Initializes a jump type
C - - - - - 0x01F494 07:F484: B9 9E BD  LDA tbl_ptr_enemy_t4_sprite_params_ + 2,Y   ;
C - - - - - 0x01F497 07:F487: 9D 5C 03  STA vEnemyBStatus,X                         ;
C - - - - - 0x01F49A 07:F48A: B9 9F BD  LDA tbl_ptr_enemy_t4_sprite_params_ + 3,Y   ; CONSTANT for CHR ROM
C - - - - - 0x01F49D 07:F48D: AC 01 03  LDY vEnemyB                                 ;
C - - - - - 0x01F4A0 07:F490: C0 03     CPY #$03                                    ; CONSTANT - Black land hat
C - - - - - 0x01F4A2 07:F492: F0 09     BEQ @bra_F49D_black_hat                     ; If vEnemyB == 0x03
C - - - - - 0x01F4A4 07:F494: C0 27     CPY #$27                                    ; CONSTANT - Gargoyle
C - - - - - 0x01F4A6 07:F496: F0 1E     BEQ bra_F4B6_gargoyle                       ; If vEnemyB == 0x27
C - - - - - 0x01F4A8 07:F498: 8D B3 06  STA vCacheChrBankSelect + 4                 ;
C - - - - - 0x01F4AB 07:F49B: D0 03     BNE @bra_F4A0_skip                          ; Always true (A != 0x00)

@bra_F49D_black_hat:
C - - - - - 0x01F4AD 07:F49D: 8D B4 06  STA vCacheChrBankSelect + 5                 ; <~ CONSTANT for CHR ROM
@bra_F4A0_skip:
C - - - - - 0x01F4B0 07:F4A0: A9 00     LDA #$00                                    ; the offset for sprite_magic2 (Offset: $0000)
C - - - - - 0x01F4B2 07:F4A2: 8D 06 03  STA vEnemyBSpriteMagic2                     ;
C - - - - - 0x01F4B5 07:F4A5: A0 43     LDY #$43                                    ; for sprite_magic3 (see v_sprite_magic3) (Bank 05, Page 2, $8100)
C - - - - - 0x01F4B7 07:F4A7: AD 01 03  LDA vEnemyB                                 ;
C - - - - - 0x01F4BA 07:F4AA: C9 03     CMP #$03                                    ; CONSTANT - Black land hat
C - - - - - 0x01F4BC 07:F4AC: D0 02     BNE @bra_F4B0_skip                          ; If vEnemyB != 0x03
C - - - - - 0x01F4BE 07:F4AE: A0 47     LDY #$47                                    ; for sprite_magic3 (see v_sprite_magic3)
@bra_F4B0_skip:
C - - - - - 0x01F4C0 07:F4B0: 8C 07 03  STY vEnemyBSpriteMagic3                     ;
C - - - - - 0x01F4C3 07:F4B3: 4C 20 F8  JMP loc_F820_finish_creating_enemyB         ;

; In; Register A - CONSTANT for CHR ROM
bra_F4B6_gargoyle:
C - - - - - 0x01F4C6 07:F4B6: 8D B4 06  STA vCacheChrBankSelect + 5                 ;
C - - - - - 0x01F4C9 07:F4B9: A9 02     LDA #$02                                    ;
C - - - - - 0x01F4CB 07:F4BB: 9D 8C 03  STA vEnemyBHealthPoints,X                   ; initializes the health points
C - - - - - 0x01F4CE 07:F4BE: A9 30     LDA #$30                                    ; the offset for sprite_magic2 (Offset: $0030)
C - - - - - 0x01F4D0 07:F4C0: 8D 06 03  STA vEnemyBSpriteMagic2                     ;
C - - - - - 0x01F4D3 07:F4C3: A9 07     LDA #$07                                    ;
C - - - - - 0x01F4D5 07:F4C5: 8D 07 03  STA vEnemyBSpriteMagic3                     ; <~ sprite_magic3 (see v_sprite_magic3) (Bank 05, Page 2, $8000)
C - - - - - 0x01F4D8 07:F4C8: 4C 20 F8  JMP loc_F820_finish_creating_enemyB         ;

; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
loc_F3A2_land_diver_enemy:
C - - J - - 0x01F4DB 07:F4CB: A2 01     LDX #$01                            ; X <~ 1
C - - - - - 0x01F4DD 07:F4CD: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x01F4E0 07:F4D0: 10 01     BPL @bra_F4D3_skip                  ; If vEnemyAStatus2 < 0x80
C - - - - - 0x01F4E2 07:F4D2: CA        DEX                                 ; X <~ 0
@bra_F4D3_skip:
C - - - - - 0x01F4E3 07:F4D3: A5 0B     LDA ram_000B                        ;
C - - - - - 0x01F4E5 07:F4D5: 6A        ROR                                 ;
C - - - - - 0x01F4E6 07:F4D6: 90 13     BCC @bra_F4EB_skip                  ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F4E8 07:F4D8: A5 01     LDA ram_0001                        ;
C - - - - - 0x01F4EA 07:F4DA: 38        SEC                                 ;
C - - - - - 0x01F4EB 07:F4DB: E9 18     SBC #$18                            ;
C - - - - - 0x01F4ED 07:F4DD: 9D 38 03  STA vEnemyAPosXLow,X                ; store (X-position - 0x18)
C - - - - - 0x01F4F0 07:F4E0: A5 00     LDA ram_0000                        ;
C - - - - - 0x01F4F2 07:F4E2: E9 00     SBC #$00                            ;
C - - - - - 0x01F4F4 07:F4E4: 9D 3E 03  STA vEnemyAPosXHigh,X               ; store macro X-position (-1 with overflow)
C - - - - - 0x01F4F7 07:F4E7: A9 C5     LDA #$C5                            ; CONSTANT - the start status (Y,L,N - see vEnemyAStatus)
C - - - - - 0x01F4F9 07:F4E9: D0 11     BNE bra_F4FC                        ; Always true

@bra_F4EB_skip:
C - - - - - 0x01F4FB 07:F4EB: A5 01     LDA ram_0001                        ;
C - - - - - 0x01F4FD 07:F4ED: 18        CLC                                 ;
C - - - - - 0x01F4FE 07:F4EE: 69 18     ADC #$18                            ;
C - - - - - 0x01F500 07:F4F0: 9D 38 03  STA vEnemyAPosXLow,X                ; store (X-position + 0x18)
C - - - - - 0x01F503 07:F4F3: A5 00     LDA ram_0000                        ;
C - - - - - 0x01F505 07:F4F5: 69 00     ADC #$00                            ;
C - - - - - 0x01F507 07:F4F7: 9D 3E 03  STA vEnemyAPosXHigh,X               ; store macro X-position (+1 with overflow)
C - - - - - 0x01F50A 07:F4FA: A9 C4     LDA #$C4                            ; CONSTANT - the start status (Y,L - see vEnemyAStatus)
bra_F4FC:
C - - - - - 0x01F50C 07:F4FC: 9D 20 03  STA vEnemyAStatus,X                 ; store 0xC4 or 0xC5
C - - - - - 0x01F50F 07:F4FF: A5 02     LDA ram_0002                        ;
C - - - - - 0x01F511 07:F501: 9D 2C 03  STA vEnemyAPosY,X                   ; store Y-position
C - - - - - 0x01F514 07:F504: A9 10     LDA #$10                            ;
C - - - - - 0x01F516 07:F506: 9D 4A 03  STA vEnemyAJumpCounter,X            ; initializes a jump counter 
C - - - - - 0x01F519 07:F509: A9 00     LDA #$00                            ;
C - - - - - 0x01F51B 07:F50B: 9D 44 03  STA vEnemyAFrame_Counter,X          ; reset a frame counter
C - - - - - 0x01F51E 07:F50E: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x01F521 07:F511: C9 05     CMP #$05                            ; CONSTANT - Land Diver from level 2
C - - - - - 0x01F523 07:F513: F0 08     BEQ @bra_F51D_from_level2           ; If vEnemyA == 0x05
C - - - - - 0x01F525 07:F515: C9 06     CMP #$06                            ; CONSTANT - Land Diver from level 3
C - - - - - 0x01F527 07:F517: F0 0D     BEQ @bra_F526_from_level1           ; If vEnemyA == 0x06
C - - - - - 0x01F529 07:F519: A9 0C     LDA #$0C                            ; CONSTANT for CHR ROM
C - - - - - 0x01F52B 07:F51B: D0 0B     BNE @bra_F528_from_level3           ; Always true

@bra_F51D_from_level2:
C - - - - - 0x01F52D 07:F51D: A9 12     LDA #$12                            ; CONSTANT for CHR ROM
C - - - - - 0x01F52F 07:F51F: 8D B4 06  STA vCacheChrBankSelect + 5         ;
C - - - - - 0x01F532 07:F522: A9 46     LDA #$46                            ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F534 07:F524: D0 07     BNE @bra_F52D_skip                  ; Always true

@bra_F526_from_level1:
C - - - - - 0x01F536 07:F526: A9 14     LDA #$14                            ; CONSTANT for CHR ROM
@bra_F528_from_level3:
C - - - - - 0x01F538 07:F528: 8D B3 06  STA vCacheChrBankSelect + 4         ;
C - - - - - 0x01F53B 07:F52B: A9 42     LDA #$42                            ; <~ sprite_magic3 (see v_sprite_magic3)
@bra_F52D_skip:
C - - - - - 0x01F53D 07:F52D: 8D 03 03  STA vEnemyASpriteMagic3             ;
C - - - - - 0x01F540 07:F530: A9 2A     LDA #$2A                            ; Enemy pops up (sound effect)
C - - - - - 0x01F542 07:F532: 20 20 C4  JSR sub_C420_add_sound_effect       ;
C - - - - - 0x01F545 07:F535: A9 0C     LDA #$0C                            ; the offset for sprite_magic2 (Bank 05, Page 2, $8100 + $000C)
C - - - - - 0x01F547 07:F537: 8D 02 03  STA vEnemyASpriteMagic2             ;
C - - - - - 0x01F54A 07:F53A: 4C 4A F8  JMP loc_F84A_finish_creating_enemyA ;

; In: $0000 - macro X-position
; In: $0001 - X-position
loc_F53D_bazooka_enemy:
C - - J - - 0x01F54D 07:F53D: A2 01     LDX #$01                            ; X <~ 1
C - - - - - 0x01F54F 07:F53F: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x01F552 07:F542: 30 06     BMI @bra_F54A_check_position        ; If vEnemyAStatus2 is used
C - - - - - 0x01F554 07:F544: CA        DEX                                 ; X <~ 0
C - - - - - 0x01F555 07:F545: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x01F558 07:F548: 10 13     BPL bra_F55D_continue               ; If vEnemyAStatus < 0x80, i.e. vEnemyAStatus2 isn't used
@bra_F54A_check_position:
C - - - - - 0x01F55A 07:F54A: A5 00     LDA ram_0000                        ;
C - - - - - 0x01F55C 07:F54C: 38        SEC                                 ;
C - - - - - 0x01F55D 07:F54D: FD 3E 03  SBC vEnemyAPosXHigh,X               ;
C - - - - - 0x01F560 07:F550: A5 01     LDA ram_0001                        ;
C - - - - - 0x01F562 07:F552: FD 38 03  SBC vEnemyAPosXLow,X                ;
C - - - - - 0x01F565 07:F555: D0 06     BNE bra_F55D_continue               ; If [$0000:$0001] != [He:Le]
C - - - - - 0x01F567 07:F557: 20 8F D7  JSR sub_D78F_dec_enemyA_counter     ; !(UNUSED), not used
C - - - - - 0x01F56A 07:F55A: 68        PLA                                 ; !(UNUSED), not used
C - - - - - 0x01F56B 07:F55B: 68        PLA                                 ; !(UNUSED), not used
C - - - - - 0x01F56C 07:F55C: 60        RTS                                 ; !(UNUSED), not used

; In: Register X - the enemyA number
bra_F55D_continue:
C - - - - - 0x01F56D 07:F55D: 20 72 F3  JSR sub_F372_start_enemyA_appearance      ;
C - - - - - 0x01F570 07:F560: 20 59 F3  JSR sub_F359_prepare_enemyA_start_status  ;
C - - - - - 0x01F573 07:F563: A9 00     LDA #$00                                  ;
C - - - - - 0x01F575 07:F565: 9D 22 03  STA vEnemyAProjectileStatus,X             ; reset a status
C - - - - - 0x01F578 07:F568: 9D 24 03  STA vEnemyAProjectileStatus + 2,X         ; reset a status
C - - - - - 0x01F57B 07:F56B: AD 00 03  LDA vEnemyA                               ;
C - - - - - 0x01F57E 07:F56E: C9 08     CMP #$08                                  ; CONSTANT - Shooter with bazooka (level 3)
C - - - - - 0x01F580 07:F570: F0 0C     BEQ @bra_F57E_skip                        ; If vEnemyA == 0x08
C - - - - - 0x01F582 07:F572: C9 20     CMP #$20                                  ; CONSTANT - Shooter with bazooka (level 1)
C - - - - - 0x01F584 07:F574: F0 04     BEQ @bra_F57A_skip                        ; If vEnemyA == 0x20
C - - - - - 0x01F586 07:F576: A9 11     LDA #$11                                  ; CONSTANT for CHR ROM #1
C - - - - - 0x01F588 07:F578: D0 06     BNE @bra_F580_skip                        ; Always true

@bra_F57A_skip:
C - - - - - 0x01F58A 07:F57A: A9 15     LDA #$15                                  ; CONSTANT for CHR ROM #2
C - - - - - 0x01F58C 07:F57C: D0 02     BNE @bra_F580_skip                        ; Always true

@bra_F57E_skip:
C - - - - - 0x01F58E 07:F57E: A9 0D     LDA #$0D                                  ; CONSTANT for CHR ROM #3
@bra_F580_skip:
C - - - - - 0x01F590 07:F580: 8D B4 06  STA vCacheChrBankSelect + 5               ;
C - - - - - 0x01F593 07:F583: A9 46     LDA #$46                                  ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F595 07:F585: 8D 03 03  STA vEnemyASpriteMagic3                   ;
C - - - - - 0x01F598 07:F588: A9 70     LDA #$70                                  ; the offset for sprite_magic2 (Bank 05, Page 2, $8100 + $0070)
C - - - - - 0x01F59A 07:F58A: 8D 02 03  STA vEnemyASpriteMagic2                   ;
C - - - - - 0x01F59D 07:F58D: 4C 4A F8  JMP loc_F84A_finish_creating_enemyA       ;

; Template 2
; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
loc_F590_enemy_appearance_t2:
C - - J - - 0x01F5A0 07:F590: 20 8A F3  JSR sub_F38A_start_enemyB_appearance        ;
C - - - - - 0x01F5A3 07:F593: 20 60 F3  JSR sub_F360_prepare_enemyB_start_status    ;
C - - - - - 0x01F5A6 07:F596: A0 00     LDY #$00                                    ; set loop counter
C - - - - - 0x01F5A8 07:F598: AD 01 03  LDA vEnemyB                                 ;
@bra_F59B_loop:                                                                     ; loop by y (6 times)
C - - - - - 0x01F5AB 07:F59B: D9 CC BD  CMP tbl_ptr_enemy_t2_types_for_sprites,Y    ;
C - - - - - 0x01F5AE 07:F59E: F0 05     BEQ @bra_F5A5_skip                          ; If vEnemyB == the current type in the table
C - - - - - 0x01F5B0 07:F5A0: C8        INY                                         ; increment loop counter
C - - - - - 0x01F5B1 07:F5A1: C0 06     CPY #$06                                    ;
C - - - - - 0x01F5B3 07:F5A3: D0 F6     BNE @bra_F59B_loop                          ; If Register Y != 0x06
@bra_F5A5_skip:
C - - - - - 0x01F5B5 07:F5A5: 98        TYA                                         ;
C - - - - - 0x01F5B6 07:F5A6: 0A        ASL                                         ;
C - - - - - 0x01F5B7 07:F5A7: 0A        ASL                                         ; *4, because the set of 4th bytes
C - - - - - 0x01F5B8 07:F5A8: A8        TAY                                         ;
C - - - - - 0x01F5B9 07:F5A9: A9 00     LDA #$00                                    ;
C - - - - - 0x01F5BB 07:F5AB: 9D 80 03  STA vEnemyBFrame_Counter,X                  ; reset a frame counter
C - - - - - 0x01F5BE 07:F5AE: 9D 86 03  STA vEnemyBJumpCounter,X                    ; clear
C - - - - - 0x01F5C1 07:F5B1: B9 D2 BD  LDA tbl_ptr_enemy_t2_sprite_params_,Y       ; CONSTANT for CHR ROM
C - - - - - 0x01F5C4 07:F5B4: 30 03     BMI @bra_F5B9_skip                          ; If CHR ROM is 0%1XXXXXXX, i.e. not used
C - - - - - 0x01F5C6 07:F5B6: 8D B3 06  STA vCacheChrBankSelect + 4                 ;
@bra_F5B9_skip:
C - - - - - 0x01F5C9 07:F5B9: B9 D3 BD  LDA tbl_ptr_enemy_t2_sprite_params_ + 1,Y   ; CONSTANT for CHR ROM
C - - - - - 0x01F5CC 07:F5BC: 30 03     BMI @bra_F5C1_skip                          ; If CHR ROM is 0%1XXXXXXX, i.e. not used
C - - - - - 0x01F5CE 07:F5BE: 8D B4 06  STA vCacheChrBankSelect + 5                 ;
@bra_F5C1_skip:
C - - - - - 0x01F5D1 07:F5C1: B9 D4 BD  LDA tbl_ptr_enemy_t2_sprite_params_ + 2,Y   ; the offset for sprite_magic2 (Bank 05, Page 2, $8100 + $00C0)
C - - - - - 0x01F5D4 07:F5C4: 8D 06 03  STA vEnemyBSpriteMagic2                     ;
C - - - - - 0x01F5D7 07:F5C7: B9 D5 BD  LDA tbl_ptr_enemy_t2_sprite_params_ + 3,Y   ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F5DA 07:F5CA: 8D 07 03  STA vEnemyBSpriteMagic3                     ;
C - - - - - 0x01F5DD 07:F5CD: AD 01 03  LDA vEnemyB                                 ;
C - - - - - 0x01F5E0 07:F5D0: C9 22     CMP #$22                                    ; CONSTANT - The bird
C - - - - - 0x01F5E2 07:F5D2: F0 0F     BEQ bra_F5E3_bird                           ;
C - - - - - 0x01F5E4 07:F5D4: C9 23     CMP #$23                                    ; CONSTANT - The bird with a bomb
C - - - - - 0x01F5E6 07:F5D6: F0 13     BEQ bra_F5EB_bombing_bird                   ;
C - - - - - 0x01F5E8 07:F5D8: C9 21     CMP #$21                                    ; CONSTANT - Cobblestone
C - - - - - 0x01F5EA 07:F5DA: F0 1B     BEQ bra_F5F7_cobblestone                    ;
C - - - - - 0x01F5EC 07:F5DC: C9 34     CMP #$34                                    ; CONSTANT - Potted snakes
C - - - - - 0x01F5EE 07:F5DE: F0 25     BEQ bra_F605_potted_snakes                  ;
C - - - - - 0x01F5F0 07:F5E0: 4C 20 F8  JMP loc_F820_finish_creating_enemyB         ;

bra_F5E3_bird:
C - - - - - 0x01F5F3 07:F5E3: A5 0B     LDA ram_000B                                ;
C - - - - - 0x01F5F5 07:F5E5: 6A        ROR                                         ;
C - - - - - 0x01F5F6 07:F5E6: 90 33     BCC bra_F61B_cancel_creating                ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F5F8 07:F5E8: 4C 20 F8  JMP loc_F820_finish_creating_enemyB         ;

; In: Register X - the enemyB number
bra_F5EB_bombing_bird:
C - - - - - 0x01F5FB 07:F5EB: 20 21 F6  JSR sub_F621_set_projectile_params_         ;
C - - - - - 0x01F5FE 07:F5EE: BD 68 03  LDA vEnemyBPosY,X                           ;
C - - - - - 0x01F601 07:F5F1: 18        CLC                                         ;
C - - - - - 0x01F602 07:F5F2: 69 08     ADC #$08                                    ;
C - - - - - 0x01F604 07:F5F4: 9D 6A 03  STA vEnemyBProjectilePosY,X                 ; bomb Y-position <~ enemy Y-position + 8
bra_F5F7_cobblestone:
C - - - - - 0x01F607 07:F5F7: A5 46     LDA vNoRoom                                 ;
C - - - - - 0x01F609 07:F5F9: C9 19     CMP #$19                                    ; CONSTANT - level racing
C - - - - - 0x01F60B 07:F5FB: D0 05     BNE bra_F602_skip                           ; If vNoRoom != 0x19
C - - - - - 0x01F60D 07:F5FD: A5 0B     LDA ram_000B                                ;
C - - - - - 0x01F60F 07:F5FF: 6A        ROR                                         ;
C - - - - - 0x01F610 07:F600: 90 19     BCC bra_F61B_cancel_creating                ; if $000B == 0x00 (the right direction)
bra_F602_skip:
C - - - - - 0x01F612 07:F602: 4C 20 F8  JMP loc_F820_finish_creating_enemyB         ;

; In: Register X - the enemyB number
bra_F605_potted_snakes:
C - - - - - 0x01F615 07:F605: 20 21 F6  JSR sub_F621_set_projectile_params_   ;
C - - - - - 0x01F618 07:F608: 09 10     ORA #$10                              ; CONSTANT - crawling out
C - - - - - 0x01F61A 07:F60A: 9D 5C 03  STA vEnemyBStatus,X                   ;
C - - - - - 0x01F61D 07:F60D: BD 68 03  LDA vEnemyBPosY,X                     ;
C - - - - - 0x01F620 07:F610: 9D 6A 03  STA vEnemyBProjectilePosY,X           ; bomb Y-position <~ enemy Y-position
C - - - - - 0x01F623 07:F613: A9 40     LDA #$40                              ;
C - - - - - 0x01F625 07:F615: 9D 86 03  STA vEnemyBJumpCounter,X              ; Initializes a counter of the crawling out
C - - - - - 0x01F628 07:F618: 4C 20 F8  JMP loc_F820_finish_creating_enemyB   ;

; In: Register X - the enemyB number
loc_F61B_cancel_creating:
bra_F61B_cancel_creating:
C D 3 - - - 0x01F62B 07:F61B: 20 7E D8  JSR sub_D87E_free_enemyB_while_creating  ;
C - - - - - 0x01F62E 07:F61E: 68        PLA                                      ;
C - - - - - 0x01F62F 07:F61F: 68        PLA                                      ; double return (i.e. $F6E7 -> $F108)
C - - - - - 0x01F630 07:F620: 60        RTS                                      ;

; In: Register X - the enemyB number
sub_F621_set_projectile_params_:
C - - - - - 0x01F631 07:F621: BD 74 03  LDA vEnemyBPosXLow,X              ;
C - - - - - 0x01F634 07:F624: 9D 76 03  STA vEnemyBProjectilePosXLow,X    ;
C - - - - - 0x01F637 07:F627: BD 7A 03  LDA vEnemyBPosXHigh,X             ;
C - - - - - 0x01F63A 07:F62A: 9D 7C 03  STA vEnemyBProjectilePosXHigh,X   ;
C - - - - - 0x01F63D 07:F62D: BD 5C 03  LDA vEnemyBStatus,X               ;
C - - - - - 0x01F640 07:F630: 9D 5E 03  STA vEnemyBBombStatus,X           ; for potted snakes this value is unused
C - - - - - 0x01F643 07:F633: 60        RTS                               ;

; In: $0000 - macro X-position
; In: $0001 - X-position
loc_F634_trap_appearance:
C - - J - - 0x01F644 07:F634: 20 39 F3  JSR sub_F339_check_position                ;
C - - - - - 0x01F647 07:F637: 20 8A F3  JSR sub_F38A_start_enemyB_appearance       ;
C - - - - - 0x01F64A 07:F63A: A9 C0     LDA #$C0                                   ;
C - - - - - 0x01F64C 07:F63C: 9D 5C 03  STA vEnemyBStatus,X                        ; initializes a default status
C - - - - - 0x01F64F 07:F63F: A0 0E     LDY #$0E                                   ; CONSTANT for CHR ROM #1
C - - - - - 0x01F651 07:F641: AD 01 03  LDA vEnemyB                                ;
C - - - - - 0x01F654 07:F644: C9 0D     CMP #$0D                                   ; CONSTANT - Sensor (3 level)
C - - - - - 0x01F656 07:F646: F0 1C     BEQ @bra_F664_skip                         ; If EnemyB == 0x0D
C - - - - - 0x01F658 07:F648: A0 19     LDY #$19                                   ; CONSTANT for CHR ROM #2
C - - - - - 0x01F65A 07:F64A: C9 39     CMP #$39                                   ; CONSTANT - Sensor (4 level)
C - - - - - 0x01F65C 07:F64C: F0 16     BEQ @bra_F664_skip                         ; If EnemyB == 0x39
C - - - - - 0x01F65E 07:F64E: A0 12     LDY #$12                                   ; CONSTANT for CHR ROM #3
C - - - - - 0x01F660 07:F650: C9 15     CMP #$15                                   ; CONSTANT - Sensor (2 level)
C - - - - - 0x01F662 07:F652: F0 10     BEQ @bra_F664_skip                         ; If EnemyB == 0x15
C - - - - - 0x01F664 07:F654: A0 16     LDY #$16                                   ; CONSTANT for CHR ROM #4
C - - - - - 0x01F666 07:F656: C9 1E     CMP #$1E                                   ; CONSTANT - Sensor (1 level)
C - - - - - 0x01F668 07:F658: F0 0A     BEQ @bra_F664_skip                         ; If EnemyB == 0x1E
C - - - - - 0x01F66A 07:F65A: 20 60 F3  JSR sub_F360_prepare_enemyB_start_status   ;
C - - - - - 0x01F66D 07:F65D: A9 00     LDA #$00                                   ;
C - - - - - 0x01F66F 07:F65F: 9D 86 03  STA vEnemyBJumpCounter,X                   ; Initializes a jump counter
C - - - - - 0x01F672 07:F662: A0 18     LDY #$18                                   ; CONSTANT for CHR ROM #5
@bra_F664_skip:
C - - - - - 0x01F674 07:F664: 8C B4 06  STY vCacheChrBankSelect + 5                ;
C - - - - - 0x01F677 07:F667: 4C 20 F8  JMP loc_F820_finish_creating_enemyB        ;

; Template 5
; In: $000B - the direction of appearance (0x00 - right, 0x01 - left)
loc_F66A_enemy_appearance_t5:
C - - J - - 0x01F67A 07:F66A: 20 72 F3  JSR sub_F372_start_enemyA_appearance   ;
C - - - - - 0x01F67D 07:F66D: A0 D0     LDY #$D0                               ; CONSTANT - the start status (Y + 'squatting' - see vEnemyAStatus)
C - - - - - 0x01F67F 07:F66F: A5 0B     LDA ram_000B                           ;
C - - - - - 0x01F681 07:F671: 6A        ROR                                    ;
C - - - - - 0x01F682 07:F672: 90 02     BCC @bra_F676_skip                     ; if $000B == 0x00 (the right direction)
C - - - - - 0x01F684 07:F674: A0 D1     LDY #$D1                               ; CONSTANT - the start status (Y + 'squatting' + 'direction' - see vEnemyAStatus)
@bra_F676_skip:
C - - - - - 0x01F686 07:F676: 98        TYA                                    ;
C - - - - - 0x01F687 07:F677: 9D 20 03  STA vEnemyAStatus,X                    ; Initializes a status (0xD0 or 0xD1)
C - - - - - 0x01F68A 07:F67A: A9 10     LDA #$10                               ;
C - - - - - 0x01F68C 07:F67C: 9D 4A 03  STA vEnemyAJumpCounter,X               ; initializes a jump counter 
C - - - - - 0x01F68F 07:F67F: AD 00 03  LDA vEnemyA                            ;
C - - - - - 0x01F692 07:F682: C9 10     CMP #$10                               ; CONSTANT - Nun
C - - - - - 0x01F694 07:F684: F0 0E     BEQ @bra_F694_nun                      ; If EnemyA == 0x10
C - - - - - 0x01F696 07:F686: A9 5A     LDA #$5A                               ; the offset for sprite_magic2 (Bank 05, Page 2, $8100 + $005A)
C - - - - - 0x01F698 07:F688: 8D 02 03  STA vEnemyASpriteMagic2                ;
C - - - - - 0x01F69B 07:F68B: A9 46     LDA #$46                               ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F69D 07:F68D: 8D 03 03  STA vEnemyASpriteMagic3                ;
C - - - - - 0x01F6A0 07:F690: A9 0D     LDA #$0D                               ; CONSTANT for CHR ROM #1
C - - - - - 0x01F6A2 07:F692: D0 11     BNE @bra_F6A5_skip                     ; Always true

@bra_F694_nun:
C - - - - - 0x01F6A4 07:F694: A9 02     LDA #$02                               ;
C - - - - - 0x01F6A6 07:F696: 9D 50 03  STA vEnemyAHealthPoints,X              ; Enemy HP <~ 2 points
C - - - - - 0x01F6A9 07:F699: A9 00     LDA #$00                               ; the offset for sprite_magic2 (Bank 05, Page 2, $8200 + $0000)
C - - - - - 0x01F6AB 07:F69B: 8D 02 03  STA vEnemyASpriteMagic2                ;
C - - - - - 0x01F6AE 07:F69E: A9 86     LDA #$86                               ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F6B0 07:F6A0: 8D 03 03  STA vEnemyASpriteMagic3                ;
C - - - - - 0x01F6B3 07:F6A3: A9 11     LDA #$11                               ; CONSTANT for CHR ROM #2
@bra_F6A5_skip:
C - - - - - 0x01F6B5 07:F6A5: 8D B4 06  STA vCacheChrBankSelect + 5            ;
C - - - - - 0x01F6B8 07:F6A8: 4C 4A F8  JMP loc_F84A_finish_creating_enemyA    ;

; In: $0001 - X-position
; In: Register X - the enemyA number
loc_F6AB_lift:
C - - J - - 0x01F6BB 07:F6AB: A2 00     LDX #$00                        ; <~ the enemyA number
C - - - - - 0x01F6BD 07:F6AD: A5 01     LDA ram_0001                    ;
C - - - - - 0x01F6BF 07:F6AF: C9 C4     CMP #$C4                        ; CONSTANT - 1st lift
C - - - - - 0x01F6C1 07:F6B1: F0 05     BEQ @bra_F6B8_one               ; If the lift is first
C - - - - - 0x01F6C3 07:F6B3: C9 44     CMP #$44                        ; CONSTANT - 2nd lift
C - - - - - 0x01F6C5 07:F6B5: F0 01     BEQ @bra_F6B8_one               ; If the lift is second
C - - - - - 0x01F6C7 07:F6B7: E8        INX                             ; the enemyA number <~ 1
@bra_F6B8_one:
C - - - - - 0x01F6C8 07:F6B8: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x01F6CB 07:F6BB: 10 03     BPL bra_F6C0_lift_appearance    ; If the status isn't used
C - - - - - 0x01F6CD 07:F6BD: 4C 8F D7  JMP loc_D78F_dec_enemyA_counter ;

; In: Register X - the enemyA number
bra_F6C0_lift_appearance:
C - - - - - 0x01F6D0 07:F6C0: 20 7A F3  JSR sub_F37A_assign_enemyA_position   ;
C - - - - - 0x01F6D3 07:F6C3: A9 C0     LDA #$C0                              ; CONSTANT - default status
C - - - - - 0x01F6D5 07:F6C5: 9D 20 03  STA vEnemyAStatus,X                   ;
C - - - - - 0x01F6D8 07:F6C8: A9 30     LDA #$30                              ; the offset for sprite_magic2 (Bank 05, Page 2, $8100 + $0030)
C - - - - - 0x01F6DA 07:F6CA: 8D 02 03  STA vEnemyASpriteMagic2               ;
C - - - - - 0x01F6DD 07:F6CD: A9 46     LDA #$46                              ; <~ sprite_magic3 (see v_sprite_magic3)
C - - - - - 0x01F6DF 07:F6CF: 8D 03 03  STA vEnemyASpriteMagic3               ;
C - - - - - 0x01F6E2 07:F6D2: A9 0D     LDA #$0D                              ; CONSTANT for CHR ROM #2
C - - - - - 0x01F6E4 07:F6D4: 8D B4 06  STA vCacheChrBankSelect + 5           ;
C - - - - - 0x01F6E7 07:F6D7: A9 00     LDA #$00                              ;
C - - - - - 0x01F6E9 07:F6D9: 9D 44 03  STA vEnemyAFrame_Counter,X            ; reset a frame counter
C - - - - - 0x01F6EC 07:F6DC: 4C 4A F8  JMP loc_F84A_finish_creating_enemyA   ;

; 1 byte - high X-position (the screen number)
; 2 byte - low X-position
tbl_lift_positions:
- D 3 - - - 0x01F6EF 07:F6DF: 05        .byte $05, $C4
- D 3 - - - 0x01F6F1 07:F6E1: 06        .byte $06, $14
- D 3 - - - 0x01F6F3 07:F6E3: 0D        .byte $0D, $44
- D 3 - - - 0x01F6F5 07:F6E5: 0D        .byte $0D, $A4

; In: $0000 - macro X-position
; In: $0001 - X-position
loc_F6E7_wall_or_platform_appearance:
C - - J - - 0x01F6F7 07:F6E7: 20 39 F3  JSR sub_F339_check_position      ;
C - - - - - 0x01F6FA 07:F6EA: 24 3C     BIT vGameLocks                   ;
C - - - - - 0x01F6FC 07:F6EC: 30 5F     BMI bra_F74D                     ; If lock 'Select a character' exists
C - - - - - 0x01F6FE 07:F6EE: AD 01 03  LDA vEnemyB                      ;
C - - - - - 0x01F701 07:F6F1: C9 32     CMP #$32                         ; CONSTANT - Breaking platform
C - - - - - 0x01F703 07:F6F3: D0 14     BNE bra_F709_skip                ; If the enemy isn't the 'breaking platform'
C - - - - - 0x01F705 07:F6F5: A2 01     LDX #$01                         ; set loop counter
@bra_F6F7_loop:                                                          ; loop by x (2 times)
C - - - - - 0x01F707 07:F6F7: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x01F70A 07:F6FA: 10 06     BPL bra_F702_platform_appearance ; If the status isn't used
C - - - - - 0x01F70C 07:F6FC: CA        DEX                              ; decrement loop counter
C - - - - - 0x01F70D 07:F6FD: 10 F8     BPL @bra_F6F7_loop               ; If Register X >= 0x00
C - - - - - 0x01F70F 07:F6FF: 4C 83 D8  JMP loc_D883_dec_enemyB_counter  ;

bra_F702_platform_appearance:
C - - - - - 0x01F712 07:F702: A9 C2     LDA #$C2                         ; CONSTANT - default status + 'movable object'
C - - - - - 0x01F714 07:F704: 9D 5C 03  STA vEnemyBStatus,X              ;
C - - - - - 0x01F717 07:F707: D0 3F     BNE bra_F748_continue            ; Always true

; In: $0000 - macro X-position
; In: $0001 - X-position
bra_F709_skip:
C - - - - - 0x01F719 07:F709: A9 00     LDA #$00                         ;
C - - - - - 0x01F71B 07:F70B: A8        TAY                              ; set loop counter
C - - - - - 0x01F71C 07:F70C: 0A        ASL                              ;
C - - - - - 0x01F71D 07:F70D: 0A        ASL                              ; *4, because the set of 4th bytes
C - - - - - 0x01F71E 07:F70E: AA        TAX                              ; prepares an index of the table
bra_F70F_loop:                                                           ; loop by y (4 * 64 times)
C - - - - - 0x01F71F 07:F70F: A5 46     LDA vNoRoom                      ;
C - - - - - 0x01F721 07:F711: DD EE BD  CMP tbl_ptr_walls,X              ;
C - - - - - 0x01F724 07:F714: D0 16     BNE bra_F72C_next                ; If the current wall != the wall of the table
C - - - - - 0x01F726 07:F716: A5 00     LDA ram_0000                     ;
C - - - - - 0x01F728 07:F718: DD EF BD  CMP tbl_ptr_walls + 1,X          ;
C - - - - - 0x01F72B 07:F71B: D0 0F     BNE bra_F72C_next                ; If the macro X-position of the current wall != the macro X-position of the table
C - - - - - 0x01F72D 07:F71D: A5 01     LDA ram_0001                     ;
C - - - - - 0x01F72F 07:F71F: DD F0 BD  CMP tbl_ptr_walls + 2,X          ;
C - - - - - 0x01F732 07:F722: D0 08     BNE bra_F72C_next                ; If the X-position of the current wall != the X-position of the table
C - - - - - 0x01F734 07:F724: B9 C0 05  LDA vWalls,Y                     ;
C - - - - - 0x01F737 07:F727: 10 0A     BPL bra_F733_not_broken          ; If the wall isn't broken
C - - - - - 0x01F739 07:F729: 4C 1B F6  JMP loc_F61B_cancel_creating     ; !(BUG?), Register X should be the enemyB number

bra_F72C_next:
C - - - - - 0x01F73C 07:F72C: E8        INX                              ;
C - - - - - 0x01F73D 07:F72D: E8        INX                              ;
C - - - - - 0x01F73E 07:F72E: E8        INX                              ;
C - - - - - 0x01F73F 07:F72F: E8        INX                              ;
C - - - - - 0x01F740 07:F730: C8        INY                              ; increments loop counter
C - - - - - 0x01F741 07:F731: D0 DC     BNE bra_F70F_loop                ; If Register Y != 0x00
bra_F733_not_broken:
C - - - - - 0x01F743 07:F733: BD F1 BD  LDA tbl_ptr_walls + 3,X          ;
C - - - - - 0x01F746 07:F736: AA        TAX                              ; X <~ the enemyB number
C - - - - - 0x01F747 07:F737: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x01F74A 07:F73A: 10 03     BPL bra_F73F_not_created         ; If the wall isn't created
C - - - - - 0x01F74C 07:F73C: 4C 83 D8  JMP loc_D883_dec_enemyB_counter  ;

; In: Register Y - an index of the wall
bra_F73F_not_created:
C - - - - - 0x01F74F 07:F73F: A9 C0     LDA #$C0                               ;
C - - - - - 0x01F751 07:F741: 9D 5C 03  STA vEnemyBStatus,X                    ; initializes a default status
C - - - - - 0x01F754 07:F744: 98        TYA                                    ;
C - - - - - 0x01F755 07:F745: 9D 62 03  STA vEnemyBWallIndex,X                 ; initializes a wall index
bra_F748_continue:
C - - - - - 0x01F758 07:F748: 20 92 F3  JSR sub_F392_assign_enemyB_position    ;
C - - - - - 0x01F75B 07:F74B: A9 3C     LDA #$3C                               ; the offset for sprite_magic2 (Offset: $003C)
; In: Register A - the offset for sprite_magic2
bra_F74D:
C - - - - - 0x01F75D 07:F74D: 8D 06 03  STA vEnemyBSpriteMagic2                ;
C - - - - - 0x01F760 07:F750: A9 07     LDA #$07                               ;
C - - - - - 0x01F762 07:F752: 8D 07 03  STA vEnemyBSpriteMagic3                ; <~ sprite_magic3 (see v_sprite_magic3) (Bank 05, Page 2, $8000)
C - - - - - 0x01F765 07:F755: A9 18     LDA #$18                               ;
C - - - - - 0x01F767 07:F757: 8D B4 06  STA vCacheChrBankSelect + 5            ; <~ CONSTANT for CHR ROM
C - - - - - 0x01F76A 07:F75A: A9 00     LDA #$00                               ;
C - - - - - 0x01F76C 07:F75C: 9D 80 03  STA vEnemyBFrame_Counter,X             ; reset a counter
C - - - - - 0x01F76F 07:F75F: 4C 20 F8  JMP loc_F820_finish_creating_enemyB    ;

; In: $0000 - macro X-position
; In: $0001 - X-position
; In: $0002 - Y-position
loc_F762_diver_appearance:
C - - J - - 0x01F772 07:F762: 20 8A F3  JSR sub_F38A_start_enemyB_appearance      ;
C - - - - - 0x01F775 07:F765: 20 60 F3  JSR sub_F360_prepare_enemyB_start_status  ;
C - - - - - 0x01F778 07:F768: A9 00     LDA #$00                                  ;
C - - - - - 0x01F77A 07:F76A: 9D 80 03  STA vEnemyBFrame_Counter,X                ; reset a counter
C - - - - - 0x01F77D 07:F76D: A9 06     LDA #$06                                  ; CONSTANT for CHR ROM
C - - - - - 0x01F77F 07:F76F: 8D B3 06  STA vCacheChrBankSelect + 4               ;
C - - - - - 0x01F782 07:F772: 4C 20 F8  JMP loc_F820_finish_creating_enemyB       ;

loc_F775_boss4:
C - - J - - 0x01F785 07:F775: A0 0C     LDY #$0C                                     ; the offset value #1
C - - - - - 0x01F787 07:F777: D0 0A     BNE bra_F783_start                           ; Always true

loc_F779_boss3:
C - - J - - 0x01F789 07:F779: A0 08     LDY #$08                                     ; the offset value #2
C - - - - - 0x01F78B 07:F77B: D0 06     BNE bra_F783_start                           ; Always true

loc_F77D_boss2:
C - - J - - 0x01F78D 07:F77D: A0 04     LDY #$04                                     ; the offset value #3
C - - - - - 0x01F78F 07:F77F: D0 02     BNE bra_F783_start                           ; Always true

loc_F781_boss1:
C - - J - - 0x01F791 07:F781: A0 00     LDY #$00                                     ; the offset value #4
bra_F783_start:
C - - - - - 0x01F793 07:F783: A5 3C     LDA vGameLocks                               ;
C - - - - - 0x01F795 07:F785: 29 20     AND #$20                                     ; CONSTANT - after a fall and after 'Select a character'
C - - - - - 0x01F797 07:F787: D0 0D     BNE @bra_F796_skip                           ; If the player is reselected after dying
C - - - - - 0x01F799 07:F789: 24 3C     BIT vGameLocks                               ;
C - - - - - 0x01F79B 07:F78B: 30 34     BMI bra_F7C1_skip                            ; If lock 'Select a character' exists
C - - - - - 0x01F79D 07:F78D: B9 F5 BC  LDA tbl_ptr_boss_sprite_params_,Y            ;
C - - - - - 0x01F7A0 07:F790: 8D 50 03  STA vEnemyAHealthPoints1                     ; set enemy HP
C - - - - - 0x01F7A3 07:F793: 8D 51 03  STA vEnemyAHealthPoints2                     ; set enemy HP
@bra_F796_skip:
C - - - - - 0x01F7A6 07:F796: AD 00 03  LDA vEnemyA                                  ;
C - - - - - 0x01F7A9 07:F799: C9 2E     CMP #$2E                                     ; CONSTANT - boss, level 4
C - - - - - 0x01F7AB 07:F79B: D0 06     BNE bra_F7A3_skip                            ; If vEnemyA != 0x2E
C - - - - - 0x01F7AD 07:F79D: 20 E0 F7  JSR sub_F7E0_last_boss                       ;
C - - - - - 0x01F7B0 07:F7A0: 4C C1 F7  JMP loc_F7C1_continue                        ;

bra_F7A3_skip:
C - - - - - 0x01F7B3 07:F7A3: A9 BF     LDA #$BF                                     ;
C - - - - - 0x01F7B5 07:F7A5: 8D 2C 03  STA vEnemyAPosY                              ; Initializes the Y-position
C - - - - - 0x01F7B8 07:F7A8: A9 81     LDA #$81                                     ; CONSTANT - the status is used + the left direction
C - - - - - 0x01F7BA 07:F7AA: 8D 20 03  STA vEnemyAStatus                            ;
C - - - - - 0x01F7BD 07:F7AD: A9 A0     LDA #$A0                                     ;
C - - - - - 0x01F7BF 07:F7AF: 8D 38 03  STA vEnemyAPosXLow                           ;
C - - - - - 0x01F7C2 07:F7B2: A9 00     LDA #$00                                     ;
C - - - - - 0x01F7C4 07:F7B4: 8D 3E 03  STA vEnemyAPosXHigh                          ; Initializes the X-position (Hi:Lo)
C - - - - - 0x01F7C7 07:F7B7: A9 00     LDA #$00                                     ;
C - - - - - 0x01F7C9 07:F7B9: 8D 44 03  STA vEnemyAFrame_Counter                     ; reset a frame counter
C - - - - - 0x01F7CC 07:F7BC: A9 20     LDA #$20                                     ;
C - - - - - 0x01F7CE 07:F7BE: 8D 4A 03  STA vEnemyAJumpCounter                       ; Initializes a counter for 'the approach'
bra_F7C1_skip:
loc_F7C1_continue:
C D 3 - - - 0x01F7D1 07:F7C1: B9 F6 BC  LDA tbl_ptr_boss_sprite_params_ + 1,Y        ; CONSTANT for CHR ROM
C - - - - - 0x01F7D4 07:F7C4: 8D B3 06  STA vCacheChrBankSelect + 4                  ;
C - - - - - 0x01F7D7 07:F7C7: B9 F7 BC  LDA tbl_ptr_boss_sprite_params_ + 2,Y        ; CONSTANT for CHR ROM
C - - - - - 0x01F7DA 07:F7CA: 8D B4 06  STA vCacheChrBankSelect + 5                  ;
C - - - - - 0x01F7DD 07:F7CD: B9 F8 BC  LDA tbl_ptr_boss_sprite_params_ + 3,Y        ; the offset for sprite_magic2
C - - - - - 0x01F7E0 07:F7D0: 8D 02 03  STA vEnemyASpriteMagic2                      ;
C - - - - - 0x01F7E3 07:F7D3: 20 4A F8  JSR sub_F84A_finish_creating_enemyA          ;
C - - - - - 0x01F7E6 07:F7D6: AC 00 03  LDY vEnemyA                                  ;
C - - - - - 0x01F7E9 07:F7D9: C8        INY                                          ;
C - - - - - 0x01F7EA 07:F7DA: 8C 01 03  STY vEnemyB                                  ; <~ {0x29, 0x2B, 0x2D, 0x2F}
C - - - - - 0x01F7ED 07:F7DD: 4C 20 F8  JMP loc_F820_finish_creating_enemyB          ;

sub_F7E0_last_boss:
C - - - - - 0x01F7F0 07:F7E0: A2 01     LDX #$01                             ; set loop counter
C - - - - - 0x01F7F2 07:F7E2: A0 00     LDY #$00                             ; Initializes for the table
@bra_F7E4_loop:                                                              ; loop by x
C - - - - - 0x01F7F4 07:F7E4: A9 7F     LDA #$7F                             ;
C - - - - - 0x01F7F6 07:F7E6: 9D 2C 03  STA vEnemyAPosY,X                    ; initializes position Y
C - - - - - 0x01F7F9 07:F7E9: A5 3C     LDA vGameLocks                       ;
C - - - - - 0x01F7FB 07:F7EB: 29 20     AND #$20                             ; CONSTANT - after a fall and after 'Select a character'
C - - - - - 0x01F7FD 07:F7ED: F0 05     BEQ @bra_F7F4_skip                   ; If the player isn't reselected after dying
C - - - - - 0x01F7FF 07:F7EF: BD 50 03  LDA vEnemyAHealthPoints,X            ;
C - - - - - 0x01F802 07:F7F2: F0 12     BEQ @bra_F806_skip                   ; If HPoint == 0x00
@bra_F7F4_skip:
C - - - - - 0x01F804 07:F7F4: B9 05 BD  LDA tbl_ptr_last_boss_params_,Y      ;
C - - - - - 0x01F807 07:F7F7: 9D 20 03  STA vEnemyAStatus,X                  ; initializes the status
C - - - - - 0x01F80A 07:F7FA: B9 06 BD  LDA tbl_ptr_last_boss_params_ + 1,Y  ;
C - - - - - 0x01F80D 07:F7FD: 9D 44 03  STA vEnemyASpecSubCounter,X          ;
C - - - - - 0x01F810 07:F800: B9 07 BD  LDA tbl_ptr_last_boss_params_ + 2,Y  ;
C - - - - - 0x01F813 07:F803: 9D 26 03  STA vEnemyAWaitCounter,X             ; initializes the waiting time
@bra_F806_skip:
C - - - - - 0x01F816 07:F806: B9 08 BD  LDA tbl_ptr_last_boss_params_ + 3,Y  ;
C - - - - - 0x01F819 07:F809: 9D 38 03  STA vEnemyAPosXLow,X                 ; initializes position X
C - - - - - 0x01F81C 07:F80C: A9 00     LDA #$00                             ;
C - - - - - 0x01F81E 07:F80E: 9D 3E 03  STA vEnemyAPosXHigh,X                ; the room has one screen
C - - - - - 0x01F821 07:F811: A9 20     LDA #$20                             ;
C - - - - - 0x01F823 07:F813: 9D 4A 03  STA vEnemyAJumpCounter,X             ; initializes the jump counter for the flying
C - - - - - 0x01F826 07:F816: C8        INY                                  ;
C - - - - - 0x01F827 07:F817: C8        INY                                  ;
C - - - - - 0x01F828 07:F818: C8        INY                                  ;
C - - - - - 0x01F829 07:F819: C8        INY                                  ; +4, bacause the table contains 4 bytes in one row
C - - - - - 0x01F82A 07:F81A: CA        DEX                                  ; decrement loop counter
C - - - - - 0x01F82B 07:F81B: 10 C7     BPL @bra_F7E4_loop                   ; If Register X >= 0x00
C - - - - - 0x01F82D 07:F81D: A0 0C     LDY #$0C                             ; restore Register Y (see $F775)
C - - - - - 0x01F82F 07:F81F: 60        RTS                                  ;

loc_F820_finish_creating_enemyB:
C D 3 - - - 0x01F830 07:F820: 20 46 EF  JSR sub_EF46_switch_bank_4_p1    ;
C - - - - - 0x01F833 07:F823: AD 01 03  LDA vEnemyB                      ;
C - - - - - 0x01F836 07:F826: 20 74 F8  JSR sub_F874_get_palette_address ;
C - - - - - 0x01F839 07:F829: A0 02     LDY #$02                         ; set loop counter
@bra_F82B_loop:                                                          ; loop by y (3 times)
C - - - - - 0x01F83B 07:F82B: B1 12     LDA ($0012),Y                    ;
C - - - - - 0x01F83D 07:F82D: 99 1D 06  STA vCachePalette + 29,Y         ; set palette (3 colors)
C - - - - - 0x01F840 07:F830: 88        DEY                              ; decrement loop counter
C - - - - - 0x01F841 07:F831: 10 F8     BPL @bra_F82B_loop               ; If Register Y < 0x80
C - - - - - 0x01F843 07:F833: 8A        TXA                              ;
C - - - - - 0x01F844 07:F834: 0A        ASL                              ;
C - - - - - 0x01F845 07:F835: 0A        ASL                              ;
C - - - - - 0x01F846 07:F836: A8        TAY                              ; Y = {0x00, 0x04}
C - - - - - 0x01F847 07:F837: A5 D4     LDA vTmpEnemyStartingPosXHigh    ;
C - - - - - 0x01F849 07:F839: 99 0E 03  STA vEnemyBStartingPosXHigh1,Y   ; set macro X-position
C - - - - - 0x01F84C 07:F83C: A5 D5     LDA vTmpEnemyStartingPosXLow     ;
C - - - - - 0x01F84E 07:F83E: 99 0F 03  STA vEnemyBStartingPosXLow1,Y    ; set X-position
C - - - - - 0x01F851 07:F841: A9 00     LDA #$00                         ;
C - - - - - 0x01F853 07:F843: 99 1A 03  STA vEnemyBAppearTimerHigh1,Y    ; reset the counter
C - - - - - 0x01F856 07:F846: 99 1B 03  STA vEnemyBAppearTimerLow1,Y     ; reset the counter
C - - - - - 0x01F859 07:F849: 60        RTS                              ;

loc_F84A_finish_creating_enemyA:
sub_F84A_finish_creating_enemyA:
C D 3 - - - 0x01F85A 07:F84A: 20 46 EF  JSR sub_EF46_switch_bank_4_p1    ;
C - - - - - 0x01F85D 07:F84D: AD 00 03  LDA vEnemyA                      ;
C - - - - - 0x01F860 07:F850: 20 74 F8  JSR sub_F874_get_palette_address ;
C - - - - - 0x01F863 07:F853: A0 02     LDY #$02                         ; set loop counter
@bra_F855_loop:                                                          ; loop by y (3 times)
C - - - - - 0x01F865 07:F855: B1 12     LDA ($0012),Y                    ;
C - - - - - 0x01F867 07:F857: 99 19 06  STA vCachePalette + 25,Y         ; set palette (3 colors)
C - - - - - 0x01F86A 07:F85A: 88        DEY                              ; decrement loop counter
C - - - - - 0x01F86B 07:F85B: 10 F8     BPL @bra_F855_loop               ; If Register Y < 0x80
C - - - - - 0x01F86D 07:F85D: 8A        TXA                              ;
C - - - - - 0x01F86E 07:F85E: 0A        ASL                              ;
C - - - - - 0x01F86F 07:F85F: 0A        ASL                              ;
C - - - - - 0x01F870 07:F860: A8        TAY                              ; Y = {0x00, 0x04}
C - - - - - 0x01F871 07:F861: A5 D4     LDA vTmpEnemyStartingPosXHigh    ;
C - - - - - 0x01F873 07:F863: 99 0C 03  STA vEnemyAStartingPosXHigh1,Y   ; set macro X-position
C - - - - - 0x01F876 07:F866: A5 D5     LDA vTmpEnemyStartingPosXLow     ;
C - - - - - 0x01F878 07:F868: 99 0D 03  STA vEnemyAStartingPosXLow1,Y    ; set X-position
C - - - - - 0x01F87B 07:F86B: A9 00     LDA #$00                         ;
C - - - - - 0x01F87D 07:F86D: 99 18 03  STA vEnemyAAppearTimerHigh1,Y    ; reset the counter
C - - - - - 0x01F880 07:F870: 99 19 03  STA vEnemyAAppearTimerLow1,Y     ; reset the counter
C - - - - - 0x01F883 07:F873: 60        RTS                              ;

; In: Register A - vEnemyA
sub_F874_get_palette_address:
C - - - - - 0x01F884 07:F874: 85 12     STA $0012                     ;
C - - - - - 0x01F886 07:F876: 0A        ASL                           ;
C - - - - - 0x01F887 07:F877: 18        CLC                           ;
C - - - - - 0x01F888 07:F878: 65 12     ADC $0012                     ; *3, because there are 3 colors in the table
C - - - - - 0x01F88A 07:F87A: 18        CLC                           ;
C - - - - - 0x01F88B 07:F87B: 6D 0C 80  ADC tbl_ptr_enemy_palette     ;
C - - - - - 0x01F88E 07:F87E: 85 12     STA $0012                     ;
C - - - - - 0x01F890 07:F880: AD 0D 80  LDA tbl_ptr_enemy_palette + 1 ;
C - - - - - 0x01F893 07:F883: 69 00     ADC #$00                      ; +1, if it was overflow
C - - - - - 0x01F895 07:F885: 85 13     STA $0013                     ;

loc_enemy_RTS:
C - - J - - 0x01F897 07:F887: 60        RTS                           ;

tbl_F888_enemy_appearance:
- D - - - - 0x01F898 07:F888: 87 F8     .addr loc_enemy_RTS                         ; Nobody  (0x00)
- D 3 - - - 0x01F89A 07:F88A: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Cat with the gun
- D 3 - - - 0x01F89C 07:F88C: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Gray Land hat
- D 3 - - - 0x01F89E 07:F88E: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Black Land hat
- D 3 - - - 0x01F8A0 07:F890: CB F4     .addr loc_F3A2_land_diver_enemy             ; Land Diver
- D 3 - - - 0x01F8A2 07:F892: CB F4     .addr loc_F3A2_land_diver_enemy             ; Land Diver
- D 3 - - - 0x01F8A4 07:F894: CB F4     .addr loc_F3A2_land_diver_enemy             ; Land Diver
- D 3 - - - 0x01F8A6 07:F896: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Zenigata
- D 3 - - - 0x01F8A8 07:F898: 3D F5     .addr loc_F53D_bazooka_enemy                ; Shooter with bazooka
- D 3 - - - 0x01F8AA 07:F89A: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; The fat sailor
- D 3 - - - 0x01F8AC 07:F89C: 90 F5     .addr loc_F590_enemy_appearance_t2          ; The barrel
- D 3 - - - 0x01F8AE 07:F89E: 6A F6     .addr loc_F66A_enemy_appearance_t5          ; Jumping sailor
- D 3 - - - 0x01F8B0 07:F8A0: AB F6     .addr loc_F6AB_lift                         ; The lift
- D 3 - - - 0x01F8B2 07:F8A2: 34 F6     .addr loc_F634_trap_appearance              ; Sensor
- D 3 - - - 0x01F8B4 07:F8A4: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Bat
- D 3 - - - 0x01F8B6 07:F8A6: 90 F5     .addr loc_F590_enemy_appearance_t2          ; Gray cat
- D 3 - - - 0x01F8B8 07:F8A8: 6A F6     .addr loc_F66A_enemy_appearance_t5          ; Nun (0x10)
- D 3 - - - 0x01F8BA 07:F8AA: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Girl in red, in the castle
- D 3 - - - 0x01F8BC 07:F8AC: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Batterfly
- D 3 - - - 0x01F8BE 07:F8AE: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Broned batterfly
- D 3 - - - 0x01F8C0 07:F8B0: 3D F5     .addr loc_F53D_bazooka_enemy                ; Shooter with bazooka
- D 3 - - - 0x01F8C2 07:F8B2: 34 F6     .addr loc_F634_trap_appearance              ; Sensor
- D 3 - - - 0x01F8C4 07:F8B4: 90 F5     .addr loc_F590_enemy_appearance_t2          ; Black cat
- D 3 - - - 0x01F8C6 07:F8B6: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Karate-boy
- D 3 - - - 0x01F8C8 07:F8B8: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Street karate-boy
- D 3 - - - 0x01F8CA 07:F8BA: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Karate-girl
- D 3 - - - 0x01F8CC 07:F8BC: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Boy in green
- D 3 - - - 0x01F8CE 07:F8BE: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Girl with sword
- D 3 - - - 0x01F8D0 07:F8C0: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Knight in armor with a shield
- D 3 - - - 0x01F8D2 07:F8C2: 90 F5     .addr loc_F590_enemy_appearance_t2          ; The barrel
- D 3 - - - 0x01F8D4 07:F8C4: 34 F6     .addr loc_F634_trap_appearance              ; Sensor
- D 3 - - - 0x01F8D6 07:F8C6: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Fly man
- D 3 - - - 0x01F8D8 07:F8C8: 3D F5     .addr loc_F53D_bazooka_enemy                ; Shooter with bazooka (0x20)
- D 3 - - - 0x01F8DA 07:F8CA: 90 F5     .addr loc_F590_enemy_appearance_t2          ; Cobblestone
- D 3 - - - 0x01F8DC 07:F8CC: 90 F5     .addr loc_F590_enemy_appearance_t2          ; The bird
- D 3 - - - 0x01F8DE 07:F8CE: 90 F5     .addr loc_F590_enemy_appearance_t2          ; The bird with a bomb
- D 3 - - - 0x01F8E0 07:F8D0: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Skeleton
- D 3 - - - 0x01F8E2 07:F8D2: 62 F7     .addr loc_F762_diver_appearance             ; Diver
- D 3 - - - 0x01F8E4 07:F8D4: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Mummy
- D 3 - - - 0x01F8E6 07:F8D6: 3E F4     .addr loc_F43E_enemy_appearance_t4          ; Gargoyle
- D 3 - - - 0x01F8E8 07:F8D8: 81 F7     .addr loc_F781_boss1                        ; Boss
- D - - - - 0x01F8EA 07:F8DA: 87 F8     .addr loc_enemy_RTS                         ;
- D 3 - - - 0x01F8EC 07:F8DC: 7D F7     .addr loc_F77D_boss2                        ; Boss
- D - - - - 0x01F8EE 07:F8DE: 87 F8     .addr loc_enemy_RTS                         ;
- D 3 - - - 0x01F8F0 07:F8E0: 79 F7     .addr loc_F779_boss3                        ; Boss
- D - - - - 0x01F8F2 07:F8E2: 87 F8     .addr loc_enemy_RTS                         ;
- D 3 - - - 0x01F8F4 07:F8E4: 75 F7     .addr loc_F775_boss4                        ; Boss
- D - - - - 0x01F8F6 07:F8E6: 87 F8     .addr loc_enemy_RTS                         ;
- D 3 - - - 0x01F8F8 07:F8E8: E7 F6     .addr loc_F6E7_wall_or_platform_appearance  ; Wall
- D 3 - - - 0x01F8FA 07:F8EA: E7 F6     .addr loc_F6E7_wall_or_platform_appearance  ; Wall
- D 3 - - - 0x01F8FC 07:F8EC: E7 F6     .addr loc_F6E7_wall_or_platform_appearance  ; Breaking platform
- D 3 - - - 0x01F8FE 07:F8EE: 34 F6     .addr loc_F634_trap_appearance              ; Blade trap
- D 3 - - - 0x01F900 07:F8F0: 90 F5     .addr loc_F590_enemy_appearance_t2          ; Potted snakes
- D 3 - - - 0x01F902 07:F8F2: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Egyptian with bow
- D 3 - - - 0x01F904 07:F8F4: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Egyptian with a sword
- D 3 - - - 0x01F906 07:F8F6: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Egyptian with a boomerung
- D 3 - - - 0x01F908 07:F8F8: A2 F3     .addr loc_F3A2_enemy_appearance_t3          ; Ninja upside down
- D 3 - - - 0x01F90A 07:F8FA: 34 F6     .addr loc_F634_trap_appearance              ; Sensor

tbl_F8FC_enemies:
- D 3 - - - 0x01F90C 07:F8FC: 02        .byte $02 ; Gray land hat
- D 3 - - - 0x01F90D 07:F8FD: 03        .byte $03 ; Black land hat
- D 3 - - - 0x01F90E 07:F8FE: 0A        .byte $0A ; The barrel
- D 3 - - - 0x01F90F 07:F8FF: 0D        .byte $0D ; Sensor
- D 3 - - - 0x01F910 07:F900: 0E        .byte $0E ; Bat
- D 3 - - - 0x01F911 07:F901: 0F        .byte $0F ; Gray cat
- D 3 - - - 0x01F912 07:F902: 12        .byte $12 ; Batterfly
- D 3 - - - 0x01F913 07:F903: 13        .byte $13 ; Broned batterfly
- D 3 - - - 0x01F914 07:F904: 15        .byte $15 ; Sensor
- D 3 - - - 0x01F915 07:F905: 16        .byte $16 ; Black cat
- D 3 - - - 0x01F916 07:F906: 1D        .byte $1D ; The barrel
- D 3 - - - 0x01F917 07:F907: 1E        .byte $1E ; Sensor
- D 3 - - - 0x01F918 07:F908: 21        .byte $21 ; Cobblestone
- D 3 - - - 0x01F919 07:F909: 22        .byte $22 ; The bird
- D 3 - - - 0x01F91A 07:F90A: 23        .byte $23 ; The bird with a bomb
- D 3 - - - 0x01F91B 07:F90B: 27        .byte $27 ; Gargoyle
- D 3 - - - 0x01F91C 07:F90C: 30        .byte $30 ; Wall
- D 3 - - - 0x01F91D 07:F90D: 31        .byte $31 ; Wall
- D 3 - - - 0x01F91E 07:F90E: 32        .byte $32 ; Breaking platform
- D 3 - - - 0x01F91F 07:F90F: 33        .byte $33 ; Blade trap
- D 3 - - - 0x01F920 07:F910: 34        .byte $34 ; Potted snakes
- D 3 - - - 0x01F921 07:F911: 39        .byte $39 ; Sensor

bra_F912_inc_next_set:
C - - - - - 0x01F922 07:F912: C8        INY                   ; 2nd of 5 bytes
bra_F913_inc_next_set:
C - - - - - 0x01F923 07:F913: C8        INY                   ; 3rd of 5 bytes
bra_F914_inc_next_set:
C - - - - - 0x01F924 07:F914: C8        INY                   ; 4th of 5 bytes
C - - - - - 0x01F925 07:F915: C8        INY                   ; 5th of 5 bytes
C - - - - - 0x01F926 07:F916: C8        INY                   ; next the set of bytes
C - - - - - 0x01F927 07:F917: 4C 21 F9  JMP loc_F921_next_set ;

; Return the carry status (analog return true or false)
sub_F91A_has_entered_the_corridor:
C - - - - - 0x01F92A 07:F91A: 8A        TXA                            ;
C - - - - - 0x01F92B 07:F91B: 48        PHA                            ; store X
C - - - - - 0x01F92C 07:F91C: 20 46 EF  JSR sub_EF46_switch_bank_4_p1  ;
C - - - - - 0x01F92F 07:F91F: A0 00     LDY #$00                       ; 1st of 5 bytes
loc_F921_next_set:
C D 3 - - - 0x01F931 07:F921: B1 BD     LDA (vCorridorAddr),Y          ;
C - - - - - 0x01F933 07:F923: 10 03     BPL bra_F928_skip              ; If Register A < 0x80 (waiting for 0xFF)
bra_F925_fail:
C - - - - - 0x01F935 07:F925: 4C C9 F9  JMP loc_F9C9_safe_return_false ;

; In: Register A - 1 corridor byte (see bank 04, page 1, $8F03)
bra_F928_skip:
C - - - - - 0x01F938 07:F928: 85 00     STA ram_0000                       ;
C - - - - - 0x01F93A 07:F92A: 29 0F     AND #$0F                           ; restores by the mask
C - - - - - 0x01F93C 07:F92C: C5 68     CMP vHighChrPosX                   ;
C - - - - - 0x01F93E 07:F92E: 90 E2     BCC bra_F912_inc_next_set          ; If the screen of the current corridor < vHighChrPosX
C - - - - - 0x01F940 07:F930: D0 F3     BNE bra_F925_fail                  ; If the screen of the current corridor != vHighChrPosX
C - - - - - 0x01F942 07:F932: A5 00     LDA ram_0000                       ;
C - - - - - 0x01F944 07:F934: 29 40     AND #$40                           ; CONSTANT - a floor
C - - - - - 0x01F946 07:F936: 18        CLC                                ;
C - - - - - 0x01F947 07:F937: 69 7F     ADC #$7F                           ;
C - - - - - 0x01F949 07:F939: 85 AD     STA vNonUsedAD                     ; <~ 0x7F or 0xBF (top or bottom)
C - - - - - 0x01F94B 07:F93B: C5 6A     CMP vScreenChrPosY                 ;
C - - - - - 0x01F94D 07:F93D: D0 D3     BNE bra_F912_inc_next_set          ; If vScreenChrPosY != $00AD
C - - - - - 0x01F94F 07:F93F: A2 08     LDX #$08                           ; CONSTANT - allowable tolerance for a door #1
C - - - - - 0x01F951 07:F941: A5 00     LDA ram_0000                       ;
C - - - - - 0x01F953 07:F943: 29 20     AND #$20                           ; CONSTANT - the type of door width
C - - - - - 0x01F955 07:F945: F0 02     BEQ @bra_F949_skip                 ; If the type of door width has M-size
C - - - - - 0x01F957 07:F947: A2 0C     LDX #$0C                           ; CONSTANT - allowable tolerance for a door #2
@bra_F949_skip:
C - - - - - 0x01F959 07:F949: 86 01     STX ram_0001                       ; set an allowable tolerance
C - - - - - 0x01F95B 07:F94B: C8        INY                                ; 2nd of 5 bytes
C - - - - - 0x01F95C 07:F94C: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F95E 07:F94E: 38        SEC                                ;
C - - - - - 0x01F95F 07:F94F: E5 66     SBC vLowChrPosX                    ; A <~ corridorPosX - vLowChrPosX
C - - - - - 0x01F961 07:F951: B0 03     BCS @bra_F956_skip                 ; If vLowChrPosX <= corridorPosX
C - - - - - 0x01F963 07:F953: 20 73 D0  JSR sub_D073_invert_sign           ;
@bra_F956_skip:
C - - - - - 0x01F966 07:F956: 84 C1     STY vCurrentCorridorOffset         ;
C - - - - - 0x01F968 07:F958: C6 C1     DEC vCurrentCorridorOffset         ; set offset (1 of 5 bytes)
C - - - - - 0x01F96A 07:F95A: C5 01     CMP ram_0001                       ;
C - - - - - 0x01F96C 07:F95C: B0 B5     BCS bra_F913_inc_next_set          ; If |corridorPosX - vLowChrPosX| >= tolerance
C - - - - - 0x01F96E 07:F95E: C8        INY                                ; 3rd of 5 bytes
C - - - - - 0x01F96F 07:F95F: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F971 07:F961: 85 C6     STA vDoorAttribute                 ;
C - - - - - 0x01F973 07:F963: 10 0E     BPL @bra_F973_skip                 ; If it to allow to leave the door open (the door isn't destructible wall)
C - - - - - 0x01F975 07:F965: C8        INY                                ; 4th of 5 bytes
C - - - - - 0x01F976 07:F966: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F978 07:F968: AA        TAX                                ; X <~ the room index
C - - - - - 0x01F979 07:F969: 88        DEY                                ; 3rd of 5 bytes
C - - - - - 0x01F97A 07:F96A: BD 00 05  LDA vRooms,X                       ;
C - - - - - 0x01F97D 07:F96D: 85 B5     STA vNonUsedB5                     ;
C - - - - - 0x01F97F 07:F96F: 29 40     AND #$40                           ; CONSTANT - it is possible to enter the room
C - - - - - 0x01F981 07:F971: D0 A1     BNE bra_F914_inc_next_set          ; If it is impossible to enter the room
@bra_F973_skip:
C - - - - - 0x01F983 07:F973: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F985 07:F975: 85 00     STA ram_0000                       ;
C - - - - - 0x01F987 07:F977: 29 0F     AND #$0F                           ;
C - - - - - 0x01F989 07:F979: 85 C3     STA vDisplayRoomType               ;
C - - - - - 0x01F98B 07:F97B: 24 00     BIT ram_0000                       ;
C - - - - - 0x01F98D 07:F97D: 50 3C     BVC bra_F9BB_is_checkpoint         ; If 3rd of 5 bytes marks as 'a checkpoint'
C - - - - - 0x01F98F 07:F97F: A9 00     LDA #$00                           ; CONSTANT - the room is empty
C - - - - - 0x01F991 07:F981: 85 C4     STA vCheckpoint                    ;
C - - - - - 0x01F993 07:F983: C8        INY                                ; 4th of 5 bytes
C - - - - - 0x01F994 07:F984: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F996 07:F986: AA        TAX                                ;
C - - - - - 0x01F997 07:F987: BD 00 05  LDA vRooms,X                       ;
C - - - - - 0x01F99A 07:F98A: 85 C5     STA vRoomAttrubute                 ;
C - - - - - 0x01F99C 07:F98C: 86 BC     STX vRoomCurrentIndex              ;
C - - - - - 0x01F99E 07:F98E: 48        PHA                                ; diposit vRoomAttrubute ($F98E)
C - - - - - 0x01F99F 07:F98F: 09 80     ORA #$80                           ; CONSTANT - the room has already been visited
C - - - - - 0x01F9A1 07:F991: 9D 00 05  STA vRooms,X                       ;
C - - - - - 0x01F9A4 07:F994: 68        PLA                                ; retrieve vRoomAttrubute (see $F98E)
C - - - - - 0x01F9A5 07:F995: 29 3F     AND #$3F                           ; filters by mask
C - - - - - 0x01F9A7 07:F997: 85 B6     STA vCurrentUniqueRoom             ;
C - - - - - 0x01F9A9 07:F999: C9 10     CMP #$10                           ; CONSTANT - an unique room (NPC, briefcase, boss)
C - - - - - 0x01F9AB 07:F99B: 90 17     BCC @bra_F9B4_sublevel_corridor    ; If vCurrentUniqueRoom < 0x10
C - - - - - 0x01F9AD 07:F99D: C9 20     CMP #$20                           ;
C - - - - - 0x01F9AF 07:F99F: B0 13     BCS @bra_F9B4_sublevel_corridor    ; If vCurrentUniqueRoom >= 0x20
C - - - - - 0x01F9B1 07:F9A1: 84 11     STY vCacheRam_11                   ;
C - - - - - 0x01F9B3 07:F9A3: 29 07     AND #$07                           ; filters by mask
C - - - - - 0x01F9B5 07:F9A5: 85 B9     STA vCurUniqueRoomShort            ;
C - - - - - 0x01F9B7 07:F9A7: A8        TAY                                ;
C - - - - - 0x01F9B8 07:F9A8: B1 BA     LDA (vCheckpointAddr),Y            ; see tbl_ptr_checkpoints_on_the_levelX, Y <~ {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x01F9BA 07:F9AA: 85 C4     STA vCheckpoint                    ; <~ the checkpoint of the unique room
C - - - - - 0x01F9BC 07:F9AC: 20 DA FB  JSR sub_FBDA_store_room_params_    ;
C - - - - - 0x01F9BF 07:F9AF: A4 11     LDY vCacheRam_11                   ; 4th of 5 bytes
C - - - - - 0x01F9C1 07:F9B1: 4C C0 F9  JMP loc_F9C0_return_true           ;

@bra_F9B4_sublevel_corridor:
C - - - - - 0x01F9C4 07:F9B4: A9 00     LDA #$00                           ;
C - - - - - 0x01F9C6 07:F9B6: 85 B6     STA vCurrentUniqueRoom             ; clear
C - - - - - 0x01F9C8 07:F9B8: 4C C0 F9  JMP loc_F9C0_return_true           ;

bra_F9BB_is_checkpoint:
C - - - - - 0x01F9CB 07:F9BB: C8        INY                                ; 4th of 5 bytes
C - - - - - 0x01F9CC 07:F9BC: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F9CE 07:F9BE: 85 C4     STA vCheckpoint                    ;
loc_F9C0_return_true:
C D 3 - - - 0x01F9D0 07:F9C0: C8        INY                                ; 5th of 5 bytes
C - - - - - 0x01F9D1 07:F9C1: B1 BD     LDA (vCorridorAddr),Y              ;
C - - - - - 0x01F9D3 07:F9C3: 85 B7     STA vRoomExtraInfo                 ;
C - - - - - 0x01F9D5 07:F9C5: 68        PLA                                ;
C - - - - - 0x01F9D6 07:F9C6: AA        TAX                                ; retrieve x (see $F91B)
C - - - - - 0x01F9D7 07:F9C7: 38        SEC                                ; return true
C - - - - - 0x01F9D8 07:F9C8: 60        RTS                                ;

bra_F9C9_safe_return:
loc_F9C9_safe_return_false:
C D 3 - - - 0x01F9D9 07:F9C9: 68        PLA     ;
C - - - - - 0x01F9DA 07:F9CA: AA        TAX     ; retrieve an bomb index (see $F91B or $F9CE)
C - - - - - 0x01F9DB 07:F9CB: 18        CLC     ; return false
C - - - - - 0x01F9DC 07:F9CC: 60        RTS     ;

; In: Register X - 0x00 (an index for the bomb)
sub_F9CD_try_to_destroy_wall:
C - - - - - 0x01F9DD 07:F9CD: 8A        TXA                              ;
C - - - - - 0x01F9DE 07:F9CE: 48        PHA                              ; diposit an bomb index ($F9CE)
C - - - - - 0x01F9DF 07:F9CF: BD AA 03  LDA vItemPosY,X                  ;
C - - - - - 0x01F9E2 07:F9D2: C9 BF     CMP #$BF                         ; CONSTANT - the bottom floor Y-position
C - - - - - 0x01F9E4 07:F9D4: D0 F3     BNE bra_F9C9_safe_return         ; If the bomb Y-position != 0xBF
C - - - - - 0x01F9E6 07:F9D6: 20 46 EF  JSR sub_EF46_switch_bank_4_p1    ;
C - - - - - 0x01F9E9 07:F9D9: A0 00     LDY #$00                         ; 1st of 5 bytes
bra_F9DB_next_set:
C - - - - - 0x01F9EB 07:F9DB: B1 BF     LDA (vDestrWallAddr),Y           ;
C - - - - - 0x01F9ED 07:F9DD: C9 FF     CMP #$FF                         ; CONSTANT - mark 'the end'
C - - - - - 0x01F9EF 07:F9DF: F0 E8     BEQ bra_F9C9_safe_return         ; If the wall X-position == 0xFF
C - - - - - 0x01F9F1 07:F9E1: 38        SEC                              ;
C - - - - - 0x01F9F2 07:F9E2: ED B6 03  SBC vItemPosXLow                 ;
C - - - - - 0x01F9F5 07:F9E5: 85 00     STA ram_0000                     ; <~ wall X-position (low) - bomb X-position (low)
C - - - - - 0x01F9F7 07:F9E7: C8        INY                              ; 2nd of 5 bytes
C - - - - - 0x01F9F8 07:F9E8: B1 BF     LDA (vDestrWallAddr),Y           ;
C - - - - - 0x01F9FA 07:F9EA: ED BC 03  SBC vItemPosXHigh                ;
C - - - - - 0x01F9FD 07:F9ED: 85 01     STA ram_0001                     ; <~ wall X-position (high) - bomb X-position (high)
C - - - - - 0x01F9FF 07:F9EF: B0 0B     BCS @bra_F9FC_skip               ; If wall X-position (high) >= bomb X-position (high)
C - - - - - 0x01FA01 07:F9F1: A5 00     LDA ram_0000                     ; here $0000 < 0x00
C - - - - - 0x01FA03 07:F9F3: 20 73 D0  JSR sub_D073_invert_sign         ;
C - - - - - 0x01FA06 07:F9F6: 85 00     STA ram_0000                     ; <~ |wall X-position (low) - bomb X-position (low)|
C - - - - - 0x01FA08 07:F9F8: A5 01     LDA ram_0001                     ;
C - - - - - 0x01FA0A 07:F9FA: C9 FF     CMP #$FF                         ;
@bra_F9FC_skip:
C - - - - - 0x01FA0C 07:F9FC: D0 22     BNE bra_FA20_inc_next_set        ; If wall X-position (high) > bomb X-position (high)
                                                                         ; or wall X-position (high) + 1 != bomb X-position (high) for invert sign
C - - - - - 0x01FA0E 07:F9FE: A5 00     LDA ram_0000                     ; <~ |wall X-position (low) - bomb X-position (low)|
C - - - - - 0x01FA10 07:FA00: C9 08     CMP #$08                         ; CONSTANT - allowable tolerance for destroyable walls
C - - - - - 0x01FA12 07:FA02: B0 1C     BCS bra_FA20_inc_next_set        ; If |wall X-position (low) - bomb X-position (low)| > 0x08
C - - - - - 0x01FA14 07:FA04: C8        INY                              ; 3rd of 5 bytes
C - - - - - 0x01FA15 07:FA05: B1 BF     LDA (vDestrWallAddr),Y           ;
C - - - - - 0x01FA17 07:FA07: 85 C3     STA vDisplayRoomType             ;
C - - - - - 0x01FA19 07:FA09: C8        INY                              ; 4th of 5 bytes
C - - - - - 0x01FA1A 07:FA0A: B1 BF     LDA (vDestrWallAddr),Y           ;
C - - - - - 0x01FA1C 07:FA0C: AA        TAX                              ; X <~ the room index
C - - - - - 0x01FA1D 07:FA0D: BD 00 05  LDA vRooms,X                     ;
C - - - - - 0x01FA20 07:FA10: 29 BF     AND #$BF                         ; CONSTANT - all except 'it is possible to enter the room' flag
C - - - - - 0x01FA22 07:FA12: 9D 00 05  STA vRooms,X                     ;
C - - - - - 0x01FA25 07:FA15: C8        INY                              ; 5th of 5 bytes
C - - - - - 0x01FA26 07:FA16: B1 BF     LDA (vDestrWallAddr),Y           ;
C - - - - - 0x01FA28 07:FA18: 85 C1     STA vCurrentCorridorOffset       ; vCorridorAddr offset
C - - - - - 0x01FA2A 07:FA1A: 20 2F FA  JSR sub_FA2F_opening_or_closing  ;
C - - - - - 0x01FA2D 07:FA1D: 68        PLA                              ;
C - - - - - 0x01FA2E 07:FA1E: AA        TAX                              ; retrieve an bomb index (see $F9CE)
C - - - - - 0x01FA2F 07:FA1F: 60        RTS                              ;

bra_FA20_inc_next_set:
C - - - - - 0x01FA30 07:FA20: C8        INY                     ; 3rd of 5 bytes
C - - - - - 0x01FA31 07:FA21: C8        INY                     ; 4th of 5 bytes
C - - - - - 0x01FA32 07:FA22: C8        INY                     ; 5th of 5 bytes
C - - - - - 0x01FA33 07:FA23: C8        INY                     ; next the set of bytes
C - - - - - 0x01FA34 07:FA24: D0 B5     BNE bra_F9DB_next_set   ; If Register Y != 0x00
bra_FA26_RTS:
C - - - - - 0x01FA36 07:FA26: 60        RTS                     ;

sub_FA27_try_to_close:
C - - - - - 0x01FA37 07:FA27: A5 C6     LDA vDoorAttribute    ;
C - - - - - 0x01FA39 07:FA29: 30 FB     BMI bra_FA26_RTS      ; If we let you to leave the door open
C - - - - - 0x01FA3B 07:FA2B: A9 02     LDA #$02              ; CONSTANT - the offset for the open doors
C - - - - - 0x01FA3D 07:FA2D: D0 02     BNE bra_FA31_skip     ; Always true

sub_FA2F_opening_or_closing:
C - - - - - 0x01FA3F 07:FA2F: A9 00     LDA #$00                         ; CONSTANT - the offset for the closed doors
bra_FA31_skip:
C - - - - - 0x01FA41 07:FA31: 85 12     STA $0012                        ; store 0x00 or 0x02
C - - - - - 0x01FA43 07:FA33: A4 C3     LDY vDisplayRoomType             ;
C - - - - - 0x01FA45 07:FA35: F0 EF     BEQ bra_FA26_RTS                 ; If the room type is 0x00
C - - - - - 0x01FA47 07:FA37: 20 46 EF  JSR sub_EF46_switch_bank_4_p1    ;
C - - - - - 0x01FA4A 07:FA3A: 88        DEY                              ;
C - - - - - 0x01FA4B 07:FA3B: 98        TYA                              ; 
C - - - - - 0x01FA4C 07:FA3C: 0A        ASL                              ; *2, because the addresses have 2 bytes
C - - - - - 0x01FA4D 07:FA3D: 0A        ASL                              ; *2, because that is 2 addresses
C - - - - - 0x01FA4E 07:FA3E: 18        CLC                              ;
C - - - - - 0x01FA4F 07:FA3F: 65 12     ADC $0012                        ;
C - - - - - 0x01FA51 07:FA41: A8        TAY                              ; A <~ 4 * (type - 1) or A <~ 4 * (type - 1) + 2
C - - - - - 0x01FA52 07:FA42: B9 92 83  LDA tbl_room_types,Y             ;
C - - - - - 0x01FA55 07:FA45: 85 12     STA $0012                        ; Low address
C - - - - - 0x01FA57 07:FA47: B9 93 83  LDA tbl_room_types + 1,Y         ;
C - - - - - 0x01FA5A 07:FA4A: 85 13     STA $0013                        ; High address
C - - - - - 0x01FA5C 07:FA4C: A0 00     LDY #$00                         ; 1 of 2 bytes
C - - - - - 0x01FA5E 07:FA4E: B1 12     LDA ($0012),Y                    ;
C - - - - - 0x01FA60 07:FA50: 8D 32 06  STA vPpuBufferCount              ; init count
C - - - - - 0x01FA63 07:FA53: C8        INY                              ; 2 of 2 bytes
C - - - - - 0x01FA64 07:FA54: B1 12     LDA ($0012),Y                    ;
C - - - - - 0x01FA66 07:FA56: 85 54     STA vPpuBufferInitValue          ; set an initialization value
C - - - - - 0x01FA68 07:FA58: A4 C1     LDY vCurrentCorridorOffset       ;
C - - - - - 0x01FA6A 07:FA5A: B1 BD     LDA (vCorridorAddr),Y            ; 1 of 5 bytes (e.g. see tbl_ptr_corridors_level_1_0)
C - - - - - 0x01FA6C 07:FA5C: 48        PHA                              ; deposit 1st byte
C - - - - - 0x01FA6D 07:FA5D: A2 A2     LDX #$A2                         ; CONSTANT - PPU address $22XX (3 mode)
C - - - - - 0x01FA6F 07:FA5F: 6A        ROR                              ;
C - - - - - 0x01FA70 07:FA60: 90 02     BCC bra_FA64_skip                ; If the screen number is even
C - - - - - 0x01FA72 07:FA62: A2 A6     LDX #$A6                         ; CONSTANT - PPU address $26XX (3 mode)
bra_FA64_skip:
C - - - - - 0x01FA74 07:FA64: 8E 31 06  STX vHighPpuAddress              ;
C - - - - - 0x01FA77 07:FA67: 68        PLA                              ; retrieve 1st byte (see $FA5C)
C - - - - - 0x01FA78 07:FA68: 29 40     AND #$40                         ; CONSTANT - the floor (top or bottom)
C - - - - - 0x01FA7A 07:FA6A: F0 03     BEQ @bra_FA6F_is_top             ; If the floor is top
C - - - - - 0x01FA7C 07:FA6C: EE 31 06  INC vHighPpuAddress              ; PPU address $23XX or $27XX
@bra_FA6F_is_top:
C - - - - - 0x01FA7F 07:FA6F: A9 00     LDA #$00                         ;
C - - - - - 0x01FA81 07:FA71: 8D 30 06  STA vLowPpuAddress               ; PPU address $XX00
C - - - - - 0x01FA84 07:FA74: A6 54     LDX vPpuBufferInitValue          ; set loop counter
@bra_FA76_loop:                                                          ; loop by x
C - - - - - 0x01FA86 07:FA76: AD 30 06  LDA vLowPpuAddress               ;
C - - - - - 0x01FA89 07:FA79: 38        SEC                              ;
C - - - - - 0x01FA8A 07:FA7A: E9 20     SBC #$20                         ;
C - - - - - 0x01FA8C 07:FA7C: 8D 30 06  STA vLowPpuAddress               ; vLowPpuAddress <~ vLowPpuAddress - 0x20
C - - - - - 0x01FA8F 07:FA7F: AD 31 06  LDA vHighPpuAddress              ;
C - - - - - 0x01FA92 07:FA82: E9 00     SBC #$00                         ;
C - - - - - 0x01FA94 07:FA84: 8D 31 06  STA vHighPpuAddress              ; decrement vHighPpuAddress, if vHighPpuAddress changed a sign
C - - - - - 0x01FA97 07:FA87: CA        DEX                              ; decrement loop counter
C - - - - - 0x01FA98 07:FA88: D0 EC     BNE @bra_FA76_loop               ; If Register X != 0x00
C - - - - - 0x01FA9A 07:FA8A: C8        INY                              ; 2 of 5 bytes (e.g. see tbl_ptr_corridors_level_1_0)
C - - - - - 0x01FA9B 07:FA8B: B1 BD     LDA (vCorridorAddr),Y            ;
C - - - - - 0x01FA9D 07:FA8D: 4A        LSR                              ;
C - - - - - 0x01FA9E 07:FA8E: 4A        LSR                              ;
C - - - - - 0x01FA9F 07:FA8F: 4A        LSR                              ; /8
C - - - - - 0x01FAA0 07:FA90: 0D 30 06  ORA vLowPpuAddress               ;
C - - - - - 0x01FAA3 07:FA93: 8D 30 06  STA vLowPpuAddress               ;
C - - - - - 0x01FAA6 07:FA96: CE 30 06  DEC vLowPpuAddress               ; vLowPpuAddress <~ vLowPpuAddress + {0x00, 0x01, ..., 0x1F} - 1
C - - - - - 0x01FAA9 07:FA99: A5 C3     LDA vDisplayRoomType             ;
C - - - - - 0x01FAAB 07:FA9B: C9 03     CMP #$03                         ;
C - - - - - 0x01FAAD 07:FA9D: F0 08     BEQ @bra_FAA7_dec                ; If the room type == 0x03
C - - - - - 0x01FAAF 07:FA9F: C9 0B     CMP #$0B                         ;
C - - - - - 0x01FAB1 07:FAA1: F0 04     BEQ @bra_FAA7_dec                ; If the room type == 0x0B
C - - - - - 0x01FAB3 07:FAA3: C9 07     CMP #$07                         ;
C - - - - - 0x01FAB5 07:FAA5: D0 03     BNE @bra_FAAA_skip               ; If the room type != 0x03
@bra_FAA7_dec:
C - - - - - 0x01FAB7 07:FAA7: CE 30 06  DEC vLowPpuAddress               ;
@bra_FAAA_skip:
C - - - - - 0x01FABA 07:FAAA: A0 02     LDY #$02                         ; a starting index of data
C - - - - - 0x01FABC 07:FAAC: A2 00     LDX #$00                         ; set loop counter
@bra_FAAE_loop:
C - - - - - 0x01FABE 07:FAAE: B1 12     LDA ($0012),Y                    ;
C - - - - - 0x01FAC0 07:FAB0: 9D 33 06  STA vPpuBufferData,X             ; fill a buffer for rendering
C - - - - - 0x01FAC3 07:FAB3: C8        INY                              ; next data
C - - - - - 0x01FAC4 07:FAB4: E8        INX                              ; increment loop counter
C - - - - - 0x01FAC5 07:FAB5: EC 32 06  CPX vPpuBufferCount              ;
C - - - - - 0x01FAC8 07:FAB8: D0 F4     BNE @bra_FAAE_loop               ; If Register X != vPpuBufferCount
C - - - - - 0x01FACA 07:FABA: A9 0D     LDA #$0D                         ; CONSTANT - sound of the opening and closing door
C - - - - - 0x01FACC 07:FABC: 20 20 C4  JSR sub_C420_add_sound_effect    ;
C - - - - - 0x01FACF 07:FABF: 60        RTS                              ;

sub_FAC0_event_poll:
C - - - - - 0x01FAD0 07:FAC0: A9 00     LDA #$00                                  ;
C - - - - - 0x01FAD2 07:FAC2: 85 41     STA vNPCMessageStatus                     ; clear
C - - - - - 0x01FAD4 07:FAC4: 85 3B     STA vSharedGameStatus                     ; CONSTANT - In the game
C - - - - - 0x01FAD6 07:FAC6: 85 C8     STA vMessageInProgress                    ; CONSTANT - no message
C - - - - - 0x01FAD8 07:FAC8: 85 38     STA vPauseStatus                          ; CONSTANT - no pause
C - - - - - 0x01FADA 07:FACA: 20 46 EF  JSR sub_EF46_switch_bank_4_p1             ;
C - - - - - 0x01FADD 07:FACD: A5 39     LDA vGameInterruptEvent                   ;
C - - - - - 0x01FADF 07:FACF: F0 1B     BEQ bra_FAEC_skip                         ; If vGameInterruptEvent isn't exist
C - - - - - 0x01FAE1 07:FAD1: C9 E0     CMP #$E0                                  ;
C - - - - - 0x01FAE3 07:FAD3: F0 17     BEQ bra_FAEC_skip                         ; If vGameInterruptEvent is 'to next level'
C - - - - - 0x01FAE5 07:FAD5: C9 C0     CMP #$C0                                  ;
C - - - - - 0x01FAE7 07:FAD7: F0 13     BEQ bra_FAEC_skip                         ; If vGameInterruptEvent is 'go into the corridor'
C - - - - - 0x01FAE9 07:FAD9: C9 C1     CMP #$C1                                  ;
C - - - - - 0x01FAEB 07:FADB: F0 55     BEQ bra_FB32_start_diving                 ; If vGameInterruptEvent is 'dive into the water'
C - - - - - 0x01FAED 07:FADD: C9 C2     CMP #$C2                                  ;
C - - - - - 0x01FAEF 07:FADF: F0 5A     BEQ bra_FB3B_get_out                      ; If vGameInterruptEvent is 'get out of the water'
C - - - - - 0x01FAF1 07:FAE1: C9 C3     CMP #$C3                                  ;
C - - - - - 0x01FAF3 07:FAE3: F0 53     BEQ bra_FB38_restore                      ; If vGameInterruptEvent is 'leave the unique room'
C - - - - - 0x01FAF5 07:FAE5: C9 C4     CMP #$C4                                  ;
C - - - - - 0x01FAF7 07:FAE7: F0 16     BEQ bra_FAFF_boss_is_defeated             ; If vGameInterruptEvent is 'to the cutscene of defeating the boss'
C - - - - - 0x01FAF9 07:FAE9: 4C 41 FB  JMP loc_FB41_select_character_after_death ;

bra_FAEC_skip:
loc_FAEC_start_of_level:
C D 3 - - - 0x01FAFC 07:FAEC: 20 9A FB  JSR sub_FB9A_prepare_position_by_checkpoint ;
C - - - - - 0x01FAFF 07:FAEF: 20 C7 C6  JSR sub_C6C7_update_room_with_message       ;
C - - - - - 0x01FB02 07:FAF2: A0 C7     LDY #$C7                                    ; ~> vScreenChrPosY
C - - - - - 0x01FB04 07:FAF4: A5 46     LDA vNoRoom                                 ;
C - - - - - 0x01FB06 07:FAF6: C9 19     CMP #$19                                    ; CONSTANT - level racing
C - - - - - 0x01FB08 07:FAF8: F0 02     BEQ @bra_FAFC_skip                          ; If vNoRoom == 0x19
C - - - - - 0x01FB0A 07:FAFA: A0 BF     LDY #$BF                                    ; ~> vScreenChrPosY
@bra_FAFC_skip:
C - - - - - 0x01FB0C 07:FAFC: 84 6A     STY vScreenChrPosY                          ;
C - - - - - 0x01FB0E 07:FAFE: 60        RTS                                         ;

bra_FAFF_boss_is_defeated:
C - - - - - 0x01FB0F 07:FAFF: A4 5E     LDY vNoLevel                          ;
C - - - - - 0x01FB11 07:FB01: C0 03     CPY #$03                              ; CONSTANT - the level 4
C - - - - - 0x01FB13 07:FB03: F0 1A     BEQ bra_FB1F_last_level               ; If vNoLevel == 0x03
C - - - - - 0x01FB15 07:FB05: A5 46     LDA vNoRoom                           ;
C - - - - - 0x01FB17 07:FB07: 38        SEC                                   ;
C - - - - - 0x01FB18 07:FB08: E9 05     SBC #$05                              ;
C - - - - - 0x01FB1A 07:FB0A: 85 46     STA vNoRoom                           ; from the boss room to the NPC room (0x1F ~> 0x1A, 0x21 ~> 0x1C, 0x22 ~> 0x1D)
C - - - - - 0x01FB1C 07:FB0C: B9 2F FB  LDA tbl_FB2F_NPC_indexes,Y            ;
C - - - - - 0x01FB1F 07:FB0F: 85 B7     STA vRoomExtraInfo                    ;
C - - - - - 0x01FB21 07:FB11: 20 C7 C6  JSR sub_C6C7_update_room_with_message ;
C - - - - - 0x01FB24 07:FB14: A5 3B     LDA vSharedGameStatus                 ;
C - - - - - 0x01FB26 07:FB16: 09 02     ORA #$02                              ; CONSTANT - the boss is defeated
C - - - - - 0x01FB28 07:FB18: 85 3B     STA vSharedGameStatus                 ;
loc_FB1A_initial_clear:
C D 3 - - - 0x01FB2A 07:FB1A: A9 40     LDA #$40                              ; CONSTANT - the message is clearing
C - - - - - 0x01FB2C 07:FB1C: 85 41     STA vNPCMessageStatus                 ;
C - - - - - 0x01FB2E 07:FB1E: 60        RTS                                   ;

bra_FB1F_last_level:
C - - - - - 0x01FB2F 07:FB1F: A9 32     LDA #$32                     ; assigns CHR Bank data (???)
C - - - - - 0x01FB31 07:FB21: 8D B6 06  STA vChrBankData             ;
C - - - - - 0x01FB34 07:FB24: A9 0B     LDA #$0B                     ; CONSTANT - A final scene
C - - - - - 0x01FB36 07:FB26: 85 3B     STA vSharedGameStatus        ;
C - - - - - 0x01FB38 07:FB28: A9 00     LDA #$00                     ; CONSTANT - a starting value
C - - - - - 0x01FB3A 07:FB2A: 85 D8     STA vFinalSceneNo            ;
C - - - - - 0x01FB3C 07:FB2C: 4C 1A FB  JMP loc_FB1A_initial_clear   ;

tbl_FB2F_NPC_indexes:
- D 3 - - - 0x01FB3F 07:FB2F: 03        .byte $03    ; level 1, see tbl_ptr_rooms1_4_with_NPCs
- D 3 - - - 0x01FB40 07:FB30: 09        .byte $09    ; level 2, see tbl_ptr_rooms2_10_with_NPCs
- D 3 - - - 0x01FB41 07:FB31: 04        .byte $04    ; level 3, see tbl_ptr_rooms3_5_with_NPCs

bra_FB32_start_diving:
C - - - - - 0x01FB42 07:FB32: 20 47 FC  JSR sub_FC47_init_diving                 ;
C - - - - - 0x01FB45 07:FB35: 4C C7 C6  JMP loc_C6C7_update_room_with_message    ;

bra_FB38_restore:
C - - - - - 0x01FB48 07:FB38: 4C F7 FB  JMP loc_FBF7_restore_room_params_        ;

bra_FB3B_get_out:
C - - - - - 0x01FB4B 07:FB3B: 20 9C FC  JSR sub_FC9C_finish_diving               ;
C - - - - - 0x01FB4E 07:FB3E: 4C EC FA  JMP loc_FAEC_start_of_level              ;

loc_FB41_select_character_after_death:
C D 3 - - - 0x01FB51 07:FB41: A9 00     LDA #$00                                 ;
C - - - - - 0x01FB53 07:FB43: 85 B7     STA vRoomExtraInfo                       ; clear
C - - - - - 0x01FB55 07:FB45: A5 46     LDA vNoRoom                              ;
C - - - - - 0x01FB57 07:FB47: 0A        ASL                                      ; *2, because the addresses have 2 bytes
C - - - - - 0x01FB58 07:FB48: A8        TAY                                      ;
C - - - - - 0x01FB59 07:FB49: B9 BE 83  LDA tbl_checkpoint_after_death,Y         ;
C - - - - - 0x01FB5C 07:FB4C: 85 12     STA $0012                                ; Low address
C - - - - - 0x01FB5E 07:FB4E: B9 BF 83  LDA tbl_checkpoint_after_death + 1,Y     ;
C - - - - - 0x01FB61 07:FB51: 85 13     STA $0013                                ; High address
C - - - - - 0x01FB63 07:FB53: A0 00     LDY #$00                                 ;
C - - - - - 0x01FB65 07:FB55: B1 12     LDA ($0012),Y                            ; <~ 0x00 or 0x80
C - - - - - 0x01FB67 07:FB57: 10 07     BPL @bra_FB60_point_to_the_left          ;
@bra_FB59_repeat:
C - - - - - 0x01FB69 07:FB59: 20 8D FB  JSR sub_FB8D_check_character_direction   ;
C - - - - - 0x01FB6C 07:FB5C: B0 FB     BCS @bra_FB59_repeat                     ; If the position is to the right of the character
C - - - - - 0x01FB6E 07:FB5E: 90 05     BCC @bra_FB65_continue                   ; Always true
@bra_FB60_point_to_the_left:
C - - - - - 0x01FB70 07:FB60: 20 8D FB  JSR sub_FB8D_check_character_direction   ;
C - - - - - 0x01FB73 07:FB63: 90 FB     BCC @bra_FB60_point_to_the_left          ; If the position is to the left of the character
@bra_FB65_continue:
C - - - - - 0x01FB75 07:FB65: C0 03     CPY #$03                                 ;
C - - - - - 0x01FB77 07:FB67: D0 03     BNE bra_FB6C_set_positions               ; If the position isn't number one
C - - - - - 0x01FB79 07:FB69: 4C EC FA  JMP loc_FAEC_start_of_level              ;

bra_FB6C_set_positions:
C - - - - - 0x01FB7C 07:FB6C: 88        DEY                    ; prev 3 of 3 bytes
C - - - - - 0x01FB7D 07:FB6D: 88        DEY                    ; 2 of 3 bytes
C - - - - - 0x01FB7E 07:FB6E: 88        DEY                    ; 1 of 3 bytes
C - - - - - 0x01FB7F 07:FB6F: 88        DEY                    ; prev 3 of 3 bytes
C - - - - - 0x01FB80 07:FB70: 88        DEY                    ; 2 of 3 bytes
C - - - - - 0x01FB81 07:FB71: B1 12     LDA ($0012),Y          ; A <~ posX (low)
C - - - - - 0x01FB83 07:FB73: 85 66     STA vLowChrPosX        ;
C - - - - - 0x01FB85 07:FB75: 38        SEC                    ;
C - - - - - 0x01FB86 07:FB76: E9 80     SBC #$80               ; ViewPort adjusts to the center of the screen
C - - - - - 0x01FB88 07:FB78: 85 27     STA vLowViewPortPosX   ;
C - - - - - 0x01FB8A 07:FB7A: C8        INY                    ; 3 of 3 bytes
C - - - - - 0x01FB8B 07:FB7B: B1 12     LDA ($0012),Y          ; A <~ posX (high)
C - - - - - 0x01FB8D 07:FB7D: 85 68     STA vHighChrPosX       ;
C - - - - - 0x01FB8F 07:FB7F: E9 00     SBC #$00               ; decrement vHighChrPosX, if vLowChrPosX changed a sign
C - - - - - 0x01FB91 07:FB81: 85 4B     STA vHighViewPortPosX  ;
C - - - - - 0x01FB93 07:FB83: C8        INY                    ; next 1 of 3 bytes
C - - - - - 0x01FB94 07:FB84: B1 12     LDA ($0012),Y          ; A <~ pos Y
C - - - - - 0x01FB96 07:FB86: 85 6A     STA vScreenChrPosY     ;
C - - - - - 0x01FB98 07:FB88: A9 80     LDA #$80               ; CONSTANT - the center of the screen
C - - - - - 0x01FB9A 07:FB8A: 85 64     STA vScreenChrPosX     ;
C - - - - - 0x01FB9C 07:FB8C: 60        RTS                    ;

; In: $0012 - the positions list
; Out: the carry status (analog return true or false)
; 1, if the position is to the right of the character
; 0, otherwise.
sub_FB8D_check_character_direction:
C - - - - - 0x01FB9D 07:FB8D: C8        INY                ; 2 of 3 bytes
C - - - - - 0x01FB9E 07:FB8E: B1 12     LDA ($0012),Y      ;
C - - - - - 0x01FBA0 07:FB90: 38        SEC                ;
C - - - - - 0x01FBA1 07:FB91: E5 66     SBC vLowChrPosX    ;
C - - - - - 0x01FBA3 07:FB93: C8        INY                ; 3 of 3 bytes
C - - - - - 0x01FBA4 07:FB94: B1 12     LDA ($0012),Y      ;
C - - - - - 0x01FBA6 07:FB96: E5 68     SBC vHighChrPosX   ;
C - - - - - 0x01FBA8 07:FB98: C8        INY                ; next 1 of 3 bytes
C - - - - - 0x01FBA9 07:FB99: 60        RTS                ;

sub_FB9A_prepare_position_by_checkpoint:
C - - - - - 0x01FBAA 07:FB9A: A9 01     LDA #$01                     ; CONSTANT - an offset for the secondary list
C - - - - - 0x01FBAC 07:FB9C: 24 B7     BIT vRoomExtraInfo           ; 
C - - - - - 0x01FBAE 07:FB9E: 30 02     BMI @bra_FBA2_skip           ; If the secondary list is used
C - - - - - 0x01FBB0 07:FBA0: A9 00     LDA #$00                     ; CONSTANT - an offset for the main list
@bra_FBA2_skip:
C - - - - - 0x01FBB2 07:FBA2: 85 01     STA ram_0001                 ; Register A has 0x00 or 0x01
C - - - - - 0x01FBB4 07:FBA4: A5 C4     LDA vCheckpoint              ;
C - - - - - 0x01FBB6 07:FBA6: 0A        ASL                          ;
C - - - - - 0x01FBB7 07:FBA7: 26 01     ROL ram_0001                 ;
C - - - - - 0x01FBB9 07:FBA9: 0A        ASL                          ;
C - - - - - 0x01FBBA 07:FBAA: 26 01     ROL ram_0001                 ; *4 or *8, because the checkpoint position have 4 bytes
C - - - - - 0x01FBBC 07:FBAC: 18        CLC                          ;
C - - - - - 0x01FBBD 07:FBAD: 6D 0A 80  ADC tbl_ptr_checkpoints      ;
C - - - - - 0x01FBC0 07:FBB0: 85 00     STA ram_0000                 ; Low address
C - - - - - 0x01FBC2 07:FBB2: A5 01     LDA ram_0001                 ; main list = {0x00, 0x01, 0x02, 0x03}, secondary list = {0x04, 0x05, 0x06, 0x07}
C - - - - - 0x01FBC4 07:FBB4: 6D 0B 80  ADC tbl_ptr_checkpoints + 1  ;
C - - - - - 0x01FBC7 07:FBB7: 85 01     STA ram_0001                 ; High address
C - - - - - 0x01FBC9 07:FBB9: A0 00     LDY #$00                     ; 1 of 4 bytes
C - - - - - 0x01FBCB 07:FBBB: B1 00     LDA (ram_0000),Y             ;
C - - - - - 0x01FBCD 07:FBBD: 85 46     STA vNoRoom                  ;
C - - - - - 0x01FBCF 07:FBBF: C8        INY                          ; 2 of 4 bytes
C - - - - - 0x01FBD0 07:FBC0: B1 00     LDA (ram_0000),Y             ;
C - - - - - 0x01FBD2 07:FBC2: 85 4B     STA vHighViewPortPosX        ;
C - - - - - 0x01FBD4 07:FBC4: C8        INY                          ; 3 of 4 bytes
C - - - - - 0x01FBD5 07:FBC5: B1 00     LDA (ram_0000),Y             ;
C - - - - - 0x01FBD7 07:FBC7: 85 27     STA vLowViewPortPosX         ;
C - - - - - 0x01FBD9 07:FBC9: C8        INY                          ; 4 of 4 bytes
C - - - - - 0x01FBDA 07:FBCA: B1 00     LDA (ram_0000),Y             ;
C - - - - - 0x01FBDC 07:FBCC: 85 64     STA vScreenChrPosX           ;
C - - - - - 0x01FBDE 07:FBCE: 18        CLC                          ;
C - - - - - 0x01FBDF 07:FBCF: 65 27     ADC vLowViewPortPosX         ; 
C - - - - - 0x01FBE1 07:FBD1: 85 66     STA vLowChrPosX              ;
C - - - - - 0x01FBE3 07:FBD3: A5 4B     LDA vHighViewPortPosX        ;
C - - - - - 0x01FBE5 07:FBD5: 69 00     ADC #$00                     ;
C - - - - - 0x01FBE7 07:FBD7: 85 68     STA vHighChrPosX             ;
C - - - - - 0x01FBE9 07:FBD9: 60        RTS                          ;

; Fill the stack before entering the room
sub_FBDA_store_room_params_:
C - - - - - 0x01FBEA 07:FBDA: A5 46     LDA vNoRoom               ;
C - - - - - 0x01FBEC 07:FBDC: 85 47     STA vTempNoSubLevel       ;
C - - - - - 0x01FBEE 07:FBDE: A5 66     LDA vLowChrPosX           ;
C - - - - - 0x01FBF0 07:FBE0: 85 67     STA vTempLowChrPosX       ;
C - - - - - 0x01FBF2 07:FBE2: A5 68     LDA vHighChrPosX          ;
C - - - - - 0x01FBF4 07:FBE4: 85 69     STA vTempHighChrPosX      ;
C - - - - - 0x01FBF6 07:FBE6: A5 6A     LDA vScreenChrPosY        ;
C - - - - - 0x01FBF8 07:FBE8: 85 6B     STA vTempScreenChrPosY    ;
C - - - - - 0x01FBFA 07:FBEA: A5 64     LDA vScreenChrPosX        ;
C - - - - - 0x01FBFC 07:FBEC: 85 65     STA vTempScreenChrPosX    ;
C - - - - - 0x01FBFE 07:FBEE: A5 4B     LDA vHighViewPortPosX     ;
C - - - - - 0x01FC00 07:FBF0: 85 4C     STA vTempHighViewPortPosX ;
C - - - - - 0x01FC02 07:FBF2: A5 27     LDA vLowViewPortPosX      ;
C - - - - - 0x01FC04 07:FBF4: 85 28     STA vTempLowViewPortPosX  ;
C - - - - - 0x01FC06 07:FBF6: 60        RTS                       ;

; Release the stack after leaving the room
loc_FBF7_restore_room_params_:
C D 3 - - - 0x01FC07 07:FBF7: A5 4C     LDA vTempHighViewPortPosX ;
C - - - - - 0x01FC09 07:FBF9: 85 4B     STA vHighViewPortPosX     ;
C - - - - - 0x01FC0B 07:FBFB: A5 28     LDA vTempLowViewPortPosX  ;
C - - - - - 0x01FC0D 07:FBFD: 85 27     STA vLowViewPortPosX      ;
C - - - - - 0x01FC0F 07:FBFF: A5 65     LDA vTempScreenChrPosX    ;
C - - - - - 0x01FC11 07:FC01: 85 64     STA vScreenChrPosX        ;
C - - - - - 0x01FC13 07:FC03: A5 6B     LDA vTempScreenChrPosY    ;
C - - - - - 0x01FC15 07:FC05: 85 6A     STA vScreenChrPosY        ;
C - - - - - 0x01FC17 07:FC07: A5 69     LDA vTempHighChrPosX      ;
C - - - - - 0x01FC19 07:FC09: 85 68     STA vHighChrPosX          ;
C - - - - - 0x01FC1B 07:FC0B: A5 67     LDA vTempLowChrPosX       ;
C - - - - - 0x01FC1D 07:FC0D: 85 66     STA vLowChrPosX           ;
C - - - - - 0x01FC1F 07:FC0F: A5 47     LDA vTempNoSubLevel       ;
C - - - - - 0x01FC21 07:FC11: 85 46     STA vNoRoom               ;
C - - - - - 0x01FC23 07:FC13: 60        RTS                       ;

sub_FC14_prepare_boss:
C - - - - - 0x01FC24 07:FC14: 20 28 FC  JSR sub_FC28_in_room_with_boss  ;
C - - - - - 0x01FC27 07:FC17: 90 23     BCC bra_FC3C_return_false       ; If the current room isn't the room with boss
C - - - - - 0x01FC29 07:FC19: D0 21     BNE bra_FC3C_return_false       ; If the boss is defeated
C - - - - - 0x01FC2B 07:FC1B: A4 5E     LDY vNoLevel                    ;
C - - - - - 0x01FC2D 07:FC1D: B9 43 FC  LDA tbl_FC43_enemy_boss,Y       ;
C - - - - - 0x01FC30 07:FC20: 8D 00 03  STA vEnemyA                     ; assigns the boss number
C - - - - - 0x01FC33 07:FC23: A2 00     LDX #$00                        ; CONSTANT - a stub
C - - - - - 0x01FC35 07:FC25: 4C 27 F3  JMP loc_F327_enemy_appearance   ;

; Out: Carry status: true - the current room with boss, false - otherwise
; Out: Zero status: false - the boss is defeated, true - otherwise
sub_FC28_in_room_with_boss:
C - - - - - 0x01FC38 07:FC28: 20 3E FC  JSR sub_FC3E_boss_defeated_status ;
C - - - - - 0x01FC3B 07:FC2B: D0 0D     BNE bra_FC3A_return_true          ; If The boss is defeated
C - - - - - 0x01FC3D 07:FC2D: 20 FE BB  JSR sub_BBFE_is_unique_room       ;
C - - - - - 0x01FC40 07:FC30: 90 0A     BCC bra_FC3C_return_false         ; If room isn't NPC room, room with the briefcase, room with boss
C - - - - - 0x01FC42 07:FC32: A5 B6     LDA vCurrentUniqueRoom            ;
C - - - - - 0x01FC44 07:FC34: 29 03     AND #$03                          ;
C - - - - - 0x01FC46 07:FC36: C9 03     CMP #$03                          ; CONSTANT - This room is the room with boss
C - - - - - 0x01FC48 07:FC38: D0 02     BNE bra_FC3C_return_false         ; Branch if the room with no boss
bra_FC3A_return_true:
C - - - - - 0x01FC4A 07:FC3A: 38        SEC                               ;
C - - - - - 0x01FC4B 07:FC3B: 60        RTS                               ;

bra_FC3C_return_false:
C - - - - - 0x01FC4C 07:FC3C: 18        CLC                               ;
C - - - - - 0x01FC4D 07:FC3D: 60        RTS                               ;

; Out: Zero flag - The boss isn't defeated
sub_FC3E_boss_defeated_status:
C - - - - - 0x01FC4E 07:FC3E: A5 3B     LDA vSharedGameStatus  ;
C - - - - - 0x01FC50 07:FC40: 29 02     AND #$02               ; CONSTANT - status 'The boss is defeated'
C - - - - - 0x01FC52 07:FC42: 60        RTS                    ;

; Enemy (boss) indexes by level
tbl_FC43_enemy_boss:
- D 3 - - - 0x01FC53 07:FC43: 28        .byte $28   ; Boss (level 1)
- D 3 - - - 0x01FC54 07:FC44: 2A        .byte $2A   ; Boss (level 2)
- D 3 - - - 0x01FC55 07:FC45: 2C        .byte $2C   ; Boss (level 3)
- D 3 - - - 0x01FC56 07:FC46: 2E        .byte $2E   ; Boss (level 4)

sub_FC47_init_diving:
C - - - - - 0x01FC57 07:FC47: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1      ;
C - - - - - 0x01FC5A 07:FC4A: A5 46     LDA vNoRoom                        ;
C - - - - - 0x01FC5C 07:FC4C: C9 42     CMP #$42                           ; CONSTANT - level 4, map 1 (B2-D2)
C - - - - - 0x01FC5E 07:FC4E: 90 03     BCC @bra_FC53_skip                 ; If vNoRoom < 0x42
C - - - - - 0x01FC60 07:FC50: 38        SEC                                ;
C - - - - - 0x01FC61 07:FC51: E9 2E     SBC #$2E                           ; A <~ vNoRoom - 0x2E
@bra_FC53_skip:
C - - - - - 0x01FC63 07:FC53: 38        SEC                                ;
C - - - - - 0x01FC64 07:FC54: E9 07     SBC #$07                           ; A <~ A - 7
C - - - - - 0x01FC66 07:FC56: 0A        ASL                                ; *2, because the addresses have 2 bytes
C - - - - - 0x01FC67 07:FC57: A8        TAY                                ;
C - - - - - 0x01FC68 07:FC58: B9 92 94  LDA tbl_water_rooms_props_in,Y     ;
C - - - - - 0x01FC6B 07:FC5B: 85 12     STA $0012                          ; Low address
C - - - - - 0x01FC6D 07:FC5D: B9 93 94  LDA tbl_water_rooms_props_in + 1,Y ;
C - - - - - 0x01FC70 07:FC60: 85 13     STA $0013                          ; High address
C - - - - - 0x01FC72 07:FC62: A0 00     LDY #$00                           ; set loop counter
@bra_FC64_loop:                                                            ; loop by y
C - - - - - 0x01FC74 07:FC64: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC76 07:FC66: 38        SEC                                ;
C - - - - - 0x01FC77 07:FC67: E5 66     SBC vLowChrPosX                    ;
C - - - - - 0x01FC79 07:FC69: C8        INY                                ; 2 of 6 bytes
C - - - - - 0x01FC7A 07:FC6A: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC7C 07:FC6C: E5 68     SBC vHighChrPosX                   ;
C - - - - - 0x01FC7E 07:FC6E: B0 07     BCS @bra_FC77_break                ; If [Hc:Lc] <= [Hw:Lw] (the water gap position is to the right of the character)
C - - - - - 0x01FC80 07:FC70: C8        INY                                ; 3 of 6 bytes
C - - - - - 0x01FC81 07:FC71: C8        INY                                ; 4 of 6 bytes
C - - - - - 0x01FC82 07:FC72: C8        INY                                ; 5 of 6 bytes
C - - - - - 0x01FC83 07:FC73: C8        INY                                ; 6 of 6 bytes
C - - - - - 0x01FC84 07:FC74: C8        INY                                ; next 1 of 6 bytes
C - - - - - 0x01FC85 07:FC75: D0 ED     BNE @bra_FC64_loop                 ; If Register Y != 0x00
@bra_FC77_break:
C - - - - - 0x01FC87 07:FC77: C8        INY                                ; 3 of 6 bytes
C - - - - - 0x01FC88 07:FC78: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC8A 07:FC7A: 85 46     STA vNoRoom                        ;
C - - - - - 0x01FC8C 07:FC7C: C8        INY                                ; 4 of 6 bytes
C - - - - - 0x01FC8D 07:FC7D: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC8F 07:FC7F: 85 4B     STA vHighViewPortPosX              ; reset viewport X-position (high value)
C - - - - - 0x01FC91 07:FC81: 85 68     STA vHighChrPosX                   ;
C - - - - - 0x01FC93 07:FC83: C8        INY                                ; 5 of 6 bytes
C - - - - - 0x01FC94 07:FC84: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC96 07:FC86: 85 3F     STA vFlowingOffset                 ;
C - - - - - 0x01FC98 07:FC88: C8        INY                                ; 6 of 6 bytes
C - - - - - 0x01FC99 07:FC89: B1 12     LDA ($0012),Y                      ;
C - - - - - 0x01FC9B 07:FC8B: 85 40     STA vWaterRoomIndex                ;
C - - - - - 0x01FC9D 07:FC8D: A9 00     LDA #$00                           ;
C - - - - - 0x01FC9F 07:FC8F: 85 27     STA vLowViewPortPosX               ; reset viewport X-position (low value)
C - - - - - 0x01FCA1 07:FC91: A9 80     LDA #$80                           ; CONSTANT - the center of the screen
C - - - - - 0x01FCA3 07:FC93: 85 64     STA vScreenChrPosX                 ;
C - - - - - 0x01FCA5 07:FC95: 85 66     STA vLowChrPosX                    ;
C - - - - - 0x01FCA7 07:FC97: A9 60     LDA #$60                           ; CONSTANT - a starting value of the character in the water
C - - - - - 0x01FCA9 07:FC99: 85 6A     STA vScreenChrPosY                 ;
C - - - - - 0x01FCAB 07:FC9B: 60        RTS                                ;

sub_FC9C_finish_diving:
C - - - - - 0x01FCAC 07:FC9C: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1         ;
C - - - - - 0x01FCAF 07:FC9F: A5 40     LDA vWaterRoomIndex                   ;
C - - - - - 0x01FCB1 07:FCA1: 0A        ASL                                   ; *2, because the addresses have 2 bytes
C - - - - - 0x01FCB2 07:FCA2: A8        TAY                                   ;
C - - - - - 0x01FCB3 07:FCA3: B9 24 95  LDA tbl_water_rooms_props_out,Y       ;
C - - - - - 0x01FCB6 07:FCA6: 85 12     STA $0012                             ;
C - - - - - 0x01FCB8 07:FCA8: B9 25 95  LDA tbl_water_rooms_props_out + 1,Y   ;
C - - - - - 0x01FCBB 07:FCAB: 85 13     STA $0013                             ;
C - - - - - 0x01FCBD 07:FCAD: A4 68     LDY vHighChrPosX                      ;
C - - - - - 0x01FCBF 07:FCAF: A9 00     LDA #$00                              ;
C - - - - - 0x01FCC1 07:FCB1: 85 B7     STA vRoomExtraInfo                    ; reset
C - - - - - 0x01FCC3 07:FCB3: B1 12     LDA ($0012),Y                         ;
C - - - - - 0x01FCC5 07:FCB5: 85 C4     STA vCheckpoint                       ; assigns the checkpoint
C - - - - - 0x01FCC7 07:FCB7: 4C 5D EF  JMP loc_EF5D_switch_variable_bank     ; restore page $8000-$9FFF

tbl_FCBA_enemies:
- D 3 - - - 0x01FCCA 07:FCBA: 87 F8     .addr loc_enemy_RTS             ; Nobody  (0x00)
- D 3 - - - 0x01FCCC 07:FCBC: AE EE     .addr loc_EEAE_shooter          ; Cat with the gun (level 3) (0x01) Type A
- D 3 - - - 0x01FCCE 07:FCBE: 78 EE     .addr loc_EE78_soar_enemy       ; Gray Land hat (level 3) (0x02) Type B
- D 3 - - - 0x01FCD0 07:FCC0: 78 EE     .addr loc_EE78_soar_enemy       ; Black Land hat (level 3) (0x03) Type B
- D 3 - - - 0x01FCD2 07:FCC2: 6F EE     .addr loc_EE6F_land_diver_enemy ; Land Diver (level 3) (0x04)
- D 3 - - - 0x01FCD4 07:FCC4: 6F EE     .addr loc_EE6F_land_diver_enemy ; Land Diver (level 2) (0x05) Type A
- D 3 - - - 0x01FCD6 07:FCC6: 6F EE     .addr loc_EE6F_land_diver_enemy ; Land Diver (level 1)  (0x06) Type A
- D 3 - - - 0x01FCD8 07:FCC8: B7 EE     .addr loc_EEB7_Zenigata         ; Zenigata (0x07) Type A
- D 3 - - - 0x01FCDA 07:FCCA: 8A EE     .addr loc_EE8A_bazooka_man      ; Shooter with bazooka (level 3) (0x08) Type A
- D 3 - - - 0x01FCDC 07:FCCC: C0 EE     .addr loc_EEC0_fat_sailor       ; The fat sailor (level 3) (0x09) Type A
- D 3 - - - 0x01FCDE 07:FCCE: 81 EE     .addr loc_EE81_barrel_or_stone  ; The barrel (level 3) (0x0A) Type B
- D 3 - - - 0x01FCE0 07:FCD0: 28 A0     .addr loc_A028_jumper           ; Jumping sailor (level 3) (0x0B) Type A
- D 3 - - - 0x01FCE2 07:FCD2: 08 AD     .addr loc_AD08_lift             ; The lift (level 3) (0x0C) Type A
- D 3 - - - 0x01FCE4 07:FCD4: 93 EE     .addr loc_EE93_sensor           ; Sensor (level 3) (0x0D) Type B
- D 3 - - - 0x01FCE6 07:FCD6: 78 EE     .addr loc_EE78_soar_enemy       ; Bat (level 1) (0x0E) Type B
- D 3 - - - 0x01FCE8 07:FCD8: 11 EF     .addr loc_EF11_cat_or_snake     ; Gray cat (level 1) (0x0F) Type B
- D 3 - - - 0x01FCEA 07:FCDA: 28 A0     .addr loc_A028_jumper           ; Nun (level 2) (0x10) Type A
- D 3 - - - 0x01FCEC 07:FCDC: FF EE     .addr loc_EEFF_swordtail        ; Girl in red, in the castle (level 1) (0x11) Type A
- D 3 - - - 0x01FCEE 07:FCDE: 78 EE     .addr loc_EE78_soar_enemy       ; Batterfly (level 2) (0x12) Type B
- D 3 - - - 0x01FCF0 07:FCE0: 78 EE     .addr loc_EE78_soar_enemy       ; Broned batterfly (level 2) (0x13) Type B
- D 3 - - - 0x01FCF2 07:FCE2: 8A EE     .addr loc_EE8A_bazooka_man      ; Shooter with bazooka (level 2) (0x14) Type A
- D 3 - - - 0x01FCF4 07:FCE4: 93 EE     .addr loc_EE93_sensor           ; Sensor (level 2) (0x15) Type B
- D 3 - - - 0x01FCF6 07:FCE6: 11 EF     .addr loc_EF11_cat_or_snake     ; Black cat (level 1) (0x16) Type B
- D 3 - - - 0x01FCF8 07:FCE8: 68 A6     .addr loc_A668_karate_boy       ; Karate-boy  (level 2) (0x17) Type A
- D 3 - - - 0x01FCFA 07:FCEA: 68 A6     .addr loc_A668_karate_boy       ; Street karate-boy (level 2) (0x18) Type A
- D 3 - - - 0x01FCFC 07:FCEC: AE EE     .addr loc_EEAE_shooter          ; Karate-girl (level 2) (0x19) Type A
- D 3 - - - 0x01FCFE 07:FCEE: 09 A3     .addr loc_A309_green_boy        ; Boy in green (level 2) (0x1A) Type A
- D 3 - - - 0x01FD00 07:FCF0: FF EE     .addr loc_EEFF_swordtail        ; Girl with sword (level 1) (0x1B) Type A
- D 3 - - - 0x01FD02 07:FCF2: 08 EF     .addr loc_EF08_knight           ; Knight in armor with a shield (level 1) (0x1C) Type A
- D 3 - - - 0x01FD04 07:FCF4: 81 EE     .addr loc_EE81_barrel_or_stone  ; The barrel (0x1D)
- D 3 - - - 0x01FD06 07:FCF6: 93 EE     .addr loc_EE93_sensor           ; Sensor (level 1) (0x1E) Type B
- D 3 - - - 0x01FD08 07:FCF8: A5 EE     .addr loc_EEA5_fly_man          ; Fly man (0x1F) (level 1) Type A
- D 3 - - - 0x01FD0A 07:FCFA: 8A EE     .addr loc_EE8A_bazooka_man      ; Shooter with bazooka (level 1) (0x20) Type A
- D 3 - - - 0x01FD0C 07:FCFC: 81 EE     .addr loc_EE81_barrel_or_stone  ; Cobblestone (level-racing, level 4) (0x21) Type B
- D 3 - - - 0x01FD0E 07:FCFE: 0A AC     .addr loc_AC0A_bird             ; The bird (level-racing) (0x22) Type B
- D 3 - - - 0x01FD10 07:FD00: 02 AA     .addr loc_AA02_bomb_bird        ; The bird with a bomb (level-racing) (0x23) Type B
- D 3 - - - 0x01FD12 07:FD02: F6 EE     .addr loc_EEF6_undead           ; Skeleton (level 4) (0x24) Type A
- D 3 - - - 0x01FD14 07:FD04: 9C EE     .addr loc_EE9C_diver            ; Diver (0x25) Type B
- D 3 - - - 0x01FD16 07:FD06: F6 EE     .addr loc_EEF6_undead           ; Mummy (0x26) (level 4) Type A
- D 3 - - - 0x01FD18 07:FD08: 78 EE     .addr loc_EE78_soar_enemy       ; Gargoyle (0x27) (level 4) Type B
- D 3 - - - 0x01FD1A 07:FD0A: D2 EE     .addr loc_boss_hulk             ; Boss (level 1) (0x28) Type A
- D 3 - - - 0x01FD1C 07:FD0C: 87 F8     .addr loc_enemy_RTS             ;
- D 3 - - - 0x01FD1E 07:FD0E: DB EE     .addr loc_boss_kim              ; Boss (level 2) (0x2A) Type A
- D 3 - - - 0x01FD20 07:FD10: 87 F8     .addr loc_enemy_RTS             ;
- D 3 - - - 0x01FD22 07:FD12: E4 EE     .addr loc_boss_raid             ; Boss (level 3) (0x2C) Type A
- D 3 - - - 0x01FD24 07:FD14: 87 F8     .addr loc_enemy_RTS             ;
- D 3 - - - 0x01FD26 07:FD16: ED EE     .addr loc_final_boss            ; Boss (level 4) (0x2E) Type A
- D 3 - - - 0x01FD28 07:FD18: 87 F8     .addr loc_enemy_RTS             ;
- D 3 - - - 0x01FD2A 07:FD1A: 34 AE     .addr loc_AE34_platform         ; Wall (0x30)
- D 3 - - - 0x01FD2C 07:FD1C: 34 AE     .addr loc_AE34_platform         ; Wall (0x31)
- D 3 - - - 0x01FD2E 07:FD1E: 34 AE     .addr loc_AE34_platform         ; Breaking platform (level 4) (0x32) Type B
- D 3 - - - 0x01FD30 07:FD20: C9 EE     .addr loc_EEC9_blade_trap       ; Blade trap (level 4) (0x33) Type B
- D 3 - - - 0x01FD32 07:FD22: 11 EF     .addr loc_EF11_cat_or_snake     ; Potted snakes (level 4) (0x34)  Type B
- D 3 - - - 0x01FD34 07:FD24: AE EE     .addr loc_EEAE_shooter          ; Egyptian with bow (level 4) (0x35) Type A
- D 3 - - - 0x01FD36 07:FD26: FF EE     .addr loc_EEFF_swordtail        ; Egyptian with a sword (level 4) (0x36) Type A
- D 3 - - - 0x01FD38 07:FD28: AE EE     .addr loc_EEAE_shooter          ; Egyptian with a boomerung (level 4) (0x37) Type A
- D 3 - - - 0x01FD3A 07:FD2A: AE EE     .addr loc_EEAE_shooter          ; Ninja upside down (level 4) (0x38) Type A
- D 3 - - - 0x01FD3C 07:FD2C: 93 EE     .addr loc_EE93_sensor           ; Sensor (level 4) (0x39) Type B

; see loc_BD2E_activate_jump_status (bank 03, page 2)
C - - - - - 0x01FD3E 07:FD2E: A9 06     LDA #$06                              ; !(UNUSED)
C - - - - - 0x01FD40 07:FD30: A0 03     LDY #$03                              ; !(UNUSED)
C - - - - - 0x01FD42 07:FD32: 9D 86 03  STA vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FD45 07:FD35: 98        TYA                                   ; !(UNUSED)
C - - - - - 0x01FD46 07:FD36: 9D 92 03  STA vEnemyBJumpType,X                 ; !(UNUSED)
C - - - - - 0x01FD49 07:FD39: A9 02     LDA #$02                              ; !(UNUSED)
C - - - - - 0x01FD4B 07:FD3B: 20 1C BE  JSR $BE1C                             ; !(UNUSED), see sub_BE1C_change_substatus (bank 03, page 2)
C - - - - - 0x01FD4E 07:FD3E: A9 01     LDA #$01                              ; !(UNUSED)
C - - - - - 0x01FD50 07:FD40: 9D 80 03  STA vEnemyBFrame_Counter,X            ; !(UNUSED)
C - - - - - 0x01FD53 07:FD43: BD 68 03  LDA vEnemyBPosY,X                     ; !(UNUSED)
C - - - - - 0x01FD56 07:FD46: C9 DF     CMP #$DF                              ; !(UNUSED), CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01FD58 07:FD48: B0 1E     BCS bra_FD68_skip                     ; !(UNUSED)
C - - - - - 0x01FD5A 07:FD4A: BD 92 03  LDA vEnemyBJumpType,X                 ; !(UNUSED)
C - - - - - 0x01FD5D 07:FD4D: C9 03     CMP #$03                              ; !(UNUSED)
C - - - - - 0x01FD5F 07:FD4F: D0 17     BNE bra_FD68_skip                     ; !(UNUSED)
C - - - - - 0x01FD61 07:FD51: BD 5C 03  LDA vEnemyBStatus,X                   ; !(UNUSED)
C - - - - - 0x01FD64 07:FD54: 6A        ROR                                   ; !(UNUSED)
C - - - - - 0x01FD65 07:FD55: 90 0A     BCC bra_FD61_right                    ; !(UNUSED)
C - - - - - 0x01FD67 07:FD57: 29 10     AND #$10                              ; !(UNUSED)
C - - - - - 0x01FD69 07:FD59: D0 0A     BNE bra_FD65_invert                   ; !(UNUSED)
bra_FD5B_invert:
C - - - - - 0x01FD6B 07:FD5B: 20 FB BC  JSR $BCFB                             ; !(UNUSED), see sub_BCFB_try_movement_on_the_left (bank 03, page 2)
C - - - - - 0x01FD6E 07:FD5E: 4C 68 BD  JMP $BD68                             ; !(UNUSED), see loc_BD68_continue (bank 03, page 2)

bra_FD61_right:
C - - - - - 0x01FD71 07:FD61: 29 10     AND #$10                              ; !(UNUSED)
C - - - - - 0x01FD73 07:FD63: D0 F6     BNE bra_FD5B_invert                   ; !(UNUSED)
bra_FD65_invert:
C - - - - - 0x01FD75 07:FD65: 20 20 BD  JSR $BD20                             ; !(UNUSED), see sub_BD20_try_movement_on_the_right (bank 03, page 2)
bra_FD68_skip:
C - - - - - 0x01FD78 07:FD68: BC 86 03  LDY vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FD7B 07:FD6B: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y       ; !(UNUSED)
C - - - - - 0x01FD7E 07:FD6E: 18        CLC                                   ; !(UNUSED)
C - - - - - 0x01FD7F 07:FD6F: 7D 68 03  ADC vEnemyBPosY,X                     ; !(UNUSED)
C - - - - - 0x01FD82 07:FD72: C9 EF     CMP #$EF                              ; !(UNUSED), CONSTANT - Limit 1 for Y-position
C - - - - - 0x01FD84 07:FD74: 90 09     BCC @bra_FD7F_skip                    ; !(UNUSED)
C - - - - - 0x01FD86 07:FD76: A0 EF     LDY #$EF                              ; !(UNUSED)
C - - - - - 0x01FD88 07:FD78: C9 F8     CMP #$F8                              ; !(UNUSED), CONSTANT - Limit 2 for Y-position
C - - - - - 0x01FD8A 07:FD7A: 90 02     BCC @bra_FD7E_skip                    ; !(UNUSED)
C - - - - - 0x01FD8C 07:FD7C: A0 00     LDY #$00                              ; !(UNUSED)
@bra_FD7E_skip:
C - - - - - 0x01FD8E 07:FD7E: 98        TYA                                   ; !(UNUSED)
@bra_FD7F_skip:
C - - - - - 0x01FD8F 07:FD7F: 9D 68 03  STA vEnemyBPosY,X                     ; !(UNUSED)
C - - - - - 0x01FD92 07:FD82: BC 86 03  LDY vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FD95 07:FD85: C0 18     CPY #$18                              ; !(UNUSED), CONSTANT - a maximum amplitude
C - - - - - 0x01FD97 07:FD87: 90 38     BCC bra_FDC1_inc                      ; !(UNUSED)
C - - - - - 0x01FD99 07:FD89: C9 EF     CMP #$EF                              ; !(UNUSED), CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01FD9B 07:FD8B: 90 05     BCC @bra_FD92_skip                    ; !(UNUSED)
C - - - - - 0x01FD9D 07:FD8D: A0 FF     LDY #$FF                              ; !(UNUSED)
C - - - - - 0x01FD9F 07:FD8F: 4C 7D BC  JMP $BC7D                             ; !(UNUSED), see loc_BC7D_prepare_rendering (bank 03, page 2)

@bra_FD92_skip:
C - - - - - 0x01FDA2 07:FD92: 20 D9 D8  JSR sub_D8D9_enemyB_collision_by_one  ; !(UNUSED)
C - - - - - 0x01FDA5 07:FD95: F0 2A     BEQ bra_FDC1_inc                      ; !(UNUSED)
C - - - - - 0x01FDA7 07:FD97: C9 01     CMP #$01                              ; !(UNUSED), CONSTANT - a strong collision
C - - - - - 0x01FDA9 07:FD99: F0 0D     BEQ bra_FDA8                          ; !(UNUSED), If the collision is strong
C - - - - - 0x01FDAB 07:FD9B: BD 68 03  LDA vEnemyBPosY,X                     ; !(UNUSED)
C - - - - - 0x01FDAE 07:FD9E: C9 BF     CMP #$BF                              ; !(UNUSED)
C - - - - - 0x01FDB0 07:FDA0: B0 06     BCS bra_FDA8                          ; !(UNUSED)
C - - - - - 0x01FDB2 07:FDA2: A5 2C     LDA vLowCounter                       ; !(UNUSED)
C - - - - - 0x01FDB4 07:FDA4: 29 03     AND #$03                              ; !(UNUSED)
C - - - - - 0x01FDB6 07:FDA6: D0 19     BNE bra_FDC1_inc                      ; !(UNUSED)
bra_FDA8:
C - - - - - 0x01FDB8 07:FDA8: BD 5C 03  LDA vEnemyBStatus,X                   ; !(UNUSED)
C - - - - - 0x01FDBB 07:FDAB: 29 20     AND #$20                              ; !(UNUSED), CONSTANT - the dying
C - - - - - 0x01FDBD 07:FDAD: D0 12     BNE bra_FDC1_inc                      ; !(UNUSED), If the enemy is dying
C - - - - - 0x01FDBF 07:FDAF: 20 9C D8  JSR sub_D89C_correction_EnemyBPosY    ; !(UNUSED)
C - - - - - 0x01FDC2 07:FDB2: A9 00     LDA #$00                              ; !(UNUSED)
C - - - - - 0x01FDC4 07:FDB4: 9D 86 03  STA vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FDC7 07:FDB7: A9 02     LDA #$02                              ; !(UNUSED)
C - - - - - 0x01FDC9 07:FDB9: 9D 80 03  STA vEnemyBFrame_Counter,X            ; !(UNUSED)
C - - - - - 0x01FDCC 07:FDBC: A0 08     LDY #$08                              ; !(UNUSED)
C - - - - - 0x01FDCE 07:FDBE: 4C 7D BC  JMP $BC7D                             ; !(UNUSED), see loc_BC7D_prepare_rendering (bank 03, page 2)

bra_FDC1_inc:
C - - - - - 0x01FDD1 07:FDC1: FE 86 03  INC vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FDD4 07:FDC4: A9 2F     LDA #$2F                              ; !(UNUSED), CONSTANT - a maximum jump value
C - - - - - 0x01FDD6 07:FDC6: DD 86 03  CMP vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FDD9 07:FDC9: B0 03     BCS @bra_FDCE_skip                    ; !(UNUSED)
C - - - - - 0x01FDDB 07:FDCB: 9D 86 03  STA vEnemyBJumpCounter,X              ; !(UNUSED)
@bra_FDCE_skip:
C - - - - - 0x01FDDE 07:FDCE: A0 08     LDY #$08                              ; !(UNUSED)
C - - - - - 0x01FDE0 07:FDD0: BD 5C 03  LDA vEnemyBStatus,X                   ; !(UNUSED)
C - - - - - 0x01FDE3 07:FDD3: 29 20     AND #$20                              ; !(UNUSED), CONSTANT - the dying
C - - - - - 0x01FDE5 07:FDD5: D0 02     BNE @bra_FDD9_skip                    ; !(UNUSED)
C - - - - - 0x01FDE7 07:FDD7: A0 04     LDY #$04                              ; !(UNUSED)
@bra_FDD9_skip:
C - - - - - 0x01FDE9 07:FDD9: 4C 7D BC  JMP $BC7D                             ; !(UNUSED), see loc_BC7D_prepare_rendering (bank 03, page 2)

C - - - - - 0x01FDEC 07:FDDC: BD 86 03  LDA vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FDEF 07:FDDF: F0 0A     BEQ @bra_FDEB                         ; !(UNUSED)
C - - - - - 0x01FDF1 07:FDE1: DE 86 03  DEC vEnemyBJumpCounter,X              ; !(UNUSED)
C - - - - - 0x01FDF4 07:FDE4: D0 42     BNE $FE28                             ; !(UNUSED), see bra_BE28_RTS (bank 03, page 2)
C - - - - - 0x01FDF6 07:FDE6: A9 00     LDA #$00                              ; !(UNUSED)
C - - - - - 0x01FDF8 07:FDE8: 20 1C BE  JSR $BE1C                             ; !(UNUSED), see sub_BE1C_change_substatus (bank 03, page 2)
@bra_FDEB:
C - - - - - 0x01FDFB 07:FDEB: 20 29 BE  JSR $BE29                             ; !(UNUSED), see sub_BE29_try_change_direction (bank 03, page 2)
C - - - - - 0x01FDFE 07:FDEE: BD 80 FF  LDA $FF80,X                           ; !(UNUSED), see $BDEE (bank 03, page 2)

; reserve
- D - - - - 0x01FE01 07:FDF1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF

; There are a series of the Namco games, made by the same programmers Haruhisa Udagawa and Kumi Hanaoka, that contains the same self-test for the data integrity.
; To enable any of these tests you need a special device that should be plugged into the expansion port. The operation of that device is very simple.
; It should accept the data bit from the data input port and return it back inverted to the output data port.
; The device consists of 4-bit shift register, working as some sort of the FIFO buffer. The input bits are goes to the input and then shifted to te output after a 4 cycles.
; At the game's boot, it tries to send some special data to the device.
; (*) If the data output doesn't match the data input inverted, then the game continues the normal operation.
; (**) But if all data (usually 32, rarely 64 bytes) is matches, self-tests will be performed.
; The program calculates 24-bit partial checksums for the PRG (excluding the last 8K) and the CHR data, summing only every 15th byte, and comparing it against the etalon.
; Before testing of the PRG data, the background color turns red, before testing of the CHR data, it turns green.
; If any of these tests are failed, the program will jump directly to the reset routine.
; It means, one of these tests will be performed infinitely, but until the special device is plugged in, or until the test are passed.
; Normally, you'll see the red to green flash just before the game's boot. Or the static red screen if the PRG data is bad, or the flashing red to green screen if CHR data isn't good.
; Using this Game Genie code you can skip tests for the special device presence and jump straight to the integrity tests.
sub_FDFB_crc_test:
C - - - - - 0x01FE0B 07:FDFB: BA        TSX                               ; X <~ 0xFD (Stack: $01FD)
C - - - - - 0x01FE0C 07:FDFC: A9 00     LDA #$00                          ;
C - - - - - 0x01FE0E 07:FDFE: 9D F8 00  STA a: vCrcBankData,X             ; set loop counter
@bra_FE01_loop:                                                           ; loop by bank datas (64 times)
C - - - - - 0x01FE11 07:FE01: BC F8 00  LDY a: vCrcBankData,X             ;
C - - - - - 0x01FE14 07:FE04: B9 A0 FF  LDA tbl_FFA0_data_for_device,Y    ; see above (**)
C - - - - - 0x01FE17 07:FE07: 9D F9 00  STA a: vCurrentDeviceData,X       ;
C - - - - - 0x01FE1A 07:FE0A: 48        PHA                               ; store A
C - - - - - 0x01FE1B 07:FE0B: A0 0C     LDY #$0C                          ; set loop counter
@bra_FE0D_loop:                                                           ; loop by x (12 times)
C - - - - - 0x01FE1D 07:FE0D: 3E F9 00  ROL a: vCurrentDeviceData,X       ;
C - - - - - 0x01FE20 07:FE10: 08        PHP                               ; store control flags
C - - - - - 0x01FE21 07:FE11: AD 17 40  LDA JOY2                          ; put data from the device
C - - - - - 0x01FE24 07:FE14: 4A        LSR                               ;
C - - - - - 0x01FE25 07:FE15: 28        PLP                               ; retrieve control flags (see $FE10)
C - - - - - 0x01FE26 07:FE16: 2A        ROL                               ; put data from the device + carry flag (may be)
C - - - - - 0x01FE27 07:FE17: 8D 16 40  STA JOY1                          ;
C - - - - - 0x01FE2A 07:FE1A: 29 08     AND #$08                          ; A <~ 0x08 or 0x00
C - - - - - 0x01FE2C 07:FE1C: C9 01     CMP #$01                          ; carry set 1 for A = 0x08 or carry set 0 for A = 0x00
C - - - - - 0x01FE2E 07:FE1E: 88        DEY                               ; decrement y
C - - - - - 0x01FE2F 07:FE1F: D0 EC     BNE @bra_FE0D_loop                ; If Register Y != 0
C - - - - - 0x01FE31 07:FE21: 68        PLA                               ; retrieve a (see $FE0A)
C - - - - - 0x01FE32 07:FE22: 49 FF     EOR #$FF                          ; see above (*)
C - - - - - 0x01FE34 07:FE24: DD F9 00  CMP a: vCurrentDeviceData,X       ;
C - - - - - 0x01FE37 07:FE27: D0 3E     BNE bra_FE67_RTS                  ; If the tests were not running
C - - - - - 0x01FE39 07:FE29: A9 3F     LDA #$3F                          ; CONSTANT - max bank data value
C - - - - - 0x01FE3B 07:FE2B: 20 29 FF  JSR sub_FF29_next_bank_data       ;
C - - - - - 0x01FE3E 07:FE2E: B0 D1     BCS @bra_FE01_loop                ; If the next bank exists
C - - - - - 0x01FE40 07:FE30: 20 46 FE  JSR sub_FE46_prepare_vram_        ;
C - - - - - 0x01FE43 07:FE33: 20 46 FE  JSR sub_FE46_prepare_vram_        ;
C - - - - - 0x01FE46 07:FE36: A9 05     LDA #$05                          ; CONSTANT - red color
C - - - - - 0x01FE48 07:FE38: 20 30 FF  JSR sub_FF30_prepare_test         ;
C - - - - - 0x01FE4B 07:FE3B: 20 72 FE  JSR sub_FE72_PRG_test             ;
C - - - - - 0x01FE4E 07:FE3E: A9 2A     LDA #$2A                          ; CONSTANT - green color
C - - - - - 0x01FE50 07:FE40: 20 30 FF  JSR sub_FF30_prepare_test         ;
C - - - - - 0x01FE53 07:FE43: 20 DD FE  JSR sub_FEDD_CHR_test             ;
sub_FE46_prepare_vram_:
C - - - - - 0x01FE56 07:FE46: A9 00     LDA #$00                          ;
C - - - - - 0x01FE58 07:FE48: 8D 01 20  STA PPU_MASK                      ; disables all rendering
@bra_FE4B_wait_til_vblank:
C - - - - - 0x01FE5B 07:FE4B: AC 02 20  LDY PPU_STATUS                    ; wait for vblank
C - - - - - 0x01FE5E 07:FE4E: 10 FB     BPL @bra_FE4B_wait_til_vblank     ;
; In: Register A - an adding value
sub_FE50_add_to_checksum:
C - - - - - 0x01FE60 07:FE50: 18        CLC                               ;
C - - - - - 0x01FE61 07:FE51: 7D F5 00  ADC a: vCrcChecksumLowValue,X     ;
C - - - - - 0x01FE64 07:FE54: 9D F5 00  STA a: vCrcChecksumLowValue,X     ;
C - - - - - 0x01FE67 07:FE57: A9 00     LDA #$00                          ;
C - - - - - 0x01FE69 07:FE59: 7D F6 00  ADC a: vCrcChecksumMiddleValue,X  ; value +1 with overflow
C - - - - - 0x01FE6C 07:FE5C: 9D F6 00  STA a: vCrcChecksumMiddleValue,X  ;
C - - - - - 0x01FE6F 07:FE5F: A9 00     LDA #$00                          ;
C - - - - - 0x01FE71 07:FE61: 7D F7 00  ADC a: vCrcChecksumHighValue,X    ; value +1 with overflow
C - - - - - 0x01FE74 07:FE64: 9D F7 00  STA a: vCrcChecksumHighValue,X    ;
bra_FE67_RTS:
C - - - - - 0x01FE77 07:FE67: 60        RTS                               ;

; In: Register A - 0x02 (CHR bank) or 0x06 (PRG bank)
sub_FE68_select_back:
C - - - - - 0x01FE78 07:FE68: 8D 00 80  STA MMC3_Bank_select     ;
C - - - - - 0x01FE7B 07:FE6B: BD F8 00  LDA a: vCrcBankData,X    ;
C - - - - - 0x01FE7E 07:FE6E: 8D 01 80  STA MMC3_Bank_data       ;
C - - - - - 0x01FE81 07:FE71: 60        RTS                      ;

; In: Register X - 0xFD
sub_FE72_PRG_test:
C - - - - - 0x01FE82 07:FE72: A9 AD     LDA #$AD                   ; CONSTANT - LDA absolute opcode
C - - - - - 0x01FE84 07:FE74: 9D F1 00  STA a: $F1,X               ; ~> 0x01EE
C - - - - - 0x01FE87 07:FE77: A9 60     LDA #$60                   ; CONSTANT - RTS opcode
C - - - - - 0x01FE89 07:FE79: 9D F4 00  STA a: $F4,X               ; ~> 0x01F1
C - - - - - 0x01FE8C 07:FE7C: A9 00     LDA #$00                   ;
C - - - - - 0x01FE8E 07:FE7E: 9D F8 00  STA a: vCrcBankData,X      ; reset
bra_FE81_loop:
C - - - - - 0x01FE91 07:FE81: A9 06     LDA #$06                   ; CONSTANT - PRG bank
C - - - - - 0x01FE93 07:FE83: 20 68 FE  JSR sub_FE68_select_back   ;
bra_FE86_repeat:
C - - - - - 0x01FE96 07:FE86: BD F8 00  LDA a: vCrcBankData,X      ;
C - - - - - 0x01FE99 07:FE89: C9 0F     CMP #$0F                   ;
C - - - - - 0x01FE9B 07:FE8B: F0 20     BEQ bra_FEAD_skip          ; If the bank data == 0x0F (for PRG bank)
C - - - - - 0x01FE9D 07:FE8D: AD A9 FE  LDA loc_FEAA - 1           ;
C - - - - - 0x01FEA0 07:FE90: 48        PHA                        ;
C - - - - - 0x01FEA1 07:FE91: AD A8 FE  LDA loc_FEAA - 2           ;
C - - - - - 0x01FEA4 07:FE94: 48        PHA                        ; goings to go by stack pointer lo loc_FEAA
C - - - - - 0x01FEA5 07:FE95: BD F3 00  LDA a: vCrcHighAddress,X   ;
C - - - - - 0x01FEA8 07:FE98: 29 1F     AND #$1F                   ;
C - - - - - 0x01FEAA 07:FE9A: 09 80     ORA #$80                   ;
C - - - - - 0x01FEAC 07:FE9C: 9D F3 00  STA a: vCrcHighAddress,X   ; filters by mask 0%X00XXXXX
C - - - - - 0x01FEAF 07:FE9F: A9 01     LDA #$01                   ;
C - - - - - 0x01FEB1 07:FEA1: 48        PHA                        ;
C - - - - - 0x01FEB2 07:FEA2: 8A        TXA                        ; A <~ 0xFD
C - - - - - 0x01FEB3 07:FEA3: 38        SEC                        ;
C - - - - - 0x01FEB4 07:FEA4: E9 10     SBC #$10                   ; A <~ 0xED
C - - - - - 0x01FEB6 07:FEA6: 48        PHA                        ;
C - - - - - 0x01FEB7 07:FEA7: 60        RTS                        ; go to $01ED and then #FEAA

C - - - - - 0x01FEB8 07:FEA8: A9 FE     LDA #$FE                   ; !(UNUSED)

loc_FEAA:
C - - - - - 0x01FEBA 07:FEAA: 20 50 FE  JSR sub_FE50_add_to_checksum      ;
bra_FEAD_skip:
C - - - - - 0x01FEBD 07:FEAD: 20 18 FF  JSR sub_FF18_inc_low              ;
C - - - - - 0x01FEC0 07:FEB0: 90 D4     BCC bra_FE86_repeat               ; If carry flag is 0 after increments
C - - - - - 0x01FEC2 07:FEB2: 20 22 FF  JSR sub_FF22_inc_high             ;
C - - - - - 0x01FEC5 07:FEB5: 29 1F     AND #$1F                          ;
C - - - - - 0x01FEC7 07:FEB7: D0 CD     BNE bra_FE86_repeat               ; If the high counter < 0x20
C - - - - - 0x01FEC9 07:FEB9: A9 0F     LDA #$0F                          ; CONSTANT - missing value
C - - - - - 0x01FECB 07:FEBB: 20 29 FF  JSR sub_FF29_next_bank_data       ;
C - - - - - 0x01FECE 07:FEBE: B0 C1     BCS bra_FE81_loop                 ; If the next bank exists
C - - - - - 0x01FED0 07:FEC0: A0 00     LDY #$00                          ; prepare an input parameter
; In: Register X - 0xFD
; In: Register Y - 0x00 (1 etalon, CHR bank) or 0x03 (2 etalon, PRG bank)
loc_FEC2_check_checksum:
C - - - - - 0x01FED2 07:FEC2: B9 E0 FF  LDA tbl_FFE0_etalon,Y             ;
C - - - - - 0x01FED5 07:FEC5: 5D F7 00  EOR a: vCrcChecksumHighValue,X    ;
C - - - - - 0x01FED8 07:FEC8: D0 10     BNE @bra_FEDA_fail                ; If the high value didn't match
C - - - - - 0x01FEDA 07:FECA: B9 E1 FF  LDA tbl_FFE0_etalon + 1,Y         ;
C - - - - - 0x01FEDD 07:FECD: 5D F6 00  EOR a: vCrcChecksumMiddleValue,X  ;
C - - - - - 0x01FEE0 07:FED0: D0 08     BNE @bra_FEDA_fail                ; If the middle value didn't match
C - - - - - 0x01FEE2 07:FED2: B9 E2 FF  LDA tbl_FFE0_etalon + 2,Y         ;
C - - - - - 0x01FEE5 07:FED5: 5D F5 00  EOR a: vCrcChecksumLowValue,X     ;
C - - - - - 0x01FEE8 07:FED8: F0 47     BEQ bra_FF21_RTS                  ; If the low value matched
@bra_FEDA_fail:
C - - - - - 0x01FEEA 07:FEDA: 6C FC FF  JMP ($FFFC)                       ; to vec_C000_RESET

sub_FEDD_CHR_test:
C - - - - - 0x01FEED 07:FEDD: A9 00     LDA #$00                   ;
C - - - - - 0x01FEEF 07:FEDF: 9D F8 00  STA a: vCrcBankData,X      ; reset
@bra_FEE2_loop:
C - - - - - 0x01FEF2 07:FEE2: A9 02     LDA #$02                   ; CONSTANT - CHR bank (the second pattern table)
C - - - - - 0x01FEF4 07:FEE4: 20 68 FE  JSR sub_FE68_select_back   ;
@bra_FEE7_repeat:
C - - - - - 0x01FEF7 07:FEE7: BD F3 00  LDA a: vCrcHighAddress,X      ;
C - - - - - 0x01FEFA 07:FEEA: 29 03     AND #$03                      ;
C - - - - - 0x01FEFC 07:FEEC: 09 10     ORA #$10                      ; A <~ {0x10, 0x11, 0x12, 0x13}
C - - - - - 0x01FEFE 07:FEEE: 8D 06 20  STA PPU_ADDRESS               ;
C - - - - - 0x01FF01 07:FEF1: BD F2 00  LDA a: vCrcLowAddress,X       ;
C - - - - - 0x01FF04 07:FEF4: 8D 06 20  STA PPU_ADDRESS               ; PPU address is $1YXX (e.g. $1000, $101F, $103E, ...), i.e. the second pattern table
C - - - - - 0x01FF07 07:FEF7: AD 07 20  LDA PPU_DATA                  ;
C - - - - - 0x01FF0A 07:FEFA: AD 07 20  LDA PPU_DATA                  ; see https://www.nesdev.org/wiki/PPU_registers#The_PPUDATA_read_buffer
C - - - - - 0x01FF0D 07:FEFD: 20 50 FE  JSR sub_FE50_add_to_checksum  ;
C - - - - - 0x01FF10 07:FF00: 20 18 FF  JSR sub_FF18_inc_low          ;
C - - - - - 0x01FF13 07:FF03: 90 E2     BCC @bra_FEE7_repeat          ; If carry flag is 0 after increments
C - - - - - 0x01FF15 07:FF05: 20 22 FF  JSR sub_FF22_inc_high         ;
C - - - - - 0x01FF18 07:FF08: 29 03     AND #$03                      ; CONSTANT only $10XX, $11XX, $12XX and $13XX addresses
C - - - - - 0x01FF1A 07:FF0A: D0 DB     BNE @bra_FEE7_repeat          ; Branch if the high value doesn't multiple of 4 (a: vCrcHighAddress,X % 4 != 0)
C - - - - - 0x01FF1C 07:FF0C: A9 3F     LDA #$3F                      ; CONSTANT - max bank data value
C - - - - - 0x01FF1E 07:FF0E: 20 29 FF  JSR sub_FF29_next_bank_data   ;
C - - - - - 0x01FF21 07:FF11: B0 CF     BCS @bra_FEE2_loop            ; If the next bank exists
C - - - - - 0x01FF23 07:FF13: A0 03     LDY #$03                      ; prepare an input parameter
C - - - - - 0x01FF25 07:FF15: 4C C2 FE  JMP loc_FEC2_check_checksum   ;

sub_FF18_inc_low:
C - - - - - 0x01FF28 07:FF18: 18        CLC                       ;
C - - - - - 0x01FF29 07:FF19: A9 1F     LDA #$1F                  ; CONSTANT - step to check
C - - - - - 0x01FF2B 07:FF1B: 7D F2 00  ADC a: vCrcLowAddress,X   ;
C - - - - - 0x01FF2E 07:FF1E: 9D F2 00  STA a: vCrcLowAddress,X   ;
bra_FF21_RTS:
C - - - - - 0x01FF31 07:FF21: 60        RTS                       ;

sub_FF22_inc_high:
C - - - - - 0x01FF32 07:FF22: FE F3 00  INC a: vCrcHighAddress,X  ;
C - - - - - 0x01FF35 07:FF25: BD F3 00  LDA a: vCrcHighAddress,X  ;
C - - - - - 0x01FF38 07:FF28: 60        RTS                       ;

; In: Register A - max value
; Out: carry flag, 1 - if a new vCrcBankData <= max value, 0 - otherwise.
sub_FF29_next_bank_data:
C - - - - - 0x01FF39 07:FF29: FE F8 00  INC a: vCrcBankData,X   ;
C - - - - - 0x01FF3C 07:FF2C: DD F8 00  CMP a: vCrcBankData,X   ;
C - - - - - 0x01FF3F 07:FF2F: 60        RTS                     ;

; In: Register X - 0xFD
; In: Register A - a color of the palette
sub_FF30_prepare_test:
C - - - - - 0x01FF40 07:FF30: 20 55 FF  JSR sub_FF55_set_palette_address  ;
C - - - - - 0x01FF43 07:FF33: A0 20     LDY #$20                          ; set loop counter (y)
@bra_FF35_loop:                                                           ; loop by y
C - - - - - 0x01FF45 07:FF35: 8D 07 20  STA PPU_DATA                      ; [$3F00-$3F1F] in Register A
C - - - - - 0x01FF48 07:FF38: 88        DEY                               ; decrement loop counter (y)
C - - - - - 0x01FF49 07:FF39: D0 FA     BNE @bra_FF35_loop                ; If Register Y != 0
C - - - - - 0x01FF4B 07:FF3B: 20 55 FF  JSR sub_FF55_set_palette_address  ;
C - - - - - 0x01FF4E 07:FF3E: 8C 06 20  STY PPU_ADDRESS                   ;
C - - - - - 0x01FF51 07:FF41: 8C 06 20  STY PPU_ADDRESS                   ; see https://www.nesdev.org/wiki/PPU_registers#Palette_corruption
C - - - - - 0x01FF54 07:FF44: 98        TYA                               ; A <~ 0
C - - - - - 0x01FF55 07:FF45: 9D F5 00  STA a: vCrcChecksumLowValue,X     ; clear
C - - - - - 0x01FF58 07:FF48: 9D F6 00  STA a: vCrcChecksumMiddleValue,X  ; clear
C - - - - - 0x01FF5B 07:FF4B: 9D F7 00  STA a: vCrcChecksumHighValue,X    ; clear
C - - - - - 0x01FF5E 07:FF4E: 9D F3 00  STA a: vCrcHighAddress,X          ; clear
C - - - - - 0x01FF61 07:FF51: 9D F2 00  STA a: vCrcLowAddress,X           ; clear
C - - - - - 0x01FF64 07:FF54: 60        RTS                               ;

sub_FF55_set_palette_address:
C - - - - - 0x01FF65 07:FF55: A0 3F     LDY #$3F          ;
C - - - - - 0x01FF67 07:FF57: 8C 06 20  STY PPU_ADDRESS   ;
C - - - - - 0x01FF6A 07:FF5A: A0 00     LDY #$00          ;
C - - - - - 0x01FF6C 07:FF5C: 8C 06 20  STY PPU_ADDRESS   ; PPU address is 0x3F00
C - - - - - 0x01FF6F 07:FF5F: 60        RTS               ;

; reserved
- D - - - - 0x01FF70 07:FF60: 43        .byte $43, $6F, $70, $79, $72, $69, $67, $68, $74, $20, $31, $39, $38, $37, $20, $20
- D - - - - 0x01FF80 07:FF70: 4E        .byte $4E, $61, $6D, $63, $6F, $20, $4C, $74, $64, $2E, $20, $20, $41, $6C, $6C, $20
- D - - - - 0x01FF90 07:FF80: 52        .byte $52, $69, $67, $68, $74, $73, $20, $52, $65, $73, $65, $72, $76, $65, $64, $20
- D - - - - 0x01FFA0 07:FF90: 50        .byte $50, $72, $6F, $67, $72, $61, $6D, $6D, $65, $64, $20, $42, $79, $2E, $2E, $20

tbl_FFA0_data_for_device:
- D 3 - - - 0x01FFB0 07:FFA0: 48        .byte $48, $41, $52, $55, $48, $49, $53, $41, $2E, $55, $44, $41, $47, $41, $57, $41
- D - - - - 0x01FFC0 07:FFB0: 20        .byte $20, $26, $20, $20, $4B, $55, $4D, $49, $2E, $48, $41, $4E, $41, $4F, $4B, $41
- D - - - - 0x01FFD0 07:FFC0: B7        .byte $B7, $BE, $AD, $AA, $B7, $B6, $AC, $BE, $D1, $AA, $BB, $BE, $B8, $BE, $A8, $BE
- D - - - - 0x01FFE0 07:FFD0: DF        .byte $DF, $D9, $DF, $B4, $AA, $B2, $B6, $D1, $B7, $BE, $B1, $BE, $B0, $B4, $BE, $DF

tbl_FFE0_etalon:
- D - - - - 0x01FFF0 07:FFE0: 05        .byte $05, $29, $F7
- D - - - - 0x01FFF3 07:FFE3: 02        .byte $02, $9A, $C9

; reserve
- D - - - - 0x01FFF6 07:FFE6: FF        .byte $FF, $FF, $FF, $FF, $FF
- D - - - - 0x01FFFB 07:FFEB: FF        .byte $FF, $FF, $FF, $FF, $FF

sub_FFF0_update_sounds:
C - - - - - 0x020000 07:FFF0: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1       ;
C - - - - - 0x020003 07:FFF3: 4C 80 AD  JMP loc_AD80_activate_sound_manager ;

- D 3 - - - 0x020006 07:FFF6: FF        .byte %11111111   ; The set of the features
- D - - - - 0x020007 07:FFF7: 00        .byte $00   ; not used ???
- D - - - - 0x020008 07:FFF8: 00        .byte $00   ; not used ???
- D - - - - 0x020009 07:FFF9: 00        .byte $00   ; not used ???

.out .sprintf("Free bytes in bank FF:   0x%X [%d]", ($FFFA - *), ($FFFA - *))

.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 4E ED     .word vec_ED4E_NMI
- D 3 - - - 0x02000C 07:FFFC: 00 C0     .word vec_C000_RESET
- D - - - - 0x02000E 07:FFFE: 07 EE     .word vec_C000_IRQ



