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
- - - - - - 0x008010 02:8000: 54        .byte $54, $00           ; 0x00 start screen track1
                                        .addr loc_track0         ; CPU Address $A184
- D 0 - I - 0x008014 02:8004: 69        .byte $69, $01           ; 0x01 start screen track2
                                        .addr loc_track1         ; CPU Address $A1B1
- D 0 - I - 0x008018 02:8008: 7E        .byte $7E, $02           ; 0x02 start screen track3
                                        .addr loc_track2         ; CPU Address $A1D4
- D 0 - I - 0x00801C 02:800C: 93        .byte $93, $03           ; 0x03 start screen track4
                                        .addr loc_track3         ; CPU Address $A1F7
- D 0 - I - 0x008020 02:8010: 54        .byte $54, $00           ; 0x04
                                        .addr loc_track4         ; CPU Address $A21C
- D 0 - I - 0x008024 02:8014: 69        .byte $69, $01           ; 0x05
                                        .addr loc_track5         ; CPU Address $A281
- D 0 - I - 0x008028 02:8018: 54        .byte $54, $00           ; 0x06
                                        .addr loc_track6         ; CPU Address $A2F7
- D 0 - I - 0x00802C 02:801C: 7E        .byte $7E, $02           ; 0x07
                                        .addr loc_track7         ; CPU Address $A35A
- D 0 - I - 0x008030 02:8020: 54        .byte $54, $00           ; 0x08
                                        .addr loc_track8         ; CPU Address $A3B1
- D 0 - I - 0x008034 02:8024: 7E        .byte $7E, $02           ; 0x09
                                        .addr loc_track9         ; CPU Address $A894
- - - - - - 0x008038 02:8028: 3F        .byte $3F, $03           ; 0x0A - blank
                                        .addr loc_trackA         ; CPU Address $A4BD
- D 0 - I - 0x00803C 02:802C: 3F        .byte $3F, $03           ; 0x0B - 3rd sound row
                                        .addr loc_trackB         ; CPU Address $A4BE
- D 0 - I - 0x008040 02:8030: 3F        .byte $3F, $03           ; 0x0C
                                        .addr loc_trackC         ; CPU Address $A4C7
- D 0 - I - 0x008044 02:8034: 2A        .byte $2A, $01           ; 0x0D
                                        .addr loc_trackD         ; CPU Address $A4D4
- D 0 - I - 0x008048 02:8038: 00        .byte $00, $01           ; 0x0E
                                        .addr loc_trackE         ; CPU Address $A4DD
- D 0 - I - 0x00804C 02:803C: 3F        .byte $3F, $03           ; 0x0F
                                        .addr loc_trackF         ; CPU Address $A4EA
- D 0 - I - 0x008050 02:8040: 2A        .byte $2A, $01           ; 0x10
                                        .addr loc_track10        ; CPU Address $A4F5
- D 0 - I - 0x008054 02:8044: 2A        .byte $2A, $01           ; 0x11
                                        .addr loc_track11        ; CPU Address $A4FC
- D 0 - I - 0x008058 02:8048: 15        .byte $15, $01           ; 0x12
                                        .addr loc_track12        ; CPU Address $A509
- D 0 - I - 0x00805C 02:804C: 2A        .byte $2A, $01           ; 0x13
                                        .addr loc_track13        ; CPU Address $A514
- D 0 - I - 0x008060 02:8050: 2A        .byte $2A, $01           ; 0x14
                                        .addr loc_track14        ; CPU Address $A529
- D 0 - I - 0x008064 02:8054: 2A        .byte $2A, $01           ; 0x15
                                        .addr loc_track15        ; CPU Address $A53A
- D 0 - I - 0x008068 02:8058: 3F        .byte $3F, $03           ; 0x16
                                        .addr loc_track16        ; CPU Address $A541
- D 0 - I - 0x00806C 02:805C: 3F        .byte $3F, $03           ; 0x17
                                        .addr loc_track17        ; CPU Address $A548
- D 0 - I - 0x008070 02:8060: 2A        .byte $2A, $01           ; 0x18
                                        .addr loc_track18        ; CPU Address $A553
- D 0 - I - 0x008074 02:8064: 3F        .byte $3F, $03           ; 0x19
                                        .addr loc_track19        ; CPU Address $A562
- D 0 - I - 0x008078 02:8068: 3F        .byte $3F, $03           ; 0x1A
                                        .addr loc_track1A        ; CPU Address $A56D
- D 0 - I - 0x00807C 02:806C: 54        .byte $54, $00           ; 0x1B
                                        .addr loc_track1B        ; CPU Address $A583
- D 0 - I - 0x008080 02:8070: 7E        .byte $7E, $02           ; 0x1C
                                        .addr loc_track1C        ; CPU Address $A5E0
- D 0 - I - 0x008084 02:8074: 54        .byte $54, $00           ; 0x1D
                                        .addr loc_track1D        ; CPU Address $A617
- D 0 - I - 0x008088 02:8078: 7E        .byte $7E, $02           ; 0x1E
                                        .addr loc_track1E        ; CPU Address $A64C
- D 0 - I - 0x00808C 02:807C: 54        .byte $54, $00           ; 0x1F
                                        .addr loc_track1F        ; CPU Address $A6B1
- D 0 - I - 0x008090 02:8080: 7E        .byte $7E, $02           ; 0x20
                                        .addr loc_track20        ; CPU Address $A6D2
- D 0 - I - 0x008094 02:8084: 2A        .byte $2A, $01           ; 0x21
                                        .addr loc_track21        ; CPU Address $A578
- D 0 - I - 0x008098 02:8088: 54        .byte $54, $00           ; 0x22
                                        .addr loc_track22        ; CPU Address $A6EB
- D 0 - I - 0x00809C 02:808C: 7E        .byte $7E, $02           ; 0x23
                                        .addr loc_track23        ; CPU Address $A776
- D 0 - I - 0x0080A0 02:8090: 54        .byte $54, $00           ; 0x24
                                        .addr loc_track24        ; CPU Address $A7B1
- D 0 - I - 0x0080A4 02:8094: 7E        .byte $7E, $02           ; 0x25
                                        .addr loc_track25        ; CPU Address $A7D2
- - - - - - 0x0080A8 02:8098: 3F        .byte $3F, $03           ; 0x26 - blank
                                        .addr loc_track26        ; CPU Address $A8F7
- - - - - - 0x0080AC 02:809C: 2A        .byte $2A, $01           ; 0x27 - blank
                                        .addr loc_track27        ; CPU Address $A8F8
- D 0 - I - 0x0080B0 02:80A0: 3F        .byte $3F, $03           ; 0x28
                                        .addr loc_track28        ; CPU Address $A8F9
- D 0 - I - 0x0080B4 02:80A4: 2A        .byte $2A, $01           ; 0x29
                                        .addr loc_track29        ; CPU Address $A900
- D 0 - I - 0x0080B8 02:80A8: 2A        .byte $2A, $01           ; 0x2A
                                        .addr loc_track2A        ; CPU Address $A909
- - - - - - 0x0080BC 02:80AC: 2A        .byte $2A, $01           ; 0x2B - blank
                                        .addr loc_track2B        ; CPU Address $A91A
- D 0 - I - 0x0080C0 02:80B0: 3F        .byte $3F, $03           ; 0x2C
                                        .addr loc_track2C        ; CPU Address $A91B
- D 0 - I - 0x0080C4 02:80B4: 3F        .byte $3F, $03           ; 0x2D
                                        .addr loc_track2D        ; CPU Address $A926
- - - - - - 0x0080C8 02:80B8: 3F        .byte $3F, $03           ; 0x2E - blank
                                        .addr loc_track2E        ; CPU Address $A92F
- - - - - - 0x0080CC 02:80BC: 3F        .byte $3F, $03           ; 0x2F - blank
                                        .addr loc_track2F        ; CPU Address $A930
- D 0 - I - 0x0080D0 02:80C0: 2A        .byte $2A, $01           ; 0x30
                                        .addr loc_track30        ; CPU Address $A931
- D 0 - I - 0x0080D4 02:80C4: 3F        .byte $3F, $03           ; 0x31
                                        .addr loc_track31        ; CPU Address $A940
- D 0 - I - 0x0080D8 02:80C8: 3F        .byte $3F, $03           ; 0x32
                                        .addr loc_track32        ; CPU Address $A947
- - - - - - 0x0080DC 02:80CC: 3F        .byte $3F, $03           ; 0x33 - blank
                                        .addr loc_track33        ; CPU Address $A957
- D 0 - I - 0x0080E0 02:80D0: 2A        .byte $2A, $01           ; 0x34
                                        .addr loc_track34        ; CPU Address $A958
- D 0 - I - 0x0080E4 02:80D4: 2A        .byte $2A, $01           ; 0x35
                                        .addr loc_track35        ; CPU Address $A95F
- D 0 - I - 0x0080E8 02:80D8: 3F        .byte $3F, $03           ; 0x36
                                        .addr loc_track36        ; CPU Address $A96C
- D 0 - I - 0x0080EC 02:80DC: 2A        .byte $2A, $01           ; 0x37
                                        .addr loc_track37        ; CPU Address $A977
- - - - - - 0x0080F0 02:80E0: 2A        .byte $2A, $01           ; 0x38 - blank
                                        .addr loc_track38        ; CPU Address $A982
- D 0 - I - 0x0080F4 02:80E4: 7E        .byte $7E, $02           ; 0x39
                                        .addr loc_track39        ; CPU Address $A7F1
- D 0 - I - 0x0080F8 02:80E8: 69        .byte $69, $01           ; 0x3A
                                        .addr loc_track3A        ; CPU Address $A829
- D 0 - I - 0x0080FC 02:80EC: 69        .byte $69, $01           ; 0x3B
                                        .addr loc_track3B        ; CPU Address $A436
- - - - - - 0x008100 02:80F0: 2A        .byte $2A, $01           ; 0x3C - blank
                                        .addr loc_track3C        ; CPU Address $A983
- D 0 - I - 0x008104 02:80F4: 3F        .byte $3F, $03           ; 0x3D
                                        .addr loc_track3D        ; CPU Address $A984
- - - - - - 0x008108 02:80F8: 2A        .byte $2A, $01           ; 0x3E - blank
                                        .addr loc_track3E        ; CPU Address $A98D
- D 0 - I - 0x00810C 02:80FC: 2A        .byte $2A, $01           ; 0x3F
                                        .addr loc_track3F        ; CPU Address $A98E
- D 0 - I - 0x008110 02:8100: 2A        .byte $2A, $01           ; 0x40
                                        .addr loc_track40        ; CPU Address $A995
- D 0 - I - 0x008114 02:8104: 3F        .byte $3F, $03           ; 0x41
                                        .addr loc_track41        ; CPU Address $A99C
- - - - - - 0x008118 02:8108: 2A        .byte $2A, $01           ; 0x42 - blank
                                        .addr loc_track42        ; CPU Address $A9A7
- D 0 - I - 0x00811C 02:810C: 69        .byte $69, $01           ; 0x43
                                        .addr loc_track43        ; CPU Address $A9A8
- D 0 - I - 0x008120 02:8110: 69        .byte $69, $01           ; 0x44
                                        .addr loc_track44        ; CPU Address $AA0D
- D 0 - I - 0x008124 02:8114: 69        .byte $69, $01           ; 0x45
                                        .addr loc_track45        ; CPU Address $AAA8
- D 0 - I - 0x008128 02:8118: 69        .byte $69, $01           ; 0x46
                                        .addr loc_track46        ; CPU Address $AAC7
- D 0 - I - 0x00812C 02:811C: 69        .byte $69, $01           ; 0x47
                                        .addr loc_track47        ; CPU Address $AB3C
- D 0 - I - 0x008130 02:8120: 93        .byte $93, $03           ; 0x48
                                        .addr loc_track48        ; CPU Address $AB5F
- D 0 - I - 0x008134 02:8124: 93        .byte $93, $03           ; 0x49
                                        .addr loc_track49        ; CPU Address $AB83
- D 0 - I - 0x008138 02:8128: 93        .byte $93, $03           ; 0x4A
                                        .addr loc_track4A        ; CPU Address $AB92
- D 0 - I - 0x00813C 02:812C: 93        .byte $93, $03           ; 0x4B
                                        .addr loc_track4B        ; CPU Address $AB9B
- D 0 - I - 0x008140 02:8130: 93        .byte $93, $03           ; 0x4C
                                        .addr loc_track4C        ; CPU Address $ABB2
- D 0 - I - 0x008144 02:8134: 93        .byte $93, $03           ; 0x4D
                                        .addr loc_track4D        ; CPU Address $ABC9
- D 0 - I - 0x008148 02:8138: 93        .byte $93, $03           ; 0x4E
                                        .addr loc_track4E        ; CPU Address $ABE0
- D 0 - I - 0x00814C 02:813C: 93        .byte $93, $03           ; 0x4F
                                        .addr loc_track4F        ; CPU Address $ABEF
- D 0 - I - 0x008150 02:8140: 2A        .byte $2A, $01           ; 0x50 - typing sound
                                        .addr loc_track50        ; CPU Address $ABFE
- D 0 - I - 0x008154 02:8144: 2A        .byte $2A, $01           ; 0x51
                                        .addr loc_track51        ; CPU Address $AC07
- D 0 - I - 0x008158 02:8148: 3F        .byte $3F, $03           ; 0x52
                                        .addr loc_track52        ; CPU Address $AC16
- - - - - - 0x00815C 02:814C: 00        .byte $00, $00           ; 0x53
                                        .addr loc_track53        ; CPU Address $AC21
- - - - - - 0x008160 02:8150: 2A        .byte $2A, $02           ; 0x54
                                        .addr loc_track54        ; CPU Address $AC36
- D 0 - I - 0x008164 02:8154: 54        .byte $54, $00           ; 0x55
                                        .addr loc_track55        ; CPU Address $AC4F
- D 0 - I - 0x008168 02:8158: 69        .byte $69, $01           ; 0x56
                                        .addr loc_track56        ; CPU Address $AC88
- D 0 - I - 0x00816C 02:815C: 7E        .byte $7E, $02           ; 0x57
                                        .addr loc_track57        ; CPU Address $ACC1
- - - - - - 0x008170 02:8160: 54        .byte $54, $00           ; 0x58 - blank
                                        .addr loc_track58        ; CPU Address $ACD8
- - - - - - 0x008174 02:8164: 69        .byte $69, $01           ; 0x59 - blank
                                        .addr loc_track59        ; CPU Address $ACD9
- - - - - - 0x008178 02:8168: 7E        .byte $7E, $02           ; 0x5A - blank
                                        .addr loc_track5A        ; CPU Address $ACDA
- D 0 - I - 0x00817C 02:816C: 54        .byte $54, $00           ; 0x5B
                                        .addr loc_track5B        ; CPU Address $ACF5
- D 0 - I - 0x008180 02:8170: 69        .byte $69, $01           ; 0x5C
                                        .addr loc_track5C        ; CPU Address $AD2A
- D 0 - I - 0x008184 02:8174: 7E        .byte $7E, $02           ; 0x5D
                                        .addr loc_track5D        ; CPU Address $AD33
- D 0 - I - 0x008188 02:8178: 93        .byte $93, $03           ; 0x5E
                                        .addr loc_track5E        ; CPU Address $AD5A
- D 0 - I - 0x00818C 02:817C: 2A        .byte $2A, $01           ; 0x5F
                                        .addr loc_track5F        ; CPU Address $ACDB
- D 0 - I - 0x008190 02:8180: 2A        .byte $2A, $01           ; 0x60
                                        .addr loc_track60        ; CPU Address $ACEA

loc_track0:
- D 0 - I - 0x008194 02:8184: 06        .byte $06   ; 
- D 0 - I - 0x008195 02:8185: 03        .byte $03   ; 
- D 0 - I - 0x008196 02:8186: 02        .byte $02   ; 
- D 0 - I - 0x008197 02:8187: 00        .byte $00   ; 
- D 0 - I - 0x008198 02:8188: 32        .byte $32   ; <2>
- D 0 - I - 0x008199 02:8189: 01        .byte $01   ; 
- D 0 - I - 0x00819A 02:818A: 32        .byte $32   ; <2>
- D 0 - I - 0x00819B 02:818B: 01        .byte $01   ; 
- D 0 - I - 0x00819C 02:818C: 35        .byte $35   ; <5>
- D 0 - I - 0x00819D 02:818D: 01        .byte $01   ; 
- D 0 - I - 0x00819E 02:818E: 32        .byte $32   ; <2>
- D 0 - I - 0x00819F 02:818F: 03        .byte $03   ; 
- D 0 - I - 0x0081A0 02:8190: A0        .byte $A0   ; 
- D 0 - I - 0x0081A1 02:8191: 0F        .byte $0F   ; 
- D 0 - I - 0x0081A2 02:8192: 37        .byte $37   ; <7>
- D 0 - I - 0x0081A3 02:8193: 0A        .byte $0A   ; 
- D 0 - I - 0x0081A4 02:8194: 35        .byte $35   ; <5>
- D 0 - I - 0x0081A5 02:8195: 03        .byte $03   ; 
- D 0 - I - 0x0081A6 02:8196: 37        .byte $37   ; <7>
- D 0 - I - 0x0081A7 02:8197: 03        .byte $03   ; 
- D 0 - I - 0x0081A8 02:8198: 32        .byte $32   ; <2>
- D 0 - I - 0x0081A9 02:8199: 0A        .byte $0A   ; 
- D 0 - I - 0x0081AA 02:819A: 30        .byte $30   ; <0>
- D 0 - I - 0x0081AB 02:819B: 03        .byte $03   ; 
- D 0 - I - 0x0081AC 02:819C: 29        .byte $29   ; 
- D 0 - I - 0x0081AD 02:819D: 03        .byte $03   ; 
- D 0 - I - 0x0081AE 02:819E: 27        .byte $27   ; 
- D 0 - I - 0x0081AF 02:819F: 10        .byte $10   ; 
- D 0 - I - 0x0081B0 02:81A0: A0        .byte $A0   ; 
- D 0 - I - 0x0081B1 02:81A1: 02        .byte $02   ; 
- D 0 - I - 0x0081B2 02:81A2: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B3 02:81A3: 01        .byte $01   ; 
- D 0 - I - 0x0081B4 02:81A4: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B5 02:81A5: 01        .byte $01   ; 
- D 0 - I - 0x0081B6 02:81A6: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B7 02:81A7: 01        .byte $01   ; 
- D 0 - I - 0x0081B8 02:81A8: 35        .byte $35   ; <5>
- D 0 - I - 0x0081B9 02:81A9: 02        .byte $02   ; 
- D 0 - I - 0x0081BA 02:81AA: 35        .byte $35   ; <5>
- D 0 - I - 0x0081BB 02:81AB: 02        .byte $02   ; 
- D 0 - I - 0x0081BC 02:81AC: 35        .byte $35   ; <5>
- D 0 - I - 0x0081BD 02:81AD: 01        .byte $01   ; 
- D 0 - I - 0x0081BE 02:81AE: 37        .byte $37   ; <7>
- D 0 - I - 0x0081BF 02:81AF: 03        .byte $03   ; 
- D 0 - I - 0x0081C0 02:81B0: FF        .byte $FF   ; 

loc_track1:
- D 0 - I - 0x0081C1 02:81B1: 06        .byte $06   ; 
- D 0 - I - 0x0081C2 02:81B2: 00        .byte $00   ; 
- D 0 - I - 0x0081C3 02:81B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0081C4 02:81B4: 00        .byte $00   ; 
- D 0 - I - 0x0081C5 02:81B5: 1F        .byte $1F   ; 
- D 0 - I - 0x0081C6 02:81B6: 06        .byte $06   ; 
- D 0 - I - 0x0081C7 02:81B7: 1A        .byte $1A   ; 
- D 0 - I - 0x0081C8 02:81B8: 03        .byte $03   ; 
- D 0 - I - 0x0081C9 02:81B9: 19        .byte $19   ; 
- D 0 - I - 0x0081CA 02:81BA: 03        .byte $03   ; 
- D 0 - I - 0x0081CB 02:81BB: A0        .byte $A0   ; 
- D 0 - I - 0x0081CC 02:81BC: 03        .byte $03   ; 
- D 0 - I - 0x0081CD 02:81BD: 1A        .byte $1A   ; 
- D 0 - I - 0x0081CE 02:81BE: 0A        .byte $0A   ; 
- D 0 - I - 0x0081CF 02:81BF: A0        .byte $A0   ; 
- D 0 - I - 0x0081D0 02:81C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0081D1 02:81C1: B2        .byte $B2   ; 
- D 0 - I - 0x0081D2 02:81C2: 03        .byte $03   ; 
- D 0 - I - 0x0081D3 02:81C3: A0        .byte $A0   ; 
- D 0 - I - 0x0081D4 02:81C4: 01        .byte $01   ; 
- D 0 - I - 0x0081D5 02:81C5: 27        .byte $27   ; 
- D 0 - I - 0x0081D6 02:81C6: 01        .byte $01   ; 
- D 0 - I - 0x0081D7 02:81C7: 27        .byte $27   ; 
- D 0 - I - 0x0081D8 02:81C8: 01        .byte $01   ; 
- D 0 - I - 0x0081D9 02:81C9: 27        .byte $27   ; 
- D 0 - I - 0x0081DA 02:81CA: 01        .byte $01   ; 
- D 0 - I - 0x0081DB 02:81CB: 29        .byte $29   ; 
- D 0 - I - 0x0081DC 02:81CC: 02        .byte $02   ; 
- D 0 - I - 0x0081DD 02:81CD: 29        .byte $29   ; 
- D 0 - I - 0x0081DE 02:81CE: 02        .byte $02   ; 
- D 0 - I - 0x0081DF 02:81CF: 29        .byte $29   ; 
- D 0 - I - 0x0081E0 02:81D0: 01        .byte $01   ; 
- D 0 - I - 0x0081E1 02:81D1: 2A        .byte $2A   ; 
- D 0 - I - 0x0081E2 02:81D2: 03        .byte $03   ; 
- D 0 - I - 0x0081E3 02:81D3: FF        .byte $FF   ; 

loc_track2:
- D 0 - I - 0x0081E4 02:81D4: 06        .byte $06   ; 
- D 0 - I - 0x0081E5 02:81D5: 7F        .byte $7F   ; 
- D 0 - I - 0x0081E6 02:81D6: 00        .byte $00   ; 
- D 0 - I - 0x0081E7 02:81D7: 00        .byte $00   ; 
- D 0 - I - 0x0081E8 02:81D8: 1F        .byte $1F   ; 
- D 0 - I - 0x0081E9 02:81D9: 06        .byte $06   ; 
- D 0 - I - 0x0081EA 02:81DA: 27        .byte $27   ; 
- D 0 - I - 0x0081EB 02:81DB: 03        .byte $03   ; 
- D 0 - I - 0x0081EC 02:81DC: 25        .byte $25   ; 
- D 0 - I - 0x0081ED 02:81DD: 03        .byte $03   ; 
- D 0 - I - 0x0081EE 02:81DE: A2        .byte $A2   ; 
- D 0 - I - 0x0081EF 02:81DF: 20        .byte $20   ; 
- D 0 - I - 0x0081F0 02:81E0: 27        .byte $27   ; 
- D 0 - I - 0x0081F1 02:81E1: 0A        .byte $0A   ; 
- D 0 - I - 0x0081F2 02:81E2: A2        .byte $A2   ; 
- D 0 - I - 0x0081F3 02:81E3: 7F        .byte $7F   ; 
- D 0 - I - 0x0081F4 02:81E4: B2        .byte $B2   ; 
- D 0 - I - 0x0081F5 02:81E5: 03        .byte $03   ; 
- D 0 - I - 0x0081F6 02:81E6: A2        .byte $A2   ; 
- D 0 - I - 0x0081F7 02:81E7: 10        .byte $10   ; 
- D 0 - I - 0x0081F8 02:81E8: 23        .byte $23   ; 
- D 0 - I - 0x0081F9 02:81E9: 01        .byte $01   ; 
- D 0 - I - 0x0081FA 02:81EA: 25        .byte $25   ; 
- D 0 - I - 0x0081FB 02:81EB: 01        .byte $01   ; 
- D 0 - I - 0x0081FC 02:81EC: 23        .byte $23   ; 
- D 0 - I - 0x0081FD 02:81ED: 01        .byte $01   ; 
- D 0 - I - 0x0081FE 02:81EE: 25        .byte $25   ; 
- D 0 - I - 0x0081FF 02:81EF: 02        .byte $02   ; 
- D 0 - I - 0x008200 02:81F0: 25        .byte $25   ; 
- D 0 - I - 0x008201 02:81F1: 02        .byte $02   ; 
- D 0 - I - 0x008202 02:81F2: 25        .byte $25   ; 
- D 0 - I - 0x008203 02:81F3: 01        .byte $01   ; 
- D 0 - I - 0x008204 02:81F4: 27        .byte $27   ; 
- D 0 - I - 0x008205 02:81F5: 03        .byte $03   ; 
- D 0 - I - 0x008206 02:81F6: FF        .byte $FF   ; 

loc_track3:
- D 0 - I - 0x008207 02:81F7: 06        .byte $06   ; 
- D 0 - I - 0x008208 02:81F8: 00        .byte $00   ; 
- D 0 - I - 0x008209 02:81F9: 00        .byte $00   ; 
- D 0 - I - 0x00820A 02:81FA: 00        .byte $00   ; 
- D 0 - I - 0x00820B 02:81FB: 1F        .byte $1F   ; 
- D 0 - I - 0x00820C 02:81FC: 06        .byte $06   ; 
- D 0 - I - 0x00820D 02:81FD: 02        .byte $02   ; 
- D 0 - I - 0x00820E 02:81FE: 01        .byte $01   ; 
- D 0 - I - 0x00820F 02:81FF: 02        .byte $02   ; 
- D 0 - I - 0x008210 02:8200: 01        .byte $01   ; 
- D 0 - I - 0x008211 02:8201: 02        .byte $02   ; 
- D 0 - I - 0x008212 02:8202: 01        .byte $01   ; 
- D 0 - I - 0x008213 02:8203: 02        .byte $02   ; 
- D 0 - I - 0x008214 02:8204: 01        .byte $01   ; 
- D 0 - I - 0x008215 02:8205: 09        .byte $09   ; 
- D 0 - I - 0x008216 02:8206: 01        .byte $01   ; 
- D 0 - I - 0x008217 02:8207: 02        .byte $02   ; 
- D 0 - I - 0x008218 02:8208: 01        .byte $01   ; 
- D 0 - I - 0x008219 02:8209: 02        .byte $02   ; 
- D 0 - I - 0x00821A 02:820A: 02        .byte $02   ; 
- D 0 - I - 0x00821B 02:820B: B5        .byte $B5   ; 
- D 0 - I - 0x00821C 02:820C: 03        .byte $03   ; 
- D 0 - I - 0x00821D 02:820D: 04        .byte $04   ; 
- D 0 - I - 0x00821E 02:820E: 01        .byte $01   ; 
- D 0 - I - 0x00821F 02:820F: 04        .byte $04   ; 
- D 0 - I - 0x008220 02:8210: 01        .byte $01   ; 
- D 0 - I - 0x008221 02:8211: 04        .byte $04   ; 
- D 0 - I - 0x008222 02:8212: 01        .byte $01   ; 
- D 0 - I - 0x008223 02:8213: 04        .byte $04   ; 
- D 0 - I - 0x008224 02:8214: 02        .byte $02   ; 
- D 0 - I - 0x008225 02:8215: 04        .byte $04   ; 
- D 0 - I - 0x008226 02:8216: 02        .byte $02   ; 
- D 0 - I - 0x008227 02:8217: 04        .byte $04   ; 
- D 0 - I - 0x008228 02:8218: 01        .byte $01   ; 
- D 0 - I - 0x008229 02:8219: 0A        .byte $0A   ; 
- D 0 - I - 0x00822A 02:821A: 03        .byte $03   ; 
- D 0 - I - 0x00822B 02:821B: FF        .byte $FF   ; 

loc_track4:
- D 0 - I - 0x00822C 02:821C: 05        .byte $05   ; 
- D 0 - I - 0x00822D 02:821D: 01        .byte $01   ; 
- D 0 - I - 0x00822E 02:821E: 04        .byte $04   ; 
- D 0 - I - 0x00822F 02:821F: 00        .byte $00   ; 
- D 0 - I - 0x008230 02:8220: 32        .byte $32   ; <2>
- D 0 - I - 0x008231 02:8221: 02        .byte $02   ; 
- D 0 - I - 0x008232 02:8222: 32        .byte $32   ; <2>
- D 0 - I - 0x008233 02:8223: 02        .byte $02   ; 
- D 0 - I - 0x008234 02:8224: 1F        .byte $1F   ; 
- D 0 - I - 0x008235 02:8225: 06        .byte $06   ; 
- D 0 - I - 0x008236 02:8226: 30        .byte $30   ; <0>
- D 0 - I - 0x008237 02:8227: 02        .byte $02   ; 
- D 0 - I - 0x008238 02:8228: 1F        .byte $1F   ; 
- D 0 - I - 0x008239 02:8229: 02        .byte $02   ; 
- D 0 - I - 0x00823A 02:822A: 32        .byte $32   ; <2>
- D 0 - I - 0x00823B 02:822B: 02        .byte $02   ; 
- D 0 - I - 0x00823C 02:822C: 1F        .byte $1F   ; 
- D 0 - I - 0x00823D 02:822D: 0A        .byte $0A   ; 
- D 0 - I - 0x00823E 02:822E: 35        .byte $35   ; <5>
- D 0 - I - 0x00823F 02:822F: 02        .byte $02   ; 
- D 0 - I - 0x008240 02:8230: 1F        .byte $1F   ; 
- D 0 - I - 0x008241 02:8231: 04        .byte $04   ; 
- D 0 - I - 0x008242 02:8232: 29        .byte $29   ; 
- D 0 - I - 0x008243 02:8233: 02        .byte $02   ; 
- D 0 - I - 0x008244 02:8234: 1F        .byte $1F   ; 
- D 0 - I - 0x008245 02:8235: 1E        .byte $1E   ; 
- D 0 - I - 0x008246 02:8236: 32        .byte $32   ; <2>
- D 0 - I - 0x008247 02:8237: 02        .byte $02   ; 
- D 0 - I - 0x008248 02:8238: 32        .byte $32   ; <2>
- D 0 - I - 0x008249 02:8239: 02        .byte $02   ; 
- D 0 - I - 0x00824A 02:823A: 1F        .byte $1F   ; 
- D 0 - I - 0x00824B 02:823B: 06        .byte $06   ; 
- D 0 - I - 0x00824C 02:823C: 30        .byte $30   ; <0>
- D 0 - I - 0x00824D 02:823D: 02        .byte $02   ; 
- D 0 - I - 0x00824E 02:823E: 1F        .byte $1F   ; 
- D 0 - I - 0x00824F 02:823F: 02        .byte $02   ; 
- D 0 - I - 0x008250 02:8240: 32        .byte $32   ; <2>
- D 0 - I - 0x008251 02:8241: 02        .byte $02   ; 
- D 0 - I - 0x008252 02:8242: 1F        .byte $1F   ; 
- D 0 - I - 0x008253 02:8243: 0A        .byte $0A   ; 
- D 0 - I - 0x008254 02:8244: 35        .byte $35   ; <5>
- D 0 - I - 0x008255 02:8245: 02        .byte $02   ; 
- D 0 - I - 0x008256 02:8246: 1F        .byte $1F   ; 
- D 0 - I - 0x008257 02:8247: 04        .byte $04   ; 
- D 0 - I - 0x008258 02:8248: 29        .byte $29   ; 
- D 0 - I - 0x008259 02:8249: 02        .byte $02   ; 
- D 0 - I - 0x00825A 02:824A: 1F        .byte $1F   ; 
- D 0 - I - 0x00825B 02:824B: 16        .byte $16   ; 
- D 0 - I - 0x00825C 02:824C: 35        .byte $35   ; <5>
- D 0 - I - 0x00825D 02:824D: 01        .byte $01   ; 
- D 0 - I - 0x00825E 02:824E: 33        .byte $33   ; <3>
- D 0 - I - 0x00825F 02:824F: 01        .byte $01   ; 
- D 0 - I - 0x008260 02:8250: 32        .byte $32   ; <2>
- D 0 - I - 0x008261 02:8251: 01        .byte $01   ; 
- D 0 - I - 0x008262 02:8252: 30        .byte $30   ; <0>
- D 0 - I - 0x008263 02:8253: 01        .byte $01   ; 
- D 0 - I - 0x008264 02:8254: 32        .byte $32   ; <2>
- D 0 - I - 0x008265 02:8255: 01        .byte $01   ; 
- D 0 - I - 0x008266 02:8256: 30        .byte $30   ; <0>
- D 0 - I - 0x008267 02:8257: 01        .byte $01   ; 
- D 0 - I - 0x008268 02:8258: 2A        .byte $2A   ; 
- D 0 - I - 0x008269 02:8259: 01        .byte $01   ; 
- D 0 - I - 0x00826A 02:825A: 29        .byte $29   ; 
- D 0 - I - 0x00826B 02:825B: 01        .byte $01   ; 
- D 0 - I - 0x00826C 02:825C: A0        .byte $A0   ; 
- D 0 - I - 0x00826D 02:825D: 0F        .byte $0F   ; 
- D 0 - I - 0x00826E 02:825E: 37        .byte $37   ; <7>
- D 0 - I - 0x00826F 02:825F: 08        .byte $08   ; 
- D 0 - I - 0x008270 02:8260: 37        .byte $37   ; <7>
- D 0 - I - 0x008271 02:8261: 02        .byte $02   ; 
- D 0 - I - 0x008272 02:8262: 37        .byte $37   ; <7>
- D 0 - I - 0x008273 02:8263: 02        .byte $02   ; 
- D 0 - I - 0x008274 02:8264: 3A        .byte $3A   ; 
- D 0 - I - 0x008275 02:8265: 04        .byte $04   ; 
- D 0 - I - 0x008276 02:8266: 39        .byte $39   ; <9>
- D 0 - I - 0x008277 02:8267: 0C        .byte $0C   ; 
- D 0 - I - 0x008278 02:8268: 35        .byte $35   ; <5>
- D 0 - I - 0x008279 02:8269: 02        .byte $02   ; 
- D 0 - I - 0x00827A 02:826A: 30        .byte $30   ; <0>
- D 0 - I - 0x00827B 02:826B: 02        .byte $02   ; 
- D 0 - I - 0x00827C 02:826C: 32        .byte $32   ; <2>
- D 0 - I - 0x00827D 02:826D: 20        .byte $20   ; 
- D 0 - I - 0x00827E 02:826E: 37        .byte $37   ; <7>
- D 0 - I - 0x00827F 02:826F: 08        .byte $08   ; 
- D 0 - I - 0x008280 02:8270: 37        .byte $37   ; <7>
- D 0 - I - 0x008281 02:8271: 02        .byte $02   ; 
- D 0 - I - 0x008282 02:8272: 37        .byte $37   ; <7>
- D 0 - I - 0x008283 02:8273: 02        .byte $02   ; 
- D 0 - I - 0x008284 02:8274: 3A        .byte $3A   ; 
- D 0 - I - 0x008285 02:8275: 04        .byte $04   ; 
- D 0 - I - 0x008286 02:8276: 40        .byte $40   ; 
- D 0 - I - 0x008287 02:8277: 08        .byte $08   ; 
- D 0 - I - 0x008288 02:8278: 39        .byte $39   ; <9>
- D 0 - I - 0x008289 02:8279: 04        .byte $04   ; 
- D 0 - I - 0x00828A 02:827A: 35        .byte $35   ; <5>
- D 0 - I - 0x00828B 02:827B: 04        .byte $04   ; 
- D 0 - I - 0x00828C 02:827C: 37        .byte $37   ; <7>
- D 0 - I - 0x00828D 02:827D: 20        .byte $20   ; 
- D 0 - I - 0x00828E 02:827E: B0        .byte $B0   ; 
- D 0 - I - 0x00828F 02:827F: 02        .byte $02   ; 
- - - - - - 0x008290 02:8280: FF        .byte $FF   ; 

loc_track5:
- D 0 - I - 0x008291 02:8281: 15        .byte $15   ; 
- D 0 - I - 0x008292 02:8282: 01        .byte $01   ; 
- D 0 - I - 0x008293 02:8283: 04        .byte $04   ; 
- D 0 - I - 0x008294 02:8284: 00        .byte $00   ; 
- D 0 - I - 0x008295 02:8285: 2A        .byte $2A   ; 
- D 0 - I - 0x008296 02:8286: 02        .byte $02   ; 
- D 0 - I - 0x008297 02:8287: 2A        .byte $2A   ; 
- D 0 - I - 0x008298 02:8288: 02        .byte $02   ; 
- D 0 - I - 0x008299 02:8289: 1F        .byte $1F   ; 
- D 0 - I - 0x00829A 02:828A: 06        .byte $06   ; 
- D 0 - I - 0x00829B 02:828B: 29        .byte $29   ; 
- D 0 - I - 0x00829C 02:828C: 02        .byte $02   ; 
- D 0 - I - 0x00829D 02:828D: 1F        .byte $1F   ; 
- D 0 - I - 0x00829E 02:828E: 02        .byte $02   ; 
- D 0 - I - 0x00829F 02:828F: 2A        .byte $2A   ; 
- D 0 - I - 0x0082A0 02:8290: 02        .byte $02   ; 
- D 0 - I - 0x0082A1 02:8291: 1F        .byte $1F   ; 
- D 0 - I - 0x0082A2 02:8292: 0A        .byte $0A   ; 
- D 0 - I - 0x0082A3 02:8293: 32        .byte $32   ; <2>
- D 0 - I - 0x0082A4 02:8294: 02        .byte $02   ; 
- D 0 - I - 0x0082A5 02:8295: 1F        .byte $1F   ; 
- D 0 - I - 0x0082A6 02:8296: 04        .byte $04   ; 
- D 0 - I - 0x0082A7 02:8297: 25        .byte $25   ; 
- D 0 - I - 0x0082A8 02:8298: 02        .byte $02   ; 
- D 0 - I - 0x0082A9 02:8299: 1F        .byte $1F   ; 
- D 0 - I - 0x0082AA 02:829A: 1E        .byte $1E   ; 
- D 0 - I - 0x0082AB 02:829B: 2A        .byte $2A   ; 
- D 0 - I - 0x0082AC 02:829C: 02        .byte $02   ; 
- D 0 - I - 0x0082AD 02:829D: 2A        .byte $2A   ; 
- D 0 - I - 0x0082AE 02:829E: 02        .byte $02   ; 
- D 0 - I - 0x0082AF 02:829F: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B0 02:82A0: 06        .byte $06   ; 
- D 0 - I - 0x0082B1 02:82A1: 29        .byte $29   ; 
- D 0 - I - 0x0082B2 02:82A2: 02        .byte $02   ; 
- D 0 - I - 0x0082B3 02:82A3: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B4 02:82A4: 02        .byte $02   ; 
- D 0 - I - 0x0082B5 02:82A5: 2A        .byte $2A   ; 
- D 0 - I - 0x0082B6 02:82A6: 02        .byte $02   ; 
- D 0 - I - 0x0082B7 02:82A7: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B8 02:82A8: 0A        .byte $0A   ; 
- D 0 - I - 0x0082B9 02:82A9: 32        .byte $32   ; <2>
- D 0 - I - 0x0082BA 02:82AA: 02        .byte $02   ; 
- D 0 - I - 0x0082BB 02:82AB: 1F        .byte $1F   ; 
- D 0 - I - 0x0082BC 02:82AC: 04        .byte $04   ; 
- D 0 - I - 0x0082BD 02:82AD: 25        .byte $25   ; 
- D 0 - I - 0x0082BE 02:82AE: 02        .byte $02   ; 
- D 0 - I - 0x0082BF 02:82AF: 1F        .byte $1F   ; 
- D 0 - I - 0x0082C0 02:82B0: 1E        .byte $1E   ; 
- D 0 - I - 0x0082C1 02:82B1: FD        .byte $FD   ; 
- - - - - - 0x0082C2 02:82B2: FE        .byte $FE   ; 
- D 0 - I - 0x0082C3 02:82B3: 23        .byte $23   ; 
- D 0 - I - 0x0082C4 02:82B4: 02        .byte $02   ; 
- D 0 - I - 0x0082C5 02:82B5: 27        .byte $27   ; 
- D 0 - I - 0x0082C6 02:82B6: 02        .byte $02   ; 
- D 0 - I - 0x0082C7 02:82B7: 2A        .byte $2A   ; 
- D 0 - I - 0x0082C8 02:82B8: 02        .byte $02   ; 
- D 0 - I - 0x0082C9 02:82B9: 27        .byte $27   ; 
- D 0 - I - 0x0082CA 02:82BA: 02        .byte $02   ; 
- D 0 - I - 0x0082CB 02:82BB: 2A        .byte $2A   ; 
- D 0 - I - 0x0082CC 02:82BC: 02        .byte $02   ; 
- D 0 - I - 0x0082CD 02:82BD: 27        .byte $27   ; 
- D 0 - I - 0x0082CE 02:82BE: 02        .byte $02   ; 
- D 0 - I - 0x0082CF 02:82BF: 2A        .byte $2A   ; 
- D 0 - I - 0x0082D0 02:82C0: 02        .byte $02   ; 
- D 0 - I - 0x0082D1 02:82C1: 27        .byte $27   ; 
- D 0 - I - 0x0082D2 02:82C2: 02        .byte $02   ; 
- D 0 - I - 0x0082D3 02:82C3: 25        .byte $25   ; 
- D 0 - I - 0x0082D4 02:82C4: 02        .byte $02   ; 
- D 0 - I - 0x0082D5 02:82C5: 29        .byte $29   ; 
- D 0 - I - 0x0082D6 02:82C6: 02        .byte $02   ; 
- D 0 - I - 0x0082D7 02:82C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0082D8 02:82C8: 02        .byte $02   ; 
- D 0 - I - 0x0082D9 02:82C9: 29        .byte $29   ; 
- D 0 - I - 0x0082DA 02:82CA: 02        .byte $02   ; 
- D 0 - I - 0x0082DB 02:82CB: 30        .byte $30   ; <0>
- D 0 - I - 0x0082DC 02:82CC: 02        .byte $02   ; 
- D 0 - I - 0x0082DD 02:82CD: 29        .byte $29   ; 
- D 0 - I - 0x0082DE 02:82CE: 02        .byte $02   ; 
- D 0 - I - 0x0082DF 02:82CF: 30        .byte $30   ; <0>
- D 0 - I - 0x0082E0 02:82D0: 02        .byte $02   ; 
- D 0 - I - 0x0082E1 02:82D1: 29        .byte $29   ; 
- D 0 - I - 0x0082E2 02:82D2: 02        .byte $02   ; 
- D 0 - I - 0x0082E3 02:82D3: 32        .byte $32   ; <2>
- D 0 - I - 0x0082E4 02:82D4: 02        .byte $02   ; 
- D 0 - I - 0x0082E5 02:82D5: 2A        .byte $2A   ; 
- D 0 - I - 0x0082E6 02:82D6: 02        .byte $02   ; 
- D 0 - I - 0x0082E7 02:82D7: 27        .byte $27   ; 
- D 0 - I - 0x0082E8 02:82D8: 02        .byte $02   ; 
- D 0 - I - 0x0082E9 02:82D9: 32        .byte $32   ; <2>
- D 0 - I - 0x0082EA 02:82DA: 02        .byte $02   ; 
- D 0 - I - 0x0082EB 02:82DB: 2A        .byte $2A   ; 
- D 0 - I - 0x0082EC 02:82DC: 02        .byte $02   ; 
- D 0 - I - 0x0082ED 02:82DD: 27        .byte $27   ; 
- D 0 - I - 0x0082EE 02:82DE: 02        .byte $02   ; 
- D 0 - I - 0x0082EF 02:82DF: 32        .byte $32   ; <2>
- D 0 - I - 0x0082F0 02:82E0: 02        .byte $02   ; 
- D 0 - I - 0x0082F1 02:82E1: 2A        .byte $2A   ; 
- D 0 - I - 0x0082F2 02:82E2: 02        .byte $02   ; 
- D 0 - I - 0x0082F3 02:82E3: 27        .byte $27   ; 
- D 0 - I - 0x0082F4 02:82E4: 02        .byte $02   ; 
- D 0 - I - 0x0082F5 02:82E5: 32        .byte $32   ; <2>
- D 0 - I - 0x0082F6 02:82E6: 02        .byte $02   ; 
- D 0 - I - 0x0082F7 02:82E7: 2A        .byte $2A   ; 
- D 0 - I - 0x0082F8 02:82E8: 02        .byte $02   ; 
- D 0 - I - 0x0082F9 02:82E9: 27        .byte $27   ; 
- D 0 - I - 0x0082FA 02:82EA: 02        .byte $02   ; 
- D 0 - I - 0x0082FB 02:82EB: 32        .byte $32   ; <2>
- D 0 - I - 0x0082FC 02:82EC: 02        .byte $02   ; 
- D 0 - I - 0x0082FD 02:82ED: 2A        .byte $2A   ; 
- D 0 - I - 0x0082FE 02:82EE: 02        .byte $02   ; 
- D 0 - I - 0x0082FF 02:82EF: 27        .byte $27   ; 
- D 0 - I - 0x008300 02:82F0: 02        .byte $02   ; 
- D 0 - I - 0x008301 02:82F1: 2A        .byte $2A   ; 
- D 0 - I - 0x008302 02:82F2: 02        .byte $02   ; 
- D 0 - I - 0x008303 02:82F3: B1        .byte $B1   ; 
- D 0 - I - 0x008304 02:82F4: 00        .byte $00   ; 
- D 0 - I - 0x008305 02:82F5: B0        .byte $B0   ; 
- D 0 - I - 0x008306 02:82F6: 02        .byte $02   ; 

loc_track6:
- D 0 - I - 0x008307 02:82F7: 05        .byte $05   ; 
- D 0 - I - 0x008308 02:82F8: 01        .byte $01   ; 
- D 0 - I - 0x008309 02:82F9: 0F        .byte $0F   ; 
- D 0 - I - 0x00830A 02:82FA: 00        .byte $00   ; 
- D 0 - I - 0x00830B 02:82FB: A3        .byte $A3   ; 
- D 0 - I - 0x00830C 02:82FC: 21        .byte $21   ; 
- D 0 - I - 0x00830D 02:82FD: 37        .byte $37   ; <7>
- D 0 - I - 0x00830E 02:82FE: 01        .byte $01   ; 
- D 0 - I - 0x00830F 02:82FF: 38        .byte $38   ; <8>
- D 0 - I - 0x008310 02:8300: 01        .byte $01   ; 
- D 0 - I - 0x008311 02:8301: 39        .byte $39   ; <9>
- D 0 - I - 0x008312 02:8302: 0C        .byte $0C   ; 
- D 0 - I - 0x008313 02:8303: 32        .byte $32   ; <2>
- D 0 - I - 0x008314 02:8304: 04        .byte $04   ; 
- D 0 - I - 0x008315 02:8305: 34        .byte $34   ; <4>
- D 0 - I - 0x008316 02:8306: 0C        .byte $0C   ; 
- D 0 - I - 0x008317 02:8307: 30        .byte $30   ; <0>
- D 0 - I - 0x008318 02:8308: 04        .byte $04   ; 
- D 0 - I - 0x008319 02:8309: 32        .byte $32   ; <2>
- D 0 - I - 0x00831A 02:830A: 0C        .byte $0C   ; 
- D 0 - I - 0x00831B 02:830B: 29        .byte $29   ; 
- D 0 - I - 0x00831C 02:830C: 04        .byte $04   ; 
- D 0 - I - 0x00831D 02:830D: 27        .byte $27   ; 
- D 0 - I - 0x00831E 02:830E: 0C        .byte $0C   ; 
- D 0 - I - 0x00831F 02:830F: 30        .byte $30   ; <0>
- D 0 - I - 0x008320 02:8310: 01        .byte $01   ; 
- D 0 - I - 0x008321 02:8311: 32        .byte $32   ; <2>
- D 0 - I - 0x008322 02:8312: 01        .byte $01   ; 
- D 0 - I - 0x008323 02:8313: 30        .byte $30   ; <0>
- D 0 - I - 0x008324 02:8314: 01        .byte $01   ; 
- D 0 - I - 0x008325 02:8315: 32        .byte $32   ; <2>
- D 0 - I - 0x008326 02:8316: 01        .byte $01   ; 
- D 0 - I - 0x008327 02:8317: 37        .byte $37   ; <7>
- D 0 - I - 0x008328 02:8318: 0C        .byte $0C   ; 
- D 0 - I - 0x008329 02:8319: B1        .byte $B1   ; 
- D 0 - I - 0x00832A 02:831A: 0C        .byte $0C   ; 
- D 0 - I - 0x00832B 02:831B: 32        .byte $32   ; <2>
- D 0 - I - 0x00832C 02:831C: 01        .byte $01   ; 
- D 0 - I - 0x00832D 02:831D: 34        .byte $34   ; <4>
- D 0 - I - 0x00832E 02:831E: 01        .byte $01   ; 
- D 0 - I - 0x00832F 02:831F: B1        .byte $B1   ; 
- D 0 - I - 0x008330 02:8320: 12        .byte $12   ; 
- D 0 - I - 0x008331 02:8321: 37        .byte $37   ; <7>
- D 0 - I - 0x008332 02:8322: 10        .byte $10   ; 
- D 0 - I - 0x008333 02:8323: 24        .byte $24   ; 
- D 0 - I - 0x008334 02:8324: 01        .byte $01   ; 
- D 0 - I - 0x008335 02:8325: 27        .byte $27   ; 
- D 0 - I - 0x008336 02:8326: 01        .byte $01   ; 
- D 0 - I - 0x008337 02:8327: 29        .byte $29   ; 
- D 0 - I - 0x008338 02:8328: 01        .byte $01   ; 
- D 0 - I - 0x008339 02:8329: 30        .byte $30   ; <0>
- D 0 - I - 0x00833A 02:832A: 01        .byte $01   ; 
- D 0 - I - 0x00833B 02:832B: 27        .byte $27   ; 
- D 0 - I - 0x00833C 02:832C: 01        .byte $01   ; 
- D 0 - I - 0x00833D 02:832D: 29        .byte $29   ; 
- D 0 - I - 0x00833E 02:832E: 01        .byte $01   ; 
- D 0 - I - 0x00833F 02:832F: 30        .byte $30   ; <0>
- D 0 - I - 0x008340 02:8330: 01        .byte $01   ; 
- D 0 - I - 0x008341 02:8331: 32        .byte $32   ; <2>
- D 0 - I - 0x008342 02:8332: 01        .byte $01   ; 
- D 0 - I - 0x008343 02:8333: 29        .byte $29   ; 
- D 0 - I - 0x008344 02:8334: 01        .byte $01   ; 
- D 0 - I - 0x008345 02:8335: 30        .byte $30   ; <0>
- D 0 - I - 0x008346 02:8336: 01        .byte $01   ; 
- D 0 - I - 0x008347 02:8337: 32        .byte $32   ; <2>
- D 0 - I - 0x008348 02:8338: 01        .byte $01   ; 
- D 0 - I - 0x008349 02:8339: 34        .byte $34   ; <4>
- D 0 - I - 0x00834A 02:833A: 01        .byte $01   ; 
- D 0 - I - 0x00834B 02:833B: 30        .byte $30   ; <0>
- D 0 - I - 0x00834C 02:833C: 01        .byte $01   ; 
- D 0 - I - 0x00834D 02:833D: 32        .byte $32   ; <2>
- D 0 - I - 0x00834E 02:833E: 01        .byte $01   ; 
- D 0 - I - 0x00834F 02:833F: 34        .byte $34   ; <4>
- D 0 - I - 0x008350 02:8340: 01        .byte $01   ; 
- D 0 - I - 0x008351 02:8341: 37        .byte $37   ; <7>
- D 0 - I - 0x008352 02:8342: 01        .byte $01   ; 
- D 0 - I - 0x008353 02:8343: 39        .byte $39   ; <9>
- D 0 - I - 0x008354 02:8344: 0C        .byte $0C   ; 
- D 0 - I - 0x008355 02:8345: 37        .byte $37   ; <7>
- D 0 - I - 0x008356 02:8346: 04        .byte $04   ; 
- D 0 - I - 0x008357 02:8347: 34        .byte $34   ; <4>
- D 0 - I - 0x008358 02:8348: 08        .byte $08   ; 
- D 0 - I - 0x008359 02:8349: 37        .byte $37   ; <7>
- D 0 - I - 0x00835A 02:834A: 08        .byte $08   ; 
- D 0 - I - 0x00835B 02:834B: 40        .byte $40   ; 
- D 0 - I - 0x00835C 02:834C: 02        .byte $02   ; 
- D 0 - I - 0x00835D 02:834D: 39        .byte $39   ; <9>
- D 0 - I - 0x00835E 02:834E: 02        .byte $02   ; 
- D 0 - I - 0x00835F 02:834F: 37        .byte $37   ; <7>
- D 0 - I - 0x008360 02:8350: 02        .byte $02   ; 
- D 0 - I - 0x008361 02:8351: 34        .byte $34   ; <4>
- D 0 - I - 0x008362 02:8352: 06        .byte $06   ; 
- D 0 - I - 0x008363 02:8353: 32        .byte $32   ; <2>
- D 0 - I - 0x008364 02:8354: 04        .byte $04   ; 
- D 0 - I - 0x008365 02:8355: 30        .byte $30   ; <0>
- D 0 - I - 0x008366 02:8356: 0E        .byte $0E   ; 
- D 0 - I - 0x008367 02:8357: B0        .byte $B0   ; 
- D 0 - I - 0x008368 02:8358: 02        .byte $02   ; 
- - - - - - 0x008369 02:8359: FF        .byte $FF   ; 

loc_track7:
- D 0 - I - 0x00836A 02:835A: 05        .byte $05   ; 
- D 0 - I - 0x00836B 02:835B: 19        .byte $19   ; 
- D 0 - I - 0x00836C 02:835C: 00        .byte $00   ; 
- D 0 - I - 0x00836D 02:835D: 00        .byte $00   ; 
- D 0 - I - 0x00836E 02:835E: 1F        .byte $1F   ; 
- D 0 - I - 0x00836F 02:835F: 02        .byte $02   ; 
- D 0 - I - 0x008370 02:8360: 27        .byte $27   ; 
- D 0 - I - 0x008371 02:8361: 02        .byte $02   ; 
- D 0 - I - 0x008372 02:8362: 29        .byte $29   ; 
- D 0 - I - 0x008373 02:8363: 02        .byte $02   ; 
- D 0 - I - 0x008374 02:8364: 30        .byte $30   ; <0>
- D 0 - I - 0x008375 02:8365: 02        .byte $02   ; 
- D 0 - I - 0x008376 02:8366: B4        .byte $B4   ; 
- D 0 - I - 0x008377 02:8367: 03        .byte $03   ; 
- D 0 - I - 0x008378 02:8368: 32        .byte $32   ; <2>
- D 0 - I - 0x008379 02:8369: 02        .byte $02   ; 
- D 0 - I - 0x00837A 02:836A: 24        .byte $24   ; 
- D 0 - I - 0x00837B 02:836B: 02        .byte $02   ; 
- D 0 - I - 0x00837C 02:836C: 27        .byte $27   ; 
- D 0 - I - 0x00837D 02:836D: 02        .byte $02   ; 
- D 0 - I - 0x00837E 02:836E: 29        .byte $29   ; 
- D 0 - I - 0x00837F 02:836F: 02        .byte $02   ; 
- D 0 - I - 0x008380 02:8370: B3        .byte $B3   ; 
- D 0 - I - 0x008381 02:8371: 08        .byte $08   ; 
- D 0 - I - 0x008382 02:8372: 30        .byte $30   ; <0>
- D 0 - I - 0x008383 02:8373: 02        .byte $02   ; 
- D 0 - I - 0x008384 02:8374: 32        .byte $32   ; <2>
- D 0 - I - 0x008385 02:8375: 02        .byte $02   ; 
- D 0 - I - 0x008386 02:8376: 30        .byte $30   ; <0>
- D 0 - I - 0x008387 02:8377: 02        .byte $02   ; 
- D 0 - I - 0x008388 02:8378: 29        .byte $29   ; 
- D 0 - I - 0x008389 02:8379: 02        .byte $02   ; 
- D 0 - I - 0x00838A 02:837A: 29        .byte $29   ; 
- D 0 - I - 0x00838B 02:837B: 02        .byte $02   ; 
- D 0 - I - 0x00838C 02:837C: 30        .byte $30   ; <0>
- D 0 - I - 0x00838D 02:837D: 02        .byte $02   ; 
- D 0 - I - 0x00838E 02:837E: 32        .byte $32   ; <2>
- D 0 - I - 0x00838F 02:837F: 02        .byte $02   ; 
- D 0 - I - 0x008390 02:8380: 29        .byte $29   ; 
- D 0 - I - 0x008391 02:8381: 06        .byte $06   ; 
- D 0 - I - 0x008392 02:8382: 29        .byte $29   ; 
- D 0 - I - 0x008393 02:8383: 04        .byte $04   ; 
- D 0 - I - 0x008394 02:8384: B1        .byte $B1   ; 
- D 0 - I - 0x008395 02:8385: 10        .byte $10   ; 
- D 0 - I - 0x008396 02:8386: 27        .byte $27   ; 
- D 0 - I - 0x008397 02:8387: 02        .byte $02   ; 
- D 0 - I - 0x008398 02:8388: 30        .byte $30   ; <0>
- D 0 - I - 0x008399 02:8389: 02        .byte $02   ; 
- D 0 - I - 0x00839A 02:838A: 32        .byte $32   ; <2>
- D 0 - I - 0x00839B 02:838B: 02        .byte $02   ; 
- D 0 - I - 0x00839C 02:838C: 27        .byte $27   ; 
- D 0 - I - 0x00839D 02:838D: 06        .byte $06   ; 
- D 0 - I - 0x00839E 02:838E: 27        .byte $27   ; 
- D 0 - I - 0x00839F 02:838F: 04        .byte $04   ; 
- D 0 - I - 0x0083A0 02:8390: B1        .byte $B1   ; 
- D 0 - I - 0x0083A1 02:8391: 16        .byte $16   ; 
- D 0 - I - 0x0083A2 02:8392: 24        .byte $24   ; 
- D 0 - I - 0x0083A3 02:8393: 02        .byte $02   ; 
- D 0 - I - 0x0083A4 02:8394: 27        .byte $27   ; 
- D 0 - I - 0x0083A5 02:8395: 02        .byte $02   ; 
- D 0 - I - 0x0083A6 02:8396: 29        .byte $29   ; 
- D 0 - I - 0x0083A7 02:8397: 02        .byte $02   ; 
- D 0 - I - 0x0083A8 02:8398: 24        .byte $24   ; 
- D 0 - I - 0x0083A9 02:8399: 06        .byte $06   ; 
- D 0 - I - 0x0083AA 02:839A: 24        .byte $24   ; 
- D 0 - I - 0x0083AB 02:839B: 04        .byte $04   ; 
- D 0 - I - 0x0083AC 02:839C: B1        .byte $B1   ; 
- D 0 - I - 0x0083AD 02:839D: 1C        .byte $1C   ; 
- D 0 - I - 0x0083AE 02:839E: 29        .byte $29   ; 
- D 0 - I - 0x0083AF 02:839F: 02        .byte $02   ; 
- D 0 - I - 0x0083B0 02:83A0: 30        .byte $30   ; <0>
- D 0 - I - 0x0083B1 02:83A1: 02        .byte $02   ; 
- D 0 - I - 0x0083B2 02:83A2: 32        .byte $32   ; <2>
- D 0 - I - 0x0083B3 02:83A3: 02        .byte $02   ; 
- D 0 - I - 0x0083B4 02:83A4: A2        .byte $A2   ; 
- D 0 - I - 0x0083B5 02:83A5: 7F        .byte $7F   ; 
- D 0 - I - 0x0083B6 02:83A6: 29        .byte $29   ; 
- D 0 - I - 0x0083B7 02:83A7: 06        .byte $06   ; 
- D 0 - I - 0x0083B8 02:83A8: 27        .byte $27   ; 
- D 0 - I - 0x0083B9 02:83A9: 04        .byte $04   ; 
- D 0 - I - 0x0083BA 02:83AA: 29        .byte $29   ; 
- D 0 - I - 0x0083BB 02:83AB: 10        .byte $10   ; 
- D 0 - I - 0x0083BC 02:83AC: A2        .byte $A2   ; 
- D 0 - I - 0x0083BD 02:83AD: 19        .byte $19   ; 
- D 0 - I - 0x0083BE 02:83AE: B0        .byte $B0   ; 
- D 0 - I - 0x0083BF 02:83AF: 03        .byte $03   ; 
- - - - - - 0x0083C0 02:83B0: FF        .byte $FF   ; 

loc_track8:
- D 0 - I - 0x0083C1 02:83B1: 04        .byte $04   ; 
- D 0 - I - 0x0083C2 02:83B2: 02        .byte $02   ; 
- D 0 - I - 0x0083C3 02:83B3: 02        .byte $02   ; 
- D 0 - I - 0x0083C4 02:83B4: 00        .byte $00   ; 
- D 0 - I - 0x0083C5 02:83B5: 27        .byte $27   ; 
- D 0 - I - 0x0083C6 02:83B6: 02        .byte $02   ; 
- D 0 - I - 0x0083C7 02:83B7: 1F        .byte $1F   ; 
- D 0 - I - 0x0083C8 02:83B8: 02        .byte $02   ; 
- D 0 - I - 0x0083C9 02:83B9: 27        .byte $27   ; 
- D 0 - I - 0x0083CA 02:83BA: 02        .byte $02   ; 
- D 0 - I - 0x0083CB 02:83BB: 25        .byte $25   ; 
- D 0 - I - 0x0083CC 02:83BC: 02        .byte $02   ; 
- D 0 - I - 0x0083CD 02:83BD: 1F        .byte $1F   ; 
- D 0 - I - 0x0083CE 02:83BE: 02        .byte $02   ; 
- D 0 - I - 0x0083CF 02:83BF: 25        .byte $25   ; 
- D 0 - I - 0x0083D0 02:83C0: 02        .byte $02   ; 
- D 0 - I - 0x0083D1 02:83C1: 27        .byte $27   ; 
- D 0 - I - 0x0083D2 02:83C2: 04        .byte $04   ; 
- D 0 - I - 0x0083D3 02:83C3: 1F        .byte $1F   ; 
- D 0 - I - 0x0083D4 02:83C4: 02        .byte $02   ; 
- D 0 - I - 0x0083D5 02:83C5: 23        .byte $23   ; 
- D 0 - I - 0x0083D6 02:83C6: 06        .byte $06   ; 
- D 0 - I - 0x0083D7 02:83C7: 25        .byte $25   ; 
- D 0 - I - 0x0083D8 02:83C8: 04        .byte $04   ; 
- D 0 - I - 0x0083D9 02:83C9: 27        .byte $27   ; 
- D 0 - I - 0x0083DA 02:83CA: 04        .byte $04   ; 
- D 0 - I - 0x0083DB 02:83CB: A0        .byte $A0   ; 
- D 0 - I - 0x0083DC 02:83CC: 0A        .byte $0A   ; 
- D 0 - I - 0x0083DD 02:83CD: 2A        .byte $2A   ; 
- D 0 - I - 0x0083DE 02:83CE: 06        .byte $06   ; 
- D 0 - I - 0x0083DF 02:83CF: 28        .byte $28   ; 
- D 0 - I - 0x0083E0 02:83D0: 06        .byte $06   ; 
- D 0 - I - 0x0083E1 02:83D1: 27        .byte $27   ; 
- D 0 - I - 0x0083E2 02:83D2: 06        .byte $06   ; 
- D 0 - I - 0x0083E3 02:83D3: 25        .byte $25   ; 
- D 0 - I - 0x0083E4 02:83D4: 06        .byte $06   ; 
- D 0 - I - 0x0083E5 02:83D5: 23        .byte $23   ; 
- D 0 - I - 0x0083E6 02:83D6: 04        .byte $04   ; 
- D 0 - I - 0x0083E7 02:83D7: 25        .byte $25   ; 
- D 0 - I - 0x0083E8 02:83D8: 04        .byte $04   ; 
- D 0 - I - 0x0083E9 02:83D9: A0        .byte $A0   ; 
- D 0 - I - 0x0083EA 02:83DA: 02        .byte $02   ; 
- D 0 - I - 0x0083EB 02:83DB: 27        .byte $27   ; 
- D 0 - I - 0x0083EC 02:83DC: 02        .byte $02   ; 
- D 0 - I - 0x0083ED 02:83DD: 1F        .byte $1F   ; 
- D 0 - I - 0x0083EE 02:83DE: 02        .byte $02   ; 
- D 0 - I - 0x0083EF 02:83DF: 27        .byte $27   ; 
- D 0 - I - 0x0083F0 02:83E0: 02        .byte $02   ; 
- D 0 - I - 0x0083F1 02:83E1: 25        .byte $25   ; 
- D 0 - I - 0x0083F2 02:83E2: 02        .byte $02   ; 
- D 0 - I - 0x0083F3 02:83E3: 1F        .byte $1F   ; 
- D 0 - I - 0x0083F4 02:83E4: 02        .byte $02   ; 
- D 0 - I - 0x0083F5 02:83E5: 25        .byte $25   ; 
- D 0 - I - 0x0083F6 02:83E6: 02        .byte $02   ; 
- D 0 - I - 0x0083F7 02:83E7: 27        .byte $27   ; 
- D 0 - I - 0x0083F8 02:83E8: 04        .byte $04   ; 
- D 0 - I - 0x0083F9 02:83E9: 1F        .byte $1F   ; 
- D 0 - I - 0x0083FA 02:83EA: 02        .byte $02   ; 
- D 0 - I - 0x0083FB 02:83EB: 23        .byte $23   ; 
- D 0 - I - 0x0083FC 02:83EC: 06        .byte $06   ; 
- D 0 - I - 0x0083FD 02:83ED: 25        .byte $25   ; 
- D 0 - I - 0x0083FE 02:83EE: 04        .byte $04   ; 
- D 0 - I - 0x0083FF 02:83EF: 27        .byte $27   ; 
- D 0 - I - 0x008400 02:83F0: 04        .byte $04   ; 
- D 0 - I - 0x008401 02:83F1: A0        .byte $A0   ; 
- D 0 - I - 0x008402 02:83F2: 0A        .byte $0A   ; 
- D 0 - I - 0x008403 02:83F3: 25        .byte $25   ; 
- D 0 - I - 0x008404 02:83F4: 0E        .byte $0E   ; 
- D 0 - I - 0x008405 02:83F5: 27        .byte $27   ; 
- D 0 - I - 0x008406 02:83F6: 12        .byte $12   ; 
- D 0 - I - 0x008407 02:83F7: A0        .byte $A0   ; 
- D 0 - I - 0x008408 02:83F8: 02        .byte $02   ; 
- D 0 - I - 0x008409 02:83F9: B1        .byte $B1   ; 
- D 0 - I - 0x00840A 02:83FA: 02        .byte $02   ; 
- D 0 - I - 0x00840B 02:83FB: FD        .byte $FD   ; 
- - - - - - 0x00840C 02:83FC: FE        .byte $FE   ; 
- D 0 - I - 0x00840D 02:83FD: 33        .byte $33   ; <3>
- D 0 - I - 0x00840E 02:83FE: 02        .byte $02   ; 
- D 0 - I - 0x00840F 02:83FF: 32        .byte $32   ; <2>
- D 0 - I - 0x008410 02:8400: 02        .byte $02   ; 
- D 0 - I - 0x008411 02:8401: 30        .byte $30   ; <0>
- D 0 - I - 0x008412 02:8402: 02        .byte $02   ; 
- D 0 - I - 0x008413 02:8403: 33        .byte $33   ; <3>
- D 0 - I - 0x008414 02:8404: 04        .byte $04   ; 
- D 0 - I - 0x008415 02:8405: 32        .byte $32   ; <2>
- D 0 - I - 0x008416 02:8406: 02        .byte $02   ; 
- D 0 - I - 0x008417 02:8407: 30        .byte $30   ; <0>
- D 0 - I - 0x008418 02:8408: 04        .byte $04   ; 
- D 0 - I - 0x008419 02:8409: 33        .byte $33   ; <3>
- D 0 - I - 0x00841A 02:840A: 02        .byte $02   ; 
- D 0 - I - 0x00841B 02:840B: 32        .byte $32   ; <2>
- D 0 - I - 0x00841C 02:840C: 02        .byte $02   ; 
- D 0 - I - 0x00841D 02:840D: 30        .byte $30   ; <0>
- D 0 - I - 0x00841E 02:840E: 02        .byte $02   ; 
- D 0 - I - 0x00841F 02:840F: 35        .byte $35   ; <5>
- D 0 - I - 0x008420 02:8410: 04        .byte $04   ; 
- D 0 - I - 0x008421 02:8411: 33        .byte $33   ; <3>
- D 0 - I - 0x008422 02:8412: 02        .byte $02   ; 
- D 0 - I - 0x008423 02:8413: 32        .byte $32   ; <2>
- D 0 - I - 0x008424 02:8414: 02        .byte $02   ; 
- D 0 - I - 0x008425 02:8415: 30        .byte $30   ; <0>
- D 0 - I - 0x008426 02:8416: 02        .byte $02   ; 
- D 0 - I - 0x008427 02:8417: B1        .byte $B1   ; 
- D 0 - I - 0x008428 02:8418: 00        .byte $00   ; 
- D 0 - I - 0x008429 02:8419: 33        .byte $33   ; <3>
- D 0 - I - 0x00842A 02:841A: 02        .byte $02   ; 
- D 0 - I - 0x00842B 02:841B: 32        .byte $32   ; <2>
- D 0 - I - 0x00842C 02:841C: 02        .byte $02   ; 
- D 0 - I - 0x00842D 02:841D: 30        .byte $30   ; <0>
- D 0 - I - 0x00842E 02:841E: 02        .byte $02   ; 
- D 0 - I - 0x00842F 02:841F: 33        .byte $33   ; <3>
- D 0 - I - 0x008430 02:8420: 04        .byte $04   ; 
- D 0 - I - 0x008431 02:8421: 32        .byte $32   ; <2>
- D 0 - I - 0x008432 02:8422: 02        .byte $02   ; 
- D 0 - I - 0x008433 02:8423: A0        .byte $A0   ; 
- D 0 - I - 0x008434 02:8424: 0F        .byte $0F   ; 
- D 0 - I - 0x008435 02:8425: 30        .byte $30   ; <0>
- D 0 - I - 0x008436 02:8426: 0C        .byte $0C   ; 
- D 0 - I - 0x008437 02:8427: 30        .byte $30   ; <0>
- D 0 - I - 0x008438 02:8428: 02        .byte $02   ; 
- D 0 - I - 0x008439 02:8429: 32        .byte $32   ; <2>
- D 0 - I - 0x00843A 02:842A: 02        .byte $02   ; 
- D 0 - I - 0x00843B 02:842B: 33        .byte $33   ; <3>
- D 0 - I - 0x00843C 02:842C: 02        .byte $02   ; 
- D 0 - I - 0x00843D 02:842D: 35        .byte $35   ; <5>
- D 0 - I - 0x00843E 02:842E: 02        .byte $02   ; 
- D 0 - I - 0x00843F 02:842F: 37        .byte $37   ; <7>
- D 0 - I - 0x008440 02:8430: 20        .byte $20   ; 
- D 0 - I - 0x008441 02:8431: A0        .byte $A0   ; 
- D 0 - I - 0x008442 02:8432: 02        .byte $02   ; 
- D 0 - I - 0x008443 02:8433: B0        .byte $B0   ; 
- D 0 - I - 0x008444 02:8434: 02        .byte $02   ; 
- - - - - - 0x008445 02:8435: FF        .byte $FF   ; 

loc_track3B:
- D 0 - I - 0x008446 02:8436: 04        .byte $04   ; 
- D 0 - I - 0x008447 02:8437: 02        .byte $02   ; 
- D 0 - I - 0x008448 02:8438: 02        .byte $02   ; 
- D 0 - I - 0x008449 02:8439: 00        .byte $00   ; 
- D 0 - I - 0x00844A 02:843A: A3        .byte $A3   ; 
- D 0 - I - 0x00844B 02:843B: 60        .byte $60   ; 
- D 0 - I - 0x00844C 02:843C: 27        .byte $27   ; 
- D 0 - I - 0x00844D 02:843D: 02        .byte $02   ; 
- D 0 - I - 0x00844E 02:843E: 1F        .byte $1F   ; 
- D 0 - I - 0x00844F 02:843F: 02        .byte $02   ; 
- D 0 - I - 0x008450 02:8440: 27        .byte $27   ; 
- D 0 - I - 0x008451 02:8441: 02        .byte $02   ; 
- D 0 - I - 0x008452 02:8442: 25        .byte $25   ; 
- D 0 - I - 0x008453 02:8443: 02        .byte $02   ; 
- D 0 - I - 0x008454 02:8444: 1F        .byte $1F   ; 
- D 0 - I - 0x008455 02:8445: 02        .byte $02   ; 
- D 0 - I - 0x008456 02:8446: 25        .byte $25   ; 
- D 0 - I - 0x008457 02:8447: 02        .byte $02   ; 
- D 0 - I - 0x008458 02:8448: 27        .byte $27   ; 
- D 0 - I - 0x008459 02:8449: 04        .byte $04   ; 
- D 0 - I - 0x00845A 02:844A: 1F        .byte $1F   ; 
- D 0 - I - 0x00845B 02:844B: 02        .byte $02   ; 
- D 0 - I - 0x00845C 02:844C: 23        .byte $23   ; 
- D 0 - I - 0x00845D 02:844D: 06        .byte $06   ; 
- D 0 - I - 0x00845E 02:844E: 25        .byte $25   ; 
- D 0 - I - 0x00845F 02:844F: 04        .byte $04   ; 
- D 0 - I - 0x008460 02:8450: 27        .byte $27   ; 
- D 0 - I - 0x008461 02:8451: 04        .byte $04   ; 
- D 0 - I - 0x008462 02:8452: A0        .byte $A0   ; 
- D 0 - I - 0x008463 02:8453: 0A        .byte $0A   ; 
- D 0 - I - 0x008464 02:8454: 2A        .byte $2A   ; 
- D 0 - I - 0x008465 02:8455: 06        .byte $06   ; 
- D 0 - I - 0x008466 02:8456: 28        .byte $28   ; 
- D 0 - I - 0x008467 02:8457: 06        .byte $06   ; 
- D 0 - I - 0x008468 02:8458: 27        .byte $27   ; 
- D 0 - I - 0x008469 02:8459: 06        .byte $06   ; 
- D 0 - I - 0x00846A 02:845A: 25        .byte $25   ; 
- D 0 - I - 0x00846B 02:845B: 06        .byte $06   ; 
- D 0 - I - 0x00846C 02:845C: 23        .byte $23   ; 
- D 0 - I - 0x00846D 02:845D: 04        .byte $04   ; 
- D 0 - I - 0x00846E 02:845E: 25        .byte $25   ; 
- D 0 - I - 0x00846F 02:845F: 04        .byte $04   ; 
- D 0 - I - 0x008470 02:8460: A0        .byte $A0   ; 
- D 0 - I - 0x008471 02:8461: 02        .byte $02   ; 
- D 0 - I - 0x008472 02:8462: 27        .byte $27   ; 
- D 0 - I - 0x008473 02:8463: 02        .byte $02   ; 
- D 0 - I - 0x008474 02:8464: 1F        .byte $1F   ; 
- D 0 - I - 0x008475 02:8465: 02        .byte $02   ; 
- D 0 - I - 0x008476 02:8466: 27        .byte $27   ; 
- D 0 - I - 0x008477 02:8467: 02        .byte $02   ; 
- D 0 - I - 0x008478 02:8468: 25        .byte $25   ; 
- D 0 - I - 0x008479 02:8469: 02        .byte $02   ; 
- D 0 - I - 0x00847A 02:846A: 1F        .byte $1F   ; 
- D 0 - I - 0x00847B 02:846B: 02        .byte $02   ; 
- D 0 - I - 0x00847C 02:846C: 25        .byte $25   ; 
- D 0 - I - 0x00847D 02:846D: 02        .byte $02   ; 
- D 0 - I - 0x00847E 02:846E: 27        .byte $27   ; 
- D 0 - I - 0x00847F 02:846F: 04        .byte $04   ; 
- D 0 - I - 0x008480 02:8470: 1F        .byte $1F   ; 
- D 0 - I - 0x008481 02:8471: 02        .byte $02   ; 
- D 0 - I - 0x008482 02:8472: 23        .byte $23   ; 
- D 0 - I - 0x008483 02:8473: 06        .byte $06   ; 
- D 0 - I - 0x008484 02:8474: 25        .byte $25   ; 
- D 0 - I - 0x008485 02:8475: 04        .byte $04   ; 
- D 0 - I - 0x008486 02:8476: 27        .byte $27   ; 
- D 0 - I - 0x008487 02:8477: 04        .byte $04   ; 
- D 0 - I - 0x008488 02:8478: A0        .byte $A0   ; 
- D 0 - I - 0x008489 02:8479: 0A        .byte $0A   ; 
- D 0 - I - 0x00848A 02:847A: 25        .byte $25   ; 
- D 0 - I - 0x00848B 02:847B: 0E        .byte $0E   ; 
- D 0 - I - 0x00848C 02:847C: 27        .byte $27   ; 
- D 0 - I - 0x00848D 02:847D: 12        .byte $12   ; 
- D 0 - I - 0x00848E 02:847E: A0        .byte $A0   ; 
- D 0 - I - 0x00848F 02:847F: 02        .byte $02   ; 
- D 0 - I - 0x008490 02:8480: B1        .byte $B1   ; 
- D 0 - I - 0x008491 02:8481: 02        .byte $02   ; 
- D 0 - I - 0x008492 02:8482: FD        .byte $FD   ; 
- - - - - - 0x008493 02:8483: FE        .byte $FE   ; 
- D 0 - I - 0x008494 02:8484: 33        .byte $33   ; <3>
- D 0 - I - 0x008495 02:8485: 02        .byte $02   ; 
- D 0 - I - 0x008496 02:8486: 32        .byte $32   ; <2>
- D 0 - I - 0x008497 02:8487: 02        .byte $02   ; 
- D 0 - I - 0x008498 02:8488: 30        .byte $30   ; <0>
- D 0 - I - 0x008499 02:8489: 02        .byte $02   ; 
- D 0 - I - 0x00849A 02:848A: 33        .byte $33   ; <3>
- D 0 - I - 0x00849B 02:848B: 04        .byte $04   ; 
- D 0 - I - 0x00849C 02:848C: 32        .byte $32   ; <2>
- D 0 - I - 0x00849D 02:848D: 02        .byte $02   ; 
- D 0 - I - 0x00849E 02:848E: 30        .byte $30   ; <0>
- D 0 - I - 0x00849F 02:848F: 04        .byte $04   ; 
- D 0 - I - 0x0084A0 02:8490: 33        .byte $33   ; <3>
- D 0 - I - 0x0084A1 02:8491: 02        .byte $02   ; 
- D 0 - I - 0x0084A2 02:8492: 32        .byte $32   ; <2>
- D 0 - I - 0x0084A3 02:8493: 02        .byte $02   ; 
- D 0 - I - 0x0084A4 02:8494: 30        .byte $30   ; <0>
- D 0 - I - 0x0084A5 02:8495: 02        .byte $02   ; 
- D 0 - I - 0x0084A6 02:8496: 35        .byte $35   ; <5>
- D 0 - I - 0x0084A7 02:8497: 04        .byte $04   ; 
- D 0 - I - 0x0084A8 02:8498: 33        .byte $33   ; <3>
- D 0 - I - 0x0084A9 02:8499: 02        .byte $02   ; 
- D 0 - I - 0x0084AA 02:849A: 32        .byte $32   ; <2>
- D 0 - I - 0x0084AB 02:849B: 02        .byte $02   ; 
- D 0 - I - 0x0084AC 02:849C: 30        .byte $30   ; <0>
- D 0 - I - 0x0084AD 02:849D: 02        .byte $02   ; 
- D 0 - I - 0x0084AE 02:849E: B1        .byte $B1   ; 
- D 0 - I - 0x0084AF 02:849F: 00        .byte $00   ; 
- D 0 - I - 0x0084B0 02:84A0: 33        .byte $33   ; <3>
- D 0 - I - 0x0084B1 02:84A1: 02        .byte $02   ; 
- D 0 - I - 0x0084B2 02:84A2: 32        .byte $32   ; <2>
- D 0 - I - 0x0084B3 02:84A3: 02        .byte $02   ; 
- D 0 - I - 0x0084B4 02:84A4: 30        .byte $30   ; <0>
- D 0 - I - 0x0084B5 02:84A5: 02        .byte $02   ; 
- D 0 - I - 0x0084B6 02:84A6: 33        .byte $33   ; <3>
- D 0 - I - 0x0084B7 02:84A7: 04        .byte $04   ; 
- D 0 - I - 0x0084B8 02:84A8: 32        .byte $32   ; <2>
- D 0 - I - 0x0084B9 02:84A9: 02        .byte $02   ; 
- D 0 - I - 0x0084BA 02:84AA: A0        .byte $A0   ; 
- D 0 - I - 0x0084BB 02:84AB: 0F        .byte $0F   ; 
- D 0 - I - 0x0084BC 02:84AC: 30        .byte $30   ; <0>
- D 0 - I - 0x0084BD 02:84AD: 0C        .byte $0C   ; 
- D 0 - I - 0x0084BE 02:84AE: 30        .byte $30   ; <0>
- D 0 - I - 0x0084BF 02:84AF: 02        .byte $02   ; 
- D 0 - I - 0x0084C0 02:84B0: 32        .byte $32   ; <2>
- D 0 - I - 0x0084C1 02:84B1: 02        .byte $02   ; 
- D 0 - I - 0x0084C2 02:84B2: 33        .byte $33   ; <3>
- D 0 - I - 0x0084C3 02:84B3: 02        .byte $02   ; 
- D 0 - I - 0x0084C4 02:84B4: 35        .byte $35   ; <5>
- D 0 - I - 0x0084C5 02:84B5: 02        .byte $02   ; 
- D 0 - I - 0x0084C6 02:84B6: 37        .byte $37   ; <7>
- D 0 - I - 0x0084C7 02:84B7: 20        .byte $20   ; 
- D 0 - I - 0x0084C8 02:84B8: A0        .byte $A0   ; 
- D 0 - I - 0x0084C9 02:84B9: 02        .byte $02   ; 
- D 0 - I - 0x0084CA 02:84BA: B0        .byte $B0   ; 
- D 0 - I - 0x0084CB 02:84BB: 02        .byte $02   ; 
- - - - - - 0x0084CC 02:84BC: FF        .byte $FF   ; 

loc_trackA:
- - - - - - 0x0084CD 02:84BD: FF        .byte $FF   ; 

loc_trackB:
- D 0 - I - 0x0084CE 02:84BE: 30        .byte $30   ; <0>
- D 0 - I - 0x0084CF 02:84BF: 00        .byte $00   ; 
- D 0 - I - 0x0084D0 02:84C0: 02        .byte $02   ; 
- D 0 - I - 0x0084D1 02:84C1: 00        .byte $00   ; 
- D 0 - I - 0x0084D2 02:84C2: 0D        .byte $0D   ; 
- D 0 - I - 0x0084D3 02:84C3: 02        .byte $02   ; 
- D 0 - I - 0x0084D4 02:84C4: 0B        .byte $0B   ; 
- D 0 - I - 0x0084D5 02:84C5: 0A        .byte $0A   ; 
- D 0 - I - 0x0084D6 02:84C6: FF        .byte $FF   ; 

loc_trackC:
- D 0 - I - 0x0084D7 02:84C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0084D8 02:84C8: 00        .byte $00   ; 
- D 0 - I - 0x0084D9 02:84C9: 1F        .byte $1F   ; 
- D 0 - I - 0x0084DA 02:84CA: 00        .byte $00   ; 
- D 0 - I - 0x0084DB 02:84CB: 06        .byte $06   ; 
- D 0 - I - 0x0084DC 02:84CC: 01        .byte $01   ; 
- D 0 - I - 0x0084DD 02:84CD: 03        .byte $03   ; 
- D 0 - I - 0x0084DE 02:84CE: 01        .byte $01   ; 
- D 0 - I - 0x0084DF 02:84CF: 04        .byte $04   ; 
- D 0 - I - 0x0084E0 02:84D0: 01        .byte $01   ; 
- D 0 - I - 0x0084E1 02:84D1: 0A        .byte $0A   ; 
- D 0 - I - 0x0084E2 02:84D2: 01        .byte $01   ; 
- D 0 - I - 0x0084E3 02:84D3: FF        .byte $FF   ; 

loc_trackD:
- D 0 - I - 0x0084E4 02:84D4: 21        .byte $21   ; 
- D 0 - I - 0x0084E5 02:84D5: 02        .byte $02   ; 
- D 0 - I - 0x0084E6 02:84D6: 03        .byte $03   ; 
- D 0 - I - 0x0084E7 02:84D7: 00        .byte $00   ; 
- D 0 - I - 0x0084E8 02:84D8: 10        .byte $10   ; 
- D 0 - I - 0x0084E9 02:84D9: 02        .byte $02   ; 
- D 0 - I - 0x0084EA 02:84DA: 20        .byte $20   ; 
- D 0 - I - 0x0084EB 02:84DB: 02        .byte $02   ; 
- D 0 - I - 0x0084EC 02:84DC: FF        .byte $FF   ; 

loc_trackE:
- D 0 - I - 0x0084ED 02:84DD: 03        .byte $03   ; 
- D 0 - I - 0x0084EE 02:84DE: 02        .byte $02   ; 
- D 0 - I - 0x0084EF 02:84DF: 01        .byte $01   ; 
- D 0 - I - 0x0084F0 02:84E0: 00        .byte $00   ; 
- D 0 - I - 0x0084F1 02:84E1: 37        .byte $37   ; <7>
- D 0 - I - 0x0084F2 02:84E2: 01        .byte $01   ; 
- D 0 - I - 0x0084F3 02:84E3: 42        .byte $42   ; <B>
- D 0 - I - 0x0084F4 02:84E4: 01        .byte $01   ; 
- D 0 - I - 0x0084F5 02:84E5: 3A        .byte $3A   ; 
- D 0 - I - 0x0084F6 02:84E6: 01        .byte $01   ; 
- D 0 - I - 0x0084F7 02:84E7: 40        .byte $40   ; 
- D 0 - I - 0x0084F8 02:84E8: 01        .byte $01   ; 
- D 0 - I - 0x0084F9 02:84E9: FF        .byte $FF   ; 

loc_trackF:
- D 0 - I - 0x0084FA 02:84EA: 32        .byte $32   ; <2>
- D 0 - I - 0x0084FB 02:84EB: 00        .byte $00   ; 
- D 0 - I - 0x0084FC 02:84EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0084FD 02:84ED: 00        .byte $00   ; 
- D 0 - I - 0x0084FE 02:84EE: 0C        .byte $0C   ; 
- D 0 - I - 0x0084FF 02:84EF: 01        .byte $01   ; 
- D 0 - I - 0x008500 02:84F0: 0E        .byte $0E   ; 
- D 0 - I - 0x008501 02:84F1: 07        .byte $07   ; 
- D 0 - I - 0x008502 02:84F2: 0F        .byte $0F   ; 
- D 0 - I - 0x008503 02:84F3: 20        .byte $20   ; 
- D 0 - I - 0x008504 02:84F4: FF        .byte $FF   ; 

loc_track10:
- D 0 - I - 0x008505 02:84F5: 00        .byte $00   ; 
- D 0 - I - 0x008506 02:84F6: 02        .byte $02   ; 
- D 0 - I - 0x008507 02:84F7: 02        .byte $02   ; 
- D 0 - I - 0x008508 02:84F8: 00        .byte $00   ; 
- D 0 - I - 0x008509 02:84F9: 57        .byte $57   ; <W>
- D 0 - I - 0x00850A 02:84FA: 10        .byte $10   ; 
- D 0 - I - 0x00850B 02:84FB: FF        .byte $FF   ; 

loc_track11:
- D 0 - I - 0x00850C 02:84FC: 06        .byte $06   ; 
- D 0 - I - 0x00850D 02:84FD: 02        .byte $02   ; 
- D 0 - I - 0x00850E 02:84FE: 0F        .byte $0F   ; 
- D 0 - I - 0x00850F 02:84FF: 00        .byte $00   ; 
- D 0 - I - 0x008510 02:8500: A3        .byte $A3   ; 
- D 0 - I - 0x008511 02:8501: 10        .byte $10   ; 
- D 0 - I - 0x008512 02:8502: 30        .byte $30   ; <0>
- D 0 - I - 0x008513 02:8503: 02        .byte $02   ; 
- - - - - - 0x008514 02:8504: 37        .byte $37   ; <7>
- - - - - - 0x008515 02:8505: 01        .byte $01   ; 
- - - - - - 0x008516 02:8506: 40        .byte $40   ; 
- - - - - - 0x008517 02:8507: 06        .byte $06   ; 
- - - - - - 0x008518 02:8508: FF        .byte $FF   ; 

loc_track12:
- D 0 - I - 0x008519 02:8509: 00        .byte $00   ; 
- D 0 - I - 0x00851A 02:850A: 01        .byte $01   ; 
- D 0 - I - 0x00851B 02:850B: 1B        .byte $1B   ; 
- D 0 - I - 0x00851C 02:850C: 83        .byte $83   ; 
- D 0 - I - 0x00851D 02:850D: 20        .byte $20   ; 
- D 0 - I - 0x00851E 02:850E: 10        .byte $10   ; 
- D 0 - I - 0x00851F 02:850F: A1        .byte $A1   ; 
- D 0 - I - 0x008520 02:8510: 84        .byte $84   ; 
- D 0 - I - 0x008521 02:8511: 09        .byte $09   ; 
- D 0 - I - 0x008522 02:8512: 03        .byte $03   ; 
- D 0 - I - 0x008523 02:8513: FF        .byte $FF   ; 

loc_track13:
- D 0 - I - 0x008524 02:8514: 00        .byte $00   ; 
- D 0 - I - 0x008525 02:8515: 01        .byte $01   ; 
- D 0 - I - 0x008526 02:8516: 19        .byte $19   ; 
- D 0 - I - 0x008527 02:8517: 00        .byte $00   ; 
- D 0 - I - 0x008528 02:8518: 13        .byte $13   ; 
- D 0 - I - 0x008529 02:8519: 02        .byte $02   ; 
- D 0 - I - 0x00852A 02:851A: 23        .byte $23   ; 
- D 0 - I - 0x00852B 02:851B: 02        .byte $02   ; 
- D 0 - I - 0x00852C 02:851C: 12        .byte $12   ; 
- D 0 - I - 0x00852D 02:851D: 02        .byte $02   ; 
- D 0 - I - 0x00852E 02:851E: 22        .byte $22   ; 
- D 0 - I - 0x00852F 02:851F: 02        .byte $02   ; 
- D 0 - I - 0x008530 02:8520: 11        .byte $11   ; 
- D 0 - I - 0x008531 02:8521: 02        .byte $02   ; 
- D 0 - I - 0x008532 02:8522: 21        .byte $21   ; 
- D 0 - I - 0x008533 02:8523: 02        .byte $02   ; 
- D 0 - I - 0x008534 02:8524: 10        .byte $10   ; 
- D 0 - I - 0x008535 02:8525: 02        .byte $02   ; 
- D 0 - I - 0x008536 02:8526: 20        .byte $20   ; 
- D 0 - I - 0x008537 02:8527: 02        .byte $02   ; 
- D 0 - I - 0x008538 02:8528: FF        .byte $FF   ; 

loc_track14:
- D 0 - I - 0x008539 02:8529: 02        .byte $02   ; 
- D 0 - I - 0x00853A 02:852A: 01        .byte $01   ; 
- D 0 - I - 0x00853B 02:852B: 02        .byte $02   ; 
- D 0 - I - 0x00853C 02:852C: 00        .byte $00   ; 
- D 0 - I - 0x00853D 02:852D: A3        .byte $A3   ; 
- D 0 - I - 0x00853E 02:852E: 20        .byte $20   ; 
- D 0 - I - 0x00853F 02:852F: 30        .byte $30   ; <0>
- D 0 - I - 0x008540 02:8530: 01        .byte $01   ; 
- D 0 - I - 0x008541 02:8531: 34        .byte $34   ; <4>
- D 0 - I - 0x008542 02:8532: 01        .byte $01   ; 
- D 0 - I - 0x008543 02:8533: 30        .byte $30   ; <0>
- D 0 - I - 0x008544 02:8534: 01        .byte $01   ; 
- D 0 - I - 0x008545 02:8535: 37        .byte $37   ; <7>
- D 0 - I - 0x008546 02:8536: 01        .byte $01   ; 
- D 0 - I - 0x008547 02:8537: 30        .byte $30   ; <0>
- D 0 - I - 0x008548 02:8538: 01        .byte $01   ; 
- D 0 - I - 0x008549 02:8539: FF        .byte $FF   ; 

loc_track15:
- D 0 - I - 0x00854A 02:853A: 01        .byte $01   ; 
- D 0 - I - 0x00854B 02:853B: 00        .byte $00   ; 
- D 0 - I - 0x00854C 02:853C: 01        .byte $01   ; 
- D 0 - I - 0x00854D 02:853D: 00        .byte $00   ; 
- D 0 - I - 0x00854E 02:853E: 44        .byte $44   ; <D>
- D 0 - I - 0x00854F 02:853F: 01        .byte $01   ; 
- D 0 - I - 0x008550 02:8540: FF        .byte $FF   ; 

loc_track16:
- D 0 - I - 0x008551 02:8541: 30        .byte $30   ; <0>
- D 0 - I - 0x008552 02:8542: 00        .byte $00   ; 
- D 0 - I - 0x008553 02:8543: 0F        .byte $0F   ; 
- D 0 - I - 0x008554 02:8544: 00        .byte $00   ; 
- D 0 - I - 0x008555 02:8545: 0C        .byte $0C   ; 
- D 0 - I - 0x008556 02:8546: 10        .byte $10   ; 
- D 0 - I - 0x008557 02:8547: FF        .byte $FF   ; 

loc_track17:
- D 0 - I - 0x008558 02:8548: 30        .byte $30   ; <0>
- D 0 - I - 0x008559 02:8549: 00        .byte $00   ; 
- D 0 - I - 0x00855A 02:854A: 1F        .byte $1F   ; 
- D 0 - I - 0x00855B 02:854B: 00        .byte $00   ; 
- D 0 - I - 0x00855C 02:854C: C9        .byte $C9   ; 
- D 0 - I - 0x00855D 02:854D: 0A        .byte $0A   ; 
- D 0 - I - 0x00855E 02:854E: 06        .byte $06   ; 
- D 0 - I - 0x00855F 02:854F: 01        .byte $01   ; 
- D 0 - I - 0x008560 02:8550: 0D        .byte $0D   ; 
- D 0 - I - 0x008561 02:8551: 0A        .byte $0A   ; 
- D 0 - I - 0x008562 02:8552: FF        .byte $FF   ; 

loc_track18:
- D 0 - I - 0x008563 02:8553: 02        .byte $02   ; 
- D 0 - I - 0x008564 02:8554: 02        .byte $02   ; 
- D 0 - I - 0x008565 02:8555: 1F        .byte $1F   ; 
- D 0 - I - 0x008566 02:8556: 8C        .byte $8C   ; 
- D 0 - I - 0x008567 02:8557: EF        .byte $EF   ; 
- D 0 - I - 0x008568 02:8558: 01        .byte $01   ; 
- D 0 - I - 0x008569 02:8559: FD        .byte $FD   ; 
- - - - - - 0x00856A 02:855A: FE        .byte $FE   ; 
- D 0 - I - 0x00856B 02:855B: 20        .byte $20   ; 
- D 0 - I - 0x00856C 02:855C: 01        .byte $01   ; 
- D 0 - I - 0x00856D 02:855D: 20        .byte $20   ; 
- D 0 - I - 0x00856E 02:855E: 03        .byte $03   ; 
- D 0 - I - 0x00856F 02:855F: B4        .byte $B4   ; 
- D 0 - I - 0x008570 02:8560: 00        .byte $00   ; 
- D 0 - I - 0x008571 02:8561: FF        .byte $FF   ; 

loc_track19:
- D 0 - I - 0x008572 02:8562: 30        .byte $30   ; <0>
- D 0 - I - 0x008573 02:8563: 00        .byte $00   ; 
- D 0 - I - 0x008574 02:8564: 1F        .byte $1F   ; 
- D 0 - I - 0x008575 02:8565: 00        .byte $00   ; 
- D 0 - I - 0x008576 02:8566: 0D        .byte $0D   ; 
- D 0 - I - 0x008577 02:8567: 02        .byte $02   ; 
- D 0 - I - 0x008578 02:8568: 1F        .byte $1F   ; 
- D 0 - I - 0x008579 02:8569: 01        .byte $01   ; 
- D 0 - I - 0x00857A 02:856A: 0F        .byte $0F   ; 
- D 0 - I - 0x00857B 02:856B: 02        .byte $02   ; 
- D 0 - I - 0x00857C 02:856C: FF        .byte $FF   ; 

loc_track1A:
- D 0 - I - 0x00857D 02:856D: 30        .byte $30   ; <0>
- D 0 - I - 0x00857E 02:856E: 00        .byte $00   ; 
- D 0 - I - 0x00857F 02:856F: 1F        .byte $1F   ; 
- D 0 - I - 0x008580 02:8570: 00        .byte $00   ; 
- D 0 - I - 0x008581 02:8571: 04        .byte $04   ; 
- D 0 - I - 0x008582 02:8572: 01        .byte $01   ; 
- D 0 - I - 0x008583 02:8573: 1F        .byte $1F   ; 
- D 0 - I - 0x008584 02:8574: 01        .byte $01   ; 
- D 0 - I - 0x008585 02:8575: 03        .byte $03   ; 
- D 0 - I - 0x008586 02:8576: 01        .byte $01   ; 
- D 0 - I - 0x008587 02:8577: FF        .byte $FF   ; 

loc_track21:
- D 0 - I - 0x008588 02:8578: 01        .byte $01   ; 
- D 0 - I - 0x008589 02:8579: 02        .byte $02   ; 
- D 0 - I - 0x00858A 02:857A: 00        .byte $00   ; 
- D 0 - I - 0x00858B 02:857B: 00        .byte $00   ; 
- D 0 - I - 0x00858C 02:857C: 09        .byte $09   ; 
- D 0 - I - 0x00858D 02:857D: 01        .byte $01   ; 
- D 0 - I - 0x00858E 02:857E: A1        .byte $A1   ; 
- D 0 - I - 0x00858F 02:857F: 83        .byte $83   ; 
- D 0 - I - 0x008590 02:8580: 10        .byte $10   ; 
- D 0 - I - 0x008591 02:8581: 03        .byte $03   ; 
- D 0 - I - 0x008592 02:8582: FF        .byte $FF   ; 

loc_track1B:
- D 0 - I - 0x008593 02:8583: 04        .byte $04   ; 
- D 0 - I - 0x008594 02:8584: 02        .byte $02   ; 
- D 0 - I - 0x008595 02:8585: 0A        .byte $0A   ; 
- D 0 - I - 0x008596 02:8586: 00        .byte $00   ; 
- D 0 - I - 0x008597 02:8587: A3        .byte $A3   ; 
- D 0 - I - 0x008598 02:8588: 10        .byte $10   ; 
- D 0 - I - 0x008599 02:8589: 2B        .byte $2B   ; 
- D 0 - I - 0x00859A 02:858A: 06        .byte $06   ; 
- D 0 - I - 0x00859B 02:858B: 29        .byte $29   ; 
- D 0 - I - 0x00859C 02:858C: 06        .byte $06   ; 
- D 0 - I - 0x00859D 02:858D: 2B        .byte $2B   ; 
- D 0 - I - 0x00859E 02:858E: 06        .byte $06   ; 
- D 0 - I - 0x00859F 02:858F: 29        .byte $29   ; 
- D 0 - I - 0x0085A0 02:8590: 06        .byte $06   ; 
- D 0 - I - 0x0085A1 02:8591: A0        .byte $A0   ; 
- D 0 - I - 0x0085A2 02:8592: 02        .byte $02   ; 
- D 0 - I - 0x0085A3 02:8593: 2B        .byte $2B   ; 
- D 0 - I - 0x0085A4 02:8594: 04        .byte $04   ; 
- D 0 - I - 0x0085A5 02:8595: 29        .byte $29   ; 
- D 0 - I - 0x0085A6 02:8596: 04        .byte $04   ; 
- D 0 - I - 0x0085A7 02:8597: A0        .byte $A0   ; 
- D 0 - I - 0x0085A8 02:8598: 0A        .byte $0A   ; 
- D 0 - I - 0x0085A9 02:8599: 30        .byte $30   ; <0>
- D 0 - I - 0x0085AA 02:859A: 06        .byte $06   ; 
- D 0 - I - 0x0085AB 02:859B: 2B        .byte $2B   ; 
- D 0 - I - 0x0085AC 02:859C: 06        .byte $06   ; 
- D 0 - I - 0x0085AD 02:859D: 30        .byte $30   ; <0>
- D 0 - I - 0x0085AE 02:859E: 06        .byte $06   ; 
- D 0 - I - 0x0085AF 02:859F: 2B        .byte $2B   ; 
- D 0 - I - 0x0085B0 02:85A0: 06        .byte $06   ; 
- D 0 - I - 0x0085B1 02:85A1: A0        .byte $A0   ; 
- D 0 - I - 0x0085B2 02:85A2: 02        .byte $02   ; 
- D 0 - I - 0x0085B3 02:85A3: 30        .byte $30   ; <0>
- D 0 - I - 0x0085B4 02:85A4: 04        .byte $04   ; 
- D 0 - I - 0x0085B5 02:85A5: 2B        .byte $2B   ; 
- D 0 - I - 0x0085B6 02:85A6: 04        .byte $04   ; 
- D 0 - I - 0x0085B7 02:85A7: A0        .byte $A0   ; 
- D 0 - I - 0x0085B8 02:85A8: 0A        .byte $0A   ; 
- D 0 - I - 0x0085B9 02:85A9: B1        .byte $B1   ; 
- D 0 - I - 0x0085BA 02:85AA: 02        .byte $02   ; 
- D 0 - I - 0x0085BB 02:85AB: 34        .byte $34   ; <4>
- D 0 - I - 0x0085BC 02:85AC: 06        .byte $06   ; 
- D 0 - I - 0x0085BD 02:85AD: 32        .byte $32   ; <2>
- D 0 - I - 0x0085BE 02:85AE: 06        .byte $06   ; 
- D 0 - I - 0x0085BF 02:85AF: 34        .byte $34   ; <4>
- D 0 - I - 0x0085C0 02:85B0: 06        .byte $06   ; 
- D 0 - I - 0x0085C1 02:85B1: 35        .byte $35   ; <5>
- D 0 - I - 0x0085C2 02:85B2: 06        .byte $06   ; 
- D 0 - I - 0x0085C3 02:85B3: A0        .byte $A0   ; 
- D 0 - I - 0x0085C4 02:85B4: 02        .byte $02   ; 
- D 0 - I - 0x0085C5 02:85B5: 34        .byte $34   ; <4>
- D 0 - I - 0x0085C6 02:85B6: 04        .byte $04   ; 
- D 0 - I - 0x0085C7 02:85B7: 32        .byte $32   ; <2>
- D 0 - I - 0x0085C8 02:85B8: 04        .byte $04   ; 
- D 0 - I - 0x0085C9 02:85B9: A0        .byte $A0   ; 
- D 0 - I - 0x0085CA 02:85BA: 0A        .byte $0A   ; 
- D 0 - I - 0x0085CB 02:85BB: 32        .byte $32   ; <2>
- D 0 - I - 0x0085CC 02:85BC: 06        .byte $06   ; 
- D 0 - I - 0x0085CD 02:85BD: 30        .byte $30   ; <0>
- D 0 - I - 0x0085CE 02:85BE: 06        .byte $06   ; 
- D 0 - I - 0x0085CF 02:85BF: 32        .byte $32   ; <2>
- D 0 - I - 0x0085D0 02:85C0: 06        .byte $06   ; 
- D 0 - I - 0x0085D1 02:85C1: 34        .byte $34   ; <4>
- D 0 - I - 0x0085D2 02:85C2: 06        .byte $06   ; 
- D 0 - I - 0x0085D3 02:85C3: A0        .byte $A0   ; 
- D 0 - I - 0x0085D4 02:85C4: 02        .byte $02   ; 
- D 0 - I - 0x0085D5 02:85C5: 32        .byte $32   ; <2>
- D 0 - I - 0x0085D6 02:85C6: 04        .byte $04   ; 
- D 0 - I - 0x0085D7 02:85C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0085D8 02:85C8: 04        .byte $04   ; 
- D 0 - I - 0x0085D9 02:85C9: A0        .byte $A0   ; 
- D 0 - I - 0x0085DA 02:85CA: 0A        .byte $0A   ; 
- D 0 - I - 0x0085DB 02:85CB: 30        .byte $30   ; <0>
- D 0 - I - 0x0085DC 02:85CC: 06        .byte $06   ; 
- D 0 - I - 0x0085DD 02:85CD: 2B        .byte $2B   ; 
- D 0 - I - 0x0085DE 02:85CE: 06        .byte $06   ; 
- D 0 - I - 0x0085DF 02:85CF: 30        .byte $30   ; <0>
- D 0 - I - 0x0085E0 02:85D0: 06        .byte $06   ; 
- D 0 - I - 0x0085E1 02:85D1: 2B        .byte $2B   ; 
- D 0 - I - 0x0085E2 02:85D2: 06        .byte $06   ; 
- D 0 - I - 0x0085E3 02:85D3: A0        .byte $A0   ; 
- D 0 - I - 0x0085E4 02:85D4: 02        .byte $02   ; 
- D 0 - I - 0x0085E5 02:85D5: 30        .byte $30   ; <0>
- D 0 - I - 0x0085E6 02:85D6: 04        .byte $04   ; 
- D 0 - I - 0x0085E7 02:85D7: 32        .byte $32   ; <2>
- D 0 - I - 0x0085E8 02:85D8: 04        .byte $04   ; 
- D 0 - I - 0x0085E9 02:85D9: A0        .byte $A0   ; 
- D 0 - I - 0x0085EA 02:85DA: 0F        .byte $0F   ; 
- D 0 - I - 0x0085EB 02:85DB: 37        .byte $37   ; <7>
- D 0 - I - 0x0085EC 02:85DC: 20        .byte $20   ; 
- D 0 - I - 0x0085ED 02:85DD: B0        .byte $B0   ; 
- D 0 - I - 0x0085EE 02:85DE: 02        .byte $02   ; 
- - - - - - 0x0085EF 02:85DF: FF        .byte $FF   ; 

loc_track1C:
- D 0 - I - 0x0085F0 02:85E0: 04        .byte $04   ; 
- D 0 - I - 0x0085F1 02:85E1: 1A        .byte $1A   ; 
- D 0 - I - 0x0085F2 02:85E2: 00        .byte $00   ; 
- D 0 - I - 0x0085F3 02:85E3: 00        .byte $00   ; 
- D 0 - I - 0x0085F4 02:85E4: 20        .byte $20   ; 
- D 0 - I - 0x0085F5 02:85E5: 02        .byte $02   ; 
- D 0 - I - 0x0085F6 02:85E6: 30        .byte $30   ; <0>
- D 0 - I - 0x0085F7 02:85E7: 02        .byte $02   ; 
- D 0 - I - 0x0085F8 02:85E8: B7        .byte $B7   ; 
- D 0 - I - 0x0085F9 02:85E9: 02        .byte $02   ; 
- D 0 - I - 0x0085FA 02:85EA: 22        .byte $22   ; 
- D 0 - I - 0x0085FB 02:85EB: 02        .byte $02   ; 
- D 0 - I - 0x0085FC 02:85EC: 32        .byte $32   ; <2>
- D 0 - I - 0x0085FD 02:85ED: 02        .byte $02   ; 
- D 0 - I - 0x0085FE 02:85EE: B7        .byte $B7   ; 
- D 0 - I - 0x0085FF 02:85EF: 05        .byte $05   ; 
- D 0 - I - 0x008600 02:85F0: 20        .byte $20   ; 
- D 0 - I - 0x008601 02:85F1: 02        .byte $02   ; 
- D 0 - I - 0x008602 02:85F2: 30        .byte $30   ; <0>
- D 0 - I - 0x008603 02:85F3: 02        .byte $02   ; 
- D 0 - I - 0x008604 02:85F4: B7        .byte $B7   ; 
- D 0 - I - 0x008605 02:85F5: 08        .byte $08   ; 
- D 0 - I - 0x008606 02:85F6: 22        .byte $22   ; 
- D 0 - I - 0x008607 02:85F7: 02        .byte $02   ; 
- D 0 - I - 0x008608 02:85F8: 32        .byte $32   ; <2>
- D 0 - I - 0x008609 02:85F9: 02        .byte $02   ; 
- D 0 - I - 0x00860A 02:85FA: B7        .byte $B7   ; 
- D 0 - I - 0x00860B 02:85FB: 0B        .byte $0B   ; 
- D 0 - I - 0x00860C 02:85FC: 25        .byte $25   ; 
- D 0 - I - 0x00860D 02:85FD: 02        .byte $02   ; 
- D 0 - I - 0x00860E 02:85FE: 35        .byte $35   ; <5>
- D 0 - I - 0x00860F 02:85FF: 02        .byte $02   ; 
- D 0 - I - 0x008610 02:8600: B7        .byte $B7   ; 
- D 0 - I - 0x008611 02:8601: 0E        .byte $0E   ; 
- D 0 - I - 0x008612 02:8602: 24        .byte $24   ; 
- D 0 - I - 0x008613 02:8603: 02        .byte $02   ; 
- D 0 - I - 0x008614 02:8604: 34        .byte $34   ; <4>
- D 0 - I - 0x008615 02:8605: 02        .byte $02   ; 
- D 0 - I - 0x008616 02:8606: B7        .byte $B7   ; 
- D 0 - I - 0x008617 02:8607: 11        .byte $11   ; 
- D 0 - I - 0x008618 02:8608: 22        .byte $22   ; 
- D 0 - I - 0x008619 02:8609: 02        .byte $02   ; 
- D 0 - I - 0x00861A 02:860A: 32        .byte $32   ; <2>
- D 0 - I - 0x00861B 02:860B: 02        .byte $02   ; 
- D 0 - I - 0x00861C 02:860C: B7        .byte $B7   ; 
- D 0 - I - 0x00861D 02:860D: 14        .byte $14   ; 
- D 0 - I - 0x00861E 02:860E: 27        .byte $27   ; 
- D 0 - I - 0x00861F 02:860F: 02        .byte $02   ; 
- D 0 - I - 0x008620 02:8610: 37        .byte $37   ; <7>
- D 0 - I - 0x008621 02:8611: 02        .byte $02   ; 
- D 0 - I - 0x008622 02:8612: B7        .byte $B7   ; 
- D 0 - I - 0x008623 02:8613: 17        .byte $17   ; 
- D 0 - I - 0x008624 02:8614: B0        .byte $B0   ; 
- D 0 - I - 0x008625 02:8615: 02        .byte $02   ; 
- - - - - - 0x008626 02:8616: FF        .byte $FF   ; 

loc_track1D:
- D 0 - I - 0x008627 02:8617: 03        .byte $03   ; 
- D 0 - I - 0x008628 02:8618: 02        .byte $02   ; 
- D 0 - I - 0x008629 02:8619: 0F        .byte $0F   ; 
- D 0 - I - 0x00862A 02:861A: 00        .byte $00   ; 
- D 0 - I - 0x00862B 02:861B: FD        .byte $FD   ; 
- - - - - - 0x00862C 02:861C: FE        .byte $FE   ; 
- D 0 - I - 0x00862D 02:861D: A3        .byte $A3   ; 
- D 0 - I - 0x00862E 02:861E: 10        .byte $10   ; 
- D 0 - I - 0x00862F 02:861F: 20        .byte $20   ; 
- D 0 - I - 0x008630 02:8620: 14        .byte $14   ; 
- D 0 - I - 0x008631 02:8621: 22        .byte $22   ; 
- D 0 - I - 0x008632 02:8622: 04        .byte $04   ; 
- D 0 - I - 0x008633 02:8623: 23        .byte $23   ; 
- D 0 - I - 0x008634 02:8624: 04        .byte $04   ; 
- D 0 - I - 0x008635 02:8625: 26        .byte $26   ; 
- D 0 - I - 0x008636 02:8626: 04        .byte $04   ; 
- D 0 - I - 0x008637 02:8627: 27        .byte $27   ; 
- D 0 - I - 0x008638 02:8628: 20        .byte $20   ; 
- D 0 - I - 0x008639 02:8629: B1        .byte $B1   ; 
- D 0 - I - 0x00863A 02:862A: 00        .byte $00   ; 
- D 0 - I - 0x00863B 02:862B: 30        .byte $30   ; <0>
- D 0 - I - 0x00863C 02:862C: 14        .byte $14   ; 
- D 0 - I - 0x00863D 02:862D: 2B        .byte $2B   ; 
- D 0 - I - 0x00863E 02:862E: 04        .byte $04   ; 
- D 0 - I - 0x00863F 02:862F: 28        .byte $28   ; 
- D 0 - I - 0x008640 02:8630: 04        .byte $04   ; 
- D 0 - I - 0x008641 02:8631: 2B        .byte $2B   ; 
- D 0 - I - 0x008642 02:8632: 04        .byte $04   ; 
- D 0 - I - 0x008643 02:8633: 30        .byte $30   ; <0>
- D 0 - I - 0x008644 02:8634: 20        .byte $20   ; 
- D 0 - I - 0x008645 02:8635: 20        .byte $20   ; 
- D 0 - I - 0x008646 02:8636: 14        .byte $14   ; 
- D 0 - I - 0x008647 02:8637: 22        .byte $22   ; 
- D 0 - I - 0x008648 02:8638: 04        .byte $04   ; 
- D 0 - I - 0x008649 02:8639: 23        .byte $23   ; 
- D 0 - I - 0x00864A 02:863A: 04        .byte $04   ; 
- D 0 - I - 0x00864B 02:863B: 26        .byte $26   ; 
- D 0 - I - 0x00864C 02:863C: 04        .byte $04   ; 
- D 0 - I - 0x00864D 02:863D: 27        .byte $27   ; 
- D 0 - I - 0x00864E 02:863E: 20        .byte $20   ; 
- D 0 - I - 0x00864F 02:863F: 27        .byte $27   ; 
- D 0 - I - 0x008650 02:8640: 14        .byte $14   ; 
- D 0 - I - 0x008651 02:8641: 28        .byte $28   ; 
- D 0 - I - 0x008652 02:8642: 04        .byte $04   ; 
- D 0 - I - 0x008653 02:8643: 2A        .byte $2A   ; 
- D 0 - I - 0x008654 02:8644: 04        .byte $04   ; 
- D 0 - I - 0x008655 02:8645: 28        .byte $28   ; 
- D 0 - I - 0x008656 02:8646: 04        .byte $04   ; 
- D 0 - I - 0x008657 02:8647: 27        .byte $27   ; 
- D 0 - I - 0x008658 02:8648: 20        .byte $20   ; 
- D 0 - I - 0x008659 02:8649: B0        .byte $B0   ; 
- D 0 - I - 0x00865A 02:864A: 02        .byte $02   ; 
- - - - - - 0x00865B 02:864B: FF        .byte $FF   ; 

loc_track1E:
- D 0 - I - 0x00865C 02:864C: 03        .byte $03   ; 
- D 0 - I - 0x00865D 02:864D: 15        .byte $15   ; 
- D 0 - I - 0x00865E 02:864E: 00        .byte $00   ; 
- D 0 - I - 0x00865F 02:864F: 00        .byte $00   ; 
- D 0 - I - 0x008660 02:8650: FD        .byte $FD   ; 
- - - - - - 0x008661 02:8651: FE        .byte $FE   ; 
- D 0 - I - 0x008662 02:8652: 20        .byte $20   ; 
- D 0 - I - 0x008663 02:8653: 04        .byte $04   ; 
- D 0 - I - 0x008664 02:8654: 20        .byte $20   ; 
- D 0 - I - 0x008665 02:8655: 04        .byte $04   ; 
- D 0 - I - 0x008666 02:8656: 1F        .byte $1F   ; 
- D 0 - I - 0x008667 02:8657: 02        .byte $02   ; 
- D 0 - I - 0x008668 02:8658: 20        .byte $20   ; 
- D 0 - I - 0x008669 02:8659: 06        .byte $06   ; 
- D 0 - I - 0x00866A 02:865A: A2        .byte $A2   ; 
- D 0 - I - 0x00866B 02:865B: 35        .byte $35   ; <5>
- D 0 - I - 0x00866C 02:865C: 20        .byte $20   ; 
- D 0 - I - 0x00866D 02:865D: 06        .byte $06   ; 
- D 0 - I - 0x00866E 02:865E: 20        .byte $20   ; 
- D 0 - I - 0x00866F 02:865F: 06        .byte $06   ; 
- D 0 - I - 0x008670 02:8660: 20        .byte $20   ; 
- D 0 - I - 0x008671 02:8661: 04        .byte $04   ; 
- D 0 - I - 0x008672 02:8662: A2        .byte $A2   ; 
- D 0 - I - 0x008673 02:8663: 15        .byte $15   ; 
- D 0 - I - 0x008674 02:8664: B3        .byte $B3   ; 
- D 0 - I - 0x008675 02:8665: 00        .byte $00   ; 
- D 0 - I - 0x008676 02:8666: FD        .byte $FD   ; 
- - - - - - 0x008677 02:8667: FE        .byte $FE   ; 
- D 0 - I - 0x008678 02:8668: 25        .byte $25   ; 
- D 0 - I - 0x008679 02:8669: 04        .byte $04   ; 
- D 0 - I - 0x00867A 02:866A: 25        .byte $25   ; 
- D 0 - I - 0x00867B 02:866B: 04        .byte $04   ; 
- D 0 - I - 0x00867C 02:866C: 1F        .byte $1F   ; 
- D 0 - I - 0x00867D 02:866D: 02        .byte $02   ; 
- D 0 - I - 0x00867E 02:866E: 25        .byte $25   ; 
- D 0 - I - 0x00867F 02:866F: 06        .byte $06   ; 
- D 0 - I - 0x008680 02:8670: A2        .byte $A2   ; 
- D 0 - I - 0x008681 02:8671: 35        .byte $35   ; <5>
- D 0 - I - 0x008682 02:8672: 25        .byte $25   ; 
- D 0 - I - 0x008683 02:8673: 06        .byte $06   ; 
- D 0 - I - 0x008684 02:8674: 25        .byte $25   ; 
- D 0 - I - 0x008685 02:8675: 06        .byte $06   ; 
- D 0 - I - 0x008686 02:8676: 25        .byte $25   ; 
- D 0 - I - 0x008687 02:8677: 04        .byte $04   ; 
- D 0 - I - 0x008688 02:8678: A2        .byte $A2   ; 
- D 0 - I - 0x008689 02:8679: 15        .byte $15   ; 
- D 0 - I - 0x00868A 02:867A: B1        .byte $B1   ; 
- D 0 - I - 0x00868B 02:867B: 00        .byte $00   ; 
- D 0 - I - 0x00868C 02:867C: FD        .byte $FD   ; 
- - - - - - 0x00868D 02:867D: FE        .byte $FE   ; 
- D 0 - I - 0x00868E 02:867E: 20        .byte $20   ; 
- D 0 - I - 0x00868F 02:867F: 04        .byte $04   ; 
- D 0 - I - 0x008690 02:8680: 20        .byte $20   ; 
- D 0 - I - 0x008691 02:8681: 04        .byte $04   ; 
- D 0 - I - 0x008692 02:8682: 1F        .byte $1F   ; 
- D 0 - I - 0x008693 02:8683: 02        .byte $02   ; 
- D 0 - I - 0x008694 02:8684: 20        .byte $20   ; 
- D 0 - I - 0x008695 02:8685: 06        .byte $06   ; 
- D 0 - I - 0x008696 02:8686: A2        .byte $A2   ; 
- D 0 - I - 0x008697 02:8687: 30        .byte $30   ; <0>
- D 0 - I - 0x008698 02:8688: 20        .byte $20   ; 
- D 0 - I - 0x008699 02:8689: 06        .byte $06   ; 
- D 0 - I - 0x00869A 02:868A: 20        .byte $20   ; 
- D 0 - I - 0x00869B 02:868B: 06        .byte $06   ; 
- D 0 - I - 0x00869C 02:868C: 20        .byte $20   ; 
- D 0 - I - 0x00869D 02:868D: 04        .byte $04   ; 
- D 0 - I - 0x00869E 02:868E: A2        .byte $A2   ; 
- D 0 - I - 0x00869F 02:868F: 15        .byte $15   ; 
- D 0 - I - 0x0086A0 02:8690: B1        .byte $B1   ; 
- D 0 - I - 0x0086A1 02:8691: 00        .byte $00   ; 
- D 0 - I - 0x0086A2 02:8692: 23        .byte $23   ; 
- D 0 - I - 0x0086A3 02:8693: 04        .byte $04   ; 
- D 0 - I - 0x0086A4 02:8694: 23        .byte $23   ; 
- D 0 - I - 0x0086A5 02:8695: 04        .byte $04   ; 
- D 0 - I - 0x0086A6 02:8696: 1F        .byte $1F   ; 
- D 0 - I - 0x0086A7 02:8697: 02        .byte $02   ; 
- D 0 - I - 0x0086A8 02:8698: 23        .byte $23   ; 
- D 0 - I - 0x0086A9 02:8699: 06        .byte $06   ; 
- D 0 - I - 0x0086AA 02:869A: A2        .byte $A2   ; 
- D 0 - I - 0x0086AB 02:869B: 7F        .byte $7F   ; 
- D 0 - I - 0x0086AC 02:869C: 23        .byte $23   ; 
- D 0 - I - 0x0086AD 02:869D: 10        .byte $10   ; 
- D 0 - I - 0x0086AE 02:869E: A2        .byte $A2   ; 
- D 0 - I - 0x0086AF 02:869F: 15        .byte $15   ; 
- D 0 - I - 0x0086B0 02:86A0: 27        .byte $27   ; 
- D 0 - I - 0x0086B1 02:86A1: 04        .byte $04   ; 
- D 0 - I - 0x0086B2 02:86A2: 27        .byte $27   ; 
- D 0 - I - 0x0086B3 02:86A3: 04        .byte $04   ; 
- D 0 - I - 0x0086B4 02:86A4: 1F        .byte $1F   ; 
- D 0 - I - 0x0086B5 02:86A5: 02        .byte $02   ; 
- D 0 - I - 0x0086B6 02:86A6: 27        .byte $27   ; 
- D 0 - I - 0x0086B7 02:86A7: 06        .byte $06   ; 
- D 0 - I - 0x0086B8 02:86A8: A2        .byte $A2   ; 
- D 0 - I - 0x0086B9 02:86A9: 7F        .byte $7F   ; 
- D 0 - I - 0x0086BA 02:86AA: 27        .byte $27   ; 
- D 0 - I - 0x0086BB 02:86AB: 10        .byte $10   ; 
- D 0 - I - 0x0086BC 02:86AC: A2        .byte $A2   ; 
- D 0 - I - 0x0086BD 02:86AD: 15        .byte $15   ; 
- D 0 - I - 0x0086BE 02:86AE: B0        .byte $B0   ; 
- D 0 - I - 0x0086BF 02:86AF: 02        .byte $02   ; 
- - - - - - 0x0086C0 02:86B0: FF        .byte $FF   ; 

loc_track1F:
- D 0 - I - 0x0086C1 02:86B1: 0A        .byte $0A   ; 
- D 0 - I - 0x0086C2 02:86B2: 02        .byte $02   ; 
- D 0 - I - 0x0086C3 02:86B3: 1F        .byte $1F   ; 
- D 0 - I - 0x0086C4 02:86B4: 00        .byte $00   ; 
- D 0 - I - 0x0086C5 02:86B5: A3        .byte $A3   ; 
- D 0 - I - 0x0086C6 02:86B6: 20        .byte $20   ; 
- D 0 - I - 0x0086C7 02:86B7: EF        .byte $EF   ; 
- D 0 - I - 0x0086C8 02:86B8: 01        .byte $01   ; 
- D 0 - I - 0x0086C9 02:86B9: FD        .byte $FD   ; 
- - - - - - 0x0086CA 02:86BA: FE        .byte $FE   ; 
- D 0 - I - 0x0086CB 02:86BB: 25        .byte $25   ; 
- D 0 - I - 0x0086CC 02:86BC: 01        .byte $01   ; 
- D 0 - I - 0x0086CD 02:86BD: 26        .byte $26   ; 
- D 0 - I - 0x0086CE 02:86BE: 01        .byte $01   ; 
- D 0 - I - 0x0086CF 02:86BF: B7        .byte $B7   ; 
- D 0 - I - 0x0086D0 02:86C0: 00        .byte $00   ; 
- D 0 - I - 0x0086D1 02:86C1: A0        .byte $A0   ; 
- D 0 - I - 0x0086D2 02:86C2: 1F        .byte $1F   ; 
- D 0 - I - 0x0086D3 02:86C3: EF        .byte $EF   ; 
- D 0 - I - 0x0086D4 02:86C4: 01        .byte $01   ; 
- D 0 - I - 0x0086D5 02:86C5: FD        .byte $FD   ; 
- - - - - - 0x0086D6 02:86C6: FE        .byte $FE   ; 
- D 0 - I - 0x0086D7 02:86C7: 27        .byte $27   ; 
- D 0 - I - 0x0086D8 02:86C8: 01        .byte $01   ; 
- D 0 - I - 0x0086D9 02:86C9: 28        .byte $28   ; 
- D 0 - I - 0x0086DA 02:86CA: 01        .byte $01   ; 
- D 0 - I - 0x0086DB 02:86CB: B7        .byte $B7   ; 
- D 0 - I - 0x0086DC 02:86CC: 00        .byte $00   ; 
- D 0 - I - 0x0086DD 02:86CD: A0        .byte $A0   ; 
- D 0 - I - 0x0086DE 02:86CE: 1F        .byte $1F   ; 
- D 0 - I - 0x0086DF 02:86CF: B0        .byte $B0   ; 
- D 0 - I - 0x0086E0 02:86D0: 02        .byte $02   ; 
- - - - - - 0x0086E1 02:86D1: FF        .byte $FF   ; 

loc_track20:
- D 0 - I - 0x0086E2 02:86D2: 2A        .byte $2A   ; 
- D 0 - I - 0x0086E3 02:86D3: 7F        .byte $7F   ; 
- D 0 - I - 0x0086E4 02:86D4: 00        .byte $00   ; 
- D 0 - I - 0x0086E5 02:86D5: 00        .byte $00   ; 
- D 0 - I - 0x0086E6 02:86D6: FD        .byte $FD   ; 
- - - - - - 0x0086E7 02:86D7: FE        .byte $FE   ; 
- D 0 - I - 0x0086E8 02:86D8: 16        .byte $16   ; 
- D 0 - I - 0x0086E9 02:86D9: 04        .byte $04   ; 
- D 0 - I - 0x0086EA 02:86DA: 26        .byte $26   ; 
- D 0 - I - 0x0086EB 02:86DB: 04        .byte $04   ; 
- D 0 - I - 0x0086EC 02:86DC: 16        .byte $16   ; 
- D 0 - I - 0x0086ED 02:86DD: 04        .byte $04   ; 
- D 0 - I - 0x0086EE 02:86DE: 26        .byte $26   ; 
- D 0 - I - 0x0086EF 02:86DF: 04        .byte $04   ; 
- D 0 - I - 0x0086F0 02:86E0: 18        .byte $18   ; 
- D 0 - I - 0x0086F1 02:86E1: 04        .byte $04   ; 
- D 0 - I - 0x0086F2 02:86E2: 28        .byte $28   ; 
- D 0 - I - 0x0086F3 02:86E3: 04        .byte $04   ; 
- D 0 - I - 0x0086F4 02:86E4: 18        .byte $18   ; 
- D 0 - I - 0x0086F5 02:86E5: 04        .byte $04   ; 
- D 0 - I - 0x0086F6 02:86E6: 28        .byte $28   ; 
- D 0 - I - 0x0086F7 02:86E7: 04        .byte $04   ; 
- D 0 - I - 0x0086F8 02:86E8: B0        .byte $B0   ; 
- D 0 - I - 0x0086F9 02:86E9: 02        .byte $02   ; 
- - - - - - 0x0086FA 02:86EA: FF        .byte $FF   ; 

loc_track22:
- D 0 - I - 0x0086FB 02:86EB: 05        .byte $05   ; 
- D 0 - I - 0x0086FC 02:86EC: 02        .byte $02   ; 
- D 0 - I - 0x0086FD 02:86ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0086FE 02:86EE: 00        .byte $00   ; 
- D 0 - I - 0x0086FF 02:86EF: A3        .byte $A3   ; 
- D 0 - I - 0x008700 02:86F0: 10        .byte $10   ; 
- D 0 - I - 0x008701 02:86F1: 25        .byte $25   ; 
- D 0 - I - 0x008702 02:86F2: 02        .byte $02   ; 
- D 0 - I - 0x008703 02:86F3: 29        .byte $29   ; 
- D 0 - I - 0x008704 02:86F4: 02        .byte $02   ; 
- D 0 - I - 0x008705 02:86F5: 34        .byte $34   ; <4>
- D 0 - I - 0x008706 02:86F6: 04        .byte $04   ; 
- D 0 - I - 0x008707 02:86F7: B1        .byte $B1   ; 
- D 0 - I - 0x008708 02:86F8: 02        .byte $02   ; 
- D 0 - I - 0x008709 02:86F9: 25        .byte $25   ; 
- D 0 - I - 0x00870A 02:86FA: 02        .byte $02   ; 
- D 0 - I - 0x00870B 02:86FB: 29        .byte $29   ; 
- D 0 - I - 0x00870C 02:86FC: 02        .byte $02   ; 
- D 0 - I - 0x00870D 02:86FD: 34        .byte $34   ; <4>
- D 0 - I - 0x00870E 02:86FE: 02        .byte $02   ; 
- D 0 - I - 0x00870F 02:86FF: 32        .byte $32   ; <2>
- D 0 - I - 0x008710 02:8700: 0A        .byte $0A   ; 
- D 0 - I - 0x008711 02:8701: 24        .byte $24   ; 
- D 0 - I - 0x008712 02:8702: 02        .byte $02   ; 
- D 0 - I - 0x008713 02:8703: 29        .byte $29   ; 
- D 0 - I - 0x008714 02:8704: 02        .byte $02   ; 
- D 0 - I - 0x008715 02:8705: 34        .byte $34   ; <4>
- D 0 - I - 0x008716 02:8706: 04        .byte $04   ; 
- D 0 - I - 0x008717 02:8707: B1        .byte $B1   ; 
- D 0 - I - 0x008718 02:8708: 0B        .byte $0B   ; 
- D 0 - I - 0x008719 02:8709: 24        .byte $24   ; 
- D 0 - I - 0x00871A 02:870A: 02        .byte $02   ; 
- D 0 - I - 0x00871B 02:870B: 29        .byte $29   ; 
- D 0 - I - 0x00871C 02:870C: 02        .byte $02   ; 
- D 0 - I - 0x00871D 02:870D: 34        .byte $34   ; <4>
- D 0 - I - 0x00871E 02:870E: 02        .byte $02   ; 
- D 0 - I - 0x00871F 02:870F: 35        .byte $35   ; <5>
- D 0 - I - 0x008720 02:8710: 0A        .byte $0A   ; 
- D 0 - I - 0x008721 02:8711: 27        .byte $27   ; 
- D 0 - I - 0x008722 02:8712: 02        .byte $02   ; 
- D 0 - I - 0x008723 02:8713: 30        .byte $30   ; <0>
- D 0 - I - 0x008724 02:8714: 02        .byte $02   ; 
- D 0 - I - 0x008725 02:8715: 34        .byte $34   ; <4>
- D 0 - I - 0x008726 02:8716: 04        .byte $04   ; 
- D 0 - I - 0x008727 02:8717: B1        .byte $B1   ; 
- D 0 - I - 0x008728 02:8718: 13        .byte $13   ; 
- D 0 - I - 0x008729 02:8719: 27        .byte $27   ; 
- D 0 - I - 0x00872A 02:871A: 02        .byte $02   ; 
- D 0 - I - 0x00872B 02:871B: 30        .byte $30   ; <0>
- D 0 - I - 0x00872C 02:871C: 02        .byte $02   ; 
- D 0 - I - 0x00872D 02:871D: 34        .byte $34   ; <4>
- D 0 - I - 0x00872E 02:871E: 02        .byte $02   ; 
- D 0 - I - 0x00872F 02:871F: 32        .byte $32   ; <2>
- D 0 - I - 0x008730 02:8720: 0A        .byte $0A   ; 
- D 0 - I - 0x008731 02:8721: 29        .byte $29   ; 
- D 0 - I - 0x008732 02:8722: 01        .byte $01   ; 
- D 0 - I - 0x008733 02:8723: 2B        .byte $2B   ; 
- D 0 - I - 0x008734 02:8724: 01        .byte $01   ; 
- D 0 - I - 0x008735 02:8725: 31        .byte $31   ; <1>
- D 0 - I - 0x008736 02:8726: 01        .byte $01   ; 
- D 0 - I - 0x008737 02:8727: 32        .byte $32   ; <2>
- D 0 - I - 0x008738 02:8728: 01        .byte $01   ; 
- D 0 - I - 0x008739 02:8729: 2B        .byte $2B   ; 
- D 0 - I - 0x00873A 02:872A: 01        .byte $01   ; 
- D 0 - I - 0x00873B 02:872B: 31        .byte $31   ; <1>
- D 0 - I - 0x00873C 02:872C: 01        .byte $01   ; 
- D 0 - I - 0x00873D 02:872D: 32        .byte $32   ; <2>
- D 0 - I - 0x00873E 02:872E: 01        .byte $01   ; 
- D 0 - I - 0x00873F 02:872F: 34        .byte $34   ; <4>
- D 0 - I - 0x008740 02:8730: 01        .byte $01   ; 
- D 0 - I - 0x008741 02:8731: 31        .byte $31   ; <1>
- D 0 - I - 0x008742 02:8732: 01        .byte $01   ; 
- D 0 - I - 0x008743 02:8733: 32        .byte $32   ; <2>
- D 0 - I - 0x008744 02:8734: 01        .byte $01   ; 
- D 0 - I - 0x008745 02:8735: 34        .byte $34   ; <4>
- D 0 - I - 0x008746 02:8736: 01        .byte $01   ; 
- D 0 - I - 0x008747 02:8737: 35        .byte $35   ; <5>
- D 0 - I - 0x008748 02:8738: 01        .byte $01   ; 
- D 0 - I - 0x008749 02:8739: 32        .byte $32   ; <2>
- D 0 - I - 0x00874A 02:873A: 01        .byte $01   ; 
- D 0 - I - 0x00874B 02:873B: 34        .byte $34   ; <4>
- D 0 - I - 0x00874C 02:873C: 01        .byte $01   ; 
- D 0 - I - 0x00874D 02:873D: 35        .byte $35   ; <5>
- D 0 - I - 0x00874E 02:873E: 01        .byte $01   ; 
- D 0 - I - 0x00874F 02:873F: 37        .byte $37   ; <7>
- D 0 - I - 0x008750 02:8740: 11        .byte $11   ; 
- D 0 - I - 0x008751 02:8741: 25        .byte $25   ; 
- D 0 - I - 0x008752 02:8742: 02        .byte $02   ; 
- D 0 - I - 0x008753 02:8743: 29        .byte $29   ; 
- D 0 - I - 0x008754 02:8744: 02        .byte $02   ; 
- D 0 - I - 0x008755 02:8745: 34        .byte $34   ; <4>
- D 0 - I - 0x008756 02:8746: 04        .byte $04   ; 
- D 0 - I - 0x008757 02:8747: B1        .byte $B1   ; 
- D 0 - I - 0x008758 02:8748: 2B        .byte $2B   ; 
- D 0 - I - 0x008759 02:8749: 25        .byte $25   ; 
- D 0 - I - 0x00875A 02:874A: 02        .byte $02   ; 
- D 0 - I - 0x00875B 02:874B: 29        .byte $29   ; 
- D 0 - I - 0x00875C 02:874C: 02        .byte $02   ; 
- D 0 - I - 0x00875D 02:874D: 34        .byte $34   ; <4>
- D 0 - I - 0x00875E 02:874E: 02        .byte $02   ; 
- D 0 - I - 0x00875F 02:874F: 32        .byte $32   ; <2>
- D 0 - I - 0x008760 02:8750: 0A        .byte $0A   ; 
- D 0 - I - 0x008761 02:8751: 24        .byte $24   ; 
- D 0 - I - 0x008762 02:8752: 02        .byte $02   ; 
- D 0 - I - 0x008763 02:8753: 29        .byte $29   ; 
- D 0 - I - 0x008764 02:8754: 02        .byte $02   ; 
- D 0 - I - 0x008765 02:8755: 34        .byte $34   ; <4>
- D 0 - I - 0x008766 02:8756: 04        .byte $04   ; 
- D 0 - I - 0x008767 02:8757: B1        .byte $B1   ; 
- D 0 - I - 0x008768 02:8758: 33        .byte $33   ; <3>
- D 0 - I - 0x008769 02:8759: 24        .byte $24   ; 
- D 0 - I - 0x00876A 02:875A: 02        .byte $02   ; 
- D 0 - I - 0x00876B 02:875B: 29        .byte $29   ; 
- D 0 - I - 0x00876C 02:875C: 02        .byte $02   ; 
- D 0 - I - 0x00876D 02:875D: 34        .byte $34   ; <4>
- D 0 - I - 0x00876E 02:875E: 02        .byte $02   ; 
- D 0 - I - 0x00876F 02:875F: 35        .byte $35   ; <5>
- D 0 - I - 0x008770 02:8760: 0A        .byte $0A   ; 
- D 0 - I - 0x008771 02:8761: A0        .byte $A0   ; 
- D 0 - I - 0x008772 02:8762: 06        .byte $06   ; 
- D 0 - I - 0x008773 02:8763: 2A        .byte $2A   ; 
- D 0 - I - 0x008774 02:8764: 02        .byte $02   ; 
- D 0 - I - 0x008775 02:8765: 32        .byte $32   ; <2>
- D 0 - I - 0x008776 02:8766: 02        .byte $02   ; 
- D 0 - I - 0x008777 02:8767: 39        .byte $39   ; <9>
- D 0 - I - 0x008778 02:8768: 06        .byte $06   ; 
- D 0 - I - 0x008779 02:8769: 37        .byte $37   ; <7>
- D 0 - I - 0x00877A 02:876A: 06        .byte $06   ; 
- D 0 - I - 0x00877B 02:876B: 34        .byte $34   ; <4>
- D 0 - I - 0x00877C 02:876C: 0A        .byte $0A   ; 
- D 0 - I - 0x00877D 02:876D: 30        .byte $30   ; <0>
- D 0 - I - 0x00877E 02:876E: 06        .byte $06   ; 
- D 0 - I - 0x00877F 02:876F: A0        .byte $A0   ; 
- D 0 - I - 0x008780 02:8770: 0F        .byte $0F   ; 
- D 0 - I - 0x008781 02:8771: 32        .byte $32   ; <2>
- D 0 - I - 0x008782 02:8772: 20        .byte $20   ; 
- D 0 - I - 0x008783 02:8773: B0        .byte $B0   ; 
- D 0 - I - 0x008784 02:8774: 02        .byte $02   ; 
- - - - - - 0x008785 02:8775: FF        .byte $FF   ; 

loc_track23:
- D 0 - I - 0x008786 02:8776: 05        .byte $05   ; 
- D 0 - I - 0x008787 02:8777: 0D        .byte $0D   ; 
- D 0 - I - 0x008788 02:8778: 00        .byte $00   ; 
- D 0 - I - 0x008789 02:8779: 00        .byte $00   ; 
- D 0 - I - 0x00878A 02:877A: 22        .byte $22   ; 
- D 0 - I - 0x00878B 02:877B: 02        .byte $02   ; 
- D 0 - I - 0x00878C 02:877C: BF        .byte $BF   ; 
- D 0 - I - 0x00878D 02:877D: 02        .byte $02   ; 
- D 0 - I - 0x00878E 02:877E: 21        .byte $21   ; 
- D 0 - I - 0x00878F 02:877F: 02        .byte $02   ; 
- D 0 - I - 0x008790 02:8780: BF        .byte $BF   ; 
- D 0 - I - 0x008791 02:8781: 04        .byte $04   ; 
- D 0 - I - 0x008792 02:8782: 20        .byte $20   ; 
- D 0 - I - 0x008793 02:8783: 02        .byte $02   ; 
- D 0 - I - 0x008794 02:8784: BF        .byte $BF   ; 
- D 0 - I - 0x008795 02:8785: 06        .byte $06   ; 
- D 0 - I - 0x008796 02:8786: 19        .byte $19   ; 
- D 0 - I - 0x008797 02:8787: 02        .byte $02   ; 
- D 0 - I - 0x008798 02:8788: BF        .byte $BF   ; 
- D 0 - I - 0x008799 02:8789: 08        .byte $08   ; 
- D 0 - I - 0x00879A 02:878A: 22        .byte $22   ; 
- D 0 - I - 0x00879B 02:878B: 02        .byte $02   ; 
- D 0 - I - 0x00879C 02:878C: BF        .byte $BF   ; 
- D 0 - I - 0x00879D 02:878D: 0A        .byte $0A   ; 
- D 0 - I - 0x00879E 02:878E: 21        .byte $21   ; 
- D 0 - I - 0x00879F 02:878F: 02        .byte $02   ; 
- D 0 - I - 0x0087A0 02:8790: BF        .byte $BF   ; 
- D 0 - I - 0x0087A1 02:8791: 0C        .byte $0C   ; 
- D 0 - I - 0x0087A2 02:8792: 1A        .byte $1A   ; 
- D 0 - I - 0x0087A3 02:8793: 02        .byte $02   ; 
- D 0 - I - 0x0087A4 02:8794: B7        .byte $B7   ; 
- D 0 - I - 0x0087A5 02:8795: 0E        .byte $0E   ; 
- D 0 - I - 0x0087A6 02:8796: 20        .byte $20   ; 
- D 0 - I - 0x0087A7 02:8797: 02        .byte $02   ; 
- D 0 - I - 0x0087A8 02:8798: B7        .byte $B7   ; 
- D 0 - I - 0x0087A9 02:8799: 10        .byte $10   ; 
- D 0 - I - 0x0087AA 02:879A: 22        .byte $22   ; 
- D 0 - I - 0x0087AB 02:879B: 02        .byte $02   ; 
- D 0 - I - 0x0087AC 02:879C: B7        .byte $B7   ; 
- D 0 - I - 0x0087AD 02:879D: 12        .byte $12   ; 
- D 0 - I - 0x0087AE 02:879E: 1F        .byte $1F   ; 
- D 0 - I - 0x0087AF 02:879F: 02        .byte $02   ; 
- D 0 - I - 0x0087B0 02:87A0: A2        .byte $A2   ; 
- D 0 - I - 0x0087B1 02:87A1: 16        .byte $16   ; 
- D 0 - I - 0x0087B2 02:87A2: 22        .byte $22   ; 
- D 0 - I - 0x0087B3 02:87A3: 02        .byte $02   ; 
- D 0 - I - 0x0087B4 02:87A4: 20        .byte $20   ; 
- D 0 - I - 0x0087B5 02:87A5: 04        .byte $04   ; 
- D 0 - I - 0x0087B6 02:87A6: 22        .byte $22   ; 
- D 0 - I - 0x0087B7 02:87A7: 02        .byte $02   ; 
- D 0 - I - 0x0087B8 02:87A8: A2        .byte $A2   ; 
- D 0 - I - 0x0087B9 02:87A9: 40        .byte $40   ; 
- D 0 - I - 0x0087BA 02:87AA: 24        .byte $24   ; 
- D 0 - I - 0x0087BB 02:87AB: 06        .byte $06   ; 
- D 0 - I - 0x0087BC 02:87AC: A2        .byte $A2   ; 
- D 0 - I - 0x0087BD 02:87AD: 0D        .byte $0D   ; 
- D 0 - I - 0x0087BE 02:87AE: B0        .byte $B0   ; 
- D 0 - I - 0x0087BF 02:87AF: 02        .byte $02   ; 
- - - - - - 0x0087C0 02:87B0: FF        .byte $FF   ; 

loc_track24:
- D 0 - I - 0x0087C1 02:87B1: 06        .byte $06   ; 
- D 0 - I - 0x0087C2 02:87B2: 02        .byte $02   ; 
- D 0 - I - 0x0087C3 02:87B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0087C4 02:87B4: 00        .byte $00   ; 
- D 0 - I - 0x0087C5 02:87B5: A3        .byte $A3   ; 
- D 0 - I - 0x0087C6 02:87B6: 10        .byte $10   ; 
- D 0 - I - 0x0087C7 02:87B7: 35        .byte $35   ; <5>
- D 0 - I - 0x0087C8 02:87B8: 0C        .byte $0C   ; 
- D 0 - I - 0x0087C9 02:87B9: 34        .byte $34   ; <4>
- D 0 - I - 0x0087CA 02:87BA: 02        .byte $02   ; 
- D 0 - I - 0x0087CB 02:87BB: 35        .byte $35   ; <5>
- D 0 - I - 0x0087CC 02:87BC: 02        .byte $02   ; 
- D 0 - I - 0x0087CD 02:87BD: 32        .byte $32   ; <2>
- D 0 - I - 0x0087CE 02:87BE: 0C        .byte $0C   ; 
- D 0 - I - 0x0087CF 02:87BF: 30        .byte $30   ; <0>
- D 0 - I - 0x0087D0 02:87C0: 02        .byte $02   ; 
- D 0 - I - 0x0087D1 02:87C1: 32        .byte $32   ; <2>
- D 0 - I - 0x0087D2 02:87C2: 02        .byte $02   ; 
- D 0 - I - 0x0087D3 02:87C3: 34        .byte $34   ; <4>
- D 0 - I - 0x0087D4 02:87C4: 0C        .byte $0C   ; 
- D 0 - I - 0x0087D5 02:87C5: 32        .byte $32   ; <2>
- D 0 - I - 0x0087D6 02:87C6: 02        .byte $02   ; 
- D 0 - I - 0x0087D7 02:87C7: 34        .byte $34   ; <4>
- D 0 - I - 0x0087D8 02:87C8: 02        .byte $02   ; 
- D 0 - I - 0x0087D9 02:87C9: 30        .byte $30   ; <0>
- D 0 - I - 0x0087DA 02:87CA: 0C        .byte $0C   ; 
- D 0 - I - 0x0087DB 02:87CB: 32        .byte $32   ; <2>
- D 0 - I - 0x0087DC 02:87CC: 02        .byte $02   ; 
- D 0 - I - 0x0087DD 02:87CD: 34        .byte $34   ; <4>
- D 0 - I - 0x0087DE 02:87CE: 02        .byte $02   ; 
- D 0 - I - 0x0087DF 02:87CF: B0        .byte $B0   ; 
- D 0 - I - 0x0087E0 02:87D0: 02        .byte $02   ; 
- - - - - - 0x0087E1 02:87D1: FF        .byte $FF   ; 

loc_track25:
- D 0 - I - 0x0087E2 02:87D2: 06        .byte $06   ; 
- D 0 - I - 0x0087E3 02:87D3: 65        .byte $65   ; <e>
- D 0 - I - 0x0087E4 02:87D4: 00        .byte $00   ; 
- D 0 - I - 0x0087E5 02:87D5: 00        .byte $00   ; 
- D 0 - I - 0x0087E6 02:87D6: 22        .byte $22   ; 
- D 0 - I - 0x0087E7 02:87D7: 06        .byte $06   ; 
- D 0 - I - 0x0087E8 02:87D8: 29        .byte $29   ; 
- D 0 - I - 0x0087E9 02:87D9: 06        .byte $06   ; 
- D 0 - I - 0x0087EA 02:87DA: 32        .byte $32   ; <2>
- D 0 - I - 0x0087EB 02:87DB: 04        .byte $04   ; 
- D 0 - I - 0x0087EC 02:87DC: 17        .byte $17   ; 
- D 0 - I - 0x0087ED 02:87DD: 06        .byte $06   ; 
- D 0 - I - 0x0087EE 02:87DE: 22        .byte $22   ; 
- D 0 - I - 0x0087EF 02:87DF: 06        .byte $06   ; 
- D 0 - I - 0x0087F0 02:87E0: 27        .byte $27   ; 
- D 0 - I - 0x0087F1 02:87E1: 04        .byte $04   ; 
- D 0 - I - 0x0087F2 02:87E2: 20        .byte $20   ; 
- D 0 - I - 0x0087F3 02:87E3: 06        .byte $06   ; 
- D 0 - I - 0x0087F4 02:87E4: 27        .byte $27   ; 
- D 0 - I - 0x0087F5 02:87E5: 06        .byte $06   ; 
- D 0 - I - 0x0087F6 02:87E6: 30        .byte $30   ; <0>
- D 0 - I - 0x0087F7 02:87E7: 04        .byte $04   ; 
- D 0 - I - 0x0087F8 02:87E8: 19        .byte $19   ; 
- D 0 - I - 0x0087F9 02:87E9: 06        .byte $06   ; 
- D 0 - I - 0x0087FA 02:87EA: 24        .byte $24   ; 
- D 0 - I - 0x0087FB 02:87EB: 06        .byte $06   ; 
- D 0 - I - 0x0087FC 02:87EC: 29        .byte $29   ; 
- D 0 - I - 0x0087FD 02:87ED: 04        .byte $04   ; 
- D 0 - I - 0x0087FE 02:87EE: B0        .byte $B0   ; 
- D 0 - I - 0x0087FF 02:87EF: 02        .byte $02   ; 
- - - - - - 0x008800 02:87F0: FF        .byte $FF   ; 

loc_track39:
- D 0 - I - 0x008801 02:87F1: 25        .byte $25   ; 
- D 0 - I - 0x008802 02:87F2: 10        .byte $10   ; 
- D 0 - I - 0x008803 02:87F3: 00        .byte $00   ; 
- D 0 - I - 0x008804 02:87F4: 00        .byte $00   ; 
- D 0 - I - 0x008805 02:87F5: FD        .byte $FD   ; 
- - - - - - 0x008806 02:87F6: FE        .byte $FE   ; 
- D 0 - I - 0x008807 02:87F7: 27        .byte $27   ; 
- D 0 - I - 0x008808 02:87F8: 02        .byte $02   ; 
- D 0 - I - 0x008809 02:87F9: BF        .byte $BF   ; 
- D 0 - I - 0x00880A 02:87FA: 00        .byte $00   ; 
- D 0 - I - 0x00880B 02:87FB: FD        .byte $FD   ; 
- - - - - - 0x00880C 02:87FC: FE        .byte $FE   ; 
- D 0 - I - 0x00880D 02:87FD: 25        .byte $25   ; 
- D 0 - I - 0x00880E 02:87FE: 02        .byte $02   ; 
- D 0 - I - 0x00880F 02:87FF: BF        .byte $BF   ; 
- D 0 - I - 0x008810 02:8800: 00        .byte $00   ; 
- D 0 - I - 0x008811 02:8801: FD        .byte $FD   ; 
- - - - - - 0x008812 02:8802: FE        .byte $FE   ; 
- D 0 - I - 0x008813 02:8803: 27        .byte $27   ; 
- D 0 - I - 0x008814 02:8804: 02        .byte $02   ; 
- D 0 - I - 0x008815 02:8805: BF        .byte $BF   ; 
- D 0 - I - 0x008816 02:8806: 00        .byte $00   ; 
- D 0 - I - 0x008817 02:8807: FD        .byte $FD   ; 
- - - - - - 0x008818 02:8808: FE        .byte $FE   ; 
- D 0 - I - 0x008819 02:8809: 25        .byte $25   ; 
- D 0 - I - 0x00881A 02:880A: 02        .byte $02   ; 
- D 0 - I - 0x00881B 02:880B: BF        .byte $BF   ; 
- D 0 - I - 0x00881C 02:880C: 00        .byte $00   ; 
- D 0 - I - 0x00881D 02:880D: FD        .byte $FD   ; 
- - - - - - 0x00881E 02:880E: FE        .byte $FE   ; 
- D 0 - I - 0x00881F 02:880F: 23        .byte $23   ; 
- D 0 - I - 0x008820 02:8810: 02        .byte $02   ; 
- D 0 - I - 0x008821 02:8811: 33        .byte $33   ; <3>
- D 0 - I - 0x008822 02:8812: 02        .byte $02   ; 
- D 0 - I - 0x008823 02:8813: B3        .byte $B3   ; 
- D 0 - I - 0x008824 02:8814: 00        .byte $00   ; 
- D 0 - I - 0x008825 02:8815: FD        .byte $FD   ; 
- - - - - - 0x008826 02:8816: FE        .byte $FE   ; 
- D 0 - I - 0x008827 02:8817: 25        .byte $25   ; 
- D 0 - I - 0x008828 02:8818: 02        .byte $02   ; 
- D 0 - I - 0x008829 02:8819: 35        .byte $35   ; <5>
- D 0 - I - 0x00882A 02:881A: 02        .byte $02   ; 
- D 0 - I - 0x00882B 02:881B: B3        .byte $B3   ; 
- D 0 - I - 0x00882C 02:881C: 00        .byte $00   ; 
- D 0 - I - 0x00882D 02:881D: FD        .byte $FD   ; 
- - - - - - 0x00882E 02:881E: FE        .byte $FE   ; 
- D 0 - I - 0x00882F 02:881F: 27        .byte $27   ; 
- D 0 - I - 0x008830 02:8820: 02        .byte $02   ; 
- D 0 - I - 0x008831 02:8821: 37        .byte $37   ; <7>
- D 0 - I - 0x008832 02:8822: 02        .byte $02   ; 
- D 0 - I - 0x008833 02:8823: B7        .byte $B7   ; 
- D 0 - I - 0x008834 02:8824: 00        .byte $00   ; 
- D 0 - I - 0x008835 02:8825: B1        .byte $B1   ; 
- D 0 - I - 0x008836 02:8826: 0E        .byte $0E   ; 
- D 0 - I - 0x008837 02:8827: B0        .byte $B0   ; 
- D 0 - I - 0x008838 02:8828: 02        .byte $02   ; 

loc_track3A:
- D 0 - I - 0x008839 02:8829: 05        .byte $05   ; 
- D 0 - I - 0x00883A 02:882A: 00        .byte $00   ; 
- D 0 - I - 0x00883B 02:882B: 02        .byte $02   ; 
- D 0 - I - 0x00883C 02:882C: 00        .byte $00   ; 
- D 0 - I - 0x00883D 02:882D: 1F        .byte $1F   ; 
- D 0 - I - 0x00883E 02:882E: 02        .byte $02   ; 
- D 0 - I - 0x00883F 02:882F: 29        .byte $29   ; 
- D 0 - I - 0x008840 02:8830: 02        .byte $02   ; 
- D 0 - I - 0x008841 02:8831: 39        .byte $39   ; <9>
- D 0 - I - 0x008842 02:8832: 01        .byte $01   ; 
- D 0 - I - 0x008843 02:8833: 39        .byte $39   ; <9>
- D 0 - I - 0x008844 02:8834: 01        .byte $01   ; 
- D 0 - I - 0x008845 02:8835: B7        .byte $B7   ; 
- D 0 - I - 0x008846 02:8836: 03        .byte $03   ; 
- D 0 - I - 0x008847 02:8837: 27        .byte $27   ; 
- D 0 - I - 0x008848 02:8838: 02        .byte $02   ; 
- D 0 - I - 0x008849 02:8839: 37        .byte $37   ; <7>
- D 0 - I - 0x00884A 02:883A: 01        .byte $01   ; 
- D 0 - I - 0x00884B 02:883B: 37        .byte $37   ; <7>
- D 0 - I - 0x00884C 02:883C: 01        .byte $01   ; 
- D 0 - I - 0x00884D 02:883D: B6        .byte $B6   ; 
- D 0 - I - 0x00884E 02:883E: 07        .byte $07   ; 
- D 0 - I - 0x00884F 02:883F: A0        .byte $A0   ; 
- D 0 - I - 0x008850 02:8840: 0F        .byte $0F   ; 
- D 0 - I - 0x008851 02:8841: 27        .byte $27   ; 
- D 0 - I - 0x008852 02:8842: 01        .byte $01   ; 
- D 0 - I - 0x008853 02:8843: 29        .byte $29   ; 
- D 0 - I - 0x008854 02:8844: 01        .byte $01   ; 
- D 0 - I - 0x008855 02:8845: 27        .byte $27   ; 
- D 0 - I - 0x008856 02:8846: 01        .byte $01   ; 
- D 0 - I - 0x008857 02:8847: 29        .byte $29   ; 
- D 0 - I - 0x008858 02:8848: 01        .byte $01   ; 
- D 0 - I - 0x008859 02:8849: 32        .byte $32   ; <2>
- D 0 - I - 0x00885A 02:884A: 0C        .byte $0C   ; 
- D 0 - I - 0x00885B 02:884B: B1        .byte $B1   ; 
- D 0 - I - 0x00885C 02:884C: 0C        .byte $0C   ; 
- D 0 - I - 0x00885D 02:884D: 29        .byte $29   ; 
- D 0 - I - 0x00885E 02:884E: 01        .byte $01   ; 
- D 0 - I - 0x00885F 02:884F: 2B        .byte $2B   ; 
- D 0 - I - 0x008860 02:8850: 01        .byte $01   ; 
- D 0 - I - 0x008861 02:8851: 29        .byte $29   ; 
- D 0 - I - 0x008862 02:8852: 01        .byte $01   ; 
- D 0 - I - 0x008863 02:8853: 2B        .byte $2B   ; 
- D 0 - I - 0x008864 02:8854: 01        .byte $01   ; 
- D 0 - I - 0x008865 02:8855: 32        .byte $32   ; <2>
- D 0 - I - 0x008866 02:8856: 10        .byte $10   ; 
- D 0 - I - 0x008867 02:8857: 19        .byte $19   ; 
- D 0 - I - 0x008868 02:8858: 01        .byte $01   ; 
- D 0 - I - 0x008869 02:8859: 20        .byte $20   ; 
- D 0 - I - 0x00886A 02:885A: 01        .byte $01   ; 
- D 0 - I - 0x00886B 02:885B: 22        .byte $22   ; 
- D 0 - I - 0x00886C 02:885C: 01        .byte $01   ; 
- D 0 - I - 0x00886D 02:885D: 24        .byte $24   ; 
- D 0 - I - 0x00886E 02:885E: 01        .byte $01   ; 
- D 0 - I - 0x00886F 02:885F: 20        .byte $20   ; 
- D 0 - I - 0x008870 02:8860: 01        .byte $01   ; 
- D 0 - I - 0x008871 02:8861: 22        .byte $22   ; 
- D 0 - I - 0x008872 02:8862: 01        .byte $01   ; 
- D 0 - I - 0x008873 02:8863: 24        .byte $24   ; 
- D 0 - I - 0x008874 02:8864: 01        .byte $01   ; 
- D 0 - I - 0x008875 02:8865: 27        .byte $27   ; 
- D 0 - I - 0x008876 02:8866: 01        .byte $01   ; 
- D 0 - I - 0x008877 02:8867: 24        .byte $24   ; 
- D 0 - I - 0x008878 02:8868: 01        .byte $01   ; 
- D 0 - I - 0x008879 02:8869: 27        .byte $27   ; 
- D 0 - I - 0x00887A 02:886A: 01        .byte $01   ; 
- D 0 - I - 0x00887B 02:886B: 29        .byte $29   ; 
- D 0 - I - 0x00887C 02:886C: 01        .byte $01   ; 
- D 0 - I - 0x00887D 02:886D: 30        .byte $30   ; <0>
- D 0 - I - 0x00887E 02:886E: 01        .byte $01   ; 
- D 0 - I - 0x00887F 02:886F: 27        .byte $27   ; 
- D 0 - I - 0x008880 02:8870: 01        .byte $01   ; 
- D 0 - I - 0x008881 02:8871: 29        .byte $29   ; 
- D 0 - I - 0x008882 02:8872: 01        .byte $01   ; 
- D 0 - I - 0x008883 02:8873: 30        .byte $30   ; <0>
- D 0 - I - 0x008884 02:8874: 01        .byte $01   ; 
- D 0 - I - 0x008885 02:8875: 32        .byte $32   ; <2>
- D 0 - I - 0x008886 02:8876: 01        .byte $01   ; 
- D 0 - I - 0x008887 02:8877: A0        .byte $A0   ; 
- D 0 - I - 0x008888 02:8878: 02        .byte $02   ; 
- D 0 - I - 0x008889 02:8879: 34        .byte $34   ; <4>
- D 0 - I - 0x00888A 02:887A: 02        .byte $02   ; 
- D 0 - I - 0x00888B 02:887B: 44        .byte $44   ; <D>
- D 0 - I - 0x00888C 02:887C: 01        .byte $01   ; 
- D 0 - I - 0x00888D 02:887D: 44        .byte $44   ; <D>
- D 0 - I - 0x00888E 02:887E: 01        .byte $01   ; 
- D 0 - I - 0x00888F 02:887F: B7        .byte $B7   ; 
- D 0 - I - 0x008890 02:8880: 27        .byte $27   ; 
- D 0 - I - 0x008891 02:8881: A0        .byte $A0   ; 
- D 0 - I - 0x008892 02:8882: 0F        .byte $0F   ; 
- D 0 - I - 0x008893 02:8883: 37        .byte $37   ; <7>
- D 0 - I - 0x008894 02:8884: 02        .byte $02   ; 
- D 0 - I - 0x008895 02:8885: 34        .byte $34   ; <4>
- D 0 - I - 0x008896 02:8886: 02        .byte $02   ; 
- D 0 - I - 0x008897 02:8887: 32        .byte $32   ; <2>
- D 0 - I - 0x008898 02:8888: 02        .byte $02   ; 
- D 0 - I - 0x008899 02:8889: 30        .byte $30   ; <0>
- D 0 - I - 0x00889A 02:888A: 06        .byte $06   ; 
- D 0 - I - 0x00889B 02:888B: 29        .byte $29   ; 
- D 0 - I - 0x00889C 02:888C: 04        .byte $04   ; 
- D 0 - I - 0x00889D 02:888D: 27        .byte $27   ; 
- D 0 - I - 0x00889E 02:888E: 0E        .byte $0E   ; 
- D 0 - I - 0x00889F 02:888F: A0        .byte $A0   ; 
- D 0 - I - 0x0088A0 02:8890: 02        .byte $02   ; 
- D 0 - I - 0x0088A1 02:8891: B0        .byte $B0   ; 
- D 0 - I - 0x0088A2 02:8892: 02        .byte $02   ; 
- - - - - - 0x0088A3 02:8893: FF        .byte $FF   ; 

loc_track9:
- D 0 - I - 0x0088A4 02:8894: 24        .byte $24   ; 
- D 0 - I - 0x0088A5 02:8895: 15        .byte $15   ; 
- D 0 - I - 0x0088A6 02:8896: 00        .byte $00   ; 
- D 0 - I - 0x0088A7 02:8897: 00        .byte $00   ; 
- D 0 - I - 0x0088A8 02:8898: FD        .byte $FD   ; 
- - - - - - 0x0088A9 02:8899: FE        .byte $FE   ; 
- D 0 - I - 0x0088AA 02:889A: 30        .byte $30   ; <0>
- D 0 - I - 0x0088AB 02:889B: 04        .byte $04   ; 
- D 0 - I - 0x0088AC 02:889C: B7        .byte $B7   ; 
- D 0 - I - 0x0088AD 02:889D: 00        .byte $00   ; 
- D 0 - I - 0x0088AE 02:889E: FD        .byte $FD   ; 
- - - - - - 0x0088AF 02:889F: FE        .byte $FE   ; 
- D 0 - I - 0x0088B0 02:88A0: 2A        .byte $2A   ; 
- D 0 - I - 0x0088B1 02:88A1: 04        .byte $04   ; 
- D 0 - I - 0x0088B2 02:88A2: B7        .byte $B7   ; 
- D 0 - I - 0x0088B3 02:88A3: 00        .byte $00   ; 
- D 0 - I - 0x0088B4 02:88A4: FD        .byte $FD   ; 
- - - - - - 0x0088B5 02:88A5: FE        .byte $FE   ; 
- D 0 - I - 0x0088B6 02:88A6: 28        .byte $28   ; 
- D 0 - I - 0x0088B7 02:88A7: 04        .byte $04   ; 
- D 0 - I - 0x0088B8 02:88A8: B7        .byte $B7   ; 
- D 0 - I - 0x0088B9 02:88A9: 00        .byte $00   ; 
- D 0 - I - 0x0088BA 02:88AA: FD        .byte $FD   ; 
- - - - - - 0x0088BB 02:88AB: FE        .byte $FE   ; 
- D 0 - I - 0x0088BC 02:88AC: 25        .byte $25   ; 
- D 0 - I - 0x0088BD 02:88AD: 04        .byte $04   ; 
- D 0 - I - 0x0088BE 02:88AE: B3        .byte $B3   ; 
- D 0 - I - 0x0088BF 02:88AF: 00        .byte $00   ; 
- D 0 - I - 0x0088C0 02:88B0: FD        .byte $FD   ; 
- - - - - - 0x0088C1 02:88B1: FE        .byte $FE   ; 
- D 0 - I - 0x0088C2 02:88B2: 27        .byte $27   ; 
- D 0 - I - 0x0088C3 02:88B3: 04        .byte $04   ; 
- D 0 - I - 0x0088C4 02:88B4: B3        .byte $B3   ; 
- D 0 - I - 0x0088C5 02:88B5: 00        .byte $00   ; 
- D 0 - I - 0x0088C6 02:88B6: B1        .byte $B1   ; 
- D 0 - I - 0x0088C7 02:88B7: 02        .byte $02   ; 
- D 0 - I - 0x0088C8 02:88B8: FD        .byte $FD   ; 
- - - - - - 0x0088C9 02:88B9: FE        .byte $FE   ; 
- D 0 - I - 0x0088CA 02:88BA: 20        .byte $20   ; 
- D 0 - I - 0x0088CB 02:88BB: 04        .byte $04   ; 
- D 0 - I - 0x0088CC 02:88BC: 30        .byte $30   ; <0>
- D 0 - I - 0x0088CD 02:88BD: 02        .byte $02   ; 
- D 0 - I - 0x0088CE 02:88BE: 1A        .byte $1A   ; 
- D 0 - I - 0x0088CF 02:88BF: 06        .byte $06   ; 
- D 0 - I - 0x0088D0 02:88C0: 2A        .byte $2A   ; 
- D 0 - I - 0x0088D1 02:88C1: 04        .byte $04   ; 
- D 0 - I - 0x0088D2 02:88C2: 18        .byte $18   ; 
- D 0 - I - 0x0088D3 02:88C3: 04        .byte $04   ; 
- D 0 - I - 0x0088D4 02:88C4: 28        .byte $28   ; 
- D 0 - I - 0x0088D5 02:88C5: 02        .byte $02   ; 
- D 0 - I - 0x0088D6 02:88C6: 17        .byte $17   ; 
- D 0 - I - 0x0088D7 02:88C7: 06        .byte $06   ; 
- D 0 - I - 0x0088D8 02:88C8: 27        .byte $27   ; 
- D 0 - I - 0x0088D9 02:88C9: 04        .byte $04   ; 
- D 0 - I - 0x0088DA 02:88CA: B1        .byte $B1   ; 
- D 0 - I - 0x0088DB 02:88CB: 00        .byte $00   ; 
- D 0 - I - 0x0088DC 02:88CC: 20        .byte $20   ; 
- D 0 - I - 0x0088DD 02:88CD: 04        .byte $04   ; 
- D 0 - I - 0x0088DE 02:88CE: 30        .byte $30   ; <0>
- D 0 - I - 0x0088DF 02:88CF: 02        .byte $02   ; 
- D 0 - I - 0x0088E0 02:88D0: 1A        .byte $1A   ; 
- D 0 - I - 0x0088E1 02:88D1: 06        .byte $06   ; 
- D 0 - I - 0x0088E2 02:88D2: 2A        .byte $2A   ; 
- D 0 - I - 0x0088E3 02:88D3: 04        .byte $04   ; 
- D 0 - I - 0x0088E4 02:88D4: 25        .byte $25   ; 
- D 0 - I - 0x0088E5 02:88D5: 04        .byte $04   ; 
- D 0 - I - 0x0088E6 02:88D6: 25        .byte $25   ; 
- D 0 - I - 0x0088E7 02:88D7: 04        .byte $04   ; 
- D 0 - I - 0x0088E8 02:88D8: 25        .byte $25   ; 
- D 0 - I - 0x0088E9 02:88D9: 04        .byte $04   ; 
- D 0 - I - 0x0088EA 02:88DA: 25        .byte $25   ; 
- D 0 - I - 0x0088EB 02:88DB: 04        .byte $04   ; 
- D 0 - I - 0x0088EC 02:88DC: 27        .byte $27   ; 
- D 0 - I - 0x0088ED 02:88DD: 04        .byte $04   ; 
- D 0 - I - 0x0088EE 02:88DE: 27        .byte $27   ; 
- D 0 - I - 0x0088EF 02:88DF: 04        .byte $04   ; 
- D 0 - I - 0x0088F0 02:88E0: 27        .byte $27   ; 
- D 0 - I - 0x0088F1 02:88E1: 04        .byte $04   ; 
- D 0 - I - 0x0088F2 02:88E2: 27        .byte $27   ; 
- D 0 - I - 0x0088F3 02:88E3: 04        .byte $04   ; 
- D 0 - I - 0x0088F4 02:88E4: 27        .byte $27   ; 
- D 0 - I - 0x0088F5 02:88E5: 02        .byte $02   ; 
- D 0 - I - 0x0088F6 02:88E6: 37        .byte $37   ; <7>
- D 0 - I - 0x0088F7 02:88E7: 02        .byte $02   ; 
- D 0 - I - 0x0088F8 02:88E8: 28        .byte $28   ; 
- D 0 - I - 0x0088F9 02:88E9: 02        .byte $02   ; 
- D 0 - I - 0x0088FA 02:88EA: 38        .byte $38   ; <8>
- D 0 - I - 0x0088FB 02:88EB: 02        .byte $02   ; 
- D 0 - I - 0x0088FC 02:88EC: 2A        .byte $2A   ; 
- D 0 - I - 0x0088FD 02:88ED: 02        .byte $02   ; 
- D 0 - I - 0x0088FE 02:88EE: 3A        .byte $3A   ; 
- D 0 - I - 0x0088FF 02:88EF: 02        .byte $02   ; 
- D 0 - I - 0x008900 02:88F0: 2B        .byte $2B   ; 
- D 0 - I - 0x008901 02:88F1: 02        .byte $02   ; 
- D 0 - I - 0x008902 02:88F2: 3B        .byte $3B   ; 
- D 0 - I - 0x008903 02:88F3: 02        .byte $02   ; 
- D 0 - I - 0x008904 02:88F4: B0        .byte $B0   ; 
- D 0 - I - 0x008905 02:88F5: 02        .byte $02   ; 
- - - - - - 0x008906 02:88F6: FF        .byte $FF   ; 

loc_track26:
- - - - - - 0x008907 02:88F7: FF        .byte $FF   ; 

loc_track27:
- - - - - - 0x008908 02:88F8: FF        .byte $FF   ; 

loc_track28:
- D 0 - I - 0x008909 02:88F9: 30        .byte $30   ; <0>
- D 0 - I - 0x00890A 02:88FA: 00        .byte $00   ; 
- D 0 - I - 0x00890B 02:88FB: 02        .byte $02   ; 
- D 0 - I - 0x00890C 02:88FC: 00        .byte $00   ; 
- D 0 - I - 0x00890D 02:88FD: 08        .byte $08   ; 
- D 0 - I - 0x00890E 02:88FE: 10        .byte $10   ; 
- D 0 - I - 0x00890F 02:88FF: FF        .byte $FF   ; 

loc_track29:
- D 0 - I - 0x008910 02:8900: 01        .byte $01   ; 
- D 0 - I - 0x008911 02:8901: 02        .byte $02   ; 
- D 0 - I - 0x008912 02:8902: 17        .byte $17   ; 
- D 0 - I - 0x008913 02:8903: 86        .byte $86   ; 
- D 0 - I - 0x008914 02:8904: 30        .byte $30   ; <0>
- D 0 - I - 0x008915 02:8905: 02        .byte $02   ; 
- D 0 - I - 0x008916 02:8906: 28        .byte $28   ; 
- D 0 - I - 0x008917 02:8907: 01        .byte $01   ; 
- D 0 - I - 0x008918 02:8908: FF        .byte $FF   ; 

loc_track2A:
- D 0 - I - 0x008919 02:8909: 03        .byte $03   ; 
- D 0 - I - 0x00891A 02:890A: 01        .byte $01   ; 
- D 0 - I - 0x00891B 02:890B: 1F        .byte $1F   ; 
- D 0 - I - 0x00891C 02:890C: 9B        .byte $9B   ; 
- D 0 - I - 0x00891D 02:890D: EF        .byte $EF   ; 
- D 0 - I - 0x00891E 02:890E: 01        .byte $01   ; 
- D 0 - I - 0x00891F 02:890F: FD        .byte $FD   ; 
- - - - - - 0x008920 02:8910: FE        .byte $FE   ; 
- D 0 - I - 0x008921 02:8911: 27        .byte $27   ; 
- D 0 - I - 0x008922 02:8912: 01        .byte $01   ; 
- D 0 - I - 0x008923 02:8913: 20        .byte $20   ; 
- D 0 - I - 0x008924 02:8914: 02        .byte $02   ; 
- D 0 - I - 0x008925 02:8915: 17        .byte $17   ; 
- D 0 - I - 0x008926 02:8916: 06        .byte $06   ; 
- D 0 - I - 0x008927 02:8917: B1        .byte $B1   ; 
- D 0 - I - 0x008928 02:8918: 00        .byte $00   ; 
- D 0 - I - 0x008929 02:8919: FF        .byte $FF   ; 

loc_track2B:
- - - - - - 0x00892A 02:891A: FF        .byte $FF   ; 

loc_track2C:
- D 0 - I - 0x00892B 02:891B: 32        .byte $32   ; <2>
- D 0 - I - 0x00892C 02:891C: 00        .byte $00   ; 
- D 0 - I - 0x00892D 02:891D: 03        .byte $03   ; 
- D 0 - I - 0x00892E 02:891E: 00        .byte $00   ; 
- D 0 - I - 0x00892F 02:891F: 02        .byte $02   ; 
- D 0 - I - 0x008930 02:8920: 01        .byte $01   ; 
- D 0 - I - 0x008931 02:8921: 04        .byte $04   ; 
- D 0 - I - 0x008932 02:8922: 01        .byte $01   ; 
- D 0 - I - 0x008933 02:8923: 07        .byte $07   ; 
- D 0 - I - 0x008934 02:8924: 05        .byte $05   ; 
- D 0 - I - 0x008935 02:8925: FF        .byte $FF   ; 

loc_track2D:
- D 0 - I - 0x008936 02:8926: 32        .byte $32   ; <2>
- D 0 - I - 0x008937 02:8927: 00        .byte $00   ; 
- D 0 - I - 0x008938 02:8928: 03        .byte $03   ; 
- D 0 - I - 0x008939 02:8929: 00        .byte $00   ; 
- D 0 - I - 0x00893A 02:892A: 04        .byte $04   ; 
- D 0 - I - 0x00893B 02:892B: 01        .byte $01   ; 
- D 0 - I - 0x00893C 02:892C: 08        .byte $08   ; 
- D 0 - I - 0x00893D 02:892D: 02        .byte $02   ; 
- D 0 - I - 0x00893E 02:892E: FF        .byte $FF   ; 

loc_track2E:
- - - - - - 0x00893F 02:892F: FF        .byte $FF   ; 

loc_track2F:
- - - - - - 0x008940 02:8930: FF        .byte $FF   ; 

loc_track30:
- D 0 - I - 0x008941 02:8931: 01        .byte $01   ; 
- D 0 - I - 0x008942 02:8932: 02        .byte $02   ; 
- D 0 - I - 0x008943 02:8933: 1F        .byte $1F   ; 
- D 0 - I - 0x008944 02:8934: 83        .byte $83   ; 
- D 0 - I - 0x008945 02:8935: EF        .byte $EF   ; 
- D 0 - I - 0x008946 02:8936: 02        .byte $02   ; 
- D 0 - I - 0x008947 02:8937: A3        .byte $A3   ; 
- D 0 - I - 0x008948 02:8938: 20        .byte $20   ; 
- D 0 - I - 0x008949 02:8939: FD        .byte $FD   ; 
- - - - - - 0x00894A 02:893A: FE        .byte $FE   ; 
- D 0 - I - 0x00894B 02:893B: 20        .byte $20   ; 
- D 0 - I - 0x00894C 02:893C: 02        .byte $02   ; 
- D 0 - I - 0x00894D 02:893D: BF        .byte $BF   ; 
- D 0 - I - 0x00894E 02:893E: 00        .byte $00   ; 
- D 0 - I - 0x00894F 02:893F: FF        .byte $FF   ; 

loc_track31:
- D 0 - I - 0x008950 02:8940: 32        .byte $32   ; <2>
- D 0 - I - 0x008951 02:8941: 00        .byte $00   ; 
- D 0 - I - 0x008952 02:8942: 03        .byte $03   ; 
- D 0 - I - 0x008953 02:8943: 00        .byte $00   ; 
- D 0 - I - 0x008954 02:8944: 04        .byte $04   ; 
- D 0 - I - 0x008955 02:8945: 01        .byte $01   ; 
- D 0 - I - 0x008956 02:8946: FF        .byte $FF   ; 

loc_track32:
- D 0 - I - 0x008957 02:8947: 30        .byte $30   ; <0>
- D 0 - I - 0x008958 02:8948: 00        .byte $00   ; 
- D 0 - I - 0x008959 02:8949: 01        .byte $01   ; 
- D 0 - I - 0x00895A 02:894A: 00        .byte $00   ; 
- D 0 - I - 0x00895B 02:894B: FD        .byte $FD   ; 
- - - - - - 0x00895C 02:894C: FE        .byte $FE   ; 
- D 0 - I - 0x00895D 02:894D: 04        .byte $04   ; 
- D 0 - I - 0x00895E 02:894E: 02        .byte $02   ; 
- D 0 - I - 0x00895F 02:894F: 03        .byte $03   ; 
- D 0 - I - 0x008960 02:8950: 02        .byte $02   ; 
- D 0 - I - 0x008961 02:8951: B2        .byte $B2   ; 
- D 0 - I - 0x008962 02:8952: 00        .byte $00   ; 
- D 0 - I - 0x008963 02:8953: 09        .byte $09   ; 
- D 0 - I - 0x008964 02:8954: 05        .byte $05   ; 
- D 0 - I - 0x008965 02:8955: FF        .byte $FF   ; 
- - - - - - 0x008966 02:8956: FF        .byte $FF   ; 

loc_track33:
- - - - - - 0x008967 02:8957: FF        .byte $FF   ; 

loc_track34:
- D 0 - I - 0x008968 02:8958: 01        .byte $01   ; 
- D 0 - I - 0x008969 02:8959: 01        .byte $01   ; 
- D 0 - I - 0x00896A 02:895A: 01        .byte $01   ; 
- D 0 - I - 0x00896B 02:895B: 8C        .byte $8C   ; 
- D 0 - I - 0x00896C 02:895C: 16        .byte $16   ; 
- D 0 - I - 0x00896D 02:895D: 04        .byte $04   ; 
- D 0 - I - 0x00896E 02:895E: FF        .byte $FF   ; 

loc_track35:
- D 0 - I - 0x00896F 02:895F: 02        .byte $02   ; 
- D 0 - I - 0x008970 02:8960: 02        .byte $02   ; 
- D 0 - I - 0x008971 02:8961: 17        .byte $17   ; 
- D 0 - I - 0x008972 02:8962: 00        .byte $00   ; 
- D 0 - I - 0x008973 02:8963: 40        .byte $40   ; 
- D 0 - I - 0x008974 02:8964: 01        .byte $01   ; 
- D 0 - I - 0x008975 02:8965: 50        .byte $50   ; <P>
- D 0 - I - 0x008976 02:8966: 01        .byte $01   ; 
- D 0 - I - 0x008977 02:8967: 60        .byte $60   ; 
- D 0 - I - 0x008978 02:8968: 01        .byte $01   ; 
- D 0 - I - 0x008979 02:8969: 65        .byte $65   ; <e>
- D 0 - I - 0x00897A 02:896A: 01        .byte $01   ; 
- D 0 - I - 0x00897B 02:896B: FF        .byte $FF   ; 

loc_track36:
- D 0 - I - 0x00897C 02:896C: 30        .byte $30   ; <0>
- D 0 - I - 0x00897D 02:896D: 00        .byte $00   ; 
- D 0 - I - 0x00897E 02:896E: 05        .byte $05   ; 
- D 0 - I - 0x00897F 02:896F: 00        .byte $00   ; 
- D 0 - I - 0x008980 02:8970: 09        .byte $09   ; 
- D 0 - I - 0x008981 02:8971: 01        .byte $01   ; 
- D 0 - I - 0x008982 02:8972: 05        .byte $05   ; 
- D 0 - I - 0x008983 02:8973: 05        .byte $05   ; 
- D 0 - I - 0x008984 02:8974: 09        .byte $09   ; 
- D 0 - I - 0x008985 02:8975: 30        .byte $30   ; <0>
- D 0 - I - 0x008986 02:8976: FF        .byte $FF   ; 

loc_track37:
- D 0 - I - 0x008987 02:8977: 00        .byte $00   ; 
- D 0 - I - 0x008988 02:8978: 01        .byte $01   ; 
- D 0 - I - 0x008989 02:8979: 00        .byte $00   ; 
- D 0 - I - 0x00898A 02:897A: 81        .byte $81   ; 
- D 0 - I - 0x00898B 02:897B: 20        .byte $20   ; 
- D 0 - I - 0x00898C 02:897C: 03        .byte $03   ; 
- D 0 - I - 0x00898D 02:897D: 27        .byte $27   ; 
- D 0 - I - 0x00898E 02:897E: 01        .byte $01   ; 
- D 0 - I - 0x00898F 02:897F: 25        .byte $25   ; 
- D 0 - I - 0x008990 02:8980: 02        .byte $02   ; 
- D 0 - I - 0x008991 02:8981: FF        .byte $FF   ; 

loc_track38:
- - - - - - 0x008992 02:8982: FF        .byte $FF   ; 

loc_track3C:
- - - - - - 0x008993 02:8983: FF        .byte $FF   ; 

loc_track3D:
- D 0 - I - 0x008994 02:8984: 30        .byte $30   ; <0>
- D 0 - I - 0x008995 02:8985: 00        .byte $00   ; 
- D 0 - I - 0x008996 02:8986: 02        .byte $02   ; 
- D 0 - I - 0x008997 02:8987: 00        .byte $00   ; 
- D 0 - I - 0x008998 02:8988: 06        .byte $06   ; 
- D 0 - I - 0x008999 02:8989: 01        .byte $01   ; 
- D 0 - I - 0x00899A 02:898A: 0E        .byte $0E   ; 
- D 0 - I - 0x00899B 02:898B: 03        .byte $03   ; 
- D 0 - I - 0x00899C 02:898C: FF        .byte $FF   ; 

loc_track3E:
- - - - - - 0x00899D 02:898D: FF        .byte $FF   ; 

loc_track3F:
- D 0 - I - 0x00899E 02:898E: 00        .byte $00   ; 
- D 0 - I - 0x00899F 02:898F: 02        .byte $02   ; 
- D 0 - I - 0x0089A0 02:8990: 18        .byte $18   ; 
- D 0 - I - 0x0089A1 02:8991: 84        .byte $84   ; 
- D 0 - I - 0x0089A2 02:8992: 46        .byte $46   ; <F>
- D 0 - I - 0x0089A3 02:8993: 07        .byte $07   ; 
- D 0 - I - 0x0089A4 02:8994: FF        .byte $FF   ; 

loc_track40:
- D 0 - I - 0x0089A5 02:8995: 00        .byte $00   ; 
- D 0 - I - 0x0089A6 02:8996: 01        .byte $01   ; 
- D 0 - I - 0x0089A7 02:8997: 19        .byte $19   ; 
- D 0 - I - 0x0089A8 02:8998: 8D        .byte $8D   ; 
- D 0 - I - 0x0089A9 02:8999: 21        .byte $21   ; 
- D 0 - I - 0x0089AA 02:899A: 06        .byte $06   ; 
- D 0 - I - 0x0089AB 02:899B: FF        .byte $FF   ; 

loc_track41:
- D 0 - I - 0x0089AC 02:899C: 30        .byte $30   ; <0>
- D 0 - I - 0x0089AD 02:899D: 00        .byte $00   ; 
- D 0 - I - 0x0089AE 02:899E: 05        .byte $05   ; 
- D 0 - I - 0x0089AF 02:899F: 00        .byte $00   ; 
- D 0 - I - 0x0089B0 02:89A0: 0B        .byte $0B   ; 
- D 0 - I - 0x0089B1 02:89A1: 01        .byte $01   ; 
- D 0 - I - 0x0089B2 02:89A2: 0C        .byte $0C   ; 
- D 0 - I - 0x0089B3 02:89A3: 01        .byte $01   ; 
- D 0 - I - 0x0089B4 02:89A4: 0E        .byte $0E   ; 
- D 0 - I - 0x0089B5 02:89A5: 02        .byte $02   ; 
- D 0 - I - 0x0089B6 02:89A6: FF        .byte $FF   ; 

loc_track42:
- - - - - - 0x0089B7 02:89A7: FF        .byte $FF   ; 

loc_track43:
- D 0 - I - 0x0089B8 02:89A8: 04        .byte $04   ; 
- D 0 - I - 0x0089B9 02:89A9: 02        .byte $02   ; 
- D 0 - I - 0x0089BA 02:89AA: 0A        .byte $0A   ; 
- D 0 - I - 0x0089BB 02:89AB: 00        .byte $00   ; 
- D 0 - I - 0x0089BC 02:89AC: A3        .byte $A3   ; 
- D 0 - I - 0x0089BD 02:89AD: 10        .byte $10   ; 
- D 0 - I - 0x0089BE 02:89AE: 24        .byte $24   ; 
- D 0 - I - 0x0089BF 02:89AF: 06        .byte $06   ; 
- D 0 - I - 0x0089C0 02:89B0: 24        .byte $24   ; 
- D 0 - I - 0x0089C1 02:89B1: 06        .byte $06   ; 
- D 0 - I - 0x0089C2 02:89B2: 24        .byte $24   ; 
- D 0 - I - 0x0089C3 02:89B3: 06        .byte $06   ; 
- D 0 - I - 0x0089C4 02:89B4: 24        .byte $24   ; 
- D 0 - I - 0x0089C5 02:89B5: 06        .byte $06   ; 
- D 0 - I - 0x0089C6 02:89B6: A0        .byte $A0   ; 
- D 0 - I - 0x0089C7 02:89B7: 02        .byte $02   ; 
- D 0 - I - 0x0089C8 02:89B8: 24        .byte $24   ; 
- D 0 - I - 0x0089C9 02:89B9: 04        .byte $04   ; 
- D 0 - I - 0x0089CA 02:89BA: 24        .byte $24   ; 
- D 0 - I - 0x0089CB 02:89BB: 04        .byte $04   ; 
- D 0 - I - 0x0089CC 02:89BC: A0        .byte $A0   ; 
- D 0 - I - 0x0089CD 02:89BD: 0A        .byte $0A   ; 
- D 0 - I - 0x0089CE 02:89BE: 25        .byte $25   ; 
- D 0 - I - 0x0089CF 02:89BF: 06        .byte $06   ; 
- D 0 - I - 0x0089D0 02:89C0: 25        .byte $25   ; 
- D 0 - I - 0x0089D1 02:89C1: 06        .byte $06   ; 
- D 0 - I - 0x0089D2 02:89C2: 25        .byte $25   ; 
- D 0 - I - 0x0089D3 02:89C3: 06        .byte $06   ; 
- D 0 - I - 0x0089D4 02:89C4: 25        .byte $25   ; 
- D 0 - I - 0x0089D5 02:89C5: 06        .byte $06   ; 
- D 0 - I - 0x0089D6 02:89C6: A0        .byte $A0   ; 
- D 0 - I - 0x0089D7 02:89C7: 02        .byte $02   ; 
- D 0 - I - 0x0089D8 02:89C8: 25        .byte $25   ; 
- D 0 - I - 0x0089D9 02:89C9: 04        .byte $04   ; 
- D 0 - I - 0x0089DA 02:89CA: 25        .byte $25   ; 
- D 0 - I - 0x0089DB 02:89CB: 04        .byte $04   ; 
- D 0 - I - 0x0089DC 02:89CC: A0        .byte $A0   ; 
- D 0 - I - 0x0089DD 02:89CD: 0A        .byte $0A   ; 
- D 0 - I - 0x0089DE 02:89CE: B1        .byte $B1   ; 
- D 0 - I - 0x0089DF 02:89CF: 02        .byte $02   ; 
- D 0 - I - 0x0089E0 02:89D0: 28        .byte $28   ; 
- D 0 - I - 0x0089E1 02:89D1: 06        .byte $06   ; 
- D 0 - I - 0x0089E2 02:89D2: 28        .byte $28   ; 
- D 0 - I - 0x0089E3 02:89D3: 06        .byte $06   ; 
- D 0 - I - 0x0089E4 02:89D4: 28        .byte $28   ; 
- D 0 - I - 0x0089E5 02:89D5: 06        .byte $06   ; 
- D 0 - I - 0x0089E6 02:89D6: 28        .byte $28   ; 
- D 0 - I - 0x0089E7 02:89D7: 06        .byte $06   ; 
- D 0 - I - 0x0089E8 02:89D8: A0        .byte $A0   ; 
- D 0 - I - 0x0089E9 02:89D9: 02        .byte $02   ; 
- D 0 - I - 0x0089EA 02:89DA: 28        .byte $28   ; 
- D 0 - I - 0x0089EB 02:89DB: 04        .byte $04   ; 
- D 0 - I - 0x0089EC 02:89DC: 28        .byte $28   ; 
- D 0 - I - 0x0089ED 02:89DD: 04        .byte $04   ; 
- D 0 - I - 0x0089EE 02:89DE: A0        .byte $A0   ; 
- D 0 - I - 0x0089EF 02:89DF: 0A        .byte $0A   ; 
- D 0 - I - 0x0089F0 02:89E0: 27        .byte $27   ; 
- D 0 - I - 0x0089F1 02:89E1: 06        .byte $06   ; 
- D 0 - I - 0x0089F2 02:89E2: 27        .byte $27   ; 
- D 0 - I - 0x0089F3 02:89E3: 06        .byte $06   ; 
- D 0 - I - 0x0089F4 02:89E4: 27        .byte $27   ; 
- D 0 - I - 0x0089F5 02:89E5: 06        .byte $06   ; 
- D 0 - I - 0x0089F6 02:89E6: 27        .byte $27   ; 
- D 0 - I - 0x0089F7 02:89E7: 06        .byte $06   ; 
- D 0 - I - 0x0089F8 02:89E8: A0        .byte $A0   ; 
- D 0 - I - 0x0089F9 02:89E9: 02        .byte $02   ; 
- D 0 - I - 0x0089FA 02:89EA: 27        .byte $27   ; 
- D 0 - I - 0x0089FB 02:89EB: 04        .byte $04   ; 
- D 0 - I - 0x0089FC 02:89EC: 27        .byte $27   ; 
- D 0 - I - 0x0089FD 02:89ED: 04        .byte $04   ; 
- D 0 - I - 0x0089FE 02:89EE: A0        .byte $A0   ; 
- D 0 - I - 0x0089FF 02:89EF: 0A        .byte $0A   ; 
- D 0 - I - 0x008A00 02:89F0: 25        .byte $25   ; 
- D 0 - I - 0x008A01 02:89F1: 06        .byte $06   ; 
- D 0 - I - 0x008A02 02:89F2: 25        .byte $25   ; 
- D 0 - I - 0x008A03 02:89F3: 06        .byte $06   ; 
- D 0 - I - 0x008A04 02:89F4: 25        .byte $25   ; 
- D 0 - I - 0x008A05 02:89F5: 06        .byte $06   ; 
- D 0 - I - 0x008A06 02:89F6: 25        .byte $25   ; 
- D 0 - I - 0x008A07 02:89F7: 06        .byte $06   ; 
- D 0 - I - 0x008A08 02:89F8: A0        .byte $A0   ; 
- D 0 - I - 0x008A09 02:89F9: 02        .byte $02   ; 
- D 0 - I - 0x008A0A 02:89FA: 25        .byte $25   ; 
- D 0 - I - 0x008A0B 02:89FB: 04        .byte $04   ; 
- D 0 - I - 0x008A0C 02:89FC: 25        .byte $25   ; 
- D 0 - I - 0x008A0D 02:89FD: 04        .byte $04   ; 
- D 0 - I - 0x008A0E 02:89FE: A0        .byte $A0   ; 
- D 0 - I - 0x008A0F 02:89FF: 0F        .byte $0F   ; 
- D 0 - I - 0x008A10 02:8A00: 2B        .byte $2B   ; 
- D 0 - I - 0x008A11 02:8A01: 18        .byte $18   ; 
- D 0 - I - 0x008A12 02:8A02: 35        .byte $35   ; <5>
- D 0 - I - 0x008A13 02:8A03: 02        .byte $02   ; 
- D 0 - I - 0x008A14 02:8A04: 34        .byte $34   ; <4>
- D 0 - I - 0x008A15 02:8A05: 02        .byte $02   ; 
- D 0 - I - 0x008A16 02:8A06: 32        .byte $32   ; <2>
- D 0 - I - 0x008A17 02:8A07: 02        .byte $02   ; 
- D 0 - I - 0x008A18 02:8A08: 30        .byte $30   ; <0>
- D 0 - I - 0x008A19 02:8A09: 02        .byte $02   ; 
- D 0 - I - 0x008A1A 02:8A0A: B0        .byte $B0   ; 
- D 0 - I - 0x008A1B 02:8A0B: 02        .byte $02   ; 
- - - - - - 0x008A1C 02:8A0C: FF        .byte $FF   ; 

loc_track44:
- D 0 - I - 0x008A1D 02:8A0D: 03        .byte $03   ; 
- D 0 - I - 0x008A1E 02:8A0E: 00        .byte $00   ; 
- D 0 - I - 0x008A1F 02:8A0F: 01        .byte $01   ; 
- D 0 - I - 0x008A20 02:8A10: 00        .byte $00   ; 
- D 0 - I - 0x008A21 02:8A11: FD        .byte $FD   ; 
- - - - - - 0x008A22 02:8A12: FE        .byte $FE   ; 
- D 0 - I - 0x008A23 02:8A13: 30        .byte $30   ; <0>
- D 0 - I - 0x008A24 02:8A14: 02        .byte $02   ; 
- D 0 - I - 0x008A25 02:8A15: 33        .byte $33   ; <3>
- D 0 - I - 0x008A26 02:8A16: 02        .byte $02   ; 
- D 0 - I - 0x008A27 02:8A17: 30        .byte $30   ; <0>
- D 0 - I - 0x008A28 02:8A18: 02        .byte $02   ; 
- D 0 - I - 0x008A29 02:8A19: 33        .byte $33   ; <3>
- D 0 - I - 0x008A2A 02:8A1A: 02        .byte $02   ; 
- D 0 - I - 0x008A2B 02:8A1B: 37        .byte $37   ; <7>
- D 0 - I - 0x008A2C 02:8A1C: 02        .byte $02   ; 
- D 0 - I - 0x008A2D 02:8A1D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A2E 02:8A1E: 02        .byte $02   ; 
- D 0 - I - 0x008A2F 02:8A1F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A30 02:8A20: 02        .byte $02   ; 
- D 0 - I - 0x008A31 02:8A21: 33        .byte $33   ; <3>
- D 0 - I - 0x008A32 02:8A22: 02        .byte $02   ; 
- D 0 - I - 0x008A33 02:8A23: 30        .byte $30   ; <0>
- D 0 - I - 0x008A34 02:8A24: 02        .byte $02   ; 
- D 0 - I - 0x008A35 02:8A25: 33        .byte $33   ; <3>
- D 0 - I - 0x008A36 02:8A26: 02        .byte $02   ; 
- D 0 - I - 0x008A37 02:8A27: 30        .byte $30   ; <0>
- D 0 - I - 0x008A38 02:8A28: 02        .byte $02   ; 
- D 0 - I - 0x008A39 02:8A29: 33        .byte $33   ; <3>
- D 0 - I - 0x008A3A 02:8A2A: 02        .byte $02   ; 
- D 0 - I - 0x008A3B 02:8A2B: 36        .byte $36   ; <6>
- D 0 - I - 0x008A3C 02:8A2C: 02        .byte $02   ; 
- D 0 - I - 0x008A3D 02:8A2D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A3E 02:8A2E: 02        .byte $02   ; 
- D 0 - I - 0x008A3F 02:8A2F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A40 02:8A30: 02        .byte $02   ; 
- D 0 - I - 0x008A41 02:8A31: 33        .byte $33   ; <3>
- D 0 - I - 0x008A42 02:8A32: 02        .byte $02   ; 
- D 0 - I - 0x008A43 02:8A33: B3        .byte $B3   ; 
- D 0 - I - 0x008A44 02:8A34: 00        .byte $00   ; 
- D 0 - I - 0x008A45 02:8A35: FD        .byte $FD   ; 
- - - - - - 0x008A46 02:8A36: FE        .byte $FE   ; 
- D 0 - I - 0x008A47 02:8A37: 35        .byte $35   ; <5>
- D 0 - I - 0x008A48 02:8A38: 02        .byte $02   ; 
- D 0 - I - 0x008A49 02:8A39: 38        .byte $38   ; <8>
- D 0 - I - 0x008A4A 02:8A3A: 02        .byte $02   ; 
- D 0 - I - 0x008A4B 02:8A3B: 35        .byte $35   ; <5>
- D 0 - I - 0x008A4C 02:8A3C: 02        .byte $02   ; 
- D 0 - I - 0x008A4D 02:8A3D: 38        .byte $38   ; <8>
- D 0 - I - 0x008A4E 02:8A3E: 02        .byte $02   ; 
- D 0 - I - 0x008A4F 02:8A3F: 40        .byte $40   ; 
- D 0 - I - 0x008A50 02:8A40: 02        .byte $02   ; 
- D 0 - I - 0x008A51 02:8A41: 38        .byte $38   ; <8>
- D 0 - I - 0x008A52 02:8A42: 02        .byte $02   ; 
- D 0 - I - 0x008A53 02:8A43: 35        .byte $35   ; <5>
- D 0 - I - 0x008A54 02:8A44: 02        .byte $02   ; 
- D 0 - I - 0x008A55 02:8A45: 38        .byte $38   ; <8>
- D 0 - I - 0x008A56 02:8A46: 02        .byte $02   ; 
- D 0 - I - 0x008A57 02:8A47: 35        .byte $35   ; <5>
- D 0 - I - 0x008A58 02:8A48: 02        .byte $02   ; 
- D 0 - I - 0x008A59 02:8A49: 38        .byte $38   ; <8>
- D 0 - I - 0x008A5A 02:8A4A: 02        .byte $02   ; 
- D 0 - I - 0x008A5B 02:8A4B: 35        .byte $35   ; <5>
- D 0 - I - 0x008A5C 02:8A4C: 02        .byte $02   ; 
- D 0 - I - 0x008A5D 02:8A4D: 38        .byte $38   ; <8>
- D 0 - I - 0x008A5E 02:8A4E: 02        .byte $02   ; 
- D 0 - I - 0x008A5F 02:8A4F: 3B        .byte $3B   ; 
- D 0 - I - 0x008A60 02:8A50: 02        .byte $02   ; 
- D 0 - I - 0x008A61 02:8A51: 38        .byte $38   ; <8>
- D 0 - I - 0x008A62 02:8A52: 02        .byte $02   ; 
- D 0 - I - 0x008A63 02:8A53: 35        .byte $35   ; <5>
- D 0 - I - 0x008A64 02:8A54: 02        .byte $02   ; 
- D 0 - I - 0x008A65 02:8A55: 38        .byte $38   ; <8>
- D 0 - I - 0x008A66 02:8A56: 02        .byte $02   ; 
- D 0 - I - 0x008A67 02:8A57: B1        .byte $B1   ; 
- D 0 - I - 0x008A68 02:8A58: 00        .byte $00   ; 
- D 0 - I - 0x008A69 02:8A59: FD        .byte $FD   ; 
- - - - - - 0x008A6A 02:8A5A: FE        .byte $FE   ; 
- D 0 - I - 0x008A6B 02:8A5B: 30        .byte $30   ; <0>
- D 0 - I - 0x008A6C 02:8A5C: 02        .byte $02   ; 
- D 0 - I - 0x008A6D 02:8A5D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A6E 02:8A5E: 02        .byte $02   ; 
- D 0 - I - 0x008A6F 02:8A5F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A70 02:8A60: 02        .byte $02   ; 
- D 0 - I - 0x008A71 02:8A61: 33        .byte $33   ; <3>
- D 0 - I - 0x008A72 02:8A62: 02        .byte $02   ; 
- D 0 - I - 0x008A73 02:8A63: 37        .byte $37   ; <7>
- D 0 - I - 0x008A74 02:8A64: 02        .byte $02   ; 
- D 0 - I - 0x008A75 02:8A65: 33        .byte $33   ; <3>
- D 0 - I - 0x008A76 02:8A66: 02        .byte $02   ; 
- D 0 - I - 0x008A77 02:8A67: 30        .byte $30   ; <0>
- D 0 - I - 0x008A78 02:8A68: 02        .byte $02   ; 
- D 0 - I - 0x008A79 02:8A69: 33        .byte $33   ; <3>
- D 0 - I - 0x008A7A 02:8A6A: 02        .byte $02   ; 
- D 0 - I - 0x008A7B 02:8A6B: 30        .byte $30   ; <0>
- D 0 - I - 0x008A7C 02:8A6C: 02        .byte $02   ; 
- D 0 - I - 0x008A7D 02:8A6D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A7E 02:8A6E: 02        .byte $02   ; 
- D 0 - I - 0x008A7F 02:8A6F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A80 02:8A70: 02        .byte $02   ; 
- D 0 - I - 0x008A81 02:8A71: 33        .byte $33   ; <3>
- D 0 - I - 0x008A82 02:8A72: 02        .byte $02   ; 
- D 0 - I - 0x008A83 02:8A73: 36        .byte $36   ; <6>
- D 0 - I - 0x008A84 02:8A74: 02        .byte $02   ; 
- D 0 - I - 0x008A85 02:8A75: 33        .byte $33   ; <3>
- D 0 - I - 0x008A86 02:8A76: 02        .byte $02   ; 
- D 0 - I - 0x008A87 02:8A77: 30        .byte $30   ; <0>
- D 0 - I - 0x008A88 02:8A78: 02        .byte $02   ; 
- D 0 - I - 0x008A89 02:8A79: 33        .byte $33   ; <3>
- D 0 - I - 0x008A8A 02:8A7A: 02        .byte $02   ; 
- D 0 - I - 0x008A8B 02:8A7B: B1        .byte $B1   ; 
- D 0 - I - 0x008A8C 02:8A7C: 00        .byte $00   ; 
- D 0 - I - 0x008A8D 02:8A7D: FD        .byte $FD   ; 
- - - - - - 0x008A8E 02:8A7E: FE        .byte $FE   ; 
- D 0 - I - 0x008A8F 02:8A7F: 2A        .byte $2A   ; 
- D 0 - I - 0x008A90 02:8A80: 02        .byte $02   ; 
- D 0 - I - 0x008A91 02:8A81: 33        .byte $33   ; <3>
- D 0 - I - 0x008A92 02:8A82: 02        .byte $02   ; 
- D 0 - I - 0x008A93 02:8A83: 2A        .byte $2A   ; 
- D 0 - I - 0x008A94 02:8A84: 02        .byte $02   ; 
- D 0 - I - 0x008A95 02:8A85: 33        .byte $33   ; <3>
- D 0 - I - 0x008A96 02:8A86: 02        .byte $02   ; 
- D 0 - I - 0x008A97 02:8A87: 37        .byte $37   ; <7>
- D 0 - I - 0x008A98 02:8A88: 02        .byte $02   ; 
- D 0 - I - 0x008A99 02:8A89: 33        .byte $33   ; <3>
- D 0 - I - 0x008A9A 02:8A8A: 02        .byte $02   ; 
- D 0 - I - 0x008A9B 02:8A8B: 2A        .byte $2A   ; 
- D 0 - I - 0x008A9C 02:8A8C: 02        .byte $02   ; 
- D 0 - I - 0x008A9D 02:8A8D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A9E 02:8A8E: 02        .byte $02   ; 
- D 0 - I - 0x008A9F 02:8A8F: B1        .byte $B1   ; 
- D 0 - I - 0x008AA0 02:8A90: 00        .byte $00   ; 
- D 0 - I - 0x008AA1 02:8A91: FD        .byte $FD   ; 
- - - - - - 0x008AA2 02:8A92: FE        .byte $FE   ; 
- D 0 - I - 0x008AA3 02:8A93: 2B        .byte $2B   ; 
- D 0 - I - 0x008AA4 02:8A94: 02        .byte $02   ; 
- D 0 - I - 0x008AA5 02:8A95: 32        .byte $32   ; <2>
- D 0 - I - 0x008AA6 02:8A96: 02        .byte $02   ; 
- D 0 - I - 0x008AA7 02:8A97: 2B        .byte $2B   ; 
- D 0 - I - 0x008AA8 02:8A98: 02        .byte $02   ; 
- D 0 - I - 0x008AA9 02:8A99: 32        .byte $32   ; <2>
- D 0 - I - 0x008AAA 02:8A9A: 02        .byte $02   ; 
- D 0 - I - 0x008AAB 02:8A9B: 37        .byte $37   ; <7>
- D 0 - I - 0x008AAC 02:8A9C: 02        .byte $02   ; 
- D 0 - I - 0x008AAD 02:8A9D: 32        .byte $32   ; <2>
- D 0 - I - 0x008AAE 02:8A9E: 02        .byte $02   ; 
- D 0 - I - 0x008AAF 02:8A9F: 2B        .byte $2B   ; 
- D 0 - I - 0x008AB0 02:8AA0: 02        .byte $02   ; 
- D 0 - I - 0x008AB1 02:8AA1: 32        .byte $32   ; <2>
- D 0 - I - 0x008AB2 02:8AA2: 02        .byte $02   ; 
- D 0 - I - 0x008AB3 02:8AA3: B1        .byte $B1   ; 
- D 0 - I - 0x008AB4 02:8AA4: 00        .byte $00   ; 
- D 0 - I - 0x008AB5 02:8AA5: B0        .byte $B0   ; 
- D 0 - I - 0x008AB6 02:8AA6: 02        .byte $02   ; 
- - - - - - 0x008AB7 02:8AA7: FF        .byte $FF   ; 

loc_track45:
- D 0 - I - 0x008AB8 02:8AA8: 0A        .byte $0A   ; 
- D 0 - I - 0x008AB9 02:8AA9: 00        .byte $00   ; 
- D 0 - I - 0x008ABA 02:8AAA: 17        .byte $17   ; 
- D 0 - I - 0x008ABB 02:8AAB: 00        .byte $00   ; 
- D 0 - I - 0x008ABC 02:8AAC: FD        .byte $FD   ; 
- - - - - - 0x008ABD 02:8AAD: FE        .byte $FE   ; 
- D 0 - I - 0x008ABE 02:8AAE: 45        .byte $45   ; <E>
- D 0 - I - 0x008ABF 02:8AAF: 01        .byte $01   ; 
- D 0 - I - 0x008AC0 02:8AB0: 41        .byte $41   ; <A>
- D 0 - I - 0x008AC1 02:8AB1: 01        .byte $01   ; 
- D 0 - I - 0x008AC2 02:8AB2: 3A        .byte $3A   ; 
- D 0 - I - 0x008AC3 02:8AB3: 01        .byte $01   ; 
- D 0 - I - 0x008AC4 02:8AB4: 36        .byte $36   ; <6>
- D 0 - I - 0x008AC5 02:8AB5: 01        .byte $01   ; 
- D 0 - I - 0x008AC6 02:8AB6: B3        .byte $B3   ; 
- D 0 - I - 0x008AC7 02:8AB7: 00        .byte $00   ; 
- D 0 - I - 0x008AC8 02:8AB8: FD        .byte $FD   ; 
- - - - - - 0x008AC9 02:8AB9: FE        .byte $FE   ; 
- D 0 - I - 0x008ACA 02:8ABA: 47        .byte $47   ; <G>
- D 0 - I - 0x008ACB 02:8ABB: 01        .byte $01   ; 
- D 0 - I - 0x008ACC 02:8ABC: 43        .byte $43   ; <C>
- D 0 - I - 0x008ACD 02:8ABD: 01        .byte $01   ; 
- D 0 - I - 0x008ACE 02:8ABE: 40        .byte $40   ; 
- D 0 - I - 0x008ACF 02:8ABF: 01        .byte $01   ; 
- D 0 - I - 0x008AD0 02:8AC0: 38        .byte $38   ; <8>
- D 0 - I - 0x008AD1 02:8AC1: 01        .byte $01   ; 
- D 0 - I - 0x008AD2 02:8AC2: B3        .byte $B3   ; 
- D 0 - I - 0x008AD3 02:8AC3: 00        .byte $00   ; 
- D 0 - I - 0x008AD4 02:8AC4: B0        .byte $B0   ; 
- D 0 - I - 0x008AD5 02:8AC5: 02        .byte $02   ; 
- - - - - - 0x008AD6 02:8AC6: FF        .byte $FF   ; 

loc_track46:
- D 0 - I - 0x008AD7 02:8AC7: 05        .byte $05   ; 
- D 0 - I - 0x008AD8 02:8AC8: 02        .byte $02   ; 
- D 0 - I - 0x008AD9 02:8AC9: 00        .byte $00   ; 
- D 0 - I - 0x008ADA 02:8ACA: 00        .byte $00   ; 
- D 0 - I - 0x008ADB 02:8ACB: 32        .byte $32   ; <2>
- D 0 - I - 0x008ADC 02:8ACC: 02        .byte $02   ; 
- D 0 - I - 0x008ADD 02:8ACD: 42        .byte $42   ; <B>
- D 0 - I - 0x008ADE 02:8ACE: 01        .byte $01   ; 
- D 0 - I - 0x008ADF 02:8ACF: 42        .byte $42   ; <B>
- D 0 - I - 0x008AE0 02:8AD0: 01        .byte $01   ; 
- D 0 - I - 0x008AE1 02:8AD1: B7        .byte $B7   ; 
- D 0 - I - 0x008AE2 02:8AD2: 02        .byte $02   ; 
- D 0 - I - 0x008AE3 02:8AD3: 34        .byte $34   ; <4>
- D 0 - I - 0x008AE4 02:8AD4: 02        .byte $02   ; 
- D 0 - I - 0x008AE5 02:8AD5: 44        .byte $44   ; <D>
- D 0 - I - 0x008AE6 02:8AD6: 01        .byte $01   ; 
- D 0 - I - 0x008AE7 02:8AD7: 44        .byte $44   ; <D>
- D 0 - I - 0x008AE8 02:8AD8: 01        .byte $01   ; 
- D 0 - I - 0x008AE9 02:8AD9: B7        .byte $B7   ; 
- D 0 - I - 0x008AEA 02:8ADA: 06        .byte $06   ; 
- D 0 - I - 0x008AEB 02:8ADB: 30        .byte $30   ; <0>
- D 0 - I - 0x008AEC 02:8ADC: 02        .byte $02   ; 
- D 0 - I - 0x008AED 02:8ADD: 40        .byte $40   ; 
- D 0 - I - 0x008AEE 02:8ADE: 01        .byte $01   ; 
- D 0 - I - 0x008AEF 02:8ADF: 40        .byte $40   ; 
- D 0 - I - 0x008AF0 02:8AE0: 01        .byte $01   ; 
- D 0 - I - 0x008AF1 02:8AE1: B7        .byte $B7   ; 
- D 0 - I - 0x008AF2 02:8AE2: 0A        .byte $0A   ; 
- D 0 - I - 0x008AF3 02:8AE3: 29        .byte $29   ; 
- D 0 - I - 0x008AF4 02:8AE4: 02        .byte $02   ; 
- D 0 - I - 0x008AF5 02:8AE5: 39        .byte $39   ; <9>
- D 0 - I - 0x008AF6 02:8AE6: 01        .byte $01   ; 
- D 0 - I - 0x008AF7 02:8AE7: 39        .byte $39   ; <9>
- D 0 - I - 0x008AF8 02:8AE8: 01        .byte $01   ; 
- D 0 - I - 0x008AF9 02:8AE9: B1        .byte $B1   ; 
- D 0 - I - 0x008AFA 02:8AEA: 0E        .byte $0E   ; 
- D 0 - I - 0x008AFB 02:8AEB: 27        .byte $27   ; 
- D 0 - I - 0x008AFC 02:8AEC: 02        .byte $02   ; 
- D 0 - I - 0x008AFD 02:8AED: 37        .byte $37   ; <7>
- D 0 - I - 0x008AFE 02:8AEE: 01        .byte $01   ; 
- D 0 - I - 0x008AFF 02:8AEF: 37        .byte $37   ; <7>
- D 0 - I - 0x008B00 02:8AF0: 01        .byte $01   ; 
- D 0 - I - 0x008B01 02:8AF1: 25        .byte $25   ; 
- D 0 - I - 0x008B02 02:8AF2: 02        .byte $02   ; 
- D 0 - I - 0x008B03 02:8AF3: 35        .byte $35   ; <5>
- D 0 - I - 0x008B04 02:8AF4: 01        .byte $01   ; 
- D 0 - I - 0x008B05 02:8AF5: 35        .byte $35   ; <5>
- D 0 - I - 0x008B06 02:8AF6: 01        .byte $01   ; 
- D 0 - I - 0x008B07 02:8AF7: 24        .byte $24   ; 
- D 0 - I - 0x008B08 02:8AF8: 02        .byte $02   ; 
- D 0 - I - 0x008B09 02:8AF9: 34        .byte $34   ; <4>
- D 0 - I - 0x008B0A 02:8AFA: 01        .byte $01   ; 
- D 0 - I - 0x008B0B 02:8AFB: 34        .byte $34   ; <4>
- D 0 - I - 0x008B0C 02:8AFC: 01        .byte $01   ; 
- D 0 - I - 0x008B0D 02:8AFD: B3        .byte $B3   ; 
- D 0 - I - 0x008B0E 02:8AFE: 18        .byte $18   ; 
- D 0 - I - 0x008B0F 02:8AFF: 32        .byte $32   ; <2>
- D 0 - I - 0x008B10 02:8B00: 02        .byte $02   ; 
- D 0 - I - 0x008B11 02:8B01: 42        .byte $42   ; <B>
- D 0 - I - 0x008B12 02:8B02: 01        .byte $01   ; 
- D 0 - I - 0x008B13 02:8B03: 42        .byte $42   ; <B>
- D 0 - I - 0x008B14 02:8B04: 01        .byte $01   ; 
- D 0 - I - 0x008B15 02:8B05: B7        .byte $B7   ; 
- D 0 - I - 0x008B16 02:8B06: 1C        .byte $1C   ; 
- D 0 - I - 0x008B17 02:8B07: 34        .byte $34   ; <4>
- D 0 - I - 0x008B18 02:8B08: 02        .byte $02   ; 
- D 0 - I - 0x008B19 02:8B09: 44        .byte $44   ; <D>
- D 0 - I - 0x008B1A 02:8B0A: 01        .byte $01   ; 
- D 0 - I - 0x008B1B 02:8B0B: 44        .byte $44   ; <D>
- D 0 - I - 0x008B1C 02:8B0C: 01        .byte $01   ; 
- D 0 - I - 0x008B1D 02:8B0D: B7        .byte $B7   ; 
- D 0 - I - 0x008B1E 02:8B0E: 20        .byte $20   ; 
- D 0 - I - 0x008B1F 02:8B0F: 27        .byte $27   ; 
- D 0 - I - 0x008B20 02:8B10: 02        .byte $02   ; 
- D 0 - I - 0x008B21 02:8B11: 37        .byte $37   ; <7>
- D 0 - I - 0x008B22 02:8B12: 01        .byte $01   ; 
- D 0 - I - 0x008B23 02:8B13: 37        .byte $37   ; <7>
- D 0 - I - 0x008B24 02:8B14: 01        .byte $01   ; 
- D 0 - I - 0x008B25 02:8B15: B3        .byte $B3   ; 
- D 0 - I - 0x008B26 02:8B16: 24        .byte $24   ; 
- D 0 - I - 0x008B27 02:8B17: 30        .byte $30   ; <0>
- D 0 - I - 0x008B28 02:8B18: 02        .byte $02   ; 
- D 0 - I - 0x008B29 02:8B19: 40        .byte $40   ; 
- D 0 - I - 0x008B2A 02:8B1A: 01        .byte $01   ; 
- D 0 - I - 0x008B2B 02:8B1B: 40        .byte $40   ; 
- D 0 - I - 0x008B2C 02:8B1C: 01        .byte $01   ; 
- D 0 - I - 0x008B2D 02:8B1D: B3        .byte $B3   ; 
- D 0 - I - 0x008B2E 02:8B1E: 28        .byte $28   ; 
- D 0 - I - 0x008B2F 02:8B1F: 32        .byte $32   ; <2>
- D 0 - I - 0x008B30 02:8B20: 02        .byte $02   ; 
- D 0 - I - 0x008B31 02:8B21: 42        .byte $42   ; <B>
- D 0 - I - 0x008B32 02:8B22: 01        .byte $01   ; 
- D 0 - I - 0x008B33 02:8B23: 42        .byte $42   ; <B>
- D 0 - I - 0x008B34 02:8B24: 01        .byte $01   ; 
- D 0 - I - 0x008B35 02:8B25: B3        .byte $B3   ; 
- D 0 - I - 0x008B36 02:8B26: 2C        .byte $2C   ; 
- D 0 - I - 0x008B37 02:8B27: 1F        .byte $1F   ; 
- D 0 - I - 0x008B38 02:8B28: 02        .byte $02   ; 
- D 0 - I - 0x008B39 02:8B29: A0        .byte $A0   ; 
- D 0 - I - 0x008B3A 02:8B2A: 04        .byte $04   ; 
- D 0 - I - 0x008B3B 02:8B2B: A2        .byte $A2   ; 
- D 0 - I - 0x008B3C 02:8B2C: 01        .byte $01   ; 
- D 0 - I - 0x008B3D 02:8B2D: 22        .byte $22   ; 
- D 0 - I - 0x008B3E 02:8B2E: 02        .byte $02   ; 
- D 0 - I - 0x008B3F 02:8B2F: 20        .byte $20   ; 
- D 0 - I - 0x008B40 02:8B30: 04        .byte $04   ; 
- D 0 - I - 0x008B41 02:8B31: 22        .byte $22   ; 
- D 0 - I - 0x008B42 02:8B32: 02        .byte $02   ; 
- D 0 - I - 0x008B43 02:8B33: 24        .byte $24   ; 
- D 0 - I - 0x008B44 02:8B34: 06        .byte $06   ; 
- D 0 - I - 0x008B45 02:8B35: A0        .byte $A0   ; 
- D 0 - I - 0x008B46 02:8B36: 00        .byte $00   ; 
- D 0 - I - 0x008B47 02:8B37: A2        .byte $A2   ; 
- D 0 - I - 0x008B48 02:8B38: 02        .byte $02   ; 
- D 0 - I - 0x008B49 02:8B39: B0        .byte $B0   ; 
- D 0 - I - 0x008B4A 02:8B3A: 02        .byte $02   ; 
- - - - - - 0x008B4B 02:8B3B: FF        .byte $FF   ; 

loc_track47:
- D 0 - I - 0x008B4C 02:8B3C: 06        .byte $06   ; 
- D 0 - I - 0x008B4D 02:8B3D: 02        .byte $02   ; 
- D 0 - I - 0x008B4E 02:8B3E: 09        .byte $09   ; 
- D 0 - I - 0x008B4F 02:8B3F: 00        .byte $00   ; 
- D 0 - I - 0x008B50 02:8B40: 32        .byte $32   ; <2>
- D 0 - I - 0x008B51 02:8B41: 06        .byte $06   ; 
- D 0 - I - 0x008B52 02:8B42: 37        .byte $37   ; <7>
- D 0 - I - 0x008B53 02:8B43: 06        .byte $06   ; 
- D 0 - I - 0x008B54 02:8B44: 30        .byte $30   ; <0>
- D 0 - I - 0x008B55 02:8B45: 02        .byte $02   ; 
- D 0 - I - 0x008B56 02:8B46: 32        .byte $32   ; <2>
- D 0 - I - 0x008B57 02:8B47: 02        .byte $02   ; 
- D 0 - I - 0x008B58 02:8B48: 2B        .byte $2B   ; 
- D 0 - I - 0x008B59 02:8B49: 06        .byte $06   ; 
- D 0 - I - 0x008B5A 02:8B4A: 37        .byte $37   ; <7>
- D 0 - I - 0x008B5B 02:8B4B: 06        .byte $06   ; 
- D 0 - I - 0x008B5C 02:8B4C: 29        .byte $29   ; 
- D 0 - I - 0x008B5D 02:8B4D: 02        .byte $02   ; 
- D 0 - I - 0x008B5E 02:8B4E: 2B        .byte $2B   ; 
- D 0 - I - 0x008B5F 02:8B4F: 02        .byte $02   ; 
- D 0 - I - 0x008B60 02:8B50: 30        .byte $30   ; <0>
- D 0 - I - 0x008B61 02:8B51: 06        .byte $06   ; 
- D 0 - I - 0x008B62 02:8B52: 2B        .byte $2B   ; 
- D 0 - I - 0x008B63 02:8B53: 06        .byte $06   ; 
- D 0 - I - 0x008B64 02:8B54: 28        .byte $28   ; 
- D 0 - I - 0x008B65 02:8B55: 04        .byte $04   ; 
- D 0 - I - 0x008B66 02:8B56: 29        .byte $29   ; 
- D 0 - I - 0x008B67 02:8B57: 0C        .byte $0C   ; 
- D 0 - I - 0x008B68 02:8B58: 2B        .byte $2B   ; 
- D 0 - I - 0x008B69 02:8B59: 02        .byte $02   ; 
- D 0 - I - 0x008B6A 02:8B5A: 30        .byte $30   ; <0>
- D 0 - I - 0x008B6B 02:8B5B: 02        .byte $02   ; 
- D 0 - I - 0x008B6C 02:8B5C: B0        .byte $B0   ; 
- D 0 - I - 0x008B6D 02:8B5D: 02        .byte $02   ; 
- - - - - - 0x008B6E 02:8B5E: FF        .byte $FF   ; 

loc_track48:
- D 0 - I - 0x008B6F 02:8B5F: 35        .byte $35   ; <5>
- D 0 - I - 0x008B70 02:8B60: 00        .byte $00   ; 
- D 0 - I - 0x008B71 02:8B61: 00        .byte $00   ; 
- D 0 - I - 0x008B72 02:8B62: 00        .byte $00   ; 
- D 0 - I - 0x008B73 02:8B63: FD        .byte $FD   ; 
- - - - - - 0x008B74 02:8B64: FE        .byte $FE   ; 
- D 0 - I - 0x008B75 02:8B65: 02        .byte $02   ; 
- D 0 - I - 0x008B76 02:8B66: 02        .byte $02   ; 
- D 0 - I - 0x008B77 02:8B67: 02        .byte $02   ; 
- D 0 - I - 0x008B78 02:8B68: 02        .byte $02   ; 
- D 0 - I - 0x008B79 02:8B69: 0A        .byte $0A   ; 
- D 0 - I - 0x008B7A 02:8B6A: 02        .byte $02   ; 
- D 0 - I - 0x008B7B 02:8B6B: 02        .byte $02   ; 
- D 0 - I - 0x008B7C 02:8B6C: 02        .byte $02   ; 
- D 0 - I - 0x008B7D 02:8B6D: 02        .byte $02   ; 
- D 0 - I - 0x008B7E 02:8B6E: 02        .byte $02   ; 
- D 0 - I - 0x008B7F 02:8B6F: 02        .byte $02   ; 
- D 0 - I - 0x008B80 02:8B70: 02        .byte $02   ; 
- D 0 - I - 0x008B81 02:8B71: 0A        .byte $0A   ; 
- D 0 - I - 0x008B82 02:8B72: 02        .byte $02   ; 
- D 0 - I - 0x008B83 02:8B73: 02        .byte $02   ; 
- D 0 - I - 0x008B84 02:8B74: 02        .byte $02   ; 
- D 0 - I - 0x008B85 02:8B75: B7        .byte $B7   ; 
- D 0 - I - 0x008B86 02:8B76: 00        .byte $00   ; 
- D 0 - I - 0x008B87 02:8B77: 0E        .byte $0E   ; 
- D 0 - I - 0x008B88 02:8B78: 02        .byte $02   ; 
- D 0 - I - 0x008B89 02:8B79: 02        .byte $02   ; 
- D 0 - I - 0x008B8A 02:8B7A: 02        .byte $02   ; 
- D 0 - I - 0x008B8B 02:8B7B: 0A        .byte $0A   ; 
- D 0 - I - 0x008B8C 02:8B7C: 02        .byte $02   ; 
- D 0 - I - 0x008B8D 02:8B7D: 02        .byte $02   ; 
- D 0 - I - 0x008B8E 02:8B7E: 02        .byte $02   ; 
- D 0 - I - 0x008B8F 02:8B7F: BF        .byte $BF   ; 
- D 0 - I - 0x008B90 02:8B80: 00        .byte $00   ; 
- - - - - - 0x008B91 02:8B81: B0        .byte $B0   ; 
- - - - - - 0x008B92 02:8B82: 02        .byte $02   ; 

loc_track49:
- D 0 - I - 0x008B93 02:8B83: 34        .byte $34   ; <4>
- D 0 - I - 0x008B94 02:8B84: 00        .byte $00   ; 
- D 0 - I - 0x008B95 02:8B85: 00        .byte $00   ; 
- D 0 - I - 0x008B96 02:8B86: 00        .byte $00   ; 
- D 0 - I - 0x008B97 02:8B87: 02        .byte $02   ; 
- D 0 - I - 0x008B98 02:8B88: 02        .byte $02   ; 
- D 0 - I - 0x008B99 02:8B89: 02        .byte $02   ; 
- D 0 - I - 0x008B9A 02:8B8A: 02        .byte $02   ; 
- D 0 - I - 0x008B9B 02:8B8B: 0A        .byte $0A   ; 
- D 0 - I - 0x008B9C 02:8B8C: 02        .byte $02   ; 
- D 0 - I - 0x008B9D 02:8B8D: 02        .byte $02   ; 
- D 0 - I - 0x008B9E 02:8B8E: 02        .byte $02   ; 
- D 0 - I - 0x008B9F 02:8B8F: B0        .byte $B0   ; 
- D 0 - I - 0x008BA0 02:8B90: 02        .byte $02   ; 
- - - - - - 0x008BA1 02:8B91: FF        .byte $FF   ; 

loc_track4A:
- D 0 - I - 0x008BA2 02:8B92: 3A        .byte $3A   ; 
- D 0 - I - 0x008BA3 02:8B93: 00        .byte $00   ; 
- D 0 - I - 0x008BA4 02:8B94: 00        .byte $00   ; 
- D 0 - I - 0x008BA5 02:8B95: 00        .byte $00   ; 
- D 0 - I - 0x008BA6 02:8B96: 1F        .byte $1F   ; 
- D 0 - I - 0x008BA7 02:8B97: 04        .byte $04   ; 
- D 0 - I - 0x008BA8 02:8B98: B0        .byte $B0   ; 
- D 0 - I - 0x008BA9 02:8B99: 02        .byte $02   ; 
- - - - - - 0x008BAA 02:8B9A: FF        .byte $FF   ; 

loc_track4B:
- D 0 - I - 0x008BAB 02:8B9B: 35        .byte $35   ; <5>
- D 0 - I - 0x008BAC 02:8B9C: 00        .byte $00   ; 
- D 0 - I - 0x008BAD 02:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x008BAE 02:8B9E: 00        .byte $00   ; 
- D 0 - I - 0x008BAF 02:8B9F: 0E        .byte $0E   ; 
- D 0 - I - 0x008BB0 02:8BA0: 02        .byte $02   ; 
- D 0 - I - 0x008BB1 02:8BA1: 02        .byte $02   ; 
- D 0 - I - 0x008BB2 02:8BA2: 02        .byte $02   ; 
- D 0 - I - 0x008BB3 02:8BA3: 0A        .byte $0A   ; 
- D 0 - I - 0x008BB4 02:8BA4: 02        .byte $02   ; 
- D 0 - I - 0x008BB5 02:8BA5: A0        .byte $A0   ; 
- D 0 - I - 0x008BB6 02:8BA6: 01        .byte $01   ; 
- D 0 - I - 0x008BB7 02:8BA7: 02        .byte $02   ; 
- D 0 - I - 0x008BB8 02:8BA8: 04        .byte $04   ; 
- D 0 - I - 0x008BB9 02:8BA9: 02        .byte $02   ; 
- D 0 - I - 0x008BBA 02:8BAA: 04        .byte $04   ; 
- D 0 - I - 0x008BBB 02:8BAB: 02        .byte $02   ; 
- D 0 - I - 0x008BBC 02:8BAC: 02        .byte $02   ; 
- D 0 - I - 0x008BBD 02:8BAD: A0        .byte $A0   ; 
- D 0 - I - 0x008BBE 02:8BAE: 00        .byte $00   ; 
- D 0 - I - 0x008BBF 02:8BAF: B0        .byte $B0   ; 
- D 0 - I - 0x008BC0 02:8BB0: 02        .byte $02   ; 
- - - - - - 0x008BC1 02:8BB1: FF        .byte $FF   ; 

loc_track4C:
- D 0 - I - 0x008BC2 02:8BB2: 34        .byte $34   ; <4>
- D 0 - I - 0x008BC3 02:8BB3: 00        .byte $00   ; 
- D 0 - I - 0x008BC4 02:8BB4: 00        .byte $00   ; 
- D 0 - I - 0x008BC5 02:8BB5: 00        .byte $00   ; 
- D 0 - I - 0x008BC6 02:8BB6: 01        .byte $01   ; 
- D 0 - I - 0x008BC7 02:8BB7: 02        .byte $02   ; 
- D 0 - I - 0x008BC8 02:8BB8: 01        .byte $01   ; 
- D 0 - I - 0x008BC9 02:8BB9: 02        .byte $02   ; 
- D 0 - I - 0x008BCA 02:8BBA: 07        .byte $07   ; 
- D 0 - I - 0x008BCB 02:8BBB: 02        .byte $02   ; 
- D 0 - I - 0x008BCC 02:8BBC: 01        .byte $01   ; 
- D 0 - I - 0x008BCD 02:8BBD: 02        .byte $02   ; 
- D 0 - I - 0x008BCE 02:8BBE: 01        .byte $01   ; 
- D 0 - I - 0x008BCF 02:8BBF: 02        .byte $02   ; 
- D 0 - I - 0x008BD0 02:8BC0: 07        .byte $07   ; 
- D 0 - I - 0x008BD1 02:8BC1: 02        .byte $02   ; 
- D 0 - I - 0x008BD2 02:8BC2: 01        .byte $01   ; 
- D 0 - I - 0x008BD3 02:8BC3: 02        .byte $02   ; 
- D 0 - I - 0x008BD4 02:8BC4: 07        .byte $07   ; 
- D 0 - I - 0x008BD5 02:8BC5: 02        .byte $02   ; 
- D 0 - I - 0x008BD6 02:8BC6: B0        .byte $B0   ; 
- D 0 - I - 0x008BD7 02:8BC7: 02        .byte $02   ; 
- - - - - - 0x008BD8 02:8BC8: FF        .byte $FF   ; 

loc_track4D:
- D 0 - I - 0x008BD9 02:8BC9: 03        .byte $03   ; 
- D 0 - I - 0x008BDA 02:8BCA: 00        .byte $00   ; 
- D 0 - I - 0x008BDB 02:8BCB: 00        .byte $00   ; 
- D 0 - I - 0x008BDC 02:8BCC: 00        .byte $00   ; 
- D 0 - I - 0x008BDD 02:8BCD: 0A        .byte $0A   ; 
- D 0 - I - 0x008BDE 02:8BCE: 04        .byte $04   ; 
- D 0 - I - 0x008BDF 02:8BCF: 0A        .byte $0A   ; 
- D 0 - I - 0x008BE0 02:8BD0: 04        .byte $04   ; 
- D 0 - I - 0x008BE1 02:8BD1: FD        .byte $FD   ; 
- - - - - - 0x008BE2 02:8BD2: FE        .byte $FE   ; 
- D 0 - I - 0x008BE3 02:8BD3: A0        .byte $A0   ; 
- D 0 - I - 0x008BE4 02:8BD4: 01        .byte $01   ; 
- D 0 - I - 0x008BE5 02:8BD5: 02        .byte $02   ; 
- D 0 - I - 0x008BE6 02:8BD6: 04        .byte $04   ; 
- D 0 - I - 0x008BE7 02:8BD7: 01        .byte $01   ; 
- D 0 - I - 0x008BE8 02:8BD8: 02        .byte $02   ; 
- D 0 - I - 0x008BE9 02:8BD9: 01        .byte $01   ; 
- D 0 - I - 0x008BEA 02:8BDA: 02        .byte $02   ; 
- D 0 - I - 0x008BEB 02:8BDB: B2        .byte $B2   ; 
- D 0 - I - 0x008BEC 02:8BDC: 00        .byte $00   ; 
- D 0 - I - 0x008BED 02:8BDD: B0        .byte $B0   ; 
- D 0 - I - 0x008BEE 02:8BDE: 02        .byte $02   ; 
- - - - - - 0x008BEF 02:8BDF: FF        .byte $FF   ; 

loc_track4E:
- D 0 - I - 0x008BF0 02:8BE0: 35        .byte $35   ; <5>
- D 0 - I - 0x008BF1 02:8BE1: 00        .byte $00   ; 
- D 0 - I - 0x008BF2 02:8BE2: 00        .byte $00   ; 
- D 0 - I - 0x008BF3 02:8BE3: 00        .byte $00   ; 
- D 0 - I - 0x008BF4 02:8BE4: 01        .byte $01   ; 
- D 0 - I - 0x008BF5 02:8BE5: 02        .byte $02   ; 
- D 0 - I - 0x008BF6 02:8BE6: 01        .byte $01   ; 
- D 0 - I - 0x008BF7 02:8BE7: 02        .byte $02   ; 
- D 0 - I - 0x008BF8 02:8BE8: 09        .byte $09   ; 
- D 0 - I - 0x008BF9 02:8BE9: 02        .byte $02   ; 
- D 0 - I - 0x008BFA 02:8BEA: 01        .byte $01   ; 
- D 0 - I - 0x008BFB 02:8BEB: 02        .byte $02   ; 
- D 0 - I - 0x008BFC 02:8BEC: B0        .byte $B0   ; 
- D 0 - I - 0x008BFD 02:8BED: 02        .byte $02   ; 
- - - - - - 0x008BFE 02:8BEE: FF        .byte $FF   ; 

loc_track4F:
- D 0 - I - 0x008BFF 02:8BEF: 36        .byte $36   ; <6>
- D 0 - I - 0x008C00 02:8BF0: 00        .byte $00   ; 
- D 0 - I - 0x008C01 02:8BF1: 00        .byte $00   ; 
- D 0 - I - 0x008C02 02:8BF2: 00        .byte $00   ; 
- D 0 - I - 0x008C03 02:8BF3: 0A        .byte $0A   ; 
- D 0 - I - 0x008C04 02:8BF4: 02        .byte $02   ; 
- D 0 - I - 0x008C05 02:8BF5: 01        .byte $01   ; 
- D 0 - I - 0x008C06 02:8BF6: 02        .byte $02   ; 
- D 0 - I - 0x008C07 02:8BF7: 06        .byte $06   ; 
- D 0 - I - 0x008C08 02:8BF8: 02        .byte $02   ; 
- D 0 - I - 0x008C09 02:8BF9: 01        .byte $01   ; 
- D 0 - I - 0x008C0A 02:8BFA: 02        .byte $02   ; 
- D 0 - I - 0x008C0B 02:8BFB: B0        .byte $B0   ; 
- D 0 - I - 0x008C0C 02:8BFC: 02        .byte $02   ; 
- - - - - - 0x008C0D 02:8BFD: FF        .byte $FF   ; 

loc_track50:
- D 0 - I - 0x008C0E 02:8BFE: 00        .byte $00   ;
- D 0 - I - 0x008C0F 02:8BFF: 02        .byte $02   ; 
- D 0 - I - 0x008C10 02:8C00: 02        .byte $02   ; 
- D 0 - I - 0x008C11 02:8C01: 00        .byte $00   ; 

; 0x8C02 in 0x8000-0x9FFF
- D 0 - I - 0x008C12 02:8C02: 20        .byte $20   ; 
- D 0 - I - 0x008C13 02:8C03: 02        .byte $02   ; 
- D 0 - I - 0x008C14 02:8C04: 1F        .byte $1F   ; 
- D 0 - I - 0x008C15 02:8C05: 02        .byte $02   ; 
- D 0 - I - 0x008C16 02:8C06: FF        .byte $FF   ; 

loc_track51:
- D 0 - I - 0x008C17 02:8C07: 00        .byte $00   ; 
- D 0 - I - 0x008C18 02:8C08: 02        .byte $02   ; 
- D 0 - I - 0x008C19 02:8C09: 01        .byte $01   ; 
- D 0 - I - 0x008C1A 02:8C0A: 81        .byte $81   ; 
- D 0 - I - 0x008C1B 02:8C0B: 20        .byte $20   ; 
- D 0 - I - 0x008C1C 02:8C0C: 06        .byte $06   ; 
- D 0 - I - 0x008C1D 02:8C0D: A1        .byte $A1   ; 
- D 0 - I - 0x008C1E 02:8C0E: 95        .byte $95   ; 
- D 0 - I - 0x008C1F 02:8C0F: A0        .byte $A0   ; 
- D 0 - I - 0x008C20 02:8C10: 1F        .byte $1F   ; 
- D 0 - I - 0x008C21 02:8C11: EF        .byte $EF   ; 
- D 0 - I - 0x008C22 02:8C12: 01        .byte $01   ; 
- D 0 - I - 0x008C23 02:8C13: 20        .byte $20   ; 
- D 0 - I - 0x008C24 02:8C14: 20        .byte $20   ; 
- D 0 - I - 0x008C25 02:8C15: FF        .byte $FF   ; 

loc_track52:
- D 0 - I - 0x008C26 02:8C16: 30        .byte $30   ; <0>
- D 0 - I - 0x008C27 02:8C17: 00        .byte $00   ; 
- D 0 - I - 0x008C28 02:8C18: 04        .byte $04   ; 
- D 0 - I - 0x008C29 02:8C19: 00        .byte $00   ; 
- D 0 - I - 0x008C2A 02:8C1A: 0E        .byte $0E   ; 
- D 0 - I - 0x008C2B 02:8C1B: 06        .byte $06   ; 
- D 0 - I - 0x008C2C 02:8C1C: EF        .byte $EF   ; 
- D 0 - I - 0x008C2D 02:8C1D: 05        .byte $05   ; 
- D 0 - I - 0x008C2E 02:8C1E: 0A        .byte $0A   ; 
- D 0 - I - 0x008C2F 02:8C1F: 20        .byte $20   ; 
- D 0 - I - 0x008C30 02:8C20: FF        .byte $FF   ; 

loc_track53:
- - - - - - 0x008C31 02:8C21: 07        .byte $07   ; 
- - - - - - 0x008C32 02:8C22: 01        .byte $01   ; 
- - - - - - 0x008C33 02:8C23: 0F        .byte $0F   ; 
- - - - - - 0x008C34 02:8C24: 00        .byte $00   ; 
- - - - - - 0x008C35 02:8C25: A3        .byte $A3   ; 
- - - - - - 0x008C36 02:8C26: 10        .byte $10   ; 
- - - - - - 0x008C37 02:8C27: 30        .byte $30   ; <0>
- - - - - - 0x008C38 02:8C28: 06        .byte $06   ; 
- - - - - - 0x008C39 02:8C29: 32        .byte $32   ; <2>
- - - - - - 0x008C3A 02:8C2A: 02        .byte $02   ; 
- - - - - - 0x008C3B 02:8C2B: 30        .byte $30   ; <0>
- - - - - - 0x008C3C 02:8C2C: 04        .byte $04   ; 
- - - - - - 0x008C3D 02:8C2D: 2B        .byte $2B   ; 
- - - - - - 0x008C3E 02:8C2E: 04        .byte $04   ; 
- - - - - - 0x008C3F 02:8C2F: 29        .byte $29   ; 
- - - - - - 0x008C40 02:8C30: 04        .byte $04   ; 
- - - - - - 0x008C41 02:8C31: 27        .byte $27   ; 
- - - - - - 0x008C42 02:8C32: 02        .byte $02   ; 
- - - - - - 0x008C43 02:8C33: 29        .byte $29   ; 
- - - - - - 0x008C44 02:8C34: 18        .byte $18   ; 
- - - - - - 0x008C45 02:8C35: FF        .byte $FF   ; 

loc_track54:
- - - - - - 0x008C46 02:8C36: 07        .byte $07   ; 
- - - - - - 0x008C47 02:8C37: 60        .byte $60   ; 
- - - - - - 0x008C48 02:8C38: 00        .byte $00   ; 
- - - - - - 0x008C49 02:8C39: 00        .byte $00   ; 
- - - - - - 0x008C4A 02:8C3A: 25        .byte $25   ; 
- - - - - - 0x008C4B 02:8C3B: 04        .byte $04   ; 
- - - - - - 0x008C4C 02:8C3C: 30        .byte $30   ; <0>
- - - - - - 0x008C4D 02:8C3D: 04        .byte $04   ; 
- - - - - - 0x008C4E 02:8C3E: 35        .byte $35   ; <5>
- - - - - - 0x008C4F 02:8C3F: 04        .byte $04   ; 
- - - - - - 0x008C50 02:8C40: 27        .byte $27   ; 
- - - - - - 0x008C51 02:8C41: 04        .byte $04   ; 
- - - - - - 0x008C52 02:8C42: 32        .byte $32   ; <2>
- - - - - - 0x008C53 02:8C43: 04        .byte $04   ; 
- - - - - - 0x008C54 02:8C44: 37        .byte $37   ; <7>
- - - - - - 0x008C55 02:8C45: 04        .byte $04   ; 
- - - - - - 0x008C56 02:8C46: 29        .byte $29   ; 
- - - - - - 0x008C57 02:8C47: 04        .byte $04   ; 
- - - - - - 0x008C58 02:8C48: 24        .byte $24   ; 
- - - - - - 0x008C59 02:8C49: 04        .byte $04   ; 
- - - - - - 0x008C5A 02:8C4A: 20        .byte $20   ; 
- - - - - - 0x008C5B 02:8C4B: 04        .byte $04   ; 
- - - - - - 0x008C5C 02:8C4C: 19        .byte $19   ; 
- - - - - - 0x008C5D 02:8C4D: 08        .byte $08   ; 
- - - - - - 0x008C5E 02:8C4E: FF        .byte $FF   ; 

loc_track55:
- D 0 - I - 0x008C5F 02:8C4F: 03        .byte $03   ; 
- D 0 - I - 0x008C60 02:8C50: 02        .byte $02   ; 
- D 0 - I - 0x008C61 02:8C51: 1C        .byte $1C   ; 
- D 0 - I - 0x008C62 02:8C52: 00        .byte $00   ; 
- D 0 - I - 0x008C63 02:8C53: A3        .byte $A3   ; 
- D 0 - I - 0x008C64 02:8C54: 21        .byte $21   ; 
- D 0 - I - 0x008C65 02:8C55: 1F        .byte $1F   ; 
- D 0 - I - 0x008C66 02:8C56: 04        .byte $04   ; 
- D 0 - I - 0x008C67 02:8C57: 25        .byte $25   ; 
- D 0 - I - 0x008C68 02:8C58: 04        .byte $04   ; 
- D 0 - I - 0x008C69 02:8C59: 27        .byte $27   ; 
- D 0 - I - 0x008C6A 02:8C5A: 04        .byte $04   ; 
- D 0 - I - 0x008C6B 02:8C5B: 28        .byte $28   ; 
- D 0 - I - 0x008C6C 02:8C5C: 04        .byte $04   ; 
- D 0 - I - 0x008C6D 02:8C5D: 2B        .byte $2B   ; 
- D 0 - I - 0x008C6E 02:8C5E: 04        .byte $04   ; 
- D 0 - I - 0x008C6F 02:8C5F: 30        .byte $30   ; <0>
- D 0 - I - 0x008C70 02:8C60: 04        .byte $04   ; 
- D 0 - I - 0x008C71 02:8C61: 32        .byte $32   ; <2>
- D 0 - I - 0x008C72 02:8C62: 04        .byte $04   ; 
- D 0 - I - 0x008C73 02:8C63: 30        .byte $30   ; <0>
- D 0 - I - 0x008C74 02:8C64: 08        .byte $08   ; 
- D 0 - I - 0x008C75 02:8C65: 2B        .byte $2B   ; 
- D 0 - I - 0x008C76 02:8C66: 04        .byte $04   ; 
- D 0 - I - 0x008C77 02:8C67: 28        .byte $28   ; 
- D 0 - I - 0x008C78 02:8C68: 04        .byte $04   ; 
- D 0 - I - 0x008C79 02:8C69: 27        .byte $27   ; 
- D 0 - I - 0x008C7A 02:8C6A: 08        .byte $08   ; 
- D 0 - I - 0x008C7B 02:8C6B: 25        .byte $25   ; 
- D 0 - I - 0x008C7C 02:8C6C: 04        .byte $04   ; 
- D 0 - I - 0x008C7D 02:8C6D: 27        .byte $27   ; 
- D 0 - I - 0x008C7E 02:8C6E: 04        .byte $04   ; 
- D 0 - I - 0x008C7F 02:8C6F: 28        .byte $28   ; 
- D 0 - I - 0x008C80 02:8C70: 04        .byte $04   ; 
- D 0 - I - 0x008C81 02:8C71: 1F        .byte $1F   ; 
- D 0 - I - 0x008C82 02:8C72: 04        .byte $04   ; 
- D 0 - I - 0x008C83 02:8C73: FD        .byte $FD   ; 
- - - - - - 0x008C84 02:8C74: FE        .byte $FE   ; 
- D 0 - I - 0x008C85 02:8C75: 2B        .byte $2B   ; 
- D 0 - I - 0x008C86 02:8C76: 04        .byte $04   ; 
- D 0 - I - 0x008C87 02:8C77: 28        .byte $28   ; 
- D 0 - I - 0x008C88 02:8C78: 04        .byte $04   ; 
- D 0 - I - 0x008C89 02:8C79: 27        .byte $27   ; 
- D 0 - I - 0x008C8A 02:8C7A: 04        .byte $04   ; 
- D 0 - I - 0x008C8B 02:8C7B: 25        .byte $25   ; 
- D 0 - I - 0x008C8C 02:8C7C: 04        .byte $04   ; 
- D 0 - I - 0x008C8D 02:8C7D: B2        .byte $B2   ; 
- D 0 - I - 0x008C8E 02:8C7E: 00        .byte $00   ; 
- D 0 - I - 0x008C8F 02:8C7F: 27        .byte $27   ; 
- D 0 - I - 0x008C90 02:8C80: 04        .byte $04   ; 
- D 0 - I - 0x008C91 02:8C81: 28        .byte $28   ; 
- D 0 - I - 0x008C92 02:8C82: 04        .byte $04   ; 
- D 0 - I - 0x008C93 02:8C83: 27        .byte $27   ; 
- D 0 - I - 0x008C94 02:8C84: 04        .byte $04   ; 
- D 0 - I - 0x008C95 02:8C85: B0        .byte $B0   ; 
- D 0 - I - 0x008C96 02:8C86: 02        .byte $02   ; 
- - - - - - 0x008C97 02:8C87: FF        .byte $FF   ; 

loc_track56:
- D 0 - I - 0x008C98 02:8C88: 13        .byte $13   ; 
- D 0 - I - 0x008C99 02:8C89: 02        .byte $02   ; 
- D 0 - I - 0x008C9A 02:8C8A: 15        .byte $15   ; 
- D 0 - I - 0x008C9B 02:8C8B: 00        .byte $00   ; 
- D 0 - I - 0x008C9C 02:8C8C: 1F        .byte $1F   ; 
- D 0 - I - 0x008C9D 02:8C8D: 03        .byte $03   ; 
- D 0 - I - 0x008C9E 02:8C8E: 1F        .byte $1F   ; 
- D 0 - I - 0x008C9F 02:8C8F: 04        .byte $04   ; 
- D 0 - I - 0x008CA0 02:8C90: 25        .byte $25   ; 
- D 0 - I - 0x008CA1 02:8C91: 04        .byte $04   ; 
- D 0 - I - 0x008CA2 02:8C92: 27        .byte $27   ; 
- D 0 - I - 0x008CA3 02:8C93: 04        .byte $04   ; 
- D 0 - I - 0x008CA4 02:8C94: 28        .byte $28   ; 
- D 0 - I - 0x008CA5 02:8C95: 04        .byte $04   ; 
- D 0 - I - 0x008CA6 02:8C96: 2B        .byte $2B   ; 
- D 0 - I - 0x008CA7 02:8C97: 04        .byte $04   ; 
- D 0 - I - 0x008CA8 02:8C98: 30        .byte $30   ; <0>
- D 0 - I - 0x008CA9 02:8C99: 04        .byte $04   ; 
- D 0 - I - 0x008CAA 02:8C9A: 32        .byte $32   ; <2>
- D 0 - I - 0x008CAB 02:8C9B: 04        .byte $04   ; 
- D 0 - I - 0x008CAC 02:8C9C: 30        .byte $30   ; <0>
- D 0 - I - 0x008CAD 02:8C9D: 08        .byte $08   ; 
- D 0 - I - 0x008CAE 02:8C9E: 2B        .byte $2B   ; 
- D 0 - I - 0x008CAF 02:8C9F: 04        .byte $04   ; 
- D 0 - I - 0x008CB0 02:8CA0: 28        .byte $28   ; 
- D 0 - I - 0x008CB1 02:8CA1: 04        .byte $04   ; 
- D 0 - I - 0x008CB2 02:8CA2: 27        .byte $27   ; 
- D 0 - I - 0x008CB3 02:8CA3: 08        .byte $08   ; 
- D 0 - I - 0x008CB4 02:8CA4: 25        .byte $25   ; 
- D 0 - I - 0x008CB5 02:8CA5: 04        .byte $04   ; 
- D 0 - I - 0x008CB6 02:8CA6: 27        .byte $27   ; 
- D 0 - I - 0x008CB7 02:8CA7: 04        .byte $04   ; 
- D 0 - I - 0x008CB8 02:8CA8: 28        .byte $28   ; 
- D 0 - I - 0x008CB9 02:8CA9: 04        .byte $04   ; 
- D 0 - I - 0x008CBA 02:8CAA: 1F        .byte $1F   ; 
- D 0 - I - 0x008CBB 02:8CAB: 04        .byte $04   ; 
- D 0 - I - 0x008CBC 02:8CAC: FD        .byte $FD   ; 
- - - - - - 0x008CBD 02:8CAD: FE        .byte $FE   ; 
- D 0 - I - 0x008CBE 02:8CAE: 2B        .byte $2B   ; 
- D 0 - I - 0x008CBF 02:8CAF: 04        .byte $04   ; 
- D 0 - I - 0x008CC0 02:8CB0: 28        .byte $28   ; 
- D 0 - I - 0x008CC1 02:8CB1: 04        .byte $04   ; 
- D 0 - I - 0x008CC2 02:8CB2: 27        .byte $27   ; 
- D 0 - I - 0x008CC3 02:8CB3: 04        .byte $04   ; 
- D 0 - I - 0x008CC4 02:8CB4: 25        .byte $25   ; 
- D 0 - I - 0x008CC5 02:8CB5: 04        .byte $04   ; 
- D 0 - I - 0x008CC6 02:8CB6: B2        .byte $B2   ; 
- D 0 - I - 0x008CC7 02:8CB7: 00        .byte $00   ; 
- D 0 - I - 0x008CC8 02:8CB8: 27        .byte $27   ; 
- D 0 - I - 0x008CC9 02:8CB9: 04        .byte $04   ; 
- D 0 - I - 0x008CCA 02:8CBA: 28        .byte $28   ; 
- D 0 - I - 0x008CCB 02:8CBB: 04        .byte $04   ; 
- D 0 - I - 0x008CCC 02:8CBC: 27        .byte $27   ; 
- D 0 - I - 0x008CCD 02:8CBD: 04        .byte $04   ; 
- D 0 - I - 0x008CCE 02:8CBE: B0        .byte $B0   ; 
- D 0 - I - 0x008CCF 02:8CBF: 03        .byte $03   ; 
- - - - - - 0x008CD0 02:8CC0: FF        .byte $FF   ; 

loc_track57:
- D 0 - I - 0x008CD1 02:8CC1: 23        .byte $23   ; 
- D 0 - I - 0x008CD2 02:8CC2: 7F        .byte $7F   ; 
- D 0 - I - 0x008CD3 02:8CC3: 00        .byte $00   ; 
- D 0 - I - 0x008CD4 02:8CC4: 00        .byte $00   ; 
- D 0 - I - 0x008CD5 02:8CC5: 15        .byte $15   ; 
- D 0 - I - 0x008CD6 02:8CC6: 08        .byte $08   ; 
- D 0 - I - 0x008CD7 02:8CC7: 25        .byte $25   ; 
- D 0 - I - 0x008CD8 02:8CC8: 08        .byte $08   ; 
- D 0 - I - 0x008CD9 02:8CC9: 15        .byte $15   ; 
- D 0 - I - 0x008CDA 02:8CCA: 08        .byte $08   ; 
- D 0 - I - 0x008CDB 02:8CCB: 25        .byte $25   ; 
- D 0 - I - 0x008CDC 02:8CCC: 08        .byte $08   ; 
- D 0 - I - 0x008CDD 02:8CCD: 17        .byte $17   ; 
- D 0 - I - 0x008CDE 02:8CCE: 08        .byte $08   ; 
- D 0 - I - 0x008CDF 02:8CCF: 27        .byte $27   ; 
- D 0 - I - 0x008CE0 02:8CD0: 08        .byte $08   ; 
- D 0 - I - 0x008CE1 02:8CD1: 17        .byte $17   ; 
- D 0 - I - 0x008CE2 02:8CD2: 08        .byte $08   ; 
- D 0 - I - 0x008CE3 02:8CD3: 27        .byte $27   ; 
- D 0 - I - 0x008CE4 02:8CD4: 08        .byte $08   ; 
- D 0 - I - 0x008CE5 02:8CD5: B0        .byte $B0   ; 
- D 0 - I - 0x008CE6 02:8CD6: 02        .byte $02   ; 
- - - - - - 0x008CE7 02:8CD7: FF        .byte $FF   ; 

loc_track58:
- - - - - - 0x008CE8 02:8CD8: FF        .byte $FF   ; 

loc_track59:
- - - - - - 0x008CE9 02:8CD9: FF        .byte $FF   ; 

loc_track5A:
- - - - - - 0x008CEA 02:8CDA: FF        .byte $FF   ; 

loc_track5F:
- - - - - - 0x008CEB 02:8CDB: 03        .byte $03   ; 
- - - - - - 0x008CEC 02:8CDC: 01        .byte $01   ; 
- - - - - - 0x008CED 02:8CDD: 1F        .byte $1F   ; 
- - - - - - 0x008CEE 02:8CDE: AA        .byte $AA   ; 
- - - - - - 0x008CEF 02:8CDF: EF        .byte $EF   ; 
- - - - - - 0x008CF0 02:8CE0: 01        .byte $01   ; 
- - - - - - 0x008CF1 02:8CE1: 20        .byte $20   ; 
- - - - - - 0x008CF2 02:8CE2: 04        .byte $04   ; 
- - - - - - 0x008CF3 02:8CE3: FD        .byte $FD   ; 
- - - - - - 0x008CF4 02:8CE4: FE        .byte $FE   ; 
- - - - - - 0x008CF5 02:8CE5: 20        .byte $20   ; 
- - - - - - 0x008CF6 02:8CE6: 02        .byte $02   ; 
- - - - - - 0x008CF7 02:8CE7: B7        .byte $B7   ; 
- - - - - - 0x008CF8 02:8CE8: 00        .byte $00   ; 
- - - - - - 0x008CF9 02:8CE9: FF        .byte $FF   ; 

loc_track60:
- D 0 - I - 0x008CFA 02:8CEA: 00        .byte $00   ; 
- D 0 - I - 0x008CFB 02:8CEB: 02        .byte $02   ; 
- D 0 - I - 0x008CFC 02:8CEC: 0F        .byte $0F   ; 
- D 0 - I - 0x008CFD 02:8CED: 8C        .byte $8C   ; 
- D 0 - I - 0x008CFE 02:8CEE: FD        .byte $FD   ; 
- - - - - - 0x008CFF 02:8CEF: FE        .byte $FE   ; 
- D 0 - I - 0x008D00 02:8CF0: 40        .byte $40   ; 
- D 0 - I - 0x008D01 02:8CF1: 02        .byte $02   ; 
- D 0 - I - 0x008D02 02:8CF2: BF        .byte $BF   ; 
- D 0 - I - 0x008D03 02:8CF3: 00        .byte $00   ; 
- D 0 - I - 0x008D04 02:8CF4: FF        .byte $FF   ; 

loc_track5B:
- D 0 - I - 0x008D05 02:8CF5: 07        .byte $07   ; 
- D 0 - I - 0x008D06 02:8CF6: 02        .byte $02   ; 
- D 0 - I - 0x008D07 02:8CF7: 0F        .byte $0F   ; 
- D 0 - I - 0x008D08 02:8CF8: 00        .byte $00   ; 
- D 0 - I - 0x008D09 02:8CF9: 27        .byte $27   ; 
- D 0 - I - 0x008D0A 02:8CFA: 06        .byte $06   ; 
- D 0 - I - 0x008D0B 02:8CFB: 37        .byte $37   ; <7>
- D 0 - I - 0x008D0C 02:8CFC: 02        .byte $02   ; 
- D 0 - I - 0x008D0D 02:8CFD: 35        .byte $35   ; <5>
- D 0 - I - 0x008D0E 02:8CFE: 02        .byte $02   ; 
- D 0 - I - 0x008D0F 02:8CFF: 34        .byte $34   ; <4>
- D 0 - I - 0x008D10 02:8D00: 02        .byte $02   ; 
- D 0 - I - 0x008D11 02:8D01: 32        .byte $32   ; <2>
- D 0 - I - 0x008D12 02:8D02: 02        .byte $02   ; 
- D 0 - I - 0x008D13 02:8D03: 30        .byte $30   ; <0>
- D 0 - I - 0x008D14 02:8D04: 02        .byte $02   ; 
- D 0 - I - 0x008D15 02:8D05: 32        .byte $32   ; <2>
- D 0 - I - 0x008D16 02:8D06: 02        .byte $02   ; 
- D 0 - I - 0x008D17 02:8D07: 34        .byte $34   ; <4>
- D 0 - I - 0x008D18 02:8D08: 01        .byte $01   ; 
- D 0 - I - 0x008D19 02:8D09: 30        .byte $30   ; <0>
- D 0 - I - 0x008D1A 02:8D0A: 0D        .byte $0D   ; 
- D 0 - I - 0x008D1B 02:8D0B: 32        .byte $32   ; <2>
- D 0 - I - 0x008D1C 02:8D0C: 02        .byte $02   ; 
- D 0 - I - 0x008D1D 02:8D0D: 34        .byte $34   ; <4>
- D 0 - I - 0x008D1E 02:8D0E: 01        .byte $01   ; 
- D 0 - I - 0x008D1F 02:8D0F: 30        .byte $30   ; <0>
- D 0 - I - 0x008D20 02:8D10: 03        .byte $03   ; 
- D 0 - I - 0x008D21 02:8D11: 37        .byte $37   ; <7>
- D 0 - I - 0x008D22 02:8D12: 02        .byte $02   ; 
- D 0 - I - 0x008D23 02:8D13: 35        .byte $35   ; <5>
- D 0 - I - 0x008D24 02:8D14: 02        .byte $02   ; 
- D 0 - I - 0x008D25 02:8D15: 34        .byte $34   ; <4>
- D 0 - I - 0x008D26 02:8D16: 02        .byte $02   ; 
- D 0 - I - 0x008D27 02:8D17: 32        .byte $32   ; <2>
- D 0 - I - 0x008D28 02:8D18: 02        .byte $02   ; 
- D 0 - I - 0x008D29 02:8D19: 30        .byte $30   ; <0>
- D 0 - I - 0x008D2A 02:8D1A: 02        .byte $02   ; 
- D 0 - I - 0x008D2B 02:8D1B: 32        .byte $32   ; <2>
- D 0 - I - 0x008D2C 02:8D1C: 02        .byte $02   ; 
- D 0 - I - 0x008D2D 02:8D1D: 34        .byte $34   ; <4>
- D 0 - I - 0x008D2E 02:8D1E: 02        .byte $02   ; 
- D 0 - I - 0x008D2F 02:8D1F: 35        .byte $35   ; <5>
- D 0 - I - 0x008D30 02:8D20: 02        .byte $02   ; 
- D 0 - I - 0x008D31 02:8D21: 40        .byte $40   ; 
- D 0 - I - 0x008D32 02:8D22: 02        .byte $02   ; 
- D 0 - I - 0x008D33 02:8D23: 3B        .byte $3B   ; 
- D 0 - I - 0x008D34 02:8D24: 04        .byte $04   ; 
- D 0 - I - 0x008D35 02:8D25: 37        .byte $37   ; <7>
- D 0 - I - 0x008D36 02:8D26: 04        .byte $04   ; 
- D 0 - I - 0x008D37 02:8D27: B0        .byte $B0   ; 
- D 0 - I - 0x008D38 02:8D28: 02        .byte $02   ; 
- - - - - - 0x008D39 02:8D29: FF        .byte $FF   ; 

loc_track5C:
- D 0 - I - 0x008D3A 02:8D2A: 07        .byte $07   ; 
- D 0 - I - 0x008D3B 02:8D2B: 00        .byte $00   ; 
- D 0 - I - 0x008D3C 02:8D2C: 00        .byte $00   ; 
- D 0 - I - 0x008D3D 02:8D2D: 00        .byte $00   ; 
- D 0 - I - 0x008D3E 02:8D2E: 1F        .byte $1F   ; 
- D 0 - I - 0x008D3F 02:8D2F: 01        .byte $01   ; 
- D 0 - I - 0x008D40 02:8D30: B0        .byte $B0   ; 
- D 0 - I - 0x008D41 02:8D31: 02        .byte $02   ; 
- - - - - - 0x008D42 02:8D32: FF        .byte $FF   ; 

loc_track5D:
- D 0 - I - 0x008D43 02:8D33: 07        .byte $07   ; 
- D 0 - I - 0x008D44 02:8D34: 00        .byte $00   ; 
- D 0 - I - 0x008D45 02:8D35: 20        .byte $20   ; 
- D 0 - I - 0x008D46 02:8D36: 00        .byte $00   ; 
- D 0 - I - 0x008D47 02:8D37: 20        .byte $20   ; 
- D 0 - I - 0x008D48 02:8D38: 06        .byte $06   ; 
- D 0 - I - 0x008D49 02:8D39: 20        .byte $20   ; 
- D 0 - I - 0x008D4A 02:8D3A: 02        .byte $02   ; 
- D 0 - I - 0x008D4B 02:8D3B: 1B        .byte $1B   ; 
- D 0 - I - 0x008D4C 02:8D3C: 06        .byte $06   ; 
- D 0 - I - 0x008D4D 02:8D3D: 1B        .byte $1B   ; 
- D 0 - I - 0x008D4E 02:8D3E: 02        .byte $02   ; 
- D 0 - I - 0x008D4F 02:8D3F: 19        .byte $19   ; 
- D 0 - I - 0x008D50 02:8D40: 06        .byte $06   ; 
- D 0 - I - 0x008D51 02:8D41: 19        .byte $19   ; 
- D 0 - I - 0x008D52 02:8D42: 02        .byte $02   ; 
- D 0 - I - 0x008D53 02:8D43: 17        .byte $17   ; 
- D 0 - I - 0x008D54 02:8D44: 06        .byte $06   ; 
- D 0 - I - 0x008D55 02:8D45: 17        .byte $17   ; 
- D 0 - I - 0x008D56 02:8D46: 02        .byte $02   ; 
- D 0 - I - 0x008D57 02:8D47: 25        .byte $25   ; 
- D 0 - I - 0x008D58 02:8D48: 06        .byte $06   ; 
- D 0 - I - 0x008D59 02:8D49: 25        .byte $25   ; 
- D 0 - I - 0x008D5A 02:8D4A: 02        .byte $02   ; 
- D 0 - I - 0x008D5B 02:8D4B: 24        .byte $24   ; 
- D 0 - I - 0x008D5C 02:8D4C: 06        .byte $06   ; 
- D 0 - I - 0x008D5D 02:8D4D: 24        .byte $24   ; 
- D 0 - I - 0x008D5E 02:8D4E: 02        .byte $02   ; 
- D 0 - I - 0x008D5F 02:8D4F: 22        .byte $22   ; 
- D 0 - I - 0x008D60 02:8D50: 06        .byte $06   ; 
- D 0 - I - 0x008D61 02:8D51: 22        .byte $22   ; 
- D 0 - I - 0x008D62 02:8D52: 02        .byte $02   ; 
- D 0 - I - 0x008D63 02:8D53: 27        .byte $27   ; 
- D 0 - I - 0x008D64 02:8D54: 06        .byte $06   ; 
- D 0 - I - 0x008D65 02:8D55: 27        .byte $27   ; 
- D 0 - I - 0x008D66 02:8D56: 02        .byte $02   ; 
- D 0 - I - 0x008D67 02:8D57: B0        .byte $B0   ; 
- D 0 - I - 0x008D68 02:8D58: 02        .byte $02   ; 
- - - - - - 0x008D69 02:8D59: FF        .byte $FF   ; 

loc_track5E:
- D 0 - I - 0x008D6A 02:8D5A: 37        .byte $37   ; <7>
- D 0 - I - 0x008D6B 02:8D5B: 00        .byte $00   ; 
- D 0 - I - 0x008D6C 02:8D5C: 00        .byte $00   ; 
- D 0 - I - 0x008D6D 02:8D5D: 00        .byte $00   ; 
- D 0 - I - 0x008D6E 02:8D5E: 1F        .byte $1F   ; 
- D 0 - I - 0x008D6F 02:8D5F: 04        .byte $04   ; 
- D 0 - I - 0x008D70 02:8D60: B0        .byte $B0   ; 
- D 0 - I - 0x008D71 02:8D61: 02        .byte $02   ; 
- - - - - - 0x008D72 02:8D62: FF        .byte $FF   ; 

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
C D 1 - - - 0x008D90 02:AD80: A9 00     LDA #$00
C - - - - - 0x008D92 02:AD82: 8D 01 04  STA ram_0401
C - - - - - 0x008D95 02:AD85: EE 06 04  INC v_sound_counter
; Sound row in 21 bytes each, starts with vSoundRowB_0
; 00 - 0th sound row
; 15 - 1st sound row
; 2A - 2nd sound row
; 3F - 3rd sound row
; 54 - 4th sound row
; 69 - 5th sound row
; 7E - 6th sound row
; 93 - 7th sound row
; X = {00,15,2A,3F,54,69,7E,93} , in the end - A8
bra_AD88_repeat:
C - - - - - 0x008D98 02:AD88: AA        TAX
C - - - - - 0x008D99 02:AD89: BD 11 04  LDA vSoundRowB_1,X    ;
C - - - - - 0x008D9C 02:AD8C: 29 03     AND #$03              ;
C - - - - - 0x008D9E 02:AD8E: 8D 02 04  STA ram_0402          ; puts the apu channel (0x00, 0x01, 0x02 or 0x03)
C - - - - - 0x008DA1 02:AD91: A8        TAY                   ; 0x00, 0x01, 0x02 or 0x03
C - - - - - 0x008DA2 02:AD92: B9 A6 B1  LDA tbl_B1A6,Y
C - - - - - 0x008DA5 02:AD95: 8D 03 04  STA ram_0403
C - - - - - 0x008DA8 02:AD98: BD 10 04  LDA vSoundRowB_0,X
C - - - - - 0x008DAB 02:AD9B: F0 5C     BEQ bra_ADF9_skip     ; If Register A == 0x00
C - - - - - 0x008DAD 02:AD9D: C9 FF     CMP #$FF
C - - - - - 0x008DAF 02:AD9F: F0 4F     BEQ bra_ADF0_next_row ; If Register A == 0xFF
C - - - - - 0x008DB1 02:ADA1: 20 3F B1  JSR sub_B13F
C - - - - - 0x008DB4 02:ADA4: 20 B4 B0  JSR sub_B0B4
C - - - - - 0x008DB7 02:ADA7: FE 1D 04  INC vSoundRowB_D,X
C - - - - - 0x008DBA 02:ADAA: BD 1D 04  LDA vSoundRowB_D,X
C - - - - - 0x008DBD 02:ADAD: DD 1C 04  CMP vSoundRowB_C,X
C - - - - - 0x008DC0 02:ADB0: 90 06     BCC bra_ADB8_skip
C - - - - - 0x008DC2 02:ADB2: BD 1C 04  LDA vSoundRowB_C,X
C - - - - - 0x008DC5 02:ADB5: 9D 1D 04  STA vSoundRowB_D,X
bra_ADB8_skip:
C - - - - - 0x008DC8 02:ADB8: DE 15 04  DEC vSoundRowB_5,X
C - - - - - 0x008DCB 02:ADBB: 10 18     BPL bra_ADD5_skip
C - - - - - 0x008DCD 02:ADBD: BD 14 04  LDA vSoundRowB_4,X
C - - - - - 0x008DD0 02:ADC0: 29 0F     AND #$0F
C - - - - - 0x008DD2 02:ADC2: 9D 15 04  STA vSoundRowB_5,X
C - - - - - 0x008DD5 02:ADC5: 20 FD B0  JSR sub_B0FD
C - - - - - 0x008DD8 02:ADC8: BD 24 04  LDA vSoundRowB_K,X
C - - - - - 0x008DDB 02:ADCB: F0 03     BEQ bra_ADD0_skip
C - - - - - 0x008DDD 02:ADCD: DE 24 04  DEC vSoundRowB_K,X
bra_ADD0_skip:
C - - - - - 0x008DE0 02:ADD0: DE 17 04  DEC vSoundRowB_7,X
C - - - - - 0x008DE3 02:ADD3: F0 06     BEQ bra_ADDB_skip
bra_ADD5_skip:
C - - - - - 0x008DE5 02:ADD5: 20 89 B0  JSR sub_B089
C - - - - - 0x008DE8 02:ADD8: 4C E4 AD  JMP loc_ADE4

bra_ADDB_skip:
loc_ADDB:
C D 1 - - - 0x008DEB 02:ADDB: BD 23 04  LDA vSoundRowB_J,X
C - - - - - 0x008DEE 02:ADDE: 9D 24 04  STA vSoundRowB_K,X
C - - - - - 0x008DF1 02:ADE1: 20 38 AE  JSR sub_AE38
loc_ADE4:
C D 1 - - - 0x008DF4 02:ADE4: AC 02 04  LDY ram_0402
C - - - - - 0x008DF7 02:ADE7: B9 9E B1  LDA tbl_apu_channel,Y
C - - - - - 0x008DFA 02:ADEA: 0D 01 04  ORA ram_0401
C - - - - - 0x008DFD 02:ADED: 8D 01 04  STA ram_0401
bra_ADF0_next_row:
C - - - - - 0x008E00 02:ADF0: 8A        TXA
C - - - - - 0x008E01 02:ADF1: 18        CLC
C - - - - - 0x008E02 02:ADF2: 69 15     ADC #$15             ; CONSTANT: Sound row step, step for X
C - - - - - 0x008E04 02:ADF4: C9 A8     CMP #$A8             ; $15+$15+$15+$15+$15+$15+$15+$15=$A8, 8 iterations for sound row
C - - - - - 0x008E06 02:ADF6: D0 90     BNE bra_AD88_repeat  ; If Register A != 0xA8
C - - - - - 0x008E08 02:ADF8: 60        RTS

bra_ADF9_skip:
C - - - - - 0x008E09 02:ADF9: BD 12 04  LDA vSoundRowB_2,X   ;
C - - - - - 0x008E0C 02:ADFC: 85 FE     STA ram_00FE         ; Low address (the current track)
C - - - - - 0x008E0E 02:ADFE: BD 13 04  LDA vSoundRowB_3,X   ;
C - - - - - 0x008E11 02:AE01: 85 FF     STA ram_00FF         ; High address  (the current track)
C - - - - - 0x008E13 02:AE03: A0 00     LDY #$00         ; to 1 byte of N
C - - - - - 0x008E15 02:AE05: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E17 02:AE07: 29 0F     AND #$0F
C - - - - - 0x008E19 02:AE09: 9D 14 04  STA vSoundRowB_4,X
C - - - - - 0x008E1C 02:AE0C: 9D 15 04  STA vSoundRowB_5,X
C - - - - - 0x008E1F 02:AE0F: C8        INY              ; to 2 byte of N
C - - - - - 0x008E20 02:AE10: 20 6F B0  JSR sub_B06F
C - - - - - 0x008E23 02:AE13: C8        INY              ; to 3 byte of N
C - - - - - 0x008E24 02:AE14: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E26 02:AE16: 0D 04 04  ORA ram_0404
C - - - - - 0x008E29 02:AE19: 9D 16 04  STA vSoundRowB_6,X
C - - - - - 0x008E2C 02:AE1C: C8        INY              ; to 4 byte of N
C - - - - - 0x008E2D 02:AE1D: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E2F 02:AE1F: 9D 18 04  STA vSoundRowB_8,X
C - - - - - 0x008E32 02:AE22: A9 00     LDA #$00
C - - - - - 0x008E34 02:AE24: 9D 19 04  STA vSoundRowB_9,X
C - - - - - 0x008E37 02:AE27: 9D 1A 04  STA vSoundRowB_A,X
C - - - - - 0x008E3A 02:AE2A: 9D 1B 04  STA vSoundRowB_B,X
C - - - - - 0x008E3D 02:AE2D: 9D 1E 04  STA vSoundRowB_E,X
C - - - - - 0x008E40 02:AE30: A9 02     LDA #$02         ; CONSTANT - ???
C - - - - - 0x008E42 02:AE32: 9D 10 04  STA vSoundRowB_0,X
C - - - - - 0x008E45 02:AE35: 4C DB AD  JMP loc_ADDB

sub_AE38:
loc_AE38:
C D 1 - - - 0x008E48 02:AE38: A0 00     LDY #$00       ; to 1 byte of N
C - - - - - 0x008E4A 02:AE3A: 84 FF     STY ram_00FF
C - - - - - 0x008E4C 02:AE3C: BD 10 04  LDA vSoundRowB_0,X
C - - - - - 0x008E4F 02:AE3F: 0A        ASL
C - - - - - 0x008E50 02:AE40: 26 FF     ROL ram_00FF
C - - - - - 0x008E52 02:AE42: 7D 12 04  ADC vSoundRowB_2,X
C - - - - - 0x008E55 02:AE45: 85 FE     STA ram_00FE
C - - - - - 0x008E57 02:AE47: BD 13 04  LDA vSoundRowB_3,X
C - - - - - 0x008E5A 02:AE4A: 65 FF     ADC ram_00FF
C - - - - - 0x008E5C 02:AE4C: 85 FF     STA ram_00FF
C - - - - - 0x008E5E 02:AE4E: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008E60 02:AE50: FE 10 04  INC vSoundRowB_0,X
C - - - - - 0x008E63 02:AE53: C8        INY
C - - - - - 0x008E64 02:AE54: C9 F0     CMP #$F0     
C - - - - - 0x008E66 02:AE56: B0 1A     BCS bra_AE72 ; If Register A >= 0xF0
C - - - - - 0x008E68 02:AE58: C9 E0     CMP #$E0
C - - - - - 0x008E6A 02:AE5A: B0 2D     BCS bra_AE89 ; If Register A >= 0xE0
C - - - - - 0x008E6C 02:AE5C: C9 D0     CMP #$D0
C - - - - - 0x008E6E 02:AE5E: B0 33     BCS bra_AE93 ; If Register A >= 0xD0
C - - - - - 0x008E70 02:AE60: C9 C0     CMP #$C0
C - - - - - 0x008E72 02:AE62: B0 44     BCS bra_AEA8 ; If Register A >= 0xC0
C - - - - - 0x008E74 02:AE64: C9 B0     CMP #$B0
C - - - - - 0x008E76 02:AE66: B0 5F     BCS bra_AEC7 ; If Register A >= 0xB0
C - - - - - 0x008E78 02:AE68: C9 A0     CMP #$A0
C - - - - - 0x008E7A 02:AE6A: 90 03     BCC bra_AE6F ; If Register A < 0xA0
C - - - - - 0x008E7C 02:AE6C: 4C F5 AE  JMP loc_AEF5

bra_AE6F:
C - - - - - 0x008E7F 02:AE6F: 4C B7 AF  JMP loc_AFB7

bra_AE72:
C - - - - - 0x008E82 02:AE72: C9 FD     CMP #$FD
C - - - - - 0x008E84 02:AE74: D0 09     BNE bra_AE7F
C - - - - - 0x008E86 02:AE76: BD 10 04  LDA vSoundRowB_0,X
C - - - - - 0x008E89 02:AE79: 9D 22 04  STA vSoundRowB_I,X
bra_AE7C_repeat:
C - - - - - 0x008E8C 02:AE7C: 4C 38 AE  JMP loc_AE38

bra_AE7F:
C - - - - - 0x008E8F 02:AE7F: C9 FF     CMP #$FF
C - - - - - 0x008E91 02:AE81: D0 F9     BNE bra_AE7C_repeat
C - - - - - 0x008E93 02:AE83: 9D 10 04  STA vSoundRowB_0,X
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
C - - - - - 0x008EA8 02:AE98: 30 0B     BMI bra_AEA5
C - - - - - 0x008EAA 02:AE9A: 9D 1E 04  STA vSoundRowB_E,X
C - - - - - 0x008EAD 02:AE9D: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008EAF 02:AE9F: 9D 1F 04  STA vSoundRowB_F,X
C - - - - - 0x008EB2 02:AEA2: 9D 20 04  STA vSoundRowB_G,X
bra_AEA5:
C - - - - - 0x008EB5 02:AEA5: 4C 38 AE  JMP loc_AE38

bra_AEA8:
C - - - - - 0x008EB8 02:AEA8: 29 0F     AND #$0F
C - - - - - 0x008EBA 02:AEAA: 8D 04 04  STA ram_0404
C - - - - - 0x008EBD 02:AEAD: 2C 03 04  BIT ram_0403
C - - - - - 0x008EC0 02:AEB0: 30 12     BMI bra_AEC4
C - - - - - 0x008EC2 02:AEB2: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008EC5 02:AEB5: 29 10     AND #$10
C - - - - - 0x008EC7 02:AEB7: F0 0B     BEQ bra_AEC4
C - - - - - 0x008EC9 02:AEB9: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008ECB 02:AEBB: 9D 1C 04  STA vSoundRowB_C,X
C - - - - - 0x008ECE 02:AEBE: AD 04 04  LDA ram_0404
C - - - - - 0x008ED1 02:AEC1: 9D 1B 04  STA vSoundRowB_B,X
bra_AEC4:
C - - - - - 0x008ED4 02:AEC4: 4C 38 AE  JMP loc_AE38

bra_AEC7:
C - - - - - 0x008ED7 02:AEC7: 29 0F     AND #$0F
C - - - - - 0x008ED9 02:AEC9: F0 1D     BEQ bra_AEE8
C - - - - - 0x008EDB 02:AECB: 48        PHA
C - - - - - 0x008EDC 02:AECC: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008EDE 02:AECE: D0 0D     BNE bra_AEDD
C - - - - - 0x008EE0 02:AED0: 68        PLA
C - - - - - 0x008EE1 02:AED1: DE 19 04  DEC vSoundRowB_9,X
C - - - - - 0x008EE4 02:AED4: F0 1C     BEQ bra_AEF2
C - - - - - 0x008EE6 02:AED6: 10 10     BPL bra_AEE8
C - - - - - 0x008EE8 02:AED8: 9D 19 04  STA vSoundRowB_9,X
C - - - - - 0x008EEB 02:AEDB: 30 0B     BMI bra_AEE8
bra_AEDD:
C - - - - - 0x008EED 02:AEDD: 68        PLA
C - - - - - 0x008EEE 02:AEDE: DE 1A 04  DEC vSoundRowB_A,X
C - - - - - 0x008EF1 02:AEE1: F0 0F     BEQ bra_AEF2
C - - - - - 0x008EF3 02:AEE3: 10 03     BPL bra_AEE8
C - - - - - 0x008EF5 02:AEE5: 9D 1A 04  STA vSoundRowB_A,X
bra_AEE8:
C - - - - - 0x008EF8 02:AEE8: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008EFA 02:AEEA: D0 03     BNE bra_AEEF
C - - - - - 0x008EFC 02:AEEC: BD 22 04  LDA vSoundRowB_I,X
bra_AEEF:
C - - - - - 0x008EFF 02:AEEF: 9D 10 04  STA vSoundRowB_0,X
bra_AEF2:
C - - - - - 0x008F02 02:AEF2: 4C 38 AE  JMP loc_AE38

loc_AEF5:
C D 1 - - - 0x008F05 02:AEF5: D0 0F     BNE bra_AF06
C - - - - - 0x008F07 02:AEF7: 2C 03 04  BIT ram_0403
C - - - - - 0x008F0A 02:AEFA: 30 13     BMI bra_AF0F
C - - - - - 0x008F0C 02:AEFC: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008F0F 02:AEFF: 29 C0     AND #$C0
C - - - - - 0x008F11 02:AF01: 11 FE     ORA (ram_00FE),Y
C - - - - - 0x008F13 02:AF03: 4C 23 AF  JMP loc_AF23

bra_AF06:
C - - - - - 0x008F16 02:AF06: C9 A1     CMP #$A1
C - - - - - 0x008F18 02:AF08: D0 08     BNE bra_AF12
C - - - - - 0x008F1A 02:AF0A: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x008F1C 02:AF0C: 9D 18 04  STA vSoundRowB_8,X
bra_AF0F:
C - - - - - 0x008F1F 02:AF0F: 4C 38 AE  JMP loc_AE38

bra_AF12:
C - - - - - 0x008F22 02:AF12: C9 A2     CMP #$A2
C - - - - - 0x008F24 02:AF14: D0 13     BNE bra_AF29
C - - - - - 0x008F26 02:AF16: 20 6F B0  JSR sub_B06F
C - - - - - 0x008F29 02:AF19: B0 08     BCS bra_AF23
C - - - - - 0x008F2B 02:AF1B: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x008F2E 02:AF1E: 29 1F     AND #$1F
C - - - - - 0x008F30 02:AF20: 0D 04 04  ORA ram_0404
bra_AF23:
loc_AF23:
C D 1 - - - 0x008F33 02:AF23: 9D 16 04  STA vSoundRowB_6,X
C - - - - - 0x008F36 02:AF26: 4C 38 AE  JMP loc_AE38

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
C - - - - - 0x008F4E 02:AF3E: 0D 02 04  ORA ram_0402
C - - - - - 0x008F51 02:AF41: 09 80     ORA #$80
C - - - - - 0x008F53 02:AF43: 9D 11 04  STA vSoundRowB_1,X
C - - - - - 0x008F56 02:AF46: 4C 38 AE  JMP loc_AE38

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

loc_AFB7:
C D 1 - - - 0x008FC7 02:AFB7: 2C 03 04  BIT ram_0403
C - - - - - 0x008FCA 02:AFBA: 70 7F     BVS bra_B03B ; If 6th bit is set
C - - - - - 0x008FCC 02:AFBC: 48        PHA
C - - - - - 0x008FCD 02:AFBD: 29 0F     AND #$0F
C - - - - - 0x008FCF 02:AFBF: C9 0C     CMP #$0C
C - - - - - 0x008FD1 02:AFC1: 90 03     BCC bra_AFC6 ; If Register A < 0x0C
C - - - - - 0x008FD3 02:AFC3: 4C 49 B0  JMP loc_B049

bra_AFC6:
C - - - - - 0x008FD6 02:AFC6: 0A        ASL
C - - - - - 0x008FD7 02:AFC7: A8        TAY
C - - - - - 0x008FD8 02:AFC8: BD 14 04  LDA vSoundRowB_4,X
C - - - - - 0x008FDB 02:AFCB: 10 05     BPL bra_AFD2_skip
- - - - - - 0x008FDD 02:AFCD: 98        .byte $98   ; 
- - - - - - 0x008FDE 02:AFCE: 18        .byte $18   ; 
- - - - - - 0x008FDF 02:AFCF: 69        .byte $69   ; <i>
- - - - - - 0x008FE0 02:AFD0: 18        .byte $18   ; 
- - - - - - 0x008FE1 02:AFD1: A8        .byte $A8   ; 
bra_AFD2_skip:
C - - - - - 0x008FE2 02:AFD2: B9 6E B1  LDA tbl_B16E,Y
C - - - - - 0x008FE5 02:AFD5: 8D 04 04  STA ram_0404
C - - - - - 0x008FE8 02:AFD8: B9 6F B1  LDA tbl_B16E + 1,Y
C - - - - - 0x008FEB 02:AFDB: 8D 05 04  STA ram_0405
C - - - - - 0x008FEE 02:AFDE: 68        PLA
C - - - - - 0x008FEF 02:AFDF: 29 F0     AND #$F0
C - - - - - 0x008FF1 02:AFE1: F0 0E     BEQ bra_AFF1 ; If Register A == 0
C - - - - - 0x008FF3 02:AFE3: 4A        LSR
C - - - - - 0x008FF4 02:AFE4: 4A        LSR
C - - - - - 0x008FF5 02:AFE5: 4A        LSR
C - - - - - 0x008FF6 02:AFE6: 4A        LSR
C - - - - - 0x008FF7 02:AFE7: A8        TAY
bra_AFE8_repeat:
C - - - - - 0x008FF8 02:AFE8: 4E 05 04  LSR ram_0405
C - - - - - 0x008FFB 02:AFEB: 6E 04 04  ROR ram_0404
C - - - - - 0x008FFE 02:AFEE: 88        DEY
C - - - - - 0x008FFF 02:AFEF: D0 F7     BNE bra_AFE8_repeat ; If Register Y != 0
bra_AFF1:
C - - - - - 0x009001 02:AFF1: A0 01     LDY #$01 ; to 2 byte of N
C - - - - - 0x009003 02:AFF3: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009005 02:AFF5: 9D 17 04  STA vSoundRowB_7,X
C - - - - - 0x009008 02:AFF8: A9 00     LDA #$00
C - - - - - 0x00900A 02:AFFA: 9D 1D 04  STA vSoundRowB_D,X
C - - - - - 0x00900D 02:AFFD: 20 61 B0  JSR sub_B061
C - - - - - 0x009010 02:B000: B9 9E B1  LDA tbl_apu_channel,Y
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
C - - - - - 0x00902E 02:B01E: 99 02 40  STA $4002,Y    ; assign a evelope (pulse channel)
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
C - - - - - 0x009047 02:B037: 99 03 40  STA $4003,Y ; assign a sweep (pulse channel)
C - - - - - 0x00904A 02:B03A: 60        RTS

bra_B03B:
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
C - - - - - 0x00905E 02:B04E: 9D 17 04  STA vSoundRowB_7,X
loc_B051:
C D 1 - - - 0x009061 02:B051: 20 61 B0  JSR sub_B061
C - - - - - 0x009064 02:B054: B9 A2 B1  LDA tbl_B1A2,Y
C - - - - - 0x009067 02:B057: 2D 00 04  AND ram_0400
C - - - - - 0x00906A 02:B05A: 8D 15 40  STA APU_STATUS
C - - - - - 0x00906D 02:B05D: 8D 00 04  STA ram_0400
C - - - - - 0x009070 02:B060: 60        RTS

sub_B061:
C - - - - - 0x009071 02:B061: AC 02 04  LDY ram_0402
C - - - - - 0x009074 02:B064: B9 9E B1  LDA tbl_apu_channel,Y
C - - - - - 0x009077 02:B067: 2C 01 04  BIT ram_0401
C - - - - - 0x00907A 02:B06A: F0 02     BEQ bra_B06E_RTS ; If Register A AND ram_0401 == 0
C - - - - - 0x00907C 02:B06C: 68        PLA
C - - - - - 0x00907D 02:B06D: 68        PLA
bra_B06E_RTS:
C - - - - - 0x00907E 02:B06E: 60        RTS

sub_B06F:
C - - - - - 0x00907F 02:B06F: 2C 03 04  BIT ram_0403
C - - - - - 0x009082 02:B072: 30 0C     BMI bra_B080
C - - - - - 0x009084 02:B074: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009086 02:B076: 6A        ROR
C - - - - - 0x009087 02:B077: 6A        ROR
C - - - - - 0x009088 02:B078: 6A        ROR
C - - - - - 0x009089 02:B079: 29 C0     AND #$C0
C - - - - - 0x00908B 02:B07B: 8D 04 04  STA ram_0404
C - - - - - 0x00908E 02:B07E: 18        CLC
C - - - - - 0x00908F 02:B07F: 60        RTS

bra_B080:
C - - - - - 0x009090 02:B080: B1 FE     LDA (ram_00FE),Y
C - - - - - 0x009092 02:B082: 29 7F     AND #$7F
C - - - - - 0x009094 02:B084: 8D 04 04  STA ram_0404
C - - - - - 0x009097 02:B087: 38        SEC
C - - - - - 0x009098 02:B088: 60        RTS

sub_B089:
C - - - - - 0x009099 02:B089: 20 61 B0  JSR sub_B061
sub_B08C:
C - - - - - 0x00909C 02:B08C: C0 02     CPY #$02
C - - - - - 0x00909E 02:B08E: F0 15     BEQ bra_B0A5_skip ; If Register Y == 0x02
C - - - - - 0x0090A0 02:B090: BD 1B 04  LDA vSoundRowB_B,X
C - - - - - 0x0090A3 02:B093: D0 2B     BNE bra_B0C0_skip ; If Register A != 0x00
C - - - - - 0x0090A5 02:B095: 20 AB B0  JSR sub_B0AB
C - - - - - 0x0090A8 02:B098: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090AB 02:B09B: 29 10     AND #$10
C - - - - - 0x0090AD 02:B09D: 0A        ASL
C - - - - - 0x0090AE 02:B09E: 1D 16 04  ORA vSoundRowB_6,X
C - - - - - 0x0090B1 02:B0A1: 99 00 40  STA $4000,Y
C - - - - - 0x0090B4 02:B0A4: 60        RTS

bra_B0A5_skip:
C - - - - - 0x0090B5 02:B0A5: BD 16 04  LDA vSoundRowB_6,X
C - - - - - 0x0090B8 02:B0A8: 8D 08 40  STA TRI_LINEAR
sub_B0AB:
C - - - - - 0x0090BB 02:B0AB: 48        PHA
C - - - - - 0x0090BC 02:B0AC: AD 02 04  LDA ram_0402
C - - - - - 0x0090BF 02:B0AF: 0A        ASL
C - - - - - 0x0090C0 02:B0B0: 0A        ASL
C - - - - - 0x0090C1 02:B0B1: A8        TAY
C - - - - - 0x0090C2 02:B0B2: 68        PLA
bra_B0B3_RTS:
C - - - - - 0x0090C3 02:B0B3: 60        RTS

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
C - - - - - 0x009106 02:B0F6: 20 AB B0  JSR sub_B0AB
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
- - - - - - 0x009133 02:B123: DE        .byte $DE   ; 
- - - - - - 0x009134 02:B124: 1E        .byte $1E   ; 
- - - - - - 0x009135 02:B125: 04        .byte $04   ; 
- - - - - - 0x009136 02:B126: AD        .byte $AD   ; 
- - - - - - 0x009137 02:B127: 04        .byte $04   ; 
- - - - - - 0x009138 02:B128: 04        .byte $04   ; 
- - - - - - 0x009139 02:B129: C9        .byte $C9   ; 
- - - - - - 0x00913A 02:B12A: 1F        .byte $1F   ; 
- - - - - - 0x00913B 02:B12B: F0        .byte $F0   ; 
- - - - - - 0x00913C 02:B12C: 03        .byte $03   ; 
- - - - - - 0x00913D 02:B12D: FE        .byte $FE   ; 
- - - - - - 0x00913E 02:B12E: 16        .byte $16   ; 
- - - - - - 0x00913F 02:B12F: 04        .byte $04   ; 
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
C - - - - - 0x009177 02:B167: 20 AB B0  JSR sub_B0AB
C - - - - - 0x00917A 02:B16A: 99 02 40  STA $4002,Y
bra_B16D_RTS:
C - - - - - 0x00917D 02:B16D: 60        RTS

tbl_B16E:
- D 1 - - - 0x00917E 02:B16E: AE 06     .word $06AE
- D 1 - - - 0x009180 02:B170: 4E        .byte $4E   ; <N>
- D 1 - - - 0x009181 02:B171: 06        .byte $06   ; 
- D 1 - - - 0x009182 02:B172: F4        .byte $F4   ; 
- D 1 - - - 0x009183 02:B173: 05        .byte $05   ; 
- D 1 - - - 0x009184 02:B174: 9E        .byte $9E   ; 
- D 1 - - - 0x009185 02:B175: 05        .byte $05   ; 
- D 1 - - - 0x009186 02:B176: 4D        .byte $4D   ; <M>
- D 1 - - - 0x009187 02:B177: 05        .byte $05   ; 
- D 1 - - - 0x009188 02:B178: 01        .byte $01   ; 
- D 1 - - - 0x009189 02:B179: 05        .byte $05   ; 
- D 1 - - - 0x00918A 02:B17A: B9        .byte $B9   ; 
- D 1 - - - 0x00918B 02:B17B: 04        .byte $04   ; 
- D 1 - - - 0x00918C 02:B17C: 75        .byte $75   ; <u>
- D 1 - - - 0x00918D 02:B17D: 04        .byte $04   ; 
- D 1 - - - 0x00918E 02:B17E: 35        .byte $35   ; <5>
- D 1 - - - 0x00918F 02:B17F: 04        .byte $04   ; 
- D 1 - - - 0x009190 02:B180: F9        .byte $F9   ; 
- D 1 - - - 0x009191 02:B181: 03        .byte $03   ; 
- D 1 - - - 0x009192 02:B182: C0        .byte $C0   ; 
- D 1 - - - 0x009193 02:B183: 03        .byte $03   ; 
- D 1 - - - 0x009194 02:B184: 8A        .byte $8A   ; 
- D 1 - - - 0x009195 02:B185: 03        .byte $03   ; 
- - - - - - 0x009196 02:B186: 7E        .byte $7E   ; 
- - - - - - 0x009197 02:B187: 06        .byte $06   ; 
- - - - - - 0x009198 02:B188: 21        .byte $21   ; 
- - - - - - 0x009199 02:B189: 06        .byte $06   ; 
- - - - - - 0x00919A 02:B18A: C9        .byte $C9   ; 
- - - - - - 0x00919B 02:B18B: 05        .byte $05   ; 
- - - - - - 0x00919C 02:B18C: 76        .byte $76   ; <v>
- - - - - - 0x00919D 02:B18D: 05        .byte $05   ; 
- - - - - - 0x00919E 02:B18E: 27        .byte $27   ; 
- - - - - - 0x00919F 02:B18F: 05        .byte $05   ; 
- - - - - - 0x0091A0 02:B190: DD        .byte $DD   ; 
- - - - - - 0x0091A1 02:B191: 04        .byte $04   ; 
- - - - - - 0x0091A2 02:B192: 96        .byte $96   ; 
- - - - - - 0x0091A3 02:B193: 04        .byte $04   ; 
- - - - - - 0x0091A4 02:B194: 55        .byte $55   ; <U>
- - - - - - 0x0091A5 02:B195: 04        .byte $04   ; 
- - - - - - 0x0091A6 02:B196: 17        .byte $17   ; 
- - - - - - 0x0091A7 02:B197: 04        .byte $04   ; 
- - - - - - 0x0091A8 02:B198: DD        .byte $DD   ; 
- - - - - - 0x0091A9 02:B199: 03        .byte $03   ; 
- - - - - - 0x0091AA 02:B19A: A5        .byte $A5   ; 
- - - - - - 0x0091AB 02:B19B: 03        .byte $03   ; 
- - - - - - 0x0091AC 02:B19C: 71        .byte $71   ; <q>
- - - - - - 0x0091AD 02:B19D: 03        .byte $03   ; 
tbl_apu_channel:
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

tbl_select_characters_dialog:
- - - - - - 0x009410 02:B400: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009412 02:B402: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x009414 02:B404: FD 9A     .word $9AFD ; $BAFD
- D 0 - - - 0x009416 02:B406: 11 9B     .word $9B11 ; $BB11
- - - - - - 0x009418 02:B408: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x00941A 02:B40A: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00941C 02:B40C: 25 9B     .word $9B25 ; $BB25
- D 0 - - - 0x00941E 02:B40E: 39 9B     .word $9B39 ; $BB39
- - - - - - 0x009420 02:B410: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009422 02:B412: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x009424 02:B414: 4D 9B     .word $9B4D ; $BB4D
- D 0 - - - 0x009426 02:B416: 61 9B     .word $9B61 ; $BB61
- D 0 - - - 0x009428 02:B418: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00942A 02:B41A: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x00942C 02:B41C: 89 9B     .word $9B89 ; $BB89
- D 0 - - - 0x00942E 02:B41E: 9D 9B     .word $9B9D ; $BB9D
- - - - - - 0x009430 02:B420: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x009432 02:B422: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x009434 02:B424: D9 9B     .word $9BD9 ; $BBD9
- D 0 - - - 0x009436 02:B426: ED 9B     .word $9BED ; $BBED
- - - - - - 0x009438 02:B428: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x00943A 02:B42A: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x00943C 02:B42C: 29 9C     .word $9C29 ; $BC29
- D 0 - - - 0x00943E 02:B42E: 3D 9C     .word $9C3D ; $BC3D
- - - - - - 0x009440 02:B430: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x009442 02:B432: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x009444 02:B434: 51 9C     .word $9C51 ; $BC51
- D 0 - - - 0x009446 02:B436: 65 9C     .word $9C65 ; $BC65
- - - - - - 0x009448 02:B438: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x00944A 02:B43A: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x00944C 02:B43C: E9 9A     .word $9AE9 ; $BAE9
- D 0 - - - 0x00944E 02:B43E: 79 9C     .word $9C79 ; $BC79
- - - - - - 0x009450 02:B440: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x009452 02:B442: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x009454 02:B444: 8D 9C     .word $9C8D ; $BC8D
- D 0 - - - 0x009456 02:B446: A1 9C     .word $9CA1 ; $BCA1
- - - - - - 0x009458 02:B448: E9 9A     .word $9AE9 ; $BAE9
- - - - - - 0x00945A 02:B44A: 75 9B     .word $9B75 ; $BB75
- D 0 - - - 0x00945C 02:B44C: B5 9C     .word $9CB5 ; $BCB5
- D 0 - - - 0x00945E 02:B44E: C9 9C     .word $9CC9 ; $BCC9
- - - - - - 0x009460 02:B450: B1 9B     .word $9BB1 ; $BBB1
- - - - - - 0x009462 02:B452: C5 9B     .word $9BC5 ; $BBC5
- D 0 - - - 0x009464 02:B454: DD 9C     .word $9CDD ; $BCDD
- D 0 - - - 0x009466 02:B456: F1 9C     .word $9CF1 ; $BCF1
- - - - - - 0x009468 02:B458: 01 9C     .word $9C01 ; $BC01
- - - - - - 0x00946A 02:B45A: 15 9C     .word $9C15 ; $BC15
- D 0 - - - 0x00946C 02:B45C: 05 9D     .word $9D05 ; $BD05
- D 0 - - - 0x00946E 02:B45E: 19 9D     .word $9D19 ; $BD19

- D 0 - - - 0x009470 02:B460: 2D        .byte $2D   ; 
- D 0 - - - 0x009471 02:B461: 9D        .byte $9D   ; 
- D 0 - - - 0x009472 02:B462: 41        .byte $41   ; <A>
- D 0 - - - 0x009473 02:B463: 9D        .byte $9D   ; 
- D 0 - - - 0x009474 02:B464: 55        .byte $55   ; <U>
- D 0 - - - 0x009475 02:B465: 9D        .byte $9D   ; 
- D 0 - - - 0x009476 02:B466: 69        .byte $69   ; <i>
- D 0 - - - 0x009477 02:B467: 9D        .byte $9D   ; 
- D 0 - - - 0x009478 02:B468: 7D        .byte $7D   ; 
- D 0 - - - 0x009479 02:B469: 9D        .byte $9D   ; 
- D 0 - - - 0x00947A 02:B46A: 91        .byte $91   ; 
- D 0 - - - 0x00947B 02:B46B: 9D        .byte $9D   ; 
- D 0 - - - 0x00947C 02:B46C: A5        .byte $A5   ; 
- D 0 - - - 0x00947D 02:B46D: 9D        .byte $9D   ; 
- D 0 - - - 0x00947E 02:B46E: B9        .byte $B9   ; 
- D 0 - - - 0x00947F 02:B46F: 9D        .byte $9D   ; 
- D 0 - - - 0x009480 02:B470: E9        .byte $E9   ; 
- D 0 - - - 0x009481 02:B471: 9A        .byte $9A   ; 
- D 0 - - - 0x009482 02:B472: CD        .byte $CD   ; 
- D 0 - - - 0x009483 02:B473: 9D        .byte $9D   ; 
- D 0 - - - 0x009484 02:B474: E1        .byte $E1   ; 
- D 0 - - - 0x009485 02:B475: 9D        .byte $9D   ; 
- D 0 - - - 0x009486 02:B476: F5        .byte $F5   ; 
- D 0 - - - 0x009487 02:B477: 9D        .byte $9D   ; 

- D 0 - - - 0x009488 02:B478: 09        .byte $09   ; 
- D 0 - - - 0x009489 02:B479: 9E        .byte $9E   ; 
- D 0 - - - 0x00948A 02:B47A: 1D        .byte $1D   ; 
- D 0 - - - 0x00948B 02:B47B: 9E        .byte $9E   ; 
- D 0 - - - 0x00948C 02:B47C: 31        .byte $31   ; <1>
- D 0 - - - 0x00948D 02:B47D: 9E        .byte $9E   ; 
- D 0 - - - 0x00948E 02:B47E: 45        .byte $45   ; <E>
- D 0 - - - 0x00948F 02:B47F: 9E        .byte $9E   ; 
- D 0 - - - 0x009490 02:B480: 59        .byte $59   ; <Y>
- D 0 - - - 0x009491 02:B481: 9E        .byte $9E   ; 
- D 0 - - - 0x009492 02:B482: 6D        .byte $6D   ; <m>
- D 0 - - - 0x009493 02:B483: 9E        .byte $9E   ; 
- D 0 - - - 0x009494 02:B484: 81        .byte $81   ; 
- D 0 - - - 0x009495 02:B485: 9E        .byte $9E   ; 
- D 0 - - - 0x009496 02:B486: 95        .byte $95   ; 
- D 0 - - - 0x009497 02:B487: 9E        .byte $9E   ; 
- D 0 - - - 0x009498 02:B488: E9        .byte $E9   ; 
- D 0 - - - 0x009499 02:B489: 9A        .byte $9A   ; 
- D 0 - - - 0x00949A 02:B48A: A9        .byte $A9   ; 
- D 0 - - - 0x00949B 02:B48B: 9E        .byte $9E   ; 
- D 0 - - - 0x00949C 02:B48C: BD        .byte $BD   ; 
- D 0 - - - 0x00949D 02:B48D: 9E        .byte $9E   ; 
- D 0 - - - 0x00949E 02:B48E: D1        .byte $D1   ; 
- D 0 - - - 0x00949F 02:B48F: 9E        .byte $9E   ; 
- D 0 - - - 0x0094A0 02:B490: E7        .byte $E7   ; 
- D 0 - - - 0x0094A1 02:B491: 99        .byte $99   ; 
- D 0 - - - 0x0094A2 02:B492: EB        .byte $EB   ; 
- D 0 - - - 0x0094A3 02:B493: 96        .byte $96   ; 
- D 0 - - - 0x0094A4 02:B494: 05        .byte $05   ; 
- D 0 - - - 0x0094A5 02:B495: 97        .byte $97   ; 
- D 0 - - - 0x0094A6 02:B496: 19        .byte $19   ; 
- D 0 - - - 0x0094A7 02:B497: 97        .byte $97   ; 
- D 0 - - - 0x0094A8 02:B498: 33        .byte $33   ; <3>
- D 0 - - - 0x0094A9 02:B499: 97        .byte $97   ; 
- D 0 - - - 0x0094AA 02:B49A: 3B        .byte $3B   ; 
- D 0 - - - 0x0094AB 02:B49B: 97        .byte $97   ; 
- D 0 - - - 0x0094AC 02:B49C: 55        .byte $55   ; <U>
- D 0 - - - 0x0094AD 02:B49D: 97        .byte $97   ; 
- D 0 - - - 0x0094AE 02:B49E: 63        .byte $63   ; <c>
- D 0 - - - 0x0094AF 02:B49F: 97        .byte $97   ; 
- D 0 - - - 0x0094B0 02:B4A0: 77        .byte $77   ; <w>
- D 0 - - - 0x0094B1 02:B4A1: 97        .byte $97   ; 
- D 0 - - - 0x0094B2 02:B4A2: 8B        .byte $8B   ; 
- D 0 - - - 0x0094B3 02:B4A3: 97        .byte $97   ; 
- D 0 - - - 0x0094B4 02:B4A4: F9        .byte $F9   ; 
- D 0 - - - 0x0094B5 02:B4A5: 97        .byte $97   ; 
- D 0 - - - 0x0094B6 02:B4A6: 07        .byte $07   ; 
- D 0 - - - 0x0094B7 02:B4A7: 98        .byte $98   ; 
- D 0 - - - 0x0094B8 02:B4A8: 15        .byte $15   ; 
- D 0 - - - 0x0094B9 02:B4A9: 98        .byte $98   ; 
- D 0 - - - 0x0094BA 02:B4AA: 23        .byte $23   ; 
- D 0 - - - 0x0094BB 02:B4AB: 98        .byte $98   ; 
- D 0 - - - 0x0094BC 02:B4AC: 03        .byte $03   ; 
- D 0 - - - 0x0094BD 02:B4AD: 97        .byte $97   ; 
- D 0 - - - 0x0094BE 02:B4AE: 03        .byte $03   ; 
- D 0 - - - 0x0094BF 02:B4AF: 97        .byte $97   ; 
- - - - - - 0x0094C0 02:B4B0: 03        .byte $03   ; 
- - - - - - 0x0094C1 02:B4B1: 97        .byte $97   ; 
- - - - - - 0x0094C2 02:B4B2: 03        .byte $03   ; 
- - - - - - 0x0094C3 02:B4B3: 97        .byte $97   ; 
- D 0 - - - 0x0094C4 02:B4B4: 03        .byte $03   ; 
- D 0 - - - 0x0094C5 02:B4B5: 97        .byte $97   ; 
- D 0 - - - 0x0094C6 02:B4B6: 03        .byte $03   ; 
- D 0 - - - 0x0094C7 02:B4B7: 97        .byte $97   ; 
- - - - - - 0x0094C8 02:B4B8: 03        .byte $03   ; 
- - - - - - 0x0094C9 02:B4B9: 97        .byte $97   ; 
- D 0 - - - 0x0094CA 02:B4BA: 3D        .byte $3D   ; 
- D 0 - - - 0x0094CB 02:B4BB: 98        .byte $98   ; 
- D 0 - - - 0x0094CC 02:B4BC: 44        .byte $44   ; <D>
- D 0 - - - 0x0094CD 02:B4BD: 98        .byte $98   ; 
- D 0 - - - 0x0094CE 02:B4BE: 03        .byte $03   ; 
- D 0 - - - 0x0094CF 02:B4BF: 97        .byte $97   ; 
- - - - - - 0x0094D0 02:B4C0: 03        .byte $03   ; 
- - - - - - 0x0094D1 02:B4C1: 97        .byte $97   ; 
- - - - - - 0x0094D2 02:B4C2: 03        .byte $03   ; 
- - - - - - 0x0094D3 02:B4C3: 97        .byte $97   ; 
- D 0 - - - 0x0094D4 02:B4C4: 51        .byte $51   ; <Q>
- D 0 - - - 0x0094D5 02:B4C5: 98        .byte $98   ; 
- D 0 - - - 0x0094D6 02:B4C6: 03        .byte $03   ; 
- D 0 - - - 0x0094D7 02:B4C7: 97        .byte $97   ; 
- - - - - - 0x0094D8 02:B4C8: 03        .byte $03   ; 
- - - - - - 0x0094D9 02:B4C9: 97        .byte $97   ; 
- D 0 - - - 0x0094DA 02:B4CA: 5E        .byte $5E   ; 
- D 0 - - - 0x0094DB 02:B4CB: 98        .byte $98   ; 
- D 0 - - - 0x0094DC 02:B4CC: 65        .byte $65   ; <e>
- D 0 - - - 0x0094DD 02:B4CD: 98        .byte $98   ; 
- D 0 - - - 0x0094DE 02:B4CE: 03        .byte $03   ; 
- D 0 - - - 0x0094DF 02:B4CF: 97        .byte $97   ; 
- - - - - - 0x0094E0 02:B4D0: 03        .byte $03   ; 
- - - - - - 0x0094E1 02:B4D1: 97        .byte $97   ; 
- - - - - - 0x0094E2 02:B4D2: 03        .byte $03   ; 
- - - - - - 0x0094E3 02:B4D3: 97        .byte $97   ; 
- D 0 - - - 0x0094E4 02:B4D4: 03        .byte $03   ; 
- D 0 - - - 0x0094E5 02:B4D5: 97        .byte $97   ; 
- D 0 - - - 0x0094E6 02:B4D6: 72        .byte $72   ; <r>
- D 0 - - - 0x0094E7 02:B4D7: 98        .byte $98   ; 
- - - - - - 0x0094E8 02:B4D8: 03        .byte $03   ; 
- - - - - - 0x0094E9 02:B4D9: 97        .byte $97   ; 
- - - - - - 0x0094EA 02:B4DA: 03        .byte $03   ; 
- - - - - - 0x0094EB 02:B4DB: 97        .byte $97   ; 
- - - - - - 0x0094EC 02:B4DC: 03        .byte $03   ; 
- - - - - - 0x0094ED 02:B4DD: 97        .byte $97   ; 
- D 0 - - - 0x0094EE 02:B4DE: 7F        .byte $7F   ; 
- D 0 - - - 0x0094EF 02:B4DF: 98        .byte $98   ; 
- D 0 - - - 0x0094F0 02:B4E0: 86        .byte $86   ; 
- D 0 - - - 0x0094F1 02:B4E1: 98        .byte $98   ; 
- D 0 - - - 0x0094F2 02:B4E2: 8D        .byte $8D   ; 
- D 0 - - - 0x0094F3 02:B4E3: 98        .byte $98   ; 
- - - - - - 0x0094F4 02:B4E4: 03        .byte $03   ; 
- - - - - - 0x0094F5 02:B4E5: 97        .byte $97   ; 
- - - - - - 0x0094F6 02:B4E6: 03        .byte $03   ; 
- - - - - - 0x0094F7 02:B4E7: 97        .byte $97   ; 
- - - - - - 0x0094F8 02:B4E8: 03        .byte $03   ; 
- - - - - - 0x0094F9 02:B4E9: 97        .byte $97   ; 
- D 0 - - - 0x0094FA 02:B4EA: 94        .byte $94   ; 
- D 0 - - - 0x0094FB 02:B4EB: 98        .byte $98   ; 
- D 0 - - - 0x0094FC 02:B4EC: 9B        .byte $9B   ; 
- D 0 - - - 0x0094FD 02:B4ED: 98        .byte $98   ; 
- D 0 - - - 0x0094FE 02:B4EE: A8        .byte $A8   ; 
- D 0 - - - 0x0094FF 02:B4EF: 98        .byte $98   ; 
- D 0 - - - 0x009500 02:B4F0: C1        .byte $C1   ; 
- D 0 - - - 0x009501 02:B4F1: 98        .byte $98   ; 
- D 0 - - - 0x009502 02:B4F2: D4        .byte $D4   ; 
- D 0 - - - 0x009503 02:B4F3: 98        .byte $98   ; 
- D 0 - - - 0x009504 02:B4F4: E1        .byte $E1   ; 
- D 0 - - - 0x009505 02:B4F5: 98        .byte $98   ; 
- D 0 - - - 0x009506 02:B4F6: EE        .byte $EE   ; 
- D 0 - - - 0x009507 02:B4F7: 98        .byte $98   ; 
- D 0 - - - 0x009508 02:B4F8: FB        .byte $FB   ; 
- D 0 - - - 0x009509 02:B4F9: 98        .byte $98   ; 
- D 0 - - - 0x00950A 02:B4FA: 20        .byte $20   ; 
- D 0 - - - 0x00950B 02:B4FB: 99        .byte $99   ; 
- D 0 - - - 0x00950C 02:B4FC: 2D        .byte $2D   ; 
- D 0 - - - 0x00950D 02:B4FD: 99        .byte $99   ; 
- D 0 - - - 0x00950E 02:B4FE: 4C        .byte $4C   ; <L>
- D 0 - - - 0x00950F 02:B4FF: 99        .byte $99   ; 
- D 0 - - - 0x009510 02:B500: 65        .byte $65   ; <e>
- D 0 - - - 0x009511 02:B501: 99        .byte $99   ; 
- - - - - - 0x009512 02:B502: 03        .byte $03   ; 
- - - - - - 0x009513 02:B503: 97        .byte $97   ; 
- - - - - - 0x009514 02:B504: 7E        .byte $7E   ; 
- - - - - - 0x009515 02:B505: 99        .byte $99   ; 
- - - - - - 0x009516 02:B506: 03        .byte $03   ; 
- - - - - - 0x009517 02:B507: 97        .byte $97   ; 
- - - - - - 0x009518 02:B508: 03        .byte $03   ; 
- - - - - - 0x009519 02:B509: 97        .byte $97   ; 
- D 0 - - - 0x00951A 02:B50A: 85        .byte $85   ; 
- D 0 - - - 0x00951B 02:B50B: 99        .byte $99   ; 
- - - - - - 0x00951C 02:B50C: 03        .byte $03   ; 
- - - - - - 0x00951D 02:B50D: 97        .byte $97   ; 
- D 0 - - - 0x00951E 02:B50E: 8C        .byte $8C   ; 
- D 0 - - - 0x00951F 02:B50F: 99        .byte $99   ; 
- D 0 - - - 0x009520 02:B510: 9F        .byte $9F   ; 
- D 0 - - - 0x009521 02:B511: 99        .byte $99   ; 
- D 0 - - - 0x009522 02:B512: B8        .byte $B8   ; 
- D 0 - - - 0x009523 02:B513: 99        .byte $99   ; 
- D 0 - - - 0x009524 02:B514: C5        .byte $C5   ; 
- D 0 - - - 0x009525 02:B515: 99        .byte $99   ; 
- D 0 - - - 0x009526 02:B516: CC        .byte $CC   ; 
- D 0 - - - 0x009527 02:B517: 99        .byte $99   ; 
- D 0 - - - 0x009528 02:B518: D9        .byte $D9   ; 
- D 0 - - - 0x009529 02:B519: 99        .byte $99   ; 
- - - - - - 0x00952A 02:B51A: 03        .byte $03   ; 
- - - - - - 0x00952B 02:B51B: 97        .byte $97   ; 
- - - - - - 0x00952C 02:B51C: 03        .byte $03   ; 
- - - - - - 0x00952D 02:B51D: 97        .byte $97   ; 
- D 0 - - - 0x00952E 02:B51E: E0        .byte $E0   ; 
- D 0 - - - 0x00952F 02:B51F: 99        .byte $99   ; 
- - - - - - 0x009530 02:B520: 03        .byte $03   ; 
- - - - - - 0x009531 02:B521: 97        .byte $97   ; 
- - - - - - 0x009532 02:B522: 03        .byte $03   ; 
- - - - - - 0x009533 02:B523: 97        .byte $97   ; 
- D 0 - - - 0x009534 02:B524: 63        .byte $63   ; <c>
- D 0 - - - 0x009535 02:B525: 9A        .byte $9A   ; 
- - - - - - 0x009536 02:B526: 67        .byte $67   ; <g>
- - - - - - 0x009537 02:B527: 9A        .byte $9A   ; 
- D 0 - - - 0x009538 02:B528: 6B        .byte $6B   ; <k>
- D 0 - - - 0x009539 02:B529: 9A        .byte $9A   ; 
- D 0 - - - 0x00953A 02:B52A: 71        .byte $71   ; <q>
- D 0 - - - 0x00953B 02:B52B: 9A        .byte $9A   ; 
- D 0 - - - 0x00953C 02:B52C: 72        .byte $72   ; <r>
- D 0 - - - 0x00953D 02:B52D: 9A        .byte $9A   ; 
- D 0 - - - 0x00953E 02:B52E: 77        .byte $77   ; <w>
- D 0 - - - 0x00953F 02:B52F: 9A        .byte $9A   ; 
- D 0 - - - 0x009540 02:B530: 79        .byte $79   ; <y>
- D 0 - - - 0x009541 02:B531: 9A        .byte $9A   ; 
- D 0 - - - 0x009542 02:B532: 7C        .byte $7C   ; 
- D 0 - - - 0x009543 02:B533: 9A        .byte $9A   ; 
- D 0 - - - 0x009544 02:B534: 7F        .byte $7F   ; 
- D 0 - - - 0x009545 02:B535: 9A        .byte $9A   ; 
- D 0 - - - 0x009546 02:B536: 82        .byte $82   ; 
- D 0 - - - 0x009547 02:B537: 9A        .byte $9A   ; 
- - - - - - 0x009548 02:B538: 83        .byte $83   ; 
- - - - - - 0x009549 02:B539: 9A        .byte $9A   ; 
- - - - - - 0x00954A 02:B53A: 84        .byte $84   ; 
- - - - - - 0x00954B 02:B53B: 9A        .byte $9A   ; 
- - - - - - 0x00954C 02:B53C: 85        .byte $85   ; 
- - - - - - 0x00954D 02:B53D: 9A        .byte $9A   ; 
- D 0 - - - 0x00954E 02:B53E: 86        .byte $86   ; 
- D 0 - - - 0x00954F 02:B53F: 9A        .byte $9A   ; 
- - - - - - 0x009550 02:B540: 89        .byte $89   ; 
- - - - - - 0x009551 02:B541: 9A        .byte $9A   ; 
- - - - - - 0x009552 02:B542: 8A        .byte $8A   ; 
- - - - - - 0x009553 02:B543: 9A        .byte $9A   ; 
- D 0 - - - 0x009554 02:B544: 8B        .byte $8B   ; 
- D 0 - - - 0x009555 02:B545: 9A        .byte $9A   ; 
- - - - - - 0x009556 02:B546: 91        .byte $91   ; 
- - - - - - 0x009557 02:B547: 9A        .byte $9A   ; 
- - - - - - 0x009558 02:B548: 94        .byte $94   ; 
- - - - - - 0x009559 02:B549: 9A        .byte $9A   ; 
- - - - - - 0x00955A 02:B54A: 97        .byte $97   ; 
- - - - - - 0x00955B 02:B54B: 9A        .byte $9A   ; 
- - - - - - 0x00955C 02:B54C: 99        .byte $99   ; 
- - - - - - 0x00955D 02:B54D: 9A        .byte $9A   ; 
- - - - - - 0x00955E 02:B54E: 9B        .byte $9B   ; 
- - - - - - 0x00955F 02:B54F: 9A        .byte $9A   ; 
- - - - - - 0x009560 02:B550: A2        .byte $A2   ; 
- - - - - - 0x009561 02:B551: 9A        .byte $9A   ; 
- - - - - - 0x009562 02:B552: A3        .byte $A3   ; 
- - - - - - 0x009563 02:B553: 9A        .byte $9A   ; 
- D 0 - - - 0x009564 02:B554: A5        .byte $A5   ; 
- D 0 - - - 0x009565 02:B555: 9A        .byte $9A   ; 
- - - - - - 0x009566 02:B556: A7        .byte $A7   ; 
- - - - - - 0x009567 02:B557: 9A        .byte $9A   ; 
- D 0 - - - 0x009568 02:B558: A8        .byte $A8   ; 
- D 0 - - - 0x009569 02:B559: 9A        .byte $9A   ; 
- - - - - - 0x00956A 02:B55A: A9        .byte $A9   ; 
- - - - - - 0x00956B 02:B55B: 9A        .byte $9A   ; 
- - - - - - 0x00956C 02:B55C: AA        .byte $AA   ; 
- - - - - - 0x00956D 02:B55D: 9A        .byte $9A   ; 
- - - - - - 0x00956E 02:B55E: AC        .byte $AC   ; 
- - - - - - 0x00956F 02:B55F: 9A        .byte $9A   ; 
- - - - - - 0x009570 02:B560: AD        .byte $AD   ; 
- - - - - - 0x009571 02:B561: 9A        .byte $9A   ; 
- - - - - - 0x009572 02:B562: AE        .byte $AE   ; 
- - - - - - 0x009573 02:B563: 9A        .byte $9A   ; 
- - - - - - 0x009574 02:B564: AF        .byte $AF   ; 
- - - - - - 0x009575 02:B565: 9A        .byte $9A   ; 
- - - - - - 0x009576 02:B566: B0        .byte $B0   ; 
- - - - - - 0x009577 02:B567: 9A        .byte $9A   ; 
- - - - - - 0x009578 02:B568: B2        .byte $B2   ; 
- - - - - - 0x009579 02:B569: 9A        .byte $9A   ; 
- D 0 - - - 0x00957A 02:B56A: B4        .byte $B4   ; 
- D 0 - - - 0x00957B 02:B56B: 9A        .byte $9A   ; 
- D 0 - - - 0x00957C 02:B56C: B6        .byte $B6   ; 
- D 0 - - - 0x00957D 02:B56D: 9A        .byte $9A   ; 
- - - - - - 0x00957E 02:B56E: B8        .byte $B8   ; 
- - - - - - 0x00957F 02:B56F: 9A        .byte $9A   ; 
- D 0 - - - 0x009580 02:B570: B9        .byte $B9   ; 
- D 0 - - - 0x009581 02:B571: 9A        .byte $9A   ; 
- D 0 - - - 0x009582 02:B572: BB        .byte $BB   ; 
- D 0 - - - 0x009583 02:B573: 9A        .byte $9A   ; 
- - - - - - 0x009584 02:B574: BE        .byte $BE   ; 
- - - - - - 0x009585 02:B575: 9A        .byte $9A   ; 
- D 0 - - - 0x009586 02:B576: C0        .byte $C0   ; 
- D 0 - - - 0x009587 02:B577: 9A        .byte $9A   ; 
- - - - - - 0x009588 02:B578: C7        .byte $C7   ; 
- - - - - - 0x009589 02:B579: 9A        .byte $9A   ; 
- D 0 - - - 0x00958A 02:B57A: CA        .byte $CA   ; 
- D 0 - - - 0x00958B 02:B57B: 9A        .byte $9A   ; 
- - - - - - 0x00958C 02:B57C: CE        .byte $CE   ; 
- - - - - - 0x00958D 02:B57D: 9A        .byte $9A   ; 
- D 0 - - - 0x00958E 02:B57E: D1        .byte $D1   ; 
- D 0 - - - 0x00958F 02:B57F: 9A        .byte $9A   ; 
- - - - - - 0x009590 02:B580: D5        .byte $D5   ; 
- - - - - - 0x009591 02:B581: 9A        .byte $9A   ; 
- D 0 - - - 0x009592 02:B582: D7        .byte $D7   ; 
- D 0 - - - 0x009593 02:B583: 9A        .byte $9A   ; 
- - - - - - 0x009594 02:B584: D9        .byte $D9   ; 
- - - - - - 0x009595 02:B585: 9A        .byte $9A   ; 
- - - - - - 0x009596 02:B586: DA        .byte $DA   ; 
- - - - - - 0x009597 02:B587: 9A        .byte $9A   ; 
- - - - - - 0x009598 02:B588: DB        .byte $DB   ; 
- - - - - - 0x009599 02:B589: 9A        .byte $9A   ; 
- - - - - - 0x00959A 02:B58A: DC        .byte $DC   ; 
- - - - - - 0x00959B 02:B58B: 9A        .byte $9A   ; 
- - - - - - 0x00959C 02:B58C: DD        .byte $DD   ; 
- - - - - - 0x00959D 02:B58D: 9A        .byte $9A   ; 
- - - - - - 0x00959E 02:B58E: DE        .byte $DE   ; 
- - - - - - 0x00959F 02:B58F: 9A        .byte $9A   ; 
- - - - - - 0x0095A0 02:B590: DF        .byte $DF   ; 
- - - - - - 0x0095A1 02:B591: 9A        .byte $9A   ; 
- - - - - - 0x0095A2 02:B592: E1        .byte $E1   ; 
- - - - - - 0x0095A3 02:B593: 9A        .byte $9A   ; 
- - - - - - 0x0095A4 02:B594: E2        .byte $E2   ; 
- - - - - - 0x0095A5 02:B595: 9A        .byte $9A   ; 
- - - - - - 0x0095A6 02:B596: E3        .byte $E3   ; 
- - - - - - 0x0095A7 02:B597: 9A        .byte $9A   ; 
- - - - - - 0x0095A8 02:B598: E4        .byte $E4   ; 
- - - - - - 0x0095A9 02:B599: 9A        .byte $9A   ; 
- D 0 - - - 0x0095AA 02:B59A: E5        .byte $E5   ; 
- D 0 - - - 0x0095AB 02:B59B: 9A        .byte $9A   ; 
- - - - - - 0x0095AC 02:B59C: E7        .byte $E7   ; 
- - - - - - 0x0095AD 02:B59D: 9A        .byte $9A   ; 
- D 0 - - - 0x0095AE 02:B59E: E8        .byte $E8   ; 
- D 0 - - - 0x0095AF 02:B59F: 9A        .byte $9A   ; 
- D 0 - - - 0x0095B0 02:B5A0: 08        .byte $08   ; 
- D 0 - - - 0x0095B1 02:B5A1: 08        .byte $08   ; 
- D 0 - - - 0x0095B2 02:B5A2: 08        .byte $08   ; 
- D 0 - - - 0x0095B3 02:B5A3: 07        .byte $07   ; 
- D 0 - - - 0x0095B4 02:B5A4: 07        .byte $07   ; 
- D 0 - - - 0x0095B5 02:B5A5: 07        .byte $07   ; 
- D 0 - - - 0x0095B6 02:B5A6: 06        .byte $06   ; 
- D 0 - - - 0x0095B7 02:B5A7: 06        .byte $06   ; 
- D 0 - - - 0x0095B8 02:B5A8: 06        .byte $06   ; 
- D 0 - - - 0x0095B9 02:B5A9: 05        .byte $05   ; 
- D 0 - - - 0x0095BA 02:B5AA: 05        .byte $05   ; 
- D 0 - - - 0x0095BB 02:B5AB: 05        .byte $05   ; 
- D 0 - - - 0x0095BC 02:B5AC: 04        .byte $04   ; 
- D 0 - - - 0x0095BD 02:B5AD: 04        .byte $04   ; 
- D 0 - - - 0x0095BE 02:B5AE: 04        .byte $04   ; 
- D 0 - - - 0x0095BF 02:B5AF: 03        .byte $03   ; 
- D 0 - - - 0x0095C0 02:B5B0: 03        .byte $03   ; 
- D 0 - - - 0x0095C1 02:B5B1: 03        .byte $03   ; 
- D 0 - - - 0x0095C2 02:B5B2: 02        .byte $02   ; 
- D 0 - - - 0x0095C3 02:B5B3: 02        .byte $02   ; 
- D 0 - - - 0x0095C4 02:B5B4: 02        .byte $02   ; 
- D 0 - - - 0x0095C5 02:B5B5: 01        .byte $01   ; 
- D 0 - - - 0x0095C6 02:B5B6: 01        .byte $01   ; 
- D 0 - - - 0x0095C7 02:B5B7: 01        .byte $01   ; 
- D 0 - - - 0x0095C8 02:B5B8: 00        .byte $00   ; 
- D 0 - - - 0x0095C9 02:B5B9: 00        .byte $00   ; 
- D 0 - - - 0x0095CA 02:B5BA: 00        .byte $00   ; 
- D 0 - - - 0x0095CB 02:B5BB: 07        .byte $07   ; 
- D 0 - - - 0x0095CC 02:B5BC: 06        .byte $06   ; 
- D 0 - - - 0x0095CD 02:B5BD: 05        .byte $05   ; 
- D 0 - - - 0x0095CE 02:B5BE: 04        .byte $04   ; 
- D 0 - - - 0x0095CF 02:B5BF: 03        .byte $03   ; 
- D 0 - - - 0x0095D0 02:B5C0: 5F        .byte $5F   ; 
- D 0 - - - 0x0095D1 02:B5C1: 67        .byte $67   ; <g>
- D 0 - - - 0x0095D2 02:B5C2: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095D3 02:B5C3: 77        .byte $77   ; <w>
- D 0 - - - 0x0095D4 02:B5C4: 7F        .byte $7F   ; 
- D 0 - - - 0x0095D5 02:B5C5: 87        .byte $87   ; 
- D 0 - - - 0x0095D6 02:B5C6: 8F        .byte $8F   ; 
- D 0 - - - 0x0095D7 02:B5C7: 97        .byte $97   ; 
- D 0 - - - 0x0095D8 02:B5C8: 9F        .byte $9F   ; 
- D 0 - - - 0x0095D9 02:B5C9: A7        .byte $A7   ; 
- D 0 - - - 0x0095DA 02:B5CA: AF        .byte $AF   ; 
- D 0 - - - 0x0095DB 02:B5CB: B7        .byte $B7   ; 
- D 0 - - - 0x0095DC 02:B5CC: BF        .byte $BF   ; 
- D 0 - - - 0x0095DD 02:B5CD: 67        .byte $67   ; <g>
- D 0 - - - 0x0095DE 02:B5CE: 5F        .byte $5F   ; 
- D 0 - - - 0x0095DF 02:B5CF: 67        .byte $67   ; <g>
- D 0 - - - 0x0095E0 02:B5D0: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095E1 02:B5D1: 77        .byte $77   ; <w>
- D 0 - - - 0x0095E2 02:B5D2: 7F        .byte $7F   ; 
- D 0 - - - 0x0095E3 02:B5D3: 87        .byte $87   ; 
- D 0 - - - 0x0095E4 02:B5D4: 8F        .byte $8F   ; 
- D 0 - - - 0x0095E5 02:B5D5: 97        .byte $97   ; 
- D 0 - - - 0x0095E6 02:B5D6: 9F        .byte $9F   ; 
- D 0 - - - 0x0095E7 02:B5D7: A7        .byte $A7   ; 
- D 0 - - - 0x0095E8 02:B5D8: AF        .byte $AF   ; 
- D 0 - - - 0x0095E9 02:B5D9: B7        .byte $B7   ; 
- D 0 - - - 0x0095EA 02:B5DA: BF        .byte $BF   ; 
- D 0 - - - 0x0095EB 02:B5DB: 67        .byte $67   ; <g>
- D 0 - - - 0x0095EC 02:B5DC: 5F        .byte $5F   ; 
- D 0 - - - 0x0095ED 02:B5DD: 67        .byte $67   ; <g>
- D 0 - - - 0x0095EE 02:B5DE: 6F        .byte $6F   ; <o>
- D 0 - - - 0x0095EF 02:B5DF: 77        .byte $77   ; <w>

; see docs (Bestiary)
tbl_enemy_score:
- D 0 - - - 0x0095F0 02:B5E0: 00        .byte $00   ; 0x00
- D 0 - - - 0x0095F1 02:B5E1: 20        .byte $20   ; 0x01 - Cat with the gun
- D 0 - - - 0x0095F2 02:B5E2: 10        .byte $10   ; 
- D 0 - - - 0x0095F3 02:B5E3: 20        .byte $20   ; 
- D 0 - - - 0x0095F4 02:B5E4: 10        .byte $10   ; 
- D 0 - - - 0x0095F5 02:B5E5: 10        .byte $10   ; 
- D 0 - - - 0x0095F6 02:B5E6: 10        .byte $10   ; 
- D - - - - 0x0095F7 02:B5E7: 00        .byte $00   ; 
- D 0 - - - 0x0095F8 02:B5E8: 20        .byte $20   ; 
- D 0 - - - 0x0095F9 02:B5E9: 40        .byte $40   ; 
- D - - - - 0x0095FA 02:B5EA: 20        .byte $20   ; 
- D 0 - - - 0x0095FB 02:B5EB: 50        .byte $50   ; 
- D - - - - 0x0095FC 02:B5EC: 00        .byte $00   ; 
- D - - - - 0x0095FD 02:B5ED: 00        .byte $00   ; 
- D 0 - - - 0x0095FE 02:B5EE: 10        .byte $10   ; 
- D 0 - - - 0x0095FF 02:B5EF: 05        .byte $05   ; 
- D 0 - - - 0x009600 02:B5F0: 30        .byte $30   ; 0x10 - Nun
- D 0 - - - 0x009601 02:B5F1: 03        .byte $03   ; 
- D 0 - - - 0x009602 02:B5F2: 10        .byte $10   ; 
- D 0 - - - 0x009603 02:B5F3: 20        .byte $20   ; 
- D 0 - - - 0x009604 02:B5F4: 20        .byte $20   ; 
- D - - - - 0x009605 02:B5F5: 00        .byte $00   ; 
- D 0 - - - 0x009606 02:B5F6: 05        .byte $05   ; 
- D 0 - - - 0x009607 02:B5F7: 03        .byte $03   ; 
- D 0 - - - 0x009608 02:B5F8: 20        .byte $20   ; 
- D 0 - - - 0x009609 02:B5F9: 40        .byte $40   ; 
- D 0 - - - 0x00960A 02:B5FA: 10        .byte $10   ; 
- D 0 - - - 0x00960B 02:B5FB: 20        .byte $20   ; 
- D 0 - - - 0x00960C 02:B5FC: 20        .byte $20   ; 
- D 0 - - - 0x00960D 02:B5FD: 20        .byte $20   ; 
- D - - - - 0x00960E 02:B5FE: 00        .byte $00   ; 
- D 0 - - - 0x00960F 02:B5FF: 30        .byte $30   ; 
- D 0 - - - 0x009610 02:B600: 20        .byte $20   ; 0x20 - Shooter with bazooka
- D 0 - - - 0x009611 02:B601: 20        .byte $20   ; 
- D 0 - - - 0x009612 02:B602: 30        .byte $30   ;
- D 0 - - - 0x009613 02:B603: 50        .byte $50   ;
- D 0 - - - 0x009614 02:B604: 40        .byte $40   ; 
- D 0 - - - 0x009615 02:B605: 10        .byte $10   ; 
- D 0 - - - 0x009616 02:B606: 60        .byte $60   ; 
- D 0 - - - 0x009617 02:B607: 30        .byte $30   ;
- D - - - - 0x009618 02:B608: F0        .byte $F0   ; 
- D - - - - 0x009619 02:B609: 00        .byte $00   ; 
- D - - - - 0x00961A 02:B60A: F0        .byte $F0   ; 
- D 0 - - - 0x00961B 02:B60B: 00        .byte $00   ; 
- D - - - - 0x00961C 02:B60C: F0        .byte $F0   ; 
- D - - - - 0x00961D 02:B60D: 00        .byte $00   ; 
- D - - - - 0x00961E 02:B60E: F0        .byte $F0   ; 
- D 0 - - - 0x00961F 02:B60F: 00        .byte $00   ; 
- D - - - - 0x009620 02:B610: 00        .byte $00   ; 0x30 - Wall
- D - - - - 0x009621 02:B611: 00        .byte $00   ; 
- D - - - - 0x009622 02:B612: 00        .byte $00   ; 
- D - - - - 0x009623 02:B613: 00        .byte $00   ; 
- D 0 - - - 0x009624 02:B614: 10        .byte $10   ; 
- D 0 - - - 0x009625 02:B615: 30        .byte $30   ; 
- D 0 - - - 0x009626 02:B616: 20        .byte $20   ; 
- D 0 - - - 0x009627 02:B617: 50        .byte $50   ; 
- D 0 - - - 0x009628 02:B618: 30        .byte $30   ; 
- D - - - - 0x009629 02:B619: 00        .byte $00   ; 0x39 - Sensor

tbl_water_gap_level4:
- - - - - - 0x00962A 02:B61A: 92 96     .word $9692 ; level 4, map 1
- D 0 - - - 0x00962C 02:B61C: 92 96     .word $9692
- - - - - - 0x00962E 02:B61E: 92 96     .word $9692
- D 0 - - - 0x009630 02:B620: 92 96     .word $9692
- - - - - - 0x009632 02:B622: 92 96     .word $9692
- D 0 - - - 0x009634 02:B624: 92 96     .word $9692
- D 0 - - - 0x009636 02:B626: 92 96     .word $9692
- D 0 - - - 0x009638 02:B628: 93 96     .word $9693
- D 0 - - - 0x00963A 02:B62A: 95 96     .word $9695 ; level 4, map 2
- D 0 - - - 0x00963C 02:B62C: 92 96     .word $9692
- D 0 - - - 0x00963E 02:B62E: 92 96     .word $9692
- D 0 - - - 0x009640 02:B630: 92 96     .word $9692
- D 0 - - - 0x009642 02:B632: 98 96     .word $9698
- - - - - - 0x009644 02:B634: 92 96     .word $9692
- D 0 - - - 0x009646 02:B636: 92 96     .word $9692
- D 0 - - - 0x009648 02:B638: 9A 96     .word $969A
- D 0 - - - 0x00964A 02:B63A: 9C 96     .word $969C
- - - - - - 0x00964C 02:B63C: 92 96     .word $9692
- - - - - - 0x00964E 02:B63E: 92 96     .word $9692
- - - - - - 0x009650 02:B640: 92 96     .word $9692
- - - - - - 0x009652 02:B642: 92 96     .word $9692
- D 0 - - - 0x009654 02:B644: 9F 96     .word $969F ; level 4, map 3
- D 0 - - - 0x009656 02:B646: 92 96     .word $9692
- - - - - - 0x009658 02:B648: 92 96     .word $9692
- - - - - - 0x00965A 02:B64A: 92 96     .word $9692
- D 0 - - - 0x00965C 02:B64C: A1 96     .word $96A1
- D 0 - - - 0x00965E 02:B64E: A3 96     .word $96A3
- D 0 - - - 0x009660 02:B650: A5 96     .word $96A5
- D 0 - - - 0x009662 02:B652: 92 96     .word $9692
- D 0 - - - 0x009664 02:B654: 92 96     .word $9692
- D 0 - - - 0x009666 02:B656: 92 96     .word $9692
- D 0 - - - 0x009668 02:B658: A7 96     .word $96A7
- D 0 - - - 0x00966A 02:B65A: A9 96     .word $96A9
- D 0 - - - 0x00966C 02:B65C: AC 96     .word $96AC
- D 0 - - - 0x00966E 02:B65E: B0 96     .word $96B0
- D 0 - - - 0x009670 02:B660: B3 96     .word $96B3
- D 0 - - - 0x009672 02:B662: B6 96     .word $96B6
- D 0 - - - 0x009674 02:B664: B9 96     .word $96B9 ; level 4, map 4
- D 0 - - - 0x009676 02:B666: BC 96     .word $96BC
- D 0 - - - 0x009678 02:B668: C1 96     .word $96C1
- D 0 - - - 0x00967A 02:B66A: C4 96     .word $96C4
- D 0 - - - 0x00967C 02:B66C: CA 96     .word $96CA
- D 0 - - - 0x00967E 02:B66E: CE 96     .word $96CE
- - - - - - 0x009680 02:B670: 92 96     .word $9692
- D 0 - - - 0x009682 02:B672: D3 96     .word $96D3
- - - - - - 0x009684 02:B674: 92 96     .word $9692
- D 0 - - - 0x009686 02:B676: 92 96     .word $9692
- D 0 - - - 0x009688 02:B678: D5 96     .word $96D5
- - - - - - 0x00968A 02:B67A: 92 96     .word $9692
- D 0 - - - 0x00968C 02:B67C: D7 96     .word $96D7
- D 0 - - - 0x00968E 02:B67E: DB 96     .word $96DB
- D 0 - - - 0x009690 02:B680: E0 96     .word $96E0
- D 0 - - - 0x009692 02:B682: E3 96     .word $96E3
- D 0 - - - 0x009694 02:B684: E5 96     .word $96E5
- D 0 - - - 0x009696 02:B686: E7 96     .word $96E7
- D 0 - - - 0x009698 02:B688: 92 96     .word $9692
- - - - - - 0x00969A 02:B68A: 92 96     .word $9692
- D 0 - - - 0x00969C 02:B68C: E9 96     .word $96E9
- - - - - - 0x00969E 02:B68E: 92 96     .word $9692
- D 0 - - - 0x0096A0 02:B690: 92 96     .word $9692

loc_no_gap:
- D 0 - I - 0x0096A2 02:B692: FF        .byte $FF

- D 0 - I - 0x0096A3 02:B693: 01        .byte $01
- D 0 - I - 0x0096A4 02:B694: FF        .byte $FF

- D 0 - I - 0x0096A5 02:B695: 01        .byte $01, $02
- D 0 - I - 0x0096A7 02:B697: FF        .byte $FF

- D 0 - I - 0x0096A8 02:B698: 01        .byte $01
- - - - - - 0x0096A9 02:B699: FF        .byte $FF

- D 0 - I - 0x0096AA 02:B69A: 00        .byte $00
- - - - - - 0x0096AB 02:B69B: FF        .byte $FF

- D 0 - I - 0x0096AC 02:B69C: 00        .byte $00, $02
- - - - - - 0x0096AE 02:B69E: FF        .byte $FF

- D 0 - I - 0x0096AF 02:B69F: 01        .byte $01
- - - - - - 0x0096B0 02:B6A0: FF        .byte $FF

- D 0 - I - 0x0096B1 02:B6A1: 00        .byte $00
- - - - - - 0x0096B2 02:B6A2: FF        .byte $FF

- D 0 - I - 0x0096B3 02:B6A3: 00        .byte $00
- D 0 - I - 0x0096B4 02:B6A4: FF        .byte $FF

- D 0 - I - 0x0096B5 02:B6A5: 02        .byte $02
- - - - - - 0x0096B6 02:B6A6: FF        .byte $FF

- D 0 - I - 0x0096B7 02:B6A7: 04        .byte $04
- D 0 - I - 0x0096B8 02:B6A8: FF        .byte $FF

- D 0 - I - 0x0096B9 02:B6A9: 02        .byte $02, $03
- D 0 - I - 0x0096BB 02:B6AB: FF        .byte $FF

- D 0 - I - 0x0096BC 02:B6AC: 01        .byte $01, $02, $05
- D 0 - I - 0x0096BF 02:B6AF: FF        .byte $FF

- D 0 - I - 0x0096C0 02:B6B0: 04        .byte $04, $05
- D 0 - I - 0x0096C2 02:B6B2: FF        .byte $FF

- D 0 - I - 0x0096C3 02:B6B3: 05        .byte $05, $06
- D 0 - I - 0x0096C5 02:B6B5: FF        .byte $FF

- D 0 - I - 0x0096C6 02:B6B6: 04        .byte $04, $05
- D 0 - I - 0x0096C8 02:B6B8: FF        .byte $FF

- D 0 - I - 0x0096C9 02:B6B9: 01        .byte $01, $02
- D 0 - I - 0x0096CB 02:B6BB: FF        .byte $FF

- D 0 - I - 0x0096CC 02:B6BC: 02        .byte $02, $03, $05, $06
- D 0 - I - 0x0096D0 02:B6C0: FF        .byte $FF

- D 0 - I - 0x0096D1 02:B6C1: 05        .byte $05, $07
- D 0 - I - 0x0096D3 02:B6C3: FF        .byte $FF

- D 0 - I - 0x0096D4 02:B6C4: 02        .byte $02, $03, $04, $07, $08
- D 0 - I - 0x0096D9 02:B6C9: FF        .byte $FF

- D 0 - I - 0x0096DA 02:B6CA: 03        .byte $03, $04, $05
- D 0 - I - 0x0096DD 02:B6CD: FF        .byte $FF

- D 0 - I - 0x0096DE 02:B6CE: 01        .byte $01, $02, $04, $05
- - - - - - 0x0096E2 02:B6D2: FF        .byte $FF

- D 0 - I - 0x0096E3 02:B6D3: 04        .byte $04
- D 0 - I - 0x0096E4 02:B6D4: FF        .byte $FF

- D 0 - I - 0x0096E5 02:B6D5: 00        .byte $00
- - - - - - 0x0096E6 02:B6D6: FF        .byte $FF

- D 0 - I - 0x0096E7 02:B6D7: 02        .byte $02, $04, $07
- D 0 - I - 0x0096EA 02:B6DA: FF        .byte $FF

- D 0 - I - 0x0096EB 02:B6DB: 01        .byte $01, $03, $04, $07
- D 0 - I - 0x0096EF 02:B6DF: FF        .byte $FF

- D 0 - I - 0x0096F0 02:B6E0: 02        .byte $02, $04
- D 0 - I - 0x0096F2 02:B6E2: FF        .byte $FF

- D 0 - I - 0x0096F3 02:B6E3: 01        .byte $01
- - - - - - 0x0096F4 02:B6E4: FF        .byte $FF

- D 0 - I - 0x0096F5 02:B6E5: 04        .byte $04
- D 0 - I - 0x0096F6 02:B6E6: FF        .byte $FF

- D 0 - I - 0x0096F7 02:B6E7: 01        .byte $01
- - - - - - 0x0096F8 02:B6E8: FF        .byte $FF

- D 0 - I - 0x0096F9 02:B6E9: 00        .byte $00
- D 0 - I - 0x0096FA 02:B6EA: FF        .byte $FF

- D 0 - I - 0x0096FB 02:B6EB: F0        .byte $F0   ; 
- D 0 - I - 0x0096FC 02:B6EC: 01        .byte $01   ; 
- D 0 - I - 0x0096FD 02:B6ED: 30        .byte $30   ; <0>
- D 0 - I - 0x0096FE 02:B6EE: 00        .byte $00   ; 
- D 0 - I - 0x0096FF 02:B6EF: 01        .byte $01   ; 
- D 0 - I - 0x009700 02:B6F0: 00        .byte $00   ; 
- D 0 - I - 0x009701 02:B6F1: 40        .byte $40   ; 
- D 0 - I - 0x009702 02:B6F2: 02        .byte $02   ; 
- D 0 - I - 0x009703 02:B6F3: 30        .byte $30   ; <0>
- D 0 - I - 0x009704 02:B6F4: 01        .byte $01   ; 
- D 0 - I - 0x009705 02:B6F5: 01        .byte $01   ; 
- D 0 - I - 0x009706 02:B6F6: 00        .byte $00   ; 
- D 0 - I - 0x009707 02:B6F7: F0        .byte $F0   ; 
- D 0 - I - 0x009708 02:B6F8: 03        .byte $03   ; 
- - - - - - 0x009709 02:B6F9: 30        .byte $30   ; <0>
- - - - - - 0x00970A 02:B6FA: 02        .byte $02   ; 
- - - - - - 0x00970B 02:B6FB: 01        .byte $01   ; 
- - - - - - 0x00970C 02:B6FC: 00        .byte $00   ; 
- D 0 - I - 0x00970D 02:B6FD: 40        .byte $40   ; 
- D 0 - I - 0x00970E 02:B6FE: 50        .byte $50   ; <P>
- D 0 - I - 0x00970F 02:B6FF: 30        .byte $30   ; <0>
- D 0 - I - 0x009710 02:B700: 03        .byte $03   ; 
- D 0 - I - 0x009711 02:B701: 01        .byte $01   ; 
- D 0 - I - 0x009712 02:B702: 00        .byte $00   ; 
- D 0 - I - 0x009713 02:B703: FF        .byte $FF   ; 
- D 0 - I - 0x009714 02:B704: FF        .byte $FF   ; 
- D 0 - I - 0x009715 02:B705: 40        .byte $40   ; 
- D 0 - I - 0x009716 02:B706: 02        .byte $02   ; 
- D 0 - I - 0x009717 02:B707: 31        .byte $31   ; <1>
- D 0 - I - 0x009718 02:B708: 00        .byte $00   ; 
- D 0 - I - 0x009719 02:B709: FF        .byte $FF   ; 
- D 0 - I - 0x00971A 02:B70A: 01        .byte $01   ; 
- D 0 - I - 0x00971B 02:B70B: F0        .byte $F0   ; 
- D 0 - I - 0x00971C 02:B70C: 03        .byte $03   ; 
- D 0 - I - 0x00971D 02:B70D: 31        .byte $31   ; <1>
- D 0 - I - 0x00971E 02:B70E: 01        .byte $01   ; 
- D 0 - I - 0x00971F 02:B70F: FF        .byte $FF   ; 
- D 0 - I - 0x009720 02:B710: 01        .byte $01   ; 
- D 0 - I - 0x009721 02:B711: F0        .byte $F0   ; 
- D 0 - I - 0x009722 02:B712: 06        .byte $06   ; 
- D 0 - I - 0x009723 02:B713: 31        .byte $31   ; <1>
- D 0 - I - 0x009724 02:B714: 03        .byte $03   ; 
- D 0 - I - 0x009725 02:B715: FF        .byte $FF   ; 
- D 0 - I - 0x009726 02:B716: 01        .byte $01   ; 
- - - - - - 0x009727 02:B717: FF        .byte $FF   ; 
- - - - - - 0x009728 02:B718: FF        .byte $FF   ; 
- D 0 - I - 0x009729 02:B719: 40        .byte $40   ; 
- D 0 - I - 0x00972A 02:B71A: 01        .byte $01   ; 
- D 0 - I - 0x00972B 02:B71B: 32        .byte $32   ; <2>
- D 0 - I - 0x00972C 02:B71C: 00        .byte $00   ; 
- D 0 - I - 0x00972D 02:B71D: 01        .byte $01   ; 
- D 0 - I - 0x00972E 02:B71E: 02        .byte $02   ; 
- D 0 - I - 0x00972F 02:B71F: F0        .byte $F0   ; 
- D 0 - I - 0x009730 02:B720: 03        .byte $03   ; 
- - - - - - 0x009731 02:B721: 32        .byte $32   ; <2>
- - - - - - 0x009732 02:B722: 02        .byte $02   ; 
- - - - - - 0x009733 02:B723: 01        .byte $01   ; 
- - - - - - 0x009734 02:B724: 02        .byte $02   ; 
- D 0 - I - 0x009735 02:B725: F0        .byte $F0   ; 
- D 0 - I - 0x009736 02:B726: 05        .byte $05   ; 
- - - - - - 0x009737 02:B727: 32        .byte $32   ; <2>
- - - - - - 0x009738 02:B728: 04        .byte $04   ; 
- - - - - - 0x009739 02:B729: 01        .byte $01   ; 
- - - - - - 0x00973A 02:B72A: 02        .byte $02   ; 
- D 0 - I - 0x00973B 02:B72B: 40        .byte $40   ; 
- D 0 - I - 0x00973C 02:B72C: 06        .byte $06   ; 
- D 0 - I - 0x00973D 02:B72D: 32        .byte $32   ; <2>
- D 0 - I - 0x00973E 02:B72E: 05        .byte $05   ; 
- D 0 - I - 0x00973F 02:B72F: 01        .byte $01   ; 
- D 0 - I - 0x009740 02:B730: 02        .byte $02   ; 
- - - - - - 0x009741 02:B731: FF        .byte $FF   ; 
- - - - - - 0x009742 02:B732: FF        .byte $FF   ; 
- D 0 - I - 0x009743 02:B733: 00        .byte $00   ; 
- D 0 - I - 0x009744 02:B734: 04        .byte $04   ; 
- D 0 - I - 0x009745 02:B735: 36        .byte $36   ; <6>
- D 0 - I - 0x009746 02:B736: 00        .byte $00   ; 
- D 0 - I - 0x009747 02:B737: 01        .byte $01   ; 
- D 0 - I - 0x009748 02:B738: 03        .byte $03   ; 
- - - - - - 0x009749 02:B739: FF        .byte $FF   ; 
- - - - - - 0x00974A 02:B73A: FF        .byte $FF   ; 
- D 0 - I - 0x00974B 02:B73B: 00        .byte $00   ; 
- D 0 - I - 0x00974C 02:B73C: 02        .byte $02   ; 
- D 0 - I - 0x00974D 02:B73D: 37        .byte $37   ; <7>
- D 0 - I - 0x00974E 02:B73E: 00        .byte $00   ; 
- D 0 - I - 0x00974F 02:B73F: FF        .byte $FF   ; 
- D 0 - I - 0x009750 02:B740: 04        .byte $04   ; 
- D 0 - I - 0x009751 02:B741: 20        .byte $20   ; 
- D 0 - I - 0x009752 02:B742: 03        .byte $03   ; 
- - - - - - 0x009753 02:B743: 37        .byte $37   ; <7>
- - - - - - 0x009754 02:B744: 01        .byte $01   ; 
- - - - - - 0x009755 02:B745: FF        .byte $FF   ; 
- - - - - - 0x009756 02:B746: 04        .byte $04   ; 
- D 0 - I - 0x009757 02:B747: 00        .byte $00   ; 
- D 0 - I - 0x009758 02:B748: 04        .byte $04   ; 
- D 0 - I - 0x009759 02:B749: 37        .byte $37   ; <7>
- D 0 - I - 0x00975A 02:B74A: 02        .byte $02   ; 
- D 0 - I - 0x00975B 02:B74B: FF        .byte $FF   ; 
- D 0 - I - 0x00975C 02:B74C: 04        .byte $04   ; 
- D 0 - I - 0x00975D 02:B74D: 00        .byte $00   ; 
- D 0 - I - 0x00975E 02:B74E: 08        .byte $08   ; 
- D 0 - I - 0x00975F 02:B74F: 37        .byte $37   ; <7>
- D 0 - I - 0x009760 02:B750: 04        .byte $04   ; 
- D 0 - I - 0x009761 02:B751: FF        .byte $FF   ; 
- D 0 - I - 0x009762 02:B752: 04        .byte $04   ; 
- - - - - - 0x009763 02:B753: FF        .byte $FF   ; 
- - - - - - 0x009764 02:B754: FF        .byte $FF   ; 
- D 0 - I - 0x009765 02:B755: 00        .byte $00   ; 
- D 0 - I - 0x009766 02:B756: 04        .byte $04   ; 
- - - - - - 0x009767 02:B757: 38        .byte $38   ; <8>
- - - - - - 0x009768 02:B758: 00        .byte $00   ; 
- - - - - - 0x009769 02:B759: 01        .byte $01   ; 
- - - - - - 0x00976A 02:B75A: 05        .byte $05   ; 
- D 0 - I - 0x00976B 02:B75B: 00        .byte $00   ; 
- D 0 - I - 0x00976C 02:B75C: 06        .byte $06   ; 
- D 0 - I - 0x00976D 02:B75D: 38        .byte $38   ; <8>
- D 0 - I - 0x00976E 02:B75E: 01        .byte $01   ; 
- D 0 - I - 0x00976F 02:B75F: 01        .byte $01   ; 
- D 0 - I - 0x009770 02:B760: 05        .byte $05   ; 
- - - - - - 0x009771 02:B761: FF        .byte $FF   ; 
- - - - - - 0x009772 02:B762: FF        .byte $FF   ; 
- D 0 - I - 0x009773 02:B763: 00        .byte $00   ; 
- D 0 - I - 0x009774 02:B764: 02        .byte $02   ; 
- - - - - - 0x009775 02:B765: 39        .byte $39   ; <9>
- - - - - - 0x009776 02:B766: 00        .byte $00   ; 
- - - - - - 0x009777 02:B767: FF        .byte $FF   ; 
- - - - - - 0x009778 02:B768: 06        .byte $06   ; 
- D 0 - I - 0x009779 02:B769: 00        .byte $00   ; 
- D 0 - I - 0x00977A 02:B76A: 04        .byte $04   ; 
- - - - - - 0x00977B 02:B76B: 39        .byte $39   ; <9>
- - - - - - 0x00977C 02:B76C: 01        .byte $01   ; 
- - - - - - 0x00977D 02:B76D: FF        .byte $FF   ; 
- - - - - - 0x00977E 02:B76E: 06        .byte $06   ; 
- D 0 - I - 0x00977F 02:B76F: 00        .byte $00   ; 
- D 0 - I - 0x009780 02:B770: 06        .byte $06   ; 
- D 0 - I - 0x009781 02:B771: 39        .byte $39   ; <9>
- D 0 - I - 0x009782 02:B772: 02        .byte $02   ; 
- D 0 - I - 0x009783 02:B773: FF        .byte $FF   ; 
- D 0 - I - 0x009784 02:B774: 06        .byte $06   ; 
- - - - - - 0x009785 02:B775: FF        .byte $FF   ; 
- - - - - - 0x009786 02:B776: FF        .byte $FF   ; 
- D 0 - I - 0x009787 02:B777: 20        .byte $20   ; 
- D 0 - I - 0x009788 02:B778: 02        .byte $02   ; 
- - - - - - 0x009789 02:B779: 39        .byte $39   ; <9>
- - - - - - 0x00978A 02:B77A: 00        .byte $00   ; 
- - - - - - 0x00978B 02:B77B: 01        .byte $01   ; 
- - - - - - 0x00978C 02:B77C: 07        .byte $07   ; 
- D 0 - I - 0x00978D 02:B77D: 00        .byte $00   ; 
- D 0 - I - 0x00978E 02:B77E: 03        .byte $03   ; 
- - - - - - 0x00978F 02:B77F: 39        .byte $39   ; <9>
- - - - - - 0x009790 02:B780: 01        .byte $01   ; 
- - - - - - 0x009791 02:B781: 01        .byte $01   ; 
- - - - - - 0x009792 02:B782: 07        .byte $07   ; 
- D 0 - I - 0x009793 02:B783: 00        .byte $00   ; 
- D 0 - I - 0x009794 02:B784: 05        .byte $05   ; 
- D 0 - I - 0x009795 02:B785: 39        .byte $39   ; <9>
- D 0 - I - 0x009796 02:B786: 02        .byte $02   ; 
- D 0 - I - 0x009797 02:B787: 01        .byte $01   ; 
- D 0 - I - 0x009798 02:B788: 07        .byte $07   ; 
- - - - - - 0x009799 02:B789: FF        .byte $FF   ; 
- - - - - - 0x00979A 02:B78A: FF        .byte $FF   ; 
- D 0 - I - 0x00979B 02:B78B: 30        .byte $30   ; <0>
- D 0 - I - 0x00979C 02:B78C: 02        .byte $02   ; 
- D 0 - I - 0x00979D 02:B78D: 26        .byte $26   ; 
- D 0 - I - 0x00979E 02:B78E: 00        .byte $00   ; 
- D 0 - I - 0x00979F 02:B78F: 01        .byte $01   ; 
- D 0 - I - 0x0097A0 02:B790: 08        .byte $08   ; 
- D 0 - I - 0x0097A1 02:B791: F0        .byte $F0   ; 
- D 0 - I - 0x0097A2 02:B792: 02        .byte $02   ; 
- D 0 - I - 0x0097A3 02:B793: 26        .byte $26   ; 
- D 0 - I - 0x0097A4 02:B794: 01        .byte $01   ; 
- D 0 - I - 0x0097A5 02:B795: 01        .byte $01   ; 
- D 0 - I - 0x0097A6 02:B796: 08        .byte $08   ; 
- D 0 - I - 0x0097A7 02:B797: 90        .byte $90   ; 
- D 0 - I - 0x0097A8 02:B798: 03        .byte $03   ; 
- D 0 - I - 0x0097A9 02:B799: 26        .byte $26   ; 
- D 0 - I - 0x0097AA 02:B79A: 02        .byte $02   ; 
- D 0 - I - 0x0097AB 02:B79B: 01        .byte $01   ; 
- D 0 - I - 0x0097AC 02:B79C: 08        .byte $08   ; 
- D 0 - I - 0x0097AD 02:B79D: E0        .byte $E0   ; 
- D 0 - I - 0x0097AE 02:B79E: 04        .byte $04   ; 
- D 0 - I - 0x0097AF 02:B79F: 24        .byte $24   ; 
- D 0 - I - 0x0097B0 02:B7A0: 00        .byte $00   ; 
- D 0 - I - 0x0097B1 02:B7A1: 01        .byte $01   ; 
- D 0 - I - 0x0097B2 02:B7A2: 09        .byte $09   ; 
- D 0 - I - 0x0097B3 02:B7A3: 30        .byte $30   ; <0>
- D 0 - I - 0x0097B4 02:B7A4: 05        .byte $05   ; 
- D 0 - I - 0x0097B5 02:B7A5: 24        .byte $24   ; 
- D 0 - I - 0x0097B6 02:B7A6: 00        .byte $00   ; 
- D 0 - I - 0x0097B7 02:B7A7: 01        .byte $01   ; 
- D 0 - I - 0x0097B8 02:B7A8: 0A        .byte $0A   ; 
- D 0 - I - 0x0097B9 02:B7A9: A0        .byte $A0   ; 
- D 0 - I - 0x0097BA 02:B7AA: 05        .byte $05   ; 
- D 0 - I - 0x0097BB 02:B7AB: 24        .byte $24   ; 
- D 0 - I - 0x0097BC 02:B7AC: 00        .byte $00   ; 
- D 0 - I - 0x0097BD 02:B7AD: 01        .byte $01   ; 
- D 0 - I - 0x0097BE 02:B7AE: 0B        .byte $0B   ; 
- D 0 - I - 0x0097BF 02:B7AF: 30        .byte $30   ; <0>
- D 0 - I - 0x0097C0 02:B7B0: 06        .byte $06   ; 
- D 0 - I - 0x0097C1 02:B7B1: 24        .byte $24   ; 
- D 0 - I - 0x0097C2 02:B7B2: 00        .byte $00   ; 
- D 0 - I - 0x0097C3 02:B7B3: 01        .byte $01   ; 
- D 0 - I - 0x0097C4 02:B7B4: 0C        .byte $0C   ; 
- D 0 - I - 0x0097C5 02:B7B5: 20        .byte $20   ; 
- D 0 - I - 0x0097C6 02:B7B6: 07        .byte $07   ; 
- D 0 - I - 0x0097C7 02:B7B7: 26        .byte $26   ; 
- D 0 - I - 0x0097C8 02:B7B8: 00        .byte $00   ; 
- D 0 - I - 0x0097C9 02:B7B9: 01        .byte $01   ; 
- D 0 - I - 0x0097CA 02:B7BA: 0D        .byte $0D   ; 
- D 0 - I - 0x0097CB 02:B7BB: F0        .byte $F0   ; 
- D 0 - I - 0x0097CC 02:B7BC: 07        .byte $07   ; 
- D 0 - I - 0x0097CD 02:B7BD: 26        .byte $26   ; 
- D 0 - I - 0x0097CE 02:B7BE: 01        .byte $01   ; 
- D 0 - I - 0x0097CF 02:B7BF: 01        .byte $01   ; 
- D 0 - I - 0x0097D0 02:B7C0: 0D        .byte $0D   ; 
- D 0 - I - 0x0097D1 02:B7C1: 60        .byte $60   ; 
- D 0 - I - 0x0097D2 02:B7C2: 09        .byte $09   ; 
- D 0 - I - 0x0097D3 02:B7C3: 26        .byte $26   ; 
- D 0 - I - 0x0097D4 02:B7C4: 02        .byte $02   ; 
- D 0 - I - 0x0097D5 02:B7C5: 01        .byte $01   ; 
- D 0 - I - 0x0097D6 02:B7C6: 0D        .byte $0D   ; 
- D 0 - I - 0x0097D7 02:B7C7: 90        .byte $90   ; 
- D 0 - I - 0x0097D8 02:B7C8: 09        .byte $09   ; 
- D 0 - I - 0x0097D9 02:B7C9: 24        .byte $24   ; 
- D 0 - I - 0x0097DA 02:B7CA: 00        .byte $00   ; 
- D 0 - I - 0x0097DB 02:B7CB: 01        .byte $01   ; 
- D 0 - I - 0x0097DC 02:B7CC: 0E        .byte $0E   ; 
- D 0 - I - 0x0097DD 02:B7CD: E0        .byte $E0   ; 
- D 0 - I - 0x0097DE 02:B7CE: 09        .byte $09   ; 
- D 0 - I - 0x0097DF 02:B7CF: 24        .byte $24   ; 
- D 0 - I - 0x0097E0 02:B7D0: 00        .byte $00   ; 
- D 0 - I - 0x0097E1 02:B7D1: 01        .byte $01   ; 
- D 0 - I - 0x0097E2 02:B7D2: 0F        .byte $0F   ; 
- D 0 - I - 0x0097E3 02:B7D3: B0        .byte $B0   ; 
- D 0 - I - 0x0097E4 02:B7D4: 0A        .byte $0A   ; 
- D 0 - I - 0x0097E5 02:B7D5: 29        .byte $29   ; 
- D 0 - I - 0x0097E6 02:B7D6: 00        .byte $00   ; 
- D 0 - I - 0x0097E7 02:B7D7: 01        .byte $01   ; 
- D 0 - I - 0x0097E8 02:B7D8: 10        .byte $10   ; 
- D 0 - I - 0x0097E9 02:B7D9: 90        .byte $90   ; 
- D 0 - I - 0x0097EA 02:B7DA: 0B        .byte $0B   ; 
- D 0 - I - 0x0097EB 02:B7DB: 29        .byte $29   ; 
- D 0 - I - 0x0097EC 02:B7DC: 01        .byte $01   ; 
- D 0 - I - 0x0097ED 02:B7DD: 01        .byte $01   ; 
- D 0 - I - 0x0097EE 02:B7DE: 10        .byte $10   ; 
- D 0 - I - 0x0097EF 02:B7DF: 30        .byte $30   ; <0>
- D 0 - I - 0x0097F0 02:B7E0: 0C        .byte $0C   ; 
- D 0 - I - 0x0097F1 02:B7E1: 29        .byte $29   ; 
- D 0 - I - 0x0097F2 02:B7E2: 02        .byte $02   ; 
- D 0 - I - 0x0097F3 02:B7E3: 01        .byte $01   ; 
- D 0 - I - 0x0097F4 02:B7E4: 10        .byte $10   ; 
- D 0 - I - 0x0097F5 02:B7E5: D0        .byte $D0   ; 
- D 0 - I - 0x0097F6 02:B7E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0097F7 02:B7E7: 29        .byte $29   ; 
- D 0 - I - 0x0097F8 02:B7E8: 03        .byte $03   ; 
- D 0 - I - 0x0097F9 02:B7E9: 01        .byte $01   ; 
- D 0 - I - 0x0097FA 02:B7EA: 10        .byte $10   ; 
- D 0 - I - 0x0097FB 02:B7EB: E0        .byte $E0   ; 
- D 0 - I - 0x0097FC 02:B7EC: 0D        .byte $0D   ; 
- D 0 - I - 0x0097FD 02:B7ED: 29        .byte $29   ; 
- D 0 - I - 0x0097FE 02:B7EE: 04        .byte $04   ; 
- D 0 - I - 0x0097FF 02:B7EF: 01        .byte $01   ; 
- D 0 - I - 0x009800 02:B7F0: 10        .byte $10   ; 
- D 0 - I - 0x009801 02:B7F1: F0        .byte $F0   ; 
- D 0 - I - 0x009802 02:B7F2: 0E        .byte $0E   ; 
- D 0 - I - 0x009803 02:B7F3: 29        .byte $29   ; 
- D 0 - I - 0x009804 02:B7F4: 05        .byte $05   ; 
- D 0 - I - 0x009805 02:B7F5: 01        .byte $01   ; 
- D 0 - I - 0x009806 02:B7F6: 10        .byte $10   ; 
- - - - - - 0x009807 02:B7F7: FF        .byte $FF   ; 
- - - - - - 0x009808 02:B7F8: FF        .byte $FF   ; 
- D 0 - I - 0x009809 02:B7F9: C0        .byte $C0   ; 
- D 0 - I - 0x00980A 02:B7FA: 04        .byte $04   ; 
- D 0 - I - 0x00980B 02:B7FB: 2C        .byte $2C   ; 
- D 0 - I - 0x00980C 02:B7FC: 00        .byte $00   ; 
- D 0 - I - 0x00980D 02:B7FD: FF        .byte $FF   ; 
- D 0 - I - 0x00980E 02:B7FE: 11        .byte $11   ; 
- - - - - - 0x00980F 02:B7FF: 60        .byte $60   ; 
- - - - - - 0x009810 02:B800: 06        .byte $06   ; 
- - - - - - 0x009811 02:B801: 2C        .byte $2C   ; 
- - - - - - 0x009812 02:B802: 02        .byte $02   ; 
- - - - - - 0x009813 02:B803: FF        .byte $FF   ; 
- - - - - - 0x009814 02:B804: 11        .byte $11   ; 
- - - - - - 0x009815 02:B805: FF        .byte $FF   ; 
- - - - - - 0x009816 02:B806: FF        .byte $FF   ; 
- D 0 - I - 0x009817 02:B807: C0        .byte $C0   ; 
- D 0 - I - 0x009818 02:B808: 01        .byte $01   ; 
- - - - - - 0x009819 02:B809: 2C        .byte $2C   ; 
- - - - - - 0x00981A 02:B80A: 00        .byte $00   ; 
- - - - - - 0x00981B 02:B80B: 01        .byte $01   ; 
- - - - - - 0x00981C 02:B80C: 12        .byte $12   ; 
- D 0 - I - 0x00981D 02:B80D: 60        .byte $60   ; 
- D 0 - I - 0x00981E 02:B80E: 03        .byte $03   ; 
- D 0 - I - 0x00981F 02:B80F: 2C        .byte $2C   ; 
- D 0 - I - 0x009820 02:B810: 02        .byte $02   ; 
- D 0 - I - 0x009821 02:B811: 01        .byte $01   ; 
- D 0 - I - 0x009822 02:B812: 12        .byte $12   ; 
- - - - - - 0x009823 02:B813: FF        .byte $FF   ; 
- - - - - - 0x009824 02:B814: FF        .byte $FF   ; 
- D 0 - I - 0x009825 02:B815: 60        .byte $60   ; 
- D 0 - I - 0x009826 02:B816: 01        .byte $01   ; 
- D 0 - I - 0x009827 02:B817: 2B        .byte $2B   ; 
- D 0 - I - 0x009828 02:B818: 01        .byte $01   ; 
- D 0 - I - 0x009829 02:B819: FF        .byte $FF   ; 
- D 0 - I - 0x00982A 02:B81A: 13        .byte $13   ; 
- D 0 - I - 0x00982B 02:B81B: C0        .byte $C0   ; 
- D 0 - I - 0x00982C 02:B81C: 06        .byte $06   ; 
- D 0 - I - 0x00982D 02:B81D: 2B        .byte $2B   ; 
- D 0 - I - 0x00982E 02:B81E: 01        .byte $01   ; 
- D 0 - I - 0x00982F 02:B81F: FF        .byte $FF   ; 
- D 0 - I - 0x009830 02:B820: 14        .byte $14   ; 
- - - - - - 0x009831 02:B821: FF        .byte $FF   ; 
- - - - - - 0x009832 02:B822: FF        .byte $FF   ; 
- D 0 - I - 0x009833 02:B823: C0        .byte $C0   ; 
- D 0 - I - 0x009834 02:B824: 00        .byte $00   ; 
- D 0 - I - 0x009835 02:B825: 2D        .byte $2D   ; 
- D 0 - I - 0x009836 02:B826: 00        .byte $00   ; 
- D 0 - I - 0x009837 02:B827: 01        .byte $01   ; 
- D 0 - I - 0x009838 02:B828: 15        .byte $15   ; 
- D 0 - I - 0x009839 02:B829: C0        .byte $C0   ; 
- D 0 - I - 0x00983A 02:B82A: 02        .byte $02   ; 
- - - - - - 0x00983B 02:B82B: 2D        .byte $2D   ; 
- - - - - - 0x00983C 02:B82C: 02        .byte $02   ; 
- - - - - - 0x00983D 02:B82D: 01        .byte $01   ; 
- - - - - - 0x00983E 02:B82E: 15        .byte $15   ; 
- D 0 - I - 0x00983F 02:B82F: C0        .byte $C0   ; 
- D 0 - I - 0x009840 02:B830: 03        .byte $03   ; 
- D 0 - I - 0x009841 02:B831: 2D        .byte $2D   ; 
- D 0 - I - 0x009842 02:B832: 03        .byte $03   ; 
- D 0 - I - 0x009843 02:B833: 01        .byte $01   ; 
- D 0 - I - 0x009844 02:B834: 15        .byte $15   ; 
- D 0 - I - 0x009845 02:B835: 60        .byte $60   ; 
- D 0 - I - 0x009846 02:B836: 06        .byte $06   ; 
- D 0 - I - 0x009847 02:B837: 2D        .byte $2D   ; 
- D 0 - I - 0x009848 02:B838: 06        .byte $06   ; 
- D 0 - I - 0x009849 02:B839: 01        .byte $01   ; 
- D 0 - I - 0x00984A 02:B83A: 15        .byte $15   ; 
- - - - - - 0x00984B 02:B83B: FF        .byte $FF   ; 
- - - - - - 0x00984C 02:B83C: FF        .byte $FF   ; 
- D 0 - I - 0x00984D 02:B83D: F0        .byte $F0   ; 
- D 0 - I - 0x00984E 02:B83E: 01        .byte $01   ; 
- D 0 - I - 0x00984F 02:B83F: 3C        .byte $3C   ; 
- D 0 - I - 0x009850 02:B840: 00        .byte $00   ; 
- D 0 - I - 0x009851 02:B841: FF        .byte $FF   ; 
- D 0 - I - 0x009852 02:B842: 16        .byte $16   ; 
- - - - - - 0x009853 02:B843: FF        .byte $FF   ; 
- D 0 - I - 0x009854 02:B844: F0        .byte $F0   ; 
- D 0 - I - 0x009855 02:B845: 01        .byte $01   ; 
- D 0 - I - 0x009856 02:B846: 3D        .byte $3D   ; 
- D 0 - I - 0x009857 02:B847: 00        .byte $00   ; 
- D 0 - I - 0x009858 02:B848: FF        .byte $FF   ; 
- D 0 - I - 0x009859 02:B849: 17        .byte $17   ; 
- D 0 - I - 0x00985A 02:B84A: F0        .byte $F0   ; 
- D 0 - I - 0x00985B 02:B84B: 02        .byte $02   ; 
- D 0 - I - 0x00985C 02:B84C: 3D        .byte $3D   ; 
- D 0 - I - 0x00985D 02:B84D: 01        .byte $01   ; 
- D 0 - I - 0x00985E 02:B84E: FF        .byte $FF   ; 
- D 0 - I - 0x00985F 02:B84F: 17        .byte $17   ; 
- D 0 - I - 0x009860 02:B850: FF        .byte $FF   ; 
- D 0 - I - 0x009861 02:B851: 80        .byte $80   ; 
- D 0 - I - 0x009862 02:B852: 01        .byte $01   ; 
- D 0 - I - 0x009863 02:B853: 3D        .byte $3D   ; 
- D 0 - I - 0x009864 02:B854: 00        .byte $00   ; 
- D 0 - I - 0x009865 02:B855: FF        .byte $FF   ; 
- D 0 - I - 0x009866 02:B856: 18        .byte $18   ; 
- D 0 - I - 0x009867 02:B857: F0        .byte $F0   ; 
- D 0 - I - 0x009868 02:B858: 01        .byte $01   ; 
- D 0 - I - 0x009869 02:B859: 3D        .byte $3D   ; 
- D 0 - I - 0x00986A 02:B85A: 01        .byte $01   ; 
- D 0 - I - 0x00986B 02:B85B: FF        .byte $FF   ; 
- D 0 - I - 0x00986C 02:B85C: 18        .byte $18   ; 
- D 0 - I - 0x00986D 02:B85D: FF        .byte $FF   ; 
- D 0 - I - 0x00986E 02:B85E: C0        .byte $C0   ; 
- D 0 - I - 0x00986F 02:B85F: 00        .byte $00   ; 
- D 0 - I - 0x009870 02:B860: 3C        .byte $3C   ; 
- D 0 - I - 0x009871 02:B861: 00        .byte $00   ; 
- D 0 - I - 0x009872 02:B862: 01        .byte $01   ; 
- D 0 - I - 0x009873 02:B863: 19        .byte $19   ; 
- D 0 - I - 0x009874 02:B864: FF        .byte $FF   ; 
- D 0 - I - 0x009875 02:B865: C0        .byte $C0   ; 
- D 0 - I - 0x009876 02:B866: 00        .byte $00   ; 
- D 0 - I - 0x009877 02:B867: 3C        .byte $3C   ; 
- D 0 - I - 0x009878 02:B868: 00        .byte $00   ; 
- D 0 - I - 0x009879 02:B869: FF        .byte $FF   ; 
- D 0 - I - 0x00987A 02:B86A: 1A        .byte $1A   ; 
- D 0 - I - 0x00987B 02:B86B: F0        .byte $F0   ; 
- D 0 - I - 0x00987C 02:B86C: 02        .byte $02   ; 
- D 0 - I - 0x00987D 02:B86D: 3C        .byte $3C   ; 
- D 0 - I - 0x00987E 02:B86E: 00        .byte $00   ; 
- D 0 - I - 0x00987F 02:B86F: 01        .byte $01   ; 
- D 0 - I - 0x009880 02:B870: 1B        .byte $1B   ; 
- D 0 - I - 0x009881 02:B871: FF        .byte $FF   ; 
- D 0 - I - 0x009882 02:B872: 80        .byte $80   ; 
- D 0 - I - 0x009883 02:B873: 01        .byte $01   ; 
- D 0 - I - 0x009884 02:B874: 3D        .byte $3D   ; 
- D 0 - I - 0x009885 02:B875: 00        .byte $00   ; 
- D 0 - I - 0x009886 02:B876: 01        .byte $01   ; 
- D 0 - I - 0x009887 02:B877: 1C        .byte $1C   ; 
- D 0 - I - 0x009888 02:B878: F0        .byte $F0   ; 
- D 0 - I - 0x009889 02:B879: 01        .byte $01   ; 
- D 0 - I - 0x00988A 02:B87A: 3D        .byte $3D   ; 
- D 0 - I - 0x00988B 02:B87B: 01        .byte $01   ; 
- D 0 - I - 0x00988C 02:B87C: 01        .byte $01   ; 
- D 0 - I - 0x00988D 02:B87D: 1C        .byte $1C   ; 
- D 0 - I - 0x00988E 02:B87E: FF        .byte $FF   ; 
- D 0 - I - 0x00988F 02:B87F: C0        .byte $C0   ; 
- D 0 - I - 0x009890 02:B880: 00        .byte $00   ; 
- D 0 - I - 0x009891 02:B881: 3C        .byte $3C   ; 
- D 0 - I - 0x009892 02:B882: 00        .byte $00   ; 
- D 0 - I - 0x009893 02:B883: 01        .byte $01   ; 
- D 0 - I - 0x009894 02:B884: 1D        .byte $1D   ; 
- D 0 - I - 0x009895 02:B885: FF        .byte $FF   ; 
- D 0 - I - 0x009896 02:B886: C0        .byte $C0   ; 
- D 0 - I - 0x009897 02:B887: 00        .byte $00   ; 
- D 0 - I - 0x009898 02:B888: 3C        .byte $3C   ; 
- D 0 - I - 0x009899 02:B889: 00        .byte $00   ; 
- D 0 - I - 0x00989A 02:B88A: 00        .byte $00   ; 
- D 0 - I - 0x00989B 02:B88B: 1E        .byte $1E   ; 
- - - - - - 0x00989C 02:B88C: FF        .byte $FF   ; 
- D 0 - I - 0x00989D 02:B88D: F0        .byte $F0   ; 
- D 0 - I - 0x00989E 02:B88E: 02        .byte $02   ; 
- D 0 - I - 0x00989F 02:B88F: 3C        .byte $3C   ; 
- D 0 - I - 0x0098A0 02:B890: 00        .byte $00   ; 
- D 0 - I - 0x0098A1 02:B891: 01        .byte $01   ; 
- D 0 - I - 0x0098A2 02:B892: 1F        .byte $1F   ; 
- - - - - - 0x0098A3 02:B893: FF        .byte $FF   ; 
- D 0 - I - 0x0098A4 02:B894: F0        .byte $F0   ; 
- D 0 - I - 0x0098A5 02:B895: 04        .byte $04   ; 
- D 0 - I - 0x0098A6 02:B896: 3C        .byte $3C   ; 
- D 0 - I - 0x0098A7 02:B897: 00        .byte $00   ; 
- D 0 - I - 0x0098A8 02:B898: FF        .byte $FF   ; 
- D 0 - I - 0x0098A9 02:B899: 20        .byte $20   ; 
- - - - - - 0x0098AA 02:B89A: FF        .byte $FF   ; 
- D 0 - I - 0x0098AB 02:B89B: F0        .byte $F0   ; 
- D 0 - I - 0x0098AC 02:B89C: 02        .byte $02   ; 
- - - - - - 0x0098AD 02:B89D: 3D        .byte $3D   ; 
- - - - - - 0x0098AE 02:B89E: 00        .byte $00   ; 
- - - - - - 0x0098AF 02:B89F: 01        .byte $01   ; 
- - - - - - 0x0098B0 02:B8A0: 21        .byte $21   ; 
- D 0 - I - 0x0098B1 02:B8A1: F0        .byte $F0   ; 
- D 0 - I - 0x0098B2 02:B8A2: 03        .byte $03   ; 
- D 0 - I - 0x0098B3 02:B8A3: 3D        .byte $3D   ; 
- D 0 - I - 0x0098B4 02:B8A4: 01        .byte $01   ; 
- D 0 - I - 0x0098B5 02:B8A5: 01        .byte $01   ; 
- D 0 - I - 0x0098B6 02:B8A6: 21        .byte $21   ; 
- - - - - - 0x0098B7 02:B8A7: FF        .byte $FF   ; 
- D 0 - I - 0x0098B8 02:B8A8: F8        .byte $F8   ; 
- D 0 - I - 0x0098B9 02:B8A9: 01        .byte $01   ; 
- D 0 - I - 0x0098BA 02:B8AA: 3D        .byte $3D   ; 
- D 0 - I - 0x0098BB 02:B8AB: 00        .byte $00   ; 
- D 0 - I - 0x0098BC 02:B8AC: FF        .byte $FF   ; 
- D 0 - I - 0x0098BD 02:B8AD: 22        .byte $22   ; 
- D 0 - I - 0x0098BE 02:B8AE: F8        .byte $F8   ; 
- D 0 - I - 0x0098BF 02:B8AF: 02        .byte $02   ; 
- D 0 - I - 0x0098C0 02:B8B0: 3D        .byte $3D   ; 
- D 0 - I - 0x0098C1 02:B8B1: 01        .byte $01   ; 
- D 0 - I - 0x0098C2 02:B8B2: FF        .byte $FF   ; 
- D 0 - I - 0x0098C3 02:B8B3: 22        .byte $22   ; 
- D 0 - I - 0x0098C4 02:B8B4: 80        .byte $80   ; 
- D 0 - I - 0x0098C5 02:B8B5: 05        .byte $05   ; 
- D 0 - I - 0x0098C6 02:B8B6: 3D        .byte $3D   ; 
- D 0 - I - 0x0098C7 02:B8B7: 00        .byte $00   ; 
- D 0 - I - 0x0098C8 02:B8B8: FF        .byte $FF   ; 
- D 0 - I - 0x0098C9 02:B8B9: 23        .byte $23   ; 
- D 0 - I - 0x0098CA 02:B8BA: F0        .byte $F0   ; 
- D 0 - I - 0x0098CB 02:B8BB: 05        .byte $05   ; 
- D 0 - I - 0x0098CC 02:B8BC: 3D        .byte $3D   ; 
- D 0 - I - 0x0098CD 02:B8BD: 01        .byte $01   ; 
- D 0 - I - 0x0098CE 02:B8BE: FF        .byte $FF   ; 
- D 0 - I - 0x0098CF 02:B8BF: 23        .byte $23   ; 
- - - - - - 0x0098D0 02:B8C0: FF        .byte $FF   ; 
- D 0 - I - 0x0098D1 02:B8C1: 80        .byte $80   ; 
- D 0 - I - 0x0098D2 02:B8C2: 04        .byte $04   ; 
- D 0 - I - 0x0098D3 02:B8C3: 3D        .byte $3D   ; 
- D 0 - I - 0x0098D4 02:B8C4: 00        .byte $00   ; 
- D 0 - I - 0x0098D5 02:B8C5: 01        .byte $01   ; 
- D 0 - I - 0x0098D6 02:B8C6: 24        .byte $24   ; 
- D 0 - I - 0x0098D7 02:B8C7: F0        .byte $F0   ; 
- D 0 - I - 0x0098D8 02:B8C8: 04        .byte $04   ; 
- D 0 - I - 0x0098D9 02:B8C9: 3D        .byte $3D   ; 
- D 0 - I - 0x0098DA 02:B8CA: 01        .byte $01   ; 
- D 0 - I - 0x0098DB 02:B8CB: 01        .byte $01   ; 
- D 0 - I - 0x0098DC 02:B8CC: 24        .byte $24   ; 
- D 0 - I - 0x0098DD 02:B8CD: F0        .byte $F0   ; 
- D 0 - I - 0x0098DE 02:B8CE: 05        .byte $05   ; 
- D 0 - I - 0x0098DF 02:B8CF: 3C        .byte $3C   ; 
- D 0 - I - 0x0098E0 02:B8D0: 00        .byte $00   ; 
- D 0 - I - 0x0098E1 02:B8D1: 01        .byte $01   ; 
- D 0 - I - 0x0098E2 02:B8D2: 25        .byte $25   ; 
- - - - - - 0x0098E3 02:B8D3: FF        .byte $FF   ; 
- D 0 - I - 0x0098E4 02:B8D4: F0        .byte $F0   ; 
- D 0 - I - 0x0098E5 02:B8D5: 05        .byte $05   ; 
- D 0 - I - 0x0098E6 02:B8D6: 3D        .byte $3D   ; 
- D 0 - I - 0x0098E7 02:B8D7: 00        .byte $00   ; 
- D 0 - I - 0x0098E8 02:B8D8: 01        .byte $01   ; 
- D 0 - I - 0x0098E9 02:B8D9: 26        .byte $26   ; 
- D 0 - I - 0x0098EA 02:B8DA: F0        .byte $F0   ; 
- D 0 - I - 0x0098EB 02:B8DB: 06        .byte $06   ; 
- D 0 - I - 0x0098EC 02:B8DC: 3D        .byte $3D   ; 
- D 0 - I - 0x0098ED 02:B8DD: 01        .byte $01   ; 
- D 0 - I - 0x0098EE 02:B8DE: 01        .byte $01   ; 
- D 0 - I - 0x0098EF 02:B8DF: 26        .byte $26   ; 
- - - - - - 0x0098F0 02:B8E0: FF        .byte $FF   ; 
- D 0 - I - 0x0098F1 02:B8E1: F0        .byte $F0   ; 
- D 0 - I - 0x0098F2 02:B8E2: 04        .byte $04   ; 
- D 0 - I - 0x0098F3 02:B8E3: 3E        .byte $3E   ; 
- D 0 - I - 0x0098F4 02:B8E4: 00        .byte $00   ; 
- D 0 - I - 0x0098F5 02:B8E5: 01        .byte $01   ; 
- D 0 - I - 0x0098F6 02:B8E6: 27        .byte $27   ; 
- D 0 - I - 0x0098F7 02:B8E7: F0        .byte $F0   ; 
- D 0 - I - 0x0098F8 02:B8E8: 05        .byte $05   ; 
- D 0 - I - 0x0098F9 02:B8E9: 3E        .byte $3E   ; 
- D 0 - I - 0x0098FA 02:B8EA: 02        .byte $02   ; 
- D 0 - I - 0x0098FB 02:B8EB: 01        .byte $01   ; 
- D 0 - I - 0x0098FC 02:B8EC: 27        .byte $27   ; 
- - - - - - 0x0098FD 02:B8ED: FF        .byte $FF   ; 
- D 0 - I - 0x0098FE 02:B8EE: F0        .byte $F0   ; 
- D 0 - I - 0x0098FF 02:B8EF: 01        .byte $01   ; 
- - - - - - 0x009900 02:B8F0: 3D        .byte $3D   ; 
- - - - - - 0x009901 02:B8F1: 00        .byte $00   ; 
- - - - - - 0x009902 02:B8F2: FF        .byte $FF   ; 
- - - - - - 0x009903 02:B8F3: 28        .byte $28   ; 
- D 0 - I - 0x009904 02:B8F4: F0        .byte $F0   ; 
- D 0 - I - 0x009905 02:B8F5: 02        .byte $02   ; 
- D 0 - I - 0x009906 02:B8F6: 3D        .byte $3D   ; 
- D 0 - I - 0x009907 02:B8F7: 01        .byte $01   ; 
- D 0 - I - 0x009908 02:B8F8: FF        .byte $FF   ; 
- D 0 - I - 0x009909 02:B8F9: 28        .byte $28   ; 
- - - - - - 0x00990A 02:B8FA: FF        .byte $FF   ; 
- D 0 - I - 0x00990B 02:B8FB: F0        .byte $F0   ; 
- D 0 - I - 0x00990C 02:B8FC: 02        .byte $02   ; 
- D 0 - I - 0x00990D 02:B8FD: 3F        .byte $3F   ; 
- D 0 - I - 0x00990E 02:B8FE: 00        .byte $00   ; 
- D 0 - I - 0x00990F 02:B8FF: 01        .byte $01   ; 
- D 0 - I - 0x009910 02:B900: 29        .byte $29   ; 
- D 0 - I - 0x009911 02:B901: F0        .byte $F0   ; 
- D 0 - I - 0x009912 02:B902: 03        .byte $03   ; 
- D 0 - I - 0x009913 02:B903: 3F        .byte $3F   ; 
- D 0 - I - 0x009914 02:B904: 01        .byte $01   ; 
- D 0 - I - 0x009915 02:B905: 01        .byte $01   ; 
- D 0 - I - 0x009916 02:B906: 29        .byte $29   ; 
- D 0 - I - 0x009917 02:B907: 80        .byte $80   ; 
- D 0 - I - 0x009918 02:B908: 05        .byte $05   ; 
- D 0 - I - 0x009919 02:B909: 3F        .byte $3F   ; 
- D 0 - I - 0x00991A 02:B90A: 03        .byte $03   ; 
- D 0 - I - 0x00991B 02:B90B: 01        .byte $01   ; 
- D 0 - I - 0x00991C 02:B90C: 29        .byte $29   ; 
- D 0 - I - 0x00991D 02:B90D: F0        .byte $F0   ; 
- D 0 - I - 0x00991E 02:B90E: 05        .byte $05   ; 
- D 0 - I - 0x00991F 02:B90F: 3F        .byte $3F   ; 
- D 0 - I - 0x009920 02:B910: 04        .byte $04   ; 
- D 0 - I - 0x009921 02:B911: 01        .byte $01   ; 
- D 0 - I - 0x009922 02:B912: 29        .byte $29   ; 
- D 0 - I - 0x009923 02:B913: 80        .byte $80   ; 
- D 0 - I - 0x009924 02:B914: 06        .byte $06   ; 
- D 0 - I - 0x009925 02:B915: 3F        .byte $3F   ; 
- D 0 - I - 0x009926 02:B916: 05        .byte $05   ; 
- D 0 - I - 0x009927 02:B917: 01        .byte $01   ; 
- D 0 - I - 0x009928 02:B918: 29        .byte $29   ; 
- D 0 - I - 0x009929 02:B919: F0        .byte $F0   ; 
- D 0 - I - 0x00992A 02:B91A: 06        .byte $06   ; 
- D 0 - I - 0x00992B 02:B91B: 3F        .byte $3F   ; 
- D 0 - I - 0x00992C 02:B91C: 06        .byte $06   ; 
- D 0 - I - 0x00992D 02:B91D: 01        .byte $01   ; 
- D 0 - I - 0x00992E 02:B91E: 29        .byte $29   ; 
- - - - - - 0x00992F 02:B91F: FF        .byte $FF   ; 
- D 0 - I - 0x009930 02:B920: F0        .byte $F0   ; 
- D 0 - I - 0x009931 02:B921: 05        .byte $05   ; 
- D 0 - I - 0x009932 02:B922: 3E        .byte $3E   ; 
- D 0 - I - 0x009933 02:B923: 00        .byte $00   ; 
- D 0 - I - 0x009934 02:B924: FF        .byte $FF   ; 
- D 0 - I - 0x009935 02:B925: 2A        .byte $2A   ; 
- D 0 - I - 0x009936 02:B926: F0        .byte $F0   ; 
- D 0 - I - 0x009937 02:B927: 07        .byte $07   ; 
- D 0 - I - 0x009938 02:B928: 3E        .byte $3E   ; 
- D 0 - I - 0x009939 02:B929: 02        .byte $02   ; 
- D 0 - I - 0x00993A 02:B92A: FF        .byte $FF   ; 
- D 0 - I - 0x00993B 02:B92B: 2A        .byte $2A   ; 
- - - - - - 0x00993C 02:B92C: FF        .byte $FF   ; 
- D 0 - I - 0x00993D 02:B92D: F0        .byte $F0   ; 
- D 0 - I - 0x00993E 02:B92E: 02        .byte $02   ; 
- D 0 - I - 0x00993F 02:B92F: 40        .byte $40   ; 
- D 0 - I - 0x009940 02:B930: 00        .byte $00   ; 
- D 0 - I - 0x009941 02:B931: 01        .byte $01   ; 
- D 0 - I - 0x009942 02:B932: 2B        .byte $2B   ; 
- D 0 - I - 0x009943 02:B933: F0        .byte $F0   ; 
- D 0 - I - 0x009944 02:B934: 03        .byte $03   ; 
- D 0 - I - 0x009945 02:B935: 40        .byte $40   ; 
- D 0 - I - 0x009946 02:B936: 01        .byte $01   ; 
- D 0 - I - 0x009947 02:B937: 01        .byte $01   ; 
- D 0 - I - 0x009948 02:B938: 2B        .byte $2B   ; 
- D 0 - I - 0x009949 02:B939: F0        .byte $F0   ; 
- D 0 - I - 0x00994A 02:B93A: 04        .byte $04   ; 
- D 0 - I - 0x00994B 02:B93B: 40        .byte $40   ; 
- D 0 - I - 0x00994C 02:B93C: 03        .byte $03   ; 
- D 0 - I - 0x00994D 02:B93D: 01        .byte $01   ; 
- D 0 - I - 0x00994E 02:B93E: 2B        .byte $2B   ; 
- D 0 - I - 0x00994F 02:B93F: F0        .byte $F0   ; 
- D 0 - I - 0x009950 02:B940: 07        .byte $07   ; 
- D 0 - I - 0x009951 02:B941: 3E        .byte $3E   ; 
- D 0 - I - 0x009952 02:B942: 00        .byte $00   ; 
- D 0 - I - 0x009953 02:B943: 01        .byte $01   ; 
- D 0 - I - 0x009954 02:B944: 2C        .byte $2C   ; 
- D 0 - I - 0x009955 02:B945: F0        .byte $F0   ; 
- D 0 - I - 0x009956 02:B946: 08        .byte $08   ; 
- D 0 - I - 0x009957 02:B947: 3E        .byte $3E   ; 
- D 0 - I - 0x009958 02:B948: 02        .byte $02   ; 
- D 0 - I - 0x009959 02:B949: 01        .byte $01   ; 
- D 0 - I - 0x00995A 02:B94A: 2C        .byte $2C   ; 
- - - - - - 0x00995B 02:B94B: FF        .byte $FF   ; 
- D 0 - I - 0x00995C 02:B94C: 80        .byte $80   ; 
- D 0 - I - 0x00995D 02:B94D: 03        .byte $03   ; 
- - - - - - 0x00995E 02:B94E: 41        .byte $41   ; <A>
- - - - - - 0x00995F 02:B94F: 00        .byte $00   ; 
- - - - - - 0x009960 02:B950: FF        .byte $FF   ; 
- - - - - - 0x009961 02:B951: 2D        .byte $2D   ; 
- D 0 - I - 0x009962 02:B952: F0        .byte $F0   ; 
- D 0 - I - 0x009963 02:B953: 03        .byte $03   ; 
- D 0 - I - 0x009964 02:B954: 41        .byte $41   ; <A>
- D 0 - I - 0x009965 02:B955: 01        .byte $01   ; 
- D 0 - I - 0x009966 02:B956: FF        .byte $FF   ; 
- D 0 - I - 0x009967 02:B957: 2D        .byte $2D   ; 
- D 0 - I - 0x009968 02:B958: F0        .byte $F0   ; 
- D 0 - I - 0x009969 02:B959: 04        .byte $04   ; 
- D 0 - I - 0x00996A 02:B95A: 41        .byte $41   ; <A>
- D 0 - I - 0x00996B 02:B95B: 02        .byte $02   ; 
- D 0 - I - 0x00996C 02:B95C: FF        .byte $FF   ; 
- D 0 - I - 0x00996D 02:B95D: 2D        .byte $2D   ; 
- D 0 - I - 0x00996E 02:B95E: F0        .byte $F0   ; 
- D 0 - I - 0x00996F 02:B95F: 05        .byte $05   ; 
- D 0 - I - 0x009970 02:B960: 41        .byte $41   ; <A>
- D 0 - I - 0x009971 02:B961: 03        .byte $03   ; 
- D 0 - I - 0x009972 02:B962: FF        .byte $FF   ; 
- D 0 - I - 0x009973 02:B963: 2D        .byte $2D   ; 
- - - - - - 0x009974 02:B964: FF        .byte $FF   ; 
- D 0 - I - 0x009975 02:B965: F0        .byte $F0   ; 
- D 0 - I - 0x009976 02:B966: 01        .byte $01   ; 
- - - - - - 0x009977 02:B967: 3D        .byte $3D   ; 
- - - - - - 0x009978 02:B968: 00        .byte $00   ; 
- - - - - - 0x009979 02:B969: 01        .byte $01   ; 
- - - - - - 0x00997A 02:B96A: 2E        .byte $2E   ; 
- D 0 - I - 0x00997B 02:B96B: F0        .byte $F0   ; 
- D 0 - I - 0x00997C 02:B96C: 02        .byte $02   ; 
- D 0 - I - 0x00997D 02:B96D: 3D        .byte $3D   ; 
- D 0 - I - 0x00997E 02:B96E: 01        .byte $01   ; 
- D 0 - I - 0x00997F 02:B96F: 01        .byte $01   ; 
- D 0 - I - 0x009980 02:B970: 2E        .byte $2E   ; 
- D 0 - I - 0x009981 02:B971: F0        .byte $F0   ; 
- D 0 - I - 0x009982 02:B972: 04        .byte $04   ; 
- D 0 - I - 0x009983 02:B973: 3D        .byte $3D   ; 
- D 0 - I - 0x009984 02:B974: 00        .byte $00   ; 
- D 0 - I - 0x009985 02:B975: FF        .byte $FF   ; 
- D 0 - I - 0x009986 02:B976: 2F        .byte $2F   ; 
- D 0 - I - 0x009987 02:B977: F0        .byte $F0   ; 
- D 0 - I - 0x009988 02:B978: 05        .byte $05   ; 
- D 0 - I - 0x009989 02:B979: 3D        .byte $3D   ; 
- D 0 - I - 0x00998A 02:B97A: 01        .byte $01   ; 
- D 0 - I - 0x00998B 02:B97B: FF        .byte $FF   ; 
- D 0 - I - 0x00998C 02:B97C: 2F        .byte $2F   ; 
- - - - - - 0x00998D 02:B97D: FF        .byte $FF   ; 
- - - - - - 0x00998E 02:B97E: F0        .byte $F0   ; 
- - - - - - 0x00998F 02:B97F: 04        .byte $04   ; 
- - - - - - 0x009990 02:B980: 3C        .byte $3C   ; 
- - - - - - 0x009991 02:B981: 00        .byte $00   ; 
- - - - - - 0x009992 02:B982: FF        .byte $FF   ; 
- - - - - - 0x009993 02:B983: 30        .byte $30   ; <0>
- - - - - - 0x009994 02:B984: FF        .byte $FF   ; 
- D 0 - I - 0x009995 02:B985: C0        .byte $C0   ; 
- D 0 - I - 0x009996 02:B986: 00        .byte $00   ; 
- D 0 - I - 0x009997 02:B987: 3C        .byte $3C   ; 
- D 0 - I - 0x009998 02:B988: 00        .byte $00   ; 
- D 0 - I - 0x009999 02:B989: FF        .byte $FF   ; 
- D 0 - I - 0x00999A 02:B98A: 31        .byte $31   ; <1>
- - - - - - 0x00999B 02:B98B: FF        .byte $FF   ; 
- D 0 - I - 0x00999C 02:B98C: F0        .byte $F0   ; 
- D 0 - I - 0x00999D 02:B98D: 02        .byte $02   ; 
- D 0 - I - 0x00999E 02:B98E: 3C        .byte $3C   ; 
- D 0 - I - 0x00999F 02:B98F: 00        .byte $00   ; 
- D 0 - I - 0x0099A0 02:B990: FF        .byte $FF   ; 
- D 0 - I - 0x0099A1 02:B991: 32        .byte $32   ; <2>
- D 0 - I - 0x0099A2 02:B992: F0        .byte $F0   ; 
- D 0 - I - 0x0099A3 02:B993: 04        .byte $04   ; 
- D 0 - I - 0x0099A4 02:B994: 3C        .byte $3C   ; 
- D 0 - I - 0x0099A5 02:B995: 00        .byte $00   ; 
- D 0 - I - 0x0099A6 02:B996: 01        .byte $01   ; 
- D 0 - I - 0x0099A7 02:B997: 33        .byte $33   ; <3>
- D 0 - I - 0x0099A8 02:B998: F0        .byte $F0   ; 
- D 0 - I - 0x0099A9 02:B999: 07        .byte $07   ; 
- D 0 - I - 0x0099AA 02:B99A: 3C        .byte $3C   ; 
- D 0 - I - 0x0099AB 02:B99B: 00        .byte $00   ; 
- D 0 - I - 0x0099AC 02:B99C: 01        .byte $01   ; 
- D 0 - I - 0x0099AD 02:B99D: 34        .byte $34   ; <4>
- - - - - - 0x0099AE 02:B99E: FF        .byte $FF   ; 
- D 0 - I - 0x0099AF 02:B99F: C0        .byte $C0   ; 
- D 0 - I - 0x0099B0 02:B9A0: 01        .byte $01   ; 
- - - - - - 0x0099B1 02:B9A1: 3C        .byte $3C   ; 
- - - - - - 0x0099B2 02:B9A2: 00        .byte $00   ; 
- - - - - - 0x0099B3 02:B9A3: 01        .byte $01   ; 
- - - - - - 0x0099B4 02:B9A4: 35        .byte $35   ; <5>
- D 0 - I - 0x0099B5 02:B9A5: F0        .byte $F0   ; 
- D 0 - I - 0x0099B6 02:B9A6: 03        .byte $03   ; 
- D 0 - I - 0x0099B7 02:B9A7: 3D        .byte $3D   ; 
- D 0 - I - 0x0099B8 02:B9A8: 00        .byte $00   ; 
- D 0 - I - 0x0099B9 02:B9A9: FF        .byte $FF   ; 
- D 0 - I - 0x0099BA 02:B9AA: 36        .byte $36   ; <6>
- D 0 - I - 0x0099BB 02:B9AB: F0        .byte $F0   ; 
- D 0 - I - 0x0099BC 02:B9AC: 04        .byte $04   ; 
- D 0 - I - 0x0099BD 02:B9AD: 3D        .byte $3D   ; 
- D 0 - I - 0x0099BE 02:B9AE: 01        .byte $01   ; 
- D 0 - I - 0x0099BF 02:B9AF: FF        .byte $FF   ; 
- D 0 - I - 0x0099C0 02:B9B0: 36        .byte $36   ; <6>
- D 0 - I - 0x0099C1 02:B9B1: F0        .byte $F0   ; 
- D 0 - I - 0x0099C2 02:B9B2: 07        .byte $07   ; 
- D 0 - I - 0x0099C3 02:B9B3: 3C        .byte $3C   ; 
- D 0 - I - 0x0099C4 02:B9B4: 00        .byte $00   ; 
- D 0 - I - 0x0099C5 02:B9B5: FF        .byte $FF   ; 
- D 0 - I - 0x0099C6 02:B9B6: 37        .byte $37   ; <7>
- - - - - - 0x0099C7 02:B9B7: FF        .byte $FF   ; 
- D 0 - I - 0x0099C8 02:B9B8: F0        .byte $F0   ; 
- D 0 - I - 0x0099C9 02:B9B9: 02        .byte $02   ; 
- D 0 - I - 0x0099CA 02:B9BA: 3C        .byte $3C   ; 
- D 0 - I - 0x0099CB 02:B9BB: 00        .byte $00   ; 
- D 0 - I - 0x0099CC 02:B9BC: FF        .byte $FF   ; 
- D 0 - I - 0x0099CD 02:B9BD: 38        .byte $38   ; <8>
- D 0 - I - 0x0099CE 02:B9BE: F0        .byte $F0   ; 
- D 0 - I - 0x0099CF 02:B9BF: 04        .byte $04   ; 
- D 0 - I - 0x0099D0 02:B9C0: 3C        .byte $3C   ; 
- D 0 - I - 0x0099D1 02:B9C1: 00        .byte $00   ; 
- D 0 - I - 0x0099D2 02:B9C2: 01        .byte $01   ; 
- D 0 - I - 0x0099D3 02:B9C3: 39        .byte $39   ; <9>
- - - - - - 0x0099D4 02:B9C4: FF        .byte $FF   ; 
- D 0 - I - 0x0099D5 02:B9C5: F0        .byte $F0   ; 
- D 0 - I - 0x0099D6 02:B9C6: 01        .byte $01   ; 
- D 0 - I - 0x0099D7 02:B9C7: 3C        .byte $3C   ; 
- D 0 - I - 0x0099D8 02:B9C8: 00        .byte $00   ; 
- D 0 - I - 0x0099D9 02:B9C9: 01        .byte $01   ; 
- D 0 - I - 0x0099DA 02:B9CA: 3A        .byte $3A   ; 
- - - - - - 0x0099DB 02:B9CB: FF        .byte $FF   ; 
- D 0 - I - 0x0099DC 02:B9CC: 80        .byte $80   ; 
- D 0 - I - 0x0099DD 02:B9CD: 04        .byte $04   ; 
- D 0 - I - 0x0099DE 02:B9CE: 3D        .byte $3D   ; 
- D 0 - I - 0x0099DF 02:B9CF: 00        .byte $00   ; 
- D 0 - I - 0x0099E0 02:B9D0: FF        .byte $FF   ; 
- D 0 - I - 0x0099E1 02:B9D1: 3B        .byte $3B   ; 
- D 0 - I - 0x0099E2 02:B9D2: F0        .byte $F0   ; 
- D 0 - I - 0x0099E3 02:B9D3: 04        .byte $04   ; 
- D 0 - I - 0x0099E4 02:B9D4: 3D        .byte $3D   ; 
- D 0 - I - 0x0099E5 02:B9D5: 01        .byte $01   ; 
- D 0 - I - 0x0099E6 02:B9D6: FF        .byte $FF   ; 
- D 0 - I - 0x0099E7 02:B9D7: 3B        .byte $3B   ; 
- - - - - - 0x0099E8 02:B9D8: FF        .byte $FF   ; 
- D 0 - I - 0x0099E9 02:B9D9: F0        .byte $F0   ; 
- D 0 - I - 0x0099EA 02:B9DA: 01        .byte $01   ; 
- D 0 - I - 0x0099EB 02:B9DB: 3C        .byte $3C   ; 
- D 0 - I - 0x0099EC 02:B9DC: 00        .byte $00   ; 
- D 0 - I - 0x0099ED 02:B9DD: 01        .byte $01   ; 
- D 0 - I - 0x0099EE 02:B9DE: 3C        .byte $3C   ; 
- - - - - - 0x0099EF 02:B9DF: FF        .byte $FF   ; 
- D 0 - I - 0x0099F0 02:B9E0: F0        .byte $F0   ; 
- D 0 - I - 0x0099F1 02:B9E1: 01        .byte $01   ; 
- D 0 - I - 0x0099F2 02:B9E2: 3C        .byte $3C   ; 
- D 0 - I - 0x0099F3 02:B9E3: 00        .byte $00   ; 
- D 0 - I - 0x0099F4 02:B9E4: FF        .byte $FF   ; 
- D 0 - I - 0x0099F5 02:B9E5: 3D        .byte $3D   ; 
- - - - - - 0x0099F6 02:B9E6: FF        .byte $FF   ; 
- D 0 - I - 0x0099F7 02:B9E7: FF        .byte $FF   ; 
- D 0 - I - 0x0099F8 02:B9E8: 3E        .byte $3E   ; 
- D 0 - I - 0x0099F9 02:B9E9: FE        .byte $FE   ; 
- D 0 - I - 0x0099FA 02:B9EA: DF        .byte $DF   ; 
- D 0 - I - 0x0099FB 02:B9EB: FF        .byte $FF   ; 
- D 0 - I - 0x0099FC 02:B9EC: 6E        .byte $6E   ; <n>
- D 0 - I - 0x0099FD 02:B9ED: FF        .byte $FF   ; 
- D 0 - I - 0x0099FE 02:B9EE: E9        .byte $E9   ; 
- D 0 - I - 0x0099FF 02:B9EF: FF        .byte $FF   ; 
- D 0 - I - 0x009A00 02:B9F0: DE        .byte $DE   ; 
- - - - - - 0x009A01 02:B9F1: FF        .byte $FF   ; 
- D 0 - I - 0x009A02 02:B9F2: E9        .byte $E9   ; 
- - - - - - 0x009A03 02:B9F3: FE        .byte $FE   ; 
- D 0 - I - 0x009A04 02:B9F4: DE        .byte $DE   ; 
- - - - - - 0x009A05 02:B9F5: FF        .byte $FF   ; 
- D 0 - I - 0x009A06 02:B9F6: B7        .byte $B7   ; 
- D 0 - I - 0x009A07 02:B9F7: FF        .byte $FF   ; 
- D 0 - I - 0x009A08 02:B9F8: DA        .byte $DA   ; 
- - - - - - 0x009A09 02:B9F9: FE        .byte $FE   ; 
- D 0 - I - 0x009A0A 02:B9FA: F7        .byte $F7   ; 
- - - - - - 0x009A0B 02:B9FB: FE        .byte $FE   ; 
- - - - - - 0x009A0C 02:B9FC: FE        .byte $FE   ; 
- - - - - - 0x009A0D 02:B9FD: FE        .byte $FE   ; 
- - - - - - 0x009A0E 02:B9FE: D7        .byte $D7   ; 
- - - - - - 0x009A0F 02:B9FF: FF        .byte $FF   ; 
- D 0 - I - 0x009A10 02:BA00: EB        .byte $EB   ; 
- D 0 - I - 0x009A11 02:BA01: FF        .byte $FF   ; 
- D 0 - I - 0x009A12 02:BA02: 75        .byte $75   ; <u>
- - - - - - 0x009A13 02:BA03: FE        .byte $FE   ; 
- - - - - - 0x009A14 02:BA04: AF        .byte $AF   ; 
- - - - - - 0x009A15 02:BA05: FF        .byte $FF   ; 
- D 0 - I - 0x009A16 02:BA06: F4        .byte $F4   ; 
- - - - - - 0x009A17 02:BA07: FE        .byte $FE   ; 
- D 0 - I - 0x009A18 02:BA08: EA        .byte $EA   ; 
- - - - - - 0x009A19 02:BA09: FE        .byte $FE   ; 
- D 0 - I - 0x009A1A 02:BA0A: EA        .byte $EA   ; 
- D 0 - I - 0x009A1B 02:BA0B: FF        .byte $FF   ; 
- D 0 - I - 0x009A1C 02:BA0C: A6        .byte $A6   ; 
- - - - - - 0x009A1D 02:BA0D: FE        .byte $FE   ; 
- D 0 - I - 0x009A1E 02:BA0E: 7E        .byte $7E   ; 
- - - - - - 0x009A1F 02:BA0F: FE        .byte $FE   ; 
- D 0 - I - 0x009A20 02:BA10: B9        .byte $B9   ; 
- D 0 - I - 0x009A21 02:BA11: FE        .byte $FE   ; 
- D 0 - I - 0x009A22 02:BA12: A7        .byte $A7   ; 
- - - - - - 0x009A23 02:BA13: FF        .byte $FF   ; 
- D 0 - I - 0x009A24 02:BA14: 6A        .byte $6A   ; <j>
- - - - - - 0x009A25 02:BA15: FE        .byte $FE   ; 
- D 0 - I - 0x009A26 02:BA16: 7A        .byte $7A   ; <z>
- D 0 - I - 0x009A27 02:BA17: FF        .byte $FF   ; 
- D 0 - I - 0x009A28 02:BA18: AB        .byte $AB   ; 
- - - - - - 0x009A29 02:BA19: FE        .byte $FE   ; 
- D 0 - I - 0x009A2A 02:BA1A: EE        .byte $EE   ; 
- - - - - - 0x009A2B 02:BA1B: FF        .byte $FF   ; 
- D 0 - I - 0x009A2C 02:BA1C: 2E        .byte $2E   ; 
- D 0 - I - 0x009A2D 02:BA1D: FF        .byte $FF   ; 
- D 0 - I - 0x009A2E 02:BA1E: 17        .byte $17   ; 
- - - - - - 0x009A2F 02:BA1F: FE        .byte $FE   ; 
- D 0 - I - 0x009A30 02:BA20: EA        .byte $EA   ; 
- D 0 - I - 0x009A31 02:BA21: FF        .byte $FF   ; 
- D 0 - I - 0x009A32 02:BA22: 37        .byte $37   ; <7>
- - - - - - 0x009A33 02:BA23: FE        .byte $FE   ; 
- - - - - - 0x009A34 02:BA24: 9F        .byte $9F   ; 
- - - - - - 0x009A35 02:BA25: FE        .byte $FE   ; 
- D 0 - I - 0x009A36 02:BA26: 7E        .byte $7E   ; 
- - - - - - 0x009A37 02:BA27: FE        .byte $FE   ; 
- D 0 - I - 0x009A38 02:BA28: EB        .byte $EB   ; 
- - - - - - 0x009A39 02:BA29: FE        .byte $FE   ; 
- D 0 - I - 0x009A3A 02:BA2A: 7B        .byte $7B   ; 
- - - - - - 0x009A3B 02:BA2B: FE        .byte $FE   ; 
- D 0 - I - 0x009A3C 02:BA2C: EE        .byte $EE   ; 
- D 0 - I - 0x009A3D 02:BA2D: FE        .byte $FE   ; 
- D 0 - I - 0x009A3E 02:BA2E: BB        .byte $BB   ; 
- - - - - - 0x009A3F 02:BA2F: FF        .byte $FF   ; 
- D 0 - I - 0x009A40 02:BA30: 2E        .byte $2E   ; 
- - - - - - 0x009A41 02:BA31: FF        .byte $FF   ; 
- D 0 - I - 0x009A42 02:BA32: 5D        .byte $5D   ; 
- D 0 - I - 0x009A43 02:BA33: FE        .byte $FE   ; 
- D 0 - I - 0x009A44 02:BA34: B7        .byte $B7   ; 
- - - - - - 0x009A45 02:BA35: FF        .byte $FF   ; 
- D 0 - I - 0x009A46 02:BA36: 6A        .byte $6A   ; <j>
- - - - - - 0x009A47 02:BA37: FE        .byte $FE   ; 
- D 0 - I - 0x009A48 02:BA38: AB        .byte $AB   ; 
- D 0 - I - 0x009A49 02:BA39: FF        .byte $FF   ; 
- D 0 - I - 0x009A4A 02:BA3A: AE        .byte $AE   ; 
- - - - - - 0x009A4B 02:BA3B: FF        .byte $FF   ; 
- D 0 - I - 0x009A4C 02:BA3C: AB        .byte $AB   ; 
- D 0 - I - 0x009A4D 02:BA3D: FE        .byte $FE   ; 
- D 0 - I - 0x009A4E 02:BA3E: AE        .byte $AE   ; 
- D 0 - I - 0x009A4F 02:BA3F: FF        .byte $FF   ; 
- D 0 - I - 0x009A50 02:BA40: AE        .byte $AE   ; 
- - - - - - 0x009A51 02:BA41: FF        .byte $FF   ; 
- D 0 - I - 0x009A52 02:BA42: AB        .byte $AB   ; 
- - - - - - 0x009A53 02:BA43: FE        .byte $FE   ; 
- D 0 - I - 0x009A54 02:BA44: AF        .byte $AF   ; 
- - - - - - 0x009A55 02:BA45: FF        .byte $FF   ; 
- - - - - - 0x009A56 02:BA46: BA        .byte $BA   ; 
- - - - - - 0x009A57 02:BA47: FF        .byte $FF   ; 
- - - - - - 0x009A58 02:BA48: 57        .byte $57   ; <W>
- - - - - - 0x009A59 02:BA49: FF        .byte $FF   ; 
- D 0 - I - 0x009A5A 02:BA4A: 5B        .byte $5B   ; 
- - - - - - 0x009A5B 02:BA4B: FE        .byte $FE   ; 
- D 0 - I - 0x009A5C 02:BA4C: 5F        .byte $5F   ; 
- - - - - - 0x009A5D 02:BA4D: FF        .byte $FF   ; 
- D 0 - I - 0x009A5E 02:BA4E: 76        .byte $76   ; <v>
- - - - - - 0x009A5F 02:BA4F: FE        .byte $FE   ; 
- D 0 - I - 0x009A60 02:BA50: 5F        .byte $5F   ; 
- - - - - - 0x009A61 02:BA51: FF        .byte $FF   ; 
- - - - - - 0x009A62 02:BA52: 7A        .byte $7A   ; <z>
- - - - - - 0x009A63 02:BA53: FE        .byte $FE   ; 
- D 0 - I - 0x009A64 02:BA54: BB        .byte $BB   ; 
- - - - - - 0x009A65 02:BA55: FF        .byte $FF   ; 
- D 0 - I - 0x009A66 02:BA56: 7A        .byte $7A   ; <z>
- - - - - - 0x009A67 02:BA57: FF        .byte $FF   ; 
- D 0 - I - 0x009A68 02:BA58: 75        .byte $75   ; <u>
- - - - - - 0x009A69 02:BA59: FE        .byte $FE   ; 
- D 0 - I - 0x009A6A 02:BA5A: 5F        .byte $5F   ; 
- - - - - - 0x009A6B 02:BA5B: FF        .byte $FF   ; 
- D 0 - I - 0x009A6C 02:BA5C: BA        .byte $BA   ; 
- D 0 - I - 0x009A6D 02:BA5D: FE        .byte $FE   ; 
- D 0 - I - 0x009A6E 02:BA5E: 77        .byte $77   ; <w>
- - - - - - 0x009A6F 02:BA5F: FF        .byte $FF   ; 
- D 0 - I - 0x009A70 02:BA60: BA        .byte $BA   ; 
- - - - - - 0x009A71 02:BA61: FF        .byte $FF   ; 
- D 0 - I - 0x009A72 02:BA62: 73        .byte $73   ; <s>
- D 0 - I - 0x009A73 02:BA63: C0        .byte $C0   ; 
- D 0 - I - 0x009A74 02:BA64: C1        .byte $C1   ; 
- - - - - - 0x009A75 02:BA65: C2        .byte $C2   ; 
- D 0 - I - 0x009A76 02:BA66: C3        .byte $C3   ; 
- - - - - - 0x009A77 02:BA67: C4        .byte $C4   ; 
- - - - - - 0x009A78 02:BA68: C5        .byte $C5   ; 
- - - - - - 0x009A79 02:BA69: 00        .byte $00   ; 
- - - - - - 0x009A7A 02:BA6A: C6        .byte $C6   ; 
- D 0 - I - 0x009A7B 02:BA6B: C7        .byte $C7   ; 
- - - - - - 0x009A7C 02:BA6C: 00        .byte $00   ; 
- - - - - - 0x009A7D 02:BA6D: C8        .byte $C8   ; 
- - - - - - 0x009A7E 02:BA6E: 00        .byte $00   ; 
- - - - - - 0x009A7F 02:BA6F: C9        .byte $C9   ; 
- - - - - - 0x009A80 02:BA70: CA        .byte $CA   ; 
- D 0 - I - 0x009A81 02:BA71: CB        .byte $CB   ; 
- D 0 - I - 0x009A82 02:BA72: CC        .byte $CC   ; 
- - - - - - 0x009A83 02:BA73: CD        .byte $CD   ; 
- D 0 - I - 0x009A84 02:BA74: CE        .byte $CE   ; 
- - - - - - 0x009A85 02:BA75: 00        .byte $00   ; 
- - - - - - 0x009A86 02:BA76: CF        .byte $CF   ; 
- D 0 - I - 0x009A87 02:BA77: D0        .byte $D0   ; 
- - - - - - 0x009A88 02:BA78: D1        .byte $D1   ; 
- D 0 - I - 0x009A89 02:BA79: D2        .byte $D2   ; 
- - - - - - 0x009A8A 02:BA7A: D3        .byte $D3   ; 
- - - - - - 0x009A8B 02:BA7B: D4        .byte $D4   ; 
- D 0 - I - 0x009A8C 02:BA7C: D5        .byte $D5   ; 
- - - - - - 0x009A8D 02:BA7D: D6        .byte $D6   ; 
- - - - - - 0x009A8E 02:BA7E: D7        .byte $D7   ; 
- - - - - - 0x009A8F 02:BA7F: D8        .byte $D8   ; 
- - - - - - 0x009A90 02:BA80: D9        .byte $D9   ; 
- D 0 - I - 0x009A91 02:BA81: DA        .byte $DA   ; 
- D 0 - I - 0x009A92 02:BA82: DB        .byte $DB   ; 
- - - - - - 0x009A93 02:BA83: DC        .byte $DC   ; 
- - - - - - 0x009A94 02:BA84: DD        .byte $DD   ; 
- - - - - - 0x009A95 02:BA85: DE        .byte $DE   ; 
- D 0 - I - 0x009A96 02:BA86: DF        .byte $DF   ; 
- D 0 - I - 0x009A97 02:BA87: E0        .byte $E0   ; 
- D 0 - I - 0x009A98 02:BA88: E1        .byte $E1   ; 
- - - - - - 0x009A99 02:BA89: E2        .byte $E2   ; 
- - - - - - 0x009A9A 02:BA8A: E3        .byte $E3   ; 
- - - - - - 0x009A9B 02:BA8B: E4        .byte $E4   ; 
- - - - - - 0x009A9C 02:BA8C: E5        .byte $E5   ; 
- - - - - - 0x009A9D 02:BA8D: E6        .byte $E6   ; 
- D 0 - I - 0x009A9E 02:BA8E: E7        .byte $E7   ; 
- - - - - - 0x009A9F 02:BA8F: E8        .byte $E8   ; 
- D 0 - I - 0x009AA0 02:BA90: E9        .byte $E9   ; 
- - - - - - 0x009AA1 02:BA91: EA        .byte $EA   ; 
- - - - - - 0x009AA2 02:BA92: 00        .byte $00   ; 
- - - - - - 0x009AA3 02:BA93: EB        .byte $EB   ; 
- - - - - - 0x009AA4 02:BA94: EC        .byte $EC   ; 
- - - - - - 0x009AA5 02:BA95: 00        .byte $00   ; 
- - - - - - 0x009AA6 02:BA96: ED        .byte $ED   ; 
- - - - - - 0x009AA7 02:BA97: 00        .byte $00   ; 
- - - - - - 0x009AA8 02:BA98: EE        .byte $EE   ; 
- - - - - - 0x009AA9 02:BA99: 00        .byte $00   ; 
- - - - - - 0x009AAA 02:BA9A: EF        .byte $EF   ; 
- - - - - - 0x009AAB 02:BA9B: F0        .byte $F0   ; 
- - - - - - 0x009AAC 02:BA9C: 00        .byte $00   ; 
- - - - - - 0x009AAD 02:BA9D: F1        .byte $F1   ; 
- - - - - - 0x009AAE 02:BA9E: F2        .byte $F2   ; 
- - - - - - 0x009AAF 02:BA9F: 00        .byte $00   ; 
- - - - - - 0x009AB0 02:BAA0: 00        .byte $00   ; 
- - - - - - 0x009AB1 02:BAA1: F3        .byte $F3   ; 
- - - - - - 0x009AB2 02:BAA2: A4        .byte $A4   ; 
- - - - - - 0x009AB3 02:BAA3: A5        .byte $A5   ; 
- - - - - - 0x009AB4 02:BAA4: A6        .byte $A6   ; 
- D 0 - I - 0x009AB5 02:BAA5: A7        .byte $A7   ; 
- - - - - - 0x009AB6 02:BAA6: A8        .byte $A8   ; 
- - - - - - 0x009AB7 02:BAA7: A9        .byte $A9   ; 
- D 0 - I - 0x009AB8 02:BAA8: AA        .byte $AA   ; 
- - - - - - 0x009AB9 02:BAA9: AB        .byte $AB   ; 
- - - - - - 0x009ABA 02:BAAA: AC        .byte $AC   ; 
- - - - - - 0x009ABB 02:BAAB: AD        .byte $AD   ; 
- - - - - - 0x009ABC 02:BAAC: AE        .byte $AE   ; 
- - - - - - 0x009ABD 02:BAAD: AF        .byte $AF   ; 
- - - - - - 0x009ABE 02:BAAE: B0        .byte $B0   ; 
- - - - - - 0x009ABF 02:BAAF: B1        .byte $B1   ; 
- - - - - - 0x009AC0 02:BAB0: B2        .byte $B2   ; 
- - - - - - 0x009AC1 02:BAB1: B3        .byte $B3   ; 
- - - - - - 0x009AC2 02:BAB2: B4        .byte $B4   ; 
- - - - - - 0x009AC3 02:BAB3: B5        .byte $B5   ; 
- - - - - - 0x009AC4 02:BAB4: B6        .byte $B6   ; 
- D 0 - I - 0x009AC5 02:BAB5: B7        .byte $B7   ; 
- D 0 - I - 0x009AC6 02:BAB6: B8        .byte $B8   ; 
- D 0 - I - 0x009AC7 02:BAB7: B9        .byte $B9   ; 
- - - - - - 0x009AC8 02:BAB8: BA        .byte $BA   ; 
- - - - - - 0x009AC9 02:BAB9: BB        .byte $BB   ; 
- D 0 - I - 0x009ACA 02:BABA: BC        .byte $BC   ; 
- - - - - - 0x009ACB 02:BABB: BD        .byte $BD   ; 
- - - - - - 0x009ACC 02:BABC: 00        .byte $00   ; 
- D 0 - I - 0x009ACD 02:BABD: BE        .byte $BE   ; 
- - - - - - 0x009ACE 02:BABE: BF        .byte $BF   ; 
- - - - - - 0x009ACF 02:BABF: F4        .byte $F4   ; 
- - - - - - 0x009AD0 02:BAC0: F5        .byte $F5   ; 
- D 0 - I - 0x009AD1 02:BAC1: F6        .byte $F6   ; 
- - - - - - 0x009AD2 02:BAC2: 00        .byte $00   ; 
- D 0 - I - 0x009AD3 02:BAC3: F7        .byte $F7   ; 
- D 0 - I - 0x009AD4 02:BAC4: F8        .byte $F8   ; 
- D 0 - I - 0x009AD5 02:BAC5: F9        .byte $F9   ; 
- D 0 - I - 0x009AD6 02:BAC6: FA        .byte $FA   ; 
- - - - - - 0x009AD7 02:BAC7: FB        .byte $FB   ; 
- - - - - - 0x009AD8 02:BAC8: 00        .byte $00   ; 
- - - - - - 0x009AD9 02:BAC9: FC        .byte $FC   ; 
- D 0 - I - 0x009ADA 02:BACA: FD        .byte $FD   ; 
- - - - - - 0x009ADB 02:BACB: FE        .byte $FE   ; 
- - - - - - 0x009ADC 02:BACC: 00        .byte $00   ; 
- - - - - - 0x009ADD 02:BACD: 24        .byte $24   ; 
- - - - - - 0x009ADE 02:BACE: 25        .byte $25   ; 
- - - - - - 0x009ADF 02:BACF: 00        .byte $00   ; 
- - - - - - 0x009AE0 02:BAD0: 26        .byte $26   ; 
- D 0 - I - 0x009AE1 02:BAD1: 27        .byte $27   ; 
- - - - - - 0x009AE2 02:BAD2: 28        .byte $28   ; 
- D 0 - I - 0x009AE3 02:BAD3: 29        .byte $29   ; 
- - - - - - 0x009AE4 02:BAD4: 2A        .byte $2A   ; 
- - - - - - 0x009AE5 02:BAD5: 2B        .byte $2B   ; 
- - - - - - 0x009AE6 02:BAD6: 2C        .byte $2C   ; 
- D 0 - I - 0x009AE7 02:BAD7: 2D        .byte $2D   ; 
- - - - - - 0x009AE8 02:BAD8: 2E        .byte $2E   ; 
- - - - - - 0x009AE9 02:BAD9: 2F        .byte $2F   ; 
- - - - - - 0x009AEA 02:BADA: 30        .byte $30   ; <0>
- - - - - - 0x009AEB 02:BADB: 31        .byte $31   ; <1>
- - - - - - 0x009AEC 02:BADC: 32        .byte $32   ; <2>
- - - - - - 0x009AED 02:BADD: 33        .byte $33   ; <3>
- - - - - - 0x009AEE 02:BADE: 34        .byte $34   ; <4>
- - - - - - 0x009AEF 02:BADF: 35        .byte $35   ; <5>
- - - - - - 0x009AF0 02:BAE0: 36        .byte $36   ; <6>
- - - - - - 0x009AF1 02:BAE1: 37        .byte $37   ; <7>
- - - - - - 0x009AF2 02:BAE2: 38        .byte $38   ; <8>
- - - - - - 0x009AF3 02:BAE3: 39        .byte $39   ; <9>
- - - - - - 0x009AF4 02:BAE4: 3A        .byte $3A   ; 
- D 0 - I - 0x009AF5 02:BAE5: 3B        .byte $3B   ; 
- - - - - - 0x009AF6 02:BAE6: 3C        .byte $3C   ; 
- - - - - - 0x009AF7 02:BAE7: 3D        .byte $3D   ; 
- D 0 - I - 0x009AF8 02:BAE8: 3E        .byte $3E   ; 
- D 0 - I - 0x009AF9 02:BAE9: 00        .byte $00   ; 
- D 0 - I - 0x009AFA 02:BAEA: 00        .byte $00   ; 
- D 0 - I - 0x009AFB 02:BAEB: 00        .byte $00   ; 
- D 0 - I - 0x009AFC 02:BAEC: 00        .byte $00   ; 
- D 0 - I - 0x009AFD 02:BAED: 00        .byte $00   ; 
- D 0 - I - 0x009AFE 02:BAEE: 00        .byte $00   ; 
- D 0 - I - 0x009AFF 02:BAEF: 00        .byte $00   ; 
- D 0 - I - 0x009B00 02:BAF0: 00        .byte $00   ; 
- D 0 - I - 0x009B01 02:BAF1: 00        .byte $00   ; 
- D 0 - I - 0x009B02 02:BAF2: 00        .byte $00   ; 
- D 0 - I - 0x009B03 02:BAF3: 00        .byte $00   ; 
- D 0 - I - 0x009B04 02:BAF4: 00        .byte $00   ; 
- D 0 - I - 0x009B05 02:BAF5: 00        .byte $00   ; 
- D 0 - I - 0x009B06 02:BAF6: 00        .byte $00   ; 
- D 0 - I - 0x009B07 02:BAF7: 00        .byte $00   ; 
- D 0 - I - 0x009B08 02:BAF8: 00        .byte $00   ; 
- D 0 - I - 0x009B09 02:BAF9: 00        .byte $00   ; 
- D 0 - I - 0x009B0A 02:BAFA: 00        .byte $00   ; 
- D 0 - I - 0x009B0B 02:BAFB: 00        .byte $00   ; 
- D 0 - I - 0x009B0C 02:BAFC: 00        .byte $00   ; 
- D 0 - I - 0x009B0D 02:BAFD: 00        .byte $00   ; 
- D 0 - I - 0x009B0E 02:BAFE: 00        .byte $00   ; 
- D 0 - I - 0x009B0F 02:BAFF: 00        .byte $00   ; 
- D 0 - I - 0x009B10 02:BB00: 00        .byte $00   ; 
- D 0 - I - 0x009B11 02:BB01: 00        .byte $00   ; 
- D 0 - I - 0x009B12 02:BB02: 00        .byte $00   ; 
- D 0 - I - 0x009B13 02:BB03: 00        .byte $00   ; 
- D 0 - I - 0x009B14 02:BB04: 00        .byte $00   ; 
- D 0 - I - 0x009B15 02:BB05: 00        .byte $00   ; 
- D 0 - I - 0x009B16 02:BB06: 7E        .byte $7E   ; 
- D 0 - I - 0x009B17 02:BB07: 00        .byte $00   ; 
- D 0 - I - 0x009B18 02:BB08: 00        .byte $00   ; 
- D 0 - I - 0x009B19 02:BB09: 00        .byte $00   ; 
- D 0 - I - 0x009B1A 02:BB0A: 00        .byte $00   ; 
- D 0 - I - 0x009B1B 02:BB0B: 00        .byte $00   ; 
- D 0 - I - 0x009B1C 02:BB0C: 00        .byte $00   ; 
- D 0 - I - 0x009B1D 02:BB0D: 00        .byte $00   ; 
- D 0 - I - 0x009B1E 02:BB0E: 00        .byte $00   ; 
- D 0 - I - 0x009B1F 02:BB0F: 7E        .byte $7E   ; 
- D 0 - I - 0x009B20 02:BB10: 7E        .byte $7E   ; 
- D 0 - I - 0x009B21 02:BB11: 07        .byte $07   ; 
- D 0 - I - 0x009B22 02:BB12: 08        .byte $08   ; 
- D 0 - I - 0x009B23 02:BB13: 09        .byte $09   ; 
- D 0 - I - 0x009B24 02:BB14: 0A        .byte $0A   ; 
- D 0 - I - 0x009B25 02:BB15: 39        .byte $39   ; <9>
- D 0 - I - 0x009B26 02:BB16: 00        .byte $00   ; 
- D 0 - I - 0x009B27 02:BB17: 05        .byte $05   ; 
- D 0 - I - 0x009B28 02:BB18: 04        .byte $04   ; 
- D 0 - I - 0x009B29 02:BB19: 07        .byte $07   ; 
- D 0 - I - 0x009B2A 02:BB1A: 2A        .byte $2A   ; 
- D 0 - I - 0x009B2B 02:BB1B: 00        .byte $00   ; 
- D 0 - I - 0x009B2C 02:BB1C: 2F        .byte $2F   ; 
- D 0 - I - 0x009B2D 02:BB1D: 22        .byte $22   ; 
- D 0 - I - 0x009B2E 02:BB1E: 3F        .byte $3F   ; 
- D 0 - I - 0x009B2F 02:BB1F: 34        .byte $34   ; <4>
- D 0 - I - 0x009B30 02:BB20: 1B        .byte $1B   ; 
- D 0 - I - 0x009B31 02:BB21: 34        .byte $34   ; <4>
- D 0 - I - 0x009B32 02:BB22: 11        .byte $11   ; 
- D 0 - I - 0x009B33 02:BB23: 34        .byte $34   ; <4>
- D 0 - I - 0x009B34 02:BB24: 32        .byte $32   ; <2>
- D 0 - I - 0x009B35 02:BB25: 00        .byte $00   ; 
- D 0 - I - 0x009B36 02:BB26: 00        .byte $00   ; 
- D 0 - I - 0x009B37 02:BB27: 00        .byte $00   ; 
- D 0 - I - 0x009B38 02:BB28: 00        .byte $00   ; 
- D 0 - I - 0x009B39 02:BB29: 00        .byte $00   ; 
- D 0 - I - 0x009B3A 02:BB2A: 00        .byte $00   ; 
- D 0 - I - 0x009B3B 02:BB2B: 00        .byte $00   ; 
- D 0 - I - 0x009B3C 02:BB2C: 00        .byte $00   ; 
- D 0 - I - 0x009B3D 02:BB2D: 00        .byte $00   ; 
- D 0 - I - 0x009B3E 02:BB2E: 00        .byte $00   ; 
- D 0 - I - 0x009B3F 02:BB2F: 00        .byte $00   ; 
- D 0 - I - 0x009B40 02:BB30: 00        .byte $00   ; 
- D 0 - I - 0x009B41 02:BB31: 00        .byte $00   ; 
- D 0 - I - 0x009B42 02:BB32: 00        .byte $00   ; 
- D 0 - I - 0x009B43 02:BB33: 00        .byte $00   ; 
- D 0 - I - 0x009B44 02:BB34: 7E        .byte $7E   ; 
- D 0 - I - 0x009B45 02:BB35: 00        .byte $00   ; 
- D 0 - I - 0x009B46 02:BB36: 00        .byte $00   ; 
- D 0 - I - 0x009B47 02:BB37: 00        .byte $00   ; 
- D 0 - I - 0x009B48 02:BB38: 00        .byte $00   ; 
- D 0 - I - 0x009B49 02:BB39: 1F        .byte $1F   ; 
- D 0 - I - 0x009B4A 02:BB3A: 36        .byte $36   ; <6>
- D 0 - I - 0x009B4B 02:BB3B: 19        .byte $19   ; 
- D 0 - I - 0x009B4C 02:BB3C: 00        .byte $00   ; 
- D 0 - I - 0x009B4D 02:BB3D: 1F        .byte $1F   ; 
- D 0 - I - 0x009B4E 02:BB3E: 30        .byte $30   ; <0>
- D 0 - I - 0x009B4F 02:BB3F: 2B        .byte $2B   ; 
- D 0 - I - 0x009B50 02:BB40: 39        .byte $39   ; <9>
- D 0 - I - 0x009B51 02:BB41: 00        .byte $00   ; 
- D 0 - I - 0x009B52 02:BB42: 35        .byte $35   ; <5>
- D 0 - I - 0x009B53 02:BB43: 3E        .byte $3E   ; 
- D 0 - I - 0x009B54 02:BB44: 3F        .byte $3F   ; 
- D 0 - I - 0x009B55 02:BB45: 38        .byte $38   ; <8>
- D 0 - I - 0x009B56 02:BB46: 00        .byte $00   ; 
- D 0 - I - 0x009B57 02:BB47: 37        .byte $37   ; <7>
- D 0 - I - 0x009B58 02:BB48: 2E        .byte $2E   ; 
- D 0 - I - 0x009B59 02:BB49: 27        .byte $27   ; 
- D 0 - I - 0x009B5A 02:BB4A: 11        .byte $11   ; 
- D 0 - I - 0x009B5B 02:BB4B: 15        .byte $15   ; 
- D 0 - I - 0x009B5C 02:BB4C: 60        .byte $60   ; 
- D 0 - I - 0x009B5D 02:BB4D: 00        .byte $00   ; 
- D 0 - I - 0x009B5E 02:BB4E: 00        .byte $00   ; 
- D 0 - I - 0x009B5F 02:BB4F: 00        .byte $00   ; 
- D 0 - I - 0x009B60 02:BB50: 00        .byte $00   ; 
- D 0 - I - 0x009B61 02:BB51: 00        .byte $00   ; 
- D 0 - I - 0x009B62 02:BB52: 00        .byte $00   ; 
- D 0 - I - 0x009B63 02:BB53: 00        .byte $00   ; 
- D 0 - I - 0x009B64 02:BB54: 00        .byte $00   ; 
- D 0 - I - 0x009B65 02:BB55: 00        .byte $00   ; 
- D 0 - I - 0x009B66 02:BB56: 00        .byte $00   ; 
- D 0 - I - 0x009B67 02:BB57: 00        .byte $00   ; 
- D 0 - I - 0x009B68 02:BB58: 7E        .byte $7E   ; 
- D 0 - I - 0x009B69 02:BB59: 00        .byte $00   ; 
- D 0 - I - 0x009B6A 02:BB5A: 00        .byte $00   ; 
- D 0 - I - 0x009B6B 02:BB5B: 00        .byte $00   ; 
- D 0 - I - 0x009B6C 02:BB5C: 7E        .byte $7E   ; 
- D 0 - I - 0x009B6D 02:BB5D: 00        .byte $00   ; 
- D 0 - I - 0x009B6E 02:BB5E: 00        .byte $00   ; 
- D 0 - I - 0x009B6F 02:BB5F: 00        .byte $00   ; 
- D 0 - I - 0x009B70 02:BB60: 00        .byte $00   ; 
- D 0 - I - 0x009B71 02:BB61: 1F        .byte $1F   ; 
- D 0 - I - 0x009B72 02:BB62: 18        .byte $18   ; 
- D 0 - I - 0x009B73 02:BB63: 19        .byte $19   ; 
- D 0 - I - 0x009B74 02:BB64: 00        .byte $00   ; 
- D 0 - I - 0x009B75 02:BB65: 12        .byte $12   ; 
- D 0 - I - 0x009B76 02:BB66: 13        .byte $13   ; 
- D 0 - I - 0x009B77 02:BB67: 2A        .byte $2A   ; 
- D 0 - I - 0x009B78 02:BB68: 22        .byte $22   ; 
- D 0 - I - 0x009B79 02:BB69: 00        .byte $00   ; 
- D 0 - I - 0x009B7A 02:BB6A: 30        .byte $30   ; <0>
- D 0 - I - 0x009B7B 02:BB6B: 19        .byte $19   ; 
- D 0 - I - 0x009B7C 02:BB6C: 3A        .byte $3A   ; 
- D 0 - I - 0x009B7D 02:BB6D: 2E        .byte $2E   ; 
- D 0 - I - 0x009B7E 02:BB6E: 1C        .byte $1C   ; 
- D 0 - I - 0x009B7F 02:BB6F: 19        .byte $19   ; 
- D 0 - I - 0x009B80 02:BB70: 34        .byte $34   ; <4>
- D 0 - I - 0x009B81 02:BB71: 15        .byte $15   ; 
- D 0 - I - 0x009B82 02:BB72: 60        .byte $60   ; 
- D 0 - I - 0x009B83 02:BB73: 00        .byte $00   ; 
- D 0 - I - 0x009B84 02:BB74: 00        .byte $00   ; 
- D 0 - I - 0x009B85 02:BB75: 11        .byte $11   ; 
- D 0 - I - 0x009B86 02:BB76: 1F        .byte $1F   ; 
- D 0 - I - 0x009B87 02:BB77: 10        .byte $10   ; 
- D 0 - I - 0x009B88 02:BB78: 00        .byte $00   ; 
- D 0 - I - 0x009B89 02:BB79: 1A        .byte $1A   ; 
- D 0 - I - 0x009B8A 02:BB7A: 11        .byte $11   ; 
- D 0 - I - 0x009B8B 02:BB7B: 3F        .byte $3F   ; 
- D 0 - I - 0x009B8C 02:BB7C: 34        .byte $34   ; <4>
- D 0 - I - 0x009B8D 02:BB7D: 00        .byte $00   ; 
- D 0 - I - 0x009B8E 02:BB7E: 1A        .byte $1A   ; 
- D 0 - I - 0x009B8F 02:BB7F: 11        .byte $11   ; 
- D 0 - I - 0x009B90 02:BB80: 3F        .byte $3F   ; 
- D 0 - I - 0x009B91 02:BB81: 34        .byte $34   ; <4>
- D 0 - I - 0x009B92 02:BB82: 00        .byte $00   ; 
- D 0 - I - 0x009B93 02:BB83: 00        .byte $00   ; 
- D 0 - I - 0x009B94 02:BB84: 00        .byte $00   ; 
- D 0 - I - 0x009B95 02:BB85: 00        .byte $00   ; 
- D 0 - I - 0x009B96 02:BB86: 00        .byte $00   ; 
- D 0 - I - 0x009B97 02:BB87: 00        .byte $00   ; 
- D 0 - I - 0x009B98 02:BB88: 00        .byte $00   ; 
- D 0 - I - 0x009B99 02:BB89: 00        .byte $00   ; 
- D 0 - I - 0x009B9A 02:BB8A: 00        .byte $00   ; 
- D 0 - I - 0x009B9B 02:BB8B: 00        .byte $00   ; 
- D 0 - I - 0x009B9C 02:BB8C: 00        .byte $00   ; 
- D 0 - I - 0x009B9D 02:BB8D: 00        .byte $00   ; 
- D 0 - I - 0x009B9E 02:BB8E: 00        .byte $00   ; 
- D 0 - I - 0x009B9F 02:BB8F: 00        .byte $00   ; 
- D 0 - I - 0x009BA0 02:BB90: 00        .byte $00   ; 
- D 0 - I - 0x009BA1 02:BB91: 00        .byte $00   ; 
- D 0 - I - 0x009BA2 02:BB92: 00        .byte $00   ; 
- D 0 - I - 0x009BA3 02:BB93: 00        .byte $00   ; 
- D 0 - I - 0x009BA4 02:BB94: 00        .byte $00   ; 
- D 0 - I - 0x009BA5 02:BB95: 7E        .byte $7E   ; 
- D 0 - I - 0x009BA6 02:BB96: 00        .byte $00   ; 
- D 0 - I - 0x009BA7 02:BB97: 7E        .byte $7E   ; 
- D 0 - I - 0x009BA8 02:BB98: 00        .byte $00   ; 
- D 0 - I - 0x009BA9 02:BB99: 00        .byte $00   ; 
- D 0 - I - 0x009BAA 02:BB9A: 00        .byte $00   ; 
- D 0 - I - 0x009BAB 02:BB9B: 00        .byte $00   ; 
- D 0 - I - 0x009BAC 02:BB9C: 7E        .byte $7E   ; 
- D 0 - I - 0x009BAD 02:BB9D: 68        .byte $68   ; <h>
- D 0 - I - 0x009BAE 02:BB9E: 6D        .byte $6D   ; <m>
- D 0 - I - 0x009BAF 02:BB9F: 66        .byte $66   ; <f>
- D 0 - I - 0x009BB0 02:BBA0: 69        .byte $69   ; <i>
- D 0 - I - 0x009BB1 02:BBA1: 19        .byte $19   ; 
- D 0 - I - 0x009BB2 02:BBA2: 00        .byte $00   ; 
- D 0 - I - 0x009BB3 02:BBA3: 2B        .byte $2B   ; 
- D 0 - I - 0x009BB4 02:BBA4: 1C        .byte $1C   ; 
- D 0 - I - 0x009BB5 02:BBA5: 39        .byte $39   ; <9>
- D 0 - I - 0x009BB6 02:BBA6: 00        .byte $00   ; 
- D 0 - I - 0x009BB7 02:BBA7: 21        .byte $21   ; 
- D 0 - I - 0x009BB8 02:BBA8: 12        .byte $12   ; 
- D 0 - I - 0x009BB9 02:BBA9: 30        .byte $30   ; <0>
- D 0 - I - 0x009BBA 02:BBAA: 29        .byte $29   ; 
- D 0 - I - 0x009BBB 02:BBAB: 3B        .byte $3B   ; 
- D 0 - I - 0x009BBC 02:BBAC: 2A        .byte $2A   ; 
- D 0 - I - 0x009BBD 02:BBAD: 11        .byte $11   ; 
- D 0 - I - 0x009BBE 02:BBAE: 1F        .byte $1F   ; 
- D 0 - I - 0x009BBF 02:BBAF: 36        .byte $36   ; <6>
- D 0 - I - 0x009BC0 02:BBB0: 34        .byte $34   ; <4>
- - - - - - 0x009BC1 02:BBB1: 00        .byte $00   ; 
- - - - - - 0x009BC2 02:BBB2: 7E        .byte $7E   ; 
- - - - - - 0x009BC3 02:BBB3: 7E        .byte $7E   ; 
- - - - - - 0x009BC4 02:BBB4: 00        .byte $00   ; 
- - - - - - 0x009BC5 02:BBB5: 00        .byte $00   ; 
- - - - - - 0x009BC6 02:BBB6: 00        .byte $00   ; 
- - - - - - 0x009BC7 02:BBB7: 00        .byte $00   ; 
- - - - - - 0x009BC8 02:BBB8: 00        .byte $00   ; 
- - - - - - 0x009BC9 02:BBB9: 00        .byte $00   ; 
- - - - - - 0x009BCA 02:BBBA: 00        .byte $00   ; 
- - - - - - 0x009BCB 02:BBBB: 00        .byte $00   ; 
- - - - - - 0x009BCC 02:BBBC: 00        .byte $00   ; 
- - - - - - 0x009BCD 02:BBBD: 7E        .byte $7E   ; 
- - - - - - 0x009BCE 02:BBBE: 00        .byte $00   ; 
- - - - - - 0x009BCF 02:BBBF: 00        .byte $00   ; 
- - - - - - 0x009BD0 02:BBC0: 00        .byte $00   ; 
- - - - - - 0x009BD1 02:BBC1: 00        .byte $00   ; 
- - - - - - 0x009BD2 02:BBC2: 00        .byte $00   ; 
- - - - - - 0x009BD3 02:BBC3: 00        .byte $00   ; 
- - - - - - 0x009BD4 02:BBC4: 00        .byte $00   ; 
- - - - - - 0x009BD5 02:BBC5: 16        .byte $16   ; 
- - - - - - 0x009BD6 02:BBC6: 2D        .byte $2D   ; 
- - - - - - 0x009BD7 02:BBC7: 34        .byte $34   ; <4>
- - - - - - 0x009BD8 02:BBC8: 31        .byte $31   ; <1>
- - - - - - 0x009BD9 02:BBC9: 19        .byte $19   ; 
- - - - - - 0x009BDA 02:BBCA: 16        .byte $16   ; 
- - - - - - 0x009BDB 02:BBCB: 00        .byte $00   ; 
- - - - - - 0x009BDC 02:BBCC: 2C        .byte $2C   ; 
- - - - - - 0x009BDD 02:BBCD: 26        .byte $26   ; 
- - - - - - 0x009BDE 02:BBCE: 12        .byte $12   ; 
- - - - - - 0x009BDF 02:BBCF: 30        .byte $30   ; <0>
- - - - - - 0x009BE0 02:BBD0: 34        .byte $34   ; <4>
- - - - - - 0x009BE1 02:BBD1: 32        .byte $32   ; <2>
- - - - - - 0x009BE2 02:BBD2: 00        .byte $00   ; 
- - - - - - 0x009BE3 02:BBD3: 00        .byte $00   ; 
- - - - - - 0x009BE4 02:BBD4: 00        .byte $00   ; 
- - - - - - 0x009BE5 02:BBD5: 00        .byte $00   ; 
- - - - - - 0x009BE6 02:BBD6: 00        .byte $00   ; 
- - - - - - 0x009BE7 02:BBD7: 00        .byte $00   ; 
- - - - - - 0x009BE8 02:BBD8: 00        .byte $00   ; 
- D 0 - I - 0x009BE9 02:BBD9: 00        .byte $00   ; 
- D 0 - I - 0x009BEA 02:BBDA: 00        .byte $00   ; 
- D 0 - I - 0x009BEB 02:BBDB: 00        .byte $00   ; 
- D 0 - I - 0x009BEC 02:BBDC: 00        .byte $00   ; 
- D 0 - I - 0x009BED 02:BBDD: 00        .byte $00   ; 
- D 0 - I - 0x009BEE 02:BBDE: 00        .byte $00   ; 
- D 0 - I - 0x009BEF 02:BBDF: 00        .byte $00   ; 
- D 0 - I - 0x009BF0 02:BBE0: 00        .byte $00   ; 
- D 0 - I - 0x009BF1 02:BBE1: 00        .byte $00   ; 
- D 0 - I - 0x009BF2 02:BBE2: 00        .byte $00   ; 
- D 0 - I - 0x009BF3 02:BBE3: 7E        .byte $7E   ; 
- D 0 - I - 0x009BF4 02:BBE4: 00        .byte $00   ; 
- D 0 - I - 0x009BF5 02:BBE5: 00        .byte $00   ; 
- D 0 - I - 0x009BF6 02:BBE6: 00        .byte $00   ; 
- D 0 - I - 0x009BF7 02:BBE7: 00        .byte $00   ; 
- D 0 - I - 0x009BF8 02:BBE8: 00        .byte $00   ; 
- D 0 - I - 0x009BF9 02:BBE9: 00        .byte $00   ; 
- D 0 - I - 0x009BFA 02:BBEA: 00        .byte $00   ; 
- D 0 - I - 0x009BFB 02:BBEB: 7E        .byte $7E   ; 
- D 0 - I - 0x009BFC 02:BBEC: 00        .byte $00   ; 
- D 0 - I - 0x009BFD 02:BBED: 1F        .byte $1F   ; 
- D 0 - I - 0x009BFE 02:BBEE: 36        .byte $36   ; <6>
- D 0 - I - 0x009BFF 02:BBEF: 16        .byte $16   ; 
- D 0 - I - 0x009C00 02:BBF0: 00        .byte $00   ; 
- D 0 - I - 0x009C01 02:BBF1: 10        .byte $10   ; 
- D 0 - I - 0x009C02 02:BBF2: 12        .byte $12   ; 
- D 0 - I - 0x009C03 02:BBF3: 19        .byte $19   ; 
- D 0 - I - 0x009C04 02:BBF4: 39        .byte $39   ; <9>
- D 0 - I - 0x009C05 02:BBF5: 00        .byte $00   ; 
- D 0 - I - 0x009C06 02:BBF6: 1C        .byte $1C   ; 
- D 0 - I - 0x009C07 02:BBF7: 31        .byte $31   ; <1>
- D 0 - I - 0x009C08 02:BBF8: 2A        .byte $2A   ; 
- D 0 - I - 0x009C09 02:BBF9: 30        .byte $30   ; <0>
- D 0 - I - 0x009C0A 02:BBFA: 11        .byte $11   ; 
- D 0 - I - 0x009C0B 02:BBFB: 00        .byte $00   ; 
- D 0 - I - 0x009C0C 02:BBFC: 1B        .byte $1B   ; 
- D 0 - I - 0x009C0D 02:BBFD: 34        .byte $34   ; <4>
- D 0 - I - 0x009C0E 02:BBFE: 11        .byte $11   ; 
- D 0 - I - 0x009C0F 02:BBFF: 34        .byte $34   ; <4>
- D 0 - I - 0x009C10 02:BC00: 15        .byte $15   ; 
- - - - - - 0x009C11 02:BC01: 00        .byte $00   ; 
- - - - - - 0x009C12 02:BC02: 00        .byte $00   ; 
- - - - - - 0x009C13 02:BC03: 00        .byte $00   ; 
- - - - - - 0x009C14 02:BC04: 00        .byte $00   ; 
- - - - - - 0x009C15 02:BC05: 00        .byte $00   ; 
- - - - - - 0x009C16 02:BC06: 00        .byte $00   ; 
- - - - - - 0x009C17 02:BC07: 00        .byte $00   ; 
- - - - - - 0x009C18 02:BC08: 00        .byte $00   ; 
- - - - - - 0x009C19 02:BC09: 00        .byte $00   ; 
- - - - - - 0x009C1A 02:BC0A: 00        .byte $00   ; 
- - - - - - 0x009C1B 02:BC0B: 00        .byte $00   ; 
- - - - - - 0x009C1C 02:BC0C: 00        .byte $00   ; 
- - - - - - 0x009C1D 02:BC0D: 00        .byte $00   ; 
- - - - - - 0x009C1E 02:BC0E: 7E        .byte $7E   ; 
- - - - - - 0x009C1F 02:BC0F: 00        .byte $00   ; 
- - - - - - 0x009C20 02:BC10: 00        .byte $00   ; 
- - - - - - 0x009C21 02:BC11: 00        .byte $00   ; 
- - - - - - 0x009C22 02:BC12: 00        .byte $00   ; 
- - - - - - 0x009C23 02:BC13: 00        .byte $00   ; 
- - - - - - 0x009C24 02:BC14: 00        .byte $00   ; 
- - - - - - 0x009C25 02:BC15: 14        .byte $14   ; 
- - - - - - 0x009C26 02:BC16: 11        .byte $11   ; 
- - - - - - 0x009C27 02:BC17: 37        .byte $37   ; <7>
- - - - - - 0x009C28 02:BC18: 11        .byte $11   ; 
- - - - - - 0x009C29 02:BC19: 2C        .byte $2C   ; 
- - - - - - 0x009C2A 02:BC1A: 38        .byte $38   ; <8>
- - - - - - 0x009C2B 02:BC1B: 39        .byte $39   ; <9>
- - - - - - 0x009C2C 02:BC1C: 00        .byte $00   ; 
- - - - - - 0x009C2D 02:BC1D: 2D        .byte $2D   ; 
- - - - - - 0x009C2E 02:BC1E: 30        .byte $30   ; <0>
- - - - - - 0x009C2F 02:BC1F: 2A        .byte $2A   ; 
- - - - - - 0x009C30 02:BC20: 22        .byte $22   ; 
- - - - - - 0x009C31 02:BC21: 29        .byte $29   ; 
- - - - - - 0x009C32 02:BC22: 33        .byte $33   ; <3>
- - - - - - 0x009C33 02:BC23: 00        .byte $00   ; 
- - - - - - 0x009C34 02:BC24: 00        .byte $00   ; 
- - - - - - 0x009C35 02:BC25: 00        .byte $00   ; 
- - - - - - 0x009C36 02:BC26: 00        .byte $00   ; 
- - - - - - 0x009C37 02:BC27: 00        .byte $00   ; 
- - - - - - 0x009C38 02:BC28: 00        .byte $00   ; 
- D 0 - I - 0x009C39 02:BC29: 00        .byte $00   ; 
- D 0 - I - 0x009C3A 02:BC2A: 00        .byte $00   ; 
- D 0 - I - 0x009C3B 02:BC2B: 7E        .byte $7E   ; 
- D 0 - I - 0x009C3C 02:BC2C: 00        .byte $00   ; 
- D 0 - I - 0x009C3D 02:BC2D: 7E        .byte $7E   ; 
- D 0 - I - 0x009C3E 02:BC2E: 00        .byte $00   ; 
- D 0 - I - 0x009C3F 02:BC2F: 00        .byte $00   ; 
- D 0 - I - 0x009C40 02:BC30: 00        .byte $00   ; 
- D 0 - I - 0x009C41 02:BC31: 00        .byte $00   ; 
- D 0 - I - 0x009C42 02:BC32: 00        .byte $00   ; 
- D 0 - I - 0x009C43 02:BC33: 00        .byte $00   ; 
- D 0 - I - 0x009C44 02:BC34: 00        .byte $00   ; 
- D 0 - I - 0x009C45 02:BC35: 00        .byte $00   ; 
- D 0 - I - 0x009C46 02:BC36: 00        .byte $00   ; 
- D 0 - I - 0x009C47 02:BC37: 00        .byte $00   ; 
- D 0 - I - 0x009C48 02:BC38: 00        .byte $00   ; 
- D 0 - I - 0x009C49 02:BC39: 7E        .byte $7E   ; 
- D 0 - I - 0x009C4A 02:BC3A: 00        .byte $00   ; 
- D 0 - I - 0x009C4B 02:BC3B: 00        .byte $00   ; 
- D 0 - I - 0x009C4C 02:BC3C: 00        .byte $00   ; 
- D 0 - I - 0x009C4D 02:BC3D: 37        .byte $37   ; <7>
- D 0 - I - 0x009C4E 02:BC3E: 22        .byte $22   ; 
- D 0 - I - 0x009C4F 02:BC3F: 37        .byte $37   ; <7>
- D 0 - I - 0x009C50 02:BC40: 00        .byte $00   ; 
- D 0 - I - 0x009C51 02:BC41: 30        .byte $30   ; <0>
- D 0 - I - 0x009C52 02:BC42: 3E        .byte $3E   ; 
- D 0 - I - 0x009C53 02:BC43: 12        .byte $12   ; 
- D 0 - I - 0x009C54 02:BC44: 0F        .byte $0F   ; 
- D 0 - I - 0x009C55 02:BC45: 12        .byte $12   ; 
- D 0 - I - 0x009C56 02:BC46: 28        .byte $28   ; 
- D 0 - I - 0x009C57 02:BC47: 00        .byte $00   ; 
- D 0 - I - 0x009C58 02:BC48: 10        .byte $10   ; 
- D 0 - I - 0x009C59 02:BC49: 36        .byte $36   ; <6>
- D 0 - I - 0x009C5A 02:BC4A: 1D        .byte $1D   ; 
- D 0 - I - 0x009C5B 02:BC4B: 24        .byte $24   ; 
- D 0 - I - 0x009C5C 02:BC4C: 19        .byte $19   ; 
- D 0 - I - 0x009C5D 02:BC4D: 34        .byte $34   ; <4>
- D 0 - I - 0x009C5E 02:BC4E: 15        .byte $15   ; 
- D 0 - I - 0x009C5F 02:BC4F: 60        .byte $60   ; 
- D 0 - I - 0x009C60 02:BC50: 00        .byte $00   ; 
- D 0 - I - 0x009C61 02:BC51: 00        .byte $00   ; 
- D 0 - I - 0x009C62 02:BC52: 00        .byte $00   ; 
- D 0 - I - 0x009C63 02:BC53: 7E        .byte $7E   ; 
- D 0 - I - 0x009C64 02:BC54: 00        .byte $00   ; 
- D 0 - I - 0x009C65 02:BC55: 00        .byte $00   ; 
- D 0 - I - 0x009C66 02:BC56: 00        .byte $00   ; 
- D 0 - I - 0x009C67 02:BC57: 00        .byte $00   ; 
- D 0 - I - 0x009C68 02:BC58: 00        .byte $00   ; 
- D 0 - I - 0x009C69 02:BC59: 00        .byte $00   ; 
- D 0 - I - 0x009C6A 02:BC5A: 7E        .byte $7E   ; 
- D 0 - I - 0x009C6B 02:BC5B: 00        .byte $00   ; 
- D 0 - I - 0x009C6C 02:BC5C: 00        .byte $00   ; 
- D 0 - I - 0x009C6D 02:BC5D: 00        .byte $00   ; 
- D 0 - I - 0x009C6E 02:BC5E: 00        .byte $00   ; 
- D 0 - I - 0x009C6F 02:BC5F: 7E        .byte $7E   ; 
- D 0 - I - 0x009C70 02:BC60: 00        .byte $00   ; 
- D 0 - I - 0x009C71 02:BC61: 00        .byte $00   ; 
- D 0 - I - 0x009C72 02:BC62: 00        .byte $00   ; 
- D 0 - I - 0x009C73 02:BC63: 00        .byte $00   ; 
- D 0 - I - 0x009C74 02:BC64: 00        .byte $00   ; 
- D 0 - I - 0x009C75 02:BC65: 08        .byte $08   ; 
- D 0 - I - 0x009C76 02:BC66: 04        .byte $04   ; 
- D 0 - I - 0x009C77 02:BC67: 0B        .byte $0B   ; 
- D 0 - I - 0x009C78 02:BC68: 2A        .byte $2A   ; 
- D 0 - I - 0x009C79 02:BC69: 60        .byte $60   ; 
- D 0 - I - 0x009C7A 02:BC6A: 00        .byte $00   ; 
- D 0 - I - 0x009C7B 02:BC6B: 1F        .byte $1F   ; 
- D 0 - I - 0x009C7C 02:BC6C: 36        .byte $36   ; <6>
- D 0 - I - 0x009C7D 02:BC6D: 1A        .byte $1A   ; 
- D 0 - I - 0x009C7E 02:BC6E: 37        .byte $37   ; <7>
- D 0 - I - 0x009C7F 02:BC6F: 00        .byte $00   ; 
- D 0 - I - 0x009C80 02:BC70: 2A        .byte $2A   ; 
- D 0 - I - 0x009C81 02:BC71: 22        .byte $22   ; 
- D 0 - I - 0x009C82 02:BC72: 29        .byte $29   ; 
- D 0 - I - 0x009C83 02:BC73: 37        .byte $37   ; <7>
- D 0 - I - 0x009C84 02:BC74: 11        .byte $11   ; 
- D 0 - I - 0x009C85 02:BC75: 24        .byte $24   ; 
- D 0 - I - 0x009C86 02:BC76: 38        .byte $38   ; <8>
- D 0 - I - 0x009C87 02:BC77: 39        .byte $39   ; <9>
- D 0 - I - 0x009C88 02:BC78: 15        .byte $15   ; 
- D 0 - I - 0x009C89 02:BC79: 1B        .byte $1B   ; 
- D 0 - I - 0x009C8A 02:BC7A: 15        .byte $15   ; 
- D 0 - I - 0x009C8B 02:BC7B: 38        .byte $38   ; <8>
- D 0 - I - 0x009C8C 02:BC7C: 18        .byte $18   ; 
- D 0 - I - 0x009C8D 02:BC7D: 60        .byte $60   ; 
- D 0 - I - 0x009C8E 02:BC7E: 00        .byte $00   ; 
- D 0 - I - 0x009C8F 02:BC7F: 2E        .byte $2E   ; 
- D 0 - I - 0x009C90 02:BC80: 11        .byte $11   ; 
- D 0 - I - 0x009C91 02:BC81: 36        .byte $36   ; <6>
- D 0 - I - 0x009C92 02:BC82: 64        .byte $64   ; <d>
- D 0 - I - 0x009C93 02:BC83: 14        .byte $14   ; 
- D 0 - I - 0x009C94 02:BC84: 1E        .byte $1E   ; 
- D 0 - I - 0x009C95 02:BC85: 30        .byte $30   ; <0>
- D 0 - I - 0x009C96 02:BC86: 26        .byte $26   ; 
- D 0 - I - 0x009C97 02:BC87: 2C        .byte $2C   ; 
- D 0 - I - 0x009C98 02:BC88: 15        .byte $15   ; 
- D 0 - I - 0x009C99 02:BC89: 3F        .byte $3F   ; 
- D 0 - I - 0x009C9A 02:BC8A: 37        .byte $37   ; <7>
- D 0 - I - 0x009C9B 02:BC8B: 2B        .byte $2B   ; 
- D 0 - I - 0x009C9C 02:BC8C: 34        .byte $34   ; <4>
- D 0 - I - 0x009C9D 02:BC8D: 00        .byte $00   ; 
- D 0 - I - 0x009C9E 02:BC8E: 7E        .byte $7E   ; 
- D 0 - I - 0x009C9F 02:BC8F: 00        .byte $00   ; 
- D 0 - I - 0x009CA0 02:BC90: 00        .byte $00   ; 
- D 0 - I - 0x009CA1 02:BC91: 00        .byte $00   ; 
- D 0 - I - 0x009CA2 02:BC92: 00        .byte $00   ; 
- D 0 - I - 0x009CA3 02:BC93: 00        .byte $00   ; 
- D 0 - I - 0x009CA4 02:BC94: 00        .byte $00   ; 
- D 0 - I - 0x009CA5 02:BC95: 00        .byte $00   ; 
- D 0 - I - 0x009CA6 02:BC96: 7E        .byte $7E   ; 
- D 0 - I - 0x009CA7 02:BC97: 00        .byte $00   ; 
- D 0 - I - 0x009CA8 02:BC98: 00        .byte $00   ; 
- D 0 - I - 0x009CA9 02:BC99: 7E        .byte $7E   ; 
- D 0 - I - 0x009CAA 02:BC9A: 00        .byte $00   ; 
- D 0 - I - 0x009CAB 02:BC9B: 00        .byte $00   ; 
- D 0 - I - 0x009CAC 02:BC9C: 00        .byte $00   ; 
- D 0 - I - 0x009CAD 02:BC9D: 00        .byte $00   ; 
- D 0 - I - 0x009CAE 02:BC9E: 00        .byte $00   ; 
- D 0 - I - 0x009CAF 02:BC9F: 00        .byte $00   ; 
- D 0 - I - 0x009CB0 02:BCA0: 7E        .byte $7E   ; 
- D 0 - I - 0x009CB1 02:BCA1: 34        .byte $34   ; <4>
- D 0 - I - 0x009CB2 02:BCA2: 34        .byte $34   ; <4>
- D 0 - I - 0x009CB3 02:BCA3: 19        .byte $19   ; 
- D 0 - I - 0x009CB4 02:BCA4: 00        .byte $00   ; 
- D 0 - I - 0x009CB5 02:BCA5: 20        .byte $20   ; 
- D 0 - I - 0x009CB6 02:BCA6: 12        .byte $12   ; 
- D 0 - I - 0x009CB7 02:BCA7: 2A        .byte $2A   ; 
- D 0 - I - 0x009CB8 02:BCA8: 11        .byte $11   ; 
- D 0 - I - 0x009CB9 02:BCA9: 00        .byte $00   ; 
- D 0 - I - 0x009CBA 02:BCAA: 30        .byte $30   ; <0>
- D 0 - I - 0x009CBB 02:BCAB: 2D        .byte $2D   ; 
- D 0 - I - 0x009CBC 02:BCAC: 29        .byte $29   ; 
- D 0 - I - 0x009CBD 02:BCAD: 37        .byte $37   ; <7>
- D 0 - I - 0x009CBE 02:BCAE: 39        .byte $39   ; <9>
- D 0 - I - 0x009CBF 02:BCAF: 00        .byte $00   ; 
- D 0 - I - 0x009CC0 02:BCB0: 15        .byte $15   ; 
- D 0 - I - 0x009CC1 02:BCB1: 11        .byte $11   ; 
- D 0 - I - 0x009CC2 02:BCB2: 27        .byte $27   ; 
- D 0 - I - 0x009CC3 02:BCB3: 2D        .byte $2D   ; 
- D 0 - I - 0x009CC4 02:BCB4: 34        .byte $34   ; <4>
- D 0 - I - 0x009CC5 02:BCB5: 7F        .byte $7F   ; 
- D 0 - I - 0x009CC6 02:BCB6: 00        .byte $00   ; 
- D 0 - I - 0x009CC7 02:BCB7: 00        .byte $00   ; 
- D 0 - I - 0x009CC8 02:BCB8: 00        .byte $00   ; 
- D 0 - I - 0x009CC9 02:BCB9: 7E        .byte $7E   ; 
- D 0 - I - 0x009CCA 02:BCBA: 00        .byte $00   ; 
- D 0 - I - 0x009CCB 02:BCBB: 00        .byte $00   ; 
- D 0 - I - 0x009CCC 02:BCBC: 00        .byte $00   ; 
- D 0 - I - 0x009CCD 02:BCBD: 00        .byte $00   ; 
- D 0 - I - 0x009CCE 02:BCBE: 00        .byte $00   ; 
- D 0 - I - 0x009CCF 02:BCBF: 00        .byte $00   ; 
- D 0 - I - 0x009CD0 02:BCC0: 00        .byte $00   ; 
- D 0 - I - 0x009CD1 02:BCC1: 00        .byte $00   ; 
- D 0 - I - 0x009CD2 02:BCC2: 00        .byte $00   ; 
- D 0 - I - 0x009CD3 02:BCC3: 00        .byte $00   ; 
- D 0 - I - 0x009CD4 02:BCC4: 00        .byte $00   ; 
- D 0 - I - 0x009CD5 02:BCC5: 00        .byte $00   ; 
- D 0 - I - 0x009CD6 02:BCC6: 00        .byte $00   ; 
- D 0 - I - 0x009CD7 02:BCC7: 00        .byte $00   ; 
- D 0 - I - 0x009CD8 02:BCC8: 00        .byte $00   ; 
- D 0 - I - 0x009CD9 02:BCC9: 06        .byte $06   ; 
- D 0 - I - 0x009CDA 02:BCCA: 08        .byte $08   ; 
- D 0 - I - 0x009CDB 02:BCCB: 6B        .byte $6B   ; <k>
- D 0 - I - 0x009CDC 02:BCCC: 6E        .byte $6E   ; <n>
- D 0 - I - 0x009CDD 02:BCCD: 0B        .byte $0B   ; 
- D 0 - I - 0x009CDE 02:BCCE: 2A        .byte $2A   ; 
- D 0 - I - 0x009CDF 02:BCCF: 60        .byte $60   ; 
- D 0 - I - 0x009CE0 02:BCD0: 00        .byte $00   ; 
- D 0 - I - 0x009CE1 02:BCD1: 36        .byte $36   ; <6>
- D 0 - I - 0x009CE2 02:BCD2: 11        .byte $11   ; 
- D 0 - I - 0x009CE3 02:BCD3: 16        .byte $16   ; 
- D 0 - I - 0x009CE4 02:BCD4: 00        .byte $00   ; 
- D 0 - I - 0x009CE5 02:BCD5: 14        .byte $14   ; 
- D 0 - I - 0x009CE6 02:BCD6: 11        .byte $11   ; 
- D 0 - I - 0x009CE7 02:BCD7: 36        .byte $36   ; <6>
- D 0 - I - 0x009CE8 02:BCD8: 1D        .byte $1D   ; 
- D 0 - I - 0x009CE9 02:BCD9: 34        .byte $34   ; <4>
- D 0 - I - 0x009CEA 02:BCDA: 15        .byte $15   ; 
- D 0 - I - 0x009CEB 02:BCDB: 60        .byte $60   ; 
- D 0 - I - 0x009CEC 02:BCDC: 00        .byte $00   ; 
- D 0 - I - 0x009CED 02:BCDD: 00        .byte $00   ; 
- D 0 - I - 0x009CEE 02:BCDE: 00        .byte $00   ; 
- D 0 - I - 0x009CEF 02:BCDF: 00        .byte $00   ; 
- D 0 - I - 0x009CF0 02:BCE0: 7E        .byte $7E   ; 
- D 0 - I - 0x009CF1 02:BCE1: 00        .byte $00   ; 
- D 0 - I - 0x009CF2 02:BCE2: 00        .byte $00   ; 
- D 0 - I - 0x009CF3 02:BCE3: 7E        .byte $7E   ; 
- D 0 - I - 0x009CF4 02:BCE4: 00        .byte $00   ; 
- D 0 - I - 0x009CF5 02:BCE5: 00        .byte $00   ; 
- D 0 - I - 0x009CF6 02:BCE6: 00        .byte $00   ; 
- D 0 - I - 0x009CF7 02:BCE7: 00        .byte $00   ; 
- D 0 - I - 0x009CF8 02:BCE8: 00        .byte $00   ; 
- D 0 - I - 0x009CF9 02:BCE9: 00        .byte $00   ; 
- D 0 - I - 0x009CFA 02:BCEA: 00        .byte $00   ; 
- D 0 - I - 0x009CFB 02:BCEB: 00        .byte $00   ; 
- D 0 - I - 0x009CFC 02:BCEC: 00        .byte $00   ; 
- D 0 - I - 0x009CFD 02:BCED: 00        .byte $00   ; 
- D 0 - I - 0x009CFE 02:BCEE: 00        .byte $00   ; 
- D 0 - I - 0x009CFF 02:BCEF: 7E        .byte $7E   ; 
- D 0 - I - 0x009D00 02:BCF0: 00        .byte $00   ; 
- D 0 - I - 0x009D01 02:BCF1: 2C        .byte $2C   ; 
- D 0 - I - 0x009D02 02:BCF2: 24        .byte $24   ; 
- D 0 - I - 0x009D03 02:BCF3: 1A        .byte $1A   ; 
- D 0 - I - 0x009D04 02:BCF4: 37        .byte $37   ; <7>
- D 0 - I - 0x009D05 02:BCF5: 00        .byte $00   ; 
- D 0 - I - 0x009D06 02:BCF6: 2F        .byte $2F   ; 
- D 0 - I - 0x009D07 02:BCF7: 39        .byte $39   ; <9>
- D 0 - I - 0x009D08 02:BCF8: 2C        .byte $2C   ; 
- D 0 - I - 0x009D09 02:BCF9: 28        .byte $28   ; 
- D 0 - I - 0x009D0A 02:BCFA: 00        .byte $00   ; 
- D 0 - I - 0x009D0B 02:BCFB: 2E        .byte $2E   ; 
- D 0 - I - 0x009D0C 02:BCFC: 13        .byte $13   ; 
- D 0 - I - 0x009D0D 02:BCFD: 24        .byte $24   ; 
- D 0 - I - 0x009D0E 02:BCFE: 38        .byte $38   ; <8>
- D 0 - I - 0x009D0F 02:BCFF: 00        .byte $00   ; 
- D 0 - I - 0x009D10 02:BD00: 30        .byte $30   ; <0>
- D 0 - I - 0x009D11 02:BD01: 21        .byte $21   ; 
- D 0 - I - 0x009D12 02:BD02: 12        .byte $12   ; 
- D 0 - I - 0x009D13 02:BD03: 32        .byte $32   ; <2>
- D 0 - I - 0x009D14 02:BD04: 60        .byte $60   ; 
- D 0 - I - 0x009D15 02:BD05: 7F        .byte $7F   ; 
- D 0 - I - 0x009D16 02:BD06: 00        .byte $00   ; 
- D 0 - I - 0x009D17 02:BD07: 7E        .byte $7E   ; 
- D 0 - I - 0x009D18 02:BD08: 00        .byte $00   ; 
- D 0 - I - 0x009D19 02:BD09: 00        .byte $00   ; 
- D 0 - I - 0x009D1A 02:BD0A: 00        .byte $00   ; 
- D 0 - I - 0x009D1B 02:BD0B: 00        .byte $00   ; 
- D 0 - I - 0x009D1C 02:BD0C: 00        .byte $00   ; 
- D 0 - I - 0x009D1D 02:BD0D: 00        .byte $00   ; 
- D 0 - I - 0x009D1E 02:BD0E: 00        .byte $00   ; 
- D 0 - I - 0x009D1F 02:BD0F: 00        .byte $00   ; 
- D 0 - I - 0x009D20 02:BD10: 00        .byte $00   ; 
- D 0 - I - 0x009D21 02:BD11: 7E        .byte $7E   ; 
- D 0 - I - 0x009D22 02:BD12: 00        .byte $00   ; 
- D 0 - I - 0x009D23 02:BD13: 00        .byte $00   ; 
- D 0 - I - 0x009D24 02:BD14: 00        .byte $00   ; 
- D 0 - I - 0x009D25 02:BD15: 00        .byte $00   ; 
- D 0 - I - 0x009D26 02:BD16: 00        .byte $00   ; 
- D 0 - I - 0x009D27 02:BD17: 00        .byte $00   ; 
- D 0 - I - 0x009D28 02:BD18: 00        .byte $00   ; 
- D 0 - I - 0x009D29 02:BD19: 05        .byte $05   ; 
- D 0 - I - 0x009D2A 02:BD1A: 6C        .byte $6C   ; <l>
- D 0 - I - 0x009D2B 02:BD1B: 0B        .byte $0B   ; 
- D 0 - I - 0x009D2C 02:BD1C: 08        .byte $08   ; 
- D 0 - I - 0x009D2D 02:BD1D: 19        .byte $19   ; 
- D 0 - I - 0x009D2E 02:BD1E: 11        .byte $11   ; 
- D 0 - I - 0x009D2F 02:BD1F: 2F        .byte $2F   ; 
- D 0 - I - 0x009D30 02:BD20: 29        .byte $29   ; 
- D 0 - I - 0x009D31 02:BD21: 00        .byte $00   ; 
- D 0 - I - 0x009D32 02:BD22: 14        .byte $14   ; 
- D 0 - I - 0x009D33 02:BD23: 29        .byte $29   ; 
- D 0 - I - 0x009D34 02:BD24: 15        .byte $15   ; 
- D 0 - I - 0x009D35 02:BD25: 03        .byte $03   ; 
- D 0 - I - 0x009D36 02:BD26: 0A        .byte $0A   ; 
- D 0 - I - 0x009D37 02:BD27: 00        .byte $00   ; 
- D 0 - I - 0x009D38 02:BD28: 2C        .byte $2C   ; 
- D 0 - I - 0x009D39 02:BD29: 2F        .byte $2F   ; 
- D 0 - I - 0x009D3A 02:BD2A: 11        .byte $11   ; 
- D 0 - I - 0x009D3B 02:BD2B: 15        .byte $15   ; 
- D 0 - I - 0x009D3C 02:BD2C: 60        .byte $60   ; 
- D 0 - I - 0x009D3D 02:BD2D: 00        .byte $00   ; 
- D 0 - I - 0x009D3E 02:BD2E: 00        .byte $00   ; 
- D 0 - I - 0x009D3F 02:BD2F: 00        .byte $00   ; 
- D 0 - I - 0x009D40 02:BD30: 00        .byte $00   ; 
- D 0 - I - 0x009D41 02:BD31: 00        .byte $00   ; 
- D 0 - I - 0x009D42 02:BD32: 00        .byte $00   ; 
- D 0 - I - 0x009D43 02:BD33: 00        .byte $00   ; 
- D 0 - I - 0x009D44 02:BD34: 7E        .byte $7E   ; 
- D 0 - I - 0x009D45 02:BD35: 00        .byte $00   ; 
- D 0 - I - 0x009D46 02:BD36: 00        .byte $00   ; 
- D 0 - I - 0x009D47 02:BD37: 00        .byte $00   ; 
- D 0 - I - 0x009D48 02:BD38: 00        .byte $00   ; 
- D 0 - I - 0x009D49 02:BD39: 00        .byte $00   ; 
- D 0 - I - 0x009D4A 02:BD3A: 00        .byte $00   ; 
- D 0 - I - 0x009D4B 02:BD3B: 00        .byte $00   ; 
- D 0 - I - 0x009D4C 02:BD3C: 00        .byte $00   ; 
- D 0 - I - 0x009D4D 02:BD3D: 00        .byte $00   ; 
- D 0 - I - 0x009D4E 02:BD3E: 00        .byte $00   ; 
- D 0 - I - 0x009D4F 02:BD3F: 00        .byte $00   ; 
- D 0 - I - 0x009D50 02:BD40: 00        .byte $00   ; 
- D 0 - I - 0x009D51 02:BD41: 14        .byte $14   ; 
- D 0 - I - 0x009D52 02:BD42: 25        .byte $25   ; 
- D 0 - I - 0x009D53 02:BD43: 38        .byte $38   ; <8>
- D 0 - I - 0x009D54 02:BD44: 30        .byte $30   ; <0>
- D 0 - I - 0x009D55 02:BD45: 34        .byte $34   ; <4>
- D 0 - I - 0x009D56 02:BD46: 2E        .byte $2E   ; 
- D 0 - I - 0x009D57 02:BD47: 38        .byte $38   ; <8>
- D 0 - I - 0x009D58 02:BD48: 2A        .byte $2A   ; 
- D 0 - I - 0x009D59 02:BD49: 00        .byte $00   ; 
- D 0 - I - 0x009D5A 02:BD4A: 00        .byte $00   ; 
- D 0 - I - 0x009D5B 02:BD4B: 00        .byte $00   ; 
- D 0 - I - 0x009D5C 02:BD4C: 00        .byte $00   ; 
- D 0 - I - 0x009D5D 02:BD4D: 00        .byte $00   ; 
- D 0 - I - 0x009D5E 02:BD4E: 00        .byte $00   ; 
- D 0 - I - 0x009D5F 02:BD4F: 00        .byte $00   ; 
- D 0 - I - 0x009D60 02:BD50: 00        .byte $00   ; 
- D 0 - I - 0x009D61 02:BD51: 00        .byte $00   ; 
- D 0 - I - 0x009D62 02:BD52: 00        .byte $00   ; 
- D 0 - I - 0x009D63 02:BD53: 00        .byte $00   ; 
- D 0 - I - 0x009D64 02:BD54: 00        .byte $00   ; 
- D 0 - I - 0x009D65 02:BD55: 00        .byte $00   ; 
- D 0 - I - 0x009D66 02:BD56: 00        .byte $00   ; 
- D 0 - I - 0x009D67 02:BD57: 00        .byte $00   ; 
- D 0 - I - 0x009D68 02:BD58: 00        .byte $00   ; 
- D 0 - I - 0x009D69 02:BD59: 00        .byte $00   ; 
- D 0 - I - 0x009D6A 02:BD5A: 7E        .byte $7E   ; 
- D 0 - I - 0x009D6B 02:BD5B: 00        .byte $00   ; 
- D 0 - I - 0x009D6C 02:BD5C: 00        .byte $00   ; 
- D 0 - I - 0x009D6D 02:BD5D: 00        .byte $00   ; 
- D 0 - I - 0x009D6E 02:BD5E: 00        .byte $00   ; 
- D 0 - I - 0x009D6F 02:BD5F: 00        .byte $00   ; 
- D 0 - I - 0x009D70 02:BD60: 00        .byte $00   ; 
- D 0 - I - 0x009D71 02:BD61: 00        .byte $00   ; 
- D 0 - I - 0x009D72 02:BD62: 00        .byte $00   ; 
- D 0 - I - 0x009D73 02:BD63: 00        .byte $00   ; 
- D 0 - I - 0x009D74 02:BD64: 00        .byte $00   ; 
- D 0 - I - 0x009D75 02:BD65: 00        .byte $00   ; 
- D 0 - I - 0x009D76 02:BD66: 00        .byte $00   ; 
- D 0 - I - 0x009D77 02:BD67: 00        .byte $00   ; 
- D 0 - I - 0x009D78 02:BD68: 00        .byte $00   ; 
- D 0 - I - 0x009D79 02:BD69: 10        .byte $10   ; 
- D 0 - I - 0x009D7A 02:BD6A: 23        .byte $23   ; 
- D 0 - I - 0x009D7B 02:BD6B: 62        .byte $62   ; <b>
- D 0 - I - 0x009D7C 02:BD6C: 1A        .byte $1A   ; 
- D 0 - I - 0x009D7D 02:BD6D: 00        .byte $00   ; 
- D 0 - I - 0x009D7E 02:BD6E: 38        .byte $38   ; <8>
- D 0 - I - 0x009D7F 02:BD6F: 3F        .byte $3F   ; 
- D 0 - I - 0x009D80 02:BD70: 34        .byte $34   ; <4>
- D 0 - I - 0x009D81 02:BD71: 19        .byte $19   ; 
- D 0 - I - 0x009D82 02:BD72: 00        .byte $00   ; 
- D 0 - I - 0x009D83 02:BD73: 00        .byte $00   ; 
- D 0 - I - 0x009D84 02:BD74: 00        .byte $00   ; 
- D 0 - I - 0x009D85 02:BD75: 00        .byte $00   ; 
- D 0 - I - 0x009D86 02:BD76: 00        .byte $00   ; 
- D 0 - I - 0x009D87 02:BD77: 00        .byte $00   ; 
- D 0 - I - 0x009D88 02:BD78: 00        .byte $00   ; 
- D 0 - I - 0x009D89 02:BD79: 00        .byte $00   ; 
- D 0 - I - 0x009D8A 02:BD7A: 00        .byte $00   ; 
- D 0 - I - 0x009D8B 02:BD7B: 00        .byte $00   ; 
- D 0 - I - 0x009D8C 02:BD7C: 00        .byte $00   ; 
- D 0 - I - 0x009D8D 02:BD7D: 00        .byte $00   ; 
- D 0 - I - 0x009D8E 02:BD7E: 00        .byte $00   ; 
- D 0 - I - 0x009D8F 02:BD7F: 7E        .byte $7E   ; 
- D 0 - I - 0x009D90 02:BD80: 00        .byte $00   ; 
- D 0 - I - 0x009D91 02:BD81: 00        .byte $00   ; 
- D 0 - I - 0x009D92 02:BD82: 00        .byte $00   ; 
- D 0 - I - 0x009D93 02:BD83: 00        .byte $00   ; 
- D 0 - I - 0x009D94 02:BD84: 00        .byte $00   ; 
- D 0 - I - 0x009D95 02:BD85: 00        .byte $00   ; 
- D 0 - I - 0x009D96 02:BD86: 00        .byte $00   ; 
- D 0 - I - 0x009D97 02:BD87: 00        .byte $00   ; 
- D 0 - I - 0x009D98 02:BD88: 00        .byte $00   ; 
- D 0 - I - 0x009D99 02:BD89: 00        .byte $00   ; 
- D 0 - I - 0x009D9A 02:BD8A: 00        .byte $00   ; 
- D 0 - I - 0x009D9B 02:BD8B: 00        .byte $00   ; 
- D 0 - I - 0x009D9C 02:BD8C: 00        .byte $00   ; 
- D 0 - I - 0x009D9D 02:BD8D: 00        .byte $00   ; 
- D 0 - I - 0x009D9E 02:BD8E: 00        .byte $00   ; 
- D 0 - I - 0x009D9F 02:BD8F: 00        .byte $00   ; 
- D 0 - I - 0x009DA0 02:BD90: 00        .byte $00   ; 
- D 0 - I - 0x009DA1 02:BD91: 1D        .byte $1D   ; 
- D 0 - I - 0x009DA2 02:BD92: 29        .byte $29   ; 
- D 0 - I - 0x009DA3 02:BD93: 0F        .byte $0F   ; 
- D 0 - I - 0x009DA4 02:BD94: 2C        .byte $2C   ; 
- D 0 - I - 0x009DA5 02:BD95: 18        .byte $18   ; 
- D 0 - I - 0x009DA6 02:BD96: 13        .byte $13   ; 
- D 0 - I - 0x009DA7 02:BD97: 00        .byte $00   ; 
- D 0 - I - 0x009DA8 02:BD98: 00        .byte $00   ; 
- D 0 - I - 0x009DA9 02:BD99: 00        .byte $00   ; 
- D 0 - I - 0x009DAA 02:BD9A: 00        .byte $00   ; 
- D 0 - I - 0x009DAB 02:BD9B: 00        .byte $00   ; 
- D 0 - I - 0x009DAC 02:BD9C: 00        .byte $00   ; 
- D 0 - I - 0x009DAD 02:BD9D: 00        .byte $00   ; 
- D 0 - I - 0x009DAE 02:BD9E: 00        .byte $00   ; 
- D 0 - I - 0x009DAF 02:BD9F: 00        .byte $00   ; 
- D 0 - I - 0x009DB0 02:BDA0: 00        .byte $00   ; 
- D 0 - I - 0x009DB1 02:BDA1: 00        .byte $00   ; 
- D 0 - I - 0x009DB2 02:BDA2: 00        .byte $00   ; 
- D 0 - I - 0x009DB3 02:BDA3: 00        .byte $00   ; 
- D 0 - I - 0x009DB4 02:BDA4: 00        .byte $00   ; 
- D 0 - I - 0x009DB5 02:BDA5: 00        .byte $00   ; 
- D 0 - I - 0x009DB6 02:BDA6: 00        .byte $00   ; 
- D 0 - I - 0x009DB7 02:BDA7: 00        .byte $00   ; 
- D 0 - I - 0x009DB8 02:BDA8: 7E        .byte $7E   ; 
- D 0 - I - 0x009DB9 02:BDA9: 00        .byte $00   ; 
- D 0 - I - 0x009DBA 02:BDAA: 7E        .byte $7E   ; 
- D 0 - I - 0x009DBB 02:BDAB: 00        .byte $00   ; 
- D 0 - I - 0x009DBC 02:BDAC: 00        .byte $00   ; 
- D 0 - I - 0x009DBD 02:BDAD: 00        .byte $00   ; 
- D 0 - I - 0x009DBE 02:BDAE: 00        .byte $00   ; 
- D 0 - I - 0x009DBF 02:BDAF: 00        .byte $00   ; 
- D 0 - I - 0x009DC0 02:BDB0: 00        .byte $00   ; 
- D 0 - I - 0x009DC1 02:BDB1: 00        .byte $00   ; 
- D 0 - I - 0x009DC2 02:BDB2: 00        .byte $00   ; 
- D 0 - I - 0x009DC3 02:BDB3: 00        .byte $00   ; 
- D 0 - I - 0x009DC4 02:BDB4: 00        .byte $00   ; 
- D 0 - I - 0x009DC5 02:BDB5: 00        .byte $00   ; 
- D 0 - I - 0x009DC6 02:BDB6: 00        .byte $00   ; 
- D 0 - I - 0x009DC7 02:BDB7: 00        .byte $00   ; 
- D 0 - I - 0x009DC8 02:BDB8: 00        .byte $00   ; 
- D 0 - I - 0x009DC9 02:BDB9: 15        .byte $15   ; 
- D 0 - I - 0x009DCA 02:BDBA: 29        .byte $29   ; 
- D 0 - I - 0x009DCB 02:BDBB: 37        .byte $37   ; <7>
- D 0 - I - 0x009DCC 02:BDBC: 2F        .byte $2F   ; 
- D 0 - I - 0x009DCD 02:BDBD: 1A        .byte $1A   ; 
- D 0 - I - 0x009DCE 02:BDBE: 34        .byte $34   ; <4>
- D 0 - I - 0x009DCF 02:BDBF: 11        .byte $11   ; 
- D 0 - I - 0x009DD0 02:BDC0: 00        .byte $00   ; 
- D 0 - I - 0x009DD1 02:BDC1: 00        .byte $00   ; 
- D 0 - I - 0x009DD2 02:BDC2: 00        .byte $00   ; 
- D 0 - I - 0x009DD3 02:BDC3: 00        .byte $00   ; 
- D 0 - I - 0x009DD4 02:BDC4: 00        .byte $00   ; 
- D 0 - I - 0x009DD5 02:BDC5: 00        .byte $00   ; 
- D 0 - I - 0x009DD6 02:BDC6: 00        .byte $00   ; 
- D 0 - I - 0x009DD7 02:BDC7: 00        .byte $00   ; 
- D 0 - I - 0x009DD8 02:BDC8: 00        .byte $00   ; 
- D 0 - I - 0x009DD9 02:BDC9: 00        .byte $00   ; 
- D 0 - I - 0x009DDA 02:BDCA: 00        .byte $00   ; 
- D 0 - I - 0x009DDB 02:BDCB: 00        .byte $00   ; 
- D 0 - I - 0x009DDC 02:BDCC: 00        .byte $00   ; 
- D 0 - I - 0x009DDD 02:BDCD: 31        .byte $31   ; <1>
- D 0 - I - 0x009DDE 02:BDCE: 1A        .byte $1A   ; 
- D 0 - I - 0x009DDF 02:BDCF: 17        .byte $17   ; 
- D 0 - I - 0x009DE0 02:BDD0: 00        .byte $00   ; 
- D 0 - I - 0x009DE1 02:BDD1: 00        .byte $00   ; 
- D 0 - I - 0x009DE2 02:BDD2: 00        .byte $00   ; 
- D 0 - I - 0x009DE3 02:BDD3: 00        .byte $00   ; 
- D 0 - I - 0x009DE4 02:BDD4: 00        .byte $00   ; 
- D 0 - I - 0x009DE5 02:BDD5: 00        .byte $00   ; 
- D 0 - I - 0x009DE6 02:BDD6: 00        .byte $00   ; 
- D 0 - I - 0x009DE7 02:BDD7: 00        .byte $00   ; 
- D 0 - I - 0x009DE8 02:BDD8: 00        .byte $00   ; 
- D 0 - I - 0x009DE9 02:BDD9: 00        .byte $00   ; 
- D 0 - I - 0x009DEA 02:BDDA: 00        .byte $00   ; 
- D 0 - I - 0x009DEB 02:BDDB: 00        .byte $00   ; 
- D 0 - I - 0x009DEC 02:BDDC: 00        .byte $00   ; 
- D 0 - I - 0x009DED 02:BDDD: 00        .byte $00   ; 
- D 0 - I - 0x009DEE 02:BDDE: 00        .byte $00   ; 
- D 0 - I - 0x009DEF 02:BDDF: 00        .byte $00   ; 
- D 0 - I - 0x009DF0 02:BDE0: 00        .byte $00   ; 
- D 0 - I - 0x009DF1 02:BDE1: 00        .byte $00   ; 
- D 0 - I - 0x009DF2 02:BDE2: 00        .byte $00   ; 
- D 0 - I - 0x009DF3 02:BDE3: 00        .byte $00   ; 
- D 0 - I - 0x009DF4 02:BDE4: 7E        .byte $7E   ; 
- D 0 - I - 0x009DF5 02:BDE5: 7E        .byte $7E   ; 
- D 0 - I - 0x009DF6 02:BDE6: 00        .byte $00   ; 
- D 0 - I - 0x009DF7 02:BDE7: 00        .byte $00   ; 
- D 0 - I - 0x009DF8 02:BDE8: 00        .byte $00   ; 
- D 0 - I - 0x009DF9 02:BDE9: 00        .byte $00   ; 
- D 0 - I - 0x009DFA 02:BDEA: 00        .byte $00   ; 
- D 0 - I - 0x009DFB 02:BDEB: 00        .byte $00   ; 
- D 0 - I - 0x009DFC 02:BDEC: 00        .byte $00   ; 
- D 0 - I - 0x009DFD 02:BDED: 00        .byte $00   ; 
- D 0 - I - 0x009DFE 02:BDEE: 00        .byte $00   ; 
- D 0 - I - 0x009DFF 02:BDEF: 00        .byte $00   ; 
- D 0 - I - 0x009E00 02:BDF0: 00        .byte $00   ; 
- D 0 - I - 0x009E01 02:BDF1: 00        .byte $00   ; 
- D 0 - I - 0x009E02 02:BDF2: 00        .byte $00   ; 
- D 0 - I - 0x009E03 02:BDF3: 00        .byte $00   ; 
- D 0 - I - 0x009E04 02:BDF4: 00        .byte $00   ; 
- D 0 - I - 0x009E05 02:BDF5: 12        .byte $12   ; 
- D 0 - I - 0x009E06 02:BDF6: 2A        .byte $2A   ; 
- D 0 - I - 0x009E07 02:BDF7: 36        .byte $36   ; <6>
- D 0 - I - 0x009E08 02:BDF8: 34        .byte $34   ; <4>
- D 0 - I - 0x009E09 02:BDF9: 33        .byte $33   ; <3>
- D 0 - I - 0x009E0A 02:BDFA: 00        .byte $00   ; 
- D 0 - I - 0x009E0B 02:BDFB: 00        .byte $00   ; 
- D 0 - I - 0x009E0C 02:BDFC: 00        .byte $00   ; 
- D 0 - I - 0x009E0D 02:BDFD: 00        .byte $00   ; 
- D 0 - I - 0x009E0E 02:BDFE: 00        .byte $00   ; 
- D 0 - I - 0x009E0F 02:BDFF: 00        .byte $00   ; 
- D 0 - I - 0x009E10 02:BE00: 00        .byte $00   ; 
- D 0 - I - 0x009E11 02:BE01: 00        .byte $00   ; 
- D 0 - I - 0x009E12 02:BE02: 00        .byte $00   ; 
- D 0 - I - 0x009E13 02:BE03: 00        .byte $00   ; 
- D 0 - I - 0x009E14 02:BE04: 00        .byte $00   ; 
- D 0 - I - 0x009E15 02:BE05: 00        .byte $00   ; 
- D 0 - I - 0x009E16 02:BE06: 00        .byte $00   ; 
- D 0 - I - 0x009E17 02:BE07: 00        .byte $00   ; 
- D 0 - I - 0x009E18 02:BE08: 00        .byte $00   ; 
- D 0 - I - 0x009E19 02:BE09: 7E        .byte $7E   ; 
- D 0 - I - 0x009E1A 02:BE0A: 00        .byte $00   ; 
- D 0 - I - 0x009E1B 02:BE0B: 00        .byte $00   ; 
- D 0 - I - 0x009E1C 02:BE0C: 00        .byte $00   ; 
- D 0 - I - 0x009E1D 02:BE0D: 00        .byte $00   ; 
- D 0 - I - 0x009E1E 02:BE0E: 00        .byte $00   ; 
- D 0 - I - 0x009E1F 02:BE0F: 00        .byte $00   ; 
- D 0 - I - 0x009E20 02:BE10: 00        .byte $00   ; 
- D 0 - I - 0x009E21 02:BE11: 00        .byte $00   ; 
- D 0 - I - 0x009E22 02:BE12: 00        .byte $00   ; 
- D 0 - I - 0x009E23 02:BE13: 00        .byte $00   ; 
- D 0 - I - 0x009E24 02:BE14: 00        .byte $00   ; 
- D 0 - I - 0x009E25 02:BE15: 00        .byte $00   ; 
- D 0 - I - 0x009E26 02:BE16: 00        .byte $00   ; 
- D 0 - I - 0x009E27 02:BE17: 00        .byte $00   ; 
- D 0 - I - 0x009E28 02:BE18: 00        .byte $00   ; 
- D 0 - I - 0x009E29 02:BE19: 00        .byte $00   ; 
- D 0 - I - 0x009E2A 02:BE1A: 00        .byte $00   ; 
- D 0 - I - 0x009E2B 02:BE1B: 00        .byte $00   ; 
- D 0 - I - 0x009E2C 02:BE1C: 00        .byte $00   ; 
- D 0 - I - 0x009E2D 02:BE1D: 34        .byte $34   ; <4>
- D 0 - I - 0x009E2E 02:BE1E: 25        .byte $25   ; 
- D 0 - I - 0x009E2F 02:BE1F: 2A        .byte $2A   ; 
- D 0 - I - 0x009E30 02:BE20: 00        .byte $00   ; 
- D 0 - I - 0x009E31 02:BE21: 2A        .byte $2A   ; 
- D 0 - I - 0x009E32 02:BE22: 27        .byte $27   ; 
- D 0 - I - 0x009E33 02:BE23: 3F        .byte $3F   ; 
- D 0 - I - 0x009E34 02:BE24: 37        .byte $37   ; <7>
- D 0 - I - 0x009E35 02:BE25: 2C        .byte $2C   ; 
- D 0 - I - 0x009E36 02:BE26: 29        .byte $29   ; 
- D 0 - I - 0x009E37 02:BE27: 15        .byte $15   ; 
- D 0 - I - 0x009E38 02:BE28: 11        .byte $11   ; 
- D 0 - I - 0x009E39 02:BE29: 00        .byte $00   ; 
- D 0 - I - 0x009E3A 02:BE2A: 00        .byte $00   ; 
- D 0 - I - 0x009E3B 02:BE2B: 00        .byte $00   ; 
- D 0 - I - 0x009E3C 02:BE2C: 00        .byte $00   ; 
- D 0 - I - 0x009E3D 02:BE2D: 00        .byte $00   ; 
- D 0 - I - 0x009E3E 02:BE2E: 00        .byte $00   ; 
- D 0 - I - 0x009E3F 02:BE2F: 00        .byte $00   ; 
- D 0 - I - 0x009E40 02:BE30: 00        .byte $00   ; 
- D 0 - I - 0x009E41 02:BE31: 00        .byte $00   ; 
- D 0 - I - 0x009E42 02:BE32: 00        .byte $00   ; 
- D 0 - I - 0x009E43 02:BE33: 00        .byte $00   ; 
- D 0 - I - 0x009E44 02:BE34: 00        .byte $00   ; 
- D 0 - I - 0x009E45 02:BE35: 00        .byte $00   ; 
- D 0 - I - 0x009E46 02:BE36: 00        .byte $00   ; 
- D 0 - I - 0x009E47 02:BE37: 7E        .byte $7E   ; 
- D 0 - I - 0x009E48 02:BE38: 00        .byte $00   ; 
- D 0 - I - 0x009E49 02:BE39: 00        .byte $00   ; 
- D 0 - I - 0x009E4A 02:BE3A: 00        .byte $00   ; 
- D 0 - I - 0x009E4B 02:BE3B: 00        .byte $00   ; 
- D 0 - I - 0x009E4C 02:BE3C: 00        .byte $00   ; 
- D 0 - I - 0x009E4D 02:BE3D: 00        .byte $00   ; 
- D 0 - I - 0x009E4E 02:BE3E: 00        .byte $00   ; 
- D 0 - I - 0x009E4F 02:BE3F: 00        .byte $00   ; 
- D 0 - I - 0x009E50 02:BE40: 00        .byte $00   ; 
- D 0 - I - 0x009E51 02:BE41: 00        .byte $00   ; 
- D 0 - I - 0x009E52 02:BE42: 00        .byte $00   ; 
- D 0 - I - 0x009E53 02:BE43: 00        .byte $00   ; 
- D 0 - I - 0x009E54 02:BE44: 00        .byte $00   ; 
- D 0 - I - 0x009E55 02:BE45: 30        .byte $30   ; <0>
- D 0 - I - 0x009E56 02:BE46: 63        .byte $63   ; <c>
- D 0 - I - 0x009E57 02:BE47: 1F        .byte $1F   ; 
- D 0 - I - 0x009E58 02:BE48: 2C        .byte $2C   ; 
- D 0 - I - 0x009E59 02:BE49: 19        .byte $19   ; 
- D 0 - I - 0x009E5A 02:BE4A: 14        .byte $14   ; 
- D 0 - I - 0x009E5B 02:BE4B: 37        .byte $37   ; <7>
- D 0 - I - 0x009E5C 02:BE4C: 1A        .byte $1A   ; 
- D 0 - I - 0x009E5D 02:BE4D: 30        .byte $30   ; <0>
- D 0 - I - 0x009E5E 02:BE4E: 2A        .byte $2A   ; 
- D 0 - I - 0x009E5F 02:BE4F: 15        .byte $15   ; 
- D 0 - I - 0x009E60 02:BE50: 00        .byte $00   ; 
- D 0 - I - 0x009E61 02:BE51: 00        .byte $00   ; 
- D 0 - I - 0x009E62 02:BE52: 00        .byte $00   ; 
- D 0 - I - 0x009E63 02:BE53: 00        .byte $00   ; 
- D 0 - I - 0x009E64 02:BE54: 00        .byte $00   ; 
- D 0 - I - 0x009E65 02:BE55: 00        .byte $00   ; 
- D 0 - I - 0x009E66 02:BE56: 00        .byte $00   ; 
- D 0 - I - 0x009E67 02:BE57: 00        .byte $00   ; 
- D 0 - I - 0x009E68 02:BE58: 00        .byte $00   ; 
- D 0 - I - 0x009E69 02:BE59: 00        .byte $00   ; 
- D 0 - I - 0x009E6A 02:BE5A: 00        .byte $00   ; 
- D 0 - I - 0x009E6B 02:BE5B: 00        .byte $00   ; 
- D 0 - I - 0x009E6C 02:BE5C: 00        .byte $00   ; 
- D 0 - I - 0x009E6D 02:BE5D: 7E        .byte $7E   ; 
- D 0 - I - 0x009E6E 02:BE5E: 00        .byte $00   ; 
- D 0 - I - 0x009E6F 02:BE5F: 00        .byte $00   ; 
- D 0 - I - 0x009E70 02:BE60: 00        .byte $00   ; 
- D 0 - I - 0x009E71 02:BE61: 7E        .byte $7E   ; 
- D 0 - I - 0x009E72 02:BE62: 00        .byte $00   ; 
- D 0 - I - 0x009E73 02:BE63: 00        .byte $00   ; 
- D 0 - I - 0x009E74 02:BE64: 00        .byte $00   ; 
- D 0 - I - 0x009E75 02:BE65: 00        .byte $00   ; 
- D 0 - I - 0x009E76 02:BE66: 00        .byte $00   ; 
- D 0 - I - 0x009E77 02:BE67: 00        .byte $00   ; 
- D 0 - I - 0x009E78 02:BE68: 00        .byte $00   ; 
- D 0 - I - 0x009E79 02:BE69: 00        .byte $00   ; 
- D 0 - I - 0x009E7A 02:BE6A: 00        .byte $00   ; 
- D 0 - I - 0x009E7B 02:BE6B: 00        .byte $00   ; 
- D 0 - I - 0x009E7C 02:BE6C: 00        .byte $00   ; 
- D 0 - I - 0x009E7D 02:BE6D: 35        .byte $35   ; <5>
- D 0 - I - 0x009E7E 02:BE6E: 3E        .byte $3E   ; 
- D 0 - I - 0x009E7F 02:BE6F: 12        .byte $12   ; 
- D 0 - I - 0x009E80 02:BE70: 30        .byte $30   ; <0>
- D 0 - I - 0x009E81 02:BE71: 2A        .byte $2A   ; 
- D 0 - I - 0x009E82 02:BE72: 27        .byte $27   ; 
- D 0 - I - 0x009E83 02:BE73: 24        .byte $24   ; 
- D 0 - I - 0x009E84 02:BE74: 11        .byte $11   ; 
- D 0 - I - 0x009E85 02:BE75: 32        .byte $32   ; <2>
- D 0 - I - 0x009E86 02:BE76: 00        .byte $00   ; 
- D 0 - I - 0x009E87 02:BE77: 00        .byte $00   ; 
- D 0 - I - 0x009E88 02:BE78: 00        .byte $00   ; 
- D 0 - I - 0x009E89 02:BE79: 00        .byte $00   ; 
- D 0 - I - 0x009E8A 02:BE7A: 00        .byte $00   ; 
- D 0 - I - 0x009E8B 02:BE7B: 00        .byte $00   ; 
- D 0 - I - 0x009E8C 02:BE7C: 00        .byte $00   ; 
- D 0 - I - 0x009E8D 02:BE7D: 00        .byte $00   ; 
- D 0 - I - 0x009E8E 02:BE7E: 00        .byte $00   ; 
- D 0 - I - 0x009E8F 02:BE7F: 00        .byte $00   ; 
- D 0 - I - 0x009E90 02:BE80: 00        .byte $00   ; 
- D 0 - I - 0x009E91 02:BE81: 00        .byte $00   ; 
- D 0 - I - 0x009E92 02:BE82: 7E        .byte $7E   ; 
- D 0 - I - 0x009E93 02:BE83: 7E        .byte $7E   ; 
- D 0 - I - 0x009E94 02:BE84: 00        .byte $00   ; 
- D 0 - I - 0x009E95 02:BE85: 00        .byte $00   ; 
- D 0 - I - 0x009E96 02:BE86: 00        .byte $00   ; 
- D 0 - I - 0x009E97 02:BE87: 7E        .byte $7E   ; 
- D 0 - I - 0x009E98 02:BE88: 00        .byte $00   ; 
- D 0 - I - 0x009E99 02:BE89: 00        .byte $00   ; 
- D 0 - I - 0x009E9A 02:BE8A: 00        .byte $00   ; 
- D 0 - I - 0x009E9B 02:BE8B: 00        .byte $00   ; 
- D 0 - I - 0x009E9C 02:BE8C: 00        .byte $00   ; 
- D 0 - I - 0x009E9D 02:BE8D: 00        .byte $00   ; 
- D 0 - I - 0x009E9E 02:BE8E: 00        .byte $00   ; 
- D 0 - I - 0x009E9F 02:BE8F: 00        .byte $00   ; 
- D 0 - I - 0x009EA0 02:BE90: 00        .byte $00   ; 
- D 0 - I - 0x009EA1 02:BE91: 00        .byte $00   ; 
- D 0 - I - 0x009EA2 02:BE92: 00        .byte $00   ; 
- D 0 - I - 0x009EA3 02:BE93: 00        .byte $00   ; 
- D 0 - I - 0x009EA4 02:BE94: 00        .byte $00   ; 
- D 0 - I - 0x009EA5 02:BE95: 12        .byte $12   ; 
- D 0 - I - 0x009EA6 02:BE96: 37        .byte $37   ; <7>
- D 0 - I - 0x009EA7 02:BE97: 2A        .byte $2A   ; 
- D 0 - I - 0x009EA8 02:BE98: 00        .byte $00   ; 
- D 0 - I - 0x009EA9 02:BE99: 15        .byte $15   ; 
- D 0 - I - 0x009EAA 02:BE9A: 24        .byte $24   ; 
- D 0 - I - 0x009EAB 02:BE9B: 32        .byte $32   ; <2>
- D 0 - I - 0x009EAC 02:BE9C: 00        .byte $00   ; 
- D 0 - I - 0x009EAD 02:BE9D: 00        .byte $00   ; 
- D 0 - I - 0x009EAE 02:BE9E: 00        .byte $00   ; 
- D 0 - I - 0x009EAF 02:BE9F: 00        .byte $00   ; 
- D 0 - I - 0x009EB0 02:BEA0: 00        .byte $00   ; 
- D 0 - I - 0x009EB1 02:BEA1: 00        .byte $00   ; 
- D 0 - I - 0x009EB2 02:BEA2: 00        .byte $00   ; 
- D 0 - I - 0x009EB3 02:BEA3: 00        .byte $00   ; 
- D 0 - I - 0x009EB4 02:BEA4: 00        .byte $00   ; 
- D 0 - I - 0x009EB5 02:BEA5: 00        .byte $00   ; 
- D 0 - I - 0x009EB6 02:BEA6: 00        .byte $00   ; 
- D 0 - I - 0x009EB7 02:BEA7: 00        .byte $00   ; 
- D 0 - I - 0x009EB8 02:BEA8: 00        .byte $00   ; 
- D 0 - I - 0x009EB9 02:BEA9: 32        .byte $32   ; <2>
- D 0 - I - 0x009EBA 02:BEAA: 3F        .byte $3F   ; 
- D 0 - I - 0x009EBB 02:BEAB: 30        .byte $30   ; <0>
- D 0 - I - 0x009EBC 02:BEAC: 62        .byte $62   ; <b>
- D 0 - I - 0x009EBD 02:BEAD: 16        .byte $16   ; 
- D 0 - I - 0x009EBE 02:BEAE: 39        .byte $39   ; <9>
- D 0 - I - 0x009EBF 02:BEAF: 1C        .byte $1C   ; 
- D 0 - I - 0x009EC0 02:BEB0: 2A        .byte $2A   ; 
- D 0 - I - 0x009EC1 02:BEB1: 17        .byte $17   ; 
- D 0 - I - 0x009EC2 02:BEB2: 00        .byte $00   ; 
- D 0 - I - 0x009EC3 02:BEB3: 00        .byte $00   ; 
- D 0 - I - 0x009EC4 02:BEB4: 00        .byte $00   ; 
- D 0 - I - 0x009EC5 02:BEB5: 00        .byte $00   ; 
- D 0 - I - 0x009EC6 02:BEB6: 00        .byte $00   ; 
- D 0 - I - 0x009EC7 02:BEB7: 00        .byte $00   ; 
- D 0 - I - 0x009EC8 02:BEB8: 00        .byte $00   ; 
- D 0 - I - 0x009EC9 02:BEB9: 00        .byte $00   ; 
- D 0 - I - 0x009ECA 02:BEBA: 00        .byte $00   ; 
- D 0 - I - 0x009ECB 02:BEBB: 00        .byte $00   ; 
- D 0 - I - 0x009ECC 02:BEBC: 00        .byte $00   ; 
- D 0 - I - 0x009ECD 02:BEBD: 00        .byte $00   ; 
- D 0 - I - 0x009ECE 02:BEBE: 00        .byte $00   ; 
- D 0 - I - 0x009ECF 02:BEBF: 00        .byte $00   ; 
- D 0 - I - 0x009ED0 02:BEC0: 00        .byte $00   ; 
- D 0 - I - 0x009ED1 02:BEC1: 00        .byte $00   ; 
- D 0 - I - 0x009ED2 02:BEC2: 00        .byte $00   ; 
- D 0 - I - 0x009ED3 02:BEC3: 7E        .byte $7E   ; 
- D 0 - I - 0x009ED4 02:BEC4: 7E        .byte $7E   ; 
- D 0 - I - 0x009ED5 02:BEC5: 00        .byte $00   ; 
- D 0 - I - 0x009ED6 02:BEC6: 00        .byte $00   ; 
- D 0 - I - 0x009ED7 02:BEC7: 00        .byte $00   ; 
- D 0 - I - 0x009ED8 02:BEC8: 00        .byte $00   ; 
- D 0 - I - 0x009ED9 02:BEC9: 00        .byte $00   ; 
- D 0 - I - 0x009EDA 02:BECA: 00        .byte $00   ; 
- D 0 - I - 0x009EDB 02:BECB: 00        .byte $00   ; 
- D 0 - I - 0x009EDC 02:BECC: 00        .byte $00   ; 
- D 0 - I - 0x009EDD 02:BECD: 00        .byte $00   ; 
- D 0 - I - 0x009EDE 02:BECE: 00        .byte $00   ; 
- D 0 - I - 0x009EDF 02:BECF: 00        .byte $00   ; 
- D 0 - I - 0x009EE0 02:BED0: 00        .byte $00   ; 
- D 0 - I - 0x009EE1 02:BED1: 32        .byte $32   ; <2>
- D 0 - I - 0x009EE2 02:BED2: 3F        .byte $3F   ; 
- D 0 - I - 0x009EE3 02:BED3: 30        .byte $30   ; <0>
- D 0 - I - 0x009EE4 02:BED4: 62        .byte $62   ; <b>
- D 0 - I - 0x009EE5 02:BED5: 19        .byte $19   ; 
- D 0 - I - 0x009EE6 02:BED6: 00        .byte $00   ; 
- D 0 - I - 0x009EE7 02:BED7: 37        .byte $37   ; <7>
- D 0 - I - 0x009EE8 02:BED8: 39        .byte $39   ; <9>
- D 0 - I - 0x009EE9 02:BED9: 29        .byte $29   ; 
- D 0 - I - 0x009EEA 02:BEDA: 2A        .byte $2A   ; 
- D 0 - I - 0x009EEB 02:BEDB: 00        .byte $00   ; 
- D 0 - I - 0x009EEC 02:BEDC: 00        .byte $00   ; 
- D 0 - I - 0x009EED 02:BEDD: 00        .byte $00   ; 
- D 0 - I - 0x009EEE 02:BEDE: 00        .byte $00   ; 
- D 0 - I - 0x009EEF 02:BEDF: 00        .byte $00   ; 
- D 0 - I - 0x009EF0 02:BEE0: 00        .byte $00   ; 
- D 0 - I - 0x009EF1 02:BEE1: 00        .byte $00   ; 
- D 0 - I - 0x009EF2 02:BEE2: 00        .byte $00   ; 
- D 0 - I - 0x009EF3 02:BEE3: 00        .byte $00   ; 
- D 0 - I - 0x009EF4 02:BEE4: 00        .byte $00   ; 
- - - - - - 0x009EF5 02:BEE5: 77        .byte $77   ; <w>
- - - - - - 0x009EF6 02:BEE6: 77        .byte $77   ; <w>
- - - - - - 0x009EF7 02:BEE7: 3F        .byte $3F   ; 
- - - - - - 0x009EF8 02:BEE8: 7F        .byte $7F   ; 
- - - - - - 0x009EF9 02:BEE9: FE        .byte $FE   ; 
- - - - - - 0x009EFA 02:BEEA: FE        .byte $FE   ; 
- - - - - - 0x009EFB 02:BEEB: 6E        .byte $6E   ; <n>
- - - - - - 0x009EFC 02:BEEC: 67        .byte $67   ; <g>
- - - - - - 0x009EFD 02:BEED: 77        .byte $77   ; <w>
- - - - - - 0x009EFE 02:BEEE: 77        .byte $77   ; <w>
- - - - - - 0x009EFF 02:BEEF: 3F        .byte $3F   ; 
- - - - - - 0x009F00 02:BEF0: 1C        .byte $1C   ; 
- - - - - - 0x009F01 02:BEF1: 3E        .byte $3E   ; 
- - - - - - 0x009F02 02:BEF2: 3E        .byte $3E   ; 
- - - - - - 0x009F03 02:BEF3: 3E        .byte $3E   ; 
- - - - - - 0x009F04 02:BEF4: 3E        .byte $3E   ; 
- - - - - - 0x009F05 02:BEF5: 1E        .byte $1E   ; 
- - - - - - 0x009F06 02:BEF6: 0E        .byte $0E   ; 
- - - - - - 0x009F07 02:BEF7: 06        .byte $06   ; 
- - - - - - 0x009F08 02:BEF8: 1C        .byte $1C   ; 
- - - - - - 0x009F09 02:BEF9: 3E        .byte $3E   ; 
- - - - - - 0x009F0A 02:BEFA: 36        .byte $36   ; <6>
- - - - - - 0x009F0B 02:BEFB: 30        .byte $30   ; <0>
- - - - - - 0x009F0C 02:BEFC: 34        .byte $34   ; <4>
- - - - - - 0x009F0D 02:BEFD: 00        .byte $00   ; 
- - - - - - 0x009F0E 02:BEFE: 30        .byte $30   ; <0>
- - - - - - 0x009F0F 02:BEFF: F8        .byte $F8   ; 
- - - - - - 0x009F10 02:BF00: 02        .byte $02   ; 
- - - - - - 0x009F11 02:BF01: 54        .byte $54   ; <T>
- - - - - - 0x009F12 02:BF02: 28        .byte $28   ; 
- - - - - - 0x009F13 02:BF03: 44        .byte $44   ; <D>
- - - - - - 0x009F14 02:BF04: C8        .byte $C8   ; 
- - - - - - 0x009F15 02:BF05: 60        .byte $60   ; 
- - - - - - 0x009F16 02:BF06: D8        .byte $D8   ; 
- - - - - - 0x009F17 02:BF07: 72        .byte $72   ; <r>
- - - - - - 0x009F18 02:BF08: 06        .byte $06   ; 
- - - - - - 0x009F19 02:BF09: 0E        .byte $0E   ; 
- - - - - - 0x009F1A 02:BF0A: 1C        .byte $1C   ; 
- - - - - - 0x009F1B 02:BF0B: 38        .byte $38   ; <8>
- - - - - - 0x009F1C 02:BF0C: 34        .byte $34   ; <4>
- - - - - - 0x009F1D 02:BF0D: 18        .byte $18   ; 
- - - - - - 0x009F1E 02:BF0E: 20        .byte $20   ; 
- - - - - - 0x009F1F 02:BF0F: 00        .byte $00   ; 
- - - - - - 0x009F20 02:BF10: 00        .byte $00   ; 
- - - - - - 0x009F21 02:BF11: 00        .byte $00   ; 
- - - - - - 0x009F22 02:BF12: 0F        .byte $0F   ; 
- - - - - - 0x009F23 02:BF13: 1C        .byte $1C   ; 
- - - - - - 0x009F24 02:BF14: 18        .byte $18   ; 
- - - - - - 0x009F25 02:BF15: 00        .byte $00   ; 
- - - - - - 0x009F26 02:BF16: 00        .byte $00   ; 
- - - - - - 0x009F27 02:BF17: 00        .byte $00   ; 
- - - - - - 0x009F28 02:BF18: 00        .byte $00   ; 
- - - - - - 0x009F29 02:BF19: 00        .byte $00   ; 
- - - - - - 0x009F2A 02:BF1A: 0F        .byte $0F   ; 
- - - - - - 0x009F2B 02:BF1B: EC        .byte $EC   ; 
- - - - - - 0x009F2C 02:BF1C: 38        .byte $38   ; <8>
- - - - - - 0x009F2D 02:BF1D: 00        .byte $00   ; 
- - - - - - 0x009F2E 02:BF1E: 00        .byte $00   ; 
- - - - - - 0x009F2F 02:BF1F: 00        .byte $00   ; 
- - - - - - 0x009F30 02:BF20: 00        .byte $00   ; 
- - - - - - 0x009F31 02:BF21: 00        .byte $00   ; 
- - - - - - 0x009F32 02:BF22: 00        .byte $00   ; 
- - - - - - 0x009F33 02:BF23: 00        .byte $00   ; 
- - - - - - 0x009F34 02:BF24: 00        .byte $00   ; 
- - - - - - 0x009F35 02:BF25: 00        .byte $00   ; 
- - - - - - 0x009F36 02:BF26: 01        .byte $01   ; 
- - - - - - 0x009F37 02:BF27: 07        .byte $07   ; 
- - - - - - 0x009F38 02:BF28: 0F        .byte $0F   ; 
- - - - - - 0x009F39 02:BF29: 07        .byte $07   ; 
- - - - - - 0x009F3A 02:BF2A: 03        .byte $03   ; 
- - - - - - 0x009F3B 02:BF2B: 00        .byte $00   ; 
- - - - - - 0x009F3C 02:BF2C: 00        .byte $00   ; 
- - - - - - 0x009F3D 02:BF2D: 00        .byte $00   ; 
- - - - - - 0x009F3E 02:BF2E: 01        .byte $01   ; 
- - - - - - 0x009F3F 02:BF2F: 07        .byte $07   ; 
- - - - - - 0x009F40 02:BF30: 0B        .byte $0B   ; 
- - - - - - 0x009F41 02:BF31: 0E        .byte $0E   ; 
- - - - - - 0x009F42 02:BF32: 06        .byte $06   ; 
- - - - - - 0x009F43 02:BF33: 03        .byte $03   ; 
- - - - - - 0x009F44 02:BF34: 00        .byte $00   ; 
- - - - - - 0x009F45 02:BF35: 00        .byte $00   ; 
- - - - - - 0x009F46 02:BF36: 00        .byte $00   ; 
- - - - - - 0x009F47 02:BF37: 00        .byte $00   ; 
- - - - - - 0x009F48 02:BF38: 0F        .byte $0F   ; 
- - - - - - 0x009F49 02:BF39: 0E        .byte $0E   ; 
- - - - - - 0x009F4A 02:BF3A: 06        .byte $06   ; 
- - - - - - 0x009F4B 02:BF3B: 03        .byte $03   ; 
- - - - - - 0x009F4C 02:BF3C: 00        .byte $00   ; 
- - - - - - 0x009F4D 02:BF3D: 00        .byte $00   ; 
- - - - - - 0x009F4E 02:BF3E: 00        .byte $00   ; 
- - - - - - 0x009F4F 02:BF3F: 00        .byte $00   ; 
- - - - - - 0x009F50 02:BF40: 10        .byte $10   ; 
- - - - - - 0x009F51 02:BF41: 78        .byte $78   ; <x>
- - - - - - 0x009F52 02:BF42: FC        .byte $FC   ; 
- - - - - - 0x009F53 02:BF43: FC        .byte $FC   ; 
- - - - - - 0x009F54 02:BF44: 78        .byte $78   ; <x>
- - - - - - 0x009F55 02:BF45: F8        .byte $F8   ; 
- - - - - - 0x009F56 02:BF46: D8        .byte $D8   ; 
- - - - - - 0x009F57 02:BF47: 98        .byte $98   ; 
- - - - - - 0x009F58 02:BF48: F0        .byte $F0   ; 
- - - - - - 0x009F59 02:BF49: F8        .byte $F8   ; 
- - - - - - 0x009F5A 02:BF4A: FC        .byte $FC   ; 
- - - - - - 0x009F5B 02:BF4B: FC        .byte $FC   ; 
- - - - - - 0x009F5C 02:BF4C: 78        .byte $78   ; <x>
- - - - - - 0x009F5D 02:BF4D: F8        .byte $F8   ; 
- - - - - - 0x009F5E 02:BF4E: D8        .byte $D8   ; 
- - - - - - 0x009F5F 02:BF4F: 98        .byte $98   ; 
- - - - - - 0x009F60 02:BF50: 18        .byte $18   ; 
- - - - - - 0x009F61 02:BF51: 18        .byte $18   ; 
- - - - - - 0x009F62 02:BF52: 18        .byte $18   ; 
- - - - - - 0x009F63 02:BF53: 18        .byte $18   ; 
- - - - - - 0x009F64 02:BF54: 18        .byte $18   ; 
- - - - - - 0x009F65 02:BF55: 28        .byte $28   ; 
- - - - - - 0x009F66 02:BF56: 3C        .byte $3C   ; 
- - - - - - 0x009F67 02:BF57: 2F        .byte $2F   ; 
- - - - - - 0x009F68 02:BF58: 18        .byte $18   ; 
- - - - - - 0x009F69 02:BF59: 18        .byte $18   ; 
- - - - - - 0x009F6A 02:BF5A: 18        .byte $18   ; 
- - - - - - 0x009F6B 02:BF5B: 18        .byte $18   ; 
- - - - - - 0x009F6C 02:BF5C: 18        .byte $18   ; 
- - - - - - 0x009F6D 02:BF5D: 38        .byte $38   ; <8>
- - - - - - 0x009F6E 02:BF5E: 3C        .byte $3C   ; 
- - - - - - 0x009F6F 02:BF5F: 2F        .byte $2F   ; 
- - - - - - 0x009F70 02:BF60: 38        .byte $38   ; <8>
- - - - - - 0x009F71 02:BF61: 30        .byte $30   ; <0>
- - - - - - 0x009F72 02:BF62: 60        .byte $60   ; 
- - - - - - 0x009F73 02:BF63: 60        .byte $60   ; 
- - - - - - 0x009F74 02:BF64: 00        .byte $00   ; 
- - - - - - 0x009F75 02:BF65: 40        .byte $40   ; 
- - - - - - 0x009F76 02:BF66: E0        .byte $E0   ; 
- - - - - - 0x009F77 02:BF67: F0        .byte $F0   ; 
- - - - - - 0x009F78 02:BF68: 38        .byte $38   ; <8>
- - - - - - 0x009F79 02:BF69: 30        .byte $30   ; <0>
- - - - - - 0x009F7A 02:BF6A: 60        .byte $60   ; 
- - - - - - 0x009F7B 02:BF6B: 60        .byte $60   ; 
- - - - - - 0x009F7C 02:BF6C: 40        .byte $40   ; 
- - - - - - 0x009F7D 02:BF6D: 40        .byte $40   ; 
- - - - - - 0x009F7E 02:BF6E: E0        .byte $E0   ; 
- - - - - - 0x009F7F 02:BF6F: F0        .byte $F0   ; 
- - - - - - 0x009F80 02:BF70: 18        .byte $18   ; 
- - - - - - 0x009F81 02:BF71: 18        .byte $18   ; 
- - - - - - 0x009F82 02:BF72: 18        .byte $18   ; 
- - - - - - 0x009F83 02:BF73: 18        .byte $18   ; 
- - - - - - 0x009F84 02:BF74: 00        .byte $00   ; 
- - - - - - 0x009F85 02:BF75: 0C        .byte $0C   ; 
- - - - - - 0x009F86 02:BF76: 1E        .byte $1E   ; 
- - - - - - 0x009F87 02:BF77: 17        .byte $17   ; 
- - - - - - 0x009F88 02:BF78: 18        .byte $18   ; 
- - - - - - 0x009F89 02:BF79: 18        .byte $18   ; 
- - - - - - 0x009F8A 02:BF7A: 18        .byte $18   ; 
- - - - - - 0x009F8B 02:BF7B: 18        .byte $18   ; 
- - - - - - 0x009F8C 02:BF7C: 08        .byte $08   ; 
- - - - - - 0x009F8D 02:BF7D: 0C        .byte $0C   ; 
- - - - - - 0x009F8E 02:BF7E: 1E        .byte $1E   ; 
- - - - - - 0x009F8F 02:BF7F: 17        .byte $17   ; 
- - - - - - 0x009F90 02:BF80: 00        .byte $00   ; 
- - - - - - 0x009F91 02:BF81: 00        .byte $00   ; 
- - - - - - 0x009F92 02:BF82: 06        .byte $06   ; 
- - - - - - 0x009F93 02:BF83: 06        .byte $06   ; 
- - - - - - 0x009F94 02:BF84: 00        .byte $00   ; 
- - - - - - 0x009F95 02:BF85: 00        .byte $00   ; 
- - - - - - 0x009F96 02:BF86: 00        .byte $00   ; 
- - - - - - 0x009F97 02:BF87: 00        .byte $00   ; 
- - - - - - 0x009F98 02:BF88: 00        .byte $00   ; 
- - - - - - 0x009F99 02:BF89: 00        .byte $00   ; 
- - - - - - 0x009F9A 02:BF8A: 06        .byte $06   ; 
- - - - - - 0x009F9B 02:BF8B: 06        .byte $06   ; 
- - - - - - 0x009F9C 02:BF8C: 00        .byte $00   ; 
- - - - - - 0x009F9D 02:BF8D: 00        .byte $00   ; 
- - - - - - 0x009F9E 02:BF8E: 00        .byte $00   ; 
- - - - - - 0x009F9F 02:BF8F: 00        .byte $00   ; 
- - - - - - 0x009FA0 02:BF90: 0E        .byte $0E   ; 
- - - - - - 0x009FA1 02:BF91: 3E        .byte $3E   ; 
- - - - - - 0x009FA2 02:BF92: 78        .byte $78   ; <x>
- - - - - - 0x009FA3 02:BF93: 50        .byte $50   ; <P>
- - - - - - 0x009FA4 02:BF94: 70        .byte $70   ; <p>
- - - - - - 0x009FA5 02:BF95: 30        .byte $30   ; <0>
- - - - - - 0x009FA6 02:BF96: 18        .byte $18   ; 
- - - - - - 0x009FA7 02:BF97: 00        .byte $00   ; 
- - - - - - 0x009FA8 02:BF98: 0E        .byte $0E   ; 
- - - - - - 0x009FA9 02:BF99: 3E        .byte $3E   ; 
- - - - - - 0x009FAA 02:BF9A: 78        .byte $78   ; <x>
- - - - - - 0x009FAB 02:BF9B: 70        .byte $70   ; <p>
- - - - - - 0x009FAC 02:BF9C: 70        .byte $70   ; <p>
- - - - - - 0x009FAD 02:BF9D: 30        .byte $30   ; <0>
- - - - - - 0x009FAE 02:BF9E: 18        .byte $18   ; 
- - - - - - 0x009FAF 02:BF9F: 00        .byte $00   ; 
- - - - - - 0x009FB0 02:BFA0: 13        .byte $13   ; 
- - - - - - 0x009FB1 02:BFA1: FF        .byte $FF   ; 
- - - - - - 0x009FB2 02:BFA2: FC        .byte $FC   ; 
- - - - - - 0x009FB3 02:BFA3: F1        .byte $F1   ; 
- - - - - - 0x009FB4 02:BFA4: 07        .byte $07   ; 
- - - - - - 0x009FB5 02:BFA5: 07        .byte $07   ; 
- - - - - - 0x009FB6 02:BFA6: 03        .byte $03   ; 
- - - - - - 0x009FB7 02:BFA7: 07        .byte $07   ; 
- - - - - - 0x009FB8 02:BFA8: 1C        .byte $1C   ; 
- - - - - - 0x009FB9 02:BFA9: FD        .byte $FD   ; 
- - - - - - 0x009FBA 02:BFAA: FF        .byte $FF   ; 
- - - - - - 0x009FBB 02:BFAB: FF        .byte $FF   ; 
- - - - - - 0x009FBC 02:BFAC: 07        .byte $07   ; 
- - - - - - 0x009FBD 02:BFAD: 07        .byte $07   ; 
- - - - - - 0x009FBE 02:BFAE: 03        .byte $03   ; 
- - - - - - 0x009FBF 02:BFAF: 07        .byte $07   ; 
- - - - - - 0x009FC0 02:BFB0: 0E        .byte $0E   ; 
- - - - - - 0x009FC1 02:BFB1: 1C        .byte $1C   ; 
- - - - - - 0x009FC2 02:BFB2: 1C        .byte $1C   ; 
- - - - - - 0x009FC3 02:BFB3: 00        .byte $00   ; 
- - - - - - 0x009FC4 02:BFB4: 38        .byte $38   ; <8>
- - - - - - 0x009FC5 02:BFB5: 3C        .byte $3C   ; 
- - - - - - 0x009FC6 02:BFB6: 00        .byte $00   ; 
- - - - - - 0x009FC7 02:BFB7: 00        .byte $00   ; 
- - - - - - 0x009FC8 02:BFB8: 0E        .byte $0E   ; 
- - - - - - 0x009FC9 02:BFB9: 1C        .byte $1C   ; 
- - - - - - 0x009FCA 02:BFBA: 1C        .byte $1C   ; 
- - - - - - 0x009FCB 02:BFBB: 10        .byte $10   ; 
- - - - - - 0x009FCC 02:BFBC: 38        .byte $38   ; <8>
- - - - - - 0x009FCD 02:BFBD: 3C        .byte $3C   ; 
- - - - - - 0x009FCE 02:BFBE: 00        .byte $00   ; 
- - - - - - 0x009FCF 02:BFBF: 00        .byte $00   ; 
- - - - - - 0x009FD0 02:BFC0: 00        .byte $00   ; 
- - - - - - 0x009FD1 02:BFC1: 00        .byte $00   ; 
- - - - - - 0x009FD2 02:BFC2: 00        .byte $00   ; 
- - - - - - 0x009FD3 02:BFC3: 00        .byte $00   ; 
- - - - - - 0x009FD4 02:BFC4: 00        .byte $00   ; 
- - - - - - 0x009FD5 02:BFC5: 00        .byte $00   ; 
- - - - - - 0x009FD6 02:BFC6: 00        .byte $00   ; 
- - - - - - 0x009FD7 02:BFC7: 00        .byte $00   ; 
- - - - - - 0x009FD8 02:BFC8: 00        .byte $00   ; 
- - - - - - 0x009FD9 02:BFC9: 00        .byte $00   ; 
- - - - - - 0x009FDA 02:BFCA: 00        .byte $00   ; 
- - - - - - 0x009FDB 02:BFCB: 00        .byte $00   ; 
- - - - - - 0x009FDC 02:BFCC: 00        .byte $00   ; 
- - - - - - 0x009FDD 02:BFCD: 00        .byte $00   ; 
- - - - - - 0x009FDE 02:BFCE: 00        .byte $00   ; 
- - - - - - 0x009FDF 02:BFCF: 00        .byte $00   ; 
- - - - - - 0x009FE0 02:BFD0: 00        .byte $00   ; 
- - - - - - 0x009FE1 02:BFD1: 00        .byte $00   ; 
- - - - - - 0x009FE2 02:BFD2: 00        .byte $00   ; 
- - - - - - 0x009FE3 02:BFD3: 00        .byte $00   ; 
- - - - - - 0x009FE4 02:BFD4: 00        .byte $00   ; 
- - - - - - 0x009FE5 02:BFD5: 00        .byte $00   ; 
- - - - - - 0x009FE6 02:BFD6: 00        .byte $00   ; 
- - - - - - 0x009FE7 02:BFD7: 00        .byte $00   ; 
- - - - - - 0x009FE8 02:BFD8: 00        .byte $00   ; 
- - - - - - 0x009FE9 02:BFD9: 00        .byte $00   ; 
- - - - - - 0x009FEA 02:BFDA: 00        .byte $00   ; 
- - - - - - 0x009FEB 02:BFDB: 00        .byte $00   ; 
- - - - - - 0x009FEC 02:BFDC: 00        .byte $00   ; 
- - - - - - 0x009FED 02:BFDD: 00        .byte $00   ; 
- - - - - - 0x009FEE 02:BFDE: 00        .byte $00   ; 
- - - - - - 0x009FEF 02:BFDF: 00        .byte $00   ; 
- - - - - - 0x009FF0 02:BFE0: 00        .byte $00   ; 
- - - - - - 0x009FF1 02:BFE1: 00        .byte $00   ; 
- - - - - - 0x009FF2 02:BFE2: 00        .byte $00   ; 
- - - - - - 0x009FF3 02:BFE3: 00        .byte $00   ; 
- - - - - - 0x009FF4 02:BFE4: 00        .byte $00   ; 
- - - - - - 0x009FF5 02:BFE5: 00        .byte $00   ; 
- - - - - - 0x009FF6 02:BFE6: 00        .byte $00   ; 
- - - - - - 0x009FF7 02:BFE7: 00        .byte $00   ; 
- - - - - - 0x009FF8 02:BFE8: 00        .byte $00   ; 
- - - - - - 0x009FF9 02:BFE9: 00        .byte $00   ; 
- - - - - - 0x009FFA 02:BFEA: 00        .byte $00   ; 
- - - - - - 0x009FFB 02:BFEB: 00        .byte $00   ; 
- - - - - - 0x009FFC 02:BFEC: 00        .byte $00   ; 
- - - - - - 0x009FFD 02:BFED: 00        .byte $00   ; 
- - - - - - 0x009FFE 02:BFEE: 00        .byte $00   ; 
- - - - - - 0x009FFF 02:BFEF: 00        .byte $00   ; 
- - - - - - 0x00A000 02:BFF0: 00        .byte $00   ; 
- - - - - - 0x00A001 02:BFF1: 00        .byte $00   ; 
- - - - - - 0x00A002 02:BFF2: 00        .byte $00   ; 
- - - - - - 0x00A003 02:BFF3: 00        .byte $00   ; 
- - - - - - 0x00A004 02:BFF4: 00        .byte $00   ; 
- - - - - - 0x00A005 02:BFF5: 00        .byte $00   ; 
- - - - - - 0x00A006 02:BFF6: 00        .byte $00   ; 
- - - - - - 0x00A007 02:BFF7: 00        .byte $00   ; 
- - - - - - 0x00A008 02:BFF8: 00        .byte $00   ; 
- - - - - - 0x00A009 02:BFF9: 00        .byte $00   ; 
- - - - - - 0x00A00A 02:BFFA: 00        .byte $00   ; 
- - - - - - 0x00A00B 02:BFFB: 00        .byte $00   ; 
- - - - - - 0x00A00C 02:BFFC: 00        .byte $00   ; 
- - - - - - 0x00A00D 02:BFFD: 00        .byte $00   ; 
- - - - - - 0x00A00E 02:BFFE: 00        .byte $00   ; 
- - - - - - 0x00A00F 02:BFFF: 00        .byte $00   ; 

.out .sprintf("Free bytes in bank 02_1: 0x%X [%d]", ($C000 - *), ($C000 - *))



