.segment "BANK_02_1"
.include "bank_ram.inc"
.include "constants.inc"
.org $8000  ; for listing file
; 0x008010-0x00A00F
; Page 1 can transferred in 2 banks at the same time

.export loc_AD80_activate_sound_manager
.export tbl_select_characters_dialog
.export tbl_enemy_score
.export tbl_water_gap_level4

; See doc - audio_tracks.md

; (4 bytes each)
; 1 byte - the offset of the sound row list {00,15,2A,3F,54,69,7E,93} (i.e. the number of the sound rows)
; 2 byte - apu channel {0x00, 0x01, 0x02, 0x03}
; 3 byte - the low address of the track
; 4 byte - the high address of the track
tbl_sound_row_mini:     
- D - - - - 0x008010 02:8000: 54        .byte $54, $00           ; 0x00 start screen track1
                                        .addr loc_track0         ; CPU Address $8184
- D 0 - I - 0x008014 02:8004: 69        .byte $69, $01           ; 0x01 start screen track2
                                        .addr loc_track1         ; CPU Address $81B1
- D 0 - I - 0x008018 02:8008: 7E        .byte $7E, $02           ; 0x02 start screen track3
                                        .addr loc_track2         ; CPU Address $81D4
- D 0 - I - 0x00801C 02:800C: 93        .byte $93, $03           ; 0x03 start screen track4
                                        .addr loc_track3         ; CPU Address $81F7
- D 0 - I - 0x008020 02:8010: 54        .byte $54, $00           ; 0x04
                                        .addr loc_track4         ; CPU Address $821C
- D 0 - I - 0x008024 02:8014: 69        .byte $69, $01           ; 0x05
                                        .addr loc_track5         ; CPU Address $8281
- D 0 - I - 0x008028 02:8018: 54        .byte $54, $00           ; 0x06
                                        .addr loc_track6         ; CPU Address $82F7
- D 0 - I - 0x00802C 02:801C: 7E        .byte $7E, $02           ; 0x07
                                        .addr loc_track7         ; CPU Address $835A
- D 0 - I - 0x008030 02:8020: 54        .byte $54, $00           ; 0x08
                                        .addr loc_track8         ; CPU Address $83B1
- D 0 - I - 0x008034 02:8024: 7E        .byte $7E, $02           ; 0x09
                                        .addr loc_track9         ; CPU Address $8894
- D - - - - 0x008038 02:8028: 3F        .byte $3F, $03           ; 0x0A - blank
                                        .addr loc_trackA         ; CPU Address $84BD
- D 0 - I - 0x00803C 02:802C: 3F        .byte $3F, $03           ; 0x0B - 3rd sound row
                                        .addr loc_trackB         ; CPU Address $84BE
- D 0 - I - 0x008040 02:8030: 3F        .byte $3F, $03           ; 0x0C
                                        .addr loc_trackC         ; CPU Address $84C7
- D 0 - I - 0x008044 02:8034: 2A        .byte $2A, $01           ; 0x0D
                                        .addr loc_trackD         ; CPU Address $84D4
- D 0 - I - 0x008048 02:8038: 00        .byte $00, $01           ; 0x0E
                                        .addr loc_trackE         ; CPU Address $84DD
- D 0 - I - 0x00804C 02:803C: 3F        .byte $3F, $03           ; 0x0F
                                        .addr loc_trackF         ; CPU Address $84EA
- D 0 - I - 0x008050 02:8040: 2A        .byte $2A, $01           ; 0x10
                                        .addr loc_track10        ; CPU Address $84F5
- D 0 - I - 0x008054 02:8044: 2A        .byte $2A, $01           ; 0x11
                                        .addr loc_track11        ; CPU Address $84FC
- D 0 - I - 0x008058 02:8048: 15        .byte $15, $01           ; 0x12
                                        .addr loc_track12        ; CPU Address $8509
- D 0 - I - 0x00805C 02:804C: 2A        .byte $2A, $01           ; 0x13
                                        .addr loc_track13        ; CPU Address $8514
- D 0 - I - 0x008060 02:8050: 2A        .byte $2A, $01           ; 0x14
                                        .addr loc_track14        ; CPU Address $8529
- D 0 - I - 0x008064 02:8054: 2A        .byte $2A, $01           ; 0x15
                                        .addr loc_track15        ; CPU Address $853A
- D 0 - I - 0x008068 02:8058: 3F        .byte $3F, $03           ; 0x16
                                        .addr loc_track16        ; CPU Address $8541
- D 0 - I - 0x00806C 02:805C: 3F        .byte $3F, $03           ; 0x17
                                        .addr loc_track17        ; CPU Address $8548
- D 0 - I - 0x008070 02:8060: 2A        .byte $2A, $01           ; 0x18
                                        .addr loc_track18        ; CPU Address $8553
- D 0 - I - 0x008074 02:8064: 3F        .byte $3F, $03           ; 0x19
                                        .addr loc_track19        ; CPU Address $8562
- D 0 - I - 0x008078 02:8068: 3F        .byte $3F, $03           ; 0x1A
                                        .addr loc_track1A        ; CPU Address $856D
- D 0 - I - 0x00807C 02:806C: 54        .byte $54, $00           ; 0x1B
                                        .addr loc_track1B        ; CPU Address $8583
- D 0 - I - 0x008080 02:8070: 7E        .byte $7E, $02           ; 0x1C
                                        .addr loc_track1C        ; CPU Address $85E0
- D 0 - I - 0x008084 02:8074: 54        .byte $54, $00           ; 0x1D
                                        .addr loc_track1D        ; CPU Address $8617
- D 0 - I - 0x008088 02:8078: 7E        .byte $7E, $02           ; 0x1E
                                        .addr loc_track1E        ; CPU Address $864C
- D 0 - I - 0x00808C 02:807C: 54        .byte $54, $00           ; 0x1F
                                        .addr loc_track1F        ; CPU Address $86B1
- D 0 - I - 0x008090 02:8080: 7E        .byte $7E, $02           ; 0x20
                                        .addr loc_track20        ; CPU Address $86D2
- D 0 - I - 0x008094 02:8084: 2A        .byte $2A, $01           ; 0x21
                                        .addr loc_track21        ; CPU Address $8578
- D 0 - I - 0x008098 02:8088: 54        .byte $54, $00           ; 0x22
                                        .addr loc_track22        ; CPU Address $86EB
- D 0 - I - 0x00809C 02:808C: 7E        .byte $7E, $02           ; 0x23
                                        .addr loc_track23        ; CPU Address $8776
- D 0 - I - 0x0080A0 02:8090: 54        .byte $54, $00           ; 0x24
                                        .addr loc_track24        ; CPU Address $87B1
- D 0 - I - 0x0080A4 02:8094: 7E        .byte $7E, $02           ; 0x25
                                        .addr loc_track25        ; CPU Address $87D2
- D - - - - 0x0080A8 02:8098: 3F        .byte $3F, $03           ; 0x26 - blank
                                        .addr loc_track26        ; CPU Address $88F7
- D - - - - 0x0080AC 02:809C: 2A        .byte $2A, $01           ; 0x27 - blank
                                        .addr loc_track27        ; CPU Address $88F8
- D 0 - I - 0x0080B0 02:80A0: 3F        .byte $3F, $03           ; 0x28
                                        .addr loc_track28        ; CPU Address $88F9
- D 0 - I - 0x0080B4 02:80A4: 2A        .byte $2A, $01           ; 0x29
                                        .addr loc_track29        ; CPU Address $8900
- D 0 - I - 0x0080B8 02:80A8: 2A        .byte $2A, $01           ; 0x2A
                                        .addr loc_track2A        ; CPU Address $8909
- D - - - - 0x0080BC 02:80AC: 2A        .byte $2A, $01           ; 0x2B - blank
                                        .addr loc_track2B        ; CPU Address $891A
- D 0 - I - 0x0080C0 02:80B0: 3F        .byte $3F, $03           ; 0x2C
                                        .addr loc_track2C        ; CPU Address $891B
- D 0 - I - 0x0080C4 02:80B4: 3F        .byte $3F, $03           ; 0x2D
                                        .addr loc_track2D        ; CPU Address $8926
- D - - - - 0x0080C8 02:80B8: 3F        .byte $3F, $03           ; 0x2E - blank
                                        .addr loc_track2E        ; CPU Address $892F
- D - - - - 0x0080CC 02:80BC: 3F        .byte $3F, $03           ; 0x2F - blank
                                        .addr loc_track2F        ; CPU Address $8930
- D 0 - I - 0x0080D0 02:80C0: 2A        .byte $2A, $01           ; 0x30
                                        .addr loc_track30        ; CPU Address $8931
- D 0 - I - 0x0080D4 02:80C4: 3F        .byte $3F, $03           ; 0x31
                                        .addr loc_track31        ; CPU Address $8940
- D 0 - I - 0x0080D8 02:80C8: 3F        .byte $3F, $03           ; 0x32
                                        .addr loc_track32        ; CPU Address $8947
- D - - - - 0x0080DC 02:80CC: 3F        .byte $3F, $03           ; 0x33 - blank
                                        .addr loc_track33        ; CPU Address $8957
- D 0 - I - 0x0080E0 02:80D0: 2A        .byte $2A, $01           ; 0x34
                                        .addr loc_track34        ; CPU Address $8958
- D 0 - I - 0x0080E4 02:80D4: 2A        .byte $2A, $01           ; 0x35
                                        .addr loc_track35        ; CPU Address $895F
- D 0 - I - 0x0080E8 02:80D8: 3F        .byte $3F, $03           ; 0x36
                                        .addr loc_track36        ; CPU Address $896C
- D 0 - I - 0x0080EC 02:80DC: 2A        .byte $2A, $01           ; 0x37
                                        .addr loc_track37        ; CPU Address $8977
- d - - - - 0x0080F0 02:80E0: 2A        .byte $2A, $01           ; 0x38 - blank
                                        .addr loc_track38        ; CPU Address $8982
- D 0 - I - 0x0080F4 02:80E4: 7E        .byte $7E, $02           ; 0x39
                                        .addr loc_track39        ; CPU Address $87F1
- D 0 - I - 0x0080F8 02:80E8: 69        .byte $69, $01           ; 0x3A
                                        .addr loc_track3A        ; CPU Address $8829
- D 0 - I - 0x0080FC 02:80EC: 69        .byte $69, $01           ; 0x3B
                                        .addr loc_track3B        ; CPU Address $8436
- D - - - - 0x008100 02:80F0: 2A        .byte $2A, $01           ; 0x3C - blank
                                        .addr loc_track3C        ; CPU Address $8983
- D 0 - I - 0x008104 02:80F4: 3F        .byte $3F, $03           ; 0x3D
                                        .addr loc_track3D        ; CPU Address $8984
- D - - - - 0x008108 02:80F8: 2A        .byte $2A, $01           ; 0x3E - blank
                                        .addr loc_track3E        ; CPU Address $898D
- D 0 - I - 0x00810C 02:80FC: 2A        .byte $2A, $01           ; 0x3F
                                        .addr loc_track3F        ; CPU Address $898E
- D 0 - I - 0x008110 02:8100: 2A        .byte $2A, $01           ; 0x40
                                        .addr loc_track40        ; CPU Address $8995
- D 0 - I - 0x008114 02:8104: 3F        .byte $3F, $03           ; 0x41
                                        .addr loc_track41        ; CPU Address $899C
- D - - - - 0x008118 02:8108: 2A        .byte $2A, $01           ; 0x42 - blank
                                        .addr loc_track42        ; CPU Address $89A7
- D 0 - I - 0x00811C 02:810C: 69        .byte $69, $01           ; 0x43
                                        .addr loc_track43        ; CPU Address $89A8
- D 0 - I - 0x008120 02:8110: 69        .byte $69, $01           ; 0x44
                                        .addr loc_track44        ; CPU Address $8A0D
- D 0 - I - 0x008124 02:8114: 69        .byte $69, $01           ; 0x45
                                        .addr loc_track45        ; CPU Address $8AA8
- D 0 - I - 0x008128 02:8118: 69        .byte $69, $01           ; 0x46
                                        .addr loc_track46        ; CPU Address $8AC7
- D 0 - I - 0x00812C 02:811C: 69        .byte $69, $01           ; 0x47
                                        .addr loc_track47        ; CPU Address $8B3C
- D 0 - I - 0x008130 02:8120: 93        .byte $93, $03           ; 0x48
                                        .addr loc_track48        ; CPU Address $8B5F
- D 0 - I - 0x008134 02:8124: 93        .byte $93, $03           ; 0x49
                                        .addr loc_track49        ; CPU Address $8B83
- D 0 - I - 0x008138 02:8128: 93        .byte $93, $03           ; 0x4A
                                        .addr loc_track4A        ; CPU Address $8B92
- D 0 - I - 0x00813C 02:812C: 93        .byte $93, $03           ; 0x4B
                                        .addr loc_track4B        ; CPU Address $8B9B
- D 0 - I - 0x008140 02:8130: 93        .byte $93, $03           ; 0x4C
                                        .addr loc_track4C        ; CPU Address $8BB2
- D 0 - I - 0x008144 02:8134: 93        .byte $93, $03           ; 0x4D
                                        .addr loc_track4D        ; CPU Address $8BC9
- D 0 - I - 0x008148 02:8138: 93        .byte $93, $03           ; 0x4E
                                        .addr loc_track4E        ; CPU Address $8BE0
- D 0 - I - 0x00814C 02:813C: 93        .byte $93, $03           ; 0x4F
                                        .addr loc_track4F        ; CPU Address $8BEF
- D 0 - I - 0x008150 02:8140: 2A        .byte $2A, $01           ; 0x50 - typing sound
                                        .addr loc_track50        ; CPU Address $8BFE
- D 0 - I - 0x008154 02:8144: 2A        .byte $2A, $01           ; 0x51
                                        .addr loc_track51        ; CPU Address $8C07
- D 0 - I - 0x008158 02:8148: 3F        .byte $3F, $03           ; 0x52
                                        .addr loc_track52        ; CPU Address $8C16
- D - - - - 0x00815C 02:814C: 00        .byte $00, $00           ; 0x53
                                        .addr loc_track53        ; CPU Address $8C21
- D - - - - 0x008160 02:8150: 2A        .byte $2A, $02           ; 0x54
                                        .addr loc_track54        ; CPU Address $8C36
- D 0 - I - 0x008164 02:8154: 54        .byte $54, $00           ; 0x55
                                        .addr loc_track55        ; CPU Address $8C4F
- D 0 - I - 0x008168 02:8158: 69        .byte $69, $01           ; 0x56
                                        .addr loc_track56        ; CPU Address $8C88
- D 0 - I - 0x00816C 02:815C: 7E        .byte $7E, $02           ; 0x57
                                        .addr loc_track57        ; CPU Address $8CC1
- D - - - - 0x008170 02:8160: 54        .byte $54, $00           ; 0x58 - blank
                                        .addr loc_track58        ; CPU Address $8CD8
- D - - - - 0x008174 02:8164: 69        .byte $69, $01           ; 0x59 - blank
                                        .addr loc_track59        ; CPU Address $8CD9
- D - - - - 0x008178 02:8168: 7E        .byte $7E, $02           ; 0x5A - blank
                                        .addr loc_track5A        ; CPU Address $8CDA
- D 0 - I - 0x00817C 02:816C: 54        .byte $54, $00           ; 0x5B
                                        .addr loc_track5B        ; CPU Address $8CF5
- D 0 - I - 0x008180 02:8170: 69        .byte $69, $01           ; 0x5C
                                        .addr loc_track5C        ; CPU Address $8D2A
- D 0 - I - 0x008184 02:8174: 7E        .byte $7E, $02           ; 0x5D
                                        .addr loc_track5D        ; CPU Address $8D33
- D 0 - I - 0x008188 02:8178: 93        .byte $93, $03           ; 0x5E
                                        .addr loc_track5E        ; CPU Address $8D5A
- D 0 - I - 0x00818C 02:817C: 2A        .byte $2A, $01           ; 0x5F
                                        .addr loc_track5F        ; CPU Address $8CDB
- D 0 - I - 0x008190 02:8180: 2A        .byte $2A, $01           ; 0x60
                                        .addr loc_track60        ; CPU Address $8CEA

; Header
; 1 byte - ppu frames per sound pair (0x00 - 0x0F)
; 2 byte - ???
; 3 byte - volume
; 4 byte - ???
; Sound pair
; 1 byte - OOOONNNN, O - octave, N - notes (0x00 - C, 0x01 - C#, ..., 0x0B - B)
; 2 byte - length of the sound pair
loc_track0:
- D 0 - I - 0x008194 02:8184: 06        .byte $06, $03, $02, $00
- D 0 - I - 0x008198 02:8188: 32        .byte $32, $01  ; 3 octave, D, 1*6 frames
- D 0 - I - 0x00819A 02:818A: 32        .byte $32, $01  ; 3 octave, D, 1*6 frames
- D 0 - I - 0x00819C 02:818C: 35        .byte $35, $01  ; 3 octave, F, 1*6 frames
- D 0 - I - 0x00819E 02:818E: 32        .byte $32, $03  ; 3 octave, D, 3*6 frames
- D 0 - I - 0x0081A0 02:8190: A0        .byte $A0, $0F  ; Changes the volume: 0x02 -> 0x0F
- D 0 - I - 0x0081A2 02:8192: 37        .byte $37, $0A  ; 3 octave, G, 10*6 frames
- D 0 - I - 0x0081A4 02:8194: 35        .byte $35, $03  ; 3 octave, F, 3*6 frames
- D 0 - I - 0x0081A6 02:8196: 37        .byte $37, $03  ; 3 octave, F, 3*6 frames
- D 0 - I - 0x0081A8 02:8198: 32        .byte $32, $0A  ; 3 octave, D, 10*6 frames
- D 0 - I - 0x0081AA 02:819A: 30        .byte $30, $03  ; 3 octave, C, 3*6 frames
- D 0 - I - 0x0081AC 02:819C: 29        .byte $29, $03  ; 2 octave, A, 3*6 frames
- D 0 - I - 0x0081AE 02:819E: 27        .byte $27, $10  ; 2 octave, G, 16*6 frames
- D 0 - I - 0x0081B0 02:81A0: A0        .byte $A0, $02  ; Changes the volume: 0x0F -> 0x02
- D 0 - I - 0x0081B2 02:81A2: 33        .byte $33, $01  ; 3 octave, D#, 1*6 frames
- D 0 - I - 0x0081B4 02:81A4: 33        .byte $33, $01  ; 3 octave, D#, 1*6 frames
- D 0 - I - 0x0081B6 02:81A6: 33        .byte $33, $01  ; 3 octave, D#, 1*6 frames
- D 0 - I - 0x0081B8 02:81A8: 35        .byte $35, $02  ; 3 octave, F, 2*6 frames
- D 0 - I - 0x0081BA 02:81AA: 35        .byte $35, $02  ; 3 octave, F, 2*6 frames
- D 0 - I - 0x0081BC 02:81AC: 35        .byte $35, $01  ; 3 octave, F, 1*6 frames
- D 0 - I - 0x0081BE 02:81AE: 37        .byte $37, $03  ; 3 octave, G, 3*6 frames
- D 0 - I - 0x0081C0 02:81B0: FF        .byte $FF

loc_track1:
- D 0 - I - 0x0081C1 02:81B1: 06        .byte $06, $00, $0F, $00
- D 0 - I - 0x0081C5 02:81B5: 1F        .byte $1F, $06
- D 0 - I - 0x0081C7 02:81B7: 1A        .byte $1A, $03
- D 0 - I - 0x0081C9 02:81B9: 19        .byte $19, $03
- D 0 - I - 0x0081CB 02:81BB: A0        .byte $A0, $03
- D 0 - I - 0x0081CD 02:81BD: 1A        .byte $1A, $0A
- D 0 - I - 0x0081CF 02:81BF: A0        .byte $A0, $0F
- D 0 - I - 0x0081D1 02:81C1: B2        .byte $B2, $03
- D 0 - I - 0x0081D3 02:81C3: A0        .byte $A0, $01
- D 0 - I - 0x0081D5 02:81C5: 27        .byte $27, $01
- D 0 - I - 0x0081D7 02:81C7: 27        .byte $27, $01
- D 0 - I - 0x0081D9 02:81C9: 27        .byte $27, $01
- D 0 - I - 0x0081DB 02:81CB: 29        .byte $29, $02
- D 0 - I - 0x0081DD 02:81CD: 29        .byte $29, $02
- D 0 - I - 0x0081DF 02:81CF: 29        .byte $29, $01
- D 0 - I - 0x0081E1 02:81D1: 2A        .byte $2A, $03
- D 0 - I - 0x0081E3 02:81D3: FF        .byte $FF

loc_track2:
- D 0 - I - 0x0081E4 02:81D4: 06        .byte $06, $7F, $00, $00
- D 0 - I - 0x0081E8 02:81D8: 1F        .byte $1F, $06
- D 0 - I - 0x0081EA 02:81DA: 27        .byte $27, $03
- D 0 - I - 0x0081EC 02:81DC: 25        .byte $25, $03
- D 0 - I - 0x0081EE 02:81DE: A2        .byte $A2, $20
- D 0 - I - 0x0081F0 02:81E0: 27        .byte $27, $0A
- D 0 - I - 0x0081F2 02:81E2: A2        .byte $A2, $7F
- D 0 - I - 0x0081F4 02:81E4: B2        .byte $B2, $03
- D 0 - I - 0x0081F6 02:81E6: A2        .byte $A2, $10
- D 0 - I - 0x0081F8 02:81E8: 23        .byte $23, $01
- D 0 - I - 0x0081FA 02:81EA: 25        .byte $25, $01
- D 0 - I - 0x0081FC 02:81EC: 23        .byte $23, $01
- D 0 - I - 0x0081FE 02:81EE: 25        .byte $25, $02
- D 0 - I - 0x008200 02:81F0: 25        .byte $25, $02
- D 0 - I - 0x008202 02:81F2: 25        .byte $25, $01
- D 0 - I - 0x008204 02:81F4: 27        .byte $27, $03
- D 0 - I - 0x008206 02:81F6: FF        .byte $FF

loc_track3:
- D 0 - I - 0x008207 02:81F7: 06        .byte $06, $00, $00, $00
- D 0 - I - 0x00820B 02:81FB: 1F        .byte $1F, $06
- D 0 - I - 0x00820D 02:81FD: 02        .byte $02, $01
- D 0 - I - 0x00820F 02:81FF: 02        .byte $02, $01
- D 0 - I - 0x008211 02:8201: 02        .byte $02, $01
- D 0 - I - 0x008213 02:8203: 02        .byte $02, $01
- D 0 - I - 0x008215 02:8205: 09        .byte $09, $01
- D 0 - I - 0x008217 02:8207: 02        .byte $02, $01
- D 0 - I - 0x008219 02:8209: 02        .byte $02, $02
- D 0 - I - 0x00821B 02:820B: B5        .byte $B5, $03
- D 0 - I - 0x00821D 02:820D: 04        .byte $04, $01
- D 0 - I - 0x00821F 02:820F: 04        .byte $04, $01
- D 0 - I - 0x008221 02:8211: 04        .byte $04, $01
- D 0 - I - 0x008223 02:8213: 04        .byte $04, $02
- D 0 - I - 0x008225 02:8215: 04        .byte $04, $02
- D 0 - I - 0x008227 02:8217: 04        .byte $04, $01
- D 0 - I - 0x008229 02:8219: 0A        .byte $0A, $03
- D 0 - I - 0x00822B 02:821B: FF        .byte $FF

loc_track4:
- D 0 - I - 0x00822C 02:821C: 05        .byte $05, $01, $04, $00
- D 0 - I - 0x008230 02:8220: 32        .byte $32, $02
- D 0 - I - 0x008232 02:8222: 32        .byte $32, $02
- D 0 - I - 0x008234 02:8224: 1F        .byte $1F, $06
- D 0 - I - 0x008236 02:8226: 30        .byte $30, $02
- D 0 - I - 0x008238 02:8228: 1F        .byte $1F, $02
- D 0 - I - 0x00823A 02:822A: 32        .byte $32, $02
- D 0 - I - 0x00823C 02:822C: 1F        .byte $1F, $0A
- D 0 - I - 0x00823E 02:822E: 35        .byte $35, $02
- D 0 - I - 0x008240 02:8230: 1F        .byte $1F, $04
- D 0 - I - 0x008242 02:8232: 29        .byte $29, $02
- D 0 - I - 0x008244 02:8234: 1F        .byte $1F, $1E
- D 0 - I - 0x008246 02:8236: 32        .byte $32, $02
- D 0 - I - 0x008248 02:8238: 32        .byte $32, $02
- D 0 - I - 0x00824A 02:823A: 1F        .byte $1F, $06
- D 0 - I - 0x00824C 02:823C: 30        .byte $30, $02
- D 0 - I - 0x00824E 02:823E: 1F        .byte $1F, $02
- D 0 - I - 0x008250 02:8240: 32        .byte $32, $02
- D 0 - I - 0x008252 02:8242: 1F        .byte $1F, $0A
- D 0 - I - 0x008254 02:8244: 35        .byte $35, $02
- D 0 - I - 0x008256 02:8246: 1F        .byte $1F, $04
- D 0 - I - 0x008258 02:8248: 29        .byte $29, $02
- D 0 - I - 0x00825A 02:824A: 1F        .byte $1F, $16
- D 0 - I - 0x00825C 02:824C: 35        .byte $35, $01
- D 0 - I - 0x00825E 02:824E: 33        .byte $33, $01
- D 0 - I - 0x008260 02:8250: 32        .byte $32, $01
- D 0 - I - 0x008262 02:8252: 30        .byte $30, $01
- D 0 - I - 0x008264 02:8254: 32        .byte $32, $01
- D 0 - I - 0x008266 02:8256: 30        .byte $30, $01
- D 0 - I - 0x008268 02:8258: 2A        .byte $2A, $01
- D 0 - I - 0x00826A 02:825A: 29        .byte $29, $01
- D 0 - I - 0x00826C 02:825C: A0        .byte $A0, $0F
- D 0 - I - 0x00826E 02:825E: 37        .byte $37, $08
- D 0 - I - 0x008270 02:8260: 37        .byte $37, $02
- D 0 - I - 0x008272 02:8262: 37        .byte $37, $02
- D 0 - I - 0x008274 02:8264: 3A        .byte $3A, $04
- D 0 - I - 0x008276 02:8266: 39        .byte $39, $0C
- D 0 - I - 0x008278 02:8268: 35        .byte $35, $02
- D 0 - I - 0x00827A 02:826A: 30        .byte $30, $02
- D 0 - I - 0x00827C 02:826C: 32        .byte $32, $20
- D 0 - I - 0x00827E 02:826E: 37        .byte $37, $08
- D 0 - I - 0x008280 02:8270: 37        .byte $37, $02
- D 0 - I - 0x008282 02:8272: 37        .byte $37, $02
- D 0 - I - 0x008284 02:8274: 3A        .byte $3A, $04
- D 0 - I - 0x008286 02:8276: 40        .byte $40, $08
- D 0 - I - 0x008288 02:8278: 39        .byte $39, $04
- D 0 - I - 0x00828A 02:827A: 35        .byte $35, $04
- D 0 - I - 0x00828C 02:827C: 37        .byte $37, $20
- D 0 - I - 0x00828E 02:827E: B0        .byte $B0, $02
- D - - - - 0x008290 02:8280: FF        .byte $FF

loc_track5:
- D 0 - I - 0x008291 02:8281: 15        .byte $15, $01, $04, $00
- D 0 - I - 0x008295 02:8285: 2A        .byte $2A, $02
- D 0 - I - 0x008297 02:8287: 2A        .byte $2A, $02
- D 0 - I - 0x008299 02:8289: 1F        .byte $1F, $06
- D 0 - I - 0x00829B 02:828B: 29        .byte $29, $02
- D 0 - I - 0x00829D 02:828D: 1F        .byte $1F, $02
- D 0 - I - 0x00829F 02:828F: 2A        .byte $2A, $02
- D 0 - I - 0x0082A1 02:8291: 1F        .byte $1F, $0A
- D 0 - I - 0x0082A3 02:8293: 32        .byte $32, $02
- D 0 - I - 0x0082A5 02:8295: 1F        .byte $1F, $04
- D 0 - I - 0x0082A7 02:8297: 25        .byte $25, $02
- D 0 - I - 0x0082A9 02:8299: 1F        .byte $1F, $1E
- D 0 - I - 0x0082AB 02:829B: 2A        .byte $2A, $02
- D 0 - I - 0x0082AD 02:829D: 2A        .byte $2A, $02
- D 0 - I - 0x0082AF 02:829F: 1F        .byte $1F, $06
- D 0 - I - 0x0082B1 02:82A1: 29        .byte $29, $02
- D 0 - I - 0x0082B3 02:82A3: 1F        .byte $1F, $02
- D 0 - I - 0x0082B5 02:82A5: 2A        .byte $2A, $02
- D 0 - I - 0x0082B7 02:82A7: 1F        .byte $1F, $0A
- D 0 - I - 0x0082B9 02:82A9: 32        .byte $32, $02
- D 0 - I - 0x0082BB 02:82AB: 1F        .byte $1F, $04
- D 0 - I - 0x0082BD 02:82AD: 25        .byte $25, $02
- D 0 - I - 0x0082BF 02:82AF: 1F        .byte $1F, $1E
- D 0 - I - 0x0082C1 02:82B1: FD        .byte $FD, $FE 
- D 0 - I - 0x0082C3 02:82B3: 23        .byte $23, $02 
- D 0 - I - 0x0082C5 02:82B5: 27        .byte $27, $02 
- D 0 - I - 0x0082C7 02:82B7: 2A        .byte $2A, $02 
- D 0 - I - 0x0082C9 02:82B9: 27        .byte $27, $02 
- D 0 - I - 0x0082CB 02:82BB: 2A        .byte $2A, $02 
- D 0 - I - 0x0082CD 02:82BD: 27        .byte $27, $02 
- D 0 - I - 0x0082CF 02:82BF: 2A        .byte $2A, $02 
- D 0 - I - 0x0082D1 02:82C1: 27        .byte $27, $02 
- D 0 - I - 0x0082D3 02:82C3: 25        .byte $25, $02 
- D 0 - I - 0x0082D5 02:82C5: 29        .byte $29, $02 
- D 0 - I - 0x0082D7 02:82C7: 30        .byte $30, $02 
- D 0 - I - 0x0082D9 02:82C9: 29        .byte $29, $02
- D 0 - I - 0x0082DB 02:82CB: 30        .byte $30, $02
- D 0 - I - 0x0082DD 02:82CD: 29        .byte $29, $02
- D 0 - I - 0x0082DF 02:82CF: 30        .byte $30, $02
- D 0 - I - 0x0082E1 02:82D1: 29        .byte $29, $02
- D 0 - I - 0x0082E3 02:82D3: 32        .byte $32, $02
- D 0 - I - 0x0082E5 02:82D5: 2A        .byte $2A, $02
- D 0 - I - 0x0082E7 02:82D7: 27        .byte $27, $02
- D 0 - I - 0x0082E9 02:82D9: 32        .byte $32, $02
- D 0 - I - 0x0082EB 02:82DB: 2A        .byte $2A, $02
- D 0 - I - 0x0082ED 02:82DD: 27        .byte $27, $02
- D 0 - I - 0x0082EF 02:82DF: 32        .byte $32, $02
- D 0 - I - 0x0082F1 02:82E1: 2A        .byte $2A, $02
- D 0 - I - 0x0082F3 02:82E3: 27        .byte $27, $02
- D 0 - I - 0x0082F5 02:82E5: 32        .byte $32, $02
- D 0 - I - 0x0082F7 02:82E7: 2A        .byte $2A, $02
- D 0 - I - 0x0082F9 02:82E9: 27        .byte $27, $02
- D 0 - I - 0x0082FB 02:82EB: 32        .byte $32, $02
- D 0 - I - 0x0082FD 02:82ED: 2A        .byte $2A, $02
- D 0 - I - 0x0082FF 02:82EF: 27        .byte $27, $02
- D 0 - I - 0x008301 02:82F1: 2A        .byte $2A, $02
- D 0 - I - 0x008303 02:82F3: B1        .byte $B1, $00
- D 0 - I - 0x008305 02:82F5: B0        .byte $B0, $02

loc_track6:
- D 0 - I - 0x008307 02:82F7: 05        .byte $05, $01, $0F, $00
- D 0 - I - 0x00830B 02:82FB: A3        .byte $A3, $21
- D 0 - I - 0x00830D 02:82FD: 37        .byte $37, $01
- D 0 - I - 0x00830F 02:82FF: 38        .byte $38, $01
- D 0 - I - 0x008311 02:8301: 39        .byte $39, $0C
- D 0 - I - 0x008313 02:8303: 32        .byte $32, $04
- D 0 - I - 0x008315 02:8305: 34        .byte $34, $0C
- D 0 - I - 0x008317 02:8307: 30        .byte $30, $04
- D 0 - I - 0x008319 02:8309: 32        .byte $32, $0C
- D 0 - I - 0x00831B 02:830B: 29        .byte $29, $04
- D 0 - I - 0x00831D 02:830D: 27        .byte $27, $0C
- D 0 - I - 0x00831F 02:830F: 30        .byte $30, $01
- D 0 - I - 0x008321 02:8311: 32        .byte $32, $01
- D 0 - I - 0x008323 02:8313: 30        .byte $30, $01
- D 0 - I - 0x008325 02:8315: 32        .byte $32, $01
- D 0 - I - 0x008327 02:8317: 37        .byte $37, $0C
- D 0 - I - 0x008329 02:8319: B1        .byte $B1, $0C
- D 0 - I - 0x00832B 02:831B: 32        .byte $32, $01
- D 0 - I - 0x00832D 02:831D: 34        .byte $34, $01
- D 0 - I - 0x00832F 02:831F: B1        .byte $B1, $12
- D 0 - I - 0x008331 02:8321: 37        .byte $37, $10
- D 0 - I - 0x008333 02:8323: 24        .byte $24, $01
- D 0 - I - 0x008335 02:8325: 27        .byte $27, $01
- D 0 - I - 0x008337 02:8327: 29        .byte $29, $01
- D 0 - I - 0x008339 02:8329: 30        .byte $30, $01
- D 0 - I - 0x00833B 02:832B: 27        .byte $27, $01
- D 0 - I - 0x00833D 02:832D: 29        .byte $29, $01
- D 0 - I - 0x00833F 02:832F: 30        .byte $30, $01
- D 0 - I - 0x008341 02:8331: 32        .byte $32, $01
- D 0 - I - 0x008343 02:8333: 29        .byte $29, $01
- D 0 - I - 0x008345 02:8335: 30        .byte $30, $01
- D 0 - I - 0x008347 02:8337: 32        .byte $32, $01
- D 0 - I - 0x008349 02:8339: 34        .byte $34, $01
- D 0 - I - 0x00834B 02:833B: 30        .byte $30, $01
- D 0 - I - 0x00834D 02:833D: 32        .byte $32, $01
- D 0 - I - 0x00834F 02:833F: 34        .byte $34, $01
- D 0 - I - 0x008351 02:8341: 37        .byte $37, $01
- D 0 - I - 0x008353 02:8343: 39        .byte $39, $0C
- D 0 - I - 0x008355 02:8345: 37        .byte $37, $04
- D 0 - I - 0x008357 02:8347: 34        .byte $34, $08
- D 0 - I - 0x008359 02:8349: 37        .byte $37, $08
- D 0 - I - 0x00835B 02:834B: 40        .byte $40, $02
- D 0 - I - 0x00835D 02:834D: 39        .byte $39, $02
- D 0 - I - 0x00835F 02:834F: 37        .byte $37, $02
- D 0 - I - 0x008361 02:8351: 34        .byte $34, $06
- D 0 - I - 0x008363 02:8353: 32        .byte $32, $04
- D 0 - I - 0x008365 02:8355: 30        .byte $30, $0E
- D 0 - I - 0x008367 02:8357: B0        .byte $B0, $02
- D - - - - 0x008369 02:8359: FF        .byte $FF

loc_track7:
- D 0 - I - 0x00836A 02:835A: 05        .byte $05, $19, $00, $00
- D 0 - I - 0x00836E 02:835E: 1F        .byte $1F, $02
- D 0 - I - 0x008370 02:8360: 27        .byte $27, $02
- D 0 - I - 0x008372 02:8362: 29        .byte $29, $02
- D 0 - I - 0x008374 02:8364: 30        .byte $30, $02
- D 0 - I - 0x008376 02:8366: B4        .byte $B4, $03
- D 0 - I - 0x008378 02:8368: 32        .byte $32, $02
- D 0 - I - 0x00837A 02:836A: 24        .byte $24, $02
- D 0 - I - 0x00837C 02:836C: 27        .byte $27, $02
- D 0 - I - 0x00837E 02:836E: 29        .byte $29, $02
- D 0 - I - 0x008380 02:8370: B3        .byte $B3, $08
- D 0 - I - 0x008382 02:8372: 30        .byte $30, $02
- D 0 - I - 0x008384 02:8374: 32        .byte $32, $02
- D 0 - I - 0x008386 02:8376: 30        .byte $30, $02
- D 0 - I - 0x008388 02:8378: 29        .byte $29, $02
- D 0 - I - 0x00838A 02:837A: 29        .byte $29, $02
- D 0 - I - 0x00838C 02:837C: 30        .byte $30, $02
- D 0 - I - 0x00838E 02:837E: 32        .byte $32, $02
- D 0 - I - 0x008390 02:8380: 29        .byte $29, $06
- D 0 - I - 0x008392 02:8382: 29        .byte $29, $04
- D 0 - I - 0x008394 02:8384: B1        .byte $B1, $10
- D 0 - I - 0x008396 02:8386: 27        .byte $27, $02
- D 0 - I - 0x008398 02:8388: 30        .byte $30, $02
- D 0 - I - 0x00839A 02:838A: 32        .byte $32, $02
- D 0 - I - 0x00839C 02:838C: 27        .byte $27, $06
- D 0 - I - 0x00839E 02:838E: 27        .byte $27, $04
- D 0 - I - 0x0083A0 02:8390: B1        .byte $B1, $16
- D 0 - I - 0x0083A2 02:8392: 24        .byte $24, $02
- D 0 - I - 0x0083A4 02:8394: 27        .byte $27, $02
- D 0 - I - 0x0083A6 02:8396: 29        .byte $29, $02
- D 0 - I - 0x0083A8 02:8398: 24        .byte $24, $06
- D 0 - I - 0x0083AA 02:839A: 24        .byte $24, $04
- D 0 - I - 0x0083AC 02:839C: B1        .byte $B1, $1C
- D 0 - I - 0x0083AE 02:839E: 29        .byte $29, $02
- D 0 - I - 0x0083B0 02:83A0: 30        .byte $30, $02
- D 0 - I - 0x0083B2 02:83A2: 32        .byte $32, $02
- D 0 - I - 0x0083B4 02:83A4: A2        .byte $A2, $7F
- D 0 - I - 0x0083B6 02:83A6: 29        .byte $29, $06
- D 0 - I - 0x0083B8 02:83A8: 27        .byte $27, $04
- D 0 - I - 0x0083BA 02:83AA: 29        .byte $29, $10
- D 0 - I - 0x0083BC 02:83AC: A2        .byte $A2, $19
- D 0 - I - 0x0083BE 02:83AE: B0        .byte $B0, $03
- D - - - - 0x0083C0 02:83B0: FF        .byte $FF

loc_track8:
- D 0 - I - 0x0083C1 02:83B1: 04        .byte $04, $02, $02, $00
- D 0 - I - 0x0083C5 02:83B5: 27        .byte $27, $02
- D 0 - I - 0x0083C7 02:83B7: 1F        .byte $1F, $02
- D 0 - I - 0x0083C9 02:83B9: 27        .byte $27, $02
- D 0 - I - 0x0083CB 02:83BB: 25        .byte $25, $02
- D 0 - I - 0x0083CD 02:83BD: 1F        .byte $1F, $02
- D 0 - I - 0x0083CF 02:83BF: 25        .byte $25, $02
- D 0 - I - 0x0083D1 02:83C1: 27        .byte $27, $04
- D 0 - I - 0x0083D3 02:83C3: 1F        .byte $1F, $02
- D 0 - I - 0x0083D5 02:83C5: 23        .byte $23, $06
- D 0 - I - 0x0083D7 02:83C7: 25        .byte $25, $04
- D 0 - I - 0x0083D9 02:83C9: 27        .byte $27, $04
- D 0 - I - 0x0083DB 02:83CB: A0        .byte $A0, $0A
- D 0 - I - 0x0083DD 02:83CD: 2A        .byte $2A, $06
- D 0 - I - 0x0083DF 02:83CF: 28        .byte $28, $06
- D 0 - I - 0x0083E1 02:83D1: 27        .byte $27, $06
- D 0 - I - 0x0083E3 02:83D3: 25        .byte $25, $06
- D 0 - I - 0x0083E5 02:83D5: 23        .byte $23, $04
- D 0 - I - 0x0083E7 02:83D7: 25        .byte $25, $04
- D 0 - I - 0x0083E9 02:83D9: A0        .byte $A0, $02
- D 0 - I - 0x0083EB 02:83DB: 27        .byte $27, $02
- D 0 - I - 0x0083ED 02:83DD: 1F        .byte $1F, $02
- D 0 - I - 0x0083EF 02:83DF: 27        .byte $27, $02
- D 0 - I - 0x0083F1 02:83E1: 25        .byte $25, $02
- D 0 - I - 0x0083F3 02:83E3: 1F        .byte $1F, $02
- D 0 - I - 0x0083F5 02:83E5: 25        .byte $25, $02
- D 0 - I - 0x0083F7 02:83E7: 27        .byte $27, $04
- D 0 - I - 0x0083F9 02:83E9: 1F        .byte $1F, $02
- D 0 - I - 0x0083FB 02:83EB: 23        .byte $23, $06
- D 0 - I - 0x0083FD 02:83ED: 25        .byte $25, $04
- D 0 - I - 0x0083FF 02:83EF: 27        .byte $27, $04
- D 0 - I - 0x008401 02:83F1: A0        .byte $A0, $0A
- D 0 - I - 0x008403 02:83F3: 25        .byte $25, $0E
- D 0 - I - 0x008405 02:83F5: 27        .byte $27, $12
- D 0 - I - 0x008407 02:83F7: A0        .byte $A0, $02
- D 0 - I - 0x008409 02:83F9: B1        .byte $B1, $02
- D 0 - I - 0x00840B 02:83FB: FD        .byte $FD, $FE
- D 0 - I - 0x00840D 02:83FD: 33        .byte $33, $02
- D 0 - I - 0x00840F 02:83FF: 32        .byte $32, $02
- D 0 - I - 0x008411 02:8401: 30        .byte $30, $02
- D 0 - I - 0x008413 02:8403: 33        .byte $33, $04
- D 0 - I - 0x008415 02:8405: 32        .byte $32, $02
- D 0 - I - 0x008417 02:8407: 30        .byte $30, $04
- D 0 - I - 0x008419 02:8409: 33        .byte $33, $02
- D 0 - I - 0x00841B 02:840B: 32        .byte $32, $02
- D 0 - I - 0x00841D 02:840D: 30        .byte $30, $02
- D 0 - I - 0x00841F 02:840F: 35        .byte $35, $04
- D 0 - I - 0x008421 02:8411: 33        .byte $33, $02
- D 0 - I - 0x008423 02:8413: 32        .byte $32, $02
- D 0 - I - 0x008425 02:8415: 30        .byte $30, $02
- D 0 - I - 0x008427 02:8417: B1        .byte $B1, $00
- D 0 - I - 0x008429 02:8419: 33        .byte $33, $02
- D 0 - I - 0x00842B 02:841B: 32        .byte $32, $02
- D 0 - I - 0x00842D 02:841D: 30        .byte $30, $02
- D 0 - I - 0x00842F 02:841F: 33        .byte $33, $04
- D 0 - I - 0x008431 02:8421: 32        .byte $32, $02
- D 0 - I - 0x008433 02:8423: A0        .byte $A0, $0F
- D 0 - I - 0x008435 02:8425: 30        .byte $30, $0C
- D 0 - I - 0x008437 02:8427: 30        .byte $30, $02
- D 0 - I - 0x008439 02:8429: 32        .byte $32, $02
- D 0 - I - 0x00843B 02:842B: 33        .byte $33, $02
- D 0 - I - 0x00843D 02:842D: 35        .byte $35, $02
- D 0 - I - 0x00843F 02:842F: 37        .byte $37, $20
- D 0 - I - 0x008441 02:8431: A0        .byte $A0, $02
- D 0 - I - 0x008443 02:8433: B0        .byte $B0, $02
- D - - - - 0x008445 02:8435: FF        .byte $FF

loc_track3B:
- D 0 - I - 0x008446 02:8436: 04        .byte $04, $02, $02, $00
- D 0 - I - 0x00844A 02:843A: A3        .byte $A3, $60
- D 0 - I - 0x00844C 02:843C: 27        .byte $27, $02
- D 0 - I - 0x00844E 02:843E: 1F        .byte $1F, $02
- D 0 - I - 0x008450 02:8440: 27        .byte $27, $02
- D 0 - I - 0x008452 02:8442: 25        .byte $25, $02
- D 0 - I - 0x008454 02:8444: 1F        .byte $1F, $02
- D 0 - I - 0x008456 02:8446: 25        .byte $25, $02
- D 0 - I - 0x008458 02:8448: 27        .byte $27, $04
- D 0 - I - 0x00845A 02:844A: 1F        .byte $1F, $02
- D 0 - I - 0x00845C 02:844C: 23        .byte $23, $06
- D 0 - I - 0x00845E 02:844E: 25        .byte $25, $04
- D 0 - I - 0x008460 02:8450: 27        .byte $27, $04
- D 0 - I - 0x008462 02:8452: A0        .byte $A0, $0A
- D 0 - I - 0x008464 02:8454: 2A        .byte $2A, $06
- D 0 - I - 0x008466 02:8456: 28        .byte $28, $06
- D 0 - I - 0x008468 02:8458: 27        .byte $27, $06
- D 0 - I - 0x00846A 02:845A: 25        .byte $25, $06
- D 0 - I - 0x00846C 02:845C: 23        .byte $23, $04
- D 0 - I - 0x00846E 02:845E: 25        .byte $25, $04
- D 0 - I - 0x008470 02:8460: A0        .byte $A0, $02
- D 0 - I - 0x008472 02:8462: 27        .byte $27, $02
- D 0 - I - 0x008474 02:8464: 1F        .byte $1F, $02
- D 0 - I - 0x008476 02:8466: 27        .byte $27, $02
- D 0 - I - 0x008478 02:8468: 25        .byte $25, $02
- D 0 - I - 0x00847A 02:846A: 1F        .byte $1F, $02
- D 0 - I - 0x00847C 02:846C: 25        .byte $25, $02
- D 0 - I - 0x00847E 02:846E: 27        .byte $27, $04
- D 0 - I - 0x008480 02:8470: 1F        .byte $1F, $02
- D 0 - I - 0x008482 02:8472: 23        .byte $23, $06
- D 0 - I - 0x008484 02:8474: 25        .byte $25, $04
- D 0 - I - 0x008486 02:8476: 27        .byte $27, $04
- D 0 - I - 0x008488 02:8478: A0        .byte $A0, $0A
- D 0 - I - 0x00848A 02:847A: 25        .byte $25, $0E
- D 0 - I - 0x00848C 02:847C: 27        .byte $27, $12
- D 0 - I - 0x00848E 02:847E: A0        .byte $A0, $02
- D 0 - I - 0x008490 02:8480: B1        .byte $B1, $02
- D 0 - I - 0x008492 02:8482: FD        .byte $FD, $FE
- D 0 - I - 0x008494 02:8484: 33        .byte $33, $02
- D 0 - I - 0x008496 02:8486: 32        .byte $32, $02
- D 0 - I - 0x008498 02:8488: 30        .byte $30, $02
- D 0 - I - 0x00849A 02:848A: 33        .byte $33, $04
- D 0 - I - 0x00849C 02:848C: 32        .byte $32, $02
- D 0 - I - 0x00849E 02:848E: 30        .byte $30, $04
- D 0 - I - 0x0084A0 02:8490: 33        .byte $33, $02
- D 0 - I - 0x0084A2 02:8492: 32        .byte $32, $02
- D 0 - I - 0x0084A4 02:8494: 30        .byte $30, $02
- D 0 - I - 0x0084A6 02:8496: 35        .byte $35, $04
- D 0 - I - 0x0084A8 02:8498: 33        .byte $33, $02
- D 0 - I - 0x0084AA 02:849A: 32        .byte $32, $02
- D 0 - I - 0x0084AC 02:849C: 30        .byte $30, $02
- D 0 - I - 0x0084AE 02:849E: B1        .byte $B1, $00
- D 0 - I - 0x0084B0 02:84A0: 33        .byte $33, $02
- D 0 - I - 0x0084B2 02:84A2: 32        .byte $32, $02
- D 0 - I - 0x0084B4 02:84A4: 30        .byte $30, $02
- D 0 - I - 0x0084B6 02:84A6: 33        .byte $33, $04
- D 0 - I - 0x0084B8 02:84A8: 32        .byte $32, $02
- D 0 - I - 0x0084BA 02:84AA: A0        .byte $A0, $0F
- D 0 - I - 0x0084BC 02:84AC: 30        .byte $30, $0C
- D 0 - I - 0x0084BE 02:84AE: 30        .byte $30, $02
- D 0 - I - 0x0084C0 02:84B0: 32        .byte $32, $02
- D 0 - I - 0x0084C2 02:84B2: 33        .byte $33, $02
- D 0 - I - 0x0084C4 02:84B4: 35        .byte $35, $02
- D 0 - I - 0x0084C6 02:84B6: 37        .byte $37, $20
- D 0 - I - 0x0084C8 02:84B8: A0        .byte $A0, $02
- D 0 - I - 0x0084CA 02:84BA: B0        .byte $B0, $02
- D - - - - 0x0084CC 02:84BC: FF        .byte $FF

loc_trackA:
- D - - - - 0x0084CD 02:84BD: FF        .byte $FF

loc_trackB:
- D 0 - I - 0x0084CE 02:84BE: 30        .byte $30, $00, $02, $00
- D 0 - I - 0x0084D2 02:84C2: 0D        .byte $0D, $02
- D 0 - I - 0x0084D4 02:84C4: 0B        .byte $0B, $0A
- D 0 - I - 0x0084D6 02:84C6: FF        .byte $FF

loc_trackC:
- D 0 - I - 0x0084D7 02:84C7: 30        .byte $30, $00, $1F, $00
- D 0 - I - 0x0084DB 02:84CB: 06        .byte $06, $01
- D 0 - I - 0x0084DD 02:84CD: 03        .byte $03, $01
- D 0 - I - 0x0084DF 02:84CF: 04        .byte $04, $01
- D 0 - I - 0x0084E1 02:84D1: 0A        .byte $0A, $01
- D 0 - I - 0x0084E3 02:84D3: FF        .byte $FF

loc_trackD:
- D 0 - I - 0x0084E4 02:84D4: 21        .byte $21, $02, $03, $00
- D 0 - I - 0x0084E8 02:84D8: 10        .byte $10, $02
- D 0 - I - 0x0084EA 02:84DA: 20        .byte $20, $02
- D 0 - I - 0x0084EC 02:84DC: FF        .byte $FF

loc_trackE:
- D 0 - I - 0x0084ED 02:84DD: 03        .byte $03, $02, $01, $00
- D 0 - I - 0x0084F1 02:84E1: 37        .byte $37, $01
- D 0 - I - 0x0084F3 02:84E3: 42        .byte $42, $01
- D 0 - I - 0x0084F5 02:84E5: 3A        .byte $3A, $01
- D 0 - I - 0x0084F7 02:84E7: 40        .byte $40, $01
- D 0 - I - 0x0084F9 02:84E9: FF        .byte $FF

loc_trackF:
- D 0 - I - 0x0084FA 02:84EA: 32        .byte $32, $00, $0F, $00
- D 0 - I - 0x0084FE 02:84EE: 0C        .byte $0C, $01
- D 0 - I - 0x008500 02:84F0: 0E        .byte $0E, $07
- D 0 - I - 0x008502 02:84F2: 0F        .byte $0F, $20
- D 0 - I - 0x008504 02:84F4: FF        .byte $FF

loc_track10:
- D 0 - I - 0x008505 02:84F5: 00        .byte $00, $02, $02, $00
- D 0 - I - 0x008509 02:84F9: 57        .byte $57, $10
- D 0 - I - 0x00850B 02:84FB: FF        .byte $FF

loc_track11:
- D 0 - I - 0x00850C 02:84FC: 06        .byte $06, $02, $0F, $00
- D 0 - I - 0x008510 02:8500: A3        .byte $A3, $10
- D 0 - I - 0x008512 02:8502: 30        .byte $30, $02
- D - - - - 0x008514 02:8504: 37        .byte $37, $01
- D - - - - 0x008516 02:8506: 40        .byte $40, $06
- D - - - - 0x008518 02:8508: FF        .byte $FF

loc_track12:
- D 0 - I - 0x008519 02:8509: 00        .byte $00, $01, $1B, $83
- D 0 - I - 0x00851D 02:850D: 20        .byte $20, $10
- D 0 - I - 0x00851F 02:850F: A1        .byte $A1, $84
- D 0 - I - 0x008521 02:8511: 09        .byte $09, $03
- D 0 - I - 0x008523 02:8513: FF        .byte $FF

loc_track13:
- D 0 - I - 0x008524 02:8514: 00        .byte $00, $01, $19, $00
- D 0 - I - 0x008528 02:8518: 13        .byte $13, $02
- D 0 - I - 0x00852A 02:851A: 23        .byte $23, $02
- D 0 - I - 0x00852C 02:851C: 12        .byte $12, $02
- D 0 - I - 0x00852E 02:851E: 22        .byte $22, $02
- D 0 - I - 0x008530 02:8520: 11        .byte $11, $02
- D 0 - I - 0x008532 02:8522: 21        .byte $21, $02
- D 0 - I - 0x008534 02:8524: 10        .byte $10, $02
- D 0 - I - 0x008536 02:8526: 20        .byte $20, $02
- D 0 - I - 0x008538 02:8528: FF        .byte $FF

loc_track14:
- D 0 - I - 0x008539 02:8529: 02        .byte $02, $01, $02, $00
- D 0 - I - 0x00853D 02:852D: A3        .byte $A3, $20
- D 0 - I - 0x00853F 02:852F: 30        .byte $30, $01
- D 0 - I - 0x008541 02:8531: 34        .byte $34, $01
- D 0 - I - 0x008543 02:8533: 30        .byte $30, $01
- D 0 - I - 0x008545 02:8535: 37        .byte $37, $01
- D 0 - I - 0x008547 02:8537: 30        .byte $30, $01
- D 0 - I - 0x008549 02:8539: FF        .byte $FF

loc_track15:
- D 0 - I - 0x00854A 02:853A: 01        .byte $01, $00, $01, $00
- D 0 - I - 0x00854E 02:853E: 44        .byte $44, $01
- D 0 - I - 0x008550 02:8540: FF        .byte $FF

loc_track16:
- D 0 - I - 0x008551 02:8541: 30        .byte $30, $00, $0F, $00
- D 0 - I - 0x008555 02:8545: 0C        .byte $0C, $10
- D 0 - I - 0x008557 02:8547: FF        .byte $FF

loc_track17:
- D 0 - I - 0x008558 02:8548: 30        .byte $30, $00, $1F, $00
- D 0 - I - 0x00855C 02:854C: C9        .byte $C9, $0A
- D 0 - I - 0x00855E 02:854E: 06        .byte $06, $01
- D 0 - I - 0x008560 02:8550: 0D        .byte $0D, $0A
- D 0 - I - 0x008562 02:8552: FF        .byte $FF

loc_track18:
- D 0 - I - 0x008563 02:8553: 02        .byte $02, $02, $1F, $8C
- D 0 - I - 0x008567 02:8557: EF        .byte $EF, $01
- D 0 - I - 0x008569 02:8559: FD        .byte $FD, $FE
- D 0 - I - 0x00856B 02:855B: 20        .byte $20, $01
- D 0 - I - 0x00856D 02:855D: 20        .byte $20, $03
- D 0 - I - 0x00856F 02:855F: B4        .byte $B4, $00
- D 0 - I - 0x008571 02:8561: FF        .byte $FF

loc_track19:
- D 0 - I - 0x008572 02:8562: 30        .byte $30, $00, $1F, $00
- D 0 - I - 0x008576 02:8566: 0D        .byte $0D, $02
- D 0 - I - 0x008578 02:8568: 1F        .byte $1F, $01
- D 0 - I - 0x00857A 02:856A: 0F        .byte $0F, $02
- D 0 - I - 0x00857C 02:856C: FF        .byte $FF

loc_track1A:
- D 0 - I - 0x00857D 02:856D: 30        .byte $30, $00, $1F, $00
- D 0 - I - 0x008581 02:8571: 04        .byte $04, $01
- D 0 - I - 0x008583 02:8573: 1F        .byte $1F, $01
- D 0 - I - 0x008585 02:8575: 03        .byte $03, $01
- D 0 - I - 0x008587 02:8577: FF        .byte $FF

loc_track21:
- D 0 - I - 0x008588 02:8578: 01        .byte $01, $02, $00, $00
- D 0 - I - 0x00858C 02:857C: 09        .byte $09, $01
- D 0 - I - 0x00858E 02:857E: A1        .byte $A1, $83
- D 0 - I - 0x008590 02:8580: 10        .byte $10, $03
- D 0 - I - 0x008592 02:8582: FF        .byte $FF

loc_track1B:
- D 0 - I - 0x008593 02:8583: 04        .byte $04, $02, $0A, $00
- D 0 - I - 0x008597 02:8587: A3        .byte $A3, $10
- D 0 - I - 0x008599 02:8589: 2B        .byte $2B, $06
- D 0 - I - 0x00859B 02:858B: 29        .byte $29, $06
- D 0 - I - 0x00859D 02:858D: 2B        .byte $2B, $06
- D 0 - I - 0x00859F 02:858F: 29        .byte $29, $06
- D 0 - I - 0x0085A1 02:8591: A0        .byte $A0, $02
- D 0 - I - 0x0085A3 02:8593: 2B        .byte $2B, $04
- D 0 - I - 0x0085A5 02:8595: 29        .byte $29, $04
- D 0 - I - 0x0085A7 02:8597: A0        .byte $A0, $0A
- D 0 - I - 0x0085A9 02:8599: 30        .byte $30, $06
- D 0 - I - 0x0085AB 02:859B: 2B        .byte $2B, $06
- D 0 - I - 0x0085AD 02:859D: 30        .byte $30, $06
- D 0 - I - 0x0085AF 02:859F: 2B        .byte $2B, $06
- D 0 - I - 0x0085B1 02:85A1: A0        .byte $A0, $02
- D 0 - I - 0x0085B3 02:85A3: 30        .byte $30, $04
- D 0 - I - 0x0085B5 02:85A5: 2B        .byte $2B, $04
- D 0 - I - 0x0085B7 02:85A7: A0        .byte $A0, $0A
- D 0 - I - 0x0085B9 02:85A9: B1        .byte $B1, $02
- D 0 - I - 0x0085BB 02:85AB: 34        .byte $34, $06
- D 0 - I - 0x0085BD 02:85AD: 32        .byte $32, $06
- D 0 - I - 0x0085BF 02:85AF: 34        .byte $34, $06
- D 0 - I - 0x0085C1 02:85B1: 35        .byte $35, $06
- D 0 - I - 0x0085C3 02:85B3: A0        .byte $A0, $02
- D 0 - I - 0x0085C5 02:85B5: 34        .byte $34, $04
- D 0 - I - 0x0085C7 02:85B7: 32        .byte $32, $04
- D 0 - I - 0x0085C9 02:85B9: A0        .byte $A0, $0A
- D 0 - I - 0x0085CB 02:85BB: 32        .byte $32, $06
- D 0 - I - 0x0085CD 02:85BD: 30        .byte $30, $06
- D 0 - I - 0x0085CF 02:85BF: 32        .byte $32, $06
- D 0 - I - 0x0085D1 02:85C1: 34        .byte $34, $06
- D 0 - I - 0x0085D3 02:85C3: A0        .byte $A0, $02
- D 0 - I - 0x0085D5 02:85C5: 32        .byte $32, $04
- D 0 - I - 0x0085D7 02:85C7: 30        .byte $30, $04
- D 0 - I - 0x0085D9 02:85C9: A0        .byte $A0, $0A
- D 0 - I - 0x0085DB 02:85CB: 30        .byte $30, $06
- D 0 - I - 0x0085DD 02:85CD: 2B        .byte $2B, $06
- D 0 - I - 0x0085DF 02:85CF: 30        .byte $30, $06
- D 0 - I - 0x0085E1 02:85D1: 2B        .byte $2B, $06
- D 0 - I - 0x0085E3 02:85D3: A0        .byte $A0, $02
- D 0 - I - 0x0085E5 02:85D5: 30        .byte $30, $04
- D 0 - I - 0x0085E7 02:85D7: 32        .byte $32, $04
- D 0 - I - 0x0085E9 02:85D9: A0        .byte $A0, $0F
- D 0 - I - 0x0085EB 02:85DB: 37        .byte $37, $20
- D 0 - I - 0x0085ED 02:85DD: B0        .byte $B0, $02
- D - - - - 0x0085EF 02:85DF: FF        .byte $FF

loc_track1C:
- D 0 - I - 0x0085F0 02:85E0: 04        .byte $04, $1A, $00, $00
- D 0 - I - 0x0085F4 02:85E4: 20        .byte $20, $02
- D 0 - I - 0x0085F6 02:85E6: 30        .byte $30, $02
- D 0 - I - 0x0085F8 02:85E8: B7        .byte $B7, $02
- D 0 - I - 0x0085FA 02:85EA: 22        .byte $22, $02
- D 0 - I - 0x0085FC 02:85EC: 32        .byte $32, $02
- D 0 - I - 0x0085FE 02:85EE: B7        .byte $B7, $05
- D 0 - I - 0x008600 02:85F0: 20        .byte $20, $02
- D 0 - I - 0x008602 02:85F2: 30        .byte $30, $02
- D 0 - I - 0x008604 02:85F4: B7        .byte $B7, $08
- D 0 - I - 0x008606 02:85F6: 22        .byte $22, $02
- D 0 - I - 0x008608 02:85F8: 32        .byte $32, $02
- D 0 - I - 0x00860A 02:85FA: B7        .byte $B7, $0B
- D 0 - I - 0x00860C 02:85FC: 25        .byte $25, $02
- D 0 - I - 0x00860E 02:85FE: 35        .byte $35, $02
- D 0 - I - 0x008610 02:8600: B7        .byte $B7, $0E
- D 0 - I - 0x008612 02:8602: 24        .byte $24, $02
- D 0 - I - 0x008614 02:8604: 34        .byte $34, $02
- D 0 - I - 0x008616 02:8606: B7        .byte $B7, $11
- D 0 - I - 0x008618 02:8608: 22        .byte $22, $02
- D 0 - I - 0x00861A 02:860A: 32        .byte $32, $02
- D 0 - I - 0x00861C 02:860C: B7        .byte $B7, $14
- D 0 - I - 0x00861E 02:860E: 27        .byte $27, $02
- D 0 - I - 0x008620 02:8610: 37        .byte $37, $02
- D 0 - I - 0x008622 02:8612: B7        .byte $B7, $17
- D 0 - I - 0x008624 02:8614: B0        .byte $B0, $02
- D - - - - 0x008626 02:8616: FF        .byte $FF

loc_track1D:
- D 0 - I - 0x008627 02:8617: 03        .byte $03, $02, $0F, $00
- D 0 - I - 0x00862B 02:861B: FD        .byte $FD, $FE
- D 0 - I - 0x00862D 02:861D: A3        .byte $A3, $10
- D 0 - I - 0x00862F 02:861F: 20        .byte $20, $14
- D 0 - I - 0x008631 02:8621: 22        .byte $22, $04
- D 0 - I - 0x008633 02:8623: 23        .byte $23, $04
- D 0 - I - 0x008635 02:8625: 26        .byte $26, $04
- D 0 - I - 0x008637 02:8627: 27        .byte $27, $20
- D 0 - I - 0x008639 02:8629: B1        .byte $B1, $00
- D 0 - I - 0x00863B 02:862B: 30        .byte $30, $14
- D 0 - I - 0x00863D 02:862D: 2B        .byte $2B, $04
- D 0 - I - 0x00863F 02:862F: 28        .byte $28, $04
- D 0 - I - 0x008641 02:8631: 2B        .byte $2B, $04
- D 0 - I - 0x008643 02:8633: 30        .byte $30, $20
- D 0 - I - 0x008645 02:8635: 20        .byte $20, $14
- D 0 - I - 0x008647 02:8637: 22        .byte $22, $04
- D 0 - I - 0x008649 02:8639: 23        .byte $23, $04
- D 0 - I - 0x00864B 02:863B: 26        .byte $26, $04
- D 0 - I - 0x00864D 02:863D: 27        .byte $27, $20
- D 0 - I - 0x00864F 02:863F: 27        .byte $27, $14
- D 0 - I - 0x008651 02:8641: 28        .byte $28, $04
- D 0 - I - 0x008653 02:8643: 2A        .byte $2A, $04
- D 0 - I - 0x008655 02:8645: 28        .byte $28, $04
- D 0 - I - 0x008657 02:8647: 27        .byte $27, $20
- D 0 - I - 0x008659 02:8649: B0        .byte $B0, $02
- D - - - - 0x00865B 02:864B: FF        .byte $FF

loc_track1E:
- D 0 - I - 0x00865C 02:864C: 03        .byte $03, $15, $00, $00
- D 0 - I - 0x008660 02:8650: FD        .byte $FD, $FE
- D 0 - I - 0x008662 02:8652: 20        .byte $20, $04
- D 0 - I - 0x008664 02:8654: 20        .byte $20, $04
- D 0 - I - 0x008666 02:8656: 1F        .byte $1F, $02
- D 0 - I - 0x008668 02:8658: 20        .byte $20, $06
- D 0 - I - 0x00866A 02:865A: A2        .byte $A2, $35
- D 0 - I - 0x00866C 02:865C: 20        .byte $20, $06
- D 0 - I - 0x00866E 02:865E: 20        .byte $20, $06
- D 0 - I - 0x008670 02:8660: 20        .byte $20, $04
- D 0 - I - 0x008672 02:8662: A2        .byte $A2, $15
- D 0 - I - 0x008674 02:8664: B3        .byte $B3, $00
- D 0 - I - 0x008676 02:8666: FD        .byte $FD, $FE
- D 0 - I - 0x008678 02:8668: 25        .byte $25, $04
- D 0 - I - 0x00867A 02:866A: 25        .byte $25, $04
- D 0 - I - 0x00867C 02:866C: 1F        .byte $1F, $02
- D 0 - I - 0x00867E 02:866E: 25        .byte $25, $06
- D 0 - I - 0x008680 02:8670: A2        .byte $A2, $35
- D 0 - I - 0x008682 02:8672: 25        .byte $25, $06
- D 0 - I - 0x008684 02:8674: 25        .byte $25, $06
- D 0 - I - 0x008686 02:8676: 25        .byte $25, $04
- D 0 - I - 0x008688 02:8678: A2        .byte $A2, $15
- D 0 - I - 0x00868A 02:867A: B1        .byte $B1, $00
- D 0 - I - 0x00868C 02:867C: FD        .byte $FD, $FE
- D 0 - I - 0x00868E 02:867E: 20        .byte $20, $04
- D 0 - I - 0x008690 02:8680: 20        .byte $20, $04
- D 0 - I - 0x008692 02:8682: 1F        .byte $1F, $02
- D 0 - I - 0x008694 02:8684: 20        .byte $20, $06
- D 0 - I - 0x008696 02:8686: A2        .byte $A2, $30
- D 0 - I - 0x008698 02:8688: 20        .byte $20, $06
- D 0 - I - 0x00869A 02:868A: 20        .byte $20, $06
- D 0 - I - 0x00869C 02:868C: 20        .byte $20, $04
- D 0 - I - 0x00869E 02:868E: A2        .byte $A2, $15
- D 0 - I - 0x0086A0 02:8690: B1        .byte $B1, $00
- D 0 - I - 0x0086A2 02:8692: 23        .byte $23, $04
- D 0 - I - 0x0086A4 02:8694: 23        .byte $23, $04
- D 0 - I - 0x0086A6 02:8696: 1F        .byte $1F, $02
- D 0 - I - 0x0086A8 02:8698: 23        .byte $23, $06
- D 0 - I - 0x0086AA 02:869A: A2        .byte $A2, $7F
- D 0 - I - 0x0086AC 02:869C: 23        .byte $23, $10
- D 0 - I - 0x0086AE 02:869E: A2        .byte $A2, $15
- D 0 - I - 0x0086B0 02:86A0: 27        .byte $27, $04
- D 0 - I - 0x0086B2 02:86A2: 27        .byte $27, $04
- D 0 - I - 0x0086B4 02:86A4: 1F        .byte $1F, $02
- D 0 - I - 0x0086B6 02:86A6: 27        .byte $27, $06
- D 0 - I - 0x0086B8 02:86A8: A2        .byte $A2, $7F
- D 0 - I - 0x0086BA 02:86AA: 27        .byte $27, $10
- D 0 - I - 0x0086BC 02:86AC: A2        .byte $A2, $15
- D 0 - I - 0x0086BE 02:86AE: B0        .byte $B0, $02
- D - - - - 0x0086C0 02:86B0: FF        .byte $FF

loc_track1F:
- D 0 - I - 0x0086C1 02:86B1: 0A        .byte $0A, $02, $1F, $00
- D 0 - I - 0x0086C5 02:86B5: A3        .byte $A3, $20
- D 0 - I - 0x0086C7 02:86B7: EF        .byte $EF, $01
- D 0 - I - 0x0086C9 02:86B9: FD        .byte $FD, $FE
- D 0 - I - 0x0086CB 02:86BB: 25        .byte $25, $01
- D 0 - I - 0x0086CD 02:86BD: 26        .byte $26, $01
- D 0 - I - 0x0086CF 02:86BF: B7        .byte $B7, $00
- D 0 - I - 0x0086D1 02:86C1: A0        .byte $A0, $1F
- D 0 - I - 0x0086D3 02:86C3: EF        .byte $EF, $01
- D 0 - I - 0x0086D5 02:86C5: FD        .byte $FD, $FE
- D 0 - I - 0x0086D7 02:86C7: 27        .byte $27, $01
- D 0 - I - 0x0086D9 02:86C9: 28        .byte $28, $01
- D 0 - I - 0x0086DB 02:86CB: B7        .byte $B7, $00
- D 0 - I - 0x0086DD 02:86CD: A0        .byte $A0, $1F
- D 0 - I - 0x0086DF 02:86CF: B0        .byte $B0, $02
- D - - - - 0x0086E1 02:86D1: FF        .byte $FF

loc_track20:
- D 0 - I - 0x0086E2 02:86D2: 2A        .byte $2A, $7F, $00, $00
- D 0 - I - 0x0086E6 02:86D6: FD        .byte $FD, $FE
- D 0 - I - 0x0086E8 02:86D8: 16        .byte $16, $04
- D 0 - I - 0x0086EA 02:86DA: 26        .byte $26, $04
- D 0 - I - 0x0086EC 02:86DC: 16        .byte $16, $04
- D 0 - I - 0x0086EE 02:86DE: 26        .byte $26, $04
- D 0 - I - 0x0086F0 02:86E0: 18        .byte $18, $04
- D 0 - I - 0x0086F2 02:86E2: 28        .byte $28, $04
- D 0 - I - 0x0086F4 02:86E4: 18        .byte $18, $04
- D 0 - I - 0x0086F6 02:86E6: 28        .byte $28, $04
- D 0 - I - 0x0086F8 02:86E8: B0        .byte $B0, $02
- D - - - - 0x0086FA 02:86EA: FF        .byte $FF

loc_track22:
- D 0 - I - 0x0086FB 02:86EB: 05        .byte $05, $02, $0F, $00
- D 0 - I - 0x0086FF 02:86EF: A3        .byte $A3, $10
- D 0 - I - 0x008701 02:86F1: 25        .byte $25, $02
- D 0 - I - 0x008703 02:86F3: 29        .byte $29, $02
- D 0 - I - 0x008705 02:86F5: 34        .byte $34, $04
- D 0 - I - 0x008707 02:86F7: B1        .byte $B1, $02
- D 0 - I - 0x008709 02:86F9: 25        .byte $25, $02
- D 0 - I - 0x00870B 02:86FB: 29        .byte $29, $02
- D 0 - I - 0x00870D 02:86FD: 34        .byte $34, $02
- D 0 - I - 0x00870F 02:86FF: 32        .byte $32, $0A
- D 0 - I - 0x008711 02:8701: 24        .byte $24, $02
- D 0 - I - 0x008713 02:8703: 29        .byte $29, $02
- D 0 - I - 0x008715 02:8705: 34        .byte $34, $04
- D 0 - I - 0x008717 02:8707: B1        .byte $B1, $0B
- D 0 - I - 0x008719 02:8709: 24        .byte $24, $02
- D 0 - I - 0x00871B 02:870B: 29        .byte $29, $02
- D 0 - I - 0x00871D 02:870D: 34        .byte $34, $02
- D 0 - I - 0x00871F 02:870F: 35        .byte $35, $0A
- D 0 - I - 0x008721 02:8711: 27        .byte $27, $02
- D 0 - I - 0x008723 02:8713: 30        .byte $30, $02
- D 0 - I - 0x008725 02:8715: 34        .byte $34, $04
- D 0 - I - 0x008727 02:8717: B1        .byte $B1, $13
- D 0 - I - 0x008729 02:8719: 27        .byte $27, $02
- D 0 - I - 0x00872B 02:871B: 30        .byte $30, $02
- D 0 - I - 0x00872D 02:871D: 34        .byte $34, $02
- D 0 - I - 0x00872F 02:871F: 32        .byte $32, $0A
- D 0 - I - 0x008731 02:8721: 29        .byte $29, $01
- D 0 - I - 0x008733 02:8723: 2B        .byte $2B, $01
- D 0 - I - 0x008735 02:8725: 31        .byte $31, $01
- D 0 - I - 0x008737 02:8727: 32        .byte $32, $01
- D 0 - I - 0x008739 02:8729: 2B        .byte $2B, $01
- D 0 - I - 0x00873B 02:872B: 31        .byte $31, $01
- D 0 - I - 0x00873D 02:872D: 32        .byte $32, $01
- D 0 - I - 0x00873F 02:872F: 34        .byte $34, $01
- D 0 - I - 0x008741 02:8731: 31        .byte $31, $01
- D 0 - I - 0x008743 02:8733: 32        .byte $32, $01
- D 0 - I - 0x008745 02:8735: 34        .byte $34, $01
- D 0 - I - 0x008747 02:8737: 35        .byte $35, $01
- D 0 - I - 0x008749 02:8739: 32        .byte $32, $01
- D 0 - I - 0x00874B 02:873B: 34        .byte $34, $01
- D 0 - I - 0x00874D 02:873D: 35        .byte $35, $01
- D 0 - I - 0x00874F 02:873F: 37        .byte $37, $11
- D 0 - I - 0x008751 02:8741: 25        .byte $25, $02
- D 0 - I - 0x008753 02:8743: 29        .byte $29, $02
- D 0 - I - 0x008755 02:8745: 34        .byte $34, $04
- D 0 - I - 0x008757 02:8747: B1        .byte $B1, $2B
- D 0 - I - 0x008759 02:8749: 25        .byte $25, $02
- D 0 - I - 0x00875B 02:874B: 29        .byte $29, $02
- D 0 - I - 0x00875D 02:874D: 34        .byte $34, $02
- D 0 - I - 0x00875F 02:874F: 32        .byte $32, $0A
- D 0 - I - 0x008761 02:8751: 24        .byte $24, $02
- D 0 - I - 0x008763 02:8753: 29        .byte $29, $02
- D 0 - I - 0x008765 02:8755: 34        .byte $34, $04
- D 0 - I - 0x008767 02:8757: B1        .byte $B1, $33
- D 0 - I - 0x008769 02:8759: 24        .byte $24, $02
- D 0 - I - 0x00876B 02:875B: 29        .byte $29, $02
- D 0 - I - 0x00876D 02:875D: 34        .byte $34, $02
- D 0 - I - 0x00876F 02:875F: 35        .byte $35, $0A
- D 0 - I - 0x008771 02:8761: A0        .byte $A0, $06
- D 0 - I - 0x008773 02:8763: 2A        .byte $2A, $02
- D 0 - I - 0x008775 02:8765: 32        .byte $32, $02
- D 0 - I - 0x008777 02:8767: 39        .byte $39, $06
- D 0 - I - 0x008779 02:8769: 37        .byte $37, $06
- D 0 - I - 0x00877B 02:876B: 34        .byte $34, $0A
- D 0 - I - 0x00877D 02:876D: 30        .byte $30, $06
- D 0 - I - 0x00877F 02:876F: A0        .byte $A0, $0F
- D 0 - I - 0x008781 02:8771: 32        .byte $32, $20
- D 0 - I - 0x008783 02:8773: B0        .byte $B0, $02
- D - - - - 0x008785 02:8775: FF        .byte $FF

loc_track23:
- D 0 - I - 0x008786 02:8776: 05        .byte $05, $0D, $00, $00
- D 0 - I - 0x00878A 02:877A: 22        .byte $22, $02
- D 0 - I - 0x00878C 02:877C: BF        .byte $BF, $02
- D 0 - I - 0x00878E 02:877E: 21        .byte $21, $02
- D 0 - I - 0x008790 02:8780: BF        .byte $BF, $04
- D 0 - I - 0x008792 02:8782: 20        .byte $20, $02
- D 0 - I - 0x008794 02:8784: BF        .byte $BF, $06
- D 0 - I - 0x008796 02:8786: 19        .byte $19, $02
- D 0 - I - 0x008798 02:8788: BF        .byte $BF, $08
- D 0 - I - 0x00879A 02:878A: 22        .byte $22, $02
- D 0 - I - 0x00879C 02:878C: BF        .byte $BF, $0A
- D 0 - I - 0x00879E 02:878E: 21        .byte $21, $02
- D 0 - I - 0x0087A0 02:8790: BF        .byte $BF, $0C
- D 0 - I - 0x0087A2 02:8792: 1A        .byte $1A, $02
- D 0 - I - 0x0087A4 02:8794: B7        .byte $B7, $0E
- D 0 - I - 0x0087A6 02:8796: 20        .byte $20, $02
- D 0 - I - 0x0087A8 02:8798: B7        .byte $B7, $10
- D 0 - I - 0x0087AA 02:879A: 22        .byte $22, $02
- D 0 - I - 0x0087AC 02:879C: B7        .byte $B7, $12
- D 0 - I - 0x0087AE 02:879E: 1F        .byte $1F, $02
- D 0 - I - 0x0087B0 02:87A0: A2        .byte $A2, $16
- D 0 - I - 0x0087B2 02:87A2: 22        .byte $22, $02
- D 0 - I - 0x0087B4 02:87A4: 20        .byte $20, $04
- D 0 - I - 0x0087B6 02:87A6: 22        .byte $22, $02
- D 0 - I - 0x0087B8 02:87A8: A2        .byte $A2, $40
- D 0 - I - 0x0087BA 02:87AA: 24        .byte $24, $06
- D 0 - I - 0x0087BC 02:87AC: A2        .byte $A2, $0D
- D 0 - I - 0x0087BE 02:87AE: B0        .byte $B0, $02
- D - - - - 0x0087C0 02:87B0: FF        .byte $FF

loc_track24:
- D 0 - I - 0x0087C1 02:87B1: 06        .byte $06, $02, $0F, $00
- D 0 - I - 0x0087C5 02:87B5: A3        .byte $A3, $10
- D 0 - I - 0x0087C7 02:87B7: 35        .byte $35, $0C
- D 0 - I - 0x0087C9 02:87B9: 34        .byte $34, $02
- D 0 - I - 0x0087CB 02:87BB: 35        .byte $35, $02
- D 0 - I - 0x0087CD 02:87BD: 32        .byte $32, $0C
- D 0 - I - 0x0087CF 02:87BF: 30        .byte $30, $02
- D 0 - I - 0x0087D1 02:87C1: 32        .byte $32, $02
- D 0 - I - 0x0087D3 02:87C3: 34        .byte $34, $0C
- D 0 - I - 0x0087D5 02:87C5: 32        .byte $32, $02
- D 0 - I - 0x0087D7 02:87C7: 34        .byte $34, $02
- D 0 - I - 0x0087D9 02:87C9: 30        .byte $30, $0C
- D 0 - I - 0x0087DB 02:87CB: 32        .byte $32, $02
- D 0 - I - 0x0087DD 02:87CD: 34        .byte $34, $02
- D 0 - I - 0x0087DF 02:87CF: B0        .byte $B0, $02
- D - - - - 0x0087E1 02:87D1: FF        .byte $FF

loc_track25:
- D 0 - I - 0x0087E2 02:87D2: 06        .byte $06, $65, $00, $00
- D 0 - I - 0x0087E6 02:87D6: 22        .byte $22, $06
- D 0 - I - 0x0087E8 02:87D8: 29        .byte $29, $06
- D 0 - I - 0x0087EA 02:87DA: 32        .byte $32, $04
- D 0 - I - 0x0087EC 02:87DC: 17        .byte $17, $06
- D 0 - I - 0x0087EE 02:87DE: 22        .byte $22, $06
- D 0 - I - 0x0087F0 02:87E0: 27        .byte $27, $04
- D 0 - I - 0x0087F2 02:87E2: 20        .byte $20, $06
- D 0 - I - 0x0087F4 02:87E4: 27        .byte $27, $06
- D 0 - I - 0x0087F6 02:87E6: 30        .byte $30, $04
- D 0 - I - 0x0087F8 02:87E8: 19        .byte $19, $06
- D 0 - I - 0x0087FA 02:87EA: 24        .byte $24, $06
- D 0 - I - 0x0087FC 02:87EC: 29        .byte $29, $04
- D 0 - I - 0x0087FE 02:87EE: B0        .byte $B0, $02
- D - - - - 0x008800 02:87F0: FF        .byte $FF

loc_track39:
- D 0 - I - 0x008801 02:87F1: 25        .byte $25, $10, $00, $00
- D 0 - I - 0x008805 02:87F5: FD        .byte $FD, $FE
- D 0 - I - 0x008807 02:87F7: 27        .byte $27, $02
- D 0 - I - 0x008809 02:87F9: BF        .byte $BF, $00
- D 0 - I - 0x00880B 02:87FB: FD        .byte $FD, $FE
- D 0 - I - 0x00880D 02:87FD: 25        .byte $25, $02
- D 0 - I - 0x00880F 02:87FF: BF        .byte $BF, $00
- D 0 - I - 0x008811 02:8801: FD        .byte $FD, $FE
- D 0 - I - 0x008813 02:8803: 27        .byte $27, $02
- D 0 - I - 0x008815 02:8805: BF        .byte $BF, $00
- D 0 - I - 0x008817 02:8807: FD        .byte $FD, $FE
- D 0 - I - 0x008819 02:8809: 25        .byte $25, $02
- D 0 - I - 0x00881B 02:880B: BF        .byte $BF, $00
- D 0 - I - 0x00881D 02:880D: FD        .byte $FD, $FE
- D 0 - I - 0x00881F 02:880F: 23        .byte $23, $02
- D 0 - I - 0x008821 02:8811: 33        .byte $33, $02
- D 0 - I - 0x008823 02:8813: B3        .byte $B3, $00
- D 0 - I - 0x008825 02:8815: FD        .byte $FD, $FE
- D 0 - I - 0x008827 02:8817: 25        .byte $25, $02
- D 0 - I - 0x008829 02:8819: 35        .byte $35, $02
- D 0 - I - 0x00882B 02:881B: B3        .byte $B3, $00
- D 0 - I - 0x00882D 02:881D: FD        .byte $FD, $FE
- D 0 - I - 0x00882F 02:881F: 27        .byte $27, $02
- D 0 - I - 0x008831 02:8821: 37        .byte $37, $02
- D 0 - I - 0x008833 02:8823: B7        .byte $B7, $00
- D 0 - I - 0x008835 02:8825: B1        .byte $B1, $0E
- D 0 - I - 0x008837 02:8827: B0        .byte $B0, $02

loc_track3A:
- D 0 - I - 0x008839 02:8829: 05        .byte $05, $00, $02, $00
- D 0 - I - 0x00883D 02:882D: 1F        .byte $1F, $02
- D 0 - I - 0x00883F 02:882F: 29        .byte $29, $02
- D 0 - I - 0x008841 02:8831: 39        .byte $39, $01
- D 0 - I - 0x008843 02:8833: 39        .byte $39, $01
- D 0 - I - 0x008845 02:8835: B7        .byte $B7, $03
- D 0 - I - 0x008847 02:8837: 27        .byte $27, $02
- D 0 - I - 0x008849 02:8839: 37        .byte $37, $01
- D 0 - I - 0x00884B 02:883B: 37        .byte $37, $01
- D 0 - I - 0x00884D 02:883D: B6        .byte $B6, $07
- D 0 - I - 0x00884F 02:883F: A0        .byte $A0, $0F
- D 0 - I - 0x008851 02:8841: 27        .byte $27, $01
- D 0 - I - 0x008853 02:8843: 29        .byte $29, $01
- D 0 - I - 0x008855 02:8845: 27        .byte $27, $01
- D 0 - I - 0x008857 02:8847: 29        .byte $29, $01
- D 0 - I - 0x008859 02:8849: 32        .byte $32, $0C
- D 0 - I - 0x00885B 02:884B: B1        .byte $B1, $0C
- D 0 - I - 0x00885D 02:884D: 29        .byte $29, $01
- D 0 - I - 0x00885F 02:884F: 2B        .byte $2B, $01
- D 0 - I - 0x008861 02:8851: 29        .byte $29, $01
- D 0 - I - 0x008863 02:8853: 2B        .byte $2B, $01
- D 0 - I - 0x008865 02:8855: 32        .byte $32, $10
- D 0 - I - 0x008867 02:8857: 19        .byte $19, $01
- D 0 - I - 0x008869 02:8859: 20        .byte $20, $01
- D 0 - I - 0x00886B 02:885B: 22        .byte $22, $01
- D 0 - I - 0x00886D 02:885D: 24        .byte $24, $01
- D 0 - I - 0x00886F 02:885F: 20        .byte $20, $01
- D 0 - I - 0x008871 02:8861: 22        .byte $22, $01
- D 0 - I - 0x008873 02:8863: 24        .byte $24, $01
- D 0 - I - 0x008875 02:8865: 27        .byte $27, $01
- D 0 - I - 0x008877 02:8867: 24        .byte $24, $01
- D 0 - I - 0x008879 02:8869: 27        .byte $27, $01
- D 0 - I - 0x00887B 02:886B: 29        .byte $29, $01
- D 0 - I - 0x00887D 02:886D: 30        .byte $30, $01
- D 0 - I - 0x00887F 02:886F: 27        .byte $27, $01
- D 0 - I - 0x008881 02:8871: 29        .byte $29, $01
- D 0 - I - 0x008883 02:8873: 30        .byte $30, $01
- D 0 - I - 0x008885 02:8875: 32        .byte $32, $01
- D 0 - I - 0x008887 02:8877: A0        .byte $A0, $02
- D 0 - I - 0x008889 02:8879: 34        .byte $34, $02
- D 0 - I - 0x00888B 02:887B: 44        .byte $44, $01
- D 0 - I - 0x00888D 02:887D: 44        .byte $44, $01
- D 0 - I - 0x00888F 02:887F: B7        .byte $B7, $27
- D 0 - I - 0x008891 02:8881: A0        .byte $A0, $0F
- D 0 - I - 0x008893 02:8883: 37        .byte $37, $02
- D 0 - I - 0x008895 02:8885: 34        .byte $34, $02
- D 0 - I - 0x008897 02:8887: 32        .byte $32, $02
- D 0 - I - 0x008899 02:8889: 30        .byte $30, $06
- D 0 - I - 0x00889B 02:888B: 29        .byte $29, $04
- D 0 - I - 0x00889D 02:888D: 27        .byte $27, $0E
- D 0 - I - 0x00889F 02:888F: A0        .byte $A0, $02
- D 0 - I - 0x0088A1 02:8891: B0        .byte $B0, $02
- D - - - - 0x0088A3 02:8893: FF        .byte $FF

loc_track9:
- D 0 - I - 0x0088A4 02:8894: 24        .byte $24, $15, $00, $00
- D 0 - I - 0x0088A8 02:8898: FD        .byte $FD, $FE
- D 0 - I - 0x0088AA 02:889A: 30        .byte $30, $04
- D 0 - I - 0x0088AC 02:889C: B7        .byte $B7, $00
- D 0 - I - 0x0088AE 02:889E: FD        .byte $FD, $FE
- D 0 - I - 0x0088B0 02:88A0: 2A        .byte $2A, $04
- D 0 - I - 0x0088B2 02:88A2: B7        .byte $B7, $00
- D 0 - I - 0x0088B4 02:88A4: FD        .byte $FD, $FE
- D 0 - I - 0x0088B6 02:88A6: 28        .byte $28, $04
- D 0 - I - 0x0088B8 02:88A8: B7        .byte $B7, $00
- D 0 - I - 0x0088BA 02:88AA: FD        .byte $FD, $FE
- D 0 - I - 0x0088BC 02:88AC: 25        .byte $25, $04
- D 0 - I - 0x0088BE 02:88AE: B3        .byte $B3, $00
- D 0 - I - 0x0088C0 02:88B0: FD        .byte $FD, $FE
- D 0 - I - 0x0088C2 02:88B2: 27        .byte $27, $04
- D 0 - I - 0x0088C4 02:88B4: B3        .byte $B3, $00
- D 0 - I - 0x0088C6 02:88B6: B1        .byte $B1, $02
- D 0 - I - 0x0088C8 02:88B8: FD        .byte $FD, $FE
- D 0 - I - 0x0088CA 02:88BA: 20        .byte $20, $04
- D 0 - I - 0x0088CC 02:88BC: 30        .byte $30, $02
- D 0 - I - 0x0088CE 02:88BE: 1A        .byte $1A, $06
- D 0 - I - 0x0088D0 02:88C0: 2A        .byte $2A, $04
- D 0 - I - 0x0088D2 02:88C2: 18        .byte $18, $04
- D 0 - I - 0x0088D4 02:88C4: 28        .byte $28, $02
- D 0 - I - 0x0088D6 02:88C6: 17        .byte $17, $06
- D 0 - I - 0x0088D8 02:88C8: 27        .byte $27, $04
- D 0 - I - 0x0088DA 02:88CA: B1        .byte $B1, $00
- D 0 - I - 0x0088DC 02:88CC: 20        .byte $20, $04
- D 0 - I - 0x0088DE 02:88CE: 30        .byte $30, $02
- D 0 - I - 0x0088E0 02:88D0: 1A        .byte $1A, $06
- D 0 - I - 0x0088E2 02:88D2: 2A        .byte $2A, $04
- D 0 - I - 0x0088E4 02:88D4: 25        .byte $25, $04
- D 0 - I - 0x0088E6 02:88D6: 25        .byte $25, $04
- D 0 - I - 0x0088E8 02:88D8: 25        .byte $25, $04
- D 0 - I - 0x0088EA 02:88DA: 25        .byte $25, $04
- D 0 - I - 0x0088EC 02:88DC: 27        .byte $27, $04
- D 0 - I - 0x0088EE 02:88DE: 27        .byte $27, $04
- D 0 - I - 0x0088F0 02:88E0: 27        .byte $27, $04
- D 0 - I - 0x0088F2 02:88E2: 27        .byte $27, $04
- D 0 - I - 0x0088F4 02:88E4: 27        .byte $27, $02
- D 0 - I - 0x0088F6 02:88E6: 37        .byte $37, $02
- D 0 - I - 0x0088F8 02:88E8: 28        .byte $28, $02
- D 0 - I - 0x0088FA 02:88EA: 38        .byte $38, $02
- D 0 - I - 0x0088FC 02:88EC: 2A        .byte $2A, $02
- D 0 - I - 0x0088FE 02:88EE: 3A        .byte $3A, $02
- D 0 - I - 0x008900 02:88F0: 2B        .byte $2B, $02
- D 0 - I - 0x008902 02:88F2: 3B        .byte $3B, $02
- D 0 - I - 0x008904 02:88F4: B0        .byte $B0, $02
- D - - - - 0x008906 02:88F6: FF        .byte $FF

loc_track26:
- D - - - - 0x008907 02:88F7: FF        .byte $FF

loc_track27:
- D - - - - 0x008908 02:88F8: FF        .byte $FF

loc_track28:
- D 0 - I - 0x008909 02:88F9: 30        .byte $30, $00, $02, $00
- D 0 - I - 0x00890D 02:88FD: 08        .byte $08, $10
- D 0 - I - 0x00890F 02:88FF: FF        .byte $FF

loc_track29:
- D 0 - I - 0x008910 02:8900: 01        .byte $01, $02, $17, $86
- D 0 - I - 0x008914 02:8904: 30        .byte $30, $02
- D 0 - I - 0x008916 02:8906: 28        .byte $28, $01
- D 0 - I - 0x008918 02:8908: FF        .byte $FF

loc_track2A:
- D 0 - I - 0x008919 02:8909: 03        .byte $03, $01, $1F, $9B
- D 0 - I - 0x00891D 02:890D: EF        .byte $EF, $01
- D 0 - I - 0x00891F 02:890F: FD        .byte $FD, $FE
- D 0 - I - 0x008921 02:8911: 27        .byte $27, $01
- D 0 - I - 0x008923 02:8913: 20        .byte $20, $02
- D 0 - I - 0x008925 02:8915: 17        .byte $17, $06
- D 0 - I - 0x008927 02:8917: B1        .byte $B1, $00
- D 0 - I - 0x008929 02:8919: FF        .byte $FF

loc_track2B:
- D - - - - 0x00892A 02:891A: FF        .byte $FF

loc_track2C:
- D 0 - I - 0x00892B 02:891B: 32        .byte $32, $00, $03, $00
- D 0 - I - 0x00892F 02:891F: 02        .byte $02, $01
- D 0 - I - 0x008931 02:8921: 04        .byte $04, $01
- D 0 - I - 0x008933 02:8923: 07        .byte $07, $05
- D 0 - I - 0x008935 02:8925: FF        .byte $FF

loc_track2D:
- D 0 - I - 0x008936 02:8926: 32        .byte $32, $00, $03, $00
- D 0 - I - 0x00893A 02:892A: 04        .byte $04, $01
- D 0 - I - 0x00893C 02:892C: 08        .byte $08, $02
- D 0 - I - 0x00893E 02:892E: FF        .byte $FF

loc_track2E:
- D - - - - 0x00893F 02:892F: FF        .byte $FF

loc_track2F:
- D - - - - 0x008940 02:8930: FF        .byte $FF

loc_track30:
- D 0 - I - 0x008941 02:8931: 01        .byte $01, $02, $1F, $83
- D 0 - I - 0x008945 02:8935: EF        .byte $EF, $02
- D 0 - I - 0x008947 02:8937: A3        .byte $A3, $20
- D 0 - I - 0x008949 02:8939: FD        .byte $FD, $FE
- D 0 - I - 0x00894B 02:893B: 20        .byte $20, $02
- D 0 - I - 0x00894D 02:893D: BF        .byte $BF, $00
- D 0 - I - 0x00894F 02:893F: FF        .byte $FF

loc_track31:
- D 0 - I - 0x008950 02:8940: 32        .byte $32, $00, $03, $00
- D 0 - I - 0x008954 02:8944: 04        .byte $04, $01
- D 0 - I - 0x008956 02:8946: FF        .byte $FF

loc_track32:
- D 0 - I - 0x008957 02:8947: 30        .byte $30, $00, $01, $00
- D 0 - I - 0x00895B 02:894B: FD        .byte $FD, $FE
- D 0 - I - 0x00895D 02:894D: 04        .byte $04, $02
- D 0 - I - 0x00895F 02:894F: 03        .byte $03, $02
- D 0 - I - 0x008961 02:8951: B2        .byte $B2, $00
- D 0 - I - 0x008963 02:8953: 09        .byte $09, $05
- D 0 - I - 0x008965 02:8955: FF        .byte $FF

- D - - - - 0x008966 02:8956: FF        .byte $FF

loc_track33:
- D - - - - 0x008967 02:8957: FF        .byte $FF

loc_track34:
- D 0 - I - 0x008968 02:8958: 01        .byte $01, $01, $01, $8C
- D 0 - I - 0x00896C 02:895C: 16        .byte $16, $04
- D 0 - I - 0x00896E 02:895E: FF        .byte $FF

loc_track35:
- D 0 - I - 0x00896F 02:895F: 02        .byte $02, $02, $17, $00
- D 0 - I - 0x008973 02:8963: 40        .byte $40, $01
- D 0 - I - 0x008975 02:8965: 50        .byte $50, $01
- D 0 - I - 0x008977 02:8967: 60        .byte $60, $01
- D 0 - I - 0x008979 02:8969: 65        .byte $65, $01
- D 0 - I - 0x00897B 02:896B: FF        .byte $FF

loc_track36:
- D 0 - I - 0x00897C 02:896C: 30        .byte $30, $00, $05, $00
- D 0 - I - 0x008980 02:8970: 09        .byte $09, $01
- D 0 - I - 0x008982 02:8972: 05        .byte $05, $05
- D 0 - I - 0x008984 02:8974: 09        .byte $09, $30
- D 0 - I - 0x008986 02:8976: FF        .byte $FF

loc_track37:
- D 0 - I - 0x008987 02:8977: 00        .byte $00, $01, $00, $81
- D 0 - I - 0x00898B 02:897B: 20        .byte $20, $03
- D 0 - I - 0x00898D 02:897D: 27        .byte $27, $01
- D 0 - I - 0x00898F 02:897F: 25        .byte $25, $02
- D 0 - I - 0x008991 02:8981: FF        .byte $FF

loc_track38:
- D - - - - 0x008992 02:8982: FF        .byte $FF

loc_track3C:
- D - - - - 0x008993 02:8983: FF        .byte $FF

loc_track3D:
- D 0 - I - 0x008994 02:8984: 30        .byte $30, $00, $02, $00
- D 0 - I - 0x008998 02:8988: 06        .byte $06, $01
- D 0 - I - 0x00899A 02:898A: 0E        .byte $0E, $03
- D 0 - I - 0x00899C 02:898C: FF        .byte $FF

loc_track3E:
- D - - - - 0x00899D 02:898D: FF        .byte $FF

loc_track3F:
- D 0 - I - 0x00899E 02:898E: 00        .byte $00, $02, $18, $84
- D 0 - I - 0x0089A2 02:8992: 46        .byte $46, $07
- D 0 - I - 0x0089A4 02:8994: FF        .byte $FF

loc_track40:
- D 0 - I - 0x0089A5 02:8995: 00        .byte $00, $01, $19, $8D
- D 0 - I - 0x0089A9 02:8999: 21        .byte $21, $06
- D 0 - I - 0x0089AB 02:899B: FF        .byte $FF

loc_track41:
- D 0 - I - 0x0089AC 02:899C: 30        .byte $30, $00, $05, $00
- D 0 - I - 0x0089B0 02:89A0: 0B        .byte $0B, $01
- D 0 - I - 0x0089B2 02:89A2: 0C        .byte $0C, $01
- D 0 - I - 0x0089B4 02:89A4: 0E        .byte $0E, $02
- D 0 - I - 0x0089B6 02:89A6: FF        .byte $FF

loc_track42:
- D - - - - 0x0089B7 02:89A7: FF        .byte $FF

loc_track43:
- D 0 - I - 0x0089B8 02:89A8: 04        .byte $04, $02, $0A, $00
- D 0 - I - 0x0089BC 02:89AC: A3        .byte $A3, $10
- D 0 - I - 0x0089BE 02:89AE: 24        .byte $24, $06
- D 0 - I - 0x0089C0 02:89B0: 24        .byte $24, $06
- D 0 - I - 0x0089C2 02:89B2: 24        .byte $24, $06
- D 0 - I - 0x0089C4 02:89B4: 24        .byte $24, $06
- D 0 - I - 0x0089C6 02:89B6: A0        .byte $A0, $02
- D 0 - I - 0x0089C8 02:89B8: 24        .byte $24, $04
- D 0 - I - 0x0089CA 02:89BA: 24        .byte $24, $04
- D 0 - I - 0x0089CC 02:89BC: A0        .byte $A0, $0A
- D 0 - I - 0x0089CE 02:89BE: 25        .byte $25, $06
- D 0 - I - 0x0089D0 02:89C0: 25        .byte $25, $06
- D 0 - I - 0x0089D2 02:89C2: 25        .byte $25, $06
- D 0 - I - 0x0089D4 02:89C4: 25        .byte $25, $06
- D 0 - I - 0x0089D6 02:89C6: A0        .byte $A0, $02
- D 0 - I - 0x0089D8 02:89C8: 25        .byte $25, $04
- D 0 - I - 0x0089DA 02:89CA: 25        .byte $25, $04
- D 0 - I - 0x0089DC 02:89CC: A0        .byte $A0, $0A
- D 0 - I - 0x0089DE 02:89CE: B1        .byte $B1, $02
- D 0 - I - 0x0089E0 02:89D0: 28        .byte $28, $06
- D 0 - I - 0x0089E2 02:89D2: 28        .byte $28, $06
- D 0 - I - 0x0089E4 02:89D4: 28        .byte $28, $06
- D 0 - I - 0x0089E6 02:89D6: 28        .byte $28, $06
- D 0 - I - 0x0089E8 02:89D8: A0        .byte $A0, $02
- D 0 - I - 0x0089EA 02:89DA: 28        .byte $28, $04
- D 0 - I - 0x0089EC 02:89DC: 28        .byte $28, $04
- D 0 - I - 0x0089EE 02:89DE: A0        .byte $A0, $0A
- D 0 - I - 0x0089F0 02:89E0: 27        .byte $27, $06
- D 0 - I - 0x0089F2 02:89E2: 27        .byte $27, $06
- D 0 - I - 0x0089F4 02:89E4: 27        .byte $27, $06
- D 0 - I - 0x0089F6 02:89E6: 27        .byte $27, $06
- D 0 - I - 0x0089F8 02:89E8: A0        .byte $A0, $02
- D 0 - I - 0x0089FA 02:89EA: 27        .byte $27, $04
- D 0 - I - 0x0089FC 02:89EC: 27        .byte $27, $04
- D 0 - I - 0x0089FE 02:89EE: A0        .byte $A0, $0A
- D 0 - I - 0x008A00 02:89F0: 25        .byte $25, $06
- D 0 - I - 0x008A02 02:89F2: 25        .byte $25, $06
- D 0 - I - 0x008A04 02:89F4: 25        .byte $25, $06
- D 0 - I - 0x008A06 02:89F6: 25        .byte $25, $06
- D 0 - I - 0x008A08 02:89F8: A0        .byte $A0, $02
- D 0 - I - 0x008A0A 02:89FA: 25        .byte $25, $04
- D 0 - I - 0x008A0C 02:89FC: 25        .byte $25, $04
- D 0 - I - 0x008A0E 02:89FE: A0        .byte $A0, $0F
- D 0 - I - 0x008A10 02:8A00: 2B        .byte $2B, $18
- D 0 - I - 0x008A12 02:8A02: 35        .byte $35, $02
- D 0 - I - 0x008A14 02:8A04: 34        .byte $34, $02
- D 0 - I - 0x008A16 02:8A06: 32        .byte $32, $02
- D 0 - I - 0x008A18 02:8A08: 30        .byte $30, $02
- D 0 - I - 0x008A1A 02:8A0A: B0        .byte $B0, $02
- D - - - - 0x008A1C 02:8A0C: FF        .byte $FF

loc_track44:
- D 0 - I - 0x008A1D 02:8A0D: 03        .byte $03, $00, $01, $00
- D 0 - I - 0x008A21 02:8A11: FD        .byte $FD, $FE
- D 0 - I - 0x008A23 02:8A13: 30        .byte $30, $02
- D 0 - I - 0x008A25 02:8A15: 33        .byte $33, $02
- D 0 - I - 0x008A27 02:8A17: 30        .byte $30, $02
- D 0 - I - 0x008A29 02:8A19: 33        .byte $33, $02
- D 0 - I - 0x008A2B 02:8A1B: 37        .byte $37, $02
- D 0 - I - 0x008A2D 02:8A1D: 33        .byte $33, $02
- D 0 - I - 0x008A2F 02:8A1F: 30        .byte $30, $02
- D 0 - I - 0x008A31 02:8A21: 33        .byte $33, $02
- D 0 - I - 0x008A33 02:8A23: 30        .byte $30, $02
- D 0 - I - 0x008A35 02:8A25: 33        .byte $33, $02
- D 0 - I - 0x008A37 02:8A27: 30        .byte $30, $02
- D 0 - I - 0x008A39 02:8A29: 33        .byte $33, $02
- D 0 - I - 0x008A3B 02:8A2B: 36        .byte $36, $02
- D 0 - I - 0x008A3D 02:8A2D: 33        .byte $33, $02
- D 0 - I - 0x008A3F 02:8A2F: 30        .byte $30, $02
- D 0 - I - 0x008A41 02:8A31: 33        .byte $33, $02
- D 0 - I - 0x008A43 02:8A33: B3        .byte $B3, $00
- D 0 - I - 0x008A45 02:8A35: FD        .byte $FD, $FE
- D 0 - I - 0x008A47 02:8A37: 35        .byte $35, $02
- D 0 - I - 0x008A49 02:8A39: 38        .byte $38, $02
- D 0 - I - 0x008A4B 02:8A3B: 35        .byte $35, $02
- D 0 - I - 0x008A4D 02:8A3D: 38        .byte $38, $02
- D 0 - I - 0x008A4F 02:8A3F: 40        .byte $40, $02
- D 0 - I - 0x008A51 02:8A41: 38        .byte $38, $02
- D 0 - I - 0x008A53 02:8A43: 35        .byte $35, $02
- D 0 - I - 0x008A55 02:8A45: 38        .byte $38, $02
- D 0 - I - 0x008A57 02:8A47: 35        .byte $35, $02
- D 0 - I - 0x008A59 02:8A49: 38        .byte $38, $02
- D 0 - I - 0x008A5B 02:8A4B: 35        .byte $35, $02
- D 0 - I - 0x008A5D 02:8A4D: 38        .byte $38, $02
- D 0 - I - 0x008A5F 02:8A4F: 3B        .byte $3B, $02
- D 0 - I - 0x008A61 02:8A51: 38        .byte $38, $02
- D 0 - I - 0x008A63 02:8A53: 35        .byte $35, $02
- D 0 - I - 0x008A65 02:8A55: 38        .byte $38, $02
- D 0 - I - 0x008A67 02:8A57: B1        .byte $B1, $00
- D 0 - I - 0x008A69 02:8A59: FD        .byte $FD, $FE
- D 0 - I - 0x008A6B 02:8A5B: 30        .byte $30, $02
- D 0 - I - 0x008A6D 02:8A5D: 33        .byte $33, $02
- D 0 - I - 0x008A6F 02:8A5F: 30        .byte $30, $02
- D 0 - I - 0x008A71 02:8A61: 33        .byte $33, $02
- D 0 - I - 0x008A73 02:8A63: 37        .byte $37, $02
- D 0 - I - 0x008A75 02:8A65: 33        .byte $33, $02
- D 0 - I - 0x008A77 02:8A67: 30        .byte $30, $02
- D 0 - I - 0x008A79 02:8A69: 33        .byte $33, $02
- D 0 - I - 0x008A7B 02:8A6B: 30        .byte $30, $02
- D 0 - I - 0x008A7D 02:8A6D: 33        .byte $33, $02
- D 0 - I - 0x008A7F 02:8A6F: 30        .byte $30, $02
- D 0 - I - 0x008A81 02:8A71: 33        .byte $33, $02
- D 0 - I - 0x008A83 02:8A73: 36        .byte $36, $02
- D 0 - I - 0x008A85 02:8A75: 33        .byte $33, $02
- D 0 - I - 0x008A87 02:8A77: 30        .byte $30, $02
- D 0 - I - 0x008A89 02:8A79: 33        .byte $33, $02
- D 0 - I - 0x008A8B 02:8A7B: B1        .byte $B1, $00
- D 0 - I - 0x008A8D 02:8A7D: FD        .byte $FD, $FE
- D 0 - I - 0x008A8F 02:8A7F: 2A        .byte $2A, $02
- D 0 - I - 0x008A91 02:8A81: 33        .byte $33, $02
- D 0 - I - 0x008A93 02:8A83: 2A        .byte $2A, $02
- D 0 - I - 0x008A95 02:8A85: 33        .byte $33, $02
- D 0 - I - 0x008A97 02:8A87: 37        .byte $37, $02
- D 0 - I - 0x008A99 02:8A89: 33        .byte $33, $02
- D 0 - I - 0x008A9B 02:8A8B: 2A        .byte $2A, $02
- D 0 - I - 0x008A9D 02:8A8D: 33        .byte $33, $02
- D 0 - I - 0x008A9F 02:8A8F: B1        .byte $B1, $00
- D 0 - I - 0x008AA1 02:8A91: FD        .byte $FD, $FE
- D 0 - I - 0x008AA3 02:8A93: 2B        .byte $2B, $02
- D 0 - I - 0x008AA5 02:8A95: 32        .byte $32, $02
- D 0 - I - 0x008AA7 02:8A97: 2B        .byte $2B, $02
- D 0 - I - 0x008AA9 02:8A99: 32        .byte $32, $02
- D 0 - I - 0x008AAB 02:8A9B: 37        .byte $37, $02
- D 0 - I - 0x008AAD 02:8A9D: 32        .byte $32, $02
- D 0 - I - 0x008AAF 02:8A9F: 2B        .byte $2B, $02
- D 0 - I - 0x008AB1 02:8AA1: 32        .byte $32, $02
- D 0 - I - 0x008AB3 02:8AA3: B1        .byte $B1, $00
- D 0 - I - 0x008AB5 02:8AA5: B0        .byte $B0, $02
- D - - - - 0x008AB7 02:8AA7: FF        .byte $FF

loc_track45:
- D 0 - I - 0x008AB8 02:8AA8: 0A        .byte $0A, $00, $17, $00
- D 0 - I - 0x008ABC 02:8AAC: FD        .byte $FD, $FE
- D 0 - I - 0x008ABE 02:8AAE: 45        .byte $45, $01
- D 0 - I - 0x008AC0 02:8AB0: 41        .byte $41, $01
- D 0 - I - 0x008AC2 02:8AB2: 3A        .byte $3A, $01
- D 0 - I - 0x008AC4 02:8AB4: 36        .byte $36, $01
- D 0 - I - 0x008AC6 02:8AB6: B3        .byte $B3, $00
- D 0 - I - 0x008AC8 02:8AB8: FD        .byte $FD, $FE
- D 0 - I - 0x008ACA 02:8ABA: 47        .byte $47, $01
- D 0 - I - 0x008ACC 02:8ABC: 43        .byte $43, $01
- D 0 - I - 0x008ACE 02:8ABE: 40        .byte $40, $01
- D 0 - I - 0x008AD0 02:8AC0: 38        .byte $38, $01
- D 0 - I - 0x008AD2 02:8AC2: B3        .byte $B3, $00
- D 0 - I - 0x008AD4 02:8AC4: B0        .byte $B0, $02
- D - - - - 0x008AD6 02:8AC6: FF        .byte $FF

loc_track46:
- D 0 - I - 0x008AD7 02:8AC7: 05        .byte $05, $02, $00, $00
- D 0 - I - 0x008ADB 02:8ACB: 32        .byte $32, $02
- D 0 - I - 0x008ADD 02:8ACD: 42        .byte $42, $01
- D 0 - I - 0x008ADF 02:8ACF: 42        .byte $42, $01
- D 0 - I - 0x008AE1 02:8AD1: B7        .byte $B7, $02
- D 0 - I - 0x008AE3 02:8AD3: 34        .byte $34, $02
- D 0 - I - 0x008AE5 02:8AD5: 44        .byte $44, $01
- D 0 - I - 0x008AE7 02:8AD7: 44        .byte $44, $01
- D 0 - I - 0x008AE9 02:8AD9: B7        .byte $B7, $06
- D 0 - I - 0x008AEB 02:8ADB: 30        .byte $30, $02
- D 0 - I - 0x008AED 02:8ADD: 40        .byte $40, $01
- D 0 - I - 0x008AEF 02:8ADF: 40        .byte $40, $01
- D 0 - I - 0x008AF1 02:8AE1: B7        .byte $B7, $0A
- D 0 - I - 0x008AF3 02:8AE3: 29        .byte $29, $02
- D 0 - I - 0x008AF5 02:8AE5: 39        .byte $39, $01
- D 0 - I - 0x008AF7 02:8AE7: 39        .byte $39, $01
- D 0 - I - 0x008AF9 02:8AE9: B1        .byte $B1, $0E
- D 0 - I - 0x008AFB 02:8AEB: 27        .byte $27, $02
- D 0 - I - 0x008AFD 02:8AED: 37        .byte $37, $01
- D 0 - I - 0x008AFF 02:8AEF: 37        .byte $37, $01
- D 0 - I - 0x008B01 02:8AF1: 25        .byte $25, $02
- D 0 - I - 0x008B03 02:8AF3: 35        .byte $35, $01
- D 0 - I - 0x008B05 02:8AF5: 35        .byte $35, $01
- D 0 - I - 0x008B07 02:8AF7: 24        .byte $24, $02
- D 0 - I - 0x008B09 02:8AF9: 34        .byte $34, $01
- D 0 - I - 0x008B0B 02:8AFB: 34        .byte $34, $01
- D 0 - I - 0x008B0D 02:8AFD: B3        .byte $B3, $18
- D 0 - I - 0x008B0F 02:8AFF: 32        .byte $32, $02
- D 0 - I - 0x008B11 02:8B01: 42        .byte $42, $01
- D 0 - I - 0x008B13 02:8B03: 42        .byte $42, $01
- D 0 - I - 0x008B15 02:8B05: B7        .byte $B7, $1C
- D 0 - I - 0x008B17 02:8B07: 34        .byte $34, $02
- D 0 - I - 0x008B19 02:8B09: 44        .byte $44, $01
- D 0 - I - 0x008B1B 02:8B0B: 44        .byte $44, $01
- D 0 - I - 0x008B1D 02:8B0D: B7        .byte $B7, $20
- D 0 - I - 0x008B1F 02:8B0F: 27        .byte $27, $02
- D 0 - I - 0x008B21 02:8B11: 37        .byte $37, $01
- D 0 - I - 0x008B23 02:8B13: 37        .byte $37, $01
- D 0 - I - 0x008B25 02:8B15: B3        .byte $B3, $24
- D 0 - I - 0x008B27 02:8B17: 30        .byte $30, $02
- D 0 - I - 0x008B29 02:8B19: 40        .byte $40, $01
- D 0 - I - 0x008B2B 02:8B1B: 40        .byte $40, $01
- D 0 - I - 0x008B2D 02:8B1D: B3        .byte $B3, $28
- D 0 - I - 0x008B2F 02:8B1F: 32        .byte $32, $02
- D 0 - I - 0x008B31 02:8B21: 42        .byte $42, $01
- D 0 - I - 0x008B33 02:8B23: 42        .byte $42, $01
- D 0 - I - 0x008B35 02:8B25: B3        .byte $B3, $2C
- D 0 - I - 0x008B37 02:8B27: 1F        .byte $1F, $02
- D 0 - I - 0x008B39 02:8B29: A0        .byte $A0, $04
- D 0 - I - 0x008B3B 02:8B2B: A2        .byte $A2, $01
- D 0 - I - 0x008B3D 02:8B2D: 22        .byte $22, $02
- D 0 - I - 0x008B3F 02:8B2F: 20        .byte $20, $04
- D 0 - I - 0x008B41 02:8B31: 22        .byte $22, $02
- D 0 - I - 0x008B43 02:8B33: 24        .byte $24, $06
- D 0 - I - 0x008B45 02:8B35: A0        .byte $A0, $00
- D 0 - I - 0x008B47 02:8B37: A2        .byte $A2, $02
- D 0 - I - 0x008B49 02:8B39: B0        .byte $B0, $02
- D - - - - 0x008B4B 02:8B3B: FF        .byte $FF

loc_track47:
- D 0 - I - 0x008B4C 02:8B3C: 06        .byte $06, $02, $09, $00
- D 0 - I - 0x008B50 02:8B40: 32        .byte $32, $06
- D 0 - I - 0x008B52 02:8B42: 37        .byte $37, $06
- D 0 - I - 0x008B54 02:8B44: 30        .byte $30, $02
- D 0 - I - 0x008B56 02:8B46: 32        .byte $32, $02
- D 0 - I - 0x008B58 02:8B48: 2B        .byte $2B, $06
- D 0 - I - 0x008B5A 02:8B4A: 37        .byte $37, $06
- D 0 - I - 0x008B5C 02:8B4C: 29        .byte $29, $02
- D 0 - I - 0x008B5E 02:8B4E: 2B        .byte $2B, $02
- D 0 - I - 0x008B60 02:8B50: 30        .byte $30, $06
- D 0 - I - 0x008B62 02:8B52: 2B        .byte $2B, $06
- D 0 - I - 0x008B64 02:8B54: 28        .byte $28, $04
- D 0 - I - 0x008B66 02:8B56: 29        .byte $29, $0C
- D 0 - I - 0x008B68 02:8B58: 2B        .byte $2B, $02
- D 0 - I - 0x008B6A 02:8B5A: 30        .byte $30, $02
- D 0 - I - 0x008B6C 02:8B5C: B0        .byte $B0, $02
- D - - - - 0x008B6E 02:8B5E: FF        .byte $FF

loc_track48:
- D 0 - I - 0x008B6F 02:8B5F: 35        .byte $35, $00, $00, $00
- D 0 - I - 0x008B73 02:8B63: FD        .byte $FD, $FE
- D 0 - I - 0x008B75 02:8B65: 02        .byte $02, $02
- D 0 - I - 0x008B77 02:8B67: 02        .byte $02, $02
- D 0 - I - 0x008B79 02:8B69: 0A        .byte $0A, $02
- D 0 - I - 0x008B7B 02:8B6B: 02        .byte $02, $02
- D 0 - I - 0x008B7D 02:8B6D: 02        .byte $02, $02
- D 0 - I - 0x008B7F 02:8B6F: 02        .byte $02, $02
- D 0 - I - 0x008B81 02:8B71: 0A        .byte $0A, $02
- D 0 - I - 0x008B83 02:8B73: 02        .byte $02, $02
- D 0 - I - 0x008B85 02:8B75: B7        .byte $B7, $00
- D 0 - I - 0x008B87 02:8B77: 0E        .byte $0E, $02
- D 0 - I - 0x008B89 02:8B79: 02        .byte $02, $02
- D 0 - I - 0x008B8B 02:8B7B: 0A        .byte $0A, $02
- D 0 - I - 0x008B8D 02:8B7D: 02        .byte $02, $02
- D 0 - I - 0x008B8F 02:8B7F: BF        .byte $BF, $00
- D - - - - 0x008B91 02:8B81: B0        .byte $B0, $02

loc_track49:
- D 0 - I - 0x008B93 02:8B83: 34        .byte $34, $00, $00, $00
- D 0 - I - 0x008B97 02:8B87: 02        .byte $02, $02
- D 0 - I - 0x008B99 02:8B89: 02        .byte $02, $02
- D 0 - I - 0x008B9B 02:8B8B: 0A        .byte $0A, $02
- D 0 - I - 0x008B9D 02:8B8D: 02        .byte $02, $02
- D 0 - I - 0x008B9F 02:8B8F: B0        .byte $B0, $02
- D - - - - 0x008BA1 02:8B91: FF        .byte $FF

loc_track4A:
- D 0 - I - 0x008BA2 02:8B92: 3A        .byte $3A, $00, $00, $00
- D 0 - I - 0x008BA6 02:8B96: 1F        .byte $1F, $04
- D 0 - I - 0x008BA8 02:8B98: B0        .byte $B0, $02
- D - - - - 0x008BAA 02:8B9A: FF        .byte $FF

loc_track4B:
- D 0 - I - 0x008BAB 02:8B9B: 35        .byte $35, $00, $00, $00
- D 0 - I - 0x008BAF 02:8B9F: 0E        .byte $0E, $02
- D 0 - I - 0x008BB1 02:8BA1: 02        .byte $02, $02
- D 0 - I - 0x008BB3 02:8BA3: 0A        .byte $0A, $02
- D 0 - I - 0x008BB5 02:8BA5: A0        .byte $A0, $01
- D 0 - I - 0x008BB7 02:8BA7: 02        .byte $02, $04
- D 0 - I - 0x008BB9 02:8BA9: 02        .byte $02, $04
- D 0 - I - 0x008BBB 02:8BAB: 02        .byte $02, $02
- D 0 - I - 0x008BBD 02:8BAD: A0        .byte $A0, $00
- D 0 - I - 0x008BBF 02:8BAF: B0        .byte $B0, $02
- D - - - - 0x008BC1 02:8BB1: FF        .byte $FF

loc_track4C:
- D 0 - I - 0x008BC2 02:8BB2: 34        .byte $34, $00, $00, $00
- D 0 - I - 0x008BC6 02:8BB6: 01        .byte $01, $02
- D 0 - I - 0x008BC8 02:8BB8: 01        .byte $01, $02
- D 0 - I - 0x008BCA 02:8BBA: 07        .byte $07, $02
- D 0 - I - 0x008BCC 02:8BBC: 01        .byte $01, $02
- D 0 - I - 0x008BCE 02:8BBE: 01        .byte $01, $02
- D 0 - I - 0x008BD0 02:8BC0: 07        .byte $07, $02
- D 0 - I - 0x008BD2 02:8BC2: 01        .byte $01, $02
- D 0 - I - 0x008BD4 02:8BC4: 07        .byte $07, $02
- D 0 - I - 0x008BD6 02:8BC6: B0        .byte $B0, $02
- D - - - - 0x008BD8 02:8BC8: FF        .byte $FF

loc_track4D:
- D 0 - I - 0x008BD9 02:8BC9: 03        .byte $03, $00, $00, $00
- D 0 - I - 0x008BDD 02:8BCD: 0A        .byte $0A, $04
- D 0 - I - 0x008BDF 02:8BCF: 0A        .byte $0A, $04
- D 0 - I - 0x008BE1 02:8BD1: FD        .byte $FD, $FE
- D 0 - I - 0x008BE3 02:8BD3: A0        .byte $A0, $01
- D 0 - I - 0x008BE5 02:8BD5: 02        .byte $02, $04
- D 0 - I - 0x008BE7 02:8BD7: 01        .byte $01, $02
- D 0 - I - 0x008BE9 02:8BD9: 01        .byte $01, $02
- D 0 - I - 0x008BEB 02:8BDB: B2        .byte $B2, $00
- D 0 - I - 0x008BED 02:8BDD: B0        .byte $B0, $02
- D - - - - 0x008BEF 02:8BDF: FF        .byte $FF

loc_track4E:
- D 0 - I - 0x008BF0 02:8BE0: 35        .byte $35, $00, $00, $00
- D 0 - I - 0x008BF4 02:8BE4: 01        .byte $01, $02
- D 0 - I - 0x008BF6 02:8BE6: 01        .byte $01, $02
- D 0 - I - 0x008BF8 02:8BE8: 09        .byte $09, $02
- D 0 - I - 0x008BFA 02:8BEA: 01        .byte $01, $02
- D 0 - I - 0x008BFC 02:8BEC: B0        .byte $B0, $02
- D - - - - 0x008BFE 02:8BEE: FF        .byte $FF

loc_track4F:
- D 0 - I - 0x008BFF 02:8BEF: 36        .byte $36, $00, $00, $00
- D 0 - I - 0x008C03 02:8BF3: 0A        .byte $0A, $02
- D 0 - I - 0x008C05 02:8BF5: 01        .byte $01, $02
- D 0 - I - 0x008C07 02:8BF7: 06        .byte $06, $02
- D 0 - I - 0x008C09 02:8BF9: 01        .byte $01, $02
- D 0 - I - 0x008C0B 02:8BFB: B0        .byte $B0, $02
- D - - - - 0x008C0D 02:8BFD: FF        .byte $FF

loc_track50:
- D 0 - I - 0x008C0E 02:8BFE: 00        .byte $00, $02, $02, $00
- D 0 - I - 0x008C12 02:8C02: 20        .byte $20, $02
- D 0 - I - 0x008C14 02:8C04: 1F        .byte $1F, $02
- D 0 - I - 0x008C16 02:8C06: FF        .byte $FF

loc_track51:
- D 0 - I - 0x008C17 02:8C07: 00        .byte $00, $02, $01, $81
- D 0 - I - 0x008C1B 02:8C0B: 20        .byte $20, $06
- D 0 - I - 0x008C1D 02:8C0D: A1        .byte $A1, $95
- D 0 - I - 0x008C1F 02:8C0F: A0        .byte $A0, $1F
- D 0 - I - 0x008C21 02:8C11: EF        .byte $EF, $01
- D 0 - I - 0x008C23 02:8C13: 20        .byte $20, $20
- D 0 - I - 0x008C25 02:8C15: FF        .byte $FF

loc_track52:
- D 0 - I - 0x008C26 02:8C16: 30        .byte $30, $00, $04, $00
- D 0 - I - 0x008C2A 02:8C1A: 0E        .byte $0E, $06
- D 0 - I - 0x008C2C 02:8C1C: EF        .byte $EF, $05
- D 0 - I - 0x008C2E 02:8C1E: 0A        .byte $0A, $20
- D 0 - I - 0x008C30 02:8C20: FF        .byte $FF

loc_track53:
- D - - - - 0x008C31 02:8C21: 07        .byte $07, $01, $0F, $00
- D - - - - 0x008C35 02:8C25: A3        .byte $A3, $10
- D - - - - 0x008C37 02:8C27: 30        .byte $30, $06
- D - - - - 0x008C39 02:8C29: 32        .byte $32, $02
- D - - - - 0x008C3B 02:8C2B: 30        .byte $30, $04
- D - - - - 0x008C3D 02:8C2D: 2B        .byte $2B, $04
- D - - - - 0x008C3F 02:8C2F: 29        .byte $29, $04
- D - - - - 0x008C41 02:8C31: 27        .byte $27, $02
- D - - - - 0x008C43 02:8C33: 29        .byte $29, $18
- D - - - - 0x008C45 02:8C35: FF        .byte $FF

loc_track54:
- D - - - - 0x008C46 02:8C36: 07        .byte $07, $60, $00, $00
- D - - - - 0x008C4A 02:8C3A: 25        .byte $25, $04
- D - - - - 0x008C4C 02:8C3C: 30        .byte $30, $04
- D - - - - 0x008C4E 02:8C3E: 35        .byte $35, $04
- D - - - - 0x008C50 02:8C40: 27        .byte $27, $04
- D - - - - 0x008C52 02:8C42: 32        .byte $32, $04
- D - - - - 0x008C54 02:8C44: 37        .byte $37, $04
- D - - - - 0x008C56 02:8C46: 29        .byte $29, $04
- D - - - - 0x008C58 02:8C48: 24        .byte $24, $04
- D - - - - 0x008C5A 02:8C4A: 20        .byte $20, $04
- D - - - - 0x008C5C 02:8C4C: 19        .byte $19, $08
- D - - - - 0x008C5E 02:8C4E: FF        .byte $FF

loc_track55:
- D 0 - I - 0x008C5F 02:8C4F: 03        .byte $03, $02, $1C, $00
- D 0 - I - 0x008C63 02:8C53: A3        .byte $A3, $21
- D 0 - I - 0x008C65 02:8C55: 1F        .byte $1F, $04
- D 0 - I - 0x008C67 02:8C57: 25        .byte $25, $04
- D 0 - I - 0x008C69 02:8C59: 27        .byte $27, $04
- D 0 - I - 0x008C6B 02:8C5B: 28        .byte $28, $04
- D 0 - I - 0x008C6D 02:8C5D: 2B        .byte $2B, $04
- D 0 - I - 0x008C6F 02:8C5F: 30        .byte $30, $04
- D 0 - I - 0x008C71 02:8C61: 32        .byte $32, $04
- D 0 - I - 0x008C73 02:8C63: 30        .byte $30, $08
- D 0 - I - 0x008C75 02:8C65: 2B        .byte $2B, $04
- D 0 - I - 0x008C77 02:8C67: 28        .byte $28, $04
- D 0 - I - 0x008C79 02:8C69: 27        .byte $27, $08
- D 0 - I - 0x008C7B 02:8C6B: 25        .byte $25, $04
- D 0 - I - 0x008C7D 02:8C6D: 27        .byte $27, $04
- D 0 - I - 0x008C7F 02:8C6F: 28        .byte $28, $04
- D 0 - I - 0x008C81 02:8C71: 1F        .byte $1F, $04
- D 0 - I - 0x008C83 02:8C73: FD        .byte $FD, $FE
- D 0 - I - 0x008C85 02:8C75: 2B        .byte $2B, $04
- D 0 - I - 0x008C87 02:8C77: 28        .byte $28, $04
- D 0 - I - 0x008C89 02:8C79: 27        .byte $27, $04
- D 0 - I - 0x008C8B 02:8C7B: 25        .byte $25, $04
- D 0 - I - 0x008C8D 02:8C7D: B2        .byte $B2, $00
- D 0 - I - 0x008C8F 02:8C7F: 27        .byte $27, $04
- D 0 - I - 0x008C91 02:8C81: 28        .byte $28, $04
- D 0 - I - 0x008C93 02:8C83: 27        .byte $27, $04
- D 0 - I - 0x008C95 02:8C85: B0        .byte $B0, $02
- D - - - - 0x008C97 02:8C87: FF        .byte $FF

loc_track56:
- D 0 - I - 0x008C98 02:8C88: 13        .byte $13, $02, $15, $00
- D 0 - I - 0x008C9C 02:8C8C: 1F        .byte $1F, $03
- D 0 - I - 0x008C9E 02:8C8E: 1F        .byte $1F, $04
- D 0 - I - 0x008CA0 02:8C90: 25        .byte $25, $04
- D 0 - I - 0x008CA2 02:8C92: 27        .byte $27, $04
- D 0 - I - 0x008CA4 02:8C94: 28        .byte $28, $04
- D 0 - I - 0x008CA6 02:8C96: 2B        .byte $2B, $04
- D 0 - I - 0x008CA8 02:8C98: 30        .byte $30, $04
- D 0 - I - 0x008CAA 02:8C9A: 32        .byte $32, $04
- D 0 - I - 0x008CAC 02:8C9C: 30        .byte $30, $08
- D 0 - I - 0x008CAE 02:8C9E: 2B        .byte $2B, $04
- D 0 - I - 0x008CB0 02:8CA0: 28        .byte $28, $04
- D 0 - I - 0x008CB2 02:8CA2: 27        .byte $27, $08
- D 0 - I - 0x008CB4 02:8CA4: 25        .byte $25, $04
- D 0 - I - 0x008CB6 02:8CA6: 27        .byte $27, $04
- D 0 - I - 0x008CB8 02:8CA8: 28        .byte $28, $04
- D 0 - I - 0x008CBA 02:8CAA: 1F        .byte $1F, $04
- D 0 - I - 0x008CBC 02:8CAC: FD        .byte $FD, $FE
- D 0 - I - 0x008CBE 02:8CAE: 2B        .byte $2B, $04
- D 0 - I - 0x008CC0 02:8CB0: 28        .byte $28, $04
- D 0 - I - 0x008CC2 02:8CB2: 27        .byte $27, $04
- D 0 - I - 0x008CC4 02:8CB4: 25        .byte $25, $04
- D 0 - I - 0x008CC6 02:8CB6: B2        .byte $B2, $00
- D 0 - I - 0x008CC8 02:8CB8: 27        .byte $27, $04
- D 0 - I - 0x008CCA 02:8CBA: 28        .byte $28, $04
- D 0 - I - 0x008CCC 02:8CBC: 27        .byte $27, $04
- D 0 - I - 0x008CCE 02:8CBE: B0        .byte $B0, $03
- D - - - - 0x008CD0 02:8CC0: FF        .byte $FF

loc_track57:
- D 0 - I - 0x008CD1 02:8CC1: 23        .byte $23, $7F, $00, $00
- D 0 - I - 0x008CD5 02:8CC5: 15        .byte $15, $08
- D 0 - I - 0x008CD7 02:8CC7: 25        .byte $25, $08
- D 0 - I - 0x008CD9 02:8CC9: 15        .byte $15, $08
- D 0 - I - 0x008CDB 02:8CCB: 25        .byte $25, $08
- D 0 - I - 0x008CDD 02:8CCD: 17        .byte $17, $08
- D 0 - I - 0x008CDF 02:8CCF: 27        .byte $27, $08
- D 0 - I - 0x008CE1 02:8CD1: 17        .byte $17, $08
- D 0 - I - 0x008CE3 02:8CD3: 27        .byte $27, $08
- D 0 - I - 0x008CE5 02:8CD5: B0        .byte $B0, $02
- D - - - - 0x008CE7 02:8CD7: FF        .byte $FF

loc_track58:
- D - - - - 0x008CE8 02:8CD8: FF        .byte $FF

loc_track59:
- D - - - - 0x008CE9 02:8CD9: FF        .byte $FF

loc_track5A:
- D - - - - 0x008CEA 02:8CDA: FF        .byte $FF

loc_track5F:
- D - - - - 0x008CEB 02:8CDB: 03        .byte $03, $01, $1F, $AA
- D - - - - 0x008CEF 02:8CDF: EF        .byte $EF, $01
- D - - - - 0x008CF1 02:8CE1: 20        .byte $20, $04
- D - - - - 0x008CF3 02:8CE3: FD        .byte $FD, $FE
- D - - - - 0x008CF5 02:8CE5: 20        .byte $20, $02
- D - - - - 0x008CF7 02:8CE7: B7        .byte $B7, $00
- D - - - - 0x008CF9 02:8CE9: FF        .byte $FF

loc_track60:
- D 0 - I - 0x008CFA 02:8CEA: 00        .byte $00, $02, $0F, $8C
- D 0 - I - 0x008CFE 02:8CEE: FD        .byte $FD, $FE
- D 0 - I - 0x008D00 02:8CF0: 40        .byte $40, $02
- D 0 - I - 0x008D02 02:8CF2: BF        .byte $BF, $00
- D 0 - I - 0x008D04 02:8CF4: FF        .byte $FF

loc_track5B:
- D 0 - I - 0x008D05 02:8CF5: 07        .byte $07, $02, $0F, $00
- D 0 - I - 0x008D09 02:8CF9: 27        .byte $27, $06
- D 0 - I - 0x008D0B 02:8CFB: 37        .byte $37, $02
- D 0 - I - 0x008D0D 02:8CFD: 35        .byte $35, $02
- D 0 - I - 0x008D0F 02:8CFF: 34        .byte $34, $02
- D 0 - I - 0x008D11 02:8D01: 32        .byte $32, $02
- D 0 - I - 0x008D13 02:8D03: 30        .byte $30, $02
- D 0 - I - 0x008D15 02:8D05: 32        .byte $32, $02
- D 0 - I - 0x008D17 02:8D07: 34        .byte $34, $01
- D 0 - I - 0x008D19 02:8D09: 30        .byte $30, $0D
- D 0 - I - 0x008D1B 02:8D0B: 32        .byte $32, $02
- D 0 - I - 0x008D1D 02:8D0D: 34        .byte $34, $01
- D 0 - I - 0x008D1F 02:8D0F: 30        .byte $30, $03
- D 0 - I - 0x008D21 02:8D11: 37        .byte $37, $02
- D 0 - I - 0x008D23 02:8D13: 35        .byte $35, $02
- D 0 - I - 0x008D25 02:8D15: 34        .byte $34, $02
- D 0 - I - 0x008D27 02:8D17: 32        .byte $32, $02
- D 0 - I - 0x008D29 02:8D19: 30        .byte $30, $02
- D 0 - I - 0x008D2B 02:8D1B: 32        .byte $32, $02
- D 0 - I - 0x008D2D 02:8D1D: 34        .byte $34, $02
- D 0 - I - 0x008D2F 02:8D1F: 35        .byte $35, $02
- D 0 - I - 0x008D31 02:8D21: 40        .byte $40, $02
- D 0 - I - 0x008D33 02:8D23: 3B        .byte $3B, $04
- D 0 - I - 0x008D35 02:8D25: 37        .byte $37, $04
- D 0 - I - 0x008D37 02:8D27: B0        .byte $B0, $02
- D - - - - 0x008D39 02:8D29: FF        .byte $FF

loc_track5C:
- D 0 - I - 0x008D3A 02:8D2A: 07        .byte $07, $00, $00, $00
- D 0 - I - 0x008D3E 02:8D2E: 1F        .byte $1F, $01
- D 0 - I - 0x008D40 02:8D30: B0        .byte $B0, $02
- D - - - - 0x008D42 02:8D32: FF        .byte $FF

loc_track5D:
- D 0 - I - 0x008D43 02:8D33: 07        .byte $07, $00, $20, $00
- D 0 - I - 0x008D47 02:8D37: 20        .byte $20, $06
- D 0 - I - 0x008D49 02:8D39: 20        .byte $20, $02
- D 0 - I - 0x008D4B 02:8D3B: 1B        .byte $1B, $06
- D 0 - I - 0x008D4D 02:8D3D: 1B        .byte $1B, $02
- D 0 - I - 0x008D4F 02:8D3F: 19        .byte $19, $06
- D 0 - I - 0x008D51 02:8D41: 19        .byte $19, $02
- D 0 - I - 0x008D53 02:8D43: 17        .byte $17, $06
- D 0 - I - 0x008D55 02:8D45: 17        .byte $17, $02
- D 0 - I - 0x008D57 02:8D47: 25        .byte $25, $06
- D 0 - I - 0x008D59 02:8D49: 25        .byte $25, $02
- D 0 - I - 0x008D5B 02:8D4B: 24        .byte $24, $06
- D 0 - I - 0x008D5D 02:8D4D: 24        .byte $24, $02
- D 0 - I - 0x008D5F 02:8D4F: 22        .byte $22, $06
- D 0 - I - 0x008D61 02:8D51: 22        .byte $22, $02
- D 0 - I - 0x008D63 02:8D53: 27        .byte $27, $06
- D 0 - I - 0x008D65 02:8D55: 27        .byte $27, $02
- D 0 - I - 0x008D67 02:8D57: B0        .byte $B0, $02
- D - - - - 0x008D69 02:8D59: FF        .byte $FF 

loc_track5E:
- D 0 - I - 0x008D6A 02:8D5A: 37        .byte $37, $00, $00, $00
- D 0 - I - 0x008D6E 02:8D5E: 1F        .byte $1F, $04
- D 0 - I - 0x008D70 02:8D60: B0        .byte $B0, $02
- D - - - - 0x008D72 02:8D62: FF        .byte $FF

- - - - - - 0x008D73 02:8D63: 5D        .byte $5D   ; 
- - - - - - 0x008D74 02:8D64: 01        .byte $01   ; 
- - - - - - 0x008D75 02:8D65: 00        .byte $00   ; 
- - - - - - 0x008D76 02:8D66: 80        .byte $80   ; 
- - - - - - 0x008D77 02:8D67: 5D        .byte $5D   ; 
- - - - - - 0x008D78 02:8D68: 02        .byte $02   ; 
- - - - - - 0x008D79 02:8D69: E0        .byte $E0   ; 
- - - - - - 0x008D7A 02:8D6A: 80        .byte $80   ; 
- - - - - - 0x008D7B 02:8D6B: 5E        .byte $5E   ; 
- - - - - - 0x008D7C 02:8D6C: 01        .byte $01   ; 
- - - - - - 0x008D7D 02:8D6D: 00        .byte $00   ; 
- - - - - - 0x008D7E 02:8D6E: 80        .byte $80   ; 
- - - - - - 0x008D7F 02:8D6F: 5E        .byte $5E   ; 
- - - - - - 0x008D80 02:8D70: 02        .byte $02   ; 
- - - - - - 0x008D81 02:8D71: E0        .byte $E0   ; 
- - - - - - 0x008D82 02:8D72: 80        .byte $80   ; 
- - - - - - 0x008D83 02:8D73: 5F        .byte $5F   ; 
- - - - - - 0x008D84 02:8D74: 04        .byte $04   ; 
- - - - - - 0x008D85 02:8D75: 00        .byte $00   ; 
- - - - - - 0x008D86 02:8D76: 80        .byte $80   ; 
- - - - - - 0x008D87 02:8D77: 5F        .byte $5F   ; 
- - - - - - 0x008D88 02:8D78: 05        .byte $05   ; 
- - - - - - 0x008D89 02:8D79: 00        .byte $00   ; 
- - - - - - 0x008D8A 02:8D7A: 80        .byte $80   ; 
- - - - - - 0x008D8B 02:8D7B: 60        .byte $60   ; 
- - - - - - 0x008D8C 02:8D7C: 04        .byte $04   ; 
- - - - - - 0x008D8D 02:8D7D: 70        .byte $70   ; <p>
- - - - - - 0x008D8E 02:8D7E: 80        .byte $80   ; 
- - - - - - 0x008D8F 02:8D7F: 60        .byte $60   ; 

.org $AD80
loc_AD80_activate_sound_manager:
C D 1 - - - 0x008D90 02:AD80: A9 00     LDA #$00                  ;
C - - - - - 0x008D92 02:AD82: 8D 01 04  STA vApuChannelProcessed  ; clears all channels
C - - - - - 0x008D95 02:AD85: EE 06 04  INC v_sound_counter
; Sound row in 21 bytes each, starts with vSoundRowIndex
; 00 - 0th sound row
; 15 - 1st sound row
; 2A - 2nd sound row
; 3F - 3rd sound row
; 54 - 4th sound row
; 69 - 5th sound row
; 7E - 6th sound row
; 93 - 7th sound row
; X = {00,15,2A,3F,54,69,7E,93} , in the end - A8
bra_AD88_loop:                                                   ; loop by sound rows (8 times)
C - - - - - 0x008D98 02:AD88: AA        TAX                      ; x <~ sound row offset
C - - - - - 0x008D99 02:AD89: BD 11 04  LDA vSoundRowB_1,X       ;
C - - - - - 0x008D9C 02:AD8C: 29 03     AND #$03                 ;
C - - - - - 0x008D9E 02:AD8E: 8D 02 04  STA vCurrentApuChannel   ; puts the apu channel (0x00, 0x01, 0x02 or 0x03)
C - - - - - 0x008DA1 02:AD91: A8        TAY                      ; 0x00, 0x01, 0x02 or 0x03
C - - - - - 0x008DA2 02:AD92: B9 A6 B1  LDA tbl_B1A6,Y
C - - - - - 0x008DA5 02:AD95: 8D 03 04  STA ram_0403
C - - - - - 0x008DA8 02:AD98: BD 10 04  LDA vSoundRowIndex,X     ;
C - - - - - 0x008DAB 02:AD9B: F0 5C     BEQ bra_ADF9_init        ; If SoundRowIndex == 0x00
C - - - - - 0x008DAD 02:AD9D: C9 FF     CMP #$FF                 ; CONSTANT - the sound row isn't activated
C - - - - - 0x008DAF 02:AD9F: F0 4F     BEQ bra_ADF0_next_row    ; If SoundRowIndex == 0xFF
C - - - - - 0x008DB1 02:ADA1: 20 3F B1  JSR sub_B13F
C - - - - - 0x008DB4 02:ADA4: 20 B4 B0  JSR sub_B0B4
C - - - - - 0x008DB7 02:ADA7: FE 1D 04  INC vSoundRowB_D,X
C - - - - - 0x008DBA 02:ADAA: BD 1D 04  LDA vSoundRowB_D,X
C - - - - - 0x008DBD 02:ADAD: DD 1C 04  CMP vSoundRowB_C,X
C - - - - - 0x008DC0 02:ADB0: 90 06     BCC bra_ADB8_skip
C - - - - - 0x008DC2 02:ADB2: BD 1C 04  LDA vSoundRowB_C,X
C - - - - - 0x008DC5 02:ADB5: 9D 1D 04  STA vSoundRowB_D,X
bra_ADB8_skip:
C - - - - - 0x008DC8 02:ADB8: DE 15 04  DEC vSoundRowFPPCounter,X
C - - - - - 0x008DCB 02:ADBB: 10 18     BPL bra_ADD5_skip
C - - - - - 0x008DCD 02:ADBD: BD 14 04  LDA vSoundRowFPPValue,X           ;
C - - - - - 0x008DD0 02:ADC0: 29 0F     AND #$0F                          ; CONSTANT - Max value (0x0F)
C - - - - - 0x008DD2 02:ADC2: 9D 15 04  STA vSoundRowFPPCounter,X         ; Initializes a counter again
C - - - - - 0x008DD5 02:ADC5: 20 FD B0  JSR sub_B0FD
C - - - - - 0x008DD8 02:ADC8: BD 24 04  LDA vSoundRowB_K,X
C - - - - - 0x008DDB 02:ADCB: F0 03     BEQ bra_ADD0_skip
C - - - - - 0x008DDD 02:ADCD: DE 24 04  DEC vSoundRowB_K,X
bra_ADD0_skip:
C - - - - - 0x008DE0 02:ADD0: DE 17 04  DEC vSoundRowFPPLength,X          ;
C - - - - - 0x008DE3 02:ADD3: F0 06     BEQ bra_ADDB_skip                 ; If the length == 0x00
bra_ADD5_skip:
C - - - - - 0x008DE5 02:ADD5: 20 89 B0  JSR sub_B089
C - - - - - 0x008DE8 02:ADD8: 4C E4 AD  JMP loc_ADE4_mark_current_channel ;

bra_ADDB_skip:
loc_ADDB:
C D 1 - - - 0x008DEB 02:ADDB: BD 23 04  LDA vSoundRowB_J,X
C - - - - - 0x008DEE 02:ADDE: 9D 24 04  STA vSoundRowB_K,X
C - - - - - 0x008DF1 02:ADE1: 20 38 AE  JSR sub_AE38
loc_ADE4_mark_current_channel:
C D 1 - - - 0x008DF4 02:ADE4: AC 02 04  LDY vCurrentApuChannel     ;
C - - - - - 0x008DF7 02:ADE7: B9 9E B1  LDA tbl_apu_channels,Y     ;
C - - - - - 0x008DFA 02:ADEA: 0D 01 04  ORA vApuChannelProcessed   ;
C - - - - - 0x008DFD 02:ADED: 8D 01 04  STA vApuChannelProcessed   ; the current channel is processed
bra_ADF0_next_row:
C - - - - - 0x008E00 02:ADF0: 8A        TXA                        ; a <~ sound row offset
C - - - - - 0x008E01 02:ADF1: 18        CLC                        ;
C - - - - - 0x008E02 02:ADF2: 69 15     ADC #$15                   ; CONSTANT: Sound row step, step for X
C - - - - - 0x008E04 02:ADF4: C9 A8     CMP #$A8                   ; $15+$15+$15+$15+$15+$15+$15+$15=$A8, 8 iterations for sound row
C - - - - - 0x008E06 02:ADF6: D0 90     BNE bra_AD88_loop          ; If Register A != 0xA8
C - - - - - 0x008E08 02:ADF8: 60        RTS                        ;

bra_ADF9_init:
C - - - - - 0x008E09 02:ADF9: BD 12 04  LDA vSoundRowB_2,X              ;
C - - - - - 0x008E0C 02:ADFC: 85 FE     STA ram_00FE                    ; Low address (the current track)
C - - - - - 0x008E0E 02:ADFE: BD 13 04  LDA vSoundRowB_3,X              ;
C - - - - - 0x008E11 02:AE01: 85 FF     STA ram_00FF                    ; High address  (the current track)
C - - - - - 0x008E13 02:AE03: A0 00     LDY #$00                        ; to 1 byte of N
C - - - - - 0x008E15 02:AE05: B1 FE     LDA (ram_00FE),Y                ;
C - - - - - 0x008E17 02:AE07: 29 0F     AND #$0F                        ; CONSTANT - Max value (0x0F)
C - - - - - 0x008E19 02:AE09: 9D 14 04  STA vSoundRowFPPValue,X         ; set the control value
C - - - - - 0x008E1C 02:AE0C: 9D 15 04  STA vSoundRowFPPCounter,X       ; set the counter
C - - - - - 0x008E1F 02:AE0F: C8        INY                             ; to 2 byte of N
C - - - - - 0x008E20 02:AE10: 20 6F B0  JSR sub_B06F
C - - - - - 0x008E23 02:AE13: C8        INY                             ; to 3 byte of N
C - - - - - 0x008E24 02:AE14: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E26 02:AE16: 0D 04 04  ORA ram_0404
C - - - - - 0x008E29 02:AE19: 9D 16 04  STA vSoundRowB_6,X
C - - - - - 0x008E2C 02:AE1C: C8        INY                             ; to 4 byte of N
C - - - - - 0x008E2D 02:AE1D: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E2F 02:AE1F: 9D 18 04  STA vSoundRowB_8,X
C - - - - - 0x008E32 02:AE22: A9 00     LDA #$00
C - - - - - 0x008E34 02:AE24: 9D 19 04  STA vSoundRowMarkCacheNoReplay,X
C - - - - - 0x008E37 02:AE27: 9D 1A 04  STA vSoundRowCacheNoReplay,X
C - - - - - 0x008E3A 02:AE2A: 9D 1B 04  STA vSoundRowB_B,X
C - - - - - 0x008E3D 02:AE2D: 9D 1E 04  STA vSoundRowB_E,X
C - - - - - 0x008E40 02:AE30: A9 02     LDA #$02         ; CONSTANT - ???
C - - - - - 0x008E42 02:AE32: 9D 10 04  STA vSoundRowIndex,X
C - - - - - 0x008E45 02:AE35: 4C DB AD  JMP loc_ADDB

sub_AE38:
loc_AE38_next_sound_pair:
C D 1 - - - 0x008E48 02:AE38: A0 00     LDY #$00       ; to 1 byte of N
C - - - - - 0x008E4A 02:AE3A: 84 FF     STY ram_00FF
C - - - - - 0x008E4C 02:AE3C: BD 10 04  LDA vSoundRowIndex,X
C - - - - - 0x008E4F 02:AE3F: 0A        ASL
C - - - - - 0x008E50 02:AE40: 26 FF     ROL ram_00FF
C - - - - - 0x008E52 02:AE42: 7D 12 04  ADC vSoundRowB_2,X
C - - - - - 0x008E55 02:AE45: 85 FE     STA ram_00FE
C - - - - - 0x008E57 02:AE47: BD 13 04  LDA vSoundRowB_3,X
C - - - - - 0x008E5A 02:AE4A: 65 FF     ADC ram_00FF
C - - - - - 0x008E5C 02:AE4C: 85 FF     STA ram_00FF
C - - - - - 0x008E5E 02:AE4E: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E60 02:AE50: FE 10 04  INC vSoundRowIndex,X
C - - - - - 0x008E63 02:AE53: C8        INY
C - - - - - 0x008E64 02:AE54: C9 F0     CMP #$F0     
C - - - - - 0x008E66 02:AE56: B0 1A     BCS bra_AE72        ; If Register A >= 0xF0
C - - - - - 0x008E68 02:AE58: C9 E0     CMP #$E0
C - - - - - 0x008E6A 02:AE5A: B0 2D     BCS bra_AE89        ; If Register A >= 0xE0
C - - - - - 0x008E6C 02:AE5C: C9 D0     CMP #$D0
C - - - - - 0x008E6E 02:AE5E: B0 33     BCS bra_AE93        ; If Register A >= 0xD0
C - - - - - 0x008E70 02:AE60: C9 C0     CMP #$C0
C - - - - - 0x008E72 02:AE62: B0 44     BCS bra_AEA8        ; If Register A >= 0xC0
C - - - - - 0x008E74 02:AE64: C9 B0     CMP #$B0
C - - - - - 0x008E76 02:AE66: B0 5F     BCS bra_AEC7_replay ; If Register A >= 0xB0
C - - - - - 0x008E78 02:AE68: C9 A0     CMP #$A0
C - - - - - 0x008E7A 02:AE6A: 90 03     BCC bra_AE6F        ; If Register A < 0xA0
C - - - - - 0x008E7C 02:AE6C: 4C F5 AE  JMP loc_AEF5

bra_AE6F:
C - - - - - 0x008E7F 02:AE6F: 4C B7 AF  JMP loc_AFB7

bra_AE72:
C - - - - - 0x008E82 02:AE72: C9 FD     CMP #$FD
C - - - - - 0x008E84 02:AE74: D0 09     BNE bra_AE7F
C - - - - - 0x008E86 02:AE76: BD 10 04  LDA vSoundRowIndex,X
C - - - - - 0x008E89 02:AE79: 9D 22 04  STA vSoundRowMarkForReplay,X
bra_AE7C_repeat:
C - - - - - 0x008E8C 02:AE7C: 4C 38 AE  JMP loc_AE38_next_sound_pair

bra_AE7F:
C - - - - - 0x008E8F 02:AE7F: C9 FF     CMP #$FF
C - - - - - 0x008E91 02:AE81: D0 F9     BNE bra_AE7C_repeat
C - - - - - 0x008E93 02:AE83: 9D 10 04  STA vSoundRowIndex,X
C - - - - - 0x008E96 02:AE86: 4C 51 B0  JMP loc_B051

bra_AE89:
C - - - - - 0x008E99 02:AE89: 29 0F     AND #$0F
C - - - - - 0x008E9B 02:AE8B: 49 FF     EOR #$FF
C - - - - - 0x008E9D 02:AE8D: 18        CLC
C - - - - - 0x008E9E 02:AE8E: 69 01     ADC #$01
C - - - - - 0x008EA0 02:AE90: 4C 95 AE  JMP loc_AE95

bra_AE93:
- - - - - - 0x008EA3 02:AE93: 29        .byte $29   ; 
- - - - - - 0x008EA4 02:AE94: 0F        .byte $0F   ; 
loc_AE95:
C D 1 - - - 0x008EA5 02:AE95: 2C 03 04  BIT ram_0403
C - - - - - 0x008EA8 02:AE98: 30 0B     BMI @bra_AEA5_triangle
C - - - - - 0x008EAA 02:AE9A: 9D 1E 04  STA vSoundRowB_E,X
C - - - - - 0x008EAD 02:AE9D: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008EAF 02:AE9F: 9D 1F 04  STA vSoundRowB_F,X
C - - - - - 0x008EB2 02:AEA2: 9D 20 04  STA vSoundRowB_G,X
@bra_AEA5_triangle:
C - - - - - 0x008EB5 02:AEA5: 4C 38 AE  JMP loc_AE38_next_sound_pair

bra_AEA8:
C - - - - - 0x008EB8 02:AEA8: 29 0F     AND #$0F
C - - - - - 0x008EBA 02:AEAA: 8D 04 04  STA ram_0404
C - - - - - 0x008EBD 02:AEAD: 2C 03 04  BIT ram_0403
C - - - - - 0x008EC0 02:AEB0: 30 12     BMI @bra_AEC4_next
C - - - - - 0x008EC2 02:AEB2: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008EC5 02:AEB5: 29 10     AND #$10
C - - - - - 0x008EC7 02:AEB7: F0 0B     BEQ @bra_AEC4_next
C - - - - - 0x008EC9 02:AEB9: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008ECB 02:AEBB: 9D 1C 04  STA vSoundRowB_C,X
C - - - - - 0x008ECE 02:AEBE: AD 04 04  LDA ram_0404
C - - - - - 0x008ED1 02:AEC1: 9D 1B 04  STA vSoundRowB_B,X
@bra_AEC4_next:
C - - - - - 0x008ED4 02:AEC4: 4C 38 AE  JMP loc_AE38_next_sound_pair

; In: Register A - the first element of the sound pair
bra_AEC7_replay:
C - - - - - 0x008ED7 02:AEC7: 29 0F     AND #$0F                            ; filters (a mask) for the number of replays
C - - - - - 0x008ED9 02:AEC9: F0 1D     BEQ bra_AEE8_done                   ; If the number of replays == 0x00
C - - - - - 0x008EDB 02:AECB: 48        PHA                                 ; store the number of replays
C - - - - - 0x008EDC 02:AECC: B1 FE     LDA (ram_00FE),Y                    ;
C - - - - - 0x008EDE 02:AECE: D0 0D     BNE @bra_AEDD_simple_replay         ; If the second element of the sound pair != 0x00
C - - - - - 0x008EE0 02:AED0: 68        PLA                                 ; retrieve the number of replays (see $AECB)
C - - - - - 0x008EE1 02:AED1: DE 19 04  DEC vSoundRowMarkCacheNoReplay,X    ;
C - - - - - 0x008EE4 02:AED4: F0 1C     BEQ bra_AEF2_stop                   ; If the cache number of replays == 0x00
C - - - - - 0x008EE6 02:AED6: 10 10     BPL bra_AEE8_done                   ; If the cache number of replays > 0x00
C - - - - - 0x008EE8 02:AED8: 9D 19 04  STA vSoundRowMarkCacheNoReplay,X    ; puts the number of replays to the cache
C - - - - - 0x008EEB 02:AEDB: 30 0B     BMI bra_AEE8_done                   ; Always true

@bra_AEDD_simple_replay:
C - - - - - 0x008EED 02:AEDD: 68        PLA                                 ; retrieve the number of replays (see $AECB)
C - - - - - 0x008EEE 02:AEDE: DE 1A 04  DEC vSoundRowCacheNoReplay,X        ;
C - - - - - 0x008EF1 02:AEE1: F0 0F     BEQ bra_AEF2_stop                   ; If the cache number of replays == 0x00
C - - - - - 0x008EF3 02:AEE3: 10 03     BPL bra_AEE8_done                   ; If the cache number of replays > 0x00
C - - - - - 0x008EF5 02:AEE5: 9D 1A 04  STA vSoundRowCacheNoReplay,X        ; puts the number of replays to the cache
bra_AEE8_done:
C - - - - - 0x008EF8 02:AEE8: B1 FE     LDA (ram_00FE),Y                    ;
C - - - - - 0x008EFA 02:AEEA: D0 03     BNE @bra_AEEF_assign                ; If the second element of the sound pair != 0x00
C - - - - - 0x008EFC 02:AEEC: BD 22 04  LDA vSoundRowMarkForReplay,X        ; A <~ mark sound index
@bra_AEEF_assign:
C - - - - - 0x008EFF 02:AEEF: 9D 10 04  STA vSoundRowIndex,X                ; assigns a new index
bra_AEF2_stop:
C - - - - - 0x008F02 02:AEF2: 4C 38 AE  JMP loc_AE38_next_sound_pair

; In: Register A - ???
loc_AEF5:
C D 1 - - - 0x008F05 02:AEF5: D0 0F     BNE bra_AF06               ; If Register A != 0xA0
C - - - - - 0x008F07 02:AEF7: 2C 03 04  BIT ram_0403
C - - - - - 0x008F0A 02:AEFA: 30 13     BMI bra_AF0F_triangle
C - - - - - 0x008F0C 02:AEFC: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008F0F 02:AEFF: 29 C0     AND #$C0
C - - - - - 0x008F11 02:AF01: 11 FE     ORA (ram_00FE),Y
C - - - - - 0x008F13 02:AF03: 4C 23 AF  JMP loc_AF23_continue

bra_AF06:
C - - - - - 0x008F16 02:AF06: C9 A1     CMP #$A1
C - - - - - 0x008F18 02:AF08: D0 08     BNE bra_AF12
C - - - - - 0x008F1A 02:AF0A: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008F1C 02:AF0C: 9D 18 04  STA vSoundRowB_8,X
bra_AF0F_triangle:
C - - - - - 0x008F1F 02:AF0F: 4C 38 AE  JMP loc_AE38_next_sound_pair

bra_AF12:
C - - - - - 0x008F22 02:AF12: C9 A2     CMP #$A2
C - - - - - 0x008F24 02:AF14: D0 13     BNE bra_AF29
C - - - - - 0x008F26 02:AF16: 20 6F B0  JSR sub_B06F
C - - - - - 0x008F29 02:AF19: B0 08     BCS bra_AF23
C - - - - - 0x008F2B 02:AF1B: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008F2E 02:AF1E: 29 1F     AND #$1F
C - - - - - 0x008F30 02:AF20: 0D 04 04  ORA ram_0404
loc_AF23_continue:
bra_AF23:
C D 1 - - - 0x008F33 02:AF23: 9D 16 04  STA vSoundRowB_6,X
C - - - - - 0x008F36 02:AF26: 4C 38 AE  JMP loc_AE38_next_sound_pair

bra_AF29:
C - - - - - 0x008F39 02:AF29: C9 A3     CMP #$A3
C - - - - - 0x008F3B 02:AF2B: D0 1C     BNE bra_AF49
C - - - - - 0x008F3D 02:AF2D: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008F3F 02:AF2F: 30 1C     BMI bra_AF4D
C - - - - - 0x008F41 02:AF31: 48        PHA
C - - - - - 0x008F42 02:AF32: 29 0F     AND #$0F
C - - - - - 0x008F44 02:AF34: 0A        ASL
C - - - - - 0x008F45 02:AF35: 9D 23 04  STA vSoundRowB_J,X
C - - - - - 0x008F48 02:AF38: 9D 24 04  STA vSoundRowB_K,X
C - - - - - 0x008F4B 02:AF3B: 68        PLA
C - - - - - 0x008F4C 02:AF3C: 29 70     AND #$70
C - - - - - 0x008F4E 02:AF3E: 0D 02 04  ORA vCurrentApuChannel
C - - - - - 0x008F51 02:AF41: 09 80     ORA #$80
C - - - - - 0x008F53 02:AF43: 9D 11 04  STA vSoundRowB_1,X
C - - - - - 0x008F56 02:AF46: 4C 38 AE  JMP loc_AE38_next_sound_pair

bra_AF49:
- - - - - - 0x008F59 02:AF49: C9        .byte $C9   ; 
- - - - - - 0x008F5A 02:AF4A: A4        .byte $A4   ; 
- - - - - - 0x008F5B 02:AF4B: D0        .byte $D0   ; 
- - - - - - 0x008F5C 02:AF4C: 0B        .byte $0B   ; 
bra_AF4D:
- - - - - - 0x008F5D 02:AF4D: BD        .byte $BD   ; 
- - - - - - 0x008F5E 02:AF4E: 11        .byte $11   ; 
- - - - - - 0x008F5F 02:AF4F: 04        .byte $04   ; 
- - - - - - 0x008F60 02:AF50: 29        .byte $29   ; 
- - - - - - 0x008F61 02:AF51: 03        .byte $03   ; 
- - - - - - 0x008F62 02:AF52: 9D        .byte $9D   ; 
- - - - - - 0x008F63 02:AF53: 11        .byte $11   ; 
- - - - - - 0x008F64 02:AF54: 04        .byte $04   ; 
- - - - - - 0x008F65 02:AF55: 4C        .byte $4C   ; <L>
- - - - - - 0x008F66 02:AF56: 38        .byte $38   ; <8>
- - - - - - 0x008F67 02:AF57: AE        .byte $AE   ; 
- - - - - - 0x008F68 02:AF58: C9        .byte $C9   ; 
- - - - - - 0x008F69 02:AF59: A5        .byte $A5   ; 
- - - - - - 0x008F6A 02:AF5A: D0        .byte $D0   ; 
- - - - - - 0x008F6B 02:AF5B: 08        .byte $08   ; 
- - - - - - 0x008F6C 02:AF5C: B1        .byte $B1   ; 
- - - - - - 0x008F6D 02:AF5D: FE        .byte $FE   ; 
- - - - - - 0x008F6E 02:AF5E: 8D        .byte $8D   ; 
- - - - - - 0x008F6F 02:AF5F: 07        .byte $07   ; 
- - - - - - 0x008F70 02:AF60: 04        .byte $04   ; 
- - - - - - 0x008F71 02:AF61: 4C        .byte $4C   ; <L>
- - - - - - 0x008F72 02:AF62: 38        .byte $38   ; <8>
- - - - - - 0x008F73 02:AF63: AE        .byte $AE   ; 
- - - - - - 0x008F74 02:AF64: C9        .byte $C9   ; 
- - - - - - 0x008F75 02:AF65: AD        .byte $AD   ; 
- - - - - - 0x008F76 02:AF66: D0        .byte $D0   ; 
- - - - - - 0x008F77 02:AF67: 26        .byte $26   ; 
- - - - - - 0x008F78 02:AF68: B1        .byte $B1   ; 
- - - - - - 0x008F79 02:AF69: FE        .byte $FE   ; 
- - - - - - 0x008F7A 02:AF6A: 48        .byte $48   ; <H>
- - - - - - 0x008F7B 02:AF6B: A9        .byte $A9   ; 
- - - - - - 0x008F7C 02:AF6C: 00        .byte $00   ; 
- - - - - - 0x008F7D 02:AF6D: 85        .byte $85   ; 
- - - - - - 0x008F7E 02:AF6E: FF        .byte $FF   ; 
- - - - - - 0x008F7F 02:AF6F: BD        .byte $BD   ; 
- - - - - - 0x008F80 02:AF70: 10        .byte $10   ; 
- - - - - - 0x008F81 02:AF71: 04        .byte $04   ; 
- - - - - - 0x008F82 02:AF72: 0A        .byte $0A   ; 
- - - - - - 0x008F83 02:AF73: 26        .byte $26   ; 
- - - - - - 0x008F84 02:AF74: FF        .byte $FF   ; 
- - - - - - 0x008F85 02:AF75: 7D        .byte $7D   ; 
- - - - - - 0x008F86 02:AF76: 12        .byte $12   ; 
- - - - - - 0x008F87 02:AF77: 04        .byte $04   ; 
- - - - - - 0x008F88 02:AF78: 9D        .byte $9D   ; 
- - - - - - 0x008F89 02:AF79: 12        .byte $12   ; 
- - - - - - 0x008F8A 02:AF7A: 04        .byte $04   ; 
- - - - - - 0x008F8B 02:AF7B: BD        .byte $BD   ; 
- - - - - - 0x008F8C 02:AF7C: 13        .byte $13   ; 
- - - - - - 0x008F8D 02:AF7D: 04        .byte $04   ; 
- - - - - - 0x008F8E 02:AF7E: 65        .byte $65   ; <e>
- - - - - - 0x008F8F 02:AF7F: FF        .byte $FF   ; 
- - - - - - 0x008F90 02:AF80: 9D        .byte $9D   ; 
- - - - - - 0x008F91 02:AF81: 13        .byte $13   ; 
- - - - - - 0x008F92 02:AF82: 04        .byte $04   ; 
- - - - - - 0x008F93 02:AF83: A9        .byte $A9   ; 
- - - - - - 0x008F94 02:AF84: 00        .byte $00   ; 
- - - - - - 0x008F95 02:AF85: 9D        .byte $9D   ; 
- - - - - - 0x008F96 02:AF86: 10        .byte $10   ; 
- - - - - - 0x008F97 02:AF87: 04        .byte $04   ; 
- - - - - - 0x008F98 02:AF88: 68        .byte $68   ; <h>
- - - - - - 0x008F99 02:AF89: D0        .byte $D0   ; 
- - - - - - 0x008F9A 02:AF8A: 10        .byte $10   ; 
- - - - - - 0x008F9B 02:AF8B: 4C        .byte $4C   ; <L>
- - - - - - 0x008F9C 02:AF8C: F9        .byte $F9   ; 
- - - - - - 0x008F9D 02:AF8D: AD        .byte $AD   ; 
- - - - - - 0x008F9E 02:AF8E: C9        .byte $C9   ; 
- - - - - - 0x008F9F 02:AF8F: AE        .byte $AE   ; 
- - - - - - 0x008FA0 02:AF90: D0        .byte $D0   ; 
- - - - - - 0x008FA1 02:AF91: 0C        .byte $0C   ; 
- - - - - - 0x008FA2 02:AF92: 1E        .byte $1E   ; 
- - - - - - 0x008FA3 02:AF93: 14        .byte $14   ; 
- - - - - - 0x008FA4 02:AF94: 04        .byte $04   ; 
- - - - - - 0x008FA5 02:AF95: B1        .byte $B1   ; 
- - - - - - 0x008FA6 02:AF96: FE        .byte $FE   ; 
- - - - - - 0x008FA7 02:AF97: 0A        .byte $0A   ; 
- - - - - - 0x008FA8 02:AF98: 7E        .byte $7E   ; 
- - - - - - 0x008FA9 02:AF99: 14        .byte $14   ; 
- - - - - - 0x008FAA 02:AF9A: 04        .byte $04   ; 
- - - - - - 0x008FAB 02:AF9B: 4C        .byte $4C   ; <L>
- - - - - - 0x008FAC 02:AF9C: 38        .byte $38   ; <8>
- - - - - - 0x008FAD 02:AF9D: AE        .byte $AE   ; 
- - - - - - 0x008FAE 02:AF9E: C9        .byte $C9   ; 
- - - - - - 0x008FAF 02:AF9F: AF        .byte $AF   ; 
- - - - - - 0x008FB0 02:AFA0: D0        .byte $D0   ; 
- - - - - - 0x008FB1 02:AFA1: 12        .byte $12   ; 
- - - - - - 0x008FB2 02:AFA2: B1        .byte $B1   ; 
- - - - - - 0x008FB3 02:AFA3: FE        .byte $FE   ; 
- - - - - - 0x008FB4 02:AFA4: 29        .byte $29   ; 
- - - - - - 0x008FB5 02:AFA5: 0F        .byte $0F   ; 
- - - - - - 0x008FB6 02:AFA6: 9D        .byte $9D   ; 
- - - - - - 0x008FB7 02:AFA7: 15        .byte $15   ; 
- - - - - - 0x008FB8 02:AFA8: 04        .byte $04   ; 
- - - - - - 0x008FB9 02:AFA9: BD        .byte $BD   ; 
- - - - - - 0x008FBA 02:AFAA: 14        .byte $14   ; 
- - - - - - 0x008FBB 02:AFAB: 04        .byte $04   ; 
- - - - - - 0x008FBC 02:AFAC: 29        .byte $29   ; 
- - - - - - 0x008FBD 02:AFAD: F0        .byte $F0   ; 
- - - - - - 0x008FBE 02:AFAE: 1D        .byte $1D   ; 
- - - - - - 0x008FBF 02:AFAF: 15        .byte $15   ; 
- - - - - - 0x008FC0 02:AFB0: 04        .byte $04   ; 
- - - - - - 0x008FC1 02:AFB1: 9D        .byte $9D   ; 
- - - - - - 0x008FC2 02:AFB2: 14        .byte $14   ; 
- - - - - - 0x008FC3 02:AFB3: 04        .byte $04   ; 
- - - - - - 0x008FC4 02:AFB4: 4C        .byte $4C   ; <L>
- - - - - - 0x008FC5 02:AFB5: 38        .byte $38   ; <8>
- - - - - - 0x008FC6 02:AFB6: AE        .byte $AE   ; 

; In: Register A - ??
loc_AFB7:
C D 1 - - - 0x008FC7 02:AFB7: 2C 03 04  BIT ram_0403
C - - - - - 0x008FCA 02:AFBA: 70 7F     BVS bra_B03B_noise ; If 6th bit is set
C - - - - - 0x008FCC 02:AFBC: 48        PHA
C - - - - - 0x008FCD 02:AFBD: 29 0F     AND #$0F
C - - - - - 0x008FCF 02:AFBF: C9 0C     CMP #$0C
C - - - - - 0x008FD1 02:AFC1: 90 03     BCC bra_AFC6 ; If Register A < 0x0C
C - - - - - 0x008FD3 02:AFC3: 4C 49 B0  JMP loc_B049

bra_AFC6:
C - - - - - 0x008FD6 02:AFC6: 0A        ASL
C - - - - - 0x008FD7 02:AFC7: A8        TAY
C - - - - - 0x008FD8 02:AFC8: BD 14 04  LDA vSoundRowFPPValue,X
C - - - - - 0x008FDB 02:AFCB: 10 05     BPL bra_AFD2_skip
- - - - - - 0x008FDD 02:AFCD: 98        TYA
- - - - - - 0x008FDE 02:AFCE: 18        CLC
- - - - - - 0x008FDF 02:AFCF: 69 18     ADC #$18
- - - - - - 0x008FE1 02:AFD1: A8        TAY
bra_AFD2_skip:
C - - - - - 0x008FE2 02:AFD2: B9 6E B1  LDA tbl_B16E_period_by_notes,Y
C - - - - - 0x008FE5 02:AFD5: 8D 04 04  STA ram_0404
C - - - - - 0x008FE8 02:AFD8: B9 6F B1  LDA tbl_B16E_period_by_notes + 1,Y
C - - - - - 0x008FEB 02:AFDB: 8D 05 04  STA ram_0405
C - - - - - 0x008FEE 02:AFDE: 68        PLA
C - - - - - 0x008FEF 02:AFDF: 29 F0     AND #$F0
C - - - - - 0x008FF1 02:AFE1: F0 0E     BEQ bra_AFF1 ; If Register A == 0
C - - - - - 0x008FF3 02:AFE3: 4A        LSR
C - - - - - 0x008FF4 02:AFE4: 4A        LSR
C - - - - - 0x008FF5 02:AFE5: 4A        LSR
C - - - - - 0x008FF6 02:AFE6: 4A        LSR
C - - - - - 0x008FF7 02:AFE7: A8        TAY
bra_AFE8_loop:
C - - - - - 0x008FF8 02:AFE8: 4E 05 04  LSR ram_0405
C - - - - - 0x008FFB 02:AFEB: 6E 04 04  ROR ram_0404
C - - - - - 0x008FFE 02:AFEE: 88        DEY
C - - - - - 0x008FFF 02:AFEF: D0 F7     BNE bra_AFE8_loop ; If Register Y != 0
bra_AFF1:
C - - - - - 0x009001 02:AFF1: A0 01     LDY #$01 ; to 2 byte of N
C - - - - - 0x009003 02:AFF3: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009005 02:AFF5: 9D 17 04  STA vSoundRowFPPLength,X
C - - - - - 0x009008 02:AFF8: A9 00     LDA #$00
C - - - - - 0x00900A 02:AFFA: 9D 1D 04  STA vSoundRowB_D,X
C - - - - - 0x00900D 02:AFFD: 20 61 B0  JSR sub_B061
C - - - - - 0x009010 02:B000: B9 9E B1  LDA tbl_apu_channels,Y
C - - - - - 0x009013 02:B003: 0D 00 04  ORA ram_0400
C - - - - - 0x009016 02:B006: 8D 00 04  STA ram_0400
C - - - - - 0x009019 02:B009: 8D 15 40  STA APU_STATUS
C - - - - - 0x00901C 02:B00C: AD 05 04  LDA ram_0405
C - - - - - 0x00901F 02:B00F: 48        PHA
C - - - - - 0x009020 02:B010: AD 04 04  LDA ram_0404
C - - - - - 0x009023 02:B013: 48        PHA
C - - - - - 0x009024 02:B014: 20 8C B0  JSR sub_B08C
C - - - - - 0x009027 02:B017: BD 18 04  LDA vSoundRowB_8,X
C - - - - - 0x00902A 02:B01A: 99 01 40  STA $4001,Y    ; assign a length counter (pulse channel)
C - - - - - 0x00902D 02:B01D: 68        PLA
C - - - - - 0x00902E 02:B01E: 99 02 40  STA $4002,Y    ; assign a timer low (pulse channel)
C - - - - - 0x009031 02:B021: C9 02     CMP #$02
C - - - - - 0x009033 02:B023: 90 08     BCC bra_B02D ; If Register A < 0x02
C - - - - - 0x009035 02:B025: C9 FE     CMP #$FE
C - - - - - 0x009037 02:B027: 90 06     BCC bra_B02F ; If Register A < 0xFE
C - - - - - 0x009039 02:B029: A9 FD     LDA #$FD
C - - - - - 0x00903B 02:B02B: D0 02     BNE bra_B02F
bra_B02D:
C - - - - - 0x00903D 02:B02D: A9 02     LDA #$02
bra_B02F:
C - - - - - 0x00903F 02:B02F: 9D 21 04  STA vSoundRowB_H,X
C - - - - - 0x009042 02:B032: 68        PLA
C - - - - - 0x009043 02:B033: 29 07     AND #$07
C - - - - - 0x009045 02:B035: 09 08     ORA #$08
C - - - - - 0x009047 02:B037: 99 03 40  STA $4003,Y ; assign a timer high (pulse channel)
C - - - - - 0x00904A 02:B03A: 60        RTS

bra_B03B_noise:
C - - - - - 0x00904B 02:B03B: C9 10     CMP #$10
C - - - - - 0x00904D 02:B03D: B0 0B     BCS bra_B04A
C - - - - - 0x00904F 02:B03F: 8D 04 04  STA ram_0404
C - - - - - 0x009052 02:B042: A9 00     LDA #$00
C - - - - - 0x009054 02:B044: 8D 05 04  STA ram_0405
C - - - - - 0x009057 02:B047: F0 A8     BEQ bra_AFF1
loc_B049:
C D 1 - - - 0x009059 02:B049: 68        PLA
bra_B04A:
C - - - - - 0x00905A 02:B04A: A0 01     LDY #$01
C - - - - - 0x00905C 02:B04C: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x00905E 02:B04E: 9D 17 04  STA vSoundRowFPPLength,X
loc_B051:
C D 1 - - - 0x009061 02:B051: 20 61 B0  JSR sub_B061
C - - - - - 0x009064 02:B054: B9 A2 B1  LDA tbl_B1A2,Y
C - - - - - 0x009067 02:B057: 2D 00 04  AND ram_0400
C - - - - - 0x00906A 02:B05A: 8D 15 40  STA APU_STATUS
C - - - - - 0x00906D 02:B05D: 8D 00 04  STA ram_0400
C - - - - - 0x009070 02:B060: 60        RTS

; Out: Register Y - 0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise
sub_B061:
C - - - - - 0x009071 02:B061: AC 02 04  LDY vCurrentApuChannel     ;
C - - - - - 0x009074 02:B064: B9 9E B1  LDA tbl_apu_channels,Y     ;
C - - - - - 0x009077 02:B067: 2C 01 04  BIT vApuChannelProcessed   ;
C - - - - - 0x00907A 02:B06A: F0 02     BEQ bra_B06E_RTS           ; If the current channel isn't processed
C - - - - - 0x00907C 02:B06C: 68        PLA
C - - - - - 0x00907D 02:B06D: 68        PLA
bra_B06E_RTS:
C - - - - - 0x00907E 02:B06E: 60        RTS

sub_B06F:
C - - - - - 0x00907F 02:B06F: 2C 03 04  BIT ram_0403
C - - - - - 0x009082 02:B072: 30 0C     BMI bra_B080_triangle
C - - - - - 0x009084 02:B074: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009086 02:B076: 6A        ROR
C - - - - - 0x009087 02:B077: 6A        ROR
C - - - - - 0x009088 02:B078: 6A        ROR
C - - - - - 0x009089 02:B079: 29 C0     AND #$C0
C - - - - - 0x00908B 02:B07B: 8D 04 04  STA ram_0404
C - - - - - 0x00908E 02:B07E: 18        CLC
C - - - - - 0x00908F 02:B07F: 60        RTS

bra_B080_triangle:
C - - - - - 0x009090 02:B080: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009092 02:B082: 29 7F     AND #$7F
C - - - - - 0x009094 02:B084: 8D 04 04  STA ram_0404
C - - - - - 0x009097 02:B087: 38        SEC
C - - - - - 0x009098 02:B088: 60        RTS

sub_B089:
C - - - - - 0x009099 02:B089: 20 61 B0  JSR sub_B061
; In; Register Y - apu channel
; Out: Register Y - 0x00 (pulse1), 0x04 (pulse2), 0x08 (triangle), 0x0C (noise)
sub_B08C:
C - - - - - 0x00909C 02:B08C: C0 02     CPY #$02                         ; CONSTANT - the triangle channel
C - - - - - 0x00909E 02:B08E: F0 15     BEQ bra_B0A5_triangle            ; If Register Y == 0x02
C - - - - - 0x0090A0 02:B090: BD 1B 04  LDA vSoundRowB_B,X
C - - - - - 0x0090A3 02:B093: D0 2B     BNE bra_B0C0_skip                ; If Register A != 0x00
C - - - - - 0x0090A5 02:B095: 20 AB B0  JSR sub_B0AB_get_channel_offset  ;
C - - - - - 0x0090A8 02:B098: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090AB 02:B09B: 29 10     AND #$10                         ; CONSTANT - constant volume (C) https://www.nesdev.org/wiki/APU (#Pulse #Noise)
C - - - - - 0x0090AD 02:B09D: 0A        ASL                              ; to envelope loop / length counter halt (L)
C - - - - - 0x0090AE 02:B09E: 1D 16 04  ORA vSoundRowB_6,X
C - - - - - 0x0090B1 02:B0A1: 99 00 40  STA $4000,Y
C - - - - - 0x0090B4 02:B0A4: 60        RTS

bra_B0A5_triangle:
C - - - - - 0x0090B5 02:B0A5: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090B8 02:B0A8: 8D 08 40  STA TRI_LINEAR
; Out: Register Y - 0x00 (pulse1), 0x04 (pulse2), 0x08 (triangle), 0x0C (noise)
sub_B0AB_get_channel_offset:
C - - - - - 0x0090BB 02:B0AB: 48        PHA                      ; store A
C - - - - - 0x0090BC 02:B0AC: AD 02 04  LDA vCurrentApuChannel   ;
C - - - - - 0x0090BF 02:B0AF: 0A        ASL                      ;
C - - - - - 0x0090C0 02:B0B0: 0A        ASL                      ; *4
C - - - - - 0x0090C1 02:B0B1: A8        TAY                      ;
C - - - - - 0x0090C2 02:B0B2: 68        PLA                      ; retrieve A (see $B0AB)
bra_B0B3_RTS:
C - - - - - 0x0090C3 02:B0B3: 60        RTS                      ;

sub_B0B4:
C - - - - - 0x0090C4 02:B0B4: 20 61 B0  JSR sub_B061
C - - - - - 0x0090C7 02:B0B7: C0 02     CPY #$02
C - - - - - 0x0090C9 02:B0B9: F0 F8     BEQ bra_B0B3_RTS
C - - - - - 0x0090CB 02:B0BB: BD 1B 04  LDA vSoundRowB_B,X
C - - - - - 0x0090CE 02:B0BE: F0 F3     BEQ bra_B0B3_RTS
bra_B0C0_skip:
C - - - - - 0x0090D0 02:B0C0: 0A        ASL
C - - - - - 0x0090D1 02:B0C1: 0A        ASL
C - - - - - 0x0090D2 02:B0C2: 0A        ASL
C - - - - - 0x0090D3 02:B0C3: 0A        ASL
C - - - - - 0x0090D4 02:B0C4: 48        PHA
C - - - - - 0x0090D5 02:B0C5: A9 00     LDA #$00
C - - - - - 0x0090D7 02:B0C7: 8D 04 04  STA ram_0404
C - - - - - 0x0090DA 02:B0CA: BD 1D 04  LDA vSoundRowB_D,X
C - - - - - 0x0090DD 02:B0CD: A0 03     LDY #$03
bra_B0CF:
C - - - - - 0x0090DF 02:B0CF: 0A        ASL
C - - - - - 0x0090E0 02:B0D0: DD 1C 04  CMP vSoundRowB_C,X
C - - - - - 0x0090E3 02:B0D3: 90 03     BCC bra_B0D8
C - - - - - 0x0090E5 02:B0D5: FD 1C 04  SBC vSoundRowB_C,X
bra_B0D8:
C - - - - - 0x0090E8 02:B0D8: 2E 04 04  ROL ram_0404
C - - - - - 0x0090EB 02:B0DB: 88        DEY
C - - - - - 0x0090EC 02:B0DC: 10 F1     BPL bra_B0CF
C - - - - - 0x0090EE 02:B0DE: 68        PLA
C - - - - - 0x0090EF 02:B0DF: 0D 04 04  ORA ram_0404
C - - - - - 0x0090F2 02:B0E2: A8        TAY
C - - - - - 0x0090F3 02:B0E3: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090F6 02:B0E6: 29 0F     AND #$0F
C - - - - - 0x0090F8 02:B0E8: 19 1A B2  ORA tbl_B21A,Y
C - - - - - 0x0090FB 02:B0EB: A8        TAY
C - - - - - 0x0090FC 02:B0EC: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090FF 02:B0EF: 29 C0     AND #$C0
C - - - - - 0x009101 02:B0F1: 09 30     ORA #$30
C - - - - - 0x009103 02:B0F3: 19 BA B2  ORA tbl_B2BA,Y
C - - - - - 0x009106 02:B0F6: 20 AB B0  JSR sub_B0AB_get_channel_offset
C - - - - - 0x009109 02:B0F9: 99 00 40  STA $4000,Y
C - - - - - 0x00910C 02:B0FC: 60        RTS

sub_B0FD:
C - - - - - 0x00910D 02:B0FD: 2C 03 04  BIT ram_0403
C - - - - - 0x009110 02:B100: 30 2E     BMI bra_B130_RTS
C - - - - - 0x009112 02:B102: BD 1E 04  LDA vSoundRowB_E,X
C - - - - - 0x009115 02:B105: F0 29     BEQ bra_B130_RTS
C - - - - - 0x009117 02:B107: DE 20 04  DEC vSoundRowB_G,X
C - - - - - 0x00911A 02:B10A: D0 24     BNE bra_B130_RTS
C - - - - - 0x00911C 02:B10C: BD 1F 04  LDA vSoundRowB_F,X
C - - - - - 0x00911F 02:B10F: 9D 20 04  STA vSoundRowB_G,X
C - - - - - 0x009122 02:B112: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x009125 02:B115: 29 1F     AND #$1F
C - - - - - 0x009127 02:B117: 8D 04 04  STA ram_0404
C - - - - - 0x00912A 02:B11A: 29 10     AND #$10
C - - - - - 0x00912C 02:B11C: F0 12     BEQ bra_B130_RTS
C - - - - - 0x00912E 02:B11E: BD 1E 04  LDA vSoundRowB_E,X
C - - - - - 0x009131 02:B121: 30 0E     BMI bra_B131
- - - - - - 0x009133 02:B123: DE 1E 04  DEC vSoundRowB_E,X
- - - - - - 0x009136 02:B126: AD 04 04  LDA ram_0404
- - - - - - 0x009139 02:B129: C9 1F     CMP #$1F
- - - - - - 0x00913B 02:B12B: F0 03     BEQ bra_B130_RTS
- - - - - - 0x00913D 02:B12D: FE 16 04  INC vSoundRowB_6,X
bra_B130_RTS:
C - - - - - 0x009140 02:B130: 60        RTS

bra_B131:
C - - - - - 0x009141 02:B131: FE 1E 04  INC vSoundRowB_E,X
C - - - - - 0x009144 02:B134: AD 04 04  LDA ram_0404
C - - - - - 0x009147 02:B137: C9 10     CMP #$10
C - - - - - 0x009149 02:B139: F0 F5     BEQ bra_B130_RTS
C - - - - - 0x00914B 02:B13B: DE 16 04  DEC vSoundRowB_6,X
C - - - - - 0x00914E 02:B13E: 60        RTS

sub_B13F:
C - - - - - 0x00914F 02:B13F: 20 61 B0  JSR sub_B061
C - - - - - 0x009152 02:B142: 2C 03 04  BIT ram_0403
C - - - - - 0x009155 02:B145: 70 26     BVS bra_B16D_RTS
C - - - - - 0x009157 02:B147: BD 24 04  LDA vSoundRowB_K,X
C - - - - - 0x00915A 02:B14A: D0 21     BNE bra_B16D_RTS
C - - - - - 0x00915C 02:B14C: AD 06 04  LDA v_sound_counter
C - - - - - 0x00915F 02:B14F: 29 0F     AND #$0F
C - - - - - 0x009161 02:B151: 8D 04 04  STA ram_0404
C - - - - - 0x009164 02:B154: BD 11 04  LDA vSoundRowB_1,X
C - - - - - 0x009167 02:B157: 10 14     BPL bra_B16D_RTS
C - - - - - 0x009169 02:B159: 29 70     AND #$70
C - - - - - 0x00916B 02:B15B: 18        CLC
C - - - - - 0x00916C 02:B15C: 6D 04 04  ADC ram_0404
C - - - - - 0x00916F 02:B15F: A8        TAY
C - - - - - 0x009170 02:B160: B9 AA B1  LDA tbl_B1AA,Y
C - - - - - 0x009173 02:B163: 18        CLC
C - - - - - 0x009174 02:B164: 7D 21 04  ADC vSoundRowB_H,X
C - - - - - 0x009177 02:B167: 20 AB B0  JSR sub_B0AB_get_channel_offset
C - - - - - 0x00917A 02:B16A: 99 02 40  STA $4002,Y
bra_B16D_RTS:
C - - - - - 0x00917D 02:B16D: 60        RTS

; see https://www.nesdev.org/wiki/APU_period_table
tbl_B16E_period_by_notes:
- D 1 - - - 0x00917E 02:B16E: AE        .byte $AE, $06   ; C
- D 1 - - - 0x009180 02:B170: 4E        .byte $4E, $06   ; C#
- D 1 - - - 0x009182 02:B172: F4        .byte $F4, $05   ; D
- D 1 - - - 0x009184 02:B174: 9E        .byte $9E, $05   ; D#
- D 1 - - - 0x009186 02:B176: 4D        .byte $4D, $05   ; E
- D 1 - - - 0x009188 02:B178: 01        .byte $01, $05   ; F
- D 1 - - - 0x00918A 02:B17A: B9        .byte $B9, $04   ; F#
- D 1 - - - 0x00918C 02:B17C: 75        .byte $75, $04   ; G
- D 1 - - - 0x00918E 02:B17E: 35        .byte $35, $04   ; G#
- D 1 - - - 0x009190 02:B180: F9        .byte $F9, $03   ; A
- D 1 - - - 0x009192 02:B182: C0        .byte $C0, $03   ; A#
- D 1 - - - 0x009194 02:B184: 8A        .byte $8A, $03   ; B
- - - - - - 0x009196 02:B186: 7E        .byte $7E, $06   ; 
- - - - - - 0x009198 02:B188: 21        .byte $21, $06   ; 
- - - - - - 0x00919A 02:B18A: C9        .byte $C9, $05   ; 
- - - - - - 0x00919C 02:B18C: 76        .byte $76, $05   ; 
- - - - - - 0x00919E 02:B18E: 27        .byte $27, $05   ; 
- - - - - - 0x0091A0 02:B190: DD        .byte $DD, $04   ; 
- - - - - - 0x0091A2 02:B192: 96        .byte $96, $04   ; 
- - - - - - 0x0091A4 02:B194: 55        .byte $55, $04   ; 
- - - - - - 0x0091A6 02:B196: 17        .byte $17, $04   ; 
- - - - - - 0x0091A8 02:B198: DD        .byte $DD, $03   ; 
- - - - - - 0x0091AA 02:B19A: A5        .byte $A5, $03   ; 
- - - - - - 0x0091AC 02:B19C: 71        .byte $71, $03   ; 

tbl_apu_channels:
- D 1 - - - 0x0091AE 02:B19E: 01        .byte $01   ; Flag: pulse channel 1
- D 1 - - - 0x0091AF 02:B19F: 02        .byte $02   ; Flag: pulse channel 2
- D 1 - - - 0x0091B0 02:B1A0: 04        .byte $04   ; Flag: triangle channel
- D 1 - - - 0x0091B1 02:B1A1: 08        .byte $08   ; Flag: noise channel
tbl_B1A2:
- D 1 - - - 0x0091B2 02:B1A2: 0E        .byte $0E   ; 
- D 1 - - - 0x0091B3 02:B1A3: 0D        .byte $0D   ; 
- D 1 - - - 0x0091B4 02:B1A4: 0B        .byte $0B   ; 
- D 1 - - - 0x0091B5 02:B1A5: 07        .byte $07   ; 
tbl_B1A6:
- D 1 - - - 0x0091B6 02:B1A6: 00        .byte $00   ; 
- D 1 - - - 0x0091B7 02:B1A7: 01        .byte $01   ; 
- D 1 - - - 0x0091B8 02:B1A8: 82        .byte $82   ; 
- D 1 - - - 0x0091B9 02:B1A9: 43        .byte $43   ; <C>
tbl_B1AA:
- - - - - - 0x0091BA 02:B1AA: 00        .byte $00   ; 
- - - - - - 0x0091BB 02:B1AB: 00        .byte $00   ; 
- - - - - - 0x0091BC 02:B1AC: 01        .byte $01   ; 
- - - - - - 0x0091BD 02:B1AD: 01        .byte $01   ; 
- - - - - - 0x0091BE 02:B1AE: 00        .byte $00   ; 
- - - - - - 0x0091BF 02:B1AF: 00        .byte $00   ; 
- - - - - - 0x0091C0 02:B1B0: FF        .byte $FF   ; 
- - - - - - 0x0091C1 02:B1B1: FF        .byte $FF   ; 
- - - - - - 0x0091C2 02:B1B2: 00        .byte $00   ; 
- - - - - - 0x0091C3 02:B1B3: 00        .byte $00   ; 
- - - - - - 0x0091C4 02:B1B4: 01        .byte $01   ; 
- - - - - - 0x0091C5 02:B1B5: 01        .byte $01   ; 
- - - - - - 0x0091C6 02:B1B6: 00        .byte $00   ; 
- - - - - - 0x0091C7 02:B1B7: 00        .byte $00   ; 
- - - - - - 0x0091C8 02:B1B8: FF        .byte $FF   ; 
- - - - - - 0x0091C9 02:B1B9: FF        .byte $FF   ; 
- D 1 - - - 0x0091CA 02:B1BA: 00        .byte $00   ; 
- D 1 - - - 0x0091CB 02:B1BB: 00        .byte $00   ; 
- D 1 - - - 0x0091CC 02:B1BC: 00        .byte $00   ; 
- D 1 - - - 0x0091CD 02:B1BD: 00        .byte $00   ; 
- D 1 - - - 0x0091CE 02:B1BE: 01        .byte $01   ; 
- D 1 - - - 0x0091CF 02:B1BF: 01        .byte $01   ; 
- D 1 - - - 0x0091D0 02:B1C0: 01        .byte $01   ; 
- D 1 - - - 0x0091D1 02:B1C1: 01        .byte $01   ; 
- D 1 - - - 0x0091D2 02:B1C2: 00        .byte $00   ; 
- D 1 - - - 0x0091D3 02:B1C3: 00        .byte $00   ; 
- D 1 - - - 0x0091D4 02:B1C4: 00        .byte $00   ; 
- D 1 - - - 0x0091D5 02:B1C5: 00        .byte $00   ; 
- D 1 - - - 0x0091D6 02:B1C6: FF        .byte $FF   ; 
- D 1 - - - 0x0091D7 02:B1C7: FF        .byte $FF   ; 
- D 1 - - - 0x0091D8 02:B1C8: FF        .byte $FF   ; 
- D 1 - - - 0x0091D9 02:B1C9: FF        .byte $FF   ; 
- D 1 - - - 0x0091DA 02:B1CA: 00        .byte $00   ; 
- D 1 - - - 0x0091DB 02:B1CB: 01        .byte $01   ; 
- D 1 - - - 0x0091DC 02:B1CC: 02        .byte $02   ; 
- D 1 - - - 0x0091DD 02:B1CD: 01        .byte $01   ; 
- D 1 - - - 0x0091DE 02:B1CE: 00        .byte $00   ; 
- D 1 - - - 0x0091DF 02:B1CF: FF        .byte $FF   ; 
- D 1 - - - 0x0091E0 02:B1D0: FE        .byte $FE   ; 
- D 1 - - - 0x0091E1 02:B1D1: FF        .byte $FF   ; 
- D 1 - - - 0x0091E2 02:B1D2: 00        .byte $00   ; 
- D 1 - - - 0x0091E3 02:B1D3: 01        .byte $01   ; 
- D 1 - - - 0x0091E4 02:B1D4: 02        .byte $02   ; 
- D 1 - - - 0x0091E5 02:B1D5: 01        .byte $01   ; 
- D 1 - - - 0x0091E6 02:B1D6: 00        .byte $00   ; 
- D 1 - - - 0x0091E7 02:B1D7: FF        .byte $FF   ; 
- D 1 - - - 0x0091E8 02:B1D8: FE        .byte $FE   ; 
- D 1 - - - 0x0091E9 02:B1D9: FF        .byte $FF   ; 
- - - - - - 0x0091EA 02:B1DA: 00        .byte $00   ; 
- - - - - - 0x0091EB 02:B1DB: 00        .byte $00   ; 
- - - - - - 0x0091EC 02:B1DC: 01        .byte $01   ; 
- - - - - - 0x0091ED 02:B1DD: 01        .byte $01   ; 
- - - - - - 0x0091EE 02:B1DE: 02        .byte $02   ; 
- - - - - - 0x0091EF 02:B1DF: 02        .byte $02   ; 
- - - - - - 0x0091F0 02:B1E0: 01        .byte $01   ; 
- - - - - - 0x0091F1 02:B1E1: 01        .byte $01   ; 
- - - - - - 0x0091F2 02:B1E2: 00        .byte $00   ; 
- - - - - - 0x0091F3 02:B1E3: 00        .byte $00   ; 
- - - - - - 0x0091F4 02:B1E4: FF        .byte $FF   ; 
- - - - - - 0x0091F5 02:B1E5: FF        .byte $FF   ; 
- - - - - - 0x0091F6 02:B1E6: FE        .byte $FE   ; 
- - - - - - 0x0091F7 02:B1E7: FE        .byte $FE   ; 
- - - - - - 0x0091F8 02:B1E8: FF        .byte $FF   ; 
- - - - - - 0x0091F9 02:B1E9: FF        .byte $FF   ; 
- - - - - - 0x0091FA 02:B1EA: FF        .byte $FF   ; 
- - - - - - 0x0091FB 02:B1EB: FF        .byte $FF   ; 
- - - - - - 0x0091FC 02:B1EC: FF        .byte $FF   ; 
- - - - - - 0x0091FD 02:B1ED: FF        .byte $FF   ; 
- - - - - - 0x0091FE 02:B1EE: FF        .byte $FF   ; 
- - - - - - 0x0091FF 02:B1EF: FF        .byte $FF   ; 
- - - - - - 0x009200 02:B1F0: FF        .byte $FF   ; 
- - - - - - 0x009201 02:B1F1: FF        .byte $FF   ; 
- - - - - - 0x009202 02:B1F2: FF        .byte $FF   ; 
- - - - - - 0x009203 02:B1F3: FF        .byte $FF   ; 
- - - - - - 0x009204 02:B1F4: FF        .byte $FF   ; 
- - - - - - 0x009205 02:B1F5: FF        .byte $FF   ; 
- - - - - - 0x009206 02:B1F6: FF        .byte $FF   ; 
- - - - - - 0x009207 02:B1F7: FF        .byte $FF   ; 
- - - - - - 0x009208 02:B1F8: FF        .byte $FF   ; 
- - - - - - 0x009209 02:B1F9: FF        .byte $FF   ; 
- - - - - - 0x00920A 02:B1FA: FE        .byte $FE   ; 
- - - - - - 0x00920B 02:B1FB: FE        .byte $FE   ; 
- - - - - - 0x00920C 02:B1FC: FE        .byte $FE   ; 
- - - - - - 0x00920D 02:B1FD: FE        .byte $FE   ; 
- - - - - - 0x00920E 02:B1FE: FE        .byte $FE   ; 
- - - - - - 0x00920F 02:B1FF: FE        .byte $FE   ; 
- - - - - - 0x009210 02:B200: FE        .byte $FE   ; 
- - - - - - 0x009211 02:B201: FE        .byte $FE   ; 
- - - - - - 0x009212 02:B202: FE        .byte $FE   ; 
- - - - - - 0x009213 02:B203: FE        .byte $FE   ; 
- - - - - - 0x009214 02:B204: FE        .byte $FE   ; 
- - - - - - 0x009215 02:B205: FE        .byte $FE   ; 
- - - - - - 0x009216 02:B206: FE        .byte $FE   ; 
- - - - - - 0x009217 02:B207: FE        .byte $FE   ; 
- - - - - - 0x009218 02:B208: FE        .byte $FE   ; 
- - - - - - 0x009219 02:B209: FE        .byte $FE   ; 
- D 1 - - - 0x00921A 02:B20A: 01        .byte $01   ; 
- D 1 - - - 0x00921B 02:B20B: 01        .byte $01   ; 
- D 1 - - - 0x00921C 02:B20C: 01        .byte $01   ; 
- D 1 - - - 0x00921D 02:B20D: 01        .byte $01   ; 
- D 1 - - - 0x00921E 02:B20E: 01        .byte $01   ; 
- D 1 - - - 0x00921F 02:B20F: 01        .byte $01   ; 
- D 1 - - - 0x009220 02:B210: 01        .byte $01   ; 
- D 1 - - - 0x009221 02:B211: 01        .byte $01   ; 
- D 1 - - - 0x009222 02:B212: 01        .byte $01   ; 
- D 1 - - - 0x009223 02:B213: 01        .byte $01   ; 
- D 1 - - - 0x009224 02:B214: 01        .byte $01   ; 
- D 1 - - - 0x009225 02:B215: 01        .byte $01   ; 
- D 1 - - - 0x009226 02:B216: 01        .byte $01   ; 
- D 1 - - - 0x009227 02:B217: 01        .byte $01   ; 
- D 1 - - - 0x009228 02:B218: 01        .byte $01   ; 
- D 1 - - - 0x009229 02:B219: 01        .byte $01   ; 
tbl_B21A:
- - - - - - 0x00922A 02:B21A: 02        .byte $02   ; 
- - - - - - 0x00922B 02:B21B: 02        .byte $02   ; 
- - - - - - 0x00922C 02:B21C: 02        .byte $02   ; 
- - - - - - 0x00922D 02:B21D: 02        .byte $02   ; 
- - - - - - 0x00922E 02:B21E: 02        .byte $02   ; 
- - - - - - 0x00922F 02:B21F: 02        .byte $02   ; 
- - - - - - 0x009230 02:B220: 02        .byte $02   ; 
- - - - - - 0x009231 02:B221: 02        .byte $02   ; 
- - - - - - 0x009232 02:B222: 02        .byte $02   ; 
- - - - - - 0x009233 02:B223: 02        .byte $02   ; 
- - - - - - 0x009234 02:B224: 02        .byte $02   ; 
- - - - - - 0x009235 02:B225: 02        .byte $02   ; 
- - - - - - 0x009236 02:B226: 02        .byte $02   ; 
- - - - - - 0x009237 02:B227: 02        .byte $02   ; 
- - - - - - 0x009238 02:B228: 02        .byte $02   ; 
- - - - - - 0x009239 02:B229: 02        .byte $02   ; 
- - - - - - 0x00923A 02:B22A: F0        .byte $F0   ; 
- - - - - - 0x00923B 02:B22B: E0        .byte $E0   ; 
- - - - - - 0x00923C 02:B22C: D0        .byte $D0   ; 
- - - - - - 0x00923D 02:B22D: C0        .byte $C0   ; 
- - - - - - 0x00923E 02:B22E: B0        .byte $B0   ; 
- - - - - - 0x00923F 02:B22F: A0        .byte $A0   ; 
- - - - - - 0x009240 02:B230: 90        .byte $90   ; 
- - - - - - 0x009241 02:B231: 80        .byte $80   ; 
- - - - - - 0x009242 02:B232: 70        .byte $70   ; <p>
- - - - - - 0x009243 02:B233: 60        .byte $60   ; 
- - - - - - 0x009244 02:B234: 50        .byte $50   ; <P>
- - - - - - 0x009245 02:B235: 40        .byte $40   ; 
- - - - - - 0x009246 02:B236: 30        .byte $30   ; <0>
- - - - - - 0x009247 02:B237: 20        .byte $20   ; 
- - - - - - 0x009248 02:B238: 10        .byte $10   ; 
- - - - - - 0x009249 02:B239: 00        .byte $00   ; 
- - - - - - 0x00924A 02:B23A: 00        .byte $00   ; 
- - - - - - 0x00924B 02:B23B: 10        .byte $10   ; 
- - - - - - 0x00924C 02:B23C: 20        .byte $20   ; 
- - - - - - 0x00924D 02:B23D: 30        .byte $30   ; <0>
- - - - - - 0x00924E 02:B23E: 40        .byte $40   ; 
- - - - - - 0x00924F 02:B23F: 50        .byte $50   ; <P>
- - - - - - 0x009250 02:B240: 60        .byte $60   ; 
- - - - - - 0x009251 02:B241: 70        .byte $70   ; <p>
- - - - - - 0x009252 02:B242: 80        .byte $80   ; 
- - - - - - 0x009253 02:B243: 90        .byte $90   ; 
- - - - - - 0x009254 02:B244: A0        .byte $A0   ; 
- - - - - - 0x009255 02:B245: B0        .byte $B0   ; 
- - - - - - 0x009256 02:B246: C0        .byte $C0   ; 
- - - - - - 0x009257 02:B247: D0        .byte $D0   ; 
- - - - - - 0x009258 02:B248: E0        .byte $E0   ; 
- - - - - - 0x009259 02:B249: F0        .byte $F0   ; 
- - - - - - 0x00925A 02:B24A: F0        .byte $F0   ; 
- - - - - - 0x00925B 02:B24B: E0        .byte $E0   ; 
- - - - - - 0x00925C 02:B24C: D0        .byte $D0   ; 
- - - - - - 0x00925D 02:B24D: C0        .byte $C0   ; 
- - - - - - 0x00925E 02:B24E: B0        .byte $B0   ; 
- - - - - - 0x00925F 02:B24F: A0        .byte $A0   ; 
- - - - - - 0x009260 02:B250: 90        .byte $90   ; 
- - - - - - 0x009261 02:B251: 80        .byte $80   ; 
- - - - - - 0x009262 02:B252: 80        .byte $80   ; 
- - - - - - 0x009263 02:B253: 90        .byte $90   ; 
- - - - - - 0x009264 02:B254: A0        .byte $A0   ; 
- - - - - - 0x009265 02:B255: B0        .byte $B0   ; 
- - - - - - 0x009266 02:B256: C0        .byte $C0   ; 
- - - - - - 0x009267 02:B257: D0        .byte $D0   ; 
- - - - - - 0x009268 02:B258: E0        .byte $E0   ; 
- - - - - - 0x009269 02:B259: F0        .byte $F0   ; 
- - - - - - 0x00926A 02:B25A: 80        .byte $80   ; 
- - - - - - 0x00926B 02:B25B: 90        .byte $90   ; 
- - - - - - 0x00926C 02:B25C: A0        .byte $A0   ; 
- - - - - - 0x00926D 02:B25D: B0        .byte $B0   ; 
- - - - - - 0x00926E 02:B25E: C0        .byte $C0   ; 
- - - - - - 0x00926F 02:B25F: D0        .byte $D0   ; 
- - - - - - 0x009270 02:B260: E0        .byte $E0   ; 
- - - - - - 0x009271 02:B261: F0        .byte $F0   ; 
- - - - - - 0x009272 02:B262: F0        .byte $F0   ; 
- - - - - - 0x009273 02:B263: E0        .byte $E0   ; 
- - - - - - 0x009274 02:B264: D0        .byte $D0   ; 
- - - - - - 0x009275 02:B265: C0        .byte $C0   ; 
- - - - - - 0x009276 02:B266: B0        .byte $B0   ; 
- - - - - - 0x009277 02:B267: A0        .byte $A0   ; 
- - - - - - 0x009278 02:B268: 90        .byte $90   ; 
- - - - - - 0x009279 02:B269: 80        .byte $80   ; 
- - - - - - 0x00927A 02:B26A: F0        .byte $F0   ; 
- - - - - - 0x00927B 02:B26B: D0        .byte $D0   ; 
- - - - - - 0x00927C 02:B26C: B0        .byte $B0   ; 
- - - - - - 0x00927D 02:B26D: 90        .byte $90   ; 
- - - - - - 0x00927E 02:B26E: 70        .byte $70   ; <p>
- - - - - - 0x00927F 02:B26F: 50        .byte $50   ; <P>
- - - - - - 0x009280 02:B270: 30        .byte $30   ; <0>
- - - - - - 0x009281 02:B271: 10        .byte $10   ; 
- - - - - - 0x009282 02:B272: E0        .byte $E0   ; 
- - - - - - 0x009283 02:B273: C0        .byte $C0   ; 
- - - - - - 0x009284 02:B274: A0        .byte $A0   ; 
- - - - - - 0x009285 02:B275: 80        .byte $80   ; 
- - - - - - 0x009286 02:B276: 60        .byte $60   ; 
- - - - - - 0x009287 02:B277: 40        .byte $40   ; 
- - - - - - 0x009288 02:B278: 20        .byte $20   ; 
- - - - - - 0x009289 02:B279: 00        .byte $00   ; 
- - - - - - 0x00928A 02:B27A: F0        .byte $F0   ; 
- - - - - - 0x00928B 02:B27B: E0        .byte $E0   ; 
- - - - - - 0x00928C 02:B27C: D0        .byte $D0   ; 
- - - - - - 0x00928D 02:B27D: C0        .byte $C0   ; 
- - - - - - 0x00928E 02:B27E: C0        .byte $C0   ; 
- - - - - - 0x00928F 02:B27F: D0        .byte $D0   ; 
- - - - - - 0x009290 02:B280: E0        .byte $E0   ; 
- - - - - - 0x009291 02:B281: D0        .byte $D0   ; 
- - - - - - 0x009292 02:B282: C0        .byte $C0   ; 
- - - - - - 0x009293 02:B283: A0        .byte $A0   ; 
- - - - - - 0x009294 02:B284: 80        .byte $80   ; 
- - - - - - 0x009295 02:B285: 60        .byte $60   ; 
- - - - - - 0x009296 02:B286: 40        .byte $40   ; 
- - - - - - 0x009297 02:B287: 20        .byte $20   ; 
- - - - - - 0x009298 02:B288: 10        .byte $10   ; 
- - - - - - 0x009299 02:B289: 00        .byte $00   ; 
- - - - - - 0x00929A 02:B28A: F0        .byte $F0   ; 
- - - - - - 0x00929B 02:B28B: D0        .byte $D0   ; 
- - - - - - 0x00929C 02:B28C: B0        .byte $B0   ; 
- - - - - - 0x00929D 02:B28D: 90        .byte $90   ; 
- - - - - - 0x00929E 02:B28E: A0        .byte $A0   ; 
- - - - - - 0x00929F 02:B28F: B0        .byte $B0   ; 
- - - - - - 0x0092A0 02:B290: 90        .byte $90   ; 
- - - - - - 0x0092A1 02:B291: 70        .byte $70   ; <p>
- - - - - - 0x0092A2 02:B292: 60        .byte $60   ; 
- - - - - - 0x0092A3 02:B293: 50        .byte $50   ; <P>
- - - - - - 0x0092A4 02:B294: 40        .byte $40   ; 
- - - - - - 0x0092A5 02:B295: 30        .byte $30   ; <0>
- - - - - - 0x0092A6 02:B296: 20        .byte $20   ; 
- - - - - - 0x0092A7 02:B297: 10        .byte $10   ; 
- - - - - - 0x0092A8 02:B298: 10        .byte $10   ; 
- - - - - - 0x0092A9 02:B299: 00        .byte $00   ; 
- - - - - - 0x0092AA 02:B29A: 40        .byte $40   ; 
- - - - - - 0x0092AB 02:B29B: 40        .byte $40   ; 
- - - - - - 0x0092AC 02:B29C: 40        .byte $40   ; 
- - - - - - 0x0092AD 02:B29D: 40        .byte $40   ; 
- - - - - - 0x0092AE 02:B29E: 40        .byte $40   ; 
- - - - - - 0x0092AF 02:B29F: 40        .byte $40   ; 
- - - - - - 0x0092B0 02:B2A0: 40        .byte $40   ; 
- - - - - - 0x0092B1 02:B2A1: 60        .byte $60   ; 
- - - - - - 0x0092B2 02:B2A2: 60        .byte $60   ; 
- - - - - - 0x0092B3 02:B2A3: 70        .byte $70   ; <p>
- - - - - - 0x0092B4 02:B2A4: 80        .byte $80   ; 
- - - - - - 0x0092B5 02:B2A5: A0        .byte $A0   ; 
- - - - - - 0x0092B6 02:B2A6: C0        .byte $C0   ; 
- - - - - - 0x0092B7 02:B2A7: F0        .byte $F0   ; 
- - - - - - 0x0092B8 02:B2A8: B0        .byte $B0   ; 
- - - - - - 0x0092B9 02:B2A9: 80        .byte $80   ; 
- D 1 - - - 0x0092BA 02:B2AA: F0        .byte $F0   ; 
- D 1 - - - 0x0092BB 02:B2AB: F0        .byte $F0   ; 
- - - - - - 0x0092BC 02:B2AC: A0        .byte $A0   ; 
- D 1 - - - 0x0092BD 02:B2AD: 80        .byte $80   ; 
- D 1 - - - 0x0092BE 02:B2AE: F0        .byte $F0   ; 
- - - - - - 0x0092BF 02:B2AF: F0        .byte $F0   ; 
- D 1 - - - 0x0092C0 02:B2B0: A0        .byte $A0   ; 
- - - - - - 0x0092C1 02:B2B1: 80        .byte $80   ; 
- D 1 - - - 0x0092C2 02:B2B2: 70        .byte $70   ; <p>
- D 1 - - - 0x0092C3 02:B2B3: 70        .byte $70   ; <p>
- - - - - - 0x0092C4 02:B2B4: 60        .byte $60   ; 
- D 1 - - - 0x0092C5 02:B2B5: 60        .byte $60   ; 
- D 1 - - - 0x0092C6 02:B2B6: 50        .byte $50   ; <P>
- - - - - - 0x0092C7 02:B2B7: 50        .byte $50   ; <P>
- D 1 - - - 0x0092C8 02:B2B8: 40        .byte $40   ; 
- - - - - - 0x0092C9 02:B2B9: 20        .byte $20   ; 
tbl_B2BA:
- - - - - - 0x0092CA 02:B2BA: 00        .byte $00   ; 
- - - - - - 0x0092CB 02:B2BB: 00        .byte $00   ; 
- - - - - - 0x0092CC 02:B2BC: 00        .byte $00   ; 
- - - - - - 0x0092CD 02:B2BD: 00        .byte $00   ; 
- - - - - - 0x0092CE 02:B2BE: 00        .byte $00   ; 
- - - - - - 0x0092CF 02:B2BF: 00        .byte $00   ; 
- - - - - - 0x0092D0 02:B2C0: 00        .byte $00   ; 
- - - - - - 0x0092D1 02:B2C1: 00        .byte $00   ; 
- - - - - - 0x0092D2 02:B2C2: 00        .byte $00   ; 
- - - - - - 0x0092D3 02:B2C3: 00        .byte $00   ; 
- - - - - - 0x0092D4 02:B2C4: 00        .byte $00   ; 
- - - - - - 0x0092D5 02:B2C5: 00        .byte $00   ; 
- - - - - - 0x0092D6 02:B2C6: 00        .byte $00   ; 
- - - - - - 0x0092D7 02:B2C7: 00        .byte $00   ; 
- - - - - - 0x0092D8 02:B2C8: 00        .byte $00   ; 
- - - - - - 0x0092D9 02:B2C9: 00        .byte $00   ; 
- - - - - - 0x0092DA 02:B2CA: 00        .byte $00   ; 
- - - - - - 0x0092DB 02:B2CB: 00        .byte $00   ; 
- - - - - - 0x0092DC 02:B2CC: 00        .byte $00   ; 
- - - - - - 0x0092DD 02:B2CD: 00        .byte $00   ; 
- - - - - - 0x0092DE 02:B2CE: 00        .byte $00   ; 
- - - - - - 0x0092DF 02:B2CF: 00        .byte $00   ; 
- - - - - - 0x0092E0 02:B2D0: 00        .byte $00   ; 
- - - - - - 0x0092E1 02:B2D1: 00        .byte $00   ; 
- - - - - - 0x0092E2 02:B2D2: 01        .byte $01   ; 
- - - - - - 0x0092E3 02:B2D3: 01        .byte $01   ; 
- - - - - - 0x0092E4 02:B2D4: 01        .byte $01   ; 
- - - - - - 0x0092E5 02:B2D5: 01        .byte $01   ; 
- - - - - - 0x0092E6 02:B2D6: 01        .byte $01   ; 
- - - - - - 0x0092E7 02:B2D7: 01        .byte $01   ; 
- - - - - - 0x0092E8 02:B2D8: 01        .byte $01   ; 
- - - - - - 0x0092E9 02:B2D9: 01        .byte $01   ; 
- - - - - - 0x0092EA 02:B2DA: 00        .byte $00   ; 
- - - - - - 0x0092EB 02:B2DB: 00        .byte $00   ; 
- - - - - - 0x0092EC 02:B2DC: 00        .byte $00   ; 
- - - - - - 0x0092ED 02:B2DD: 00        .byte $00   ; 
- - - - - - 0x0092EE 02:B2DE: 01        .byte $01   ; 
- - - - - - 0x0092EF 02:B2DF: 01        .byte $01   ; 
- - - - - - 0x0092F0 02:B2E0: 01        .byte $01   ; 
- - - - - - 0x0092F1 02:B2E1: 01        .byte $01   ; 
- - - - - - 0x0092F2 02:B2E2: 01        .byte $01   ; 
- - - - - - 0x0092F3 02:B2E3: 01        .byte $01   ; 
- - - - - - 0x0092F4 02:B2E4: 01        .byte $01   ; 
- - - - - - 0x0092F5 02:B2E5: 01        .byte $01   ; 
- - - - - - 0x0092F6 02:B2E6: 02        .byte $02   ; 
- - - - - - 0x0092F7 02:B2E7: 02        .byte $02   ; 
- - - - - - 0x0092F8 02:B2E8: 02        .byte $02   ; 
- - - - - - 0x0092F9 02:B2E9: 02        .byte $02   ; 
- - - - - - 0x0092FA 02:B2EA: 00        .byte $00   ; 
- - - - - - 0x0092FB 02:B2EB: 00        .byte $00   ; 
- - - - - - 0x0092FC 02:B2EC: 00        .byte $00   ; 
- - - - - - 0x0092FD 02:B2ED: 01        .byte $01   ; 
- - - - - - 0x0092FE 02:B2EE: 01        .byte $01   ; 
- - - - - - 0x0092FF 02:B2EF: 01        .byte $01   ; 
- - - - - - 0x009300 02:B2F0: 01        .byte $01   ; 
- - - - - - 0x009301 02:B2F1: 01        .byte $01   ; 
- - - - - - 0x009302 02:B2F2: 02        .byte $02   ; 
- - - - - - 0x009303 02:B2F3: 02        .byte $02   ; 
- - - - - - 0x009304 02:B2F4: 02        .byte $02   ; 
- - - - - - 0x009305 02:B2F5: 02        .byte $02   ; 
- - - - - - 0x009306 02:B2F6: 02        .byte $02   ; 
- - - - - - 0x009307 02:B2F7: 03        .byte $03   ; 
- - - - - - 0x009308 02:B2F8: 03        .byte $03   ; 
- - - - - - 0x009309 02:B2F9: 03        .byte $03   ; 
- - - - - - 0x00930A 02:B2FA: 00        .byte $00   ; 
- - - - - - 0x00930B 02:B2FB: 00        .byte $00   ; 
- - - - - - 0x00930C 02:B2FC: 01        .byte $01   ; 
- - - - - - 0x00930D 02:B2FD: 01        .byte $01   ; 
- - - - - - 0x00930E 02:B2FE: 01        .byte $01   ; 
- - - - - - 0x00930F 02:B2FF: 01        .byte $01   ; 
- - - - - - 0x009310 02:B300: 02        .byte $02   ; 
- - - - - - 0x009311 02:B301: 02        .byte $02   ; 
- - - - - - 0x009312 02:B302: 02        .byte $02   ; 
- - - - - - 0x009313 02:B303: 02        .byte $02   ; 
- - - - - - 0x009314 02:B304: 03        .byte $03   ; 
- - - - - - 0x009315 02:B305: 03        .byte $03   ; 
- - - - - - 0x009316 02:B306: 03        .byte $03   ; 
- - - - - - 0x009317 02:B307: 03        .byte $03   ; 
- - - - - - 0x009318 02:B308: 04        .byte $04   ; 
- D 1 - - - 0x009319 02:B309: 04        .byte $04   ; 
- - - - - - 0x00931A 02:B30A: 00        .byte $00   ; 
- - - - - - 0x00931B 02:B30B: 00        .byte $00   ; 
- - - - - - 0x00931C 02:B30C: 01        .byte $01   ; 
- - - - - - 0x00931D 02:B30D: 01        .byte $01   ; 
- - - - - - 0x00931E 02:B30E: 01        .byte $01   ; 
- - - - - - 0x00931F 02:B30F: 02        .byte $02   ; 
- - - - - - 0x009320 02:B310: 02        .byte $02   ; 
- - - - - - 0x009321 02:B311: 02        .byte $02   ; 
- - - - - - 0x009322 02:B312: 03        .byte $03   ; 
- - - - - - 0x009323 02:B313: 03        .byte $03   ; 
- - - - - - 0x009324 02:B314: 03        .byte $03   ; 
- - - - - - 0x009325 02:B315: 04        .byte $04   ; 
- - - - - - 0x009326 02:B316: 04        .byte $04   ; 
- - - - - - 0x009327 02:B317: 04        .byte $04   ; 
- - - - - - 0x009328 02:B318: 05        .byte $05   ; 
- D 1 - - - 0x009329 02:B319: 05        .byte $05   ; 
- - - - - - 0x00932A 02:B31A: 00        .byte $00   ; 
- - - - - - 0x00932B 02:B31B: 00        .byte $00   ; 
- - - - - - 0x00932C 02:B31C: 01        .byte $01   ; 
- - - - - - 0x00932D 02:B31D: 01        .byte $01   ; 
- - - - - - 0x00932E 02:B31E: 02        .byte $02   ; 
- - - - - - 0x00932F 02:B31F: 02        .byte $02   ; 
- - - - - - 0x009330 02:B320: 02        .byte $02   ; 
- - - - - - 0x009331 02:B321: 03        .byte $03   ; 
- - - - - - 0x009332 02:B322: 03        .byte $03   ; 
- - - - - - 0x009333 02:B323: 04        .byte $04   ; 
- - - - - - 0x009334 02:B324: 04        .byte $04   ; 
- - - - - - 0x009335 02:B325: 04        .byte $04   ; 
- - - - - - 0x009336 02:B326: 05        .byte $05   ; 
- - - - - - 0x009337 02:B327: 05        .byte $05   ; 
- - - - - - 0x009338 02:B328: 06        .byte $06   ; 
- D 1 - - - 0x009339 02:B329: 06        .byte $06   ; 
- - - - - - 0x00933A 02:B32A: 00        .byte $00   ; 
- - - - - - 0x00933B 02:B32B: 00        .byte $00   ; 
- - - - - - 0x00933C 02:B32C: 01        .byte $01   ; 
- - - - - - 0x00933D 02:B32D: 01        .byte $01   ; 
- - - - - - 0x00933E 02:B32E: 02        .byte $02   ; 
- - - - - - 0x00933F 02:B32F: 02        .byte $02   ; 
- - - - - - 0x009340 02:B330: 03        .byte $03   ; 
- - - - - - 0x009341 02:B331: 03        .byte $03   ; 
- - - - - - 0x009342 02:B332: 04        .byte $04   ; 
- - - - - - 0x009343 02:B333: 04        .byte $04   ; 
- - - - - - 0x009344 02:B334: 05        .byte $05   ; 
- - - - - - 0x009345 02:B335: 05        .byte $05   ; 
- - - - - - 0x009346 02:B336: 06        .byte $06   ; 
- - - - - - 0x009347 02:B337: 06        .byte $06   ; 
- - - - - - 0x009348 02:B338: 07        .byte $07   ; 
- D 1 - - - 0x009349 02:B339: 07        .byte $07   ; 
- - - - - - 0x00934A 02:B33A: 00        .byte $00   ; 
- - - - - - 0x00934B 02:B33B: 01        .byte $01   ; 
- - - - - - 0x00934C 02:B33C: 01        .byte $01   ; 
- - - - - - 0x00934D 02:B33D: 02        .byte $02   ; 
- - - - - - 0x00934E 02:B33E: 02        .byte $02   ; 
- - - - - - 0x00934F 02:B33F: 03        .byte $03   ; 
- - - - - - 0x009350 02:B340: 03        .byte $03   ; 
- - - - - - 0x009351 02:B341: 04        .byte $04   ; 
- - - - - - 0x009352 02:B342: 04        .byte $04   ; 
- - - - - - 0x009353 02:B343: 05        .byte $05   ; 
- - - - - - 0x009354 02:B344: 05        .byte $05   ; 
- - - - - - 0x009355 02:B345: 06        .byte $06   ; 
- - - - - - 0x009356 02:B346: 06        .byte $06   ; 
- - - - - - 0x009357 02:B347: 07        .byte $07   ; 
- - - - - - 0x009358 02:B348: 07        .byte $07   ; 
- D 1 - - - 0x009359 02:B349: 08        .byte $08   ; 
- - - - - - 0x00935A 02:B34A: 00        .byte $00   ; 
- - - - - - 0x00935B 02:B34B: 01        .byte $01   ; 
- - - - - - 0x00935C 02:B34C: 01        .byte $01   ; 
- - - - - - 0x00935D 02:B34D: 02        .byte $02   ; 
- - - - - - 0x00935E 02:B34E: 02        .byte $02   ; 
- - - - - - 0x00935F 02:B34F: 03        .byte $03   ; 
- - - - - - 0x009360 02:B350: 04        .byte $04   ; 
- - - - - - 0x009361 02:B351: 04        .byte $04   ; 
- - - - - - 0x009362 02:B352: 05        .byte $05   ; 
- - - - - - 0x009363 02:B353: 05        .byte $05   ; 
- - - - - - 0x009364 02:B354: 06        .byte $06   ; 
- - - - - - 0x009365 02:B355: 07        .byte $07   ; 
- - - - - - 0x009366 02:B356: 07        .byte $07   ; 
- - - - - - 0x009367 02:B357: 08        .byte $08   ; 
- - - - - - 0x009368 02:B358: 08        .byte $08   ; 
- - - - - - 0x009369 02:B359: 09        .byte $09   ; 
- - - - - - 0x00936A 02:B35A: 00        .byte $00   ; 
- - - - - - 0x00936B 02:B35B: 01        .byte $01   ; 
- - - - - - 0x00936C 02:B35C: 01        .byte $01   ; 
- - - - - - 0x00936D 02:B35D: 02        .byte $02   ; 
- - - - - - 0x00936E 02:B35E: 03        .byte $03   ; 
- - - - - - 0x00936F 02:B35F: 03        .byte $03   ; 
- - - - - - 0x009370 02:B360: 04        .byte $04   ; 
- - - - - - 0x009371 02:B361: 05        .byte $05   ; 
- - - - - - 0x009372 02:B362: 05        .byte $05   ; 
- - - - - - 0x009373 02:B363: 06        .byte $06   ; 
- - - - - - 0x009374 02:B364: 07        .byte $07   ; 
- - - - - - 0x009375 02:B365: 07        .byte $07   ; 
- - - - - - 0x009376 02:B366: 08        .byte $08   ; 
- - - - - - 0x009377 02:B367: 09        .byte $09   ; 
- - - - - - 0x009378 02:B368: 09        .byte $09   ; 
- D 1 - - - 0x009379 02:B369: 0A        .byte $0A   ; 
- - - - - - 0x00937A 02:B36A: 00        .byte $00   ; 
- - - - - - 0x00937B 02:B36B: 01        .byte $01   ; 
- - - - - - 0x00937C 02:B36C: 01        .byte $01   ; 
- - - - - - 0x00937D 02:B36D: 02        .byte $02   ; 
- - - - - - 0x00937E 02:B36E: 03        .byte $03   ; 
- - - - - - 0x00937F 02:B36F: 04        .byte $04   ; 
- - - - - - 0x009380 02:B370: 04        .byte $04   ; 
- - - - - - 0x009381 02:B371: 05        .byte $05   ; 
- - - - - - 0x009382 02:B372: 06        .byte $06   ; 
- - - - - - 0x009383 02:B373: 07        .byte $07   ; 
- - - - - - 0x009384 02:B374: 07        .byte $07   ; 
- - - - - - 0x009385 02:B375: 08        .byte $08   ; 
- - - - - - 0x009386 02:B376: 09        .byte $09   ; 
- - - - - - 0x009387 02:B377: 0A        .byte $0A   ; 
- - - - - - 0x009388 02:B378: 0A        .byte $0A   ; 
- - - - - - 0x009389 02:B379: 0B        .byte $0B   ; 
- - - - - - 0x00938A 02:B37A: 00        .byte $00   ; 
- - - - - - 0x00938B 02:B37B: 01        .byte $01   ; 
- - - - - - 0x00938C 02:B37C: 02        .byte $02   ; 
- - - - - - 0x00938D 02:B37D: 02        .byte $02   ; 
- - - - - - 0x00938E 02:B37E: 03        .byte $03   ; 
- - - - - - 0x00938F 02:B37F: 04        .byte $04   ; 
- - - - - - 0x009390 02:B380: 05        .byte $05   ; 
- - - - - - 0x009391 02:B381: 06        .byte $06   ; 
- - - - - - 0x009392 02:B382: 06        .byte $06   ; 
- - - - - - 0x009393 02:B383: 07        .byte $07   ; 
- - - - - - 0x009394 02:B384: 08        .byte $08   ; 
- - - - - - 0x009395 02:B385: 09        .byte $09   ; 
- - - - - - 0x009396 02:B386: 0A        .byte $0A   ; 
- - - - - - 0x009397 02:B387: 0A        .byte $0A   ; 
- - - - - - 0x009398 02:B388: 0B        .byte $0B   ; 
- - - - - - 0x009399 02:B389: 0C        .byte $0C   ; 
- - - - - - 0x00939A 02:B38A: 00        .byte $00   ; 
- - - - - - 0x00939B 02:B38B: 01        .byte $01   ; 
- - - - - - 0x00939C 02:B38C: 02        .byte $02   ; 
- - - - - - 0x00939D 02:B38D: 03        .byte $03   ; 
- - - - - - 0x00939E 02:B38E: 03        .byte $03   ; 
- - - - - - 0x00939F 02:B38F: 04        .byte $04   ; 
- - - - - - 0x0093A0 02:B390: 05        .byte $05   ; 
- - - - - - 0x0093A1 02:B391: 06        .byte $06   ; 
- - - - - - 0x0093A2 02:B392: 07        .byte $07   ; 
- - - - - - 0x0093A3 02:B393: 08        .byte $08   ; 
- - - - - - 0x0093A4 02:B394: 09        .byte $09   ; 
- - - - - - 0x0093A5 02:B395: 0A        .byte $0A   ; 
- - - - - - 0x0093A6 02:B396: 0A        .byte $0A   ; 
- - - - - - 0x0093A7 02:B397: 0B        .byte $0B   ; 
- - - - - - 0x0093A8 02:B398: 0C        .byte $0C   ; 
- - - - - - 0x0093A9 02:B399: 0D        .byte $0D   ; 
- - - - - - 0x0093AA 02:B39A: 00        .byte $00   ; 
- - - - - - 0x0093AB 02:B39B: 01        .byte $01   ; 
- - - - - - 0x0093AC 02:B39C: 02        .byte $02   ; 
- - - - - - 0x0093AD 02:B39D: 03        .byte $03   ; 
- - - - - - 0x0093AE 02:B39E: 04        .byte $04   ; 
- - - - - - 0x0093AF 02:B39F: 05        .byte $05   ; 
- - - - - - 0x0093B0 02:B3A0: 06        .byte $06   ; 
- - - - - - 0x0093B1 02:B3A1: 07        .byte $07   ; 
- - - - - - 0x0093B2 02:B3A2: 07        .byte $07   ; 
- - - - - - 0x0093B3 02:B3A3: 08        .byte $08   ; 
- - - - - - 0x0093B4 02:B3A4: 09        .byte $09   ; 
- - - - - - 0x0093B5 02:B3A5: 0A        .byte $0A   ; 
- - - - - - 0x0093B6 02:B3A6: 0B        .byte $0B   ; 
- - - - - - 0x0093B7 02:B3A7: 0C        .byte $0C   ; 
- - - - - - 0x0093B8 02:B3A8: 0D        .byte $0D   ; 
- - - - - - 0x0093B9 02:B3A9: 0E        .byte $0E   ; 
- - - - - - 0x0093BA 02:B3AA: 00        .byte $00   ; 
- - - - - - 0x0093BB 02:B3AB: 01        .byte $01   ; 
- - - - - - 0x0093BC 02:B3AC: 02        .byte $02   ; 
- - - - - - 0x0093BD 02:B3AD: 03        .byte $03   ; 
- - - - - - 0x0093BE 02:B3AE: 04        .byte $04   ; 
- - - - - - 0x0093BF 02:B3AF: 05        .byte $05   ; 
- - - - - - 0x0093C0 02:B3B0: 06        .byte $06   ; 
- - - - - - 0x0093C1 02:B3B1: 07        .byte $07   ; 
- - - - - - 0x0093C2 02:B3B2: 08        .byte $08   ; 
- - - - - - 0x0093C3 02:B3B3: 09        .byte $09   ; 
- - - - - - 0x0093C4 02:B3B4: 0A        .byte $0A   ; 
- - - - - - 0x0093C5 02:B3B5: 0B        .byte $0B   ; 
- - - - - - 0x0093C6 02:B3B6: 0C        .byte $0C   ; 
- - - - - - 0x0093C7 02:B3B7: 0D        .byte $0D   ; 
- - - - - - 0x0093C8 02:B3B8: 0E        .byte $0E   ; 
- D 1 - - - 0x0093C9 02:B3B9: 0F        .byte $0F   ; 
- - - - - - 0x0093CA 02:B3BA: 87        .byte $87   ; 
- - - - - - 0x0093CB 02:B3BB: 00        .byte $00   ; 
- - - - - - 0x0093CC 02:B3BC: FF        .byte $FF   ; 
- - - - - - 0x0093CD 02:B3BD: 60        .byte $60   ; 
- - - - - - 0x0093CE 02:B3BE: 10        .byte $10   ; 
- - - - - - 0x0093CF 02:B3BF: 00        .byte $00   ; 
- - - - - - 0x0093D0 02:B3C0: 71        .byte $71   ; <q>
- - - - - - 0x0093D1 02:B3C1: 80        .byte $80   ; 
- - - - - - 0x0093D2 02:B3C2: 60        .byte $60   ; 
- - - - - - 0x0093D3 02:B3C3: F0        .byte $F0   ; 
- - - - - - 0x0093D4 02:B3C4: 00        .byte $00   ; 
- - - - - - 0x0093D5 02:B3C5: 44        .byte $44   ; <D>
- - - - - - 0x0093D6 02:B3C6: 00        .byte $00   ; 
- - - - - - 0x0093D7 02:B3C7: 61        .byte $61   ; <a>
- - - - - - 0x0093D8 02:B3C8: F0        .byte $F0   ; 
- - - - - - 0x0093D9 02:B3C9: 00        .byte $00   ; 
- - - - - - 0x0093DA 02:B3CA: 89        .byte $89   ; 
- - - - - - 0x0093DB 02:B3CB: 00        .byte $00   ; 
- - - - - - 0x0093DC 02:B3CC: FF        .byte $FF   ; 
- - - - - - 0x0093DD 02:B3CD: 60        .byte $60   ; 
- - - - - - 0x0093DE 02:B3CE: 10        .byte $10   ; 
- - - - - - 0x0093DF 02:B3CF: 00        .byte $00   ; 
- - - - - - 0x0093E0 02:B3D0: 80        .byte $80   ; 
- - - - - - 0x0093E1 02:B3D1: 00        .byte $00   ; 
- - - - - - 0x0093E2 02:B3D2: 60        .byte $60   ; 
- - - - - - 0x0093E3 02:B3D3: F0        .byte $F0   ; 
- - - - - - 0x0093E4 02:B3D4: 00        .byte $00   ; 
- - - - - - 0x0093E5 02:B3D5: 45        .byte $45   ; <E>
- - - - - - 0x0093E6 02:B3D6: 00        .byte $00   ; 
- - - - - - 0x0093E7 02:B3D7: FF        .byte $FF   ; 
- - - - - - 0x0093E8 02:B3D8: 60        .byte $60   ; 
- - - - - - 0x0093E9 02:B3D9: 10        .byte $10   ; 
- - - - - - 0x0093EA 02:B3DA: 00        .byte $00   ; 
- - - - - - 0x0093EB 02:B3DB: 82        .byte $82   ; 
- - - - - - 0x0093EC 02:B3DC: 00        .byte $00   ; 
- - - - - - 0x0093ED 02:B3DD: 60        .byte $60   ; 
- - - - - - 0x0093EE 02:B3DE: F0        .byte $F0   ; 
- - - - - - 0x0093EF 02:B3DF: 00        .byte $00   ; 
- - - - - - 0x0093F0 02:B3E0: 7E        .byte $7E   ; 
- - - - - - 0x0093F1 02:B3E1: 00        .byte $00   ; 
- - - - - - 0x0093F2 02:B3E2: 61        .byte $61   ; <a>
- - - - - - 0x0093F3 02:B3E3: F0        .byte $F0   ; 
- - - - - - 0x0093F4 02:B3E4: 00        .byte $00   ; 
- - - - - - 0x0093F5 02:B3E5: 85        .byte $85   ; 
- - - - - - 0x0093F6 02:B3E6: 00        .byte $00   ; 
- - - - - - 0x0093F7 02:B3E7: FF        .byte $FF   ; 
- - - - - - 0x0093F8 02:B3E8: 60        .byte $60   ; 
- - - - - - 0x0093F9 02:B3E9: 80        .byte $80   ; 
- - - - - - 0x0093FA 02:B3EA: 00        .byte $00   ; 
- - - - - - 0x0093FB 02:B3EB: 8B        .byte $8B   ; 
- - - - - - 0x0093FC 02:B3EC: 00        .byte $00   ; 
- - - - - - 0x0093FD 02:B3ED: 61        .byte $61   ; <a>
- - - - - - 0x0093FE 02:B3EE: 80        .byte $80   ; 
- - - - - - 0x0093FF 02:B3EF: 00        .byte $00   ; 
- - - - - - 0x009400 02:B3F0: 84        .byte $84   ; 
- - - - - - 0x009401 02:B3F1: 00        .byte $00   ; 
- - - - - - 0x009402 02:B3F2: 42        .byte $42   ; <B>
- - - - - - 0x009403 02:B3F3: 10        .byte $10   ; 
- - - - - - 0x009404 02:B3F4: 4B        .byte $4B   ; <K>
- - - - - - 0x009405 02:B3F5: 01        .byte $01   ; 
- - - - - - 0x009406 02:B3F6: 00        .byte $00   ; 
- - - - - - 0x009407 02:B3F7: 43        .byte $43   ; <C>
- - - - - - 0x009408 02:B3F8: 20        .byte $20   ; 
- - - - - - 0x009409 02:B3F9: 4B        .byte $4B   ; <K>
- - - - - - 0x00940A 02:B3FA: 02        .byte $02   ; 
- - - - - - 0x00940B 02:B3FB: 00        .byte $00   ; 
- - - - - - 0x00940C 02:B3FC: 63        .byte $63   ; <c>
- - - - - - 0x00940D 02:B3FD: 60        .byte $60   ; 
- - - - - - 0x00940E 02:B3FE: 00        .byte $00   ; 
- - - - - - 0x00940F 02:B3FF: 47        .byte $47   ; <G>

.org $9400
tbl_select_characters_dialog:
- - - - - - 0x009410 02:9400: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009412 02:9402: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x009414 02:9404: FD 9A     .word $9AFD ; $BAFD
- D 0 - - - 0x009416 02:9406: 11 9B     .word $9B11 ; $BB11
- - - - - - 0x009418 02:9408: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x00941A 02:940A: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00941C 02:940C: 25 9B     .word $9B25 ; $BB25
- D 0 - - - 0x00941E 02:940E: 39 9B     .word $9B39 ; $BB39
- - - - - - 0x009420 02:9410: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009422 02:9412: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x009424 02:9414: 4D 9B     .word $9B4D ; $BB4D
- D 0 - - - 0x009426 02:9416: 61 9B     .word $9B61 ; $BB61
- D 0 - - - 0x009428 02:9418: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00942A 02:941A: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x00942C 02:941C: 89 9B     .word $9B89 ; $BB89
- D 0 - - - 0x00942E 02:941E: 9D 9B     .word $9B9D ; $BB9D
- - - - - - 0x009430 02:9420: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x009432 02:9422: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x009434 02:9424: D9 9B     .word $9BD9 ; $BBD9
- D 0 - - - 0x009436 02:9426: ED 9B     .word $9BED ; $BBED
- - - - - - 0x009438 02:9428: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x00943A 02:942A: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x00943C 02:942C: 29 9C     .word $9C29 ; $BC29
- D 0 - - - 0x00943E 02:942E: 3D 9C     .word $9C3D ; $BC3D
- - - - - - 0x009440 02:9430: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009442 02:9432: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x009444 02:9434: 51 9C     .word $9C51 ; $BC51
- D 0 - - - 0x009446 02:9436: 65 9C     .word $9C65 ; $BC65
- - - - - - 0x009448 02:9438: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x00944A 02:943A: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x00944C 02:943C: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00944E 02:943E: 79 9C     .word $9C79 ; $BC79
- - - - - - 0x009450 02:9440: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x009452 02:9442: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x009454 02:9444: 8D 9C     .word $9C8D ; $BC8D
- D 0 - - - 0x009456 02:9446: A1 9C     .word $9CA1 ; $BCA1
- - - - - - 0x009458 02:9448: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x00945A 02:944A: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x00945C 02:944C: B5 9C     .word $9CB5 ; $BCB5
- D 0 - - - 0x00945E 02:944E: C9 9C     .word $9CC9 ; $BCC9
- - - - - - 0x009460 02:9450: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x009462 02:9452: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x009464 02:9454: DD 9C     .word $9CDD ; $BCDD
- D 0 - - - 0x009466 02:9456: F1 9C     .word $9CF1 ; $BCF1
- - - - - - 0x009468 02:9458: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x00946A 02:945A: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x00946C 02:945C: 05 9D     .word $9D05 ; $BD05
- D 0 - - - 0x00946E 02:945E: 19 9D     .word $9D19 ; $BD19

- D 0 - - - 0x009470 02:9460: 2D        .byte $2D   ; 
- D 0 - - - 0x009471 02:9461: 9D        .byte $9D   ; 
- D 0 - - - 0x009472 02:9462: 41        .byte $41   ; <A>
- D 0 - - - 0x009473 02:9463: 9D        .byte $9D   ; 
- D 0 - - - 0x009474 02:9464: 55        .byte $55   ; <U>
- D 0 - - - 0x009475 02:9465: 9D        .byte $9D   ; 
- D 0 - - - 0x009476 02:9466: 69        .byte $69   ; <i>
- D 0 - - - 0x009477 02:9467: 9D        .byte $9D   ; 
- D 0 - - - 0x009478 02:9468: 7D        .byte $7D   ; 
- D 0 - - - 0x009479 02:9469: 9D        .byte $9D   ; 
- D 0 - - - 0x00947A 02:946A: 91        .byte $91   ; 
- D 0 - - - 0x00947B 02:946B: 9D        .byte $9D   ; 
- D 0 - - - 0x00947C 02:946C: A5        .byte $A5   ; 
- D 0 - - - 0x00947D 02:946D: 9D        .byte $9D   ; 
- D 0 - - - 0x00947E 02:946E: B9        .byte $B9   ; 
- D 0 - - - 0x00947F 02:946F: 9D        .byte $9D   ; 
- D 0 - - - 0x009480 02:9470: E9        .byte $E9   ; 
- D 0 - - - 0x009481 02:9471: 9A        .byte $9A   ; 
- D 0 - - - 0x009482 02:9472: CD        .byte $CD   ; 
- D 0 - - - 0x009483 02:9473: 9D        .byte $9D   ; 
- D 0 - - - 0x009484 02:9474: E1        .byte $E1   ; 
- D 0 - - - 0x009485 02:9475: 9D        .byte $9D   ; 
- D 0 - - - 0x009486 02:9476: F5        .byte $F5   ; 
- D 0 - - - 0x009487 02:9477: 9D        .byte $9D   ; 

- D 0 - - - 0x009488 02:9478: 09        .byte $09   ; 
- D 0 - - - 0x009489 02:9479: 9E        .byte $9E   ; 
- D 0 - - - 0x00948A 02:947A: 1D        .byte $1D   ; 
- D 0 - - - 0x00948B 02:947B: 9E        .byte $9E   ; 
- D 0 - - - 0x00948C 02:947C: 31        .byte $31   ; <1>
- D 0 - - - 0x00948D 02:947D: 9E        .byte $9E   ; 
- D 0 - - - 0x00948E 02:947E: 45        .byte $45   ; <E>
- D 0 - - - 0x00948F 02:947F: 9E        .byte $9E   ; 
- D 0 - - - 0x009490 02:9480: 59        .byte $59   ; <Y>
- D 0 - - - 0x009491 02:9481: 9E        .byte $9E   ; 
- D 0 - - - 0x009492 02:9482: 6D        .byte $6D   ; <m>
- D 0 - - - 0x009493 02:9483: 9E        .byte $9E   ; 
- D 0 - - - 0x009494 02:9484: 81        .byte $81   ; 
- D 0 - - - 0x009495 02:9485: 9E        .byte $9E   ; 
- D 0 - - - 0x009496 02:9486: 95        .byte $95   ; 
- D 0 - - - 0x009497 02:9487: 9E        .byte $9E   ; 
- D 0 - - - 0x009498 02:9488: E9        .byte $E9   ; 
- D 0 - - - 0x009499 02:9489: 9A        .byte $9A   ; 
- D 0 - - - 0x00949A 02:948A: A9        .byte $A9   ; 
- D 0 - - - 0x00949B 02:948B: 9E        .byte $9E   ; 
- D 0 - - - 0x00949C 02:948C: BD        .byte $BD   ; 
- D 0 - - - 0x00949D 02:948D: 9E        .byte $9E   ; 
- D 0 - - - 0x00949E 02:948E: D1        .byte $D1   ; 
- D 0 - - - 0x00949F 02:948F: 9E        .byte $9E   ; 

- D 0 - - - 0x0094A0 02:9490: E7 99     .word $99E7

- D 0 - - - 0x0094A2 02:9492: EB 96     .word $96EB
- D 0 - - - 0x0094A4 02:9494: 05 97     .word $9705
- D 0 - - - 0x0094A6 02:9496: 19 97     .word $9719
- D 0 - - - 0x0094A8 02:9498: 33 97     .word $9733
- D 0 - - - 0x0094AA 02:949A: 3B 97     .word $973B
- D 0 - - - 0x0094AC 02:949C: 55 97     .word $9755
- D 0 - - - 0x0094AE 02:949E: 63 97     .word $9763
- D 0 - - - 0x0094B0 02:94A0: 77 97     .word $9777
- D 0 - - - 0x0094B2 02:94A2: 8B 97     .word $978B
- D 0 - - - 0x0094B4 02:94A4: F9 97     .word $97F9
- D 0 - - - 0x0094B6 02:94A6: 07 98     .word $9807
- D 0 - - - 0x0094B8 02:94A8: 15 98     .word $9815
- D 0 - - - 0x0094BA 02:94AA: 23 98     .word $9823
- D 0 - - - 0x0094BC 02:94AC: 03 97     .word $9703
- D 0 - - - 0x0094BE 02:94AE: 03 97     .word $9703
- - - - - - 0x0094C0 02:94B0: 03 97     .word $9703
- - - - - - 0x0094C2 02:94B2: 03 97     .word $9703
- D 0 - - - 0x0094C4 02:94B4: 03 97     .word $9703
- D 0 - - - 0x0094C6 02:94B6: 03 97     .word $9703
- - - - - - 0x0094C8 02:94B8: 03 97     .word $9703
- D 0 - - - 0x0094CA 02:94BA: 3D 98     .word $983D
- D 0 - - - 0x0094CC 02:94BC: 44 98     .word $9844
- D 0 - - - 0x0094CE 02:94BE: 03 97     .word $9703
- - - - - - 0x0094D0 02:94C0: 03 97     .word $9703
- - - - - - 0x0094D2 02:94C2: 03 97     .word $9703
- D 0 - - - 0x0094D4 02:94C4: 51 98     .word $9851
- D 0 - - - 0x0094D6 02:94C6: 03 97     .word $9703
- - - - - - 0x0094D8 02:94C8: 03 97     .word $9703
- D 0 - - - 0x0094DA 02:94CA: 5E 98     .word $985E
- D 0 - - - 0x0094DC 02:94CC: 65 98     .word $9865
- D 0 - - - 0x0094DE 02:94CE: 03 97     .word $9703
- - - - - - 0x0094E0 02:94D0: 03 97     .word $9703
- - - - - - 0x0094E2 02:94D2: 03 97     .word $9703
- D 0 - - - 0x0094E4 02:94D4: 03 97     .word $9703
- D 0 - - - 0x0094E6 02:94D6: 72 98     .word $9872
- - - - - - 0x0094E8 02:94D8: 03 97     .word $9703
- - - - - - 0x0094EA 02:94DA: 03 97     .word $9703
- - - - - - 0x0094EC 02:94DC: 03 97     .word $9703
- D 0 - - - 0x0094EE 02:94DE: 7F 98     .word $987F
- D 0 - - - 0x0094F0 02:94E0: 86 98     .word $9886
- D 0 - - - 0x0094F2 02:94E2: 8D 98     .word $988D
- - - - - - 0x0094F4 02:94E4: 03 97     .word $9703
- - - - - - 0x0094F6 02:94E6: 03 97     .word $9703
- - - - - - 0x0094F8 02:94E8: 03 97     .word $9703
- D 0 - - - 0x0094FA 02:94EA: 94 98     .word $9894
- D 0 - - - 0x0094FC 02:94EC: 9B 98     .word $989B
- D 0 - - - 0x0094FE 02:94EE: A8 98     .word $98A8
- D 0 - - - 0x009500 02:94F0: C1 98     .word $98C1
- D 0 - - - 0x009502 02:94F2: D4 98     .word $98D4
- D 0 - - - 0x009504 02:94F4: E1 98     .word $98E1
- D 0 - - - 0x009506 02:94F6: EE 98     .word $98EE
- D 0 - - - 0x009508 02:94F8: FB 98     .word $98FB
- D 0 - - - 0x00950A 02:94FA: 20 99     .word $9920
- D 0 - - - 0x00950C 02:94FC: 2D 99     .word $992D
- D 0 - - - 0x00950E 02:94FE: 4C 99     .word $994C
- D 0 - - - 0x009510 02:9500: 65 99     .word $9965
- - - - - - 0x009512 02:9502: 03 97     .word $9703
- - - - - - 0x009514 02:9504: 7E 99     .word $997E
- - - - - - 0x009516 02:9506: 03 97     .word $9703
- - - - - - 0x009518 02:9508: 03 97     .word $9703
- D 0 - - - 0x00951A 02:950A: 85 99     .word $9985
- - - - - - 0x00951C 02:950C: 03 97     .word $9703
- D 0 - - - 0x00951E 02:950E: 8C 99     .word $998C
- D 0 - - - 0x009520 02:9510: 9F 99     .word $999F
- D 0 - - - 0x009522 02:9512: B8 99     .word $99B8
- D 0 - - - 0x009524 02:9514: C5 99     .word $99C5
- D 0 - - - 0x009526 02:9516: CC 99     .word $99CC
- D 0 - - - 0x009528 02:9518: D9 99     .word $99D9
- - - - - - 0x00952A 02:951A: 03 97     .word $9703
- - - - - - 0x00952C 02:951C: 03 97     .word $9703
- D 0 - - - 0x00952E 02:951E: E0 99     .word $99E0
- - - - - - 0x009530 02:9520: 03 97     .word $9703
- - - - - - 0x009532 02:9522: 03 97     .word $9703

- D 0 - - - 0x009534 02:9524: 63 9A     .word $9A63
- - - - - - 0x009536 02:9526: 67 9A     .word $9A67
- D 0 - - - 0x009538 02:9528: 6B 9A     .word $9A6B
- D 0 - - - 0x00953A 02:952A: 71 9A     .word $9A71
- D 0 - - - 0x00953C 02:952C: 72 9A     .word $9A72
- D 0 - - - 0x00953E 02:952E: 77 9A     .word $9A77
- D 0 - - - 0x009540 02:9530: 79 9A     .word $9A79
- D 0 - - - 0x009542 02:9532: 7C 9A     .word $9A7C
- D 0 - - - 0x009544 02:9534: 7F 9A     .word $9A7F
- D 0 - - - 0x009546 02:9536: 82 9A     .word $9A82
- - - - - - 0x009548 02:9538: 83 9A     .word $9A83
- - - - - - 0x00954A 02:953A: 84 9A     .word $9A84
- - - - - - 0x00954C 02:953C: 85 9A     .word $9A85
- D 0 - - - 0x00954E 02:953E: 86 9A     .word $9A86
- - - - - - 0x009550 02:9540: 89 9A     .word $9A89
- - - - - - 0x009552 02:9542: 8A 9A     .word $9A8A
- D 0 - - - 0x009554 02:9544: 8B 9A     .word $9A8B
- - - - - - 0x009556 02:9546: 91 9A     .word $9A91
- - - - - - 0x009558 02:9548: 94 9A     .word $9A94
- - - - - - 0x00955A 02:954A: 97 9A     .word $9A97
- - - - - - 0x00955C 02:954C: 99 9A     .word $9A99
- - - - - - 0x00955E 02:954E: 9B 9A     .word $9A9B
- - - - - - 0x009560 02:9550: A2 9A     .word $9AA2
- - - - - - 0x009562 02:9552: A3 9A     .word $9AA3
- D 0 - - - 0x009564 02:9554: A5 9A     .word $9AA5
- - - - - - 0x009566 02:9556: A7 9A     .word $9AA7
- D 0 - - - 0x009568 02:9558: A8 9A     .word $9AA8
- - - - - - 0x00956A 02:955A: A9 9A     .word $9AA9
- - - - - - 0x00956C 02:955C: AA 9A     .word $9AAA
- - - - - - 0x00956E 02:955E: AC 9A     .word $9AAC
- - - - - - 0x009570 02:9560: AD 9A     .word $9AAD
- - - - - - 0x009572 02:9562: AE 9A     .word $9AAE
- - - - - - 0x009574 02:9564: AF 9A     .word $9AAF
- - - - - - 0x009576 02:9566: B0 9A     .word $9AB0
- - - - - - 0x009578 02:9568: B2 9A     .word $9AB2
- D 0 - - - 0x00957A 02:956A: B4 9A     .word $9AB4
- D 0 - - - 0x00957C 02:956C: B6 9A     .word $9AB6
- - - - - - 0x00957E 02:956E: B8 9A     .word $9AB8
- D 0 - - - 0x009580 02:9570: B9 9A     .word $9AB9
- D 0 - - - 0x009582 02:9572: BB 9A     .word $9ABB
- - - - - - 0x009584 02:9574: BE 9A     .word $9ABE
- D 0 - - - 0x009586 02:9576: C0 9A     .word $9AC0
- - - - - - 0x009588 02:9578: C7 9A     .word $9AC7
- D 0 - - - 0x00958A 02:957A: CA 9A     .word $9ACA
- - - - - - 0x00958C 02:957C: CE 9A     .word $9ACE
- D 0 - - - 0x00958E 02:957E: D1 9A     .word $9AD1
- - - - - - 0x009590 02:9580: D5 9A     .word $9AD5
- D 0 - - - 0x009592 02:9582: D7 9A     .word $9AD7
- - - - - - 0x009594 02:9584: D9 9A     .word $9AD9
- - - - - - 0x009596 02:9586: DA 9A     .word $9ADA
- - - - - - 0x009598 02:9588: DB 9A     .word $9ADB
- - - - - - 0x00959A 02:958A: DC 9A     .word $9ADC
- - - - - - 0x00959C 02:958C: DD 9A     .word $9ADD
- - - - - - 0x00959E 02:958E: DE 9A     .word $9ADE
- - - - - - 0x0095A0 02:9590: DF 9A     .word $9ADF
- - - - - - 0x0095A2 02:9592: E1 9A     .word $9AE1
- - - - - - 0x0095A4 02:9594: E2 9A     .word $9AE2
- - - - - - 0x0095A6 02:9596: E3 9A     .word $9AE3
- - - - - - 0x0095A8 02:9598: E4 9A     .word $9AE4
- D 0 - - - 0x0095AA 02:959A: E5 9A     .word $9AE5
- - - - - - 0x0095AC 02:959C: E7 9A     .word $9AE7
- D 0 - - - 0x0095AE 02:959E: E8 9A     .word $9AE8

- D 0 - - - 0x0095B0 02:95A0: 08        .byte $08   ; 
- D 0 - - - 0x0095B1 02:95A1: 08        .byte $08   ; 
- D 0 - - - 0x0095B2 02:95A2: 08        .byte $08   ; 
- D 0 - - - 0x0095B3 02:95A3: 07        .byte $07   ; 
- D 0 - - - 0x0095B4 02:95A4: 07        .byte $07   ; 
- D 0 - - - 0x0095B5 02:95A5: 07        .byte $07   ; 
- D 0 - - - 0x0095B6 02:95A6: 06        .byte $06   ; 
- D 0 - - - 0x0095B7 02:95A7: 06        .byte $06   ; 
- D 0 - - - 0x0095B8 02:95A8: 06        .byte $06   ; 
- D 0 - - - 0x0095B9 02:95A9: 05        .byte $05   ; 
- D 0 - - - 0x0095BA 02:95AA: 05        .byte $05   ; 
- D 0 - - - 0x0095BB 02:95AB: 05        .byte $05   ; 
- D 0 - - - 0x0095BC 02:95AC: 04        .byte $04   ; 
- D 0 - - - 0x0095BD 02:95AD: 04        .byte $04   ; 
- D 0 - - - 0x0095BE 02:95AE: 04        .byte $04   ; 
- D 0 - - - 0x0095BF 02:95AF: 03        .byte $03   ; 
- D 0 - - - 0x0095C0 02:95B0: 03        .byte $03   ; 
- D 0 - - - 0x0095C1 02:95B1: 03        .byte $03   ; 
- D 0 - - - 0x0095C2 02:95B2: 02        .byte $02   ; 
- D 0 - - - 0x0095C3 02:95B3: 02        .byte $02   ; 
- D 0 - - - 0x0095C4 02:95B4: 02        .byte $02   ; 
- D 0 - - - 0x0095C5 02:95B5: 01        .byte $01   ; 
- D 0 - - - 0x0095C6 02:95B6: 01        .byte $01   ; 
- D 0 - - - 0x0095C7 02:95B7: 01        .byte $01   ; 
- D 0 - - - 0x0095C8 02:95B8: 00        .byte $00   ; 
- D 0 - - - 0x0095C9 02:95B9: 00        .byte $00   ; 
- D 0 - - - 0x0095CA 02:95BA: 00        .byte $00   ; 
- D 0 - - - 0x0095CB 02:95BB: 07        .byte $07   ; 
- D 0 - - - 0x0095CC 02:95BC: 06        .byte $06   ; 
- D 0 - - - 0x0095CD 02:95BD: 05        .byte $05   ; 
- D 0 - - - 0x0095CE 02:95BE: 04        .byte $04   ; 
- D 0 - - - 0x0095CF 02:95BF: 03        .byte $03   ; 

- D 0 - - - 0x0095D0 02:95C0: 5F        .byte $5F   ; 
- D 0 - - - 0x0095D1 02:95C1: 67        .byte $67   ; <g>
- D 0 - - - 0x0095D2 02:95C2: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095D3 02:95C3: 77        .byte $77   ; <w>
- D 0 - - - 0x0095D4 02:95C4: 7F        .byte $7F   ; 
- D 0 - - - 0x0095D5 02:95C5: 87        .byte $87   ; 
- D 0 - - - 0x0095D6 02:95C6: 8F        .byte $8F   ; 
- D 0 - - - 0x0095D7 02:95C7: 97        .byte $97   ; 
- D 0 - - - 0x0095D8 02:95C8: 9F        .byte $9F   ; 
- D 0 - - - 0x0095D9 02:95C9: A7        .byte $A7   ; 
- D 0 - - - 0x0095DA 02:95CA: AF        .byte $AF   ; 
- D 0 - - - 0x0095DB 02:95CB: B7        .byte $B7   ; 
- D 0 - - - 0x0095DC 02:95CC: BF        .byte $BF   ; 
- D 0 - - - 0x0095DD 02:95CD: 67        .byte $67   ; <g>
- D 0 - - - 0x0095DE 02:95CE: 5F        .byte $5F   ; 
- D 0 - - - 0x0095DF 02:95CF: 67        .byte $67   ; <g>
- D 0 - - - 0x0095E0 02:95D0: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095E1 02:95D1: 77        .byte $77   ; <w>
- D 0 - - - 0x0095E2 02:95D2: 7F        .byte $7F   ; 
- D 0 - - - 0x0095E3 02:95D3: 87        .byte $87   ; 
- D 0 - - - 0x0095E4 02:95D4: 8F        .byte $8F   ; 
- D 0 - - - 0x0095E5 02:95D5: 97        .byte $97   ; 
- D 0 - - - 0x0095E6 02:95D6: 9F        .byte $9F   ; 
- D 0 - - - 0x0095E7 02:95D7: A7        .byte $A7   ; 
- D 0 - - - 0x0095E8 02:95D8: AF        .byte $AF   ; 
- D 0 - - - 0x0095E9 02:95D9: B7        .byte $B7   ; 
- D 0 - - - 0x0095EA 02:95DA: BF        .byte $BF   ; 
- D 0 - - - 0x0095EB 02:95DB: 67        .byte $67   ; <g>
- D 0 - - - 0x0095EC 02:95DC: 5F        .byte $5F   ; 
- D 0 - - - 0x0095ED 02:95DD: 67        .byte $67   ; <g>
- D 0 - - - 0x0095EE 02:95DE: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095EF 02:95DF: 77        .byte $77   ; <w>

; see docs (Bestiary)
tbl_enemy_score:
- D 0 - - - 0x0095F0 02:95E0: 00        .byte $00   ; 0x00
- D 0 - - - 0x0095F1 02:95E1: 20        .byte $20   ; 0x01 - Cat with the gun
- D 0 - - - 0x0095F2 02:95E2: 10        .byte $10   ; 
- D 0 - - - 0x0095F3 02:95E3: 20        .byte $20   ; 
- D 0 - - - 0x0095F4 02:95E4: 10        .byte $10   ; 
- D 0 - - - 0x0095F5 02:95E5: 10        .byte $10   ; 
- D 0 - - - 0x0095F6 02:95E6: 10        .byte $10   ; 
- D - - - - 0x0095F7 02:95E7: 00        .byte $00   ; 
- D 0 - - - 0x0095F8 02:95E8: 20        .byte $20   ; 
- D 0 - - - 0x0095F9 02:95E9: 40        .byte $40   ; 
- D - - - - 0x0095FA 02:95EA: 20        .byte $20   ; 
- D 0 - - - 0x0095FB 02:95EB: 50        .byte $50   ; 
- D - - - - 0x0095FC 02:95EC: 00        .byte $00   ; 
- D - - - - 0x0095FD 02:95ED: 00        .byte $00   ; 
- D 0 - - - 0x0095FE 02:95EE: 10        .byte $10   ; 
- D 0 - - - 0x0095FF 02:95EF: 05        .byte $05   ; 
- D 0 - - - 0x009600 02:95F0: 30        .byte $30   ; 0x10 - Nun
- D 0 - - - 0x009601 02:95F1: 03        .byte $03   ; 
- D 0 - - - 0x009602 02:95F2: 10        .byte $10   ; 
- D 0 - - - 0x009603 02:95F3: 20        .byte $20   ; 
- D 0 - - - 0x009604 02:95F4: 20        .byte $20   ; 
- D - - - - 0x009605 02:95F5: 00        .byte $00   ; 
- D 0 - - - 0x009606 02:95F6: 05        .byte $05   ; 
- D 0 - - - 0x009607 02:95F7: 03        .byte $03   ; 
- D 0 - - - 0x009608 02:95F8: 20        .byte $20   ; 
- D 0 - - - 0x009609 02:95F9: 40        .byte $40   ; 
- D 0 - - - 0x00960A 02:95FA: 10        .byte $10   ; 
- D 0 - - - 0x00960B 02:95FB: 20        .byte $20   ; 
- D 0 - - - 0x00960C 02:95FC: 20        .byte $20   ; 
- D 0 - - - 0x00960D 02:95FD: 20        .byte $20   ; 
- D - - - - 0x00960E 02:95FE: 00        .byte $00   ; 
- D 0 - - - 0x00960F 02:95FF: 30        .byte $30   ; 
- D 0 - - - 0x009610 02:9600: 20        .byte $20   ; 0x20 - Shooter with bazooka
- D 0 - - - 0x009611 02:9601: 20        .byte $20   ; 
- D 0 - - - 0x009612 02:9602: 30        .byte $30   ;
- D 0 - - - 0x009613 02:9603: 50        .byte $50   ;
- D 0 - - - 0x009614 02:9604: 40        .byte $40   ; 
- D 0 - - - 0x009615 02:9605: 10        .byte $10   ; 
- D 0 - - - 0x009616 02:9606: 60        .byte $60   ; 
- D 0 - - - 0x009617 02:9607: 30        .byte $30   ;
- D - - - - 0x009618 02:9608: F0        .byte $F0   ; 
- D - - - - 0x009619 02:9609: 00        .byte $00   ; 
- D - - - - 0x00961A 02:960A: F0        .byte $F0   ; 
- D 0 - - - 0x00961B 02:960B: 00        .byte $00   ; 
- D - - - - 0x00961C 02:960C: F0        .byte $F0   ; 
- D - - - - 0x00961D 02:960D: 00        .byte $00   ; 
- D - - - - 0x00961E 02:960E: F0        .byte $F0   ; 
- D 0 - - - 0x00961F 02:960F: 00        .byte $00   ; 
- D - - - - 0x009620 02:9610: 00        .byte $00   ; 0x30 - Wall
- D - - - - 0x009621 02:9611: 00        .byte $00   ; 
- D - - - - 0x009622 02:9612: 00        .byte $00   ; 
- D - - - - 0x009623 02:9613: 00        .byte $00   ; 
- D 0 - - - 0x009624 02:9614: 10        .byte $10   ; 
- D 0 - - - 0x009625 02:9615: 30        .byte $30   ; 
- D 0 - - - 0x009626 02:9616: 20        .byte $20   ; 
- D 0 - - - 0x009627 02:9617: 50        .byte $50   ; 
- D 0 - - - 0x009628 02:9618: 30        .byte $30   ; 
- D - - - - 0x009629 02:9619: 00        .byte $00   ; 0x39 - Sensor

tbl_water_gap_level4:
- - - - - - 0x00962A 02:961A: 92 96     .word $9692 ; level 4, map 1
- D 0 - - - 0x00962C 02:961C: 92 96     .word $9692
- - - - - - 0x00962E 02:961E: 92 96     .word $9692
- D 0 - - - 0x009630 02:9620: 92 96     .word $9692
- - - - - - 0x009632 02:9622: 92 96     .word $9692
- D 0 - - - 0x009634 02:9624: 92 96     .word $9692
- D 0 - - - 0x009636 02:9626: 92 96     .word $9692
- D 0 - - - 0x009638 02:9628: 93 96     .word $9693
- D 0 - - - 0x00963A 02:962A: 95 96     .word $9695 ; level 4, map 2
- D 0 - - - 0x00963C 02:962C: 92 96     .word $9692
- D 0 - - - 0x00963E 02:962E: 92 96     .word $9692
- D 0 - - - 0x009640 02:9630: 92 96     .word $9692
- D 0 - - - 0x009642 02:9632: 98 96     .word $9698
- - - - - - 0x009644 02:9634: 92 96     .word $9692
- D 0 - - - 0x009646 02:9636: 92 96     .word $9692
- D 0 - - - 0x009648 02:9638: 9A 96     .word $969A
- D 0 - - - 0x00964A 02:963A: 9C 96     .word $969C
- - - - - - 0x00964C 02:963C: 92 96     .word $9692
- - - - - - 0x00964E 02:963E: 92 96     .word $9692
- - - - - - 0x009650 02:9640: 92 96     .word $9692
- - - - - - 0x009652 02:9642: 92 96     .word $9692
- D 0 - - - 0x009654 02:9644: 9F 96     .word $969F ; level 4, map 3
- D 0 - - - 0x009656 02:9646: 92 96     .word $9692
- - - - - - 0x009658 02:9648: 92 96     .word $9692
- - - - - - 0x00965A 02:964A: 92 96     .word $9692
- D 0 - - - 0x00965C 02:964C: A1 96     .word $96A1
- D 0 - - - 0x00965E 02:964E: A3 96     .word $96A3
- D 0 - - - 0x009660 02:9650: A5 96     .word $96A5
- D 0 - - - 0x009662 02:9652: 92 96     .word $9692
- D 0 - - - 0x009664 02:9654: 92 96     .word $9692
- D 0 - - - 0x009666 02:9656: 92 96     .word $9692
- D 0 - - - 0x009668 02:9658: A7 96     .word $96A7
- D 0 - - - 0x00966A 02:965A: A9 96     .word $96A9
- D 0 - - - 0x00966C 02:965C: AC 96     .word $96AC
- D 0 - - - 0x00966E 02:965E: B0 96     .word $96B0
- D 0 - - - 0x009670 02:9660: B3 96     .word $96B3
- D 0 - - - 0x009672 02:9662: B6 96     .word $96B6
- D 0 - - - 0x009674 02:9664: B9 96     .word $96B9 ; level 4, map 4
- D 0 - - - 0x009676 02:9666: BC 96     .word $96BC
- D 0 - - - 0x009678 02:9668: C1 96     .word $96C1
- D 0 - - - 0x00967A 02:966A: C4 96     .word $96C4
- D 0 - - - 0x00967C 02:966C: CA 96     .word $96CA
- D 0 - - - 0x00967E 02:966E: CE 96     .word $96CE
- - - - - - 0x009680 02:9670: 92 96     .word $9692
- D 0 - - - 0x009682 02:9672: D3 96     .word $96D3
- - - - - - 0x009684 02:9674: 92 96     .word $9692
- D 0 - - - 0x009686 02:9676: 92 96     .word $9692
- D 0 - - - 0x009688 02:9678: D5 96     .word $96D5
- - - - - - 0x00968A 02:967A: 92 96     .word $9692
- D 0 - - - 0x00968C 02:967C: D7 96     .word $96D7
- D 0 - - - 0x00968E 02:967E: DB 96     .word $96DB
- D 0 - - - 0x009690 02:9680: E0 96     .word $96E0
- D 0 - - - 0x009692 02:9682: E3 96     .word $96E3
- D 0 - - - 0x009694 02:9684: E5 96     .word $96E5
- D 0 - - - 0x009696 02:9686: E7 96     .word $96E7
- D 0 - - - 0x009698 02:9688: 92 96     .word $9692
- - - - - - 0x00969A 02:968A: 92 96     .word $9692
- D 0 - - - 0x00969C 02:968C: E9 96     .word $96E9
- - - - - - 0x00969E 02:968E: 92 96     .word $9692
- D 0 - - - 0x0096A0 02:9690: 92 96     .word $9692

loc_no_gap:
- D 0 - I - 0x0096A2 02:9692: FF        .byte $FF

- D 0 - I - 0x0096A3 02:9693: 01        .byte $01
- D 0 - I - 0x0096A4 02:9694: FF        .byte $FF

- D 0 - I - 0x0096A5 02:9695: 01        .byte $01, $02
- D 0 - I - 0x0096A7 02:9697: FF        .byte $FF

- D 0 - I - 0x0096A8 02:9698: 01        .byte $01
- - - - - - 0x0096A9 02:9699: FF        .byte $FF

- D 0 - I - 0x0096AA 02:969A: 00        .byte $00
- - - - - - 0x0096AB 02:969B: FF        .byte $FF

- D 0 - I - 0x0096AC 02:969C: 00        .byte $00, $02
- - - - - - 0x0096AE 02:969E: FF        .byte $FF

- D 0 - I - 0x0096AF 02:969F: 01        .byte $01
- - - - - - 0x0096B0 02:96A0: FF        .byte $FF

- D 0 - I - 0x0096B1 02:96A1: 00        .byte $00
- - - - - - 0x0096B2 02:96A2: FF        .byte $FF

- D 0 - I - 0x0096B3 02:96A3: 00        .byte $00
- D 0 - I - 0x0096B4 02:96A4: FF        .byte $FF

- D 0 - I - 0x0096B5 02:96A5: 02        .byte $02
- - - - - - 0x0096B6 02:96A6: FF        .byte $FF

- D 0 - I - 0x0096B7 02:96A7: 04        .byte $04
- D 0 - I - 0x0096B8 02:96A8: FF        .byte $FF

- D 0 - I - 0x0096B9 02:96A9: 02        .byte $02, $03
- D 0 - I - 0x0096BB 02:96AB: FF        .byte $FF

- D 0 - I - 0x0096BC 02:96AC: 01        .byte $01, $02, $05
- D 0 - I - 0x0096BF 02:96AF: FF        .byte $FF

- D 0 - I - 0x0096C0 02:96B0: 04        .byte $04, $05
- D 0 - I - 0x0096C2 02:96B2: FF        .byte $FF

- D 0 - I - 0x0096C3 02:96B3: 05        .byte $05, $06
- D 0 - I - 0x0096C5 02:96B5: FF        .byte $FF

- D 0 - I - 0x0096C6 02:96B6: 04        .byte $04, $05
- D 0 - I - 0x0096C8 02:96B8: FF        .byte $FF

- D 0 - I - 0x0096C9 02:96B9: 01        .byte $01, $02
- D 0 - I - 0x0096CB 02:96BB: FF        .byte $FF

- D 0 - I - 0x0096CC 02:96BC: 02        .byte $02, $03, $05, $06
- D 0 - I - 0x0096D0 02:96C0: FF        .byte $FF

- D 0 - I - 0x0096D1 02:96C1: 05        .byte $05, $07
- D 0 - I - 0x0096D3 02:96C3: FF        .byte $FF

- D 0 - I - 0x0096D4 02:96C4: 02        .byte $02, $03, $04, $07, $08
- D 0 - I - 0x0096D9 02:96C9: FF        .byte $FF

- D 0 - I - 0x0096DA 02:96CA: 03        .byte $03, $04, $05
- D 0 - I - 0x0096DD 02:96CD: FF        .byte $FF

- D 0 - I - 0x0096DE 02:96CE: 01        .byte $01, $02, $04, $05
- - - - - - 0x0096E2 02:96D2: FF        .byte $FF

- D 0 - I - 0x0096E3 02:96D3: 04        .byte $04
- D 0 - I - 0x0096E4 02:96D4: FF        .byte $FF

- D 0 - I - 0x0096E5 02:96D5: 00        .byte $00
- - - - - - 0x0096E6 02:96D6: FF        .byte $FF

- D 0 - I - 0x0096E7 02:96D7: 02        .byte $02, $04, $07
- D 0 - I - 0x0096EA 02:96DA: FF        .byte $FF

- D 0 - I - 0x0096EB 02:96DB: 01        .byte $01, $03, $04, $07
- D 0 - I - 0x0096EF 02:96DF: FF        .byte $FF

- D 0 - I - 0x0096F0 02:96E0: 02        .byte $02, $04
- D 0 - I - 0x0096F2 02:96E2: FF        .byte $FF

- D 0 - I - 0x0096F3 02:96E3: 01        .byte $01
- - - - - - 0x0096F4 02:96E4: FF        .byte $FF

- D 0 - I - 0x0096F5 02:96E5: 04        .byte $04
- D 0 - I - 0x0096F6 02:96E6: FF        .byte $FF

- D 0 - I - 0x0096F7 02:96E7: 01        .byte $01
- - - - - - 0x0096F8 02:96E8: FF        .byte $FF

- D 0 - I - 0x0096F9 02:96E9: 00        .byte $00
- D 0 - I - 0x0096FA 02:96EA: FF        .byte $FF

- D 0 - I - 0x0096FB 02:96EB: F0        .byte $F0, $01, $30, $00, $01, $00
- D 0 - I - 0x009701 02:96F1: 40        .byte $40, $02, $30, $01, $01, $00
- D 0 - I - 0x009707 02:96F7: F0        .byte $F0, $03, $30, $02, $01, $00
- D 0 - I - 0x00970D 02:96FD: 40        .byte $40, $50, $30, $03, $01, $00

- D 0 - I - 0x009713 02:9703: FF        .byte $FF, $FF

- D 0 - I - 0x009715 02:9705: 40        .byte $40, $02, $31, $00, $FF, $01   ; 
- D 0 - I - 0x00971B 02:970B: F0        .byte $F0, $03, $31, $01, $FF, $01   ; 
- D 0 - I - 0x009721 02:9711: F0        .byte $F0, $06, $31, $03, $FF, $01   ; 
- - - - - - 0x009727 02:9717: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009729 02:9719: 40        .byte $40, $01, $32, $00, $01, $02   ; 
- D 0 - I - 0x00972F 02:971F: F0        .byte $F0, $03, $32, $02, $01, $02   ; 
- D 0 - I - 0x009735 02:9725: F0        .byte $F0, $05, $32, $04, $01, $02   ; 
- D 0 - I - 0x00973B 02:972B: 40        .byte $40, $06, $32, $05, $01, $02   ; 
- - - - - - 0x009741 02:9731: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009743 02:9733: 00        .byte $00, $04, $36, $00, $01, $03   ; 
- - - - - - 0x009749 02:9739: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x00974B 02:973B: 00        .byte $00, $02, $37, $00, $FF, $04   ; 
- D 0 - I - 0x009751 02:9741: 20        .byte $20, $03, $37, $01, $FF, $04   ; 
- D 0 - I - 0x009757 02:9747: 00        .byte $00, $04, $37, $02, $FF, $04   ; 
- D 0 - I - 0x00975D 02:974D: 00        .byte $00, $08, $37, $04, $FF, $04   ; 
- - - - - - 0x009763 02:9753: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009765 02:9755: 00        .byte $00, $04, $38, $00, $01, $05   ; 
- D 0 - I - 0x00976B 02:975B: 00        .byte $00, $06, $38, $01, $01, $05   ; 
- - - - - - 0x009771 02:9761: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009773 02:9763: 00        .byte $00, $02, $39, $00, $FF, $06   ; 
- D 0 - I - 0x009779 02:9769: 00        .byte $00, $04, $39, $01, $FF, $06   ; 
- D 0 - I - 0x00977F 02:976F: 00        .byte $00, $06, $39, $02, $FF, $06   ; 
- - - - - - 0x009785 02:9775: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009787 02:9777: 20        .byte $20, $02, $39, $00, $01, $07   ; 
- D 0 - I - 0x00978D 02:977D: 00        .byte $00, $03, $39, $01, $01, $07   ; 
- D 0 - I - 0x009793 02:9783: 00        .byte $00, $05, $39, $02, $01, $07   ; 
- - - - - - 0x009799 02:9789: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x00979B 02:978B: 30        .byte $30, $02, $26, $00, $01, $08   ; 
- D 0 - I - 0x0097A1 02:9791: F0        .byte $F0, $02, $26, $01, $01, $08   ; 
- D 0 - I - 0x0097A7 02:9797: 90        .byte $90, $03, $26, $02, $01, $08   ; 
- D 0 - I - 0x0097AD 02:979D: E0        .byte $E0, $04, $24, $00, $01, $09   ; 
- D 0 - I - 0x0097B3 02:97A3: 30        .byte $30, $05, $24, $00, $01, $0A   ; 
- D 0 - I - 0x0097B9 02:97A9: A0        .byte $A0, $05, $24, $00, $01, $0B   ; 
- D 0 - I - 0x0097BF 02:97AF: 30        .byte $30, $06, $24, $00, $01, $0C   ; 
- D 0 - I - 0x0097C5 02:97B5: 20        .byte $20, $07, $26, $00, $01, $0D   ; 
- D 0 - I - 0x0097CB 02:97BB: F0        .byte $F0, $07, $26, $01, $01, $0D   ; 
- D 0 - I - 0x0097D1 02:97C1: 60        .byte $60, $09, $26, $02, $01, $0D   ; 
- D 0 - I - 0x0097D7 02:97C7: 90        .byte $90, $09, $24, $00, $01, $0E   ; 
- D 0 - I - 0x0097DD 02:97CD: E0        .byte $E0, $09, $24, $00, $01, $0F   ; 
- D 0 - I - 0x0097E3 02:97D3: B0        .byte $B0, $0A, $29, $00, $01, $10   ; 
- D 0 - I - 0x0097E9 02:97D9: 90        .byte $90, $0B, $29, $01, $01, $10   ; 
- D 0 - I - 0x0097EF 02:97DF: 30        .byte $30, $0C, $29, $02, $01, $10   ; 
- D 0 - I - 0x0097F5 02:97E5: D0        .byte $D0, $0C, $29, $03, $01, $10   ; 
- D 0 - I - 0x0097FB 02:97EB: E0        .byte $E0, $0D, $29, $04, $01, $10   ; 
- D 0 - I - 0x009801 02:97F1: F0        .byte $F0, $0E, $29, $05, $01, $10   ; 
- - - - - - 0x009807 02:97F7: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009809 02:97F9: C0        .byte $C0, $04, $2C, $00, $FF, $11   ; 
- - - - - - 0x00980F 02:97FF: 60        .byte $60, $06, $2C, $02, $FF, $11   ; 
- - - - - - 0x009815 02:9805: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009817 02:9807: C0        .byte $C0, $01, $2C, $00, $01, $12   ; 
- D 0 - I - 0x00981D 02:980D: 60        .byte $60, $03, $2C, $02, $01, $12   ; 
- - - - - - 0x009823 02:9813: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009825 02:9815: 60        .byte $60, $01, $2B, $01, $FF, $13   ; 
- D 0 - I - 0x00982B 02:981B: C0        .byte $C0, $06, $2B, $01, $FF, $14   ; 
- - - - - - 0x009831 02:9821: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x009833 02:9823: C0        .byte $C0, $00, $2D, $00, $01, $15   ; 
- D 0 - I - 0x009839 02:9829: C0        .byte $C0, $02, $2D, $02, $01, $15   ; 
- D 0 - I - 0x00983F 02:982F: C0        .byte $C0, $03, $2D, $03, $01, $15   ; 
- D 0 - I - 0x009845 02:9835: 60        .byte $60, $06, $2D, $06, $01, $15   ; 
- - - - - - 0x00984B 02:983B: FF        .byte $FF, $FF   ; 

- D 0 - I - 0x00984D 02:983D: F0        .byte $F0, $01, $3C, $00, $FF, $16   ; 
- - - - - - 0x009853 02:9843: FF        .byte $FF   ; 

- D 0 - I - 0x009854 02:9844: F0        .byte $F0   ; 
- D 0 - I - 0x009855 02:9845: 01        .byte $01   ; 
- D 0 - I - 0x009856 02:9846: 3D        .byte $3D   ; 
- D 0 - I - 0x009857 02:9847: 00        .byte $00   ; 
- D 0 - I - 0x009858 02:9848: FF        .byte $FF   ; 
- D 0 - I - 0x009859 02:9849: 17        .byte $17   ; 
- D 0 - I - 0x00985A 02:984A: F0        .byte $F0   ; 
- D 0 - I - 0x00985B 02:984B: 02        .byte $02   ; 
- D 0 - I - 0x00985C 02:984C: 3D        .byte $3D   ; 
- D 0 - I - 0x00985D 02:984D: 01        .byte $01   ; 
- D 0 - I - 0x00985E 02:984E: FF        .byte $FF   ; 
- D 0 - I - 0x00985F 02:984F: 17        .byte $17   ; 
- D 0 - I - 0x009860 02:9850: FF        .byte $FF   ; 

- D 0 - I - 0x009861 02:9851: 80        .byte $80   ; 
- D 0 - I - 0x009862 02:9852: 01        .byte $01   ; 
- D 0 - I - 0x009863 02:9853: 3D        .byte $3D   ; 
- D 0 - I - 0x009864 02:9854: 00        .byte $00   ; 
- D 0 - I - 0x009865 02:9855: FF        .byte $FF   ; 
- D 0 - I - 0x009866 02:9856: 18        .byte $18   ; 
- D 0 - I - 0x009867 02:9857: F0        .byte $F0   ; 
- D 0 - I - 0x009868 02:9858: 01        .byte $01   ; 
- D 0 - I - 0x009869 02:9859: 3D        .byte $3D   ; 
- D 0 - I - 0x00986A 02:985A: 01        .byte $01   ; 
- D 0 - I - 0x00986B 02:985B: FF        .byte $FF   ; 
- D 0 - I - 0x00986C 02:985C: 18        .byte $18   ; 
- D 0 - I - 0x00986D 02:985D: FF        .byte $FF   ; 

- D 0 - I - 0x00986E 02:985E: C0        .byte $C0   ; 
- D 0 - I - 0x00986F 02:985F: 00        .byte $00   ; 
- D 0 - I - 0x009870 02:9860: 3C        .byte $3C   ; 
- D 0 - I - 0x009871 02:9861: 00        .byte $00   ; 
- D 0 - I - 0x009872 02:9862: 01        .byte $01   ; 
- D 0 - I - 0x009873 02:9863: 19        .byte $19   ; 
- D 0 - I - 0x009874 02:9864: FF        .byte $FF   ; 

- D 0 - I - 0x009875 02:9865: C0        .byte $C0   ; 
- D 0 - I - 0x009876 02:9866: 00        .byte $00   ; 
- D 0 - I - 0x009877 02:9867: 3C        .byte $3C   ; 
- D 0 - I - 0x009878 02:9868: 00        .byte $00   ; 
- D 0 - I - 0x009879 02:9869: FF        .byte $FF   ; 
- D 0 - I - 0x00987A 02:986A: 1A        .byte $1A   ; 
- D 0 - I - 0x00987B 02:986B: F0        .byte $F0   ; 
- D 0 - I - 0x00987C 02:986C: 02        .byte $02   ; 
- D 0 - I - 0x00987D 02:986D: 3C        .byte $3C   ; 
- D 0 - I - 0x00987E 02:986E: 00        .byte $00   ; 
- D 0 - I - 0x00987F 02:986F: 01        .byte $01   ; 
- D 0 - I - 0x009880 02:9870: 1B        .byte $1B   ; 
- D 0 - I - 0x009881 02:9871: FF        .byte $FF   ; 

- D 0 - I - 0x009882 02:9872: 80        .byte $80   ; 
- D 0 - I - 0x009883 02:9873: 01        .byte $01   ; 
- D 0 - I - 0x009884 02:9874: 3D        .byte $3D   ; 
- D 0 - I - 0x009885 02:9875: 00        .byte $00   ; 
- D 0 - I - 0x009886 02:9876: 01        .byte $01   ; 
- D 0 - I - 0x009887 02:9877: 1C        .byte $1C   ; 
- D 0 - I - 0x009888 02:9878: F0        .byte $F0   ; 
- D 0 - I - 0x009889 02:9879: 01        .byte $01   ; 
- D 0 - I - 0x00988A 02:987A: 3D        .byte $3D   ; 
- D 0 - I - 0x00988B 02:987B: 01        .byte $01   ; 
- D 0 - I - 0x00988C 02:987C: 01        .byte $01   ; 
- D 0 - I - 0x00988D 02:987D: 1C        .byte $1C   ; 
- D 0 - I - 0x00988E 02:987E: FF        .byte $FF   ; 

- D 0 - I - 0x00988F 02:987F: C0        .byte $C0   ; 
- D 0 - I - 0x009890 02:9880: 00        .byte $00   ; 
- D 0 - I - 0x009891 02:9881: 3C        .byte $3C   ; 
- D 0 - I - 0x009892 02:9882: 00        .byte $00   ; 
- D 0 - I - 0x009893 02:9883: 01        .byte $01   ; 
- D 0 - I - 0x009894 02:9884: 1D        .byte $1D   ; 
- D 0 - I - 0x009895 02:9885: FF        .byte $FF   ; 

- D 0 - I - 0x009896 02:9886: C0        .byte $C0   ; 
- D 0 - I - 0x009897 02:9887: 00        .byte $00   ; 
- D 0 - I - 0x009898 02:9888: 3C        .byte $3C   ; 
- D 0 - I - 0x009899 02:9889: 00        .byte $00   ; 
- D 0 - I - 0x00989A 02:988A: 00        .byte $00   ; 
- D 0 - I - 0x00989B 02:988B: 1E        .byte $1E   ; 
- - - - - - 0x00989C 02:988C: FF        .byte $FF   ; 

- D 0 - I - 0x00989D 02:988D: F0        .byte $F0   ; 
- D 0 - I - 0x00989E 02:988E: 02        .byte $02   ; 
- D 0 - I - 0x00989F 02:988F: 3C        .byte $3C   ; 
- D 0 - I - 0x0098A0 02:9890: 00        .byte $00   ; 
- D 0 - I - 0x0098A1 02:9891: 01        .byte $01   ; 
- D 0 - I - 0x0098A2 02:9892: 1F        .byte $1F   ; 
- - - - - - 0x0098A3 02:9893: FF        .byte $FF   ; 

- D 0 - I - 0x0098A4 02:9894: F0        .byte $F0   ; 
- D 0 - I - 0x0098A5 02:9895: 04        .byte $04   ; 
- D 0 - I - 0x0098A6 02:9896: 3C        .byte $3C   ; 
- D 0 - I - 0x0098A7 02:9897: 00        .byte $00   ; 
- D 0 - I - 0x0098A8 02:9898: FF        .byte $FF   ; 
- D 0 - I - 0x0098A9 02:9899: 20        .byte $20   ; 
- - - - - - 0x0098AA 02:989A: FF        .byte $FF   ; 

- D 0 - I - 0x0098AB 02:989B: F0        .byte $F0   ; 
- D 0 - I - 0x0098AC 02:989C: 02        .byte $02   ; 
- - - - - - 0x0098AD 02:989D: 3D        .byte $3D   ; 
- - - - - - 0x0098AE 02:989E: 00        .byte $00   ; 
- - - - - - 0x0098AF 02:989F: 01        .byte $01   ; 
- - - - - - 0x0098B0 02:98A0: 21        .byte $21   ; 
- D 0 - I - 0x0098B1 02:98A1: F0        .byte $F0   ; 
- D 0 - I - 0x0098B2 02:98A2: 03        .byte $03   ; 
- D 0 - I - 0x0098B3 02:98A3: 3D        .byte $3D   ; 
- D 0 - I - 0x0098B4 02:98A4: 01        .byte $01   ; 
- D 0 - I - 0x0098B5 02:98A5: 01        .byte $01   ; 
- D 0 - I - 0x0098B6 02:98A6: 21        .byte $21   ; 
- - - - - - 0x0098B7 02:98A7: FF        .byte $FF   ; 

- D 0 - I - 0x0098B8 02:98A8: F8        .byte $F8   ; 
- D 0 - I - 0x0098B9 02:98A9: 01        .byte $01   ; 
- D 0 - I - 0x0098BA 02:98AA: 3D        .byte $3D   ; 
- D 0 - I - 0x0098BB 02:98AB: 00        .byte $00   ; 
- D 0 - I - 0x0098BC 02:98AC: FF        .byte $FF   ; 
- D 0 - I - 0x0098BD 02:98AD: 22        .byte $22   ; 
- D 0 - I - 0x0098BE 02:98AE: F8        .byte $F8   ; 
- D 0 - I - 0x0098BF 02:98AF: 02        .byte $02   ; 
- D 0 - I - 0x0098C0 02:98B0: 3D        .byte $3D   ; 
- D 0 - I - 0x0098C1 02:98B1: 01        .byte $01   ; 
- D 0 - I - 0x0098C2 02:98B2: FF        .byte $FF   ; 
- D 0 - I - 0x0098C3 02:98B3: 22        .byte $22   ; 
- D 0 - I - 0x0098C4 02:98B4: 80        .byte $80   ; 
- D 0 - I - 0x0098C5 02:98B5: 05        .byte $05   ; 
- D 0 - I - 0x0098C6 02:98B6: 3D        .byte $3D   ; 
- D 0 - I - 0x0098C7 02:98B7: 00        .byte $00   ; 
- D 0 - I - 0x0098C8 02:98B8: FF        .byte $FF   ; 
- D 0 - I - 0x0098C9 02:98B9: 23        .byte $23   ; 
- D 0 - I - 0x0098CA 02:98BA: F0        .byte $F0   ; 
- D 0 - I - 0x0098CB 02:98BB: 05        .byte $05   ; 
- D 0 - I - 0x0098CC 02:98BC: 3D        .byte $3D   ; 
- D 0 - I - 0x0098CD 02:98BD: 01        .byte $01   ; 
- D 0 - I - 0x0098CE 02:98BE: FF        .byte $FF   ; 
- D 0 - I - 0x0098CF 02:98BF: 23        .byte $23   ; 
- - - - - - 0x0098D0 02:98C0: FF        .byte $FF   ; 

- D 0 - I - 0x0098D1 02:98C1: 80        .byte $80   ; 
- D 0 - I - 0x0098D2 02:98C2: 04        .byte $04   ; 
- D 0 - I - 0x0098D3 02:98C3: 3D        .byte $3D   ; 
- D 0 - I - 0x0098D4 02:98C4: 00        .byte $00   ; 
- D 0 - I - 0x0098D5 02:98C5: 01        .byte $01   ; 
- D 0 - I - 0x0098D6 02:98C6: 24        .byte $24   ; 
- D 0 - I - 0x0098D7 02:98C7: F0        .byte $F0   ; 
- D 0 - I - 0x0098D8 02:98C8: 04        .byte $04   ; 
- D 0 - I - 0x0098D9 02:98C9: 3D        .byte $3D   ; 
- D 0 - I - 0x0098DA 02:98CA: 01        .byte $01   ; 
- D 0 - I - 0x0098DB 02:98CB: 01        .byte $01   ; 
- D 0 - I - 0x0098DC 02:98CC: 24        .byte $24   ; 
- D 0 - I - 0x0098DD 02:98CD: F0        .byte $F0   ; 
- D 0 - I - 0x0098DE 02:98CE: 05        .byte $05   ; 
- D 0 - I - 0x0098DF 02:98CF: 3C        .byte $3C   ; 
- D 0 - I - 0x0098E0 02:98D0: 00        .byte $00   ; 
- D 0 - I - 0x0098E1 02:98D1: 01        .byte $01   ; 
- D 0 - I - 0x0098E2 02:98D2: 25        .byte $25   ; 
- - - - - - 0x0098E3 02:98D3: FF        .byte $FF   ; 

- D 0 - I - 0x0098E4 02:98D4: F0        .byte $F0   ; 
- D 0 - I - 0x0098E5 02:98D5: 05        .byte $05   ; 
- D 0 - I - 0x0098E6 02:98D6: 3D        .byte $3D   ; 
- D 0 - I - 0x0098E7 02:98D7: 00        .byte $00   ; 
- D 0 - I - 0x0098E8 02:98D8: 01        .byte $01   ; 
- D 0 - I - 0x0098E9 02:98D9: 26        .byte $26   ; 
- D 0 - I - 0x0098EA 02:98DA: F0        .byte $F0   ; 
- D 0 - I - 0x0098EB 02:98DB: 06        .byte $06   ; 
- D 0 - I - 0x0098EC 02:98DC: 3D        .byte $3D   ; 
- D 0 - I - 0x0098ED 02:98DD: 01        .byte $01   ; 
- D 0 - I - 0x0098EE 02:98DE: 01        .byte $01   ; 
- D 0 - I - 0x0098EF 02:98DF: 26        .byte $26   ; 
- - - - - - 0x0098F0 02:98E0: FF        .byte $FF   ; 

- D 0 - I - 0x0098F1 02:98E1: F0        .byte $F0   ; 
- D 0 - I - 0x0098F2 02:98E2: 04        .byte $04   ; 
- D 0 - I - 0x0098F3 02:98E3: 3E        .byte $3E   ; 
- D 0 - I - 0x0098F4 02:98E4: 00        .byte $00   ; 
- D 0 - I - 0x0098F5 02:98E5: 01        .byte $01   ; 
- D 0 - I - 0x0098F6 02:98E6: 27        .byte $27   ; 
- D 0 - I - 0x0098F7 02:98E7: F0        .byte $F0   ; 
- D 0 - I - 0x0098F8 02:98E8: 05        .byte $05   ; 
- D 0 - I - 0x0098F9 02:98E9: 3E        .byte $3E   ; 
- D 0 - I - 0x0098FA 02:98EA: 02        .byte $02   ; 
- D 0 - I - 0x0098FB 02:98EB: 01        .byte $01   ; 
- D 0 - I - 0x0098FC 02:98EC: 27        .byte $27   ; 
- - - - - - 0x0098FD 02:98ED: FF        .byte $FF   ; 

- D 0 - I - 0x0098FE 02:98EE: F0        .byte $F0   ; 
- D 0 - I - 0x0098FF 02:98EF: 01        .byte $01   ; 
- - - - - - 0x009900 02:98F0: 3D        .byte $3D   ; 
- - - - - - 0x009901 02:98F1: 00        .byte $00   ; 
- - - - - - 0x009902 02:98F2: FF        .byte $FF   ; 
- - - - - - 0x009903 02:98F3: 28        .byte $28   ; 
- D 0 - I - 0x009904 02:98F4: F0        .byte $F0   ; 
- D 0 - I - 0x009905 02:98F5: 02        .byte $02   ; 
- D 0 - I - 0x009906 02:98F6: 3D        .byte $3D   ; 
- D 0 - I - 0x009907 02:98F7: 01        .byte $01   ; 
- D 0 - I - 0x009908 02:98F8: FF        .byte $FF   ; 
- D 0 - I - 0x009909 02:98F9: 28        .byte $28   ; 
- - - - - - 0x00990A 02:98FA: FF        .byte $FF   ; 

- D 0 - I - 0x00990B 02:98FB: F0        .byte $F0   ; 
- D 0 - I - 0x00990C 02:98FC: 02        .byte $02   ; 
- D 0 - I - 0x00990D 02:98FD: 3F        .byte $3F   ; 
- D 0 - I - 0x00990E 02:98FE: 00        .byte $00   ; 
- D 0 - I - 0x00990F 02:98FF: 01        .byte $01   ; 
- D 0 - I - 0x009910 02:9900: 29        .byte $29   ; 
- D 0 - I - 0x009911 02:9901: F0        .byte $F0   ; 
- D 0 - I - 0x009912 02:9902: 03        .byte $03   ; 
- D 0 - I - 0x009913 02:9903: 3F        .byte $3F   ; 
- D 0 - I - 0x009914 02:9904: 01        .byte $01   ; 
- D 0 - I - 0x009915 02:9905: 01        .byte $01   ; 
- D 0 - I - 0x009916 02:9906: 29        .byte $29   ; 
- D 0 - I - 0x009917 02:9907: 80        .byte $80   ; 
- D 0 - I - 0x009918 02:9908: 05        .byte $05   ; 
- D 0 - I - 0x009919 02:9909: 3F        .byte $3F   ; 
- D 0 - I - 0x00991A 02:990A: 03        .byte $03   ; 
- D 0 - I - 0x00991B 02:990B: 01        .byte $01   ; 
- D 0 - I - 0x00991C 02:990C: 29        .byte $29   ; 
- D 0 - I - 0x00991D 02:990D: F0        .byte $F0   ; 
- D 0 - I - 0x00991E 02:990E: 05        .byte $05   ; 
- D 0 - I - 0x00991F 02:990F: 3F        .byte $3F   ; 
- D 0 - I - 0x009920 02:9910: 04        .byte $04   ; 
- D 0 - I - 0x009921 02:9911: 01        .byte $01   ; 
- D 0 - I - 0x009922 02:9912: 29        .byte $29   ; 
- D 0 - I - 0x009923 02:9913: 80        .byte $80   ; 
- D 0 - I - 0x009924 02:9914: 06        .byte $06   ; 
- D 0 - I - 0x009925 02:9915: 3F        .byte $3F   ; 
- D 0 - I - 0x009926 02:9916: 05        .byte $05   ; 
- D 0 - I - 0x009927 02:9917: 01        .byte $01   ; 
- D 0 - I - 0x009928 02:9918: 29        .byte $29   ; 
- D 0 - I - 0x009929 02:9919: F0        .byte $F0   ; 
- D 0 - I - 0x00992A 02:991A: 06        .byte $06   ; 
- D 0 - I - 0x00992B 02:991B: 3F        .byte $3F   ; 
- D 0 - I - 0x00992C 02:991C: 06        .byte $06   ; 
- D 0 - I - 0x00992D 02:991D: 01        .byte $01   ; 
- D 0 - I - 0x00992E 02:991E: 29        .byte $29   ; 
- - - - - - 0x00992F 02:991F: FF        .byte $FF   ; 

- D 0 - I - 0x009930 02:9920: F0        .byte $F0   ; 
- D 0 - I - 0x009931 02:9921: 05        .byte $05   ; 
- D 0 - I - 0x009932 02:9922: 3E        .byte $3E   ; 
- D 0 - I - 0x009933 02:9923: 00        .byte $00   ; 
- D 0 - I - 0x009934 02:9924: FF        .byte $FF   ; 
- D 0 - I - 0x009935 02:9925: 2A        .byte $2A   ; 
- D 0 - I - 0x009936 02:9926: F0        .byte $F0   ; 
- D 0 - I - 0x009937 02:9927: 07        .byte $07   ; 
- D 0 - I - 0x009938 02:9928: 3E        .byte $3E   ; 
- D 0 - I - 0x009939 02:9929: 02        .byte $02   ; 
- D 0 - I - 0x00993A 02:992A: FF        .byte $FF   ; 
- D 0 - I - 0x00993B 02:992B: 2A        .byte $2A   ; 
- - - - - - 0x00993C 02:992C: FF        .byte $FF   ; 

- D 0 - I - 0x00993D 02:992D: F0        .byte $F0   ; 
- D 0 - I - 0x00993E 02:992E: 02        .byte $02   ; 
- D 0 - I - 0x00993F 02:992F: 40        .byte $40   ; 
- D 0 - I - 0x009940 02:9930: 00        .byte $00   ; 
- D 0 - I - 0x009941 02:9931: 01        .byte $01   ; 
- D 0 - I - 0x009942 02:9932: 2B        .byte $2B   ; 
- D 0 - I - 0x009943 02:9933: F0        .byte $F0   ; 
- D 0 - I - 0x009944 02:9934: 03        .byte $03   ; 
- D 0 - I - 0x009945 02:9935: 40        .byte $40   ; 
- D 0 - I - 0x009946 02:9936: 01        .byte $01   ; 
- D 0 - I - 0x009947 02:9937: 01        .byte $01   ; 
- D 0 - I - 0x009948 02:9938: 2B        .byte $2B   ; 
- D 0 - I - 0x009949 02:9939: F0        .byte $F0   ; 
- D 0 - I - 0x00994A 02:993A: 04        .byte $04   ; 
- D 0 - I - 0x00994B 02:993B: 40        .byte $40   ; 
- D 0 - I - 0x00994C 02:993C: 03        .byte $03   ; 
- D 0 - I - 0x00994D 02:993D: 01        .byte $01   ; 
- D 0 - I - 0x00994E 02:993E: 2B        .byte $2B   ; 
- D 0 - I - 0x00994F 02:993F: F0        .byte $F0   ; 
- D 0 - I - 0x009950 02:9940: 07        .byte $07   ; 
- D 0 - I - 0x009951 02:9941: 3E        .byte $3E   ; 
- D 0 - I - 0x009952 02:9942: 00        .byte $00   ; 
- D 0 - I - 0x009953 02:9943: 01        .byte $01   ; 
- D 0 - I - 0x009954 02:9944: 2C        .byte $2C   ; 
- D 0 - I - 0x009955 02:9945: F0        .byte $F0   ; 
- D 0 - I - 0x009956 02:9946: 08        .byte $08   ; 
- D 0 - I - 0x009957 02:9947: 3E        .byte $3E   ; 
- D 0 - I - 0x009958 02:9948: 02        .byte $02   ; 
- D 0 - I - 0x009959 02:9949: 01        .byte $01   ; 
- D 0 - I - 0x00995A 02:994A: 2C        .byte $2C   ; 
- - - - - - 0x00995B 02:994B: FF        .byte $FF   ; 

- D 0 - I - 0x00995C 02:994C: 80        .byte $80   ; 
- D 0 - I - 0x00995D 02:994D: 03        .byte $03   ; 
- - - - - - 0x00995E 02:994E: 41        .byte $41   ; <A>
- - - - - - 0x00995F 02:994F: 00        .byte $00   ; 
- - - - - - 0x009960 02:9950: FF        .byte $FF   ; 
- - - - - - 0x009961 02:9951: 2D        .byte $2D   ; 
- D 0 - I - 0x009962 02:9952: F0        .byte $F0   ; 
- D 0 - I - 0x009963 02:9953: 03        .byte $03   ; 
- D 0 - I - 0x009964 02:9954: 41        .byte $41   ; <A>
- D 0 - I - 0x009965 02:9955: 01        .byte $01   ; 
- D 0 - I - 0x009966 02:9956: FF        .byte $FF   ; 
- D 0 - I - 0x009967 02:9957: 2D        .byte $2D   ; 
- D 0 - I - 0x009968 02:9958: F0        .byte $F0   ; 
- D 0 - I - 0x009969 02:9959: 04        .byte $04   ; 
- D 0 - I - 0x00996A 02:995A: 41        .byte $41   ; <A>
- D 0 - I - 0x00996B 02:995B: 02        .byte $02   ; 
- D 0 - I - 0x00996C 02:995C: FF        .byte $FF   ; 
- D 0 - I - 0x00996D 02:995D: 2D        .byte $2D   ; 
- D 0 - I - 0x00996E 02:995E: F0        .byte $F0   ; 
- D 0 - I - 0x00996F 02:995F: 05        .byte $05   ; 
- D 0 - I - 0x009970 02:9960: 41        .byte $41   ; <A>
- D 0 - I - 0x009971 02:9961: 03        .byte $03   ; 
- D 0 - I - 0x009972 02:9962: FF        .byte $FF   ; 
- D 0 - I - 0x009973 02:9963: 2D        .byte $2D   ; 
- - - - - - 0x009974 02:9964: FF        .byte $FF   ; 

- D 0 - I - 0x009975 02:9965: F0        .byte $F0   ; 
- D 0 - I - 0x009976 02:9966: 01        .byte $01   ; 
- - - - - - 0x009977 02:9967: 3D        .byte $3D   ; 
- - - - - - 0x009978 02:9968: 00        .byte $00   ; 
- - - - - - 0x009979 02:9969: 01        .byte $01   ; 
- - - - - - 0x00997A 02:996A: 2E        .byte $2E   ; 
- D 0 - I - 0x00997B 02:996B: F0        .byte $F0   ; 
- D 0 - I - 0x00997C 02:996C: 02        .byte $02   ; 
- D 0 - I - 0x00997D 02:996D: 3D        .byte $3D   ; 
- D 0 - I - 0x00997E 02:996E: 01        .byte $01   ; 
- D 0 - I - 0x00997F 02:996F: 01        .byte $01   ; 
- D 0 - I - 0x009980 02:9970: 2E        .byte $2E   ; 
- D 0 - I - 0x009981 02:9971: F0        .byte $F0   ; 
- D 0 - I - 0x009982 02:9972: 04        .byte $04   ; 
- D 0 - I - 0x009983 02:9973: 3D        .byte $3D   ; 
- D 0 - I - 0x009984 02:9974: 00        .byte $00   ; 
- D 0 - I - 0x009985 02:9975: FF        .byte $FF   ; 
- D 0 - I - 0x009986 02:9976: 2F        .byte $2F   ; 
- D 0 - I - 0x009987 02:9977: F0        .byte $F0   ; 
- D 0 - I - 0x009988 02:9978: 05        .byte $05   ; 
- D 0 - I - 0x009989 02:9979: 3D        .byte $3D   ; 
- D 0 - I - 0x00998A 02:997A: 01        .byte $01   ; 
- D 0 - I - 0x00998B 02:997B: FF        .byte $FF   ; 
- D 0 - I - 0x00998C 02:997C: 2F        .byte $2F   ; 
- - - - - - 0x00998D 02:997D: FF        .byte $FF   ; 

- - - - - - 0x00998E 02:997E: F0        .byte $F0   ; 
- - - - - - 0x00998F 02:997F: 04        .byte $04   ; 
- - - - - - 0x009990 02:9980: 3C        .byte $3C   ; 
- - - - - - 0x009991 02:9981: 00        .byte $00   ; 
- - - - - - 0x009992 02:9982: FF        .byte $FF   ; 
- - - - - - 0x009993 02:9983: 30        .byte $30   ; <0>
- - - - - - 0x009994 02:9984: FF        .byte $FF   ; 

- D 0 - I - 0x009995 02:9985: C0        .byte $C0   ; 
- D 0 - I - 0x009996 02:9986: 00        .byte $00   ; 
- D 0 - I - 0x009997 02:9987: 3C        .byte $3C   ; 
- D 0 - I - 0x009998 02:9988: 00        .byte $00   ; 
- D 0 - I - 0x009999 02:9989: FF        .byte $FF   ; 
- D 0 - I - 0x00999A 02:998A: 31        .byte $31   ; <1>
- - - - - - 0x00999B 02:998B: FF        .byte $FF   ; 

- D 0 - I - 0x00999C 02:998C: F0        .byte $F0   ; 
- D 0 - I - 0x00999D 02:998D: 02        .byte $02   ; 
- D 0 - I - 0x00999E 02:998E: 3C        .byte $3C   ; 
- D 0 - I - 0x00999F 02:998F: 00        .byte $00   ; 
- D 0 - I - 0x0099A0 02:9990: FF        .byte $FF   ; 
- D 0 - I - 0x0099A1 02:9991: 32        .byte $32   ; <2>
- D 0 - I - 0x0099A2 02:9992: F0        .byte $F0   ; 
- D 0 - I - 0x0099A3 02:9993: 04        .byte $04   ; 
- D 0 - I - 0x0099A4 02:9994: 3C        .byte $3C   ; 
- D 0 - I - 0x0099A5 02:9995: 00        .byte $00   ; 
- D 0 - I - 0x0099A6 02:9996: 01        .byte $01   ; 
- D 0 - I - 0x0099A7 02:9997: 33        .byte $33   ; <3>
- D 0 - I - 0x0099A8 02:9998: F0        .byte $F0   ; 
- D 0 - I - 0x0099A9 02:9999: 07        .byte $07   ; 
- D 0 - I - 0x0099AA 02:999A: 3C        .byte $3C   ; 
- D 0 - I - 0x0099AB 02:999B: 00        .byte $00   ; 
- D 0 - I - 0x0099AC 02:999C: 01        .byte $01   ; 
- D 0 - I - 0x0099AD 02:999D: 34        .byte $34   ; <4>
- - - - - - 0x0099AE 02:999E: FF        .byte $FF   ; 

- D 0 - I - 0x0099AF 02:999F: C0        .byte $C0   ; 
- D 0 - I - 0x0099B0 02:99A0: 01        .byte $01   ; 
- - - - - - 0x0099B1 02:99A1: 3C        .byte $3C   ; 
- - - - - - 0x0099B2 02:99A2: 00        .byte $00   ; 
- - - - - - 0x0099B3 02:99A3: 01        .byte $01   ; 
- - - - - - 0x0099B4 02:99A4: 35        .byte $35   ; <5>
- D 0 - I - 0x0099B5 02:99A5: F0        .byte $F0   ; 
- D 0 - I - 0x0099B6 02:99A6: 03        .byte $03   ; 
- D 0 - I - 0x0099B7 02:99A7: 3D        .byte $3D   ; 
- D 0 - I - 0x0099B8 02:99A8: 00        .byte $00   ; 
- D 0 - I - 0x0099B9 02:99A9: FF        .byte $FF   ; 
- D 0 - I - 0x0099BA 02:99AA: 36        .byte $36   ; <6>
- D 0 - I - 0x0099BB 02:99AB: F0        .byte $F0   ; 
- D 0 - I - 0x0099BC 02:99AC: 04        .byte $04   ; 
- D 0 - I - 0x0099BD 02:99AD: 3D        .byte $3D   ; 
- D 0 - I - 0x0099BE 02:99AE: 01        .byte $01   ; 
- D 0 - I - 0x0099BF 02:99AF: FF        .byte $FF   ; 
- D 0 - I - 0x0099C0 02:99B0: 36        .byte $36   ; <6>
- D 0 - I - 0x0099C1 02:99B1: F0        .byte $F0   ; 
- D 0 - I - 0x0099C2 02:99B2: 07        .byte $07   ; 
- D 0 - I - 0x0099C3 02:99B3: 3C        .byte $3C   ; 
- D 0 - I - 0x0099C4 02:99B4: 00        .byte $00   ; 
- D 0 - I - 0x0099C5 02:99B5: FF        .byte $FF   ; 
- D 0 - I - 0x0099C6 02:99B6: 37        .byte $37   ; <7>
- - - - - - 0x0099C7 02:99B7: FF        .byte $FF   ; 

- D 0 - I - 0x0099C8 02:99B8: F0        .byte $F0   ; 
- D 0 - I - 0x0099C9 02:99B9: 02        .byte $02   ; 
- D 0 - I - 0x0099CA 02:99BA: 3C        .byte $3C   ; 
- D 0 - I - 0x0099CB 02:99BB: 00        .byte $00   ; 
- D 0 - I - 0x0099CC 02:99BC: FF        .byte $FF   ; 
- D 0 - I - 0x0099CD 02:99BD: 38        .byte $38   ; <8>
- D 0 - I - 0x0099CE 02:99BE: F0        .byte $F0   ; 
- D 0 - I - 0x0099CF 02:99BF: 04        .byte $04   ; 
- D 0 - I - 0x0099D0 02:99C0: 3C        .byte $3C   ; 
- D 0 - I - 0x0099D1 02:99C1: 00        .byte $00   ; 
- D 0 - I - 0x0099D2 02:99C2: 01        .byte $01   ; 
- D 0 - I - 0x0099D3 02:99C3: 39        .byte $39   ; <9>
- - - - - - 0x0099D4 02:99C4: FF        .byte $FF   ; 

- D 0 - I - 0x0099D5 02:99C5: F0        .byte $F0   ; 
- D 0 - I - 0x0099D6 02:99C6: 01        .byte $01   ; 
- D 0 - I - 0x0099D7 02:99C7: 3C        .byte $3C   ; 
- D 0 - I - 0x0099D8 02:99C8: 00        .byte $00   ; 
- D 0 - I - 0x0099D9 02:99C9: 01        .byte $01   ; 
- D 0 - I - 0x0099DA 02:99CA: 3A        .byte $3A   ; 
- - - - - - 0x0099DB 02:99CB: FF        .byte $FF   ; 

- D 0 - I - 0x0099DC 02:99CC: 80        .byte $80   ; 
- D 0 - I - 0x0099DD 02:99CD: 04        .byte $04   ; 
- D 0 - I - 0x0099DE 02:99CE: 3D        .byte $3D   ; 
- D 0 - I - 0x0099DF 02:99CF: 00        .byte $00   ; 
- D 0 - I - 0x0099E0 02:99D0: FF        .byte $FF   ; 
- D 0 - I - 0x0099E1 02:99D1: 3B        .byte $3B   ; 
- D 0 - I - 0x0099E2 02:99D2: F0        .byte $F0   ; 
- D 0 - I - 0x0099E3 02:99D3: 04        .byte $04   ; 
- D 0 - I - 0x0099E4 02:99D4: 3D        .byte $3D   ; 
- D 0 - I - 0x0099E5 02:99D5: 01        .byte $01   ; 
- D 0 - I - 0x0099E6 02:99D6: FF        .byte $FF   ; 
- D 0 - I - 0x0099E7 02:99D7: 3B        .byte $3B   ; 
- - - - - - 0x0099E8 02:99D8: FF        .byte $FF   ; 

- D 0 - I - 0x0099E9 02:99D9: F0        .byte $F0   ; 
- D 0 - I - 0x0099EA 02:99DA: 01        .byte $01   ; 
- D 0 - I - 0x0099EB 02:99DB: 3C        .byte $3C   ; 
- D 0 - I - 0x0099EC 02:99DC: 00        .byte $00   ; 
- D 0 - I - 0x0099ED 02:99DD: 01        .byte $01   ; 
- D 0 - I - 0x0099EE 02:99DE: 3C        .byte $3C   ; 
- - - - - - 0x0099EF 02:99DF: FF        .byte $FF   ; 

- D 0 - I - 0x0099F0 02:99E0: F0        .byte $F0   ; 
- D 0 - I - 0x0099F1 02:99E1: 01        .byte $01   ; 
- D 0 - I - 0x0099F2 02:99E2: 3C        .byte $3C   ; 
- D 0 - I - 0x0099F3 02:99E3: 00        .byte $00   ; 
- D 0 - I - 0x0099F4 02:99E4: FF        .byte $FF   ; 
- D 0 - I - 0x0099F5 02:99E5: 3D        .byte $3D   ; 
- - - - - - 0x0099F6 02:99E6: FF        .byte $FF   ; 

- D 0 - I - 0x0099F7 02:99E7: FF        .byte $FF, $3E   ; 
- D 0 - I - 0x0099F9 02:99E9: FE        .byte $FE, $DF   ; 
- D 0 - I - 0x0099FB 02:99EB: FF        .byte $FF, $6E   ; <n>
- D 0 - I - 0x0099FD 02:99ED: FF        .byte $FF, $E9   ; 
- D 0 - I - 0x0099FF 02:99EF: FF        .byte $FF, $DE   ; 
- - - - - - 0x009A01 02:99F1: FF        .byte $FF, $E9   ; 
- - - - - - 0x009A03 02:99F3: FE        .byte $FE, $DE   ; 
- - - - - - 0x009A05 02:99F5: FF        .byte $FF, $B7   ; 
- D 0 - I - 0x009A07 02:99F7: FF        .byte $FF, $DA   ; 
- - - - - - 0x009A09 02:99F9: FE        .byte $FE, $F7   ; 
- - - - - - 0x009A0B 02:99FB: FE        .byte $FE, $FE   ; 
- - - - - - 0x009A0D 02:99FD: FE        .byte $FE, $D7   ; 
- - - - - - 0x009A0F 02:99FF: FF        .byte $FF, $EB   ; 
- D 0 - I - 0x009A11 02:9A01: FF        .byte $FF, $75   ; <u>
- - - - - - 0x009A13 02:9A03: FE        .byte $FE, $AF   ; 
- - - - - - 0x009A15 02:9A05: FF        .byte $FF, $F4   ; 
- - - - - - 0x009A17 02:9A07: FE        .byte $FE, $EA   ; 
- - - - - - 0x009A19 02:9A09: FE        .byte $FE, $EA   ; 
- D 0 - I - 0x009A1B 02:9A0B: FF        .byte $FF, $A6   ; 
- - - - - - 0x009A1D 02:9A0D: FE        .byte $FE, $7E   ; 
- - - - - - 0x009A1F 02:9A0F: FE        .byte $FE, $B9   ; 
- D 0 - I - 0x009A21 02:9A11: FE        .byte $FE, $A7   ; 
- - - - - - 0x009A23 02:9A13: FF        .byte $FF, $6A   ; <j>
- - - - - - 0x009A25 02:9A15: FE        .byte $FE, $7A   ; <z>
- D 0 - I - 0x009A27 02:9A17: FF        .byte $FF, $AB   ; 
- - - - - - 0x009A29 02:9A19: FE        .byte $FE, $EE   ; 
- - - - - - 0x009A2B 02:9A1B: FF        .byte $FF, $2E   ; 
- D 0 - I - 0x009A2D 02:9A1D: FF        .byte $FF, $17   ; 
- - - - - - 0x009A2F 02:9A1F: FE        .byte $FE, $EA   ; 
- D 0 - I - 0x009A31 02:9A21: FF        .byte $FF, $37   ; <7>
- - - - - - 0x009A33 02:9A23: FE        .byte $FE, $9F   ; 
- - - - - - 0x009A35 02:9A25: FE        .byte $FE, $7E   ; 
- - - - - - 0x009A37 02:9A27: FE        .byte $FE, $EB   ; 
- - - - - - 0x009A39 02:9A29: FE        .byte $FE, $7B   ; 
- - - - - - 0x009A3B 02:9A2B: FE        .byte $FE, $EE   ; 
- D 0 - I - 0x009A3D 02:9A2D: FE        .byte $FE, $BB   ; 
- - - - - - 0x009A3F 02:9A2F: FF        .byte $FF, $2E   ; 
- - - - - - 0x009A41 02:9A31: FF        .byte $FF, $5D   ; 
- D 0 - I - 0x009A43 02:9A33: FE        .byte $FE, $B7   ; 
- - - - - - 0x009A45 02:9A35: FF        .byte $FF, $6A   ; <j>
- - - - - - 0x009A47 02:9A37: FE        .byte $FE, $AB   ; 
- D 0 - I - 0x009A49 02:9A39: FF        .byte $FF, $AE   ; 
- - - - - - 0x009A4B 02:9A3B: FF        .byte $FF, $AB   ; 
- D 0 - I - 0x009A4D 02:9A3D: FE        .byte $FE, $AE   ; 
- D 0 - I - 0x009A4F 02:9A3F: FF        .byte $FF, $AE   ; 
- - - - - - 0x009A51 02:9A41: FF        .byte $FF, $AB   ; 
- - - - - - 0x009A53 02:9A43: FE        .byte $FE, $AF   ; 
- - - - - - 0x009A55 02:9A45: FF        .byte $FF, $BA   ; 
- - - - - - 0x009A57 02:9A47: FF        .byte $FF, $57   ; <W>
- - - - - - 0x009A59 02:9A49: FF        .byte $FF, $5B   ; 
- - - - - - 0x009A5B 02:9A4B: FE        .byte $FE, $5F   ; 
- - - - - - 0x009A5D 02:9A4D: FF        .byte $FF, $76   ; <v>
- - - - - - 0x009A5F 02:9A4F: FE        .byte $FE, $5F   ; 
- - - - - - 0x009A61 02:9A51: FF        .byte $FF, $7A   ; <z>
- - - - - - 0x009A63 02:9A53: FE        .byte $FE, $BB   ; 
- - - - - - 0x009A65 02:9A55: FF        .byte $FF, $7A   ; <z>
- - - - - - 0x009A67 02:9A57: FF        .byte $FF, $75   ; <u>
- - - - - - 0x009A69 02:9A59: FE        .byte $FE, $5F   ; 
- - - - - - 0x009A6B 02:9A5B: FF        .byte $FF, $BA   ; 
- D 0 - I - 0x009A6D 02:9A5D: FE        .byte $FE, $77   ; <w>
- - - - - - 0x009A6F 02:9A5F: FF        .byte $FF, $BA   ; 
- - - - - - 0x009A71 02:9A61: FF        .byte $FF, $73   ; <s>

- D 0 - I - 0x009A73 02:9A63: C0        .byte $C0   ; 
- D 0 - I - 0x009A74 02:9A64: C1        .byte $C1   ; 
- - - - - - 0x009A75 02:9A65: C2        .byte $C2   ; 
- D 0 - I - 0x009A76 02:9A66: C3        .byte $C3   ; 

- - - - - - 0x009A77 02:9A67: C4        .byte $C4   ; 
- - - - - - 0x009A78 02:9A68: C5        .byte $C5   ; 
- - - - - - 0x009A79 02:9A69: 00        .byte $00   ; 
- - - - - - 0x009A7A 02:9A6A: C6        .byte $C6   ; 
- D 0 - I - 0x009A7B 02:9A6B: C7        .byte $C7   ; 
- - - - - - 0x009A7C 02:9A6C: 00        .byte $00   ; 
- - - - - - 0x009A7D 02:9A6D: C8        .byte $C8   ; 
- - - - - - 0x009A7E 02:9A6E: 00        .byte $00   ; 
- - - - - - 0x009A7F 02:9A6F: C9        .byte $C9   ; 
- - - - - - 0x009A80 02:9A70: CA        .byte $CA   ; 
- D 0 - I - 0x009A81 02:9A71: CB        .byte $CB   ; 
- D 0 - I - 0x009A82 02:9A72: CC        .byte $CC   ; 
- - - - - - 0x009A83 02:9A73: CD        .byte $CD   ; 
- D 0 - I - 0x009A84 02:9A74: CE        .byte $CE   ; 
- - - - - - 0x009A85 02:9A75: 00        .byte $00   ; 
- - - - - - 0x009A86 02:9A76: CF        .byte $CF   ; 
- D 0 - I - 0x009A87 02:9A77: D0        .byte $D0   ; 
- - - - - - 0x009A88 02:9A78: D1        .byte $D1   ; 
- D 0 - I - 0x009A89 02:9A79: D2        .byte $D2   ; 
- - - - - - 0x009A8A 02:9A7A: D3        .byte $D3   ; 
- - - - - - 0x009A8B 02:9A7B: D4        .byte $D4   ; 
- D 0 - I - 0x009A8C 02:9A7C: D5        .byte $D5   ; 
- - - - - - 0x009A8D 02:9A7D: D6        .byte $D6   ; 
- - - - - - 0x009A8E 02:9A7E: D7        .byte $D7   ; 
- - - - - - 0x009A8F 02:9A7F: D8        .byte $D8   ; 
- - - - - - 0x009A90 02:9A80: D9        .byte $D9   ; 
- D 0 - I - 0x009A91 02:9A81: DA        .byte $DA   ; 
- D 0 - I - 0x009A92 02:9A82: DB        .byte $DB   ; 
- - - - - - 0x009A93 02:9A83: DC        .byte $DC   ; 
- - - - - - 0x009A94 02:9A84: DD        .byte $DD   ; 
- - - - - - 0x009A95 02:9A85: DE        .byte $DE   ; 
- D 0 - I - 0x009A96 02:9A86: DF        .byte $DF   ; 
- D 0 - I - 0x009A97 02:9A87: E0        .byte $E0   ; 
- D 0 - I - 0x009A98 02:9A88: E1        .byte $E1   ; 
- - - - - - 0x009A99 02:9A89: E2        .byte $E2   ; 
- - - - - - 0x009A9A 02:9A8A: E3        .byte $E3   ; 
- - - - - - 0x009A9B 02:9A8B: E4        .byte $E4   ; 
- - - - - - 0x009A9C 02:9A8C: E5        .byte $E5   ; 
- - - - - - 0x009A9D 02:9A8D: E6        .byte $E6   ; 
- D 0 - I - 0x009A9E 02:9A8E: E7        .byte $E7   ; 
- - - - - - 0x009A9F 02:9A8F: E8        .byte $E8   ; 
- D 0 - I - 0x009AA0 02:9A90: E9        .byte $E9   ; 
- - - - - - 0x009AA1 02:9A91: EA        .byte $EA   ; 
- - - - - - 0x009AA2 02:9A92: 00        .byte $00   ; 
- - - - - - 0x009AA3 02:9A93: EB        .byte $EB   ; 
- - - - - - 0x009AA4 02:9A94: EC        .byte $EC   ; 
- - - - - - 0x009AA5 02:9A95: 00        .byte $00   ; 
- - - - - - 0x009AA6 02:9A96: ED        .byte $ED   ; 
- - - - - - 0x009AA7 02:9A97: 00        .byte $00   ; 
- - - - - - 0x009AA8 02:9A98: EE        .byte $EE   ; 
- - - - - - 0x009AA9 02:9A99: 00        .byte $00   ; 
- - - - - - 0x009AAA 02:9A9A: EF        .byte $EF   ; 
- - - - - - 0x009AAB 02:9A9B: F0        .byte $F0   ; 
- - - - - - 0x009AAC 02:9A9C: 00        .byte $00   ; 
- - - - - - 0x009AAD 02:9A9D: F1        .byte $F1   ; 
- - - - - - 0x009AAE 02:9A9E: F2        .byte $F2   ; 
- - - - - - 0x009AAF 02:9A9F: 00        .byte $00   ; 
- - - - - - 0x009AB0 02:9AA0: 00        .byte $00   ; 
- - - - - - 0x009AB1 02:9AA1: F3        .byte $F3   ; 
- - - - - - 0x009AB2 02:9AA2: A4        .byte $A4   ; 
- - - - - - 0x009AB3 02:9AA3: A5        .byte $A5   ; 
- - - - - - 0x009AB4 02:9AA4: A6        .byte $A6   ; 
- D 0 - I - 0x009AB5 02:9AA5: A7        .byte $A7   ; 
- - - - - - 0x009AB6 02:9AA6: A8        .byte $A8   ; 
- - - - - - 0x009AB7 02:9AA7: A9        .byte $A9   ; 
- D 0 - I - 0x009AB8 02:9AA8: AA        .byte $AA   ; 
- - - - - - 0x009AB9 02:9AA9: AB        .byte $AB   ; 
- - - - - - 0x009ABA 02:9AAA: AC        .byte $AC   ; 
- - - - - - 0x009ABB 02:9AAB: AD        .byte $AD   ; 
- - - - - - 0x009ABC 02:9AAC: AE        .byte $AE   ; 
- - - - - - 0x009ABD 02:9AAD: AF        .byte $AF   ; 
- - - - - - 0x009ABE 02:9AAE: B0        .byte $B0   ; 
- - - - - - 0x009ABF 02:9AAF: B1        .byte $B1   ; 
- - - - - - 0x009AC0 02:9AB0: B2        .byte $B2   ; 
- - - - - - 0x009AC1 02:9AB1: B3        .byte $B3   ; 
- - - - - - 0x009AC2 02:9AB2: B4        .byte $B4   ; 
- - - - - - 0x009AC3 02:9AB3: B5        .byte $B5   ; 
- - - - - - 0x009AC4 02:9AB4: B6        .byte $B6   ; 
- D 0 - I - 0x009AC5 02:9AB5: B7        .byte $B7   ; 
- D 0 - I - 0x009AC6 02:9AB6: B8        .byte $B8   ; 
- D 0 - I - 0x009AC7 02:9AB7: B9        .byte $B9   ; 
- - - - - - 0x009AC8 02:9AB8: BA        .byte $BA   ; 
- - - - - - 0x009AC9 02:9AB9: BB        .byte $BB   ; 
- D 0 - I - 0x009ACA 02:9ABA: BC        .byte $BC   ; 
- - - - - - 0x009ACB 02:9ABB: BD        .byte $BD   ; 
- - - - - - 0x009ACC 02:9ABC: 00        .byte $00   ; 
- D 0 - I - 0x009ACD 02:9ABD: BE        .byte $BE   ; 
- - - - - - 0x009ACE 02:9ABE: BF        .byte $BF   ; 
- - - - - - 0x009ACF 02:9ABF: F4        .byte $F4   ; 
- - - - - - 0x009AD0 02:9AC0: F5        .byte $F5   ; 
- D 0 - I - 0x009AD1 02:9AC1: F6        .byte $F6   ; 
- - - - - - 0x009AD2 02:9AC2: 00        .byte $00   ; 
- D 0 - I - 0x009AD3 02:9AC3: F7        .byte $F7   ; 
- D 0 - I - 0x009AD4 02:9AC4: F8        .byte $F8   ; 
- D 0 - I - 0x009AD5 02:9AC5: F9        .byte $F9   ; 
- D 0 - I - 0x009AD6 02:9AC6: FA        .byte $FA   ; 
- - - - - - 0x009AD7 02:9AC7: FB        .byte $FB   ; 
- - - - - - 0x009AD8 02:9AC8: 00        .byte $00   ; 
- - - - - - 0x009AD9 02:9AC9: FC        .byte $FC   ; 
- D 0 - I - 0x009ADA 02:9ACA: FD        .byte $FD   ; 
- - - - - - 0x009ADB 02:9ACB: FE        .byte $FE   ; 
- - - - - - 0x009ADC 02:9ACC: 00        .byte $00   ; 
- - - - - - 0x009ADD 02:9ACD: 24        .byte $24   ; 
- - - - - - 0x009ADE 02:9ACE: 25        .byte $25   ; 
- - - - - - 0x009ADF 02:9ACF: 00        .byte $00   ; 
- - - - - - 0x009AE0 02:9AD0: 26        .byte $26   ; 
- D 0 - I - 0x009AE1 02:9AD1: 27        .byte $27   ; 
- - - - - - 0x009AE2 02:9AD2: 28        .byte $28   ; 
- D 0 - I - 0x009AE3 02:9AD3: 29        .byte $29   ; 
- - - - - - 0x009AE4 02:9AD4: 2A        .byte $2A   ; 
- - - - - - 0x009AE5 02:9AD5: 2B        .byte $2B   ; 
- - - - - - 0x009AE6 02:9AD6: 2C        .byte $2C   ; 
- D 0 - I - 0x009AE7 02:9AD7: 2D        .byte $2D   ; 
- - - - - - 0x009AE8 02:9AD8: 2E        .byte $2E   ; 
- - - - - - 0x009AE9 02:9AD9: 2F        .byte $2F   ; 
- - - - - - 0x009AEA 02:9ADA: 30        .byte $30   ; <0>
- - - - - - 0x009AEB 02:9ADB: 31        .byte $31   ; <1>
- - - - - - 0x009AEC 02:9ADC: 32        .byte $32   ; <2>
- - - - - - 0x009AED 02:9ADD: 33        .byte $33   ; <3>
- - - - - - 0x009AEE 02:9ADE: 34        .byte $34   ; <4>
- - - - - - 0x009AEF 02:9ADF: 35        .byte $35   ; <5>
- - - - - - 0x009AF0 02:9AE0: 36        .byte $36   ; <6>
- - - - - - 0x009AF1 02:9AE1: 37        .byte $37   ; <7>
- - - - - - 0x009AF2 02:9AE2: 38        .byte $38   ; <8>
- - - - - - 0x009AF3 02:9AE3: 39        .byte $39   ; <9>
- - - - - - 0x009AF4 02:9AE4: 3A        .byte $3A   ; 
- D 0 - I - 0x009AF5 02:9AE5: 3B        .byte $3B   ; 
- - - - - - 0x009AF6 02:9AE6: 3C        .byte $3C   ; 
- - - - - - 0x009AF7 02:9AE7: 3D        .byte $3D   ; 
- D 0 - I - 0x009AF8 02:9AE8: 3E        .byte $3E   ; 
- D 0 - I - 0x009AF9 02:9AE9: 00        .byte $00   ; 
- D 0 - I - 0x009AFA 02:9AEA: 00        .byte $00   ; 
- D 0 - I - 0x009AFB 02:9AEB: 00        .byte $00   ; 
- D 0 - I - 0x009AFC 02:9AEC: 00        .byte $00   ; 
- D 0 - I - 0x009AFD 02:9AED: 00        .byte $00   ; 
- D 0 - I - 0x009AFE 02:9AEE: 00        .byte $00   ; 
- D 0 - I - 0x009AFF 02:9AEF: 00        .byte $00   ; 
- D 0 - I - 0x009B00 02:9AF0: 00        .byte $00   ; 
- D 0 - I - 0x009B01 02:9AF1: 00        .byte $00   ; 
- D 0 - I - 0x009B02 02:9AF2: 00        .byte $00   ; 
- D 0 - I - 0x009B03 02:9AF3: 00        .byte $00   ; 
- D 0 - I - 0x009B04 02:9AF4: 00        .byte $00   ; 
- D 0 - I - 0x009B05 02:9AF5: 00        .byte $00   ; 
- D 0 - I - 0x009B06 02:9AF6: 00        .byte $00   ; 
- D 0 - I - 0x009B07 02:9AF7: 00        .byte $00   ; 
- D 0 - I - 0x009B08 02:9AF8: 00        .byte $00   ; 
- D 0 - I - 0x009B09 02:9AF9: 00        .byte $00   ; 
- D 0 - I - 0x009B0A 02:9AFA: 00        .byte $00   ; 
- D 0 - I - 0x009B0B 02:9AFB: 00        .byte $00   ; 
- D 0 - I - 0x009B0C 02:9AFC: 00        .byte $00   ; 
- D 0 - I - 0x009B0D 02:9AFD: 00        .byte $00   ; 
- D 0 - I - 0x009B0E 02:9AFE: 00        .byte $00   ; 
- D 0 - I - 0x009B0F 02:9AFF: 00        .byte $00   ; 
- D 0 - I - 0x009B10 02:9B00: 00        .byte $00   ; 
- D 0 - I - 0x009B11 02:9B01: 00        .byte $00   ; 
- D 0 - I - 0x009B12 02:9B02: 00        .byte $00   ; 
- D 0 - I - 0x009B13 02:9B03: 00        .byte $00   ; 
- D 0 - I - 0x009B14 02:9B04: 00        .byte $00   ; 
- D 0 - I - 0x009B15 02:9B05: 00        .byte $00   ; 
- D 0 - I - 0x009B16 02:9B06: 7E        .byte $7E   ; 
- D 0 - I - 0x009B17 02:9B07: 00        .byte $00   ; 
- D 0 - I - 0x009B18 02:9B08: 00        .byte $00   ; 
- D 0 - I - 0x009B19 02:9B09: 00        .byte $00   ; 
- D 0 - I - 0x009B1A 02:9B0A: 00        .byte $00   ; 
- D 0 - I - 0x009B1B 02:9B0B: 00        .byte $00   ; 
- D 0 - I - 0x009B1C 02:9B0C: 00        .byte $00   ; 
- D 0 - I - 0x009B1D 02:9B0D: 00        .byte $00   ; 
- D 0 - I - 0x009B1E 02:9B0E: 00        .byte $00   ; 
- D 0 - I - 0x009B1F 02:9B0F: 7E        .byte $7E   ; 
- D 0 - I - 0x009B20 02:9B10: 7E        .byte $7E   ; 
- D 0 - I - 0x009B21 02:9B11: 07        .byte $07   ; 
- D 0 - I - 0x009B22 02:9B12: 08        .byte $08   ; 
- D 0 - I - 0x009B23 02:9B13: 09        .byte $09   ; 
- D 0 - I - 0x009B24 02:9B14: 0A        .byte $0A   ; 
- D 0 - I - 0x009B25 02:9B15: 39        .byte $39   ; <9>
- D 0 - I - 0x009B26 02:9B16: 00        .byte $00   ; 
- D 0 - I - 0x009B27 02:9B17: 05        .byte $05   ; 
- D 0 - I - 0x009B28 02:9B18: 04        .byte $04   ; 
- D 0 - I - 0x009B29 02:9B19: 07        .byte $07   ; 
- D 0 - I - 0x009B2A 02:9B1A: 2A        .byte $2A   ; 
- D 0 - I - 0x009B2B 02:9B1B: 00        .byte $00   ; 
- D 0 - I - 0x009B2C 02:9B1C: 2F        .byte $2F   ; 
- D 0 - I - 0x009B2D 02:9B1D: 22        .byte $22   ; 
- D 0 - I - 0x009B2E 02:9B1E: 3F        .byte $3F   ; 
- D 0 - I - 0x009B2F 02:9B1F: 34        .byte $34   ; <4>
- D 0 - I - 0x009B30 02:9B20: 1B        .byte $1B   ; 
- D 0 - I - 0x009B31 02:9B21: 34        .byte $34   ; <4>
- D 0 - I - 0x009B32 02:9B22: 11        .byte $11   ; 
- D 0 - I - 0x009B33 02:9B23: 34        .byte $34   ; <4>
- D 0 - I - 0x009B34 02:9B24: 32        .byte $32   ; <2>
- D 0 - I - 0x009B35 02:9B25: 00        .byte $00   ; 
- D 0 - I - 0x009B36 02:9B26: 00        .byte $00   ; 
- D 0 - I - 0x009B37 02:9B27: 00        .byte $00   ; 
- D 0 - I - 0x009B38 02:9B28: 00        .byte $00   ; 
- D 0 - I - 0x009B39 02:9B29: 00        .byte $00   ; 
- D 0 - I - 0x009B3A 02:9B2A: 00        .byte $00   ; 
- D 0 - I - 0x009B3B 02:9B2B: 00        .byte $00   ; 
- D 0 - I - 0x009B3C 02:9B2C: 00        .byte $00   ; 
- D 0 - I - 0x009B3D 02:9B2D: 00        .byte $00   ; 
- D 0 - I - 0x009B3E 02:9B2E: 00        .byte $00   ; 
- D 0 - I - 0x009B3F 02:9B2F: 00        .byte $00   ; 
- D 0 - I - 0x009B40 02:9B30: 00        .byte $00   ; 
- D 0 - I - 0x009B41 02:9B31: 00        .byte $00   ; 
- D 0 - I - 0x009B42 02:9B32: 00        .byte $00   ; 
- D 0 - I - 0x009B43 02:9B33: 00        .byte $00   ; 
- D 0 - I - 0x009B44 02:9B34: 7E        .byte $7E   ; 
- D 0 - I - 0x009B45 02:9B35: 00        .byte $00   ; 
- D 0 - I - 0x009B46 02:9B36: 00        .byte $00   ; 
- D 0 - I - 0x009B47 02:9B37: 00        .byte $00   ; 
- D 0 - I - 0x009B48 02:9B38: 00        .byte $00   ; 
- D 0 - I - 0x009B49 02:9B39: 1F        .byte $1F   ; 
- D 0 - I - 0x009B4A 02:9B3A: 36        .byte $36   ; <6>
- D 0 - I - 0x009B4B 02:9B3B: 19        .byte $19   ; 
- D 0 - I - 0x009B4C 02:9B3C: 00        .byte $00   ; 
- D 0 - I - 0x009B4D 02:9B3D: 1F        .byte $1F   ; 
- D 0 - I - 0x009B4E 02:9B3E: 30        .byte $30   ; <0>
- D 0 - I - 0x009B4F 02:9B3F: 2B        .byte $2B   ; 
- D 0 - I - 0x009B50 02:9B40: 39        .byte $39   ; <9>
- D 0 - I - 0x009B51 02:9B41: 00        .byte $00   ; 
- D 0 - I - 0x009B52 02:9B42: 35        .byte $35   ; <5>
- D 0 - I - 0x009B53 02:9B43: 3E        .byte $3E   ; 
- D 0 - I - 0x009B54 02:9B44: 3F        .byte $3F   ; 
- D 0 - I - 0x009B55 02:9B45: 38        .byte $38   ; <8>
- D 0 - I - 0x009B56 02:9B46: 00        .byte $00   ; 
- D 0 - I - 0x009B57 02:9B47: 37        .byte $37   ; <7>
- D 0 - I - 0x009B58 02:9B48: 2E        .byte $2E   ; 
- D 0 - I - 0x009B59 02:9B49: 27        .byte $27   ; 
- D 0 - I - 0x009B5A 02:9B4A: 11        .byte $11   ; 
- D 0 - I - 0x009B5B 02:9B4B: 15        .byte $15   ; 
- D 0 - I - 0x009B5C 02:9B4C: 60        .byte $60   ; 
- D 0 - I - 0x009B5D 02:9B4D: 00        .byte $00   ; 
- D 0 - I - 0x009B5E 02:9B4E: 00        .byte $00   ; 
- D 0 - I - 0x009B5F 02:9B4F: 00        .byte $00   ; 
- D 0 - I - 0x009B60 02:9B50: 00        .byte $00   ; 
- D 0 - I - 0x009B61 02:9B51: 00        .byte $00   ; 
- D 0 - I - 0x009B62 02:9B52: 00        .byte $00   ; 
- D 0 - I - 0x009B63 02:9B53: 00        .byte $00   ; 
- D 0 - I - 0x009B64 02:9B54: 00        .byte $00   ; 
- D 0 - I - 0x009B65 02:9B55: 00        .byte $00   ; 
- D 0 - I - 0x009B66 02:9B56: 00        .byte $00   ; 
- D 0 - I - 0x009B67 02:9B57: 00        .byte $00   ; 
- D 0 - I - 0x009B68 02:9B58: 7E        .byte $7E   ; 
- D 0 - I - 0x009B69 02:9B59: 00        .byte $00   ; 
- D 0 - I - 0x009B6A 02:9B5A: 00        .byte $00   ; 
- D 0 - I - 0x009B6B 02:9B5B: 00        .byte $00   ; 
- D 0 - I - 0x009B6C 02:9B5C: 7E        .byte $7E   ; 
- D 0 - I - 0x009B6D 02:9B5D: 00        .byte $00   ; 
- D 0 - I - 0x009B6E 02:9B5E: 00        .byte $00   ; 
- D 0 - I - 0x009B6F 02:9B5F: 00        .byte $00   ; 
- D 0 - I - 0x009B70 02:9B60: 00        .byte $00   ; 
- D 0 - I - 0x009B71 02:9B61: 1F        .byte $1F   ; 
- D 0 - I - 0x009B72 02:9B62: 18        .byte $18   ; 
- D 0 - I - 0x009B73 02:9B63: 19        .byte $19   ; 
- D 0 - I - 0x009B74 02:9B64: 00        .byte $00   ; 
- D 0 - I - 0x009B75 02:9B65: 12        .byte $12   ; 
- D 0 - I - 0x009B76 02:9B66: 13        .byte $13   ; 
- D 0 - I - 0x009B77 02:9B67: 2A        .byte $2A   ; 
- D 0 - I - 0x009B78 02:9B68: 22        .byte $22   ; 
- D 0 - I - 0x009B79 02:9B69: 00        .byte $00   ; 
- D 0 - I - 0x009B7A 02:9B6A: 30        .byte $30   ; <0>
- D 0 - I - 0x009B7B 02:9B6B: 19        .byte $19   ; 
- D 0 - I - 0x009B7C 02:9B6C: 3A        .byte $3A   ; 
- D 0 - I - 0x009B7D 02:9B6D: 2E        .byte $2E   ; 
- D 0 - I - 0x009B7E 02:9B6E: 1C        .byte $1C   ; 
- D 0 - I - 0x009B7F 02:9B6F: 19        .byte $19   ; 
- D 0 - I - 0x009B80 02:9B70: 34        .byte $34   ; <4>
- D 0 - I - 0x009B81 02:9B71: 15        .byte $15   ; 
- D 0 - I - 0x009B82 02:9B72: 60        .byte $60   ; 
- D 0 - I - 0x009B83 02:9B73: 00        .byte $00   ; 
- D 0 - I - 0x009B84 02:9B74: 00        .byte $00   ; 
- D 0 - I - 0x009B85 02:9B75: 11        .byte $11   ; 
- D 0 - I - 0x009B86 02:9B76: 1F        .byte $1F   ; 
- D 0 - I - 0x009B87 02:9B77: 10        .byte $10   ; 
- D 0 - I - 0x009B88 02:9B78: 00        .byte $00   ; 
- D 0 - I - 0x009B89 02:9B79: 1A        .byte $1A   ; 
- D 0 - I - 0x009B8A 02:9B7A: 11        .byte $11   ; 
- D 0 - I - 0x009B8B 02:9B7B: 3F        .byte $3F   ; 
- D 0 - I - 0x009B8C 02:9B7C: 34        .byte $34   ; <4>
- D 0 - I - 0x009B8D 02:9B7D: 00        .byte $00   ; 
- D 0 - I - 0x009B8E 02:9B7E: 1A        .byte $1A   ; 
- D 0 - I - 0x009B8F 02:9B7F: 11        .byte $11   ; 
- D 0 - I - 0x009B90 02:9B80: 3F        .byte $3F   ; 
- D 0 - I - 0x009B91 02:9B81: 34        .byte $34   ; <4>
- D 0 - I - 0x009B92 02:9B82: 00        .byte $00   ; 
- D 0 - I - 0x009B93 02:9B83: 00        .byte $00   ; 
- D 0 - I - 0x009B94 02:9B84: 00        .byte $00   ; 
- D 0 - I - 0x009B95 02:9B85: 00        .byte $00   ; 
- D 0 - I - 0x009B96 02:9B86: 00        .byte $00   ; 
- D 0 - I - 0x009B97 02:9B87: 00        .byte $00   ; 
- D 0 - I - 0x009B98 02:9B88: 00        .byte $00   ; 
- D 0 - I - 0x009B99 02:9B89: 00        .byte $00   ; 
- D 0 - I - 0x009B9A 02:9B8A: 00        .byte $00   ; 
- D 0 - I - 0x009B9B 02:9B8B: 00        .byte $00   ; 
- D 0 - I - 0x009B9C 02:9B8C: 00        .byte $00   ; 
- D 0 - I - 0x009B9D 02:9B8D: 00        .byte $00   ; 
- D 0 - I - 0x009B9E 02:9B8E: 00        .byte $00   ; 
- D 0 - I - 0x009B9F 02:9B8F: 00        .byte $00   ; 
- D 0 - I - 0x009BA0 02:9B90: 00        .byte $00   ; 
- D 0 - I - 0x009BA1 02:9B91: 00        .byte $00   ; 
- D 0 - I - 0x009BA2 02:9B92: 00        .byte $00   ; 
- D 0 - I - 0x009BA3 02:9B93: 00        .byte $00   ; 
- D 0 - I - 0x009BA4 02:9B94: 00        .byte $00   ; 
- D 0 - I - 0x009BA5 02:9B95: 7E        .byte $7E   ; 
- D 0 - I - 0x009BA6 02:9B96: 00        .byte $00   ; 
- D 0 - I - 0x009BA7 02:9B97: 7E        .byte $7E   ; 
- D 0 - I - 0x009BA8 02:9B98: 00        .byte $00   ; 
- D 0 - I - 0x009BA9 02:9B99: 00        .byte $00   ; 
- D 0 - I - 0x009BAA 02:9B9A: 00        .byte $00   ; 
- D 0 - I - 0x009BAB 02:9B9B: 00        .byte $00   ; 
- D 0 - I - 0x009BAC 02:9B9C: 7E        .byte $7E   ; 
- D 0 - I - 0x009BAD 02:9B9D: 68        .byte $68   ; <h>
- D 0 - I - 0x009BAE 02:9B9E: 6D        .byte $6D   ; <m>
- D 0 - I - 0x009BAF 02:9B9F: 66        .byte $66   ; <f>
- D 0 - I - 0x009BB0 02:9BA0: 69        .byte $69   ; <i>
- D 0 - I - 0x009BB1 02:9BA1: 19        .byte $19   ; 
- D 0 - I - 0x009BB2 02:9BA2: 00        .byte $00   ; 
- D 0 - I - 0x009BB3 02:9BA3: 2B        .byte $2B   ; 
- D 0 - I - 0x009BB4 02:9BA4: 1C        .byte $1C   ; 
- D 0 - I - 0x009BB5 02:9BA5: 39        .byte $39   ; <9>
- D 0 - I - 0x009BB6 02:9BA6: 00        .byte $00   ; 
- D 0 - I - 0x009BB7 02:9BA7: 21        .byte $21   ; 
- D 0 - I - 0x009BB8 02:9BA8: 12        .byte $12   ; 
- D 0 - I - 0x009BB9 02:9BA9: 30        .byte $30   ; <0>
- D 0 - I - 0x009BBA 02:9BAA: 29        .byte $29   ; 
- D 0 - I - 0x009BBB 02:9BAB: 3B        .byte $3B   ; 
- D 0 - I - 0x009BBC 02:9BAC: 2A        .byte $2A   ; 
- D 0 - I - 0x009BBD 02:9BAD: 11        .byte $11   ; 
- D 0 - I - 0x009BBE 02:9BAE: 1F        .byte $1F   ; 
- D 0 - I - 0x009BBF 02:9BAF: 36        .byte $36   ; <6>
- D 0 - I - 0x009BC0 02:9BB0: 34        .byte $34   ; <4>
- - - - - - 0x009BC1 02:9BB1: 00        .byte $00   ; 
- - - - - - 0x009BC2 02:9BB2: 7E        .byte $7E   ; 
- - - - - - 0x009BC3 02:9BB3: 7E        .byte $7E   ; 
- - - - - - 0x009BC4 02:9BB4: 00        .byte $00   ; 
- - - - - - 0x009BC5 02:9BB5: 00        .byte $00   ; 
- - - - - - 0x009BC6 02:9BB6: 00        .byte $00   ; 
- - - - - - 0x009BC7 02:9BB7: 00        .byte $00   ; 
- - - - - - 0x009BC8 02:9BB8: 00        .byte $00   ; 
- - - - - - 0x009BC9 02:9BB9: 00        .byte $00   ; 
- - - - - - 0x009BCA 02:9BBA: 00        .byte $00   ; 
- - - - - - 0x009BCB 02:9BBB: 00        .byte $00   ; 
- - - - - - 0x009BCC 02:9BBC: 00        .byte $00   ; 
- - - - - - 0x009BCD 02:9BBD: 7E        .byte $7E   ; 
- - - - - - 0x009BCE 02:9BBE: 00        .byte $00   ; 
- - - - - - 0x009BCF 02:9BBF: 00        .byte $00   ; 
- - - - - - 0x009BD0 02:9BC0: 00        .byte $00   ; 
- - - - - - 0x009BD1 02:9BC1: 00        .byte $00   ; 
- - - - - - 0x009BD2 02:9BC2: 00        .byte $00   ; 
- - - - - - 0x009BD3 02:9BC3: 00        .byte $00   ; 
- - - - - - 0x009BD4 02:9BC4: 00        .byte $00   ; 
- - - - - - 0x009BD5 02:9BC5: 16        .byte $16   ; 
- - - - - - 0x009BD6 02:9BC6: 2D        .byte $2D   ; 
- - - - - - 0x009BD7 02:9BC7: 34        .byte $34   ; <4>
- - - - - - 0x009BD8 02:9BC8: 31        .byte $31   ; <1>
- - - - - - 0x009BD9 02:9BC9: 19        .byte $19   ; 
- - - - - - 0x009BDA 02:9BCA: 16        .byte $16   ; 
- - - - - - 0x009BDB 02:9BCB: 00        .byte $00   ; 
- - - - - - 0x009BDC 02:9BCC: 2C        .byte $2C   ; 
- - - - - - 0x009BDD 02:9BCD: 26        .byte $26   ; 
- - - - - - 0x009BDE 02:9BCE: 12        .byte $12   ; 
- - - - - - 0x009BDF 02:9BCF: 30        .byte $30   ; <0>
- - - - - - 0x009BE0 02:9BD0: 34        .byte $34   ; <4>
- - - - - - 0x009BE1 02:9BD1: 32        .byte $32   ; <2>
- - - - - - 0x009BE2 02:9BD2: 00        .byte $00   ; 
- - - - - - 0x009BE3 02:9BD3: 00        .byte $00   ; 
- - - - - - 0x009BE4 02:9BD4: 00        .byte $00   ; 
- - - - - - 0x009BE5 02:9BD5: 00        .byte $00   ; 
- - - - - - 0x009BE6 02:9BD6: 00        .byte $00   ; 
- - - - - - 0x009BE7 02:9BD7: 00        .byte $00   ; 
- - - - - - 0x009BE8 02:9BD8: 00        .byte $00   ; 
- D 0 - I - 0x009BE9 02:9BD9: 00        .byte $00   ; 
- D 0 - I - 0x009BEA 02:9BDA: 00        .byte $00   ; 
- D 0 - I - 0x009BEB 02:9BDB: 00        .byte $00   ; 
- D 0 - I - 0x009BEC 02:9BDC: 00        .byte $00   ; 
- D 0 - I - 0x009BED 02:9BDD: 00        .byte $00   ; 
- D 0 - I - 0x009BEE 02:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x009BEF 02:9BDF: 00        .byte $00   ; 
- D 0 - I - 0x009BF0 02:9BE0: 00        .byte $00   ; 
- D 0 - I - 0x009BF1 02:9BE1: 00        .byte $00   ; 
- D 0 - I - 0x009BF2 02:9BE2: 00        .byte $00   ; 
- D 0 - I - 0x009BF3 02:9BE3: 7E        .byte $7E   ; 
- D 0 - I - 0x009BF4 02:9BE4: 00        .byte $00   ; 
- D 0 - I - 0x009BF5 02:9BE5: 00        .byte $00   ; 
- D 0 - I - 0x009BF6 02:9BE6: 00        .byte $00   ; 
- D 0 - I - 0x009BF7 02:9BE7: 00        .byte $00   ; 
- D 0 - I - 0x009BF8 02:9BE8: 00        .byte $00   ; 
- D 0 - I - 0x009BF9 02:9BE9: 00        .byte $00   ; 
- D 0 - I - 0x009BFA 02:9BEA: 00        .byte $00   ; 
- D 0 - I - 0x009BFB 02:9BEB: 7E        .byte $7E   ; 
- D 0 - I - 0x009BFC 02:9BEC: 00        .byte $00   ; 
- D 0 - I - 0x009BFD 02:9BED: 1F        .byte $1F   ; 
- D 0 - I - 0x009BFE 02:9BEE: 36        .byte $36   ; <6>
- D 0 - I - 0x009BFF 02:9BEF: 16        .byte $16   ; 
- D 0 - I - 0x009C00 02:9BF0: 00        .byte $00   ; 
- D 0 - I - 0x009C01 02:9BF1: 10        .byte $10   ; 
- D 0 - I - 0x009C02 02:9BF2: 12        .byte $12   ; 
- D 0 - I - 0x009C03 02:9BF3: 19        .byte $19   ; 
- D 0 - I - 0x009C04 02:9BF4: 39        .byte $39   ; <9>
- D 0 - I - 0x009C05 02:9BF5: 00        .byte $00   ; 
- D 0 - I - 0x009C06 02:9BF6: 1C        .byte $1C   ; 
- D 0 - I - 0x009C07 02:9BF7: 31        .byte $31   ; <1>
- D 0 - I - 0x009C08 02:9BF8: 2A        .byte $2A   ; 
- D 0 - I - 0x009C09 02:9BF9: 30        .byte $30   ; <0>
- D 0 - I - 0x009C0A 02:9BFA: 11        .byte $11   ; 
- D 0 - I - 0x009C0B 02:9BFB: 00        .byte $00   ; 
- D 0 - I - 0x009C0C 02:9BFC: 1B        .byte $1B   ; 
- D 0 - I - 0x009C0D 02:9BFD: 34        .byte $34   ; <4>
- D 0 - I - 0x009C0E 02:9BFE: 11        .byte $11   ; 
- D 0 - I - 0x009C0F 02:9BFF: 34        .byte $34   ; <4>
- D 0 - I - 0x009C10 02:9C00: 15        .byte $15   ; 
- - - - - - 0x009C11 02:9C01: 00        .byte $00   ; 
- - - - - - 0x009C12 02:9C02: 00        .byte $00   ; 
- - - - - - 0x009C13 02:9C03: 00        .byte $00   ; 
- - - - - - 0x009C14 02:9C04: 00        .byte $00   ; 
- - - - - - 0x009C15 02:9C05: 00        .byte $00   ; 
- - - - - - 0x009C16 02:9C06: 00        .byte $00   ; 
- - - - - - 0x009C17 02:9C07: 00        .byte $00   ; 
- - - - - - 0x009C18 02:9C08: 00        .byte $00   ; 
- - - - - - 0x009C19 02:9C09: 00        .byte $00   ; 
- - - - - - 0x009C1A 02:9C0A: 00        .byte $00   ; 
- - - - - - 0x009C1B 02:9C0B: 00        .byte $00   ; 
- - - - - - 0x009C1C 02:9C0C: 00        .byte $00   ; 
- - - - - - 0x009C1D 02:9C0D: 00        .byte $00   ; 
- - - - - - 0x009C1E 02:9C0E: 7E        .byte $7E   ; 
- - - - - - 0x009C1F 02:9C0F: 00        .byte $00   ; 
- - - - - - 0x009C20 02:9C10: 00        .byte $00   ; 
- - - - - - 0x009C21 02:9C11: 00        .byte $00   ; 
- - - - - - 0x009C22 02:9C12: 00        .byte $00   ; 
- - - - - - 0x009C23 02:9C13: 00        .byte $00   ; 
- - - - - - 0x009C24 02:9C14: 00        .byte $00   ; 
- - - - - - 0x009C25 02:9C15: 14        .byte $14   ; 
- - - - - - 0x009C26 02:9C16: 11        .byte $11   ; 
- - - - - - 0x009C27 02:9C17: 37        .byte $37   ; <7>
- - - - - - 0x009C28 02:9C18: 11        .byte $11   ; 
- - - - - - 0x009C29 02:9C19: 2C        .byte $2C   ; 
- - - - - - 0x009C2A 02:9C1A: 38        .byte $38   ; <8>
- - - - - - 0x009C2B 02:9C1B: 39        .byte $39   ; <9>
- - - - - - 0x009C2C 02:9C1C: 00        .byte $00   ; 
- - - - - - 0x009C2D 02:9C1D: 2D        .byte $2D   ; 
- - - - - - 0x009C2E 02:9C1E: 30        .byte $30   ; <0>
- - - - - - 0x009C2F 02:9C1F: 2A        .byte $2A   ; 
- - - - - - 0x009C30 02:9C20: 22        .byte $22   ; 
- - - - - - 0x009C31 02:9C21: 29        .byte $29   ; 
- - - - - - 0x009C32 02:9C22: 33        .byte $33   ; <3>
- - - - - - 0x009C33 02:9C23: 00        .byte $00   ; 
- - - - - - 0x009C34 02:9C24: 00        .byte $00   ; 
- - - - - - 0x009C35 02:9C25: 00        .byte $00   ; 
- - - - - - 0x009C36 02:9C26: 00        .byte $00   ; 
- - - - - - 0x009C37 02:9C27: 00        .byte $00   ; 
- - - - - - 0x009C38 02:9C28: 00        .byte $00   ; 
- D 0 - I - 0x009C39 02:9C29: 00        .byte $00   ; 
- D 0 - I - 0x009C3A 02:9C2A: 00        .byte $00   ; 
- D 0 - I - 0x009C3B 02:9C2B: 7E        .byte $7E   ; 
- D 0 - I - 0x009C3C 02:9C2C: 00        .byte $00   ; 
- D 0 - I - 0x009C3D 02:9C2D: 7E        .byte $7E   ; 
- D 0 - I - 0x009C3E 02:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x009C3F 02:9C2F: 00        .byte $00   ; 
- D 0 - I - 0x009C40 02:9C30: 00        .byte $00   ; 
- D 0 - I - 0x009C41 02:9C31: 00        .byte $00   ; 
- D 0 - I - 0x009C42 02:9C32: 00        .byte $00   ; 
- D 0 - I - 0x009C43 02:9C33: 00        .byte $00   ; 
- D 0 - I - 0x009C44 02:9C34: 00        .byte $00   ; 
- D 0 - I - 0x009C45 02:9C35: 00        .byte $00   ; 
- D 0 - I - 0x009C46 02:9C36: 00        .byte $00   ; 
- D 0 - I - 0x009C47 02:9C37: 00        .byte $00   ; 
- D 0 - I - 0x009C48 02:9C38: 00        .byte $00   ; 
- D 0 - I - 0x009C49 02:9C39: 7E        .byte $7E   ; 
- D 0 - I - 0x009C4A 02:9C3A: 00        .byte $00   ; 
- D 0 - I - 0x009C4B 02:9C3B: 00        .byte $00   ; 
- D 0 - I - 0x009C4C 02:9C3C: 00        .byte $00   ; 
- D 0 - I - 0x009C4D 02:9C3D: 37        .byte $37   ; <7>
- D 0 - I - 0x009C4E 02:9C3E: 22        .byte $22   ; 
- D 0 - I - 0x009C4F 02:9C3F: 37        .byte $37   ; <7>
- D 0 - I - 0x009C50 02:9C40: 00        .byte $00   ; 
- D 0 - I - 0x009C51 02:9C41: 30        .byte $30   ; <0>
- D 0 - I - 0x009C52 02:9C42: 3E        .byte $3E   ; 
- D 0 - I - 0x009C53 02:9C43: 12        .byte $12   ; 
- D 0 - I - 0x009C54 02:9C44: 0F        .byte $0F   ; 
- D 0 - I - 0x009C55 02:9C45: 12        .byte $12   ; 
- D 0 - I - 0x009C56 02:9C46: 28        .byte $28   ; 
- D 0 - I - 0x009C57 02:9C47: 00        .byte $00   ; 
- D 0 - I - 0x009C58 02:9C48: 10        .byte $10   ; 
- D 0 - I - 0x009C59 02:9C49: 36        .byte $36   ; <6>
- D 0 - I - 0x009C5A 02:9C4A: 1D        .byte $1D   ; 
- D 0 - I - 0x009C5B 02:9C4B: 24        .byte $24   ; 
- D 0 - I - 0x009C5C 02:9C4C: 19        .byte $19   ; 
- D 0 - I - 0x009C5D 02:9C4D: 34        .byte $34   ; <4>
- D 0 - I - 0x009C5E 02:9C4E: 15        .byte $15   ; 
- D 0 - I - 0x009C5F 02:9C4F: 60        .byte $60   ; 
- D 0 - I - 0x009C60 02:9C50: 00        .byte $00   ; 
- D 0 - I - 0x009C61 02:9C51: 00        .byte $00   ; 
- D 0 - I - 0x009C62 02:9C52: 00        .byte $00   ; 
- D 0 - I - 0x009C63 02:9C53: 7E        .byte $7E   ; 
- D 0 - I - 0x009C64 02:9C54: 00        .byte $00   ; 
- D 0 - I - 0x009C65 02:9C55: 00        .byte $00   ; 
- D 0 - I - 0x009C66 02:9C56: 00        .byte $00   ; 
- D 0 - I - 0x009C67 02:9C57: 00        .byte $00   ; 
- D 0 - I - 0x009C68 02:9C58: 00        .byte $00   ; 
- D 0 - I - 0x009C69 02:9C59: 00        .byte $00   ; 
- D 0 - I - 0x009C6A 02:9C5A: 7E        .byte $7E   ; 
- D 0 - I - 0x009C6B 02:9C5B: 00        .byte $00   ; 
- D 0 - I - 0x009C6C 02:9C5C: 00        .byte $00   ; 
- D 0 - I - 0x009C6D 02:9C5D: 00        .byte $00   ; 
- D 0 - I - 0x009C6E 02:9C5E: 00        .byte $00   ; 
- D 0 - I - 0x009C6F 02:9C5F: 7E        .byte $7E   ; 
- D 0 - I - 0x009C70 02:9C60: 00        .byte $00   ; 
- D 0 - I - 0x009C71 02:9C61: 00        .byte $00   ; 
- D 0 - I - 0x009C72 02:9C62: 00        .byte $00   ; 
- D 0 - I - 0x009C73 02:9C63: 00        .byte $00   ; 
- D 0 - I - 0x009C74 02:9C64: 00        .byte $00   ; 
- D 0 - I - 0x009C75 02:9C65: 08        .byte $08   ; 
- D 0 - I - 0x009C76 02:9C66: 04        .byte $04   ; 
- D 0 - I - 0x009C77 02:9C67: 0B        .byte $0B   ; 
- D 0 - I - 0x009C78 02:9C68: 2A        .byte $2A   ; 
- D 0 - I - 0x009C79 02:9C69: 60        .byte $60   ; 
- D 0 - I - 0x009C7A 02:9C6A: 00        .byte $00   ; 
- D 0 - I - 0x009C7B 02:9C6B: 1F        .byte $1F   ; 
- D 0 - I - 0x009C7C 02:9C6C: 36        .byte $36   ; <6>
- D 0 - I - 0x009C7D 02:9C6D: 1A        .byte $1A   ; 
- D 0 - I - 0x009C7E 02:9C6E: 37        .byte $37   ; <7>
- D 0 - I - 0x009C7F 02:9C6F: 00        .byte $00   ; 
- D 0 - I - 0x009C80 02:9C70: 2A        .byte $2A   ; 
- D 0 - I - 0x009C81 02:9C71: 22        .byte $22   ; 
- D 0 - I - 0x009C82 02:9C72: 29        .byte $29   ; 
- D 0 - I - 0x009C83 02:9C73: 37        .byte $37   ; <7>
- D 0 - I - 0x009C84 02:9C74: 11        .byte $11   ; 
- D 0 - I - 0x009C85 02:9C75: 24        .byte $24   ; 
- D 0 - I - 0x009C86 02:9C76: 38        .byte $38   ; <8>
- D 0 - I - 0x009C87 02:9C77: 39        .byte $39   ; <9>
- D 0 - I - 0x009C88 02:9C78: 15        .byte $15   ; 
- D 0 - I - 0x009C89 02:9C79: 1B        .byte $1B   ; 
- D 0 - I - 0x009C8A 02:9C7A: 15        .byte $15   ; 
- D 0 - I - 0x009C8B 02:9C7B: 38        .byte $38   ; <8>
- D 0 - I - 0x009C8C 02:9C7C: 18        .byte $18   ; 
- D 0 - I - 0x009C8D 02:9C7D: 60        .byte $60   ; 
- D 0 - I - 0x009C8E 02:9C7E: 00        .byte $00   ; 
- D 0 - I - 0x009C8F 02:9C7F: 2E        .byte $2E   ; 
- D 0 - I - 0x009C90 02:9C80: 11        .byte $11   ; 
- D 0 - I - 0x009C91 02:9C81: 36        .byte $36   ; <6>
- D 0 - I - 0x009C92 02:9C82: 64        .byte $64   ; <d>
- D 0 - I - 0x009C93 02:9C83: 14        .byte $14   ; 
- D 0 - I - 0x009C94 02:9C84: 1E        .byte $1E   ; 
- D 0 - I - 0x009C95 02:9C85: 30        .byte $30   ; <0>
- D 0 - I - 0x009C96 02:9C86: 26        .byte $26   ; 
- D 0 - I - 0x009C97 02:9C87: 2C        .byte $2C   ; 
- D 0 - I - 0x009C98 02:9C88: 15        .byte $15   ; 
- D 0 - I - 0x009C99 02:9C89: 3F        .byte $3F   ; 
- D 0 - I - 0x009C9A 02:9C8A: 37        .byte $37   ; <7>
- D 0 - I - 0x009C9B 02:9C8B: 2B        .byte $2B   ; 
- D 0 - I - 0x009C9C 02:9C8C: 34        .byte $34   ; <4>
- D 0 - I - 0x009C9D 02:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x009C9E 02:9C8E: 7E        .byte $7E   ; 
- D 0 - I - 0x009C9F 02:9C8F: 00        .byte $00   ; 
- D 0 - I - 0x009CA0 02:9C90: 00        .byte $00   ; 
- D 0 - I - 0x009CA1 02:9C91: 00        .byte $00   ; 
- D 0 - I - 0x009CA2 02:9C92: 00        .byte $00   ; 
- D 0 - I - 0x009CA3 02:9C93: 00        .byte $00   ; 
- D 0 - I - 0x009CA4 02:9C94: 00        .byte $00   ; 
- D 0 - I - 0x009CA5 02:9C95: 00        .byte $00   ; 
- D 0 - I - 0x009CA6 02:9C96: 7E        .byte $7E   ; 
- D 0 - I - 0x009CA7 02:9C97: 00        .byte $00   ; 
- D 0 - I - 0x009CA8 02:9C98: 00        .byte $00   ; 
- D 0 - I - 0x009CA9 02:9C99: 7E        .byte $7E   ; 
- D 0 - I - 0x009CAA 02:9C9A: 00        .byte $00   ; 
- D 0 - I - 0x009CAB 02:9C9B: 00        .byte $00   ; 
- D 0 - I - 0x009CAC 02:9C9C: 00        .byte $00   ; 
- D 0 - I - 0x009CAD 02:9C9D: 00        .byte $00   ; 
- D 0 - I - 0x009CAE 02:9C9E: 00        .byte $00   ; 
- D 0 - I - 0x009CAF 02:9C9F: 00        .byte $00   ; 
- D 0 - I - 0x009CB0 02:9CA0: 7E        .byte $7E   ; 
- D 0 - I - 0x009CB1 02:9CA1: 34        .byte $34   ; <4>
- D 0 - I - 0x009CB2 02:9CA2: 34        .byte $34   ; <4>
- D 0 - I - 0x009CB3 02:9CA3: 19        .byte $19   ; 
- D 0 - I - 0x009CB4 02:9CA4: 00        .byte $00   ; 
- D 0 - I - 0x009CB5 02:9CA5: 20        .byte $20   ; 
- D 0 - I - 0x009CB6 02:9CA6: 12        .byte $12   ; 
- D 0 - I - 0x009CB7 02:9CA7: 2A        .byte $2A   ; 
- D 0 - I - 0x009CB8 02:9CA8: 11        .byte $11   ; 
- D 0 - I - 0x009CB9 02:9CA9: 00        .byte $00   ; 
- D 0 - I - 0x009CBA 02:9CAA: 30        .byte $30   ; <0>
- D 0 - I - 0x009CBB 02:9CAB: 2D        .byte $2D   ; 
- D 0 - I - 0x009CBC 02:9CAC: 29        .byte $29   ; 
- D 0 - I - 0x009CBD 02:9CAD: 37        .byte $37   ; <7>
- D 0 - I - 0x009CBE 02:9CAE: 39        .byte $39   ; <9>
- D 0 - I - 0x009CBF 02:9CAF: 00        .byte $00   ; 
- D 0 - I - 0x009CC0 02:9CB0: 15        .byte $15   ; 
- D 0 - I - 0x009CC1 02:9CB1: 11        .byte $11   ; 
- D 0 - I - 0x009CC2 02:9CB2: 27        .byte $27   ; 
- D 0 - I - 0x009CC3 02:9CB3: 2D        .byte $2D   ; 
- D 0 - I - 0x009CC4 02:9CB4: 34        .byte $34   ; <4>
- D 0 - I - 0x009CC5 02:9CB5: 7F        .byte $7F   ; 
- D 0 - I - 0x009CC6 02:9CB6: 00        .byte $00   ; 
- D 0 - I - 0x009CC7 02:9CB7: 00        .byte $00   ; 
- D 0 - I - 0x009CC8 02:9CB8: 00        .byte $00   ; 
- D 0 - I - 0x009CC9 02:9CB9: 7E        .byte $7E   ; 
- D 0 - I - 0x009CCA 02:9CBA: 00        .byte $00   ; 
- D 0 - I - 0x009CCB 02:9CBB: 00        .byte $00   ; 
- D 0 - I - 0x009CCC 02:9CBC: 00        .byte $00   ; 
- D 0 - I - 0x009CCD 02:9CBD: 00        .byte $00   ; 
- D 0 - I - 0x009CCE 02:9CBE: 00        .byte $00   ; 
- D 0 - I - 0x009CCF 02:9CBF: 00        .byte $00   ; 
- D 0 - I - 0x009CD0 02:9CC0: 00        .byte $00   ; 
- D 0 - I - 0x009CD1 02:9CC1: 00        .byte $00   ; 
- D 0 - I - 0x009CD2 02:9CC2: 00        .byte $00   ; 
- D 0 - I - 0x009CD3 02:9CC3: 00        .byte $00   ; 
- D 0 - I - 0x009CD4 02:9CC4: 00        .byte $00   ; 
- D 0 - I - 0x009CD5 02:9CC5: 00        .byte $00   ; 
- D 0 - I - 0x009CD6 02:9CC6: 00        .byte $00   ; 
- D 0 - I - 0x009CD7 02:9CC7: 00        .byte $00   ; 
- D 0 - I - 0x009CD8 02:9CC8: 00        .byte $00   ; 
- D 0 - I - 0x009CD9 02:9CC9: 06        .byte $06   ; 
- D 0 - I - 0x009CDA 02:9CCA: 08        .byte $08   ; 
- D 0 - I - 0x009CDB 02:9CCB: 6B        .byte $6B   ; <k>
- D 0 - I - 0x009CDC 02:9CCC: 6E        .byte $6E   ; <n>
- D 0 - I - 0x009CDD 02:9CCD: 0B        .byte $0B   ; 
- D 0 - I - 0x009CDE 02:9CCE: 2A        .byte $2A   ; 
- D 0 - I - 0x009CDF 02:9CCF: 60        .byte $60   ; 
- D 0 - I - 0x009CE0 02:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x009CE1 02:9CD1: 36        .byte $36   ; <6>
- D 0 - I - 0x009CE2 02:9CD2: 11        .byte $11   ; 
- D 0 - I - 0x009CE3 02:9CD3: 16        .byte $16   ; 
- D 0 - I - 0x009CE4 02:9CD4: 00        .byte $00   ; 
- D 0 - I - 0x009CE5 02:9CD5: 14        .byte $14   ; 
- D 0 - I - 0x009CE6 02:9CD6: 11        .byte $11   ; 
- D 0 - I - 0x009CE7 02:9CD7: 36        .byte $36   ; <6>
- D 0 - I - 0x009CE8 02:9CD8: 1D        .byte $1D   ; 
- D 0 - I - 0x009CE9 02:9CD9: 34        .byte $34   ; <4>
- D 0 - I - 0x009CEA 02:9CDA: 15        .byte $15   ; 
- D 0 - I - 0x009CEB 02:9CDB: 60        .byte $60   ; 
- D 0 - I - 0x009CEC 02:9CDC: 00        .byte $00   ; 
- D 0 - I - 0x009CED 02:9CDD: 00        .byte $00   ; 
- D 0 - I - 0x009CEE 02:9CDE: 00        .byte $00   ; 
- D 0 - I - 0x009CEF 02:9CDF: 00        .byte $00   ; 
- D 0 - I - 0x009CF0 02:9CE0: 7E        .byte $7E   ; 
- D 0 - I - 0x009CF1 02:9CE1: 00        .byte $00   ; 
- D 0 - I - 0x009CF2 02:9CE2: 00        .byte $00   ; 
- D 0 - I - 0x009CF3 02:9CE3: 7E        .byte $7E   ; 
- D 0 - I - 0x009CF4 02:9CE4: 00        .byte $00   ; 
- D 0 - I - 0x009CF5 02:9CE5: 00        .byte $00   ; 
- D 0 - I - 0x009CF6 02:9CE6: 00        .byte $00   ; 
- D 0 - I - 0x009CF7 02:9CE7: 00        .byte $00   ; 
- D 0 - I - 0x009CF8 02:9CE8: 00        .byte $00   ; 
- D 0 - I - 0x009CF9 02:9CE9: 00        .byte $00   ; 
- D 0 - I - 0x009CFA 02:9CEA: 00        .byte $00   ; 
- D 0 - I - 0x009CFB 02:9CEB: 00        .byte $00   ; 
- D 0 - I - 0x009CFC 02:9CEC: 00        .byte $00   ; 
- D 0 - I - 0x009CFD 02:9CED: 00        .byte $00   ; 
- D 0 - I - 0x009CFE 02:9CEE: 00        .byte $00   ; 
- D 0 - I - 0x009CFF 02:9CEF: 7E        .byte $7E   ; 
- D 0 - I - 0x009D00 02:9CF0: 00        .byte $00   ; 
- D 0 - I - 0x009D01 02:9CF1: 2C        .byte $2C   ; 
- D 0 - I - 0x009D02 02:9CF2: 24        .byte $24   ; 
- D 0 - I - 0x009D03 02:9CF3: 1A        .byte $1A   ; 
- D 0 - I - 0x009D04 02:9CF4: 37        .byte $37   ; <7>
- D 0 - I - 0x009D05 02:9CF5: 00        .byte $00   ; 
- D 0 - I - 0x009D06 02:9CF6: 2F        .byte $2F   ; 
- D 0 - I - 0x009D07 02:9CF7: 39        .byte $39   ; <9>
- D 0 - I - 0x009D08 02:9CF8: 2C        .byte $2C   ; 
- D 0 - I - 0x009D09 02:9CF9: 28        .byte $28   ; 
- D 0 - I - 0x009D0A 02:9CFA: 00        .byte $00   ; 
- D 0 - I - 0x009D0B 02:9CFB: 2E        .byte $2E   ; 
- D 0 - I - 0x009D0C 02:9CFC: 13        .byte $13   ; 
- D 0 - I - 0x009D0D 02:9CFD: 24        .byte $24   ; 
- D 0 - I - 0x009D0E 02:9CFE: 38        .byte $38   ; <8>
- D 0 - I - 0x009D0F 02:9CFF: 00        .byte $00   ; 
- D 0 - I - 0x009D10 02:9D00: 30        .byte $30   ; <0>
- D 0 - I - 0x009D11 02:9D01: 21        .byte $21   ; 
- D 0 - I - 0x009D12 02:9D02: 12        .byte $12   ; 
- D 0 - I - 0x009D13 02:9D03: 32        .byte $32   ; <2>
- D 0 - I - 0x009D14 02:9D04: 60        .byte $60   ; 
- D 0 - I - 0x009D15 02:9D05: 7F        .byte $7F   ; 
- D 0 - I - 0x009D16 02:9D06: 00        .byte $00   ; 
- D 0 - I - 0x009D17 02:9D07: 7E        .byte $7E   ; 
- D 0 - I - 0x009D18 02:9D08: 00        .byte $00   ; 
- D 0 - I - 0x009D19 02:9D09: 00        .byte $00   ; 
- D 0 - I - 0x009D1A 02:9D0A: 00        .byte $00   ; 
- D 0 - I - 0x009D1B 02:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x009D1C 02:9D0C: 00        .byte $00   ; 
- D 0 - I - 0x009D1D 02:9D0D: 00        .byte $00   ; 
- D 0 - I - 0x009D1E 02:9D0E: 00        .byte $00   ; 
- D 0 - I - 0x009D1F 02:9D0F: 00        .byte $00   ; 
- D 0 - I - 0x009D20 02:9D10: 00        .byte $00   ; 
- D 0 - I - 0x009D21 02:9D11: 7E        .byte $7E   ; 
- D 0 - I - 0x009D22 02:9D12: 00        .byte $00   ; 
- D 0 - I - 0x009D23 02:9D13: 00        .byte $00   ; 
- D 0 - I - 0x009D24 02:9D14: 00        .byte $00   ; 
- D 0 - I - 0x009D25 02:9D15: 00        .byte $00   ; 
- D 0 - I - 0x009D26 02:9D16: 00        .byte $00   ; 
- D 0 - I - 0x009D27 02:9D17: 00        .byte $00   ; 
- D 0 - I - 0x009D28 02:9D18: 00        .byte $00   ; 
- D 0 - I - 0x009D29 02:9D19: 05        .byte $05   ; 
- D 0 - I - 0x009D2A 02:9D1A: 6C        .byte $6C   ; <l>
- D 0 - I - 0x009D2B 02:9D1B: 0B        .byte $0B   ; 
- D 0 - I - 0x009D2C 02:9D1C: 08        .byte $08   ; 
- D 0 - I - 0x009D2D 02:9D1D: 19        .byte $19   ; 
- D 0 - I - 0x009D2E 02:9D1E: 11        .byte $11   ; 
- D 0 - I - 0x009D2F 02:9D1F: 2F        .byte $2F   ; 
- D 0 - I - 0x009D30 02:9D20: 29        .byte $29   ; 
- D 0 - I - 0x009D31 02:9D21: 00        .byte $00   ; 
- D 0 - I - 0x009D32 02:9D22: 14        .byte $14   ; 
- D 0 - I - 0x009D33 02:9D23: 29        .byte $29   ; 
- D 0 - I - 0x009D34 02:9D24: 15        .byte $15   ; 
- D 0 - I - 0x009D35 02:9D25: 03        .byte $03   ; 
- D 0 - I - 0x009D36 02:9D26: 0A        .byte $0A   ; 
- D 0 - I - 0x009D37 02:9D27: 00        .byte $00   ; 
- D 0 - I - 0x009D38 02:9D28: 2C        .byte $2C   ; 
- D 0 - I - 0x009D39 02:9D29: 2F        .byte $2F   ; 
- D 0 - I - 0x009D3A 02:9D2A: 11        .byte $11   ; 
- D 0 - I - 0x009D3B 02:9D2B: 15        .byte $15   ; 
- D 0 - I - 0x009D3C 02:9D2C: 60        .byte $60   ; 
- D 0 - I - 0x009D3D 02:9D2D: 00        .byte $00   ; 
- D 0 - I - 0x009D3E 02:9D2E: 00        .byte $00   ; 
- D 0 - I - 0x009D3F 02:9D2F: 00        .byte $00   ; 
- D 0 - I - 0x009D40 02:9D30: 00        .byte $00   ; 
- D 0 - I - 0x009D41 02:9D31: 00        .byte $00   ; 
- D 0 - I - 0x009D42 02:9D32: 00        .byte $00   ; 
- D 0 - I - 0x009D43 02:9D33: 00        .byte $00   ; 
- D 0 - I - 0x009D44 02:9D34: 7E        .byte $7E   ; 
- D 0 - I - 0x009D45 02:9D35: 00        .byte $00   ; 
- D 0 - I - 0x009D46 02:9D36: 00        .byte $00   ; 
- D 0 - I - 0x009D47 02:9D37: 00        .byte $00   ; 
- D 0 - I - 0x009D48 02:9D38: 00        .byte $00   ; 
- D 0 - I - 0x009D49 02:9D39: 00        .byte $00   ; 
- D 0 - I - 0x009D4A 02:9D3A: 00        .byte $00   ; 
- D 0 - I - 0x009D4B 02:9D3B: 00        .byte $00   ; 
- D 0 - I - 0x009D4C 02:9D3C: 00        .byte $00   ; 
- D 0 - I - 0x009D4D 02:9D3D: 00        .byte $00   ; 
- D 0 - I - 0x009D4E 02:9D3E: 00        .byte $00   ; 
- D 0 - I - 0x009D4F 02:9D3F: 00        .byte $00   ; 
- D 0 - I - 0x009D50 02:9D40: 00        .byte $00   ; 
- D 0 - I - 0x009D51 02:9D41: 14        .byte $14   ; 
- D 0 - I - 0x009D52 02:9D42: 25        .byte $25   ; 
- D 0 - I - 0x009D53 02:9D43: 38        .byte $38   ; <8>
- D 0 - I - 0x009D54 02:9D44: 30        .byte $30   ; <0>
- D 0 - I - 0x009D55 02:9D45: 34        .byte $34   ; <4>
- D 0 - I - 0x009D56 02:9D46: 2E        .byte $2E   ; 
- D 0 - I - 0x009D57 02:9D47: 38        .byte $38   ; <8>
- D 0 - I - 0x009D58 02:9D48: 2A        .byte $2A   ; 
- D 0 - I - 0x009D59 02:9D49: 00        .byte $00   ; 
- D 0 - I - 0x009D5A 02:9D4A: 00        .byte $00   ; 
- D 0 - I - 0x009D5B 02:9D4B: 00        .byte $00   ; 
- D 0 - I - 0x009D5C 02:9D4C: 00        .byte $00   ; 
- D 0 - I - 0x009D5D 02:9D4D: 00        .byte $00   ; 
- D 0 - I - 0x009D5E 02:9D4E: 00        .byte $00   ; 
- D 0 - I - 0x009D5F 02:9D4F: 00        .byte $00   ; 
- D 0 - I - 0x009D60 02:9D50: 00        .byte $00   ; 
- D 0 - I - 0x009D61 02:9D51: 00        .byte $00   ; 
- D 0 - I - 0x009D62 02:9D52: 00        .byte $00   ; 
- D 0 - I - 0x009D63 02:9D53: 00        .byte $00   ; 
- D 0 - I - 0x009D64 02:9D54: 00        .byte $00   ; 
- D 0 - I - 0x009D65 02:9D55: 00        .byte $00   ; 
- D 0 - I - 0x009D66 02:9D56: 00        .byte $00   ; 
- D 0 - I - 0x009D67 02:9D57: 00        .byte $00   ; 
- D 0 - I - 0x009D68 02:9D58: 00        .byte $00   ; 
- D 0 - I - 0x009D69 02:9D59: 00        .byte $00   ; 
- D 0 - I - 0x009D6A 02:9D5A: 7E        .byte $7E   ; 
- D 0 - I - 0x009D6B 02:9D5B: 00        .byte $00   ; 
- D 0 - I - 0x009D6C 02:9D5C: 00        .byte $00   ; 
- D 0 - I - 0x009D6D 02:9D5D: 00        .byte $00   ; 
- D 0 - I - 0x009D6E 02:9D5E: 00        .byte $00   ; 
- D 0 - I - 0x009D6F 02:9D5F: 00        .byte $00   ; 
- D 0 - I - 0x009D70 02:9D60: 00        .byte $00   ; 
- D 0 - I - 0x009D71 02:9D61: 00        .byte $00   ; 
- D 0 - I - 0x009D72 02:9D62: 00        .byte $00   ; 
- D 0 - I - 0x009D73 02:9D63: 00        .byte $00   ; 
- D 0 - I - 0x009D74 02:9D64: 00        .byte $00   ; 
- D 0 - I - 0x009D75 02:9D65: 00        .byte $00   ; 
- D 0 - I - 0x009D76 02:9D66: 00        .byte $00   ; 
- D 0 - I - 0x009D77 02:9D67: 00        .byte $00   ; 
- D 0 - I - 0x009D78 02:9D68: 00        .byte $00   ; 
- D 0 - I - 0x009D79 02:9D69: 10        .byte $10   ; 
- D 0 - I - 0x009D7A 02:9D6A: 23        .byte $23   ; 
- D 0 - I - 0x009D7B 02:9D6B: 62        .byte $62   ; <b>
- D 0 - I - 0x009D7C 02:9D6C: 1A        .byte $1A   ; 
- D 0 - I - 0x009D7D 02:9D6D: 00        .byte $00   ; 
- D 0 - I - 0x009D7E 02:9D6E: 38        .byte $38   ; <8>
- D 0 - I - 0x009D7F 02:9D6F: 3F        .byte $3F   ; 
- D 0 - I - 0x009D80 02:9D70: 34        .byte $34   ; <4>
- D 0 - I - 0x009D81 02:9D71: 19        .byte $19   ; 
- D 0 - I - 0x009D82 02:9D72: 00        .byte $00   ; 
- D 0 - I - 0x009D83 02:9D73: 00        .byte $00   ; 
- D 0 - I - 0x009D84 02:9D74: 00        .byte $00   ; 
- D 0 - I - 0x009D85 02:9D75: 00        .byte $00   ; 
- D 0 - I - 0x009D86 02:9D76: 00        .byte $00   ; 
- D 0 - I - 0x009D87 02:9D77: 00        .byte $00   ; 
- D 0 - I - 0x009D88 02:9D78: 00        .byte $00   ; 
- D 0 - I - 0x009D89 02:9D79: 00        .byte $00   ; 
- D 0 - I - 0x009D8A 02:9D7A: 00        .byte $00   ; 
- D 0 - I - 0x009D8B 02:9D7B: 00        .byte $00   ; 
- D 0 - I - 0x009D8C 02:9D7C: 00        .byte $00   ; 
- D 0 - I - 0x009D8D 02:9D7D: 00        .byte $00   ; 
- D 0 - I - 0x009D8E 02:9D7E: 00        .byte $00   ; 
- D 0 - I - 0x009D8F 02:9D7F: 7E        .byte $7E   ; 
- D 0 - I - 0x009D90 02:9D80: 00        .byte $00   ; 
- D 0 - I - 0x009D91 02:9D81: 00        .byte $00   ; 
- D 0 - I - 0x009D92 02:9D82: 00        .byte $00   ; 
- D 0 - I - 0x009D93 02:9D83: 00        .byte $00   ; 
- D 0 - I - 0x009D94 02:9D84: 00        .byte $00   ; 
- D 0 - I - 0x009D95 02:9D85: 00        .byte $00   ; 
- D 0 - I - 0x009D96 02:9D86: 00        .byte $00   ; 
- D 0 - I - 0x009D97 02:9D87: 00        .byte $00   ; 
- D 0 - I - 0x009D98 02:9D88: 00        .byte $00   ; 
- D 0 - I - 0x009D99 02:9D89: 00        .byte $00   ; 
- D 0 - I - 0x009D9A 02:9D8A: 00        .byte $00   ; 
- D 0 - I - 0x009D9B 02:9D8B: 00        .byte $00   ; 
- D 0 - I - 0x009D9C 02:9D8C: 00        .byte $00   ; 
- D 0 - I - 0x009D9D 02:9D8D: 00        .byte $00   ; 
- D 0 - I - 0x009D9E 02:9D8E: 00        .byte $00   ; 
- D 0 - I - 0x009D9F 02:9D8F: 00        .byte $00   ; 
- D 0 - I - 0x009DA0 02:9D90: 00        .byte $00   ; 
- D 0 - I - 0x009DA1 02:9D91: 1D        .byte $1D   ; 
- D 0 - I - 0x009DA2 02:9D92: 29        .byte $29   ; 
- D 0 - I - 0x009DA3 02:9D93: 0F        .byte $0F   ; 
- D 0 - I - 0x009DA4 02:9D94: 2C        .byte $2C   ; 
- D 0 - I - 0x009DA5 02:9D95: 18        .byte $18   ; 
- D 0 - I - 0x009DA6 02:9D96: 13        .byte $13   ; 
- D 0 - I - 0x009DA7 02:9D97: 00        .byte $00   ; 
- D 0 - I - 0x009DA8 02:9D98: 00        .byte $00   ; 
- D 0 - I - 0x009DA9 02:9D99: 00        .byte $00   ; 
- D 0 - I - 0x009DAA 02:9D9A: 00        .byte $00   ; 
- D 0 - I - 0x009DAB 02:9D9B: 00        .byte $00   ; 
- D 0 - I - 0x009DAC 02:9D9C: 00        .byte $00   ; 
- D 0 - I - 0x009DAD 02:9D9D: 00        .byte $00   ; 
- D 0 - I - 0x009DAE 02:9D9E: 00        .byte $00   ; 
- D 0 - I - 0x009DAF 02:9D9F: 00        .byte $00   ; 
- D 0 - I - 0x009DB0 02:9DA0: 00        .byte $00   ; 
- D 0 - I - 0x009DB1 02:9DA1: 00        .byte $00   ; 
- D 0 - I - 0x009DB2 02:9DA2: 00        .byte $00   ; 
- D 0 - I - 0x009DB3 02:9DA3: 00        .byte $00   ; 
- D 0 - I - 0x009DB4 02:9DA4: 00        .byte $00   ; 
- D 0 - I - 0x009DB5 02:9DA5: 00        .byte $00   ; 
- D 0 - I - 0x009DB6 02:9DA6: 00        .byte $00   ; 
- D 0 - I - 0x009DB7 02:9DA7: 00        .byte $00   ; 
- D 0 - I - 0x009DB8 02:9DA8: 7E        .byte $7E   ; 
- D 0 - I - 0x009DB9 02:9DA9: 00        .byte $00   ; 
- D 0 - I - 0x009DBA 02:9DAA: 7E        .byte $7E   ; 
- D 0 - I - 0x009DBB 02:9DAB: 00        .byte $00   ; 
- D 0 - I - 0x009DBC 02:9DAC: 00        .byte $00   ; 
- D 0 - I - 0x009DBD 02:9DAD: 00        .byte $00   ; 
- D 0 - I - 0x009DBE 02:9DAE: 00        .byte $00   ; 
- D 0 - I - 0x009DBF 02:9DAF: 00        .byte $00   ; 
- D 0 - I - 0x009DC0 02:9DB0: 00        .byte $00   ; 
- D 0 - I - 0x009DC1 02:9DB1: 00        .byte $00   ; 
- D 0 - I - 0x009DC2 02:9DB2: 00        .byte $00   ; 
- D 0 - I - 0x009DC3 02:9DB3: 00        .byte $00   ; 
- D 0 - I - 0x009DC4 02:9DB4: 00        .byte $00   ; 
- D 0 - I - 0x009DC5 02:9DB5: 00        .byte $00   ; 
- D 0 - I - 0x009DC6 02:9DB6: 00        .byte $00   ; 
- D 0 - I - 0x009DC7 02:9DB7: 00        .byte $00   ; 
- D 0 - I - 0x009DC8 02:9DB8: 00        .byte $00   ; 
- D 0 - I - 0x009DC9 02:9DB9: 15        .byte $15   ; 
- D 0 - I - 0x009DCA 02:9DBA: 29        .byte $29   ; 
- D 0 - I - 0x009DCB 02:9DBB: 37        .byte $37   ; <7>
- D 0 - I - 0x009DCC 02:9DBC: 2F        .byte $2F   ; 
- D 0 - I - 0x009DCD 02:9DBD: 1A        .byte $1A   ; 
- D 0 - I - 0x009DCE 02:9DBE: 34        .byte $34   ; <4>
- D 0 - I - 0x009DCF 02:9DBF: 11        .byte $11   ; 
- D 0 - I - 0x009DD0 02:9DC0: 00        .byte $00   ; 
- D 0 - I - 0x009DD1 02:9DC1: 00        .byte $00   ; 
- D 0 - I - 0x009DD2 02:9DC2: 00        .byte $00   ; 
- D 0 - I - 0x009DD3 02:9DC3: 00        .byte $00   ; 
- D 0 - I - 0x009DD4 02:9DC4: 00        .byte $00   ; 
- D 0 - I - 0x009DD5 02:9DC5: 00        .byte $00   ; 
- D 0 - I - 0x009DD6 02:9DC6: 00        .byte $00   ; 
- D 0 - I - 0x009DD7 02:9DC7: 00        .byte $00   ; 
- D 0 - I - 0x009DD8 02:9DC8: 00        .byte $00   ; 
- D 0 - I - 0x009DD9 02:9DC9: 00        .byte $00   ; 
- D 0 - I - 0x009DDA 02:9DCA: 00        .byte $00   ; 
- D 0 - I - 0x009DDB 02:9DCB: 00        .byte $00   ; 
- D 0 - I - 0x009DDC 02:9DCC: 00        .byte $00   ; 
- D 0 - I - 0x009DDD 02:9DCD: 31        .byte $31   ; <1>
- D 0 - I - 0x009DDE 02:9DCE: 1A        .byte $1A   ; 
- D 0 - I - 0x009DDF 02:9DCF: 17        .byte $17   ; 
- D 0 - I - 0x009DE0 02:9DD0: 00        .byte $00   ; 
- D 0 - I - 0x009DE1 02:9DD1: 00        .byte $00   ; 
- D 0 - I - 0x009DE2 02:9DD2: 00        .byte $00   ; 
- D 0 - I - 0x009DE3 02:9DD3: 00        .byte $00   ; 
- D 0 - I - 0x009DE4 02:9DD4: 00        .byte $00   ; 
- D 0 - I - 0x009DE5 02:9DD5: 00        .byte $00   ; 
- D 0 - I - 0x009DE6 02:9DD6: 00        .byte $00   ; 
- D 0 - I - 0x009DE7 02:9DD7: 00        .byte $00   ; 
- D 0 - I - 0x009DE8 02:9DD8: 00        .byte $00   ; 
- D 0 - I - 0x009DE9 02:9DD9: 00        .byte $00   ; 
- D 0 - I - 0x009DEA 02:9DDA: 00        .byte $00   ; 
- D 0 - I - 0x009DEB 02:9DDB: 00        .byte $00   ; 
- D 0 - I - 0x009DEC 02:9DDC: 00        .byte $00   ; 
- D 0 - I - 0x009DED 02:9DDD: 00        .byte $00   ; 
- D 0 - I - 0x009DEE 02:9DDE: 00        .byte $00   ; 
- D 0 - I - 0x009DEF 02:9DDF: 00        .byte $00   ; 
- D 0 - I - 0x009DF0 02:9DE0: 00        .byte $00   ; 
- D 0 - I - 0x009DF1 02:9DE1: 00        .byte $00   ; 
- D 0 - I - 0x009DF2 02:9DE2: 00        .byte $00   ; 
- D 0 - I - 0x009DF3 02:9DE3: 00        .byte $00   ; 
- D 0 - I - 0x009DF4 02:9DE4: 7E        .byte $7E   ; 
- D 0 - I - 0x009DF5 02:9DE5: 7E        .byte $7E   ; 
- D 0 - I - 0x009DF6 02:9DE6: 00        .byte $00   ; 
- D 0 - I - 0x009DF7 02:9DE7: 00        .byte $00   ; 
- D 0 - I - 0x009DF8 02:9DE8: 00        .byte $00   ; 
- D 0 - I - 0x009DF9 02:9DE9: 00        .byte $00   ; 
- D 0 - I - 0x009DFA 02:9DEA: 00        .byte $00   ; 
- D 0 - I - 0x009DFB 02:9DEB: 00        .byte $00   ; 
- D 0 - I - 0x009DFC 02:9DEC: 00        .byte $00   ; 
- D 0 - I - 0x009DFD 02:9DED: 00        .byte $00   ; 
- D 0 - I - 0x009DFE 02:9DEE: 00        .byte $00   ; 
- D 0 - I - 0x009DFF 02:9DEF: 00        .byte $00   ; 
- D 0 - I - 0x009E00 02:9DF0: 00        .byte $00   ; 
- D 0 - I - 0x009E01 02:9DF1: 00        .byte $00   ; 
- D 0 - I - 0x009E02 02:9DF2: 00        .byte $00   ; 
- D 0 - I - 0x009E03 02:9DF3: 00        .byte $00   ; 
- D 0 - I - 0x009E04 02:9DF4: 00        .byte $00   ; 
- D 0 - I - 0x009E05 02:9DF5: 12        .byte $12   ; 
- D 0 - I - 0x009E06 02:9DF6: 2A        .byte $2A   ; 
- D 0 - I - 0x009E07 02:9DF7: 36        .byte $36   ; <6>
- D 0 - I - 0x009E08 02:9DF8: 34        .byte $34   ; <4>
- D 0 - I - 0x009E09 02:9DF9: 33        .byte $33   ; <3>
- D 0 - I - 0x009E0A 02:9DFA: 00        .byte $00   ; 
- D 0 - I - 0x009E0B 02:9DFB: 00        .byte $00   ; 
- D 0 - I - 0x009E0C 02:9DFC: 00        .byte $00   ; 
- D 0 - I - 0x009E0D 02:9DFD: 00        .byte $00   ; 
- D 0 - I - 0x009E0E 02:9DFE: 00        .byte $00   ; 
- D 0 - I - 0x009E0F 02:9DFF: 00        .byte $00   ; 
- D 0 - I - 0x009E10 02:9E00: 00        .byte $00   ; 
- D 0 - I - 0x009E11 02:9E01: 00        .byte $00   ; 
- D 0 - I - 0x009E12 02:9E02: 00        .byte $00   ; 
- D 0 - I - 0x009E13 02:9E03: 00        .byte $00   ; 
- D 0 - I - 0x009E14 02:9E04: 00        .byte $00   ; 
- D 0 - I - 0x009E15 02:9E05: 00        .byte $00   ; 
- D 0 - I - 0x009E16 02:9E06: 00        .byte $00   ; 
- D 0 - I - 0x009E17 02:9E07: 00        .byte $00   ; 
- D 0 - I - 0x009E18 02:9E08: 00        .byte $00   ; 
- D 0 - I - 0x009E19 02:9E09: 7E        .byte $7E   ; 
- D 0 - I - 0x009E1A 02:9E0A: 00        .byte $00   ; 
- D 0 - I - 0x009E1B 02:9E0B: 00        .byte $00   ; 
- D 0 - I - 0x009E1C 02:9E0C: 00        .byte $00   ; 
- D 0 - I - 0x009E1D 02:9E0D: 00        .byte $00   ; 
- D 0 - I - 0x009E1E 02:9E0E: 00        .byte $00   ; 
- D 0 - I - 0x009E1F 02:9E0F: 00        .byte $00   ; 
- D 0 - I - 0x009E20 02:9E10: 00        .byte $00   ; 
- D 0 - I - 0x009E21 02:9E11: 00        .byte $00   ; 
- D 0 - I - 0x009E22 02:9E12: 00        .byte $00   ; 
- D 0 - I - 0x009E23 02:9E13: 00        .byte $00   ; 
- D 0 - I - 0x009E24 02:9E14: 00        .byte $00   ; 
- D 0 - I - 0x009E25 02:9E15: 00        .byte $00   ; 
- D 0 - I - 0x009E26 02:9E16: 00        .byte $00   ; 
- D 0 - I - 0x009E27 02:9E17: 00        .byte $00   ; 
- D 0 - I - 0x009E28 02:9E18: 00        .byte $00   ; 
- D 0 - I - 0x009E29 02:9E19: 00        .byte $00   ; 
- D 0 - I - 0x009E2A 02:9E1A: 00        .byte $00   ; 
- D 0 - I - 0x009E2B 02:9E1B: 00        .byte $00   ; 
- D 0 - I - 0x009E2C 02:9E1C: 00        .byte $00   ; 
- D 0 - I - 0x009E2D 02:9E1D: 34        .byte $34   ; <4>
- D 0 - I - 0x009E2E 02:9E1E: 25        .byte $25   ; 
- D 0 - I - 0x009E2F 02:9E1F: 2A        .byte $2A   ; 
- D 0 - I - 0x009E30 02:9E20: 00        .byte $00   ; 
- D 0 - I - 0x009E31 02:9E21: 2A        .byte $2A   ; 
- D 0 - I - 0x009E32 02:9E22: 27        .byte $27   ; 
- D 0 - I - 0x009E33 02:9E23: 3F        .byte $3F   ; 
- D 0 - I - 0x009E34 02:9E24: 37        .byte $37   ; <7>
- D 0 - I - 0x009E35 02:9E25: 2C        .byte $2C   ; 
- D 0 - I - 0x009E36 02:9E26: 29        .byte $29   ; 
- D 0 - I - 0x009E37 02:9E27: 15        .byte $15   ; 
- D 0 - I - 0x009E38 02:9E28: 11        .byte $11   ; 
- D 0 - I - 0x009E39 02:9E29: 00        .byte $00   ; 
- D 0 - I - 0x009E3A 02:9E2A: 00        .byte $00   ; 
- D 0 - I - 0x009E3B 02:9E2B: 00        .byte $00   ; 
- D 0 - I - 0x009E3C 02:9E2C: 00        .byte $00   ; 
- D 0 - I - 0x009E3D 02:9E2D: 00        .byte $00   ; 
- D 0 - I - 0x009E3E 02:9E2E: 00        .byte $00   ; 
- D 0 - I - 0x009E3F 02:9E2F: 00        .byte $00   ; 
- D 0 - I - 0x009E40 02:9E30: 00        .byte $00   ; 
- D 0 - I - 0x009E41 02:9E31: 00        .byte $00   ; 
- D 0 - I - 0x009E42 02:9E32: 00        .byte $00   ; 
- D 0 - I - 0x009E43 02:9E33: 00        .byte $00   ; 
- D 0 - I - 0x009E44 02:9E34: 00        .byte $00   ; 
- D 0 - I - 0x009E45 02:9E35: 00        .byte $00   ; 
- D 0 - I - 0x009E46 02:9E36: 00        .byte $00   ; 
- D 0 - I - 0x009E47 02:9E37: 7E        .byte $7E   ; 
- D 0 - I - 0x009E48 02:9E38: 00        .byte $00   ; 
- D 0 - I - 0x009E49 02:9E39: 00        .byte $00   ; 
- D 0 - I - 0x009E4A 02:9E3A: 00        .byte $00   ; 
- D 0 - I - 0x009E4B 02:9E3B: 00        .byte $00   ; 
- D 0 - I - 0x009E4C 02:9E3C: 00        .byte $00   ; 
- D 0 - I - 0x009E4D 02:9E3D: 00        .byte $00   ; 
- D 0 - I - 0x009E4E 02:9E3E: 00        .byte $00   ; 
- D 0 - I - 0x009E4F 02:9E3F: 00        .byte $00   ; 
- D 0 - I - 0x009E50 02:9E40: 00        .byte $00   ; 
- D 0 - I - 0x009E51 02:9E41: 00        .byte $00   ; 
- D 0 - I - 0x009E52 02:9E42: 00        .byte $00   ; 
- D 0 - I - 0x009E53 02:9E43: 00        .byte $00   ; 
- D 0 - I - 0x009E54 02:9E44: 00        .byte $00   ; 
- D 0 - I - 0x009E55 02:9E45: 30        .byte $30   ; <0>
- D 0 - I - 0x009E56 02:9E46: 63        .byte $63   ; <c>
- D 0 - I - 0x009E57 02:9E47: 1F        .byte $1F   ; 
- D 0 - I - 0x009E58 02:9E48: 2C        .byte $2C   ; 
- D 0 - I - 0x009E59 02:9E49: 19        .byte $19   ; 
- D 0 - I - 0x009E5A 02:9E4A: 14        .byte $14   ; 
- D 0 - I - 0x009E5B 02:9E4B: 37        .byte $37   ; <7>
- D 0 - I - 0x009E5C 02:9E4C: 1A        .byte $1A   ; 
- D 0 - I - 0x009E5D 02:9E4D: 30        .byte $30   ; <0>
- D 0 - I - 0x009E5E 02:9E4E: 2A        .byte $2A   ; 
- D 0 - I - 0x009E5F 02:9E4F: 15        .byte $15   ; 
- D 0 - I - 0x009E60 02:9E50: 00        .byte $00   ; 
- D 0 - I - 0x009E61 02:9E51: 00        .byte $00   ; 
- D 0 - I - 0x009E62 02:9E52: 00        .byte $00   ; 
- D 0 - I - 0x009E63 02:9E53: 00        .byte $00   ; 
- D 0 - I - 0x009E64 02:9E54: 00        .byte $00   ; 
- D 0 - I - 0x009E65 02:9E55: 00        .byte $00   ; 
- D 0 - I - 0x009E66 02:9E56: 00        .byte $00   ; 
- D 0 - I - 0x009E67 02:9E57: 00        .byte $00   ; 
- D 0 - I - 0x009E68 02:9E58: 00        .byte $00   ; 
- D 0 - I - 0x009E69 02:9E59: 00        .byte $00   ; 
- D 0 - I - 0x009E6A 02:9E5A: 00        .byte $00   ; 
- D 0 - I - 0x009E6B 02:9E5B: 00        .byte $00   ; 
- D 0 - I - 0x009E6C 02:9E5C: 00        .byte $00   ; 
- D 0 - I - 0x009E6D 02:9E5D: 7E        .byte $7E   ; 
- D 0 - I - 0x009E6E 02:9E5E: 00        .byte $00   ; 
- D 0 - I - 0x009E6F 02:9E5F: 00        .byte $00   ; 
- D 0 - I - 0x009E70 02:9E60: 00        .byte $00   ; 
- D 0 - I - 0x009E71 02:9E61: 7E        .byte $7E   ; 
- D 0 - I - 0x009E72 02:9E62: 00        .byte $00   ; 
- D 0 - I - 0x009E73 02:9E63: 00        .byte $00   ; 
- D 0 - I - 0x009E74 02:9E64: 00        .byte $00   ; 
- D 0 - I - 0x009E75 02:9E65: 00        .byte $00   ; 
- D 0 - I - 0x009E76 02:9E66: 00        .byte $00   ; 
- D 0 - I - 0x009E77 02:9E67: 00        .byte $00   ; 
- D 0 - I - 0x009E78 02:9E68: 00        .byte $00   ; 
- D 0 - I - 0x009E79 02:9E69: 00        .byte $00   ; 
- D 0 - I - 0x009E7A 02:9E6A: 00        .byte $00   ; 
- D 0 - I - 0x009E7B 02:9E6B: 00        .byte $00   ; 
- D 0 - I - 0x009E7C 02:9E6C: 00        .byte $00   ; 
- D 0 - I - 0x009E7D 02:9E6D: 35        .byte $35   ; <5>
- D 0 - I - 0x009E7E 02:9E6E: 3E        .byte $3E   ; 
- D 0 - I - 0x009E7F 02:9E6F: 12        .byte $12   ; 
- D 0 - I - 0x009E80 02:9E70: 30        .byte $30   ; <0>
- D 0 - I - 0x009E81 02:9E71: 2A        .byte $2A   ; 
- D 0 - I - 0x009E82 02:9E72: 27        .byte $27   ; 
- D 0 - I - 0x009E83 02:9E73: 24        .byte $24   ; 
- D 0 - I - 0x009E84 02:9E74: 11        .byte $11   ; 
- D 0 - I - 0x009E85 02:9E75: 32        .byte $32   ; <2>
- D 0 - I - 0x009E86 02:9E76: 00        .byte $00   ; 
- D 0 - I - 0x009E87 02:9E77: 00        .byte $00   ; 
- D 0 - I - 0x009E88 02:9E78: 00        .byte $00   ; 
- D 0 - I - 0x009E89 02:9E79: 00        .byte $00   ; 
- D 0 - I - 0x009E8A 02:9E7A: 00        .byte $00   ; 
- D 0 - I - 0x009E8B 02:9E7B: 00        .byte $00   ; 
- D 0 - I - 0x009E8C 02:9E7C: 00        .byte $00   ; 
- D 0 - I - 0x009E8D 02:9E7D: 00        .byte $00   ; 
- D 0 - I - 0x009E8E 02:9E7E: 00        .byte $00   ; 
- D 0 - I - 0x009E8F 02:9E7F: 00        .byte $00   ; 
- D 0 - I - 0x009E90 02:9E80: 00        .byte $00   ; 
- D 0 - I - 0x009E91 02:9E81: 00        .byte $00   ; 
- D 0 - I - 0x009E92 02:9E82: 7E        .byte $7E   ; 
- D 0 - I - 0x009E93 02:9E83: 7E        .byte $7E   ; 
- D 0 - I - 0x009E94 02:9E84: 00        .byte $00   ; 
- D 0 - I - 0x009E95 02:9E85: 00        .byte $00   ; 
- D 0 - I - 0x009E96 02:9E86: 00        .byte $00   ; 
- D 0 - I - 0x009E97 02:9E87: 7E        .byte $7E   ; 
- D 0 - I - 0x009E98 02:9E88: 00        .byte $00   ; 
- D 0 - I - 0x009E99 02:9E89: 00        .byte $00   ; 
- D 0 - I - 0x009E9A 02:9E8A: 00        .byte $00   ; 
- D 0 - I - 0x009E9B 02:9E8B: 00        .byte $00   ; 
- D 0 - I - 0x009E9C 02:9E8C: 00        .byte $00   ; 
- D 0 - I - 0x009E9D 02:9E8D: 00        .byte $00   ; 
- D 0 - I - 0x009E9E 02:9E8E: 00        .byte $00   ; 
- D 0 - I - 0x009E9F 02:9E8F: 00        .byte $00   ; 
- D 0 - I - 0x009EA0 02:9E90: 00        .byte $00   ; 
- D 0 - I - 0x009EA1 02:9E91: 00        .byte $00   ; 
- D 0 - I - 0x009EA2 02:9E92: 00        .byte $00   ; 
- D 0 - I - 0x009EA3 02:9E93: 00        .byte $00   ; 
- D 0 - I - 0x009EA4 02:9E94: 00        .byte $00   ; 
- D 0 - I - 0x009EA5 02:9E95: 12        .byte $12   ; 
- D 0 - I - 0x009EA6 02:9E96: 37        .byte $37   ; <7>
- D 0 - I - 0x009EA7 02:9E97: 2A        .byte $2A   ; 
- D 0 - I - 0x009EA8 02:9E98: 00        .byte $00   ; 
- D 0 - I - 0x009EA9 02:9E99: 15        .byte $15   ; 
- D 0 - I - 0x009EAA 02:9E9A: 24        .byte $24   ; 
- D 0 - I - 0x009EAB 02:9E9B: 32        .byte $32   ; <2>
- D 0 - I - 0x009EAC 02:9E9C: 00        .byte $00   ; 
- D 0 - I - 0x009EAD 02:9E9D: 00        .byte $00   ; 
- D 0 - I - 0x009EAE 02:9E9E: 00        .byte $00   ; 
- D 0 - I - 0x009EAF 02:9E9F: 00        .byte $00   ; 
- D 0 - I - 0x009EB0 02:9EA0: 00        .byte $00   ; 
- D 0 - I - 0x009EB1 02:9EA1: 00        .byte $00   ; 
- D 0 - I - 0x009EB2 02:9EA2: 00        .byte $00   ; 
- D 0 - I - 0x009EB3 02:9EA3: 00        .byte $00   ; 
- D 0 - I - 0x009EB4 02:9EA4: 00        .byte $00   ; 
- D 0 - I - 0x009EB5 02:9EA5: 00        .byte $00   ; 
- D 0 - I - 0x009EB6 02:9EA6: 00        .byte $00   ; 
- D 0 - I - 0x009EB7 02:9EA7: 00        .byte $00   ; 
- D 0 - I - 0x009EB8 02:9EA8: 00        .byte $00   ; 
- D 0 - I - 0x009EB9 02:9EA9: 32        .byte $32   ; <2>
- D 0 - I - 0x009EBA 02:9EAA: 3F        .byte $3F   ; 
- D 0 - I - 0x009EBB 02:9EAB: 30        .byte $30   ; <0>
- D 0 - I - 0x009EBC 02:9EAC: 62        .byte $62   ; <b>
- D 0 - I - 0x009EBD 02:9EAD: 16        .byte $16   ; 
- D 0 - I - 0x009EBE 02:9EAE: 39        .byte $39   ; <9>
- D 0 - I - 0x009EBF 02:9EAF: 1C        .byte $1C   ; 
- D 0 - I - 0x009EC0 02:9EB0: 2A        .byte $2A   ; 
- D 0 - I - 0x009EC1 02:9EB1: 17        .byte $17   ; 
- D 0 - I - 0x009EC2 02:9EB2: 00        .byte $00   ; 
- D 0 - I - 0x009EC3 02:9EB3: 00        .byte $00   ; 
- D 0 - I - 0x009EC4 02:9EB4: 00        .byte $00   ; 
- D 0 - I - 0x009EC5 02:9EB5: 00        .byte $00   ; 
- D 0 - I - 0x009EC6 02:9EB6: 00        .byte $00   ; 
- D 0 - I - 0x009EC7 02:9EB7: 00        .byte $00   ; 
- D 0 - I - 0x009EC8 02:9EB8: 00        .byte $00   ; 
- D 0 - I - 0x009EC9 02:9EB9: 00        .byte $00   ; 
- D 0 - I - 0x009ECA 02:9EBA: 00        .byte $00   ; 
- D 0 - I - 0x009ECB 02:9EBB: 00        .byte $00   ; 
- D 0 - I - 0x009ECC 02:9EBC: 00        .byte $00   ; 
- D 0 - I - 0x009ECD 02:9EBD: 00        .byte $00   ; 
- D 0 - I - 0x009ECE 02:9EBE: 00        .byte $00   ; 
- D 0 - I - 0x009ECF 02:9EBF: 00        .byte $00   ; 
- D 0 - I - 0x009ED0 02:9EC0: 00        .byte $00   ; 
- D 0 - I - 0x009ED1 02:9EC1: 00        .byte $00   ; 
- D 0 - I - 0x009ED2 02:9EC2: 00        .byte $00   ; 
- D 0 - I - 0x009ED3 02:9EC3: 7E        .byte $7E   ; 
- D 0 - I - 0x009ED4 02:9EC4: 7E        .byte $7E   ; 
- D 0 - I - 0x009ED5 02:9EC5: 00        .byte $00   ; 
- D 0 - I - 0x009ED6 02:9EC6: 00        .byte $00   ; 
- D 0 - I - 0x009ED7 02:9EC7: 00        .byte $00   ; 
- D 0 - I - 0x009ED8 02:9EC8: 00        .byte $00   ; 
- D 0 - I - 0x009ED9 02:9EC9: 00        .byte $00   ; 
- D 0 - I - 0x009EDA 02:9ECA: 00        .byte $00   ; 
- D 0 - I - 0x009EDB 02:9ECB: 00        .byte $00   ; 
- D 0 - I - 0x009EDC 02:9ECC: 00        .byte $00   ; 
- D 0 - I - 0x009EDD 02:9ECD: 00        .byte $00   ; 
- D 0 - I - 0x009EDE 02:9ECE: 00        .byte $00   ; 
- D 0 - I - 0x009EDF 02:9ECF: 00        .byte $00   ; 
- D 0 - I - 0x009EE0 02:9ED0: 00        .byte $00   ; 
- D 0 - I - 0x009EE1 02:9ED1: 32        .byte $32   ; <2>
- D 0 - I - 0x009EE2 02:9ED2: 3F        .byte $3F   ; 
- D 0 - I - 0x009EE3 02:9ED3: 30        .byte $30   ; <0>
- D 0 - I - 0x009EE4 02:9ED4: 62        .byte $62   ; <b>
- D 0 - I - 0x009EE5 02:9ED5: 19        .byte $19   ; 
- D 0 - I - 0x009EE6 02:9ED6: 00        .byte $00   ; 
- D 0 - I - 0x009EE7 02:9ED7: 37        .byte $37   ; <7>
- D 0 - I - 0x009EE8 02:9ED8: 39        .byte $39   ; <9>
- D 0 - I - 0x009EE9 02:9ED9: 29        .byte $29   ; 
- D 0 - I - 0x009EEA 02:9EDA: 2A        .byte $2A   ; 
- D 0 - I - 0x009EEB 02:9EDB: 00        .byte $00   ; 
- D 0 - I - 0x009EEC 02:9EDC: 00        .byte $00   ; 
- D 0 - I - 0x009EED 02:9EDD: 00        .byte $00   ; 
- D 0 - I - 0x009EEE 02:9EDE: 00        .byte $00   ; 
- D 0 - I - 0x009EEF 02:9EDF: 00        .byte $00   ; 
- D 0 - I - 0x009EF0 02:9EE0: 00        .byte $00   ; 
- D 0 - I - 0x009EF1 02:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x009EF2 02:9EE2: 00        .byte $00   ; 
- D 0 - I - 0x009EF3 02:9EE3: 00        .byte $00   ; 
- D 0 - I - 0x009EF4 02:9EE4: 00        .byte $00   ; 
- - - - - - 0x009EF5 02:9EE5: 77        .byte $77   ; <w>
- - - - - - 0x009EF6 02:9EE6: 77        .byte $77   ; <w>
- - - - - - 0x009EF7 02:9EE7: 3F        .byte $3F   ; 
- - - - - - 0x009EF8 02:9EE8: 7F        .byte $7F   ; 
- - - - - - 0x009EF9 02:9EE9: FE        .byte $FE   ; 
- - - - - - 0x009EFA 02:9EEA: FE        .byte $FE   ; 
- - - - - - 0x009EFB 02:9EEB: 6E        .byte $6E   ; <n>
- - - - - - 0x009EFC 02:9EEC: 67        .byte $67   ; <g>
- - - - - - 0x009EFD 02:9EED: 77        .byte $77   ; <w>
- - - - - - 0x009EFE 02:9EEE: 77        .byte $77   ; <w>
- - - - - - 0x009EFF 02:9EEF: 3F        .byte $3F   ; 
- - - - - - 0x009F00 02:9EF0: 1C        .byte $1C   ; 
- - - - - - 0x009F01 02:9EF1: 3E        .byte $3E   ; 
- - - - - - 0x009F02 02:9EF2: 3E        .byte $3E   ; 
- - - - - - 0x009F03 02:9EF3: 3E        .byte $3E   ; 
- - - - - - 0x009F04 02:9EF4: 3E        .byte $3E   ; 
- - - - - - 0x009F05 02:9EF5: 1E        .byte $1E   ; 
- - - - - - 0x009F06 02:9EF6: 0E        .byte $0E   ; 
- - - - - - 0x009F07 02:9EF7: 06        .byte $06   ; 
- - - - - - 0x009F08 02:9EF8: 1C        .byte $1C   ; 
- - - - - - 0x009F09 02:9EF9: 3E        .byte $3E   ; 
- - - - - - 0x009F0A 02:9EFA: 36        .byte $36   ; <6>
- - - - - - 0x009F0B 02:9EFB: 30        .byte $30   ; <0>
- - - - - - 0x009F0C 02:9EFC: 34        .byte $34   ; <4>
- - - - - - 0x009F0D 02:9EFD: 00        .byte $00   ; 
- - - - - - 0x009F0E 02:9EFE: 30        .byte $30   ; <0>
- - - - - - 0x009F0F 02:9EFF: F8        .byte $F8   ; 
- - - - - - 0x009F10 02:9F00: 02        .byte $02   ; 
- - - - - - 0x009F11 02:9F01: 54        .byte $54   ; <T>
- - - - - - 0x009F12 02:9F02: 28        .byte $28   ; 
- - - - - - 0x009F13 02:9F03: 44        .byte $44   ; <D>
- - - - - - 0x009F14 02:9F04: C8        .byte $C8   ; 
- - - - - - 0x009F15 02:9F05: 60        .byte $60   ; 
- - - - - - 0x009F16 02:9F06: D8        .byte $D8   ; 
- - - - - - 0x009F17 02:9F07: 72        .byte $72   ; <r>
- - - - - - 0x009F18 02:9F08: 06        .byte $06   ; 
- - - - - - 0x009F19 02:9F09: 0E        .byte $0E   ; 
- - - - - - 0x009F1A 02:9F0A: 1C        .byte $1C   ; 
- - - - - - 0x009F1B 02:9F0B: 38        .byte $38   ; <8>
- - - - - - 0x009F1C 02:9F0C: 34        .byte $34   ; <4>
- - - - - - 0x009F1D 02:9F0D: 18        .byte $18   ; 
- - - - - - 0x009F1E 02:9F0E: 20        .byte $20   ; 
- - - - - - 0x009F1F 02:9F0F: 00        .byte $00   ; 
- - - - - - 0x009F20 02:9F10: 00        .byte $00   ; 
- - - - - - 0x009F21 02:9F11: 00        .byte $00   ; 
- - - - - - 0x009F22 02:9F12: 0F        .byte $0F   ; 
- - - - - - 0x009F23 02:9F13: 1C        .byte $1C   ; 
- - - - - - 0x009F24 02:9F14: 18        .byte $18   ; 
- - - - - - 0x009F25 02:9F15: 00        .byte $00   ; 
- - - - - - 0x009F26 02:9F16: 00        .byte $00   ; 
- - - - - - 0x009F27 02:9F17: 00        .byte $00   ; 
- - - - - - 0x009F28 02:9F18: 00        .byte $00   ; 
- - - - - - 0x009F29 02:9F19: 00        .byte $00   ; 
- - - - - - 0x009F2A 02:9F1A: 0F        .byte $0F   ; 
- - - - - - 0x009F2B 02:9F1B: EC        .byte $EC   ; 
- - - - - - 0x009F2C 02:9F1C: 38        .byte $38   ; <8>
- - - - - - 0x009F2D 02:9F1D: 00        .byte $00   ; 
- - - - - - 0x009F2E 02:9F1E: 00        .byte $00   ; 
- - - - - - 0x009F2F 02:9F1F: 00        .byte $00   ; 
- - - - - - 0x009F30 02:9F20: 00        .byte $00   ; 
- - - - - - 0x009F31 02:9F21: 00        .byte $00   ; 
- - - - - - 0x009F32 02:9F22: 00        .byte $00   ; 
- - - - - - 0x009F33 02:9F23: 00        .byte $00   ; 
- - - - - - 0x009F34 02:9F24: 00        .byte $00   ; 
- - - - - - 0x009F35 02:9F25: 00        .byte $00   ; 
- - - - - - 0x009F36 02:9F26: 01        .byte $01   ; 
- - - - - - 0x009F37 02:9F27: 07        .byte $07   ; 
- - - - - - 0x009F38 02:9F28: 0F        .byte $0F   ; 
- - - - - - 0x009F39 02:9F29: 07        .byte $07   ; 
- - - - - - 0x009F3A 02:9F2A: 03        .byte $03   ; 
- - - - - - 0x009F3B 02:9F2B: 00        .byte $00   ; 
- - - - - - 0x009F3C 02:9F2C: 00        .byte $00   ; 
- - - - - - 0x009F3D 02:9F2D: 00        .byte $00   ; 
- - - - - - 0x009F3E 02:9F2E: 01        .byte $01   ; 
- - - - - - 0x009F3F 02:9F2F: 07        .byte $07   ; 
- - - - - - 0x009F40 02:9F30: 0B        .byte $0B   ; 
- - - - - - 0x009F41 02:9F31: 0E        .byte $0E   ; 
- - - - - - 0x009F42 02:9F32: 06        .byte $06   ; 
- - - - - - 0x009F43 02:9F33: 03        .byte $03   ; 
- - - - - - 0x009F44 02:9F34: 00        .byte $00   ; 
- - - - - - 0x009F45 02:9F35: 00        .byte $00   ; 
- - - - - - 0x009F46 02:9F36: 00        .byte $00   ; 
- - - - - - 0x009F47 02:9F37: 00        .byte $00   ; 
- - - - - - 0x009F48 02:9F38: 0F        .byte $0F   ; 
- - - - - - 0x009F49 02:9F39: 0E        .byte $0E   ; 
- - - - - - 0x009F4A 02:9F3A: 06        .byte $06   ; 
- - - - - - 0x009F4B 02:9F3B: 03        .byte $03   ; 
- - - - - - 0x009F4C 02:9F3C: 00        .byte $00   ; 
- - - - - - 0x009F4D 02:9F3D: 00        .byte $00   ; 
- - - - - - 0x009F4E 02:9F3E: 00        .byte $00   ; 
- - - - - - 0x009F4F 02:9F3F: 00        .byte $00   ; 
- - - - - - 0x009F50 02:9F40: 10        .byte $10   ; 
- - - - - - 0x009F51 02:9F41: 78        .byte $78   ; <x>
- - - - - - 0x009F52 02:9F42: FC        .byte $FC   ; 
- - - - - - 0x009F53 02:9F43: FC        .byte $FC   ; 
- - - - - - 0x009F54 02:9F44: 78        .byte $78   ; <x>
- - - - - - 0x009F55 02:9F45: F8        .byte $F8   ; 
- - - - - - 0x009F56 02:9F46: D8        .byte $D8   ; 
- - - - - - 0x009F57 02:9F47: 98        .byte $98   ; 
- - - - - - 0x009F58 02:9F48: F0        .byte $F0   ; 
- - - - - - 0x009F59 02:9F49: F8        .byte $F8   ; 
- - - - - - 0x009F5A 02:9F4A: FC        .byte $FC   ; 
- - - - - - 0x009F5B 02:9F4B: FC        .byte $FC   ; 
- - - - - - 0x009F5C 02:9F4C: 78        .byte $78   ; <x>
- - - - - - 0x009F5D 02:9F4D: F8        .byte $F8   ; 
- - - - - - 0x009F5E 02:9F4E: D8        .byte $D8   ; 
- - - - - - 0x009F5F 02:9F4F: 98        .byte $98   ; 
- - - - - - 0x009F60 02:9F50: 18        .byte $18   ; 
- - - - - - 0x009F61 02:9F51: 18        .byte $18   ; 
- - - - - - 0x009F62 02:9F52: 18        .byte $18   ; 
- - - - - - 0x009F63 02:9F53: 18        .byte $18   ; 
- - - - - - 0x009F64 02:9F54: 18        .byte $18   ; 
- - - - - - 0x009F65 02:9F55: 28        .byte $28   ; 
- - - - - - 0x009F66 02:9F56: 3C        .byte $3C   ; 
- - - - - - 0x009F67 02:9F57: 2F        .byte $2F   ; 
- - - - - - 0x009F68 02:9F58: 18        .byte $18   ; 
- - - - - - 0x009F69 02:9F59: 18        .byte $18   ; 
- - - - - - 0x009F6A 02:9F5A: 18        .byte $18   ; 
- - - - - - 0x009F6B 02:9F5B: 18        .byte $18   ; 
- - - - - - 0x009F6C 02:9F5C: 18        .byte $18   ; 
- - - - - - 0x009F6D 02:9F5D: 38        .byte $38   ; <8>
- - - - - - 0x009F6E 02:9F5E: 3C        .byte $3C   ; 
- - - - - - 0x009F6F 02:9F5F: 2F        .byte $2F   ; 
- - - - - - 0x009F70 02:9F60: 38        .byte $38   ; <8>
- - - - - - 0x009F71 02:9F61: 30        .byte $30   ; <0>
- - - - - - 0x009F72 02:9F62: 60        .byte $60   ; 
- - - - - - 0x009F73 02:9F63: 60        .byte $60   ; 
- - - - - - 0x009F74 02:9F64: 00        .byte $00   ; 
- - - - - - 0x009F75 02:9F65: 40        .byte $40   ; 
- - - - - - 0x009F76 02:9F66: E0        .byte $E0   ; 
- - - - - - 0x009F77 02:9F67: F0        .byte $F0   ; 
- - - - - - 0x009F78 02:9F68: 38        .byte $38   ; <8>
- - - - - - 0x009F79 02:9F69: 30        .byte $30   ; <0>
- - - - - - 0x009F7A 02:9F6A: 60        .byte $60   ; 
- - - - - - 0x009F7B 02:9F6B: 60        .byte $60   ; 
- - - - - - 0x009F7C 02:9F6C: 40        .byte $40   ; 
- - - - - - 0x009F7D 02:9F6D: 40        .byte $40   ; 
- - - - - - 0x009F7E 02:9F6E: E0        .byte $E0   ; 
- - - - - - 0x009F7F 02:9F6F: F0        .byte $F0   ; 
- - - - - - 0x009F80 02:9F70: 18        .byte $18   ; 
- - - - - - 0x009F81 02:9F71: 18        .byte $18   ; 
- - - - - - 0x009F82 02:9F72: 18        .byte $18   ; 
- - - - - - 0x009F83 02:9F73: 18        .byte $18   ; 
- - - - - - 0x009F84 02:9F74: 00        .byte $00   ; 
- - - - - - 0x009F85 02:9F75: 0C        .byte $0C   ; 
- - - - - - 0x009F86 02:9F76: 1E        .byte $1E   ; 
- - - - - - 0x009F87 02:9F77: 17        .byte $17   ; 
- - - - - - 0x009F88 02:9F78: 18        .byte $18   ; 
- - - - - - 0x009F89 02:9F79: 18        .byte $18   ; 
- - - - - - 0x009F8A 02:9F7A: 18        .byte $18   ; 
- - - - - - 0x009F8B 02:9F7B: 18        .byte $18   ; 
- - - - - - 0x009F8C 02:9F7C: 08        .byte $08   ; 
- - - - - - 0x009F8D 02:9F7D: 0C        .byte $0C   ; 
- - - - - - 0x009F8E 02:9F7E: 1E        .byte $1E   ; 
- - - - - - 0x009F8F 02:9F7F: 17        .byte $17   ; 
- - - - - - 0x009F90 02:9F80: 00        .byte $00   ; 
- - - - - - 0x009F91 02:9F81: 00        .byte $00   ; 
- - - - - - 0x009F92 02:9F82: 06        .byte $06   ; 
- - - - - - 0x009F93 02:9F83: 06        .byte $06   ; 
- - - - - - 0x009F94 02:9F84: 00        .byte $00   ; 
- - - - - - 0x009F95 02:9F85: 00        .byte $00   ; 
- - - - - - 0x009F96 02:9F86: 00        .byte $00   ; 
- - - - - - 0x009F97 02:9F87: 00        .byte $00   ; 
- - - - - - 0x009F98 02:9F88: 00        .byte $00   ; 
- - - - - - 0x009F99 02:9F89: 00        .byte $00   ; 
- - - - - - 0x009F9A 02:9F8A: 06        .byte $06   ; 
- - - - - - 0x009F9B 02:9F8B: 06        .byte $06   ; 
- - - - - - 0x009F9C 02:9F8C: 00        .byte $00   ; 
- - - - - - 0x009F9D 02:9F8D: 00        .byte $00   ; 
- - - - - - 0x009F9E 02:9F8E: 00        .byte $00   ; 
- - - - - - 0x009F9F 02:9F8F: 00        .byte $00   ; 
- - - - - - 0x009FA0 02:9F90: 0E        .byte $0E   ; 
- - - - - - 0x009FA1 02:9F91: 3E        .byte $3E   ; 
- - - - - - 0x009FA2 02:9F92: 78        .byte $78   ; <x>
- - - - - - 0x009FA3 02:9F93: 50        .byte $50   ; <P>
- - - - - - 0x009FA4 02:9F94: 70        .byte $70   ; <p>
- - - - - - 0x009FA5 02:9F95: 30        .byte $30   ; <0>
- - - - - - 0x009FA6 02:9F96: 18        .byte $18   ; 
- - - - - - 0x009FA7 02:9F97: 00        .byte $00   ; 
- - - - - - 0x009FA8 02:9F98: 0E        .byte $0E   ; 
- - - - - - 0x009FA9 02:9F99: 3E        .byte $3E   ; 
- - - - - - 0x009FAA 02:9F9A: 78        .byte $78   ; <x>
- - - - - - 0x009FAB 02:9F9B: 70        .byte $70   ; <p>
- - - - - - 0x009FAC 02:9F9C: 70        .byte $70   ; <p>
- - - - - - 0x009FAD 02:9F9D: 30        .byte $30   ; <0>
- - - - - - 0x009FAE 02:9F9E: 18        .byte $18   ; 
- - - - - - 0x009FAF 02:9F9F: 00        .byte $00   ; 
- - - - - - 0x009FB0 02:9FA0: 13        .byte $13   ; 
- - - - - - 0x009FB1 02:9FA1: FF        .byte $FF   ; 
- - - - - - 0x009FB2 02:9FA2: FC        .byte $FC   ; 
- - - - - - 0x009FB3 02:9FA3: F1        .byte $F1   ; 
- - - - - - 0x009FB4 02:9FA4: 07        .byte $07   ; 
- - - - - - 0x009FB5 02:9FA5: 07        .byte $07   ; 
- - - - - - 0x009FB6 02:9FA6: 03        .byte $03   ; 
- - - - - - 0x009FB7 02:9FA7: 07        .byte $07   ; 
- - - - - - 0x009FB8 02:9FA8: 1C        .byte $1C   ; 
- - - - - - 0x009FB9 02:9FA9: FD        .byte $FD   ; 
- - - - - - 0x009FBA 02:9FAA: FF        .byte $FF   ; 
- - - - - - 0x009FBB 02:9FAB: FF        .byte $FF   ; 
- - - - - - 0x009FBC 02:9FAC: 07        .byte $07   ; 
- - - - - - 0x009FBD 02:9FAD: 07        .byte $07   ; 
- - - - - - 0x009FBE 02:9FAE: 03        .byte $03   ; 
- - - - - - 0x009FBF 02:9FAF: 07        .byte $07   ; 
- - - - - - 0x009FC0 02:9FB0: 0E        .byte $0E   ; 
- - - - - - 0x009FC1 02:9FB1: 1C        .byte $1C   ; 
- - - - - - 0x009FC2 02:9FB2: 1C        .byte $1C   ; 
- - - - - - 0x009FC3 02:9FB3: 00        .byte $00   ; 
- - - - - - 0x009FC4 02:9FB4: 38        .byte $38   ; <8>
- - - - - - 0x009FC5 02:9FB5: 3C        .byte $3C   ; 
- - - - - - 0x009FC6 02:9FB6: 00        .byte $00   ; 
- - - - - - 0x009FC7 02:9FB7: 00        .byte $00   ; 
- - - - - - 0x009FC8 02:9FB8: 0E        .byte $0E   ; 
- - - - - - 0x009FC9 02:9FB9: 1C        .byte $1C   ; 
- - - - - - 0x009FCA 02:9FBA: 1C        .byte $1C   ; 
- - - - - - 0x009FCB 02:9FBB: 10        .byte $10   ; 
- - - - - - 0x009FCC 02:9FBC: 38        .byte $38   ; <8>
- - - - - - 0x009FCD 02:9FBD: 3C        .byte $3C   ; 
- - - - - - 0x009FCE 02:9FBE: 00        .byte $00   ; 
- - - - - - 0x009FCF 02:9FBF: 00        .byte $00   ; 
- - - - - - 0x009FD0 02:9FC0: 00        .byte $00   ; 
- - - - - - 0x009FD1 02:9FC1: 00        .byte $00   ; 
- - - - - - 0x009FD2 02:9FC2: 00        .byte $00   ; 
- - - - - - 0x009FD3 02:9FC3: 00        .byte $00   ; 
- - - - - - 0x009FD4 02:9FC4: 00        .byte $00   ; 
- - - - - - 0x009FD5 02:9FC5: 00        .byte $00   ; 
- - - - - - 0x009FD6 02:9FC6: 00        .byte $00   ; 
- - - - - - 0x009FD7 02:9FC7: 00        .byte $00   ; 
- - - - - - 0x009FD8 02:9FC8: 00        .byte $00   ; 
- - - - - - 0x009FD9 02:9FC9: 00        .byte $00   ; 
- - - - - - 0x009FDA 02:9FCA: 00        .byte $00   ; 
- - - - - - 0x009FDB 02:9FCB: 00        .byte $00   ; 
- - - - - - 0x009FDC 02:9FCC: 00        .byte $00   ; 
- - - - - - 0x009FDD 02:9FCD: 00        .byte $00   ; 
- - - - - - 0x009FDE 02:9FCE: 00        .byte $00   ; 
- - - - - - 0x009FDF 02:9FCF: 00        .byte $00   ; 
- - - - - - 0x009FE0 02:9FD0: 00        .byte $00   ; 
- - - - - - 0x009FE1 02:9FD1: 00        .byte $00   ; 
- - - - - - 0x009FE2 02:9FD2: 00        .byte $00   ; 
- - - - - - 0x009FE3 02:9FD3: 00        .byte $00   ; 
- - - - - - 0x009FE4 02:9FD4: 00        .byte $00   ; 
- - - - - - 0x009FE5 02:9FD5: 00        .byte $00   ; 
- - - - - - 0x009FE6 02:9FD6: 00        .byte $00   ; 
- - - - - - 0x009FE7 02:9FD7: 00        .byte $00   ; 
- - - - - - 0x009FE8 02:9FD8: 00        .byte $00   ; 
- - - - - - 0x009FE9 02:9FD9: 00        .byte $00   ; 
- - - - - - 0x009FEA 02:9FDA: 00        .byte $00   ; 
- - - - - - 0x009FEB 02:9FDB: 00        .byte $00   ; 
- - - - - - 0x009FEC 02:9FDC: 00        .byte $00   ; 
- - - - - - 0x009FED 02:9FDD: 00        .byte $00   ; 
- - - - - - 0x009FEE 02:9FDE: 00        .byte $00   ; 
- - - - - - 0x009FEF 02:9FDF: 00        .byte $00   ; 
- - - - - - 0x009FF0 02:9FE0: 00        .byte $00   ; 
- - - - - - 0x009FF1 02:9FE1: 00        .byte $00   ; 
- - - - - - 0x009FF2 02:9FE2: 00        .byte $00   ; 
- - - - - - 0x009FF3 02:9FE3: 00        .byte $00   ; 
- - - - - - 0x009FF4 02:9FE4: 00        .byte $00   ; 
- - - - - - 0x009FF5 02:9FE5: 00        .byte $00   ; 
- - - - - - 0x009FF6 02:9FE6: 00        .byte $00   ; 
- - - - - - 0x009FF7 02:9FE7: 00        .byte $00   ; 
- - - - - - 0x009FF8 02:9FE8: 00        .byte $00   ; 
- - - - - - 0x009FF9 02:9FE9: 00        .byte $00   ; 
- - - - - - 0x009FFA 02:9FEA: 00        .byte $00   ; 
- - - - - - 0x009FFB 02:9FEB: 00        .byte $00   ; 
- - - - - - 0x009FFC 02:9FEC: 00        .byte $00   ; 
- - - - - - 0x009FFD 02:9FED: 00        .byte $00   ; 
- - - - - - 0x009FFE 02:9FEE: 00        .byte $00   ; 
- - - - - - 0x009FFF 02:9FEF: 00        .byte $00   ; 
- - - - - - 0x00A000 02:9FF0: 00        .byte $00   ; 
- - - - - - 0x00A001 02:9FF1: 00        .byte $00   ; 
- - - - - - 0x00A002 02:9FF2: 00        .byte $00   ; 
- - - - - - 0x00A003 02:9FF3: 00        .byte $00   ; 
- - - - - - 0x00A004 02:9FF4: 00        .byte $00   ; 
- - - - - - 0x00A005 02:9FF5: 00        .byte $00   ; 
- - - - - - 0x00A006 02:9FF6: 00        .byte $00   ; 
- - - - - - 0x00A007 02:9FF7: 00        .byte $00   ; 
- - - - - - 0x00A008 02:9FF8: 00        .byte $00   ; 
- - - - - - 0x00A009 02:9FF9: 00        .byte $00   ; 
- - - - - - 0x00A00A 02:9FFA: 00        .byte $00   ; 
- - - - - - 0x00A00B 02:9FFB: 00        .byte $00   ; 
- - - - - - 0x00A00C 02:9FFC: 00        .byte $00   ; 
- - - - - - 0x00A00D 02:9FFD: 00        .byte $00   ; 
- - - - - - 0x00A00E 02:9FFE: 00        .byte $00   ; 
- - - - - - 0x00A00F 02:9FFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 02_1: 0x%X [%d]", ($A000 - *), ($A000 - *))



