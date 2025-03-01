.segment "BANK_06_2"
.include "bank_ram.inc"
.include "constants.inc"
.org $A000  ; for listing file
; 0x01A010-0x01C00F

.import tbl_copyright                                     ; bank 04 (Page 1)
.import tbl_main_menu_chr_banks                           ; bank 04 (Page 1)
.import tbl_template_chr_banks1                           ; bank 04 (Page 1)
.import tbl_messages                                      ; bank 04 (Page 2)
.import tbl_ptr_rooms_with_NPCs                           ; bank 04 (Page 2)
.import tbl_ptr_briefcases_outside                        ; bank 04 (Page 2)
.import tbl_ptr_briefcases_indexes_on_the_level           ; bank 04 (Page 2)
.import tbl_briefcases_positions                          ; bank 04 (Page 2)
.import tbl_npc_portrait_sprites                          ; bank 04 (Page 2)
.import tbl_npc_portrait_set                              ; bank 04 (Page 2)
.import npc_sprite_set                                    ; bank 04 (Page 2)
.import tbl_ptr_prison_rooms                              ; bank 04 (Page 2)
.import sub_C305_update_ppu_ctrl_with_no_nmi              ; bank FF
.import sub_C313_screen_off                               ; bank FF
.import sub_C31D_clear_ppu                                ; bank FF
.import sub_C358_clear_OAM                                ; bank FF
.import loc_C371_update_palette                           ; bank FF
.import loc_C402_clear_sound_parts                        ; bank FF
.import sub_C402_clear_sound_parts                        ; bank FF
.import sub_C420_add_sound_effect                         ; bank FF
.import loc_C420_add_sound_effect                         ; bank FF
.import sub_C4F5_selectAllChrBanks                        ; bank FF
.import sub_C904_clear_score                              ; bank FF
.import loc_CE33_add_sprite_magic                         ; bank FF
.import sub_CE33_add_sprite_magic                         ; bank FF
.import sub_D073_invert_sign                              ; bank FF
.import sub_D079_check_button_press                       ; bank FF
.import sub_D086_render_14_15_16_17_18_v1                 ; bank FF
.import sub_EF46_switch_bank_4_p1                         ; bank FF
.import loc_EF4F_switch_bank_4_p2                         ; bank FF
.import sub_EF4F_switch_bank_4_p2                         ; bank FF
.import sub_EF3B_switch_bank_2_p1                         ; bank FF
.import sub_F2D6_try_put_briefcase                        ; bank FF
.import tbl_C1CA_checkpoint_on_start_levels               ; bank FF
.import sub_CE5A_render_character                         ; bank FF
.import sub_C91C_display_menu_score                       ; bank FF
.import sub_C51E_update_ppu_and_screen                    ; bank FF
.import loc_C046_repeat_starting_mode                     ; bank FF
.import sub_D2E5_get_collision_value                      ; bank FF
.import sub_D0B8_change_stack_pointer_by_bits             ; bank FF
.import sub_D67B_out_of_sight                             ; bank FF
.import sub_D6AC_out_of_screen                            ; bank FF
.import loc_D99F_add_flash_sprite                         ; bank FF
.import sub_D660_is_bomb_exploding                        ; bank FF
.import loc_D77F_free_enemyA                              ; bank FF
.import sub_D6BD_try_change_enemyA_direction              ; bank FF
.import loc_D741_enemyA_off_screen                        ; bank FF
.import sub_D725_enemyA_on_screen                         ; bank FF
.import loc_D989_add_enemyA_sprite_magic_v1               ; bank FF
.import sub_D358_check_enemyA_collision_by_Y              ; bank FF
.import sub_D562_has_character_damage                     ; bank FF
.import sub_D5B6_have_intersect_bullet                    ; bank FF
.import sub_D606_have_intersect_sword                     ; bank FF
.import sub_D7A8_correction_EnemyAPosY                    ; bank FF
.import sub_D347_check_landing_enemyA                     ; bank FF
.import sub_FC3E_boss_defeated_status                     ; bank FF
.import sub_D064_generate_rng                             ; bank FF
.import sub_CDEE_deactivate_activable_items_after_damage  ; bank FF
.import sub_DF63_update_character_status                  ; bank FF
.import loc_DBC2_before_rendering                         ; bank FF
.import sub_DCB1_try_move_on_the_left                     ; bank FF
.import sub_DCE5_try_move_on_the_right                    ; bank FF
.import sub_DCF1_reset_velocity                           ; bank FF
.import sub_E332_generate_jump_type                       ; bank FF

.export loc_A028_jumper
.export loc_A309_green_boy
.export loc_A668_karate_boy
.export loc_AA02_bomb_bird
.export loc_AC0A_bird
.export loc_AD08_lift
.export loc_AE34_platform
.export loc_B234_add_message
.export sub_B234_add_message
.export loc_B255_display_message_by_letter
.export sub_BB2A_solve_secret_codes
.export loc_BBA4_play_background_music
.export sub_BBA4_play_background_music
.export sub_BBFE_is_unique_room
.export sub_B8C7_main_menu_shared_routine
.export sub_B9DA_curscene_shared_routine
.export sub_B18C_prepare_briefcases_by_index
.export loc_B1FB_rifle
.export sub_B319_hide_character_in_room
.export sub_B80D_init_final_score_screen
.export sub_B067_take_item_out
.export sub_BC48_next_room
.export sub_B7DB_prepare_last_cutscene
.export sub_B5FE_final_scene_handler
.export tbl_ptr_enemy_t2_types_for_sprites
.export tbl_ptr_enemy_t3_types_for_sprites
.export tbl_ptr_enemy_t2_sprite_params_
.export tbl_ptr_enemy_t3_sprite_params_
.export tbl_ptr_enemy_t4_sprite_params_
.export tbl_ptr_boss_sprite_params_
.export tbl_ptr_last_boss_params_
.export tbl_ptr_walls

; 1 byte - position Y
; 2 byte - position X
; 3 byte - height
; 4 byte - width
tbl_A000_hitboxes:
- D 1 - - - 0x01A010 06:A000: 00        .byte $00, $00, $18, $08   ; Jumping sailor, internal
- D 1 - - - 0x01A014 06:A004: 00        .byte $00, $00, $14, $08   ; Jumping sailor, internal
- D 1 - - - 0x01A018 06:A008: 00        .byte $00, $00, $18, $08   ; Jumping sailor, internal
- D 1 - - - 0x01A01C 06:A00C: F8        .byte $F8, $00, $10, $08   ; Jumping sailor, external
- D 1 - - - 0x01A020 06:A010: 00        .byte $00, $00, $10, $08   ; Jumping sailor, external
- D - - - - 0x01A024 06:A014: F8        .byte $F8, $00, $10, $08   ;
- D 1 - - - 0x01A028 06:A018: 00        .byte $00, $00, $20, $06   ; Nun, internal
- D 1 - - - 0x01A02C 06:A01C: 00        .byte $00, $00, $1C, $06   ; Nun, internal

tbl_A020_jump_counter:
- D 1 - - - 0x01A030 06:A020: 00        .byte $00   ; Jumping sailor
- D 1 - - - 0x01A031 06:A021: 09        .byte $09   ; Jumping sailor
- D 1 - - - 0x01A032 06:A022: 09        .byte $09   ; Nun
- D 1 - - - 0x01A033 06:A023: 0C        .byte $0C   ; Nun

tbl_A024_jump_type:
- D 1 - - - 0x01A034 06:A024: 01        .byte $01   ; Jumping sailor, low jump
- D 1 - - - 0x01A035 06:A025: 02        .byte $02   ; Jumping sailor, middle jump
- D 1 - - - 0x01A036 06:A026: 01        .byte $01   ; Nun, low jump
- D 1 - - - 0x01A037 06:A027: 02        .byte $02   ; Nun, middle jump

loc_A028_jumper:
C - - J - - 0x01A038 06:A028: A2 01     LDX #$01                              ;
C - - - - - 0x01A03A 06:A02A: 86 1A     STX vTempCounter1A                    ; set loop counter (the enemyA number)
bra_A02C_loop:                                                                ; loop by vTempCounter1A (2 times)
C - - - - - 0x01A03C 06:A02C: A6 1A     LDX vTempCounter1A                    ; prepares the input parameter
C - - - - - 0x01A03E 06:A02E: 20 F8 A0  JSR sub_A0F8_status_behavior          ;
C - - - - - 0x01A041 06:A031: BD 20 03  LDA vEnemyAStatus,X                   ;
C - - - - - 0x01A044 06:A034: C9 E0     CMP #$E0                              ;
C - - - - - 0x01A046 06:A036: B0 34     BCS bra_A06C_next                     ; If EnemyAStatus >= 0xE0
C - - - - - 0x01A048 06:A038: C9 C0     CMP #$C0                              ;
C - - - - - 0x01A04A 06:A03A: 90 30     BCC bra_A06C_next                     ; If EnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01A04C 06:A03C: 20 B6 A0  JSR sub_A0B6_prepare_internal_hitbox  ;
C - - - - - 0x01A04F 06:A03F: 20 60 D6  JSR sub_D660_is_bomb_exploding        ;
C - - - - - 0x01A052 06:A042: B0 0B     BCS @bra_A04F_bomb_hit                ; If the bomb is exploding
C - - - - - 0x01A054 06:A044: A5 5F     LDA vChrLiveStatus                    ;
C - - - - - 0x01A056 06:A046: 29 02     AND #$02                              ; CONSTANT - Goemon
C - - - - - 0x01A058 06:A048: F0 10     BEQ bra_A05A_check_bullets            ; If the character isn't Goemon
C - - - - - 0x01A05A 06:A04A: 20 06 D6  JSR sub_D606_have_intersect_sword     ;
C - - - - - 0x01A05D 06:A04D: 90 15     BCC bra_A064_no_intersect             ; If the intersect doesn't exist
@bra_A04F_bomb_hit:
C - - - - - 0x01A05F 06:A04F: A9 01     LDA #$01                              ;
C - - - - - 0x01A061 06:A051: 9D 50 03  STA vEnemyAHealthPoints,X             ; reset enemy HP to 1 point
C - - - - - 0x01A064 06:A054: 20 85 A0  JSR sub_A085_hit                      ;
C - - - - - 0x01A067 06:A057: 4C 6C A0  JMP loc_A06C_next                     ;

bra_A05A_check_bullets:
C - - - - - 0x01A06A 06:A05A: A6 7A     LDX vBulletCount                      ; set loop counter
@bra_A05C_loop:                                                               ; loop by x
C - - - - - 0x01A06C 06:A05C: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet    ;
C - - - - - 0x01A06F 06:A05F: B0 10     BCS bra_A071_bullet_hit               ; If the intersect is exist
C - - - - - 0x01A071 06:A061: CA        DEX                                   ; decrement loop counter
C - - - - - 0x01A072 06:A062: 10 F8     BPL @bra_A05C_loop                    ; If Register X >= 0x00
bra_A064_no_intersect:
C - - - - - 0x01A074 06:A064: A6 1A     LDX vTempCounter1A                    ; prepares the input parameter
C - - - - - 0x01A076 06:A066: 20 9C A0  JSR sub_A09C_prepare_external_hitbox  ;
C - - - - - 0x01A079 06:A069: 20 62 D5  JSR sub_D562_has_character_damage     ;
bra_A06C_next:
loc_A06C_next:
C D 1 - - - 0x01A07C 06:A06C: C6 1A     DEC vTempCounter1A                    ; decrements loop counter
C - - - - - 0x01A07E 06:A06E: 10 BC     BPL bra_A02C_loop                     ; If vTempCounter1A >= 0x00
C - - - - - 0x01A080 06:A070: 60        RTS                                   ;

bra_A071_bullet_hit:
C - - - - - 0x01A081 06:A071: A9 00     LDA #$00                        ;
C - - - - - 0x01A083 06:A073: 95 8F     STA vBulletStatus,X             ; clear
C - - - - - 0x01A085 06:A075: 20 85 A0  JSR sub_A085_hit                ;
C - - - - - 0x01A088 06:A078: 4C 6C A0  JMP loc_A06C_next               ;

C - - - - - 0x01A08B 06:A07B: A6 1A     LDX vTempCounter1A              ; !(UNUSED)
C - - - - - 0x01A08D 06:A07D: A9 00     LDA #$00                        ; !(UNUSED)
C - - - - - 0x01A08F 06:A07F: 9D 20 03  STA vEnemyAStatus,X             ; !(UNUSED)
C - - - - - 0x01A092 06:A082: 4C 8F D7  JMP loc_D78F_dec_enemyA_counter ; !(UNUSED)

; In: Register X - the number of the bullet
sub_A085_hit:
C - - - - - 0x01A095 06:A085: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x01A097 06:A087: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x01A099 06:A089: 20 BA A2  JSR sub_A2BA_change_substatus  ;
C - - - - - 0x01A09C 06:A08C: A9 0C     LDA #$0C                       ; Initializes a jump counter
C - - - - - 0x01A09E 06:A08E: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x01A0A1 06:A091: A9 01     LDA #$01                       ; CONSTANT - low jump
C - - - - - 0x01A0A3 06:A093: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x01A0A6 06:A096: A9 00     LDA #$00                       ;
C - - - - - 0x01A0A8 06:A098: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x01A0AB 06:A09B: 60        RTS                            ;

; In: Register X - the number of the bullet
sub_A09C_prepare_external_hitbox:
C - - - - - 0x01A0AC 06:A09C: AD 00 03  LDA vEnemyA                      ;
C - - - - - 0x01A0AF 06:A09F: C9 10     CMP #$10                         ; CONSTANT - Nun
C - - - - - 0x01A0B1 06:A0A1: F0 54     BEQ bra_A0F7_RTS                 ; If EnemyA == 0x10
C - - - - - 0x01A0B3 06:A0A3: A0 0C     LDY #$0C                         ; the offset value #1
C - - - - - 0x01A0B5 06:A0A5: BD 20 03  LDA vEnemyAStatus,X              ;
C - - - - - 0x01A0B8 06:A0A8: 29 12     AND #$12                         ; CONSTANT - 'squatting' + 'jump' statuses
C - - - - - 0x01A0BA 06:A0AA: F0 2F     BEQ bra_A0DB_assign              ; If 'squatting' and 'jump' statuses aren't activated
C - - - - - 0x01A0BC 06:A0AC: A0 10     LDY #$10                         ; the offset value #2
C - - - - - 0x01A0BE 06:A0AE: C9 02     CMP #$02                         ; CONSTANT - 'jump' status
C - - - - - 0x01A0C0 06:A0B0: D0 29     BNE bra_A0DB_assign              ; If 'jump' status isn't activated
C - - - - - 0x01A0C2 06:A0B2: A0 10     LDY #$10                         ; the offset value #3, !(WHY?)
C - - - - - 0x01A0C4 06:A0B4: D0 25     BNE bra_A0DB_assign              ; Always true

; In: Register X - the number of the bullet
sub_A0B6_prepare_internal_hitbox:
C - - - - - 0x01A0C6 06:A0B6: AD 00 03  LDA vEnemyA                  ;
C - - - - - 0x01A0C9 06:A0B9: C9 10     CMP #$10                     ; CONSTANT - Nun
C - - - - - 0x01A0CB 06:A0BB: D0 0D     BNE @bra_A0CA_skip           ; If EnemyA != 0x10
C - - - - - 0x01A0CD 06:A0BD: A0 18     LDY #$18                     ; the offset value #4
C - - - - - 0x01A0CF 06:A0BF: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A0D2 06:A0C2: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x01A0D4 06:A0C4: F0 15     BEQ bra_A0DB_assign          ; If 'squatting' status isn't activated
C - - - - - 0x01A0D6 06:A0C6: A0 1C     LDY #$1C                     ; the offset value #5
C - - - - - 0x01A0D8 06:A0C8: D0 11     BNE bra_A0DB_assign          ; Always true

@bra_A0CA_skip:
C - - - - - 0x01A0DA 06:A0CA: A0 00     LDY #$00                     ; the offset value #6
C - - - - - 0x01A0DC 06:A0CC: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A0DF 06:A0CF: 29 12     AND #$12                     ; CONSTANT - 'squatting' + 'jump' statuses
C - - - - - 0x01A0E1 06:A0D1: F0 08     BEQ bra_A0DB_assign          ; If 'squatting' and 'jump' statuses aren't activated
C - - - - - 0x01A0E3 06:A0D3: A0 04     LDY #$04                     ; the offset value #7
C - - - - - 0x01A0E5 06:A0D5: C9 10     CMP #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x01A0E7 06:A0D7: D0 02     BNE bra_A0DB_assign          ; If 'squatting' status isn't activated
C - - - - - 0x01A0E9 06:A0D9: A0 08     LDY #$08                     ; the offset value #8
bra_A0DB_assign:
C - - - - - 0x01A0EB 06:A0DB: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x01A0EE 06:A0DE: 18        CLC                          ;
C - - - - - 0x01A0EF 06:A0DF: 79 00 A0  ADC tbl_A000_hitboxes,Y      ;
C - - - - - 0x01A0F2 06:A0E2: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x01A0F4 06:A0E4: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x01A0F7 06:A0E7: 18        CLC                          ;
C - - - - - 0x01A0F8 06:A0E8: 79 01 A0  ADC tbl_A000_hitboxes + 1,Y  ;
C - - - - - 0x01A0FB 06:A0EB: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x01A0FD 06:A0ED: B9 02 A0  LDA tbl_A000_hitboxes + 2,Y  ;
C - - - - - 0x01A100 06:A0F0: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x01A102 06:A0F2: B9 03 A0  LDA tbl_A000_hitboxes + 3,Y  ;
C - - - - - 0x01A105 06:A0F5: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_A0F7_RTS:
C - - - - - 0x01A107 06:A0F7: 60        RTS                          ;

; In: Register X - the enemyA number
sub_A0F8_status_behavior:
C - - - - - 0x01A108 06:A0F8: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A10B 06:A0FB: 10 FA     BPL bra_A0F7_RTS                          ; If the status isn't used
C - - - - - 0x01A10D 06:A0FD: 4A        LSR                                       ;
C - - - - - 0x01A10E 06:A0FE: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x01A111 06:A101: BD A1     .word loc_A1BE_jump - 1      ; 0x02 
- D - - - - 0x01A113 06:A103: 0E A1     .word loc_A10F_main - 1      ; 0x04
- D 1 - I - 0x01A115 06:A105: 0E A1     .word loc_A10F_main - 1      ; 0x08
- D 1 - I - 0x01A117 06:A107: 83 A1     .word loc_A184_squatting - 1 ; 0x10
- D 1 - I - 0x01A119 06:A109: 86 A2     .word loc_A287_dying - 1     ; 0x20
- D - - - - 0x01A11B 06:A10B: 0E A1     .word loc_A10F_main - 1      ; 0x40
- D - - - - 0x01A11D 06:A10D: 0E A1     .word loc_A10F_main - 1      ; 0x80

loc_A10F_main:
C - - - - - 0x01A11F 06:A10F: 20 A0 A2  JSR sub_A2A0_try_to_change_self  ;
C - - - - - 0x01A122 06:A112: BD 20 03  LDA vEnemyAStatus,X              ;
C - - - - - 0x01A125 06:A115: 29 10     AND #$10                         ; CONSTANT - 'squatting' status
C - - - - - 0x01A127 06:A117: F0 03     BEQ bra_A11C_skip                ; If 'squatting' status isn't activated
C - - - - - 0x01A129 06:A119: 4C 84 A1  JMP loc_A184_squatting           ;

bra_A11C_skip:
C - - - - - 0x01A12C 06:A11C: A0 00     LDY #$00                        ; prepares the sprite_magic2 (The offset by the address), the frame by default
; In: Register Y - sprite_magic2 (The offset by the address)
loc_A11E_prepare_rendering:
C D 1 - - - 0x01A12E 06:A11E: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x01A131 06:A121: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x01A133 06:A123: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x01A136 06:A126: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x01A138 06:A128: 20 7B D6  JSR sub_D67B_out_of_sight       ; bank FF
C - - - - - 0x01A13B 06:A12B: 90 03     BCC bra_A130_skip               ; If the enemy is visible
C - - - - - 0x01A13D 06:A12D: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A130_skip:
C - - - - - 0x01A140 06:A130: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x01A143 06:A133: 90 03     BCC bra_A138_skip               ; If the enemy is on the screen
C - - - - - 0x01A145 06:A135: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A138_skip:
C - - - - - 0x01A148 06:A138: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x01A14B 06:A13B: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x01A14D 06:A13D: 90 03     BCC bra_A142_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x01A14F 06:A13F: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A142_add_sprite_magic_v2:
C - - - - - 0x01A152 06:A142: 98        TYA                           ;
C - - - - - 0x01A153 06:A143: 18        CLC                           ;
C - - - - - 0x01A154 06:A144: 6D 02 03  ADC vEnemyASpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x01A157 06:A147: 85 01     STA ram_0001                  ;
C - - - - - 0x01A159 06:A149: AD 03 03  LDA vEnemyASpriteMagic3       ; ~> sprite_magic3
C - - - - - 0x01A15C 06:A14C: 85 02     STA ram_0002                  ;
C - - - - - 0x01A15E 06:A14E: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

; In: Register X - the enemyA number
sub_A151_try_movement_on_the_left:
C - - - - - 0x01A161 06:A151: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left ; bank FF
C - - - - - 0x01A164 06:A154: D0 01     BNE bra_A157_movement                          ; If the movement is allowed
bra_A156_RTS:
C - - - - - 0x01A166 06:A156: 60        RTS                                            ;

bra_A157_movement:
C - - - - - 0x01A167 06:A157: BD 56 03  LDA vEnemyAJumpType,X                          ;
C - - - - - 0x01A16A 06:A15A: C9 01     CMP #$01                                       ; CONSTANT - low jump
C - - - - - 0x01A16C 06:A15C: F0 0A     BEQ @bra_A168_one                              ; If JumpType == 0x01
C - - - - - 0x01A16E 06:A15E: C9 02     CMP #$02                                       ; CONSTANT - middle jump
C - - - - - 0x01A170 06:A160: F0 03     BEQ @bra_A165_two                              ; If JumpType == 0x02
C - - - - - 0x01A172 06:A162: 20 F0 D6  JSR sub_D6F0_dec_EnemyAPosXLow                 ;
@bra_A165_two:
C - - - - - 0x01A175 06:A165: 20 F0 D6  JSR sub_D6F0_dec_EnemyAPosXLow                 ;
@bra_A168_one:
C - - - - - 0x01A178 06:A168: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                 ;

; In: Register X - the enemyA number
sub_A16B_try_movement_on_the_right:
C - - - - - 0x01A17B 06:A16B: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right  ;
C - - - - - 0x01A17E 06:A16E: F0 E6     BEQ bra_A156_RTS                                 ; If the movement isn't allowed
C - - - - - 0x01A180 06:A170: BD 56 03  LDA vEnemyAJumpType,X                            ;
C - - - - - 0x01A183 06:A173: C9 01     CMP #$01                                         ; CONSTANT - low jump
C - - - - - 0x01A185 06:A175: F0 0A     BEQ @bra_A181_one                                ; If JumpType == 0x01
C - - - - - 0x01A187 06:A177: C9 02     CMP #$02                                         ; CONSTANT - middle jump
C - - - - - 0x01A189 06:A179: F0 03     BEQ @bra_A17E_two                                ; If JumpType == 0x02
C - - - - - 0x01A18B 06:A17B: 20 0F D7  JSR sub_D70F_inc_EnemyAPosXLow                   ;
@bra_A17E_two:
C - - - - - 0x01A18E 06:A17E: 20 0F D7  JSR sub_D70F_inc_EnemyAPosXLow                   ;
@bra_A181_one:
C - - - - - 0x01A191 06:A181: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                   ;

; In: Register X - the enemyA number
loc_A184_squatting:
C D 1 - - - 0x01A194 06:A184: DE 4A 03  DEC vEnemyAJumpCounter,X                ;
C - - - - - 0x01A197 06:A187: F0 05     BEQ bra_A18E_skip                       ; If EnemyAJumpCounter == 0x00
C - - - - - 0x01A199 06:A189: A0 08     LDY #$08                                ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x01A19B 06:A18B: 4C 1E A1  JMP loc_A11E_prepare_rendering          ;

bra_A18E_skip:
C - - - - - 0x01A19E 06:A18E: A9 34     LDA #$34                       ; CONSTANT - the jump sound
C - - - - - 0x01A1A0 06:A190: 20 20 C4  JSR sub_C420_add_sound_effect  ; bank FF
C - - - - - 0x01A1A3 06:A193: A0 02     LDY #$02                       ; the mask for the second pair
C - - - - - 0x01A1A5 06:A195: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x01A1A8 06:A198: C9 10     CMP #$10                       ; CONSTANT - Nun
C - - - - - 0x01A1AA 06:A19A: F0 02     BEQ @bra_A19E_skip             ; If EnemyA == 0x10
C - - - - - 0x01A1AC 06:A19C: A0 00     LDY #$00                       ; the mask for the first pair
@bra_A19E_skip:
C - - - - - 0x01A1AE 06:A19E: 84 00     STY ram_0000                   ;
C - - - - - 0x01A1B0 06:A1A0: 20 64 D0  JSR sub_D064_generate_rng      ;
C - - - - - 0x01A1B3 06:A1A3: 29 01     AND #$01                       ; 50 chance (0x00 or 0x01)
C - - - - - 0x01A1B5 06:A1A5: 05 00     ORA ram_0000                   ;
C - - - - - 0x01A1B7 06:A1A7: A8        TAY                            ; Y <~ {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x01A1B8 06:A1A8: B9 20 A0  LDA tbl_A020_jump_counter,Y    ;
C - - - - - 0x01A1BB 06:A1AB: 9D 4A 03  STA vEnemyAJumpCounter,X       ; Initializes a jump counter
C - - - - - 0x01A1BE 06:A1AE: B9 24 A0  LDA tbl_A024_jump_type,Y       ;
C - - - - - 0x01A1C1 06:A1B1: 9D 56 03  STA vEnemyAJumpType,X          ; Initializes a jump type
C - - - - - 0x01A1C4 06:A1B4: A9 02     LDA #$02                       ; CONSTANT - 'jump' status
C - - - - - 0x01A1C6 06:A1B6: 20 BA A2  JSR sub_A2BA_change_substatus  ;
C - - - - - 0x01A1C9 06:A1B9: A9 00     LDA #$00                       ;
C - - - - - 0x01A1CB 06:A1BB: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
loc_A1BE_jump:
C - - - - - 0x01A1CE 06:A1BE: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x01A1D1 06:A1C1: C9 DF     CMP #$DF                       ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A1D3 06:A1C3: B0 2A     BCS bra_A1EF_skip              ; If PosY >= 0xDF
C - - - - - 0x01A1D5 06:A1C5: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x01A1D8 06:A1C8: C9 10     CMP #$10                       ; CONSTANT - Nun
C - - - - - 0x01A1DA 06:A1CA: F0 0C     BEQ bra_A1D8_try_movement      ; If EnemyA == 0x10
C - - - - - 0x01A1DC 06:A1CC: A5 2C     LDA vLowCounter                ;
C - - - - - 0x01A1DE 06:A1CE: 29 03     AND #$03                       ;
C - - - - - 0x01A1E0 06:A1D0: D0 06     BNE bra_A1D8_try_movement      ; Branch if vLowCounter doesn't multiple of 4
C - - - - - 0x01A1E2 06:A1D2: BD 2C 03  LDA vEnemyAPosY,X              ; prepares an input parameter
C - - - - - 0x01A1E5 06:A1D5: 4C 06 A2  JMP loc_A206_assign            ;

bra_A1D8_try_movement:
C - - - - - 0x01A1E8 06:A1D8: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x01A1EB 06:A1DB: 6A        ROR                                     ;
C - - - - - 0x01A1EC 06:A1DC: 90 0A     BCC bra_A1E8_right                      ; If the enemy is looking to the right
C - - - - - 0x01A1EE 06:A1DE: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x01A1F0 06:A1E0: D0 0A     BNE bra_A1EC_invert                     ; If the enemy is dying
bra_A1E2_invert:
C - - - - - 0x01A1F2 06:A1E2: 20 51 A1  JSR sub_A151_try_movement_on_the_left   ;
C - - - - - 0x01A1F5 06:A1E5: 4C EF A1  JMP loc_A1EF_continue                   ;

bra_A1E8_right:
C - - - - - 0x01A1F8 06:A1E8: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x01A1FA 06:A1EA: D0 F6     BNE bra_A1E2_invert                     ; If the enemy is dying
bra_A1EC_invert:
C - - - - - 0x01A1FC 06:A1EC: 20 6B A1  JSR sub_A16B_try_movement_on_the_right  ;
loc_A1EF_continue:
bra_A1EF_skip:
C D 1 - - - 0x01A1FF 06:A1EF: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A202 06:A1F2: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x01A205 06:A1F5: 18        CLC                                     ;
C - - - - - 0x01A206 06:A1F6: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x01A209 06:A1F9: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x01A20B 06:A1FB: 90 09     BCC @bra_A206_skip                      ; If Register A < 0xDF
C - - - - - 0x01A20D 06:A1FD: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x01A20F 06:A1FF: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01A211 06:A201: 90 02     BCC @bra_A205_skip                      ; If Register A < 0xF8
C - - - - - 0x01A213 06:A203: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_A205_skip:
C - - - - - 0x01A215 06:A205: 98        TYA                                     ; A <~ 0x00 or 0xDF
; In: Register A - a new position Y
@bra_A206_skip:
loc_A206_assign:
C D 1 - - - 0x01A216 06:A206: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x01A219 06:A209: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A21C 06:A20C: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x01A21E 06:A20E: 90 3E     BCC bra_A24E_before_inc                 ; If EnemyAJumpCounter < 0x18
C - - - - - 0x01A220 06:A210: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A222 06:A212: 90 05     BCC bra_A219_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x01A224 06:A214: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x01A226 06:A216: 4C 1E A1  JMP loc_A11E_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_A219_skip:
C - - - - - 0x01A229 06:A219: 85 00     STA ram_0000                              ;
C - - - - - 0x01A22B 06:A21B: E6 00     INC ram_0000                              ; prepare an input parameter
C - - - - - 0x01A22D 06:A21D: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x01A230 06:A220: F0 2C     BEQ bra_A24E_before_inc                   ; If the collisions by Y-position doesn't exist
C - - - - - 0x01A232 06:A222: C9 02     CMP #$02                                  ; CONSTANT - a weak collision
C - - - - - 0x01A234 06:A224: F0 07     BEQ bra_A22D_weak                         ; If the collision is weak
C - - - - - 0x01A236 06:A226: 20 47 D3  JSR sub_D347_check_landing_enemyA         ;
C - - - - - 0x01A239 06:A229: D0 0D     BNE bra_A238_landing                      ; If the landing is allow
C - - - - - 0x01A23B 06:A22B: F0 21     BEQ bra_A24E_before_inc                   ; Always true

bra_A22D_weak:
C - - - - - 0x01A23D 06:A22D: 20 47 D3  JSR sub_D347_check_landing_enemyA   ;
C - - - - - 0x01A240 06:A230: F0 1C     BEQ bra_A24E_before_inc             ; If the landing is disallow
C - - - - - 0x01A242 06:A232: A5 2C     LDA vLowCounter                     ;
C - - - - - 0x01A244 06:A234: 29 03     AND #$03                            ;
C - - - - - 0x01A246 06:A236: D0 16     BNE bra_A24E_before_inc             ; Branch if vLowCounter doesn't multiple of 4
bra_A238_landing:
C - - - - - 0x01A248 06:A238: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY  ;
C - - - - - 0x01A24B 06:A23B: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x01A24E 06:A23E: 29 20     AND #$20                            ; CONSTANT - "dying" status
C - - - - - 0x01A250 06:A240: D0 34     BNE bra_A276_check_hpoints          ; If "dying" status is activated
bra_A242_skip_dying:
C - - - - - 0x01A252 06:A242: A9 08     LDA #$08                            ; CONSTANT - waiting for "squatting"
C - - - - - 0x01A254 06:A244: 20 BA A2  JSR sub_A2BA_change_substatus       ;
C - - - - - 0x01A257 06:A247: A9 20     LDA #$20                            ; Initializes a jump counter for "waiting"
C - - - - - 0x01A259 06:A249: 9D 4A 03  STA vEnemyAJumpCounter,X            ;
C - - - - - 0x01A25C 06:A24C: D0 23     BNE bra_A271_continue               ; Always true

bra_A24E_before_inc:
C - - - - - 0x01A25E 06:A24E: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x01A261 06:A251: 29 10     AND #$10                            ; CONSTANT - Nun
C - - - - - 0x01A263 06:A253: F0 06     BEQ @bra_A25B_inc                   ; If EnemyA == 0x10
C - - - - - 0x01A265 06:A255: A5 2C     LDA vLowCounter                     ;
C - - - - - 0x01A267 06:A257: 29 03     AND #$03                            ;
C - - - - - 0x01A269 06:A259: F0 0D     BEQ @bra_A268_skip                  ; Branch if vLowCounter multiple of 4
@bra_A25B_inc:
C - - - - - 0x01A26B 06:A25B: FE 4A 03  INC vEnemyAJumpCounter,X            ;
C - - - - - 0x01A26E 06:A25E: A9 2F     LDA #$2F                            ; CONSTANT - a maximum jump value
C - - - - - 0x01A270 06:A260: DD 4A 03  CMP vEnemyAJumpCounter,X            ;
C - - - - - 0x01A273 06:A263: B0 03     BCS @bra_A268_skip                  ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x01A275 06:A265: 9D 4A 03  STA vEnemyAJumpCounter,X            ; assign max value
@bra_A268_skip:
C - - - - - 0x01A278 06:A268: A0 0C     LDY #$0C                            ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x01A27A 06:A26A: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x01A27D 06:A26D: 29 20     AND #$20                            ; CONSTANT - "dying" status
C - - - - - 0x01A27F 06:A26F: D0 02     BNE bra_A273_dying                  ; If "dying" status is activated
bra_A271_continue:
C - - - - - 0x01A281 06:A271: A0 04     LDY #$04                            ; an input parameter - sprite_magic2 (a jump frame)
bra_A273_dying:
C - - - - - 0x01A283 06:A273: 4C 1E A1  JMP loc_A11E_prepare_rendering      ;

bra_A276_check_hpoints:
C - - - - - 0x01A286 06:A276: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x01A289 06:A279: C9 10     CMP #$10                       ; CONSTANT - Nun
C - - - - - 0x01A28B 06:A27B: D0 05     BNE @bra_A282_start_dying_ex   ; If EnemyA != 0x10
C - - - - - 0x01A28D 06:A27D: DE 50 03  DEC vEnemyAHealthPoints,X      ;
C - - - - - 0x01A290 06:A280: D0 C0     BNE bra_A242_skip_dying        ; If HPoints > 0x00
@bra_A282_start_dying_ex:
C - - - - - 0x01A292 06:A282: A9 30     LDA #$30                       ; initializes a jump counter
C - - - - - 0x01A294 06:A284: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
loc_A287_dying:
C - - - - - 0x01A297 06:A287: DE 4A 03  DEC vEnemyAJumpCounter,X       ; updates the counter value
C - - - - - 0x01A29A 06:A28A: D0 03     BNE bra_A28F_death_rendering   ; If EnemyAJumpCounter != 0x00
C - - - - - 0x01A29C 06:A28C: 4C 7F D7  JMP loc_D77F_free_enemyA       ;

bra_A28F_death_rendering:
C - - - - - 0x01A29F 06:A28F: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x01A2A2 06:A292: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x01A2A5 06:A295: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the EnemyAJumpCounter)
C - - - - - 0x01A2A6 06:A296: B9 9D A2  LDA tbl_A29D_frames_,Y                ;
C - - - - - 0x01A2A9 06:A299: A8        TAY                                   ;
C - - - - - 0x01A2AA 06:A29A: 4C 1E A1  JMP loc_A11E_prepare_rendering        ;

tbl_A29D_frames_:
- D 1 - - - 0x01A2AD 06:A29D: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x01A2AE 06:A29E: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x01A2AF 06:A29F: 10        .byte $10   ; damage frame

; In: Register X - the enemyA number
sub_A2A0_try_to_change_self:
C - - - - - 0x01A2B0 06:A2A0: 20 C7 A2  JSR sub_A2C7_try_change_direction  ;
C - - - - - 0x01A2B3 06:A2A3: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x01A2B6 06:A2A6: F0 05     BEQ @bra_A2AD_skip                 ; If EnemyAJumpCounter == 0x00
C - - - - - 0x01A2B8 06:A2A8: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x01A2BB 06:A2AB: D0 19     BNE bra_A2C6_RTS                   ; If EnemyAJumpCounter != 0x00
@bra_A2AD_skip:
C - - - - - 0x01A2BD 06:A2AD: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01A2BF 06:A2AF: 29 3F     AND #$3F                           ;
C - - - - - 0x01A2C1 06:A2B1: D0 13     BNE bra_A2C6_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x01A2C3 06:A2B3: A9 10     LDA #$10                           ; Initializes a counter for the squatting
C - - - - - 0x01A2C5 06:A2B5: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
C - - - - - 0x01A2C8 06:A2B8: A9 10     LDA #$10                           ; CONSTANT - 'squatting' status
; In: Register A - an new status
sub_A2BA_change_substatus:
C - - - - - 0x01A2CA 06:A2BA: 85 05     STA ram_0005                       ;
C - - - - - 0x01A2CC 06:A2BC: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x01A2CF 06:A2BF: 29 C1     AND #$C1                           ; clear substate
C - - - - - 0x01A2D1 06:A2C1: 05 05     ORA ram_0005                       ;
C - - - - - 0x01A2D3 06:A2C3: 9D 20 03  STA vEnemyAStatus,X                ;
bra_A2C6_RTS:
C - - - - - 0x01A2D6 06:A2C6: 60        RTS                                ;

; In: Register X - the enemyA number
sub_A2C7_try_change_direction:
C - - - - - 0x01A2D7 06:A2C7: A9 3F     LDA #$3F                                 ; f(A) = 64, see $D6BD
C - - - - - 0x01A2D9 06:A2C9: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x01A2DC 06:A2CC: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x01A2DE 06:A2CE: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01A2E1 06:A2D1: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x01A2E3 06:A2D3: 05 05     ORA ram_0005                             ;
C - - - - - 0x01A2E5 06:A2D5: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x01A2E8 06:A2D8: 60        RTS                                      ;

tbl_A2D9_hitboxes:
- D 1 - - - 0x01A2E9 06:A2D9: 00        .byte $00, $00, $20, $04
- D 1 - - - 0x01A2ED 06:A2DD: 00        .byte $00, $00, $18, $04
- D 1 - - - 0x01A2F1 06:A2E1: E8        .byte $E8, $08, $08, $0A ; subweapon, the right
- D 1 - - - 0x01A2F5 06:A2E5: EB        .byte $EB, $0C, $0C, $0C ; subweapon, the right
- D 1 - - - 0x01A2F9 06:A2E9: F0        .byte $F0, $08, $08, $08 ; subweapon, the right
- D 1 - - - 0x01A2FD 06:A2ED: F0        .byte $F0, $FC, $04, $08 ; subweapon, the right
- D 1 - - - 0x01A301 06:A2F1: E8        .byte $E8, $F8, $08, $0A ; subweapon, the left
- D 1 - - - 0x01A305 06:A2F5: EB        .byte $EB, $F4, $0C, $0C ; subweapon, the left
- D 1 - - - 0x01A309 06:A2F9: F0        .byte $F0, $F8, $08, $08 ; subweapon, the left
- D 1 - - - 0x01A30D 06:A2FD: F0        .byte $F0, $04, $04, $08 ; subweapon, the left

tbl_A301_status_flags:
- D 1 - - - 0x01A311 06:A301: 00        .byte $00   ; 
- D 1 - - - 0x01A312 06:A302: 00        .byte $00   ; 
- D 1 - - - 0x01A313 06:A303: 10        .byte $10   ; squatting
- D 1 - - - 0x01A314 06:A304: 10        .byte $10   ; squatting
- D 1 - - - 0x01A315 06:A305: 10        .byte $10   ; squatting
- D 1 - - - 0x01A316 06:A306: 10        .byte $10   ; squatting
- D 1 - - - 0x01A317 06:A307: 0C        .byte $0C   ; close contact
- D 1 - - - 0x01A318 06:A308: 0C        .byte $0C   ; close contact

loc_A309_green_boy:
C - - J - - 0x01A319 06:A309: A2 01     LDX #$01                          ;
C - - - - - 0x01A31B 06:A30B: 86 1A     STX vTempCounter1A                ; set loop counter (the enemyA number)
bra_A30D_loop:
C - - - - - 0x01A31D 06:A30D: A6 1A     LDX vTempCounter1A                ; prepares an input parameter
C - - - - - 0x01A31F 06:A30F: 20 BB A3  JSR sub_A3BB_status_behavior      ;
C - - - - - 0x01A322 06:A312: A6 1A     LDX vTempCounter1A                ; X <~ loop counter
C - - - - - 0x01A324 06:A314: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x01A327 06:A317: C9 E0     CMP #$E0                          ;
C - - - - - 0x01A329 06:A319: B0 39     BCS bra_A354_next                 ; If vEnemyAStatus >= 0xE0
C - - - - - 0x01A32B 06:A31B: C9 C0     CMP #$C0                          ;
C - - - - - 0x01A32D 06:A31D: 90 35     BCC bra_A354_next                 ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01A32F 06:A31F: 20 93 A3  JSR sub_A393_prepare_hitbox       ;
C - - - - - 0x01A332 06:A322: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x01A335 06:A325: B0 0B     BCS @bra_A332_bomb_hit            ; If the bomb is exploding
C - - - - - 0x01A337 06:A327: A5 5F     LDA vChrLiveStatus                ;
C - - - - - 0x01A339 06:A329: 29 02     AND #$02                          ; CONSTANT - Goemon
C - - - - - 0x01A33B 06:A32B: F0 0B     BEQ bra_A338_check_bullets        ; If the character isn't Goemon
C - - - - - 0x01A33D 06:A32D: 20 06 D6  JSR sub_D606_have_intersect_sword ;
C - - - - - 0x01A340 06:A330: 90 10     BCC bra_A342_no_intersect         ; If the intersect doesn't exist
@bra_A332_bomb_hit:
C - - - - - 0x01A342 06:A332: 20 63 A3  JSR sub_A363_hit                  ;
C - - - - - 0x01A345 06:A335: 4C 54 A3  JMP loc_A354_next                 ;

bra_A338_check_bullets:
C - - - - - 0x01A348 06:A338: A6 7A     LDX vBulletCount                      ; set loop counter
@bra_A33A_loop:                                                               ; loop by x
C - - - - - 0x01A34A 06:A33A: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet    ;
C - - - - - 0x01A34D 06:A33D: B0 1A     BCS bra_A359_bullet_hit               ; If the intersect is exist
C - - - - - 0x01A34F 06:A33F: CA        DEX                                   ; decrement loop counter
C - - - - - 0x01A350 06:A340: 10 F8     BPL @bra_A33A_loop                    ; If Register X >= 0x00
bra_A342_no_intersect:
C - - - - - 0x01A352 06:A342: A6 1A     LDX vTempCounter1A                    ; X <~ the enemyA number
C - - - - - 0x01A354 06:A344: 20 62 D5  JSR sub_D562_has_character_damage     ;
C - - - - - 0x01A357 06:A347: BD 20 03  LDA vEnemyAStatus,X                   ;
C - - - - - 0x01A35A 06:A34A: 29 04     AND #$04                              ; CONSTANT - 'using a subweapon' status
C - - - - - 0x01A35C 06:A34C: F0 06     BEQ bra_A354_next                     ; If 'using a subweapon' status isn't activated
C - - - - - 0x01A35E 06:A34E: 20 7A A3  JSR sub_A37A_prepare_subweapon_hitbox ;
C - - - - - 0x01A361 06:A351: 20 62 D5  JSR sub_D562_has_character_damage     ; checks for a subweapon
bra_A354_next:
loc_A354_next:
C D 1 - - - 0x01A364 06:A354: C6 1A     DEC vTempCounter1A                    ; decrements loop counter
C - - - - - 0x01A366 06:A356: 10 B5     BPL bra_A30D_loop                     ; If vTempCounter1A >= 0x00
C - - - - - 0x01A368 06:A358: 60        RTS                                   ;

bra_A359_bullet_hit:
C - - - - - 0x01A369 06:A359: A9 00     LDA #$00                            ;
C - - - - - 0x01A36B 06:A35B: 95 8F     STA vBulletStatus,X                 ; clear
C - - - - - 0x01A36D 06:A35D: 20 63 A3  JSR sub_A363_hit                    ;
C - - - - - 0x01A370 06:A360: 4C 54 A3  JMP loc_A354_next                   ;

sub_A363_hit:
C - - - - - 0x01A373 06:A363: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x01A375 06:A365: A9 22     LDA #$22                       ; CONSTANT - 'the jump' + 'the dying' status
C - - - - - 0x01A377 06:A367: 20 E9 A5  JSR sub_A5E9_change_substatus  ;
C - - - - - 0x01A37A 06:A36A: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x01A37C 06:A36C: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x01A37F 06:A36F: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x01A381 06:A371: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x01A384 06:A374: A9 00     LDA #$00                       ;
C - - - - - 0x01A386 06:A376: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x01A389 06:A379: 60        RTS                            ;

; In: Register X - the enemyA number
sub_A37A_prepare_subweapon_hitbox:
C - - - - - 0x01A38A 06:A37A: A0 08     LDY #$08                     ; the offset value #1
C - - - - - 0x01A38C 06:A37C: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A38F 06:A37F: 6A        ROR                          ;
C - - - - - 0x01A390 06:A380: 90 02     BCC @bra_A384_right          ; If the enemy is looking to the right
C - - - - - 0x01A392 06:A382: A0 18     LDY #$18                     ; the offset value #2
@bra_A384_right:
C - - - - - 0x01A394 06:A384: BD 4A 03  LDA vEnemyAJumpCounter,X     ;
C - - - - - 0x01A397 06:A387: 29 18     AND #$18                     ;
C - - - - - 0x01A399 06:A389: 4A        LSR                          ;
C - - - - - 0x01A39A 06:A38A: 85 12     STA ram_0012                 ; <~ {0x00, 0x04, 0x08, 0x0C}
C - - - - - 0x01A39C 06:A38C: 98        TYA                          ;
C - - - - - 0x01A39D 06:A38D: 18        CLC                          ;
C - - - - - 0x01A39E 06:A38E: 65 12     ADC ram_0012                 ;
C - - - - - 0x01A3A0 06:A390: A8        TAY                          ; Y <~ Y + {0x00, 0x04, 0x08, 0x0C}
C - - - - - 0x01A3A1 06:A391: D0 0B     BNE bra_A39E_assign          ; Always true (Y > 0x00)

sub_A393_prepare_hitbox:
C - - - - - 0x01A3A3 06:A393: A0 00     LDY #$00                     ; the offset value #3
C - - - - - 0x01A3A5 06:A395: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A3A8 06:A398: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x01A3AA 06:A39A: F0 02     BEQ bra_A39E_assign          ; If the enemy isn't squatting
C - - - - - 0x01A3AC 06:A39C: A0 04     LDY #$04                     ; the offset value #4
; In: Register Y - the hitbox offset
bra_A39E_assign:
C - - - - - 0x01A3AE 06:A39E: B9 D9 A2  LDA tbl_A2D9_hitboxes,Y      ;
C - - - - - 0x01A3B1 06:A3A1: 18        CLC                          ;
C - - - - - 0x01A3B2 06:A3A2: 7D 2C 03  ADC vEnemyAPosY,X            ;
C - - - - - 0x01A3B5 06:A3A5: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x01A3B7 06:A3A7: B9 DA A2  LDA tbl_A2D9_hitboxes + 1,Y  ;
C - - - - - 0x01A3BA 06:A3AA: 18        CLC                          ;
C - - - - - 0x01A3BB 06:A3AB: 7D 32 03  ADC vEnemyAScreenPosX,X      ;
C - - - - - 0x01A3BE 06:A3AE: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x01A3C0 06:A3B0: B9 DB A2  LDA tbl_A2D9_hitboxes + 2,Y  ;
C - - - - - 0x01A3C3 06:A3B3: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x01A3C5 06:A3B5: B9 DC A2  LDA tbl_A2D9_hitboxes + 3,Y  ;
C - - - - - 0x01A3C8 06:A3B8: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_A3BA_RTS:
C - - - - - 0x01A3CA 06:A3BA: 60        RTS                          ;

sub_A3BB_status_behavior:
C - - - - - 0x01A3CB 06:A3BB: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A3CE 06:A3BE: 10 FA     BPL bra_A3BA_RTS                          ; If the status isn't used
C - - - - - 0x01A3D0 06:A3C0: BD 20 03  LDA vEnemyAStatus,X                       ; !(WHY?)
C - - - - - 0x01A3D3 06:A3C3: 4A        LSR                                       ;
C - - - - - 0x01A3D4 06:A3C4: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x01A3D7 06:A3C7: D7 A4     .addr loc_A4D8_jump - 1      ; 0x02
- D 1 - I - 0x01A3D9 06:A3C9: D4 A3     .addr loc_A3D5_main - 1      ; 0x04
- D - - - - 0x01A3DB 06:A3CB: D4 A3     .addr loc_A3D5_main - 1      ; 0x08
- D 1 - I - 0x01A3DD 06:A3CD: A8 A4     .addr loc_A4A9_squatting - 1 ; 0x10
- D 1 - I - 0x01A3DF 06:A3CF: 6B A5     .addr loc_A56C_dying - 1     ; 0x20
- D 1 - I - 0x01A3E1 06:A3D1: D4 A3     .addr loc_A3D5_main - 1      ; 0x40
- D 1 - I - 0x01A3E3 06:A3D3: D4 A3     .addr loc_A3D5_main - 1      ; 0x80

; In: Register X - the enemyA number
loc_A3D5_main:
C - - - - - 0x01A3E5 06:A3D5: BD 2C 03  LDA vEnemyAPosY,X                         ;
C - - - - - 0x01A3E8 06:A3D8: 85 00     STA ram_0000                              ;
C - - - - - 0x01A3EA 06:A3DA: E6 00     INC ram_0000                              ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x01A3EC 06:A3DC: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x01A3EF 06:A3DF: D0 07     BNE bra_A3E8_skip                         ; If the collisions by Y-position exists
C - - - - - 0x01A3F1 06:A3E1: A9 1C     LDA #$1C                                  ; CONSTANT - a jump counter value
C - - - - - 0x01A3F3 06:A3E3: A0 02     LDY #$02                                  ; CONSTANT - jumping off, free fall
C - - - - - 0x01A3F5 06:A3E5: 4C C7 A4  JMP loc_A4C7_activate_jump_status         ;

; In: Register X - the enemyA number
bra_A3E8_skip:
C - - - - - 0x01A3F8 06:A3E8: 20 85 A5  JSR sub_A585_try_to_change_self   ;
C - - - - - 0x01A3FB 06:A3EB: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x01A3FE 06:A3EE: 29 0C     AND #$0C                          ; CONSTANT - 'close contact' + 'using a subweapon' status
C - - - - - 0x01A400 06:A3F0: F0 56     BEQ bra_A448_skip                 ; If 'close contact' + 'using a subweapon' status isn't activated
C - - - - - 0x01A402 06:A3F2: A0 04     LDY #$04                          ; an input parameter - sprite_magic2 (by default)
C - - - - - 0x01A404 06:A3F4: C9 08     CMP #$08                          ; CONSTANT - 'close contact' status
C - - - - - 0x01A406 06:A3F6: F0 0A     BEQ bra_A402_prepare_rendering    ; If 'close contact' status isn't activated
C - - - - - 0x01A408 06:A3F8: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x01A40B 06:A3FB: 29 18     AND #$18                          ;
C - - - - - 0x01A40D 06:A3FD: 4A        LSR                               ;
C - - - - - 0x01A40E 06:A3FE: 18        CLC                               ;
C - - - - - 0x01A40F 06:A3FF: 69 18     ADC #$18                          ; A <~ 0x18 + {0x00, 0x04, 0x08, 0x0C}
C - - - - - 0x01A411 06:A401: A8        TAY                               ;
; In: Register Y - sprite_magic2 (The offset by the address)
bra_A402_prepare_rendering:
loc_A402_prepare_rendering:
C D 1 - - - 0x01A412 06:A402: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x01A415 06:A405: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x01A417 06:A407: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x01A41A 06:A40A: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x01A41C 06:A40C: 20 7B D6  JSR sub_D67B_out_of_sight       ;
C - - - - - 0x01A41F 06:A40F: 90 03     BCC bra_A414_skip               ; If the enemy is visible
C - - - - - 0x01A421 06:A411: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A414_skip:
C - - - - - 0x01A424 06:A414: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x01A427 06:A417: 90 03     BCC bra_A41C_skip               ; If the enemy is on the screen
C - - - - - 0x01A429 06:A419: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A41C_skip:
C - - - - - 0x01A42C 06:A41C: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x01A42F 06:A41F: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x01A431 06:A421: 90 03     BCC bra_A426_skip                       ; If Register Y < 0xE0
C - - - - - 0x01A433 06:A423: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A426_skip:
C - - - - - 0x01A436 06:A426: 98        TYA                           ;
C - - - - - 0x01A437 06:A427: 18        CLC                           ;
C - - - - - 0x01A438 06:A428: 6D 02 03  ADC vEnemyASpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x01A43B 06:A42B: 85 01     STA ram_0001                  ;
C - - - - - 0x01A43D 06:A42D: AD 03 03  LDA vEnemyASpriteMagic3       ; ~> sprite_magic3
C - - - - - 0x01A440 06:A430: 85 02     STA ram_0002                  ;
C - - - - - 0x01A442 06:A432: 20 33 CE  JSR sub_CE33_add_sprite_magic ; bank FF
C - - - - - 0x01A445 06:A435: 98        TYA                           ;
C - - - - - 0x01A446 06:A436: C9 18     CMP #$18                      ;
C - - - - - 0x01A448 06:A438: 90 05     BCC bra_A43F_skip             ; If the offset by the address < 0x18
C - - - - - 0x01A44A 06:A43A: 29 02     AND #$02                      ;
C - - - - - 0x01A44C 06:A43C: 18        CLC                           ;
C - - - - - 0x01A44D 06:A43D: 69 04     ADC #$04                      ; A <~ 0x04 (to right) or 0x06 (to left)
; In: Register A - sprite_magic2 (The offset by the address)
bra_A43F_skip:
C - - - - - 0x01A44F 06:A43F: 18        CLC                           ;
C - - - - - 0x01A450 06:A440: 6D 04 03  ADC vEnemyASpriteMagic2Ex1    ; + A ~> sprite_magic2
C - - - - - 0x01A453 06:A443: 85 01     STA ram_0001                  ;
C - - - - - 0x01A455 06:A445: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

bra_A448_skip:
C - - - - - 0x01A458 06:A448: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01A45B 06:A44B: 6A        ROR                                      ;
C - - - - - 0x01A45C 06:A44C: 90 0F     BCC bra_A45D_right                       ; If the enemy is looking to the right
C - - - - - 0x01A45E 06:A44E: 20 63 A4  JSR sub_A463_try_to_movement_on_the_left ;
loc_A451_prepare_rendering_by_frame_:
C D 1 - - - 0x01A461 06:A451: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter    ;
C - - - - - 0x01A464 06:A454: BD 44 03  LDA vEnemyAFrame_Counter,X               ;
C - - - - - 0x01A467 06:A457: 0A        ASL                                      ;
C - - - - - 0x01A468 06:A458: 0A        ASL                                      ; *4
C - - - - - 0x01A469 06:A459: A8        TAY                                      ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01A46A 06:A45A: 4C 02 A4  JMP loc_A402_prepare_rendering           ;

bra_A45D_right:
C - - - - - 0x01A46D 06:A45D: 20 94 A4  JSR sub_A494_try_to_movement_on_the_right ;
C - - - - - 0x01A470 06:A460: 4C 51 A4  JMP loc_A451_prepare_rendering_by_frame_  ;

sub_A463_try_to_movement_on_the_left:
C - - - - - 0x01A473 06:A463: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions  ;
C - - - - - 0x01A476 06:A466: A9 F8     LDA #$F8                                     ; prepare an increment by X (-8)
C - - - - - 0x01A478 06:A468: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX      ;
C - - - - - 0x01A47B 06:A46B: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01A47D 06:A46D: F0 09     BEQ bra_A478_try_jump_over                   ; If the movement isn't allowed
C - - - - - 0x01A47F 06:A46F: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x01A481 06:A471: 29 03     AND #$03                                     ;
C - - - - - 0x01A483 06:A473: F0 1E     BEQ bra_A493_RTS                             ; Branch if vLowCounter is multiple of 4 (vLowCounter % 4 == 0)
C - - - - - 0x01A485 06:A475: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow               ; bank FF

bra_A478_try_jump_over:
C - - - - - 0x01A488 06:A478: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01A48B 06:A47B: 29 20     AND #$20                       ; CONSTANT - 'the dying' status
C - - - - - 0x01A48D 06:A47D: D0 14     BNE bra_A493_RTS               ; If the enemy is dying
C - - - - - 0x01A48F 06:A47F: A9 02     LDA #$02                       ; CONSTANT - the jump
C - - - - - 0x01A491 06:A481: 20 E9 A5  JSR sub_A5E9_change_substatus  ;
C - - - - - 0x01A494 06:A484: A9 14     LDA #$14                       ; Initializes a jump counter
C - - - - - 0x01A496 06:A486: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x01A499 06:A489: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x01A49B 06:A48B: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x01A49E 06:A48E: A9 00     LDA #$00                       ;
C - - - - - 0x01A4A0 06:A490: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
bra_A493_RTS:
C - - - - - 0x01A4A3 06:A493: 60        RTS                            ;

sub_A494_try_to_movement_on_the_right:
C - - - - - 0x01A4A4 06:A494: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions  ;
C - - - - - 0x01A4A7 06:A497: A9 08     LDA #$08                                     ; prepare an increment by X (+8)
C - - - - - 0x01A4A9 06:A499: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX     ;
C - - - - - 0x01A4AC 06:A49C: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01A4AE 06:A49E: F0 D8     BEQ bra_A478_try_jump_over                   ; If the movement isn't allowed
C - - - - - 0x01A4B0 06:A4A0: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x01A4B2 06:A4A2: 29 03     AND #$03                                     ;
C - - - - - 0x01A4B4 06:A4A4: F0 ED     BEQ bra_A493_RTS                             ; Branch if vLowCounter is multiple of 4 (vLowCounter % 4 == 0)
C - - - - - 0x01A4B6 06:A4A6: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow               ; bank FF

loc_A4A9_squatting:
C - - - - - 0x01A4B9 06:A4A9: DE 4A 03  DEC vEnemyAJumpCounter,X                ;
C - - - - - 0x01A4BC 06:A4AC: F0 05     BEQ bra_A4B3_skip                       ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x01A4BE 06:A4AE: A0 14     LDY #$14                                ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x01A4C0 06:A4B0: 4C 02 A4  JMP loc_A402_prepare_rendering          ;

bra_A4B3_skip:
C - - - - - 0x01A4C3 06:A4B3: 20 3E E3  JSR sub_E332_generate_jump_type         ;
C - - - - - 0x01A4C6 06:A4B6: BC 2C 03  LDY vEnemyAPosY,X                       ;
C - - - - - 0x01A4C9 06:A4B9: C0 BF     CPY #$BF                                ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x01A4CB 06:A4BB: 90 06     BCC @bra_A4C3_skip                      ; If EnemyPosY < 0xBF
C - - - - - 0x01A4CD 06:A4BD: 29 01     AND #$01                                ;
C - - - - - 0x01A4CF 06:A4BF: D0 02     BNE @bra_A4C3_skip                      ; If vEnemyPosY is odd
C - - - - - 0x01A4D1 06:A4C1: A9 03     LDA #$03                                ; CONSTANT - jump by side
@bra_A4C3_skip:
C - - - - - 0x01A4D3 06:A4C3: A8        TAY                                     ; Y <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x01A4D4 06:A4C4: B9 58 E3  LDA tbl_E358_init_counter,Y             ;
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_A4C7_activate_jump_status:
C D 1 - - - 0x01A4D7 06:A4C7: 9D 4A 03  STA vEnemyAJumpCounter,X                  ;
C - - - - - 0x01A4DA 06:A4CA: 98        TYA                                       ;
C - - - - - 0x01A4DB 06:A4CB: 9D 56 03  STA vEnemyAJumpType,X                     ;
C - - - - - 0x01A4DE 06:A4CE: A9 02     LDA #$02                                  ; CONSTANT - the jump
C - - - - - 0x01A4E0 06:A4D0: 20 E9 A5  JSR sub_A5E9_change_substatus             ;
C - - - - - 0x01A4E3 06:A4D3: A9 00     LDA #$00                                  ;
C - - - - - 0x01A4E5 06:A4D5: 9D 44 03  STA vEnemyAFrame_Counter,X                ; reset a counter
loc_A4D8_jump:
C - - - - - 0x01A4E8 06:A4D8: BD 2C 03  LDA vEnemyAPosY,X                         ;
C - - - - - 0x01A4EB 06:A4DB: C9 DF     CMP #$DF                                  ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A4ED 06:A4DD: B0 1E     BCS bra_A4FD_skip                         ; If PosY >= 0xDF
C - - - - - 0x01A4EF 06:A4DF: BD 56 03  LDA vEnemyAJumpType,X                     ;
C - - - - - 0x01A4F2 06:A4E2: C9 03     CMP #$03                                  ; CONSTANT - jump by side
C - - - - - 0x01A4F4 06:A4E4: D0 17     BNE bra_A4FD_skip                         ; If JumpType != 0x03
C - - - - - 0x01A4F6 06:A4E6: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A4F9 06:A4E9: 6A        ROR                                       ;
C - - - - - 0x01A4FA 06:A4EA: 90 0A     BCC bra_A4F6_right                        ; If the enemy is looking to the right
C - - - - - 0x01A4FC 06:A4EC: 29 10     AND #$10                                  ; CONSTANT - the dying + shift right
C - - - - - 0x01A4FE 06:A4EE: D0 0A     BNE bra_A4FA_invert                       ; If the enemy is dying
bra_A4F0_invert:
C - - - - - 0x01A500 06:A4F0: 20 63 A4  JSR sub_A463_try_to_movement_on_the_left  ;
C - - - - - 0x01A503 06:A4F3: 4C FD A4  JMP loc_A4FD_continue                     ;

bra_A4F6_right:
C - - - - - 0x01A506 06:A4F6: 29 10     AND #$10                                  ; CONSTANT - the dying + shift right
C - - - - - 0x01A508 06:A4F8: D0 F6     BNE bra_A4F0_invert                       ; If the enemy is dying
bra_A4FA_invert:
C - - - - - 0x01A50A 06:A4FA: 20 94 A4  JSR sub_A494_try_to_movement_on_the_right ;
loc_A4FD_continue:
bra_A4FD_skip:
C D 1 - - - 0x01A50D 06:A4FD: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A510 06:A500: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x01A513 06:A503: 18        CLC                                     ;
C - - - - - 0x01A514 06:A504: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x01A517 06:A507: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x01A519 06:A509: 90 09     BCC @bra_A514_skip                      ; If EnemyPosY < 0xDF
C - - - - - 0x01A51B 06:A50B: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x01A51D 06:A50D: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01A51F 06:A50F: 90 02     BCC @bra_A513_skip                      ; If EnemyPosY < 0xF8
C - - - - - 0x01A521 06:A511: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_A513_skip:
C - - - - - 0x01A523 06:A513: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_A514_skip:
C - - - - - 0x01A524 06:A514: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x01A527 06:A517: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A52A 06:A51A: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x01A52C 06:A51C: 90 2E     BCC bra_A54C_inc                        ; If JumpCounter < 0x18
C - - - - - 0x01A52E 06:A51E: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A530 06:A520: 90 05     BCC bra_A527_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x01A532 06:A522: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x01A534 06:A524: 4C 7F D7  JMP loc_D77F_free_enemyA                ; !(BUG?), need loc_A402_prepare_rendering

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_A527_skip:
C - - - - - 0x01A537 06:A527: 85 00     STA ram_0000                              ;
C - - - - - 0x01A539 06:A529: E6 00     INC ram_0000                              ;
C - - - - - 0x01A53B 06:A52B: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x01A53E 06:A52E: F0 1C     BEQ bra_A54C_inc                          ; If the collisions by Y-position doesn't exist
C - - - - - 0x01A540 06:A530: C9 02     CMP #$02                                  ; CONSTANT - a weak collision
C - - - - - 0x01A542 06:A532: F0 07     BEQ bra_A53B_weak                         ; If the collision is weak
C - - - - - 0x01A544 06:A534: 20 47 D3  JSR sub_D347_check_landing_enemyA         ;
C - - - - - 0x01A547 06:A537: D0 07     BNE bra_A540_landing                      ; If the landing is allow
C - - - - - 0x01A549 06:A539: F0 11     BEQ bra_A54C_inc                          ;

bra_A53B_weak:
C - - - - - 0x01A54B 06:A53B: 20 47 D3  JSR sub_D347_check_landing_enemyA         ;
C - - - - - 0x01A54E 06:A53E: F0 0C     BEQ bra_A54C_inc                          ; If the landing is disallow
bra_A540_landing:
C - - - - - 0x01A550 06:A540: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY        ;
C - - - - - 0x01A553 06:A543: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A556 06:A546: 29 20     AND #$20                                  ; CONSTANT - the dying
C - - - - - 0x01A558 06:A548: D0 1D     BNE bra_A567_start_dying_ex               ; If the enemy is dying
C - - - - - 0x01A55A 06:A54A: F0 0A     BEQ bra_A556_clear                        ; Always true

bra_A54C_inc:
C - - - - - 0x01A55C 06:A54C: FE 4A 03  INC vEnemyAJumpCounter,X                  ;
C - - - - - 0x01A55F 06:A54F: A9 2F     LDA #$2F                                  ; CONSTANT - a maximum jump value
C - - - - - 0x01A561 06:A551: DD 4A 03  CMP vEnemyAJumpCounter,X                  ;
C - - - - - 0x01A564 06:A554: B0 03     BCS bra_A559_skip                         ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
bra_A556_clear:
C - - - - - 0x01A566 06:A556: 9D 4A 03  STA vEnemyAJumpCounter,X                  ; reassign
bra_A559_skip:
C - - - - - 0x01A569 06:A559: A0 0C     LDY #$0C                                  ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x01A56B 06:A55B: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A56E 06:A55E: 29 20     AND #$20                                  ; CONSTANT - the dying
C - - - - - 0x01A570 06:A560: D0 02     BNE @bra_A564_skip                        ; If the enemy is dying
C - - - - - 0x01A572 06:A562: A0 08     LDY #$08                                  ; an input parameter - sprite_magic2 (a jump frame)
@bra_A564_skip:
C - - - - - 0x01A574 06:A564: 4C 02 A4  JMP loc_A402_prepare_rendering            ;

bra_A567_start_dying_ex:
C - - - - - 0x01A577 06:A567: A9 30     LDA #$30                          ; initializes a jump counter
C - - - - - 0x01A579 06:A569: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
loc_A56C_dying:
C - - - - - 0x01A57C 06:A56C: DE 4A 03  DEC vEnemyAJumpCounter,X          ; updates the counter value
C - - - - - 0x01A57F 06:A56F: D0 03     BNE bra_A574_death_rendering      ; If JumpCounter != 0x00
C - - - - - 0x01A581 06:A571: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

bra_A574_death_rendering:
C - - - - - 0x01A584 06:A574: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x01A587 06:A577: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x01A58A 06:A57A: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the JumpCounter)
C - - - - - 0x01A58B 06:A57B: B9 82 A5  LDA tbl_A582_frames_,Y                ;
C - - - - - 0x01A58E 06:A57E: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01A58F 06:A57F: 4C 02 A4  JMP loc_A402_prepare_rendering        ;

tbl_A582_frames_:
- D 1 - - - 0x01A592 06:A582: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x01A593 06:A583: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x01A594 06:A584: 10        .byte $10   ; damage frame

sub_A585_try_to_change_self:
C - - - - - 0x01A595 06:A585: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x01A598 06:A588: F0 0A     BEQ @bra_A594_skip                 ; If EnemyAJumpCounter == 0x00
C - - - - - 0x01A59A 06:A58A: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x01A59D 06:A58D: D0 66     BNE bra_A5F5_RTS                   ; If EnemyAJumpCounter != 0x00
C - - - - - 0x01A59F 06:A58F: A9 00     LDA #$00                           ; clear substatus
C - - - - - 0x01A5A1 06:A591: 20 E9 A5  JSR sub_A5E9_change_substatus      ;
@bra_A594_skip:
C - - - - - 0x01A5A4 06:A594: 20 F6 A5  JSR sub_A5F6_try_change_direction  ;
C - - - - - 0x01A5A7 06:A597: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01A5A9 06:A599: 6A        ROR                                ;
C - - - - - 0x01A5AA 06:A59A: 90 28     BCC @bra_A5C4_generate_status      ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x01A5AC 06:A59C: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x01A5AF 06:A59F: 29 40     AND #$40                           ; CONSTANT - the enemy can get damage
C - - - - - 0x01A5B1 06:A5A1: F0 21     BEQ @bra_A5C4_generate_status      ; If EnemyAStatus doesn't contain 0x40
C - - - - - 0x01A5B3 06:A5A3: A5 6A     LDA vScreenChrPosY                 ;
C - - - - - 0x01A5B5 06:A5A5: DD 2C 03  CMP vEnemyAPosY,X                  ;
C - - - - - 0x01A5B8 06:A5A8: D0 1A     BNE @bra_A5C4_generate_status      ; If ScreenChrPosY != EnemyAPosY
C - - - - - 0x01A5BA 06:A5AA: A5 64     LDA vScreenChrPosX                 ;
C - - - - - 0x01A5BC 06:A5AC: 38        SEC                                ;
C - - - - - 0x01A5BD 06:A5AD: FD 32 03  SBC vEnemyAScreenPosX,X            ;
C - - - - - 0x01A5C0 06:A5B0: B0 03     BCS @bra_A5B5_skip                 ; If ScreenChrPosX - EnemyAScreenPosX >= 0x00
C - - - - - 0x01A5C2 06:A5B2: 20 73 D0  JSR sub_D073_invert_sign           ;
@bra_A5B5_skip:
C - - - - - 0x01A5C5 06:A5B5: C9 18     CMP #$18                           ;
C - - - - - 0x01A5C7 06:A5B7: B0 0B     BCS @bra_A5C4_generate_status      ; If abs(vScreenChrPosX - vEnemyAScreenPosX) >= 0x18
C - - - - - 0x01A5C9 06:A5B9: A9 31     LDA #$31                           ; sound of fist swings
C - - - - - 0x01A5CB 06:A5BB: 20 20 C4  JSR sub_C420_add_sound_effect      ;
C - - - - - 0x01A5CE 06:A5BE: A9 0C     LDA #$0C                           ; CONSTANT - 'close contact' + 'using a subweapon' status
C - - - - - 0x01A5D0 06:A5C0: 85 05     STA ram_0005                       ;
C - - - - - 0x01A5D2 06:A5C2: D0 1E     BNE bra_A5E2_assign                ; Always true

@bra_A5C4_generate_status:
C - - - - - 0x01A5D4 06:A5C4: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01A5D6 06:A5C6: 29 3F     AND #$3F                           ;
C - - - - - 0x01A5D8 06:A5C8: D0 2B     BNE bra_A5F5_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x01A5DA 06:A5CA: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x01A5DD 06:A5CD: 6A        ROR                                ;
C - - - - - 0x01A5DE 06:A5CE: 90 25     BCC bra_A5F5_RTS                   ; 50% chance branch
C - - - - - 0x01A5E0 06:A5D0: 29 07     AND #$07                           ;
C - - - - - 0x01A5E2 06:A5D2: A8        TAY                                ; y is {0x00, ... , 0x07}
C - - - - - 0x01A5E3 06:A5D3: B9 01 A3  LDA tbl_A301_status_flags,Y        ;
C - - - - - 0x01A5E6 06:A5D6: 85 05     STA ram_0005                       ;
C - - - - - 0x01A5E8 06:A5D8: F0 11     BEQ bra_A5EB_change_substatus_ex   ; If status flag == 0x00
C - - - - - 0x01A5EA 06:A5DA: C9 0C     CMP #$0C                           ; CONSTANT - 'close contact' + 'using a subweapon' status
C - - - - - 0x01A5EC 06:A5DC: F0 04     BEQ bra_A5E2_assign                ; If 'close contact' + 'using a subweapon' status is activated
C - - - - - 0x01A5EE 06:A5DE: A9 20     LDA #$20                           ; !(WHY?),  it looks like the developers forgot to refactor the code
C - - - - - 0x01A5F0 06:A5E0: D0 02     BNE bra_A5E4_skip                  ; Always true

; In: $0005 - an new status
bra_A5E2_assign:
C - - - - - 0x01A5F2 06:A5E2: A9 20     LDA #$20                          ; An initialize jump value for 'close contact' + 'using a subweapon'
bra_A5E4_skip:
C - - - - - 0x01A5F4 06:A5E4: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
C - - - - - 0x01A5F7 06:A5E7: D0 02     BNE bra_A5EB_change_substatus_ex  ; Always true (A = 0x20)
; In: Register A - an new status
sub_A5E9_change_substatus:
C - - - - - 0x01A5F9 06:A5E9: 85 05     STA ram_0005          ;
; In: $0005 - an new status
bra_A5EB_change_substatus_ex:
C - - - - - 0x01A5FB 06:A5EB: BD 20 03  LDA vEnemyAStatus,X   ;
C - - - - - 0x01A5FE 06:A5EE: 29 C1     AND #$C1              ;
C - - - - - 0x01A600 06:A5F0: 05 05     ORA ram_0005          ;
C - - - - - 0x01A602 06:A5F2: 9D 20 03  STA vEnemyAStatus,X   ;
bra_A5F5_RTS:
C - - - - - 0x01A605 06:A5F5: 60        RTS                   ;

; In: Register X - the enemyA number
sub_A5F6_try_change_direction:
C - - - - - 0x01A606 06:A5F6: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6BD
C - - - - - 0x01A608 06:A5F8: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x01A60B 06:A5FB: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x01A60D 06:A5FD: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01A610 06:A600: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x01A612 06:A602: 05 05     ORA ram_0005                             ;
C - - - - - 0x01A614 06:A604: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x01A617 06:A607: 60        RTS                                      ;

tbl_A608_hitboxes:
- D 1 - - - 0x01A618 06:A608: 00        .byte $00, $00, $20, $04
- D 1 - - - 0x01A61C 06:A60C: 00        .byte $00, $00, $18, $04
- D 1 - - - 0x01A620 06:A610: 00        .byte $00, $00, $20, $04 ; Karate-boy
- D 1 - - - 0x01A624 06:A614: 00        .byte $00, $00, $18, $04 ; Karate-boy
- D 1 - - - 0x01A628 06:A618: F0        .byte $F0, $06, $10, $08 ; Karate-boy
- - - - - - 0x01A62C 06:A61C: 00        .byte $00, $00, $20, $04
- - - - - - 0x01A630 06:A620: 00        .byte $00, $00, $18, $04
- - - - - - 0x01A634 06:A624: F0        .byte $F0, $FA, $10, $08
- D 1 - - - 0x01A638 06:A628: 00        .byte $00, $00, $20, $04
- D 1 - - - 0x01A63C 06:A62C: 00        .byte $00, $00, $18, $04
- D 1 - - - 0x01A640 06:A630: 00        .byte $00, $00, $10, $08
- - - - - - 0x01A644 06:A634: 00        .byte $00, $00, $18, $08
- D 1 - - - 0x01A648 06:A638: 00        .byte $00, $00, $20, $04 ; Street karate-boy
- D 1 - - - 0x01A64C 06:A63C: 00        .byte $00, $00, $18, $04 ; Street karate-boy
- D 1 - - - 0x01A650 06:A640: 00        .byte $00, $00, $10, $08 ; Street karate-boy
- D 1 - - - 0x01A654 06:A644: 04        .byte $04, $08, $10, $08
- - - - - - 0x01A658 06:A648: 00        .byte $00, $00, $20, $04
- - - - - - 0x01A65C 06:A64C: 00        .byte $00, $00, $18, $04
- - - - - - 0x01A660 06:A650: 00        .byte $00, $00, $10, $08
- - - - - - 0x01A664 06:A654: 04        .byte $04, $F8, $10, $08

tbl_A658_status_flags:
; Karate-boy
- D 1 - - - 0x01A668 06:A658: 00        .byte $00   ; 
- D 1 - - - 0x01A669 06:A659: 00        .byte $00   ; 
- D 1 - - - 0x01A66A 06:A65A: 10        .byte $10   ; 
- D 1 - - - 0x01A66B 06:A65B: 10        .byte $10   ; 
- D 1 - - - 0x01A66C 06:A65C: 10        .byte $10   ; 
- D 1 - - - 0x01A66D 06:A65D: 10        .byte $10   ; 
- D 1 - - - 0x01A66E 06:A65E: 08        .byte $08   ; 
- D 1 - - - 0x01A66F 06:A65F: 08        .byte $08   ; 
; Street karate-boy
- D 1 - - - 0x01A670 06:A660: 00        .byte $00   ; 
- D 1 - - - 0x01A671 06:A661: 00        .byte $00   ; 
- D 1 - - - 0x01A672 06:A662: 10        .byte $10   ; 
- D 1 - - - 0x01A673 06:A663: 10        .byte $10   ; 
- D 1 - - - 0x01A674 06:A664: 10        .byte $10   ; 
- D 1 - - - 0x01A675 06:A665: 10        .byte $10   ; 
- D 1 - - - 0x01A676 06:A666: 10        .byte $10   ; 
- D 1 - - - 0x01A677 06:A667: 08        .byte $08   ; 

loc_A668_karate_boy:
C - - J - - 0x01A678 06:A668: A2 01     LDX #$01                          ;
C - - - - - 0x01A67A 06:A66A: 86 1A     STX vTempCounter1A                ; set loop counter (the enemyA number)
bra_A66C_loop:                                                            ; loop by TempCounter1A (2 times)
C - - - - - 0x01A67C 06:A66C: A6 1A     LDX vTempCounter1A                ; prepares the input parameter
C - - - - - 0x01A67E 06:A66E: 20 72 A7  JSR sub_A772_status_behavior      ;
C - - - - - 0x01A681 06:A671: A6 1A     LDX vTempCounter1A                ; X <~ the enemyA number
C - - - - - 0x01A683 06:A673: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x01A686 06:A676: C9 E0     CMP #$E0                          ;
C - - - - - 0x01A688 06:A678: B0 3C     BCS bra_A6B6_next                 ; If vEnemyAStatus >= 0xE0
C - - - - - 0x01A68A 06:A67A: C9 C0     CMP #$C0                          ;
C - - - - - 0x01A68C 06:A67C: 90 38     BCC bra_A6B6_next                 ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01A68E 06:A67E: AD 00 03  LDA vEnemyA                       ;
C - - - - - 0x01A691 06:A681: C9 17     CMP #$17                          ; CONSTANT - Karate-boy
C - - - - - 0x01A693 06:A683: D0 06     BNE bra_A68B_skip                 ; If EnemyA != 0x17
C - - - - - 0x01A695 06:A685: 20 2A A7  JSR sub_A72A_prepare_hitbox2      ;
C - - - - - 0x01A698 06:A688: 4C 8E A6  JMP loc_A68E_continue             ;

bra_A68B_skip:
C - - - - - 0x01A69B 06:A68B: 20 4A A7  JSR sub_A74A_prepare_hitbox1      ;
loc_A68E_continue:
C D 1 - - - 0x01A69E 06:A68E: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x01A6A1 06:A691: B0 0B     BCS @bra_A69E_bomb_hit            ; If the bomb is exploding
C - - - - - 0x01A6A3 06:A693: A5 5F     LDA vChrLiveStatus                ;
C - - - - - 0x01A6A5 06:A695: 29 02     AND #$02                          ; CONSTANT - Goemon
C - - - - - 0x01A6A7 06:A697: F0 0B     BEQ bra_A6A4_check_bullets        ; If the character isn't Goemon
C - - - - - 0x01A6A9 06:A699: 20 06 D6  JSR sub_D606_have_intersect_sword ;
C - - - - - 0x01A6AC 06:A69C: 90 10     BCC bra_A6AE_no_intersect         ; If the intersect doesn't exist
@bra_A69E_bomb_hit:
C - - - - - 0x01A6AE 06:A69E: 20 C5 A6  JSR sub_A6C5_hit                  ;
C - - - - - 0x01A6B1 06:A6A1: 4C B6 A6  JMP loc_A6B6_next                 ;

bra_A6A4_check_bullets:
C - - - - - 0x01A6B4 06:A6A4: A6 7A     LDX vBulletCount                     ; set loop counter
@bra_A6A6_loop:                                                              ; loop by x
C - - - - - 0x01A6B6 06:A6A6: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet   ;
C - - - - - 0x01A6B9 06:A6A9: B0 10     BCS bra_A6BB_bullet_hit              ; If the intersect is exist
C - - - - - 0x01A6BB 06:A6AB: CA        DEX                                  ; decrement loop counter
C - - - - - 0x01A6BC 06:A6AC: 10 F8     BPL @bra_A6A6_loop                   ; If Register X >= 0x00
bra_A6AE_no_intersect:
C - - - - - 0x01A6BE 06:A6AE: A6 1A     LDX vTempCounter1A                   ; X <~ the enemyA number
C - - - - - 0x01A6C0 06:A6B0: 20 DC A6  JSR sub_A6DC_prepare_external_hitbox ;
C - - - - - 0x01A6C3 06:A6B3: 20 62 D5  JSR sub_D562_has_character_damage    ;
bra_A6B6_next:
loc_A6B6_next:
C D 1 - - - 0x01A6C6 06:A6B6: C6 1A     DEC vTempCounter1A                   ; decrements loop counter
C - - - - - 0x01A6C8 06:A6B8: 10 B2     BPL bra_A66C_loop                    ; If vTempCounter1A >= 0x00
C - - - - - 0x01A6CA 06:A6BA: 60        RTS                                  ;

; In: Register X - the number of the bullet
bra_A6BB_bullet_hit:
C - - - - - 0x01A6CB 06:A6BB: A9 00     LDA #$00                  ;
C - - - - - 0x01A6CD 06:A6BD: 95 8F     STA vBulletStatus,X       ; clear
C - - - - - 0x01A6CF 06:A6BF: 20 C5 A6  JSR sub_A6C5_hit          ;
C - - - - - 0x01A6D2 06:A6C2: 4C B6 A6  JMP loc_A6B6_next         ;

; In: Register X - the enemyA number
sub_A6C5_hit:
C - - - - - 0x01A6D5 06:A6C5: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x01A6D7 06:A6C7: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x01A6D9 06:A6C9: 20 E3 A9  JSR sub_A9E3_change_substatus  ;
C - - - - - 0x01A6DC 06:A6CC: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x01A6DE 06:A6CE: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x01A6E1 06:A6D1: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x01A6E3 06:A6D3: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x01A6E6 06:A6D6: A9 00     LDA #$00                       ;
C - - - - - 0x01A6E8 06:A6D8: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x01A6EB 06:A6DB: 60        RTS                            ;

sub_A6DC_prepare_external_hitbox:
C - - - - - 0x01A6EC 06:A6DC: AD 00 03  LDA vEnemyA                   ;
C - - - - - 0x01A6EF 06:A6DF: C9 17     CMP #$17                      ; CONSTANT - Karate-boy
C - - - - - 0x01A6F1 06:A6E1: F0 25     BEQ @bra_A708_boy             ; If EnemyA == 0x17
C - - - - - 0x01A6F3 06:A6E3: A9 20     LDA #$20                      ;
C - - - - - 0x01A6F5 06:A6E5: 85 00     STA ram_0000                  ; $0000 <~ 0x20
C - - - - - 0x01A6F7 06:A6E7: A0 30     LDY #$30                      ; the offset value #1
C - - - - - 0x01A6F9 06:A6E9: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x01A6FC 06:A6EC: 48        PHA                           ; store the status
C - - - - - 0x01A6FD 06:A6ED: 29 16     AND #$16                      ; CONSTANT - 'squatting' + 'spin' + 'jump' status
C - - - - - 0x01A6FF 06:A6EF: F0 2D     BEQ @bra_A71E_add_and_assign  ; If 'squatting' or 'spin' or 'jump' status isn't activated
C - - - - - 0x01A701 06:A6F1: C9 06     CMP #$06                      ; CONSTANT - 'spin' + 'jump' status
C - - - - - 0x01A703 06:A6F3: F0 29     BEQ @bra_A71E_add_and_assign  ; If 'spin' or 'jump' status is activated
C - - - - - 0x01A705 06:A6F5: A0 34     LDY #$34                      ; the offset value #2
C - - - - - 0x01A707 06:A6F7: C9 10     CMP #$10                      ; CONSTANT - 'squatting' status
C - - - - - 0x01A709 06:A6F9: F0 23     BEQ @bra_A71E_add_and_assign  ; If 'squatting' status is activated
C - - - - - 0x01A70B 06:A6FB: A0 38     LDY #$38                      ; the offset value #3
C - - - - - 0x01A70D 06:A6FD: BD 4A 03  LDA vEnemyAJumpCounter,X      ;
C - - - - - 0x01A710 06:A700: C9 18     CMP #$18                      ; CONSTANT - a maximum amplitude
C - - - - - 0x01A712 06:A702: 90 1A     BCC @bra_A71E_add_and_assign  ; If JumpCounter < 0x18
C - - - - - 0x01A714 06:A704: A0 3C     LDY #$3C                      ; the offset value #4, !(BUG?) - for the left direction
C - - - - - 0x01A716 06:A706: D0 16     BNE @bra_A71E_add_and_assign  ; Always true

@bra_A708_boy:
C - - - - - 0x01A718 06:A708: A9 18     LDA #$18                      ;
C - - - - - 0x01A71A 06:A70A: 85 00     STA ram_0000                  ; $0000 <~ 0x18
C - - - - - 0x01A71C 06:A70C: A0 08     LDY #$08                      ; the offset value #5
C - - - - - 0x01A71E 06:A70E: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x01A721 06:A711: 48        PHA                           ; store the status
C - - - - - 0x01A722 06:A712: 29 18     AND #$18                      ; CONSTANT - 'squatting' + 'close contact' status
C - - - - - 0x01A724 06:A714: F0 08     BEQ @bra_A71E_add_and_assign  ; If 'squatting' or 'close contact' status isn't activated
C - - - - - 0x01A726 06:A716: A0 0C     LDY #$0C                      ; the offset value #6
C - - - - - 0x01A728 06:A718: C9 10     CMP #$10                      ; CONSTANT - 'squatting' status
C - - - - - 0x01A72A 06:A71A: F0 02     BEQ @bra_A71E_add_and_assign  ; If 'squatting' status is activated
C - - - - - 0x01A72C 06:A71C: A0 10     LDY #$10                      ; the offset value #7
@bra_A71E_add_and_assign:
C - - - - - 0x01A72E 06:A71E: 68        PLA                           ; retrieve the status (see $A6EC and $A711)
C - - - - - 0x01A72F 06:A71F: 6A        ROR                           ;
C - - - - - 0x01A730 06:A720: 90 33     BCC bra_A755_assign           ; If the enemy is looking to the right
C - - - - - 0x01A732 06:A722: 98        TYA                           ;
C - - - - - 0x01A733 06:A723: 18        CLC                           ;
C - - - - - 0x01A734 06:A724: 65 00     ADC ram_0000                  ;
C - - - - - 0x01A736 06:A726: A8        TAY                           ; Y <~ Y + {0x18, 0x20}
C - - - - - 0x01A737 06:A727: 4C 55 A7  JMP loc_A755_assign           ;

sub_A72A_prepare_hitbox2:
C - - - - - 0x01A73A 06:A72A: A0 20     LDY #$20                     ; the offset value #1
C - - - - - 0x01A73C 06:A72C: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A73F 06:A72F: 29 16     AND #$16                     ; CONSTANT - 'squatting' + 'spin' + 'jump' status
C - - - - - 0x01A741 06:A731: F0 22     BEQ bra_A755_assign          ; If 'squatting' or 'spin' or 'jump' status isn't activated
C - - - - - 0x01A743 06:A733: C9 06     CMP #$06                     ; CONSTANT - 'spin' + 'jump' status
C - - - - - 0x01A745 06:A735: F0 1E     BEQ bra_A755_assign          ; If 'spin' or 'jump' status is activated
C - - - - - 0x01A747 06:A737: A0 28     LDY #$28                     ; the offset value #2
C - - - - - 0x01A749 06:A739: C9 10     CMP #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x01A74B 06:A73B: F0 18     BEQ bra_A755_assign          ; If 'squatting' status is activated
C - - - - - 0x01A74D 06:A73D: A0 24     LDY #$24                     ; the offset value #3
C - - - - - 0x01A74F 06:A73F: BD 4A 03  LDA vEnemyAJumpCounter,X     ;
C - - - - - 0x01A752 06:A742: C9 18     CMP #$18                     ; CONSTANT - a maximum amplitude
C - - - - - 0x01A754 06:A744: 90 0F     BCC bra_A755_assign          ; If JumpCounter < 0x18
C - - - - - 0x01A756 06:A746: A0 28     LDY #$28                     ; the offset value #4
C - - - - - 0x01A758 06:A748: D0 0B     BNE bra_A755_assign          ; Always true

sub_A74A_prepare_hitbox1:
C - - - - - 0x01A75A 06:A74A: A0 00     LDY #$00                     ; the offset value #5
C - - - - - 0x01A75C 06:A74C: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01A75F 06:A74F: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x01A761 06:A751: F0 02     BEQ bra_A755_assign          ; If 'squatting' status isn't activated
C - - - - - 0x01A763 06:A753: A0 04     LDY #$04                     ; the offset value #6
loc_A755_assign:
bra_A755_assign:
C D 1 - - - 0x01A765 06:A755: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x01A768 06:A758: 18        CLC                          ;
C - - - - - 0x01A769 06:A759: 79 08 A6  ADC tbl_A608_hitboxes,Y      ;
C - - - - - 0x01A76C 06:A75C: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x01A76E 06:A75E: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x01A771 06:A761: 18        CLC                          ;
C - - - - - 0x01A772 06:A762: 79 09 A6  ADC tbl_A608_hitboxes + 1,Y  ;
C - - - - - 0x01A775 06:A765: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x01A777 06:A767: B9 0A A6  LDA tbl_A608_hitboxes + 2,Y  ;
C - - - - - 0x01A77A 06:A76A: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x01A77C 06:A76C: B9 0B A6  LDA tbl_A608_hitboxes + 3,Y  ;
C - - - - - 0x01A77F 06:A76F: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_A771_RTS:
C - - - - - 0x01A781 06:A771: 60        RTS                          ;

sub_A772_status_behavior:
C - - - - - 0x01A782 06:A772: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A785 06:A775: 10 FA     BPL bra_A771_RTS                          ; If the status isn't used
C - - - - - 0x01A787 06:A777: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01A78A 06:A77A: 4A        LSR                                       ;
C - - - - - 0x01A78B 06:A77B: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x01A78E 06:A77E: CD A8     .addr loc_A8CE_jump - 1      ; 0x02
- D - - - - 0x01A790 06:A780: 8B A7     .addr loc_A78C_main - 1      ; 0x04
- D 1 - I - 0x01A792 06:A782: 8B A7     .addr loc_A78C_main - 1      ; 0x08
- D 1 - I - 0x01A794 06:A784: 92 A8     .addr loc_A893_squatting - 1 ; 0x10
- D 1 - I - 0x01A796 06:A786: 88 A9     .addr loc_A989_dying - 1     ; 0x20
- D 1 - I - 0x01A798 06:A788: 8B A7     .addr loc_A78C_main - 1      ; 0x40
- D 1 - I - 0x01A79A 06:A78A: 8B A7     .addr loc_A78C_main - 1      ; 0x80

loc_A78C_main:
C - - - - - 0x01A79C 06:A78C: BD 2C 03  LDA vEnemyAPosY,X                         ;
C - - - - - 0x01A79F 06:A78F: 85 00     STA ram_0000                              ;
C - - - - - 0x01A7A1 06:A791: E6 00     INC ram_0000                              ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x01A7A3 06:A793: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x01A7A6 06:A796: D0 07     BNE bra_A79F_skip                         ; If the collisions by Y-position exists
C - - - - - 0x01A7A8 06:A798: A9 1C     LDA #$1C                                  ; CONSTANT - a jump counter value
C - - - - - 0x01A7AA 06:A79A: A0 02     LDY #$02                                  ; CONSTANT - jumping off, free fall
C - - - - - 0x01A7AC 06:A79C: 4C BD A8  JMP loc_A8BD_activate_jump_status         ;

bra_A79F_skip:
C - - - - - 0x01A7AF 06:A79F: 20 A2 A9  JSR sub_A9A2_try_to_change_self   ;
C - - - - - 0x01A7B2 06:A7A2: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x01A7B5 06:A7A5: 29 08     AND #$08                          ; CONSTANT - 'close_contact' status
C - - - - - 0x01A7B7 06:A7A7: D0 03     BNE bra_A7AC_close_contact        ; If 'close_contact' status is activated
C - - - - - 0x01A7B9 06:A7A9: 4C 30 A8  JMP loc_A830_try_movements        ;

bra_A7AC_close_contact:
C - - - - - 0x01A7BC 06:A7AC: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x01A7BF 06:A7AF: 29 07     AND #$07                          ;
C - - - - - 0x01A7C1 06:A7B1: D0 05     BNE @bra_A7B8_skip                ; Branch if JumpCounter doesn't multiple of 8 (87.5% chance)
C - - - - - 0x01A7C3 06:A7B3: A9 31     LDA #$31                          ; CONSTANT - sound of fist swings
C - - - - - 0x01A7C5 06:A7B5: 20 20 C4  JSR sub_C420_add_sound_effect     ;
@bra_A7B8_skip:
C - - - - - 0x01A7C8 06:A7B8: A0 18     LDY #$18                          ; the offset value #1 (1st contact close frame)
C - - - - - 0x01A7CA 06:A7BA: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x01A7CD 06:A7BD: 29 08     AND #$08                          ;
C - - - - - 0x01A7CF 06:A7BF: D0 02     BNE @bra_A7C3_prepare_rendering   ; Branch every 8 times after 8
C - - - - - 0x01A7D1 06:A7C1: A0 1C     LDY #$1C                          ; the offset value #2 (2nd contact close frame)
; In: Register Y - sprite_magic2 (The offset by the address)
@bra_A7C3_prepare_rendering:
loc_A7C3_prepare_rendering:
C D 1 - - - 0x01A7D3 06:A7C3: BD 38 03  LDA vEnemyAPosXLow,X              ;
C - - - - - 0x01A7D6 06:A7C6: 85 00     STA ram_0000                      ; prepares the 1st parameter
C - - - - - 0x01A7D8 06:A7C8: BD 3E 03  LDA vEnemyAPosXHigh,X             ;
C - - - - - 0x01A7DB 06:A7CB: 85 01     STA ram_0001                      ; prepares the 2nd parameter
C - - - - - 0x01A7DD 06:A7CD: 20 7B D6  JSR sub_D67B_out_of_sight         ;
C - - - - - 0x01A7E0 06:A7D0: 90 03     BCC @bra_A7D5_skip                ; If the enemy is visible
C - - - - - 0x01A7E2 06:A7D2: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

; In: Register Y - sprite_magic2 (The offset by the address)
@bra_A7D5_skip:
C - - - - - 0x01A7E5 06:A7D5: 20 AC D6  JSR sub_D6AC_out_of_screen        ;
C - - - - - 0x01A7E8 06:A7D8: 90 03     BCC @bra_A7DD_skip                ; If the enemy is on the screen
C - - - - - 0x01A7EA 06:A7DA: 4C 41 D7  JMP loc_D741_enemyA_off_screen    ;

; In: Register Y - sprite_magic2 (The offset by the address)
@bra_A7DD_skip:
C - - - - - 0x01A7ED 06:A7DD: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x01A7F0 06:A7E0: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x01A7F2 06:A7E2: 90 03     BCC bra_A7E7_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x01A7F4 06:A7E4: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A7E7_add_sprite_magic_v2:
C - - - - - 0x01A7F7 06:A7E7: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x01A7FA 06:A7EA: C9 18     CMP #$18                       ; CONSTANT - Street karate-boy
C - - - - - 0x01A7FC 06:A7EC: D0 18     BNE @bra_A806_skip             ; If EnemyA == 0x18
C - - - - - 0x01A7FE 06:A7EE: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01A801 06:A7F1: 29 26     AND #$26                       ; CONSTANT - 'dying' + 'spin' + 'jump' status
C - - - - - 0x01A803 06:A7F3: C9 02     CMP #$02                       ; CONSTANT - 'jump' status
C - - - - - 0x01A805 06:A7F5: D0 0F     BNE @bra_A806_skip             ; If status isn't only 'jump'
C - - - - - 0x01A807 06:A7F7: 98        TYA                            ;
C - - - - - 0x01A808 06:A7F8: 18        CLC                            ;
C - - - - - 0x01A809 06:A7F9: 6D 05 03  ADC vEnemyASpriteMagic2Ex2     ; + Y ~> sprite_magic2
C - - - - - 0x01A80C 06:A7FC: 85 01     STA ram_0001                   ;
C - - - - - 0x01A80E 06:A7FE: AD 03 03  LDA vEnemyASpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x01A811 06:A801: 85 02     STA ram_0002                   ;
C - - - - - 0x01A813 06:A803: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

; In: Register Y - sprite_magic2 (The offset by the address)
@bra_A806_skip:
C - - - - - 0x01A816 06:A806: 98        TYA                            ;
C - - - - - 0x01A817 06:A807: 18        CLC                            ;
C - - - - - 0x01A818 06:A808: 6D 02 03  ADC vEnemyASpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x01A81B 06:A80B: 85 01     STA ram_0001                   ;
C - - - - - 0x01A81D 06:A80D: AD 03 03  LDA vEnemyASpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x01A820 06:A810: 85 02     STA ram_0002                   ;
C - - - - - 0x01A822 06:A812: 20 33 CE  JSR sub_CE33_add_sprite_magic  ; bank FF
C - - - - - 0x01A825 06:A815: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01A828 06:A818: 29 08     AND #$08                       ; CONSTANT - 'close_contact' status
C - - - - - 0x01A82A 06:A81A: F0 0A     BEQ @bra_A826_skip             ; If 'close_contact' status isn't activated
C - - - - - 0x01A82C 06:A81C: A0 04     LDY #$04                       ; the offset value #3
C - - - - - 0x01A82E 06:A81E: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01A831 06:A821: 6A        ROR                            ;
C - - - - - 0x01A832 06:A822: 90 02     BCC @bra_A826_skip             ; If the enemy is looking to the right
C - - - - - 0x01A834 06:A824: C8        INY                            ;
C - - - - - 0x01A835 06:A825: C8        INY                            ; +2 for the left frame
@bra_A826_skip:
C - - - - - 0x01A836 06:A826: 98        TYA                            ;
C - - - - - 0x01A837 06:A827: 18        CLC                            ;
C - - - - - 0x01A838 06:A828: 6D 04 03  ADC vEnemyASpriteMagic2Ex1     ; + Y ~> sprite_magic2
C - - - - - 0x01A83B 06:A82B: 85 01     STA ram_0001                   ;
C - - - - - 0x01A83D 06:A82D: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

loc_A830_try_movements:
C D 1 - - - 0x01A840 06:A830: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01A843 06:A833: 6A        ROR                                      ;
C - - - - - 0x01A844 06:A834: 90 11     BCC bra_A847_skip                        ; If the enemy is looking to the right
C - - - - - 0x01A846 06:A836: 20 4D A8  JSR sub_A84D_try_movement_on_the_left    ;
loc_A839_prepare_rendering_by_frame_:
C D 1 - - - 0x01A849 06:A839: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter    ;
C - - - - - 0x01A84C 06:A83C: BD 44 03  LDA vEnemyAFrame_Counter,X               ;
C - - - - - 0x01A84F 06:A83F: 29 03     AND #$03                                 ;
C - - - - - 0x01A851 06:A841: 0A        ASL                                      ;
C - - - - - 0x01A852 06:A842: 0A        ASL                                      ; *4
C - - - - - 0x01A853 06:A843: A8        TAY                                      ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01A854 06:A844: 4C C3 A7  JMP loc_A7C3_prepare_rendering           ;

bra_A847_skip:
C - - - - - 0x01A857 06:A847: 20 7E A8  JSR sub_A87E_try_movement_on_the_right   ;
C - - - - - 0x01A85A 06:A84A: 4C 39 A8  JMP loc_A839_prepare_rendering_by_frame_ ;

; In: Register X - the enemyA number
sub_A84D_try_movement_on_the_left:
C - - - - - 0x01A85D 06:A84D: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left  ;
C - - - - - 0x01A860 06:A850: F0 10     BEQ bra_A862_try_jump_over                      ; If the movement isn't allowed
C - - - - - 0x01A862 06:A852: AD 00 03  LDA vEnemyA                                     ;
C - - - - - 0x01A865 06:A855: C9 18     CMP #$18                                        ; CONSTANT - Street karate-boy
C - - - - - 0x01A867 06:A857: F0 06     BEQ @bra_A85F_street_karate_boy                 ; If EnemyA == 0x18
C - - - - - 0x01A869 06:A859: A5 2C     LDA vLowCounter                                 ;
C - - - - - 0x01A86B 06:A85B: 29 03     AND #$03                                        ;
C - - - - - 0x01A86D 06:A85D: F0 1E     BEQ bra_A87D_RTS                                ; Branch if vLowCounter multiple of 4 (vLowCounter % 4 == 0)
@bra_A85F_street_karate_boy:
C - - - - - 0x01A86F 06:A85F: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                  ;

bra_A862_try_jump_over:
C - - - - - 0x01A872 06:A862: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x01A875 06:A865: 29 20     AND #$20                        ; CONSTANT - 'the dying' status
C - - - - - 0x01A877 06:A867: D0 14     BNE bra_A87D_RTS                ; If the enemy is dying
C - - - - - 0x01A879 06:A869: A9 06     LDA #$06                        ; CONSTANT - 'spin' + 'jump' status
C - - - - - 0x01A87B 06:A86B: 20 E3 A9  JSR sub_A9E3_change_substatus   ;
C - - - - - 0x01A87E 06:A86E: A9 14     LDA #$14                        ; Initializes a jump counter
C - - - - - 0x01A880 06:A870: 9D 4A 03  STA vEnemyAJumpCounter,X        ;
C - - - - - 0x01A883 06:A873: A9 03     LDA #$03                        ; CONSTANT - jump by side
C - - - - - 0x01A885 06:A875: 9D 56 03  STA vEnemyAJumpType,X           ;
C - - - - - 0x01A888 06:A878: A9 00     LDA #$00                        ;
C - - - - - 0x01A88A 06:A87A: 9D 44 03  STA vEnemyAFrame_Counter,X      ; reset a counter
bra_A87D_RTS:
C - - - - - 0x01A88D 06:A87D: 60        RTS                             ;

; In: Register X - the enemyA number
sub_A87E_try_movement_on_the_right:
C - - - - - 0x01A88E 06:A87E: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right ; bank FF
C - - - - - 0x01A891 06:A881: F0 DF     BEQ bra_A862_try_jump_over                      ; If the movement isn't allowed
C - - - - - 0x01A893 06:A883: AD 00 03  LDA vEnemyA                                     ;
C - - - - - 0x01A896 06:A886: C9 18     CMP #$18                                        ; CONSTANT - Street karate-boy
C - - - - - 0x01A898 06:A888: F0 06     BEQ @bra_A890_street_karate_boy                 ; If EnemyA == 0x18
C - - - - - 0x01A89A 06:A88A: A5 2C     LDA vLowCounter                                 ;
C - - - - - 0x01A89C 06:A88C: 29 03     AND #$03                                        ;
C - - - - - 0x01A89E 06:A88E: F0 ED     BEQ bra_A87D_RTS                                ; Branch if vLowCounter multiple of 4 (vLowCounter % 4 == 0)
@bra_A890_street_karate_boy:
C - - - - - 0x01A8A0 06:A890: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                  ;

loc_A893_squatting:
C - - - - - 0x01A8A3 06:A893: DE 4A 03  DEC vEnemyAJumpCounter,X                        ;
C - - - - - 0x01A8A6 06:A896: F0 05     BEQ @bra_A89D_skip                              ; If EnemyAJumpCounter == 0x00
C - - - - - 0x01A8A8 06:A898: A0 14     LDY #$14                                        ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x01A8AA 06:A89A: 4C C3 A7  JMP loc_A7C3_prepare_rendering                  ;

@bra_A89D_skip:
C - - - - - 0x01A8AD 06:A89D: AD 00 03  LDA vEnemyA                             ;
C - - - - - 0x01A8B0 06:A8A0: C9 18     CMP #$18                                ; CONSTANT - Street karate-boy
C - - - - - 0x01A8B2 06:A8A2: D0 05     BNE @bra_A8A9_skip                      ; If EnemyA != 0x18
C - - - - - 0x01A8B4 06:A8A4: A9 32     LDA #$32                                ; CONSTANT - sound of a enemy spinning
C - - - - - 0x01A8B6 06:A8A6: 20 20 C4  JSR sub_C420_add_sound_effect           ;
@bra_A8A9_skip:
C - - - - - 0x01A8B9 06:A8A9: 20 3E E3  JSR sub_E332_generate_jump_type         ;
C - - - - - 0x01A8BC 06:A8AC: BC 2C 03  LDY vEnemyAPosY,X                       ;
C - - - - - 0x01A8BF 06:A8AF: C0 BF     CPY #$BF                                ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x01A8C1 06:A8B1: 90 06     BCC @bra_A8B9_skip                      ; If vEnemyPosY < 0xBF
C - - - - - 0x01A8C3 06:A8B3: 29 01     AND #$01                                ;
C - - - - - 0x01A8C5 06:A8B5: D0 02     BNE @bra_A8B9_skip                      ; If vEnemyPosY is odd
C - - - - - 0x01A8C7 06:A8B7: A9 03     LDA #$03                                ; CONSTANT - jump by side
@bra_A8B9_skip:
C - - - - - 0x01A8C9 06:A8B9: A8        TAY                                     ; Y <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x01A8CA 06:A8BA: B9 58 E3  LDA tbl_E358_init_counter,Y             ;
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_A8BD_activate_jump_status:
C D 1 - - - 0x01A8CD 06:A8BD: 9D 4A 03  STA vEnemyAJumpCounter,X                ;
C - - - - - 0x01A8D0 06:A8C0: 98        TYA                                     ;
C - - - - - 0x01A8D1 06:A8C1: 9D 56 03  STA vEnemyAJumpType,X                   ;
C - - - - - 0x01A8D4 06:A8C4: A9 02     LDA #$02                                ; CONSTANT - the jump
C - - - - - 0x01A8D6 06:A8C6: 20 E3 A9  JSR sub_A9E3_change_substatus           ;
C - - - - - 0x01A8D9 06:A8C9: A9 00     LDA #$00                                ;
C - - - - - 0x01A8DB 06:A8CB: 9D 44 03  STA vEnemyAFrame_Counter,X              ; reset a counter
loc_A8CE_jump:
C - - - - - 0x01A8DE 06:A8CE: BD 2C 03  LDA vEnemyAPosY,X                       ;
C - - - - - 0x01A8E1 06:A8D1: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A8E3 06:A8D3: B0 1E     BCS bra_A8F3_skip                       ; If PosY >= 0xDF
C - - - - - 0x01A8E5 06:A8D5: BD 56 03  LDA vEnemyAJumpType,X                   ;
C - - - - - 0x01A8E8 06:A8D8: C9 03     CMP #$03                                ; CONSTANT - jump by side
C - - - - - 0x01A8EA 06:A8DA: D0 17     BNE bra_A8F3_skip                       ; If EnemyAJumpType != 0x03
C - - - - - 0x01A8EC 06:A8DC: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x01A8EF 06:A8DF: 6A        ROR                                     ;
C - - - - - 0x01A8F0 06:A8E0: 90 0A     BCC bra_A8EC_skip                       ; If the enemy is looking to the right
C - - - - - 0x01A8F2 06:A8E2: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x01A8F4 06:A8E4: D0 0A     BNE bra_A8F0_invert                     ; If the enemy is dying
bra_A8E6_invert:
C - - - - - 0x01A8F6 06:A8E6: 20 4D A8  JSR sub_A84D_try_movement_on_the_left   ;
C - - - - - 0x01A8F9 06:A8E9: 4C F3 A8  JMP loc_A8F3_continue                   ;

bra_A8EC_skip:
C - - - - - 0x01A8FC 06:A8EC: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x01A8FE 06:A8EE: D0 F6     BNE bra_A8E6_invert                     ; If the enemy is dying
bra_A8F0_invert:
C - - - - - 0x01A900 06:A8F0: 20 7E A8  JSR sub_A87E_try_movement_on_the_right  ;
loc_A8F3_continue:
bra_A8F3_skip:
C D 1 - - - 0x01A903 06:A8F3: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A906 06:A8F6: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x01A909 06:A8F9: 18        CLC                                     ;
C - - - - - 0x01A90A 06:A8FA: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x01A90D 06:A8FD: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x01A90F 06:A8FF: 90 09     BCC @bra_A90A_skip                      ; If Register A < 0xDF
C - - - - - 0x01A911 06:A901: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x01A913 06:A903: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01A915 06:A905: 90 02     BCC @bra_A909_skip                      ; If Register A < 0xF8
C - - - - - 0x01A917 06:A907: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_A909_skip:
C - - - - - 0x01A919 06:A909: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_A90A_skip:
C - - - - - 0x01A91A 06:A90A: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x01A91D 06:A90D: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x01A920 06:A910: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x01A922 06:A912: 90 39     BCC bra_A94D_inc                        ; If JumpCounter < 0x18
C - - - - - 0x01A924 06:A914: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01A926 06:A916: 90 05     BCC bra_A91D_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x01A928 06:A918: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x01A92A 06:A91A: 4C C3 A7  JMP loc_A7C3_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_A91D_skip:
C - - - - - 0x01A92D 06:A91D: 85 00     STA ram_0000                                 ;
C - - - - - 0x01A92F 06:A91F: E6 00     INC ram_0000                                 ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x01A931 06:A921: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y     ;
C - - - - - 0x01A934 06:A924: F0 27     BEQ bra_A94D_inc                             ; If the collisions by Y-position doesn't exist
C - - - - - 0x01A936 06:A926: C9 02     CMP #$02                                     ; CONSTANT - a weak collision
C - - - - - 0x01A938 06:A928: F0 07     BEQ bra_A931_weak                            ; If the collision is weak
C - - - - - 0x01A93A 06:A92A: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x01A93D 06:A92D: D0 0E     BNE bra_A93D_landing                         ; If the landing is allow
C - - - - - 0x01A93F 06:A92F: F0 1C     BEQ bra_A94D_inc                             ; Always true

bra_A931_weak:
C - - - - - 0x01A941 06:A931: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x01A944 06:A934: F0 17     BEQ bra_A94D_inc                             ; If the landing is disallow
C - - - - - 0x01A946 06:A936: BD 56 03  LDA vEnemyAJumpType,X                        ;
C - - - - - 0x01A949 06:A939: C9 04     CMP #$04                                     ; CONSTANT - jump off after the squatting
C - - - - - 0x01A94B 06:A93B: F0 10     BEQ bra_A94D_inc                             ; If the enemyA jumping off
bra_A93D_landing:
C - - - - - 0x01A94D 06:A93D: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x01A950 06:A940: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x01A953 06:A943: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x01A955 06:A945: D0 3D     BNE bra_A984_start_dying                     ; If the enemy is dying
C - - - - - 0x01A957 06:A947: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; clear
C - - - - - 0x01A95A 06:A94A: 4C 39 A8  JMP loc_A839_prepare_rendering_by_frame_     ;

bra_A94D_inc:
C - - - - - 0x01A95D 06:A94D: FE 4A 03  INC vEnemyAJumpCounter,X                     ;
C - - - - - 0x01A960 06:A950: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x01A962 06:A952: DD 4A 03  CMP vEnemyAJumpCounter,X                     ;
C - - - - - 0x01A965 06:A955: B0 03     BCS @bra_A95A_skip                           ; If EnemyJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x01A967 06:A957: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; reassign
@bra_A95A_skip:
C - - - - - 0x01A96A 06:A95A: A0 0C     LDY #$0C                                     ; an input parameter - sprite_magic2 #1
C - - - - - 0x01A96C 06:A95C: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x01A96F 06:A95F: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x01A971 06:A961: D0 1E     BNE @bra_A981_skip                           ; If the enemy is dying
C - - - - - 0x01A973 06:A963: A0 08     LDY #$08                                     ; an input parameter - sprite_magic2 #2
C - - - - - 0x01A975 06:A965: AD 00 03  LDA vEnemyA                                  ;
C - - - - - 0x01A978 06:A968: C9 17     CMP #$17                                     ; CONSTANT - Karate-boy
C - - - - - 0x01A97A 06:A96A: F0 15     BEQ @bra_A981_skip                           ; If EnemyA == 0x17
C - - - - - 0x01A97C 06:A96C: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x01A97F 06:A96F: 29 04     AND #$04                                     ; CONSTANT - 'spin' status
C - - - - - 0x01A981 06:A971: D0 0E     BNE @bra_A981_skip                           ; If 'spin' status is activated
C - - - - - 0x01A983 06:A973: A0 10     LDY #$10                                     ; an input parameter - sprite_magic2 #3
C - - - - - 0x01A985 06:A975: BD 4A 03  LDA vEnemyAJumpCounter,X                     ;
C - - - - - 0x01A988 06:A978: C9 18     CMP #$18                                     ; CONSTANT - a maximum amplitude
C - - - - - 0x01A98A 06:A97A: B0 05     BCS @bra_A981_skip                           ; If JumpCounter >= 0x18
C - - - - - 0x01A98C 06:A97C: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x01A98E 06:A97E: 29 0C     AND #$0C                                     ;
C - - - - - 0x01A990 06:A980: A8        TAY                                          ; Y <~ {0x00, 0x04, 0x08, 0x0C}
@bra_A981_skip:
C - - - - - 0x01A991 06:A981: 4C C3 A7  JMP loc_A7C3_prepare_rendering               ;

; In: Register X - the enemyA number
bra_A984_start_dying:
C - - - - - 0x01A994 06:A984: A9 30     LDA #$30                              ; initializes a jump counter
C - - - - - 0x01A996 06:A986: 9D 4A 03  STA vEnemyAJumpCounter,X              ;
; In: Register X - the enemyA number
loc_A989_dying:
C - - - - - 0x01A999 06:A989: DE 4A 03  DEC vEnemyAJumpCounter,X              ; updates the counter value
C - - - - - 0x01A99C 06:A98C: D0 03     BNE @bra_A991_death_rendering         ; If JumpCounter != 0x00
C - - - - - 0x01A99E 06:A98E: 4C 7F D7  JMP loc_D77F_free_enemyA              ;

@bra_A991_death_rendering:
C - - - - - 0x01A9A1 06:A991: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x01A9A4 06:A994: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x01A9A7 06:A997: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the vJumpCounter)
C - - - - - 0x01A9A8 06:A998: B9 9F A9  LDA tbl_A99F_frames_,Y                ;
C - - - - - 0x01A9AB 06:A99B: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01A9AC 06:A99C: 4C C3 A7  JMP loc_A7C3_prepare_rendering        ;

tbl_A99F_frames_:
- D 1 - - - 0x01A9AF 06:A99F: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x01A9B0 06:A9A0: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x01A9B1 06:A9A1: 10        .byte $10   ; damage frame

sub_A9A2_try_to_change_self:
C - - - - - 0x01A9B2 06:A9A2: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x01A9B5 06:A9A5: F0 0A     BEQ @bra_A9B1_skip                 ; If EnemyAJumpCounter == 0x00
C - - - - - 0x01A9B7 06:A9A7: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x01A9BA 06:A9AA: D0 43     BNE bra_A9EF_RTS                   ; If EnemyAJumpCounter != 0x00
C - - - - - 0x01A9BC 06:A9AC: A9 00     LDA #$00                           ; clear substatus
C - - - - - 0x01A9BE 06:A9AE: 20 E3 A9  JSR sub_A9E3_change_substatus      ;
@bra_A9B1_skip:
C - - - - - 0x01A9C1 06:A9B1: 20 F0 A9  JSR sub_A9F0_try_change_direction  ;
C - - - - - 0x01A9C4 06:A9B4: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01A9C6 06:A9B6: 29 3F     AND #$3F                           ;
C - - - - - 0x01A9C8 06:A9B8: D0 35     BNE bra_A9EF_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x01A9CA 06:A9BA: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x01A9CD 06:A9BD: 6A        ROR                                ;
C - - - - - 0x01A9CE 06:A9BE: B0 2F     BCS bra_A9EF_RTS                   ; 50% chance branch
C - - - - - 0x01A9D0 06:A9C0: 29 07     AND #$07                           ; A <~ {0x00, 0x01, ..., 0x07}
C - - - - - 0x01A9D2 06:A9C2: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x01A9D5 06:A9C5: C0 17     CPY #$17                           ; CONSTANT - Karate-boy
C - - - - - 0x01A9D7 06:A9C7: F0 03     BEQ @bra_A9CC_boy                  ; If EnemyA == 0x17
C - - - - - 0x01A9D9 06:A9C9: 18        CLC                                ;
C - - - - - 0x01A9DA 06:A9CA: 69 08     ADC #$08                           ; A is {0x08, 0x09, ..., 0x0F}
@bra_A9CC_boy:
C - - - - - 0x01A9DC 06:A9CC: A8        TAY                                ; Y is {0x00, 0x01, ... , 0x0F}
C - - - - - 0x01A9DD 06:A9CD: B9 58 A6  LDA tbl_A658_status_flags,Y        ;
C - - - - - 0x01A9E0 06:A9D0: 85 05     STA ram_0005                       ;
C - - - - - 0x01A9E2 06:A9D2: F0 11     BEQ bra_A9E5_change_substatus_ex   ; If status flag == 0x00
C - - - - - 0x01A9E4 06:A9D4: C9 10     CMP #$10                           ; CONSTANT - 'squatting' status
C - - - - - 0x01A9E6 06:A9D6: F0 04     BEQ bra_A9DC_assign                ; If 'squatting' status is activated
C - - - - - 0x01A9E8 06:A9D8: A9 20     LDA #$20                           ; !(WHY?),  it looks like the developers forgot to refactor the code
C - - - - - 0x01A9EA 06:A9DA: D0 02     BNE bra_A9DE_skip                  ; Always true

; In: $0005 - an new status
bra_A9DC_assign:
C - - - - - 0x01A9EC 06:A9DC: A9 20     LDA #$20                           ; An initialize jump value for 'squatting'
bra_A9DE_skip:
C - - - - - 0x01A9EE 06:A9DE: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
C - - - - - 0x01A9F1 06:A9E1: D0 02     BNE bra_A9E5_change_substatus_ex   ; Always true

; In: Register A - a new status
sub_A9E3_change_substatus:
C - - - - - 0x01A9F3 06:A9E3: 85 05     STA ram_0005                      ;
; In: $0005 - a new status
bra_A9E5_change_substatus_ex:
C - - - - - 0x01A9F5 06:A9E5: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x01A9F8 06:A9E8: 29 C1     AND #$C1                          ;
C - - - - - 0x01A9FA 06:A9EA: 05 05     ORA ram_0005                      ;
C - - - - - 0x01A9FC 06:A9EC: 9D 20 03  STA vEnemyAStatus,X               ;
bra_A9EF_RTS:
C - - - - - 0x01A9FF 06:A9EF: 60        RTS                               ;

; In: Register X - the enemyA number
sub_A9F0_try_change_direction:
C - - - - - 0x01AA00 06:A9F0: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6BD
C - - - - - 0x01AA02 06:A9F2: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x01AA05 06:A9F5: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x01AA07 06:A9F7: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01AA0A 06:A9FA: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x01AA0C 06:A9FC: 05 05     ORA ram_0005                             ;
C - - - - - 0x01AA0E 06:A9FE: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x01AA11 06:AA01: 60        RTS                                      ;

loc_AA02_bomb_bird:
C - - J - - 0x01AA12 06:AA02: A2 01     LDX #$01                           ;
C - - - - - 0x01AA14 06:AA04: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyB number)
bra_AA06_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x01AA16 06:AA06: A6 1A     LDX vTempCounter1A                 ; puts the enemyB number
C - - - - - 0x01AA18 06:AA08: 20 69 AA  JSR sub_AA69_status_behavior       ;
C - - - - - 0x01AA1B 06:AA0B: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01AA1E 06:AA0E: C9 E0     CMP #$E0                           ;
C - - - - - 0x01AA20 06:AA10: B0 34     BCS bra_AA46_next                  ; If vEnemyBStatus >= 0xE0
C - - - - - 0x01AA22 06:AA12: C9 C0     CMP #$C0                           ;
C - - - - - 0x01AA24 06:AA14: 90 30     BCC bra_AA46_next                  ; If vEnemyBStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01AA26 06:AA16: BD 68 03  LDA vEnemyBPosY,X                  ;
C - - - - - 0x01AA29 06:AA19: 85 AD     STA vEnemyHitBoxY                  ; <~ posY
C - - - - - 0x01AA2B 06:AA1B: BD 6E 03  LDA vEnemyBScreenPosX,X            ;
C - - - - - 0x01AA2E 06:AA1E: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x01AA30 06:AA20: A9 10     LDA #$10                           ;
C - - - - - 0x01AA32 06:AA22: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x01AA34 06:AA24: A9 06     LDA #$06                           ;
C - - - - - 0x01AA36 06:AA26: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x01AA38 06:AA28: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x01AA3A 06:AA2A: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x01AA3C 06:AA2C: F0 0B     BEQ bra_AA39_check_bullets         ; If the character isn't Goemon
C - - - - - 0x01AA3E 06:AA2E: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x01AA41 06:AA31: 90 10     BCC bra_AA43_no_intersect          ; If the intersect doesn't exist
C - - - - - 0x01AA43 06:AA33: 20 57 AA  JSR sub_AA57_hit                   ;
C - - - - - 0x01AA46 06:AA36: 4C 46 AA  JMP loc_AA46_next                  ;

bra_AA39_check_bullets:
C - - - - - 0x01AA49 06:AA39: A6 7A     LDX vBulletCount                   ; set loop counter
@bra_AA3B_loop:                                                            ; loop by x
C - - - - - 0x01AA4B 06:AA3B: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet ;
C - - - - - 0x01AA4E 06:AA3E: B0 0D     BCS bra_AA4D_bullet_hit            ; If the intersect is exist
C - - - - - 0x01AA50 06:AA40: CA        DEX                                ; decrement loop counter
C - - - - - 0x01AA51 06:AA41: 10 F8     BPL @bra_AA3B_loop                 ; If Register X >= 0x00
bra_AA43_no_intersect:
C - - - - - 0x01AA53 06:AA43: 20 62 D5  JSR sub_D562_has_character_damage  ;
bra_AA46_next:
loc_AA46_next:
C D 1 - - - 0x01AA56 06:AA46: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x01AA58 06:AA48: 10 BC     BPL bra_AA06_loop                  ; If vTempCounter1A >= 0
C - - - - - 0x01AA5A 06:AA4A: 4C 32 AB  JMP loc_AB32_projectile            ;

; In: Register X - the bullet number
bra_AA4D_bullet_hit:
C - - - - - 0x01AA5D 06:AA4D: A9 00     LDA #$00                           ;
C - - - - - 0x01AA5F 06:AA4F: 95 8F     STA vBulletStatus,X                ; clear
C - - - - - 0x01AA61 06:AA51: 20 57 AA  JSR sub_AA57_hit                   ;
C - - - - - 0x01AA64 06:AA54: 4C 46 AA  JMP loc_AA46_next                  ;

sub_AA57_hit:
C - - - - - 0x01AA67 06:AA57: A6 1A     LDX vTempCounter1A            ; puts the enemyB number
C - - - - - 0x01AA69 06:AA59: BD 5C 03  LDA vEnemyBStatus,X           ;
C - - - - - 0x01AA6C 06:AA5C: 29 C1     AND #$C1                      ; clear substate
C - - - - - 0x01AA6E 06:AA5E: 09 20     ORA #$20                      ; CONSTANT - 'the dying' status
C - - - - - 0x01AA70 06:AA60: 9D 5C 03  STA vEnemyBStatus,X           ;
C - - - - - 0x01AA73 06:AA63: A9 08     LDA #$08                      ;
C - - - - - 0x01AA75 06:AA65: 9D 86 03  STA vEnemyBJumpCounter,X      ; assign a dying jump counter
bra_AA68_RTS:
C - - - - - 0x01AA78 06:AA68: 60        RTS                           ;

; In: Register X - the enemyB number
sub_AA69_status_behavior:
C - - - - - 0x01AA79 06:AA69: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x01AA7C 06:AA6C: 10 FA     BPL bra_AA68_RTS                 ; If the status isn't used
C - - - - - 0x01AA7E 06:AA6E: 29 20     AND #$20                         ; CONSTANT - 'the dying' status
C - - - - - 0x01AA80 06:AA70: D0 06     BNE bra_AA78_prepare_rendering   ; If 'the dying' status is activated
C - - - - - 0x01AA82 06:AA72: 20 F3 AA  JSR sub_AAF3_try_to_drop_bomb    ;
C - - - - - 0x01AA85 06:AA75: 20 B9 AA  JSR sub_AAB9_move_and_get_offset ;
; In: Register Y - sprite_magic2 (The offset by the address)
bra_AA78_prepare_rendering:
C - - - - - 0x01AA88 06:AA78: BD 74 03  LDA vEnemyBPosXLow,X             ;
C - - - - - 0x01AA8B 06:AA7B: 85 00     STA ram_0000                     ; prepares the 1st parameter
C - - - - - 0x01AA8D 06:AA7D: BD 7A 03  LDA vEnemyBPosXHigh,X            ;
C - - - - - 0x01AA90 06:AA80: 85 01     STA ram_0001                     ; prepares the 2nd parameter
C - - - - - 0x01AA92 06:AA82: 20 7B D6  JSR sub_D67B_out_of_sight        ;
C - - - - - 0x01AA95 06:AA85: 90 03     BCC bra_AA8A_skip                ; If the enemy is visible
C - - - - - 0x01AA97 06:AA87: 4C 73 D8  JMP loc_D873_free_enemyB         ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AA8A_skip:
C - - - - - 0x01AA9A 06:AA8A: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x01AA9D 06:AA8D: 90 03     BCC bra_AA92_skip               ; If the enemy is on the screen
C - - - - - 0x01AA9F 06:AA8F: 4C 4D D8  JMP loc_D84D_enemyB_off_screen  ;

; In: Register X - the enemyB number
; In: Register Y - sprite_magic2 (The offset by the address)
bra_AA92_skip:
C - - - - - 0x01AAA2 06:AA92: 20 31 D8  JSR sub_D831_enemyB_on_screen   ;
C - - - - - 0x01AAA5 06:AA95: BD 5C 03  LDA vEnemyBStatus,X             ;
C - - - - - 0x01AAA8 06:AA98: 29 20     AND #$20                        ; CONSTANT - 'the dying' status
C - - - - - 0x01AAAA 06:AA9A: F0 03     BEQ bra_AA9F_add_sprite         ; If 'the dying' status isn't activated
C - - - - - 0x01AAAC 06:AA9C: 4C AE AA  JMP loc_AAAE_dying              ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AA9F_add_sprite:
loc_AA9F_add_sprite:
C D 1 - - - 0x01AAAF 06:AA9F: 98        TYA                            ;
C - - - - - 0x01AAB0 06:AAA0: 18        CLC                            ;
C - - - - - 0x01AAB1 06:AAA1: 6D 06 03  ADC vEnemyBSpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x01AAB4 06:AAA4: 85 01     STA ram_0001                   ;
C - - - - - 0x01AAB6 06:AAA6: AD 07 03  LDA vEnemyBSpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x01AAB9 06:AAA9: 85 02     STA ram_0002                   ;
C - - - - - 0x01AABB 06:AAAB: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

loc_AAAE_dying:
C D 1 - - - 0x01AABE 06:AAAE: DE 86 03  DEC vEnemyBJumpCounter,X       ;
C - - - - - 0x01AAC1 06:AAB1: D0 03     BNE bra_AAB6_add_flash         ; If vJumpCounter != 0x00
C - - - - - 0x01AAC3 06:AAB3: 4C 73 D8  JMP loc_D873_free_enemyB       ;

bra_AAB6_add_flash:
C - - - - - 0x01AAC6 06:AAB6: 4C 7D D9  JMP loc_D97D_add_flash_sprite_magic ;

sub_AAB9_move_and_get_offset:
C - - - - - 0x01AAC9 06:AAB9: 20 DF AA  JSR sub_AADF_horizontal_movement   ;
C - - - - - 0x01AACC 06:AABC: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01AACF 06:AABF: 29 02     AND #$02                           ; CONSTANT - the 'fast mode' status
C - - - - - 0x01AAD1 06:AAC1: F0 03     BEQ bra_AAC6_skip                  ; If the 'fast mode' status isn't activated
C - - - - - 0x01AAD3 06:AAC3: 20 DF AA  JSR sub_AADF_horizontal_movement   ;
bra_AAC6_skip:
sub_AAC6_get_offset_by_frame_:
C - - - - - 0x01AAD6 06:AAC6: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01AAD8 06:AAC8: 29 07     AND #$07                           ;
C - - - - - 0x01AADA 06:AACA: D0 03     BNE @bra_AACF_skip                 ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0) (87.5% chance)
C - - - - - 0x01AADC 06:AACC: FE 80 03  INC vEnemyBFrame_Counter,X         ;
@bra_AACF_skip:
C - - - - - 0x01AADF 06:AACF: BD 80 03  LDA vEnemyBFrame_Counter,X         ;
C - - - - - 0x01AAE2 06:AAD2: C9 03     CMP #$03                           ; CONSTANT - Max value
C - - - - - 0x01AAE4 06:AAD4: 90 05     BCC @bra_AADB_acceptable           ; If vFrameCounter < 0x03
C - - - - - 0x01AAE6 06:AAD6: A9 00     LDA #$00                           ;
C - - - - - 0x01AAE8 06:AAD8: 9D 80 03  STA vEnemyBFrame_Counter,X         ; reset a counter
@bra_AADB_acceptable:
C - - - - - 0x01AAEB 06:AADB: 0A        ASL                                ;
C - - - - - 0x01AAEC 06:AADC: 0A        ASL                                ;
C - - - - - 0x01AAED 06:AADD: A8        TAY                                ; Y <~ 4 * vFrameCounter
C - - - - - 0x01AAEE 06:AADE: 60        RTS                                ;

; In: Register X - the enemyB number
sub_AADF_horizontal_movement:
C - - - - - 0x01AAEF 06:AADF: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01AAF2 06:AAE2: 6A        ROR                                   ;
C - - - - - 0x01AAF3 06:AAE3: 90 08     BCC bra_AAED_right                    ; If the enemy is looking to the right
C - - - - - 0x01AAF5 06:AAE5: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01AAF7 06:AAE7: 6A        ROR                                   ;
C - - - - - 0x01AAF8 06:AAE8: 90 47     BCC bra_AB31_RTS                      ; Branch if vLowCounter is multiple of 2 (50% chance)
C - - - - - 0x01AAFA 06:AAEA: 4C 09 D8  JMP loc_D809_short_dec_EnemyBPosXLow  ;

bra_AAED_right:
C - - - - - 0x01AAFD 06:AAED: 20 28 D8  JSR sub_D828_short_inc_EnemyBPosXLow  ;
C - - - - - 0x01AB00 06:AAF0: 4C 28 D8  JMP loc_D828_short_inc_EnemyBPosXLow  ;

; In: Register X - the enemyB number
sub_AAF3_try_to_drop_bomb:
C - - - - - 0x01AB03 06:AAF3: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01AB06 06:AAF6: 29 F2     AND #$F2                           ;
C - - - - - 0x01AB08 06:AAF8: C9 C0     CMP #$C0                           ;
C - - - - - 0x01AB0A 06:AAFA: D0 35     BNE bra_AB31_RTS                   ; If the 'dying' or 'fast mode' statuses are activated
C - - - - - 0x01AB0C 06:AAFC: BD 74 03  LDA vEnemyBPosXLow,X               ;
C - - - - - 0x01AB0F 06:AAFF: 38        SEC                                ;
C - - - - - 0x01AB10 06:AB00: E5 66     SBC vLowChrPosX                    ;
C - - - - - 0x01AB12 06:AB02: 85 12     STA vCacheRam_12                   ; $0012 <~ vEnemyPosX - vChrPosX (low)
C - - - - - 0x01AB14 06:AB04: BD 7A 03  LDA vEnemyBPosXHigh,X              ;
C - - - - - 0x01AB17 06:AB07: E5 68     SBC vNoScreen                      ;
C - - - - - 0x01AB19 06:AB09: D0 26     BNE bra_AB31_RTS                   ; vEnemyPosX != vChrPosX (+1 with overflow) (high)
C - - - - - 0x01AB1B 06:AB0B: A5 12     LDA vCacheRam_12                   ;
C - - - - - 0x01AB1D 06:AB0D: C9 40     CMP #$40                           ;
C - - - - - 0x01AB1F 06:AB0F: B0 20     BCS bra_AB31_RTS                   ; If vEnemyPosX - vChrPosX (low) >= 0x40
C - - - - - 0x01AB21 06:AB11: C9 20     CMP #$20                           ;
C - - - - - 0x01AB23 06:AB13: 90 1C     BCC bra_AB31_RTS                   ; If vEnemyPosX - vChrPosX (low) < 0x20
C - - - - - 0x01AB25 06:AB15: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x01AB28 06:AB18: 29 03     AND #$03                           ;
C - - - - - 0x01AB2A 06:AB1A: D0 15     BNE bra_AB31_RTS                   ; Branch in 3/4 cases
C - - - - - 0x01AB2C 06:AB1C: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x01AB2F 06:AB1F: 09 02     ORA #$02                           ; CONSTANT - the 'fast mode' status | the 'falling' status
C - - - - - 0x01AB31 06:AB21: 9D 5C 03  STA vEnemyBStatus,X                ;
C - - - - - 0x01AB34 06:AB24: 9D 5E 03  STA vEnemyBBombStatus,X            ;
C - - - - - 0x01AB37 06:AB27: A9 18     LDA #$18                           ; CONSTANT - a maximum amplitude
C - - - - - 0x01AB39 06:AB29: 9D 88 03  STA vEnemyBProjectileJumpCounter,X ; Initializes a jump counter
C - - - - - 0x01AB3C 06:AB2C: A9 3F     LDA #$3F                           ; CONSTANT - The sound of a bird releasing a bomb
C - - - - - 0x01AB3E 06:AB2E: 4C 20 C4  JMP loc_C420_add_sound_effect      ;

bra_AB31_RTS:
C - - - - - 0x01AB41 06:AB31: 60        RTS                                ;

loc_AB32_projectile:
C D 1 - - - 0x01AB42 06:AB32: A2 03     LDX #$03                           ;
C - - - - - 0x01AB44 06:AB34: 86 1A     STX vTempCounter1A                 ; set loop counter (the projectile number)
bra_AB36_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x01AB46 06:AB36: A6 1A     LDX vTempCounter1A                 ; puts the projectile number (0x02 or 0x03)
C - - - - - 0x01AB48 06:AB38: BD 5A 03  LDA vEnemyBStatus - 2,X            ;
C - - - - - 0x01AB4B 06:AB3B: 10 23     BPL bra_AB60_next                  ; If the bird status isn't used
C - - - - - 0x01AB4D 06:AB3D: 20 83 AB  JSR sub_AB83_status_behavior       ;
C - - - - - 0x01AB50 06:AB40: BD 5C 03  LDA vEnemyBBombStatus - 2,X        ;
C - - - - - 0x01AB53 06:AB43: C9 E0     CMP #$E0                           ;
C - - - - - 0x01AB55 06:AB45: B0 19     BCS bra_AB60_next                  ; If vEnemyBBombStatus >= 0xE0
C - - - - - 0x01AB57 06:AB47: C9 C0     CMP #$C0                           ;
C - - - - - 0x01AB59 06:AB49: 90 15     BCC bra_AB60_next                  ; If vEnemyBBombStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01AB5B 06:AB4B: BD 68 03  LDA vEnemyBPosY,X                  ;
C - - - - - 0x01AB5E 06:AB4E: 85 AD     STA vEnemyHitBoxY                  ; <~ posY
C - - - - - 0x01AB60 06:AB50: BD 6E 03  LDA vEnemyBScreenPosX,X            ;
C - - - - - 0x01AB63 06:AB53: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x01AB65 06:AB55: A9 06     LDA #$06                           ;
C - - - - - 0x01AB67 06:AB57: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x01AB69 06:AB59: A9 03     LDA #$03                           ;
C - - - - - 0x01AB6B 06:AB5B: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x01AB6D 06:AB5D: 20 62 D5  JSR sub_D562_has_character_damage  ;
bra_AB60_next:
C - - - - - 0x01AB70 06:AB60: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x01AB72 06:AB62: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x01AB74 06:AB64: E0 01     CPX #$01                           ;
C - - - - - 0x01AB76 06:AB66: D0 CE     BNE bra_AB36_loop                  ; If Register X != 0x01
bra_AB68_RTS:
C - - - - - 0x01AB78 06:AB68: 60        RTS                                ;

loc_AB69_free_projectile:
C D 1 - - - 0x01AB79 06:AB69: A6 1A     LDX vTempCounter1A                 ; puts the projectile number (0x02 or 0x03)
C - - - - - 0x01AB7B 06:AB6B: A9 00     LDA #$00                           ;
C - - - - - 0x01AB7D 06:AB6D: 9D 5C 03  STA vEnemyBBombStatus - 2,X        ; clear a status
C - - - - - 0x01AB80 06:AB70: 60        RTS                                ;

sub_AB71_hit:
C - - - - - 0x01AB81 06:AB71: A6 1A     LDX vTempCounter1A                      ; puts the projectile number (0x02 or 0x03)
C - - - - - 0x01AB83 06:AB73: BD 5C 03  LDA vEnemyBBombStatus - 2,X             ;
C - - - - - 0x01AB86 06:AB76: 29 C0     AND #$C0                                ; clear substate
C - - - - - 0x01AB88 06:AB78: 09 20     ORA #$20                                ; CONSTANT - 'the dying' status
C - - - - - 0x01AB8A 06:AB7A: 9D 5C 03  STA vEnemyBBombStatus - 2,X             ;
C - - - - - 0x01AB8D 06:AB7D: A9 08     LDA #$08                                ;
C - - - - - 0x01AB8F 06:AB7F: 9D 86 03  STA vEnemyBProjectileJumpCounter - 2,X  ; Initializes a jump counter
C - - - - - 0x01AB92 06:AB82: 60        RTS                                     ;

; In: Register X - the projectile number (0x02 or 0x03)
sub_AB83_status_behavior:
C - - - - - 0x01AB93 06:AB83: BD 5C 03  LDA vEnemyBBombStatus - 2,X               ;
C - - - - - 0x01AB96 06:AB86: 10 E0     BPL bra_AB68_RTS                          ; If the status isn't used
C - - - - - 0x01AB98 06:AB88: 4A        LSR                                       ;
C - - - - - 0x01AB99 06:AB89: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x01AB9C 06:AB8C: D3 AB     .addr loc_ABD4_falling - 1           ; 0x02
- D - - - - 0x01AB9E 06:AB8E: 99 AB     .addr loc_AB9A_main - 1              ; 0x04
- D - - - - 0x01ABA0 06:AB90: 99 AB     .addr loc_AB9A_main - 1              ; 0x08
- D - - - - 0x01ABA2 06:AB92: 99 AB     .addr loc_AB9A_main - 1              ; 0x10
- D 1 - I - 0x01ABA4 06:AB94: 9E AB     .addr loc_AB9F_prepare_rendering - 1 ; 0x20
- D 1 - I - 0x01ABA6 06:AB96: 99 AB     .addr loc_AB9A_main - 1              ; 0x40
- D 1 - I - 0x01ABA8 06:AB98: 99 AB     .addr loc_AB9A_main - 1              ; 0x80

; In: Register X - the projectile number (0x02 or 0x03)
loc_AB9A_main:
C - - - - - 0x01ABAA 06:AB9A: 20 DF AA  JSR sub_AADF_horizontal_movement      ;
C - - - - - 0x01ABAD 06:AB9D: A0 0C     LDY #$0C                              ; prepares the sprite_magic2 (The offset by the address), by default
; In: Register X - the projectile number (0x02 or 0x03)
; In: Register Y - sprite_magic2 (The offset by the address)
loc_AB9F_prepare_rendering:
C D 1 - - - 0x01ABAF 06:AB9F: BD 74 03  LDA vEnemyBProjectilePosXLow - 2,X    ;
C - - - - - 0x01ABB2 06:ABA2: 85 00     STA ram_0000                          ; prepares the 1st parameter
C - - - - - 0x01ABB4 06:ABA4: BD 7A 03  LDA vEnemyBProjectilePosXHigh - 2,X   ;
C - - - - - 0x01ABB7 06:ABA7: 85 01     STA ram_0001                          ; prepares the 2nd parameter
C - - - - - 0x01ABB9 06:ABA9: 20 7B D6  JSR sub_D67B_out_of_sight             ;
C - - - - - 0x01ABBC 06:ABAC: 90 03     BCC bra_ABB1_skip                     ; If the enemy is visible
C - - - - - 0x01ABBE 06:ABAE: 4C 69 AB  JMP loc_AB69_free_projectile          ;

bra_ABB1_skip:
C - - - - - 0x01ABC1 06:ABB1: 20 AC D6  JSR sub_D6AC_out_of_screen            ;
C - - - - - 0x01ABC4 06:ABB4: 90 03     BCC bra_ABB9_skip                     ; If the enemy is on the screen
C - - - - - 0x01ABC6 06:ABB6: 4C 4D D8  JMP loc_D84D_enemyB_off_screen        ;

; In: Register X - the projectile number (0x02 or 0x03)
bra_ABB9_skip:
C - - - - - 0x01ABC9 06:ABB9: 20 31 D8  JSR sub_D831_enemyB_on_screen         ;
C - - - - - 0x01ABCC 06:ABBC: BD 5C 03  LDA vEnemyBBombStatus - 2,X           ;
C - - - - - 0x01ABCF 06:ABBF: 29 20     AND #$20                              ; CONSTANT - 'the dying' status
C - - - - - 0x01ABD1 06:ABC1: D0 03     BNE bra_ABC6_dying                    ; If the enemy is dying
C - - - - - 0x01ABD3 06:ABC3: 4C 9F AA  JMP loc_AA9F_add_sprite               ;

; In: Register X - the projectile number (0x02 or 0x03)
bra_ABC6_dying:
C - - - - - 0x01ABD6 06:ABC6: DE 86 03  DEC vEnemyBProjectileJumpCounter - 2,X  ;
C - - - - - 0x01ABD9 06:ABC9: D0 03     BNE bra_ABCE_add_flash                  ; If vJumpCounter != 0x00
C - - - - - 0x01ABDB 06:ABCB: 4C 69 AB  JMP loc_AB69_free_projectile            ;

; In: Register X - the projectile number (0x02 or 0x03)
bra_ABCE_add_flash:
C - - - - - 0x01ABDE 06:ABCE: BD 86 03  LDA vEnemyBProjectileJumpCounter - 2,X  ; prepares the input parameter
C - - - - - 0x01ABE1 06:ABD1: 4C 9F D9  JMP loc_D99F_add_flash_sprite           ;

; In: Register X - the projectile number (0x02 or 0x03)
loc_ABD4_falling:
C - - - - - 0x01ABE4 06:ABD4: BC 86 03  LDY vEnemyBProjectileJumpCounter - 2,X  ;
C - - - - - 0x01ABE7 06:ABD7: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x01ABEA 06:ABDA: 18        CLC                                     ;
C - - - - - 0x01ABEB 06:ABDB: 7D 68 03  ADC vEnemyBProjectilePosY - 2,X         ;
C - - - - - 0x01ABEE 06:ABDE: 9D 68 03  STA vEnemyBProjectilePosY - 2,X         ; PosY <~ PosY + the offset
C - - - - - 0x01ABF1 06:ABE1: BD 68 03  LDA vEnemyBProjectilePosY - 2,X         ;
C - - - - - 0x01ABF4 06:ABE4: C9 EF     CMP #$EF                                ; CONSTANT - Limit for Y-position
C - - - - - 0x01ABF6 06:ABE6: 90 03     BCC bra_ABEB_skip                       ; If vPosY < 0xEF
C - - - - - 0x01ABF8 06:ABE8: 4C 69 AB  JMP loc_AB69_free_projectile            ;

; In: Register X - the projectile number (0x02 or 0x03)
bra_ABEB_skip:
C - - - - - 0x01ABFB 06:ABEB: 20 4A D9  JSR sub_D94A_init_absolute_enemyB_positions  ;
C - - - - - 0x01ABFE 06:ABEE: 20 E5 D2  JSR sub_D2E5_get_collision_value             ;
C - - - - - 0x01AC01 06:ABF1: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01AC03 06:ABF3: D0 03     BNE @bra_ABF8_inc                            ; If the strong collision doesn't exist
C - - - - - 0x01AC05 06:ABF5: 20 71 AB  JSR sub_AB71_hit                             ;
@bra_ABF8_inc:
C - - - - - 0x01AC08 06:ABF8: FE 86 03  INC vEnemyBProjectileJumpCounter - 2,X       ;
C - - - - - 0x01AC0B 06:ABFB: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x01AC0D 06:ABFD: DD 86 03  CMP vEnemyBProjectileJumpCounter - 2,X       ;
C - - - - - 0x01AC10 06:AC00: B0 03     BCS @bra_AC05_skip                           ; If 0x2F >= jumpCounter, i.e. less than maximum
C - - - - - 0x01AC12 06:AC02: 9D 86 03  STA vEnemyBProjectileJumpCounter - 2,X       ;
@bra_AC05_skip:
C - - - - - 0x01AC15 06:AC05: A0 0C     LDY #$0C                                     ; prepares the sprite_magic2 (The offset by the address), the falling frame
C - - - - - 0x01AC17 06:AC07: 4C 9F AB  JMP loc_AB9F_prepare_rendering               ;

loc_AC0A_bird:
C - - J - - 0x01AC1A 06:AC0A: A2 01     LDX #$01                            ;
C - - - - - 0x01AC1C 06:AC0C: 86 1A     STX vTempCounter1A                  ; set loop counter (the enemyB number)
bra_AC0E_loop:                                                              ; loop by vTempCounter1A (2 times)
C - - - - - 0x01AC1E 06:AC0E: A6 1A     LDX vTempCounter1A                  ; puts the enemyB number
C - - - - - 0x01AC20 06:AC10: 20 5D AC  JSR sub_AC5D_status_behavior        ;
C - - - - - 0x01AC23 06:AC13: BD 5C 03  LDA vEnemyBStatus,X                 ;
C - - - - - 0x01AC26 06:AC16: C9 E0     CMP #$E0                            ;
C - - - - - 0x01AC28 06:AC18: B0 34     BCS bra_AC4E_next                   ; If EnemyAStatus >= 0xE0
C - - - - - 0x01AC2A 06:AC1A: C9 C0     CMP #$C0                            ;
C - - - - - 0x01AC2C 06:AC1C: 90 30     BCC bra_AC4E_next                   ; If EnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01AC2E 06:AC1E: BD 68 03  LDA vEnemyBPosY,X                   ;
C - - - - - 0x01AC31 06:AC21: 85 AD     STA vEnemyHitBoxY                   ; <~ posY
C - - - - - 0x01AC33 06:AC23: BD 6E 03  LDA vEnemyBScreenPosX,X             ;
C - - - - - 0x01AC36 06:AC26: 85 AE     STA vEnemyHitBoxX                   ; <~ posX
C - - - - - 0x01AC38 06:AC28: A9 16     LDA #$16                            ;
C - - - - - 0x01AC3A 06:AC2A: 85 AF     STA vEnemyHitBoxH                   ; <~ hitBoxH
C - - - - - 0x01AC3C 06:AC2C: A9 06     LDA #$06                            ;
C - - - - - 0x01AC3E 06:AC2E: 85 B0     STA vEnemyHitBoxW                   ; <~ hitBoxW
C - - - - - 0x01AC40 06:AC30: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x01AC42 06:AC32: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x01AC44 06:AC34: F0 0B     BEQ bra_AC41_check_bullets          ; If the character isn't Goemon
C - - - - - 0x01AC46 06:AC36: 20 06 D6  JSR sub_D606_have_intersect_sword   ;
C - - - - - 0x01AC49 06:AC39: 90 10     BCC bra_AC4B_no_intersect           ; If the intersect doesn't exist
C - - - - - 0x01AC4B 06:AC3B: 20 57 AA  JSR sub_AA57_hit                    ;
C - - - - - 0x01AC4E 06:AC3E: 4C 4E AC  JMP loc_AC4E_next                   ;

bra_AC41_check_bullets:
C - - - - - 0x01AC51 06:AC41: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_AC43_loop:
C - - - - - 0x01AC53 06:AC43: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x01AC56 06:AC46: B0 0B     BCS bra_AC53_bullet_hit             ; If the intersect is exist
C - - - - - 0x01AC58 06:AC48: CA        DEX                                 ; decrement loop counter
C - - - - - 0x01AC59 06:AC49: 10 F8     BPL @bra_AC43_loop                  ; If Register X >= 0x00
bra_AC4B_no_intersect:
C - - - - - 0x01AC5B 06:AC4B: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_AC4E_next:
loc_AC4E_next:
C D 1 - - - 0x01AC5E 06:AC4E: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x01AC60 06:AC50: 10 BC     BPL bra_AC0E_loop                   ; If vTempCounter1A >= 0
bra_AC52_RTS:
C - - - - - 0x01AC62 06:AC52: 60        RTS                                 ;

; In: Register X - the enemyB number
bra_AC53_bullet_hit:
C - - - - - 0x01AC63 06:AC53: A9 00     LDA #$00                      ;
C - - - - - 0x01AC65 06:AC55: 95 8F     STA vBulletStatus,X           ; clear
C - - - - - 0x01AC67 06:AC57: 20 57 AA  JSR sub_AA57_hit              ;
C - - - - - 0x01AC6A 06:AC5A: 4C 4E AC  JMP loc_AC4E_next             ;

; In: Register X - the enemyB number
sub_AC5D_status_behavior:
C - - - - - 0x01AC6D 06:AC5D: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01AC70 06:AC60: 10 F0     BPL bra_AC52_RTS                      ; If the status isn't used
C - - - - - 0x01AC72 06:AC62: 29 20     AND #$20                              ; CONSTANT - 'the dying' status
C - - - - - 0x01AC74 06:AC64: D0 06     BNE @bra_AC6C_prepare_rendering       ; If the enemy is dying
C - - - - - 0x01AC76 06:AC66: 20 DB AC  JSR sub_ACDB_try_to_change_self       ;
C - - - - - 0x01AC79 06:AC69: 20 A6 AC  JSR sub_ACA6_try_movements            ;
; In: Register Y - sprite_magic2 (The offset by the address)
@bra_AC6C_prepare_rendering:
C - - - - - 0x01AC7C 06:AC6C: BD 74 03  LDA vEnemyBPosXLow,X                  ;
C - - - - - 0x01AC7F 06:AC6F: 85 00     STA ram_0000                          ; prepares the 1st parameter
C - - - - - 0x01AC81 06:AC71: BD 7A 03  LDA vEnemyBPosXHigh,X                 ;
C - - - - - 0x01AC84 06:AC74: 85 01     STA ram_0001                          ; prepares the 2nd parameter
C - - - - - 0x01AC86 06:AC76: 20 7B D6  JSR sub_D67B_out_of_sight             ;
C - - - - - 0x01AC89 06:AC79: 90 03     BCC bra_AC7E_skip                     ; If the enemy is visible
C - - - - - 0x01AC8B 06:AC7B: 4C 73 D8  JMP loc_D873_free_enemyB              ;

bra_AC7E_skip:
C - - - - - 0x01AC8E 06:AC7E: 20 AC D6  JSR sub_D6AC_out_of_screen            ;
C - - - - - 0x01AC91 06:AC81: 90 03     BCC bra_AC86_skip                     ; If the enemy is on the screen
C - - - - - 0x01AC93 06:AC83: 4C 4D D8  JMP sub_D84D_enemyB_off_screen        ;

; In: Register X - the enemyB number
bra_AC86_skip:
C - - - - - 0x01AC96 06:AC86: 20 31 D8  JSR sub_D831_enemyB_on_screen         ;
C - - - - - 0x01AC99 06:AC89: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01AC9C 06:AC8C: 29 20     AND #$20                              ; CONSTANT - 'the dying' status
C - - - - - 0x01AC9E 06:AC8E: D0 08     BNE bra_AC98_dying                    ; If the enemy is dying
C - - - - - 0x01ACA0 06:AC90: 20 C6 AA  JSR sub_AAC6_get_offset_by_frame_     ;
C - - - - - 0x01ACA3 06:AC93: 4A        LSR                                   ; * 0.5
C - - - - - 0x01ACA4 06:AC94: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01ACA5 06:AC95: 4C 9F AA  JMP loc_AA9F_add_sprite               ;

; In: Register X - the enemyB number
bra_AC98_dying:
C - - - - - 0x01ACA8 06:AC98: DE 86 03  DEC vEnemyBJumpCounter,X              ;
C - - - - - 0x01ACAB 06:AC9B: D0 03     BNE bra_ACA0_add_flash                ; If vJumpCounter != 0x00
C - - - - - 0x01ACAD 06:AC9D: 4C 73 D8  JMP loc_D873_free_enemyB              ;

; In: Register X - the enemyB number
bra_ACA0_add_flash:
C - - - - - 0x01ACB0 06:ACA0: BD 86 03  LDA vEnemyBJumpCounter,X              ; prepares the input parameter
C - - - - - 0x01ACB3 06:ACA3: 4C 9F D9  JMP loc_D99F_add_flash_sprite         ;

; In: Register X - the enemyB number
; Out: Register Y - sprite_magic2 (The offset by the address)
sub_ACA6_try_movements:
C - - - - - 0x01ACB6 06:ACA6: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01ACB8 06:ACA8: 29 04     AND #$04                              ;
C - - - - - 0x01ACBA 06:ACAA: D0 0D     BNE bra_ACB9_skip                     ; Branch every 4 times after 4
C - - - - - 0x01ACBC 06:ACAC: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01ACBE 06:ACAE: 30 06     BMI bra_ACB6_inc                      ; Branch every 128 times after 128
C - - - - - 0x01ACC0 06:ACB0: DE 68 03  DEC vEnemyBPosY,X                     ; the bird moves up
C - - - - - 0x01ACC3 06:ACB3: 4C B9 AC  JMP loc_ACB9_continue                 ;

bra_ACB6_inc:
C - - - - - 0x01ACC6 06:ACB6: FE 68 03  INC vEnemyBPosY,X                     ; the bird moves down
bra_ACB9_skip:
loc_ACB9_continue:
C D 1 - - - 0x01ACC9 06:ACB9: A0 00     LDY #$00                              ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01ACCB 06:ACBB: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01ACCE 06:ACBE: 29 0C     AND #$0C                              ; CONSTANT - 'vertical or revert direction'
C - - - - - 0x01ACD0 06:ACC0: C9 04     CMP #$04                              ; CONSTANT - 'revert direction'
C - - - - - 0x01ACD2 06:ACC2: F0 11     BEQ @bra_ACD5_revert                  ; If 'revert direction' status is activated
C - - - - - 0x01ACD4 06:ACC4: C9 08     CMP #$08                              ; CONSTANT - 'vertical direction'
C - - - - - 0x01ACD6 06:ACC6: F0 12     BEQ @bra_ACDA_RTS                     ; If 'vertical direction' status is activated
C - - - - - 0x01ACD8 06:ACC8: A5 2C     LDA vLowCounter                       ;
C - - - - - 0x01ACDA 06:ACCA: 29 03     AND #$03                              ;
C - - - - - 0x01ACDC 06:ACCC: D0 03     BNE @bra_ACD1_skip                    ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x01ACDE 06:ACCE: 20 09 D8  JSR sub_D809_short_dec_EnemyBPosXLow  ;
@bra_ACD1_skip:
C - - - - - 0x01ACE1 06:ACD1: A0 02     LDY #$02                              ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x01ACE3 06:ACD3: D0 05     BNE @bra_ACDA_RTS                     ; Always true

@bra_ACD5_revert:
C - - - - - 0x01ACE5 06:ACD5: 20 28 D8  JSR sub_D828_short_inc_EnemyBPosXLow  ;
C - - - - - 0x01ACE8 06:ACD8: A0 04     LDY #$04                              ; prepares the sprite_magic2 (The offset by the address)
@bra_ACDA_RTS:
C - - - - - 0x01ACEA 06:ACDA: 60        RTS                                   ;

; In: Register X - the enemyB number
sub_ACDB_try_to_change_self:
C - - - - - 0x01ACEB 06:ACDB: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01ACEE 06:ACDE: 29 20     AND #$20                              ; CONSTANT - 'the dying' status
C - - - - - 0x01ACF0 06:ACE0: D0 1D     BNE @bra_ACFF_RTS                     ; If the enemy is dying
C - - - - - 0x01ACF2 06:ACE2: DE 86 03  DEC vEnemyBJumpCounter,X              ;
C - - - - - 0x01ACF5 06:ACE5: D0 18     BNE @bra_ACFF_RTS                     ; If vJumpCounter != 0x00
C - - - - - 0x01ACF7 06:ACE7: 20 64 D0  JSR sub_D064_generate_rng             ;
C - - - - - 0x01ACFA 06:ACEA: 29 03     AND #$03                              ;
C - - - - - 0x01ACFC 06:ACEC: 0A        ASL                                   ;
C - - - - - 0x01ACFD 06:ACED: A8        TAY                                   ; Y = {0x00, 0x02, 0x04, 0x06}
C - - - - - 0x01ACFE 06:ACEE: BD 5C 03  LDA vEnemyBStatus,X                   ;
C - - - - - 0x01AD01 06:ACF1: 29 C1     AND #$C1                              ; clear substate
C - - - - - 0x01AD03 06:ACF3: 19 00 AD  ORA tbl_AD00_status_and_counter,Y     ;
C - - - - - 0x01AD06 06:ACF6: 9D 5C 03  STA vEnemyBStatus,X                   ; new state
C - - - - - 0x01AD09 06:ACF9: B9 01 AD  LDA tbl_AD00_status_and_counter + 1,Y ;
C - - - - - 0x01AD0C 06:ACFC: 9D 86 03  STA vEnemyBJumpCounter,X              ; initializes a jump counter
@bra_ACFF_RTS:
C - - - - - 0x01AD0F 06:ACFF: 60        RTS                                   ;

tbl_AD00_status_and_counter:
- D 1 - - - 0x01AD10 06:AD00: 08        .byte $08, $20   ; vertical movement
- D 1 - - - 0x01AD12 06:AD02: 00        .byte $00, $40   ; nothing
- D - - - - 0x01AD14 06:AD04: 04        .byte $04, $40   ; revert movement
- D - - - - 0x01AD16 06:AD06: 08        .byte $08, $40   ; vertical movement

loc_AD08_lift:
C - - J - - 0x01AD18 06:AD08: A2 01     LDX #$01                       ;
C - - - - - 0x01AD1A 06:AD0A: 86 1A     STX vTempCounter1A             ; set loop counter (the enemyA number)
@bra_AD0C_loop:
C - - - - - 0x01AD1C 06:AD0C: A6 1A     LDX vTempCounter1A             ; prepares the input parameter
C - - - - - 0x01AD1E 06:AD0E: 20 16 AD  JSR sub_AD16_status_behavior   ;
C - - - - - 0x01AD21 06:AD11: C6 1A     DEC vTempCounter1A             ; decrement loop counter
C - - - - - 0x01AD23 06:AD13: 10 F7     BPL @bra_AD0C_loop             ; If vTempCounter1A >= 0x00
bra_AD15_RTS:
C - - - - - 0x01AD25 06:AD15: 60        RTS                            ;

; In: Register X - the enemyA number
sub_AD16_status_behavior:
C - - - - - 0x01AD26 06:AD16: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01AD29 06:AD19: 10 FA     BPL bra_AD15_RTS                          ; If the status isn't used
C - - - - - 0x01AD2B 06:AD1B: 20 47 AD  JSR sub_AD47_update_internal_params_      ;
C - - - - - 0x01AD2E 06:AD1E: BD 38 03  LDA vEnemyAPosXLow,X                      ;
C - - - - - 0x01AD31 06:AD21: 85 00     STA ram_0000                              ; prepares the 1st parameter
C - - - - - 0x01AD33 06:AD23: BD 3E 03  LDA vEnemyAPosXHigh,X                     ;
C - - - - - 0x01AD36 06:AD26: 85 01     STA ram_0001                              ; prepares the 2nd parameter
C - - - - - 0x01AD38 06:AD28: 20 AC D6  JSR sub_D6AC_out_of_screen                ;
C - - - - - 0x01AD3B 06:AD2B: 90 03     BCC bra_AD30_prepare_rendering            ; If the enemy is on the screen
C - - - - - 0x01AD3D 06:AD2D: 4C 8A D7  JMP loc_D78A_free_enemyA_while_creating   ;

; In: Register X - the enemyA number
bra_AD30_prepare_rendering:
C - - - - - 0x01AD40 06:AD30: BD 2C 03  LDA vEnemyAPosY,X             ;
C - - - - - 0x01AD43 06:AD33: 85 00     STA ram_0000                  ; ~> sprite magic1
C - - - - - 0x01AD45 06:AD35: A5 03     LDA ram_0003                  ; from sub_D6AC_out_of_screen
C - - - - - 0x01AD47 06:AD37: 9D 32 03  STA vEnemyAScreenPosX,X       ;
C - - - - - 0x01AD4A 06:AD3A: AD 02 03  LDA vEnemyASpriteMagic2       ;
C - - - - - 0x01AD4D 06:AD3D: 85 01     STA ram_0001                  ; ~> sprite_magic2
C - - - - - 0x01AD4F 06:AD3F: AD 03 03  LDA vEnemyASpriteMagic3       ;
C - - - - - 0x01AD52 06:AD42: 85 02     STA ram_0002                  ; ~> sprite_magic3
C - - - - - 0x01AD54 06:AD44: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

sub_AD47_update_internal_params_:
C - - - - - 0x01AD57 06:AD47: A5 2C     LDA vLowCounter             ;
C - - - - - 0x01AD59 06:AD49: 29 03     AND #$03                    ;
C - - - - - 0x01AD5B 06:AD4B: D0 0E     BNE @bra_AD5B_update        ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x01AD5D 06:AD4D: BD 20 03  LDA vEnemyAStatus,X         ;
C - - - - - 0x01AD60 06:AD50: 6A        ROR                         ;
C - - - - - 0x01AD61 06:AD51: 90 05     BCC @bra_AD58_up            ; If the lift vertical direction is up
C - - - - - 0x01AD63 06:AD53: FE 2C 03  INC vEnemyAPosY,X           ; the lift moves down
C - - - - - 0x01AD66 06:AD56: D0 03     BNE @bra_AD5B_update        ; If new Y-position != 0x00
@bra_AD58_up:
C - - - - - 0x01AD68 06:AD58: DE 2C 03  DEC vEnemyAPosY,X           ; the lift moves up
@bra_AD5B_update:
C - - - - - 0x01AD6B 06:AD5B: FE 44 03  INC vLiftCounter,X          ;
C - - - - - 0x01AD6E 06:AD5E: 10 0D     BPL @bra_AD6D_RTS           ; If vLiftCounter < 0x80 (as signed value)
C - - - - - 0x01AD70 06:AD60: A9 00     LDA #$00                    ;
C - - - - - 0x01AD72 06:AD62: 9D 44 03  STA vLiftCounter,X          ; reset
C - - - - - 0x01AD75 06:AD65: BD 20 03  LDA vEnemyAStatus,X         ;
C - - - - - 0x01AD78 06:AD68: 49 01     EOR #$01                    ; changes the vertical direction
C - - - - - 0x01AD7A 06:AD6A: 9D 20 03  STA vEnemyAStatus,X         ;
@bra_AD6D_RTS:
C - - - - - 0x01AD7D 06:AD6D: 60        RTS                         ;

sub_AD6E: ; from bank FF
C - - - - - 0x01AD7E 06:AD6E: AD 01 03  LDA vEnemyB                    ;
C - - - - - 0x01AD81 06:AD71: C9 32     CMP #$32                       ; CONSTANT - Breaking platform
C - - - - - 0x01AD83 06:AD73: D0 03     BNE bra_AD78_skip              ; If the enemy isn't the 'breaking platform'
C - - - - - 0x01AD85 06:AD75: 4C FD AD  JMP loc_ADFD_breaking_platform ;

bra_AD78_skip:
C - - - - - 0x01AD88 06:AD78: A5 46     LDA vNoSubLevel                ;
C - - - - - 0x01AD8A 06:AD7A: C9 0F     CMP #$0F                       ; CONSTANT - level 3.0
C - - - - - 0x01AD8C 06:AD7C: D0 4F     BNE bra_ADCD_RTS               ; If vNoSubLevel != 0x0F
C - - - - - 0x01AD8E 06:AD7E: 8A        TXA                            ;
C - - - - - 0x01AD8F 06:AD7F: 48        PHA                            ; diposot x
C - - - - - 0x01AD90 06:AD80: A2 01     LDX #$01                       ; set loop counter (the lift number)
bra_AD82_loop:                                                         ; loop by x (2 times)
C - - - - - 0x01AD92 06:AD82: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x01AD95 06:AD85: C9 0C     CMP #$0C                       ; CONSTANT - 'The lift'
C - - - - - 0x01AD97 06:AD87: D0 39     BNE bra_ADC2_next              ; If vEnemyA != 0x0C
C - - - - - 0x01AD99 06:AD89: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x01AD9C 06:AD8C: 10 34     BPL bra_ADC2_next              ; If the status isn't used
C - - - - - 0x01AD9E 06:AD8E: 29 40     AND #$40                       ; CONSTANT - 'the character can stand on the lift'
C - - - - - 0x01ADA0 06:AD90: F0 30     BEQ bra_ADC2_next              ; If the character cann't stand on the lift
C - - - - - 0x01ADA2 06:AD92: 8A        TXA                            ;
C - - - - - 0x01ADA3 06:AD93: 0A        ASL                            ; *2, because the X-position contains 2 bytes (high and low values)
C - - - - - 0x01ADA4 06:AD94: A4 4B     LDY vHighViewPortPosX          ;
C - - - - - 0x01ADA6 06:AD96: C0 0C     CPY #$0C                       ;
C - - - - - 0x01ADA8 06:AD98: 90 03     BCC @bra_AD9D_skip             ; If high viewport X-position < 0x0C (1 pair lifts)
C - - - - - 0x01ADAA 06:AD9A: 18        CLC                            ;
C - - - - - 0x01ADAB 06:AD9B: 69 04     ADC #$04                       ; shifts for 2 pair lifts
@bra_AD9D_skip:
C - - - - - 0x01ADAD 06:AD9D: A8        TAY                            ;
C - - - - - 0x01ADAE 06:AD9E: B9 DF F6  LDA tbl_lift_positions,Y       ;
C - - - - - 0x01ADB1 06:ADA1: C5 68     CMP vNoScreen                  ;
C - - - - - 0x01ADB3 06:ADA3: D0 1D     BNE bra_ADC2_next              ; If the current lift high value != the screen number
C - - - - - 0x01ADB5 06:ADA5: B9 E0 F6  LDA tbl_lift_positions + 1,Y   ;
C - - - - - 0x01ADB8 06:ADA8: 38        SEC                            ;
C - - - - - 0x01ADB9 06:ADA9: E5 66     SBC vLowChrPosX                ; A <~ vLowLiftPosX  - vLowChrPosX
C - - - - - 0x01ADBB 06:ADAB: B0 03     BCS @bra_ADB0_skip             ; If vLowChrPosX <= vLowLiftPosX
C - - - - - 0x01ADBD 06:ADAD: 20 73 D0  JSR sub_D073_invert_sign       ;
@bra_ADB0_skip:
C - - - - - 0x01ADC0 06:ADB0: C9 14     CMP #$14                       ; a lift tolerance
C - - - - - 0x01ADC2 06:ADB2: B0 0E     BCS bra_ADC2_next              ; If |vLowLiftPosX - vLowChrPosX| >= 0x14
C - - - - - 0x01ADC4 06:ADB4: A5 6A     LDA vScreenChrPosY             ;
C - - - - - 0x01ADC6 06:ADB6: 38        SEC                            ;
C - - - - - 0x01ADC7 06:ADB7: FD 2C 03  SBC vEnemyAPosY,X              ; A <~ vScreenChrPosY - vLiftPosY
C - - - - - 0x01ADCA 06:ADBA: C9 05     CMP #$05                       ;
C - - - - - 0x01ADCC 06:ADBC: 90 29     BCC bra_ADE7_nearly            ; If vScreenChrPosY - vLiftPosY < 0x05
C - - - - - 0x01ADCE 06:ADBE: C9 FF     CMP #$FF                       ;
C - - - - - 0x01ADD0 06:ADC0: B0 25     BCS bra_ADE7_nearly            ; if vScreenChrPosY - vLiftPosY >= 0xFF
bra_ADC2_next:
C - - - - - 0x01ADD2 06:ADC2: CA        DEX                            ; decrement loop counter
C - - - - - 0x01ADD3 06:ADC3: 10 BD     BPL bra_AD82_loop              ; If Register X >= 0x00
loc_ADC5_reset_status:
C D 1 - - - 0x01ADD5 06:ADC5: A5 6D     LDA vMovableChrStatus          ;
C - - - - - 0x01ADD7 06:ADC7: 29 FE     AND #$FE                       ; CONSTANT - all except 'the character is moving on the lift'
C - - - - - 0x01ADD9 06:ADC9: 85 6D     STA vMovableChrStatus          ;
C - - - - - 0x01ADDB 06:ADCB: 68        PLA                            ;
C - - - - - 0x01ADDC 06:ADCC: AA        TAX                            ; retrieve x (see $AD7E or $ADFD)
bra_ADCD_RTS:
C - - - - - 0x01ADDD 06:ADCD: 60        RTS                            ;

bra_ADCE_near_the_platform:
C - - - - - 0x01ADDE 06:ADCE: BD 5C 03  LDA vEnemyBStatus,X         ;
C - - - - - 0x01ADE1 06:ADD1: 29 10     AND #$10                    ; CONSTANT - the 'only down' moving mode
C - - - - - 0x01ADE3 06:ADD3: D0 0D     BNE @bra_ADE2_skip          ; If the moving mode is 'only down'
C - - - - - 0x01ADE5 06:ADD5: BD 5C 03  LDA vEnemyBStatus,X         ;
C - - - - - 0x01ADE8 06:ADD8: 09 10     ORA #$10                    ; CONSTANT - the 'only down' moving mode
C - - - - - 0x01ADEA 06:ADDA: 9D 5C 03  STA vEnemyBStatus,X         ;
C - - - - - 0x01ADED 06:ADDD: A9 70     LDA #$70                    ;
C - - - - - 0x01ADEF 06:ADDF: 9D 86 03  STA vEnemyBJumpCounter,X    ; initializes a jump counter
@bra_ADE2_skip:
C - - - - - 0x01ADF2 06:ADE2: BD 68 03  LDA vEnemyBPosY,X           ;
C - - - - - 0x01ADF5 06:ADE5: D0 03     BNE bra_ADEA_stand_on       ; Always true (Y-position != 0x00)

bra_ADE7_nearly:
C - - - - - 0x01ADF7 06:ADE7: BD 2C 03  LDA vEnemyAPosY,X           ;
; In: Register A - a new Y-position
bra_ADEA_stand_on:
C - - - - - 0x01ADFA 06:ADEA: 85 6A     STA vScreenChrPosY          ; corrects Y-position by a the lift or the platform
C - - - - - 0x01ADFC 06:ADEC: 68        PLA                         ;
C - - - - - 0x01ADFD 06:ADED: AA        TAX                         ; retrieve x (see $AD7E or $ADFD)
C - - - - - 0x01ADFE 06:ADEE: 68        PLA                         ;
C - - - - - 0x01ADFF 06:ADEF: 68        PLA                         ; double return from short_left_right_collision (i.e. $D36D -> $DB49)
C - - - - - 0x01AE00 06:ADF0: A5 6D     LDA vMovableChrStatus       ;
C - - - - - 0x01AE02 06:ADF2: 09 01     ORA #$01                    ; CONSTANT - the character is moving on the lift
C - - - - - 0x01AE04 06:ADF4: 85 6D     STA vMovableChrStatus       ;
C - - - - - 0x01AE06 06:ADF6: A9 03     LDA #$03                    ; CONSTANT - stand on the lift
C - - - - - 0x01AE08 06:ADF8: 85 6E     STA vJumpType               ;
C - - - - - 0x01AE0A 06:ADFA: A9 02     LDA #$02                    ; CONSTANT - a lift collision
C - - - - - 0x01AE0C 06:ADFC: 60        RTS                         ;

loc_ADFD_breaking_platform:
C D 1 - - - 0x01AE0D 06:ADFD: 8A        TXA                            ;
C - - - - - 0x01AE0E 06:ADFE: 48        PHA                            ; diposit x
C - - - - - 0x01AE0F 06:ADFF: A2 01     LDX #$01                       ; set loop counter
bra_AE01_loop:                                                         ; loop by x
C - - - - - 0x01AE11 06:AE01: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01AE14 06:AE04: 10 28     BPL bra_AE2E_next              ; If the status isn't used
C - - - - - 0x01AE16 06:AE06: 29 40     AND #$40                       ; CONSTANT - the character can stand on the platform
C - - - - - 0x01AE18 06:AE08: F0 24     BEQ bra_AE2E_next              ; If the character cann't stand on the platform
C - - - - - 0x01AE1A 06:AE0A: BD 7A 03  LDA vEnemyBPosXHigh,X          ;
C - - - - - 0x01AE1D 06:AE0D: C5 68     CMP vNoScreen                  ;
C - - - - - 0x01AE1F 06:AE0F: D0 1D     BNE bra_AE2E_next              ; If vEnemyBPosXHigh != the screen number
C - - - - - 0x01AE21 06:AE11: BD 74 03  LDA vEnemyBPosXLow,X           ;
C - - - - - 0x01AE24 06:AE14: 38        SEC                            ;
C - - - - - 0x01AE25 06:AE15: E5 66     SBC vLowChrPosX                ; A <~ vEnemyBPosXLow  - vLowChrPosX
C - - - - - 0x01AE27 06:AE17: B0 03     BCS @bra_AE1C_skip             ; If vLowChrPosX <= vEnemyBPosXLow
C - - - - - 0x01AE29 06:AE19: 20 73 D0  JSR sub_D073_invert_sign       ;
@bra_AE1C_skip:
C - - - - - 0x01AE2C 06:AE1C: C9 0C     CMP #$0C                       ; a platform tolerance
C - - - - - 0x01AE2E 06:AE1E: B0 0E     BCS bra_AE2E_next              ; If |vEnemyBPosXLow - vLowChrPosX| >= 0x0C
C - - - - - 0x01AE30 06:AE20: A5 6A     LDA vScreenChrPosY             ;
C - - - - - 0x01AE32 06:AE22: 38        SEC                            ;
C - - - - - 0x01AE33 06:AE23: FD 68 03  SBC vEnemyBPosY,X              ; A <~ vScreenChrPosY - vEnemyBPosY
C - - - - - 0x01AE36 06:AE26: C9 05     CMP #$05                       ;
C - - - - - 0x01AE38 06:AE28: 90 A4     BCC bra_ADCE_near_the_platform ; If vScreenChrPosY - vEnemyBPosY < 0x05
C - - - - - 0x01AE3A 06:AE2A: C9 FF     CMP #$FF                       ;
C - - - - - 0x01AE3C 06:AE2C: B0 A0     BCS bra_ADCE_near_the_platform ; if vScreenChrPosY - vEnemyBPosY >= 0xFF
bra_AE2E_next:
C - - - - - 0x01AE3E 06:AE2E: CA        DEX                            ; decrement loop counter
C - - - - - 0x01AE3F 06:AE2F: 10 D0     BPL bra_AE01_loop              ; If Register X >= 0x00
C - - - - - 0x01AE41 06:AE31: 4C C5 AD  JMP loc_ADC5_reset_status      ;

loc_AE34_platform:
C - - J - - 0x01AE44 06:AE34: A2 01     LDX #$01                         ;
C - - - - - 0x01AE46 06:AE36: 86 1A     STX vTempCounter1A               ; set loop counter (2 times)
bra_AE38_loop:
C - - - - - 0x01AE48 06:AE38: A6 1A     LDX vTempCounter1A               ; prepares the input parameter
C - - - - - 0x01AE4A 06:AE3A: 20 95 AE  JSR sub_AE95_status_behavior     ;
C - - - - - 0x01AE4D 06:AE3D: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x01AE50 06:AE40: C9 E0     CMP #$E0                         ;
C - - - - - 0x01AE52 06:AE42: B0 3C     BCS bra_AE80_next                ; If vEnemyBStatus >= 0xE0
C - - - - - 0x01AE54 06:AE44: C9 C0     CMP #$C0                         ;
C - - - - - 0x01AE56 06:AE46: 90 38     BCC bra_AE80_next                ; If vEnemyBStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01AE58 06:AE48: AD 01 03  LDA vEnemyB                      ;
C - - - - - 0x01AE5B 06:AE4B: C9 32     CMP #$32                         ; CONSTANT - Breaking platform
C - - - - - 0x01AE5D 06:AE4D: F0 31     BEQ bra_AE80_next                ; If vEnemyB == 0x32
C - - - - - 0x01AE5F 06:AE4F: BD 68 03  LDA vEnemyBPosY,X                ;
C - - - - - 0x01AE62 06:AE52: 85 AD     STA vEnemyHitBoxY                ; <~ posY
C - - - - - 0x01AE64 06:AE54: BD 6E 03  LDA vEnemyBScreenPosX,X          ;
C - - - - - 0x01AE67 06:AE57: 85 AE     STA vEnemyHitBoxX                ; <~ posX
C - - - - - 0x01AE69 06:AE59: A9 30     LDA #$30                         ;
C - - - - - 0x01AE6B 06:AE5B: 85 AF     STA vEnemyHitBoxH                ; <~ hitBoxH
C - - - - - 0x01AE6D 06:AE5D: A9 04     LDA #$04                         ;
C - - - - - 0x01AE6F 06:AE5F: 85 B0     STA vEnemyHitBoxW                ; <~ hitBoxW
C - - - - - 0x01AE71 06:AE61: 20 60 D6  JSR sub_D660_is_bomb_exploding   ;
C - - - - - 0x01AE74 06:AE64: 90 06     BCC bra_AE6C_continue            ; If the bomb isn't exploding
C - - - - - 0x01AE76 06:AE66: 20 85 AE  JSR sub_AE85_wall_bomb_hit       ;
C - - - - - 0x01AE79 06:AE69: 4C 80 AE  JMP loc_AE80_next                ;

bra_AE6C_continue:
C - - - - - 0x01AE7C 06:AE6C: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x01AE7E 06:AE6E: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x01AE80 06:AE70: D0 0E     BNE bra_AE80_next                   ; If the character is Goemon
C - - - - - 0x01AE82 06:AE72: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_AE74_loop:                                                             ; loop by x
C - - - - - 0x01AE84 06:AE74: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x01AE87 06:AE77: 90 04     BCC @bra_AE7D_no_hit                ; If the intersect isn't exist
C - - - - - 0x01AE89 06:AE79: A9 00     LDA #$00                            ;
C - - - - - 0x01AE8B 06:AE7B: 95 8F     STA vBulletStatus,X                 ; clear
@bra_AE7D_no_hit:
C - - - - - 0x01AE8D 06:AE7D: CA        DEX                                 ; decrement loop counter
C - - - - - 0x01AE8E 06:AE7E: 10 F4     BPL @bra_AE74_loop                  ; If Register X >= 0x00
bra_AE80_next:
loc_AE80_next:
C D 1 - - - 0x01AE90 06:AE80: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x01AE92 06:AE82: 10 B4     BPL bra_AE38_loop                   ; If vTempCounter1A >= 0x00
C - - - - - 0x01AE94 06:AE84: 60        RTS                                 ;

sub_AE85_wall_bomb_hit:
C - - - - - 0x01AE95 06:AE85: A6 1A     LDX vTempCounter1A             ; X <~ the enemyB number
C - - - - - 0x01AE97 06:AE87: A9 00     LDA #$00                       ;
C - - - - - 0x01AE99 06:AE89: 9D 5C 03  STA vEnemyBStatus,X            ; free enemyB
C - - - - - 0x01AE9C 06:AE8C: BC 62 03  LDY vEnemyBWallIndex,X         ;
C - - - - - 0x01AE9F 06:AE8F: A9 FF     LDA #$FF                       ; CONSTANT - the wall has already been destroyed
C - - - - - 0x01AEA1 06:AE91: 99 C0 05  STA vWalls,Y                   ;
bra_AE94_RTS:
C - - - - - 0x01AEA4 06:AE94: 60        RTS                            ;

; In: Register X - the enemyB number
sub_AE95_status_behavior:
C - - - - - 0x01AEA5 06:AE95: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x01AEA8 06:AE98: 10 FA     BPL bra_AE94_RTS                 ; If the status isn't used
C - - - - - 0x01AEAA 06:AE9A: 29 12     AND #$12                         ; CONSTANT - 'only down' movement status + 'movable' status
C - - - - - 0x01AEAC 06:AE9C: D0 46     BNE bra_AEE4_skip                ; If the object isn't movable and the movement isn't only down
C - - - - - 0x01AEAE 06:AE9E: A0 02     LDY #$02                         ; prepares the sprite_magic2 (The offset by the address) for the wall by default
C - - - - - 0x01AEB0 06:AEA0: AD 01 03  LDA vEnemyB                      ;
C - - - - - 0x01AEB3 06:AEA3: C9 30     CMP #$30                         ; CONSTANT - Wall
C - - - - - 0x01AEB5 06:AEA5: D0 02     BNE bra_AEA9_prepare_rendering   ; If vEnemyB != 0x30
C - - - - - 0x01AEB7 06:AEA7: A0 00     LDY #$00                         ; prepares the sprite_magic2 (The offset by the address) for the platform by default
; In: Register Y - sprite_magic2 (The offset by the address)
bra_AEA9_prepare_rendering:
loc_AEA9_prepare_rendering:
C D 1 - - - 0x01AEB9 06:AEA9: BD 74 03  LDA vEnemyBPosXLow,X                    ;
C - - - - - 0x01AEBC 06:AEAC: 85 00     STA ram_0000                            ; prepares the 1st parameter
C - - - - - 0x01AEBE 06:AEAE: BD 7A 03  LDA vEnemyBPosXHigh,X                   ;
C - - - - - 0x01AEC1 06:AEB1: 85 01     STA ram_0001                            ; prepares the 2nd parameter
C - - - - - 0x01AEC3 06:AEB3: 20 7B D6  JSR sub_D67B_out_of_sight               ;
C - - - - - 0x01AEC6 06:AEB6: 90 03     BCC bra_AEBB_skip                       ; If the enemy is visible
C - - - - - 0x01AEC8 06:AEB8: 4C 7E D8  JMP loc_D87E_free_enemyB_while_creating ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AEBB_skip:
C - - - - - 0x01AECB 06:AEBB: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x01AECE 06:AEBE: 90 03     BCC bra_AEC3_skip                  ; If the enemy is on the screen
C - - - - - 0x01AED0 06:AEC0: 4C 4D D8  JMP loc_D84D_enemyB_off_screen     ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AEC3_skip:
C - - - - - 0x01AED3 06:AEC3: BD 68 03  LDA vEnemyBPosY,X             ;
C - - - - - 0x01AED6 06:AEC6: 85 00     STA ram_0000                  ; ~> sprite magic1
C - - - - - 0x01AED8 06:AEC8: A5 03     LDA ram_0003                  ; from sub_D6AC_out_of_screen
C - - - - - 0x01AEDA 06:AECA: 9D 6E 03  STA vEnemyBScreenPosX,X       ;
C - - - - - 0x01AEDD 06:AECD: BD 5C 03  LDA vEnemyBStatus,X           ;
C - - - - - 0x01AEE0 06:AED0: 09 40     ORA #$40                      ; CONSTANT - the character can stand on the platform
C - - - - - 0x01AEE2 06:AED2: 9D 5C 03  STA vEnemyBStatus,X           ;
C - - - - - 0x01AEE5 06:AED5: 98        TYA                           ;
C - - - - - 0x01AEE6 06:AED6: 18        CLC                           ;
C - - - - - 0x01AEE7 06:AED7: 6D 06 03  ADC vEnemyBSpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x01AEEA 06:AEDA: 85 01     STA ram_0001                  ;
C - - - - - 0x01AEEC 06:AEDC: AD 07 03  LDA vEnemyBSpriteMagic3       ; ~> sprite_magic3
C - - - - - 0x01AEEF 06:AEDF: 85 02     STA ram_0002                  ;
C - - - - - 0x01AEF1 06:AEE1: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

bra_AEE4_skip:
C - - - - - 0x01AEF4 06:AEE4: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01AEF7 06:AEE7: 29 10     AND #$10                       ; CONSTANT - the 'only down' moving mode
C - - - - - 0x01AEF9 06:AEE9: D0 2B     BNE bra_AF16_only_down         ; If the moving mode is 'only down'
C - - - - - 0x01AEFB 06:AEEB: A5 2C     LDA vLowCounter                ;
C - - - - - 0x01AEFD 06:AEED: 29 03     AND #$03                       ;
C - - - - - 0x01AEFF 06:AEEF: D0 0E     BNE bra_AEFF_update            ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x01AF01 06:AEF1: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01AF04 06:AEF4: 6A        ROR                            ;
C - - - - - 0x01AF05 06:AEF5: 90 05     BCC bra_AEFC_up                ; If the lift vertical direction is up
C - - - - - 0x01AF07 06:AEF7: FE 68 03  INC vEnemyBPosY,X              ; the platform moves down
C - - - - - 0x01AF0A 06:AEFA: D0 03     BNE bra_AEFF_update            ; If new Y-position != 0x00
bra_AEFC_up:
C - - - - - 0x01AF0C 06:AEFC: DE 68 03  DEC vEnemyBPosY,X              ; the platform moves up
bra_AEFF_update:
C - - - - - 0x01AF0F 06:AEFF: FE 80 03  INC vEnemyBFrame_Counter,X     ;
C - - - - - 0x01AF12 06:AF02: 10 0D     BPL @bra_AF11_skip             ; If vFrameCounter < 0x80 (as signed value)
C - - - - - 0x01AF14 06:AF04: A9 00     LDA #$00                       ;
C - - - - - 0x01AF16 06:AF06: 9D 80 03  STA vEnemyBFrame_Counter,X     ; reset
C - - - - - 0x01AF19 06:AF09: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01AF1C 06:AF0C: 49 01     EOR #$01                       ; changes the vertical direction
C - - - - - 0x01AF1E 06:AF0E: 9D 5C 03  STA vEnemyBStatus,X            ;
@bra_AF11_skip:
C - - - - - 0x01AF21 06:AF11: A0 04     LDY #$04                       ; prepares the sprite_magic2 (The offset by the address) for the moving platform
C - - - - - 0x01AF23 06:AF13: 4C A9 AE  JMP loc_AEA9_prepare_rendering ;

; In: Register X - the enemyB number
bra_AF16_only_down:
C - - - - - 0x01AF26 06:AF16: BD 86 03  LDA vEnemyBJumpCounter,X          ;
C - - - - - 0x01AF29 06:AF19: F0 03     BEQ @bra_AF1E_skip                ; If vJumpCounter == 0x00
C - - - - - 0x01AF2B 06:AF1B: DE 86 03  DEC vEnemyBJumpCounter,X          ;
@bra_AF1E_skip:
C - - - - - 0x01AF2E 06:AF1E: A0 04     LDY #$04                          ; the offset value #1
C - - - - - 0x01AF30 06:AF20: BD 86 03  LDA vEnemyBJumpCounter,X          ;
C - - - - - 0x01AF33 06:AF23: C9 40     CMP #$40                          ; CONSTANT - the falling value #1
C - - - - - 0x01AF35 06:AF25: B0 23     BCS @bra_AF4A_rendering           ; If vJumpCounter >= 0x40
C - - - - - 0x01AF37 06:AF27: A0 06     LDY #$06                          ; the offset value #2
C - - - - - 0x01AF39 06:AF29: C9 38     CMP #$38                          ; CONSTANT - the falling value #2
C - - - - - 0x01AF3B 06:AF2B: B0 0E     BCS @bra_AF3B_inc                 ; If vJumpCounter >= 0x38
C - - - - - 0x01AF3D 06:AF2D: A0 08     LDY #$08                          ; the offset value #3
C - - - - - 0x01AF3F 06:AF2F: C9 30     CMP #$30                          ; CONSTANT - the falling value #3
C - - - - - 0x01AF41 06:AF31: B0 08     BCS @bra_AF3B_inc                 ; If vJumpCounter >= 0x30
C - - - - - 0x01AF43 06:AF33: A0 0A     LDY #$0A                          ; the offset value #4
C - - - - - 0x01AF45 06:AF35: C9 28     CMP #$28                          ; CONSTANT - the falling value #4
C - - - - - 0x01AF47 06:AF37: B0 02     BCS @bra_AF3B_inc                 ; If vJumpCounter >= 0x28
C - - - - - 0x01AF49 06:AF39: A0 0C     LDY #$0C                          ; the offset value #5
@bra_AF3B_inc:
C - - - - - 0x01AF4B 06:AF3B: FE 68 03  INC vEnemyBPosY,X                 ; the platform moves down
C - - - - - 0x01AF4E 06:AF3E: BD 68 03  LDA vEnemyBPosY,X                 ;
C - - - - - 0x01AF51 06:AF41: C9 DF     CMP #$DF                          ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01AF53 06:AF43: 90 05     BCC @bra_AF4A_rendering           ; If EnemyPosY < 0xDF
C - - - - - 0x01AF55 06:AF45: A9 00     LDA #$00                          ;
C - - - - - 0x01AF57 06:AF47: 9D 5C 03  STA vEnemyBStatus,X               ; clear
; In: Register Y - sprite_magic2 (The offset by the address)
@bra_AF4A_rendering:
C - - - - - 0x01AF5A 06:AF4A: 4C A9 AE  JMP loc_AEA9_prepare_rendering    ;

sub_AF4D: ; from bank FF
C - - - - - 0x01AF5D 06:AF4D: A2 05     LDX #$05                                    ; the number of the briefcases
C - - - - - 0x01AF5F 06:AF4F: 86 1A     STX vTempCounter1A                          ; set loop counter
bra_AF51_loop:                                                                      ; loop by vTempCounter1A (5 times)
C - - - - - 0x01AF61 06:AF51: A6 1A     LDX vTempCounter1A                          ; X <~ the item or briefcases number
C - - - - - 0x01AF63 06:AF53: 20 F8 AF  JSR sub_AFF8
C - - - - - 0x01AF66 06:AF56: BD 9E 03  LDA vItemStatus,X                           ;
C - - - - - 0x01AF69 06:AF59: C9 E0     CMP #$E0                                    ;
C - - - - - 0x01AF6B 06:AF5B: B0 69     BCS bra_AFC6_next                           ; If vItemStatus >= 0xE0
C - - - - - 0x01AF6D 06:AF5D: C9 C0     CMP #$C0                                    ;   
C - - - - - 0x01AF6F 06:AF5F: 90 65     BCC bra_AFC6_next                           ; If vItemStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01AF71 06:AF61: A0 08     LDY #$08                                    ; hitBoxH value #1
C - - - - - 0x01AF73 06:AF63: BD 9E 03  LDA vItemStatus,X                           ;
C - - - - - 0x01AF76 06:AF66: 29 10     AND #$10                                    ; CONSTANT - the briefcase is hidden
C - - - - - 0x01AF78 06:AF68: D0 02     BNE @bra_AF6C_skip                          ; If the briefcase is hidden
C - - - - - 0x01AF7A 06:AF6A: A0 10     LDY #$10                                    ; hitBoxH value #2
@bra_AF6C_skip:
C - - - - - 0x01AF7C 06:AF6C: 84 AF     STY vEnemyHitBoxH                           ; <~ hitBoxH
C - - - - - 0x01AF7E 06:AF6E: BD AA 03  LDA vItemPosY,X                             ;
C - - - - - 0x01AF81 06:AF71: 38        SEC                                         ;
C - - - - - 0x01AF82 06:AF72: E9 04     SBC #$04                                    ;
C - - - - - 0x01AF84 06:AF74: 85 AD     STA vEnemyHitBoxY                           ; <~ posY - 0x04
C - - - - - 0x01AF86 06:AF76: BD B0 03  LDA vItemScreenPosX,X                       ;
C - - - - - 0x01AF89 06:AF79: 85 AE     STA vEnemyHitBoxX                           ; <~ posX
C - - - - - 0x01AF8B 06:AF7B: A9 02     LDA #$02                                    ;
C - - - - - 0x01AF8D 06:AF7D: 85 B0     STA vEnemyHitBoxW                           ; <~ hitBoxW
C - - - - - 0x01AF8F 06:AF7F: BD 9E 03  LDA vItemStatus,X                           ;
C - - - - - 0x01AF92 06:AF82: 29 10     AND #$10                                    ; CONSTANT - the briefcase is hidden
C - - - - - 0x01AF94 06:AF84: F0 25     BEQ bra_AFAB_is_visible                     ; If the briefcase is visible
C - - - - - 0x01AF96 06:AF86: BD C8 03  LDA vItemJumpCounter,X
C - - - - - 0x01AF99 06:AF89: D0 3B     BNE bra_AFC6_next
C - - - - - 0x01AF9B 06:AF8B: 20 42 D6  JSR sub_D642_have_intersect_with_character  ;
C - - - - - 0x01AF9E 06:AF8E: 90 36     BCC bra_AFC6_next                           ; If the character hasn't damage
C - - - - - 0x01AFA0 06:AF90: BC 98 03  LDY v_briefcase_index,X                     ;
C - - - - - 0x01AFA3 06:AF93: A5 6D     LDA vMovableChrStatus                       ;
C - - - - - 0x01AFA5 06:AF95: 30 0B     BMI @bra_AFA2_skip                          ; If the character is moving in the water
C - - - - - 0x01AFA7 06:AF97: B9 19 02  LDA vArrayWhiteBriefcase,Y                  ;
C - - - - - 0x01AFAA 06:AF9A: 48        PHA                                         ; diposit the item number
C - - - - - 0x01AFAB 06:AF9B: 09 80     ORA #$80                                    ; CONSTANT - the item is got
C - - - - - 0x01AFAD 06:AF9D: 99 19 02  STA vArrayWhiteBriefcase,Y                  ; The white briefcase taken
C - - - - - 0x01AFB0 06:AFA0: 68        PLA                                         ;
C - - - - - 0x01AFB1 06:AFA1: A8        TAY                                         ; retrieve the item number (see $AF9A)
@bra_AFA2_skip:
C - - - - - 0x01AFB2 06:AFA2: 20 67 B0  JSR sub_B067_take_item_out                  ;
C - - - - - 0x01AFB5 06:AFA5: 20 EF AF  JSR sub_AFEF_free_item                      ;
C - - - - - 0x01AFB8 06:AFA8: 4C C6 AF  JMP loc_AFC6_next                           ;

bra_AFAB_is_visible:
C - - - - - 0x01AFBB 06:AFAB: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x01AFBD 06:AFAD: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x01AFBF 06:AFAF: F0 0B     BEQ bra_AFBC_check_bullets         ; If the character isn't Goemon
C - - - - - 0x01AFC1 06:AFB1: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x01AFC4 06:AFB4: 90 10     BCC bra_AFC6_next                  ; If the intersect doesn't exist
C - - - - - 0x01AFC6 06:AFB6: 20 D5 AF  JSR sub_AFD5_hit                   ;
C - - - - - 0x01AFC9 06:AFB9: 4C C6 AF  JMP loc_AFC6_next                  ;

bra_AFBC_check_bullets:
C - - - - - 0x01AFCC 06:AFBC: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_AFBE_loop:                                                             ; loop by x
C - - - - - 0x01AFCE 06:AFBE: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x01AFD1 06:AFC1: B0 08     BCS bra_AFCB_bullet_hit             ; If the intersect is exist
C - - - - - 0x01AFD3 06:AFC3: CA        DEX                                 ; decrement loop counter
C - - - - - 0x01AFD4 06:AFC4: 10 F8     BPL @bra_AFBE_loop                  ; If Register X >= 0x00
bra_AFC6_next:
loc_AFC6_next:
C D 1 - - - 0x01AFD6 06:AFC6: C6 1A     DEC vTempCounter1A                  ; decrement vTempCounter1A
C - - - - - 0x01AFD8 06:AFC8: D0 87     BNE bra_AF51_loop                   ; If vTempCounter1A != 0
C - - - - - 0x01AFDA 06:AFCA: 60        RTS                                 ;

bra_AFCB_bullet_hit:
C - - - - - 0x01AFDB 06:AFCB: A9 00     LDA #$00                  ;
C - - - - - 0x01AFDD 06:AFCD: 95 8F     STA vBulletStatus,X       ; clear
C - - - - - 0x01AFDF 06:AFCF: 20 D5 AF  JSR sub_AFD5_hit          ;
C - - - - - 0x01AFE2 06:AFD2: 4C C6 AF  JMP loc_AFC6_next         ;

sub_AFD5_hit:
C - - - - - 0x01AFE5 06:AFD5: A6 1A     LDX vTempCounter1A             ; X <~ the item or briefcases number
C - - - - - 0x01AFE7 06:AFD7: DE A4 03  DEC vBriefcaseHitCount - 1,X   ;
C - - - - - 0x01AFEA 06:AFDA: D0 12     BNE bra_AFEE_RTS               ; If the hit count > 0x00
C - - - - - 0x01AFEC 06:AFDC: BD 9E 03  LDA vItemStatus,X              ;
C - - - - - 0x01AFEF 06:AFDF: 09 10     ORA #$10                       ; CONSTANT - the briefcase is hidden
C - - - - - 0x01AFF1 06:AFE1: 9D 9E 03  STA vItemStatus,X              ;
C - - - - - 0x01AFF4 06:AFE4: A9 10     LDA #$10                       ; CONSTANT - a jump counter value for the destroying
C - - - - - 0x01AFF6 06:AFE6: 9D C8 03  STA vItemJumpCounter,X         ;
C - - - - - 0x01AFF9 06:AFE9: A9 14     LDA #$14                       ; the sound of destroying the briefcase
C - - - - - 0x01AFFB 06:AFEB: 20 20 C4  JSR sub_C420_add_sound_effect  ; bank FF
bra_AFEE_RTS:
C - - - - - 0x01AFFE 06:AFEE: 60        RTS                            ;

; In: Register X - the item number
sub_AFEF_free_item:
loc_AFEF_free_item:
C D 1 - - - 0x01AFFF 06:AFEF: A9 00     LDA #$00                  ;
C - - - - - 0x01B001 06:AFF1: 9D 9E 03  STA vItemStatus,X         ; clear the current briefcase item
C - - - - - 0x01B004 06:AFF4: 9D 98 03  STA v_briefcase_index,X   ; clear an index
C - - - - - 0x01B007 06:AFF7: 60        RTS                       ;

; in: Register X - the number of the briefcase
sub_AFF8:
C - - - - - 0x01B008 06:AFF8: BD 9E 03  LDA vItemStatus,X                  ;
C - - - - - 0x01B00B 06:AFFB: 10 F1     BPL bra_AFEE_RTS                   ; If the current briefcase item isn't used
C - - - - - 0x01B00D 06:AFFD: A0 00     LDY #$00                           ; the offset value #1
C - - - - - 0x01B00F 06:AFFF: 29 10     AND #$10                           ; CONSTANT - the briefcase is hidden
C - - - - - 0x01B011 06:B001: F0 2B     BEQ bra_B02E_prepare_rendering     ; If the briefcase isn't hidden
C - - - - - 0x01B013 06:B003: BD C8 03  LDA vItemJumpCounter,X             ;
C - - - - - 0x01B016 06:B006: F0 0D     BEQ bra_B015_skip                  ; If vJumpCounter == 0x00
C - - - - - 0x01B018 06:B008: DE C8 03  DEC vItemJumpCounter,X             ; updates a jump counter
C - - - - - 0x01B01B 06:B00B: A0 02     LDY #$02                           ; the offset value #2
C - - - - - 0x01B01D 06:B00D: C9 08     CMP #$08                           ; CONSTANT - for the exploding animation
C - - - - - 0x01B01F 06:B00F: B0 1D     BCS bra_B02E_prepare_rendering     ; If vJumpCounter >= 0x08
C - - - - - 0x01B021 06:B011: A0 04     LDY #$04                           ; the offset value #3
C - - - - - 0x01B023 06:B013: D0 19     BNE bra_B02E_prepare_rendering     ; Always true

bra_B015_skip:
C - - - - - 0x01B025 06:B015: A5 6D     LDA vMovableChrStatus              ;
C - - - - - 0x01B027 06:B017: 10 03     BPL @bra_B01C_skip                 ; If the character doesn't move in the water
C - - - - - 0x01B029 06:B019: 20 57 B0  JSR sub_B057_try_to_move
@bra_B01C_skip:
C - - - - - 0x01B02C 06:B01C: BD 98 03  LDA v_briefcase_index,X            ;
C - - - - - 0x01B02F 06:B01F: A4 6D     LDY vMovableChrStatus              ;
C - - - - - 0x01B031 06:B021: 30 06     BMI @bra_B029_skip                 ; If the character moves in the water
C - - - - - 0x01B033 06:B023: A8        TAY                                ;
C - - - - - 0x01B034 06:B024: B9 19 02  LDA vArrayWhiteBriefcase,Y         ;
C - - - - - 0x01B037 06:B027: 29 0F     AND #$0F                           ; filters by the mask (for the offset)
; In: Register A - the encrypted offset
@bra_B029_skip:
C - - - - - 0x01B039 06:B029: 0A        ASL                           ;
C - - - - - 0x01B03A 06:B02A: 18        CLC                           ;
C - - - - - 0x01B03B 06:B02B: 69 06     ADC #$06                      ;
C - - - - - 0x01B03D 06:B02D: A8        TAY                           ; Y <~ 2*A + 0x06
; In: Register Y - sprite_magic2 (The offset by the address)
bra_B02E_prepare_rendering:
C - - - - - 0x01B03E 06:B02E: BD B6 03  LDA vItemPosXLow,X            ;
C - - - - - 0x01B041 06:B031: 85 00     STA ram_0000                  ; prepares the 1st parameter
C - - - - - 0x01B043 06:B033: BD BC 03  LDA vItemPosXHigh,X           ;
C - - - - - 0x01B046 06:B036: 85 01     STA ram_0001                  ; prepares the 2nd parameter
C - - - - - 0x01B048 06:B038: 20 AC D6  JSR sub_D6AC_out_of_screen    ;
C - - - - - 0x01B04B 06:B03B: 90 03     BCC bra_B040_skip             ; If the item is on the screen
C - - - - - 0x01B04D 06:B03D: 4C EF AF  JMP loc_AFEF_free_item

bra_B040_skip:
C - - - - - 0x01B050 06:B040: BD AA 03  LDA vItemPosY,X               ;
C - - - - - 0x01B053 06:B043: 85 00     STA ram_0000                  ; ~> sprite magic1
C - - - - - 0x01B055 06:B045: A5 03     LDA ram_0003                  ; from sub_D6AC_out_of_screen
C - - - - - 0x01B057 06:B047: 9D B0 03  STA vItemScreenPosX,X         ;
C - - - - - 0x01B05A 06:B04A: 98        TYA                           ;
C - - - - - 0x01B05B 06:B04B: 18        CLC                           ;
C - - - - - 0x01B05C 06:B04C: 69 5C     ADC #$5C                      ;
C - - - - - 0x01B05E 06:B04E: 85 01     STA ram_0001                  ; Y + 0x5C ~> sprite_magic2
C - - - - - 0x01B060 06:B050: A9 60     LDA #$60                      ;
C - - - - - 0x01B062 06:B052: 85 02     STA ram_0002                  ; ~> sprite_magic3
C - - - - - 0x01B064 06:B054: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

sub_B057_try_to_move:
C - - - - - 0x01B067 06:B057: A5 2C     LDA vLowCounter                            ;
C - - - - - 0x01B069 06:B059: 29 03     AND #$03                                   ;
C - - - - - 0x01B06B 06:B05B: D0 47     BNE bra_B0A4_RTS                           ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x01B06D 06:B05D: 24 3F     BIT ram_003F
C - - - - - 0x01B06F 06:B05F: 30 03     BMI bra_B064_left
C - - - - - 0x01B071 06:B061: 4C 13 D9  JMP loc_D913_short_inc_ItemPosXLow         ;

bra_B064_left:
C - - - - - 0x01B074 06:B064: 4C F4 D8  JMP loc_D8F4_short_dec_ItemPosXLow_unsafe  ;

; In: Register Y - the item number
sub_B067_take_item_out:
C - - - - - 0x01B077 06:B067: A5 6D     LDA vMovableChrStatus             ;
C - - - - - 0x01B079 06:B069: 30 15     BMI @bra_B080_inc                 ; If 'the character is moving in the water'
C - - - - - 0x01B07B 06:B06B: 2C 14 02  BIT vCurrentWeaponStatus          ;
C - - - - - 0x01B07E 06:B06E: 10 10     BPL @bra_B080_inc                 ; If the weapons are exist
C - - - - - 0x01B080 06:B070: C0 05     CPY #$05                          ; CONSTANT - the breathing apparatus
C - - - - - 0x01B082 06:B072: B0 0C     BCS @bra_B080_inc                 ; If Register Y >= 0x05 (i.e. all automatic items)
C - - - - - 0x01B084 06:B074: 84 11     STY vCacheRam_11                  ;
C - - - - - 0x01B086 06:B076: AD 14 02  LDA vCurrentWeaponStatus          ;
C - - - - - 0x01B089 06:B079: 29 7F     AND #$7F                          ; CONSTANT - flip-flop 'the weapons are not exist'
C - - - - - 0x01B08B 06:B07B: 05 11     ORA vCacheRam_11                  ; the current item is used
C - - - - - 0x01B08D 06:B07D: 8D 14 02  STA vCurrentWeaponStatus          ;
@bra_B080_inc:
C - - - - - 0x01B090 06:B080: B9 00 02  LDA v_items,Y                     ;
C - - - - - 0x01B093 06:B083: 18        CLC                               ;
C - - - - - 0x01B094 06:B084: 69 01     ADC #$01                          ;
C - - - - - 0x01B096 06:B086: C9 FF     CMP #$FF                          ; CONSTANT - Max value
C - - - - - 0x01B098 06:B088: 90 02     BCC @bra_B08C_less_than_max       ; If the number of the items is less than max value
- - - - - - 0x01B09A 06:B08A: A9 FF     LDA #$FF                          ; reassign
@bra_B08C_less_than_max:
C - - - - - 0x01B09C 06:B08C: 99 00 02  STA v_items,Y                     ;
C - - - - - 0x01B09F 06:B08F: A9 20     LDA #$20                          ; Initializing the remaining time
C - - - - - 0x01B0A1 06:B091: 99 0A 02  STA vItemsBlinkTime,Y             ;
C - - - - - 0x01B0A4 06:B094: A9 18     LDA #$18                          ; CONSTANT - The sound of taking an item out in a blown-up wall
C - - - - - 0x01B0A6 06:B096: 20 20 C4  JSR sub_C420_add_sound_effect     ;
C - - - - - 0x01B0A9 06:B099: 60        RTS                               ;

sub_B09A: ; from bank FF
C - - - - - 0x01B0AA 06:B09A: A2 05     LDX #$05               ; set loop counter
@bra_B09C_loop:                                                ; loop by x
C - - - - - 0x01B0AC 06:B09C: BD 9E 03  LDA vItemStatus,X      ;
C - - - - - 0x01B0AF 06:B09F: 10 04     BPL bra_B0A5           ; If vItemStatus < 0x80
C - - - - - 0x01B0B1 06:B0A1: CA        DEX                    ; decrement loop counter
C - - - - - 0x01B0B2 06:B0A2: D0 F8     BNE @bra_B09C_loop     ; If Register X != 0x00
bra_B0A4_RTS:
C - - - - - 0x01B0B4 06:B0A4: 60        RTS                    ;

bra_B0A5:
C - - - - - 0x01B0B5 06:B0A5: A5 6D     LDA vMovableChrStatus                    ;
C - - - - - 0x01B0B7 06:B0A7: 30 6A     BMI bra_B113_try_generate_item_in_water  ; If 'the character is moving in the water'
C - - - - - 0x01B0B9 06:B0A9: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2            ; bank FF
C - - - - - 0x01B0BC 06:B0AC: A0 00     LDY #$00                                 ;
C - - - - - 0x01B0BE 06:B0AE: A5 46     LDA vNoSubLevel                          ;
C - - - - - 0x01B0C0 06:B0B0: F0 0C     BEQ @bra_B0BE_skip                       ; If vNoSubLevel == level 1.0
C - - - - - 0x01B0C2 06:B0B2: A0 02     LDY #$02                                 ;
C - - - - - 0x01B0C4 06:B0B4: C9 06     CMP #$06                                 ; CONSTANT - level 2 (outside)
C - - - - - 0x01B0C6 06:B0B6: F0 06     BEQ @bra_B0BE_skip                       ; If vNoSubLevel == level 2 (outside)
C - - - - - 0x01B0C8 06:B0B8: A0 04     LDY #$04                                 ;
C - - - - - 0x01B0CA 06:B0BA: C9 0F     CMP #$0F                                 ; CONSTANT - level 3.0
C - - - - - 0x01B0CC 06:B0BC: D0 E6     BNE bra_B0A4_RTS                         ; If vNoSubLevel != level 3.0
@bra_B0BE_skip:
C - - - - - 0x01B0CE 06:B0BE: B9 9E 84  LDA tbl_ptr_briefcases_outside,Y         ; 
C - - - - - 0x01B0D1 06:B0C1: 85 12     STA ram_0012                             ; Low address
C - - - - - 0x01B0D3 06:B0C3: B9 9F 84  LDA tbl_ptr_briefcases_outside + 1,Y     ;
C - - - - - 0x01B0D6 06:B0C6: 85 13     STA ram_0013                             ; High address
C - - - - - 0x01B0D8 06:B0C8: A9 01     LDA #$01                                 ; CONSTANT - left-to-right direction
C - - - - - 0x01B0DA 06:B0CA: 20 D6 F2  JSR sub_F2D6_try_put_briefcase           ; bank FF
C - - - - - 0x01B0DD 06:B0CD: 90 D5     BCC bra_B0A4_RTS                         ; If a briefcase doesn't put
C - - - - - 0x01B0DF 06:B0CF: A4 0A     LDY ram_000A                             ; load index of a briefcase
C - - - - - 0x01B0E1 06:B0D1: B9 19 02  LDA vArrayWhiteBriefcase,Y               ; load an item (inside a briefcase)
C - - - - - 0x01B0E4 06:B0D4: 30 CE     BMI bra_B0A4_RTS                         ; If the item is got
C - - - - - 0x01B0E6 06:B0D6: A0 05     LDY #$05                                 ; set loop counter
bra_B0D8_loop:                                                                   ; loop by y (5 times)
C - - - - - 0x01B0E8 06:B0D8: B9 9E 03  LDA vItemStatus,Y
C - - - - - 0x01B0EB 06:B0DB: 10 14     BPL bra_B0F1
C - - - - - 0x01B0ED 06:B0DD: B9 B6 03  LDA vItemPosXLow,Y
C - - - - - 0x01B0F0 06:B0E0: 38        SEC
C - - - - - 0x01B0F1 06:B0E1: E5 01     SBC ram_0001
C - - - - - 0x01B0F3 06:B0E3: B9 BC 03  LDA vItemPosXHigh,Y
C - - - - - 0x01B0F6 06:B0E6: E5 00     SBC ram_0000
C - - - - - 0x01B0F8 06:B0E8: D0 07     BNE bra_B0F1
C - - - - - 0x01B0FA 06:B0EA: B9 AA 03  LDA vItemPosY,Y
C - - - - - 0x01B0FD 06:B0ED: C5 02     CMP ram_0002
C - - - - - 0x01B0FF 06:B0EF: F0 B3     BEQ bra_B0A4_RTS
bra_B0F1:
C - - - - - 0x01B101 06:B0F1: 88        DEY
C - - - - - 0x01B102 06:B0F2: D0 E4     BNE bra_B0D8_loop                        ; If register Y != 0
C - - - - - 0x01B104 06:B0F4: A9 C0     LDA #$C0                                 ; CONSTANT: The item is in the briefcase, i.e. it's hidden
C - - - - - 0x01B106 06:B0F6: 9D 9E 03  STA vItemStatus,X
C - - - - - 0x01B109 06:B0F9: A9 03     LDA #$03
; In: Register X - an item/briefcase number (X > 1)
; In: Register A - a hit count for the briefcase (0, if the briefcase isn't exist)
; In: $0000 - item X-position (high value)
; In: $0001 - item X-position (low value)
; In: $0002 - item Y-position
; In: $000A - an briefcase index (or an item number for the water level)
loc_B0FB_create:
C D 1 - - - 0x01B10B 06:B0FB: 9D A4 03  STA vBriefcaseHitCount - 1,X
C - - - - - 0x01B10E 06:B0FE: A5 00     LDA ram_0000
C - - - - - 0x01B110 06:B100: 9D BC 03  STA vItemPosXHigh,X
C - - - - - 0x01B113 06:B103: A5 01     LDA ram_0001
C - - - - - 0x01B115 06:B105: 9D B6 03  STA vItemPosXLow,X
C - - - - - 0x01B118 06:B108: A5 02     LDA ram_0002
C - - - - - 0x01B11A 06:B10A: 9D AA 03  STA vItemPosY,X
C - - - - - 0x01B11D 06:B10D: A5 0A     LDA ram_000A
C - - - - - 0x01B11F 06:B10F: 9D 98 03  STA v_briefcase_index,X        ; load index of a briefcase
bra_B112_RTS:
C - - - - - 0x01B122 06:B112: 60        RTS                            ;

bra_B113_try_generate_item_in_water:
C - - - - - 0x01B123 06:B113: 20 3B EF  JSR sub_EF3B_switch_bank_2_p1      ;
C - - - - - 0x01B126 06:B116: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01B128 06:B118: 29 3F     AND #$3F                           ;
C - - - - - 0x01B12A 06:B11A: D0 F6     BNE bra_B112_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0) (98.44% chance)
C - - - - - 0x01B12C 06:B11C: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x01B12F 06:B11F: 29 A0     AND #$A0
C - - - - - 0x01B131 06:B121: D0 EF     BNE bra_B112_RTS
C - - - - - 0x01B133 06:B123: A9 08     LDA #$08
C - - - - - 0x01B135 06:B125: A4 3F     LDY vFlowingOffset                 ;
C - - - - - 0x01B137 06:B127: 10 02     BPL @bra_B12B_positive             ; If the flowing offset >= 0x00
C - - - - - 0x01B139 06:B129: A9 F8     LDA #$F8
@bra_B12B_positive:
C - - - - - 0x01B13B 06:B12B: 18        CLC
C - - - - - 0x01B13C 06:B12C: 65 27     ADC vLowViewPortPosX
C - - - - - 0x01B13E 06:B12E: 85 01     STA ram_0001
C - - - - - 0x01B140 06:B130: A5 4B     LDA vHighViewPortPosX
C - - - - - 0x01B142 06:B132: 69 00     ADC #$00
C - - - - - 0x01B144 06:B134: 85 00     STA ram_0000
C - - - - - 0x01B146 06:B136: A5 35     LDA vEnemyRNGValue
C - - - - - 0x01B148 06:B138: 29 1F     AND #$1F
C - - - - - 0x01B14A 06:B13A: A8        TAY
C - - - - - 0x01B14B 06:B13B: B9 A0 95  LDA $95A0,Y
C - - - - - 0x01B14E 06:B13E: 20 59 B1  JSR sub_B159
C - - - - - 0x01B151 06:B141: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x01B154 06:B144: 29 1F     AND #$1F                           ;
C - - - - - 0x01B156 06:B146: A8        TAY                                ; Y <~ {0x00, 0x01, ..., 0x1F}
C - - - - - 0x01B157 06:B147: B9 C0 95  LDA tbl_water_y_position,Y         ;
C - - - - - 0x01B15A 06:B14A: 85 02     STA ram_0002                       ; prepare an input parameter
C - - - - - 0x01B15C 06:B14C: A9 D0     LDA #$D0                           ; CONSTANT - the status by default + the briefcase is hidden
C - - - - - 0x01B15E 06:B14E: 9D 9E 03  STA vItemStatus,X                  ;
C - - - - - 0x01B161 06:B151: A9 00     LDA #$00
C - - - - - 0x01B163 06:B153: 9D C8 03  STA vItemJumpCounter,X
C - - - - - 0x01B166 06:B156: 4C FB B0  JMP loc_B0FB_create

; In: Register A - [0x00-0x08]
sub_B159:
C - - - - - 0x01B169 06:B159: 85 0A     STA ram_000A
C - - - - - 0x01B16B 06:B15B: A8        TAY
C - - - - - 0x01B16C 06:B15C: A9 01     LDA #$01
C - - - - - 0x01B16E 06:B15E: C0 08     CPY #$08
C - - - - - 0x01B170 06:B160: F0 06     BEQ bra_B168
bra_B162_repeat:
C - - - - - 0x01B172 06:B162: 88        DEY
C - - - - - 0x01B173 06:B163: 30 03     BMI bra_B168
C - - - - - 0x01B175 06:B165: 0A        ASL
C - - - - - 0x01B176 06:B166: D0 FA     BNE bra_B162_repeat
bra_B168:
C - - - - - 0x01B178 06:B168: 85 0B     STA ram_000B
C - - - - - 0x01B17A 06:B16A: A5 40     LDA vWaterRoomIndex
C - - - - - 0x01B17C 06:B16C: 0A        ASL
C - - - - - 0x01B17D 06:B16D: 18        CLC
C - - - - - 0x01B17E 06:B16E: 6D 90 94  ADC $9490
C - - - - - 0x01B181 06:B171: 85 12     STA ram_0012
C - - - - - 0x01B183 06:B173: AD 91 94  LDA $9490 + 1
C - - - - - 0x01B186 06:B176: 69 00     ADC #$00
C - - - - - 0x01B188 06:B178: 85 13     STA ram_0013
C - - - - - 0x01B18A 06:B17A: A0 00     LDY #$00
C - - - - - 0x01B18C 06:B17C: A5 0A     LDA ram_000A
C - - - - - 0x01B18E 06:B17E: C9 08     CMP #$08
C - - - - - 0x01B190 06:B180: F0 01     BEQ @bra_B183_skip
C - - - - - 0x01B192 06:B182: C8        INY
@bra_B183_skip:
C - - - - - 0x01B193 06:B183: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B195 06:B185: 25 0B     AND ram_000B
C - - - - - 0x01B197 06:B187: F0 02     BEQ bra_B18B_RTS
C - - - - - 0x01B199 06:B189: 68        PLA                  ;
C - - - - - 0x01B19A 06:B18A: 68        PLA                  ; double return to $EDC9
bra_B18B_RTS:
C - - - - - 0x01B19B 06:B18B: 60        RTS                  ;

sub_B18C_prepare_briefcases_by_index:
C - - - - - 0x01B19C 06:B18C: A5 46     LDA vNoSubLevel                                     ;
C - - - - - 0x01B19E 06:B18E: C9 1F     CMP #$1F                                            ; CONSTANT - a briefcase room on level 1.0
C - - - - - 0x01B1A0 06:B190: 90 F9     BCC bra_B18B_RTS                                    ; If vNoSubLevel < 0x1A
C - - - - - 0x01B1A2 06:B192: C9 24     CMP #$24                                            ; CONSTANT - a room - level 3.0 (water level)
C - - - - - 0x01B1A4 06:B194: B0 F5     BCS bra_B18B_RTS                                    ; If vNoSubLevel >= 0x24
C - - - - - 0x01B1A6 06:B196: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2                       ;
C - - - - - 0x01B1A9 06:B199: A5 46     LDA vNoSubLevel                                     ;
C - - - - - 0x01B1AB 06:B19B: 38        SEC                                                 ;
C - - - - - 0x01B1AC 06:B19C: E9 1F     SBC #$1F                                            ; A <~ 0x00 (level1), 0x01 (level2.1), 0x02 (level2.2), 0x03 (level3), 0x04 (level4)
C - - - - - 0x01B1AE 06:B19E: 0A        ASL                                                 ;
C - - - - - 0x01B1AF 06:B19F: 85 12     STA vTempCounter12                                  ;
C - - - - - 0x01B1B1 06:B1A1: 0A        ASL                                                 ;
C - - - - - 0x01B1B2 06:B1A2: 0A        ASL                                                 ;
C - - - - - 0x01B1B3 06:B1A3: 18        CLC                                                 ;
C - - - - - 0x01B1B4 06:B1A4: 65 12     ADC vTempCounter12                                  ; *10
C - - - - - 0x01B1B6 06:B1A6: A8        TAY                                                 ; {0x00, 0x0A, 0x14, 0x1E, 0x28}
C - - - - - 0x01B1B7 06:B1A7: A2 05     LDX #$05                                            ; set loop counter
bra_B1A9_loop:                                                                              ; loop by x (5 times)
C - - - - - 0x01B1B9 06:B1A9: B9 36 81  LDA tbl_briefcases_positions,Y                      ;
C - - - - - 0x01B1BC 06:B1AC: 9D AA 03  STA vItemPosY,X                                     ; store Y-position
C - - - - - 0x01B1BF 06:B1AF: C8        INY                                                 ; 2 of 2
C - - - - - 0x01B1C0 06:B1B0: B9 36 81  LDA tbl_briefcases_positions,Y                      ;
C - - - - - 0x01B1C3 06:B1B3: 9D B6 03  STA vItemPosXLow,X                                  ; store X-position
C - - - - - 0x01B1C6 06:B1B6: A9 00     LDA #$00
C - - - - - 0x01B1C8 06:B1B8: 9D BC 03  STA vItemPosXHigh,X
C - - - - - 0x01B1CB 06:B1BB: A9 03     LDA #$03                                            ; CONSTANT - 3 shoots
C - - - - - 0x01B1CD 06:B1BD: 9D A4 03  STA vBriefcaseHitCount - 1,X                        ;
C - - - - - 0x01B1D0 06:B1C0: C8        INY                                                 ; 1 of 2 again
C - - - - - 0x01B1D1 06:B1C1: CA        DEX                                                 ; decrement loop counter
C - - - - - 0x01B1D2 06:B1C2: D0 E5     BNE bra_B1A9_loop                                   ; If Register X != 0
C - - - - - 0x01B1D4 06:B1C4: A5 5E     LDA v_no_level                                      ;
C - - - - - 0x01B1D6 06:B1C6: 0A        ASL                                                 ; *2, because RAM address contains 2 bytes
C - - - - - 0x01B1D7 06:B1C7: A8        TAY                                                 ;
C - - - - - 0x01B1D8 06:B1C8: B9 2E 81  LDA tbl_ptr_briefcases_indexes_on_the_level,Y       ;
C - - - - - 0x01B1DB 06:B1CB: 85 12     STA ram_0012                                        ; Low address
C - - - - - 0x01B1DD 06:B1CD: B9 2F 81  LDA tbl_ptr_briefcases_indexes_on_the_level + 1,Y   ;
C - - - - - 0x01B1E0 06:B1D0: 85 13     STA ram_0013                                        ; High address
C - - - - - 0x01B1E2 06:B1D2: A5 B7     LDA vRoomExtraInfo                                  ;
C - - - - - 0x01B1E4 06:B1D4: 0A        ASL                                                 ;
C - - - - - 0x01B1E5 06:B1D5: 0A        ASL                                                 ;
C - - - - - 0x01B1E6 06:B1D6: 18        CLC                                                 ;
C - - - - - 0x01B1E7 06:B1D7: 65 B7     ADC vRoomExtraInfo                                  ; *5, total briefcases is 5
C - - - - - 0x01B1E9 06:B1D9: A8        TAY                                                 ; Y <~ vRoomExtraInfo * 5
C - - - - - 0x01B1EA 06:B1DA: A2 05     LDX #$05                                            ; set loop counter
@bra_B1DC_loop:                                                                             ; loop by x (5 times)
C - - - - - 0x01B1EC 06:B1DC: 84 11     STY vTempCounter11                                  ; caches y
C - - - - - 0x01B1EE 06:B1DE: B1 12     LDA (ram_0012),Y                                    ;
C - - - - - 0x01B1F0 06:B1E0: 9D 98 03  STA v_briefcase_index,X                             ;
C - - - - - 0x01B1F3 06:B1E3: F0 0A     BEQ @bra_B1EF_no_exist                              ; If the index == 0x00
C - - - - - 0x01B1F5 06:B1E5: A8        TAY                                                 ;
C - - - - - 0x01B1F6 06:B1E6: B9 19 02  LDA vArrayWhiteBriefcase,Y                          ; load briefcase flags by index
C - - - - - 0x01B1F9 06:B1E9: 30 04     BMI @bra_B1EF_no_exist                              ; Go to branch, if the briefcase item is collected
C - - - - - 0x01B1FB 06:B1EB: A9 C0     LDA #$C0                                            ; CONSTANT: The item is in the briefcase, i.e. it's hidden
C - - - - - 0x01B1FD 06:B1ED: D0 02     BNE @bra_B1F1_skip                                  ; Always true

@bra_B1EF_no_exist:
C - - - - - 0x01B1FF 06:B1EF: A9 00     LDA #$00                                            ; CONSTANT: the item is collected
@bra_B1F1_skip:
C - - - - - 0x01B201 06:B1F1: 9D 9E 03  STA vItemStatus,X                                   ; prepare memory for render briefcase
C - - - - - 0x01B204 06:B1F4: A4 11     LDY vTempCounter11                                  ; restore y from the cache
C - - - - - 0x01B206 06:B1F6: C8        INY                                                 ; increments the index
C - - - - - 0x01B207 06:B1F7: CA        DEX                                                 ; decrement loop counter
C - - - - - 0x01B208 06:B1F8: D0 E2     BNE @bra_B1DC_loop                                  ; If Register X != 0
C - - - - - 0x01B20A 06:B1FA: 60        RTS                                                 ;

loc_B1FB_rifle:
C D 1 - - - 0x01B20B 06:B1FB: C6 73     DEC vRifleFireCounter                                ; updates a counter
C - - - - - 0x01B20D 06:B1FD: D0 0F     BNE bra_B20E_skip                                    ; If the counter > 0x00
C - - - - - 0x01B20F 06:B1FF: C6 72     DEC vRifleShotCount                                  ; updates a shot count
C - - - - - 0x01B211 06:B201: D0 03     BNE bra_B206_skip                                    ; If the counter > 0x00
C - - - - - 0x01B213 06:B203: 20 EE CD  JSR sub_CDEE_deactivate_activable_items_after_damage ;
bra_B206_skip:
C - - - - - 0x01B216 06:B206: 20 63 DF  JSR sub_DF63_update_character_status                 ;
C - - - - - 0x01B219 06:B209: A2 00     LDX #$00                                             ; prepares the offset of the sprite address (the frame with rifle by default)
C - - - - - 0x01B21B 06:B20B: 4C C2 DB  JMP loc_DBC2_before_rendering                        ;

bra_B20E_skip:
C - - - - - 0x01B21E 06:B20E: A5 73     LDA vRifleFireCounter                ;
C - - - - - 0x01B220 06:B210: C9 20     CMP #$20                             ; CONSTANT - after weapon recoiling
C - - - - - 0x01B222 06:B212: 90 F2     BCC bra_B206_skip                    ; If the counter value < 0x20
C - - - - - 0x01B224 06:B214: 20 F1 DC  JSR sub_DCF1_reset_velocity          ;
C - - - - - 0x01B227 06:B217: A5 6C     LDA vChrStatus                       ;
C - - - - - 0x01B229 06:B219: 6A        ROR                                  ;
C - - - - - 0x01B22A 06:B21A: 90 06     BCC bra_B222_right                   ; If the character is looking to the right
C - - - - - 0x01B22C 06:B21C: 20 E5 DC  JSR sub_DCE5_try_move_on_the_right   ;
C - - - - - 0x01B22F 06:B21F: 4C 25 B2  JMP loc_B225_continue                ;

bra_B222_right:
C - - - - - 0x01B232 06:B222: 20 B1 DC  JSR sub_DCB1_try_move_on_the_left    ;
loc_B225_continue:
C D 1 - - - 0x01B235 06:B225: A2 10     LDX #$10                             ; prepares the offset of the sprite address (the shot frame #1)
C - - - - - 0x01B237 06:B227: A5 73     LDA vRifleFireCounter                ; A <~ {0x20, 0x21, ..., 0x2F}
C - - - - - 0x01B239 06:B229: 29 0F     AND #$0F                             ; filters by mask
C - - - - - 0x01B23B 06:B22B: C9 08     CMP #$08                             ; CONSTANT - 'weapon recoil' value (1 of 2 frames)
C - - - - - 0x01B23D 06:B22D: B0 02     BCS @bra_B231_skip                   ; If second half of byte >= 0x08
C - - - - - 0x01B23F 06:B22F: A2 14     LDX #$14                             ; prepares the offset of the sprite address (the shot frame #2)
@bra_B231_skip:
C - - - - - 0x01B241 06:B231: 4C C2 DB  JMP loc_DBC2_before_rendering        ;

; In: Register A - a message number
loc_B234_add_message:
sub_B234_add_message:
C D 1 - - - 0x01B244 06:B234: 48        PHA                           ; store a
C - - - - - 0x01B245 06:B235: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2 ; bank FF
C - - - - - 0x01B248 06:B238: 68        PLA                           ; restore a
C - - - - - 0x01B249 06:B239: 0A        ASL                           ; *2
C - - - - - 0x01B24A 06:B23A: A8        TAY                           ;
C - - - - - 0x01B24B 06:B23B: B9 00 80  LDA tbl_messages,Y            ; Load messages (low address)
C - - - - - 0x01B24E 06:B23E: 85 CB     STA v_low_vram_msg_address    ; Store a low address
C - - - - - 0x01B250 06:B240: B9 01 80  LDA tbl_messages + 1,Y        ; Load messages (high address)
C - - - - - 0x01B253 06:B243: 29 1F     AND #$1F                      ;
C - - - - - 0x01B255 06:B245: 85 CC     STA v_hign_vram_msg_address   ; Store a high address
C - - - - - 0x01B257 06:B247: A9 80     LDA #$80                      ; CONSTANT - the message is typing
C - - - - - 0x01B259 06:B249: 85 C8     STA vMessageInProgress        ;
C - - - - - 0x01B25B 06:B24B: A9 00     LDA #$00                      ;
C - - - - - 0x01B25D 06:B24D: 85 CA     STA vMessageCounter           ; resets the counter
C - - - - - 0x01B25F 06:B24F: 85 C9     STA v_letter_offset           ; in 0
C - - - - - 0x01B261 06:B251: 60        RTS                           ;

bra_B252_return:
C - - - - - 0x01B262 06:B252: 4C 71 C3  JMP loc_C371_update_palette

loc_B255_display_message_by_letter:
C D 1 - - - 0x01B265 06:B255: A5 C8     LDA vMessageInProgress ;
C - - - - - 0x01B267 06:B257: F0 F9     BEQ bra_B252_return    ; If vMessageInProgress == 0x00
C - - - - - 0x01B269 06:B259: E6 CA     INC vMessageCounter    ; increments vMessageCounter
C - - - - - 0x01B26B 06:B25B: A5 CA     LDA vMessageCounter    ;
C - - - - - 0x01B26D 06:B25D: 29 03     AND #$03               ; set the frequency of displaying the letter
C - - - - - 0x01B26F 06:B25F: D0 F1     BNE bra_B252_return    ; If Register A == 0x00
C - - - - - 0x01B271 06:B261: 20 BE B2  JSR sub_B2BE_switch_messages_ppu_banks
C - - - - - 0x01B274 06:B264: A4 C9     LDY v_letter_offset
C - - - - - 0x01B276 06:B266: 20 DB B2  JSR sub_B2DB_prepare_letter_address
loc_B269:
C D 1 - - - 0x01B279 06:B269: C9 FC     CMP #$FC
C - - - - - 0x01B27B 06:B26B: 90 1E     BCC bra_B28B_skip
C - - - - - 0x01B27D 06:B26D: C9 FE     CMP #$FE ; CONSTANT - Tile 'A new paragraph'.
C - - - - - 0x01B27F 06:B26F: D0 15     BNE bra_B286_finish ; If letter isn't a new paragraph
C - - - - - 0x01B281 06:B271: C8        INY
C - - - - - 0x01B282 06:B272: AD 07 20  LDA PPU_DATA ; Increments address
C - - - - - 0x01B285 06:B275: 85 CF     STA v_low_msg_ppu_address
C - - - - - 0x01B287 06:B277: C8        INY
C - - - - - 0x01B288 06:B278: AD 07 20  LDA PPU_DATA ; Increments address
C - - - - - 0x01B28B 06:B27B: 85 D0     STA v_high_msg_ppu_address
C - - - - - 0x01B28D 06:B27D: C8        INY
C - - - - - 0x01B28E 06:B27E: 84 C9     STY v_letter_offset
C - - - - - 0x01B290 06:B280: AD 07 20  LDA PPU_DATA ; Increments address
C - - - - - 0x01B293 06:B283: 4C 69 B2  JMP loc_B269

bra_B286_finish:
C - - - - - 0x01B296 06:B286: A9 00     LDA #$00               ; CONSTANT - the message is typed
C - - - - - 0x01B298 06:B288: 85 C8     STA vMessageInProgress ;
C - - - - - 0x01B29A 06:B28A: 60        RTS

; Params:
; Register A - tile (a number)
bra_B28B_skip:
C - - - - - 0x01B29B 06:B28B: E6 C9     INC v_letter_offset
C - - - - - 0x01B29D 06:B28D: D0 02     BNE @bra_B291_skip
- - - - - - 0x01B29F 06:B28F: E6        .byte $E6   ; 
- - - - - - 0x01B2A0 06:B290: C8        .byte $C8   ; 
@bra_B291_skip:
C - - - - - 0x01B2A1 06:B291: A2 00     LDX #$00
C - - - - - 0x01B2A3 06:B293: C9 80     CMP #$80
C - - - - - 0x01B2A5 06:B295: 90 0A     BCC bra_B2A1_skip ; If Register A >= 0x80
C - - - - - 0x01B2A7 06:B297: A2 7E     LDX #$7E
C - - - - - 0x01B2A9 06:B299: C9 C0     CMP #$C0
C - - - - - 0x01B2AB 06:B29B: 90 02     BCC bra_B29F_skip ; If Register A >= 0xC0
C - - - - - 0x01B2AD 06:B29D: A2 7F     LDX #$7F
bra_B29F_skip:
C - - - - - 0x01B2AF 06:B29F: 29 3F     AND #$3F
bra_B2A1_skip:
C - - - - - 0x01B2B1 06:B2A1: 8E 33 06  STX vPpuBufferData
C - - - - - 0x01B2B4 06:B2A4: 8D 34 06  STA ram_0634
C - - - - - 0x01B2B7 06:B2A7: A5 CF     LDA v_low_msg_ppu_address
C - - - - - 0x01B2B9 06:B2A9: 8D 30 06  STA vLowPpuAddress
C - - - - - 0x01B2BC 06:B2AC: A5 D0     LDA v_high_msg_ppu_address
C - - - - - 0x01B2BE 06:B2AE: 8D 31 06  STA vHighPpuAddress
C - - - - - 0x01B2C1 06:B2B1: A9 82     LDA #$82
C - - - - - 0x01B2C3 06:B2B3: 8D 32 06  STA vPpuBufferCount
C - - - - - 0x01B2C6 06:B2B6: E6 CF     INC v_low_msg_ppu_address
C - - - - - 0x01B2C8 06:B2B8: A9 50     LDA #$50                      ; typing sound
C - - - - - 0x01B2CA 06:B2BA: 4C 20 C4  JMP loc_C420_add_sound_effect

- - - - - - 0x01B2CD 06:B2BD: 60        .byte $60   ; 

sub_B2BE_switch_messages_ppu_banks:
C - - - - - 0x01B2CE 06:B2BE: A2 00     LDX #$00
C - - - - - 0x01B2D0 06:B2C0: A9 1A     LDA #$1A
C - - - - - 0x01B2D2 06:B2C2: 8E 00 80  STX MMC3_Bank_select
C - - - - - 0x01B2D5 06:B2C5: 8D 01 80  STA MMC3_Bank_data ; Select 2 KB CHR bank at PPU $0000-$07FF (first half of the left pattern table)
C - - - - - 0x01B2D8 06:B2C8: E8        INX
C - - - - - 0x01B2D9 06:B2C9: A9 1C     LDA #$1C
C - - - - - 0x01B2DB 06:B2CB: 8E 00 80  STX MMC3_Bank_select
C - - - - - 0x01B2DE 06:B2CE: 8D 01 80  STA MMC3_Bank_data ; Select 2 KB CHR bank at PPU $0800-$0FFF (second half of the left pattern table)
C - - - - - 0x01B2E1 06:B2D1: E8        INX
C - - - - - 0x01B2E2 06:B2D2: A9 1E     LDA #$1E
C - - - - - 0x01B2E4 06:B2D4: 8E 00 80  STX MMC3_Bank_select
C - - - - - 0x01B2E7 06:B2D7: 8D 01 80  STA MMC3_Bank_data ; Select 1 KB CHR bank at PPU $1000-$13FF (first quarter of the right pattern table)
C - - - - - 0x01B2EA 06:B2DA: 60        RTS

sub_B2DB_prepare_letter_address:
C - - - - - 0x01B2EB 06:B2DB: AD 02 20  LDA PPU_STATUS ; ; Reset PPU Address
C - - - - - 0x01B2EE 06:B2DE: 98        TYA
C - - - - - 0x01B2EF 06:B2DF: 18        CLC
C - - - - - 0x01B2F0 06:B2E0: 65 CB     ADC v_low_vram_msg_address
C - - - - - 0x01B2F2 06:B2E2: 48        PHA
C - - - - - 0x01B2F3 06:B2E3: A5 CC     LDA v_hign_vram_msg_address
C - - - - - 0x01B2F5 06:B2E5: 69 00     ADC #$00
C - - - - - 0x01B2F7 06:B2E7: 8D 06 20  STA PPU_ADDRESS
C - - - - - 0x01B2FA 06:B2EA: 68        PLA
C - - - - - 0x01B2FB 06:B2EB: 8D 06 20  STA PPU_ADDRESS
C - - - - - 0x01B2FE 06:B2EE: 4C FC B2  JMP @loc_B2FC_skip

- - - - - - 0x01B301 06:B2F1: AD 02 20  LDA PPU_STATUS ; not used ???
- - - - - - 0x01B304 06:B2F4: A9 00     LDA #$00  ; not used ???
- - - - - - 0x01B306 06:B2F6: 8D 06 20  STA PPU_ADDRESS ; not used ???
- - - - - - 0x01B309 06:B2F9: 8C 06 20  STY PPU_ADDRESS ; not used ???
@loc_B2FC_skip:
C D 1 - - - 0x01B30C 06:B2FC: AD 07 20  LDA PPU_DATA    ; Increments address
C - - - - - 0x01B30F 06:B2FF: AD 07 20  LDA PPU_DATA    ; Increments address
C - - - - - 0x01B312 06:B302: 60        RTS             ;

; In: Register X - a room number
sub_B303:
C - - - - - 0x01B313 06:B303: BD 00 05  LDA vRooms,X
C - - - - - 0x01B316 06:B306: 09 B0     ORA #$B0
C - - - - - 0x01B318 06:B308: 9D 00 05  STA vRooms,X
C - - - - - 0x01B31B 06:B30B: 60        RTS

sub_B30C:
C - - - - - 0x01B31C 06:B30C: A0 00     LDY #$00
C - - - - - 0x01B31E 06:B30E: A5 BC     LDA vRoomCurrentIndex
C - - - - - 0x01B320 06:B310: C5 60     CMP ram_0060
C - - - - - 0x01B322 06:B312: F0 01     BEQ @bra_B315_skip
- - - - - - 0x01B324 06:B314: C8        INY
@bra_B315_skip:
C - - - - - 0x01B325 06:B315: B9 62 00  LDA ram_0062,Y
C - - - - - 0x01B328 06:B318: 60        RTS

sub_B319_hide_character_in_room:
C - - - - - 0x01B329 06:B319: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2
C - - - - - 0x01B32C 06:B31C: A0 FF     LDY #$FF
C - - - - - 0x01B32E 06:B31E: A2 00     LDX #$00
C - - - - - 0x01B330 06:B320: A5 5F     LDA vChrLiveStatus
bra_B322:
C - - - - - 0x01B332 06:B322: 4A        LSR
C - - - - - 0x01B333 06:B323: 4A        LSR
C - - - - - 0x01B334 06:B324: 48        PHA
C - - - - - 0x01B335 06:B325: 29 03     AND #$03
C - - - - - 0x01B337 06:B327: C9 01     CMP #$01
C - - - - - 0x01B339 06:B329: D0 05     BNE bra_B330_skip
C - - - - - 0x01B33B 06:B32B: C8        INY
C - - - - - 0x01B33C 06:B32C: 8A        TXA
C - - - - - 0x01B33D 06:B32D: 99 62 00  STA ram_0062,Y
bra_B330_skip:
C - - - - - 0x01B340 06:B330: 68        PLA
C - - - - - 0x01B341 06:B331: E8        INX
C - - - - - 0x01B342 06:B332: E0 03     CPX #$03
C - - - - - 0x01B344 06:B334: D0 EC     BNE bra_B322
C - - - - - 0x01B346 06:B336: 84 11     STY ram_0011
C - - - - - 0x01B348 06:B338: A6 60     LDX ram_0060
C - - - - - 0x01B34A 06:B33A: F0 03     BEQ bra_B33F
C - - - - - 0x01B34C 06:B33C: 20 03 B3  JSR sub_B303
bra_B33F:
C - - - - - 0x01B34F 06:B33F: A6 61     LDX ram_0061
C - - - - - 0x01B351 06:B341: F0 03     BEQ bra_B346
C - - - - - 0x01B353 06:B343: 20 03 B3  JSR sub_B303
bra_B346:
C - - - - - 0x01B356 06:B346: A9 00     LDA #$00
C - - - - - 0x01B358 06:B348: 85 60     STA ram_0060
C - - - - - 0x01B35A 06:B34A: 85 61     STA ram_0061
C - - - - - 0x01B35C 06:B34C: A5 5E     LDA v_no_level
C - - - - - 0x01B35E 06:B34E: 0A        ASL
C - - - - - 0x01B35F 06:B34F: A8        TAY
C - - - - - 0x01B360 06:B350: B9 08 81  LDA tbl_ptr_prison_rooms,Y
C - - - - - 0x01B363 06:B353: 85 12     STA ram_0012
C - - - - - 0x01B365 06:B355: B9 09 81  LDA tbl_ptr_prison_rooms + 1,Y
C - - - - - 0x01B368 06:B358: 85 13     STA ram_0013
C - - - - - 0x01B36A 06:B35A: A0 00     LDY #$00
C - - - - - 0x01B36C 06:B35C: A5 46     LDA vNoSubLevel
bra_B35E_loop:
C - - - - - 0x01B36E 06:B35E: D1 12     CMP (ram_0012),Y
C - - - - - 0x01B370 06:B360: 90 05     BCC bra_B367
C - - - - - 0x01B372 06:B362: C8        INY
C - - - - - 0x01B373 06:B363: C8        INY
C - - - - - 0x01B374 06:B364: C8        INY
C - - - - - 0x01B375 06:B365: D0 F7     BNE bra_B35E_loop
bra_B367:
C - - - - - 0x01B377 06:B367: C8        INY
C - - - - - 0x01B378 06:B368: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B37A 06:B36A: 85 14     STA ram_0014
C - - - - - 0x01B37C 06:B36C: C8        INY
C - - - - - 0x01B37D 06:B36D: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B37F 06:B36F: 85 15     STA ram_0015
C - - - - - 0x01B381 06:B371: A0 00     LDY #$00
C - - - - - 0x01B383 06:B373: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B385 06:B375: 85 00     STA ram_0000
C - - - - - 0x01B387 06:B377: A9 02     LDA #$02
C - - - - - 0x01B389 06:B379: 85 01     STA ram_0001
bra_B37B:
C - - - - - 0x01B38B 06:B37B: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x01B38E 06:B37E: 29 3F     AND #$3F
C - - - - - 0x01B390 06:B380: 4A        LSR
bra_B381:
C - - - - - 0x01B391 06:B381: 38        SEC
C - - - - - 0x01B392 06:B382: E5 00     SBC ram_0000
C - - - - - 0x01B394 06:B384: B0 FB     BCS bra_B381
C - - - - - 0x01B396 06:B386: 65 00     ADC ram_0000
C - - - - - 0x01B398 06:B388: A8        TAY
C - - - - - 0x01B399 06:B389: C8        INY
C - - - - - 0x01B39A 06:B38A: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B39C 06:B38C: AA        TAX
C - - - - - 0x01B39D 06:B38D: BD 00 05  LDA vRooms,X
C - - - - - 0x01B3A0 06:B390: 29 B4     AND #$B4
C - - - - - 0x01B3A2 06:B392: C9 B0     CMP #$B0
C - - - - - 0x01B3A4 06:B394: F0 04     BEQ bra_B39A_skip
C - - - - - 0x01B3A6 06:B396: C9 B4     CMP #$B4
C - - - - - 0x01B3A8 06:B398: D0 E1     BNE bra_B37B
bra_B39A_skip:
C - - - - - 0x01B3AA 06:B39A: 29 1F     AND #$1F
C - - - - - 0x01B3AC 06:B39C: 9D 00 05  STA vRooms,X
C - - - - - 0x01B3AF 06:B39F: A4 11     LDY ram_0011
C - - - - - 0x01B3B1 06:B3A1: 8A        TXA
C - - - - - 0x01B3B2 06:B3A2: 99 60 00  STA ram_0060,Y
C - - - - - 0x01B3B5 06:B3A5: C6 11     DEC ram_0011
C - - - - - 0x01B3B7 06:B3A7: 10 D2     BPL bra_B37B
C - - - - - 0x01B3B9 06:B3A9: 60        RTS

sub_B3AA:
C - - - - - 0x01B3BA 06:B3AA: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2 ; bank FF
C - - - - - 0x01B3BD 06:B3AD: A5 5E     LDA v_no_level
C - - - - - 0x01B3BF 06:B3AF: 0A        ASL
C - - - - - 0x01B3C0 06:B3B0: A8        TAY
C - - - - - 0x01B3C1 06:B3B1: B9 00 81  LDA tbl_ptr_rooms_with_NPCs,Y
C - - - - - 0x01B3C4 06:B3B4: 85 14     STA ram_0014
C - - - - - 0x01B3C6 06:B3B6: B9 01 81  LDA tbl_ptr_rooms_with_NPCs + 1,Y
C - - - - - 0x01B3C9 06:B3B9: 85 15     STA ram_0015
C - - - - - 0x01B3CB 06:B3BB: A5 B9     LDA ram_00B9
C - - - - - 0x01B3CD 06:B3BD: 29 03     AND #$03
C - - - - - 0x01B3CF 06:B3BF: D0 15     BNE bra_B3D6_skip
C - - - - - 0x01B3D1 06:B3C1: 20 0C B3  JSR sub_B30C
C - - - - - 0x01B3D4 06:B3C4: 0A        ASL
C - - - - - 0x01B3D5 06:B3C5: A8        TAY
C - - - - - 0x01B3D6 06:B3C6: B9 10 81  LDA $8110,Y
C - - - - - 0x01B3D9 06:B3C9: 85 12     STA ram_0012
C - - - - - 0x01B3DB 06:B3CB: B9 11 81  LDA $8111,Y
C - - - - - 0x01B3DE 06:B3CE: 85 13     STA ram_0013
C - - - - - 0x01B3E0 06:B3D0: 20 49 B5  JSR sub_B549
C - - - - - 0x01B3E3 06:B3D3: 4C E3 B3  JMP loc_B3E3

; Params:
; ram_0014-ram_0015 - tbl_ptr_roomsX_with_NPCs
bra_B3D6_skip:
C - - - - - 0x01B3E6 06:B3D6: A5 B8     LDA vRoomExtraInfoCache                  ; puts the index of NPC (every level)
C - - - - - 0x01B3E8 06:B3D8: 0A        ASL                                      ;
C - - - - - 0x01B3E9 06:B3D9: A8        TAY                                      ; *2, because RAM address contains 2 bytes
C - - - - - 0x01B3EA 06:B3DA: B1 14     LDA (ram_0014),Y                         ;
C - - - - - 0x01B3EC 06:B3DC: 85 12     STA ram_0012                             ; high address - tbl_ptr_roomsX_X_with_NPCs
C - - - - - 0x01B3EE 06:B3DE: C8        INY                                      ;
C - - - - - 0x01B3EF 06:B3DF: B1 14     LDA (ram_0014),Y                         ;
C - - - - - 0x01B3F1 06:B3E1: 85 13     STA ram_0013                             ; low address - tbl_ptr_roomsX_X_with_NPCs
loc_B3E3:
C D 1 - - - 0x01B3F3 06:B3E3: 20 EB B4  JSR sub_B4EB_prepare_npc_sprite_in_room
C - - - - - 0x01B3F6 06:B3E6: A5 C8     LDA vMessageInProgress                   ;
C - - - - - 0x01B3F8 06:B3E8: D0 27     BNE bra_B411_skip                        ; If vMessageInProgress != 0x00 (no message)
C - - - - - 0x01B3FA 06:B3EA: 24 41     BIT vNPCMessageStatus
C - - - - - 0x01B3FC 06:B3EC: 70 23     BVS bra_B411_skip
C - - - - - 0x01B3FE 06:B3EE: 20 3E FC  JSR sub_FC3E_boss_defeated_status        ;
C - - - - - 0x01B401 06:B3F1: F0 0F     BEQ bra_B402_skip                        ; If The boss isn't defeated
C - - - - - 0x01B403 06:B3F3: A9 03     LDA #BIT_BUTTON_B_OR_A                   ;
C - - - - - 0x01B405 06:B3F5: 20 79 D0  JSR sub_D079_check_button_press          ; bank FF
C - - - - - 0x01B408 06:B3F8: F0 17     BEQ bra_B411_skip                        ; Go to the branch If the buttons 'A' or 'B' aren't pressed
C - - - - - 0x01B40A 06:B3FA: A5 41     LDA vNPCMessageStatus
C - - - - - 0x01B40C 06:B3FC: C9 06     CMP #$06
C - - - - - 0x01B40E 06:B3FE: 90 08     BCC bra_B408
C - - - - - 0x01B410 06:B400: B0 65     BCS bra_B467_finish_level                ; Always true

bra_B402_skip:
C - - - - - 0x01B412 06:B402: A9 60     LDA #$60
C - - - - - 0x01B414 06:B404: C5 64     CMP vScreenChrPosX
C - - - - - 0x01B416 06:B406: B0 09     BCS bra_B411_skip
bra_B408:
C - - - - - 0x01B418 06:B408: A9 40     LDA #$40
C - - - - - 0x01B41A 06:B40A: 20 80 B4  JSR sub_B480_plus_npc_msg_status
C - - - - - 0x01B41D 06:B40D: A9 04     LDA #$04
C - - - - - 0x01B41F 06:B40F: 85 30     STA vClearMessageCounter
bra_B411_skip:
C - - - - - 0x01B421 06:B411: A5 C8     LDA ram_00C8
C - - - - - 0x01B423 06:B413: D0 4E     BNE bra_B463_RTS
C - - - - - 0x01B425 06:B415: 24 41     BIT vNPCMessageStatus
C - - - - - 0x01B427 06:B417: 30 4E     BMI bra_B467_finish_level
C - - - - - 0x01B429 06:B419: 50 48     BVC bra_B463_RTS
C - - - - - 0x01B42B 06:B41B: A5 30     LDA vClearMessageCounter
C - - - - - 0x01B42D 06:B41D: F0 03     BEQ bra_B422_skip
C - - - - - 0x01B42F 06:B41F: 4C 6D B5  JMP loc_B56D_clear_npc_message      ;

bra_B422_skip:
C - - - - - 0x01B432 06:B422: A9 BF     LDA #$BF
C - - - - - 0x01B434 06:B424: 20 85 B4  JSR sub_B485_minus_npc_msg_status
C - - - - - 0x01B437 06:B427: A5 41     LDA vNPCMessageStatus
C - - - - - 0x01B439 06:B429: 29 0F     AND #$0F
C - - - - - 0x01B43B 06:B42B: A8        TAY
C - - - - - 0x01B43C 06:B42C: 84 11     STY v_cache_reg_y
C - - - - - 0x01B43E 06:B42E: 20 8A B4  JSR sub_B48A_prepare_npc_portrait_render_params_
C - - - - - 0x01B441 06:B431: A4 11     LDY v_cache_reg_y
C - - - - - 0x01B443 06:B433: C8        INY                                              ; 2 of NPC bytes
C - - - - - 0x01B444 06:B434: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B446 06:B436: 20 8C B5  JSR sub_B58C                                     ; 3,4,... of NPC bytes
C - - - - - 0x01B449 06:B439: E6 41     INC vNPCMessageStatus
C - - - - - 0x01B44B 06:B43B: E6 41     INC vNPCMessageStatus
C - - - - - 0x01B44D 06:B43D: E6 41     INC vNPCMessageStatus
C - - - - - 0x01B44F 06:B43F: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B451 06:B441: 48        PHA
C - - - - - 0x01B452 06:B442: 30 1B     BMI bra_B45F_skip
C - - - - - 0x01B454 06:B444: A9 80     LDA #$80
C - - - - - 0x01B456 06:B446: 20 80 B4  JSR sub_B480_plus_npc_msg_status
C - - - - - 0x01B459 06:B449: A5 B9     LDA ram_00B9
C - - - - - 0x01B45B 06:B44B: 29 03     AND #$03
C - - - - - 0x01B45D 06:B44D: D0 10     BNE bra_B45F_skip
C - - - - - 0x01B45F 06:B44F: 20 0C B3  JSR sub_B30C
C - - - - - 0x01B462 06:B452: AA        TAX
C - - - - - 0x01B463 06:B453: A5 5F     LDA vChrLiveStatus
C - - - - - 0x01B465 06:B455: 1D 64 B4  ORA tbl_rescue_character,X
C - - - - - 0x01B468 06:B458: 85 5F     STA vChrLiveStatus
C - - - - - 0x01B46A 06:B45A: B6 60     LDX ram_0060,Y
C - - - - - 0x01B46C 06:B45C: 20 03 B3  JSR sub_B303
bra_B45F_skip:
C - - - - - 0x01B46F 06:B45F: 68        PLA
C - - - - - 0x01B470 06:B460: 4C 34 B2  JMP loc_B234_add_message

bra_B463_RTS:
C - - - - - 0x01B473 06:B463: 60        RTS

tbl_rescue_character:
- D 1 - - - 0x01B474 06:B464: 0C        .byte $0C   ; Lupin
- D 1 - - - 0x01B475 06:B465: 30        .byte $30   ; Jigen
- D 1 - - - 0x01B476 06:B466: C0        .byte $C0   ; Goemon

bra_B467_finish_level:
C - - - - - 0x01B477 06:B467: 20 3E FC  JSR sub_FC3E_boss_defeated_status  ;
C - - - - - 0x01B47A 06:B46A: F0 F7     BEQ bra_B463_RTS                   ; If The boss isn't defeated
C - - - - - 0x01B47C 06:B46C: A5 C8     LDA vMessageInProgress             ;
C - - - - - 0x01B47E 06:B46E: D0 F3     BNE bra_B463_RTS                   ; If the message is typing
C - - - - - 0x01B480 06:B470: A5 39     LDA vGameInterruptEvent            ;
C - - - - - 0x01B482 06:B472: 30 EF     BMI bra_B463_RTS                   ; If the game interrupt is exist
C - - - - - 0x01B484 06:B474: A9 03     LDA #BIT_BUTTON_B_OR_A             ;
C - - - - - 0x01B486 06:B476: 20 79 D0  JSR sub_D079_check_button_press    ; bank FF
C - - - - - 0x01B489 06:B479: F0 E8     BEQ bra_B463_RTS                   ; Go to the branch If the buttons 'A' or 'B' aren't pressed
C - - - - - 0x01B48B 06:B47B: A9 E0     LDA #$E0                           ; CONSTANT - to next level
C - - - - - 0x01B48D 06:B47D: 85 39     STA vGameInterruptEvent            ;
C - - - - - 0x01B48F 06:B47F: 60        RTS                                ;

; In: Register A - an adding value
sub_B480_plus_npc_msg_status:
C - - - - - 0x01B490 06:B480: 05 41     ORA vNPCMessageStatus
C - - - - - 0x01B492 06:B482: 85 41     STA vNPCMessageStatus
C - - - - - 0x01B494 06:B484: 60        RTS

; In: Register A - a subtrahend value
sub_B485_minus_npc_msg_status:
C - - - - - 0x01B495 06:B485: 25 41     AND vNPCMessageStatus
C - - - - - 0x01B497 06:B487: 85 41     STA vNPCMessageStatus
C - - - - - 0x01B499 06:B489: 60        RTS

; In: [$0012,$0013] - the address where an index of tbl_npc_portrait_set is contained
; In: Register Y (0x0X) - npc_message_status
sub_B48A_prepare_npc_portrait_render_params_:
C - - - - - 0x01B49A 06:B48A: A9 00     LDA #$00
C - - - - - 0x01B49C 06:B48C: 85 00     STA ram_0000
C - - - - - 0x01B49E 06:B48E: C0 00     CPY #$00
C - - - - - 0x01B4A0 06:B490: F0 06     BEQ bra_B498_skip
C - - - - - 0x01B4A2 06:B492: A5 5F     LDA vChrLiveStatus
C - - - - - 0x01B4A4 06:B494: 29 03     AND #$03
C - - - - - 0x01B4A6 06:B496: 85 00     STA ram_0000
; In: [$0012,$0013] - the address where an index of tbl_npc_portrait_set is contained
; In: Register Y - an offset for [$0012,$0013]
; In: $0000 - the index offset for tbl_npc_portrait_set
bra_B498_skip:
sub_B498_prepare_npc_portrait_render_params_ex:
C - - - - - 0x01B4A8 06:B498: B1 12     LDA (ram_0012),Y                ;
C - - - - - 0x01B4AA 06:B49A: 18        CLC                             ;
C - - - - - 0x01B4AB 06:B49B: 65 00     ADC ram_0000                    ; A <~ an index of tbl_npc_portrait_set
C - - - - - 0x01B4AD 06:B49D: 85 00     STA ram_0000                    ;
C - - - - - 0x01B4AF 06:B49F: 0A        ASL                             ;
C - - - - - 0x01B4B0 06:B4A0: 0A        ASL                             ;
C - - - - - 0x01B4B1 06:B4A1: 18        CLC                             ;
C - - - - - 0x01B4B2 06:B4A2: 65 00     ADC ram_0000                    ;
C - - - - - 0x01B4B4 06:B4A4: AA        TAX                             ; X <~ 5 * A, because the set of 5th bytes
C - - - - - 0x01B4B5 06:B4A5: BD 69 81  LDA tbl_npc_portrait_set + 1,X  ;
C - - - - - 0x01B4B8 06:B4A8: 8D 0D 06  STA vCachePalette + 13          ; assigns a color #1
C - - - - - 0x01B4BB 06:B4AB: BD 6A 81  LDA tbl_npc_portrait_set + 2,X  ;
C - - - - - 0x01B4BE 06:B4AE: 8D 0E 06  STA vCachePalette + 14          ; assigns a color #2
C - - - - - 0x01B4C1 06:B4B1: BD 6B 81  LDA tbl_npc_portrait_set + 3,X  ;
C - - - - - 0x01B4C4 06:B4B4: 8D 0F 06  STA vCachePalette + 15          ; assigns a color #3
C - - - - - 0x01B4C7 06:B4B7: BD 6C 81  LDA tbl_npc_portrait_set + 4,X  ;
C - - - - - 0x01B4CA 06:B4BA: 8D B6 06  STA vChrBankData                ; assigns CHR Bank data
C - - - - - 0x01B4CD 06:B4BD: BD 68 81  LDA tbl_npc_portrait_set,X      ; A <~ NPC Model
C - - - - - 0x01B4D0 06:B4C0: 0A        ASL                             ;
C - - - - - 0x01B4D1 06:B4C1: 0A        ASL                             ;
C - - - - - 0x01B4D2 06:B4C2: 85 00     STA ram_0000                    ;
C - - - - - 0x01B4D4 06:B4C4: 0A        ASL                             ;
C - - - - - 0x01B4D5 06:B4C5: 18        CLC                             ;
C - - - - - 0x01B4D6 06:B4C6: 65 00     ADC ram_0000                    ;
C - - - - - 0x01B4D8 06:B4C8: AA        TAX                             ; X <~ 12 * A
C - - - - - 0x01B4D9 06:B4C9: A0 00     LDY #$00                        ; set loop counter
@bra_B4CB_loop:                                                         ; loop by y (12 times)
C - - - - - 0x01B4DB 06:B4CB: BD 2A 83  LDA tbl_npc_portrait_sprites,X  ;
C - - - - - 0x01B4DE 06:B4CE: 99 33 06  STA vPpuBufferData,Y            ; store a tile number X
C - - - - - 0x01B4E1 06:B4D1: E8        INX                             ; next data
C - - - - - 0x01B4E2 06:B4D2: C8        INY                             ; decrement loop counter
C - - - - - 0x01B4E3 06:B4D3: C0 0C     CPY #$0C                        ; CONSTANT - the number of the sprites
C - - - - - 0x01B4E5 06:B4D5: D0 F4     BNE @bra_B4CB_loop              ; If Register Y != 0x0C
C - - - - - 0x01B4E7 06:B4D7: A9 04     LDA #$04                        ;
C - - - - - 0x01B4E9 06:B4D9: 85 54     STA vPpuBufferInitValue         ; set an initialization value
C - - - - - 0x01B4EB 06:B4DB: A9 A0     LDA #$A0                        ;
C - - - - - 0x01B4ED 06:B4DD: 8D 31 06  STA vHighPpuAddress             ;
C - - - - - 0x01B4F0 06:B4E0: A9 63     LDA #$63                        ;
C - - - - - 0x01B4F2 06:B4E2: 8D 30 06  STA vLowPpuAddress              ; PPU Address <~ $A063 (3 mode)
C - - - - - 0x01B4F5 06:B4E5: A9 0C     LDA #$0C                        ;
C - - - - - 0x01B4F7 06:B4E7: 8D 32 06  STA vPpuBufferCount             ; init count (12 tiles)
C - - - - - 0x01B4FA 06:B4EA: 60        RTS                             ;

; Params:
; ram_0012-ram_0013 - tbl_ptr_roomsX_X_with_NPCs
sub_B4EB_prepare_npc_sprite_in_room:
C - - - - - 0x01B4FB 06:B4EB: A0 00     LDY #$00
C - - - - - 0x01B4FD 06:B4ED: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B4FF 06:B4EF: 85 00     STA ram_0000 ; 1 of NPC bytes
C - - - - - 0x01B501 06:B4F1: 0A        ASL
C - - - - - 0x01B502 06:B4F2: 0A        ASL
C - - - - - 0x01B503 06:B4F3: 18        CLC
C - - - - - 0x01B504 06:B4F4: 65 00     ADC ram_0000
C - - - - - 0x01B506 06:B4F6: AA        TAX
C - - - - - 0x01B507 06:B4F7: BD 4A 82  LDA npc_sprite_set + 1,X
C - - - - - 0x01B50A 06:B4FA: 8D 19 06  STA vCachePalette + 25
C - - - - - 0x01B50D 06:B4FD: 8D 1D 06  STA vCachePalette + 29
C - - - - - 0x01B510 06:B500: BD 4B 82  LDA npc_sprite_set + 2,X
C - - - - - 0x01B513 06:B503: 8D 1A 06  STA vCachePalette + 26
C - - - - - 0x01B516 06:B506: 8D 1E 06  STA vCachePalette + 30
C - - - - - 0x01B519 06:B509: BD 4C 82  LDA npc_sprite_set + 3,X
C - - - - - 0x01B51C 06:B50C: 8D 1B 06  STA vCachePalette + 27
C - - - - - 0x01B51F 06:B50F: 8D 1F 06  STA vCachePalette + 31
C - - - - - 0x01B522 06:B512: BD 4D 82  LDA npc_sprite_set + 4,X
C - - - - - 0x01B525 06:B515: 8D B3 06  STA vCacheChrBankSelect + 4
C - - - - - 0x01B528 06:B518: 8D B4 06  STA vCacheChrBankSelect + 5
C - - - - - 0x01B52B 06:B51B: EE B4 06  INC vCacheChrBankSelect + 5
C - - - - - 0x01B52E 06:B51E: BD 49 82  LDA npc_sprite_set,X
C - - - - - 0x01B531 06:B521: 18        CLC
C - - - - - 0x01B532 06:B522: 69 84     ADC #$84
C - - - - - 0x01B534 06:B524: 85 01     STA ram_0001
C - - - - - 0x01B536 06:B526: 20 3E FC  JSR sub_FC3E_boss_defeated_status
C - - - - - 0x01B539 06:B529: F0 0F     BEQ @bra_B53A_skip
C - - - - - 0x01B53B 06:B52B: AD D7 03  LDA vCacheBossStatus
C - - - - - 0x01B53E 06:B52E: 6A        ROR
C - - - - - 0x01B53F 06:B52F: 90 04     BCC @bra_B535_skip
C - - - - - 0x01B541 06:B531: E6 01     INC ram_0001
C - - - - - 0x01B543 06:B533: E6 01     INC ram_0001
@bra_B535_skip:
C - - - - - 0x01B545 06:B535: AD D8 03  LDA vCacheBossScreenPosX      ;
C - - - - - 0x01B548 06:B538: D0 02     BNE @bra_B53C_skip            ; If Register A != 0x00
@bra_B53A_skip:
C - - - - - 0x01B54A 06:B53A: A9 80     LDA #$80                      ; ~> sprite_magic4 (X pos)
@bra_B53C_skip:
C - - - - - 0x01B54C 06:B53C: 85 03     STA ram_0003
C - - - - - 0x01B54E 06:B53E: A9 BF     LDA #$BF                      ; ~> sprite_magic1 (Y pos)
C - - - - - 0x01B550 06:B540: 85 00     STA ram_0000
C - - - - - 0x01B552 06:B542: A9 62     LDA #$62                      ; ~> sprite_magic3 (attributes)
C - - - - - 0x01B554 06:B544: 85 02     STA ram_0002                  ;
C - - - - - 0x01B556 06:B546: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

sub_B549:
C - - - - - 0x01B559 06:B549: A9 04     LDA #$04
C - - - - - 0x01B55B 06:B54B: 24 41     BIT vNPCMessageStatus
C - - - - - 0x01B55D 06:B54D: 30 08     BMI bra_B557
C - - - - - 0x01B55F 06:B54F: A9 02     LDA #$02
C - - - - - 0x01B561 06:B551: A4 30     LDY ram_0030
C - - - - - 0x01B563 06:B553: D0 02     BNE bra_B557
C - - - - - 0x01B565 06:B555: A9 00     LDA #$00
bra_B557:
C - - - - - 0x01B567 06:B557: 18        CLC
C - - - - - 0x01B568 06:B558: 69 BA     ADC #$BA
C - - - - - 0x01B56A 06:B55A: AA        TAX
C - - - - - 0x01B56B 06:B55B: A9 80     LDA #$80
C - - - - - 0x01B56D 06:B55D: 85 01     STA ram_0001
C - - - - - 0x01B56F 06:B55F: A9 BF     LDA #$BF
C - - - - - 0x01B571 06:B561: 85 00     STA ram_0000
C - - - - - 0x01B573 06:B563: A9 62     LDA #$62
C - - - - - 0x01B575 06:B565: 85 45     STA vCharacterRenderData
C - - - - - 0x01B577 06:B567: 20 5A CE  JSR sub_CE5A_render_character
C - - - - - 0x01B57A 06:B56A: 4C 4F EF  JMP loc_EF4F_switch_bank_4_p2

loc_B56D_clear_npc_message:
sub_B56D_clear_npc_message:
C D 1 - - - 0x01B57D 06:B56D: A9 01     LDA #$01                          ; CONSTANT - A full tile (with black color)
C - - - - - 0x01B57F 06:B56F: A2 14     LDX #$14                          ;
C - - - - - 0x01B581 06:B571: 8E 32 06  STX vPpuBufferCount               ; set loop counter
@bra_B574_loop:                                                           ; loop by x (21 times)
C - - - - - 0x01B584 06:B574: 9D 33 06  STA vPpuBufferData,X              ;
C - - - - - 0x01B587 06:B577: CA        DEX                               ; decrement loop counter
C - - - - - 0x01B588 06:B578: 10 FA     BPL @bra_B574_loop                ; If Register Y >= 0x00
C - - - - - 0x01B58A 06:B57A: A9 20     LDA #$20                          ;
C - - - - - 0x01B58C 06:B57C: 8D 31 06  STA vHighPpuAddress               ;
C - - - - - 0x01B58F 06:B57F: A4 30     LDY vClearMessageCounter          ;
C - - - - - 0x01B591 06:B581: B9 87 B5  LDA tbl_B587_part_address - 1,Y   ; here Y - {0x04, 0x03, 0x02, 0x01}
C - - - - - 0x01B594 06:B584: 8D 30 06  STA vLowPpuAddress                ; PPU Address <~ {$2068, $2088, $20A8, $20C8} (3 mode)
C - - - - - 0x01B597 06:B587: 60        RTS                               ;

tbl_B587_part_address:
- D 1 - - - 0x01B598 06:B588: C8        .byte $C8
- D 1 - - - 0x01B599 06:B589: A8        .byte $A8
- D 1 - - - 0x01B59A 06:B58A: 88        .byte $88
- D 1 - - - 0x01B59B 06:B58B: 68        .byte $68

sub_B58C:
C - - - - - 0x01B59C 06:B58C: 0A        ASL
C - - - - - 0x01B59D 06:B58D: AA        TAX
C - - - - - 0x01B59E 06:B58E: BD 9B B5  LDA tbl_npc_types,X
C - - - - - 0x01B5A1 06:B591: 85 02     STA ram_0002 ; Low address
C - - - - - 0x01B5A3 06:B593: BD 9C B5  LDA tbl_npc_types + 1,X
C - - - - - 0x01B5A6 06:B596: 85 03     STA ram_0003 ; High address
C - - - - - 0x01B5A8 06:B598: 6C 02 00  JMP (ram_0002)

tbl_npc_types:
- D 1 - - - 0x01B5AB 06:B59B: B4 B5     .addr loc_npc_type0  ; CPU address $B5B4
- D - - - - 0x01B5AD 06:B59D: B3 B5     .addr loc_npc_type1  ; CPU address $B5B3
- D - - - - 0x01B5AF 06:B59F: B2 B5     .addr loc_npc_type2  ; CPU address $B5B2
- D - - - - 0x01B5B1 06:B5A1: B1 B5     .addr loc_npc_type3  ; CPU address $B5B1
- D 1 - - - 0x01B5B3 06:B5A3: BE B5     .addr loc_npc_type4  ; CPU address $B5BE
- D 1 - - - 0x01B5B5 06:B5A5: B6 B5     .addr loc_npc_type5  ; CPU address $B5B6
- D 1 - - - 0x01B5B7 06:B5A7: CA B5     .addr loc_npc_type6  ; CPU address $B5CA
- D 1 - - - 0x01B5B9 06:B5A9: DD B5     .addr loc_npc_type7  ; CPU address $B5DD
- D 1 - - - 0x01B5BB 06:B5AB: D9 B5     .addr loc_npc_type8  ; CPU address $B5D9
- D 1 - - - 0x01B5BD 06:B5AD: D5 B5     .addr loc_npc_type9  ; CPU address $B5D5
- D 1 - - - 0x01B5BF 06:B5AF: F2 B5     .addr loc_npc_type10 ; CPU address $B5F2

loc_npc_type3:
C - - - - - 0x01B5C1 06:B5B1: C8        INY
loc_npc_type2:
C - - - - - 0x01B5C2 06:B5B2: C8        INY
bra_B5B3_npc_type1:
loc_npc_type1:
C D 1 - - - 0x01B5C3 06:B5B3: C8        INY
loc_npc_type0:
C - - - - - 0x01B5C4 06:B5B4: C8        INY
C - - - - - 0x01B5C5 06:B5B5: 60        RTS

loc_npc_type5:
C - - J - - 0x01B5C6 06:B5B6: AD 08 02  LDA v_ruby_ring
C - - - - - 0x01B5C9 06:B5B9: F0 F9     BEQ loc_npc_type0
C - - - - - 0x01B5CB 06:B5BB: CE 08 02  DEC v_ruby_ring
loc_npc_type4:
C - - J - - 0x01B5CE 06:B5BE: A5 5F     LDA vChrLiveStatus
C - - - - - 0x01B5D0 06:B5C0: 29 03     AND #$03 ; Get the current selected character
C - - - - - 0x01B5D2 06:B5C2: F0 EF     BEQ bra_B5B3_npc_type1 ; If the character is Lupin
C - - - - - 0x01B5D4 06:B5C4: C9 01     CMP #$01
C - - - - - 0x01B5D6 06:B5C6: F0 EA     BEQ loc_npc_type2 ; If the character is Jugen
C - - - - - 0x01B5D8 06:B5C8: D0 E7     BNE loc_npc_type3 ; If the character is Goemon
loc_npc_type6:
C - - J - - 0x01B5DA 06:B5CA: AD 08 02  LDA v_ruby_ring
C - - - - - 0x01B5DD 06:B5CD: F0 E5     BEQ loc_npc_type0
C - - - - - 0x01B5DF 06:B5CF: CE 08 02  DEC v_ruby_ring
C - - - - - 0x01B5E2 06:B5D2: 4C B3 B5  JMP loc_npc_type1

loc_npc_type9:
C - - J - - 0x01B5E5 06:B5D5: A2 4B     LDX #$4B
C - - - - - 0x01B5E7 06:B5D7: D0 06     BNE bra_B5DF
loc_npc_type8:
C - - J - - 0x01B5E9 06:B5D9: A2 44     LDX #$44
C - - - - - 0x01B5EB 06:B5DB: D0 02     BNE bra_B5DF
loc_npc_type7:
C - - J - - 0x01B5ED 06:B5DD: A2 32     LDX #$32
bra_B5DF:
C - - - - - 0x01B5EF 06:B5DF: BD 00 05  LDA vRooms,X
C - - - - - 0x01B5F2 06:B5E2: 29 08     AND #$08
C - - - - - 0x01B5F4 06:B5E4: F0 CE     BEQ loc_npc_type0
C - - - - - 0x01B5F6 06:B5E6: E0 4B     CPX #$4B
C - - - - - 0x01B5F8 06:B5E8: D0 08     BNE bra_B5F2
C - - - - - 0x01B5FA 06:B5EA: AD 6D 05  LDA ram_056D
C - - - - - 0x01B5FD 06:B5ED: 29 1F     AND #$1F
C - - - - - 0x01B5FF 06:B5EF: 8D 6D 05  STA ram_056D
bra_B5F2:
loc_npc_type10:
C - - J - - 0x01B602 06:B5F2: A6 BC     LDX vRoomCurrentIndex
C - - - - - 0x01B604 06:B5F4: BD 00 05  LDA vRooms,X
C - - - - - 0x01B607 06:B5F7: 09 08     ORA #$08
C - - - - - 0x01B609 06:B5F9: 9D 00 05  STA vRooms,X
C - - - - - 0x01B60C 06:B5FC: D0 B5     BNE bra_B5B3_npc_type1

sub_B5FE_final_scene_handler:
C - - - - - 0x01B60E 06:B5FE: A5 30     LDA vClearMessageCounter                 ;
C - - - - - 0x01B610 06:B600: F0 06     BEQ bra_B608_skip                        ; If the message panel is ready for typing
C - - - - - 0x01B612 06:B602: 20 6D B5  JSR sub_B56D_clear_npc_message           ;
C - - - - - 0x01B615 06:B605: 4C A4 B7  JMP loc_B7A4_render_Clarissa_and_Fujiko  ;

bra_B608_skip:
C - - - - - 0x01B618 06:B608: A5 D8     LDA vFinalSceneNo                  ;
C - - - - - 0x01B61A 06:B60A: 29 1F     AND #$1F                           ; filters by a mask
C - - - - - 0x01B61C 06:B60C: 20 C1 D0  JSR sub_D0C1_change_stack_pointer  ;

- D 1 - I - 0x01B61F 06:B60F: 75 B7     .addr loc_B776_begin_and_add_1st_message - 1          ; 0x00
- D 1 - I - 0x01B621 06:B611: 62 B7     .addr loc_B763_waiting_for_pressing_with_clearing - 1 ; 0x01
- D 1 - I - 0x01B623 06:B613: 6D B7     .addr loc_B76E_prepare_next_message - 1               ; 0x02
- D 1 - I - 0x01B625 06:B615: 5E B7     .addr loc_B75F_add_2nd_message - 1                    ; 0x03
- D 1 - I - 0x01B627 06:B617: 55 B6     .addr loc_B656_open_treasure - 1                      ; 0x04
- D 1 - I - 0x01B629 06:B619: FE B6     .addr loc_B6FF_phoenix_is_flighting - 1               ; 0x05
- D 1 - I - 0x01B62B 06:B61B: F4 B6     .addr loc_B6F5_add_3rd_message - 1                    ; 0x06
- D 1 - I - 0x01B62D 06:B61D: 62 B7     .addr loc_B763_waiting_for_pressing_with_clearing - 1 ; 0x07
- D 1 - I - 0x01B62F 06:B61F: EF B6     .addr loc_B6F0_add_4th_message - 1                    ; 0x08
- D 1 - I - 0x01B631 06:B621: 50 B7     .addr loc_B751_4th_message_in_progress - 1            ; 0x09
- D 1 - I - 0x01B633 06:B623: B2 B6     .addr loc_B6B3_last_cutscene_with_Clarissa - 1        ; 0x0A
- D 1 - I - 0x01B635 06:B625: E0 B6     .addr loc_B6E1_waiting_for_pressing_in_dialog - 1     ; 0x0B
- D 1 - I - 0x01B637 06:B627: D4 B6     .addr loc_B6D5_go_to_the_end_and_hiscore - 1          ; 0x0C
- D 1 - I - 0x01B639 06:B629: E0 B6     .addr loc_B6E1_waiting_for_pressing_in_dialog - 1     ; 0x0D
- D - - - - 0x01B63B 06:B62B: EE B6     .addr loc_B6EF_RTS - 1                                ; 0x0E
- D 1 - I - 0x01B63D 06:B62D: 32 B6     .addr loc_B633_add_game_over_message - 1              ; 0x0F
- D 1 - I - 0x01B63F 06:B62F: 42 B6     .addr loc_B643_waiting_for_pressing_in_game_over - 1  ; 0x10
- D - - - - 0x01B641 06:B631: EE B6     .addr loc_B6EF_RTS - 1                                ; 0x11

loc_B633_add_game_over_message:
C - - - - - 0x01B643 06:B633: A9 7B     LDA #$7B                       ; CONSTANT - the message number #7B (game over)
C - - - - - 0x01B645 06:B635: 2C F6 FF  BIT Set_features               ;
C - - - - - 0x01B648 06:B638: 70 02     BVS @bra_B63C_full             ; If it is full game version
C - - - - - 0x01B64A 06:B63A: A9 7D     LDA #$7D                       ; CONSTANT - the message number #7D (to be continued)
@bra_B63C_full:
C - - - - - 0x01B64C 06:B63C: 20 34 B2  JSR sub_B234_add_message       ;
C - - - - - 0x01B64F 06:B63F: E6 D8     INC vFinalSceneNo              ; next a scene
C - - - - - 0x01B651 06:B641: D0 0D     BNE bra_B650_render_in_the_end ; Always true (vSceneNo > 0)

loc_B643_waiting_for_pressing_in_game_over:
C - - - - - 0x01B653 06:B643: A5 C8     LDA vMessageInProgress                        ;
C - - - - - 0x01B655 06:B645: D0 09     BNE bra_B650_render_in_the_end                ; If the message is typing
C - - - - - 0x01B657 06:B647: A9 03     LDA #BIT_BUTTON_B_OR_A                        ;
C - - - - - 0x01B659 06:B649: 20 79 D0  JSR sub_D079_check_button_press               ; bank FF
C - - - - - 0x01B65C 06:B64C: F0 02     BEQ bra_B650_render_in_the_end                ; Go to the branch If the buttons 'A' or 'B' aren't pressed
C - - - - - 0x01B65E 06:B64E: E6 D8     INC vFinalSceneNo                             ; next a scene
bra_B650_render_in_the_end:
C - - - - - 0x01B660 06:B650: 20 F5 C4  JSR sub_C4F5_selectAllChrBanks                ;
C - - - - - 0x01B663 06:B653: 4C 03 C8  JMP loc_C803_render_each_character_in_the_end ;

loc_B656_open_treasure:
C - - - - - 0x01B666 06:B656: A5 C8     LDA vMessageInProgress                   ;
C - - - - - 0x01B668 06:B658: F0 03     BEQ bra_B65D_skip                        ; If the message isn't typing
C - - - - - 0x01B66A 06:B65A: 4C A4 B7  JMP loc_B7A4_render_Clarissa_and_Fujiko  ;

bra_B65D_skip:
C - - - - - 0x01B66D 06:B65D: A9 55     LDA #$55                       ; CONSTANT - opening a treasure chest (melody #1)
C - - - - - 0x01B66F 06:B65F: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B672 06:B662: A9 56     LDA #$56                       ; CONSTANT - opening a treasure chest (melody #2)
C - - - - - 0x01B674 06:B664: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B677 06:B667: A9 57     LDA #$57                       ; CONSTANT - opening a treasure chest (melody #3)
C - - - - - 0x01B679 06:B669: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B67C 06:B66C: A9 5F     LDA #$5F                       ; CONSTANT - opening a treasure chest (sound)
C - - - - - 0x01B67E 06:B66E: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B681 06:B671: A9 60     LDA #$60                       ; CONSTANT - the Phoenix flight (sound)
C - - - - - 0x01B683 06:B673: 20 20 C4  JSR sub_C420_add_sound_effect  ; !(BUG?), conflict with track5F
C - - - - - 0x01B686 06:B676: A0 00     LDY #$00                       ; set loop counter
C - - - - - 0x01B688 06:B678: A9 21     LDA #$21                       ;
C - - - - - 0x01B68A 06:B67A: 8D 31 06  STA vHighPpuAddress            ;
C - - - - - 0x01B68D 06:B67D: A9 D2     LDA #$D2                       ;
C - - - - - 0x01B68F 06:B67F: 8D 30 06  STA vLowPpuAddress             ; PPU Address <~ $21D2 (1 mode)
@bra_B682_loop:                                                        ; loop by y (4 times)
C - - - - - 0x01B692 06:B682: B9 C0 BC  LDA tbl_BCC0_chest_lid,Y       ;
C - - - - - 0x01B695 06:B685: 99 33 06  STA vPpuBufferData,Y           ; fill a buffer for rendering
C - - - - - 0x01B698 06:B688: C8        INY                            ; increment loop counter
C - - - - - 0x01B699 06:B689: C0 04     CPY #$04                       ;
C - - - - - 0x01B69B 06:B68B: D0 F5     BNE @bra_B682_loop             ; If Register Y != 0x04
C - - - - - 0x01B69D 06:B68D: A9 04     LDA #$04                       ;
C - - - - - 0x01B69F 06:B68F: 8D 32 06  STA vPpuBufferCount            ; init count (4 tiles)
C - - - - - 0x01B6A2 06:B692: A9 02     LDA #$02                       ;
C - - - - - 0x01B6A4 06:B694: 8D 44 03  STA vPhenixFrame_Counter       ; initializes a starting frame counter
C - - - - - 0x01B6A7 06:B697: A9 A0     LDA #$A0                       ;
C - - - - - 0x01B6A9 06:B699: 8D 38 03  STA vPhenixPosXLow             ; initializes a starting low X-position
C - - - - - 0x01B6AC 06:B69C: A9 00     LDA #$00                       ;
C - - - - - 0x01B6AE 06:B69E: 8D 3E 03  STA vPhenixPosXHigh            ; initializes a starting high X-position
C - - - - - 0x01B6B1 06:B6A1: A9 80     LDA #$80                       ;
C - - - - - 0x01B6B3 06:B6A3: 8D 2C 03  STA vPhenixPosY                ; initializes a starting Y-position
C - - - - - 0x01B6B6 06:B6A6: A9 00     LDA #$00                       ;
C - - - - - 0x01B6B8 06:B6A8: 8D 56 03  STA vPhenixJumpType            ; initializes a starting jump type
C - - - - - 0x01B6BB 06:B6AB: A9 10     LDA #$10                       ;
C - - - - - 0x01B6BD 06:B6AD: 8D 4A 03  STA vPhenixJumpCounter         ; initializes a starting jump counter
C - - - - - 0x01B6C0 06:B6B0: 4C 72 B7  JMP loc_B772_next_final_scene  ;

loc_B6B3_last_cutscene_with_Clarissa:
C - - - - - 0x01B6C3 06:B6B3: A5 C8     LDA vMessageInProgress         ;
C - - - - - 0x01B6C5 06:B6B5: D0 38     BNE bra_B6EF_RTS               ; If the message is typing
C - - - - - 0x01B6C7 06:B6B7: A9 5B     LDA #$5B                       ; CONSTANT - Saving Clarissa (melody #1)
C - - - - - 0x01B6C9 06:B6B9: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B6CC 06:B6BC: A9 5C     LDA #$5C                       ; CONSTANT - Saving Clarissa (melody #2)
C - - - - - 0x01B6CE 06:B6BE: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B6D1 06:B6C1: A9 5D     LDA #$5D                       ; CONSTANT - Saving Clarissa (melody #3)
C - - - - - 0x01B6D3 06:B6C3: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B6D6 06:B6C6: A9 5E     LDA #$5E                       ; CONSTANT - Saving Clarissa (melody #4)
C - - - - - 0x01B6D8 06:B6C8: 20 20 C4  JSR sub_C420_add_sound_effect  ;
C - - - - - 0x01B6DB 06:B6CB: A5 5F     LDA vChrLiveStatus             ;
C - - - - - 0x01B6DD 06:B6CD: 29 03     AND #$03                       ;
C - - - - - 0x01B6DF 06:B6CF: A8        TAY                            ; Y <~ 0x00 (Lupin), 0x01 (Jigen), 0x10 (Goemon)
C - - - - - 0x01B6E0 06:B6D0: B9 C4 BC  LDA tbl_BCC4_messages,Y        ; prepare an input parameter
C - - - - - 0x01B6E3 06:B6D3: D0 06     BNE bra_B6DB_add               ; Always true

loc_B6D5_go_to_the_end_and_hiscore:
C - - - - - 0x01B6E5 06:B6D5: A5 C8     LDA vMessageInProgress         ;
C - - - - - 0x01B6E7 06:B6D7: D0 16     BNE bra_B6EF_RTS               ; If the message is typing
C - - - - - 0x01B6E9 06:B6D9: A9 7C     LDA #$7C                       ; CONSTANT - the message number #7C (the end)
bra_B6DB_add:
C - - - - - 0x01B6EB 06:B6DB: 20 34 B2  JSR sub_B234_add_message       ;
C - - - - - 0x01B6EE 06:B6DE: E6 D8     INC vFinalSceneNo              ; next a scene
C - - - - - 0x01B6F0 06:B6E0: 60        RTS                            ;

loc_B6E1_waiting_for_pressing_in_dialog:
C - - - - - 0x01B6F1 06:B6E1: A5 C8     LDA vMessageInProgress          ;
C - - - - - 0x01B6F3 06:B6E3: D0 0A     BNE bra_B6EF_RTS                ; If the message is typing
C - - - - - 0x01B6F5 06:B6E5: A9 03     LDA #BIT_BUTTON_B_OR_A          ;
C - - - - - 0x01B6F7 06:B6E7: 20 79 D0  JSR sub_D079_check_button_press ; bank FF
C - - - - - 0x01B6FA 06:B6EA: D0 01     BNE bra_B6ED_next_scene         ; Go to the branch If the buttons 'A' or 'B' are pressed
C - - - - - 0x01B6FC 06:B6EC: 60        RTS                             ;

bra_B6ED_next_scene:
C - - - - - 0x01B6FD 06:B6ED: E6 D8     INC vFinalSceneNo               ;
bra_B6EF_RTS:
loc_B6EF_RTS:
C - - - - - 0x01B6FF 06:B6EF: 60        RTS                             ;

loc_B6F0_add_4th_message:
C - - - - - 0x01B700 06:B6F0: A9 06     LDA #$06                       ; CONSTANT - 4th message
C - - - - - 0x01B702 06:B6F2: 4C 8D B7  JMP loc_B78D_add_final_message ;

loc_B6F5_add_3rd_message:
C - - - - - 0x01B705 06:B6F5: A0 00     LDY #$00                       ;
C - - - - - 0x01B707 06:B6F7: 20 AC B8  JSR sub_B8AC_change_palette    ;
C - - - - - 0x01B70A 06:B6FA: A9 04     LDA #$04                       ; CONSTANT - 3rd message
C - - - - - 0x01B70C 06:B6FC: 4C 8D B7  JMP loc_B78D_add_final_message ;

loc_B6FF_phoenix_is_flighting:
C - - - - - 0x01B70F 06:B6FF: A5 2C     LDA vLowCounter                          ;
C - - - - - 0x01B711 06:B701: 29 7F     AND #$7F                                 ;
C - - - - - 0x01B713 06:B703: D0 05     BNE @bra_B70A_skip_sound                 ; Branch if vLowCounter doesn't multiple of 128  (99.22% chance)
C - - - - - 0x01B715 06:B705: A9 60     LDA #$60                                 ; CONSTANT - the Phoenix flight (sound)
C - - - - - 0x01B717 06:B707: 20 20 C4  JSR sub_C420_add_sound_effect            ;
@bra_B70A_skip_sound:
C - - - - - 0x01B71A 06:B70A: A5 2C     LDA vLowCounter                          ;
C - - - - - 0x01B71C 06:B70C: 29 03     AND #$03                                 ;
C - - - - - 0x01B71E 06:B70E: 0A        ASL                                      ;
C - - - - - 0x01B71F 06:B70F: 0A        ASL                                      ;
C - - - - - 0x01B720 06:B710: 0A        ASL                                      ;
C - - - - - 0x01B721 06:B711: A8        TAY                                      ; Y <~ 0x00, 0x08, 0x10, 0x18
C - - - - - 0x01B722 06:B712: 20 AC B8  JSR sub_B8AC_change_palette              ;
C - - - - - 0x01B725 06:B715: 20 4D B8  JSR sub_B84D_update_jump_params_         ;
C - - - - - 0x01B728 06:B718: A5 2C     LDA vLowCounter                          ;
C - - - - - 0x01B72A 06:B71A: 29 03     AND #$03                                 ;
C - - - - - 0x01B72C 06:B71C: D0 03     BNE @bra_B721_skip                       ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x01B72E 06:B71E: 20 80 B8  JSR sub_B880_execute_fly_phenix          ;
@bra_B721_skip:
C - - - - - 0x01B731 06:B721: A9 07     LDA #$07                                 ;
C - - - - - 0x01B733 06:B723: 25 2C     AND vLowCounter                          ;
C - - - - - 0x01B735 06:B725: D0 0F     BNE @bra_B736_prepare_rendering          ; Branch if vLowCounter doesn't multiple of 8 (87.5% chance)
C - - - - - 0x01B737 06:B727: EE 44 03  INC vPhenixFrame_Counter                 ; prepare a next frame
C - - - - - 0x01B73A 06:B72A: AD 44 03  LDA vPhenixFrame_Counter                 ;
C - - - - - 0x01B73D 06:B72D: C9 03     CMP #$03                                 ; CONSTANT - the number of the frames
C - - - - - 0x01B73F 06:B72F: 90 05     BCC @bra_B736_prepare_rendering          ; If vFrameCounter < 0x03
C - - - - - 0x01B741 06:B731: A9 00     LDA #$00                                 ; CONSTANT - 1st frame
C - - - - - 0x01B743 06:B733: 8D 44 03  STA vPhenixFrame_Counter                 ; reassign
@bra_B736_prepare_rendering:
C - - - - - 0x01B746 06:B736: AD 2C 03  LDA vPhenixPosY                          ;
C - - - - - 0x01B749 06:B739: 85 00     STA ram_0000                             ; ~> sprite_magic1, Y-position
C - - - - - 0x01B74B 06:B73B: AD 38 03  LDA vPhenixPosXLow                       ;
C - - - - - 0x01B74E 06:B73E: 85 03     STA ram_0003                             ; ~> sprite_magic4, X-position
C - - - - - 0x01B750 06:B740: AD 44 03  LDA vPhenixFrame_Counter                 ;
C - - - - - 0x01B753 06:B743: 0A        ASL                                      ;
C - - - - - 0x01B754 06:B744: 18        CLC                                      ;
C - - - - - 0x01B755 06:B745: 69 04     ADC #$04                                 ; prepare an input parameter, A <~ 2 * vFrameCounter + 0x04
C - - - - - 0x01B757 06:B747: 20 B7 B7  JSR sub_B7B7_add_sprite                  ;
C - - - - - 0x01B75A 06:B74A: AD 3E 03  LDA vPhenixPosXHigh                      ;
C - - - - - 0x01B75D 06:B74D: F0 55     BEQ bra_B7A4_render_Clarissa_and_Fujiko  ; If the high X-position == 0x00
C - - - - - 0x01B75F 06:B74F: D0 1D     BNE bra_B76E_prepare_next_message        ; Always true

loc_B751_4th_message_in_progress:
C - - - - - 0x01B761 06:B751: A5 C8     LDA vMessageInProgress                   ;
C - - - - - 0x01B763 06:B753: D0 4F     BNE bra_B7A4_render_Clarissa_and_Fujiko  ; If the message is typing
C - - - - - 0x01B765 06:B755: A9 03     LDA #BIT_BUTTON_B_OR_A                   ;
C - - - - - 0x01B767 06:B757: 20 79 D0  JSR sub_D079_check_button_press          ; bank FF
C - - - - - 0x01B76A 06:B75A: F0 48     BEQ bra_B7A4_render_Clarissa_and_Fujiko  ; Go to the branch If the buttons 'A' or 'B' aren't pressed
C - - - - - 0x01B76C 06:B75C: 4C 72 B7  JMP loc_B772_next_final_scene            ;

loc_B75F_add_2nd_message:
C - - - - - 0x01B76F 06:B75F: A9 02     LDA #$02                        ; CONSTANT - 2nd message
C - - - - - 0x01B771 06:B761: D0 2A     BNE bra_B78D_add_final_message  ; Always true

loc_B763_waiting_for_pressing_with_clearing:
C - - - - - 0x01B773 06:B763: A5 C8     LDA vMessageInProgress                   ;
C - - - - - 0x01B775 06:B765: D0 3D     BNE bra_B7A4_render_Clarissa_and_Fujiko  ; If the message is typing
C - - - - - 0x01B777 06:B767: A9 03     LDA #BIT_BUTTON_B_OR_A                   ;
C - - - - - 0x01B779 06:B769: 20 79 D0  JSR sub_D079_check_button_press          ; bank FF
C - - - - - 0x01B77C 06:B76C: F0 36     BEQ bra_B7A4_render_Clarissa_and_Fujiko  ; Go to the branch If the buttons 'A' or 'B' aren't pressed
bra_B76E_prepare_next_message:
loc_B76E_prepare_next_message:
C - - - - - 0x01B77E 06:B76E: A9 05     LDA #$05                                 ; CONSTANT - 4 rows for typing a message
C - - - - - 0x01B780 06:B770: 85 30     STA vClearMessageCounter                 ;
loc_B772_next_final_scene:
C D 1 - - - 0x01B782 06:B772: E6 D8     INC vFinalSceneNo                        ;
C - - - - - 0x01B784 06:B774: D0 2E     BNE bra_B7A4_render_Clarissa_and_Fujiko  ; Here always true

loc_B776_begin_and_add_1st_message:
C - - - - - 0x01B786 06:B776: A2 07     LDX #$07                                           ; set loop counter
@bra_B778_loop:                                                                            ; loop by x (7 times)
C - - - - - 0x01B788 06:B778: BD C7 BC  LDA tbl_BCC7_palettes,X                            ;
C - - - - - 0x01B78B 06:B77B: 9D 18 06  STA vCachePalette + 24,X                           ; set 3rd and 4th sprite palettes
C - - - - - 0x01B78E 06:B77E: CA        DEX                                                ; decrement loop counter
C - - - - - 0x01B78F 06:B77F: D0 F7     BNE @bra_B778_loop                                 ; If Register X != 0x00
C - - - - - 0x01B791 06:B781: A9 04     LDA #$04                                           ; CONSTANT for CHR ROM
C - - - - - 0x01B793 06:B783: 8D B3 06  STA vCacheChrBankSelect + 4                        ;
C - - - - - 0x01B796 06:B786: A9 05     LDA #$05                                           ; CONSTANT for CHR ROM
C - - - - - 0x01B798 06:B788: 8D B4 06  STA vCacheChrBankSelect + 5                        ;
C - - - - - 0x01B79B 06:B78B: A9 00     LDA #$00                                           ; CONSTANT - 1st message
; In: Register A - a table index (in tbl_BCA8_final_dialogs)
bra_B78D_add_final_message:
loc_B78D_add_final_message:
C D 1 - - - 0x01B79D 06:B78D: 20 C3 B7  JSR sub_B7C3_get_final_dialog_info                 ;
C - - - - - 0x01B7A0 06:B790: B9 A9 BC  LDA tbl_BCA8_final_dialogs + 1,Y                   ; prepare an input parameter (a message number)
C - - - - - 0x01B7A3 06:B793: 20 34 B2  JSR sub_B234_add_message                           ;
C - - - - - 0x01B7A6 06:B796: 20 4F EF  JSR sub_EF4F_switch_bank_4_p2                      ;
C - - - - - 0x01B7A9 06:B799: A4 11     LDY ram_0011                                       ; prepare 1st parameter
C - - - - - 0x01B7AB 06:B79B: A9 00     LDA #$00                                           ;
C - - - - - 0x01B7AD 06:B79D: 85 00     STA ram_0000                                       ; prepare 2nd parameter
C - - - - - 0x01B7AF 06:B79F: 20 98 B4  JSR sub_B498_prepare_npc_portrait_render_params_ex ;
C - - - - - 0x01B7B2 06:B7A2: E6 D8     INC vFinalSceneNo                                  ; next a final scene
bra_B7A4_render_Clarissa_and_Fujiko:
loc_B7A4_render_Clarissa_and_Fujiko:
C D 1 - - - 0x01B7B4 06:B7A4: A9 BF     LDA #$BF                                           ;
C - - - - - 0x01B7B6 06:B7A6: 85 00     STA ram_0000                                       ; ~> sprite_magic1, Y-position
C - - - - - 0x01B7B8 06:B7A8: A9 B0     LDA #$B0                                           ;
C - - - - - 0x01B7BA 06:B7AA: 85 03     STA ram_0003                                       ; ~> sprite_magic4, X-position
C - - - - - 0x01B7BC 06:B7AC: A9 00     LDA #$00                                           ; CONSTANT - Clarissa offset
C - - - - - 0x01B7BE 06:B7AE: 20 B7 B7  JSR sub_B7B7_add_sprite                            ;
C - - - - - 0x01B7C1 06:B7B1: A9 D0     LDA #$D0                                           ;
C - - - - - 0x01B7C3 06:B7B3: 85 03     STA ram_0003                                       ; ~> sprite_magic4, X-position
C - - - - - 0x01B7C5 06:B7B5: A9 02     LDA #$02                                           ; CONSTANT - Fujiko offset
; In: Register A - The extra offset by the address
sub_B7B7_add_sprite:
C - - - - - 0x01B7C7 06:B7B7: 18        CLC                                                ;
C - - - - - 0x01B7C8 06:B7B8: 69 C0     ADC #$C0                                           ; 0xC0 or 0xC2 ~> sprite_magic2
C - - - - - 0x01B7CA 06:B7BA: 85 01     STA ram_0001                                       ;
C - - - - - 0x01B7CC 06:B7BC: A9 20     LDA #$20                                           ; ~> sprite_magic3
C - - - - - 0x01B7CE 06:B7BE: 85 02     STA ram_0002                                       ;
C - - - - - 0x01B7D0 06:B7C0: 4C 33 CE  JMP loc_CE33_add_sprite_magic                      ; bank FF

; In: Register A - a dialog number (0x00, 0x02, 0x04, or 0x06)
; Out: Register Y -  a byte index (in tbl_BCA8_final_dialogs)
; Out: $0011 - a byte index (in tbl_BCA8_final_dialogs)
; Out: ($0012-$0013) - address 'tbl_BCA8_final_dialogs'
sub_B7C3_get_final_dialog_info:
C - - - - - 0x01B7D3 06:B7C3: 85 00     STA ram_0000         ;
C - - - - - 0x01B7D5 06:B7C5: A9 A8     LDA #$A8             ;
C - - - - - 0x01B7D7 06:B7C7: 85 12     STA ram_0012         ;
C - - - - - 0x01B7D9 06:B7C9: A9 BC     LDA #$BC             ;
C - - - - - 0x01B7DB 06:B7CB: 85 13     STA ram_0013         ; ($0012-$0013) -> $BCA8 (see tbl_BCA8_final_dialogs)
C - - - - - 0x01B7DD 06:B7CD: A5 5F     LDA vChrLiveStatus   ;
C - - - - - 0x01B7DF 06:B7CF: 29 03     AND #$03             ; CONSTANT - the current selected character
C - - - - - 0x01B7E1 06:B7D1: 0A        ASL                  ;
C - - - - - 0x01B7E2 06:B7D2: 0A        ASL                  ;
C - - - - - 0x01B7E3 06:B7D3: 0A        ASL                  ; *8, because 8 bytes in the row
C - - - - - 0x01B7E4 06:B7D4: 18        CLC                  ;
C - - - - - 0x01B7E5 06:B7D5: 65 00     ADC ram_0000         ;
C - - - - - 0x01B7E7 06:B7D7: A8        TAY                  ; Y <~ an index of n-th byte
C - - - - - 0x01B7E8 06:B7D8: 84 11     STY ram_0011         ;
C - - - - - 0x01B7EA 06:B7DA: 60        RTS                  ;

sub_B7DB_prepare_last_cutscene:
C - - - - - 0x01B7EB 06:B7DB: 20 02 C4  JSR sub_C402_clear_sound_parts              ;
C - - - - - 0x01B7EE 06:B7DE: 20 1D C3  JSR sub_C31D_clear_ppu                      ;
C - - - - - 0x01B7F1 06:B7E1: 20 58 C3  JSR sub_C358_clear_OAM                      ;
C - - - - - 0x01B7F4 06:B7E4: 20 46 EF  JSR sub_EF46_switch_bank_4_p1               ;
C - - - - - 0x01B7F7 06:B7E7: A2 05     LDX #$05                                    ; set loop counter
@bra_B7E9_loop:                                                                     ; loop by x (6 times)
C - - - - - 0x01B7F9 06:B7E9: BD CF BC  LDA tbl_BCCF_clarissa_is_saved_chr_banks,X  ;
C - - - - - 0x01B7FC 06:B7EC: 9D AF 06  STA vCacheChrBankSelect,X                   ;
C - - - - - 0x01B7FF 06:B7EF: CA        DEX                                         ; decrement x
C - - - - - 0x01B800 06:B7F0: 10 F7     BPL @bra_B7E9_loop                          ; In Register X >= 0x00 && X < 0x80
C - - - - - 0x01B802 06:B7F2: 20 BA BA  JSR sub_BABA_set_palette_for_clarissa       ;
C - - - - - 0x01B805 06:B7F5: A9 5E     LDA #$5E                                    ;
C - - - - - 0x01B807 06:B7F7: 18        CLC                                         ;
C - - - - - 0x01B808 06:B7F8: 69 54     ADC #$54                                    ;
C - - - - - 0x01B80A 06:B7FA: 85 12     STA ram_0012                                ; Low address
C - - - - - 0x01B80C 06:B7FC: A9 80     LDA #$80                                    ;
C - - - - - 0x01B80E 06:B7FE: 69 00     ADC #$00                                    ;
C - - - - - 0x01B810 06:B800: 85 13     STA ram_0013                                ; High address ($80B2 in the bank 04_1)
C - - - - - 0x01B812 06:B802: AD 02 20  LDA PPU_STATUS                              ; Read PPU status to reset the high/low latch
C - - - - - 0x01B815 06:B805: 20 CB BA  JSR sub_BACB_fill_ppu                       ;
C - - - - - 0x01B818 06:B808: A9 10     LDA #$10                                    ; CONSTANT - Background pattern table address: $1000
C - - - - - 0x01B81A 06:B80A: 85 26     STA vPpuCtrlSettings                        ;
C - - - - - 0x01B81C 06:B80C: 60        RTS                                         ;

sub_B80D_init_final_score_screen:
C - - - - - 0x01B81D 06:B80D: 20 2F C6  JSR sub_C62F_init_character_select        ;
C - - - - - 0x01B820 06:B810: A9 39     LDA #$39                                  ;
C - - - - - 0x01B822 06:B812: 18        CLC                                       ;
C - - - - - 0x01B823 06:B813: 69 23     ADC #$23                                  ;
C - - - - - 0x01B825 06:B815: 85 12     STA ram_0012                              ; Low address
C - - - - - 0x01B827 06:B817: A9 81     LDA #$81                                  ;
C - - - - - 0x01B829 06:B819: 69 00     ADC #$00                                  ;
C - - - - - 0x01B82B 06:B81B: 85 13     STA ram_0013                              ; High address ($815C in the bank 04_1)
C - - - - - 0x01B82D 06:B81D: A9 02     LDA #$02                                  ;
C - - - - - 0x01B82F 06:B81F: 85 00     STA ram_0000                              ; prepare an input parameter (loop counter)
C - - - - - 0x01B831 06:B821: 20 68 C6  JSR sub_C668_render_14_15_16_17_18_loop   ;
C - - - - - 0x01B834 06:B824: 20 52 C6  JSR sub_C652_display_character_portraits  ;
C - - - - - 0x01B837 06:B827: A9 21     LDA #$21                                  ;
C - - - - - 0x01B839 06:B829: 8D 06 20  STA PPU_ADDRESS                           ;
C - - - - - 0x01B83C 06:B82C: A9 94     LDA #$94                                  ;
C - - - - - 0x01B83E 06:B82E: 8D 06 20  STA PPU_ADDRESS                           ; PPU address is 0x2194
C - - - - - 0x01B841 06:B831: A9 00     LDA #$00                                  ; CONSTANT - a tile number for blank
C - - - - - 0x01B843 06:B833: 85 08     STA ram_0008                              ;
C - - - - - 0x01B845 06:B835: A9 70     LDA #$70                                  ; CONSTANT - a tile number '0' in current CHR page
C - - - - - 0x01B847 06:B837: 85 09     STA ram_0009                              ;
C - - - - - 0x01B849 06:B839: A2 99     LDX #$99                                  ; CONSTANT - HiScore
C - - - - - 0x01B84B 06:B83B: 20 24 C9  JSR sub_C924_display_menu_score_ex        ;
C - - - - - 0x01B84E 06:B83E: A9 22     LDA #$22                                  ;
C - - - - - 0x01B850 06:B840: 8D 06 20  STA PPU_ADDRESS                           ;
C - - - - - 0x01B853 06:B843: A9 14     LDA #$14                                  ;
C - - - - - 0x01B855 06:B845: 8D 06 20  STA PPU_ADDRESS                           ; PPU address is 0x2214
C - - - - - 0x01B858 06:B848: A2 56     LDX #$56                                  ; CONSTANT - Score
C - - - - - 0x01B85A 06:B84A: 4C 24 C9  JMP loc_C924_display_menu_score_ex        ;

sub_B84D_update_jump_params_:
C - - - - - 0x01B85D 06:B84D: A9 D5     LDA #$D5                   ;
C - - - - - 0x01B85F 06:B84F: 85 00     STA ram_0000               ;
C - - - - - 0x01B861 06:B851: A9 BC     LDA #$BC                   ;
C - - - - - 0x01B863 06:B853: 85 01     STA ram_0001               ; (ram_0000),0 = $BCD5
C - - - - - 0x01B865 06:B855: CE 4A 03  DEC vPhenixJumpCounter     ;
C - - - - - 0x01B868 06:B858: D0 14     BNE @bra_B86E_skip         ; If vJumpCounter != 0x00
C - - - - - 0x01B86A 06:B85A: EE 56 03  INC vPhenixJumpType        ; set next jump type
C - - - - - 0x01B86D 06:B85D: AD 56 03  LDA vPhenixJumpType        ;
C - - - - - 0x01B870 06:B860: 29 0F     AND #$0F                   ;
C - - - - - 0x01B872 06:B862: 8D 56 03  STA vPhenixJumpType        ; adjusts by mask
C - - - - - 0x01B875 06:B865: 18        CLC                        ;
C - - - - - 0x01B876 06:B866: 69 10     ADC #$10                   ; see $BCD5 + 0x10
C - - - - - 0x01B878 06:B868: A8        TAY                        ;
C - - - - - 0x01B879 06:B869: B1 00     LDA (ram_0000),Y           ;
C - - - - - 0x01B87B 06:B86B: 8D 4A 03  STA vPhenixJumpCounter     ; assign an new counter
@bra_B86E_skip:
C - - - - - 0x01B87E 06:B86E: A9 30     LDA #$30                   ;
C - - - - - 0x01B880 06:B870: CD 2C 03  CMP vPhenixPosY            ;
C - - - - - 0x01B883 06:B873: B0 07     BCS @bra_B87C_assign       ; If 0x30 >= vPosY
C - - - - - 0x01B885 06:B875: A9 BF     LDA #$BF                   ;
C - - - - - 0x01B887 06:B877: CD 2C 03  CMP vPhenixPosY            ;
C - - - - - 0x01B88A 06:B87A: B0 03     BCS @bra_B87F_RTS          ; If 0xBF >= vPosY
@bra_B87C_assign:
- - - - - - 0x01B88C 06:B87C: 8D 2C 03  STA vPhenixPosY            ; <~ 0x30 or 0xBF
@bra_B87F_RTS:
C - - - - - 0x01B88F 06:B87F: 60        RTS                        ;

sub_B880_execute_fly_phenix:
C - - - - - 0x01B890 06:B880: AC 56 03  LDY vPhenixJumpType                ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x01B893 06:B883: B1 00     LDA (ram_0000),Y                   ;
C - - - - - 0x01B895 06:B885: 0A        ASL                                ; *2, because the set contains 2 bytes
C - - - - - 0x01B896 06:B886: A8        TAY                                ;
C - - - - - 0x01B897 06:B887: AD 2C 03  LDA vPhenixPosY                    ;
C - - - - - 0x01B89A 06:B88A: 18        CLC                                ;
C - - - - - 0x01B89B 06:B88B: 79 D4 DA  ADC tbl_flying_track_offset,Y      ;
C - - - - - 0x01B89E 06:B88E: 8D 2C 03  STA vPhenixPosY                    ; <~ posY + offset
C - - - - - 0x01B8A1 06:B891: A9 00     LDA #$00                           ;
C - - - - - 0x01B8A3 06:B893: 85 02     STA ram_0002                       ; $0002 = 0x00
C - - - - - 0x01B8A5 06:B895: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y  ;
C - - - - - 0x01B8A8 06:B898: 10 02     BPL @bra_B89C_skip                 ; If the offset >= 0x00
C - - - - - 0x01B8AA 06:B89A: C6 02     DEC ram_0002                       ; $0002 = 0xFF, i.e. -1
@bra_B89C_skip:
C - - - - - 0x01B8AC 06:B89C: 18        CLC                                ;
C - - - - - 0x01B8AD 06:B89D: 6D 38 03  ADC vPhenixPosXLow                 ;
C - - - - - 0x01B8B0 06:B8A0: 8D 38 03  STA vPhenixPosXLow                 ; <~ posX + offset
C - - - - - 0x01B8B3 06:B8A3: AD 3E 03  LDA vPhenixPosXHigh                ;
C - - - - - 0x01B8B6 06:B8A6: 65 02     ADC ram_0002                       ;
C - - - - - 0x01B8B8 06:B8A8: 8D 3E 03  STA vPhenixPosXHigh                ; changed PosXHigh (+1 or -1), if PosXLow was overflow
C - - - - - 0x01B8BB 06:B8AB: 60        RTS                                ;

; In: Register Y - the table offset (0x00, 0x08, 0x10, 0x18)
sub_B8AC_change_palette:
C - - - - - 0x01B8BC 06:B8AC: A2 00     LDX #$00                 ; set loop counter
@bra_B8AE_loop:                                                  ; loop by x (8 times)
C - - - - - 0x01B8BE 06:B8AE: B9 88 BC  LDA tbl_BC88_palettes,Y  ;
C - - - - - 0x01B8C1 06:B8B1: 9D 04 06  STA vCachePalette + 4,X  ;
C - - - - - 0x01B8C4 06:B8B4: C8        INY                      ; next color in the table offset
C - - - - - 0x01B8C5 06:B8B5: E8        INX                      ; increment loop counter
C - - - - - 0x01B8C6 06:B8B6: E0 08     CPX #$08                 ;
C - - - - - 0x01B8C8 06:B8B8: D0 F4     BNE @bra_B8AE_loop       ; If Register X != 0x08
C - - - - - 0x01B8CA 06:B8BA: 60        RTS                      ;

- - - - - - 0x01B8CB 06:B8BB: 07        .byte $07   ; 
- - - - - - 0x01B8CC 06:B8BC: 17        .byte $17   ; 
- - - - - - 0x01B8CD 06:B8BD: 27        .byte $27   ; 
- - - - - - 0x01B8CE 06:B8BE: 37        .byte $37   ; <7>
- - - - - - 0x01B8CF 06:B8BF: 80        .byte $80   ; 
- - - - - - 0x01B8D0 06:B8C0: 00        .byte $00   ; 
- - - - - - 0x01B8D1 06:B8C1: 81        .byte $81   ; 
- - - - - - 0x01B8D2 06:B8C2: 00        .byte $00   ; 
- - - - - - 0x01B8D3 06:B8C3: 82        .byte $82   ; 
- - - - - - 0x01B8D4 06:B8C4: 00        .byte $00   ; 
- - - - - - 0x01B8D5 06:B8C5: 81        .byte $81   ; 
- - - - - - 0x01B8D6 06:B8C6: 80        .byte $80   ; 

sub_B8C7_main_menu_shared_routine:
C - - - - - 0x01B8D7 06:B8C7: A5 37     LDA vCutscenesMode                         ;
C - - - - - 0x01B8D9 06:B8C9: 10 01     BPL bra_B8CC_main_menu_shared_routine      ; Branch If cutscenes aren't used
C - - - - - 0x01B8DB 06:B8CB: 60        RTS                                        ;

bra_B8CC_main_menu_shared_routine:
C - - - - - 0x01B8DC 06:B8CC: 20 02 C4  JSR sub_C402_clear_sound_parts             ;
C - - - - - 0x01B8DF 06:B8CF: A9 00     LDA #$00                                   ; start screen track1
C - - - - - 0x01B8E1 06:B8D1: 20 20 C4  JSR sub_C420_add_sound_effect              ;
C - - - - - 0x01B8E4 06:B8D4: A9 01     LDA #$01                                   ; start screen track2
C - - - - - 0x01B8E6 06:B8D6: 20 20 C4  JSR sub_C420_add_sound_effect              ;
C - - - - - 0x01B8E9 06:B8D9: A9 02     LDA #$02                                   ; start screen track3
C - - - - - 0x01B8EB 06:B8DB: 20 20 C4  JSR sub_C420_add_sound_effect              ;
C - - - - - 0x01B8EE 06:B8DE: A9 03     LDA #$03                                   ; start screen track4
C - - - - - 0x01B8F0 06:B8E0: 20 20 C4  JSR sub_C420_add_sound_effect              ;
C - - - - - 0x01B8F3 06:B8E3: 20 1D C3  JSR sub_C31D_clear_ppu                     ;
C - - - - - 0x01B8F6 06:B8E6: 20 58 C3  JSR sub_C358_clear_OAM                     ;
C - - - - - 0x01B8F9 06:B8E9: 20 46 EF  JSR sub_EF46_switch_bank_4_p1              ;
C - - - - - 0x01B8FC 06:B8EC: A2 05     LDX #$05                                   ; set loop counter
@bra_B8EE_repeat:                                                                  ; loop by x
C - - - - - 0x01B8FE 06:B8EE: BD BE 80  LDA tbl_main_menu_chr_banks,X              ;
C - - - - - 0x01B901 06:B8F1: 9D AF 06  STA vCacheChrBankSelect,X                  ;
C - - - - - 0x01B904 06:B8F4: CA        DEX                                        ; decrements loop counter
C - - - - - 0x01B905 06:B8F5: 10 F7     BPL @bra_B8EE_repeat                       ; If Register X < 0x80
C - - - - - 0x01B907 06:B8F7: A2 1F     LDX #$1F                                   ; set loop counter
@bra_B8F9_loop:                                                                    ; loop by x
C - - - - - 0x01B909 06:B8F9: BD C4 80  LDA tbl_main_menu_palette,X                ;
C - - - - - 0x01B90C 06:B8FC: 9D 00 06  STA vCachePalette,X                        ;
C - - - - - 0x01B90F 06:B8FF: CA        DEX                                        ; decrements loop counter
C - - - - - 0x01B910 06:B900: 10 F7     BPL @bra_B8F9_loop                         ; If Register X < 0x80
C - - - - - 0x01B912 06:B902: A9 E4     LDA #$E4                                   ;
C - - - - - 0x01B914 06:B904: 85 12     STA ram_0012                               ; Low address
C - - - - - 0x01B916 06:B906: A9 80     LDA #$80                                   ;
C - - - - - 0x01B918 06:B908: 85 13     STA ram_0013                               ; High address ($80E4 in the bank 04_1)
C - - - - - 0x01B91A 06:B90A: A9 00     LDA #$00                                   ; CONSTANT - no reason
C - - - - - 0x01B91C 06:B90C: 85 D6     STA vReasonCharacterChange                 ;
C - - - - - 0x01B91E 06:B90E: A2 0F     LDX #$0F                                   ;
C - - - - - 0x01B920 06:B910: AD 09 01  LDA v_last_level                           ;
C - - - - - 0x01B923 06:B913: F0 01     BEQ @bra_B916_skip                         ; If vLastLevel == 0x00
C - - - - - 0x01B925 06:B915: E8        INX                                        ; For rendering a word 'Continue'
@bra_B916_skip:
C - - - - - 0x01B926 06:B916: 86 00     STX ram_0000                               ; X <~ 0x0F or 0x10
bra_B918_loop:                                                                     ; loop by 0x00
C - - - - - 0x01B928 06:B918: A5 00     LDA ram_0000                               ; assigned as the parameter of the function
C - - - - - 0x01B92A 06:B91A: 20 86 D0  JSR sub_D086_render_14_15_16_17_18_v1      ;
C - - - - - 0x01B92D 06:B91D: C6 00     DEC ram_0000                               ; decrement 0x00
C - - - - - 0x01B92F 06:B91F: 10 F7     BPL bra_B918_loop                          ; If $0000 < 0x80
C - - - - - 0x01B931 06:B921: A9 20     LDA #$20                                   ;
C - - - - - 0x01B933 06:B923: 8D 06 20  STA PPU_ADDRESS                            ;
C - - - - - 0x01B936 06:B926: A9 84     LDA #$84                                   ;
C - - - - - 0x01B938 06:B928: 8D 06 20  STA PPU_ADDRESS                            ; PPU address is 0x2084
C - - - - - 0x01B93B 06:B92B: A2 56     LDX #$56                                   ; CONSTANT - Score
C - - - - - 0x01B93D 06:B92D: 20 1C C9  JSR sub_C91C_display_menu_score            ;
C - - - - - 0x01B940 06:B930: A9 20     LDA #$20                                   ;
C - - - - - 0x01B942 06:B932: 8D 06 20  STA PPU_ADDRESS                            ;
C - - - - - 0x01B945 06:B935: A9 8E     LDA #$8E                                   ;
C - - - - - 0x01B947 06:B937: 8D 06 20  STA PPU_ADDRESS                            ; PPU address is 0x208E
C - - - - - 0x01B94A 06:B93A: A2 99     LDX #$99                                   ; CONSTANT - HiScore
C - - - - - 0x01B94C 06:B93C: 20 1C C9  JSR sub_C91C_display_menu_score            ;
C - - - - - 0x01B94F 06:B93F: A9 80     LDA #$80                                   ; CONSTANT - Main menu
C - - - - - 0x01B951 06:B941: 85 3B     STA vSharedGameStatus                      ;
C - - - - - 0x01B953 06:B943: A9 00     LDA #$00                                   ;
C - - - - - 0x01B955 06:B945: 85 B1     STA v_start_level                          ; clear
C - - - - - 0x01B957 06:B947: 85 B2     STA v_count_secret_hits                    ; clear
C - - - - - 0x01B959 06:B949: 85 B3     STA v_lock_secret_hits                     ; clear
C - - - - - 0x01B95B 06:B94B: 85 B4     STA v_offset_in_secret_codes               ; clear
C - - - - - 0x01B95D 06:B94D: 85 2C     STA vLowCounter                            ; clear
C - - - - - 0x01B95F 06:B94F: 85 2D     STA v_high_counter                         ; clear
C - - - - - 0x01B961 06:B951: 85 19     STA vRenderActive                          ; clear
C - - - - - 0x01B963 06:B953: 8D 31 06  STA ram_0631                               ; clear
C - - - - - 0x01B966 06:B956: 8D 7B 06  STA vPpuAddrDataCache                      ; clear
C - - - - - 0x01B969 06:B959: 85 29     STA vLowViewPortPosY                       ; clear
C - - - - - 0x01B96B 06:B95B: 85 27     STA vLowViewPortPosX                       ; clear
C - - - - - 0x01B96D 06:B95D: 85 3D     STA vStartStatus                           ; clear
C - - - - - 0x01B96F 06:B95F: A9 8F     LDA #$8F                                   ; CONSTANT - The 'Start' position
C - - - - - 0x01B971 06:B961: 85 AD     STA vMainMenuGunYPos                       ;
C - - - - - 0x01B973 06:B963: 85 1C     STA vBtnPressedInGame                      ; !(WHY?), seems to be excessive
C - - - - - 0x01B975 06:B965: 20 1E C5  JSR sub_C51E_update_ppu_and_screen         ;
@bra_B968_infinite_loop:
C - - - - - 0x01B978 06:B968: A5 1C     LDA vBtnPressedInGame                      ;
C - - - - - 0x01B97A 06:B96A: 29 08     AND #BIT_BUTTON_START                      ;
C - - - - - 0x01B97C 06:B96C: D0 FA     BNE @bra_B968_infinite_loop                ; break in NMI, waiting for the button 'Start' to be pressed
C - - - - - 0x01B97E 06:B96E: 85 1C     STA vBtnPressedInGame                      ; clear
C - - - - - 0x01B980 06:B970: 85 3D     STA vCharacterSelectionCounter             ; clear
C - - - - - 0x01B982 06:B972: A9 00     LDA #$00                                   ; !(WHY?), seems to be excessive
C - - - - - 0x01B984 06:B974: 85 2C     STA vLowCounter                            ; clear
C - - - - - 0x01B986 06:B976: 85 2D     STA v_high_counter                         ; clear
@bra_B978_repeat:
C - - - - - 0x01B988 06:B978: A5 2D     LDA v_high_counter                         ;
C - - - - - 0x01B98A 06:B97A: C9 02     CMP #$02                                   ;
C - - - - - 0x01B98C 06:B97C: 90 06     BCC @bra_B984_skip                         ;
C - - - - - 0x01B98E 06:B97E: A5 2C     LDA vLowCounter                            ;
C - - - - - 0x01B990 06:B980: C9 40     CMP #$40                                   ; 
C - - - - - 0x01B992 06:B982: B0 45     BCS bra_B9C9_start_demo                    ; If Hc:Lc >= 02:40
@bra_B984_skip:
C - - - - - 0x01B994 06:B984: A5 3D     LDA vCharacterSelectionCounter             ;
C - - - - - 0x01B996 06:B986: F0 F0     BEQ @bra_B978_repeat                       ; If vCharacterSelectionCounter == 0x00
C - - - - - 0x01B998 06:B988: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi   ;
C - - - - - 0x01B99B 06:B98B: A9 00     LDA #$00                                   ; CONTANT - In game
C - - - - - 0x01B99D 06:B98D: A8        TAY                                        ;
C - - - - - 0x01B99E 06:B98E: 85 37     STA vCutscenesMode                         ; vCutscenesMode <~ 'In game'
C - - - - - 0x01B9A0 06:B990: 85 B6     STA vCurrentUniqueRoom                     ; clear
C - - - - - 0x01B9A2 06:B992: 85 B7     STA vRoomExtraInfo                         ; clear
C - - - - - 0x01B9A4 06:B994: 85 39     STA vGameInterruptEvent                    ; clear
C - - - - - 0x01B9A6 06:B996: A6 AD     LDX vMainMenuGunYPos                       ;
C - - - - - 0x01B9A8 06:B998: E0 9F     CPX #$9F                                   ; CONSTANT - The 'Continue' position
C - - - - - 0x01B9AA 06:B99A: F0 07     BEQ @bra_B9A3_skip                         ; If select 'Continue' in the main menu
C - - - - - 0x01B9AC 06:B99C: A5 B1     LDA v_start_level                          ;
C - - - - - 0x01B9AE 06:B99E: F0 09     BEQ @bra_B9A9_skip                         ; Is v_start_level == 0x00
C - - - - - 0x01B9B0 06:B9A0: A8        TAY                                        ; 
C - - - - - 0x01B9B1 06:B9A1: D0 03     BNE @bra_B9A6_skip                         ; Always the true branch
@bra_B9A3_skip:
C - - - - - 0x01B9B3 06:B9A3: AC 09 01  LDY v_last_level                           ;
@bra_B9A6_skip:
C - - - - - 0x01B9B6 06:B9A6: B9 CA C1  LDA tbl_C1CA_checkpoint_on_start_levels,Y  ; 
@bra_B9A9_skip:
C - - - - - 0x01B9B9 06:B9A9: 85 C4     STA vCheckpoint                            ; assigned
C - - - - - 0x01B9BB 06:B9AB: 84 5E     STY v_no_level                             ; assigned
C - - - - - 0x01B9BD 06:B9AD: A9 FC     LDA #$FC                                   ; CONSTANT (see vChrLiveStatus)
C - - - - - 0x01B9BF 06:B9AF: 85 D4     STA vTempChrLiveStatus                     ; All characters are ready to play, Lupin is selected
C - - - - - 0x01B9C1 06:B9B1: 20 04 C9  JSR sub_C904_clear_score                   ;
C - - - - - 0x01B9C4 06:B9B4: A9 10     LDA #$10                                   ; CONSTANT - Select the character
C - - - - - 0x01B9C6 06:B9B6: 85 3B     STA vSharedGameStatus                      ;
C - - - - - 0x01B9C8 06:B9B8: 60        RTS                                        ;

tbl_B9B9_checkpoints:
- D 1 - - - 0x01B9C9 06:B9B9: 00        .byte $00, $42, $06, $10, $0F, $07, $19, $03

tbl_B9C1_levels:
- D 1 - - - 0x01B9D1 06:B9C1: 00        .byte $00   ; 
- D 1 - - - 0x01B9D2 06:B9C2: 03        .byte $03   ; 
- D 1 - - - 0x01B9D3 06:B9C3: 01        .byte $01   ; 
- D 1 - - - 0x01B9D4 06:B9C4: 02        .byte $02   ; 
- D 1 - - - 0x01B9D5 06:B9C5: 02        .byte $02   ; 
- D 1 - - - 0x01B9D6 06:B9C6: 01        .byte $01   ; 
- D 1 - - - 0x01B9D7 06:B9C7: 03        .byte $03   ; 
- D 1 - - - 0x01B9D8 06:B9C8: 00        .byte $00   ; 

bra_B9C9_start_demo:
C - - - - - 0x01B9D9 06:B9C9: 20 13 C3  JSR sub_C313_screen_off                  ;
C - - - - - 0x01B9DC 06:B9CC: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi ;
C - - - - - 0x01B9DF 06:B9CF: A9 FF     LDA #$FF                                 ; CONSTANT - Cutscene
C - - - - - 0x01B9E1 06:B9D1: 85 37     STA vCutscenesMode                       ;
C - - - - - 0x01B9E3 06:B9D3: A9 01     LDA #$01                                 ; CONSTANT - Lupin demo
C - - - - - 0x01B9E5 06:B9D5: 85 24     STA vMenuDemoIndex                       ;
C - - - - - 0x01B9E7 06:B9D7: 4C 02 C4  JMP loc_C402_clear_sound_parts           ;

sub_B9DA_curscene_shared_routine:
C - - - - - 0x01B9EA 06:B9DA: A5 37     LDA vCutscenesMode     ;
C - - - - - 0x01B9EC 06:B9DC: 30 01     BMI bra_B9DF_used      ; Branch If cutscenes are used
C - - - - - 0x01B9EE 06:B9DE: 60        RTS                    ;

bra_B9DF_used:
C - - - - - 0x01B9EF 06:B9DF: 20 02 C4  JSR sub_C402_clear_sound_parts           ;
C - - - - - 0x01B9F2 06:B9E2: 20 1D C3  JSR sub_C31D_clear_ppu                   ;
C - - - - - 0x01B9F5 06:B9E5: 20 58 C3  JSR sub_C358_clear_OAM                   ;
C - - - - - 0x01B9F8 06:B9E8: 20 46 EF  JSR sub_EF46_switch_bank_4_p1            ;
C - - - - - 0x01B9FB 06:B9EB: A2 05     LDX #$05                                 ; set loop counter
@bra_B9ED_loop:                                                                  ; loop by x
C - - - - - 0x01B9FD 06:B9ED: BD 14 80  LDA tbl_template_chr_banks1,X            ;
C - - - - - 0x01BA00 06:B9F0: 9D AF 06  STA vCacheChrBankSelect,X                ; 
C - - - - - 0x01BA03 06:B9F3: CA        DEX                                      ; decrements loop counter
C - - - - - 0x01BA04 06:B9F4: 10 F7     BPL @bra_B9ED_loop                       ; If Register X < 0x80
C - - - - - 0x01BA06 06:B9F6: A5 24     LDA vMenuDemoIndex                       ;
C - - - - - 0x01BA08 06:B9F8: D0 32     BNE @bra_BA2C_skip                       ; If vMenuDemoIndex > 0
C - - - - - 0x01BA0A 06:B9FA: A2 36     LDX #$36                                 ; CONSTANT for CHR ROM
C - - - - - 0x01BA0C 06:B9FC: 8E B3 06  STX vCacheChrBankSelect + 4              ;
C - - - - - 0x01BA0F 06:B9FF: E8        INX                                      ; CONSTANT for CHR ROM
C - - - - - 0x01BA10 06:BA00: 8E B4 06  STX vCacheChrBankSelect + 5              ;
C - - - - - 0x01BA13 06:BA03: AD 02 20  LDA PPU_STATUS                           ; Read PPU status to reset the high/low latch
C - - - - - 0x01BA16 06:BA06: A9 23     LDA #$23                                 ;
C - - - - - 0x01BA18 06:BA08: 8D 06 20  STA PPU_ADDRESS                          ;
C - - - - - 0x01BA1B 06:BA0B: A9 64     LDA #$64                                 ;
C - - - - - 0x01BA1D 06:BA0D: 8D 06 20  STA PPU_ADDRESS                          ; PPU address is 0x2364
C - - - - - 0x01BA20 06:BA10: A2 00     LDX #$00                                 ; set loop counter
@bra_BA12_loop:                                                                  ; loop by x
C - - - - - 0x01BA22 06:BA12: BD 2A 80  LDA tbl_copyright,X                      ;
C - - - - - 0x01BA25 06:BA15: 8D 07 20  STA PPU_DATA                             ;
C - - - - - 0x01BA28 06:BA18: E8        INX                                      ; increments loop counter
C - - - - - 0x01BA29 06:BA19: E0 18     CPX #$18                                 ; CONSTANT - 18 tiles 
C - - - - - 0x01BA2B 06:BA1B: D0 F5     BNE @bra_BA12_loop                       ; If Register X != 0x18
C - - - - - 0x01BA2D 06:BA1D: A9 23     LDA #$23                                 ;
C - - - - - 0x01BA2F 06:BA1F: 8D 06 20  STA PPU_ADDRESS                          ;
C - - - - - 0x01BA32 06:BA22: A9 4B     LDA #$4B                                 ;
C - - - - - 0x01BA34 06:BA24: 8D 06 20  STA PPU_ADDRESS                          ; PPU address is 0x234B
C - - - - - 0x01BA37 06:BA27: A9 7F     LDA #$7F                                 ;
C - - - - - 0x01BA39 06:BA29: 8D 07 20  STA PPU_DATA                             ; The part of the sign (the part of the copyright)
@bra_BA2C_skip:
C - - - - - 0x01BA3C 06:BA2C: 20 BA BA  JSR sub_BABA_set_palette_for_clarissa    ;
C - - - - - 0x01BA3F 06:BA2F: A5 24     LDA vMenuDemoIndex                       ;
C - - - - - 0x01BA41 06:BA31: 0A        ASL                                      ;
C - - - - - 0x01BA42 06:BA32: 0A        ASL                                      ; *4, because a pallete contains 4 colors
C - - - - - 0x01BA43 06:BA33: AA        TAX                                      ; prepare an address offset
C - - - - - 0x01BA44 06:BA34: A0 04     LDY #$04                                 ; set loop counter
@bra_BA36_loop:
C - - - - - 0x01BA46 06:BA36: BD 42 80  LDA tbl_menu_npc_colors,X                ;
C - - - - - 0x01BA49 06:BA39: 99 00 06  STA vCachePalette,Y                      ;
C - - - - - 0x01BA4C 06:BA3C: E8        INX                                      ; next color
C - - - - - 0x01BA4D 06:BA3D: C8        INY                                      ; increment loop counter
C - - - - - 0x01BA4E 06:BA3E: C0 08     CPY #$08                                 ;
C - - - - - 0x01BA50 06:BA40: D0 F4     BNE @bra_BA36_loop                       ; If Register Y != 0x08
C - - - - - 0x01BA52 06:BA42: A5 24     LDA vMenuDemoIndex                       ;
C - - - - - 0x01BA54 06:BA44: 0A        ASL                                      ;
C - - - - - 0x01BA55 06:BA45: 0A        ASL                                      ;
C - - - - - 0x01BA56 06:BA46: 85 12     STA ram_0012                             ;
C - - - - - 0x01BA58 06:BA48: 0A        ASL                                      ;
C - - - - - 0x01BA59 06:BA49: 18        CLC                                      ;
C - - - - - 0x01BA5A 06:BA4A: 65 12     ADC ram_0012                             ;
C - - - - - 0x01BA5C 06:BA4C: 18        CLC                                      ;
C - - - - - 0x01BA5D 06:BA4D: 69 5E     ADC #$5E                                 ;
C - - - - - 0x01BA5F 06:BA4F: 85 12     STA ram_0012                             ; Low address <~ 0x5E + vMenuDemoIndex * 12
C - - - - - 0x01BA61 06:BA51: A9 80     LDA #$80                                 ;
C - - - - - 0x01BA63 06:BA53: 69 00     ADC #$00                                 ;
C - - - - - 0x01BA65 06:BA55: 85 13     STA ram_0013                             ; High address ({$805E, $806A, $8076, $8082, $808E, $809A, $80A6} in the bank 04_1)
C - - - - - 0x01BA67 06:BA57: AD 02 20  LDA PPU_STATUS                           ; Read PPU status to reset the high/low latch
C - - - - - 0x01BA6A 06:BA5A: 20 CB BA  JSR sub_BACB_fill_ppu                    ;
C - - - - - 0x01BA6D 06:BA5D: A9 91     LDA #$91                                 ; CONSTANT - First cutscene (with Clarisse Cagliostro)
C - - - - - 0x01BA6F 06:BA5F: 85 3B     STA vSharedGameStatus                    ;
C - - - - - 0x01BA71 06:BA61: A9 00     LDA #$00                                 ;
C - - - - - 0x01BA73 06:BA63: 8D 31 06  STA vHighPpuAddress                      ; clear, 2nd mode
C - - - - - 0x01BA76 06:BA66: 8D 7B 06  STA vPpuAddrDataCache                    ; clear
C - - - - - 0x01BA79 06:BA69: 85 29     STA vLowViewPortPosY                     ; clear
C - - - - - 0x01BA7B 06:BA6B: 85 27     STA vLowViewPortPosX                     ; clear
C - - - - - 0x01BA7D 06:BA6D: 85 2C     STA vLowCounter                          ; clear
C - - - - - 0x01BA7F 06:BA6F: 85 2D     STA v_high_counter                       ; clear
C - - - - - 0x01BA81 06:BA71: 85 3D     STA vStartStatus                         ; clear
C - - - - - 0x01BA83 06:BA73: 85 19     STA vRenderActive                        ; clear
C - - - - - 0x01BA85 06:BA75: 85 C8     STA vMessageInProgress                   ; clear
C - - - - - 0x01BA87 06:BA77: 20 1E C5  JSR sub_C51E_update_ppu_and_screen       ;
@bra_BA7A_wait_menu:
C - - - - - 0x01BA8A 06:BA7A: A5 3D     LDA vStartStatus                         ;
C - - - - - 0x01BA8C 06:BA7C: 10 FC     BPL @bra_BA7A_wait_menu                  ; If Register A != 0b1XXXXXXX
C - - - - - 0x01BA8E 06:BA7E: 20 13 C3  JSR sub_C313_screen_off                  ;
C - - - - - 0x01BA91 06:BA81: 20 05 C3  JSR sub_C305_update_ppu_ctrl_with_no_nmi ;
C - - - - - 0x01BA94 06:BA84: A6 24     LDX vMenuDemoIndex                       ;
C - - - - - 0x01BA96 06:BA86: F0 24     BEQ bra_BAAC_first_cutscene              ; If vMenuDemoIndex == 0x00
C - - - - - 0x01BA98 06:BA88: E0 04     CPX #$04                                 ;
C - - - - - 0x01BA9A 06:BA8A: B0 29     BCS bra_BAB5_skip_gameplay               ; If vMenuDemoIndex >= 0x04
C - - - - - 0x01BA9C 06:BA8C: CA        DEX                                      ;
C - - - - - 0x01BA9D 06:BA8D: 8A        TXA                                      ;
C - - - - - 0x01BA9E 06:BA8E: 05 5F     ORA vChrLiveStatus                       ; 
C - - - - - 0x01BAA0 06:BA90: 85 5F     STA vChrLiveStatus                       ; <~ 0xFC + {0x00, 0x01, 0x02}, reset was in $C087
C - - - - - 0x01BAA2 06:BA92: A5 25     LDA vGameplayDemoCounter                 ;
C - - - - - 0x01BAA4 06:BA94: 29 07     AND #$07                                 ;
C - - - - - 0x01BAA6 06:BA96: A8        TAY                                      ; Y <~ {0x00, 0x01, 0x02, ..., 0x07}
C - - - - - 0x01BAA7 06:BA97: B9 B9 B9  LDA tbl_B9B9_checkpoints,Y               ;
C - - - - - 0x01BAAA 06:BA9A: 85 C4     STA vCheckpoint                          ;
C - - - - - 0x01BAAC 06:BA9C: B9 C1 B9  LDA tbl_B9C1_levels,Y                    ;
C - - - - - 0x01BAAF 06:BA9F: 85 5E     STA v_no_level                           ;
C - - - - - 0x01BAB1 06:BAA1: A9 00     LDA #$00                                 ;
C - - - - - 0x01BAB3 06:BAA3: 85 22     STA vDemoBtnPrsdCounter                  ; clear counter 
C - - - - - 0x01BAB5 06:BAA5: 85 23     STA vDemoBtnPrsdIndex                    ; clear index
C - - - - - 0x01BAB7 06:BAA7: 85 B6     STA vCurrentUniqueRoom                   ; clear
C - - - - - 0x01BAB9 06:BAA9: E6 25     INC vGameplayDemoCounter                 ;
C - - - - - 0x01BABB 06:BAAB: 60        RTS                                      ;

bra_BAAC_first_cutscene:
C - - - - - 0x01BABC 06:BAAC: A9 00     LDA #$00                                 ; CONSTANT - In game
C - - - - - 0x01BABE 06:BAAE: 85 37     STA vCutscenesMode                       ;
C - - - - - 0x01BAC0 06:BAB0: 68        PLA                                      ;
C - - - - - 0x01BAC1 06:BAB1: 68        PLA                                      ; double return, code after sub_B9DA_curscene_shared_routine will be skipped
C - - - - - 0x01BAC2 06:BAB2: 4C 46 C0  JMP loc_C046_repeat_starting_mode        ;

bra_BAB5_skip_gameplay:
C - - - - - 0x01BAC5 06:BAB5: 68        PLA                                      ; 
C - - - - - 0x01BAC6 06:BAB6: 68        PLA                                      ; double return, code after sub_B9DA_curscene_shared_routine will be skipped
C - - - - - 0x01BAC7 06:BAB7: 4C 8D C2  JMP loc_C28D_next_menu_demo              ;

sub_BABA_set_palette_for_clarissa:
C - - - - - 0x01BACA 06:BABA: A2 0F     LDX #$0F                   ; set loop counter
@bra_BABC_loop:                                                    ; loop by x (16 times)
C - - - - - 0x01BACC 06:BABC: BD 1A 80  LDA tbl_clarissa_colors,X  ;
C - - - - - 0x01BACF 06:BABF: 9D 00 06  STA vCachePalette,X        ;
C - - - - - 0x01BAD2 06:BAC2: CA        DEX                        ; decrement loop counter
C - - - - - 0x01BAD3 06:BAC3: 10 F7     BPL @bra_BABC_loop         ; If Register X >= 0x00
C - - - - - 0x01BAD5 06:BAC5: A9 0F     LDA #$0F                   ; CONSTANT - black color
C - - - - - 0x01BAD7 06:BAC7: 8D 10 06  STA vCachePalette + 16     ;
C - - - - - 0x01BADA 06:BACA: 60        RTS                        ;

; In: $0012 - Source address for the parameters (Low value)
; In: $0013 - Source address for the parameters (High value)
sub_BACB_fill_ppu:
C - - - - - 0x01BADB 06:BACB: A0 00     LDY #$00                       ; prepare an input parameter
C - - - - - 0x01BADD 06:BACD: 20 05 BB  JSR sub_BB05_prepare_00_to_05  ;
C - - - - - 0x01BAE0 06:BAD0: 84 11     STY vCacheRam_11               ; put the new offset (the old offset + 0x06)
C - - - - - 0x01BAE2 06:BAD2: A0 00     LDY #$00                       ; prepare an input parameter
loc_BAD4_repeat:
C D 1 - - - 0x01BAE4 06:BAD4: 20 12 BB  JSR sub_BB12_store_ppu_data    ;
C - - - - - 0x01BAE7 06:BAD7: F0 10     BEQ bra_BAE9_attributes        ; If the loop counters == 0x00
C - - - - - 0x01BAE9 06:BAD9: A5 00     LDA ram_0000                   ;
C - - - - - 0x01BAEB 06:BADB: 18        CLC                            ;
C - - - - - 0x01BAEC 06:BADC: 69 20     ADC #$20                       ; CONSTANT - in one row contains 32 tiles
C - - - - - 0x01BAEE 06:BADE: 85 00     STA ram_0000                   ; $0000 <~ $0000 + 0x20
C - - - - - 0x01BAF0 06:BAE0: A5 01     LDA ram_0001                   ;
C - - - - - 0x01BAF2 06:BAE2: 69 00     ADC #$00                       ;
C - - - - - 0x01BAF4 06:BAE4: 85 01     STA ram_0001                   ; value +1 with overflow
C - - - - - 0x01BAF6 06:BAE6: 4C D4 BA  JMP loc_BAD4_repeat            ;

bra_BAE9_attributes:
C - - - - - 0x01BAF9 06:BAE9: A4 11     LDY vCacheRam_11               ; load the new offset (the old offset + 0x06)
C - - - - - 0x01BAFB 06:BAEB: 20 05 BB  JSR sub_BB05_prepare_00_to_05  ;
C - - - - - 0x01BAFE 06:BAEE: A0 00     LDY #$00                       ; prepare an input parameter
loc_BAF0_repeat:
C D 1 - - - 0x01BB00 06:BAF0: 20 12 BB  JSR sub_BB12_store_ppu_data    ;
C - - - - - 0x01BB03 06:BAF3: F0 34     BEQ bra_BB29_RTS               ; If the loop counters == 0x00
C - - - - - 0x01BB05 06:BAF5: A5 00     LDA ram_0000                   ;
C - - - - - 0x01BB07 06:BAF7: 18        CLC                            ;
C - - - - - 0x01BB08 06:BAF8: 69 08     ADC #$08                       ; CONSTANT - in one row contains 8 attributes
C - - - - - 0x01BB0A 06:BAFA: 85 00     STA ram_0000                   ; $0000 <~ $0000 + 0x08
C - - - - - 0x01BB0C 06:BAFC: A5 01     LDA ram_0001                   ;
C - - - - - 0x01BB0E 06:BAFE: 69 00     ADC #$00                       ;
C - - - - - 0x01BB10 06:BB00: 85 01     STA ram_0001                   ; value +1 with overflow
C - - - - - 0x01BB12 06:BB02: 4C F0 BA  JMP loc_BAF0_repeat            ;

; In: $0012 - Source address for the parameters (Low value)
; In: $0013 - Source address for the parameters (High value)
; In: Register Y - the offset of the source address
sub_BB05_prepare_00_to_05:
C - - - - - 0x01BB15 06:BB05: A2 00     LDX #$00            ; set loop counter
@bra_BB07_loop:
C - - - - - 0x01BB17 06:BB07: B1 12     LDA (ram_0012),Y    ;
C - - - - - 0x01BB19 06:BB09: 95 00     STA ram_0000,X      ;
C - - - - - 0x01BB1B 06:BB0B: C8        INY                 ; next parameter
C - - - - - 0x01BB1C 06:BB0C: E8        INX                 ; decrement loop counter
C - - - - - 0x01BB1D 06:BB0D: E0 06     CPX #$06            ;
C - - - - - 0x01BB1F 06:BB0F: D0 F6     BNE @bra_BB07_loop  ; If Register X != 0x06
C - - - - - 0x01BB21 06:BB11: 60        RTS                 ;

; In: Register Y - the offset by the source address
; In: $0000 - PPU address (Low value)
; In: $0001 - PPU address (High value)
; In: $0002 - Source address for data (Low value)
; In: $0003 - Source address for data (High value)
; In: $0004 - loops counter
; In: $0005 - the number of iterations
; Out: Z = 1, if loops counter decrement to 0, otherwise Z = 0
sub_BB12_store_ppu_data:
C - - - - - 0x01BB22 06:BB12: A5 01     LDA ram_0001        ;
C - - - - - 0x01BB24 06:BB14: 8D 06 20  STA PPU_ADDRESS     ;
C - - - - - 0x01BB27 06:BB17: A5 00     LDA ram_0000        ;
C - - - - - 0x01BB29 06:BB19: 8D 06 20  STA PPU_ADDRESS     ; assinged PPU address
C - - - - - 0x01BB2C 06:BB1C: A6 05     LDX ram_0005        ; set loop counter
@bra_BB1E_loop:
C - - - - - 0x01BB2E 06:BB1E: B1 02     LDA (ram_0002),Y    ;
C - - - - - 0x01BB30 06:BB20: 8D 07 20  STA PPU_DATA        ;
C - - - - - 0x01BB33 06:BB23: C8        INY                 ; next data
C - - - - - 0x01BB34 06:BB24: CA        DEX                 ; decrement loop counter
C - - - - - 0x01BB35 06:BB25: D0 F7     BNE @bra_BB1E_loop  ; If Register X != 0x00
C - - - - - 0x01BB37 06:BB27: C6 04     DEC ram_0004        ; decrement loops counter
bra_BB29_RTS:
C - - - - - 0x01BB39 06:BB29: 60        RTS                 ;

sub_BB2A_solve_secret_codes:
C - - - - - 0x01BB3A 06:BB2A: 2C F6 FF  BIT Set_features                     ;
C - - - - - 0x01BB3D 06:BB2D: 50 62     BVC bra_BB91_RTS                     ; If Set_features = 0%X0XXXXXX
C - - - - - 0x01BB3F 06:BB2F: A5 B1     LDA v_start_level                    ;
C - - - - - 0x01BB41 06:BB31: D0 5E     BNE bra_BB91_RTS                     ; Go to the branch If start level is activated
C - - - - - 0x01BB43 06:BB33: A5 1C     LDA vBtnPressedInGame                ;
C - - - - - 0x01BB45 06:BB35: F0 56     BEQ bra_BB8D                         ; Go to the branch If the any buttons aren't pressed
C - - - - - 0x01BB47 06:BB37: A5 B3     LDA v_lock_secret_hits               ;
C - - - - - 0x01BB49 06:BB39: D0 56     BNE bra_BB91_RTS                     ; Go to the branch If the some buttons is pressing
C - - - - - 0x01BB4B 06:BB3B: A5 B2     LDA v_count_secret_hits              ;
C - - - - - 0x01BB4D 06:BB3D: D0 24     BNE bra_BB63_skip                    ; Go to the branch If some secret button is pressed
C - - - - - 0x01BB4F 06:BB3F: AD 92 BB  LDA tbl_BB92_stage_select_codes      ; BIT_BUTTON_Up, on the main title screen
C - - - - - 0x01BB52 06:BB42: 20 79 D0  JSR sub_D079_check_button_press      ;
C - - - - - 0x01BB55 06:BB45: D0 28     BNE bra_BB6F                         ; Go to the branch If the button 'Up' is pressed
C - - - - - 0x01BB57 06:BB47: AD 98 BB  LDA tbl_BB92_stage_select_codes + 6  ; BIT_BUTTON_Left, on the main title screen
C - - - - - 0x01BB5A 06:BB4A: 20 79 D0  JSR sub_D079_check_button_press      ;
C - - - - - 0x01BB5D 06:BB4D: F0 06     BEQ @bra_BB55_skip                   ; Go to the branch If the button 'Left' isn't pressed
C - - - - - 0x01BB5F 06:BB4F: A9 06     LDA #$06                             ; The offset in the table secret code -> level 3
C - - - - - 0x01BB61 06:BB51: 85 B4     STA v_offset_in_secret_codes
C - - - - - 0x01BB63 06:BB53: D0 1A     BNE bra_BB6F
@bra_BB55_skip:
C - - - - - 0x01BB65 06:BB55: AD 9E BB  LDA tbl_BB92_stage_select_codes + 12 ; BIT_BUTTON_Down, on the main title screen
C - - - - - 0x01BB68 06:BB58: 20 79 D0  JSR sub_D079_check_button_press      ;
C - - - - - 0x01BB6B 06:BB5B: F0 2A     BEQ bra_BB87_reset                   ; Go to the branch If the button 'Down' isn't pressed
C - - - - - 0x01BB6D 06:BB5D: A9 0C     LDA #$0C                             ; The offset in the table secret code -> level 4
C - - - - - 0x01BB6F 06:BB5F: 85 B4     STA v_offset_in_secret_codes
C - - - - - 0x01BB71 06:BB61: D0 0C     BNE bra_BB6F
bra_BB63_skip:
C - - - - - 0x01BB73 06:BB63: 18        CLC
C - - - - - 0x01BB74 06:BB64: 65 B4     ADC v_offset_in_secret_codes
C - - - - - 0x01BB76 06:BB66: A8        TAY
C - - - - - 0x01BB77 06:BB67: B9 92 BB  LDA tbl_BB92_stage_select_codes,Y
C - - - - - 0x01BB7A 06:BB6A: 20 79 D0  JSR sub_D079_check_button_press      ; bank FF
C - - - - - 0x01BB7D 06:BB6D: F0 18     BEQ bra_BB87_reset                   ; Go to the branch If the secret button isn't pressed
bra_BB6F:
C - - - - - 0x01BB7F 06:BB6F: E6 B2     INC v_count_secret_hits
C - - - - - 0x01BB81 06:BB71: E6 B3     INC v_lock_secret_hits
C - - - - - 0x01BB83 06:BB73: A5 B2     LDA v_count_secret_hits
C - - - - - 0x01BB85 06:BB75: C9 06     CMP #$06                             ; The count of the buttons is in the secret combination
C - - - - - 0x01BB87 06:BB77: D0 18     BNE bra_BB91_RTS
C - - - - - 0x01BB89 06:BB79: A2 01     LDX #$01                             ; It's 1 secret combination
C - - - - - 0x01BB8B 06:BB7B: A5 B4     LDA v_offset_in_secret_codes
C - - - - - 0x01BB8D 06:BB7D: F0 06     BEQ bra_BB85
C - - - - - 0x01BB8F 06:BB7F: E8        INX                                  ; If it's 2 secret combination
C - - - - - 0x01BB90 06:BB80: C9 06     CMP #$06
C - - - - - 0x01BB92 06:BB82: F0 01     BEQ bra_BB85
C - - - - - 0x01BB94 06:BB84: E8        INX                                  ; If it's 3 secret combination
bra_BB85:
C - - - - - 0x01BB95 06:BB85: 86 B1     STX v_start_level
bra_BB87_reset:
C - - - - - 0x01BB97 06:BB87: A9 00     LDA #$00
C - - - - - 0x01BB99 06:BB89: 85 B2     STA v_count_secret_hits
C - - - - - 0x01BB9B 06:BB8B: 85 B4     STA v_offset_in_secret_codes
bra_BB8D:
C - - - - - 0x01BB9D 06:BB8D: A9 00     LDA #$00
C - - - - - 0x01BB9F 06:BB8F: 85 B3     STA v_lock_secret_hits
bra_BB91_RTS:
C - - - - - 0x01BBA1 06:BB91: 60        RTS                                  ;

tbl_BB92_stage_select_codes:
; Stage select codes (level 2)
- D 1 - - - 0x01BBA2 06:BB92: 10        .byte BIT_BUTTON_Up
- D 1 - - - 0x01BBA3 06:BB93: 20        .byte BIT_BUTTON_Down
- D 1 - - - 0x01BBA4 06:BB94: 40        .byte BIT_BUTTON_Left
- D 1 - - - 0x01BBA5 06:BB95: 80        .byte BIT_BUTTON_Right
- D 1 - - - 0x01BBA6 06:BB96: 02        .byte BIT_BUTTON_B
- D 1 - - - 0x01BBA7 06:BB97: 01        .byte BIT_BUTTON_A
; Stage select codes (level 3)
- D 1 - - - 0x01BBA8 06:BB98: 40        .byte BIT_BUTTON_Left
- D 1 - - - 0x01BBA9 06:BB99: 80        .byte BIT_BUTTON_Right
- D 1 - - - 0x01BBAA 06:BB9A: 10        .byte BIT_BUTTON_Up
- D 1 - - - 0x01BBAB 06:BB9B: 20        .byte BIT_BUTTON_Down
- D 1 - - - 0x01BBAC 06:BB9C: 01        .byte BIT_BUTTON_A
- D 1 - - - 0x01BBAD 06:BB9D: 02        .byte BIT_BUTTON_B
; Stage select codes (level 4)
- D 1 - - - 0x01BBAE 06:BB9E: 20        .byte BIT_BUTTON_Down
- D 1 - - - 0x01BBAF 06:BB9F: 10        .byte BIT_BUTTON_Up
- D 1 - - - 0x01BBB0 06:BBA0: 80        .byte BIT_BUTTON_Right
- D 1 - - - 0x01BBB1 06:BBA1: 40        .byte BIT_BUTTON_Left
- D 1 - - - 0x01BBB2 06:BBA2: 01        .byte BIT_BUTTON_A
- D 1 - - - 0x01BBB3 06:BBA3: 01        .byte BIT_BUTTON_A
loc_BBA4_play_background_music:
sub_BBA4_play_background_music:
C D 1 - - - 0x01BBB4 06:BBA4: A9 05     LDA #$05                                  ; ~> the sound index 'music 'under the water''
C - - - - - 0x01BBB6 06:BBA6: 24 6D     BIT vMovableChrStatus                     ;
C - - - - - 0x01BBB8 06:BBA8: 30 13     BMI bra_BBBD_skip                         ; If the character is moving in the water
C - - - - - 0x01BBBA 06:BBAA: 20 FE BB  JSR sub_BBFE_is_unique_room               ;
C - - - - - 0x01BBBD 06:BBAD: B0 36     BCS bra_BBE5_resolve_index_in_unique_room ; If the current room is unique
C - - - - - 0x01BBBF 06:BBAF: A5 5E     LDA v_no_level                            ;
C - - - - - 0x01BBC1 06:BBB1: C9 03     CMP #$03                                  ; CONSTANT - level 4 + racing
C - - - - - 0x01BBC3 06:BBB3: D0 08     BNE bra_BBBD_skip                         ; If v_no_level != 0x03
C - - - - - 0x01BBC5 06:BBB5: A6 46     LDX vNoSubLevel                           ;
C - - - - - 0x01BBC7 06:BBB7: E0 19     CPX #$19                                  ; CONSTANT - level racing
C - - - - - 0x01BBC9 06:BBB9: D0 02     BNE bra_BBBD_skip                         ; If vNoSubLevel != 0x19
C - - - - - 0x01BBCB 06:BBBB: A9 04     LDA #$04                                  ; ~> the sound index 'music level racing'
; in: Register A - the sound index
bra_BBBD_skip:
loc_BBBD_add_room_sound:
C D 1 - - - 0x01BBCD 06:BBBD: C5 FD     CMP vSoundRoomIndex         ;
C - - - - - 0x01BBCF 06:BBBF: D0 07     BNE bra_BBC8_add_room_sound ; If Register A != vSoundRoomIndex
C - - - - - 0x01BBD1 06:BBC1: AD 00 04  LDA vApuChannelStatus       ; !(WHY?), seems to be excessive
C - - - - - 0x01BBD4 06:BBC4: 8D 15 40  STA APU_STATUS              ; !(WHY?), seems to be excessive
C - - - - - 0x01BBD7 06:BBC7: 60        RTS                         ;

; in: Register A - the sound index
bra_BBC8_add_room_sound:
C - - - - - 0x01BBD8 06:BBC8: 85 FD     STA vSoundRoomIndex              ;
C - - - - - 0x01BBDA 06:BBCA: 0A        ASL                              ;
C - - - - - 0x01BBDB 06:BBCB: 0A        ASL                              ; 
C - - - - - 0x01BBDC 06:BBCC: AA        TAX                              ;
C - - - - - 0x01BBDD 06:BBCD: BD 10 BC  LDA tbl_BC10_sound_indexes,X     ;
C - - - - - 0x01BBE0 06:BBD0: 20 20 C4  JSR sub_C420_add_sound_effect    ;
C - - - - - 0x01BBE3 06:BBD3: BD 11 BC  LDA tbl_BC10_sound_indexes + 1,X ;
C - - - - - 0x01BBE6 06:BBD6: 20 20 C4  JSR sub_C420_add_sound_effect    ;
C - - - - - 0x01BBE9 06:BBD9: BD 12 BC  LDA tbl_BC10_sound_indexes + 2,X ;
C - - - - - 0x01BBEC 06:BBDC: 20 20 C4  JSR sub_C420_add_sound_effect    ;
C - - - - - 0x01BBEF 06:BBDF: BD 13 BC  LDA tbl_BC10_sound_indexes + 3,X ;
C - - - - - 0x01BBF2 06:BBE2: 4C 20 C4  JMP loc_C420_add_sound_effect    ;

bra_BBE5_resolve_index_in_unique_room:
C - - - - - 0x01BBF5 06:BBE5: A0 0A     LDY #$0A                    ; ~> the starting sound index 'in a room'
C - - - - - 0x01BBF7 06:BBE7: A5 B6     LDA vCurrentUniqueRoom      ;
C - - - - - 0x01BBF9 06:BBE9: 29 03     AND #$03                    ; CONSTANT - room with the room
C - - - - - 0x01BBFB 06:BBEB: C9 03     CMP #$03                    ;
C - - - - - 0x01BBFD 06:BBED: D0 08     BNE @bra_BBF7_add           ; If the current room isn't with the room
C - - - - - 0x01BBFF 06:BBEF: A5 3B     LDA vSharedGameStatus       ;
C - - - - - 0x01BC01 06:BBF1: 29 01     AND #$01                    ; CONSTANT - A screen with the message
C - - - - - 0x01BC03 06:BBF3: D0 02     BNE @bra_BBF7_add           ; If the current room contains a screen with the message
C - - - - - 0x01BC05 06:BBF5: A0 06     LDY #$06                    ; ~> the starting sound index 'boss time'
@bra_BBF7_add:
C - - - - - 0x01BC07 06:BBF7: 98        TYA                         ;
C - - - - - 0x01BC08 06:BBF8: 18        CLC                         ;
C - - - - - 0x01BC09 06:BBF9: 65 5E     ADC v_no_level              ; 0x06 ... x09 - index for music 'boss time', 0x0A ... x0D - index for music 'in a room'
C - - - - - 0x01BC0B 06:BBFB: 4C BD BB  JMP loc_BBBD_add_room_sound ;

; Out: Carry flag - 1 for NPC rooms, briefcase rooms, rooms with the boss, else 0.
sub_BBFE_is_unique_room:
C - - - - - 0x01BC0E 06:BBFE: A5 46     LDA vNoSubLevel            ;
C - - - - - 0x01BC10 06:BC00: C9 14     CMP #$14                   ; CONSTANT - a room 'boss of level 4'
C - - - - - 0x01BC12 06:BC02: F0 0A     BEQ bra_BC0E_return_true   ; If vNoSubLevel == 0x14
C - - - - - 0x01BC14 06:BC04: C9 1A     CMP #$1A                   ; CONSTANT - a npc room or a character tied up
C - - - - - 0x01BC16 06:BC06: 90 04     BCC @bra_BC0C_return_false ; If vNoSubLevel < 0x1A
C - - - - - 0x01BC18 06:BC08: C9 24     CMP #$24                   ; CONSTANT - a room - level 3.0 (water level)
C - - - - - 0x01BC1A 06:BC0A: 90 02     BCC bra_BC0E_return_true   ; If vNoSubLevel < 0x24
@bra_BC0C_return_false:
C - - - - - 0x01BC1C 06:BC0C: 18        CLC                        ;
C - - - - - 0x01BC1D 06:BC0D: 60        RTS                        ;

bra_BC0E_return_true:
C - - - - - 0x01BC1E 06:BC0E: 38        SEC                        ;
C - - - - - 0x01BC1F 06:BC0F: 60        RTS                        ;

tbl_BC10_sound_indexes:
- D 1 - - - 0x01BC20 06:BC10: 04        .byte $04, $05, $39, $48 ; music level 1.0
- D 1 - - - 0x01BC24 06:BC14: 06        .byte $06, $07, $3A, $4B ; music level 2.0
- D 1 - - - 0x01BC28 06:BC18: 08        .byte $08, $09, $3B, $49 ; music level 3.0
- D 1 - - - 0x01BC2C 06:BC1C: 1D        .byte $1D, $1E, $44, $4D ; music level 4.0
- D 1 - - - 0x01BC30 06:BC20: 1B        .byte $1B, $1C, $43, $4C ; music level racing
- D 1 - - - 0x01BC34 06:BC24: 1F        .byte $1F, $20, $45, $4A ; music 'under the water'
- D 1 - - - 0x01BC38 06:BC28: 22        .byte $22, $23, $46, $4E ; music 'boss time'
- D 1 - - - 0x01BC3C 06:BC2C: 22        .byte $22, $23, $46, $4E ;
- D 1 - - - 0x01BC40 06:BC30: 22        .byte $22, $23, $46, $4E ; 
- D 1 - - - 0x01BC44 06:BC34: 22        .byte $22, $23, $46, $4E ;
- D 1 - - - 0x01BC48 06:BC38: 24        .byte $24, $25, $47, $4F ; music 'in a room'
- D 1 - - - 0x01BC4C 06:BC3C: 24        .byte $24, $25, $47, $4F ;
- D 1 - - - 0x01BC50 06:BC40: 24        .byte $24, $25, $47, $4F ;
- D 1 - - - 0x01BC54 06:BC44: 24        .byte $24, $25, $47, $4F ;

; Only for test mode
sub_BC48_next_room:
C - - - - - 0x01BC58 06:BC48: A9 00     LDA #$00                        ;
C - - - - - 0x01BC5A 06:BC4A: 85 B7     STA vRoomExtraInfo              ; clear
C - - - - - 0x01BC5C 06:BC4C: E6 46     INC vNoSubLevel                 ;
C - - - - - 0x01BC5E 06:BC4E: A5 46     LDA vNoSubLevel                 ;
C - - - - - 0x01BC60 06:BC50: 85 C4     STA vCheckpoint                 ; updates the checkpoint
@bra_BC52_repeat:
C - - - - - 0x01BC62 06:BC52: 4A        LSR                             ;
C - - - - - 0x01BC63 06:BC53: 4A        LSR                             ;
C - - - - - 0x01BC64 06:BC54: 4A        LSR                             ;
C - - - - - 0x01BC65 06:BC55: A8        TAY                             ; Y <~ vCheckpoint / 8
C - - - - - 0x01BC66 06:BC56: A5 C4     LDA vCheckpoint                 ;
C - - - - - 0x01BC68 06:BC58: 29 07     AND #$07                        ;
C - - - - - 0x01BC6A 06:BC5A: AA        TAX                             ; X <~ vCheckpoint % 8
C - - - - - 0x01BC6B 06:BC5B: BD 70 BC  LDA tbl_BC70_mask_bit,X         ;
C - - - - - 0x01BC6E 06:BC5E: 39 78 BC  AND tbl_BC78_checkpoints_bits,Y ;
C - - - - - 0x01BC71 06:BC61: D0 0C     BNE @bra_BC6F_RTS               ; If the checkpoint is found in the table with bits
C - - - - - 0x01BC73 06:BC63: E6 C4     INC vCheckpoint                 ;
C - - - - - 0x01BC75 06:BC65: A5 C4     LDA vCheckpoint                 ; next checkpoint
C - - - - - 0x01BC77 06:BC67: C9 7E     CMP #$7E                        ; CONSTANT, 0x7D - Max room identificator
C - - - - - 0x01BC79 06:BC69: 90 E7     BCC @bra_BC52_repeat            ; If vCheckpoint < 0x7E
C - - - - - 0x01BC7B 06:BC6B: A9 00     LDA #$00                        ;
C - - - - - 0x01BC7D 06:BC6D: 85 C4     STA vCheckpoint                 ; reset
@bra_BC6F_RTS:
C - - - - - 0x01BC7F 06:BC6F: 60        RTS                             ;

tbl_BC70_mask_bit:
- D - - - - 0x01BC80 06:BC70: 80        .byte $80, $40, $20, $10, $08, $04, $02, $01

tbl_BC78_checkpoints_bits:
- D - - - - 0x01BC88 06:BC78: 9F        .byte $9F, $FF, $F0, $40, $00, $00, $00, $00
- D - - - - 0x01BC90 06:BC80: 3F        .byte $3F, $FF, $FF, $FF, $FF, $FF, $FF, $FC

tbl_BC88_palettes:
; Palette 1,2
- D 1 - - - 0x01BC98 06:BC88: 0F        .byte $0F, $28, $18, $08
- D 1 - - - 0x01BC9C 06:BC8C: 0F        .byte $0F, $10, $0A, $00
; Palette 3,4
- D 1 - - - 0x01BCA0 06:BC90: 0F        .byte $0F, $05, $20, $25
- D 1 - - - 0x01BCA4 06:BC94: 0F        .byte $0F, $21, $30, $11
; Palette 5,6
- D 1 - - - 0x01BCA8 06:BC98: 0F        .byte $0F, $0A, $2A, $1A
- D 1 - - - 0x01BCAC 06:BC9C: 0F        .byte $0F, $06, $26, $16
; Palette 7,8
- D 1 - - - 0x01BCB0 06:BCA0: 0F        .byte $0F, $22, $32, $12
- D 1 - - - 0x01BCB4 06:BCA4: 0F        .byte $0F, $25, $15, $05

; 1, 3, 5, 7 byte - NPC Model
; 2, 4, 6, 8 byte - a message number
tbl_BCA8_final_dialogs:
- D 1 - I - 0x01BCB8 06:BCA8: 27        .byte $27, $63, $2A, $64, $2A, $65, $27, $66   ; for Lupin
- D 1 - I - 0x01BCC0 06:BCB0: 28        .byte $28, $68, $2A, $69, $2A, $6A, $28, $6B   ; for Jigen
- D 1 - I - 0x01BCC8 06:BCB8: 29        .byte $29, $6D, $2A, $6E, $2A, $6F, $29, $70   ; for Goemon

tbl_BCC0_chest_lid:
- D 1 - - - 0x01BCD0 06:BCC0: C0        .byte $C0   ; 
- D 1 - - - 0x01BCD1 06:BCC1: C1        .byte $C1   ; 
- D 1 - - - 0x01BCD2 06:BCC2: C1        .byte $C1   ; 
- D 1 - - - 0x01BCD3 06:BCC3: FE        .byte $FE   ; 

tbl_BCC4_messages:
- D 1 - - - 0x01BCD4 06:BCC4: 67        .byte $67   ; Lupin
- D 1 - - - 0x01BCD5 06:BCC5: 6C        .byte $6C   ; Jigen
- D 1 - - - 0x01BCD6 06:BCC6: 71        .byte $71   ; Goemon

tbl_BCC7_palettes:
- D - - - - 0x01BCD7 06:BCC7: 0F        .byte $0F, $27, $17, $07   ; sprites, 3rd palette
- D 1 - - - 0x01BCDB 06:BCCB: 0F        .byte $0F, $16, $11, $1A   ; sprites, 4th palette

tbl_BCCF_clarissa_is_saved_chr_banks:
- D 1 - - - 0x01BCDF 06:BCCF: 12        .byte $12, $00, $38, $39, $36, $37   ;

- D 1 - I - 0x01BCE5 06:BCD5: 02        .byte $02   ; 
- D 1 - I - 0x01BCE6 06:BCD6: 01        .byte $01   ; 
- D 1 - I - 0x01BCE7 06:BCD7: 00        .byte $00   ; 
- D 1 - I - 0x01BCE8 06:BCD8: 0F        .byte $0F   ; 
- D 1 - I - 0x01BCE9 06:BCD9: 0D        .byte $0D   ; 
- D 1 - I - 0x01BCEA 06:BCDA: 0B        .byte $0B   ; 
- D 1 - I - 0x01BCEB 06:BCDB: 09        .byte $09   ; 
- D 1 - I - 0x01BCEC 06:BCDC: 0A        .byte $0A   ; 
- D 1 - I - 0x01BCED 06:BCDD: 0B        .byte $0B   ; 
- D 1 - I - 0x01BCEE 06:BCDE: 0C        .byte $0C   ; 
- D 1 - I - 0x01BCEF 06:BCDF: 0D        .byte $0D   ; 
- D 1 - I - 0x01BCF0 06:BCE0: 0F        .byte $0F   ; 
- D 1 - I - 0x01BCF1 06:BCE1: 00        .byte $00   ; 
- D 1 - I - 0x01BCF2 06:BCE2: 01        .byte $01   ; 
- D 1 - I - 0x01BCF3 06:BCE3: 03        .byte $03   ; 
- D 1 - I - 0x01BCF4 06:BCE4: 04        .byte $04   ; 

- D 1 - I - 0x01BCF5 06:BCE5: 20        .byte $20   ; 
- D 1 - I - 0x01BCF6 06:BCE6: 08        .byte $08   ; 
- D 1 - I - 0x01BCF7 06:BCE7: 08        .byte $08   ; 
- D 1 - I - 0x01BCF8 06:BCE8: 08        .byte $08   ; 
- D 1 - I - 0x01BCF9 06:BCE9: 0C        .byte $0C   ; 
- D 1 - I - 0x01BCFA 06:BCEA: 20        .byte $20   ; 
- D 1 - I - 0x01BCFB 06:BCEB: 20        .byte $20   ; 
- D 1 - I - 0x01BCFC 06:BCEC: 20        .byte $20   ; 
- D 1 - I - 0x01BCFD 06:BCED: 20        .byte $20   ; 
- D 1 - I - 0x01BCFE 06:BCEE: 10        .byte $10   ; 
- D 1 - I - 0x01BCFF 06:BCEF: 20        .byte $20   ; 
- D 1 - I - 0x01BD00 06:BCF0: 10        .byte $10   ; 
- D 1 - I - 0x01BD01 06:BCF1: 08        .byte $08   ; 
- D 1 - I - 0x01BD02 06:BCF2: 10        .byte $10   ; 
- D 1 - I - 0x01BD03 06:BCF3: 10        .byte $10   ; 
- D 1 - I - 0x01BD04 06:BCF4: 10        .byte $10   ; 

; 1 byte - health points
; 2 byte - the 1 number of ChrBank
; 3 byte - the 2 number of ChrBank
; 4 byte - see v_sprite_magic2
tbl_ptr_boss_sprite_params_:
- D 1 - - - 0x01BD05 06:BCF5: 14        .byte $14, $17, $17, $00   ; 
- D 1 - - - 0x01BD09 06:BCF9: 20        .byte $20, $13, $13, $3C   ; 
- D 1 - - - 0x01BD0D 06:BCFD: 20        .byte $20, $0F, $0F, $70   ;
- D 1 - - - 0x01BD11 06:BD01: 20        .byte $20, $3F, $3F, $94   ; 

; 1 byte - a start status
; 2 byte - low value for the wait counter
; 3 byte - high value for the wait counter
; 4 byte - position X
tbl_ptr_last_boss_params_:
- D 1 - - - 0x01BD15 06:BD05: 89        .byte $89, $90, $08, $BC   ; 
- D 1 - - - 0x01BD19 06:BD09: 88        .byte $88, $90, $00, $84   ; 

; Types:
; Cat with the gun, Karate-girl, Skeleton, Mummy, Egyptian with bow, Egyptian with a sword, Ninja upside down
; Zenigata, Fly man, The fat sailor, Boy in green, Egyptian with a boomerung, Karate-boy,
; Street karate-boy, Knight in armor with a shield
tbl_ptr_enemy_t3_types_for_sprites:
- D 1 - - - 0x01BD1D 06:BD0D: 01        .byte $01, $19, $24, $26, $35, $36, $38, $07, $1F, $09, $1A, $37, $17, $18, $1C

; 1 byte - 0x80 - the projectile is used, 0x00 - it isn't used
; 2 byte - health points (0x00 - 1HP)
; 3 byte - the 1 number of ChrBank
; 4 byte - the 2 number of ChrBank
; 5 byte - see v_sprite_magic2
; 6 byte - see v_sprite_magic3
; 7 byte - extra1, analog 5th byte
; 8 byte - extra2, analog 5th byte
tbl_ptr_enemy_t3_sprite_params_:
- D 1 - - - 0x01BD2C 06:BD1C: 00        .byte $00, $00, $0C, $FF, $32, $42, $52, $4A  ; Cat with the gun
- D 1 - - - 0x01BD34 06:BD24: 80        .byte $80, $00, $10, $12, $60, $82, $14, $00  ; Karate-girl
- D 1 - - - 0x01BD3C 06:BD2C: 00        .byte $00, $02, $19, $FF, $00, $02, $00, $00  ; Skeleton
- D 1 - - - 0x01BD44 06:BD34: 00        .byte $00, $0A, $3E, $FF, $1C, $02, $00, $00  ; Mummy
- D 1 - - - 0x01BD4C 06:BD3C: 80        .byte $80, $00, $18, $FF, $70, $02, $00, $00  ; Egyptian with bow
- D 1 - - - 0x01BD54 06:BD44: 00        .byte $00, $00, $3E, $FF, $90, $02, $00, $00  ; Egyptian with a sword
- D 1 - - - 0x01BD5C 06:BD4C: 80        .byte $80, $00, $3E, $FF, $B4, $02, $00, $00  ; Ninja upside down
- D 1 - - - 0x01BD64 06:BD54: 00        .byte $00, $00, $04, $FF, $00, $12, $00, $00  ; Zenigata
- D 1 - - - 0x01BD6C 06:BD5C: 00        .byte $00, $00, $FF, $15, $5E, $C0, $00, $00  ; Fly man
- D 1 - - - 0x01BD74 06:BD64: 00        .byte $00, $04, $FF, $0E, $84, $46, $00, $00  ; The fat sailor
- D 1 - - - 0x01BD7C 06:BD6C: 00        .byte $00, $00, $10, $11, $84, $82, $14, $00  ; Boy in green
- D 1 - - - 0x01BD84 06:BD74: 80        .byte $80, $02, $18, $FF, $AC, $80, $00, $00  ; Egyptian with a boomerung
- D 1 - - - 0x01BD8C 06:BD7C: 00        .byte $00, $00, $10, $FF, $2C, $82, $14, $4C  ; Karate-boy
- D 1 - - - 0x01BD94 06:BD84: 00        .byte $00, $00, $10, $FF, $2C, $82, $14, $4C  ; Street karate-boy
- D 1 - - - 0x01BD9C 06:BD8C: 00        .byte $00, $00, $FF, $16, $00, $C6, $00, $00  ; Knight in armor with a shield
- D 1 - - - 0x01BDA4 06:BD94: 00        .byte $00, $00, $FF, $16, $22, $C6, $00, $00  ; Others

; 1 byte - the soar flags (see vEnemyBSoarFlags)
; 2 byte - the starting jump type
; 3 byte - the starting status
; 4 byte - the 1 number of ChrBank
tbl_ptr_enemy_t4_sprite_params_:
- D 1 - - - 0x01BDAC 06:BD9C: 00        .byte $00, $00, $C0, $0C   ; Gray land hat, right
- D 1 - - - 0x01BDB0 06:BDA0: 00        .byte $00, $08, $C1, $0C   ; Gray land hat, left
- D 1 - - - 0x01BDB4 06:BDA4: 80        .byte $80, $00, $C0, $0E   ; Black land hat, right
- D 1 - - - 0x01BDB8 06:BDA8: 80        .byte $80, $08, $C1, $0E   ; Black land hat, left
- D 1 - - - 0x01BDBC 06:BDAC: 00        .byte $00, $00, $C0, $14   ; Bat, right
- D 1 - - - 0x01BDC0 06:BDB0: 00        .byte $00, $08, $C1, $14   ; Bat, left
- D 1 - - - 0x01BDC4 06:BDB4: 00        .byte $00, $00, $C2, $10   ; Batterfly, right
- D 1 - - - 0x01BDC8 06:BDB8: 00        .byte $00, $08, $C2, $10   ; Batterfly, left
- D 1 - - - 0x01BDCC 06:BDBC: 80        .byte $80, $00, $C3, $10   ; Broned batterfly, right
- D 1 - - - 0x01BDD0 06:BDC0: 80        .byte $80, $08, $C3, $10   ; Broned batterfly, left
- D 1 - - - 0x01BDD4 06:BDC4: 00        .byte $00, $00, $C0, $18   ; Gargoyle, right
- D 1 - - - 0x01BDD8 06:BDC8: 00        .byte $00, $08, $C1, $18   ; Gargoyle, left

; Types: The bird with a bomb, The barrel, The barrel, Cobblestone, Potted snakes, The bird
tbl_ptr_enemy_t2_types_for_sprites:
- D 1 - - - 0x01BDDC 06:BDCC: 23        .byte $23, $0A, $1D, $21, $34, $22

; 1 byte - the 1 number of ChrBank
; 2 byte - the 2 number of ChrBank
; 3 byte - see v_sprite_magic2
; 4 byte - see v_sprite_magic3
tbl_ptr_enemy_t2_sprite_params_:
- D 1 - - - 0x01BDE2 06:BDD2: FF        .byte $FF, $19, $6A, $C3
- D 1 - - - 0x01BDE6 06:BDD6: 0C        .byte $0C, $FF, $28, $43
- D 1 - - - 0x01BDEA 06:BDDA: FF        .byte $FF, $12, $28, $47
- D 1 - - - 0x01BDEE 06:BDDE: FF        .byte $FF, $19, $28, $47
- D 1 - - - 0x01BDF2 06:BDE2: FF        .byte $FF, $3E, $56, $07
- D 1 - - - 0x01BDF6 06:BDE6: FF        .byte $FF, $19, $7A, $C3
- D 1 - - - 0x01BDFA 06:BDEA: 14        .byte $14, $FF, $4A, $C3

; 1 byte - the room number
; 2 byte - the macro X-position
; 3 byte - the X-position
; 4 byte - the enemyB number
tbl_ptr_walls:
- D 1 - - - 0x01BDFE 06:BDEE: 4C        .byte $4C, $01, $94, $00   ; level 4, map 2 (F0-F6)
- D 1 - - - 0x01BE02 06:BDF2: 51        .byte $51, $04, $34, $00
- D 1 - - - 0x01BE06 06:BDF6: 51        .byte $51, $04, $C4, $01
- D 1 - - - 0x01BE0A 06:BDFA: 58        .byte $58, $01, $34, $00
- D 1 - - - 0x01BE0E 06:BDFE: 58        .byte $58, $01, $C4, $01
- D 1 - - - 0x01BE12 06:BE02: 5C        .byte $5C, $04, $B4, $00   ; level 4, map 3 (C1-C6)
- D 1 - - - 0x01BE16 06:BE06: 64        .byte $64, $02, $94, $00
- D 1 - - - 0x01BE1A 06:BE0A: 67        .byte $67, $03, $94, $00   ; level 4, map 4 (A0-J0)
- D 1 - - - 0x01BE1E 06:BE0E: 67        .byte $67, $05, $94, $01
- D 1 - - - 0x01BE22 06:BE12: 78        .byte $78, $03, $34, $00   ; level 4, map 4 (D6-H6)
- D 1 - - - 0x01BE26 06:BE16: 67        .byte $67, $03, $C4, $01
- D 1 - - - 0x01BE2A 06:BE1A: 61        .byte $61, $03, $01, $0E
- D 1 - - - 0x01BE2E 06:BE1E: 3A        .byte $3A, $00, $5B, $5B
- D 1 - - - 0x01BE32 06:BE22: 5B        .byte $5B, $12, $5B, $5B
- D 1 - - - 0x01BE36 06:BE26: 5B        .byte $5B, $5B, $5B, $0E
- D 1 - - - 0x01BE3A 06:BE2A: 3A        .byte $3A, $00, $01, $02
- D 1 - - - 0x01BE3E 06:BE2E: 01        .byte $01, $12, $01, $02
- D 1 - - - 0x01BE42 06:BE32: 01        .byte $01, $02, $01, $0E
- D 1 - - - 0x01BE46 06:BE36: 3A        .byte $3A, $00, $02, $01
- D 1 - - - 0x01BE4A 06:BE3A: 02        .byte $02, $2C, $02, $01
- D 1 - - - 0x01BE4E 06:BE3E: 02        .byte $02, $01, $02, $0E
- D 1 - - - 0x01BE52 06:BE42: 3A        .byte $3A, $00, $5B, $5B
- D 1 - - - 0x01BE56 06:BE46: 5B        .byte $5B, $5B, $5B, $5B
- D 1 - - - 0x01BE5A 06:BE4A: 5B        .byte $5B, $5B, $5B, $0E
- D 1 - - - 0x01BE5E 06:BE4E: 3A        .byte $3A, $00, $6B, $6B
- D 1 - - - 0x01BE62 06:BE52: 6B        .byte $6B, $6B, $6B, $71
- D 1 - - - 0x01BE66 06:BE56: 74        .byte $74, $74, $75, $0E
- D 1 - - - 0x01BE6A 06:BE5A: 3A        .byte $3A, $00, $6B, $6B
- D 1 - - - 0x01BE6E 06:BE5E: 6C        .byte $6C, $6D, $6B, $72
- D 1 - - - 0x01BE72 06:BE62: 1C        .byte $1C, $1D, $1D, $0E
- D 1 - - - 0x01BE76 06:BE66: 3A        .byte $3A, $00, $6B, $6B
- D 1 - - - 0x01BE7A 06:BE6A: 6C        .byte $6C, $6E, $6B, $72
- D 1 - - - 0x01BE7E 06:BE6E: 1E        .byte $1E, $1F, $1F, $0E
- D 1 - - - 0x01BE82 06:BE72: 3A        .byte $3A, $00, $6B, $6B
- D 1 - - - 0x01BE86 06:BE76: 6F        .byte $6F, $70, $6B, $73
- D 1 - - - 0x01BE8A 06:BE7A: 76        .byte $76, $76, $77, $0E
- D 1 - - - 0x01BE8E 06:BE7E: 3A        .byte $3A, $00, $94, $96
- D 1 - - - 0x01BE92 06:BE82: 9E        .byte $9E, $83, $78, $79
- D 1 - - - 0x01BE96 06:BE86: 7A        .byte $7A, $81, $82, $0E
- D 1 - - - 0x01BE9A 06:BE8A: 3A        .byte $3A, $00, $95, $97
- D 1 - - - 0x01BE9E 06:BE8E: 9F        .byte $9F, $72, $7B, $7C
- D 1 - - - 0x01BEA2 06:BE92: 7D        .byte $7D, $81, $82, $0E
- D 1 - - - 0x01BEA6 06:BE96: 3A        .byte $3A, $00, $98, $9A
- D 1 - - - 0x01BEAA 06:BE9A: A0        .byte $A0, $84, $7E, $7F
- D 1 - - - 0x01BEAE 06:BE9E: 80        .byte $80, $81, $82, $0E
- D 1 - - - 0x01BEB2 06:BEA2: 3A        .byte $3A, $00, $99, $9B
- D 1 - - - 0x01BEB6 06:BEA6: 85        .byte $85, $2E, $2E, $88
- D 1 - - - 0x01BEBA 06:BEAA: 89        .byte $89, $8A, $8B, $0E
- D 1 - - - 0x01BEBE 06:BEAE: 3A        .byte $3A, $00, $95, $97
- D 1 - - - 0x01BEC2 06:BEB2: 86        .byte $86, $2E, $2E, $8C
- D 1 - - - 0x01BEC6 06:BEB6: 8D        .byte $8D, $8D, $8E, $0E
- D 1 - - - 0x01BECA 06:BEBA: 3A        .byte $3A, $00, $98, $9A
- D 1 - - - 0x01BECE 06:BEBE: 86        .byte $86, $2E, $92, $8C
- D 1 - - - 0x01BED2 06:BEC2: 8D        .byte $8D, $8D, $8E, $0E
- D 1 - - - 0x01BED6 06:BEC6: 3A        .byte $3A, $00, $99, $9B
- D 1 - - - 0x01BEDA 06:BECA: 86        .byte $86, $2E, $93, $8C
- D 1 - - - 0x01BEDE 06:BECE: 8D        .byte $8D, $8D, $8E, $0E
- D 1 - - - 0x01BEE2 06:BED2: 3A        .byte $3A, $00, $95, $97
- D 1 - - - 0x01BEE6 06:BED6: 86        .byte $86, $2E, $2E, $8C
- D 1 - - - 0x01BEEA 06:BEDA: 8D        .byte $8D, $8D, $8E, $0E
- D 1 - - - 0x01BEEE 06:BEDE: 3A        .byte $3A, $00, $98, $9A
- D 1 - - - 0x01BEF2 06:BEE2: 87        .byte $87, $2E, $2E, $8F
- D 1 - - - 0x01BEF6 06:BEE6: 90        .byte $90, $90, $91, $0E
- D 1 - - - 0x01BEFA 06:BEEA: 3A        .byte $3A, $00, $99, $9B

- - - - - - 0x01BEFE 06:BEEE: A1        .byte $A1   ; 
- - - - - - 0x01BEFF 06:BEEF: 83        .byte $83   ; 
- - - - - - 0x01BF00 06:BEF0: 78        .byte $78   ; <x>
- - - - - - 0x01BF01 06:BEF1: 79        .byte $79   ; <y>
- - - - - - 0x01BF02 06:BEF2: 7A        .byte $7A   ; <z>
- - - - - - 0x01BF03 06:BEF3: 81        .byte $81   ; 
- - - - - - 0x01BF04 06:BEF4: 82        .byte $82   ; 
- - - - - - 0x01BF05 06:BEF5: 0E        .byte $0E   ; 
- - - - - - 0x01BF06 06:BEF6: 3A        .byte $3A   ; 
- - - - - - 0x01BF07 06:BEF7: 00        .byte $00   ; 
- - - - - - 0x01BF08 06:BEF8: 95        .byte $95   ; 
- - - - - - 0x01BF09 06:BEF9: 97        .byte $97   ; 
- - - - - - 0x01BF0A 06:BEFA: 9F        .byte $9F   ; 
- - - - - - 0x01BF0B 06:BEFB: 72        .byte $72   ; <r>
- - - - - - 0x01BF0C 06:BEFC: 7B        .byte $7B   ; 
- - - - - - 0x01BF0D 06:BEFD: 7C        .byte $7C   ; 
- - - - - - 0x01BF0E 06:BEFE: 7D        .byte $7D   ; 
- - - - - - 0x01BF0F 06:BEFF: 81        .byte $81   ; 
- - - - - - 0x01BF10 06:BF00: 82        .byte $82   ; 
- - - - - - 0x01BF11 06:BF01: 0E        .byte $0E   ; 
- - - - - - 0x01BF12 06:BF02: 3A        .byte $3A   ; 
- - - - - - 0x01BF13 06:BF03: 00        .byte $00   ; 
- - - - - - 0x01BF14 06:BF04: 9C        .byte $9C   ; 
- - - - - - 0x01BF15 06:BF05: 9D        .byte $9D   ; 
- - - - - - 0x01BF16 06:BF06: A2        .byte $A2   ; 
- - - - - - 0x01BF17 06:BF07: 84        .byte $84   ; 
- - - - - - 0x01BF18 06:BF08: 7E        .byte $7E   ; 
- - - - - - 0x01BF19 06:BF09: 7F        .byte $7F   ; 
- - - - - - 0x01BF1A 06:BF0A: 80        .byte $80   ; 
- - - - - - 0x01BF1B 06:BF0B: 81        .byte $81   ; 
- - - - - - 0x01BF1C 06:BF0C: 82        .byte $82   ; 
- - - - - - 0x01BF1D 06:BF0D: 0E        .byte $0E   ; 
- - - - - - 0x01BF1E 06:BF0E: 3A        .byte $3A   ; 
- - - - - - 0x01BF1F 06:BF0F: 00        .byte $00   ; 
- - - - - - 0x01BF20 06:BF10: 50        .byte $50   ; <P>
- - - - - - 0x01BF21 06:BF11: 50        .byte $50   ; <P>
- - - - - - 0x01BF22 06:BF12: 50        .byte $50   ; <P>
- - - - - - 0x01BF23 06:BF13: 50        .byte $50   ; <P>
- - - - - - 0x01BF24 06:BF14: 50        .byte $50   ; <P>
- - - - - - 0x01BF25 06:BF15: 50        .byte $50   ; <P>
- - - - - - 0x01BF26 06:BF16: 50        .byte $50   ; <P>
- - - - - - 0x01BF27 06:BF17: 50        .byte $50   ; <P>
- - - - - - 0x01BF28 06:BF18: 55        .byte $55   ; <U>
- - - - - - 0x01BF29 06:BF19: 55        .byte $55   ; <U>
- - - - - - 0x01BF2A 06:BF1A: 55        .byte $55   ; <U>
- - - - - - 0x01BF2B 06:BF1B: 55        .byte $55   ; <U>
- - - - - - 0x01BF2C 06:BF1C: 55        .byte $55   ; <U>
- - - - - - 0x01BF2D 06:BF1D: 55        .byte $55   ; <U>
- - - - - - 0x01BF2E 06:BF1E: 55        .byte $55   ; <U>
- - - - - - 0x01BF2F 06:BF1F: 55        .byte $55   ; <U>
- - - - - - 0x01BF30 06:BF20: 55        .byte $55   ; <U>
- - - - - - 0x01BF31 06:BF21: 55        .byte $55   ; <U>
- - - - - - 0x01BF32 06:BF22: 55        .byte $55   ; <U>
- - - - - - 0x01BF33 06:BF23: 55        .byte $55   ; <U>
- - - - - - 0x01BF34 06:BF24: 55        .byte $55   ; <U>
- - - - - - 0x01BF35 06:BF25: 55        .byte $55   ; <U>
- - - - - - 0x01BF36 06:BF26: 55        .byte $55   ; <U>
- - - - - - 0x01BF37 06:BF27: 55        .byte $55   ; <U>
- - - - - - 0x01BF38 06:BF28: 95        .byte $95   ; 
- - - - - - 0x01BF39 06:BF29: 65        .byte $65   ; <e>
- - - - - - 0x01BF3A 06:BF2A: 55        .byte $55   ; <U>
- - - - - - 0x01BF3B 06:BF2B: 55        .byte $55   ; <U>
- - - - - - 0x01BF3C 06:BF2C: 55        .byte $55   ; <U>
- - - - - - 0x01BF3D 06:BF2D: 55        .byte $55   ; <U>
- - - - - - 0x01BF3E 06:BF2E: 55        .byte $55   ; <U>
- - - - - - 0x01BF3F 06:BF2F: 55        .byte $55   ; <U>
- - - - - - 0x01BF40 06:BF30: 99        .byte $99   ; 
- - - - - - 0x01BF41 06:BF31: 66        .byte $66   ; <f>
- - - - - - 0x01BF42 06:BF32: 55        .byte $55   ; <U>
- - - - - - 0x01BF43 06:BF33: 55        .byte $55   ; <U>
- - - - - - 0x01BF44 06:BF34: 55        .byte $55   ; <U>
- - - - - - 0x01BF45 06:BF35: 55        .byte $55   ; <U>
- - - - - - 0x01BF46 06:BF36: 55        .byte $55   ; <U>
- - - - - - 0x01BF47 06:BF37: 55        .byte $55   ; <U>
- - - - - - 0x01BF48 06:BF38: 55        .byte $55   ; <U>
- - - - - - 0x01BF49 06:BF39: 55        .byte $55   ; <U>
- - - - - - 0x01BF4A 06:BF3A: 55        .byte $55   ; <U>
- - - - - - 0x01BF4B 06:BF3B: 55        .byte $55   ; <U>
- - - - - - 0x01BF4C 06:BF3C: 55        .byte $55   ; <U>
- - - - - - 0x01BF4D 06:BF3D: 55        .byte $55   ; <U>
- - - - - - 0x01BF4E 06:BF3E: 55        .byte $55   ; <U>
- - - - - - 0x01BF4F 06:BF3F: 55        .byte $55   ; <U>
- - - - - - 0x01BF50 06:BF40: 05        .byte $05   ; 
- - - - - - 0x01BF51 06:BF41: 05        .byte $05   ; 
- - - - - - 0x01BF52 06:BF42: 05        .byte $05   ; 
- - - - - - 0x01BF53 06:BF43: 05        .byte $05   ; 
- - - - - - 0x01BF54 06:BF44: 05        .byte $05   ; 
- - - - - - 0x01BF55 06:BF45: 05        .byte $05   ; 
- - - - - - 0x01BF56 06:BF46: 05        .byte $05   ; 
- - - - - - 0x01BF57 06:BF47: 05        .byte $05   ; 
- - - - - - 0x01BF58 06:BF48: 50        .byte $50   ; <P>
- - - - - - 0x01BF59 06:BF49: 50        .byte $50   ; <P>
- - - - - - 0x01BF5A 06:BF4A: 50        .byte $50   ; <P>
- - - - - - 0x01BF5B 06:BF4B: 50        .byte $50   ; <P>
- - - - - - 0x01BF5C 06:BF4C: 50        .byte $50   ; <P>
- - - - - - 0x01BF5D 06:BF4D: 50        .byte $50   ; <P>
- - - - - - 0x01BF5E 06:BF4E: 50        .byte $50   ; <P>
- - - - - - 0x01BF5F 06:BF4F: 50        .byte $50   ; <P>
- - - - - - 0x01BF60 06:BF50: 55        .byte $55   ; <U>
- - - - - - 0x01BF61 06:BF51: 55        .byte $55   ; <U>
- - - - - - 0x01BF62 06:BF52: 55        .byte $55   ; <U>
- - - - - - 0x01BF63 06:BF53: 95        .byte $95   ; 
- - - - - - 0x01BF64 06:BF54: A5        .byte $A5   ; 
- - - - - - 0x01BF65 06:BF55: A5        .byte $A5   ; 
- - - - - - 0x01BF66 06:BF56: 65        .byte $65   ; <e>
- - - - - - 0x01BF67 06:BF57: 55        .byte $55   ; <U>
- - - - - - 0x01BF68 06:BF58: 55        .byte $55   ; <U>
- - - - - - 0x01BF69 06:BF59: 55        .byte $55   ; <U>
- - - - - - 0x01BF6A 06:BF5A: 55        .byte $55   ; <U>
- - - - - - 0x01BF6B 06:BF5B: 99        .byte $99   ; 
- - - - - - 0x01BF6C 06:BF5C: 6A        .byte $6A   ; <j>
- - - - - - 0x01BF6D 06:BF5D: 9A        .byte $9A   ; 
- - - - - - 0x01BF6E 06:BF5E: 66        .byte $66   ; <f>
- - - - - - 0x01BF6F 06:BF5F: 55        .byte $55   ; <U>
- - - - - - 0x01BF70 06:BF60: 95        .byte $95   ; 
- - - - - - 0x01BF71 06:BF61: 65        .byte $65   ; <e>
- - - - - - 0x01BF72 06:BF62: 55        .byte $55   ; <U>
- - - - - - 0x01BF73 06:BF63: 99        .byte $99   ; 
- - - - - - 0x01BF74 06:BF64: AA        .byte $AA   ; 
- - - - - - 0x01BF75 06:BF65: AA        .byte $AA   ; 
- - - - - - 0x01BF76 06:BF66: 66        .byte $66   ; <f>
- - - - - - 0x01BF77 06:BF67: 55        .byte $55   ; <U>
- - - - - - 0x01BF78 06:BF68: 99        .byte $99   ; 
- - - - - - 0x01BF79 06:BF69: 66        .byte $66   ; <f>
- - - - - - 0x01BF7A 06:BF6A: AA        .byte $AA   ; 
- - - - - - 0x01BF7B 06:BF6B: AA        .byte $AA   ; 
- - - - - - 0x01BF7C 06:BF6C: AA        .byte $AA   ; 
- - - - - - 0x01BF7D 06:BF6D: AA        .byte $AA   ; 
- - - - - - 0x01BF7E 06:BF6E: AA        .byte $AA   ; 
- - - - - - 0x01BF7F 06:BF6F: AA        .byte $AA   ; 
- - - - - - 0x01BF80 06:BF70: 55        .byte $55   ; <U>
- - - - - - 0x01BF81 06:BF71: 55        .byte $55   ; <U>
- - - - - - 0x01BF82 06:BF72: 55        .byte $55   ; <U>
- - - - - - 0x01BF83 06:BF73: 55        .byte $55   ; <U>
- - - - - - 0x01BF84 06:BF74: 55        .byte $55   ; <U>
- - - - - - 0x01BF85 06:BF75: 55        .byte $55   ; <U>
- - - - - - 0x01BF86 06:BF76: 55        .byte $55   ; <U>
- - - - - - 0x01BF87 06:BF77: 55        .byte $55   ; <U>
- - - - - - 0x01BF88 06:BF78: 05        .byte $05   ; 
- - - - - - 0x01BF89 06:BF79: 05        .byte $05   ; 
- - - - - - 0x01BF8A 06:BF7A: 05        .byte $05   ; 
- - - - - - 0x01BF8B 06:BF7B: 05        .byte $05   ; 
- - - - - - 0x01BF8C 06:BF7C: 05        .byte $05   ; 
- - - - - - 0x01BF8D 06:BF7D: 05        .byte $05   ; 
- - - - - - 0x01BF8E 06:BF7E: 05        .byte $05   ; 
- - - - - - 0x01BF8F 06:BF7F: 05        .byte $05   ; 
- - - - - - 0x01BF90 06:BF80: 00        .byte $00   ; 
- - - - - - 0x01BF91 06:BF81: 80        .byte $80   ; 
- - - - - - 0x01BF92 06:BF82: F0        .byte $F0   ; 
- - - - - - 0x01BF93 06:BF83: F8        .byte $F8   ; 
- - - - - - 0x01BF94 06:BF84: F8        .byte $F8   ; 
- - - - - - 0x01BF95 06:BF85: F8        .byte $F8   ; 
- - - - - - 0x01BF96 06:BF86: F8        .byte $F8   ; 
- - - - - - 0x01BF97 06:BF87: F8        .byte $F8   ; 
- - - - - - 0x01BF98 06:BF88: 00        .byte $00   ; 
- - - - - - 0x01BF99 06:BF89: 80        .byte $80   ; 
- - - - - - 0x01BF9A 06:BF8A: 88        .byte $88   ; 
- - - - - - 0x01BF9B 06:BF8B: 84        .byte $84   ; 
- - - - - - 0x01BF9C 06:BF8C: 84        .byte $84   ; 
- - - - - - 0x01BF9D 06:BF8D: 84        .byte $84   ; 
- - - - - - 0x01BF9E 06:BF8E: 84        .byte $84   ; 
- - - - - - 0x01BF9F 06:BF8F: 84        .byte $84   ; 
- - - - - - 0x01BFA0 06:BF90: F8        .byte $F8   ; 
- - - - - - 0x01BFA1 06:BF91: F8        .byte $F8   ; 
- - - - - - 0x01BFA2 06:BF92: 78        .byte $78   ; <x>
- - - - - - 0x01BFA3 06:BF93: 78        .byte $78   ; <x>
- - - - - - 0x01BFA4 06:BF94: 70        .byte $70   ; <p>
- - - - - - 0x01BFA5 06:BF95: 00        .byte $00   ; 
- - - - - - 0x01BFA6 06:BF96: 00        .byte $00   ; 
- - - - - - 0x01BFA7 06:BF97: 00        .byte $00   ; 
- - - - - - 0x01BFA8 06:BF98: 84        .byte $84   ; 
- - - - - - 0x01BFA9 06:BF99: 84        .byte $84   ; 
- - - - - - 0x01BFAA 06:BF9A: 84        .byte $84   ; 
- - - - - - 0x01BFAB 06:BF9B: 84        .byte $84   ; 
- - - - - - 0x01BFAC 06:BF9C: 8C        .byte $8C   ; 
- - - - - - 0x01BFAD 06:BF9D: F0        .byte $F0   ; 
- - - - - - 0x01BFAE 06:BF9E: 00        .byte $00   ; 
- - - - - - 0x01BFAF 06:BF9F: 00        .byte $00   ; 
- - - - - - 0x01BFB0 06:BFA0: 00        .byte $00   ; 
- - - - - - 0x01BFB1 06:BFA1: 00        .byte $00   ; 
- - - - - - 0x01BFB2 06:BFA2: 00        .byte $00   ; 
- - - - - - 0x01BFB3 06:BFA3: F8        .byte $F8   ; 
- - - - - - 0x01BFB4 06:BFA4: 38        .byte $38   ; <8>
- - - - - - 0x01BFB5 06:BFA5: F8        .byte $F8   ; 
- - - - - - 0x01BFB6 06:BFA6: 38        .byte $38   ; <8>
- - - - - - 0x01BFB7 06:BFA7: F0        .byte $F0   ; 
- - - - - - 0x01BFB8 06:BFA8: 00        .byte $00   ; 
- - - - - - 0x01BFB9 06:BFA9: 00        .byte $00   ; 
- - - - - - 0x01BFBA 06:BFAA: F8        .byte $F8   ; 
- - - - - - 0x01BFBB 06:BFAB: 08        .byte $08   ; 
- - - - - - 0x01BFBC 06:BFAC: F0        .byte $F0   ; 
- - - - - - 0x01BFBD 06:BFAD: C0        .byte $C0   ; 
- - - - - - 0x01BFBE 06:BFAE: 08        .byte $08   ; 
- - - - - - 0x01BFBF 06:BFAF: F0        .byte $F0   ; 
- - - - - - 0x01BFC0 06:BFB0: 00        .byte $00   ; 
- - - - - - 0x01BFC1 06:BFB1: 00        .byte $00   ; 
- - - - - - 0x01BFC2 06:BFB2: 38        .byte $38   ; <8>
- - - - - - 0x01BFC3 06:BFB3: 7C        .byte $7C   ; 
- - - - - - 0x01BFC4 06:BFB4: 7C        .byte $7C   ; 
- - - - - - 0x01BFC5 06:BFB5: 7C        .byte $7C   ; 
- - - - - - 0x01BFC6 06:BFB6: 78        .byte $78   ; <x>
- - - - - - 0x01BFC7 06:BFB7: 7E        .byte $7E   ; 
- - - - - - 0x01BFC8 06:BFB8: 00        .byte $00   ; 
- - - - - - 0x01BFC9 06:BFB9: 00        .byte $00   ; 
- - - - - - 0x01BFCA 06:BFBA: 04        .byte $04   ; 
- - - - - - 0x01BFCB 06:BFBB: 02        .byte $02   ; 
- - - - - - 0x01BFCC 06:BFBC: 32        .byte $32   ; <2>
- - - - - - 0x01BFCD 06:BFBD: 1A        .byte $1A   ; 
- - - - - - 0x01BFCE 06:BFBE: 06        .byte $06   ; 
- - - - - - 0x01BFCF 06:BFBF: 7E        .byte $7E   ; 
- - - - - - 0x01BFD0 06:BFC0: 00        .byte $00   ; 
- - - - - - 0x01BFD1 06:BFC1: 00        .byte $00   ; 
- - - - - - 0x01BFD2 06:BFC2: 38        .byte $38   ; <8>
- - - - - - 0x01BFD3 06:BFC3: 7C        .byte $7C   ; 
- - - - - - 0x01BFD4 06:BFC4: 7C        .byte $7C   ; 
- - - - - - 0x01BFD5 06:BFC5: 7C        .byte $7C   ; 
- - - - - - 0x01BFD6 06:BFC6: 78        .byte $78   ; <x>
- - - - - - 0x01BFD7 06:BFC7: 7E        .byte $7E   ; 
- - - - - - 0x01BFD8 06:BFC8: 00        .byte $00   ; 
- - - - - - 0x01BFD9 06:BFC9: 00        .byte $00   ; 
- - - - - - 0x01BFDA 06:BFCA: 04        .byte $04   ; 
- - - - - - 0x01BFDB 06:BFCB: 02        .byte $02   ; 
- - - - - - 0x01BFDC 06:BFCC: 02        .byte $02   ; 
- - - - - - 0x01BFDD 06:BFCD: 02        .byte $02   ; 
- - - - - - 0x01BFDE 06:BFCE: 06        .byte $06   ; 
- - - - - - 0x01BFDF 06:BFCF: 7E        .byte $7E   ; 
- - - - - - 0x01BFE0 06:BFD0: 00        .byte $00   ; 
- - - - - - 0x01BFE1 06:BFD1: 2C        .byte $2C   ; 
- - - - - - 0x01BFE2 06:BFD2: 42        .byte $42   ; <B>
- - - - - - 0x01BFE3 06:BFD3: 58        .byte $58   ; <X>
- - - - - - 0x01BFE4 06:BFD4: 1A        .byte $1A   ; 
- - - - - - 0x01BFE5 06:BFD5: 42        .byte $42   ; <B>
- - - - - - 0x01BFE6 06:BFD6: 34        .byte $34   ; <4>
- - - - - - 0x01BFE7 06:BFD7: 00        .byte $00   ; 
- - - - - - 0x01BFE8 06:BFD8: 00        .byte $00   ; 
- - - - - - 0x01BFE9 06:BFD9: 3C        .byte $3C   ; 
- - - - - - 0x01BFEA 06:BFDA: 7E        .byte $7E   ; 
- - - - - - 0x01BFEB 06:BFDB: 66        .byte $66   ; <f>
- - - - - - 0x01BFEC 06:BFDC: 66        .byte $66   ; <f>
- - - - - - 0x01BFED 06:BFDD: 7E        .byte $7E   ; 
- - - - - - 0x01BFEE 06:BFDE: 3C        .byte $3C   ; 
- - - - - - 0x01BFEF 06:BFDF: 00        .byte $00   ; 
- - - - - - 0x01BFF0 06:BFE0: 08        .byte $08   ; 
- - - - - - 0x01BFF1 06:BFE1: 66        .byte $66   ; <f>
- - - - - - 0x01BFF2 06:BFE2: 5A        .byte $5A   ; <Z>
- - - - - - 0x01BFF3 06:BFE3: BC        .byte $BC   ; 
- - - - - - 0x01BFF4 06:BFE4: 3D        .byte $3D   ; 
- - - - - - 0x01BFF5 06:BFE5: 5A        .byte $5A   ; <Z>
- - - - - - 0x01BFF6 06:BFE6: 66        .byte $66   ; <f>
- - - - - - 0x01BFF7 06:BFE7: 10        .byte $10   ; 
- - - - - - 0x01BFF8 06:BFE8: 18        .byte $18   ; 
- - - - - - 0x01BFF9 06:BFE9: 7E        .byte $7E   ; 
- - - - - - 0x01BFFA 06:BFEA: 66        .byte $66   ; <f>
- - - - - - 0x01BFFB 06:BFEB: C3        .byte $C3   ; 
- - - - - - 0x01BFFC 06:BFEC: C3        .byte $C3   ; 
- - - - - - 0x01BFFD 06:BFED: 66        .byte $66   ; <f>
- - - - - - 0x01BFFE 06:BFEE: 7E        .byte $7E   ; 
- - - - - - 0x01BFFF 06:BFEF: 18        .byte $18   ; 
- - - - - - 0x01C000 06:BFF0: 00        .byte $00   ; 
- - - - - - 0x01C001 06:BFF1: 00        .byte $00   ; 
- - - - - - 0x01C002 06:BFF2: 00        .byte $00   ; 
- - - - - - 0x01C003 06:BFF3: 00        .byte $00   ; 
- - - - - - 0x01C004 06:BFF4: 00        .byte $00   ; 
- - - - - - 0x01C005 06:BFF5: 00        .byte $00   ; 
- - - - - - 0x01C006 06:BFF6: 00        .byte $00   ; 
- - - - - - 0x01C007 06:BFF7: 00        .byte $00   ; 
- - - - - - 0x01C008 06:BFF8: 00        .byte $00   ; 
- - - - - - 0x01C009 06:BFF9: 00        .byte $00   ; 
- - - - - - 0x01C00A 06:BFFA: 00        .byte $00   ; 
- - - - - - 0x01C00B 06:BFFB: 00        .byte $00   ; 
- - - - - - 0x01C00C 06:BFFC: 00        .byte $00   ; 
- - - - - - 0x01C00D 06:BFFD: 00        .byte $00   ; 
- - - - - - 0x01C00E 06:BFFE: 00        .byte $00   ; 
- - - - - - 0x01C00F 06:BFFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 06_2: 0x%X [%d]", ($C000 - *), ($C000 - *))



