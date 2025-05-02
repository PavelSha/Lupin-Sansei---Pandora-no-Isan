.segment "BANK_03_2"
.include "bank_ram.inc"
.include "constants.inc"
.org $A000  ; for listing file
; 0x00E010-0x01000F

.import loc_C420_add_sound_effect                    ; bank FF
.import sub_C420_add_sound_effect                    ; bank FF
.import loc_CE33_add_sprite_magic                    ; bank FF
.import sub_CE33_add_sprite_magic                    ; bank FF
.import sub_D0B8_change_stack_pointer_by_bits        ; bank FF
.import sub_D67B_out_of_sight                        ; bank FF
.import sub_D6AC_out_of_screen                       ; bank FF
.import sub_D660_is_bomb_exploding                   ; bank FF
.import loc_D77F_free_enemyA                         ; bank FF
.import loc_D873_free_enemyB                         ; bank FF
.import sub_D6BD_try_change_enemyA_direction         ; bank FF
.import sub_D6DB_try_change_enemyB_direction         ; bank FF
.import loc_D741_enemyA_off_screen                   ; bank FF
.import sub_D725_enemyA_on_screen                    ; bank FF
.import loc_D989_add_enemyA_sprite_magic_v1          ; bank FF
.import sub_D358_check_enemyA_collision_by_Y         ; bank FF
.import sub_D562_has_character_damage                ; bank FF
.import loc_D562_has_character_damage                ; bank FF
.import sub_D5B6_have_intersect_bullet               ; bank FF
.import sub_D606_have_intersect_sword                ; bank FF
.import sub_D7A8_correction_EnemyAPosY               ; bank FF
.import sub_D89C_correction_EnemyBPosY               ; bank FF
.import sub_D347_check_landing_enemyA                ; bank FF
.import sub_D84D_enemyB_off_screen                   ; bank FF
.import sub_D8D9_enemyB_collision_by_one             ; bank FF
.import sub_D7BF_check_enemyA_movement_on_the_right  ; bank FF
.import sub_D8B7_check_enemyB_movement_on_the_right  ; bank FF
.import sub_D7CA_check_enemyA_movement_on_the_left   ; bank FF
.import sub_D8C2_check_enemyB_movement_on_the_left   ; bank FF
.import loc_D70F_inc_EnemyAPosXLow                   ; bank FF
.import loc_D81B_inc_EnemyBPosXLow                   ; bank FF
.import loc_D6F0_dec_EnemyAPosXLow                   ; bank FF
.import loc_D7FC_dec_EnemyBPosXLow                   ; bank FF
.import sub_D831_enemyB_on_screen                    ; bank FF
.import sub_D9AE_inc_enemyA_frame_counter            ; bank FF
.import sub_D9C4_inc_enemyB_frame_counter            ; bank FF
.import sub_D064_generate_rng                        ; bank FF
.import tbl_E35D_jump_posY_offset                    ; bank FF
.import tbl_E358_init_counter                        ; bank FF
.import sub_E332_generate_jump_type                  ; bank FF
.import sub_accumulator_shift_right_by_4             ; bank FF
.import sub_D073_invert_sign                         ; bank FF

.export sub_A000_boss1
.export sub_A003_boss2
.export sub_A006_boss3
.export sub_A009_boss4
.export sub_A00C_undead
.export sub_A00F_swordtail
.export sub_A012_knight
.export sub_A015_cat_or_snake_enemy

; Page 2
sub_A000_boss1:
C - - - - - 0x00E010 03:A000: 4C 1E A1  JMP loc_A11E_boss   ;
sub_A003_boss2:
C - - - - - 0x00E013 03:A003: 4C 04 A6  JMP loc_A604_boss   ;
sub_A006_boss3:
C - - - - - 0x00E016 03:A006: 4C E0 A8  JMP loc_A8E0_boss   ;
sub_A009_boss4:
C - - - - - 0x00E019 03:A009: 4C 92 AC  JMP loc_AC92_boss   ;
sub_A00C_undead:
C - - - - - 0x00E01C 03:A00C: 4C FB AF  JMP loc_AFFB_enemy  ;
sub_A00F_swordtail:
C - - - - - 0x00E01F 03:A00F: 4C F0 B3  JMP loc_B3F0_enemy  ;
sub_A012_knight:
C - - - - - 0x00E022 03:A012: 4C 14 B8  JMP loc_B814_enemy  ;
sub_A015_cat_or_snake_enemy:
C - - - - - 0x00E025 03:A015: 4C 5E BB  JMP loc_BB5E_enemy  ;

tbl_A018_hitboxes:
- D 1 - - - 0x00E028 03:A018: 00        .byte $00, $00, $30, $06  ; the enemy himself 
- D 1 - - - 0x00E02C 03:A01C: E5        .byte $E5, $08, $15, $04  ; right
- D 1 - - - 0x00E030 03:A020: F1        .byte $F1, $0D, $0E, $08  ; right
- D 1 - - - 0x00E034 03:A024: D0        .byte $D0, $FC, $08, $08  ; right
- D 1 - - - 0x00E038 03:A028: D0        .byte $D0, $14, $0E, $08  ; right
- D 1 - - - 0x00E03C 03:A02C: E5        .byte $E5, $F8, $15, $04  ; left
- D 1 - - - 0x00E040 03:A030: F1        .byte $F1, $F3, $0E, $08  ; left
- D 1 - - - 0x00E044 03:A034: D0        .byte $D0, $04, $08, $08  ; left
- D 1 - - - 0x00E048 03:A038: D0        .byte $D0, $EC, $0E, $08  ; left

tbl_A03C_power:
- D 1 - - - 0x00E04C 03:A03C: 01        .byte $01   ; 
- D 1 - - - 0x00E04D 03:A03D: 02        .byte $02   ; 
- D 1 - - - 0x00E04E 03:A03E: 03        .byte $03   ; 
- D 1 - - - 0x00E04F 03:A03F: 04        .byte $04   ; 
- D 1 - - - 0x00E050 03:A040: 05        .byte $05   ; 
- D 1 - - - 0x00E051 03:A041: 06        .byte $06   ; 

tbl_A042_index_offsets:
- D 1 - - - 0x00E052 03:A042: 00        .byte $00   ; 
- D 1 - - - 0x00E053 03:A043: 40        .byte $40   ; 
- D 1 - - - 0x00E054 03:A044: 80        .byte $80   ; 
- D - - - - 0x00E055 03:A045: C0        .byte $C0   ; 

; 1 byte - short distance
; 2 byte - long distance
tbl_A046_distances:
- D 1 - - - 0x00E056 03:A046: 30        .byte $30, $60   ; level 1
- D 1 - - - 0x00E058 03:A048: 30        .byte $30, $60   ; level 2
- D 1 - - - 0x00E05A 03:A04A: 30        .byte $30, $60   ; level 3
- D - - - - 0x00E05C 03:A04C: 30        .byte $30, $60   ; level 4

tbl_A04E_status_indexes:
- D 1 - - - 0x00E05E 03:A04E: 00        .byte $00, $00, $00, $01, $01, $02, $02, $02, $03, $03, $06, $06, $06, $07, $07, $07   ; level 1
- D 1 - - - 0x00E06E 03:A05E: 00        .byte $00, $01, $01, $01, $01, $01, $01, $02, $03, $03, $04, $04, $06, $06, $06, $06   ; 
- D 1 - - - 0x00E07E 03:A06E: 01        .byte $01, $01, $01, $01, $01, $01, $02, $02, $04, $04, $05, $06, $06, $06, $06, $06   ; 
- D 1 - - - 0x00E08E 03:A07E: 00        .byte $00, $00, $01, $01, $80, $80, $81, $81, $82, $82, $83, $83, $86, $86, $86, $86   ; 
- D 1 - - - 0x00E09E 03:A08E: 01        .byte $01, $01, $01, $02, $02, $02, $02, $03, $03, $03, $06, $06, $06, $06, $06, $06   ; level 2
- D 1 - - - 0x00E0AE 03:A09E: 00        .byte $00, $00, $00, $01, $01, $01, $01, $02, $03, $04, $06, $06, $06, $06, $06, $06   ; 
- D 1 - - - 0x00E0BE 03:A0AE: 00        .byte $00, $00, $01, $01, $01, $01, $01, $01, $02, $03, $04, $06, $06, $06, $06, $06   ; 
- D - - - - 0x00E0CE 03:A0BE: 00        .byte $00, $00, $01, $01, $80, $80, $81, $81, $82, $82, $86, $86, $86, $86, $86, $86   ; 
- D 1 - - - 0x00E0DE 03:A0CE: 01        .byte $01, $01, $01, $02, $02, $02, $02, $03, $03, $03, $06, $06, $06, $06, $06, $06   ; level 3
- D 1 - - - 0x00E0EE 03:A0DE: 00        .byte $00, $00, $00, $01, $01, $02, $02, $02, $03, $04, $06, $06, $06, $06, $06, $06   ; 
- D 1 - - - 0x00E0FE 03:A0EE: 00        .byte $00, $00, $00, $01, $01, $01, $01, $02, $02, $03, $04, $06, $06, $06, $06, $06   ; 
- D - - - - 0x00E10E 03:A0FE: 00        .byte $00, $00, $01, $01, $80, $80, $82, $82, $83, $83, $83, $83, $83, $86, $86, $86   ; 

; 1 byte - a status
; 2 byte - a status counter
tbl_A10E_status_and_counter:
- D 1 - - - 0x00E11E 03:A10E: 00        .byte $00, $18   ; the approach
- D 1 - - - 0x00E120 03:A110: 00        .byte $00, $30   ; the approach
- D 1 - - - 0x00E122 03:A112: 40        .byte $40, $18   ; the retreat
- D 1 - - - 0x00E124 03:A114: 40        .byte $40, $30   ; the retreat
- D 1 - - - 0x00E126 03:A116: 08        .byte $08, $18   ; stop
- D 1 - - - 0x00E128 03:A118: 08        .byte $08, $30   ; stop
- D 1 - - - 0x00E12A 03:A11A: 0C        .byte $0C, $20   ; stop + throw
- D 1 - - - 0x00E12C 03:A11C: 04        .byte $04, $20   ; throw

loc_A11E_boss:
C D 1 - - - 0x00E12E 03:A11E: A2 00     LDX #$00                          ;
C - - - - - 0x00E130 03:A120: 86 1A     STX vTempCounter1A                ; !(WHY?), the boss is always one
C - - - - - 0x00E132 03:A122: 20 EC A1  JSR sub_A1EC_status_behavior      ;
C - - - - - 0x00E135 03:A125: A6 1A     LDX vTempCounter1A                ;
C - - - - - 0x00E137 03:A127: BD 50 03  LDA vEnemyAHealthPoints,X         ;
C - - - - - 0x00E13A 03:A12A: F0 23     BEQ bra_A14F_skip                 ; If HPoints == 0x00
C - - - - - 0x00E13C 03:A12C: 20 CD A1  JSR sub_A1CD_prepare_hitbox       ;
C - - - - - 0x00E13F 03:A12F: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x00E142 03:A132: B0 0B     BCS @bra_A13F_bomb_hit            ; If the bomb is exploding
C - - - - - 0x00E144 03:A134: A5 5F     LDA vChrLiveStatus                ;
C - - - - - 0x00E146 03:A136: 29 02     AND #$02                          ; CONSTANT - Goemon
C - - - - - 0x00E148 03:A138: F0 0B     BEQ bra_A145_check_bullets        ; If the character isn't Goemon
C - - - - - 0x00E14A 03:A13A: 20 06 D6  JSR sub_D606_have_intersect_sword ;
C - - - - - 0x00E14D 03:A13D: 90 10     BCC bra_A14F_skip                 ; If the intersect doesn't exist
@bra_A13F_bomb_hit:
C - - - - - 0x00E14F 03:A13F: 20 5C A1  JSR sub_A15C_hit                  ;
C - - - - - 0x00E152 03:A142: 4C 4F A1  JMP loc_A14F_continue             ;

bra_A145_check_bullets:
C - - - - - 0x00E155 03:A145: A6 7A     LDX vBulletCount                      ; set loop counter
@bra_A147_loop:                                                               ; loop by x
C - - - - - 0x00E157 03:A147: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet    ;
C - - - - - 0x00E15A 03:A14A: B0 06     BCS bra_A152_bullet_hit               ; If the intersect is exist
C - - - - - 0x00E15C 03:A14C: CA        DEX                                   ; decrement loop counter
C - - - - - 0x00E15D 03:A14D: 10 F8     BPL @bra_A147_loop                    ; If Register X >= 0x00
bra_A14F_skip:
loc_A14F_continue:
C D 1 - - - 0x00E15F 03:A14F: 4C 5C A4  JMP loc_A45C_continue                ;

bra_A152_bullet_hit:
C - - - - - 0x00E162 03:A152: A9 00     LDA #$00                             ;
C - - - - - 0x00E164 03:A154: 95 8F     STA vBulletStatus,X                  ; clear
C - - - - - 0x00E166 03:A156: 20 5C A1  JSR sub_A15C_hit                     ;
C - - - - - 0x00E169 03:A159: 4C 4F A1  JMP loc_A14F_continue                ;

sub_A15C_hit:
C - - - - - 0x00E16C 03:A15C: A6 1A     LDX vTempCounter1A                   ;
C - - - - - 0x00E16E 03:A15E: AD 20 03  LDA vEnemyAStatus                    ;
C - - - - - 0x00E171 03:A161: 29 30     AND #$30                             ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00E173 03:A163: D0 29     BNE bra_A18E_RTS                     ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00E175 03:A165: 20 5B A3  JSR sub_A35B_get_damage_points       ;
@bra_A168_repeat:
C - - - - - 0x00E178 03:A168: CE 50 03  DEC vEnemyAHealthPoints              ;
C - - - - - 0x00E17B 03:A16B: F0 11     BEQ bra_A17E_final_hit               ; If HPoints == 0x00
C - - - - - 0x00E17D 03:A16D: 88        DEY                                  ;
C - - - - - 0x00E17E 03:A16E: D0 F8     BNE @bra_A168_repeat                 ; If Register Y != 0x00
C - - - - - 0x00E180 03:A170: AD 5C 03  LDA vEnemyBStatus                    ;
C - - - - - 0x00E183 03:A173: 30 03     BMI @bra_A178_skip                   ; If the status is used
C - - - - - 0x00E185 03:A175: 20 8C A4  JSR sub_A48C_throw_after_get_damage  ;
@bra_A178_skip:
loc_A178_get_damage:
C D 1 - - - 0x00E188 03:A178: A9 10     LDA #$10                       ; CONSTANT - 'get damage' status
C - - - - - 0x00E18A 03:A17A: A0 20     LDY #$20                       ; The counter value for the 'get damage' status
C - - - - - 0x00E18C 03:A17C: D0 09     BNE bra_A187_continue          ; Always true

bra_A17E_final_hit:
loc_A17E_final_hit:
C D 1 - - - 0x00E18E 03:A17E: A9 30     LDA #$30                       ; the sound of something huge falling
C - - - - - 0x00E190 03:A180: 20 20 C4  JSR sub_C420_add_sound_effect  ; bank FF
C - - - - - 0x00E193 03:A183: A9 20     LDA #$20                       ; CONSTANT - 'the dying' status
C - - - - - 0x00E195 03:A185: A0 80     LDY #$80                       ; The counter value for the 'the dying' status
; In: Register A - a new status
; In: Register Y - a new jump counter
bra_A187_continue:
C - - - - - 0x00E197 03:A187: 20 19 A3  JSR sub_A319_change_substatus  ;
C - - - - - 0x00E19A 03:A18A: 98        TYA                            ;
C - - - - - 0x00E19B 03:A18B: 9D 4A 03  STA vEnemyAJumpCounter,X       ; Initializes a jump counter
bra_A18E_RTS:
C - - - - - 0x00E19E 03:A18E: 60        RTS                            ;

bra_A18F_prepare_projectile_hitbox:
C - - - - - 0x00E19F 03:A18F: AD 68 03  LDA vEnemyBPosY                ;
C - - - - - 0x00E1A2 03:A192: 85 AD     STA vEnemyHitBoxY              ; <~ posY
C - - - - - 0x00E1A4 03:A194: AD 6E 03  LDA vEnemyBScreenPosX          ;
C - - - - - 0x00E1A7 03:A197: 85 AE     STA vEnemyHitBoxX              ; <~ screen posX
C - - - - - 0x00E1A9 03:A199: A9 0E     LDA #$0E                       ;
C - - - - - 0x00E1AB 03:A19B: 85 AF     STA vEnemyHitBoxH              ; <~ hitBoxH
C - - - - - 0x00E1AD 03:A19D: A9 06     LDA #$06                       ;
C - - - - - 0x00E1AF 03:A19F: 85 B0     STA vEnemyHitBoxW              ; <~ hitBoxW
C - - - - - 0x00E1B1 03:A1A1: 60        RTS                            ;

sub_A1A2_prepare_hitbox2:
C - - - - - 0x00E1B2 03:A1A2: AD 5C 03  LDA vEnemyBStatus                       ;
C - - - - - 0x00E1B5 03:A1A5: 30 E8     BMI bra_A18F_prepare_projectile_hitbox  ; If the status is used
C - - - - - 0x00E1B7 03:A1A7: A0 08     LDY #$08                                ; the offset value #1
C - - - - - 0x00E1B9 03:A1A9: AD 20 03  LDA vEnemyAStatus                       ;
C - - - - - 0x00E1BC 03:A1AC: 4A        LSR                                     ;
C - - - - - 0x00E1BD 03:A1AD: 4A        LSR                                     ;
C - - - - - 0x00E1BE 03:A1AE: B0 10     BCS @bra_A1C0_skip                      ; If 'block' status (0x02) is activated
C - - - - - 0x00E1C0 03:A1B0: A0 04     LDY #$04                                ; the offset value #2
C - - - - - 0x00E1C2 03:A1B2: 4A        LSR                                     ;
C - - - - - 0x00E1C3 03:A1B3: 90 0B     BCC @bra_A1C0_skip                      ; If 'throw' status (0x04) isn't activated
C - - - - - 0x00E1C5 03:A1B5: A0 0C     LDY #$0C                                ; the offset value #3
C - - - - - 0x00E1C7 03:A1B7: AD 4A 03  LDA vEnemyAJumpCounter                  ;
C - - - - - 0x00E1CA 03:A1BA: C9 18     CMP #$18                                ; CONSTANT - before throwing
C - - - - - 0x00E1CC 03:A1BC: 90 02     BCC @bra_A1C0_skip                      ; If JumpCounter < 0x18
C - - - - - 0x00E1CE 03:A1BE: A0 10     LDY #$10                                ; the offset value #4
@bra_A1C0_skip:
C - - - - - 0x00E1D0 03:A1C0: AD 20 03  LDA vEnemyAStatus                       ;
C - - - - - 0x00E1D3 03:A1C3: 6A        ROR                                     ;
C - - - - - 0x00E1D4 03:A1C4: 90 09     BCC bra_A1CF_assign                     ; If the enemy is looking to the right
C - - - - - 0x00E1D6 03:A1C6: 98        TYA                                     ;
C - - - - - 0x00E1D7 03:A1C7: 18        CLC                                     ;
C - - - - - 0x00E1D8 03:A1C8: 69 10     ADC #$10                                ;
C - - - - - 0x00E1DA 03:A1CA: A8        TAY                                     ; Y <~ Y + 0x10
C - - - - - 0x00E1DB 03:A1CB: D0 02     BNE bra_A1CF_assign                     ; Always true

sub_A1CD_prepare_hitbox:
C - - - - - 0x00E1DD 03:A1CD: A0 00     LDY #$00                     ; the offset value #5
; In: Register Y - the hitbox offset
bra_A1CF_assign:
C - - - - - 0x00E1DF 03:A1CF: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x00E1E2 03:A1D2: 18        CLC                          ;
C - - - - - 0x00E1E3 03:A1D3: 79 18 A0  ADC tbl_A018_hitboxes,Y      ;
C - - - - - 0x00E1E6 03:A1D6: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x00E1E8 03:A1D8: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x00E1EB 03:A1DB: 18        CLC                          ;
C - - - - - 0x00E1EC 03:A1DC: 79 19 A0  ADC tbl_A018_hitboxes + 1,Y  ;
C - - - - - 0x00E1EF 03:A1DF: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x00E1F1 03:A1E1: B9 1A A0  LDA tbl_A018_hitboxes + 2,Y  ;
C - - - - - 0x00E1F4 03:A1E4: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x00E1F6 03:A1E6: B9 1B A0  LDA tbl_A018_hitboxes + 3,Y  ;
C - - - - - 0x00E1F9 03:A1E9: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_A1EB_RTS:
C - - - - - 0x00E1FB 03:A1EB: 60        RTS                          ;

sub_A1EC_status_behavior:
C - - - - - 0x00E1FC 03:A1EC: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E1FF 03:A1EF: 10 FA     BPL bra_A1EB_RTS                          ; If the status isn't used
C - - - - - 0x00E201 03:A1F1: 20 E3 A2  JSR sub_A2E3_try_to_change_self           ;
C - - - - - 0x00E204 03:A1F4: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E207 03:A1F7: 4A        LSR                                       ;
C - - - - - 0x00E208 03:A1F8: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00E20B 03:A1FB: 18 A2     .addr loc_A219_main - 1        ; 0x02
- D 1 - I - 0x00E20D 03:A1FD: 0F A2     .addr loc_A210_throw - 1       ; 0x04
- D 1 - I - 0x00E20F 03:A1FF: 31 A2     .addr loc_A232_stop - 1        ; 0x08
- D 1 - I - 0x00E211 03:A201: 1E A2     .addr loc_A21F_get_damage - 1  ; 0x10
- D 1 - I - 0x00E213 03:A203: D5 A2     .addr loc_A2D6_dying - 1       ; 0x20
- D 1 - I - 0x00E215 03:A205: 09 A2     .addr loc_A20A_retreat - 1     ; 0x40
- D 1 - I - 0x00E217 03:A207: 18 A2     .addr loc_A219_main - 1        ; 0x80

bra_A209_RTS:
C - - - - - 0x00E219 03:A209: 60        RTS                            ;

loc_A20A_retreat:
C - - - - - 0x00E21A 03:A20A: 20 50 A4  JSR sub_A450_try_to_move_and_set_frame_counter2 ;
C - - - - - 0x00E21D 03:A20D: 4C 34 A2  JMP loc_A234_prepare_rendering                  ;

loc_A210_throw:
C - - - - - 0x00E220 03:A210: A0 0C     LDY #$0C                                        ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00E222 03:A212: AD 20 03  LDA vEnemyAStatus                               ;
C - - - - - 0x00E225 03:A215: 29 08     AND #$08                                        ; CONSTANT - 'stop' status
C - - - - - 0x00E227 03:A217: D0 1B     BNE bra_A234_prepare_rendering                  ; If 'stop' status is activated
loc_A219_main:
C - - - - - 0x00E229 03:A219: 20 27 A4  JSR sub_A427_try_to_move_and_set_frame_counter  ;
C - - - - - 0x00E22C 03:A21C: 4C 34 A2  JMP loc_A234_prepare_rendering                  ;

loc_A21F_get_damage:
C - - - - - 0x00E22F 03:A21F: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E232 03:A222: 6A        ROR                                    ;
C - - - - - 0x00E233 03:A223: B0 06     BCS bra_A22B_left                      ; If the enemy is looking to the left
C - - - - - 0x00E235 03:A225: 20 15 A4  JSR sub_A415_try_to_dec_EnemyAPosXLow  ;
C - - - - - 0x00E238 03:A228: 4C 2E A2  JMP loc_A22E_continue                  ;

bra_A22B_left:
C - - - - - 0x00E23B 03:A22B: 20 03 A4  JSR sub_A403_try_to_inc_EnemyAPosXLow  ;
loc_A22E_continue:
C D 1 - - - 0x00E23E 03:A22E: A0 10     LDY #$10                               ; prepares the sprite_magic2 (The offset by the address), a damage frame
C - - - - - 0x00E240 03:A230: D0 02     BNE bra_A234_prepare_rendering         ; Always true

loc_A232_stop:
C - - - - - 0x00E242 03:A232: A0 00     LDY #$00                               ; prepares the sprite_magic2 (The offset by the address), the frame by default
; In: Register Y - sprite_magic2 (The offset by the address)
loc_A234_prepare_rendering:
bra_A234_prepare_rendering:
C D 1 - - - 0x00E244 03:A234: AD 38 03  LDA vEnemyAPosXLow                     ;
C - - - - - 0x00E247 03:A237: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00E249 03:A239: AD 3E 03  LDA vEnemyAPosXHigh                    ;
C - - - - - 0x00E24C 03:A23C: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x00E24E 03:A23E: 20 AC D6  JSR sub_D6AC_out_of_screen             ;
C - - - - - 0x00E251 03:A241: 20 EF A3  JSR sub_A3EF_boss_on_screen            ;
C - - - - - 0x00E254 03:A244: 20 24 A5  JSR sub_A524_prepare_rendering_ex      ;
C - - - - - 0x00E257 03:A247: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E25A 03:A24A: 85 12     STA ram_0012                           ;
C - - - - - 0x00E25C 03:A24C: 29 30     AND #$30                               ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00E25E 03:A24E: D0 B9     BNE bra_A209_RTS                       ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00E260 03:A250: A5 12     LDA ram_0012                           ; A <~ status
C - - - - - 0x00E262 03:A252: 29 04     AND #$04                               ; CONSTANT - 'throw' status
C - - - - - 0x00E264 03:A254: D0 05     BNE @bra_A25B_skip                     ; If 'stop' status is activated
C - - - - - 0x00E266 03:A256: AD 5C 03  LDA vEnemyBStatus                      ;
C - - - - - 0x00E269 03:A259: 30 AE     BMI bra_A209_RTS                       ; If the status is used
@bra_A25B_skip:
C - - - - - 0x00E26B 03:A25B: A0 20     LDY #$20                               ; the offset value #1
C - - - - - 0x00E26D 03:A25D: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00E26F 03:A25F: 6A        ROR                                    ;
C - - - - - 0x00E270 03:A260: 90 02     BCC @bra_A264_skip                     ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x00E272 03:A262: A0 18     LDY #$18                               ; the offset value #2
@bra_A264_skip:
C - - - - - 0x00E274 03:A264: A5 12     LDA ram_0012                           ; A <~ status
C - - - - - 0x00E276 03:A266: 4A        LSR                                    ;
C - - - - - 0x00E277 03:A267: 4A        LSR                                    ;
C - - - - - 0x00E278 03:A268: B0 61     BCS bra_A2CB_render                    ; If 'block' status (0x02) is activated
C - - - - - 0x00E27A 03:A26A: 4A        LSR                                    ;
C - - - - - 0x00E27B 03:A26B: B0 0C     BCS bra_A279_throw                     ; If 'throw' status (0x04) is activated
C - - - - - 0x00E27D 03:A26D: A0 18     LDY #$18                               ; the offset value #3
C - - - - - 0x00E27F 03:A26F: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00E281 03:A271: 29 08     AND #$08                               ;
C - - - - - 0x00E283 03:A273: D0 02     BNE @bra_A277_skip                     ; Branch every 8 times after 8
C - - - - - 0x00E285 03:A275: A0 1C     LDY #$1C                               ; the offset value #4
@bra_A277_skip:
C - - - - - 0x00E287 03:A277: D0 52     BNE bra_A2CB_render                    ; Always true

bra_A279_throw:
C - - - - - 0x00E289 03:A279: A0 24     LDY #$24                               ; the offset value #5
C - - - - - 0x00E28B 03:A27B: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E28E 03:A27E: C9 18     CMP #$18                               ; CONSTANT - before throwing
C - - - - - 0x00E290 03:A280: B0 49     BCS bra_A2CB_render                    ; If JumpCounter >= 0x18
C - - - - - 0x00E292 03:A282: A0 28     LDY #$28                               ; the offset value #6
C - - - - - 0x00E294 03:A284: C9 10     CMP #$10                               ;
C - - - - - 0x00E296 03:A286: F0 0C     BEQ @bra_A294_set_projectile           ; If JumpCounter == 0x10
C - - - - - 0x00E298 03:A288: B0 41     BCS bra_A2CB_render                    ; If JumpCounter > 0x10
C - - - - - 0x00E29A 03:A28A: A0 2C     LDY #$2C                               ; the offset value #7
C - - - - - 0x00E29C 03:A28C: C9 08     CMP #$08                               ;
C - - - - - 0x00E29E 03:A28E: B0 3B     BCS bra_A2CB_render                    ; If JumpCounter >= 0x08
C - - - - - 0x00E2A0 03:A290: A0 30     LDY #$30                               ; the offset value #8
C - - - - - 0x00E2A2 03:A292: D0 37     BNE bra_A2CB_render                    ; Always true

@bra_A294_set_projectile:
C - - - - - 0x00E2A4 03:A294: A0 15     LDY #$15                               ; the offset by posX #1
C - - - - - 0x00E2A6 03:A296: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E2A9 03:A299: 29 01     AND #$01                               ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00E2AB 03:A29B: F0 02     BEQ @bra_A29F_right                    ; If the enemy is looking to the right
C - - - - - 0x00E2AD 03:A29D: A0 ED     LDY #$ED                               ; the offset by posX #2
; In: Register Y - the offset by posX
@bra_A29F_right:
C - - - - - 0x00E2AF 03:A29F: 09 C0     ORA #$C0                               ;
C - - - - - 0x00E2B1 03:A2A1: 8D 5C 03  STA vEnemyBStatus                      ; <~ 0xC0 or 0xC1
C - - - - - 0x00E2B4 03:A2A4: 98        TYA                                    ;
C - - - - - 0x00E2B5 03:A2A5: 18        CLC                                    ;
C - - - - - 0x00E2B6 03:A2A6: 6D 38 03  ADC vEnemyAPosXLow                     ;
C - - - - - 0x00E2B9 03:A2A9: 8D 74 03  STA vEnemyBPosXLow                     ; <~ enemyA posX + offset
C - - - - - 0x00E2BC 03:A2AC: A9 00     LDA #$00                               ;
C - - - - - 0x00E2BE 03:A2AE: 8D 7A 03  STA vEnemyBPosXHigh                    ; the room has one screen
C - - - - - 0x00E2C1 03:A2B1: A9 06     LDA #$06                               ; Initializes a jump counter
C - - - - - 0x00E2C3 03:A2B3: 8D 86 03  STA vEnemyBJumpCounter                 ;
C - - - - - 0x00E2C6 03:A2B6: 20 64 D0  JSR sub_D064_generate_rng              ;
C - - - - - 0x00E2C9 03:A2B9: 29 03     AND #$03                               ;
C - - - - - 0x00E2CB 03:A2BB: A8        TAY                                    ;
C - - - - - 0x00E2CC 03:A2BC: C8        INY                                    ;
C - - - - - 0x00E2CD 03:A2BD: C8        INY                                    ; Y <~ {0x02, 0x03, 0x04, 0x05}
C - - - - - 0x00E2CE 03:A2BE: B9 3C A0  LDA tbl_A03C_power,Y                   ;
C - - - - - 0x00E2D1 03:A2C1: 8D 62 03  STA vEnemyBThrowingPower               ;
C - - - - - 0x00E2D4 03:A2C4: A9 90     LDA #$90                               ;
C - - - - - 0x00E2D6 03:A2C6: 8D 68 03  STA vEnemyBPosY                        ; Initializes a Y-position of the projectile
C - - - - - 0x00E2D9 03:A2C9: A0 28     LDY #$28                               ; the offset value #9
; In: Register Y - sprite_magic2 (The offset by the address)
bra_A2CB_render:
C - - - - - 0x00E2DB 03:A2CB: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E2DE 03:A2CE: 6A        ROR                                    ;
C - - - - - 0x00E2DF 03:A2CF: 90 02     BCC @bra_A2D3_right                    ; If the enemy is looking to the right
C - - - - - 0x00E2E1 03:A2D1: C8        INY                                    ;
C - - - - - 0x00E2E2 03:A2D2: C8        INY                                    ; next the offset for the left frame
@bra_A2D3_right:
C - - - - - 0x00E2E3 03:A2D3: 4C 24 A5  JMP loc_A524_prepare_rendering_ex      ;

loc_A2D6_dying:
C - - - - - 0x00E2E6 03:A2D6: A0 14     LDY #$14                               ; prepares the sprite_magic2 (The offset by the address), the dying
C - - - - - 0x00E2E8 03:A2D8: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E2EB 03:A2DB: D0 03     BNE @bra_A2E0_dying_render             ; If EnemyAJumpCounter != 0x00
C - - - - - 0x00E2ED 03:A2DD: 20 6B A3  JSR sub_A36B_to_cutscene               ;
@bra_A2E0_dying_render:
C - - - - - 0x00E2F0 03:A2E0: 4C 34 A2  JMP loc_A234_prepare_rendering         ;

sub_A2E3_try_to_change_self:
C - - - - - 0x00E2F3 03:A2E3: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E2F6 03:A2E6: F0 0C     BEQ @bra_A2F4_skip                     ; If vJumpCounter == 0x00
C - - - - - 0x00E2F8 03:A2E8: CE 4A 03  DEC vEnemyAJumpCounter                 ;
C - - - - - 0x00E2FB 03:A2EB: D0 39     BNE bra_A326                           ; If vJumpCounter != 0x00
C - - - - - 0x00E2FD 03:A2ED: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E300 03:A2F0: 29 10     AND #$10                               ; CONSTANT - 'get damage' status
C - - - - - 0x00E302 03:A2F2: F0 00     BEQ @bra_A2F4_skip                     ; !(WHY?) If 'get damage' status isn't activated
@bra_A2F4_skip:
C - - - - - 0x00E304 03:A2F4: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E307 03:A2F7: 29 20     AND #$20                               ; CONSTANT - 'the dying' status
C - - - - - 0x00E309 03:A2F9: D0 2A     BNE bra_A325_RTS                       ; !(WHY?) If 'the dying' status is activated
C - - - - - 0x00E30B 03:A2FB: 20 99 A3  JSR sub_A399_get_status_index          ;
C - - - - - 0x00E30E 03:A2FE: 20 8C A3  JSR sub_A38C_try_to_change_direction   ;
C - - - - - 0x00E311 03:A301: 29 07     AND #$07                               ;
C - - - - - 0x00E313 03:A303: 0A        ASL                                    ; *2, because the table has 2 values
C - - - - - 0x00E314 03:A304: A8        TAY                                    ; y is {0x00, 0x02, ... , 0x0E}
C - - - - - 0x00E315 03:A305: B9 0F A1  LDA tbl_A10E_status_and_counter + 1,Y  ;
C - - - - - 0x00E318 03:A308: 8D 4A 03  STA vEnemyAJumpCounter                 ; initializes a jump counter
C - - - - - 0x00E31B 03:A30B: B9 0E A1  LDA tbl_A10E_status_and_counter,Y      ;
C - - - - - 0x00E31E 03:A30E: 48        PHA                                    ; store a status
C - - - - - 0x00E31F 03:A30F: 29 04     AND #$04                               ; CONSTANT - 'throw' status
C - - - - - 0x00E321 03:A311: F0 05     BEQ @bra_A318_skip                     ; If 'throw' status isn't activated
C - - - - - 0x00E323 03:A313: A9 2D     LDA #$2D                               ; a throw sound
C - - - - - 0x00E325 03:A315: 20 20 C4  JSR sub_C420_add_sound_effect          ; bank FF
@bra_A318_skip:
C - - - - - 0x00E328 03:A318: 68        PLA                                    ; retrieve a status (see $A30E)
; In: Register A - an new status
sub_A319_change_substatus:
loc_A319_change_substatus:
C D 1 - - - 0x00E329 03:A319: 85 05     STA ram_0005                      ;
C - - - - - 0x00E32B 03:A31B: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x00E32E 03:A31E: 29 81     AND #$81                          ; clear substate
C - - - - - 0x00E330 03:A320: 05 05     ORA ram_0005                      ;
C - - - - - 0x00E332 03:A322: 9D 20 03  STA vEnemyAStatus,X               ;
bra_A325_RTS:
C - - - - - 0x00E335 03:A325: 60        RTS                               ;

bra_A326:
C - - - - - 0x00E336 03:A326: AD 20 03  LDA vEnemyAStatus                 ;
C - - - - - 0x00E339 03:A329: 29 34     AND #$34                          ; CONSTANT - 'dying' + 'get damage' + 'throw' status
C - - - - - 0x00E33B 03:A32B: D0 F8     BNE bra_A325_RTS                  ; If 'dying' or 'get damage' or 'throw' status is activated
C - - - - - 0x00E33D 03:A32D: A5 30     LDA vPostAttackCounter            ;
C - - - - - 0x00E33F 03:A32F: D0 0B     BNE @bra_A33C_post_attack         ; If vPostAttackCounter != 0x00
C - - - - - 0x00E341 03:A331: A9 02     LDA #BIT_BUTTON_B                 ;
C - - - - - 0x00E343 03:A333: 20 79 D0  JSR sub_D079_check_button_press   ;
C - - - - - 0x00E346 03:A336: F0 ED     BEQ bra_A325_RTS                  ; Go to the branch If the button 'B' isn't pressed
C - - - - - 0x00E348 03:A338: A9 40     LDA #$40                          ;
C - - - - - 0x00E34A 03:A33A: 85 30     STA vPostAttackCounter            ; initializes a counter
@bra_A33C_post_attack:
C - - - - - 0x00E34C 03:A33C: A5 30     LDA vPostAttackCounter            ;
C - - - - - 0x00E34E 03:A33E: F0 12     BEQ bra_A352_clear                ; If vPostAttackCounter == 0x00
C - - - - - 0x00E350 03:A340: C9 30     CMP #$30                          ; CONSTANT - a block counter value
C - - - - - 0x00E352 03:A342: D0 E1     BNE bra_A325_RTS                  ; If vPostAttackCounter != 0x30
C - - - - - 0x00E354 03:A344: A9 2C     LDA #$2C                          ; sound - start blocking a shot
C - - - - - 0x00E356 03:A346: 20 20 C4  JSR sub_C420_add_sound_effect     ; bank FF
C - - - - - 0x00E359 03:A349: AD 20 03  LDA vEnemyAStatus                 ;
C - - - - - 0x00E35C 03:A34C: 09 02     ORA #$02                          ; CONSTANT - 'block' status
C - - - - - 0x00E35E 03:A34E: 8D 20 03  STA vEnemyAStatus                 ;
C - - - - - 0x00E361 03:A351: 60        RTS                               ;

bra_A352_clear:
C - - - - - 0x00E362 03:A352: AD 20 03  LDA vEnemyAStatus                ; !(UNUSED)
C - - - - - 0x00E365 03:A355: 29 FD     AND #$FD                         ; !(UNUSED), reset 'block' status
C - - - - - 0x00E367 03:A357: 8D 20 03  STA vEnemyAStatus                ; !(UNUSED)
C - - - - - 0x00E36A 03:A35A: 60        RTS                              ; !(UNUSED)

; Out: Register Y - damage points (a bomb - 3 points, a rifle - 2 point, otherwise - 1 point)
sub_A35B_get_damage_points:
C - - - - - 0x00E36B 03:A35B: A0 03     LDY #$03                        ;
C - - - - - 0x00E36D 03:A35D: AD 14 02  LDA vCurrentWeaponStatus        ;
C - - - - - 0x00E370 03:A360: C9 41     CMP #$41                        ; CONSTANT - the bomb (the weapon) is activated
C - - - - - 0x00E372 03:A362: F0 06     BEQ @bra_A36A_RTS               ; if vCurrentWeaponStatus = 0x41
C - - - - - 0x00E374 03:A364: 88        DEY                             ;
C - - - - - 0x00E375 03:A365: C9 42     CMP #$42                        ; CONSTANT - The rifle is current and activated
C - - - - - 0x00E377 03:A367: F0 01     BEQ @bra_A36A_RTS               ; if vCurrentWeaponStatus = 0x42
C - - - - - 0x00E379 03:A369: 88        DEY                             ;
@bra_A36A_RTS:
C - - - - - 0x00E37A 03:A36A: 60        RTS                             ;

sub_A36B_to_cutscene:
C - - - - - 0x00E37B 03:A36B: A9 C4     LDA #$C4                        ; CONSTANT - to the cutscene of defeating the boss
C - - - - - 0x00E37D 03:A36D: 85 39     STA vGameInterruptEvent         ;
C - - - - - 0x00E37F 03:A36F: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x00E382 03:A372: 8D D7 03  STA vCacheBossStatus            ; store to a cache
C - - - - - 0x00E385 03:A375: AD 32 03  LDA vEnemyAScreenPosX           ;
C - - - - - 0x00E388 03:A378: 8D D8 03  STA vCacheBossScreenPosX        ; store to a cache
C - - - - - 0x00E38B 03:A37B: A4 5E     LDY vNoLevel                    ;
C - - - - - 0x00E38D 03:A37D: B9 88 A3  LDA tbl_A388_score,Y            ;
C - - - - - 0x00E390 03:A380: 20 60 C9  JSR sub_C960_add_score2         ; adds score by the level number
C - - - - - 0x00E393 03:A383: A9 00     LDA #$00                        ;
C - - - - - 0x00E395 03:A385: 85 30     STA vPostAttackCounter          ; reset
C - - - - - 0x00E397 03:A387: 60        RTS                             ;

tbl_A388_score:
- D 1 - - - 0x00E398 03:A388: 15        .byte $15   ; level 1, 1500 Score
- D 1 - - - 0x00E399 03:A389: 15        .byte $15   ; level 2, 1500 Score
- D 1 - - - 0x00E39A 03:A38A: 15        .byte $15   ; level 3, 1500 Score
- D - - - - 0x00E39B 03:A38B: 15        .byte $15   ; level 4, 1500 Score

; In: Register A - DSSSSSSS (D - change direction, S - a new status index)
sub_A38C_try_to_change_direction:
C - - - - - 0x00E39C 03:A38C: 10 0A     BPL @bra_A398_RTS       ; If Register A > 0 && Register A < 0x80
C - - - - - 0x00E39E 03:A38E: 48        PHA                     ; store a status index
C - - - - - 0x00E39F 03:A38F: BD 20 03  LDA vEnemyAStatus,X     ;
C - - - - - 0x00E3A2 03:A392: 49 01     EOR #$01                ;
C - - - - - 0x00E3A4 03:A394: 9D 20 03  STA vEnemyAStatus,X     ;
C - - - - - 0x00E3A7 03:A397: 68        PLA                     ; retrieve a status index (see $A38E)
@bra_A398_RTS:
C - - - - - 0x00E3A8 03:A398: 60        RTS                     ;

; Out: Register A - DSSSSSSS (D - change direction, S - a new status index)
sub_A399_get_status_index:
C - - - - - 0x00E3A9 03:A399: A5 5E     LDA vNoLevel                       ;
C - - - - - 0x00E3AB 03:A39B: 0A        ASL                                ; *2, because the table have 2 bytes
C - - - - - 0x00E3AC 03:A39C: A8        TAY                                ;
C - - - - - 0x00E3AD 03:A39D: B9 46 A0  LDA tbl_A046_distances,Y           ;
C - - - - - 0x00E3B0 03:A3A0: 85 01     STA ram_0001                       ; <~ a short distance
C - - - - - 0x00E3B2 03:A3A2: B9 47 A0  LDA tbl_A046_distances + 1,Y       ;
C - - - - - 0x00E3B5 03:A3A5: 85 02     STA ram_0002                       ; <~ a long distance
C - - - - - 0x00E3B7 03:A3A7: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x00E3BA 03:A3AA: 6A        ROR                                ;
C - - - - - 0x00E3BB 03:A3AB: B0 0D     BCS bra_A3BA_left                  ; If the enemy is looking to the left
C - - - - - 0x00E3BD 03:A3AD: 20 E8 A3  JSR sub_A3E8_get_boss_distance     ;
C - - - - - 0x00E3C0 03:A3B0: A0 30     LDY #$30                           ; the offset value #1
C - - - - - 0x00E3C2 03:A3B2: B0 1B     BCS bra_A3CF_assign                ; If vLowChrPosX <= vEnemyAPosXLow
C - - - - - 0x00E3C4 03:A3B4: 20 73 D0  JSR sub_D073_invert_sign           ;
C - - - - - 0x00E3C7 03:A3B7: 4C C1 A3  JMP loc_A3C1_continue              ;

bra_A3BA_left:
C - - - - - 0x00E3CA 03:A3BA: 20 E8 A3  JSR sub_A3E8_get_boss_distance     ;
C - - - - - 0x00E3CD 03:A3BD: A0 30     LDY #$30                           ; the offset value #1
C - - - - - 0x00E3CF 03:A3BF: 90 0E     BCC bra_A3CF_assign                ; If vLowChrPosX > vEnemyAPosXLow
; In: Register A - abs(vEnemyAPosXLow - vLowChrPosX)
loc_A3C1_continue:
C D 1 - - - 0x00E3D1 03:A3C1: A0 20     LDY #$20                           ; the offset value #2
C - - - - - 0x00E3D3 03:A3C3: C5 02     CMP ram_0002                       ;
C - - - - - 0x00E3D5 03:A3C5: B0 08     BCS bra_A3CF_assign                ; If the distance >= $0002 (long)
C - - - - - 0x00E3D7 03:A3C7: A0 10     LDY #$10                           ; the offset value #3
C - - - - - 0x00E3D9 03:A3C9: C5 01     CMP ram_0001                       ;
C - - - - - 0x00E3DB 03:A3CB: B0 02     BCS bra_A3CF_assign                ; If the distance >= $0001 (short)
C - - - - - 0x00E3DD 03:A3CD: A0 00     LDY #$00                           ; the offset value #4
; In: Register A - the table offset
bra_A3CF_assign:
C - - - - - 0x00E3DF 03:A3CF: 84 11     STY vCacheRam_11                   ; $0011 <~ {0x00, 0x10, 0x20, 0x30}
C - - - - - 0x00E3E1 03:A3D1: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00E3E4 03:A3D4: 29 0F     AND #$0F                           ;
C - - - - - 0x00E3E6 03:A3D6: 18        CLC                                ;
C - - - - - 0x00E3E7 03:A3D7: 65 11     ADC vCacheRam_11                   ;
C - - - - - 0x00E3E9 03:A3D9: 85 00     STA ram_0000                       ; $0000 <~ {0x00, 0x01, ..., 0x3F}
C - - - - - 0x00E3EB 03:A3DB: A4 5E     LDY vNoLevel                       ;
C - - - - - 0x00E3ED 03:A3DD: B9 42 A0  LDA tbl_A042_index_offsets,Y       ; A <~ the offset
C - - - - - 0x00E3F0 03:A3E0: 18        CLC                                ;
C - - - - - 0x00E3F1 03:A3E1: 65 00     ADC ram_0000                       ;
C - - - - - 0x00E3F3 03:A3E3: A8        TAY                                ; Y <~ $0000 + the offset
C - - - - - 0x00E3F4 03:A3E4: B9 4E A0  LDA tbl_A04E_status_indexes,Y      ;
C - - - - - 0x00E3F7 03:A3E7: 60        RTS                                ;

; Out: Register A: Enemy posX - character posX
sub_A3E8_get_boss_distance:
C - - - - - 0x00E3F8 03:A3E8: BD 38 03  LDA vEnemyAPosXLow,X    ;
C - - - - - 0x00E3FB 03:A3EB: 38        SEC                     ;
C - - - - - 0x00E3FC 03:A3EC: F5 66     SBC vLowChrPosX,X       ;
C - - - - - 0x00E3FE 03:A3EE: 60        RTS                     ;

; In: $0003 - see sub_D6AC_out_of_screen
; Out: carry flag - 0
sub_A3EF_boss_on_screen:
C - - - - - 0x00E3FF 03:A3EF: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x00E402 03:A3F2: 85 00     STA ram_0000                   ; ~> sprite magic1
C - - - - - 0x00E404 03:A3F4: A5 03     LDA ram_0003                   ;
C - - - - - 0x00E406 03:A3F6: 9D 32 03  STA vEnemyAScreenPosX,X        ;
C - - - - - 0x00E409 03:A3F9: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x00E40C 03:A3FC: 6A        ROR                            ;
C - - - - - 0x00E40D 03:A3FD: 90 02     BCC bra_A401_return_false      ; If the enemy is looking to the right
C - - - - - 0x00E40F 03:A3FF: C8        INY                            ;
C - - - - - 0x00E410 03:A400: C8        INY                            ; next the offset for the left frame
bra_A401_return_false:
C - - - - - 0x00E411 03:A401: 18        CLC                            ; return false
C - - - - - 0x00E412 03:A402: 60        RTS                            ;

; Out: carry flag (analog return true or false):
; 1, if the boss moved to right
; 0, otherwise.
sub_A403_try_to_inc_EnemyAPosXLow:
loc_A403_try_to_inc_EnemyAPosXLow:
C D 1 - - - 0x00E413 03:A403: BD 38 03  LDA vEnemyAPosXLow,X                   ;
C - - - - - 0x00E416 03:A406: 38        SEC                                    ;
C - - - - - 0x00E417 03:A407: E9 E0     SBC #$E0                               ; CONSTANT - The boss should be visible in its entirety on the right
C - - - - - 0x00E419 03:A409: BD 3E 03  LDA vEnemyAPosXHigh,X                  ;
C - - - - - 0x00E41C 03:A40C: E5 4A     SBC vNearCurrentRoomLength             ;
C - - - - - 0x00E41E 03:A40E: B0 F1     BCS bra_A401_return_false              ; Branch If the boss reach the end of the room
C - - - - - 0x00E420 03:A410: 20 1C D7  JSR sub_D71C_inc_EnemyAPosXLow_unsafe  ;
C - - - - - 0x00E423 03:A413: 38        SEC                                    ; return true
C - - - - - 0x00E424 03:A414: 60        RTS                                    ;

; Out: carry flag (analog return true or false):
; 1, if the boss moved to left
; 0, otherwise.
sub_A415_try_to_dec_EnemyAPosXLow:
loc_A415_try_to_dec_EnemyAPosXLow:
C D 1 - - - 0x00E425 03:A415: BD 38 03  LDA vEnemyAPosXLow,X                   ;
C - - - - - 0x00E428 03:A418: 38        SEC                                    ;
C - - - - - 0x00E429 03:A419: E9 20     SBC #$20                               ; CONSTANT - The boss should be visible in its entirety on the left
C - - - - - 0x00E42B 03:A41B: BD 3E 03  LDA vEnemyAPosXHigh,X                  ;
C - - - - - 0x00E42E 03:A41E: E9 00     SBC #$00                               ;
C - - - - - 0x00E430 03:A420: 90 DF     BCC bra_A401_return_false              ; Branch If the boss reach the beginning of the room
C - - - - - 0x00E432 03:A422: 20 FD D6  JSR sub_D6FD_dec_EnemyAPosXLow_unsafe  ;
C - - - - - 0x00E435 03:A425: 38        SEC                                    ; return true
C - - - - - 0x00E436 03:A426: 60        RTS                                    ;

; Out: Register Y - sprite_magic2 (The offset by the address)
sub_A427_try_to_move_and_set_frame_counter:
C - - - - - 0x00E437 03:A427: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00E43A 03:A42A: 6A        ROR                                    ;
C - - - - - 0x00E43B 03:A42B: 90 0D     BCC bra_A43A_change_direction          ; If the enemy is looking to the right
C - - - - - 0x00E43D 03:A42D: 20 40 A4  JSR sub_A440_try_to_move_to_left       ;
; Out: Register Y - sprite_magic2 (The offset by the address)
loc_A430_prepare_rendering_by_frame_:
C D 1 - - - 0x00E440 03:A430: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter  ;
C - - - - - 0x00E443 03:A433: BD 44 03  LDA vEnemyAFrame_Counter,X             ;
C - - - - - 0x00E446 03:A436: 0A        ASL                                    ;
C - - - - - 0x00E447 03:A437: 0A        ASL                                    ; *4
C - - - - - 0x00E448 03:A438: A8        TAY                                    ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00E449 03:A439: 60        RTS                                    ;

bra_A43A_change_direction:
C - - - - - 0x00E44A 03:A43A: 20 48 A4  JSR sub_A448_try_to_move_to_right        ;
C - - - - - 0x00E44D 03:A43D: 4C 30 A4  JMP loc_A430_prepare_rendering_by_frame_ ;

sub_A440_try_to_move_to_left:
C - - - - - 0x00E450 03:A440: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00E452 03:A442: 6A        ROR                                    ;
C - - - - - 0x00E453 03:A443: 90 BC     BCC bra_A401_return_false              ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x00E455 03:A445: 4C 15 A4  JMP loc_A415_try_to_dec_EnemyAPosXLow  ;

sub_A448_try_to_move_to_right:
C - - - - - 0x00E458 03:A448: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00E45A 03:A44A: 6A        ROR                                    ;
C - - - - - 0x00E45B 03:A44B: 90 B4     BCC bra_A401_return_false              ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x00E45D 03:A44D: 4C 03 A4  JMP loc_A403_try_to_inc_EnemyAPosXLow  ;

; Out: Register Y - sprite_magic2 (The offset by the address)
sub_A450_try_to_move_and_set_frame_counter2:
C - - - - - 0x00E460 03:A450: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00E463 03:A453: 6A        ROR                                      ;
C - - - - - 0x00E464 03:A454: B0 E4     BCS bra_A43A_change_direction            ; If the enemy is looking to the left
C - - - - - 0x00E466 03:A456: 20 40 A4  JSR sub_A440_try_to_move_to_left         ;
C - - - - - 0x00E469 03:A459: 4C 30 A4  JMP loc_A430_prepare_rendering_by_frame_ ;

loc_A45C_continue:
C D 1 - - - 0x00E46C 03:A45C: AD 50 03  LDA vEnemyAHealthPoints               ;
C - - - - - 0x00E46F 03:A45F: F0 5E     BEQ bra_A4BF_RTS                      ; If HPoints == 0x00
C - - - - - 0x00E471 03:A461: AD 20 03  LDA vEnemyAStatus                     ;
C - - - - - 0x00E474 03:A464: 10 59     BPL bra_A4BF_RTS                      ; If the status isn't used
C - - - - - 0x00E476 03:A466: A2 00     LDX #$00                              ;
C - - - - - 0x00E478 03:A468: 86 1A     STX vTempCounter1A                    ; !(WHY?), the projectile is always one
C - - - - - 0x00E47A 03:A46A: 20 C0 A4  JSR sub_A4C0_try_to_move_projectile   ;
C - - - - - 0x00E47D 03:A46D: 20 A2 A1  JSR sub_A1A2_prepare_hitbox2          ;
C - - - - - 0x00E480 03:A470: A5 5F     LDA vChrLiveStatus                    ;
C - - - - - 0x00E482 03:A472: 29 02     AND #$02                              ; CONSTANT - Goemon
C - - - - - 0x00E484 03:A474: D0 13     BNE bra_A489_skip                     ; If the character is Goemon
C - - - - - 0x00E486 03:A476: A6 7A     LDX vBulletCount                      ; set loop counter
@bra_A478_loop:                                                               ; loop by x
C - - - - - 0x00E488 03:A478: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet    ;
C - - - - - 0x00E48B 03:A47B: 90 09     BCC @bra_A486_no_bullet_hit           ; If the intersect isn't exist
C - - - - - 0x00E48D 03:A47D: A9 10     LDA #$10                              ; The sound of a bullet hitting an armored enemy
C - - - - - 0x00E48F 03:A47F: 20 20 C4  JSR sub_C420_add_sound_effect         ; bank FF
C - - - - - 0x00E492 03:A482: A9 00     LDA #$00                              ;
C - - - - - 0x00E494 03:A484: 95 8F     STA vBulletStatus,X                   ; clear
@bra_A486_no_bullet_hit:
C - - - - - 0x00E496 03:A486: CA        DEX                                   ; decrement loop counter
C - - - - - 0x00E497 03:A487: 10 EF     BPL @bra_A478_loop                    ; If Register X >= 0x00
bra_A489_skip:
C - - - - - 0x00E499 03:A489: 4C 62 D5  JMP loc_D562_has_character_damage     ;

sub_A48C_throw_after_get_damage:
C - - - - - 0x00E49C 03:A48C: A0 08     LDY #$08                         ; the offset by posX #1
C - - - - - 0x00E49E 03:A48E: AD 20 03  LDA vEnemyAStatus                ;
C - - - - - 0x00E4A1 03:A491: 29 01     AND #$01                         ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00E4A3 03:A493: F0 02     BEQ @bra_A497_right              ; If the enemy is looking to the right
C - - - - - 0x00E4A5 03:A495: A0 F8     LDY #$F8                         ; the offset by posX #2
@bra_A497_right:
C - - - - - 0x00E4A7 03:A497: 09 C0     ORA #$C0                         ;
C - - - - - 0x00E4A9 03:A499: 8D 5C 03  STA vEnemyBStatus                ; <~ 0xC0 or 0xC1
C - - - - - 0x00E4AC 03:A49C: 98        TYA                              ;
C - - - - - 0x00E4AD 03:A49D: 18        CLC                              ;
C - - - - - 0x00E4AE 03:A49E: 6D 38 03  ADC vEnemyAPosXLow               ;
C - - - - - 0x00E4B1 03:A4A1: 8D 74 03  STA vEnemyBPosXLow               ; <~ enemyA posX + offset
C - - - - - 0x00E4B4 03:A4A4: A9 00     LDA #$00                         ;
C - - - - - 0x00E4B6 03:A4A6: 8D 7A 03  STA vEnemyBPosXHigh              ; the room has one screen
C - - - - - 0x00E4B9 03:A4A9: A9 90     LDA #$90                         ;
C - - - - - 0x00E4BB 03:A4AB: 8D 68 03  STA vEnemyBPosY                  ; Initializes a Y-position of the projectile
C - - - - - 0x00E4BE 03:A4AE: A9 10     LDA #$10                         ; Initializes a jump counter
C - - - - - 0x00E4C0 03:A4B0: 8D 86 03  STA vEnemyBJumpCounter           ;
C - - - - - 0x00E4C3 03:A4B3: 20 64 D0  JSR sub_D064_generate_rng        ;
C - - - - - 0x00E4C6 03:A4B6: 29 03     AND #$03                         ;
C - - - - - 0x00E4C8 03:A4B8: A8        TAY                              ; Y <~ {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x00E4C9 03:A4B9: B9 3C A0  LDA tbl_A03C_power,Y             ;
C - - - - - 0x00E4CC 03:A4BC: 8D 62 03  STA vEnemyBThrowingPower         ;
bra_A4BF_RTS:
C - - - - - 0x00E4CF 03:A4BF: 60        RTS                              ;

sub_A4C0_try_to_move_projectile:
C - - - - - 0x00E4D0 03:A4C0: AD 5C 03  LDA vEnemyBStatus                      ;
C - - - - - 0x00E4D3 03:A4C3: 10 FA     BPL bra_A4BF_RTS                       ; If the status isn't used
C - - - - - 0x00E4D5 03:A4C5: AD 5C 03  LDA vEnemyBStatus                      ;
C - - - - - 0x00E4D8 03:A4C8: 6A        ROR                                    ;
C - - - - - 0x00E4D9 03:A4C9: 90 06     BCC bra_A4D1_right                     ; If the enemy is looking to the right
C - - - - - 0x00E4DB 03:A4CB: 20 32 A5  JSR sub_A532_dec_throwing_positionX    ;
C - - - - - 0x00E4DE 03:A4CE: 4C D4 A4  JMP loc_A4D4_continue                  ;

bra_A4D1_right:
C - - - - - 0x00E4E1 03:A4D1: 20 47 A5  JSR sub_A547_inc_throwing_positionX    ;
loc_A4D4_continue:
C D 1 - - - 0x00E4E4 03:A4D4: AC 86 03  LDY vEnemyBJumpCounter                 ;
C - - - - - 0x00E4E7 03:A4D7: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y        ; Y = [0x00-0x2F]
C - - - - - 0x00E4EA 03:A4DA: 18        CLC                                    ;
C - - - - - 0x00E4EB 03:A4DB: 6D 68 03  ADC vEnemyBPosY                        ;
C - - - - - 0x00E4EE 03:A4DE: 8D 68 03  STA vEnemyBPosY                        ; Resolves a new throw Y-position
C - - - - - 0x00E4F1 03:A4E1: AD 86 03  LDA vEnemyBJumpCounter                 ;
C - - - - - 0x00E4F4 03:A4E4: C9 18     CMP #$18                               ; CONSTANT - a maximum amplitude
C - - - - - 0x00E4F6 03:A4E6: 90 0A     BCC bra_A4F2_inc                       ; If JumpCounter < 0x18
C - - - - - 0x00E4F8 03:A4E8: AD 68 03  LDA vEnemyBPosY                        ;
C - - - - - 0x00E4FB 03:A4EB: C9 DF     CMP #$DF                               ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00E4FD 03:A4ED: 90 03     BCC bra_A4F2_inc                       ; If EnemyPosY < 0xDF
C - - - - - 0x00E4FF 03:A4EF: 4C 73 D8  JMP loc_D873_free_enemyB               ;

bra_A4F2_inc:
C - - - - - 0x00E502 03:A4F2: EE 86 03  INC vEnemyBJumpCounter             ;
C - - - - - 0x00E505 03:A4F5: A9 2F     LDA #$2F                           ; CONSTANT - a maximum jump value
C - - - - - 0x00E507 03:A4F7: CD 86 03  CMP vEnemyBJumpCounter             ;
C - - - - - 0x00E50A 03:A4FA: B0 03     BCS @bra_A4FF_skip                 ; If JumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x00E50C 03:A4FC: 8D 86 03  STA vEnemyBJumpCounter             ; JumpCounter <~ 0x2F
@bra_A4FF_skip:
C - - - - - 0x00E50F 03:A4FF: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x00E511 03:A501: 29 0C     AND #$0C                           ; A <~ {0x00, 0x04, 0x08, 0x0C}
C - - - - - 0x00E513 03:A503: 4A        LSR                                ; A <~ {0x00, 0x02, 0x04, 0x06}
C - - - - - 0x00E514 03:A504: 18        CLC                                ;
C - - - - - 0x00E515 03:A505: 69 34     ADC #$34                           ;
C - - - - - 0x00E517 03:A507: A8        TAY                                ; Y <~ {0x34, 0x36, 0x38, 0x3A}
C - - - - - 0x00E518 03:A508: AD 74 03  LDA vEnemyBPosXLow                 ;
C - - - - - 0x00E51B 03:A50B: 85 00     STA ram_0000                       ; prepares the 1st parameter
C - - - - - 0x00E51D 03:A50D: AD 7A 03  LDA vEnemyBPosXHigh                ;
C - - - - - 0x00E520 03:A510: 85 01     STA ram_0001                       ; prepares the 2nd parameter
C - - - - - 0x00E522 03:A512: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x00E525 03:A515: 90 03     BCC @bra_A51A_skip                 ; If the enemy is on the screen
C - - - - - 0x00E527 03:A517: 4C 73 D8  JMP loc_D873_free_enemyB           ;

; In: Register Y - sprite_magic2 (The offset by the address)
@bra_A51A_skip:
C - - - - - 0x00E52A 03:A51A: AD 68 03  LDA vEnemyBPosY               ;
C - - - - - 0x00E52D 03:A51D: 85 00     STA ram_0000                  ; ~> sprite magic1
C - - - - - 0x00E52F 03:A51F: A5 03     LDA ram_0003                  ; from sub_D6AC_out_of_screen
C - - - - - 0x00E531 03:A521: 8D 6E 03  STA vEnemyBScreenPosX         ;
; In: $0000 - posY
; In: Register Y - sprite_magic2 (The offset by the address)
sub_A524_prepare_rendering_ex:
loc_A524_prepare_rendering_ex:
C D 1 - - - 0x00E534 03:A524: 98        TYA                           ;
C - - - - - 0x00E535 03:A525: 18        CLC                           ;
C - - - - - 0x00E536 03:A526: 6D 02 03  ADC vEnemyASpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x00E539 03:A529: 85 01     STA ram_0001                  ;
C - - - - - 0x00E53B 03:A52B: A9 A0     LDA #$A0                      ; ~> sprite_magic3
C - - - - - 0x00E53D 03:A52D: 85 02     STA ram_0002                  ;
C - - - - - 0x00E53F 03:A52F: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

sub_A532_dec_throwing_positionX:
C - - - - - 0x00E542 03:A532: 20 5C A5  JSR sub_A55C_get_offset       ;
C - - - - - 0x00E545 03:A535: BD 74 03  LDA vEnemyBPosXLow,X          ;
C - - - - - 0x00E548 03:A538: 38        SEC                           ;
C - - - - - 0x00E549 03:A539: E5 00     SBC ram_0000                  ; A <~ PosXLow - $0000
C - - - - - 0x00E54B 03:A53B: 9D 74 03  STA vEnemyBPosXLow,X          ;
C - - - - - 0x00E54E 03:A53E: BD 7A 03  LDA vEnemyBPosXHigh,X         ;
C - - - - - 0x00E551 03:A541: E9 00     SBC #$00                      ; decrement PosXHigh, if PosXLow changed a sign
C - - - - - 0x00E553 03:A543: 9D 7A 03  STA vEnemyBPosXHigh,X         ;
C - - - - - 0x00E556 03:A546: 60        RTS                           ;

sub_A547_inc_throwing_positionX:
C - - - - - 0x00E557 03:A547: 20 5C A5  JSR sub_A55C_get_offset       ;
C - - - - - 0x00E55A 03:A54A: BD 74 03  LDA vEnemyBPosXLow,X          ;
C - - - - - 0x00E55D 03:A54D: 18        CLC                           ;
C - - - - - 0x00E55E 03:A54E: 65 00     ADC ram_0000                  ; A <~ PosXLow + $0000
C - - - - - 0x00E560 03:A550: 9D 74 03  STA vEnemyBPosXLow,X          ;
C - - - - - 0x00E563 03:A553: BD 7A 03  LDA vEnemyBPosXHigh,X         ;
C - - - - - 0x00E566 03:A556: 69 00     ADC #$00                      ; increment PosXHigh, if PosXLow changed a sign
C - - - - - 0x00E568 03:A558: 9D 7A 03  STA vEnemyBPosXHigh,X         ;
C - - - - - 0x00E56B 03:A55B: 60        RTS                           ;

; Out: $0000 - a throw offset
; vEnemyBThrowingPower = vEnemyBThrowingDirection
sub_A55C_get_offset:
C - - - - - 0x00E56C 03:A55C: BD 62 03  LDA vEnemyBThrowingPower,X     ;
C - - - - - 0x00E56F 03:A55F: 4A        LSR                            ;
C - - - - - 0x00E570 03:A560: 85 00     STA ram_0000                   ; $0000 = {0, 1, 2, 3}
C - - - - - 0x00E572 03:A562: 90 07     BCC bra_A56B_RTS               ; If ThrowingPower is even
C - - - - - 0x00E574 03:A564: A5 2C     LDA vLowCounter                ; $0000 = {0, 1, 2}
C - - - - - 0x00E576 03:A566: 6A        ROR                            ;
C - - - - - 0x00E577 03:A567: 90 02     BCC bra_A56B_RTS               ; 50% chance
C - - - - - 0x00E579 03:A569: E6 00     INC ram_0000                   ; $0000 = {1, 2, 3}
bra_A56B_RTS:
C - - - - - 0x00E57B 03:A56B: 60        RTS                            ;

; In: Register X - the projectile number
; vEnemyBThrowingPower = vButterflyRebound = vEnemyBThrowingDirection
sub_A56C_resolve_throwing_position:
C - - - - - 0x00E57C 03:A56C: BD 62 03  LDA vEnemyBThrowingPower,X           ;
C - - - - - 0x00E57F 03:A56F: 0A        ASL                                  ; *2, because the set contains 2 bytes
C - - - - - 0x00E580 03:A570: A8        TAY                                  ;
C - - - - - 0x00E581 03:A571: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x00E584 03:A574: 18        CLC                                  ;
C - - - - - 0x00E585 03:A575: 79 D4 DA  ADC tbl_flying_track_offset,Y        ;
C - - - - - 0x00E588 03:A578: 9D 68 03  STA vEnemyBPosY,X                    ; <~ posY + offset
C - - - - - 0x00E58B 03:A57B: A9 00     LDA #$00                             ;
C - - - - - 0x00E58D 03:A57D: 85 02     STA ram_0002                         ; $0002 <~ 0x00
C - - - - - 0x00E58F 03:A57F: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y    ;
C - - - - - 0x00E592 03:A582: 10 02     BPL @bra_A586_skip                   ; If the offset >= 0x00
C - - - - - 0x00E594 03:A584: C6 02     DEC ram_0002                         ; $0002 = 0xFF, i.e. -1
@bra_A586_skip:
C - - - - - 0x00E596 03:A586: 18        CLC                                  ;
C - - - - - 0x00E597 03:A587: 7D 74 03  ADC vEnemyBPosXLow,X                 ;
C - - - - - 0x00E59A 03:A58A: 9D 74 03  STA vEnemyBPosXLow,X                 ; <~ posX + offset
C - - - - - 0x00E59D 03:A58D: BD 7A 03  LDA vEnemyBPosXHigh,X                ;
C - - - - - 0x00E5A0 03:A590: 65 02     ADC ram_0002                         ;
C - - - - - 0x00E5A2 03:A592: 9D 7A 03  STA vEnemyBPosXHigh,X                ; changed PosXHigh (+1 or -1), if PosXLow was overflow
C - - - - - 0x00E5A5 03:A595: 60        RTS                                  ;

; 1 byte - a status
; 2 byte - a status counter
tbl_A596_status_and_counter:
- D 1 - - - 0x00E5A6 03:A596: 00        .byte $00, $18   ; the approach
- D 1 - - - 0x00E5A8 03:A598: 00        .byte $00, $30   ; the approach
- D 1 - - - 0x00E5AA 03:A59A: 40        .byte $40, $18   ; the retreat 
- D 1 - - - 0x00E5AC 03:A59C: 40        .byte $40, $30   ; the retreat
- D 1 - - - 0x00E5AE 03:A59E: 08        .byte $08, $18   ; stop
- D - - - - 0x00E5B0 03:A5A0: 08        .byte $08, $30   ; stop
- D 1 - - - 0x00E5B2 03:A5A2: 04        .byte $04, $20   ; throw

tbl_A5A4_circular_flight_posY:
- D 1 - - - 0x00E5B4 03:A5A4: 90        .byte $90, $92, $94, $96, $98, $9A, $9C, $9E, $A0, $A3, $A6, $A9, $AC, $AF, $B2, $B5
- D 1 - - - 0x00E5C4 03:A5B4: B8        .byte $B8, $B5, $B2, $AF, $AC, $A9, $A6, $A3, $A0, $9E, $9C, $9A, $98, $96, $94, $92

tbl_A5C4_circular_flight_posX:
- D 1 - - - 0x00E5D4 03:A5C4: 20        .byte $20, $22, $24, $26, $28, $2A, $2C, $2E, $30, $2E, $2C, $2A, $28, $26, $24, $22
- D 1 - - - 0x00E5E4 03:A5D4: 20        .byte $20, $1E, $1C, $1A, $18, $16, $14, $12, $10, $12, $14, $16, $18, $1A, $1C, $1E
- D 1 - - - 0x00E5F4 03:A5E4: E0        .byte $E0, $DE, $DC, $DA, $D8, $D6, $D4, $D2, $D0, $D2, $D4, $D6, $D8, $DA, $DC, $DE
- D 1 - - - 0x00E604 03:A5F4: E0        .byte $E0, $EE, $E4, $E6, $E8, $EA, $EC, $EE, $F0, $EE, $EC, $EA, $E8, $E6, $E4, $E2

loc_A604_boss:
C D 1 - - - 0x00E614 03:A604: A2 00     LDX #$00                         ;
C - - - - - 0x00E616 03:A606: 86 1A     STX vTempCounter1A               ; !(WHY?), the boss is always one
C - - - - - 0x00E618 03:A608: 20 7B A6  JSR sub_A67B_status_behavior     ;
C - - - - - 0x00E61B 03:A60B: A6 1A     LDX vTempCounter1A               ;
C - - - - - 0x00E61D 03:A60D: BD 50 03  LDA vEnemyAHealthPoints,X        ;
C - - - - - 0x00E620 03:A610: F0 2C     BEQ bra_A63E_skip                ; If HPoints == 0x00
C - - - - - 0x00E622 03:A612: 20 68 A6  JSR sub_A668_prepare_hitbox      ;
C - - - - - 0x00E625 03:A615: 20 60 D6  JSR sub_D660_is_bomb_exploding   ;
C - - - - - 0x00E628 03:A618: 90 06     BCC bra_A620_no_bomb_hit         ; If the bomb isn't exploding
C - - - - - 0x00E62A 03:A61A: 20 4B A6  JSR sub_A64B_hit                 ;
C - - - - - 0x00E62D 03:A61D: 4C 3E A6  JMP loc_A63E_continue            ;

bra_A620_no_bomb_hit:
C - - - - - 0x00E630 03:A620: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x00E632 03:A622: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x00E634 03:A624: F0 0B     BEQ bra_A631_check_bullets          ; If the character isn't Goemon
C - - - - - 0x00E636 03:A626: 20 06 D6  JSR sub_D606_have_intersect_sword   ;
C - - - - - 0x00E639 03:A629: 90 10     BCC bra_A63B_continue               ; If the intersect doesn't exist
C - - - - - 0x00E63B 03:A62B: 20 4B A6  JSR sub_A64B_hit                    ;
C - - - - - 0x00E63E 03:A62E: 4C 3E A6  JMP loc_A63E_continue               ;

bra_A631_check_bullets:
C - - - - - 0x00E641 03:A631: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_A633_loop:                                                             ; loop by x
C - - - - - 0x00E643 03:A633: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00E646 03:A636: B0 09     BCS bra_A641_bullet_hit             ; If the intersect is exist
C - - - - - 0x00E648 03:A638: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00E649 03:A639: 10 F8     BPL @bra_A633_loop                  ; If Register X >= 0x00
bra_A63B_continue:
C - - - - - 0x00E64B 03:A63B: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_A63E_skip:
loc_A63E_continue:
C D 1 - - - 0x00E64E 03:A63E: 4C 26 A7  JMP loc_A726_projectile             ;

bra_A641_bullet_hit:
C - - - - - 0x00E651 03:A641: A9 00     LDA #$00                             ;
C - - - - - 0x00E653 03:A643: 95 8F     STA vBulletStatus,X                  ; clear
C - - - - - 0x00E655 03:A645: 20 4B A6  JSR sub_A64B_hit                     ;
C - - - - - 0x00E658 03:A648: 4C 3E A6  JMP loc_A63E_continue                ;

sub_A64B_hit:
C - - - - - 0x00E65B 03:A64B: A6 1A     LDX vTempCounter1A                   ;
C - - - - - 0x00E65D 03:A64D: AD 20 03  LDA vEnemyAStatus                    ;
C - - - - - 0x00E660 03:A650: 29 30     AND #$30                             ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00E662 03:A652: D0 26     BNE bra_A67A_RTS                     ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00E664 03:A654: 20 5B A3  JSR sub_A35B_get_damage_points       ;
bra_A657_repeat:
C - - - - - 0x00E667 03:A657: CE 50 03  DEC vEnemyAHealthPoints              ;
C - - - - - 0x00E66A 03:A65A: D0 03     BNE bra_A65F_skip                    ; If HPoints != 0x00
C - - - - - 0x00E66C 03:A65C: 4C 7E A1  JMP loc_A17E_final_hit               ;

bra_A65F_skip:
C - - - - - 0x00E66F 03:A65F: 88        DEY                                  ;
C - - - - - 0x00E670 03:A660: D0 F5     BNE bra_A657_repeat                  ; If Register Y != 0x00
C - - - - - 0x00E672 03:A662: 20 95 A7  JSR sub_A795_try_to_create           ;
C - - - - - 0x00E675 03:A665: 4C 78 A1  JMP loc_A178_get_damage              ;

sub_A668_prepare_hitbox:
C - - - - - 0x00E678 03:A668: AD 2C 03  LDA vEnemyAPosY           ;
C - - - - - 0x00E67B 03:A66B: 85 AD     STA vEnemyHitBoxY         ; <~ enemy posY
C - - - - - 0x00E67D 03:A66D: AD 32 03  LDA vEnemyAScreenPosX     ;
C - - - - - 0x00E680 03:A670: 85 AE     STA vEnemyHitBoxX         ; <~ enemy screen posX
C - - - - - 0x00E682 03:A672: A9 28     LDA #$28                  ;
C - - - - - 0x00E684 03:A674: 85 AF     STA vEnemyHitBoxH         ; <~ hitBoxH
C - - - - - 0x00E686 03:A676: A9 04     LDA #$04                  ;
C - - - - - 0x00E688 03:A678: 85 B0     STA vEnemyHitBoxW         ; <~ hitBoxW
bra_A67A_RTS:
C - - - - - 0x00E68A 03:A67A: 60        RTS                       ;

sub_A67B_status_behavior:
C - - - - - 0x00E68B 03:A67B: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E68E 03:A67E: 10 FA     BPL bra_A67A_RTS                          ; If the status isn't used
C - - - - - 0x00E690 03:A680: 20 F7 A6  JSR sub_A6F7_try_to_change_self           ;
C - - - - - 0x00E693 03:A683: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E696 03:A686: 4A        LSR                                       ;
C - - - - - 0x00E697 03:A687: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D - - - - 0x00E69A 03:A68A: 97 A6     .addr loc_A698_main - 1       ; 0x02
- D 1 - I - 0x00E69C 03:A68C: A3 A6     .addr loc_A6A4_throw - 1      ; 0x04
- D 1 - I - 0x00E69E 03:A68E: C1 A6     .addr loc_A6C2_stop - 1       ; 0x08
- D 1 - I - 0x00E6A0 03:A690: C5 A6     .addr loc_A6C6_get_damage - 1 ; 0x10
- D 1 - I - 0x00E6A2 03:A692: E9 A6     .addr loc_A6EA_dying - 1      ; 0x20
- D 1 - I - 0x00E6A4 03:A694: 9D A6     .addr loc_A69E_retreat - 1    ; 0x40
- D 1 - I - 0x00E6A6 03:A696: 97 A6     .addr loc_A698_main - 1       ; 0x80

loc_A698_main:
C - - - - - 0x00E6A8 03:A698: 20 27 A4  JSR sub_A427_try_to_move_and_set_frame_counter   ;
C - - - - - 0x00E6AB 03:A69B: 4C D7 A6  JMP loc_A6D7_prepare_rendering                   ;

loc_A69E_retreat:
C - - - - - 0x00E6AE 03:A69E: 20 50 A4  JSR sub_A450_try_to_move_and_set_frame_counter2  ;
C - - - - - 0x00E6B1 03:A6A1: 4C D7 A6  JMP loc_A6D7_prepare_rendering                   ;

loc_A6A4_throw:
C - - - - - 0x00E6B4 03:A6A4: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E6B7 03:A6A7: A0 10     LDY #$10                               ; the offset value #1
C - - - - - 0x00E6B9 03:A6A9: C9 18     CMP #$18                               ; CONSTANT - before throwing
C - - - - - 0x00E6BB 03:A6AB: B0 2A     BCS bra_A6D7_prepare_rendering         ; If JumpCounter >= 0x18
C - - - - - 0x00E6BD 03:A6AD: A0 14     LDY #$14                               ; the offset value #2
C - - - - - 0x00E6BF 03:A6AF: C9 10     CMP #$10                               ; CONSTANT - raises a hand #1
C - - - - - 0x00E6C1 03:A6B1: B0 24     BCS bra_A6D7_prepare_rendering         ; If JumpCounter >= 0x10
C - - - - - 0x00E6C3 03:A6B3: A0 1C     LDY #$1C                               ; the offset value #3
C - - - - - 0x00E6C5 03:A6B5: C9 08     CMP #$08                               ; CONSTANT - raises a hand #2
C - - - - - 0x00E6C7 03:A6B7: 90 1E     BCC bra_A6D7_prepare_rendering         ; If JumpCounter < 0x08
C - - - - - 0x00E6C9 03:A6B9: D0 03     BNE @bra_A6BE_skip                     ; If JumpCounter != 0x08
C - - - - - 0x00E6CB 03:A6BB: 20 95 A7  JSR sub_A795_try_to_create             ;
@bra_A6BE_skip:
C - - - - - 0x00E6CE 03:A6BE: A0 18     LDY #$18                               ; the offset value #4
C - - - - - 0x00E6D0 03:A6C0: D0 15     BNE bra_A6D7_prepare_rendering         ; Always true

loc_A6C2_stop:
C - - - - - 0x00E6D2 03:A6C2: A0 0C     LDY #$0C                               ; the offset value #5
C - - - - - 0x00E6D4 03:A6C4: D0 11     BNE bra_A6D7_prepare_rendering         ; Always true

loc_A6C6_get_damage:
C - - - - - 0x00E6D6 03:A6C6: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E6D9 03:A6C9: 6A        ROR                                    ;
C - - - - - 0x00E6DA 03:A6CA: B0 06     BCS bra_A6D2_left                      ; If the enemy is looking to the left
C - - - - - 0x00E6DC 03:A6CC: 20 15 A4  JSR sub_A415_try_to_dec_EnemyAPosXLow  ;
C - - - - - 0x00E6DF 03:A6CF: 4C D5 A6  JMP loc_A6D5_continue                  ;

bra_A6D2_left:
C - - - - - 0x00E6E2 03:A6D2: 20 03 A4  JSR sub_A403_try_to_inc_EnemyAPosXLow  ;
loc_A6D5_continue:
C D 1 - - - 0x00E6E5 03:A6D5: A0 20     LDY #$20                               ; the offset value #6
; In: Register Y - sprite_magic2 (The offset by the address)
bra_A6D7_prepare_rendering:
loc_A6D7_prepare_rendering:
C D 1 - - - 0x00E6E7 03:A6D7: AD 38 03  LDA vEnemyAPosXLow                     ;
C - - - - - 0x00E6EA 03:A6DA: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00E6EC 03:A6DC: AD 3E 03  LDA vEnemyAPosXHigh                    ;
C - - - - - 0x00E6EF 03:A6DF: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x00E6F1 03:A6E1: 20 AC D6  JSR sub_D6AC_out_of_screen             ;
C - - - - - 0x00E6F4 03:A6E4: 20 EF A3  JSR sub_A3EF_boss_on_screen            ;
C - - - - - 0x00E6F7 03:A6E7: 4C 24 A5  JMP loc_A524_prepare_rendering_ex      ;

loc_A6EA_dying:
C - - - - - 0x00E6FA 03:A6EA: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E6FD 03:A6ED: D0 03     BNE @bra_A6F2_dying_render             ; If EnemyAJumpCounter != 0x00
C - - - - - 0x00E6FF 03:A6EF: 20 6B A3  JSR sub_A36B_to_cutscene               ;
@bra_A6F2_dying_render:
C - - - - - 0x00E702 03:A6F2: A0 24     LDY #$24                               ; the offset value #7 (the dying frame)
C - - - - - 0x00E704 03:A6F4: 4C D7 A6  JMP loc_A6D7_prepare_rendering         ;

sub_A6F7_try_to_change_self:
C - - - - - 0x00E707 03:A6F7: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E70A 03:A6FA: F0 0C     BEQ @bra_A708_skip                     ; If vJumpCounter == 0x00
C - - - - - 0x00E70C 03:A6FC: CE 4A 03  DEC vEnemyAJumpCounter                 ;
C - - - - - 0x00E70F 03:A6FF: D0 24     BNE bra_A725_RTS                       ; If vJumpCounter != 0x00
C - - - - - 0x00E711 03:A701: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E714 03:A704: 29 10     AND #$10                               ; CONSTANT - 'get damage' status
C - - - - - 0x00E716 03:A706: F0 00     BEQ @bra_A708_skip                     ; !(WHY?) If 'get damage' status isn't activated
@bra_A708_skip:
C - - - - - 0x00E718 03:A708: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E71B 03:A70B: 29 20     AND #$20                               ; CONSTANT - 'the dying' status
C - - - - - 0x00E71D 03:A70D: D0 16     BNE bra_A725_RTS                       ; If 'the dying' status is activated
C - - - - - 0x00E71F 03:A70F: 20 99 A3  JSR sub_A399_get_status_index          ;
C - - - - - 0x00E722 03:A712: 20 8C A3  JSR sub_A38C_try_to_change_direction   ;
C - - - - - 0x00E725 03:A715: 29 07     AND #$07                               ;
C - - - - - 0x00E727 03:A717: 0A        ASL                                    ; *2, because the table has 2 values
C - - - - - 0x00E728 03:A718: A8        TAY                                    ; y is {0x00, 0x02, ... , 0x0E}
C - - - - - 0x00E729 03:A719: B9 97 A5  LDA tbl_A596_status_and_counter + 1,Y  ;
C - - - - - 0x00E72C 03:A71C: 8D 4A 03  STA vEnemyAJumpCounter                 ; initializes a jump counter
C - - - - - 0x00E72F 03:A71F: B9 96 A5  LDA tbl_A596_status_and_counter,Y      ;
C - - - - - 0x00E732 03:A722: 20 19 A3  JSR sub_A319_change_substatus          ;
bra_A725_RTS:
C - - - - - 0x00E735 03:A725: 60        RTS                                    ;

loc_A726_projectile:
C D 1 - - - 0x00E736 03:A726: A2 05     LDX #$05                          ;
C - - - - - 0x00E738 03:A728: 86 1A     STX vTempCounter1A                ; set loop counter (the enemyB number)
bra_A72A_loop:
C - - - - - 0x00E73A 03:A72A: A6 1A     LDX vTempCounter1A                ; prepares an input parameter
C - - - - - 0x00E73C 03:A72C: 20 EC A7  JSR sub_A7EC_status_behavior      ;
C - - - - - 0x00E73F 03:A72F: AD 50 03  LDA vEnemyAHealthPoints           ;
C - - - - - 0x00E742 03:A732: F0 4F     BEQ bra_A783_next                 ; If HPoints == 0x00
C - - - - - 0x00E744 03:A734: BD 5C 03  LDA vEnemyBStatus,X               ;
C - - - - - 0x00E747 03:A737: C9 E0     CMP #$E0                          ;
C - - - - - 0x00E749 03:A739: B0 48     BCS bra_A783_next                 ; If vEnemyBStatus >= 0xE0
C - - - - - 0x00E74B 03:A73B: C9 C0     CMP #$C0                          ;
C - - - - - 0x00E74D 03:A73D: 90 44     BCC bra_A783_next                 ; If vEnemyBStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x00E74F 03:A73F: BD 68 03  LDA vEnemyBPosY,X                 ;
C - - - - - 0x00E752 03:A742: 85 AD     STA vEnemyHitBoxY                 ; <~ enemyB posY
C - - - - - 0x00E754 03:A744: BD 6E 03  LDA vEnemyBScreenPosX,X           ;
C - - - - - 0x00E757 03:A747: 85 AE     STA vEnemyHitBoxX                 ; <~ enemyB screen posX
C - - - - - 0x00E759 03:A749: A9 08     LDA #$08                          ;
C - - - - - 0x00E75B 03:A74B: 85 AF     STA vEnemyHitBoxH                 ; <~ hitBoxH
C - - - - - 0x00E75D 03:A74D: A9 04     LDA #$04                          ;
C - - - - - 0x00E75F 03:A74F: 85 B0     STA vEnemyHitBoxW                 ; <~ hitBoxW
C - - - - - 0x00E761 03:A751: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x00E764 03:A754: 90 06     BCC bra_A75C_no_bomb_hit          ; If the bomb isn't exploding
C - - - - - 0x00E766 03:A756: 20 88 A7  JSR sub_A788_hit                  ;
C - - - - - 0x00E769 03:A759: 4C 83 A7  JMP loc_A783_next                 ;

bra_A75C_no_bomb_hit:
C - - - - - 0x00E76C 03:A75C: A5 5F     LDA vChrLiveStatus                     ;
C - - - - - 0x00E76E 03:A75E: 29 02     AND #$02                               ; CONSTANT - Goemon
C - - - - - 0x00E770 03:A760: F0 0B     BEQ bra_A76D_check_bullets             ; If the character isn't Goemon
C - - - - - 0x00E772 03:A762: 20 06 D6  JSR sub_D606_have_intersect_sword      ;
C - - - - - 0x00E775 03:A765: 90 1C     BCC bra_A783_next                      ; If the intersect doesn't exist
C - - - - - 0x00E777 03:A767: 20 88 A7  JSR sub_A788_hit                       ;
C - - - - - 0x00E77A 03:A76A: 4C 83 A7  JMP loc_A783_next                      ;

bra_A76D_check_bullets:
C - - - - - 0x00E77D 03:A76D: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_A76F_loop:                                                             ; loop by x
C - - - - - 0x00E77F 03:A76F: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00E782 03:A772: 90 09     BCC @bra_A77D_next                  ; If the intersect isn't exist
C - - - - - 0x00E784 03:A774: A9 00     LDA #$00                            ;
C - - - - - 0x00E786 03:A776: 95 8F     STA vBulletStatus,X                 ;
C - - - - - 0x00E788 03:A778: A9 10     LDA #$10                            ; The sound of a bullet hitting an armored enemy
C - - - - - 0x00E78A 03:A77A: 20 20 C4  JSR sub_C420_add_sound_effect       ; bank FF
@bra_A77D_next:
C - - - - - 0x00E78D 03:A77D: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00E78E 03:A77E: 10 EF     BPL @bra_A76F_loop                  ; If Register X >= 0x00
C - - - - - 0x00E790 03:A780: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_A783_next:
loc_A783_next:
C D 1 - - - 0x00E793 03:A783: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x00E795 03:A785: 10 A3     BPL bra_A72A_loop                   ; If vTempCounter1A >= 0
C - - - - - 0x00E797 03:A787: 60        RTS                                 ;

sub_A788_hit:
C - - - - - 0x00E798 03:A788: A6 1A     LDX vTempCounter1A                  ;
C - - - - - 0x00E79A 03:A78A: A9 20     LDA #$20                            ; CONSTANT - 'the dying' status
C - - - - - 0x00E79C 03:A78C: 20 B5 A8  JSR sub_A8B5_change_substatus       ;
C - - - - - 0x00E79F 03:A78F: A9 08     LDA #$08                            ; Initializes a jump counter
C - - - - - 0x00E7A1 03:A791: 9D 86 03  STA vEnemyBJumpCounter,X            ;
C - - - - - 0x00E7A4 03:A794: 60        RTS                                 ;

; In: Register X - vTempCounter1A(the enemyA counter)
sub_A795_try_to_create:
C - - - - - 0x00E7A5 03:A795: 8A        TXA                                 ;
C - - - - - 0x00E7A6 03:A796: 48        PHA                                 ; store x
C - - - - - 0x00E7A7 03:A797: A2 05     LDX #$05                            ; set loop counter (the butterfly count)
@bra_A799_loop:                                                             ; loop by x
C - - - - - 0x00E7A9 03:A799: BD 5C 03  LDA vEnemyBStatus,X                 ;
C - - - - - 0x00E7AC 03:A79C: 10 06     BPL bra_A7A4_create_butterfly       ; If the status isn't used
C - - - - - 0x00E7AE 03:A79E: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00E7AF 03:A79F: 10 F8     BPL @bra_A799_loop                  ; If Register X >= 0
C - - - - - 0x00E7B1 03:A7A1: 68        PLA                                 ;
C - - - - - 0x00E7B2 03:A7A2: AA        TAX                                 ; retrieve x (see $A796)
C - - - - - 0x00E7B3 03:A7A3: 60        RTS                                 ;

bra_A7A4_create_butterfly:
C - - - - - 0x00E7B4 03:A7A4: A9 35     LDA #$35                               ; The sound of Kim's butterflies appearing
C - - - - - 0x00E7B6 03:A7A6: 20 20 C4  JSR sub_C420_add_sound_effect          ; bank FF
C - - - - - 0x00E7B9 03:A7A9: A0 18     LDY #$18                               ; the offset value #1
C - - - - - 0x00E7BB 03:A7AB: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E7BE 03:A7AE: 29 01     AND #$01                               ;
C - - - - - 0x00E7C0 03:A7B0: F0 02     BEQ @bra_A7B4_right                    ; If the enemy is looking to the right
C - - - - - 0x00E7C2 03:A7B2: A0 E8     LDY #$E8                               ; the offset value #2
@bra_A7B4_right:
C - - - - - 0x00E7C4 03:A7B4: 09 C0     ORA #$C0                               ;
C - - - - - 0x00E7C6 03:A7B6: 9D 5C 03  STA vEnemyBStatus,X                    ; <~ 0xC0 or 0xC1 (the initialize)
C - - - - - 0x00E7C9 03:A7B9: 98        TYA                                    ;
C - - - - - 0x00E7CA 03:A7BA: 18        CLC                                    ;
C - - - - - 0x00E7CB 03:A7BB: 6D 38 03  ADC vEnemyAPosXLow                     ;
C - - - - - 0x00E7CE 03:A7BE: 9D 74 03  STA vEnemyBPosXLow,X                   ; <~ boss posX + 0x18 or boss posX - 0x18
C - - - - - 0x00E7D1 03:A7C1: A9 00     LDA #$00                               ;
C - - - - - 0x00E7D3 03:A7C3: 9D 80 03  STA vEnemyBFrame_Counter,X             ; reset a counter
C - - - - - 0x00E7D6 03:A7C6: 9D 7A 03  STA vEnemyBPosXHigh,X                  ; the room has one screen
C - - - - - 0x00E7D9 03:A7C9: 9D 92 03  STA vButterflyCircularFlightCounter,X  ; reset a counter
C - - - - - 0x00E7DC 03:A7CC: A5 5F     LDA vChrLiveStatus                     ;
C - - - - - 0x00E7DE 03:A7CE: 6A        ROR                                    ;
C - - - - - 0x00E7DF 03:A7CF: 90 08     BCC bra_A7D9_skip                      ; If a current character isn't Jigen
C - - - - - 0x00E7E1 03:A7D1: 20 64 D0  JSR sub_D064_generate_rng              ;
C - - - - - 0x00E7E4 03:A7D4: 29 1F     AND #$1F                               ;
C - - - - - 0x00E7E6 03:A7D6: 4C E1 A7  JMP loc_A7E1_continue                  ; A <~ {0x00, ..., 0x1F}

bra_A7D9_skip:
C - - - - - 0x00E7E9 03:A7D9: 20 64 D0  JSR sub_D064_generate_rng              ;
C - - - - - 0x00E7EC 03:A7DC: 29 3F     AND #$3F                               ;
C - - - - - 0x00E7EE 03:A7DE: 18        CLC                                    ;
C - - - - - 0x00E7EF 03:A7DF: 69 10     ADC #$10                               ; A <~ {0x10, ..., 0x4F}
; In: Register A  - {0x00, ..., 0x1F} or {0x10, ..., 0x4F}
loc_A7E1_continue:
C D 1 - - - 0x00E7F1 03:A7E1: 9D 86 03  STA vEnemyBJumpCounter,X               ; Initializes a jump counter (before the direct flying)
C - - - - - 0x00E7F4 03:A7E4: A9 90     LDA #$90                               ;
C - - - - - 0x00E7F6 03:A7E6: 9D 68 03  STA vEnemyBPosY,X                      ; Initializes the butterfly Y-position
C - - - - - 0x00E7F9 03:A7E9: 68        PLA                                    ;
C - - - - - 0x00E7FA 03:A7EA: AA        TAX                                    ; retrieve x (see $A796)
bra_A7EB_RTS:
C - - - - - 0x00E7FB 03:A7EB: 60        RTS                                    ;

; In: Register X - the projectile number
sub_A7EC_status_behavior:
C - - - - - 0x00E7FC 03:A7EC: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00E7FF 03:A7EF: 10 FA     BPL bra_A7EB_RTS                       ; If the status isn't used
C - - - - - 0x00E801 03:A7F1: 29 24     AND #$24                               ; CONSTANT - 'the dying' + 'flight type' status
C - - - - - 0x00E803 03:A7F3: C9 20     CMP #$20                               ; CONSTANT - 'the dying' status
C - - - - - 0x00E805 03:A7F5: F0 2C     BEQ bra_A823_prepare_rendering_ex      ; If 'the dying' status is activated
C - - - - - 0x00E807 03:A7F7: 29 04     AND #$04                               ; CONSTANT - 'flight type' status
C - - - - - 0x00E809 03:A7F9: D0 4A     BNE bra_A845_direct_flight             ; If 'flight type' status is activated
C - - - - - 0x00E80B 03:A7FB: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00E80D 03:A7FD: 29 03     AND #$03                               ;
C - - - - - 0x00E80F 03:A7FF: D0 13     BNE bra_A814_circular                  ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x00E811 03:A801: FE 92 03  INC vButterflyCircularFlightCounter,X  ; prepares an index
C - - - - - 0x00E814 03:A804: DE 86 03  DEC vEnemyBJumpCounter,X               ;
C - - - - - 0x00E817 03:A807: D0 0B     BNE bra_A814_circular                  ; If the jump counter != 0x00
C - - - - - 0x00E819 03:A809: A9 04     LDA #$04                               ; CONSTANT - 'flight type' status
C - - - - - 0x00E81B 03:A80B: 20 B5 A8  JSR sub_A8B5_change_substatus          ;
C - - - - - 0x00E81E 03:A80E: 20 72 A8  JSR sub_A872_init_rebound              ;
C - - - - - 0x00E821 03:A811: 4C 17 A8  JMP loc_A817_prepare_rendering         ;

; In: Register X - the projectile number
bra_A814_circular:
C - - - - - 0x00E824 03:A814: 20 8C A8  JSR sub_A88C_execute_circular_flight   ;
bra_A817_prepare_rendering:
loc_A817_prepare_rendering:
C D 1 - - - 0x00E827 03:A817: 20 C4 D9  JSR sub_D9C4_inc_enemyB_frame_counter  ;
C - - - - - 0x00E82A 03:A81A: BD 80 03  LDA vEnemyBFrame_Counter,X             ;
C - - - - - 0x00E82D 03:A81D: 0A        ASL                                    ;
C - - - - - 0x00E82E 03:A81E: 0A        ASL                                    ;
C - - - - - 0x00E82F 03:A81F: 18        CLC                                    ;
C - - - - - 0x00E830 03:A820: 69 28     ADC #$28                               ;
C - - - - - 0x00E832 03:A822: A8        TAY                                    ; Y <~ 4 * vFrameCounter + 0x28
; In: Register Y - sprite_magic2 (The offset by the address)
bra_A823_prepare_rendering_ex:
C - - - - - 0x00E833 03:A823: BD 74 03  LDA vEnemyBPosXLow,X                   ;
C - - - - - 0x00E836 03:A826: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00E838 03:A828: BD 7A 03  LDA vEnemyBPosXHigh,X                  ;
C - - - - - 0x00E83B 03:A82B: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x00E83D 03:A82D: 20 AC D6  JSR sub_D6AC_out_of_screen             ;
C - - - - - 0x00E840 03:A830: 90 03     BCC bra_A835_skip                      ; If the enemy is on the screen
C - - - - - 0x00E842 03:A832: 4C 73 D8  JMP loc_D873_free_enemyB               ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A835_skip:
C - - - - - 0x00E845 03:A835: 20 31 D8  JSR sub_D831_enemyB_on_screen          ;
C - - - - - 0x00E848 03:A838: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00E84B 03:A83B: 29 20     AND #$20                               ; CONSTANT - the enemy is dying
C - - - - - 0x00E84D 03:A83D: F0 03     BEQ bra_A842_skip                      ; If 'the dying' status isn't activated
C - - - - - 0x00E84F 03:A83F: 4C 81 A8  JMP loc_A881_dying                     ; Register Y is not used

bra_A842_skip:
C - - - - - 0x00E852 03:A842: 4C 24 A5  JMP loc_A524_prepare_rendering_ex      ;

; In: Register X - the projectile number
bra_A845_direct_flight:
C - - - - - 0x00E855 03:A845: BD 68 03  LDA vEnemyBPosY,X                   ;
C - - - - - 0x00E858 03:A848: C9 F0     CMP #$F0                            ; CONSTANT - Screen limit for Y-position
C - - - - - 0x00E85A 03:A84A: 90 03     BCC bra_A84F_skip                   ; If the bullet is off screen by Y-axis
C - - - - - 0x00E85C 03:A84C: 4C 73 D8  JMP loc_D873_free_enemyB            ;

; In: Register Y - the projectile Y-position
bra_A84F_skip:
C - - - - - 0x00E85F 03:A84F: C9 C0     CMP #$C0                                ; CONSTANT - Limit for Y-position #2
C - - - - - 0x00E861 03:A851: 90 13     BCC bra_A866_skip                       ; If Y-position < 0xC0
C - - - - - 0x00E863 03:A853: A9 03     LDA #$03                                ; CONSTANT - there was a rebound (the right direction)
C - - - - - 0x00E865 03:A855: BC 62 03  LDY vButterflyRebound,X                 ;
C - - - - - 0x00E868 03:A858: C0 05     CPY #$05                                ; CONSTANT - there was no rebound (the right direction)
C - - - - - 0x00E86A 03:A85A: F0 02     BEQ @bra_A85E_right                     ; If Register Y == 0x05
C - - - - - 0x00E86C 03:A85C: A9 0D     LDA #$0D                                ; CONSTANT - there was a rebound (the left direction)
@bra_A85E_right:
C - - - - - 0x00E86E 03:A85E: 9D 62 03  STA vButterflyRebound,X                 ;
C - - - - - 0x00E871 03:A861: A9 BF     LDA #$BF                                ; 
C - - - - - 0x00E873 03:A863: 9D 68 03  STA vEnemyBPosY,X                       ; <~ 0xC0 - 1 (slightly less than the limit)
bra_A866_skip:
C - - - - - 0x00E876 03:A866: A5 2C     LDA vLowCounter                         ;
C - - - - - 0x00E878 03:A868: 29 03     AND #$03                                ;
C - - - - - 0x00E87A 03:A86A: D0 AB     BNE bra_A817_prepare_rendering          ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x00E87C 03:A86C: 20 6C A5  JSR sub_A56C_resolve_throwing_position  ;
C - - - - - 0x00E87F 03:A86F: 4C 17 A8  JMP loc_A817_prepare_rendering          ;

; In: Register X - the projectile number
sub_A872_init_rebound:
C - - - - - 0x00E882 03:A872: A0 05     LDY #$05                             ; CONSTANT - there was no rebound (the right direction)
C - - - - - 0x00E884 03:A874: BD 5C 03  LDA vEnemyBStatus,X                  ;
C - - - - - 0x00E887 03:A877: 6A        ROR                                  ;
C - - - - - 0x00E888 03:A878: 90 02     BCC @bra_A87C_right                  ; If the enemy is looking to the right
C - - - - - 0x00E88A 03:A87A: A0 0B     LDY #$0B                             ; CONSTANT - there was no rebound (the left direction)
@bra_A87C_right:
C - - - - - 0x00E88C 03:A87C: 98        TYA                                  ;
C - - - - - 0x00E88D 03:A87D: 9D 62 03  STA vButterflyRebound,X              ;
C - - - - - 0x00E890 03:A880: 60        RTS                                  ;

loc_A881_dying:
C D 1 - - - 0x00E891 03:A881: DE 86 03  DEC vEnemyBJumpCounter,X             ;
C - - - - - 0x00E894 03:A884: D0 03     BNE bra_A889_add                     ; If vJumpCounter != 0x00
C - - - - - 0x00E896 03:A886: 4C 73 D8  JMP loc_D873_free_enemyB             ;

bra_A889_add:
C - - - - - 0x00E899 03:A889: 4C 7D D9  JMP loc_D97D_add_flash_sprite_magic  ;

; In: Register X - the projectile number
sub_A88C_execute_circular_flight:
C - - - - - 0x00E89C 03:A88C: BD 92 03  LDA vButterflyCircularFlightCounter,X   ;
C - - - - - 0x00E89F 03:A88F: 29 1F     AND #$1F                                ;
C - - - - - 0x00E8A1 03:A891: A8        TAY                                     ; Y <~ {0x00, 0x01, ..., 0x1F}
C - - - - - 0x00E8A2 03:A892: B9 A4 A5  LDA tbl_A5A4_circular_flight_posY,Y     ;
C - - - - - 0x00E8A5 03:A895: 9D 68 03  STA vEnemyBPosY,X                       ; set Y-position
C - - - - - 0x00E8A8 03:A898: AD 20 03  LDA vEnemyAStatus                       ;
C - - - - - 0x00E8AB 03:A89B: 29 01     AND #$01                                ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00E8AD 03:A89D: 09 C0     ORA #$C0                                ; A <~ 0xC0 or 0xC1
C - - - - - 0x00E8AF 03:A89F: 9D 5C 03  STA vEnemyBStatus,X                     ;
C - - - - - 0x00E8B2 03:A8A2: 6A        ROR                                     ;
C - - - - - 0x00E8B3 03:A8A3: 90 05     BCC @bra_A8AA_right                     ; If the enemy is looking to the right
C - - - - - 0x00E8B5 03:A8A5: 98        TYA                                     ;
C - - - - - 0x00E8B6 03:A8A6: 18        CLC                                     ;
C - - - - - 0x00E8B7 03:A8A7: 69 20     ADC #$20                                ;
C - - - - - 0x00E8B9 03:A8A9: A8        TAY                                     ; Y <~ Y + 0x20
@bra_A8AA_right:
C - - - - - 0x00E8BA 03:A8AA: AD 38 03  LDA vEnemyAPosXLow                      ;
C - - - - - 0x00E8BD 03:A8AD: 18        CLC                                     ;
C - - - - - 0x00E8BE 03:A8AE: 79 C4 A5  ADC tbl_A5C4_circular_flight_posX,Y     ;
C - - - - - 0x00E8C1 03:A8B1: 9D 74 03  STA vEnemyBPosXLow,X                    ; set X-position (the enemy position + offset)
C - - - - - 0x00E8C4 03:A8B4: 60        RTS                                     ;

; In: Register X - the enemyB number
; In: Register A - an new status
sub_A8B5_change_substatus:
C - - - - - 0x00E8C5 03:A8B5: 85 05     STA ram_0005              ;
C - - - - - 0x00E8C7 03:A8B7: BD 5C 03  LDA vEnemyBStatus,X       ;
C - - - - - 0x00E8CA 03:A8BA: 29 C1     AND #$C1                  ; clear substate
C - - - - - 0x00E8CC 03:A8BC: 05 05     ORA ram_0005              ;
C - - - - - 0x00E8CE 03:A8BE: 9D 5C 03  STA vEnemyBStatus,X       ;
C - - - - - 0x00E8D1 03:A8C1: 60        RTS                       ;

; 1 byte - a status
; 2 byte - a status counter
tbl_A8C2_status_and_counter:
- D 1 - - - 0x00E8D2 03:A8C2: 00        .byte $00, $18   ; the approach
- D 1 - - - 0x00E8D4 03:A8C4: 00        .byte $00, $30   ; the approach
- D 1 - - - 0x00E8D6 03:A8C6: 40        .byte $40, $18   ; the retreat
- D 1 - - - 0x00E8D8 03:A8C8: 40        .byte $40, $30   ; the retreat
- D 1 - - - 0x00E8DA 03:A8CA: 08        .byte $08, $18   ; stop
- D - - - - 0x00E8DC 03:A8CC: 08        .byte $08, $30   ; stop
- D 1 - - - 0x00E8DE 03:A8CE: 04        .byte $04, $20   ; throw

tbl_A8D0_offsets:
- D 1 - - - 0x00E8E0 03:A8D0: 18        .byte $18   ; 
- D 1 - - - 0x00E8E1 03:A8D1: 1C        .byte $1C   ; 
- D 1 - - - 0x00E8E2 03:A8D2: 1A        .byte $1A   ; 
- D 1 - - - 0x00E8E3 03:A8D3: 1E        .byte $1E   ; 
- D 1 - - - 0x00E8E4 03:A8D4: 1A        .byte $1A   ; 
- D 1 - - - 0x00E8E5 03:A8D5: 1C        .byte $1C   ; 
- D 1 - - - 0x00E8E6 03:A8D6: 18        .byte $18   ; 
- D 1 - - - 0x00E8E7 03:A8D7: 1E        .byte $1E   ; 

tbl_A8D8_direction:
- D 1 - - - 0x00E8E8 03:A8D8: 03        .byte $03   ; 
- D 1 - - - 0x00E8E9 03:A8D9: 04        .byte $04   ; horizontal, to right
- D 1 - - - 0x00E8EA 03:A8DA: 05        .byte $05   ; 
- D 1 - - - 0x00E8EB 03:A8DB: 06        .byte $06   ; 
- D 1 - - - 0x00E8EC 03:A8DC: 0B        .byte $0B   ; 
- D 1 - - - 0x00E8ED 03:A8DD: 0C        .byte $0C   ; horizontal, to left
- D 1 - - - 0x00E8EE 03:A8DE: 0D        .byte $0D   ; 
- D 1 - - - 0x00E8EF 03:A8DF: 0E        .byte $0E   ; 

loc_A8E0_boss:
C D 1 - - - 0x00E8F0 03:A8E0: A2 00     LDX #$00                           ;
C - - - - - 0x00E8F2 03:A8E2: 86 1A     STX vTempCounter1A                 ; !(WHY?), the boss is always one
C - - - - - 0x00E8F4 03:A8E4: 20 68 A9  JSR sub_A968_status_behavior       ;
C - - - - - 0x00E8F7 03:A8E7: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x00E8F9 03:A8E9: BD 50 03  LDA vEnemyAHealthPoints,X          ;
C - - - - - 0x00E8FC 03:A8EC: F0 2E     BEQ bra_A91C_skip                  ; If HPoints == 0x00
C - - - - - 0x00E8FE 03:A8EE: 20 52 A9  JSR sub_A952_prepare_hitbox        ;
C - - - - - 0x00E901 03:A8F1: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x00E904 03:A8F4: 90 06     BCC bra_A8FC_no_bomb_hit           ; If the bomb isn't exploding
C - - - - - 0x00E906 03:A8F6: 20 29 A9  JSR sub_A929_hit                   ;
C - - - - - 0x00E909 03:A8F9: 4C 1C A9  JMP loc_A91C_continue              ;

bra_A8FC_no_bomb_hit:
C - - - - - 0x00E90C 03:A8FC: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x00E90E 03:A8FE: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x00E910 03:A900: F0 0B     BEQ bra_A90D_check_bullets         ; If the character isn't Goemon
C - - - - - 0x00E912 03:A902: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x00E915 03:A905: 90 10     BCC bra_A917_no_intersect          ; If the intersect doesn't exist
C - - - - - 0x00E917 03:A907: 20 29 A9  JSR sub_A929_hit                   ;
C - - - - - 0x00E91A 03:A90A: 4C 1C A9  JMP loc_A91C_continue              ;

bra_A90D_check_bullets:
C - - - - - 0x00E91D 03:A90D: A6 7A     LDX vBulletCount                      ; set loop counter
@bra_A90F_loop:                                                               ; loop by x
C - - - - - 0x00E91F 03:A90F: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet    ;
C - - - - - 0x00E922 03:A912: B0 0B     BCS bra_A91F_bullet_hit               ; If the intersect is exist
C - - - - - 0x00E924 03:A914: CA        DEX                                   ; decrement loop counter
C - - - - - 0x00E925 03:A915: 10 F8     BPL @bra_A90F_loop                    ; If Register X >= 0x00
bra_A917_no_intersect:
C - - - - - 0x00E927 03:A917: A6 1A     LDX vTempCounter1A                    ; prepares an input parameter
C - - - - - 0x00E929 03:A919: 20 62 D5  JSR sub_D562_has_character_damage     ;
bra_A91C_skip:
loc_A91C_continue:
C D 1 - - - 0x00E92C 03:A91C: 4C 4F AA  JMP loc_AA4F_projectile               ;

; In: Register X - the number of the bullet
bra_A91F_bullet_hit:
C - - - - - 0x00E92F 03:A91F: A9 00     LDA #$00                             ;
C - - - - - 0x00E931 03:A921: 95 8F     STA vBulletStatus,X                  ; clear
C - - - - - 0x00E933 03:A923: 20 29 A9  JSR sub_A929_hit                     ;
C - - - - - 0x00E936 03:A926: 4C 1C A9  JMP loc_A91C_continue                ;

sub_A929_hit:
C - - - - - 0x00E939 03:A929: A6 1A     LDX vTempCounter1A                   ;
C - - - - - 0x00E93B 03:A92B: AD 20 03  LDA vEnemyAStatus                    ;
C - - - - - 0x00E93E 03:A92E: 29 30     AND #$30                             ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00E940 03:A930: D0 35     BNE bra_A967_RTS                     ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00E942 03:A932: 20 5B A3  JSR sub_A35B_get_damage_points       ;
bra_A935_repeat:
C - - - - - 0x00E945 03:A935: CE 50 03  DEC vEnemyAHealthPoints              ;
C - - - - - 0x00E948 03:A938: D0 03     BNE bra_A93D_skip                    ; If HPoints != 0x00
C - - - - - 0x00E94A 03:A93A: 4C 7E A1  JMP loc_A17E_final_hit               ;

bra_A93D_skip:
C - - - - - 0x00E94D 03:A93D: 88        DEY                                  ;
C - - - - - 0x00E94E 03:A93E: D0 F5     BNE bra_A935_repeat                  ; If Register Y != 0x00
C - - - - - 0x00E950 03:A940: A5 2C     LDA vLowCounter                      ;
C - - - - - 0x00E952 03:A942: 29 03     AND #$03                             ;
C - - - - - 0x00E954 03:A944: D0 06     BNE bra_A94C_direct_throw            ; Branch if vLowCounter doesn't multiple of 4 (75% chance)
C - - - - - 0x00E956 03:A946: 20 BB AA  JSR sub_AABB_throw_along_parabola    ;
C - - - - - 0x00E959 03:A949: 4C 78 A1  JMP loc_A178_get_damage              ;

bra_A94C_direct_throw:
C - - - - - 0x00E95C 03:A94C: 20 DA AA  JSR sub_AADA_throw                   ;
C - - - - - 0x00E95F 03:A94F: 4C 78 A1  JMP loc_A178_get_damage              ;

sub_A952_prepare_hitbox:
C - - - - - 0x00E962 03:A952: AD 2C 03  LDA vEnemyAPosY               ;
C - - - - - 0x00E965 03:A955: 38        SEC                           ;
C - - - - - 0x00E966 03:A956: E9 28     SBC #$28                      ; the offset (+40)
C - - - - - 0x00E968 03:A958: 85 AD     STA vEnemyHitBoxY             ; <~ posY + the offset
C - - - - - 0x00E96A 03:A95A: AD 32 03  LDA vEnemyAScreenPosX         ;
C - - - - - 0x00E96D 03:A95D: 85 AE     STA vEnemyHitBoxX             ; <~ screen posX
C - - - - - 0x00E96F 03:A95F: A9 08     LDA #$08                      ;
C - - - - - 0x00E971 03:A961: 85 AF     STA vEnemyHitBoxH             ; <~ hitBoxH
C - - - - - 0x00E973 03:A963: A9 04     LDA #$04                      ;
C - - - - - 0x00E975 03:A965: 85 B0     STA vEnemyHitBoxW             ; <~ hitBoxW
bra_A967_RTS:
C - - - - - 0x00E977 03:A967: 60        RTS                           ;

sub_A968_status_behavior:
C - - - - - 0x00E978 03:A968: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E97B 03:A96B: 10 FA     BPL bra_A967_RTS                          ; If the status isn't used
C - - - - - 0x00E97D 03:A96D: 20 13 AA  JSR sub_AA13_try_to_change_self           ;
C - - - - - 0x00E980 03:A970: AD 20 03  LDA vEnemyAStatus                         ;
C - - - - - 0x00E983 03:A973: 4A        LSR                                       ;
C - - - - - 0x00E984 03:A974: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D - - - - 0x00E987 03:A977: 84 A9     .addr loc_A985_main - 1    ; 0x02
- D 1 - I - 0x00E989 03:A979: 90 A9     .addr loc_A991_throw - 1   ; 0x04
- D 1 - I - 0x00E98B 03:A97B: 9A A9     .addr loc_A99B_stop - 1    ; 0x08
- D 1 - I - 0x00E98D 03:A97D: 9E A9     .addr loc_A99F_damage - 1  ; 0x10
- D 1 - I - 0x00E98F 03:A97F: 05 AA     .addr loc_AA06_dying - 1   ; 0x20
- D 1 - I - 0x00E991 03:A981: 8A A9     .addr loc_A98B_retreat - 1 ; 0x40
- D 1 - I - 0x00E993 03:A983: 84 A9     .addr loc_A985_main - 1    ; 0x80

loc_A985_main:
C - - - - - 0x00E995 03:A985: 20 27 A4  JSR sub_A427_try_to_move_and_set_frame_counter   ;
C - - - - - 0x00E998 03:A988: 4C B0 A9  JMP loc_A9B0_prepare_rendering                   ;

loc_A98B_retreat:
C - - - - - 0x00E99B 03:A98B: 20 50 A4  JSR sub_A450_try_to_move_and_set_frame_counter2  ;
C - - - - - 0x00E99E 03:A98E: 4C B0 A9  JMP loc_A9B0_prepare_rendering                   ;

loc_A991_throw:
C - - - - - 0x00E9A1 03:A991: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E9A4 03:A994: C9 20     CMP #$20                               ; CONSTANT - the counter value before appearing the projectile
C - - - - - 0x00E9A6 03:A996: D0 03     BNE @bra_A99B_skip                     ; If vJumpCounter != 0x20
C - - - - - 0x00E9A8 03:A998: 20 DA AA  JSR sub_AADA_throw                     ;
@bra_A99B_skip:
loc_A99B_stop:
C - - - - - 0x00E9AB 03:A99B: A0 0C     LDY #$0C                               ; prepares the sprite_magic2 (The offset by the address), a stop frame
C - - - - - 0x00E9AD 03:A99D: D0 11     BNE bra_A9B0_prepare_rendering         ; Always true

loc_A99F_damage:
C - - - - - 0x00E9AF 03:A99F: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E9B2 03:A9A2: 6A        ROR                                    ;
C - - - - - 0x00E9B3 03:A9A3: B0 06     BCS bra_A9AB_left                      ; If the enemy is looking to the left
C - - - - - 0x00E9B5 03:A9A5: 20 15 A4  JSR sub_A415_try_to_dec_EnemyAPosXLow  ;
C - - - - - 0x00E9B8 03:A9A8: 4C AE A9  JMP loc_A9AE_continue                  ;

bra_A9AB_left:
C - - - - - 0x00E9BB 03:A9AB: 20 03 A4  JSR sub_A403_try_to_inc_EnemyAPosXLow  ;
loc_A9AE_continue:
C D 1 - - - 0x00E9BE 03:A9AE: A0 10     LDY #$10                               ; prepares the sprite_magic2 (The offset by the address), a damage frame
; In: Register Y - sprite_magic2 (The offset by the address)
bra_A9B0_prepare_rendering:
loc_A9B0_prepare_rendering:
C D 1 - - - 0x00E9C0 03:A9B0: AD 38 03  LDA vEnemyAPosXLow                     ;
C - - - - - 0x00E9C3 03:A9B3: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00E9C5 03:A9B5: AD 3E 03  LDA vEnemyAPosXHigh                    ;
C - - - - - 0x00E9C8 03:A9B8: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x00E9CA 03:A9BA: 20 AC D6  JSR sub_D6AC_out_of_screen             ;
C - - - - - 0x00E9CD 03:A9BD: 20 EF A3  JSR sub_A3EF_boss_on_screen            ;
C - - - - - 0x00E9D0 03:A9C0: 20 24 A5  JSR sub_A524_prepare_rendering_ex      ;
C - - - - - 0x00E9D3 03:A9C3: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E9D6 03:A9C6: 29 30     AND #$30                               ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00E9D8 03:A9C8: D0 3B     BNE bra_AA05_RTS                       ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00E9DA 03:A9CA: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E9DD 03:A9CD: 29 04     AND #$04                               ; CONSTANT - 'throw' status
C - - - - - 0x00E9DF 03:A9CF: F0 13     BEQ bra_A9E4_spin                      ; If 'throw' status isn't activated
C - - - - - 0x00E9E1 03:A9D1: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00E9E4 03:A9D4: C9 20     CMP #$20                               ; CONSTANT - the counter value before appearing the projectile
C - - - - - 0x00E9E6 03:A9D6: B0 0C     BCS bra_A9E4_spin                      ; If vJumpCounter >= 0x20
C - - - - - 0x00E9E8 03:A9D8: A0 00     LDY #$00                               ; the index #1
C - - - - - 0x00E9EA 03:A9DA: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E9ED 03:A9DD: 6A        ROR                                    ;
C - - - - - 0x00E9EE 03:A9DE: 90 1A     BCC bra_A9FA_assign                    ; If the enemy is looking to the right
C - - - - - 0x00E9F0 03:A9E0: A0 04     LDY #$04                               ; the index #2
C - - - - - 0x00E9F2 03:A9E2: D0 16     BNE bra_A9FA_assign                    ; Always true

bra_A9E4_spin:
C - - - - - 0x00E9F4 03:A9E4: A0 00     LDY #$00                               ; the start index #1
C - - - - - 0x00E9F6 03:A9E6: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00E9F9 03:A9E9: 6A        ROR                                    ;
C - - - - - 0x00E9FA 03:A9EA: 90 02     BCC @bra_A9EE_right                    ; If the enemy is looking to the right
C - - - - - 0x00E9FC 03:A9EC: A0 04     LDY #$04                               ; the start index #2
@bra_A9EE_right:
C - - - - - 0x00E9FE 03:A9EE: 84 11     STY vCacheRam_11                       ; <~ 0x00 or 0x04
C - - - - - 0x00EA00 03:A9F0: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00EA02 03:A9F2: 29 0C     AND #$0C                               ;
C - - - - - 0x00EA04 03:A9F4: 4A        LSR                                    ;
C - - - - - 0x00EA05 03:A9F5: 4A        LSR                                    ; A = {0x00, 0x01, 0x02, 0x03} 
C - - - - - 0x00EA06 03:A9F6: 18        CLC                                    ;
C - - - - - 0x00EA07 03:A9F7: 65 11     ADC vCacheRam_11                       ;
C - - - - - 0x00EA09 03:A9F9: A8        TAY                                    ; Y = {0x00, 0x01, ..., 0x07}
bra_A9FA_assign:
C - - - - - 0x00EA0A 03:A9FA: B9 D0 A8  LDA tbl_A8D0_offsets,Y                 ;
C - - - - - 0x00EA0D 03:A9FD: 18        CLC                                    ;
C - - - - - 0x00EA0E 03:A9FE: 69 70     ADC #$70                               ; A + 0x70 ~> sprite_magic2
C - - - - - 0x00EA10 03:AA00: 85 01     STA ram_0001                           ;
C - - - - - 0x00EA12 03:AA02: 4C 33 CE  JMP loc_CE33_add_sprite_magic          ; bank FF

bra_AA05_RTS:
C - - - - - 0x00EA15 03:AA05: 60        RTS                                    ;

loc_AA06_dying:
C - - - - - 0x00EA16 03:AA06: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00EA19 03:AA09: D0 03     BNE @bra_AA0E_dying_render             ; If vJumpCounter != 0x00
C - - - - - 0x00EA1B 03:AA0B: 20 6B A3  JSR sub_A36B_to_cutscene               ;
@bra_AA0E_dying_render:
C - - - - - 0x00EA1E 03:AA0E: A0 14     LDY #$14                               ; prepares the sprite_magic2 (The offset by the address), the dying
C - - - - - 0x00EA20 03:AA10: 4C B0 A9  JMP loc_A9B0_prepare_rendering         ;

sub_AA13_try_to_change_self:
C - - - - - 0x00EA23 03:AA13: AD 4A 03  LDA vEnemyAJumpCounter                 ;
C - - - - - 0x00EA26 03:AA16: F0 0C     BEQ @bra_AA24_skip                     ; If vJumpCounter == 0x00
C - - - - - 0x00EA28 03:AA18: CE 4A 03  DEC vEnemyAJumpCounter                 ;
C - - - - - 0x00EA2B 03:AA1B: D0 24     BNE bra_AA41_RTS                       ; If vJumpCounter != 0x00
C - - - - - 0x00EA2D 03:AA1D: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00EA30 03:AA20: 29 10     AND #$10                               ; CONSTANT - 'get damage' status
C - - - - - 0x00EA32 03:AA22: F0 00     BEQ @bra_AA24_skip                     ; !(WHY?) If 'get damage' status isn't activated
@bra_AA24_skip:
C - - - - - 0x00EA34 03:AA24: AD 20 03  LDA vEnemyAStatus                      ;
C - - - - - 0x00EA37 03:AA27: 29 20     AND #$20                               ; CONSTANT - 'the dying' status
C - - - - - 0x00EA39 03:AA29: D0 16     BNE bra_AA41_RTS                       ; If 'the dying' status is activated
C - - - - - 0x00EA3B 03:AA2B: 20 99 A3  JSR sub_A399_get_status_index          ;
C - - - - - 0x00EA3E 03:AA2E: 20 8C A3  JSR sub_A38C_try_to_change_direction   ;
C - - - - - 0x00EA41 03:AA31: 29 07     AND #$07                               ;
C - - - - - 0x00EA43 03:AA33: 0A        ASL                                    ; *2, because the table has 2 values
C - - - - - 0x00EA44 03:AA34: A8        TAY                                    ; y is {0x00, 0x02, ... , 0x0E}
C - - - - - 0x00EA45 03:AA35: B9 C3 A8  LDA tbl_A8C2_status_and_counter + 1,Y  ;
C - - - - - 0x00EA48 03:AA38: 8D 4A 03  STA vEnemyAJumpCounter                 ; initializes a jump counter
C - - - - - 0x00EA4B 03:AA3B: B9 C2 A8  LDA tbl_A8C2_status_and_counter,Y      ;
C - - - - - 0x00EA4E 03:AA3E: 20 19 A3  JSR sub_A319_change_substatus          ;
bra_AA41_RTS:
C - - - - - 0x00EA51 03:AA41: 60        RTS                                    ;

loc_AA42_triple_projectile:
C D 1 - - - 0x00EA52 03:AA42: A2 03     LDX #$03                     ; the projectile number
C - - - - - 0x00EA54 03:AA44: AD 20 03  LDA vEnemyAStatus1           ; prepare an input parameter
C - - - - - 0x00EA57 03:AA47: 30 0D     BMI bra_AA56_start_loop      ; If the status is used
C - - - - - 0x00EA59 03:AA49: AD 21 03  LDA vEnemyAStatus2           ; prepare an input parameter
C - - - - - 0x00EA5C 03:AA4C: 30 08     BMI bra_AA56_start_loop      ; If the status is used
C - - - - - 0x00EA5E 03:AA4E: 60        RTS                          ;

loc_AA4F_projectile:
C D 1 - - - 0x00EA5F 03:AA4F: AD 20 03  LDA vEnemyAStatus                  ;
C - - - - - 0x00EA62 03:AA52: 10 ED     BPL bra_AA41_RTS                   ; If the enemy status isn't used
C - - - - - 0x00EA64 03:AA54: A2 02     LDX #$02                           ;
; In: Register A - the enemyA number
bra_AA56_start_loop:
C - - - - - 0x00EA66 03:AA56: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyB number)
bra_AA58_loop:
C - - - - - 0x00EA68 03:AA58: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x00EA6A 03:AA5A: 20 04 AB  JSR sub_AB04_status_behavior       ;
C - - - - - 0x00EA6D 03:AA5D: AD 50 03  LDA vEnemyAHealthPoints            ;
C - - - - - 0x00EA70 03:AA60: F0 1E     BEQ @bra_AA80_next                 ; If HPoints == 0x00
C - - - - - 0x00EA72 03:AA62: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x00EA75 03:AA65: 10 19     BPL @bra_AA80_next                 ; If the status isn't used
C - - - - - 0x00EA77 03:AA67: 29 20     AND #$20                           ; CONSTANT - 'the dying'
C - - - - - 0x00EA79 03:AA69: D0 15     BNE @bra_AA80_next                 ; If 'the dying' status is activated
C - - - - - 0x00EA7B 03:AA6B: BD 68 03  LDA vEnemyBPosY,X                  ;
C - - - - - 0x00EA7E 03:AA6E: 85 AD     STA vEnemyHitBoxY                  ; <~ enemyB posY
C - - - - - 0x00EA80 03:AA70: BD 6E 03  LDA vEnemyBScreenPosX,X            ;
C - - - - - 0x00EA83 03:AA73: 85 AE     STA vEnemyHitBoxX                  ; <~ enemyB screen posX
C - - - - - 0x00EA85 03:AA75: A9 08     LDA #$08                           ;
C - - - - - 0x00EA87 03:AA77: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x00EA89 03:AA79: A9 04     LDA #$04                           ;
C - - - - - 0x00EA8B 03:AA7B: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x00EA8D 03:AA7D: 20 62 D5  JSR sub_D562_has_character_damage  ;
@bra_AA80_next:
C - - - - - 0x00EA90 03:AA80: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x00EA92 03:AA82: 10 D4     BPL bra_AA58_loop                  ; If vTempCounter1A >= 0x00
C - - - - - 0x00EA94 03:AA84: 60        RTS                                ;

; Out: Register X - a projectile number (if it is found)
sub_AA85_find_not_used_projectile:
C - - - - - 0x00EA95 03:AA85: A2 02     LDX #$02                          ; set loop counter
@bra_AA87_loop:                                                           ; loop by x
C - - - - - 0x00EA97 03:AA87: BD 5C 03  LDA vEnemyBStatus,X               ;
C - - - - - 0x00EA9A 03:AA8A: 10 07     BPL bra_AA93_RTS                  ; If the status isn't used
C - - - - - 0x00EA9C 03:AA8C: CA        DEX                               ; decrement loop counter
C - - - - - 0x00EA9D 03:AA8D: 10 F8     BPL @bra_AA87_loop                ; If Register X >= 0x00
C - - - - - 0x00EA9F 03:AA8F: 68        PLA                               ; 
C - - - - - 0x00EAA0 03:AA90: 68        PLA                               ; return from sub_AADA or sub_AB04
C - - - - - 0x00EAA1 03:AA91: 68        PLA                               ; 
C - - - - - 0x00EAA2 03:AA92: AA        TAX                               ; retrieve x (see $AABC or $AADB)
bra_AA93_RTS:
C - - - - - 0x00EAA3 03:AA93: 60        RTS                               ;

; In: $0000 - a projectile status
sub_AA94_shot_projectile:
C - - - - - 0x00EAA4 03:AA94: A0 08     LDY #$08                         ; the offset by posX (+8)
C - - - - - 0x00EAA6 03:AA96: AD 20 03  LDA vEnemyAStatus                ;
C - - - - - 0x00EAA9 03:AA99: 29 01     AND #$01                         ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00EAAB 03:AA9B: F0 02     BEQ @bra_AA9F_right              ; If the enemy is looking to the right
C - - - - - 0x00EAAD 03:AA9D: A0 F8     LDY #$F8                         ; the offset by posX (-8)
@bra_AA9F_right:
C - - - - - 0x00EAAF 03:AA9F: 05 00     ORA ram_0000                     ;
C - - - - - 0x00EAB1 03:AAA1: 9D 5C 03  STA vEnemyBStatus,X              ; <~ 0xC0, 0xC1, 0xC2 or 0xC3
C - - - - - 0x00EAB4 03:AAA4: 98        TYA                              ;
C - - - - - 0x00EAB5 03:AAA5: 18        CLC                              ;
C - - - - - 0x00EAB6 03:AAA6: 6D 38 03  ADC vEnemyAPosXLow               ;
C - - - - - 0x00EAB9 03:AAA9: 9D 74 03  STA vEnemyBPosXLow,X             ; <~ enemyA posX + offset
C - - - - - 0x00EABC 03:AAAC: A9 00     LDA #$00                         ;
C - - - - - 0x00EABE 03:AAAE: 9D 7A 03  STA vEnemyBPosXHigh,X            ; the room has one screen
C - - - - - 0x00EAC1 03:AAB1: A9 98     LDA #$98                         ;
C - - - - - 0x00EAC3 03:AAB3: 9D 68 03  STA vEnemyBPosY,X                ; Initializes a Y-position of the projectile
C - - - - - 0x00EAC6 03:AAB6: A9 3D     LDA #$3D                         ; CONSTANT - sound of a shot
C - - - - - 0x00EAC8 03:AAB8: 4C 20 C4  JMP loc_C420_add_sound_effect    ; bank FF

sub_AABB_throw_along_parabola:
C - - - - - 0x00EACB 03:AABB: 8A        TXA                                   ;
C - - - - - 0x00EACC 03:AABC: 48        PHA                                   ; store x
C - - - - - 0x00EACD 03:AABD: 20 85 AA  JSR sub_AA85_find_not_used_projectile ;
C - - - - - 0x00EAD0 03:AAC0: A9 C2     LDA #$C2                              ; CONSTANT - start status + 'parabola' status
C - - - - - 0x00EAD2 03:AAC2: 85 00     STA ram_0000                          ; prepares an input parameter
C - - - - - 0x00EAD4 03:AAC4: 20 94 AA  JSR sub_AA94_shot_projectile          ;
C - - - - - 0x00EAD7 03:AAC7: A9 10     LDA #$10                              ; Initializes a jump counter
C - - - - - 0x00EAD9 03:AAC9: 9D 86 03  STA vEnemyBJumpCounter,X              ;
C - - - - - 0x00EADC 03:AACC: 20 64 D0  JSR sub_D064_generate_rng             ;
C - - - - - 0x00EADF 03:AACF: 29 03     AND #$03                              ;
C - - - - - 0x00EAE1 03:AAD1: 18        CLC                                   ;
C - - - - - 0x00EAE2 03:AAD2: 69 01     ADC #$01                              ; A <~ 0x01, 0x02, 0x03 or 0x04
C - - - - - 0x00EAE4 03:AAD4: 9D 62 03  STA vEnemyBThrowingDirection,X        ;
C - - - - - 0x00EAE7 03:AAD7: 68        PLA                                   ;
C - - - - - 0x00EAE8 03:AAD8: AA        TAX                                   ; retrieve x (see $AABC)
C - - - - - 0x00EAE9 03:AAD9: 60        RTS                                   ;

sub_AADA_throw:
C - - - - - 0x00EAEA 03:AADA: 8A        TXA                                   ;
C - - - - - 0x00EAEB 03:AADB: 48        PHA                                   ; store x
C - - - - - 0x00EAEC 03:AADC: 20 85 AA  JSR sub_AA85_find_not_used_projectile ;
C - - - - - 0x00EAEF 03:AADF: A9 C0     LDA #$C0                              ; CONSTANT - start status
C - - - - - 0x00EAF1 03:AAE1: 85 00     STA ram_0000                          ; prepares an input parameter
C - - - - - 0x00EAF3 03:AAE3: 20 94 AA  JSR sub_AA94_shot_projectile          ;
C - - - - - 0x00EAF6 03:AAE6: A9 40     LDA #$40                              ; Initializes a jump counter
C - - - - - 0x00EAF8 03:AAE8: 9D 86 03  STA vEnemyBJumpCounter,X              ;
C - - - - - 0x00EAFB 03:AAEB: 20 64 D0  JSR sub_D064_generate_rng             ;
C - - - - - 0x00EAFE 03:AAEE: 29 03     AND #$03                              ;
C - - - - - 0x00EB00 03:AAF0: A8        TAY                                   ; Y <~ 0x00, 0x01, 0x02 or 0x03
C - - - - - 0x00EB01 03:AAF1: AD 20 03  LDA vEnemyAStatus                     ;
C - - - - - 0x00EB04 03:AAF4: 6A        ROR                                   ;
C - - - - - 0x00EB05 03:AAF5: 90 04     BCC @bra_AAFB_right                   ; If the enemy is looking to the right
C - - - - - 0x00EB07 03:AAF7: C8        INY                                   ;
C - - - - - 0x00EB08 03:AAF8: C8        INY                                   ;
C - - - - - 0x00EB09 03:AAF9: C8        INY                                   ;
C - - - - - 0x00EB0A 03:AAFA: C8        INY                                   ; Y <~ 0x04, 0x05, 0x06 or 0x07
@bra_AAFB_right:
C - - - - - 0x00EB0B 03:AAFB: B9 D8 A8  LDA tbl_A8D8_direction,Y              ;
C - - - - - 0x00EB0E 03:AAFE: 9D 62 03  STA vEnemyBThrowingDirection,X        ;
C - - - - - 0x00EB11 03:AB01: 68        PLA                                   ;
C - - - - - 0x00EB12 03:AB02: AA        TAX                                   ; retrieve x (see $AADB)
bra_AB03_RTS:
C - - - - - 0x00EB13 03:AB03: 60        RTS                                   ;

; In: Register X - the projectile number
sub_AB04_status_behavior:
C - - - - - 0x00EB14 03:AB04: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00EB17 03:AB07: 10 FA     BPL bra_AB03_RTS                       ; If the status isn't used
C - - - - - 0x00EB19 03:AB09: 29 22     AND #$22                               ; CONSTANT - 'the dying' + 'parabola' status
C - - - - - 0x00EB1B 03:AB0B: C9 20     CMP #$20                               ; CONSTANT - 'the dying' status
C - - - - - 0x00EB1D 03:AB0D: F0 1E     BEQ bra_AB2D_prepare_rendering_ex      ; If 'the dying' status is activated
C - - - - - 0x00EB1F 03:AB0F: C9 02     CMP #$02                               ; CONSTANT - 'parabola' status
C - - - - - 0x00EB21 03:AB11: D0 06     BNE bra_AB19_direct_flying             ; If 'parabola' status isn't activated
C - - - - - 0x00EB23 03:AB13: 20 66 AB  JSR sub_AB66_try_to_move_projectile    ;
C - - - - - 0x00EB26 03:AB16: 4C 2D AB  JMP loc_AB2D_prepare_rendering_ex      ;

bra_AB19_direct_flying:
C - - - - - 0x00EB29 03:AB19: 20 6C A5  JSR sub_A56C_resolve_throwing_position ;
C - - - - - 0x00EB2C 03:AB1C: BD 68 03  LDA vEnemyBPosY,X                      ;
C - - - - - 0x00EB2F 03:AB1F: C9 F8     CMP #$F8                               ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x00EB31 03:AB21: 90 03     BCC bra_AB26_skip                      ; If posY < 0xF8
C - - - - - 0x00EB33 03:AB23: 4C 73 D8  JMP loc_D873_free_enemyB               ;

bra_AB26_skip:
C - - - - - 0x00EB36 03:AB26: C9 BF     CMP #$BF                               ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00EB38 03:AB28: 90 03     BCC bra_AB2D_prepare_rendering_ex      ; If pos Y < 0xBF
C - - - - - 0x00EB3A 03:AB2A: 20 9E AB  JSR sub_AB9E_start_explode             ;
; In: Register Y - sprite_magic2 (The offset by the address)
bra_AB2D_prepare_rendering_ex:
loc_AB2D_prepare_rendering_ex:
C D 1 - - - 0x00EB3D 03:AB2D: BD 74 03  LDA vEnemyBPosXLow,X                 ;
C - - - - - 0x00EB40 03:AB30: 85 00     STA ram_0000                         ; prepares the 1st parameter
C - - - - - 0x00EB42 03:AB32: BD 7A 03  LDA vEnemyBPosXHigh,X                ;
C - - - - - 0x00EB45 03:AB35: 85 01     STA ram_0001                         ; prepares the 2nd parameter
C - - - - - 0x00EB47 03:AB37: 20 AC D6  JSR sub_D6AC_out_of_screen           ;
C - - - - - 0x00EB4A 03:AB3A: 90 03     BCC bra_AB3F_skip                    ; If the enemy is on the screen
C - - - - - 0x00EB4C 03:AB3C: 4C 73 D8  JMP loc_D873_free_enemyB             ;

; In: Register X - the projectile number
bra_AB3F_skip:
C - - - - - 0x00EB4F 03:AB3F: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x00EB52 03:AB42: 85 00     STA ram_0000                         ; ~> sprite magic1
C - - - - - 0x00EB54 03:AB44: A5 03     LDA ram_0003                         ; from sub_D6AC_out_of_screen
C - - - - - 0x00EB56 03:AB46: 9D 6E 03  STA vEnemyBScreenPosX,X              ;
C - - - - - 0x00EB59 03:AB49: BD 5C 03  LDA vEnemyBStatus,X                  ;
C - - - - - 0x00EB5C 03:AB4C: 29 20     AND #$20                             ; CONSTANT - 'the dying' status
C - - - - - 0x00EB5E 03:AB4E: D0 63     BNE bra_ABB3_dying                   ; If 'the dying' status is activated
C - - - - - 0x00EB60 03:AB50: A0 20     LDY #$20                             ; the sprite_magic2 offset value #1
C - - - - - 0x00EB62 03:AB52: AD 00 03  LDA vEnemyA                          ;
C - - - - - 0x00EB65 03:AB55: C9 2E     CMP #$2E                             ; CONSTANT - Boss4
C - - - - - 0x00EB67 03:AB57: D0 02     BNE @bra_AB5B_skip                   ; If EnemyA != 0x2E
C - - - - - 0x00EB69 03:AB59: A0 40     LDY #$40                             ; the sprite_magic2 offset value #2
@bra_AB5B_skip:
C - - - - - 0x00EB6B 03:AB5B: A5 2C     LDA vLowCounter                      ;
C - - - - - 0x00EB6D 03:AB5D: 29 02     AND #$02                             ;
C - - - - - 0x00EB6F 03:AB5F: D0 02     BNE @bra_AB63_skip                   ; Branch every 2 times after 2
C - - - - - 0x00EB71 03:AB61: C8        INY                                  ;
C - - - - - 0x00EB72 03:AB62: C8        INY                                  ; next frame, flashing effect
@bra_AB63_skip:
C - - - - - 0x00EB73 03:AB63: 4C 24 A5  JMP loc_A524_prepare_rendering_ex    ;

; In: Register X - the projectile number
sub_AB66_try_to_move_projectile:
C - - - - - 0x00EB76 03:AB66: BD 5C 03  LDA vEnemyBStatus,X                  ;
C - - - - - 0x00EB79 03:AB69: 6A        ROR                                  ;
C - - - - - 0x00EB7A 03:AB6A: 90 06     BCC bra_AB72_right                   ; If the projectile is looking to the right
C - - - - - 0x00EB7C 03:AB6C: 20 32 A5  JSR sub_A532_dec_throwing_positionX  ;
C - - - - - 0x00EB7F 03:AB6F: 4C 75 AB  JMP loc_AB75_continue                ;

bra_AB72_right:
C - - - - - 0x00EB82 03:AB72: 20 47 A5  JSR sub_A547_inc_throwing_positionX  ;
loc_AB75_continue:
C D 1 - - - 0x00EB85 03:AB75: BC 86 03  LDY vEnemyBJumpCounter,X             ;
C - - - - - 0x00EB88 03:AB78: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y      ; Y = [0x00-0x2F]
C - - - - - 0x00EB8B 03:AB7B: 18        CLC                                  ;
C - - - - - 0x00EB8C 03:AB7C: 7D 68 03  ADC vEnemyBPosY,X                    ;
C - - - - - 0x00EB8F 03:AB7F: 9D 68 03  STA vEnemyBPosY,X                    ; Resolves a new throw Y-position
C - - - - - 0x00EB92 03:AB82: BD 86 03  LDA vEnemyBJumpCounter,X             ;
C - - - - - 0x00EB95 03:AB85: C9 18     CMP #$18                             ; CONSTANT - a maximum amplitude
C - - - - - 0x00EB97 03:AB87: 90 07     BCC @bra_AB90_inc                    ; If JumpCounter < 0x18
C - - - - - 0x00EB99 03:AB89: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x00EB9C 03:AB8C: C9 BF     CMP #$BF                             ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00EB9E 03:AB8E: B0 0E     BCS bra_AB9E_start_explode           ; If vEnemyBPosY >= 0xBF
@bra_AB90_inc:
C - - - - - 0x00EBA0 03:AB90: FE 86 03  INC vEnemyBJumpCounter,X             ;
C - - - - - 0x00EBA3 03:AB93: A9 2F     LDA #$2F                             ; CONSTANT - a maximum jump value
C - - - - - 0x00EBA5 03:AB95: DD 86 03  CMP vEnemyBJumpCounter,X             ;
C - - - - - 0x00EBA8 03:AB98: B0 03     BCS bra_AB9D_RTS                     ; If vJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x00EBAA 03:AB9A: 9D 86 03  STA vEnemyBJumpCounter,X             ; assign max value
bra_AB9D_RTS:
C - - - - - 0x00EBAD 03:AB9D: 60        RTS                                  ;

bra_AB9E_start_explode:
sub_AB9E_start_explode:
C - - - - - 0x00EBAE 03:AB9E: A9 0C     LDA #$0C                      ;
C - - - - - 0x00EBB0 03:ABA0: 9D 86 03  STA vEnemyBJumpCounter,X      ; initializes a jump counter for the explode
C - - - - - 0x00EBB3 03:ABA3: BD 5C 03  LDA vEnemyBStatus,X           ;
C - - - - - 0x00EBB6 03:ABA6: 29 C1     AND #$C1                      ; clear substate
C - - - - - 0x00EBB8 03:ABA8: 09 20     ORA #$20                      ; CONSTANT - 'the dying' status
C - - - - - 0x00EBBA 03:ABAA: 9D 5C 03  STA vEnemyBStatus,X           ;
C - - - - - 0x00EBBD 03:ABAD: A9 0F     LDA #$0F                      ; CONSTANT - the exploding sound
C - - - - - 0x00EBBF 03:ABAF: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
C - - - - - 0x00EBC2 03:ABB2: 60        RTS                           ;

bra_ABB3_dying:
C - - - - - 0x00EBC3 03:ABB3: DE 86 03  DEC vEnemyBJumpCounter,X      ; updates a counter
C - - - - - 0x00EBC6 03:ABB6: D0 03     BNE bra_ABBB_skip             ; If vJumpCounter != 0x00
C - - - - - 0x00EBC8 03:ABB8: 4C 73 D8  JMP loc_D873_free_enemyB      ;

bra_ABBB_skip:
C - - - - - 0x00EBCB 03:ABBB: BD 86 03  LDA vEnemyBJumpCounter,X                  ; A <~ the counter value (see sub_DA28)
C - - - - - 0x00EBCE 03:ABBE: A0 0A     LDY #$0A                                  ; Y <- a start index (see sub_DA28)
C - - - - - 0x00EBD0 03:ABC0: 20 28 DA  JSR sub_DA28_get_explode_sprite_magic2    ;
C - - - - - 0x00EBD3 03:ABC3: 4C 7C DA  JMP loc_DA7C_add_sprite_magic_in_05_p1    ;

; offset index
- D 1 - I - 0x00EBD6 03:ABC6: 05        .byte $05, $04, $03, $01, $00, $0F, $0D, $0C   ; 
- D 1 - I - 0x00EBDE 03:ABCE: 0B        .byte $0B, $0C, $0D, $0F, $00, $01, $03, $04   ; 

; jump counters
- D 1 - I - 0x00EBE6 03:ABD6: 44        .byte $44, $04, $04, $04, $06, $04, $04, $04   ; 
- D 1 - I - 0x00EBEE 03:ABDE: 44        .byte $44, $04, $04, $04, $06, $04, $04, $04   ; 

tbl_ABE6_sprites:
- D 1 - - - 0x00EBF6 03:ABE6: 34        .byte $34, $0C, $2C, $14   ; 
- D 1 - - - 0x00EBFA 03:ABEA: 34        .byte $34, $08, $2C, $14   ; 
- D 1 - - - 0x00EBFE 03:ABEE: 34        .byte $34, $04, $2C, $14   ; 
- D 1 - - - 0x00EC02 03:ABF2: 34        .byte $34, $00, $2C, $14   ; 
- D 1 - - - 0x00EC06 03:ABF6: 34        .byte $34, $00, $2C, $18   ; 
- D 1 - - - 0x00EC0A 03:ABFA: 34        .byte $34, $00, $2C, $1C   ; 
- D 1 - - - 0x00EC0E 03:ABFE: 34        .byte $34, $00, $20, $14   ; 
- D 1 - - - 0x00EC12 03:AC02: 34        .byte $34, $00, $24, $14   ; 
- D 1 - - - 0x00EC16 03:AC06: 34        .byte $34, $00, $28, $14   ; 
- D - - - - 0x00EC1A 03:AC0A: FF        .byte $FF, $00, $30, $1C   ; 
- D - - - - 0x00EC1E 03:AC0E: FF        .byte $FF, $00, $30, $18   ; 
- D - - - - 0x00EC22 03:AC12: FF        .byte $FF, $00, $30, $14   ; 
- D 1 - - - 0x00EC26 03:AC16: 34        .byte $34, $10, $2C, $14   ; 
- D 1 - - - 0x00EC2A 03:AC1A: 38        .byte $38, $10, $2C, $14   ; 
- D 1 - - - 0x00EC2E 03:AC1E: 3C        .byte $3C, $10, $2C, $14   ; 
- D 1 - - - 0x00EC32 03:AC22: FF        .byte $FF, $44, $FF, $FF   ; 
- D 1 - - - 0x00EC36 03:AC26: FF        .byte $FF, $48, $FF, $FF   ; 
- D 1 - - - 0x00EC3A 03:AC2A: FF        .byte $FF, $4C, $FF, $FF   ; 
- D 1 - - - 0x00EC3E 03:AC2E: FF        .byte $FF, $50, $FF, $FF   ; 

tbl_AC32_offset_by_posY:
- D 1 - - - 0x00EC42 03:AC32: 0C        .byte $0C, $00, $0C, $0C   ; 
- D 1 - - - 0x00EC46 03:AC36: 08        .byte $08, $00, $08, $08   ; 
- D 1 - - - 0x00EC4A 03:AC3A: 04        .byte $04, $00, $04, $04   ; 
- D 1 - - - 0x00EC4E 03:AC3E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC52 03:AC42: FF        .byte $FF, $FF, $FF, $FF   ; 
- D 1 - - - 0x00EC56 03:AC46: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC5A 03:AC4A: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC5E 03:AC4E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC62 03:AC52: 00        .byte $00, $00, $00, $00   ; 
- D - - - - 0x00EC66 03:AC56: 00        .byte $00, $00, $00, $00   ; 
- D - - - - 0x00EC6A 03:AC5A: 00        .byte $00, $00, $00, $00   ; 
- D - - - - 0x00EC6E 03:AC5E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC72 03:AC62: 04        .byte $04, $00, $04, $04   ; 
- D 1 - - - 0x00EC76 03:AC66: 04        .byte $04, $00, $04, $04   ; 
- D 1 - - - 0x00EC7A 03:AC6A: 04        .byte $04, $00, $04, $04   ; 
- D 1 - - - 0x00EC7E 03:AC6E: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC82 03:AC72: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC86 03:AC76: 00        .byte $00, $00, $00, $00   ; 
- D 1 - - - 0x00EC8A 03:AC7A: 00        .byte $00, $00, $00, $00   ; 

tbl_AC7E_hitboxes:
- D 1 - - - 0x00EC8E 03:AC7E: 00        .byte $00, $00, $2C, $04
- D 1 - - - 0x00EC92 03:AC82: 00        .byte $00, $08, $30, $08   ; with sword, right
- D 1 - - - 0x00EC96 03:AC86: 00        .byte $00, $F8, $30, $08   ; with sword, left
- D 1 - - - 0x00EC9A 03:AC8A: EC        .byte $EC, $08, $10, $04   ; the shield, right
- D 1 - - - 0x00EC9E 03:AC8E: EC        .byte $EC, $F8, $10, $04   ; the shield, left

loc_AC92_boss:
C D 1 - - - 0x00ECA2 03:AC92: A2 01     LDX #$01                          ;
C - - - - - 0x00ECA4 03:AC94: 86 1A     STX vTempCounter1A                ; set loop counter (the enemyA number)
bra_AC96_loop:                                                            ; loop by vTempCounter1A
C - - - - - 0x00ECA6 03:AC96: A6 1A     LDX vTempCounter1A                ; prepares the input parameter
C - - - - - 0x00ECA8 03:AC98: 20 70 AD  JSR sub_AD70_status_behavior      ;
C - - - - - 0x00ECAB 03:AC9B: A6 1A     LDX vTempCounter1A                ;
C - - - - - 0x00ECAD 03:AC9D: BD 50 03  LDA vEnemyAHealthPoints,X         ;
C - - - - - 0x00ECB0 03:ACA0: F0 4B     BEQ bra_ACED_next                 ; If HPoints == 0x00
C - - - - - 0x00ECB2 03:ACA2: A0 00     LDY #$00                          ; prepares the input parameter
C - - - - - 0x00ECB4 03:ACA4: 20 53 AD  JSR sub_AD53_prepare_hitbox       ;
C - - - - - 0x00ECB7 03:ACA7: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x00ECBA 03:ACAA: 90 06     BCC bra_ACB2_no_bomb_hit          ; If the bomb isn't exploding
C - - - - - 0x00ECBC 03:ACAC: 20 FE AC  JSR sub_ACFE_hit                  ;
C - - - - - 0x00ECBF 03:ACAF: 4C ED AC  JMP loc_ACED_next                 ;

bra_ACB2_no_bomb_hit:
C - - - - - 0x00ECC2 03:ACB2: A5 5F     LDA vChrLiveStatus                ;
C - - - - - 0x00ECC4 03:ACB4: 29 02     AND #$02                          ; CONSTANT - Goemon
C - - - - - 0x00ECC6 03:ACB6: F0 0B     BEQ bra_ACC3_check_bullets        ; If the character isn't Goemon
C - - - - - 0x00ECC8 03:ACB8: 20 06 D6  JSR sub_D606_have_intersect_sword ;
C - - - - - 0x00ECCB 03:ACBB: 90 28     BCC bra_ACE5_skip                 ; If the intersect doesn't exist
C - - - - - 0x00ECCD 03:ACBD: 20 FE AC  JSR sub_ACFE_hit                  ;
C - - - - - 0x00ECD0 03:ACC0: 4C ED AC  JMP loc_ACED_next                 ;

bra_ACC3_check_bullets:
C - - - - - 0x00ECD3 03:ACC3: A6 7A     LDX vBulletCount                        ; set loop counter
@bra_ACC5_loop:                                                                 ; loop by x
C - - - - - 0x00ECD5 03:ACC5: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet      ;
C - - - - - 0x00ECD8 03:ACC8: B0 2A     BCS bra_ACF4_bullet_hit                 ; If the intersect is exist
C - - - - - 0x00ECDA 03:ACCA: CA        DEX                                     ; decrement loop counter
C - - - - - 0x00ECDB 03:ACCB: 10 F8     BPL @bra_ACC5_loop                      ; If Register X >= 0x00
C - - - - - 0x00ECDD 03:ACCD: A6 1A     LDX vTempCounter1A                      ; prepares the input parameter
C - - - - - 0x00ECDF 03:ACCF: 20 34 AD  JSR sub_AD34_prepare_hitbox_shield      ;
C - - - - - 0x00ECE2 03:ACD2: A6 7A     LDX vBulletCount                        ; set loop counter
@bra_ACD4_loop:                                                                 ; loop by x
C - - - - - 0x00ECE4 03:ACD4: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet      ;
C - - - - - 0x00ECE7 03:ACD7: 90 09     BCC @bra_ACE2_next                      ; If the intersect isn't exist
C - - - - - 0x00ECE9 03:ACD9: A9 10     LDA #$10                                ; The sound of a bullet hitting an armored enemy
C - - - - - 0x00ECEB 03:ACDB: 20 20 C4  JSR sub_C420_add_sound_effect           ; bank FF
C - - - - - 0x00ECEE 03:ACDE: A9 00     LDA #$00                                ;
C - - - - - 0x00ECF0 03:ACE0: 95 8F     STA vBulletStatus,X                     ; clear
@bra_ACE2_next:
C - - - - - 0x00ECF2 03:ACE2: CA        DEX                                     ; decrement loop counter
C - - - - - 0x00ECF3 03:ACE3: 10 EF     BPL @bra_ACD4_loop                      ; If Register X >= 0x00
bra_ACE5_skip:
C - - - - - 0x00ECF5 03:ACE5: A6 1A     LDX vTempCounter1A                      ; prepares the input parameter
C - - - - - 0x00ECF7 03:ACE7: 20 40 AD  JSR sub_AD40_prepare_hitbox_with_sword  ;
C - - - - - 0x00ECFA 03:ACEA: 20 62 D5  JSR sub_D562_has_character_damage       ;
bra_ACED_next:
loc_ACED_next:
C D 1 - - - 0x00ECFD 03:ACED: C6 1A     DEC vTempCounter1A                      ; decrements loop counter
C - - - - - 0x00ECFF 03:ACEF: 10 A5     BPL bra_AC96_loop                       ; If vTempCounter1A >= 0x00
C - - - - - 0x00ED01 03:ACF1: 4C 42 AA  JMP loc_AA42_triple_projectile          ;

bra_ACF4_bullet_hit:
C - - - - - 0x00ED04 03:ACF4: A9 00     LDA #$00                           ;
C - - - - - 0x00ED06 03:ACF6: 95 8F     STA vBulletStatus,X                ; clear
C - - - - - 0x00ED08 03:ACF8: 20 FE AC  JSR sub_ACFE_hit                   ;
C - - - - - 0x00ED0B 03:ACFB: 4C ED AC  JMP loc_ACED_next                  ;

sub_ACFE_hit:
C - - - - - 0x00ED0E 03:ACFE: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x00ED10 03:AD00: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x00ED13 03:AD03: 29 30     AND #$30                           ; CONSTANT - 'dying' + 'get damage' status
C - - - - - 0x00ED15 03:AD05: D0 68     BNE bra_AD6F_RTS                   ; If 'dying' or 'get damage' status is activated
C - - - - - 0x00ED17 03:AD07: 20 5B A3  JSR sub_A35B_get_damage_points     ;
bra_AD0A_repeat:
C - - - - - 0x00ED1A 03:AD0A: DE 50 03  DEC vEnemyAHealthPoints,X          ;
C - - - - - 0x00ED1D 03:AD0D: D0 03     BNE bra_AD12_skip                  ; If HPoints != 0x00
C - - - - - 0x00ED1F 03:AD0F: 4C 25 AD  JMP loc_AD25_final_hit             ;

bra_AD12_skip:
C - - - - - 0x00ED22 03:AD12: 88        DEY                                ;
C - - - - - 0x00ED23 03:AD13: D0 F5     BNE bra_AD0A_repeat                ; If Register Y != 0x00
C - - - - - 0x00ED25 03:AD15: A9 10     LDA #$10                           ; CONSTANT - 'get damage' status
C - - - - - 0x00ED27 03:AD17: 20 19 A3  JSR sub_A319_change_substatus      ;
C - - - - - 0x00ED2A 03:AD1A: A9 20     LDA #$20                           ; CONSTANT - The sub counter value for the destroying in air
C - - - - - 0x00ED2C 03:AD1C: 9D 44 03  STA vEnemyASpecSubCounter,X        ;
C - - - - - 0x00ED2F 03:AD1F: 20 A9 AF  JSR sub_AFA9_throw                 ;
C - - - - - 0x00ED32 03:AD22: 4C 78 A1  JMP loc_A178_get_damage            ;

loc_AD25_final_hit:
C D 1 - - - 0x00ED35 03:AD25: A9 30     LDA #$30                           ; the sound of something huge falling
C - - - - - 0x00ED37 03:AD27: 20 20 C4  JSR sub_C420_add_sound_effect      ; bank FF
C - - - - - 0x00ED3A 03:AD2A: A9 40     LDA #$40                           ; CONSTANT - the time of 'dying in air'
C - - - - - 0x00ED3C 03:AD2C: 9D 4A 03  STA vEnemyAJumpCounter,X           ; Initializes a jump counter
C - - - - - 0x00ED3F 03:AD2F: A9 02     LDA #$02                           ; CONSTANT - 'falling' status
C - - - - - 0x00ED41 03:AD31: 4C 19 A3  JMP loc_A319_change_substatus      ;

; In: Register X - the enemyA number
sub_AD34_prepare_hitbox_shield:
C - - - - - 0x00ED44 03:AD34: A0 0C     LDY #$0C                     ; the offset value #4
C - - - - - 0x00ED46 03:AD36: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00ED49 03:AD39: 6A        ROR                          ;
C - - - - - 0x00ED4A 03:AD3A: 90 17     BCC bra_AD53_assign          ; If the enemy is looking to the right
C - - - - - 0x00ED4C 03:AD3C: A0 10     LDY #$10                     ; the offset value #5
C - - - - - 0x00ED4E 03:AD3E: D0 13     BNE bra_AD53_assign          ; Always true

; In: Register X - the enemyA number
sub_AD40_prepare_hitbox_with_sword:
C - - - - - 0x00ED50 03:AD40: A0 00     LDY #$00                     ; the offset value #1
C - - - - - 0x00ED52 03:AD42: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00ED55 03:AD45: 29 04     AND #$04                     ; CONSTANT - 'sword strike' status
C - - - - - 0x00ED57 03:AD47: F0 0A     BEQ bra_AD53_assign          ; If 'sword strike' status isn't activated
C - - - - - 0x00ED59 03:AD49: A0 04     LDY #$04                     ; the offset value #2
C - - - - - 0x00ED5B 03:AD4B: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00ED5E 03:AD4E: 6A        ROR                          ;
C - - - - - 0x00ED5F 03:AD4F: 90 02     BCC bra_AD53_assign          ; If the enemy is looking to the right
C - - - - - 0x00ED61 03:AD51: A0 08     LDY #$08                     ; the offset value #3
; In: Register X - the enemyA number
; In: Register Y - the table offset
sub_AD53_prepare_hitbox:
bra_AD53_assign:
C - - - - - 0x00ED63 03:AD53: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x00ED66 03:AD56: 18        CLC                          ;
C - - - - - 0x00ED67 03:AD57: 79 7E AC  ADC tbl_AC7E_hitboxes,Y      ;
C - - - - - 0x00ED6A 03:AD5A: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x00ED6C 03:AD5C: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x00ED6F 03:AD5F: 18        CLC                          ;
C - - - - - 0x00ED70 03:AD60: 79 7F AC  ADC tbl_AC7E_hitboxes + 1,Y  ;
C - - - - - 0x00ED73 03:AD63: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x00ED75 03:AD65: B9 80 AC  LDA tbl_AC7E_hitboxes + 2,Y  ;
C - - - - - 0x00ED78 03:AD68: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x00ED7A 03:AD6A: B9 81 AC  LDA tbl_AC7E_hitboxes + 3,Y  ;
C - - - - - 0x00ED7D 03:AD6D: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_AD6F_RTS:
C - - - - - 0x00ED7F 03:AD6F: 60        RTS                          ;

; In: Register X - the enemyA number
sub_AD70_status_behavior:
C - - - - - 0x00ED80 03:AD70: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00ED83 03:AD73: 10 FA     BPL bra_AD6F_RTS                          ; If the status isn't used
C - - - - - 0x00ED85 03:AD75: BD 44 03  LDA vEnemyASpecSubCounter,X               ;
C - - - - - 0x00ED88 03:AD78: F0 03     BEQ @bra_AD7D_skip                        ; If vSubCounter == 0x00
C - - - - - 0x00ED8A 03:AD7A: DE 44 03  DEC vEnemyASpecSubCounter,X               ;
@bra_AD7D_skip:
C - - - - - 0x00ED8D 03:AD7D: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00ED90 03:AD80: 4A        LSR                                       ;
C - - - - - 0x00ED91 03:AD81: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00ED94 03:AD84: 91 AD     .word loc_AD92_falling - 1      ; 0x02
- D 1 - I - 0x00ED96 03:AD86: ED AD     .word loc_ADEE_sword_strike - 1 ; 0x04
- D 1 - I - 0x00ED98 03:AD88: 03 AE     .word loc_AE04_waiting - 1      ; 0x08
- D 1 - I - 0x00ED9A 03:AD8A: 2B AE     .word loc_AE2C_get_damage - 1   ; 0x10
- D 1 - I - 0x00ED9C 03:AD8C: 86 AE     .word loc_AE87_dying - 1        ; 0x20
- D - - - - 0x00ED9E 03:AD8E: D5 AD     .word loc_ADD6_main - 1         ; 0x40
- D 1 - I - 0x00EDA0 03:AD90: D5 AD     .word loc_ADD6_main - 1         ; 0x80

; In: Register X - the enemyA number
loc_AD92_falling:
C - - - - - 0x00EDA2 03:AD92: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00EDA5 03:AD95: F0 17     BEQ bra_ADAE_skip                 ; If vJumpCounter == 0x00
C - - - - - 0x00EDA7 03:AD97: DE 4A 03  DEC vEnemyAJumpCounter,X          ;
C - - - - - 0x00EDAA 03:AD9A: D0 03     BNE @bra_AD9E_skip + 1            ; !(WHY?), probably, here it has to bra_ADA1_skip
C - - - - - 0x00EDAC 03:AD9C: A9 40     LDA #$40                          ; CONSTANT - pause before falling, after dying in air
@bra_AD9E_skip:
C - - - - - 0x00EDAE 03:AD9E: 9D 44 03  STA vEnemyASpecSubCounter,X       ;
C - - - - - 0x00EDB1 03:ADA1: A0 0D     LDY #$0D                          ; the index for the offset value, the dying in air #2
C - - - - - 0x00EDB3 03:ADA3: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00EDB6 03:ADA6: C9 20     CMP #$20                          ; CONSTANT - The counter value for the dying in air
C - - - - - 0x00EDB8 03:ADA8: B0 41     BCS bra_ADEB_assigned             ; If JumpCounter >= 0x20
C - - - - - 0x00EDBA 03:ADAA: A0 0E     LDY #$0E                          ; the index for the offset value, the dying in air #1
C - - - - - 0x00EDBC 03:ADAC: D0 3D     BNE bra_ADEB_assigned             ; Always true

; In: Register X - the enemyA number
bra_ADAE_skip:
C - - - - - 0x00EDBE 03:ADAE: A0 0F     LDY #$0F                          ; the index for the offset value, the falling
C - - - - - 0x00EDC0 03:ADB0: BD 44 03  LDA vEnemyASpecSubCounter,X       ;
C - - - - - 0x00EDC3 03:ADB3: F0 05     BEQ @bra_ADBA_falling             ; If vSubCounter == 0x00
C - - - - - 0x00EDC5 03:ADB5: DE 44 03  DEC vEnemyASpecSubCounter,X       ;
C - - - - - 0x00EDC8 03:ADB8: D0 31     BNE bra_ADEB_assigned             ; If vSubCounter != 0x00
@bra_ADBA_falling:
C - - - - - 0x00EDCA 03:ADBA: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00EDCC 03:ADBC: 29 01     AND #$01                          ;
C - - - - - 0x00EDCE 03:ADBE: D0 2B     BNE bra_ADEB_assigned             ; Branch if vLowCounter doesn't multiple of 2
C - - - - - 0x00EDD0 03:ADC0: FE 2C 03  INC vEnemyAPosY,X                 ; the falling by posY
C - - - - - 0x00EDD3 03:ADC3: BD 2C 03  LDA vEnemyAPosY,X                 ;
C - - - - - 0x00EDD6 03:ADC6: C9 BF     CMP #$BF                          ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x00EDD8 03:ADC8: 90 21     BCC bra_ADEB_assigned             ; If vEnemyPosY < 0xBF
C - - - - - 0x00EDDA 03:ADCA: A9 20     LDA #$20                          ; CONSTANT - 'the dying' status
C - - - - - 0x00EDDC 03:ADCC: 20 19 A3  JSR sub_A319_change_substatus     ;
C - - - - - 0x00EDDF 03:ADCF: A9 60     LDA #$60                          ; CONSTANT - The sub counter value for the dying
C - - - - - 0x00EDE1 03:ADD1: 9D 44 03  STA vEnemyASpecSubCounter,X       ;
C - - - - - 0x00EDE4 03:ADD4: D0 15     BNE bra_ADEB_assigned             ; Always true

loc_ADD6_main:
C - - - - - 0x00EDE6 03:ADD6: 20 D9 AE  JSR sub_AED9_execute_fly_or_throw ;
C - - - - - 0x00EDE9 03:ADD9: A0 03     LDY #$03                          ; prepares an index for the sprite_magic2 (The offset by the address), the flying animation
C - - - - - 0x00EDEB 03:ADDB: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00EDED 03:ADDD: 29 18     AND #$18                          ;
C - - - - - 0x00EDEF 03:ADDF: F0 0A     BEQ bra_ADEB_assigned             ; Branch every 8 (or 16) times after 8 (or 16)
C - - - - - 0x00EDF1 03:ADE1: C9 18     CMP #$18                          ;
C - - - - - 0x00EDF3 03:ADE3: F0 06     BEQ bra_ADEB_assigned             ; If neither 8 nor 16
C - - - - - 0x00EDF5 03:ADE5: C8        INY                               ; an index for sprite_magic2 <~ 0x04
C - - - - - 0x00EDF6 03:ADE6: C9 08     CMP #$08                          ;
C - - - - - 0x00EDF8 03:ADE8: F0 01     BEQ bra_ADEB_assigned             ; If neither 8
C - - - - - 0x00EDFA 03:ADEA: C8        INY                               ; an index for sprite_magic2 <~ 0x05
bra_ADEB_assigned:
C - - - - - 0x00EDFB 03:ADEB: 4C 47 AE  JMP loc_AE47_prepare_rendering    ;

loc_ADEE_sword_strike:
C - - - - - 0x00EDFE 03:ADEE: 20 D9 AE  JSR sub_AED9_execute_fly_or_throw      ;
C - - - - - 0x00EE01 03:ADF1: A0 08     LDY #$08                               ; the index for the offset value, sword strike #3
C - - - - - 0x00EE03 03:ADF3: BD 44 03  LDA vEnemyASpecSubCounter,X            ;
C - - - - - 0x00EE06 03:ADF6: F0 4A     BEQ bra_AE42_reset                     ; If vSubCounter == 0x00
C - - - - - 0x00EE08 03:ADF8: C9 08     CMP #$08                               ; CONSTANT - the sword in the bottom
C - - - - - 0x00EE0A 03:ADFA: 90 4B     BCC bra_AE47_prepare_rendering         ; If vSubCounter < 0x08
C - - - - - 0x00EE0C 03:ADFC: 88        DEY                                    ; the index for the offset value, sword strike #2
C - - - - - 0x00EE0D 03:ADFD: C9 10     CMP #$10                               ; CONSTANT - the sword in the center 
C - - - - - 0x00EE0F 03:ADFF: 90 46     BCC bra_AE47_prepare_rendering         ; If vSubCounter < 0x10
C - - - - - 0x00EE11 03:AE01: 88        DEY                                    ; the index for the offset value, sword strike #1
C - - - - - 0x00EE12 03:AE02: D0 43     BNE bra_AE47_prepare_rendering         ; Alway true

loc_AE04_waiting:
C - - - - - 0x00EE14 03:AE04: A0 00     LDY #$00                               ; the index for the offset value, squatting #1
C - - - - - 0x00EE16 03:AE06: BD 26 03  LDA vEnemyAWaitCounter,X               ;
C - - - - - 0x00EE19 03:AE09: F0 0D     BEQ @bra_AE18_last                     ; If vWaitCounter == 0x00
C - - - - - 0x00EE1B 03:AE0B: BD 44 03  LDA vEnemyASpecSubCounter,X            ;
C - - - - - 0x00EE1E 03:AE0E: D0 37     BNE bra_AE47_prepare_rendering         ; If vSubCounter != 0x00
C - - - - - 0x00EE20 03:AE10: DE 44 03  DEC vEnemyASpecSubCounter,X            ; <~ 0xFF (next loop)
C - - - - - 0x00EE23 03:AE13: DE 26 03  DEC vEnemyAWaitCounter,X               ; update the wait counter
C - - - - - 0x00EE26 03:AE16: D0 2F     BNE bra_AE47_prepare_rendering         ; If vWaitCounter != 0x00
@bra_AE18_last:
C - - - - - 0x00EE28 03:AE18: A0 02     LDY #$02                               ; the index for the offset value, squatting #3
C - - - - - 0x00EE2A 03:AE1A: BD 44 03  LDA vEnemyASpecSubCounter,X            ; reassign or clear
C - - - - - 0x00EE2D 03:AE1D: F0 23     BEQ bra_AE42_reset                     ; If vSubCounter == 0x00
C - - - - - 0x00EE2F 03:AE1F: C9 10     CMP #$10                               ;
C - - - - - 0x00EE31 03:AE21: 90 24     BCC bra_AE47_prepare_rendering         ; If vSubCounter < 0x10
C - - - - - 0x00EE33 03:AE23: 88        DEY                                    ; the index for the offset value, squatting #2
C - - - - - 0x00EE34 03:AE24: C9 20     CMP #$20                               ;
C - - - - - 0x00EE36 03:AE26: 90 1F     BCC bra_AE47_prepare_rendering         ; If vSubCounter < 0x20
C - - - - - 0x00EE38 03:AE28: 88        DEY                                    ; the index for the offset value, squatting #1
C - - - - - 0x00EE39 03:AE29: 4C 47 AE  JMP loc_AE47_prepare_rendering         ;

; In: Register X - the enemyA number
loc_AE2C_get_damage:
C - - - - - 0x00EE3C 03:AE2C: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00EE3F 03:AE2F: 6A        ROR                                    ;
C - - - - - 0x00EE40 03:AE30: B0 06     BCS bra_AE38_left                      ; If the enemy is looking to the left
C - - - - - 0x00EE42 03:AE32: 20 15 A4  JSR sub_A415_try_to_dec_EnemyAPosXLow  ;
C - - - - - 0x00EE45 03:AE35: 4C 3B AE  JMP loc_AE3B_continue                  ;

; In: Register X - the enemyA number
bra_AE38_left:
C - - - - - 0x00EE48 03:AE38: 20 03 A4  JSR sub_A403_try_to_inc_EnemyAPosXLow  ;
loc_AE3B_continue:
C D 1 - - - 0x00EE4B 03:AE3B: A0 0C     LDY #$0C                               ; the index for the offset value, 'get damage' frame
C - - - - - 0x00EE4D 03:AE3D: BD 44 03  LDA vEnemyASpecSubCounter,X            ;
C - - - - - 0x00EE50 03:AE40: D0 05     BNE bra_AE47_prepare_rendering         ; If vSubCounter < 0x20
bra_AE42_reset:
C - - - - - 0x00EE52 03:AE42: A9 00     LDA #$00                               ;
C - - - - - 0x00EE54 03:AE44: 20 19 A3  JSR sub_A319_change_substatus          ;
; In: Register X - the enemyA number
; In: Register Y - an index for sprite_magic2 (The offset by the address)
bra_AE47_prepare_rendering:
loc_AE47_prepare_rendering:
C D 1 - - - 0x00EE57 03:AE47: BD 38 03  LDA vEnemyAPosXLow,X                   ;
C - - - - - 0x00EE5A 03:AE4A: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00EE5C 03:AE4C: BD 3E 03  LDA vEnemyAPosXHigh,X                  ;
C - - - - - 0x00EE5F 03:AE4F: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x00EE61 03:AE51: 20 AC D6  JSR sub_D6AC_out_of_screen             ;
C - - - - - 0x00EE64 03:AE54: A5 03     LDA ram_0003                           ; from sub_D6AC_out_of_screen
C - - - - - 0x00EE66 03:AE56: 9D 32 03  STA vEnemyAScreenPosX,X                ; see analog sub_D725_enemyA_on_screen
C - - - - - 0x00EE69 03:AE59: 98        TYA                                    ;
C - - - - - 0x00EE6A 03:AE5A: 0A        ASL                                    ;
C - - - - - 0x00EE6B 03:AE5B: 0A        ASL                                    ; *4
C - - - - - 0x00EE6C 03:AE5C: 85 05     STA ram_0005                           ; <~ the table index
C - - - - - 0x00EE6E 03:AE5E: A9 04     LDA #$04                               ;
C - - - - - 0x00EE70 03:AE60: 85 06     STA ram_0006                           ; set loop counter
@bra_AE62_loop:                                                                ; loop by $0006
C - - - - - 0x00EE72 03:AE62: A4 05     LDY ram_0005                           ;
C - - - - - 0x00EE74 03:AE64: B9 32 AC  LDA tbl_AC32_offset_by_posY,Y          ;
C - - - - - 0x00EE77 03:AE67: 18        CLC                                    ;
C - - - - - 0x00EE78 03:AE68: 7D 2C 03  ADC vEnemyAPosY,X                      ;
C - - - - - 0x00EE7B 03:AE6B: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x00EE7D 03:AE6D: B9 E6 AB  LDA tbl_ABE6_sprites,Y                 ;
C - - - - - 0x00EE80 03:AE70: C9 FF     CMP #$FF                               ;
C - - - - - 0x00EE82 03:AE72: F0 0C     BEQ @bra_AE80_next                     ; If sprite_magic2 == 0xFF
C - - - - - 0x00EE84 03:AE74: A8        TAY                                    ; prepares the 2nd parameter
C - - - - - 0x00EE85 03:AE75: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00EE88 03:AE78: 6A        ROR                                    ;
C - - - - - 0x00EE89 03:AE79: 90 02     BCC @bra_AE7D_right                    ; If the enemy is looking to the right
C - - - - - 0x00EE8B 03:AE7B: C8        INY                                    ;
C - - - - - 0x00EE8C 03:AE7C: C8        INY                                    ; +2 for the left frame
@bra_AE7D_right:
C - - - - - 0x00EE8D 03:AE7D: 20 24 A5  JSR sub_A524_prepare_rendering_ex      ;
@bra_AE80_next:
C - - - - - 0x00EE90 03:AE80: E6 05     INC ram_0005                           ; <~ next the table index
C - - - - - 0x00EE92 03:AE82: C6 06     DEC ram_0006                           ; decrement loop counter
C - - - - - 0x00EE94 03:AE84: D0 DC     BNE @bra_AE62_loop                     ; If $0006 != 0x00
C - - - - - 0x00EE96 03:AE86: 60        RTS                                    ;

; In Register X - the enemyA number
loc_AE87_dying:
C - - - - - 0x00EE97 03:AE87: BD 44 03  LDA vEnemyASpecSubCounter,X    ;
C - - - - - 0x00EE9A 03:AE8A: D0 17     BNE bra_AEA3_change_frame_     ; If vSubCounter != 0x00
C - - - - - 0x00EE9C 03:AE8C: 9D 20 03  STA vEnemyAStatus,X            ; clear for the current enemyA
C - - - - - 0x00EE9F 03:AE8F: AD 21 03  LDA vEnemyAStatus2             ;
C - - - - - 0x00EEA2 03:AE92: D0 09     BNE @bra_AE9D_skip             ; If any status of second enemyA is used
C - - - - - 0x00EEA4 03:AE94: AD 20 03  LDA vEnemyAStatus              ;
C - - - - - 0x00EEA7 03:AE97: D0 09     BNE bra_AEA2_RTS               ; If any status of first enemyA is used
C - - - - - 0x00EEA9 03:AE99: A9 C4     LDA #$C4                       ; CONSTANT - to the cutscene of defeating the boss
C - - - - - 0x00EEAB 03:AE9B: 85 39     STA vGameInterruptEvent        ;
@bra_AE9D_skip:
C - - - - - 0x00EEAD 03:AE9D: A9 30     LDA #$30                       ;
C - - - - - 0x00EEAF 03:AE9F: 8D 45 03  STA vEnemyASpecSubCounter2     ; !(WHY?), may be for reduce the waiting time
bra_AEA2_RTS:
C - - - - - 0x00EEB2 03:AEA2: 60        RTS                            ;

bra_AEA3_change_frame_:
C - - - - - 0x00EEB3 03:AEA3: DE 44 03  DEC vEnemyASpecSubCounter,X    ;
C - - - - - 0x00EEB6 03:AEA6: BD 44 03  LDA vEnemyASpecSubCounter,X    ;
C - - - - - 0x00EEB9 03:AEA9: A0 10     LDY #$10                       ; prepares the sprite_magic2 (The offset by the address), death frame
C - - - - - 0x00EEBB 03:AEAB: C9 20     CMP #$20                       ;
C - - - - - 0x00EEBD 03:AEAD: B0 06     BCS @bra_AEB5_skip             ; If vFrameCounter >= 0x20
C - - - - - 0x00EEBF 03:AEAF: C8        INY                            ; death frame #2
C - - - - - 0x00EEC0 03:AEB0: C9 10     CMP #$10                       ;
C - - - - - 0x00EEC2 03:AEB2: B0 01     BCS @bra_AEB5_skip             ; If vFrameCounter >= 0x10
C - - - - - 0x00EEC4 03:AEB4: C8        INY                            ; death frame #3
@bra_AEB5_skip:
C - - - - - 0x00EEC5 03:AEB5: 4C 47 AE  JMP loc_AE47_prepare_rendering ;

bra_AEB8_no_flying:
C - - - - - 0x00EEC8 03:AEB8: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x00EECB 03:AEBB: 29 2C     AND #$2C                       ; CONSTANT - 'dying' + 'waiting' + 'sword strike' statuses
C - - - - - 0x00EECD 03:AEBD: D0 16     BNE @bra_AED5_RTS              ; If one of above statuses are activated
C - - - - - 0x00EECF 03:AEBF: 20 64 D0  JSR sub_D064_generate_rng      ;
C - - - - - 0x00EED2 03:AEC2: 29 1F     AND #$1F                       ;
C - - - - - 0x00EED4 03:AEC4: D0 0F     BNE @bra_AED5_RTS              ; Branch in 31 or 32 cases
C - - - - - 0x00EED6 03:AEC6: A5 35     LDA vEnemyRNGValue             ;
C - - - - - 0x00EED8 03:AEC8: 2A        ROL                            ;
C - - - - - 0x00EED9 03:AEC9: B0 0B     BCS bra_AED6_throw             ; Branch in 1 of 2 cases
C - - - - - 0x00EEDB 03:AECB: A9 04     LDA #$04                       ; CONSTANT - 'sword strike' status
C - - - - - 0x00EEDD 03:AECD: 20 19 A3  JSR sub_A319_change_substatus  ;
C - - - - - 0x00EEE0 03:AED0: A9 30     LDA #$30                       ; CONSTANT - frames for 'sword strike'
C - - - - - 0x00EEE2 03:AED2: 9D 44 03  STA vEnemyASpecSubCounter,X    ;
@bra_AED5_RTS:
C - - - - - 0x00EEE5 03:AED5: 60        RTS                            ;

bra_AED6_throw:
C - - - - - 0x00EEE6 03:AED6: 4C A9 AF  JMP loc_AFA9_throw             ;

sub_AED9_execute_fly_or_throw:
C - - - - - 0x00EEE9 03:AED9: A5 2B     LDA v_nmi_counter                  ;
C - - - - - 0x00EEEB 03:AEDB: 29 01     AND #$01                           ;
C - - - - - 0x00EEED 03:AEDD: D0 D9     BNE bra_AEB8_no_flying             ; If vNmiCounter is odd
C - - - - - 0x00EEEF 03:AEDF: A9 C6     LDA #$C6                           ;
C - - - - - 0x00EEF1 03:AEE1: 85 00     STA ram_0000                       ;
C - - - - - 0x00EEF3 03:AEE3: A9 AB     LDA #$AB                           ;
C - - - - - 0x00EEF5 03:AEE5: 85 01     STA ram_0001                       ; (ram_0000),0 = $ABC6
C - - - - - 0x00EEF7 03:AEE7: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x00EEFA 03:AEEA: D0 14     BNE @bra_AF00_no_turn              ; If vJumpCounter != 0x00
C - - - - - 0x00EEFC 03:AEEC: FE 56 03  INC vEnemyAJumpType,X              ; set next jump type
C - - - - - 0x00EEFF 03:AEEF: BD 56 03  LDA vEnemyAJumpType,X              ;
C - - - - - 0x00EF02 03:AEF2: 29 0F     AND #$0F                           ;
C - - - - - 0x00EF04 03:AEF4: 9D 56 03  STA vEnemyAJumpType,X              ; adjust by mask
C - - - - - 0x00EF07 03:AEF7: 18        CLC                                ;
C - - - - - 0x00EF08 03:AEF8: 69 10     ADC #$10                           ; see $ABC6 + 0x10
C - - - - - 0x00EF0A 03:AEFA: A8        TAY                                ;
C - - - - - 0x00EF0B 03:AEFB: B1 00     LDA (ram_0000),Y                   ;
C - - - - - 0x00EF0D 03:AEFD: 9D 4A 03  STA vEnemyAJumpCounter,X           ; assign an new counter
@bra_AF00_no_turn:
C - - - - - 0x00EF10 03:AF00: BC 56 03  LDY vEnemyAJumpType,X              ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x00EF13 03:AF03: B1 00     LDA (ram_0000),Y                   ;
C - - - - - 0x00EF15 03:AF05: 0A        ASL                                ; *2, because the set contains 2 bytes
C - - - - - 0x00EF16 03:AF06: A8        TAY                                ;
C - - - - - 0x00EF17 03:AF07: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x00EF1A 03:AF0A: 18        CLC                                ;
C - - - - - 0x00EF1B 03:AF0B: 79 D4 DA  ADC tbl_flying_track_offset,Y      ;
C - - - - - 0x00EF1E 03:AF0E: 9D 2C 03  STA vEnemyAPosY,X                  ; <~ posY + offset
C - - - - - 0x00EF21 03:AF11: BD 38 03  LDA vEnemyAPosXLow,X               ;
C - - - - - 0x00EF24 03:AF14: 18        CLC                                ;
C - - - - - 0x00EF25 03:AF15: 79 D5 DA  ADC tbl_flying_track_offset + 1,Y  ;
C - - - - - 0x00EF28 03:AF18: 9D 38 03  STA vEnemyAPosXLow,X               ; <~ posX + offset
C - - - - - 0x00EF2B 03:AF1B: A9 E0     LDA #$E0                           ; CONSTANT - the acceptable right limit
C - - - - - 0x00EF2D 03:AF1D: DD 38 03  CMP vEnemyAPosXLow,X               ;
C - - - - - 0x00EF30 03:AF20: 90 07     BCC @bra_AF29_reassign             ; If 0xE0 < enemyAPosX
C - - - - - 0x00EF32 03:AF22: A9 20     LDA #$20                           ; CONSTANT - the acceptable left limit
C - - - - - 0x00EF34 03:AF24: DD 38 03  CMP vEnemyAPosXLow,X               ;
C - - - - - 0x00EF37 03:AF27: 90 08     BCC @bra_AF31_skip                 ; If 0x20 < enemyAPosX
@bra_AF29_reassign:
C - - - - - 0x00EF39 03:AF29: 9D 38 03  STA vEnemyAPosXLow,X               ; <~ 0xE0, the acceptable right limit
C - - - - - 0x00EF3C 03:AF2C: A9 01     LDA #$01                           ; CONSTANT - the value for the turn
C - - - - - 0x00EF3E 03:AF2E: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
@bra_AF31_skip:
C - - - - - 0x00EF41 03:AF31: A9 50     LDA #$50                           ;
C - - - - - 0x00EF43 03:AF33: DD 2C 03  CMP vEnemyAPosY,X                  ;
C - - - - - 0x00EF46 03:AF36: 90 0C     BCC bra_AF44_continue              ; If 0x50 < enemyAPosY
C - - - - - 0x00EF48 03:AF38: 9D 2C 03  STA vEnemyAPosY,X                  ; <~ 0x50, the acceptable upper limit
C - - - - - 0x00EF4B 03:AF3B: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00EF4E 03:AF3E: 29 08     AND #$08                           ;
C - - - - - 0x00EF50 03:AF40: A8        TAY                                ; Y <~ 0x00 or 0x08 (the down direction)
C - - - - - 0x00EF51 03:AF41: 4C 59 AF  JMP loc_AF59_reassign              ;

bra_AF44_continue:
C - - - - - 0x00EF54 03:AF44: A9 BF     LDA #$BF                           ;
C - - - - - 0x00EF56 03:AF46: DD 2C 03  CMP vEnemyAPosY,X                  ;
C - - - - - 0x00EF59 03:AF49: B0 17     BCS bra_AF62_skip                  ; If 0xBF >= enemyAPosY
C - - - - - 0x00EF5B 03:AF4B: 9D 2C 03  STA vEnemyAPosY,X                  ; <~ 0xBF, lower boundary of the first floor 
C - - - - - 0x00EF5E 03:AF4E: A0 03     LDY #$03                           ; CONSTANT - up and right
C - - - - - 0x00EF60 03:AF50: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00EF63 03:AF53: 29 01     AND #$01                           ; 50 chance (0x00 or 0x01)
C - - - - - 0x00EF65 03:AF55: D0 02     BNE @bra_AF59_skip                 ; If RNG value is 0x01
C - - - - - 0x00EF67 03:AF57: A0 0B     LDY #$0B                           ; CONSTANT - up and left
@bra_AF59_skip:
loc_AF59_reassign:
C D 1 - - - 0x00EF69 03:AF59: 98        TYA                                ;
C - - - - - 0x00EF6A 03:AF5A: 9D 56 03  STA vEnemyAJumpType,X              ; assign an new type
C - - - - - 0x00EF6D 03:AF5D: A9 50     LDA #$50                           ; CONSTANT - this is the value after the collision
C - - - - - 0x00EF6F 03:AF5F: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
bra_AF62_skip:
C - - - - - 0x00EF72 03:AF62: BC 56 03  LDY vEnemyAJumpType,X              ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x00EF75 03:AF65: B1 00     LDA (ram_0000),Y                   ;
C - - - - - 0x00EF77 03:AF67: 29 08     AND #$08                           ;
C - - - - - 0x00EF79 03:AF69: F0 02     BEQ @bra_AF6D_set_direction        ; If the value contains 0x08 flag
C - - - - - 0x00EF7B 03:AF6B: A9 01     LDA #$01                           ; CONSTANT - the left direction
@bra_AF6D_set_direction:
C - - - - - 0x00EF7D 03:AF6D: 85 05     STA ram_0005                       ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x00EF7F 03:AF6F: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x00EF82 03:AF72: 29 FE     AND #$FE                           ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00EF84 03:AF74: 05 05     ORA ram_0005                       ;
C - - - - - 0x00EF86 03:AF76: 9D 20 03  STA vEnemyAStatus,X                ;
C - - - - - 0x00EF89 03:AF79: 60        RTS                                ;

; In: $0000 - a projectile status
; In: Register Y - a projectile number
sub_AF7A_shot_projectile:
C - - - - - 0x00EF8A 03:AF7A: A6 1A     LDX vTempCounter1A              ; <~ the enemy number
C - - - - - 0x00EF8C 03:AF7C: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x00EF8F 03:AF7F: A2 08     LDX #$08                        ; the offset by posX (+8)
C - - - - - 0x00EF91 03:AF81: 29 01     AND #$01                        ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00EF93 03:AF83: F0 02     BEQ @bra_AF87_right             ; If the enemy is looking to the right
C - - - - - 0x00EF95 03:AF85: A2 F8     LDX #$F8                        ; the offset by posX (-8)
@bra_AF87_right:
C - - - - - 0x00EF97 03:AF87: 05 00     ORA ram_0000                    ;
C - - - - - 0x00EF99 03:AF89: 99 5C 03  STA vEnemyBStatus,Y             ; <~ 0xC0 or 0xC1
C - - - - - 0x00EF9C 03:AF8C: 8A        TXA                             ;
C - - - - - 0x00EF9D 03:AF8D: A6 1A     LDX vTempCounter1A              ; <~ the enemy number
C - - - - - 0x00EF9F 03:AF8F: 18        CLC                             ;
C - - - - - 0x00EFA0 03:AF90: 7D 38 03  ADC vEnemyAPosXLow,X            ;
C - - - - - 0x00EFA3 03:AF93: 99 74 03  STA vEnemyBPosXLow,Y            ; <~ enemyA posX + offset
C - - - - - 0x00EFA6 03:AF96: A9 00     LDA #$00                        ;
C - - - - - 0x00EFA8 03:AF98: 99 7A 03  STA vEnemyBPosXHigh,Y           ; the room has one screen
C - - - - - 0x00EFAB 03:AF9B: BD 2C 03  LDA vEnemyAPosY,X               ;
C - - - - - 0x00EFAE 03:AF9E: 18        CLC                             ;
C - - - - - 0x00EFAF 03:AF9F: 69 E0     ADC #$E0                        ;
C - - - - - 0x00EFB1 03:AFA1: 99 68 03  STA vEnemyBPosY,Y               ; <~ enemyA posY + 0xE0 (i.e. -32)
C - - - - - 0x00EFB4 03:AFA4: A9 3D     LDA #$3D                        ; CONSTANT - sound of a shot
C - - - - - 0x00EFB6 03:AFA6: 4C 20 C4  JMP loc_C420_add_sound_effect   ; bank FF

sub_AFA9_throw:
loc_AFA9_throw:
C D 1 - - - 0x00EFB9 03:AFA9: 8A        TXA                                ;
C - - - - - 0x00EFBA 03:AFAA: 48        PHA                                ; store x
C - - - - - 0x00EFBB 03:AFAB: A5 1A     LDA vTempCounter1A                 ; <~ the projectile number
C - - - - - 0x00EFBD 03:AFAD: 0A        ASL                                ; *2, because every boss can have 2 projectile
C - - - - - 0x00EFBE 03:AFAE: A8        TAY                                ; Y <~ 0x00 or 0x02
C - - - - - 0x00EFBF 03:AFAF: B9 5C 03  LDA vEnemyBStatus,Y                ;
C - - - - - 0x00EFC2 03:AFB2: 10 06     BPL bra_AFBA_start                 ; If the status isn't used
C - - - - - 0x00EFC4 03:AFB4: C8        INY                                ; next projectile (2nd of 2)
C - - - - - 0x00EFC5 03:AFB5: B9 5C 03  LDA vEnemyBStatus,Y                ;
C - - - - - 0x00EFC8 03:AFB8: 30 22     BMI bra_AFDC_return                ; If the status is used
bra_AFBA_start:
C - - - - - 0x00EFCA 03:AFBA: A9 C0     LDA #$C0                           ; CONSTANT - start status
C - - - - - 0x00EFCC 03:AFBC: 85 00     STA ram_0000                       ; prepares an input parameter
C - - - - - 0x00EFCE 03:AFBE: 20 7A AF  JSR sub_AF7A_shot_projectile       ;
C - - - - - 0x00EFD1 03:AFC1: A9 40     LDA #$40                           ; Initializes a jump counter
C - - - - - 0x00EFD3 03:AFC3: 99 86 03  STA vEnemyBJumpCounter,Y           ;
C - - - - - 0x00EFD6 03:AFC6: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00EFD9 03:AFC9: 29 03     AND #$03                           ;
C - - - - - 0x00EFDB 03:AFCB: AA        TAX                                ; X <~ 0x00, 0x01, 0x02 or 0x03
C - - - - - 0x00EFDC 03:AFCC: B9 5C 03  LDA vEnemyBStatus,Y                ;
C - - - - - 0x00EFDF 03:AFCF: 6A        ROR                                ;
C - - - - - 0x00EFE0 03:AFD0: 90 04     BCC @bra_AFD6_right                ; If the projectile is looking to the right
C - - - - - 0x00EFE2 03:AFD2: E8        INX                                ;
C - - - - - 0x00EFE3 03:AFD3: E8        INX                                ;
C - - - - - 0x00EFE4 03:AFD4: E8        INX                                ;
C - - - - - 0x00EFE5 03:AFD5: E8        INX                                ; X <~ 0x04, 0x05, 0x06 or 0x07
@bra_AFD6_right:
C - - - - - 0x00EFE6 03:AFD6: BD D8 A8  LDA tbl_A8D8_direction,X           ;
C - - - - - 0x00EFE9 03:AFD9: 99 62 03  STA vEnemyBThrowingDirection,Y     ;
bra_AFDC_return:
C - - - - - 0x00EFEC 03:AFDC: 68        PLA                                ;
C - - - - - 0x00EFED 03:AFDD: AA        TAX                                ; retrieve x (see $AFAB)
C - - - - - 0x00EFEE 03:AFDE: 60        RTS                                ;

; 1 byte - position Y
; 2 byte - position X
; 3 byte - height
; 4 byte - width
tbl_AFDF_hitboxes:
- D 1 - - - 0x00EFEF 03:AFDF: 00        .byte $00, $00, $20, $04   ; 
- D 1 - - - 0x00EFF3 03:AFE3: 00        .byte $00, $00, $18, $04   ; 
- D 1 - - - 0x00EFF7 03:AFE7: 00        .byte $00, $00, $20, $10   ; 
- D 1 - - - 0x00EFFB 03:AFEB: 00        .byte $00, $00, $30, $28   ; 
- D 1 - - - 0x00EFFF 03:AFEF: 00        .byte $00, $00, $08, $08   ; 

tbl_AFF3_status_flags:
- D 1 - - - 0x00F003 03:AFF3: 00        .byte $00   ; nothing
- D 1 - - - 0x00F004 03:AFF4: 10        .byte $10   ; squatting
- D 1 - - - 0x00F005 03:AFF5: 10        .byte $10   ; squatting
- D 1 - - - 0x00F006 03:AFF6: 10        .byte $10   ; squatting
- D 1 - - - 0x00F007 03:AFF7: 10        .byte $10   ; squatting
- D 1 - - - 0x00F008 03:AFF8: 10        .byte $10   ; squatting
- D 1 - - - 0x00F009 03:AFF9: 00        .byte $00   ; nothing
- D 1 - - - 0x00F00A 03:AFFA: 08        .byte $08   ; stop

; The skeleton, the mummy
loc_AFFB_enemy:
C D 1 - - - 0x00F00B 03:AFFB: A2 01     LDX #$01                           ;
C - - - - - 0x00F00D 03:AFFD: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyA number)
bra_AFFF_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x00F00F 03:AFFF: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x00F011 03:B001: 20 EC B0  JSR sub_B0EC_status_behavior       ;
C - - - - - 0x00F014 03:B004: A6 1A     LDX vTempCounter1A                 ; X <~ the enemyA number
C - - - - - 0x00F016 03:B006: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x00F019 03:B009: C9 E0     CMP #$E0                           ;
C - - - - - 0x00F01B 03:B00B: 90 07     BCC @bra_B014_skip                 ; If vEnemyAStatus < 0xE0
C - - - - - 0x00F01D 03:B00D: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x00F020 03:B010: C0 24     CPY #$24                           ; CONSTANT - Skeleton
C - - - - - 0x00F022 03:B012: D0 38     BNE bra_B04C_next                  ; If vEnemyA != 0x24
@bra_B014_skip:
C - - - - - 0x00F024 03:B014: C9 C0     CMP #$C0                           ;
C - - - - - 0x00F026 03:B016: 90 34     BCC bra_B04C_next                  ; If vEnemyAStatus < 0xC0
C - - - - - 0x00F028 03:B018: 20 9D B0  JSR sub_B09D_prepare_hitbox        ;
C - - - - - 0x00F02B 03:B01B: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x00F02E 03:B01E: C9 24     CMP #$24                           ; CONSTANT - Skeleton
C - - - - - 0x00F030 03:B020: D0 07     BNE @bra_B029_skip                 ; If vEnemyA != 0x24
C - - - - - 0x00F032 03:B022: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x00F035 03:B025: 29 20     AND #$20                           ; CONSTANT - the dying
C - - - - - 0x00F037 03:B027: D0 20     BNE bra_B049_skip                  ; If the enemy is dying
@bra_B029_skip:
C - - - - - 0x00F039 03:B029: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x00F03C 03:B02C: B0 0B     BCS bra_B039_bomb_hit              ; If the bomb is exploding
C - - - - - 0x00F03E 03:B02E: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x00F040 03:B030: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x00F042 03:B032: F0 0B     BEQ bra_B03F_check_bullets         ; If the character isn't Goemon
C - - - - - 0x00F044 03:B034: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x00F047 03:B037: 90 10     BCC bra_B049_skip                  ; If the intersect doesn't exist
bra_B039_bomb_hit:
C - - - - - 0x00F049 03:B039: 20 5B B0  JSR sub_B05B_hit                   ;
C - - - - - 0x00F04C 03:B03C: 4C 4C B0  JMP loc_B04C_next                  ;

bra_B03F_check_bullets:
C - - - - - 0x00F04F 03:B03F: A6 7A     LDX vBulletCount                       ; set loop counter
@bra_B041_loop:                                                                ; loop by x
C - - - - - 0x00F051 03:B041: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet     ;
C - - - - - 0x00F054 03:B044: B0 0B     BCS bra_B051_bullet_hit                ; If the intersect is exist
C - - - - - 0x00F056 03:B046: CA        DEX                                    ; decrement loop counter
C - - - - - 0x00F057 03:B047: 10 F8     BPL @bra_B041_loop                     ; If Register X >= 0x00
bra_B049_skip:
C - - - - - 0x00F059 03:B049: 20 62 D5  JSR sub_D562_has_character_damage      ;
bra_B04C_next:
loc_B04C_next:
C D 1 - - - 0x00F05C 03:B04C: C6 1A     DEC vTempCounter1A                     ; decrements loop counter
C - - - - - 0x00F05E 03:B04E: 10 AF     BPL bra_AFFF_loop                      ; If vTempCounter1A >= 0
C - - - - - 0x00F060 03:B050: 60        RTS                                    ;

bra_B051_bullet_hit:
C - - - - - 0x00F061 03:B051: A9 00     LDA #$00                               ;
C - - - - - 0x00F063 03:B053: 95 8F     STA vBulletStatus,X                    ; clear
C - - - - - 0x00F065 03:B055: 20 5B B0  JSR sub_B05B_hit                       ;
C - - - - - 0x00F068 03:B058: 4C 4C B0  JMP loc_B04C_next                      ;

sub_B05B_hit:
C - - - - - 0x00F06B 03:B05B: A6 1A     LDX vTempCounter1A                 ; X <~ the enemyA number
C - - - - - 0x00F06D 03:B05D: A0 04     LDY #$04                           ; the damage point #1
C - - - - - 0x00F06F 03:B05F: AD 14 02  LDA vCurrentWeaponStatus           ;
C - - - - - 0x00F072 03:B062: C9 41     CMP #$41                           ; CONSTANT - 'the weapon is activated' + 'Using the bomb'
C - - - - - 0x00F074 03:B064: F0 08     BEQ @bra_B06E_dec                  ; If the character is using the bomb
C - - - - - 0x00F076 03:B066: A0 02     LDY #$02                           ; the damage point #2
C - - - - - 0x00F078 03:B068: C9 42     CMP #$42                           ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x00F07A 03:B06A: F0 02     BEQ @bra_B06E_dec                  ; If the character is using the artillery rifle
C - - - - - 0x00F07C 03:B06C: A0 01     LDY #$01                           ; the damage point #3
; In: Register Y - the damage point
@bra_B06E_dec:
C - - - - - 0x00F07E 03:B06E: DE 50 03  DEC vEnemyAHealthPoints,X          ;
C - - - - - 0x00F081 03:B071: F0 10     BEQ bra_B083_final_hit             ; If the health points is zero
C - - - - - 0x00F083 03:B073: 88        DEY                                ; decrements the damage point
C - - - - - 0x00F084 03:B074: D0 F8     BNE @bra_B06E_dec                  ; If the damage point > 0
C - - - - - 0x00F086 03:B076: A9 04     LDA #$04                           ; CONSTANT - 'the red reskin' status
C - - - - - 0x00F088 03:B078: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x00F08B 03:B07B: C0 26     CPY #$26                           ; CONSTANT - Mummy
C - - - - - 0x00F08D 03:B07D: F0 15     BEQ bra_B094_mummy                 ; If vEnemyA == 0x26
C - - - - - 0x00F08F 03:B07F: A9 00     LDA #$00                           ; CONSTANT - reset the counter
C - - - - - 0x00F091 03:B081: F0 02     BEQ bra_B085_skip                  ; Always true

bra_B083_final_hit:
C - - - - - 0x00F093 03:B083: A9 FF     LDA #$FF                           ; CONSTANT - the counter isn't used
bra_B085_skip:
C - - - - - 0x00F095 03:B085: 9D 26 03  STA vEnemyARecoverCounter,X        ; Initializes a recover counter
C - - - - - 0x00F098 03:B088: A9 00     LDA #$00                           ;
C - - - - - 0x00F09A 03:B08A: 9D 44 03  STA vEnemyAFrame_Counter,X         ; reset a counter
C - - - - - 0x00F09D 03:B08D: A9 03     LDA #$03                           ; CONSTANT - jump by side
C - - - - - 0x00F09F 03:B08F: 9D 56 03  STA vEnemyAJumpType,X              ;
C - - - - - 0x00F0A2 03:B092: A9 22     LDA #$22                           ; CONSTANT - the jump + the dying
bra_B094_mummy:
C - - - - - 0x00F0A4 03:B094: 20 69 B3  JSR sub_B369_change_substatus      ;
C - - - - - 0x00F0A7 03:B097: A9 10     LDA #$10                           ;
C - - - - - 0x00F0A9 03:B099: 9D 4A 03  STA vEnemyAJumpCounter,X           ; Initializes a jump counter
C - - - - - 0x00F0AC 03:B09C: 60        RTS                                ;

; In: Register X - the enemyA number
sub_B09D_prepare_hitbox:
C - - - - - 0x00F0AD 03:B09D: AD 00 03  LDA vEnemyA                   ;
C - - - - - 0x00F0B0 03:B0A0: C9 26     CMP #$26                      ; CONSTANT - Mummy
C - - - - - 0x00F0B2 03:B0A2: F0 20     BEQ bra_B0C4_skip             ; If vEnemyA == 0x26
C - - - - - 0x00F0B4 03:B0A4: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x00F0B7 03:B0A7: 29 22     AND #$22                      ; CONSTANT - the enemy is dying or jumping
C - - - - - 0x00F0B9 03:B0A9: C9 20     CMP #$20                      ; CONSTANT - 'the dying' status
C - - - - - 0x00F0BB 03:B0AB: D0 17     BNE bra_B0C4_skip             ; if 'the dying' status isn't activated
C - - - - - 0x00F0BD 03:B0AD: A0 04     LDY #$04                      ; the offset value #1
C - - - - - 0x00F0BF 03:B0AF: BD 4A 03  LDA vEnemyAJumpCounter,X      ;
C - - - - - 0x00F0C2 03:B0B2: F0 1B     BEQ bra_B0CF_assign           ; If vJumpCounter == 0x00
C - - - - - 0x00F0C4 03:B0B4: A0 10     LDY #$10                      ; the offset value #2
C - - - - - 0x00F0C6 03:B0B6: C9 28     CMP #$28                      ; CONSTANT - throwing bones, big radius
C - - - - - 0x00F0C8 03:B0B8: 90 15     BCC bra_B0CF_assign           ; If vJumpCounter < 0x28
C - - - - - 0x00F0CA 03:B0BA: A0 0C     LDY #$0C                      ; the offset value #3
C - - - - - 0x00F0CC 03:B0BC: C9 2C     CMP #$2C                      ; CONSTANT - throwing bones, small radius
C - - - - - 0x00F0CE 03:B0BE: 90 0F     BCC bra_B0CF_assign           ; If vJumpCounter < 0x2C
C - - - - - 0x00F0D0 03:B0C0: A0 08     LDY #$08                      ; the offset value #4
C - - - - - 0x00F0D2 03:B0C2: D0 0B     BNE bra_B0CF_assign           ; Always true

bra_B0C4_skip:
C - - - - - 0x00F0D4 03:B0C4: A0 00     LDY #$00                      ; the offset value #5
C - - - - - 0x00F0D6 03:B0C6: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x00F0D9 03:B0C9: 29 10     AND #$10                      ; CONSTANT - 'squatting' status
C - - - - - 0x00F0DB 03:B0CB: F0 02     BEQ bra_B0CF_assign           ; If 'squatting' status isn't activated
C - - - - - 0x00F0DD 03:B0CD: A0 04     LDY #$04                      ; the offset value #1
bra_B0CF_assign:
C - - - - - 0x00F0DF 03:B0CF: BD 2C 03  LDA vEnemyAPosY,X             ;
C - - - - - 0x00F0E2 03:B0D2: 18        CLC                           ;
C - - - - - 0x00F0E3 03:B0D3: 79 DF AF  ADC tbl_AFDF_hitboxes,Y       ;
C - - - - - 0x00F0E6 03:B0D6: 85 AD     STA vEnemyHitBoxY             ; <~ posY + absolute hitBoxY
C - - - - - 0x00F0E8 03:B0D8: BD 32 03  LDA vEnemyAScreenPosX,X       ;
C - - - - - 0x00F0EB 03:B0DB: 18        CLC                           ;
C - - - - - 0x00F0EC 03:B0DC: 79 E0 AF  ADC tbl_AFDF_hitboxes + 1,Y   ;
C - - - - - 0x00F0EF 03:B0DF: 85 AE     STA vEnemyHitBoxX             ; <~ posX + absolute hitBoxX
C - - - - - 0x00F0F1 03:B0E1: B9 E1 AF  LDA tbl_AFDF_hitboxes + 2,Y   ;
C - - - - - 0x00F0F4 03:B0E4: 85 AF     STA vEnemyHitBoxH             ; <~ hitBoxH
C - - - - - 0x00F0F6 03:B0E6: B9 E2 AF  LDA tbl_AFDF_hitboxes + 3,Y   ;
C - - - - - 0x00F0F9 03:B0E9: 85 B0     STA vEnemyHitBoxW             ; <~ hitBoxW
bra_B0EB_RTS:
C - - - - - 0x00F0FB 03:B0EB: 60        RTS                           ;

sub_B0EC_status_behavior:
C - - - - - 0x00F0FC 03:B0EC: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00F0FF 03:B0EF: 10 FA     BPL bra_B0EB_RTS                          ; If the status isn't used
C - - - - - 0x00F101 03:B0F1: 4A        LSR                                       ;
C - - - - - 0x00F102 03:B0F2: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00F105 03:B0F5: 31 B2     .addr loc_B232_jump - 1       ; 0x02
- D 1 - I - 0x00F107 03:B0F7: 02 B1     .addr loc_B103_main - 1       ; 0x04
- D 1 - I - 0x00F109 03:B0F9: 02 B1     .addr loc_B103_main - 1       ; 0x08
- D 1 - I - 0x00F10B 03:B0FB: 02 B2     .addr loc_B203_squatting - 1  ; 0x10
- D 1 - I - 0x00F10D 03:B0FD: D5 B2     .addr loc_B2D6_dying - 1      ; 0x20
- D 1 - I - 0x00F10F 03:B0FF: 02 B1     .addr loc_B103_main - 1       ; 0x40
- D 1 - I - 0x00F111 03:B101: 02 B1     .addr loc_B103_main - 1       ; 0x80

; In: Register X - the enemyA number
loc_B103_main:
C - - - - - 0x00F113 03:B103: BD 2C 03  LDA vEnemyAPosY,X                           ;
C - - - - - 0x00F116 03:B106: 85 00     STA ram_0000                                ;
C - - - - - 0x00F118 03:B108: E6 00     INC ram_0000                                ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x00F11A 03:B10A: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y    ;
C - - - - - 0x00F11D 03:B10D: D0 07     BNE bra_B116_skip                           ; If the collisions by Y-position exists
C - - - - - 0x00F11F 03:B10F: A9 1C     LDA #$1C                                    ; CONSTANT - a jump counter value
C - - - - - 0x00F121 03:B111: A0 02     LDY #$02                                    ; CONSTANT - jumping off, free fall
C - - - - - 0x00F123 03:B113: 4C 21 B2  JMP loc_B221_activate_jump_status           ;

bra_B116_skip:
C - - - - - 0x00F126 03:B116: 20 31 B3  JSR sub_B331_try_to_change_self  ;
C - - - - - 0x00F129 03:B119: BD 20 03  LDA vEnemyAStatus,X              ;
C - - - - - 0x00F12C 03:B11C: 29 08     AND #$08                         ; CONSTANT - 'stop' status
C - - - - - 0x00F12E 03:B11E: D0 03     BNE bra_B123_stop                ; If 'stop' status is activated
C - - - - - 0x00F130 03:B120: 4C 9D B1  JMP loc_B19D_try_movements       ;

bra_B123_stop:
C - - - - - 0x00F133 03:B123: A0 00     LDY #$00                         ; prepares the sprite_magic2 (The offset by the address), the frame by default
; In: Register Y - sprite_magic2 (The offset by the address)
loc_B125_prepare_rendering:
C D 1 - - - 0x00F135 03:B125: BD 38 03  LDA vEnemyAPosXLow,X             ;
C - - - - - 0x00F138 03:B128: 85 00     STA ram_0000                     ; prepares the 1st parameter
C - - - - - 0x00F13A 03:B12A: BD 3E 03  LDA vEnemyAPosXHigh,X            ;
C - - - - - 0x00F13D 03:B12D: 85 01     STA ram_0001                     ; prepares the 2nd parameter
C - - - - - 0x00F13F 03:B12F: 20 7B D6  JSR sub_D67B_out_of_sight        ;
C - - - - - 0x00F142 03:B132: 90 03     BCC bra_B137_skip                ; If the enemy is visible
C - - - - - 0x00F144 03:B134: 4C 7F D7  JMP loc_D77F_free_enemyA         ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B137_skip:
C - - - - - 0x00F147 03:B137: 20 AC D6  JSR sub_D6AC_out_of_screen       ;
C - - - - - 0x00F14A 03:B13A: 90 03     BCC bra_B13F_skip                ; If the enemy is on the screen
C - - - - - 0x00F14C 03:B13C: 4C 41 D7  JMP loc_D741_enemyA_off_screen   ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B13F_skip:
C - - - - - 0x00F14F 03:B13F: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x00F152 03:B142: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x00F154 03:B144: 90 03     BCC bra_B149_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x00F156 03:B146: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B149_add_sprite_magic_v2:
C - - - - - 0x00F159 03:B149: 98        TYA                            ;
C - - - - - 0x00F15A 03:B14A: 18        CLC                            ;
C - - - - - 0x00F15B 03:B14B: 6D 02 03  ADC vEnemyASpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x00F15E 03:B14E: 85 01     STA ram_0001                   ;
C - - - - - 0x00F160 03:B150: AD 03 03  LDA vEnemyASpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x00F163 03:B153: 85 02     STA ram_0002                   ;
C - - - - - 0x00F165 03:B155: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x00F168 03:B158: C9 26     CMP #$26                       ; CONSTANT - Mummy
C - - - - - 0x00F16A 03:B15A: D0 14     BNE @bra_B170_add              ; If vEnemyA != 0x26
C - - - - - 0x00F16C 03:B15C: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x00F16F 03:B15F: 29 04     AND #$04                       ; CONSTANT - 'the red reskin' status
C - - - - - 0x00F171 03:B161: F0 0D     BEQ @bra_B170_add              ; If 'the red reskin' status isn't activated
C - - - - - 0x00F173 03:B163: BD 4A 03  LDA vEnemyAJumpCounter,X       ;
C - - - - - 0x00F176 03:B166: C9 08     CMP #$08                       ;
C - - - - - 0x00F178 03:B168: 90 06     BCC @bra_B170_add              ; If vJumpCounter < 0x08 (here vJumpCounter is always 0x10)
C - - - - - 0x00F17A 03:B16A: A5 02     LDA ram_0002                   ;
C - - - - - 0x00F17C 03:B16C: 29 FC     AND #$FC                       ; filters the OAM-attributes
C - - - - - 0x00F17E 03:B16E: 85 02     STA ram_0002                   ; 0x00 -> OAM-attributes
@bra_B170_add:
C - - - - - 0x00F180 03:B170: 20 33 CE  JSR sub_CE33_add_sprite_magic  ; bank FF
C - - - - - 0x00F183 03:B173: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x00F186 03:B176: 29 22     AND #$22                       ; CONSTANT - the enemy is dying or jumping
C - - - - - 0x00F188 03:B178: C9 20     CMP #$20                       ; CONSTANT - 'the dying' status
C - - - - - 0x00F18A 03:B17A: D0 20     BNE bra_B19C_RTS               ; if 'the dying' status isn't activated
C - - - - - 0x00F18C 03:B17C: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x00F18F 03:B17F: C9 24     CMP #$24                       ; CONSTANT - Sceleton
C - - - - - 0x00F191 03:B181: D0 19     BNE bra_B19C_RTS               ; If vEnemyA != 0x24
C - - - - - 0x00F193 03:B183: BD 4A 03  LDA vEnemyAJumpCounter,X       ;
C - - - - - 0x00F196 03:B186: C9 28     CMP #$28                       ; CONSTANT - throwing bones, big radius
C - - - - - 0x00F198 03:B188: 90 12     BCC bra_B19C_RTS               ; If vJumpCounter < 0x28
C - - - - - 0x00F19A 03:B18A: A0 18     LDY #$18                       ; the offset value #1
C - - - - - 0x00F19C 03:B18C: C9 2C     CMP #$2C                       ; CONSTANT - throwing bones, small radius
C - - - - - 0x00F19E 03:B18E: B0 02     BCS @bra_B192_skip             ; If vJumpCounter >= 0x2C
C - - - - - 0x00F1A0 03:B190: A0 1A     LDY #$1A                       ; the offset value #2
; In: Register Y - sprite_magic2 (The offset by the address)
@bra_B192_skip:
C - - - - - 0x00F1A2 03:B192: 98        TYA                            ;
C - - - - - 0x00F1A3 03:B193: 18        CLC                            ;
C - - - - - 0x00F1A4 03:B194: 6D 02 03  ADC vEnemyASpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x00F1A7 03:B197: 85 01     STA ram_0001                   ;
C - - - - - 0x00F1A9 03:B199: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

bra_B19C_RTS:
C - - - - - 0x00F1AC 03:B19C: 60        RTS                            ;

; In: Register X - the enemyA number
loc_B19D_try_movements:
C D 1 - - - 0x00F1AD 03:B19D: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00F1B0 03:B1A0: 6A        ROR                                      ;
C - - - - - 0x00F1B1 03:B1A1: 90 0F     BCC bra_B1B2_right                       ; If the enemy is looking to the right
C - - - - - 0x00F1B3 03:B1A3: 20 B8 B1  JSR sub_B1B8_try_movement_on_the_left    ;
loc_B1A6_prepare_rendering_by_frame_:
C D 1 - - - 0x00F1B6 03:B1A6: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter    ;
C - - - - - 0x00F1B9 03:B1A9: BD 44 03  LDA vEnemyAFrame_Counter,X               ;
C - - - - - 0x00F1BC 03:B1AC: 0A        ASL                                      ;
C - - - - - 0x00F1BD 03:B1AD: 0A        ASL                                      ; *4
C - - - - - 0x00F1BE 03:B1AE: A8        TAY                                      ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F1BF 03:B1AF: 4C 25 B1  JMP loc_B125_prepare_rendering           ;

bra_B1B2_right:
C - - - - - 0x00F1C2 03:B1B2: 20 E8 B1  JSR sub_B1E8_try_movement_on_the_right   ;
C - - - - - 0x00F1C5 03:B1B5: 4C A6 B1  JMP loc_B1A6_prepare_rendering_by_frame_ ;

; In: Register X - the enemyA number
sub_B1B8_try_movement_on_the_left:
C - - - - - 0x00F1C8 03:B1B8: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left   ;
C - - - - - 0x00F1CB 03:B1BB: F0 08     BEQ bra_B1C5_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00F1CD 03:B1BD: 20 F5 B1  JSR sub_B1F5_has_chance                          ;
C - - - - - 0x00F1D0 03:B1C0: D0 25     BNE bra_B1E7_RTS                                 ; If we are lucky
C - - - - - 0x00F1D2 03:B1C2: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                   ;

; In: Register X - the enemyA number
bra_B1C5_try_jump_over:
C - - - - - 0x00F1D5 03:B1C5: AD 00 03  LDA vEnemyA                   ;
C - - - - - 0x00F1D8 03:B1C8: C9 26     CMP #$26                      ; CONSTANT - Mummy
C - - - - - 0x00F1DA 03:B1CA: D0 1B     BNE bra_B1E7_RTS              ; If vEnemyA != 0x26
C - - - - - 0x00F1DC 03:B1CC: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x00F1DF 03:B1CF: 29 22     AND #$22                      ; CONSTANT - the enemy is dying or jumping
C - - - - - 0x00F1E1 03:B1D1: D0 14     BNE bra_B1E7_RTS              ; If the enemy is dying or jumping
C - - - - - 0x00F1E3 03:B1D3: A9 02     LDA #$02                      ; CONSTANT - the jump
C - - - - - 0x00F1E5 03:B1D5: 20 69 B3  JSR sub_B369_change_substatus ;
C - - - - - 0x00F1E8 03:B1D8: A9 10     LDA #$10                      ;
C - - - - - 0x00F1EA 03:B1DA: 9D 4A 03  STA vEnemyAJumpCounter,X      ; Initializes a jump counter
C - - - - - 0x00F1ED 03:B1DD: A9 03     LDA #$03                      ; CONSTANT - jump by side
C - - - - - 0x00F1EF 03:B1DF: 9D 56 03  STA vEnemyAJumpType,X         ;
C - - - - - 0x00F1F2 03:B1E2: A9 00     LDA #$00                      ;
C - - - - - 0x00F1F4 03:B1E4: 9D 44 03  STA vEnemyAFrame_Counter,X    ; reset a counter
bra_B1E7_RTS:
C - - - - - 0x00F1F7 03:B1E7: 60        RTS                           ;

; In: Register X - the enemyA number
sub_B1E8_try_movement_on_the_right:
C - - - - - 0x00F1F8 03:B1E8: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right  ;
C - - - - - 0x00F1FB 03:B1EB: F0 D8     BEQ bra_B1C5_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00F1FD 03:B1ED: 20 F5 B1  JSR sub_B1F5_has_chance                          ;
C - - - - - 0x00F200 03:B1F0: D0 F5     BNE bra_B1E7_RTS                                 ; If we are lucky
C - - - - - 0x00F202 03:B1F2: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                   ;

; Out: Zero flag, 1 - if we are lucky, 0 - otherwise
sub_B1F5_has_chance:
C - - - - - 0x00F205 03:B1F5: A9 03     LDA #$03                      ; CONSTANT - 75% chance
C - - - - - 0x00F207 03:B1F7: AC 00 03  LDY vEnemyA                   ;
C - - - - - 0x00F20A 03:B1FA: C0 24     CPY #$24                      ; CONSTANT - Sceleton
C - - - - - 0x00F20C 03:B1FC: F0 02     BEQ @bra_B200_skeleton        ; If vEnemyA == 0x24
C - - - - - 0x00F20E 03:B1FE: A9 01     LDA #$01                      ; CONSTANT - 50% chance
@bra_B200_skeleton:
C - - - - - 0x00F210 03:B200: 25 2C     AND vLowCounter               ;
C - - - - - 0x00F212 03:B202: 60        RTS                           ;

loc_B203_squatting:
C - - - - - 0x00F213 03:B203: DE 4A 03  DEC vEnemyAJumpCounter,X        ;
C - - - - - 0x00F216 03:B206: F0 05     BEQ bra_B20D_skip               ; If vEnemyJumpCounter == 0x00
C - - - - - 0x00F218 03:B208: A0 0C     LDY #$0C                        ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x00F21A 03:B20A: 4C 25 B1  JMP loc_B125_prepare_rendering  ;

bra_B20D_skip:
C - - - - - 0x00F21D 03:B20D: 20 3E E3  JSR sub_E332_generate_jump_type    ;
C - - - - - 0x00F220 03:B210: BC 2C 03  LDY vEnemyAPosY,X                  ;
C - - - - - 0x00F223 03:B213: C0 BF     CPY #$BF                           ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x00F225 03:B215: 90 06     BCC @bra_B21D_skip                 ; If vEnemyPosY < 0xBF
C - - - - - 0x00F227 03:B217: 29 01     AND #$01                           ;
C - - - - - 0x00F229 03:B219: D0 02     BNE @bra_B21D_skip                 ; If vEnemyPosY is odd
C - - - - - 0x00F22B 03:B21B: A9 03     LDA #$03                           ; CONSTANT - jump by side
@bra_B21D_skip:
C - - - - - 0x00F22D 03:B21D: A8        TAY                                ; Y <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x00F22E 03:B21E: B9 58 E3  LDA tbl_E358_init_counter,Y        ;
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_B221_activate_jump_status:
C D 1 - - - 0x00F231 03:B221: 9D 4A 03  STA vEnemyAJumpCounter,X                ;
C - - - - - 0x00F234 03:B224: 98        TYA                                     ;
C - - - - - 0x00F235 03:B225: 9D 56 03  STA vEnemyAJumpType,X                   ;
C - - - - - 0x00F238 03:B228: A9 02     LDA #$02                                ; CONSTANT - the jump
C - - - - - 0x00F23A 03:B22A: 20 69 B3  JSR sub_B369_change_substatus           ;
C - - - - - 0x00F23D 03:B22D: A9 00     LDA #$00                                ;
C - - - - - 0x00F23F 03:B22F: 9D 44 03  STA vEnemyAFrame_Counter,X              ; reset a counter
loc_B232_jump:
C - - - - - 0x00F242 03:B232: BD 2C 03  LDA vEnemyAPosY,X                       ;
C - - - - - 0x00F245 03:B235: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00F247 03:B237: B0 1E     BCS bra_B257_skip                       ; If PosY >= 0xDF
C - - - - - 0x00F249 03:B239: BD 56 03  LDA vEnemyAJumpType,X                   ;
C - - - - - 0x00F24C 03:B23C: C9 03     CMP #$03                                ; CONSTANT - jump by side
C - - - - - 0x00F24E 03:B23E: D0 17     BNE bra_B257_skip                       ; If vJumpType != 0x03
C - - - - - 0x00F250 03:B240: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x00F253 03:B243: 6A        ROR                                     ;
C - - - - - 0x00F254 03:B244: 90 0A     BCC bra_B250_right                      ; If the enemy is looking to the right
C - - - - - 0x00F256 03:B246: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00F258 03:B248: D0 0A     BNE bra_B254_invert                     ; If the enemy is dying
bra_B24A_invert:
C - - - - - 0x00F25A 03:B24A: 20 B8 B1  JSR sub_B1B8_try_movement_on_the_left   ;
C - - - - - 0x00F25D 03:B24D: 4C 57 B2  JMP loc_B257_continue                   ;

bra_B250_right:
C - - - - - 0x00F260 03:B250: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00F262 03:B252: D0 F6     BNE bra_B24A_invert                     ; If the enemy is dying
bra_B254_invert:
C - - - - - 0x00F264 03:B254: 20 E8 B1  JSR sub_B1E8_try_movement_on_the_right  ;
bra_B257_skip:
loc_B257_continue:
C D 1 - - - 0x00F267 03:B257: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00F26A 03:B25A: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x00F26D 03:B25D: 18        CLC                                     ;
C - - - - - 0x00F26E 03:B25E: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x00F271 03:B261: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x00F273 03:B263: 90 09     BCC @bra_B26E_skip                      ; If Register A < 0xDF
C - - - - - 0x00F275 03:B265: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x00F277 03:B267: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00F279 03:B269: 90 02     BCC @bra_B26D_skip                      ; If Register A < 0xF8
C - - - - - 0x00F27B 03:B26B: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_B26D_skip:
C - - - - - 0x00F27D 03:B26D: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_B26E_skip:
C - - - - - 0x00F27E 03:B26E: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x00F281 03:B271: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00F284 03:B274: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x00F286 03:B276: 90 4D     BCC bra_B2C5_skip_for_maze              ; If vJumpCounter < 0x18
C - - - - - 0x00F288 03:B278: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00F28A 03:B27A: 90 05     BCC bra_B281_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x00F28C 03:B27C: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x00F28E 03:B27E: 4C 25 B1  JMP loc_B125_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_B281_skip:
C - - - - - 0x00F291 03:B281: 85 00     STA ram_0000                                 ;
C - - - - - 0x00F293 03:B283: E6 00     INC ram_0000                                 ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x00F295 03:B285: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y     ;
C - - - - - 0x00F298 03:B288: F0 17     BEQ bra_B2A1_inc                             ; If the collisions by Y-position doesn't exist
C - - - - - 0x00F29A 03:B28A: C9 02     CMP #$02                                     ; CONSTANT - a weak collision
C - - - - - 0x00F29C 03:B28C: D0 07     BNE @bra_B295_strong                         ; If the collision isn't weak
C - - - - - 0x00F29E 03:B28E: BD 56 03  LDA vEnemyAJumpType,X                        ;
C - - - - - 0x00F2A1 03:B291: C9 04     CMP #$04                                     ; CONSTANT - jump off after the squatting
C - - - - - 0x00F2A3 03:B293: F0 0C     BEQ bra_B2A1_inc                             ; If the enemyA jumping off
@bra_B295_strong:
C - - - - - 0x00F2A5 03:B295: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x00F2A8 03:B298: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x00F2AB 03:B29B: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x00F2AD 03:B29D: D0 32     BNE bra_B2D1_start_dying                     ; If the enemy is dying
C - - - - - 0x00F2AF 03:B29F: F0 0A     BEQ bra_B2AB_clear                           ; Always true

; In: Register X - the enemyA number
bra_B2A1_inc:
C - - - - - 0x00F2B1 03:B2A1: FE 4A 03  INC vEnemyAJumpCounter,X                     ;
C - - - - - 0x00F2B4 03:B2A4: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x00F2B6 03:B2A6: DD 4A 03  CMP vEnemyAJumpCounter,X                     ;
C - - - - - 0x00F2B9 03:B2A9: B0 03     BCS bra_B2AE_skip                            ; If vJumpCounter <= 0x2F, i.e. less than maximum
bra_B2AB_clear:
C - - - - - 0x00F2BB 03:B2AB: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; reassign
bra_B2AE_skip:
C - - - - - 0x00F2BE 03:B2AE: A0 10     LDY #$10                                     ; an input parameter - sprite_magic2 (a jump frame, skeleton)
C - - - - - 0x00F2C0 03:B2B0: AD 00 03  LDA vEnemyA                                  ;
C - - - - - 0x00F2C3 03:B2B3: C9 26     CMP #$26                                     ; CONSTANT - Mummy
C - - - - - 0x00F2C5 03:B2B5: D0 02     BNE @bra_B2B9_skip                           ; If vEnemyA != 0x26
C - - - - - 0x00F2C7 03:B2B7: A0 0C     LDY #$0C                                     ; an input parameter - sprite_magic2 (a jump frame, mummy)
@bra_B2B9_skip:
C - - - - - 0x00F2C9 03:B2B9: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x00F2CC 03:B2BC: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x00F2CE 03:B2BE: D0 02     BNE @bra_B2C2_skip                           ; If the enemy is dying
C - - - - - 0x00F2D0 03:B2C0: A0 08     LDY #$08                                     ; an input parameter - sprite_magic2 (a jump frame)
@bra_B2C2_skip:
C - - - - - 0x00F2D2 03:B2C2: 4C 25 B1  JMP loc_B125_prepare_rendering               ;

bra_B2C5_skip_for_maze:
C - - - - - 0x00F2D5 03:B2C5: 20 D5 D7  JSR sub_D7D5_check_enemyA_collision_by_Y_in_maze  ;
C - - - - - 0x00F2D8 03:B2C8: D0 D7     BNE bra_B2A1_inc                                  ; If the strong collision isn't exist
C - - - - - 0x00F2DA 03:B2CA: A9 18     LDA #$18                                          ; CONSTANT - a maximum amplitude
C - - - - - 0x00F2DC 03:B2CC: 9D 4A 03  STA vEnemyAJumpCounter,X                          ; assign a maximum amplitude
C - - - - - 0x00F2DF 03:B2CF: D0 D0     BNE bra_B2A1_inc                                  ; Always true

; In: Register X - the enemyA number
bra_B2D1_start_dying:
C - - - - - 0x00F2E1 03:B2D1: A9 30     LDA #$30                           ; initializes a jump counter
C - - - - - 0x00F2E3 03:B2D3: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
loc_B2D6_dying:
C - - - - - 0x00F2E6 03:B2D6: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x00F2E9 03:B2D9: C9 26     CMP #$26                           ; CONSTANT - Mummy
C - - - - - 0x00F2EB 03:B2DB: F0 3C     BEQ bra_B319_skip                  ; If vEnemyA == 0x26
C - - - - - 0x00F2ED 03:B2DD: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F2F0 03:B2E0: F0 0D     BEQ bra_B2EF_recover               ; If vJumpCounter == 0x00
C - - - - - 0x00F2F2 03:B2E2: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x00F2F5 03:B2E5: D0 25     BNE bra_B30C_knock_out             ; If vJumpCounter != 0x00
C - - - - - 0x00F2F7 03:B2E7: BD 26 03  LDA vEnemyARecoverCounter,X        ;
C - - - - - 0x00F2FA 03:B2EA: 10 03     BPL bra_B2EF_recover               ; If the recover counter is possible
C - - - - - 0x00F2FC 03:B2EC: 4C 7F D7  JMP loc_D77F_free_enemyA           ;

bra_B2EF_recover:
C - - - - - 0x00F2FF 03:B2EF: FE 26 03  INC vEnemyARecoverCounter,X        ; updates the counter value
C - - - - - 0x00F302 03:B2F2: BD 26 03  LDA vEnemyARecoverCounter,X        ;
C - - - - - 0x00F305 03:B2F5: C9 20     CMP #$20                           ; CONSTANT - full time of the recover
C - - - - - 0x00F307 03:B2F7: 90 05     BCC @bra_B2FE_skip                 ; If vRecoverCounter < 0x20
C - - - - - 0x00F309 03:B2F9: A9 00     LDA #$00                           ; clear substatus
C - - - - - 0x00F30B 03:B2FB: 20 69 B3  JSR sub_B369_change_substatus      ;
@bra_B2FE_skip:
C - - - - - 0x00F30E 03:B2FE: A0 10     LDY #$10                           ; the offset value #1
C - - - - - 0x00F310 03:B300: BD 26 03  LDA vEnemyARecoverCounter,X        ;
C - - - - - 0x00F313 03:B303: C9 10     CMP #$10                           ; CONSTANT - partly rising (from knees)
C - - - - - 0x00F315 03:B305: 90 02     BCC bra_B309_to_render             ; If vRecoverCounter < 0x10
C - - - - - 0x00F317 03:B307: A0 0C     LDY #$0C                           ; the offset value #2
bra_B309_to_render:
C - - - - - 0x00F319 03:B309: 4C 25 B1  JMP loc_B125_prepare_rendering     ;

bra_B30C_knock_out:
C - - - - - 0x00F31C 03:B30C: A0 14     LDY #$14                           ; the offset value #3
C - - - - - 0x00F31E 03:B30E: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F321 03:B311: C9 28     CMP #$28                           ; CONSTANT - partly rising (from the floor)
C - - - - - 0x00F323 03:B313: 90 F4     BCC bra_B309_to_render             ; If vJumpCounter < 0x28
C - - - - - 0x00F325 03:B315: A0 10     LDY #$10                           ; the offset value #1
C - - - - - 0x00F327 03:B317: D0 F0     BNE bra_B309_to_render             ; Always true

bra_B319_skip:
C - - - - - 0x00F329 03:B319: DE 4A 03  DEC vEnemyAJumpCounter,X          ; updates the counter value
C - - - - - 0x00F32C 03:B31C: D0 03     BNE bra_B321_death_rendering      ; If vJumpCounter != 0x00
C - - - - - 0x00F32E 03:B31E: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

bra_B321_death_rendering:
C - - - - - 0x00F331 03:B321: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x00F334 03:B324: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x00F337 03:B327: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the vJumpCounter)
C - - - - - 0x00F338 03:B328: B9 2E B3  LDA tbl_B32E_frames_,Y                ;
C - - - - - 0x00F33B 03:B32B: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F33C 03:B32C: D0 DB     BNE bra_B309_to_render                ; Always true

tbl_B32E_frames_:
- D 1 - - - 0x00F33E 03:B32E: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x00F33F 03:B32F: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x00F340 03:B330: 10        .byte $10   ; damage frame

; In: Register X - the enemyA number
sub_B331_try_to_change_self:
C - - - - - 0x00F341 03:B331: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x00F344 03:B334: C9 26     CMP #$26                           ; CONSTANT - Mummy
C - - - - - 0x00F346 03:B336: F0 3E     BEQ bra_B376_try_change_direction  ; If vEnemyA == 0x26
C - - - - - 0x00F348 03:B338: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F34B 03:B33B: F0 0A     BEQ @bra_B347_skip                 ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x00F34D 03:B33D: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x00F350 03:B340: D0 33     BNE bra_B375_RTS                   ; If vEnemyAJumpCounter != 0x00
C - - - - - 0x00F352 03:B342: A9 00     LDA #$00                           ; clear substatus
C - - - - - 0x00F354 03:B344: 20 69 B3  JSR sub_B369_change_substatus      ;
@bra_B347_skip:
C - - - - - 0x00F357 03:B347: 20 76 B3  JSR sub_B376_try_change_direction  ;
C - - - - - 0x00F35A 03:B34A: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x00F35C 03:B34C: 29 3F     AND #$3F                           ;
C - - - - - 0x00F35E 03:B34E: D0 25     BNE bra_B375_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x00F360 03:B350: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00F363 03:B353: 6A        ROR                                ;
C - - - - - 0x00F364 03:B354: B0 1F     BCS bra_B375_RTS                   ; 50% chance branch
C - - - - - 0x00F366 03:B356: 29 07     AND #$07                           ;
C - - - - - 0x00F368 03:B358: A8        TAY                                ; y is {0x00, ... , 0x07}
C - - - - - 0x00F369 03:B359: B9 F3 AF  LDA tbl_AFF3_status_flags,Y        ;
C - - - - - 0x00F36C 03:B35C: 85 05     STA ram_0005                       ;
C - - - - - 0x00F36E 03:B35E: F0 0B     BEQ bra_B36B_change_substatus_ex   ; If status flag == 0x00
C - - - - - 0x00F370 03:B360: C9 10     CMP #$10                           ; !(WHY?) - copy-paste error? (see sub_A2EC_try_to_change_self, bank 06, page 1)
C - - - - - 0x00F372 03:B362: A9 20     LDA #$20                           ; An initialize jump value for 'squatting' and 'stop'
C - - - - - 0x00F374 03:B364: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F377 03:B367: D0 02     BNE bra_B36B_change_substatus_ex   ; Always true

; In: Register A - a new status
sub_B369_change_substatus:
C - - - - - 0x00F379 03:B369: 85 05     STA ram_0005             ;
; In: $0005 - a new status
bra_B36B_change_substatus_ex:
C - - - - - 0x00F37B 03:B36B: BD 20 03  LDA vEnemyAStatus,X      ;
C - - - - - 0x00F37E 03:B36E: 29 C1     AND #$C1                 ;
C - - - - - 0x00F380 03:B370: 05 05     ORA ram_0005             ;
C - - - - - 0x00F382 03:B372: 9D 20 03  STA vEnemyAStatus,X      ;
bra_B375_RTS:
C - - - - - 0x00F385 03:B375: 60        RTS                      ;

; In: Register X - the enemyA number
bra_B376_try_change_direction:
sub_B376_try_change_direction:
C - - - - - 0x00F386 03:B376: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6BD
C - - - - - 0x00F388 03:B378: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x00F38B 03:B37B: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x00F38D 03:B37D: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00F390 03:B380: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00F392 03:B382: 05 05     ORA ram_0005                             ;
C - - - - - 0x00F394 03:B384: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x00F397 03:B387: 60        RTS                                      ;

; 1 byte - position Y
; 2 byte - position X
; 3 byte - height
; 4 byte - width
tbl_B388_hitboxes:
- D 1 - - - 0x00F398 03:B388: 00        .byte $00, $00, $20, $04 ; All (the enemy himself)
- D 1 - - - 0x00F39C 03:B38C: 00        .byte $00, $00, $18, $04 ; All (the enemy himself)
- D 1 - - - 0x00F3A0 03:B390: F5        .byte $F5, $0C, $0A, $08
- D 1 - - - 0x00F3A4 03:B394: F8        .byte $F8, $0C, $0A, $08
- D 1 - - - 0x00F3A8 03:B398: F0        .byte $F0, $0C, $0A, $08
- D 1 - - - 0x00F3AC 03:B39C: F3        .byte $F3, $0C, $0A, $08
- D 1 - - - 0x00F3B0 03:B3A0: F5        .byte $F5, $F4, $0A, $08 ; Girl with sword (the sword)
- D 1 - - - 0x00F3B4 03:B3A4: F8        .byte $F8, $F4, $0A, $08 ; Girl with sword (the sword)
- D 1 - - - 0x00F3B8 03:B3A8: F0        .byte $F0, $F4, $0A, $08 ; Girl with sword (the sword)
- D 1 - - - 0x00F3BC 03:B3AC: F3        .byte $F3, $F4, $0A, $08 ; Girl with sword (the sword)
- D - - - - 0x00F3C0 03:B3B0: F0        .byte $F0, $08, $08, $08
- D - - - - 0x00F3C4 03:B3B4: F0        .byte $F0, $F8, $08, $08
- D 1 - - - 0x00F3C8 03:B3B8: E2        .byte $E2, $04, $0A, $08
- D 1 - - - 0x00F3CC 03:B3BC: F6        .byte $F6, $0C, $0A, $08
- D 1 - - - 0x00F3D0 03:B3C0: FE        .byte $FE, $0C, $0A, $08
- D 1 - - - 0x00F3D4 03:B3C4: F3        .byte $F3, $0C, $0A, $08
- D - - - - 0x00F3D8 03:B3C8: FB        .byte $FB, $0C, $0A, $08
- D - - - - 0x00F3DC 03:B3CC: E2        .byte $E2, $FC, $0A, $08
- D 1 - - - 0x00F3E0 03:B3D0: F6        .byte $F6, $F4, $0A, $08
- D 1 - - - 0x00F3E4 03:B3D4: FE        .byte $FE, $F4, $0A, $08 ; Egyptian with a sword (the sword)
- D 1 - - - 0x00F3E8 03:B3D8: F3        .byte $F3, $F4, $0A, $08 ; Egyptian with a sword (the sword)
- D 1 - - - 0x00F3EC 03:B3DC: FB        .byte $FB, $F4, $0A, $08 ; Egyptian with a sword (the sword)

tbl_B3E0_status_flags:
- D 1 - - - 0x00F3F0 03:B3E0: 00        .byte $00   ; Girl in red, nothing
- D 1 - - - 0x00F3F1 03:B3E1: 00        .byte $00   ; 
- D 1 - - - 0x00F3F2 03:B3E2: 00        .byte $00   ; 
- D 1 - - - 0x00F3F3 03:B3E3: 10        .byte $10   ; Girl in red, status 'squatting'
- D 1 - - - 0x00F3F4 03:B3E4: 10        .byte $10   ; 
- D 1 - - - 0x00F3F5 03:B3E5: 08        .byte $08   ; Girl in red, status 'close contact'
- D 1 - - - 0x00F3F6 03:B3E6: 08        .byte $08   ; 
- D 1 - - - 0x00F3F7 03:B3E7: 08        .byte $08   ; 
- D 1 - - - 0x00F3F8 03:B3E8: 00        .byte $00   ; Egyptian with a sword, nothing
- D 1 - - - 0x00F3F9 03:B3E9: 00        .byte $00   ;
- D 1 - - - 0x00F3FA 03:B3EA: 00        .byte $00   ;
- D 1 - - - 0x00F3FB 03:B3EB: 10        .byte $10   ; Egyptian with a sword, status 'squatting'
- D 1 - - - 0x00F3FC 03:B3EC: 10        .byte $10   ;
- D 1 - - - 0x00F3FD 03:B3ED: 0C        .byte $0C   ; Egyptian with a sword, status 'close contact'
- D 1 - - - 0x00F3FE 03:B3EE: 0C        .byte $0C   ;
- D 1 - - - 0x00F3FF 03:B3EF: 0C        .byte $0C   ;
 
loc_B3F0_enemy:
C D 1 - - - 0x00F400 03:B3F0: A2 01     LDX #$01                            ;
C - - - - - 0x00F402 03:B3F2: 86 1A     STX vTempCounter1A                  ; set loop counter (the enemyA number)
bra_B3F4_loop:                                                              ; loop by vTempCounter1A (2 times)
C - - - - - 0x00F404 03:B3F4: A6 1A     LDX vTempCounter1A                  ; prepares an input parameter
C - - - - - 0x00F406 03:B3F6: 20 05 B5  JSR sub_B505_status_behavior        ;
C - - - - - 0x00F409 03:B3F9: A6 1A     LDX vTempCounter1A                  ; X <~ the enemyA number
C - - - - - 0x00F40B 03:B3FB: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x00F40E 03:B3FE: C9 E0     CMP #$E0                            ;
C - - - - - 0x00F410 03:B400: B0 51     BCS bra_B453_next                   ; If vEnemyAStatus >= 0xE0
C - - - - - 0x00F412 03:B402: C9 C0     CMP #$C0                            ;
C - - - - - 0x00F414 03:B404: 90 4D     BCC bra_B453_next                   ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x00F416 03:B406: 20 DD B4  JSR sub_B4DD_prepare_hitbox         ;
C - - - - - 0x00F419 03:B409: 20 60 D6  JSR sub_D660_is_bomb_exploding      ;
C - - - - - 0x00F41C 03:B40C: B0 13     BCS bra_B421_hit                    ; If the bomb is exploding
C - - - - - 0x00F41E 03:B40E: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x00F420 03:B410: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x00F422 03:B412: F0 13     BEQ bra_B427_check_bullets          ; If the character isn't Goemon
C - - - - - 0x00F424 03:B414: 20 06 D6  JSR sub_D606_have_intersect_sword   ;
C - - - - - 0x00F427 03:B417: B0 08     BCS bra_B421_hit                    ; If the intersect exists
C - - - - - 0x00F429 03:B419: A6 1A     LDX vTempCounter1A                  ; X <~ the enemyA number
C - - - - - 0x00F42B 03:B41B: 20 9F B4  JSR sub_B49F_prepare_sword_hitbox   ;
C - - - - - 0x00F42E 03:B41E: 4C 50 B4  JMP loc_B450_no_intersect           ;

bra_B421_hit:
C - - - - - 0x00F431 03:B421: 20 62 B4  JSR sub_B462_hit                    ;
C - - - - - 0x00F434 03:B424: 4C 53 B4  JMP loc_B453_next                   ;

bra_B427_check_bullets:
C - - - - - 0x00F437 03:B427: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_B429_loop:                                                             ; loop by x
C - - - - - 0x00F439 03:B429: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00F43C 03:B42C: B0 2A     BCS bra_B458_bullet_hit             ; If the intersect is exist
C - - - - - 0x00F43E 03:B42E: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00F43F 03:B42F: 10 F8     BPL @bra_B429_loop                  ; If Register X >= 0x00
C - - - - - 0x00F441 03:B431: A6 1A     LDX vTempCounter1A                  ; X <~ the enemyA number
C - - - - - 0x00F443 03:B433: 20 9F B4  JSR sub_B49F_prepare_sword_hitbox   ;
C - - - - - 0x00F446 03:B436: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x00F449 03:B439: C9 11     CMP #$11                            ; CONSTANT - Girl in red, in the castle
C - - - - - 0x00F44B 03:B43B: F0 13     BEQ bra_B450_no_intersect           ; If vEnemyA == 0x11
C - - - - - 0x00F44D 03:B43D: A6 7A     LDX vBulletCount                    ; set loop counter
bra_B43F_loop:                                                              ; loop by x
C - - - - - 0x00F44F 03:B43F: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00F452 03:B442: 90 09     BCC @bra_B44D_next                  ; If the intersect doesn't exist
C - - - - - 0x00F454 03:B444: A9 10     LDA #$10                            ; The sound of a bullet hitting an armored enemy
C - - - - - 0x00F456 03:B446: 20 20 C4  JSR sub_C420_add_sound_effect       ; bank FF
C - - - - - 0x00F459 03:B449: A9 00     LDA #$00                            ;
C - - - - - 0x00F45B 03:B44B: 95 8F     STA vBulletStatus,X                 ; clear
@bra_B44D_next:
C - - - - - 0x00F45D 03:B44D: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00F45E 03:B44E: 10 EF     BPL bra_B43F_loop                   ; If Register X >= 0x00
bra_B450_no_intersect:
loc_B450_no_intersect:
C D 1 - - - 0x00F460 03:B450: 20 62 D5  JSR sub_D562_has_character_damage   ;
loc_B453_next:
bra_B453_next:
C D 1 - - - 0x00F463 03:B453: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x00F465 03:B455: 10 9D     BPL bra_B3F4_loop                   ; If vTempCounter1A >= 0
C - - - - - 0x00F467 03:B457: 60        RTS                                 ;

; In: Register X - the number of the bullet
bra_B458_bullet_hit:
C - - - - - 0x00F468 03:B458: A9 00     LDA #$00                  ;
C - - - - - 0x00F46A 03:B45A: 95 8F     STA vBulletStatus,X       ; clear
C - - - - - 0x00F46C 03:B45C: 20 62 B4  JSR sub_B462_hit          ;
C - - - - - 0x00F46F 03:B45F: 4C 53 B4  JMP loc_B453_next         ;

sub_B462_hit:
C - - - - - 0x00F472 03:B462: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x00F474 03:B464: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x00F476 03:B466: 20 C5 B7  JSR sub_B7C5_change_substatus  ;
C - - - - - 0x00F479 03:B469: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x00F47B 03:B46B: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x00F47E 03:B46E: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x00F480 03:B470: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x00F483 03:B473: A9 00     LDA #$00                       ;
C - - - - - 0x00F485 03:B475: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x00F488 03:B478: 60        RTS                            ;

; In: Register A - an enemyA status
sub_B479_try_to_select_next_offset:
C - - - - - 0x00F489 03:B479: 29 10     AND #$10                  ; CONSTANT - close contact (see vEnemyAStatus)
C - - - - - 0x00F48B 03:B47B: F0 04     BEQ @bra_B481_RTS         ; If a status doesn't contain K flag (see vEnemyAStatus)
C - - - - - 0x00F48D 03:B47D: C8        INY                       ;
C - - - - - 0x00F48E 03:B47E: C8        INY                       ;
C - - - - - 0x00F48F 03:B47F: C8        INY                       ;
C - - - - - 0x00F490 03:B480: C8        INY                       ;
@bra_B481_RTS:
C - - - - - 0x00F491 03:B481: 60        RTS                       ;

bra_B482_egyptian:
C - - - - - 0x00F492 03:B482: A0 30     LDY #$30                               ; the offset value #1
C - - - - - 0x00F494 03:B484: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00F497 03:B487: 48        PHA                                    ; store a status
C - - - - - 0x00F498 03:B488: 29 04     AND #$04                               ; CONSTANT - close contact, extra
C - - - - - 0x00F49A 03:B48A: D0 02     BNE @bra_B48E_skip                     ; If vEnemyAStatus contains L flag (see vEnemyAStatus, egyptian) 
C - - - - - 0x00F49C 03:B48C: A0 34     LDY #$34                               ; the offset value #2
@bra_B48E_skip:
C - - - - - 0x00F49E 03:B48E: BD 26 03  LDA vEnemyASwordFrame_,X               ;
C - - - - - 0x00F4A1 03:B491: 6A        ROR                                    ;
C - - - - - 0x00F4A2 03:B492: 90 02     BCC @bra_B496_skip                     ; If frame == 0x00
C - - - - - 0x00F4A4 03:B494: A0 38     LDY #$38                               ; the offset value #3
@bra_B496_skip:
C - - - - - 0x00F4A6 03:B496: 68        PLA                                    ; retrieve a status (see $B487)
C - - - - - 0x00F4A7 03:B497: 48        PHA                                    ; store a status
C - - - - - 0x00F4A8 03:B498: 20 79 B4  JSR sub_B479_try_to_select_next_offset ;
C - - - - - 0x00F4AB 03:B49B: A9 18     LDA #$18                               ; an increase #1
C - - - - - 0x00F4AD 03:B49D: D0 1E     BNE bra_B4BD_adding                    ; Always true

sub_B49F_prepare_sword_hitbox:
C - - - - - 0x00F4AF 03:B49F: AD 00 03  LDA vEnemyA                            ;
C - - - - - 0x00F4B2 03:B4A2: C9 11     CMP #$11                               ; CONSTANT - Girl in red, in the castle
C - - - - - 0x00F4B4 03:B4A4: F0 24     BEQ bra_B4CA_with_no_sword             ; If vEnemyA == 0x11
C - - - - - 0x00F4B6 03:B4A6: C9 36     CMP #$36                               ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F4B8 03:B4A8: F0 D8     BEQ bra_B482_egyptian                  ; If vEnemyA == 0x36
C - - - - - 0x00F4BA 03:B4AA: A0 08     LDY #$08                               ; the offset value #4
C - - - - - 0x00F4BC 03:B4AC: BD 26 03  LDA vEnemyASwordFrame_,X               ;
C - - - - - 0x00F4BF 03:B4AF: 6A        ROR                                    ;
C - - - - - 0x00F4C0 03:B4B0: 90 02     BCC @bra_B4B4_skip                     ; If frame == 0x00
C - - - - - 0x00F4C2 03:B4B2: A0 10     LDY #$10                               ; the offset value #5
@bra_B4B4_skip:
C - - - - - 0x00F4C4 03:B4B4: BD 20 03  LDA vEnemyAStatus,X                    ; prepares an input parameter
C - - - - - 0x00F4C7 03:B4B7: 48        PHA                                    ; store a status
C - - - - - 0x00F4C8 03:B4B8: 20 79 B4  JSR sub_B479_try_to_select_next_offset ;
C - - - - - 0x00F4CB 03:B4BB: A9 10     LDA #$10                               ; an increase #2
; In: Register A - an increase for an offset
bra_B4BD_adding:
C - - - - - 0x00F4CD 03:B4BD: 85 00     STA ram_0000                           ;
C - - - - - 0x00F4CF 03:B4BF: 68        PLA                                    ; retrieve a status (see $B4B7)
C - - - - - 0x00F4D0 03:B4C0: 6A        ROR                                    ;
C - - - - - 0x00F4D1 03:B4C1: 90 25     BCC bra_B4E8_assign_hitbox             ; If the enemy is looking to the right
C - - - - - 0x00F4D3 03:B4C3: 98        TYA                                    ;
C - - - - - 0x00F4D4 03:B4C4: 18        CLC                                    ;
C - - - - - 0x00F4D5 03:B4C5: 65 00     ADC ram_0000                           ;
C - - - - - 0x00F4D7 03:B4C7: A8        TAY                                    ; Y <~ Y + an increase
C - - - - - 0x00F4D8 03:B4C8: D0 1E     BNE bra_B4E8_assign_hitbox             ; Alway true (Y > 0x00)

bra_B4CA_with_no_sword:
C - - - - - 0x00F4DA 03:B4CA: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00F4DD 03:B4CD: 29 04     AND #$04                               ; CONSTANT - ??? (not used)
C - - - - - 0x00F4DF 03:B4CF: F0 33     BEQ bra_B504_RTS                       ; If vEnemyAStatus contains L flag (see vEnemyAStatus, girl in red)
C - - - - - 0x00F4E1 03:B4D1: A0 28     LDY #$28                               ; !(UNUSED), the offset value #6
C - - - - - 0x00F4E3 03:B4D3: BD 20 03  LDA vEnemyAStatus,X                    ; !(UNUSED)
C - - - - - 0x00F4E6 03:B4D6: 6A        ROR                                    ; !(UNUSED)
C - - - - - 0x00F4E7 03:B4D7: 90 02     BCC @bra_B4DB_skip                     ; !(UNUSED), If the enemy is looking to the right
C - - - - - 0x00F4E9 03:B4D9: A0 2C     LDY #$2C                               ; !(UNUSED), the offset value #7
@bra_B4DB_skip:
C - - - - - 0x00F4EB 03:B4DB: D0 0B     BNE bra_B4E8_assign_hitbox             ; Always true

sub_B4DD_prepare_hitbox:
C - - - - - 0x00F4ED 03:B4DD: A0 00     LDY #$00                     ; the offset value #1
C - - - - - 0x00F4EF 03:B4DF: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00F4F2 03:B4E2: 29 10     AND #$10                     ; CONSTANT - close contact (see vEnemyAStatus)
C - - - - - 0x00F4F4 03:B4E4: F0 02     BEQ bra_B4E8_assign_hitbox   ; If a status doesn't contain K flag (see vEnemyAStatus)
C - - - - - 0x00F4F6 03:B4E6: A0 04     LDY #$04                     ; the offset value #2
; In: Register Y - the hitbox offset
bra_B4E8_assign_hitbox:
C - - - - - 0x00F4F8 03:B4E8: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x00F4FB 03:B4EB: 18        CLC                          ;
C - - - - - 0x00F4FC 03:B4EC: 79 88 B3  ADC tbl_B388_hitboxes,Y      ;
C - - - - - 0x00F4FF 03:B4EF: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x00F501 03:B4F1: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x00F504 03:B4F4: 18        CLC                          ;
C - - - - - 0x00F505 03:B4F5: 79 89 B3  ADC tbl_B388_hitboxes + 1,Y  ;
C - - - - - 0x00F508 03:B4F8: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x00F50A 03:B4FA: B9 8A B3  LDA tbl_B388_hitboxes + 2,Y  ;
C - - - - - 0x00F50D 03:B4FD: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x00F50F 03:B4FF: B9 8B B3  LDA tbl_B388_hitboxes + 3,Y  ;
C - - - - - 0x00F512 03:B502: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_B504_RTS:
C - - - - - 0x00F514 03:B504: 60        RTS                          ;

sub_B505_status_behavior:
C - - - - - 0x00F515 03:B505: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00F518 03:B508: 10 FA     BPL bra_B504_RTS                          ; If the status isn't used
C - - - - - 0x00F51A 03:B50A: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00F51D 03:B50D: 4A        LSR                                       ;
C - - - - - 0x00F51E 03:B50E: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00F521 03:B511: C3 B6     .addr loc_B6C4_jump - 1       ; 0x02
- D 1 - I - 0x00F523 03:B513: 1E B5     .addr loc_B51F_main - 1       ; 0x04
- D 1 - I - 0x00F525 03:B515: 1E B5     .addr loc_B51F_main - 1       ; 0x08
- D 1 - I - 0x00F527 03:B517: 94 B6     .addr loc_B695_squatting - 1  ; 0x10
- D 1 - I - 0x00F529 03:B519: 6A B7     .addr loc_B76B_dying - 1      ; 0x20
- D 1 - I - 0x00F52B 03:B51B: 1E B5     .addr loc_B51F_main - 1       ; 0x40
- D 1 - I - 0x00F52D 03:B51D: 1E B5     .addr loc_B51F_main - 1       ; 0x80

loc_B51F_main:
C - - - - - 0x00F52F 03:B51F: BD 2C 03  LDA vEnemyAPosY,X                          ;
C - - - - - 0x00F532 03:B522: 85 00     STA ram_0000                               ;
C - - - - - 0x00F534 03:B524: E6 00     INC ram_0000                               ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x00F536 03:B526: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y   ;
C - - - - - 0x00F539 03:B529: D0 07     BNE bra_B532_skip                          ; If the collisions by Y-position exists
C - - - - - 0x00F53B 03:B52B: A9 1C     LDA #$1C                                   ; CONSTANT - a jump counter value
C - - - - - 0x00F53D 03:B52D: A0 02     LDY #$02                                   ; CONSTANT - jumping off, free fall
C - - - - - 0x00F53F 03:B52F: 4C B3 B6  JMP loc_B6B3_activate_jump_status          ;

bra_B532_skip:
C - - - - - 0x00F542 03:B532: 20 84 B7  JSR sub_B784_try_to_change_self   ;
C - - - - - 0x00F545 03:B535: AD 00 03  LDA vEnemyA                       ;
C - - - - - 0x00F548 03:B538: C9 36     CMP #$36                          ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F54A 03:B53A: D0 1A     BNE bra_B556_skip                 ; If vEnemyA != 0x36
C - - - - - 0x00F54C 03:B53C: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x00F54F 03:B53F: 29 0C     AND #$0C                          ; CONSTANT - close contact + extra (for egyptian)
C - - - - - 0x00F551 03:B541: F0 13     BEQ bra_B556_skip                 ; If vEnemyAStatus doesn't contains K,L flags
C - - - - - 0x00F553 03:B543: A9 01     LDA #$01                          ; sword frame #1
C - - - - - 0x00F555 03:B545: BC 4A 03  LDY vEnemyAJumpCounter,X          ;
C - - - - - 0x00F558 03:B548: C0 20     CPY #$20                          ; CONSTANT - sword swing value
C - - - - - 0x00F55A 03:B54A: 90 02     BCC @bra_B54E_skip                ; If vJumpCounter < 0x20
C - - - - - 0x00F55C 03:B54C: A9 00     LDA #$00                          ; sword frame #2
@bra_B54E_skip:
C - - - - - 0x00F55E 03:B54E: 9D 26 03  STA vEnemyASwordFrame_,X          ;
C - - - - - 0x00F561 03:B551: A0 00     LDY #$00                          ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F563 03:B553: 4C 9E B5  JMP loc_B59E_prepare_rendering    ;

bra_B556_skip:
C - - - - - 0x00F566 03:B556: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00F568 03:B558: 29 0F     AND #$0F                          ;
C - - - - - 0x00F56A 03:B55A: D0 14     BNE @bra_B570_skip                ; Branch if vLowCounter doesn't multiple of 16 (93.75% chance)
C - - - - - 0x00F56C 03:B55C: AD 00 03  LDA vEnemyA                       ;
C - - - - - 0x00F56F 03:B55F: C9 11     CMP #$11                          ; CONSTANT - Girl in red, in the castle
C - - - - - 0x00F571 03:B561: F0 05     BEQ @bra_B568_xor                 ; If vEnemyA == 0x11
C - - - - - 0x00F573 03:B563: A9 31     LDA #$31                          ; sound of fist swings
C - - - - - 0x00F575 03:B565: 20 20 C4  JSR sub_C420_add_sound_effect     ; bank FF
@bra_B568_xor:
C - - - - - 0x00F578 03:B568: BD 26 03  LDA vEnemyASwordFrame_,X          ;
C - - - - - 0x00F57B 03:B56B: 49 01     EOR #$01                          ;
C - - - - - 0x00F57D 03:B56D: 9D 26 03  STA vEnemyASwordFrame_,X          ; 0x00 -> 0x01 or 0x01 -> 0x00
@bra_B570_skip:
C - - - - - 0x00F580 03:B570: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x00F583 03:B573: 29 08     AND #$08                          ; CONSTANT - close contact
C - - - - - 0x00F585 03:B575: D0 03     BNE bra_B57A_close_contact        ; If a status contains 'close contact' flag
C - - - - - 0x00F587 03:B577: 4C 32 B6  JMP loc_B632_try_movements        ;

bra_B57A_close_contact:
C - - - - - 0x00F58A 03:B57A: A0 00     LDY #$00                          ; the offset value #1
C - - - - - 0x00F58C 03:B57C: AD 00 03  LDA vEnemyA                       ;
C - - - - - 0x00F58F 03:B57F: C9 36     CMP #$36                          ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F591 03:B581: F0 1B     BEQ bra_B59E_prepare_rendering    ; If vEnemyA == 0x36
C - - - - - 0x00F593 03:B583: A0 18     LDY #$18                          ; the offset value #2
C - - - - - 0x00F595 03:B585: C9 11     CMP #$11                          ; CONSTANT - Girl in red, in the castle
C - - - - - 0x00F597 03:B587: D0 15     BNE bra_B59E_prepare_rendering    ; If vEnemyA != 0x11
C - - - - - 0x00F599 03:B589: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00F59C 03:B58C: 29 08     AND #$08                          ;
C - - - - - 0x00F59E 03:B58E: D0 0E     BNE bra_B59E_prepare_rendering    ; If vEnemyAJumpCounter = 0%XXXX1XXX
C - - - - - 0x00F5A0 03:B590: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00F5A3 03:B593: 29 07     AND #$07                          ;
C - - - - - 0x00F5A5 03:B595: D0 05     BNE @bra_B59C_skip_sound          ; If vEnemyAJumpCounter = 0%XXXXX111
C - - - - - 0x00F5A7 03:B597: A9 31     LDA #$31                          ; sound of fist swings
C - - - - - 0x00F5A9 03:B599: 20 20 C4  JSR sub_C420_add_sound_effect     ; bank FF
@bra_B59C_skip_sound:
C - - - - - 0x00F5AC 03:B59C: A0 1C     LDY #$1C                          ; the offset value #3
; In: Register Y - sprite_magic2 (The offset by the address)
bra_B59E_prepare_rendering:
loc_B59E_prepare_rendering:
C D 1 - - - 0x00F5AE 03:B59E: BD 38 03  LDA vEnemyAPosXLow,X              ;
C - - - - - 0x00F5B1 03:B5A1: 85 00     STA ram_0000                      ; prepares the 1st parameter
C - - - - - 0x00F5B3 03:B5A3: BD 3E 03  LDA vEnemyAPosXHigh,X             ;
C - - - - - 0x00F5B6 03:B5A6: 85 01     STA ram_0001                      ; prepares the 2nd parameter
C - - - - - 0x00F5B8 03:B5A8: 20 7B D6  JSR sub_D67B_out_of_sight         ;
C - - - - - 0x00F5BB 03:B5AB: 90 03     BCC bra_B5B0_skip                 ; If the enemy is visible
C - - - - - 0x00F5BD 03:B5AD: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B5B0_skip:
C - - - - - 0x00F5C0 03:B5B0: 20 AC D6  JSR sub_D6AC_out_of_screen        ;
C - - - - - 0x00F5C3 03:B5B3: 90 03     BCC bra_B5B8_skip                 ; If the enemy is on the screen
C - - - - - 0x00F5C5 03:B5B5: 4C 41 D7  JMP loc_D741_enemyA_off_screen    ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B5B8_skip:
C - - - - - 0x00F5C8 03:B5B8: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x00F5CB 03:B5BB: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x00F5CD 03:B5BD: 90 03     BCC bra_B5C2_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x00F5CF 03:B5BF: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B5C2_add_sprite_magic_v2:
C - - - - - 0x00F5D2 03:B5C2: 98        TYA                                   ;
C - - - - - 0x00F5D3 03:B5C3: 18        CLC                                   ;
C - - - - - 0x00F5D4 03:B5C4: 6D 02 03  ADC vEnemyASpriteMagic2               ; + Y ~> sprite_magic2
C - - - - - 0x00F5D7 03:B5C7: 85 01     STA ram_0001                          ;
C - - - - - 0x00F5D9 03:B5C9: AD 03 03  LDA vEnemyASpriteMagic3               ; ~> sprite_magic3
C - - - - - 0x00F5DC 03:B5CC: 85 02     STA ram_0002                          ;
C - - - - - 0x00F5DE 03:B5CE: 20 33 CE  JSR sub_CE33_add_sprite_magic         ; bank FF
C - - - - - 0x00F5E1 03:B5D1: AD 00 03  LDA vEnemyA                           ;
C - - - - - 0x00F5E4 03:B5D4: C9 11     CMP #$11                              ; CONSTANT - Girl in red, in the castle
C - - - - - 0x00F5E6 03:B5D6: F0 59     BEQ bra_B631_RTS                      ; If vEnemyA == 0x11
C - - - - - 0x00F5E8 03:B5D8: C9 36     CMP #$36                              ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F5EA 03:B5DA: F0 32     BEQ bra_B60E_egyptian                 ; If vEnemyA == 0x36
C - - - - - 0x00F5EC 03:B5DC: C0 0C     CPY #$0C                              ;
C - - - - - 0x00F5EE 03:B5DE: 90 04     BCC @bra_B5E4_sword                   ; If sprite_magic2 < 0x0C
C - - - - - 0x00F5F0 03:B5E0: C0 14     CPY #$14                              ;
C - - - - - 0x00F5F2 03:B5E2: 90 4D     BCC bra_B631_RTS                      ; If sprite_magic2 < 0x14
@bra_B5E4_sword:
C - - - - - 0x00F5F4 03:B5E4: A0 20     LDY #$20                              ; sprite_magic2 #1 (The offset by the address)
C - - - - - 0x00F5F6 03:B5E6: BD 26 03  LDA vEnemyASwordFrame_,X              ;
C - - - - - 0x00F5F9 03:B5E9: 6A        ROR                                   ;
C - - - - - 0x00F5FA 03:B5EA: 90 02     BCC bra_B5EE_prepare_sword_rendering  ; If frame == 0x00
C - - - - - 0x00F5FC 03:B5EC: A0 24     LDY #$24                              ; sprite_magic2 #2 (The offset by the address)
; In: Register Y - sprite_magic2 (The offset by the address)
loc_B5EE_prepare_sword_rendering:
bra_B5EE_prepare_sword_rendering:
C D 1 - - - 0x00F5FE 03:B5EE: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x00F601 03:B5F1: 6A        ROR                             ;
C - - - - - 0x00F602 03:B5F2: 90 02     BCC @bra_B5F6_right             ; If the enemy is looking to the right
C - - - - - 0x00F604 03:B5F4: C8        INY                             ;
C - - - - - 0x00F605 03:B5F5: C8        INY                             ;
@bra_B5F6_right:
C - - - - - 0x00F606 03:B5F6: 98        TYA                             ;
C - - - - - 0x00F607 03:B5F7: 18        CLC                             ;
C - - - - - 0x00F608 03:B5F8: 6D 02 03  ADC vEnemyASpriteMagic2         ; + Y ~> sprite_magic2
C - - - - - 0x00F60B 03:B5FB: 85 01     STA ram_0001                    ;
C - - - - - 0x00F60D 03:B5FD: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x00F610 03:B600: 29 10     AND #$10                        ; CONSTANT - close contact (see vEnemyAStatus)
C - - - - - 0x00F612 03:B602: F0 07     BEQ @bra_B60B_skip              ; If a status doesn't contain K flag (see vEnemyAStatus)
C - - - - - 0x00F614 03:B604: A5 00     LDA ram_0000                    ;
C - - - - - 0x00F616 03:B606: 18        CLC                             ;
C - - - - - 0x00F617 03:B607: 69 08     ADC #$08                        ;
C - - - - - 0x00F619 03:B609: 85 00     STA ram_0000                    ; sprite_magic1 += 0x08
@bra_B60B_skip:
C - - - - - 0x00F61B 03:B60B: 4C 33 CE  JMP loc_CE33_add_sprite_magic   ; bank FF

bra_B60E_egyptian:
C - - - - - 0x00F61E 03:B60E: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x00F621 03:B611: 29 3C     AND #$3C                                ; clear X, Y, M, N flags (see vEnemyAStatus)
C - - - - - 0x00F623 03:B613: C9 20     CMP #$20                                ; CONSTANT - the dying
C - - - - - 0x00F625 03:B615: F0 1A     BEQ bra_B631_RTS                        ; If the enemy isn't dying
C - - - - - 0x00F627 03:B617: C9 0C     CMP #$0C                                ; CONSTANT - close contact or L flag (see vEnemyAStatus)
C - - - - - 0x00F629 03:B619: D0 09     BNE @bra_B624_skip                      ; If vEnemyAStatus contains K or L flag
C - - - - - 0x00F62B 03:B61B: A0 18     LDY #$18                                ; the offset value #1
C - - - - - 0x00F62D 03:B61D: BD 4A 03  LDA vEnemyAJumpCounter,X                ;
C - - - - - 0x00F630 03:B620: C9 20     CMP #$20                                ;
C - - - - - 0x00F632 03:B622: B0 CA     BCS bra_B5EE_prepare_sword_rendering    ; If vJumpCounter >= 0x20
@bra_B624_skip:
C - - - - - 0x00F634 03:B624: A0 1C     LDY #$1C                                ; the offset value #2
C - - - - - 0x00F636 03:B626: BD 26 03  LDA vEnemyASwordFrame_,X                ;
C - - - - - 0x00F639 03:B629: 6A        ROR                                     ;
C - - - - - 0x00F63A 03:B62A: B0 02     BCS @bra_B62E_skip                      ; If frame == 0x01
C - - - - - 0x00F63C 03:B62C: A0 20     LDY #$20                                ; the offset value #3
@bra_B62E_skip:
C - - - - - 0x00F63E 03:B62E: 4C EE B5  JMP loc_B5EE_prepare_sword_rendering    ;

bra_B631_RTS:
C - - - - - 0x00F641 03:B631: 60        RTS                                     ;

; In: Register X - the enemyA number
loc_B632_try_movements:
C D 1 - - - 0x00F642 03:B632: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00F645 03:B635: 6A        ROR                                      ;
C - - - - - 0x00F646 03:B636: 90 0F     BCC bra_B647_skip                        ; If the enemy is looking to the right
C - - - - - 0x00F648 03:B638: 20 4D B6  JSR sub_B64D_try_movement_on_the_left    ;
loc_B63B_prepare_rendering_by_frame_:
C D 1 - - - 0x00F64B 03:B63B: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter    ;
C - - - - - 0x00F64E 03:B63E: BD 44 03  LDA vEnemyAFrame_Counter,X               ;
C - - - - - 0x00F651 03:B641: 0A        ASL                                      ;
C - - - - - 0x00F652 03:B642: 0A        ASL                                      ; *4
C - - - - - 0x00F653 03:B643: A8        TAY                                      ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F654 03:B644: 4C 9E B5  JMP loc_B59E_prepare_rendering           ;

bra_B647_skip:
C - - - - - 0x00F657 03:B647: 20 88 B6  JSR sub_B688_try_movement_on_the_right   ;
C - - - - - 0x00F65A 03:B64A: 4C 3B B6  JMP loc_B63B_prepare_rendering_by_frame_ ;

; In: Register X - the enemyA number
sub_B64D_try_movement_on_the_left:
C - - - - - 0x00F65D 03:B64D: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left   ;
C - - - - - 0x00F660 03:B650: F0 08     BEQ bra_B65A_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00F662 03:B652: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x00F664 03:B654: 6A        ROR                                              ;
C - - - - - 0x00F665 03:B655: 90 30     BCC bra_B687_RTS                                 ; Branch if vLowCounter is multiple of 2
C - - - - - 0x00F667 03:B657: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                   ;

; In: Register X - the enemyA number
bra_B65A_try_jump_over:
C - - - - - 0x00F66A 03:B65A: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x00F66D 03:B65D: C9 36     CMP #$36                            ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F66F 03:B65F: D0 0B     BNE @bra_B66C_skip                  ; If vEnemyA != 0x36
C - - - - - 0x00F671 03:B661: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x00F674 03:B664: 29 22     AND #$22                            ; CONSTANT - the enemy is dying or jumping
C - - - - - 0x00F676 03:B666: D0 1F     BNE bra_B687_RTS                    ; If the enemy is dying or jumping
C - - - - - 0x00F678 03:B668: A9 0C     LDA #$0C                            ; a jump counter #1 (egyptian)
C - - - - - 0x00F67A 03:B66A: D0 09     BNE @bra_B675_continue              ; Always true

; In: Register X - the enemyA number
@bra_B66C_skip:
C - - - - - 0x00F67C 03:B66C: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x00F67F 03:B66F: 29 20     AND #$20                            ; CONSTANT - the enemy is dying
C - - - - - 0x00F681 03:B671: D0 14     BNE bra_B687_RTS                    ; If the enemy is dying
C - - - - - 0x00F683 03:B673: A9 14     LDA #$14                            ; a jump counter #2 (girl in red)
@bra_B675_continue:
C - - - - - 0x00F685 03:B675: 9D 4A 03  STA vEnemyAJumpCounter,X            ;
C - - - - - 0x00F688 03:B678: A9 02     LDA #$02                            ; CONSTANT - the jump
C - - - - - 0x00F68A 03:B67A: 20 C5 B7  JSR sub_B7C5_change_substatus       ;
C - - - - - 0x00F68D 03:B67D: A9 03     LDA #$03                            ; CONSTANT - jump by side
C - - - - - 0x00F68F 03:B67F: 9D 56 03  STA vEnemyAJumpType,X               ;
C - - - - - 0x00F692 03:B682: A9 00     LDA #$00                            ;
C - - - - - 0x00F694 03:B684: 9D 44 03  STA vEnemyAFrame_Counter,X          ; reset a counter
bra_B687_RTS:
C - - - - - 0x00F697 03:B687: 60        RTS                                 ;

; In: Register X - the enemyA number
sub_B688_try_movement_on_the_right:
C - - - - - 0x00F698 03:B688: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right  ;
C - - - - - 0x00F69B 03:B68B: F0 CD     BEQ bra_B65A_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00F69D 03:B68D: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x00F69F 03:B68F: 6A        ROR                                              ;
C - - - - - 0x00F6A0 03:B690: 90 F5     BCC bra_B687_RTS                                 ; Branch if vLowCounter is multiple of 2
C - - - - - 0x00F6A2 03:B692: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                   ;

loc_B695_squatting:
C - - - - - 0x00F6A5 03:B695: DE 4A 03  DEC vEnemyAJumpCounter,X                ;
C - - - - - 0x00F6A8 03:B698: F0 05     BEQ bra_B69F_skip                       ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x00F6AA 03:B69A: A0 14     LDY #$14                                ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x00F6AC 03:B69C: 4C 9E B5  JMP loc_B59E_prepare_rendering          ;

bra_B69F_skip:
C - - - - - 0x00F6AF 03:B69F: 20 3E E3  JSR sub_E332_generate_jump_type         ;
C - - - - - 0x00F6B2 03:B6A2: BC 2C 03  LDY vEnemyAPosY,X                       ;
C - - - - - 0x00F6B5 03:B6A5: C0 BF     CPY #$BF                                ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x00F6B7 03:B6A7: 90 06     BCC @bra_B6AF_skip                      ; If vEnemyPosY < 0xBF
C - - - - - 0x00F6B9 03:B6A9: 29 01     AND #$01                                ;
C - - - - - 0x00F6BB 03:B6AB: D0 02     BNE @bra_B6AF_skip                      ; If vEnemyPosY is odd
C - - - - - 0x00F6BD 03:B6AD: A9 03     LDA #$03                                ; CONSTANT - jump by side
@bra_B6AF_skip:
C - - - - - 0x00F6BF 03:B6AF: A8        TAY                                     ; Y <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x00F6C0 03:B6B0: B9 58 E3  LDA tbl_E358_init_counter,Y             ;
; In: Register A - a jump counter
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_B6B3_activate_jump_status:
C D 1 - - - 0x00F6C3 03:B6B3: 9D 4A 03  STA vEnemyAJumpCounter,X                ;
C - - - - - 0x00F6C6 03:B6B6: 98        TYA                                     ;
C - - - - - 0x00F6C7 03:B6B7: 9D 56 03  STA vEnemyAJumpType,X                   ;
C - - - - - 0x00F6CA 03:B6BA: A9 02     LDA #$02                                ; CONSTANT - the jump
C - - - - - 0x00F6CC 03:B6BC: 20 C5 B7  JSR sub_B7C5_change_substatus           ;
C - - - - - 0x00F6CF 03:B6BF: A9 00     LDA #$00                                ;
C - - - - - 0x00F6D1 03:B6C1: 9D 44 03  STA vEnemyAFrame_Counter,X              ; reset a counter
loc_B6C4_jump:
C - - - - - 0x00F6D4 03:B6C4: BD 2C 03  LDA vEnemyAPosY,X                       ;
C - - - - - 0x00F6D7 03:B6C7: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00F6D9 03:B6C9: B0 1E     BCS bra_B6E9_skip                       ; If PosY >= 0xDF
C - - - - - 0x00F6DB 03:B6CB: BD 56 03  LDA vEnemyAJumpType,X                   ;
C - - - - - 0x00F6DE 03:B6CE: C9 03     CMP #$03                                ; CONSTANT - jump by side
C - - - - - 0x00F6E0 03:B6D0: D0 17     BNE bra_B6E9_skip                       ; If vJumpType != 0x03
C - - - - - 0x00F6E2 03:B6D2: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x00F6E5 03:B6D5: 6A        ROR                                     ;
C - - - - - 0x00F6E6 03:B6D6: 90 0A     BCC bra_B6E2_skip                       ; If the enemy is looking to the right
C - - - - - 0x00F6E8 03:B6D8: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00F6EA 03:B6DA: D0 0A     BNE bra_B6E6_invert                     ; If the enemy is dying
bra_B6DC_invert:
C - - - - - 0x00F6EC 03:B6DC: 20 4D B6  JSR sub_B64D_try_movement_on_the_left   ;
C - - - - - 0x00F6EF 03:B6DF: 4C E9 B6  JMP loc_B6E9_continue                   ;

bra_B6E2_skip:
C - - - - - 0x00F6F2 03:B6E2: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00F6F4 03:B6E4: D0 F6     BNE bra_B6DC_invert                     ; If the enemy is dying
bra_B6E6_invert:
C - - - - - 0x00F6F6 03:B6E6: 20 88 B6  JSR sub_B688_try_movement_on_the_right  ;
loc_B6E9_continue:
bra_B6E9_skip:
C D 1 - - - 0x00F6F9 03:B6E9: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00F6FC 03:B6EC: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x00F6FF 03:B6EF: 18        CLC                                     ;
C - - - - - 0x00F700 03:B6F0: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x00F703 03:B6F3: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x00F705 03:B6F5: 90 09     BCC @bra_B700_skip                      ; If Register A < 0xDF
C - - - - - 0x00F707 03:B6F7: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x00F709 03:B6F9: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00F70B 03:B6FB: 90 02     BCC @bra_B6FF_skip                      ; If Register A < 0xF8
C - - - - - 0x00F70D 03:B6FD: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_B6FF_skip:
C - - - - - 0x00F70F 03:B6FF: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_B700_skip:
C - - - - - 0x00F710 03:B700: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x00F713 03:B703: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00F716 03:B706: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x00F718 03:B708: 90 50     BCC bra_B75A_skip_for_maze              ; If vJumpCounter < 0x18
C - - - - - 0x00F71A 03:B70A: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00F71C 03:B70C: 90 05     BCC bra_B713_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x00F71E 03:B70E: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x00F720 03:B710: 4C 9E B5  JMP loc_B59E_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_B713_skip:
C - - - - - 0x00F723 03:B713: 85 00     STA ram_0000                                 ;
C - - - - - 0x00F725 03:B715: E6 00     INC ram_0000                                 ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x00F727 03:B717: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y     ;
C - - - - - 0x00F72A 03:B71A: F0 23     BEQ bra_B73F_inc                             ; If the collisions by Y-position doesn't exist
C - - - - - 0x00F72C 03:B71C: C9 02     CMP #$02                                     ; CONSTANT - a weak collision
C - - - - - 0x00F72E 03:B71E: F0 07     BEQ bra_B727_weak                            ; If the collision is weak
C - - - - - 0x00F730 03:B720: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x00F733 03:B723: D0 0E     BNE bra_B733_landing                         ; If the landing is allow
C - - - - - 0x00F735 03:B725: F0 18     BEQ bra_B73F_inc                             ; Always true

bra_B727_weak:
C - - - - - 0x00F737 03:B727: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x00F73A 03:B72A: F0 13     BEQ bra_B73F_inc                             ; If the landing is disallow
C - - - - - 0x00F73C 03:B72C: BD 56 03  LDA vEnemyAJumpType,X                        ;
C - - - - - 0x00F73F 03:B72F: C9 04     CMP #$04                                     ; CONSTANT - jump off after the squatting
C - - - - - 0x00F741 03:B731: F0 0C     BEQ bra_B73F_inc                             ; If the enemyA jumping off
bra_B733_landing:
C - - - - - 0x00F743 03:B733: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x00F746 03:B736: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x00F749 03:B739: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x00F74B 03:B73B: D0 29     BNE bra_B766_start_dying                     ; If the enemy is dying
C - - - - - 0x00F74D 03:B73D: F0 0A     BEQ bra_B749_clear                           ; Always true

bra_B73F_inc:
C - - - - - 0x00F74F 03:B73F: FE 4A 03  INC vEnemyAJumpCounter,X                     ;
C - - - - - 0x00F752 03:B742: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x00F754 03:B744: DD 4A 03  CMP vEnemyAJumpCounter,X                     ;
C - - - - - 0x00F757 03:B747: B0 03     BCS bra_B74C_skip                            ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
bra_B749_clear:
C - - - - - 0x00F759 03:B749: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; reassign
bra_B74C_skip:
C - - - - - 0x00F75C 03:B74C: A0 0C     LDY #$0C                                     ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x00F75E 03:B74E: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x00F761 03:B751: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x00F763 03:B753: D0 02     BNE @bra_B757_skip                           ; If the enemy is dying
C - - - - - 0x00F765 03:B755: A0 08     LDY #$08                                     ; an input parameter - sprite_magic2 (a jump frame)
@bra_B757_skip:
C - - - - - 0x00F767 03:B757: 4C 9E B5  JMP loc_B59E_prepare_rendering               ;

bra_B75A_skip_for_maze:
C - - - - - 0x00F76A 03:B75A: 20 D5 D7  JSR sub_D7D5_check_enemyA_collision_by_Y_in_maze  ;
C - - - - - 0x00F76D 03:B75D: D0 E0     BNE bra_B73F_inc                                  ; If the strong collision isn't exist
C - - - - - 0x00F76F 03:B75F: A9 18     LDA #$18                                          ; CONSTANT - a maximum amplitude
C - - - - - 0x00F771 03:B761: 9D 4A 03  STA vEnemyAJumpCounter,X                          ; assign a maximum amplitude
C - - - - - 0x00F774 03:B764: D0 D9     BNE bra_B73F_inc                                  ; Always true

bra_B766_start_dying:
C - - - - - 0x00F776 03:B766: A9 30     LDA #$30                          ; initializes a jump counter
C - - - - - 0x00F778 03:B768: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
loc_B76B_dying:
C - - - - - 0x00F77B 03:B76B: DE 4A 03  DEC vEnemyAJumpCounter,X          ; updates the counter value
C - - - - - 0x00F77E 03:B76E: D0 03     BNE bra_B773_death_rendering      ; If vJumpCounter != 0x00
C - - - - - 0x00F780 03:B770: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

bra_B773_death_rendering:
C - - - - - 0x00F783 03:B773: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x00F786 03:B776: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x00F789 03:B779: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the vJumpCounter)
C - - - - - 0x00F78A 03:B77A: B9 81 B7  LDA tbl_B781_frames_,Y                ;
C - - - - - 0x00F78D 03:B77D: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F78E 03:B77E: 4C 9E B5  JMP loc_B59E_prepare_rendering        ;

tbl_B781_frames_:
- D 1 - - - 0x00F791 03:B781: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x00F792 03:B782: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x00F793 03:B783: 10        .byte $10   ; damage frame

sub_B784_try_to_change_self:
C - - - - - 0x00F794 03:B784: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F797 03:B787: F0 0A     BEQ @bra_B793_skip                 ; If vJumpCounter == 0x00
C - - - - - 0x00F799 03:B789: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x00F79C 03:B78C: D0 43     BNE bra_B7D1_RTS                   ; If vJumpCounter != 0x00
C - - - - - 0x00F79E 03:B78E: A9 00     LDA #$00                           ; clear substatus
C - - - - - 0x00F7A0 03:B790: 20 C5 B7  JSR sub_B7C5_change_substatus      ;
@bra_B793_skip:
C - - - - - 0x00F7A3 03:B793: 20 D2 B7  JSR sub_B7D2_try_change_direction  ;
C - - - - - 0x00F7A6 03:B796: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x00F7A8 03:B798: 29 3F     AND #$3F                           ;
C - - - - - 0x00F7AA 03:B79A: D0 35     BNE bra_B7D1_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x00F7AC 03:B79C: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x00F7AF 03:B79F: 6A        ROR                                ;
C - - - - - 0x00F7B0 03:B7A0: B0 2F     BCS bra_B7D1_RTS                   ; 50% chance branch
C - - - - - 0x00F7B2 03:B7A2: 29 07     AND #$07                           ;
C - - - - - 0x00F7B4 03:B7A4: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x00F7B7 03:B7A7: C0 36     CPY #$36                           ; CONSTANT - Egyptian with a sword
C - - - - - 0x00F7B9 03:B7A9: D0 03     BNE @bra_B7AE_skip                 ; If vEnemyA != 0x36
C - - - - - 0x00F7BB 03:B7AB: 18        CLC                                ;
C - - - - - 0x00F7BC 03:B7AC: 69 08     ADC #$08                           ; + 0x08 (the offset)
@bra_B7AE_skip:
C - - - - - 0x00F7BE 03:B7AE: A8        TAY                                ;
C - - - - - 0x00F7BF 03:B7AF: B9 E0 B3  LDA tbl_B3E0_status_flags,Y        ;
C - - - - - 0x00F7C2 03:B7B2: 85 05     STA ram_0005                       ;
C - - - - - 0x00F7C4 03:B7B4: F0 11     BEQ bra_B7C7_change_substatus_ex   ; If status flag == 0x00 (i.e. nothing)
C - - - - - 0x00F7C6 03:B7B6: C9 10     CMP #$10                           ; CONSTANT - squatting
C - - - - - 0x00F7C8 03:B7B8: F0 04     BEQ @bra_B7BE_skip                 ; If the enemy is going to squat
C - - - - - 0x00F7CA 03:B7BA: A9 30     LDA #$30                           ; Initializes a counter for 'close contact'
C - - - - - 0x00F7CC 03:B7BC: D0 02     BNE @bra_B7C0_continue             ; Always true

@bra_B7BE_skip:
C - - - - - 0x00F7CE 03:B7BE: A9 20     LDA #$20                           ; Initializes a counter for 'the squatting'
@bra_B7C0_continue:
C - - - - - 0x00F7D0 03:B7C0: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
C - - - - - 0x00F7D3 03:B7C3: D0 02     BNE bra_B7C7_change_substatus_ex   ; Always true

; In: Register A - an new status
sub_B7C5_change_substatus:
C - - - - - 0x00F7D5 03:B7C5: 85 05     STA ram_0005              ;
; In: $0005 - an new status
bra_B7C7_change_substatus_ex:
C - - - - - 0x00F7D7 03:B7C7: BD 20 03  LDA vEnemyAStatus,X       ;
C - - - - - 0x00F7DA 03:B7CA: 29 C1     AND #$C1                  ; clear substate
C - - - - - 0x00F7DC 03:B7CC: 05 05     ORA ram_0005              ;
C - - - - - 0x00F7DE 03:B7CE: 9D 20 03  STA vEnemyAStatus,X       ;
bra_B7D1_RTS:
C - - - - - 0x00F7E1 03:B7D1: 60        RTS                       ;

; In: Register X - the enemyA number
sub_B7D2_try_change_direction:
C - - - - - 0x00F7E2 03:B7D2: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6BD
C - - - - - 0x00F7E4 03:B7D4: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x00F7E7 03:B7D7: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x00F7E9 03:B7D9: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00F7EC 03:B7DC: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00F7EE 03:B7DE: 05 05     ORA ram_0005                             ;
C - - - - - 0x00F7F0 03:B7E0: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x00F7F3 03:B7E3: 60        RTS                                      ;

tbl_B7E4_hitboxes:
- D 1 - - - 0x00F7F4 03:B7E4: 00        .byte $00, $00, $20, $04  ; the enemy himself
- D 1 - - - 0x00F7F8 03:B7E8: 00        .byte $00, $00, $18, $04
- D - - - - 0x00F7FC 03:B7EC: F5        .byte $F5, $0C, $0A, $08  ; sword, down
- D - - - - 0x00F800 03:B7F0: F0        .byte $F0, $0C, $0A, $08  ; sword, up
- D 1 - - - 0x00F804 03:B7F4: F5        .byte $F5, $F4, $0A, $08  ; sword, down
- D 1 - - - 0x00F808 03:B7F8: F0        .byte $F0, $F4, $0A, $08  ; sword, up
- D 1 - - - 0x00F80C 03:B7FC: EE        .byte $EE, $04, $08, $04  ; shield
- D 1 - - - 0x00F810 03:B800: F2        .byte $F2, $04, $08, $04  ; shield, squatting
- D 1 - - - 0x00F814 03:B804: EE        .byte $EE, $FC, $08, $04  ; shield
- D 1 - - - 0x00F818 03:B808: F2        .byte $F2, $FC, $08, $04  ; shield, squatting

tbl_B80C_status_flags:
- D 1 - - - 0x00F81C 03:B80C: 00        .byte $00   ; The enemy continuis to move.
- D 1 - - - 0x00F81D 03:B80D: 00        .byte $00   ; 
- D 1 - - - 0x00F81E 03:B80E: 10        .byte $10   ; The enemy is going to jump. (squatting status)
- D 1 - - - 0x00F81F 03:B80F: 10        .byte $10   ; 
- D 1 - - - 0x00F820 03:B810: 10        .byte $10   ; 
- D 1 - - - 0x00F821 03:B811: 10        .byte $10   ; 
- D 1 - - - 0x00F822 03:B812: 10        .byte $10   ; 
- D 1 - - - 0x00F823 03:B813: 0C        .byte $0C   ; Status 'close contact' + 'the hiding'

loc_B814_enemy:
C D 1 - - - 0x00F824 03:B814: A2 01     LDX #$01                            ;
C - - - - - 0x00F826 03:B816: 86 1A     STX vTempCounter1A                  ; set loop counter (the enemyA number)
bra_B818_loop:                                                              ; loop by vTempCounter1A (2 times)
C - - - - - 0x00F828 03:B818: A6 1A     LDX vTempCounter1A                  ; prepares an input parameter
C - - - - - 0x00F82A 03:B81A: 20 F8 B8  JSR sub_B8F8_status_behavior        ;
C - - - - - 0x00F82D 03:B81D: A6 1A     LDX vTempCounter1A                  ; X <~ loop counter
C - - - - - 0x00F82F 03:B81F: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x00F832 03:B822: C9 E0     CMP #$E0                            ;
C - - - - - 0x00F834 03:B824: B0 60     BCS bra_B886_next                   ; If vEnemyAStatus >= 0xE0
C - - - - - 0x00F836 03:B826: C9 C0     CMP #$C0                            ;
C - - - - - 0x00F838 03:B828: 90 5C     BCC bra_B886_next                   ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x00F83A 03:B82A: 20 D0 B8  JSR sub_B8D0_prepare_hitbox         ;
C - - - - - 0x00F83D 03:B82D: 20 60 D6  JSR sub_D660_is_bomb_exploding      ;
C - - - - - 0x00F840 03:B830: B0 0B     BCS bra_B83D_hit                    ; If the bomb is exploding
C - - - - - 0x00F842 03:B832: A5 5F     LDA vChrLiveStatus                  ;
C - - - - - 0x00F844 03:B834: 29 02     AND #$02                            ; CONSTANT - Goemon
C - - - - - 0x00F846 03:B836: F0 0B     BEQ bra_B843_check_bullets          ; If the character isn't Goemon
C - - - - - 0x00F848 03:B838: 20 06 D6  JSR sub_D606_have_intersect_sword   ;
C - - - - - 0x00F84B 03:B83B: 90 36     BCC bra_B873_continue               ; If the intersect doesn't exist
bra_B83D_hit:
C - - - - - 0x00F84D 03:B83D: 20 95 B8  JSR sub_B895_hit                    ;
C - - - - - 0x00F850 03:B840: 4C 86 B8  JMP loc_B886_next                   ;

bra_B843_check_bullets:
C - - - - - 0x00F853 03:B843: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_B845_loop:                                                             ; loop by x
C - - - - - 0x00F855 03:B845: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00F858 03:B848: B0 41     BCS bra_B88B_bullet_hit             ; If the intersect is exist
C - - - - - 0x00F85A 03:B84A: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00F85B 03:B84B: 10 F8     BPL @bra_B845_loop                  ; If Register X >= 0x00
C - - - - - 0x00F85D 03:B84D: A6 1A     LDX vTempCounter1A                  ; X <~ the enemyA number
C - - - - - 0x00F85F 03:B84F: BD 26 03  LDA vEnemyASwordStatus,X            ;
C - - - - - 0x00F862 03:B852: 30 1F     BMI bra_B873_continue               ; If SwordStatus == 0x8X (0x80, 0x81)
C - - - - - 0x00F864 03:B854: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x00F867 03:B857: 29 0C     AND #$0C                            ;
C - - - - - 0x00F869 03:B859: C9 08     CMP #$08                            ; CONSTANT - 'the hiding' status
C - - - - - 0x00F86B 03:B85B: F0 16     BEQ bra_B873_continue               ; If the enemy is hiding
C - - - - - 0x00F86D 03:B85D: 20 B8 B8  JSR sub_B8B8_prepare_shield_hitbox  ;
C - - - - - 0x00F870 03:B860: A6 7A     LDX vBulletCount                    ; set loop counter
bra_B862_loop:                                                              ; loop by x
C - - - - - 0x00F872 03:B862: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00F875 03:B865: 90 09     BCC @bra_B870_next                  ; If the intersect isn't exist
C - - - - - 0x00F877 03:B867: A9 10     LDA #$10                            ; The sound of a bullet hitting an armored shield
C - - - - - 0x00F879 03:B869: 20 20 C4  JSR sub_C420_add_sound_effect       ; bank FF
C - - - - - 0x00F87C 03:B86C: A9 00     LDA #$00                            ;
C - - - - - 0x00F87E 03:B86E: 95 8F     STA vBulletStatus,X                 ; clear
@bra_B870_next:
C - - - - - 0x00F880 03:B870: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00F881 03:B871: 10 EF     BPL bra_B862_loop                   ; If Register X >= 0x00
bra_B873_continue:
C - - - - - 0x00F883 03:B873: A6 1A     LDX vTempCounter1A                  ; restores an enemyA number
C - - - - - 0x00F885 03:B875: BD 26 03  LDA vEnemyASwordStatus,X            ;
C - - - - - 0x00F888 03:B878: 10 06     BPL bra_B880_no_sword               ; If SwordStatus != 0x8X (0x80, 0x81)
C - - - - - 0x00F88A 03:B87A: 20 AC B8  JSR sub_B8AC_prepare_sword_hitbox   ;
C - - - - - 0x00F88D 03:B87D: 4C 83 B8  JMP loc_B883_continue               ;

bra_B880_no_sword:
C - - - - - 0x00F890 03:B880: 20 D0 B8  JSR sub_B8D0_prepare_hitbox         ;
loc_B883_continue:
C D 1 - - - 0x00F893 03:B883: 20 62 D5  JSR sub_D562_has_character_damage   ;
loc_B886_next:
bra_B886_next:
C D 1 - - - 0x00F896 03:B886: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x00F898 03:B888: 10 8E     BPL bra_B818_loop                   ; If vTempCounter1A >= 0
C - - - - - 0x00F89A 03:B88A: 60        RTS                                 ;

bra_B88B_bullet_hit:
C - - - - - 0x00F89B 03:B88B: A9 00     LDA #$00                            ;
C - - - - - 0x00F89D 03:B88D: 95 8F     STA vBulletStatus,X                 ; clear
C - - - - - 0x00F89F 03:B88F: 20 95 B8  JSR sub_B895_hit                    ;
C - - - - - 0x00F8A2 03:B892: 4C 86 B8  JMP loc_B886_next                   ;

sub_B895_hit:
C - - - - - 0x00F8A5 03:B895: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x00F8A7 03:B897: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x00F8A9 03:B899: 20 2F BB  JSR sub_BB2F_change_substatus  ;
C - - - - - 0x00F8AC 03:B89C: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x00F8AE 03:B89E: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x00F8B1 03:B8A1: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x00F8B3 03:B8A3: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x00F8B6 03:B8A6: A9 00     LDA #$00                       ;
C - - - - - 0x00F8B8 03:B8A8: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x00F8BB 03:B8AB: 60        RTS                            ;

sub_B8AC_prepare_sword_hitbox:
C - - - - - 0x00F8BC 03:B8AC: A0 08     LDY #$08                     ; the offset value #1
C - - - - - 0x00F8BE 03:B8AE: BD 26 03  LDA vEnemyASwordStatus,X     ;
C - - - - - 0x00F8C1 03:B8B1: 6A        ROR                          ;
C - - - - - 0x00F8C2 03:B8B2: 90 02     BCC @bra_B8B6_skip           ; If the sword is below
C - - - - - 0x00F8C4 03:B8B4: A0 0C     LDY #$0C                     ; the offset value #2
@bra_B8B6_skip:
C - - - - - 0x00F8C6 03:B8B6: D0 0B     BNE bra_B8C3_adding          ; Always true (A = 0x40)

sub_B8B8_prepare_shield_hitbox:
C - - - - - 0x00F8C8 03:B8B8: A0 18     LDY #$18                     ; the offset value #3
C - - - - - 0x00F8CA 03:B8BA: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00F8CD 03:B8BD: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x00F8CF 03:B8BF: F0 02     BEQ bra_B8C3_adding          ; If the enemy isn't squatting
C - - - - - 0x00F8D1 03:B8C1: A0 1C     LDY #$1C                     ; the offset value #4
bra_B8C3_adding:
C - - - - - 0x00F8D3 03:B8C3: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00F8D6 03:B8C6: 6A        ROR                          ;
C - - - - - 0x00F8D7 03:B8C7: 90 12     BCC bra_B8DB_assign_hitbox   ; If the enemy is looking to the right
C - - - - - 0x00F8D9 03:B8C9: 98        TYA                          ;
C - - - - - 0x00F8DA 03:B8CA: 18        CLC                          ;
C - - - - - 0x00F8DB 03:B8CB: 69 08     ADC #$08                     ;
C - - - - - 0x00F8DD 03:B8CD: A8        TAY                          ; Y <~ Y + 0x08 (a left frame)
C - - - - - 0x00F8DE 03:B8CE: D0 0B     BNE bra_B8DB_assign_hitbox   ; Always true (Y > 0x00)

sub_B8D0_prepare_hitbox:
C - - - - - 0x00F8E0 03:B8D0: A0 00     LDY #$00                     ; the offset value #5
C - - - - - 0x00F8E2 03:B8D2: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x00F8E5 03:B8D5: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x00F8E7 03:B8D7: F0 02     BEQ bra_B8DB_assign_hitbox   ; If the enemy isn't squatting
C - - - - - 0x00F8E9 03:B8D9: A0 04     LDY #$04                     ; the offset value #6
; In: Register Y - the hitbox offset
bra_B8DB_assign_hitbox:
C - - - - - 0x00F8EB 03:B8DB: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x00F8EE 03:B8DE: 18        CLC                          ;
C - - - - - 0x00F8EF 03:B8DF: 79 E4 B7  ADC tbl_B7E4_hitboxes,Y      ;
C - - - - - 0x00F8F2 03:B8E2: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x00F8F4 03:B8E4: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x00F8F7 03:B8E7: 18        CLC                          ;
C - - - - - 0x00F8F8 03:B8E8: 79 E5 B7  ADC tbl_B7E4_hitboxes + 1,Y  ;
C - - - - - 0x00F8FB 03:B8EB: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x00F8FD 03:B8ED: B9 E6 B7  LDA tbl_B7E4_hitboxes + 2,Y  ;
C - - - - - 0x00F900 03:B8F0: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x00F902 03:B8F2: B9 E7 B7  LDA tbl_B7E4_hitboxes + 3,Y  ;
C - - - - - 0x00F905 03:B8F5: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_B8F7_RTS:
C - - - - - 0x00F907 03:B8F7: 60        RTS                          ;

sub_B8F8_status_behavior:
C - - - - - 0x00F908 03:B8F8: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00F90B 03:B8FB: 10 FA     BPL bra_B8F7_RTS                          ; If the status isn't used
C - - - - - 0x00F90D 03:B8FD: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00F910 03:B900: 4A        LSR                                       ;
C - - - - - 0x00F911 03:B901: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00F914 03:B904: 1D BA     .word loc_BA1E_jump - 1       ; 0x02
- D 1 - I - 0x00F916 03:B906: 11 B9     .word loc_B912_main - 1       ; 0x04
- D 1 - I - 0x00F918 03:B908: 11 B9     .word loc_B912_main - 1       ; 0x08
- D 1 - I - 0x00F91A 03:B90A: E9 B9     .word loc_B9EA_squatting - 1  ; 0x10
- D 1 - I - 0x00F91C 03:B90C: B8 BA     .word loc_BAB9_dying - 1      ; 0x20
- D 1 - I - 0x00F91E 03:B90E: 11 B9     .word loc_B912_main - 1       ; 0x40
- D 1 - I - 0x00F920 03:B910: 11 B9     .word loc_B912_main - 1       ; 0x80

; In: Register X - the enemyA number
loc_B912_main:
C - - - - - 0x00F922 03:B912: BD 2C 03  LDA vEnemyAPosY,X                          ;
C - - - - - 0x00F925 03:B915: 85 00     STA ram_0000                               ;
C - - - - - 0x00F927 03:B917: E6 00     INC ram_0000                               ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x00F929 03:B919: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y   ;
C - - - - - 0x00F92C 03:B91C: D0 07     BNE bra_B925_skip                          ; If the collisions by Y-position exists
C - - - - - 0x00F92E 03:B91E: A9 1C     LDA #$1C                                   ; CONSTANT - a jump counter value
C - - - - - 0x00F930 03:B920: A0 02     LDY #$02                                   ; CONSTANT - jumping off, free fall
C - - - - - 0x00F932 03:B922: 4C 08 BA  JMP loc_BA08_activate_jump_status          ;

; In: Register X - the enemyA number
bra_B925_skip:
C - - - - - 0x00F935 03:B925: A9 00     LDA #$00                             ; reset a sword status
C - - - - - 0x00F937 03:B927: 9D 26 03  STA vEnemyASwordStatus,X             ;
C - - - - - 0x00F93A 03:B92A: 20 D2 BA  JSR sub_BAD2_try_to_change_self      ;
C - - - - - 0x00F93D 03:B92D: BD 20 03  LDA vEnemyAStatus,X                  ;
C - - - - - 0x00F940 03:B930: 29 0C     AND #$0C                             ; CONSTANT - 'the hiding' or 'close contact'
C - - - - - 0x00F942 03:B932: D0 03     BNE bra_B937_skip                    ; If the enemy has 'the hiding' or 'close contact'
C - - - - - 0x00F944 03:B934: 4C 97 B9  JMP loc_B997_continue                ;

bra_B937_skip:
C - - - - - 0x00F947 03:B937: C9 08     CMP #$08                          ; CONSTANT - 'the close contact'
C - - - - - 0x00F949 03:B939: D0 04     BNE bra_B93F_close_contact        ; If the enemy has the close contact
C - - - - - 0x00F94B 03:B93B: A0 20     LDY #$20                          ; an input parameter - sprite_magic2 (the hiding frame)
C - - - - - 0x00F94D 03:B93D: D0 1F     BNE bra_B95E_prepare_rendering    ; Always true

bra_B93F_close_contact:
C - - - - - 0x00F94F 03:B93F: A9 80     LDA #$80                          ;
C - - - - - 0x00F951 03:B941: 9D 26 03  STA vEnemyASwordStatus,X          ; A <~ 0x80
C - - - - - 0x00F954 03:B944: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00F957 03:B947: 29 0F     AND #$0F                          ;
C - - - - - 0x00F959 03:B949: D0 05     BNE @bra_B950_skip_sound          ; If vEnemyAJumpCounter = 0%XXXX1111
C - - - - - 0x00F95B 03:B94B: A9 31     LDA #$31                          ; sound of fist swings
C - - - - - 0x00F95D 03:B94D: 20 20 C4  JSR sub_C420_add_sound_effect     ; bank FF
@bra_B950_skip_sound:
C - - - - - 0x00F960 03:B950: A0 18     LDY #$18                          ; an input parameter - sprite_magic2 (the sword frame #1)
C - - - - - 0x00F962 03:B952: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00F965 03:B955: 29 10     AND #$10                          ; CONSTANT - every 16 counter values
C - - - - - 0x00F967 03:B957: F0 05     BEQ bra_B95E_prepare_rendering    ; If Register A == 0%XXX0XXXX
C - - - - - 0x00F969 03:B959: FE 26 03  INC vEnemyASwordStatus,X          ; A <~ 0x81
C - - - - - 0x00F96C 03:B95C: A0 1C     LDY #$1C                          ; an input parameter - sprite_magic2 (the sword frame #2)
; In: Register Y - sprite_magic2 (The offset by the address)
bra_B95E_prepare_rendering:
loc_B95E_prepare_rendering:
C D 1 - - - 0x00F96E 03:B95E: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x00F971 03:B961: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x00F973 03:B963: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x00F976 03:B966: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x00F978 03:B968: 20 7B D6  JSR sub_D67B_out_of_sight       ; bank FF
C - - - - - 0x00F97B 03:B96B: 90 03     BCC bra_B970_skip               ; If the enemy is visible
C - - - - - 0x00F97D 03:B96D: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B970_skip:
C - - - - - 0x00F980 03:B970: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x00F983 03:B973: 90 03     BCC bra_B978_skip               ; If the enemy is on the screen
C - - - - - 0x00F985 03:B975: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B978_skip:
C - - - - - 0x00F988 03:B978: 20 25 D7  JSR sub_D725_enemyA_on_screen            ;
C - - - - - 0x00F98B 03:B97B: C0 E0     CPY #$E0                                 ; CONSTANT - death frame #1
C - - - - - 0x00F98D 03:B97D: 90 03     BCC bra_B982_add_sprite_magic_v2         ; If Register Y < 0xE0
C - - - - - 0x00F98F 03:B97F: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B982_add_sprite_magic_v2:
C - - - - - 0x00F992 03:B982: C0 20     CPY #$20                      ;
C - - - - - 0x00F994 03:B984: 90 02     BCC @bra_B988_skip            ; If Register Y < 0x20
C - - - - - 0x00F996 03:B986: A0 20     LDY #$20                      ; CONSTANT - Limit offset value
@bra_B988_skip:
C - - - - - 0x00F998 03:B988: 98        TYA                           ;
C - - - - - 0x00F999 03:B989: 18        CLC                           ;
C - - - - - 0x00F99A 03:B98A: 6D 02 03  ADC vEnemyASpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x00F99D 03:B98D: 85 01     STA ram_0001                  ;
C - - - - - 0x00F99F 03:B98F: AD 03 03  LDA vEnemyASpriteMagic3       ; ~> sprite_magic3
C - - - - - 0x00F9A2 03:B992: 85 02     STA ram_0002                  ;
C - - - - - 0x00F9A4 03:B994: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

loc_B997_continue:
C D 1 - - - 0x00F9A7 03:B997: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x00F9AA 03:B99A: 6A        ROR                                    ;
C - - - - - 0x00F9AB 03:B99B: 90 0F     BCC bra_B9AC_skip                      ; If the enemy is looking to the right
C - - - - - 0x00F9AD 03:B99D: 20 B2 B9  JSR sub_B9B2_try_movement_on_the_left  ;
loc_B9A0_prepare_rendering_by_frame_:
C D 1 - - - 0x00F9B0 03:B9A0: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter  ;
C - - - - - 0x00F9B3 03:B9A3: BD 44 03  LDA vEnemyAFrame_Counter,X             ;
C - - - - - 0x00F9B6 03:B9A6: 0A        ASL                                    ;
C - - - - - 0x00F9B7 03:B9A7: 0A        ASL                                    ; *4
C - - - - - 0x00F9B8 03:B9A8: A8        TAY                                    ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x00F9B9 03:B9A9: 4C 5E B9  JMP loc_B95E_prepare_rendering         ;

bra_B9AC_skip:
C - - - - - 0x00F9BC 03:B9AC: 20 DC B9  JSR sub_B9DC_try_movement_on_the_right    ;
C - - - - - 0x00F9BF 03:B9AF: 4C A0 B9  JMP loc_B9A0_prepare_rendering_by_frame_  ;

; In: Register X - the enemyA number
sub_B9B2_try_movement_on_the_left:
C - - - - - 0x00F9C2 03:B9B2: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left  ;
C - - - - - 0x00F9C5 03:B9B5: F0 09     BEQ bra_B9C0_try_jump_over                      ; If the movement isn't allowed
C - - - - - 0x00F9C7 03:B9B7: A5 2C     LDA vLowCounter                                 ;
C - - - - - 0x00F9C9 03:B9B9: 29 01     AND #$01                                        ;
C - - - - - 0x00F9CB 03:B9BB: F0 1E     BEQ bra_B9DB_RTS                                ; Branch if vLowCounter multiple of 2
C - - - - - 0x00F9CD 03:B9BD: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                  ;

bra_B9C0_try_jump_over:
C - - - - - 0x00F9D0 03:B9C0: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x00F9D3 03:B9C3: 29 20     AND #$20                        ; CONSTANT - 'the dying' status
C - - - - - 0x00F9D5 03:B9C5: D0 14     BNE bra_B9DB_RTS                ; If the enemy is dying
C - - - - - 0x00F9D7 03:B9C7: A9 02     LDA #$02                        ; CONSTANT - the jump
C - - - - - 0x00F9D9 03:B9C9: 20 2F BB  JSR sub_BB2F_change_substatus   ;
C - - - - - 0x00F9DC 03:B9CC: A9 14     LDA #$14                        ; Initializes a jump counter
C - - - - - 0x00F9DE 03:B9CE: 9D 4A 03  STA vEnemyAJumpCounter,X        ;
C - - - - - 0x00F9E1 03:B9D1: A9 03     LDA #$03                        ; CONSTANT - jump by side
C - - - - - 0x00F9E3 03:B9D3: 9D 56 03  STA vEnemyAJumpType,X           ;
C - - - - - 0x00F9E6 03:B9D6: A9 00     LDA #$00                        ;
C - - - - - 0x00F9E8 03:B9D8: 9D 44 03  STA vEnemyAFrame_Counter,X      ; reset a counter
bra_B9DB_RTS:
C - - - - - 0x00F9EB 03:B9DB: 60        RTS                             ;

; In: Register X - the enemyA number
sub_B9DC_try_movement_on_the_right:
C - - - - - 0x00F9EC 03:B9DC: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right  ;
C - - - - - 0x00F9EF 03:B9DF: F0 DF     BEQ bra_B9C0_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00F9F1 03:B9E1: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x00F9F3 03:B9E3: 29 01     AND #$01                                         ;
C - - - - - 0x00F9F5 03:B9E5: F0 F4     BEQ bra_B9DB_RTS                                 ; Branch if vLowCounter multiple of 2
C - - - - - 0x00F9F7 03:B9E7: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                   ;

loc_B9EA_squatting:
C - - - - - 0x00F9FA 03:B9EA: DE 4A 03  DEC vEnemyAJumpCounter,X        ;
C - - - - - 0x00F9FD 03:B9ED: F0 05     BEQ bra_B9F4_skip               ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x00F9FF 03:B9EF: A0 14     LDY #$14                        ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x00FA01 03:B9F1: 4C 5E B9  JMP loc_B95E_prepare_rendering  ;

bra_B9F4_skip:
C - - - - - 0x00FA04 03:B9F4: 20 3E E3  JSR sub_E332_generate_jump_type   ;
C - - - - - 0x00FA07 03:B9F7: BC 2C 03  LDY vEnemyAPosY,X                 ;
C - - - - - 0x00FA0A 03:B9FA: C0 BF     CPY #$BF                          ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x00FA0C 03:B9FC: 90 06     BCC @bra_BA04_skip                ; If vEnemyPosY < 0xBF
C - - - - - 0x00FA0E 03:B9FE: 29 01     AND #$01                          ;
C - - - - - 0x00FA10 03:BA00: D0 02     BNE @bra_BA04_skip                ; If vEnemyPosY is odd
C - - - - - 0x00FA12 03:BA02: A9 03     LDA #$03                          ; CONSTANT - jump by side
@bra_BA04_skip:
C - - - - - 0x00FA14 03:BA04: A8        TAY                               ; A <~ Y = {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x00FA15 03:BA05: B9 58 E3  LDA tbl_E358_init_counter,Y       ;
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_BA08_activate_jump_status:
C D 1 - - - 0x00FA18 03:BA08: 9D 4A 03  STA vEnemyAJumpCounter,X                ;
C - - - - - 0x00FA1B 03:BA0B: 98        TYA                                     ;
C - - - - - 0x00FA1C 03:BA0C: 9D 56 03  STA vEnemyAJumpType,X                   ;
C - - - - - 0x00FA1F 03:BA0F: A9 02     LDA #$02                                ; CONSTANT - the jump
C - - - - - 0x00FA21 03:BA11: 20 2F BB  JSR sub_BB2F_change_substatus           ;
C - - - - - 0x00FA24 03:BA14: A9 00     LDA #$00                                ;
C - - - - - 0x00FA26 03:BA16: 9D 26 03  STA vEnemyASwordStatus,X                ; reset a sword status
C - - - - - 0x00FA29 03:BA19: A9 00     LDA #$00                                ; !(WHY?), seems to be excessive
C - - - - - 0x00FA2B 03:BA1B: 9D 44 03  STA vEnemyAFrame_Counter,X              ; reset a counter
loc_BA1E_jump:
C - - - - - 0x00FA2E 03:BA1E: BD 2C 03  LDA vEnemyAPosY,X                       ;
C - - - - - 0x00FA31 03:BA21: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00FA33 03:BA23: B0 1E     BCS bra_BA43_skip                       ; If PosY >= 0xDF
C - - - - - 0x00FA35 03:BA25: BD 56 03  LDA vEnemyAJumpType,X                   ;
C - - - - - 0x00FA38 03:BA28: C9 03     CMP #$03                                ; CONSTANT - jump by side
C - - - - - 0x00FA3A 03:BA2A: D0 17     BNE bra_BA43_skip                       ; If vJumpType != 0x03
C - - - - - 0x00FA3C 03:BA2C: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x00FA3F 03:BA2F: 6A        ROR                                     ;
C - - - - - 0x00FA40 03:BA30: 90 0A     BCC bra_BA3C_right                      ; If the enemy is looking to the right
C - - - - - 0x00FA42 03:BA32: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00FA44 03:BA34: D0 0A     BNE bra_BA40_invert                     ; If the enemy is dying
bra_BA36_invert:
C - - - - - 0x00FA46 03:BA36: 20 B2 B9  JSR sub_B9B2_try_movement_on_the_left   ;
C - - - - - 0x00FA49 03:BA39: 4C 43 BA  JMP loc_BA43_continue                   ;

bra_BA3C_right:
C - - - - - 0x00FA4C 03:BA3C: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x00FA4E 03:BA3E: D0 F6     BNE bra_BA36_invert                     ; If the enemy is dying
bra_BA40_invert:
C - - - - - 0x00FA50 03:BA40: 20 DC B9  JSR sub_B9DC_try_movement_on_the_right  ;
loc_BA43_continue:
bra_BA43_skip:
C D 1 - - - 0x00FA53 03:BA43: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00FA56 03:BA46: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x00FA59 03:BA49: 18        CLC                                     ;
C - - - - - 0x00FA5A 03:BA4A: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x00FA5D 03:BA4D: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x00FA5F 03:BA4F: 90 09     BCC @bra_BA5A_skip                      ; If Register A < 0xDF
C - - - - - 0x00FA61 03:BA51: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x00FA63 03:BA53: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00FA65 03:BA55: 90 02     BCC @bra_BA59_skip                      ; If Register A < 0xF8
C - - - - - 0x00FA67 03:BA57: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_BA59_skip:
C - - - - - 0x00FA69 03:BA59: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_BA5A_skip:
C - - - - - 0x00FA6A 03:BA5A: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x00FA6D 03:BA5D: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x00FA70 03:BA60: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x00FA72 03:BA62: 90 35     BCC bra_BA99_inc                        ; If vJumpCounter < 0x18
C - - - - - 0x00FA74 03:BA64: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00FA76 03:BA66: 90 05     BCC bra_BA6D_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x00FA78 03:BA68: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x00FA7A 03:BA6A: 4C 5E B9  JMP loc_B95E_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_BA6D_skip:
C - - - - - 0x00FA7D 03:BA6D: 85 00     STA ram_0000                              ;
C - - - - - 0x00FA7F 03:BA6F: E6 00     INC ram_0000                              ;
C - - - - - 0x00FA81 03:BA71: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x00FA84 03:BA74: F0 23     BEQ bra_BA99_inc                          ; If the collisions by Y-position doesn't exist
C - - - - - 0x00FA86 03:BA76: C9 02     CMP #$02                                  ; CONSTANT - a weak collision
C - - - - - 0x00FA88 03:BA78: F0 07     BEQ bra_BA81_weak                         ; If the collision is weak
C - - - - - 0x00FA8A 03:BA7A: 20 47 D3  JSR sub_D347_check_landing_enemyA         ;
C - - - - - 0x00FA8D 03:BA7D: D0 0E     BNE bra_BA8D_landing                      ; If the landing is allow
C - - - - - 0x00FA8F 03:BA7F: F0 18     BEQ bra_BA99_inc                          ; Always true

bra_BA81_weak:
C - - - - - 0x00FA91 03:BA81: 20 47 D3  JSR sub_D347_check_landing_enemyA         ;
C - - - - - 0x00FA94 03:BA84: F0 13     BEQ bra_BA99_inc                          ; If the landing is disallow
C - - - - - 0x00FA96 03:BA86: BD 56 03  LDA vEnemyAJumpType,X                     ;
C - - - - - 0x00FA99 03:BA89: C9 04     CMP #$04                                  ; CONSTANT - jump off after the squatting
C - - - - - 0x00FA9B 03:BA8B: F0 0C     BEQ bra_BA99_inc                          ; If the enemyA jumping off
bra_BA8D_landing:
C - - - - - 0x00FA9D 03:BA8D: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY        ;
C - - - - - 0x00FAA0 03:BA90: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00FAA3 03:BA93: 29 20     AND #$20                                  ; CONSTANT - the dying
C - - - - - 0x00FAA5 03:BA95: D0 1D     BNE bra_BAB4_start_dying                  ; If the enemy is dying
C - - - - - 0x00FAA7 03:BA97: F0 0A     BEQ bra_BAA3_clear                        ; Always true

bra_BA99_inc:
C - - - - - 0x00FAA9 03:BA99: FE 4A 03  INC vEnemyAJumpCounter,X                  ;
C - - - - - 0x00FAAC 03:BA9C: A9 2F     LDA #$2F                                  ; CONSTANT - a maximum jump value
C - - - - - 0x00FAAE 03:BA9E: DD 4A 03  CMP vEnemyAJumpCounter,X                  ;
C - - - - - 0x00FAB1 03:BAA1: B0 03     BCS bra_BAA6_skip                         ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
bra_BAA3_clear:
C - - - - - 0x00FAB3 03:BAA3: 9D 4A 03  STA vEnemyAJumpCounter,X                  ; reassign
bra_BAA6_skip:
C - - - - - 0x00FAB6 03:BAA6: A0 0C     LDY #$0C                                  ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x00FAB8 03:BAA8: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x00FABB 03:BAAB: 29 20     AND #$20                                  ; CONSTANT - the dying
C - - - - - 0x00FABD 03:BAAD: D0 02     BNE @bra_BAB1_skip                        ; If the enemy is dying
C - - - - - 0x00FABF 03:BAAF: A0 04     LDY #$04                                  ; an input parameter - sprite_magic2 (a jump frame)
@bra_BAB1_skip:
C - - - - - 0x00FAC1 03:BAB1: 4C 5E B9  JMP loc_B95E_prepare_rendering            ;

bra_BAB4_start_dying:
C - - - - - 0x00FAC4 03:BAB4: A9 30     LDA #$30                        ; initializes a jump counter
C - - - - - 0x00FAC6 03:BAB6: 9D 4A 03  STA vEnemyAJumpCounter,X        ;
loc_BAB9_dying:
C - - - - - 0x00FAC9 03:BAB9: DE 4A 03  DEC vEnemyAJumpCounter,X        ; updates the counter value
C - - - - - 0x00FACC 03:BABC: D0 03     BNE bra_BAC1_death_rendering    ; If EnemyAJumpCounter != 0x00
C - - - - - 0x00FACE 03:BABE: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

bra_BAC1_death_rendering:
C - - - - - 0x00FAD1 03:BAC1: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x00FAD4 03:BAC4: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x00FAD7 03:BAC7: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the EnemyAJumpCounter)
C - - - - - 0x00FAD8 03:BAC8: B9 CF BA  LDA tbl_BACF_frames_,Y                ;
C - - - - - 0x00FADB 03:BACB: A8        TAY                                   ;
C - - - - - 0x00FADC 03:BACC: 4C 5E B9  JMP loc_B95E_prepare_rendering        ;

tbl_BACF_frames_:
- D 1 - - - 0x00FADF 03:BACF: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x00FAE0 03:BAD0: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x00FAE1 03:BAD1: 10        .byte $10   ; damage frame

; In: Register X - the enemyA number
sub_BAD2_try_to_change_self:
C - - - - - 0x00FAE2 03:BAD2: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x00FAE5 03:BAD5: F0 0A     BEQ @bra_BAE1_skip                ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x00FAE7 03:BAD7: DE 4A 03  DEC vEnemyAJumpCounter,X          ;
C - - - - - 0x00FAEA 03:BADA: D0 5F     BNE bra_BB3B_RTS                  ; If vEnemyAJumpCounter != 0x00
C - - - - - 0x00FAEC 03:BADC: A9 00     LDA #$00                          ; clear substatus
C - - - - - 0x00FAEE 03:BADE: 20 2F BB  JSR sub_BB2F_change_substatus     ;
@bra_BAE1_skip:
C - - - - - 0x00FAF1 03:BAE1: 20 3C BB  JSR sub_BB3C_try_change_direction ;
C - - - - - 0x00FAF4 03:BAE4: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00FAF6 03:BAE6: 29 3F     AND #$3F                          ;
C - - - - - 0x00FAF8 03:BAE8: D0 51     BNE bra_BB3B_RTS                  ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x00FAFA 03:BAEA: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x00FAFD 03:BAED: 29 40     AND #$40                          ; CONSTANT - the enemy can get damage
C - - - - - 0x00FAFF 03:BAEF: F0 1F     BEQ bra_BB10_generate_status      ; If vEnemyAStatus doesn't contain 0x40
C - - - - - 0x00FB01 03:BAF1: A5 6A     LDA vScreenChrPosY                ;
C - - - - - 0x00FB03 03:BAF3: DD 2C 03  CMP vEnemyAPosY,X                 ;
C - - - - - 0x00FB06 03:BAF6: D0 18     BNE bra_BB10_generate_status      ; If vScreenChrPosY != vEnemyAPosY
C - - - - - 0x00FB08 03:BAF8: A5 64     LDA vScreenChrPosX                ;
C - - - - - 0x00FB0A 03:BAFA: 38        SEC                               ;
C - - - - - 0x00FB0B 03:BAFB: FD 32 03  SBC vEnemyAScreenPosX,X           ;
C - - - - - 0x00FB0E 03:BAFE: B0 03     BCS @bra_BB03_skip                ; If vScreenChrPosX - vEnemyAScreenPosX >= 0x00
C - - - - - 0x00FB10 03:BB00: 20 73 D0  JSR sub_D073_invert_sign          ;
@bra_BB03_skip:
C - - - - - 0x00FB13 03:BB03: C9 10     CMP #$10                          ;
C - - - - - 0x00FB15 03:BB05: B0 09     BCS bra_BB10_generate_status      ; If abs(vScreenChrPosX - vEnemyAScreenPosX) >= 0x10
C - - - - - 0x00FB17 03:BB07: A9 20     LDA #$20                          ; An initialize jump value for 'close contact'
C - - - - - 0x00FB19 03:BB09: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
C - - - - - 0x00FB1C 03:BB0C: A9 0C     LDA #$0C                          ; CONSTANT - 'close contact' + 'the hiding' statuts
C - - - - - 0x00FB1E 03:BB0E: D0 1F     BNE bra_BB2F_change_substatus     ; Always true

; In: Register X - the enemyA number
bra_BB10_generate_status:
C - - - - - 0x00FB20 03:BB10: 20 64 D0  JSR sub_D064_generate_rng         ;
C - - - - - 0x00FB23 03:BB13: 6A        ROR                               ;
C - - - - - 0x00FB24 03:BB14: B0 25     BCS bra_BB3B_RTS                  ; 50% chance branch
C - - - - - 0x00FB26 03:BB16: 29 07     AND #$07                          ;
C - - - - - 0x00FB28 03:BB18: A8        TAY                               ; y is {0x00, ... , 0x07}
C - - - - - 0x00FB29 03:BB19: B9 0C B8  LDA tbl_B80C_status_flags,Y       ;
C - - - - - 0x00FB2C 03:BB1C: 85 05     STA ram_0005                      ;
C - - - - - 0x00FB2E 03:BB1E: F0 11     BEQ bra_BB31_change_substatus_ex  ; If status flag == 0x00
C - - - - - 0x00FB30 03:BB20: C9 20     CMP #$20                          ; CONSTANT - 'dying' status
C - - - - - 0x00FB32 03:BB22: F0 04     BEQ @bra_BB28_skip                ; If the enemy is going to dying
C - - - - - 0x00FB34 03:BB24: A9 20     LDA #$20                          ; An initialize jump value (everything except dying)
C - - - - - 0x00FB36 03:BB26: D0 02     BNE @bra_BB2A_skip                ; Always true

; In: Register X - the enemyA number
@bra_BB28_skip:
C - - - - - 0x00FB38 03:BB28: A9 10     LDA #$10                          ; !(UNUSED), An initialize jump value for 'dying'
@bra_BB2A_skip:
C - - - - - 0x00FB3A 03:BB2A: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
C - - - - - 0x00FB3D 03:BB2D: D0 02     BNE bra_BB31_change_substatus_ex  ; Always true (A = {0x10, 0x20})

; In: Register X - the enemyA number
; In: Register A - an new status
bra_BB2F_change_substatus:
sub_BB2F_change_substatus:
C - - - - - 0x00FB3F 03:BB2F: 85 05     STA ram_0005                      ;
; In: $0005 - an new status
bra_BB31_change_substatus_ex:
C - - - - - 0x00FB41 03:BB31: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x00FB44 03:BB34: 29 C1     AND #$C1                          ;
C - - - - - 0x00FB46 03:BB36: 05 05     ORA ram_0005                      ;
C - - - - - 0x00FB48 03:BB38: 9D 20 03  STA vEnemyAStatus,X               ;
bra_BB3B_RTS:
C - - - - - 0x00FB4B 03:BB3B: 60        RTS                               ;

; In: Register X - the enemyA number
sub_BB3C_try_change_direction:
C - - - - - 0x00FB4C 03:BB3C: A9 3F     LDA #$3F                                 ; f(A) = 64, see $D6BD
C - - - - - 0x00FB4E 03:BB3E: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x00FB51 03:BB41: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x00FB53 03:BB43: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x00FB56 03:BB46: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x00FB58 03:BB48: 05 05     ORA ram_0005                             ;
C - - - - - 0x00FB5A 03:BB4A: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x00FB5D 03:BB4D: 60        RTS                                      ;

tbl_BB4E_status_flags:
- D 1 - - - 0x00FB5E 03:BB4E: 00        .byte $00   ; The enemy continuis to move.
- D 1 - - - 0x00FB5F 03:BB4F: 00        .byte $00   ; 
- D 1 - - - 0x00FB60 03:BB50: 00        .byte $00   ; 
- D 1 - - - 0x00FB61 03:BB51: 02        .byte $02   ; The enemy is jumping.
- D 1 - - - 0x00FB62 03:BB52: 02        .byte $02   ; 
- D 1 - - - 0x00FB63 03:BB53: 08        .byte $08   ; The enemy is stopping.
- D 1 - - - 0x00FB64 03:BB54: 08        .byte $08   ; 
- D 1 - - - 0x00FB65 03:BB55: 08        .byte $08   ; 
; Potted snakes
- D 1 - - - 0x00FB66 03:BB56: 00        .byte $00   ; The enemy continuis to move.
- D 1 - - - 0x00FB67 03:BB57: 00        .byte $00   ; 
- D 1 - - - 0x00FB68 03:BB58: 00        .byte $00   ; 
- D 1 - - - 0x00FB69 03:BB59: 00        .byte $00   ; 
- D 1 - - - 0x00FB6A 03:BB5A: 02        .byte $02   ; The enemy is jumping.
- D 1 - - - 0x00FB6B 03:BB5B: 02        .byte $02   ; 
- D 1 - - - 0x00FB6C 03:BB5C: 02        .byte $02   ; 
- D 1 - - - 0x00FB6D 03:BB5D: 02        .byte $02   ;

loc_BB5E_enemy:
C D 1 - - - 0x00FB6E 03:BB5E: A2 01     LDX #$01                           ;
C - - - - - 0x00FB70 03:BB60: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyB number)
bra_BB62_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x00FB72 03:BB62: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x00FB74 03:BB64: 20 E2 BB  JSR sub_BBE2_status_behavior       ;
C - - - - - 0x00FB77 03:BB67: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x00FB79 03:BB69: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x00FB7C 03:BB6C: C9 E0     CMP #$E0                           ;
C - - - - - 0x00FB7E 03:BB6E: B0 4C     BCS bra_BBBC_next                  ; If vEnemyBStatus >= 0xE0
C - - - - - 0x00FB80 03:BB70: C9 C0     CMP #$C0                           ;
C - - - - - 0x00FB82 03:BB72: 90 48     BCC bra_BBBC_next                  ; If vEnemyBStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x00FB84 03:BB74: BD 80 03  LDA vEnemyBFrame_Counter,X         ;
C - - - - - 0x00FB87 03:BB77: 29 01     AND #$01                           ;
C - - - - - 0x00FB89 03:BB79: F0 02     BEQ @bra_BB7D_skip                 ; If frameCounter is even
C - - - - - 0x00FB8B 03:BB7B: A9 F8     LDA #$F8                           ; the offset (-8)
@bra_BB7D_skip:
C - - - - - 0x00FB8D 03:BB7D: 18        CLC                                ;
C - - - - - 0x00FB8E 03:BB7E: 7D 68 03  ADC vEnemyBPosY,X                  ;
C - - - - - 0x00FB91 03:BB81: 85 AD     STA vEnemyHitBoxY                  ; <~ posY + the offset
C - - - - - 0x00FB93 03:BB83: BD 6E 03  LDA vEnemyBScreenPosX,X            ;
C - - - - - 0x00FB96 03:BB86: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x00FB98 03:BB88: A0 10     LDY #$10                           ; <~ hitBoxH (#1)
C - - - - - 0x00FB9A 03:BB8A: AD 01 03  LDA vEnemyB                        ;
C - - - - - 0x00FB9D 03:BB8D: C9 34     CMP #$34                           ; CONSTANT - Potted snakes
C - - - - - 0x00FB9F 03:BB8F: D0 02     BNE @bra_BB93_skip                 ; If vEnemyB != 0x34
C - - - - - 0x00FBA1 03:BB91: A0 08     LDY #$08                           ; <~ hitBoxH (#2)
@bra_BB93_skip:
C - - - - - 0x00FBA3 03:BB93: 84 AF     STY vEnemyHitBoxH                  ;
C - - - - - 0x00FBA5 03:BB95: A9 08     LDA #$08                           ;
C - - - - - 0x00FBA7 03:BB97: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x00FBA9 03:BB99: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x00FBAC 03:BB9C: B0 0B     BCS @bra_BBA9_bomb_hit             ; If the bomb is exploding
C - - - - - 0x00FBAE 03:BB9E: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x00FBB0 03:BBA0: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x00FBB2 03:BBA2: F0 0B     BEQ bra_BBAF_check_bullets         ; If the character isn't Goemon
C - - - - - 0x00FBB4 03:BBA4: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x00FBB7 03:BBA7: 90 10     BCC bra_BBB9_no_intersect          ; If the intersect doesn't exist
@bra_BBA9_bomb_hit:
C - - - - - 0x00FBB9 03:BBA9: 20 CB BB  JSR sub_BBCB_hit                   ;
C - - - - - 0x00FBBC 03:BBAC: 4C BC BB  JMP loc_BBBC_next                  ;

bra_BBAF_check_bullets:
C - - - - - 0x00FBBF 03:BBAF: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_BBB1_loop:                                                             ; loop by x
C - - - - - 0x00FBC1 03:BBB1: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x00FBC4 03:BBB4: B0 0B     BCS bra_BBC1_bullet_hit             ; If the intersect is exist
C - - - - - 0x00FBC6 03:BBB6: CA        DEX                                 ; decrement loop counter
C - - - - - 0x00FBC7 03:BBB7: 10 F8     BPL @bra_BBB1_loop                  ; If Register X >= 0x00
bra_BBB9_no_intersect:
C - - - - - 0x00FBC9 03:BBB9: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_BBBC_next:
loc_BBBC_next:
C D 1 - - - 0x00FBCC 03:BBBC: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x00FBCE 03:BBBE: 10 A2     BPL bra_BB62_loop                   ; If vTempCounter1A >= 0x00
bra_BBC0_RTS:
C - - - - - 0x00FBD0 03:BBC0: 60        RTS                                 ;

bra_BBC1_bullet_hit:
C - - - - - 0x00FBD1 03:BBC1: A9 00     LDA #$00                            ;
C - - - - - 0x00FBD3 03:BBC3: 95 8F     STA vBulletStatus,X                 ; clear
C - - - - - 0x00FBD5 03:BBC5: 20 CB BB  JSR sub_BBCB_hit                    ;
C - - - - - 0x00FBD8 03:BBC8: 4C BC BB  JMP loc_BBBC_next                   ;

sub_BBCB_hit:
C - - - - - 0x00FBDB 03:BBCB: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x00FBDD 03:BBCD: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x00FBDF 03:BBCF: 20 1C BE  JSR sub_BE1C_change_substatus  ;
C - - - - - 0x00FBE2 03:BBD2: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x00FBE4 03:BBD4: 9D 86 03  STA vEnemyBJumpCounter,X       ;
C - - - - - 0x00FBE7 03:BBD7: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x00FBE9 03:BBD9: 9D 92 03  STA vEnemyBJumpType,X          ;
C - - - - - 0x00FBEC 03:BBDC: A9 00     LDA #$00                       ;
C - - - - - 0x00FBEE 03:BBDE: 9D 80 03  STA vEnemyBFrame_Counter,X     ; reset a counter
C - - - - - 0x00FBF1 03:BBE1: 60        RTS                            ;

; In: Register X - the enemyB number
sub_BBE2_status_behavior:
C - - - - - 0x00FBF2 03:BBE2: BD 5C 03  LDA vEnemyBStatus,X                       ;
C - - - - - 0x00FBF5 03:BBE5: 10 D9     BPL bra_BBC0_RTS                          ; If the status isn't used
C - - - - - 0x00FBF7 03:BBE7: BD 5C 03  LDA vEnemyBStatus,X                       ;
C - - - - - 0x00FBFA 03:BBEA: 4A        LSR                                       ;
C - - - - - 0x00FBFB 03:BBEB: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x00FBFE 03:BBEE: 42 BD     .addr loc_BD43_jump - 1          ; 0x02
- D - - - - 0x00FC00 03:BBF0: 42 BC     .addr loc_BC43_main - 1          ; 0x04
- D 1 - I - 0x00FC02 03:BBF2: 42 BC     .addr loc_BC43_main - 1          ; 0x08
- D 1 - I - 0x00FC04 03:BBF4: FB BB     .addr loc_BBFC_crawling_out - 1  ; 0x10
- D - - - - 0x00FC06 03:BBF6: C0 BD     .addr loc_BDC1_dying - 1         ; 0x20
- D 1 - I - 0x00FC08 03:BBF8: 42 BC     .addr loc_BC43_main - 1          ; 0x40
- D 1 - I - 0x00FC0A 03:BBFA: 42 BC     .addr loc_BC43_main - 1          ; 0x80

loc_BBFC_crawling_out:
C - - - - - 0x00FC0C 03:BBFC: DE 86 03  DEC vEnemyBJumpCounter,X             ;
C - - - - - 0x00FC0F 03:BBFF: F0 1A     BEQ bra_BC1B_complete                ; If vJumpCounter == 0x00
C - - - - - 0x00FC11 03:BC01: BD 86 03  LDA vEnemyBJumpCounter,X             ;
C - - - - - 0x00FC14 03:BC04: C9 30     CMP #$30                             ; CONSTANT - 'crawling out' time
C - - - - - 0x00FC16 03:BC06: 90 03     BCC bra_BC0B_crawling_out_rendering  ; If vJumpCounter < 0x30
C - - - - - 0x00FC18 03:BC08: 4C A7 BC  JMP loc_BCA7_render_entourage_ex     ;

bra_BC0B_crawling_out_rendering:
C - - - - - 0x00FC1B 03:BC0B: A0 0C     LDY #$0C                          ; the offset value #1
C - - - - - 0x00FC1D 03:BC0D: C9 20     CMP #$20                          ; CONSTANT - 1/3 crawling out
C - - - - - 0x00FC1F 03:BC0F: B0 6C     BCS bra_BC7D_prepare_rendering    ; If vJumpCounter >= 0x20
C - - - - - 0x00FC21 03:BC11: A0 10     LDY #$10                          ; the offset value #2
C - - - - - 0x00FC23 03:BC13: C9 10     CMP #$10                          ; CONSTANT - 2/3 crawling out
C - - - - - 0x00FC25 03:BC15: B0 66     BCS bra_BC7D_prepare_rendering    ; If vJumpCounter >= 0x10
C - - - - - 0x00FC27 03:BC17: A0 14     LDY #$14                          ; the offset value #3
C - - - - - 0x00FC29 03:BC19: D0 62     BNE bra_BC7D_prepare_rendering    ; Always true

bra_BC1B_complete:
C - - - - - 0x00FC2B 03:BC1B: A0 08     LDY #$08                         ; the offset value #1 by LowPosX (+8)
C - - - - - 0x00FC2D 03:BC1D: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x00FC30 03:BC20: 6A        ROR                              ;
C - - - - - 0x00FC31 03:BC21: A9 00     LDA #$00                         ; the offset value #1 by HighPosX
C - - - - - 0x00FC33 03:BC23: 90 04     BCC @bra_BC29_right              ; If the enemy is looking to the right
C - - - - - 0x00FC35 03:BC25: A0 F8     LDY #$F8                         ; the offset value #2 by LowPosX (-8)
C - - - - - 0x00FC37 03:BC27: A9 FF     LDA #$FF                         ; the offset value #2 by HighPosX
@bra_BC29_right:
C - - - - - 0x00FC39 03:BC29: 85 00     STA ram_0000                     ; $0000 <~ offset by HighPosX
C - - - - - 0x00FC3B 03:BC2B: 98        TYA                              ; A <~ offset by LowPosX
C - - - - - 0x00FC3C 03:BC2C: 18        CLC                              ;
C - - - - - 0x00FC3D 03:BC2D: 7D 74 03  ADC vEnemyBPosXLow,X             ;
C - - - - - 0x00FC40 03:BC30: 9D 74 03  STA vEnemyBPosXLow,X             ; <~ posX + offset
C - - - - - 0x00FC43 03:BC33: BD 7A 03  LDA vEnemyBPosXHigh,X            ;
C - - - - - 0x00FC46 03:BC36: 65 00     ADC ram_0000                     ;
C - - - - - 0x00FC48 03:BC38: 9D 7A 03  STA vEnemyBPosXHigh,X            ; changed PosXHigh (+1 or -1), if PosXLow was overflow
C - - - - - 0x00FC4B 03:BC3B: BD 5C 03  LDA vEnemyBStatus,X              ;
C - - - - - 0x00FC4E 03:BC3E: 29 EF     AND #$EF                         ; CONSTANT: W - 'crawling out' status (see vEnemyBStatus)
C - - - - - 0x00FC50 03:BC40: 9D 5C 03  STA vEnemyBStatus,X              ;
; In: Register X - the enemyB number
loc_BC43_main:
C - - - - - 0x00FC53 03:BC43: 20 D9 D8  JSR sub_D8D9_enemyB_collision_by_one      ;
C - - - - - 0x00FC56 03:BC46: D0 07     BNE bra_BC4F_skip                         ; If the collisions by Y-position exists
C - - - - - 0x00FC58 03:BC48: A9 10     LDA #$10                                  ; CONSTANT - a jump counter value 
C - - - - - 0x00FC5A 03:BC4A: A0 03     LDY #$03                                  ; CONSTANT - jumping off, free fall
C - - - - - 0x00FC5C 03:BC4C: 4C 32 BD  JMP loc_BD32_activate_jump_status_ex      ;

bra_BC4F_skip:
C - - - - - 0x00FC5F 03:BC4F: 20 DC BD  JSR sub_BDDC_try_to_change_self   ;
C - - - - - 0x00FC62 03:BC52: BD 5C 03  LDA vEnemyBStatus,X               ;
C - - - - - 0x00FC65 03:BC55: 29 02     AND #$02                          ; CONSTANT - the jump
C - - - - - 0x00FC67 03:BC57: F0 03     BEQ bra_BC5C_skip                 ; If vEnemyBStatus doesn't contain 0x02
C - - - - - 0x00FC69 03:BC59: 4C 2E BD  JMP loc_BD2E_activate_jump_status ;

bra_BC5C_skip:
C - - - - - 0x00FC6C 03:BC5C: BD 5C 03  LDA vEnemyBStatus,X               ;
C - - - - - 0x00FC6F 03:BC5F: 29 08     AND #$08                          ; CONSTANT - 'stop' status
C - - - - - 0x00FC71 03:BC61: F0 11     BEQ @bra_BC74_skip                ; If 'stop' status isn't activated
C - - - - - 0x00FC73 03:BC63: A9 00     LDA #$00                          ;
C - - - - - 0x00FC75 03:BC65: 9D 80 03  STA vEnemyBFrame_Counter,X        ; clear a frame counter
C - - - - - 0x00FC78 03:BC68: A0 0C     LDY #$0C                          ; an input parameter - sprite_magic2 (a stop frame #1)
C - - - - - 0x00FC7A 03:BC6A: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00FC7C 03:BC6C: 29 10     AND #$10                          ; CONSTANT - every 16 counter values
C - - - - - 0x00FC7E 03:BC6E: D0 0D     BNE bra_BC7D_prepare_rendering    ; If Register A == 0%XXX1XXXX
C - - - - - 0x00FC80 03:BC70: A0 10     LDY #$10                          ; an input parameter - sprite_magic2 (a stop frame #2)
C - - - - - 0x00FC82 03:BC72: D0 09     BNE bra_BC7D_prepare_rendering    ; Always true

@bra_BC74_skip:
C - - - - - 0x00FC84 03:BC74: 20 D6 BC  JSR sub_BCD6_movement             ;
C - - - - - 0x00FC87 03:BC77: BD 80 03  LDA vEnemyBFrame_Counter,X        ;
C - - - - - 0x00FC8A 03:BC7A: 0A        ASL                               ;
C - - - - - 0x00FC8B 03:BC7B: 0A        ASL                               ; *4
C - - - - - 0x00FC8C 03:BC7C: A8        TAY                               ; prepares the sprite_magic2 (The offset by the address)
; In: Register Y - sprite_magic2 (The offset by the address)
loc_BC7D_prepare_rendering:
bra_BC7D_prepare_rendering:
C D 1 - - - 0x00FC8D 03:BC7D: BD 74 03  LDA vEnemyBPosXLow,X               ;
C - - - - - 0x00FC90 03:BC80: 85 00     STA ram_0000                       ; prepares the 1st parameter
C - - - - - 0x00FC92 03:BC82: BD 7A 03  LDA vEnemyBPosXHigh,X              ;
C - - - - - 0x00FC95 03:BC85: 85 01     STA ram_0001                       ; prepares the 2nd parameter
C - - - - - 0x00FC97 03:BC87: 20 7B D6  JSR sub_D67B_out_of_sight          ;
C - - - - - 0x00FC9A 03:BC8A: 90 03     BCC bra_BC8F_skip                  ; If the enemy is visible
C - - - - - 0x00FC9C 03:BC8C: 4C 73 D8  JMP loc_D873_free_enemyB           ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_BC8F_skip:
C - - - - - 0x00FC9F 03:BC8F: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x00FCA2 03:BC92: 90 06     BCC bra_BC9A_skip                  ; If the enemy is on the screen
C - - - - - 0x00FCA4 03:BC94: 20 4D D8  JSR sub_D84D_enemyB_off_screen     ;
C - - - - - 0x00FCA7 03:BC97: 4C A0 BC  JMP loc_BCA0_render_entourage      ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_BC9A_skip:
C - - - - - 0x00FCAA 03:BC9A: 20 31 D8  JSR sub_D831_enemyB_on_screen      ;
C - - - - - 0x00FCAD 03:BC9D: 20 C7 BC  JSR sub_BCC7_add                   ;
loc_BCA0_render_entourage:
C D 1 - - - 0x00FCB0 03:BCA0: AD 01 03  LDA vEnemyB                        ;
C - - - - - 0x00FCB3 03:BCA3: C9 34     CMP #$34                           ; CONSTANT - Potted snakes
C - - - - - 0x00FCB5 03:BCA5: D0 4D     BNE bra_BCF4_RTS                   ; If vEnemyB != 0x34
loc_BCA7_render_entourage_ex:
C D 1 - - - 0x00FCB7 03:BCA7: A0 18     LDY #$18                           ; an input parameter - sprite_magic2 (an entourage frame)
C - - - - - 0x00FCB9 03:BCA9: BD 76 03  LDA vEnemyBProjectilePosXLow,X     ;
C - - - - - 0x00FCBC 03:BCAC: 85 00     STA ram_0000                       ; prepares the 1st parameter
C - - - - - 0x00FCBE 03:BCAE: BD 7C 03  LDA vEnemyBProjectilePosXHigh,X    ;
C - - - - - 0x00FCC1 03:BCB1: 85 01     STA ram_0001                       ; prepares the 2nd parameter
C - - - - - 0x00FCC3 03:BCB3: 20 7B D6  JSR sub_D67B_out_of_sight          ;
C - - - - - 0x00FCC6 03:BCB6: B0 3C     BCS bra_BCF4_RTS                   ; If the enemy isn't visible
C - - - - - 0x00FCC8 03:BCB8: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x00FCCB 03:BCBB: B0 37     BCS bra_BCF4_RTS                   ; If the enemy isn't on the screen
C - - - - - 0x00FCCD 03:BCBD: BD 6A 03  LDA vEnemyBProjectilePosY,X        ;
C - - - - - 0x00FCD0 03:BCC0: 85 00     STA ram_0000                       ; ~> sprite magic1
C - - - - - 0x00FCD2 03:BCC2: A5 03     LDA ram_0003                       ; from sub_D6AC_out_of_screen
C - - - - - 0x00FCD4 03:BCC4: 9D 70 03  STA vEnemyBProjectileScreenPosY,X  ;
; In: Register Y - sprite_magic2 (The offset by the address)
sub_BCC7_add:
C - - - - - 0x00FCD7 03:BCC7: 98        TYA                              ;
C - - - - - 0x00FCD8 03:BCC8: 18        CLC                              ;
C - - - - - 0x00FCD9 03:BCC9: 6D 06 03  ADC vEnemyBSpriteMagic2          ; + Y ~> sprite_magic2
C - - - - - 0x00FCDC 03:BCCC: 85 01     STA ram_0001                     ;
C - - - - - 0x00FCDE 03:BCCE: AD 07 03  LDA vEnemyBSpriteMagic3          ; ~> sprite_magic3
C - - - - - 0x00FCE1 03:BCD1: 85 02     STA ram_0002                     ;
C - - - - - 0x00FCE3 03:BCD3: 4C 33 CE  JMP loc_CE33_add_sprite_magic    ; bank FF

sub_BCD6_movement:
C - - - - - 0x00FCE6 03:BCD6: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00FCE9 03:BCD9: 6A        ROR                                    ;
C - - - - - 0x00FCEA 03:BCDA: 90 19     BCC bra_BCF5_right                     ; If the enemy is looking to the right
C - - - - - 0x00FCEC 03:BCDC: 20 FB BC  JSR sub_BCFB_try_movement_on_the_left  ;
loc_BCDF_inc_enemyB_frame_counter:                                             ; analog sub_D9C4_inc_enemyB_frame_counter
C D 1 - - - 0x00FCEF 03:BCDF: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00FCF1 03:BCE1: 29 07     AND #$07                               ;
C - - - - - 0x00FCF3 03:BCE3: D0 0F     BNE bra_BCF4_RTS                       ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0)
C - - - - - 0x00FCF5 03:BCE5: FE 80 03  INC vEnemyBFrame_Counter,X             ;
C - - - - - 0x00FCF8 03:BCE8: BD 80 03  LDA vEnemyBFrame_Counter,X             ;
C - - - - - 0x00FCFB 03:BCEB: C9 03     CMP #$03                               ; CONSTANT - Max value
C - - - - - 0x00FCFD 03:BCED: 90 05     BCC bra_BCF4_RTS                       ; If vEnemyBFrame_Counter < 0x03
C - - - - - 0x00FCFF 03:BCEF: A9 00     LDA #$00                               ;
C - - - - - 0x00FD01 03:BCF1: 9D 80 03  STA vEnemyBFrame_Counter,X             ; reset a counter
bra_BCF4_RTS:
C - - - - - 0x00FD04 03:BCF4: 60        RTS                                    ;

bra_BCF5_right:
C - - - - - 0x00FD05 03:BCF5: 20 20 BD  JSR sub_BD20_try_movement_on_the_right    ;
C - - - - - 0x00FD08 03:BCF8: 4C DF BC  JMP loc_BCDF_inc_enemyB_frame_counter     ;

; In: Register X - the enemyB number
sub_BCFB_try_movement_on_the_left:
C - - - - - 0x00FD0B 03:BCFB: 20 C2 D8  JSR sub_D8C2_check_enemyB_movement_on_the_left   ;
C - - - - - 0x00FD0E 03:BCFE: F0 09     BEQ bra_BD09_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00FD10 03:BD00: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x00FD12 03:BD02: 29 01     AND #$01                                         ;
C - - - - - 0x00FD14 03:BD04: F0 19     BEQ bra_BD1F_RTS                                 ; Branch if vLowCounter multiple of 2
C - - - - - 0x00FD16 03:BD06: 4C FC D7  JMP loc_D7FC_dec_EnemyBPosXLow                   ;

; In: Register X - the enemyB number
bra_BD09_try_jump_over:
C - - - - - 0x00FD19 03:BD09: BD 5C 03  LDA vEnemyBStatus,X           ;
C - - - - - 0x00FD1C 03:BD0C: 29 20     AND #$20                      ; CONSTANT - the dying
C - - - - - 0x00FD1E 03:BD0E: D0 0F     BNE bra_BD1F_RTS              ; If the enemy is dying
C - - - - - 0x00FD20 03:BD10: A9 02     LDA #$02                      ; CONSTANT - the jump
C - - - - - 0x00FD22 03:BD12: 20 1C BE  JSR sub_BE1C_change_substatus ;
C - - - - - 0x00FD25 03:BD15: A9 14     LDA #$14                      ; Initializes a jump counter
C - - - - - 0x00FD27 03:BD17: 9D 86 03  STA vEnemyBJumpCounter,X      ;
C - - - - - 0x00FD2A 03:BD1A: A9 03     LDA #$03                      ; CONSTANT - jump by side
C - - - - - 0x00FD2C 03:BD1C: 9D 92 03  STA vEnemyBJumpType,X         ;
bra_BD1F_RTS:
C - - - - - 0x00FD2F 03:BD1F: 60        RTS                           ;

; In: Register X - the enemyB number
sub_BD20_try_movement_on_the_right:
C - - - - - 0x00FD30 03:BD20: 20 B7 D8  JSR sub_D8B7_check_enemyB_movement_on_the_right  ;
C - - - - - 0x00FD33 03:BD23: F0 E4     BEQ bra_BD09_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x00FD35 03:BD25: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x00FD37 03:BD27: 29 01     AND #$01                                         ;
C - - - - - 0x00FD39 03:BD29: F0 F4     BEQ bra_BD1F_RTS                                 ; Branch if vLowCounter multiple of 2
C - - - - - 0x00FD3B 03:BD2B: 4C 1B D8  JMP loc_D81B_inc_EnemyBPosXLow                   ;

; In: Register X - the enemyB number
loc_BD2E_activate_jump_status:
C D 1 - - - 0x00FD3E 03:BD2E: A9 06     LDA #$06                       ; Initializes a jump counter
C - - - - - 0x00FD40 03:BD30: A0 03     LDY #$03                       ; Initializes a jump type
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyB number
loc_BD32_activate_jump_status_ex:
C D 1 - - - 0x00FD42 03:BD32: 9D 86 03  STA vEnemyBJumpCounter,X               ;
C - - - - - 0x00FD45 03:BD35: 98        TYA                                    ;
C - - - - - 0x00FD46 03:BD36: 9D 92 03  STA vEnemyBJumpType,X                  ;
C - - - - - 0x00FD49 03:BD39: A9 02     LDA #$02                               ; CONSTANT - the jump
C - - - - - 0x00FD4B 03:BD3B: 20 1C BE  JSR sub_BE1C_change_substatus          ;
C - - - - - 0x00FD4E 03:BD3E: A9 01     LDA #$01                               ;
C - - - - - 0x00FD50 03:BD40: 9D 80 03  STA vEnemyBFrame_Counter,X             ; reset a counter
loc_BD43_jump:
C - - - - - 0x00FD53 03:BD43: BD 68 03  LDA vEnemyBPosY,X                      ;
C - - - - - 0x00FD56 03:BD46: C9 DF     CMP #$DF                               ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00FD58 03:BD48: B0 1E     BCS bra_BD68_skip                      ; If PosY >= 0xDF
C - - - - - 0x00FD5A 03:BD4A: BD 92 03  LDA vEnemyBJumpType,X                  ;
C - - - - - 0x00FD5D 03:BD4D: C9 03     CMP #$03                               ; CONSTANT - jump by side
C - - - - - 0x00FD5F 03:BD4F: D0 17     BNE bra_BD68_skip                      ; If vEnemyAJumpType != 0x03
C - - - - - 0x00FD61 03:BD51: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00FD64 03:BD54: 6A        ROR                                    ;
C - - - - - 0x00FD65 03:BD55: 90 0A     BCC bra_BD61_right                     ; If the enemy is looking to the right
C - - - - - 0x00FD67 03:BD57: 29 10     AND #$10                               ; CONSTANT - the dying + shift right
C - - - - - 0x00FD69 03:BD59: D0 0A     BNE bra_BD65_invert                    ; If the enemy is dying
bra_BD5B_invert:
C - - - - - 0x00FD6B 03:BD5B: 20 FB BC  JSR sub_BCFB_try_movement_on_the_left  ;
C - - - - - 0x00FD6E 03:BD5E: 4C 68 BD  JMP loc_BD68_continue                  ;

; In: Register X - the enemyB number
bra_BD61_right:
C - - - - - 0x00FD71 03:BD61: 29 10     AND #$10                               ; CONSTANT - the dying + shift right
C - - - - - 0x00FD73 03:BD63: D0 F6     BNE bra_BD5B_invert                    ; If the enemy is dying
bra_BD65_invert:
C - - - - - 0x00FD75 03:BD65: 20 20 BD  JSR sub_BD20_try_movement_on_the_right ;
loc_BD68_continue:
bra_BD68_skip:
C D 1 - - - 0x00FD78 03:BD68: BC 86 03  LDY vEnemyBJumpCounter,X               ;
C - - - - - 0x00FD7B 03:BD6B: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y        ; X = [0x00-0x2F]
C - - - - - 0x00FD7E 03:BD6E: 18        CLC                                    ;
C - - - - - 0x00FD7F 03:BD6F: 7D 68 03  ADC vEnemyBPosY,X                      ;
C - - - - - 0x00FD82 03:BD72: C9 EF     CMP #$EF                               ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x00FD84 03:BD74: 90 09     BCC @bra_BD7F_skip                     ; If Register A < 0xEF
C - - - - - 0x00FD86 03:BD76: A0 EF     LDY #$EF                               ; 0xEF -> vPosY
C - - - - - 0x00FD88 03:BD78: C9 F8     CMP #$F8                               ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x00FD8A 03:BD7A: 90 02     BCC @bra_BD7E_skip                     ; If Register A < 0xF8
C - - - - - 0x00FD8C 03:BD7C: A0 00     LDY #$00                               ; 0x00 -> vPosY
@bra_BD7E_skip:
C - - - - - 0x00FD8E 03:BD7E: 98        TYA                                    ; A <~ 0x00 or 0xEF
@bra_BD7F_skip:
C - - - - - 0x00FD8F 03:BD7F: 9D 68 03  STA vEnemyBPosY,X                      ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x00FD92 03:BD82: BC 86 03  LDY vEnemyBJumpCounter,X               ;
C - - - - - 0x00FD95 03:BD85: C0 18     CPY #$18                               ; CONSTANT - a maximum amplitude
C - - - - - 0x00FD97 03:BD87: 90 38     BCC bra_BDC1_inc                       ; If vEnemyAJumpCounter < 0x18
C - - - - - 0x00FD99 03:BD89: C9 EF     CMP #$EF                               ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x00FD9B 03:BD8B: 90 05     BCC bra_BD92_skip                      ; If vPosY < 0xEF
C - - - - - 0x00FD9D 03:BD8D: A0 FF     LDY #$FF                               ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x00FD9F 03:BD8F: 4C 7D BC  JMP loc_BC7D_prepare_rendering         ;

; In: Register X - the enemyB number
bra_BD92_skip:
C - - - - - 0x00FDA2 03:BD92: 20 D9 D8  JSR sub_D8D9_enemyB_collision_by_one   ;
C - - - - - 0x00FDA5 03:BD95: F0 2A     BEQ bra_BDC1_inc                       ; If the collisions by Y-position don't exist
C - - - - - 0x00FDA7 03:BD97: C9 01     CMP #$01                               ; CONSTANT - a strong collision
C - - - - - 0x00FDA9 03:BD99: F0 0D     BEQ @bra_BDA8_skip                     ; If the collision is strong
C - - - - - 0x00FDAB 03:BD9B: BD 68 03  LDA vEnemyBPosY,X                      ;
C - - - - - 0x00FDAE 03:BD9E: C9 BF     CMP #$BF                               ;
C - - - - - 0x00FDB0 03:BDA0: B0 06     BCS @bra_BDA8_skip                     ; If PosY >= 0xBF
C - - - - - 0x00FDB2 03:BDA2: A5 2C     LDA vLowCounter                        ;
C - - - - - 0x00FDB4 03:BDA4: 29 03     AND #$03                               ;
C - - - - - 0x00FDB6 03:BDA6: D0 19     BNE bra_BDC1_inc                       ; Branch if vLowCounter doesn't multiple of 4 (vLowCounter % 4 != 0)
@bra_BDA8_skip:
C - - - - - 0x00FDB8 03:BDA8: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x00FDBB 03:BDAB: 29 20     AND #$20                               ; CONSTANT - the dying
C - - - - - 0x00FDBD 03:BDAD: D0 12     BNE bra_BDC1_inc                       ; If the enemy is dying
C - - - - - 0x00FDBF 03:BDAF: 20 9C D8  JSR sub_D89C_correction_EnemyBPosY     ;
C - - - - - 0x00FDC2 03:BDB2: A9 00     LDA #$00                               ;
C - - - - - 0x00FDC4 03:BDB4: 9D 86 03  STA vEnemyBJumpCounter,X               ; clear
C - - - - - 0x00FDC7 03:BDB7: A9 02     LDA #$02                               ; CONSTANT - jump out frame
C - - - - - 0x00FDC9 03:BDB9: 9D 80 03  STA vEnemyBFrame_Counter,X             ;
C - - - - - 0x00FDCC 03:BDBC: A0 08     LDY #$08                               ;
C - - - - - 0x00FDCE 03:BDBE: 4C 7D BC  JMP loc_BC7D_prepare_rendering         ; prepares the sprite_magic2 (The offset by the address), a jump out frame

loc_BDC1_dying:
bra_BDC1_inc:
C - - - - - 0x00FDD1 03:BDC1: FE 86 03  INC vEnemyBJumpCounter,X       ;
C - - - - - 0x00FDD4 03:BDC4: A9 2F     LDA #$2F                       ; CONSTANT - a maximum jump value
C - - - - - 0x00FDD6 03:BDC6: DD 86 03  CMP vEnemyBJumpCounter,X       ;
C - - - - - 0x00FDD9 03:BDC9: B0 03     BCS @bra_BDCE_skip             ; If 0x2F >= jumpCounter, i.e. less than maximum
C - - - - - 0x00FDDB 03:BDCB: 9D 86 03  STA vEnemyBJumpCounter,X       ;
@bra_BDCE_skip:
C - - - - - 0x00FDDE 03:BDCE: A0 08     LDY #$08                       ; an inpur parameter #1 (a jump out)
C - - - - - 0x00FDE0 03:BDD0: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x00FDE3 03:BDD3: 29 20     AND #$20                       ; CONSTANT - the dying
C - - - - - 0x00FDE5 03:BDD5: D0 02     BNE @bra_BDD9_skip             ; If the enemy is dying
C - - - - - 0x00FDE7 03:BDD7: A0 04     LDY #$04                       ; an inpur parameter #2 (a jump)
@bra_BDD9_skip:
C - - - - - 0x00FDE9 03:BDD9: 4C 7D BC  JMP loc_BC7D_prepare_rendering ; prepares the sprite_magic2 (The offset by the address)

; In: Register X - the enemyB number
sub_BDDC_try_to_change_self:
C - - - - - 0x00FDEC 03:BDDC: BD 86 03  LDA vEnemyBJumpCounter,X          ;
C - - - - - 0x00FDEF 03:BDDF: F0 0A     BEQ @bra_BDEB_skip                ; If jumpCounter == 0x00
C - - - - - 0x00FDF1 03:BDE1: DE 86 03  DEC vEnemyBJumpCounter,X          ;
C - - - - - 0x00FDF4 03:BDE4: D0 42     BNE bra_BE28_RTS                  ; If jumpCounter != 0x00
C - - - - - 0x00FDF6 03:BDE6: A9 00     LDA #$00                          ; clear substatus
C - - - - - 0x00FDF8 03:BDE8: 20 1C BE  JSR sub_BE1C_change_substatus     ;
@bra_BDEB_skip:
C - - - - - 0x00FDFB 03:BDEB: 20 29 BE  JSR sub_BE29_try_change_direction ;
C - - - - - 0x00FDFE 03:BDEE: BD 80 03  LDA vEnemyBFrame_Counter,X        ;
C - - - - - 0x00FE01 03:BDF1: C9 01     CMP #$01                          ;
C - - - - - 0x00FE03 03:BDF3: F0 33     BEQ bra_BE28_RTS                  ; If frameCounter == 0x01
C - - - - - 0x00FE05 03:BDF5: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x00FE07 03:BDF7: 29 3F     AND #$3F                          ;
C - - - - - 0x00FE09 03:BDF9: D0 2D     BNE bra_BE28_RTS                  ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x00FE0B 03:BDFB: 20 64 D0  JSR sub_D064_generate_rng         ;
C - - - - - 0x00FE0E 03:BDFE: 6A        ROR                               ;
C - - - - - 0x00FE0F 03:BDFF: B0 27     BCS bra_BE28_RTS                  ; 50% chance branch
C - - - - - 0x00FE11 03:BE01: 29 07     AND #$07                          ; A is {0x00, ... , 0x07}
C - - - - - 0x00FE13 03:BE03: AC 01 03  LDY vEnemyB                       ;
C - - - - - 0x00FE16 03:BE06: C0 34     CPY #$34                          ; CONSTANT - Potted snakes
C - - - - - 0x00FE18 03:BE08: D0 03     BNE @bra_BE0D_skip                ; If vEnemyB != 0x34
C - - - - - 0x00FE1A 03:BE0A: 18        CLC                               ;
C - - - - - 0x00FE1B 03:BE0B: 69 08     ADC #$08                          ; A is {0x08, ... , 0x0F}
@bra_BE0D_skip:
C - - - - - 0x00FE1D 03:BE0D: A8        TAY                               ;
C - - - - - 0x00FE1E 03:BE0E: B9 4E BB  LDA tbl_BB4E_status_flags,Y       ;
C - - - - - 0x00FE21 03:BE11: C9 08     CMP #$08                          ; CONSTANT - K flag (see vEnemyBStatus)
C - - - - - 0x00FE23 03:BE13: D0 07     BNE bra_BE1C_change_substatus     ; If a status != 0x08
C - - - - - 0x00FE25 03:BE15: 48        PHA                               ; store A 
C - - - - - 0x00FE26 03:BE16: A9 40     LDA #$40                          ; An initialize jump value for 'stop' 
C - - - - - 0x00FE28 03:BE18: 9D 86 03  STA vEnemyBJumpCounter,X          ;
C - - - - - 0x00FE2B 03:BE1B: 68        PLA                               ; retrieve A (see $BE15)
; In: Register A - an new status
sub_BE1C_change_substatus:
bra_BE1C_change_substatus:
C - - - - - 0x00FE2C 03:BE1C: 85 05     STA ram_0005            ;
C - - - - - 0x00FE2E 03:BE1E: BD 5C 03  LDA vEnemyBStatus,X     ;
C - - - - - 0x00FE31 03:BE21: 29 C1     AND #$C1                ;
C - - - - - 0x00FE33 03:BE23: 05 05     ORA ram_0005            ;
C - - - - - 0x00FE35 03:BE25: 9D 5C 03  STA vEnemyBStatus,X     ;
bra_BE28_RTS:
C - - - - - 0x00FE38 03:BE28: 60        RTS                     ;

; In: Register X - the enemyB number
sub_BE29_try_change_direction:
C - - - - - 0x00FE39 03:BE29: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6DB
C - - - - - 0x00FE3B 03:BE2B: 20 DB D6  JSR sub_D6DB_try_change_enemyB_direction ;
C - - - - - 0x00FE3E 03:BE2E: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x00FE40 03:BE30: BD 5C 03  LDA vEnemyBStatus,X                      ;
C - - - - - 0x00FE43 03:BE33: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyBStatus)
C - - - - - 0x00FE45 03:BE35: 05 05     ORA ram_0005                             ;
C - - - - - 0x00FE47 03:BE37: 9D 5C 03  STA vEnemyBStatus,X                      ;
C - - - - - 0x00FE4A 03:BE3A: 60        RTS                                      ;

- D - - - - 0x00FE4B 03:BE3B: FC        .byte $FC   ; 
- D - - - - 0x00FE4C 03:BE3C: A7        .byte $A7   ; 
- D - - - - 0x00FE4D 03:BE3D: C0        .byte $C0   ; 
- D - - - - 0x00FE4E 03:BE3E: FD        .byte $FD   ; 
- D - - - - 0x00FE4F 03:BE3F: 02        .byte $02   ; 
- D - - - - 0x00FE50 03:BE40: FB        .byte $FB   ; 
- D - - - - 0x00FE51 03:BE41: A6        .byte $A6   ; 
- D - - - - 0x00FE52 03:BE42: C0        .byte $C0   ; 
- D - - - - 0x00FE53 03:BE43: FC        .byte $FC   ; 
- D - - - - 0x00FE54 03:BE44: FC        .byte $FC   ; 
- D - - - - 0x00FE55 03:BE45: A7        .byte $A7   ; 
- D - - - - 0x00FE56 03:BE46: 00        .byte $00   ; 
- D - - - - 0x00FE57 03:BE47: 03        .byte $03   ; 
- D - - - - 0x00FE58 03:BE48: 02        .byte $02   ; 
- D - - - - 0x00FE59 03:BE49: F5        .byte $F5   ; 
- D - - - - 0x00FE5A 03:BE4A: A6        .byte $A6   ; 
- D - - - - 0x00FE5B 03:BE4B: 40        .byte $40   ; 
- D - - - - 0x00FE5C 03:BE4C: FC        .byte $FC   ; 
- D - - - - 0x00FE5D 03:BE4D: FC        .byte $FC   ; 
- D - - - - 0x00FE5E 03:BE4E: A7        .byte $A7   ; 
- D - - - - 0x00FE5F 03:BE4F: 40        .byte $40   ; 
- D - - - - 0x00FE60 03:BE50: FD        .byte $FD   ; 
- D - - - - 0x00FE61 03:BE51: 02        .byte $02   ; 
- D - - - - 0x00FE62 03:BE52: FD        .byte $FD   ; 
- D - - - - 0x00FE63 03:BE53: A6        .byte $A6   ; 
- D - - - - 0x00FE64 03:BE54: 40        .byte $40   ; 
- D - - - - 0x00FE65 03:BE55: FC        .byte $FC   ; 
- D - - - - 0x00FE66 03:BE56: FC        .byte $FC   ; 
- D - - - - 0x00FE67 03:BE57: A7        .byte $A7   ; 
- D - - - - 0x00FE68 03:BE58: 80        .byte $80   ; 
- D - - - - 0x00FE69 03:BE59: 03        .byte $03   ; 
- D - - - - 0x00FE6A 03:BE5A: 02        .byte $02   ; 
- D - - - - 0x00FE6B 03:BE5B: 03        .byte $03   ; 
- D - - - - 0x00FE6C 03:BE5C: A6        .byte $A6   ; 
- D - - - - 0x00FE6D 03:BE5D: 80        .byte $80   ; 
- D - - - - 0x00FE6E 03:BE5E: FC        .byte $FC   ; 
- D - - - - 0x00FE6F 03:BE5F: FC        .byte $FC   ; 
- D - - - - 0x00FE70 03:BE60: A7        .byte $A7   ; 
- D - - - - 0x00FE71 03:BE61: 80        .byte $80   ; 
- D - - - - 0x00FE72 03:BE62: FB        .byte $FB   ; 
- D - - - - 0x00FE73 03:BE63: 02        .byte $02   ; 
- D - - - - 0x00FE74 03:BE64: FB        .byte $FB   ; 
- D - - - - 0x00FE75 03:BE65: A6        .byte $A6   ; 
- D - - - - 0x00FE76 03:BE66: 80        .byte $80   ; 
- D - - - - 0x00FE77 03:BE67: FC        .byte $FC   ; 
- D - - - - 0x00FE78 03:BE68: FC        .byte $FC   ; 
- D - - - - 0x00FE79 03:BE69: A7        .byte $A7   ; 
- D - - - - 0x00FE7A 03:BE6A: 40        .byte $40   ; 
- D - - - - 0x00FE7B 03:BE6B: F5        .byte $F5   ; 
- D - - - - 0x00FE7C 03:BE6C: 03        .byte $03   ; 
- D - - - - 0x00FE7D 03:BE6D: E8        .byte $E8   ; 
- D - - - - 0x00FE7E 03:BE6E: A4        .byte $A4   ; 
- D - - - - 0x00FE7F 03:BE6F: 42        .byte $42   ; <B>
- D - - - - 0x00FE80 03:BE70: 00        .byte $00   ; 
- D - - - - 0x00FE81 03:BE71: E0        .byte $E0   ; 
- D - - - - 0x00FE82 03:BE72: A6        .byte $A6   ; 
- D - - - - 0x00FE83 03:BE73: 40        .byte $40   ; 
- D - - - - 0x00FE84 03:BE74: 02        .byte $02   ; 
- D - - - - 0x00FE85 03:BE75: E7        .byte $E7   ; 
- D - - - - 0x00FE86 03:BE76: A7        .byte $A7   ; 
- D - - - - 0x00FE87 03:BE77: 40        .byte $40   ; 
- D - - - - 0x00FE88 03:BE78: 03        .byte $03   ; 
- D - - - - 0x00FE89 03:BE79: 03        .byte $03   ; 
- D - - - - 0x00FE8A 03:BE7A: E8        .byte $E8   ; 
- D - - - - 0x00FE8B 03:BE7B: A4        .byte $A4   ; 
- D - - - - 0x00FE8C 03:BE7C: 02        .byte $02   ; 
- D - - - - 0x00FE8D 03:BE7D: F8        .byte $F8   ; 
- D - - - - 0x00FE8E 03:BE7E: E0        .byte $E0   ; 
- D - - - - 0x00FE8F 03:BE7F: A6        .byte $A6   ; 
- D - - - - 0x00FE90 03:BE80: 00        .byte $00   ; 
- D - - - - 0x00FE91 03:BE81: F6        .byte $F6   ; 
- D - - - - 0x00FE92 03:BE82: E7        .byte $E7   ; 
- D - - - - 0x00FE93 03:BE83: A7        .byte $A7   ; 
- D - - - - 0x00FE94 03:BE84: 00        .byte $00   ; 
- D - - - - 0x00FE95 03:BE85: F5        .byte $F5   ; 
- D - - - - 0x00FE96 03:BE86: 04        .byte $04   ; 
- D - - - - 0x00FE97 03:BE87: E0        .byte $E0   ; 
- D - - - - 0x00FE98 03:BE88: A5        .byte $A5   ; 
- D - - - - 0x00FE99 03:BE89: 42        .byte $42   ; <B>
- D - - - - 0x00FE9A 03:BE8A: 02        .byte $02   ; 
- D - - - - 0x00FE9B 03:BE8B: E8        .byte $E8   ; 
- D - - - - 0x00FE9C 03:BE8C: AC        .byte $AC   ; 
- D - - - - 0x00FE9D 03:BE8D: 42        .byte $42   ; <B>
- D - - - - 0x00FE9E 03:BE8E: 00        .byte $00   ; 
- D - - - - 0x00FE9F 03:BE8F: D4        .byte $D4   ; 
- D - - - - 0x00FEA0 03:BE90: A6        .byte $A6   ; 
- D - - - - 0x00FEA1 03:BE91: 40        .byte $40   ; 
- D - - - - 0x00FEA2 03:BE92: 01        .byte $01   ; 
- D - - - - 0x00FEA3 03:BE93: DB        .byte $DB   ; 
- D - - - - 0x00FEA4 03:BE94: A7        .byte $A7   ; 
- D - - - - 0x00FEA5 03:BE95: 40        .byte $40   ; 
- D - - - - 0x00FEA6 03:BE96: 02        .byte $02   ; 
- D - - - - 0x00FEA7 03:BE97: 04        .byte $04   ; 
- D - - - - 0x00FEA8 03:BE98: E0        .byte $E0   ; 
- D - - - - 0x00FEA9 03:BE99: A5        .byte $A5   ; 
- D - - - - 0x00FEAA 03:BE9A: 02        .byte $02   ; 
- D - - - - 0x00FEAB 03:BE9B: F6        .byte $F6   ; 
- D - - - - 0x00FEAC 03:BE9C: E8        .byte $E8   ; 
- D - - - - 0x00FEAD 03:BE9D: AC        .byte $AC   ; 
- D - - - - 0x00FEAE 03:BE9E: 02        .byte $02   ; 
- D - - - - 0x00FEAF 03:BE9F: F8        .byte $F8   ; 
- D - - - - 0x00FEB0 03:BEA0: D4        .byte $D4   ; 
- D - - - - 0x00FEB1 03:BEA1: A6        .byte $A6   ; 
- D - - - - 0x00FEB2 03:BEA2: 00        .byte $00   ; 
- D - - - - 0x00FEB3 03:BEA3: F7        .byte $F7   ; 
- D - - - - 0x00FEB4 03:BEA4: DB        .byte $DB   ; 
- D - - - - 0x00FEB5 03:BEA5: A7        .byte $A7   ; 
- D - - - - 0x00FEB6 03:BEA6: 00        .byte $00   ; 
- D - - - - 0x00FEB7 03:BEA7: F6        .byte $F6   ; 
- D - - - - 0x00FEB8 03:BEA8: 01        .byte $01   ; 
- D - - - - 0x00FEB9 03:BEA9: E8        .byte $E8   ; 
- D - - - - 0x00FEBA 03:BEAA: A4        .byte $A4   ; 
- D - - - - 0x00FEBB 03:BEAB: 42        .byte $42   ; <B>
- D - - - - 0x00FEBC 03:BEAC: 00        .byte $00   ; 
- D - - - - 0x00FEBD 03:BEAD: 01        .byte $01   ; 
- D - - - - 0x00FEBE 03:BEAE: E8        .byte $E8   ; 
- D - - - - 0x00FEBF 03:BEAF: A4        .byte $A4   ; 
- D - - - - 0x00FEC0 03:BEB0: 02        .byte $02   ; 
- D - - - - 0x00FEC1 03:BEB1: F8        .byte $F8   ; 
- D - - - - 0x00FEC2 03:BEB2: 00        .byte $00   ; 
- D - - - - 0x00FEC3 03:BEB3: 00        .byte $00   ; 
- D - - - - 0x00FEC4 03:BEB4: 00        .byte $00   ; 
- D - - - - 0x00FEC5 03:BEB5: 00        .byte $00   ; 
- D - - - - 0x00FEC6 03:BEB6: 00        .byte $00   ; 
- D - - - - 0x00FEC7 03:BEB7: 00        .byte $00   ; 
- D - - - - 0x00FEC8 03:BEB8: 00        .byte $00   ; 
- D - - - - 0x00FEC9 03:BEB9: 00        .byte $00   ; 
- D - - - - 0x00FECA 03:BEBA: 00        .byte $00   ; 
- D - - - - 0x00FECB 03:BEBB: 00        .byte $00   ; 
- D - - - - 0x00FECC 03:BEBC: 00        .byte $00   ; 
- D - - - - 0x00FECD 03:BEBD: 00        .byte $00   ; 
- D - - - - 0x00FECE 03:BEBE: 00        .byte $00   ; 
- D - - - - 0x00FECF 03:BEBF: 00        .byte $00   ; 
- D - - - - 0x00FED0 03:BEC0: 00        .byte $00   ; 
- D - - - - 0x00FED1 03:BEC1: 00        .byte $00   ; 
- D - - - - 0x00FED2 03:BEC2: 00        .byte $00   ; 
- D - - - - 0x00FED3 03:BEC3: 00        .byte $00   ; 
- D - - - - 0x00FED4 03:BEC4: 00        .byte $00   ; 
- D - - - - 0x00FED5 03:BEC5: 00        .byte $00   ; 
- D - - - - 0x00FED6 03:BEC6: 00        .byte $00   ; 
- D - - - - 0x00FED7 03:BEC7: 00        .byte $00   ; 
- D - - - - 0x00FED8 03:BEC8: 00        .byte $00   ; 
- D - - - - 0x00FED9 03:BEC9: 00        .byte $00   ; 
- D - - - - 0x00FEDA 03:BECA: 00        .byte $00   ; 
- D - - - - 0x00FEDB 03:BECB: 00        .byte $00   ; 
- D - - - - 0x00FEDC 03:BECC: 00        .byte $00   ; 
- D - - - - 0x00FEDD 03:BECD: 00        .byte $00   ; 
- D - - - - 0x00FEDE 03:BECE: 00        .byte $00   ; 
- D - - - - 0x00FEDF 03:BECF: 00        .byte $00   ; 
- D - - - - 0x00FEE0 03:BED0: 00        .byte $00   ; 
- D - - - - 0x00FEE1 03:BED1: 00        .byte $00   ; 
- D - - - - 0x00FEE2 03:BED2: 00        .byte $00   ; 
- D - - - - 0x00FEE3 03:BED3: 00        .byte $00   ; 
- D - - - - 0x00FEE4 03:BED4: 00        .byte $00   ; 
- D - - - - 0x00FEE5 03:BED5: 00        .byte $00   ; 
- D - - - - 0x00FEE6 03:BED6: 00        .byte $00   ; 
- D - - - - 0x00FEE7 03:BED7: 00        .byte $00   ; 
- D - - - - 0x00FEE8 03:BED8: 00        .byte $00   ; 
- D - - - - 0x00FEE9 03:BED9: 00        .byte $00   ; 
- D - - - - 0x00FEEA 03:BEDA: 00        .byte $00   ; 
- D - - - - 0x00FEEB 03:BEDB: 00        .byte $00   ; 
- D - - - - 0x00FEEC 03:BEDC: 00        .byte $00   ; 
- D - - - - 0x00FEED 03:BEDD: 00        .byte $00   ; 
- D - - - - 0x00FEEE 03:BEDE: 00        .byte $00   ; 
- D - - - - 0x00FEEF 03:BEDF: 00        .byte $00   ; 
- D - - - - 0x00FEF0 03:BEE0: 00        .byte $00   ; 
- D - - - - 0x00FEF1 03:BEE1: 00        .byte $00   ; 
- D - - - - 0x00FEF2 03:BEE2: 00        .byte $00   ; 
- D - - - - 0x00FEF3 03:BEE3: 00        .byte $00   ; 
- D - - - - 0x00FEF4 03:BEE4: 00        .byte $00   ; 
- D - - - - 0x00FEF5 03:BEE5: 00        .byte $00   ; 
- D - - - - 0x00FEF6 03:BEE6: 00        .byte $00   ; 
- D - - - - 0x00FEF7 03:BEE7: 00        .byte $00   ; 
- D - - - - 0x00FEF8 03:BEE8: 00        .byte $00   ; 
- D - - - - 0x00FEF9 03:BEE9: 00        .byte $00   ; 
- D - - - - 0x00FEFA 03:BEEA: 00        .byte $00   ; 
- D - - - - 0x00FEFB 03:BEEB: 00        .byte $00   ; 
- D - - - - 0x00FEFC 03:BEEC: 00        .byte $00   ; 
- D - - - - 0x00FEFD 03:BEED: 00        .byte $00   ; 
- D - - - - 0x00FEFE 03:BEEE: 00        .byte $00   ; 
- D - - - - 0x00FEFF 03:BEEF: 00        .byte $00   ; 
- D - - - - 0x00FF00 03:BEF0: 00        .byte $00   ; 
- D - - - - 0x00FF01 03:BEF1: 00        .byte $00   ; 
- D - - - - 0x00FF02 03:BEF2: 00        .byte $00   ; 
- D - - - - 0x00FF03 03:BEF3: 00        .byte $00   ; 
- D - - - - 0x00FF04 03:BEF4: 00        .byte $00   ; 
- D - - - - 0x00FF05 03:BEF5: 00        .byte $00   ; 
- D - - - - 0x00FF06 03:BEF6: 00        .byte $00   ; 
- D - - - - 0x00FF07 03:BEF7: 00        .byte $00   ; 
- D - - - - 0x00FF08 03:BEF8: 00        .byte $00   ; 
- D - - - - 0x00FF09 03:BEF9: 00        .byte $00   ; 
- D - - - - 0x00FF0A 03:BEFA: 00        .byte $00   ; 
- D - - - - 0x00FF0B 03:BEFB: 00        .byte $00   ; 
- D - - - - 0x00FF0C 03:BEFC: 00        .byte $00   ; 
- D - - - - 0x00FF0D 03:BEFD: 00        .byte $00   ; 
- D - - - - 0x00FF0E 03:BEFE: 00        .byte $00   ; 
- D - - - - 0x00FF0F 03:BEFF: 00        .byte $00   ; 
- D - - - - 0x00FF10 03:BF00: 00        .byte $00   ; 
- D - - - - 0x00FF11 03:BF01: 00        .byte $00   ; 
- D - - - - 0x00FF12 03:BF02: 00        .byte $00   ; 
- D - - - - 0x00FF13 03:BF03: 00        .byte $00   ; 
- D - - - - 0x00FF14 03:BF04: 00        .byte $00   ; 
- D - - - - 0x00FF15 03:BF05: 00        .byte $00   ; 
- D - - - - 0x00FF16 03:BF06: 00        .byte $00   ; 
- D - - - - 0x00FF17 03:BF07: 00        .byte $00   ; 
- D - - - - 0x00FF18 03:BF08: 00        .byte $00   ; 
- D - - - - 0x00FF19 03:BF09: 00        .byte $00   ; 
- D - - - - 0x00FF1A 03:BF0A: 00        .byte $00   ; 
- D - - - - 0x00FF1B 03:BF0B: 00        .byte $00   ; 
- D - - - - 0x00FF1C 03:BF0C: 00        .byte $00   ; 
- D - - - - 0x00FF1D 03:BF0D: 00        .byte $00   ; 
- D - - - - 0x00FF1E 03:BF0E: 00        .byte $00   ; 
- D - - - - 0x00FF1F 03:BF0F: 00        .byte $00   ; 
- D - - - - 0x00FF20 03:BF10: 00        .byte $00   ; 
- D - - - - 0x00FF21 03:BF11: 00        .byte $00   ; 
- D - - - - 0x00FF22 03:BF12: 00        .byte $00   ; 
- D - - - - 0x00FF23 03:BF13: 00        .byte $00   ; 
- D - - - - 0x00FF24 03:BF14: 00        .byte $00   ; 
- D - - - - 0x00FF25 03:BF15: 00        .byte $00   ; 
- D - - - - 0x00FF26 03:BF16: 00        .byte $00   ; 
- D - - - - 0x00FF27 03:BF17: 00        .byte $00   ; 
- D - - - - 0x00FF28 03:BF18: 00        .byte $00   ; 
- D - - - - 0x00FF29 03:BF19: 00        .byte $00   ; 
- D - - - - 0x00FF2A 03:BF1A: 00        .byte $00   ; 
- D - - - - 0x00FF2B 03:BF1B: 00        .byte $00   ; 
- D - - - - 0x00FF2C 03:BF1C: 00        .byte $00   ; 
- D - - - - 0x00FF2D 03:BF1D: 00        .byte $00   ; 
- D - - - - 0x00FF2E 03:BF1E: 00        .byte $00   ; 
- D - - - - 0x00FF2F 03:BF1F: 00        .byte $00   ; 
- D - - - - 0x00FF30 03:BF20: 00        .byte $00   ; 
- D - - - - 0x00FF31 03:BF21: 00        .byte $00   ; 
- D - - - - 0x00FF32 03:BF22: 00        .byte $00   ; 
- D - - - - 0x00FF33 03:BF23: 00        .byte $00   ; 
- D - - - - 0x00FF34 03:BF24: 00        .byte $00   ; 
- D - - - - 0x00FF35 03:BF25: 00        .byte $00   ; 
- D - - - - 0x00FF36 03:BF26: 00        .byte $00   ; 
- D - - - - 0x00FF37 03:BF27: 00        .byte $00   ; 
- D - - - - 0x00FF38 03:BF28: 00        .byte $00   ; 
- D - - - - 0x00FF39 03:BF29: 00        .byte $00   ; 
- D - - - - 0x00FF3A 03:BF2A: 00        .byte $00   ; 
- D - - - - 0x00FF3B 03:BF2B: 00        .byte $00   ; 
- D - - - - 0x00FF3C 03:BF2C: 00        .byte $00   ; 
- D - - - - 0x00FF3D 03:BF2D: 00        .byte $00   ; 
- D - - - - 0x00FF3E 03:BF2E: 00        .byte $00   ; 
- D - - - - 0x00FF3F 03:BF2F: 00        .byte $00   ; 
- D - - - - 0x00FF40 03:BF30: 00        .byte $00   ; 
- D - - - - 0x00FF41 03:BF31: 00        .byte $00   ; 
- D - - - - 0x00FF42 03:BF32: 00        .byte $00   ; 
- D - - - - 0x00FF43 03:BF33: 00        .byte $00   ; 
- D - - - - 0x00FF44 03:BF34: 00        .byte $00   ; 
- D - - - - 0x00FF45 03:BF35: 00        .byte $00   ; 
- D - - - - 0x00FF46 03:BF36: 00        .byte $00   ; 
- D - - - - 0x00FF47 03:BF37: 00        .byte $00   ; 
- D - - - - 0x00FF48 03:BF38: 00        .byte $00   ; 
- D - - - - 0x00FF49 03:BF39: 00        .byte $00   ; 
- D - - - - 0x00FF4A 03:BF3A: 00        .byte $00   ; 
- D - - - - 0x00FF4B 03:BF3B: 00        .byte $00   ; 
- D - - - - 0x00FF4C 03:BF3C: 00        .byte $00   ; 
- D - - - - 0x00FF4D 03:BF3D: 00        .byte $00   ; 
- D - - - - 0x00FF4E 03:BF3E: 00        .byte $00   ; 
- D - - - - 0x00FF4F 03:BF3F: 00        .byte $00   ; 
- D - - - - 0x00FF50 03:BF40: 00        .byte $00   ; 
- D - - - - 0x00FF51 03:BF41: 00        .byte $00   ; 
- D - - - - 0x00FF52 03:BF42: 00        .byte $00   ; 
- D - - - - 0x00FF53 03:BF43: 00        .byte $00   ; 
- D - - - - 0x00FF54 03:BF44: 00        .byte $00   ; 
- D - - - - 0x00FF55 03:BF45: 00        .byte $00   ; 
- D - - - - 0x00FF56 03:BF46: 00        .byte $00   ; 
- D - - - - 0x00FF57 03:BF47: 00        .byte $00   ; 
- D - - - - 0x00FF58 03:BF48: 00        .byte $00   ; 
- D - - - - 0x00FF59 03:BF49: 00        .byte $00   ; 
- D - - - - 0x00FF5A 03:BF4A: 00        .byte $00   ; 
- D - - - - 0x00FF5B 03:BF4B: 00        .byte $00   ; 
- D - - - - 0x00FF5C 03:BF4C: 00        .byte $00   ; 
- D - - - - 0x00FF5D 03:BF4D: 00        .byte $00   ; 
- D - - - - 0x00FF5E 03:BF4E: 00        .byte $00   ; 
- D - - - - 0x00FF5F 03:BF4F: 00        .byte $00   ; 
- D - - - - 0x00FF60 03:BF50: 00        .byte $00   ; 
- D - - - - 0x00FF61 03:BF51: 00        .byte $00   ; 
- D - - - - 0x00FF62 03:BF52: 00        .byte $00   ; 
- D - - - - 0x00FF63 03:BF53: 00        .byte $00   ; 
- D - - - - 0x00FF64 03:BF54: 00        .byte $00   ; 
- D - - - - 0x00FF65 03:BF55: 00        .byte $00   ; 
- D - - - - 0x00FF66 03:BF56: 00        .byte $00   ; 
- D - - - - 0x00FF67 03:BF57: 00        .byte $00   ; 
- D - - - - 0x00FF68 03:BF58: 00        .byte $00   ; 
- D - - - - 0x00FF69 03:BF59: 00        .byte $00   ; 
- D - - - - 0x00FF6A 03:BF5A: 00        .byte $00   ; 
- D - - - - 0x00FF6B 03:BF5B: 00        .byte $00   ; 
- D - - - - 0x00FF6C 03:BF5C: 00        .byte $00   ; 
- D - - - - 0x00FF6D 03:BF5D: 00        .byte $00   ; 
- D - - - - 0x00FF6E 03:BF5E: 00        .byte $00   ; 
- D - - - - 0x00FF6F 03:BF5F: 00        .byte $00   ; 
- D - - - - 0x00FF70 03:BF60: 00        .byte $00   ; 
- D - - - - 0x00FF71 03:BF61: 00        .byte $00   ; 
- D - - - - 0x00FF72 03:BF62: 00        .byte $00   ; 
- D - - - - 0x00FF73 03:BF63: 00        .byte $00   ; 
- D - - - - 0x00FF74 03:BF64: 00        .byte $00   ; 
- D - - - - 0x00FF75 03:BF65: 00        .byte $00   ; 
- D - - - - 0x00FF76 03:BF66: 00        .byte $00   ; 
- D - - - - 0x00FF77 03:BF67: 00        .byte $00   ; 
- D - - - - 0x00FF78 03:BF68: 00        .byte $00   ; 
- D - - - - 0x00FF79 03:BF69: 00        .byte $00   ; 
- D - - - - 0x00FF7A 03:BF6A: 00        .byte $00   ; 
- D - - - - 0x00FF7B 03:BF6B: 00        .byte $00   ; 
- D - - - - 0x00FF7C 03:BF6C: 00        .byte $00   ; 
- D - - - - 0x00FF7D 03:BF6D: 00        .byte $00   ; 
- D - - - - 0x00FF7E 03:BF6E: 00        .byte $00   ; 
- D - - - - 0x00FF7F 03:BF6F: 00        .byte $00   ; 
- D - - - - 0x00FF80 03:BF70: 00        .byte $00   ; 
- D - - - - 0x00FF81 03:BF71: 00        .byte $00   ; 
- D - - - - 0x00FF82 03:BF72: 00        .byte $00   ; 
- D - - - - 0x00FF83 03:BF73: 00        .byte $00   ; 
- D - - - - 0x00FF84 03:BF74: 00        .byte $00   ; 
- D - - - - 0x00FF85 03:BF75: 00        .byte $00   ; 
- D - - - - 0x00FF86 03:BF76: 00        .byte $00   ; 
- D - - - - 0x00FF87 03:BF77: 00        .byte $00   ; 
- D - - - - 0x00FF88 03:BF78: 00        .byte $00   ; 
- D - - - - 0x00FF89 03:BF79: 00        .byte $00   ; 
- D - - - - 0x00FF8A 03:BF7A: 00        .byte $00   ; 
- D - - - - 0x00FF8B 03:BF7B: 00        .byte $00   ; 
- D - - - - 0x00FF8C 03:BF7C: 00        .byte $00   ; 
- D - - - - 0x00FF8D 03:BF7D: 00        .byte $00   ; 
- D - - - - 0x00FF8E 03:BF7E: 00        .byte $00   ; 
- D - - - - 0x00FF8F 03:BF7F: 00        .byte $00   ; 
- D - - - - 0x00FF90 03:BF80: 00        .byte $00   ; 
- D - - - - 0x00FF91 03:BF81: 00        .byte $00   ; 
- D - - - - 0x00FF92 03:BF82: 00        .byte $00   ; 
- D - - - - 0x00FF93 03:BF83: 00        .byte $00   ; 
- D - - - - 0x00FF94 03:BF84: 00        .byte $00   ; 
- D - - - - 0x00FF95 03:BF85: 00        .byte $00   ; 
- D - - - - 0x00FF96 03:BF86: 00        .byte $00   ; 
- D - - - - 0x00FF97 03:BF87: 00        .byte $00   ; 
- D - - - - 0x00FF98 03:BF88: 00        .byte $00   ; 
- D - - - - 0x00FF99 03:BF89: 00        .byte $00   ; 
- D - - - - 0x00FF9A 03:BF8A: 00        .byte $00   ; 
- D - - - - 0x00FF9B 03:BF8B: 00        .byte $00   ; 
- D - - - - 0x00FF9C 03:BF8C: 00        .byte $00   ; 
- D - - - - 0x00FF9D 03:BF8D: 00        .byte $00   ; 
- D - - - - 0x00FF9E 03:BF8E: 00        .byte $00   ; 
- D - - - - 0x00FF9F 03:BF8F: 00        .byte $00   ; 
- D - - - - 0x00FFA0 03:BF90: 00        .byte $00   ; 
- D - - - - 0x00FFA1 03:BF91: 00        .byte $00   ; 
- D - - - - 0x00FFA2 03:BF92: 00        .byte $00   ; 
- D - - - - 0x00FFA3 03:BF93: 00        .byte $00   ; 
- D - - - - 0x00FFA4 03:BF94: 00        .byte $00   ; 
- D - - - - 0x00FFA5 03:BF95: 00        .byte $00   ; 
- D - - - - 0x00FFA6 03:BF96: 00        .byte $00   ; 
- D - - - - 0x00FFA7 03:BF97: 00        .byte $00   ; 
- D - - - - 0x00FFA8 03:BF98: 00        .byte $00   ; 
- D - - - - 0x00FFA9 03:BF99: 00        .byte $00   ; 
- D - - - - 0x00FFAA 03:BF9A: 00        .byte $00   ; 
- D - - - - 0x00FFAB 03:BF9B: 00        .byte $00   ; 
- D - - - - 0x00FFAC 03:BF9C: 00        .byte $00   ; 
- D - - - - 0x00FFAD 03:BF9D: 00        .byte $00   ; 
- D - - - - 0x00FFAE 03:BF9E: 00        .byte $00   ; 
- D - - - - 0x00FFAF 03:BF9F: 00        .byte $00   ; 
- D - - - - 0x00FFB0 03:BFA0: 00        .byte $00   ; 
- D - - - - 0x00FFB1 03:BFA1: 00        .byte $00   ; 
- D - - - - 0x00FFB2 03:BFA2: 00        .byte $00   ; 
- D - - - - 0x00FFB3 03:BFA3: 00        .byte $00   ; 
- D - - - - 0x00FFB4 03:BFA4: 00        .byte $00   ; 
- D - - - - 0x00FFB5 03:BFA5: 00        .byte $00   ; 
- D - - - - 0x00FFB6 03:BFA6: 00        .byte $00   ; 
- D - - - - 0x00FFB7 03:BFA7: 00        .byte $00   ; 
- D - - - - 0x00FFB8 03:BFA8: 00        .byte $00   ; 
- D - - - - 0x00FFB9 03:BFA9: 00        .byte $00   ; 
- D - - - - 0x00FFBA 03:BFAA: 00        .byte $00   ; 
- D - - - - 0x00FFBB 03:BFAB: 00        .byte $00   ; 
- D - - - - 0x00FFBC 03:BFAC: 00        .byte $00   ; 
- D - - - - 0x00FFBD 03:BFAD: 00        .byte $00   ; 
- D - - - - 0x00FFBE 03:BFAE: 00        .byte $00   ; 
- D - - - - 0x00FFBF 03:BFAF: 00        .byte $00   ; 
- D - - - - 0x00FFC0 03:BFB0: 00        .byte $00   ; 
- D - - - - 0x00FFC1 03:BFB1: 00        .byte $00   ; 
- D - - - - 0x00FFC2 03:BFB2: 00        .byte $00   ; 
- D - - - - 0x00FFC3 03:BFB3: 00        .byte $00   ; 
- D - - - - 0x00FFC4 03:BFB4: 00        .byte $00   ; 
- D - - - - 0x00FFC5 03:BFB5: 00        .byte $00   ; 
- D - - - - 0x00FFC6 03:BFB6: 00        .byte $00   ; 
- D - - - - 0x00FFC7 03:BFB7: 00        .byte $00   ; 
- D - - - - 0x00FFC8 03:BFB8: 00        .byte $00   ; 
- D - - - - 0x00FFC9 03:BFB9: 00        .byte $00   ; 
- D - - - - 0x00FFCA 03:BFBA: 00        .byte $00   ; 
- D - - - - 0x00FFCB 03:BFBB: 00        .byte $00   ; 
- D - - - - 0x00FFCC 03:BFBC: 00        .byte $00   ; 
- D - - - - 0x00FFCD 03:BFBD: 00        .byte $00   ; 
- D - - - - 0x00FFCE 03:BFBE: 00        .byte $00   ; 
- D - - - - 0x00FFCF 03:BFBF: 00        .byte $00   ; 
- D - - - - 0x00FFD0 03:BFC0: 00        .byte $00   ; 
- D - - - - 0x00FFD1 03:BFC1: 00        .byte $00   ; 
- D - - - - 0x00FFD2 03:BFC2: 00        .byte $00   ; 
- D - - - - 0x00FFD3 03:BFC3: 00        .byte $00   ; 
- D - - - - 0x00FFD4 03:BFC4: 00        .byte $00   ; 
- D - - - - 0x00FFD5 03:BFC5: 00        .byte $00   ; 
- D - - - - 0x00FFD6 03:BFC6: 00        .byte $00   ; 
- D - - - - 0x00FFD7 03:BFC7: 00        .byte $00   ; 
- D - - - - 0x00FFD8 03:BFC8: 00        .byte $00   ; 
- D - - - - 0x00FFD9 03:BFC9: 00        .byte $00   ; 
- D - - - - 0x00FFDA 03:BFCA: 00        .byte $00   ; 
- D - - - - 0x00FFDB 03:BFCB: 00        .byte $00   ; 
- D - - - - 0x00FFDC 03:BFCC: 00        .byte $00   ; 
- D - - - - 0x00FFDD 03:BFCD: 00        .byte $00   ; 
- D - - - - 0x00FFDE 03:BFCE: 00        .byte $00   ; 
- D - - - - 0x00FFDF 03:BFCF: 00        .byte $00   ; 
- D - - - - 0x00FFE0 03:BFD0: 00        .byte $00   ; 
- D - - - - 0x00FFE1 03:BFD1: 00        .byte $00   ; 
- D - - - - 0x00FFE2 03:BFD2: 00        .byte $00   ; 
- D - - - - 0x00FFE3 03:BFD3: 00        .byte $00   ; 
- D - - - - 0x00FFE4 03:BFD4: 00        .byte $00   ; 
- D - - - - 0x00FFE5 03:BFD5: 00        .byte $00   ; 
- D - - - - 0x00FFE6 03:BFD6: 00        .byte $00   ; 
- D - - - - 0x00FFE7 03:BFD7: 00        .byte $00   ; 
- D - - - - 0x00FFE8 03:BFD8: 00        .byte $00   ; 
- D - - - - 0x00FFE9 03:BFD9: 00        .byte $00   ; 
- D - - - - 0x00FFEA 03:BFDA: 00        .byte $00   ; 
- D - - - - 0x00FFEB 03:BFDB: 00        .byte $00   ; 
- D - - - - 0x00FFEC 03:BFDC: 00        .byte $00   ; 
- D - - - - 0x00FFED 03:BFDD: 00        .byte $00   ; 
- D - - - - 0x00FFEE 03:BFDE: 00        .byte $00   ; 
- D - - - - 0x00FFEF 03:BFDF: 00        .byte $00   ; 
- D - - - - 0x00FFF0 03:BFE0: 00        .byte $00   ; 
- D - - - - 0x00FFF1 03:BFE1: 00        .byte $00   ; 
- D - - - - 0x00FFF2 03:BFE2: 00        .byte $00   ; 
- D - - - - 0x00FFF3 03:BFE3: 00        .byte $00   ; 
- D - - - - 0x00FFF4 03:BFE4: 00        .byte $00   ; 
- D - - - - 0x00FFF5 03:BFE5: 00        .byte $00   ; 
- D - - - - 0x00FFF6 03:BFE6: 00        .byte $00   ; 
- D - - - - 0x00FFF7 03:BFE7: 00        .byte $00   ; 
- D - - - - 0x00FFF8 03:BFE8: 00        .byte $00   ; 
- D - - - - 0x00FFF9 03:BFE9: 00        .byte $00   ; 
- D - - - - 0x00FFFA 03:BFEA: 00        .byte $00   ; 
- D - - - - 0x00FFFB 03:BFEB: 00        .byte $00   ; 
- D - - - - 0x00FFFC 03:BFEC: 00        .byte $00   ; 
- D - - - - 0x00FFFD 03:BFED: 00        .byte $00   ; 
- D - - - - 0x00FFFE 03:BFEE: 00        .byte $00   ; 
- D - - - - 0x00FFFF 03:BFEF: 00        .byte $00   ; 
- D - - - - 0x010000 03:BFF0: 00        .byte $00   ; 
- D - - - - 0x010001 03:BFF1: 00        .byte $00   ; 
- D - - - - 0x010002 03:BFF2: 00        .byte $00   ; 
- D - - - - 0x010003 03:BFF3: 00        .byte $00   ; 
- D - - - - 0x010004 03:BFF4: 00        .byte $00   ; 
- D - - - - 0x010005 03:BFF5: 00        .byte $00   ; 
- D - - - - 0x010006 03:BFF6: 00        .byte $00   ; 
- D - - - - 0x010007 03:BFF7: 00        .byte $00   ; 
- D - - - - 0x010008 03:BFF8: 00        .byte $00   ; 
- D - - - - 0x010009 03:BFF9: 00        .byte $00   ; 
- D - - - - 0x01000A 03:BFFA: 00        .byte $00   ; 
- D - - - - 0x01000B 03:BFFB: 00        .byte $00   ; 
- D - - - - 0x01000C 03:BFFC: 00        .byte $00   ; 
- D - - - - 0x01000D 03:BFFD: 00        .byte $00   ; 
- D - - - - 0x01000E 03:BFFE: 00        .byte $00   ; 
- D - - - - 0x01000F 03:BFFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 03_2: 0x%X [%d]", ($C000 - *), ($C000 - *))



