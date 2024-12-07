.segment "BANK_05_2"
.include "bank_ram.inc"
.org $8000  ; for listing file
; 0x016010-0x01800F

; 2 Page
- D 0 - - - 0x016010 05:8000: 72 95     .addr loc_skeleton_right_frame_1  ; CPU Address $9572
- D 0 - I - 0x016012 05:8002: 93 95     .addr loc_skeleton_left_frame_1   ; CPU Address $9593
- D 0 - I - 0x016014 05:8004: B4 95     .addr loc_skeleton_right_frame_2  ; CPU Address $95B4
- D 0 - I - 0x016016 05:8006: D1 95     .addr loc_skeleton_left_frame_2   ; CPU Address $95D1
- D 0 - I - 0x016018 05:8008: EE 95     .addr loc_skeleton_right_frame_3  ; CPU Address $95EE
- D 0 - I - 0x01601A 05:800A: 0F 96     .addr loc_skeleton_left_frame_3   ; CPU Address $960F
- D 0 - I - 0x01601C 05:800C: 30 96     .addr loc_skeleton_right_frame_4  ; CPU Address $9630
- D 0 - I - 0x01601E 05:800E: 51 96     .addr loc_skeleton_left_frame_4   ; CPU Address $9651
- D 0 - I - 0x016020 05:8010: 72 96     .addr loc_skeleton_right_frame_5  ; CPU Address $9672
- D 0 - I - 0x016022 05:8012: 8B 96     .addr loc_skeleton_left_frame_5   ; CPU Address $968B
- D 0 - I - 0x016024 05:8014: A4 96     .addr loc_skeleton_right_frame_6  ; CPU Address $96A4
- D 0 - I - 0x016026 05:8016: B1 96     .addr loc_skeleton_left_frame_6   ; CPU Address $96B1
- D 0 - I - 0x016028 05:8018: BE 96     .addr loc_skeleton_bones_frame_1  ; CPU Address $96BE
- D 0 - I - 0x01602A 05:801A: D3 96     .addr loc_skeleton_bones_frame_2  ; CPU Address $96D3

- D 0 - I - 0x01602C 05:801C: E8 96     .addr loc_mummy_right_frame_1  ; CPU Address $96E8
- D 0 - I - 0x01602E 05:801E: FD 96     .addr loc_mummy_left_frame_1   ; CPU Address $96FD
- D 0 - I - 0x016030 05:8020: 12 97     .addr loc_mummy_right_frame_2  ; CPU Address $9712
- D 0 - I - 0x016032 05:8022: 2B 97     .addr loc_mummy_left_frame_2   ; CPU Address $972B
- D 0 - I - 0x016034 05:8024: 44 97     .addr loc_mummy_right_frame_3  ; CPU Address $9744
- D 0 - I - 0x016036 05:8026: 5D 97     .addr loc_mummy_left_frame_3   ; CPU Address $975D
- D 0 - I - 0x016038 05:8028: 76 97     .addr loc_mummy_right_frame_4  ; CPU Address $9776
- D 0 - I - 0x01603A 05:802A: 87 97     .addr loc_mummy_left_frame_4   ; CPU Address $9787
- D 0 - I - 0x01603C 05:802C: 98 97     .addr loc_mummy_right_frame_5  ; CPU Address $9798
- D 0 - I - 0x01603E 05:802E: A5 97     .addr loc_mummy_left_frame_5   ; CPU Address $97A5

- D 0 - I - 0x016040 05:8030: B2 97     .addr loc_gargoyle_right_frame_1  ; CPU Address $97B2
- D 0 - I - 0x016042 05:8032: C7 97     .addr loc_gargoyle_left_frame_1   ; CPU Address $97C7
- D 0 - I - 0x016044 05:8034: DC 97     .addr loc_gargoyle_right_frame_2  ; CPU Address $97DC
- D 0 - I - 0x016046 05:8036: ED 97     .addr loc_gargoyle_left_frame_2   ; CPU Address $97ED
- D 0 - I - 0x016048 05:8038: FE 97     .addr loc_gargoyle_right_frame_3  ; CPU Address $97FE
- D 0 - I - 0x01604A 05:803A: 0F 98     .addr loc_gargoyle_left_frame_3   ; CPU Address $980F

- D 0 - I - 0x01604C 05:803C: 20        .byte $20   ; 
- D 0 - I - 0x01604D 05:803D: 98        .byte $98   ; 
- D 0 - I - 0x01604E 05:803E: 35        .byte $35   ; <5>
- D 0 - I - 0x01604F 05:803F: 98        .byte $98   ; 
- D 0 - I - 0x016050 05:8040: 4A        .byte $4A   ; <J>
- D 0 - I - 0x016051 05:8041: 98        .byte $98   ; 
- D 0 - I - 0x016052 05:8042: 53        .byte $53   ; <S>
- D 0 - I - 0x016053 05:8043: 98        .byte $98   ; 
- D 0 - I - 0x016054 05:8044: 5C        .byte $5C   ; 
- D 0 - I - 0x016055 05:8045: 98        .byte $98   ; 
- D 0 - I - 0x016056 05:8046: 65        .byte $65   ; <e>
- D 0 - I - 0x016057 05:8047: 98        .byte $98   ; 
- D 0 - I - 0x016058 05:8048: 6E        .byte $6E   ; <n>
- D 0 - I - 0x016059 05:8049: 98        .byte $98   ; 
- D 0 - I - 0x01605A 05:804A: 77        .byte $77   ; <w>
- D 0 - I - 0x01605B 05:804B: 98        .byte $98   ; 
- D 0 - I - 0x01605C 05:804C: 7C        .byte $7C   ; 
- D 0 - I - 0x01605D 05:804D: 98        .byte $98   ; 
- D 0 - I - 0x01605E 05:804E: 89        .byte $89   ; 
- D 0 - I - 0x01605F 05:804F: 98        .byte $98   ; 
- D 0 - I - 0x016060 05:8050: 9A        .byte $9A   ; 
- D 0 - I - 0x016061 05:8051: 98        .byte $98   ; 
- D 0 - I - 0x016062 05:8052: AB        .byte $AB   ; 
- D 0 - I - 0x016063 05:8053: 98        .byte $98   ; 
- D 0 - I - 0x016064 05:8054: BC        .byte $BC   ; 
- D 0 - I - 0x016065 05:8055: 98        .byte $98   ; 
- D 0 - I - 0x016066 05:8056: C9        .byte $C9   ; 
- D 0 - I - 0x016067 05:8057: 98        .byte $98   ; 
- D 0 - I - 0x016068 05:8058: D2        .byte $D2   ; 
- D 0 - I - 0x016069 05:8059: 98        .byte $98   ; 
- D 0 - I - 0x01606A 05:805A: DB        .byte $DB   ; 
- D 0 - I - 0x01606B 05:805B: 98        .byte $98   ; 
- D 0 - I - 0x01606C 05:805C: E4        .byte $E4   ; 
- D 0 - I - 0x01606D 05:805D: 98        .byte $98   ; 
- D 0 - I - 0x01606E 05:805E: ED        .byte $ED   ; 
- D 0 - I - 0x01606F 05:805F: 98        .byte $98   ; 
- D 0 - I - 0x016070 05:8060: F6        .byte $F6   ; 
- D 0 - I - 0x016071 05:8061: 98        .byte $98   ; 
- D 0 - I - 0x016072 05:8062: FF        .byte $FF   ; 
- D 0 - I - 0x016073 05:8063: 98        .byte $98   ; 
- D 0 - I - 0x016074 05:8064: 04        .byte $04   ; 
- D 0 - I - 0x016075 05:8065: 99        .byte $99   ; 
- D 0 - I - 0x016076 05:8066: 09        .byte $09   ; 
- D 0 - I - 0x016077 05:8067: 99        .byte $99   ; 
- D 0 - I - 0x016078 05:8068: 12        .byte $12   ; 
- D 0 - I - 0x016079 05:8069: 99        .byte $99   ; 
- D 0 - I - 0x01607A 05:806A: 1B        .byte $1B   ; 
- D 0 - I - 0x01607B 05:806B: 99        .byte $99   ; 
- D 0 - I - 0x01607C 05:806C: 24        .byte $24   ; 
- D 0 - I - 0x01607D 05:806D: 99        .byte $99   ; 
- D 0 - I - 0x01607E 05:806E: 2D        .byte $2D   ; 
- D 0 - I - 0x01607F 05:806F: 99        .byte $99   ; 

; Egyptian with bow
- D 0 - I - 0x016080 05:8070: 32 99     .addr loc_egyptian_bow_right_frame_1    ; CPU Address $9932
- D 0 - I - 0x016082 05:8072: 53 99     .addr loc_egyptian_bow_left_frame_1     ; CPU Address $9953
- D 0 - I - 0x016084 05:8074: 74 99     .addr loc_egyptian_bow_right_frame_2    ; CPU Address $9974
- D 0 - I - 0x016086 05:8076: 95 99     .addr loc_egyptian_bow_left_frame_2     ; CPU Address $9995
- D 0 - I - 0x016088 05:8078: B6 99     .addr loc_egyptian_bow_right_frame_3    ; CPU Address $99B6
- D 0 - I - 0x01608A 05:807A: D7 99     .addr loc_egyptian_bow_left_frame_3     ; CPU Address $99D7
- D 0 - I - 0x01608C 05:807C: F8 99     .addr loc_egyptian_bow_right_frame_4    ; CPU Address $99F8
- D 0 - I - 0x01608E 05:807E: 15 9A     .addr loc_egyptian_bow_left_frame_4     ; CPU Address $9A15
- D 0 - I - 0x016090 05:8080: 32 9A     .addr loc_egyptian_bow_right_frame_5    ; CPU Address $9A32
- D 0 - I - 0x016092 05:8082: 43 9A     .addr loc_egyptian_bow_left_frame_5     ; CPU Address $9A43
- D 0 - I - 0x016094 05:8084: 54 9A     .addr loc_egyptian_bow_right_frame_6    ; CPU Address $9A54
- D 0 - I - 0x016096 05:8086: 71 9A     .addr loc_egyptian_bow_left_frame_6     ; CPU Address $9A71
- D 0 - I - 0x016098 05:8088: 8E 9A     .addr loc_egyptian_bow_right_frame_7    ; CPU Address $9A8E
- D 0 - I - 0x01609A 05:808A: AF 9A     .addr loc_egyptian_bow_left_frame_7     ; CPU Address $9AAF
- D 0 - I - 0x01609C 05:808C: D0 9A     .addr loc_egyptian_bow_right_frame_8    ; CPU Address $9AD0
- D 0 - I - 0x01609E 05:808E: F1 9A     .addr loc_egyptian_bow_left_frame_8     ; CPU Address $9AF1

; Egyptian with sword
- D 0 - I - 0x0160A0 05:8090: 12 9B     .addr loc_egyptian_sword_right_frame_1   ; CPU Address $9B12
- D 0 - I - 0x0160A2 05:8092: 23 9B     .addr loc_egyptian_sword_left_frame_1    ; CPU Address $9B23
- D 0 - I - 0x0160A4 05:8094: 34 9B     .addr loc_egyptian_sword_right_frame_2   ; CPU Address $9B34
- D 0 - I - 0x0160A6 05:8096: 45 9B     .addr loc_egyptian_sword_left_frame_2    ; CPU Address $9B45
- D 0 - I - 0x0160A8 05:8098: 56 9B     .addr loc_egyptian_sword_right_frame_3   ; CPU Address $9B56
- D 0 - I - 0x0160AA 05:809A: 67 9B     .addr loc_egyptian_sword_left_frame_3    ; CPU Address $9B67
- D 0 - I - 0x0160AC 05:809C: 78 9B     .addr loc_egyptian_sword_right_frame_4   ; CPU Address $9B78
- D 0 - I - 0x0160AE 05:809E: 89 9B     .addr loc_egyptian_sword_left_frame_4    ; CPU Address $9B89
- D 0 - I - 0x0160B0 05:80A0: 9A 9B     .addr loc_egyptian_sword_right_frame_5   ; CPU Address $9B9A
- D 0 - I - 0x0160B2 05:80A2: AB 9B     .addr loc_egyptian_sword_left_frame_5    ; CPU Address $9BAB
- D 0 - I - 0x0160B4 05:80A4: BC 9B     .addr loc_egyptian_sword_right_frame_6   ; CPU Address $9BBC
- D 0 - I - 0x0160B6 05:80A6: C9 9B     .addr loc_egyptian_sword_left_frame_6    ; CPU Address $9BC9
- D 0 - I - 0x0160B8 05:80A8: FA 9B     .addr loc_egyptian_sword_right_frame_7   ; CPU Address $9BFA
- D 0 - I - 0x0160BA 05:80AA: 07 9C     .addr loc_egyptian_sword_left_frame_7    ; CPU Address $9C07
- D 0 - I - 0x0160BC 05:80AC: D6 9B     .addr loc_egyptian_sword_right_frame_8   ; CPU Address $9BD6
- D 0 - I - 0x0160BE 05:80AE: DF 9B     .addr loc_egyptian_sword_left_frame_8    ; CPU Address $9BDF
- D 0 - I - 0x0160C0 05:80B0: E8 9B     .addr loc_egyptian_sword_right_frame_9   ; CPU Address $9BE8
- D 0 - I - 0x0160C2 05:80B2: F1 9B     .addr loc_egyptian_sword_left_frame_9    ; CPU Address $9BF1

; Ninja upside down
- D 0 - I - 0x0160C4 05:80B4: 14 9C     .addr loc_ninja_right_frame_1   ; CPU Address $9C14
- D 0 - I - 0x0160C6 05:80B6: 2D 9C     .addr loc_ninja_left_frame_1    ; CPU Address $9C2D
- D 0 - I - 0x0160C8 05:80B8: 46 9C     .addr loc_ninja_right_frame_2   ; CPU Address $9C46
- D 0 - I - 0x0160CA 05:80BA: 5F 9C     .addr loc_ninja_left_frame_2    ; CPU Address $9C5F
- D 0 - I - 0x0160CC 05:80BC: 78 9C     .addr loc_ninja_right_frame_3   ; CPU Address $9C78
- D 0 - I - 0x0160CE 05:80BE: 91 9C     .addr loc_ninja_left_frame_3    ; CPU Address $9C91
- D 0 - I - 0x0160D0 05:80C0: AA 9C     .addr loc_ninja_right_frame_4   ; CPU Address $9CAA
- D 0 - I - 0x0160D2 05:80C2: C3 9C     .addr loc_ninja_left_frame_4    ; CPU Address $9CC3
- D 0 - I - 0x0160D4 05:80C4: E6 9C     .addr loc_ninja_right_frame_5   ; CPU Address $9CE6
- D 0 - I - 0x0160D6 05:80C6: FF 9C     .addr loc_ninja_left_frame_5    ; CPU Address $9CFF

- - - - - - 0x0160D8 05:80C8: 00        .byte $00   ; 
- - - - - - 0x0160D9 05:80C9: 18        .byte $18   ; 
- - - - - - 0x0160DA 05:80CA: 3C        .byte $3C   ; 
- - - - - - 0x0160DB 05:80CB: 00        .byte $00   ; 
- - - - - - 0x0160DC 05:80CC: 00        .byte $00   ; 
- - - - - - 0x0160DD 05:80CD: 00        .byte $00   ; 
- - - - - - 0x0160DE 05:80CE: 00        .byte $00   ; 
- - - - - - 0x0160DF 05:80CF: 00        .byte $00   ; 
- - - - - - 0x0160E0 05:80D0: 01        .byte $01   ; 
- - - - - - 0x0160E1 05:80D1: 01        .byte $01   ; 
- - - - - - 0x0160E2 05:80D2: 01        .byte $01   ; 
- - - - - - 0x0160E3 05:80D3: 03        .byte $03   ; 
- - - - - - 0x0160E4 05:80D4: 03        .byte $03   ; 
- - - - - - 0x0160E5 05:80D5: 03        .byte $03   ; 
- - - - - - 0x0160E6 05:80D6: 03        .byte $03   ; 
- - - - - - 0x0160E7 05:80D7: 02        .byte $02   ; 
- - - - - - 0x0160E8 05:80D8: 00        .byte $00   ; 
- - - - - - 0x0160E9 05:80D9: 00        .byte $00   ; 
- - - - - - 0x0160EA 05:80DA: 00        .byte $00   ; 
- - - - - - 0x0160EB 05:80DB: 00        .byte $00   ; 
- - - - - - 0x0160EC 05:80DC: 01        .byte $01   ; 
- - - - - - 0x0160ED 05:80DD: 01        .byte $01   ; 
- - - - - - 0x0160EE 05:80DE: 01        .byte $01   ; 
- - - - - - 0x0160EF 05:80DF: 00        .byte $00   ; 
- - - - - - 0x0160F0 05:80E0: 00        .byte $00   ; 
- - - - - - 0x0160F1 05:80E1: 00        .byte $00   ; 
- - - - - - 0x0160F2 05:80E2: 00        .byte $00   ; 
- - - - - - 0x0160F3 05:80E3: 00        .byte $00   ; 
- - - - - - 0x0160F4 05:80E4: 00        .byte $00   ; 
- - - - - - 0x0160F5 05:80E5: 00        .byte $00   ; 
- - - - - - 0x0160F6 05:80E6: 1F        .byte $1F   ; 
- - - - - - 0x0160F7 05:80E7: FE        .byte $FE   ; 
- - - - - - 0x0160F8 05:80E8: 00        .byte $00   ; 
- - - - - - 0x0160F9 05:80E9: 00        .byte $00   ; 
- - - - - - 0x0160FA 05:80EA: 00        .byte $00   ; 
- - - - - - 0x0160FB 05:80EB: 00        .byte $00   ; 
- - - - - - 0x0160FC 05:80EC: 00        .byte $00   ; 
- - - - - - 0x0160FD 05:80ED: 00        .byte $00   ; 
- - - - - - 0x0160FE 05:80EE: 00        .byte $00   ; 
- - - - - - 0x0160FF 05:80EF: 0E        .byte $0E   ; 
- - - - - - 0x016100 05:80F0: FC        .byte $FC   ; 
- - - - - - 0x016101 05:80F1: F8        .byte $F8   ; 
- - - - - - 0x016102 05:80F2: F8        .byte $F8   ; 
- - - - - - 0x016103 05:80F3: F8        .byte $F8   ; 
- - - - - - 0x016104 05:80F4: F8        .byte $F8   ; 
- - - - - - 0x016105 05:80F5: 82        .byte $82   ; 
- - - - - - 0x016106 05:80F6: 02        .byte $02   ; 
- - - - - - 0x016107 05:80F7: 00        .byte $00   ; 
- - - - - - 0x016108 05:80F8: 1C        .byte $1C   ; 
- - - - - - 0x016109 05:80F9: 78        .byte $78   ; <x>
- - - - - - 0x01610A 05:80FA: 78        .byte $78   ; <x>
- - - - - - 0x01610B 05:80FB: F8        .byte $F8   ; 
- - - - - - 0x01610C 05:80FC: FC        .byte $FC   ; 
- - - - - - 0x01610D 05:80FD: 86        .byte $86   ; 
- - - - - - 0x01610E 05:80FE: 03        .byte $03   ; 
- - - - - - 0x01610F 05:80FF: 01        .byte $01   ; 

; Bat
- D 0 - I - 0x016110 05:8100: 78 84     .addr loc_bat_right_frame_1  ; CPU Address $8478
- D 0 - I - 0x016112 05:8102: 89 84     .addr loc_bat_left_frame_1   ; CPU Address $8489
- D 0 - I - 0x016114 05:8104: 9A 84     .addr loc_bat_right_frame_2  ; CPU Address $849A
- D 0 - I - 0x016116 05:8106: AB 84     .addr loc_bat_left_frame_2   ; CPU Address $84AB
- D 0 - I - 0x016118 05:8108: BC 84     .addr loc_bat_right_frame_3  ; CPU Address $84BC
- D 0 - I - 0x01611A 05:810A: CD 84     .addr loc_bat_left_frame_3   ; CPU Address $84CD

; Land diver
- D 0 - I - 0x01611C 05:810C: DE 84     .addr loc_land_diver_right_frame_1  ; CPU Address $84DE
- D 0 - I - 0x01611E 05:810E: FB 84     .addr loc_land_diver_left_frame_1   ; CPU Address $84FB
- D 0 - I - 0x016120 05:8110: 18 85     .addr loc_land_diver_right_frame_2  ; CPU Address $8518
- D 0 - I - 0x016122 05:8112: 35 85     .addr loc_land_diver_left_frame_2   ; CPU Address $8535
- D 0 - I - 0x016124 05:8114: 52 85     .addr loc_land_diver_right_frame_3  ; CPU Address $8552
- D 0 - I - 0x016126 05:8116: 6B 85     .addr loc_land_diver_left_frame_3   ; CPU Address $856B
- D 0 - I - 0x016128 05:8118: 84 85     .addr loc_land_diver_right_frame_4  ; CPU Address $8584
- D 0 - I - 0x01612A 05:811A: A1 85     .addr loc_land_diver_left_frame_4   ; CPU Address $85A1
- D 0 - I - 0x01612C 05:811C: BE 85     .addr loc_land_diver_right_frame_5  ; CPU Address $85BE
- D 0 - I - 0x01612E 05:811E: D3 85     .addr loc_land_diver_left_frame_5   ; CPU Address $85D3
- D 0 - I - 0x016130 05:8120: E8 85     .addr loc_land_diver_right_frame_6  ; CPU Address $85E8
- D 0 - I - 0x016132 05:8122: F9 85     .addr loc_land_diver_left_frame_6   ; CPU Address $85F9
- D 0 - I - 0x016134 05:8124: 0A 86     .addr loc_land_diver_right_frame_7  ; CPU Address $860A
- D 0 - I - 0x016136 05:8126: 1B 86     .addr loc_land_diver_left_frame_7   ; CPU Address $861B

; The barrel, the cobblestone
- D 0 - I - 0x016138 05:8128: 2C 86     .addr loc_barrel_frame_1  ; CPU Address $862C
- D 0 - I - 0x01613A 05:812A: 3D 86     .addr loc_barrel_frame_2  ; CPU Address $863D
- D 0 - I - 0x01613C 05:812C: 4E 86     .addr loc_barrel_frame_3  ; CPU Address $864E
- D 0 - I - 0x01613E 05:812E: 5F 86     .addr loc_barrel_frame_4  ; CPU Address $865F

- D 0 - I - 0x016140 05:8130: 70 86     .word $8670

; Cat with the gun/the knife
- D 0 - I - 0x016142 05:8132: 9D 86     .addr loc_big_cat_right_frame_1    ; CPU Address $869D
- D 0 - I - 0x016144 05:8134: B2 86     .addr loc_big_cat_left_frame_1     ; CPU Address $86B2
- D 0 - I - 0x016146 05:8136: C7 86     .addr loc_big_cat_right_frame_2    ; CPU Address $86C7
- D 0 - I - 0x016148 05:8138: D8 86     .addr loc_big_cat_left_frame_2     ; CPU Address $86D8
- D 0 - I - 0x01614A 05:813A: E9 86     .addr loc_big_cat_right_frame_3    ; CPU Address $86E9
- D 0 - I - 0x01614C 05:813C: 02 87     .addr loc_big_cat_left_frame_3     ; CPU Address $8702
- D 0 - I - 0x01614E 05:813E: 3D 87     .addr loc_big_cat_right_frame_4    ; CPU Address $873D
- D 0 - I - 0x016150 05:8140: 4E 87     .addr loc_big_cat_left_frame_4     ; CPU Address $874E
- D 0 - I - 0x016152 05:8142: 5F 87     .addr loc_big_cat_right_frame_5    ; CPU Address $875F
- D 0 - I - 0x016154 05:8144: 70 87     .addr loc_big_cat_left_frame_5     ; CPU Address $8770
- D 0 - I - 0x016156 05:8146: 1B 87     .addr loc_big_cat_right_frame_6    ; CPU Address $871B
- D 0 - I - 0x016158 05:8148: 2C 87     .addr loc_big_cat_left_frame_6     ; CPU Address $872C

- D 0 - I - 0x01615A 05:814A: 81 87     .addr loc_cat_knife_right_frame_1    ; CPU Address $8781
- D 0 - I - 0x01615C 05:814C: 86 87     .addr loc_cat_knife_left_frame_1     ; CPU Address $8786
- D 0 - I - 0x01615E 05:814E: 8B 87     .addr loc_cat_knife_right_frame_2    ; CPU Address $878B
- D 0 - I - 0x016160 05:8150: 94 87     .addr loc_cat_knife_left_frame_2     ; CPU Address $8794

- D 0 - I - 0x016162 05:8152: 9D 87     .addr loc_cat_gun_right_frame_1    ; CPU Address $879D
- D 0 - I - 0x016164 05:8154: A2 87     .addr loc_cat_gun_left_frame_1     ; CPU Address $87A2
- D 0 - I - 0x016166 05:8156: A7 87     .addr loc_cat_gun_right_frame_2    ; CPU Address $87A7
- D 0 - I - 0x016168 05:8158: B0 87     .addr loc_cat_gun_left_frame_2     ; CPU Address $87B0

- D 0 - I - 0x01616A 05:815A: 2D 88     .addr loc_jumping_sailer_right_frame_1   ; CPU Address $882D
- D 0 - I - 0x01616C 05:815C: 4A 88     .addr loc_jumping_sailer_left_frame_1    ; CPU Address $884A
- D 0 - I - 0x01616E 05:815E: EB 87     .addr loc_jumping_sailer_right_frame_2   ; CPU Address $87EB
- D 0 - I - 0x016170 05:8160: 0C 88     .addr loc_jumping_sailer_left_frame_2    ; CPU Address $880C
- D 0 - I - 0x016172 05:8162: B9 87     .addr loc_jumping_sailer_right_frame_3   ; CPU Address $87B9
- D 0 - I - 0x016174 05:8164: D2 87     .addr loc_jumping_sailer_left_frame_3    ; CPU Address $87D2
- D - - - - 0x016176 05:8166: 67 88     .addr loc_jumping_sailer_right_frame_4   ; CPU Address $8867
- D 0 - I - 0x016178 05:8168: 80 88     .addr loc_jumping_sailer_left_frame_4    ; CPU Address $8880
- D - - - - 0x01617A 05:816A: 99 88     .addr loc_jumping_sailer_right_frame_5   ; CPU Address $8899
- D 0 - I - 0x01617C 05:816C: AA 88     .addr loc_jumping_sailer_left_frame_5    ; CPU Address $88AA

- D 0 - I - 0x01617E 05:816E: BB 88     .addr loc_sensor_frame_  ; CPU Address $88BB

- D 0 - I - 0x016180 05:8170: C0 88     .addr loc_bazookaman_right_frame_1  ; CPU Address $88C0
- D 0 - I - 0x016182 05:8172: D9 88     .addr loc_bazookaman_left_frame_1   ; CPU Address $88D9
- D 0 - I - 0x016184 05:8174: F2 88     .addr loc_bazookaman_right_frame_2  ; CPU Address $88F2
- D 0 - I - 0x016186 05:8176: 0B 89     .addr loc_bazookaman_left_frame_2   ; CPU Address $890B
- D 0 - I - 0x016188 05:8178: 24 89     .addr loc_bazookaman_right_frame_3  ; CPU Address $8924
- D 0 - I - 0x01618A 05:817A: 39 89     .addr loc_bazookaman_left_frame_3   ; CPU Address $8939

- - - - - - 0x01618C 05:817C: 4E        .byte $4E   ; <N>
- - - - - - 0x01618D 05:817D: 89        .byte $89   ; 
- - - - - - 0x01618E 05:817E: 53        .byte $53   ; <S>
- - - - - - 0x01618F 05:817F: 89        .byte $89   ; 
- D 0 - I - 0x016190 05:8180: 58        .byte $58   ; <X>
- D 0 - I - 0x016191 05:8181: 89        .byte $89   ; 
- D 0 - I - 0x016192 05:8182: 69        .byte $69   ; <i>
- D 0 - I - 0x016193 05:8183: 89        .byte $89   ; 

- D 0 - I - 0x016194 05:8184: 7A 89     .addr loc_fat_sailor_right_frame_1  ; CPU Address $897A
- D 0 - I - 0x016196 05:8186: AB 89     .addr loc_fat_sailor_left_frame_1   ; CPU Address $89AB
- D 0 - I - 0x016198 05:8188: DC 89     .addr loc_fat_sailor_right_frame_2  ; CPU Address $89DC
- D 0 - I - 0x01619A 05:818A: 05 8A     .addr loc_fat_sailor_left_frame_2   ; CPU Address $8A05
- D 0 - I - 0x01619C 05:818C: 2E 8A     .addr loc_fat_sailor_right_frame_3  ; CPU Address $8A2E
- D 0 - I - 0x01619E 05:818E: 5F 8A     .addr loc_fat_sailor_left_frame_3   ; CPU Address $8A5F
- D 0 - I - 0x0161A0 05:8190: 90 8A     .addr loc_fat_sailor_right_frame_4  ; CPU Address $8A90
- D 0 - I - 0x0161A2 05:8192: B5 8A     .addr loc_fat_sailor_left_frame_4   ; CPU Address $8AB5
- D 0 - I - 0x0161A4 05:8194: DA 8A     .addr loc_fat_sailor_right_frame_5  ; CPU Address $8ADA
- D 0 - I - 0x0161A6 05:8196: F7 8A     .addr loc_fat_sailor_left_frame_5   ; CPU Address $8AF7

- D 0 - I - 0x0161A8 05:8198: 14 8B     .addr loc_sensor_projectile_frame_1  ; CPU Address $8B14
- D 0 - I - 0x0161AA 05:819A: 1D 8B     .addr loc_sensor_projectile_frame_2  ; CPU Address $8B1D
- D 0 - I - 0x0161AC 05:819C: 26 8B     .addr loc_sensor_projectile_frame_3  ; CPU Address $8B26
- D 0 - I - 0x0161AE 05:819E: 2B 8B     .addr loc_sensor_projectile_frame_4  ; CPU Address $8B2B
- D 0 - I - 0x0161B0 05:81A0: 34 8B     .addr loc_sensor_projectile_frame_5  ; CPU Address $8B34
- D 0 - I - 0x0161B2 05:81A2: 3D 8B     .addr loc_sensor_projectile_frame_6  ; CPU Address $8B3D
- D 0 - I - 0x0161B4 05:81A4: 46 8B     .addr loc_sensor_projectile_frame_7  ; CPU Address $8B46
- D 0 - I - 0x0161B6 05:81A6: 4B 8B     .addr loc_sensor_projectile_frame_8  ; CPU Address $8B4B

- D 0 - I - 0x0161B8 05:81A8: 81 83     .addr loc_bullet_right_frame_           ; CPU Address $8381
- D 0 - I - 0x0161BA 05:81AA: 81 83     .addr loc_bullet_left_frame_            ; CPU Address $8381
- D 0 - I - 0x0161BC 05:81AC: 86 83     .addr loc_start_bullet_right_frame_     ; CPU Address $8386
- D 0 - I - 0x0161BE 05:81AE: 8B 83     .addr loc_start_bullet_left_frame_      ; CPU Address $838B
- D 0 - I - 0x0161C0 05:81B0: 90 83     .addr loc_bullet_collision_right_frame_ ; CPU Address $8390
- - - - - - 0x0161C2 05:81B2: 95 83     .addr loc_bullet_collision_left_frame_  ; CPU Address $8395

- D 0 - I - 0x0161C4 05:81B4: 9A 83     .word $839A
- D 0 - I - 0x0161C6 05:81B6: 9F 83     .word $839F
- D 0 - I - 0x0161C8 05:81B8: A4 83     .word $83A4
- D 0 - I - 0x0161CA 05:81BA: A9 83     .word $83A9
- D 0 - I - 0x0161CC 05:81BC: AE 83     .word $83AE
- D 0 - I - 0x0161CE 05:81BE: B3 83     .word $83B3
- D 0 - I - 0x0161D0 05:81C0: B8 83     .addr loc_rifle_flash_right_frame_ ; CPU Address $83B8
- D 0 - I - 0x0161D2 05:81C2: C1 83     .addr loc_rifle_flash_left_frame_  ; CPU Address $83C1

- D 0 - I - 0x0161D4 05:81C4: CA        .byte $CA   ; 
- D 0 - I - 0x0161D5 05:81C5: 83        .byte $83   ; 
- D 0 - I - 0x0161D6 05:81C6: CA        .byte $CA   ; 
- D 0 - I - 0x0161D7 05:81C7: 83        .byte $83   ; 
- D 0 - I - 0x0161D8 05:81C8: CF        .byte $CF   ; 
- D 0 - I - 0x0161D9 05:81C9: 83        .byte $83   ; 
- D 0 - I - 0x0161DA 05:81CA: D4        .byte $D4   ; 
- D 0 - I - 0x0161DB 05:81CB: 83        .byte $83   ; 
- D 0 - I - 0x0161DC 05:81CC: DC        .byte $DC   ; 
- D 0 - I - 0x0161DD 05:81CD: 9C        .byte $9C   ; 
- D 0 - I - 0x0161DE 05:81CE: E1        .byte $E1   ; 
- D 0 - I - 0x0161DF 05:81CF: 9C        .byte $9C   ; 
- D 0 - I - 0x0161E0 05:81D0: 2E        .byte $2E   ; 
- D 0 - I - 0x0161E1 05:81D1: 84        .byte $84   ; 
- D 0 - I - 0x0161E2 05:81D2: 3F        .byte $3F   ; 
- D 0 - I - 0x0161E3 05:81D3: 84        .byte $84   ; 
- D 0 - I - 0x0161E4 05:81D4: 2E        .byte $2E   ; 
- D 0 - I - 0x0161E5 05:81D5: 84        .byte $84   ; 
- D 0 - I - 0x0161E6 05:81D6: 1D        .byte $1D   ; 
- D 0 - I - 0x0161E7 05:81D7: 84        .byte $84   ; 

- D 0 - I - 0x0161E8 05:81D8: 44 84     .addr loc_diving_frame_1 ; CPU Address $8444
- D 0 - I - 0x0161EA 05:81DA: 4D 84     .addr loc_diving_frame_2 ; CPU Address $844D
- D 0 - I - 0x0161EC 05:81DC: 5A 84     .addr loc_diving_frame_3 ; CPU Address $845A
- D 0 - I - 0x0161EE 05:81DE: 67 84     .addr loc_diving_frame_4 ; CPU Address $8467

- D 0 - I - 0x0161F0 05:81E0: D9        .byte $D9   ; 
- D 0 - I - 0x0161F1 05:81E1: 83        .byte $83   ; 
- D 0 - I - 0x0161F2 05:81E2: EA        .byte $EA   ; 
- D 0 - I - 0x0161F3 05:81E3: 83        .byte $83   ; 
- D 0 - I - 0x0161F4 05:81E4: FB        .byte $FB   ; 
- D 0 - I - 0x0161F5 05:81E5: 83        .byte $83   ; 
- D 0 - I - 0x0161F6 05:81E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0161F7 05:81E7: 84        .byte $84   ; 
- - - - - - 0x0161F8 05:81E8: 1C        .byte $1C   ; 
- - - - - - 0x0161F9 05:81E9: 3E        .byte $3E   ; 
- - - - - - 0x0161FA 05:81EA: 07        .byte $07   ; 
- - - - - - 0x0161FB 05:81EB: 79        .byte $79   ; <y>
- - - - - - 0x0161FC 05:81EC: 7F        .byte $7F   ; 
- - - - - - 0x0161FD 05:81ED: 7F        .byte $7F   ; 
- - - - - - 0x0161FE 05:81EE: 7F        .byte $7F   ; 
- - - - - - 0x0161FF 05:81EF: 7F        .byte $7F   ; 
- - - - - - 0x016200 05:81F0: 9C        .byte $9C   ; 
- - - - - - 0x016201 05:81F1: 9E        .byte $9E   ; 
- - - - - - 0x016202 05:81F2: 98        .byte $98   ; 
- - - - - - 0x016203 05:81F3: 10        .byte $10   ; 
- - - - - - 0x016204 05:81F4: F0        .byte $F0   ; 
- - - - - - 0x016205 05:81F5: F8        .byte $F8   ; 
- - - - - - 0x016206 05:81F6: F0        .byte $F0   ; 
- - - - - - 0x016207 05:81F7: F0        .byte $F0   ; 
- - - - - - 0x016208 05:81F8: FC        .byte $FC   ; 
- - - - - - 0x016209 05:81F9: F6        .byte $F6   ; 
- - - - - - 0x01620A 05:81FA: F4        .byte $F4   ; 
- - - - - - 0x01620B 05:81FB: EE        .byte $EE   ; 
- - - - - - 0x01620C 05:81FC: 0E        .byte $0E   ; 
- - - - - - 0x01620D 05:81FD: 03        .byte $03   ; 
- - - - - - 0x01620E 05:81FE: 03        .byte $03   ; 
- - - - - - 0x01620F 05:81FF: 56        .byte $56   ; <V>

- D 0 - I - 0x016210 05:8200: 54 8B     .addr loc_nun_right_frame_1   ; CPU Address $8B54
- D 0 - I - 0x016212 05:8202: 6D 8B     .addr loc_nun_left_frame_1    ; CPU Address $8B6D
- D 0 - I - 0x016214 05:8204: C0 8B     .addr loc_nun_right_frame_2   ; CPU Address $8BC0
- D 0 - I - 0x016216 05:8206: D5 8B     .addr loc_nun_left_frame_2    ; CPU Address $8BD5
- D 0 - I - 0x016218 05:8208: 86 8B     .addr loc_nun_right_frame_3   ; CPU Address $8B86
- D 0 - I - 0x01621A 05:820A: A3 8B     .addr loc_nun_left_frame_3    ; CPU Address $8BA3
- D 0 - I - 0x01621C 05:820C: EA 8B     .addr loc_nun_right_frame_4   ; CPU Address $8BEA
- D 0 - I - 0x01621E 05:820E: FF 8B     .addr loc_nun_left_frame_4    ; CPU Address $8BFF
- D 0 - I - 0x016220 05:8210: 14 8C     .addr loc_nun_right_frame_5   ; CPU Address $8C14
- D 0 - I - 0x016222 05:8212: 25 8C     .addr loc_nun_left_frame_5    ; CPU Address $8C25

; Karate-man, green boy (bottom)
- D 0 - I - 0x016224 05:8214: 36 8C     .addr loc_karate_man_bottom_right_frame_1   ; CPU Address $8C36
- D 0 - I - 0x016226 05:8216: 43 8C     .addr loc_karate_man_bottom_left_frame_1    ; CPU Address $8C43
- D 0 - I - 0x016228 05:8218: 50 8C     .addr loc_karate_man_bottom_right_frame_2   ; CPU Address $8C50
- D 0 - I - 0x01622A 05:821A: 61 8C     .addr loc_karate_man_bottom_left_frame_2    ; CPU Address $8C61
- D 0 - I - 0x01622C 05:821C: 72 8C     .addr loc_karate_man_bottom_right_frame_3   ; CPU Address $8C72
- D 0 - I - 0x01622E 05:821E: 7F 8C     .addr loc_karate_man_bottom_left_frame_3    ; CPU Address $8C7F
- D 0 - I - 0x016230 05:8220: 8C 8C     .addr loc_karate_man_bottom_right_frame_4   ; CPU Address $8C8C
- D 0 - I - 0x016232 05:8222: 9D 8C     .addr loc_karate_man_bottom_left_frame_4    ; CPU Address $8C9D
- D 0 - I - 0x016234 05:8224: AE 8C     .addr loc_karate_man_bottom_right_frame_5   ; CPU Address $8CAE
- D 0 - I - 0x016236 05:8226: BB 8C     .addr loc_karate_man_bottom_left_frame_5    ; CPU Address $8CBB
- D 0 - I - 0x016238 05:8228: C8 8C     .addr loc_karate_man_bottom_right_frame_6   ; CPU Address $8CC8
- D 0 - I - 0x01623A 05:822A: D5 8C     .addr loc_karate_man_bottom_left_frame_6    ; CPU Address $8CD5

; Karate-man (top)
- D 0 - I - 0x01623C 05:822C: E2 8C     .addr loc_karate_man_top_right_frame_1   ; CPU Address $8CE2
- D 0 - I - 0x01623E 05:822E: EF 8C     .addr loc_karate_man_top_left_frame_1    ; CPU Address $8CEF
- D 0 - I - 0x016240 05:8230: FC 8C     .addr loc_karate_man_top_right_frame_2   ; CPU Address $8CFC
- D 0 - I - 0x016242 05:8232: 09 8D     .addr loc_karate_man_top_left_frame_2    ; CPU Address $8D09
- D 0 - I - 0x016244 05:8234: 16 8D     .addr loc_karate_man_top_right_frame_3   ; CPU Address $8D16
- D 0 - I - 0x016246 05:8236: 1F 8D     .addr loc_karate_man_top_left_frame_3    ; CPU Address $8D1F
- D 0 - I - 0x016248 05:8238: 28 8D     .addr loc_karate_man_top_right_frame_4   ; CPU Address $8D28
- D 0 - I - 0x01624A 05:823A: 2D 8D     .addr loc_karate_man_top_left_frame_4    ; CPU Address $8D2D
- D 0 - I - 0x01624C 05:823C: 32 8D     .addr loc_karate_man_top_right_frame_5   ; CPU Address $8D32
- D 0 - I - 0x01624E 05:823E: 37 8D     .addr loc_karate_man_top_left_frame_5    ; CPU Address $8D37
- D 0 - I - 0x016250 05:8240: 3C 8D     .addr loc_karate_man_top_right_frame_6   ; CPU Address $8D3C
- D 0 - I - 0x016252 05:8242: 45 8D     .addr loc_karate_man_top_left_frame_6    ; CPU Address $8D45
- D 0 - I - 0x016254 05:8244: 4E 8D     .addr loc_karate_man_top_right_frame_7   ; CPU Address $8D4E
- D 0 - I - 0x016256 05:8246: 5B 8D     .addr loc_karate_man_top_left_frame_7    ; CPU Address $8D5B
- D 0 - I - 0x016258 05:8248: 68 8D     .addr loc_karate_man_top_right_frame_8   ; CPU Address $8D68
- D 0 - I - 0x01625A 05:824A: 75 8D     .addr loc_karate_man_top_left_frame_8    ; CPU Address $8D75

; Street karate-man (extra)
- D 0 - I - 0x01625C 05:824C: 82 8D     .addr loc_karate_man_ex_right_frame_1   ; CPU Address $8D82
- D 0 - I - 0x01625E 05:824E: 93 8D     .addr loc_karate_man_ex_left_frame_1    ; CPU Address $8D93
- D 0 - I - 0x016260 05:8250: A4 8D     .addr loc_karate_man_ex_right_frame_2   ; CPU Address $8DA4
- D 0 - I - 0x016262 05:8252: B5 8D     .addr loc_karate_man_ex_left_frame_2    ; CPU Address $8DB5
- D 0 - I - 0x016264 05:8254: C6 8D     .addr loc_karate_man_ex_right_frame_3   ; CPU Address $8DC6
- D 0 - I - 0x016266 05:8256: D7 8D     .addr loc_karate_man_ex_left_frame_3    ; CPU Address $8DD7
- D 0 - I - 0x016268 05:8258: E8 8D     .addr loc_karate_man_ex_right_frame_4   ; CPU Address $8DE8
- D 0 - I - 0x01626A 05:825A: F9 8D     .addr loc_karate_man_ex_left_frame_4    ; CPU Address $8DF9
- D 0 - I - 0x01626C 05:825C: 0A 8E     .addr loc_karate_man_ex_right_frame_5   ; CPU Address $8E0A
- D 0 - I - 0x01626E 05:825E: 27 8E     .addr loc_karate_man_ex_left_frame_5    ; CPU Address $8E27

; Karate-girl (top)
- D 0 - I - 0x016270 05:8260: 44 8E     .addr loc_karate_girl_top_right_frame_1   ; CPU Address $8E44
- D 0 - I - 0x016272 05:8262: 51 8E     .addr loc_karate_girl_top_left_frame_1    ; CPU Address $8E51
- D 0 - I - 0x016274 05:8264: 5E 8E     .addr loc_karate_girl_top_right_frame_2   ; CPU Address $8E5E
- D 0 - I - 0x016276 05:8266: 6B 8E     .addr loc_karate_girl_top_left_frame_2    ; CPU Address $8E6B
- D 0 - I - 0x016278 05:8268: 78 8E     .addr loc_karate_girl_top_right_frame_3   ; CPU Address $8E78
- D 0 - I - 0x01627A 05:826A: 81 8E     .addr loc_karate_girl_top_left_frame_3    ; CPU Address $8E81
- D 0 - I - 0x01627C 05:826C: 8A 8E     .addr loc_karate_girl_top_right_frame_4   ; CPU Address $8E8A
- D 0 - I - 0x01627E 05:826E: 8F 8E     .addr loc_karate_girl_top_left_frame_4    ; CPU Address $8E8F
- D 0 - I - 0x016280 05:8270: 94 8E     .addr loc_karate_girl_top_right_frame_5   ; CPU Address $8E94
- D 0 - I - 0x016282 05:8272: 99 8E     .addr loc_karate_girl_top_left_frame_5    ; CPU Address $8E99
- D 0 - I - 0x016284 05:8274: 9E 8E     .addr loc_karate_girl_top_right_frame_6   ; CPU Address $8E9E
- D 0 - I - 0x016286 05:8276: A7 8E     .addr loc_karate_girl_top_left_frame_6    ; CPU Address $8EA7
- D 0 - I - 0x016288 05:8278: B0 8E     .addr loc_karate_girl_top_right_frame_7   ; CPU Address $8EB0
- D 0 - I - 0x01628A 05:827A: C5 8E     .addr loc_karate_girl_top_left_frame_7    ; CPU Address $8EC5
- D 0 - I - 0x01628C 05:827C: DA 8E     .addr loc_karate_girl_top_right_frame_8   ; CPU Address $8EDA
- D 0 - I - 0x01628E 05:827E: EF 8E     .addr loc_karate_girl_top_left_frame_8    ; CPU Address $8EEF
- D 0 - I - 0x016290 05:8280: 04 8F     .addr loc_karate_girl_top_right_frame_9   ; CPU Address $8F04
- D 0 - I - 0x016292 05:8282: 1D 8F     .addr loc_karate_girl_top_left_frame_9    ; CPU Address $8F1D

; Green boy (top)
- D 0 - I - 0x016294 05:8284: 36 8F     .addr loc_green_boy_right_frame_1   ; CPU Address $8F36
- D 0 - I - 0x016296 05:8286: 43 8F     .addr loc_green_boy_left_frame_1    ; CPU Address $8F43
- D 0 - I - 0x016298 05:8288: 50 8F     .addr loc_green_boy_right_frame_2   ; CPU Address $8F50
- D 0 - I - 0x01629A 05:828A: 5D 8F     .addr loc_green_boy_left_frame_2    ; CPU Address $8F5D
- D 0 - I - 0x01629C 05:828C: 6A 8F     .addr loc_green_boy_right_frame_3   ; CPU Address $8F6A
- D 0 - I - 0x01629E 05:828E: 73 8F     .addr loc_green_boy_left_frame_3    ; CPU Address $8F73
- D 0 - I - 0x0162A0 05:8290: 7C 8F     .addr loc_green_boy_right_frame_4   ; CPU Address $8F7C
- D 0 - I - 0x0162A2 05:8292: 81 8F     .addr loc_green_boy_left_frame_4    ; CPU Address $8F81
- D 0 - I - 0x0162A4 05:8294: 86 8F     .addr loc_green_boy_right_frame_5   ; CPU Address $8F86
- D 0 - I - 0x0162A6 05:8296: 8B 8F     .addr loc_green_boy_left_frame_5    ; CPU Address $8F8B
- D 0 - I - 0x0162A8 05:8298: 90 8F     .addr loc_green_boy_right_frame_6   ; CPU Address $8F90
- D 0 - I - 0x0162AA 05:829A: 99 8F     .addr loc_green_boy_left_frame_6    ; CPU Address $8F99
- D 0 - I - 0x0162AC 05:829C: A2 8F     .addr loc_green_boy_right_frame_7   ; CPU Address $8FA2
- D 0 - I - 0x0162AE 05:829E: AF 8F     .addr loc_green_boy_left_frame_7    ; CPU Address $8FAF
- D 0 - I - 0x0162B0 05:82A0: BC 8F     .addr loc_green_boy_right_frame_8   ; CPU Address $8FBC
- D 0 - I - 0x0162B2 05:82A2: CD 8F     .addr loc_green_boy_left_frame_8    ; CPU Address $8FCD
- D 0 - I - 0x0162B4 05:82A4: DE 8F     .addr loc_green_boy_right_frame_9   ; CPU Address $8FDE
- D 0 - I - 0x0162B6 05:82A6: F3 8F     .addr loc_green_boy_left_frame_9    ; CPU Address $8FF3
- D 0 - I - 0x0162B8 05:82A8: 08 90     .addr loc_green_boy_right_frame_10  ; CPU Address $9008
- D 0 - I - 0x0162BA 05:82AA: 19 90     .addr loc_green_boy_left_frame_10   ; CPU Address $9019

; Egyptian with a boomerung
- D 0 - I - 0x0162BC 05:82AC: 18 9D     .addr loc_egyptian_boomerung_right_frame_1    ; CPU Address $9D18
- D 0 - I - 0x0162BE 05:82AE: 31 9D     .addr loc_egyptian_boomerung_left_frame_1     ; CPU Address $9D31
- D 0 - I - 0x0162C0 05:82B0: 4A 9D     .addr loc_egyptian_boomerung_right_frame_2    ; CPU Address $9D4A
- D 0 - I - 0x0162C2 05:82B2: 5F 9D     .addr loc_egyptian_boomerung_left_frame_2     ; CPU Address $9D5F
- D 0 - I - 0x0162C4 05:82B4: 74 9D     .addr loc_egyptian_boomerung_right_frame_3    ; CPU Address $9D74
- D 0 - I - 0x0162C6 05:82B6: 8D 9D     .addr loc_egyptian_boomerung_left_frame_3     ; CPU Address $9D8D
- D 0 - I - 0x0162C8 05:82B8: A6 9D     .addr loc_egyptian_boomerung_right_frame_4    ; CPU Address $9DA6
- D 0 - I - 0x0162CA 05:82BA: B7 9D     .addr loc_egyptian_boomerung_left_frame_4     ; CPU Address $9DB7
- D - - - - 0x0162CC 05:82BC: C8 9D     .addr loc_egyptian_boomerung_right_frame_5    ; CPU Address $9DC8
- D 0 - I - 0x0162CE 05:82BE: D9 9D     .addr loc_egyptian_boomerung_left_frame_5     ; CPU Address $9DD9
- D 0 - I - 0x0162D0 05:82C0: EA 9D     .addr loc_egyptian_boomerung_right_frame_6    ; CPU Address $9DEA
- D 0 - I - 0x0162D2 05:82C2: 07 9E     .addr loc_egyptian_boomerung_left_frame_6     ; CPU Address $9E07

- D 0 - I - 0x0162D4 05:82C4: 48 9E     .addr loc_boomerung_frame_1    ; CPU Address $9E48
- D 0 - I - 0x0162D6 05:82C6: 24 9E     .addr loc_boomerung_frame_2    ; CPU Address $9E24
- D 0 - I - 0x0162D8 05:82C8: 51 9E     .addr loc_boomerung_frame_3    ; CPU Address $9E51
- D 0 - I - 0x0162DA 05:82CA: 2D 9E     .addr loc_boomerung_frame_4    ; CPU Address $9E2D
- D 0 - I - 0x0162DC 05:82CC: 5A 9E     .addr loc_boomerung_frame_5    ; CPU Address $9E5A
- D 0 - I - 0x0162DE 05:82CE: 36 9E     .addr loc_boomerung_frame_6    ; CPU Address $9E36
- D 0 - I - 0x0162E0 05:82D0: 63 9E     .addr loc_boomerung_frame_7    ; CPU Address $9E63
- D 0 - I - 0x0162E2 05:82D2: 3F 9E     .addr loc_boomerung_frame_8    ; CPU Address $9E3F

- D 0 - I - 0x0162E4 05:82D4: 6C 9E     .addr loc_egyptian_boomerung_hand_right_frame_1    ; CPU Address $9E6C
- D 0 - I - 0x0162E6 05:82D6: 79 9E     .addr loc_egyptian_boomerung_hand_left_frame_1     ; CPU Address $9E79
- D 0 - I - 0x0162E8 05:82D8: 86 9E     .addr loc_egyptian_boomerung_hand_right_frame_2    ; CPU Address $9E86
- D 0 - I - 0x0162EA 05:82DA: 97 9E     .addr loc_egyptian_boomerung_hand_left_frame_2     ; CPU Address $9E97
- D 0 - I - 0x0162EC 05:82DC: A8 9E     .addr loc_egyptian_boomerung_hand_right_frame_3    ; CPU Address $9EA8
- D 0 - I - 0x0162EE 05:82DE: AD 9E     .addr loc_egyptian_boomerung_hand_left_frame_3     ; CPU Address $9EAD

- - - - - - 0x0162F0 05:82E0: 00        .byte $00   ; 
- - - - - - 0x0162F1 05:82E1: 00        .byte $00   ; 
- - - - - - 0x0162F2 05:82E2: 00        .byte $00   ; 
- - - - - - 0x0162F3 05:82E3: 60        .byte $60   ; 
- - - - - - 0x0162F4 05:82E4: 97        .byte $97   ; 
- - - - - - 0x0162F5 05:82E5: 0F        .byte $0F   ; 
- - - - - - 0x0162F6 05:82E6: 1F        .byte $1F   ; 
- - - - - - 0x0162F7 05:82E7: 1C        .byte $1C   ; 
- - - - - - 0x0162F8 05:82E8: C0        .byte $C0   ; 
- - - - - - 0x0162F9 05:82E9: EF        .byte $EF   ; 
- - - - - - 0x0162FA 05:82EA: FF        .byte $FF   ; 
- - - - - - 0x0162FB 05:82EB: FF        .byte $FF   ; 
- - - - - - 0x0162FC 05:82EC: FF        .byte $FF   ; 
- - - - - - 0x0162FD 05:82ED: FF        .byte $FF   ; 
- - - - - - 0x0162FE 05:82EE: FF        .byte $FF   ; 
- - - - - - 0x0162FF 05:82EF: 1C        .byte $1C   ; 
- - - - - - 0x016300 05:82F0: 00        .byte $00   ; 
- - - - - - 0x016301 05:82F1: E0        .byte $E0   ; 
- - - - - - 0x016302 05:82F2: FC        .byte $FC   ; 
- - - - - - 0x016303 05:82F3: FF        .byte $FF   ; 
- - - - - - 0x016304 05:82F4: FF        .byte $FF   ; 
- - - - - - 0x016305 05:82F5: FF        .byte $FF   ; 
- - - - - - 0x016306 05:82F6: FE        .byte $FE   ; 
- - - - - - 0x016307 05:82F7: 06        .byte $06   ; 
- - - - - - 0x016308 05:82F8: 00        .byte $00   ; 
- - - - - - 0x016309 05:82F9: E0        .byte $E0   ; 
- - - - - - 0x01630A 05:82FA: E8        .byte $E8   ; 
- - - - - - 0x01630B 05:82FB: EA        .byte $EA   ; 
- - - - - - 0x01630C 05:82FC: F2        .byte $F2   ; 
- - - - - - 0x01630D 05:82FD: D4        .byte $D4   ; 
- - - - - - 0x01630E 05:82FE: D4        .byte $D4   ; 
- - - - - - 0x01630F 05:82FF: 04        .byte $04   ; 

- D 0 - I - 0x016310 05:8300: 2A 90     .addr loc_knight_right_frame_1   ; CPU Address $902A
- D 0 - I - 0x016312 05:8302: 4B 90     .addr loc_knight_left_frame_1    ; CPU Address $904B
- D 0 - I - 0x016314 05:8304: 9E 90     .addr loc_knight_right_frame_2   ; CPU Address $909E
- D 0 - I - 0x016316 05:8306: BB 90     .addr loc_knight_left_frame_2    ; CPU Address $90BB
- D 0 - I - 0x016318 05:8308: 6C 90     .addr loc_knight_right_frame_3   ; CPU Address $906C
- D 0 - I - 0x01631A 05:830A: 85 90     .addr loc_knight_left_frame_3    ; CPU Address $9085
- D 0 - I - 0x01631C 05:830C: D8 90     .addr loc_knight_right_frame_4   ; CPU Address $90D8
- D 0 - I - 0x01631E 05:830E: F1 90     .addr loc_knight_left_frame_4    ; CPU Address $90F1
- D 0 - I - 0x016320 05:8310: 0A 91     .addr loc_knight_right_frame_5   ; CPU Address $910A
- D 0 - I - 0x016322 05:8312: 1B 91     .addr loc_knight_left_frame_5    ; CPU Address $911B
- D 0 - I - 0x016324 05:8314: 2C 91     .addr loc_knight_right_frame_6   ; CPU Address $912C
- D 0 - I - 0x016326 05:8316: 45 91     .addr loc_knight_left_frame_6    ; CPU Address $9145
- D - - - - 0x016328 05:8318: 5E 91     .addr loc_knight_right_frame_7   ; CPU Address $915E
- D 0 - I - 0x01632A 05:831A: 7B 91     .addr loc_knight_left_frame_7    ; CPU Address $917B
- D - - - - 0x01632C 05:831C: 98 91     .addr loc_knight_right_frame_8   ; CPU Address $9198
- D 0 - I - 0x01632E 05:831E: B5 91     .addr loc_knight_left_frame_8    ; CPU Address $91B5
- D 0 - I - 0x016330 05:8320: D2 91     .addr loc_knight_hiding_frame_   ; CPU Address $91D2

- D 0 - I - 0x016332 05:8322: EF 91     .addr loc_girl_in_red_right_frame_1   ; CPU Address $91EF
- D 0 - I - 0x016334 05:8324: 04 92     .addr loc_girl_in_red_left_frame_1    ; CPU Address $9204
- D 0 - I - 0x016336 05:8326: 19 92     .addr loc_girl_in_red_right_frame_2   ; CPU Address $9219
- D 0 - I - 0x016338 05:8328: 2A 92     .addr loc_girl_in_red_left_frame_2    ; CPU Address $922A
- D 0 - I - 0x01633A 05:832A: 3B 92     .addr loc_girl_in_red_right_frame_3   ; CPU Address $923B
- D 0 - I - 0x01633C 05:832C: 54 92     .addr loc_girl_in_red_left_frame_3    ; CPU Address $9254
- D 0 - I - 0x01633E 05:832E: 6D 92     .addr loc_girl_in_red_right_frame_4   ; CPU Address $926D
- D 0 - I - 0x016340 05:8330: 7E 92     .addr loc_girl_in_red_left_frame_4    ; CPU Address $927E
- D 0 - I - 0x016342 05:8332: 8F 92     .addr loc_girl_in_red_right_frame_5   ; CPU Address $928F
- D 0 - I - 0x016344 05:8334: A0 92     .addr loc_girl_in_red_left_frame_5    ; CPU Address $92A0
- D 0 - I - 0x016346 05:8336: B1 92     .addr loc_girl_in_red_right_frame_6   ; CPU Address $92B1
- D 0 - I - 0x016348 05:8338: C2 92     .addr loc_girl_in_red_left_frame_6    ; CPU Address $92C2
- D 0 - I - 0x01634A 05:833A: D3 92     .addr loc_girl_in_red_right_frame_7   ; CPU Address $92D3
- D 0 - I - 0x01634C 05:833C: EC 92     .addr loc_girl_in_red_left_frame_7    ; CPU Address $92EC
- D 0 - I - 0x01634E 05:833E: 05 93     .addr loc_girl_in_red_right_frame_8   ; CPU Address $9305
- D 0 - I - 0x016350 05:8340: 26 93     .addr loc_girl_in_red_left_frame_8    ; CPU Address $9326

- D 0 - I - 0x016352 05:8342: 47 93     .addr loc_girl_in_red_sword_right_frame_1   ; CPU Address $9347
- D 0 - I - 0x016354 05:8344: 50 93     .addr loc_girl_in_red_sword_left_frame_1    ; CPU Address $9350
- D 0 - I - 0x016356 05:8346: 59 93     .addr loc_girl_in_red_sword_right_frame_2   ; CPU Address $9359
- D 0 - I - 0x016358 05:8348: 62 93     .addr loc_girl_in_red_sword_left_frame_2    ; CPU Address $9362

- D 0 - I - 0x01635A 05:834A: 6B 93     .addr loc_cat_right_frame_1   ; CPU Address $936B
- D 0 - I - 0x01635C 05:834C: 7C 93     .addr loc_cat_left_frame_1    ; CPU Address $937C
- D 0 - I - 0x01635E 05:834E: 8D 93     .addr loc_cat_right_frame_2   ; CPU Address $938D
- D 0 - I - 0x016360 05:8350: 9A 93     .addr loc_cat_left_frame_2    ; CPU Address $939A
- D 0 - I - 0x016362 05:8352: A7 93     .addr loc_cat_right_frame_3   ; CPU Address $93A7
- D 0 - I - 0x016364 05:8354: B8 93     .addr loc_cat_left_frame_3    ; CPU Address $93B8
- D 0 - I - 0x016366 05:8356: C9 93     .addr loc_cat_right_frame_4   ; CPU Address $93C9
- D 0 - I - 0x016368 05:8358: D6 93     .addr loc_cat_left_frame_4    ; CPU Address $93D6
- D 0 - I - 0x01636A 05:835A: E3 93     .addr loc_cat_right_frame_5   ; CPU Address $93E3
- D 0 - I - 0x01636C 05:835C: F0 93     .addr loc_cat_left_frame_5    ; CPU Address $93F0

- D 0 - I - 0x01636E 05:835E: FD 93     .addr loc_fly_man_right_frame_1   ; CPU Address $93FD
- D 0 - I - 0x016370 05:8360: 1E 94     .addr loc_fly_man_left_frame_1    ; CPU Address $941E
- D 0 - I - 0x016372 05:8362: 3F 94     .addr loc_fly_man_right_frame_2   ; CPU Address $943F
- D 0 - I - 0x016374 05:8364: 5C 94     .addr loc_fly_man_left_frame_2    ; CPU Address $945C
- D 0 - I - 0x016376 05:8366: 79 94     .addr loc_fly_man_right_frame_3   ; CPU Address $9479
- D 0 - I - 0x016378 05:8368: 96 94     .addr loc_fly_man_left_frame_3    ; CPU Address $9496

- - - - - - 0x01637A 05:836A: F7        .byte $F7   ; 
- - - - - - 0x01637B 05:836B: 94        .byte $94   ; 
- D 0 - I - 0x01637C 05:836C: B3        .byte $B3   ; 
- D 0 - I - 0x01637D 05:836D: 94        .byte $94   ; 
- - - - - - 0x01637E 05:836E: 10        .byte $10   ; 
- - - - - - 0x01637F 05:836F: 95        .byte $95   ; 
- D 0 - I - 0x016380 05:8370: CC        .byte $CC   ; 
- D 0 - I - 0x016381 05:8371: 94        .byte $94   ; 
- - - - - - 0x016382 05:8372: 21        .byte $21   ; 
- - - - - - 0x016383 05:8373: 95        .byte $95   ; 
- D 0 - I - 0x016384 05:8374: DD        .byte $DD   ; 
- D 0 - I - 0x016385 05:8375: 94        .byte $94   ; 
- - - - - - 0x016386 05:8376: 32        .byte $32   ; <2>
- - - - - - 0x016387 05:8377: 95        .byte $95   ; 
- D 0 - I - 0x016388 05:8378: EE        .byte $EE   ; 
- D 0 - I - 0x016389 05:8379: 94        .byte $94   ; 
- D 0 - I - 0x01638A 05:837A: 3B        .byte $3B   ; 
- D 0 - I - 0x01638B 05:837B: 95        .byte $95   ; 
- D 0 - I - 0x01638C 05:837C: 50        .byte $50   ; <P>
- D 0 - I - 0x01638D 05:837D: 95        .byte $95   ; 
- D 0 - I - 0x01638E 05:837E: 61        .byte $61   ; <a>
- D 0 - I - 0x01638F 05:837F: 95        .byte $95   ; 
- - - - - - 0x016390 05:8380: 00        .byte $00   ; 

loc_bullet_right_frame_:
loc_bullet_left_frame_:
- D 0 - I - 0x016391 05:8381: 01        .byte $01
- D 0 - I - 0x016392 05:8382: FC        .byte $FC, $00, $00, $FC

loc_start_bullet_right_frame_:
- D 0 - I - 0x016396 05:8386: 01        .byte $01
- D 0 - I - 0x016397 05:8387: FC        .byte $FC, $01, $00, $FC

loc_start_bullet_left_frame_:
- D 0 - I - 0x01639B 05:838B: 01        .byte $01
- D 0 - I - 0x01639C 05:838C: FC        .byte $FC, $01, $40, $FC

loc_bullet_collision_right_frame_:
- D 0 - I - 0x0163A0 05:8390: 01        .byte $01
- D 0 - I - 0x0163A1 05:8391: FD        .byte $FD, $02, $00, $FA

loc_bullet_collision_left_frame_:
- D - - - - 0x0163A5 05:8395: 01        .byte $01
- D - - - - 0x0163A6 05:8396: FD        .byte $FD, $02, $40, $FE

- D 0 - I - 0x0163AA 05:839A: 01        .byte $01   ; 
- D 0 - I - 0x0163AB 05:839B: FC        .byte $FC   ; 
- D 0 - I - 0x0163AC 05:839C: 22        .byte $22   ; 
- D 0 - I - 0x0163AD 05:839D: 00        .byte $00   ; 
- D 0 - I - 0x0163AE 05:839E: FC        .byte $FC   ; 
- D 0 - I - 0x0163AF 05:839F: 01        .byte $01   ; 
- D 0 - I - 0x0163B0 05:83A0: FC        .byte $FC   ; 
- D 0 - I - 0x0163B1 05:83A1: 22        .byte $22   ; 
- D 0 - I - 0x0163B2 05:83A2: 40        .byte $40   ; 
- D 0 - I - 0x0163B3 05:83A3: FC        .byte $FC   ; 
- D 0 - I - 0x0163B4 05:83A4: 01        .byte $01   ; 
- D 0 - I - 0x0163B5 05:83A5: FD        .byte $FD   ; 
- D 0 - I - 0x0163B6 05:83A6: CA        .byte $CA   ; 
- D 0 - I - 0x0163B7 05:83A7: 00        .byte $00   ; 
- D 0 - I - 0x0163B8 05:83A8: FC        .byte $FC   ; 
- D 0 - I - 0x0163B9 05:83A9: 01        .byte $01   ; 
- D 0 - I - 0x0163BA 05:83AA: FD        .byte $FD   ; 
- D 0 - I - 0x0163BB 05:83AB: CA        .byte $CA   ; 
- D 0 - I - 0x0163BC 05:83AC: 40        .byte $40   ; 
- D 0 - I - 0x0163BD 05:83AD: FC        .byte $FC   ; 
- D 0 - I - 0x0163BE 05:83AE: 01        .byte $01   ; 
- D 0 - I - 0x0163BF 05:83AF: FC        .byte $FC   ; 
- D 0 - I - 0x0163C0 05:83B0: A8        .byte $A8   ; 
- D 0 - I - 0x0163C1 05:83B1: 00        .byte $00   ; 
- D 0 - I - 0x0163C2 05:83B2: FC        .byte $FC   ; 
- D 0 - I - 0x0163C3 05:83B3: 01        .byte $01   ; 
- D 0 - I - 0x0163C4 05:83B4: FC        .byte $FC   ; 
- D 0 - I - 0x0163C5 05:83B5: A8        .byte $A8   ; 
- D 0 - I - 0x0163C6 05:83B6: 40        .byte $40   ; 
- D 0 - I - 0x0163C7 05:83B7: FC        .byte $FC   ; 

loc_rifle_flash_right_frame_:
- D 0 - I - 0x0163C8 05:83B8: 02        .byte $02
- D 0 - I - 0x0163C9 05:83B9: FC        .byte $FC, $58, $00, $F8
- D 0 - I - 0x0163CD 05:83BD: FC        .byte $FC, $59, $00, $00

loc_rifle_flash_left_frame_:
- D 0 - I - 0x0163D1 05:83C1: 02        .byte $02
- D 0 - I - 0x0163D2 05:83C2: FC        .byte $FC, $58, $40, $00
- D 0 - I - 0x0163D6 05:83C6: FC        .byte $FC, $59, $40, $F8

- D 0 - I - 0x0163DA 05:83CA: 01        .byte $01   ; 
- D 0 - I - 0x0163DB 05:83CB: F8        .byte $F8   ; 
- D 0 - I - 0x0163DC 05:83CC: B9        .byte $B9   ; 
- D 0 - I - 0x0163DD 05:83CD: 00        .byte $00   ; 
- D 0 - I - 0x0163DE 05:83CE: FC        .byte $FC   ; 
- D 0 - I - 0x0163DF 05:83CF: 01        .byte $01   ; 
- D 0 - I - 0x0163E0 05:83D0: F8        .byte $F8   ; 
- D 0 - I - 0x0163E1 05:83D1: 99        .byte $99   ; 
- D 0 - I - 0x0163E2 05:83D2: 02        .byte $02   ; 
- D 0 - I - 0x0163E3 05:83D3: FC        .byte $FC   ; 
- D 0 - I - 0x0163E4 05:83D4: 01        .byte $01   ; 
- D 0 - I - 0x0163E5 05:83D5: F8        .byte $F8   ; 
- D 0 - I - 0x0163E6 05:83D6: 99        .byte $99   ; 
- D 0 - I - 0x0163E7 05:83D7: 42        .byte $42   ; <B>
- D 0 - I - 0x0163E8 05:83D8: FC        .byte $FC   ; 
- D 0 - I - 0x0163E9 05:83D9: 04        .byte $04   ; 
- D 0 - I - 0x0163EA 05:83DA: F2        .byte $F2   ; 
- D 0 - I - 0x0163EB 05:83DB: 07        .byte $07   ; 
- D 0 - I - 0x0163EC 05:83DC: 00        .byte $00   ; 
- D 0 - I - 0x0163ED 05:83DD: 00        .byte $00   ; 
- D 0 - I - 0x0163EE 05:83DE: FA        .byte $FA   ; 
- D 0 - I - 0x0163EF 05:83DF: 05        .byte $05   ; 
- D 0 - I - 0x0163F0 05:83E0: 00        .byte $00   ; 
- D 0 - I - 0x0163F1 05:83E1: F0        .byte $F0   ; 
- D 0 - I - 0x0163F2 05:83E2: FA        .byte $FA   ; 
- D 0 - I - 0x0163F3 05:83E3: 06        .byte $06   ; 
- D 0 - I - 0x0163F4 05:83E4: 00        .byte $00   ; 
- D 0 - I - 0x0163F5 05:83E5: F8        .byte $F8   ; 
- D 0 - I - 0x0163F6 05:83E6: FA        .byte $FA   ; 
- D 0 - I - 0x0163F7 05:83E7: 08        .byte $08   ; 
- D 0 - I - 0x0163F8 05:83E8: 00        .byte $00   ; 
- D 0 - I - 0x0163F9 05:83E9: 00        .byte $00   ; 
- D 0 - I - 0x0163FA 05:83EA: 04        .byte $04   ; 
- D 0 - I - 0x0163FB 05:83EB: F2        .byte $F2   ; 
- D 0 - I - 0x0163FC 05:83EC: 07        .byte $07   ; 
- D 0 - I - 0x0163FD 05:83ED: 40        .byte $40   ; 
- D 0 - I - 0x0163FE 05:83EE: F8        .byte $F8   ; 
- D 0 - I - 0x0163FF 05:83EF: FA        .byte $FA   ; 
- D 0 - I - 0x016400 05:83F0: 05        .byte $05   ; 
- D 0 - I - 0x016401 05:83F1: 40        .byte $40   ; 
- D 0 - I - 0x016402 05:83F2: 08        .byte $08   ; 
- D 0 - I - 0x016403 05:83F3: FA        .byte $FA   ; 
- D 0 - I - 0x016404 05:83F4: 06        .byte $06   ; 
- D 0 - I - 0x016405 05:83F5: 40        .byte $40   ; 
- D 0 - I - 0x016406 05:83F6: 00        .byte $00   ; 
- D 0 - I - 0x016407 05:83F7: FA        .byte $FA   ; 
- D 0 - I - 0x016408 05:83F8: 08        .byte $08   ; 
- D 0 - I - 0x016409 05:83F9: 40        .byte $40   ; 
- D 0 - I - 0x01640A 05:83FA: F8        .byte $F8   ; 
- D 0 - I - 0x01640B 05:83FB: 04        .byte $04   ; 
- D 0 - I - 0x01640C 05:83FC: F2        .byte $F2   ; 
- D 0 - I - 0x01640D 05:83FD: 0B        .byte $0B   ; 
- D 0 - I - 0x01640E 05:83FE: 00        .byte $00   ; 
- D 0 - I - 0x01640F 05:83FF: 00        .byte $00   ; 
- D 0 - I - 0x016410 05:8400: FA        .byte $FA   ; 
- D 0 - I - 0x016411 05:8401: 09        .byte $09   ; 
- D 0 - I - 0x016412 05:8402: 00        .byte $00   ; 
- D 0 - I - 0x016413 05:8403: F0        .byte $F0   ; 
- D 0 - I - 0x016414 05:8404: FA        .byte $FA   ; 
- D 0 - I - 0x016415 05:8405: 0A        .byte $0A   ; 
- D 0 - I - 0x016416 05:8406: 00        .byte $00   ; 
- D 0 - I - 0x016417 05:8407: F8        .byte $F8   ; 
- D 0 - I - 0x016418 05:8408: FA        .byte $FA   ; 
- D 0 - I - 0x016419 05:8409: 0C        .byte $0C   ; 
- D 0 - I - 0x01641A 05:840A: 00        .byte $00   ; 
- D 0 - I - 0x01641B 05:840B: 00        .byte $00   ; 
- D 0 - I - 0x01641C 05:840C: 04        .byte $04   ; 
- D 0 - I - 0x01641D 05:840D: F2        .byte $F2   ; 
- D 0 - I - 0x01641E 05:840E: 0B        .byte $0B   ; 
- D 0 - I - 0x01641F 05:840F: 40        .byte $40   ; 
- D 0 - I - 0x016420 05:8410: F8        .byte $F8   ; 
- D 0 - I - 0x016421 05:8411: FA        .byte $FA   ; 
- D 0 - I - 0x016422 05:8412: 09        .byte $09   ; 
- D 0 - I - 0x016423 05:8413: 40        .byte $40   ; 
- D 0 - I - 0x016424 05:8414: 08        .byte $08   ; 
- D 0 - I - 0x016425 05:8415: FA        .byte $FA   ; 
- D 0 - I - 0x016426 05:8416: 0A        .byte $0A   ; 
- D 0 - I - 0x016427 05:8417: 40        .byte $40   ; 
- D 0 - I - 0x016428 05:8418: 00        .byte $00   ; 
- D 0 - I - 0x016429 05:8419: FA        .byte $FA   ; 
- D 0 - I - 0x01642A 05:841A: 0C        .byte $0C   ; 
- D 0 - I - 0x01642B 05:841B: 40        .byte $40   ; 
- D 0 - I - 0x01642C 05:841C: F8        .byte $F8   ; 
- D 0 - I - 0x01642D 05:841D: 04        .byte $04   ; 
- D 0 - I - 0x01642E 05:841E: F8        .byte $F8   ; 
- D 0 - I - 0x01642F 05:841F: 0D        .byte $0D   ; 
- D 0 - I - 0x016430 05:8420: 00        .byte $00   ; 
- D 0 - I - 0x016431 05:8421: F8        .byte $F8   ; 
- D 0 - I - 0x016432 05:8422: F8        .byte $F8   ; 
- D 0 - I - 0x016433 05:8423: 0D        .byte $0D   ; 
- D 0 - I - 0x016434 05:8424: 40        .byte $40   ; 
- D 0 - I - 0x016435 05:8425: 00        .byte $00   ; 
- D 0 - I - 0x016436 05:8426: 00        .byte $00   ; 
- D 0 - I - 0x016437 05:8427: 0D        .byte $0D   ; 
- D 0 - I - 0x016438 05:8428: 80        .byte $80   ; 
- D 0 - I - 0x016439 05:8429: F8        .byte $F8   ; 
- D 0 - I - 0x01643A 05:842A: 00        .byte $00   ; 
- D 0 - I - 0x01643B 05:842B: 0D        .byte $0D   ; 
- D 0 - I - 0x01643C 05:842C: C0        .byte $C0   ; 
- D 0 - I - 0x01643D 05:842D: 00        .byte $00   ; 
- D 0 - I - 0x01643E 05:842E: 04        .byte $04   ; 
- D 0 - I - 0x01643F 05:842F: F8        .byte $F8   ; 
- D 0 - I - 0x016440 05:8430: 0E        .byte $0E   ; 
- D 0 - I - 0x016441 05:8431: 00        .byte $00   ; 
- D 0 - I - 0x016442 05:8432: F8        .byte $F8   ; 
- D 0 - I - 0x016443 05:8433: F8        .byte $F8   ; 
- D 0 - I - 0x016444 05:8434: 0E        .byte $0E   ; 
- D 0 - I - 0x016445 05:8435: 40        .byte $40   ; 
- D 0 - I - 0x016446 05:8436: 00        .byte $00   ; 
- D 0 - I - 0x016447 05:8437: 00        .byte $00   ; 
- D 0 - I - 0x016448 05:8438: 0E        .byte $0E   ; 
- D 0 - I - 0x016449 05:8439: 80        .byte $80   ; 
- D 0 - I - 0x01644A 05:843A: F8        .byte $F8   ; 
- D 0 - I - 0x01644B 05:843B: 00        .byte $00   ; 
- D 0 - I - 0x01644C 05:843C: 0E        .byte $0E   ; 
- D 0 - I - 0x01644D 05:843D: C0        .byte $C0   ; 
- D 0 - I - 0x01644E 05:843E: 00        .byte $00   ; 
- D 0 - I - 0x01644F 05:843F: 01        .byte $01   ; 
- D 0 - I - 0x016450 05:8440: FC        .byte $FC   ; 
- D 0 - I - 0x016451 05:8441: 0F        .byte $0F   ; 
- D 0 - I - 0x016452 05:8442: 00        .byte $00   ; 
- D 0 - I - 0x016453 05:8443: FC        .byte $FC   ; 

loc_diving_frame_1:
- D 0 - I - 0x016454 05:8444: 02        .byte $02
- D 0 - I - 0x016455 05:8445: F8        .byte $F8, $13, $00, $F8
- D 0 - I - 0x016459 05:8449: F8        .byte $F8, $14, $00, $00

loc_diving_frame_2:
- D 0 - I - 0x01645D 05:844D: 03        .byte $03
- D 0 - I - 0x01645E 05:844E: F8        .byte $F8, $15, $00, $F4
- D 0 - I - 0x016462 05:8452: F8        .byte $F8, $16, $00, $FC
- D 0 - I - 0x016466 05:8456: F8        .byte $F8, $15, $40, $04

loc_diving_frame_3:
- D 0 - I - 0x01646A 05:845A: 03        .byte $03
- D 0 - I - 0x01646B 05:845B: F8        .byte $F8, $17, $00, $F4
- D 0 - I - 0x01646F 05:845F: F8        .byte $F8, $18, $00, $FC
- D 0 - I - 0x016473 05:8463: F8        .byte $F8, $17, $40, $04

loc_diving_frame_4:
- D 0 - I - 0x016477 05:8467: 04        .byte $04
- D 0 - I - 0x016478 05:8468: F8        .byte $F8, $19, $00, $F3
- D 0 - I - 0x01647C 05:846C: F8        .byte $F8, $19, $00, $F9
- D 0 - I - 0x016480 05:8470: F8        .byte $F8, $19, $40, $FF
- D 0 - I - 0x016484 05:8474: F8        .byte $F8, $19, $40, $05

loc_bat_right_frame_1:
- D 0 - I - 0x016488 05:8478: 04        .byte $04                ; Tile count
- D 0 - I - 0x016489 05:8479: F8        .byte $F8, $80, $40, $00 
- D 0 - I - 0x01648D 05:847D: F8        .byte $F8, $82, $40, $F8 
- D 0 - I - 0x016491 05:8481: 00        .byte $00, $81, $40, $00 
- D 0 - I - 0x016495 05:8485: 00        .byte $00, $83, $40, $F8 

loc_bat_left_frame_1:
- D 0 - I - 0x016499 05:8489: 04        .byte $04 
- D 0 - I - 0x01649A 05:848A: F8        .byte $F8, $80, $00, $F8 
- D 0 - I - 0x01649E 05:848E: F8        .byte $F8, $82, $00, $00 
- D 0 - I - 0x0164A2 05:8492: 00        .byte $00, $81, $00, $F8 
- D 0 - I - 0x0164A6 05:8496: 00        .byte $00, $83, $00, $00 

loc_bat_right_frame_2:
- D 0 - I - 0x0164AA 05:849A: 04        .byte $04 
- D 0 - I - 0x0164AB 05:849B: F8        .byte $F8, $84, $40, $00 
- D 0 - I - 0x0164AF 05:849F: F8        .byte $F8, $86, $40, $F8 
- D 0 - I - 0x0164B3 05:84A3: 00        .byte $00, $85, $40, $00 
- D 0 - I - 0x0164B7 05:84A7: 00        .byte $00, $87, $40, $F8 

loc_bat_left_frame_2:
- D 0 - I - 0x0164BB 05:84AB: 04        .byte $04 
- D 0 - I - 0x0164BC 05:84AC: F8        .byte $F8, $84, $00, $F8 
- D 0 - I - 0x0164C0 05:84B0: F8        .byte $F8, $86, $00, $00 
- D 0 - I - 0x0164C4 05:84B4: 00        .byte $00, $85, $00, $F8 
- D 0 - I - 0x0164C8 05:84B8: 00        .byte $00, $87, $00, $00 

loc_bat_right_frame_3:
- D 0 - I - 0x0164CC 05:84BC: 04        .byte $04 
- D 0 - I - 0x0164CD 05:84BD: F8        .byte $F8, $88, $40, $00 
- D 0 - I - 0x0164D1 05:84C1: F8        .byte $F8, $8A, $40, $F8 
- D 0 - I - 0x0164D5 05:84C5: 00        .byte $00, $89, $40, $00 
- D 0 - I - 0x0164D9 05:84C9: 00        .byte $00, $8B, $40, $F8 

loc_bat_left_frame_3:
- D 0 - I - 0x0164DD 05:84CD: 04        .byte $04 
- D 0 - I - 0x0164DE 05:84CE: F8        .byte $F8, $88, $00, $F8 
- D 0 - I - 0x0164E2 05:84D2: F8        .byte $F8, $8A, $00, $00 
- D 0 - I - 0x0164E6 05:84D6: 00        .byte $00, $89, $00, $F8 
- D 0 - I - 0x0164EA 05:84DA: 00        .byte $00, $8B, $00, $00 

loc_land_diver_right_frame_1:
- D 0 - I - 0x0164EE 05:84DE: 07        .byte $07                ; Tile count
- D 0 - I - 0x0164EF 05:84DF: E8        .byte $E8, $8C, $40, $FD
- D 0 - I - 0x0164F3 05:84E3: E8        .byte $E8, $8E, $40, $F5
- D 0 - I - 0x0164F7 05:84E7: F0        .byte $F0, $8D, $40, $02
- D 0 - I - 0x0164FB 05:84EB: F0        .byte $F0, $8F, $40, $FA
- D 0 - I - 0x0164FF 05:84EF: F0        .byte $F0, $90, $40, $F2
- D 0 - I - 0x016503 05:84F3: F8        .byte $F8, $91, $40, $F6
- D 0 - I - 0x016507 05:84F7: F8        .byte $F8, $92, $40, $EE

loc_land_diver_left_frame_1:
- D 0 - I - 0x01650B 05:84FB: 07        .byte $07
- D 0 - I - 0x01650C 05:84FC: E8        .byte $E8, $8C, $00, $FB
- D 0 - I - 0x016510 05:8500: E8        .byte $E8, $8E, $00, $03
- D 0 - I - 0x016514 05:8504: F0        .byte $F0, $8D, $00, $F6
- D 0 - I - 0x016518 05:8508: F0        .byte $F0, $8F, $00, $FE
- D 0 - I - 0x01651C 05:850C: F0        .byte $F0, $90, $00, $06
- D 0 - I - 0x016520 05:8510: F8        .byte $F8, $91, $00, $02
- D 0 - I - 0x016524 05:8514: F8        .byte $F8, $92, $00, $0A

loc_land_diver_right_frame_2:
- D 0 - I - 0x016528 05:8518: 07        .byte $07
- D 0 - I - 0x016529 05:8519: E8        .byte $E8, $8C, $40, $FD
- D 0 - I - 0x01652D 05:851D: E8        .byte $E8, $8E, $40, $F5
- D 0 - I - 0x016531 05:8521: F0        .byte $F0, $97, $40, $02
- D 0 - I - 0x016535 05:8525: F0        .byte $F0, $98, $40, $FA
- D 0 - I - 0x016539 05:8529: F0        .byte $F0, $90, $40, $F2
- D 0 - I - 0x01653D 05:852D: F8        .byte $F8, $99, $40, $F6
- D 0 - I - 0x016541 05:8531: F8        .byte $F8, $9A, $40, $EE

loc_land_diver_left_frame_2:
- D 0 - I - 0x016545 05:8535: 07        .byte $07
- D 0 - I - 0x016546 05:8536: E8        .byte $E8, $8C, $00, $FB
- D 0 - I - 0x01654A 05:853A: E8        .byte $E8, $8E, $00, $03
- D 0 - I - 0x01654E 05:853E: F0        .byte $F0, $97, $00, $F6
- D 0 - I - 0x016552 05:8542: F0        .byte $F0, $98, $00, $FE
- D 0 - I - 0x016556 05:8546: F0        .byte $F0, $90, $00, $06
- D 0 - I - 0x01655A 05:854A: F8        .byte $F8, $99, $00, $02
- D 0 - I - 0x01655E 05:854E: F8        .byte $F8, $9A, $00, $0A

loc_land_diver_right_frame_3:
- D 0 - I - 0x016562 05:8552: 06        .byte $06
- D 0 - I - 0x016563 05:8553: E8        .byte $E8, $8C, $40, $FD
- D 0 - I - 0x016567 05:8557: E8        .byte $E8, $8E, $40, $F5
- D 0 - I - 0x01656B 05:855B: F0        .byte $F0, $93, $40, $02
- D 0 - I - 0x01656F 05:855F: F0        .byte $F0, $94, $40, $FA
- D 0 - I - 0x016573 05:8563: F0        .byte $F0, $95, $40, $F2
- D 0 - I - 0x016577 05:8567: F8        .byte $F8, $96, $40, $F3

loc_land_diver_left_frame_3:
- D 0 - I - 0x01657B 05:856B: 06        .byte $06
- D 0 - I - 0x01657C 05:856C: E8        .byte $E8, $8C, $00, $FB
- D 0 - I - 0x016580 05:8570: E8        .byte $E8, $8E, $00, $03
- D 0 - I - 0x016584 05:8574: F0        .byte $F0, $93, $00, $F6
- D 0 - I - 0x016588 05:8578: F0        .byte $F0, $94, $00, $FE
- D 0 - I - 0x01658C 05:857C: F0        .byte $F0, $95, $00, $06
- D 0 - I - 0x016590 05:8580: F8        .byte $F8, $96, $00, $05

loc_land_diver_right_frame_4:
- D 0 - I - 0x016594 05:8584: 07        .byte $07
- D 0 - I - 0x016595 05:8585: EC        .byte $EC, $8C, $40, $FD
- D 0 - I - 0x016599 05:8589: EC        .byte $EC, $8E, $40, $F5
- D 0 - I - 0x01659D 05:858D: F5        .byte $F5, $93, $40, $01
- D 0 - I - 0x0165A1 05:8591: F4        .byte $F4, $A2, $40, $F9
- D 0 - I - 0x0165A5 05:8595: F4        .byte $F4, $90, $40, $F2
- D 0 - I - 0x0165A9 05:8599: FC        .byte $FC, $A3, $40, $F5
- D 0 - I - 0x0165AD 05:859D: FC        .byte $FC, $A4, $40, $ED

loc_land_diver_left_frame_4:
- D 0 - I - 0x0165B1 05:85A1: 07        .byte $07
- D 0 - I - 0x0165B2 05:85A2: EC        .byte $EC, $8C, $00, $FB
- D 0 - I - 0x0165B6 05:85A6: EC        .byte $EC, $8E, $00, $03
- D 0 - I - 0x0165BA 05:85AA: F5        .byte $F5, $93, $00, $F7
- D 0 - I - 0x0165BE 05:85AE: F4        .byte $F4, $A2, $00, $FF
- D 0 - I - 0x0165C2 05:85B2: F4        .byte $F4, $90, $00, $06
- D 0 - I - 0x0165C6 05:85B6: FC        .byte $FC, $A3, $00, $03
- D 0 - I - 0x0165CA 05:85BA: FC        .byte $FC, $A4, $00, $0B

; Damage
loc_land_diver_right_frame_5:
- D 0 - I - 0x0165CE 05:85BE: 05        .byte $05
- D 0 - I - 0x0165CF 05:85BF: F0        .byte $F0, $8C, $40, $FD
- D 0 - I - 0x0165D3 05:85C3: F0        .byte $F0, $8E, $40, $F5
- D 0 - I - 0x0165D7 05:85C7: F8        .byte $F8, $9C, $40, $FD
- D 0 - I - 0x0165DB 05:85CB: F8        .byte $F8, $9D, $40, $F5
- D 0 - I - 0x0165DF 05:85CF: F9        .byte $F9, $9B, $40, $02

loc_land_diver_left_frame_5:
- D 0 - I - 0x0165E3 05:85D3: 05        .byte $05
- D 0 - I - 0x0165E4 05:85D4: F0        .byte $F0, $8C, $00, $FB
- D 0 - I - 0x0165E8 05:85D8: F0        .byte $F0, $8E, $00, $03
- D 0 - I - 0x0165EC 05:85DC: F8        .byte $F8, $9C, $00, $FB
- D 0 - I - 0x0165F0 05:85E0: F8        .byte $F8, $9D, $00, $03
- D 0 - I - 0x0165F4 05:85E4: F9        .byte $F9, $9B, $00, $F6

loc_land_diver_right_frame_6:
- D 0 - I - 0x0165F8 05:85E8: 04        .byte $04
- D 0 - I - 0x0165F9 05:85E9: F1        .byte $F1, $96, $80, $FF
- D 0 - I - 0x0165FD 05:85ED: F9        .byte $F9, $95, $40, $FF
- D 0 - I - 0x016601 05:85F1: F9        .byte $F9, $9E, $40, $F8
- D 0 - I - 0x016605 05:85F5: F9        .byte $F9, $9F, $40, $F0

loc_land_diver_left_frame_6:
- D 0 - I - 0x016609 05:85F9: 04        .byte $04
- D 0 - I - 0x01660A 05:85FA: F1        .byte $F1, $96, $C0, $F9
- D 0 - I - 0x01660E 05:85FE: F9        .byte $F9, $95, $00, $F9
- D 0 - I - 0x016612 05:8602: F9        .byte $F9, $9E, $00, $00
- D 0 - I - 0x016616 05:8606: F9        .byte $F9, $9F, $00, $08

; Jump
loc_land_diver_right_frame_7:
- D 0 - I - 0x01661A 05:860A: 04        .byte $04
- D 0 - I - 0x01661B 05:860B: F0        .byte $F0, $8C, $40, $FD
- D 0 - I - 0x01661F 05:860F: F0        .byte $F0, $8E, $40, $F5
- D 0 - I - 0x016623 05:8613: F8        .byte $F8, $A0, $40, $FD
- D 0 - I - 0x016627 05:8617: F8        .byte $F8, $A1, $40, $F5

loc_land_diver_left_frame_7:
- D 0 - I - 0x01662B 05:861B: 04        .byte $04
- D 0 - I - 0x01662C 05:861C: F0        .byte $F0, $8C, $00, $FB
- D 0 - I - 0x016630 05:8620: F0        .byte $F0, $8E, $00, $03
- D 0 - I - 0x016634 05:8624: F8        .byte $F8, $A0, $00, $FB
- D 0 - I - 0x016638 05:8628: F8        .byte $F8, $A1, $00, $03

loc_barrel_frame_1:
- D 0 - I - 0x01663C 05:862C: 04        .byte $04
- D 0 - I - 0x01663D 05:862D: F8        .byte $F8, $B8, $00, $F8
- D 0 - I - 0x016641 05:8631: F8        .byte $F8, $BA, $00, $00
- D 0 - I - 0x016645 05:8635: 00        .byte $00, $B9, $00, $F8
- D 0 - I - 0x016649 05:8639: 00        .byte $00, $BB, $00, $00

loc_barrel_frame_2:
- D 0 - I - 0x01664D 05:863D: 04        .byte $04
- D 0 - I - 0x01664E 05:863E: F8        .byte $F8, $BC, $00, $F8
- D 0 - I - 0x016652 05:8642: F8        .byte $F8, $BE, $00, $00
- D 0 - I - 0x016656 05:8646: 00        .byte $00, $BD, $00, $F8
- D 0 - I - 0x01665A 05:864A: 00        .byte $00, $BF, $00, $00

loc_barrel_frame_3:
- D 0 - I - 0x01665E 05:864E: 04        .byte $04
- D 0 - I - 0x01665F 05:864F: F8        .byte $F8, $BB, $C0, $F8
- D 0 - I - 0x016663 05:8653: F8        .byte $F8, $B9, $C0, $00
- D 0 - I - 0x016667 05:8657: 00        .byte $00, $BA, $C0, $F8
- D 0 - I - 0x01666B 05:865B: 00        .byte $00, $B8, $C0, $00

loc_barrel_frame_4:
- D 0 - I - 0x01666F 05:865F: 04        .byte $04
- D 0 - I - 0x016670 05:8660: F8        .byte $F8, $BF, $C0, $F8
- D 0 - I - 0x016674 05:8664: F8        .byte $F8, $BD, $C0, $00
- D 0 - I - 0x016678 05:8668: 00        .byte $00, $BE, $C0, $F8
- D 0 - I - 0x01667C 05:866C: 00        .byte $00, $BC, $C0, $00

- D 0 - I - 0x016680 05:8670: 0B        .byte $0B   ; 
- D 0 - I - 0x016681 05:8671: C8        .byte $C8   ; 
- D 0 - I - 0x016682 05:8672: B8        .byte $B8   ; 
- D 0 - I - 0x016683 05:8673: 00        .byte $00   ; 
- D 0 - I - 0x016684 05:8674: FC        .byte $FC   ; 
- D 0 - I - 0x016685 05:8675: D0        .byte $D0   ; 
- D 0 - I - 0x016686 05:8676: B8        .byte $B8   ; 
- D 0 - I - 0x016687 05:8677: 00        .byte $00   ; 
- D 0 - I - 0x016688 05:8678: FC        .byte $FC   ; 
- D 0 - I - 0x016689 05:8679: D8        .byte $D8   ; 
- D 0 - I - 0x01668A 05:867A: B8        .byte $B8   ; 
- D 0 - I - 0x01668B 05:867B: 00        .byte $00   ; 
- D 0 - I - 0x01668C 05:867C: FC        .byte $FC   ; 
- D 0 - I - 0x01668D 05:867D: E0        .byte $E0   ; 
- D 0 - I - 0x01668E 05:867E: B8        .byte $B8   ; 
- D 0 - I - 0x01668F 05:867F: 00        .byte $00   ; 
- D 0 - I - 0x016690 05:8680: FC        .byte $FC   ; 
- D 0 - I - 0x016691 05:8681: E8        .byte $E8   ; 
- D 0 - I - 0x016692 05:8682: B8        .byte $B8   ; 
- D 0 - I - 0x016693 05:8683: 00        .byte $00   ; 
- D 0 - I - 0x016694 05:8684: FC        .byte $FC   ; 
- D 0 - I - 0x016695 05:8685: F0        .byte $F0   ; 
- D 0 - I - 0x016696 05:8686: B8        .byte $B8   ; 
- D 0 - I - 0x016697 05:8687: 00        .byte $00   ; 
- D 0 - I - 0x016698 05:8688: FC        .byte $FC   ; 
- D 0 - I - 0x016699 05:8689: F8        .byte $F8   ; 
- D 0 - I - 0x01669A 05:868A: B9        .byte $B9   ; 
- D 0 - I - 0x01669B 05:868B: 00        .byte $00   ; 
- D 0 - I - 0x01669C 05:868C: FC        .byte $FC   ; 
- D 0 - I - 0x01669D 05:868D: 00        .byte $00   ; 
- D 0 - I - 0x01669E 05:868E: BA        .byte $BA   ; 
- D 0 - I - 0x01669F 05:868F: 00        .byte $00   ; 
- D 0 - I - 0x0166A0 05:8690: F0        .byte $F0   ; 
- D 0 - I - 0x0166A1 05:8691: 00        .byte $00   ; 
- D 0 - I - 0x0166A2 05:8692: BA        .byte $BA   ; 
- D 0 - I - 0x0166A3 05:8693: 00        .byte $00   ; 
- D 0 - I - 0x0166A4 05:8694: F8        .byte $F8   ; 
- D 0 - I - 0x0166A5 05:8695: 00        .byte $00   ; 
- D 0 - I - 0x0166A6 05:8696: BA        .byte $BA   ; 
- D 0 - I - 0x0166A7 05:8697: 00        .byte $00   ; 
- D 0 - I - 0x0166A8 05:8698: 00        .byte $00   ; 
- D 0 - I - 0x0166A9 05:8699: 00        .byte $00   ; 
- D 0 - I - 0x0166AA 05:869A: BA        .byte $BA   ; 
- D 0 - I - 0x0166AB 05:869B: 00        .byte $00   ; 
- D 0 - I - 0x0166AC 05:869C: 08        .byte $08   ; 

loc_big_cat_right_frame_1:
- D 0 - I - 0x0166AD 05:869D: 05        .byte $05
- D 0 - I - 0x0166AE 05:869E: E0        .byte $E0, $A5, $00, $FD
- D 0 - I - 0x0166B2 05:86A2: E8        .byte $E8, $A6, $00, $FB
- D 0 - I - 0x0166B6 05:86A6: F0        .byte $F0, $A8, $00, $FD
- D 0 - I - 0x0166BA 05:86AA: F7        .byte $F7, $A9, $00, $F6
- D 0 - I - 0x0166BE 05:86AE: F8        .byte $F8, $AA, $00, $00

loc_big_cat_left_frame_1:
- D 0 - I - 0x0166C2 05:86B2: 05        .byte $05
- D 0 - I - 0x0166C3 05:86B3: E0        .byte $E0, $A5, $40, $FB
- D 0 - I - 0x0166C7 05:86B7: E8        .byte $E8, $A6, $40, $FD
- D 0 - I - 0x0166CB 05:86BB: F0        .byte $F0, $A8, $40, $FB
- D 0 - I - 0x0166CF 05:86BF: F7        .byte $F7, $A9, $40, $02
- D 0 - I - 0x0166D3 05:86C3: F8        .byte $F8, $AA, $40, $F8

loc_big_cat_right_frame_2:
- D 0 - I - 0x0166D7 05:86C7: 04        .byte $04
- D 0 - I - 0x0166D8 05:86C8: E0        .byte $E0, $A5, $00, $FD
- D 0 - I - 0x0166DC 05:86CC: E8        .byte $E8, $A6, $00, $FB
- D 0 - I - 0x0166E0 05:86D0: F0        .byte $F0, $AE, $00, $FE
- D 0 - I - 0x0166E4 05:86D4: F8        .byte $F8, $AF, $00, $FD

loc_big_cat_left_frame_2:
- D 0 - I - 0x0166E8 05:86D8: 04        .byte $04
- D 0 - I - 0x0166E9 05:86D9: E0        .byte $E0, $A5, $40, $FB
- D 0 - I - 0x0166ED 05:86DD: E8        .byte $E8, $A6, $40, $FD
- D 0 - I - 0x0166F1 05:86E1: F0        .byte $F0, $AE, $40, $FA
- D 0 - I - 0x0166F5 05:86E5: F8        .byte $F8, $AF, $40, $FB

loc_big_cat_right_frame_3:
- D 0 - I - 0x0166F9 05:86E9: 06        .byte $06
- D 0 - I - 0x0166FA 05:86EA: E0        .byte $E0, $A5, $00, $FD
- D 0 - I - 0x0166FE 05:86EE: E8        .byte $E8, $A6, $00, $FB
- D 0 - I - 0x016702 05:86F2: F0        .byte $F0, $AB, $00, $F8
- D 0 - I - 0x016706 05:86F6: F0        .byte $F0, $AD, $00, $00
- D 0 - I - 0x01670A 05:86FA: F8        .byte $F8, $AC, $00, $F8
- D 0 - I - 0x01670E 05:86FE: F8        .byte $F8, $AA, $00, $01

loc_big_cat_left_frame_3:
- D 0 - I - 0x016712 05:8702: 06        .byte $06
- D 0 - I - 0x016713 05:8703: E0        .byte $E0, $A5, $40, $FB
- D 0 - I - 0x016717 05:8707: E8        .byte $E8, $A6, $40, $FD
- D 0 - I - 0x01671B 05:870B: F0        .byte $F0, $AB, $40, $00
- D 0 - I - 0x01671F 05:870F: F0        .byte $F0, $AD, $40, $F8
- D 0 - I - 0x016723 05:8713: F8        .byte $F8, $AC, $40, $00
- D 0 - I - 0x016727 05:8717: F8        .byte $F8, $AA, $40, $F7

loc_big_cat_right_frame_6:
- D 0 - I - 0x01672B 05:871B: 04        .byte $04
- D 0 - I - 0x01672C 05:871C: E5        .byte $E5, $A5, $00, $FD
- D 0 - I - 0x016730 05:8720: ED        .byte $ED, $A6, $00, $FB
- D 0 - I - 0x016734 05:8724: F5        .byte $F5, $B6, $00, $FD
- D 0 - I - 0x016738 05:8728: FD        .byte $FD, $B7, $00, $FD

loc_big_cat_left_frame_6:
- D 0 - I - 0x01673C 05:872C: 04        .byte $04
- D 0 - I - 0x01673D 05:872D: E5        .byte $E5, $A5, $40, $FB
- D 0 - I - 0x016741 05:8731: ED        .byte $ED, $A6, $40, $FD
- D 0 - I - 0x016745 05:8735: F5        .byte $F5, $B6, $40, $FB
- D 0 - I - 0x016749 05:8739: FD        .byte $FD, $B7, $40, $FB

loc_big_cat_right_frame_4:
- D 0 - I - 0x01674D 05:873D: 04        .byte $04
- D 0 - I - 0x01674E 05:873E: EC        .byte $EC, $A5, $00, $FD
- D 0 - I - 0x016752 05:8742: F4        .byte $F4, $A6, $00, $FB
- D 0 - I - 0x016756 05:8746: FA        .byte $FA, $B5, $00, $FE
- D 0 - I - 0x01675A 05:874A: FA        .byte $FA, $B4, $00, $06

loc_big_cat_left_frame_4:
- D 0 - I - 0x01675E 05:874E: 04        .byte $04
- D 0 - I - 0x01675F 05:874F: EC        .byte $EC, $A5, $40, $FB
- D 0 - I - 0x016763 05:8753: F4        .byte $F4, $A6, $40, $FD
- D 0 - I - 0x016767 05:8757: FA        .byte $FA, $B5, $40, $FA
- D 0 - I - 0x01676B 05:875B: FA        .byte $FA, $B4, $40, $F2

loc_big_cat_right_frame_5:
- D 0 - I - 0x01676F 05:875F: 04        .byte $04
- D 0 - I - 0x016770 05:8760: F0        .byte $F0, $AF, $C0, $00
- D 0 - I - 0x016774 05:8764: F9        .byte $F9, $B2, $00, $F0
- D 0 - I - 0x016778 05:8768: FA        .byte $FA, $B3, $00, $F8
- D 0 - I - 0x01677C 05:876C: F8        .byte $F8, $FB, $00, $00

loc_big_cat_left_frame_5:
- D 0 - I - 0x016780 05:8770: 04        .byte $04
- D 0 - I - 0x016781 05:8771: F0        .byte $F0, $AF, $80, $F8
- D 0 - I - 0x016785 05:8775: F9        .byte $F9, $B2, $40, $08
- D 0 - I - 0x016789 05:8779: FA        .byte $FA, $B3, $40, $00
- D 0 - I - 0x01678D 05:877D: F8        .byte $F8, $FB, $40, $F8

loc_cat_knife_right_frame_1:
- D 0 - I - 0x016791 05:8781: 01        .byte $01
- D 0 - I - 0x016792 05:8782: E9        .byte $E9, $A7, $00, $02

loc_cat_knife_left_frame_1:
- D 0 - I - 0x016796 05:8786: 01        .byte $01
- D 0 - I - 0x016797 05:8787: E9        .byte $E9, $A7, $40, $F6

loc_cat_knife_right_frame_2:
- D 0 - I - 0x01679B 05:878B: 02        .byte $02
- D 0 - I - 0x01679C 05:878C: E7        .byte $E7, $A7, $00, $08
- D 0 - I - 0x0167A0 05:8790: E8        .byte $E8, $B0, $00, $03

loc_cat_knife_left_frame_2:
- D 0 - I - 0x0167A4 05:8794: 02        .byte $02
- D 0 - I - 0x0167A5 05:8795: E7        .byte $E7, $A7, $40, $F0
- D 0 - I - 0x0167A9 05:8799: E8        .byte $E8, $B0, $40, $F5

loc_cat_gun_right_frame_1:
- D 0 - I - 0x0167AD 05:879D: 01        .byte $01
- D 0 - I - 0x0167AE 05:879E: E8        .byte $E8, $B1, $00, $02

loc_cat_gun_left_frame_1:
- D 0 - I - 0x0167B2 05:87A2: 01        .byte $01
- D 0 - I - 0x0167B3 05:87A3: E8        .byte $E8, $B1, $40, $F6

loc_cat_gun_right_frame_2:
- D 0 - I - 0x0167B7 05:87A7: 02        .byte $02
- D 0 - I - 0x0167B8 05:87A8: E6        .byte $E6, $B1, $00, $08
- D 0 - I - 0x0167BC 05:87AC: E8        .byte $E8, $B0, $00, $03

loc_cat_gun_left_frame_2:
- D 0 - I - 0x0167C0 05:87B0: 02        .byte $02
- D 0 - I - 0x0167C1 05:87B1: E6        .byte $E6, $B1, $40, $F0
- D 0 - I - 0x0167C5 05:87B5: E8        .byte $E8, $B0, $40, $F5

loc_jumping_sailer_right_frame_3:
- D 0 - I - 0x0167C9 05:87B9: 06        .byte $06
- D 0 - I - 0x0167CA 05:87BA: F0        .byte $F0, $8B, $00, $F4
- D 0 - I - 0x0167CE 05:87BE: F0        .byte $F0, $8D, $00, $FC
- D 0 - I - 0x0167D2 05:87C2: F0        .byte $F0, $8F, $00, $04
- D 0 - I - 0x0167D6 05:87C6: F8        .byte $F8, $8C, $00, $F4
- D 0 - I - 0x0167DA 05:87CA: F8        .byte $F8, $8E, $00, $FC
- D 0 - I - 0x0167DE 05:87CE: F8        .byte $F8, $90, $00, $04

loc_jumping_sailer_left_frame_3:
- D 0 - I - 0x0167E2 05:87D2: 06        .byte $06
- D 0 - I - 0x0167E3 05:87D3: F0        .byte $F0, $8B, $40, $04
- D 0 - I - 0x0167E7 05:87D7: F0        .byte $F0, $8D, $40, $FC
- D 0 - I - 0x0167EB 05:87DB: F0        .byte $F0, $8F, $40, $F4
- D 0 - I - 0x0167EF 05:87DF: F8        .byte $F8, $8C, $40, $04
- D 0 - I - 0x0167F3 05:87E3: F8        .byte $F8, $8E, $40, $FC
- D 0 - I - 0x0167F7 05:87E7: F8        .byte $F8, $90, $40, $F4

loc_jumping_sailer_right_frame_2:
- D 0 - I - 0x0167FB 05:87EB: 08        .byte $08
- D 0 - I - 0x0167FC 05:87EC: E1        .byte $E1, $91, $00, $F8
- D 0 - I - 0x016800 05:87F0: DF        .byte $DF, $95, $00, $00
- D 0 - I - 0x016804 05:87F4: E9        .byte $E9, $92, $00, $F6
- D 0 - I - 0x016808 05:87F8: E7        .byte $E7, $96, $00, $FE
- D 0 - I - 0x01680C 05:87FC: E9        .byte $E9, $98, $00, $06
- D 0 - I - 0x016810 05:8800: F1        .byte $F1, $93, $00, $F6
- D 0 - I - 0x016814 05:8804: EF        .byte $EF, $97, $00, $FE
- D 0 - I - 0x016818 05:8808: F8        .byte $F8, $94, $00, $F2

loc_jumping_sailer_left_frame_2:
- D 0 - I - 0x01681C 05:880C: 08        .byte $08
- D 0 - I - 0x01681D 05:880D: E1        .byte $E1, $91, $40, $00
- D 0 - I - 0x016821 05:8811: DF        .byte $DF, $95, $40, $F8
- D 0 - I - 0x016825 05:8815: E9        .byte $E9, $92, $40, $02
- D 0 - I - 0x016829 05:8819: E7        .byte $E7, $96, $40, $FA
- D 0 - I - 0x01682D 05:881D: E9        .byte $E9, $98, $40, $F2
- D 0 - I - 0x016831 05:8821: F1        .byte $F1, $93, $40, $02
- D 0 - I - 0x016835 05:8825: EF        .byte $EF, $97, $40, $FA
- D 0 - I - 0x016839 05:8829: F8        .byte $F8, $94, $40, $06

loc_jumping_sailer_right_frame_1:
- D 0 - I - 0x01683D 05:882D: 07        .byte $07
- D 0 - I - 0x01683E 05:882E: E8        .byte $E8, $86, $00, $F6
- D 0 - I - 0x016842 05:8832: E5        .byte $E5, $84, $00, $FB
- D 0 - I - 0x016846 05:8836: E5        .byte $E5, $85, $00, $03
- D 0 - I - 0x01684A 05:883A: F0        .byte $F0, $87, $00, $F6
- D 0 - I - 0x01684E 05:883E: ED        .byte $ED, $89, $00, $FE
- D 0 - I - 0x016852 05:8842: ED        .byte $ED, $8A, $00, $06
- D 0 - I - 0x016856 05:8846: F8        .byte $F8, $88, $00, $F6

loc_jumping_sailer_left_frame_1:
- D 0 - I - 0x01685A 05:884A: 07        .byte $07
- D 0 - I - 0x01685B 05:884B: E8        .byte $E8, $86, $40, $02
- D 0 - I - 0x01685F 05:884F: E5        .byte $E5, $84, $40, $FD
- D 0 - I - 0x016863 05:8853: E5        .byte $E5, $85, $40, $F5
- D 0 - I - 0x016867 05:8857: F0        .byte $F0, $87, $40, $02
- D 0 - I - 0x01686B 05:885B: ED        .byte $ED, $89, $40, $FA
- D 0 - I - 0x01686F 05:885F: ED        .byte $ED, $8A, $40, $F2
- D 0 - I - 0x016873 05:8863: F8        .byte $F8, $88, $40, $02

loc_jumping_sailer_right_frame_4:
- D - - - - 0x016877 05:8867: 06        .byte $06
- D - - - - 0x016878 05:8868: F1        .byte $F1, $8B, $00, $F4
- D - - - - 0x01687C 05:886C: F1        .byte $F1, $8D, $00, $FC
- D - - - - 0x016880 05:8870: F1        .byte $F1, $8F, $00, $04
- D - - - - 0x016884 05:8874: F9        .byte $F9, $99, $00, $F4
- D - - - - 0x016888 05:8878: F9        .byte $F9, $9A, $00, $FC
- D - - - - 0x01688C 05:887C: F9        .byte $F9, $9B, $00, $04

loc_jumping_sailer_left_frame_4:
- D 0 - I - 0x016890 05:8880: 06        .byte $06
- D 0 - I - 0x016891 05:8881: F1        .byte $F1, $8B, $40, $04
- D 0 - I - 0x016895 05:8885: F1        .byte $F1, $8D, $40, $FC
- D 0 - I - 0x016899 05:8889: F1        .byte $F1, $8F, $40, $F4
- D 0 - I - 0x01689D 05:888D: F9        .byte $F9, $99, $40, $04
- D 0 - I - 0x0168A1 05:8891: F9        .byte $F9, $9A, $40, $FC
- D 0 - I - 0x0168A5 05:8895: F9        .byte $F9, $9B, $40, $F4

loc_jumping_sailer_right_frame_5:
- D - - - - 0x0168A9 05:8899: 04        .byte $04
- D - - - - 0x0168AA 05:889A: F1        .byte $F1, $9E, $00, $FE
- D - - - - 0x0168AE 05:889E: F9        .byte $F9, $9C, $00, $F0
- D - - - - 0x0168B2 05:88A2: F9        .byte $F9, $9D, $00, $F8
- D - - - - 0x0168B6 05:88A6: F9        .byte $F9, $9F, $00, $00

loc_jumping_sailer_left_frame_5:
- D 0 - I - 0x0168BA 05:88AA: 04        .byte $04
- D 0 - I - 0x0168BB 05:88AB: F1        .byte $F1, $9E, $40, $FA
- D 0 - I - 0x0168BF 05:88AF: F9        .byte $F9, $9C, $40, $08
- D 0 - I - 0x0168C3 05:88B3: F9        .byte $F9, $9D, $40, $00
- D 0 - I - 0x0168C7 05:88B7: F9        .byte $F9, $9F, $40, $F8

loc_sensor_frame_:
- D 0 - I - 0x0168CB 05:88BB: 01        .byte $01
- D 0 - I - 0x0168CC 05:88BC: F8        .byte $F8, $AD, $00, $FC

loc_bazookaman_right_frame_1:
- D 0 - I - 0x0168D0 05:88C0: 06        .byte $06
- D 0 - I - 0x0168D1 05:88C1: E9        .byte $E9, $A1, $00, $04
- D 0 - I - 0x0168D5 05:88C5: EC        .byte $EC, $A0, $00, $FE
- D 0 - I - 0x0168D9 05:88C9: EE        .byte $EE, $A2, $00, $F6
- D 0 - I - 0x0168DD 05:88CD: F4        .byte $F4, $A5, $00, $FB
- D 0 - I - 0x0168E1 05:88D1: F8        .byte $F8, $A6, $00, $F6
- D 0 - I - 0x0168E5 05:88D5: F8        .byte $F8, $A7, $00, $FE

loc_bazookaman_left_frame_1:
- D 0 - I - 0x0168E9 05:88D9: 06        .byte $06
- D 0 - I - 0x0168EA 05:88DA: E9        .byte $E9, $A1, $40, $F4
- D 0 - I - 0x0168EE 05:88DE: EC        .byte $EC, $A0, $40, $FA
- D 0 - I - 0x0168F2 05:88E2: EE        .byte $EE, $A2, $40, $02
- D 0 - I - 0x0168F6 05:88E6: F4        .byte $F4, $A5, $40, $FD
- D 0 - I - 0x0168FA 05:88EA: F8        .byte $F8, $A6, $40, $02
- D 0 - I - 0x0168FE 05:88EE: F8        .byte $F8, $A7, $40, $FA

loc_bazookaman_right_frame_2:
- D 0 - I - 0x016902 05:88F2: 06        .byte $06
- D 0 - I - 0x016903 05:88F3: EB        .byte $EB, $A4, $00, $04
- D 0 - I - 0x016907 05:88F7: EC        .byte $EC, $A3, $00, $FC
- D 0 - I - 0x01690B 05:88FB: EF        .byte $EF, $A2, $00, $F4
- D 0 - I - 0x01690F 05:88FF: F4        .byte $F4, $A5, $00, $FB
- D 0 - I - 0x016913 05:8903: F8        .byte $F8, $A6, $00, $F6
- D 0 - I - 0x016917 05:8907: F8        .byte $F8, $A7, $00, $FE

loc_bazookaman_left_frame_2:
- D 0 - I - 0x01691B 05:890B: 06        .byte $06
- D 0 - I - 0x01691C 05:890C: EB        .byte $EB, $A4, $40, $F4
- D 0 - I - 0x016920 05:8910: EC        .byte $EC, $A3, $40, $FC
- D 0 - I - 0x016924 05:8914: EF        .byte $EF, $A2, $40, $04
- D 0 - I - 0x016928 05:8918: F4        .byte $F4, $A5, $40, $FD
- D 0 - I - 0x01692C 05:891C: F8        .byte $F8, $A6, $40, $02
- D 0 - I - 0x016930 05:8920: F8        .byte $F8, $A7, $40, $FA

loc_bazookaman_right_frame_3:
- D 0 - I - 0x016934 05:8924: 05        .byte $05
- D 0 - I - 0x016935 05:8925: F0        .byte $F0, $B1, $00, $F3
- D 0 - I - 0x016939 05:8929: F0        .byte $F0, $B2, $00, $FB
- D 0 - I - 0x01693D 05:892D: F8        .byte $F8, $B3, $00, $F3
- D 0 - I - 0x016941 05:8931: F8        .byte $F8, $B4, $00, $FB
- D 0 - I - 0x016945 05:8935: F6        .byte $F6, $B5, $00, $03

loc_bazookaman_left_frame_3:
- D 0 - I - 0x016949 05:8939: 05        .byte $05
- D 0 - I - 0x01694A 05:893A: F0        .byte $F0, $B1, $40, $05
- D 0 - I - 0x01694E 05:893E: F0        .byte $F0, $B2, $40, $FD
- D 0 - I - 0x016952 05:8942: F8        .byte $F8, $B3, $40, $05
- D 0 - I - 0x016956 05:8946: F8        .byte $F8, $B4, $40, $FD
- D 0 - I - 0x01695A 05:894A: F6        .byte $F6, $B5, $40, $F5

- - - - - - 0x01695E 05:894E: 01        .byte $01   ; 
- - - - - - 0x01695F 05:894F: F8        .byte $F8   ; 
- - - - - - 0x016960 05:8950: B0        .byte $B0   ; 
- - - - - - 0x016961 05:8951: 00        .byte $00   ; 
- - - - - - 0x016962 05:8952: FC        .byte $FC   ; 
- - - - - - 0x016963 05:8953: 01        .byte $01   ; 
- - - - - - 0x016964 05:8954: F8        .byte $F8   ; 
- - - - - - 0x016965 05:8955: B0        .byte $B0   ; 
- - - - - - 0x016966 05:8956: 40        .byte $40   ; 
- - - - - - 0x016967 05:8957: FC        .byte $FC   ; 
- D 0 - I - 0x016968 05:8958: 04        .byte $04   ; 
- D 0 - I - 0x016969 05:8959: F1        .byte $F1   ; 
- D 0 - I - 0x01696A 05:895A: AE        .byte $AE   ; 
- D 0 - I - 0x01696B 05:895B: 00        .byte $00   ; 
- D 0 - I - 0x01696C 05:895C: 04        .byte $04   ; 
- D 0 - I - 0x01696D 05:895D: F9        .byte $F9   ; 
- D 0 - I - 0x01696E 05:895E: A9        .byte $A9   ; 
- D 0 - I - 0x01696F 05:895F: 00        .byte $00   ; 
- D 0 - I - 0x016970 05:8960: F4        .byte $F4   ; 
- D 0 - I - 0x016971 05:8961: F9        .byte $F9   ; 
- D 0 - I - 0x016972 05:8962: AD        .byte $AD   ; 
- D 0 - I - 0x016973 05:8963: 00        .byte $00   ; 
- D 0 - I - 0x016974 05:8964: FC        .byte $FC   ; 
- D 0 - I - 0x016975 05:8965: F9        .byte $F9   ; 
- D 0 - I - 0x016976 05:8966: AF        .byte $AF   ; 
- D 0 - I - 0x016977 05:8967: 00        .byte $00   ; 
- D 0 - I - 0x016978 05:8968: 04        .byte $04   ; 
- D 0 - I - 0x016979 05:8969: 04        .byte $04   ; 
- D 0 - I - 0x01697A 05:896A: F1        .byte $F1   ; 
- D 0 - I - 0x01697B 05:896B: AE        .byte $AE   ; 
- D 0 - I - 0x01697C 05:896C: 40        .byte $40   ; 
- D 0 - I - 0x01697D 05:896D: F4        .byte $F4   ; 
- D 0 - I - 0x01697E 05:896E: F9        .byte $F9   ; 
- D 0 - I - 0x01697F 05:896F: A9        .byte $A9   ; 
- D 0 - I - 0x016980 05:8970: 40        .byte $40   ; 
- D 0 - I - 0x016981 05:8971: 04        .byte $04   ; 
- D 0 - I - 0x016982 05:8972: F9        .byte $F9   ; 
- D 0 - I - 0x016983 05:8973: AD        .byte $AD   ; 
- D 0 - I - 0x016984 05:8974: 40        .byte $40   ; 
- D 0 - I - 0x016985 05:8975: FC        .byte $FC   ; 
- D 0 - I - 0x016986 05:8976: F9        .byte $F9   ; 
- D 0 - I - 0x016987 05:8977: AF        .byte $AF   ; 
- D 0 - I - 0x016988 05:8978: 40        .byte $40   ; 
- D 0 - I - 0x016989 05:8979: F4        .byte $F4   ; 

loc_fat_sailor_right_frame_1:
- D 0 - I - 0x01698A 05:897A: 0C        .byte $0C
- D 0 - I - 0x01698B 05:897B: E0        .byte $E0, $8C, $40, $04
- D 0 - I - 0x01698F 05:897F: E0        .byte $E0, $8E, $40, $FC
- D 0 - I - 0x016993 05:8983: E0        .byte $E0, $92, $40, $F4
- D 0 - I - 0x016997 05:8987: E8        .byte $E8, $8D, $40, $04
- D 0 - I - 0x01699B 05:898B: E8        .byte $E8, $8F, $40, $FC
- D 0 - I - 0x01699F 05:898F: E8        .byte $E8, $93, $40, $F4
- D 0 - I - 0x0169A3 05:8993: ED        .byte $ED, $90, $40, $04
- D 0 - I - 0x0169A7 05:8997: F0        .byte $F0, $94, $40, $FC
- D 0 - I - 0x0169AB 05:899B: F0        .byte $F0, $96, $40, $F4
- D 0 - I - 0x0169AF 05:899F: F8        .byte $F8, $91, $40, $04
- D 0 - I - 0x0169B3 05:89A3: F8        .byte $F8, $95, $40, $FC
- D 0 - I - 0x0169B7 05:89A7: F8        .byte $F8, $97, $40, $F4

loc_fat_sailor_left_frame_1:
- D 0 - I - 0x0169BB 05:89AB: 0C        .byte $0C
- D 0 - I - 0x0169BC 05:89AC: E0        .byte $E0, $8C, $00, $F4
- D 0 - I - 0x0169C0 05:89B0: E0        .byte $E0, $8E, $00, $FC
- D 0 - I - 0x0169C4 05:89B4: E0        .byte $E0, $92, $00, $04
- D 0 - I - 0x0169C8 05:89B8: E8        .byte $E8, $8D, $00, $F4
- D 0 - I - 0x0169CC 05:89BC: E8        .byte $E8, $8F, $00, $FC
- D 0 - I - 0x0169D0 05:89C0: E8        .byte $E8, $93, $00, $04
- D 0 - I - 0x0169D4 05:89C4: ED        .byte $ED, $90, $00, $F4
- D 0 - I - 0x0169D8 05:89C8: F0        .byte $F0, $94, $00, $FC
- D 0 - I - 0x0169DC 05:89CC: F0        .byte $F0, $96, $00, $04
- D 0 - I - 0x0169E0 05:89D0: F8        .byte $F8, $91, $00, $F4
- D 0 - I - 0x0169E4 05:89D4: F8        .byte $F8, $95, $00, $FC
- D 0 - I - 0x0169E8 05:89D8: F8        .byte $F8, $97, $00, $04

loc_fat_sailor_right_frame_2:
- D 0 - I - 0x0169EC 05:89DC: 0A        .byte $0A
- D 0 - I - 0x0169ED 05:89DD: E0        .byte $E0, $8C, $40, $04
- D 0 - I - 0x0169F1 05:89E1: E0        .byte $E0, $98, $40, $FC
- D 0 - I - 0x0169F5 05:89E5: E0        .byte $E0, $9A, $40, $F4
- D 0 - I - 0x0169F9 05:89E9: E8        .byte $E8, $8D, $40, $04
- D 0 - I - 0x0169FD 05:89ED: E8        .byte $E8, $99, $40, $FC
- D 0 - I - 0x016A01 05:89F1: E8        .byte $E8, $9B, $40, $F4
- D 0 - I - 0x016A05 05:89F5: F0        .byte $F0, $9C, $40, $FC
- D 0 - I - 0x016A09 05:89F9: F0        .byte $F0, $96, $40, $F4
- D 0 - I - 0x016A0D 05:89FD: F8        .byte $F8, $91, $40, $FE
- D 0 - I - 0x016A11 05:8A01: F8        .byte $F8, $A4, $40, $F8

loc_fat_sailor_left_frame_2:
- D 0 - I - 0x016A15 05:8A05: 0A        .byte $0A
- D 0 - I - 0x016A16 05:8A06: E0        .byte $E0, $8C, $00, $F4
- D 0 - I - 0x016A1A 05:8A0A: E0        .byte $E0, $98, $00, $FC
- D 0 - I - 0x016A1E 05:8A0E: E0        .byte $E0, $9A, $00, $04
- D 0 - I - 0x016A22 05:8A12: E8        .byte $E8, $8D, $00, $F4
- D 0 - I - 0x016A26 05:8A16: E8        .byte $E8, $99, $00, $FC
- D 0 - I - 0x016A2A 05:8A1A: E8        .byte $E8, $9B, $00, $04
- D 0 - I - 0x016A2E 05:8A1E: F0        .byte $F0, $9C, $00, $FC
- D 0 - I - 0x016A32 05:8A22: F0        .byte $F0, $96, $00, $04
- D 0 - I - 0x016A36 05:8A26: F8        .byte $F8, $91, $00, $FA
- D 0 - I - 0x016A3A 05:8A2A: F8        .byte $F8, $A4, $00, $00

loc_fat_sailor_right_frame_3:
- D 0 - I - 0x016A3E 05:8A2E: 0C        .byte $0C
- D 0 - I - 0x016A3F 05:8A2F: E0        .byte $E0, $8C, $40, $04
- D 0 - I - 0x016A43 05:8A33: E0        .byte $E0, $A0, $40, $FC
- D 0 - I - 0x016A47 05:8A37: E0        .byte $E0, $A2, $40, $F4
- D 0 - I - 0x016A4B 05:8A3B: E8        .byte $E8, $8D, $40, $04
- D 0 - I - 0x016A4F 05:8A3F: E8        .byte $E8, $A1, $40, $FC
- D 0 - I - 0x016A53 05:8A43: E8        .byte $E8, $A3, $40, $F4
- D 0 - I - 0x016A57 05:8A47: F0        .byte $F0, $94, $40, $FD
- D 0 - I - 0x016A5B 05:8A4B: F0        .byte $F0, $A6, $40, $F5
- D 0 - I - 0x016A5F 05:8A4F: EB        .byte $EB, $90, $40, $03
- D 0 - I - 0x016A63 05:8A53: F6        .byte $F6, $91, $40, $04
- D 0 - I - 0x016A67 05:8A57: F8        .byte $F8, $A5, $40, $FC
- D 0 - I - 0x016A6B 05:8A5B: F8        .byte $F8, $A7, $40, $F4

loc_fat_sailor_left_frame_3:
- D 0 - I - 0x016A6F 05:8A5F: 0C        .byte $0C
- D 0 - I - 0x016A70 05:8A60: E0        .byte $E0, $8C, $00, $F4
- D 0 - I - 0x016A74 05:8A64: E0        .byte $E0, $A0, $00, $FC
- D 0 - I - 0x016A78 05:8A68: E0        .byte $E0, $A2, $00, $04
- D 0 - I - 0x016A7C 05:8A6C: E8        .byte $E8, $8D, $00, $F4
- D 0 - I - 0x016A80 05:8A70: E8        .byte $E8, $A1, $00, $FC
- D 0 - I - 0x016A84 05:8A74: E8        .byte $E8, $A3, $00, $04
- D 0 - I - 0x016A88 05:8A78: F0        .byte $F0, $94, $00, $FB
- D 0 - I - 0x016A8C 05:8A7C: F0        .byte $F0, $A6, $00, $03
- D 0 - I - 0x016A90 05:8A80: EB        .byte $EB, $90, $00, $F5
- D 0 - I - 0x016A94 05:8A84: F6        .byte $F6, $91, $00, $F4
- D 0 - I - 0x016A98 05:8A88: F8        .byte $F8, $A5, $00, $FC
- D 0 - I - 0x016A9C 05:8A8C: F8        .byte $F8, $A7, $00, $04

loc_fat_sailor_right_frame_4:
- D 0 - I - 0x016AA0 05:8A90: 09        .byte $09
- D 0 - I - 0x016AA1 05:8A91: EC        .byte $EC, $8C, $40, $04
- D 0 - I - 0x016AA5 05:8A95: EC        .byte $EC, $98, $40, $FC
- D 0 - I - 0x016AA9 05:8A99: EC        .byte $EC, $9A, $40, $F4
- D 0 - I - 0x016AAD 05:8A9D: F6        .byte $F6, $9E, $40, $07
- D 0 - I - 0x016AB1 05:8AA1: F8        .byte $F8, $9D, $40, $FF
- D 0 - I - 0x016AB5 05:8AA5: F9        .byte $F9, $9F, $40, $F7
- D 0 - I - 0x016AB9 05:8AA9: F4        .byte $F4, $8D, $40, $04
- D 0 - I - 0x016ABD 05:8AAD: F4        .byte $F4, $99, $40, $FC
- D 0 - I - 0x016AC1 05:8AB1: F4        .byte $F4, $9B, $40, $F4

loc_fat_sailor_left_frame_4:
- D 0 - I - 0x016AC5 05:8AB5: 09        .byte $09
- D 0 - I - 0x016AC6 05:8AB6: EC        .byte $EC, $8C, $00, $F4
- D 0 - I - 0x016ACA 05:8ABA: EC        .byte $EC, $98, $00, $FC
- D 0 - I - 0x016ACE 05:8ABE: EC        .byte $EC, $9A, $00, $04
- D 0 - I - 0x016AD2 05:8AC2: F6        .byte $F6, $9E, $00, $F1
- D 0 - I - 0x016AD6 05:8AC6: F8        .byte $F8, $9D, $00, $F9
- D 0 - I - 0x016ADA 05:8ACA: F9        .byte $F9, $9F, $00, $01
- D 0 - I - 0x016ADE 05:8ACE: F4        .byte $F4, $8D, $00, $F4
- D 0 - I - 0x016AE2 05:8AD2: F4        .byte $F4, $99, $00, $FC
- D 0 - I - 0x016AE6 05:8AD6: F4        .byte $F4, $9B, $00, $04

loc_fat_sailor_right_frame_5:
- D 0 - I - 0x016AEA 05:8ADA: 07        .byte $07
- D 0 - I - 0x016AEB 05:8ADB: E9        .byte $E9, $A4, $80, $00
- D 0 - I - 0x016AEF 05:8ADF: E9        .byte $E9, $91, $80, $F8
- D 0 - I - 0x016AF3 05:8AE3: F1        .byte $F1, $96, $80, $04
- D 0 - I - 0x016AF7 05:8AE7: F1        .byte $F1, $9C, $80, $FC
- D 0 - I - 0x016AFB 05:8AEB: F9        .byte $F9, $A8, $40, $04
- D 0 - I - 0x016AFF 05:8AEF: F9        .byte $F9, $A9, $40, $FC
- D 0 - I - 0x016B03 05:8AF3: F9        .byte $F9, $AA, $40, $F4

loc_fat_sailor_left_frame_5:
- D 0 - I - 0x016B07 05:8AF7: 07        .byte $07
- D 0 - I - 0x016B08 05:8AF8: E9        .byte $E9, $A4, $C0, $F8
- D 0 - I - 0x016B0C 05:8AFC: E9        .byte $E9, $91, $C0, $00
- D 0 - I - 0x016B10 05:8B00: F1        .byte $F1, $96, $C0, $F4
- D 0 - I - 0x016B14 05:8B04: F1        .byte $F1, $9C, $C0, $FC
- D 0 - I - 0x016B18 05:8B08: F9        .byte $F9, $A8, $00, $F4
- D 0 - I - 0x016B1C 05:8B0C: F9        .byte $F9, $A9, $00, $FC
- D 0 - I - 0x016B20 05:8B10: F9        .byte $F9, $AA, $00, $04

loc_sensor_projectile_frame_1:
- D 0 - I - 0x016B24 05:8B14: 02        .byte $02
- D 0 - I - 0x016B25 05:8B15: F8        .byte $F8, $B3, $00, $FC
- D 0 - I - 0x016B29 05:8B19: 00        .byte $00, $B4, $00, $FC

loc_sensor_projectile_frame_2:
- D 0 - I - 0x016B2D 05:8B1D: 02        .byte $02
- D 0 - I - 0x016B2E 05:8B1E: F8        .byte $F8, $B5, $00, $FC
- D 0 - I - 0x016B32 05:8B22: 00        .byte $00, $B6, $00, $FC

loc_sensor_projectile_frame_3:
- D 0 - I - 0x016B36 05:8B26: 01        .byte $01
- D 0 - I - 0x016B37 05:8B27: FC        .byte $FC, $B7, $00, $FC

loc_sensor_projectile_frame_4:
- D 0 - I - 0x016B3B 05:8B2B: 02        .byte $02
- D 0 - I - 0x016B3C 05:8B2C: F8        .byte $F8, $B6, $80, $FC
- D 0 - I - 0x016B40 05:8B30: 00        .byte $00, $B5, $80, $FC

loc_sensor_projectile_frame_5:
- D 0 - I - 0x016B44 05:8B34: 02        .byte $02
- D 0 - I - 0x016B45 05:8B35: F8        .byte $F8, $B4, $80, $FC
- D 0 - I - 0x016B49 05:8B39: 00        .byte $00, $B3, $80, $FC

loc_sensor_projectile_frame_6:
- D 0 - I - 0x016B4D 05:8B3D: 02        .byte $02
- D 0 - I - 0x016B4E 05:8B3E: F8        .byte $F8, $AE, $00, $FC
- D 0 - I - 0x016B52 05:8B42: 00        .byte $00, $B0, $00, $FC

loc_sensor_projectile_frame_7:
- D 0 - I - 0x016B56 05:8B46: 01        .byte $01
- D 0 - I - 0x016B57 05:8B47: FC        .byte $FC, $AF, $00, $FC

loc_sensor_projectile_frame_8:
- D 0 - I - 0x016B5B 05:8B4B: 02        .byte $02
- D 0 - I - 0x016B5C 05:8B4C: F8        .byte $F8, $B0, $80, $FC
- D 0 - I - 0x016B60 05:8B50: 00        .byte $00, $AE, $80, $FC

loc_nun_right_frame_1:
- D 0 - I - 0x016B64 05:8B54: 06        .byte $06
- D 0 - I - 0x016B65 05:8B55: E0        .byte $E0, $80, $00, $FB
- D 0 - I - 0x016B69 05:8B59: E8        .byte $E8, $81, $00, $F9
- D 0 - I - 0x016B6D 05:8B5D: E8        .byte $E8, $84, $00, $01
- D 0 - I - 0x016B71 05:8B61: F0        .byte $F0, $82, $00, $F9
- D 0 - I - 0x016B75 05:8B65: F8        .byte $F8, $83, $00, $F9
- D 0 - I - 0x016B79 05:8B69: F8        .byte $F8, $85, $00, $01

loc_nun_left_frame_1:
- D 0 - I - 0x016B7D 05:8B6D: 06        .byte $06
- D 0 - I - 0x016B7E 05:8B6E: E0        .byte $E0, $80, $40, $FD
- D 0 - I - 0x016B82 05:8B72: E8        .byte $E8, $81, $40, $FF
- D 0 - I - 0x016B86 05:8B76: E8        .byte $E8, $84, $40, $F7
- D 0 - I - 0x016B8A 05:8B7A: F0        .byte $F0, $82, $40, $FF
- D 0 - I - 0x016B8E 05:8B7E: F8        .byte $F8, $83, $40, $FF
- D 0 - I - 0x016B92 05:8B82: F8        .byte $F8, $85, $40, $F7

loc_nun_right_frame_3:
- D 0 - I - 0x016B96 05:8B86: 07        .byte $07
- D 0 - I - 0x016B97 05:8B87: E4        .byte $E4, $80, $00, $FB
- D 0 - I - 0x016B9B 05:8B8B: EC        .byte $EC, $81, $00, $F9
- D 0 - I - 0x016B9F 05:8B8F: EC        .byte $EC, $84, $00, $01
- D 0 - I - 0x016BA3 05:8B93: F4        .byte $F4, $82, $00, $F8
- D 0 - I - 0x016BA7 05:8B97: F4        .byte $F4, $88, $00, $00
- D 0 - I - 0x016BAB 05:8B9B: FC        .byte $FC, $86, $00, $F8
- D 0 - I - 0x016BAF 05:8B9F: FC        .byte $FC, $87, $00, $00

loc_nun_left_frame_3:
- D 0 - I - 0x016BB3 05:8BA3: 07        .byte $07
- D 0 - I - 0x016BB4 05:8BA4: E4        .byte $E4, $80, $40, $FD
- D 0 - I - 0x016BB8 05:8BA8: EC        .byte $EC, $81, $40, $FF
- D 0 - I - 0x016BBC 05:8BAC: EC        .byte $EC, $84, $40, $F7
- D 0 - I - 0x016BC0 05:8BB0: F4        .byte $F4, $82, $40, $00
- D 0 - I - 0x016BC4 05:8BB4: F4        .byte $F4, $88, $40, $F8
- D 0 - I - 0x016BC8 05:8BB8: FC        .byte $FC, $86, $40, $00
- D 0 - I - 0x016BCC 05:8BBC: FC        .byte $FC, $87, $40, $F8

loc_nun_right_frame_2:
- D 0 - I - 0x016BD0 05:8BC0: 05        .byte $05
- D 0 - I - 0x016BD1 05:8BC1: E0        .byte $E0, $80, $00, $FB
- D 0 - I - 0x016BD5 05:8BC5: E8        .byte $E8, $81, $00, $F9
- D 0 - I - 0x016BD9 05:8BC9: E8        .byte $E8, $84, $00, $01
- D 0 - I - 0x016BDD 05:8BCD: F0        .byte $F0, $82, $00, $F9
- D 0 - I - 0x016BE1 05:8BD1: F8        .byte $F8, $89, $00, $F9

loc_nun_left_frame_2:
- D 0 - I - 0x016BE5 05:8BD5: 05        .byte $05
- D 0 - I - 0x016BE6 05:8BD6: E0        .byte $E0, $80, $40, $FD
- D 0 - I - 0x016BEA 05:8BDA: E8        .byte $E8, $81, $40, $FF
- D 0 - I - 0x016BEE 05:8BDE: E8        .byte $E8, $84, $40, $F7
- D 0 - I - 0x016BF2 05:8BE2: F0        .byte $F0, $82, $40, $FF
- D 0 - I - 0x016BF6 05:8BE6: F8        .byte $F8, $89, $40, $FF

loc_nun_right_frame_4:
- D 0 - I - 0x016BFA 05:8BEA: 05        .byte $05
- D 0 - I - 0x016BFB 05:8BEB: EA        .byte $EA, $80, $00, $FB
- D 0 - I - 0x016BFF 05:8BEF: F2        .byte $F2, $81, $00, $F9
- D 0 - I - 0x016C03 05:8BF3: F2        .byte $F2, $84, $00, $01
- D 0 - I - 0x016C07 05:8BF7: FA        .byte $FA, $8A, $00, $FC
- D 0 - I - 0x016C0B 05:8BFB: F8        .byte $F8, $8B, $00, $04

loc_nun_left_frame_4:
- D 0 - I - 0x016C0F 05:8BFF: 05        .byte $05
- D 0 - I - 0x016C10 05:8C00: EA        .byte $EA, $80, $40, $FD
- D 0 - I - 0x016C14 05:8C04: F2        .byte $F2, $81, $40, $FF
- D 0 - I - 0x016C18 05:8C08: F2        .byte $F2, $84, $40, $F7
- D 0 - I - 0x016C1C 05:8C0C: FA        .byte $FA, $8A, $40, $FC
- D 0 - I - 0x016C20 05:8C10: F8        .byte $F8, $8B, $40, $F4

loc_nun_right_frame_5:
- D 0 - I - 0x016C24 05:8C14: 04        .byte $04
- D 0 - I - 0x016C25 05:8C15: F1        .byte $F1, $8F, $00, $FE
- D 0 - I - 0x016C29 05:8C19: F9        .byte $F9, $8C, $00, $F0
- D 0 - I - 0x016C2D 05:8C1D: F9        .byte $F9, $8D, $00, $F8
- D 0 - I - 0x016C31 05:8C21: F9        .byte $F9, $8E, $00, $00

loc_nun_left_frame_5:
- D 0 - I - 0x016C35 05:8C25: 04        .byte $04
- D 0 - I - 0x016C36 05:8C26: F1        .byte $F1, $8F, $40, $FA
- D 0 - I - 0x016C3A 05:8C2A: F9        .byte $F9, $8C, $40, $08
- D 0 - I - 0x016C3E 05:8C2E: F9        .byte $F9, $8D, $40, $00
- D 0 - I - 0x016C42 05:8C32: F9        .byte $F9, $8E, $40, $F8

loc_karate_man_bottom_right_frame_1:
- D 0 - I - 0x016C46 05:8C36: 03        .byte $03
- D 0 - I - 0x016C47 05:8C37: F0        .byte $F0, $9F, $00, $FC
- D 0 - I - 0x016C4B 05:8C3B: F6        .byte $F6, $9E, $00, $F4
- D 0 - I - 0x016C4F 05:8C3F: F8        .byte $F8, $91, $00, $FC

loc_karate_man_bottom_left_frame_1:
- D 0 - I - 0x016C53 05:8C43: 03        .byte $03
- D 0 - I - 0x016C54 05:8C44: F0        .byte $F0, $9F, $40, $FC
- D 0 - I - 0x016C58 05:8C48: F6        .byte $F6, $9E, $40, $04
- D 0 - I - 0x016C5C 05:8C4C: F8        .byte $F8, $91, $40, $FC

loc_karate_man_bottom_right_frame_2:
- D 0 - I - 0x016C60 05:8C50: 04        .byte $04
- D 0 - I - 0x016C61 05:8C51: F0        .byte $F0, $92, $00, $F7
- D 0 - I - 0x016C65 05:8C55: F0        .byte $F0, $94, $00, $FF
- D 0 - I - 0x016C69 05:8C59: F8        .byte $F8, $93, $00, $F7
- D 0 - I - 0x016C6D 05:8C5D: F8        .byte $F8, $95, $00, $FF

loc_karate_man_bottom_left_frame_2:
- D 0 - I - 0x016C71 05:8C61: 04        .byte $04
- D 0 - I - 0x016C72 05:8C62: F0        .byte $F0, $92, $40, $01
- D 0 - I - 0x016C76 05:8C66: F0        .byte $F0, $94, $40, $F9
- D 0 - I - 0x016C7A 05:8C6A: F8        .byte $F8, $93, $40, $01
- D 0 - I - 0x016C7E 05:8C6E: F8        .byte $F8, $95, $40, $F9

loc_karate_man_bottom_right_frame_3:
- D 0 - I - 0x016C82 05:8C72: 03        .byte $03
- D 0 - I - 0x016C83 05:8C73: F0        .byte $F0, $9B, $00, $FC
- D 0 - I - 0x016C87 05:8C77: F6        .byte $F6, $9C, $00, $F4
- D 0 - I - 0x016C8B 05:8C7B: F8        .byte $F8, $9D, $00, $FF

loc_karate_man_bottom_left_frame_3:
- D 0 - I - 0x016C8F 05:8C7F: 03        .byte $03
- D 0 - I - 0x016C90 05:8C80: F0        .byte $F0, $9B, $40, $FC
- D 0 - I - 0x016C94 05:8C84: F6        .byte $F6, $9C, $40, $04
- D 0 - I - 0x016C98 05:8C88: F8        .byte $F8, $9D, $40, $F9

loc_karate_man_bottom_right_frame_4:
- D 0 - I - 0x016C9C 05:8C8C: 04        .byte $04
- D 0 - I - 0x016C9D 05:8C8D: F8        .byte $F8, $BB, $00, $F6
- D 0 - I - 0x016CA1 05:8C91: F8        .byte $F8, $BD, $00, $FE
- D 0 - I - 0x016CA5 05:8C95: F8        .byte $F8, $BE, $00, $06
- D 0 - I - 0x016CA9 05:8C99: 00        .byte $00, $BC, $00, $F8

loc_karate_man_bottom_left_frame_4:
- D 0 - I - 0x016CAD 05:8C9D: 04        .byte $04
- D 0 - I - 0x016CAE 05:8C9E: F8        .byte $F8, $BB, $40, $02
- D 0 - I - 0x016CB2 05:8CA2: F8        .byte $F8, $BD, $40, $FA
- D 0 - I - 0x016CB6 05:8CA6: F8        .byte $F8, $BE, $40, $F2
- D 0 - I - 0x016CBA 05:8CAA: 00        .byte $00, $BC, $40, $00

loc_karate_man_bottom_right_frame_5:
- D 0 - I - 0x016CBE 05:8CAE: 03        .byte $03
- D 0 - I - 0x016CBF 05:8CAF: F2        .byte $F2, $9A, $00, $04
- D 0 - I - 0x016CC3 05:8CB3: FA        .byte $FA, $AC, $00, $FC
- D 0 - I - 0x016CC7 05:8CB7: FA        .byte $FA, $B9, $00, $04

loc_karate_man_bottom_left_frame_5:
- D 0 - I - 0x016CCB 05:8CBB: 03        .byte $03
- D 0 - I - 0x016CCC 05:8CBC: F2        .byte $F2, $9A, $40, $F4
- D 0 - I - 0x016CD0 05:8CC0: FA        .byte $FA, $AC, $40, $FC
- D 0 - I - 0x016CD4 05:8CC4: FA        .byte $FA, $B9, $40, $F4

loc_karate_man_bottom_right_frame_6:
- D 0 - I - 0x016CD8 05:8CC8: 03        .byte $03
- D 0 - I - 0x016CD9 05:8CC9: F0        .byte $F0, $96, $00, $F7
- D 0 - I - 0x016CDD 05:8CCD: F8        .byte $F8, $B6, $00, $F8
- D 0 - I - 0x016CE1 05:8CD1: F8        .byte $F8, $B7, $00, $00

loc_karate_man_bottom_left_frame_6:
- D 0 - I - 0x016CE5 05:8CD5: 03        .byte $03
- D 0 - I - 0x016CE6 05:8CD6: F0        .byte $F0, $96, $40, $01
- D 0 - I - 0x016CEA 05:8CDA: F8        .byte $F8, $B6, $40, $00
- D 0 - I - 0x016CEE 05:8CDE: F8        .byte $F8, $B7, $40, $F8

loc_karate_man_top_right_frame_1:
- D 0 - I - 0x016CF2 05:8CE2: 03        .byte $03
- D 0 - I - 0x016CF3 05:8CE3: E0        .byte $E0, $97, $00, $FF
- D 0 - I - 0x016CF7 05:8CE7: E8        .byte $E8, $96, $00, $F6
- D 0 - I - 0x016CFB 05:8CEB: E8        .byte $E8, $B8, $00, $FE

loc_karate_man_top_left_frame_1:
- D 0 - I - 0x016CFF 05:8CEF: 03        .byte $03
- D 0 - I - 0x016D00 05:8CF0: E0        .byte $E0, $97, $40, $F9
- D 0 - I - 0x016D04 05:8CF4: E8        .byte $E8, $96, $40, $02
- D 0 - I - 0x016D08 05:8CF8: E8        .byte $E8, $B8, $40, $FA

loc_karate_man_top_right_frame_2:
- D 0 - I - 0x016D0C 05:8CFC: 03        .byte $03
- D 0 - I - 0x016D0D 05:8CFD: E0        .byte $E0, $97, $00, $FF
- D 0 - I - 0x016D11 05:8D01: E8        .byte $E8, $98, $00, $F7
- D 0 - I - 0x016D15 05:8D05: E8        .byte $E8, $BA, $00, $FF

loc_karate_man_top_left_frame_2:
- D 0 - I - 0x016D19 05:8D09: 03        .byte $03
- D 0 - I - 0x016D1A 05:8D0A: E0        .byte $E0, $97, $40, $F9
- D 0 - I - 0x016D1E 05:8D0E: E8        .byte $E8, $96, $40, $01
- D 0 - I - 0x016D22 05:8D12: E8        .byte $E8, $BA, $40, $F9

loc_karate_man_top_right_frame_3:
- D 0 - I - 0x016D26 05:8D16: 02        .byte $02
- D 0 - I - 0x016D27 05:8D17: E0        .byte $E0, $97, $00, $FF
- D 0 - I - 0x016D2B 05:8D1B: E8        .byte $E8, $99, $00, $FC

loc_karate_man_top_left_frame_3:
- D 0 - I - 0x016D2F 05:8D1F: 02        .byte $02
- D 0 - I - 0x016D30 05:8D20: E0        .byte $E0, $97, $40, $F9
- D 0 - I - 0x016D34 05:8D24: E8        .byte $E8, $99, $40, $FC

loc_karate_man_top_right_frame_4:
- D 0 - I - 0x016D38 05:8D28: 01        .byte $01
- D 0 - I - 0x016D39 05:8D29: F0        .byte $F0, $97, $00, $F7

loc_karate_man_top_left_frame_4:
- D 0 - I - 0x016D3D 05:8D2D: 01        .byte $01
- D 0 - I - 0x016D3E 05:8D2E: F0        .byte $F0, $97, $40, $01

loc_karate_man_top_right_frame_5:
- D 0 - I - 0x016D42 05:8D32: 01        .byte $01
- D 0 - I - 0x016D43 05:8D33: FA        .byte $FA, $BF, $00, $F4

loc_karate_man_top_left_frame_5:
- D 0 - I - 0x016D47 05:8D37: 01        .byte $01
- D 0 - I - 0x016D48 05:8D38: FA        .byte $FA, $BF, $40, $04

loc_karate_man_top_right_frame_6:
- D 0 - I - 0x016D4C 05:8D3C: 02        .byte $02
- D 0 - I - 0x016D4D 05:8D3D: E8        .byte $E8, $97, $00, $00
- D 0 - I - 0x016D51 05:8D41: F0        .byte $F0, $B8, $00, $FF

loc_karate_man_top_left_frame_6:
- D 0 - I - 0x016D55 05:8D45: 02        .byte $02
- D 0 - I - 0x016D56 05:8D46: E8        .byte $E8, $97, $40, $F8
- D 0 - I - 0x016D5A 05:8D4A: F0        .byte $F0, $B8, $40, $F9

loc_karate_man_top_right_frame_7:
- D 0 - I - 0x016D5E 05:8D4E: 03        .byte $03
- D 0 - I - 0x016D5F 05:8D4F: E0        .byte $E0, $97, $00, $FF
- D 0 - I - 0x016D63 05:8D53: E8        .byte $E8, $96, $00, $F7
- D 0 - I - 0x016D67 05:8D57: E8        .byte $E8, $B8, $00, $FF

loc_karate_man_top_left_frame_7:
- D 0 - I - 0x016D6B 05:8D5B: 03        .byte $03
- D 0 - I - 0x016D6C 05:8D5C: E0        .byte $E0, $97, $40, $F9
- D 0 - I - 0x016D70 05:8D60: E8        .byte $E8, $96, $40, $01
- D 0 - I - 0x016D74 05:8D64: E8        .byte $E8, $B8, $40, $F9

loc_karate_man_top_right_frame_8:
- D 0 - I - 0x016D78 05:8D68: 03        .byte $03
- D 0 - I - 0x016D79 05:8D69: E0        .byte $E0, $97, $00, $FF
- D 0 - I - 0x016D7D 05:8D6D: E8        .byte $E8, $AA, $00, $FC
- D 0 - I - 0x016D81 05:8D71: E8        .byte $E8, $AB, $00, $04

loc_karate_man_top_left_frame_8:
- D 0 - I - 0x016D85 05:8D75: 03        .byte $03
- D 0 - I - 0x016D86 05:8D76: E0        .byte $E0, $97, $40, $F9
- D 0 - I - 0x016D8A 05:8D7A: E8        .byte $E8, $AA, $40, $FC
- D 0 - I - 0x016D8E 05:8D7E: E8        .byte $E8, $AB, $40, $F4

loc_karate_man_ex_right_frame_1:
- D 0 - I - 0x016D92 05:8D82: 04        .byte $04
- D 0 - I - 0x016D93 05:8D83: F0        .byte $F0, $A4, $00, $F8
- D 0 - I - 0x016D97 05:8D87: F0        .byte $F0, $A6, $00, $00
- D 0 - I - 0x016D9B 05:8D8B: F8        .byte $F8, $A5, $00, $F8
- D 0 - I - 0x016D9F 05:8D8F: F8        .byte $F8, $A7, $00, $00

loc_karate_man_ex_left_frame_1:
- D 0 - I - 0x016DA3 05:8D93: 04        .byte $04
- D 0 - I - 0x016DA4 05:8D94: F0        .byte $F0, $A4, $40, $00
- D 0 - I - 0x016DA8 05:8D98: F0        .byte $F0, $A6, $40, $F8
- D 0 - I - 0x016DAC 05:8D9C: F8        .byte $F8, $A5, $40, $00
- D 0 - I - 0x016DB0 05:8DA0: F8        .byte $F8, $A7, $40, $F8

loc_karate_man_ex_right_frame_2:
- D 0 - I - 0x016DB4 05:8DA4: 04        .byte $04
- D 0 - I - 0x016DB5 05:8DA5: F0        .byte $F0, $A0, $00, $F8
- D 0 - I - 0x016DB9 05:8DA9: F0        .byte $F0, $A2, $00, $00
- D 0 - I - 0x016DBD 05:8DAD: F8        .byte $F8, $A1, $00, $F8
- D 0 - I - 0x016DC1 05:8DB1: F8        .byte $F8, $A3, $00, $00

loc_karate_man_ex_left_frame_2:
- D 0 - I - 0x016DC5 05:8DB5: 04        .byte $04
- D 0 - I - 0x016DC6 05:8DB6: F0        .byte $F0, $A0, $40, $00
- D 0 - I - 0x016DCA 05:8DBA: F0        .byte $F0, $A2, $40, $F8
- D 0 - I - 0x016DCE 05:8DBE: F8        .byte $F8, $A1, $40, $00
- D 0 - I - 0x016DD2 05:8DC2: F8        .byte $F8, $A3, $40, $F8

loc_karate_man_ex_right_frame_3:
- D 0 - I - 0x016DD6 05:8DC6: 04        .byte $04
- D 0 - I - 0x016DD7 05:8DC7: F0        .byte $F0, $A7, $C0, $F8
- D 0 - I - 0x016DDB 05:8DCB: F0        .byte $F0, $A5, $C0, $00
- D 0 - I - 0x016DDF 05:8DCF: F8        .byte $F8, $A6, $C0, $F8
- D 0 - I - 0x016DE3 05:8DD3: F8        .byte $F8, $A4, $C0, $00

loc_karate_man_ex_left_frame_3:
- D 0 - I - 0x016DE7 05:8DD7: 04        .byte $04
- D 0 - I - 0x016DE8 05:8DD8: F0        .byte $F0, $A7, $80, $00
- D 0 - I - 0x016DEC 05:8DDC: F0        .byte $F0, $A5, $80, $F8
- D 0 - I - 0x016DF0 05:8DE0: F8        .byte $F8, $A6, $80, $00
- D 0 - I - 0x016DF4 05:8DE4: F8        .byte $F8, $A4, $80, $F8

loc_karate_man_ex_right_frame_4:
- D 0 - I - 0x016DF8 05:8DE8: 04        .byte $04
- D 0 - I - 0x016DF9 05:8DE9: F0        .byte $F0, $A3, $C0, $F8
- D 0 - I - 0x016DFD 05:8DED: F0        .byte $F0, $A1, $C0, $00
- D 0 - I - 0x016E01 05:8DF1: F8        .byte $F8, $A2, $C0, $F8
- D 0 - I - 0x016E05 05:8DF5: F8        .byte $F8, $A0, $C0, $00

loc_karate_man_ex_left_frame_4:
- D 0 - I - 0x016E09 05:8DF9: 04        .byte $04
- D 0 - I - 0x016E0A 05:8DFA: F0        .byte $F0, $A3, $80, $00
- D 0 - I - 0x016E0E 05:8DFE: F0        .byte $F0, $A1, $80, $F8
- D 0 - I - 0x016E12 05:8E02: F8        .byte $F8, $A2, $80, $00
- D 0 - I - 0x016E16 05:8E06: F8        .byte $F8, $A0, $80, $F8

loc_karate_man_ex_right_frame_5:
- D 0 - I - 0x016E1A 05:8E0A: 07        .byte $07
- D 0 - I - 0x016E1B 05:8E0B: E8        .byte $E8, $97, $00, $FF
- D 0 - I - 0x016E1F 05:8E0F: F0        .byte $F0, $AF, $00, $F7
- D 0 - I - 0x016E23 05:8E13: F0        .byte $F0, $B0, $00, $FF
- D 0 - I - 0x016E27 05:8E17: F8        .byte $F8, $A8, $00, $FF
- D 0 - I - 0x016E2B 05:8E1B: F8        .byte $F8, $AD, $00, $07
- D 0 - I - 0x016E2F 05:8E1F: 00        .byte $00, $A9, $00, $FF
- D 0 - I - 0x016E33 05:8E23: 00        .byte $00, $AE, $00, $0B

loc_karate_man_ex_left_frame_5:
- D 0 - I - 0x016E37 05:8E27: 07        .byte $07
- D 0 - I - 0x016E38 05:8E28: E8        .byte $E8, $97, $40, $F9
- D 0 - I - 0x016E3C 05:8E2C: F0        .byte $F0, $AF, $40, $01
- D 0 - I - 0x016E40 05:8E30: F0        .byte $F0, $B0, $40, $F9
- D 0 - I - 0x016E44 05:8E34: F8        .byte $F8, $A8, $40, $F9
- D 0 - I - 0x016E48 05:8E38: F8        .byte $F8, $AD, $40, $F1
- D 0 - I - 0x016E4C 05:8E3C: 00        .byte $00, $A9, $40, $F9
- D 0 - I - 0x016E50 05:8E40: 00        .byte $00, $AE, $40, $ED

loc_karate_girl_top_right_frame_1:
- D 0 - I - 0x016E54 05:8E44: 03        .byte $03
- D 0 - I - 0x016E55 05:8E45: E0        .byte $E0, $C0, $00, $FD
- D 0 - I - 0x016E59 05:8E49: E8        .byte $E8, $96, $00, $F6
- D 0 - I - 0x016E5D 05:8E4D: E8        .byte $E8, $B8, $00, $FE

loc_karate_girl_top_left_frame_1:
- D 0 - I - 0x016E61 05:8E51: 03        .byte $03
- D 0 - I - 0x016E62 05:8E52: E0        .byte $E0, $C0, $40, $FB
- D 0 - I - 0x016E66 05:8E56: E8        .byte $E8, $96, $40, $02
- D 0 - I - 0x016E6A 05:8E5A: E8        .byte $E8, $B8, $40, $FA

loc_karate_girl_top_right_frame_2:
- D 0 - I - 0x016E6E 05:8E5E: 03        .byte $03
- D 0 - I - 0x016E6F 05:8E5F: E0        .byte $E0, $C0, $00, $FD
- D 0 - I - 0x016E73 05:8E63: E8        .byte $E8, $98, $00, $F7
- D 0 - I - 0x016E77 05:8E67: E8        .byte $E8, $BA, $00, $FF

loc_karate_girl_top_left_frame_2:
- D 0 - I - 0x016E7B 05:8E6B: 03        .byte $03
- D 0 - I - 0x016E7C 05:8E6C: E0        .byte $E0, $C0, $40, $FB
- D 0 - I - 0x016E80 05:8E70: E8        .byte $E8, $98, $40, $01
- D 0 - I - 0x016E84 05:8E74: E8        .byte $E8, $BA, $40, $F9

loc_karate_girl_top_right_frame_3:
- D 0 - I - 0x016E88 05:8E78: 02        .byte $02
- D 0 - I - 0x016E89 05:8E79: E0        .byte $E0, $C0, $00, $FD
- D 0 - I - 0x016E8D 05:8E7D: E8        .byte $E8, $99, $00, $FC

loc_karate_girl_top_left_frame_3:
- D 0 - I - 0x016E91 05:8E81: 02        .byte $02
- D 0 - I - 0x016E92 05:8E82: E0        .byte $E0, $C0, $40, $FB
- D 0 - I - 0x016E96 05:8E86: E8        .byte $E8, $99, $40, $FC

loc_karate_girl_top_right_frame_4:
- D 0 - I - 0x016E9A 05:8E8A: 01        .byte $01
- D 0 - I - 0x016E9B 05:8E8B: F0        .byte $F0, $C6, $00, $F6

loc_karate_girl_top_left_frame_4:
- D 0 - I - 0x016E9F 05:8E8F: 01        .byte $01
- D 0 - I - 0x016EA0 05:8E90: F0        .byte $F0, $C6, $40, $02

loc_karate_girl_top_right_frame_5:
- D 0 - I - 0x016EA4 05:8E94: 01        .byte $01
- D 0 - I - 0x016EA5 05:8E95: FA        .byte $FA, $C7, $00, $F4

loc_karate_girl_top_left_frame_5:
- D 0 - I - 0x016EA9 05:8E99: 01        .byte $01
- D 0 - I - 0x016EAA 05:8E9A: FA        .byte $FA, $C7, $40, $04

loc_karate_girl_top_right_frame_6:
- D 0 - I - 0x016EAE 05:8E9E: 02        .byte $02
- D 0 - I - 0x016EAF 05:8E9F: E8        .byte $E8, $C0, $00, $FD
- D 0 - I - 0x016EB3 05:8EA3: F0        .byte $F0, $B8, $00, $FD

loc_karate_girl_top_left_frame_6:
- D 0 - I - 0x016EB7 05:8EA7: 02        .byte $02
- D 0 - I - 0x016EB8 05:8EA8: E8        .byte $E8, $C0, $40, $FB
- D 0 - I - 0x016EBC 05:8EAC: F0        .byte $F0, $B8, $40, $FB

loc_karate_girl_top_right_frame_7:
- D 0 - I - 0x016EC0 05:8EB0: 05        .byte $05
- D 0 - I - 0x016EC1 05:8EB1: E8        .byte $E8, $E5, $00, $F7
- D 0 - I - 0x016EC5 05:8EB5: E8        .byte $E8, $C6, $00, $FD
- D 0 - I - 0x016EC9 05:8EB9: F0        .byte $F0, $E7, $00, $FD
- D 0 - I - 0x016ECD 05:8EBD: F8        .byte $F8, $E8, $00, $F7
- D 0 - I - 0x016ED1 05:8EC1: F8        .byte $F8, $E9, $00, $FF

loc_karate_girl_top_left_frame_7:
- D 0 - I - 0x016ED5 05:8EC5: 05        .byte $05
- D 0 - I - 0x016ED6 05:8EC6: E8        .byte $E8, $E5, $40, $01
- D 0 - I - 0x016EDA 05:8ECA: E8        .byte $E8, $C6, $40, $FB
- D 0 - I - 0x016EDE 05:8ECE: F0        .byte $F0, $E7, $40, $FB
- D 0 - I - 0x016EE2 05:8ED2: F8        .byte $F8, $E8, $40, $01
- D 0 - I - 0x016EE6 05:8ED6: F8        .byte $F8, $E9, $40, $F9

loc_karate_girl_top_right_frame_8:
- D 0 - I - 0x016EEA 05:8EDA: 05        .byte $05
- D 0 - I - 0x016EEB 05:8EDB: E8        .byte $E8, $C6, $00, $FD
- D 0 - I - 0x016EEF 05:8EDF: F0        .byte $F0, $C8, $00, $FD
- D 0 - I - 0x016EF3 05:8EE3: F0        .byte $F0, $AB, $00, $05
- D 0 - I - 0x016EF7 05:8EE7: F8        .byte $F8, $E8, $00, $F7
- D 0 - I - 0x016EFB 05:8EEB: F8        .byte $F8, $E9, $00, $FF

loc_karate_girl_top_left_frame_8:
- D 0 - I - 0x016EFF 05:8EEF: 05        .byte $05
- D 0 - I - 0x016F00 05:8EF0: E8        .byte $E8, $C6, $40, $FB
- D 0 - I - 0x016F04 05:8EF4: F0        .byte $F0, $C8, $40, $FB
- D 0 - I - 0x016F08 05:8EF8: F0        .byte $F0, $AB, $40, $F5
- D 0 - I - 0x016F0C 05:8EFC: F8        .byte $F8, $E8, $40, $01
- D 0 - I - 0x016F10 05:8F00: F8        .byte $F8, $E9, $40, $F9

loc_karate_girl_top_right_frame_9:
- D 0 - I - 0x016F14 05:8F04: 06        .byte $06
- D 0 - I - 0x016F15 05:8F05: F0        .byte $F0, $EA, $00, $FD
- D 0 - I - 0x016F19 05:8F09: F0        .byte $F0, $EC, $00, $05
- D 0 - I - 0x016F1D 05:8F0D: F0        .byte $F0, $C9, $00, $0D
- D 0 - I - 0x016F21 05:8F11: F8        .byte $F8, $E8, $00, $F7
- D 0 - I - 0x016F25 05:8F15: F8        .byte $F8, $EB, $00, $FF
- D 0 - I - 0x016F29 05:8F19: F8        .byte $F8, $CB, $00, $07

loc_karate_girl_top_left_frame_9:
- D 0 - I - 0x016F2D 05:8F1D: 06        .byte $06
- D 0 - I - 0x016F2E 05:8F1E: F0        .byte $F0, $EA, $40, $FB
- D 0 - I - 0x016F32 05:8F22: F0        .byte $F0, $EC, $40, $F3
- D 0 - I - 0x016F36 05:8F26: F0        .byte $F0, $C9, $40, $EB
- D 0 - I - 0x016F3A 05:8F2A: F8        .byte $F8, $E8, $40, $01
- D 0 - I - 0x016F3E 05:8F2E: F8        .byte $F8, $EB, $40, $F9
- D 0 - I - 0x016F42 05:8F32: F8        .byte $F8, $CB, $40, $F1

loc_green_boy_right_frame_1:
- D 0 - I - 0x016F46 05:8F36: 03        .byte $03
- D 0 - I - 0x016F47 05:8F37: E0        .byte $E0, $DC, $00, $FD
- D 0 - I - 0x016F4B 05:8F3B: E8        .byte $E8, $DD, $00, $F6
- D 0 - I - 0x016F4F 05:8F3F: E8        .byte $E8, $DF, $00, $FE

loc_green_boy_left_frame_1:
- D 0 - I - 0x016F53 05:8F43: 03        .byte $03
- D 0 - I - 0x016F54 05:8F44: E0        .byte $E0, $DC, $40, $FB
- D 0 - I - 0x016F58 05:8F48: E8        .byte $E8, $DD, $40, $02
- D 0 - I - 0x016F5C 05:8F4C: E8        .byte $E8, $DF, $40, $FA

loc_green_boy_right_frame_2:
- D 0 - I - 0x016F60 05:8F50: 03        .byte $03
- D 0 - I - 0x016F61 05:8F51: E0        .byte $E0, $DC, $00, $FD
- D 0 - I - 0x016F65 05:8F55: E8        .byte $E8, $D0, $00, $F7
- D 0 - I - 0x016F69 05:8F59: E8        .byte $E8, $D2, $00, $FF

loc_green_boy_left_frame_2:
- D 0 - I - 0x016F6D 05:8F5D: 03        .byte $03
- D 0 - I - 0x016F6E 05:8F5E: E0        .byte $E0, $DC, $40, $FB
- D 0 - I - 0x016F72 05:8F62: E8        .byte $E8, $D0, $40, $01
- D 0 - I - 0x016F76 05:8F66: E8        .byte $E8, $D2, $40, $F9

loc_green_boy_right_frame_3:
- D 0 - I - 0x016F7A 05:8F6A: 02        .byte $02
- D 0 - I - 0x016F7B 05:8F6B: E0        .byte $E0, $DC, $00, $FD
- D 0 - I - 0x016F7F 05:8F6F: E8        .byte $E8, $DE, $00, $FC

loc_green_boy_left_frame_3:
- D 0 - I - 0x016F83 05:8F73: 02        .byte $02
- D 0 - I - 0x016F84 05:8F74: E0        .byte $E0, $DC, $40, $FB
- D 0 - I - 0x016F88 05:8F78: E8        .byte $E8, $DE, $40, $FC

loc_green_boy_right_frame_4:
- D 0 - I - 0x016F8C 05:8F7C: 01        .byte $01
- D 0 - I - 0x016F8D 05:8F7D: F0        .byte $F0, $DC, $00, $F6

loc_green_boy_left_frame_4:
- D 0 - I - 0x016F91 05:8F81: 01        .byte $01
- D 0 - I - 0x016F92 05:8F82: F0        .byte $F0, $DC, $40, $02

loc_green_boy_right_frame_5:
- D 0 - I - 0x016F96 05:8F86: 01        .byte $01
- D 0 - I - 0x016F97 05:8F87: FA        .byte $FA, $EC, $00, $F4

loc_green_boy_left_frame_5:
- D 0 - I - 0x016F9B 05:8F8B: 01        .byte $01
- D 0 - I - 0x016F9C 05:8F8C: FA        .byte $FA, $EC, $40, $04

loc_green_boy_right_frame_6:
- D 0 - I - 0x016FA0 05:8F90: 02        .byte $02
- D 0 - I - 0x016FA1 05:8F91: E8        .byte $E8, $DC, $00, $FD
- D 0 - I - 0x016FA5 05:8F95: F0        .byte $F0, $DF, $00, $FD

loc_green_boy_left_frame_6:
- D 0 - I - 0x016FA9 05:8F99: 02        .byte $02
- D 0 - I - 0x016FAA 05:8F9A: E8        .byte $E8, $DC, $40, $FB
- D 0 - I - 0x016FAE 05:8F9E: F0        .byte $F0, $DF, $40, $FB

loc_green_boy_right_frame_7:
- D 0 - I - 0x016FB2 05:8FA2: 03        .byte $03
- D 0 - I - 0x016FB3 05:8FA3: E0        .byte $E0, $DC, $00, $FC
- D 0 - I - 0x016FB7 05:8FA7: E8        .byte $E8, $D1, $00, $F8
- D 0 - I - 0x016FBB 05:8FAB: E8        .byte $E8, $D3, $00, $00

loc_green_boy_left_frame_7:
- D 0 - I - 0x016FBF 05:8FAF: 03        .byte $03
- D 0 - I - 0x016FC0 05:8FB0: E0        .byte $E0, $DC, $40, $FC
- D 0 - I - 0x016FC4 05:8FB4: E8        .byte $E8, $D1, $40, $00
- D 0 - I - 0x016FC8 05:8FB8: E8        .byte $E8, $D3, $40, $F8

loc_green_boy_right_frame_8:
- D 0 - I - 0x016FCC 05:8FBC: 04        .byte $04
- D 0 - I - 0x016FCD 05:8FBD: E0        .byte $E0, $DC, $00, $FC
- D 0 - I - 0x016FD1 05:8FC1: E8        .byte $E8, $D5, $00, $F8
- D 0 - I - 0x016FD5 05:8FC5: E8        .byte $E8, $D7, $00, $00
- D 0 - I - 0x016FD9 05:8FC9: E8        .byte $E8, $D9, $00, $08

loc_green_boy_left_frame_8:
- D 0 - I - 0x016FDD 05:8FCD: 04        .byte $04
- D 0 - I - 0x016FDE 05:8FCE: E0        .byte $E0, $DC, $40, $FC
- D 0 - I - 0x016FE2 05:8FD2: E8        .byte $E8, $D5, $40, $00
- D 0 - I - 0x016FE6 05:8FD6: E8        .byte $E8, $D7, $40, $F8
- D 0 - I - 0x016FEA 05:8FDA: E8        .byte $E8, $D9, $40, $F0

loc_green_boy_right_frame_9:
- D 0 - I - 0x016FEE 05:8FDE: 05        .byte $05
- D 0 - I - 0x016FEF 05:8FDF: E0        .byte $E0, $DC, $00, $FC
- D 0 - I - 0x016FF3 05:8FE3: E0        .byte $E0, $D8, $00, $08
- D 0 - I - 0x016FF7 05:8FE7: E0        .byte $E0, $DA, $00, $10
- D 0 - I - 0x016FFB 05:8FEB: E8        .byte $E8, $D4, $00, $F8
- D 0 - I - 0x016FFF 05:8FEF: E8        .byte $E8, $D6, $00, $00

loc_green_boy_left_frame_9:
- D 0 - I - 0x017003 05:8FF3: 05        .byte $05
- D 0 - I - 0x017004 05:8FF4: E0        .byte $E0, $DC, $40, $FC
- D 0 - I - 0x017008 05:8FF8: E0        .byte $E0, $D8, $40, $F0
- D 0 - I - 0x01700C 05:8FFC: E0        .byte $E0, $DA, $40, $E8
- D 0 - I - 0x017010 05:9000: E8        .byte $E8, $D4, $40, $00
- D 0 - I - 0x017014 05:9004: E8        .byte $E8, $D6, $40, $F8

loc_green_boy_right_frame_10:
- D 0 - I - 0x017018 05:9008: 04        .byte $04
- D 0 - I - 0x017019 05:9009: E0        .byte $E0, $DC, $00, $FC
- D 0 - I - 0x01701D 05:900D: E0        .byte $E0, $DB, $00, $07
- D 0 - I - 0x017021 05:9011: E8        .byte $E8, $D4, $00, $F8
- D 0 - I - 0x017025 05:9015: E8        .byte $E8, $D6, $00, $00

loc_green_boy_left_frame_10:
- D 0 - I - 0x017029 05:9019: 04        .byte $04
- D 0 - I - 0x01702A 05:901A: E0        .byte $E0, $DC, $40, $FC
- D 0 - I - 0x01702E 05:901E: E0        .byte $E0, $DB, $40, $F1
- D 0 - I - 0x017032 05:9022: E8        .byte $E8, $D4, $40, $00
- D 0 - I - 0x017036 05:9026: E8        .byte $E8, $D6, $40, $F8

loc_knight_right_frame_1:
- D 0 - I - 0x01703A 05:902A: 08        .byte $08
- D 0 - I - 0x01703B 05:902B: E1        .byte $E1, $88, $00, $FC
- D 0 - I - 0x01703F 05:902F: E1        .byte $E1, $8A, $00, $04
- D 0 - I - 0x017043 05:9033: E9        .byte $E9, $89, $00, $FC
- D 0 - I - 0x017047 05:9037: E9        .byte $E9, $8B, $00, $04
- D 0 - I - 0x01704B 05:903B: F0        .byte $F0, $8C, $00, $F8
- D 0 - I - 0x01704F 05:903F: F0        .byte $F0, $8E, $00, $00
- D 0 - I - 0x017053 05:9043: F8        .byte $F8, $8D, $00, $F8
- D 0 - I - 0x017057 05:9047: F8        .byte $F8, $8F, $00, $02

loc_knight_left_frame_1:
- D 0 - I - 0x01705B 05:904B: 08        .byte $08
- D 0 - I - 0x01705C 05:904C: E1        .byte $E1, $88, $40, $FC
- D 0 - I - 0x017060 05:9050: E1        .byte $E1, $8A, $40, $F4
- D 0 - I - 0x017064 05:9054: E9        .byte $E9, $89, $40, $FC
- D 0 - I - 0x017068 05:9058: E9        .byte $E9, $8B, $40, $F4
- D 0 - I - 0x01706C 05:905C: F0        .byte $F0, $8C, $40, $00
- D 0 - I - 0x017070 05:9060: F0        .byte $F0, $8E, $40, $F8
- D 0 - I - 0x017074 05:9064: F8        .byte $F8, $8D, $40, $00
- D 0 - I - 0x017078 05:9068: F8        .byte $F8, $8F, $40, $F6

loc_knight_right_frame_3:
- D 0 - I - 0x01707C 05:906C: 06        .byte $06
- D 0 - I - 0x01707D 05:906D: E1        .byte $E1, $88, $00, $FC
- D 0 - I - 0x017081 05:9071: E1        .byte $E1, $8A, $00, $04
- D 0 - I - 0x017085 05:9075: E9        .byte $E9, $89, $00, $FC
- D 0 - I - 0x017089 05:9079: E9        .byte $E9, $8B, $00, $04
- D 0 - I - 0x01708D 05:907D: F0        .byte $F0, $90, $00, $FC
- D 0 - I - 0x017091 05:9081: F8        .byte $F8, $92, $00, $FB

loc_knight_left_frame_3:
- D 0 - I - 0x017095 05:9085: 06        .byte $06
- D 0 - I - 0x017096 05:9086: E1        .byte $E1, $88, $40, $FC
- D 0 - I - 0x01709A 05:908A: E1        .byte $E1, $8A, $40, $F4
- D 0 - I - 0x01709E 05:908E: E9        .byte $E9, $89, $40, $FC
- D 0 - I - 0x0170A2 05:9092: E9        .byte $E9, $8B, $40, $F4
- D 0 - I - 0x0170A6 05:9096: F0        .byte $F0, $90, $40, $FC
- D 0 - I - 0x0170AA 05:909A: F8        .byte $F8, $92, $40, $FD

loc_knight_right_frame_2:
- D 0 - I - 0x0170AE 05:909E: 07        .byte $07
- D 0 - I - 0x0170AF 05:909F: E0        .byte $E0, $88, $00, $FC
- D 0 - I - 0x0170B3 05:90A3: E0        .byte $E0, $8A, $00, $04
- D 0 - I - 0x0170B7 05:90A7: E8        .byte $E8, $89, $00, $FC
- D 0 - I - 0x0170BB 05:90AB: E8        .byte $E8, $8B, $00, $04
- D 0 - I - 0x0170BF 05:90AF: F0        .byte $F0, $86, $00, $FC
- D 0 - I - 0x0170C3 05:90B3: F8        .byte $F8, $87, $00, $F8
- D 0 - I - 0x0170C7 05:90B7: F8        .byte $F8, $8F, $00, $00

loc_knight_left_frame_2:
- D 0 - I - 0x0170CB 05:90BB: 07        .byte $07
- D 0 - I - 0x0170CC 05:90BC: E0        .byte $E0, $88, $40, $FC
- D 0 - I - 0x0170D0 05:90C0: E0        .byte $E0, $8A, $40, $F4
- D 0 - I - 0x0170D4 05:90C4: E8        .byte $E8, $89, $40, $FC
- D 0 - I - 0x0170D8 05:90C8: E8        .byte $E8, $8B, $40, $F4
- D 0 - I - 0x0170DC 05:90CC: F0        .byte $F0, $86, $40, $FC
- D 0 - I - 0x0170E0 05:90D0: F8        .byte $F8, $87, $40, $00
- D 0 - I - 0x0170E4 05:90D4: F8        .byte $F8, $8F, $40, $F8

loc_knight_right_frame_4:
- D 0 - I - 0x0170E8 05:90D8: 06        .byte $06
- D 0 - I - 0x0170E9 05:90D9: EC        .byte $EC, $88, $00, $FC
- D 0 - I - 0x0170ED 05:90DD: EC        .byte $EC, $8A, $00, $04
- D 0 - I - 0x0170F1 05:90E1: F4        .byte $F4, $89, $00, $FC
- D 0 - I - 0x0170F5 05:90E5: F4        .byte $F4, $8B, $00, $04
- D 0 - I - 0x0170F9 05:90E9: FC        .byte $FC, $95, $00, $FD
- D 0 - I - 0x0170FD 05:90ED: FB        .byte $FB, $96, $00, $05

loc_knight_left_frame_4:
- D 0 - I - 0x017101 05:90F1: 06        .byte $06
- D 0 - I - 0x017102 05:90F2: EC        .byte $EC, $88, $40, $FC
- D 0 - I - 0x017106 05:90F6: EC        .byte $EC, $8A, $40, $F4
- D 0 - I - 0x01710A 05:90FA: F4        .byte $F4, $89, $40, $FC
- D 0 - I - 0x01710E 05:90FE: F4        .byte $F4, $8B, $40, $F4
- D 0 - I - 0x017112 05:9102: FC        .byte $FC, $95, $40, $FB
- D 0 - I - 0x017116 05:9106: FB        .byte $FB, $96, $40, $F3

loc_knight_right_frame_5:
- D 0 - I - 0x01711A 05:910A: 04        .byte $04
- D 0 - I - 0x01711B 05:910B: F0        .byte $F0, $92, $C0, $00
- D 0 - I - 0x01711F 05:910F: F9        .byte $F9, $91, $00, $F0
- D 0 - I - 0x017123 05:9113: F9        .byte $F9, $93, $00, $F8
- D 0 - I - 0x017127 05:9117: F8        .byte $F8, $94, $00, $00

loc_knight_left_frame_5:
- D 0 - I - 0x01712B 05:911B: 04        .byte $04
- D 0 - I - 0x01712C 05:911C: F0        .byte $F0, $92, $80, $F8
- D 0 - I - 0x017130 05:9120: F9        .byte $F9, $91, $40, $08
- D 0 - I - 0x017134 05:9124: F9        .byte $F9, $93, $40, $00
- D 0 - I - 0x017138 05:9128: F8        .byte $F8, $94, $40, $F8

loc_knight_right_frame_6:
- D 0 - I - 0x01713C 05:912C: 06        .byte $06
- D 0 - I - 0x01713D 05:912D: E8        .byte $E8, $88, $00, $FC
- D 0 - I - 0x017141 05:9131: E8        .byte $E8, $8A, $00, $04
- D 0 - I - 0x017145 05:9135: F0        .byte $F0, $89, $00, $FC
- D 0 - I - 0x017149 05:9139: F0        .byte $F0, $8B, $00, $04
- D 0 - I - 0x01714D 05:913D: F8        .byte $F8, $B8, $00, $F8
- D 0 - I - 0x017151 05:9141: F8        .byte $F8, $B9, $00, $00

loc_knight_left_frame_6:
- D 0 - I - 0x017155 05:9145: 06        .byte $06
- D 0 - I - 0x017156 05:9146: E8        .byte $E8, $88, $40, $FC
- D 0 - I - 0x01715A 05:914A: E8        .byte $E8, $8A, $40, $F4
- D 0 - I - 0x01715E 05:914E: F0        .byte $F0, $89, $40, $FC
- D 0 - I - 0x017162 05:9152: F0        .byte $F0, $8B, $40, $F4
- D 0 - I - 0x017166 05:9156: F8        .byte $F8, $B8, $40, $00
- D 0 - I - 0x01716A 05:915A: F8        .byte $F8, $B9, $40, $F8

loc_knight_right_frame_7:
- D - - - - 0x01716E 05:915E: 07        .byte $07
- D - - - - 0x01716F 05:915F: E0        .byte $E0, $88, $00, $FC
- D - - - - 0x017173 05:9163: E8        .byte $E8, $97, $00, $FC
- D - - - - 0x017177 05:9167: E9        .byte $E9, $99, $00, $04
- D - - - - 0x01717B 05:916B: F0        .byte $F0, $98, $00, $FD
- D - - - - 0x01717F 05:916F: F1        .byte $F1, $9A, $00, $08
- D - - - - 0x017183 05:9173: F8        .byte $F8, $9B, $00, $F8
- D - - - - 0x017187 05:9177: F8        .byte $F8, $8F, $00, $02

loc_knight_left_frame_7:
- D 0 - I - 0x01718B 05:917B: 07        .byte $07
- D 0 - I - 0x01718C 05:917C: E0        .byte $E0, $88, $40, $FC
- D 0 - I - 0x017190 05:9180: E8        .byte $E8, $97, $40, $FC
- D 0 - I - 0x017194 05:9184: E9        .byte $E9, $99, $40, $F4
- D 0 - I - 0x017198 05:9188: F0        .byte $F0, $98, $40, $FB
- D 0 - I - 0x01719C 05:918C: F1        .byte $F1, $9A, $40, $F0
- D 0 - I - 0x0171A0 05:9190: F8        .byte $F8, $9B, $40, $00
- D 0 - I - 0x0171A4 05:9194: F8        .byte $F8, $8F, $40, $F6

loc_knight_right_frame_8:
- D - - - - 0x0171A8 05:9198: 07        .byte $07
- D - - - - 0x0171A9 05:9199: E0        .byte $E0, $88, $00, $FC
- D - - - - 0x0171AD 05:919D: E0        .byte $E0, $9A, $80, $08
- D - - - - 0x0171B1 05:91A1: E8        .byte $E8, $97, $00, $FC
- D - - - - 0x0171B5 05:91A5: E8        .byte $E8, $99, $80, $04
- D - - - - 0x0171B9 05:91A9: F0        .byte $F0, $98, $00, $FD
- D - - - - 0x0171BD 05:91AD: F8        .byte $F8, $9B, $00, $F8
- D - - - - 0x0171C1 05:91B1: F8        .byte $F8, $8F, $00, $02

loc_knight_left_frame_8:
- D 0 - I - 0x0171C5 05:91B5: 07        .byte $07
- D 0 - I - 0x0171C6 05:91B6: E0        .byte $E0, $88, $40, $FC
- D 0 - I - 0x0171CA 05:91BA: E0        .byte $E0, $9A, $C0, $F0
- D 0 - I - 0x0171CE 05:91BE: E8        .byte $E8, $97, $40, $FC
- D 0 - I - 0x0171D2 05:91C2: E8        .byte $E8, $99, $C0, $F4
- D 0 - I - 0x0171D6 05:91C6: F0        .byte $F0, $98, $40, $FB
- D 0 - I - 0x0171DA 05:91CA: F8        .byte $F8, $9B, $40, $00
- D 0 - I - 0x0171DE 05:91CE: F8        .byte $F8, $8F, $40, $F6

loc_knight_hiding_frame_:
- D 0 - I - 0x0171E2 05:91D2: 07        .byte $07
- D 0 - I - 0x0171E3 05:91D3: E0        .byte $E0, $85, $00, $FC
- D 0 - I - 0x0171E7 05:91D7: E8        .byte $E8, $80, $00, $F8
- D 0 - I - 0x0171EB 05:91DB: E8        .byte $E8, $82, $00, $00
- D 0 - I - 0x0171EF 05:91DF: F0        .byte $F0, $81, $00, $F8
- D 0 - I - 0x0171F3 05:91E3: F0        .byte $F0, $83, $00, $00
- D 0 - I - 0x0171F7 05:91E7: F8        .byte $F8, $84, $00, $F8
- D 0 - I - 0x0171FB 05:91EB: F8        .byte $F8, $84, $40, $00

loc_girl_in_red_right_frame_1:
- D 0 - I - 0x0171FF 05:91EF: 05        .byte $05
- D 0 - I - 0x017200 05:91F0: E1        .byte $E1, $9D, $00, $FC
- D 0 - I - 0x017204 05:91F4: E9        .byte $E9, $9E, $00, $FC
- D 0 - I - 0x017208 05:91F8: F0        .byte $F0, $9F, $00, $FC
- D 0 - I - 0x01720C 05:91FC: F8        .byte $F8, $A0, $00, $F8
- D 0 - I - 0x017210 05:9200: F8        .byte $F8, $8F, $00, $00

loc_girl_in_red_left_frame_1:
- D 0 - I - 0x017214 05:9204: 05        .byte $05
- D 0 - I - 0x017215 05:9205: E1        .byte $E1, $9D, $40, $FC
- D 0 - I - 0x017219 05:9209: E9        .byte $E9, $9E, $40, $FC
- D 0 - I - 0x01721D 05:920D: F0        .byte $F0, $9F, $40, $FC
- D 0 - I - 0x017221 05:9211: F8        .byte $F8, $A0, $40, $00
- D 0 - I - 0x017225 05:9215: F8        .byte $F8, $8F, $40, $F8

loc_girl_in_red_right_frame_2:
- D 0 - I - 0x017229 05:9219: 04        .byte $04
- D 0 - I - 0x01722A 05:921A: E0        .byte $E0, $9D, $00, $FC
- D 0 - I - 0x01722E 05:921E: E8        .byte $E8, $A1, $00, $FC
- D 0 - I - 0x017232 05:9222: F0        .byte $F0, $90, $00, $FC
- D 0 - I - 0x017236 05:9226: F8        .byte $F8, $A2, $00, $FB

loc_girl_in_red_left_frame_2:
- D 0 - I - 0x01723A 05:922A: 04        .byte $04
- D 0 - I - 0x01723B 05:922B: E0        .byte $E0, $9D, $40, $FC
- D 0 - I - 0x01723F 05:922F: E8        .byte $E8, $A1, $40, $FC
- D 0 - I - 0x017243 05:9233: F0        .byte $F0, $90, $40, $FC
- D 0 - I - 0x017247 05:9237: F8        .byte $F8, $A2, $40, $FD

loc_girl_in_red_right_frame_3:
- D 0 - I - 0x01724B 05:923B: 06        .byte $06
- D 0 - I - 0x01724C 05:923C: E1        .byte $E1, $9D, $00, $FC
- D 0 - I - 0x017250 05:9240: E9        .byte $E9, $A3, $00, $FC
- D 0 - I - 0x017254 05:9244: F0        .byte $F0, $A4, $00, $F8
- D 0 - I - 0x017258 05:9248: F0        .byte $F0, $A6, $00, $00
- D 0 - I - 0x01725C 05:924C: F8        .byte $F8, $A5, $00, $F7
- D 0 - I - 0x017260 05:9250: F8        .byte $F8, $8F, $00, $02

loc_girl_in_red_left_frame_3:
- D 0 - I - 0x017264 05:9254: 06        .byte $06
- D 0 - I - 0x017265 05:9255: E1        .byte $E1, $9D, $40, $FC
- D 0 - I - 0x017269 05:9259: E9        .byte $E9, $A3, $40, $FC
- D 0 - I - 0x01726D 05:925D: F0        .byte $F0, $A4, $40, $00
- D 0 - I - 0x017271 05:9261: F0        .byte $F0, $A6, $40, $F8
- D 0 - I - 0x017275 05:9265: F8        .byte $F8, $A5, $40, $01
- D 0 - I - 0x017279 05:9269: F8        .byte $F8, $8F, $40, $F6

loc_girl_in_red_right_frame_4:
- D 0 - I - 0x01727D 05:926D: 04        .byte $04
- D 0 - I - 0x01727E 05:926E: EC        .byte $EC, $9D, $00, $FC
- D 0 - I - 0x017282 05:9272: F4        .byte $F4, $9E, $00, $FC
- D 0 - I - 0x017286 05:9276: FC        .byte $FC, $95, $00, $FD
- D 0 - I - 0x01728A 05:927A: FC        .byte $FC, $96, $00, $05

loc_girl_in_red_left_frame_4:
- D 0 - I - 0x01728E 05:927E: 04        .byte $04
- D 0 - I - 0x01728F 05:927F: EC        .byte $EC, $9D, $40, $FC
- D 0 - I - 0x017293 05:9283: F4        .byte $F4, $9E, $40, $FC
- D 0 - I - 0x017297 05:9287: FC        .byte $FC, $95, $40, $FB
- D 0 - I - 0x01729B 05:928B: FC        .byte $FC, $96, $40, $F3

loc_girl_in_red_right_frame_5:
- D 0 - I - 0x01729F 05:928F: 04        .byte $04
- D 0 - I - 0x0172A0 05:9290: F0        .byte $F0, $92, $C0, $00
- D 0 - I - 0x0172A4 05:9294: F9        .byte $F9, $A7, $00, $F0
- D 0 - I - 0x0172A8 05:9298: F9        .byte $F9, $A8, $00, $F8
- D 0 - I - 0x0172AC 05:929C: F8        .byte $F8, $94, $00, $00

loc_girl_in_red_left_frame_5:
- D 0 - I - 0x0172B0 05:92A0: 04        .byte $04
- D 0 - I - 0x0172B1 05:92A1: F0        .byte $F0, $92, $80, $F8
- D 0 - I - 0x0172B5 05:92A5: F9        .byte $F9, $A7, $40, $08
- D 0 - I - 0x0172B9 05:92A9: F9        .byte $F9, $A8, $40, $00
- D 0 - I - 0x0172BD 05:92AD: F8        .byte $F8, $94, $40, $F8

loc_girl_in_red_right_frame_6:
- D 0 - I - 0x0172C1 05:92B1: 04        .byte $04
- D 0 - I - 0x0172C2 05:92B2: E8        .byte $E8, $9D, $00, $FC
- D 0 - I - 0x0172C6 05:92B6: F0        .byte $F0, $9E, $00, $FC
- D 0 - I - 0x0172CA 05:92BA: F8        .byte $F8, $BE, $00, $F8
- D 0 - I - 0x0172CE 05:92BE: F8        .byte $F8, $BF, $00, $00

loc_girl_in_red_left_frame_6:
- D 0 - I - 0x0172D2 05:92C2: 04        .byte $04
- D 0 - I - 0x0172D3 05:92C3: E8        .byte $E8, $9D, $40, $FC
- D 0 - I - 0x0172D7 05:92C7: F0        .byte $F0, $9E, $40, $FC
- D 0 - I - 0x0172DB 05:92CB: F8        .byte $F8, $BE, $40, $00
- D 0 - I - 0x0172DF 05:92CF: F8        .byte $F8, $BF, $40, $F8

loc_girl_in_red_right_frame_7:
- D 0 - I - 0x0172E3 05:92D3: 06        .byte $06
- D 0 - I - 0x0172E4 05:92D4: E1        .byte $E1, $9D, $00, $FC
- D 0 - I - 0x0172E8 05:92D8: E9        .byte $E9, $9E, $00, $FC
- D 0 - I - 0x0172EC 05:92DC: F0        .byte $F0, $A4, $00, $F8
- D 0 - I - 0x0172F0 05:92E0: F0        .byte $F0, $A6, $00, $00
- D 0 - I - 0x0172F4 05:92E4: F8        .byte $F8, $AB, $00, $F8
- D 0 - I - 0x0172F8 05:92E8: F8        .byte $F8, $8F, $00, $02

loc_girl_in_red_left_frame_7:
- D 0 - I - 0x0172FC 05:92EC: 06        .byte $06
- D 0 - I - 0x0172FD 05:92ED: E1        .byte $E1, $9D, $40, $FC
- D 0 - I - 0x017301 05:92F1: E9        .byte $E9, $9E, $40, $FC
- D 0 - I - 0x017305 05:92F5: F0        .byte $F0, $A4, $40, $00
- D 0 - I - 0x017309 05:92F9: F0        .byte $F0, $A6, $40, $F8
- D 0 - I - 0x01730D 05:92FD: F8        .byte $F8, $AB, $40, $00
- D 0 - I - 0x017311 05:9301: F8        .byte $F8, $8F, $40, $F6

loc_girl_in_red_right_frame_8:
- D 0 - I - 0x017315 05:9305: 08        .byte $08
- D 0 - I - 0x017316 05:9306: E1        .byte $E1, $9D, $00, $FC
- D 0 - I - 0x01731A 05:930A: E9        .byte $E9, $BB, $00, $FB
- D 0 - I - 0x01731E 05:930E: E9        .byte $E9, $BC, $00, $03
- D 0 - I - 0x017322 05:9312: E9        .byte $E9, $BD, $00, $0B
- D 0 - I - 0x017326 05:9316: F0        .byte $F0, $A4, $00, $F8
- D 0 - I - 0x01732A 05:931A: F0        .byte $F0, $A6, $00, $00
- D 0 - I - 0x01732E 05:931E: F8        .byte $F8, $AB, $00, $F8
- D 0 - I - 0x017332 05:9322: F8        .byte $F8, $8F, $00, $02

loc_girl_in_red_left_frame_8:
- D 0 - I - 0x017336 05:9326: 08        .byte $08
- D 0 - I - 0x017337 05:9327: E1        .byte $E1, $9D, $40, $FC
- D 0 - I - 0x01733B 05:932B: E9        .byte $E9, $BB, $40, $FD
- D 0 - I - 0x01733F 05:932F: E9        .byte $E9, $BC, $40, $F5
- D 0 - I - 0x017343 05:9333: E9        .byte $E9, $BD, $40, $ED
- D 0 - I - 0x017347 05:9337: F0        .byte $F0, $A4, $40, $00
- D 0 - I - 0x01734B 05:933B: F0        .byte $F0, $A6, $40, $F8
- D 0 - I - 0x01734F 05:933F: F8        .byte $F8, $AB, $40, $00
- D 0 - I - 0x017353 05:9343: F8        .byte $F8, $8F, $40, $F6

loc_girl_in_red_sword_right_frame_1:
- D 0 - I - 0x017357 05:9347: 02        .byte $02
- D 0 - I - 0x017358 05:9348: EB        .byte $EB, $A9, $00, $04
- D 0 - I - 0x01735C 05:934C: ED        .byte $ED, $AA, $00, $0C

loc_girl_in_red_sword_left_frame_1:
- D 0 - I - 0x017360 05:9350: 02        .byte $02
- D 0 - I - 0x017361 05:9351: EB        .byte $EB, $A9, $40, $F4
- D 0 - I - 0x017365 05:9355: ED        .byte $ED, $AA, $40, $EC

loc_girl_in_red_sword_right_frame_2:
- D 0 - I - 0x017369 05:9359: 02        .byte $02
- D 0 - I - 0x01736A 05:935A: E8        .byte $E8, $A9, $80, $04
- D 0 - I - 0x01736E 05:935E: E6        .byte $E6, $AA, $80, $0C

loc_girl_in_red_sword_left_frame_2:
- D 0 - I - 0x017372 05:9362: 02        .byte $02
- D 0 - I - 0x017373 05:9363: E8        .byte $E8, $A9, $C0, $F4
- D 0 - I - 0x017377 05:9367: E6        .byte $E6, $AA, $C0, $EC

loc_cat_right_frame_1:
- D 0 - I - 0x01737B 05:936B: 04        .byte $04
- D 0 - I - 0x01737C 05:936C: F1        .byte $F1, $B1, $00, $F9
- D 0 - I - 0x017380 05:9370: F8        .byte $F8, $B2, $00, $F1
- D 0 - I - 0x017384 05:9374: F9        .byte $F9, $B3, $00, $F9
- D 0 - I - 0x017388 05:9378: F6        .byte $F6, $B4, $00, $01

loc_cat_left_frame_1:
- D 0 - I - 0x01738C 05:937C: 04        .byte $04
- D 0 - I - 0x01738D 05:937D: F1        .byte $F1, $B1, $40, $FF
- D 0 - I - 0x017391 05:9381: F8        .byte $F8, $B2, $40, $07
- D 0 - I - 0x017395 05:9385: F9        .byte $F9, $B3, $40, $FF
- D 0 - I - 0x017399 05:9389: F6        .byte $F6, $B4, $40, $F7

loc_cat_right_frame_2:
- D 0 - I - 0x01739D 05:938D: 03        .byte $03
- D 0 - I - 0x01739E 05:938E: F1        .byte $F1, $B2, $00, $F0
- D 0 - I - 0x0173A2 05:9392: F1        .byte $F1, $B5, $00, $F8
- D 0 - I - 0x0173A6 05:9396: F0        .byte $F0, $B6, $00, $00

loc_cat_left_frame_2:
- D 0 - I - 0x0173AA 05:939A: 03        .byte $03
- D 0 - I - 0x0173AB 05:939B: F1        .byte $F1, $B2, $40, $08
- D 0 - I - 0x0173AF 05:939F: F1        .byte $F1, $B5, $40, $00
- D 0 - I - 0x0173B3 05:93A3: F0        .byte $F0, $B6, $40, $F8

loc_cat_right_frame_3:
- D 0 - I - 0x0173B7 05:93A7: 04        .byte $04
- D 0 - I - 0x0173B8 05:93A8: F0        .byte $F0, $B1, $00, $F9
- D 0 - I - 0x0173BC 05:93AC: F7        .byte $F7, $B2, $00, $EF
- D 0 - I - 0x0173C0 05:93B0: F8        .byte $F8, $B7, $00, $F7
- D 0 - I - 0x0173C4 05:93B4: F8        .byte $F8, $B8, $00, $FF

loc_cat_left_frame_3:
- D 0 - I - 0x0173C8 05:93B8: 04        .byte $04
- D 0 - I - 0x0173C9 05:93B9: F0        .byte $F0, $B1, $40, $FF
- D 0 - I - 0x0173CD 05:93BD: F7        .byte $F7, $B2, $40, $09
- D 0 - I - 0x0173D1 05:93C1: F8        .byte $F8, $B7, $40, $01
- D 0 - I - 0x0173D5 05:93C5: F8        .byte $F8, $B8, $40, $F9

loc_cat_right_frame_4:
- D 0 - I - 0x0173D9 05:93C9: 03        .byte $03
- D 0 - I - 0x0173DA 05:93CA: F1        .byte $F1, $B1, $00, $FB
- D 0 - I - 0x0173DE 05:93CE: F9        .byte $F9, $B9, $00, $F8
- D 0 - I - 0x0173E2 05:93D2: F9        .byte $F9, $B0, $00, $00

loc_cat_left_frame_4:
- D 0 - I - 0x0173E6 05:93D6: 03        .byte $03
- D 0 - I - 0x0173E7 05:93D7: F1        .byte $F1, $B1, $40, $FD
- D 0 - I - 0x0173EB 05:93DB: F9        .byte $F9, $B9, $40, $00
- D 0 - I - 0x0173EF 05:93DF: F9        .byte $F9, $B0, $40, $F8

loc_cat_right_frame_5:
- D 0 - I - 0x0173F3 05:93E3: 03        .byte $03
- D 0 - I - 0x0173F4 05:93E4: F1        .byte $F1, $B1, $00, $FB
- D 0 - I - 0x0173F8 05:93E8: F9        .byte $F9, $B9, $00, $F8
- D 0 - I - 0x0173FC 05:93EC: F9        .byte $F9, $BA, $00, $00

loc_cat_left_frame_5:
- D 0 - I - 0x017400 05:93F0: 03        .byte $03
- D 0 - I - 0x017401 05:93F1: F1        .byte $F1, $B1, $40, $FD
- D 0 - I - 0x017405 05:93F5: F9        .byte $F9, $B9, $40, $00
- D 0 - I - 0x017409 05:93F9: F9        .byte $F9, $BA, $40, $F8

loc_fly_man_right_frame_1:
- D 0 - I - 0x01740D 05:93FD: 08        .byte $08
- D 0 - I - 0x01740E 05:93FE: E4        .byte $E4, $C0, $42, $FE
- D 0 - I - 0x017412 05:9402: EA        .byte $EA, $CA, $40, $F7
- D 0 - I - 0x017416 05:9406: EC        .byte $EC, $C1, $42, $FF
- D 0 - I - 0x01741A 05:940A: EC        .byte $EC, $CB, $42, $F7
- D 0 - I - 0x01741E 05:940E: F4        .byte $F4, $C3, $42, $08
- D 0 - I - 0x017422 05:9412: F4        .byte $F4, $C4, $42, $00
- D 0 - I - 0x017426 05:9416: F4        .byte $F4, $CC, $42, $F7
- D 0 - I - 0x01742A 05:941A: F7        .byte $F7, $CD, $42, $EF

loc_fly_man_left_frame_1:
- D 0 - I - 0x01742E 05:941E: 08        .byte $08
- D 0 - I - 0x01742F 05:941F: E4        .byte $E4, $C0, $02, $FA
- D 0 - I - 0x017433 05:9423: EA        .byte $EA, $CA, $00, $01
- D 0 - I - 0x017437 05:9427: EC        .byte $EC, $C1, $02, $F9
- D 0 - I - 0x01743B 05:942B: EC        .byte $EC, $CB, $02, $01
- D 0 - I - 0x01743F 05:942F: F4        .byte $F4, $C3, $02, $F0
- D 0 - I - 0x017443 05:9433: F4        .byte $F4, $C4, $02, $F8
- D 0 - I - 0x017447 05:9437: F4        .byte $F4, $CC, $02, $01
- D 0 - I - 0x01744B 05:943B: F7        .byte $F7, $CD, $02, $09

loc_fly_man_right_frame_2:
- D 0 - I - 0x01744F 05:943F: 07        .byte $07
- D 0 - I - 0x017450 05:9440: E4        .byte $E4, $C0, $42, $FE
- D 0 - I - 0x017454 05:9444: EA        .byte $EA, $CA, $40, $F7
- D 0 - I - 0x017458 05:9448: EC        .byte $EC, $CE, $42, $07
- D 0 - I - 0x01745C 05:944C: EC        .byte $EC, $CF, $42, $FF
- D 0 - I - 0x017460 05:9450: EC        .byte $EC, $CB, $42, $F7
- D 0 - I - 0x017464 05:9454: F4        .byte $F4, $CC, $42, $F7
- D 0 - I - 0x017468 05:9458: F7        .byte $F7, $CD, $42, $EF

loc_fly_man_left_frame_2:
- D 0 - I - 0x01746C 05:945C: 07        .byte $07
- D 0 - I - 0x01746D 05:945D: E4        .byte $E4, $C0, $02, $FA
- D 0 - I - 0x017471 05:9461: EA        .byte $EA, $CA, $00, $01
- D 0 - I - 0x017475 05:9465: EC        .byte $EC, $CE, $02, $F1
- D 0 - I - 0x017479 05:9469: EC        .byte $EC, $CF, $02, $F9
- D 0 - I - 0x01747D 05:946D: EC        .byte $EC, $CB, $02, $01
- D 0 - I - 0x017481 05:9471: F4        .byte $F4, $CC, $02, $01
- D 0 - I - 0x017485 05:9475: F7        .byte $F7, $CD, $02, $09

loc_fly_man_right_frame_3:
- D 0 - I - 0x017489 05:9479: 07        .byte $07
- D 0 - I - 0x01748A 05:947A: E8        .byte $E8, $C0, $42, $FE
- D 0 - I - 0x01748E 05:947E: EE        .byte $EE, $CA, $40, $F7
- D 0 - I - 0x017492 05:9482: F0        .byte $F0, $CE, $42, $07
- D 0 - I - 0x017496 05:9486: F0        .byte $F0, $CF, $42, $FF
- D 0 - I - 0x01749A 05:948A: F0        .byte $F0, $CB, $42, $F7
- D 0 - I - 0x01749E 05:948E: F8        .byte $F8, $C8, $42, $02
- D 0 - I - 0x0174A2 05:9492: F8        .byte $F8, $C9, $42, $FA

loc_fly_man_left_frame_3:
- D 0 - I - 0x0174A6 05:9496: 07        .byte $07
- D 0 - I - 0x0174A7 05:9497: E8        .byte $E8, $C0, $02, $FA
- D 0 - I - 0x0174AB 05:949B: EE        .byte $EE, $CA, $00, $01
- D 0 - I - 0x0174AF 05:949F: F0        .byte $F0, $CE, $02, $F1
- D 0 - I - 0x0174B3 05:94A3: F0        .byte $F0, $CF, $02, $F9
- D 0 - I - 0x0174B7 05:94A7: F0        .byte $F0, $CB, $02, $01
- D 0 - I - 0x0174BB 05:94AB: F8        .byte $F8, $C8, $02, $F6
- D 0 - I - 0x0174BF 05:94AF: F8        .byte $F8, $C9, $02, $FE

- D 0 - I - 0x0174C3 05:94B3: 06        .byte $06   ; 
- D 0 - I - 0x0174C4 05:94B4: E8        .byte $E8   ; 
- D 0 - I - 0x0174C5 05:94B5: C0        .byte $C0   ; 
- D 0 - I - 0x0174C6 05:94B6: 00        .byte $00   ; 
- D 0 - I - 0x0174C7 05:94B7: F8        .byte $F8   ; 
- D 0 - I - 0x0174C8 05:94B8: E8        .byte $E8   ; 
- D 0 - I - 0x0174C9 05:94B9: C2        .byte $C2   ; 
- D 0 - I - 0x0174CA 05:94BA: 00        .byte $00   ; 
- D 0 - I - 0x0174CB 05:94BB: 00        .byte $00   ; 
- D 0 - I - 0x0174CC 05:94BC: F0        .byte $F0   ; 
- D 0 - I - 0x0174CD 05:94BD: C1        .byte $C1   ; 
- D 0 - I - 0x0174CE 05:94BE: 00        .byte $00   ; 
- D 0 - I - 0x0174CF 05:94BF: F8        .byte $F8   ; 
- D 0 - I - 0x0174D0 05:94C0: F0        .byte $F0   ; 
- D 0 - I - 0x0174D1 05:94C1: C3        .byte $C3   ; 
- D 0 - I - 0x0174D2 05:94C2: 00        .byte $00   ; 
- D 0 - I - 0x0174D3 05:94C3: 00        .byte $00   ; 
- D 0 - I - 0x0174D4 05:94C4: F8        .byte $F8   ; 
- D 0 - I - 0x0174D5 05:94C5: C4        .byte $C4   ; 
- D 0 - I - 0x0174D6 05:94C6: 00        .byte $00   ; 
- D 0 - I - 0x0174D7 05:94C7: F8        .byte $F8   ; 
- D 0 - I - 0x0174D8 05:94C8: F8        .byte $F8   ; 
- D 0 - I - 0x0174D9 05:94C9: C6        .byte $C6   ; 
- D 0 - I - 0x0174DA 05:94CA: 00        .byte $00   ; 
- D 0 - I - 0x0174DB 05:94CB: 00        .byte $00   ; 
- D 0 - I - 0x0174DC 05:94CC: 04        .byte $04   ; 
- D 0 - I - 0x0174DD 05:94CD: EE        .byte $EE   ; 
- D 0 - I - 0x0174DE 05:94CE: C5        .byte $C5   ; 
- D 0 - I - 0x0174DF 05:94CF: 00        .byte $00   ; 
- D 0 - I - 0x0174E0 05:94D0: F8        .byte $F8   ; 
- D 0 - I - 0x0174E1 05:94D1: EE        .byte $EE   ; 
- D 0 - I - 0x0174E2 05:94D2: C7        .byte $C7   ; 
- D 0 - I - 0x0174E3 05:94D3: 00        .byte $00   ; 
- D 0 - I - 0x0174E4 05:94D4: 00        .byte $00   ; 
- D 0 - I - 0x0174E5 05:94D5: F6        .byte $F6   ; 
- D 0 - I - 0x0174E6 05:94D6: C9        .byte $C9   ; 
- D 0 - I - 0x0174E7 05:94D7: 00        .byte $00   ; 
- D 0 - I - 0x0174E8 05:94D8: F8        .byte $F8   ; 
- D 0 - I - 0x0174E9 05:94D9: F6        .byte $F6   ; 
- D 0 - I - 0x0174EA 05:94DA: C6        .byte $C6   ; 
- D 0 - I - 0x0174EB 05:94DB: 00        .byte $00   ; 
- D 0 - I - 0x0174EC 05:94DC: 00        .byte $00   ; 
- D 0 - I - 0x0174ED 05:94DD: 04        .byte $04   ; 
- D 0 - I - 0x0174EE 05:94DE: EF        .byte $EF   ; 
- D 0 - I - 0x0174EF 05:94DF: C8        .byte $C8   ; 
- D 0 - I - 0x0174F0 05:94E0: 00        .byte $00   ; 
- D 0 - I - 0x0174F1 05:94E1: F8        .byte $F8   ; 
- D 0 - I - 0x0174F2 05:94E2: EF        .byte $EF   ; 
- D 0 - I - 0x0174F3 05:94E3: CA        .byte $CA   ; 
- D 0 - I - 0x0174F4 05:94E4: 00        .byte $00   ; 
- D 0 - I - 0x0174F5 05:94E5: 00        .byte $00   ; 
- D 0 - I - 0x0174F6 05:94E6: F7        .byte $F7   ; 
- D 0 - I - 0x0174F7 05:94E7: CB        .byte $CB   ; 
- D 0 - I - 0x0174F8 05:94E8: 00        .byte $00   ; 
- D 0 - I - 0x0174F9 05:94E9: F8        .byte $F8   ; 
- D 0 - I - 0x0174FA 05:94EA: F7        .byte $F7   ; 
- D 0 - I - 0x0174FB 05:94EB: C6        .byte $C6   ; 
- D 0 - I - 0x0174FC 05:94EC: 00        .byte $00   ; 
- D 0 - I - 0x0174FD 05:94ED: 00        .byte $00   ; 
- D 0 - I - 0x0174FE 05:94EE: 02        .byte $02   ; 
- D 0 - I - 0x0174FF 05:94EF: F8        .byte $F8   ; 
- D 0 - I - 0x017500 05:94F0: CC        .byte $CC   ; 
- D 0 - I - 0x017501 05:94F1: 00        .byte $00   ; 
- D 0 - I - 0x017502 05:94F2: F8        .byte $F8   ; 
- D 0 - I - 0x017503 05:94F3: F8        .byte $F8   ; 
- D 0 - I - 0x017504 05:94F4: CD        .byte $CD   ; 
- D 0 - I - 0x017505 05:94F5: 00        .byte $00   ; 
- D 0 - I - 0x017506 05:94F6: 00        .byte $00   ; 
- - - - - - 0x017507 05:94F7: 06        .byte $06   ; 
- - - - - - 0x017508 05:94F8: E8        .byte $E8   ; 
- - - - - - 0x017509 05:94F9: C0        .byte $C0   ; 
- - - - - - 0x01750A 05:94FA: 40        .byte $40   ; 
- - - - - - 0x01750B 05:94FB: 00        .byte $00   ; 
- - - - - - 0x01750C 05:94FC: E8        .byte $E8   ; 
- - - - - - 0x01750D 05:94FD: C2        .byte $C2   ; 
- - - - - - 0x01750E 05:94FE: 40        .byte $40   ; 
- - - - - - 0x01750F 05:94FF: F8        .byte $F8   ; 
- - - - - - 0x017510 05:9500: F0        .byte $F0   ; 
- - - - - - 0x017511 05:9501: C1        .byte $C1   ; 
- - - - - - 0x017512 05:9502: 40        .byte $40   ; 
- - - - - - 0x017513 05:9503: 00        .byte $00   ; 
- - - - - - 0x017514 05:9504: F0        .byte $F0   ; 
- - - - - - 0x017515 05:9505: C3        .byte $C3   ; 
- - - - - - 0x017516 05:9506: 40        .byte $40   ; 
- - - - - - 0x017517 05:9507: F8        .byte $F8   ; 
- - - - - - 0x017518 05:9508: F8        .byte $F8   ; 
- - - - - - 0x017519 05:9509: C4        .byte $C4   ; 
- - - - - - 0x01751A 05:950A: 40        .byte $40   ; 
- - - - - - 0x01751B 05:950B: 00        .byte $00   ; 
- - - - - - 0x01751C 05:950C: F8        .byte $F8   ; 
- - - - - - 0x01751D 05:950D: C6        .byte $C6   ; 
- - - - - - 0x01751E 05:950E: 40        .byte $40   ; 
- - - - - - 0x01751F 05:950F: F8        .byte $F8   ; 
- - - - - - 0x017520 05:9510: 04        .byte $04   ; 
- - - - - - 0x017521 05:9511: EE        .byte $EE   ; 
- - - - - - 0x017522 05:9512: C5        .byte $C5   ; 
- - - - - - 0x017523 05:9513: 40        .byte $40   ; 
- - - - - - 0x017524 05:9514: 00        .byte $00   ; 
- - - - - - 0x017525 05:9515: EE        .byte $EE   ; 
- - - - - - 0x017526 05:9516: C7        .byte $C7   ; 
- - - - - - 0x017527 05:9517: 40        .byte $40   ; 
- - - - - - 0x017528 05:9518: F8        .byte $F8   ; 
- - - - - - 0x017529 05:9519: F6        .byte $F6   ; 
- - - - - - 0x01752A 05:951A: C9        .byte $C9   ; 
- - - - - - 0x01752B 05:951B: 40        .byte $40   ; 
- - - - - - 0x01752C 05:951C: 00        .byte $00   ; 
- - - - - - 0x01752D 05:951D: F6        .byte $F6   ; 
- - - - - - 0x01752E 05:951E: C6        .byte $C6   ; 
- - - - - - 0x01752F 05:951F: 40        .byte $40   ; 
- - - - - - 0x017530 05:9520: F8        .byte $F8   ; 
- - - - - - 0x017531 05:9521: 04        .byte $04   ; 
- - - - - - 0x017532 05:9522: EF        .byte $EF   ; 
- - - - - - 0x017533 05:9523: C8        .byte $C8   ; 
- - - - - - 0x017534 05:9524: 40        .byte $40   ; 
- - - - - - 0x017535 05:9525: 00        .byte $00   ; 
- - - - - - 0x017536 05:9526: EF        .byte $EF   ; 
- - - - - - 0x017537 05:9527: CA        .byte $CA   ; 
- - - - - - 0x017538 05:9528: 40        .byte $40   ; 
- - - - - - 0x017539 05:9529: F8        .byte $F8   ; 
- - - - - - 0x01753A 05:952A: F7        .byte $F7   ; 
- - - - - - 0x01753B 05:952B: CB        .byte $CB   ; 
- - - - - - 0x01753C 05:952C: 40        .byte $40   ; 
- - - - - - 0x01753D 05:952D: 00        .byte $00   ; 
- - - - - - 0x01753E 05:952E: F7        .byte $F7   ; 
- - - - - - 0x01753F 05:952F: C6        .byte $C6   ; 
- - - - - - 0x017540 05:9530: 40        .byte $40   ; 
- - - - - - 0x017541 05:9531: F8        .byte $F8   ; 
- - - - - - 0x017542 05:9532: 02        .byte $02   ; 
- - - - - - 0x017543 05:9533: F8        .byte $F8   ; 
- - - - - - 0x017544 05:9534: CC        .byte $CC   ; 
- - - - - - 0x017545 05:9535: 40        .byte $40   ; 
- - - - - - 0x017546 05:9536: 00        .byte $00   ; 
- - - - - - 0x017547 05:9537: F8        .byte $F8   ; 
- - - - - - 0x017548 05:9538: CD        .byte $CD   ; 
- - - - - - 0x017549 05:9539: 40        .byte $40   ; 
- - - - - - 0x01754A 05:953A: F8        .byte $F8   ; 
- D 0 - I - 0x01754B 05:953B: 05        .byte $05   ; 
- D 0 - I - 0x01754C 05:953C: E8        .byte $E8   ; 
- D 0 - I - 0x01754D 05:953D: E3        .byte $E3   ; 
- D 0 - I - 0x01754E 05:953E: 00        .byte $00   ; 
- D 0 - I - 0x01754F 05:953F: 00        .byte $00   ; 
- D 0 - I - 0x017550 05:9540: EC        .byte $EC   ; 
- D 0 - I - 0x017551 05:9541: E4        .byte $E4   ; 
- D 0 - I - 0x017552 05:9542: 00        .byte $00   ; 
- D 0 - I - 0x017553 05:9543: F8        .byte $F8   ; 
- D 0 - I - 0x017554 05:9544: F0        .byte $F0   ; 
- D 0 - I - 0x017555 05:9545: E6        .byte $E6   ; 
- D 0 - I - 0x017556 05:9546: 00        .byte $00   ; 
- D 0 - I - 0x017557 05:9547: 00        .byte $00   ; 
- D 0 - I - 0x017558 05:9548: F4        .byte $F4   ; 
- D 0 - I - 0x017559 05:9549: E5        .byte $E5   ; 
- D 0 - I - 0x01755A 05:954A: 00        .byte $00   ; 
- D 0 - I - 0x01755B 05:954B: F8        .byte $F8   ; 
- D 0 - I - 0x01755C 05:954C: F8        .byte $F8   ; 
- D 0 - I - 0x01755D 05:954D: E7        .byte $E7   ; 
- D 0 - I - 0x01755E 05:954E: 00        .byte $00   ; 
- D 0 - I - 0x01755F 05:954F: 00        .byte $00   ; 
- D 0 - I - 0x017560 05:9550: 04        .byte $04   ; 
- D 0 - I - 0x017561 05:9551: F0        .byte $F0   ; 
- D 0 - I - 0x017562 05:9552: D0        .byte $D0   ; 
- D 0 - I - 0x017563 05:9553: 00        .byte $00   ; 
- D 0 - I - 0x017564 05:9554: F8        .byte $F8   ; 
- D 0 - I - 0x017565 05:9555: F0        .byte $F0   ; 
- D 0 - I - 0x017566 05:9556: D2        .byte $D2   ; 
- D 0 - I - 0x017567 05:9557: 00        .byte $00   ; 
- D 0 - I - 0x017568 05:9558: 00        .byte $00   ; 
- D 0 - I - 0x017569 05:9559: F8        .byte $F8   ; 
- D 0 - I - 0x01756A 05:955A: D1        .byte $D1   ; 
- D 0 - I - 0x01756B 05:955B: 00        .byte $00   ; 
- D 0 - I - 0x01756C 05:955C: F8        .byte $F8   ; 
- D 0 - I - 0x01756D 05:955D: F8        .byte $F8   ; 
- D 0 - I - 0x01756E 05:955E: D3        .byte $D3   ; 
- D 0 - I - 0x01756F 05:955F: 00        .byte $00   ; 
- D 0 - I - 0x017570 05:9560: 00        .byte $00   ; 
- D 0 - I - 0x017571 05:9561: 04        .byte $04   ; 
- D 0 - I - 0x017572 05:9562: F0        .byte $F0   ; 
- D 0 - I - 0x017573 05:9563: E0        .byte $E0   ; 
- D 0 - I - 0x017574 05:9564: 00        .byte $00   ; 
- D 0 - I - 0x017575 05:9565: F8        .byte $F8   ; 
- D 0 - I - 0x017576 05:9566: F0        .byte $F0   ; 
- D 0 - I - 0x017577 05:9567: E2        .byte $E2   ; 
- D 0 - I - 0x017578 05:9568: 00        .byte $00   ; 
- D 0 - I - 0x017579 05:9569: 00        .byte $00   ; 
- D 0 - I - 0x01757A 05:956A: F8        .byte $F8   ; 
- D 0 - I - 0x01757B 05:956B: E1        .byte $E1   ; 
- D 0 - I - 0x01757C 05:956C: 00        .byte $00   ; 
- D 0 - I - 0x01757D 05:956D: F8        .byte $F8   ; 
- D 0 - I - 0x01757E 05:956E: F8        .byte $F8   ; 
- D 0 - I - 0x01757F 05:956F: E7        .byte $E7   ; 
- D 0 - I - 0x017580 05:9570: 00        .byte $00   ; 
- D 0 - I - 0x017581 05:9571: 00        .byte $00   ; 

loc_skeleton_right_frame_1:
- D 0 - I - 0x017582 05:9572: 08        .byte $08
- D 0 - I - 0x017583 05:9573: E0        .byte $E0, $94, $40, $00
- D 0 - I - 0x017587 05:9577: E0        .byte $E0, $96, $40, $F8
- D 0 - I - 0x01758B 05:957B: E8        .byte $E8, $95, $40, $00
- D 0 - I - 0x01758F 05:957F: E8        .byte $E8, $97, $40, $F8
- D 0 - I - 0x017593 05:9583: F0        .byte $F0, $98, $40, $00
- D 0 - I - 0x017597 05:9587: F0        .byte $F0, $9A, $40, $F8
- D 0 - I - 0x01759B 05:958B: F8        .byte $F8, $99, $40, $00
- D 0 - I - 0x01759F 05:958F: F8        .byte $F8, $9B, $40, $F8

loc_skeleton_left_frame_1:
- D 0 - I - 0x0175A3 05:9593: 08        .byte $08
- D 0 - I - 0x0175A4 05:9594: E0        .byte $E0, $94, $00, $F8
- D 0 - I - 0x0175A8 05:9598: E0        .byte $E0, $96, $00, $00
- D 0 - I - 0x0175AC 05:959C: E8        .byte $E8, $95, $00, $F8
- D 0 - I - 0x0175B0 05:95A0: E8        .byte $E8, $97, $00, $00
- D 0 - I - 0x0175B4 05:95A4: F0        .byte $F0, $98, $00, $F8
- D 0 - I - 0x0175B8 05:95A8: F0        .byte $F0, $9A, $00, $00
- D 0 - I - 0x0175BC 05:95AC: F8        .byte $F8, $99, $00, $F8
- D 0 - I - 0x0175C0 05:95B0: F8        .byte $F8, $9B, $00, $00

loc_skeleton_right_frame_2:
- D 0 - I - 0x0175C4 05:95B4: 07        .byte $07
- D 0 - I - 0x0175C5 05:95B5: E0        .byte $E0, $94, $40, $00
- D 0 - I - 0x0175C9 05:95B9: E0        .byte $E0, $96, $40, $F8
- D 0 - I - 0x0175CD 05:95BD: E8        .byte $E8, $9C, $40, $00
- D 0 - I - 0x0175D1 05:95C1: E8        .byte $E8, $9E, $40, $F8
- D 0 - I - 0x0175D5 05:95C5: F0        .byte $F0, $9D, $40, $00
- D 0 - I - 0x0175D9 05:95C9: F0        .byte $F0, $9F, $40, $F8
- D 0 - I - 0x0175DD 05:95CD: F8        .byte $F8, $8E, $40, $FC

loc_skeleton_left_frame_2:
- D 0 - I - 0x0175E1 05:95D1: 07        .byte $07
- D 0 - I - 0x0175E2 05:95D2: E0        .byte $E0, $94, $00, $F8
- D 0 - I - 0x0175E6 05:95D6: E0        .byte $E0, $96, $00, $00
- D 0 - I - 0x0175EA 05:95DA: E8        .byte $E8, $9C, $00, $F8
- D 0 - I - 0x0175EE 05:95DE: E8        .byte $E8, $9E, $00, $00
- D 0 - I - 0x0175F2 05:95E2: F0        .byte $F0, $9D, $00, $F8
- D 0 - I - 0x0175F6 05:95E6: F0        .byte $F0, $9F, $00, $00
- D 0 - I - 0x0175FA 05:95EA: F8        .byte $F8, $8E, $00, $FC

loc_skeleton_right_frame_3:
- D 0 - I - 0x0175FE 05:95EE: 08        .byte $08
- D 0 - I - 0x0175FF 05:95EF: E0        .byte $E0, $94, $40, $00
- D 0 - I - 0x017603 05:95F3: E0        .byte $E0, $96, $40, $F8
- D 0 - I - 0x017607 05:95F7: E8        .byte $E8, $95, $40, $00
- D 0 - I - 0x01760B 05:95FB: E8        .byte $E8, $97, $40, $F8
- D 0 - I - 0x01760F 05:95FF: F0        .byte $F0, $AA, $40, $00
- D 0 - I - 0x017613 05:9603: F0        .byte $F0, $AC, $40, $F8
- D 0 - I - 0x017617 05:9607: F8        .byte $F8, $AB, $40, $00
- D 0 - I - 0x01761B 05:960B: F8        .byte $F8, $B1, $40, $F8

loc_skeleton_left_frame_3:
- D 0 - I - 0x01761F 05:960F: 08        .byte $08
- D 0 - I - 0x017620 05:9610: E0        .byte $E0, $94, $00, $F8
- D 0 - I - 0x017624 05:9614: E0        .byte $E0, $96, $00, $00
- D 0 - I - 0x017628 05:9618: E8        .byte $E8, $95, $00, $F8
- D 0 - I - 0x01762C 05:961C: E8        .byte $E8, $97, $00, $00
- D 0 - I - 0x017630 05:9620: F0        .byte $F0, $AA, $00, $F8
- D 0 - I - 0x017634 05:9624: F0        .byte $F0, $AC, $00, $00
- D 0 - I - 0x017638 05:9628: F8        .byte $F8, $AB, $00, $F8
- D 0 - I - 0x01763C 05:962C: F8        .byte $F8, $B1, $00, $00

loc_skeleton_right_frame_4:
- D 0 - I - 0x017640 05:9630: 08        .byte $08
- D 0 - I - 0x017641 05:9631: E2        .byte $E2, $94, $40, $00
- D 0 - I - 0x017645 05:9635: E2        .byte $E2, $96, $40, $F8
- D 0 - I - 0x017649 05:9639: EA        .byte $EA, $9C, $40, $00
- D 0 - I - 0x01764D 05:963D: EA        .byte $EA, $9E, $40, $F8
- D 0 - I - 0x017651 05:9641: F2        .byte $F2, $AA, $40, $00
- D 0 - I - 0x017655 05:9645: F2        .byte $F2, $AC, $40, $F8
- D 0 - I - 0x017659 05:9649: F8        .byte $F8, $99, $40, $02
- D 0 - I - 0x01765D 05:964D: F8        .byte $F8, $9B, $40, $FA

loc_skeleton_left_frame_4:
- D 0 - I - 0x017661 05:9651: 08        .byte $08
- D 0 - I - 0x017662 05:9652: E2        .byte $E2, $94, $00, $F8
- D 0 - I - 0x017666 05:9656: E2        .byte $E2, $96, $00, $00
- D 0 - I - 0x01766A 05:965A: EA        .byte $EA, $9C, $00, $F8
- D 0 - I - 0x01766E 05:965E: EA        .byte $EA, $9E, $00, $00
- D 0 - I - 0x017672 05:9662: F2        .byte $F2, $AA, $00, $F8
- D 0 - I - 0x017676 05:9666: F2        .byte $F2, $AC, $00, $00
- D 0 - I - 0x01767A 05:966A: F8        .byte $F8, $99, $00, $F6
- D 0 - I - 0x01767E 05:966E: F8        .byte $F8, $9B, $00, $FE

loc_skeleton_right_frame_5:
- D 0 - I - 0x017682 05:9672: 06        .byte $06
- D 0 - I - 0x017683 05:9673: E8        .byte $E8, $94, $40, $00
- D 0 - I - 0x017687 05:9677: E8        .byte $E8, $96, $40, $F8
- D 0 - I - 0x01768B 05:967B: F0        .byte $F0, $9C, $40, $00
- D 0 - I - 0x01768F 05:967F: F0        .byte $F0, $97, $40, $F8
- D 0 - I - 0x017693 05:9683: F8        .byte $F8, $98, $40, $00
- D 0 - I - 0x017697 05:9687: F8        .byte $F8, $9B, $40, $F8

loc_skeleton_left_frame_5:
- D 0 - I - 0x01769B 05:968B: 06        .byte $06
- D 0 - I - 0x01769C 05:968C: E8        .byte $E8, $94, $00, $F8
- D 0 - I - 0x0176A0 05:9690: E8        .byte $E8, $96, $00, $00
- D 0 - I - 0x0176A4 05:9694: F0        .byte $F0, $9C, $00, $F8
- D 0 - I - 0x0176A8 05:9698: F0        .byte $F0, $97, $00, $00
- D 0 - I - 0x0176AC 05:969C: F8        .byte $F8, $98, $00, $F8
- D 0 - I - 0x0176B0 05:96A0: F8        .byte $F8, $9B, $00, $00

loc_skeleton_right_frame_6:
- D 0 - I - 0x0176B4 05:96A4: 03        .byte $03
- D 0 - I - 0x0176B5 05:96A5: F8        .byte $F8, $8F, $40, $04
- D 0 - I - 0x0176B9 05:96A9: F8        .byte $F8, $94, $40, $00
- D 0 - I - 0x0176BD 05:96AD: F8        .byte $F8, $AE, $40, $F8

loc_skeleton_left_frame_6:
- D 0 - I - 0x0176C1 05:96B1: 03        .byte $03
- D 0 - I - 0x0176C2 05:96B2: F8        .byte $F8, $8F, $00, $F4
- D 0 - I - 0x0176C6 05:96B6: F8        .byte $F8, $94, $00, $F8
- D 0 - I - 0x0176CA 05:96BA: F8        .byte $F8, $AE, $00, $00

loc_skeleton_bones_frame_1:
- D 0 - I - 0x0176CE 05:96BE: 05        .byte $05
- D 0 - I - 0x0176CF 05:96BF: E0        .byte $E0, $8F, $00, $00
- D 0 - I - 0x0176D3 05:96C3: E4        .byte $E4, $8F, $80, $F0
- D 0 - I - 0x0176D7 05:96C7: E4        .byte $E4, $8F, $C0, $08
- D 0 - I - 0x0176DB 05:96CB: F0        .byte $F0, $8F, $00, $F4
- D 0 - I - 0x0176DF 05:96CF: F0        .byte $F0, $8F, $40, $04

loc_skeleton_bones_frame_2:
- D 0 - I - 0x0176E3 05:96D3: 05        .byte $05
- D 0 - I - 0x0176E4 05:96D4: C0        .byte $C0, $8F, $00, $00
- D 0 - I - 0x0176E8 05:96D8: D4        .byte $D4, $8F, $80, $DC
- D 0 - I - 0x0176EC 05:96DC: D4        .byte $D4, $8F, $C0, $1C
- D 0 - I - 0x0176F0 05:96E0: F0        .byte $F0, $8F, $00, $E0
- D 0 - I - 0x0176F4 05:96E4: F0        .byte $F0, $8F, $40, $18

loc_mummy_right_frame_1:
- D 0 - I - 0x0176F8 05:96E8: 05        .byte $05
- D 0 - I - 0x0176F9 05:96E9: E0        .byte $E0, $B8, $40, $FB
- D 0 - I - 0x0176FD 05:96ED: E8        .byte $E8, $AC, $40, $03
- D 0 - I - 0x017701 05:96F1: E8        .byte $E8, $B9, $40, $FB
- D 0 - I - 0x017705 05:96F5: F0        .byte $F0, $BA, $40, $FB
- D 0 - I - 0x017709 05:96F9: F8        .byte $F8, $AB, $40, $FA

loc_mummy_left_frame_1:
- D 0 - I - 0x01770D 05:96FD: 05        .byte $05
- D 0 - I - 0x01770E 05:96FE: E0        .byte $E0, $B8, $00, $FD
- D 0 - I - 0x017712 05:9702: E8        .byte $E8, $AC, $00, $F5
- D 0 - I - 0x017716 05:9706: E8        .byte $E8, $B9, $00, $FD
- D 0 - I - 0x01771A 05:970A: F0        .byte $F0, $BA, $00, $FD
- D 0 - I - 0x01771E 05:970E: F8        .byte $F8, $AB, $00, $FE

loc_mummy_right_frame_2:
- D 0 - I - 0x017722 05:9712: 06        .byte $06
- D 0 - I - 0x017723 05:9713: E0        .byte $E0, $B8, $40, $FB
- D 0 - I - 0x017727 05:9717: E8        .byte $E8, $AC, $40, $03
- D 0 - I - 0x01772B 05:971B: E8        .byte $E8, $B9, $40, $FB
- D 0 - I - 0x01772F 05:971F: F0        .byte $F0, $AE, $40, $FC
- D 0 - I - 0x017733 05:9723: F8        .byte $F8, $AD, $40, $FF
- D 0 - I - 0x017737 05:9727: F8        .byte $F8, $AF, $40, $F7

loc_mummy_left_frame_2:
- D 0 - I - 0x01773B 05:972B: 06        .byte $06
- D 0 - I - 0x01773C 05:972C: E0        .byte $E0, $B8, $00, $FD
- D 0 - I - 0x017740 05:9730: E8        .byte $E8, $AC, $00, $F5
- D 0 - I - 0x017744 05:9734: E8        .byte $E8, $B9, $00, $FD
- D 0 - I - 0x017748 05:9738: F0        .byte $F0, $AE, $00, $FC
- D 0 - I - 0x01774C 05:973C: F8        .byte $F8, $AD, $00, $F9
- D 0 - I - 0x017750 05:9740: F8        .byte $F8, $AF, $00, $01

loc_mummy_right_frame_3:
- D 0 - I - 0x017754 05:9744: 06        .byte $06
- D 0 - I - 0x017755 05:9745: E0        .byte $E0, $B8, $40, $FB
- D 0 - I - 0x017759 05:9749: E8        .byte $E8, $AC, $40, $03
- D 0 - I - 0x01775D 05:974D: E8        .byte $E8, $B9, $40, $FB
- D 0 - I - 0x017761 05:9751: F0        .byte $F0, $AE, $40, $FC
- D 0 - I - 0x017765 05:9755: F8        .byte $F8, $B0, $40, $00
- D 0 - I - 0x017769 05:9759: F8        .byte $F8, $B2, $40, $F8

loc_mummy_left_frame_3:
- D 0 - I - 0x01776D 05:975D: 06        .byte $06
- D 0 - I - 0x01776E 05:975E: E0        .byte $E0, $B8, $00, $FD
- D 0 - I - 0x017772 05:9762: E8        .byte $E8, $AC, $00, $F5
- D 0 - I - 0x017776 05:9766: E8        .byte $E8, $B9, $00, $FD
- D 0 - I - 0x01777A 05:976A: F0        .byte $F0, $AE, $00, $FC
- D 0 - I - 0x01777E 05:976E: F8        .byte $F8, $B0, $00, $F8
- D 0 - I - 0x017782 05:9772: F8        .byte $F8, $B2, $00, $00

loc_mummy_right_frame_4:
- D 0 - I - 0x017786 05:9776: 04        .byte $04
- D 0 - I - 0x017787 05:9777: E8        .byte $E8, $B6, $40, $F8
- D 0 - I - 0x01778B 05:977B: EE        .byte $EE, $AC, $40, $FF
- D 0 - I - 0x01778F 05:977F: F0        .byte $F0, $B3, $40, $F9
- D 0 - I - 0x017793 05:9783: F8        .byte $F8, $B1, $40, $FB

loc_mummy_left_frame_4:
- D 0 - I - 0x017797 05:9787: 04        .byte $04
- D 0 - I - 0x017798 05:9788: E8        .byte $E8, $B6, $00, $00
- D 0 - I - 0x01779C 05:978C: EE        .byte $EE, $AC, $00, $F9
- D 0 - I - 0x0177A0 05:9790: F0        .byte $F0, $B3, $00, $01
- D 0 - I - 0x0177A4 05:9794: F8        .byte $F8, $B1, $00, $FD

loc_mummy_right_frame_5:
- D 0 - I - 0x0177A8 05:9798: 03        .byte $03
- D 0 - I - 0x0177A9 05:9799: F0        .byte $F0, $B4, $40, $FC
- D 0 - I - 0x0177AD 05:979D: F8        .byte $F8, $B5, $40, $00
- D 0 - I - 0x0177B1 05:97A1: F8        .byte $F8, $B7, $40, $F8

loc_mummy_left_frame_5:
- D 0 - I - 0x0177B5 05:97A5: 03        .byte $03
- D 0 - I - 0x0177B6 05:97A6: F0        .byte $F0, $B4, $00, $FC
- D 0 - I - 0x0177BA 05:97AA: F8        .byte $F8, $B5, $00, $F8
- D 0 - I - 0x0177BE 05:97AE: F8        .byte $F8, $B7, $00, $00

loc_gargoyle_right_frame_1:
- D 0 - I - 0x0177C2 05:97B2: 05        .byte $05
- D 0 - I - 0x0177C3 05:97B3: F1        .byte $F1, $98, $40, $05
- D 0 - I - 0x0177C7 05:97B7: F1        .byte $F1, $90, $40, $FD
- D 0 - I - 0x0177CB 05:97BB: F0        .byte $F0, $92, $40, $F5
- D 0 - I - 0x0177CF 05:97BF: F9        .byte $F9, $91, $40, $FD
- D 0 - I - 0x0177D3 05:97C3: F8        .byte $F8, $93, $40, $F5

loc_gargoyle_left_frame_1:
- D 0 - I - 0x0177D7 05:97C7: 05        .byte $05
- D 0 - I - 0x0177D8 05:97C8: F1        .byte $F1, $98, $00, $F3
- D 0 - I - 0x0177DC 05:97CC: F1        .byte $F1, $90, $00, $FB
- D 0 - I - 0x0177E0 05:97D0: F0        .byte $F0, $92, $00, $03
- D 0 - I - 0x0177E4 05:97D4: F9        .byte $F9, $91, $00, $FB
- D 0 - I - 0x0177E8 05:97D8: F8        .byte $F8, $93, $00, $03

loc_gargoyle_right_frame_2:
- D 0 - I - 0x0177EC 05:97DC: 04        .byte $04
- D 0 - I - 0x0177ED 05:97DD: F0        .byte $F0, $94, $40, $00
- D 0 - I - 0x0177F1 05:97E1: F0        .byte $F0, $96, $40, $F8
- D 0 - I - 0x0177F5 05:97E5: F8        .byte $F8, $95, $40, $00
- D 0 - I - 0x0177F9 05:97E9: F8        .byte $F8, $97, $40, $F8

loc_gargoyle_left_frame_2:
- D 0 - I - 0x0177FD 05:97ED: 04        .byte $04
- D 0 - I - 0x0177FE 05:97EE: F0        .byte $F0, $94, $00, $F8
- D 0 - I - 0x017802 05:97F2: F0        .byte $F0, $96, $00, $00
- D 0 - I - 0x017806 05:97F6: F8        .byte $F8, $95, $00, $F8
- D 0 - I - 0x01780A 05:97FA: F8        .byte $F8, $97, $00, $00

loc_gargoyle_right_frame_3:
- D 0 - I - 0x01780E 05:97FE: 04        .byte $04
- D 0 - I - 0x01780F 05:97FF: F1        .byte $F1, $94, $40, $00
- D 0 - I - 0x017813 05:9803: F1        .byte $F1, $9A, $40, $F8
- D 0 - I - 0x017817 05:9807: F9        .byte $F9, $99, $40, $00
- D 0 - I - 0x01781B 05:980B: F9        .byte $F9, $9B, $40, $F8

loc_gargoyle_left_frame_3:
- D 0 - I - 0x01781F 05:980F: 04        .byte $04
- D 0 - I - 0x017820 05:9810: F1        .byte $F1, $94, $00, $F8
- D 0 - I - 0x017824 05:9814: F1        .byte $F1, $9A, $00, $00
- D 0 - I - 0x017828 05:9818: F9        .byte $F9, $99, $00, $F8
- D 0 - I - 0x01782C 05:981C: F9        .byte $F9, $9B, $00, $00

- D 0 - I - 0x017830 05:9820: 05        .byte $05   ; 
- D 0 - I - 0x017831 05:9821: D8        .byte $D8   ; 
- D 0 - I - 0x017832 05:9822: 81        .byte $81   ; 
- D 0 - I - 0x017833 05:9823: 00        .byte $00   ; 
- D 0 - I - 0x017834 05:9824: FC        .byte $FC   ; 
- D 0 - I - 0x017835 05:9825: E0        .byte $E0   ; 
- D 0 - I - 0x017836 05:9826: 80        .byte $80   ; 
- D 0 - I - 0x017837 05:9827: 00        .byte $00   ; 
- D 0 - I - 0x017838 05:9828: FC        .byte $FC   ; 
- D 0 - I - 0x017839 05:9829: E8        .byte $E8   ; 
- D 0 - I - 0x01783A 05:982A: 81        .byte $81   ; 
- D 0 - I - 0x01783B 05:982B: 00        .byte $00   ; 
- D 0 - I - 0x01783C 05:982C: FC        .byte $FC   ; 
- D 0 - I - 0x01783D 05:982D: F0        .byte $F0   ; 
- D 0 - I - 0x01783E 05:982E: 80        .byte $80   ; 
- D 0 - I - 0x01783F 05:982F: 00        .byte $00   ; 
- D 0 - I - 0x017840 05:9830: FC        .byte $FC   ; 
- D 0 - I - 0x017841 05:9831: F8        .byte $F8   ; 
- D 0 - I - 0x017842 05:9832: 81        .byte $81   ; 
- D 0 - I - 0x017843 05:9833: 00        .byte $00   ; 
- D 0 - I - 0x017844 05:9834: FC        .byte $FC   ; 
- D 0 - I - 0x017845 05:9835: 05        .byte $05   ; 
- D 0 - I - 0x017846 05:9836: D8        .byte $D8   ; 
- D 0 - I - 0x017847 05:9837: 83        .byte $83   ; 
- D 0 - I - 0x017848 05:9838: 00        .byte $00   ; 
- D 0 - I - 0x017849 05:9839: FC        .byte $FC   ; 
- D 0 - I - 0x01784A 05:983A: E0        .byte $E0   ; 
- D 0 - I - 0x01784B 05:983B: 82        .byte $82   ; 
- D 0 - I - 0x01784C 05:983C: 00        .byte $00   ; 
- D 0 - I - 0x01784D 05:983D: FC        .byte $FC   ; 
- D 0 - I - 0x01784E 05:983E: E8        .byte $E8   ; 
- D 0 - I - 0x01784F 05:983F: 83        .byte $83   ; 
- D 0 - I - 0x017850 05:9840: 00        .byte $00   ; 
- D 0 - I - 0x017851 05:9841: FC        .byte $FC   ; 
- D 0 - I - 0x017852 05:9842: F0        .byte $F0   ; 
- D 0 - I - 0x017853 05:9843: 82        .byte $82   ; 
- D 0 - I - 0x017854 05:9844: 00        .byte $00   ; 
- D 0 - I - 0x017855 05:9845: FC        .byte $FC   ; 
- D 0 - I - 0x017856 05:9846: F8        .byte $F8   ; 
- D 0 - I - 0x017857 05:9847: 83        .byte $83   ; 
- D 0 - I - 0x017858 05:9848: 00        .byte $00   ; 
- D 0 - I - 0x017859 05:9849: FC        .byte $FC   ; 
- D 0 - I - 0x01785A 05:984A: 02        .byte $02   ; 
- D 0 - I - 0x01785B 05:984B: 00        .byte $00   ; 
- D 0 - I - 0x01785C 05:984C: 84        .byte $84   ; 
- D 0 - I - 0x01785D 05:984D: 00        .byte $00   ; 
- D 0 - I - 0x01785E 05:984E: F8        .byte $F8   ; 
- D 0 - I - 0x01785F 05:984F: 00        .byte $00   ; 
- D 0 - I - 0x017860 05:9850: 84        .byte $84   ; 
- D 0 - I - 0x017861 05:9851: 00        .byte $00   ; 
- D 0 - I - 0x017862 05:9852: 00        .byte $00   ; 
- D 0 - I - 0x017863 05:9853: 02        .byte $02   ; 
- D 0 - I - 0x017864 05:9854: 00        .byte $00   ; 
- D 0 - I - 0x017865 05:9855: 84        .byte $84   ; 
- D 0 - I - 0x017866 05:9856: 00        .byte $00   ; 
- D 0 - I - 0x017867 05:9857: F8        .byte $F8   ; 
- D 0 - I - 0x017868 05:9858: 00        .byte $00   ; 
- D 0 - I - 0x017869 05:9859: 86        .byte $86   ; 
- D 0 - I - 0x01786A 05:985A: 00        .byte $00   ; 
- D 0 - I - 0x01786B 05:985B: 00        .byte $00   ; 
- D 0 - I - 0x01786C 05:985C: 02        .byte $02   ; 
- D 0 - I - 0x01786D 05:985D: 00        .byte $00   ; 
- D 0 - I - 0x01786E 05:985E: 85        .byte $85   ; 
- D 0 - I - 0x01786F 05:985F: 00        .byte $00   ; 
- D 0 - I - 0x017870 05:9860: F8        .byte $F8   ; 
- D 0 - I - 0x017871 05:9861: 00        .byte $00   ; 
- D 0 - I - 0x017872 05:9862: 87        .byte $87   ; 
- D 0 - I - 0x017873 05:9863: 00        .byte $00   ; 
- D 0 - I - 0x017874 05:9864: 00        .byte $00   ; 
- D 0 - I - 0x017875 05:9865: 02        .byte $02   ; 
- D 0 - I - 0x017876 05:9866: 00        .byte $00   ; 
- D 0 - I - 0x017877 05:9867: 86        .byte $86   ; 
- D 0 - I - 0x017878 05:9868: 00        .byte $00   ; 
- D 0 - I - 0x017879 05:9869: F8        .byte $F8   ; 
- D 0 - I - 0x01787A 05:986A: 00        .byte $00   ; 
- D 0 - I - 0x01787B 05:986B: 87        .byte $87   ; 
- D 0 - I - 0x01787C 05:986C: 00        .byte $00   ; 
- D 0 - I - 0x01787D 05:986D: 00        .byte $00   ; 
- D 0 - I - 0x01787E 05:986E: 02        .byte $02   ; 
- D 0 - I - 0x01787F 05:986F: 00        .byte $00   ; 
- D 0 - I - 0x017880 05:9870: 87        .byte $87   ; 
- D 0 - I - 0x017881 05:9871: 00        .byte $00   ; 
- D 0 - I - 0x017882 05:9872: F8        .byte $F8   ; 
- D 0 - I - 0x017883 05:9873: 00        .byte $00   ; 
- D 0 - I - 0x017884 05:9874: 87        .byte $87   ; 
- D 0 - I - 0x017885 05:9875: 00        .byte $00   ; 
- D 0 - I - 0x017886 05:9876: 00        .byte $00   ; 
- D 0 - I - 0x017887 05:9877: 01        .byte $01   ; 
- D 0 - I - 0x017888 05:9878: FD        .byte $FD   ; 
- D 0 - I - 0x017889 05:9879: 8C        .byte $8C   ; 
- D 0 - I - 0x01788A 05:987A: 00        .byte $00   ; 
- D 0 - I - 0x01788B 05:987B: FC        .byte $FC   ; 
- D 0 - I - 0x01788C 05:987C: 03        .byte $03   ; 
- D 0 - I - 0x01788D 05:987D: F8        .byte $F8   ; 
- D 0 - I - 0x01788E 05:987E: 88        .byte $88   ; 
- D 0 - I - 0x01788F 05:987F: 00        .byte $00   ; 
- D 0 - I - 0x017890 05:9880: ED        .byte $ED   ; 
- D 0 - I - 0x017891 05:9881: F8        .byte $F8   ; 
- D 0 - I - 0x017892 05:9882: 8A        .byte $8A   ; 
- D 0 - I - 0x017893 05:9883: 00        .byte $00   ; 
- D 0 - I - 0x017894 05:9884: F5        .byte $F5   ; 
- D 0 - I - 0x017895 05:9885: FD        .byte $FD   ; 
- D 0 - I - 0x017896 05:9886: 8C        .byte $8C   ; 
- D 0 - I - 0x017897 05:9887: 00        .byte $00   ; 
- D 0 - I - 0x017898 05:9888: FC        .byte $FC   ; 
- D 0 - I - 0x017899 05:9889: 04        .byte $04   ; 
- D 0 - I - 0x01789A 05:988A: ED        .byte $ED   ; 
- D 0 - I - 0x01789B 05:988B: 8E        .byte $8E   ; 
- D 0 - I - 0x01789C 05:988C: 00        .byte $00   ; 
- D 0 - I - 0x01789D 05:988D: F6        .byte $F6   ; 
- D 0 - I - 0x01789E 05:988E: F6        .byte $F6   ; 
- D 0 - I - 0x01789F 05:988F: 8D        .byte $8D   ; 
- D 0 - I - 0x0178A0 05:9890: 00        .byte $00   ; 
- D 0 - I - 0x0178A1 05:9891: ED        .byte $ED   ; 
- D 0 - I - 0x0178A2 05:9892: F5        .byte $F5   ; 
- D 0 - I - 0x0178A3 05:9893: 8F        .byte $8F   ; 
- D 0 - I - 0x0178A4 05:9894: 00        .byte $00   ; 
- D 0 - I - 0x0178A5 05:9895: F5        .byte $F5   ; 
- D 0 - I - 0x0178A6 05:9896: FD        .byte $FD   ; 
- D 0 - I - 0x0178A7 05:9897: 8C        .byte $8C   ; 
- D 0 - I - 0x0178A8 05:9898: 00        .byte $00   ; 
- D 0 - I - 0x0178A9 05:9899: FC        .byte $FC   ; 
- D 0 - I - 0x0178AA 05:989A: 04        .byte $04   ; 
- D 0 - I - 0x0178AB 05:989B: ED        .byte $ED   ; 
- D 0 - I - 0x0178AC 05:989C: 89        .byte $89   ; 
- D 0 - I - 0x0178AD 05:989D: 00        .byte $00   ; 
- D 0 - I - 0x0178AE 05:989E: F8        .byte $F8   ; 
- D 0 - I - 0x0178AF 05:989F: ED        .byte $ED   ; 
- D 0 - I - 0x0178B0 05:98A0: 89        .byte $89   ; 
- D 0 - I - 0x0178B1 05:98A1: 40        .byte $40   ; 
- D 0 - I - 0x0178B2 05:98A2: 00        .byte $00   ; 
- D 0 - I - 0x0178B3 05:98A3: F5        .byte $F5   ; 
- D 0 - I - 0x0178B4 05:98A4: 8B        .byte $8B   ; 
- D 0 - I - 0x0178B5 05:98A5: 00        .byte $00   ; 
- D 0 - I - 0x0178B6 05:98A6: FC        .byte $FC   ; 
- D 0 - I - 0x0178B7 05:98A7: FD        .byte $FD   ; 
- D 0 - I - 0x0178B8 05:98A8: 8C        .byte $8C   ; 
- D 0 - I - 0x0178B9 05:98A9: 00        .byte $00   ; 
- D 0 - I - 0x0178BA 05:98AA: FC        .byte $FC   ; 
- D 0 - I - 0x0178BB 05:98AB: 04        .byte $04   ; 
- D 0 - I - 0x0178BC 05:98AC: ED        .byte $ED   ; 
- D 0 - I - 0x0178BD 05:98AD: 8E        .byte $8E   ; 
- D 0 - I - 0x0178BE 05:98AE: 40        .byte $40   ; 
- D 0 - I - 0x0178BF 05:98AF: 02        .byte $02   ; 
- D 0 - I - 0x0178C0 05:98B0: F6        .byte $F6   ; 
- D 0 - I - 0x0178C1 05:98B1: 8D        .byte $8D   ; 
- D 0 - I - 0x0178C2 05:98B2: 40        .byte $40   ; 
- D 0 - I - 0x0178C3 05:98B3: 0B        .byte $0B   ; 
- D 0 - I - 0x0178C4 05:98B4: F5        .byte $F5   ; 
- D 0 - I - 0x0178C5 05:98B5: 8F        .byte $8F   ; 
- D 0 - I - 0x0178C6 05:98B6: 40        .byte $40   ; 
- D 0 - I - 0x0178C7 05:98B7: 03        .byte $03   ; 
- D 0 - I - 0x0178C8 05:98B8: FD        .byte $FD   ; 
- D 0 - I - 0x0178C9 05:98B9: 8C        .byte $8C   ; 
- D 0 - I - 0x0178CA 05:98BA: 00        .byte $00   ; 
- D 0 - I - 0x0178CB 05:98BB: FC        .byte $FC   ; 
- D 0 - I - 0x0178CC 05:98BC: 03        .byte $03   ; 
- D 0 - I - 0x0178CD 05:98BD: F8        .byte $F8   ; 
- D 0 - I - 0x0178CE 05:98BE: 88        .byte $88   ; 
- D 0 - I - 0x0178CF 05:98BF: 40        .byte $40   ; 
- D 0 - I - 0x0178D0 05:98C0: 0B        .byte $0B   ; 
- D 0 - I - 0x0178D1 05:98C1: F8        .byte $F8   ; 
- D 0 - I - 0x0178D2 05:98C2: 8A        .byte $8A   ; 
- D 0 - I - 0x0178D3 05:98C3: 40        .byte $40   ; 
- D 0 - I - 0x0178D4 05:98C4: 03        .byte $03   ; 
- D 0 - I - 0x0178D5 05:98C5: FD        .byte $FD   ; 
- D 0 - I - 0x0178D6 05:98C6: 8C        .byte $8C   ; 
- D 0 - I - 0x0178D7 05:98C7: 00        .byte $00   ; 
- D 0 - I - 0x0178D8 05:98C8: FC        .byte $FC   ; 
- D 0 - I - 0x0178D9 05:98C9: 02        .byte $02   ; 
- D 0 - I - 0x0178DA 05:98CA: F8        .byte $F8   ; 
- D 0 - I - 0x0178DB 05:98CB: A2        .byte $A2   ; 
- D 0 - I - 0x0178DC 05:98CC: 00        .byte $00   ; 
- D 0 - I - 0x0178DD 05:98CD: F8        .byte $F8   ; 
- D 0 - I - 0x0178DE 05:98CE: F8        .byte $F8   ; 
- D 0 - I - 0x0178DF 05:98CF: BB        .byte $BB   ; 
- D 0 - I - 0x0178E0 05:98D0: 00        .byte $00   ; 
- D 0 - I - 0x0178E1 05:98D1: 00        .byte $00   ; 
- D 0 - I - 0x0178E2 05:98D2: 02        .byte $02   ; 
- D 0 - I - 0x0178E3 05:98D3: F8        .byte $F8   ; 
- D 0 - I - 0x0178E4 05:98D4: A2        .byte $A2   ; 
- D 0 - I - 0x0178E5 05:98D5: 40        .byte $40   ; 
- D 0 - I - 0x0178E6 05:98D6: 00        .byte $00   ; 
- D 0 - I - 0x0178E7 05:98D7: F8        .byte $F8   ; 
- D 0 - I - 0x0178E8 05:98D8: BB        .byte $BB   ; 
- D 0 - I - 0x0178E9 05:98D9: 40        .byte $40   ; 
- D 0 - I - 0x0178EA 05:98DA: F8        .byte $F8   ; 
- D 0 - I - 0x0178EB 05:98DB: 02        .byte $02   ; 
- D 0 - I - 0x0178EC 05:98DC: F0        .byte $F0   ; 
- D 0 - I - 0x0178ED 05:98DD: BC        .byte $BC   ; 
- D 0 - I - 0x0178EE 05:98DE: 00        .byte $00   ; 
- D 0 - I - 0x0178EF 05:98DF: F8        .byte $F8   ; 
- D 0 - I - 0x0178F0 05:98E0: EF        .byte $EF   ; 
- D 0 - I - 0x0178F1 05:98E1: BE        .byte $BE   ; 
- D 0 - I - 0x0178F2 05:98E2: 00        .byte $00   ; 
- D 0 - I - 0x0178F3 05:98E3: 00        .byte $00   ; 
- D 0 - I - 0x0178F4 05:98E4: 02        .byte $02   ; 
- D 0 - I - 0x0178F5 05:98E5: F0        .byte $F0   ; 
- D 0 - I - 0x0178F6 05:98E6: BC        .byte $BC   ; 
- D 0 - I - 0x0178F7 05:98E7: 40        .byte $40   ; 
- D 0 - I - 0x0178F8 05:98E8: 00        .byte $00   ; 
- D 0 - I - 0x0178F9 05:98E9: EF        .byte $EF   ; 
- D 0 - I - 0x0178FA 05:98EA: BE        .byte $BE   ; 
- D 0 - I - 0x0178FB 05:98EB: 40        .byte $40   ; 
- D 0 - I - 0x0178FC 05:98EC: F8        .byte $F8   ; 
- D 0 - I - 0x0178FD 05:98ED: 02        .byte $02   ; 
- D 0 - I - 0x0178FE 05:98EE: F7        .byte $F7   ; 
- D 0 - I - 0x0178FF 05:98EF: BD        .byte $BD   ; 
- D 0 - I - 0x017900 05:98F0: 00        .byte $00   ; 
- D 0 - I - 0x017901 05:98F1: F8        .byte $F8   ; 
- D 0 - I - 0x017902 05:98F2: F6        .byte $F6   ; 
- D 0 - I - 0x017903 05:98F3: BF        .byte $BF   ; 
- D 0 - I - 0x017904 05:98F4: 00        .byte $00   ; 
- D 0 - I - 0x017905 05:98F5: 00        .byte $00   ; 
- D 0 - I - 0x017906 05:98F6: 02        .byte $02   ; 
- D 0 - I - 0x017907 05:98F7: F7        .byte $F7   ; 
- D 0 - I - 0x017908 05:98F8: BD        .byte $BD   ; 
- D 0 - I - 0x017909 05:98F9: 40        .byte $40   ; 
- D 0 - I - 0x01790A 05:98FA: 00        .byte $00   ; 
- D 0 - I - 0x01790B 05:98FB: F6        .byte $F6   ; 
- D 0 - I - 0x01790C 05:98FC: BF        .byte $BF   ; 
- D 0 - I - 0x01790D 05:98FD: 40        .byte $40   ; 
- D 0 - I - 0x01790E 05:98FE: F8        .byte $F8   ; 
- D 0 - I - 0x01790F 05:98FF: 01        .byte $01   ; 
- D 0 - I - 0x017910 05:9900: F3        .byte $F3   ; 
- D 0 - I - 0x017911 05:9901: BE        .byte $BE   ; 
- D 0 - I - 0x017912 05:9902: 00        .byte $00   ; 
- D 0 - I - 0x017913 05:9903: FD        .byte $FD   ; 
- D 0 - I - 0x017914 05:9904: 01        .byte $01   ; 
- D 0 - I - 0x017915 05:9905: F3        .byte $F3   ; 
- D 0 - I - 0x017916 05:9906: BE        .byte $BE   ; 
- D 0 - I - 0x017917 05:9907: 40        .byte $40   ; 
- D 0 - I - 0x017918 05:9908: FB        .byte $FB   ; 
- D 0 - I - 0x017919 05:9909: 02        .byte $02   ; 
- D 0 - I - 0x01791A 05:990A: EB        .byte $EB   ; 
- D 0 - I - 0x01791B 05:990B: BE        .byte $BE   ; 
- D 0 - I - 0x01791C 05:990C: 00        .byte $00   ; 
- D 0 - I - 0x01791D 05:990D: 04        .byte $04   ; 
- D 0 - I - 0x01791E 05:990E: F0        .byte $F0   ; 
- D 0 - I - 0x01791F 05:990F: BD        .byte $BD   ; 
- D 0 - I - 0x017920 05:9910: 00        .byte $00   ; 
- D 0 - I - 0x017921 05:9911: FC        .byte $FC   ; 
- D 0 - I - 0x017922 05:9912: 02        .byte $02   ; 
- D 0 - I - 0x017923 05:9913: EB        .byte $EB   ; 
- D 0 - I - 0x017924 05:9914: BE        .byte $BE   ; 
- D 0 - I - 0x017925 05:9915: 40        .byte $40   ; 
- D 0 - I - 0x017926 05:9916: F4        .byte $F4   ; 
- D 0 - I - 0x017927 05:9917: F0        .byte $F0   ; 
- D 0 - I - 0x017928 05:9918: BD        .byte $BD   ; 
- D 0 - I - 0x017929 05:9919: 40        .byte $40   ; 
- D 0 - I - 0x01792A 05:991A: FC        .byte $FC   ; 
- D 0 - I - 0x01792B 05:991B: 02        .byte $02   ; 
- D 0 - I - 0x01792C 05:991C: F0        .byte $F0   ; 
- D 0 - I - 0x01792D 05:991D: BC        .byte $BC   ; 
- D 0 - I - 0x01792E 05:991E: 00        .byte $00   ; 
- D 0 - I - 0x01792F 05:991F: FC        .byte $FC   ; 
- D 0 - I - 0x017930 05:9920: F6        .byte $F6   ; 
- D 0 - I - 0x017931 05:9921: BF        .byte $BF   ; 
- D 0 - I - 0x017932 05:9922: 00        .byte $00   ; 
- D 0 - I - 0x017933 05:9923: 04        .byte $04   ; 
- D 0 - I - 0x017934 05:9924: 02        .byte $02   ; 
- D 0 - I - 0x017935 05:9925: F0        .byte $F0   ; 
- D 0 - I - 0x017936 05:9926: BC        .byte $BC   ; 
- D 0 - I - 0x017937 05:9927: 40        .byte $40   ; 
- D 0 - I - 0x017938 05:9928: FC        .byte $FC   ; 
- D 0 - I - 0x017939 05:9929: F6        .byte $F6   ; 
- D 0 - I - 0x01793A 05:992A: BF        .byte $BF   ; 
- D 0 - I - 0x01793B 05:992B: 40        .byte $40   ; 
- D 0 - I - 0x01793C 05:992C: F4        .byte $F4   ; 
- D 0 - I - 0x01793D 05:992D: 01        .byte $01   ; 
- D 0 - I - 0x01793E 05:992E: F8        .byte $F8   ; 
- D 0 - I - 0x01793F 05:992F: A0        .byte $A0   ; 
- D 0 - I - 0x017940 05:9930: 00        .byte $00   ; 
- D 0 - I - 0x017941 05:9931: FC        .byte $FC   ; 

loc_egyptian_bow_right_frame_1:
- D 0 - I - 0x017942 05:9932: 08        .byte $08
- D 0 - I - 0x017943 05:9933: E0        .byte $E0, $B4, $40, $FC
- D 0 - I - 0x017947 05:9937: E8        .byte $E8, $B8, $40, $04
- D 0 - I - 0x01794B 05:993B: E8        .byte $E8, $B0, $40, $FC
- D 0 - I - 0x01794F 05:993F: E8        .byte $E8, $B2, $40, $F4
- D 0 - I - 0x017953 05:9943: F0        .byte $F0, $B8, $C0, $04
- D 0 - I - 0x017957 05:9947: F0        .byte $F0, $B1, $40, $FC
- D 0 - I - 0x01795B 05:994B: F0        .byte $F0, $B3, $40, $F5
- D 0 - I - 0x01795F 05:994F: F8        .byte $F8, $B5, $40, $FD

loc_egyptian_bow_left_frame_1:
- D 0 - I - 0x017963 05:9953: 08        .byte $08
- D 0 - I - 0x017964 05:9954: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x017968 05:9958: E8        .byte $E8, $B8, $00, $F4
- D 0 - I - 0x01796C 05:995C: E8        .byte $E8, $B0, $00, $FC
- D 0 - I - 0x017970 05:9960: E8        .byte $E8, $B2, $00, $04
- D 0 - I - 0x017974 05:9964: F0        .byte $F0, $B8, $80, $F4
- D 0 - I - 0x017978 05:9968: F0        .byte $F0, $B1, $00, $FC
- D 0 - I - 0x01797C 05:996C: F0        .byte $F0, $B3, $00, $03
- D 0 - I - 0x017980 05:9970: F8        .byte $F8, $B5, $00, $FB

loc_egyptian_bow_right_frame_2:
- D 0 - I - 0x017984 05:9974: 08        .byte $08
- D 0 - I - 0x017985 05:9975: E0        .byte $E0, $B4, $40, $FC
- D 0 - I - 0x017989 05:9979: E8        .byte $E8, $B8, $40, $04
- D 0 - I - 0x01798D 05:997D: E8        .byte $E8, $B0, $40, $FC
- D 0 - I - 0x017991 05:9981: E8        .byte $E8, $B2, $40, $F4
- D 0 - I - 0x017995 05:9985: F0        .byte $F0, $B8, $C0, $04
- D 0 - I - 0x017999 05:9989: F0        .byte $F0, $B1, $40, $FC
- D 0 - I - 0x01799D 05:998D: F0        .byte $F0, $B3, $40, $F5
- D 0 - I - 0x0179A1 05:9991: F8        .byte $F8, $B6, $40, $FD

loc_egyptian_bow_left_frame_2:
- D 0 - I - 0x0179A5 05:9995: 08        .byte $08
- D 0 - I - 0x0179A6 05:9996: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x0179AA 05:999A: E8        .byte $E8, $B8, $00, $F4
- D 0 - I - 0x0179AE 05:999E: E8        .byte $E8, $B0, $00, $FC
- D 0 - I - 0x0179B2 05:99A2: E8        .byte $E8, $B2, $00, $04
- D 0 - I - 0x0179B6 05:99A6: F0        .byte $F0, $B8, $80, $F4
- D 0 - I - 0x0179BA 05:99AA: F0        .byte $F0, $B1, $00, $FC
- D 0 - I - 0x0179BE 05:99AE: F0        .byte $F0, $B3, $00, $03
- D 0 - I - 0x0179C2 05:99B2: F8        .byte $F8, $B6, $00, $FB

loc_egyptian_bow_right_frame_3:
- D 0 - I - 0x0179C6 05:99B6: 08        .byte $08
- D 0 - I - 0x0179C7 05:99B7: E0        .byte $E0, $B4, $40, $FC
- D 0 - I - 0x0179CB 05:99BB: E8        .byte $E8, $B8, $40, $04
- D 0 - I - 0x0179CF 05:99BF: E8        .byte $E8, $B0, $40, $FC
- D 0 - I - 0x0179D3 05:99C3: E8        .byte $E8, $B2, $40, $F4
- D 0 - I - 0x0179D7 05:99C7: F0        .byte $F0, $B8, $C0, $04
- D 0 - I - 0x0179DB 05:99CB: F0        .byte $F0, $B1, $40, $FC
- D 0 - I - 0x0179DF 05:99CF: F0        .byte $F0, $B3, $40, $F5
- D 0 - I - 0x0179E3 05:99D3: F8        .byte $F8, $B7, $40, $FD

loc_egyptian_bow_left_frame_3:
- D 0 - I - 0x0179E7 05:99D7: 08        .byte $08
- D 0 - I - 0x0179E8 05:99D8: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x0179EC 05:99DC: E8        .byte $E8, $B8, $00, $F4
- D 0 - I - 0x0179F0 05:99E0: E8        .byte $E8, $B0, $00, $FC
- D 0 - I - 0x0179F4 05:99E4: E8        .byte $E8, $B2, $00, $04
- D 0 - I - 0x0179F8 05:99E8: F0        .byte $F0, $B8, $80, $F4
- D 0 - I - 0x0179FC 05:99EC: F0        .byte $F0, $B1, $00, $FC
- D 0 - I - 0x017A00 05:99F0: F0        .byte $F0, $B3, $00, $03
- D 0 - I - 0x017A04 05:99F4: F8        .byte $F8, $B7, $00, $FB

loc_egyptian_bow_right_frame_4:
- D 0 - I - 0x017A08 05:99F8: 07        .byte $07
- D 0 - I - 0x017A09 05:99F9: E8        .byte $E8, $B4, $40, $FC
- D 0 - I - 0x017A0D 05:99FD: F0        .byte $F0, $B8, $40, $04
- D 0 - I - 0x017A11 05:9A01: F0        .byte $F0, $B0, $40, $FC
- D 0 - I - 0x017A15 05:9A05: F0        .byte $F0, $B2, $40, $F4
- D 0 - I - 0x017A19 05:9A09: F8        .byte $F8, $BC, $40, $04
- D 0 - I - 0x017A1D 05:9A0D: F8        .byte $F8, $B1, $40, $FC
- D 0 - I - 0x017A21 05:9A11: F8        .byte $F8, $B3, $40, $F5

loc_egyptian_bow_left_frame_4:
- D 0 - I - 0x017A25 05:9A15: 07        .byte $07
- D 0 - I - 0x017A26 05:9A16: E8        .byte $E8, $B4, $00, $FC
- D 0 - I - 0x017A2A 05:9A1A: F0        .byte $F0, $B8, $00, $F4
- D 0 - I - 0x017A2E 05:9A1E: F0        .byte $F0, $B0, $00, $FC
- D 0 - I - 0x017A32 05:9A22: F0        .byte $F0, $B2, $00, $04
- D 0 - I - 0x017A36 05:9A26: F8        .byte $F8, $BC, $00, $F4
- D 0 - I - 0x017A3A 05:9A2A: F8        .byte $F8, $B1, $00, $FC
- D 0 - I - 0x017A3E 05:9A2E: F8        .byte $F8, $B3, $00, $03

loc_egyptian_bow_right_frame_5:
- D 0 - I - 0x017A42 05:9A32: 04        .byte $04
- D 0 - I - 0x017A43 05:9A33: F0        .byte $F0, $B5, $80, $02
- D 0 - I - 0x017A47 05:9A37: F8        .byte $F8, $B1, $80, $03
- D 0 - I - 0x017A4B 05:9A3B: F8        .byte $F8, $AE, $40, $FC
- D 0 - I - 0x017A4F 05:9A3F: F8        .byte $F8, $AF, $40, $F4

loc_egyptian_bow_left_frame_5:
- D 0 - I - 0x017A53 05:9A43: 04        .byte $04
- D 0 - I - 0x017A54 05:9A44: F0        .byte $F0, $B5, $C0, $F6
- D 0 - I - 0x017A58 05:9A48: F8        .byte $F8, $B1, $C0, $F5
- D 0 - I - 0x017A5C 05:9A4C: F8        .byte $F8, $AE, $00, $FC
- D 0 - I - 0x017A60 05:9A50: F8        .byte $F8, $AF, $00, $04

loc_egyptian_bow_right_frame_6:
- D 0 - I - 0x017A64 05:9A54: 07        .byte $07
- D 0 - I - 0x017A65 05:9A55: E8        .byte $E8, $B4, $40, $FC
- D 0 - I - 0x017A69 05:9A59: F0        .byte $F0, $B8, $40, $04
- D 0 - I - 0x017A6D 05:9A5D: F0        .byte $F0, $B0, $40, $FC
- D 0 - I - 0x017A71 05:9A61: F0        .byte $F0, $B2, $40, $F4
- D 0 - I - 0x017A75 05:9A65: F8        .byte $F8, $B8, $C0, $04
- D 0 - I - 0x017A79 05:9A69: F8        .byte $F8, $BD, $40, $FD
- D 0 - I - 0x017A7D 05:9A6D: F8        .byte $F8, $B3, $40, $F5

loc_egyptian_bow_left_frame_6:
- D 0 - I - 0x017A81 05:9A71: 07        .byte $07
- D 0 - I - 0x017A82 05:9A72: E8        .byte $E8, $B4, $00, $FC
- D 0 - I - 0x017A86 05:9A76: F0        .byte $F0, $B8, $00, $F4
- D 0 - I - 0x017A8A 05:9A7A: F0        .byte $F0, $B0, $00, $FC
- D 0 - I - 0x017A8E 05:9A7E: F0        .byte $F0, $B2, $00, $04
- D 0 - I - 0x017A92 05:9A82: F8        .byte $F8, $B8, $80, $F4
- D 0 - I - 0x017A96 05:9A86: F8        .byte $F8, $BD, $00, $FB
- D 0 - I - 0x017A9A 05:9A8A: F8        .byte $F8, $B3, $00, $03

loc_egyptian_bow_right_frame_7:
- D 0 - I - 0x017A9E 05:9A8E: 08        .byte $08
- D 0 - I - 0x017A9F 05:9A8F: E0        .byte $E0, $B4, $40, $FC
- D 0 - I - 0x017AA3 05:9A93: E8        .byte $E8, $B8, $40, $04
- D 0 - I - 0x017AA7 05:9A97: E8        .byte $E8, $B0, $40, $FC
- D 0 - I - 0x017AAB 05:9A9B: E8        .byte $E8, $BB, $40, $F5
- D 0 - I - 0x017AAF 05:9A9F: F0        .byte $F0, $B8, $C0, $04
- D 0 - I - 0x017AB3 05:9AA3: F0        .byte $F0, $B1, $40, $FC
- D 0 - I - 0x017AB7 05:9AA7: F0        .byte $F0, $B3, $40, $F5
- D 0 - I - 0x017ABB 05:9AAB: F8        .byte $F8, $B5, $40, $FD

loc_egyptian_bow_left_frame_7:
- D 0 - I - 0x017ABF 05:9AAF: 08        .byte $08
- D 0 - I - 0x017AC0 05:9AB0: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x017AC4 05:9AB4: E8        .byte $E8, $B8, $00, $F4
- D 0 - I - 0x017AC8 05:9AB8: E8        .byte $E8, $B0, $00, $FC
- D 0 - I - 0x017ACC 05:9ABC: E8        .byte $E8, $BB, $00, $03
- D 0 - I - 0x017AD0 05:9AC0: F0        .byte $F0, $B8, $80, $F4
- D 0 - I - 0x017AD4 05:9AC4: F0        .byte $F0, $B1, $00, $FC
- D 0 - I - 0x017AD8 05:9AC8: F0        .byte $F0, $B3, $00, $03
- D 0 - I - 0x017ADC 05:9ACC: F8        .byte $F8, $B5, $00, $FB

loc_egyptian_bow_right_frame_8:
- D 0 - I - 0x017AE0 05:9AD0: 08        .byte $08
- D 0 - I - 0x017AE1 05:9AD1: E0        .byte $E0, $B4, $40, $FC
- D 0 - I - 0x017AE5 05:9AD5: E8        .byte $E8, $BA, $40, $04
- D 0 - I - 0x017AE9 05:9AD9: E8        .byte $E8, $B0, $40, $FC
- D 0 - I - 0x017AED 05:9ADD: E8        .byte $E8, $B2, $40, $F4
- D 0 - I - 0x017AF1 05:9AE1: F0        .byte $F0, $BA, $C0, $04
- D 0 - I - 0x017AF5 05:9AE5: F0        .byte $F0, $B1, $40, $FC
- D 0 - I - 0x017AF9 05:9AE9: F0        .byte $F0, $B3, $40, $F5
- D 0 - I - 0x017AFD 05:9AED: F8        .byte $F8, $B5, $40, $FD

loc_egyptian_bow_left_frame_8:
- D 0 - I - 0x017B01 05:9AF1: 08        .byte $08
- D 0 - I - 0x017B02 05:9AF2: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x017B06 05:9AF6: E8        .byte $E8, $BA, $00, $F4
- D 0 - I - 0x017B0A 05:9AFA: E8        .byte $E8, $B0, $00, $FC
- D 0 - I - 0x017B0E 05:9AFE: E8        .byte $E8, $B2, $00, $04
- D 0 - I - 0x017B12 05:9B02: F0        .byte $F0, $BA, $80, $F4
- D 0 - I - 0x017B16 05:9B06: F0        .byte $F0, $B1, $00, $FC
- D 0 - I - 0x017B1A 05:9B0A: F0        .byte $F0, $B3, $00, $03
- D 0 - I - 0x017B1E 05:9B0E: F8        .byte $F8, $B5, $00, $FB

loc_egyptian_sword_right_frame_1:
- D 0 - I - 0x017B22 05:9B12: 04        .byte $04
- D 0 - I - 0x017B23 05:9B13: E0        .byte $E0, $86, $40, $FC
- D 0 - I - 0x017B27 05:9B17: E8        .byte $E8, $87, $40, $FC
- D 0 - I - 0x017B2B 05:9B1B: F0        .byte $F0, $88, $40, $FD
- D 0 - I - 0x017B2F 05:9B1F: F8        .byte $F8, $80, $40, $FD

loc_egyptian_sword_left_frame_1:
- D 0 - I - 0x017B33 05:9B23: 04        .byte $04
- D 0 - I - 0x017B34 05:9B24: E0        .byte $E0, $86, $00, $FC
- D 0 - I - 0x017B38 05:9B28: E8        .byte $E8, $87, $00, $FC
- D 0 - I - 0x017B3C 05:9B2C: F0        .byte $F0, $88, $00, $FB
- D 0 - I - 0x017B40 05:9B30: F8        .byte $F8, $80, $00, $FB

loc_egyptian_sword_right_frame_2:
- D 0 - I - 0x017B44 05:9B34: 04        .byte $04
- D 0 - I - 0x017B45 05:9B35: E0        .byte $E0, $86, $40, $FC
- D 0 - I - 0x017B49 05:9B39: E8        .byte $E8, $87, $40, $FC
- D 0 - I - 0x017B4D 05:9B3D: F0        .byte $F0, $88, $40, $FD
- D 0 - I - 0x017B51 05:9B41: F8        .byte $F8, $81, $40, $FD

loc_egyptian_sword_left_frame_2:
- D 0 - I - 0x017B55 05:9B45: 04        .byte $04
- D 0 - I - 0x017B56 05:9B46: E0        .byte $E0, $86, $00, $FC
- D 0 - I - 0x017B5A 05:9B4A: E8        .byte $E8, $87, $00, $FC
- D 0 - I - 0x017B5E 05:9B4E: F0        .byte $F0, $88, $00, $FB
- D 0 - I - 0x017B62 05:9B52: F8        .byte $F8, $81, $00, $FB

loc_egyptian_sword_right_frame_3:
- D 0 - I - 0x017B66 05:9B56: 04        .byte $04
- D 0 - I - 0x017B67 05:9B57: E0        .byte $E0, $86, $40, $FC
- D 0 - I - 0x017B6B 05:9B5B: E8        .byte $E8, $87, $40, $FC
- D 0 - I - 0x017B6F 05:9B5F: F0        .byte $F0, $88, $40, $FD
- D 0 - I - 0x017B73 05:9B63: F8        .byte $F8, $82, $40, $FD

loc_egyptian_sword_left_frame_3:
- D 0 - I - 0x017B77 05:9B67: 04        .byte $04
- D 0 - I - 0x017B78 05:9B68: E0        .byte $E0, $86, $00, $FC
- D 0 - I - 0x017B7C 05:9B6C: E8        .byte $E8, $87, $00, $FC
- D 0 - I - 0x017B80 05:9B70: F0        .byte $F0, $88, $00, $FB
- D 0 - I - 0x017B84 05:9B74: F8        .byte $F8, $82, $00, $FB

loc_egyptian_sword_right_frame_4:
- D 0 - I - 0x017B88 05:9B78: 04        .byte $04
- D 0 - I - 0x017B89 05:9B79: E8        .byte $E8, $86, $40, $FC
- D 0 - I - 0x017B8D 05:9B7D: F0        .byte $F0, $87, $40, $FC
- D 0 - I - 0x017B91 05:9B81: F8        .byte $F8, $88, $40, $FD
- D 0 - I - 0x017B95 05:9B85: F9        .byte $F9, $8C, $40, $05

loc_egyptian_sword_left_frame_4:
- D 0 - I - 0x017B99 05:9B89: 04        .byte $04
- D 0 - I - 0x017B9A 05:9B8A: E8        .byte $E8, $86, $00, $FC
- D 0 - I - 0x017B9E 05:9B8E: F0        .byte $F0, $87, $00, $FC
- D 0 - I - 0x017BA2 05:9B92: F8        .byte $F8, $88, $00, $FB
- D 0 - I - 0x017BA6 05:9B96: F9        .byte $F9, $8C, $00, $F3

loc_egyptian_sword_right_frame_5:
- D 0 - I - 0x017BAA 05:9B9A: 04        .byte $04
- D 0 - I - 0x017BAB 05:9B9B: F2        .byte $F2, $80, $80, $04
- D 0 - I - 0x017BAF 05:9B9F: FA        .byte $FA, $8D, $40, $04
- D 0 - I - 0x017BB3 05:9BA3: FA        .byte $FA, $8E, $40, $FC
- D 0 - I - 0x017BB7 05:9BA7: FA        .byte $FA, $8F, $40, $F4

loc_egyptian_sword_left_frame_5:
- D 0 - I - 0x017BBB 05:9BAB: 04        .byte $04
- D 0 - I - 0x017BBC 05:9BAC: F2        .byte $F2, $80, $C0, $F4
- D 0 - I - 0x017BC0 05:9BB0: FA        .byte $FA, $8D, $00, $F4
- D 0 - I - 0x017BC4 05:9BB4: FA        .byte $FA, $8E, $00, $FC
- D 0 - I - 0x017BC8 05:9BB8: FA        .byte $FA, $8F, $00, $04

loc_egyptian_sword_right_frame_6:
- D 0 - I - 0x017BCC 05:9BBC: 03        .byte $03
- D 0 - I - 0x017BCD 05:9BBD: E8        .byte $E8, $86, $40, $FC
- D 0 - I - 0x017BD1 05:9BC1: F0        .byte $F0, $87, $40, $FC
- D 0 - I - 0x017BD5 05:9BC5: F8        .byte $F8, $89, $40, $FC

loc_egyptian_sword_left_frame_6:
- D 0 - I - 0x017BD9 05:9BC9: 03        .byte $03
- D 0 - I - 0x017BDA 05:9BCA: E8        .byte $E8, $86, $00, $FC
- D 0 - I - 0x017BDE 05:9BCE: F0        .byte $F0, $87, $00, $FC
- D 0 - I - 0x017BE2 05:9BD2: F8        .byte $F8, $89, $00, $FC

loc_egyptian_sword_right_frame_8:
- D 0 - I - 0x017BE6 05:9BD6: 02        .byte $02
- D 0 - I - 0x017BE7 05:9BD7: EA        .byte $EA, $8A, $40, $0C
- D 0 - I - 0x017BEB 05:9BDB: EB        .byte $EB, $8B, $40, $04

loc_egyptian_sword_left_frame_8:
- D 0 - I - 0x017BEF 05:9BDF: 02        .byte $02
- D 0 - I - 0x017BF0 05:9BE0: EA        .byte $EA, $8A, $00, $EC
- D 0 - I - 0x017BF4 05:9BE4: EB        .byte $EB, $8B, $00, $F4

loc_egyptian_sword_right_frame_9:
- D 0 - I - 0x017BF8 05:9BE8: 02        .byte $02
- D 0 - I - 0x017BF9 05:9BE9: EE        .byte $EE, $8A, $40, $0C
- D 0 - I - 0x017BFD 05:9BED: ED        .byte $ED, $8B, $C0, $04

loc_egyptian_sword_left_frame_9:
- D 0 - I - 0x017C01 05:9BF1: 02        .byte $02
- D 0 - I - 0x017C02 05:9BF2: EE        .byte $EE, $8A, $00, $EC
- D 0 - I - 0x017C06 05:9BF6: ED        .byte $ED, $8B, $80, $F4

loc_egyptian_sword_right_frame_7:
- D 0 - I - 0x017C0A 05:9BFA: 03        .byte $03
- D 0 - I - 0x017C0B 05:9BFB: D8        .byte $D8, $83, $40, $FC
- D 0 - I - 0x017C0F 05:9BFF: DC        .byte $DC, $84, $40, $04
- D 0 - I - 0x017C13 05:9C03: E4        .byte $E4, $85, $40, $04

loc_egyptian_sword_left_frame_7:
- D 0 - I - 0x017C17 05:9C07: 03        .byte $03
- D 0 - I - 0x017C18 05:9C08: D8        .byte $D8, $83, $00, $FC
- D 0 - I - 0x017C1C 05:9C0C: DC        .byte $DC, $84, $00, $F4
- D 0 - I - 0x017C20 05:9C10: E4        .byte $E4, $85, $00, $F4

loc_ninja_right_frame_1:
- D 0 - I - 0x017C24 05:9C14: 06        .byte $06
- D 0 - I - 0x017C25 05:9C15: 00        .byte $00, $A4, $40, $10
- D 0 - I - 0x017C29 05:9C19: 00        .byte $00, $90, $40, $08
- D 0 - I - 0x017C2D 05:9C1D: 00        .byte $00, $92, $40, $00
- D 0 - I - 0x017C31 05:9C21: 00        .byte $00, $A6, $40, $F8
- D 0 - I - 0x017C35 05:9C25: 08        .byte $08, $91, $40, $07
- D 0 - I - 0x017C39 05:9C29: 08        .byte $08, $93, $40, $FF

loc_ninja_left_frame_1:
- D 0 - I - 0x017C3D 05:9C2D: 06        .byte $06
- D 0 - I - 0x017C3E 05:9C2E: 00        .byte $00, $A4, $00, $E8
- D 0 - I - 0x017C42 05:9C32: 00        .byte $00, $90, $00, $F0
- D 0 - I - 0x017C46 05:9C36: 00        .byte $00, $92, $00, $F8
- D 0 - I - 0x017C4A 05:9C3A: 00        .byte $00, $A6, $00, $00
- D 0 - I - 0x017C4E 05:9C3E: 08        .byte $08, $91, $00, $F1
- D 0 - I - 0x017C52 05:9C42: 08        .byte $08, $93, $00, $F9

loc_ninja_right_frame_2:
- D 0 - I - 0x017C56 05:9C46: 06        .byte $06
- D 0 - I - 0x017C57 05:9C47: 00        .byte $00, $98, $40, $10
- D 0 - I - 0x017C5B 05:9C4B: 00        .byte $00, $9A, $40, $08
- D 0 - I - 0x017C5F 05:9C4F: 00        .byte $00, $99, $40, $00
- D 0 - I - 0x017C63 05:9C53: 00        .byte $00, $9B, $40, $F8
- D 0 - I - 0x017C67 05:9C57: 08        .byte $08, $91, $40, $07
- D 0 - I - 0x017C6B 05:9C5B: 08        .byte $08, $93, $40, $FF

loc_ninja_left_frame_2:
- D 0 - I - 0x017C6F 05:9C5F: 06        .byte $06
- D 0 - I - 0x017C70 05:9C60: 00        .byte $00, $98, $00, $E8
- D 0 - I - 0x017C74 05:9C64: 00        .byte $00, $9A, $00, $F0
- D 0 - I - 0x017C78 05:9C68: 00        .byte $00, $99, $00, $F8
- D 0 - I - 0x017C7C 05:9C6C: 00        .byte $00, $9B, $00, $00
- D 0 - I - 0x017C80 05:9C70: 08        .byte $08, $91, $00, $F1
- D 0 - I - 0x017C84 05:9C74: 08        .byte $08, $93, $00, $F9

loc_ninja_right_frame_3:
- D 0 - I - 0x017C88 05:9C78: 06        .byte $06
- D 0 - I - 0x017C89 05:9C79: 00        .byte $00, $9C, $40, $F4
- D 0 - I - 0x017C8D 05:9C7D: 08        .byte $08, $9D, $40, $F4
- D 0 - I - 0x017C91 05:9C81: 10        .byte $10, $9E, $40, $F4
- D 0 - I - 0x017C95 05:9C85: 18        .byte $18, $A8, $40, $FC
- D 0 - I - 0x017C99 05:9C89: 18        .byte $18, $9F, $40, $F4
- D 0 - I - 0x017C9D 05:9C8D: 20        .byte $20, $A9, $40, $FC

loc_ninja_left_frame_3:
- D 0 - I - 0x017CA1 05:9C91: 06        .byte $06
- D 0 - I - 0x017CA2 05:9C92: 00        .byte $00, $9C, $00, $04
- D 0 - I - 0x017CA6 05:9C96: 08        .byte $08, $9D, $00, $04
- D 0 - I - 0x017CAA 05:9C9A: 10        .byte $10, $9E, $00, $04
- D 0 - I - 0x017CAE 05:9C9E: 18        .byte $18, $A8, $00, $FC
- D 0 - I - 0x017CB2 05:9CA2: 18        .byte $18, $9F, $00, $04
- D 0 - I - 0x017CB6 05:9CA6: 20        .byte $20, $A9, $00, $FC

loc_ninja_right_frame_4:
- D 0 - I - 0x017CBA 05:9CAA: 06        .byte $06
- D 0 - I - 0x017CBB 05:9CAB: 00        .byte $00, $94, $40, $00
- D 0 - I - 0x017CBF 05:9CAF: 00        .byte $00, $96, $40, $F8
- D 0 - I - 0x017CC3 05:9CB3: 08        .byte $08, $A5, $40, $08
- D 0 - I - 0x017CC7 05:9CB7: 08        .byte $08, $95, $40, $00
- D 0 - I - 0x017CCB 05:9CBB: 08        .byte $08, $97, $40, $F8
- D 0 - I - 0x017CCF 05:9CBF: 10        .byte $10, $A7, $40, $00

loc_ninja_left_frame_4:
- D 0 - I - 0x017CD3 05:9CC3: 06        .byte $06
- D 0 - I - 0x017CD4 05:9CC4: 00        .byte $00, $94, $00, $F8
- D 0 - I - 0x017CD8 05:9CC8: 00        .byte $00, $96, $00, $00
- D 0 - I - 0x017CDC 05:9CCC: 08        .byte $08, $A5, $00, $F0
- D 0 - I - 0x017CE0 05:9CD0: 08        .byte $08, $95, $00, $F8
- D 0 - I - 0x017CE4 05:9CD4: 08        .byte $08, $97, $00, $00
- D 0 - I - 0x017CE8 05:9CD8: 10        .byte $10, $A7, $00, $F8

- D 0 - I - 0x017CEC 05:9CDC: 01        .byte $01   ; 
- D 0 - I - 0x017CED 05:9CDD: F8        .byte $F8   ; 
- D 0 - I - 0x017CEE 05:9CDE: AA        .byte $AA   ; 
- D 0 - I - 0x017CEF 05:9CDF: 40        .byte $40   ; 
- D 0 - I - 0x017CF0 05:9CE0: FC        .byte $FC   ; 

- D 0 - I - 0x017CF1 05:9CE1: 01        .byte $01   ; 
- D 0 - I - 0x017CF2 05:9CE2: F8        .byte $F8   ; 
- D 0 - I - 0x017CF3 05:9CE3: AA        .byte $AA   ; 
- D 0 - I - 0x017CF4 05:9CE4: 00        .byte $00   ; 
- D 0 - I - 0x017CF5 05:9CE5: FC        .byte $FC   ; 

loc_ninja_right_frame_5:
- D 0 - I - 0x017CF6 05:9CE6: 06        .byte $06
- D 0 - I - 0x017CF7 05:9CE7: F5        .byte $F5, $A4, $40, $10
- D 0 - I - 0x017CFB 05:9CEB: F5        .byte $F5, $90, $40, $08
- D 0 - I - 0x017CFF 05:9CEF: F5        .byte $F5, $92, $40, $00
- D 0 - I - 0x017D03 05:9CF3: F5        .byte $F5, $A6, $40, $F8
- D 0 - I - 0x017D07 05:9CF7: FD        .byte $FD, $91, $40, $07
- D 0 - I - 0x017D0B 05:9CFB: FD        .byte $FD, $93, $40, $FF

loc_ninja_left_frame_5:
- D 0 - I - 0x017D0F 05:9CFF: 06        .byte $06
- D 0 - I - 0x017D10 05:9D00: F5        .byte $F5, $A4, $00, $E8
- D 0 - I - 0x017D14 05:9D04: F5        .byte $F5, $90, $00, $F0
- D 0 - I - 0x017D18 05:9D08: F5        .byte $F5, $92, $00, $F8
- D 0 - I - 0x017D1C 05:9D0C: F5        .byte $F5, $A6, $00, $00
- D 0 - I - 0x017D20 05:9D10: FD        .byte $FD, $91, $00, $F1
- D 0 - I - 0x017D24 05:9D14: FD        .byte $FD, $93, $00, $F9

loc_egyptian_boomerung_right_frame_1:
- D 0 - I - 0x017D28 05:9D18: 06        .byte $06
- D 0 - I - 0x017D29 05:9D19: E0        .byte $E0, $9E, $42, $FA
- D 0 - I - 0x017D2D 05:9D1D: E8        .byte $E8, $9F, $42, $F8
- D 0 - I - 0x017D31 05:9D21: F0        .byte $F0, $A0, $42, $00
- D 0 - I - 0x017D35 05:9D25: F0        .byte $F0, $A2, $42, $F8
- D 0 - I - 0x017D39 05:9D29: F8        .byte $F8, $A1, $42, $00
- D 0 - I - 0x017D3D 05:9D2D: F8        .byte $F8, $A3, $42, $F8

loc_egyptian_boomerung_left_frame_1:
- D 0 - I - 0x017D41 05:9D31: 06        .byte $06
- D 0 - I - 0x017D42 05:9D32: E0        .byte $E0, $9E, $02, $FE
- D 0 - I - 0x017D46 05:9D36: E8        .byte $E8, $9F, $02, $00
- D 0 - I - 0x017D4A 05:9D3A: F0        .byte $F0, $A0, $02, $F8
- D 0 - I - 0x017D4E 05:9D3E: F0        .byte $F0, $A2, $02, $00
- D 0 - I - 0x017D52 05:9D42: F8        .byte $F8, $A1, $02, $F8
- D 0 - I - 0x017D56 05:9D46: F8        .byte $F8, $A3, $02, $00

loc_egyptian_boomerung_right_frame_2:
- D 0 - I - 0x017D5A 05:9D4A: 05        .byte $05
- D 0 - I - 0x017D5B 05:9D4B: E0        .byte $E0, $9E, $42, $FA
- D 0 - I - 0x017D5F 05:9D4F: E8        .byte $E8, $9F, $42, $F8
- D 0 - I - 0x017D63 05:9D53: F0        .byte $F0, $A0, $42, $00
- D 0 - I - 0x017D67 05:9D57: F0        .byte $F0, $A2, $42, $F8
- D 0 - I - 0x017D6B 05:9D5B: F8        .byte $F8, $9D, $42, $FA

loc_egyptian_boomerung_left_frame_2:
- D 0 - I - 0x017D6F 05:9D5F: 05        .byte $05
- D 0 - I - 0x017D70 05:9D60: E0        .byte $E0, $9E, $02, $FE
- D 0 - I - 0x017D74 05:9D64: E8        .byte $E8, $9F, $02, $00
- D 0 - I - 0x017D78 05:9D68: F0        .byte $F0, $A0, $02, $F8
- D 0 - I - 0x017D7C 05:9D6C: F0        .byte $F0, $A2, $02, $00
- D 0 - I - 0x017D80 05:9D70: F8        .byte $F8, $9D, $02, $FE

loc_egyptian_boomerung_right_frame_3:
- D 0 - I - 0x017D84 05:9D74: 06        .byte $06
- D 0 - I - 0x017D85 05:9D75: E0        .byte $E0, $9E, $42, $FA
- D 0 - I - 0x017D89 05:9D79: E8        .byte $E8, $9F, $42, $F8
- D 0 - I - 0x017D8D 05:9D7D: F0        .byte $F0, $A0, $42, $00
- D 0 - I - 0x017D91 05:9D81: F0        .byte $F0, $A2, $42, $F8
- D 0 - I - 0x017D95 05:9D85: F8        .byte $F8, $9C, $42, $00
- D 0 - I - 0x017D99 05:9D89: F8        .byte $F8, $AD, $42, $F8

loc_egyptian_boomerung_left_frame_3:
- D 0 - I - 0x017D9D 05:9D8D: 06        .byte $06
- D 0 - I - 0x017D9E 05:9D8E: E0        .byte $E0, $9E, $02, $FE
- D 0 - I - 0x017DA2 05:9D92: E8        .byte $E8, $9F, $02, $00
- D 0 - I - 0x017DA6 05:9D96: F0        .byte $F0, $A0, $02, $F8
- D 0 - I - 0x017DAA 05:9D9A: F0        .byte $F0, $A2, $02, $00
- D 0 - I - 0x017DAE 05:9D9E: F8        .byte $F8, $9C, $02, $F8
- D 0 - I - 0x017DB2 05:9DA2: F8        .byte $F8, $AD, $02, $00

loc_egyptian_boomerung_right_frame_4:
- D 0 - I - 0x017DB6 05:9DA6: 04        .byte $04
- D 0 - I - 0x017DB7 05:9DA7: E8        .byte $E8, $9E, $42, $FA
- D 0 - I - 0x017DBB 05:9DAB: F0        .byte $F0, $9F, $42, $F8
- D 0 - I - 0x017DBF 05:9DAF: F8        .byte $F8, $A8, $42, $00
- D 0 - I - 0x017DC3 05:9DB3: F8        .byte $F8, $AA, $42, $F8

loc_egyptian_boomerung_left_frame_4:
- D 0 - I - 0x017DC7 05:9DB7: 04        .byte $04
- D 0 - I - 0x017DC8 05:9DB8: E8        .byte $E8, $9E, $02, $FE
- D 0 - I - 0x017DCC 05:9DBC: F0        .byte $F0, $9F, $02, $00
- D 0 - I - 0x017DD0 05:9DC0: F8        .byte $F8, $A8, $02, $F8
- D 0 - I - 0x017DD4 05:9DC4: F8        .byte $F8, $AA, $02, $00

loc_egyptian_boomerung_right_frame_5:
- D - - - - 0x017DD8 05:9DC8: 04        .byte $04
- D - - - - 0x017DD9 05:9DC9: F0        .byte $F0, $9D, $42, $08
- D - - - - 0x017DDD 05:9DCD: F8        .byte $F8, $A9, $42, $08
- D - - - - 0x017DE1 05:9DD1: F8        .byte $F8, $AB, $42, $00
- D - - - - 0x017DE5 05:9DD5: F8        .byte $F8, $BF, $42, $F8

loc_egyptian_boomerung_left_frame_5:
- D 0 - I - 0x017DE9 05:9DD9: 04        .byte $04
- D 0 - I - 0x017DEA 05:9DDA: F0        .byte $F0, $9D, $02, $F0
- D 0 - I - 0x017DEE 05:9DDE: F8        .byte $F8, $A9, $02, $F0
- D 0 - I - 0x017DF2 05:9DE2: F8        .byte $F8, $AB, $02, $F8
- D 0 - I - 0x017DF6 05:9DE6: F8        .byte $F8, $BF, $02, $00

loc_egyptian_boomerung_right_frame_6:
- D 0 - I - 0x017DFA 05:9DEA: 07        .byte $07
- D 0 - I - 0x017DFB 05:9DEB: E8        .byte $E8, $9E, $42, $FA
- D 0 - I - 0x017DFF 05:9DEF: F0        .byte $F0, $A4, $42, $00
- D 0 - I - 0x017E03 05:9DF3: F0        .byte $F0, $9F, $42, $F8
- D 0 - I - 0x017E07 05:9DF7: F8        .byte $F8, $A8, $42, $00
- D 0 - I - 0x017E0B 05:9DFB: F8        .byte $F8, $AA, $42, $F8
- D 0 - I - 0x017E0F 05:9DFF: E8        .byte $E8, $A6, $40, $02
- D 0 - I - 0x017E13 05:9E03: EF        .byte $EF, $A7, $40, $03

loc_egyptian_boomerung_left_frame_6:
- D 0 - I - 0x017E17 05:9E07: 07        .byte $07
- D 0 - I - 0x017E18 05:9E08: E8        .byte $E8, $9E, $02, $FE
- D 0 - I - 0x017E1C 05:9E0C: F0        .byte $F0, $A4, $02, $F8
- D 0 - I - 0x017E20 05:9E10: F0        .byte $F0, $9F, $02, $00
- D 0 - I - 0x017E24 05:9E14: F8        .byte $F8, $A8, $02, $F8
- D 0 - I - 0x017E28 05:9E18: F8        .byte $F8, $AA, $02, $00
- D 0 - I - 0x017E2C 05:9E1C: E8        .byte $E8, $A6, $00, $F6
- D 0 - I - 0x017E30 05:9E20: EF        .byte $EF, $A7, $00, $F5

loc_boomerung_frame_2:
- D 0 - I - 0x017E34 05:9E24: 02        .byte $02
- D 0 - I - 0x017E35 05:9E25: F5        .byte $F5, $A6, $00, $FC
- D 0 - I - 0x017E39 05:9E29: FC        .byte $FC, $A7, $00, $FB

loc_boomerung_frame_4:
- D 0 - I - 0x017E3D 05:9E2D: 02        .byte $02
- D 0 - I - 0x017E3E 05:9E2E: FD        .byte $FD, $A6, $00, $FC
- D 0 - I - 0x017E42 05:9E32: FC        .byte $FC, $A7, $C0, $F5

loc_boomerung_frame_6:
- D 0 - I - 0x017E46 05:9E36: 02        .byte $02
- D 0 - I - 0x017E47 05:9E37: 03        .byte $03, $A6, $C0, $FC
- D 0 - I - 0x017E4B 05:9E3B: FC        .byte $FC, $A7, $C0, $FD

loc_boomerung_frame_8:
- D 0 - I - 0x017E4F 05:9E3F: 02        .byte $02
- D 0 - I - 0x017E50 05:9E40: FB        .byte $FB, $A6, $C0, $FC
- D 0 - I - 0x017E54 05:9E44: FC        .byte $FC, $A7, $00, $03

loc_boomerung_frame_1:
- D 0 - I - 0x017E58 05:9E48: 02        .byte $02
- D 0 - I - 0x017E59 05:9E49: F5        .byte $F5, $A6, $40, $FC
- D 0 - I - 0x017E5D 05:9E4D: FC        .byte $FC, $A7, $40, $FD

loc_boomerung_frame_3:
- D 0 - I - 0x017E61 05:9E51: 02        .byte $02
- D 0 - I - 0x017E62 05:9E52: FD        .byte $FD, $A6, $40, $FC
- D 0 - I - 0x017E66 05:9E56: FC        .byte $FC, $A7, $80, $03

loc_boomerung_frame_5:
- D 0 - I - 0x017E6A 05:9E5A: 02        .byte $02
- D 0 - I - 0x017E6B 05:9E5B: 03        .byte $03, $A6, $80, $FC
- D 0 - I - 0x017E6F 05:9E5F: FC        .byte $FC, $A7, $80, $FB

loc_boomerung_frame_7:
- D 0 - I - 0x017E73 05:9E63: 02        .byte $02
- D 0 - I - 0x017E74 05:9E64: FB        .byte $FB, $A6, $80, $FC
- D 0 - I - 0x017E78 05:9E68: FC        .byte $FC, $A7, $40, $F5

loc_egyptian_boomerung_hand_right_frame_1:
- D 0 - I - 0x017E7C 05:9E6C: 03        .byte $03
- D 0 - I - 0x017E7D 05:9E6D: E8        .byte $E8, $A4, $42, $00
- D 0 - I - 0x017E81 05:9E71: E0        .byte $E0, $A6, $40, $02
- D 0 - I - 0x017E85 05:9E75: E7        .byte $E7, $A7, $40, $03

loc_egyptian_boomerung_hand_left_frame_1:
- D 0 - I - 0x017E89 05:9E79: 03        .byte $03
- D 0 - I - 0x017E8A 05:9E7A: E8        .byte $E8, $A4, $02, $F8
- D 0 - I - 0x017E8E 05:9E7E: E0        .byte $E0, $A6, $00, $F6
- D 0 - I - 0x017E92 05:9E82: E7        .byte $E7, $A7, $00, $F5

loc_egyptian_boomerung_hand_right_frame_2:
- D 0 - I - 0x017E96 05:9E86: 04        .byte $04
- D 0 - I - 0x017E97 05:9E87: E0        .byte $E0, $A5, $42, $02
- D 0 - I - 0x017E9B 05:9E8B: E8        .byte $E8, $AC, $42, $00
- D 0 - I - 0x017E9F 05:9E8F: D4        .byte $D4, $A6, $40, $01
- D 0 - I - 0x017EA3 05:9E93: DB        .byte $DB, $A7, $40, $02

loc_egyptian_boomerung_hand_left_frame_2:
- D 0 - I - 0x017EA7 05:9E97: 04        .byte $04
- D 0 - I - 0x017EA8 05:9E98: E0        .byte $E0, $A5, $02, $F6
- D 0 - I - 0x017EAC 05:9E9C: E8        .byte $E8, $AC, $02, $F8
- D 0 - I - 0x017EB0 05:9EA0: D4        .byte $D4, $A6, $00, $F7
- D 0 - I - 0x017EB4 05:9EA4: DB        .byte $DB, $A7, $00, $F6

loc_egyptian_boomerung_hand_right_frame_3:
- D 0 - I - 0x017EB8 05:9EA8: 01        .byte $01
- D 0 - I - 0x017EB9 05:9EA9: E8        .byte $E8, $A4, $42, $00

loc_egyptian_boomerung_hand_left_frame_3:
- D 0 - I - 0x017EBD 05:9EAD: 01        .byte $01
- D 0 - I - 0x017EBE 05:9EAE: E8        .byte $E8, $A4, $02, $F8

- - - - - - 0x017EC2 05:9EB2: 00        .byte $00   ; 
- - - - - - 0x017EC3 05:9EB3: 00        .byte $00   ; 
- - - - - - 0x017EC4 05:9EB4: 00        .byte $00   ; 
- - - - - - 0x017EC5 05:9EB5: 00        .byte $00   ; 
- - - - - - 0x017EC6 05:9EB6: 00        .byte $00   ; 
- - - - - - 0x017EC7 05:9EB7: 00        .byte $00   ; 
- - - - - - 0x017EC8 05:9EB8: 00        .byte $00   ; 
- - - - - - 0x017EC9 05:9EB9: 00        .byte $00   ; 
- - - - - - 0x017ECA 05:9EBA: 00        .byte $00   ; 
- - - - - - 0x017ECB 05:9EBB: 00        .byte $00   ; 
- - - - - - 0x017ECC 05:9EBC: 00        .byte $00   ; 
- - - - - - 0x017ECD 05:9EBD: 00        .byte $00   ; 
- - - - - - 0x017ECE 05:9EBE: 00        .byte $00   ; 
- - - - - - 0x017ECF 05:9EBF: 00        .byte $00   ; 
- - - - - - 0x017ED0 05:9EC0: 00        .byte $00   ; 
- - - - - - 0x017ED1 05:9EC1: 00        .byte $00   ; 
- - - - - - 0x017ED2 05:9EC2: 00        .byte $00   ; 
- - - - - - 0x017ED3 05:9EC3: 00        .byte $00   ; 
- - - - - - 0x017ED4 05:9EC4: 00        .byte $00   ; 
- - - - - - 0x017ED5 05:9EC5: 00        .byte $00   ; 
- - - - - - 0x017ED6 05:9EC6: 00        .byte $00   ; 
- - - - - - 0x017ED7 05:9EC7: 00        .byte $00   ; 
- - - - - - 0x017ED8 05:9EC8: 00        .byte $00   ; 
- - - - - - 0x017ED9 05:9EC9: 00        .byte $00   ; 
- - - - - - 0x017EDA 05:9ECA: 00        .byte $00   ; 
- - - - - - 0x017EDB 05:9ECB: 00        .byte $00   ; 
- - - - - - 0x017EDC 05:9ECC: 00        .byte $00   ; 
- - - - - - 0x017EDD 05:9ECD: 00        .byte $00   ; 
- - - - - - 0x017EDE 05:9ECE: 00        .byte $00   ; 
- - - - - - 0x017EDF 05:9ECF: 00        .byte $00   ; 
- - - - - - 0x017EE0 05:9ED0: 00        .byte $00   ; 
- - - - - - 0x017EE1 05:9ED1: 00        .byte $00   ; 
- - - - - - 0x017EE2 05:9ED2: 00        .byte $00   ; 
- - - - - - 0x017EE3 05:9ED3: 00        .byte $00   ; 
- - - - - - 0x017EE4 05:9ED4: 00        .byte $00   ; 
- - - - - - 0x017EE5 05:9ED5: 00        .byte $00   ; 
- - - - - - 0x017EE6 05:9ED6: 00        .byte $00   ; 
- - - - - - 0x017EE7 05:9ED7: 00        .byte $00   ; 
- - - - - - 0x017EE8 05:9ED8: 00        .byte $00   ; 
- - - - - - 0x017EE9 05:9ED9: 00        .byte $00   ; 
- - - - - - 0x017EEA 05:9EDA: 00        .byte $00   ; 
- - - - - - 0x017EEB 05:9EDB: 00        .byte $00   ; 
- - - - - - 0x017EEC 05:9EDC: 00        .byte $00   ; 
- - - - - - 0x017EED 05:9EDD: 00        .byte $00   ; 
- - - - - - 0x017EEE 05:9EDE: 00        .byte $00   ; 
- - - - - - 0x017EEF 05:9EDF: 00        .byte $00   ; 
- - - - - - 0x017EF0 05:9EE0: 00        .byte $00   ; 
- - - - - - 0x017EF1 05:9EE1: 00        .byte $00   ; 
- - - - - - 0x017EF2 05:9EE2: 00        .byte $00   ; 
- - - - - - 0x017EF3 05:9EE3: 00        .byte $00   ; 
- - - - - - 0x017EF4 05:9EE4: 00        .byte $00   ; 
- - - - - - 0x017EF5 05:9EE5: 00        .byte $00   ; 
- - - - - - 0x017EF6 05:9EE6: 00        .byte $00   ; 
- - - - - - 0x017EF7 05:9EE7: 00        .byte $00   ; 
- - - - - - 0x017EF8 05:9EE8: 00        .byte $00   ; 
- - - - - - 0x017EF9 05:9EE9: 00        .byte $00   ; 
- - - - - - 0x017EFA 05:9EEA: 00        .byte $00   ; 
- - - - - - 0x017EFB 05:9EEB: 00        .byte $00   ; 
- - - - - - 0x017EFC 05:9EEC: 00        .byte $00   ; 
- - - - - - 0x017EFD 05:9EED: 00        .byte $00   ; 
- - - - - - 0x017EFE 05:9EEE: 00        .byte $00   ; 
- - - - - - 0x017EFF 05:9EEF: 00        .byte $00   ; 
- - - - - - 0x017F00 05:9EF0: 00        .byte $00   ; 
- - - - - - 0x017F01 05:9EF1: 00        .byte $00   ; 
- - - - - - 0x017F02 05:9EF2: 00        .byte $00   ; 
- - - - - - 0x017F03 05:9EF3: 00        .byte $00   ; 
- - - - - - 0x017F04 05:9EF4: 00        .byte $00   ; 
- - - - - - 0x017F05 05:9EF5: 00        .byte $00   ; 
- - - - - - 0x017F06 05:9EF6: 00        .byte $00   ; 
- - - - - - 0x017F07 05:9EF7: 00        .byte $00   ; 
- - - - - - 0x017F08 05:9EF8: 00        .byte $00   ; 
- - - - - - 0x017F09 05:9EF9: 00        .byte $00   ; 
- - - - - - 0x017F0A 05:9EFA: 00        .byte $00   ; 
- - - - - - 0x017F0B 05:9EFB: 00        .byte $00   ; 
- - - - - - 0x017F0C 05:9EFC: 00        .byte $00   ; 
- - - - - - 0x017F0D 05:9EFD: 00        .byte $00   ; 
- - - - - - 0x017F0E 05:9EFE: 00        .byte $00   ; 
- - - - - - 0x017F0F 05:9EFF: 00        .byte $00   ; 
- - - - - - 0x017F10 05:9F00: 00        .byte $00   ; 
- - - - - - 0x017F11 05:9F01: 00        .byte $00   ; 
- - - - - - 0x017F12 05:9F02: 00        .byte $00   ; 
- - - - - - 0x017F13 05:9F03: 00        .byte $00   ; 
- - - - - - 0x017F14 05:9F04: 00        .byte $00   ; 
- - - - - - 0x017F15 05:9F05: 00        .byte $00   ; 
- - - - - - 0x017F16 05:9F06: 00        .byte $00   ; 
- - - - - - 0x017F17 05:9F07: 00        .byte $00   ; 
- - - - - - 0x017F18 05:9F08: 00        .byte $00   ; 
- - - - - - 0x017F19 05:9F09: 00        .byte $00   ; 
- - - - - - 0x017F1A 05:9F0A: 00        .byte $00   ; 
- - - - - - 0x017F1B 05:9F0B: 00        .byte $00   ; 
- - - - - - 0x017F1C 05:9F0C: 00        .byte $00   ; 
- - - - - - 0x017F1D 05:9F0D: 00        .byte $00   ; 
- - - - - - 0x017F1E 05:9F0E: 00        .byte $00   ; 
- - - - - - 0x017F1F 05:9F0F: 00        .byte $00   ; 
- - - - - - 0x017F20 05:9F10: 00        .byte $00   ; 
- - - - - - 0x017F21 05:9F11: 00        .byte $00   ; 
- - - - - - 0x017F22 05:9F12: 00        .byte $00   ; 
- - - - - - 0x017F23 05:9F13: 00        .byte $00   ; 
- - - - - - 0x017F24 05:9F14: 00        .byte $00   ; 
- - - - - - 0x017F25 05:9F15: 00        .byte $00   ; 
- - - - - - 0x017F26 05:9F16: 00        .byte $00   ; 
- - - - - - 0x017F27 05:9F17: 00        .byte $00   ; 
- - - - - - 0x017F28 05:9F18: 00        .byte $00   ; 
- - - - - - 0x017F29 05:9F19: 00        .byte $00   ; 
- - - - - - 0x017F2A 05:9F1A: 00        .byte $00   ; 
- - - - - - 0x017F2B 05:9F1B: 00        .byte $00   ; 
- - - - - - 0x017F2C 05:9F1C: 00        .byte $00   ; 
- - - - - - 0x017F2D 05:9F1D: 00        .byte $00   ; 
- - - - - - 0x017F2E 05:9F1E: 00        .byte $00   ; 
- - - - - - 0x017F2F 05:9F1F: 00        .byte $00   ; 
- - - - - - 0x017F30 05:9F20: 00        .byte $00   ; 
- - - - - - 0x017F31 05:9F21: 00        .byte $00   ; 
- - - - - - 0x017F32 05:9F22: 00        .byte $00   ; 
- - - - - - 0x017F33 05:9F23: 00        .byte $00   ; 
- - - - - - 0x017F34 05:9F24: 00        .byte $00   ; 
- - - - - - 0x017F35 05:9F25: 00        .byte $00   ; 
- - - - - - 0x017F36 05:9F26: 00        .byte $00   ; 
- - - - - - 0x017F37 05:9F27: 00        .byte $00   ; 
- - - - - - 0x017F38 05:9F28: 00        .byte $00   ; 
- - - - - - 0x017F39 05:9F29: 00        .byte $00   ; 
- - - - - - 0x017F3A 05:9F2A: 00        .byte $00   ; 
- - - - - - 0x017F3B 05:9F2B: 00        .byte $00   ; 
- - - - - - 0x017F3C 05:9F2C: 00        .byte $00   ; 
- - - - - - 0x017F3D 05:9F2D: 00        .byte $00   ; 
- - - - - - 0x017F3E 05:9F2E: 00        .byte $00   ; 
- - - - - - 0x017F3F 05:9F2F: 00        .byte $00   ; 
- - - - - - 0x017F40 05:9F30: 00        .byte $00   ; 
- - - - - - 0x017F41 05:9F31: 00        .byte $00   ; 
- - - - - - 0x017F42 05:9F32: 00        .byte $00   ; 
- - - - - - 0x017F43 05:9F33: 00        .byte $00   ; 
- - - - - - 0x017F44 05:9F34: 00        .byte $00   ; 
- - - - - - 0x017F45 05:9F35: 00        .byte $00   ; 
- - - - - - 0x017F46 05:9F36: 00        .byte $00   ; 
- - - - - - 0x017F47 05:9F37: 00        .byte $00   ; 
- - - - - - 0x017F48 05:9F38: 00        .byte $00   ; 
- - - - - - 0x017F49 05:9F39: 00        .byte $00   ; 
- - - - - - 0x017F4A 05:9F3A: 00        .byte $00   ; 
- - - - - - 0x017F4B 05:9F3B: 00        .byte $00   ; 
- - - - - - 0x017F4C 05:9F3C: 00        .byte $00   ; 
- - - - - - 0x017F4D 05:9F3D: 00        .byte $00   ; 
- - - - - - 0x017F4E 05:9F3E: 00        .byte $00   ; 
- - - - - - 0x017F4F 05:9F3F: 00        .byte $00   ; 
- - - - - - 0x017F50 05:9F40: 00        .byte $00   ; 
- - - - - - 0x017F51 05:9F41: 00        .byte $00   ; 
- - - - - - 0x017F52 05:9F42: 00        .byte $00   ; 
- - - - - - 0x017F53 05:9F43: 00        .byte $00   ; 
- - - - - - 0x017F54 05:9F44: 00        .byte $00   ; 
- - - - - - 0x017F55 05:9F45: 00        .byte $00   ; 
- - - - - - 0x017F56 05:9F46: 00        .byte $00   ; 
- - - - - - 0x017F57 05:9F47: 00        .byte $00   ; 
- - - - - - 0x017F58 05:9F48: 00        .byte $00   ; 
- - - - - - 0x017F59 05:9F49: 00        .byte $00   ; 
- - - - - - 0x017F5A 05:9F4A: 00        .byte $00   ; 
- - - - - - 0x017F5B 05:9F4B: 00        .byte $00   ; 
- - - - - - 0x017F5C 05:9F4C: 00        .byte $00   ; 
- - - - - - 0x017F5D 05:9F4D: 00        .byte $00   ; 
- - - - - - 0x017F5E 05:9F4E: 00        .byte $00   ; 
- - - - - - 0x017F5F 05:9F4F: 00        .byte $00   ; 
- - - - - - 0x017F60 05:9F50: 00        .byte $00   ; 
- - - - - - 0x017F61 05:9F51: 00        .byte $00   ; 
- - - - - - 0x017F62 05:9F52: 00        .byte $00   ; 
- - - - - - 0x017F63 05:9F53: 00        .byte $00   ; 
- - - - - - 0x017F64 05:9F54: 00        .byte $00   ; 
- - - - - - 0x017F65 05:9F55: 00        .byte $00   ; 
- - - - - - 0x017F66 05:9F56: 00        .byte $00   ; 
- - - - - - 0x017F67 05:9F57: 00        .byte $00   ; 
- - - - - - 0x017F68 05:9F58: 00        .byte $00   ; 
- - - - - - 0x017F69 05:9F59: 00        .byte $00   ; 
- - - - - - 0x017F6A 05:9F5A: 00        .byte $00   ; 
- - - - - - 0x017F6B 05:9F5B: 00        .byte $00   ; 
- - - - - - 0x017F6C 05:9F5C: 00        .byte $00   ; 
- - - - - - 0x017F6D 05:9F5D: 00        .byte $00   ; 
- - - - - - 0x017F6E 05:9F5E: 00        .byte $00   ; 
- - - - - - 0x017F6F 05:9F5F: 00        .byte $00   ; 
- - - - - - 0x017F70 05:9F60: 00        .byte $00   ; 
- - - - - - 0x017F71 05:9F61: 00        .byte $00   ; 
- - - - - - 0x017F72 05:9F62: 00        .byte $00   ; 
- - - - - - 0x017F73 05:9F63: 00        .byte $00   ; 
- - - - - - 0x017F74 05:9F64: 00        .byte $00   ; 
- - - - - - 0x017F75 05:9F65: 00        .byte $00   ; 
- - - - - - 0x017F76 05:9F66: 00        .byte $00   ; 
- - - - - - 0x017F77 05:9F67: 00        .byte $00   ; 
- - - - - - 0x017F78 05:9F68: 00        .byte $00   ; 
- - - - - - 0x017F79 05:9F69: 00        .byte $00   ; 
- - - - - - 0x017F7A 05:9F6A: 00        .byte $00   ; 
- - - - - - 0x017F7B 05:9F6B: 00        .byte $00   ; 
- - - - - - 0x017F7C 05:9F6C: 00        .byte $00   ; 
- - - - - - 0x017F7D 05:9F6D: 00        .byte $00   ; 
- - - - - - 0x017F7E 05:9F6E: 00        .byte $00   ; 
- - - - - - 0x017F7F 05:9F6F: 00        .byte $00   ; 
- - - - - - 0x017F80 05:9F70: 00        .byte $00   ; 
- - - - - - 0x017F81 05:9F71: 00        .byte $00   ; 
- - - - - - 0x017F82 05:9F72: 00        .byte $00   ; 
- - - - - - 0x017F83 05:9F73: 00        .byte $00   ; 
- - - - - - 0x017F84 05:9F74: 00        .byte $00   ; 
- - - - - - 0x017F85 05:9F75: 00        .byte $00   ; 
- - - - - - 0x017F86 05:9F76: 00        .byte $00   ; 
- - - - - - 0x017F87 05:9F77: 00        .byte $00   ; 
- - - - - - 0x017F88 05:9F78: 00        .byte $00   ; 
- - - - - - 0x017F89 05:9F79: 00        .byte $00   ; 
- - - - - - 0x017F8A 05:9F7A: 00        .byte $00   ; 
- - - - - - 0x017F8B 05:9F7B: 00        .byte $00   ; 
- - - - - - 0x017F8C 05:9F7C: 00        .byte $00   ; 
- - - - - - 0x017F8D 05:9F7D: 00        .byte $00   ; 
- - - - - - 0x017F8E 05:9F7E: 00        .byte $00   ; 
- - - - - - 0x017F8F 05:9F7F: 00        .byte $00   ; 
- - - - - - 0x017F90 05:9F80: 00        .byte $00   ; 
- - - - - - 0x017F91 05:9F81: 00        .byte $00   ; 
- - - - - - 0x017F92 05:9F82: 00        .byte $00   ; 
- - - - - - 0x017F93 05:9F83: 00        .byte $00   ; 
- - - - - - 0x017F94 05:9F84: 00        .byte $00   ; 
- - - - - - 0x017F95 05:9F85: 00        .byte $00   ; 
- - - - - - 0x017F96 05:9F86: 00        .byte $00   ; 
- - - - - - 0x017F97 05:9F87: 00        .byte $00   ; 
- - - - - - 0x017F98 05:9F88: 00        .byte $00   ; 
- - - - - - 0x017F99 05:9F89: 00        .byte $00   ; 
- - - - - - 0x017F9A 05:9F8A: 00        .byte $00   ; 
- - - - - - 0x017F9B 05:9F8B: 00        .byte $00   ; 
- - - - - - 0x017F9C 05:9F8C: 00        .byte $00   ; 
- - - - - - 0x017F9D 05:9F8D: 00        .byte $00   ; 
- - - - - - 0x017F9E 05:9F8E: 00        .byte $00   ; 
- - - - - - 0x017F9F 05:9F8F: 00        .byte $00   ; 
- - - - - - 0x017FA0 05:9F90: 00        .byte $00   ; 
- - - - - - 0x017FA1 05:9F91: 00        .byte $00   ; 
- - - - - - 0x017FA2 05:9F92: 00        .byte $00   ; 
- - - - - - 0x017FA3 05:9F93: 00        .byte $00   ; 
- - - - - - 0x017FA4 05:9F94: 00        .byte $00   ; 
- - - - - - 0x017FA5 05:9F95: 00        .byte $00   ; 
- - - - - - 0x017FA6 05:9F96: 00        .byte $00   ; 
- - - - - - 0x017FA7 05:9F97: 00        .byte $00   ; 
- - - - - - 0x017FA8 05:9F98: 00        .byte $00   ; 
- - - - - - 0x017FA9 05:9F99: 00        .byte $00   ; 
- - - - - - 0x017FAA 05:9F9A: 00        .byte $00   ; 
- - - - - - 0x017FAB 05:9F9B: 00        .byte $00   ; 
- - - - - - 0x017FAC 05:9F9C: 00        .byte $00   ; 
- - - - - - 0x017FAD 05:9F9D: 00        .byte $00   ; 
- - - - - - 0x017FAE 05:9F9E: 00        .byte $00   ; 
- - - - - - 0x017FAF 05:9F9F: 00        .byte $00   ; 
- - - - - - 0x017FB0 05:9FA0: 00        .byte $00   ; 
- - - - - - 0x017FB1 05:9FA1: 00        .byte $00   ; 
- - - - - - 0x017FB2 05:9FA2: 00        .byte $00   ; 
- - - - - - 0x017FB3 05:9FA3: 00        .byte $00   ; 
- - - - - - 0x017FB4 05:9FA4: 00        .byte $00   ; 
- - - - - - 0x017FB5 05:9FA5: 00        .byte $00   ; 
- - - - - - 0x017FB6 05:9FA6: 00        .byte $00   ; 
- - - - - - 0x017FB7 05:9FA7: 00        .byte $00   ; 
- - - - - - 0x017FB8 05:9FA8: 00        .byte $00   ; 
- - - - - - 0x017FB9 05:9FA9: 00        .byte $00   ; 
- - - - - - 0x017FBA 05:9FAA: 00        .byte $00   ; 
- - - - - - 0x017FBB 05:9FAB: 00        .byte $00   ; 
- - - - - - 0x017FBC 05:9FAC: 00        .byte $00   ; 
- - - - - - 0x017FBD 05:9FAD: 00        .byte $00   ; 
- - - - - - 0x017FBE 05:9FAE: 00        .byte $00   ; 
- - - - - - 0x017FBF 05:9FAF: 00        .byte $00   ; 
- - - - - - 0x017FC0 05:9FB0: 00        .byte $00   ; 
- - - - - - 0x017FC1 05:9FB1: 00        .byte $00   ; 
- - - - - - 0x017FC2 05:9FB2: 00        .byte $00   ; 
- - - - - - 0x017FC3 05:9FB3: 00        .byte $00   ; 
- - - - - - 0x017FC4 05:9FB4: 00        .byte $00   ; 
- - - - - - 0x017FC5 05:9FB5: 00        .byte $00   ; 
- - - - - - 0x017FC6 05:9FB6: 00        .byte $00   ; 
- - - - - - 0x017FC7 05:9FB7: 00        .byte $00   ; 
- - - - - - 0x017FC8 05:9FB8: 00        .byte $00   ; 
- - - - - - 0x017FC9 05:9FB9: 00        .byte $00   ; 
- - - - - - 0x017FCA 05:9FBA: 00        .byte $00   ; 
- - - - - - 0x017FCB 05:9FBB: 00        .byte $00   ; 
- - - - - - 0x017FCC 05:9FBC: 00        .byte $00   ; 
- - - - - - 0x017FCD 05:9FBD: 00        .byte $00   ; 
- - - - - - 0x017FCE 05:9FBE: 00        .byte $00   ; 
- - - - - - 0x017FCF 05:9FBF: 00        .byte $00   ; 
- - - - - - 0x017FD0 05:9FC0: 00        .byte $00   ; 
- - - - - - 0x017FD1 05:9FC1: 00        .byte $00   ; 
- - - - - - 0x017FD2 05:9FC2: 00        .byte $00   ; 
- - - - - - 0x017FD3 05:9FC3: 00        .byte $00   ; 
- - - - - - 0x017FD4 05:9FC4: 00        .byte $00   ; 
- - - - - - 0x017FD5 05:9FC5: 00        .byte $00   ; 
- - - - - - 0x017FD6 05:9FC6: 00        .byte $00   ; 
- - - - - - 0x017FD7 05:9FC7: 00        .byte $00   ; 
- - - - - - 0x017FD8 05:9FC8: 00        .byte $00   ; 
- - - - - - 0x017FD9 05:9FC9: 00        .byte $00   ; 
- - - - - - 0x017FDA 05:9FCA: 00        .byte $00   ; 
- - - - - - 0x017FDB 05:9FCB: 00        .byte $00   ; 
- - - - - - 0x017FDC 05:9FCC: 00        .byte $00   ; 
- - - - - - 0x017FDD 05:9FCD: 00        .byte $00   ; 
- - - - - - 0x017FDE 05:9FCE: 00        .byte $00   ; 
- - - - - - 0x017FDF 05:9FCF: 00        .byte $00   ; 
- - - - - - 0x017FE0 05:9FD0: 00        .byte $00   ; 
- - - - - - 0x017FE1 05:9FD1: 00        .byte $00   ; 
- - - - - - 0x017FE2 05:9FD2: 00        .byte $00   ; 
- - - - - - 0x017FE3 05:9FD3: 00        .byte $00   ; 
- - - - - - 0x017FE4 05:9FD4: 00        .byte $00   ; 
- - - - - - 0x017FE5 05:9FD5: 00        .byte $00   ; 
- - - - - - 0x017FE6 05:9FD6: 00        .byte $00   ; 
- - - - - - 0x017FE7 05:9FD7: 00        .byte $00   ; 
- - - - - - 0x017FE8 05:9FD8: 00        .byte $00   ; 
- - - - - - 0x017FE9 05:9FD9: 00        .byte $00   ; 
- - - - - - 0x017FEA 05:9FDA: 00        .byte $00   ; 
- - - - - - 0x017FEB 05:9FDB: 00        .byte $00   ; 
- - - - - - 0x017FEC 05:9FDC: 00        .byte $00   ; 
- - - - - - 0x017FED 05:9FDD: 00        .byte $00   ; 
- - - - - - 0x017FEE 05:9FDE: 00        .byte $00   ; 
- - - - - - 0x017FEF 05:9FDF: 00        .byte $00   ; 
- - - - - - 0x017FF0 05:9FE0: 00        .byte $00   ; 
- - - - - - 0x017FF1 05:9FE1: 00        .byte $00   ; 
- - - - - - 0x017FF2 05:9FE2: 00        .byte $00   ; 
- - - - - - 0x017FF3 05:9FE3: 00        .byte $00   ; 
- - - - - - 0x017FF4 05:9FE4: 00        .byte $00   ; 
- - - - - - 0x017FF5 05:9FE5: 00        .byte $00   ; 
- - - - - - 0x017FF6 05:9FE6: 00        .byte $00   ; 
- - - - - - 0x017FF7 05:9FE7: 00        .byte $00   ; 
- - - - - - 0x017FF8 05:9FE8: 00        .byte $00   ; 
- - - - - - 0x017FF9 05:9FE9: 00        .byte $00   ; 
- - - - - - 0x017FFA 05:9FEA: 00        .byte $00   ; 
- - - - - - 0x017FFB 05:9FEB: 00        .byte $00   ; 
- - - - - - 0x017FFC 05:9FEC: 00        .byte $00   ; 
- - - - - - 0x017FFD 05:9FED: 00        .byte $00   ; 
- - - - - - 0x017FFE 05:9FEE: 00        .byte $00   ; 
- - - - - - 0x017FFF 05:9FEF: 00        .byte $00   ; 
- - - - - - 0x018000 05:9FF0: 00        .byte $00   ; 
- - - - - - 0x018001 05:9FF1: 00        .byte $00   ; 
- - - - - - 0x018002 05:9FF2: 00        .byte $00   ; 
- - - - - - 0x018003 05:9FF3: 00        .byte $00   ; 
- - - - - - 0x018004 05:9FF4: 00        .byte $00   ; 
- - - - - - 0x018005 05:9FF5: 00        .byte $00   ; 
- - - - - - 0x018006 05:9FF6: 00        .byte $00   ; 
- - - - - - 0x018007 05:9FF7: 00        .byte $00   ; 
- - - - - - 0x018008 05:9FF8: 00        .byte $00   ; 
- - - - - - 0x018009 05:9FF9: 00        .byte $00   ; 
- - - - - - 0x01800A 05:9FFA: 00        .byte $00   ; 
- - - - - - 0x01800B 05:9FFB: 00        .byte $00   ; 
- - - - - - 0x01800C 05:9FFC: 00        .byte $00   ; 
- - - - - - 0x01800D 05:9FFD: 00        .byte $00   ; 
- - - - - - 0x01800E 05:9FFE: 00        .byte $00   ; 
- - - - - - 0x01800F 05:9FFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 05_2: 0x%X [%d]", ($A000 - *), ($A000 - *))



