.segment "BANK_06_1"
.include "bank_ram.inc"
.include "constants.inc"
.org $A000  ; for listing file
; 0x018010-0x01A00F

.import loc_CE33_add_sprite_magic                     ; bank FF
.import sub_CE33_add_sprite_magic                     ; bank FF
.import loc_C420_add_sound_effect                     ; bank FF
.import sub_C420_add_sound_effect                     ; bank FF
.import sub_D0B8_change_stack_pointer_by_bits         ; bank FF
.import sub_D67B_out_of_sight                         ; bank FF
.import sub_D6AC_out_of_screen                        ; bank FF
.import loc_D99F_add_flash_sprite                     ; bank FF
.import sub_D660_is_bomb_exploding                    ; bank FF
.import tbl_E35D_jump_posY_offset                     ; bank FF
.import sub_D358_check_enemyA_collision_by_Y          ; bank FF
.import tbl_E358_init_counter                         ; bank FF
.import sub_D7BF_check_enemyA_movement_on_the_right   ; bank FF
.import sub_D8B7_check_enemyB_movement_on_the_right   ; bank FF
.import sub_D7CA_check_enemyA_movement_on_the_left    ; bank FF
.import sub_D8C2_check_enemyB_movement_on_the_left    ; bank FF
.import sub_D70F_inc_EnemyAPosXLow                    ; bank FF
.import loc_D70F_inc_EnemyAPosXLow                    ; bank FF
.import sub_D71C_inc_EnemyAPosXLow_unsafe             ; bank FF
.import loc_D71C_inc_EnemyAPosXLow_unsafe             ; bank FF
.import loc_D828_short_inc_EnemyBPosXLow              ; bank FF
.import sub_D9C4_inc_enemyB_frame_counter             ; bank FF
.import loc_D6F0_dec_EnemyAPosXLow                    ; bank FF
.import sub_D6F0_dec_EnemyAPosXLow                    ; bank FF
.import loc_D6FD_dec_EnemyAPosXLow_unsafe             ; bank FF
.import sub_D6FD_dec_EnemyAPosXLow_unsafe             ; bank FF
.import loc_D809_short_dec_EnemyBPosXLow              ; bank FF
.import sub_D064_generate_rng                         ; bank FF
.import loc_D77F_free_enemyA                          ; bank FF
.import loc_D873_free_enemyB                          ; bank FF
.import loc_D883_dec_enemyB_counter                   ; bank FF
.import sub_D6BD_try_change_enemyA_direction          ; bank FF
.import sub_D6DF_check_enemyB_direction               ; bank FF
.import sub_D9AE_inc_enemyA_frame_counter             ; bank FF
.import loc_D9AE_inc_enemyA_frame_counter             ; bank FF
.import loc_D741_enemyA_off_screen                    ; bank FF
.import loc_D84D_enemyB_off_screen                    ; bank FF
.import sub_D725_enemyA_on_screen                     ; bank FF
.import sub_D831_enemyB_on_screen                     ; bank FF
.import loc_D989_add_enemyA_sprite_magic_v1           ; bank FF
.import loc_D97D_add_flash_sprite_magic               ; bank FF
.import sub_D562_has_character_damage                 ; bank FF
.import sub_D5B6_have_intersect_bullet                ; bank FF
.import sub_D606_have_intersect_sword                 ; bank FF
.import sub_D7A8_correction_EnemyAPosY                ; bank FF
.import sub_D347_check_landing_enemyA                 ; bank FF
.import sub_accumulator_shift_right_by_4              ; bank FF
.import sub_D8CD_enemyB_collision_plus_one            ; bank FF
.import sub_D8D1_enemyB_collision_minus_16            ; bank FF
.import sub_D7D5_check_enemyA_collision_by_Y_in_maze  ; bank FF
.import sub_D8DB_enemyB_collision_by_shift_posY       ; bank FF
.import sub_D8A8_correction2_EnemyBPosY               ; bank FF
.import sub_E332_generate_jump_type                   ; bank FF
.import tbl_flying_track_offset                       ; bank FF
.import sub_D937_init_absolute_enemyA_positions       ; bank FF
.import sub_D94A_init_absolute_enemyB_positions       ; bank FF
.import sub_D952_init_short_enemyB_positions          ; bank FF
.import loc_D952_init_short_enemyB_positions          ; bank FF
.import sub_D397_right_collision_by_inc_posX          ; bank FF
.import sub_D3AD_left_collision_by_inc_posX           ; bank FF
.import loc_D3AD_left_collision_by_inc_posX           ; bank FF
.import sub_D642_have_intersect_with_character        ; bank FF
.import sub_D073_invert_sign                          ; bank FF
.import loc_CDAC_decrement_counters_ex                ; bank FF

.export sub_A000_land_diver_enemy
.export sub_A003_soar_enemy
.export sub_A009_bazooka_man
.export sub_A012_fly_man
.export sub_A015_shooter
.export sub_A018_Zenigata

sub_A000_land_diver_enemy:
C - - - - - 0x018010 06:A000: 4C 4D A0  JMP loc_A04D_enemy

sub_A003_soar_enemy:
C - - - - - 0x018013 06:A003: 4C 66 A3  JMP loc_A366_enemy

sub_A006: ; from bank_FF
C - - - - - 0x018016 06:A006: 4C B3 A5  JMP loc_A5B3

sub_A009_bazooka_man:
C - - - - - 0x018019 06:A009: 4C 82 A7  JMP loc_A782_enemy

sub_A00C: ; from bank_FF
C - - - - - 0x01801C 06:A00C: 4C 3B AC  JMP loc_AC3B

sub_A00F: ; from bank_FF
C - - - - - 0x01801F 06:A00F: 4C 09 AE  JMP loc_AE09

sub_A012_fly_man:
C - - - - - 0x018022 06:A012: 4C A7 AF  JMP loc_AFA7_enemy

; Cat with the gun (knife), Karate-girl, Egyptian with bow, Egyptian with a boomerung, Ninja upside down
sub_A015_shooter:
C - - - - - 0x018025 06:A015: 4C E4 B1  JMP loc_B1E4_enemy

sub_A018_Zenigata:
C - - - - - 0x018028 06:A018: 4C 33 B8  JMP loc_B833_enemy

sub_A01B: ; from bank_FF
C - - - - - 0x01802B 06:A01B: 4C FB BA  JMP loc_BAFB

sub_A01E: ; from bank_FF
C - - - - - 0x01802E 06:A01E: 4C 96 BD  JMP loc_BD96

tbl_A021_hitboxes:
- D 1 - - - 0x018031 06:A021: 00        .byte $00, $00, $18, $06
- D 1 - - - 0x018035 06:A025: 00        .byte $00, $00, $14, $06
- D 1 - - - 0x018039 06:A029: 00        .byte $00, $00, $10, $06

- - - - - - 0x01803D 06:A02D: F8        .byte $F8   ; 
- - - - - - 0x01803E 06:A02E: 06        .byte $06   ; 
- - - - - - 0x01803F 06:A02F: 06        .byte $06   ; 
- - - - - - 0x018040 06:A030: 04        .byte $04   ; 
- - - - - - 0x018041 06:A031: FD        .byte $FD   ; 
- - - - - - 0x018042 06:A032: 05        .byte $05   ; 
- - - - - - 0x018043 06:A033: 06        .byte $06   ; 
- - - - - - 0x018044 06:A034: 04        .byte $04   ; 
- - - - - - 0x018045 06:A035: 00        .byte $00   ; 
- - - - - - 0x018046 06:A036: 00        .byte $00   ; 
- - - - - - 0x018047 06:A037: 06        .byte $06   ; 
- - - - - - 0x018048 06:A038: 04        .byte $04   ; 
- - - - - - 0x018049 06:A039: F8        .byte $F8   ; 
- - - - - - 0x01804A 06:A03A: FA        .byte $FA   ; 
- - - - - - 0x01804B 06:A03B: 06        .byte $06   ; 
- - - - - - 0x01804C 06:A03C: 04        .byte $04   ; 
- - - - - - 0x01804D 06:A03D: FD        .byte $FD   ; 
- - - - - - 0x01804E 06:A03E: FD        .byte $FD   ; 
- - - - - - 0x01804F 06:A03F: 06        .byte $06   ; 
- - - - - - 0x018050 06:A040: 04        .byte $04   ; 
- - - - - - 0x018051 06:A041: 00        .byte $00   ; 
- - - - - - 0x018052 06:A042: 00        .byte $00   ; 
- - - - - - 0x018053 06:A043: 06        .byte $06   ; 
- - - - - - 0x018054 06:A044: 04        .byte $04   ;

tbl_A045_status_flags:
- D 1 - - - 0x018055 06:A045: 00        .byte $00   ; The enemy continuis to move.
- D 1 - - - 0x018056 06:A046: 00        .byte $00   ; 
- D 1 - - - 0x018057 06:A047: 00        .byte $00   ; 
- D 1 - - - 0x018058 06:A048: 10        .byte $10   ; The enemy is going to jump. (squatting status)
- D 1 - - - 0x018059 06:A049: 10        .byte $10   ; 
- D 1 - - - 0x01805A 06:A04A: 10        .byte $10   ; 
- D 1 - - - 0x01805B 06:A04B: 08        .byte $08   ; The enemy is going to stop.
- D 1 - - - 0x01805C 06:A04C: 08        .byte $08   ; 

loc_A04D_enemy:
C D 1 - - - 0x01805D 06:A04D: A2 01     LDX #$01                          ;
C - - - - - 0x01805F 06:A04F: 86 1A     STX vTempCounter1A                ; set loop counter (the enemyA number)
bra_A051_loop:                                                            ; loop by vTempCounter1A (2 times)
C - - - - - 0x018061 06:A051: A6 1A     LDX vTempCounter1A                ;
C - - - - - 0x018063 06:A053: 20 FA A0  JSR sub_A0FA_status_behavior      ;
C - - - - - 0x018066 06:A056: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x018069 06:A059: C9 E0     CMP #$E0                          ;
C - - - - - 0x01806B 06:A05B: B0 2C     BCS bra_A089_next                 ; If vEnemyAStatus >= 0xE0
C - - - - - 0x01806D 06:A05D: C9 C0     CMP #$C0                          ;
C - - - - - 0x01806F 06:A05F: 90 28     BCC bra_A089_next                 ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x018071 06:A061: 20 CC A0  JSR sub_A0CC_prepare_hitbox       ;
C - - - - - 0x018074 06:A064: 20 60 D6  JSR sub_D660_is_bomb_exploding    ;
C - - - - - 0x018077 06:A067: B0 0B     BCS @bra_A074_bomb_hit            ; If the bomb is exploding
C - - - - - 0x018079 06:A069: A5 5F     LDA vChrLiveStatus                ;
C - - - - - 0x01807B 06:A06B: 29 02     AND #$02                          ; CONSTANT - Goemon
C - - - - - 0x01807D 06:A06D: F0 0B     BEQ bra_A07A_check_bullets        ; If the character isn't Goemon
C - - - - - 0x01807F 06:A06F: 20 06 D6  JSR sub_D606_have_intersect_sword ;
C - - - - - 0x018082 06:A072: 90 10     BCC bra_A084_no_intersect         ; If the intersect doesn't exist
@bra_A074_bomb_hit:
C - - - - - 0x018084 06:A074: 20 98 A0  JSR sub_A098_hit                  ;
C - - - - - 0x018087 06:A077: 4C 89 A0  JMP loc_A089_next                 ;

bra_A07A_check_bullets:
C - - - - - 0x01808A 06:A07A: A6 7A     LDX vBulletCount                    ; set loop counter
@bra_A07C_loop:                                                             ; loop by x
C - - - - - 0x01808C 06:A07C: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x01808F 06:A07F: B0 0D     BCS bra_A08E_bullet_hit             ; If the intersect is exist
C - - - - - 0x018091 06:A081: CA        DEX                                 ; decrement loop counter
C - - - - - 0x018092 06:A082: 10 F8     BPL @bra_A07C_loop                  ; If Register X >= 0x00
bra_A084_no_intersect:
C - - - - - 0x018094 06:A084: A6 1A     LDX vTempCounter1A                  ; X <~ the enemyA number
C - - - - - 0x018096 06:A086: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_A089_next:
loc_A089_next:
C D 1 - - - 0x018099 06:A089: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x01809B 06:A08B: 10 C4     BPL bra_A051_loop                   ; If vTempCounter1A >= 0x00
C - - - - - 0x01809D 06:A08D: 60        RTS                                 ;

; In: Register X - the number of the bullet
bra_A08E_bullet_hit:
C - - - - - 0x01809E 06:A08E: A9 00     LDA #$00                  ;
C - - - - - 0x0180A0 06:A090: 95 8F     STA vBulletStatus,X       ; clear
C - - - - - 0x0180A2 06:A092: 20 98 A0  JSR sub_A098_hit          ;
C - - - - - 0x0180A5 06:A095: 4C 89 A0  JMP loc_A089_next         ;

sub_A098_hit:
C - - - - - 0x0180A8 06:A098: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x0180AA 06:A09A: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x0180AC 06:A09C: 20 23 A3  JSR sub_A323_change_substatus  ;
C - - - - - 0x0180AF 06:A09F: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x0180B1 06:A0A1: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x0180B4 06:A0A4: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x0180B6 06:A0A6: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x0180B9 06:A0A9: A9 00     LDA #$00                       ;
C - - - - - 0x0180BB 06:A0AB: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x0180BE 06:A0AE: 60        RTS                            ;

- - - - - - 0x0180BF 06:A0AF: A0        .byte $A0   ; 
- - - - - - 0x0180C0 06:A0B0: 0C        .byte $0C   ; 
- - - - - - 0x0180C1 06:A0B1: BD        .byte $BD   ; 
- - - - - - 0x0180C2 06:A0B2: 20        .byte $20   ; 
- - - - - - 0x0180C3 06:A0B3: 03        .byte $03   ; 
- - - - - - 0x0180C4 06:A0B4: 48        .byte $48   ; <H>
- - - - - - 0x0180C5 06:A0B5: 29        .byte $29   ; 
- - - - - - 0x0180C6 06:A0B6: 12        .byte $12   ; 
- - - - - - 0x0180C7 06:A0B7: F0        .byte $F0   ; 
- - - - - - 0x0180C8 06:A0B8: 08        .byte $08   ; 
- - - - - - 0x0180C9 06:A0B9: A0        .byte $A0   ; 
- - - - - - 0x0180CA 06:A0BA: 10        .byte $10   ; 
- - - - - - 0x0180CB 06:A0BB: C9        .byte $C9   ; 
- - - - - - 0x0180CC 06:A0BC: 10        .byte $10   ; 
- - - - - - 0x0180CD 06:A0BD: F0        .byte $F0   ; 
- - - - - - 0x0180CE 06:A0BE: 02        .byte $02   ; 
- - - - - - 0x0180CF 06:A0BF: A0        .byte $A0   ; 
- - - - - - 0x0180D0 06:A0C0: 14        .byte $14   ; 
- - - - - - 0x0180D1 06:A0C1: 68        .byte $68   ; <h>
- - - - - - 0x0180D2 06:A0C2: 6A        .byte $6A   ; <j>
- - - - - - 0x0180D3 06:A0C3: 90        .byte $90   ; 
- - - - - - 0x0180D4 06:A0C4: 18        .byte $18   ; 
- - - - - - 0x0180D5 06:A0C5: 98        .byte $98   ; 
- - - - - - 0x0180D6 06:A0C6: 18        .byte $18   ; 
- - - - - - 0x0180D7 06:A0C7: 69        .byte $69   ; <i>
- - - - - - 0x0180D8 06:A0C8: 0C        .byte $0C   ; 
- - - - - - 0x0180D9 06:A0C9: A8        .byte $A8   ; 
- - - - - - 0x0180DA 06:A0CA: D0        .byte $D0   ; 
- - - - - - 0x0180DB 06:A0CB: 11        .byte $11   ; 
sub_A0CC_prepare_hitbox:
C - - - - - 0x0180DC 06:A0CC: A0 00     LDY #$00                     ; 1 offset of the hitbox position
C - - - - - 0x0180DE 06:A0CE: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x0180E1 06:A0D1: 29 12     AND #$12                     ;
C - - - - - 0x0180E3 06:A0D3: F0 08     BEQ @bra_A0DD_assign         ; If the enemy isn't squatting and jumping
C - - - - - 0x0180E5 06:A0D5: A0 04     LDY #$04                     ; 2 offset of the hitbox position
C - - - - - 0x0180E7 06:A0D7: C9 10     CMP #$10                     ;
C - - - - - 0x0180E9 06:A0D9: F0 02     BEQ @bra_A0DD_assign         ; If the enemy isn't squatting
C - - - - - 0x0180EB 06:A0DB: A0 08     LDY #$08                     ; 3 offset of the hitbox position
@bra_A0DD_assign:
C - - - - - 0x0180ED 06:A0DD: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x0180F0 06:A0E0: 18        CLC                          ;
C - - - - - 0x0180F1 06:A0E1: 79 21 A0  ADC tbl_A021_hitboxes,Y      ;
C - - - - - 0x0180F4 06:A0E4: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x0180F6 06:A0E6: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x0180F9 06:A0E9: 18        CLC                          ;
C - - - - - 0x0180FA 06:A0EA: 79 22 A0  ADC tbl_A021_hitboxes + 1,Y  ;
C - - - - - 0x0180FD 06:A0ED: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x0180FF 06:A0EF: B9 23 A0  LDA tbl_A021_hitboxes + 2,Y  ;
C - - - - - 0x018102 06:A0F2: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x018104 06:A0F4: B9 24 A0  LDA tbl_A021_hitboxes + 3,Y  ;
C - - - - - 0x018107 06:A0F7: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_A0F9_RTS:
C - - - - - 0x018109 06:A0F9: 60        RTS                          ;

; In: Register X - the enemyA number
sub_A0FA_status_behavior:
C - - - - - 0x01810A 06:A0FA: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01810D 06:A0FD: 10 FA     BPL bra_A0F9_RTS                          ; If the status isn't used
C - - - - - 0x01810F 06:A0FF: 4A        LSR                                       ;
C - - - - - 0x018110 06:A100: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x018113 06:A103: 30 A2     .addr loc_A231_jump - 1        ; 0x02
- D 1 - I - 0x018115 06:A105: B5 A1     .addr loc_A1B6_appearance - 1  ; 0x04
- D 1 - I - 0x018117 06:A107: 10 A1     .addr loc_A111_main - 1        ; 0x08
- D 1 - I - 0x018119 06:A109: 01 A2     .addr loc_A202_squatting - 1   ; 0x10
- D 1 - I - 0x01811B 06:A10B: D2 A2     .addr loc_A2D3_dying - 1       ; 0x20
- D 1 - I - 0x01811D 06:A10D: 10 A1     .addr loc_A111_main - 1        ; 0x40
- D 1 - I - 0x01811F 06:A10F: 10 A1     .addr loc_A111_main - 1        ; 0x80

; In: Register X - the enemyA number
loc_A111_main:
C - - - - - 0x018121 06:A111: BD 2C 03  LDA vEnemyAPosY,X                             ;
C - - - - - 0x018124 06:A114: 85 00     STA ram_0000                                  ;
C - - - - - 0x018126 06:A116: E6 00     INC ram_0000                                  ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x018128 06:A118: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y      ; 
C - - - - - 0x01812B 06:A11B: D0 07     BNE bra_A124_skip                             ; If the collisions by Y-position exists
C - - - - - 0x01812D 06:A11D: A9 1C     LDA #$1C                                      ; CONSTANT - a jump counter value
C - - - - - 0x01812F 06:A11F: A0 02     LDY #$02                                      ; CONSTANT - jumping off, free fall
C - - - - - 0x018131 06:A121: 4C 20 A2  JMP loc_A220_activate_jump_status             ;

; In: Register X - the enemyA number
bra_A124_skip:
C - - - - - 0x018134 06:A124: 20 EC A2  JSR sub_A2EC_try_to_change_self ;
C - - - - - 0x018137 06:A127: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x01813A 06:A12A: 29 08     AND #$08                        ; CONSTANT - the stop
C - - - - - 0x01813C 06:A12C: F0 35     BEQ bra_A163_skip               ; If vEnemyAStatus doesn't contain 0x08
C - - - - - 0x01813E 06:A12E: A0 08     LDY #$08                        ; an input parameter - sprite_magic2 (a stop frame)
; In: Register Y - sprite_magic2 (The offset by the address)
loc_A130_prepare_rendering:
C D 1 - - - 0x018140 06:A130: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x018143 06:A133: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x018145 06:A135: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x018148 06:A138: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x01814A 06:A13A: 20 7B D6  JSR sub_D67B_out_of_sight       ; bank FF
C - - - - - 0x01814D 06:A13D: 90 03     BCC bra_A142_skip               ; If the enemy is visible
C - - - - - 0x01814F 06:A13F: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

bra_A142_skip:
C - - - - - 0x018152 06:A142: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x018155 06:A145: 90 03     BCC bra_A14A_skip               ; If the enemy is on the screen
C - - - - - 0x018157 06:A147: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A14A_skip:
C - - - - - 0x01815A 06:A14A: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x01815D 06:A14D: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x01815F 06:A14F: 90 03     BCC bra_A154_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x018161 06:A151: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A154_add_sprite_magic_v2:
C - - - - - 0x018164 06:A154: 98        TYA                           ;
C - - - - - 0x018165 06:A155: 18        CLC                           ; 
C - - - - - 0x018166 06:A156: 6D 02 03  ADC vEnemyASpriteMagic2       ; + Y ~> sprite_magic2
C - - - - - 0x018169 06:A159: 85 01     STA ram_0001                  ;
C - - - - - 0x01816B 06:A15B: AD 03 03  LDA vEnemyASpriteMagic3       ; ~> sprite_magic3
C - - - - - 0x01816E 06:A15E: 85 02     STA ram_0002                  ;
C - - - - - 0x018170 06:A160: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

; In: Register X - the enemyA number
bra_A163_skip:
C - - - - - 0x018173 06:A163: BD 20 03  LDA vEnemyAStatus,X                   ;
C - - - - - 0x018176 06:A166: 6A        ROR                                   ;
C - - - - - 0x018177 06:A167: 90 0F     BCC bra_A178_skip                     ; If the enemy is looking to the right
C - - - - - 0x018179 06:A169: 20 7E A1  JSR sub_A17E_try_movement_on_the_left ;
loc_A16C_prepare_rendering_by_frame_:
C D 1 - - - 0x01817C 06:A16C: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter ;
C - - - - - 0x01817F 06:A16F: BD 44 03  LDA vEnemyAFrame_Counter,X            ;
C - - - - - 0x018182 06:A172: 0A        ASL                                   ;
C - - - - - 0x018183 06:A173: 0A        ASL                                   ; *4
C - - - - - 0x018184 06:A174: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x018185 06:A175: 4C 30 A1  JMP loc_A130_prepare_rendering        ;

bra_A178_skip:
C - - - - - 0x018188 06:A178: 20 A8 A1  JSR sub_A1A8_try_movement_on_the_right   ;
C - - - - - 0x01818B 06:A17B: 4C 6C A1  JMP loc_A16C_prepare_rendering_by_frame_ ;

; In: Register X - the enemyA number
sub_A17E_try_movement_on_the_left:
C - - - - - 0x01818E 06:A17E: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left   ;
C - - - - - 0x018191 06:A181: F0 09     BEQ bra_A18C_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x018193 06:A183: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x018195 06:A185: 29 01     AND #$01                                         ;
C - - - - - 0x018197 06:A187: F0 1E     BEQ bra_A1A7_RTS                                 ; Branch if vLowCounter multiple of 2
C - - - - - 0x018199 06:A189: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                   ;

; In: Register X - the enemyA number
bra_A18C_try_jump_over:
C - - - - - 0x01819C 06:A18C: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x01819F 06:A18F: 29 24     AND #$24                      ; CONSTANT - the appearance or the dying
C - - - - - 0x0181A1 06:A191: D0 14     BNE bra_A1A7_RTS              ; If the enemy is appearing or dying
C - - - - - 0x0181A3 06:A193: A9 02     LDA #$02                      ; CONSTANT - the jump
C - - - - - 0x0181A5 06:A195: 20 23 A3  JSR sub_A323_change_substatus ;
C - - - - - 0x0181A8 06:A198: A9 14     LDA #$14                      ; Initializes a jump counter
C - - - - - 0x0181AA 06:A19A: 9D 4A 03  STA vEnemyAJumpCounter,X      ;
C - - - - - 0x0181AD 06:A19D: A9 03     LDA #$03                      ; CONSTANT - jump by side
C - - - - - 0x0181AF 06:A19F: 9D 56 03  STA vEnemyAJumpType,X         ;
C - - - - - 0x0181B2 06:A1A2: A9 00     LDA #$00                      ;
C - - - - - 0x0181B4 06:A1A4: 9D 44 03  STA vEnemyAFrame_Counter,X    ; reset a counter
bra_A1A7_RTS:
C - - - - - 0x0181B7 06:A1A7: 60        RTS                           ;

; In: Register X - the enemyA number
sub_A1A8_try_movement_on_the_right:
C - - - - - 0x0181B8 06:A1A8: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right  ;
C - - - - - 0x0181BB 06:A1AB: F0 DF     BEQ bra_A18C_try_jump_over                       ; If the movement isn't allowed
C - - - - - 0x0181BD 06:A1AD: A5 2C     LDA vLowCounter                                  ;
C - - - - - 0x0181BF 06:A1AF: 29 01     AND #$01                                         ;
C - - - - - 0x0181C1 06:A1B1: F0 F4     BEQ bra_A1A7_RTS                                 ; Branch if vLowCounter multiple of 2
C - - - - - 0x0181C3 06:A1B3: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                   ;

loc_A1B6_appearance:
C - - - - - 0x0181C6 06:A1B6: DE 4A 03  DEC vEnemyAJumpCounter,X       ;
C - - - - - 0x0181C9 06:A1B9: D0 15     BNE @bra_A1D0_skip             ; If vEnemyAJumpCounter != 0x00
C - - - - - 0x0181CB 06:A1BB: A9 03     LDA #$03                       ;
C - - - - - 0x0181CD 06:A1BD: A0 03     LDY #$03                       ; CONSTANT - jump by side
C - - - - - 0x0181CF 06:A1BF: 9D 4A 03  STA vEnemyAJumpCounter,X       ; Initializes a jump counter
C - - - - - 0x0181D2 06:A1C2: 98        TYA                            ;
C - - - - - 0x0181D3 06:A1C3: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x0181D6 06:A1C6: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x0181D9 06:A1C9: 09 02     ORA #$02                       ; CONSTANT - a jump status
C - - - - - 0x0181DB 06:A1CB: 9D 20 03  STA vEnemyAStatus,X            ;
C - - - - - 0x0181DE 06:A1CE: D0 61     BNE bra_A231_jump              ; Always true

@bra_A1D0_skip:
C - - - - - 0x0181E0 06:A1D0: BD 38 03  LDA vEnemyAPosXLow,X           ;
C - - - - - 0x0181E3 06:A1D3: 85 00     STA ram_0000                   ; prepares the 1st parameter
C - - - - - 0x0181E5 06:A1D5: BD 3E 03  LDA vEnemyAPosXHigh,X          ;
C - - - - - 0x0181E8 06:A1D8: 85 01     STA ram_0001                   ; prepares the 2nd parameter
C - - - - - 0x0181EA 06:A1DA: 20 7B D6  JSR sub_D67B_out_of_sight      ; bank FF
C - - - - - 0x0181ED 06:A1DD: 90 03     BCC bra_A1E2_skip              ; If the enemy is visible
C - - - - - 0x0181EF 06:A1DF: 4C 7F D7  JMP loc_D77F_free_enemyA       ;
bra_A1E2_skip:
C - - - - - 0x0181F2 06:A1E2: 20 AC D6  JSR sub_D6AC_out_of_screen     ;
C - - - - - 0x0181F5 06:A1E5: 90 03     BCC bra_A1EA_skip              ; If the enemy is on the screen
C - - - - - 0x0181F7 06:A1E7: 4C 41 D7  JMP loc_D741_enemyA_off_screen ;

bra_A1EA_skip:
C - - - - - 0x0181FA 06:A1EA: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x0181FD 06:A1ED: 09 40     ORA #$40                       ; CONSTANT - the enemy can get damage
C - - - - - 0x0181FF 06:A1EF: 9D 20 03  STA vEnemyAStatus,X            ;
C - - - - - 0x018202 06:A1F2: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x018205 06:A1F5: 85 00     STA ram_0000                   ; prepares the sprite magic1 (Y-position)
C - - - - - 0x018207 06:A1F7: A5 03     LDA ram_0003                   ; the out parameter, sprite magic4 (X-position) (see $A1E2)
C - - - - - 0x018209 06:A1F9: 9D 32 03  STA vEnemyAScreenPosX,X        ;
C - - - - - 0x01820C 06:A1FC: BD 4A 03  LDA vEnemyAJumpCounter,X       ; prepares the input parameter
C - - - - - 0x01820F 06:A1FF: 4C 9F D9  JMP loc_D99F_add_flash_sprite  ; 

loc_A202_squatting:
C - - - - - 0x018212 06:A202: DE 4A 03  DEC vEnemyAJumpCounter,X       ;
C - - - - - 0x018215 06:A205: F0 05     BEQ bra_A20C_skip              ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x018217 06:A207: A0 0C     LDY #$0C                       ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x018219 06:A209: 4C 30 A1  JMP loc_A130_prepare_rendering ;

bra_A20C_skip:
C - - - - - 0x01821C 06:A20C: A0 01     LDY #$01                       ; CONSTANT - high jump
C - - - - - 0x01821E 06:A20E: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x018221 06:A211: C9 80     CMP #$80                       ;
C - - - - - 0x018223 06:A213: B0 08     BCS bra_A21D_skip              ; If vEnemyAPosY >= 0x80 (there's no point in jumping if we're in the bottom half of the screen)
C - - - - - 0x018225 06:A215: 20 64 D0  JSR sub_D064_generate_rng      ; bank FF
C - - - - - 0x018228 06:A218: 6A        ROR                            ;
C - - - - - 0x018229 06:A219: 90 02     BCC bra_A21D_skip              ; 50% chance branch
C - - - - - 0x01822B 06:A21B: A0 04     LDY #$04                       ; CONSTANT - jumping off
bra_A21D_skip:
C - - - - - 0x01822D 06:A21D: B9 58 E3  LDA tbl_E358_init_counter,Y    ;
; In: Register A - a jump counter value
; In: Register X - the enemyA number
loc_A220_activate_jump_status:
C D 1 - - - 0x018230 06:A220: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x018233 06:A223: 98        TYA                            ;
C - - - - - 0x018234 06:A224: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x018237 06:A227: A9 02     LDA #$02                       ; CONSTANT - the jump
C - - - - - 0x018239 06:A229: 20 23 A3  JSR sub_A323_change_substatus  ;
C - - - - - 0x01823C 06:A22C: A9 00     LDA #$00                       ;
C - - - - - 0x01823E 06:A22E: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
; In: Register X - the enemyA number
loc_A231_jump:
bra_A231_jump:
C - - - - - 0x018241 06:A231: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x018244 06:A234: C9 18     CMP #$18                              ; CONSTANT - a maximum amplitude
C - - - - - 0x018246 06:A236: 90 07     BCC @bra_A23F_skip                    ; If JumpCounter < 0x18
C - - - - - 0x018248 06:A238: BD 2C 03  LDA vEnemyAPosY,X                     ;
C - - - - - 0x01824B 06:A23B: C9 DF     CMP #$DF                              ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01824D 06:A23D: B0 1E     BCS bra_A25D_skip                     ; If PosY >= 0xDF
@bra_A23F_skip:
C - - - - - 0x01824F 06:A23F: BD 56 03  LDA vEnemyAJumpType,X                 ;
C - - - - - 0x018252 06:A242: C9 03     CMP #$03                              ; CONSTANT - jump by side
C - - - - - 0x018254 06:A244: D0 17     BNE bra_A25D_skip                     ; If vEnemyAJumpType != 0x03
C - - - - - 0x018256 06:A246: BD 20 03  LDA vEnemyAStatus,X                   ;
C - - - - - 0x018259 06:A249: 6A        ROR                                   ;
C - - - - - 0x01825A 06:A24A: 90 0A     BCC bra_A256_skip                     ; If the enemy is looking to the right
C - - - - - 0x01825C 06:A24C: 29 10     AND #$10                              ; CONSTANT - the dying + shift right
C - - - - - 0x01825E 06:A24E: D0 0A     BNE bra_A25A_invert                   ; If the enemy is dying
bra_A250_invert:
C - - - - - 0x018260 06:A250: 20 7E A1  JSR sub_A17E_try_movement_on_the_left ;
C - - - - - 0x018263 06:A253: 4C 5D A2  JMP loc_A25D_continue                 ;

bra_A256_skip:
C - - - - - 0x018266 06:A256: 29 10     AND #$10                               ; CONSTANT - the dying + shift right
C - - - - - 0x018268 06:A258: D0 F6     BNE bra_A250_invert                    ; If the enemy is dying
bra_A25A_invert:
C - - - - - 0x01826A 06:A25A: 20 A8 A1  JSR sub_A1A8_try_movement_on_the_right ;
loc_A25D_continue:
bra_A25D_skip:
C D 1 - - - 0x01826D 06:A25D: BC 4A 03  LDY vEnemyAJumpCounter,X        ;
C - - - - - 0x018270 06:A260: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y ; Y = [0x00-0x2F]
C - - - - - 0x018273 06:A263: 18        CLC                             ;
C - - - - - 0x018274 06:A264: 7D 2C 03  ADC vEnemyAPosY,X               ;
C - - - - - 0x018277 06:A267: C9 DF     CMP #$DF                        ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x018279 06:A269: 90 09     BCC @bra_A274_skip              ; If Register A < 0xDF
C - - - - - 0x01827B 06:A26B: A0 DF     LDY #$DF                        ; 0xDF -> EnemyPosY
C - - - - - 0x01827D 06:A26D: C9 F8     CMP #$F8                        ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01827F 06:A26F: 90 02     BCC @bra_A273_skip              ; If Register A < 0xF8
C - - - - - 0x018281 06:A271: A0 00     LDY #$00                        ; 0x00 -> EnemyPosY
@bra_A273_skip:
C - - - - - 0x018283 06:A273: 98        TYA                             ; A <~ 0x00 or 0xDF
@bra_A274_skip:
C - - - - - 0x018284 06:A274: 9D 2C 03  STA vEnemyAPosY,X               ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x018287 06:A277: BC 4A 03  LDY vEnemyAJumpCounter,X        ;
C - - - - - 0x01828A 06:A27A: C0 18     CPY #$18                        ; CONSTANT - a maximum amplitude
C - - - - - 0x01828C 06:A27C: 90 35     BCC bra_A2B3_inc                ; If vEnemyAJumpCounter < 0x18
C - - - - - 0x01828E 06:A27E: C9 DF     CMP #$DF                        ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x018290 06:A280: 90 05     BCC bra_A287_skip               ; If EnemyPosY < 0xDF
C - - - - - 0x018292 06:A282: A0 FF     LDY #$FF                        ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x018294 06:A284: 4C 30 A1  JMP loc_A130_prepare_rendering  ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_A287_skip:
C - - - - - 0x018297 06:A287: 85 00     STA ram_0000                                 ;
C - - - - - 0x018299 06:A289: E6 00     INC ram_0000                                 ; prepare an input parameter
C - - - - - 0x01829B 06:A28B: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y     ;
C - - - - - 0x01829E 06:A28E: F0 23     BEQ bra_A2B3_inc                             ; If the collisions by Y-position doesn't exist
C - - - - - 0x0182A0 06:A290: C9 02     CMP #$02                                     ; CONSTANT - a weak collision
C - - - - - 0x0182A2 06:A292: F0 07     BEQ bra_A29B_weak                            ; If the collision is weak
C - - - - - 0x0182A4 06:A294: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x0182A7 06:A297: D0 0E     BNE bra_A2A7_landing                         ; If the landing is allow
C - - - - - 0x0182A9 06:A299: F0 18     BEQ bra_A2B3_inc                             ; Always true

bra_A29B_weak:
C - - - - - 0x0182AB 06:A29B: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x0182AE 06:A29E: F0 13     BEQ bra_A2B3_inc                             ; If the landing is disallow
C - - - - - 0x0182B0 06:A2A0: BD 56 03  LDA vEnemyAJumpType,X                        ;
C - - - - - 0x0182B3 06:A2A3: C9 04     CMP #$04                                     ; CONSTANT - jump off after the squatting
C - - - - - 0x0182B5 06:A2A5: F0 0C     BEQ bra_A2B3_inc                             ; If the enemyA jumping off
bra_A2A7_landing:
C - - - - - 0x0182B7 06:A2A7: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x0182BA 06:A2AA: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x0182BD 06:A2AD: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x0182BF 06:A2AF: D0 1D     BNE bra_A2CE_start_dying                     ; If the enemy is dying
C - - - - - 0x0182C1 06:A2B1: F0 0A     BEQ bra_A2BD_clear                           ; Always true

bra_A2B3_inc:
C - - - - - 0x0182C3 06:A2B3: FE 4A 03  INC vEnemyAJumpCounter,X                     ;
C - - - - - 0x0182C6 06:A2B6: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x0182C8 06:A2B8: DD 4A 03  CMP vEnemyAJumpCounter,X                     ;
C - - - - - 0x0182CB 06:A2BB: B0 03     BCS bra_A2C0_skip                            ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
bra_A2BD_clear:
C - - - - - 0x0182CD 06:A2BD: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; clear or reset
bra_A2C0_skip:
C - - - - - 0x0182D0 06:A2C0: A0 10     LDY #$10                                     ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x0182D2 06:A2C2: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x0182D5 06:A2C5: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x0182D7 06:A2C7: D0 02     BNE @bra_A2CB_skip                           ; If the enemy is dying
C - - - - - 0x0182D9 06:A2C9: A0 18     LDY #$18                                     ; an input parameter - sprite_magic2 (a jump frame)
@bra_A2CB_skip:
C - - - - - 0x0182DB 06:A2CB: 4C 30 A1  JMP loc_A130_prepare_rendering               ;

bra_A2CE_start_dying:
C - - - - - 0x0182DE 06:A2CE: A9 30     LDA #$30                      ; initializes a jump counter
C - - - - - 0x0182E0 06:A2D0: 9D 4A 03  STA vEnemyAJumpCounter,X      ;
loc_A2D3_dying:
C - - - - - 0x0182E3 06:A2D3: DE 4A 03  DEC vEnemyAJumpCounter,X      ; updates the counter value
C - - - - - 0x0182E6 06:A2D6: D0 03     BNE bra_A2DB_death_rendering  ; If EnemyAJumpCounter != 0x00
C - - - - - 0x0182E8 06:A2D8: 4C 7F D7  JMP loc_D77F_free_enemyA      ;

bra_A2DB_death_rendering:
C - - - - - 0x0182EB 06:A2DB: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x0182EE 06:A2DE: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x0182F1 06:A2E1: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the EnemyAJumpCounter)
C - - - - - 0x0182F2 06:A2E2: B9 E9 A2  LDA tbl_A2E9_frames_,Y                ;
C - - - - - 0x0182F5 06:A2E5: A8        TAY                                   ; 
C - - - - - 0x0182F6 06:A2E6: 4C 30 A1  JMP loc_A130_prepare_rendering        ;

tbl_A2E9_frames_:
- D 1 - - - 0x0182F9 06:A2E9: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x0182FA 06:A2EA: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x0182FB 06:A2EB: 14        .byte $14   ; damage frame

; In: Register X - the enemyA number
sub_A2EC_try_to_change_self:
C - - - - - 0x0182FC 06:A2EC: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x0182FF 06:A2EF: F0 0A     BEQ @bra_A2FB_skip                ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x018301 06:A2F1: DE 4A 03  DEC vEnemyAJumpCounter,X          ;
C - - - - - 0x018304 06:A2F4: D0 39     BNE bra_A32F_RTS                  ; If vEnemyAJumpCounter != 0x00
C - - - - - 0x018306 06:A2F6: A9 00     LDA #$00                          ; clear substatus
C - - - - - 0x018308 06:A2F8: 20 23 A3  JSR sub_A323_change_substatus     ;
@bra_A2FB_skip:
C - - - - - 0x01830B 06:A2FB: 20 30 A3  JSR sub_A330_try_change_direction ;
C - - - - - 0x01830E 06:A2FE: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x018310 06:A300: 29 3F     AND #$3F                          ;
C - - - - - 0x018312 06:A302: D0 2B     BNE bra_A32F_RTS                  ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x018314 06:A304: 20 64 D0  JSR sub_D064_generate_rng         ;
C - - - - - 0x018317 06:A307: 6A        ROR                               ;
C - - - - - 0x018318 06:A308: B0 25     BCS bra_A32F_RTS                  ; 50% chance branch
C - - - - - 0x01831A 06:A30A: 29 07     AND #$07                          ;
C - - - - - 0x01831C 06:A30C: A8        TAY                               ; y is {0x00, ... , 0x07}
C - - - - - 0x01831D 06:A30D: B9 45 A0  LDA tbl_A045_status_flags,Y       ;
C - - - - - 0x018320 06:A310: 85 05     STA ram_0005                      ;
C - - - - - 0x018322 06:A312: F0 11     BEQ bra_A325_change_substatus_ex  ; If status flag == 0x00
C - - - - - 0x018324 06:A314: C9 10     CMP #$10                          ;
C - - - - - 0x018326 06:A316: F0 04     BEQ @bra_A31C_skip                ; If the enemy is going to jump
C - - - - - 0x018328 06:A318: A9 18     LDA #$18                          ; An initialize jump value for 'stop' 
C - - - - - 0x01832A 06:A31A: D0 02     BNE @bra_A31E_skip                ; Always true

@bra_A31C_skip:
C - - - - - 0x01832C 06:A31C: A9 20     LDA #$20                          ; An initialize jump value for 'squatting' 
@bra_A31E_skip:
C - - - - - 0x01832E 06:A31E: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
C - - - - - 0x018331 06:A321: D0 02     BNE bra_A325_change_substatus_ex  ; Always true

; In: Register A - an new status
sub_A323_change_substatus:
C - - - - - 0x018333 06:A323: 85 05     STA ram_0005                      ;
; In: $0005 - an new status
bra_A325_change_substatus_ex:
C - - - - - 0x018335 06:A325: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x018338 06:A328: 29 C1     AND #$C1                          ;
C - - - - - 0x01833A 06:A32A: 05 05     ORA ram_0005                      ;
C - - - - - 0x01833C 06:A32C: 9D 20 03  STA vEnemyAStatus,X               ;
bra_A32F_RTS:
C - - - - - 0x01833F 06:A32F: 60        RTS                               ;

; In: Register X - the enemyA number
sub_A330_try_change_direction:
C - - - - - 0x018340 06:A330: A9 7F     LDA #$7F                                 ; f(A) = 128, see $D6BD
C - - - - - 0x018342 06:A332: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction ;
C - - - - - 0x018345 06:A335: 84 05     STY ram_0005                             ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x018347 06:A337: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x01834A 06:A33A: 29 FE     AND #$FE                                 ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x01834C 06:A33C: 05 05     ORA ram_0005                             ;
C - - - - - 0x01834E 06:A33E: 9D 20 03  STA vEnemyAStatus,X                      ;
C - - - - - 0x018351 06:A341: 60        RTS                                      ;

; offset index
- D 1 - I - 0x018352 06:A342: 05        .byte $05, $04, $03, $01, $00, $0F, $0D, $0C   ; 
- D 1 - I - 0x01835A 06:A34A: 0B        .byte $0B, $0C, $0D, $0F, $00, $01, $03, $04   ; 

; jump counters
- D 1 - I - 0x018362 06:A352: 44        .byte $44, $04, $04, $04, $06, $04, $04, $04   ; 
- D 1 - I - 0x01836A 06:A35A: 44        .byte $44, $04, $04, $04, $06, $04, $04, $04   ; 

; 1st byte - the offset of HitBoxY 
; 2nd byte - HitBoxH
tbl_A362_hitboxes:
- D 1 - - - 0x018372 06:A362: 05        .byte $05, $0A
- D 1 - - - 0x018374 06:A364: 00        .byte $00, $10

loc_A366_enemy:
C D 1 - - - 0x018376 06:A366: A2 01     LDX #$01                           ;
C - - - - - 0x018378 06:A368: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyB number)
bra_A36A_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x01837A 06:A36A: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x01837C 06:A36C: 20 17 A4  JSR sub_A417_status_behavior       ;
C - - - - - 0x01837F 06:A36F: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x018382 06:A372: C9 E0     CMP #$E0                           ;
C - - - - - 0x018384 06:A374: B0 49     BCS bra_A3BF_next                  ; If vEnemyBStatus >= 0xE0
C - - - - - 0x018386 06:A376: C9 C0     CMP #$C0                           ;
C - - - - - 0x018388 06:A378: 90 45     BCC bra_A3BF_next                  ; If vEnemyBStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x01838A 06:A37A: A0 02     LDY #$02                           ; 2 row in the hitbox table
C - - - - - 0x01838C 06:A37C: AD 01 03  LDA vEnemyB                        ;
C - - - - - 0x01838F 06:A37F: C9 27     CMP #$27                           ; CONSTANT - Gargoyle
C - - - - - 0x018391 06:A381: F0 02     BEQ @bra_A385_skip                 ; If vEnemyB == 0x27
C - - - - - 0x018393 06:A383: A0 00     LDY #$00                           ; 1 row in the hitbox table
@bra_A385_skip:
C - - - - - 0x018395 06:A385: BD 68 03  LDA vEnemyBPosY,X                  ;
C - - - - - 0x018398 06:A388: 18        CLC                                ;
C - - - - - 0x018399 06:A389: 79 62 A3  ADC tbl_A362_hitboxes,Y            ;
C - - - - - 0x01839C 06:A38C: 85 AD     STA vEnemyHitBoxY                  ; <~ posY + the offset
C - - - - - 0x01839E 06:A38E: BD 6E 03  LDA vEnemyBScreenPosX,X            ;
C - - - - - 0x0183A1 06:A391: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x0183A3 06:A393: B9 63 A3  LDA tbl_A362_hitboxes + 1,Y        ;
C - - - - - 0x0183A6 06:A396: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x0183A8 06:A398: A9 05     LDA #$05                           ;
C - - - - - 0x0183AA 06:A39A: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x0183AC 06:A39C: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x0183AF 06:A39F: B0 0B     BCS @bra_A3AC_bomb_hit             ; If the bomb is exploding
C - - - - - 0x0183B1 06:A3A1: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x0183B3 06:A3A3: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x0183B5 06:A3A5: F0 0B     BEQ bra_A3B2_check_bullets         ; If the character isn't Goemon
C - - - - - 0x0183B7 06:A3A7: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x0183BA 06:A3AA: 90 10     BCC bra_A3BC_no_intersect          ; If the intersect doesn't exist
@bra_A3AC_bomb_hit:
C - - - - - 0x0183BC 06:A3AC: 20 DD A3  JSR sub_A3DD_hit                   ;
C - - - - - 0x0183BF 06:A3AF: 4C BF A3  JMP loc_A3BF_next                  ;

; In: Register X - the enemyB number
bra_A3B2_check_bullets:
C - - - - - 0x0183C2 06:A3B2: A6 7A     LDX vBulletCount                    ; set loop counter
bra_A3B4_loop:                                                              ; loop by x
C - - - - - 0x0183C4 06:A3B4: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet  ;
C - - - - - 0x0183C7 06:A3B7: B0 0B     BCS bra_A3C4_bullet_hit             ; If the intersect is exist
loc_A3B9_next:
C D 1 - - - 0x0183C9 06:A3B9: CA        DEX                                 ; decrement loop counter
C - - - - - 0x0183CA 06:A3BA: 10 F8     BPL bra_A3B4_loop                   ; If Register X >= 0x00
bra_A3BC_no_intersect:
C - - - - - 0x0183CC 06:A3BC: 20 62 D5  JSR sub_D562_has_character_damage   ;
bra_A3BF_next:
loc_A3BF_next:
C D 1 - - - 0x0183CF 06:A3BF: C6 1A     DEC vTempCounter1A                  ; decrements loop counter
C - - - - - 0x0183D1 06:A3C1: 10 A7     BPL bra_A36A_loop                   ; If vTempCounter1A >= 0
C - - - - - 0x0183D3 06:A3C3: 60        RTS                                 ;

; In Register X - the number of the bullets
; In: $001A - the enemyB number
bra_A3C4_bullet_hit:
C - - - - - 0x0183D4 06:A3C4: A9 00     LDA #$00                            ;
C - - - - - 0x0183D6 06:A3C6: 95 8F     STA vBulletStatus,X                 ; clear
C - - - - - 0x0183D8 06:A3C8: A6 1A     LDX vTempCounter1A                  ;
C - - - - - 0x0183DA 06:A3CA: BD 62 03  LDA ram_0362,X
C - - - - - 0x0183DD 06:A3CD: 30 06     BMI bra_A3D5_bulletproof
C - - - - - 0x0183DF 06:A3CF: 20 DD A3  JSR sub_A3DD_hit                    ;
C - - - - - 0x0183E2 06:A3D2: 4C BF A3  JMP loc_A3BF_next                   ;

bra_A3D5_bulletproof:
C - - - - - 0x0183E5 06:A3D5: A9 10     LDA #$10                       ; The sound of a bullet hitting an armored enemy
C - - - - - 0x0183E7 06:A3D7: 20 20 C4  JSR sub_C420_add_sound_effect  ; bank FF
C - - - - - 0x0183EA 06:A3DA: 4C B9 A3  JMP loc_A3B9_next              ;

; In: $001A - the enemyB number
sub_A3DD_hit:
C - - - - - 0x0183ED 06:A3DD: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x0183EF 06:A3DF: AD 01 03  LDA vEnemyB                        ;
C - - - - - 0x0183F2 06:A3E2: C9 27     CMP #$27                           ; CONSTANT - Gargoyle
C - - - - - 0x0183F4 06:A3E4: D0 21     BNE bra_A407_default_dying         ; If vEnemyB != 0x27
C - - - - - 0x0183F6 06:A3E6: DE 8C 03  DEC vEnemyBHealthPoints,X          ;
C - - - - - 0x0183F9 06:A3E9: F0 1C     BEQ bra_A407_default_dying         ; If the health points is zero
C - - - - - 0x0183FB 06:A3EB: A0 00     LDY #$00                           ; a jump type #1
C - - - - - 0x0183FD 06:A3ED: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x018400 06:A3F0: 6A        ROR                                ;
C - - - - - 0x018401 06:A3F1: B0 02     BCS @bra_A3F5_left                 ; If the enemy is looking to the right
C - - - - - 0x018403 06:A3F3: A0 08     LDY #$08                           ; a jump type #2
@bra_A3F5_left:
C - - - - - 0x018405 06:A3F5: 98        TYA                                ;
C - - - - - 0x018406 06:A3F6: 9D 92 03  STA vEnemyBJumpType,X              ; initializes a jump type for overdrive mode
C - - - - - 0x018409 06:A3F9: A9 40     LDA #$40                           ;
C - - - - - 0x01840B 06:A3FB: 9D 86 03  STA vEnemyBJumpCounter,X           ; initializes a jump counter for overdrive mode
C - - - - - 0x01840E 06:A3FE: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x018411 06:A401: 09 02     ORA #$02                           ; CONSTANT - overdrive mode
C - - - - - 0x018413 06:A403: 9D 5C 03  STA vEnemyBStatus,X                ;
C - - - - - 0x018416 06:A406: 60        RTS                                ;

bra_A407_default_dying:
C - - - - - 0x018417 06:A407: BD 5C 03  LDA vEnemyBStatus,X            ;
C - - - - - 0x01841A 06:A40A: 29 C0     AND #$C0                       ; clear substate
C - - - - - 0x01841C 06:A40C: 09 20     ORA #$20                       ; CONSTANT - the enemy is dying
C - - - - - 0x01841E 06:A40E: 9D 5C 03  STA vEnemyBStatus,X            ;
C - - - - - 0x018421 06:A411: A9 08     LDA #$08                       ; assign a dying jump counter
C - - - - - 0x018423 06:A413: 9D 86 03  STA vEnemyBJumpCounter,X       ;
bra_A416_RTS:
C - - - - - 0x018426 06:A416: 60        RTS                            ;

; In: Register X - the enemyB number
sub_A417_status_behavior:
C - - - - - 0x018427 06:A417: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x01842A 06:A41A: 10 FA     BPL bra_A416_RTS                       ; If the status isn't used
C - - - - - 0x01842C 06:A41C: 29 20     AND #$20                               ; CONSTANT - the enemy is dying
C - - - - - 0x01842E 06:A41E: D0 22     BNE @bra_A442_prepare_rendering        ; If vEnemyBStatus contains Z flag (see vEnemyBStatus)
C - - - - - 0x018430 06:A420: A0 03     LDY #$03                               ; f(A) = 4, see $A437 (slow enemy speed)
C - - - - - 0x018432 06:A422: AD 01 03  LDA vEnemyB                            ;
C - - - - - 0x018435 06:A425: C9 27     CMP #$27                               ; CONSTANT - Gargoyle
C - - - - - 0x018437 06:A427: D0 0B     BNE @bra_A434_skip                     ; If vEnemyB != 0x27
C - - - - - 0x018439 06:A429: A0 00     LDY #$00                               ; f(A) = 1, see $A437 (fast enemy speed)
C - - - - - 0x01843B 06:A42B: BD 5C 03  LDA vEnemyBStatus,X                    ;
C - - - - - 0x01843E 06:A42E: 29 02     AND #$02                               ; CONSTANT - overdrive mode
C - - - - - 0x018440 06:A430: D0 02     BNE @bra_A434_skip                     ; If vEnemyBStatus constants M flag (see vEnemyBStatus)
C - - - - - 0x018442 06:A432: A0 01     LDY #$01                               ; f(A) = 2, see $A437 (normal enemy speed)
@bra_A434_skip:
C - - - - - 0x018444 06:A434: 98        TYA                                    ;
C - - - - - 0x018445 06:A435: 25 2C     AND vLowCounter                        ;
C - - - - - 0x018447 06:A437: D0 06     BNE @bra_A43F_skip                     ; Branch if vLowCounter doesn't multiple of f(A) (vLowCounter % f(A) != 0)
C - - - - - 0x018449 06:A439: 20 28 A5  JSR sub_A528_update_jump_params_       ;
C - - - - - 0x01844C 06:A43C: 20 89 A4  JSR sub_A489_execute_fly_step          ;
@bra_A43F_skip:
C - - - - - 0x01844F 06:A43F: 20 C4 D9  JSR sub_D9C4_inc_enemyB_frame_counter  ;
@bra_A442_prepare_rendering:
C - - - - - 0x018452 06:A442: BD 80 03  LDA vEnemyBFrame_Counter,X             ;
C - - - - - 0x018455 06:A445: 0A        ASL                                    ;
C - - - - - 0x018456 06:A446: 0A        ASL                                    ; 
C - - - - - 0x018457 06:A447: A8        TAY                                    ; Y <~ 4 * vFrameCounter
C - - - - - 0x018458 06:A448: BD 74 03  LDA vEnemyBPosXLow,X                   ;
C - - - - - 0x01845B 06:A44B: 85 00     STA ram_0000                           ; prepares the 1st parameter
C - - - - - 0x01845D 06:A44D: BD 7A 03  LDA vEnemyBPosXHigh,X                  ;
C - - - - - 0x018460 06:A450: 85 01     STA ram_0001                           ; prepares the 2nd parameter
C - - - - - 0x018462 06:A452: 20 7B D6  JSR sub_D67B_out_of_sight              ;  
C - - - - - 0x018465 06:A455: 90 03     BCC bra_A45A_skip                      ; If the enemy is visible
C - - - - - 0x018467 06:A457: 4C 73 D8  JMP loc_D873_free_enemyB               ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A45A_skip:
C - - - - - 0x01846A 06:A45A: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x01846D 06:A45D: 90 03     BCC bra_A462_skip                  ; If the enemy is on the screen
C - - - - - 0x01846F 06:A45F: 4C 4D D8  JMP loc_D84D_enemyB_off_screen     ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A462_skip:
C - - - - - 0x018472 06:A462: 20 31 D8  JSR sub_D831_enemyB_on_screen      ;
C - - - - - 0x018475 06:A465: BD 5C 03  LDA vEnemyBStatus,X                ;
C - - - - - 0x018478 06:A468: 29 20     AND #$20                           ; CONSTANT - the enemy is dying
C - - - - - 0x01847A 06:A46A: F0 03     BEQ bra_A46F_add                   ; If vEnemyBStatus doesn't contain Z flag (see vEnemyBStatus)
C - - - - - 0x01847C 06:A46C: 4C 7E A4  JMP loc_A47E_dying                 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A46F_add:
C - - - - - 0x01847F 06:A46F: 98        TYA                            ;
C - - - - - 0x018480 06:A470: 18        CLC                            ;
C - - - - - 0x018481 06:A471: 6D 06 03  ADC vEnemyBSpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x018484 06:A474: 85 01     STA ram_0001                   ;
C - - - - - 0x018486 06:A476: AD 07 03  LDA vEnemyBSpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x018489 06:A479: 85 02     STA ram_0002                   ;
C - - - - - 0x01848B 06:A47B: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

loc_A47E_dying:
C D 1 - - - 0x01848E 06:A47E: DE 86 03  DEC vEnemyBJumpCounter,X       ;
C - - - - - 0x018491 06:A481: D0 03     BNE bra_A486_add               ; If vJumpCounter != 0x00
C - - - - - 0x018493 06:A483: 4C 73 D8  JMP loc_D873_free_enemyB       ;

bra_A486_add:
C - - - - - 0x018496 06:A486: 4C 7D D9  JMP loc_D97D_add_flash_sprite_magic  ;

; In: Register X - the enemyB number
sub_A489_execute_fly_step:
C - - - - - 0x018499 06:A489: AD 01 03  LDA vEnemyB                          ;
C - - - - - 0x01849C 06:A48C: C9 27     CMP #$27                             ; CONSTANT - Gargoyle
C - - - - - 0x01849E 06:A48E: F0 2F     BEQ bra_A4BF_gargoyle                ; If vEnemyB == 0x27
C - - - - - 0x0184A0 06:A490: 20 8F A5  JSR sub_A58F_set_address             ; see $A342
C - - - - - 0x0184A3 06:A493: BC 92 03  LDY vEnemyBJumpType,X                ;
C - - - - - 0x0184A6 06:A496: B1 00     LDA (ram_0000),Y                     ;
C - - - - - 0x0184A8 06:A498: 0A        ASL                                  ; *2, because the set contains 2 bytes
C - - - - - 0x0184A9 06:A499: A8        TAY                                  ;
C - - - - - 0x0184AA 06:A49A: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x0184AD 06:A49D: 18        CLC                                  ;
C - - - - - 0x0184AE 06:A49E: 79 D4 DA  ADC tbl_flying_track_offset,Y        ;
C - - - - - 0x0184B1 06:A4A1: 9D 68 03  STA vEnemyBPosY,X                    ; <~ posY + offset
C - - - - - 0x0184B4 06:A4A4: A9 00     LDA #$00                             ;
C - - - - - 0x0184B6 06:A4A6: 85 02     STA ram_0002                         ; $0002 = 0x00
C - - - - - 0x0184B8 06:A4A8: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y    ;
C - - - - - 0x0184BB 06:A4AB: 10 02     BPL @bra_A4AF_skip                   ; If the offset >= 0x00
C - - - - - 0x0184BD 06:A4AD: C6 02     DEC ram_0002                         ; $0002 = 0xFF, i.e. -1
@bra_A4AF_skip:
C - - - - - 0x0184BF 06:A4AF: 18        CLC                                  ;
C - - - - - 0x0184C0 06:A4B0: 7D 74 03  ADC vEnemyBPosXLow,X                 ;
C - - - - - 0x0184C3 06:A4B3: 9D 74 03  STA vEnemyBPosXLow,X                 ; <~ posX + offset
C - - - - - 0x0184C6 06:A4B6: BD 7A 03  LDA vEnemyBPosXHigh,X                ;
C - - - - - 0x0184C9 06:A4B9: 65 02     ADC ram_0002                         ;
C - - - - - 0x0184CB 06:A4BB: 9D 7A 03  STA vEnemyBPosXHigh,X                ; changed PosXHigh (+1 or -1), if PosXLow was overflow
C - - - - - 0x0184CE 06:A4BE: 60        RTS                                  ;

; In: Register X - the enemyB number
bra_A4BF_gargoyle:
C - - - - - 0x0184CF 06:A4BF: 20 98 A5  JSR sub_A598_get_offset_index                    ;
C - - - - - 0x0184D2 06:A4C2: C9 01     CMP #$01                                         ;
C - - - - - 0x0184D4 06:A4C4: 90 33     BCC bra_A4F9_skip                                ; If the offset index < 0x01
C - - - - - 0x0184D6 06:A4C6: C9 08     CMP #$08                                         ;
C - - - - - 0x0184D8 06:A4C8: B0 07     BCS @bra_A4D1_skip                               ; If the offset index >= 0x08
C - - - - - 0x0184DA 06:A4CA: 20 B7 D8  JSR sub_D8B7_check_enemyB_movement_on_the_right  ;
C - - - - - 0x0184DD 06:A4CD: F0 2A     BEQ bra_A4F9_skip                                ; If the movement to the right is not allowed
C - - - - - 0x0184DF 06:A4CF: D0 09     BNE @bra_A4DA_calculate_position                 ; Always true

@bra_A4D1_skip:
C - - - - - 0x0184E1 06:A4D1: C9 09     CMP #$09                                         ;
C - - - - - 0x0184E3 06:A4D3: 90 24     BCC bra_A4F9_skip                                ; If the offset index < 0x09
C - - - - - 0x0184E5 06:A4D5: 20 C2 D8  JSR sub_D8C2_check_enemyB_movement_on_the_left   ;
C - - - - - 0x0184E8 06:A4D8: F0 1F     BEQ bra_A4F9_skip                                ; If the movement to the left is not allowed
@bra_A4DA_calculate_position:
C - - - - - 0x0184EA 06:A4DA: 20 98 A5  JSR sub_A598_get_offset_index                    ;
C - - - - - 0x0184ED 06:A4DD: 0A        ASL                                              ; *2, because the set contains 2 bytes
C - - - - - 0x0184EE 06:A4DE: A8        TAY                                              ;
C - - - - - 0x0184EF 06:A4DF: A9 00     LDA #$00                                         ;
C - - - - - 0x0184F1 06:A4E1: 85 02     STA ram_0002                                     ; $0002 = 0x00
C - - - - - 0x0184F3 06:A4E3: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y                ;
C - - - - - 0x0184F6 06:A4E6: 10 02     BPL @bra_A4EA_skip                               ; If the offset >= 0x00
C - - - - - 0x0184F8 06:A4E8: C6 02     DEC ram_0002                                     ; $0002 = 0xFF, i.e. -1
@bra_A4EA_skip:
C - - - - - 0x0184FA 06:A4EA: 18        CLC                                              ;
C - - - - - 0x0184FB 06:A4EB: 7D 74 03  ADC vEnemyBPosXLow,X                             ;
C - - - - - 0x0184FE 06:A4EE: 9D 74 03  STA vEnemyBPosXLow,X                             ; <~ posX + offset
C - - - - - 0x018501 06:A4F1: BD 7A 03  LDA vEnemyBPosXHigh,X                            ;
C - - - - - 0x018504 06:A4F4: 65 02     ADC ram_0002                                     ;
C - - - - - 0x018506 06:A4F6: 9D 7A 03  STA vEnemyBPosXHigh,X                            ; changed PosXHigh (+1 or -1), if PosXLow was overflow
bra_A4F9_skip:
C - - - - - 0x018509 06:A4F9: 20 98 A5  JSR sub_A598_get_offset_index                    ;
C - - - - - 0x01850C 06:A4FC: C9 05     CMP #$05                                         ;
C - - - - - 0x01850E 06:A4FE: 90 0B     BCC @bra_A50B_skip                               ; If the offset index < 0x05
C - - - - - 0x018510 06:A500: C9 0C     CMP #$0C                                         ;
C - - - - - 0x018512 06:A502: B0 07     BCS @bra_A50B_skip                               ; If the offset index >= 0x0C
C - - - - - 0x018514 06:A504: 20 CD D8  JSR sub_D8CD_enemyB_collision_plus_one           ;
C - - - - - 0x018517 06:A507: F0 1E     BEQ bra_A527_RTS                                 ; If downward movement is not allowed
C - - - - - 0x018519 06:A509: D0 0D     BNE bra_A518_inc_posY                            ; Always true

@bra_A50B_skip:
C - - - - - 0x01851B 06:A50B: C9 04     CMP #$04                                         ;
C - - - - - 0x01851D 06:A50D: 90 04     BCC @bra_A513_skip                               ; If the offset index < 0x04
C - - - - - 0x01851F 06:A50F: C9 0D     CMP #$0D                                         ;
C - - - - - 0x018521 06:A511: 90 14     BCC bra_A527_RTS                                 ; If the offset index < 0x0D
@bra_A513_skip:
C - - - - - 0x018523 06:A513: 20 D1 D8  JSR sub_D8D1_enemyB_collision_minus_16           ;
C - - - - - 0x018526 06:A516: F0 0F     BEQ bra_A527_RTS                                 ; If upward movement is not allowed
bra_A518_inc_posY:
C - - - - - 0x018528 06:A518: 20 98 A5  JSR sub_A598_get_offset_index                    ;
C - - - - - 0x01852B 06:A51B: 0A        ASL                                              ; *2, because the set contains 2 bytes
C - - - - - 0x01852C 06:A51C: A8        TAY                                              ;
C - - - - - 0x01852D 06:A51D: BD 68 03  LDA vEnemyBPosY,X                                ;
C - - - - - 0x018530 06:A520: 18        CLC                                              ;
C - - - - - 0x018531 06:A521: 79 D4 DA  ADC tbl_flying_track_offset,Y                    ;
C - - - - - 0x018534 06:A524: 9D 68 03  STA vEnemyBPosY,X                                ; <~ vEnemyBPosY + the offset
bra_A527_RTS:
C - - - - - 0x018537 06:A527: 60        RTS                                              ;

sub_A528_update_jump_params_:
C - - - - - 0x018538 06:A528: 20 8F A5  JSR sub_A58F_set_address             ; see $A342
C - - - - - 0x01853B 06:A52B: DE 86 03  DEC vEnemyBJumpCounter,X             ;
C - - - - - 0x01853E 06:A52E: D0 14     BNE @bra_A544_skip                   ; If jumpCounter != 0x00
C - - - - - 0x018540 06:A530: FE 92 03  INC vEnemyBJumpType,X                ; set next jump type
C - - - - - 0x018543 06:A533: BD 92 03  LDA vEnemyBJumpType,X                ;
C - - - - - 0x018546 06:A536: 29 0F     AND #$0F                             ;
C - - - - - 0x018548 06:A538: 9D 92 03  STA vEnemyBJumpType,X                ; adjust by mask
C - - - - - 0x01854B 06:A53B: 18        CLC                                  ;
C - - - - - 0x01854C 06:A53C: 69 10     ADC #$10                             ; see $A342 + 0x10
C - - - - - 0x01854E 06:A53E: A8        TAY                                  ;
C - - - - - 0x01854F 06:A53F: B1 00     LDA (ram_0000),Y                     ;
C - - - - - 0x018551 06:A541: 9D 86 03  STA vEnemyBJumpCounter,X             ; assign an new counter
@bra_A544_skip:
C - - - - - 0x018554 06:A544: 20 DF D6  JSR sub_D6DF_check_enemyB_direction  ;
C - - - - - 0x018557 06:A547: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x01855A 06:A54A: C9 30     CMP #$30                             ;
C - - - - - 0x01855C 06:A54C: B0 0A     BCS @bra_A558_skip                   ; If enemyAPosY >= 0x30
C - - - - - 0x01855E 06:A54E: A9 00     LDA #$00                             ; new jump type #1
C - - - - - 0x018560 06:A550: C0 01     CPY #$01                             ; 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x018562 06:A552: D0 1B     BNE @bra_A56F_assign_new_values      ; If Register Y != 0x01
C - - - - - 0x018564 06:A554: A9 08     LDA #$08                             ; new jump type #2
C - - - - - 0x018566 06:A556: D0 17     BNE @bra_A56F_assign_new_values      ; Always true

@bra_A558_skip:
C - - - - - 0x018568 06:A558: BD 68 03  LDA vEnemyBPosY,X                    ;
C - - - - - 0x01856B 06:A55B: C9 BF     CMP #$BF                             ;
C - - - - - 0x01856D 06:A55D: 90 18     BCC @bra_A577_skip                   ; If enemyAPosY < 0xBF
C - - - - - 0x01856F 06:A55F: BD 5C 03  LDA vEnemyBStatus,X                  ;
C - - - - - 0x018572 06:A562: 29 FD     AND #$FD                             ; reset 'overdrive mode' status
C - - - - - 0x018574 06:A564: 9D 5C 03  STA vEnemyBStatus,X                  ;
C - - - - - 0x018577 06:A567: A9 03     LDA #$03                             ; new jump type #3
C - - - - - 0x018579 06:A569: C0 01     CPY #$01                             ; 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x01857B 06:A56B: D0 02     BNE @bra_A56F_assign_new_values      ; If Register Y != 0x01
C - - - - - 0x01857D 06:A56D: A9 0B     LDA #$0B                             ; new jump type #4
@bra_A56F_assign_new_values:
C - - - - - 0x01857F 06:A56F: 9D 92 03  STA vEnemyBJumpType,X                ; assign an new type
C - - - - - 0x018582 06:A572: A9 50     LDA #$50                             ;
C - - - - - 0x018584 06:A574: 9D 86 03  STA vEnemyBJumpCounter,X             ; assign an new counter
@bra_A577_skip:
C - - - - - 0x018587 06:A577: BC 92 03  LDY vEnemyBJumpType,X                ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x01858A 06:A57A: B1 00     LDA (ram_0000),Y                     ;
C - - - - - 0x01858C 06:A57C: 29 08     AND #$08                             ;
C - - - - - 0x01858E 06:A57E: F0 02     BEQ @bra_A582_set_direction          ; If the value contains 0x08 flag
C - - - - - 0x018590 06:A580: A9 01     LDA #$01                             ; CONSTANT - the left direction
@bra_A582_set_direction:
C - - - - - 0x018592 06:A582: 85 05     STA ram_0005                         ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x018594 06:A584: BD 5C 03  LDA vEnemyBStatus,X                  ;
C - - - - - 0x018597 06:A587: 29 FE     AND #$FE                             ; CONSTANT: N - the direction (see vEnemyBStatus)
C - - - - - 0x018599 06:A589: 05 05     ORA ram_0005                         ;
C - - - - - 0x01859B 06:A58B: 9D 5C 03  STA vEnemyBStatus,X                  ;
C - - - - - 0x01859E 06:A58E: 60        RTS                                  ;

sub_A58F_set_address:
C - - - - - 0x01859F 06:A58F: A9 42     LDA #$42             ;
C - - - - - 0x0185A1 06:A591: 85 00     STA ram_0000         ;
C - - - - - 0x0185A3 06:A593: A9 A3     LDA #$A3             ;
C - - - - - 0x0185A5 06:A595: 85 01     STA ram_0001         ; (ram_0000),0 = $A342
C - - - - - 0x0185A7 06:A597: 60        RTS                  ;

; In: Register X - the enemyB number
; Out: Register A - the offset index
sub_A598_get_offset_index:
C - - - - - 0x0185A8 06:A598: 20 8F A5  JSR sub_A58F_set_address  ;
C - - - - - 0x0185AB 06:A59B: BC 92 03  LDY vEnemyBJumpType,X     ;
C - - - - - 0x0185AE 06:A59E: B1 00     LDA (ram_0000),Y          ;
C - - - - - 0x0185B0 06:A5A0: 60        RTS                       ;

tbl_A5A1:
- - - - - - 0x0185B1 06:A5A1: 18        .byte $18   ; 
tbl_A5A2:
- D 1 - - - 0x0185B2 06:A5A2: 18        .byte $18   ; 
- D 1 - - - 0x0185B3 06:A5A3: 1A        .byte $1A   ; 
- D 1 - - - 0x0185B4 06:A5A4: 17        .byte $17   ; 
- D 1 - - - 0x0185B5 06:A5A5: 1D        .byte $1D   ; 
- D 1 - - - 0x0185B6 06:A5A6: 16        .byte $16   ; 
- D 1 - - - 0x0185B7 06:A5A7: 20        .byte $20   ; 
- D 1 - - - 0x0185B8 06:A5A8: 14        .byte $14   ; 
- D 1 - - - 0x0185B9 06:A5A9: 23        .byte $23   ; 
- D 1 - - - 0x0185BA 06:A5AA: 12        .byte $12   ; 
- D 1 - - - 0x0185BB 06:A5AB: 26        .byte $26   ; 
- D 1 - - - 0x0185BC 06:A5AC: 10        .byte $10   ; 
- D 1 - - - 0x0185BD 06:A5AD: 29        .byte $29   ; 
- D 1 - - - 0x0185BE 06:A5AE: 0E        .byte $0E   ; 
- D 1 - - - 0x0185BF 06:A5AF: 2C        .byte $2C   ; 
- D 1 - - - 0x0185C0 06:A5B0: 0C        .byte $0C   ; 
- D 1 - - - 0x0185C1 06:A5B1: 2F        .byte $2F   ; 
- D 1 - - - 0x0185C2 06:A5B2: 0A        .byte $0A   ; 
loc_A5B3:
C D 1 - - - 0x0185C3 06:A5B3: A2 01     LDX #$01
C - - - - - 0x0185C5 06:A5B5: 86 1A     STX ram_001A
bra_A5B7:
C - - - - - 0x0185C7 06:A5B7: A6 1A     LDX ram_001A
C - - - - - 0x0185C9 06:A5B9: 20 1A A6  JSR sub_A61A
C - - - - - 0x0185CC 06:A5BC: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x0185CF 06:A5BF: C9 E0     CMP #$E0
C - - - - - 0x0185D1 06:A5C1: B0 40     BCS bra_A603
C - - - - - 0x0185D3 06:A5C3: C9 C0     CMP #$C0
C - - - - - 0x0185D5 06:A5C5: 90 3C     BCC bra_A603
C - - - - - 0x0185D7 06:A5C7: BD 68 03  LDA ram_0368,X
C - - - - - 0x0185DA 06:A5CA: 18        CLC
C - - - - - 0x0185DB 06:A5CB: 69 06     ADC #$06
C - - - - - 0x0185DD 06:A5CD: 85 AD     STA ram_00AD
C - - - - - 0x0185DF 06:A5CF: BD 6E 03  LDA ram_036E,X
C - - - - - 0x0185E2 06:A5D2: 85 AE     STA ram_00AE
C - - - - - 0x0185E4 06:A5D4: A9 0C     LDA #$0C
C - - - - - 0x0185E6 06:A5D6: 85 AF     STA ram_00AF
C - - - - - 0x0185E8 06:A5D8: A9 06     LDA #$06
C - - - - - 0x0185EA 06:A5DA: 85 B0     STA ram_00B0
C - - - - - 0x0185EC 06:A5DC: A5 5F     LDA vChrLiveStatus
C - - - - - 0x0185EE 06:A5DE: 29 02     AND #$02
C - - - - - 0x0185F0 06:A5E0: F0 0B     BEQ bra_A5ED
C - - - - - 0x0185F2 06:A5E2: 20 06 D6  JSR sub_D606_have_intersect_sword
C - - - - - 0x0185F5 06:A5E5: 90 19     BCC bra_A600
C - - - - - 0x0185F7 06:A5E7: 20 08 A6  JSR sub_A608
C - - - - - 0x0185FA 06:A5EA: 4C 03 A6  JMP loc_A603

bra_A5ED:
C - - - - - 0x0185FD 06:A5ED: A6 7A     LDX vBulletCount
bra_A5EF:
C - - - - - 0x0185FF 06:A5EF: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet
C - - - - - 0x018602 06:A5F2: 90 09     BCC bra_A5FD
C - - - - - 0x018604 06:A5F4: A9 10     LDA #$10
C - - - - - 0x018606 06:A5F6: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
C - - - - - 0x018609 06:A5F9: A9 00     LDA #$00
C - - - - - 0x01860B 06:A5FB: 95 8F     STA vBulletStatus,X
bra_A5FD:
C - - - - - 0x01860D 06:A5FD: CA        DEX
C - - - - - 0x01860E 06:A5FE: 10 EF     BPL bra_A5EF
bra_A600:
C - - - - - 0x018610 06:A600: 20 62 D5  JSR sub_D562_has_character_damage
bra_A603:
loc_A603:
C D 1 - - - 0x018613 06:A603: C6 1A     DEC ram_001A
C - - - - - 0x018615 06:A605: 10 B0     BPL bra_A5B7
bra_A607_RTS:
C - - - - - 0x018617 06:A607: 60        RTS

sub_A608:
C - - - - - 0x018618 06:A608: A6 1A     LDX ram_001A
C - - - - - 0x01861A 06:A60A: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x01861D 06:A60D: 29 C0     AND #$C0
C - - - - - 0x01861F 06:A60F: 09 20     ORA #$20
C - - - - - 0x018621 06:A611: 9D 5C 03  STA vEnemyBStatus,X
C - - - - - 0x018624 06:A614: A9 08     LDA #$08
C - - - - - 0x018626 06:A616: 9D 86 03  STA ram_0386,X
C - - - - - 0x018629 06:A619: 60        RTS

sub_A61A:
C - - - - - 0x01862A 06:A61A: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x01862D 06:A61D: 10 E8     BPL bra_A607_RTS
C - - - - - 0x01862F 06:A61F: 4A        LSR
C - - - - - 0x018630 06:A620: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x018633 06:A623: DE A6     .addr loc_A6DF - 1 ; 0x02
- - - - - - 0x018635 06:A625: 30 A6     .addr loc_A631 - 1 ; 0x04
- - - - - - 0x018637 06:A627: 30 A6     .addr loc_A631 - 1 ; 0x08
- - - - - - 0x018639 06:A629: 30 A6     .addr loc_A631 - 1 ; 0x10
- D 1 - I - 0x01863B 06:A62B: 46 A6     .addr loc_A647 - 1 ; 0x20
- D 1 - I - 0x01863D 06:A62D: 30 A6     .addr loc_A631 - 1 ; 0x40
- D 1 - I - 0x01863F 06:A62F: 30 A6     .addr loc_A631 - 1 ; 0x80

loc_A631:
C - - - - - 0x018641 06:A631: A9 09     LDA #$09
C - - - - - 0x018643 06:A633: 20 DB D8  JSR sub_D8DB_enemyB_collision_by_shift_posY
C - - - - - 0x018646 06:A636: D0 49     BNE bra_A681
C - - - - - 0x018648 06:A638: BD 80 03  LDA ram_0380,X
C - - - - - 0x01864B 06:A63B: 29 03     AND #$03
C - - - - - 0x01864D 06:A63D: 9D 80 03  STA ram_0380,X
C - - - - - 0x018650 06:A640: A9 1C     LDA #$1C
C - - - - - 0x018652 06:A642: A0 03     LDY #$03
C - - - - - 0x018654 06:A644: 4C CE A6  JMP loc_A6CE

loc_A647:
C D 1 - - - 0x018657 06:A647: BD 74 03  LDA vEnemyBPosXLow,X
C - - - - - 0x01865A 06:A64A: 85 00     STA ram_0000
C - - - - - 0x01865C 06:A64C: BD 7A 03  LDA vEnemyBPosXHigh,X
C - - - - - 0x01865F 06:A64F: 85 01     STA ram_0001
C - - - - - 0x018661 06:A651: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x018664 06:A654: 90 03     BCC bra_A659
C - - - - - 0x018666 06:A656: 4C 73 D8  JMP loc_D873_free_enemyB

bra_A659:
C - - - - - 0x018669 06:A659: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x01866C 06:A65C: 90 03     BCC bra_A661
C - - - - - 0x01866E 06:A65E: 4C 4D D8  JMP loc_D84D_enemyB_off_screen

bra_A661:
C - - - - - 0x018671 06:A661: 20 31 D8  JSR sub_D831_enemyB_on_screen
C - - - - - 0x018674 06:A664: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018677 06:A667: 29 20     AND #$20
C - - - - - 0x018679 06:A669: F0 03     BEQ bra_A66E
C - - - - - 0x01867B 06:A66B: 4C 52 A7  JMP loc_A752

bra_A66E:
C - - - - - 0x01867E 06:A66E: BD 80 03  LDA ram_0380,X
C - - - - - 0x018681 06:A671: 29 06     AND #$06
C - - - - - 0x018683 06:A673: 18        CLC
C - - - - - 0x018684 06:A674: 6D 06 03  ADC vEnemyBSpriteMagic2  ; ~> sprite_magic2
C - - - - - 0x018687 06:A677: 85 01     STA ram_0001
C - - - - - 0x018689 06:A679: AD 07 03  LDA vEnemyBSpriteMagic3  ; ~> sprite_magic3
C - - - - - 0x01868C 06:A67C: 85 02     STA ram_0002
C - - - - - 0x01868E 06:A67E: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

bra_A681:
C - - - - - 0x018691 06:A681: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018694 06:A684: 6A        ROR
C - - - - - 0x018695 06:A685: 90 28     BCC bra_A6AF
C - - - - - 0x018697 06:A687: 20 B5 A6  JSR sub_A6B5
loc_A68A:
C D 1 - - - 0x01869A 06:A68A: 20 90 A6  JSR sub_A690
C - - - - - 0x01869D 06:A68D: 4C 47 A6  JMP loc_A647

sub_A690:
C - - - - - 0x0186A0 06:A690: A5 2C     LDA vLowCounter
C - - - - - 0x0186A2 06:A692: 29 0F     AND #$0F
C - - - - - 0x0186A4 06:A694: D0 05     BNE bra_A69B
C - - - - - 0x0186A6 06:A696: A9 37     LDA #$37
C - - - - - 0x0186A8 06:A698: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
bra_A69B:
C - - - - - 0x0186AB 06:A69B: A5 2C     LDA vLowCounter
C - - - - - 0x0186AD 06:A69D: 29 03     AND #$03
C - - - - - 0x0186AF 06:A69F: D0 0D     BNE bra_A6AE_RTS
C - - - - - 0x0186B1 06:A6A1: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x0186B4 06:A6A4: 6A        ROR
C - - - - - 0x0186B5 06:A6A5: B0 04     BCS bra_A6AB
C - - - - - 0x0186B7 06:A6A7: FE 80 03  INC ram_0380,X
C - - - - - 0x0186BA 06:A6AA: 60        RTS

bra_A6AB:
C - - - - - 0x0186BB 06:A6AB: DE 80 03  DEC ram_0380,X
bra_A6AE_RTS:
C - - - - - 0x0186BE 06:A6AE: 60        RTS

bra_A6AF:
C - - - - - 0x0186BF 06:A6AF: 20 C6 A6  JSR sub_A6C6
C - - - - - 0x0186C2 06:A6B2: 4C 8A A6  JMP loc_A68A

sub_A6B5:
C - - - - - 0x0186C5 06:A6B5: 20 C2 D8  JSR sub_D8C2_check_enemyB_movement_on_the_left
C - - - - - 0x0186C8 06:A6B8: F0 03     BEQ bra_A6BD
C - - - - - 0x0186CA 06:A6BA: 4C 09 D8  JMP loc_D809_short_dec_EnemyBPosXLow

bra_A6BD:
C - - - - - 0x0186CD 06:A6BD: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x0186D0 06:A6C0: 49 01     EOR #$01
C - - - - - 0x0186D2 06:A6C2: 9D 5C 03  STA vEnemyBStatus,X
C - - - - - 0x0186D5 06:A6C5: 60        RTS

sub_A6C6:
C - - - - - 0x0186D6 06:A6C6: 20 B7 D8  JSR sub_D8B7_check_enemyB_movement_on_the_right
C - - - - - 0x0186D9 06:A6C9: F0 F2     BEQ bra_A6BD
C - - - - - 0x0186DB 06:A6CB: 4C 28 D8  JMP loc_D828_short_inc_EnemyBPosXLow

loc_A6CE:
C D 1 - - - 0x0186DE 06:A6CE: 9D 86 03  STA ram_0386,X
C - - - - - 0x0186E1 06:A6D1: 98        TYA
C - - - - - 0x0186E2 06:A6D2: 9D 92 03  STA vEnemyBJumpType,X
C - - - - - 0x0186E5 06:A6D5: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x0186E8 06:A6D8: 29 FD     AND #$FD
C - - - - - 0x0186EA 06:A6DA: 09 02     ORA #$02
C - - - - - 0x0186EC 06:A6DC: 9D 5C 03  STA vEnemyBStatus,X
loc_A6DF:
C - - - - - 0x0186EF 06:A6DF: BD 68 03  LDA ram_0368,X
C - - - - - 0x0186F2 06:A6E2: C9 D7     CMP #$D7
C - - - - - 0x0186F4 06:A6E4: B0 0F     BCS bra_A6F5
C - - - - - 0x0186F6 06:A6E6: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x0186F9 06:A6E9: 6A        ROR
C - - - - - 0x0186FA 06:A6EA: 90 06     BCC bra_A6F2
C - - - - - 0x0186FC 06:A6EC: 20 B5 A6  JSR sub_A6B5
C - - - - - 0x0186FF 06:A6EF: 4C F5 A6  JMP loc_A6F5

bra_A6F2:
C - - - - - 0x018702 06:A6F2: 20 C6 A6  JSR sub_A6C6
bra_A6F5:
loc_A6F5:
C D 1 - - - 0x018705 06:A6F5: BC 86 03  LDY ram_0386,X
C - - - - - 0x018708 06:A6F8: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y
C - - - - - 0x01870B 06:A6FB: 18        CLC
C - - - - - 0x01870C 06:A6FC: 7D 68 03  ADC ram_0368,X
C - - - - - 0x01870F 06:A6FF: C9 D7     CMP #$D7
C - - - - - 0x018711 06:A701: 90 02     BCC bra_A705
C - - - - - 0x018713 06:A703: A9 D7     LDA #$D7
bra_A705:
C - - - - - 0x018715 06:A705: 9D 68 03  STA ram_0368,X
C - - - - - 0x018718 06:A708: BC 86 03  LDY ram_0386,X
C - - - - - 0x01871B 06:A70B: C0 18     CPY #$18
C - - - - - 0x01871D 06:A70D: 90 33     BCC bra_A742
C - - - - - 0x01871F 06:A70F: C9 D7     CMP #$D7
C - - - - - 0x018721 06:A711: 90 05     BCC bra_A718
C - - - - - 0x018723 06:A713: A0 FF     LDY #$FF
C - - - - - 0x018725 06:A715: 4C 47 A6  JMP loc_A647

bra_A718:
C - - - - - 0x018728 06:A718: A9 09     LDA #$09
C - - - - - 0x01872A 06:A71A: 20 DB D8  JSR sub_D8DB_enemyB_collision_by_shift_posY
C - - - - - 0x01872D 06:A71D: F0 23     BEQ bra_A742
C - - - - - 0x01872F 06:A71F: 20 A8 D8  JSR sub_D8A8_correction2_EnemyBPosY
C - - - - - 0x018732 06:A722: A0 10     LDY #$10
C - - - - - 0x018734 06:A724: BD 86 03  LDA ram_0386,X
bra_A727:
C - - - - - 0x018737 06:A727: D9 A1 A5  CMP tbl_A5A1,Y
C - - - - - 0x01873A 06:A72A: B0 04     BCS bra_A730
C - - - - - 0x01873C 06:A72C: 88        DEY
C - - - - - 0x01873D 06:A72D: 88        DEY
C - - - - - 0x01873E 06:A72E: D0 F7     BNE bra_A727
bra_A730:
C - - - - - 0x018740 06:A730: B9 A2 A5  LDA tbl_A5A2,Y
C - - - - - 0x018743 06:A733: 9D 86 03  STA ram_0386,X
C - - - - - 0x018746 06:A736: C9 18     CMP #$18
C - - - - - 0x018748 06:A738: D0 08     BNE bra_A742
C - - - - - 0x01874A 06:A73A: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x01874D 06:A73D: 29 E1     AND #$E1
C - - - - - 0x01874F 06:A73F: 9D 5C 03  STA vEnemyBStatus,X
bra_A742:
C - - - - - 0x018752 06:A742: FE 86 03  INC ram_0386,X
C - - - - - 0x018755 06:A745: A9 2F     LDA #$2F
C - - - - - 0x018757 06:A747: DD 86 03  CMP ram_0386,X
C - - - - - 0x01875A 06:A74A: B0 03     BCS bra_A74F
C - - - - - 0x01875C 06:A74C: 9D 86 03  STA ram_0386,X
bra_A74F:
C - - - - - 0x01875F 06:A74F: 4C 47 A6  JMP loc_A647

loc_A752:
C D 1 - - - 0x018762 06:A752: DE 86 03  DEC ram_0386,X
C - - - - - 0x018765 06:A755: D0 03     BNE bra_A75A
C - - - - - 0x018767 06:A757: 4C 73 D8  JMP loc_D873_free_enemyB

bra_A75A:
C - - - - - 0x01876A 06:A75A: A5 46     LDA ram_0046
C - - - - - 0x01876C 06:A75C: C9 19     CMP #$19
C - - - - - 0x01876E 06:A75E: F0 03     BEQ bra_A763
C - - - - - 0x018770 06:A760: 4C 7D D9  JMP loc_D97D_add_flash_sprite_magic

bra_A763:
C - - - - - 0x018773 06:A763: BD 86 03  LDA ram_0386,X
C - - - - - 0x018776 06:A766: 4C 9F D9  JMP loc_D99F_add_flash_sprite

tbl_A769_velocity:
- D 1 - - - 0x018779 06:A769: 03        .byte $03   ; 
- D 1 - - - 0x01877A 06:A76A: 04        .byte $04   ; 
- D 1 - - - 0x01877B 06:A76B: 05        .byte $05   ; 
- D 1 - - - 0x01877C 06:A76C: 06        .byte $06   ; 

; 1st byte - the offset by posY
; 2nd byte - the offset by posXLow
; 3rd byte - the offset by posXHigh
tbl_A76D_projectile_params_:
- D 1 - - - 0x01877D 06:A76D: E8        .byte $E8, $0E, $00   ; right
- D 1 - - - 0x018780 06:A770: E8        .byte $E8, $F2, $FF   ; left
- D 1 - - - 0x018783 06:A773: F1        .byte $F1, $0D, $00   ; right
- D 1 - - - 0x018786 06:A776: F1        .byte $F1, $F3, $FF   ; left
- D 1 - - - 0x018789 06:A779: DE        .byte $DE, $FC, $FF   ; right
- D 1 - - - 0x01878C 06:A77C: DE        .byte $DE, $04, $00   ; left

tbl_A77F_shoot_time:
- D 1 - - - 0x01878F 06:A77F: 00        .byte $00   ; 
- D 1 - - - 0x018790 06:A780: 54        .byte $54   ;
- D 1 - - - 0x018791 06:A781: A8        .byte $A8   ; 

loc_A782_enemy:
C D 1 - - - 0x018792 06:A782: 20 88 A7  JSR sub_A788_main          ;
C - - - - - 0x018795 06:A785: 4C 73 A9  JMP loc_A973_projectile    ;

sub_A788_main:
C - - - - - 0x018798 06:A788: A2 01     LDX #$01                           ;
C - - - - - 0x01879A 06:A78A: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyA number)
bra_A78C_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x01879C 06:A78C: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x01879E 06:A78E: 20 F7 A7  JSR sub_A7F7_status_behavior       ;
C - - - - - 0x0187A1 06:A791: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x0187A4 06:A794: C9 E0     CMP #$E0                           ;
C - - - - - 0x0187A6 06:A796: B0 39     BCS bra_A7D1_next                  ; If vEnemyAStatus >= 0xE0
C - - - - - 0x0187A8 06:A798: C9 C0     CMP #$C0                           ;
C - - - - - 0x0187AA 06:A79A: 90 35     BCC bra_A7D1_next                  ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x0187AC 06:A79C: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x0187AF 06:A79F: 85 AD     STA vEnemyHitBoxY                  ; <~ posY
C - - - - - 0x0187B1 06:A7A1: BD 32 03  LDA vEnemyAScreenPosX,X            ;
C - - - - - 0x0187B4 06:A7A4: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x0187B6 06:A7A6: A9 14     LDA #$14                           ;
C - - - - - 0x0187B8 06:A7A8: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x0187BA 06:A7AA: A9 06     LDA #$06                           ;
C - - - - - 0x0187BC 06:A7AC: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x0187BE 06:A7AE: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x0187C1 06:A7B1: B0 0B     BCS @bra_A7BE_bomb_hit             ; If the bomb is exploding
C - - - - - 0x0187C3 06:A7B3: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x0187C5 06:A7B5: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x0187C7 06:A7B7: F0 0B     BEQ bra_A7C4_check_bullets         ; If the character isn't Goemon
C - - - - - 0x0187C9 06:A7B9: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x0187CC 06:A7BC: 90 10     BCC bra_A7CE_no_intersect          ; If the intersect doesn't exist
@bra_A7BE_bomb_hit:
C - - - - - 0x0187CE 06:A7BE: 20 E0 A7  JSR sub_A7E0_hit                   ;
C - - - - - 0x0187D1 06:A7C1: 4C D1 A7  JMP loc_A7D1_next                  ;

bra_A7C4_check_bullets:
C - - - - - 0x0187D4 06:A7C4: A6 7A     LDX vBulletCount                   ; set loop counter
@bra_A7C6_loop:                                                            ; loop by x
C - - - - - 0x0187D6 06:A7C6: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet ;
C - - - - - 0x0187D9 06:A7C9: B0 0B     BCS bra_A7D6_bullet_hit            ; If the intersect is exist
C - - - - - 0x0187DB 06:A7CB: CA        DEX                                ; decrement loop counter
C - - - - - 0x0187DC 06:A7CC: 10 F8     BPL @bra_A7C6_loop                 ; If Register X >= 0x00
bra_A7CE_no_intersect:
C - - - - - 0x0187DE 06:A7CE: 20 62 D5  JSR sub_D562_has_character_damage  ;
bra_A7D1_next:
loc_A7D1_next:
C D 1 - - - 0x0187E1 06:A7D1: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x0187E3 06:A7D3: 10 B7     BPL bra_A78C_loop                  ; If vTempCounter1A >= 0
C - - - - - 0x0187E5 06:A7D5: 60        RTS                                ;

; In Register X - the bullet number
bra_A7D6_bullet_hit:
C - - - - - 0x0187E6 06:A7D6: A9 00     LDA #$00                           ;
C - - - - - 0x0187E8 06:A7D8: 95 8F     STA vBulletStatus,X                ; clear
C - - - - - 0x0187EA 06:A7DA: 20 E0 A7  JSR sub_A7E0_hit                   ;
C - - - - - 0x0187ED 06:A7DD: 4C D1 A7  JMP loc_A7D1_next                  ;

; In Register X - the bullet number
; In: $001A - the enemyA number
sub_A7E0_hit:
C - - - - - 0x0187F0 06:A7E0: A6 1A     LDX vTempCounter1A             ;
C - - - - - 0x0187F2 06:A7E2: BD 20 03  LDA vEnemyAStatus,X            ;
C - - - - - 0x0187F5 06:A7E5: 29 C1     AND #$C1                       ; clear substate
C - - - - - 0x0187F7 06:A7E7: 09 22     ORA #$22                       ; CONSTANT - the jump after damage + the dying
C - - - - - 0x0187F9 06:A7E9: 9D 20 03  STA vEnemyAStatus,X            ;
C - - - - - 0x0187FC 06:A7EC: A9 10     LDA #$10                       ; Initializes a jump counter
C - - - - - 0x0187FE 06:A7EE: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
C - - - - - 0x018801 06:A7F1: A9 00     LDA #$00                       ;
C - - - - - 0x018803 06:A7F3: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
bra_A7F6_RTS:
C - - - - - 0x018806 06:A7F6: 60        RTS                            ;

; In Register X - the enemyA number
sub_A7F7_status_behavior:
C - - - - - 0x018807 06:A7F7: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01880A 06:A7FA: 10 FA     BPL bra_A7F6_RTS                          ; If the status isn't used
C - - - - - 0x01880C 06:A7FC: 4A        LSR                                       ;
C - - - - - 0x01880D 06:A7FD: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x018810 06:A800: 62 A8     .addr loc_A863_jump_after_damage - 1  ; 0x02
- D - - - - 0x018812 06:A802: 0D A8     .addr loc_A80E_main - 1               ; 0x04
- D - - - - 0x018814 06:A804: 0D A8     .addr loc_A80E_main - 1               ; 0x08
- D - - - - 0x018816 06:A806: 0D A8     .addr loc_A80E_main - 1               ; 0x10
- D 1 - I - 0x018818 06:A808: D8 A8     .addr loc_A8D9_dying - 1              ; 0x20
- D 1 - I - 0x01881A 06:A80A: 0D A8     .addr loc_A80E_main - 1               ; 0x40
- D 1 - I - 0x01881C 06:A80C: 0D A8     .addr loc_A80E_main - 1               ; 0x80

; In Register X - the enemyA number
loc_A80E_main:
C - - - - - 0x01881E 06:A80E: 20 F2 A8  JSR sub_A8F2_update_projectile  ;
; In Register X - the enemyA number
; In: Register Y - sprite_magic2 (The offset by the address)
loc_A811_prepare_rendering:
C D 1 - - - 0x018821 06:A811: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x018824 06:A814: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x018826 06:A816: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x018829 06:A819: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x01882B 06:A81B: 20 7B D6  JSR sub_D67B_out_of_sight       ; bank FF
C - - - - - 0x01882E 06:A81E: 90 03     BCC bra_A823_skip               ; If the enemy is visible
C - - - - - 0x018830 06:A820: 4C 7F D7  JMP loc_D77F_free_enemyA        ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A823_skip:
C - - - - - 0x018833 06:A823: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x018836 06:A826: 90 03     BCC bra_A82B_skip               ; If the enemy is on the screen
C - - - - - 0x018838 06:A828: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A82B_skip:
C - - - - - 0x01883B 06:A82B: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x01883E 06:A82E: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x018840 06:A830: 90 03     BCC bra_A835_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x018842 06:A832: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_A835_add_sprite_magic_v2:
C - - - - - 0x018845 06:A835: 98        TYA                            ;
C - - - - - 0x018846 06:A836: 18        CLC                            ;
C - - - - - 0x018847 06:A837: 6D 02 03  ADC vEnemyASpriteMagic2        ; + Y ~> sprite_magic2
C - - - - - 0x01884A 06:A83A: 85 01     STA ram_0001                   ;
C - - - - - 0x01884C 06:A83C: AD 03 03  LDA vEnemyASpriteMagic3        ; ~> sprite_magic3
C - - - - - 0x01884F 06:A83F: 85 02     STA ram_0002                   ;
C - - - - - 0x018851 06:A841: 4C 33 CE  JMP loc_CE33_add_sprite_magic  ; bank FF

sub_A844_try_to_enemyA_movement_on_the_left:
C - - - - - 0x018854 06:A844: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions  ;
C - - - - - 0x018857 06:A847: A9 F8     LDA #$F8                                     ; prepare an increment by X (-8)
C - - - - - 0x018859 06:A849: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX      ;
C - - - - - 0x01885C 06:A84C: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01885E 06:A84E: F0 12     BEQ bra_A862_RTS                             ; If the enemy movement to the left is not allowed
C - - - - - 0x018860 06:A850: 4C FD D6  JMP loc_D6FD_dec_EnemyAPosXLow_unsafe        ;

sub_A853_try_to_enemyA_movement_on_the_right:
C - - - - - 0x018863 06:A853: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions  ;
C - - - - - 0x018866 06:A856: A9 08     LDA #$08                                     ; prepare an increment by X (+8)
C - - - - - 0x018868 06:A858: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX     ;
C - - - - - 0x01886B 06:A85B: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x01886D 06:A85D: F0 03     BEQ bra_A862_RTS                             ; If the enemy movement to the right is not allowed
C - - - - - 0x01886F 06:A85F: 4C 1C D7  JMP loc_D71C_inc_EnemyAPosXLow_unsafe        ;

bra_A862_RTS:
C - - - - - 0x018872 06:A862: 60        RTS                                          ;

; In Register X - the enemyA number
loc_A863_jump_after_damage:
C - - - - - 0x018873 06:A863: BD 2C 03  LDA vEnemyAPosY,X                                ;
C - - - - - 0x018876 06:A866: C9 DF     CMP #$DF                                         ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x018878 06:A868: B0 0F     BCS bra_A879_skip                                ; If PosY >= 0xDF
C - - - - - 0x01887A 06:A86A: BD 20 03  LDA vEnemyAStatus,X                              ;
C - - - - - 0x01887D 06:A86D: 6A        ROR                                              ;
C - - - - - 0x01887E 06:A86E: B0 06     BCS bra_A876_left                                ; If the enemy is looking to the left
C - - - - - 0x018880 06:A870: 20 44 A8  JSR sub_A844_try_to_enemyA_movement_on_the_left  ;
C - - - - - 0x018883 06:A873: 4C 79 A8  JMP loc_A879_continue                            ;

; In Register X - the enemyA number
bra_A876_left:
C - - - - - 0x018886 06:A876: 20 53 A8  JSR sub_A853_try_to_enemyA_movement_on_the_right ;
bra_A879_skip:
loc_A879_continue:
C D 1 - - - 0x018889 06:A879: BC 4A 03  LDY vEnemyAJumpCounter,X                         ;
C - - - - - 0x01888C 06:A87C: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y                  ; Y = [0x00-0x2F]
C - - - - - 0x01888F 06:A87F: 18        CLC                                              ;
C - - - - - 0x018890 06:A880: 7D 2C 03  ADC vEnemyAPosY,X                                ;
C - - - - - 0x018893 06:A883: C9 DF     CMP #$DF                                         ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x018895 06:A885: 90 09     BCC @bra_A890_skip                               ; If Register A < 0xDF
C - - - - - 0x018897 06:A887: A0 DF     LDY #$DF                                         ; 0xDF -> EnemyPosY
C - - - - - 0x018899 06:A889: C9 F8     CMP #$F8                                         ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x01889B 06:A88B: 90 02     BCC @bra_A88F_skip                               ; If Register A < 0xF8
c - - - - - 0x01889D 06:A88D: A0 00     LDY #$00                                         ; 0x00 -> EnemyPosY
@bra_A88F_skip:
C - - - - - 0x01889F 06:A88F: 98        TYA                                              ; A <~ 0x00 or 0xDF
@bra_A890_skip:
C - - - - - 0x0188A0 06:A890: 9D 2C 03  STA vEnemyAPosY,X                                ; Resolves a new Y-position of the character after jumping
C - - - - - 0x0188A3 06:A893: BC 4A 03  LDY vEnemyAJumpCounter,X                         ;
C - - - - - 0x0188A6 06:A896: C0 18     CPY #$18                                         ; CONSTANT - a maximum amplitude
C - - - - - 0x0188A8 06:A898: 90 28     BCC bra_A8C2_inc                                 ; If vEnemyAJumpCounter < 0x18
C - - - - - 0x0188AA 06:A89A: C9 DF     CMP #$DF                                         ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x0188AC 06:A89C: 90 05     BCC @bra_A8A3_skip                               ; If EnemyPosY < 0xDF
C - - - - - 0x0188AE 06:A89E: A0 FF     LDY #$FF                                         ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x0188B0 06:A8A0: 4C 11 A8  JMP loc_A811_prepare_rendering                   ;
@bra_A8A3_skip:
C - - - - - 0x0188B3 06:A8A3: 85 00     STA ram_0000                                     ;
C - - - - - 0x0188B5 06:A8A5: E6 00     INC ram_0000                                     ; prepare an input parameter
C - - - - - 0x0188B7 06:A8A7: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y         ;
C - - - - - 0x0188BA 06:A8AA: F0 16     BEQ bra_A8C2_inc                                 ; If the collisions by Y-position don't exist
C - - - - - 0x0188BC 06:A8AC: C9 02     CMP #$02                                         ; CONSTANT - a weak collision
C - - - - - 0x0188BE 06:A8AE: F0 07     BEQ @bra_A8B7_weak                               ; If the collision is weak
C - - - - - 0x0188C0 06:A8B0: 20 47 D3  JSR sub_D347_check_landing_enemyA                ;
C - - - - - 0x0188C3 06:A8B3: D0 07     BNE @bra_A8BC_landing                            ; If the landing is allow
C - - - - - 0x0188C5 06:A8B5: F0 0B     BEQ bra_A8C2_inc                                 ; Always true

@bra_A8B7_weak:
C - - - - - 0x0188C7 06:A8B7: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x0188CA 06:A8BA: F0 06     BEQ bra_A8C2_inc                             ; If the landing is disallow
@bra_A8BC_landing:
C - - - - - 0x0188CC 06:A8BC: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x0188CF 06:A8BF: 4C D4 A8  JMP loc_A8D4_start_dying                     ;

bra_A8C2_inc:
C - - - - - 0x0188D2 06:A8C2: FE 4A 03  INC vEnemyAJumpCounter,X               ;
C - - - - - 0x0188D5 06:A8C5: A9 2F     LDA #$2F                               ; CONSTANT - a maximum jump value
C - - - - - 0x0188D7 06:A8C7: DD 4A 03  CMP vEnemyAJumpCounter,X               ;
C - - - - - 0x0188DA 06:A8CA: B0 03     BCS @bra_A8CF_skip                     ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x0188DC 06:A8CC: 9D 4A 03  STA vEnemyAJumpCounter,X               ; <~ 0x2F (a maximum jump value)
@bra_A8CF_skip:
C - - - - - 0x0188DF 06:A8CF: A0 08     LDY #$08                               ; an input parameter - sprite_magic2 (a jump with damage frame)
C - - - - - 0x0188E1 06:A8D1: 4C 11 A8  JMP loc_A811_prepare_rendering         ;

; In Register X - the enemyA number
loc_A8D4_start_dying:
C D 1 - - - 0x0188E4 06:A8D4: A9 30     LDA #$30                       ; initializes a jump counter
C - - - - - 0x0188E6 06:A8D6: 9D 4A 03  STA vEnemyAJumpCounter,X       ;
; In Register X - the enemyA number
loc_A8D9_dying:
C - - - - - 0x0188E9 06:A8D9: DE 4A 03  DEC vEnemyAJumpCounter,X       ; updates the counter value
C - - - - - 0x0188EC 06:A8DC: D0 03     BNE bra_A8E1_death_rendering   ; If EnemyAJumpCounter != 0x00
C - - - - - 0x0188EE 06:A8DE: 4C 7F D7  JMP loc_D77F_free_enemyA       ;

; In Register X - the enemyA number
bra_A8E1_death_rendering:
C - - - - - 0x0188F1 06:A8E1: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x0188F4 06:A8E4: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x0188F7 06:A8E7: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the EnemyAJumpCounter)
C - - - - - 0x0188F8 06:A8E8: B9 EF A8  LDA tbl_A8EF_frames_,Y                ;
C - - - - - 0x0188FB 06:A8EB: A8        TAY                                   ;
C - - - - - 0x0188FC 06:A8EC: 4C 11 A8  JMP loc_A811_prepare_rendering        ;

tbl_A8EF_frames_:
- D 1 - - - 0x0188FF 06:A8EF: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x018900 06:A8F0: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x018901 06:A8F1: 10        .byte $10   ; damage frame

; In Register X - the enemyA number
; Out: Register Y - sprite_magic2 (The offset by the address)
sub_A8F2_update_projectile:
C - - - - - 0x018902 06:A8F2: A0 02     LDY #$02                      ; set loop counter
C - - - - - 0x018904 06:A8F4: BD 4A 03  LDA vEnemyAJumpCounter,X      ;
bra_A8F7_loop:                                                        ; loop by y (3 times)
C - - - - - 0x018907 06:A8F7: D9 7F A7  CMP tbl_A77F_shoot_time,Y      ;
C - - - - - 0x01890A 06:A8FA: D0 10     BNE bra_A90C_next             ; If JumpCounter != a shoot time
C - - - - - 0x01890C 06:A8FC: A9 17     LDA #$17                      ; a shoot sound (for bazooka man)
C - - - - - 0x01890E 06:A8FE: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
C - - - - - 0x018911 06:A901: 20 28 A9  JSR sub_A928_add_projectile   ;
C - - - - - 0x018914 06:A904: A9 0C     LDA #$0C                      ; CONSTANT - a start velocity of the projectile
C - - - - - 0x018916 06:A906: 9D 26 03  STA vEnemyAVelocity,X         ;
C - - - - - 0x018919 06:A909: 4C 0F A9  JMP loc_A90F_update_params_   ;

; In Register X - the enemyA number
; Out: Register Y - sprite_magic2 (The offset by the address)
bra_A90C_next:
C - - - - - 0x01891C 06:A90C: 88        DEY                           ; decrement loop counter
C - - - - - 0x01891D 06:A90D: 10 E8     BPL bra_A8F7_loop             ; If Register Y >= 0x00
loc_A90F_update_params_:
C D 1 - - - 0x01891F 06:A90F: A0 00     LDY #$00                      ; prepares the sprite_magic2 #1 (The offset by the address)
C - - - - - 0x018921 06:A911: BD 26 03  LDA vEnemyAVelocity,X         ;
C - - - - - 0x018924 06:A914: F0 06     BEQ @bra_A91C_skip            ; If projectile velocity == 0x00
C - - - - - 0x018926 06:A916: C9 08     CMP #$08                      ;
C - - - - - 0x018928 06:A918: B0 02     BCS @bra_A91C_skip            ; If projectile velocity >= 0x08
C - - - - - 0x01892A 06:A91A: A0 04     LDY #$04                      ; prepares the sprite_magic2 #1 (The offset by the address), weapon recoil
@bra_A91C_skip:
C - - - - - 0x01892C 06:A91C: FE 4A 03  INC vEnemyAJumpCounter,X      ;
C - - - - - 0x01892F 06:A91F: BD 26 03  LDA vEnemyAVelocity,X         ;
C - - - - - 0x018932 06:A922: F0 03     BEQ bra_A927_RTS              ; If projectile velocity == 0x00
C - - - - - 0x018934 06:A924: DE 26 03  DEC vEnemyAVelocity,X         ;
bra_A927_RTS:
C - - - - - 0x018937 06:A927: 60        RTS                           ;

; In: $001A - the projectile number
sub_A928_add_projectile:
C - - - - - 0x018938 06:A928: A0 00     LDY #$00                                 ; prepare the projectile params number
; In: Register Y - the projectile params number
; In: $001A - the projectile number
sub_A92A_add_projectile_ex:
C - - - - - 0x01893A 06:A92A: 20 37 A9  JSR sub_A937_prepare_projectile_params_  ;
C - - - - - 0x01893D 06:A92D: A4 1A     LDY vTempCounter1A                       ;
C - - - - - 0x01893F 06:A92F: A9 01     LDA #$01                                 ;
C - - - - - 0x018941 06:A931: 99 46 03  STA vEnemyAProjectileFrame_Counter,Y     ; assign a counter
C - - - - - 0x018944 06:A934: 4C 50 A9  JMP loc_A950_set_projectile              ;

; In: Register Y - the projectile params number
; Out: $0002 - the offset by posY
; Out: $0003 - the offset by posXLow
; Out: $0004 - the offset by posXHigh
sub_A937_prepare_projectile_params_:
C - - - - - 0x018947 06:A937: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x01894A 06:A93A: 6A        ROR                                    ;
C - - - - - 0x01894B 06:A93B: 90 03     BCC @bra_A940_skip                     ; If the enemy is looking to the right
C - - - - - 0x01894D 06:A93D: C8        INY                                    ;
C - - - - - 0x01894E 06:A93E: C8        INY                                    ;
C - - - - - 0x01894F 06:A93F: C8        INY                                    ; next set
@bra_A940_skip:
C - - - - - 0x018950 06:A940: B9 6D A7  LDA tbl_A76D_projectile_params_,Y      ;
C - - - - - 0x018953 06:A943: 85 02     STA ram_0002                           ;
C - - - - - 0x018955 06:A945: B9 6E A7  LDA tbl_A76D_projectile_params_ + 1,Y  ;
C - - - - - 0x018958 06:A948: 85 03     STA ram_0003                           ;
C - - - - - 0x01895A 06:A94A: B9 6F A7  LDA tbl_A76D_projectile_params_ + 2,Y  ;
C - - - - - 0x01895D 06:A94D: 85 04     STA ram_0004                           ;
C - - - - - 0x01895F 06:A94F: 60        RTS                                    ;

; In: Register Y - the projectile number
; In: $0002 - the offset by posY
; In: $0003 - the offset by posXLow
; In: $0004 - the offset by posXHigh
sub_A950_set_projectile:
loc_A950_set_projectile:
C D 1 - - - 0x018960 06:A950: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x018963 06:A953: 29 C1     AND #$C1                           ;
C - - - - - 0x018965 06:A955: 99 22 03  STA vEnemyAProjectileStatus,Y      ; assign a status (X,Y,N flags, see vEnemyAStatus)
C - - - - - 0x018968 06:A958: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x01896B 06:A95B: 18        CLC                                ;
C - - - - - 0x01896C 06:A95C: 65 02     ADC ram_0002                       ;
C - - - - - 0x01896E 06:A95E: 99 2E 03  STA vEnemyAProjectilePosY,Y        ; <~ PosY + $0002
C - - - - - 0x018971 06:A961: BD 38 03  LDA vEnemyAPosXLow,X               ;
C - - - - - 0x018974 06:A964: 18        CLC                                ;
C - - - - - 0x018975 06:A965: 65 03     ADC ram_0003                       ;
C - - - - - 0x018977 06:A967: 99 3A 03  STA vEnemyAProjectilePosXLow,Y     ; <~ PosXLow + $0003
C - - - - - 0x01897A 06:A96A: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x01897D 06:A96D: 65 04     ADC ram_0004                       ;
C - - - - - 0x01897F 06:A96F: 99 40 03  STA vEnemyAProjectilePosXHigh,Y    ; <~ PosXHigh + $0004 + carry flag
C - - - - - 0x018982 06:A972: 60        RTS                                ;

loc_A973_projectile:
C D 1 - - - 0x018983 06:A973: A2 05     LDX #$05                           ; the number of the projectiles #1
C - - - - - 0x018985 06:A975: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x018988 06:A978: C9 1F     CMP #$1F                           ; CONSTANT - Fly man
C - - - - - 0x01898A 06:A97A: F0 02     BEQ @bra_A97E_skip                 ; If vEnemyA == 0x1F
C - - - - - 0x01898C 06:A97C: A2 03     LDX #$03                           ; the number of the projectiles #2
@bra_A97E_skip:
C - - - - - 0x01898E 06:A97E: 86 1A     STX vTempCounter1A                 ; set loop counter
bra_A980_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x018990 06:A980: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x018992 06:A982: 20 CB A9  JSR sub_A9CB_status_behavior       ;
C - - - - - 0x018995 06:A985: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x018998 06:A988: C9 E0     CMP #$E0                           ;
C - - - - - 0x01899A 06:A98A: B0 2E     BCS bra_A9BA_next                  ; If vEnemyAStatus >= 0xE0
C - - - - - 0x01899C 06:A98C: C9 C0     CMP #$C0                           ;
C - - - - - 0x01899E 06:A98E: 90 2A     BCC bra_A9BA_next                  ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x0189A0 06:A990: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x0189A3 06:A993: 85 AD     STA vEnemyHitBoxY                  ; <~ posY
C - - - - - 0x0189A5 06:A995: BD 32 03  LDA vEnemyAScreenPosX,X            ;
C - - - - - 0x0189A8 06:A998: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x0189AA 06:A99A: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x0189AD 06:A99D: C9 37     CMP #$37                           ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x0189AF 06:A99F: F0 06     BEQ @bra_A9A7_skip                 ; If vEnemyA == 0x37
C - - - - - 0x0189B1 06:A9A1: A9 01     LDA #$01                           ; <~ hitBoxH (#1)
C - - - - - 0x0189B3 06:A9A3: A0 02     LDY #$02                           ; <~ hitBoxW (#1)
C - - - - - 0x0189B5 06:A9A5: D0 04     BNE @bra_A9AB_skip                 ; Always true

@bra_A9A7_skip:
C - - - - - 0x0189B7 06:A9A7: A9 08     LDA #$08                           ; <~ hitBoxH (#2)
C - - - - - 0x0189B9 06:A9A9: A0 06     LDY #$06                           ; <~ hitBoxW (#2)
@bra_A9AB_skip:
C - - - - - 0x0189BB 06:A9AB: 85 AF     STA vEnemyHitBoxH                  ;
C - - - - - 0x0189BD 06:A9AD: 84 B0     STY vEnemyHitBoxW                  ;
C - - - - - 0x0189BF 06:A9AF: 20 62 D5  JSR sub_D562_has_character_damage  ;
C - - - - - 0x0189C2 06:A9B2: 90 06     BCC bra_A9BA_next                  ; if the character didn't get damage
C - - - - - 0x0189C4 06:A9B4: 20 57 B8  JSR sub_B857_try_to_arrest         ;
C - - - - - 0x0189C7 06:A9B7: 20 C3 A9  JSR sub_A9C3_free_projectile       ;
bra_A9BA_next:
C - - - - - 0x0189CA 06:A9BA: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x0189CC 06:A9BC: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x0189CE 06:A9BE: E0 01     CPX #$01                           ;
C - - - - - 0x0189D0 06:A9C0: D0 BE     BNE bra_A980_loop                  ; If Register X != 0x01
bra_A9C2_RTS:
C - - - - - 0x0189D2 06:A9C2: 60        RTS                                ;

sub_A9C3_free_projectile:
loc_A9C3_free_projectile:
C D 1 - - - 0x0189D3 06:A9C3: A6 1A     LDX vTempCounter1A                     ; puts the projectile number
C - - - - - 0x0189D5 06:A9C5: A9 00     LDA #$00                               ;
C - - - - - 0x0189D7 06:A9C7: 9D 20 03  STA vEnemyAStatus,X                    ; clear a status
C - - - - - 0x0189DA 06:A9CA: 60        RTS                                    ;

; In: Register X - the projectile number
sub_A9CB_status_behavior:
C - - - - - 0x0189DB 06:A9CB: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x0189DE 06:A9CE: 10 F2     BPL bra_A9C2_RTS                          ; If the status isn't used
C - - - - - 0x0189E0 06:A9D0: 4A        LSR                                       ;
C - - - - - 0x0189E1 06:A9D1: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x0189E4 06:A9D4: 0C AB     .addr loc_AB0D_moving_along_parabola - 1 ; 0x02
- D 1 - I - 0x0189E6 06:A9D6: 44 AA     .addr loc_AA45_main - 1                  ; 0x04
- D 1 - I - 0x0189E8 06:A9D8: AB AB     .addr loc_ABAC - 1                       ; 0x08
- D - - - - 0x0189EA 06:A9DA: 44 AA     .addr loc_AA45_main - 1                  ; 0x10
- D - - - - 0x0189EC 06:A9DC: 88 AA     .addr loc_AA89_prepare_rendering - 1     ; 0x20
- D 1 - I - 0x0189EE 06:A9DE: 44 AA     .addr loc_AA45_main - 1                  ; 0x40
- D 1 - I - 0x0189F0 06:A9E0: 44 AA     .addr loc_AA45_main - 1                  ; 0x80

bra_A9E2_right:
C - - - - - 0x0189F2 06:A9E2: 20 FD A9  JSR sub_A9FD_move_enemyA_right     ;
C - - - - - 0x0189F5 06:A9E5: 4C 2B AA  JMP loc_AA2B_continue              ;

sub_A9E8_move_enemyA_left:
C - - - - - 0x0189F8 06:A9E8: 20 12 AA  JSR sub_AA12_get_enemyA_velocity   ;
C - - - - - 0x0189FB 06:A9EB: BD 38 03  LDA vEnemyAPosXLow,X               ;
C - - - - - 0x0189FE 06:A9EE: 38        SEC                                ;
C - - - - - 0x0189FF 06:A9EF: E5 00     SBC ram_0000                       ;
C - - - - - 0x018A01 06:A9F1: 9D 38 03  STA vEnemyAPosXLow,X               ; <~ LowPosX - $0000
C - - - - - 0x018A04 06:A9F4: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x018A07 06:A9F7: E9 00     SBC #$00                           ;
C - - - - - 0x018A09 06:A9F9: 9D 3E 03  STA vEnemyAPosXHigh,X              ; <~ HighPosX - 0x01 (+1 with overflow)
C - - - - - 0x018A0C 06:A9FC: 60        RTS                                ;

sub_A9FD_move_enemyA_right:
C - - - - - 0x018A0D 06:A9FD: 20 12 AA  JSR sub_AA12_get_enemyA_velocity   ;
C - - - - - 0x018A10 06:AA00: BD 38 03  LDA vEnemyAPosXLow,X               ;
C - - - - - 0x018A13 06:AA03: 18        CLC                                ;
C - - - - - 0x018A14 06:AA04: 65 00     ADC ram_0000                       ;
C - - - - - 0x018A16 06:AA06: 9D 38 03  STA vEnemyAPosXLow,X               ; <~ LowPosX + $0000
C - - - - - 0x018A19 06:AA09: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x018A1C 06:AA0C: 69 00     ADC #$00                           ;
C - - - - - 0x018A1E 06:AA0E: 9D 3E 03  STA vEnemyAPosXHigh,X              ; <~ HighPosX (+1 with overflow)
C - - - - - 0x018A21 06:AA11: 60        RTS                                ;

; Out: $0000 - the velocity (for enemyA + projection)
sub_AA12_get_enemyA_velocity:
C - - - - - 0x018A22 06:AA12: BD 26 03  LDA vEnemyAVelocity,X         ;
C - - - - - 0x018A25 06:AA15: 4A        LSR                           ; velocity / 2
C - - - - - 0x018A26 06:AA16: 85 00     STA ram_0000                  ;
C - - - - - 0x018A28 06:AA18: 90 07     BCC bra_AA21_RTS              ; If enemyAVelocity is even
C - - - - - 0x018A2A 06:AA1A: A5 2C     LDA vLowCounter               ;
C - - - - - 0x018A2C 06:AA1C: 6A        ROR                           ;
C - - - - - 0x018A2D 06:AA1D: 90 02     BCC bra_AA21_RTS              ; Branch if vLowCounter multiple of 2 (50% chance)
C - - - - - 0x018A2F 06:AA1F: E6 00     INC ram_0000                  ;
bra_AA21_RTS:
C - - - - - 0x018A31 06:AA21: 60        RTS                           ;

bra_AA22_skip:
C - - - - - 0x018A32 06:AA22: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x018A35 06:AA25: 6A        ROR                                 ;
C - - - - - 0x018A36 06:AA26: 90 BA     BCC bra_A9E2_right                  ; If the projective is looking to the right
C - - - - - 0x018A38 06:AA28: 20 E8 A9  JSR sub_A9E8_move_enemyA_left       ;
loc_AA2B_continue:
C D 1 - - - 0x018A3B 06:AA2B: A0 10     LDY #$10                            ; prepares the sprite_magic2 #1 (The offset by the address)
C - - - - - 0x018A3D 06:AA2D: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x018A40 06:AA30: C9 19     CMP #$19                            ; CONSTANT - Karate-girl
C - - - - - 0x018A42 06:AA32: F0 55     BEQ bra_AA89_prepare_rendering      ; If vEnemyA == 0x19
C - - - - - 0x018A44 06:AA34: A0 1C     LDY #$1C                            ; prepares the sprite_magic2 #2 (The offset by the address)
C - - - - - 0x018A46 06:AA36: C9 35     CMP #$35                            ; CONSTANT - Egyptian with bow
C - - - - - 0x018A48 06:AA38: F0 4F     BEQ bra_AA89_prepare_rendering      ; If vEnemyA == 0x35
C - - - - - 0x018A4A 06:AA3A: A0 24     LDY #$24                            ; prepares the sprite_magic2 #3 (The offset by the address)
C - - - - - 0x018A4C 06:AA3C: C9 38     CMP #$38                            ; CONSTANT - Ninja upside down
C - - - - - 0x018A4E 06:AA3E: F0 49     BEQ bra_AA89_prepare_rendering      ; If vEnemyA == 0x38
C - - - - - 0x018A50 06:AA40: A0 00     LDY #$00                            ; prepares the sprite_magic2 #4 (The offset by the address)
C - - - - - 0x018A52 06:AA42: 4C 89 AA  JMP loc_AA89_prepare_rendering      ;

; In: Register X - the projectile number
loc_AA45_main:
C - - - - - 0x018A55 06:AA45: BD 44 03  LDA vEnemyAFrame_Counter,X        ;
C - - - - - 0x018A58 06:AA48: F0 29     BEQ bra_AA73_zero                 ; If frameCounter == 0x00
C - - - - - 0x018A5A 06:AA4A: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x018A5D 06:AA4D: 29 04     AND #$04                          ; CONSTANT - using vJumpCounter
C - - - - - 0x018A5F 06:AA4F: F0 08     BEQ bra_AA59_skip                 ; If vEnemyAStatus doesn't K flag (see vEnemyAStatus)
C - - - - - 0x018A61 06:AA51: DE 4A 03  DEC vEnemyAJumpCounter,X          ;
C - - - - - 0x018A64 06:AA54: D0 03     BNE bra_AA59_skip                 ; If vJumpCounter != 0x00
C - - - - - 0x018A66 06:AA56: 4C C3 A9  JMP loc_A9C3_free_projectile      ;

; In: Register X - the projectile number
bra_AA59_skip:
C - - - - - 0x018A69 06:AA59: AD 00 03  LDA vEnemyA                              ;
C - - - - - 0x018A6C 06:AA5C: C9 01     CMP #$01                                 ; CONSTANT - Cat with the gun
C - - - - - 0x018A6E 06:AA5E: F0 C2     BEQ bra_AA22_skip                        ; If vEnemyA == 0x01
C - - - - - 0x018A70 06:AA60: C9 19     CMP #$19                                 ; CONSTANT - Karate-girl
C - - - - - 0x018A72 06:AA62: F0 BE     BEQ bra_AA22_skip                        ; If vEnemyA == 0x19
C - - - - - 0x018A74 06:AA64: C9 35     CMP #$35                                 ; CONSTANT - Egyptian with bow
C - - - - - 0x018A76 06:AA66: F0 BA     BEQ bra_AA22_skip                        ; If vEnemyA == 0x35
C - - - - - 0x018A78 06:AA68: C9 1F     CMP #$1F                                 ; CONSTANT - Fly man
C - - - - - 0x018A7A 06:AA6A: F0 B6     BEQ bra_AA22_skip                        ; If vEnemyA == 0x1F
C - - - - - 0x018A7C 06:AA6C: C9 38     CMP #$38                                 ; CONSTANT - Ninja upside down
C - - - - - 0x018A7E 06:AA6E: F0 B2     BEQ bra_AA22_skip                        ; If vEnemyA == 0x38
C - - - - - 0x018A80 06:AA70: 4C F2 AA  JMP loc_AAF2_try_to_move_along_parabola  ;

; In: Register X - the projectile number
bra_AA73_zero:
C - - - - - 0x018A83 06:AA73: DE 44 03  DEC vEnemyAFrame_Counter,X      ; 0x00 -> 0xFF
C - - - - - 0x018A86 06:AA76: A0 04     LDY #$04                        ; prepares the sprite_magic2 #1 (The offset by the address)
C - - - - - 0x018A88 06:AA78: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x018A8B 06:AA7B: C9 01     CMP #$01                        ; CONSTANT - Cat with the gun
C - - - - - 0x018A8D 06:AA7D: F0 0A     BEQ bra_AA89_prepare_rendering  ; If vEnemyA != 0x01
C - - - - - 0x018A8F 06:AA7F: C9 19     CMP #$19                        ; CONSTANT - Karate-girl
C - - - - - 0x018A91 06:AA81: F0 06     BEQ bra_AA89_prepare_rendering  ; If vEnemyA != 0x19
C - - - - - 0x018A93 06:AA83: C9 1F     CMP #$1F                        ; CONSTANT - Fly man
C - - - - - 0x018A95 06:AA85: F0 02     BEQ bra_AA89_prepare_rendering  ; If vEnemyA != 0x1F
C - - - - - 0x018A97 06:AA87: A0 14     LDY #$14                        ; prepares the sprite_magic2 #2 (The offset by the address)
; In: Register X - the projectile number
; In: Register Y - sprite_magic2 (The offset by the address)
loc_AA89_prepare_rendering:
bra_AA89_prepare_rendering:
C D 1 - - - 0x018A99 06:AA89: BD 38 03  LDA vEnemyAPosXLow,X            ;
C - - - - - 0x018A9C 06:AA8C: 85 00     STA ram_0000                    ; prepares the 1st parameter
C - - - - - 0x018A9E 06:AA8E: BD 3E 03  LDA vEnemyAPosXHigh,X           ;
C - - - - - 0x018AA1 06:AA91: 85 01     STA ram_0001                    ; prepares the 2nd parameter
C - - - - - 0x018AA3 06:AA93: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x018AA6 06:AA96: C9 37     CMP #$37                        ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x018AA8 06:AA98: D0 08     BNE bra_AAA2_skip               ; If vEnemyA != 0x37
C - - - - - 0x018AAA 06:AA9A: 20 7B D6  JSR sub_D67B_out_of_sight       ;
C - - - - - 0x018AAD 06:AA9D: 90 03     BCC bra_AAA2_skip               ; If the enemy is visible
C - - - - - 0x018AAF 06:AA9F: 4C C3 A9  JMP loc_A9C3_free_projectile    ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AAA2_skip:
C - - - - - 0x018AB2 06:AAA2: 20 AC D6  JSR sub_D6AC_out_of_screen      ;
C - - - - - 0x018AB5 06:AAA5: 90 03     BCC bra_AAAA_skip               ; If the enemy is on the screen
C - - - - - 0x018AB7 06:AAA7: 4C 41 D7  JMP loc_D741_enemyA_off_screen  ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AAAA_skip:
C - - - - - 0x018ABA 06:AAAA: 20 25 D7  JSR sub_D725_enemyA_on_screen   ;
C - - - - - 0x018ABD 06:AAAD: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x018AC0 06:AAB0: C9 37     CMP #$37                        ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x018AC2 06:AAB2: F0 34     BEQ bra_AAE8_boomerung          ; If vEnemyA == 0x37
C - - - - - 0x018AC4 06:AAB4: C9 07     CMP #$07                        ; CONSTANT - Zenigata
C - - - - - 0x018AC6 06:AAB6: D0 0A     BNE @bra_AAC2_skip              ; If vEnemyA != 0x07
C - - - - - 0x018AC8 06:AAB8: A0 20     LDY #$20                        ; prepares the sprite_magic2 (handcuffs, frame #1)
C - - - - - 0x018ACA 06:AABA: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x018ACC 06:AABC: 29 08     AND #$08                        ;
C - - - - - 0x018ACE 06:AABE: D0 02     BNE @bra_AAC2_skip              ; Branch every 8 times after 8
C - - - - - 0x018AD0 06:AAC0: A0 22     LDY #$22                        ; prepares the sprite_magic2 (handcuffs, frame #2)
@bra_AAC2_skip:
C - - - - - 0x018AD2 06:AAC2: 98        TYA                             ;
C - - - - - 0x018AD3 06:AAC3: 18        CLC                             ;
C - - - - - 0x018AD4 06:AAC4: 69 A8     ADC #$A8                        ;
C - - - - - 0x018AD6 06:AAC6: 85 01     STA ram_0001                    ; Y + 0xA8 ~> sprite_magic2
C - - - - - 0x018AD8 06:AAC8: A9 40     LDA #$40                        ; prepares the sprite_magic3 #1
C - - - - - 0x018ADA 06:AACA: C0 14     CPY #$14                        ;
C - - - - - 0x018ADC 06:AACC: 90 15     BCC bra_AAE3_add                ; If Register Y (The offset by the address) < 0x14
C - - - - - 0x018ADE 06:AACE: AC 00 03  LDY vEnemyA                     ;
C - - - - - 0x018AE1 06:AAD1: C0 07     CPY #$07                        ; CONSTANT - Zenigata
C - - - - - 0x018AE3 06:AAD3: F0 0E     BEQ bra_AAE3_add                ; If vEnemyA == 0x07
C - - - - - 0x018AE5 06:AAD5: C0 14     CPY #$14                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018AE7 06:AAD7: F0 0A     BEQ bra_AAE3_add                ; If vEnemyA == 0x14
C - - - - - 0x018AE9 06:AAD9: C0 35     CPY #$35                        ; CONSTANT - Egyptian with bow
C - - - - - 0x018AEB 06:AADB: F0 06     BEQ bra_AAE3_add                ; If vEnemyA == 0x35
C - - - - - 0x018AED 06:AADD: C0 38     CPY #$38                        ; CONSTANT - Ninja upside down
C - - - - - 0x018AEF 06:AADF: F0 02     BEQ bra_AAE3_add                ; If vEnemyA == 0x38
C - - - - - 0x018AF1 06:AAE1: A9 44     LDA #$44                        ; prepares the sprite_magic3 #2
bra_AAE3_add:
C - - - - - 0x018AF3 06:AAE3: 85 02     STA ram_0002                    ; ~> sprite_magic3
C - - - - - 0x018AF5 06:AAE5: 4C 33 CE  JMP loc_CE33_add_sprite_magic   ; bank FF

; In: Register Y - sprite_magic2 (The offset by the address)
bra_AAE8_boomerung:
C - - - - - 0x018AF8 06:AAE8: 98        TYA                             ;
C - - - - - 0x018AF9 06:AAE9: 18        CLC                             ;
C - - - - - 0x018AFA 06:AAEA: 69 AC     ADC #$AC                        ;
C - - - - - 0x018AFC 06:AAEC: 85 01     STA ram_0001                    ; Y + 0xAC ~> sprite_magic2
C - - - - - 0x018AFE 06:AAEE: A9 80     LDA #$80                        ; prepares the sprite_magic3 #3
C - - - - - 0x018B00 06:AAF0: D0 F1     BNE bra_AAE3_add                ; Always true

loc_AAF2_try_to_move_along_parabola:
C D 1 - - - 0x018B02 06:AAF2: A9 0C     LDA #$0C                        ;
C - - - - - 0x018B04 06:AAF4: 9D 4A 03  STA vEnemyAJumpCounter,X        ; Initializes a jump counter
C - - - - - 0x018B07 06:AAF7: 20 64 D0  JSR sub_D064_generate_rng       ;
C - - - - - 0x018B0A 06:AAFA: 29 03     AND #$03                        ;
C - - - - - 0x018B0C 06:AAFC: A8        TAY                             ; Y = {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x018B0D 06:AAFD: B9 69 A7  LDA tbl_A769_velocity,Y         ;
C - - - - - 0x018B10 06:AB00: 9D 26 03  STA vEnemyAVelocity,X           ;
C - - - - - 0x018B13 06:AB03: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x018B16 06:AB06: 29 C1     AND #$C1                        ; clear substate
C - - - - - 0x018B18 06:AB08: 09 02     ORA #$02                        ; CONSTANT - moving along a parabola
C - - - - - 0x018B1A 06:AB0A: 9D 20 03  STA vEnemyAStatus,X             ;
loc_AB0D_moving_along_parabola:
C - - - - - 0x018B1D 06:AB0D: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x018B20 06:AB10: C9 08     CMP #$08                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B22 06:AB12: F0 08     BEQ @bra_AB1C_bazooka           ; If vEnemyA == 0x08
C - - - - - 0x018B24 06:AB14: C9 14     CMP #$14                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B26 06:AB16: F0 04     BEQ @bra_AB1C_bazooka           ; If vEnemyA == 0x14
C - - - - - 0x018B28 06:AB18: C9 20     CMP #$20                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B2A 06:AB1A: D0 06     BNE @bra_AB22_non_bazooka       ; If vEnemyA != 0x20
@bra_AB1C_bazooka:
C - - - - - 0x018B2C 06:AB1C: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x018B2E 06:AB1E: 29 03     AND #$03                        ;
C - - - - - 0x018B30 06:AB20: F0 33     BEQ bra_AB55_skip               ; Branch if vLowCounter is multiple of 4 (vLowCounter % 4 == 0)
@bra_AB22_non_bazooka:
C - - - - - 0x018B32 06:AB22: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x018B35 06:AB25: 6A        ROR                             ;
C - - - - - 0x018B36 06:AB26: 90 06     BCC bra_AB2E_right              ; If the projectile is looking to the right
C - - - - - 0x018B38 06:AB28: 20 E8 A9  JSR sub_A9E8_move_enemyA_left   ;
C - - - - - 0x018B3B 06:AB2B: 4C 31 AB  JMP loc_AB31_continue           ;

bra_AB2E_right:
C - - - - - 0x018B3E 06:AB2E: 20 FD A9  JSR sub_A9FD_move_enemyA_right  ;
loc_AB31_continue:
C D 1 - - - 0x018B41 06:AB31: BC 4A 03  LDY vEnemyAJumpCounter,X        ;
C - - - - - 0x018B44 06:AB34: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y ; X = [0x00-0x2F]
C - - - - - 0x018B47 06:AB37: 18        CLC                             ;
C - - - - - 0x018B48 06:AB38: 7D 2C 03  ADC vEnemyAPosY,X               ;
C - - - - - 0x018B4B 06:AB3B: C9 F8     CMP #$F8                        ; CONSTANT - Limit for Y-position
C - - - - - 0x018B4D 06:AB3D: 90 02     BCC @bra_AB41_skip              ;
C - - - - - 0x018B4F 06:AB3F: A9 00     LDA #$00                        ; 0x00 -> vPosY
@bra_AB41_skip:
C - - - - - 0x018B51 06:AB41: 9D 2C 03  STA vEnemyAPosY,X               ; Resolves a new Y-position of the projective
C - - - - - 0x018B54 06:AB44: BD 4A 03  LDA vEnemyAJumpCounter,X        ;
C - - - - - 0x018B57 06:AB47: C9 18     CMP #$18                        ; CONSTANT - a maximum amplitude
C - - - - - 0x018B59 06:AB49: 90 0A     BCC bra_AB55_skip               ; If vJumpCounter < 0x18
C - - - - - 0x018B5B 06:AB4B: BD 2C 03  LDA vEnemyAPosY,X               ;
C - - - - - 0x018B5E 06:AB4E: C9 DF     CMP #$DF                        ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x018B60 06:AB50: 90 03     BCC bra_AB55_skip               ; If vPosY < 0xDF
C - - - - - 0x018B62 06:AB52: 4C C3 A9  JMP loc_A9C3_free_projectile    ;

bra_AB55_skip:
C - - - - - 0x018B65 06:AB55: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x018B68 06:AB58: C9 08     CMP #$08                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B6A 06:AB5A: F0 08     BEQ @bra_AB64_bazooka           ; If vEnemyA == 0x08
C - - - - - 0x018B6C 06:AB5C: C9 14     CMP #$14                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B6E 06:AB5E: F0 04     BEQ @bra_AB64_bazooka           ; If vEnemyA == 0x14
C - - - - - 0x018B70 06:AB60: C9 20     CMP #$20                        ; CONSTANT - Shooter with bazooka
C - - - - - 0x018B72 06:AB62: D0 06     BNE @bra_AB6A_non_bazooka       ; If vEnemyA != 0x20
@bra_AB64_bazooka:
C - - - - - 0x018B74 06:AB64: A5 2C     LDA vLowCounter                 ;
C - - - - - 0x018B76 06:AB66: 29 03     AND #$03                        ;
C - - - - - 0x018B78 06:AB68: F0 0D     BEQ @bra_AB77_skip              ; Branch if vLowCounter is multiple of 4 (vLowCounter % 4 == 0)
@bra_AB6A_non_bazooka:
C - - - - - 0x018B7A 06:AB6A: FE 4A 03  INC vEnemyAJumpCounter,X        ;
C - - - - - 0x018B7D 06:AB6D: A9 2F     LDA #$2F                        ; CONSTANT - a maximum jump value
C - - - - - 0x018B7F 06:AB6F: DD 4A 03  CMP vEnemyAJumpCounter,X        ;
C - - - - - 0x018B82 06:AB72: B0 03     BCS @bra_AB77_skip              ; If vEnemyAJumpCounter <= 0x2F, i.e. less than maximum
C - - - - - 0x018B84 06:AB74: 9D 4A 03  STA vEnemyAJumpCounter,X        ;
@bra_AB77_skip:
C - - - - - 0x018B87 06:AB77: A0 0C     LDY #$0C                        ; prepares the sprite_magic2 (The offset by the address), the moving frame by parabola
C - - - - - 0x018B89 06:AB79: 4C 89 AA  JMP loc_AA89_prepare_rendering  ;

- D 1 - I - 0x018B8C 06:AB7C: 04        .byte $04   ; 
- D 1 - I - 0x018B8D 06:AB7D: 04        .byte $04   ; 
- D 1 - I - 0x018B8E 06:AB7E: 05        .byte $05   ; 
- D 1 - I - 0x018B8F 06:AB7F: 08        .byte $08   ; 
- D 1 - I - 0x018B90 06:AB80: 09        .byte $09   ; 
- D 1 - I - 0x018B91 06:AB81: 0B        .byte $0B   ; 
- D 1 - I - 0x018B92 06:AB82: 0C        .byte $0C   ; 
- D 1 - I - 0x018B93 06:AB83: 0E        .byte $0E   ; 
- D 1 - I - 0x018B94 06:AB84: 08        .byte $08   ; 
- D 1 - I - 0x018B95 06:AB85: 0C        .byte $0C   ; 
- D 1 - I - 0x018B96 06:AB86: 0C        .byte $0C   ; 
- D 1 - I - 0x018B97 06:AB87: 04        .byte $04   ; 
- D 1 - I - 0x018B98 06:AB88: 04        .byte $04   ; 
- D 1 - I - 0x018B99 06:AB89: 04        .byte $04   ; 
- D 1 - I - 0x018B9A 06:AB8A: 08        .byte $08   ; 
- D 1 - I - 0x018B9B 06:AB8B: 10        .byte $10   ; 
- D 1 - I - 0x018B9C 06:AB8C: 03        .byte $03   ; 
- D 1 - I - 0x018B9D 06:AB8D: 03        .byte $03   ; 
- D 1 - I - 0x018B9E 06:AB8E: 04        .byte $04   ; 
- D 1 - I - 0x018B9F 06:AB8F: 06        .byte $06   ; 
- D 1 - I - 0x018BA0 06:AB90: 08        .byte $08   ; 
- D 1 - I - 0x018BA1 06:AB91: 0A        .byte $0A   ; 
- D 1 - I - 0x018BA2 06:AB92: 0C        .byte $0C   ; 
- D 1 - I - 0x018BA3 06:AB93: 0E        .byte $0E   ; 
- D 1 - I - 0x018BA4 06:AB94: 08        .byte $08   ; 
- D 1 - I - 0x018BA5 06:AB95: 04        .byte $04   ; 
- D 1 - I - 0x018BA6 06:AB96: 10        .byte $10   ; 
- D 1 - I - 0x018BA7 06:AB97: 04        .byte $04   ; 
- D 1 - I - 0x018BA8 06:AB98: 04        .byte $04   ; 
- D 1 - I - 0x018BA9 06:AB99: 04        .byte $04   ; 
- D 1 - I - 0x018BAA 06:AB9A: 10        .byte $10   ; 
- D 1 - I - 0x018BAB 06:AB9B: 0C        .byte $0C   ; 
- D 1 - I - 0x018BAC 06:AB9C: 02        .byte $02   ; 
- D 1 - I - 0x018BAD 06:AB9D: 02        .byte $02   ; 
- D 1 - I - 0x018BAE 06:AB9E: 04        .byte $04   ; 
- D 1 - I - 0x018BAF 06:AB9F: 05        .byte $05   ; 
- D 1 - I - 0x018BB0 06:ABA0: 07        .byte $07   ; 
- D 1 - I - 0x018BB1 06:ABA1: 08        .byte $08   ; 
- D 1 - I - 0x018BB2 06:ABA2: 0B        .byte $0B   ; 
- D 1 - I - 0x018BB3 06:ABA3: 0C        .byte $0C   ; 
- D 1 - I - 0x018BB4 06:ABA4: 08        .byte $08   ; 
- D 1 - I - 0x018BB5 06:ABA5: 08        .byte $08   ; 
- D 1 - I - 0x018BB6 06:ABA6: 08        .byte $08   ; 
- D 1 - I - 0x018BB7 06:ABA7: 04        .byte $04   ; 
- D 1 - I - 0x018BB8 06:ABA8: 04        .byte $04   ; 
- D 1 - I - 0x018BB9 06:ABA9: 04        .byte $04   ; 
- D 1 - I - 0x018BBA 06:ABAA: 0C        .byte $0C   ; 
- D 1 - I - 0x018BBB 06:ABAB: 14        .byte $14   ; 

loc_ABAC:
C - - - - - 0x018BBC 06:ABAC: BD 26 03  LDA vEnemyAVelocity,X
C - - - - - 0x018BBF 06:ABAF: 0A        ASL
C - - - - - 0x018BC0 06:ABB0: 0A        ASL
C - - - - - 0x018BC1 06:ABB1: 0A        ASL
C - - - - - 0x018BC2 06:ABB2: 0A        ASL
C - - - - - 0x018BC3 06:ABB3: 18        CLC
C - - - - - 0x018BC4 06:ABB4: 69 7C     ADC #$7C
C - - - - - 0x018BC6 06:ABB6: 85 00     STA ram_0000
C - - - - - 0x018BC8 06:ABB8: A9 AB     LDA #$AB
C - - - - - 0x018BCA 06:ABBA: 69 00     ADC #$00
C - - - - - 0x018BCC 06:ABBC: 85 01     STA ram_0001
C - - - - - 0x018BCE 06:ABBE: 20 1A AC  JSR sub_AC1A
C - - - - - 0x018BD1 06:ABC1: 20 DB AB  JSR sub_ABDB
C - - - - - 0x018BD4 06:ABC4: A5 2C     LDA vLowCounter
C - - - - - 0x018BD6 06:ABC6: 29 03     AND #$03
C - - - - - 0x018BD8 06:ABC8: D0 03     BNE bra_ABCD
C - - - - - 0x018BDA 06:ABCA: FE 44 03  INC ram_0344,X
bra_ABCD:
C - - - - - 0x018BDD 06:ABCD: BD 44 03  LDA ram_0344,X
C - - - - - 0x018BE0 06:ABD0: 29 03     AND #$03
C - - - - - 0x018BE2 06:ABD2: 0A        ASL
C - - - - - 0x018BE3 06:ABD3: 0A        ASL
C - - - - - 0x018BE4 06:ABD4: 18        CLC
C - - - - - 0x018BE5 06:ABD5: 69 18     ADC #$18
C - - - - - 0x018BE7 06:ABD7: A8        TAY
C - - - - - 0x018BE8 06:ABD8: 4C 89 AA  JMP loc_AA89_prepare_rendering

sub_ABDB:
C - - - - - 0x018BEB 06:ABDB: BC 56 03  LDY ram_0356,X
C - - - - - 0x018BEE 06:ABDE: B1 00     LDA (ram_0000),Y
C - - - - - 0x018BF0 06:ABE0: 85 0A     STA ram_000A
C - - - - - 0x018BF2 06:ABE2: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x018BF5 06:ABE5: 6A        ROR
C - - - - - 0x018BF6 06:ABE6: 90 09     BCC bra_ABF1
C - - - - - 0x018BF8 06:ABE8: A9 10     LDA #$10
C - - - - - 0x018BFA 06:ABEA: 38        SEC
C - - - - - 0x018BFB 06:ABEB: E5 0A     SBC ram_000A
C - - - - - 0x018BFD 06:ABED: 29 0F     AND #$0F
C - - - - - 0x018BFF 06:ABEF: 85 0A     STA ram_000A
bra_ABF1:
C - - - - - 0x018C01 06:ABF1: A5 0A     LDA ram_000A
C - - - - - 0x018C03 06:ABF3: 0A        ASL
C - - - - - 0x018C04 06:ABF4: A8        TAY
C - - - - - 0x018C05 06:ABF5: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018C08 06:ABF8: 18        CLC
C - - - - - 0x018C09 06:ABF9: 79 D4 DA  ADC tbl_flying_track_offset,Y
C - - - - - 0x018C0C 06:ABFC: 9D 2C 03  STA ram_032C,X
C - - - - - 0x018C0F 06:ABFF: A9 00     LDA #$00
C - - - - - 0x018C11 06:AC01: 85 02     STA ram_0002
C - - - - - 0x018C13 06:AC03: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y
C - - - - - 0x018C16 06:AC06: 10 02     BPL bra_AC0A
C - - - - - 0x018C18 06:AC08: C6 02     DEC ram_0002
bra_AC0A:
C - - - - - 0x018C1A 06:AC0A: 18        CLC
C - - - - - 0x018C1B 06:AC0B: 7D 38 03  ADC ram_0338,X
C - - - - - 0x018C1E 06:AC0E: 9D 38 03  STA ram_0338,X
C - - - - - 0x018C21 06:AC11: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018C24 06:AC14: 65 02     ADC ram_0002
C - - - - - 0x018C26 06:AC16: 9D 3E 03  STA ram_033E,X
C - - - - - 0x018C29 06:AC19: 60        RTS

sub_AC1A:
C - - - - - 0x018C2A 06:AC1A: DE 4A 03  DEC ram_034A,X
C - - - - - 0x018C2D 06:AC1D: D0 1B     BNE bra_AC3A_RTS
C - - - - - 0x018C2F 06:AC1F: FE 56 03  INC ram_0356,X
C - - - - - 0x018C32 06:AC22: BD 56 03  LDA ram_0356,X
C - - - - - 0x018C35 06:AC25: C9 08     CMP #$08
C - - - - - 0x018C37 06:AC27: D0 03     BNE bra_AC2C
C - - - - - 0x018C39 06:AC29: 4C C3 A9  JMP loc_A9C3_free_projectile

bra_AC2C:
C - - - - - 0x018C3C 06:AC2C: 29 07     AND #$07
C - - - - - 0x018C3E 06:AC2E: 9D 56 03  STA ram_0356,X
C - - - - - 0x018C41 06:AC31: 18        CLC
C - - - - - 0x018C42 06:AC32: 69 08     ADC #$08
C - - - - - 0x018C44 06:AC34: A8        TAY
C - - - - - 0x018C45 06:AC35: B1 00     LDA (ram_0000),Y
C - - - - - 0x018C47 06:AC37: 9D 4A 03  STA ram_034A,X
bra_AC3A_RTS:
C - - - - - 0x018C4A 06:AC3A: 60        RTS

loc_AC3B:
C D 1 - - - 0x018C4B 06:AC3B: 20 80 AC  JSR sub_AC80
C - - - - - 0x018C4E 06:AC3E: 24 D1     BIT vGogglesActive
C - - - - - 0x018C50 06:AC40: 50 33     BVC bra_AC75
C - - - - - 0x018C52 06:AC42: A5 2C     LDA vLowCounter
C - - - - - 0x018C54 06:AC44: 29 03     AND #$03
C - - - - - 0x018C56 06:AC46: A8        TAY
C - - - - - 0x018C57 06:AC47: B9 5E 03  LDA ram_035E,Y
C - - - - - 0x018C5A 06:AC4A: 30 29     BMI bra_AC75
C - - - - - 0x018C5C 06:AC4C: A9 29     LDA #$29
C - - - - - 0x018C5E 06:AC4E: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
C - - - - - 0x018C61 06:AC51: A9 C2     LDA #$C2
C - - - - - 0x018C63 06:AC53: 99 5E 03  STA ram_035E,Y
C - - - - - 0x018C66 06:AC56: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x018C69 06:AC59: 18        CLC
C - - - - - 0x018C6A 06:AC5A: 65 27     ADC ram_0027
C - - - - - 0x018C6C 06:AC5C: 99 76 03  STA ram_0376,Y
C - - - - - 0x018C6F 06:AC5F: A5 4B     LDA ram_004B
C - - - - - 0x018C71 06:AC61: 69 00     ADC #$00
C - - - - - 0x018C73 06:AC63: 99 7C 03  STA ram_037C,Y
C - - - - - 0x018C76 06:AC66: A9 30     LDA #$30
C - - - - - 0x018C78 06:AC68: 99 6A 03  STA ram_036A,Y
C - - - - - 0x018C7B 06:AC6B: A9 00     LDA #$00
C - - - - - 0x018C7D 06:AC6D: 99 82 03  STA ram_0382,Y
C - - - - - 0x018C80 06:AC70: A9 18     LDA #$18
C - - - - - 0x018C82 06:AC72: 99 88 03  STA ram_0388,Y
bra_AC75:
C - - - - - 0x018C85 06:AC75: AD 01 03  LDA vEnemyB
C - - - - - 0x018C88 06:AC78: F0 03     BEQ bra_AC7D
C - - - - - 0x018C8A 06:AC7A: 4C 00 AD  JMP loc_AD00

bra_AC7D:
C - - - - - 0x018C8D 06:AC7D: 4C 51 AD  JMP loc_AD51

sub_AC80:
C - - - - - 0x018C90 06:AC80: A2 01     LDX #$01
C - - - - - 0x018C92 06:AC82: 86 1A     STX ram_001A
bra_AC84:
C - - - - - 0x018C94 06:AC84: A6 1A     LDX ram_001A
C - - - - - 0x018C96 06:AC86: 20 98 AC  JSR sub_AC98
C - - - - - 0x018C99 06:AC89: C6 1A     DEC ram_001A
C - - - - - 0x018C9B 06:AC8B: 10 F7     BPL bra_AC84
bra_AC8D_RTS:
C - - - - - 0x018C9D 06:AC8D: 60        RTS

bra_AC8E:
C - - - - - 0x018C9E 06:AC8E: A6 1A     LDX ram_001A
C - - - - - 0x018CA0 06:AC90: A9 00     LDA #$00
C - - - - - 0x018CA2 06:AC92: 9D 5C 03  STA vEnemyBStatus,X
C - - - - - 0x018CA5 06:AC95: 4C 83 D8  JMP loc_D883_dec_enemyB_counter

sub_AC98:
C - - - - - 0x018CA8 06:AC98: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018CAB 06:AC9B: 10 F0     BPL bra_AC8D_RTS
C - - - - - 0x018CAD 06:AC9D: BD 74 03  LDA vEnemyBPosXLow,X
C - - - - - 0x018CB0 06:ACA0: 85 00     STA ram_0000
C - - - - - 0x018CB2 06:ACA2: BD 7A 03  LDA vEnemyBPosXHigh,X
C - - - - - 0x018CB5 06:ACA5: 85 01     STA ram_0001
C - - - - - 0x018CB7 06:ACA7: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x018CBA 06:ACAA: B0 E2     BCS bra_AC8E
C - - - - - 0x018CBC 06:ACAC: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x018CBF 06:ACAF: B0 DD     BCS bra_AC8E
C - - - - - 0x018CC1 06:ACB1: BD 68 03  LDA ram_0368,X
C - - - - - 0x018CC4 06:ACB4: 85 00     STA ram_0000
C - - - - - 0x018CC6 06:ACB6: A5 03     LDA ram_0003
C - - - - - 0x018CC8 06:ACB8: 9D 6E 03  STA ram_036E,X
C - - - - - 0x018CCB 06:ACBB: 24 D1     BIT vGogglesActive
C - - - - - 0x018CCD 06:ACBD: 10 0B     BPL bra_ACCA
C - - - - - 0x018CCF 06:ACBF: A9 6E     LDA #$6E
C - - - - - 0x018CD1 06:ACC1: 85 01     STA ram_0001
C - - - - - 0x018CD3 06:ACC3: A9 44     LDA #$44
C - - - - - 0x018CD5 06:ACC5: 85 02     STA ram_0002
C - - - - - 0x018CD7 06:ACC7: 20 33 CE  JSR sub_CE33_add_sprite_magic ; bank FF
bra_ACCA:
C - - - - - 0x018CDA 06:ACCA: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018CDD 06:ACCD: 10 30     BPL bra_ACFF_RTS
C - - - - - 0x018CDF 06:ACCF: 24 D1     BIT vGogglesActive
C - - - - - 0x018CE1 06:ACD1: 70 2C     BVS bra_ACFF_RTS
C - - - - - 0x018CE3 06:ACD3: BD 68 03  LDA ram_0368,X
C - - - - - 0x018CE6 06:ACD6: 85 AD     STA ram_00AD
C - - - - - 0x018CE8 06:ACD8: BD 6E 03  LDA ram_036E,X
C - - - - - 0x018CEB 06:ACDB: 85 AE     STA ram_00AE
C - - - - - 0x018CED 06:ACDD: A9 08     LDA #$08
C - - - - - 0x018CEF 06:ACDF: 85 AF     STA ram_00AF
C - - - - - 0x018CF1 06:ACE1: A9 04     LDA #$04
C - - - - - 0x018CF3 06:ACE3: 85 B0     STA ram_00B0
C - - - - - 0x018CF5 06:ACE5: 20 42 D6  JSR sub_D642_have_intersect_with_character
C - - - - - 0x018CF8 06:ACE8: 90 15     BCC bra_ACFF_RTS
C - - - - - 0x018CFA 06:ACEA: A0 03     LDY #$03
C - - - - - 0x018CFC 06:ACEC: A9 00     LDA #$00
bra_ACEE:
C - - - - - 0x018CFE 06:ACEE: 99 5E 03  STA ram_035E,Y
C - - - - - 0x018D01 06:ACF1: 88        DEY
C - - - - - 0x018D02 06:ACF2: 10 FA     BPL bra_ACEE
C - - - - - 0x018D04 06:ACF4: A9 02     LDA #$02
C - - - - - 0x018D06 06:ACF6: 8D 18 02  STA ram_0218
C - - - - - 0x018D09 06:ACF9: A5 D1     LDA vGogglesActive
C - - - - - 0x018D0B 06:ACFB: 09 40     ORA #$40
C - - - - - 0x018D0D 06:ACFD: 85 D1     STA vGogglesActive
bra_ACFF_RTS:
C - - - - - 0x018D0F 06:ACFF: 60        RTS

loc_AD00:
C D 1 - - - 0x018D10 06:AD00: A2 03     LDX #$03
C - - - - - 0x018D12 06:AD02: 86 1A     STX ram_001A
bra_AD04:
C - - - - - 0x018D14 06:AD04: A6 1A     LDX ram_001A
C - - - - - 0x018D16 06:AD06: 20 77 AD  JSR sub_AD77
C - - - - - 0x018D19 06:AD09: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018D1C 06:AD0C: C9 E0     CMP #$E0
C - - - - - 0x018D1E 06:AD0E: B0 33     BCS bra_AD43
C - - - - - 0x018D20 06:AD10: C9 C0     CMP #$C0
C - - - - - 0x018D22 06:AD12: 90 2F     BCC bra_AD43
C - - - - - 0x018D24 06:AD14: BD 6A 03  LDA ram_036A,X
C - - - - - 0x018D27 06:AD17: 18        CLC
C - - - - - 0x018D28 06:AD18: 69 06     ADC #$06
C - - - - - 0x018D2A 06:AD1A: 85 AD     STA ram_00AD
C - - - - - 0x018D2C 06:AD1C: BD 70 03  LDA ram_0370,X
C - - - - - 0x018D2F 06:AD1F: 85 AE     STA ram_00AE
C - - - - - 0x018D31 06:AD21: A9 0C     LDA #$0C
C - - - - - 0x018D33 06:AD23: 85 AF     STA ram_00AF
C - - - - - 0x018D35 06:AD25: A9 04     LDA #$04
C - - - - - 0x018D37 06:AD27: 85 B0     STA ram_00B0
C - - - - - 0x018D39 06:AD29: AD 14 02  LDA vCurrentWeaponStatus
C - - - - - 0x018D3C 06:AD2C: C9 49     CMP #$49
C - - - - - 0x018D3E 06:AD2E: D0 0B     BNE bra_AD3B
- - - - - - 0x018D40 06:AD30: 20        .byte $20   ; 
- - - - - - 0x018D41 06:AD31: 06        .byte $06   ; 
- - - - - - 0x018D42 06:AD32: D6        .byte $D6   ; 
- - - - - - 0x018D43 06:AD33: 90        .byte $90   ; 
- - - - - - 0x018D44 06:AD34: 06        .byte $06   ; 
- - - - - - 0x018D45 06:AD35: 20        .byte $20   ; 
- - - - - - 0x018D46 06:AD36: 5D        .byte $5D   ; 
- - - - - - 0x018D47 06:AD37: AD        .byte $AD   ; 
- - - - - - 0x018D48 06:AD38: 4C        .byte $4C   ; <L>
- - - - - - 0x018D49 06:AD39: 43        .byte $43   ; <C>
- - - - - - 0x018D4A 06:AD3A: AD        .byte $AD   ; 
bra_AD3B:
C - - - - - 0x018D4B 06:AD3B: 20 62 D5  JSR sub_D562_has_character_damage
C - - - - - 0x018D4E 06:AD3E: 90 03     BCC bra_AD43
C - - - - - 0x018D50 06:AD40: 20 6F AD  JSR sub_AD6F
bra_AD43:
C - - - - - 0x018D53 06:AD43: C6 1A     DEC ram_001A
C - - - - - 0x018D55 06:AD45: 10 BD     BPL bra_AD04
C - - - - - 0x018D57 06:AD47: AD 18 02  LDA ram_0218
C - - - - - 0x018D5A 06:AD4A: D0 0C     BNE bra_AD58
C - - - - - 0x018D5C 06:AD4C: AD 17 02  LDA ram_0217
C - - - - - 0x018D5F 06:AD4F: D0 07     BNE bra_AD58
loc_AD51:
C D 1 - - - 0x018D61 06:AD51: A5 D1     LDA vGogglesActive
C - - - - - 0x018D63 06:AD53: 29 BF     AND #$BF
C - - - - - 0x018D65 06:AD55: 85 D1     STA vGogglesActive
C - - - - - 0x018D67 06:AD57: 60        RTS

bra_AD58:
C - - - - - 0x018D68 06:AD58: A0 02     LDY #$02
C - - - - - 0x018D6A 06:AD5A: 4C AC CD  JMP loc_CDAC_decrement_counters_ex

- - - - - - 0x018D6D 06:AD5D: A6        .byte $A6   ; 
- - - - - - 0x018D6E 06:AD5E: 1A        .byte $1A   ; 
- - - - - - 0x018D6F 06:AD5F: BD        .byte $BD   ; 
- - - - - - 0x018D70 06:AD60: 5E        .byte $5E   ; 
- - - - - - 0x018D71 06:AD61: 03        .byte $03   ; 
- - - - - - 0x018D72 06:AD62: 29        .byte $29   ; 
- - - - - - 0x018D73 06:AD63: C0        .byte $C0   ; 
- - - - - - 0x018D74 06:AD64: 09        .byte $09   ; 
- - - - - - 0x018D75 06:AD65: 20        .byte $20   ; 
- - - - - - 0x018D76 06:AD66: 9D        .byte $9D   ; 
- - - - - - 0x018D77 06:AD67: 5E        .byte $5E   ; 
- - - - - - 0x018D78 06:AD68: 03        .byte $03   ; 
- - - - - - 0x018D79 06:AD69: A9        .byte $A9   ; 
- - - - - - 0x018D7A 06:AD6A: 08        .byte $08   ; 
- - - - - - 0x018D7B 06:AD6B: 9D        .byte $9D   ; 
- - - - - - 0x018D7C 06:AD6C: 88        .byte $88   ; 
- - - - - - 0x018D7D 06:AD6D: 03        .byte $03   ; 
- - - - - - 0x018D7E 06:AD6E: 60        .byte $60   ; 
bra_AD6F:
sub_AD6F:
loc_AD6F:
C D 1 - - - 0x018D7F 06:AD6F: A6 1A     LDX ram_001A
C - - - - - 0x018D81 06:AD71: A9 00     LDA #$00
C - - - - - 0x018D83 06:AD73: 9D 5E 03  STA ram_035E,X
bra_AD76_RTS:
C - - - - - 0x018D86 06:AD76: 60        RTS

sub_AD77:
C - - - - - 0x018D87 06:AD77: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018D8A 06:AD7A: 10 FA     BPL bra_AD76_RTS
C - - - - - 0x018D8C 06:AD7C: 4A        LSR
C - - - - - 0x018D8D 06:AD7D: 4A        LSR
C - - - - - 0x018D8E 06:AD7E: 90 03     BCC bra_AD83
C - - - - - 0x018D90 06:AD80: 4C B3 AD  JMP loc_ADB3

bra_AD83:
loc_AD83:
C D 1 - - - 0x018D93 06:AD83: BD 76 03  LDA ram_0376,X
C - - - - - 0x018D96 06:AD86: 85 00     STA ram_0000
C - - - - - 0x018D98 06:AD88: BD 7C 03  LDA ram_037C,X
C - - - - - 0x018D9B 06:AD8B: 85 01     STA ram_0001
C - - - - - 0x018D9D 06:AD8D: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x018DA0 06:AD90: B0 DD     BCS bra_AD6F
C - - - - - 0x018DA2 06:AD92: BD 6A 03  LDA ram_036A,X
C - - - - - 0x018DA5 06:AD95: 85 00     STA ram_0000
C - - - - - 0x018DA7 06:AD97: A5 03     LDA ram_0003
C - - - - - 0x018DA9 06:AD99: 9D 70 03  STA ram_0370,X
C - - - - - 0x018DAC 06:AD9C: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018DAF 06:AD9F: 29 20     AND #$20
C - - - - - 0x018DB1 06:ADA1: F0 03     BEQ bra_ADA6
- - - - - - 0x018DB3 06:ADA3: 4C        .byte $4C   ; <L>
- - - - - - 0x018DB4 06:ADA4: FB        .byte $FB   ; 
- - - - - - 0x018DB5 06:ADA5: AD        .byte $AD   ; 
bra_ADA6:
C - - - - - 0x018DB6 06:ADA6: 98        TYA
C - - - - - 0x018DB7 06:ADA7: 18        CLC
C - - - - - 0x018DB8 06:ADA8: 69 98     ADC #$98
C - - - - - 0x018DBA 06:ADAA: 85 01     STA ram_0001
C - - - - - 0x018DBC 06:ADAC: A9 47     LDA #$47
C - - - - - 0x018DBE 06:ADAE: 85 02     STA ram_0002
C - - - - - 0x018DC0 06:ADB0: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

loc_ADB3:
C D 1 - - - 0x018DC3 06:ADB3: BC 88 03  LDY ram_0388,X
C - - - - - 0x018DC6 06:ADB6: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y
C - - - - - 0x018DC9 06:ADB9: 18        CLC
C - - - - - 0x018DCA 06:ADBA: 7D 6A 03  ADC ram_036A,X
C - - - - - 0x018DCD 06:ADBD: 9D 6A 03  STA ram_036A,X
C - - - - - 0x018DD0 06:ADC0: C9 DF     CMP #$DF
C - - - - - 0x018DD2 06:ADC2: 90 03     BCC bra_ADC7
C - - - - - 0x018DD4 06:ADC4: 4C 6F AD  JMP loc_AD6F

bra_ADC7:
C - - - - - 0x018DD7 06:ADC7: FE 88 03  INC ram_0388,X
C - - - - - 0x018DDA 06:ADCA: A9 1F     LDA #$1F
C - - - - - 0x018DDC 06:ADCC: DD 88 03  CMP ram_0388,X
C - - - - - 0x018DDF 06:ADCF: B0 03     BCS bra_ADD4
C - - - - - 0x018DE1 06:ADD1: 9D 88 03  STA ram_0388,X
bra_ADD4:
C - - - - - 0x018DE4 06:ADD4: A5 2C     LDA vLowCounter
C - - - - - 0x018DE6 06:ADD6: 29 03     AND #$03
C - - - - - 0x018DE8 06:ADD8: D0 0F     BNE bra_ADE9
C - - - - - 0x018DEA 06:ADDA: FE 82 03  INC ram_0382,X
C - - - - - 0x018DED 06:ADDD: BD 82 03  LDA ram_0382,X
C - - - - - 0x018DF0 06:ADE0: C9 08     CMP #$08
C - - - - - 0x018DF2 06:ADE2: 90 05     BCC bra_ADE9
C - - - - - 0x018DF4 06:ADE4: A9 00     LDA #$00
C - - - - - 0x018DF6 06:ADE6: 9D 82 03  STA ram_0382,X
bra_ADE9:
C - - - - - 0x018DF9 06:ADE9: BC 82 03  LDY ram_0382,X
C - - - - - 0x018DFC 06:ADEC: B9 F3 AD  LDA tbl_ADF3,Y
C - - - - - 0x018DFF 06:ADEF: A8        TAY
C - - - - - 0x018E00 06:ADF0: 4C 83 AD  JMP loc_AD83

tbl_ADF3:
- D 1 - - - 0x018E03 06:ADF3: 00        .byte $00   ; 
- D 1 - - - 0x018E04 06:ADF4: 02        .byte $02   ; 
- D 1 - - - 0x018E05 06:ADF5: 04        .byte $04   ; 
- D 1 - - - 0x018E06 06:ADF6: 06        .byte $06   ; 
- D 1 - - - 0x018E07 06:ADF7: 08        .byte $08   ; 
- D 1 - - - 0x018E08 06:ADF8: 0A        .byte $0A   ; 
- D 1 - - - 0x018E09 06:ADF9: 0C        .byte $0C   ; 
- D 1 - - - 0x018E0A 06:ADFA: 0E        .byte $0E   ; 
- - - - - - 0x018E0B 06:ADFB: DE        .byte $DE   ; 
- - - - - - 0x018E0C 06:ADFC: 88        .byte $88   ; 
- - - - - - 0x018E0D 06:ADFD: 03        .byte $03   ; 
- - - - - - 0x018E0E 06:ADFE: D0        .byte $D0   ; 
- - - - - - 0x018E0F 06:ADFF: 03        .byte $03   ; 
- - - - - - 0x018E10 06:AE00: 4C        .byte $4C   ; <L>
- - - - - - 0x018E11 06:AE01: 6F        .byte $6F   ; <o>
- - - - - - 0x018E12 06:AE02: AD        .byte $AD   ; 
- - - - - - 0x018E13 06:AE03: BD        .byte $BD   ; 
- - - - - - 0x018E14 06:AE04: 88        .byte $88   ; 
- - - - - - 0x018E15 06:AE05: 03        .byte $03   ; 
- - - - - - 0x018E16 06:AE06: 4C        .byte $4C   ; <L>
- - - - - - 0x018E17 06:AE07: 80        .byte $80   ; 
- - - - - - 0x018E18 06:AE08: D9        .byte $D9   ; 
loc_AE09:
C D 1 - - - 0x018E19 06:AE09: A2 01     LDX #$01
C - - - - - 0x018E1B 06:AE0B: 86 1A     STX ram_001A
bra_AE0D:
C - - - - - 0x018E1D 06:AE0D: A6 1A     LDX ram_001A
C - - - - - 0x018E1F 06:AE0F: 20 58 AE  JSR sub_AE58
C - - - - - 0x018E22 06:AE12: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018E25 06:AE15: C9 E0     CMP #$E0
C - - - - - 0x018E27 06:AE17: B0 23     BCS bra_AE3C
C - - - - - 0x018E29 06:AE19: C9 C0     CMP #$C0
C - - - - - 0x018E2B 06:AE1B: 90 1F     BCC bra_AE3C
C - - - - - 0x018E2D 06:AE1D: BD 68 03  LDA ram_0368,X
C - - - - - 0x018E30 06:AE20: 85 AD     STA ram_00AD
C - - - - - 0x018E32 06:AE22: BD 6E 03  LDA ram_036E,X
C - - - - - 0x018E35 06:AE25: 85 AE     STA ram_00AE
C - - - - - 0x018E37 06:AE27: A9 20     LDA #$20
C - - - - - 0x018E39 06:AE29: 85 AF     STA ram_00AF
C - - - - - 0x018E3B 06:AE2B: A9 06     LDA #$06
C - - - - - 0x018E3D 06:AE2D: 85 B0     STA ram_00B0
C - - - - - 0x018E3F 06:AE2F: A6 7A     LDX vBulletCount
bra_AE31:
C - - - - - 0x018E41 06:AE31: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet
C - - - - - 0x018E44 06:AE34: B0 0B     BCS bra_AE41
C - - - - - 0x018E46 06:AE36: CA        DEX
C - - - - - 0x018E47 06:AE37: 10 F8     BPL bra_AE31
C - - - - - 0x018E49 06:AE39: 20 62 D5  JSR sub_D562_has_character_damage
bra_AE3C:
loc_AE3C:
C D 1 - - - 0x018E4C 06:AE3C: C6 1A     DEC ram_001A
C - - - - - 0x018E4E 06:AE3E: 10 CD     BPL bra_AE0D
C - - - - - 0x018E50 06:AE40: 60        RTS

bra_AE41:
C - - - - - 0x018E51 06:AE41: A9 00     LDA #$00
C - - - - - 0x018E53 06:AE43: 95 8F     STA vBulletStatus,X
C - - - - - 0x018E55 06:AE45: 20 4B AE  JSR sub_AE4B
C - - - - - 0x018E58 06:AE48: 4C 3C AE  JMP loc_AE3C

sub_AE4B:
C - - - - - 0x018E5B 06:AE4B: A6 1A     LDX ram_001A
C - - - - - 0x018E5D 06:AE4D: A9 20     LDA #$20
C - - - - - 0x018E5F 06:AE4F: 20 7A AF  JSR sub_AF7A
C - - - - - 0x018E62 06:AE52: A9 40     LDA #$40
C - - - - - 0x018E64 06:AE54: 9D 86 03  STA ram_0386,X
bra_AE57_RTS:
C - - - - - 0x018E67 06:AE57: 60        RTS

sub_AE58:
C - - - - - 0x018E68 06:AE58: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018E6B 06:AE5B: 10 FA     BPL bra_AE57_RTS
C - - - - - 0x018E6D 06:AE5D: 4A        LSR
C - - - - - 0x018E6E 06:AE5E: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- - - - - - 0x018E71 06:AE61: 6E AE     .addr loc_AE6F - 1 ; 0x02
- - - - - - 0x018E73 06:AE63: 6E AE     .addr loc_AE6F - 1 ; 0x04
- - - - - - 0x018E75 06:AE65: 6E AE     .addr loc_AE6F - 1 ; 0x08
- - - - - - 0x018E77 06:AE67: 6E AE     .addr loc_AE6F - 1 ; 0x10
- D 1 - I - 0x018E79 06:AE69: B4 AE     .addr loc_AEB5 - 1 ; 0x20
- D 1 - I - 0x018E7B 06:AE6B: 6E AE     .addr loc_AE6F - 1 ; 0x40
- D 1 - I - 0x018E7D 06:AE6D: 6E AE     .addr loc_AE6F - 1 ; 0x80

loc_AE6F:
C - - - - - 0x018E7F 06:AE6F: 20 C8 AE  JSR sub_AEC8
C - - - - - 0x018E82 06:AE72: F0 06     BEQ bra_AE7A
- - - - - - 0x018E84 06:AE74: 20        .byte $20   ; 
- - - - - - 0x018E85 06:AE75: 32        .byte $32   ; <2>
- - - - - - 0x018E86 06:AE76: AF        .byte $AF   ; 
- - - - - - 0x018E87 06:AE77: 4C        .byte $4C   ; <L>
- - - - - - 0x018E88 06:AE78: 82        .byte $82   ; 
- - - - - - 0x018E89 06:AE79: AE        .byte $AE   ; 
bra_AE7A:
C - - - - - 0x018E8A 06:AE7A: A9 00     LDA #$00
C - - - - - 0x018E8C 06:AE7C: 20 7A AF  JSR sub_AF7A
C - - - - - 0x018E8F 06:AE7F: 20 68 AF  JSR sub_AF68
C - - - - - 0x018E92 06:AE82: 20 C4 D9  JSR sub_D9C4_inc_enemyB_frame_counter
C - - - - - 0x018E95 06:AE85: BD 80 03  LDA ram_0380,X
C - - - - - 0x018E98 06:AE88: 0A        ASL
C - - - - - 0x018E99 06:AE89: 0A        ASL
C - - - - - 0x018E9A 06:AE8A: A8        TAY
bra_AE8B:
C - - - - - 0x018E9B 06:AE8B: BD 74 03  LDA vEnemyBPosXLow,X
C - - - - - 0x018E9E 06:AE8E: 85 00     STA ram_0000
C - - - - - 0x018EA0 06:AE90: BD 7A 03  LDA vEnemyBPosXHigh,X
C - - - - - 0x018EA3 06:AE93: 85 01     STA ram_0001
C - - - - - 0x018EA5 06:AE95: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x018EA8 06:AE98: 90 03     BCC bra_AE9D
C - - - - - 0x018EAA 06:AE9A: 4C 73 D8  JMP loc_D873_free_enemyB

bra_AE9D:
C - - - - - 0x018EAD 06:AE9D: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x018EB0 06:AEA0: 90 03     BCC bra_AEA5
C - - - - - 0x018EB2 06:AEA2: 4C 4D D8  JMP loc_D84D_enemyB_off_screen

bra_AEA5:
C - - - - - 0x018EB5 06:AEA5: 20 31 D8  JSR sub_D831_enemyB_on_screen
C - - - - - 0x018EB8 06:AEA8: 98        TYA
C - - - - - 0x018EB9 06:AEA9: 18        CLC
C - - - - - 0x018EBA 06:AEAA: 69 1C     ADC #$1C
C - - - - - 0x018EBC 06:AEAC: 85 01     STA ram_0001
C - - - - - 0x018EBE 06:AEAE: A9 13     LDA #$13
C - - - - - 0x018EC0 06:AEB0: 85 02     STA ram_0002
C - - - - - 0x018EC2 06:AEB2: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

loc_AEB5:
C - - - - - 0x018EC5 06:AEB5: DE 86 03  DEC ram_0386,X
C - - - - - 0x018EC8 06:AEB8: D0 03     BNE bra_AEBD
C - - - - - 0x018ECA 06:AEBA: 4C 73 D8  JMP loc_D873_free_enemyB

bra_AEBD:
C - - - - - 0x018ECD 06:AEBD: BD 86 03  LDA ram_0386,X
C - - - - - 0x018ED0 06:AEC0: 29 0C     AND #$0C
C - - - - - 0x018ED2 06:AEC2: 18        CLC
C - - - - - 0x018ED3 06:AEC3: 69 0C     ADC #$0C
C - - - - - 0x018ED5 06:AEC5: A8        TAY
C - - - - - 0x018ED6 06:AEC6: D0 C3     BNE bra_AE8B
sub_AEC8:
C - - - - - 0x018ED8 06:AEC8: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018EDB 06:AECB: 6A        ROR
C - - - - - 0x018EDC 06:AECC: 90 2A     BCC bra_AEF8
C - - - - - 0x018EDE 06:AECE: 20 4A D9  JSR sub_D94A_init_absolute_enemyB_positions
C - - - - - 0x018EE1 06:AED1: A9 F8     LDA #$F8
C - - - - - 0x018EE3 06:AED3: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX
C - - - - - 0x018EE6 06:AED6: D0 4A     BNE bra_AF22
C - - - - - 0x018EE8 06:AED8: A5 00     LDA ram_0000
C - - - - - 0x018EEA 06:AEDA: 38        SEC
C - - - - - 0x018EEB 06:AEDB: E9 10     SBC #$10
C - - - - - 0x018EED 06:AEDD: 85 00     STA ram_0000
C - - - - - 0x018EEF 06:AEDF: 20 52 D9  JSR sub_D952_init_short_enemyB_positions
C - - - - - 0x018EF2 06:AEE2: A9 F8     LDA #$F8
C - - - - - 0x018EF4 06:AEE4: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX
C - - - - - 0x018EF7 06:AEE7: D0 39     BNE bra_AF22
C - - - - - 0x018EF9 06:AEE9: A5 00     LDA ram_0000
C - - - - - 0x018EFB 06:AEEB: 38        SEC
C - - - - - 0x018EFC 06:AEEC: E9 0F     SBC #$0F
C - - - - - 0x018EFE 06:AEEE: 85 00     STA ram_0000
C - - - - - 0x018F00 06:AEF0: 20 52 D9  JSR sub_D952_init_short_enemyB_positions
C - - - - - 0x018F03 06:AEF3: A9 F8     LDA #$F8
C - - - - - 0x018F05 06:AEF5: 4C AD D3  JMP loc_D3AD_left_collision_by_inc_posX

bra_AEF8:
C - - - - - 0x018F08 06:AEF8: 20 4A D9  JSR sub_D94A_init_absolute_enemyB_positions
C - - - - - 0x018F0B 06:AEFB: A9 08     LDA #$08
C - - - - - 0x018F0D 06:AEFD: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX
C - - - - - 0x018F10 06:AF00: D0 20     BNE bra_AF22
C - - - - - 0x018F12 06:AF02: A5 00     LDA ram_0000
C - - - - - 0x018F14 06:AF04: 38        SEC
C - - - - - 0x018F15 06:AF05: E9 10     SBC #$10
C - - - - - 0x018F17 06:AF07: 85 00     STA ram_0000
C - - - - - 0x018F19 06:AF09: 20 52 D9  JSR sub_D952_init_short_enemyB_positions
C - - - - - 0x018F1C 06:AF0C: A9 08     LDA #$08
C - - - - - 0x018F1E 06:AF0E: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX
C - - - - - 0x018F21 06:AF11: D0 0F     BNE bra_AF22
C - - - - - 0x018F23 06:AF13: A5 00     LDA ram_0000
C - - - - - 0x018F25 06:AF15: 38        SEC
C - - - - - 0x018F26 06:AF16: E9 0F     SBC #$0F
C - - - - - 0x018F28 06:AF18: 85 00     STA ram_0000
C - - - - - 0x018F2A 06:AF1A: 20 52 D9  JSR sub_D952_init_short_enemyB_positions
C - - - - - 0x018F2D 06:AF1D: A9 08     LDA #$08
C - - - - - 0x018F2F 06:AF1F: 4C 97 D3  JMP loc_D397_right_collision_by_inc_posX

bra_AF22:
- - - - - - 0x018F32 06:AF22: BD        .byte $BD   ; 
- - - - - - 0x018F33 06:AF23: 5C        .byte $5C   ; 
- - - - - - 0x018F34 06:AF24: 03        .byte $03   ; 
- - - - - - 0x018F35 06:AF25: 29        .byte $29   ; 
- - - - - - 0x018F36 06:AF26: 04        .byte $04   ; 
- - - - - - 0x018F37 06:AF27: D0        .byte $D0   ; 
- - - - - - 0x018F38 06:AF28: 08        .byte $08   ; 
- - - - - - 0x018F39 06:AF29: 20        .byte $20   ; 
- - - - - - 0x018F3A 06:AF2A: 64        .byte $64   ; <d>
- - - - - - 0x018F3B 06:AF2B: D0        .byte $D0   ; 
- - - - - - 0x018F3C 06:AF2C: 29        .byte $29   ; 
- - - - - - 0x018F3D 06:AF2D: 02        .byte $02   ; 
- - - - - - 0x018F3E 06:AF2E: 4C        .byte $4C   ; <L>
- - - - - - 0x018F3F 06:AF2F: 7A        .byte $7A   ; <z>
- - - - - - 0x018F40 06:AF30: AF        .byte $AF   ; 
- - - - - - 0x018F41 06:AF31: 60        .byte $60   ; 
- - - - - - 0x018F42 06:AF32: BD        .byte $BD   ; 
- - - - - - 0x018F43 06:AF33: 5C        .byte $5C   ; 
- - - - - - 0x018F44 06:AF34: 03        .byte $03   ; 
- - - - - - 0x018F45 06:AF35: 29        .byte $29   ; 
- - - - - - 0x018F46 06:AF36: 02        .byte $02   ; 
- - - - - - 0x018F47 06:AF37: F0        .byte $F0   ; 
- - - - - - 0x018F48 06:AF38: 17        .byte $17   ; 
- - - - - - 0x018F49 06:AF39: BD        .byte $BD   ; 
- - - - - - 0x018F4A 06:AF3A: 68        .byte $68   ; <h>
- - - - - - 0x018F4B 06:AF3B: 03        .byte $03   ; 
- - - - - - 0x018F4C 06:AF3C: 85        .byte $85   ; 
- - - - - - 0x018F4D 06:AF3D: 00        .byte $00   ; 
- - - - - - 0x018F4E 06:AF3E: E6        .byte $E6   ; 
- - - - - - 0x018F4F 06:AF3F: 00        .byte $00   ; 
- - - - - - 0x018F50 06:AF40: 20        .byte $20   ; 
- - - - - - 0x018F51 06:AF41: 5E        .byte $5E   ; 
- - - - - - 0x018F52 06:AF42: D3        .byte $D3   ; 
- - - - - - 0x018F53 06:AF43: D0        .byte $D0   ; 
- - - - - - 0x018F54 06:AF44: 07        .byte $07   ; 
- - - - - - 0x018F55 06:AF45: FE        .byte $FE   ; 
- - - - - - 0x018F56 06:AF46: 68        .byte $68   ; <h>
- - - - - - 0x018F57 06:AF47: 03        .byte $03   ; 
- - - - - - 0x018F58 06:AF48: FE        .byte $FE   ; 
- - - - - - 0x018F59 06:AF49: 68        .byte $68   ; <h>
- - - - - - 0x018F5A 06:AF4A: 03        .byte $03   ; 
- - - - - - 0x018F5B 06:AF4B: 60        .byte $60   ; 
- - - - - - 0x018F5C 06:AF4C: A9        .byte $A9   ; 
- - - - - - 0x018F5D 06:AF4D: 04        .byte $04   ; 
- - - - - - 0x018F5E 06:AF4E: D0        .byte $D0   ; 
- - - - - - 0x018F5F 06:AF4F: 2A        .byte $2A   ; 
- - - - - - 0x018F60 06:AF50: BD        .byte $BD   ; 
- - - - - - 0x018F61 06:AF51: 68        .byte $68   ; <h>
- - - - - - 0x018F62 06:AF52: 03        .byte $03   ; 
- - - - - - 0x018F63 06:AF53: 38        .byte $38   ; <8>
- - - - - - 0x018F64 06:AF54: E9        .byte $E9   ; 
- - - - - - 0x018F65 06:AF55: 20        .byte $20   ; 
- - - - - - 0x018F66 06:AF56: 85        .byte $85   ; 
- - - - - - 0x018F67 06:AF57: 00        .byte $00   ; 
- - - - - - 0x018F68 06:AF58: 20        .byte $20   ; 
- - - - - - 0x018F69 06:AF59: 5E        .byte $5E   ; 
- - - - - - 0x018F6A 06:AF5A: D3        .byte $D3   ; 
- - - - - - 0x018F6B 06:AF5B: D0        .byte $D0   ; 
- - - - - - 0x018F6C 06:AF5C: 07        .byte $07   ; 
- - - - - - 0x018F6D 06:AF5D: DE        .byte $DE   ; 
- - - - - - 0x018F6E 06:AF5E: 68        .byte $68   ; <h>
- - - - - - 0x018F6F 06:AF5F: 03        .byte $03   ; 
- - - - - - 0x018F70 06:AF60: DE        .byte $DE   ; 
- - - - - - 0x018F71 06:AF61: 68        .byte $68   ; <h>
- - - - - - 0x018F72 06:AF62: 03        .byte $03   ; 
- - - - - - 0x018F73 06:AF63: 60        .byte $60   ; 
- - - - - - 0x018F74 06:AF64: A9        .byte $A9   ; 
- - - - - - 0x018F75 06:AF65: 06        .byte $06   ; 
- - - - - - 0x018F76 06:AF66: D0        .byte $D0   ; 
- - - - - - 0x018F77 06:AF67: 12        .byte $12   ; 
sub_AF68:
C - - - - - 0x018F78 06:AF68: A5 2C     LDA vLowCounter
C - - - - - 0x018F7A 06:AF6A: 29 01     AND #$01
C - - - - - 0x018F7C 06:AF6C: D0 18     BNE bra_AF86_RTS
C - - - - - 0x018F7E 06:AF6E: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018F81 06:AF71: 6A        ROR
C - - - - - 0x018F82 06:AF72: 90 03     BCC bra_AF77
C - - - - - 0x018F84 06:AF74: 4C 09 D8  JMP loc_D809_short_dec_EnemyBPosXLow

bra_AF77:
C - - - - - 0x018F87 06:AF77: 4C 28 D8  JMP loc_D828_short_inc_EnemyBPosXLow

sub_AF7A:
C - - - - - 0x018F8A 06:AF7A: 85 05     STA ram_0005
C - - - - - 0x018F8C 06:AF7C: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x018F8F 06:AF7F: 29 C1     AND #$C1
C - - - - - 0x018F91 06:AF81: 05 05     ORA ram_0005
C - - - - - 0x018F93 06:AF83: 9D 5C 03  STA vEnemyBStatus,X
bra_AF86_RTS:
C - - - - - 0x018F96 06:AF86: 60        RTS

; offset index
- D 1 - I - 0x018F97 06:AF87: 01        .byte $01, $02, $03, $04, $04, $05, $06, $07
- D 1 - I - 0x018F9F 06:AF8F: 0F        .byte $0F, $0E, $0D, $0C, $0C, $0B, $0A, $09

; jump counters
- D 1 - I - 0x018FA7 06:AF97: 08        .byte $08, $10, $20, $40, $40, $20, $10, $08
- D 1 - I - 0x018FAF 06:AF9F: 08        .byte $08, $10, $20, $40, $40, $20, $10, $08

loc_AFA7_enemy:
C D 1 - - - 0x018FB7 06:AFA7: 20 AD AF  JSR sub_AFAD_main                  ;
C - - - - - 0x018FBA 06:AFAA: 4C 73 A9  JMP loc_A973_projectile            ;

sub_AFAD_main:
C - - - - - 0x018FBD 06:AFAD: A2 01     LDX #$01                           ;
C - - - - - 0x018FBF 06:AFAF: 86 1A     STX vTempCounter1A                 ; set loop counter (the enemyB number)
bra_AFB1_loop:                                                             ; loop by vTempCounter1A (2 times)
C - - - - - 0x018FC1 06:AFB1: A6 1A     LDX vTempCounter1A                 ; prepares an input parameter
C - - - - - 0x018FC3 06:AFB3: 20 26 B0  JSR sub_B026_status_behavior       ;
C - - - - - 0x018FC6 06:AFB6: A6 1A     LDX vTempCounter1A                 ;
C - - - - - 0x018FC8 06:AFB8: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x018FCB 06:AFBB: C9 E0     CMP #$E0                           ;
C - - - - - 0x018FCD 06:AFBD: B0 3C     BCS bra_AFFB_next                  ; If vEnemyAStatus >= 0xE0
C - - - - - 0x018FCF 06:AFBF: C9 C0     CMP #$C0                           ;
C - - - - - 0x018FD1 06:AFC1: 90 38     BCC bra_AFFB_next                  ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x018FD3 06:AFC3: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x018FD6 06:AFC6: 18        CLC                                ;
C - - - - - 0x018FD7 06:AFC7: 69 FC     ADC #$FC                           ; the offset (-4)
C - - - - - 0x018FD9 06:AFC9: 85 AD     STA vEnemyHitBoxY                  ; <~ posY + the offset
C - - - - - 0x018FDB 06:AFCB: BD 32 03  LDA vEnemyAScreenPosX,X            ;
C - - - - - 0x018FDE 06:AFCE: 85 AE     STA vEnemyHitBoxX                  ; <~ screen posX
C - - - - - 0x018FE0 06:AFD0: A9 18     LDA #$18                           ;
C - - - - - 0x018FE2 06:AFD2: 85 AF     STA vEnemyHitBoxH                  ; <~ hitBoxH
C - - - - - 0x018FE4 06:AFD4: A9 06     LDA #$06                           ;
C - - - - - 0x018FE6 06:AFD6: 85 B0     STA vEnemyHitBoxW                  ; <~ hitBoxW
C - - - - - 0x018FE8 06:AFD8: 20 60 D6  JSR sub_D660_is_bomb_exploding     ;
C - - - - - 0x018FEB 06:AFDB: B0 0B     BCS @bra_AFE8_bomb_hit             ; If the bomb is exploding
C - - - - - 0x018FED 06:AFDD: A5 5F     LDA vChrLiveStatus                 ;
C - - - - - 0x018FEF 06:AFDF: 29 02     AND #$02                           ; CONSTANT - Goemon
C - - - - - 0x018FF1 06:AFE1: F0 0B     BEQ bra_AFEE_check_bullets         ; If the character isn't Goemon
C - - - - - 0x018FF3 06:AFE3: 20 06 D6  JSR sub_D606_have_intersect_sword  ;
C - - - - - 0x018FF6 06:AFE6: 90 10     BCC bra_AFF8_no_intersect          ; If the intersect doesn't exist
@bra_AFE8_bomb_hit:
C - - - - - 0x018FF8 06:AFE8: 20 0A B0  JSR sub_B00A_hit                   ;
C - - - - - 0x018FFB 06:AFEB: 4C FB AF  JMP loc_AFFB_next                  ;

bra_AFEE_check_bullets:
C - - - - - 0x018FFE 06:AFEE: A6 7A     LDX vBulletCount                   ; set loop counter
@bra_AFF0_loop:                                                            ; loop by x
C - - - - - 0x019000 06:AFF0: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet ;
C - - - - - 0x019003 06:AFF3: B0 0B     BCS bra_B000_bullet_hit            ; If the intersect is exist
C - - - - - 0x019005 06:AFF5: CA        DEX                                ; decrement loop counter
C - - - - - 0x019006 06:AFF6: 10 F8     BPL @bra_AFF0_loop                 ; If Register X >= 0x00
bra_AFF8_no_intersect:
C - - - - - 0x019008 06:AFF8: 20 62 D5  JSR sub_D562_has_character_damage  ;
loc_AFFB_next:
bra_AFFB_next:
C D 1 - - - 0x01900B 06:AFFB: C6 1A     DEC vTempCounter1A                 ; decrements loop counter
C - - - - - 0x01900D 06:AFFD: 10 B2     BPL bra_AFB1_loop                  ; If vTempCounter1A >= 0
C - - - - - 0x01900F 06:AFFF: 60        RTS                                ;

bra_B000_bullet_hit:
C - - - - - 0x019010 06:B000: A9 00     LDA #$00                      ;
C - - - - - 0x019012 06:B002: 95 8F     STA vBulletStatus,X           ; clear
C - - - - - 0x019014 06:B004: 20 0A B0  JSR sub_B00A_hit              ;
C - - - - - 0x019017 06:B007: 4C FB AF  JMP loc_AFFB_next             ;

sub_B00A_hit:
C - - - - - 0x01901A 06:B00A: A6 1A     LDX vTempCounter1A            ;
C - - - - - 0x01901C 06:B00C: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x01901F 06:B00F: 29 C1     AND #$C1                      ;
C - - - - - 0x019021 06:B011: 09 22     ORA #$22                      ; CONSTANT - the jump + the dying
C - - - - - 0x019023 06:B013: 9D 20 03  STA vEnemyAStatus,X           ; changes a substatus
C - - - - - 0x019026 06:B016: A9 10     LDA #$10                      ; Initializes a jump counter
C - - - - - 0x019028 06:B018: 9D 4A 03  STA vEnemyAJumpCounter,X      ;
C - - - - - 0x01902B 06:B01B: A9 03     LDA #$03                      ; CONSTANT - jump by side
C - - - - - 0x01902D 06:B01D: 9D 56 03  STA vEnemyAJumpType,X         ;
C - - - - - 0x019030 06:B020: A9 00     LDA #$00                      ;
C - - - - - 0x019032 06:B022: 9D 44 03  STA vEnemyAFrame_Counter,X    ; reset a counter
bra_B025_RTS:
C - - - - - 0x019035 06:B025: 60        RTS                           ;

; In: Register X - the enemyA number
sub_B026_status_behavior:
C - - - - - 0x019036 06:B026: BD 20 03  LDA vEnemyAStatus,X           ;
C - - - - - 0x019039 06:B029: 10 FA     BPL bra_B025_RTS              ; If the status isn't used
C - - - - - 0x01903B 06:B02B: 4A        LSR                           ;
C - - - - - 0x01903C 06:B02C: 4A        LSR                           ;
C - - - - - 0x01903D 06:B02D: 90 03     BCC bra_B032_main             ; If vEnemyAStatus doesn't contain 0x02 (see M flag, vEnemyAStatus)
C - - - - - 0x01903F 06:B02F: 4C 2A B1  JMP loc_B12A_jump             ;

bra_B032_main:
C - - - - - 0x019042 06:B032: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x019044 06:B034: 29 01     AND #$01                           ;
C - - - - - 0x019046 06:B036: D0 06     BNE @bra_B03E_skip                 ; Branch if vLowCounter doesn't multiple of 2
C - - - - - 0x019048 06:B038: 20 B3 B0  JSR sub_B0B3_update_jump_params_   ;
C - - - - - 0x01904B 06:B03B: 20 84 B0  JSR sub_B084_execute_fly_step      ;
@bra_B03E_skip:
C - - - - - 0x01904E 06:B03E: A0 00     LDY #$00                           ; CONSTANT - The weapon is lowered
C - - - - - 0x019050 06:B040: BD 56 03  LDA vEnemyAJumpType,X              ;
C - - - - - 0x019053 06:B043: 29 07     AND #$07                           ;
C - - - - - 0x019055 06:B045: F0 11     BEQ bra_B058_prepare_rendering     ; If vEnemyAJumpType == 0%XXXXX000
C - - - - - 0x019057 06:B047: C9 04     CMP #$04                           ;
C - - - - - 0x019059 06:B049: B0 0D     BCS bra_B058_prepare_rendering     ; If vEnemyAJumpType == 0%XXXXX1XX
C - - - - - 0x01905B 06:B04B: C9 03     CMP #$03                           ;
C - - - - - 0x01905D 06:B04D: D0 07     BNE @bra_B056_skip                 ; If vEnemyAJumpType != 0%XXXXX011
C - - - - - 0x01905F 06:B04F: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x019062 06:B052: C9 30     CMP #$30                           ;
C - - - - - 0x019064 06:B054: 90 02     BCC bra_B058_prepare_rendering     ; If vJumpCounter < 0x30
@bra_B056_skip:
C - - - - - 0x019066 06:B056: A0 04     LDY #$04                           ; CONSTANT - the weapon is aimed at the target
; In: Register Y - sprite_magic2 (The offset by the address)
bra_B058_prepare_rendering:
loc_B058_prepare_rendering:
C D 1 - - - 0x019068 06:B058: BD 38 03  LDA vEnemyAPosXLow,X               ;
C - - - - - 0x01906B 06:B05B: 85 00     STA ram_0000                       ; prepares the 1st parameter
C - - - - - 0x01906D 06:B05D: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x019070 06:B060: 85 01     STA ram_0001                       ; prepares the 2nd parameter
C - - - - - 0x019072 06:B062: 20 7B D6  JSR sub_D67B_out_of_sight          ;
C - - - - - 0x019075 06:B065: 90 03     BCC bra_B06A_skip                  ; If the enemy is visible
C - - - - - 0x019077 06:B067: 4C 7F D7  JMP loc_D77F_free_enemyA           ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B06A_skip:
C - - - - - 0x01907A 06:B06A: 20 AC D6  JSR sub_D6AC_out_of_screen         ;
C - - - - - 0x01907D 06:B06D: 90 03     BCC bra_B072_skip                  ; If the enemy is on the screen
C - - - - - 0x01907F 06:B06F: 4C 41 D7  JMP loc_D741_enemyA_off_screen     ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B072_skip:
C - - - - - 0x019082 06:B072: 20 25 D7  JSR sub_D725_enemyA_on_screen      ;
C - - - - - 0x019085 06:B075: 98        TYA                                ;
C - - - - - 0x019086 06:B076: 18        CLC                                ;
C - - - - - 0x019087 06:B077: 6D 02 03  ADC vEnemyASpriteMagic2            ; + Y ~> sprite_magic2
C - - - - - 0x01908A 06:B07A: 85 01     STA ram_0001                       ;
C - - - - - 0x01908C 06:B07C: AD 03 03  LDA vEnemyASpriteMagic3            ; ~> sprite_magic3
C - - - - - 0x01908F 06:B07F: 85 02     STA ram_0002                       ;
C - - - - - 0x019091 06:B081: 4C 33 CE  JMP loc_CE33_add_sprite_magic      ; bank FF

sub_B084_execute_fly_step:
C - - - - - 0x019094 06:B084: 20 FB B0  JSR sub_B0FB_set_address           ; see $AF87
C - - - - - 0x019097 06:B087: BC 56 03  LDY vEnemyAJumpType,X              ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x01909A 06:B08A: B1 00     LDA (ram_0000),Y                   ;
C - - - - - 0x01909C 06:B08C: 0A        ASL                                ; *2, because the set contains 2 bytes
C - - - - - 0x01909D 06:B08D: A8        TAY                                ;
C - - - - - 0x01909E 06:B08E: BD 2C 03  LDA vEnemyAPosY,X                  ;
C - - - - - 0x0190A1 06:B091: 18        CLC                                ;
C - - - - - 0x0190A2 06:B092: 79 D4 DA  ADC tbl_flying_track_offset,Y      ;
C - - - - - 0x0190A5 06:B095: 9D 2C 03  STA vEnemyAPosY,X                  ; <~ posY + offset
C - - - - - 0x0190A8 06:B098: A9 00     LDA #$00                           ;
C - - - - - 0x0190AA 06:B09A: 85 02     STA ram_0002                       ; $0002 = 0x00
C - - - - - 0x0190AC 06:B09C: B9 D5 DA  LDA tbl_flying_track_offset + 1,Y  ;
C - - - - - 0x0190AF 06:B09F: 10 02     BPL @bra_B0A3_skip                 ; If the offset >= 0x00
C - - - - - 0x0190B1 06:B0A1: C6 02     DEC ram_0002                       ; $0002 = 0xFF, i.e. -1
@bra_B0A3_skip:
C - - - - - 0x0190B3 06:B0A3: 18        CLC                                ;
C - - - - - 0x0190B4 06:B0A4: 7D 38 03  ADC vEnemyAPosXLow,X               ;
C - - - - - 0x0190B7 06:B0A7: 9D 38 03  STA vEnemyAPosXLow,X               ; <~ posX + offset
C - - - - - 0x0190BA 06:B0AA: BD 3E 03  LDA vEnemyAPosXHigh,X              ;
C - - - - - 0x0190BD 06:B0AD: 65 02     ADC ram_0002                       ;
C - - - - - 0x0190BF 06:B0AF: 9D 3E 03  STA vEnemyAPosXHigh,X              ; changed PosXHigh (+1 or -1), if PosXLow was overflow
C - - - - - 0x0190C2 06:B0B2: 60        RTS                                ;

sub_B0B3_update_jump_params_:
C - - - - - 0x0190C3 06:B0B3: 20 FB B0  JSR sub_B0FB_set_address            ; see $AF87
C - - - - - 0x0190C6 06:B0B6: DE 4A 03  DEC vEnemyAJumpCounter,X            ;
C - - - - - 0x0190C9 06:B0B9: D0 17     BNE @bra_B0D2_skip                  ; If jumpCounter != 0x00
C - - - - - 0x0190CB 06:B0BB: FE 56 03  INC vEnemyAJumpType,X               ; set next jump type
C - - - - - 0x0190CE 06:B0BE: BD 56 03  LDA vEnemyAJumpType,X               ; prepare an input parameter
C - - - - - 0x0190D1 06:B0C1: 20 04 B1  JSR sub_B104_try_to_add_projectile  ;
C - - - - - 0x0190D4 06:B0C4: 29 0F     AND #$0F                            ;
C - - - - - 0x0190D6 06:B0C6: 9D 56 03  STA vEnemyAJumpType,X               ; adjust by mask
C - - - - - 0x0190D9 06:B0C9: 18        CLC                                 ;
C - - - - - 0x0190DA 06:B0CA: 69 10     ADC #$10                            ; see $AF87 + 0x10
C - - - - - 0x0190DC 06:B0CC: A8        TAY                                 ;
C - - - - - 0x0190DD 06:B0CD: B1 00     LDA (ram_0000),Y                    ;
C - - - - - 0x0190DF 06:B0CF: 9D 4A 03  STA vEnemyAJumpCounter,X            ; assign an new counter
@bra_B0D2_skip:
C - - - - - 0x0190E2 06:B0D2: A9 40     LDA #$40                            ;
C - - - - - 0x0190E4 06:B0D4: DD 2C 03  CMP vEnemyAPosY,X                   ;
C - - - - - 0x0190E7 06:B0D7: B0 07     BCS @bra_B0E0_assign                ; If 0x40 >= enemyAPosY
C - - - - - 0x0190E9 06:B0D9: A9 BF     LDA #$BF                            ;
C - - - - - 0x0190EB 06:B0DB: DD 2C 03  CMP vEnemyAPosY,X                   ;
C - - - - - 0x0190EE 06:B0DE: B0 03     BCS @bra_B0E3_skip                  ; If 0xBF >= enemyAPosY
@bra_B0E0_assign:
C - - - - - 0x0190F0 06:B0E0: 9D 2C 03  STA vEnemyAPosY,X                   ; <~ 0x40 or 0xBF
@bra_B0E3_skip:
C - - - - - 0x0190F3 06:B0E3: BC 56 03  LDY vEnemyAJumpType,X               ; vJumpType is {0x00, 0x01, ..., 0x0F}
C - - - - - 0x0190F6 06:B0E6: B1 00     LDA (ram_0000),Y                    ;
C - - - - - 0x0190F8 06:B0E8: 29 08     AND #$08                            ;
C - - - - - 0x0190FA 06:B0EA: F0 02     BEQ @bra_B0EE_set_direction         ; If the value contains 0x08 flag
C - - - - - 0x0190FC 06:B0EC: A9 01     LDA #$01                            ; CONSTANT - the left direction
@bra_B0EE_set_direction:
C - - - - - 0x0190FE 06:B0EE: 85 05     STA ram_0005                        ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x019100 06:B0F0: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x019103 06:B0F3: 29 FE     AND #$FE                            ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x019105 06:B0F5: 05 05     ORA ram_0005                        ;
C - - - - - 0x019107 06:B0F7: 9D 20 03  STA vEnemyAStatus,X                 ;
C - - - - - 0x01910A 06:B0FA: 60        RTS                                 ;

sub_B0FB_set_address:
C - - - - - 0x01910B 06:B0FB: A9 87     LDA #$87             ;
C - - - - - 0x01910D 06:B0FD: 85 00     STA ram_0000         ;
C - - - - - 0x01910F 06:B0FF: A9 AF     LDA #$AF             ;
C - - - - - 0x019111 06:B101: 85 01     STA ram_0001         ; (ram_0000),0 = $AF87
C - - - - - 0x019113 06:B103: 60        RTS                  ;

; In: Register A - jumpType
sub_B104_try_to_add_projectile:
C - - - - - 0x019114 06:B104: 48        PHA                                      ; store A
C - - - - - 0x019115 06:B105: 29 07     AND #$07                                 ;
C - - - - - 0x019117 06:B107: C9 03     CMP #$03                                 ;
C - - - - - 0x019119 06:B109: D0 1D     BNE @bra_B128_pop                        ; If jumpType != 0%XXXXX011, i.e. jumpType != 0x03 and jumpType != 0x0B
C - - - - - 0x01911B 06:B10B: A9 02     LDA #$02                                 ; CONSTANT - the projectile number offset
C - - - - - 0x01911D 06:B10D: D0 02     BNE @bra_B111_skip                       ; Always true

C - - - - - 0x01911F 06:B10F: A9 00     LDA #$00                                 ; !(UNUSED), not used
@bra_B111_skip:
C - - - - - 0x019121 06:B111: 18        CLC                                      ;
C - - - - - 0x019122 06:B112: 65 1A     ADC vTempCounter1A                       ;
C - - - - - 0x019124 06:B114: 85 05     STA ram_0005                             ; the enemyAnumber + 0x02
C - - - - - 0x019126 06:B116: A0 06     LDY #$06                                 ; prepares the projectile params number
C - - - - - 0x019128 06:B118: 20 37 A9  JSR sub_A937_prepare_projectile_params_  ;
C - - - - - 0x01912B 06:B11B: A4 05     LDY ram_0005                             ; prepares the projectile number
C - - - - - 0x01912D 06:B11D: 20 50 A9  JSR sub_A950_set_projectile              ;
C - - - - - 0x019130 06:B120: A9 04     LDA #$04                                 ;
C - - - - - 0x019132 06:B122: 99 46 03  STA vEnemyAProjectileFrame_Counter,Y     ; assign a frame counter
C - - - - - 0x019135 06:B125: 99 28 03  STA vEnemyAProjectileVelocity,Y          ; assign a velocity
@bra_B128_pop:
C - - - - - 0x019138 06:B128: 68        PLA                                      ; retrieve A (see $B104)
C - - - - - 0x019139 06:B129: 60        RTS                                      ;

loc_B12A_jump:
C D 1 - - - 0x01913A 06:B12A: BD 2C 03  LDA vEnemyAPosY,X                      ;
C - - - - - 0x01913D 06:B12D: C9 DF     CMP #$DF                               ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01913F 06:B12F: B0 0F     BCS bra_B140_skip                      ; If PosY >= 0xDF
C - - - - - 0x019141 06:B131: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x019144 06:B134: 6A        ROR                                    ;
C - - - - - 0x019145 06:B135: B0 06     BCS bra_B13D_left                      ; If the enemy is looking to the left
C - - - - - 0x019147 06:B137: 20 FD D6  JSR sub_D6FD_dec_EnemyAPosXLow_unsafe  ;
C - - - - - 0x01914A 06:B13A: 4C 40 B1  JMP loc_B140_continue                  ;

bra_B13D_left:
C - - - - - 0x01914D 06:B13D: 20 1C D7  JSR sub_D71C_inc_EnemyAPosXLow_unsafe  ;
loc_B140_continue:
bra_B140_skip:
C D 1 - - - 0x019150 06:B140: BC 4A 03  LDY vEnemyAJumpCounter,X               ;
C - - - - - 0x019153 06:B143: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y        ; X = [0x00-0x2F]
C - - - - - 0x019156 06:B146: 18        CLC                                    ;
C - - - - - 0x019157 06:B147: 7D 2C 03  ADC vEnemyAPosY,X                      ;
C - - - - - 0x01915A 06:B14A: C9 DF     CMP #$DF                               ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x01915C 06:B14C: 90 09     BCC @bra_B157_skip                     ; If Register A < 0xDF
C - - - - - 0x01915E 06:B14E: A0 DF     LDY #$DF                               ; 0xDF -> vPosY
C - - - - - 0x019160 06:B150: C9 F8     CMP #$F8                               ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x019162 06:B152: 90 02     BCC @bra_B156_set                      ; If Register A < 0xF8
C - - - - - 0x019164 06:B154: A0 00     LDY #$00                               ; 0x00 -> vPosY
@bra_B156_set:
C - - - - - 0x019166 06:B156: 98        TYA                                    ; A <~ 0x00 or 0xDF
@bra_B157_skip:
C - - - - - 0x019167 06:B157: 9D 2C 03  STA vEnemyAPosY,X                      ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x01916A 06:B15A: BC 4A 03  LDY vEnemyAJumpCounter,X               ;
C - - - - - 0x01916D 06:B15D: C0 18     CPY #$18                               ; CONSTANT - a maximum amplitude
C - - - - - 0x01916F 06:B15F: 90 09     BCC bra_B16A_inc                       ; If vEnemyAJumpCounter < 0x18
C - - - - - 0x019171 06:B161: C9 DF     CMP #$DF                               ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x019173 06:B163: 90 05     BCC bra_B16A_inc                       ; If PosY < 0xDF
C - - - - - 0x019175 06:B165: A0 FF     LDY #$FF                               ; CONSTANT - death mark
C - - - - - 0x019177 06:B167: 4C 58 B0  JMP loc_B058_prepare_rendering         ; prepares the sprite_magic2 (The offset by the address)

bra_B16A_inc:
C - - - - - 0x01917A 06:B16A: FE 4A 03  INC vEnemyAJumpCounter,X           ;
C - - - - - 0x01917D 06:B16D: A9 2F     LDA #$2F                           ; CONSTANT - a maximum jump value
C - - - - - 0x01917F 06:B16F: DD 4A 03  CMP vEnemyAJumpCounter,X           ;
C - - - - - 0x019182 06:B172: B0 03     BCS @bra_B177_skip                 ; If 0x2F >= jumpCounter, i.e. less than maximum
C - - - - - 0x019184 06:B174: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
@bra_B177_skip:
C - - - - - 0x019187 06:B177: A0 08     LDY #$08                           ; CONSTANT - jump out frame
C - - - - - 0x019189 06:B179: 4C 58 B0  JMP loc_B058_prepare_rendering     ; prepares the sprite_magic2 (The offset by the address)

; 1 byte - position Y
; 2 byte - position X
; 3 byte - height
; 4 byte - width
tbl_B17C_hitboxes:
- D 1 - - - 0x01918C 06:B17C: 00        .byte $00, $00, $20, $04  ; Cat with the gun, Egyptian with bow, Egyptian with boomerung
- D 1 - - - 0x019190 06:B180: 00        .byte $00, $00, $18, $04  ; Cat with the gun, Egyptian with bow, Egyptian with boomerung
- D 1 - - - 0x019194 06:B184: EE        .byte $EE, $06, $06, $04  ; The knife
- D 1 - - - 0x019198 06:B188: F2        .byte $F2, $06, $06, $04  ; The knife
- D 1 - - - 0x01919C 06:B18C: EE        .byte $EE, $08, $08, $08  ; The knife
- D - - - - 0x0191A0 06:B190: EE        .byte $EE, $FA, $06, $04
- D - - - - 0x0191A4 06:B194: F2        .byte $F2, $FA, $06, $04
- D - - - - 0x0191A8 06:B198: EE        .byte $EE, $F8, $08, $08
- D 1 - - - 0x0191AC 06:B19C: 00        .byte $00, $00, $20, $04  ; Karate-girl
- D 1 - - - 0x0191B0 06:B1A0: 00        .byte $00, $00, $18, $04  ; Karate-girl
- D 1 - - - 0x0191B4 06:B1A4: 00        .byte $00, $00, $0C, $08  ; Karate-girl
- D 1 - - - 0x0191B8 06:B1A8: 0C        .byte $0C, $00, $0C, $08  ; Ninja upside down
- D 1 - - - 0x0191BC 06:B1AC: 20        .byte $20, $00, $20, $08  ; Ninja upside down
- D 1 - - - 0x0191C0 06:B1B0: 18        .byte $18, $00, $18, $08  ; Ninja upside down
- D 1 - - - 0x0191C4 06:B1B4: F0        .byte $F0, $04, $10, $04  ; Boomerung
- D 1 - - - 0x0191C8 06:B1B8: F8        .byte $F8, $04, $10, $04  ; Boomerung
- D 1 - - - 0x0191CC 06:B1BC: F0        .byte $F0, $FC, $10, $04  ; Boomerung
- D 1 - - - 0x0191D0 06:B1C0: F8        .byte $F8, $FC, $10, $04  ; Boomerung

tbl_B1C4_status_flags:
; Cat with the knife
- D 1 - - - 0x0191D4 06:B1C4: 00        .byte $00   ; nothing
- D 1 - - - 0x0191D5 06:B1C5: 00        .byte $00   ; 
- D 1 - - - 0x0191D6 06:B1C6: 10        .byte $10   ; squatting
- D 1 - - - 0x0191D7 06:B1C7: 10        .byte $10   ; 
- D 1 - - - 0x0191D8 06:B1C8: 10        .byte $10   ; 
- D 1 - - - 0x0191D9 06:B1C9: 04        .byte $04   ; close contact
- D 1 - - - 0x0191DA 06:B1CA: 04        .byte $04   ; 
- D 1 - - - 0x0191DB 06:B1CB: 08        .byte $08   ; stop
; Karate-girl, Egyptian with bow, Egyptian with a boomerung
- D 1 - - - 0x0191DC 06:B1CC: 00        .byte $00   ; nothing
- D 1 - - - 0x0191DD 06:B1CD: 10        .byte $10   ; squatting
- D 1 - - - 0x0191DE 06:B1CE: 10        .byte $10   ; 
- D 1 - - - 0x0191DF 06:B1CF: 10        .byte $10   ; 
- D 1 - - - 0x0191E0 06:B1D0: 0C        .byte $0C   ; shoot
- D 1 - - - 0x0191E1 06:B1D1: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E2 06:B1D2: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E3 06:B1D3: 0C        .byte $0C   ; 
; Cat with the gun
- D 1 - - - 0x0191E4 06:B1D4: 00        .byte $00   ; nothing
- D 1 - - - 0x0191E5 06:B1D5: 10        .byte $10   ; squatting
- D 1 - - - 0x0191E6 06:B1D6: 10        .byte $10   ; 
- D 1 - - - 0x0191E7 06:B1D7: 10        .byte $10   ; 
- D 1 - - - 0x0191E8 06:B1D8: 0C        .byte $0C   ; shoot
- D 1 - - - 0x0191E9 06:B1D9: 0C        .byte $0C   ; 
- D 1 - - - 0x0191EA 06:B1DA: 0C        .byte $0C   ; 
- D 1 - - - 0x0191EB 06:B1DB: 08        .byte $08   ; stop
; Ninja upside down 
- D 1 - - - 0x0191EC 06:B1DC: 00        .byte $00   ; nothing
- D 1 - - - 0x0191ED 06:B1DD: 00        .byte $00   ; 
- D 1 - - - 0x0191EE 06:B1DE: 08        .byte $08   ; shoot
- D 1 - - - 0x0191EF 06:B1DF: 08        .byte $08   ; 
- D - - - - 0x0191F0 06:B1E0: 08        .byte $08   ; 
- D - - - - 0x0191F1 06:B1E1: 08        .byte $08   ; 
- D 1 - - - 0x0191F2 06:B1E2: 08        .byte $08   ; 
- D 1 - - - 0x0191F3 06:B1E3: 08        .byte $08   ; 

loc_B1E4_enemy:
C D 1 - - - 0x0191F4 06:B1E4: 20 EA B1  JSR sub_B1EA_main          ;
C - - - - - 0x0191F7 06:B1E7: 4C 73 A9  JMP loc_A973_projectile    ;

sub_B1EA_main:
C - - - - - 0x0191FA 06:B1EA: A2 01     LDX #$01                               ;
C - - - - - 0x0191FC 06:B1EC: 86 1A     STX vTempCounter1A                     ; set loop counter (the enemyA number)
bra_B1EE_loop:                                                                 ; loop by vTempCounter1A (2 times)
C - - - - - 0x0191FE 06:B1EE: A6 1A     LDX vTempCounter1A                     ; prepares an input parameter
C - - - - - 0x019200 06:B1F0: 20 56 B3  JSR sub_B356_status_behavior           ;
C - - - - - 0x019203 06:B1F3: A6 1A     LDX vTempCounter1A                     ; X <~ the enemyA number
C - - - - - 0x019205 06:B1F5: BD 20 03  LDA vEnemyAStatus,X                    ;
C - - - - - 0x019208 06:B1F8: C9 E0     CMP #$E0                               ;
C - - - - - 0x01920A 06:B1FA: B0 53     BCS bra_B24F_next                      ; If vEnemyAStatus >= 0xE0
C - - - - - 0x01920C 06:B1FC: C9 C0     CMP #$C0                               ;
C - - - - - 0x01920E 06:B1FE: 90 4F     BCC bra_B24F_next                      ; If vEnemyAStatus < 0xC0 else only 0xCX or 0xDX
C - - - - - 0x019210 06:B200: 20 F5 B2  JSR sub_B2F5_prepare_hitbox            ;
C - - - - - 0x019213 06:B203: 20 60 D6  JSR sub_D660_is_bomb_exploding         ;
C - - - - - 0x019216 06:B206: B0 0B     BCS @bra_B213_bomb_hit                 ; If the bomb is exploding
C - - - - - 0x019218 06:B208: A5 5F     LDA vChrLiveStatus                     ;
C - - - - - 0x01921A 06:B20A: 29 02     AND #$02                               ; CONSTANT - Goemon
C - - - - - 0x01921C 06:B20C: F0 0B     BEQ bra_B219_check_bullets             ; If the character isn't Goemon
C - - - - - 0x01921E 06:B20E: 20 06 D6  JSR sub_D606_have_intersect_sword      ;
C - - - - - 0x019221 06:B211: 90 34     BCC bra_B247_skip                      ; If the intersect doesn't exist
@bra_B213_bomb_hit:
C - - - - - 0x019223 06:B213: 20 5E B2  JSR sub_B25E_hit                       ;
C - - - - - 0x019226 06:B216: 4C 4F B2  JMP loc_B24F_next                      ;

bra_B219_check_bullets:
C - - - - - 0x019229 06:B219: A6 7A     LDX vBulletCount                       ; set loop counter
@bra_B21B_loop:                                                                ; loop by x
C - - - - - 0x01922B 06:B21B: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet     ;
C - - - - - 0x01922E 06:B21E: B0 34     BCS bra_B254_bullet_hit                ; If the intersect is exist
C - - - - - 0x019230 06:B220: CA        DEX                                    ; decrement loop counter
C - - - - - 0x019231 06:B221: 10 F8     BPL @bra_B21B_loop                     ; If Register X >= 0x00
C - - - - - 0x019233 06:B223: AD 00 03  LDA vEnemyA                            ;
C - - - - - 0x019236 06:B226: C9 37     CMP #$37                               ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019238 06:B228: D0 1D     BNE bra_B247_skip                      ; If EnemyA != 0x37
C - - - - - 0x01923A 06:B22A: A6 1A     LDX vTempCounter1A                     ; X <~ the enemyA number
C - - - - - 0x01923C 06:B22C: BD 22 03  LDA vEnemyAProjectileStatus,X          ;
C - - - - - 0x01923F 06:B22F: 30 16     BMI bra_B247_skip                      ; If the projectile is used
C - - - - - 0x019241 06:B231: 20 E0 B2  JSR sub_B2E0_prepare_boomerung_hitbox  ;
C - - - - - 0x019244 06:B234: A6 7A     LDX vBulletCount                       ; set loop counter
@bra_B236_loop:                                                                ; loop by x
C - - - - - 0x019246 06:B236: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet     ;
C - - - - - 0x019249 06:B239: 90 09     BCC @bra_B244_no_bullet_hit            ; If the intersect doesn't exist
C - - - - - 0x01924B 06:B23B: A9 10     LDA #$10                               ; The sound of a bullet hitting an armored enemy
C - - - - - 0x01924D 06:B23D: 20 20 C4  JSR sub_C420_add_sound_effect          ; bank FF
C - - - - - 0x019250 06:B240: A9 00     LDA #$00                               ;
C - - - - - 0x019252 06:B242: 95 8F     STA vBulletStatus,X                    ; clear
@bra_B244_no_bullet_hit:
C - - - - - 0x019254 06:B244: CA        DEX                                    ; decrement loop counter
C - - - - - 0x019255 06:B245: 10 EF     BPL @bra_B236_loop                     ;
bra_B247_skip:
C - - - - - 0x019257 06:B247: A6 1A     LDX vTempCounter1A                     ; X <~ the enemyA number
C - - - - - 0x019259 06:B249: 20 AF B2  JSR sub_B2AF_prepare_projectile_hitbox ;
C - - - - - 0x01925C 06:B24C: 20 62 D5  JSR sub_D562_has_character_damage      ;
loc_B24F_next:
bra_B24F_next:
C D 1 - - - 0x01925F 06:B24F: C6 1A     DEC vTempCounter1A                     ; decrements loop counter
C - - - - - 0x019261 06:B251: 10 9B     BPL bra_B1EE_loop                      ; If vTempCounter1A >= 0
C - - - - - 0x019263 06:B253: 60        RTS                                    ;

; In: Register X - the number of the bullet
bra_B254_bullet_hit:
C - - - - - 0x019264 06:B254: A9 00     LDA #$00                  ;
C - - - - - 0x019266 06:B256: 95 8F     STA vBulletStatus,X       ; clear
C - - - - - 0x019268 06:B258: 20 5E B2  JSR sub_B25E_hit          ;
C - - - - - 0x01926B 06:B25B: 4C 4F B2  JMP loc_B24F_next         ;

sub_B25E_hit:
C - - - - - 0x01926E 06:B25E: A6 1A     LDX vTempCounter1A             ; X <~ the enemyA number
C - - - - - 0x019270 06:B260: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x019273 06:B263: C9 37     CMP #$37                       ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019275 06:B265: D0 21     BNE @bra_B288_skip             ; If EnemyA != 0x37
C - - - - - 0x019277 06:B267: A0 04     LDY #$04                       ; the jump counter value #1
C - - - - - 0x019279 06:B269: AD 14 02  LDA vCurrentWeaponStatus       ;
C - - - - - 0x01927C 06:B26C: C9 41     CMP #$41                       ; CONSTANT - 'the weapon is activated' + 'Using the bomb'
C - - - - - 0x01927E 06:B26E: F0 08     BEQ @bra_B278_skip             ; If the character isn't using the bomb
C - - - - - 0x019280 06:B270: A0 02     LDY #$02                       ; the jump counter value #2
C - - - - - 0x019282 06:B272: C9 42     CMP #$42                       ; CONSTANT - 'the weapon is activated' + 'Using the artillery rifle'
C - - - - - 0x019284 06:B274: F0 02     BEQ @bra_B278_skip             ; If the character isn't using the artillery rifle
C - - - - - 0x019286 06:B276: A0 01     LDY #$01                       ; the jump counter value #3
@bra_B278_skip:
C - - - - - 0x019288 06:B278: DE 50 03  DEC vEnemyAHealthPoints,X      ;
C - - - - - 0x01928B 06:B27B: F0 0B     BEQ @bra_B288_skip             ; If the health points is zero
C - - - - - 0x01928D 06:B27D: 88        DEY                            ; decrements the jump counter
C - - - - - 0x01928E 06:B27E: D0 08     BNE @bra_B288_skip             ; If jumpCounter > 0
C - - - - - 0x019290 06:B280: BD 22 03  LDA vEnemyAProjectileStatus,X  ;
C - - - - - 0x019293 06:B283: 30 03     BMI @bra_B288_skip             ; If the projectile (boomerung) is used
C - - - - - 0x019295 06:B285: 20 73 B7  JSR sub_B773_start_to_shoot    ;
@bra_B288_skip:
C - - - - - 0x019298 06:B288: A9 22     LDA #$22                       ; CONSTANT - the jump + the dying
C - - - - - 0x01929A 06:B28A: 20 4E B7  JSR sub_B74E_change_substatus  ;
C - - - - - 0x01929D 06:B28D: A9 03     LDA #$03                       ; CONSTANT - jump by side
C - - - - - 0x01929F 06:B28F: 9D 56 03  STA vEnemyAJumpType,X          ;
C - - - - - 0x0192A2 06:B292: A9 00     LDA #$00                       ;
C - - - - - 0x0192A4 06:B294: 9D 44 03  STA vEnemyAFrame_Counter,X     ; reset a counter
C - - - - - 0x0192A7 06:B297: A0 10     LDY #$10                       ; the jump counter value #4
C - - - - - 0x0192A9 06:B299: AD 00 03  LDA vEnemyA                    ;
C - - - - - 0x0192AC 06:B29C: C9 38     CMP #$38                       ; CONSTANT - Ninja upside down
C - - - - - 0x0192AE 06:B29E: D0 0A     BNE @bra_B2AA_skip             ; If EnemyA != 0x38
C - - - - - 0x0192B0 06:B2A0: BD 2C 03  LDA vEnemyAPosY,X              ;
C - - - - - 0x0192B3 06:B2A3: 69 0B     ADC #$0B                       ;
C - - - - - 0x0192B5 06:B2A5: 9D 2C 03  STA vEnemyAPosY,X              ; PosY <~ PosY + 0x0B (the small landing)
C - - - - - 0x0192B8 06:B2A8: A0 18     LDY #$18                       ; the jump counter value #5
@bra_B2AA_skip:
C - - - - - 0x0192BA 06:B2AA: 98        TYA                            ;
C - - - - - 0x0192BB 06:B2AB: 9D 4A 03  STA vEnemyAJumpCounter,X       ; Initializes a jump counter
bra_B2AE_RTS:
C - - - - - 0x0192BE 06:B2AE: 60        RTS                            ;

sub_B2AF_prepare_projectile_hitbox:
C - - - - - 0x0192BF 06:B2AF: AD 00 03  LDA vEnemyA                  ;
C - - - - - 0x0192C2 06:B2B2: C9 19     CMP #$19                     ; CONSTANT - Karate-girl
C - - - - - 0x0192C4 06:B2B4: F0 F8     BEQ bra_B2AE_RTS             ; If EnemyA == 0x19
C - - - - - 0x0192C6 06:B2B6: C9 35     CMP #$35                     ; CONSTANT - Egyptian with bow
C - - - - - 0x0192C8 06:B2B8: F0 F4     BEQ bra_B2AE_RTS             ; If EnemyA == 0x35
C - - - - - 0x0192CA 06:B2BA: C9 38     CMP #$38                     ; CONSTANT - Ninja upside down
C - - - - - 0x0192CC 06:B2BC: F0 F0     BEQ bra_B2AE_RTS             ; If EnemyA == 0x38
C - - - - - 0x0192CE 06:B2BE: C9 37     CMP #$37                     ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x0192D0 06:B2C0: F0 59     BEQ bra_B31B_skip            ; If EnemyA == 0x37
C - - - - - 0x0192D2 06:B2C2: A0 08     LDY #$08                     ; the offset value #1
C - - - - - 0x0192D4 06:B2C4: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x0192D7 06:B2C7: 48        PHA                          ; store a status
C - - - - - 0x0192D8 06:B2C8: 29 14     AND #$14                     ; CONSTANT - 'squatting' or 'close contact' status
C - - - - - 0x0192DA 06:B2CA: F0 08     BEQ @bra_B2D4_skip           ; If 'squatting' or 'close contact' isn't activated
C - - - - - 0x0192DC 06:B2CC: A0 0C     LDY #$0C                     ; the offset value #2
C - - - - - 0x0192DE 06:B2CE: C9 04     CMP #$04                     ; CONSTANT - 'close contact' status
C - - - - - 0x0192E0 06:B2D0: D0 02     BNE @bra_B2D4_skip           ; If 'close contact' isn't activated
C - - - - - 0x0192E2 06:B2D2: A0 10     LDY #$10                     ; the offset value #3
@bra_B2D4_skip:
C - - - - - 0x0192E4 06:B2D4: 68        PLA                          ; retrieve a status (see $B2C7)
C - - - - - 0x0192E5 06:B2D5: 6A        ROR                          ;
C - - - - - 0x0192E6 06:B2D6: 90 4E     BCC bra_B326_assign_hitbox   ; If the enemy is looking to the right
C - - - - - 0x0192E8 06:B2D8: 98        TYA                          ;
C - - - - - 0x0192E9 06:B2D9: 18        CLC                          ;
C - - - - - 0x0192EA 06:B2DA: 69 18     ADC #$18                     ;
C - - - - - 0x0192EC 06:B2DC: A8        TAY                          ; Y <~ Y + 0x18
C - - - - - 0x0192ED 06:B2DD: 4C 26 B3  JMP loc_B326_assign_hitbox   ;

sub_B2E0_prepare_boomerung_hitbox:
C - - - - - 0x0192F0 06:B2E0: A0 38     LDY #$38                     ; the offset value #1
C - - - - - 0x0192F2 06:B2E2: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x0192F5 06:B2E5: 6A        ROR                          ;
C - - - - - 0x0192F6 06:B2E6: 90 02     BCC @bra_B2EA_skip           ; If the enemy is looking to the right
C - - - - - 0x0192F8 06:B2E8: A0 40     LDY #$40                     ; the offset value #2
@bra_B2EA_skip:
C - - - - - 0x0192FA 06:B2EA: 29 08     AND #$08                     ; CONSTANT - the squatting + shift right
C - - - - - 0x0192FC 06:B2EC: F0 04     BEQ @bra_B2F2_skip           ; If 'squatting' isn't activated
C - - - - - 0x0192FE 06:B2EE: C8        INY                          ;
C - - - - - 0x0192FF 06:B2EF: C8        INY                          ;
C - - - - - 0x019300 06:B2F0: C8        INY                          ;
C - - - - - 0x019301 06:B2F1: C8        INY                          ;
@bra_B2F2_skip:
C - - - - - 0x019302 06:B2F2: 4C 26 B3  JMP loc_B326_assign_hitbox   ;

sub_B2F5_prepare_hitbox:
C - - - - - 0x019305 06:B2F5: AD 00 03  LDA vEnemyA                  ;
C - - - - - 0x019308 06:B2F8: C9 01     CMP #$01                     ; CONSTANT - Cat with the gun
C - - - - - 0x01930A 06:B2FA: F0 1F     BEQ bra_B31B_skip            ; If vEnemyA == 0x01
C - - - - - 0x01930C 06:B2FC: C9 35     CMP #$35                     ; CONSTANT - Egyptian with bow
C - - - - - 0x01930E 06:B2FE: F0 1B     BEQ bra_B31B_skip            ; If vEnemyA == 0x25
C - - - - - 0x019310 06:B300: C9 37     CMP #$37                     ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019312 06:B302: F0 17     BEQ bra_B31B_skip            ; If vEnemyA == 0x37
C - - - - - 0x019314 06:B304: C9 38     CMP #$38                     ; CONSTANT - Ninja upside down
C - - - - - 0x019316 06:B306: F0 3B     BEQ bra_B343_ninja           ; If vEnemyA == 0x38
C - - - - - 0x019318 06:B308: A0 20     LDY #$20                     ; the offset value #1
C - - - - - 0x01931A 06:B30A: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x01931D 06:B30D: 29 1C     AND #$1C                     ; CONSTANT - 'squatting' or 'shoot' status
C - - - - - 0x01931F 06:B30F: F0 15     BEQ bra_B326_assign_hitbox   ; If 'squatting' or 'shoot' status isn't activated
C - - - - - 0x019321 06:B311: A0 28     LDY #$28                     ; the offset value #2
C - - - - - 0x019323 06:B313: C9 08     CMP #$08                     ; CONSTANT - 'kneel down' status
C - - - - - 0x019325 06:B315: F0 0F     BEQ bra_B326_assign_hitbox   ; If 'kneel down' status is activated
C - - - - - 0x019327 06:B317: A0 24     LDY #$24                     ; the offset value #3
C - - - - - 0x019329 06:B319: D0 0B     BNE bra_B326_assign_hitbox   ; Always true

bra_B31B_skip:
C - - - - - 0x01932B 06:B31B: A0 00     LDY #$00                     ; the offset value #4
C - - - - - 0x01932D 06:B31D: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x019330 06:B320: 29 10     AND #$10                     ; CONSTANT - 'squatting' status
C - - - - - 0x019332 06:B322: F0 02     BEQ bra_B326_assign_hitbox   ; If 'squatting' status isn't activated
C - - - - - 0x019334 06:B324: A0 04     LDY #$04                     ; the offset value #5
; In: Register Y - the hitbox offset
loc_B326_assign_hitbox:
bra_B326_assign_hitbox:
C D 1 - - - 0x019336 06:B326: BD 2C 03  LDA vEnemyAPosY,X            ;
C - - - - - 0x019339 06:B329: 18        CLC                          ;
C - - - - - 0x01933A 06:B32A: 79 7C B1  ADC tbl_B17C_hitboxes,Y      ;
C - - - - - 0x01933D 06:B32D: 85 AD     STA vEnemyHitBoxY            ; <~ posY + absolute hitBoxY
C - - - - - 0x01933F 06:B32F: BD 32 03  LDA vEnemyAScreenPosX,X      ;
C - - - - - 0x019342 06:B332: 18        CLC                          ;
C - - - - - 0x019343 06:B333: 79 7D B1  ADC tbl_B17C_hitboxes + 1,Y  ;
C - - - - - 0x019346 06:B336: 85 AE     STA vEnemyHitBoxX            ; <~ posX + absolute hitBoxX
C - - - - - 0x019348 06:B338: B9 7E B1  LDA tbl_B17C_hitboxes + 2,Y  ;
C - - - - - 0x01934B 06:B33B: 85 AF     STA vEnemyHitBoxH            ; <~ hitBoxH
C - - - - - 0x01934D 06:B33D: B9 7F B1  LDA tbl_B17C_hitboxes + 3,Y  ;
C - - - - - 0x019350 06:B340: 85 B0     STA vEnemyHitBoxW            ; <~ hitBoxW
bra_B342_RTS:
C - - - - - 0x019352 06:B342: 60        RTS                          ;

bra_B343_ninja:
C - - - - - 0x019353 06:B343: A0 2C     LDY #$2C                     ; the offset value #1
C - - - - - 0x019355 06:B345: BD 20 03  LDA vEnemyAStatus,X          ;
C - - - - - 0x019358 06:B348: 29 0C     AND #$0C                     ; CONSTANT - 'shoot' + 'sitting' status
C - - - - - 0x01935A 06:B34A: F0 DA     BEQ bra_B326_assign_hitbox   ; If 'shoot' + 'sitting' status is deactivated
C - - - - - 0x01935C 06:B34C: A0 30     LDY #$30                     ; the offset value #2
C - - - - - 0x01935E 06:B34E: 29 08     AND #$08                     ; CONSTANT - 'shoot'
C - - - - - 0x019360 06:B350: D0 D4     BNE bra_B326_assign_hitbox   ; If 'shoot' is activated
C - - - - - 0x019362 06:B352: A0 34     LDY #$34                     ; the offset value #3
C - - - - - 0x019364 06:B354: D0 D0     BNE bra_B326_assign_hitbox   ; Always true

sub_B356_status_behavior:
C - - - - - 0x019366 06:B356: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x019369 06:B359: 10 E7     BPL bra_B342_RTS                          ; If the status isn't used
C - - - - - 0x01936B 06:B35B: 4A        LSR                                       ;
C - - - - - 0x01936C 06:B35C: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x01936F 06:B35F: 88 B5     .addr loc_B589_jump - 1      ; 0x02
- D 1 - I - 0x019371 06:B361: 9D B3     .addr loc_B39E_main - 1      ; 0x04
- D 1 - I - 0x019373 06:B363: 9D B3     .addr loc_B39E_main - 1      ; 0x08
- D 1 - I - 0x019375 06:B365: 59 B5     .addr loc_B55A_squatting - 1 ; 0x10
- D 1 - I - 0x019377 06:B367: 4E B6     .addr loc_B64F_dying - 1     ; 0x20
- D 1 - I - 0x019379 06:B369: 9D B3     .addr loc_B39E_main - 1      ; 0x40
- D 1 - I - 0x01937B 06:B36B: 9D B3     .addr loc_B39E_main - 1      ; 0x80

bra_B36D_ninja:
C - - - - - 0x01937D 06:B36D: 20 8E B6  JSR sub_B68E_try_to_change_self   ;
C - - - - - 0x019380 06:B370: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x019383 06:B373: 29 0C     AND #$0C                          ; CONSTANT - 'shoot' + 'sitting' status
C - - - - - 0x019385 06:B375: F0 17     BEQ @bra_B38E_creep               ; If 'shoot' + 'sitting' status is deactivated
C - - - - - 0x019387 06:B377: A0 08     LDY #$08                          ; the frame value #1
C - - - - - 0x019389 06:B379: C9 08     CMP #$08                          ; CONSTANT - 'shoot'
C - - - - - 0x01938B 06:B37B: F0 1E     BEQ @bra_B39B_prepare             ; If 'shoot' status is deactivated
C - - - - - 0x01938D 06:B37D: A0 0C     LDY #$0C                          ; the frame value #2
C - - - - - 0x01938F 06:B37F: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x019392 06:B382: C9 28     CMP #$28                          ; CONSTANT - start to raise up
C - - - - - 0x019394 06:B384: B0 15     BCS @bra_B39B_prepare             ; If JumpCounter >= 0x28
C - - - - - 0x019396 06:B386: C9 08     CMP #$08                          ; CONSTANT - finish to raise up
C - - - - - 0x019398 06:B388: 90 11     BCC @bra_B39B_prepare             ; If JumpCounter < 0x08
C - - - - - 0x01939A 06:B38A: A0 04     LDY #$04                          ; the frame value #3
C - - - - - 0x01939C 06:B38C: D0 0D     BNE @bra_B39B_prepare             ; Always true

@bra_B38E_creep:
C - - - - - 0x01939E 06:B38E: 20 BD B4  JSR sub_B4BD_try_creep_movements  ;
C - - - - - 0x0193A1 06:B391: A0 00     LDY #$00                          ; the creep frame value #1
C - - - - - 0x0193A3 06:B393: A5 2C     LDA vLowCounter                   ;
C - - - - - 0x0193A5 06:B395: 29 08     AND #$08                          ;
C - - - - - 0x0193A7 06:B397: D0 02     BNE @bra_B39B_prepare             ; Branch every 8 times after 8
C - - - - - 0x0193A9 06:B399: A0 04     LDY #$04                          ; the creep frame value #2
@bra_B39B_prepare:
C - - - - - 0x0193AB 06:B39B: 4C 06 B4  JMP loc_B406_prepare_rendering    ;

; In: Register X - the enemyA number
loc_B39E_main:
C - - - - - 0x0193AE 06:B39E: AD 00 03  LDA vEnemyA                               ;
C - - - - - 0x0193B1 06:B3A1: C9 38     CMP #$38                                  ; CONSTANT - Ninja upside down
C - - - - - 0x0193B3 06:B3A3: F0 C8     BEQ bra_B36D_ninja                        ; If vEnemyA == 0x38
C - - - - - 0x0193B5 06:B3A5: BD 2C 03  LDA vEnemyAPosY,X                         ;
C - - - - - 0x0193B8 06:B3A8: 85 00     STA ram_0000                              ;
C - - - - - 0x0193BA 06:B3AA: E6 00     INC ram_0000                              ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x0193BC 06:B3AC: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y  ;
C - - - - - 0x0193BF 06:B3AF: D0 07     BNE bra_B3B8_skip                         ; If the collisions by Y-position exists
C - - - - - 0x0193C1 06:B3B1: A9 1C     LDA #$1C                                  ; CONSTANT - a jump counter value
C - - - - - 0x0193C3 06:B3B3: A0 02     LDY #$02                                  ; CONSTANT - jumping off, free fall
C - - - - - 0x0193C5 06:B3B5: 4C 78 B5  JMP loc_B578_activate_jump_status         ;

; In: Register X - the enemyA number
bra_B3B8_skip:
C - - - - - 0x0193C8 06:B3B8: 20 8E B6  JSR sub_B68E_try_to_change_self      ;
C - - - - - 0x0193CB 06:B3BB: BD 20 03  LDA vEnemyAStatus,X                  ;
C - - - - - 0x0193CE 06:B3BE: 29 08     AND #$08                             ; CONSTANT - 'shoot' status (0x0C)
C - - - - - 0x0193D0 06:B3C0: D0 03     BNE bra_B3C5_shoot                   ; If 'shoot' status is activated
C - - - - - 0x0193D2 06:B3C2: 4C F3 B4  JMP loc_B4F3_try_movements           ;

bra_B3C5_shoot:
C - - - - - 0x0193D5 06:B3C5: A0 04     LDY #$04                        ; the offset value #1
C - - - - - 0x0193D7 06:B3C7: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x0193DA 06:B3CA: C9 01     CMP #$01                        ; CONSTANT - Cat with the gun
C - - - - - 0x0193DC 06:B3CC: F0 38     BEQ bra_B406_prepare_rendering  ; If vEnemyA == 0x01
C - - - - - 0x0193DE 06:B3CE: A0 00     LDY #$00                        ; the offset value #2
C - - - - - 0x0193E0 06:B3D0: C9 37     CMP #$37                        ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x0193E2 06:B3D2: F0 32     BEQ bra_B406_prepare_rendering  ; If vEnemyA == 0x37
C - - - - - 0x0193E4 06:B3D4: C9 35     CMP #$35                        ; CONSTANT - Egyptian with bow
C - - - - - 0x0193E6 06:B3D6: D0 1A     BNE bra_B3F2_skip               ; If vEnemyA != 0x35
C - - - - - 0x0193E8 06:B3D8: A0 18     LDY #$18                        ; the offset value #3
C - - - - - 0x0193EA 06:B3DA: BD 4A 03  LDA vEnemyAJumpCounter,X        ;
C - - - - - 0x0193ED 06:B3DD: C9 38     CMP #$38                        ; CONSTANT - bow shot, start
C - - - - - 0x0193EF 06:B3DF: B0 25     BCS bra_B406_prepare_rendering  ; If EnemyAJumpCounter >= 0x38
C - - - - - 0x0193F1 06:B3E1: A0 00     LDY #$00                        ; the offset value #4
C - - - - - 0x0193F3 06:B3E3: C9 30     CMP #$30                        ; CONSTANT - bow shot, after starting
C - - - - - 0x0193F5 06:B3E5: B0 1F     BCS bra_B406_prepare_rendering  ; If EnemyAJumpCounter >= 0x30
C - - - - - 0x0193F7 06:B3E7: A0 1C     LDY #$1C                        ; the offset value #5
C - - - - - 0x0193F9 06:B3E9: C9 28     CMP #$28                        ; CONSTANT - bow shot, before ending
C - - - - - 0x0193FB 06:B3EB: B0 19     BCS bra_B406_prepare_rendering  ; If EnemyAJumpCounter >= 0x28
C - - - - - 0x0193FD 06:B3ED: A0 00     LDY #$00                        ; the offset value #6
C - - - - - 0x0193FF 06:B3EF: 4C 06 B4  JMP loc_B406_prepare_rendering  ;

bra_B3F2_skip:
C - - - - - 0x019402 06:B3F2: A0 20     LDY #$20                          ; the offset value #7
C - - - - - 0x019404 06:B3F4: BD 20 03  LDA vEnemyAStatus,X               ;
C - - - - - 0x019407 06:B3F7: 29 04     AND #$04                          ; CONSTANT - 'close contact' status or part of 'shot' status
C - - - - - 0x019409 06:B3F9: F0 0B     BEQ bra_B406_prepare_rendering    ; If L status isn't activated (see vEnemyAStatus)
C - - - - - 0x01940B 06:B3FB: A0 1C     LDY #$1C                          ; the offset value #8
C - - - - - 0x01940D 06:B3FD: BD 4A 03  LDA vEnemyAJumpCounter,X          ;
C - - - - - 0x019410 06:B400: C9 28     CMP #$28                          ; CONSTANT - projectile throw
C - - - - - 0x019412 06:B402: 90 02     BCC bra_B406_prepare_rendering    ; If EnemyAJumpCounter < 0x28
C - - - - - 0x019414 06:B404: A0 18     LDY #$18                          ; the offset value #9
; In: Register Y - sprite_magic2 (The offset by the address)
loc_B406_prepare_rendering:
bra_B406_prepare_rendering:
C D 1 - - - 0x019416 06:B406: BD 38 03  LDA vEnemyAPosXLow,X              ;
C - - - - - 0x019419 06:B409: 85 00     STA ram_0000                      ; prepares the 1st parameter
C - - - - - 0x01941B 06:B40B: BD 3E 03  LDA vEnemyAPosXHigh,X             ;
C - - - - - 0x01941E 06:B40E: 85 01     STA ram_0001                      ; prepares the 2nd parameter
C - - - - - 0x019420 06:B410: 20 7B D6  JSR sub_D67B_out_of_sight         ;
C - - - - - 0x019423 06:B413: 90 03     BCC bra_B418_skip                 ; If the enemy is visible
C - - - - - 0x019425 06:B415: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B418_skip:
C - - - - - 0x019428 06:B418: 20 AC D6  JSR sub_D6AC_out_of_screen        ;
C - - - - - 0x01942B 06:B41B: 90 03     BCC bra_B420_skip                 ; If the enemy is on the screen
C - - - - - 0x01942D 06:B41D: 4C 41 D7  JMP loc_D741_enemyA_off_screen    ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B420_skip:
C - - - - - 0x019430 06:B420: 20 25 D7  JSR sub_D725_enemyA_on_screen           ;
C - - - - - 0x019433 06:B423: C0 E0     CPY #$E0                                ; CONSTANT - death frame #1
C - - - - - 0x019435 06:B425: 90 03     BCC bra_B42A_add_sprite_magic_v2        ; If Register Y < 0xE0
C - - - - - 0x019437 06:B427: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1 ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B42A_add_sprite_magic_v2:
C - - - - - 0x01943A 06:B42A: 20 AE B4  JSR sub_B4AE_add_sprite_magic_v2 ;
C - - - - - 0x01943D 06:B42D: AD 00 03  LDA vEnemyA                      ;
C - - - - - 0x019440 06:B430: C9 19     CMP #$19                         ; CONSTANT - Karate-girl
C - - - - - 0x019442 06:B432: F0 45     BEQ bra_B479_girl                ; If vEnemyA == 0x19
C - - - - - 0x019444 06:B434: C9 37     CMP #$37                         ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019446 06:B436: F0 4F     BEQ bra_B487_render_hand         ; If vEnemyA == 0x37
C - - - - - 0x019448 06:B438: C9 01     CMP #$01                         ; CONSTANT - Cat with the gun
C - - - - - 0x01944A 06:B43A: D0 3C     BNE bra_B478_RTS                 ; If vEnemyA != 0x01
C - - - - - 0x01944C 06:B43C: BD 20 03  LDA vEnemyAStatus,X              ;
C - - - - - 0x01944F 06:B43F: 29 20     AND #$20                         ; CONSTANT - 'dying' status
C - - - - - 0x019451 06:B441: D0 35     BNE bra_B478_RTS                 ; If 'dying' is activated
C - - - - - 0x019453 06:B443: AC 04 03  LDY vEnemyASpriteMagic2Ex1       ; the extra offset value #1
C - - - - - 0x019456 06:B446: BD 26 03  LDA vEnemyAProjectileIsUsed,X    ;
C - - - - - 0x019459 06:B449: 30 03     BMI @bra_B44E_skip               ; If the projectile is used
C - - - - - 0x01945B 06:B44B: AC 05 03  LDY vEnemyASpriteMagic2Ex2       ; the extra offset value #2
@bra_B44E_skip:
C - - - - - 0x01945E 06:B44E: 84 04     STY ram_0004                    ; <~ vEnemyASpriteMagic2Ex1 or vEnemyASpriteMagic2Ex2
C - - - - - 0x019460 06:B450: A0 00     LDY #$00                        ; the offset value #1
C - - - - - 0x019462 06:B452: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x019465 06:B455: 48        PHA                             ; store EnemyAStatus
C - - - - - 0x019466 06:B456: 29 04     AND #$04                        ; CONSTANT - 'shoot' status
C - - - - - 0x019468 06:B458: F0 02     BEQ @bra_B45C_shoot             ; If 'shot' status isn't activated
C - - - - - 0x01946A 06:B45A: A0 04     LDY #$04                        ; the offset value #2
@bra_B45C_shoot:
C - - - - - 0x01946C 06:B45C: 68        PLA                             ; retrieve EnemyAStatus, (see $B455)
C - - - - - 0x01946D 06:B45D: 6A        ROR                             ;
C - - - - - 0x01946E 06:B45E: 90 02     BCC @bra_B462_skip              ; If the enemy is looking to the right
C - - - - - 0x019470 06:B460: C8        INY                             ;
C - - - - - 0x019471 06:B461: C8        INY                             ; +2 for the left frame
@bra_B462_skip:
C - - - - - 0x019472 06:B462: 98        TYA                             ;
C - - - - - 0x019473 06:B463: 18        CLC                             ;
C - - - - - 0x019474 06:B464: 65 04     ADC ram_0004                    ; + Y ~> sprite_magic2
C - - - - - 0x019476 06:B466: 85 01     STA ram_0001                    ;
C - - - - - 0x019478 06:B468: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x01947B 06:B46B: 29 10     AND #$10                        ; CONSTANT - 'squatting' status
C - - - - - 0x01947D 06:B46D: F0 15     BEQ bra_B484_add_sprite         ; If 'squatting' status is activated
C - - - - - 0x01947F 06:B46F: A5 00     LDA ram_0000                    ;
C - - - - - 0x019481 06:B471: 18        CLC                             ;
C - - - - - 0x019482 06:B472: 69 05     ADC #$05                        ;
C - - - - - 0x019484 06:B474: 85 00     STA ram_0000                    ; sprite_magic1 <~ sprite_magic1 + 0x05
C - - - - - 0x019486 06:B476: D0 0C     BNE bra_B484_add_sprite         ; If EnemyAPosXLow != 0x00
bra_B478_RTS:
C - - - - - 0x019488 06:B478: 60        RTS                             ;

; In: Register Y - sprite_magic2 (The offset by the address)
bra_B479_girl:
C - - - - - 0x019489 06:B479: C0 18     CPY #$18                      ;
C - - - - - 0x01948B 06:B47B: B0 FB     BCS bra_B478_RTS              ; If Register Y >= 0x18
C - - - - - 0x01948D 06:B47D: 98        TYA                           ;
C - - - - - 0x01948E 06:B47E: 18        CLC                           ;
C - - - - - 0x01948F 06:B47F: 6D 04 03  ADC vEnemyASpriteMagic2Ex1    ; + Y ~> sprite_magic2
C - - - - - 0x019492 06:B482: 85 01     STA ram_0001                  ;
bra_B484_add_sprite:
C - - - - - 0x019494 06:B484: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

; Rendering a hand with boomerung of the egyptian
; In: Register Y - sprite_magic2 (The offset by the address)
bra_B487_render_hand:
C - - - - - 0x019497 06:B487: BD 20 03  LDA vEnemyAStatus,X                  ;
C - - - - - 0x01949A 06:B48A: 29 30     AND #$30                             ; CONSTANT - 'squatting' or 'dying' status
C - - - - - 0x01949C 06:B48C: D0 EA     BNE bra_B478_RTS                     ; If 'squatting' or 'dying' status is activated
C - - - - - 0x01949E 06:B48E: BD 20 03  LDA vEnemyAStatus,X                  ;
C - - - - - 0x0194A1 06:B491: 29 08     AND #$08                             ; CONSTANT - 'shoot' status (0x0C)
C - - - - - 0x0194A3 06:B493: F0 0F     BEQ @bra_B4A4_skip                   ; If 'shoot' status is deactivated
C - - - - - 0x0194A5 06:B495: A0 30     LDY #$30                             ; the offset value #1
C - - - - - 0x0194A7 06:B497: BD 4A 03  LDA vEnemyAJumpCounter,X             ;
C - - - - - 0x0194AA 06:B49A: C9 28     CMP #$28                             ; CONSTANT - a start shoot value
C - - - - - 0x0194AC 06:B49C: 90 08     BCC @bra_B4A6_assign                 ; If JumpCounter < 0x28
C - - - - - 0x0194AE 06:B49E: A0 2C     LDY #$2C                             ; the offset value #2
C - - - - - 0x0194B0 06:B4A0: C9 30     CMP #$30                             ; CONSTANT - a start raise the hand
C - - - - - 0x0194B2 06:B4A2: 90 02     BCC @bra_B4A6_assign                 ; If JumpCounter < 0x30
@bra_B4A4_skip:
C - - - - - 0x0194B4 06:B4A4: A0 28     LDY #$28                             ; the offset value #3
@bra_B4A6_assign:
C - - - - - 0x0194B6 06:B4A6: BD 20 03  LDA vEnemyAStatus,X                  ;
C - - - - - 0x0194B9 06:B4A9: 6A        ROR                                  ;
C - - - - - 0x0194BA 06:B4AA: 90 02     BCC bra_B4AE_add_sprite_magic_v2     ; If the enemy is looking to the right
C - - - - - 0x0194BC 06:B4AC: C8        INY                                  ;
C - - - - - 0x0194BD 06:B4AD: C8        INY                                  ; +2 for the left frame
; In: Register Y - sprite_magic2 (The offset by the address)
sub_B4AE_add_sprite_magic_v2:
bra_B4AE_add_sprite_magic_v2:
C - - - - - 0x0194BE 06:B4AE: 98        TYA                                  ;
C - - - - - 0x0194BF 06:B4AF: 18        CLC                                  ;
C - - - - - 0x0194C0 06:B4B0: 6D 02 03  ADC vEnemyASpriteMagic2              ; + Y ~> sprite_magic2
C - - - - - 0x0194C3 06:B4B3: 85 01     STA ram_0001                         ;
C - - - - - 0x0194C5 06:B4B5: AD 03 03  LDA vEnemyASpriteMagic3              ; ~> sprite_magic3
C - - - - - 0x0194C8 06:B4B8: 85 02     STA ram_0002                         ;
C - - - - - 0x0194CA 06:B4BA: 4C 33 CE  JMP loc_CE33_add_sprite_magic        ; bank FF

sub_B4BD_try_creep_movements:
C - - - - - 0x0194CD 06:B4BD: 20 37 D9  JSR sub_D937_init_absolute_enemyA_positions  ;
C - - - - - 0x0194D0 06:B4C0: C6 00     DEC ram_0000                                 ; decrement EnemyAPosY for the ceiling area
C - - - - - 0x0194D2 06:B4C2: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x0194D5 06:B4C5: 6A        ROR                                          ;
C - - - - - 0x0194D6 06:B4C6: 90 1A     BCC bra_B4E2_skip                            ; If the enemy is looking to the right
C - - - - - 0x0194D8 06:B4C8: A9 F8     LDA #$F8                                     ; prepare an increment by X (-8)
C - - - - - 0x0194DA 06:B4CA: 20 AD D3  JSR sub_D3AD_left_collision_by_inc_posX      ;
C - - - - - 0x0194DD 06:B4CD: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x0194DF 06:B4CF: D0 08     BNE bra_B4D9_change_direction                ; if the ceiling area doesn't exist
C - - - - - 0x0194E1 06:B4D1: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x0194E3 06:B4D3: 6A        ROR                                          ;
C - - - - - 0x0194E4 06:B4D4: 90 A2     BCC bra_B478_RTS                             ; Branch if vLowCounter is multiple of 2
C - - - - - 0x0194E6 06:B4D6: 4C FD D6  JMP loc_D6FD_dec_EnemyAPosXLow_unsafe        ;

; In: Register X - the enemyA number
bra_B4D9_change_direction:
C - - - - - 0x0194E9 06:B4D9: BD 20 03  LDA vEnemyAStatus,X         ;
C - - - - - 0x0194EC 06:B4DC: 49 01     EOR #$01                    ;
C - - - - - 0x0194EE 06:B4DE: 9D 20 03  STA vEnemyAStatus,X         ;
C - - - - - 0x0194F1 06:B4E1: 60        RTS                         ;

bra_B4E2_skip:
C - - - - - 0x0194F2 06:B4E2: A9 08     LDA #$08                                     ; prepare an increment by X (+8)
C - - - - - 0x0194F4 06:B4E4: 20 97 D3  JSR sub_D397_right_collision_by_inc_posX     ;
C - - - - - 0x0194F7 06:B4E7: C9 01     CMP #$01                                     ; CONSTANT - a strong collision
C - - - - - 0x0194F9 06:B4E9: D0 EE     BNE bra_B4D9_change_direction                ; if the ceiling area doesn't exist
C - - - - - 0x0194FB 06:B4EB: A5 2C     LDA vLowCounter                              ;
C - - - - - 0x0194FD 06:B4ED: 6A        ROR                                          ;
C - - - - - 0x0194FE 06:B4EE: 90 88     BCC bra_B478_RTS                             ; Branch if vLowCounter is multiple of 2
C - - - - - 0x019500 06:B4F0: 4C 1C D7  JMP loc_D71C_inc_EnemyAPosXLow_unsafe        ;

; In: Register X - the enemyA number
loc_B4F3_try_movements:
C D 1 - - - 0x019503 06:B4F3: BD 20 03  LDA vEnemyAStatus,X                      ;
C - - - - - 0x019506 06:B4F6: 6A        ROR                                      ;
C - - - - - 0x019507 06:B4F7: 90 0F     BCC bra_B508_skip                        ; If the enemy is looking to the right
C - - - - - 0x019509 06:B4F9: 20 0E B5  JSR sub_B50E_try_movement_on_the_left    ;
loc_B4FC_prepare_rendering_by_frame_:
C D 1 - - - 0x01950C 06:B4FC: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter    ;
C - - - - - 0x01950F 06:B4FF: BD 44 03  LDA vEnemyAFrame_Counter,X               ;
C - - - - - 0x019512 06:B502: 0A        ASL                                      ;
C - - - - - 0x019513 06:B503: 0A        ASL                                      ; *4
C - - - - - 0x019514 06:B504: A8        TAY                                      ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x019515 06:B505: 4C 06 B4  JMP loc_B406_prepare_rendering           ;

bra_B508_skip:
C - - - - - 0x019518 06:B508: 20 4D B5  JSR sub_B54D_try_movement_on_the_right   ;
C - - - - - 0x01951B 06:B50B: 4C FC B4  JMP loc_B4FC_prepare_rendering_by_frame_ ;

; In: Register X - the enemyA number
sub_B50E_try_movement_on_the_left:
C - - - - - 0x01951E 06:B50E: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left  ;
C - - - - - 0x019521 06:B511: F0 08     BEQ bra_B51B_try_jump_over                      ; If the movement isn't allowed
C - - - - - 0x019523 06:B513: A5 2C     LDA vLowCounter                                 ;
C - - - - - 0x019525 06:B515: 6A        ROR                                             ;
C - - - - - 0x019526 06:B516: 90 34     BCC bra_B54C_RTS                                ; Branch if vLowCounter is multiple of 2
C - - - - - 0x019528 06:B518: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow                  ;

; In: Register X - the enemyA number
bra_B51B_try_jump_over:
C - - - - - 0x01952B 06:B51B: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x01952E 06:B51E: C9 35     CMP #$35                        ; CONSTANT - Egyptian with bow
C - - - - - 0x019530 06:B520: F0 04     BEQ @bra_B526_skip              ; If Register A == 0x35
C - - - - - 0x019532 06:B522: C9 37     CMP #$37                        ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019534 06:B524: D0 0B     BNE bra_B531_skip               ; If Register A != 0x37
@bra_B526_skip:
C - - - - - 0x019536 06:B526: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x019539 06:B529: 29 22     AND #$22                        ; CONSTANT - 'the dying' or 'the jump' status
C - - - - - 0x01953B 06:B52B: D0 1F     BNE bra_B54C_RTS                ; If the enemy is dying or jumping
C - - - - - 0x01953D 06:B52D: A9 0C     LDA #$0C                        ; The jump counter value #1
C - - - - - 0x01953F 06:B52F: D0 09     BNE bra_B53A_continue           ; Always true

bra_B531_skip:
C - - - - - 0x019541 06:B531: BD 20 03  LDA vEnemyAStatus,X             ;
C - - - - - 0x019544 06:B534: 29 20     AND #$20                        ; CONSTANT - 'the dying' status
C - - - - - 0x019546 06:B536: D0 14     BNE bra_B54C_RTS                ; If the enemy is dying
C - - - - - 0x019548 06:B538: A9 14     LDA #$14                        ; The jump counter value #2
; In; Register A - EnemyJumpCounter
bra_B53A_continue:
C - - - - - 0x01954A 06:B53A: 9D 4A 03  STA vEnemyAJumpCounter,X        ;
C - - - - - 0x01954D 06:B53D: A9 02     LDA #$02                        ; CONSTANT - the jump
C - - - - - 0x01954F 06:B53F: 20 4E B7  JSR sub_B74E_change_substatus   ;
C - - - - - 0x019552 06:B542: A9 03     LDA #$03                        ; CONSTANT - jump by side
C - - - - - 0x019554 06:B544: 9D 56 03  STA vEnemyAJumpType,X           ;
C - - - - - 0x019557 06:B547: A9 00     LDA #$00                        ;
C - - - - - 0x019559 06:B549: 9D 44 03  STA vEnemyAFrame_Counter,X      ; reset a counter
bra_B54C_RTS:
C - - - - - 0x01955C 06:B54C: 60        RTS                             ;

; In: Register X - the enemyA number
sub_B54D_try_movement_on_the_right:
C - - - - - 0x01955D 06:B54D: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right ;
C - - - - - 0x019560 06:B550: F0 C9     BEQ bra_B51B_try_jump_over                      ; If the movement isn't allowed
C - - - - - 0x019562 06:B552: A5 2C     LDA vLowCounter                                 ;
C - - - - - 0x019564 06:B554: 6A        ROR                                             ;
C - - - - - 0x019565 06:B555: 90 F5     BCC bra_B54C_RTS                                ; Branch if vLowCounter is multiple of 2
C - - - - - 0x019567 06:B557: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow                  ;

loc_B55A_squatting:
C - - - - - 0x01956A 06:B55A: DE 4A 03  DEC vEnemyAJumpCounter,X                ;
C - - - - - 0x01956D 06:B55D: F0 05     BEQ bra_B564_skip                       ; If vEnemyAJumpCounter == 0x00
C - - - - - 0x01956F 06:B55F: A0 14     LDY #$14                                ; an input parameter - sprite_magic2 (a squatting frame)
C - - - - - 0x019571 06:B561: 4C 06 B4  JMP loc_B406_prepare_rendering          ;

bra_B564_skip:
C - - - - - 0x019574 06:B564: 20 3E E3  JSR sub_E332_generate_jump_type         ;
C - - - - - 0x019577 06:B567: BC 2C 03  LDY vEnemyAPosY,X                       ;
C - - - - - 0x01957A 06:B56A: C0 BF     CPY #$BF                                ; CONSTANT - Lower boundary of the first floor
C - - - - - 0x01957C 06:B56C: 90 06     BCC @bra_B574_skip                      ; If vEnemyPosY < 0xBF
C - - - - - 0x01957E 06:B56E: 29 01     AND #$01                                ;
C - - - - - 0x019580 06:B570: D0 02     BNE @bra_B574_skip                      ; If vEnemyPosY is odd
C - - - - - 0x019582 06:B572: A9 03     LDA #$03                                ; CONSTANT - jump by side
@bra_B574_skip:
C - - - - - 0x019584 06:B574: A8        TAY                                     ; Y <~ {0x00, 0x01, 0x02, 0x03, 0x04}
C - - - - - 0x019585 06:B575: B9 58 E3  LDA tbl_E358_init_counter,Y             ;
; In: Register A - a jump counter value
; In: Register Y - a jump type
; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
loc_B578_activate_jump_status:
C D 1 - - - 0x019588 06:B578: 9D 4A 03  STA vEnemyAJumpCounter,X                ;
C - - - - - 0x01958B 06:B57B: 98        TYA                                     ;
C - - - - - 0x01958C 06:B57C: 9D 56 03  STA vEnemyAJumpType,X                   ;
C - - - - - 0x01958F 06:B57F: A9 02     LDA #$02                                ; CONSTANT - the jump
C - - - - - 0x019591 06:B581: 20 4E B7  JSR sub_B74E_change_substatus           ;
C - - - - - 0x019594 06:B584: A9 00     LDA #$00                                ;
C - - - - - 0x019596 06:B586: 9D 44 03  STA vEnemyAFrame_Counter,X              ; reset a counter
loc_B589_jump:
C - - - - - 0x019599 06:B589: BD 2C 03  LDA vEnemyAPosY,X                       ;
C - - - - - 0x01959C 06:B58C: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x01959E 06:B58E: B0 1E     BCS bra_B5AE_skip                       ; If PosY >= 0xDF
C - - - - - 0x0195A0 06:B590: BD 56 03  LDA vEnemyAJumpType,X                   ;
C - - - - - 0x0195A3 06:B593: C9 03     CMP #$03                                ; CONSTANT - jump by side
C - - - - - 0x0195A5 06:B595: D0 17     BNE bra_B5AE_skip                       ; If EnemyJumpType != 0x03
C - - - - - 0x0195A7 06:B597: BD 20 03  LDA vEnemyAStatus,X                     ;
C - - - - - 0x0195AA 06:B59A: 6A        ROR                                     ;
C - - - - - 0x0195AB 06:B59B: 90 0A     BCC bra_B5A7_skip                       ; If the enemy is looking to the right
C - - - - - 0x0195AD 06:B59D: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x0195AF 06:B59F: D0 0A     BNE bra_B5AB_invert                     ; If the enemy is dying
bra_B5A1_invert:
C - - - - - 0x0195B1 06:B5A1: 20 0E B5  JSR sub_B50E_try_movement_on_the_left   ;
C - - - - - 0x0195B4 06:B5A4: 4C AE B5  JMP loc_B5AE_continue                   ;

bra_B5A7_skip:
C - - - - - 0x0195B7 06:B5A7: 29 10     AND #$10                                ; CONSTANT - the dying + shift right
C - - - - - 0x0195B9 06:B5A9: D0 F6     BNE bra_B5A1_invert                     ; If the enemy is dying
bra_B5AB_invert:
C - - - - - 0x0195BB 06:B5AB: 20 4D B5  JSR sub_B54D_try_movement_on_the_right  ;
loc_B5AE_continue:
bra_B5AE_skip:
C D 1 - - - 0x0195BE 06:B5AE: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x0195C1 06:B5B1: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y         ; Y = [0x00-0x2F]
C - - - - - 0x0195C4 06:B5B4: 18        CLC                                     ;
C - - - - - 0x0195C5 06:B5B5: 7D 2C 03  ADC vEnemyAPosY,X                       ;
C - - - - - 0x0195C8 06:B5B8: C9 DF     CMP #$DF                                ; CONSTANT - Limit 1 for Y-position
C - - - - - 0x0195CA 06:B5BA: 90 09     BCC @bra_B5C5_skip                      ; If Register A < 0xDF
C - - - - - 0x0195CC 06:B5BC: A0 DF     LDY #$DF                                ; 0xDF -> EnemyPosY
C - - - - - 0x0195CE 06:B5BE: C9 F8     CMP #$F8                                ; CONSTANT - Limit 2 for Y-position
C - - - - - 0x0195D0 06:B5C0: 90 02     BCC @bra_B5C4_skip                      ; If Register A < 0xF8
C - - - - - 0x0195D2 06:B5C2: A0 00     LDY #$00                                ; 0x00 -> EnemyPosY
@bra_B5C4_skip:
C - - - - - 0x0195D4 06:B5C4: 98        TYA                                     ; A <~ 0x00 or 0xDF
@bra_B5C5_skip:
C - - - - - 0x0195D5 06:B5C5: 9D 2C 03  STA vEnemyAPosY,X                       ; Resolves a new Y-position of the enemy after jumping
C - - - - - 0x0195D8 06:B5C8: BC 4A 03  LDY vEnemyAJumpCounter,X                ;
C - - - - - 0x0195DB 06:B5CB: C0 18     CPY #$18                                ; CONSTANT - a maximum amplitude
C - - - - - 0x0195DD 06:B5CD: 90 59     BCC bra_B628_skip_for_maze              ; If vJumpCounter < 0x18
C - - - - - 0x0195DF 06:B5CF: C9 DF     CMP #$DF                                ; CONSTANT - Maximum allowed Y-value on the screen
C - - - - - 0x0195E1 06:B5D1: 90 05     BCC bra_B5D8_skip                       ; If EnemyPosY < 0xDF
C - - - - - 0x0195E3 06:B5D3: A0 FF     LDY #$FF                                ; prepares the sprite_magic2 (The offset by the address), death mark
C - - - - - 0x0195E5 06:B5D5: 4C 06 B4  JMP loc_B406_prepare_rendering          ;

; In: Register X - the enemyA number
; In: $0000 - EnemyAPosY
bra_B5D8_skip:
C - - - - - 0x0195E8 06:B5D8: 85 00     STA ram_0000                                 ;
C - - - - - 0x0195EA 06:B5DA: E6 00     INC ram_0000                                 ; prepare an input parameter (EnemyAPosY + 1)
C - - - - - 0x0195EC 06:B5DC: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y     ;
C - - - - - 0x0195EF 06:B5DF: F0 23     BEQ bra_B604_inc                             ; If the collisions by Y-position doesn't exist
C - - - - - 0x0195F1 06:B5E1: C9 02     CMP #$02                                     ; CONSTANT - a weak collision
C - - - - - 0x0195F3 06:B5E3: F0 07     BEQ bra_B5EC_weak                            ; If the collision is weak
C - - - - - 0x0195F5 06:B5E5: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x0195F8 06:B5E8: D0 0E     BNE bra_B5F8_landing                         ; If the landing is allow
C - - - - - 0x0195FA 06:B5EA: F0 18     BEQ bra_B604_inc                             ; Always true

bra_B5EC_weak:
C - - - - - 0x0195FC 06:B5EC: 20 47 D3  JSR sub_D347_check_landing_enemyA            ;
C - - - - - 0x0195FF 06:B5EF: F0 13     BEQ bra_B604_inc                             ; If the landing is disallow
C - - - - - 0x019601 06:B5F1: BD 56 03  LDA vEnemyAJumpType,X                        ;
C - - - - - 0x019604 06:B5F4: C9 04     CMP #$04                                     ; CONSTANT - jump off after the squatting
C - - - - - 0x019606 06:B5F6: F0 0C     BEQ bra_B604_inc                             ; If the enemyA jumping off
bra_B5F8_landing:
C - - - - - 0x019608 06:B5F8: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY           ;
C - - - - - 0x01960B 06:B5FB: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x01960E 06:B5FE: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x019610 06:B600: D0 32     BNE bra_B634_start_dying                     ; If the enemy is dying
C - - - - - 0x019612 06:B602: F0 0A     BEQ bra_B60E_clear                           ; Always true

bra_B604_inc:
C - - - - - 0x019614 06:B604: FE 4A 03  INC vEnemyAJumpCounter,X                     ;
C - - - - - 0x019617 06:B607: A9 2F     LDA #$2F                                     ; CONSTANT - a maximum jump value
C - - - - - 0x019619 06:B609: DD 4A 03  CMP vEnemyAJumpCounter,X                     ;
C - - - - - 0x01961C 06:B60C: B0 03     BCS bra_B611_skip                            ; If EnemyJumpCounter <= 0x2F, i.e. less than maximum
bra_B60E_clear:
C - - - - - 0x01961E 06:B60E: 9D 4A 03  STA vEnemyAJumpCounter,X                     ; reassign
bra_B611_skip:
C - - - - - 0x019621 06:B611: A0 0C     LDY #$0C                                     ; an input parameter - sprite_magic2 (a jump with damage frame #1)
C - - - - - 0x019623 06:B613: AD 00 03  LDA vEnemyA                                  ;
C - - - - - 0x019626 06:B616: C9 38     CMP #$38                                     ; CONSTANT - Ninja upside down
C - - - - - 0x019628 06:B618: D0 02     BNE @bra_B61C_skip                           ; If Register A != 0x38
C - - - - - 0x01962A 06:B61A: A0 10     LDY #$10                                     ; an input parameter - sprite_magic2 (a jump with damage frame #2)
@bra_B61C_skip:
C - - - - - 0x01962C 06:B61C: BD 20 03  LDA vEnemyAStatus,X                          ;
C - - - - - 0x01962F 06:B61F: 29 20     AND #$20                                     ; CONSTANT - the dying
C - - - - - 0x019631 06:B621: D0 02     BNE @bra_B625_skip                           ; If the enemy is dying
C - - - - - 0x019633 06:B623: A0 08     LDY #$08                                     ; an input parameter - sprite_magic2 (a jump frame)
@bra_B625_skip:
C - - - - - 0x019635 06:B625: 4C 06 B4  JMP loc_B406_prepare_rendering               ;

bra_B628_skip_for_maze:
C - - - - - 0x019638 06:B628: 20 D5 D7  JSR sub_D7D5_check_enemyA_collision_by_Y_in_maze  ;
C - - - - - 0x01963B 06:B62B: D0 D7     BNE bra_B604_inc                                  ; If the strong collision isn't exist
C - - - - - 0x01963D 06:B62D: A9 18     LDA #$18                                          ; CONSTANT - a maximum amplitude
C - - - - - 0x01963F 06:B62F: 9D 4A 03  STA vEnemyAJumpCounter,X                          ;
C - - - - - 0x019642 06:B632: D0 D0     BNE bra_B604_inc                                  ; Always true

bra_B634_start_dying:
C - - - - - 0x019644 06:B634: AD 00 03  LDA vEnemyA                       ;
C - - - - - 0x019647 06:B637: C9 37     CMP #$37                          ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x019649 06:B639: D0 0F     BNE bra_B64A_start_dying_ex       ; If EnemyA != 0x37
C - - - - - 0x01964B 06:B63B: BD 50 03  LDA vEnemyAHealthPoints,X         ;
C - - - - - 0x01964E 06:B63E: F0 0A     BEQ bra_B64A_start_dying_ex       ; If the health points is zero
C - - - - - 0x019650 06:B640: A9 00     LDA #$00                          ;
C - - - - - 0x019652 06:B642: 20 4E B7  JSR sub_B74E_change_substatus     ; clear substatus
C - - - - - 0x019655 06:B645: A0 00     LDY #$00                          ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x019657 06:B647: 4C 06 B4  JMP loc_B406_prepare_rendering    ;

bra_B64A_start_dying_ex:
C - - - - - 0x01965A 06:B64A: A9 30     LDA #$30                          ; initializes a jump counter
C - - - - - 0x01965C 06:B64C: 9D 4A 03  STA vEnemyAJumpCounter,X          ;
loc_B64F_dying:
C - - - - - 0x01965F 06:B64F: DE 4A 03  DEC vEnemyAJumpCounter,X          ; updates the counter value
C - - - - - 0x019662 06:B652: D0 03     BNE bra_B657_death_rendering      ; If vJumpCounter != 0x00
C - - - - - 0x019664 06:B654: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

bra_B657_death_rendering:
C - - - - - 0x019667 06:B657: BD 4A 03  LDA vEnemyAJumpCounter,X              ;
C - - - - - 0x01966A 06:B65A: 20 5F D0  JSR sub_accumulator_shift_right_by_4  ;
C - - - - - 0x01966D 06:B65D: A8        TAY                                   ; y <~ 0, 1, or 2 (high byte value of the vJumpCounter)
C - - - - - 0x01966E 06:B65E: B9 65 B6  LDA tbl_B665_frames_,Y                ;
C - - - - - 0x019671 06:B661: A8        TAY                                   ; prepares the sprite_magic2 (The offset by the address)
C - - - - - 0x019672 06:B662: 4C 06 B4  JMP loc_B406_prepare_rendering        ;

tbl_B665_frames_:
- D 1 - - - 0x019675 06:B665: E4        .byte $E4   ; death frame #2
- D 1 - - - 0x019676 06:B666: E0        .byte $E0   ; death frame #1
- D 1 - - - 0x019677 06:B667: 10        .byte $10   ; damage frame

; In: Register X - the enemyA number
bra_B668_try_to_start_to_shoot:
C - - - - - 0x019678 06:B668: BD 26 03  LDA vEnemyAProjectileIsUsed,X   ;
C - - - - - 0x01967B 06:B66B: 10 20     BPL bra_B68D_RTS                ; If the projectile isn't used
C - - - - - 0x01967D 06:B66D: BD 20 03  LDA vEnemyAStatus,X             ;  
C - - - - - 0x019680 06:B670: 29 0C     AND #$0C                        ;
C - - - - - 0x019682 06:B672: C9 0C     CMP #$0C                        ; CONSTANT - 'shoot' status
C - - - - - 0x019684 06:B674: D0 17     BNE bra_B68D_RTS                ; If 'shoot' status isn't activated
C - - - - - 0x019686 06:B676: BD 4A 03  LDA vEnemyAJumpCounter,X        ;
C - - - - - 0x019689 06:B679: C9 28     CMP #$28                        ; CONSTANT - a start shoot value
C - - - - - 0x01968B 06:B67B: D0 10     BNE bra_B68D_RTS                ; If vEnemyAJumpCounter != 0x28
C - - - - - 0x01968D 06:B67D: AD 00 03  LDA vEnemyA                     ;
C - - - - - 0x019690 06:B680: C9 01     CMP #$01                        ; CONSTANT - Cat with the gun
C - - - - - 0x019692 06:B682: F0 03     BEQ bra_B687_cat                ; If vEnemyA == 0x01
C - - - - - 0x019694 06:B684: 4C 73 B7  JMP loc_B773_start_to_shoot     ;

bra_B687_cat:
C - - - - - 0x019697 06:B687: 4C 98 B7  JMP loc_B798_cat_start_to_shoot ;

bra_B68A_restore:
C - - - - - 0x01969A 06:B68A: FE 4A 03  INC vEnemyAJumpCounter,X        ;
bra_B68D_RTS:
C - - - - - 0x01969D 06:B68D: 60        RTS                             ;

; In: Register X - the enemyA number
sub_B68E_try_to_change_self:
C - - - - - 0x01969E 06:B68E: BD 4A 03  LDA vEnemyAJumpCounter,X           ;
C - - - - - 0x0196A1 06:B691: F0 1C     BEQ @bra_B6AF_skip                 ; If vJumpCounter == 0x00
C - - - - - 0x0196A3 06:B693: DE 4A 03  DEC vEnemyAJumpCounter,X           ;
C - - - - - 0x0196A6 06:B696: D0 D0     BNE bra_B668_try_to_start_to_shoot ; If vJumpCounter != 0x00
C - - - - - 0x0196A8 06:B698: A9 08     LDA #$08                           ; CONSTANT - 'shoot' status
C - - - - - 0x0196AA 06:B69A: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x0196AD 06:B69D: C0 38     CPY #$38                           ; CONSTANT - Ninja upside down
C - - - - - 0x0196AF 06:B69F: F0 0B     BEQ @bra_B6AC_ninja                ; If vEnemyA == 0x38
C - - - - - 0x0196B1 06:B6A1: C0 37     CPY #$37                           ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x0196B3 06:B6A3: D0 05     BNE @bra_B6AA_skip                 ; If vEnemyA != 0x37
C - - - - - 0x0196B5 06:B6A5: BD 22 03  LDA vEnemyAProjectileStatus,X      ;
C - - - - - 0x0196B8 06:B6A8: 30 E0     BMI bra_B68A_restore               ; If the projectile (boomerung) is used
@bra_B6AA_skip:
C - - - - - 0x0196BA 06:B6AA: A9 00     LDA #$00                           ; clear substatus
; In: Register A - an new status
@bra_B6AC_ninja:
C - - - - - 0x0196BC 06:B6AC: 20 4E B7  JSR sub_B74E_change_substatus      ;
@bra_B6AF_skip:
C - - - - - 0x0196BF 06:B6AF: 20 11 B8  JSR sub_B811_try_change_direction  ;
C - - - - - 0x0196C2 06:B6B2: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x0196C5 06:B6B5: C9 19     CMP #$19                           ; CONSTANT - Karate-girl
C - - - - - 0x0196C7 06:B6B7: F0 04     BEQ @bra_B6BD_girl                 ; If EnemyA == 0x19
C - - - - - 0x0196C9 06:B6B9: C9 38     CMP #$38                           ; CONSTANT - Ninja upside down
C - - - - - 0x0196CB 06:B6BB: D0 3E     BNE @bra_B6FB_skip                 ; If EnemyA != 0x38
@bra_B6BD_girl:
C - - - - - 0x0196CD 06:B6BD: BD 20 03  LDA vEnemyAStatus,X                ;
C - - - - - 0x0196D0 06:B6C0: 29 40     AND #$40                           ; CONSTANT - the enemy can get damage
C - - - - - 0x0196D2 06:B6C2: F0 37     BEQ @bra_B6FB_skip                 ; If the enemt can't get damage
C - - - - - 0x0196D4 06:B6C4: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x0196D6 06:B6C6: 29 07     AND #$07                           ;
C - - - - - 0x0196D8 06:B6C8: D0 31     BNE @bra_B6FB_skip                 ; Branch if vLowCounter doesn't multiple of 8 (vLowCounter % 8 != 0)
C - - - - - 0x0196DA 06:B6CA: A4 7A     LDY vBulletCount                   ; set loop counter
@bra_B6CC_loop:                                                            ; loop by vBulletCount
C - - - - - 0x0196DC 06:B6CC: B9 8F 00  LDA vBulletStatus,Y                ;
C - - - - - 0x0196DF 06:B6CF: 10 27     BPL @bra_B6F8_skip                 ; If the current bullet isn't activated
C - - - - - 0x0196E1 06:B6D1: B9 7B 00  LDA vBulletPosX,Y                  ;
C - - - - - 0x0196E4 06:B6D4: 38        SEC                                ;
C - - - - - 0x0196E5 06:B6D5: FD 32 03  SBC vEnemyAScreenPosX,X            ;
C - - - - - 0x0196E8 06:B6D8: B0 03     BCS @bra_B6DD_skip                 ; If BulletPosX - ScreenPosX >= 0
C - - - - - 0x0196EA 06:B6DA: 20 73 D0  JSR sub_D073_invert_sign           ;
@bra_B6DD_skip:
C - - - - - 0x0196ED 06:B6DD: C9 10     CMP #$10                           ; CONSTANT - allowable tolerance
C - - - - - 0x0196EF 06:B6DF: B0 17     BCS @bra_B6F8_skip                 ; If |BulletPosX - ScreenPosX| >= 0x10
C - - - - - 0x0196F1 06:B6E1: A9 20     LDA #$20                           ;
C - - - - - 0x0196F3 06:B6E3: 9D 4A 03  STA vEnemyAJumpCounter,X           ; Initializes a jump counter (for the girl)
C - - - - - 0x0196F6 06:B6E6: A9 08     LDA #$08                           ; CONSTANT - 'kneel down' status (for the girl)
C - - - - - 0x0196F8 06:B6E8: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x0196FB 06:B6EB: C0 38     CPY #$38                           ; CONSTANT - Ninja upside down
C - - - - - 0x0196FD 06:B6ED: D0 07     BNE @bra_B6F6_skip                 ; If EnemyA != 0x38
C - - - - - 0x0196FF 06:B6EF: A9 30     LDA #$30                           ;
C - - - - - 0x019701 06:B6F1: 9D 4A 03  STA vEnemyAJumpCounter,X           ; Initializes a jump counter (for the ninja)
C - - - - - 0x019704 06:B6F4: A9 04     LDA #$04                           ; CONSTANT - 'kneel down' status  (for the ninja)
@bra_B6F6_skip:
C - - - - - 0x019706 06:B6F6: D0 56     BNE bra_B74E_change_substatus      ; Always true

@bra_B6F8_skip:
C - - - - - 0x019708 06:B6F8: 88        DEY                                ; decrement loop counter
C - - - - - 0x019709 06:B6F9: 10 D1     BPL @bra_B6CC_loop                 ; If Register Y >= 0x00
@bra_B6FB_skip:
C - - - - - 0x01970B 06:B6FB: A5 2C     LDA vLowCounter                    ;
C - - - - - 0x01970D 06:B6FD: 29 3F     AND #$3F                           ;
C - - - - - 0x01970F 06:B6FF: D0 59     BNE bra_B75A_RTS                   ; Branch if vLowCounter doesn't multiple of 64 (vLowCounter % 64 != 0)
C - - - - - 0x019711 06:B701: 20 64 D0  JSR sub_D064_generate_rng          ;
C - - - - - 0x019714 06:B704: 6A        ROR                                ;
C - - - - - 0x019715 06:B705: B0 53     BCS bra_B75A_RTS                   ; 50% chance branch
C - - - - - 0x019717 06:B707: 29 07     AND #$07                           ;
C - - - - - 0x019719 06:B709: BC 26 03  LDY vEnemyAProjectileIsUsed,X      ;
C - - - - - 0x01971C 06:B70C: 30 03     BMI bra_B711_skip                  ; If the projectile is used
C - - - - - 0x01971E 06:B70E: 4C 27 B7  JMP loc_B727_set_status_flag       ;

; In: Register A - RNG value
bra_B711_skip:
C - - - - - 0x019721 06:B711: 18        CLC                                ; A is {0x00, 0x01, ..., 0x07}
C - - - - - 0x019722 06:B712: 69 08     ADC #$08                           ; A is {0x08, 0x09, ..., 0x0F}
C - - - - - 0x019724 06:B714: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x019727 06:B717: C0 38     CPY #$38                           ; CONSTANT - Ninja upside down
C - - - - - 0x019729 06:B719: F0 09     BEQ @bra_B724_ninja                ; If vEnemyA == 0x38
C - - - - - 0x01972B 06:B71B: C0 01     CPY #$01                           ; CONSTANT - Cat with the gun
C - - - - - 0x01972D 06:B71D: D0 08     BNE bra_B727_set_status_flag       ; If vEnemyA != 0x01
C - - - - - 0x01972F 06:B71F: 18        CLC                                ;
C - - - - - 0x019730 06:B720: 69 08     ADC #$08                           ; A is {0x10, 0x11, ..., 0x17}
C - - - - - 0x019732 06:B722: D0 03     BNE bra_B727_set_status_flag       ; Always true

@bra_B724_ninja:
C - - - - - 0x019734 06:B724: 18        CLC                                ;
C - - - - - 0x019735 06:B725: 69 10     ADC #$10                           ; A is {0x18, 0x19, ..., 0x1F}
; In: Register A - the status flag offset
bra_B727_set_status_flag:
loc_B727_set_status_flag:
C D 1 - - - 0x019737 06:B727: A8        TAY                                ; y is {0x00, 0x01, ... , 0x1F}
C - - - - - 0x019738 06:B728: B9 C4 B1  LDA tbl_B1C4_status_flags,Y        ;
C - - - - - 0x01973B 06:B72B: 20 5B B7  JSR sub_B75B_try_to_add_sound      ;
C - - - - - 0x01973E 06:B72E: 85 05     STA ram_0005                       ;
C - - - - - 0x019740 06:B730: F0 1E     BEQ bra_B750_change_substatus_ex   ; If status flag == 0x00
C - - - - - 0x019742 06:B732: C9 10     CMP #$10                           ; CONSTANT - 'squatting' status
C - - - - - 0x019744 06:B734: F0 11     BEQ bra_B747_short                 ; If 'squatting' status is activated
C - - - - - 0x019746 06:B736: AC 00 03  LDY vEnemyA                        ;
C - - - - - 0x019749 06:B739: C0 38     CPY #$38                           ; CONSTANT - Ninja upside down
C - - - - - 0x01974B 06:B73B: D0 06     BNE bra_B743_long                  ; If vEnemyA != 0x38
C - - - - - 0x01974D 06:B73D: 20 43 B7  JSR sub_B743_long                  ;
C - - - - - 0x019750 06:B740: 4C 73 B7  JMP loc_B773_start_to_shoot        ;

; In: $0005 - an new status
bra_B743_long:
sub_B743_long:
C - - - - - 0x019753 06:B743: A9 40     LDA #$40                           ; the jump counter value #1
C - - - - - 0x019755 06:B745: D0 02     BNE bra_B749_skip                  ; Always true

; In: $0005 - an new status
bra_B747_short:
C - - - - - 0x019757 06:B747: A9 20     LDA #$20                           ; the jump counter value #1
bra_B749_skip:
C - - - - - 0x019759 06:B749: 9D 4A 03  STA vEnemyAJumpCounter,X           ;
C - - - - - 0x01975C 06:B74C: D0 02     BNE bra_B750_change_substatus_ex   ;

; In: Register X - the enemyA number
; In: Register A - an new status
sub_B74E_change_substatus:
bra_B74E_change_substatus:
C - - - - - 0x01975E 06:B74E: 85 05     STA ram_0005              ;
; In: Register X - the enemyA number
; In: $0005 - an new status
bra_B750_change_substatus_ex:
C - - - - - 0x019760 06:B750: BD 20 03  LDA vEnemyAStatus,X       ;
C - - - - - 0x019763 06:B753: 29 C1     AND #$C1                  ; clear substate
C - - - - - 0x019765 06:B755: 05 05     ORA ram_0005              ;
C - - - - - 0x019767 06:B757: 9D 20 03  STA vEnemyAStatus,X       ;
bra_B75A_RTS:
C - - - - - 0x01976A 06:B75A: 60        RTS                       ;

; In: Register A - a status flag
sub_B75B_try_to_add_sound:
C - - - - - 0x01976B 06:B75B: 48        PHA                           ; store a status
C - - - - - 0x01976C 06:B75C: C9 04     CMP #$04                      ; CONSTANT - 'close contact' status
C - - - - - 0x01976E 06:B75E: D0 11     BNE @bra_B771_skip            ; If 'close contact' status isn't activated
C - - - - - 0x019770 06:B760: AD 00 03  LDA vEnemyA                   ;
C - - - - - 0x019773 06:B763: C9 01     CMP #$01                      ; CONSTANT - Cat with the gun
C - - - - - 0x019775 06:B765: D0 0A     BNE @bra_B771_skip            ; If vEnemyA != 0x01
C - - - - - 0x019777 06:B767: BD 26 03  LDA vEnemyAProjectileIsUsed,X ;
C - - - - - 0x01977A 06:B76A: 30 05     BMI @bra_B771_skip            ; If the projectile is used
C - - - - - 0x01977C 06:B76C: A9 31     LDA #$31                      ; sound of fist swings
C - - - - - 0x01977E 06:B76E: 20 20 C4  JSR sub_C420_add_sound_effect ; bank FF
@bra_B771_skip:
C - - - - - 0x019781 06:B771: 68        PLA                           ; retrieve a status (see $B75B)
C - - - - - 0x019782 06:B772: 60        RTS                           ;

; In: Register X - the enemyA number
sub_B773_start_to_shoot:
loc_B773_start_to_shoot:
C D 1 - - - 0x019783 06:B773: A9 31     LDA #$31                              ; sound of fist swings
C - - - - - 0x019785 06:B775: 20 20 C4  JSR sub_C420_add_sound_effect         ; bank FF
C - - - - - 0x019788 06:B778: A9 F0     LDA #$F0                              ; the offset by PosY #1
C - - - - - 0x01978A 06:B77A: AC 00 03  LDY vEnemyA                           ;
C - - - - - 0x01978D 06:B77D: C0 35     CPY #$35                              ; CONSTANT - Egyptian with bow
C - - - - - 0x01978F 06:B77F: F0 08     BEQ @bra_B789_skip                    ; If vEnemyA == 0x35
C - - - - - 0x019791 06:B781: A9 28     LDA #$28                              ; the offset by PosY #2
C - - - - - 0x019793 06:B783: C0 38     CPY #$38                              ; CONSTANT - Ninja upside down
C - - - - - 0x019795 06:B785: F0 02     BEQ @bra_B789_skip                    ; If vEnemyA == 0x38
C - - - - - 0x019797 06:B787: A9 EE     LDA #$EE                              ; the offset by PosY #3
@bra_B789_skip:
C - - - - - 0x019799 06:B789: 18        CLC                                   ;
C - - - - - 0x01979A 06:B78A: 7D 2C 03  ADC vEnemyAPosY,X                     ;
C - - - - - 0x01979D 06:B78D: 9D 2E 03  STA vEnemyAProjectilePosY,X           ; <~ PosY + the offset
C - - - - - 0x0197A0 06:B790: A9 00     LDA #$00                              ;
C - - - - - 0x0197A2 06:B792: 9D 46 03  STA vEnemyAProjectileFrame_Counter,X  ; Initializes a projectile frame counter
C - - - - - 0x0197A5 06:B795: 4C A6 B7  JMP loc_B7A6_continue                 ;

; In: Register X - the enemyA number
loc_B798_cat_start_to_shoot:
C D 1 - - - 0x0197A8 06:B798: BD 2C 03  LDA vEnemyAPosY,X                     ;
C - - - - - 0x0197AB 06:B79B: 38        SEC                                   ;
C - - - - - 0x0197AC 06:B79C: E9 17     SBC #$17                              ;
C - - - - - 0x0197AE 06:B79E: 9D 2E 03  STA vEnemyAProjectilePosY,X           ; <~ PosY - 0x17
C - - - - - 0x0197B1 06:B7A1: A9 01     LDA #$01                              ;
C - - - - - 0x0197B3 06:B7A3: 9D 46 03  STA vEnemyAProjectileFrame_Counter,X  ; Initializes a projectile frame counter
loc_B7A6_continue:
C D 1 - - - 0x0197B6 06:B7A6: A9 C4     LDA #$C4                            ;
C - - - - - 0x0197B8 06:B7A8: 85 00     STA ram_0000                        ; $0000 <~ 0xC4
C - - - - - 0x0197BA 06:B7AA: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x0197BD 06:B7AD: 29 01     AND #$01                            ; CONSTANT - 'direction' status
C - - - - - 0x0197BF 06:B7AF: 05 00     ORA ram_0000                        ;
C - - - - - 0x0197C1 06:B7B1: 9D 22 03  STA vEnemyAProjectileStatus,X       ;  <~ 0xC4 or 0xC5
C - - - - - 0x0197C4 06:B7B4: AC 00 03  LDY vEnemyA                         ;
C - - - - - 0x0197C7 06:B7B7: C0 37     CPY #$37                            ; CONSTANT - Egyptian with a boomerung
C - - - - - 0x0197C9 06:B7B9: D0 1E     BNE @bra_B7D9_skip                  ; If EnemyA != 0x37
C - - - - - 0x0197CB 06:B7BB: 29 F1     AND #$F1                            ;
C - - - - - 0x0197CD 06:B7BD: 09 08     ORA #$08                            ;
C - - - - - 0x0197CF 06:B7BF: 9D 22 03  STA vEnemyAProjectileStatus,X       ;  <~ 0xC8 or 0xC9
C - - - - - 0x0197D2 06:B7C2: A9 00     LDA #$00                            ; !(UNUSED), not used
C - - - - - 0x0197D4 06:B7C4: 9D 58 03  STA ram_0358,X                      ; !(UNUSED), not used
C - - - - - 0x0197D7 06:B7C7: A9 08     LDA #$08                            ; Initializes a jump counter
C - - - - - 0x0197D9 06:B7C9: 9D 4C 03  STA vEnemyAProjectileJumpCounter,X  ;
C - - - - - 0x0197DC 06:B7CC: 20 64 D0  JSR sub_D064_generate_rng           ;
C - - - - - 0x0197DF 06:B7CF: 29 03     AND #$03                            ; A = {0x00, 0x01, 0x02, 0x03}
C - - - - - 0x0197E1 06:B7D1: C9 03     CMP #$03                            ;
C - - - - - 0x0197E3 06:B7D3: D0 0B     BNE @bra_B7E0_skip                  ; If RNG value != 0x03
C - - - - - 0x0197E5 06:B7D5: A9 02     LDA #$02                            ; the velocity value #1
C - - - - - 0x0197E7 06:B7D7: D0 07     BNE @bra_B7E0_skip                  ; Always true

@bra_B7D9_skip:
C - - - - - 0x0197E9 06:B7D9: A9 20     LDA #$20                            ; Initializes a jump counter
C - - - - - 0x0197EB 06:B7DB: 9D 4C 03  STA vEnemyAProjectileJumpCounter,X  ;
C - - - - - 0x0197EE 06:B7DE: A9 04     LDA #$04                            ; the velocity value #2
@bra_B7E0_skip:
C - - - - - 0x0197F0 06:B7E0: 9D 28 03  STA vEnemyAProjectileVelocity,X     ; velocity <~ {0x00, 0x01, 0x02, 0x04}
C - - - - - 0x0197F3 06:B7E3: A0 00     LDY #$00                            ; the offset by PosXLow #1
C - - - - - 0x0197F5 06:B7E5: AD 00 03  LDA vEnemyA                         ;
C - - - - - 0x0197F8 06:B7E8: C9 38     CMP #$38                            ; CONSTANT - Ninja upside down
C - - - - - 0x0197FA 06:B7EA: F0 02     BEQ @bra_B7EE_skip                  ; If EnemyA == 0x38
C - - - - - 0x0197FC 06:B7EC: A0 0E     LDY #$0E                            ; the offset by PosXLow #2
@bra_B7EE_skip:
C - - - - - 0x0197FE 06:B7EE: 84 00     STY ram_0000                        ; <~ 0x00 or 0x0E
C - - - - - 0x019800 06:B7F0: BD 20 03  LDA vEnemyAStatus,X                 ;
C - - - - - 0x019803 06:B7F3: 29 01     AND #$01                            ;
C - - - - - 0x019805 06:B7F5: F0 06     BEQ @bra_B7FD_right                 ; If the enemy is looking to the right
C - - - - - 0x019807 06:B7F7: A9 F2     LDA #$F2                            ; the offset by PosXLow #3
C - - - - - 0x019809 06:B7F9: 85 00     STA ram_0000                        ;
C - - - - - 0x01980B 06:B7FB: A9 FF     LDA #$FF                            ; the offset by PosXHigh #2
@bra_B7FD_right:
C - - - - - 0x01980D 06:B7FD: 85 01     STA ram_0001                        ; <~ 0x00 or 0xFF
C - - - - - 0x01980F 06:B7FF: BD 38 03  LDA vEnemyAPosXLow,X                ;
C - - - - - 0x019812 06:B802: 18        CLC                                 ;
C - - - - - 0x019813 06:B803: 65 00     ADC ram_0000                        ;
C - - - - - 0x019815 06:B805: 9D 3A 03  STA vEnemyAProjectilePosXLow,X      ; <~ PosXLow + $0000
C - - - - - 0x019818 06:B808: BD 3E 03  LDA vEnemyAPosXHigh,X               ;
C - - - - - 0x01981B 06:B80B: 65 01     ADC ram_0001                        ;
C - - - - - 0x01981D 06:B80D: 9D 40 03  STA vEnemyAProjectilePosXHigh,X     ; <~ PosXHigh + $0001 + carry flag
C - - - - - 0x019820 06:B810: 60        RTS                                 ;

; In: Register X - the enemyA number
sub_B811_try_change_direction:
C - - - - - 0x019821 06:B811: A9 7F     LDA #$7F                                  ; f(A) = 128, see $D6BD
C - - - - - 0x019823 06:B813: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction  ;
C - - - - - 0x019826 06:B816: 84 05     STY ram_0005                              ; $0005 <~ 1, if the enemy is to the right of the character, 0 - otherwise
C - - - - - 0x019828 06:B818: BD 20 03  LDA vEnemyAStatus,X                       ;
C - - - - - 0x01982B 06:B81B: 29 FE     AND #$FE                                  ; CONSTANT: N - the direction (see vEnemyAStatus)
C - - - - - 0x01982D 06:B81D: 05 05     ORA ram_0005                              ;
C - - - - - 0x01982F 06:B81F: 9D 20 03  STA vEnemyAStatus,X                       ;
C - - - - - 0x019832 06:B822: 60        RTS                                       ;

tbl_B823:
- D 1 - - - 0x019833 06:B823: 00        .byte $00   ; 
tbl_B824:
- D 1 - - - 0x019834 06:B824: 00        .byte $00   ; 
tbl_B825:
- D 1 - - - 0x019835 06:B825: 20        .byte $20   ; 
tbl_B826:
- D 1 - - - 0x019836 06:B826: 04        .byte $04   ; 
- D 1 - - - 0x019837 06:B827: 00        .byte $00   ; 
- D 1 - - - 0x019838 06:B828: 00        .byte $00   ; 
- D 1 - - - 0x019839 06:B829: 18        .byte $18   ; 
- D 1 - - - 0x01983A 06:B82A: 04        .byte $04   ; 
tbl_B82B:
- D 1 - - - 0x01983B 06:B82B: 00        .byte $00   ; 
- D 1 - - - 0x01983C 06:B82C: 00        .byte $00   ; 
- D 1 - - - 0x01983D 06:B82D: 00        .byte $00   ; 
- D 1 - - - 0x01983E 06:B82E: 10        .byte $10   ; 
- D 1 - - - 0x01983F 06:B82F: 10        .byte $10   ; 
- D 1 - - - 0x019840 06:B830: 0C        .byte $0C   ; 
- D 1 - - - 0x019841 06:B831: 0C        .byte $0C   ; 
- D 1 - - - 0x019842 06:B832: 0C        .byte $0C   ; 

loc_B833_enemy:
C D 1 - - - 0x019843 06:B833: 20 39 B8  JSR sub_B839_main
C - - - - - 0x019846 06:B836: 4C 73 A9  JMP loc_A973_projectile

sub_B839_main:
C - - - - - 0x019849 06:B839: A2 01     LDX #$01
C - - - - - 0x01984B 06:B83B: 86 1A     STX ram_001A
C - - - - - 0x01984D 06:B83D: A6 1A     LDX ram_001A
C - - - - - 0x01984F 06:B83F: 20 95 B8  JSR sub_B895
C - - - - - 0x019852 06:B842: A6 1A     LDX ram_001A
C - - - - - 0x019854 06:B844: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019857 06:B847: C9 E0     CMP #$E0
C - - - - - 0x019859 06:B849: B0 19     BCS bra_B864_RTS
C - - - - - 0x01985B 06:B84B: C9 C0     CMP #$C0
C - - - - - 0x01985D 06:B84D: 90 15     BCC bra_B864_RTS
C - - - - - 0x01985F 06:B84F: 20 6D B8  JSR sub_B86D
C - - - - - 0x019862 06:B852: 20 62 D5  JSR sub_D562_has_character_damage
C - - - - - 0x019865 06:B855: 90 0D     BCC bra_B864_RTS
sub_B857_try_to_arrest:
C - - - - - 0x019867 06:B857: AD 00 03  LDA vEnemyA                        ;
C - - - - - 0x01986A 06:B85A: C9 07     CMP #$07                           ; CONSTANT - Zenigata
C - - - - - 0x01986C 06:B85C: D0 06     BNE bra_B864_RTS                   ; If vEnemyA != 0x07
C - - - - - 0x01986E 06:B85E: A5 3A     LDA vDamageStatus                  ;
C - - - - - 0x019870 06:B860: 09 20     ORA #$20                           ; CONSTANT - The character got damage from Zenigata (arrested)
C - - - - - 0x019872 06:B862: 85 3A     STA vDamageStatus                  ; put a status flag
bra_B864_RTS:
C - - - - - 0x019874 06:B864: 60        RTS                                ;

loc_B865:
C D 1 - - - 0x019875 06:B865: A9 4A     LDA #$4A
C - - - - - 0x019877 06:B867: 8D 17 03  STA vZenigataTimerHigh1
C - - - - - 0x01987A 06:B86A: 4C 7F D7  JMP loc_D77F_free_enemyA             ;

sub_B86D:
C - - - - - 0x01987D 06:B86D: A0 00     LDY #$00
C - - - - - 0x01987F 06:B86F: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019882 06:B872: 29 10     AND #$10
C - - - - - 0x019884 06:B874: F0 02     BEQ bra_B878
C - - - - - 0x019886 06:B876: A0 04     LDY #$04
bra_B878:
C - - - - - 0x019888 06:B878: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01988B 06:B87B: 18        CLC
C - - - - - 0x01988C 06:B87C: 79 23 B8  ADC tbl_B823,Y
C - - - - - 0x01988F 06:B87F: 85 AD     STA ram_00AD
C - - - - - 0x019891 06:B881: BD 32 03  LDA ram_0332,X
C - - - - - 0x019894 06:B884: 18        CLC
C - - - - - 0x019895 06:B885: 79 24 B8  ADC tbl_B824,Y
C - - - - - 0x019898 06:B888: 85 AE     STA ram_00AE
C - - - - - 0x01989A 06:B88A: B9 25 B8  LDA tbl_B825,Y
C - - - - - 0x01989D 06:B88D: 85 AF     STA ram_00AF
C - - - - - 0x01989F 06:B88F: B9 26 B8  LDA tbl_B826,Y
C - - - - - 0x0198A2 06:B892: 85 B0     STA ram_00B0
bra_B894_RTS:
C - - - - - 0x0198A4 06:B894: 60        RTS

sub_B895:
C - - - - - 0x0198A5 06:B895: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x0198A8 06:B898: 10 FA     BPL bra_B894_RTS
C - - - - - 0x0198AA 06:B89A: 4A        LSR
C - - - - - 0x0198AB 06:B89B: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x0198AE 06:B89E: A2 B9     .addr loc_B9A3 - 1 ; 0x02
- D 1 - I - 0x0198B0 06:B8A0: AB B8     .addr loc_B8AC - 1 ; 0x04
- - - - - - 0x0198B2 06:B8A2: AB B8     .addr loc_B8AC - 1 ; 0x08
- D 1 - I - 0x0198B4 06:B8A4: 73 B9     .addr loc_B974 - 1 ; 0x10
- - - - - - 0x0198B6 06:B8A6: 49 BA     .addr loc_BA4A - 1 ; 0x20
- D 1 - I - 0x0198B8 06:B8A8: AB B8     .addr loc_B8AC - 1 ; 0x40
- D 1 - I - 0x0198BA 06:B8AA: AB B8     .addr loc_B8AC - 1 ; 0x80

loc_B8AC:
C - - - - - 0x0198BC 06:B8AC: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0198BF 06:B8AF: 85 00     STA ram_0000
C - - - - - 0x0198C1 06:B8B1: E6 00     INC ram_0000
C - - - - - 0x0198C3 06:B8B3: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y
C - - - - - 0x0198C6 06:B8B6: D0 07     BNE bra_B8BF
C - - - - - 0x0198C8 06:B8B8: A9 1C     LDA #$1C
C - - - - - 0x0198CA 06:B8BA: A0 02     LDY #$02
C - - - - - 0x0198CC 06:B8BC: 4C 92 B9  JMP loc_B992

bra_B8BF:
C - - - - - 0x0198CF 06:B8BF: 20 63 BA  JSR sub_BA63
C - - - - - 0x0198D2 06:B8C2: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x0198D5 06:B8C5: 29 08     AND #$08
C - - - - - 0x0198D7 06:B8C7: D0 03     BNE bra_B8CC
C - - - - - 0x0198D9 06:B8C9: 4C 13 B9  JMP loc_B913

bra_B8CC:
C - - - - - 0x0198DC 06:B8CC: A0 0C     LDY #$0C
C - - - - - 0x0198DE 06:B8CE: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x0198E1 06:B8D1: 29 04     AND #$04
C - - - - - 0x0198E3 06:B8D3: F0 0B     BEQ bra_B8E0
C - - - - - 0x0198E5 06:B8D5: A0 14     LDY #$14
C - - - - - 0x0198E7 06:B8D7: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0198EA 06:B8DA: C9 28     CMP #$28
C - - - - - 0x0198EC 06:B8DC: 90 02     BCC bra_B8E0
C - - - - - 0x0198EE 06:B8DE: A0 10     LDY #$10
bra_B8E0:
loc_B8E0:
C D 1 - - - 0x0198F0 06:B8E0: BD 38 03  LDA ram_0338,X
C - - - - - 0x0198F3 06:B8E3: 85 00     STA ram_0000
C - - - - - 0x0198F5 06:B8E5: BD 3E 03  LDA ram_033E,X
C - - - - - 0x0198F8 06:B8E8: 85 01     STA ram_0001
C - - - - - 0x0198FA 06:B8EA: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x0198FD 06:B8ED: 90 03     BCC bra_B8F2
C - - - - - 0x0198FF 06:B8EF: 4C 65 B8  JMP loc_B865

bra_B8F2:
C - - - - - 0x019902 06:B8F2: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x019905 06:B8F5: 90 03     BCC bra_B8FA
C - - - - - 0x019907 06:B8F7: 4C 41 D7  JMP loc_D741_enemyA_off_screen

bra_B8FA:
C - - - - - 0x01990A 06:B8FA: 20 25 D7  JSR sub_D725_enemyA_on_screen
C - - - - - 0x01990D 06:B8FD: C0 E0     CPY #$E0
C - - - - - 0x01990F 06:B8FF: 90 03     BCC bra_B904
- - - - - - 0x019911 06:B901: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1
bra_B904:
C - - - - - 0x019914 06:B904: 98        TYA
C - - - - - 0x019915 06:B905: 18        CLC
C - - - - - 0x019916 06:B906: 6D 02 03  ADC vEnemyASpriteMagic2
C - - - - - 0x019919 06:B909: 85 01     STA ram_0001
C - - - - - 0x01991B 06:B90B: AD 03 03  LDA vEnemyASpriteMagic3
C - - - - - 0x01991E 06:B90E: 85 02     STA ram_0002
C - - - - - 0x019920 06:B910: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

loc_B913:
C D 1 - - - 0x019923 06:B913: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019926 06:B916: 6A        ROR
C - - - - - 0x019927 06:B917: 90 0F     BCC bra_B928
C - - - - - 0x019929 06:B919: 20 2E B9  JSR sub_B92E
loc_B91C:
C D 1 - - - 0x01992C 06:B91C: 20 AE D9  JSR sub_D9AE_inc_enemyA_frame_counter
C - - - - - 0x01992F 06:B91F: BD 44 03  LDA ram_0344,X
C - - - - - 0x019932 06:B922: 0A        ASL
C - - - - - 0x019933 06:B923: 0A        ASL
C - - - - - 0x019934 06:B924: A8        TAY
C - - - - - 0x019935 06:B925: 4C E0 B8  JMP loc_B8E0

bra_B928:
C - - - - - 0x019938 06:B928: 20 62 B9  JSR sub_B962
C - - - - - 0x01993B 06:B92B: 4C 1C B9  JMP loc_B91C

sub_B92E:
C - - - - - 0x01993E 06:B92E: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left
C - - - - - 0x019941 06:B931: C9 01     CMP #$01
C - - - - - 0x019943 06:B933: F0 0B     BEQ bra_B940
C - - - - - 0x019945 06:B935: 20 F0 D6  JSR sub_D6F0_dec_EnemyAPosXLow
C - - - - - 0x019948 06:B938: A5 2C     LDA vLowCounter
C - - - - - 0x01994A 06:B93A: 6A        ROR
C - - - - - 0x01994B 06:B93B: 90 24     BCC bra_B961_RTS
C - - - - - 0x01994D 06:B93D: 4C F0 D6  JMP loc_D6F0_dec_EnemyAPosXLow

bra_B940:
C - - - - - 0x019950 06:B940: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019953 06:B943: 29 20     AND #$20
C - - - - - 0x019955 06:B945: D0 1A     BNE bra_B961_RTS
C - - - - - 0x019957 06:B947: A5 5E     LDA v_no_level
C - - - - - 0x019959 06:B949: C9 03     CMP #$03
C - - - - - 0x01995B 06:B94B: F0 14     BEQ bra_B961_RTS
C - - - - - 0x01995D 06:B94D: A9 14     LDA #$14
C - - - - - 0x01995F 06:B94F: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019962 06:B952: A9 02     LDA #$02
C - - - - - 0x019964 06:B954: 20 AD BA  JSR sub_BAAD
C - - - - - 0x019967 06:B957: A9 03     LDA #$03
C - - - - - 0x019969 06:B959: 9D 56 03  STA ram_0356,X
C - - - - - 0x01996C 06:B95C: A9 00     LDA #$00
C - - - - - 0x01996E 06:B95E: 9D 44 03  STA ram_0344,X
bra_B961_RTS:
C - - - - - 0x019971 06:B961: 60        RTS

sub_B962:
C - - - - - 0x019972 06:B962: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right
C - - - - - 0x019975 06:B965: C9 01     CMP #$01
C - - - - - 0x019977 06:B967: F0 D7     BEQ bra_B940
C - - - - - 0x019979 06:B969: 20 0F D7  JSR sub_D70F_inc_EnemyAPosXLow
C - - - - - 0x01997C 06:B96C: A5 2C     LDA vLowCounter
C - - - - - 0x01997E 06:B96E: 6A        ROR
C - - - - - 0x01997F 06:B96F: 90 F0     BCC bra_B961_RTS
C - - - - - 0x019981 06:B971: 4C 0F D7  JMP loc_D70F_inc_EnemyAPosXLow

loc_B974:
C - - - - - 0x019984 06:B974: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019987 06:B977: F0 05     BEQ bra_B97E
C - - - - - 0x019989 06:B979: A0 18     LDY #$18
C - - - - - 0x01998B 06:B97B: 4C E0 B8  JMP loc_B8E0

bra_B97E:
C - - - - - 0x01998E 06:B97E: 20 3E E3  JSR sub_E332_generate_jump_type
C - - - - - 0x019991 06:B981: BC 2C 03  LDY ram_032C,X
C - - - - - 0x019994 06:B984: C0 BF     CPY #$BF
C - - - - - 0x019996 06:B986: 90 06     BCC bra_B98E
C - - - - - 0x019998 06:B988: 29 01     AND #$01
C - - - - - 0x01999A 06:B98A: D0 02     BNE bra_B98E
C - - - - - 0x01999C 06:B98C: A9 03     LDA #$03
bra_B98E:
C - - - - - 0x01999E 06:B98E: A8        TAY
C - - - - - 0x01999F 06:B98F: B9 58 E3  LDA tbl_E358_init_counter,Y
loc_B992:
C D 1 - - - 0x0199A2 06:B992: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0199A5 06:B995: 98        TYA
C - - - - - 0x0199A6 06:B996: 9D 56 03  STA ram_0356,X
C - - - - - 0x0199A9 06:B999: A9 02     LDA #$02
C - - - - - 0x0199AB 06:B99B: 20 AD BA  JSR sub_BAAD
C - - - - - 0x0199AE 06:B99E: A9 00     LDA #$00
C - - - - - 0x0199B0 06:B9A0: 9D 44 03  STA ram_0344,X
loc_B9A3:
C - - - - - 0x0199B3 06:B9A3: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0199B6 06:B9A6: C9 DF     CMP #$DF
C - - - - - 0x0199B8 06:B9A8: B0 1E     BCS bra_B9C8
C - - - - - 0x0199BA 06:B9AA: BD 56 03  LDA ram_0356,X
C - - - - - 0x0199BD 06:B9AD: C9 03     CMP #$03
C - - - - - 0x0199BF 06:B9AF: D0 17     BNE bra_B9C8
C - - - - - 0x0199C1 06:B9B1: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x0199C4 06:B9B4: 6A        ROR
C - - - - - 0x0199C5 06:B9B5: 90 0A     BCC bra_B9C1
C - - - - - 0x0199C7 06:B9B7: 29 10     AND #$10
C - - - - - 0x0199C9 06:B9B9: D0 0A     BNE bra_B9C5
bra_B9BB:
C - - - - - 0x0199CB 06:B9BB: 20 2E B9  JSR sub_B92E
C - - - - - 0x0199CE 06:B9BE: 4C C8 B9  JMP loc_B9C8

bra_B9C1:
C - - - - - 0x0199D1 06:B9C1: 29 10     AND #$10
C - - - - - 0x0199D3 06:B9C3: D0 F6     BNE bra_B9BB
bra_B9C5:
C - - - - - 0x0199D5 06:B9C5: 20 62 B9  JSR sub_B962
bra_B9C8:
loc_B9C8:
C D 1 - - - 0x0199D8 06:B9C8: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0199DB 06:B9CB: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y
C - - - - - 0x0199DE 06:B9CE: 18        CLC
C - - - - - 0x0199DF 06:B9CF: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x0199E2 06:B9D2: C9 DF     CMP #$DF
C - - - - - 0x0199E4 06:B9D4: 90 09     BCC bra_B9DF
C - - - - - 0x0199E6 06:B9D6: A0 DF     LDY #$DF
C - - - - - 0x0199E8 06:B9D8: C9 F8     CMP #$F8
C - - - - - 0x0199EA 06:B9DA: 90 02     BCC bra_B9DE
- - - - - - 0x0199EC 06:B9DC: A0        .byte $A0   ; 
- - - - - - 0x0199ED 06:B9DD: 00        .byte $00   ; 
bra_B9DE:
C - - - - - 0x0199EE 06:B9DE: 98        TYA
bra_B9DF:
C - - - - - 0x0199EF 06:B9DF: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0199F2 06:B9E2: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0199F5 06:B9E5: C0 18     CPY #$18
C - - - - - 0x0199F7 06:B9E7: 90 50     BCC bra_BA39
C - - - - - 0x0199F9 06:B9E9: C9 DF     CMP #$DF
C - - - - - 0x0199FB 06:B9EB: 90 05     BCC bra_B9F2
C - - - - - 0x0199FD 06:B9ED: A0 FF     LDY #$FF
C - - - - - 0x0199FF 06:B9EF: 4C E0 B8  JMP loc_B8E0

bra_B9F2:
C - - - - - 0x019A02 06:B9F2: 85 00     STA ram_0000
C - - - - - 0x019A04 06:B9F4: E6 00     INC ram_0000
C - - - - - 0x019A06 06:B9F6: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y
C - - - - - 0x019A09 06:B9F9: F0 23     BEQ bra_BA1E
C - - - - - 0x019A0B 06:B9FB: C9 02     CMP #$02
C - - - - - 0x019A0D 06:B9FD: F0 07     BEQ bra_BA06
C - - - - - 0x019A0F 06:B9FF: 20 47 D3  JSR sub_D347_check_landing_enemyA
C - - - - - 0x019A12 06:BA02: D0 0E     BNE bra_BA12
- - - - - - 0x019A14 06:BA04: F0        .byte $F0   ; 
- - - - - - 0x019A15 06:BA05: 18        .byte $18   ; 
bra_BA06:
C - - - - - 0x019A16 06:BA06: 20 47 D3  JSR sub_D347_check_landing_enemyA
C - - - - - 0x019A19 06:BA09: F0 13     BEQ bra_BA1E
C - - - - - 0x019A1B 06:BA0B: BD 56 03  LDA ram_0356,X
C - - - - - 0x019A1E 06:BA0E: C9 04     CMP #$04
C - - - - - 0x019A20 06:BA10: F0 0C     BEQ bra_BA1E
bra_BA12:
C - - - - - 0x019A22 06:BA12: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY
C - - - - - 0x019A25 06:BA15: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019A28 06:BA18: 29 20     AND #$20
C - - - - - 0x019A2A 06:BA1A: D0 29     BNE bra_BA45
C - - - - - 0x019A2C 06:BA1C: F0 0A     BEQ bra_BA28
bra_BA1E:
C - - - - - 0x019A2E 06:BA1E: FE 4A 03  INC ram_034A,X
C - - - - - 0x019A31 06:BA21: A9 2F     LDA #$2F
C - - - - - 0x019A33 06:BA23: DD 4A 03  CMP ram_034A,X
C - - - - - 0x019A36 06:BA26: B0 03     BCS bra_BA2B
bra_BA28:
C - - - - - 0x019A38 06:BA28: 9D 4A 03  STA ram_034A,X
bra_BA2B:
C - - - - - 0x019A3B 06:BA2B: A0 18     LDY #$18
C - - - - - 0x019A3D 06:BA2D: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019A40 06:BA30: 29 20     AND #$20
C - - - - - 0x019A42 06:BA32: D0 02     BNE bra_BA36
C - - - - - 0x019A44 06:BA34: A0 08     LDY #$08
bra_BA36:
C - - - - - 0x019A46 06:BA36: 4C E0 B8  JMP loc_B8E0

bra_BA39:
C - - - - - 0x019A49 06:BA39: 20 D5 D7  JSR sub_D7D5_check_enemyA_collision_by_Y_in_maze
C - - - - - 0x019A4C 06:BA3C: D0 E0     BNE bra_BA1E
C - - - - - 0x019A4E 06:BA3E: A9 18     LDA #$18
C - - - - - 0x019A50 06:BA40: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019A53 06:BA43: D0 D9     BNE bra_BA1E
bra_BA45:
- - - - - - 0x019A55 06:BA45: A9        .byte $A9   ; 
- - - - - - 0x019A56 06:BA46: 30        .byte $30   ; <0>
- - - - - - 0x019A57 06:BA47: 9D        .byte $9D   ; 
- - - - - - 0x019A58 06:BA48: 4A        .byte $4A   ; <J>
- - - - - - 0x019A59 06:BA49: 03        .byte $03   ; 
loc_BA4A:
- - - - - - 0x019A5A 06:BA4A: DE        .byte $DE   ; 
- - - - - - 0x019A5B 06:BA4B: 4A        .byte $4A   ; <J>
- - - - - - 0x019A5C 06:BA4C: 03        .byte $03   ; 
- - - - - - 0x019A5D 06:BA4D: D0        .byte $D0   ; 
- - - - - - 0x019A5E 06:BA4E: 03        .byte $03   ; 
- - - - - - 0x019A5F 06:BA4F: 4C        .byte $4C   ; <L>
- - - - - - 0x019A60 06:BA50: 65        .byte $65   ; <e>
- - - - - - 0x019A61 06:BA51: B8        .byte $B8   ; 
- - - - - - 0x019A62 06:BA52: BD        .byte $BD   ; 
- - - - - - 0x019A63 06:BA53: 4A        .byte $4A   ; <J>
- - - - - - 0x019A64 06:BA54: 03        .byte $03   ; 
- - - - - - 0x019A65 06:BA55: 20        .byte $20   ; 
- - - - - - 0x019A66 06:BA56: 5F        .byte $5F   ; 
- - - - - - 0x019A67 06:BA57: D0        .byte $D0   ; 
- - - - - - 0x019A68 06:BA58: A8        .byte $A8   ; 
- - - - - - 0x019A69 06:BA59: B9        .byte $B9   ; 
- - - - - - 0x019A6A 06:BA5A: 60        .byte $60   ; 
- - - - - - 0x019A6B 06:BA5B: BA        .byte $BA   ; 
- - - - - - 0x019A6C 06:BA5C: A8        .byte $A8   ; 
- - - - - - 0x019A6D 06:BA5D: 4C        .byte $4C   ; <L>
- - - - - - 0x019A6E 06:BA5E: E0        .byte $E0   ; 
- - - - - - 0x019A6F 06:BA5F: B8        .byte $B8   ; 
- - - - - - 0x019A70 06:BA60: E4        .byte $E4   ; 
- - - - - - 0x019A71 06:BA61: E0        .byte $E0   ; 
- - - - - - 0x019A72 06:BA62: 18        .byte $18   ; 
sub_BA63:
C - - - - - 0x019A73 06:BA63: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019A76 06:BA66: F0 1D     BEQ bra_BA85
C - - - - - 0x019A78 06:BA68: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019A7B 06:BA6B: F0 13     BEQ bra_BA80
C - - - - - 0x019A7D 06:BA6D: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019A80 06:BA70: 29 0C     AND #$0C
C - - - - - 0x019A82 06:BA72: C9 0C     CMP #$0C
C - - - - - 0x019A84 06:BA74: D0 43     BNE bra_BAB9_RTS
C - - - - - 0x019A86 06:BA76: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019A89 06:BA79: C9 28     CMP #$28
C - - - - - 0x019A8B 06:BA7B: D0 3C     BNE bra_BAB9_RTS
C - - - - - 0x019A8D 06:BA7D: 4C BA BA  JMP loc_BABA

bra_BA80:
C - - - - - 0x019A90 06:BA80: A9 00     LDA #$00
C - - - - - 0x019A92 06:BA82: 20 AD BA  JSR sub_BAAD
bra_BA85:
C - - - - - 0x019A95 06:BA85: 20 E1 BA  JSR sub_BAE1
C - - - - - 0x019A98 06:BA88: A5 2C     LDA vLowCounter
C - - - - - 0x019A9A 06:BA8A: 29 3F     AND #$3F
C - - - - - 0x019A9C 06:BA8C: D0 2B     BNE bra_BAB9_RTS
C - - - - - 0x019A9E 06:BA8E: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x019AA1 06:BA91: 6A        ROR
C - - - - - 0x019AA2 06:BA92: B0 25     BCS bra_BAB9_RTS
C - - - - - 0x019AA4 06:BA94: 29 07     AND #$07
C - - - - - 0x019AA6 06:BA96: A8        TAY
C - - - - - 0x019AA7 06:BA97: B9 2B B8  LDA tbl_B82B,Y
C - - - - - 0x019AAA 06:BA9A: 85 05     STA ram_0005
C - - - - - 0x019AAC 06:BA9C: F0 11     BEQ bra_BAAF
C - - - - - 0x019AAE 06:BA9E: C9 0C     CMP #$0C
C - - - - - 0x019AB0 06:BAA0: D0 04     BNE bra_BAA6
C - - - - - 0x019AB2 06:BAA2: A9 40     LDA #$40
C - - - - - 0x019AB4 06:BAA4: D0 02     BNE bra_BAA8
bra_BAA6:
C - - - - - 0x019AB6 06:BAA6: A9 20     LDA #$20
bra_BAA8:
C - - - - - 0x019AB8 06:BAA8: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019ABB 06:BAAB: D0 02     BNE bra_BAAF
sub_BAAD:
C - - - - - 0x019ABD 06:BAAD: 85 05     STA ram_0005
bra_BAAF:
C - - - - - 0x019ABF 06:BAAF: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019AC2 06:BAB2: 29 C1     AND #$C1
C - - - - - 0x019AC4 06:BAB4: 05 05     ORA ram_0005
C - - - - - 0x019AC6 06:BAB6: 9D 20 03  STA vEnemyAStatus,X
bra_BAB9_RTS:
C - - - - - 0x019AC9 06:BAB9: 60        RTS

loc_BABA:
C D 1 - - - 0x019ACA 06:BABA: A0 0C     LDY #$0C
C - - - - - 0x019ACC 06:BABC: 20 2A A9  JSR sub_A92A_add_projectile_ex
C - - - - - 0x019ACF 06:BABF: BD 22 03  LDA ram_0322,X
C - - - - - 0x019AD2 06:BAC2: 09 02     ORA #$02
C - - - - - 0x019AD4 06:BAC4: 9D 22 03  STA ram_0322,X
C - - - - - 0x019AD7 06:BAC7: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x019ADA 06:BACA: 29 03     AND #$03
C - - - - - 0x019ADC 06:BACC: 18        CLC
C - - - - - 0x019ADD 06:BACD: 69 03     ADC #$03
C - - - - - 0x019ADF 06:BACF: 9D 28 03  STA ram_0328,X
C - - - - - 0x019AE2 06:BAD2: A9 00     LDA #$00
C - - - - - 0x019AE4 06:BAD4: 9D 46 03  STA ram_0346,X
C - - - - - 0x019AE7 06:BAD7: A9 03     LDA #$03
C - - - - - 0x019AE9 06:BAD9: 9D 4C 03  STA ram_034C,X
C - - - - - 0x019AEC 06:BADC: A9 31     LDA #$31
C - - - - - 0x019AEE 06:BADE: 4C 20 C4  JMP loc_C420_add_sound_effect ; bank_FF

sub_BAE1:
C - - - - - 0x019AF1 06:BAE1: A9 3F     LDA #$3F
C - - - - - 0x019AF3 06:BAE3: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction
C - - - - - 0x019AF6 06:BAE6: 84 05     STY ram_0005
C - - - - - 0x019AF8 06:BAE8: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019AFB 06:BAEB: 29 FE     AND #$FE
C - - - - - 0x019AFD 06:BAED: 05 05     ORA ram_0005
C - - - - - 0x019AFF 06:BAEF: 9D 20 03  STA vEnemyAStatus,X
C - - - - - 0x019B02 06:BAF2: 60        RTS

tbl_BAF3:
- D 1 - - - 0x019B03 06:BAF3: 00        .byte $00   ; 
- D 1 - - - 0x019B04 06:BAF4: 00        .byte $00   ; 
- D 1 - - - 0x019B05 06:BAF5: 00        .byte $00   ; 
- D 1 - - - 0x019B06 06:BAF6: 00        .byte $00   ; 
- D 1 - - - 0x019B07 06:BAF7: 00        .byte $00   ; 
- D 1 - - - 0x019B08 06:BAF8: 02        .byte $02   ; 
- D 1 - - - 0x019B09 06:BAF9: 08        .byte $08   ; 
- D 1 - - - 0x019B0A 06:BAFA: 08        .byte $08   ; 
loc_BAFB:
C D 1 - - - 0x019B0B 06:BAFB: A2 01     LDX #$01
C - - - - - 0x019B0D 06:BAFD: 86 1A     STX ram_001A
bra_BAFF:
C - - - - - 0x019B0F 06:BAFF: A6 1A     LDX ram_001A
C - - - - - 0x019B11 06:BB01: 20 8A BB  JSR sub_BB8A
C - - - - - 0x019B14 06:BB04: A6 1A     LDX ram_001A
C - - - - - 0x019B16 06:BB06: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019B19 06:BB09: C9 E0     CMP #$E0
C - - - - - 0x019B1B 06:BB0B: B0 2A     BCS bra_BB37
C - - - - - 0x019B1D 06:BB0D: C9 C0     CMP #$C0
C - - - - - 0x019B1F 06:BB0F: 90 26     BCC bra_BB37
C - - - - - 0x019B21 06:BB11: 20 75 BB  JSR sub_BB75
C - - - - - 0x019B24 06:BB14: 20 60 D6  JSR sub_D660_is_bomb_exploding
C - - - - - 0x019B27 06:BB17: B0 0B     BCS bra_BB24
C - - - - - 0x019B29 06:BB19: A5 5F     LDA vChrLiveStatus
C - - - - - 0x019B2B 06:BB1B: 29 02     AND #$02
C - - - - - 0x019B2D 06:BB1D: F0 0B     BEQ bra_BB2A
- - - - - - 0x019B2F 06:BB1F: 20        .byte $20   ; 
- - - - - - 0x019B30 06:BB20: 06        .byte $06   ; 
- - - - - - 0x019B31 06:BB21: D6        .byte $D6   ; 
- - - - - - 0x019B32 06:BB22: 90        .byte $90   ; 
- - - - - - 0x019B33 06:BB23: 10        .byte $10   ; 
bra_BB24:
- - - - - - 0x019B34 06:BB24: 20        .byte $20   ; 
- - - - - - 0x019B35 06:BB25: 5E        .byte $5E   ; 
- - - - - - 0x019B36 06:BB26: BB        .byte $BB   ; 
- - - - - - 0x019B37 06:BB27: 4C        .byte $4C   ; <L>
- - - - - - 0x019B38 06:BB28: 37        .byte $37   ; <7>
- - - - - - 0x019B39 06:BB29: BB        .byte $BB   ; 
bra_BB2A:
C - - - - - 0x019B3A 06:BB2A: A6 7A     LDX vBulletCount
bra_BB2C:
C - - - - - 0x019B3C 06:BB2C: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet
C - - - - - 0x019B3F 06:BB2F: B0 0B     BCS bra_BB3C
C - - - - - 0x019B41 06:BB31: CA        DEX
C - - - - - 0x019B42 06:BB32: 10 F8     BPL bra_BB2C
C - - - - - 0x019B44 06:BB34: 20 62 D5  JSR sub_D562_has_character_damage
bra_BB37:
loc_BB37:
C D 1 - - - 0x019B47 06:BB37: C6 1A     DEC ram_001A
C - - - - - 0x019B49 06:BB39: 10 C4     BPL bra_BAFF
C - - - - - 0x019B4B 06:BB3B: 60        RTS

bra_BB3C:
C - - - - - 0x019B4C 06:BB3C: A9 00     LDA #$00
C - - - - - 0x019B4E 06:BB3E: 95 8F     STA vBulletStatus,X
C - - - - - 0x019B50 06:BB40: A6 1A     LDX ram_001A
C - - - - - 0x019B52 06:BB42: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019B55 06:BB45: 29 02     AND #$02
C - - - - - 0x019B57 06:BB47: D0 0A     BNE bra_BB53
C - - - - - 0x019B59 06:BB49: A9 80     LDA #$80
C - - - - - 0x019B5B 06:BB4B: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019B5E 06:BB4E: A9 04     LDA #$04
C - - - - - 0x019B60 06:BB50: 20 5F BD  JSR sub_BD5F
bra_BB53:
C - - - - - 0x019B63 06:BB53: DE 50 03  DEC ram_0350,X
C - - - - - 0x019B66 06:BB56: D0 DF     BNE bra_BB37
C - - - - - 0x019B68 06:BB58: 20 5E BB  JSR sub_BB5E
C - - - - - 0x019B6B 06:BB5B: 4C 37 BB  JMP loc_BB37

sub_BB5E:
C - - - - - 0x019B6E 06:BB5E: A6 1A     LDX ram_001A
C - - - - - 0x019B70 06:BB60: A9 22     LDA #$22
C - - - - - 0x019B72 06:BB62: 20 5F BD  JSR sub_BD5F
C - - - - - 0x019B75 06:BB65: A9 10     LDA #$10
C - - - - - 0x019B77 06:BB67: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019B7A 06:BB6A: A9 03     LDA #$03
C - - - - - 0x019B7C 06:BB6C: 9D 56 03  STA ram_0356,X
C - - - - - 0x019B7F 06:BB6F: A9 00     LDA #$00
C - - - - - 0x019B81 06:BB71: 9D 44 03  STA ram_0344,X
C - - - - - 0x019B84 06:BB74: 60        RTS

sub_BB75:
C - - - - - 0x019B85 06:BB75: A0 00     LDY #$00
C - - - - - 0x019B87 06:BB77: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019B8A 06:BB7A: 85 AD     STA ram_00AD
C - - - - - 0x019B8C 06:BB7C: BD 32 03  LDA ram_0332,X
C - - - - - 0x019B8F 06:BB7F: 85 AE     STA ram_00AE
C - - - - - 0x019B91 06:BB81: A9 1E     LDA #$1E
C - - - - - 0x019B93 06:BB83: 85 AF     STA ram_00AF
C - - - - - 0x019B95 06:BB85: A9 08     LDA #$08
C - - - - - 0x019B97 06:BB87: 85 B0     STA ram_00B0
bra_BB89_RTS:
C - - - - - 0x019B99 06:BB89: 60        RTS

sub_BB8A:
C - - - - - 0x019B9A 06:BB8A: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019B9D 06:BB8D: 10 FA     BPL bra_BB89_RTS
C - - - - - 0x019B9F 06:BB8F: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019BA2 06:BB92: 4A        LSR
C - - - - - 0x019BA3 06:BB93: 20 B8 D0  JSR sub_D0B8_change_stack_pointer_by_bits ; bank_FF

- D 1 - I - 0x019BA6 06:BB96: 82 BC     .addr loc_BC83 - 1 ; 0x02
- D 1 - I - 0x019BA8 06:BB98: A3 BB     .addr loc_BBA4 - 1 ; 0x04
- D 1 - I - 0x019BAA 06:BB9A: A3 BB     .addr loc_BBA4 - 1 ; 0x08
- - - - - - 0x019BAC 06:BB9C: A3 BB     .addr loc_BBA4 - 1 ; 0x10
- D 1 - I - 0x019BAE 06:BB9E: 16 BD     .addr loc_BD17 - 1 ; 0x20
- D 1 - I - 0x019BB0 06:BBA0: A3 BB     .addr loc_BBA4 - 1 ; 0x40
- D 1 - I - 0x019BB2 06:BBA2: A3 BB     .addr loc_BBA4 - 1 ; 0x80

loc_BBA4:
C - - - - - 0x019BB4 06:BBA4: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019BB7 06:BBA7: 85 00     STA ram_0000
C - - - - - 0x019BB9 06:BBA9: E6 00     INC ram_0000
C - - - - - 0x019BBB 06:BBAB: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y
C - - - - - 0x019BBE 06:BBAE: D0 07     BNE bra_BBB7
C - - - - - 0x019BC0 06:BBB0: A9 1C     LDA #$1C
C - - - - - 0x019BC2 06:BBB2: A0 02     LDY #$02
C - - - - - 0x019BC4 06:BBB4: 4C 72 BC  JMP loc_BC72

bra_BBB7:
C - - - - - 0x019BC7 06:BBB7: 20 30 BD  JSR sub_BD30
C - - - - - 0x019BCA 06:BBBA: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019BCD 06:BBBD: 29 0A     AND #$0A
C - - - - - 0x019BCF 06:BBBF: F0 07     BEQ bra_BBC8
C - - - - - 0x019BD1 06:BBC1: C9 02     CMP #$02
C - - - - - 0x019BD3 06:BBC3: D0 06     BNE bra_BBCB
C - - - - - 0x019BD5 06:BBC5: 4C 6E BC  JMP loc_BC6E

bra_BBC8:
C - - - - - 0x019BD8 06:BBC8: 20 18 BC  JSR sub_BC18
bra_BBCB:
C - - - - - 0x019BDB 06:BBCB: BD 44 03  LDA ram_0344,X
C - - - - - 0x019BDE 06:BBCE: 0A        ASL
C - - - - - 0x019BDF 06:BBCF: 0A        ASL
C - - - - - 0x019BE0 06:BBD0: A8        TAY
loc_BBD1:
C D 1 - - - 0x019BE1 06:BBD1: BD 38 03  LDA ram_0338,X
C - - - - - 0x019BE4 06:BBD4: 85 00     STA ram_0000
C - - - - - 0x019BE6 06:BBD6: BD 3E 03  LDA ram_033E,X
C - - - - - 0x019BE9 06:BBD9: 85 01     STA ram_0001
C - - - - - 0x019BEB 06:BBDB: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x019BEE 06:BBDE: 90 03     BCC bra_BBE3
C - - - - - 0x019BF0 06:BBE0: 4C 7F D7  JMP loc_D77F_free_enemyA           ;

bra_BBE3:
C - - - - - 0x019BF3 06:BBE3: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x019BF6 06:BBE6: 90 03     BCC bra_BBEB
C - - - - - 0x019BF8 06:BBE8: 4C 41 D7  JMP loc_D741_enemyA_off_screen

bra_BBEB:
C - - - - - 0x019BFB 06:BBEB: 20 25 D7  JSR sub_D725_enemyA_on_screen
C - - - - - 0x019BFE 06:BBEE: C0 E0     CPY #$E0
C - - - - - 0x019C00 06:BBF0: 90 03     BCC bra_BBF5
C - - - - - 0x019C02 06:BBF2: 4C 89 D9  JMP loc_D989_add_enemyA_sprite_magic_v1

bra_BBF5:
C - - - - - 0x019C05 06:BBF5: 98        TYA
C - - - - - 0x019C06 06:BBF6: 18        CLC
C - - - - - 0x019C07 06:BBF7: 6D 02 03  ADC vEnemyASpriteMagic2
C - - - - - 0x019C0A 06:BBFA: 85 01     STA ram_0001
C - - - - - 0x019C0C 06:BBFC: AD 03 03  LDA vEnemyASpriteMagic3
C - - - - - 0x019C0F 06:BBFF: 85 02     STA ram_0002
C - - - - - 0x019C11 06:BC01: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019C14 06:BC04: 29 04     AND #$04
C - - - - - 0x019C16 06:BC06: F0 0D     BEQ bra_BC15
C - - - - - 0x019C18 06:BC08: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019C1B 06:BC0B: C9 08     CMP #$08
C - - - - - 0x019C1D 06:BC0D: 90 06     BCC bra_BC15
C - - - - - 0x019C1F 06:BC0F: 29 02     AND #$02
C - - - - - 0x019C21 06:BC11: 45 02     EOR ram_0002
C - - - - - 0x019C23 06:BC13: 85 02     STA ram_0002
bra_BC15:
C - - - - - 0x019C25 06:BC15: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

sub_BC18:
C - - - - - 0x019C28 06:BC18: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019C2B 06:BC1B: 6A        ROR
C - - - - - 0x019C2C 06:BC1C: 90 06     BCC bra_BC24
C - - - - - 0x019C2E 06:BC1E: 20 2A BC  JSR sub_BC2A
loc_BC21:
C D 1 - - - 0x019C31 06:BC21: 4C AE D9  JMP loc_D9AE_inc_enemyA_frame_counter

bra_BC24:
C - - - - - 0x019C34 06:BC24: 20 5A BC  JSR sub_BC5A
C - - - - - 0x019C37 06:BC27: 4C 21 BC  JMP loc_BC21

sub_BC2A:
C - - - - - 0x019C3A 06:BC2A: 20 CA D7  JSR sub_D7CA_check_enemyA_movement_on_the_left
C - - - - - 0x019C3D 06:BC2D: F0 0F     BEQ bra_BC3E
C - - - - - 0x019C3F 06:BC2F: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019C42 06:BC32: 29 04     AND #$04
C - - - - - 0x019C44 06:BC34: D0 05     BNE bra_BC3B
C - - - - - 0x019C46 06:BC36: A5 2C     LDA vLowCounter
C - - - - - 0x019C48 06:BC38: 6A        ROR
C - - - - - 0x019C49 06:BC39: 90 1E     BCC bra_BC59_RTS
bra_BC3B:
C - - - - - 0x019C4B 06:BC3B: 4C FD D6  JMP loc_D6FD_dec_EnemyAPosXLow_unsafe

bra_BC3E:
C - - - - - 0x019C4E 06:BC3E: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019C51 06:BC41: 29 20     AND #$20
C - - - - - 0x019C53 06:BC43: D0 14     BNE bra_BC59_RTS
C - - - - - 0x019C55 06:BC45: A9 02     LDA #$02
C - - - - - 0x019C57 06:BC47: 20 5F BD  JSR sub_BD5F
C - - - - - 0x019C5A 06:BC4A: A9 14     LDA #$14
C - - - - - 0x019C5C 06:BC4C: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019C5F 06:BC4F: A9 03     LDA #$03
C - - - - - 0x019C61 06:BC51: 9D 56 03  STA ram_0356,X
C - - - - - 0x019C64 06:BC54: A9 00     LDA #$00
C - - - - - 0x019C66 06:BC56: 9D 44 03  STA ram_0344,X
bra_BC59_RTS:
C - - - - - 0x019C69 06:BC59: 60        RTS

sub_BC5A:
C - - - - - 0x019C6A 06:BC5A: 20 BF D7  JSR sub_D7BF_check_enemyA_movement_on_the_right
C - - - - - 0x019C6D 06:BC5D: F0 DF     BEQ bra_BC3E
C - - - - - 0x019C6F 06:BC5F: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019C72 06:BC62: 29 04     AND #$04
C - - - - - 0x019C74 06:BC64: D0 05     BNE bra_BC6B
C - - - - - 0x019C76 06:BC66: A5 2C     LDA vLowCounter
C - - - - - 0x019C78 06:BC68: 6A        ROR
C - - - - - 0x019C79 06:BC69: 90 EE     BCC bra_BC59_RTS
bra_BC6B:
C - - - - - 0x019C7B 06:BC6B: 4C 1C D7  JMP loc_D71C_inc_EnemyAPosXLow_unsafe

loc_BC6E:
C D 1 - - - 0x019C7E 06:BC6E: A9 14     LDA #$14
C - - - - - 0x019C80 06:BC70: A0 03     LDY #$03
loc_BC72:
C D 1 - - - 0x019C82 06:BC72: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019C85 06:BC75: 98        TYA
C - - - - - 0x019C86 06:BC76: 9D 56 03  STA ram_0356,X
C - - - - - 0x019C89 06:BC79: A9 02     LDA #$02
C - - - - - 0x019C8B 06:BC7B: 20 5F BD  JSR sub_BD5F
C - - - - - 0x019C8E 06:BC7E: A9 00     LDA #$00
C - - - - - 0x019C90 06:BC80: 9D 44 03  STA ram_0344,X
loc_BC83:
C - - - - - 0x019C93 06:BC83: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019C96 06:BC86: C9 DF     CMP #$DF
C - - - - - 0x019C98 06:BC88: B0 1E     BCS bra_BCA8
C - - - - - 0x019C9A 06:BC8A: BD 56 03  LDA ram_0356,X
C - - - - - 0x019C9D 06:BC8D: C9 03     CMP #$03
C - - - - - 0x019C9F 06:BC8F: D0 17     BNE bra_BCA8
C - - - - - 0x019CA1 06:BC91: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019CA4 06:BC94: 6A        ROR
C - - - - - 0x019CA5 06:BC95: 90 0A     BCC bra_BCA1
C - - - - - 0x019CA7 06:BC97: 29 10     AND #$10
C - - - - - 0x019CA9 06:BC99: D0 0A     BNE bra_BCA5
bra_BC9B:
C - - - - - 0x019CAB 06:BC9B: 20 2A BC  JSR sub_BC2A
C - - - - - 0x019CAE 06:BC9E: 4C A8 BC  JMP loc_BCA8

bra_BCA1:
C - - - - - 0x019CB1 06:BCA1: 29 10     AND #$10
C - - - - - 0x019CB3 06:BCA3: D0 F6     BNE bra_BC9B
bra_BCA5:
C - - - - - 0x019CB5 06:BCA5: 20 5A BC  JSR sub_BC5A
bra_BCA8:
loc_BCA8:
C D 1 - - - 0x019CB8 06:BCA8: BC 4A 03  LDY ram_034A,X
C - - - - - 0x019CBB 06:BCAB: B9 5D E3  LDA tbl_E35D_jump_posY_offset,Y
C - - - - - 0x019CBE 06:BCAE: 18        CLC
C - - - - - 0x019CBF 06:BCAF: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x019CC2 06:BCB2: C9 DF     CMP #$DF
C - - - - - 0x019CC4 06:BCB4: 90 03     BCC bra_BCB9
C - - - - - 0x019CC6 06:BCB6: A0 DF     LDY #$DF
C - - - - - 0x019CC8 06:BCB8: 98        TYA
bra_BCB9:
C - - - - - 0x019CC9 06:BCB9: 9D 2C 03  STA ram_032C,X
C - - - - - 0x019CCC 06:BCBC: BC 4A 03  LDY ram_034A,X
C - - - - - 0x019CCF 06:BCBF: C0 18     CPY #$18
C - - - - - 0x019CD1 06:BCC1: 90 34     BCC bra_BCF7
C - - - - - 0x019CD3 06:BCC3: C9 DF     CMP #$DF
C - - - - - 0x019CD5 06:BCC5: 90 05     BCC bra_BCCC
C - - - - - 0x019CD7 06:BCC7: A0 FF     LDY #$FF
C - - - - - 0x019CD9 06:BCC9: 4C D1 BB  JMP loc_BBD1

bra_BCCC:
C - - - - - 0x019CDC 06:BCCC: 85 00     STA ram_0000
C - - - - - 0x019CDE 06:BCCE: E6 00     INC ram_0000
C - - - - - 0x019CE0 06:BCD0: 20 58 D3  JSR sub_D358_check_enemyA_collision_by_Y
C - - - - - 0x019CE3 06:BCD3: F0 22     BEQ bra_BCF7
C - - - - - 0x019CE5 06:BCD5: C9 02     CMP #$02
C - - - - - 0x019CE7 06:BCD7: F0 07     BEQ bra_BCE0
C - - - - - 0x019CE9 06:BCD9: 20 47 D3  JSR sub_D347_check_landing_enemyA
C - - - - - 0x019CEC 06:BCDC: D0 0D     BNE bra_BCEB
- - - - - - 0x019CEE 06:BCDE: F0        .byte $F0   ; 
- - - - - - 0x019CEF 06:BCDF: 17        .byte $17   ; 
bra_BCE0:
C - - - - - 0x019CF0 06:BCE0: 20 47 D3  JSR sub_D347_check_landing_enemyA
C - - - - - 0x019CF3 06:BCE3: F0 12     BEQ bra_BCF7
C - - - - - 0x019CF5 06:BCE5: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x019CF8 06:BCE8: 6A        ROR
C - - - - - 0x019CF9 06:BCE9: 90 0C     BCC bra_BCF7
bra_BCEB:
C - - - - - 0x019CFB 06:BCEB: 20 A8 D7  JSR sub_D7A8_correction_EnemyAPosY
C - - - - - 0x019CFE 06:BCEE: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019D01 06:BCF1: 29 20     AND #$20
C - - - - - 0x019D03 06:BCF3: D0 1D     BNE bra_BD12
C - - - - - 0x019D05 06:BCF5: F0 0A     BEQ bra_BD01
bra_BCF7:
C - - - - - 0x019D07 06:BCF7: FE 4A 03  INC ram_034A,X
C - - - - - 0x019D0A 06:BCFA: A9 2F     LDA #$2F
C - - - - - 0x019D0C 06:BCFC: DD 4A 03  CMP ram_034A,X
C - - - - - 0x019D0F 06:BCFF: B0 03     BCS bra_BD04
bra_BD01:
C - - - - - 0x019D11 06:BD01: 9D 4A 03  STA ram_034A,X
bra_BD04:
C - - - - - 0x019D14 06:BD04: A0 08     LDY #$08
C - - - - - 0x019D16 06:BD06: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019D19 06:BD09: 29 20     AND #$20
C - - - - - 0x019D1B 06:BD0B: F0 02     BEQ bra_BD0F
C - - - - - 0x019D1D 06:BD0D: A0 0C     LDY #$0C
bra_BD0F:
C - - - - - 0x019D1F 06:BD0F: 4C D1 BB  JMP loc_BBD1

bra_BD12:
C - - - - - 0x019D22 06:BD12: A9 30     LDA #$30
C - - - - - 0x019D24 06:BD14: 9D 4A 03  STA ram_034A,X
loc_BD17:
C - - - - - 0x019D27 06:BD17: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019D2A 06:BD1A: D0 03     BNE bra_BD1F
C - - - - - 0x019D2C 06:BD1C: 4C 7F D7  JMP loc_D77F_free_enemyA          ;

bra_BD1F:
C - - - - - 0x019D2F 06:BD1F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019D32 06:BD22: 20 5F D0  JSR sub_accumulator_shift_right_by_4
C - - - - - 0x019D35 06:BD25: A8        TAY
C - - - - - 0x019D36 06:BD26: B9 2D BD  LDA tbl_BD2D,Y
C - - - - - 0x019D39 06:BD29: A8        TAY
C - - - - - 0x019D3A 06:BD2A: 4C D1 BB  JMP loc_BBD1

tbl_BD2D:
- D 1 - - - 0x019D3D 06:BD2D: E4        .byte $E4   ; 
- D 1 - - - 0x019D3E 06:BD2E: E0        .byte $E0   ; 
- D 1 - - - 0x019D3F 06:BD2F: 10        .byte $10   ; 
sub_BD30:
C - - - - - 0x019D40 06:BD30: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019D43 06:BD33: F0 0A     BEQ bra_BD3F
C - - - - - 0x019D45 06:BD35: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019D48 06:BD38: D0 31     BNE bra_BD6B_RTS
C - - - - - 0x019D4A 06:BD3A: A9 00     LDA #$00
C - - - - - 0x019D4C 06:BD3C: 20 5F BD  JSR sub_BD5F
bra_BD3F:
C - - - - - 0x019D4F 06:BD3F: 20 6C BD  JSR sub_BD6C
C - - - - - 0x019D52 06:BD42: A5 2C     LDA vLowCounter
C - - - - - 0x019D54 06:BD44: 29 3F     AND #$3F
C - - - - - 0x019D56 06:BD46: D0 23     BNE bra_BD6B_RTS
C - - - - - 0x019D58 06:BD48: 20 64 D0  JSR sub_D064_generate_rng
C - - - - - 0x019D5B 06:BD4B: 6A        ROR
C - - - - - 0x019D5C 06:BD4C: B0 1D     BCS bra_BD6B_RTS
C - - - - - 0x019D5E 06:BD4E: 29 07     AND #$07
C - - - - - 0x019D60 06:BD50: A8        TAY
C - - - - - 0x019D61 06:BD51: B9 F3 BA  LDA tbl_BAF3,Y
C - - - - - 0x019D64 06:BD54: C9 08     CMP #$08
C - - - - - 0x019D66 06:BD56: D0 07     BNE bra_BD5F
C - - - - - 0x019D68 06:BD58: 48        PHA
C - - - - - 0x019D69 06:BD59: A9 20     LDA #$20
C - - - - - 0x019D6B 06:BD5B: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019D6E 06:BD5E: 68        PLA
bra_BD5F:
sub_BD5F:
C - - - - - 0x019D6F 06:BD5F: 85 05     STA ram_0005
C - - - - - 0x019D71 06:BD61: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019D74 06:BD64: 29 C1     AND #$C1
C - - - - - 0x019D76 06:BD66: 05 05     ORA ram_0005
C - - - - - 0x019D78 06:BD68: 9D 20 03  STA vEnemyAStatus,X
bra_BD6B_RTS:
C - - - - - 0x019D7B 06:BD6B: 60        RTS

sub_BD6C:
C - - - - - 0x019D7C 06:BD6C: A9 FF     LDA #$FF
C - - - - - 0x019D7E 06:BD6E: 20 BD D6  JSR sub_D6BD_try_change_enemyA_direction
C - - - - - 0x019D81 06:BD71: 84 05     STY ram_0005
C - - - - - 0x019D83 06:BD73: BD 20 03  LDA vEnemyAStatus,X
C - - - - - 0x019D86 06:BD76: 29 FE     AND #$FE
C - - - - - 0x019D88 06:BD78: 05 05     ORA ram_0005
C - - - - - 0x019D8A 06:BD7A: 9D 20 03  STA vEnemyAStatus,X
C - - - - - 0x019D8D 06:BD7D: 60        RTS

tbl_BD7E:
- D 1 - - - 0x019D8E 06:BD7E: 00        .byte $00   ; 
tbl_BD7F:
- D 1 - - - 0x019D8F 06:BD7F: 00        .byte $00   ; 
tbl_BD80:
- D 1 - - - 0x019D90 06:BD80: 03        .byte $03   ; 
tbl_BD81:
- D 1 - - - 0x019D91 06:BD81: 04        .byte $04   ; 
- D 1 - - - 0x019D92 06:BD82: 00        .byte $00   ; 
- D 1 - - - 0x019D93 06:BD83: F8        .byte $F8   ; 
- D 1 - - - 0x019D94 06:BD84: 08        .byte $08   ; 
- D 1 - - - 0x019D95 06:BD85: 08        .byte $08   ; 
- D 1 - - - 0x019D96 06:BD86: 00        .byte $00   ; 
- D 1 - - - 0x019D97 06:BD87: FA        .byte $FA   ; 
- D 1 - - - 0x019D98 06:BD88: 0C        .byte $0C   ; 
- D 1 - - - 0x019D99 06:BD89: 06        .byte $06   ; 
- D 1 - - - 0x019D9A 06:BD8A: 00        .byte $00   ; 
- D 1 - - - 0x019D9B 06:BD8B: 00        .byte $00   ; 
- D 1 - - - 0x019D9C 06:BD8C: 10        .byte $10   ; 
- D 1 - - - 0x019D9D 06:BD8D: 08        .byte $08   ; 
- D 1 - - - 0x019D9E 06:BD8E: 00        .byte $00   ; 
- D 1 - - - 0x019D9F 06:BD8F: 06        .byte $06   ; 
- D 1 - - - 0x019DA0 06:BD90: 0C        .byte $0C   ; 
- D 1 - - - 0x019DA1 06:BD91: 06        .byte $06   ; 
- D 1 - - - 0x019DA2 06:BD92: 00        .byte $00   ; 
- D 1 - - - 0x019DA3 06:BD93: 08        .byte $08   ; 
- D 1 - - - 0x019DA4 06:BD94: 08        .byte $08   ; 
- D 1 - - - 0x019DA5 06:BD95: 08        .byte $08   ; 
loc_BD96:
C D 1 - - - 0x019DA6 06:BD96: A2 01     LDX #$01
C - - - - - 0x019DA8 06:BD98: 86 1A     STX ram_001A
bra_BD9A:
C - - - - - 0x019DAA 06:BD9A: A6 1A     LDX ram_001A
C - - - - - 0x019DAC 06:BD9C: 20 0D BE  JSR sub_BE0D
C - - - - - 0x019DAF 06:BD9F: A6 1A     LDX ram_001A
C - - - - - 0x019DB1 06:BDA1: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x019DB4 06:BDA4: 10 16     BPL bra_BDBC
C - - - - - 0x019DB6 06:BDA6: 20 E9 BD  JSR sub_BDE9
C - - - - - 0x019DB9 06:BDA9: A5 5F     LDA vChrLiveStatus
C - - - - - 0x019DBB 06:BDAB: 29 02     AND #$02
C - - - - - 0x019DBD 06:BDAD: D0 0A     BNE bra_BDB9
C - - - - - 0x019DBF 06:BDAF: A6 7A     LDX vBulletCount
bra_BDB1:
C - - - - - 0x019DC1 06:BDB1: 20 B6 D5  JSR sub_D5B6_have_intersect_bullet
C - - - - - 0x019DC4 06:BDB4: B0 0B     BCS bra_BDC1
C - - - - - 0x019DC6 06:BDB6: CA        DEX
C - - - - - 0x019DC7 06:BDB7: 10 F8     BPL bra_BDB1
bra_BDB9:
C - - - - - 0x019DC9 06:BDB9: 20 62 D5  JSR sub_D562_has_character_damage
bra_BDBC:
C - - - - - 0x019DCC 06:BDBC: C6 1A     DEC ram_001A
C - - - - - 0x019DCE 06:BDBE: 10 DA     BPL bra_BD9A
C - - - - - 0x019DD0 06:BDC0: 60        RTS

bra_BDC1:
- - - - - - 0x019DD1 06:BDC1: A9        .byte $A9   ; 
- - - - - - 0x019DD2 06:BDC2: 00        .byte $00   ; 
- - - - - - 0x019DD3 06:BDC3: 95        .byte $95   ; 
- - - - - - 0x019DD4 06:BDC4: 8F        .byte $8F   ; 
- - - - - - 0x019DD5 06:BDC5: 4C        .byte $4C   ; <L>
- - - - - - 0x019DD6 06:BDC6: BC        .byte $BC   ; 
- - - - - - 0x019DD7 06:BDC7: BD        .byte $BD   ; 
sub_BDC8:
C - - - - - 0x019DD8 06:BDC8: A0 00     LDY #$00
C - - - - - 0x019DDA 06:BDCA: BD 86 03  LDA ram_0386,X
C - - - - - 0x019DDD 06:BDCD: 29 7F     AND #$7F
C - - - - - 0x019DDF 06:BDCF: C9 50     CMP #$50
C - - - - - 0x019DE1 06:BDD1: B0 15     BCS bra_BDE8_RTS
C - - - - - 0x019DE3 06:BDD3: C8        INY
C - - - - - 0x019DE4 06:BDD4: C9 40     CMP #$40
C - - - - - 0x019DE6 06:BDD6: B0 10     BCS bra_BDE8_RTS
C - - - - - 0x019DE8 06:BDD8: C8        INY
C - - - - - 0x019DE9 06:BDD9: C9 30     CMP #$30
C - - - - - 0x019DEB 06:BDDB: B0 0B     BCS bra_BDE8_RTS
C - - - - - 0x019DED 06:BDDD: C8        INY
C - - - - - 0x019DEE 06:BDDE: C9 20     CMP #$20
C - - - - - 0x019DF0 06:BDE0: B0 06     BCS bra_BDE8_RTS
C - - - - - 0x019DF2 06:BDE2: C8        INY
C - - - - - 0x019DF3 06:BDE3: C9 10     CMP #$10
C - - - - - 0x019DF5 06:BDE5: B0 01     BCS bra_BDE8_RTS
C - - - - - 0x019DF7 06:BDE7: C8        INY
bra_BDE8_RTS:
C - - - - - 0x019DF8 06:BDE8: 60        RTS

sub_BDE9:
C - - - - - 0x019DF9 06:BDE9: 20 C8 BD  JSR sub_BDC8
C - - - - - 0x019DFC 06:BDEC: 98        TYA
C - - - - - 0x019DFD 06:BDED: 0A        ASL
C - - - - - 0x019DFE 06:BDEE: 0A        ASL
C - - - - - 0x019DFF 06:BDEF: A8        TAY
C - - - - - 0x019E00 06:BDF0: BD 68 03  LDA ram_0368,X
C - - - - - 0x019E03 06:BDF3: 18        CLC
C - - - - - 0x019E04 06:BDF4: 79 7E BD  ADC tbl_BD7E,Y
C - - - - - 0x019E07 06:BDF7: 85 AD     STA ram_00AD
C - - - - - 0x019E09 06:BDF9: BD 6E 03  LDA ram_036E,X
C - - - - - 0x019E0C 06:BDFC: 18        CLC
C - - - - - 0x019E0D 06:BDFD: 79 7F BD  ADC tbl_BD7F,Y
C - - - - - 0x019E10 06:BE00: 85 AE     STA ram_00AE
C - - - - - 0x019E12 06:BE02: B9 80 BD  LDA tbl_BD80,Y
C - - - - - 0x019E15 06:BE05: 85 AF     STA ram_00AF
C - - - - - 0x019E17 06:BE07: B9 81 BD  LDA tbl_BD81,Y
C - - - - - 0x019E1A 06:BE0A: 85 B0     STA ram_00B0
bra_BE0C_RTS:
C - - - - - 0x019E1C 06:BE0C: 60        RTS

sub_BE0D:
C - - - - - 0x019E1D 06:BE0D: BD 5C 03  LDA vEnemyBStatus,X
C - - - - - 0x019E20 06:BE10: 10 FA     BPL bra_BE0C_RTS
C - - - - - 0x019E22 06:BE12: FE 86 03  INC ram_0386,X
C - - - - - 0x019E25 06:BE15: 20 C8 BD  JSR sub_BDC8
C - - - - - 0x019E28 06:BE18: 98        TYA
C - - - - - 0x019E29 06:BE19: 0A        ASL
C - - - - - 0x019E2A 06:BE1A: A8        TAY
C - - - - - 0x019E2B 06:BE1B: BD 74 03  LDA vEnemyBPosXLow,X
C - - - - - 0x019E2E 06:BE1E: 85 00     STA ram_0000
C - - - - - 0x019E30 06:BE20: BD 7A 03  LDA vEnemyBPosXHigh,X
C - - - - - 0x019E33 06:BE23: 85 01     STA ram_0001
C - - - - - 0x019E35 06:BE25: 20 7B D6  JSR sub_D67B_out_of_sight
C - - - - - 0x019E38 06:BE28: 90 03     BCC bra_BE2D
C - - - - - 0x019E3A 06:BE2A: 4C 73 D8  JMP loc_D873_free_enemyB

bra_BE2D:
C - - - - - 0x019E3D 06:BE2D: 20 AC D6  JSR sub_D6AC_out_of_screen
C - - - - - 0x019E40 06:BE30: 90 03     BCC bra_BE35
C - - - - - 0x019E42 06:BE32: 4C 4D D8  JMP loc_D84D_enemyB_off_screen

bra_BE35:
C - - - - - 0x019E45 06:BE35: BD 68 03  LDA ram_0368,X
C - - - - - 0x019E48 06:BE38: 85 00     STA ram_0000
C - - - - - 0x019E4A 06:BE3A: A5 03     LDA ram_0003
C - - - - - 0x019E4C 06:BE3C: 9D 6E 03  STA ram_036E,X
C - - - - - 0x019E4F 06:BE3F: 98        TYA
C - - - - - 0x019E50 06:BE40: 18        CLC
C - - - - - 0x019E51 06:BE41: 69 4A     ADC #$4A
C - - - - - 0x019E53 06:BE43: 85 01     STA ram_0001
C - - - - - 0x019E55 06:BE45: A9 07     LDA #$07
C - - - - - 0x019E57 06:BE47: 85 02     STA ram_0002
C - - - - - 0x019E59 06:BE49: 4C 33 CE  JMP loc_CE33_add_sprite_magic ; bank FF

- - - - - - 0x019E5C 06:BE4C: 1A        .byte $1A   ; 
- - - - - - 0x019E5D 06:BE4D: 30        .byte $30   ; <0>
- - - - - - 0x019E5E 06:BE4E: 2A        .byte $2A   ; 
- - - - - - 0x019E5F 06:BE4F: 15        .byte $15   ; 
- - - - - - 0x019E60 06:BE50: 00        .byte $00   ; 
- - - - - - 0x019E61 06:BE51: 00        .byte $00   ; 
- - - - - - 0x019E62 06:BE52: 00        .byte $00   ; 
- - - - - - 0x019E63 06:BE53: 00        .byte $00   ; 
- - - - - - 0x019E64 06:BE54: 00        .byte $00   ; 
- - - - - - 0x019E65 06:BE55: 00        .byte $00   ; 
- - - - - - 0x019E66 06:BE56: 00        .byte $00   ; 
- - - - - - 0x019E67 06:BE57: 00        .byte $00   ; 
- - - - - - 0x019E68 06:BE58: 00        .byte $00   ; 
- - - - - - 0x019E69 06:BE59: 00        .byte $00   ; 
- - - - - - 0x019E6A 06:BE5A: 00        .byte $00   ; 
- - - - - - 0x019E6B 06:BE5B: 00        .byte $00   ; 
- - - - - - 0x019E6C 06:BE5C: 00        .byte $00   ; 
- - - - - - 0x019E6D 06:BE5D: 7E        .byte $7E   ; 
- - - - - - 0x019E6E 06:BE5E: 00        .byte $00   ; 
- - - - - - 0x019E6F 06:BE5F: 00        .byte $00   ; 
- - - - - - 0x019E70 06:BE60: 00        .byte $00   ; 
- - - - - - 0x019E71 06:BE61: 7E        .byte $7E   ; 
- - - - - - 0x019E72 06:BE62: 00        .byte $00   ; 
- - - - - - 0x019E73 06:BE63: 00        .byte $00   ; 
- - - - - - 0x019E74 06:BE64: 00        .byte $00   ; 
- - - - - - 0x019E75 06:BE65: 00        .byte $00   ; 
- - - - - - 0x019E76 06:BE66: 00        .byte $00   ; 
- - - - - - 0x019E77 06:BE67: 00        .byte $00   ; 
- - - - - - 0x019E78 06:BE68: 00        .byte $00   ; 
- - - - - - 0x019E79 06:BE69: 00        .byte $00   ; 
- - - - - - 0x019E7A 06:BE6A: 00        .byte $00   ; 
- - - - - - 0x019E7B 06:BE6B: 00        .byte $00   ; 
- - - - - - 0x019E7C 06:BE6C: 00        .byte $00   ; 
- - - - - - 0x019E7D 06:BE6D: 35        .byte $35   ; <5>
- - - - - - 0x019E7E 06:BE6E: 3E        .byte $3E   ; 
- - - - - - 0x019E7F 06:BE6F: 12        .byte $12   ; 
- - - - - - 0x019E80 06:BE70: 30        .byte $30   ; <0>
- - - - - - 0x019E81 06:BE71: 2A        .byte $2A   ; 
- - - - - - 0x019E82 06:BE72: 27        .byte $27   ; 
- - - - - - 0x019E83 06:BE73: 24        .byte $24   ; 
- - - - - - 0x019E84 06:BE74: 11        .byte $11   ; 
- - - - - - 0x019E85 06:BE75: 32        .byte $32   ; <2>
- - - - - - 0x019E86 06:BE76: 00        .byte $00   ; 
- - - - - - 0x019E87 06:BE77: 00        .byte $00   ; 
- - - - - - 0x019E88 06:BE78: 00        .byte $00   ; 
- - - - - - 0x019E89 06:BE79: 00        .byte $00   ; 
- - - - - - 0x019E8A 06:BE7A: 00        .byte $00   ; 
- - - - - - 0x019E8B 06:BE7B: 00        .byte $00   ; 
- - - - - - 0x019E8C 06:BE7C: 00        .byte $00   ; 
- - - - - - 0x019E8D 06:BE7D: 00        .byte $00   ; 
- - - - - - 0x019E8E 06:BE7E: 00        .byte $00   ; 
- - - - - - 0x019E8F 06:BE7F: 00        .byte $00   ; 
- - - - - - 0x019E90 06:BE80: 00        .byte $00   ; 
- - - - - - 0x019E91 06:BE81: 00        .byte $00   ; 
- - - - - - 0x019E92 06:BE82: 7E        .byte $7E   ; 
- - - - - - 0x019E93 06:BE83: 7E        .byte $7E   ; 
- - - - - - 0x019E94 06:BE84: 00        .byte $00   ; 
- - - - - - 0x019E95 06:BE85: 00        .byte $00   ; 
- - - - - - 0x019E96 06:BE86: 00        .byte $00   ; 
- - - - - - 0x019E97 06:BE87: 7E        .byte $7E   ; 
- - - - - - 0x019E98 06:BE88: 00        .byte $00   ; 
- - - - - - 0x019E99 06:BE89: 00        .byte $00   ; 
- - - - - - 0x019E9A 06:BE8A: 00        .byte $00   ; 
- - - - - - 0x019E9B 06:BE8B: 00        .byte $00   ; 
- - - - - - 0x019E9C 06:BE8C: 00        .byte $00   ; 
- - - - - - 0x019E9D 06:BE8D: 00        .byte $00   ; 
- - - - - - 0x019E9E 06:BE8E: 00        .byte $00   ; 
- - - - - - 0x019E9F 06:BE8F: 00        .byte $00   ; 
- - - - - - 0x019EA0 06:BE90: 00        .byte $00   ; 
- - - - - - 0x019EA1 06:BE91: 00        .byte $00   ; 
- - - - - - 0x019EA2 06:BE92: 00        .byte $00   ; 
- - - - - - 0x019EA3 06:BE93: 00        .byte $00   ; 
- - - - - - 0x019EA4 06:BE94: 00        .byte $00   ; 
- - - - - - 0x019EA5 06:BE95: 12        .byte $12   ; 
- - - - - - 0x019EA6 06:BE96: 37        .byte $37   ; <7>
- - - - - - 0x019EA7 06:BE97: 2A        .byte $2A   ; 
- - - - - - 0x019EA8 06:BE98: 00        .byte $00   ; 
- - - - - - 0x019EA9 06:BE99: 15        .byte $15   ; 
- - - - - - 0x019EAA 06:BE9A: 24        .byte $24   ; 
- - - - - - 0x019EAB 06:BE9B: 32        .byte $32   ; <2>
- - - - - - 0x019EAC 06:BE9C: 00        .byte $00   ; 
- - - - - - 0x019EAD 06:BE9D: 00        .byte $00   ; 
- - - - - - 0x019EAE 06:BE9E: 00        .byte $00   ; 
- - - - - - 0x019EAF 06:BE9F: 00        .byte $00   ; 
- - - - - - 0x019EB0 06:BEA0: 00        .byte $00   ; 
- - - - - - 0x019EB1 06:BEA1: 00        .byte $00   ; 
- - - - - - 0x019EB2 06:BEA2: 00        .byte $00   ; 
- - - - - - 0x019EB3 06:BEA3: 00        .byte $00   ; 
- - - - - - 0x019EB4 06:BEA4: 00        .byte $00   ; 
- - - - - - 0x019EB5 06:BEA5: 00        .byte $00   ; 
- - - - - - 0x019EB6 06:BEA6: 00        .byte $00   ; 
- - - - - - 0x019EB7 06:BEA7: 00        .byte $00   ; 
- - - - - - 0x019EB8 06:BEA8: 00        .byte $00   ; 
- - - - - - 0x019EB9 06:BEA9: 32        .byte $32   ; <2>
- - - - - - 0x019EBA 06:BEAA: 3F        .byte $3F   ; 
- - - - - - 0x019EBB 06:BEAB: 30        .byte $30   ; <0>
- - - - - - 0x019EBC 06:BEAC: 62        .byte $62   ; <b>
- - - - - - 0x019EBD 06:BEAD: 16        .byte $16   ; 
- - - - - - 0x019EBE 06:BEAE: 39        .byte $39   ; <9>
- - - - - - 0x019EBF 06:BEAF: 1C        .byte $1C   ; 
- - - - - - 0x019EC0 06:BEB0: 2A        .byte $2A   ; 
- - - - - - 0x019EC1 06:BEB1: 17        .byte $17   ; 
- - - - - - 0x019EC2 06:BEB2: 00        .byte $00   ; 
- - - - - - 0x019EC3 06:BEB3: 00        .byte $00   ; 
- - - - - - 0x019EC4 06:BEB4: 00        .byte $00   ; 
- - - - - - 0x019EC5 06:BEB5: 00        .byte $00   ; 
- - - - - - 0x019EC6 06:BEB6: 00        .byte $00   ; 
- - - - - - 0x019EC7 06:BEB7: 00        .byte $00   ; 
- - - - - - 0x019EC8 06:BEB8: 00        .byte $00   ; 
- - - - - - 0x019EC9 06:BEB9: 00        .byte $00   ; 
- - - - - - 0x019ECA 06:BEBA: 00        .byte $00   ; 
- - - - - - 0x019ECB 06:BEBB: 00        .byte $00   ; 
- - - - - - 0x019ECC 06:BEBC: 00        .byte $00   ; 
- - - - - - 0x019ECD 06:BEBD: 00        .byte $00   ; 
- - - - - - 0x019ECE 06:BEBE: 00        .byte $00   ; 
- - - - - - 0x019ECF 06:BEBF: 00        .byte $00   ; 
- - - - - - 0x019ED0 06:BEC0: 00        .byte $00   ; 
- - - - - - 0x019ED1 06:BEC1: 00        .byte $00   ; 
- - - - - - 0x019ED2 06:BEC2: 00        .byte $00   ; 
- - - - - - 0x019ED3 06:BEC3: 7E        .byte $7E   ; 
- - - - - - 0x019ED4 06:BEC4: 7E        .byte $7E   ; 
- - - - - - 0x019ED5 06:BEC5: 00        .byte $00   ; 
- - - - - - 0x019ED6 06:BEC6: 00        .byte $00   ; 
- - - - - - 0x019ED7 06:BEC7: 00        .byte $00   ; 
- - - - - - 0x019ED8 06:BEC8: 00        .byte $00   ; 
- - - - - - 0x019ED9 06:BEC9: 00        .byte $00   ; 
- - - - - - 0x019EDA 06:BECA: 00        .byte $00   ; 
- - - - - - 0x019EDB 06:BECB: 00        .byte $00   ; 
- - - - - - 0x019EDC 06:BECC: 00        .byte $00   ; 
- - - - - - 0x019EDD 06:BECD: 00        .byte $00   ; 
- - - - - - 0x019EDE 06:BECE: 00        .byte $00   ; 
- - - - - - 0x019EDF 06:BECF: 00        .byte $00   ; 
- - - - - - 0x019EE0 06:BED0: 00        .byte $00   ; 
- - - - - - 0x019EE1 06:BED1: 32        .byte $32   ; <2>
- - - - - - 0x019EE2 06:BED2: 3F        .byte $3F   ; 
- - - - - - 0x019EE3 06:BED3: 30        .byte $30   ; <0>
- - - - - - 0x019EE4 06:BED4: 62        .byte $62   ; <b>
- - - - - - 0x019EE5 06:BED5: 19        .byte $19   ; 
- - - - - - 0x019EE6 06:BED6: 00        .byte $00   ; 
- - - - - - 0x019EE7 06:BED7: 37        .byte $37   ; <7>
- - - - - - 0x019EE8 06:BED8: 39        .byte $39   ; <9>
- - - - - - 0x019EE9 06:BED9: 29        .byte $29   ; 
- - - - - - 0x019EEA 06:BEDA: 2A        .byte $2A   ; 
- - - - - - 0x019EEB 06:BEDB: 00        .byte $00   ; 
- - - - - - 0x019EEC 06:BEDC: 00        .byte $00   ; 
- - - - - - 0x019EED 06:BEDD: 00        .byte $00   ; 
- - - - - - 0x019EEE 06:BEDE: 00        .byte $00   ; 
- - - - - - 0x019EEF 06:BEDF: 00        .byte $00   ; 
- - - - - - 0x019EF0 06:BEE0: 00        .byte $00   ; 
- - - - - - 0x019EF1 06:BEE1: 00        .byte $00   ; 
- - - - - - 0x019EF2 06:BEE2: 00        .byte $00   ; 
- - - - - - 0x019EF3 06:BEE3: 00        .byte $00   ; 
- - - - - - 0x019EF4 06:BEE4: 00        .byte $00   ; 
- - - - - - 0x019EF5 06:BEE5: 77        .byte $77   ; <w>
- - - - - - 0x019EF6 06:BEE6: 77        .byte $77   ; <w>
- - - - - - 0x019EF7 06:BEE7: 3F        .byte $3F   ; 
- - - - - - 0x019EF8 06:BEE8: 7F        .byte $7F   ; 
- - - - - - 0x019EF9 06:BEE9: FE        .byte $FE   ; 
- - - - - - 0x019EFA 06:BEEA: FE        .byte $FE   ; 
- - - - - - 0x019EFB 06:BEEB: 6E        .byte $6E   ; <n>
- - - - - - 0x019EFC 06:BEEC: 67        .byte $67   ; <g>
- - - - - - 0x019EFD 06:BEED: 77        .byte $77   ; <w>
- - - - - - 0x019EFE 06:BEEE: 77        .byte $77   ; <w>
- - - - - - 0x019EFF 06:BEEF: 3F        .byte $3F   ; 
- - - - - - 0x019F00 06:BEF0: 1C        .byte $1C   ; 
- - - - - - 0x019F01 06:BEF1: 3E        .byte $3E   ; 
- - - - - - 0x019F02 06:BEF2: 3E        .byte $3E   ; 
- - - - - - 0x019F03 06:BEF3: 3E        .byte $3E   ; 
- - - - - - 0x019F04 06:BEF4: 3E        .byte $3E   ; 
- - - - - - 0x019F05 06:BEF5: 1E        .byte $1E   ; 
- - - - - - 0x019F06 06:BEF6: 0E        .byte $0E   ; 
- - - - - - 0x019F07 06:BEF7: 06        .byte $06   ; 
- - - - - - 0x019F08 06:BEF8: 1C        .byte $1C   ; 
- - - - - - 0x019F09 06:BEF9: 3E        .byte $3E   ; 
- - - - - - 0x019F0A 06:BEFA: 36        .byte $36   ; <6>
- - - - - - 0x019F0B 06:BEFB: 30        .byte $30   ; <0>
- - - - - - 0x019F0C 06:BEFC: 34        .byte $34   ; <4>
- - - - - - 0x019F0D 06:BEFD: 00        .byte $00   ; 
- - - - - - 0x019F0E 06:BEFE: 30        .byte $30   ; <0>
- - - - - - 0x019F0F 06:BEFF: F8        .byte $F8   ; 
- - - - - - 0x019F10 06:BF00: 02        .byte $02   ; 
- - - - - - 0x019F11 06:BF01: 54        .byte $54   ; <T>
- - - - - - 0x019F12 06:BF02: 28        .byte $28   ; 
- - - - - - 0x019F13 06:BF03: 44        .byte $44   ; <D>
- - - - - - 0x019F14 06:BF04: C8        .byte $C8   ; 
- - - - - - 0x019F15 06:BF05: 60        .byte $60   ; 
- - - - - - 0x019F16 06:BF06: D8        .byte $D8   ; 
- - - - - - 0x019F17 06:BF07: 72        .byte $72   ; <r>
- - - - - - 0x019F18 06:BF08: 06        .byte $06   ; 
- - - - - - 0x019F19 06:BF09: 0E        .byte $0E   ; 
- - - - - - 0x019F1A 06:BF0A: 1C        .byte $1C   ; 
- - - - - - 0x019F1B 06:BF0B: 38        .byte $38   ; <8>
- - - - - - 0x019F1C 06:BF0C: 34        .byte $34   ; <4>
- - - - - - 0x019F1D 06:BF0D: 18        .byte $18   ; 
- - - - - - 0x019F1E 06:BF0E: 20        .byte $20   ; 
- - - - - - 0x019F1F 06:BF0F: 00        .byte $00   ; 
- - - - - - 0x019F20 06:BF10: 00        .byte $00   ; 
- - - - - - 0x019F21 06:BF11: 00        .byte $00   ; 
- - - - - - 0x019F22 06:BF12: 0F        .byte $0F   ; 
- - - - - - 0x019F23 06:BF13: 1C        .byte $1C   ; 
- - - - - - 0x019F24 06:BF14: 18        .byte $18   ; 
- - - - - - 0x019F25 06:BF15: 00        .byte $00   ; 
- - - - - - 0x019F26 06:BF16: 00        .byte $00   ; 
- - - - - - 0x019F27 06:BF17: 00        .byte $00   ; 
- - - - - - 0x019F28 06:BF18: 00        .byte $00   ; 
- - - - - - 0x019F29 06:BF19: 00        .byte $00   ; 
- - - - - - 0x019F2A 06:BF1A: 0F        .byte $0F   ; 
- - - - - - 0x019F2B 06:BF1B: EC        .byte $EC   ; 
- - - - - - 0x019F2C 06:BF1C: 38        .byte $38   ; <8>
- - - - - - 0x019F2D 06:BF1D: 00        .byte $00   ; 
- - - - - - 0x019F2E 06:BF1E: 00        .byte $00   ; 
- - - - - - 0x019F2F 06:BF1F: 00        .byte $00   ; 
- - - - - - 0x019F30 06:BF20: 00        .byte $00   ; 
- - - - - - 0x019F31 06:BF21: 00        .byte $00   ; 
- - - - - - 0x019F32 06:BF22: 00        .byte $00   ; 
- - - - - - 0x019F33 06:BF23: 00        .byte $00   ; 
- - - - - - 0x019F34 06:BF24: 00        .byte $00   ; 
- - - - - - 0x019F35 06:BF25: 00        .byte $00   ; 
- - - - - - 0x019F36 06:BF26: 01        .byte $01   ; 
- - - - - - 0x019F37 06:BF27: 07        .byte $07   ; 
- - - - - - 0x019F38 06:BF28: 0F        .byte $0F   ; 
- - - - - - 0x019F39 06:BF29: 07        .byte $07   ; 
- - - - - - 0x019F3A 06:BF2A: 03        .byte $03   ; 
- - - - - - 0x019F3B 06:BF2B: 00        .byte $00   ; 
- - - - - - 0x019F3C 06:BF2C: 00        .byte $00   ; 
- - - - - - 0x019F3D 06:BF2D: 00        .byte $00   ; 
- - - - - - 0x019F3E 06:BF2E: 01        .byte $01   ; 
- - - - - - 0x019F3F 06:BF2F: 07        .byte $07   ; 
- - - - - - 0x019F40 06:BF30: 0B        .byte $0B   ; 
- - - - - - 0x019F41 06:BF31: 0E        .byte $0E   ; 
- - - - - - 0x019F42 06:BF32: 06        .byte $06   ; 
- - - - - - 0x019F43 06:BF33: 03        .byte $03   ; 
- - - - - - 0x019F44 06:BF34: 00        .byte $00   ; 
- - - - - - 0x019F45 06:BF35: 00        .byte $00   ; 
- - - - - - 0x019F46 06:BF36: 00        .byte $00   ; 
- - - - - - 0x019F47 06:BF37: 00        .byte $00   ; 
- - - - - - 0x019F48 06:BF38: 0F        .byte $0F   ; 
- - - - - - 0x019F49 06:BF39: 0E        .byte $0E   ; 
- - - - - - 0x019F4A 06:BF3A: 06        .byte $06   ; 
- - - - - - 0x019F4B 06:BF3B: 03        .byte $03   ; 
- - - - - - 0x019F4C 06:BF3C: 00        .byte $00   ; 
- - - - - - 0x019F4D 06:BF3D: 00        .byte $00   ; 
- - - - - - 0x019F4E 06:BF3E: 00        .byte $00   ; 
- - - - - - 0x019F4F 06:BF3F: 00        .byte $00   ; 
- - - - - - 0x019F50 06:BF40: 10        .byte $10   ; 
- - - - - - 0x019F51 06:BF41: 78        .byte $78   ; <x>
- - - - - - 0x019F52 06:BF42: FC        .byte $FC   ; 
- - - - - - 0x019F53 06:BF43: FC        .byte $FC   ; 
- - - - - - 0x019F54 06:BF44: 78        .byte $78   ; <x>
- - - - - - 0x019F55 06:BF45: F8        .byte $F8   ; 
- - - - - - 0x019F56 06:BF46: D8        .byte $D8   ; 
- - - - - - 0x019F57 06:BF47: 98        .byte $98   ; 
- - - - - - 0x019F58 06:BF48: F0        .byte $F0   ; 
- - - - - - 0x019F59 06:BF49: F8        .byte $F8   ; 
- - - - - - 0x019F5A 06:BF4A: FC        .byte $FC   ; 
- - - - - - 0x019F5B 06:BF4B: FC        .byte $FC   ; 
- - - - - - 0x019F5C 06:BF4C: 78        .byte $78   ; <x>
- - - - - - 0x019F5D 06:BF4D: F8        .byte $F8   ; 
- - - - - - 0x019F5E 06:BF4E: D8        .byte $D8   ; 
- - - - - - 0x019F5F 06:BF4F: 98        .byte $98   ; 
- - - - - - 0x019F60 06:BF50: 18        .byte $18   ; 
- - - - - - 0x019F61 06:BF51: 18        .byte $18   ; 
- - - - - - 0x019F62 06:BF52: 18        .byte $18   ; 
- - - - - - 0x019F63 06:BF53: 18        .byte $18   ; 
- - - - - - 0x019F64 06:BF54: 18        .byte $18   ; 
- - - - - - 0x019F65 06:BF55: 28        .byte $28   ; 
- - - - - - 0x019F66 06:BF56: 3C        .byte $3C   ; 
- - - - - - 0x019F67 06:BF57: 2F        .byte $2F   ; 
- - - - - - 0x019F68 06:BF58: 18        .byte $18   ; 
- - - - - - 0x019F69 06:BF59: 18        .byte $18   ; 
- - - - - - 0x019F6A 06:BF5A: 18        .byte $18   ; 
- - - - - - 0x019F6B 06:BF5B: 18        .byte $18   ; 
- - - - - - 0x019F6C 06:BF5C: 18        .byte $18   ; 
- - - - - - 0x019F6D 06:BF5D: 38        .byte $38   ; <8>
- - - - - - 0x019F6E 06:BF5E: 3C        .byte $3C   ; 
- - - - - - 0x019F6F 06:BF5F: 2F        .byte $2F   ; 
- - - - - - 0x019F70 06:BF60: 38        .byte $38   ; <8>
- - - - - - 0x019F71 06:BF61: 30        .byte $30   ; <0>
- - - - - - 0x019F72 06:BF62: 60        .byte $60   ; 
- - - - - - 0x019F73 06:BF63: 60        .byte $60   ; 
- - - - - - 0x019F74 06:BF64: 00        .byte $00   ; 
- - - - - - 0x019F75 06:BF65: 40        .byte $40   ; 
- - - - - - 0x019F76 06:BF66: E0        .byte $E0   ; 
- - - - - - 0x019F77 06:BF67: F0        .byte $F0   ; 
- - - - - - 0x019F78 06:BF68: 38        .byte $38   ; <8>
- - - - - - 0x019F79 06:BF69: 30        .byte $30   ; <0>
- - - - - - 0x019F7A 06:BF6A: 60        .byte $60   ; 
- - - - - - 0x019F7B 06:BF6B: 60        .byte $60   ; 
- - - - - - 0x019F7C 06:BF6C: 40        .byte $40   ; 
- - - - - - 0x019F7D 06:BF6D: 40        .byte $40   ; 
- - - - - - 0x019F7E 06:BF6E: E0        .byte $E0   ; 
- - - - - - 0x019F7F 06:BF6F: F0        .byte $F0   ; 
- - - - - - 0x019F80 06:BF70: 18        .byte $18   ; 
- - - - - - 0x019F81 06:BF71: 18        .byte $18   ; 
- - - - - - 0x019F82 06:BF72: 18        .byte $18   ; 
- - - - - - 0x019F83 06:BF73: 18        .byte $18   ; 
- - - - - - 0x019F84 06:BF74: 00        .byte $00   ; 
- - - - - - 0x019F85 06:BF75: 0C        .byte $0C   ; 
- - - - - - 0x019F86 06:BF76: 1E        .byte $1E   ; 
- - - - - - 0x019F87 06:BF77: 17        .byte $17   ; 
- - - - - - 0x019F88 06:BF78: 18        .byte $18   ; 
- - - - - - 0x019F89 06:BF79: 18        .byte $18   ; 
- - - - - - 0x019F8A 06:BF7A: 18        .byte $18   ; 
- - - - - - 0x019F8B 06:BF7B: 18        .byte $18   ; 
- - - - - - 0x019F8C 06:BF7C: 08        .byte $08   ; 
- - - - - - 0x019F8D 06:BF7D: 0C        .byte $0C   ; 
- - - - - - 0x019F8E 06:BF7E: 1E        .byte $1E   ; 
- - - - - - 0x019F8F 06:BF7F: 17        .byte $17   ; 
- - - - - - 0x019F90 06:BF80: 00        .byte $00   ; 
- - - - - - 0x019F91 06:BF81: 00        .byte $00   ; 
- - - - - - 0x019F92 06:BF82: 06        .byte $06   ; 
- - - - - - 0x019F93 06:BF83: 06        .byte $06   ; 
- - - - - - 0x019F94 06:BF84: 00        .byte $00   ; 
- - - - - - 0x019F95 06:BF85: 00        .byte $00   ; 
- - - - - - 0x019F96 06:BF86: 00        .byte $00   ; 
- - - - - - 0x019F97 06:BF87: 00        .byte $00   ; 
- - - - - - 0x019F98 06:BF88: 00        .byte $00   ; 
- - - - - - 0x019F99 06:BF89: 00        .byte $00   ; 
- - - - - - 0x019F9A 06:BF8A: 06        .byte $06   ; 
- - - - - - 0x019F9B 06:BF8B: 06        .byte $06   ; 
- - - - - - 0x019F9C 06:BF8C: 00        .byte $00   ; 
- - - - - - 0x019F9D 06:BF8D: 00        .byte $00   ; 
- - - - - - 0x019F9E 06:BF8E: 00        .byte $00   ; 
- - - - - - 0x019F9F 06:BF8F: 00        .byte $00   ; 
- - - - - - 0x019FA0 06:BF90: 0E        .byte $0E   ; 
- - - - - - 0x019FA1 06:BF91: 3E        .byte $3E   ; 
- - - - - - 0x019FA2 06:BF92: 78        .byte $78   ; <x>
- - - - - - 0x019FA3 06:BF93: 50        .byte $50   ; <P>
- - - - - - 0x019FA4 06:BF94: 70        .byte $70   ; <p>
- - - - - - 0x019FA5 06:BF95: 30        .byte $30   ; <0>
- - - - - - 0x019FA6 06:BF96: 18        .byte $18   ; 
- - - - - - 0x019FA7 06:BF97: 00        .byte $00   ; 
- - - - - - 0x019FA8 06:BF98: 0E        .byte $0E   ; 
- - - - - - 0x019FA9 06:BF99: 3E        .byte $3E   ; 
- - - - - - 0x019FAA 06:BF9A: 78        .byte $78   ; <x>
- - - - - - 0x019FAB 06:BF9B: 70        .byte $70   ; <p>
- - - - - - 0x019FAC 06:BF9C: 70        .byte $70   ; <p>
- - - - - - 0x019FAD 06:BF9D: 30        .byte $30   ; <0>
- - - - - - 0x019FAE 06:BF9E: 18        .byte $18   ; 
- - - - - - 0x019FAF 06:BF9F: 00        .byte $00   ; 
- - - - - - 0x019FB0 06:BFA0: 13        .byte $13   ; 
- - - - - - 0x019FB1 06:BFA1: FF        .byte $FF   ; 
- - - - - - 0x019FB2 06:BFA2: FC        .byte $FC   ; 
- - - - - - 0x019FB3 06:BFA3: F1        .byte $F1   ; 
- - - - - - 0x019FB4 06:BFA4: 07        .byte $07   ; 
- - - - - - 0x019FB5 06:BFA5: 07        .byte $07   ; 
- - - - - - 0x019FB6 06:BFA6: 03        .byte $03   ; 
- - - - - - 0x019FB7 06:BFA7: 07        .byte $07   ; 
- - - - - - 0x019FB8 06:BFA8: 1C        .byte $1C   ; 
- - - - - - 0x019FB9 06:BFA9: FD        .byte $FD   ; 
- - - - - - 0x019FBA 06:BFAA: FF        .byte $FF   ; 
- - - - - - 0x019FBB 06:BFAB: FF        .byte $FF   ; 
- - - - - - 0x019FBC 06:BFAC: 07        .byte $07   ; 
- - - - - - 0x019FBD 06:BFAD: 07        .byte $07   ; 
- - - - - - 0x019FBE 06:BFAE: 03        .byte $03   ; 
- - - - - - 0x019FBF 06:BFAF: 07        .byte $07   ; 
- - - - - - 0x019FC0 06:BFB0: 0E        .byte $0E   ; 
- - - - - - 0x019FC1 06:BFB1: 1C        .byte $1C   ; 
- - - - - - 0x019FC2 06:BFB2: 1C        .byte $1C   ; 
- - - - - - 0x019FC3 06:BFB3: 00        .byte $00   ; 
- - - - - - 0x019FC4 06:BFB4: 38        .byte $38   ; <8>
- - - - - - 0x019FC5 06:BFB5: 3C        .byte $3C   ; 
- - - - - - 0x019FC6 06:BFB6: 00        .byte $00   ; 
- - - - - - 0x019FC7 06:BFB7: 00        .byte $00   ; 
- - - - - - 0x019FC8 06:BFB8: 0E        .byte $0E   ; 
- - - - - - 0x019FC9 06:BFB9: 1C        .byte $1C   ; 
- - - - - - 0x019FCA 06:BFBA: 1C        .byte $1C   ; 
- - - - - - 0x019FCB 06:BFBB: 10        .byte $10   ; 
- - - - - - 0x019FCC 06:BFBC: 38        .byte $38   ; <8>
- - - - - - 0x019FCD 06:BFBD: 3C        .byte $3C   ; 
- - - - - - 0x019FCE 06:BFBE: 00        .byte $00   ; 
- - - - - - 0x019FCF 06:BFBF: 00        .byte $00   ; 
- - - - - - 0x019FD0 06:BFC0: 00        .byte $00   ; 
- - - - - - 0x019FD1 06:BFC1: 00        .byte $00   ; 
- - - - - - 0x019FD2 06:BFC2: 00        .byte $00   ; 
- - - - - - 0x019FD3 06:BFC3: 00        .byte $00   ; 
- - - - - - 0x019FD4 06:BFC4: 00        .byte $00   ; 
- - - - - - 0x019FD5 06:BFC5: 00        .byte $00   ; 
- - - - - - 0x019FD6 06:BFC6: 00        .byte $00   ; 
- - - - - - 0x019FD7 06:BFC7: 00        .byte $00   ; 
- - - - - - 0x019FD8 06:BFC8: 00        .byte $00   ; 
- - - - - - 0x019FD9 06:BFC9: 00        .byte $00   ; 
- - - - - - 0x019FDA 06:BFCA: 00        .byte $00   ; 
- - - - - - 0x019FDB 06:BFCB: 00        .byte $00   ; 
- - - - - - 0x019FDC 06:BFCC: 00        .byte $00   ; 
- - - - - - 0x019FDD 06:BFCD: 00        .byte $00   ; 
- - - - - - 0x019FDE 06:BFCE: 00        .byte $00   ; 
- - - - - - 0x019FDF 06:BFCF: 00        .byte $00   ; 
- - - - - - 0x019FE0 06:BFD0: 00        .byte $00   ; 
- - - - - - 0x019FE1 06:BFD1: 00        .byte $00   ; 
- - - - - - 0x019FE2 06:BFD2: 00        .byte $00   ; 
- - - - - - 0x019FE3 06:BFD3: 00        .byte $00   ; 
- - - - - - 0x019FE4 06:BFD4: 00        .byte $00   ; 
- - - - - - 0x019FE5 06:BFD5: 00        .byte $00   ; 
- - - - - - 0x019FE6 06:BFD6: 00        .byte $00   ; 
- - - - - - 0x019FE7 06:BFD7: 00        .byte $00   ; 
- - - - - - 0x019FE8 06:BFD8: 00        .byte $00   ; 
- - - - - - 0x019FE9 06:BFD9: 00        .byte $00   ; 
- - - - - - 0x019FEA 06:BFDA: 00        .byte $00   ; 
- - - - - - 0x019FEB 06:BFDB: 00        .byte $00   ; 
- - - - - - 0x019FEC 06:BFDC: 00        .byte $00   ; 
- - - - - - 0x019FED 06:BFDD: 00        .byte $00   ; 
- - - - - - 0x019FEE 06:BFDE: 00        .byte $00   ; 
- - - - - - 0x019FEF 06:BFDF: 00        .byte $00   ; 
- - - - - - 0x019FF0 06:BFE0: 00        .byte $00   ; 
- - - - - - 0x019FF1 06:BFE1: 00        .byte $00   ; 
- - - - - - 0x019FF2 06:BFE2: 00        .byte $00   ; 
- - - - - - 0x019FF3 06:BFE3: 00        .byte $00   ; 
- - - - - - 0x019FF4 06:BFE4: 00        .byte $00   ; 
- - - - - - 0x019FF5 06:BFE5: 00        .byte $00   ; 
- - - - - - 0x019FF6 06:BFE6: 00        .byte $00   ; 
- - - - - - 0x019FF7 06:BFE7: 00        .byte $00   ; 
- - - - - - 0x019FF8 06:BFE8: 00        .byte $00   ; 
- - - - - - 0x019FF9 06:BFE9: 00        .byte $00   ; 
- - - - - - 0x019FFA 06:BFEA: 00        .byte $00   ; 
- - - - - - 0x019FFB 06:BFEB: 00        .byte $00   ; 
- - - - - - 0x019FFC 06:BFEC: 00        .byte $00   ; 
- - - - - - 0x019FFD 06:BFED: 00        .byte $00   ; 
- - - - - - 0x019FFE 06:BFEE: 00        .byte $00   ; 
- - - - - - 0x019FFF 06:BFEF: 00        .byte $00   ; 
- - - - - - 0x01A000 06:BFF0: 00        .byte $00   ; 
- - - - - - 0x01A001 06:BFF1: 00        .byte $00   ; 
- - - - - - 0x01A002 06:BFF2: 00        .byte $00   ; 
- - - - - - 0x01A003 06:BFF3: 00        .byte $00   ; 
- - - - - - 0x01A004 06:BFF4: 00        .byte $00   ; 
- - - - - - 0x01A005 06:BFF5: 00        .byte $00   ; 
- - - - - - 0x01A006 06:BFF6: 00        .byte $00   ; 
- - - - - - 0x01A007 06:BFF7: 00        .byte $00   ; 
- - - - - - 0x01A008 06:BFF8: 00        .byte $00   ; 
- - - - - - 0x01A009 06:BFF9: 00        .byte $00   ; 
- - - - - - 0x01A00A 06:BFFA: 00        .byte $00   ; 
- - - - - - 0x01A00B 06:BFFB: 00        .byte $00   ; 
- - - - - - 0x01A00C 06:BFFC: 00        .byte $00   ; 
- - - - - - 0x01A00D 06:BFFD: 00        .byte $00   ; 
- - - - - - 0x01A00E 06:BFFE: 00        .byte $00   ; 
- - - - - - 0x01A00F 06:BFFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 06_1: 0x%X [%d]", ($C000 - *), ($C000 - *))



