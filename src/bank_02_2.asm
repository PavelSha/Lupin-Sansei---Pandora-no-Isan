.segment "BANK_02_2"
.include "bank_ram.inc"
.org $8000  ; for listing file
; 0x00A010-0x00C00F

.export loc_level4_metatiles
.export loc_level4_unique_screen_indexes
.export loc_level4_unique_screen_attrs
.export loc_level4_boss_screen_indexes
.export loc_level4_boss_screen_attrs
.export loc_level_racing_metatiles
.export loc_level_racing_screen_u02_indexes
.export loc_level_racing_screen_u03_indexes
.export loc_level_racing_screen_u04_indexes
.export loc_level_racing_screen_u05_indexes
.export loc_level_racing_screen_u06_indexes
.export loc_level_racing_screen_u07_indexes
.export loc_level_racing_screen_u08_indexes
.export loc_level_racing_screen_u09_indexes
.export loc_level_racing_screen_u10_indexes
.export loc_level_racing_screen_u11_indexes
.export loc_level_racing_screen_u12_indexes
.export loc_level_racing_screen_u13_indexes
.export loc_level_racing_screen_u14_indexes
.export loc_level_racing_screen_u15_indexes
.export loc_level_racing_screen_u16_indexes
.export loc_level_racing_screen_u17_indexes
.export loc_level_racing_screen_u00_attrs
.export loc_level_racing_screen_u01_attrs
.export loc_level_racing_screen_u02_attrs
.export loc_level_racing_screen_u03_attrs
.export loc_level_racing_screen_u04_attrs
.export loc_level_racing_screen_u05_attrs
.export loc_level_racing_screen_u06_attrs
.export loc_level_racing_screen_u07_attrs
.export loc_level_racing_screen_u08_attrs
.export loc_level_racing_screen_u09_attrs
.export loc_level_racing_screen_u10_attrs
.export loc_level_racing_screen_u11_attrs
.export loc_level_racing_screen_u12_attrs
.export loc_level_racing_screen_u13_attrs
.export loc_level_racing_screen_u14_attrs
.export loc_level_racing_screen_u15_attrs
.export loc_level_racing_screen_u16_attrs
.export loc_level_racing_screen_u17_attrs
.export loc_level3_unique_screen_indexes
.export loc_level2_unique_screen1_indexes
.export loc_level2_unique_screen2_indexes
.export loc_level1_unique_screen_indexes
.export loc_level3_unique_screen_attrs
.export loc_level2_unique_screen1_attrs
.export loc_level2_unique_screen2_attrs
.export loc_level1_unique_screen_attrs

- D 0 - - - 0x00A010 02:8000: B6 81     .addr loc_Zenigata_right_frame_1   ; CPU Address $81B6
- D 0 - I - 0x00A012 02:8002: D3 81     .addr loc_Zenigata_left_frame_1    ; CPU Address $81D3
- D 0 - I - 0x00A014 02:8004: F0 81     .addr loc_Zenigata_right_frame_2   ; CPU Address $81F0
- D 0 - I - 0x00A016 02:8006: 0D 82     .addr loc_Zenigata_left_frame_2    ; CPU Address $820D
- D 0 - I - 0x00A018 02:8008: 2A 82     .addr loc_Zenigata_right_frame_3   ; CPU Address $822A
- D 0 - I - 0x00A01A 02:800A: 4B 82     .addr loc_Zenigata_left_frame_3    ; CPU Address $824B
- D - - - - 0x00A01C 02:800C: 6C 82     .addr loc_Zenigata_right_frame_4   ; CPU Address $826C
- D - - - - 0x00A01E 02:800E: 8D 82     .addr loc_Zenigata_left_frame_4    ; CPU Address $828D
- D 0 - I - 0x00A020 02:8010: AE 82     .addr loc_Zenigata_right_frame_5   ; CPU Address $82AE
- D 0 - I - 0x00A022 02:8012: DB 82     .addr loc_Zenigata_left_frame_5    ; CPU Address $82DB
- D 0 - I - 0x00A024 02:8014: 08 83     .addr loc_Zenigata_right_frame_6   ; CPU Address $8308
- D 0 - I - 0x00A026 02:8016: 2D 83     .addr loc_Zenigata_left_frame_6    ; CPU Address $832D
- D 0 - I - 0x00A028 02:8018: 52 83     .addr loc_Zenigata_right_frame_7   ; CPU Address $8352
- D 0 - I - 0x00A02A 02:801A: 6B 83     .addr loc_Zenigata_left_frame_7    ; CPU Address $836B

- D 0 - I - 0x00A02C 02:801C: 38 80     .addr loc_diver_right_frame_1   ; CPU Address $8038
- D 0 - I - 0x00A02E 02:801E: 51 80     .addr loc_diver_left_frame_1    ; CPU Address $8051
- D 0 - I - 0x00A030 02:8020: 6A 80     .addr loc_diver_right_frame_2   ; CPU Address $806A
- D 0 - I - 0x00A032 02:8022: 83 80     .addr loc_diver_left_frame_2    ; CPU Address $8083
- D 0 - I - 0x00A034 02:8024: 9C 80     .addr loc_diver_right_frame_3   ; CPU Address $809C
- D 0 - I - 0x00A036 02:8026: B5 80     .addr loc_diver_left_frame_3    ; CPU Address $80B5
- D 0 - I - 0x00A038 02:8028: CE 80     .addr loc_diver_right_frame_4   ; CPU Address $80CE
- D 0 - I - 0x00A03A 02:802A: EB 80     .addr loc_diver_left_frame_4    ; CPU Address $80EB
- D 0 - I - 0x00A03C 02:802C: 08 81     .addr loc_diver_right_frame_5   ; CPU Address $8108
- D 0 - I - 0x00A03E 02:802E: 25 81     .addr loc_diver_left_frame_5    ; CPU Address $8125
- D 0 - I - 0x00A040 02:8030: 42 81     .addr loc_diver_right_frame_6   ; CPU Address $8142
- D 0 - I - 0x00A042 02:8032: 5F 81     .addr loc_diver_left_frame_6    ; CPU Address $815F
- D 0 - I - 0x00A044 02:8034: 7C 81     .addr loc_diver_right_frame_7   ; CPU Address $817C
- D 0 - I - 0x00A046 02:8036: 99 81     .addr loc_diver_left_frame_7    ; CPU Address $8199

loc_diver_right_frame_1:
- D 0 - I - 0x00A048 02:8038: 06        .byte $06
- D 0 - I - 0x00A049 02:8039: E0        .byte $E0, $B4, $00, $00
- D 0 - I - 0x00A04D 02:803D: E8        .byte $E8, $B3, $00, $F8
- D 0 - I - 0x00A051 02:8041: E8        .byte $E8, $B5, $00, $00
- D 0 - I - 0x00A055 02:8045: F0        .byte $F0, $B0, $00, $F0
- D 0 - I - 0x00A059 02:8049: F0        .byte $F0, $B2, $00, $F8
- D 0 - I - 0x00A05D 02:804D: F8        .byte $F8, $B1, $00, $F0

loc_diver_left_frame_1:
- D 0 - I - 0x00A061 02:8051: 06        .byte $06
- D 0 - I - 0x00A062 02:8052: E0        .byte $E0, $B4, $40, $F8
- D 0 - I - 0x00A066 02:8056: E8        .byte $E8, $B3, $40, $00
- D 0 - I - 0x00A06A 02:805A: E8        .byte $E8, $B5, $40, $F8
- D 0 - I - 0x00A06E 02:805E: F0        .byte $F0, $B0, $40, $08
- D 0 - I - 0x00A072 02:8062: F0        .byte $F0, $B2, $40, $00
- D 0 - I - 0x00A076 02:8066: F8        .byte $F8, $B1, $40, $08

loc_diver_right_frame_2:
- D 0 - I - 0x00A07A 02:806A: 06        .byte $06
- D 0 - I - 0x00A07B 02:806B: E0        .byte $E0, $B4, $00, $FF
- D 0 - I - 0x00A07F 02:806F: E8        .byte $E8, $B3, $00, $F7
- D 0 - I - 0x00A083 02:8073: E8        .byte $E8, $B5, $00, $FF
- D 0 - I - 0x00A087 02:8077: F0        .byte $F0, $B6, $00, $F0
- D 0 - I - 0x00A08B 02:807B: F0        .byte $F0, $B8, $00, $F8
- D 0 - I - 0x00A08F 02:807F: F8        .byte $F8, $B7, $00, $F0

loc_diver_left_frame_2:
- D 0 - I - 0x00A093 02:8083: 06        .byte $06
- D 0 - I - 0x00A094 02:8084: E0        .byte $E0, $B4, $40, $F9
- D 0 - I - 0x00A098 02:8088: E8        .byte $E8, $B3, $40, $01
- D 0 - I - 0x00A09C 02:808C: E8        .byte $E8, $B5, $40, $F9
- D 0 - I - 0x00A0A0 02:8090: F0        .byte $F0, $B6, $40, $08
- D 0 - I - 0x00A0A4 02:8094: F0        .byte $F0, $B8, $40, $00
- D 0 - I - 0x00A0A8 02:8098: F8        .byte $F8, $B7, $40, $08

loc_diver_right_frame_3:
- D 0 - I - 0x00A0AC 02:809C: 06        .byte $06
- D 0 - I - 0x00A0AD 02:809D: E0        .byte $E0, $B4, $00, $FF
- D 0 - I - 0x00A0B1 02:80A1: E8        .byte $E8, $B3, $00, $F7
- D 0 - I - 0x00A0B5 02:80A5: E8        .byte $E8, $B5, $00, $FF
- D 0 - I - 0x00A0B9 02:80A9: F0        .byte $F0, $BB, $00, $F8
- D 0 - I - 0x00A0BD 02:80AD: F3        .byte $F3, $B9, $00, $F0
- D 0 - I - 0x00A0C1 02:80B1: F8        .byte $F8, $BA, $00, $F4

loc_diver_left_frame_3:
- D 0 - I - 0x00A0C5 02:80B5: 06        .byte $06
- D 0 - I - 0x00A0C6 02:80B6: E0        .byte $E0, $B4, $40, $F9
- D 0 - I - 0x00A0CA 02:80BA: E8        .byte $E8, $B3, $40, $01
- D 0 - I - 0x00A0CE 02:80BE: E8        .byte $E8, $B5, $40, $F9
- D 0 - I - 0x00A0D2 02:80C2: F0        .byte $F0, $BB, $40, $00
- D 0 - I - 0x00A0D6 02:80C6: F3        .byte $F3, $B9, $40, $08
- D 0 - I - 0x00A0DA 02:80CA: F8        .byte $F8, $BA, $40, $04

loc_diver_right_frame_4:
- D 0 - I - 0x00A0DE 02:80CE: 07        .byte $07
- D 0 - I - 0x00A0DF 02:80CF: E8        .byte $E8, $BE, $00, $F8
- D 0 - I - 0x00A0E3 02:80D3: E8        .byte $E8, $80, $00, $00
- D 0 - I - 0x00A0E7 02:80D7: E8        .byte $E8, $82, $00, $08
- D 0 - I - 0x00A0EB 02:80DB: F0        .byte $F0, $BD, $00, $F0
- D 0 - I - 0x00A0EF 02:80DF: F0        .byte $F0, $BF, $00, $F8
- D 0 - I - 0x00A0F3 02:80E3: F0        .byte $F0, $81, $00, $00
- D 0 - I - 0x00A0F7 02:80E7: F8        .byte $F8, $BC, $00, $F1

loc_diver_left_frame_4:
- D 0 - I - 0x00A0FB 02:80EB: 07        .byte $07
- D 0 - I - 0x00A0FC 02:80EC: E8        .byte $E8, $BE, $40, $00
- D 0 - I - 0x00A100 02:80F0: E8        .byte $E8, $80, $40, $F8
- D 0 - I - 0x00A104 02:80F4: E8        .byte $E8, $82, $40, $F0
- D 0 - I - 0x00A108 02:80F8: F0        .byte $F0, $BD, $40, $08
- D 0 - I - 0x00A10C 02:80FC: F0        .byte $F0, $BF, $40, $00
- D 0 - I - 0x00A110 02:8100: F0        .byte $F0, $81, $40, $F8
- D 0 - I - 0x00A114 02:8104: F8        .byte $F8, $BC, $40, $07

loc_diver_right_frame_5:
- D 0 - I - 0x00A118 02:8108: 07        .byte $07
- D 0 - I - 0x00A119 02:8109: E0        .byte $E0, $84, $00, $F8
- D 0 - I - 0x00A11D 02:810D: E8        .byte $E8, $85, $00, $F8
- D 0 - I - 0x00A121 02:8111: E8        .byte $E8, $87, $00, $00
- D 0 - I - 0x00A125 02:8115: F0        .byte $F0, $86, $00, $F8
- D 0 - I - 0x00A129 02:8119: F0        .byte $F0, $88, $00, $00
- D 0 - I - 0x00A12D 02:811D: F8        .byte $F8, $89, $00, $00
- D 0 - I - 0x00A131 02:8121: F7        .byte $F7, $83, $00, $08

loc_diver_left_frame_5:
- D 0 - I - 0x00A135 02:8125: 07        .byte $07
- D 0 - I - 0x00A136 02:8126: E0        .byte $E0, $84, $40, $00
- D 0 - I - 0x00A13A 02:812A: E8        .byte $E8, $85, $40, $00
- D 0 - I - 0x00A13E 02:812E: E8        .byte $E8, $87, $40, $F8
- D 0 - I - 0x00A142 02:8132: F0        .byte $F0, $86, $40, $00
- D 0 - I - 0x00A146 02:8136: F0        .byte $F0, $88, $40, $F8
- D 0 - I - 0x00A14A 02:813A: F8        .byte $F8, $89, $40, $F8
- D 0 - I - 0x00A14E 02:813E: F7        .byte $F7, $83, $40, $F0

loc_diver_right_frame_6:
- D 0 - I - 0x00A152 02:8142: 07        .byte $07
- D 0 - I - 0x00A153 02:8143: E8        .byte $E8, $BC, $C0, $07
- D 0 - I - 0x00A157 02:8147: F0        .byte $F0, $81, $C0, $F8
- D 0 - I - 0x00A15B 02:814B: F0        .byte $F0, $BF, $C0, $00
- D 0 - I - 0x00A15F 02:814F: F0        .byte $F0, $BD, $C0, $08
- D 0 - I - 0x00A163 02:8153: F8        .byte $F8, $82, $C0, $F0
- D 0 - I - 0x00A167 02:8157: F8        .byte $F8, $80, $C0, $F8
- D 0 - I - 0x00A16B 02:815B: F8        .byte $F8, $BE, $C0, $00

loc_diver_left_frame_6:
- D 0 - I - 0x00A16F 02:815F: 07        .byte $07
- D 0 - I - 0x00A170 02:8160: E8        .byte $E8, $BC, $80, $F1
- D 0 - I - 0x00A174 02:8164: F0        .byte $F0, $81, $80, $00
- D 0 - I - 0x00A178 02:8168: F0        .byte $F0, $BF, $80, $F8
- D 0 - I - 0x00A17C 02:816C: F0        .byte $F0, $BD, $80, $F0
- D 0 - I - 0x00A180 02:8170: F8        .byte $F8, $82, $80, $08
- D 0 - I - 0x00A184 02:8174: F8        .byte $F8, $80, $80, $00
- D 0 - I - 0x00A188 02:8178: F8        .byte $F8, $BE, $80, $F8

loc_diver_right_frame_7:
- D 0 - I - 0x00A18C 02:817C: 07        .byte $07
- D 0 - I - 0x00A18D 02:817D: E1        .byte $E1, $83, $C0, $F0
- D 0 - I - 0x00A191 02:8181: E0        .byte $E0, $89, $C0, $F8
- D 0 - I - 0x00A195 02:8185: E8        .byte $E8, $88, $C0, $F8
- D 0 - I - 0x00A199 02:8189: E8        .byte $E8, $86, $C0, $00
- D 0 - I - 0x00A19D 02:818D: F0        .byte $F0, $87, $C0, $F8
- D 0 - I - 0x00A1A1 02:8191: F0        .byte $F0, $85, $C0, $00
- D 0 - I - 0x00A1A5 02:8195: F8        .byte $F8, $84, $C0, $00

loc_diver_left_frame_7:
- D 0 - I - 0x00A1A9 02:8199: 07        .byte $07
- D 0 - I - 0x00A1AA 02:819A: E1        .byte $E1, $83, $80, $08
- D 0 - I - 0x00A1AE 02:819E: E0        .byte $E0, $89, $80, $00
- D 0 - I - 0x00A1B2 02:81A2: E8        .byte $E8, $88, $80, $00
- D 0 - I - 0x00A1B6 02:81A6: E8        .byte $E8, $86, $80, $F8
- D 0 - I - 0x00A1BA 02:81AA: F0        .byte $F0, $87, $80, $00
- D 0 - I - 0x00A1BE 02:81AE: F0        .byte $F0, $85, $80, $F8
- D 0 - I - 0x00A1C2 02:81B2: F8        .byte $F8, $84, $80, $F8

loc_Zenigata_right_frame_1:
- D 0 - I - 0x00A1C6 02:81B6: 07        .byte $07
- D 0 - I - 0x00A1C7 02:81B7: E0        .byte $E0, $80, $00, $F8
- D 0 - I - 0x00A1CB 02:81BB: E0        .byte $E0, $82, $00, $00
- D 0 - I - 0x00A1CF 02:81BF: E8        .byte $E8, $81, $00, $F8
- D 0 - I - 0x00A1D3 02:81C3: E8        .byte $E8, $83, $00, $00
- D 0 - I - 0x00A1D7 02:81C7: F0        .byte $F0, $84, $00, $F8
- D 0 - I - 0x00A1DB 02:81CB: F0        .byte $F0, $86, $00, $00
- D 0 - I - 0x00A1DF 02:81CF: F8        .byte $F8, $87, $00, $00

loc_Zenigata_left_frame_1:
- D 0 - I - 0x00A1E3 02:81D3: 07        .byte $07
- D 0 - I - 0x00A1E4 02:81D4: E0        .byte $E0, $80, $40, $00
- D 0 - I - 0x00A1E8 02:81D8: E0        .byte $E0, $82, $40, $F8
- D 0 - I - 0x00A1EC 02:81DC: E8        .byte $E8, $81, $40, $00
- D 0 - I - 0x00A1F0 02:81E0: E8        .byte $E8, $83, $40, $F8
- D 0 - I - 0x00A1F4 02:81E4: F0        .byte $F0, $84, $40, $00
- D 0 - I - 0x00A1F8 02:81E8: F0        .byte $F0, $86, $40, $F8
- D 0 - I - 0x00A1FC 02:81EC: F8        .byte $F8, $87, $40, $F8

loc_Zenigata_right_frame_2:
- D 0 - I - 0x00A200 02:81F0: 07        .byte $07
- D 0 - I - 0x00A201 02:81F1: E0        .byte $E0, $80, $00, $F8
- D 0 - I - 0x00A205 02:81F5: E0        .byte $E0, $82, $00, $00
- D 0 - I - 0x00A209 02:81F9: E8        .byte $E8, $88, $00, $F8
- D 0 - I - 0x00A20D 02:81FD: E8        .byte $E8, $8A, $00, $00
- D 0 - I - 0x00A211 02:8201: F0        .byte $F0, $89, $00, $F8
- D 0 - I - 0x00A215 02:8205: F0        .byte $F0, $8B, $00, $00
- D 0 - I - 0x00A219 02:8209: F8        .byte $F8, $85, $00, $FA

loc_Zenigata_left_frame_2:
- D 0 - I - 0x00A21D 02:820D: 07        .byte $07
- D 0 - I - 0x00A21E 02:820E: E0        .byte $E0, $80, $40, $00
- D 0 - I - 0x00A222 02:8212: E0        .byte $E0, $82, $40, $F8
- D 0 - I - 0x00A226 02:8216: E8        .byte $E8, $88, $40, $00
- D 0 - I - 0x00A22A 02:821A: E8        .byte $E8, $8A, $40, $F8
- D 0 - I - 0x00A22E 02:821E: F0        .byte $F0, $89, $40, $00
- D 0 - I - 0x00A232 02:8222: F0        .byte $F0, $8B, $40, $F8
- D 0 - I - 0x00A236 02:8226: F8        .byte $F8, $85, $40, $FE

loc_Zenigata_right_frame_3:
- D 0 - I - 0x00A23A 02:822A: 08        .byte $08
- D 0 - I - 0x00A23B 02:822B: E0        .byte $E0, $80, $00, $FA
- D 0 - I - 0x00A23F 02:822F: E0        .byte $E0, $82, $00, $02
- D 0 - I - 0x00A243 02:8233: E8        .byte $E8, $8C, $00, $FA
- D 0 - I - 0x00A247 02:8237: E8        .byte $E8, $8E, $00, $02
- D 0 - I - 0x00A24B 02:823B: F0        .byte $F0, $8D, $00, $F8
- D 0 - I - 0x00A24F 02:823F: F0        .byte $F0, $8F, $00, $00
- D 0 - I - 0x00A253 02:8243: F8        .byte $F8, $90, $00, $F8
- D 0 - I - 0x00A257 02:8247: F8        .byte $F8, $92, $00, $00

loc_Zenigata_left_frame_3:
- D 0 - I - 0x00A25B 02:824B: 08        .byte $08
- D 0 - I - 0x00A25C 02:824C: E0        .byte $E0, $80, $40, $FE
- D 0 - I - 0x00A260 02:8250: E0        .byte $E0, $82, $40, $F6
- D 0 - I - 0x00A264 02:8254: E8        .byte $E8, $8C, $40, $FE
- D 0 - I - 0x00A268 02:8258: E8        .byte $E8, $8E, $40, $F6
- D 0 - I - 0x00A26C 02:825C: F0        .byte $F0, $8D, $40, $00
- D 0 - I - 0x00A270 02:8260: F0        .byte $F0, $8F, $40, $F8
- D 0 - I - 0x00A274 02:8264: F8        .byte $F8, $90, $40, $00
- D 0 - I - 0x00A278 02:8268: F8        .byte $F8, $92, $40, $F8

loc_Zenigata_right_frame_4:
- D - - - - 0x00A27C 02:826C: 08        .byte $08
- D - - - - 0x00A27D 02:826D: E1        .byte $E1, $94, $00, $F8
- D - - - - 0x00A281 02:8271: E1        .byte $E1, $96, $00, $00
- D - - - - 0x00A285 02:8275: E9        .byte $E9, $95, $00, $F8
- D - - - - 0x00A289 02:8279: E9        .byte $E9, $97, $00, $00
- D - - - - 0x00A28D 02:827D: F1        .byte $F1, $91, $40, $F8
- D - - - - 0x00A291 02:8281: F1        .byte $F1, $91, $00, $00
- D - - - - 0x00A295 02:8285: F9        .byte $F9, $93, $40, $F6
- D - - - - 0x00A299 02:8289: F9        .byte $F9, $93, $00, $02

loc_Zenigata_left_frame_4:
- D - - - - 0x00A29D 02:828D: 08        .byte $08
- D - - - - 0x00A29E 02:828E: E1        .byte $E1, $94, $40, $00
- D - - - - 0x00A2A2 02:8292: E1        .byte $E1, $96, $40, $F8
- D - - - - 0x00A2A6 02:8296: E9        .byte $E9, $95, $40, $00
- D - - - - 0x00A2AA 02:829A: E9        .byte $E9, $97, $40, $F8
- D - - - - 0x00A2AE 02:829E: F1        .byte $F1, $91, $40, $F8
- D - - - - 0x00A2B2 02:82A2: F1        .byte $F1, $91, $00, $00
- D - - - - 0x00A2B6 02:82A6: F9        .byte $F9, $93, $40, $F6
- D - - - - 0x00A2BA 02:82AA: F9        .byte $F9, $93, $00, $02

loc_Zenigata_right_frame_5:
- D 0 - I - 0x00A2BE 02:82AE: 0B        .byte $0B
- D 0 - I - 0x00A2BF 02:82AF: D7        .byte $D7, $99, $00, $02
- D 0 - I - 0x00A2C3 02:82B3: D9        .byte $D9, $9C, $40, $07
- D 0 - I - 0x00A2C7 02:82B7: E1        .byte $E1, $9D, $40, $08
- D 0 - I - 0x00A2CB 02:82BB: E1        .byte $E1, $9E, $40, $00
- D 0 - I - 0x00A2CF 02:82BF: E1        .byte $E1, $94, $00, $F8
- D 0 - I - 0x00A2D3 02:82C3: E9        .byte $E9, $9F, $40, $00
- D 0 - I - 0x00A2D7 02:82C7: E9        .byte $E9, $95, $00, $F8
- D 0 - I - 0x00A2DB 02:82CB: F1        .byte $F1, $91, $40, $F8
- D 0 - I - 0x00A2DF 02:82CF: F1        .byte $F1, $91, $00, $00
- D 0 - I - 0x00A2E3 02:82D3: F9        .byte $F9, $93, $40, $F6
- D 0 - I - 0x00A2E7 02:82D7: F9        .byte $F9, $93, $00, $02

loc_Zenigata_left_frame_5:
- D 0 - I - 0x00A2EB 02:82DB: 0B        .byte $0B
- D 0 - I - 0x00A2EC 02:82DC: D7        .byte $D7, $99, $40, $F6
- D 0 - I - 0x00A2F0 02:82E0: D9        .byte $D9, $9C, $00, $F1
- D 0 - I - 0x00A2F4 02:82E4: E1        .byte $E1, $9D, $00, $F0
- D 0 - I - 0x00A2F8 02:82E8: E1        .byte $E1, $9E, $00, $F8
- D 0 - I - 0x00A2FC 02:82EC: E1        .byte $E1, $94, $40, $00
- D 0 - I - 0x00A300 02:82F0: E9        .byte $E9, $9F, $00, $F8
- D 0 - I - 0x00A304 02:82F4: E9        .byte $E9, $95, $40, $00
- D 0 - I - 0x00A308 02:82F8: F1        .byte $F1, $91, $40, $F8
- D 0 - I - 0x00A30C 02:82FC: F1        .byte $F1, $91, $00, $00
- D 0 - I - 0x00A310 02:8300: F9        .byte $F9, $93, $40, $F6
- D 0 - I - 0x00A314 02:8304: F9        .byte $F9, $93, $00, $02

loc_Zenigata_right_frame_6:
- D 0 - I - 0x00A318 02:8308: 09        .byte $09
- D 0 - I - 0x00A319 02:8309: E1        .byte $E1, $98, $40, $08
- D 0 - I - 0x00A31D 02:830D: E1        .byte $E1, $9A, $40, $00
- D 0 - I - 0x00A321 02:8311: E1        .byte $E1, $94, $00, $F8
- D 0 - I - 0x00A325 02:8315: E9        .byte $E9, $9B, $40, $00
- D 0 - I - 0x00A329 02:8319: E9        .byte $E9, $95, $00, $F8
- D 0 - I - 0x00A32D 02:831D: F1        .byte $F1, $91, $40, $F8
- D 0 - I - 0x00A331 02:8321: F1        .byte $F1, $91, $00, $00
- D 0 - I - 0x00A335 02:8325: F9        .byte $F9, $93, $40, $F6
- D 0 - I - 0x00A339 02:8329: F9        .byte $F9, $93, $00, $02

loc_Zenigata_left_frame_6:
- D 0 - I - 0x00A33D 02:832D: 09        .byte $09
- D 0 - I - 0x00A33E 02:832E: E1        .byte $E1, $98, $00, $F0
- D 0 - I - 0x00A342 02:8332: E1        .byte $E1, $9A, $00, $F8
- D 0 - I - 0x00A346 02:8336: E1        .byte $E1, $94, $40, $00
- D 0 - I - 0x00A34A 02:833A: E9        .byte $E9, $9B, $00, $F8
- D 0 - I - 0x00A34E 02:833E: E9        .byte $E9, $95, $40, $00
- D 0 - I - 0x00A352 02:8342: F1        .byte $F1, $91, $40, $F8
- D 0 - I - 0x00A356 02:8346: F1        .byte $F1, $91, $00, $00
- D 0 - I - 0x00A35A 02:834A: F9        .byte $F9, $93, $40, $F6
- D 0 - I - 0x00A35E 02:834E: F9        .byte $F9, $93, $00, $02

loc_Zenigata_right_frame_7:
- D 0 - I - 0x00A362 02:8352: 06        .byte $06
- D 0 - I - 0x00A363 02:8353: E8        .byte $E8, $A3, $00, $F8
- D 0 - I - 0x00A367 02:8357: E8        .byte $E8, $A0, $00, $00
- D 0 - I - 0x00A36B 02:835B: F0        .byte $F0, $A4, $00, $F8
- D 0 - I - 0x00A36F 02:835F: F0        .byte $F0, $A1, $00, $00
- D 0 - I - 0x00A373 02:8363: F8        .byte $F8, $A5, $00, $F8
- D 0 - I - 0x00A377 02:8367: F8        .byte $F8, $A2, $00, $00

loc_Zenigata_left_frame_7:
- D 0 - I - 0x00A37B 02:836B: 06        .byte $06
- D 0 - I - 0x00A37C 02:836C: E8        .byte $E8, $A3, $40, $00
- D 0 - I - 0x00A380 02:8370: E8        .byte $E8, $A0, $40, $F8
- D 0 - I - 0x00A384 02:8374: F0        .byte $F0, $A4, $40, $00
- D 0 - I - 0x00A388 02:8378: F0        .byte $F0, $A1, $40, $F8
- D 0 - I - 0x00A38C 02:837C: F8        .byte $F8, $A5, $40, $00
- D 0 - I - 0x00A390 02:8380: F8        .byte $F8, $A2, $40, $F8

; reserve
- D - - - - 0x00A394 02:8384: DC        .byte $DC, $DD, $CE, $CF, $DE, $DF, $E0, $E1, $F0, $F1, $E2, $E3, $F2, $F3, $E4, $E5
- D - - - - 0x00A3A4 02:8394: F4        .byte $F4, $F5, $E6, $E7, $F6, $F7, $E8, $E9, $F8, $F9, $EA, $EB, $FA, $FB, $A4, $84
- D - - - - 0x00A3B4 02:83A4: 90        .byte $90, $85, $90, $85, $91, $85, $E2, $85, $53, $86, $BC, $86, $A1, $87, $1A, $88
- D - - - - 0x00A3C4 02:83B4: 8B        .byte $8B, $88, $08, $89, $95, $89, $1A, $8A, $9F, $8A, $2C, $8B, $C5, $8B, $69, $8C
- D - - - - 0x00A3D4 02:83C4: CA        .byte $CA, $8C, $37, $8D, $BC, $8D, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85
- D - - - - 0x00A3E4 02:83D4: 41        .byte $41, $8E, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85
- D - - - - 0x00A3F4 02:83E4: 90        .byte $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85
- D - - - - 0x00A404 02:83F4: 90        .byte $90, $85, $90, $85, $90, $85, $90, $85, $90, $85, $90, $85

loc_level4_metatiles:
- D 0 - I - 0x00A410 02:8400: 00        .byte $00, $00, $00, $00   ; 0x00
- D 0 - I - 0x00A414 02:8404: 80        .byte $80, $81, $82, $85
- D 0 - I - 0x00A418 02:8408: 84        .byte $84, $85, $86, $87
- D 0 - I - 0x00A41C 02:840C: 80        .byte $80, $81, $86, $87
- D 0 - I - 0x00A420 02:8410: CB        .byte $CB, $83, $CC, $87
- D 0 - I - 0x00A424 02:8414: 8D        .byte $8D, $83, $8F, $87
- D 0 - I - 0x00A428 02:8418: 00        .byte $00, $00, $00, $00
- D 0 - I - 0x00A42C 02:841C: B4        .byte $B4, $B5, $B6, $B7
- D 0 - I - 0x00A430 02:8420: 00        .byte $00, $B8, $00, $BA
- D 0 - I - 0x00A434 02:8424: B4        .byte $B4, $B9, $B6, $BB
- D 0 - I - 0x00A438 02:8428: 00        .byte $00, $00, $00, $00
- D 0 - I - 0x00A43C 02:842C: BC        .byte $BC, $BD, $BE, $BF
- D 0 - I - 0x00A440 02:8430: 00        .byte $00, $E7, $00, $E8
- D 0 - I - 0x00A444 02:8434: BC        .byte $BC, $B2, $BE, $B3
- D 0 - I - 0x00A448 02:8438: 91        .byte $91, $00, $92, $00
- D 0 - I - 0x00A44C 02:843C: 9A        .byte $9A, $9B, $9A, $9B
- D 0 - I - 0x00A450 02:8440: 80        .byte $80, $81, $F9, $89   ; 0x10
- D 0 - I - 0x00A454 02:8444: F9        .byte $F9, $8A, $F9, $00
- D 0 - I - 0x00A458 02:8448: F9        .byte $F9, $00, $F9, $00
- D 0 - I - 0x00A45C 02:844C: F9        .byte $F9, $00, $F9, $8A
- D 0 - I - 0x00A460 02:8450: F9        .byte $F9, $00, $90, $00
- D 0 - I - 0x00A464 02:8454: 8B        .byte $8B, $8B, $8D, $83
- D 0 - I - 0x00A468 02:8458: A0        .byte $A0, $A1, $A2, $A3
- D 0 - I - 0x00A46C 02:845C: A4        .byte $A4, $A5, $A6, $A7
- D 0 - I - 0x00A470 02:8460: A8        .byte $A8, $A9, $AA, $AB
- D 0 - I - 0x00A474 02:8464: 8B        .byte $8B, $8A, $8D, $83
- D 0 - I - 0x00A478 02:8468: 84        .byte $84, $85, $8B, $8B
- D 0 - I - 0x00A47C 02:846C: 84        .byte $84, $85, $8B, $8A
- D 0 - I - 0x00A480 02:8470: AF        .byte $AF, $D0, $AF, $AE
- D 0 - I - 0x00A484 02:8474: CE        .byte $CE, $CF, $CD, $B1
- D 0 - I - 0x00A488 02:8478: AF        .byte $AF, $AC, $AF, $AE
- D 0 - I - 0x00A48C 02:847C: AD        .byte $AD, $B0, $CD, $B1
- D 0 - I - 0x00A490 02:8480: 94        .byte $94, $95, $96, $97   ; 0x20
- D 0 - I - 0x00A494 02:8484: 98        .byte $98, $99, $98, $99
- D 0 - I - 0x00A498 02:8488: CB        .byte $CB, $83, $D1, $85
- D 0 - I - 0x00A49C 02:848C: D1        .byte $D1, $85, $CC, $87
- D 0 - I - 0x00A4A0 02:8490: D2        .byte $D2, $81, $00, $85
- D 0 - I - 0x00A4A4 02:8494: D2        .byte $D2, $85, $00, $87
- D 0 - I - 0x00A4A8 02:8498: 00        .byte $00, $81, $82, $85
- D 0 - I - 0x00A4AC 02:849C: 93        .byte $93, $00, $86, $87
- D 0 - I - 0x00A4B0 02:84A0: 00        .byte $00, $85, $86, $87
- D 0 - I - 0x00A4B4 02:84A4: 9C        .byte $9C, $00, $9E, $9F
- D 0 - I - 0x00A4B8 02:84A8: 00        .byte $00, $00, $92, $00
- D 0 - I - 0x00A4BC 02:84AC: 00        .byte $00, $85, $00, $87
- D 0 - I - 0x00A4C0 02:84B0: 93        .byte $93, $00, $82, $85
- D 0 - I - 0x00A4C4 02:84B4: 00        .byte $00, $81, $86, $87
- D 0 - I - 0x00A4C8 02:84B8: C2        .byte $C2, $C8, $C8, $C2
- D 0 - I - 0x00A4CC 02:84BC: C2        .byte $C2, $C8, $00, $00
- D - - - - 0x00A4D0 02:84C0: C0        .byte $C0, $C1, $C0, $C1   ; 0x30
- D 0 - I - 0x00A4D4 02:84C4: C2        .byte $C2, $D3, $D3, $D4
- D 0 - I - 0x00A4D8 02:84C8: C2        .byte $C2, $D3, $C8, $D3
- D 0 - I - 0x00A4DC 02:84CC: D3        .byte $D3, $D4, $D3, $D4
- D 0 - I - 0x00A4E0 02:84D0: C2        .byte $C2, $D3, $C8, $C2
- D 0 - I - 0x00A4E4 02:84D4: C2        .byte $C2, $C8, $C8, $C3
- D - - - - 0x00A4E8 02:84D8: C0        .byte $C0, $C0, $C0, $C1
- D - - - - 0x00A4EC 02:84DC: C1        .byte $C1, $C8, $C8, $C2
- D - - - - 0x00A4F0 02:84E0: C1        .byte $C1, $00, $C1, $00
- D 0 - I - 0x00A4F4 02:84E4: D3        .byte $D3, $D4, $C8, $D3
- D 0 - I - 0x00A4F8 02:84E8: 9E        .byte $9E, $9F, $9E, $9F
- D - - - - 0x00A4FC 02:84EC: 91        .byte $91, $D2, $92, $00
- D 0 - I - 0x00A500 02:84F0: C4        .byte $C4, $C5, $C6, $C7
- D - - - - 0x00A504 02:84F4: 00        .byte $00, $00, $C0, $C0
- D - - - - 0x00A508 02:84F8: C2        .byte $C2, $C8, $C1, $C2
- D 0 - I - 0x00A50C 02:84FC: D5        .byte $D5, $D6, $00, $00
- D 0 - I - 0x00A510 02:8500: D5        .byte $D5, $DA, $00, $00   ; 0x40
- D 0 - I - 0x00A514 02:8504: 8D        .byte $8D, $83, $F9, $8A
- D 0 - I - 0x00A518 02:8508: 8D        .byte $8D, $83, $8B, $8B
- D 0 - I - 0x00A51C 02:850C: 8D        .byte $8D, $83, $8B, $8A
- D 0 - I - 0x00A520 02:8510: F9        .byte $F9, $8A, $D8, $00
- D 0 - I - 0x00A524 02:8514: 80        .byte $80, $81, $F9, $8A
- D 0 - I - 0x00A528 02:8518: F9        .byte $F9, $8A, $90, $00
- D 0 - I - 0x00A52C 02:851C: AF        .byte $AF, $A0, $AF, $A2
- D 0 - I - 0x00A530 02:8520: A1        .byte $A1, $A4, $A3, $A6
- D 0 - I - 0x00A534 02:8524: A5        .byte $A5, $A8, $A7, $AA
- D 0 - I - 0x00A538 02:8528: A9        .byte $A9, $AF, $AB, $AF
- D 0 - I - 0x00A53C 02:852C: 91        .byte $91, $92, $92, $91
- D 0 - I - 0x00A540 02:8530: 91        .byte $91, $92, $91, $92
- D 0 - I - 0x00A544 02:8534: C9        .byte $C9, $CA, $00, $00
- D - - - - 0x00A548 02:8538: D7        .byte $D7, $D7, $D7, $D7
- D 0 - I - 0x00A54C 02:853C: 00        .byte $00, $00, $82, $85
- D 0 - I - 0x00A550 02:8540: 00        .byte $00, $00, $86, $87   ; 0x50
- D 0 - I - 0x00A554 02:8544: 00        .byte $00, $81, $00, $85
- D 0 - I - 0x00A558 02:8548: 00        .byte $00, $00, $C8, $C2
- D 0 - I - 0x00A55C 02:854C: 00        .byte $00, $00, $92, $00
- D 0 - I - 0x00A560 02:8550: 80        .byte $80, $81, $86, $87
- D 0 - I - 0x00A564 02:8554: C2        .byte $C2, $C8, $C8, $C2
- D 0 - I - 0x00A568 02:8558: C9        .byte $C9, $C9, $92, $00
- D 0 - I - 0x00A56C 02:855C: 00        .byte $00, $00, $9E, $9F
- D 0 - I - 0x00A570 02:8560: C9        .byte $C9, $D9, $00, $00
- D 0 - I - 0x00A574 02:8564: DB        .byte $DB, $DB, $00, $00
- D 0 - I - 0x00A578 02:8568: DC        .byte $DC, $DC, $00, $00
- D 0 - I - 0x00A57C 02:856C: DE        .byte $DE, $DE, $DF, $DF
- D 0 - I - 0x00A580 02:8570: 8D        .byte $8D, $83, $02, $85
- D 0 - I - 0x00A584 02:8574: 02        .byte $02, $85, $8F, $87
- D 0 - I - 0x00A588 02:8578: DD        .byte $DD, $C2, $8F, $87
- D 0 - I - 0x00A58C 02:857C: F9        .byte $F9, $89, $F9, $00
- D 0 - I - 0x00A590 02:8580: 84        .byte $84, $85, $F9, $89   ; 0x60
- D 0 - I - 0x00A594 02:8584: F9        .byte $F9, $00, $93, $00
- D 0 - I - 0x00A598 02:8588: 93        .byte $93, $00, $8F, $87
- D 0 - I - 0x00A59C 02:858C: E0        .byte $E0, $E1, $E2, $E3
- D 0 - I - 0x00A5A0 02:8590: E4        .byte $E4, $E5, $E4, $E5
- D 0 - I - 0x00A5A4 02:8594: E5        .byte $E5, $E5, $E5, $E5
- D 0 - I - 0x00A5A8 02:8598: E6        .byte $E6, $E6, $E6, $E6
- D 0 - I - 0x00A5AC 02:859C: 00        .byte $00, $00, $86, $87
- D 0 - I - 0x00A5B0 02:85A0: 00        .byte $00, $81, $00, $85
- D 0 - I - 0x00A5B4 02:85A4: 00        .byte $00, $EB, $00, $EC
- D 0 - I - 0x00A5B8 02:85A8: 00        .byte $00, $E9, $00, $EA
- D 0 - I - 0x00A5BC 02:85AC: F5        .byte $F5, $F7, $F7, $F5
- D 0 - I - 0x00A5C0 02:85B0: F5        .byte $F5, $F9, $F7, $F9
- D 0 - I - 0x00A5C4 02:85B4: FB        .byte $FB, $F7, $00, $F5
- D 0 - I - 0x00A5C8 02:85B8: 00        .byte $00, $F7, $00, $F5
- D 0 - I - 0x00A5CC 02:85BC: F5        .byte $F5, $FC, $F7, $F5
- D 0 - I - 0x00A5D0 02:85C0: 00        .byte $00, $F7, $F7, $F5   ; 0x70
- D 0 - I - 0x00A5D4 02:85C4: F5        .byte $F5, $F7, $F9, $8A
- D 0 - I - 0x00A5D8 02:85C8: F9        .byte $F9, $00, $F9, $00
- D 0 - I - 0x00A5DC 02:85CC: F9        .byte $F9, $8A, $FC, $00
- D 0 - I - 0x00A5E0 02:85D0: F5        .byte $F5, $F7, $8B, $8B
- D 0 - I - 0x00A5E4 02:85D4: F5        .byte $F5, $F7, $8B, $8A
- D 0 - I - 0x00A5E8 02:85D8: 8B        .byte $8B, $8B, $F7, $F5
- D 0 - I - 0x00A5EC 02:85DC: 8B        .byte $8B, $8A, $F7, $F5
- D 0 - I - 0x00A5F0 02:85E0: F8        .byte $F8, $F8, $A0, $A1
- D 0 - I - 0x00A5F4 02:85E4: F8        .byte $F8, $F8, $A4, $A5
- D 0 - I - 0x00A5F8 02:85E8: F8        .byte $F8, $F8, $A8, $A9
- D 0 - I - 0x00A5FC 02:85EC: A2        .byte $A2, $A3, $A0, $A1
- D 0 - I - 0x00A600 02:85F0: A6        .byte $A6, $A7, $A4, $A5
- D 0 - I - 0x00A604 02:85F4: AA        .byte $AA, $AB, $A8, $A9
- D 0 - I - 0x00A608 02:85F8: A2        .byte $A2, $A3, $00, $00
- D 0 - I - 0x00A60C 02:85FC: A6        .byte $A6, $A7, $00, $00
- D 0 - I - 0x00A610 02:8600: AA        .byte $AA, $AB, $00, $00   ; 0x80
- D 0 - I - 0x00A614 02:8604: D7        .byte $D7, $F0, $D7, $F2
- D 0 - I - 0x00A618 02:8608: F1        .byte $F1, $F4, $F3, $F6
- D 0 - I - 0x00A61C 02:860C: F8        .byte $F8, $F8, $F9, $FB
- D 0 - I - 0x00A620 02:8610: F9        .byte $F9, $00, $00, $00
- D 0 - I - 0x00A624 02:8614: 00        .byte $00, $EE, $00, $C2
- D 0 - I - 0x00A628 02:8618: 00        .byte $00, $C8, $00, $C2
- D 0 - I - 0x00A62C 02:861C: 00        .byte $00, $C8, $00, $EF
- D 0 - I - 0x00A630 02:8620: C2        .byte $C2, $C8, $D7, $F0
- D 0 - I - 0x00A634 02:8624: C2        .byte $C2, $C8, $F1, $F1
- D 0 - I - 0x00A638 02:8628: 93        .byte $93, $00, $F1, $F1
- D 0 - I - 0x00A63C 02:862C: 00        .byte $00, $00, $F1, $F4
- D 0 - I - 0x00A640 02:8630: D7        .byte $D7, $F2, $D7, $F0
- D 0 - I - 0x00A644 02:8634: F3        .byte $F3, $F3, $F1, $F1
- D 0 - I - 0x00A648 02:8638: F3        .byte $F3, $F6, $F1, $F4
- D 0 - I - 0x00A64C 02:863C: D7        .byte $D7, $F2, $90, $00
- D 0 - I - 0x00A650 02:8640: F3        .byte $F3, $F3, $00, $00   ; 0x90
- D 0 - I - 0x00A654 02:8644: F3        .byte $F3, $F6, $00, $00
- D 0 - I - 0x00A658 02:8648: 2A        .byte $2A, $2B, $2C, $2D
- D 0 - I - 0x00A65C 02:864C: FF        .byte $FF, $2D, $3E, $3F
- D 0 - I - 0x00A660 02:8650: F8        .byte $F8, $F8, $F5, $04
- D 0 - I - 0x00A664 02:8654: F7        .byte $F7, $05, $F5, $04
- D 0 - I - 0x00A668 02:8658: F8        .byte $F8, $F8, $34, $F5
- D 0 - I - 0x00A66C 02:865C: 37        .byte $37, $F7, $34, $F5
- D 0 - I - 0x00A670 02:8660: F7        .byte $F7, $05, $F5, $88
- D 0 - I - 0x00A674 02:8664: F7        .byte $F7, $9D, $F5, $04
- D 0 - I - 0x00A678 02:8668: 37        .byte $37, $F7, $8C, $F5
- D 0 - I - 0x00A67C 02:866C: 8E        .byte $8E, $F7, $34, $F5
- D 0 - I - 0x00A680 02:8670: F7        .byte $F7, $05, $00, $00
- D 0 - I - 0x00A684 02:8674: 37        .byte $37, $F7, $00, $00
- D 0 - I - 0x00A688 02:8678: F8        .byte $F8, $F8, $04, $05
- D 0 - I - 0x00A68C 02:867C: 88        .byte $88, $8C, $9D, $8E
- D 0 - I - 0x00A690 02:8680: 05        .byte $05, $04, $FD, $00   ; 0xA0
- D 0 - I - 0x00A694 02:8684: 93        .byte $93, $FA, $04, $05
- D 0 - I - 0x00A698 02:8688: 05        .byte $05, $04, $00, $00   ; 0xA2

; reverse
- D - - - - 0x00A69C 02:868C: 00        .byte $00, $00, $00, $00

; screen 4, C (level racing), horizontally - y axis, vertically - x axis
loc_level_racing_screen_u02_indexes:
- D 0 - I - 0x00A6A0 02:8690: 03        .byte $03, $03, $03, $03, $0B, $00, $00, $3B, $00, $C8, $AD, $C7
- D 0 - I - 0x00A6AC 02:869C: 03        .byte $03, $03, $03, $03, $0C, $00, $39, $3A, $00, $C8, $00, $C5
- D 0 - I - 0x00A6B8 02:86A8: 03        .byte $03, $03, $03, $03, $03, $21, $38, $00, $00, $2C, $00, $C6
- D 0 - I - 0x00A6C4 02:86B4: 03        .byte $03, $03, $03, $03, $03, $0B, $00, $00, $00, $C8, $00, $00
- D 0 - I - 0x00A6D0 02:86C0: 03        .byte $03, $03, $03, $03, $03, $0C, $00, $3C, $00, $C8, $AD, $00
- D 0 - I - 0x00A6DC 02:86CC: 03        .byte $03, $03, $03, $03, $03, $03, $C0, $1D, $00, $C8, $00, $C7
- D 0 - I - 0x00A6E8 02:86D8: 03        .byte $03, $03, $03, $03, $03, $03, $68, $00, $00, $C8, $00, $00
- D 0 - I - 0x00A6F4 02:86E4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $31, $C8, $00, $C7
- D 0 - I - 0x00A700 02:86F0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $32, $3D, $C8, $00, $C5
- D 0 - I - 0x00A70C 02:86FC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $30, $0E, $C8, $00, $C6
- D 0 - I - 0x00A718 02:8708: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0C, $33, $C8, $00, $C7
- D 0 - I - 0x00A724 02:8714: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $34, $C8, $00, $C5
- D 0 - I - 0x00A730 02:8720: 03        .byte $03, $03, $03, $03, $03, $03, $03, $BD, $1A, $C8, $00, $C6
- D 0 - I - 0x00A73C 02:872C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $04, $00, $C8, $00, $00
- D 0 - I - 0x00A748 02:8738: 03        .byte $03, $03, $03, $03, $03, $03, $03, $C1, $00, $2C, $AD, $00
- D 0 - I - 0x00A754 02:8744: 03        .byte $03, $03, $03, $03, $03, $03, $03, $C2, $00, $C8, $00, $00

; screen 0, 5, A, F, 16
loc_level_racing_screen_u03_indexes:
- D 0 - I - 0x00A760 02:8750: 03        .byte $03, $03, $03, $03, $03, $03, $03, $05, $00, $C8, $00, $00
- D 0 - I - 0x00A76C 02:875C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $06, $36, $C8, $00, $00
- D 0 - I - 0x00A778 02:8768: 03        .byte $03, $03, $03, $03, $03, $03, $03, $07, $25, $C8, $00, $C5
- D 0 - I - 0x00A784 02:8774: 03        .byte $03, $03, $03, $03, $03, $03, $03, $04, $1D, $C8, $00, $C6
- D 0 - I - 0x00A790 02:8780: 03        .byte $03, $03, $03, $03, $03, $03, $03, $08, $00, $2C, $AD, $00
- D 0 - I - 0x00A79C 02:878C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $6C, $00, $C8, $00, $00
- D 0 - I - 0x00A7A8 02:8798: 03        .byte $03, $03, $03, $03, $03, $03, $0F, $3A, $00, $C8, $00, $C5
- D 0 - I - 0x00A7B4 02:87A4: 03        .byte $03, $03, $03, $03, $03, $03, $0A, $00, $BC, $C8, $00, $C6
- D 0 - I - 0x00A7C0 02:87B0: 03        .byte $03, $03, $03, $03, $03, $03, $0B, $19, $1D, $C8, $AD, $00
- D 0 - I - 0x00A7CC 02:87BC: 03        .byte $03, $03, $03, $03, $03, $03, $0C, $B8, $00, $C8, $00, $00
- D 0 - I - 0x00A7D8 02:87C8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $B9, $00, $2D, $00, $C5
- D 0 - I - 0x00A7E4 02:87D4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0E, $00, $C8, $00, $C6
- D 0 - I - 0x00A7F0 02:87E0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $B7, $1A, $2D, $00, $00
- D 0 - I - 0x00A7FC 02:87EC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $BA, $00, $C8, $00, $C7
- D 0 - I - 0x00A808 02:87F8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $BB, $00, $C8, $AD, $00
- D 0 - I - 0x00A814 02:8804: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0E, $00, $C8, $00, $00

; screen 1
loc_level_racing_screen_u04_indexes:
- D 0 - I - 0x00A820 02:8810: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $00, $C8, $00, $C7
- D 0 - I - 0x00A82C 02:881C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0C, $00, $2D, $00, $00
- D 0 - I - 0x00A838 02:8828: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $00, $C8, $AD, $00
- D 0 - I - 0x00A844 02:8834: 03        .byte $03, $03, $03, $03, $03, $03, $03, $29, $00, $C8, $00, $C5
- D 0 - I - 0x00A850 02:8840: 03        .byte $03, $03, $03, $03, $03, $03, $03, $2A, $00, $C8, $00, $C6
- D 0 - I - 0x00A85C 02:884C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $2B, $00, $C8, $00, $00
- D 0 - I - 0x00A868 02:8858: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $2E, $2C, $00, $00
- D 0 - I - 0x00A874 02:8864: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $2F, $2D, $AD, $C7
- D 0 - I - 0x00A880 02:8870: 03        .byte $03, $03, $03, $03, $03, $03, $03, $29, $00, $C8, $00, $00
- D 0 - I - 0x00A88C 02:887C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $2A, $00, $C8, $00, $00
- D 0 - I - 0x00A898 02:8888: 03        .byte $03, $03, $03, $03, $03, $03, $03, $2B, $00, $C8, $00, $00
- D 0 - I - 0x00A8A4 02:8894: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $BC, $C8, $00, $C5
- D 0 - I - 0x00A8B0 02:88A0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $BD, $0D, $C8, $00, $C6
- D 0 - I - 0x00A8BC 02:88AC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $04, $1D, $C8, $00, $00
- D 0 - I - 0x00A8C8 02:88B8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $08, $00, $2D, $AD, $00
- D 0 - I - 0x00A8D4 02:88C4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $1D, $00, $C8, $00, $C7

; screen 6
loc_level_racing_screen_u05_indexes:
- D 0 - I - 0x00A8E0 02:88D0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $00, $C8, $00, $C7
- D 0 - I - 0x00A8EC 02:88DC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0C, $00, $C8, $00, $00
- D 0 - I - 0x00A8F8 02:88E8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $00, $C8, $AD, $C7
- D 0 - I - 0x00A904 02:88F4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $70, $2D, $00, $00
- D 0 - I - 0x00A910 02:8900: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $0C, $C8, $00, $C5
- D 0 - I - 0x00A91C 02:890C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $C8, $00, $C6
- D 0 - I - 0x00A928 02:8918: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $2C, $00, $00
- D 0 - I - 0x00A934 02:8924: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $4F, $00, $00
- D 0 - I - 0x00A940 02:8930: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $50, $00, $00
- D 0 - I - 0x00A94C 02:893C: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $52, $00, $00
- D 0 - I - 0x00A958 02:8948: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $C8, $00, $00
- D 0 - I - 0x00A964 02:8954: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $43, $2C, $00, $C5
- D 0 - I - 0x00A970 02:8960: 03        .byte $03, $03, $03, $03, $03, $03, $03, $47, $48, $C8, $00, $C6
- D 0 - I - 0x00A97C 02:896C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $43, $49, $C8, $00, $00
- D 0 - I - 0x00A988 02:8978: 03        .byte $03, $03, $03, $03, $03, $03, $03, $46, $49, $2D, $AD, $00
- D 0 - I - 0x00A994 02:8984: 03        .byte $03, $03, $03, $03, $03, $03, $03, $44, $49, $2C, $00, $C7

; screen 7, 9
loc_level_racing_screen_u06_indexes:
- D 0 - I - 0x00A9A0 02:8990: 03        .byte $03, $03, $03, $03, $03, $03, $03, $44, $49, $C8, $00, $C7
- D 0 - I - 0x00A9AC 02:899C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $44, $49, $2C, $AD, $00
- D 0 - I - 0x00A9B8 02:89A8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $5F, $60, $C8, $00, $C5
- D 0 - I - 0x00A9C4 02:89B4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $47, $48, $C8, $00, $C6
- D 0 - I - 0x00A9D0 02:89C0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $43, $49, $2D, $00, $00
- D 0 - I - 0x00A9DC 02:89CC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $45, $2C, $00, $00
- D 0 - I - 0x00A9E8 02:89D8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $C8, $00, $00
- D 0 - I - 0x00A9F4 02:89E4: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $C8, $AD, $C7
- D 0 - I - 0x00AA00 02:89F0: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $C8, $00, $C7
- D 0 - I - 0x00AA0C 02:89FC: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $4F, $00, $00
- D 0 - I - 0x00AA18 02:8A08: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $50, $00, $C5
- D 0 - I - 0x00AA24 02:8A14: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $0F, $50, $00, $C6
- D 0 - I - 0x00AA30 02:8A20: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $08, $52, $00, $00
- D 0 - I - 0x00AA3C 02:8A2C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $5C, $0D, $C8, $00, $00
- D 0 - I - 0x00AA48 02:8A38: 03        .byte $03, $03, $03, $03, $03, $03, $03, $5D, $11, $2D, $00, $00
- D 0 - I - 0x00AA54 02:8A44: 03        .byte $03, $03, $03, $03, $03, $03, $03, $5E, $00, $2C, $00, $C7

; screen 8
loc_level_racing_screen_u07_indexes:
- D 0 - I - 0x00AA60 02:8A50: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $00, $C8, $00, $C7
- D 0 - I - 0x00AA6C 02:8A5C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0C, $00, $2D, $00, $00
- D 0 - I - 0x00AA78 02:8A68: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $00, $2C, $00, $C5
- D 0 - I - 0x00AA84 02:8A74: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $70, $C8, $00, $C6
- D 0 - I - 0x00AA90 02:8A80: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $0C, $2C, $00, $C7
- D 0 - I - 0x00AA9C 02:8A8C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $C8, $00, $C5
- D 0 - I - 0x00AAA8 02:8A98: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $C8, $00, $C6
- D 0 - I - 0x00AAB4 02:8AA4: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $2D, $00, $00
- D 0 - I - 0x00AAC0 02:8AB0: 03        .byte $03, $03, $03, $03, $03, $3E, $3F, $41, $41, $2C, $00, $00
- D 0 - I - 0x00AACC 02:8ABC: 03        .byte $03, $03, $03, $03, $03, $03, $40, $03, $4A, $C8, $00, $00
- D 0 - I - 0x00AAD8 02:8AC8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $C8, $00, $C5
- D 0 - I - 0x00AAE4 02:8AD4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $4A, $C8, $00, $C6
- D 0 - I - 0x00AAF0 02:8AE0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $46, $2D, $00, $00
- D 0 - I - 0x00AAFC 02:8AEC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $43, $49, $2C, $AD, $00
- D 0 - I - 0x00AB08 02:8AF8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $44, $49, $C8, $00, $00
- D 0 - I - 0x00AB14 02:8B04: 03        .byte $03, $03, $03, $03, $03, $03, $03, $44, $49, $C8, $00, $00

; screen D, 10, 12
loc_level_racing_screen_u08_indexes:
- D 0 - I - 0x00AB20 02:8B10: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $19, $C8, $00, $00
- D 0 - I - 0x00AB2C 02:8B1C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $83, $18, $C8, $00, $00
- D 0 - I - 0x00AB38 02:8B28: 03        .byte $03, $03, $03, $03, $03, $03, $03, $56, $01, $C8, $00, $00
- D 0 - I - 0x00AB44 02:8B34: 03        .byte $03, $03, $03, $03, $03, $03, $0F, $01, $01, $B1, $00, $00
- D 0 - I - 0x00AB50 02:8B40: 03        .byte $03, $03, $03, $03, $03, $03, $12, $01, $01, $4C, $00, $00
- D 0 - I - 0x00AB5C 02:8B4C: 03        .byte $03, $03, $03, $03, $03, $56, $01, $5A, $6F, $4D, $4E, $00
- D 0 - I - 0x00AB68 02:8B58: 03        .byte $03, $03, $03, $03, $03, $01, $58, $5B, $00, $51, $54, $B6
- D 0 - I - 0x00AB74 02:8B64: 03        .byte $03, $03, $03, $03, $56, $10, $59, $1A, $00, $00, $00, $00
- D 0 - I - 0x00AB80 02:8B70: 03        .byte $03, $03, $03, $03, $16, $11, $18, $00, $00, $3C, $00, $00
- D 0 - I - 0x00AB8C 02:8B7C: 03        .byte $03, $03, $03, $03, $57, $17, $13, $00, $63, $66, $00, $00
- D 0 - I - 0x00AB98 02:8B88: 03        .byte $03, $03, $03, $03, $03, $01, $0D, $00, $63, $66, $00, $00
- D 0 - I - 0x00ABA4 02:8B94: 03        .byte $03, $03, $03, $03, $03, $01, $1D, $00, $63, $0E, $00, $00
- D 0 - I - 0x00ABB0 02:8BA0: 03        .byte $03, $03, $03, $03, $03, $23, $00, $00, $63, $67, $00, $00
- D 0 - I - 0x00ABBC 02:8BAC: 03        .byte $03, $03, $03, $03, $03, $21, $1A, $00, $00, $00, $00, $3C
- D 0 - I - 0x00ABC8 02:8BB8: 03        .byte $03, $03, $03, $03, $03, $12, $00, $00, $00, $00, $63, $66
- D 0 - I - 0x00ABD4 02:8BC4: 03        .byte $03, $03, $03, $03, $03, $10, $00, $00, $00, $00, $63, $66

; screen 13, 14
loc_level_racing_screen_u09_indexes:
- D 0 - I - 0x00ABE0 02:8BD0: 03        .byte $03, $03, $03, $03, $0F, $1D, $00, $00, $00, $00, $63, $66
- D 0 - I - 0x00ABEC 02:8BDC: 03        .byte $03, $03, $03, $03, $68, $6A, $00, $00, $3C, $00, $63, $0E
- D 0 - I - 0x00ABF8 02:8BE8: 03        .byte $03, $03, $03, $03, $03, $69, $3C, $63, $66, $00, $63, $67
- D 0 - I - 0x00AC04 02:8BF4: 03        .byte $03, $03, $03, $03, $03, $6B, $0D, $63, $0E, $00, $00, $00
- D 0 - I - 0x00AC10 02:8C00: 03        .byte $03, $03, $03, $03, $03, $0A, $6C, $63, $67, $00, $00, $00
- D 0 - I - 0x00AC1C 02:8C0C: 03        .byte $03, $03, $03, $03, $03, $0A, $6D, $00, $00, $00, $00, $00
- D 0 - I - 0x00AC28 02:8C18: 03        .byte $03, $03, $03, $03, $03, $12, $00, $00, $00, $00, $3C, $00
- D 0 - I - 0x00AC34 02:8C24: 03        .byte $03, $03, $03, $03, $0F, $13, $00, $00, $00, $63, $66, $00
- D 0 - I - 0x00AC40 02:8C30: 03        .byte $03, $03, $03, $03, $20, $11, $3B, $00, $00, $63, $66, $00
- D 0 - I - 0x00AC4C 02:8C3C: 03        .byte $03, $03, $03, $03, $0C, $B0, $3A, $00, $00, $63, $0E, $00
- D 0 - I - 0x00AC58 02:8C48: 03        .byte $03, $03, $03, $03, $6E, $6F, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00AC64 02:8C54: 03        .byte $03, $03, $03, $03, $0C, $00, $00, $00, $3C, $00, $00, $00
- D 0 - I - 0x00AC70 02:8C60: 03        .byte $03, $03, $03, $03, $03, $21, $1A, $63, $66, $00, $00, $00
- D 0 - I - 0x00AC7C 02:8C6C: 03        .byte $03, $03, $03, $03, $03, $0A, $00, $63, $66, $00, $00, $00
- D 0 - I - 0x00AC88 02:8C78: 03        .byte $03, $03, $03, $03, $03, $27, $00, $63, $0E, $00, $00, $3C
- D 0 - I - 0x00AC94 02:8C84: 03        .byte $03, $03, $03, $03, $03, $0D, $00, $00, $00, $00, $63, $66

; screen E, 11, 15
loc_level_racing_screen_u10_indexes:
- D 0 - I - 0x00ACA0 02:8C90: 03        .byte $03, $03, $03, $03, $0F, $0E, $00, $00, $00, $00, $63, $66
- D 0 - I - 0x00ACAC 02:8C9C: 03        .byte $03, $03, $03, $03, $71, $6A, $00, $00, $00, $00, $63, $0E
- D 0 - I - 0x00ACB8 02:8CA8: 03        .byte $03, $03, $03, $03, $03, $1D, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00ACC4 02:8CB4: 03        .byte $03, $03, $03, $03, $03, $21, $1A, $00, $00, $3C, $00, $00
- D 0 - I - 0x00ACD0 02:8CC0: 03        .byte $03, $03, $03, $03, $03, $22, $00, $00, $63, $66, $00, $00
- D 0 - I - 0x00ACDC 02:8CCC: 03        .byte $03, $03, $03, $03, $0F, $0D, $00, $00, $63, $66, $00, $00
- D 0 - I - 0x00ACE8 02:8CD8: 03        .byte $03, $03, $03, $03, $72, $11, $00, $00, $63, $0E, $00, $00
- D 0 - I - 0x00ACF4 02:8CE4: 03        .byte $03, $03, $03, $03, $73, $00, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00AD00 02:8CF0: 03        .byte $03, $03, $03, $03, $57, $74, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00AD0C 02:8CFC: 03        .byte $03, $03, $03, $03, $03, $0E, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00AD18 02:8D08: 03        .byte $03, $03, $03, $03, $03, $70, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x00AD24 02:8D14: 03        .byte $03, $03, $03, $03, $03, $0C, $00, $00, $00, $61, $77, $C9
- D 0 - I - 0x00AD30 02:8D20: 03        .byte $03, $03, $03, $03, $03, $03, $57, $00, $00, $78, $AE, $00
- D 0 - I - 0x00AD3C 02:8D2C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $57, $00, $AF, $00, $00
- D 0 - I - 0x00AD48 02:8D38: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0F, $33, $CA, $00, $00
- D 0 - I - 0x00AD54 02:8D44: 03        .byte $03, $03, $03, $03, $03, $03, $03, $79, $34, $C8, $00, $00

; screen 17, 1B
loc_level_racing_screen_u11_indexes:
- D 0 - I - 0x00AD60 02:8D50: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $00, $C8, $00, $C7
- D 0 - I - 0x00AD6C 02:8D5C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $70, $00, $C8, $00, $C5
- D 0 - I - 0x00AD78 02:8D68: 03        .byte $03, $03, $03, $03, $03, $03, $03, $0C, $7B, $7C, $00, $C6
- D 0 - I - 0x00AD84 02:8D74: 03        .byte $03, $03, $03, $03, $03, $03, $03, $03, $7D, $7E, $AD, $00
- D 0 - I - 0x00AD90 02:8D80: 03        .byte $03, $03, $03, $03, $03, $03, $03, $89, $87, $7F, $00, $00
- D 0 - I - 0x00AD9C 02:8D8C: 03        .byte $03, $03, $03, $03, $03, $03, $89, $87, $02, $7F, $00, $C7
- D 0 - I - 0x00ADA8 02:8D98: 03        .byte $03, $03, $03, $03, $03, $85, $87, $02, $02, $80, $00, $C5
- D 0 - I - 0x00ADB4 02:8DA4: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C6
- D 0 - I - 0x00ADC0 02:8DB0: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $AD, $00
- D 0 - I - 0x00ADCC 02:8DBC: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $00
- D 0 - I - 0x00ADD8 02:8DC8: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $00
- D 0 - I - 0x00ADE4 02:8DD4: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $AD, $C7
- D 0 - I - 0x00ADF0 02:8DE0: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00ADFC 02:8DEC: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C6
- D 0 - I - 0x00AE08 02:8DF8: 03        .byte $03, $03, $03, $03, $03, $81, $82, $02, $02, $80, $00, $00
- D 0 - I - 0x00AE14 02:8E04: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7

; screen 18, 1E
loc_level_racing_screen_u12_indexes:
- D 0 - I - 0x00AE20 02:8E10: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00AE2C 02:8E1C: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $00
- D 0 - I - 0x00AE38 02:8E28: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $AD, $00
- D 0 - I - 0x00AE44 02:8E34: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $C5
- D 0 - I - 0x00AE50 02:8E40: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C6
- D 0 - I - 0x00AE5C 02:8E4C: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AE68 02:8E58: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $AD, $00
- D 0 - I - 0x00AE74 02:8E64: 03        .byte $03, $03, $03, $03, $03, $81, $82, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00AE80 02:8E70: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $80, $00, $C6
- D 0 - I - 0x00AE8C 02:8E7C: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AE98 02:8E88: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AEA4 02:8E94: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00AEB0 02:8EA0: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $84, $00, $C5
- D 0 - I - 0x00AEBC 02:8EAC: 03        .byte $03, $03, $03, $03, $03, $81, $02, $82, $02, $7F, $00, $C6
- D 0 - I - 0x00AEC8 02:8EB8: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $AD, $00
- D 0 - I - 0x00AED4 02:8EC4: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7

; screen 19, 1C, 1F
loc_level_racing_screen_u13_indexes:
- D 0 - I - 0x00AEE0 02:8ED0: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00AEEC 02:8EDC: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AEF8 02:8EE8: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00AF04 02:8EF4: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $C6
- D 0 - I - 0x00AF10 02:8F00: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $00
- D 0 - I - 0x00AF1C 02:8F0C: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $C7
- D 0 - I - 0x00AF28 02:8F18: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AF34 02:8F24: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00AF40 02:8F30: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $84, $00, $C6
- D 0 - I - 0x00AF4C 02:8F3C: 03        .byte $03, $03, $03, $03, $03, $81, $82, $02, $02, $80, $00, $C7
- D 0 - I - 0x00AF58 02:8F48: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AF64 02:8F54: 03        .byte $03, $03, $03, $03, $03, $86, $8A, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00AF70 02:8F60: 03        .byte $03, $03, $03, $03, $03, $03, $8B, $8A, $02, $7F, $00, $C5
- D 0 - I - 0x00AF7C 02:8F6C: 03        .byte $03, $03, $03, $03, $03, $03, $03, $8C, $8A, $7F, $00, $C6
- D 0 - I - 0x00AF88 02:8F78: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $00, $8D, $8E, $00, $00
- D 0 - I - 0x00AF94 02:8F84: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $B5, $90, $00, $C7

; screen 1D
loc_level_racing_screen_u14_indexes:
- D 0 - I - 0x00AFA0 02:8F90: 03        .byte $03, $03, $03, $03, $03, $03, $29, $00, $91, $C8, $00, $C7
- D 0 - I - 0x00AFAC 02:8F9C: 03        .byte $03, $03, $03, $03, $03, $03, $2A, $00, $8F, $7C, $00, $00
- D 0 - I - 0x00AFB8 02:8FA8: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $00, $7D, $7E, $AD, $00
- D 0 - I - 0x00AFC4 02:8FB4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $88, $87, $7F, $00, $C5
- D 0 - I - 0x00AFD0 02:8FC0: 03        .byte $03, $03, $03, $03, $03, $03, $89, $87, $02, $7F, $00, $C6
- D 0 - I - 0x00AFDC 02:8FCC: 03        .byte $03, $03, $03, $03, $03, $85, $87, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00AFE8 02:8FD8: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00AFF4 02:8FE4: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $00
- D 0 - I - 0x00B000 02:8FF0: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $C5
- D 0 - I - 0x00B00C 02:8FFC: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $4B, $00, $C6
- D 0 - I - 0x00B018 02:9008: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7
- D 0 - I - 0x00B024 02:9014: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $00
- D 0 - I - 0x00B030 02:9020: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $80, $00, $C7
- D 0 - I - 0x00B03C 02:902C: 03        .byte $03, $03, $03, $03, $03, $81, $82, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00B048 02:9038: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $84, $00, $C6
- D 0 - I - 0x00B054 02:9044: 03        .byte $03, $03, $03, $03, $03, $81, $02, $02, $02, $7F, $00, $C7

; screen 1A, 20
loc_level_racing_screen_u15_indexes:
- D 0 - I - 0x00B060 02:9050: 03        .byte $03, $03, $03, $03, $03, $03, $29, $00, $91, $C8, $00, $C7
- D 0 - I - 0x00B06C 02:905C: 03        .byte $03, $03, $03, $03, $03, $03, $2A, $00, $8F, $7C, $00, $00
- D 0 - I - 0x00B078 02:9068: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $7D, $7E, $AD, $C7
- D 0 - I - 0x00B084 02:9074: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $88, $87, $7F, $00, $00
- D 0 - I - 0x00B090 02:9080: 03        .byte $03, $03, $03, $03, $03, $03, $85, $87, $02, $80, $00, $C5
- D 0 - I - 0x00B09C 02:908C: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $7F, $00, $C6
- D 0 - I - 0x00B0A8 02:9098: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $4B, $00, $C7
- D 0 - I - 0x00B0B4 02:90A4: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $4B, $AD, $00
- D 0 - I - 0x00B0C0 02:90B0: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $7F, $00, $C5
- D 0 - I - 0x00B0CC 02:90BC: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $7F, $00, $C6
- D 0 - I - 0x00B0D8 02:90C8: 03        .byte $03, $03, $03, $03, $03, $03, $81, $02, $02, $80, $00, $C5
- D 0 - I - 0x00B0E4 02:90D4: 03        .byte $03, $03, $03, $03, $03, $03, $81, $82, $02, $7F, $00, $C6
- D 0 - I - 0x00B0F0 02:90E0: 03        .byte $03, $03, $03, $03, $03, $03, $86, $8A, $02, $80, $00, $C7
- D 0 - I - 0x00B0FC 02:90EC: 03        .byte $03, $03, $03, $03, $03, $03, $03, $8C, $8A, $7F, $AD, $00
- D 0 - I - 0x00B108 02:90F8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $8D, $8E, $00, $00
- D 0 - I - 0x00B114 02:9104: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $92, $90, $00, $C7

; screen 21, 22
loc_level_racing_screen_u16_indexes:
- D 0 - I - 0x00B120 02:9110: 03        .byte $03, $03, $03, $03, $03, $03, $29, $00, $00, $C8, $00, $C7
- D 0 - I - 0x00B12C 02:911C: 03        .byte $03, $03, $03, $03, $03, $03, $2A, $00, $00, $C8, $00, $C5
- D 0 - I - 0x00B138 02:9128: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $00, $9E, $2D, $00, $C6
- D 0 - I - 0x00B144 02:9134: 03        .byte $03, $03, $03, $03, $03, $03, $03, $98, $00, $C8, $00, $00
- D 0 - I - 0x00B150 02:9140: 03        .byte $03, $03, $03, $03, $03, $03, $9A, $99, $00, $2C, $00, $00
- D 0 - I - 0x00B15C 02:914C: 03        .byte $03, $03, $03, $03, $03, $9B, $99, $99, $00, $C8, $00, $C7
- D 0 - I - 0x00B168 02:9158: 03        .byte $03, $03, $03, $03, $03, $03, $9C, $99, $00, $C8, $AD, $00
- D 0 - I - 0x00B174 02:9164: 03        .byte $03, $03, $03, $03, $03, $03, $03, $9D, $00, $C8, $00, $00
- D 0 - I - 0x00B180 02:9170: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $00, $2C, $00, $00
- D 0 - I - 0x00B18C 02:917C: 03        .byte $03, $03, $03, $03, $03, $03, $29, $00, $00, $C8, $00, $C5
- D 0 - I - 0x00B198 02:9188: 03        .byte $03, $03, $03, $03, $03, $03, $2A, $00, $00, $C8, $00, $C6
- D 0 - I - 0x00B1A4 02:9194: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $00, $C3, $2D, $AD, $00
- D 0 - I - 0x00B1B0 02:91A0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $C4, $2C, $00, $00
- D 0 - I - 0x00B1BC 02:91AC: 03        .byte $03, $03, $03, $03, $03, $03, $94, $93, $00, $C8, $00, $00
- D 0 - I - 0x00B1C8 02:91B8: 03        .byte $03, $03, $03, $03, $03, $03, $95, $9F, $9E, $C8, $00, $C7
- D 0 - I - 0x00B1D4 02:91C4: 03        .byte $03, $03, $03, $03, $03, $03, $96, $97, $00, $C8, $00, $00

; screen 23
loc_level_racing_screen_u17_indexes:
- D 0 - I - 0x00B1E0 02:91D0: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $00, $C8, $00, $C7
- D 0 - I - 0x00B1EC 02:91DC: 03        .byte $03, $03, $03, $03, $03, $03, $2B, $00, $00, $2D, $AD, $00
- D 0 - I - 0x00B1F8 02:91E8: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $9E, $2C, $00, $C5
- D 0 - I - 0x00B204 02:91F4: 03        .byte $03, $03, $03, $03, $03, $03, $03, $00, $00, $C8, $00, $C6
- D 0 - I - 0x00B210 02:9200: 03        .byte $03, $03, $03, $03, $03, $03, $A4, $A0, $00, $C8, $00, $00
- D 0 - I - 0x00B21C 02:920C: 03        .byte $03, $03, $03, $03, $03, $A4, $A5, $A1, $00, $2D, $00, $00
- D 0 - I - 0x00B228 02:9218: 03        .byte $03, $03, $03, $03, $A4, $A5, $A5, $A2, $00, $2C, $00, $C7
- D 0 - I - 0x00B234 02:9224: 03        .byte $03, $03, $03, $A4, $A5, $A5, $A5, $A5, $00, $C8, $00, $00
- D 0 - I - 0x00B240 02:9230: 03        .byte $03, $03, $A4, $A5, $A5, $A5, $A5, $A5, $A0, $2C, $00, $00
- D 0 - I - 0x00B24C 02:923C: 03        .byte $03, $A4, $A5, $A5, $A5, $A5, $A5, $A5, $A1, $C8, $00, $C7
- D 0 - I - 0x00B258 02:9248: A4        .byte $A4, $A5, $A5, $A5, $A9, $A8, $A7, $A6, $A3, $C8, $00, $C7
- D 0 - I - 0x00B264 02:9254: A9        .byte $A9, $A8, $A7, $A6, $AA, $99, $99, $99, $AB, $2D, $00, $00
- D 0 - I - 0x00B270 02:9260: AA        .byte $AA, $99, $99, $99, $99, $99, $99, $99, $AB, $2C, $00, $00
- D 0 - I - 0x00B27C 02:926C: 99        .byte $99, $99, $99, $99, $99, $99, $99, $99, $AB, $C8, $00, $00
- D 0 - I - 0x00B288 02:9278: 9C        .byte $9C, $99, $99, $99, $99, $99, $99, $99, $AB, $C8, $00, $C7
- D 0 - I - 0x00B294 02:9284: 03        .byte $03, $9C, $99, $99, $99, $99, $99, $99, $AB, $2D, $00, $C7

loc_level_racing_screen_u00_attrs:
- D 0 - I - 0x00B2A0 02:9290: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B2A8 02:9298: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2B0 02:92A0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2B8 02:92A8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2C0 02:92B0: 55        .byte $55, $65, $55, $55, $55, $55, $55, $95
- D 0 - I - 0x00B2C8 02:92B8: 55        .byte $55, $56, $55, $55, $55, $55, $55, $59
- D 0 - I - 0x00B2D0 02:92C0: 07        .byte $07, $0F, $07, $0F, $07, $0D, $07, $0D

loc_level_racing_screen_u01_attrs:
- D 0 - I - 0x00B2D8 02:92C8: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B2E0 02:92D0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2E8 02:92D8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2F0 02:92E0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B2F8 02:92E8: 65        .byte $65, $55, $55, $55, $55, $95, $55, $55
- D 0 - I - 0x00B300 02:92F0: 56        .byte $56, $55, $55, $55, $55, $59, $55, $55
- D 0 - I - 0x00B308 02:92F8: 0F        .byte $0F, $07, $0D, $0F, $05, $0F, $0F, $0F

loc_level_racing_screen_u02_attrs:
- D 0 - I - 0x00B310 02:9300: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B318 02:9308: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B320 02:9310: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B328 02:9318: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B330 02:9320: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B338 02:9328: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B340 02:9330: 0F        .byte $0F, $07, $0D, $0D, $0F, $0F, $07, $05

loc_level_racing_screen_u03_attrs:
- D 0 - I - 0x00B348 02:9338: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B350 02:9340: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B358 02:9348: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B360 02:9350: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B368 02:9358: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B370 02:9360: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B378 02:9368: 05        .byte $05, $0F, $05, $0F, $05, $0F, $0D, $05

loc_level_racing_screen_u04_attrs:
- D 0 - I - 0x00B380 02:9370: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B388 02:9378: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B390 02:9380: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B398 02:9388: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B3A0 02:9390: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B3A8 02:9398: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B3B0 02:93A0: 07        .byte $07, $0D, $07, $0D, $05, $0D, $07, $0D

loc_level_racing_screen_u05_attrs:
- D 0 - I - 0x00B3B8 02:93A8: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B3C0 02:93B0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B3C8 02:93B8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B3D0 02:93C0: 55        .byte $55, $55, $55, $A6, $99, $65, $55, $55
- D 0 - I - 0x00B3D8 02:93C8: 55        .byte $55, $55, $95, $95, $65, $A5, $AA, $AA
- D 0 - I - 0x00B3E0 02:93D0: 55        .byte $55, $55, $55, $5D, $5F, $55, $55, $55
- D 0 - I - 0x00B3E8 02:93D8: 07        .byte $07, $07, $0F, $05, $05, $0D, $07, $0D

loc_level_racing_screen_u06_attrs:
- D 0 - I - 0x00B3F0 02:93E0: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B3F8 02:93E8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B400 02:93F0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B408 02:93F8: 55        .byte $55, $55, $55, $99, $A9, $65, $55, $55
- D 0 - I - 0x00B410 02:9400: AA        .byte $AA, $AA, $A6, $65, $65, $65, $55, $55
- D 0 - I - 0x00B418 02:9408: 55        .byte $55, $55, $55, $55, $5D, $5F, $57, $55
- D 0 - I - 0x00B420 02:9410: 07        .byte $07, $0F, $05, $0D, $07, $0F, $05, $0D

loc_level_racing_screen_u07_attrs:
- D 0 - I - 0x00B428 02:9418: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B430 02:9420: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B438 02:9428: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B440 02:9430: 55        .byte $55, $55, $55, $A6, $A6, $55, $55, $55
- D 0 - I - 0x00B448 02:9438: 55        .byte $55, $55, $95, $95, $95, $A5, $A9, $AA
- D 0 - I - 0x00B450 02:9440: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B458 02:9448: 07        .byte $07, $0F, $0F, $07, $05, $0F, $05, $05

loc_level_racing_screen_u08_attrs:
- D 0 - I - 0x00B460 02:9450: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B468 02:9458: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B470 02:9460: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B478 02:9468: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B480 02:9470: 55        .byte $55, $55, $55, $55, $95, $A5, $65, $55
- D 0 - I - 0x00B488 02:9478: 55        .byte $55, $5D, $DF, $77, $55, $55, $55, $A5
- D 0 - I - 0x00B490 02:9480: 05        .byte $05, $05, $05, $07, $05, $05, $05, $05

loc_level_racing_screen_u09_attrs:
- D 0 - I - 0x00B498 02:9488: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B4A0 02:9490: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4A8 02:9498: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4B0 02:94A0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4B8 02:94A8: 55        .byte $55, $5A, $56, $55, $55, $55, $5A, $56
- D 0 - I - 0x00B4C0 02:94B0: A5        .byte $A5, $65, $55, $59, $5A, $55, $55, $95
- D 0 - I - 0x00B4C8 02:94B8: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

loc_level_racing_screen_u10_attrs:
- D 0 - I - 0x00B4D0 02:94C0: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B4D8 02:94C8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4E0 02:94D0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4E8 02:94D8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B4F0 02:94E0: 55        .byte $55, $55, $A5, $65, $55, $55, $55, $55
- D 0 - I - 0x00B4F8 02:94E8: A5        .byte $A5, $55, $A5, $65, $55, $55, $55, $55
- D 0 - I - 0x00B500 02:94F0: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

loc_level_racing_screen_u11_attrs:
- D 0 - I - 0x00B508 02:94F8: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B510 02:9500: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B518 02:9508: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B520 02:9510: 55        .byte $55, $55, $55, $55, $55, $55, $55, $75
- D 0 - I - 0x00B528 02:9518: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B530 02:9520: 55        .byte $55, $55, $55, $55, $5D, $5F, $55, $55
- D 0 - I - 0x00B538 02:9528: 0F        .byte $0F, $07, $0D, $0F, $05, $0D, $0F, $0D

loc_level_racing_screen_u12_attrs:
- D 0 - I - 0x00B540 02:9530: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B548 02:9538: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B550 02:9540: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B558 02:9548: 55        .byte $55, $55, $55, $D5, $55, $55, $55, $55
- D 0 - I - 0x00B560 02:9550: 55        .byte $55, $55, $55, $55, $55, $55, $5D, $55
- D 0 - I - 0x00B568 02:9558: 5D        .byte $5D, $5F, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B570 02:9560: 07        .byte $07, $0D, $07, $0D, $07, $0D, $0F, $0D

loc_level_racing_screen_u13_attrs:
- D 0 - I - 0x00B578 02:9568: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B580 02:9570: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B588 02:9578: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B590 02:9580: 55        .byte $55, $55, $55, $55, $D5, $55, $55, $55
- D 0 - I - 0x00B598 02:9588: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5A0 02:9590: 55        .byte $55, $5D, $5F, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5A8 02:9598: 07        .byte $07, $0F, $0D, $0D, $0F, $0D, $0F, $0D

loc_level_racing_screen_u14_attrs:
- D 0 - I - 0x00B5B0 02:95A0: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B5B8 02:95A8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5C0 02:95B0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5C8 02:95B8: 55        .byte $55, $55, $55, $55, $55, $55, $D5, $55
- D 0 - I - 0x00B5D0 02:95C0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5D8 02:95C8: 55        .byte $55, $55, $55, $5D, $5F, $55, $55, $55
- D 0 - I - 0x00B5E0 02:95D0: 07        .byte $07, $0D, $0F, $05, $0F, $07, $0F, $0F

loc_level_racing_screen_u15_attrs:
- D 0 - I - 0x00B5E8 02:95D8: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B5F0 02:95E0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B5F8 02:95E8: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B600 02:95F0: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B608 02:95F8: 55        .byte $55, $55, $55, $55, $55, $5D, $55, $55
- D 0 - I - 0x00B610 02:9600: 55        .byte $55, $55, $55, $5F, $55, $55, $55, $55
- D 0 - I - 0x00B618 02:9608: 07        .byte $07, $07, $0F, $07, $0F, $0F, $07, $0D

loc_level_racing_screen_u16_attrs:
- D 0 - I - 0x00B620 02:9610: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B628 02:9618: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B630 02:9620: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B638 02:9628: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B640 02:9630: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B648 02:9638: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B650 02:9640: 0F        .byte $0F, $07, $0D, $05, $0D, $07, $05, $07

loc_level_racing_screen_u17_attrs:
- D 0 - I - 0x00B658 02:9648: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00B660 02:9650: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B668 02:9658: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B670 02:9660: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B678 02:9668: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B680 02:9670: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00B688 02:9678: 07        .byte $07, $0F, $05, $07, $0D, $07, $05, $0F

loc_level_racing_metatiles:
- D 0 - I - 0x00B690 02:9680: 00        .byte $00, $00, $00, $00   ; 0x00
- D 0 - I - 0x00B694 02:9684: 01        .byte $01, $01, $01, $01
- D 0 - I - 0x00B698 02:9688: 02        .byte $02, $02, $02, $02
- D 0 - I - 0x00B69C 02:968C: 03        .byte $03, $03, $03, $03
- D 0 - I - 0x00B6A0 02:9690: 03        .byte $03, $9A, $03, $01
- D 0 - I - 0x00B6A4 02:9694: 00        .byte $00, $00, $A0, $00
- D 0 - I - 0x00B6A8 02:9698: A2        .byte $A2, $00, $03, $A0
- D 0 - I - 0x00B6AC 02:969C: 03        .byte $03, $A2, $03, $98
- D 0 - I - 0x00B6B0 02:96A0: 98        .byte $98, $01, $9A, $9E
- D 0 - I - 0x00B6B4 02:96A4: 00        .byte $00, $38, $00, $3A
- D 0 - I - 0x00B6B8 02:96A8: 03        .byte $03, $01, $03, $01
- D 0 - I - 0x00B6BC 02:96AC: 03        .byte $03, $99, $03, $9B
- D 0 - I - 0x00B6C0 02:96B0: 03        .byte $03, $A0, $03, $A2
- D 0 - I - 0x00B6C4 02:96B4: 01        .byte $01, $00, $01, $00
- D 0 - I - 0x00B6C8 02:96B8: 99        .byte $99, $00, $9B, $00
- D 0 - I - 0x00B6CC 02:96BC: 03        .byte $03, $98, $03, $9A
- D 0 - I - 0x00B6D0 02:96C0: 01        .byte $01, $01, $01, $9E   ; 0x10
- D 0 - I - 0x00B6D4 02:96C4: 9E        .byte $9E, $00, $00, $00
- D 0 - I - 0x00B6D8 02:96C8: 98        .byte $98, $01, $9A, $01
- D 0 - I - 0x00B6DC 02:96CC: 01        .byte $01, $99, $01, $9B
- D 0 - I - 0x00B6E0 02:96D0: 03        .byte $03, $03, $03, $9D
- D 0 - I - 0x00B6E4 02:96D4: 9D        .byte $9D, $01, $01, $01
- D 0 - I - 0x00B6E8 02:96D8: 01        .byte $01, $01, $A4, $A5
- D 0 - I - 0x00B6EC 02:96DC: 00        .byte $00, $9C, $9C, $01
- D 0 - I - 0x00B6F0 02:96E0: 95        .byte $95, $01, $97, $01
- D 0 - I - 0x00B6F4 02:96E4: 00        .byte $00, $95, $00, $97
- D 0 - I - 0x00B6F8 02:96E8: 9F        .byte $9F, $00, $9B, $00
- D 0 - I - 0x00B6FC 02:96EC: 00        .byte $00, $00, $00, $9C
- D 0 - I - 0x00B700 02:96F0: 9C        .byte $9C, $99, $01, $9B
- D 0 - I - 0x00B704 02:96F4: 01        .byte $01, $00, $9E, $00
- D - - - - 0x00B708 02:96F8: 00        .byte $00, $9C, $00, $01
- D 0 - I - 0x00B70C 02:96FC: 9C        .byte $9C, $9E, $9E, $00
- D 0 - I - 0x00B710 02:9700: 03        .byte $03, $01, $03, $9E   ; 0x20
- D 0 - I - 0x00B714 02:9704: A0        .byte $A0, $00, $A2, $9C
- D 0 - I - 0x00B718 02:9708: 98        .byte $98, $01, $9A, $99
- D 0 - I - 0x00B71C 02:970C: 01        .byte $01, $9E, $9E, $00
- D - - - - 0x00B720 02:9710: 00        .byte $00, $00, $9C, $00
- D 0 - I - 0x00B724 02:9714: 97        .byte $97, $00, $01, $00
- D 0 - I - 0x00B728 02:9718: 9E        .byte $9E, $00, $00, $95
- D 0 - I - 0x00B72C 02:971C: 98        .byte $98, $99, $9A, $9B
- D 0 - I - 0x00B730 02:9720: 00        .byte $00, $97, $00, $01
- D 0 - I - 0x00B734 02:9724: 03        .byte $03, $80, $03, $8D
- D 0 - I - 0x00B738 02:9728: 03        .byte $03, $8F, $03, $94
- D 0 - I - 0x00B73C 02:972C: 03        .byte $03, $81, $03, $83
- D 0 - I - 0x00B740 02:9730: 00        .byte $00, $00, $88, $00
- D 0 - I - 0x00B744 02:9734: 00        .byte $00, $88, $00, $00
- D 0 - I - 0x00B748 02:9738: 00        .byte $00, $84, $00, $86
- D 0 - I - 0x00B74C 02:973C: 00        .byte $00, $85, $00, $87
- D 0 - I - 0x00B750 02:9740: 03        .byte $03, $00, $03, $00   ; 0x30
- D 0 - I - 0x00B754 02:9744: 00        .byte $00, $00, $00, $95
- D 0 - I - 0x00B758 02:9748: 03        .byte $03, $A1, $03, $A3
- D 0 - I - 0x00B75C 02:974C: A1        .byte $A1, $00, $A3, $00
- D 0 - I - 0x00B760 02:9750: 00        .byte $00, $A1, $00, $A3
- D 0 - I - 0x00B764 02:9754: 39        .byte $39, $00, $3B, $00
- D 0 - I - 0x00B768 02:9758: 00        .byte $00, $00, $95, $00
- D 0 - I - 0x00B76C 02:975C: 00        .byte $00, $97, $9C, $99
- D 0 - I - 0x00B770 02:9760: 97        .byte $97, $9B, $9E, $00
- D 0 - I - 0x00B774 02:9764: 00        .byte $00, $9C, $95, $99
- D 0 - I - 0x00B778 02:9768: 9B        .byte $9B, $00, $00, $00
- D 0 - I - 0x00B77C 02:976C: 00        .byte $00, $00, $9F, $00
- D 0 - I - 0x00B780 02:9770: 00        .byte $00, $9F, $9C, $9B
- D 0 - I - 0x00B784 02:9774: 00        .byte $00, $97, $9C, $9E
- D 0 - I - 0x00B788 02:9778: 03        .byte $03, $03, $03, $8A
- D 0 - I - 0x00B78C 02:977C: 89        .byte $89, $89, $8B, $8B
- D 0 - I - 0x00B790 02:9780: 8C        .byte $8C, $8C, $03, $03   ; 0x40
- D 0 - I - 0x00B794 02:9784: 03        .byte $03, $03, $8E, $8E
- D - - - - 0x00B798 02:9788: B8        .byte $B8, $00, $B8, $00
- D 0 - I - 0x00B79C 02:978C: 03        .byte $03, $B8, $03, $B8
- D 0 - I - 0x00B7A0 02:9790: B8        .byte $B8, $B9, $B8, $B9
- D 0 - I - 0x00B7A4 02:9794: B8        .byte $B8, $B9, $03, $B8
- D 0 - I - 0x00B7A8 02:9798: 03        .byte $03, $B8, $B8, $B9
- D 0 - I - 0x00B7AC 02:979C: 03        .byte $03, $03, $03, $B8
- D 0 - I - 0x00B7B0 02:97A0: B8        .byte $B8, $B9, $B9, $B9
- D 0 - I - 0x00B7B4 02:97A4: B9        .byte $B9, $B9, $B9, $B9
- D 0 - I - 0x00B7B8 02:97A8: BC        .byte $BC, $BD, $BE, $BF
- D 0 - I - 0x00B7BC 02:97AC: ED        .byte $ED, $00, $F2, $00
- D 0 - I - 0x00B7C0 02:97B0: 00        .byte $00, $C0, $00, $C0
- D 0 - I - 0x00B7C4 02:97B4: 00        .byte $00, $C0, $00, $C2
- D 0 - I - 0x00B7C8 02:97B8: 00        .byte $00, $00, $CC, $00
- D 0 - I - 0x00B7CC 02:97BC: B0        .byte $B0, $B1, $B2, $B3
- D 0 - I - 0x00B7D0 02:97C0: B2        .byte $B2, $AD, $B2, $B3   ; 0x50
- D 0 - I - 0x00B7D4 02:97C4: 00        .byte $00, $C1, $00, $C3
- D 0 - I - 0x00B7D8 02:97C8: B2        .byte $B2, $AD, $AE, $AF
- D - - - - 0x00B7DC 02:97CC: 9C        .byte $9C, $01, $01, $01
- D 0 - I - 0x00B7E0 02:97D0: 00        .byte $00, $00, $CD, $82
- D - - - - 0x00B7E4 02:97D4: 00        .byte $00, $00, $DE, $00
- D 0 - I - 0x00B7E8 02:97D8: 03        .byte $03, $9D, $9D, $01
- D 0 - I - 0x00B7EC 02:97DC: CF        .byte $CF, $00, $03, $CF
- D 0 - I - 0x00B7F0 02:97E0: 01        .byte $01, $A4, $99, $00
- D 0 - I - 0x00B7F4 02:97E4: 9B        .byte $9B, $00, $00, $9C
- D 0 - I - 0x00B7F8 02:97E8: 01        .byte $01, $01, $01, $A4
- D 0 - I - 0x00B7FC 02:97EC: A5        .byte $A5, $00, $00, $00
- D 0 - I - 0x00B800 02:97F0: 03        .byte $03, $03, $03, $98
- D 0 - I - 0x00B804 02:97F4: 03        .byte $03, $9A, $03, $99
- D 0 - I - 0x00B808 02:97F8: 9D        .byte $9D, $9B, $9E, $00
- D 0 - I - 0x00B80C 02:97FC: 03        .byte $03, $B8, $03, $03
- D 0 - I - 0x00B810 02:9800: B9        .byte $B9, $B9, $B8, $B9   ; 0x60
- D 0 - I - 0x00B814 02:9804: 00        .byte $00, $C4, $00, $C6
- D - - - - 0x00B818 02:9808: 00        .byte $00, $00, $CC, $CD
- D 0 - I - 0x00B81C 02:980C: C8        .byte $C8, $C9, $CA, $CB
- D - - - - 0x00B820 02:9810: CE        .byte $CE, $CD, $00, $00
- D - - - - 0x00B824 02:9814: 03        .byte $03, $AB, $03, $AB
- D 0 - I - 0x00B828 02:9818: 99        .byte $99, $00, $D3, $00
- D 0 - I - 0x00B82C 02:981C: D1        .byte $D1, $00, $9B, $00
- D 0 - I - 0x00B830 02:9820: 03        .byte $03, $9E, $03, $CF
- D 0 - I - 0x00B834 02:9824: 9E        .byte $9E, $00, $A0, $00
- D 0 - I - 0x00B838 02:9828: 00        .byte $00, $9F, $9C, $9B
- D 0 - I - 0x00B83C 02:982C: A2        .byte $A2, $9C, $03, $01
- D 0 - I - 0x00B840 02:9830: 01        .byte $01, $00, $99, $00
- D 0 - I - 0x00B844 02:9834: 9B        .byte $9B, $00, $00, $00
- D 0 - I - 0x00B848 02:9838: 03        .byte $03, $98, $03, $D2
- D 0 - I - 0x00B84C 02:983C: 01        .byte $01, $9E, $A5, $00
- D 0 - I - 0x00B850 02:9840: A0        .byte $A0, $00, $A2, $00   ; 0x70
- D 0 - I - 0x00B854 02:9844: 03        .byte $03, $9E, $03, $CF
- D 0 - I - 0x00B858 02:9848: 03        .byte $03, $01, $9D, $9E
- D 0 - I - 0x00B85C 02:984C: 99        .byte $99, $00, $9B, $00
- D 0 - I - 0x00B860 02:9850: 00        .byte $00, $9C, $9C, $9E
- D - - - - 0x00B864 02:9854: B9        .byte $B9, $00, $B9, $00
- D - - - - 0x00B868 02:9858: 00        .byte $00, $C1, $00, $C3
- D 0 - I - 0x00B86C 02:985C: CE        .byte $CE, $DF, $00, $00
- D 0 - I - 0x00B870 02:9860: 00        .byte $00, $C5, $00, $C7
- D 0 - I - 0x00B874 02:9864: 9D        .byte $9D, $9E, $9E, $00
- D - - - - 0x00B878 02:9868: 00        .byte $00, $C0, $00, $C2
- D 0 - I - 0x00B87C 02:986C: 00        .byte $00, $D0, $00, $01
- D 0 - I - 0x00B880 02:9870: D1        .byte $D1, $00, $D3, $00
- D 0 - I - 0x00B884 02:9874: 95        .byte $95, $01, $97, $D6
- D 0 - I - 0x00B888 02:9878: D5        .byte $D5, $00, $D7, $00
- D 0 - I - 0x00B88C 02:987C: D7        .byte $D7, $00, $D7, $00
- D 0 - I - 0x00B890 02:9880: D7        .byte $D7, $88, $D7, $00   ; 0x80
- D 0 - I - 0x00B894 02:9884: 03        .byte $03, $D9, $03, $D9
- D 0 - I - 0x00B898 02:9888: E0        .byte $E0, $E1, $E2, $E3
- D 0 - I - 0x00B89C 02:988C: 03        .byte $03, $00, $03, $BB
- D 0 - I - 0x00B8A0 02:9890: D7        .byte $D7, $00, $D7, $88
- D 0 - I - 0x00B8A4 02:9894: 03        .byte $03, $D8, $03, $DA
- D 0 - I - 0x00B8A8 02:9898: 03        .byte $03, $DB, $03, $DC
- D 0 - I - 0x00B8AC 02:989C: D6        .byte $D6, $02, $02, $02
- D 0 - I - 0x00B8B0 02:98A0: 00        .byte $00, $9C, $9C, $D6
- D 0 - I - 0x00B8B4 02:98A4: 03        .byte $03, $9D, $9D, $D6
- D 0 - I - 0x00B8B8 02:98A8: 02        .byte $02, $02, $DD, $02
- D 0 - I - 0x00B8BC 02:98AC: BB        .byte $BB, $DD, $03, $BB
- D 0 - I - 0x00B8C0 02:98B0: A7        .byte $A7, $DD, $00, $A7
- D 0 - I - 0x00B8C4 02:98B4: A1        .byte $A1, $DD, $A3, $00
- D 0 - I - 0x00B8C8 02:98B8: D7        .byte $D7, $00, $90, $00
- D 0 - I - 0x00B8CC 02:98BC: 00        .byte $00, $01, $00, $01
- D 0 - I - 0x00B8D0 02:98C0: E7        .byte $E7, $00, $E8, $00   ; 0x90
- D 0 - I - 0x00B8D4 02:98C4: 00        .byte $00, $E4, $00, $E6
- D 0 - I - 0x00B8D8 02:98C8: 00        .byte $00, $BA, $00, $A7
- D 0 - I - 0x00B8DC 02:98CC: E9        .byte $E9, $00, $02, $00
- D 0 - I - 0x00B8E0 02:98D0: 03        .byte $03, $03, $03, $EA
- D 0 - I - 0x00B8E4 02:98D4: EA        .byte $EA, $02, $3C, $02
- D 0 - I - 0x00B8E8 02:98D8: 03        .byte $03, $3C, $03, $03
- D 0 - I - 0x00B8EC 02:98DC: 02        .byte $02, $00, $EB, $00
- D 0 - I - 0x00B8F0 02:98E0: 00        .byte $00, $EE, $EE, $EF
- D 0 - I - 0x00B8F4 02:98E4: EF        .byte $EF, $EF, $EF, $EF
- D 0 - I - 0x00B8F8 02:98E8: 03        .byte $03, $EC, $EC, $EF
- D 0 - I - 0x00B8FC 02:98EC: 03        .byte $03, $EC, $03, $F0
- D 0 - I - 0x00B900 02:98F0: F0        .byte $F0, $EF, $03, $F0
- D 0 - I - 0x00B904 02:98F4: F1        .byte $F1, $EF, $00, $F1
- D 0 - I - 0x00B908 02:98F8: FD        .byte $FD, $00, $FF, $00
- D 0 - I - 0x00B90C 02:98FC: 02        .byte $02, $00, $02, $00
- D 0 - I - 0x00B910 02:9900: F4        .byte $F4, $00, $F6, $00   ; 0xA0
- D 0 - I - 0x00B914 02:9904: F7        .byte $F7, $00, $F5, $00
- D 0 - I - 0x00B918 02:9908: F7        .byte $F7, $F4, $F5, $F6
- D 0 - I - 0x00B91C 02:990C: FB        .byte $FB, $00, $EF, $00
- D 0 - I - 0x00B920 02:9910: 03        .byte $03, $FC, $FE, $F5
- D 0 - I - 0x00B924 02:9914: F7        .byte $F7, $F7, $F5, $F5
- D 0 - I - 0x00B928 02:9918: F3        .byte $F3, $91, $EF, $EF
- D 0 - I - 0x00B92C 02:991C: F7        .byte $F7, $A6, $FB, $EF
- D 0 - I - 0x00B930 02:9920: F7        .byte $F7, $F7, $F9, $FA
- D 0 - I - 0x00B934 02:9924: F7        .byte $F7, $F7, $F5, $F8
- D 0 - I - 0x00B938 02:9928: FB        .byte $FB, $EF, $EF, $EF
- D 0 - I - 0x00B93C 02:992C: EF        .byte $EF, $00, $EF, $00
- D - - - - 0x00B940 02:9930: 03        .byte $03, $9D, $9D, $9E
- D 0 - I - 0x00B944 02:9934: AC        .byte $AC, $A9, $AA, $AB
- D 0 - I - 0x00B948 02:9938: DE        .byte $DE, $00, $00, $00
- D 0 - I - 0x00B94C 02:993C: 00        .byte $00, $C7, $00, $C7
- D 0 - I - 0x00B950 02:9940: 00        .byte $00, $9C, $9C, $01   ; 0xB0
- D 0 - I - 0x00B954 02:9944: 00        .byte $00, $00, $00, $C0
- D - - - - 0x00B958 02:9948: 00        .byte $00, $9C, $9C, $9E
- D - - - - 0x00B95C 02:994C: 01        .byte $01, $00, $A5, $00
- D 0 - I - 0x00B960 02:9950: 01        .byte $01, $9B, $9E, $00
- D 0 - I - 0x00B964 02:9954: 00        .byte $00, $BA, $00, $BA
- D 0 - I - 0x00B968 02:9958: 00        .byte $00, $00, $82, $82
- D 0 - I - 0x00B96C 02:995C: A0        .byte $A0, $00, $A2, $95
- D 0 - I - 0x00B970 02:9960: 00        .byte $00, $01, $95, $99
- D 0 - I - 0x00B974 02:9964: 97        .byte $97, $9B, $01, $00
- D 0 - I - 0x00B978 02:9968: 03        .byte $03, $97, $03, $01
- D 0 - I - 0x00B97C 02:996C: 98        .byte $98, $9E, $9A, $00
- D 0 - I - 0x00B980 02:9970: 95        .byte $95, $00, $97, $00
- D 0 - I - 0x00B984 02:9974: 03        .byte $03, $03, $03, $98
- D - - - - 0x00B988 02:9978: 03        .byte $03, $CF, $03, $03
- D - - - - 0x00B98C 02:997C: 00        .byte $00, $00, $CF, $00
- D 0 - I - 0x00B990 02:9980: A0        .byte $A0, $95, $A2, $97   ; 0xC0
- D 0 - I - 0x00B994 02:9984: 03        .byte $03, $99, $98, $9B
- D 0 - I - 0x00B998 02:9988: 9A        .byte $9A, $00, $9E, $00
- D 0 - I - 0x00B99C 02:998C: 84        .byte $84, $00, $86, $00
- D 0 - I - 0x00B9A0 02:9990: 85        .byte $85, $00, $87, $00
- D 0 - I - 0x00B9A4 02:9994: B4        .byte $B4, $B5, $B6, $B7
- D 0 - I - 0x00B9A8 02:9998: 92        .byte $92, $93, $00, $D4
- D 0 - I - 0x00B9AC 02:999C: 00        .byte $00, $96, $00, $96
- D 0 - I - 0x00B9B0 02:99A0: 00        .byte $00, $00, $00, $00
- D 0 - I - 0x00B9B4 02:99A4: DF        .byte $DF, $DF, $00, $00
- D 0 - I - 0x00B9B8 02:99A8: 00        .byte $00, $C7, $00, $00   ; 0xCA

; reserve
- D - - - - 0x00B9BC 02:99AC: 00        .byte $00, $00, $00, $00

; screen 0, horizontally - y axis, vertically - x axis
loc_level3_unique_screen_indexes:
- D 0 - I - 0x00B9C0 02:99B0: 04        .byte $04, $04, $04, $04, $04, $04, $21, $22, $23, $25, $00, $00
- D 0 - I - 0x00B9CC 02:99BC: 04        .byte $04, $04, $04, $04, $04, $04, $24, $29, $29, $25, $00, $00
- D 0 - I - 0x00B9D8 02:99C8: 05        .byte $05, $68, $6B, $6F, $72, $77, $68, $6B, $77, $25, $00, $00
- D 0 - I - 0x00B9E4 02:99D4: 6E        .byte $6E, $69, $6C, $70, $73, $16, $69, $6C, $16, $25, $00, $00
- D 0 - I - 0x00B9F0 02:99E0: 06        .byte $06, $6A, $6D, $71, $74, $78, $6A, $6D, $7B, $25, $00, $00
- D 0 - I - 0x00B9FC 02:99EC: 05        .byte $05, $68, $6B, $6F, $75, $77, $68, $7B, $7C, $25, $00, $00
- D 0 - I - 0x00BA08 02:99F8: 6E        .byte $6E, $69, $6C, $70, $73, $16, $69, $7C, $7B, $25, $00, $00
- D 0 - I - 0x00BA14 02:9A04: 06        .byte $06, $6A, $6D, $71, $76, $78, $6A, $6D, $7C, $25, $00, $00
- D 0 - I - 0x00BA20 02:9A10: 04        .byte $04, $04, $04, $04, $04, $04, $04, $04, $04, $25, $00, $00
- D 0 - I - 0x00BA2C 02:9A1C: 05        .byte $05, $68, $6B, $6F, $72, $77, $68, $6B, $77, $25, $00, $00
- D 0 - I - 0x00BA38 02:9A28: 6E        .byte $6E, $69, $6C, $70, $73, $16, $69, $6C, $7B, $25, $00, $00
- D 0 - I - 0x00BA44 02:9A34: 06        .byte $06, $6A, $6D, $71, $74, $78, $6A, $7B, $7C, $25, $00, $00
- D 0 - I - 0x00BA50 02:9A40: 05        .byte $05, $68, $6B, $6F, $75, $77, $7B, $7C, $7B, $25, $00, $00
- D 0 - I - 0x00BA5C 02:9A4C: 6E        .byte $6E, $69, $6C, $70, $73, $16, $7C, $7B, $7C, $25, $00, $00
- D 0 - I - 0x00BA68 02:9A58: 06        .byte $06, $6A, $6D, $71, $76, $78, $6A, $7C, $7B, $25, $00, $00
- D 0 - I - 0x00BA74 02:9A64: 04        .byte $04, $04, $04, $04, $04, $04, $04, $04, $7C, $25, $00, $00

loc_level3_unique_screen_attrs:
- D 0 - I - 0x00BA80 02:9A70: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BA88 02:9A78: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BA90 02:9A80: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BA98 02:9A88: A5        .byte $A5, $55, $55, $55, $55, $55, $A5, $55
- D 0 - I - 0x00BAA0 02:9A90: AA        .byte $AA, $55, $A9, $A6, $55, $A9, $AA, $A6
- D 0 - I - 0x00BAA8 02:9A98: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BAB0 02:9AA0: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

; screen 0, horizontally - y axis, vertically - x axis
loc_level2_unique_screen1_indexes:
- D 0 - I - 0x00BAB8 02:9AA8: 66        .byte $66, $66, $66, $66, $66, $9C, $66, $66, $67, $17, $00, $00
- D 0 - I - 0x00BAC4 02:9AB4: 6B        .byte $6B, $02, $6B, $02, $0B, $46, $8B, $0C, $08, $17, $00, $00
- D 0 - I - 0x00BAD0 02:9AC0: 6B        .byte $6B, $02, $6B, $02, $02, $46, $8B, $09, $08, $17, $00, $00
- D 0 - I - 0x00BADC 02:9ACC: 6E        .byte $6E, $68, $6E, $68, $68, $8E, $68, $68, $73, $17, $00, $00
- D 0 - I - 0x00BAE8 02:9AD8: 6B        .byte $6B, $02, $6B, $11, $9D, $46, $02, $11, $8C, $17, $00, $00
- D 0 - I - 0x00BAF4 02:9AE4: 6B        .byte $6B, $02, $6B, $13, $9E, $9F, $02, $13, $8D, $17, $00, $00
- D 0 - I - 0x00BB00 02:9AF0: 6E        .byte $6E, $68, $6E, $68, $68, $6E, $68, $68, $6C, $17, $00, $00
- D 0 - I - 0x00BB0C 02:9AFC: 6B        .byte $6B, $02, $6B, $02, $02, $6B, $02, $02, $6F, $17, $00, $00
- D 0 - I - 0x00BB18 02:9B08: 6B        .byte $6B, $02, $6B, $02, $02, $6B, $02, $02, $6F, $17, $00, $00
- D 0 - I - 0x00BB24 02:9B14: 72        .byte $72, $1A, $72, $1A, $1A, $72, $1A, $1A, $70, $17, $00, $00
- D 0 - I - 0x00BB30 02:9B20: 6B        .byte $6B, $02, $6B, $90, $91, $8F, $02, $90, $94, $17, $00, $00
- D 0 - I - 0x00BB3C 02:9B2C: 6B        .byte $6B, $02, $6B, $92, $93, $46, $02, $92, $95, $17, $00, $00
- D 0 - I - 0x00BB48 02:9B38: 72        .byte $72, $1A, $72, $1A, $1A, $48, $1A, $1A, $96, $17, $00, $00
- D 0 - I - 0x00BB54 02:9B44: 6B        .byte $6B, $02, $6B, $02, $02, $46, $02, $02, $96, $17, $00, $00
- D 0 - I - 0x00BB60 02:9B50: 6B        .byte $6B, $02, $6B, $02, $02, $46, $02, $96, $96, $17, $00, $00
- D 0 - I - 0x00BB6C 02:9B5C: 66        .byte $66, $66, $66, $66, $66, $9C, $66, $96, $96, $17, $00, $00

; screen 0
loc_level2_unique_screen2_indexes:
- D 0 - I - 0x00BB78 02:9B68: 9A        .byte $9A, $66, $66, $66, $66, $66, $66, $66, $67, $3A, $00, $00
- D 0 - I - 0x00BB84 02:9B74: 9B        .byte $9B, $03, $7B, $03, $28, $28, $25, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BB90 02:9B80: 9B        .byte $9B, $03, $78, $03, $28, $27, $2F, $30, $31, $3A, $00, $00
- D 0 - I - 0x00BB9C 02:9B8C: 9B        .byte $9B, $03, $7C, $03, $28, $28, $26, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BBA8 02:9B98: 9A        .byte $9A, $66, $66, $66, $66, $66, $66, $66, $67, $3A, $00, $00
- D 0 - I - 0x00BBB4 02:9BA4: 9B        .byte $9B, $03, $7B, $03, $28, $28, $25, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BBC0 02:9BB0: 9B        .byte $9B, $03, $78, $03, $28, $98, $03, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BBCC 02:9BBC: 9B        .byte $9B, $03, $78, $03, $28, $29, $03, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BBD8 02:9BC8: 9B        .byte $9B, $03, $78, $03, $28, $29, $03, $03, $28, $3A, $00, $00
- D 0 - I - 0x00BBE4 02:9BD4: 9B        .byte $9B, $03, $78, $03, $28, $29, $03, $03, $96, $3A, $00, $00
- D 0 - I - 0x00BBF0 02:9BE0: 9B        .byte $9B, $03, $7C, $03, $28, $99, $26, $03, $96, $3A, $00, $00
- D 0 - I - 0x00BBFC 02:9BEC: 9A        .byte $9A, $66, $66, $66, $66, $66, $66, $96, $96, $3A, $00, $00
- D 0 - I - 0x00BC08 02:9BF8: 9B        .byte $9B, $03, $7B, $03, $28, $28, $25, $96, $96, $3A, $00, $00
- D 0 - I - 0x00BC14 02:9C04: 9B        .byte $9B, $03, $78, $03, $28, $27, $96, $96, $96, $3A, $00, $00
- D 0 - I - 0x00BC20 02:9C10: 9B        .byte $9B, $03, $7C, $03, $28, $28, $96, $96, $96, $3A, $00, $00
- D 0 - I - 0x00BC2C 02:9C1C: 9A        .byte $9A, $66, $66, $66, $66, $66, $66, $96, $96, $3A, $00, $00

loc_level2_unique_screen1_attrs:
- D 0 - I - 0x00BC38 02:9C28: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BC40 02:9C30: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BC48 02:9C38: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BC50 02:9C40: 5A        .byte $5A, $5A, $5A, $55, $55, $5A, $5A, $5A
- D 0 - I - 0x00BC58 02:9C48: 55        .byte $55, $55, $55, $55, $55, $55, $A5, $AA
- D 0 - I - 0x00BC60 02:9C50: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BC68 02:9C58: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

loc_level2_unique_screen2_attrs:
- D 0 - I - 0x00BC70 02:9C60: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BC78 02:9C68: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BC80 02:9C70: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BC88 02:9C78: 55        .byte $55, $65, $55, $55, $55, $55, $95, $65
- D 0 - I - 0x00BC90 02:9C80: 55        .byte $55, $66, $55, $55, $95, $A9, $AA, $AA
- D 0 - I - 0x00BC98 02:9C88: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BCA0 02:9C90: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

; screen 1, 5, 3 (level 1.X), horizontally - y axis, vertically - x axis
loc_level1_unique_screen_indexes:
- D 0 - I - 0x00BCA8 02:9C98: 65        .byte $65, $01, $6F, $72, $72, $76, $79, $7A, $7B, $8B, $00, $00
- D 0 - I - 0x00BCB4 02:9CA4: 65        .byte $65, $01, $70, $01, $01, $77, $7C, $7D, $7E, $8B, $00, $00
- D 0 - I - 0x00BCC0 02:9CB0: 65        .byte $65, $01, $71, $73, $73, $78, $7F, $80, $81, $8B, $00, $00
- D 0 - I - 0x00BCCC 02:9CBC: 04        .byte $04, $07, $07, $07, $07, $07, $07, $07, $67, $8B, $00, $00
- D 0 - I - 0x00BCD8 02:9CC8: 05        .byte $05, $01, $6F, $72, $72, $72, $72, $74, $2A, $8B, $00, $00
- D 0 - I - 0x00BCE4 02:9CD4: 05        .byte $05, $01, $70, $01, $01, $88, $01, $70, $2C, $8B, $00, $00
- D 0 - I - 0x00BCF0 02:9CE0: 05        .byte $05, $01, $71, $73, $73, $73, $73, $75, $83, $8B, $00, $00
- D 0 - I - 0x00BCFC 02:9CEC: 89        .byte $89, $6A, $6B, $6D, $84, $86, $0B, $0B, $1B, $8B, $00, $00
- D 0 - I - 0x00BD08 02:9CF8: 8A        .byte $8A, $6C, $6B, $6E, $85, $87, $0C, $0C, $1C, $8B, $00, $00
- D 0 - I - 0x00BD14 02:9D04: 05        .byte $05, $01, $6F, $72, $72, $72, $72, $74, $82, $8B, $00, $00
- D 0 - I - 0x00BD20 02:9D10: 05        .byte $05, $01, $70, $01, $01, $88, $01, $70, $66, $8B, $00, $00
- D 0 - I - 0x00BD2C 02:9D1C: 05        .byte $05, $01, $71, $73, $73, $73, $73, $75, $66, $8B, $00, $00
- D 0 - I - 0x00BD38 02:9D28: 06        .byte $06, $08, $08, $08, $08, $08, $08, $08, $2A, $8B, $00, $00
- D 0 - I - 0x00BD44 02:9D34: 65        .byte $65, $01, $6F, $72, $72, $72, $72, $74, $2B, $8B, $00, $00
- D 0 - I - 0x00BD50 02:9D40: 65        .byte $65, $01, $70, $01, $01, $01, $01, $70, $2C, $8B, $00, $00
- D 0 - I - 0x00BD5C 02:9D4C: 65        .byte $65, $01, $71, $73, $73, $73, $73, $75, $68, $8B, $00, $00

loc_level1_unique_screen_attrs:
- D 0 - I - 0x00BD68 02:9D58: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BD70 02:9D60: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BD78 02:9D68: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BD80 02:9D70: A5        .byte $A5, $65, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BD88 02:9D78: AA        .byte $AA, $66, $A5, $55, $55, $55, $A5, $65
- D 0 - I - 0x00BD90 02:9D80: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA
- D 0 - I - 0x00BD98 02:9D88: 0A        .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A

loc_level4_unique_screen_indexes:
- D 0 - I - 0x00BDA0 02:9D90: 5B        .byte $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $0E, $3A, $00
- D 0 - I - 0x00BDAC 02:9D9C: 01        .byte $01, $02, $01, $02, $01, $02, $1C, $1D, $1D, $0E, $3A, $00
- D 0 - I - 0x00BDB8 02:9DA8: 02        .byte $02, $01, $02, $5F, $02, $01, $1E, $1F, $1F, $0E, $3A, $00
- D 0 - I - 0x00BDC4 02:9DB4: 5B        .byte $5B, $5B, $5B, $12, $5B, $5B, $5B, $5B, $5B, $0E, $3A, $00
- D 0 - I - 0x00BDD0 02:9DC0: 02        .byte $02, $03, $02, $12, $02, $03, $60, $03, $02, $0E, $3A, $00
- D 0 - I - 0x00BDDC 02:9DCC: 5C        .byte $5C, $05, $5C, $12, $5C, $05, $12, $05, $5C, $0E, $3A, $00
- D 0 - I - 0x00BDE8 02:9DD8: 5D        .byte $5D, $5E, $5D, $62, $5D, $5E, $12, $5E, $5D, $0E, $3A, $00
- D 0 - I - 0x00BDF4 02:9DE4: 01        .byte $01, $03, $01, $03, $01, $03, $12, $03, $01, $0E, $3A, $00
- D 0 - I - 0x00BE00 02:9DF0: 02        .byte $02, $03, $02, $03, $02, $03, $12, $03, $02, $0E, $3A, $00
- D 0 - I - 0x00BE0C 02:9DFC: 5C        .byte $5C, $05, $5C, $05, $5C, $05, $12, $05, $5C, $0E, $3A, $00
- D 0 - I - 0x00BE18 02:9E08: 5D        .byte $5D, $5E, $5D, $5F, $5D, $5E, $12, $5E, $5D, $0E, $3A, $00
- D 0 - I - 0x00BE24 02:9E14: 01        .byte $01, $03, $01, $12, $01, $03, $61, $03, $01, $0E, $3A, $00
- D 0 - I - 0x00BE30 02:9E20: 5B        .byte $5B, $5B, $5B, $12, $5B, $5B, $5B, $5B, $5B, $0E, $3A, $00
- D 0 - I - 0x00BE3C 02:9E2C: 01        .byte $01, $02, $01, $12, $01, $02, $01, $02, $01, $0E, $3A, $00
- D 0 - I - 0x00BE48 02:9E38: 02        .byte $02, $01, $02, $2C, $02, $01, $02, $01, $02, $0E, $3A, $00
- D 0 - I - 0x00BE54 02:9E44: 5B        .byte $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $5B, $0E, $3A, $00

loc_level4_boss_screen_indexes:
- D 0 - I - 0x00BE60 02:9E50: 6B        .byte $6B, $6B, $6B, $6B, $6B, $71, $74, $74, $75, $0E, $3A, $00
- D 0 - I - 0x00BE6C 02:9E5C: 6B        .byte $6B, $6B, $6C, $6D, $6B, $72, $1C, $1D, $1D, $0E, $3A, $00
- D 0 - I - 0x00BE78 02:9E68: 6B        .byte $6B, $6B, $6C, $6E, $6B, $72, $1E, $1F, $1F, $0E, $3A, $00
- D 0 - I - 0x00BE84 02:9E74: 6B        .byte $6B, $6B, $6F, $70, $6B, $73, $76, $76, $77, $0E, $3A, $00
- D 0 - I - 0x00BE90 02:9E80: 94        .byte $94, $96, $9E, $83, $78, $79, $7A, $81, $82, $0E, $3A, $00
- D 0 - I - 0x00BE9C 02:9E8C: 95        .byte $95, $97, $9F, $72, $7B, $7C, $7D, $81, $82, $0E, $3A, $00
- D 0 - I - 0x00BEA8 02:9E98: 98        .byte $98, $9A, $A0, $84, $7E, $7F, $80, $81, $82, $0E, $3A, $00
- D 0 - I - 0x00BEB4 02:9EA4: 99        .byte $99, $9B, $85, $2E, $2E, $88, $89, $8A, $8B, $0E, $3A, $00
- D 0 - I - 0x00BEC0 02:9EB0: 95        .byte $95, $97, $86, $2E, $2E, $8C, $8D, $8D, $8E, $0E, $3A, $00
- D 0 - I - 0x00BECC 02:9EBC: 98        .byte $98, $9A, $86, $2E, $92, $8C, $8D, $8D, $8E, $0E, $3A, $00
- D 0 - I - 0x00BED8 02:9EC8: 99        .byte $99, $9B, $86, $2E, $93, $8C, $8D, $8D, $8E, $0E, $3A, $00
- D 0 - I - 0x00BEE4 02:9ED4: 95        .byte $95, $97, $86, $2E, $2E, $8C, $8D, $8D, $8E, $0E, $3A, $00
- D 0 - I - 0x00BEF0 02:9EE0: 98        .byte $98, $9A, $87, $2E, $2E, $8F, $90, $90, $91, $0E, $3A, $00
- D 0 - I - 0x00BEFC 02:9EEC: 99        .byte $99, $9B, $A1, $83, $78, $79, $7A, $81, $82, $0E, $3A, $00
- D 0 - I - 0x00BF08 02:9EF8: 95        .byte $95, $97, $9F, $72, $7B, $7C, $7D, $81, $82, $0E, $3A, $00
- D 0 - I - 0x00BF14 02:9F04: 9C        .byte $9C, $9D, $A2, $84, $7E, $7F, $80, $81, $82, $0E, $3A, $00

loc_level4_unique_screen_attrs:
- D 0 - I - 0x00BF20 02:9F10: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BF28 02:9F18: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF30 02:9F20: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF38 02:9F28: 95        .byte $95, $65, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF40 02:9F30: 99        .byte $99, $66, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF48 02:9F38: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF50 02:9F40: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05

loc_level4_boss_screen_attrs:
- D 0 - I - 0x00BF58 02:9F48: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x00BF60 02:9F50: 55        .byte $55, $55, $55, $95, $A5, $A5, $65, $55
- D 0 - I - 0x00BF68 02:9F58: 55        .byte $55, $55, $55, $99, $6A, $9A, $66, $55
- D 0 - I - 0x00BF70 02:9F60: 95        .byte $95, $65, $55, $99, $AA, $AA, $66, $55
- D 0 - I - 0x00BF78 02:9F68: 99        .byte $99, $66, $AA, $AA, $AA, $AA, $AA, $AA
- D 0 - I - 0x00BF80 02:9F70: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x00BF88 02:9F78: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05
- D 0 - I - 0x00BF90 02:9F80: 00        .byte $00, $80, $F0, $F8, $F8, $F8, $F8, $F8

; reserve
- D - - - - 0x00BF98 02:9F88: 00        .byte $00, $80, $88, $84, $84, $84, $84, $84
- D - - - - 0x00BFA0 02:9F90: F8        .byte $F8, $F8, $78, $78, $70, $00, $00, $00
- D - - - - 0x00BFA8 02:9F98: 84        .byte $84, $84, $84, $84, $8C, $F0, $00, $00
- D - - - - 0x00BFB0 02:9FA0: 00        .byte $00, $00, $00, $F8, $38, $F8, $38, $F0
- D - - - - 0x00BFB8 02:9FA8: 00        .byte $00, $00, $F8, $08, $F0, $C0, $08, $F0
- D - - - - 0x00BFC0 02:9FB0: 00        .byte $00, $00, $38, $7C, $7C, $7C, $78, $7E
- D - - - - 0x00BFC8 02:9FB8: 00        .byte $00, $00, $04, $02, $32, $1A, $06, $7E
- D - - - - 0x00BFD0 02:9FC0: 00        .byte $00, $00, $38, $7C, $7C, $7C, $78, $7E
- D - - - - 0x00BFD8 02:9FC8: 00        .byte $00, $00, $04, $02, $02, $02, $06, $7E
- D - - - - 0x00BFE0 02:9FD0: 00        .byte $00, $2C, $42, $58, $1A, $42, $34, $00
- D - - - - 0x00BFE8 02:9FD8: 00        .byte $00, $3C, $7E, $66, $66, $7E, $3C, $00
- D - - - - 0x00BFF0 02:9FE0: 08        .byte $08, $66, $5A, $BC, $3D, $5A, $66, $10
- D - - - - 0x00BFF8 02:9FE8: 18        .byte $18, $7E, $66, $C3, $C3, $66, $7E, $18
- D - - - - 0x00C000 02:9FF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x00C008 02:9FF8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00

.out .sprintf("Free bytes in bank 02_2: 0x%X [%d]", ($A000 - *), ($A000 - *))



