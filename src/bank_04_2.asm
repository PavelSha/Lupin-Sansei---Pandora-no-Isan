.segment "BANK_04_2"
.include "bank_ram.inc"
.org $8000  ; for listing file
; 0x012010-0x01400F

.export tbl_messages
.export tbl_ptr_rooms_with_NPCs
.export tbl_ptr_enemies
.export tbl_ptr_briefcases_outside
.export loc_number_of_rooms_on_the_level
.export tbl_ptr_rooms_on_the_level
.export loc_number_of_briefcases_on_the_level
.export tbl_ptr_briefcases_on_the_level
.export tbl_ptr_briefcases_indexes_on_the_level
.export tbl_briefcases_positions
.export tbl_npc_portrait_sprites
.export tbl_npc_portrait_set
.export tbl_npc_sprite_set
.export tbl_ptr_prison_rooms
.export tbl_portrait_prisoners

; The addresses are in the vram (the high-order nibble - 0%000XXXXX)
; see docs (Messages)
tbl_messages:
- D - - - - 0x012010 04:8000: 65        .addr $8065   ; 0x00, PPU address $0065
- D 0 - - - 0x012012 04:8002: 00        .addr $8000
.ifdef en
  .addr $806c
  .addr $8118
  .addr $8196
  .addr $8217
  .addr $828d
  .addr $82da
.else
- D 0 - - - 0x012014 04:8004: 66        .addr $8066
- D 0 - - - 0x012016 04:8006: D6        .addr $80D6
- D 0 - - - 0x012018 04:8008: 21        .addr $8121
- D 0 - - - 0x01201A 04:800A: 74        .addr $8174
- D 0 - - - 0x01201C 04:800C: C4        .addr $81C4
- D 0 - - - 0x01201E 04:800E: 07        .addr $8207
.endif
- D - - - - 0x012020 04:8010: 65        .addr $8065
- D - - - - 0x012022 04:8012: 65        .addr $8065
- D - - - - 0x012024 04:8014: 65        .addr $8065
.ifdef en
  .addr $8323
  .addr $8341
  .addr $8370
  .addr $83a6
  .addr $83d2
  .addr $83ea
  .addr $841d
  .addr $844d
  .addr $847f
  .addr $84aa
  .addr $84d3
.else
- D 0 - - - 0x012026 04:8016: 4F        .addr $824F   ; PPU address $024F
- D 0 - - - 0x012028 04:8018: 5F        .addr $825F   ; PPU address $025F
- D 0 - - - 0x01202A 04:801A: 8A        .addr $828A   ; PPU address $028A
- D 0 - - - 0x01202C 04:801C: B9        .addr $82B9   ; PPU address $02B9
- D 0 - - - 0x01202E 04:801E: E1        .addr $82E1   ; PPU address $02E1
- D 0 - - - 0x012030 04:8020: F5 82     .addr $82F5   ; 0x10, PPU address $02F5
- D - - - - 0x012032 04:8022: 1D        .addr $831D   ; PPU address $031D
- D 0 - - - 0x012034 04:8024: 45        .addr $8345   ; PPU address $0345
- D 0 - - - 0x012036 04:8026: 65        .addr $8365   ; PPU address $0365
- D 0 - - - 0x012038 04:8028: 84        .addr $8384   ; PPU address $0384
- D 0 - - - 0x01203A 04:802A: 9A 83     .addr $839A
.endif
- D - - - - 0x01203C 04:802C: 65        .addr $8065
- D - - - - 0x01203E 04:802E: 65        .addr $8065
- D - - - - 0x012040 04:8030: 65        .addr $8065
.ifdef en
  .addr $84ff
  .addr $8527
  .addr $855c
  .addr $841d
  .addr $8590
  .addr $85c3
  .addr $85fa
  .addr $862e   ; 0x20
  .addr $865a
  .addr $8689
  .addr $86bb
  .addr $86e9
  .addr $870f
  .addr $8736
  .addr $8762
  .addr $878b
  .addr $87be
  .addr $87ed
  .addr $87fe
  .addr $8814
.else
- D 0 - - - 0x012042 04:8032: C9 83     .addr $83C9
- D 0 - - - 0x012044 04:8034: F8 83     .addr $83F8
- D 0 - - - 0x012046 04:8036: 27 84     .addr $8427
- D - - - - 0x012048 04:8038: 54 84     .addr $8454
- D 0 - - - 0x01204A 04:803A: 7F 84     .addr $847F
- D 0 - - - 0x01204C 04:803C: AE 84     .addr $84AE
- D 0 - - - 0x01204E 04:803E: DB 84     .addr $84DB
- D 0 - - - 0x012050 04:8040: 0A 85     .addr $850A   ; 0x20
- D 0 - - - 0x012052 04:8042: 36 85     .addr $8536
- D - - - - 0x012054 04:8044: 61 85     .addr $8561
- D 0 - - - 0x012056 04:8046: 8F 85     .addr $858F
- D 0 - - - 0x012058 04:8048: BD 85     .addr $85BD
- D 0 - - - 0x01205A 04:804A: EB 85     .addr $85EB
- D 0 - - - 0x01205C 04:804C: 14 86     .addr $8614
- D 0 - - - 0x01205E 04:804E: 2B 86     .addr $862B
- D 0 - - - 0x012060 04:8050: 58 86     .addr $8658
- D 0 - - - 0x012062 04:8052: 83 86     .addr $8683
- D 0 - - - 0x012064 04:8054: AE 86     .addr $86AE
- D 0 - - - 0x012066 04:8056: B7 86     .addr $86B7
- D 0 - - - 0x012068 04:8058: C1 86     .addr $86C1
.endif
- D - - - - 0x01206A 04:805A: 65        .addr $8065
- D - - - - 0x01206C 04:805C: 65        .addr $8065
- D - - - - 0x01206E 04:805E: 65        .addr $8065
.ifdef en
  .addr $8826   ; 0x30
  .addr $8858
  .addr $8884
  .addr $841d
  .addr $88b3
  .addr $88da
  .addr $88fd
  .addr $8925
.else
- D 0 - - - 0x012070 04:8060: CB 86     .addr $86CB   ; 0x30
- D 0 - - - 0x012072 04:8062: F7 86     .addr $86F7
- D 0 - - - 0x012074 04:8064: 22 87     .addr $8722
- D - - - - 0x012076 04:8066: 4D 87     .addr $874D
- D 0 - - - 0x012078 04:8068: 77 87     .addr $8777
- D 0 - - - 0x01207A 04:806A: 9B 87     .addr $879B
- D 0 - - - 0x01207C 04:806C: BD 87     .addr $87BD
- D 0 - - - 0x01207E 04:806E: DD 87     .addr $87DD
.endif
- D - - - - 0x012080 04:8070: 65        .addr $8065
- D - - - - 0x012082 04:8072: 65        .addr $8065
- D - - - - 0x012084 04:8074: 65        .addr $8065
.ifdef en
  .addr $894c
  .addr $8967
  .addr $8993
  .addr $89ba
  .addr $89e6
  .addr $8a0d   ; 0x40
  .addr $8a39
  .addr $8a71
  .addr $8a8a
  .addr $8ab4
  .addr $8add
  .addr $8b02
  .addr $8b2b
  .addr $8b51
  .addr $8b7c
  .addr $8ba1
  .addr $8bcf
  .addr $8c00
  .addr $8c2b
  .addr $841d
  .addr $8c44
  .addr $8c6e   ; 0x50
  .addr $8c9e
  .addr $8cc4
  .addr $8c9e
  .addr $8cf5
  .addr $8d19
  .addr $8d41
  .addr $8d6b
  .addr $8d95
  .addr $8dc1
  .addr $8de9
  .addr $8e0e
  .addr $8e3b
  .addr $8e67
  .addr $8ea3
  .addr $8ec2
  .addr $8eeb   ; 0x60
  .addr $8f19
  .addr $8f3c   ; PPU address $0D5A
  .addr $8f6b   ; PPU address $0D80
  .addr $8f96   ; PPU address $0D94
  .addr $8fc3   ; PPU address $0DC3
  .addr $8ff0   ; PPU address $0DEE
  .addr $9019   ; PPU address $0E19
  .addr $90a0
  .addr $90cc
  .addr $90fa
  .addr $9117
  .addr $9139
  .addr $91af
  .addr $91d6
  .addr $9202
  .addr $922b   ; 0x70
  .addr $9139
  .addr $925d
  .addr $9291
  .addr $92bf
  .addr $92e8
  .addr $937b
  .addr $9336
  .addr $935b
  .addr $9383
  .addr $93a8   ; PPU address $11CF
  .addr $93d4
  .addr $93e1   ; PPU address $1209
  .addr $93ec   ; 0x7D, PPU address $1214
.else
- D 0 - - - 0x012086 04:8076: 0B 88     .addr $880B
- D 0 - - - 0x012088 04:8078: 20 88     .addr $8820
- D 0 - - - 0x01208A 04:807A: 48 88     .addr $8848
- D 0 - - - 0x01208C 04:807C: 72 88     .addr $8872
- D 0 - - - 0x01208E 04:807E: 96 88     .addr $8896
- D 0 - - - 0x012090 04:8080: BE 88     .addr $88BE   ; 0x40
- D 0 - - - 0x012092 04:8082: DC 88     .addr $88DC
- D 0 - - - 0x012094 04:8084: FE 88     .addr $88FE
- D 0 - - - 0x012096 04:8086: 2C 89     .addr $892C
- D 0 - - - 0x012098 04:8088: 56 89     .addr $8956
- D 0 - - - 0x01209A 04:808A: 7C 89     .addr $897C
- D 0 - - - 0x01209C 04:808C: A0 89     .addr $89A0
- D 0 - - - 0x01209E 04:808E: CC 89     .addr $89CC
- D 0 - - - 0x0120A0 04:8090: F7 89     .addr $89F7
- D 0 - - - 0x0120A2 04:8092: 22 8A     .addr $8A22
- D 0 - - - 0x0120A4 04:8094: 4B 8A     .addr $8A4B
- D 0 - - - 0x0120A6 04:8096: 79 8A     .addr $8A79
- D 0 - - - 0x0120A8 04:8098: A0 8A     .addr $8AA0
- D 0 - - - 0x0120AA 04:809A: BC 8A     .addr $8ABC
- D - - - - 0x0120AC 04:809C: CE 8A     .addr $8ACE
- D 0 - - - 0x0120AE 04:809E: F3 8A     .addr $8AF3
- D 0 - - - 0x0120B0 04:80A0: 1C 8B     .addr $8B1C   ; 0x50
- D 0 - - - 0x0120B2 04:80A2: 47 8B     .addr $8B47
- D 0 - - - 0x0120B4 04:80A4: 5B 8B     .addr $8B5B
- D 0 - - - 0x0120B6 04:80A6: 80 8B     .addr $8B80
- D 0 - - - 0x0120B8 04:80A8: 97 8B     .addr $8B97
- D 0 - - - 0x0120BA 04:80AA: AF 8B     .addr $8BAF
- D 0 - - - 0x0120BC 04:80AC: CD 8B     .addr $8BCD
- D 0 - - - 0x0120BE 04:80AE: ED 8B     .addr $8BED
- D 0 - - - 0x0120C0 04:80B0: 0B 8C     .addr $8C0B
- D 0 - - - 0x0120C2 04:80B2: 2E 8C     .addr $8C2E
- D 0 - - - 0x0120C4 04:80B4: 46 8C     .addr $8C46
- D 0 - - - 0x0120C6 04:80B6: 68 8C     .addr $8C68
- D 0 - - - 0x0120C8 04:80B8: 8F 8C     .addr $8C8F
- D 0 - - - 0x0120CA 04:80BA: B4 8C     .addr $8CB4
- D 0 - - - 0x0120CC 04:80BC: DE 8C     .addr $8CDE
- D 0 - - - 0x0120CE 04:80BE: 02 8D     .addr $8D02
- D 0 - - - 0x0120D0 04:80C0: 22 8D     .addr $8D22   ; 0x60
- D 0 - - - 0x0120D2 04:80C2: 49 8D     .addr $8D49
- D 0 - - - 0x0120D4 04:80C4: 5A        .addr $8D5A   ; PPU address $0D5A
- D 0 - - - 0x0120D6 04:80C6: 80        .addr $8D80   ; PPU address $0D80
- D 0 - - - 0x0120D8 04:80C8: 94        .addr $8D94   ; PPU address $0D94
- D 0 - - - 0x0120DA 04:80CA: C3        .addr $8DC3   ; PPU address $0DC3
- D 0 - - - 0x0120DC 04:80CC: EE        .addr $8DEE   ; PPU address $0DEE
- D 0 - - - 0x0120DE 04:80CE: 19        .addr $8E19   ; PPU address $0E19
- D 0 - - - 0x0120E0 04:80D0: 8E 8E     .addr $8E8E
- D 0 - - - 0x0120E2 04:80D2: AB 8E     .addr $8EAB
- D 0 - - - 0x0120E4 04:80D4: D7 8E     .addr $8ED7
- D 0 - - - 0x0120E6 04:80D6: FC 8E     .addr $8EFC
- D 0 - - - 0x0120E8 04:80D8: 26 8F     .addr $8F26
- D 0 - - - 0x0120EA 04:80DA: 8A 8F     .addr $8F8A
- D 0 - - - 0x0120EC 04:80DC: B7 8F     .addr $8FB7
- D 0 - - - 0x0120EE 04:80DE: E4 8F     .addr $8FE4
- D 0 - - - 0x0120F0 04:80E0: 02 90     .addr $9002   ; 0x70
- D 0 - - - 0x0120F2 04:80E2: 15 90     .addr $9015
- D 0 - - - 0x0120F4 04:80E4: 7A 90     .addr $907A
- D 0 - - - 0x0120F6 04:80E6: A9 90     .addr $90A9
- D 0 - - - 0x0120F8 04:80E8: D5 90     .addr $90D5
- D 0 - - - 0x0120FA 04:80EA: FA 90     .addr $90FA
- D 0 - - - 0x0120FC 04:80EC: 29 91     .addr $9129
- D 0 - - - 0x0120FE 04:80EE: 57 91     .addr $9157
- D 0 - - - 0x012100 04:80F0: 81 91     .addr $9181
- D 0 - - - 0x012102 04:80F2: A7 91     .addr $91A7
- D 0 - - - 0x012104 04:80F4: CF        .addr $91CF   ; PPU address $11CF
- D 0 - - - 0x012106 04:80F6: FC 91     .addr $91FC
- D 0 - - - 0x012108 04:80F8: 09        .addr $9209   ; PPU address $1209
- D - - - - 0x01210A 04:80FA: 14 92     .addr $9214   ; 0x7D, PPU address $1214
.endif

- D - - - - 0x01210C 04:80FC: 00        .byte $00, $00, $00, $00

tbl_ptr_rooms_with_NPCs:
- D 0 - - - 0x012110 04:8100: D4 9D     .addr tbl_ptr_rooms1_with_NPCs ; Level 1 CPU address $9DD4 
- D 0 - - - 0x012112 04:8102: DC 9D     .addr tbl_ptr_rooms2_with_NPCs ; Level 2 CPU address $9DDC 
- D 0 - - - 0x012114 04:8104: F0 9D     .addr tbl_ptr_rooms3_with_NPCs ; Level 3 CPU address $9DF0 
- D 0 - - - 0x012116 04:8106: FA 9D     .addr tbl_ptr_rooms4_with_NPCs ; Level 4 CPU address $9DFA 

tbl_ptr_prison_rooms:
- D 0 - - - 0x012118 04:8108: C4 9C     .addr tbl_ptr_prison_rooms1 ; Level 1 CPU address $9CC4
- D 0 - - - 0x01211A 04:810A: CD 9C     .addr tbl_ptr_prison_rooms2 ; Level 2 CPU address $9CCD
- D 0 - - - 0x01211C 04:810C: E5 9C     .addr tbl_ptr_prison_rooms3 ; Level 3 CPU address $9CE5
- D 0 - - - 0x01211E 04:810E: F1 9C     .addr tbl_ptr_prison_rooms4 ; Level 4 CPU address $9CF1

tbl_portrait_prisoners:
- D 0 - - - 0x012120 04:8110: 32        .addr tbl_portrait_demo_indexes      ; CPU address $9E32
- D 0 - - - 0x012122 04:8112: 35        .addr tbl_portrait_demo_indexes + 3  ; CPU address $9E35
- D 0 - - - 0x012124 04:8114: 38        .addr tbl_portrait_demo_indexes + 6  ; CPU address $9E38

loc_number_of_rooms_on_the_level:
- D 0 - - - 0x012126 04:8116: 1F        .byte $1F                     ; CPU address $8116 (level 1)
tbl_ptr_rooms_on_the_level:
- D 0 - - - 0x012127 04:8117: EA 99     .addr tbl_rooms_on_the_level1 ; CPU address $99EA
- D 0 - - - 0x012129 04:8119: 6D        .byte $6D                     ; CPU address $8119 (level 2)
- D 0 - - - 0x01212A 04:811A: 0A 9A     .addr tbl_rooms_on_the_level2 ; CPU address $9A0A
- D 0 - - - 0x01212C 04:811C: 36        .byte $36                     ; CPU address $811C (level 3)
- D 0 - - - 0x01212D 04:811D: 78 9A     .addr tbl_rooms_on_the_level3 ; CPU address $9A78
- D 0 - - - 0x01212F 04:811F: 91        .byte $91                     ; CPU address $811F (level 4)
- D 0 - - - 0x012130 04:8120: AF 9A     .addr tbl_rooms_on_the_level4 ; CPU address $9AAF

loc_number_of_briefcases_on_the_level: ; the white briefcases
- D 0 - - - 0x012132 04:8122: 1C        .byte $1C                          ; CPU address $8116 (level 1)
tbl_ptr_briefcases_on_the_level:
- D 0 - - - 0x012133 04:8123: 41 9B     .addr tbl_briefcases_on_the_level1 ; CPU address $9B41
- D 0 - - - 0x012135 04:8125: 7D        .byte $7D                          ; CPU address $8125 (level 2)
- D 0 - - - 0x012136 04:8126: 5D 9B     .addr tbl_briefcases_on_the_level2 ; CPU address $9B5D
- D 0 - - - 0x012138 04:8128: 42        .byte $42                          ; CPU address $8128 (level 2)
- D 0 - - - 0x012139 04:8129: DB 9B     .addr tbl_briefcases_on_the_level3 ; CPU address $9BDB
- D 0 - - - 0x01213B 04:812B: A5        .byte $A5                          ; CPU address $812B (level 4)
- D 0 - - - 0x01213C 04:812C: 1E 9C     .addr tbl_briefcases_on_the_level4 ; CPU address $9C1E

tbl_ptr_briefcases_indexes_on_the_level:
- D 0 - - - 0x01213E 04:812E: 7D 98     .addr tbl_briefcases_indexes_on_the_level1 ; CPU address $987D
- D 0 - - - 0x012140 04:8130: 91 98     .addr tbl_briefcases_indexes_on_the_level2 ; CPU address $9891
- D 0 - - - 0x012142 04:8132: 09 99     .addr tbl_briefcases_indexes_on_the_level3 ; CPU address $9909
- D 0 - - - 0x012144 04:8134: 45 99     .addr tbl_briefcases_indexes_on_the_level4 ; CPU address $9945

; 1 byte - Y-position (screen unit)
; 2 byte - X-position (screen unit)
tbl_briefcases_positions:
; level 1
- D 0 - - - 0x012146 04:8136: BF        .byte $BF, $84
- D 0 - - - 0x012148 04:8138: AF        .byte $AF, $C4
- D 0 - - - 0x01214A 04:813A: 7F        .byte $7F, $5C
- D 0 - - - 0x01214C 04:813C: 7F        .byte $7F, $A4
- D 0 - - - 0x01214E 04:813E: AF        .byte $AF, $EC
; level 2.1
- D 0 - - - 0x012150 04:8140: BF        .byte $BF, $7C
- D 0 - - - 0x012152 04:8142: AF        .byte $AF, $CC
- D 0 - - - 0x012154 04:8144: 7F        .byte $7F, $4C
- D 0 - - - 0x012156 04:8146: 7F        .byte $7F, $C4
- D 0 - - - 0x012158 04:8148: 9F        .byte $9F, $E4
; level 2.2
- D 0 - - - 0x01215A 04:814A: BF        .byte $BF, $74
- D 0 - - - 0x01215C 04:814C: AF        .byte $AF, $AC
- D 0 - - - 0x01215E 04:814E: 7F        .byte $7F, $6C
- D 0 - - - 0x012160 04:8150: 9F        .byte $9F, $CC
- D 0 - - - 0x012162 04:8152: 8F        .byte $8F, $EC
; level 3
- D 0 - - - 0x012164 04:8154: BF        .byte $BF, $8C
- D 0 - - - 0x012166 04:8156: AF        .byte $AF, $C4
- D 0 - - - 0x012168 04:8158: 8F        .byte $8F, $D4
- D 0 - - - 0x01216A 04:815A: 9F        .byte $9F, $5C
- D 0 - - - 0x01216C 04:815C: AF        .byte $AF, $64
; level 4
- D 0 - - - 0x01216E 04:815E: BF        .byte $BF, $BC
- D 0 - - - 0x012170 04:8160: 8F        .byte $8F, $5C
- D 0 - - - 0x012172 04:8162: 5F        .byte $5F, $2C
- D 0 - - - 0x012174 04:8164: 5F        .byte $5F, $D4
- D 0 - - - 0x012176 04:8166: 8F        .byte $8F, $A4

tbl_npc_portrait_set:
; 1 byte - NPC model
; 2,3,4 bytes - colors of the palette
; 5 byte - CHR Bank data
- D 0 - - - 0x012178 04:8168: 00        .byte $00, $36, $20, $16, $34 ; Count Lazare de Cagliostro
- D - - - - 0x01217D 04:816D: 00        .byte $00, $36, $20, $10, $34 ; Count Lazare de Cagliostro
- D 0 - - - 0x012182 04:8172: 01        .byte $01, $36, $16, $11, $34 ; Man ?
- D - - - - 0x012187 04:8177: 01        .byte $01, $36, $2A, $14, $34 ; Man ?
- D 0 - - - 0x01218C 04:817C: 02        .byte $02, $36, $1C, $20, $34 ; Sailor ?
- D - - - - 0x012191 04:8181: 02        .byte $02, $36, $1C, $20, $34 ; Sailor ?
- D - - - - 0x012196 04:8186: 03        .byte $03, $36, $13, $21, $34 ; Pharaoh's tomb #1, isometry
- D - - - - 0x01219B 04:818B: 03        .byte $03, $36, $18, $00, $34 ; Pharaoh's tomb #2, isometry
- D 0 - - - 0x0121A0 04:8190: 04        .byte $04, $36, $26, $20, $34 ; woman ?
- D 0 - - - 0x0121A5 04:8195: 05        .byte $05, $36, $13, $20, $34 ; woman ?
- D 0 - - - 0x0121AA 04:819A: 06        .byte $06, $36, $1A, $20, $34 ; woman ?
- D - - - - 0x0121AF 04:819F: 07        .byte $07, $36, $13, $21, $34 ; Pharaoh's tomb #1, full face
- D - - - - 0x0121B4 04:81A4: 07        .byte $07, $36, $13, $21, $34 ; Pharaoh's tomb #2, full face, duplicate
- D - - - - 0x0121B9 04:81A9: 07        .byte $07, $36, $00, $20, $34 ; Pharaoh's tomb #3, full face
- D 0 - - - 0x0121BE 04:81AE: 08        .byte $08, $37, $15, $20, $34 ; woman ?
- D - - - - 0x0121C3 04:81B3: 08        .byte $08, $36, $13, $20, $34 ; woman ?
- D 0 - - - 0x0121C8 04:81B8: 09        .byte $09, $37, $2C, $20, $34 ; woman ?
- D - - - - 0x0121CD 04:81BD: 09        .byte $09, $36, $15, $20, $34 ; woman ?
- D 0 - - - 0x0121D2 04:81C2: 00        .byte $00, $37, $14, $20, $36 ; woman ?
- D - - - - 0x0121D7 04:81C7: 00        .byte $00, $36, $2B, $20, $36 ; woman ?
- D - - - - 0x0121DC 04:81CC: 01        .byte $01, $20, $16, $06, $36 ; Pharaoh's tomb #4, full face
- D - - - - 0x0121E1 04:81D1: 01        .byte $01, $36, $26, $20, $36 ; Pharaoh's tomb #5, full face
- D 0 - - - 0x0121E6 04:81D6: 02        .byte $02, $36, $20, $2A, $36 ; Yi ?
- D - - - - 0x0121EB 04:81DB: 02        .byte $02, $36, $20, $00, $36 ; Yi ?
- D 0 - - - 0x0121F0 04:81E0: 03        .byte $03, $36, $19, $16, $36 ; Lian ?
- D - - - - 0x0121F5 04:81E5: 03        .byte $03, $36, $20, $13, $36 ; Lian ?
- D 0 - - - 0x0121FA 04:81EA: 04        .byte $04, $36, $20, $21, $36 ; San ?
- D - - - - 0x0121FF 04:81EF: 04        .byte $04, $36, $20, $15, $36 ; San ?
- D 0 - - - 0x012204 04:81F4: 09        .byte $09, $36, $21, $16, $32 ; Suu
- D - - - - 0x012209 04:81F9: 09        .byte $09, $36, $19, $27, $32 ; Suu
- D 0 - - - 0x01220E 04:81FE: 03        .byte $03, $2C, $13, $21, $34 ; Pharaoh's tomb #3, isometry
- D - - - - 0x012213 04:8203: 03        .byte $03, $36, $20, $13, $34 ; Pharaoh's tomb #4, isometry
- D 0 - - - 0x012218 04:8208: 07        .byte $07, $20, $13, $21, $34 ; Pharaoh's tomb #6, full face
- D - - - - 0x01221D 04:820D: 04        .byte $04, $36, $20, $15, $34 ; woman ?
- D 0 - - - 0x012222 04:8212: 01        .byte $01, $20, $16, $06, $36 ; Pharaoh's tomb #7, full face
- D - - - - 0x012227 04:8217: 05        .byte $05, $36, $19, $27, $36 ; !(UNUSED?), broken
- D 0 - - - 0x01222C 04:821C: 06        .byte $06, $26, $16, $12, $32 ; Hulk
- D 0 - - - 0x012231 04:8221: 07        .byte $07, $26, $14, $20, $32 ; Kim
- D 0 - - - 0x012236 04:8226: 08        .byte $08, $26, $17, $20, $32 ; Raid
- D 0 - - - 0x01223B 04:822B: 00        .byte $00, $20, $36, $2A, $32 ; Lupin
- D 0 - - - 0x012240 04:8230: 01        .byte $01, $11, $36, $00, $32 ; Jigen
- D 0 - - - 0x012245 04:8235: 02        .byte $02, $20, $36, $10, $32 ; Goemon
- D 0 - - - 0x01224A 04:823A: 03        .byte $03, $1A, $37, $26, $32 ; Fujiko
- D - - - - 0x01224F 04:823F: 04        .byte $04, $20, $37, $17, $32 ; Clarisse
- D 0 - - - 0x012254 04:8244: 05        .byte $05, $20, $36, $06, $32 ; Zenigata

tbl_npc_sprite_set:
; 1 byte - the offset by the address (see sprite_magic2)
; 2, 3, 4 - palette
; 5 byte - ChrBankSelect (and +1 for the other ChrBankSelect)
- D 0 - - - 0x012259 04:8249: 02        .byte $02, $36, $06, $20, $0A ; Count Lazare de Cagliostro
- D - - - - 0x01225E 04:824E: 02        .byte $02, $36, $0F, $17, $0A
- D 0 - - - 0x012263 04:8253: 04        .byte $04, $36, $16, $11, $0A
- D - - - - 0x012268 04:8258: 04        .byte $04, $36, $0F, $1C, $0A
- D 0 - - - 0x01226D 04:825D: 06        .byte $06, $36, $20, $0C, $0A
- D - - - - 0x012272 04:8262: 06        .byte $06, $36, $0F, $1C, $0A
- D - - - - 0x012277 04:8267: 08        .byte $08, $36, $0F, $26, $0A
- D - - - - 0x01227C 04:826C: 08        .byte $08, $36, $0F, $08, $0A
- D 0 - - - 0x012281 04:8271: 0A        .byte $0A, $36, $26, $05, $0A
- D 0 - - - 0x012286 04:8276: 0C        .byte $0C, $36, $13, $25, $0A
- D 0 - - - 0x01228B 04:827B: 0E        .byte $0E, $36, $1A, $27, $0A
- D - - - - 0x012290 04:8280: 0C        .byte $0C, $36, $19, $14, $0A
- D - - - - 0x012295 04:8285: 0C        .byte $0C, $36, $0F, $14, $0A
- D - - - - 0x01229A 04:828A: 0C        .byte $0C, $36, $10, $14, $0A
- D 0 - - - 0x01229F 04:828F: 10        .byte $10, $37, $15, $11, $0A
- D - - - - 0x0122A4 04:8294: 0E        .byte $0E, $36, $0F, $28, $0A
- D 0 - - - 0x0122A9 04:8299: 12        .byte $12, $37, $1C, $14, $0A
- D - - - - 0x0122AE 04:829E: 24        .byte $24, $36, $19, $26, $0A
- D 0 - - - 0x0122B3 04:82A3: 14        .byte $14, $37, $04, $3C, $0A
- D - - - - 0x0122B8 04:82A8: 24        .byte $24, $36, $10, $26, $0A
- D - - - - 0x0122BD 04:82AD: 10        .byte $10, $36, $06, $19, $0A
- D - - - - 0x0122C2 04:82B2: 10        .byte $10, $36, $16, $02, $0A
- D 0 - - - 0x0122C7 04:82B7: 18        .byte $18, $36, $1A, $0F, $0A
- D - - - - 0x0122CC 04:82BC: 12        .byte $12, $36, $0B, $1C, $0A
- D 0 - - - 0x0122D1 04:82C1: 1A        .byte $1A, $36, $16, $19, $0A
- D - - - - 0x0122D6 04:82C6: 14        .byte $14, $36, $09, $2B, $0A
- D 0 - - - 0x0122DB 04:82CB: 1C        .byte $1C, $36, $21, $0F, $0A
- D - - - - 0x0122E0 04:82D0: 16        .byte $16, $36, $0F, $38, $0A
- D 0 - - - 0x0122E5 04:82D5: 1E        .byte $1E, $36, $16, $0F, $0A
- D - - - - 0x0122EA 04:82DA: 18        .byte $18, $36, $0F, $04, $0A
- D 0 - - - 0x0122EF 04:82DF: 08        .byte $08, $22, $12, $0F, $0A
- D - - - - 0x0122F4 04:82E4: 1A        .byte $1A, $36, $13, $05, $0A
- D 0 - - - 0x0122F9 04:82E9: 24        .byte $24, $13, $23, $07, $0A
- D - - - - 0x0122FE 04:82EE: 1C        .byte $1C, $36, $0F, $1B, $0A
- D 0 - - - 0x012303 04:82F3: 16        .byte $16, $0F, $05, $26, $0A
- D - - - - 0x012308 04:82F8: 1E        .byte $1E, $36, $0F, $03, $0A
- D 0 - - - 0x01230D 04:82FD: 2A        .byte $2A, $37, $27, $0F, $17
- D 0 - - - 0x012312 04:8302: 2E        .byte $2E, $36, $15, $0F, $13
- D 0 - - - 0x012317 04:8307: 32        .byte $32, $26, $17, $0F, $0F
- D 0 - - - 0x01231C 04:830C: 26        .byte $26, $37, $2A, $0F, $01 ; Lupin tied up
- D 0 - - - 0x012321 04:8311: 26        .byte $26, $37, $22, $0F, $02
- D 0 - - - 0x012326 04:8316: 28        .byte $28, $37, $10, $0F, $02
- D 0 - - - 0x01232B 04:831B: 00        .byte $00, $36, $16, $0A, $0A
- D - - - - 0x012330 04:8320: 20        .byte $20, $1A, $11, $16, $0B
- D 0 - - - 0x012335 04:8325: 22        .byte $22, $36, $06, $0F, $04 ; Zenigata

tbl_npc_portrait_sprites: ; 12 bytes
- D 0 - - - 0x01233A 04:832A: 80        .byte $80, $81, $90, $91, $82, $83, $92, $93, $84, $85, $94, $95   ; Lupin
- D 0 - - - 0x012346 04:8336: 86        .byte $86, $87, $96, $97, $88, $89, $98, $99, $8A, $8B, $9A, $9B   ; Jigen
- D 0 - - - 0x012352 04:8342: 8C        .byte $8C, $8D, $9C, $9D, $8E, $8F, $9E, $9F, $A0, $A1, $B0, $B1   ; Goemon
- D 0 - - - 0x01235E 04:834E: A2        .byte $A2, $A3, $B2, $B3, $A4, $A5, $B4, $B5, $A6, $A7, $B6, $B7   ; Fujiko
- D 0 - - - 0x01236A 04:835A: A8        .byte $A8, $A9, $B8, $B9, $AA, $AB, $BA, $BB, $AC, $AD, $BC, $BD   ; Clarisse
- D 0 - - - 0x012376 04:8366: AE        .byte $AE, $AF, $BE, $BF, $C0, $C1, $D0, $D1, $C2, $C3, $D2, $D3   ; Zenigata
- D 0 - - - 0x012382 04:8372: C4        .byte $C4, $C5, $D4, $D5, $C6, $C7, $D6, $D7, $C8, $C9, $D8, $D9   ; Hulk
- D 0 - - - 0x01238E 04:837E: CA        .byte $CA, $CB, $DA, $DB, $CC, $CD, $DC, $DD, $CE, $CF, $DE, $DF   ; Kim
- D 0 - - - 0x01239A 04:838A: E0        .byte $E0, $E1, $F0, $F1, $E2, $E3, $F2, $F3, $E4, $E5, $F4, $F5   ; Rald
- D 0 - - - 0x0123A6 04:8396: E6        .byte $E6, $E7, $F6, $F7, $E8, $E9, $F8, $F9, $EA, $EB, $FA, $FB   ; Suu

; Templates for a generation of enemies 
tbl_ptr_enemies:
- D 0 - - - 0x0123B2 04:83A2: A4 84     .addr tbl_enemies_level1_0       ; CPU address $84A4
- D - - - - 0x0123B4 04:83A4: 90 85     .addr deadlock                   ; CPU address $8590
- D - - - - 0x0123B6 04:83A6: 90 85     .addr deadlock
- D 0 - - - 0x0123B8 04:83A8: 91 85     .addr tbl_enemies_level1_1       ; CPU address $8591
- D 0 - - - 0x0123BA 04:83AA: E2 85     .addr tbl_enemies_level1_2       ; CPU address $85E2
- D 0 - - - 0x0123BC 04:83AC: 53 86     .addr tbl_enemies_level1_3       ; CPU address $8653
- D 0 - - - 0x0123BE 04:83AE: BC 86     .addr tbl_enemies_level2_outside ; CPU address $86BC
- D 0 - - - 0x0123C0 04:83B0: A1 87     .addr tbl_enemies_level2_d1_d3   ; CPU address $87A1
- D 0 - - - 0x0123C2 04:83B2: 1A 88     .addr tbl_enemies_level2_d2      ; CPU address $881A
- D 0 - - - 0x0123C4 04:83B4: 8B 88     .addr tbl_enemies_level2_d4_d5   ; CPU address $888B
- D 0 - - - 0x0123C6 04:83B6: 08 89     .addr tbl_enemies_level2_d6_d8   ; CPU address $8908
- D 0 - - - 0x0123C8 04:83B8: 95 89     .addr tbl_enemies_level2_d7      ; CPU address $8995
- D 0 - - - 0x0123CA 04:83BA: 1A 8A     .addr tbl_enemies_level2_d9_d13  ; CPU address $8A1A
- D 0 - - - 0x0123CC 04:83BC: 9F 8A     .addr tbl_enemies_level2_d11_d13 ; CPU address $8A9F
- D 0 - - - 0x0123CE 04:83BE: 2C 8B     .addr tbl_enemies_level2_d12     ; CPU address $8B2C
- D 0 - - - 0x0123D0 04:83C0: C5 8B     .addr tbl_enemies_level3_0       ; CPU address $8BC5
- D 0 - - - 0x0123D2 04:83C2: 69 8C     .addr tbl_enemies_level3_1       ; CPU address $8C69
- D 0 - - - 0x0123D4 04:83C4: CA 8C     .addr tbl_enemies_level3_2       ; CPU address $8CCA
- D 0 - - - 0x0123D6 04:83C6: 37 8D     .addr tbl_enemies_level3_3       ; CPU address $8D37
- D 0 - - - 0x0123D8 04:83C8: BC 8D     .addr tbl_enemies_level3_4       ; CPU address $8DBC
- D 0 - - - 0x0123DA 04:83CA: 90 85     .addr deadlock
- D - - - - 0x0123DC 04:83CC: 90 85     .addr deadlock
- D - - - - 0x0123DE 04:83CE: 90 85     .addr deadlock
- D - - - - 0x0123E0 04:83D0: 90 85     .addr deadlock
- D - - - - 0x0123E2 04:83D2: 90 85     .addr deadlock
- D 0 - - - 0x0123E4 04:83D4: 41 8E     .addr tbl_enemies_level_racing   ; CPU address $8E41
- D 0 - - - 0x0123E6 04:83D6: 90 85     .addr deadlock
- D 0 - - - 0x0123E8 04:83D8: 90 85     .addr deadlock
- D 0 - - - 0x0123EA 04:83DA: 90 85     .addr deadlock
- D 0 - - - 0x0123EC 04:83DC: 90 85     .addr deadlock
- D 0 - - - 0x0123EE 04:83DE: 90 85     .addr deadlock
- D 0 - - - 0x0123F0 04:83E0: 90 85     .addr deadlock
- D 0 - - - 0x0123F2 04:83E2: 90 85     .addr deadlock
- D 0 - - - 0x0123F4 04:83E4: 90 85     .addr deadlock
- D 0 - - - 0x0123F6 04:83E6: 90 85     .addr deadlock
- D 0 - - - 0x0123F8 04:83E8: 90 85     .addr deadlock
- D 0 - - - 0x0123FA 04:83EA: 90 85     .addr deadlock
- D - - - - 0x0123FC 04:83EC: 90 85     .addr deadlock
- D 0 - - - 0x0123FE 04:83EE: 90 85     .addr deadlock
- D - - - - 0x012400 04:83F0: 90 85     .addr deadlock
- D - - - - 0x012402 04:83F2: 90 85     .addr deadlock
- D 0 - - - 0x012404 04:83F4: 90 85     .addr deadlock
- D - - - - 0x012406 04:83F6: 90 85     .addr deadlock
- D 0 - - - 0x012408 04:83F8: 90 85     .addr deadlock
- D 0 - - - 0x01240A 04:83FA: 90 85     .addr deadlock
- D 0 - - - 0x01240C 04:83FC: 90 85     .addr deadlock
- D - - - - 0x01240E 04:83FE: 90 85     .addr deadlock
- D - - - - 0x012410 04:8400: 90 85     .addr deadlock
- D 0 - - - 0x012412 04:8402: 90 85     .addr deadlock
- D 0 - - - 0x012414 04:8404: 90 85     .addr deadlock
- D 0 - - - 0x012416 04:8406: 90 85     .addr deadlock
- D - - - - 0x012418 04:8408: 90 85     .addr deadlock
- D - - - - 0x01241A 04:840A: 90 85     .addr deadlock
- D - - - - 0x01241C 04:840C: 90 85     .addr deadlock
- D 0 - - - 0x01241E 04:840E: 90 85     .addr deadlock
- D 0 - - - 0x012420 04:8410: 90 85     .addr deadlock
- D 0 - - - 0x012422 04:8412: 90 85     .addr deadlock
- D 0 - - - 0x012424 04:8414: 90 85     .addr deadlock
- D - - - - 0x012426 04:8416: 90 85     .addr deadlock
- D - - - - 0x012428 04:8418: 90 85     .addr deadlock
- D 0 - - - 0x01242A 04:841A: 90 85     .addr deadlock
- D 0 - - - 0x01242C 04:841C: 90 85     .addr deadlock
- D 0 - - - 0x01242E 04:841E: 90 85     .addr deadlock
- D 0 - - - 0x012430 04:8420: 90 85     .addr deadlock
- D 0 - - - 0x012432 04:8422: 90 85     .addr deadlock
- D 0 - - - 0x012434 04:8424: 90 85     .addr deadlock
- D 0 - - - 0x012436 04:8426: C6 8E     .addr tbl_enemies_level4_map1_b2_d2 ; CPU address $8EC6
- D 0 - - - 0x012438 04:8428: D7 8E     .addr tbl_enemies_level4_map1_c0_c2 ; CPU address $8ED7
- D 0 - - - 0x01243A 04:842A: 90 85     .addr deadlock
- D 0 - - - 0x01243C 04:842C: E8 8E     .addr tbl_enemies_level4_map2_b1_b3 ; CPU address $8EE8
- D 0 - - - 0x01243E 04:842E: ED 8E     .addr tbl_enemies_level4_map2_a3_d3 ; CPU address $8EED
- D 0 - - - 0x012440 04:8430: FE 8E     .addr tbl_enemies_level4_map2_d0_d3 ; CPU address $8EFE
- D 0 - - - 0x012442 04:8432: 1F 8F     .addr tbl_enemies_level4_map2_a0_d0 ; CPU address $8F1F
- D 0 - - - 0x012444 04:8434: 34 8F     .addr tbl_enemies_level4_map2_a0_a3 ; CPU address $8F34
- D 0 - - - 0x012446 04:8436: 49 8F     .addr tbl_enemies_level4_map2_a0_a6 ; CPU address $8F49
- D 0 - - - 0x012448 04:8438: 62 8F     .addr tbl_enemies_level4_map2_a6_f6 ; CPU address $8F62
- D 0 - - - 0x01244A 04:843A: 97 8F     .addr tbl_enemies_level4_map2_f0_f6 ; CPU address $8F97
- D 0 - - - 0x01244C 04:843C: C8 8F     .addr tbl_enemies_level4_map2_a0_f0 ; CPU address $8FC8
- D 0 - - - 0x01244E 04:843E: 05 90     .addr tbl_enemies_level4_map2_b1_b5 ; CPU address $9005
- D 0 - - - 0x012450 04:8440: 90 85     .addr deadlock
- D 0 - - - 0x012452 04:8442: 26 90     .addr tbl_enemies_level4_map2_b5_e5 ; CPU address $9026
- D 0 - - - 0x012454 04:8444: 53 90     .addr tbl_enemies_level4_map2_e0_e6 ; CPU address $9053
- D 0 - - - 0x012456 04:8446: 78 90     .addr tbl_enemies_level4_map2_b1_f1 ; CPU address $9078
- D 0 - - - 0x012458 04:8448: 90 85     .addr deadlock
- D 0 - - - 0x01245A 04:844A: 9D 90     .addr tbl_enemies_level4_map2_b4_d4 ; CPU address $909D
- D 0 - - - 0x01245C 04:844C: 90 85     .addr deadlock
- D 0 - - - 0x01245E 04:844E: 90 85     .addr deadlock
- D 0 - - - 0x012460 04:8450: B6 90     .addr tbl_enemies_level4_map3_d3_e3 ; CPU address $90B6
- D 0 - - - 0x012462 04:8452: BF 90     .addr tbl_enemies_level4_map3_d3_d5 ; CPU address $90BF
- D 0 - - - 0x012464 04:8454: C8 90     .addr tbl_enemies_level4_map3_d4_f4 ; CPU address $90C8
- D 0 - - - 0x012466 04:8456: 90 85     .addr deadlock
- D 0 - - - 0x012468 04:8458: D9 90     .addr tbl_enemies_level4_map3_c2_g2 ; CPU address $90D9
- D 0 - - - 0x01246A 04:845A: FE 90     .addr tbl_enemies_level4_map3_c1_c6 ; CPU address $90FE
- D 0 - - - 0x01246C 04:845C: 3B 91     .addr tbl_enemies_level4_map3_c5_f5 ; CPU address $913B
- D 0 - - - 0x01246E 04:845E: 5C 91     .addr tbl_enemies_level4_map3_f2_f5 ; CPU address $915C
- D 0 - - - 0x012470 04:8460: 85 91     .addr tbl_enemies_level4_map3_b1_g1 ; CPU address $9185
- D 0 - - - 0x012472 04:8462: B2 91     .addr tbl_enemies_level4_map3_b1_b7 ; CPU address $91B2
- D 0 - - - 0x012474 04:8464: E7 91     .addr tbl_enemies_level4_map3_b6_g6 ; CPU address $91E7
- D 0 - - - 0x012476 04:8466: 18 92     .addr tbl_enemies_level4_map3_g1_g6 ; CPU address $9218
- D 0 - - - 0x012478 04:8468: 41 92     .addr tbl_enemies_level4_map3_a0_h0 ; CPU address $9241
- D 0 - - - 0x01247A 04:846A: 8E 92     .addr tbl_enemies_level4_map3_a0_a7 ; CPU address $928E
- D 0 - - - 0x01247C 04:846C: DF 92     .addr tbl_enemies_level4_map3_a7_h7 ; CPU address $92DF
- D 0 - - - 0x01247E 04:846E: 34 93     .addr tbl_enemies_level4_map3_h0_h7 ; CPU address $9334
- D 0 - - - 0x012480 04:8470: 89 93     .addr tbl_enemies_level4_map4_a0_j0 ; CPU address $9389
- D 0 - - - 0x012482 04:8472: FE 93     .addr tbl_enemies_level4_map4_a0_a9 ; CPU address $93FE
- D 0 - - - 0x012484 04:8474: 5F 94     .addr tbl_enemies_level4_map4_a9_j9 ; CPU address $945F
- D 0 - - - 0x012486 04:8476: CC 94     .addr tbl_enemies_level4_map4_j0_j9 ; CPU address $94CC
- D 0 - - - 0x012488 04:8478: 2D 95     .addr tbl_enemies_level4_map4_b1_i1 ; CPU address $952D
- D 0 - - - 0x01248A 04:847A: 72 95     .addr tbl_enemies_level4_map4_b1_b8 ; CPU address $9572
- D 0 - - - 0x01248C 04:847C: AF 95     .addr tbl_enemies_level4_map4_b8_e8 ; CPU address $95AF
- D 0 - - - 0x01248E 04:847E: CC 95     .addr tbl_enemies_level4_map4_g8_j8 ; CPU address $95CC
- D 0 - - - 0x012490 04:8480: F9 95     .addr tbl_enemies_level4_map4_i6_i8 ; CPU address $95F9
- D 0 - - - 0x012492 04:8482: 12 96     .addr tbl_enemies_level4_map4_i1_i3 ; CPU address $9612
- D 0 - - - 0x012494 04:8484: 3B 96     .addr tbl_enemies_level4_map4_g2_i2 ; CPU address $963B
- D 0 - - - 0x012496 04:8486: 4C 96     .addr tbl_enemies_level4_map4_c2_e2 ; CPU address $964C
- D 0 - - - 0x012498 04:8488: 69 96     .addr tbl_enemies_level4_map4_c1_c9 ; CPU address $9669
- D 0 - - - 0x01249A 04:848A: B2 96     .addr tbl_enemies_level4_map4_a7_i7 ; CPU address $96B2
- D 0 - - - 0x01249C 04:848C: FF 96     .addr tbl_enemies_level4_map4_h2_h7 ; CPU address $96FF
- D 0 - - - 0x01249E 04:848E: 40 97     .addr tbl_enemies_level4_map4_d3_g3 ; CPU address $9740
- D 0 - - - 0x0124A0 04:8490: 69 97     .addr tbl_enemies_level4_map4_d2_d7 ; CPU address $9769
- D 0 - - - 0x0124A2 04:8492: A6 97     .addr tbl_enemies_level4_map4_d6_h6 ; CPU address $97A6
- D 0 - - - 0x0124A4 04:8494: CF 97     .addr tbl_enemies_level4_map4_g3_g6 ; CPU address $97CF
- D 0 - - - 0x0124A6 04:8496: 00 98     .addr tbl_enemies_level4_map4_e4_g4 ; CPU address $9800
- D 0 - - - 0x0124A8 04:8498: 19 98     .addr tbl_enemies_level4_map4_e3_e5 ; CPU address $9819
- D 0 - - - 0x0124AA 04:849A: 90 85     .addr deadlock
- D 0 - - - 0x0124AC 04:849C: 90 85     .addr deadlock

tbl_ptr_briefcases_outside:
- D 0 - - - 0x0124AE 04:849E: 2E 98     .addr tbl_briefcases_outside1 ; CPU address $982E
- D 0 - - - 0x0124B0 04:84A0: 4F 98     .addr tbl_briefcases_outside2 ; CPU address $984F
- D 0 - - - 0x0124B2 04:84A2: 64 98     .addr tbl_briefcases_outside3 ; CPU address $9864

; Tip: XYZW
; X - macro X-position
; Y - X-position
; Z - Y-position
; W - type of enemy
; Level 1.0
tbl_enemies_level1_0:
- D 0 - I - 0x0124B4 04:84A4: 01        .byte $01, $28, $DF, $06 ; Land Diver
- D 0 - I - 0x0124B8 04:84A8: 01        .byte $01, $88, $DF, $06 ; 
- D 0 - I - 0x0124BC 04:84AC: 02        .byte $02, $18, $87, $1F ; Fly man
- D 0 - I - 0x0124C0 04:84B0: 02        .byte $02, $88, $67, $1F ; 
- D 0 - I - 0x0124C4 04:84B4: 02        .byte $02, $E8, $97, $1F ; 
- D 0 - I - 0x0124C8 04:84B8: 03        .byte $03, $48, $7F, $0F ; Gray cat
- D 0 - I - 0x0124CC 04:84BC: 03        .byte $03, $A8, $DF, $06 ; Land Diver
- D 0 - I - 0x0124D0 04:84C0: 03        .byte $03, $D8, $4F, $0F ; Gray cat
- D 0 - I - 0x0124D4 04:84C4: 03        .byte $03, $E0, $DF, $06 ; Land Diver
- D 0 - I - 0x0124D8 04:84C8: 04        .byte $04, $30, $BF, $0F ; Gray cat
- D 0 - I - 0x0124DC 04:84CC: 04        .byte $04, $50, $7F, $1F ; Fly man
- D 0 - I - 0x0124E0 04:84D0: 04        .byte $04, $B8, $B7, $1F ;
- D 0 - I - 0x0124E4 04:84D4: 05        .byte $05, $28, $3F, $0E ; Bat
- D 0 - I - 0x0124E8 04:84D8: 05        .byte $05, $58, $DF, $06 ; Land Diver
- D 0 - I - 0x0124EC 04:84DC: 05        .byte $05, $98, $3F, $0E ; Bat
- D 0 - I - 0x0124F0 04:84E0: 06        .byte $06, $18, $DF, $06 ; Land Diver
- D 0 - I - 0x0124F4 04:84E4: 06        .byte $06, $28, $3F, $0E ; Bat
- D 0 - I - 0x0124F8 04:84E8: 06        .byte $06, $60, $DF, $06 ; Land Diver
- D 0 - I - 0x0124FC 04:84EC: 06        .byte $06, $B0, $DF, $0E ; Bat 
- D 0 - I - 0x012500 04:84F0: 06        .byte $06, $D8, $3F, $0E ; 
- D 0 - I - 0x012504 04:84F4: 07        .byte $07, $3C, $8F, $0F ; Gray cat
- D 0 - I - 0x012508 04:84F8: 07        .byte $07, $A0, $DF, $06 ; Land Diver
- D 0 - I - 0x01250C 04:84FC: 07        .byte $07, $D8, $DF, $06 ; 
- D 0 - I - 0x012510 04:8500: 07        .byte $07, $EC, $7F, $0F ; Gray cat
- D 0 - I - 0x012514 04:8504: 08        .byte $08, $18, $DF, $06 ; Land Diver
- D 0 - I - 0x012518 04:8508: 08        .byte $08, $18, $DF, $06 ; 
- D 0 - I - 0x01251C 04:850C: 08        .byte $08, $9C, $8F, $0F ; Gray cat
- D 0 - I - 0x012520 04:8510: 09        .byte $09, $48, $57, $1F ; Fly man
- D 0 - I - 0x012524 04:8514: 09        .byte $09, $98, $E7, $1F ; 
- D 0 - I - 0x012528 04:8518: 09        .byte $09, $A8, $5F, $0E ; Bat
- D 0 - I - 0x01252C 04:851C: 09        .byte $09, $E0, $BF, $0E ; 
- D 0 - I - 0x012530 04:8520: 09        .byte $09, $F8, $7F, $1F ; Fly man
- D 0 - I - 0x012534 04:8524: 0A        .byte $0A, $50, $5F, $0E ; Bat
- D 0 - I - 0x012538 04:8528: 0A        .byte $0A, $60, $D7, $1F ; Fly man
- D 0 - I - 0x01253C 04:852C: 0A        .byte $0A, $90, $BF, $0E ; Bat
- D 0 - I - 0x012540 04:8530: 0A        .byte $0A, $A0, $57, $1F ; Fly man
- D 0 - I - 0x012544 04:8534: 0B        .byte $0B, $28, $3F, $0E ; Bat
- D 0 - I - 0x012548 04:8538: 0B        .byte $0B, $B8, $BF, $0E ; 
- D 0 - I - 0x01254C 04:853C: 0B        .byte $0B, $D8, $3F, $0E ; 
- D 0 - I - 0x012550 04:8540: 0C        .byte $0C, $28, $4F, $0F ; Gray cat
- D 0 - I - 0x012554 04:8544: 0C        .byte $0C, $38, $77, $20 ; Shooter with bazooka 
- D 0 - I - 0x012558 04:8548: 0C        .byte $0C, $70, $AF, $0F ; Gray cat 
- D 0 - I - 0x01255C 04:854C: 0C        .byte $0C, $80, $4F, $20 ; Shooter with bazooka
- D 0 - I - 0x012560 04:8550: 0C        .byte $0C, $A0, $77, $0F ; Gray cat
- D 0 - I - 0x012564 04:8554: 0D        .byte $0D, $28, $3F, $0E ; Bat
- D 0 - I - 0x012568 04:8558: 0D        .byte $0D, $40, $D7, $1F ; Fly man
- D 0 - I - 0x01256C 04:855C: 0D        .byte $0D, $E8, $4F, $1F ; 
- D 0 - I - 0x012570 04:8560: 0E        .byte $0E, $28, $3F, $0E ; Bat
- D 0 - I - 0x012574 04:8564: 0E        .byte $0E, $38, $DF, $06 ; Land Diver
- D 0 - I - 0x012578 04:8568: 0E        .byte $0E, $78, $3F, $0E ; Bat
- D 0 - I - 0x01257C 04:856C: 0E        .byte $0E, $88, $DF, $06 ; Land Diver
- D 0 - I - 0x012580 04:8570: 0E        .byte $0E, $C8, $3F, $0E ; Bat
- D 0 - I - 0x012584 04:8574: 0E        .byte $0E, $D8, $DF, $06 ; Land Diver
- D 0 - I - 0x012588 04:8578: 0F        .byte $0F, $18, $3F, $0E ; Bat
- D 0 - I - 0x01258C 04:857C: 0F        .byte $0F, $28, $DF, $06 ; Land Diver
- D 0 - I - 0x012590 04:8580: 0F        .byte $0F, $68, $3F, $0E ; Bat
- D 0 - I - 0x012594 04:8584: 0F        .byte $0F, $78, $DF, $06 ; Land Diver
- D 0 - I - 0x012598 04:8588: 0F        .byte $0F, $B8, $3F, $0E ; Bat
- D 0 - I - 0x01259C 04:858C: 0F        .byte $0F, $C8, $DF, $06 ; Land Diver

deadlock:
- D 0 - I - 0x0125A0 04:8590: FF        .byte $FF

tbl_enemies_level1_1:
- D 0 - I - 0x0125A1 04:8591: 01        .byte $01, $18, $AF, $11 ; Girl in red, in the castle
- D 0 - I - 0x0125A5 04:8595: 01        .byte $01, $C8, $6F, $11 ; 
- D 0 - I - 0x0125A9 04:8599: 02        .byte $02, $30, $7F, $11 ; 
- D 0 - I - 0x0125AD 04:859D: 02        .byte $02, $98, $AF, $11 ; 
- D 0 - I - 0x0125B1 04:85A1: 02        .byte $02, $E0, $6F, $11 ; 
- D 0 - I - 0x0125B5 04:85A5: 03        .byte $03, $20, $BF, $16 ; Black cat 
- D 0 - I - 0x0125B9 04:85A9: 03        .byte $03, $48, $7F, $16 ;
- D 0 - I - 0x0125BD 04:85AD: 03        .byte $03, $C8, $AF, $16 ;
- D 0 - I - 0x0125C1 04:85B1: 04        .byte $04, $58, $DF, $06 ; Land Diver
- D 0 - I - 0x0125C5 04:85B5: 04        .byte $04, $D8, $DF, $06 ;
- D 0 - I - 0x0125C9 04:85B9: 05        .byte $05, $40, $9F, $16 ; Black cat
- D 0 - I - 0x0125CD 04:85BD: 05        .byte $05, $68, $DF, $06 ; Land Diver
- D 0 - I - 0x0125D1 04:85C1: 05        .byte $05, $B0, $DF, $06 ;
- D 0 - I - 0x0125D5 04:85C5: 05        .byte $05, $C0, $7F, $16 ; Black cat
- D 0 - I - 0x0125D9 04:85C9: 06        .byte $06, $38, $7F, $1B ; Girl with sword
- D 0 - I - 0x0125DD 04:85CD: 06        .byte $06, $A0, $9F, $1B ;
- D 0 - I - 0x0125E1 04:85D1: 06        .byte $06, $E8, $7F, $1B ;
- D 0 - I - 0x0125E5 04:85D5: 07        .byte $07, $48, $AF, $11 ; Girl in red, in the castle
- D 0 - I - 0x0125E9 04:85D9: 07        .byte $07, $80, $57, $16 ; Black cat
- D 0 - I - 0x0125ED 04:85DD: 07        .byte $07, $A8, $BF, $11 ; Girl in red, in the castle
- D 0 - I - 0x0125F1 04:85E1: FF        .byte $FF ;

tbl_enemies_level1_2:
- D 0 - I - 0x0125F2 04:85E2: 00        .byte $00, $28, $3F, $0E   ; Bat
- D 0 - I - 0x0125F6 04:85E6: 00        .byte $00, $60, $BF, $1B   ; Girl with sword
- D 0 - I - 0x0125FA 04:85EA: 00        .byte $00, $80, $3F, $0E   ; Bat
- D 0 - I - 0x0125FE 04:85EE: 00        .byte $00, $C0, $BF, $1B   ; Girl with sword
- D 0 - I - 0x012602 04:85F2: 00        .byte $00, $D8, $3F, $0E   ; Bat
- D 0 - I - 0x012606 04:85F6: 01        .byte $01, $28, $3F, $0E   ; 
- D 0 - I - 0x01260A 04:85FA: 01        .byte $01, $40, $7F, $1B   ; Girl with sword
- D 0 - I - 0x01260E 04:85FE: 01        .byte $01, $70, $3F, $0E   ; Bat
- D 0 - I - 0x012612 04:8602: 01        .byte $01, $80, $BF, $1B   ; Girl with sword
- D 0 - I - 0x012616 04:8606: 01        .byte $01, $C8, $7F, $1B   ; 
- D 0 - I - 0x01261A 04:860A: 01        .byte $01, $D8, $3F, $0E   ; Bat
- D 0 - I - 0x01261E 04:860E: 02        .byte $02, $20, $BF, $1B   ; Girl with sword
- D 0 - I - 0x012622 04:8612: 02        .byte $02, $80, $8F, $16   ; Black cat
- D 0 - I - 0x012626 04:8616: 02        .byte $02, $C0, $BF, $1B   ; Girl with sword
- D 0 - I - 0x01262A 04:861A: 03        .byte $03, $20, $AF, $16   ; Black cat
- D 0 - I - 0x01262E 04:861E: 03        .byte $03, $78, $57, $16   ; 
- D 0 - I - 0x012632 04:8622: 03        .byte $03, $80, $BF, $1C   ; Knight in armor with a shield
- D 0 - I - 0x012636 04:8626: 03        .byte $03, $A0, $7F, $1C   ; 
- D 0 - I - 0x01263A 04:862A: 03        .byte $03, $C8, $6F, $16   ; Black cat
- D 0 - I - 0x01263E 04:862E: 04        .byte $04, $20, $7F, $1C   ; Knight in armor with a shield
- D 0 - I - 0x012642 04:8632: 04        .byte $04, $28, $3F, $0E   ; Bat
- D 0 - I - 0x012646 04:8636: 04        .byte $04, $78, $3F, $0E   ; 
- D 0 - I - 0x01264A 04:863A: 04        .byte $04, $80, $BF, $1C   ; Knight in armor with a shield
- D 0 - I - 0x01264E 04:863E: 04        .byte $04, $D8, $3F, $0E   ; Bat
- D 0 - I - 0x012652 04:8642: 05        .byte $05, $40, $7F, $1C   ; Knight in armor with a shield
- D 0 - I - 0x012656 04:8646: 05        .byte $05, $80, $BF, $1C   ; 
- D 0 - I - 0x01265A 04:864A: 06        .byte $06, $80, $BF, $1C   ; 
- D 0 - I - 0x01265E 04:864E: 06        .byte $06, $A0, $7F, $1C   ; 
- D 0 - I - 0x012662 04:8652: FF        .byte $FF   ;

tbl_enemies_level1_3:
- D 0 - I - 0x012663 04:8653: 01        .byte $01, $28, $DF, $06   ; Land Diver
- D 0 - I - 0x012667 04:8657: 01        .byte $01, $80, $DF, $06   ; 
- D 0 - I - 0x01266B 04:865B: 01        .byte $01, $D8, $DF, $06   ; 
- D 0 - I - 0x01266F 04:865F: 02        .byte $02, $58, $BF, $11   ; Girl in red, in the castle
- D 0 - I - 0x012673 04:8663: 02        .byte $02, $A8, $6F, $11   ; 
- D 0 - I - 0x012677 04:8667: 02        .byte $02, $C0, $BF, $11   ; 
- D 0 - I - 0x01267B 04:866B: 03        .byte $03, $04, $AF, $1E   ; Sensor
- D 0 - I - 0x01267F 04:866F: 03        .byte $03, $34, $AF, $0F   ; Gray cat
- D 0 - I - 0x012683 04:8673: 03        .byte $03, $60, $7F, $1E   ; Sensor
- D 0 - I - 0x012687 04:8677: 03        .byte $03, $84, $8F, $0F   ; Gray cat
- D 0 - I - 0x01268B 04:867B: 03        .byte $03, $C4, $AF, $0F   ; 
- D 0 - I - 0x01268F 04:867F: 04        .byte $04, $40, $6F, $1E   ; Sensor
- D 0 - I - 0x012693 04:8683: 04        .byte $04, $80, $BF, $1C   ; Knight in armor with a shield
- D 0 - I - 0x012697 04:8687: 04        .byte $04, $A0, $7F, $1C   ; 
- D 0 - I - 0x01269B 04:868B: 04        .byte $04, $E0, $AF, $1E   ; Sensor
- D 0 - I - 0x01269F 04:868F: 05        .byte $05, $50, $BF, $1B   ; Girl with sword
- D 0 - I - 0x0126A3 04:8693: 05        .byte $05, $58, $AF, $1E   ; Sensor
- D 0 - I - 0x0126A7 04:8697: 05        .byte $05, $80, $77, $1E   ; 
- D 0 - I - 0x0126AB 04:869B: 05        .byte $05, $A8, $7F, $1B   ; Girl with sword
- D 0 - I - 0x0126AF 04:869F: 05        .byte $05, $C0, $BF, $1B   ; 
- D 0 - I - 0x0126B3 04:86A3: 06        .byte $06, $30, $7F, $1B   ; 
- D 0 - I - 0x0126B7 04:86A7: 06        .byte $06, $20, $6F, $1E   ; Sensor
- D 0 - I - 0x0126BB 04:86AB: 06        .byte $06, $50, $BF, $1B   ; Girl with sword
- D 0 - I - 0x0126BF 04:86AF: 06        .byte $06, $60, $AF, $1E   ; Sensor
- D 0 - I - 0x0126C3 04:86B3: 06        .byte $06, $C8, $BF, $1B   ; Girl with sword
- D 0 - I - 0x0126C7 04:86B7: 07        .byte $07, $40, $6F, $1E   ; Sensor
- D 0 - I - 0x0126CB 04:86BB: FF        .byte $FF   ;

tbl_enemies_level2_outside:
- D 0 - I - 0x0126CC 04:86BC: 01        .byte $01, $18, $BF, $17   ; Karate-boy
- D 0 - I - 0x0126D0 04:86C0: 01        .byte $01, $80, $77, $17   ; 
- D 0 - I - 0x0126D4 04:86C4: 01        .byte $01, $D0, $BF, $17   ; 
- D 0 - I - 0x0126D8 04:86C8: 02        .byte $02, $28, $7F, $1A   ; Boy in green
- D 0 - I - 0x0126DC 04:86CC: 02        .byte $02, $A0, $6F, $1A   ; 
- D 0 - I - 0x0126E0 04:86D0: 02        .byte $02, $D8, $BF, $1A   ; 
- D 0 - I - 0x0126E4 04:86D4: 03        .byte $03, $38, $6F, $1A   ; 
- D 0 - I - 0x0126E8 04:86D8: 03        .byte $03, $80, $4F, $1A   ; 
- D 0 - I - 0x0126EC 04:86DC: 03        .byte $03, $C8, $BF, $1A   ; 
- D 0 - I - 0x0126F0 04:86E0: 04        .byte $04, $48, $7F, $14   ; Shooter with bazooka
- D 0 - I - 0x0126F4 04:86E4: 04        .byte $04, $70, $3F, $12   ; Batterfly
- D 0 - I - 0x0126F8 04:86E8: 04        .byte $04, $C8, $3F, $12   ; 
- D 0 - I - 0x0126FC 04:86EC: 05        .byte $05, $28, $8F, $14   ; Shooter with bazooka
- D 0 - I - 0x012700 04:86F0: 05        .byte $05, $48, $3F, $12   ; Batterfly
- D 0 - I - 0x012704 04:86F4: 05        .byte $05, $98, $5F, $14   ; Shooter with bazooka
- D 0 - I - 0x012708 04:86F8: 05        .byte $05, $D8, $3F, $12   ; Batterfly
- D 0 - I - 0x01270C 04:86FC: 06        .byte $06, $28, $BF, $10   ; Nun
- D 0 - I - 0x012710 04:8700: 06        .byte $06, $80, $8F, $10   ; 
- D 0 - I - 0x012714 04:8704: 06        .byte $06, $C8, $BF, $10   ; 
- D 0 - I - 0x012718 04:8708: 07        .byte $07, $38, $AF, $10   ; 
- D 0 - I - 0x01271C 04:870C: 07        .byte $07, $80, $8F, $10   ; 
- D 0 - I - 0x012720 04:8710: 07        .byte $07, $D8, $BF, $10   ; 
- D 0 - I - 0x012724 04:8714: 08        .byte $08, $28, $87, $10   ; 
- D 0 - I - 0x012728 04:8718: 08        .byte $08, $88, $BF, $10   ; 
- D 0 - I - 0x01272C 04:871C: 08        .byte $08, $C8, $87, $10   ; 
- D 0 - I - 0x012730 04:8720: 09        .byte $09, $48, $AF, $18   ; Street karate-boy
- D 0 - I - 0x012734 04:8724: 09        .byte $09, $98, $87, $18   ; 
- D 0 - I - 0x012738 04:8728: 09        .byte $09, $D8, $BF, $18   ; 
- D 0 - I - 0x01273C 04:872C: 0A        .byte $0A, $48, $87, $18   ; 
- D 0 - I - 0x012740 04:8730: 0A        .byte $0A, $A8, $AF, $18   ; 
- D 0 - I - 0x012744 04:8734: 0A        .byte $0A, $C8, $87, $18   ; 
- D 0 - I - 0x012748 04:8738: 0B        .byte $0B, $28, $3F, $12   ; Batterfly
- D 0 - I - 0x01274C 04:873C: 0B        .byte $0B, $60, $7F, $14   ; Shooter with bazooka
- D 0 - I - 0x012750 04:8740: 0B        .byte $0B, $88, $3F, $12   ; Batterfly
- D 0 - I - 0x012754 04:8744: 0B        .byte $0B, $C8, $4F, $14   ; Shooter with bazooka
- D 0 - I - 0x012758 04:8748: 0C        .byte $0C, $28, $3F, $12   ; Batterfly
- D 0 - I - 0x01275C 04:874C: 0C        .byte $0C, $38, $7F, $1A   ; Boy in green
- D 0 - I - 0x012760 04:8750: 0C        .byte $0C, $78, $BF, $1A   ; 
- D 0 - I - 0x012764 04:8754: 0C        .byte $0C, $B0, $3F, $12   ; Batterfly
- D 0 - I - 0x012768 04:8758: 0C        .byte $0C, $D8, $BF, $1A   ; Boy in green
- D 0 - I - 0x01276C 04:875C: 0D        .byte $0D, $28, $BF, $1A   ; 
- D 0 - I - 0x012770 04:8760: 0D        .byte $0D, $38, $3F, $12   ; Batterfly
- D 0 - I - 0x012774 04:8764: 0D        .byte $0D, $88, $7F, $1A   ; Boy in green
- D 0 - I - 0x012778 04:8768: 0D        .byte $0D, $98, $3F, $12   ; Batterfly
- D 0 - I - 0x01277C 04:876C: 0D        .byte $0D, $D8, $BF, $1A   ; Boy in green
- D 0 - I - 0x012780 04:8770: 0D        .byte $0D, $E8, $3F, $12   ; Batterfly
- D 0 - I - 0x012784 04:8774: 0E        .byte $0E, $28, $BF, $10   ; Nun
- D 0 - I - 0x012788 04:8778: 0E        .byte $0E, $38, $3F, $12   ; Batterfly
- D 0 - I - 0x01278C 04:877C: 0E        .byte $0E, $80, $BF, $10   ; Nun
- D 0 - I - 0x012790 04:8780: 0E        .byte $0E, $90, $3F, $12   ; Batterfly
- D 0 - I - 0x012794 04:8784: 0E        .byte $0E, $D8, $BF, $10   ; Nun
- D 0 - I - 0x012798 04:8788: 0E        .byte $0E, $E8, $3F, $12   ; Batterfly
- D 0 - I - 0x01279C 04:878C: 0F        .byte $0F, $28, $BF, $10   ; Nun
- D 0 - I - 0x0127A0 04:8790: 0F        .byte $0F, $38, $3F, $12   ; Batterfly
- D 0 - I - 0x0127A4 04:8794: 0F        .byte $0F, $80, $3F, $12   ; 
- D 0 - I - 0x0127A8 04:8798: 0F        .byte $0F, $B0, $BF, $10   ; Nun
- D 0 - I - 0x0127AC 04:879C: 0F        .byte $0F, $C0, $3F, $12   ; Batterfly
- D 0 - I - 0x0127B0 04:87A0: FF        .byte $FF

tbl_enemies_level2_d1_d3:
- D 0 - I - 0x0127B1 04:87A1: 00        .byte $00, $68, $7F, $17   ; Karate-boy
- D 0 - I - 0x0127B5 04:87A5: 00        .byte $00, $A8, $BF, $17   ; 
- D 0 - I - 0x0127B9 04:87A9: 01        .byte $01, $28, $BF, $17   ; 
- D 0 - I - 0x0127BD 04:87AD: 01        .byte $01, $68, $7F, $17   ; 
- D 0 - I - 0x0127C1 04:87B1: 01        .byte $01, $C0, $3F, $12   ; Batterfly
- D 0 - I - 0x0127C5 04:87B5: 02        .byte $02, $20, $7F, $19   ; Karate-girl
- D 0 - I - 0x0127C9 04:87B9: 02        .byte $02, $98, $3F, $12   ; Batterfly
- D 0 - I - 0x0127CD 04:87BD: 02        .byte $02, $B8, $6F, $19   ; Karate-girl
- D 0 - I - 0x0127D1 04:87C1: 03        .byte $03, $18, $AF, $19   ; 
- D 0 - I - 0x0127D5 04:87C5: 03        .byte $03, $48, $3F, $12   ; Batterfly
- D 0 - I - 0x0127D9 04:87C9: 03        .byte $03, $80, $7F, $19   ; Karate-girl
- D 0 - I - 0x0127DD 04:87CD: 03        .byte $03, $C0, $3F, $12   ; Batterfly
- D 0 - I - 0x0127E1 04:87D1: 04        .byte $04, $28, $3F, $12   ; 
- D 0 - I - 0x0127E5 04:87D5: 04        .byte $04, $38, $AF, $19   ; Karate-girl
- D 0 - I - 0x0127E9 04:87D9: 04        .byte $04, $78, $7F, $19   ; 
- D 0 - I - 0x0127ED 04:87DD: 04        .byte $04, $C8, $BF, $19   ; 
- D 0 - I - 0x0127F1 04:87E1: 04        .byte $04, $C0, $3F, $12   ; Batterfly
- D 0 - I - 0x0127F5 04:87E5: 05        .byte $05, $38, $7F, $19   ; Karate-girl
- D 0 - I - 0x0127F9 04:87E9: 05        .byte $05, $58, $3F, $12   ; Batterfly
- D 0 - I - 0x0127FD 04:87ED: 05        .byte $05, $78, $BF, $19   ; Karate-girl
- D 0 - I - 0x012801 04:87F1: 05        .byte $05, $A8, $3F, $12   ; Batterfly
- D 0 - I - 0x012805 04:87F5: 05        .byte $05, $C8, $7F, $19   ; Karate-girl
- D 0 - I - 0x012809 04:87F9: 06        .byte $06, $38, $3F, $12   ; Batterfly
- D 0 - I - 0x01280D 04:87FD: 06        .byte $06, $48, $7F, $17   ; Karate-boy
- D 0 - I - 0x012811 04:8801: 06        .byte $06, $A8, $BF, $17   ; 
- D 0 - I - 0x012815 04:8805: 06        .byte $06, $B8, $3F, $12   ; Batterfly
- D 0 - I - 0x012819 04:8809: 06        .byte $06, $E0, $5F, $17   ; Karate-boy
- D 0 - I - 0x01281D 04:880D: 07        .byte $07, $20, $BF, $17   ; 
- D 0 - I - 0x012821 04:8811: 07        .byte $07, $70, $7F, $17   ; 
- D 0 - I - 0x012825 04:8815: 07        .byte $07, $E0, $9F, $17   ; 
- D 0 - I - 0x012829 04:8819: FF        .byte $FF   ;

tbl_enemies_level2_d2:
- D 0 - I - 0x01282A 04:881A: 00        .byte $00, $68, $7F, $19   ; Karate-girl
- D 0 - I - 0x01282E 04:881E: 00        .byte $00, $A8, $BF, $19   ; 
- D 0 - I - 0x012832 04:8822: 01 38     .byte $01, $38, $DF, $05   ; Land Diver
- D 0 - I - 0x012836 04:8826: 01        .byte $01, $C8, $DF, $05   ; 
- D 0 - I - 0x01283A 04:882A: 02        .byte $02, $38, $7F, $17   ; Karate-boy
- D 0 - I - 0x01283E 04:882E: 02        .byte $02, $98, $BF, $17   ; 
- D 0 - I - 0x012842 04:8832: 02        .byte $02, $D0, $7F, $17   ; 
- D 0 - I - 0x012846 04:8836: 03 18     .byte $03, $18, $AF, $18   ; Street karate-boy
- D 0 - I - 0x01284A 04:883A: 03 80     .byte $03, $80, $7F, $18   ;
- D 0 - I - 0x01284E 04:883E: 04 28     .byte $04, $28, $BF, $18   ;
- D 0 - I - 0x012852 04:8842: 04        .byte $04, $3C, $A7, $15   ; Sensor
- D 0 - I - 0x012856 04:8846: 04        .byte $04, $78, $7F, $18   ; Street karate-boy
- D 0 - I - 0x01285A 04:884A: 04        .byte $04, $B4, $6F, $15   ; Sensor
- D 0 - I - 0x01285E 04:884E: 04        .byte $04, $C8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012862 04:8852: 05        .byte $05, $48, $7F, $19   ; Karate-girl
- D 0 - I - 0x012866 04:8856: 05        .byte $05, $5C, $AF, $15   ; Sensor
- D 0 - I - 0x01286A 04:885A: 05        .byte $05, $88, $BF, $19   ; Karate-girl
- D 0 - I - 0x01286E 04:885E: 05        .byte $05, $AC, $6F, $15   ; Sensor
- D 0 - I - 0x012872 04:8862: 05        .byte $05, $D8, $7F, $19   ; Karate-girl
- D 0 - I - 0x012876 04:8866: 06        .byte $06, $0C, $A7, $15   ; Sensor
- D 0 - I - 0x01287A 04:886A: 06        .byte $06, $38, $DF, $05   ; Land Diver
- D 0 - I - 0x01287E 04:886E: 06        .byte $06, $74, $6F, $15   ; Sensor
- D 0 - I - 0x012882 04:8872: 06        .byte $06, $D0, $DF, $05   ; Land Diver
- D 0 - I - 0x012886 04:8876: 07        .byte $07, $28, $DF, $05   ; 
- D 0 - I - 0x01288A 04:887A: 07        .byte $07, $5C, $67, $15   ; Sensor
- D 0 - I - 0x01288E 04:887E: 07        .byte $07, $88, $DF, $05   ; Land Diver
- D 0 - I - 0x012892 04:8882: 07        .byte $07, $B8, $AF, $15   ; Sensor
- D 0 - I - 0x012896 04:8886: 07        .byte $07, $D8, $DF, $05   ; Land Diver
- D 0 - I - 0x01289A 04:888A: FF        .byte $FF   ;

tbl_enemies_level2_d4_d5:
- D 0 - I - 0x01289B 04:888B: 00        .byte $00, $48, $DF, $05   ; Land Diver
- D 0 - I - 0x01289F 04:888F: 00        .byte $00, $C0, $DF, $05   ; 
- D 0 - I - 0x0128A3 04:8893: 01        .byte $01, $30, $7F, $18   ; Street karate-boy
- D 0 - I - 0x0128A7 04:8897: 01        .byte $01, $A8, $BF, $18   ; 
- D 0 - I - 0x0128AB 04:889B: 01        .byte $01, $B8, $3F, $1D   ; The barrel
- D 0 - I - 0x0128AF 04:889F: 02        .byte $02, $28, $AF, $18   ; Street karate-boy
- D 0 - I - 0x0128B3 04:88A3: 02        .byte $02, $58, $3F, $1D   ; The barrel
- D 0 - I - 0x0128B7 04:88A7: 02        .byte $02, $78, $7F, $18   ; Street karate-boy
- D 0 - I - 0x0128BB 04:88AB: 02        .byte $02, $B8, $BF, $18   ; 
- D 0 - I - 0x0128BF 04:88AF: 02        .byte $02, $F0, $3F, $1D   ; The barrel
- D 0 - I - 0x0128C3 04:88B3: 03        .byte $03, $48, $7F, $18   ; Street karate-boy
- D 0 - I - 0x0128C7 04:88B7: 03        .byte $03, $78, $3F, $1D   ; The barrel
- D 0 - I - 0x0128CB 04:88BB: 03        .byte $03, $80, $BF, $18   ; Street karate-boy
- D 0 - I - 0x0128CF 04:88BF: 03        .byte $03, $E8, $3F, $1D   ; The barrel
- D 0 - I - 0x0128D3 04:88C3: 04        .byte $04, $48, $7F, $18   ; Street karate-boy
- D 0 - I - 0x0128D7 04:88C7: 04        .byte $04, $58, $3F, $1D   ; The barrel
- D 0 - I - 0x0128DB 04:88CB: 04        .byte $04, $68, $BF, $18   ; Street karate-boy
- D 0 - I - 0x0128DF 04:88CF: 04        .byte $04, $B8, $3F, $1D   ; The barrel
- D 0 - I - 0x0128E3 04:88D3: 04        .byte $04, $D8, $5F, $18   ; Street karate-boy
- D 0 - I - 0x0128E7 04:88D7: 05        .byte $05, $18, $AF, $18   ;
- D 0 - I - 0x0128EB 04:88DB: 05        .byte $05, $38, $3F, $1D   ; The barrel
- D 0 - I - 0x0128EF 04:88DF: 05        .byte $05, $58, $7F, $18   ; Street karate-boy
- D 0 - I - 0x0128F3 04:88E3: 05        .byte $05, $88, $BF, $18   ; 
- D 0 - I - 0x0128F7 04:88E7: 05        .byte $05, $C8, $3F, $1D   ; The barrel
- D 0 - I - 0x0128FB 04:88EB: 06        .byte $06, $18, $DF, $05   ; Land Diver
- D 0 - I - 0x0128FF 04:88EF: 06        .byte $06, $70, $3F, $1D   ; The barrel
- D 0 - I - 0x012903 04:88F3: 06        .byte $06, $88, $DF, $05   ; Land Diver
- D 0 - I - 0x012907 04:88F7: 06        .byte $06, $D8, $DF, $05   ; 
- D 0 - I - 0x01290B 04:88FB: 07        .byte $07, $28, $DF, $05   ; 
- D 0 - I - 0x01290F 04:88FF: 07        .byte $07, $80, $DF, $05   ; 
- D 0 - I - 0x012913 04:8903: 07        .byte $07, $D8, $DF, $05   ; 
- D 0 - I - 0x012917 04:8907: FF        .byte $FF

tbl_enemies_level2_d6_d8:
- D 0 - I - 0x012918 04:8908: 00        .byte $00, $80, $DF, $05   ; Land Diver
- D 0 - I - 0x01291C 04:890C: 00        .byte $00, $90, $3F, $1D   ; The barrel
- D 0 - I - 0x012920 04:8910: 00        .byte $00, $C8, $DF, $05   ; Land Diver
- D 0 - I - 0x012924 04:8914: 00        .byte $00, $D8, $3F, $1D   ; The barrel
- D 0 - I - 0x012928 04:8918: 01        .byte $01, $28, $DF, $05   ; Land Diver
- D 0 - I - 0x01292C 04:891C: 01        .byte $01, $80, $DF, $05   ; 
- D 0 - I - 0x012930 04:8920: 01        .byte $01, $98, $3F, $12   ; Batterfly
- D 0 - I - 0x012934 04:8924: 01        .byte $01, $D8, $DF, $05   ; Land Diver
- D 0 - I - 0x012938 04:8928: 02        .byte $02, $28, $DF, $05   ; 
- D 0 - I - 0x01293C 04:892C: 02        .byte $02, $50, $3F, $12   ; Batterfly
- D 0 - I - 0x012940 04:8930: 02        .byte $02, $80, $DF, $05   ; Land Diver
- D 0 - I - 0x012944 04:8934: 02        .byte $02, $C8, $3F, $12   ; Batterfly
- D 0 - I - 0x012948 04:8938: 02        .byte $02, $D8, $DF, $05   ; Land Diver
- D 0 - I - 0x01294C 04:893C: 03        .byte $03, $48, $7F, $19   ; Karate-girl
- D 0 - I - 0x012950 04:8940: 03        .byte $03, $50, $3F, $12   ; Batterfly
- D 0 - I - 0x012954 04:8944: 03        .byte $03, $98, $BF, $19   ; Karate-girl
- D 0 - I - 0x012958 04:8948: 03        .byte $03, $B8, $3F, $12   ; Batterfly
- D 0 - I - 0x01295C 04:894C: 03        .byte $03, $D8, $7F, $19   ; Karate-girl
- D 0 - I - 0x012960 04:8950: 04        .byte $04, $38, $9F, $19   ; 
- D 0 - I - 0x012964 04:8954: 04        .byte $04, $48, $3F, $12   ; Batterfly
- D 0 - I - 0x012968 04:8958: 04        .byte $04, $70, $7F, $19   ; Karate-girl
- D 0 - I - 0x01296C 04:895C: 04        .byte $04, $B8, $3F, $12   ; Batterfly
- D 0 - I - 0x012970 04:8960: 04        .byte $04, $D8, $8F, $19   ; Karate-girl
- D 0 - I - 0x012974 04:8964: 05        .byte $05, $40, $7F, $19   ; 
- D 0 - I - 0x012978 04:8968: 05        .byte $05, $48, $3F, $12   ; Batterfly
- D 0 - I - 0x01297C 04:896C: 05        .byte $05, $80, $BF, $19   ; Karate-girl
- D 0 - I - 0x012980 04:8970: 05        .byte $05, $B8, $3F, $12   ; Batterfly
- D 0 - I - 0x012984 04:8974: 05        .byte $05, $C8, $7F, $19   ; Karate-girl
- D 0 - I - 0x012988 04:8978: 06        .byte $06, $38, $BF, $19   ; 
- D 0 - I - 0x01298C 04:897C: 06        .byte $06, $60, $7F, $19   ; 
- D 0 - I - 0x012990 04:8980: 06        .byte $06, $98, $3F, $12   ; Batterfly
- D 0 - I - 0x012994 04:8984: 06        .byte $06, $D8, $BF, $19   ; Karate-girl
- D 0 - I - 0x012998 04:8988: 07        .byte $07, $18, $7F, $19   ; 
- D 0 - I - 0x01299C 04:898C: 07        .byte $07, $A8, $7F, $19   ; 
- D 0 - I - 0x0129A0 04:8990: 07        .byte $07, $C0, $BF, $19   ; 
- D 0 - I - 0x0129A4 04:8994: FF        .byte $FF

tbl_enemies_level2_d7:
- D 0 - I - 0x0129A5 04:8995: 00        .byte $00, $70, $7F, $19   ; Karate-girl
- D 0 - I - 0x0129A9 04:8999: 00        .byte $00, $C0, $BF, $19   ; 
- D 0 - I - 0x0129AD 04:899D: 01        .byte $01, $48, $7F, $19   ; 
- D 0 - I - 0x0129B1 04:89A1: 01        .byte $01, $88, $BF, $19   ; 
- D 0 - I - 0x0129B5 04:89A5: 01        .byte $01, $A8, $3F, $12   ; Batterfly
- D 0 - I - 0x0129B9 04:89A9: 01        .byte $01, $D8, $7F, $19   ; Karate-girl
- D 0 - I - 0x0129BD 04:89AD: 02        .byte $02, $40, $7F, $19   ; 
- D 0 - I - 0x0129C1 04:89B1: 02        .byte $02, $50, $3F, $12   ; Batterfly
- D 0 - I - 0x0129C5 04:89B5: 02        .byte $02, $78, $BF, $19   ; Karate-girl
- D 0 - I - 0x0129C9 04:89B9: 02        .byte $02, $D8, $8F, $19   ; 
- D 0 - I - 0x0129CD 04:89BD: 03        .byte $03, $50, $7F, $17   ; Karate-boy
- D 0 - I - 0x0129D1 04:89C1: 03        .byte $03, $5C, $AF, $15   ; Sensor
- D 0 - I - 0x0129D5 04:89C5: 03        .byte $03, $88, $BF, $17   ; Karate-boy
- D 0 - I - 0x0129D9 04:89C9: 03        .byte $03, $BC, $6F, $15   ; Sensor
- D 0 - I - 0x0129DD 04:89CD: 04        .byte $04, $4C, $9F, $15   ; 
- D 0 - I - 0x0129E1 04:89D1: 04        .byte $04, $58, $5F, $17   ; Karate-boy
- D 0 - I - 0x0129E5 04:89D5: 04        .byte $04, $7C, $AF, $15   ; Sensor
- D 0 - I - 0x0129E9 04:89D9: 04        .byte $04, $90, $BF, $17   ; Karate-boy
- D 0 - I - 0x0129ED 04:89DD: 04        .byte $04, $E0, $8F, $17   ; 
- D 0 - I - 0x0129F1 04:89E1: 05        .byte $05, $18, $BF, $17   ; 
- D 0 - I - 0x0129F5 04:89E5: 05        .byte $05, $3C, $AF, $15   ; Sensor
- D 0 - I - 0x0129F9 04:89E9: 05        .byte $05, $50, $7F, $17   ; Karate-boy
- D 0 - I - 0x0129FD 04:89ED: 05        .byte $05, $94, $AF, $15   ; Sensor
- D 0 - I - 0x012A01 04:89F1: 05        .byte $05, $C8, $9F, $19   ; Karate-girl
- D 0 - I - 0x012A05 04:89F5: 06        .byte $06, $48, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A09 04:89F9: 06        .byte $06, $70, $3F, $12   ; Batterfly
- D 0 - I - 0x012A0D 04:89FD: 06        .byte $06, $88, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012A11 04:8A01: 06        .byte $06, $C8, $7F, $18   ; 
- D 0 - I - 0x012A15 04:8A05: 06        .byte $06, $D8, $3F, $12   ; Batterfly
- D 0 - I - 0x012A19 04:8A09: 07        .byte $07, $40, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A1D 04:8A0D: 07        .byte $07, $68, $3F, $12   ; Batterfly
- D 0 - I - 0x012A21 04:8A11: 07        .byte $07, $88, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012A25 04:8A15: 07        .byte $07, $D0, $7F, $18   ; 
- D 0 - I - 0x012A29 04:8A19: FF        .byte $FF

tbl_enemies_level2_d9_d13:
- D 0 - I - 0x012A2A 04:8A1A: 00        .byte $00, $50, $3F, $1D   ; The barrel
- D 0 - I - 0x012A2E 04:8A1E: 00        .byte $00, $78, $DF, $05   ; Land Diver
- D 0 - I - 0x012A32 04:8A22: 00        .byte $00, $C8, $DF, $05   ; 
- D 0 - I - 0x012A36 04:8A26: 01        .byte $01, $28, $DF, $05   ; 
- D 0 - I - 0x012A3A 04:8A2A: 01        .byte $01, $80, $DF, $05   ; 
- D 0 - I - 0x012A3E 04:8A2E: 01        .byte $01, $C0, $3F, $1D   ; The barrel
- D 0 - I - 0x012A42 04:8A32: 01        .byte $01, $D8, $DF, $05   ; Land Diver
- D 0 - I - 0x012A46 04:8A36: 02        .byte $02, $38, $A7, $18   ; Street karate-boy
- D 0 - I - 0x012A4A 04:8A3A: 02        .byte $02, $58, $67, $18   ; 
- D 0 - I - 0x012A4E 04:8A3E: 02        .byte $02, $90, $3F, $1D   ; The barrel
- D 0 - I - 0x012A52 04:8A42: 02        .byte $02, $C8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012A56 04:8A46: 02        .byte $02, $D0, $3F, $1D   ; The barrel
- D 0 - I - 0x012A5A 04:8A4A: 03        .byte $03, $28, $A7, $18   ; Street karate-boy
- D 0 - I - 0x012A5E 04:8A4E: 03        .byte $03, $38, $3F, $1D   ; The barrel
- D 0 - I - 0x012A62 04:8A52: 03        .byte $03, $50, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A66 04:8A56: 03        .byte $03, $88, $3F, $1D   ; The barrel
- D 0 - I - 0x012A6A 04:8A5A: 03        .byte $03, $A8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012A6E 04:8A5E: 04        .byte $04, $28, $3F, $1D   ; The barrel
- D 0 - I - 0x012A72 04:8A62: 04        .byte $04, $38, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A76 04:8A66: 04        .byte $04, $58, $BF, $18   ; 
- D 0 - I - 0x012A7A 04:8A6A: 04        .byte $04, $A8, $3F, $1D   ; The barrel
- D 0 - I - 0x012A7E 04:8A6E: 04        .byte $04, $C8, $9F, $18   ; Street karate-boy
- D 0 - I - 0x012A82 04:8A72: 05        .byte $05, $38, $7F, $18   ; 
- D 0 - I - 0x012A86 04:8A76: 05        .byte $05, $88, $BF, $18   ; 
- D 0 - I - 0x012A8A 04:8A7A: 05        .byte $05, $A8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012A8E 04:8A7E: 05        .byte $05, $D8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A92 04:8A82: 06        .byte $06, $20, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012A96 04:8A86: 06        .byte $06, $58, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012A9A 04:8A8A: 06        .byte $06, $B8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012A9E 04:8A8E: 06        .byte $06, $C8, $AF, $18   ; Street karate-boy
- D 0 - I - 0x012AA2 04:8A92: 07        .byte $07, $48, $7F, $18   ; 
- D 0 - I - 0x012AA6 04:8A96: 07        .byte $07, $78, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AAA 04:8A9A: 07        .byte $07, $A8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012AAE 04:8A9E: FF        .byte $FF

tbl_enemies_level2_d11_d13:
- D 0 - I - 0x012AAF 04:8A9F: 00        .byte $00, $48, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AB3 04:8AA3: 00        .byte $00, $68, $DF, $05   ; Land Diver
- D 0 - I - 0x012AB7 04:8AA7: 00        .byte $00, $C8, $DF, $05   ; 
- D 0 - I - 0x012ABB 04:8AAB: 01        .byte $01, $38, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012ABF 04:8AAF: 01        .byte $01, $80, $BF, $18   ; 
- D 0 - I - 0x012AC3 04:8AB3: 01        .byte $01, $90, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AC7 04:8AB7: 01        .byte $01, $D8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012ACB 04:8ABB: 02        .byte $02, $28, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012ACF 04:8ABF: 02        .byte $02, $38, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012AD3 04:8AC3: 02        .byte $02, $58, $7F, $18   ; 
- D 0 - I - 0x012AD7 04:8AC7: 02        .byte $02, $B8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012ADB 04:8ACB: 02        .byte $02, $D8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012ADF 04:8ACF: 03        .byte $03, $38, $7F, $18   ; 
- D 0 - I - 0x012AE3 04:8AD3: 03        .byte $03, $48, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AE7 04:8AD7: 03        .byte $03, $80, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012AEB 04:8ADB: 03        .byte $03, $B8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AEF 04:8ADF: 03        .byte $03, $D8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012AF3 04:8AE3: 04        .byte $04, $38, $A7, $18   ; 
- D 0 - I - 0x012AF7 04:8AE7: 04        .byte $04, $48, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012AFB 04:8AEB: 04        .byte $04, $58, $67, $18   ; Street karate-boy
- D 0 - I - 0x012AFF 04:8AEF: 04        .byte $04, $C0, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B03 04:8AF3: 04        .byte $04, $D8, $8F, $18   ; Street karate-boy
- D 0 - I - 0x012B07 04:8AF7: 05        .byte $05, $28, $A7, $18   ; 
- D 0 - I - 0x012B0B 04:8AFB: 05        .byte $05, $38, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B0F 04:8AFF: 05        .byte $05, $80, $3F, $13   ;
- D 0 - I - 0x012B13 04:8B03: 05        .byte $05, $98, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012B17 04:8B07: 05        .byte $05, $C8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B1B 04:8B0B: 05        .byte $05, $D8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012B1F 04:8B0F: 06        .byte $06, $38, $BF, $18   ; 
- D 0 - I - 0x012B23 04:8B13: 06        .byte $06, $48, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B27 04:8B17: 06        .byte $06, $58, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012B2B 04:8B1B: 06        .byte $06, $C8, $AF, $18   ; 
- D 0 - I - 0x012B2F 04:8B1F: 07        .byte $07, $48, $7F, $18   ; 
- D 0 - I - 0x012B33 04:8B23: 07        .byte $07, $98, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B37 04:8B27: 07        .byte $07, $A8, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012B3B 04:8B2B: FF        .byte $FF

tbl_enemies_level2_d12:
- D 0 - I - 0x012B3C 04:8B2C: 00        .byte $00, $20, $7F, $17   ; Karate-boy
- D 0 - I - 0x012B40 04:8B30: 00        .byte $00, $88, $BF, $17   ; 
- D 0 - I - 0x012B44 04:8B34: 01        .byte $01, $38, $7F, $17   ; 
- D 0 - I - 0x012B48 04:8B38: 01        .byte $01, $48, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B4C 04:8B3C: 01        .byte $01, $50, $BF, $17   ; Karate-boy
- D 0 - I - 0x012B50 04:8B40: 01        .byte $01, $B8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B54 04:8B44: 01        .byte $01, $C8, $9F, $17   ; Karate-boy
- D 0 - I - 0x012B58 04:8B48: 02        .byte $02, $28, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B5C 04:8B4C: 02        .byte $02, $38, $67, $18   ; Street karate-boy
- D 0 - I - 0x012B60 04:8B50: 02        .byte $02, $78, $BF, $18   ; 
- D 0 - I - 0x012B64 04:8B54: 02        .byte $02, $88, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B68 04:8B58: 02        .byte $02, $C8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012B6C 04:8B5C: 02        .byte $02, $D8, $3F, $13   ; Broned batterfly
- D 0 - I - 0x012B70 04:8B60: 03        .byte $03, $38, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012B74 04:8B64: 03        .byte $03, $54, $6F, $15   ; Sensor
- D 0 - I - 0x012B78 04:8B68: 03        .byte $03, $58, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012B7C 04:8B6C: 03        .byte $03, $94, $AF, $15   ; Sensor
- D 0 - I - 0x012B80 04:8B70: 03        .byte $03, $C8, $9F, $18   ; Street karate-boy
- D 0 - I - 0x012B84 04:8B74: 04        .byte $04, $38, $7F, $18   ; 
- D 0 - I - 0x012B88 04:8B78: 04        .byte $04, $3C, $6F, $15   ; Sensor
- D 0 - I - 0x012B8C 04:8B7C: 04        .byte $04, $88, $BF, $18   ; Street karate-boy
- D 0 - I - 0x012B90 04:8B80: 04        .byte $04, $B0, $AF, $15   ; Sensor
- D 0 - I - 0x012B94 04:8B84: 04        .byte $04, $D8, $7F, $18   ; Street karate-boy
- D 0 - I - 0x012B98 04:8B88: 05        .byte $05, $1C, $AF, $15   ; Sensor
- D 0 - I - 0x012B9C 04:8B8C: 05        .byte $05, $38, $A7, $19   ; Karate-girl
- D 0 - I - 0x012BA0 04:8B90: 05        .byte $05, $68, $7F, $19   ; 
- D 0 - I - 0x012BA4 04:8B94: 05        .byte $05, $74, $6F, $15   ; Sensor
- D 0 - I - 0x012BA8 04:8B98: 05        .byte $05, $D8, $8F, $19   ; Karate-girl
- D 0 - I - 0x012BAC 04:8B9C: 06        .byte $06, $14, $AF, $15   ; Sensor
- D 0 - I - 0x012BB0 04:8BA0: 06        .byte $06, $38, $7F, $19   ; Karate-girl
- D 0 - I - 0x012BB4 04:8BA4: 06        .byte $06, $70, $BF, $19   ; 
- D 0 - I - 0x012BB8 04:8BA8: 06        .byte $06, $7C, $AF, $15   ; Sensor
- D 0 - I - 0x012BBC 04:8BAC: 06        .byte $06, $D8, $8F, $19   ; Karate-girl
- D 0 - I - 0x012BC0 04:8BB0: 07        .byte $07, $18, $67, $19   ; 
- D 0 - I - 0x012BC4 04:8BB4: 07        .byte $07, $14, $AF, $15   ; Sensor
- D 0 - I - 0x012BC8 04:8BB8: 07        .byte $07, $58, $BF, $19   ; Karate-girl
- D 0 - I - 0x012BCC 04:8BBC: 07        .byte $07, $7C, $AF, $15   ; Sensor
- D 0 - I - 0x012BD0 04:8BC0: 07        .byte $07, $E8, $8F, $19   ; Karate-girl
- D 0 - I - 0x012BD4 04:8BC4: FF        .byte $FF

tbl_enemies_level3_0:
- D 0 - I - 0x012BD5 04:8BC5: 01        .byte $01, $48, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012BD9 04:8BC9: 01        .byte $01, $A8, $A7, $01   ; 
- D 0 - I - 0x012BDD 04:8BCD: 02        .byte $02, $48, $7F, $01   ; 
- D 0 - I - 0x012BE1 04:8BD1: 02        .byte $02, $60, $B7, $01   ; 
- D 0 - I - 0x012BE5 04:8BD5: 03        .byte $03, $30, $AF, $01   ; 
- D 0 - I - 0x012BE9 04:8BD9: 03        .byte $03, $60, $7F, $01   ; 
- D 0 - I - 0x012BED 04:8BDD: 03        .byte $03, $90, $3F, $0A   ; The barrel
- D 0 - I - 0x012BF1 04:8BE1: 03        .byte $03, $B8, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012BF5 04:8BE5: 03        .byte $03, $F0, $3F, $0A   ; The barrel
- D 0 - I - 0x012BF9 04:8BE9: 04        .byte $04, $80, $3F, $0A   ; 
- D 0 - I - 0x012BFD 04:8BED: 04        .byte $04, $A0, $7F, $08   ; Shooter with bazooka
- D 0 - I - 0x012C01 04:8BF1: 05        .byte $05, $78, $3F, $0A   ; The barrel
- D 0 - I - 0x012C05 04:8BF5: 05        .byte $05, $C4, $97, $0C   ; The lift
- D 0 - I - 0x012C09 04:8BF9: 06        .byte $06, $14, $97, $0C   ; 
- D 0 - I - 0x012C0D 04:8BFD: 06        .byte $06, $B0, $3F, $0A   ; The barrel
- D 0 - I - 0x012C11 04:8C01: 07        .byte $07, $58, $BF, $0B   ; Jumping sailor
- D 0 - I - 0x012C15 04:8C05: 07        .byte $07, $78, $7F, $0B   ; 
- D 0 - I - 0x012C19 04:8C09: 08        .byte $08, $28, $BF, $0B   ; 
- D 0 - I - 0x012C1D 04:8C0D: 08        .byte $08, $88, $7F, $0B   ; 
- D 0 - I - 0x012C21 04:8C11: 08        .byte $08, $A8, $BF, $0B   ; 
- D 0 - I - 0x012C25 04:8C15: 09        .byte $09, $30, $DF, $04   ; Land Diver
- D 0 - I - 0x012C29 04:8C19: 09        .byte $09, $78, $DF, $04   ; 
- D 0 - I - 0x012C2D 04:8C1D: 09        .byte $09, $C0, $DF, $04   ; 
- D 0 - I - 0x012C31 04:8C21: 09        .byte $09, $D0, $3F, $0A   ; The barrel
- D 0 - I - 0x012C35 04:8C25: 0B        .byte $0B, $40, $9F, $08   ; Shooter with bazooka
- D 0 - I - 0x012C39 04:8C29: 0B        .byte $0B, $80, $3F, $02   ; Gray Land hat
- D 0 - I - 0x012C3D 04:8C2D: 0B        .byte $0B, $A0, $7F, $08   ; Shooter with bazooka
- D 0 - I - 0x012C41 04:8C31: 0C        .byte $0C, $38, $7F, $08   ; 
- D 0 - I - 0x012C45 04:8C35: 0C        .byte $0C, $48, $3F, $02   ; Gray Land hat
- D 0 - I - 0x012C49 04:8C39: 0C        .byte $0C, $B8, $3F, $02   ; 
- D 0 - I - 0x012C4D 04:8C3D: 0D        .byte $0D, $28, $3F, $02   ; 
- D 0 - I - 0x012C51 04:8C41: 0D        .byte $0D, $44, $A7, $0C   ; The lift
- D 0 - I - 0x012C55 04:8C45: 0D        .byte $0D, $80, $3F, $02   ; Gray Land hat
- D 0 - I - 0x012C59 04:8C49: 0D        .byte $0D, $A4, $A7, $0C   ; The lift
- D 0 - I - 0x012C5D 04:8C4D: 0D        .byte $0D, $D8, $3F, $02   ; Gray Land hat
- D 0 - I - 0x012C61 04:8C51: 0E        .byte $0E, $28, $3F, $02   ; 
- D 0 - I - 0x012C65 04:8C55: 0E        .byte $0E, $80, $3F, $02   ; 
- D 0 - I - 0x012C69 04:8C59: 0E        .byte $0E, $D8, $3F, $02   ; 
- D 0 - I - 0x012C6D 04:8C5D: 0F        .byte $0F, $30, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012C71 04:8C61: 0F        .byte $0F, $70, $BF, $01   ; 
- D 0 - I - 0x012C75 04:8C65: 0F        .byte $0F, $B0, $BF, $01   ; 

tbl_enemies_level3_1:
- D 0 - I - 0x012C79 04:8C69: 01        .byte $01, $18, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012C7D 04:8C6D: 01        .byte $01, $70, $7F, $01   ; 
- D 0 - I - 0x012C81 04:8C71: 01        .byte $01, $D8, $AF, $01   ; 
- D 0 - I - 0x012C85 04:8C75: 02        .byte $02, $78, $BF, $81   ; Cat with the gun
- D 0 - I - 0x012C89 04:8C79: 02        .byte $02, $E8, $7F, $81   ; 
- D 0 - I - 0x012C8D 04:8C7D: 03        .byte $03, $28, $BF, $81   ; 
- D 0 - I - 0x012C91 04:8C81: 03        .byte $03, $70, $8F, $81   ; 
- D 0 - I - 0x012C95 04:8C85: 03        .byte $03, $80, $3F, $0A   ; The barrel
- D 0 - I - 0x012C99 04:8C89: 03        .byte $03, $D8, $9F, $81   ; Cat with the gun
- D 0 - I - 0x012C9D 04:8C8D: 03        .byte $03, $E8, $3F, $0A   ; The barrel
- D 0 - I - 0x012CA1 04:8C91: 04        .byte $04, $28, $BF, $09   ; The fat sailor
- D 0 - I - 0x012CA5 04:8C95: 04        .byte $04, $B0, $6F, $09   ; 
- D 0 - I - 0x012CA9 04:8C99: 05        .byte $05, $20, $BF, $09   ; 
- D 0 - I - 0x012CAD 04:8C9D: 05        .byte $05, $70, $7F, $09   ; 
- D 0 - I - 0x012CB1 04:8CA1: 05        .byte $05, $D8, $AF, $09   ; 
- D 0 - I - 0x012CB5 04:8CA5: 06        .byte $06, $20, $7F, $81   ; Cat with the gun
- D 0 - I - 0x012CB9 04:8CA9: 06        .byte $06, $80, $3F, $0A   ; The barrel
- D 0 - I - 0x012CBD 04:8CAD: 06        .byte $06, $B0, $AF, $81   ; Cat with the gun
- D 0 - I - 0x012CC1 04:8CB1: 06        .byte $06, $D8, $3F, $0A   ; The barrel
- D 0 - I - 0x012CC5 04:8CB5: 06        .byte $06, $E8, $6F, $81   ; Cat with the gun
- D 0 - I - 0x012CC9 04:8CB9: 07        .byte $07, $28, $BF, $81   ; 
- D 0 - I - 0x012CCD 04:8CBD: 07        .byte $07, $40, $7F, $81   ; 
- D 0 - I - 0x012CD1 04:8CC1: 07        .byte $07, $A8, $BF, $81   ; 
- D 0 - I - 0x012CD5 04:8CC5: 07        .byte $07, $C8, $3F, $0A   ; The barrel
- D 0 - I - 0x012CD9 04:8CC9: FF        .byte $FF

tbl_enemies_level3_2:
- D 0 - I - 0x012CDA 04:8CCA: 00        .byte $00, $28, $DF, $04   ; Land Diver
- D 0 - I - 0x012CDE 04:8CCE: 00        .byte $00, $80, $DF, $04   ; 
- D 0 - I - 0x012CE2 04:8CD2: 00        .byte $00, $D8, $DF, $04   ; 
- D 0 - I - 0x012CE6 04:8CD6: 01        .byte $01, $28, $DF, $04   ; 
- D 0 - I - 0x012CEA 04:8CDA: 01        .byte $01, $40, $3F, $0A   ; The barrel
- D 0 - I - 0x012CEE 04:8CDE: 01        .byte $01, $80, $DF, $04   ; Land Diver
- D 0 - I - 0x012CF2 04:8CE2: 01        .byte $01, $90, $3F, $0A   ; The barrel
- D 0 - I - 0x012CF6 04:8CE6: 01        .byte $01, $D8, $DF, $04   ; Land Diver
- D 0 - I - 0x012CFA 04:8CEA: 02        .byte $02, $18, $7F, $01   ; Cat with the gun
- D 0 - I - 0x012CFE 04:8CEE: 02        .byte $02, $38, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D02 04:8CF2: 02        .byte $02, $70, $7F, $01   ; Cat with the gun
- D 0 - I - 0x012D06 04:8CF6: 02        .byte $02, $80, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D0A 04:8CFA: 02        .byte $02, $C0, $3F, $03   ; 
- D 0 - I - 0x012D0E 04:8CFE: 02        .byte $02, $D0, $AF, $01   ; Cat with the gun
- D 0 - I - 0x012D12 04:8D02: 03        .byte $03, $20, $BF, $01   ; 
- D 0 - I - 0x012D16 04:8D06: 03        .byte $03, $38, $67, $01   ; 
- D 0 - I - 0x012D1A 04:8D0A: 03        .byte $03, $48, $3F, $0A   ; The barrel
- D 0 - I - 0x012D1E 04:8D0E: 03        .byte $03, $B0, $AF, $01   ; Cat with the gun
- D 0 - I - 0x012D22 04:8D12: 04        .byte $04, $28, $DF, $04   ; Land Diver
- D 0 - I - 0x012D26 04:8D16: 04        .byte $04, $80, $DF, $04   ; 
- D 0 - I - 0x012D2A 04:8D1A: 04        .byte $04, $D8, $DF, $04   ; 
- D 0 - I - 0x012D2E 04:8D1E: 05        .byte $05, $20, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012D32 04:8D22: 05        .byte $05, $70, $7F, $01   ; 
- D 0 - I - 0x012D36 04:8D26: 05        .byte $05, $D0, $AF, $01   ; 
- D 0 - I - 0x012D3A 04:8D2A: 06        .byte $06, $28, $DF, $04   ; Land Diver
- D 0 - I - 0x012D3E 04:8D2E: 06        .byte $06, $80, $DF, $04   ; 
- D 0 - I - 0x012D42 04:8D32: 06        .byte $06, $D8, $DF, $04   ; 
- D 0 - I - 0x012D46 04:8D36: FF        .byte $FF

tbl_enemies_level3_3:
- D 0 - I - 0x012D47 04:8D37: 01        .byte $01, $18, $7F, $01   ; Cat with the gun
- D 0 - I - 0x012D4B 04:8D3B: 01        .byte $01, $A0, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D4F 04:8D3F: 01        .byte $01, $B0, $AF, $01   ; Cat with the gun
- D 0 - I - 0x012D53 04:8D43: 01        .byte $01, $E0, $6F, $01   ; 
- D 0 - I - 0x012D57 04:8D47: 02        .byte $02, $28, $BF, $01   ; 
- D 0 - I - 0x012D5B 04:8D4B: 02        .byte $02, $48, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D5F 04:8D4F: 02        .byte $02, $70, $7F, $01   ; Cat with the gun
- D 0 - I - 0x012D63 04:8D53: 02        .byte $02, $B8, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D67 04:8D57: 02        .byte $02, $D8, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012D6B 04:8D5B: 03        .byte $03, $20, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D6F 04:8D5F: 03        .byte $03, $50, $AF, $09   ; The fat sailor
- D 0 - I - 0x012D73 04:8D63: 03        .byte $03, $80, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D77 04:8D67: 03        .byte $03, $C0, $BF, $09   ; The fat sailor
- D 0 - I - 0x012D7B 04:8D6B: 03        .byte $03, $D8, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D7F 04:8D6F: 04        .byte $04, $20, $BF, $09   ; The fat sailor
- D 0 - I - 0x012D83 04:8D73: 04        .byte $04, $38, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D87 04:8D77: 04        .byte $04, $70, $7F, $09   ; The fat sailor
- D 0 - I - 0x012D8B 04:8D7B: 04        .byte $04, $A8, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D8F 04:8D7F: 04        .byte $04, $D8, $AF, $09   ; The fat sailor
- D 0 - I - 0x012D93 04:8D83: 05        .byte $05, $20, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012D97 04:8D87: 05        .byte $05, $68, $3F, $03   ; Black Land hat
- D 0 - I - 0x012D9B 04:8D8B: 05        .byte $05, $98, $67, $01   ; Cat with the gun
- D 0 - I - 0x012D9F 04:8D8F: 05        .byte $05, $E0, $BF, $01   ; 
- D 0 - I - 0x012DA3 04:8D93: 06        .byte $06, $28, $BF, $01   ; 
- D 0 - I - 0x012DA7 04:8D97: 06        .byte $06, $58, $3F, $0A   ; The barrel
- D 0 - I - 0x012DAB 04:8D9B: 06        .byte $06, $B0, $6F, $01   ; Cat with the gun
- D 0 - I - 0x012DAF 04:8D9F: 06        .byte $06, $C8, $3F, $0A   ; The barrel
- D 0 - I - 0x012DB3 04:8DA3: 06        .byte $06, $E0, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012DB7 04:8DA7: 07        .byte $07, $28, $BF, $01   ; 
- D 0 - I - 0x012DBB 04:8DAB: 07        .byte $07, $38, $7F, $01   ; 
- D 0 - I - 0x012DBF 04:8DAF: 07        .byte $07, $48, $3F, $0A   ; The barrel
- D 0 - I - 0x012DC3 04:8DB3: 07        .byte $07, $98, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012DC7 04:8DB7: 07        .byte $07, $B8, $3F, $0A   ; The barrel
- D 0 - I - 0x012DCB 04:8DBB: FF        .byte $FF

tbl_enemies_level3_4:
- D 0 - I - 0x012DCC 04:8DBC: 00        .byte $00, $18, $7F, $81   ; Cat with the gun
- D 0 - I - 0x012DD0 04:8DC0: 00        .byte $00, $24, $AF, $0D   ; Sensor
- D 0 - I - 0x012DD4 04:8DC4: 00        .byte $00, $58, $A7, $81   ; Cat with the gun
- D 0 - I - 0x012DD8 04:8DC8: 00        .byte $00, $9C, $6F, $0D   ; Sensor
- D 0 - I - 0x012DDC 04:8DCC: 00        .byte $00, $D8, $A7, $81   ; Cat with the gun
- D 0 - I - 0x012DE0 04:8DD0: 01        .byte $01, $28, $BF, $81   ; 
- D 0 - I - 0x012DE4 04:8DD4: 01        .byte $01, $4C, $87, $0D   ; Sensor
- D 0 - I - 0x012DE8 04:8DD8: 01        .byte $01, $98, $67, $81   ; Cat with the gun
- D 0 - I - 0x012DEC 04:8DDC: 01        .byte $01, $A8, $BF, $81   ; 
- D 0 - I - 0x012DF0 04:8DE0: 01        .byte $01, $DC, $AF, $0D   ; Sensor
- D 0 - I - 0x012DF4 04:8DE4: 02        .byte $02, $20, $67, $81   ; Cat with the gun
- D 0 - I - 0x012DF8 04:8DE8: 02        .byte $02, $30, $BF, $81   ; 
- D 0 - I - 0x012DFC 04:8DEC: 02        .byte $02, $64, $A7, $0D   ; Sensor
- D 0 - I - 0x012E00 04:8DF0: 02        .byte $02, $C4, $AF, $0D   ; 
- D 0 - I - 0x012E04 04:8DF4: 02        .byte $02, $C8, $BF, $81   ; Cat with the gun
- D 0 - I - 0x012E08 04:8DF8: 03        .byte $03, $28, $DF, $04   ; Land Diver
- D 0 - I - 0x012E0C 04:8DFC: 03        .byte $03, $80, $DF, $04   ; 
- D 0 - I - 0x012E10 04:8E00: 03        .byte $03, $64, $B0, $0D   ; Sensor
- D 0 - I - 0x012E14 04:8E04: 03        .byte $03, $D8, $DF, $04   ; Land Diver
- D 0 - I - 0x012E18 04:8E08: 03        .byte $03, $DC, $6F, $0D   ; Sensor
- D 0 - I - 0x012E1C 04:8E0C: 04        .byte $04, $58, $97, $09   ; The fat sailor
- D 0 - I - 0x012E20 04:8E10: 04        .byte $04, $5C, $97, $0D   ; Sensor
- D 0 - I - 0x012E24 04:8E14: 04        .byte $04, $98, $67, $09   ; The fat sailor
- D 0 - I - 0x012E28 04:8E18: 04        .byte $04, $B8, $BF, $09   ; 
- D 0 - I - 0x012E2C 04:8E1C: 04        .byte $04, $DC, $6F, $0D   ; Sensor
- D 0 - I - 0x012E30 04:8E20: 05        .byte $05, $18, $BF, $01   ; Cat with the gun
- D 0 - I - 0x012E34 04:8E24: 05        .byte $05, $64, $AF, $0D   ; Sensor
- D 0 - I - 0x012E38 04:8E28: 05        .byte $05, $80, $7F, $01   ; Cat with the gun
- D 0 - I - 0x012E3C 04:8E2C: 05        .byte $05, $C4, $9F, $0D   ; Sensor
- D 0 - I - 0x012E40 04:8E30: 05        .byte $05, $D8, $AF, $01   ; Cat with the gun
- D 0 - I - 0x012E44 04:8E34: 06        .byte $06, $28, $DF, $04   ; Land Diver
- D 0 - I - 0x012E48 04:8E38: 06        .byte $06, $80, $DF, $04   ; 
- D 0 - I - 0x012E4C 04:8E3C: 06        .byte $06, $D8, $DF, $04   ; 
- D 0 - I - 0x012E50 04:8E40: FF        .byte $FF

tbl_enemies_level_racing:
- D 0 - I - 0x012E51 04:8E41: 01        .byte $01, $A8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012E55 04:8E45: 03        .byte $03, $18, $3F, $21   ; 
- D 0 - I - 0x012E59 04:8E49: 03        .byte $03, $D8, $3F, $21   ; 
- D 0 - I - 0x012E5D 04:8E4D: 04        .byte $04, $90, $3F, $21   ; 
- D 0 - I - 0x012E61 04:8E51: 04        .byte $04, $F0, $3F, $21   ; 
- D 0 - I - 0x012E65 04:8E55: 05        .byte $05, $C0, $4F, $23   ; The bird with a bomb
- D 0 - I - 0x012E69 04:8E59: 06        .byte $06, $60, $5F, $23   ; 
- D 0 - I - 0x012E6D 04:8E5D: 07        .byte $07, $80, $6F, $23   ; 
- D 0 - I - 0x012E71 04:8E61: 08        .byte $08, $98, $67, $23   ; 
- D 0 - I - 0x012E75 04:8E65: 08        .byte $08, $E0, $7F, $23   ; 
- D 0 - I - 0x012E79 04:8E69: 09        .byte $09, $98, $4F, $23   ; 
- D 0 - I - 0x012E7D 04:8E6D: 0A        .byte $0A, $D8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012E81 04:8E71: 0B        .byte $0B, $E8, $3F, $21   ; 
- D 0 - I - 0x012E85 04:8E75: 0D        .byte $0D, $28, $3F, $21   ; 
- D 0 - I - 0x012E89 04:8E79: 0F        .byte $0F, $B8, $5F, $23   ; The bird with a bomb
- D 0 - I - 0x012E8D 04:8E7D: 10        .byte $10, $38, $7F, $23   ; 
- D 0 - I - 0x012E91 04:8E81: 11        .byte $11, $98, $4F, $23   ; 
- D 0 - I - 0x012E95 04:8E85: 13        .byte $13, $88, $4F, $23   ; 
- D 0 - I - 0x012E99 04:8E89: 14        .byte $14, $C8, $57, $23   ; 
- D 0 - I - 0x012E9D 04:8E8D: 16        .byte $16, $D0, $8F, $23   ; 
- D 0 - I - 0x012EA1 04:8E91: 16        .byte $16, $F0, $5F, $23   ; 
- D 0 - I - 0x012EA5 04:8E95: 18        .byte $18, $D8, $7F, $22   ; The bird
- D 0 - I - 0x012EA9 04:8E99: 19        .byte $19, $E8, $BF, $22   ; 
- D 0 - I - 0x012EAD 04:8E9D: 1C        .byte $1C, $28, $BF, $22   ; 
- D 0 - I - 0x012EB1 04:8EA1: 1C        .byte $1C, $A0, $7F, $22   ; 
- D 0 - I - 0x012EB5 04:8EA5: 1D        .byte $1D, $E8, $7F, $22   ; 
- D 0 - I - 0x012EB9 04:8EA9: 1E        .byte $1E, $D8, $4F, $23   ; The bird with a bomb
- D 0 - I - 0x012EBD 04:8EAD: 1F        .byte $1F, $C8, $6F, $23   ; 
- D 0 - I - 0x012EC1 04:8EB1: 20        .byte $20, $88, $4F, $23   ; 
- D 0 - I - 0x012EC5 04:8EB5: 20        .byte $20, $D8, $77, $23   ; 
- D 0 - I - 0x012EC9 04:8EB9: 21        .byte $21, $C8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012ECD 04:8EBD: 22        .byte $22, $88, $3F, $21   ; 
- D 0 - I - 0x012ED1 04:8EC1: 22        .byte $22, $F8, $38, $21   ; 
- D 0 - I - 0x012ED5 04:8EC5: FF        .byte $FF

tbl_enemies_level4_map1_b2_d2:
- D 0 - I - 0x012ED6 04:8EC6: 00        .byte $00, $28, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012EDA 04:8ECA: 00        .byte $00, $C0, $BF, $36   ;
- D 0 - I - 0x012EDE 04:8ECE: 01        .byte $01, $18, $BF, $36   ;
- D 0 - I - 0x012EE2 04:8ED2: 01        .byte $01, $B8, $BF, $36   ;
- D 0 - I - 0x012EE6 04:8ED6: FF        .byte $FF

tbl_enemies_level4_map1_c0_c2:
- D 0 - I - 0x012EE7 04:8ED7: 00        .byte $00, $38, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012EEB 04:8EDB: 00        .byte $00, $C0, $BF, $36   ;
- D 0 - I - 0x012EEF 04:8EDF: 01        .byte $01, $50, $BF, $36   ;
- D 0 - I - 0x012EF3 04:8EE3: 01        .byte $01, $C0, $BF, $36   ;
- D 0 - I - 0x012EF7 04:8EE7: FF        .byte $FF

tbl_enemies_level4_map2_b1_b3:
- D 0 - I - 0x012EF8 04:8EE8: 01        .byte $01, $80, $BF, $33   ; Blade trap
- D 0 - I - 0x012EFC 04:8EEC: FF        .byte $FF

tbl_enemies_level4_map2_a3_d3:
- D 0 - I - 0x012EFD 04:8EED: 00        .byte $00, $98, $BF, $24   ; Skeleton
- D 0 - I - 0x012F01 04:8EF1: 00        .byte $00, $A8, $5F, $21   ; Cobblestone
- D 0 - I - 0x012F05 04:8EF5: 00        .byte $00, $F8, $BF, $24   ; Skeleton
- D 0 - I - 0x012F09 04:8EF9: 02        .byte $02, $08, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F0D 04:8EFD: FF        .byte $FF

tbl_enemies_level4_map2_d0_d3:
- D 0 - I - 0x012F0E 04:8EFE: 00        .byte $00, $D8, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F12 04:8F02: 01        .byte $01, $78, $BF, $24   ; Skeleton
- D 0 - I - 0x012F16 04:8F06: 01        .byte $01, $88, $4F, $21   ; Cobblestone
- D 0 - I - 0x012F1A 04:8F0A: 02        .byte $02, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x012F1E 04:8F0E: 02        .byte $02, $78, $67, $21   ; Cobblestone
- D 0 - I - 0x012F22 04:8F12: 02        .byte $02, $F8, $7F, $21   ; 
- D 0 - I - 0x012F26 04:8F16: 03        .byte $03, $08, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F2A 04:8F1A: 03        .byte $03, $48, $BF, $36   ;
- D 0 - I - 0x012F2E 04:8F1E: FF        .byte $FF

tbl_enemies_level4_map2_a0_d0:
- D 0 - I - 0x012F2F 04:8F1F: 00        .byte $00, $E8, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F33 04:8F23: 01        .byte $01, $78, $BF, $24   ; Skeleton
- D 0 - I - 0x012F37 04:8F27: 02        .byte $02, $08, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F3B 04:8F2B: 02        .byte $02, $C8, $7F, $36   ;
- D 0 - I - 0x012F3F 04:8F2F: 03        .byte $03, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x012F43 04:8F33: FF        .byte $FF

tbl_enemies_level4_map2_a0_a3:
- D 0 - I - 0x012F44 04:8F34: 00        .byte $00, $38, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F48 04:8F38: 00        .byte $00, $68, $BF, $36   ;
- D 0 - I - 0x012F4C 04:8F3C: 01        .byte $01, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x012F50 04:8F40: 02        .byte $02, $48, $BF, $24   ; 
- D 0 - I - 0x012F54 04:8F44: 03        .byte $03, $08, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F58 04:8F48: FF        .byte $FF

tbl_enemies_level4_map2_a0_a6:
- D 0 - I - 0x012F59 04:8F49: 00        .byte $00, $38, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F5D 04:8F4D: 00        .byte $00, $B8, $BF, $36   ;
- D 0 - I - 0x012F61 04:8F51: 03        .byte $03, $48, $8F, $24   ; Skeleton
- D 0 - I - 0x012F65 04:8F55: 03        .byte $03, $D8, $BF, $24   ; 
- D 0 - I - 0x012F69 04:8F59: 04        .byte $04, $38, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F6D 04:8F5D: 04        .byte $04, $D8, $BF, $36   ;
- D 0 - I - 0x012F71 04:8F61: FF        .byte $FF

tbl_enemies_level4_map2_a6_f6:
- D 0 - I - 0x012F72 04:8F62: 00        .byte $00, $D8, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012F76 04:8F66: 01        .byte $01, $28, $8F, $36   ;
- D 0 - I - 0x012F7A 04:8F6A: 01        .byte $01, $A8, $BF, $36   ;
- D 0 - I - 0x012F7E 04:8F6E: 02        .byte $02, $38, $BF, $24   ; Skeleton
- D 0 - I - 0x012F82 04:8F72: 02        .byte $02, $78, $4F, $21   ; Cobblestone
- D 0 - I - 0x012F86 04:8F76: 02        .byte $02, $B8, $8F, $24   ; Skeleton
- D 0 - I - 0x012F8A 04:8F7A: 03        .byte $03, $18, $BF, $24   ; 
- D 0 - I - 0x012F8E 04:8F7E: 03        .byte $03, $88, $3F, $21   ; Cobblestone
- D 0 - I - 0x012F92 04:8F82: 03        .byte $03, $A8, $BF, $24   ; Skeleton
- D 0 - I - 0x012F96 04:8F86: 04        .byte $04, $28, $BF, $24   ; 
- D 0 - I - 0x012F9A 04:8F8A: 04        .byte $04, $B8, $8F, $24   ; 
- D 0 - I - 0x012F9E 04:8F8E: 04        .byte $04, $F8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FA2 04:8F92: 05        .byte $05, $38, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012FA6 04:8F96: FF        .byte $FF

tbl_enemies_level4_map2_f0_f6:
- D 0 - I - 0x012FA7 04:8F97: 00        .byte $00, $D8, $BF, $36   ; Egyptian with a sword
- D 0 - I - 0x012FAB 04:8F9B: 01        .byte $01, $28, $8F, $36   ;
- D 0 - I - 0x012FAF 04:8F9F: 01        .byte $01, $94, $BF, $30   ; Wall
- D 0 - I - 0x012FB3 04:8FA3: 02        .byte $02, $28, $BF, $24   ; Skeleton
- D 0 - I - 0x012FB7 04:8FA7: 02        .byte $02, $F8, $BF, $24   ; 
- D 0 - I - 0x012FBB 04:8FAB: 03        .byte $03, $90, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FBF 04:8FAF: 03        .byte $03, $A8, $7F, $36   ; Egyptian with a sword
- D 0 - I - 0x012FC3 04:8FB3: 03        .byte $03, $B8, $BF, $36   ;
- D 0 - I - 0x012FC7 04:8FB7: 04        .byte $04, $58, $BF, $26   ; Mummy
- D 0 - I - 0x012FCB 04:8FBB: 04        .byte $04, $88, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FCF 04:8FBF: 04        .byte $04, $00, $8F, $26   ; Mummy
- D 0 - I - 0x012FD3 04:8FC3: 05        .byte $05, $58, $BF, $26   ; 
- D 0 - I - 0x012FD7 04:8FC7: FF        .byte $FF

tbl_enemies_level4_map2_a0_f0:
- D 0 - I - 0x012FD8 04:8FC8: 00        .byte $00, $A8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FDC 04:8FCC: 00        .byte $00, $D8, $7F, $26   ; Mummy
- D 0 - I - 0x012FE0 04:8FD0: 01        .byte $01, $18, $BF, $26   ; 
- D 0 - I - 0x012FE4 04:8FD4: 01        .byte $01, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FE8 04:8FD8: 01        .byte $01, $88, $BF, $26   ; Mummy
- D 0 - I - 0x012FEC 04:8FDC: 01        .byte $01, $E8, $BF, $26   ; 
- D 0 - I - 0x012FF0 04:8FE0: 02        .byte $02, $50, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FF4 04:8FE4: 02        .byte $02, $C8, $BF, $24   ; Skeleton
- D 0 - I - 0x012FF8 04:8FE8: 02        .byte $02, $D8, $3F, $21   ; Cobblestone
- D 0 - I - 0x012FFC 04:8FEC: 03        .byte $03, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x013000 04:8FF0: 03        .byte $03, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x013004 04:8FF4: 03        .byte $03, $B8, $7F, $24   ; Skeleton
- D 0 - I - 0x013008 04:8FF8: 04        .byte $04, $28, $BF, $24   ; 
- D 0 - I - 0x01300C 04:8FFC: 04        .byte $04, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x013010 04:9000: 04        .byte $04, $F8, $BF, $24   ; Skeleton
- D 0 - I - 0x013014 04:9004: FF        .byte $FF

tbl_enemies_level4_map2_b1_b5:
- D 0 - I - 0x013015 04:9005: 01        .byte $01, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x013019 04:9009: 01        .byte $01, $28, $3F, $21   ; Cobblestone
- D 0 - I - 0x01301D 04:900D: 02        .byte $02, $18, $BF, $26   ; Mummy
- D 0 - I - 0x013021 04:9011: 02        .byte $02, $88, $6F, $26   ; 
- D 0 - I - 0x013025 04:9015: 02        .byte $02, $98, $3F, $21   ; Cobblestone
- D 0 - I - 0x013029 04:9019: 02        .byte $02, $E8, $BF, $26   ; Mummy
- D 0 - I - 0x01302D 04:901D: 03        .byte $03, $38, $3F, $21   ; Cobblestone
- D 0 - I - 0x013031 04:9021: 03        .byte $03, $48, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013035 04:9025: FF        .byte $FF

tbl_enemies_level4_map2_b5_e5:
- D 0 - I - 0x013036 04:9026: 00        .byte $00, $38, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01303A 04:902A: 00        .byte $00, $98, $3F, $21   ; Cobblestone
- D 0 - I - 0x01303E 04:902E: 00        .byte $00, $A8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013042 04:9032: 00        .byte $00, $E8, $BF, $35   ;
- D 0 - I - 0x013046 04:9036: 01        .byte $01, $28, $BF, $24   ; Skeleton
- D 0 - I - 0x01304A 04:903A: 01        .byte $01, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x01304E 04:903E: 01        .byte $01, $B8, $BF, $24   ; Skeleton
- D 0 - I - 0x013052 04:9042: 01        .byte $01, $F8, $3F, $21   ; Cobblestone
- D 0 - I - 0x013056 04:9046: 02        .byte $02, $38, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x01305A 04:904A: 02        .byte $02, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x01305E 04:904E: 02        .byte $02, $A8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013062 04:9052: FF        .byte $FF

tbl_enemies_level4_map2_e0_e6:
- D 0 - I - 0x013063 04:9053: 00        .byte $00, $40, $BF, $33   ; Blade trap
- D 0 - I - 0x013067 04:9057: 00        .byte $00, $68, $7F, $38   ; Ninja upside down
- D 0 - I - 0x01306B 04:905B: 01        .byte $01, $38, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01306F 04:905F: 01        .byte $01, $D8, $7F, $35   ;
- D 0 - I - 0x013073 04:9063: 02        .byte $02, $38, $3F, $21   ; Cobblestone
- D 0 - I - 0x013077 04:9067: 02        .byte $02, $58, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01307B 04:906B: 03        .byte $03, $18, $BF, $35   ;
- D 0 - I - 0x01307F 04:906F: 03        .byte $03, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x013083 04:9073: 03        .byte $03, $D8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013087 04:9077: FF        .byte $FF

tbl_enemies_level4_map2_b1_f1:
- D 0 - I - 0x013088 04:9078: 01        .byte $01, $38, $BF, $24   ; Skeleton
- D 0 - I - 0x01308C 04:907C: 01        .byte $01, $78, $BF, $24   ; 
- D 0 - I - 0x013090 04:9080: 01        .byte $01, $D8, $7F, $24   ; 
- D 0 - I - 0x013094 04:9084: 02        .byte $02, $18, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013098 04:9088: 02        .byte $02, $C0, $7F, $32   ; Breaking platform
- D 0 - I - 0x01309C 04:908C: 02        .byte $02, $D8, $9F, $32   ;
- D 0 - I - 0x0130A0 04:9090: 03        .byte $03, $18, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0130A4 04:9094: 03        .byte $03, $78, $3F, $21   ; Cobblestone
- D 0 - I - 0x0130A8 04:9098: 03        .byte $03, $98, $78, $35   ; Egyptian with bow
- D 0 - I - 0x0130AC 04:909C: FF        .byte $FF

tbl_enemies_level4_map2_b4_d4:
- D 0 - I - 0x0130AD 04:909D: 00        .byte $00, $80, $BF, $33   ; Blade trap
- D 0 - I - 0x0130B1 04:90A1: 00        .byte $00, $98, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0130B5 04:90A5: 01        .byte $01, $38, $BF, $26   ; Mummy
- D 0 - I - 0x0130B9 04:90A9: 01        .byte $01, $68, $3F, $21   ; Cobblestone
- D 0 - I - 0x0130BD 04:90AD: 01        .byte $01, $A8, $BF, $26   ; Mummy
- D 0 - I - 0x0130C1 04:90B1: 01        .byte $01, $B8, $3F, $21   ; Cobblestone
- D 0 - I - 0x0130C5 04:90B5: FF        .byte $FF

tbl_enemies_level4_map3_d3_e3:
- D 0 - I - 0x0130C6 04:90B6: 00        .byte $00, $18, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0130CA 04:90BA: 01        .byte $01, $48, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0130CE 04:90BE: FF        .byte $FF

tbl_enemies_level4_map3_d3_d5:
- D 0 - I - 0x0130CF 04:90BF: 00        .byte $00, $48, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0130D3 04:90C3: 01        .byte $01, $88, $AF, $34   ; Potted snakes
- D 0 - I - 0x0130D7 04:90C7: FF        .byte $FF

tbl_enemies_level4_map3_d4_f4:
- D 0 - I - 0x0130D8 04:90C8: 00        .byte $00, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0130DC 04:90CC: 01        .byte $01, $48, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0130E0 04:90D0: 01        .byte $01, $60, $BF, $33   ; Blade trap
- D 0 - I - 0x0130E4 04:90D4: 01        .byte $01, $C8, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0130E8 04:90D8: FF        .byte $FF

tbl_enemies_level4_map3_c2_g2:
- D 0 - I - 0x0130E9 04:90D9: 00        .byte $00, $58, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0130ED 04:90DD: 00        .byte $00, $88, $7F, $38   ;
- D 0 - I - 0x0130F1 04:90E1: 01        .byte $01, $68, $BF, $24   ; Skeleton
- D 0 - I - 0x0130F5 04:90E5: 01        .byte $01, $C8, $BF, $24   ; 
- D 0 - I - 0x0130F9 04:90E9: 02        .byte $02, $08, $3F, $27   ; Gargoyle
- D 0 - I - 0x0130FD 04:90ED: 02        .byte $02, $38, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013101 04:90F1: 02        .byte $02, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x013105 04:90F5: 02        .byte $02, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013109 04:90F9: 03        .byte $03, $B8, $BF, $35   ;
- D 0 - I - 0x01310D 04:90FD: FF        .byte $FF

tbl_enemies_level4_map3_c1_c6:
- D 0 - I - 0x01310E 04:90FE: 00        .byte $00, $90, $B7, $32   ; Breaking platform
- D 0 - I - 0x013112 04:9102: 00        .byte $00, $A0, $B7, $32   ;
- D 0 - I - 0x013116 04:9106: 01        .byte $01, $78, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01311A 04:910A: 01        .byte $01, $A8, $3F, $27   ; Gargoyle
- D 0 - I - 0x01311E 04:910E: 01        .byte $01, $C8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013122 04:9112: 02        .byte $02, $28, $BF, $26   ; Mummy
- D 0 - I - 0x013126 04:9116: 02        .byte $02, $48, $3F, $27   ; Gargoyle
- D 0 - I - 0x01312A 04:911A: 02        .byte $02, $A8, $3F, $27   ; 
- D 0 - I - 0x01312E 04:911E: 02        .byte $02, $F8, $BF, $26   ; Mummy
- D 0 - I - 0x013132 04:9122: 03        .byte $03, $48, $BF, $26   ; 
- D 0 - I - 0x013136 04:9126: 03        .byte $03, $78, $3F, $27   ; Gargoyle
- D 0 - I - 0x01313A 04:912A: 03        .byte $03, $B8, $BF, $26   ; Mummy
- D 0 - I - 0x01313E 04:912E: 04        .byte $04, $28, $7F, $38   ; Ninja upside down
- D 0 - I - 0x013142 04:9132: 04        .byte $04, $88, $7F, $38   ;
- D 0 - I - 0x013146 04:9136: 04        .byte $04, $B4, $BF, $31   ; Wall
- D 0 - I - 0x01314A 04:913A: FF        .byte $FF

tbl_enemies_level4_map3_c5_f5:
- D 0 - I - 0x01314B 04:913B: 00        .byte $00, $98, $BF, $26   ; Mummy
- D 0 - I - 0x01314F 04:913F: 00        .byte $00, $A8, $3F, $27   ; Gargoyle
- D 0 - I - 0x013153 04:9143: 00        .byte $00, $E8, $7F, $26   ; Mummy
- D 0 - I - 0x013157 04:9147: 01        .byte $01, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01315B 04:914B: 01        .byte $01, $B8, $BF, $35   ;
- D 0 - I - 0x01315F 04:914F: 02        .byte $02, $B8, $3F, $27   ; Gargoyle
- D 0 - I - 0x013163 04:9153: 03        .byte $03, $18, $5F, $27   ; 
- D 0 - I - 0x013167 04:9157: 03        .byte $03, $48, $BF, $26   ; Mummy
- D 0 - I - 0x01316B 04:915B: FF        .byte $FF

tbl_enemies_level4_map3_f2_f5:
- D 0 - I - 0x01316C 04:915C: 00        .byte $00, $98, $3F, $27   ; Gargoyle
- D 0 - I - 0x013170 04:9160: 00        .byte $00, $A8, $BF, $26   ; Mummy
- D 0 - I - 0x013174 04:9164: 00        .byte $00, $F8, $BF, $26   ; 
- D 0 - I - 0x013178 04:9168: 01        .byte $01, $48, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x01317C 04:916C: 01        .byte $01, $D8, $BF, $35   ;
- D 0 - I - 0x013180 04:9170: 02        .byte $02, $38, $BF, $35   ;
- D 0 - I - 0x013184 04:9174: 02        .byte $02, $48, $3F, $27   ; Gargoyle
- D 0 - I - 0x013188 04:9178: 02        .byte $02, $C8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01318C 04:917C: 03        .byte $03, $28, $3F, $27   ; Gargoyle
- D 0 - I - 0x013190 04:9180: 03        .byte $03, $38, $BF, $26   ; Mummy
- D 0 - I - 0x013194 04:9184: FF        .byte $FF

tbl_enemies_level4_map3_b1_g1:
- D 0 - I - 0x013195 04:9185: 01        .byte $01, $08, $BF, $26   ; Mummy
- D 0 - I - 0x013199 04:9189: 01        .byte $01, $28, $3F, $21   ; Cobblestone
- D 0 - I - 0x01319D 04:918D: 01        .byte $01, $D8, $BF, $26   ; Mummy
- D 0 - I - 0x0131A1 04:9191: 02        .byte $02, $48, $BF, $26   ; 
- D 0 - I - 0x0131A5 04:9195: 02        .byte $02, $88, $3F, $21   ; Cobblestone
- D 0 - I - 0x0131A9 04:9199: 03        .byte $03, $48, $BF, $26   ; Mummy
- D 0 - I - 0x0131AD 04:919D: 03        .byte $03, $50, $3F, $21   ; Cobblestone
- D 0 - I - 0x0131B1 04:91A1: 03        .byte $03, $C8, $BF, $26   ; Mummy
- D 0 - I - 0x0131B5 04:91A5: 04        .byte $04, $88, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0131B9 04:91A9: 04        .byte $04, $E8, $BF, $35   ;
- D 0 - I - 0x0131BD 04:91AD: 05        .byte $05, $28, $7F, $35   ;
- D 0 - I - 0x0131C1 04:91B1: FF        .byte $FF

tbl_enemies_level4_map3_b1_b7:
- D 0 - I - 0x0131C2 04:91B2: 00        .byte $00, $F8, $BF, $26   ; Mummy
- D 0 - I - 0x0131C6 04:91B6: 01        .byte $01, $48, $BF, $26   ; 
- D 0 - I - 0x0131CA 04:91BA: 01        .byte $01, $58, $3F, $21   ; Cobblestone
- D 0 - I - 0x0131CE 04:91BE: 01        .byte $01, $A8, $3F, $21   ; 
- D 0 - I - 0x0131D2 04:91C2: 02        .byte $02, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0131D6 04:91C6: 02        .byte $02, $88, $8F, $35   ; 
- D 0 - I - 0x0131DA 04:91CA: 03        .byte $03, $B8, $7F, $24   ; Skeleton
- D 0 - I - 0x0131DE 04:91CE: 03        .byte $03, $E8, $3F, $27   ; Gargoyle
- D 0 - I - 0x0131E2 04:91D2: 04        .byte $04, $38, $8F, $24   ; Skeleton
- D 0 - I - 0x0131E6 04:91D6: 04        .byte $04, $A8, $BF, $24   ; 
- D 0 - I - 0x0131EA 04:91DA: 04        .byte $04, $FB, $BF, $24   ; 
- D 0 - I - 0x0131EE 04:91DE: 05        .byte $05, $40, $BF, $33   ; Blade trap
- D 0 - I - 0x0131F2 04:91E2: 05        .byte $05, $C0, $BF, $33   ;
- D 0 - I - 0x0131F6 04:91E6: FF        .byte $FF

tbl_enemies_level4_map3_b6_g6:
- D 0 - I - 0x0131F7 04:91E7: 00        .byte $00, $A8, $BF, $24   ; Skeleton
- D 0 - I - 0x0131FB 04:91EB: 01        .byte $01, $58, $8F, $24   ; 
- D 0 - I - 0x0131FF 04:91EF: 01        .byte $01, $78, $3F, $27   ; Gargoyle
- D 0 - I - 0x013203 04:91F3: 01        .byte $01, $E8, $BF, $24   ; Skeleton
- D 0 - I - 0x013207 04:91F7: 02        .byte $02, $48, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01320B 04:91FB: 02        .byte $02, $78, $3F, $27   ; Gargoyle
- D 0 - I - 0x01320F 04:91FF: 02        .byte $02, $C8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013213 04:9203: 03        .byte $03, $28, $BF, $24   ; Skeleton
- D 0 - I - 0x013217 04:9207: 03        .byte $03, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x01321B 04:920B: 03        .byte $03, $C8, $BF, $24   ; Skeleton
- D 0 - I - 0x01321F 04:920F: 04        .byte $04, $78, $3F, $27   ; Gargoyle
- D 0 - I - 0x013223 04:9213: 04        .byte $04, $F8, $4F, $27   ; 
- D 0 - I - 0x013227 04:9217: FF        .byte $FF

tbl_enemies_level4_map3_g1_g6:
- D 0 - I - 0x013228 04:9218: 00        .byte $00, $C8, $BF, $24   ; Skeleton
- D 0 - I - 0x01322C 04:921C: 01        .byte $01, $28, $B8, $35   ; Egyptian with bow
- D 0 - I - 0x013230 04:9220: 01        .byte $01, $98, $3F, $21   ; Cobblestone
- D 0 - I - 0x013234 04:9224: 01        .byte $01, $C8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013238 04:9228: 02        .byte $02, $D8, $3F, $27   ; Gargoyle
- D 0 - I - 0x01323C 04:922C: 03        .byte $03, $48, $4F, $27   ; 
- D 0 - I - 0x013240 04:9230: 03        .byte $03, $C8, $4F, $27   ; 
- D 0 - I - 0x013244 04:9234: 04        .byte $04, $28, $BF, $26   ; Mummy
- D 0 - I - 0x013248 04:9238: 04        .byte $04, $88, $BF, $26   ; 
- D 0 - I - 0x01324C 04:923C: 05        .byte $05, $08, $3F, $21   ; Cobblestone
- D 0 - I - 0x013250 04:9240: FF        .byte $FF

tbl_enemies_level4_map3_a0_h0:
- D 0 - I - 0x013251 04:9241: 00        .byte $00, $58, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x013255 04:9245: 00        .byte $00, $D8, $BF, $35   ;
- D 0 - I - 0x013259 04:9249: 01        .byte $01, $08, $BF, $35   ;
- D 0 - I - 0x01325D 04:924D: 01        .byte $01, $38, $3F, $27   ; Gargoyle
- D 0 - I - 0x013261 04:9251: 01        .byte $01, $A8, $5F, $27   ; 
- D 0 - I - 0x013265 04:9255: 02        .byte $02, $28, $3F, $27   ; 
- D 0 - I - 0x013269 04:9259: 02        .byte $02, $B8, $3F, $27   ; 
- D 0 - I - 0x01326D 04:925D: 03        .byte $03, $48, $BF, $24   ; Skeleton
- D 0 - I - 0x013271 04:9261: 03        .byte $03, $58, $4F, $27   ; Gargoyle
- D 0 - I - 0x013275 04:9265: 03        .byte $03, $A8, $3F, $27   ; 
- D 0 - I - 0x013279 04:9269: 04        .byte $04, $48, $BF, $24   ; Skeleton
- D 0 - I - 0x01327D 04:926D: 04        .byte $04, $68, $3F, $27   ; Gargoyle
- D 0 - I - 0x013281 04:9271: 04        .byte $04, $A8, $BF, $24   ; Skeleton
- D 0 - I - 0x013285 04:9275: 05        .byte $05, $D8, $5F, $27   ; Gargoyle
- D 0 - I - 0x013289 04:9279: 05        .byte $05, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01328D 04:927D: 06        .byte $06, $38, $8F, $35   ;
- D 0 - I - 0x013291 04:9281: 06        .byte $06, $78, $BF, $35   ;
- D 0 - I - 0x013295 04:9285: 06        .byte $06, $C8, $BF, $35   ;
- D 0 - I - 0x013299 04:9289: 07        .byte $07, $80, $BF, $33   ; Blade trap
- D 0 - I - 0x01329D 04:928D: FF        .byte $FF

tbl_enemies_level4_map3_a0_a7:
- D 0 - I - 0x01329E 04:928E: 00        .byte $00, $58, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x0132A2 04:9292: 00        .byte $00, $A8, $BF, $35   ; 
- D 0 - I - 0x0132A6 04:9296: 00        .byte $00, $E8, $7F, $35   ; 
- D 0 - I - 0x0132AA 04:929A: 01        .byte $01, $58, $BF, $26   ; Mummy
- D 0 - I - 0x0132AE 04:929E: 01        .byte $01, $94, $BF, $30   ; Wall
- D 0 - I - 0x0132B2 04:92A2: 01        .byte $01, $D8, $7F, $26   ; Mummy
- D 0 - I - 0x0132B6 04:92A6: 02        .byte $02, $38, $BF, $26   ; 
- D 0 - I - 0x0132BA 04:92AA: 02        .byte $02, $58, $7F, $26   ; 
- D 0 - I - 0x0132BE 04:92AE: 02        .byte $02, $C8, $BF, $26   ; 
- D 0 - I - 0x0132C2 04:92B2: 03        .byte $03, $18, $BF, $26   ; 
- D 0 - I - 0x0132C6 04:92B6: 03        .byte $03, $28, $3F, $27   ; Gargoyle
- D 0 - I - 0x0132CA 04:92BA: 03        .byte $03, $B8, $7F, $26   ; Mummy
- D 0 - I - 0x0132CE 04:92BE: 03        .byte $03, $D8, $4F, $27   ; Gargoyle
- D 0 - I - 0x0132D2 04:92C2: 04        .byte $04, $48, $4F, $27   ; 
- D 0 - I - 0x0132D6 04:92C6: 04        .byte $04, $B8, $3F, $27   ; 
- D 0 - I - 0x0132DA 04:92CA: 05        .byte $05, $68, $4F, $27   ; 
- D 0 - I - 0x0132DE 04:92CE: 05        .byte $05, $C8, $4F, $27   ; 
- D 0 - I - 0x0132E2 04:92D2: 05        .byte $05, $F8, $BF, $26   ; Mummy
- D 0 - I - 0x0132E6 04:92D6: 06        .byte $06, $98, $7F, $26   ; 
- D 0 - I - 0x0132EA 04:92DA: 06        .byte $06, $E8, $BF, $26   ; 
- D 0 - I - 0x0132EE 04:92DE: FF        .byte $FF

tbl_enemies_level4_map3_a7_h7:
- D 0 - I - 0x0132EF 04:92DF: 00        .byte $00, $A8, $BF, $26   ; Mummy
- D 0 - I - 0x0132F3 04:92E3: 00        .byte $00, $F8, $BF, $26   ; 
- D 0 - I - 0x0132F7 04:92E7: 01        .byte $01, $18, $3F, $27   ; Gargoyle
- D 0 - I - 0x0132FB 04:92EB: 01        .byte $01, $48, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x0132FF 04:92EF: 01        .byte $01, $88, $BF, $35   ;
- D 0 - I - 0x013303 04:92F3: 01        .byte $01, $D8, $BF, $35   ;
- D 0 - I - 0x013307 04:92F7: 02        .byte $02, $3C, $BF, $34   ; Potted snakes
- D 0 - I - 0x01330B 04:92FB: 02        .byte $02, $54, $7F, $34   ;
- D 0 - I - 0x01330F 04:92FF: 02        .byte $02, $BC, $BF, $34   ;
- D 0 - I - 0x013313 04:9303: 03        .byte $03, $64, $BF, $34   ;
- D 0 - I - 0x013317 04:9307: 03        .byte $03, $BC, $BF, $34   ;
- D 0 - I - 0x01331B 04:930B: 04        .byte $04, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01331F 04:930F: 04        .byte $04, $1C, $8F, $34   ; Potted snakes
- D 0 - I - 0x013323 04:9313: 04        .byte $04, $98, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013327 04:9317: 04        .byte $04, $AC, $7F, $34   ; Potted snakes
- D 0 - I - 0x01332B 04:931B: 05        .byte $05, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01332F 04:931F: 05        .byte $05, $C0, $77, $32   ; Breaking platform
- D 0 - I - 0x013333 04:9323: 05        .byte $05, $D8, $97, $32   ;
- D 0 - I - 0x013337 04:9327: 06        .byte $06, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x01333B 04:932B: 06        .byte $06, $D8, $4F, $27   ; 
- D 0 - I - 0x01333F 04:932F: 07        .byte $07, $48, $BF, $26   ; Mummy
- D 0 - I - 0x013343 04:9333: FF        .byte $FF

tbl_enemies_level4_map3_h0_h7:
- D 0 - I - 0x013344 04:9334: 00        .byte $00, $38, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013348 04:9338: 00        .byte $00, $68, $3F, $27   ; Gargoyle
- D 0 - I - 0x01334C 04:933C: 00        .byte $00, $98, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013350 04:9340: 00        .byte $00, $B8, $3F, $27   ; Gargoyle
- D 0 - I - 0x013354 04:9344: 00        .byte $00, $D8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013358 04:9348: 01        .byte $01, $08, $3F, $27   ; Gargoyle
- D 0 - I - 0x01335C 04:934C: 01        .byte $01, $38, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x013360 04:9350: 01        .byte $01, $88, $3F, $27   ; Gargoyle
- D 0 - I - 0x013364 04:9354: 01        .byte $01, $C8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013368 04:9358: 02        .byte $02, $38, $BF, $24   ; Skeleton
- D 0 - I - 0x01336C 04:935C: 02        .byte $02, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x013370 04:9360: 02        .byte $02, $D8, $4F, $24   ; Skeleton
- D 0 - I - 0x013374 04:9364: 03        .byte $03, $08, $BF, $24   ; 
- D 0 - I - 0x013378 04:9368: 03        .byte $03, $A8, $BF, $24   ; 
- D 0 - I - 0x01337C 04:936C: 04        .byte $04, $08, $BF, $24   ; 
- D 0 - I - 0x013380 04:9370: 05        .byte $05, $18, $BF, $24   ; 
- D 0 - I - 0x013384 04:9374: 05        .byte $05, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x013388 04:9378: 05        .byte $05, $88, $5F, $24   ; Skeleton
- D 0 - I - 0x01338C 04:937C: 06        .byte $06, $28, $4F, $27   ; Gargoyle
- D 0 - I - 0x013390 04:9380: 06        .byte $06, $38, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x013394 04:9384: 06        .byte $06, $98, $7F, $35   ;
- D 0 - I - 0x013398 04:9388: FF        .byte $FF

tbl_enemies_level4_map4_a0_j0:
- D 0 - I - 0x013399 04:9389: 00        .byte $00, $68, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01339D 04:938D: 00        .byte $00, $88, $3F, $27   ; Gargoyle
- D 0 - I - 0x0133A1 04:9391: 00        .byte $00, $D8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x0133A5 04:9395: 01        .byte $01, $28, $7F, $27   ; Gargoyle
- D 0 - I - 0x0133A9 04:9399: 01        .byte $01, $C8, $5F, $27   ; 
- D 0 - I - 0x0133AD 04:939D: 01        .byte $01, $C8, $5F, $27   ; 
- D 0 - I - 0x0133B1 04:93A1: 02        .byte $02, $38, $4F, $27   ; 
- D 0 - I - 0x0133B5 04:93A5: 02        .byte $02, $A8, $4F, $27   ; 
- D 0 - I - 0x0133B9 04:93A9: 03        .byte $03, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x0133BD 04:93AD: 03        .byte $03, $94, $BF, $30   ; Wall
- D 0 - I - 0x0133C1 04:93B1: 03        .byte $03, $E8, $BF, $24   ; Skeleton
- D 0 - I - 0x0133C5 04:93B5: 04        .byte $04, $48, $BF, $24   ; 
- D 0 - I - 0x0133C9 04:93B9: 04        .byte $04, $88, $3F, $27   ; Gargoyle
- D 0 - I - 0x0133CD 04:93BD: 04        .byte $04, $C8, $BF, $24   ; Skeleton
- D 0 - I - 0x0133D1 04:93C1: 05        .byte $05, $38, $8F, $24   ; 
- D 0 - I - 0x0133D5 04:93C5: 05        .byte $05, $D8, $7F, $24   ; 
- D 0 - I - 0x0133D9 04:93C9: 05        .byte $05, $E8, $3F, $27   ; Gargoyle
- D 0 - I - 0x0133DD 04:93CD: 06        .byte $06, $48, $3F, $27   ; 
- D 0 - I - 0x0133E1 04:93D1: 06        .byte $06, $58, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0133E5 04:93D5: 06        .byte $06, $C8, $BF, $35   ;
- D 0 - I - 0x0133E9 04:93D9: 07        .byte $07, $28, $BF, $35   ;
- D 0 - I - 0x0133ED 04:93DD: 07        .byte $07, $9C, $BF, $34   ; Potted snakes
- D 0 - I - 0x0133F1 04:93E1: 07        .byte $07, $B8, $74, $35   ; Egyptian with bow
- D 0 - I - 0x0133F5 04:93E5: 07        .byte $07, $DC, $7F, $34   ; Potted snakes
- D 0 - I - 0x0133F9 04:93E9: 07        .byte $07, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0133FD 04:93ED: 08        .byte $08, $3C, $8F, $34   ; Potted snakes
- D 0 - I - 0x013401 04:93F1: 08        .byte $08, $74, $BF, $34   ;
- D 0 - I - 0x013405 04:93F5: 08        .byte $08, $94, $7F, $34   ;
- D 0 - I - 0x013409 04:93F9: 09        .byte $09, $30, $BF, $33   ; Blade trap
- D 0 - I - 0x01340D 04:93FD: FF        .byte $FF

tbl_enemies_level4_map4_a0_a9:
- D 0 - I - 0x01340E 04:93FE: 00        .byte $00, $D8, $6F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013412 04:9402: 01        .byte $01, $08, $BF, $37   ;
- D 0 - I - 0x013416 04:9406: 01        .byte $01, $18, $8F, $37   ;
- D 0 - I - 0x01341A 04:940A: 01        .byte $01, $38, $3F, $27   ; Gargoyle
- D 0 - I - 0x01341E 04:940E: 01        .byte $01, $B8, $7F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013422 04:9412: 02        .byte $02, $28, $7F, $27   ; Gargoyle
- D 0 - I - 0x013426 04:9416: 02        .byte $02, $B8, $6F, $27   ; 
- D 0 - I - 0x01342A 04:941A: 03        .byte $03, $38, $5F, $27   ; 
- D 0 - I - 0x01342E 04:941E: 03        .byte $03, $98, $4F, $27   ; 
- D 0 - I - 0x013432 04:9422: 03        .byte $03, $D8, $5F, $27   ; 
- D 0 - I - 0x013436 04:9426: 04        .byte $04, $28, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01343A 04:942A: 04        .byte $04, $48, $4F, $27   ; Gargoyle
- D 0 - I - 0x01343E 04:942E: 04        .byte $04, $B8, $78, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013442 04:9432: 04        .byte $04, $E8, $BF, $37   ;
- D 0 - I - 0x013446 04:9436: 05        .byte $05, $18, $6F, $27   ; Gargoyle
- D 0 - I - 0x01344A 04:943A: 06        .byte $06, $48, $6F, $27   ; 
- D 0 - I - 0x01344E 04:943E: 07        .byte $07, $18, $3F, $21   ; Cobblestone
- D 0 - I - 0x013452 04:9442: 07        .byte $07, $78, $6F, $35   ; Egyptian with bow
- D 0 - I - 0x013456 04:9446: 07        .byte $07, $A8, $3F, $21   ; Cobblestone
- D 0 - I - 0x01345A 04:944A: 07        .byte $07, $D8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01345E 04:944E: 08        .byte $08, $38, $BF, $35   ;
- D 0 - I - 0x013462 04:9452: 08        .byte $08, $B8, $BF, $35   ;
- D 0 - I - 0x013466 04:9456: 08        .byte $08, $C8, $3F, $21   ; Cobblestone
- D 0 - I - 0x01346A 04:945A: 00        .byte $00, $A4, $BF, $34   ; Potted snakes (broken ???)
- D 0 - I - 0x01346E 04:945E: FF        .byte $FF

tbl_enemies_level4_map4_a9_j9:
- D 0 - I - 0x01346F 04:945F: 00        .byte $00, $A4, $BF, $34   ; Potted snakes
- D 0 - I - 0x013473 04:9463: 00        .byte $00, $D8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013477 04:9467: 01        .byte $01, $18, $8F, $35   ;
- D 0 - I - 0x01347B 04:946B: 01        .byte $01, $2C, $BF, $34   ; Potted snakes
- D 0 - I - 0x01347F 04:946F: 01        .byte $01, $AC, $7F, $34   ;
- D 0 - I - 0x013483 04:9473: 02        .byte $02, $08, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013487 04:9477: 02        .byte $02, $18, $4F, $27   ; Gargoyle
- D 0 - I - 0x01348B 04:947B: 02        .byte $02, $40, $8F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01348F 04:947F: 02        .byte $02, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x013493 04:9483: 02        .byte $02, $D8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013497 04:9487: 03        .byte $03, $5C, $7F, $34   ; Potted snakes
- D 0 - I - 0x01349B 04:948B: 03        .byte $03, $C8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01349F 04:948F: 03        .byte $03, $F4, $BF, $34   ; Potted snakes
- D 0 - I - 0x0134A3 04:9493: 04        .byte $04, $34, $8F, $34   ;
- D 0 - I - 0x0134A7 04:9497: 04        .byte $04, $A8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0134AB 04:949B: 04        .byte $04, $BC, $7F, $34   ; Potted snakes
- D 0 - I - 0x0134AF 04:949F: 04        .byte $04, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0134B3 04:94A3: 05        .byte $05, $58, $3F, $27   ; Gargoyle
- D 0 - I - 0x0134B7 04:94A7: 05        .byte $05, $D8, $3F, $27   ; 
- D 0 - I - 0x0134BB 04:94AB: 06        .byte $06, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0134BF 04:94AF: 06        .byte $06, $48, $3F, $27   ; Gargoyle
- D 0 - I - 0x0134C3 04:94B3: 06        .byte $06, $B8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x0134C7 04:94B7: 07        .byte $07, $28, $5F, $27   ; Gargoyle
- D 0 - I - 0x0134CB 04:94BB: 07        .byte $07, $C8, $3F, $27   ; 
- D 0 - I - 0x0134CF 04:94BF: 08        .byte $08, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0134D3 04:94C3: 08        .byte $08, $C8, $3F, $27   ; Gargoyle
- D 0 - I - 0x0134D7 04:94C7: 08        .byte $08, $E8, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x0134DB 04:94CB: FF        .byte $FF

tbl_enemies_level4_map4_j0_j9:
- D 0 - I - 0x0134DC 04:94CC: 00        .byte $00, $D8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x0134E0 04:94D0: 01        .byte $01, $40, $8F, $35   ;
- D 0 - I - 0x0134E4 04:94D4: 01        .byte $01, $78, $BF, $35   ;
- D 0 - I - 0x0134E8 04:94D8: 01        .byte $01, $88, $3F, $27   ; Gargoyle
- D 0 - I - 0x0134EC 04:94DC: 01        .byte $01, $D8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0134F0 04:94E0: 02        .byte $02, $38, $6F, $27   ; Gargoyle
- D 0 - I - 0x0134F4 04:94E4: 02        .byte $02, $C8, $5F, $27   ; 
- D 0 - I - 0x0134F8 04:94E8: 03        .byte $03, $28, $6F, $27   ; 
- D 0 - I - 0x0134FC 04:94EC: 03        .byte $03, $88, $6F, $27   ; 
- D 0 - I - 0x013500 04:94F0: 04        .byte $04, $48, $5F, $27   ; 
- D 0 - I - 0x013504 04:94F4: 04        .byte $04, $C8, $3F, $27   ; 
- D 0 - I - 0x013508 04:94F8: 05        .byte $05, $38, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01350C 04:94FC: 05        .byte $05, $B4, $BF, $34   ; Potted snakes
- D 0 - I - 0x013510 04:9500: 05        .byte $05, $FB, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013514 04:9504: 06        .byte $06, $28, $BF, $37   ;
- D 0 - I - 0x013518 04:9508: 06        .byte $06, $A4, $BF, $34   ; Potted snakes
- D 0 - I - 0x01351C 04:950C: 06        .byte $06, $B8, $7F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013520 04:9510: 07        .byte $07, $08, $BF, $37   ;
- D 0 - I - 0x013524 04:9514: 07        .byte $07, $38, $4F, $27   ; Gargoyle
- D 0 - I - 0x013528 04:9518: 07        .byte $07, $C8, $4F, $27   ; 
- D 0 - I - 0x01352C 04:951C: 08        .byte $08, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013530 04:9520: 08        .byte $08, $C0, $87, $32   ; Breaking platform
- D 0 - I - 0x013534 04:9524: 08        .byte $08, $D0, $97, $32   ;
- D 0 - I - 0x013538 04:9528: 08        .byte $08, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01353C 04:952C: FF        .byte $FF

tbl_enemies_level4_map4_b1_i1:
- D 0 - I - 0x01353D 04:952D: 00        .byte $00, $B8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013541 04:9531: 01        .byte $01, $08, $BF, $37   ;
- D 0 - I - 0x013545 04:9535: 01        .byte $01, $78, $4F, $27   ; Gargoyle
- D 0 - I - 0x013549 04:9539: 01        .byte $01, $C8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01354D 04:953D: 02        .byte $02, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013551 04:9541: 02        .byte $02, $78, $3F, $27   ; Gargoyle
- D 0 - I - 0x013555 04:9545: 02        .byte $02, $C8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013559 04:9549: 03        .byte $03, $28, $3F, $27   ; Gargoyle
- D 0 - I - 0x01355D 04:954D: 03        .byte $03, $D8, $4F, $27   ; 
- D 0 - I - 0x013561 04:9551: 04        .byte $04, $88, $4F, $27   ; 
- D 0 - I - 0x013565 04:9555: 04        .byte $04, $E8, $5F, $27   ; 
- D 0 - I - 0x013569 04:9559: 05        .byte $05, $58, $4F, $27   ; 
- D 0 - I - 0x01356D 04:955D: 05        .byte $05, $E8, $5F, $27   ; 
- D 0 - I - 0x013571 04:9561: 06        .byte $06, $18, $BF, $26   ; Mummy
- D 0 - I - 0x013575 04:9565: 06        .byte $06, $88, $6F, $26   ; 
- D 0 - I - 0x013579 04:9569: 06        .byte $06, $E8, $BF, $26   ; 
- D 0 - I - 0x01357D 04:956D: 07        .byte $07, $28, $7F, $26   ; 
- D 0 - I - 0x013581 04:9571: FF        .byte $FF

tbl_enemies_level4_map4_b1_b8:
- D 0 - I - 0x013582 04:9572: 00        .byte $00, $D8, $BF, $24   ; Skeleton
- D 0 - I - 0x013586 04:9576: 01        .byte $01, $98, $3F, $27   ; Gargoyle
- D 0 - I - 0x01358A 04:957A: 02        .byte $02, $18, $3F, $27   ; 
- D 0 - I - 0x01358E 04:957E: 02        .byte $02, $A8, $4F, $27   ; 
- D 0 - I - 0x013592 04:9582: 03        .byte $03, $28, $BF, $24   ; Skeleton
- D 0 - I - 0x013596 04:9586: 03        .byte $03, $B8, $7F, $24   ; 
- D 0 - I - 0x01359A 04:958A: 03        .byte $03, $E8, $3F, $27   ; Gargoyle
- D 0 - I - 0x01359E 04:958E: 04        .byte $04, $08, $BF, $24   ; Skeleton
- D 0 - I - 0x0135A2 04:9592: 04        .byte $04, $B8, $87, $32   ; Breaking platform
- D 0 - I - 0x0135A6 04:9596: 04        .byte $04, $C8, $97, $32   ;
- D 0 - I - 0x0135AA 04:959A: 05        .byte $05, $F8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0135AE 04:959E: 06        .byte $06, $88, $BF, $35   ;
- D 0 - I - 0x0135B2 04:95A2: 06        .byte $06, $E8, $BF, $35   ;
- D 0 - I - 0x0135B6 04:95A6: 07        .byte $07, $28, $3F, $27   ; Gargoyle
- D 0 - I - 0x0135BA 04:95AA: 07        .byte $07, $38, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x0135BE 04:95AE: FF        .byte $FF

tbl_enemies_level4_map4_b8_e8:
- D 0 - I - 0x0135BF 04:95AF: 00        .byte $00, $D8, $7F, $26   ; Mummy
- D 0 - I - 0x0135C3 04:95B3: 01        .byte $01, $08, $BF, $26   ; 
- D 0 - I - 0x0135C7 04:95B7: 01        .byte $01, $28, $3F, $27   ; Gargoyle 
- D 0 - I - 0x0135CB 04:95BB: 01        .byte $01, $78, $6F, $26   ; Mummy
- D 0 - I - 0x0135CF 04:95BF: 01        .byte $01, $E8, $BF, $26   ; 
- D 0 - I - 0x0135D3 04:95C3: 02        .byte $02, $08, $3F, $27   ; Gargoyle
- D 0 - I - 0x0135D7 04:95C7: 02        .byte $02, $48, $BF, $26   ; Mummy
- D 0 - I - 0x0135DB 04:95CB: FF        .byte $FF

tbl_enemies_level4_map4_g8_j8:
- D 0 - I - 0x0135DC 04:95CC: 00        .byte $00, $B8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0135E0 04:95D0: 00        .byte $00, $E8, $4F, $27   ; Gargoyle
- D 0 - I - 0x0135E4 04:95D4: 01        .byte $01, $B8, $7F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0135E8 04:95D8: 01        .byte $01, $E8, $4F, $27   ; Gargoyle
- D 0 - I - 0x0135EC 04:95DC: 02        .byte $02, $38, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0135F0 04:95E0: 02        .byte $02, $B8, $BF, $37   ;
- D 0 - I - 0x0135F4 04:95E4: 03        .byte $03, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0135F8 04:95E8: 03        .byte $03, $30, $8F, $35   ;
- D 0 - I - 0x0135FC 04:95EC: 03        .byte $03, $98, $7F, $33   ; Blade trap
- D 0 - I - 0x013600 04:95F0: 03        .byte $03, $B8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013604 04:95F4: 03        .byte $03, $F0, $BF, $33   ; Blade trap
- D 0 - I - 0x013608 04:95F8: FF        .byte $FF

tbl_enemies_level4_map4_i6_i8:
- D 0 - I - 0x013609 04:95F9: 00        .byte $00, $98, $B7, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01360D 04:95FD: 01        .byte $01, $08, $BF, $37   ;
- D 0 - I - 0x013611 04:9601: 01        .byte $01, $28, $4F, $27   ; Gargoyle
- D 0 - I - 0x013615 04:9605: 01        .byte $01, $88, $6F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013619 04:9609: 02        .byte $02, $08, $BF, $37   ;
- D 0 - I - 0x01361D 04:960D: 02        .byte $02, $58, $4F, $27   ; Gargoyle
- D 0 - I - 0x013621 04:9611: FF        .byte $FF

tbl_enemies_level4_map4_i1_i3:
- D 0 - I - 0x013622 04:9612: 00        .byte $00, $98, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013626 04:9616: 00        .byte $00, $D0, $3F, $27   ; Gargoyle
- D 0 - I - 0x01362A 04:961A: 01        .byte $01, $28, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01362E 04:961E: 01        .byte $01, $88, $3F, $27   ; Gargoyle
- D 0 - I - 0x013632 04:9622: 01        .byte $01, $B8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013636 04:9626: 02        .byte $02, $08, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01363A 04:962A: 02        .byte $02, $88, $BF, $37   ;
- D 0 - I - 0x01363E 04:962E: 02        .byte $02, $D8, $4F, $27   ; Gargoyle
- D 0 - I - 0x013642 04:9632: 02        .byte $02, $F8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013646 04:9636: 03        .byte $03, $68, $BF, $37   ;
- D 0 - I - 0x01364A 04:963A: FF        .byte $FF

tbl_enemies_level4_map4_g2_i2:
- D 0 - I - 0x01364B 04:963B: 01        .byte $01, $70, $BF, $33   ; Blade trap
- D 0 - I - 0x01364F 04:963F: 01        .byte $01, $D8, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x013653 04:9643: 02        .byte $02, $28, $6F, $35   ;
- D 0 - I - 0x013657 04:9647: 02        .byte $02, $58, $BF, $35   ;
- D 0 - I - 0x01365B 04:964B: FF        .byte $FF

tbl_enemies_level4_map4_c2_e2:
- D 0 - I - 0x01365C 04:964C: 00        .byte $00, $A8, $7F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013660 04:9650: 00        .byte $00, $F8, $BF, $37   ;
- D 0 - I - 0x013664 04:9654: 01        .byte $01, $18, $4F, $27   ; Gargoyle
- D 0 - I - 0x013668 04:9658: 01        .byte $01, $78, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01366C 04:965C: 01        .byte $01, $E8, $4F, $27   ; Gargoyle
- D 0 - I - 0x013670 04:9660: 01        .byte $01, $F8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013674 04:9664: 02        .byte $02, $68, $BF, $37   ;
- D 0 - I - 0x013678 04:9668: FF        .byte $FF

tbl_enemies_level4_map4_c1_c9:
- D 0 - I - 0x013679 04:9669: 00        .byte $00, $70, $BF, $33   ; Blade trap
- D 0 - I - 0x01367D 04:966D: 01        .byte $01, $10, $BF, $33   ;
- D 0 - I - 0x013681 04:9671: 01        .byte $01, $48, $8F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013685 04:9675: 01        .byte $01, $98, $BF, $37   ;
- D 0 - I - 0x013689 04:9679: 02        .byte $02, $58, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x01368D 04:967D: 03        .byte $03, $48, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013691 04:9681: 03        .byte $03, $68, $3F, $21   ; Cobblestone
- D 0 - I - 0x013695 04:9685: 03        .byte $03, $E8, $3F, $21   ; 
- D 0 - I - 0x013699 04:9689: 04        .byte $04, $18, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01369D 04:968D: 04        .byte $04, $38, $5F, $27   ; Gargoyle
- D 0 - I - 0x0136A1 04:9691: 04        .byte $04, $D8, $5F, $27   ; 
- D 0 - I - 0x0136A5 04:9695: 05        .byte $05, $30, $8F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0136A9 04:9699: 05        .byte $05, $A8, $BF, $37   ; 
- D 0 - I - 0x0136AD 04:969D: 05        .byte $05, $F0, $BF, $33   ; Blade trap
- D 0 - I - 0x0136B1 04:96A1: 06        .byte $06, $28, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0136B5 04:96A5: 06        .byte $06, $48, $BF, $33   ; Blade trap
- D 0 - I - 0x0136B9 04:96A9: 06        .byte $06, $68, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0136BD 04:96AD: 06        .byte $06, $F0, $BF, $33   ; Blade trap
- D 0 - I - 0x0136C1 04:96B1: FF        .byte $FF

tbl_enemies_level4_map4_a7_i7:
- D 0 - I - 0x0136C2 04:96B2: 00        .byte $00, $70, $BF, $33   ; Blade trap
- D 0 - I - 0x0136C6 04:96B6: 01        .byte $01, $38, $BF, $33   ;
- D 0 - I - 0x0136CA 04:96BA: 01        .byte $01, $A8, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0136CE 04:96BE: 01        .byte $01, $C8, $BF, $33   ; Blade trap
- D 0 - I - 0x0136D2 04:96C2: 01        .byte $01, $D8, $7F, $38   ; Ninja upside down
- D 0 - I - 0x0136D6 04:96C6: 02        .byte $02, $78, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0136DA 04:96CA: 02        .byte $02, $A8, $3F, $27   ; Gargoyle
- D 0 - I - 0x0136DE 04:96CE: 02        .byte $02, $B8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0136E2 04:96D2: 03        .byte $03, $38, $6F, $27   ; Gargoyle
- D 0 - I - 0x0136E6 04:96D6: 03        .byte $03, $98, $7F, $27   ; 
- D 0 - I - 0x0136EA 04:96DA: 04        .byte $04, $18, $7F, $27   ; 
- D 0 - I - 0x0136EE 04:96DE: 05        .byte $05, $18, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0136F2 04:96E2: 05        .byte $05, $30, $8F, $33   ; Blade trap
- D 0 - I - 0x0136F6 04:96E6: 05        .byte $05, $B8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0136FA 04:96EA: 05        .byte $05, $C0, $7F, $33   ; Blade trap
- D 0 - I - 0x0136FE 04:96EE: 06        .byte $06, $18, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013702 04:96F2: 06        .byte $06, $98, $7F, $33   ; Blade trap
- D 0 - I - 0x013706 04:96F6: 06        .byte $06, $B8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01370A 04:96FA: 06        .byte $06, $F0, $BF, $33   ; Blade trap
- D 0 - I - 0x01370E 04:96FE: FF        .byte $FF

tbl_enemies_level4_map4_h2_h7:
- D 0 - I - 0x01370F 04:96FF: 00        .byte $00, $98, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013713 04:9703: 01        .byte $01, $08, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013717 04:9707: 01        .byte $01, $28, $5F, $27   ; Gargoyle
- D 0 - I - 0x01371B 04:970B: 01        .byte $01, $88, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01371F 04:970F: 01        .byte $01, $A8, $3F, $27   ; Gargoyle
- D 0 - I - 0x013723 04:9713: 02        .byte $02, $08, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013727 04:9717: 02        .byte $02, $48, $5F, $27   ; Gargoyle
- D 0 - I - 0x01372B 04:971B: 03        .byte $03, $18, $BF, $26   ; Mummy
- D 0 - I - 0x01372F 04:971F: 03        .byte $03, $44, $7F, $39   ; Sensor
- D 0 - I - 0x013733 04:9723: 03        .byte $03, $9C, $A7, $39   ;
- D 0 - I - 0x013737 04:9727: 04        .byte $04, $08, $BF, $26   ; Mummy
- D 0 - I - 0x01373B 04:972B: 04        .byte $04, $14, $A7, $39   ; Sensor
- D 0 - I - 0x01373F 04:972F: 04        .byte $04, $58, $BF, $26   ; Mummy
- D 0 - I - 0x013743 04:9733: 04        .byte $04, $74, $5F, $39   ; Sensor
- D 0 - I - 0x013747 04:9737: 05        .byte $05, $04, $A7, $39   ;
- D 0 - I - 0x01374B 04:973B: 05        .byte $05, $48, $BF, $26   ; Mummy
- D 0 - I - 0x01374F 04:973F: FF        .byte $FF

tbl_enemies_level4_map4_d3_g3:
- D 0 - I - 0x013750 04:9740: 00        .byte $00, $C8, $BF, $27   ; Gargoyle
- D 0 - I - 0x013754 04:9744: 00        .byte $00, $FC, $AF, $39   ; Sensor
- D 0 - I - 0x013758 04:9748: 01        .byte $01, $44, $7F, $39   ;
- D 0 - I - 0x01375C 04:974C: 01        .byte $01, $8C, $8F, $39   ;
- D 0 - I - 0x013760 04:9750: 02        .byte $02, $2C, $A7, $39   ;
- D 0 - I - 0x013764 04:9754: 02        .byte $02, $58, $6F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013768 04:9758: 02        .byte $02, $A4, $A7, $39   ; Sensor
- D 0 - I - 0x01376C 04:975C: 02        .byte $02, $C0, $8F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013770 04:9760: 03        .byte $03, $0C, $A7, $39   ; Sensor
- D 0 - I - 0x013774 04:9764: 03        .byte $03, $28, $7F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013778 04:9768: FF        .byte $FF

tbl_enemies_level4_map4_d2_d7:
- D 0 - I - 0x013779 04:9769: 00        .byte $00, $70, $BF, $33   ; Blade trap
- D 0 - I - 0x01377D 04:976D: 01        .byte $01, $10, $BF, $33   ;
- D 0 - I - 0x013781 04:9771: 01        .byte $01, $50, $8F, $35   ; Egyptian with bow
- D 0 - I - 0x013785 04:9775: 01        .byte $01, $A8, $BF, $35   ;
- D 0 - I - 0x013789 04:9779: 01        .byte $01, $D8, $FF, $33   ; Blade trap
- D 0 - I - 0x01378D 04:977D: 02        .byte $02, $08, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x013791 04:9781: 02        .byte $02, $3C, $AF, $39   ; Sensor
- D 0 - I - 0x013795 04:9785: 02        .byte $02, $44, $6F, $39   ;
- D 0 - I - 0x013799 04:9789: 02        .byte $02, $AC, $7F, $39   ;
- D 0 - I - 0x01379D 04:978D: 02        .byte $02, $C8, $BF, $35   ; Egyptian with bow
- D 0 - I - 0x0137A1 04:9791: 03        .byte $03, $18, $BF, $35   ;
- D 0 - I - 0x0137A5 04:9795: 03        .byte $03, $3C, $7F, $39   ; Sensor
- D 0 - I - 0x0137A9 04:9799: 03        .byte $03, $84, $AF, $39   ; Sensor
- D 0 - I - 0x0137AD 04:979D: 03        .byte $03, $98, $7F, $35   ; Egyptian with bow
- D 0 - I - 0x0137B1 04:97A1: 03        .byte $03, $D4, $A7, $39   ; Sensor
- D 0 - I - 0x0137B5 04:97A5: FF        .byte $FF

tbl_enemies_level4_map4_d6_h6:
- D 0 - I - 0x0137B6 04:97A6: 00        .byte $00, $58, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0137BA 04:97AA: 00        .byte $00, $68, $5F, $27   ; Gargoyle
- D 0 - I - 0x0137BE 04:97AE: 00        .byte $00, $B8, $5F, $27   ; 
- D 0 - I - 0x0137C2 04:97B2: 00        .byte $00, $C8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0137C6 04:97B6: 01        .byte $01, $18, $5F, $27   ; Gargoyle
- D 0 - I - 0x0137CA 04:97BA: 01        .byte $01, $C8, $4F, $27   ; 
- D 0 - I - 0x0137CE 04:97BE: 02        .byte $02, $18, $BF, $24   ; Skeleton
- D 0 - I - 0x0137D2 04:97C2: 02        .byte $02, $A8, $BF, $24   ; 
- D 0 - I - 0x0137D6 04:97C6: 03        .byte $03, $34, $BF, $31   ; Wall
- D 0 - I - 0x0137DA 04:97CA: 03        .byte $03, $C4, $BF, $31   ; !(BUG?) - the wall will not appear
- D 0 - I - 0x0137DE 04:97CE: FF        .byte $FF

tbl_enemies_level4_map4_g3_g6:
- D 0 - I - 0x0137DF 04:97CF: 00        .byte $00, $A4, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0137E3 04:97D3: 01        .byte $01, $08, $BF, $37   ;
- D 0 - I - 0x0137E7 04:97D7: 01        .byte $01, $3C, $7F, $39   ; Sensor
- D 0 - I - 0x0137EB 04:97DB: 01        .byte $01, $A8, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0137EF 04:97DF: 01        .byte $01, $FC, $A7, $39   ; Sensor
- D 0 - I - 0x0137F3 04:97E3: 02        .byte $02, $4C, $A7, $39   ;
- D 0 - I - 0x0137F7 04:97E7: 02        .byte $02, $78, $6F, $37   ; Egyptian with a boomerung
- D 0 - I - 0x0137FB 04:97EB: 02        .byte $02, $88, $BF, $37   ;
- D 0 - I - 0x0137FF 04:97EF: 02        .byte $02, $BC, $87, $39   ; Sensor
- D 0 - I - 0x013803 04:97F3: 03        .byte $03, $14, $6F, $39   ;
- D 0 - I - 0x013807 04:97F7: 03        .byte $03, $38, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01380B 04:97FB: 03        .byte $03, $64, $A7, $39   ; Sensor
- D 0 - I - 0x01380F 04:97FF: FF        .byte $FF

tbl_enemies_level4_map4_e4_g4:
- D 0 - I - 0x013810 04:9800: 00        .byte $00, $28, $BF, $26   ; Mummy
- D 0 - I - 0x013814 04:9804: 01        .byte $01, $18, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013818 04:9808: 01        .byte $01, $34, $AF, $39   ; Sensor
- D 0 - I - 0x01381C 04:980C: 01        .byte $01, $4C, $87, $39   ;
- D 0 - I - 0x013820 04:9810: 01        .byte $01, $58, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013824 04:9814: 01        .byte $01, $A8, $BF, $37   ;
- D 0 - I - 0x013828 04:9818: FF        .byte $FF

tbl_enemies_level4_map4_e3_e5:
- D 0 - I - 0x013829 04:9819: 01        .byte $01, $08, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x01382D 04:981D: 01        .byte $01, $38, $4F, $21   ; Cobblestone
- D 0 - I - 0x013831 04:9821: 01        .byte $01, $58, $BF, $37   ; Egyptian with a boomerung
- D 0 - I - 0x013835 04:9825: 01        .byte $01, $68, $5F, $21   ; Cobblestone
- D 0 - I - 0x013839 04:9829: 01        .byte $01, $D8, $4F, $21   ; 
- D 0 - I - 0x01383D 04:982D: FF        .byte $FF

; level 1.0
; 1 byte - macro position x
; 2 byte - position x
; 3 byte - ???
; 4 byte - ???
tbl_briefcases_outside1:
- D 0 - I - 0x01383E 04:982E: 01        .byte $01, $60, $7F, $01
- D 0 - I - 0x013842 04:9832: 03        .byte $03, $E0, $BF, $02
- D 0 - I - 0x013846 04:9836: 05        .byte $05, $B8, $BF, $03
- D 0 - I - 0x01384A 04:983A: 07        .byte $07, $10, $CF, $04
- D 0 - I - 0x01384E 04:983E: 08        .byte $08, $78, $CF, $05
- D 0 - I - 0x013852 04:9842: 0A        .byte $0A, $40, $9F, $06
- D 0 - I - 0x013856 04:9846: 0D        .byte $0D, $A8, $5F, $07
- D 0 - I - 0x01385A 04:984A: 0F        .byte $0F, $98, $6F, $1B
- D 0 - I - 0x01385E 04:984E: FF        .byte $FF

; level 2 (outside)
tbl_briefcases_outside2:
- D 0 - I - 0x01385F 04:984F: 02        .byte $02, $80, $6F, $01
- D 0 - I - 0x013863 04:9853: 05        .byte $05, $70, $77, $02
- D 0 - I - 0x013867 04:9857: 08        .byte $08, $80, $7F, $03
- D 0 - I - 0x01386B 04:985B: 0B        .byte $0B, $58, $4F, $04
- D 0 - I - 0x01386F 04:985F: 0D        .byte $0D, $C8, $77, $05
- D 0 - I - 0x013873 04:9863: FF        .byte $FF

; level 3.0
tbl_briefcases_outside3:
- D 0 - I - 0x013874 04:9864: 02        .byte $02, $70, $9F, $01
- D 0 - I - 0x013878 04:9868: 04        .byte $04, $E0, $8F, $02
- D 0 - I - 0x01387C 04:986C: 06        .byte $06, $58, $9F, $03
- D 0 - I - 0x013880 04:9870: 09        .byte $09, $E0, $67, $04
- D 0 - I - 0x013884 04:9874: 0B        .byte $0B, $B0, $BF, $05
- D 0 - I - 0x013888 04:9878: 0D        .byte $0D, $68, $7F, $06
- D 0 - I - 0x01388C 04:987C: FF        .byte $FF

tbl_briefcases_indexes_on_the_level1:
- D 0 - I - 0x01388D 04:987D: 08        .byte $08, $09, $0A, $0B, $0C
                                        .byte $0D, $0E, $0F, $10, $11
                                        .byte $12, $13, $14, $15, $16
                                        .byte $17, $18, $19, $1A, $1B

tbl_briefcases_indexes_on_the_level2:
- D 0 - I - 0x0138A1 04:9891: 06        .byte $06, $07, $08, $09, $0A
                                        .byte $0B, $0C, $0D, $0E, $0F
                                        .byte $10, $11, $12, $13, $14
- D 0 - I - 0x0138B0 04:98A0: 15        .byte $15, $16, $17, $18, $19
                                        .byte $1A, $1B, $1C, $1D, $1E
                                        .byte $1F, $20, $21, $22, $23
                                        .byte $24, $25, $26, $27, $28
                                        .byte $29, $2A, $2B, $2C, $2D
                                        .byte $2E, $2F, $30, $31, $32
                                        .byte $33, $34, $35, $36, $37
                                        .byte $38, $39, $3A, $3B, $3C
                                        .byte $3D, $3E, $3F, $40, $41
                                        .byte $42, $43, $44, $45, $46
                                        .byte $47, $48, $49, $4A, $4B
                                        .byte $4C, $4D, $4E, $4F, $50
                                        .byte $51, $52, $53, $54, $55
                                        .byte $56, $57, $58, $59, $5A
                                        .byte $5B, $5C, $5D, $5E, $5F
                                        .byte $60, $61, $62, $63, $64
- D 0 - I - 0x013900 04:98F0: 65        .byte $65, $66, $67, $68, $69
                                        .byte $6A, $6B, $6C, $6D, $6E
                                        .byte $6F, $70, $71, $72, $73
                                        .byte $74, $75, $76, $77, $78
                                        .byte $79, $7A, $7B, $7C, $7D

tbl_briefcases_indexes_on_the_level3:
- D 0 - I - 0x013919 04:9909: 07        .byte $07, $08, $09, $0A, $0B
                                        .byte $0C, $0D, $0E, $0F, $10
                                        .byte $11, $12, $13, $14, $15
                                        .byte $16, $17, $18, $19, $1A
                                        .byte $1B, $1C, $1D, $1E, $1F
                                        .byte $20, $21, $22, $23, $24
                                        .byte $29, $25, $26, $27, $28
                                        .byte $2E, $2A, $2B, $2C, $2D
                                        .byte $33, $2F, $30, $31, $32
                                        .byte $38, $34, $35, $36, $37
                                        .byte $3D, $39, $3A, $3B, $3C
- D 0 - I - 0x013950 04:9940: 42        .byte $42, $3E, $3F, $40, $41

tbl_briefcases_indexes_on_the_level4:
- D 0 - I - 0x013955 04:9945: 01        .byte $01, $02, $03, $04, $05
                                        .byte $06, $07, $08, $09, $0A
                                        .byte $0B, $0C, $0D, $0E, $0F
                                        .byte $10, $11, $12, $13, $14
                                        .byte $15, $16, $17, $18, $19
                                        .byte $1A, $1B, $1C, $1D, $1E
                                        .byte $1F, $20, $21, $22, $23
                                        .byte $24, $25, $26, $27, $28
                                        .byte $29, $2A, $2B, $2C, $2D
                                        .byte $2E, $2F, $30, $31, $32
                                        .byte $33, $34, $35, $36, $37
                                        .byte $38, $39, $3A, $3B, $3C
                                        .byte $3D, $3E, $3F, $40, $41
                                        .byte $42, $43, $44, $45, $46
                                        .byte $47, $48, $49, $4A, $4B
- D 0 - I - 0x0139A0 04:9990: 4C        .byte $4C, $4D, $4E, $4F, $50
                                        .byte $51, $52, $53, $54, $55
                                        .byte $56, $57, $58, $59, $5A
                                        .byte $5B, $5C, $5D, $5E, $5F
- D 0 - I - 0x0139B4 04:99A4: 60        .byte $60, $61, $62, $63, $64
- D - - - - 0x0139B9 04:99A9: 65        .byte $65, $66, $67, $68, $69
- D 0 - I - 0x0139BE 04:99AE: 6A        .byte $6A, $6B, $6C, $6D, $6E
                                        .byte $6F, $70, $71, $72, $73
                                        .byte $74, $75, $76, $77, $78
                                        .byte $79, $7A, $7B, $7C, $7D
                                        .byte $7E, $7F, $80, $81, $82
                                        .byte $83, $84, $85, $86, $87
                                        .byte $88, $89, $8A, $8B, $8C
                                        .byte $8D, $8E, $8F, $90, $91
                                        .byte $92, $93, $94, $95, $96
                                        .byte $97, $98, $99, $9A, $9B
- D 0 - I - 0x0139F0 04:99E0: 9C        .byte $9C, $9D, $9E, $9F, $A0
                                        .byte $A1, $A2, $A3, $A4, $A5

tbl_rooms_on_the_level1:
- D - - - - 0x0139FA 04:99EA: 80        .byte $80, $B0, $B0, $B0, $B0, $11, $12, $B0, $B0, $B0, $B0, $B0, $B0, $12, $B0, $11
- D 0 - I - 0x013A0A 04:99FA: 44        .byte $44, $B0, $B0, $41, $11, $B0, $12, $47, $12, $B0, $42, $B0, $B0, $B0, $B0, $13

tbl_rooms_on_the_level2:
- D - - - - 0x013A1A 04:9A0A: 80        .byte $80, $B0, $B0, $B0, $12, $11, $B0, $12, $B0, $B0, $12, $B0, $42, $B0, $B0, $45
- D 0 - I - 0x013A2A 04:9A1A: B0        .byte $B0, $B0, $12, $B0, $12, $B0, $B0, $B0, $41, $B0, $B0, $12, $12, $47, $11, $12
- D 0 - I - 0x013A3A 04:9A2A: B0        .byte $B0, $B0, $11, $12, $B0, $B0, $47, $B0, $B0, $B0, $B0, $12, $B4, $B4, $16, $B4
- D 0 - I - 0x013A4A 04:9A3A: B4        .byte $B4, $16, $15, $B4, $B4, $41, $B4, $B4, $15, $B4, $45, $B4, $B4, $B4, $16, $16
- D 0 - I - 0x013A5A 04:9A4A: B4        .byte $B4, $41, $B4, $B4, $15, $16, $B4, $B4, $B4, $16, $B4, $15, $47, $16, $B4, $B4
- D 0 - I - 0x013A6A 04:9A5A: B4        .byte $B4, $16, $B4, $B4, $45, $B4, $B4, $B4, $16, $B4, $15, $16, $B4, $15, $41, $B4
- D 0 - I - 0x013A7A 04:9A6A: 16        .byte $16, $16, $B4, $45, $B4, $B4, $16, $16, $B4, $B4, $44, $B4, $B4, $B7

tbl_rooms_on_the_level3:
- D - - - - 0x013A88 04:9A78: B0        .byte $B0, $11, $B0, $12, $B0, $B0, $B0, $12, $B0, $41, $B0, $12, $B0, $B0, $47, $B0
- D 0 - I - 0x013A98 04:9A88: 12        .byte $12, $11, $12, $44, $B0, $B0, $B0, $B0, $12, $B0, $B0, $B0, $12, $45, $B0, $B0
- D 0 - I - 0x013AA8 04:9A98: B0        .byte $B0, $B0, $B0, $11, $12, $B0, $12, $B0, $B0, $44, $42, $B0, $12, $B0, $B0, $12
- D 0 - I - 0x013AB8 04:9AA8: 11        .byte $11, $12, $B0, $B0, $B0, $B0, $13

tbl_rooms_on_the_level4:
- D - - - - 0x013ABF 04:9AAF: B0        .byte $B0, $B0, $12, $B0, $11, $B0, $12, $B0, $12, $11, $B0, $B0, $11, $B0, $11, $12
- D 0 - I - 0x013ACF 04:9ABF: B0        .byte $B0, $B0, $B0, $12, $B0, $11, $B0, $B0, $B0, $12, $B0, $B0, $B0, $B0, $11, $12
- D 0 - I - 0x013ADF 04:9ACF: B0        .byte $B0, $11, $12, $11, $B0, $12, $B0, $11, $12, $B0, $11, $B0, $B0, $B0, $B0, $B0
- D 0 - I - 0x013AEF 04:9ADF: 12        .byte $12, $B0, $11, $B0, $11, $B0, $11, $12, $B0, $12, $B0, $B0, $12, $B0, $B0, $B0
- D 0 - I - 0x013AFF 04:9AEF: B0        .byte $B0, $11, $12, $B0, $B0, $B0, $B0, $B0, $B0, $11, $B0, $12, $B0, $B0, $B0, $B0
- D 0 - I - 0x013B0F 04:9AFF: B0        .byte $B0, $B0, $12, $B0, $B0, $B0, $12, $11, $B0, $12, $B0, $B0, $B0, $B0, $B0, $B0
- D 0 - I - 0x013B1F 04:9B0F: B0        .byte $B0, $11, $B0, $12, $11, $B0, $B0, $B0, $B0, $12, $12, $11, $B0, $B0, $B0, $B0
- D 0 - I - 0x013B2F 04:9B1F: 12        .byte $12, $B0, $11, $12, $B0, $B0, $B0, $12, $12, $B0, $11, $11, $12, $11, $B0, $12
- D 0 - I - 0x013B3F 04:9B2F: B0        .byte $B0, $B0, $12, $11, $B0, $B0, $B0, $12, $B0, $11, $B0, $11, $12, $B0, $B0, $11
- D 0 - I - 0x013B4F 04:9B3F: 11        .byte $11, $13

tbl_briefcases_on_the_level1:
- D - - - - 0x013B51 04:9B41: 80        .byte $80, $07, $06, $07, $01, $00, $06, $00, $01, $02, $04, $07, $80, $00, $01, $80
- D 0 - I - 0x013B61 04:9B51: 07        .byte $07, $08, $80, $80, $02, $03, $04, $04, $00, $08, $80, $03

tbl_briefcases_on_the_level2:
- D 0 - I - 0x013B6D 04:9B5D: 80        .byte $80, $05, $00, $07, $03, $01, $00, $01, $05, $05, $80, $03, $06, $07, $07, $08
- D 0 - I - 0x013B7D 04:9B6D: 00        .byte $00, $01, $04, $05, $80, $01, $02, $03, $04, $80, $04, $06, $07, $80, $80, $00
- D 0 - I - 0x013B8D 04:9B7D: 02        .byte $02, $04, $06, $80, $00, $01, $02, $05, $80, $02, $03, $05, $07, $08, $00, $04
- D 0 - I - 0x013B9D 04:9B8D: 05        .byte $05, $06, $80, $00, $01, $03, $06, $80, $00, $01, $03, $80, $80, $00, $02, $04
- D 0 - I - 0x013BAD 04:9B9D: 80        .byte $80, $80, $02, $04, $05, $80, $80, $00, $00, $04, $04, $05, $00, $00, $01, $05
- D 0 - I - 0x013BBD 04:9BAD: 07        .byte $07, $00, $02, $02, $05, $80, $02, $04, $80, $80, $80, $02, $04, $04, $80, $80
- D 0 - I - 0x013BCD 04:9BBD: 00        .byte $00, $00, $01, $07, $80, $02, $02, $07, $80, $80, $00, $06, $08, $80, $80, $02
- D 0 - I - 0x013BDD 04:9BCD: 02        .byte $02, $05, $08, $80, $02, $03, $03, $07, $80, $00, $06, $07, $80, $80

tbl_briefcases_on_the_level3:
- D - - - - 0x013BEB 04:9BDB: 80        .byte $80, $05, $07, $06, $03, $06, $00, $00, $04, $05, $80, $80, $01, $01, $06, $08
- D 0 - I - 0x013BFB 04:9BEB: 80        .byte $80, $01, $02, $03, $08, $80, $00, $00, $04, $05, $80, $02, $06, $80, $80, $80
- D 0 - I - 0x013C0B 04:9BFB: 03        .byte $03, $05, $07, $08, $80, $01, $02, $05, $05, $80, $00, $00, $06, $80, $80, $04
- D 0 - I - 0x013C1B 04:9C0B: 05        .byte $05, $08, $80, $80, $00, $00, $05, $80, $80, $02, $03, $06, $80, $80, $02, $07
- D 0 - I - 0x013C2B 04:9C1B: 80        .byte $80, $80, $80

tbl_briefcases_on_the_level4:
- D - - - - 0x013C2E 04:9C1E: 80        .byte $80, $00, $01, $05, $06, $07, $03, $03, $03, $06, $80, $00, $02, $02, $05, $06
- D 0 - I - 0x013C3E 04:9C2E: 00        .byte $00, $02, $03, $05, $06, $01, $03, $05, $07, $07, $03, $03, $04, $05, $08, $02
- D 0 - I - 0x013C4E 04:9C3E: 05        .byte $05, $06, $06, $80, $00, $01, $03, $05, $06, $00, $02, $04, $05, $08, $00, $00
- D 0 - I - 0x013C5E 04:9C4E: 02        .byte $02, $05, $06, $00, $01, $03, $05, $07, $02, $02, $05, $06, $80, $03, $04, $05
- D 0 - I - 0x013C6E 04:9C5E: 07        .byte $07, $08, $00, $01, $02, $05, $06, $00, $02, $02, $03, $05, $00, $00, $02, $05
- D 0 - I - 0x013C7E 04:9C6E: 06        .byte $06, $00, $02, $03, $05, $06, $00, $03, $04, $05, $07, $00, $01, $02, $03, $05
- D 0 - I - 0x013C8E 04:9C7E: 03        .byte $03, $05, $05, $07, $08, $02, $04, $05, $05, $06, $04, $04, $05, $05, $06, $04
- D 0 - I - 0x013C9E 04:9C8E: 04        .byte $04, $04, $05, $05, $03, $04, $04, $05, $05, $02, $02, $05, $05, $06, $00, $02
- D 0 - I - 0x013CAE 04:9C9E: 02        .byte $02, $05, $06, $01, $04, $04, $05, $80, $00, $02, $02, $05, $06, $00, $02, $05
- D 0 - I - 0x013CBE 04:9CAE: 06        .byte $06, $07, $01, $03, $05, $05, $80, $00, $03, $05, $06, $08, $00, $03, $05, $05
- D 0 - I - 0x013CCE 04:9CBE: 07        .byte $07, $01, $01, $03, $05, $07

; 1 byte - room number
; 2-3 bytes - tbl_prison_roomsX_X address
tbl_ptr_prison_rooms1:
- D 0 - I - 0x013CD4 04:9CC4: 04        .byte $04
- D 0 - I - 0x013CD5 04:9CC5: FD 9C     .addr tbl_prison_rooms1_1 ; CPU address $9CFD
- D 0 - I - 0x013CD7 04:9CC7: 05        .byte $05
- D - - - - 0x013CD8 04:9CC8: 04 9D     .addr tbl_prison_rooms1_2 ; CPU address $9D04
- D 0 - I - 0x013CDA 04:9CCA: FF        .byte $FF
- D 0 - I - 0x013CDB 04:9CCB: 0C 9D     .addr tbl_prison_rooms1_3 ; CPU address $9D0C

tbl_ptr_prison_rooms2:
- D 0 - I - 0x013CDD 04:9CCD: 08        .byte $08
- D 0 - I - 0x013CDE 04:9CCE: 13 9D     .addr tbl_prison_rooms2_1 ; CPU address $9D13
- D 0 - I - 0x013CE0 04:9CD0: 09        .byte $09
- D - - - - 0x013CE1 04:9CD1: 1C 9D     .addr tbl_prison_rooms2_2 ; CPU address $9D1C
- D 0 - I - 0x013CE3 04:9CD3: 0A        .byte $0A
- D 0 - I - 0x013CE4 04:9CD4: 26 9D     .addr tbl_prison_rooms2_3 ; CPU address $9D26
- D 0 - I - 0x013CE6 04:9CD6: 0B        .byte $0B
- D - - - - 0x013CE7 04:9CD7: 2F 9D     .addr tbl_prison_rooms2_4 ; CPU address $9D2F
- D 0 - I - 0x013CE9 04:9CD9: 0C        .byte $0C
- D 0 - I - 0x013CEA 04:9CDA: 37 9D     .addr tbl_prison_rooms2_5 ; CPU address $9D37
- D 0 - I - 0x013CEC 04:9CDC: 0D        .byte $0D
- D 0 - I - 0x013CED 04:9CDD: 41 9D     .addr tbl_prison_rooms2_6 ; CPU address $9D41
- D 0 - I - 0x013CEF 04:9CDF: 0E        .byte $0E
- D 0 - I - 0x013CF0 04:9CE0: 49 9D     .addr tbl_prison_rooms2_7 ; CPU address $9D49
- D 0 - I - 0x013CF2 04:9CE2: FF        .byte $FF
- D 0 - I - 0x013CF3 04:9CE3: 51 9D     .addr tbl_prison_rooms2_8 ; CPU address $9D51

tbl_ptr_prison_rooms3:
- D 0 - I - 0x013CF5 04:9CE5: 11        .byte $11
- D 0 - I - 0x013CF6 04:9CE6: 5A 9D     .addr tbl_prison_rooms3_1 ; CPU address $9D5A
- D 0 - I - 0x013CF8 04:9CE8: 12        .byte $12
- D 0 - I - 0x013CF9 04:9CE9: 61 9D     .addr tbl_prison_rooms3_2 ; CPU address $9D61
- D - - - - 0x013CFB 04:9CEB: 13        .byte $13
- D - - - - 0x013CFC 04:9CEC: 6A 9D     .addr tbl_prison_rooms3_3 ; CPU address $9D6A
- D - - - - 0x013CFE 04:9CEE: FF        .byte $FF
- D - - - - 0x013CFF 04:9CEF: 73 9D     .addr tbl_prison_rooms3_4 ; CPU address $9D73

tbl_ptr_prison_rooms4:
- D 0 - I - 0x013D01 04:9CF1: 4A        .byte $4A
- D 0 - I - 0x013D02 04:9CF2: 7D 9D     .addr tbl_prison_rooms4_1 ; CPU address $9D7D
- D 0 - I - 0x013D04 04:9CF4: 57        .byte $57
- D - - - - 0x013D05 04:9CF5: 83 9D     .addr tbl_prison_rooms4_2 ; CPU address $9D83
- D 0 - I - 0x013D07 04:9CF7: 67        .byte $67
- D 0 - I - 0x013D08 04:9CF8: 92 9D     .addr tbl_prison_rooms4_3 ; CPU address $9D92
- D 0 - I - 0x013D0A 04:9CFA: FF        .byte $FF
- D 0 - I - 0x013D0B 04:9CFB: B4 9D     .addr tbl_prison_rooms4_4 ; CPU address $9DB4

; 1 byte - the number of the rooms
; 2, 3, 4, ... bytes - the room numbers
tbl_prison_rooms1_1:
- D 0 - I - 0x013D0D 04:9CFD: 05        .byte $05
- D 0 - I - 0x013D0E 04:9CFE: 01        .byte $01, $02, $03, $04, $07, $08

tbl_prison_rooms1_2:
- D - - - - 0x013D14 04:9D04: 06        .byte $06
- D - - - - 0x013D15 04:9D05: 09        .byte $09, $0A, $0B, $0C, $0E, $11, $12

tbl_prison_rooms1_3:
- D 0 - I - 0x013D1C 04:9D0C: 05        .byte $05
- D 0 - I - 0x013D1D 04:9D0D: 15        .byte $15, $19, $1B, $1C, $1D, $1E

tbl_prison_rooms2_1:
- D 0 - I - 0x013D23 04:9D13: 07        .byte $07
- D 0 - I - 0x013D24 04:9D14: 01        .byte $01, $02, $03, $06, $08, $09, $0B, $0D

tbl_prison_rooms2_2:
- D - - - - 0x013D2C 04:9D1C: 08        .byte $08
- D - - - - 0x013D2D 04:9D1D: 0E        .byte $0E, $10, $11, $13, $15, $16, $17, $19, $1A

tbl_prison_rooms2_3:
- D 0 - I - 0x013D36 04:9D26: 07        .byte $07
- D 0 - I - 0x013D37 04:9D27: 20        .byte $20, $21, $24, $25, $27, $28, $29, $2A

tbl_prison_rooms2_4:
- D - - - - 0x013D3F 04:9D2F: 06        .byte $06
- D - - - - 0x013D40 04:9D30: 2C        .byte $2C, $2D, $2F, $30, $33, $34, $36

tbl_prison_rooms2_5:
- D 0 - I - 0x013D47 04:9D37: 08        .byte $08
- D - - - - 0x013D48 04:9D38: 37        .byte $37, $39, $3B, $3C, $3D, $3E, $40, $42, $43

tbl_prison_rooms2_6:
- D 0 - I - 0x013D51 04:9D41: 06        .byte $06
- D - - - - 0x013D52 04:9D42: 46        .byte $46, $47, $48, $4A, $4E, $4F, $50

tbl_prison_rooms2_7:
- D 0 - I - 0x013D59 04:9D49: 06        .byte $06
- D - - - - 0x013D5A 04:9D4A: 52        .byte $52, $53, $55, $56, $57, $59, $5C

tbl_prison_rooms2_8:
- D 0 - I - 0x013D61 04:9D51: 07        .byte $07
- D 0 - I - 0x013D62 04:9D52: 5F        .byte $5F, $62, $64, $65, $68, $69, $6B, $6C

tbl_prison_rooms3_1:
- D 0 - I - 0x013D6A 04:9D5A: 05        .byte $05
- D 0 - I - 0x013D6B 04:9D5B: 02        .byte $02, $04, $05, $06, $08, $0A

tbl_prison_rooms3_2:
- D 0 - I - 0x013D71 04:9D61: 07        .byte $07
- D 0 - I - 0x013D72 04:9D62: 0C        .byte $0C, $0D, $0F, $14, $15, $16, $17, $19

tbl_prison_rooms3_3:
- D - - - - 0x013D7A 04:9D6A: 07        .byte $07
- D - - - - 0x013D7B 04:9D6B: 1A        .byte $1A, $1B, $1E, $1F, $20, $21, $22, $25

tbl_prison_rooms3_4:
- D - - - - 0x013D83 04:9D73: 08        .byte $08
- D - - - - 0x013D84 04:9D74: 27        .byte $27, $28, $2B, $2D, $2E, $32, $33, $34, $35

tbl_prison_rooms4_1:
- D 0 - I - 0x013D8D 04:9D7D: 04        .byte $04
- D 0 - I - 0x013D8E 04:9D7E: 01        .byte $01, $03, $05, $07, $0A

tbl_prison_rooms4_2:
- D - - - - 0x013D93 04:9D83: 0D        .byte $0D
- D - - - - 0x013D94 04:9D84: 0B        .byte $0B, $0D, $10, $11, $12, $14, $16, $17, $18, $1A, $1B, $1C, $1D, $20

tbl_prison_rooms4_3:
- D 0 - I - 0x013DA2 04:9D92: 20        .byte $20
- D - - - - 0x013DA3 04:9D93: 24        .byte $24, $26, $29, $2B, $2C, $2D, $2E, $2F, $31, $33, $35, $38, $3A, $3B, $3D, $3E
- D - - - - 0x013DB3 04:9DA3: 3F        .byte $3F, $40, $43, $44, $45, $46, $48, $4A, $4C, $4D, $4E, $50, $51, $52, $53, $54
- D - - - - 0x013DC3 04:9DB3: 55        .byte $55

tbl_prison_rooms4_4:
- D 0 - I - 0x013DC4 04:9DB4: 1E        .byte $1E
- D - - - - 0x013DC5 04:9DB5: 58        .byte $58, $5A, $5B, $5C, $5D, $5E, $5F, $62, $65, $66, $67, $68, $6C, $6D, $6E, $6F
- D - - - - 0x013DD5 04:9DC5: 71        .byte $71, $74, $75, $76, $79, $7E, $80, $81, $84, $85, $86, $88, $8A, $8D, $8E

tbl_ptr_rooms1_with_NPCs: ; Rooms (level 1)
- D 0 - I - 0x013DE4 04:9DD4: 3B 9E     .addr tbl_ptr_rooms1_1_with_NPCs ; Count Lazare de Cagliostro, CPU address $9E3B
- D 0 - I - 0x013DE6 04:9DD6: 41 9E     .addr tbl_ptr_rooms1_2_with_NPCs ; Girl 1, CPU address $9E41
- D 0 - I - 0x013DE8 04:9DD8: 47 9E     .addr tbl_ptr_rooms1_3_with_NPCs ; Girl 2, CPU address $9E47
- D 0 - I - 0x013DEA 04:9DDA: 4D 9E     .addr tbl_ptr_rooms1_4_with_NPCs ; Boss (after the battle), CPU address $9E4D

tbl_ptr_rooms2_with_NPCs: ; Rooms (level 2)
- D 0 - I - 0x013DEC 04:9DDC: 56 9E     .addr tbl_ptr_rooms2_1_with_NPCs ; CPU address $9E56
- D 0 - I - 0x013DEE 04:9DDE: 5C 9E     .addr tbl_ptr_rooms2_2_with_NPCs ; CPU address $9E5C
- D 0 - I - 0x013DF0 04:9DE0: 62 9E     .addr tbl_ptr_rooms2_3_with_NPCs ; CPU address $9E62
- D 0 - I - 0x013DF2 04:9DE2: 68 9E     .addr tbl_ptr_rooms2_4_with_NPCs ; CPU address $9E68
- D 0 - I - 0x013DF4 04:9DE4: 6C 9E     .addr tbl_ptr_rooms2_5_with_NPCs ; CPU address $9E6C
- D 0 - I - 0x013DF6 04:9DE6: 72 9E     .addr tbl_ptr_rooms2_6_with_NPCs ; CPU address $9E72
- D 0 - I - 0x013DF8 04:9DE8: 76 9E     .addr tbl_ptr_rooms2_7_with_NPCs ; CPU address $9E76
- D 0 - I - 0x013DFA 04:9DEA: 7A 9E     .addr tbl_ptr_rooms2_8_with_NPCs ; CPU address $9E7A
- D 0 - I - 0x013DFC 04:9DEC: 7E 9E     .addr tbl_ptr_rooms2_9_with_NPCs ; CPU address $9E7E
- D 0 - I - 0x013DFE 04:9DEE: 84 9E     .addr tbl_ptr_rooms2_10_with_NPCs ; Boss (after the battle), CPU address $9E84

tbl_ptr_rooms3_with_NPCs: ; Rooms (level 3)
- D 0 - I - 0x013E00 04:9DF0: 8D 9E     .addr tbl_ptr_rooms3_1_with_NPCs ; CPU address $9E8D
- D 0 - I - 0x013E02 04:9DF2: 93 9E     .addr tbl_ptr_rooms3_2_with_NPCs ; CPU address $9E93
- D 0 - I - 0x013E04 04:9DF4: 99 9E     .addr tbl_ptr_rooms3_3_with_NPCs ; CPU address $9E99
- D 0 - I - 0x013E06 04:9DF6: 9F 9E     .addr tbl_ptr_rooms3_4_with_NPCs ; CPU address $9E9F
- D 0 - I - 0x013E08 04:9DF8: A5 9E     .addr tbl_ptr_rooms3_5_with_NPCs ; Boss (after the battle), CPU address $9EA5

tbl_ptr_rooms4_with_NPCs: ; Rooms (level 4)
- D 0 - I - 0x013E0A 04:9DFA: AE 9E     .addr tbl_ptr_rooms4_1_with_NPCs ; CPU address $9EAE
- D 0 - I - 0x013E0C 04:9DFC: B1 9E     .addr tbl_ptr_rooms4_2_with_NPCs ; CPU address $9EB1
- D 0 - I - 0x013E0E 04:9DFE: B4 9E     .addr tbl_ptr_rooms4_3_with_NPCs ; CPU address $9EB4
- D 0 - I - 0x013E10 04:9E00: B7 9E     .addr tbl_ptr_rooms4_4_with_NPCs ; CPU address $9EB7
- D 0 - I - 0x013E12 04:9E02: BA 9E     .addr tbl_ptr_rooms4_5_with_NPCs ; CPU address $9EBA
- D 0 - I - 0x013E14 04:9E04: BD 9E     .addr tbl_ptr_rooms4_6_with_NPCs ; CPU address $9EBD
- D 0 - I - 0x013E16 04:9E06: C0 9E     .addr tbl_ptr_rooms4_7_with_NPCs ; CPU address $9EC0
- D 0 - I - 0x013E18 04:9E08: C4 9E     .addr tbl_ptr_rooms4_8_with_NPCs ; CPU address $9EC4
- D 0 - I - 0x013E1A 04:9E0A: C7 9E     .addr tbl_ptr_rooms4_9_with_NPCs ; CPU address $9EC7
- D 0 - I - 0x013E1C 04:9E0C: CA 9E     .addr tbl_ptr_rooms4_10_with_NPCs ; CPU address $9ECA
- D 0 - I - 0x013E1E 04:9E0E: CD 9E     .addr tbl_ptr_rooms4_11_with_NPCs ; CPU address $9ECD
- D 0 - I - 0x013E20 04:9E10: D0 9E     .addr tbl_ptr_rooms4_12_with_NPCs ; CPU address $9ED0
- D 0 - I - 0x013E22 04:9E12: D3 9E     .addr tbl_ptr_rooms4_13_with_NPCs ; CPU address $9ED3
- D 0 - I - 0x013E24 04:9E14: D7 9E     .addr tbl_ptr_rooms4_14_with_NPCs ; CPU address $9ED7
- D 0 - I - 0x013E26 04:9E16: DA 9E     .addr tbl_ptr_rooms4_15_with_NPCs ; CPU address $9EDA
- D 0 - I - 0x013E28 04:9E18: DD 9E     .addr tbl_ptr_rooms4_16_with_NPCs ; CPU address $9EDD
- D 0 - I - 0x013E2A 04:9E1A: E0 9E     .addr tbl_ptr_rooms4_17_with_NPCs ; CPU address $9EE0
- D 0 - I - 0x013E2C 04:9E1C: E3 9E     .addr tbl_ptr_rooms4_18_with_NPCs ; CPU address $9EE3
- D 0 - I - 0x013E2E 04:9E1E: E6 9E     .addr tbl_ptr_rooms4_19_with_NPCs ; CPU address $9EE6
- D 0 - I - 0x013E30 04:9E20: EA 9E     .addr tbl_ptr_rooms4_20_with_NPCs ; CPU address $9EEA
- D 0 - I - 0x013E32 04:9E22: ED 9E     .addr tbl_ptr_rooms4_21_with_NPCs ; CPU address $9EED
- D 0 - I - 0x013E34 04:9E24: F0 9E     .addr tbl_ptr_rooms4_22_with_NPCs ; CPU address $9EF0
- D 0 - I - 0x013E36 04:9E26: F3 9E     .addr tbl_ptr_rooms4_23_with_NPCs ; CPU address $9EF3
- D 0 - I - 0x013E38 04:9E28: F7 9E     .addr tbl_ptr_rooms4_24_with_NPCs ; CPU address $9EF7
- D 0 - I - 0x013E3A 04:9E2A: FA 9E     .addr tbl_ptr_rooms4_25_with_NPCs ; CPU address $9EFA
- D 0 - I - 0x013E3C 04:9E2C: FD 9E     .addr tbl_ptr_rooms4_26_with_NPCs ; CPU address $9EFD
- D 0 - I - 0x013E3E 04:9E2E: 00 9F     .addr tbl_ptr_rooms4_27_with_NPCs ; CPU address $9F00
- D 0 - I - 0x013E40 04:9E30: 03 9F     .addr tbl_ptr_rooms4_28_with_NPCs ; Sarcophagus (G3-G6), CPU address $9F03

tbl_portrait_demo_indexes:
- D 0 - I - 0x013E42 04:9E32: 27        .byte $27   ; Lupin
- D 0 - I - 0x013E43 04:9E33: 00        .byte $00   ; 
- D 0 - I - 0x013E44 04:9E34: 2A        .byte $2A   ; Fujiko Mine
- D 0 - I - 0x013E45 04:9E35: 28        .byte $28   ; Jigen
- D 0 - I - 0x013E46 04:9E36: 00        .byte $00   ; 
- D 0 - I - 0x013E47 04:9E37: 2B        .byte $2B   ; Clarisse Cagliostro
- D 0 - I - 0x013E48 04:9E38: 29        .byte $29   ; Goemon
- D 0 - I - 0x013E49 04:9E39: 00        .byte $00   ; 
- D 0 - I - 0x013E4A 04:9E3A: 2C        .byte $2C   ; Zenigata

; 1 byte - The model of the NP-character
; 2 byte - The type of the NP-character (0x00 - 0x0A)
; Type 0x04 - (4 byte - for Lupin, 5 byte - for Jigen, 6 byte - for Goemon)
; Type 0x05 - type 0x04 + stealing the ring
tbl_ptr_rooms1_1_with_NPCs:
- D 0 - I - 0x013E4B 04:9E3B: 00        .byte $00   ; Count Lazare de Cagliostro 
- D 0 - I - 0x013E4C 04:9E3C: 04        .byte $04   ;
- D - - - - 0x013E4D 04:9E3D: 0B        .byte $0B   ; 
- D 0 - I - 0x013E4E 04:9E3E: 0B        .byte $0B   ; see $8016 
- D 0 - I - 0x013E4F 04:9E3F: 0C        .byte $0C   ; see $8018 
- D 0 - I - 0x013E50 04:9E40: 0D        .byte $0D   ; see $801A 

tbl_ptr_rooms1_2_with_NPCs:
- D 0 - I - 0x013E51 04:9E41: 08        .byte $08
- D 0 - I - 0x013E52 04:9E42: 04        .byte $04
- D - - - - 0x013E53 04:9E43: 0E        .byte $0E
- D 0 - I - 0x013E54 04:9E44: 0E        .byte $0E   ; see $801C
- D 0 - I - 0x013E55 04:9E45: 0F        .byte $0F   ; see $801E
- D 0 - I - 0x013E56 04:9E46: 10        .byte $10   ; see $8020

tbl_ptr_rooms1_3_with_NPCs:
- D 0 - I - 0x013E57 04:9E47: 0E        .byte $0E
- D 0 - I - 0x013E58 04:9E48: 05        .byte $05
- D - - - - 0x013E59 04:9E49: 11        .byte $11   ; see $8022
- D 0 - I - 0x013E5A 04:9E4A: 12        .byte $12   ; see $8024
- D 0 - I - 0x013E5B 04:9E4B: 13        .byte $13   ; see $8026
- D 0 - I - 0x013E5C 04:9E4C: 14        .byte $14   ; see $8028

tbl_ptr_rooms1_4_with_NPCs:
- D 0 - I - 0x013E5D 04:9E4D: 24        .byte $24
- D 0 - I - 0x013E5E 04:9E4E: 00        .byte $00
- D 0 - I - 0x013E5F 04:9E4F: 95        .byte $95
- D 0 - I - 0x013E60 04:9E50: 27        .byte $27
- D 0 - I - 0x013E61 04:9E51: 04        .byte $04
- D - - - - 0x013E62 04:9E52: 72        .byte $72
- D 0 - I - 0x013E63 04:9E53: 72        .byte $72
- D 0 - I - 0x013E64 04:9E54: 73        .byte $73
- D 0 - I - 0x013E65 04:9E55: 74        .byte $74

tbl_ptr_rooms2_1_with_NPCs:
- D 0 - I - 0x013E66 04:9E56: 2C        .byte $2C
- D 0 - I - 0x013E67 04:9E57: 04        .byte $04
- D - - - - 0x013E68 04:9E58: 19        .byte $19
- D 0 - I - 0x013E69 04:9E59: 19        .byte $19
- D 0 - I - 0x013E6A 04:9E5A: 1A        .byte $1A
- D 0 - I - 0x013E6B 04:9E5B: 1B        .byte $1B

tbl_ptr_rooms2_2_with_NPCs:
- D 0 - I - 0x013E6C 04:9E5C: 2A        .byte $2A
- D 0 - I - 0x013E6D 04:9E5D: 05        .byte $05
- D - - - - 0x013E6E 04:9E5E: 1C        .byte $1C
- D 0 - I - 0x013E6F 04:9E5F: 1D        .byte $1D
- D 0 - I - 0x013E70 04:9E60: 1E        .byte $1E
- D 0 - I - 0x013E71 04:9E61: 1F        .byte $1F

tbl_ptr_rooms2_3_with_NPCs:
- D 0 - I - 0x013E72 04:9E62: 02        .byte $02
- D 0 - I - 0x013E73 04:9E63: 04        .byte $04
- D - - - - 0x013E74 04:9E64: 20        .byte $20
- D 0 - I - 0x013E75 04:9E65: 20        .byte $20
- D 0 - I - 0x013E76 04:9E66: 21        .byte $21
- D 0 - I - 0x013E77 04:9E67: 21        .byte $21

tbl_ptr_rooms2_4_with_NPCs:
- D 0 - I - 0x013E78 04:9E68: 16        .byte $16
- D 0 - I - 0x013E79 04:9E69: 0A        .byte $0A   ; Yi
- D - - - - 0x013E7A 04:9E6A: 23        .byte $23
- D 0 - I - 0x013E7B 04:9E6B: 23        .byte $23

tbl_ptr_rooms2_5_with_NPCs:
- D 0 - I - 0x013E7C 04:9E6C: 09        .byte $09
- D 0 - I - 0x013E7D 04:9E6D: 04        .byte $04
- D - - - - 0x013E7E 04:9E6E: 24        .byte $24
- D 0 - I - 0x013E7F 04:9E6F: 24        .byte $24
- D 0 - I - 0x013E80 04:9E70: 25        .byte $25
- D 0 - I - 0x013E81 04:9E71: 26        .byte $26

tbl_ptr_rooms2_6_with_NPCs:
- D 0 - I - 0x013E82 04:9E72: 18        .byte $18
- D 0 - I - 0x013E83 04:9E73: 07        .byte $07   ; Lian
- D 0 - I - 0x013E84 04:9E74: 28        .byte $28
- D 0 - I - 0x013E85 04:9E75: 27        .byte $27

tbl_ptr_rooms2_7_with_NPCs:
- D 0 - I - 0x013E86 04:9E76: 1A        .byte $1A
- D 0 - I - 0x013E87 04:9E77: 08        .byte $08   ; San
- D 0 - I - 0x013E88 04:9E78: 30        .byte $30
- D 0 - I - 0x013E89 04:9E79: 29        .byte $29

tbl_ptr_rooms2_8_with_NPCs:
- D 0 - I - 0x013E8A 04:9E7A: 1C        .byte $1C
- D 0 - I - 0x013E8B 04:9E7B: 09        .byte $09   ; Suu
- D 0 - I - 0x013E8C 04:9E7C: 32        .byte $32
- D 0 - I - 0x013E8D 04:9E7D: 31        .byte $31

tbl_ptr_rooms2_9_with_NPCs:
- D 0 - I - 0x013E8E 04:9E7E: 10        .byte $10
- D 0 - I - 0x013E8F 04:9E7F: 05        .byte $05
- D - - - - 0x013E90 04:9E80: 33        .byte $33
- D 0 - I - 0x013E91 04:9E81: 34        .byte $34
- D 0 - I - 0x013E92 04:9E82: 35        .byte $35
- D 0 - I - 0x013E93 04:9E83: 36        .byte $36

tbl_ptr_rooms2_10_with_NPCs:
- D 0 - I - 0x013E94 04:9E84: 25        .byte $25
- D 0 - I - 0x013E95 04:9E85: 00        .byte $00
- D 0 - I - 0x013E96 04:9E86: B7        .byte $B7
- D 0 - I - 0x013E97 04:9E87: 27        .byte $27
- D 0 - I - 0x013E98 04:9E88: 04        .byte $04
- D - - - - 0x013E99 04:9E89: 75        .byte $75
- D 0 - I - 0x013E9A 04:9E8A: 75        .byte $75
- D 0 - I - 0x013E9B 04:9E8B: 76        .byte $76
- D 0 - I - 0x013E9C 04:9E8C: 77        .byte $77

tbl_ptr_rooms3_1_with_NPCs:
- D 0 - I - 0x013E9D 04:9E8D: 0A        .byte $0A
- D 0 - I - 0x013E9E 04:9E8E: 04        .byte $04
- D - - - - 0x013E9F 04:9E8F: 3B        .byte $3B
- D 0 - I - 0x013EA0 04:9E90: 3B        .byte $3B
- D 0 - I - 0x013EA1 04:9E91: 3C        .byte $3C
- D 0 - I - 0x013EA2 04:9E92: 3D        .byte $3D

tbl_ptr_rooms3_2_with_NPCs:
- D 0 - I - 0x013EA3 04:9E93: 04        .byte $04
- D 0 - I - 0x013EA4 04:9E94: 04        .byte $04
- D - - - - 0x013EA5 04:9E95: 3E        .byte $3E
- D 0 - I - 0x013EA6 04:9E96: 3E        .byte $3E
- D 0 - I - 0x013EA7 04:9E97: 3F        .byte $3F
- D 0 - I - 0x013EA8 04:9E98: 40        .byte $40

tbl_ptr_rooms3_3_with_NPCs:
- D 0 - I - 0x013EA9 04:9E99: 2A        .byte $2A
- D 0 - I - 0x013EAA 04:9E9A: 05        .byte $05
- D - - - - 0x013EAB 04:9E9B: 1C        .byte $1C
- D 0 - I - 0x013EAC 04:9E9C: 41        .byte $41
- D 0 - I - 0x013EAD 04:9E9D: 42        .byte $42
- D 0 - I - 0x013EAE 04:9E9E: 43        .byte $43

tbl_ptr_rooms3_4_with_NPCs:
- D 0 - I - 0x013EAF 04:9E9F: 12        .byte $12
- D 0 - I - 0x013EB0 04:9EA0: 05        .byte $05
- D - - - - 0x013EB1 04:9EA1: 11        .byte $11
- D 0 - I - 0x013EB2 04:9EA2: 44        .byte $44
- D 0 - I - 0x013EB3 04:9EA3: 45        .byte $45
- D 0 - I - 0x013EB4 04:9EA4: 46        .byte $46

tbl_ptr_rooms3_5_with_NPCs:
- D 0 - I - 0x013EB5 04:9EA5: 26        .byte $26
- D 0 - I - 0x013EB6 04:9EA6: 00        .byte $00
- D 0 - I - 0x013EB7 04:9EA7: C7        .byte $C7
- D 0 - I - 0x013EB8 04:9EA8: 27        .byte $27
- D 0 - I - 0x013EB9 04:9EA9: 04        .byte $04
- D - - - - 0x013EBA 04:9EAA: 78        .byte $78
- D 0 - I - 0x013EBB 04:9EAB: 78        .byte $78
- D 0 - I - 0x013EBC 04:9EAC: 79        .byte $79
- D 0 - I - 0x013EBD 04:9EAD: 7A        .byte $7A

tbl_ptr_rooms4_1_with_NPCs:
- D 0 - I - 0x013EBE 04:9EAE: 1E        .byte $1E
- D 0 - I - 0x013EBF 04:9EAF: 00        .byte $00
- D 0 - I - 0x013EC0 04:9EB0: 48        .byte $48

tbl_ptr_rooms4_2_with_NPCs:
- D 0 - I - 0x013EC1 04:9EB1: 20        .byte $20
- D 0 - I - 0x013EC2 04:9EB2: 00        .byte $00
- D 0 - I - 0x013EC3 04:9EB3: 49        .byte $49

tbl_ptr_rooms4_3_with_NPCs:
- D 0 - I - 0x013EC4 04:9EB4: 1E        .byte $1E
- D 0 - I - 0x013EC5 04:9EB5: 00        .byte $00
- D 0 - I - 0x013EC6 04:9EB6: 4A        .byte $4A

tbl_ptr_rooms4_4_with_NPCs:
- D 0 - I - 0x013EC7 04:9EB7: 20        .byte $20
- D 0 - I - 0x013EC8 04:9EB8: 00        .byte $00
- D 0 - I - 0x013EC9 04:9EB9: 4B        .byte $4B

tbl_ptr_rooms4_5_with_NPCs:
- D 0 - I - 0x013ECA 04:9EBA: 20        .byte $20
- D 0 - I - 0x013ECB 04:9EBB: 00        .byte $00
- D 0 - I - 0x013ECC 04:9EBC: 4C        .byte $4C

tbl_ptr_rooms4_6_with_NPCs:
- D 0 - I - 0x013ECD 04:9EBD: 20        .byte $20
- D 0 - I - 0x013ECE 04:9EBE: 00        .byte $00
- D 0 - I - 0x013ECF 04:9EBF: 4D        .byte $4D

tbl_ptr_rooms4_7_with_NPCs:
- D 0 - I - 0x013ED0 04:9EC0: 22        .byte $22
- D 0 - I - 0x013ED1 04:9EC1: 06        .byte $06
- D - - - - 0x013ED2 04:9EC2: 4E        .byte $4E
- D 0 - I - 0x013ED3 04:9EC3: 4F        .byte $4F

tbl_ptr_rooms4_8_with_NPCs:
- D 0 - I - 0x013ED4 04:9EC4: 1E        .byte $1E
- D 0 - I - 0x013ED5 04:9EC5: 00        .byte $00
- D 0 - I - 0x013ED6 04:9EC6: 50        .byte $50

tbl_ptr_rooms4_9_with_NPCs:
- D 0 - I - 0x013ED7 04:9EC7: 1E        .byte $1E
- D 0 - I - 0x013ED8 04:9EC8: 00        .byte $00
- D 0 - I - 0x013ED9 04:9EC9: 51        .byte $51

tbl_ptr_rooms4_10_with_NPCs:
- D 0 - I - 0x013EDA 04:9ECA: 20        .byte $20
- D 0 - I - 0x013EDB 04:9ECB: 00        .byte $00
- D 0 - I - 0x013EDC 04:9ECC: 52        .byte $52

tbl_ptr_rooms4_11_with_NPCs:
- D 0 - I - 0x013EDD 04:9ECD: 1E        .byte $1E
- D 0 - I - 0x013EDE 04:9ECE: 00        .byte $00
- D 0 - I - 0x013EDF 04:9ECF: 53        .byte $53

tbl_ptr_rooms4_12_with_NPCs:
- D 0 - I - 0x013EE0 04:9ED0: 20        .byte $20
- D 0 - I - 0x013EE1 04:9ED1: 00        .byte $00
- D 0 - I - 0x013EE2 04:9ED2: 4D        .byte $4D

tbl_ptr_rooms4_13_with_NPCs:
- D 0 - I - 0x013EE3 04:9ED3: 22        .byte $22
- D 0 - I - 0x013EE4 04:9ED4: 06        .byte $06
- D - - - - 0x013EE5 04:9ED5: 4E        .byte $4E
- D 0 - I - 0x013EE6 04:9ED6: 54        .byte $54

tbl_ptr_rooms4_14_with_NPCs:
- D 0 - I - 0x013EE7 04:9ED7: 20        .byte $20
- D 0 - I - 0x013EE8 04:9ED8: 00        .byte $00
- D 0 - I - 0x013EE9 04:9ED9: 55        .byte $55

tbl_ptr_rooms4_15_with_NPCs:
- D 0 - I - 0x013EEA 04:9EDA: 1E        .byte $1E
- D 0 - I - 0x013EEB 04:9EDB: 00        .byte $00
- D 0 - I - 0x013EEC 04:9EDC: 56        .byte $56

tbl_ptr_rooms4_16_with_NPCs:
- D 0 - I - 0x013EED 04:9EDD: 20        .byte $20
- D 0 - I - 0x013EEE 04:9EDE: 00        .byte $00
- D 0 - I - 0x013EEF 04:9EDF: 57        .byte $57

tbl_ptr_rooms4_17_with_NPCs:
- D 0 - I - 0x013EF0 04:9EE0: 20        .byte $20
- D 0 - I - 0x013EF1 04:9EE1: 00        .byte $00
- D 0 - I - 0x013EF2 04:9EE2: 58        .byte $58

tbl_ptr_rooms4_18_with_NPCs:
- D 0 - I - 0x013EF3 04:9EE3: 1E        .byte $1E
- D 0 - I - 0x013EF4 04:9EE4: 00        .byte $00
- D 0 - I - 0x013EF5 04:9EE5: 59        .byte $59

tbl_ptr_rooms4_19_with_NPCs:
- D 0 - I - 0x013EF6 04:9EE6: 22        .byte $22
- D 0 - I - 0x013EF7 04:9EE7: 06        .byte $06
- D - - - - 0x013EF8 04:9EE8: 4E        .byte $4E
- D 0 - I - 0x013EF9 04:9EE9: 5A        .byte $5A

tbl_ptr_rooms4_20_with_NPCs:
- D 0 - I - 0x013EFA 04:9EEA: 1E        .byte $1E
- D 0 - I - 0x013EFB 04:9EEB: 00        .byte $00
- D 0 - I - 0x013EFC 04:9EEC: 5B        .byte $5B

tbl_ptr_rooms4_21_with_NPCs:
- D 0 - I - 0x013EFD 04:9EED: 20        .byte $20
- D 0 - I - 0x013EFE 04:9EEE: 00        .byte $00
- D 0 - I - 0x013EFF 04:9EEF: 5C        .byte $5C

tbl_ptr_rooms4_22_with_NPCs:
- D 0 - I - 0x013F00 04:9EF0: 20        .byte $20
- D 0 - I - 0x013F01 04:9EF1: 00        .byte $00
- D 0 - I - 0x013F02 04:9EF2: 4D        .byte $4D

tbl_ptr_rooms4_23_with_NPCs:
- D 0 - I - 0x013F03 04:9EF3: 22        .byte $22
- D 0 - I - 0x013F04 04:9EF4: 06        .byte $06
- D - - - - 0x013F05 04:9EF5: 4E        .byte $4E
- D 0 - I - 0x013F06 04:9EF6: 5D        .byte $5D

tbl_ptr_rooms4_24_with_NPCs:
- D 0 - I - 0x013F07 04:9EF7: 20        .byte $20
- D 0 - I - 0x013F08 04:9EF8: 00        .byte $00
- D 0 - I - 0x013F09 04:9EF9: 5E        .byte $5E

tbl_ptr_rooms4_25_with_NPCs:
- D 0 - I - 0x013F0A 04:9EFA: 20        .byte $20
- D 0 - I - 0x013F0B 04:9EFB: 00        .byte $00
- D 0 - I - 0x013F0C 04:9EFC: 5F        .byte $5F

tbl_ptr_rooms4_26_with_NPCs:
- D 0 - I - 0x013F0D 04:9EFD: 20        .byte $20
- D 0 - I - 0x013F0E 04:9EFE: 00        .byte $00
- D 0 - I - 0x013F0F 04:9EFF: 60        .byte $60

tbl_ptr_rooms4_27_with_NPCs:
- D 0 - I - 0x013F10 04:9F00: 20        .byte $20
- D 0 - I - 0x013F11 04:9F01: 00        .byte $00
- D 0 - I - 0x013F12 04:9F02: 61        .byte $61

tbl_ptr_rooms4_28_with_NPCs:
- D 0 - I - 0x013F13 04:9F03: 1E        .byte $1E
- D 0 - I - 0x013F14 04:9F04: 00        .byte $00
- D 0 - I - 0x013F15 04:9F05: 62        .byte $62

; reserved
- D - - - - 0x013F16 04:9F06: C6        .byte $C6, $FF, $00, $07, $07, $00, $C6, $C6, $C6, $DF, $FF, $3F, $7E, $F8, $F8, $F8
- D - - - - 0x013F26 04:9F16: 7C        .byte $7C, $1E, $DF, $3F, $7E, $F8, $FF, $FF, $7F, $1F, $00, $C0, $98, $18, $00, $00
- D - - - - 0x013F36 04:9F26: 00        .byte $00, $00, $00, $C0, $80, $00, $30, $70, $60, $E0, $00, $00, $0F, $1F, $1F, $0F
- D - - - - 0x013F46 04:9F36: 00        .byte $00, $00, $C0, $C0, $C1, $C5, $C1, $F3, $FC, $F0, $0C, $38, $F0, $70, $38, $1C
- D - - - - 0x013F56 04:9F46: 0E        .byte $0E, $0E, $0C, $38, $F0, $60, $18, $1C, $0E, $0E, $1E, $3C, $78, $F8, $F8, $F8
- D - - - - 0x013F66 04:9F56: 7C        .byte $7C, $1E, $1F, $3D, $79, $F9, $FF, $FF, $7F, $1F, $00, $00, $30, $30, $03, $03
- D - - - - 0x013F76 04:9F66: 00        .byte $00, $00, $00, $00, $00, $00, $60, $64, $EE, $DC, $00, $00, $0F, $1F, $1F, $0F
- D - - - - 0x013F86 04:9F76: 00        .byte $00, $00, $F8, $F0, $E1, $C5, $C1, $F3, $FC, $F0, $00, $80, $F0, $F8, $F8, $F8
- D - - - - 0x013F96 04:9F86: F8        .byte $F8, $F8, $00, $80, $88, $84, $84, $84, $84, $84, $F8, $F8, $78, $78, $70, $00
- D - - - - 0x013FA6 04:9F96: 00        .byte $00, $00, $84, $84, $84, $84, $8C, $F0, $00, $00, $00, $00, $00, $F8, $38, $F8
- D - - - - 0x013FB6 04:9FA6: 38        .byte $38, $F0, $00, $00, $F8, $08, $F0, $C0, $08, $F0, $00, $00, $38, $7C, $7C, $7C
- D - - - - 0x013FC6 04:9FB6: 78        .byte $78, $7E, $00, $00, $04, $02, $32, $1A, $06, $7E, $00, $00, $38, $7C, $7C, $7C
- D - - - - 0x013FD6 04:9FC6: 78        .byte $78, $7E, $00, $00, $04, $02, $02, $02, $06, $7E, $00, $2C, $42, $58, $1A, $42
- D - - - - 0x013FE6 04:9FD6: 34        .byte $34, $00, $00, $3C, $7E, $66, $66, $7E, $3C, $00, $08, $66, $5A, $BC, $3D, $5A
- D - - - - 0x013FF6 04:9FE6: 66        .byte $66, $10, $18, $7E, $66, $C3, $C3, $66, $7E, $18, $00, $00, $00, $00, $00, $00
- D - - - - 0x014006 04:9FF6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

.out .sprintf("Free bytes in bank 04_2: 0x%X [%d]", ($A000 - *), ($A000 - *))



