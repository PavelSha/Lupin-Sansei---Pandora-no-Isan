.segment "BANK_02_1"
.include "bank_ram.inc"
.include "constants.inc"
.org $A000  ; for listing file
; 0x008010-0x00A00F
; Page 1 can transferred in 2 banks at the same time

.export loc_AD80_activate_sound_manager
.export tbl_select_characters_dialog

; (4 bytes each)
; 1 byte - the offset of the sound row list {00,15,2A,3F,54,69,7E,93} (i.e. the number of the sound rows)
; 2 byte - apu channel {0x00, 0x01, 0x02, 0x03}
; 3 byte - the low address of the track
; 4 byte - the high address of the track
tbl_sound_row_mini:     
- - - - - - 0x008010 02:A000: 54        .byte $54, $00           ; 0x00 start screen track1
                                        .addr $8184              ; loc_track0, $A184
- D 0 - I - 0x008014 02:A004: 69        .byte $69, $01           ; 0x01 start screen track2
                                        .addr $81B1              ; loc_track1, $A1B1
- D 0 - I - 0x008018 02:A008: 7E        .byte $7E, $02           ; 0x02 start screen track3
                                        .addr $81D4              ; loc_track2, $A1D4
- D 0 - I - 0x00801C 02:A00C: 93        .byte $93, $03           ; 0x03 start screen track4
                                        .addr $81F7              ; loc_track3, $A1F7
- D 0 - I - 0x008020 02:A010: 54        .byte $54, $00           ; 0x04
                                        .addr $821C              ; loc_track4, $A21C
- D 0 - I - 0x008024 02:A014: 69        .byte $69, $01           ; 0x05
                                        .addr $8281              ; loc_track5, $A281
- D 0 - I - 0x008028 02:A018: 54        .byte $54, $00           ; 0x06
                                        .addr $82F7              ; loc_track6, $A2F7
- D 0 - I - 0x00802C 02:A01C: 7E        .byte $7E, $02           ; 0x07
                                        .addr $835A              ; loc_track7, $A35A
- D 0 - I - 0x008030 02:A020: 54        .byte $54, $00           ; 0x08
                                        .addr $83B1              ; loc_track8, $A3B1
- D 0 - I - 0x008034 02:A024: 7E        .byte $7E, $02           ; 0x09
                                        .addr $8894              ; loc_track9, $A894
- - - - - - 0x008038 02:A028: 3F        .byte $3F, $03           ; 0x0A - blank
                                        .addr $84BD              ; loc_trackA, $A4BD
- D 0 - I - 0x00803C 02:A02C: 3F        .byte $3F, $03           ; 0x0B - 3rd sound row
                                        .addr $84BE              ; loc_trackB, $A4BE
- D 0 - I - 0x008040 02:A030: 3F        .byte $3F, $03           ; 0x0C
                                        .addr $84C7              ; loc_trackC, $A4C7
- D 0 - I - 0x008044 02:A034: 2A        .byte $2A, $01           ; 0x0D
                                        .addr $84D4              ; loc_trackD, $A4D4
- D 0 - I - 0x008048 02:A038: 00        .byte $00, $01           ; 0x0E
                                        .addr $84DD              ; loc_trackE, $A4DD
- D 0 - I - 0x00804C 02:A03C: 3F        .byte $3F, $03           ; 0x0F
                                        .addr $84EA              ; loc_trackF, $A4EA
- D 0 - I - 0x008050 02:A040: 2A        .byte $2A, $01           ; 0x10
                                        .addr $84F5              ; loc_track10, $A4F5
- D 0 - I - 0x008054 02:A044: 2A        .byte $2A, $01           ; 0x11
                                        .addr $84FC              ; loc_track11, $A4FC
- D 0 - I - 0x008058 02:A048: 15        .byte $15, $01           ; 0x12
                                        .addr $8509              ; loc_track12, $A509
- D 0 - I - 0x00805C 02:A04C: 2A        .byte $2A, $01           ; 0x13
                                        .addr $8514              ; loc_track13, $A514
- D 0 - I - 0x008060 02:A050: 2A        .byte $2A, $01           ; 0x14
                                        .addr $8529              ; loc_track14, $A529
- D 0 - I - 0x008064 02:A054: 2A        .byte $2A, $01           ; 0x15
                                        .addr $853A              ; loc_track15, $A53A
- D 0 - I - 0x008068 02:A058: 3F        .byte $3F, $03           ; 0x16
                                        .addr $8541              ; loc_track16, $A541
- D 0 - I - 0x00806C 02:A05C: 3F        .byte $3F, $03           ; 0x17
                                        .addr $8548              ; loc_track17, $A548
- D 0 - I - 0x008070 02:A060: 2A        .byte $2A, $01           ; 0x18
                                        .addr $8553              ; loc_track18, $A553
- D 0 - I - 0x008074 02:A064: 3F        .byte $3F, $03           ; 0x19
                                        .addr $8562              ; loc_track19, $A562
- D 0 - I - 0x008078 02:A068: 3F        .byte $3F, $03           ; 0x1A
                                        .addr $856D              ; loc_track1A, $A56D
- D 0 - I - 0x00807C 02:A06C: 54        .byte $54, $00           ; 0x1B
                                        .addr $8583              ; loc_track1B, $A583
- D 0 - I - 0x008080 02:A070: 7E        .byte $7E, $02           ; 0x1C
                                        .addr $85E0              ; loc_track1C, $A5E0
- D 0 - I - 0x008084 02:A074: 54        .byte $54, $00           ; 0x1D
                                        .addr $8617              ; loc_track1D, $A617
- D 0 - I - 0x008088 02:A078: 7E        .byte $7E, $02           ; 0x1E
                                        .addr $864C              ; loc_track1E, $A64C
- D 0 - I - 0x00808C 02:A07C: 54        .byte $54, $00           ; 0x1F
                                        .addr $86B1              ; loc_track1F, $A6B1
- D 0 - I - 0x008090 02:A080: 7E        .byte $7E, $02           ; 0x20
                                        .addr $86D2              ; loc_track20, $A6D2
- D 0 - I - 0x008094 02:A084: 2A        .byte $2A, $01           ; 0x21
                                        .addr $8578              ; loc_track21, $A578
- D 0 - I - 0x008098 02:A088: 54        .byte $54, $00           ; 0x22
                                        .addr $86EB              ; loc_track22, $A6EB
- D 0 - I - 0x00809C 02:A08C: 7E        .byte $7E, $02           ; 0x23
                                        .addr $8776              ; loc_track23, $A776
- D 0 - I - 0x0080A0 02:A090: 54        .byte $54, $00           ; 0x24
                                        .addr $87B1              ; loc_track24, $A7B1
- D 0 - I - 0x0080A4 02:A094: 7E        .byte $7E, $02           ; 0x25
                                        .addr $87D2              ; loc_track25, $A7D2
- - - - - - 0x0080A8 02:A098: 3F        .byte $3F, $03           ; 0x26 - blank
                                        .addr $88F7              ; loc_track26, $A8F7
- - - - - - 0x0080AC 02:A09C: 2A        .byte $2A, $01           ; 0x27 - blank
                                        .addr $88F8              ; loc_track27, $A8F8
- D 0 - I - 0x0080B0 02:A0A0: 3F        .byte $3F, $03           ; 0x28
                                        .addr $88F9              ; loc_track28, $A8F9
- D 0 - I - 0x0080B4 02:A0A4: 2A        .byte $2A, $01           ; 0x29
                                        .addr $8900              ; loc_track29, $A900
- D 0 - I - 0x0080B8 02:A0A8: 2A        .byte $2A, $01           ; 0x2A
                                        .addr $8909              ; loc_track2A, $A909
- - - - - - 0x0080BC 02:A0AC: 2A        .byte $2A, $01           ; 0x2B - blank
                                        .addr $891A              ; loc_track2B, $A91A
- D 0 - I - 0x0080C0 02:A0B0: 3F        .byte $3F, $03           ; 0x2C
                                        .addr $891B              ; loc_track2C, $A91B
- D 0 - I - 0x0080C4 02:A0B4: 3F        .byte $3F, $03           ; 0x2D
                                        .addr $8926              ; loc_track2D, $A926
- - - - - - 0x0080C8 02:A0B8: 3F        .byte $3F, $03           ; 0x2E - blank
                                        .addr $892F              ; loc_track2E, $A92F
- - - - - - 0x0080CC 02:A0BC: 3F        .byte $3F, $03           ; 0x2F - blank
                                        .addr $8930              ; loc_track2F, $A930
- D 0 - I - 0x0080D0 02:A0C0: 2A        .byte $2A, $01           ; 0x30
                                        .addr $8931              ; loc_track30, $A931
- D 0 - I - 0x0080D4 02:A0C4: 3F        .byte $3F, $03           ; 0x31
                                        .addr $8940              ; loc_track31, $A940
- D 0 - I - 0x0080D8 02:A0C8: 3F        .byte $3F, $03           ; 0x32
                                        .addr $8947              ; loc_track32, $A947
- - - - - - 0x0080DC 02:A0CC: 3F        .byte $3F, $03           ; 0x33 - blank
                                        .addr $8957              ; loc_track33, $A957
- D 0 - I - 0x0080E0 02:A0D0: 2A        .byte $2A, $01           ; 0x34
                                        .addr $8958              ; loc_track34, $A958
- D 0 - I - 0x0080E4 02:A0D4: 2A        .byte $2A, $01           ; 0x35
                                        .addr $895F              ; loc_track35, $A95F
- D 0 - I - 0x0080E8 02:A0D8: 3F        .byte $3F, $03           ; 0x36
                                        .addr $896C              ; loc_track36, $A96C
- D 0 - I - 0x0080EC 02:A0DC: 2A        .byte $2A, $01           ; 0x37
                                        .addr $8977              ; loc_track37, $A977
- - - - - - 0x0080F0 02:A0E0: 2A        .byte $2A, $01           ; 0x38 - blank
                                        .addr $8982              ; loc_track38, $A982
- D 0 - I - 0x0080F4 02:A0E4: 7E        .byte $7E, $02           ; 0x39
                                        .addr $87F1              ; loc_track39, $A7F1
- D 0 - I - 0x0080F8 02:A0E8: 69        .byte $69, $01           ; 0x3A
                                        .addr $8829              ; loc_track3A, $A829
- D 0 - I - 0x0080FC 02:A0EC: 69        .byte $69, $01           ; 0x3B
                                        .addr $8436              ; loc_track3B, $A436
- - - - - - 0x008100 02:A0F0: 2A        .byte $2A, $01           ; 0x3C - blank
                                        .addr $8983              ; loc_track3C, $A983
- D 0 - I - 0x008104 02:A0F4: 3F        .byte $3F, $03           ; 0x3D
                                        .addr $8984              ; loc_track3D, $A984
- - - - - - 0x008108 02:A0F8: 2A        .byte $2A, $01           ; 0x3E - blank
                                        .addr $898D              ; loc_track3E, $A98D
- D 0 - I - 0x00810C 02:A0FC: 2A        .byte $2A, $01           ; 0x3F
                                        .addr $898E              ; loc_track3F, $A98E
- D 0 - I - 0x008110 02:A100: 2A        .byte $2A, $01           ; 0x40
                                        .addr $8995              ; loc_track40, $A995
- D 0 - I - 0x008114 02:A104: 3F        .byte $3F, $03           ; 0x41
                                        .addr $899C              ; loc_track41, $A99C
- - - - - - 0x008118 02:A108: 2A        .byte $2A, $01           ; 0x42 - blank
                                        .addr $89A7              ; loc_track42, $A9A7
- D 0 - I - 0x00811C 02:A10C: 69        .byte $69, $01           ; 0x43
                                        .addr $89A8              ; loc_track43, $A9A8
- D 0 - I - 0x008120 02:A110: 69        .byte $69, $01           ; 0x44
                                        .addr $8A0D              ; loc_track44, $AA0D
- D 0 - I - 0x008124 02:A114: 69        .byte $69, $01           ; 0x45
                                        .addr $8AA8              ; loc_track45, $AAA8
- D 0 - I - 0x008128 02:A118: 69        .byte $69, $01           ; 0x46
                                        .addr $8AC7              ; loc_track46, $AAC7
- D 0 - I - 0x00812C 02:A11C: 69        .byte $69, $01           ; 0x47
                                        .addr $8B3C              ; loc_track47, $AB3C
- D 0 - I - 0x008130 02:A120: 93        .byte $93, $03           ; 0x48
                                        .addr $8B5F              ; loc_track48, $AB5F
- D 0 - I - 0x008134 02:A124: 93        .byte $93, $03           ; 0x49
                                        .addr $8B83              ; loc_track49, $AB83
- D 0 - I - 0x008138 02:A128: 93        .byte $93, $03           ; 0x4A
                                        .addr $8B92              ; loc_track4A, $AB92
- D 0 - I - 0x00813C 02:A12C: 93        .byte $93, $03           ; 0x4B
                                        .addr $8B9B              ; loc_track4B, $AB9B
- D 0 - I - 0x008140 02:A130: 93        .byte $93, $03           ; 0x4C
                                        .addr $8BB2              ; loc_track4C, $ABB2
- D 0 - I - 0x008144 02:A134: 93        .byte $93, $03           ; 0x4D
                                        .addr $8BC9              ; loc_track4D, $ABC9
- D 0 - I - 0x008148 02:A138: 93        .byte $93, $03           ; 0x4E
                                        .addr $8BE0              ; loc_track4E, $ABE0
- D 0 - I - 0x00814C 02:A13C: 93        .byte $93, $03           ; 0x4F
                                        .addr $8BEF              ; loc_track4F, $ABEF
- D 0 - I - 0x008150 02:A140: 2A        .byte $2A, $01           ; 0x50 - typing sound
                                        .addr $8BFE              ; loc_track50, $ABFE
- D 0 - I - 0x008154 02:A144: 2A        .byte $2A, $01           ; 0x51
                                        .addr $8C07              ; loc_track51, $AC07
- D 0 - I - 0x008158 02:A148: 3F        .byte $3F, $03           ; 0x52
                                        .addr $8C16              ; loc_track52, $AC16
- - - - - - 0x00815C 02:A14C: 00        .byte $00, $00           ; 0x53
                                        .addr $8C21              ; loc_track53, $AC21
- - - - - - 0x008160 02:A150: 2A        .byte $2A, $02           ; 0x54
                                        .addr $8C36              ; loc_track54, $AC36
- D 0 - I - 0x008164 02:A154: 54        .byte $54, $00           ; 0x55
                                        .addr $8C4F              ; loc_track55, $AC4F
- D 0 - I - 0x008168 02:A158: 69        .byte $69, $01           ; 0x56
                                        .addr $8C88              ; loc_track56, $AC88
- D 0 - I - 0x00816C 02:A15C: 7E        .byte $7E, $02           ; 0x57
                                        .addr $8CC1              ; loc_track57, $ACC1
- - - - - - 0x008170 02:A160: 54        .byte $54, $00           ; 0x58 - blank
                                        .addr $8CD8              ; loc_track58, $ACD8
- - - - - - 0x008174 02:A164: 69        .byte $69, $01           ; 0x59 - blank
                                        .addr $8CD9              ; loc_track59, $ACD9
- - - - - - 0x008178 02:A168: 7E        .byte $7E, $02           ; 0x5A - blank
                                        .addr $8CDA              ; loc_track5A, $ACDA
- D 0 - I - 0x00817C 02:A16C: 54        .byte $54, $00           ; 0x5B
                                        .addr $8CF5              ; loc_track5B, $ACF5
- D 0 - I - 0x008180 02:A170: 69        .byte $69, $01           ; 0x5C
                                        .addr $8D2A              ; loc_track5C, $AD2A
- D 0 - I - 0x008184 02:A174: 7E        .byte $7E, $02           ; 0x5D
                                        .addr $8D33              ; loc_track5D, $AD33
- D 0 - I - 0x008188 02:A178: 93        .byte $93, $03           ; 0x5E
                                        .addr $8D5A              ; loc_track5E, $AD5A
- D 0 - I - 0x00818C 02:A17C: 2A        .byte $2A, $01           ; 0x5F
                                        .addr $8CDB              ; loc_track5F, $ACDB
- D 0 - I - 0x008190 02:A180: 2A        .byte $2A, $01           ; 0x60
                                        .addr $8CEA              ; loc_track60, $ACEA

loc_track0:
- D 0 - I - 0x008194 02:A184: 06        .byte $06   ; 
- D 0 - I - 0x008195 02:A185: 03        .byte $03   ; 
- D 0 - I - 0x008196 02:A186: 02        .byte $02   ; 
- D 0 - I - 0x008197 02:A187: 00        .byte $00   ; 
- D 0 - I - 0x008198 02:A188: 32        .byte $32   ; <2>
- D 0 - I - 0x008199 02:A189: 01        .byte $01   ; 
- D 0 - I - 0x00819A 02:A18A: 32        .byte $32   ; <2>
- D 0 - I - 0x00819B 02:A18B: 01        .byte $01   ; 
- D 0 - I - 0x00819C 02:A18C: 35        .byte $35   ; <5>
- D 0 - I - 0x00819D 02:A18D: 01        .byte $01   ; 
- D 0 - I - 0x00819E 02:A18E: 32        .byte $32   ; <2>
- D 0 - I - 0x00819F 02:A18F: 03        .byte $03   ; 
- D 0 - I - 0x0081A0 02:A190: A0        .byte $A0   ; 
- D 0 - I - 0x0081A1 02:A191: 0F        .byte $0F   ; 
- D 0 - I - 0x0081A2 02:A192: 37        .byte $37   ; <7>
- D 0 - I - 0x0081A3 02:A193: 0A        .byte $0A   ; 
- D 0 - I - 0x0081A4 02:A194: 35        .byte $35   ; <5>
- D 0 - I - 0x0081A5 02:A195: 03        .byte $03   ; 
- D 0 - I - 0x0081A6 02:A196: 37        .byte $37   ; <7>
- D 0 - I - 0x0081A7 02:A197: 03        .byte $03   ; 
- D 0 - I - 0x0081A8 02:A198: 32        .byte $32   ; <2>
- D 0 - I - 0x0081A9 02:A199: 0A        .byte $0A   ; 
- D 0 - I - 0x0081AA 02:A19A: 30        .byte $30   ; <0>
- D 0 - I - 0x0081AB 02:A19B: 03        .byte $03   ; 
- D 0 - I - 0x0081AC 02:A19C: 29        .byte $29   ; 
- D 0 - I - 0x0081AD 02:A19D: 03        .byte $03   ; 
- D 0 - I - 0x0081AE 02:A19E: 27        .byte $27   ; 
- D 0 - I - 0x0081AF 02:A19F: 10        .byte $10   ; 
- D 0 - I - 0x0081B0 02:A1A0: A0        .byte $A0   ; 
- D 0 - I - 0x0081B1 02:A1A1: 02        .byte $02   ; 
- D 0 - I - 0x0081B2 02:A1A2: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B3 02:A1A3: 01        .byte $01   ; 
- D 0 - I - 0x0081B4 02:A1A4: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B5 02:A1A5: 01        .byte $01   ; 
- D 0 - I - 0x0081B6 02:A1A6: 33        .byte $33   ; <3>
- D 0 - I - 0x0081B7 02:A1A7: 01        .byte $01   ; 
- D 0 - I - 0x0081B8 02:A1A8: 35        .byte $35   ; <5>
- D 0 - I - 0x0081B9 02:A1A9: 02        .byte $02   ; 
- D 0 - I - 0x0081BA 02:A1AA: 35        .byte $35   ; <5>
- D 0 - I - 0x0081BB 02:A1AB: 02        .byte $02   ; 
- D 0 - I - 0x0081BC 02:A1AC: 35        .byte $35   ; <5>
- D 0 - I - 0x0081BD 02:A1AD: 01        .byte $01   ; 
- D 0 - I - 0x0081BE 02:A1AE: 37        .byte $37   ; <7>
- D 0 - I - 0x0081BF 02:A1AF: 03        .byte $03   ; 
- D 0 - I - 0x0081C0 02:A1B0: FF        .byte $FF   ; 

loc_track1:
- D 0 - I - 0x0081C1 02:A1B1: 06        .byte $06   ; 
- D 0 - I - 0x0081C2 02:A1B2: 00        .byte $00   ; 
- D 0 - I - 0x0081C3 02:A1B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0081C4 02:A1B4: 00        .byte $00   ; 
- D 0 - I - 0x0081C5 02:A1B5: 1F        .byte $1F   ; 
- D 0 - I - 0x0081C6 02:A1B6: 06        .byte $06   ; 
- D 0 - I - 0x0081C7 02:A1B7: 1A        .byte $1A   ; 
- D 0 - I - 0x0081C8 02:A1B8: 03        .byte $03   ; 
- D 0 - I - 0x0081C9 02:A1B9: 19        .byte $19   ; 
- D 0 - I - 0x0081CA 02:A1BA: 03        .byte $03   ; 
- D 0 - I - 0x0081CB 02:A1BB: A0        .byte $A0   ; 
- D 0 - I - 0x0081CC 02:A1BC: 03        .byte $03   ; 
- D 0 - I - 0x0081CD 02:A1BD: 1A        .byte $1A   ; 
- D 0 - I - 0x0081CE 02:A1BE: 0A        .byte $0A   ; 
- D 0 - I - 0x0081CF 02:A1BF: A0        .byte $A0   ; 
- D 0 - I - 0x0081D0 02:A1C0: 0F        .byte $0F   ; 
- D 0 - I - 0x0081D1 02:A1C1: B2        .byte $B2   ; 
- D 0 - I - 0x0081D2 02:A1C2: 03        .byte $03   ; 
- D 0 - I - 0x0081D3 02:A1C3: A0        .byte $A0   ; 
- D 0 - I - 0x0081D4 02:A1C4: 01        .byte $01   ; 
- D 0 - I - 0x0081D5 02:A1C5: 27        .byte $27   ; 
- D 0 - I - 0x0081D6 02:A1C6: 01        .byte $01   ; 
- D 0 - I - 0x0081D7 02:A1C7: 27        .byte $27   ; 
- D 0 - I - 0x0081D8 02:A1C8: 01        .byte $01   ; 
- D 0 - I - 0x0081D9 02:A1C9: 27        .byte $27   ; 
- D 0 - I - 0x0081DA 02:A1CA: 01        .byte $01   ; 
- D 0 - I - 0x0081DB 02:A1CB: 29        .byte $29   ; 
- D 0 - I - 0x0081DC 02:A1CC: 02        .byte $02   ; 
- D 0 - I - 0x0081DD 02:A1CD: 29        .byte $29   ; 
- D 0 - I - 0x0081DE 02:A1CE: 02        .byte $02   ; 
- D 0 - I - 0x0081DF 02:A1CF: 29        .byte $29   ; 
- D 0 - I - 0x0081E0 02:A1D0: 01        .byte $01   ; 
- D 0 - I - 0x0081E1 02:A1D1: 2A        .byte $2A   ; 
- D 0 - I - 0x0081E2 02:A1D2: 03        .byte $03   ; 
- D 0 - I - 0x0081E3 02:A1D3: FF        .byte $FF   ; 

loc_track2:
- D 0 - I - 0x0081E4 02:A1D4: 06        .byte $06   ; 
- D 0 - I - 0x0081E5 02:A1D5: 7F        .byte $7F   ; 
- D 0 - I - 0x0081E6 02:A1D6: 00        .byte $00   ; 
- D 0 - I - 0x0081E7 02:A1D7: 00        .byte $00   ; 
- D 0 - I - 0x0081E8 02:A1D8: 1F        .byte $1F   ; 
- D 0 - I - 0x0081E9 02:A1D9: 06        .byte $06   ; 
- D 0 - I - 0x0081EA 02:A1DA: 27        .byte $27   ; 
- D 0 - I - 0x0081EB 02:A1DB: 03        .byte $03   ; 
- D 0 - I - 0x0081EC 02:A1DC: 25        .byte $25   ; 
- D 0 - I - 0x0081ED 02:A1DD: 03        .byte $03   ; 
- D 0 - I - 0x0081EE 02:A1DE: A2        .byte $A2   ; 
- D 0 - I - 0x0081EF 02:A1DF: 20        .byte $20   ; 
- D 0 - I - 0x0081F0 02:A1E0: 27        .byte $27   ; 
- D 0 - I - 0x0081F1 02:A1E1: 0A        .byte $0A   ; 
- D 0 - I - 0x0081F2 02:A1E2: A2        .byte $A2   ; 
- D 0 - I - 0x0081F3 02:A1E3: 7F        .byte $7F   ; 
- D 0 - I - 0x0081F4 02:A1E4: B2        .byte $B2   ; 
- D 0 - I - 0x0081F5 02:A1E5: 03        .byte $03   ; 
- D 0 - I - 0x0081F6 02:A1E6: A2        .byte $A2   ; 
- D 0 - I - 0x0081F7 02:A1E7: 10        .byte $10   ; 
- D 0 - I - 0x0081F8 02:A1E8: 23        .byte $23   ; 
- D 0 - I - 0x0081F9 02:A1E9: 01        .byte $01   ; 
- D 0 - I - 0x0081FA 02:A1EA: 25        .byte $25   ; 
- D 0 - I - 0x0081FB 02:A1EB: 01        .byte $01   ; 
- D 0 - I - 0x0081FC 02:A1EC: 23        .byte $23   ; 
- D 0 - I - 0x0081FD 02:A1ED: 01        .byte $01   ; 
- D 0 - I - 0x0081FE 02:A1EE: 25        .byte $25   ; 
- D 0 - I - 0x0081FF 02:A1EF: 02        .byte $02   ; 
- D 0 - I - 0x008200 02:A1F0: 25        .byte $25   ; 
- D 0 - I - 0x008201 02:A1F1: 02        .byte $02   ; 
- D 0 - I - 0x008202 02:A1F2: 25        .byte $25   ; 
- D 0 - I - 0x008203 02:A1F3: 01        .byte $01   ; 
- D 0 - I - 0x008204 02:A1F4: 27        .byte $27   ; 
- D 0 - I - 0x008205 02:A1F5: 03        .byte $03   ; 
- D 0 - I - 0x008206 02:A1F6: FF        .byte $FF   ; 

loc_track3:
- D 0 - I - 0x008207 02:A1F7: 06        .byte $06   ; 
- D 0 - I - 0x008208 02:A1F8: 00        .byte $00   ; 
- D 0 - I - 0x008209 02:A1F9: 00        .byte $00   ; 
- D 0 - I - 0x00820A 02:A1FA: 00        .byte $00   ; 
- D 0 - I - 0x00820B 02:A1FB: 1F        .byte $1F   ; 
- D 0 - I - 0x00820C 02:A1FC: 06        .byte $06   ; 
- D 0 - I - 0x00820D 02:A1FD: 02        .byte $02   ; 
- D 0 - I - 0x00820E 02:A1FE: 01        .byte $01   ; 
- D 0 - I - 0x00820F 02:A1FF: 02        .byte $02   ; 
- D 0 - I - 0x008210 02:A200: 01        .byte $01   ; 
- D 0 - I - 0x008211 02:A201: 02        .byte $02   ; 
- D 0 - I - 0x008212 02:A202: 01        .byte $01   ; 
- D 0 - I - 0x008213 02:A203: 02        .byte $02   ; 
- D 0 - I - 0x008214 02:A204: 01        .byte $01   ; 
- D 0 - I - 0x008215 02:A205: 09        .byte $09   ; 
- D 0 - I - 0x008216 02:A206: 01        .byte $01   ; 
- D 0 - I - 0x008217 02:A207: 02        .byte $02   ; 
- D 0 - I - 0x008218 02:A208: 01        .byte $01   ; 
- D 0 - I - 0x008219 02:A209: 02        .byte $02   ; 
- D 0 - I - 0x00821A 02:A20A: 02        .byte $02   ; 
- D 0 - I - 0x00821B 02:A20B: B5        .byte $B5   ; 
- D 0 - I - 0x00821C 02:A20C: 03        .byte $03   ; 
- D 0 - I - 0x00821D 02:A20D: 04        .byte $04   ; 
- D 0 - I - 0x00821E 02:A20E: 01        .byte $01   ; 
- D 0 - I - 0x00821F 02:A20F: 04        .byte $04   ; 
- D 0 - I - 0x008220 02:A210: 01        .byte $01   ; 
- D 0 - I - 0x008221 02:A211: 04        .byte $04   ; 
- D 0 - I - 0x008222 02:A212: 01        .byte $01   ; 
- D 0 - I - 0x008223 02:A213: 04        .byte $04   ; 
- D 0 - I - 0x008224 02:A214: 02        .byte $02   ; 
- D 0 - I - 0x008225 02:A215: 04        .byte $04   ; 
- D 0 - I - 0x008226 02:A216: 02        .byte $02   ; 
- D 0 - I - 0x008227 02:A217: 04        .byte $04   ; 
- D 0 - I - 0x008228 02:A218: 01        .byte $01   ; 
- D 0 - I - 0x008229 02:A219: 0A        .byte $0A   ; 
- D 0 - I - 0x00822A 02:A21A: 03        .byte $03   ; 
- D 0 - I - 0x00822B 02:A21B: FF        .byte $FF   ; 

loc_track4:
- D 0 - I - 0x00822C 02:A21C: 05        .byte $05   ; 
- D 0 - I - 0x00822D 02:A21D: 01        .byte $01   ; 
- D 0 - I - 0x00822E 02:A21E: 04        .byte $04   ; 
- D 0 - I - 0x00822F 02:A21F: 00        .byte $00   ; 
- D 0 - I - 0x008230 02:A220: 32        .byte $32   ; <2>
- D 0 - I - 0x008231 02:A221: 02        .byte $02   ; 
- D 0 - I - 0x008232 02:A222: 32        .byte $32   ; <2>
- D 0 - I - 0x008233 02:A223: 02        .byte $02   ; 
- D 0 - I - 0x008234 02:A224: 1F        .byte $1F   ; 
- D 0 - I - 0x008235 02:A225: 06        .byte $06   ; 
- D 0 - I - 0x008236 02:A226: 30        .byte $30   ; <0>
- D 0 - I - 0x008237 02:A227: 02        .byte $02   ; 
- D 0 - I - 0x008238 02:A228: 1F        .byte $1F   ; 
- D 0 - I - 0x008239 02:A229: 02        .byte $02   ; 
- D 0 - I - 0x00823A 02:A22A: 32        .byte $32   ; <2>
- D 0 - I - 0x00823B 02:A22B: 02        .byte $02   ; 
- D 0 - I - 0x00823C 02:A22C: 1F        .byte $1F   ; 
- D 0 - I - 0x00823D 02:A22D: 0A        .byte $0A   ; 
- D 0 - I - 0x00823E 02:A22E: 35        .byte $35   ; <5>
- D 0 - I - 0x00823F 02:A22F: 02        .byte $02   ; 
- D 0 - I - 0x008240 02:A230: 1F        .byte $1F   ; 
- D 0 - I - 0x008241 02:A231: 04        .byte $04   ; 
- D 0 - I - 0x008242 02:A232: 29        .byte $29   ; 
- D 0 - I - 0x008243 02:A233: 02        .byte $02   ; 
- D 0 - I - 0x008244 02:A234: 1F        .byte $1F   ; 
- D 0 - I - 0x008245 02:A235: 1E        .byte $1E   ; 
- D 0 - I - 0x008246 02:A236: 32        .byte $32   ; <2>
- D 0 - I - 0x008247 02:A237: 02        .byte $02   ; 
- D 0 - I - 0x008248 02:A238: 32        .byte $32   ; <2>
- D 0 - I - 0x008249 02:A239: 02        .byte $02   ; 
- D 0 - I - 0x00824A 02:A23A: 1F        .byte $1F   ; 
- D 0 - I - 0x00824B 02:A23B: 06        .byte $06   ; 
- D 0 - I - 0x00824C 02:A23C: 30        .byte $30   ; <0>
- D 0 - I - 0x00824D 02:A23D: 02        .byte $02   ; 
- D 0 - I - 0x00824E 02:A23E: 1F        .byte $1F   ; 
- D 0 - I - 0x00824F 02:A23F: 02        .byte $02   ; 
- D 0 - I - 0x008250 02:A240: 32        .byte $32   ; <2>
- D 0 - I - 0x008251 02:A241: 02        .byte $02   ; 
- D 0 - I - 0x008252 02:A242: 1F        .byte $1F   ; 
- D 0 - I - 0x008253 02:A243: 0A        .byte $0A   ; 
- D 0 - I - 0x008254 02:A244: 35        .byte $35   ; <5>
- D 0 - I - 0x008255 02:A245: 02        .byte $02   ; 
- D 0 - I - 0x008256 02:A246: 1F        .byte $1F   ; 
- D 0 - I - 0x008257 02:A247: 04        .byte $04   ; 
- D 0 - I - 0x008258 02:A248: 29        .byte $29   ; 
- D 0 - I - 0x008259 02:A249: 02        .byte $02   ; 
- D 0 - I - 0x00825A 02:A24A: 1F        .byte $1F   ; 
- D 0 - I - 0x00825B 02:A24B: 16        .byte $16   ; 
- D 0 - I - 0x00825C 02:A24C: 35        .byte $35   ; <5>
- D 0 - I - 0x00825D 02:A24D: 01        .byte $01   ; 
- D 0 - I - 0x00825E 02:A24E: 33        .byte $33   ; <3>
- D 0 - I - 0x00825F 02:A24F: 01        .byte $01   ; 
- D 0 - I - 0x008260 02:A250: 32        .byte $32   ; <2>
- D 0 - I - 0x008261 02:A251: 01        .byte $01   ; 
- D 0 - I - 0x008262 02:A252: 30        .byte $30   ; <0>
- D 0 - I - 0x008263 02:A253: 01        .byte $01   ; 
- D 0 - I - 0x008264 02:A254: 32        .byte $32   ; <2>
- D 0 - I - 0x008265 02:A255: 01        .byte $01   ; 
- D 0 - I - 0x008266 02:A256: 30        .byte $30   ; <0>
- D 0 - I - 0x008267 02:A257: 01        .byte $01   ; 
- D 0 - I - 0x008268 02:A258: 2A        .byte $2A   ; 
- D 0 - I - 0x008269 02:A259: 01        .byte $01   ; 
- D 0 - I - 0x00826A 02:A25A: 29        .byte $29   ; 
- D 0 - I - 0x00826B 02:A25B: 01        .byte $01   ; 
- D 0 - I - 0x00826C 02:A25C: A0        .byte $A0   ; 
- D 0 - I - 0x00826D 02:A25D: 0F        .byte $0F   ; 
- D 0 - I - 0x00826E 02:A25E: 37        .byte $37   ; <7>
- D 0 - I - 0x00826F 02:A25F: 08        .byte $08   ; 
- D 0 - I - 0x008270 02:A260: 37        .byte $37   ; <7>
- D 0 - I - 0x008271 02:A261: 02        .byte $02   ; 
- D 0 - I - 0x008272 02:A262: 37        .byte $37   ; <7>
- D 0 - I - 0x008273 02:A263: 02        .byte $02   ; 
- D 0 - I - 0x008274 02:A264: 3A        .byte $3A   ; 
- D 0 - I - 0x008275 02:A265: 04        .byte $04   ; 
- D 0 - I - 0x008276 02:A266: 39        .byte $39   ; <9>
- D 0 - I - 0x008277 02:A267: 0C        .byte $0C   ; 
- D 0 - I - 0x008278 02:A268: 35        .byte $35   ; <5>
- D 0 - I - 0x008279 02:A269: 02        .byte $02   ; 
- D 0 - I - 0x00827A 02:A26A: 30        .byte $30   ; <0>
- D 0 - I - 0x00827B 02:A26B: 02        .byte $02   ; 
- D 0 - I - 0x00827C 02:A26C: 32        .byte $32   ; <2>
- D 0 - I - 0x00827D 02:A26D: 20        .byte $20   ; 
- D 0 - I - 0x00827E 02:A26E: 37        .byte $37   ; <7>
- D 0 - I - 0x00827F 02:A26F: 08        .byte $08   ; 
- D 0 - I - 0x008280 02:A270: 37        .byte $37   ; <7>
- D 0 - I - 0x008281 02:A271: 02        .byte $02   ; 
- D 0 - I - 0x008282 02:A272: 37        .byte $37   ; <7>
- D 0 - I - 0x008283 02:A273: 02        .byte $02   ; 
- D 0 - I - 0x008284 02:A274: 3A        .byte $3A   ; 
- D 0 - I - 0x008285 02:A275: 04        .byte $04   ; 
- D 0 - I - 0x008286 02:A276: 40        .byte $40   ; 
- D 0 - I - 0x008287 02:A277: 08        .byte $08   ; 
- D 0 - I - 0x008288 02:A278: 39        .byte $39   ; <9>
- D 0 - I - 0x008289 02:A279: 04        .byte $04   ; 
- D 0 - I - 0x00828A 02:A27A: 35        .byte $35   ; <5>
- D 0 - I - 0x00828B 02:A27B: 04        .byte $04   ; 
- D 0 - I - 0x00828C 02:A27C: 37        .byte $37   ; <7>
- D 0 - I - 0x00828D 02:A27D: 20        .byte $20   ; 
- D 0 - I - 0x00828E 02:A27E: B0        .byte $B0   ; 
- D 0 - I - 0x00828F 02:A27F: 02        .byte $02   ; 
- - - - - - 0x008290 02:A280: FF        .byte $FF   ; 

loc_track5:
- D 0 - I - 0x008291 02:A281: 15        .byte $15   ; 
- D 0 - I - 0x008292 02:A282: 01        .byte $01   ; 
- D 0 - I - 0x008293 02:A283: 04        .byte $04   ; 
- D 0 - I - 0x008294 02:A284: 00        .byte $00   ; 
- D 0 - I - 0x008295 02:A285: 2A        .byte $2A   ; 
- D 0 - I - 0x008296 02:A286: 02        .byte $02   ; 
- D 0 - I - 0x008297 02:A287: 2A        .byte $2A   ; 
- D 0 - I - 0x008298 02:A288: 02        .byte $02   ; 
- D 0 - I - 0x008299 02:A289: 1F        .byte $1F   ; 
- D 0 - I - 0x00829A 02:A28A: 06        .byte $06   ; 
- D 0 - I - 0x00829B 02:A28B: 29        .byte $29   ; 
- D 0 - I - 0x00829C 02:A28C: 02        .byte $02   ; 
- D 0 - I - 0x00829D 02:A28D: 1F        .byte $1F   ; 
- D 0 - I - 0x00829E 02:A28E: 02        .byte $02   ; 
- D 0 - I - 0x00829F 02:A28F: 2A        .byte $2A   ; 
- D 0 - I - 0x0082A0 02:A290: 02        .byte $02   ; 
- D 0 - I - 0x0082A1 02:A291: 1F        .byte $1F   ; 
- D 0 - I - 0x0082A2 02:A292: 0A        .byte $0A   ; 
- D 0 - I - 0x0082A3 02:A293: 32        .byte $32   ; <2>
- D 0 - I - 0x0082A4 02:A294: 02        .byte $02   ; 
- D 0 - I - 0x0082A5 02:A295: 1F        .byte $1F   ; 
- D 0 - I - 0x0082A6 02:A296: 04        .byte $04   ; 
- D 0 - I - 0x0082A7 02:A297: 25        .byte $25   ; 
- D 0 - I - 0x0082A8 02:A298: 02        .byte $02   ; 
- D 0 - I - 0x0082A9 02:A299: 1F        .byte $1F   ; 
- D 0 - I - 0x0082AA 02:A29A: 1E        .byte $1E   ; 
- D 0 - I - 0x0082AB 02:A29B: 2A        .byte $2A   ; 
- D 0 - I - 0x0082AC 02:A29C: 02        .byte $02   ; 
- D 0 - I - 0x0082AD 02:A29D: 2A        .byte $2A   ; 
- D 0 - I - 0x0082AE 02:A29E: 02        .byte $02   ; 
- D 0 - I - 0x0082AF 02:A29F: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B0 02:A2A0: 06        .byte $06   ; 
- D 0 - I - 0x0082B1 02:A2A1: 29        .byte $29   ; 
- D 0 - I - 0x0082B2 02:A2A2: 02        .byte $02   ; 
- D 0 - I - 0x0082B3 02:A2A3: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B4 02:A2A4: 02        .byte $02   ; 
- D 0 - I - 0x0082B5 02:A2A5: 2A        .byte $2A   ; 
- D 0 - I - 0x0082B6 02:A2A6: 02        .byte $02   ; 
- D 0 - I - 0x0082B7 02:A2A7: 1F        .byte $1F   ; 
- D 0 - I - 0x0082B8 02:A2A8: 0A        .byte $0A   ; 
- D 0 - I - 0x0082B9 02:A2A9: 32        .byte $32   ; <2>
- D 0 - I - 0x0082BA 02:A2AA: 02        .byte $02   ; 
- D 0 - I - 0x0082BB 02:A2AB: 1F        .byte $1F   ; 
- D 0 - I - 0x0082BC 02:A2AC: 04        .byte $04   ; 
- D 0 - I - 0x0082BD 02:A2AD: 25        .byte $25   ; 
- D 0 - I - 0x0082BE 02:A2AE: 02        .byte $02   ; 
- D 0 - I - 0x0082BF 02:A2AF: 1F        .byte $1F   ; 
- D 0 - I - 0x0082C0 02:A2B0: 1E        .byte $1E   ; 
- D 0 - I - 0x0082C1 02:A2B1: FD        .byte $FD   ; 
- - - - - - 0x0082C2 02:A2B2: FE        .byte $FE   ; 
- D 0 - I - 0x0082C3 02:A2B3: 23        .byte $23   ; 
- D 0 - I - 0x0082C4 02:A2B4: 02        .byte $02   ; 
- D 0 - I - 0x0082C5 02:A2B5: 27        .byte $27   ; 
- D 0 - I - 0x0082C6 02:A2B6: 02        .byte $02   ; 
- D 0 - I - 0x0082C7 02:A2B7: 2A        .byte $2A   ; 
- D 0 - I - 0x0082C8 02:A2B8: 02        .byte $02   ; 
- D 0 - I - 0x0082C9 02:A2B9: 27        .byte $27   ; 
- D 0 - I - 0x0082CA 02:A2BA: 02        .byte $02   ; 
- D 0 - I - 0x0082CB 02:A2BB: 2A        .byte $2A   ; 
- D 0 - I - 0x0082CC 02:A2BC: 02        .byte $02   ; 
- D 0 - I - 0x0082CD 02:A2BD: 27        .byte $27   ; 
- D 0 - I - 0x0082CE 02:A2BE: 02        .byte $02   ; 
- D 0 - I - 0x0082CF 02:A2BF: 2A        .byte $2A   ; 
- D 0 - I - 0x0082D0 02:A2C0: 02        .byte $02   ; 
- D 0 - I - 0x0082D1 02:A2C1: 27        .byte $27   ; 
- D 0 - I - 0x0082D2 02:A2C2: 02        .byte $02   ; 
- D 0 - I - 0x0082D3 02:A2C3: 25        .byte $25   ; 
- D 0 - I - 0x0082D4 02:A2C4: 02        .byte $02   ; 
- D 0 - I - 0x0082D5 02:A2C5: 29        .byte $29   ; 
- D 0 - I - 0x0082D6 02:A2C6: 02        .byte $02   ; 
- D 0 - I - 0x0082D7 02:A2C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0082D8 02:A2C8: 02        .byte $02   ; 
- D 0 - I - 0x0082D9 02:A2C9: 29        .byte $29   ; 
- D 0 - I - 0x0082DA 02:A2CA: 02        .byte $02   ; 
- D 0 - I - 0x0082DB 02:A2CB: 30        .byte $30   ; <0>
- D 0 - I - 0x0082DC 02:A2CC: 02        .byte $02   ; 
- D 0 - I - 0x0082DD 02:A2CD: 29        .byte $29   ; 
- D 0 - I - 0x0082DE 02:A2CE: 02        .byte $02   ; 
- D 0 - I - 0x0082DF 02:A2CF: 30        .byte $30   ; <0>
- D 0 - I - 0x0082E0 02:A2D0: 02        .byte $02   ; 
- D 0 - I - 0x0082E1 02:A2D1: 29        .byte $29   ; 
- D 0 - I - 0x0082E2 02:A2D2: 02        .byte $02   ; 
- D 0 - I - 0x0082E3 02:A2D3: 32        .byte $32   ; <2>
- D 0 - I - 0x0082E4 02:A2D4: 02        .byte $02   ; 
- D 0 - I - 0x0082E5 02:A2D5: 2A        .byte $2A   ; 
- D 0 - I - 0x0082E6 02:A2D6: 02        .byte $02   ; 
- D 0 - I - 0x0082E7 02:A2D7: 27        .byte $27   ; 
- D 0 - I - 0x0082E8 02:A2D8: 02        .byte $02   ; 
- D 0 - I - 0x0082E9 02:A2D9: 32        .byte $32   ; <2>
- D 0 - I - 0x0082EA 02:A2DA: 02        .byte $02   ; 
- D 0 - I - 0x0082EB 02:A2DB: 2A        .byte $2A   ; 
- D 0 - I - 0x0082EC 02:A2DC: 02        .byte $02   ; 
- D 0 - I - 0x0082ED 02:A2DD: 27        .byte $27   ; 
- D 0 - I - 0x0082EE 02:A2DE: 02        .byte $02   ; 
- D 0 - I - 0x0082EF 02:A2DF: 32        .byte $32   ; <2>
- D 0 - I - 0x0082F0 02:A2E0: 02        .byte $02   ; 
- D 0 - I - 0x0082F1 02:A2E1: 2A        .byte $2A   ; 
- D 0 - I - 0x0082F2 02:A2E2: 02        .byte $02   ; 
- D 0 - I - 0x0082F3 02:A2E3: 27        .byte $27   ; 
- D 0 - I - 0x0082F4 02:A2E4: 02        .byte $02   ; 
- D 0 - I - 0x0082F5 02:A2E5: 32        .byte $32   ; <2>
- D 0 - I - 0x0082F6 02:A2E6: 02        .byte $02   ; 
- D 0 - I - 0x0082F7 02:A2E7: 2A        .byte $2A   ; 
- D 0 - I - 0x0082F8 02:A2E8: 02        .byte $02   ; 
- D 0 - I - 0x0082F9 02:A2E9: 27        .byte $27   ; 
- D 0 - I - 0x0082FA 02:A2EA: 02        .byte $02   ; 
- D 0 - I - 0x0082FB 02:A2EB: 32        .byte $32   ; <2>
- D 0 - I - 0x0082FC 02:A2EC: 02        .byte $02   ; 
- D 0 - I - 0x0082FD 02:A2ED: 2A        .byte $2A   ; 
- D 0 - I - 0x0082FE 02:A2EE: 02        .byte $02   ; 
- D 0 - I - 0x0082FF 02:A2EF: 27        .byte $27   ; 
- D 0 - I - 0x008300 02:A2F0: 02        .byte $02   ; 
- D 0 - I - 0x008301 02:A2F1: 2A        .byte $2A   ; 
- D 0 - I - 0x008302 02:A2F2: 02        .byte $02   ; 
- D 0 - I - 0x008303 02:A2F3: B1        .byte $B1   ; 
- D 0 - I - 0x008304 02:A2F4: 00        .byte $00   ; 
- D 0 - I - 0x008305 02:A2F5: B0        .byte $B0   ; 
- D 0 - I - 0x008306 02:A2F6: 02        .byte $02   ; 

loc_track6:
- D 0 - I - 0x008307 02:A2F7: 05        .byte $05   ; 
- D 0 - I - 0x008308 02:A2F8: 01        .byte $01   ; 
- D 0 - I - 0x008309 02:A2F9: 0F        .byte $0F   ; 
- D 0 - I - 0x00830A 02:A2FA: 00        .byte $00   ; 
- D 0 - I - 0x00830B 02:A2FB: A3        .byte $A3   ; 
- D 0 - I - 0x00830C 02:A2FC: 21        .byte $21   ; 
- D 0 - I - 0x00830D 02:A2FD: 37        .byte $37   ; <7>
- D 0 - I - 0x00830E 02:A2FE: 01        .byte $01   ; 
- D 0 - I - 0x00830F 02:A2FF: 38        .byte $38   ; <8>
- D 0 - I - 0x008310 02:A300: 01        .byte $01   ; 
- D 0 - I - 0x008311 02:A301: 39        .byte $39   ; <9>
- D 0 - I - 0x008312 02:A302: 0C        .byte $0C   ; 
- D 0 - I - 0x008313 02:A303: 32        .byte $32   ; <2>
- D 0 - I - 0x008314 02:A304: 04        .byte $04   ; 
- D 0 - I - 0x008315 02:A305: 34        .byte $34   ; <4>
- D 0 - I - 0x008316 02:A306: 0C        .byte $0C   ; 
- D 0 - I - 0x008317 02:A307: 30        .byte $30   ; <0>
- D 0 - I - 0x008318 02:A308: 04        .byte $04   ; 
- D 0 - I - 0x008319 02:A309: 32        .byte $32   ; <2>
- D 0 - I - 0x00831A 02:A30A: 0C        .byte $0C   ; 
- D 0 - I - 0x00831B 02:A30B: 29        .byte $29   ; 
- D 0 - I - 0x00831C 02:A30C: 04        .byte $04   ; 
- D 0 - I - 0x00831D 02:A30D: 27        .byte $27   ; 
- D 0 - I - 0x00831E 02:A30E: 0C        .byte $0C   ; 
- D 0 - I - 0x00831F 02:A30F: 30        .byte $30   ; <0>
- D 0 - I - 0x008320 02:A310: 01        .byte $01   ; 
- D 0 - I - 0x008321 02:A311: 32        .byte $32   ; <2>
- D 0 - I - 0x008322 02:A312: 01        .byte $01   ; 
- D 0 - I - 0x008323 02:A313: 30        .byte $30   ; <0>
- D 0 - I - 0x008324 02:A314: 01        .byte $01   ; 
- D 0 - I - 0x008325 02:A315: 32        .byte $32   ; <2>
- D 0 - I - 0x008326 02:A316: 01        .byte $01   ; 
- D 0 - I - 0x008327 02:A317: 37        .byte $37   ; <7>
- D 0 - I - 0x008328 02:A318: 0C        .byte $0C   ; 
- D 0 - I - 0x008329 02:A319: B1        .byte $B1   ; 
- D 0 - I - 0x00832A 02:A31A: 0C        .byte $0C   ; 
- D 0 - I - 0x00832B 02:A31B: 32        .byte $32   ; <2>
- D 0 - I - 0x00832C 02:A31C: 01        .byte $01   ; 
- D 0 - I - 0x00832D 02:A31D: 34        .byte $34   ; <4>
- D 0 - I - 0x00832E 02:A31E: 01        .byte $01   ; 
- D 0 - I - 0x00832F 02:A31F: B1        .byte $B1   ; 
- D 0 - I - 0x008330 02:A320: 12        .byte $12   ; 
- D 0 - I - 0x008331 02:A321: 37        .byte $37   ; <7>
- D 0 - I - 0x008332 02:A322: 10        .byte $10   ; 
- D 0 - I - 0x008333 02:A323: 24        .byte $24   ; 
- D 0 - I - 0x008334 02:A324: 01        .byte $01   ; 
- D 0 - I - 0x008335 02:A325: 27        .byte $27   ; 
- D 0 - I - 0x008336 02:A326: 01        .byte $01   ; 
- D 0 - I - 0x008337 02:A327: 29        .byte $29   ; 
- D 0 - I - 0x008338 02:A328: 01        .byte $01   ; 
- D 0 - I - 0x008339 02:A329: 30        .byte $30   ; <0>
- D 0 - I - 0x00833A 02:A32A: 01        .byte $01   ; 
- D 0 - I - 0x00833B 02:A32B: 27        .byte $27   ; 
- D 0 - I - 0x00833C 02:A32C: 01        .byte $01   ; 
- D 0 - I - 0x00833D 02:A32D: 29        .byte $29   ; 
- D 0 - I - 0x00833E 02:A32E: 01        .byte $01   ; 
- D 0 - I - 0x00833F 02:A32F: 30        .byte $30   ; <0>
- D 0 - I - 0x008340 02:A330: 01        .byte $01   ; 
- D 0 - I - 0x008341 02:A331: 32        .byte $32   ; <2>
- D 0 - I - 0x008342 02:A332: 01        .byte $01   ; 
- D 0 - I - 0x008343 02:A333: 29        .byte $29   ; 
- D 0 - I - 0x008344 02:A334: 01        .byte $01   ; 
- D 0 - I - 0x008345 02:A335: 30        .byte $30   ; <0>
- D 0 - I - 0x008346 02:A336: 01        .byte $01   ; 
- D 0 - I - 0x008347 02:A337: 32        .byte $32   ; <2>
- D 0 - I - 0x008348 02:A338: 01        .byte $01   ; 
- D 0 - I - 0x008349 02:A339: 34        .byte $34   ; <4>
- D 0 - I - 0x00834A 02:A33A: 01        .byte $01   ; 
- D 0 - I - 0x00834B 02:A33B: 30        .byte $30   ; <0>
- D 0 - I - 0x00834C 02:A33C: 01        .byte $01   ; 
- D 0 - I - 0x00834D 02:A33D: 32        .byte $32   ; <2>
- D 0 - I - 0x00834E 02:A33E: 01        .byte $01   ; 
- D 0 - I - 0x00834F 02:A33F: 34        .byte $34   ; <4>
- D 0 - I - 0x008350 02:A340: 01        .byte $01   ; 
- D 0 - I - 0x008351 02:A341: 37        .byte $37   ; <7>
- D 0 - I - 0x008352 02:A342: 01        .byte $01   ; 
- D 0 - I - 0x008353 02:A343: 39        .byte $39   ; <9>
- D 0 - I - 0x008354 02:A344: 0C        .byte $0C   ; 
- D 0 - I - 0x008355 02:A345: 37        .byte $37   ; <7>
- D 0 - I - 0x008356 02:A346: 04        .byte $04   ; 
- D 0 - I - 0x008357 02:A347: 34        .byte $34   ; <4>
- D 0 - I - 0x008358 02:A348: 08        .byte $08   ; 
- D 0 - I - 0x008359 02:A349: 37        .byte $37   ; <7>
- D 0 - I - 0x00835A 02:A34A: 08        .byte $08   ; 
- D 0 - I - 0x00835B 02:A34B: 40        .byte $40   ; 
- D 0 - I - 0x00835C 02:A34C: 02        .byte $02   ; 
- D 0 - I - 0x00835D 02:A34D: 39        .byte $39   ; <9>
- D 0 - I - 0x00835E 02:A34E: 02        .byte $02   ; 
- D 0 - I - 0x00835F 02:A34F: 37        .byte $37   ; <7>
- D 0 - I - 0x008360 02:A350: 02        .byte $02   ; 
- D 0 - I - 0x008361 02:A351: 34        .byte $34   ; <4>
- D 0 - I - 0x008362 02:A352: 06        .byte $06   ; 
- D 0 - I - 0x008363 02:A353: 32        .byte $32   ; <2>
- D 0 - I - 0x008364 02:A354: 04        .byte $04   ; 
- D 0 - I - 0x008365 02:A355: 30        .byte $30   ; <0>
- D 0 - I - 0x008366 02:A356: 0E        .byte $0E   ; 
- D 0 - I - 0x008367 02:A357: B0        .byte $B0   ; 
- D 0 - I - 0x008368 02:A358: 02        .byte $02   ; 
- - - - - - 0x008369 02:A359: FF        .byte $FF   ; 

loc_track7:
- D 0 - I - 0x00836A 02:A35A: 05        .byte $05   ; 
- D 0 - I - 0x00836B 02:A35B: 19        .byte $19   ; 
- D 0 - I - 0x00836C 02:A35C: 00        .byte $00   ; 
- D 0 - I - 0x00836D 02:A35D: 00        .byte $00   ; 
- D 0 - I - 0x00836E 02:A35E: 1F        .byte $1F   ; 
- D 0 - I - 0x00836F 02:A35F: 02        .byte $02   ; 
- D 0 - I - 0x008370 02:A360: 27        .byte $27   ; 
- D 0 - I - 0x008371 02:A361: 02        .byte $02   ; 
- D 0 - I - 0x008372 02:A362: 29        .byte $29   ; 
- D 0 - I - 0x008373 02:A363: 02        .byte $02   ; 
- D 0 - I - 0x008374 02:A364: 30        .byte $30   ; <0>
- D 0 - I - 0x008375 02:A365: 02        .byte $02   ; 
- D 0 - I - 0x008376 02:A366: B4        .byte $B4   ; 
- D 0 - I - 0x008377 02:A367: 03        .byte $03   ; 
- D 0 - I - 0x008378 02:A368: 32        .byte $32   ; <2>
- D 0 - I - 0x008379 02:A369: 02        .byte $02   ; 
- D 0 - I - 0x00837A 02:A36A: 24        .byte $24   ; 
- D 0 - I - 0x00837B 02:A36B: 02        .byte $02   ; 
- D 0 - I - 0x00837C 02:A36C: 27        .byte $27   ; 
- D 0 - I - 0x00837D 02:A36D: 02        .byte $02   ; 
- D 0 - I - 0x00837E 02:A36E: 29        .byte $29   ; 
- D 0 - I - 0x00837F 02:A36F: 02        .byte $02   ; 
- D 0 - I - 0x008380 02:A370: B3        .byte $B3   ; 
- D 0 - I - 0x008381 02:A371: 08        .byte $08   ; 
- D 0 - I - 0x008382 02:A372: 30        .byte $30   ; <0>
- D 0 - I - 0x008383 02:A373: 02        .byte $02   ; 
- D 0 - I - 0x008384 02:A374: 32        .byte $32   ; <2>
- D 0 - I - 0x008385 02:A375: 02        .byte $02   ; 
- D 0 - I - 0x008386 02:A376: 30        .byte $30   ; <0>
- D 0 - I - 0x008387 02:A377: 02        .byte $02   ; 
- D 0 - I - 0x008388 02:A378: 29        .byte $29   ; 
- D 0 - I - 0x008389 02:A379: 02        .byte $02   ; 
- D 0 - I - 0x00838A 02:A37A: 29        .byte $29   ; 
- D 0 - I - 0x00838B 02:A37B: 02        .byte $02   ; 
- D 0 - I - 0x00838C 02:A37C: 30        .byte $30   ; <0>
- D 0 - I - 0x00838D 02:A37D: 02        .byte $02   ; 
- D 0 - I - 0x00838E 02:A37E: 32        .byte $32   ; <2>
- D 0 - I - 0x00838F 02:A37F: 02        .byte $02   ; 
- D 0 - I - 0x008390 02:A380: 29        .byte $29   ; 
- D 0 - I - 0x008391 02:A381: 06        .byte $06   ; 
- D 0 - I - 0x008392 02:A382: 29        .byte $29   ; 
- D 0 - I - 0x008393 02:A383: 04        .byte $04   ; 
- D 0 - I - 0x008394 02:A384: B1        .byte $B1   ; 
- D 0 - I - 0x008395 02:A385: 10        .byte $10   ; 
- D 0 - I - 0x008396 02:A386: 27        .byte $27   ; 
- D 0 - I - 0x008397 02:A387: 02        .byte $02   ; 
- D 0 - I - 0x008398 02:A388: 30        .byte $30   ; <0>
- D 0 - I - 0x008399 02:A389: 02        .byte $02   ; 
- D 0 - I - 0x00839A 02:A38A: 32        .byte $32   ; <2>
- D 0 - I - 0x00839B 02:A38B: 02        .byte $02   ; 
- D 0 - I - 0x00839C 02:A38C: 27        .byte $27   ; 
- D 0 - I - 0x00839D 02:A38D: 06        .byte $06   ; 
- D 0 - I - 0x00839E 02:A38E: 27        .byte $27   ; 
- D 0 - I - 0x00839F 02:A38F: 04        .byte $04   ; 
- D 0 - I - 0x0083A0 02:A390: B1        .byte $B1   ; 
- D 0 - I - 0x0083A1 02:A391: 16        .byte $16   ; 
- D 0 - I - 0x0083A2 02:A392: 24        .byte $24   ; 
- D 0 - I - 0x0083A3 02:A393: 02        .byte $02   ; 
- D 0 - I - 0x0083A4 02:A394: 27        .byte $27   ; 
- D 0 - I - 0x0083A5 02:A395: 02        .byte $02   ; 
- D 0 - I - 0x0083A6 02:A396: 29        .byte $29   ; 
- D 0 - I - 0x0083A7 02:A397: 02        .byte $02   ; 
- D 0 - I - 0x0083A8 02:A398: 24        .byte $24   ; 
- D 0 - I - 0x0083A9 02:A399: 06        .byte $06   ; 
- D 0 - I - 0x0083AA 02:A39A: 24        .byte $24   ; 
- D 0 - I - 0x0083AB 02:A39B: 04        .byte $04   ; 
- D 0 - I - 0x0083AC 02:A39C: B1        .byte $B1   ; 
- D 0 - I - 0x0083AD 02:A39D: 1C        .byte $1C   ; 
- D 0 - I - 0x0083AE 02:A39E: 29        .byte $29   ; 
- D 0 - I - 0x0083AF 02:A39F: 02        .byte $02   ; 
- D 0 - I - 0x0083B0 02:A3A0: 30        .byte $30   ; <0>
- D 0 - I - 0x0083B1 02:A3A1: 02        .byte $02   ; 
- D 0 - I - 0x0083B2 02:A3A2: 32        .byte $32   ; <2>
- D 0 - I - 0x0083B3 02:A3A3: 02        .byte $02   ; 
- D 0 - I - 0x0083B4 02:A3A4: A2        .byte $A2   ; 
- D 0 - I - 0x0083B5 02:A3A5: 7F        .byte $7F   ; 
- D 0 - I - 0x0083B6 02:A3A6: 29        .byte $29   ; 
- D 0 - I - 0x0083B7 02:A3A7: 06        .byte $06   ; 
- D 0 - I - 0x0083B8 02:A3A8: 27        .byte $27   ; 
- D 0 - I - 0x0083B9 02:A3A9: 04        .byte $04   ; 
- D 0 - I - 0x0083BA 02:A3AA: 29        .byte $29   ; 
- D 0 - I - 0x0083BB 02:A3AB: 10        .byte $10   ; 
- D 0 - I - 0x0083BC 02:A3AC: A2        .byte $A2   ; 
- D 0 - I - 0x0083BD 02:A3AD: 19        .byte $19   ; 
- D 0 - I - 0x0083BE 02:A3AE: B0        .byte $B0   ; 
- D 0 - I - 0x0083BF 02:A3AF: 03        .byte $03   ; 
- - - - - - 0x0083C0 02:A3B0: FF        .byte $FF   ; 

loc_track8:
- D 0 - I - 0x0083C1 02:A3B1: 04        .byte $04   ; 
- D 0 - I - 0x0083C2 02:A3B2: 02        .byte $02   ; 
- D 0 - I - 0x0083C3 02:A3B3: 02        .byte $02   ; 
- D 0 - I - 0x0083C4 02:A3B4: 00        .byte $00   ; 
- D 0 - I - 0x0083C5 02:A3B5: 27        .byte $27   ; 
- D 0 - I - 0x0083C6 02:A3B6: 02        .byte $02   ; 
- D 0 - I - 0x0083C7 02:A3B7: 1F        .byte $1F   ; 
- D 0 - I - 0x0083C8 02:A3B8: 02        .byte $02   ; 
- D 0 - I - 0x0083C9 02:A3B9: 27        .byte $27   ; 
- D 0 - I - 0x0083CA 02:A3BA: 02        .byte $02   ; 
- D 0 - I - 0x0083CB 02:A3BB: 25        .byte $25   ; 
- D 0 - I - 0x0083CC 02:A3BC: 02        .byte $02   ; 
- D 0 - I - 0x0083CD 02:A3BD: 1F        .byte $1F   ; 
- D 0 - I - 0x0083CE 02:A3BE: 02        .byte $02   ; 
- D 0 - I - 0x0083CF 02:A3BF: 25        .byte $25   ; 
- D 0 - I - 0x0083D0 02:A3C0: 02        .byte $02   ; 
- D 0 - I - 0x0083D1 02:A3C1: 27        .byte $27   ; 
- D 0 - I - 0x0083D2 02:A3C2: 04        .byte $04   ; 
- D 0 - I - 0x0083D3 02:A3C3: 1F        .byte $1F   ; 
- D 0 - I - 0x0083D4 02:A3C4: 02        .byte $02   ; 
- D 0 - I - 0x0083D5 02:A3C5: 23        .byte $23   ; 
- D 0 - I - 0x0083D6 02:A3C6: 06        .byte $06   ; 
- D 0 - I - 0x0083D7 02:A3C7: 25        .byte $25   ; 
- D 0 - I - 0x0083D8 02:A3C8: 04        .byte $04   ; 
- D 0 - I - 0x0083D9 02:A3C9: 27        .byte $27   ; 
- D 0 - I - 0x0083DA 02:A3CA: 04        .byte $04   ; 
- D 0 - I - 0x0083DB 02:A3CB: A0        .byte $A0   ; 
- D 0 - I - 0x0083DC 02:A3CC: 0A        .byte $0A   ; 
- D 0 - I - 0x0083DD 02:A3CD: 2A        .byte $2A   ; 
- D 0 - I - 0x0083DE 02:A3CE: 06        .byte $06   ; 
- D 0 - I - 0x0083DF 02:A3CF: 28        .byte $28   ; 
- D 0 - I - 0x0083E0 02:A3D0: 06        .byte $06   ; 
- D 0 - I - 0x0083E1 02:A3D1: 27        .byte $27   ; 
- D 0 - I - 0x0083E2 02:A3D2: 06        .byte $06   ; 
- D 0 - I - 0x0083E3 02:A3D3: 25        .byte $25   ; 
- D 0 - I - 0x0083E4 02:A3D4: 06        .byte $06   ; 
- D 0 - I - 0x0083E5 02:A3D5: 23        .byte $23   ; 
- D 0 - I - 0x0083E6 02:A3D6: 04        .byte $04   ; 
- D 0 - I - 0x0083E7 02:A3D7: 25        .byte $25   ; 
- D 0 - I - 0x0083E8 02:A3D8: 04        .byte $04   ; 
- D 0 - I - 0x0083E9 02:A3D9: A0        .byte $A0   ; 
- D 0 - I - 0x0083EA 02:A3DA: 02        .byte $02   ; 
- D 0 - I - 0x0083EB 02:A3DB: 27        .byte $27   ; 
- D 0 - I - 0x0083EC 02:A3DC: 02        .byte $02   ; 
- D 0 - I - 0x0083ED 02:A3DD: 1F        .byte $1F   ; 
- D 0 - I - 0x0083EE 02:A3DE: 02        .byte $02   ; 
- D 0 - I - 0x0083EF 02:A3DF: 27        .byte $27   ; 
- D 0 - I - 0x0083F0 02:A3E0: 02        .byte $02   ; 
- D 0 - I - 0x0083F1 02:A3E1: 25        .byte $25   ; 
- D 0 - I - 0x0083F2 02:A3E2: 02        .byte $02   ; 
- D 0 - I - 0x0083F3 02:A3E3: 1F        .byte $1F   ; 
- D 0 - I - 0x0083F4 02:A3E4: 02        .byte $02   ; 
- D 0 - I - 0x0083F5 02:A3E5: 25        .byte $25   ; 
- D 0 - I - 0x0083F6 02:A3E6: 02        .byte $02   ; 
- D 0 - I - 0x0083F7 02:A3E7: 27        .byte $27   ; 
- D 0 - I - 0x0083F8 02:A3E8: 04        .byte $04   ; 
- D 0 - I - 0x0083F9 02:A3E9: 1F        .byte $1F   ; 
- D 0 - I - 0x0083FA 02:A3EA: 02        .byte $02   ; 
- D 0 - I - 0x0083FB 02:A3EB: 23        .byte $23   ; 
- D 0 - I - 0x0083FC 02:A3EC: 06        .byte $06   ; 
- D 0 - I - 0x0083FD 02:A3ED: 25        .byte $25   ; 
- D 0 - I - 0x0083FE 02:A3EE: 04        .byte $04   ; 
- D 0 - I - 0x0083FF 02:A3EF: 27        .byte $27   ; 
- D 0 - I - 0x008400 02:A3F0: 04        .byte $04   ; 
- D 0 - I - 0x008401 02:A3F1: A0        .byte $A0   ; 
- D 0 - I - 0x008402 02:A3F2: 0A        .byte $0A   ; 
- D 0 - I - 0x008403 02:A3F3: 25        .byte $25   ; 
- D 0 - I - 0x008404 02:A3F4: 0E        .byte $0E   ; 
- D 0 - I - 0x008405 02:A3F5: 27        .byte $27   ; 
- D 0 - I - 0x008406 02:A3F6: 12        .byte $12   ; 
- D 0 - I - 0x008407 02:A3F7: A0        .byte $A0   ; 
- D 0 - I - 0x008408 02:A3F8: 02        .byte $02   ; 
- D 0 - I - 0x008409 02:A3F9: B1        .byte $B1   ; 
- D 0 - I - 0x00840A 02:A3FA: 02        .byte $02   ; 
- D 0 - I - 0x00840B 02:A3FB: FD        .byte $FD   ; 
- - - - - - 0x00840C 02:A3FC: FE        .byte $FE   ; 
- D 0 - I - 0x00840D 02:A3FD: 33        .byte $33   ; <3>
- D 0 - I - 0x00840E 02:A3FE: 02        .byte $02   ; 
- D 0 - I - 0x00840F 02:A3FF: 32        .byte $32   ; <2>
- D 0 - I - 0x008410 02:A400: 02        .byte $02   ; 
- D 0 - I - 0x008411 02:A401: 30        .byte $30   ; <0>
- D 0 - I - 0x008412 02:A402: 02        .byte $02   ; 
- D 0 - I - 0x008413 02:A403: 33        .byte $33   ; <3>
- D 0 - I - 0x008414 02:A404: 04        .byte $04   ; 
- D 0 - I - 0x008415 02:A405: 32        .byte $32   ; <2>
- D 0 - I - 0x008416 02:A406: 02        .byte $02   ; 
- D 0 - I - 0x008417 02:A407: 30        .byte $30   ; <0>
- D 0 - I - 0x008418 02:A408: 04        .byte $04   ; 
- D 0 - I - 0x008419 02:A409: 33        .byte $33   ; <3>
- D 0 - I - 0x00841A 02:A40A: 02        .byte $02   ; 
- D 0 - I - 0x00841B 02:A40B: 32        .byte $32   ; <2>
- D 0 - I - 0x00841C 02:A40C: 02        .byte $02   ; 
- D 0 - I - 0x00841D 02:A40D: 30        .byte $30   ; <0>
- D 0 - I - 0x00841E 02:A40E: 02        .byte $02   ; 
- D 0 - I - 0x00841F 02:A40F: 35        .byte $35   ; <5>
- D 0 - I - 0x008420 02:A410: 04        .byte $04   ; 
- D 0 - I - 0x008421 02:A411: 33        .byte $33   ; <3>
- D 0 - I - 0x008422 02:A412: 02        .byte $02   ; 
- D 0 - I - 0x008423 02:A413: 32        .byte $32   ; <2>
- D 0 - I - 0x008424 02:A414: 02        .byte $02   ; 
- D 0 - I - 0x008425 02:A415: 30        .byte $30   ; <0>
- D 0 - I - 0x008426 02:A416: 02        .byte $02   ; 
- D 0 - I - 0x008427 02:A417: B1        .byte $B1   ; 
- D 0 - I - 0x008428 02:A418: 00        .byte $00   ; 
- D 0 - I - 0x008429 02:A419: 33        .byte $33   ; <3>
- D 0 - I - 0x00842A 02:A41A: 02        .byte $02   ; 
- D 0 - I - 0x00842B 02:A41B: 32        .byte $32   ; <2>
- D 0 - I - 0x00842C 02:A41C: 02        .byte $02   ; 
- D 0 - I - 0x00842D 02:A41D: 30        .byte $30   ; <0>
- D 0 - I - 0x00842E 02:A41E: 02        .byte $02   ; 
- D 0 - I - 0x00842F 02:A41F: 33        .byte $33   ; <3>
- D 0 - I - 0x008430 02:A420: 04        .byte $04   ; 
- D 0 - I - 0x008431 02:A421: 32        .byte $32   ; <2>
- D 0 - I - 0x008432 02:A422: 02        .byte $02   ; 
- D 0 - I - 0x008433 02:A423: A0        .byte $A0   ; 
- D 0 - I - 0x008434 02:A424: 0F        .byte $0F   ; 
- D 0 - I - 0x008435 02:A425: 30        .byte $30   ; <0>
- D 0 - I - 0x008436 02:A426: 0C        .byte $0C   ; 
- D 0 - I - 0x008437 02:A427: 30        .byte $30   ; <0>
- D 0 - I - 0x008438 02:A428: 02        .byte $02   ; 
- D 0 - I - 0x008439 02:A429: 32        .byte $32   ; <2>
- D 0 - I - 0x00843A 02:A42A: 02        .byte $02   ; 
- D 0 - I - 0x00843B 02:A42B: 33        .byte $33   ; <3>
- D 0 - I - 0x00843C 02:A42C: 02        .byte $02   ; 
- D 0 - I - 0x00843D 02:A42D: 35        .byte $35   ; <5>
- D 0 - I - 0x00843E 02:A42E: 02        .byte $02   ; 
- D 0 - I - 0x00843F 02:A42F: 37        .byte $37   ; <7>
- D 0 - I - 0x008440 02:A430: 20        .byte $20   ; 
- D 0 - I - 0x008441 02:A431: A0        .byte $A0   ; 
- D 0 - I - 0x008442 02:A432: 02        .byte $02   ; 
- D 0 - I - 0x008443 02:A433: B0        .byte $B0   ; 
- D 0 - I - 0x008444 02:A434: 02        .byte $02   ; 
- - - - - - 0x008445 02:A435: FF        .byte $FF   ; 

loc_track3B:
- D 0 - I - 0x008446 02:A436: 04        .byte $04   ; 
- D 0 - I - 0x008447 02:A437: 02        .byte $02   ; 
- D 0 - I - 0x008448 02:A438: 02        .byte $02   ; 
- D 0 - I - 0x008449 02:A439: 00        .byte $00   ; 
- D 0 - I - 0x00844A 02:A43A: A3        .byte $A3   ; 
- D 0 - I - 0x00844B 02:A43B: 60        .byte $60   ; 
- D 0 - I - 0x00844C 02:A43C: 27        .byte $27   ; 
- D 0 - I - 0x00844D 02:A43D: 02        .byte $02   ; 
- D 0 - I - 0x00844E 02:A43E: 1F        .byte $1F   ; 
- D 0 - I - 0x00844F 02:A43F: 02        .byte $02   ; 
- D 0 - I - 0x008450 02:A440: 27        .byte $27   ; 
- D 0 - I - 0x008451 02:A441: 02        .byte $02   ; 
- D 0 - I - 0x008452 02:A442: 25        .byte $25   ; 
- D 0 - I - 0x008453 02:A443: 02        .byte $02   ; 
- D 0 - I - 0x008454 02:A444: 1F        .byte $1F   ; 
- D 0 - I - 0x008455 02:A445: 02        .byte $02   ; 
- D 0 - I - 0x008456 02:A446: 25        .byte $25   ; 
- D 0 - I - 0x008457 02:A447: 02        .byte $02   ; 
- D 0 - I - 0x008458 02:A448: 27        .byte $27   ; 
- D 0 - I - 0x008459 02:A449: 04        .byte $04   ; 
- D 0 - I - 0x00845A 02:A44A: 1F        .byte $1F   ; 
- D 0 - I - 0x00845B 02:A44B: 02        .byte $02   ; 
- D 0 - I - 0x00845C 02:A44C: 23        .byte $23   ; 
- D 0 - I - 0x00845D 02:A44D: 06        .byte $06   ; 
- D 0 - I - 0x00845E 02:A44E: 25        .byte $25   ; 
- D 0 - I - 0x00845F 02:A44F: 04        .byte $04   ; 
- D 0 - I - 0x008460 02:A450: 27        .byte $27   ; 
- D 0 - I - 0x008461 02:A451: 04        .byte $04   ; 
- D 0 - I - 0x008462 02:A452: A0        .byte $A0   ; 
- D 0 - I - 0x008463 02:A453: 0A        .byte $0A   ; 
- D 0 - I - 0x008464 02:A454: 2A        .byte $2A   ; 
- D 0 - I - 0x008465 02:A455: 06        .byte $06   ; 
- D 0 - I - 0x008466 02:A456: 28        .byte $28   ; 
- D 0 - I - 0x008467 02:A457: 06        .byte $06   ; 
- D 0 - I - 0x008468 02:A458: 27        .byte $27   ; 
- D 0 - I - 0x008469 02:A459: 06        .byte $06   ; 
- D 0 - I - 0x00846A 02:A45A: 25        .byte $25   ; 
- D 0 - I - 0x00846B 02:A45B: 06        .byte $06   ; 
- D 0 - I - 0x00846C 02:A45C: 23        .byte $23   ; 
- D 0 - I - 0x00846D 02:A45D: 04        .byte $04   ; 
- D 0 - I - 0x00846E 02:A45E: 25        .byte $25   ; 
- D 0 - I - 0x00846F 02:A45F: 04        .byte $04   ; 
- D 0 - I - 0x008470 02:A460: A0        .byte $A0   ; 
- D 0 - I - 0x008471 02:A461: 02        .byte $02   ; 
- D 0 - I - 0x008472 02:A462: 27        .byte $27   ; 
- D 0 - I - 0x008473 02:A463: 02        .byte $02   ; 
- D 0 - I - 0x008474 02:A464: 1F        .byte $1F   ; 
- D 0 - I - 0x008475 02:A465: 02        .byte $02   ; 
- D 0 - I - 0x008476 02:A466: 27        .byte $27   ; 
- D 0 - I - 0x008477 02:A467: 02        .byte $02   ; 
- D 0 - I - 0x008478 02:A468: 25        .byte $25   ; 
- D 0 - I - 0x008479 02:A469: 02        .byte $02   ; 
- D 0 - I - 0x00847A 02:A46A: 1F        .byte $1F   ; 
- D 0 - I - 0x00847B 02:A46B: 02        .byte $02   ; 
- D 0 - I - 0x00847C 02:A46C: 25        .byte $25   ; 
- D 0 - I - 0x00847D 02:A46D: 02        .byte $02   ; 
- D 0 - I - 0x00847E 02:A46E: 27        .byte $27   ; 
- D 0 - I - 0x00847F 02:A46F: 04        .byte $04   ; 
- D 0 - I - 0x008480 02:A470: 1F        .byte $1F   ; 
- D 0 - I - 0x008481 02:A471: 02        .byte $02   ; 
- D 0 - I - 0x008482 02:A472: 23        .byte $23   ; 
- D 0 - I - 0x008483 02:A473: 06        .byte $06   ; 
- D 0 - I - 0x008484 02:A474: 25        .byte $25   ; 
- D 0 - I - 0x008485 02:A475: 04        .byte $04   ; 
- D 0 - I - 0x008486 02:A476: 27        .byte $27   ; 
- D 0 - I - 0x008487 02:A477: 04        .byte $04   ; 
- D 0 - I - 0x008488 02:A478: A0        .byte $A0   ; 
- D 0 - I - 0x008489 02:A479: 0A        .byte $0A   ; 
- D 0 - I - 0x00848A 02:A47A: 25        .byte $25   ; 
- D 0 - I - 0x00848B 02:A47B: 0E        .byte $0E   ; 
- D 0 - I - 0x00848C 02:A47C: 27        .byte $27   ; 
- D 0 - I - 0x00848D 02:A47D: 12        .byte $12   ; 
- D 0 - I - 0x00848E 02:A47E: A0        .byte $A0   ; 
- D 0 - I - 0x00848F 02:A47F: 02        .byte $02   ; 
- D 0 - I - 0x008490 02:A480: B1        .byte $B1   ; 
- D 0 - I - 0x008491 02:A481: 02        .byte $02   ; 
- D 0 - I - 0x008492 02:A482: FD        .byte $FD   ; 
- - - - - - 0x008493 02:A483: FE        .byte $FE   ; 
- D 0 - I - 0x008494 02:A484: 33        .byte $33   ; <3>
- D 0 - I - 0x008495 02:A485: 02        .byte $02   ; 
- D 0 - I - 0x008496 02:A486: 32        .byte $32   ; <2>
- D 0 - I - 0x008497 02:A487: 02        .byte $02   ; 
- D 0 - I - 0x008498 02:A488: 30        .byte $30   ; <0>
- D 0 - I - 0x008499 02:A489: 02        .byte $02   ; 
- D 0 - I - 0x00849A 02:A48A: 33        .byte $33   ; <3>
- D 0 - I - 0x00849B 02:A48B: 04        .byte $04   ; 
- D 0 - I - 0x00849C 02:A48C: 32        .byte $32   ; <2>
- D 0 - I - 0x00849D 02:A48D: 02        .byte $02   ; 
- D 0 - I - 0x00849E 02:A48E: 30        .byte $30   ; <0>
- D 0 - I - 0x00849F 02:A48F: 04        .byte $04   ; 
- D 0 - I - 0x0084A0 02:A490: 33        .byte $33   ; <3>
- D 0 - I - 0x0084A1 02:A491: 02        .byte $02   ; 
- D 0 - I - 0x0084A2 02:A492: 32        .byte $32   ; <2>
- D 0 - I - 0x0084A3 02:A493: 02        .byte $02   ; 
- D 0 - I - 0x0084A4 02:A494: 30        .byte $30   ; <0>
- D 0 - I - 0x0084A5 02:A495: 02        .byte $02   ; 
- D 0 - I - 0x0084A6 02:A496: 35        .byte $35   ; <5>
- D 0 - I - 0x0084A7 02:A497: 04        .byte $04   ; 
- D 0 - I - 0x0084A8 02:A498: 33        .byte $33   ; <3>
- D 0 - I - 0x0084A9 02:A499: 02        .byte $02   ; 
- D 0 - I - 0x0084AA 02:A49A: 32        .byte $32   ; <2>
- D 0 - I - 0x0084AB 02:A49B: 02        .byte $02   ; 
- D 0 - I - 0x0084AC 02:A49C: 30        .byte $30   ; <0>
- D 0 - I - 0x0084AD 02:A49D: 02        .byte $02   ; 
- D 0 - I - 0x0084AE 02:A49E: B1        .byte $B1   ; 
- D 0 - I - 0x0084AF 02:A49F: 00        .byte $00   ; 
- D 0 - I - 0x0084B0 02:A4A0: 33        .byte $33   ; <3>
- D 0 - I - 0x0084B1 02:A4A1: 02        .byte $02   ; 
- D 0 - I - 0x0084B2 02:A4A2: 32        .byte $32   ; <2>
- D 0 - I - 0x0084B3 02:A4A3: 02        .byte $02   ; 
- D 0 - I - 0x0084B4 02:A4A4: 30        .byte $30   ; <0>
- D 0 - I - 0x0084B5 02:A4A5: 02        .byte $02   ; 
- D 0 - I - 0x0084B6 02:A4A6: 33        .byte $33   ; <3>
- D 0 - I - 0x0084B7 02:A4A7: 04        .byte $04   ; 
- D 0 - I - 0x0084B8 02:A4A8: 32        .byte $32   ; <2>
- D 0 - I - 0x0084B9 02:A4A9: 02        .byte $02   ; 
- D 0 - I - 0x0084BA 02:A4AA: A0        .byte $A0   ; 
- D 0 - I - 0x0084BB 02:A4AB: 0F        .byte $0F   ; 
- D 0 - I - 0x0084BC 02:A4AC: 30        .byte $30   ; <0>
- D 0 - I - 0x0084BD 02:A4AD: 0C        .byte $0C   ; 
- D 0 - I - 0x0084BE 02:A4AE: 30        .byte $30   ; <0>
- D 0 - I - 0x0084BF 02:A4AF: 02        .byte $02   ; 
- D 0 - I - 0x0084C0 02:A4B0: 32        .byte $32   ; <2>
- D 0 - I - 0x0084C1 02:A4B1: 02        .byte $02   ; 
- D 0 - I - 0x0084C2 02:A4B2: 33        .byte $33   ; <3>
- D 0 - I - 0x0084C3 02:A4B3: 02        .byte $02   ; 
- D 0 - I - 0x0084C4 02:A4B4: 35        .byte $35   ; <5>
- D 0 - I - 0x0084C5 02:A4B5: 02        .byte $02   ; 
- D 0 - I - 0x0084C6 02:A4B6: 37        .byte $37   ; <7>
- D 0 - I - 0x0084C7 02:A4B7: 20        .byte $20   ; 
- D 0 - I - 0x0084C8 02:A4B8: A0        .byte $A0   ; 
- D 0 - I - 0x0084C9 02:A4B9: 02        .byte $02   ; 
- D 0 - I - 0x0084CA 02:A4BA: B0        .byte $B0   ; 
- D 0 - I - 0x0084CB 02:A4BB: 02        .byte $02   ; 
- - - - - - 0x0084CC 02:A4BC: FF        .byte $FF   ; 

loc_trackA:
- - - - - - 0x0084CD 02:A4BD: FF        .byte $FF   ; 

loc_trackB:
- D 0 - I - 0x0084CE 02:A4BE: 30        .byte $30   ; <0>
- D 0 - I - 0x0084CF 02:A4BF: 00        .byte $00   ; 
- D 0 - I - 0x0084D0 02:A4C0: 02        .byte $02   ; 
- D 0 - I - 0x0084D1 02:A4C1: 00        .byte $00   ; 
- D 0 - I - 0x0084D2 02:A4C2: 0D        .byte $0D   ; 
- D 0 - I - 0x0084D3 02:A4C3: 02        .byte $02   ; 
- D 0 - I - 0x0084D4 02:A4C4: 0B        .byte $0B   ; 
- D 0 - I - 0x0084D5 02:A4C5: 0A        .byte $0A   ; 
- D 0 - I - 0x0084D6 02:A4C6: FF        .byte $FF   ; 

loc_trackC:
- D 0 - I - 0x0084D7 02:A4C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0084D8 02:A4C8: 00        .byte $00   ; 
- D 0 - I - 0x0084D9 02:A4C9: 1F        .byte $1F   ; 
- D 0 - I - 0x0084DA 02:A4CA: 00        .byte $00   ; 
- D 0 - I - 0x0084DB 02:A4CB: 06        .byte $06   ; 
- D 0 - I - 0x0084DC 02:A4CC: 01        .byte $01   ; 
- D 0 - I - 0x0084DD 02:A4CD: 03        .byte $03   ; 
- D 0 - I - 0x0084DE 02:A4CE: 01        .byte $01   ; 
- D 0 - I - 0x0084DF 02:A4CF: 04        .byte $04   ; 
- D 0 - I - 0x0084E0 02:A4D0: 01        .byte $01   ; 
- D 0 - I - 0x0084E1 02:A4D1: 0A        .byte $0A   ; 
- D 0 - I - 0x0084E2 02:A4D2: 01        .byte $01   ; 
- D 0 - I - 0x0084E3 02:A4D3: FF        .byte $FF   ; 

loc_trackD:
- D 0 - I - 0x0084E4 02:A4D4: 21        .byte $21   ; 
- D 0 - I - 0x0084E5 02:A4D5: 02        .byte $02   ; 
- D 0 - I - 0x0084E6 02:A4D6: 03        .byte $03   ; 
- D 0 - I - 0x0084E7 02:A4D7: 00        .byte $00   ; 
- D 0 - I - 0x0084E8 02:A4D8: 10        .byte $10   ; 
- D 0 - I - 0x0084E9 02:A4D9: 02        .byte $02   ; 
- D 0 - I - 0x0084EA 02:A4DA: 20        .byte $20   ; 
- D 0 - I - 0x0084EB 02:A4DB: 02        .byte $02   ; 
- D 0 - I - 0x0084EC 02:A4DC: FF        .byte $FF   ; 

loc_trackE:
- D 0 - I - 0x0084ED 02:A4DD: 03        .byte $03   ; 
- D 0 - I - 0x0084EE 02:A4DE: 02        .byte $02   ; 
- D 0 - I - 0x0084EF 02:A4DF: 01        .byte $01   ; 
- D 0 - I - 0x0084F0 02:A4E0: 00        .byte $00   ; 
- D 0 - I - 0x0084F1 02:A4E1: 37        .byte $37   ; <7>
- D 0 - I - 0x0084F2 02:A4E2: 01        .byte $01   ; 
- D 0 - I - 0x0084F3 02:A4E3: 42        .byte $42   ; <B>
- D 0 - I - 0x0084F4 02:A4E4: 01        .byte $01   ; 
- D 0 - I - 0x0084F5 02:A4E5: 3A        .byte $3A   ; 
- D 0 - I - 0x0084F6 02:A4E6: 01        .byte $01   ; 
- D 0 - I - 0x0084F7 02:A4E7: 40        .byte $40   ; 
- D 0 - I - 0x0084F8 02:A4E8: 01        .byte $01   ; 
- D 0 - I - 0x0084F9 02:A4E9: FF        .byte $FF   ; 

loc_trackF:
- D 0 - I - 0x0084FA 02:A4EA: 32        .byte $32   ; <2>
- D 0 - I - 0x0084FB 02:A4EB: 00        .byte $00   ; 
- D 0 - I - 0x0084FC 02:A4EC: 0F        .byte $0F   ; 
- D 0 - I - 0x0084FD 02:A4ED: 00        .byte $00   ; 
- D 0 - I - 0x0084FE 02:A4EE: 0C        .byte $0C   ; 
- D 0 - I - 0x0084FF 02:A4EF: 01        .byte $01   ; 
- D 0 - I - 0x008500 02:A4F0: 0E        .byte $0E   ; 
- D 0 - I - 0x008501 02:A4F1: 07        .byte $07   ; 
- D 0 - I - 0x008502 02:A4F2: 0F        .byte $0F   ; 
- D 0 - I - 0x008503 02:A4F3: 20        .byte $20   ; 
- D 0 - I - 0x008504 02:A4F4: FF        .byte $FF   ; 

loc_track10:
- D 0 - I - 0x008505 02:A4F5: 00        .byte $00   ; 
- D 0 - I - 0x008506 02:A4F6: 02        .byte $02   ; 
- D 0 - I - 0x008507 02:A4F7: 02        .byte $02   ; 
- D 0 - I - 0x008508 02:A4F8: 00        .byte $00   ; 
- D 0 - I - 0x008509 02:A4F9: 57        .byte $57   ; <W>
- D 0 - I - 0x00850A 02:A4FA: 10        .byte $10   ; 
- D 0 - I - 0x00850B 02:A4FB: FF        .byte $FF   ; 

loc_track11:
- D 0 - I - 0x00850C 02:A4FC: 06        .byte $06   ; 
- D 0 - I - 0x00850D 02:A4FD: 02        .byte $02   ; 
- D 0 - I - 0x00850E 02:A4FE: 0F        .byte $0F   ; 
- D 0 - I - 0x00850F 02:A4FF: 00        .byte $00   ; 
- D 0 - I - 0x008510 02:A500: A3        .byte $A3   ; 
- D 0 - I - 0x008511 02:A501: 10        .byte $10   ; 
- D 0 - I - 0x008512 02:A502: 30        .byte $30   ; <0>
- D 0 - I - 0x008513 02:A503: 02        .byte $02   ; 
- - - - - - 0x008514 02:A504: 37        .byte $37   ; <7>
- - - - - - 0x008515 02:A505: 01        .byte $01   ; 
- - - - - - 0x008516 02:A506: 40        .byte $40   ; 
- - - - - - 0x008517 02:A507: 06        .byte $06   ; 
- - - - - - 0x008518 02:A508: FF        .byte $FF   ; 

loc_track12:
- D 0 - I - 0x008519 02:A509: 00        .byte $00   ; 
- D 0 - I - 0x00851A 02:A50A: 01        .byte $01   ; 
- D 0 - I - 0x00851B 02:A50B: 1B        .byte $1B   ; 
- D 0 - I - 0x00851C 02:A50C: 83        .byte $83   ; 
- D 0 - I - 0x00851D 02:A50D: 20        .byte $20   ; 
- D 0 - I - 0x00851E 02:A50E: 10        .byte $10   ; 
- D 0 - I - 0x00851F 02:A50F: A1        .byte $A1   ; 
- D 0 - I - 0x008520 02:A510: 84        .byte $84   ; 
- D 0 - I - 0x008521 02:A511: 09        .byte $09   ; 
- D 0 - I - 0x008522 02:A512: 03        .byte $03   ; 
- D 0 - I - 0x008523 02:A513: FF        .byte $FF   ; 

loc_track13:
- D 0 - I - 0x008524 02:A514: 00        .byte $00   ; 
- D 0 - I - 0x008525 02:A515: 01        .byte $01   ; 
- D 0 - I - 0x008526 02:A516: 19        .byte $19   ; 
- D 0 - I - 0x008527 02:A517: 00        .byte $00   ; 
- D 0 - I - 0x008528 02:A518: 13        .byte $13   ; 
- D 0 - I - 0x008529 02:A519: 02        .byte $02   ; 
- D 0 - I - 0x00852A 02:A51A: 23        .byte $23   ; 
- D 0 - I - 0x00852B 02:A51B: 02        .byte $02   ; 
- D 0 - I - 0x00852C 02:A51C: 12        .byte $12   ; 
- D 0 - I - 0x00852D 02:A51D: 02        .byte $02   ; 
- D 0 - I - 0x00852E 02:A51E: 22        .byte $22   ; 
- D 0 - I - 0x00852F 02:A51F: 02        .byte $02   ; 
- D 0 - I - 0x008530 02:A520: 11        .byte $11   ; 
- D 0 - I - 0x008531 02:A521: 02        .byte $02   ; 
- D 0 - I - 0x008532 02:A522: 21        .byte $21   ; 
- D 0 - I - 0x008533 02:A523: 02        .byte $02   ; 
- D 0 - I - 0x008534 02:A524: 10        .byte $10   ; 
- D 0 - I - 0x008535 02:A525: 02        .byte $02   ; 
- D 0 - I - 0x008536 02:A526: 20        .byte $20   ; 
- D 0 - I - 0x008537 02:A527: 02        .byte $02   ; 
- D 0 - I - 0x008538 02:A528: FF        .byte $FF   ; 

loc_track14:
- D 0 - I - 0x008539 02:A529: 02        .byte $02   ; 
- D 0 - I - 0x00853A 02:A52A: 01        .byte $01   ; 
- D 0 - I - 0x00853B 02:A52B: 02        .byte $02   ; 
- D 0 - I - 0x00853C 02:A52C: 00        .byte $00   ; 
- D 0 - I - 0x00853D 02:A52D: A3        .byte $A3   ; 
- D 0 - I - 0x00853E 02:A52E: 20        .byte $20   ; 
- D 0 - I - 0x00853F 02:A52F: 30        .byte $30   ; <0>
- D 0 - I - 0x008540 02:A530: 01        .byte $01   ; 
- D 0 - I - 0x008541 02:A531: 34        .byte $34   ; <4>
- D 0 - I - 0x008542 02:A532: 01        .byte $01   ; 
- D 0 - I - 0x008543 02:A533: 30        .byte $30   ; <0>
- D 0 - I - 0x008544 02:A534: 01        .byte $01   ; 
- D 0 - I - 0x008545 02:A535: 37        .byte $37   ; <7>
- D 0 - I - 0x008546 02:A536: 01        .byte $01   ; 
- D 0 - I - 0x008547 02:A537: 30        .byte $30   ; <0>
- D 0 - I - 0x008548 02:A538: 01        .byte $01   ; 
- D 0 - I - 0x008549 02:A539: FF        .byte $FF   ; 

loc_track15:
- D 0 - I - 0x00854A 02:A53A: 01        .byte $01   ; 
- D 0 - I - 0x00854B 02:A53B: 00        .byte $00   ; 
- D 0 - I - 0x00854C 02:A53C: 01        .byte $01   ; 
- D 0 - I - 0x00854D 02:A53D: 00        .byte $00   ; 
- D 0 - I - 0x00854E 02:A53E: 44        .byte $44   ; <D>
- D 0 - I - 0x00854F 02:A53F: 01        .byte $01   ; 
- D 0 - I - 0x008550 02:A540: FF        .byte $FF   ; 

loc_track16:
- D 0 - I - 0x008551 02:A541: 30        .byte $30   ; <0>
- D 0 - I - 0x008552 02:A542: 00        .byte $00   ; 
- D 0 - I - 0x008553 02:A543: 0F        .byte $0F   ; 
- D 0 - I - 0x008554 02:A544: 00        .byte $00   ; 
- D 0 - I - 0x008555 02:A545: 0C        .byte $0C   ; 
- D 0 - I - 0x008556 02:A546: 10        .byte $10   ; 
- D 0 - I - 0x008557 02:A547: FF        .byte $FF   ; 

loc_track17:
- D 0 - I - 0x008558 02:A548: 30        .byte $30   ; <0>
- D 0 - I - 0x008559 02:A549: 00        .byte $00   ; 
- D 0 - I - 0x00855A 02:A54A: 1F        .byte $1F   ; 
- D 0 - I - 0x00855B 02:A54B: 00        .byte $00   ; 
- D 0 - I - 0x00855C 02:A54C: C9        .byte $C9   ; 
- D 0 - I - 0x00855D 02:A54D: 0A        .byte $0A   ; 
- D 0 - I - 0x00855E 02:A54E: 06        .byte $06   ; 
- D 0 - I - 0x00855F 02:A54F: 01        .byte $01   ; 
- D 0 - I - 0x008560 02:A550: 0D        .byte $0D   ; 
- D 0 - I - 0x008561 02:A551: 0A        .byte $0A   ; 
- D 0 - I - 0x008562 02:A552: FF        .byte $FF   ; 

loc_track18:
- D 0 - I - 0x008563 02:A553: 02        .byte $02   ; 
- D 0 - I - 0x008564 02:A554: 02        .byte $02   ; 
- D 0 - I - 0x008565 02:A555: 1F        .byte $1F   ; 
- D 0 - I - 0x008566 02:A556: 8C        .byte $8C   ; 
- D 0 - I - 0x008567 02:A557: EF        .byte $EF   ; 
- D 0 - I - 0x008568 02:A558: 01        .byte $01   ; 
- D 0 - I - 0x008569 02:A559: FD        .byte $FD   ; 
- - - - - - 0x00856A 02:A55A: FE        .byte $FE   ; 
- D 0 - I - 0x00856B 02:A55B: 20        .byte $20   ; 
- D 0 - I - 0x00856C 02:A55C: 01        .byte $01   ; 
- D 0 - I - 0x00856D 02:A55D: 20        .byte $20   ; 
- D 0 - I - 0x00856E 02:A55E: 03        .byte $03   ; 
- D 0 - I - 0x00856F 02:A55F: B4        .byte $B4   ; 
- D 0 - I - 0x008570 02:A560: 00        .byte $00   ; 
- D 0 - I - 0x008571 02:A561: FF        .byte $FF   ; 

loc_track19:
- D 0 - I - 0x008572 02:A562: 30        .byte $30   ; <0>
- D 0 - I - 0x008573 02:A563: 00        .byte $00   ; 
- D 0 - I - 0x008574 02:A564: 1F        .byte $1F   ; 
- D 0 - I - 0x008575 02:A565: 00        .byte $00   ; 
- D 0 - I - 0x008576 02:A566: 0D        .byte $0D   ; 
- D 0 - I - 0x008577 02:A567: 02        .byte $02   ; 
- D 0 - I - 0x008578 02:A568: 1F        .byte $1F   ; 
- D 0 - I - 0x008579 02:A569: 01        .byte $01   ; 
- D 0 - I - 0x00857A 02:A56A: 0F        .byte $0F   ; 
- D 0 - I - 0x00857B 02:A56B: 02        .byte $02   ; 
- D 0 - I - 0x00857C 02:A56C: FF        .byte $FF   ; 

loc_track1A:
- D 0 - I - 0x00857D 02:A56D: 30        .byte $30   ; <0>
- D 0 - I - 0x00857E 02:A56E: 00        .byte $00   ; 
- D 0 - I - 0x00857F 02:A56F: 1F        .byte $1F   ; 
- D 0 - I - 0x008580 02:A570: 00        .byte $00   ; 
- D 0 - I - 0x008581 02:A571: 04        .byte $04   ; 
- D 0 - I - 0x008582 02:A572: 01        .byte $01   ; 
- D 0 - I - 0x008583 02:A573: 1F        .byte $1F   ; 
- D 0 - I - 0x008584 02:A574: 01        .byte $01   ; 
- D 0 - I - 0x008585 02:A575: 03        .byte $03   ; 
- D 0 - I - 0x008586 02:A576: 01        .byte $01   ; 
- D 0 - I - 0x008587 02:A577: FF        .byte $FF   ; 

loc_track21:
- D 0 - I - 0x008588 02:A578: 01        .byte $01   ; 
- D 0 - I - 0x008589 02:A579: 02        .byte $02   ; 
- D 0 - I - 0x00858A 02:A57A: 00        .byte $00   ; 
- D 0 - I - 0x00858B 02:A57B: 00        .byte $00   ; 
- D 0 - I - 0x00858C 02:A57C: 09        .byte $09   ; 
- D 0 - I - 0x00858D 02:A57D: 01        .byte $01   ; 
- D 0 - I - 0x00858E 02:A57E: A1        .byte $A1   ; 
- D 0 - I - 0x00858F 02:A57F: 83        .byte $83   ; 
- D 0 - I - 0x008590 02:A580: 10        .byte $10   ; 
- D 0 - I - 0x008591 02:A581: 03        .byte $03   ; 
- D 0 - I - 0x008592 02:A582: FF        .byte $FF   ; 

loc_track1B:
- D 0 - I - 0x008593 02:A583: 04        .byte $04   ; 
- D 0 - I - 0x008594 02:A584: 02        .byte $02   ; 
- D 0 - I - 0x008595 02:A585: 0A        .byte $0A   ; 
- D 0 - I - 0x008596 02:A586: 00        .byte $00   ; 
- D 0 - I - 0x008597 02:A587: A3        .byte $A3   ; 
- D 0 - I - 0x008598 02:A588: 10        .byte $10   ; 
- D 0 - I - 0x008599 02:A589: 2B        .byte $2B   ; 
- D 0 - I - 0x00859A 02:A58A: 06        .byte $06   ; 
- D 0 - I - 0x00859B 02:A58B: 29        .byte $29   ; 
- D 0 - I - 0x00859C 02:A58C: 06        .byte $06   ; 
- D 0 - I - 0x00859D 02:A58D: 2B        .byte $2B   ; 
- D 0 - I - 0x00859E 02:A58E: 06        .byte $06   ; 
- D 0 - I - 0x00859F 02:A58F: 29        .byte $29   ; 
- D 0 - I - 0x0085A0 02:A590: 06        .byte $06   ; 
- D 0 - I - 0x0085A1 02:A591: A0        .byte $A0   ; 
- D 0 - I - 0x0085A2 02:A592: 02        .byte $02   ; 
- D 0 - I - 0x0085A3 02:A593: 2B        .byte $2B   ; 
- D 0 - I - 0x0085A4 02:A594: 04        .byte $04   ; 
- D 0 - I - 0x0085A5 02:A595: 29        .byte $29   ; 
- D 0 - I - 0x0085A6 02:A596: 04        .byte $04   ; 
- D 0 - I - 0x0085A7 02:A597: A0        .byte $A0   ; 
- D 0 - I - 0x0085A8 02:A598: 0A        .byte $0A   ; 
- D 0 - I - 0x0085A9 02:A599: 30        .byte $30   ; <0>
- D 0 - I - 0x0085AA 02:A59A: 06        .byte $06   ; 
- D 0 - I - 0x0085AB 02:A59B: 2B        .byte $2B   ; 
- D 0 - I - 0x0085AC 02:A59C: 06        .byte $06   ; 
- D 0 - I - 0x0085AD 02:A59D: 30        .byte $30   ; <0>
- D 0 - I - 0x0085AE 02:A59E: 06        .byte $06   ; 
- D 0 - I - 0x0085AF 02:A59F: 2B        .byte $2B   ; 
- D 0 - I - 0x0085B0 02:A5A0: 06        .byte $06   ; 
- D 0 - I - 0x0085B1 02:A5A1: A0        .byte $A0   ; 
- D 0 - I - 0x0085B2 02:A5A2: 02        .byte $02   ; 
- D 0 - I - 0x0085B3 02:A5A3: 30        .byte $30   ; <0>
- D 0 - I - 0x0085B4 02:A5A4: 04        .byte $04   ; 
- D 0 - I - 0x0085B5 02:A5A5: 2B        .byte $2B   ; 
- D 0 - I - 0x0085B6 02:A5A6: 04        .byte $04   ; 
- D 0 - I - 0x0085B7 02:A5A7: A0        .byte $A0   ; 
- D 0 - I - 0x0085B8 02:A5A8: 0A        .byte $0A   ; 
- D 0 - I - 0x0085B9 02:A5A9: B1        .byte $B1   ; 
- D 0 - I - 0x0085BA 02:A5AA: 02        .byte $02   ; 
- D 0 - I - 0x0085BB 02:A5AB: 34        .byte $34   ; <4>
- D 0 - I - 0x0085BC 02:A5AC: 06        .byte $06   ; 
- D 0 - I - 0x0085BD 02:A5AD: 32        .byte $32   ; <2>
- D 0 - I - 0x0085BE 02:A5AE: 06        .byte $06   ; 
- D 0 - I - 0x0085BF 02:A5AF: 34        .byte $34   ; <4>
- D 0 - I - 0x0085C0 02:A5B0: 06        .byte $06   ; 
- D 0 - I - 0x0085C1 02:A5B1: 35        .byte $35   ; <5>
- D 0 - I - 0x0085C2 02:A5B2: 06        .byte $06   ; 
- D 0 - I - 0x0085C3 02:A5B3: A0        .byte $A0   ; 
- D 0 - I - 0x0085C4 02:A5B4: 02        .byte $02   ; 
- D 0 - I - 0x0085C5 02:A5B5: 34        .byte $34   ; <4>
- D 0 - I - 0x0085C6 02:A5B6: 04        .byte $04   ; 
- D 0 - I - 0x0085C7 02:A5B7: 32        .byte $32   ; <2>
- D 0 - I - 0x0085C8 02:A5B8: 04        .byte $04   ; 
- D 0 - I - 0x0085C9 02:A5B9: A0        .byte $A0   ; 
- D 0 - I - 0x0085CA 02:A5BA: 0A        .byte $0A   ; 
- D 0 - I - 0x0085CB 02:A5BB: 32        .byte $32   ; <2>
- D 0 - I - 0x0085CC 02:A5BC: 06        .byte $06   ; 
- D 0 - I - 0x0085CD 02:A5BD: 30        .byte $30   ; <0>
- D 0 - I - 0x0085CE 02:A5BE: 06        .byte $06   ; 
- D 0 - I - 0x0085CF 02:A5BF: 32        .byte $32   ; <2>
- D 0 - I - 0x0085D0 02:A5C0: 06        .byte $06   ; 
- D 0 - I - 0x0085D1 02:A5C1: 34        .byte $34   ; <4>
- D 0 - I - 0x0085D2 02:A5C2: 06        .byte $06   ; 
- D 0 - I - 0x0085D3 02:A5C3: A0        .byte $A0   ; 
- D 0 - I - 0x0085D4 02:A5C4: 02        .byte $02   ; 
- D 0 - I - 0x0085D5 02:A5C5: 32        .byte $32   ; <2>
- D 0 - I - 0x0085D6 02:A5C6: 04        .byte $04   ; 
- D 0 - I - 0x0085D7 02:A5C7: 30        .byte $30   ; <0>
- D 0 - I - 0x0085D8 02:A5C8: 04        .byte $04   ; 
- D 0 - I - 0x0085D9 02:A5C9: A0        .byte $A0   ; 
- D 0 - I - 0x0085DA 02:A5CA: 0A        .byte $0A   ; 
- D 0 - I - 0x0085DB 02:A5CB: 30        .byte $30   ; <0>
- D 0 - I - 0x0085DC 02:A5CC: 06        .byte $06   ; 
- D 0 - I - 0x0085DD 02:A5CD: 2B        .byte $2B   ; 
- D 0 - I - 0x0085DE 02:A5CE: 06        .byte $06   ; 
- D 0 - I - 0x0085DF 02:A5CF: 30        .byte $30   ; <0>
- D 0 - I - 0x0085E0 02:A5D0: 06        .byte $06   ; 
- D 0 - I - 0x0085E1 02:A5D1: 2B        .byte $2B   ; 
- D 0 - I - 0x0085E2 02:A5D2: 06        .byte $06   ; 
- D 0 - I - 0x0085E3 02:A5D3: A0        .byte $A0   ; 
- D 0 - I - 0x0085E4 02:A5D4: 02        .byte $02   ; 
- D 0 - I - 0x0085E5 02:A5D5: 30        .byte $30   ; <0>
- D 0 - I - 0x0085E6 02:A5D6: 04        .byte $04   ; 
- D 0 - I - 0x0085E7 02:A5D7: 32        .byte $32   ; <2>
- D 0 - I - 0x0085E8 02:A5D8: 04        .byte $04   ; 
- D 0 - I - 0x0085E9 02:A5D9: A0        .byte $A0   ; 
- D 0 - I - 0x0085EA 02:A5DA: 0F        .byte $0F   ; 
- D 0 - I - 0x0085EB 02:A5DB: 37        .byte $37   ; <7>
- D 0 - I - 0x0085EC 02:A5DC: 20        .byte $20   ; 
- D 0 - I - 0x0085ED 02:A5DD: B0        .byte $B0   ; 
- D 0 - I - 0x0085EE 02:A5DE: 02        .byte $02   ; 
- - - - - - 0x0085EF 02:A5DF: FF        .byte $FF   ; 

loc_track1C:
- D 0 - I - 0x0085F0 02:A5E0: 04        .byte $04   ; 
- D 0 - I - 0x0085F1 02:A5E1: 1A        .byte $1A   ; 
- D 0 - I - 0x0085F2 02:A5E2: 00        .byte $00   ; 
- D 0 - I - 0x0085F3 02:A5E3: 00        .byte $00   ; 
- D 0 - I - 0x0085F4 02:A5E4: 20        .byte $20   ; 
- D 0 - I - 0x0085F5 02:A5E5: 02        .byte $02   ; 
- D 0 - I - 0x0085F6 02:A5E6: 30        .byte $30   ; <0>
- D 0 - I - 0x0085F7 02:A5E7: 02        .byte $02   ; 
- D 0 - I - 0x0085F8 02:A5E8: B7        .byte $B7   ; 
- D 0 - I - 0x0085F9 02:A5E9: 02        .byte $02   ; 
- D 0 - I - 0x0085FA 02:A5EA: 22        .byte $22   ; 
- D 0 - I - 0x0085FB 02:A5EB: 02        .byte $02   ; 
- D 0 - I - 0x0085FC 02:A5EC: 32        .byte $32   ; <2>
- D 0 - I - 0x0085FD 02:A5ED: 02        .byte $02   ; 
- D 0 - I - 0x0085FE 02:A5EE: B7        .byte $B7   ; 
- D 0 - I - 0x0085FF 02:A5EF: 05        .byte $05   ; 
- D 0 - I - 0x008600 02:A5F0: 20        .byte $20   ; 
- D 0 - I - 0x008601 02:A5F1: 02        .byte $02   ; 
- D 0 - I - 0x008602 02:A5F2: 30        .byte $30   ; <0>
- D 0 - I - 0x008603 02:A5F3: 02        .byte $02   ; 
- D 0 - I - 0x008604 02:A5F4: B7        .byte $B7   ; 
- D 0 - I - 0x008605 02:A5F5: 08        .byte $08   ; 
- D 0 - I - 0x008606 02:A5F6: 22        .byte $22   ; 
- D 0 - I - 0x008607 02:A5F7: 02        .byte $02   ; 
- D 0 - I - 0x008608 02:A5F8: 32        .byte $32   ; <2>
- D 0 - I - 0x008609 02:A5F9: 02        .byte $02   ; 
- D 0 - I - 0x00860A 02:A5FA: B7        .byte $B7   ; 
- D 0 - I - 0x00860B 02:A5FB: 0B        .byte $0B   ; 
- D 0 - I - 0x00860C 02:A5FC: 25        .byte $25   ; 
- D 0 - I - 0x00860D 02:A5FD: 02        .byte $02   ; 
- D 0 - I - 0x00860E 02:A5FE: 35        .byte $35   ; <5>
- D 0 - I - 0x00860F 02:A5FF: 02        .byte $02   ; 
- D 0 - I - 0x008610 02:A600: B7        .byte $B7   ; 
- D 0 - I - 0x008611 02:A601: 0E        .byte $0E   ; 
- D 0 - I - 0x008612 02:A602: 24        .byte $24   ; 
- D 0 - I - 0x008613 02:A603: 02        .byte $02   ; 
- D 0 - I - 0x008614 02:A604: 34        .byte $34   ; <4>
- D 0 - I - 0x008615 02:A605: 02        .byte $02   ; 
- D 0 - I - 0x008616 02:A606: B7        .byte $B7   ; 
- D 0 - I - 0x008617 02:A607: 11        .byte $11   ; 
- D 0 - I - 0x008618 02:A608: 22        .byte $22   ; 
- D 0 - I - 0x008619 02:A609: 02        .byte $02   ; 
- D 0 - I - 0x00861A 02:A60A: 32        .byte $32   ; <2>
- D 0 - I - 0x00861B 02:A60B: 02        .byte $02   ; 
- D 0 - I - 0x00861C 02:A60C: B7        .byte $B7   ; 
- D 0 - I - 0x00861D 02:A60D: 14        .byte $14   ; 
- D 0 - I - 0x00861E 02:A60E: 27        .byte $27   ; 
- D 0 - I - 0x00861F 02:A60F: 02        .byte $02   ; 
- D 0 - I - 0x008620 02:A610: 37        .byte $37   ; <7>
- D 0 - I - 0x008621 02:A611: 02        .byte $02   ; 
- D 0 - I - 0x008622 02:A612: B7        .byte $B7   ; 
- D 0 - I - 0x008623 02:A613: 17        .byte $17   ; 
- D 0 - I - 0x008624 02:A614: B0        .byte $B0   ; 
- D 0 - I - 0x008625 02:A615: 02        .byte $02   ; 
- - - - - - 0x008626 02:A616: FF        .byte $FF   ; 

loc_track1D:
- D 0 - I - 0x008627 02:A617: 03        .byte $03   ; 
- D 0 - I - 0x008628 02:A618: 02        .byte $02   ; 
- D 0 - I - 0x008629 02:A619: 0F        .byte $0F   ; 
- D 0 - I - 0x00862A 02:A61A: 00        .byte $00   ; 
- D 0 - I - 0x00862B 02:A61B: FD        .byte $FD   ; 
- - - - - - 0x00862C 02:A61C: FE        .byte $FE   ; 
- D 0 - I - 0x00862D 02:A61D: A3        .byte $A3   ; 
- D 0 - I - 0x00862E 02:A61E: 10        .byte $10   ; 
- D 0 - I - 0x00862F 02:A61F: 20        .byte $20   ; 
- D 0 - I - 0x008630 02:A620: 14        .byte $14   ; 
- D 0 - I - 0x008631 02:A621: 22        .byte $22   ; 
- D 0 - I - 0x008632 02:A622: 04        .byte $04   ; 
- D 0 - I - 0x008633 02:A623: 23        .byte $23   ; 
- D 0 - I - 0x008634 02:A624: 04        .byte $04   ; 
- D 0 - I - 0x008635 02:A625: 26        .byte $26   ; 
- D 0 - I - 0x008636 02:A626: 04        .byte $04   ; 
- D 0 - I - 0x008637 02:A627: 27        .byte $27   ; 
- D 0 - I - 0x008638 02:A628: 20        .byte $20   ; 
- D 0 - I - 0x008639 02:A629: B1        .byte $B1   ; 
- D 0 - I - 0x00863A 02:A62A: 00        .byte $00   ; 
- D 0 - I - 0x00863B 02:A62B: 30        .byte $30   ; <0>
- D 0 - I - 0x00863C 02:A62C: 14        .byte $14   ; 
- D 0 - I - 0x00863D 02:A62D: 2B        .byte $2B   ; 
- D 0 - I - 0x00863E 02:A62E: 04        .byte $04   ; 
- D 0 - I - 0x00863F 02:A62F: 28        .byte $28   ; 
- D 0 - I - 0x008640 02:A630: 04        .byte $04   ; 
- D 0 - I - 0x008641 02:A631: 2B        .byte $2B   ; 
- D 0 - I - 0x008642 02:A632: 04        .byte $04   ; 
- D 0 - I - 0x008643 02:A633: 30        .byte $30   ; <0>
- D 0 - I - 0x008644 02:A634: 20        .byte $20   ; 
- D 0 - I - 0x008645 02:A635: 20        .byte $20   ; 
- D 0 - I - 0x008646 02:A636: 14        .byte $14   ; 
- D 0 - I - 0x008647 02:A637: 22        .byte $22   ; 
- D 0 - I - 0x008648 02:A638: 04        .byte $04   ; 
- D 0 - I - 0x008649 02:A639: 23        .byte $23   ; 
- D 0 - I - 0x00864A 02:A63A: 04        .byte $04   ; 
- D 0 - I - 0x00864B 02:A63B: 26        .byte $26   ; 
- D 0 - I - 0x00864C 02:A63C: 04        .byte $04   ; 
- D 0 - I - 0x00864D 02:A63D: 27        .byte $27   ; 
- D 0 - I - 0x00864E 02:A63E: 20        .byte $20   ; 
- D 0 - I - 0x00864F 02:A63F: 27        .byte $27   ; 
- D 0 - I - 0x008650 02:A640: 14        .byte $14   ; 
- D 0 - I - 0x008651 02:A641: 28        .byte $28   ; 
- D 0 - I - 0x008652 02:A642: 04        .byte $04   ; 
- D 0 - I - 0x008653 02:A643: 2A        .byte $2A   ; 
- D 0 - I - 0x008654 02:A644: 04        .byte $04   ; 
- D 0 - I - 0x008655 02:A645: 28        .byte $28   ; 
- D 0 - I - 0x008656 02:A646: 04        .byte $04   ; 
- D 0 - I - 0x008657 02:A647: 27        .byte $27   ; 
- D 0 - I - 0x008658 02:A648: 20        .byte $20   ; 
- D 0 - I - 0x008659 02:A649: B0        .byte $B0   ; 
- D 0 - I - 0x00865A 02:A64A: 02        .byte $02   ; 
- - - - - - 0x00865B 02:A64B: FF        .byte $FF   ; 

loc_track1E:
- D 0 - I - 0x00865C 02:A64C: 03        .byte $03   ; 
- D 0 - I - 0x00865D 02:A64D: 15        .byte $15   ; 
- D 0 - I - 0x00865E 02:A64E: 00        .byte $00   ; 
- D 0 - I - 0x00865F 02:A64F: 00        .byte $00   ; 
- D 0 - I - 0x008660 02:A650: FD        .byte $FD   ; 
- - - - - - 0x008661 02:A651: FE        .byte $FE   ; 
- D 0 - I - 0x008662 02:A652: 20        .byte $20   ; 
- D 0 - I - 0x008663 02:A653: 04        .byte $04   ; 
- D 0 - I - 0x008664 02:A654: 20        .byte $20   ; 
- D 0 - I - 0x008665 02:A655: 04        .byte $04   ; 
- D 0 - I - 0x008666 02:A656: 1F        .byte $1F   ; 
- D 0 - I - 0x008667 02:A657: 02        .byte $02   ; 
- D 0 - I - 0x008668 02:A658: 20        .byte $20   ; 
- D 0 - I - 0x008669 02:A659: 06        .byte $06   ; 
- D 0 - I - 0x00866A 02:A65A: A2        .byte $A2   ; 
- D 0 - I - 0x00866B 02:A65B: 35        .byte $35   ; <5>
- D 0 - I - 0x00866C 02:A65C: 20        .byte $20   ; 
- D 0 - I - 0x00866D 02:A65D: 06        .byte $06   ; 
- D 0 - I - 0x00866E 02:A65E: 20        .byte $20   ; 
- D 0 - I - 0x00866F 02:A65F: 06        .byte $06   ; 
- D 0 - I - 0x008670 02:A660: 20        .byte $20   ; 
- D 0 - I - 0x008671 02:A661: 04        .byte $04   ; 
- D 0 - I - 0x008672 02:A662: A2        .byte $A2   ; 
- D 0 - I - 0x008673 02:A663: 15        .byte $15   ; 
- D 0 - I - 0x008674 02:A664: B3        .byte $B3   ; 
- D 0 - I - 0x008675 02:A665: 00        .byte $00   ; 
- D 0 - I - 0x008676 02:A666: FD        .byte $FD   ; 
- - - - - - 0x008677 02:A667: FE        .byte $FE   ; 
- D 0 - I - 0x008678 02:A668: 25        .byte $25   ; 
- D 0 - I - 0x008679 02:A669: 04        .byte $04   ; 
- D 0 - I - 0x00867A 02:A66A: 25        .byte $25   ; 
- D 0 - I - 0x00867B 02:A66B: 04        .byte $04   ; 
- D 0 - I - 0x00867C 02:A66C: 1F        .byte $1F   ; 
- D 0 - I - 0x00867D 02:A66D: 02        .byte $02   ; 
- D 0 - I - 0x00867E 02:A66E: 25        .byte $25   ; 
- D 0 - I - 0x00867F 02:A66F: 06        .byte $06   ; 
- D 0 - I - 0x008680 02:A670: A2        .byte $A2   ; 
- D 0 - I - 0x008681 02:A671: 35        .byte $35   ; <5>
- D 0 - I - 0x008682 02:A672: 25        .byte $25   ; 
- D 0 - I - 0x008683 02:A673: 06        .byte $06   ; 
- D 0 - I - 0x008684 02:A674: 25        .byte $25   ; 
- D 0 - I - 0x008685 02:A675: 06        .byte $06   ; 
- D 0 - I - 0x008686 02:A676: 25        .byte $25   ; 
- D 0 - I - 0x008687 02:A677: 04        .byte $04   ; 
- D 0 - I - 0x008688 02:A678: A2        .byte $A2   ; 
- D 0 - I - 0x008689 02:A679: 15        .byte $15   ; 
- D 0 - I - 0x00868A 02:A67A: B1        .byte $B1   ; 
- D 0 - I - 0x00868B 02:A67B: 00        .byte $00   ; 
- D 0 - I - 0x00868C 02:A67C: FD        .byte $FD   ; 
- - - - - - 0x00868D 02:A67D: FE        .byte $FE   ; 
- D 0 - I - 0x00868E 02:A67E: 20        .byte $20   ; 
- D 0 - I - 0x00868F 02:A67F: 04        .byte $04   ; 
- D 0 - I - 0x008690 02:A680: 20        .byte $20   ; 
- D 0 - I - 0x008691 02:A681: 04        .byte $04   ; 
- D 0 - I - 0x008692 02:A682: 1F        .byte $1F   ; 
- D 0 - I - 0x008693 02:A683: 02        .byte $02   ; 
- D 0 - I - 0x008694 02:A684: 20        .byte $20   ; 
- D 0 - I - 0x008695 02:A685: 06        .byte $06   ; 
- D 0 - I - 0x008696 02:A686: A2        .byte $A2   ; 
- D 0 - I - 0x008697 02:A687: 30        .byte $30   ; <0>
- D 0 - I - 0x008698 02:A688: 20        .byte $20   ; 
- D 0 - I - 0x008699 02:A689: 06        .byte $06   ; 
- D 0 - I - 0x00869A 02:A68A: 20        .byte $20   ; 
- D 0 - I - 0x00869B 02:A68B: 06        .byte $06   ; 
- D 0 - I - 0x00869C 02:A68C: 20        .byte $20   ; 
- D 0 - I - 0x00869D 02:A68D: 04        .byte $04   ; 
- D 0 - I - 0x00869E 02:A68E: A2        .byte $A2   ; 
- D 0 - I - 0x00869F 02:A68F: 15        .byte $15   ; 
- D 0 - I - 0x0086A0 02:A690: B1        .byte $B1   ; 
- D 0 - I - 0x0086A1 02:A691: 00        .byte $00   ; 
- D 0 - I - 0x0086A2 02:A692: 23        .byte $23   ; 
- D 0 - I - 0x0086A3 02:A693: 04        .byte $04   ; 
- D 0 - I - 0x0086A4 02:A694: 23        .byte $23   ; 
- D 0 - I - 0x0086A5 02:A695: 04        .byte $04   ; 
- D 0 - I - 0x0086A6 02:A696: 1F        .byte $1F   ; 
- D 0 - I - 0x0086A7 02:A697: 02        .byte $02   ; 
- D 0 - I - 0x0086A8 02:A698: 23        .byte $23   ; 
- D 0 - I - 0x0086A9 02:A699: 06        .byte $06   ; 
- D 0 - I - 0x0086AA 02:A69A: A2        .byte $A2   ; 
- D 0 - I - 0x0086AB 02:A69B: 7F        .byte $7F   ; 
- D 0 - I - 0x0086AC 02:A69C: 23        .byte $23   ; 
- D 0 - I - 0x0086AD 02:A69D: 10        .byte $10   ; 
- D 0 - I - 0x0086AE 02:A69E: A2        .byte $A2   ; 
- D 0 - I - 0x0086AF 02:A69F: 15        .byte $15   ; 
- D 0 - I - 0x0086B0 02:A6A0: 27        .byte $27   ; 
- D 0 - I - 0x0086B1 02:A6A1: 04        .byte $04   ; 
- D 0 - I - 0x0086B2 02:A6A2: 27        .byte $27   ; 
- D 0 - I - 0x0086B3 02:A6A3: 04        .byte $04   ; 
- D 0 - I - 0x0086B4 02:A6A4: 1F        .byte $1F   ; 
- D 0 - I - 0x0086B5 02:A6A5: 02        .byte $02   ; 
- D 0 - I - 0x0086B6 02:A6A6: 27        .byte $27   ; 
- D 0 - I - 0x0086B7 02:A6A7: 06        .byte $06   ; 
- D 0 - I - 0x0086B8 02:A6A8: A2        .byte $A2   ; 
- D 0 - I - 0x0086B9 02:A6A9: 7F        .byte $7F   ; 
- D 0 - I - 0x0086BA 02:A6AA: 27        .byte $27   ; 
- D 0 - I - 0x0086BB 02:A6AB: 10        .byte $10   ; 
- D 0 - I - 0x0086BC 02:A6AC: A2        .byte $A2   ; 
- D 0 - I - 0x0086BD 02:A6AD: 15        .byte $15   ; 
- D 0 - I - 0x0086BE 02:A6AE: B0        .byte $B0   ; 
- D 0 - I - 0x0086BF 02:A6AF: 02        .byte $02   ; 
- - - - - - 0x0086C0 02:A6B0: FF        .byte $FF   ; 

loc_track1F:
- D 0 - I - 0x0086C1 02:A6B1: 0A        .byte $0A   ; 
- D 0 - I - 0x0086C2 02:A6B2: 02        .byte $02   ; 
- D 0 - I - 0x0086C3 02:A6B3: 1F        .byte $1F   ; 
- D 0 - I - 0x0086C4 02:A6B4: 00        .byte $00   ; 
- D 0 - I - 0x0086C5 02:A6B5: A3        .byte $A3   ; 
- D 0 - I - 0x0086C6 02:A6B6: 20        .byte $20   ; 
- D 0 - I - 0x0086C7 02:A6B7: EF        .byte $EF   ; 
- D 0 - I - 0x0086C8 02:A6B8: 01        .byte $01   ; 
- D 0 - I - 0x0086C9 02:A6B9: FD        .byte $FD   ; 
- - - - - - 0x0086CA 02:A6BA: FE        .byte $FE   ; 
- D 0 - I - 0x0086CB 02:A6BB: 25        .byte $25   ; 
- D 0 - I - 0x0086CC 02:A6BC: 01        .byte $01   ; 
- D 0 - I - 0x0086CD 02:A6BD: 26        .byte $26   ; 
- D 0 - I - 0x0086CE 02:A6BE: 01        .byte $01   ; 
- D 0 - I - 0x0086CF 02:A6BF: B7        .byte $B7   ; 
- D 0 - I - 0x0086D0 02:A6C0: 00        .byte $00   ; 
- D 0 - I - 0x0086D1 02:A6C1: A0        .byte $A0   ; 
- D 0 - I - 0x0086D2 02:A6C2: 1F        .byte $1F   ; 
- D 0 - I - 0x0086D3 02:A6C3: EF        .byte $EF   ; 
- D 0 - I - 0x0086D4 02:A6C4: 01        .byte $01   ; 
- D 0 - I - 0x0086D5 02:A6C5: FD        .byte $FD   ; 
- - - - - - 0x0086D6 02:A6C6: FE        .byte $FE   ; 
- D 0 - I - 0x0086D7 02:A6C7: 27        .byte $27   ; 
- D 0 - I - 0x0086D8 02:A6C8: 01        .byte $01   ; 
- D 0 - I - 0x0086D9 02:A6C9: 28        .byte $28   ; 
- D 0 - I - 0x0086DA 02:A6CA: 01        .byte $01   ; 
- D 0 - I - 0x0086DB 02:A6CB: B7        .byte $B7   ; 
- D 0 - I - 0x0086DC 02:A6CC: 00        .byte $00   ; 
- D 0 - I - 0x0086DD 02:A6CD: A0        .byte $A0   ; 
- D 0 - I - 0x0086DE 02:A6CE: 1F        .byte $1F   ; 
- D 0 - I - 0x0086DF 02:A6CF: B0        .byte $B0   ; 
- D 0 - I - 0x0086E0 02:A6D0: 02        .byte $02   ; 
- - - - - - 0x0086E1 02:A6D1: FF        .byte $FF   ; 

loc_track20:
- D 0 - I - 0x0086E2 02:A6D2: 2A        .byte $2A   ; 
- D 0 - I - 0x0086E3 02:A6D3: 7F        .byte $7F   ; 
- D 0 - I - 0x0086E4 02:A6D4: 00        .byte $00   ; 
- D 0 - I - 0x0086E5 02:A6D5: 00        .byte $00   ; 
- D 0 - I - 0x0086E6 02:A6D6: FD        .byte $FD   ; 
- - - - - - 0x0086E7 02:A6D7: FE        .byte $FE   ; 
- D 0 - I - 0x0086E8 02:A6D8: 16        .byte $16   ; 
- D 0 - I - 0x0086E9 02:A6D9: 04        .byte $04   ; 
- D 0 - I - 0x0086EA 02:A6DA: 26        .byte $26   ; 
- D 0 - I - 0x0086EB 02:A6DB: 04        .byte $04   ; 
- D 0 - I - 0x0086EC 02:A6DC: 16        .byte $16   ; 
- D 0 - I - 0x0086ED 02:A6DD: 04        .byte $04   ; 
- D 0 - I - 0x0086EE 02:A6DE: 26        .byte $26   ; 
- D 0 - I - 0x0086EF 02:A6DF: 04        .byte $04   ; 
- D 0 - I - 0x0086F0 02:A6E0: 18        .byte $18   ; 
- D 0 - I - 0x0086F1 02:A6E1: 04        .byte $04   ; 
- D 0 - I - 0x0086F2 02:A6E2: 28        .byte $28   ; 
- D 0 - I - 0x0086F3 02:A6E3: 04        .byte $04   ; 
- D 0 - I - 0x0086F4 02:A6E4: 18        .byte $18   ; 
- D 0 - I - 0x0086F5 02:A6E5: 04        .byte $04   ; 
- D 0 - I - 0x0086F6 02:A6E6: 28        .byte $28   ; 
- D 0 - I - 0x0086F7 02:A6E7: 04        .byte $04   ; 
- D 0 - I - 0x0086F8 02:A6E8: B0        .byte $B0   ; 
- D 0 - I - 0x0086F9 02:A6E9: 02        .byte $02   ; 
- - - - - - 0x0086FA 02:A6EA: FF        .byte $FF   ; 

loc_track22:
- D 0 - I - 0x0086FB 02:A6EB: 05        .byte $05   ; 
- D 0 - I - 0x0086FC 02:A6EC: 02        .byte $02   ; 
- D 0 - I - 0x0086FD 02:A6ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0086FE 02:A6EE: 00        .byte $00   ; 
- D 0 - I - 0x0086FF 02:A6EF: A3        .byte $A3   ; 
- D 0 - I - 0x008700 02:A6F0: 10        .byte $10   ; 
- D 0 - I - 0x008701 02:A6F1: 25        .byte $25   ; 
- D 0 - I - 0x008702 02:A6F2: 02        .byte $02   ; 
- D 0 - I - 0x008703 02:A6F3: 29        .byte $29   ; 
- D 0 - I - 0x008704 02:A6F4: 02        .byte $02   ; 
- D 0 - I - 0x008705 02:A6F5: 34        .byte $34   ; <4>
- D 0 - I - 0x008706 02:A6F6: 04        .byte $04   ; 
- D 0 - I - 0x008707 02:A6F7: B1        .byte $B1   ; 
- D 0 - I - 0x008708 02:A6F8: 02        .byte $02   ; 
- D 0 - I - 0x008709 02:A6F9: 25        .byte $25   ; 
- D 0 - I - 0x00870A 02:A6FA: 02        .byte $02   ; 
- D 0 - I - 0x00870B 02:A6FB: 29        .byte $29   ; 
- D 0 - I - 0x00870C 02:A6FC: 02        .byte $02   ; 
- D 0 - I - 0x00870D 02:A6FD: 34        .byte $34   ; <4>
- D 0 - I - 0x00870E 02:A6FE: 02        .byte $02   ; 
- D 0 - I - 0x00870F 02:A6FF: 32        .byte $32   ; <2>
- D 0 - I - 0x008710 02:A700: 0A        .byte $0A   ; 
- D 0 - I - 0x008711 02:A701: 24        .byte $24   ; 
- D 0 - I - 0x008712 02:A702: 02        .byte $02   ; 
- D 0 - I - 0x008713 02:A703: 29        .byte $29   ; 
- D 0 - I - 0x008714 02:A704: 02        .byte $02   ; 
- D 0 - I - 0x008715 02:A705: 34        .byte $34   ; <4>
- D 0 - I - 0x008716 02:A706: 04        .byte $04   ; 
- D 0 - I - 0x008717 02:A707: B1        .byte $B1   ; 
- D 0 - I - 0x008718 02:A708: 0B        .byte $0B   ; 
- D 0 - I - 0x008719 02:A709: 24        .byte $24   ; 
- D 0 - I - 0x00871A 02:A70A: 02        .byte $02   ; 
- D 0 - I - 0x00871B 02:A70B: 29        .byte $29   ; 
- D 0 - I - 0x00871C 02:A70C: 02        .byte $02   ; 
- D 0 - I - 0x00871D 02:A70D: 34        .byte $34   ; <4>
- D 0 - I - 0x00871E 02:A70E: 02        .byte $02   ; 
- D 0 - I - 0x00871F 02:A70F: 35        .byte $35   ; <5>
- D 0 - I - 0x008720 02:A710: 0A        .byte $0A   ; 
- D 0 - I - 0x008721 02:A711: 27        .byte $27   ; 
- D 0 - I - 0x008722 02:A712: 02        .byte $02   ; 
- D 0 - I - 0x008723 02:A713: 30        .byte $30   ; <0>
- D 0 - I - 0x008724 02:A714: 02        .byte $02   ; 
- D 0 - I - 0x008725 02:A715: 34        .byte $34   ; <4>
- D 0 - I - 0x008726 02:A716: 04        .byte $04   ; 
- D 0 - I - 0x008727 02:A717: B1        .byte $B1   ; 
- D 0 - I - 0x008728 02:A718: 13        .byte $13   ; 
- D 0 - I - 0x008729 02:A719: 27        .byte $27   ; 
- D 0 - I - 0x00872A 02:A71A: 02        .byte $02   ; 
- D 0 - I - 0x00872B 02:A71B: 30        .byte $30   ; <0>
- D 0 - I - 0x00872C 02:A71C: 02        .byte $02   ; 
- D 0 - I - 0x00872D 02:A71D: 34        .byte $34   ; <4>
- D 0 - I - 0x00872E 02:A71E: 02        .byte $02   ; 
- D 0 - I - 0x00872F 02:A71F: 32        .byte $32   ; <2>
- D 0 - I - 0x008730 02:A720: 0A        .byte $0A   ; 
- D 0 - I - 0x008731 02:A721: 29        .byte $29   ; 
- D 0 - I - 0x008732 02:A722: 01        .byte $01   ; 
- D 0 - I - 0x008733 02:A723: 2B        .byte $2B   ; 
- D 0 - I - 0x008734 02:A724: 01        .byte $01   ; 
- D 0 - I - 0x008735 02:A725: 31        .byte $31   ; <1>
- D 0 - I - 0x008736 02:A726: 01        .byte $01   ; 
- D 0 - I - 0x008737 02:A727: 32        .byte $32   ; <2>
- D 0 - I - 0x008738 02:A728: 01        .byte $01   ; 
- D 0 - I - 0x008739 02:A729: 2B        .byte $2B   ; 
- D 0 - I - 0x00873A 02:A72A: 01        .byte $01   ; 
- D 0 - I - 0x00873B 02:A72B: 31        .byte $31   ; <1>
- D 0 - I - 0x00873C 02:A72C: 01        .byte $01   ; 
- D 0 - I - 0x00873D 02:A72D: 32        .byte $32   ; <2>
- D 0 - I - 0x00873E 02:A72E: 01        .byte $01   ; 
- D 0 - I - 0x00873F 02:A72F: 34        .byte $34   ; <4>
- D 0 - I - 0x008740 02:A730: 01        .byte $01   ; 
- D 0 - I - 0x008741 02:A731: 31        .byte $31   ; <1>
- D 0 - I - 0x008742 02:A732: 01        .byte $01   ; 
- D 0 - I - 0x008743 02:A733: 32        .byte $32   ; <2>
- D 0 - I - 0x008744 02:A734: 01        .byte $01   ; 
- D 0 - I - 0x008745 02:A735: 34        .byte $34   ; <4>
- D 0 - I - 0x008746 02:A736: 01        .byte $01   ; 
- D 0 - I - 0x008747 02:A737: 35        .byte $35   ; <5>
- D 0 - I - 0x008748 02:A738: 01        .byte $01   ; 
- D 0 - I - 0x008749 02:A739: 32        .byte $32   ; <2>
- D 0 - I - 0x00874A 02:A73A: 01        .byte $01   ; 
- D 0 - I - 0x00874B 02:A73B: 34        .byte $34   ; <4>
- D 0 - I - 0x00874C 02:A73C: 01        .byte $01   ; 
- D 0 - I - 0x00874D 02:A73D: 35        .byte $35   ; <5>
- D 0 - I - 0x00874E 02:A73E: 01        .byte $01   ; 
- D 0 - I - 0x00874F 02:A73F: 37        .byte $37   ; <7>
- D 0 - I - 0x008750 02:A740: 11        .byte $11   ; 
- D 0 - I - 0x008751 02:A741: 25        .byte $25   ; 
- D 0 - I - 0x008752 02:A742: 02        .byte $02   ; 
- D 0 - I - 0x008753 02:A743: 29        .byte $29   ; 
- D 0 - I - 0x008754 02:A744: 02        .byte $02   ; 
- D 0 - I - 0x008755 02:A745: 34        .byte $34   ; <4>
- D 0 - I - 0x008756 02:A746: 04        .byte $04   ; 
- D 0 - I - 0x008757 02:A747: B1        .byte $B1   ; 
- D 0 - I - 0x008758 02:A748: 2B        .byte $2B   ; 
- D 0 - I - 0x008759 02:A749: 25        .byte $25   ; 
- D 0 - I - 0x00875A 02:A74A: 02        .byte $02   ; 
- D 0 - I - 0x00875B 02:A74B: 29        .byte $29   ; 
- D 0 - I - 0x00875C 02:A74C: 02        .byte $02   ; 
- D 0 - I - 0x00875D 02:A74D: 34        .byte $34   ; <4>
- D 0 - I - 0x00875E 02:A74E: 02        .byte $02   ; 
- D 0 - I - 0x00875F 02:A74F: 32        .byte $32   ; <2>
- D 0 - I - 0x008760 02:A750: 0A        .byte $0A   ; 
- D 0 - I - 0x008761 02:A751: 24        .byte $24   ; 
- D 0 - I - 0x008762 02:A752: 02        .byte $02   ; 
- D 0 - I - 0x008763 02:A753: 29        .byte $29   ; 
- D 0 - I - 0x008764 02:A754: 02        .byte $02   ; 
- D 0 - I - 0x008765 02:A755: 34        .byte $34   ; <4>
- D 0 - I - 0x008766 02:A756: 04        .byte $04   ; 
- D 0 - I - 0x008767 02:A757: B1        .byte $B1   ; 
- D 0 - I - 0x008768 02:A758: 33        .byte $33   ; <3>
- D 0 - I - 0x008769 02:A759: 24        .byte $24   ; 
- D 0 - I - 0x00876A 02:A75A: 02        .byte $02   ; 
- D 0 - I - 0x00876B 02:A75B: 29        .byte $29   ; 
- D 0 - I - 0x00876C 02:A75C: 02        .byte $02   ; 
- D 0 - I - 0x00876D 02:A75D: 34        .byte $34   ; <4>
- D 0 - I - 0x00876E 02:A75E: 02        .byte $02   ; 
- D 0 - I - 0x00876F 02:A75F: 35        .byte $35   ; <5>
- D 0 - I - 0x008770 02:A760: 0A        .byte $0A   ; 
- D 0 - I - 0x008771 02:A761: A0        .byte $A0   ; 
- D 0 - I - 0x008772 02:A762: 06        .byte $06   ; 
- D 0 - I - 0x008773 02:A763: 2A        .byte $2A   ; 
- D 0 - I - 0x008774 02:A764: 02        .byte $02   ; 
- D 0 - I - 0x008775 02:A765: 32        .byte $32   ; <2>
- D 0 - I - 0x008776 02:A766: 02        .byte $02   ; 
- D 0 - I - 0x008777 02:A767: 39        .byte $39   ; <9>
- D 0 - I - 0x008778 02:A768: 06        .byte $06   ; 
- D 0 - I - 0x008779 02:A769: 37        .byte $37   ; <7>
- D 0 - I - 0x00877A 02:A76A: 06        .byte $06   ; 
- D 0 - I - 0x00877B 02:A76B: 34        .byte $34   ; <4>
- D 0 - I - 0x00877C 02:A76C: 0A        .byte $0A   ; 
- D 0 - I - 0x00877D 02:A76D: 30        .byte $30   ; <0>
- D 0 - I - 0x00877E 02:A76E: 06        .byte $06   ; 
- D 0 - I - 0x00877F 02:A76F: A0        .byte $A0   ; 
- D 0 - I - 0x008780 02:A770: 0F        .byte $0F   ; 
- D 0 - I - 0x008781 02:A771: 32        .byte $32   ; <2>
- D 0 - I - 0x008782 02:A772: 20        .byte $20   ; 
- D 0 - I - 0x008783 02:A773: B0        .byte $B0   ; 
- D 0 - I - 0x008784 02:A774: 02        .byte $02   ; 
- - - - - - 0x008785 02:A775: FF        .byte $FF   ; 

loc_track23:
- D 0 - I - 0x008786 02:A776: 05        .byte $05   ; 
- D 0 - I - 0x008787 02:A777: 0D        .byte $0D   ; 
- D 0 - I - 0x008788 02:A778: 00        .byte $00   ; 
- D 0 - I - 0x008789 02:A779: 00        .byte $00   ; 
- D 0 - I - 0x00878A 02:A77A: 22        .byte $22   ; 
- D 0 - I - 0x00878B 02:A77B: 02        .byte $02   ; 
- D 0 - I - 0x00878C 02:A77C: BF        .byte $BF   ; 
- D 0 - I - 0x00878D 02:A77D: 02        .byte $02   ; 
- D 0 - I - 0x00878E 02:A77E: 21        .byte $21   ; 
- D 0 - I - 0x00878F 02:A77F: 02        .byte $02   ; 
- D 0 - I - 0x008790 02:A780: BF        .byte $BF   ; 
- D 0 - I - 0x008791 02:A781: 04        .byte $04   ; 
- D 0 - I - 0x008792 02:A782: 20        .byte $20   ; 
- D 0 - I - 0x008793 02:A783: 02        .byte $02   ; 
- D 0 - I - 0x008794 02:A784: BF        .byte $BF   ; 
- D 0 - I - 0x008795 02:A785: 06        .byte $06   ; 
- D 0 - I - 0x008796 02:A786: 19        .byte $19   ; 
- D 0 - I - 0x008797 02:A787: 02        .byte $02   ; 
- D 0 - I - 0x008798 02:A788: BF        .byte $BF   ; 
- D 0 - I - 0x008799 02:A789: 08        .byte $08   ; 
- D 0 - I - 0x00879A 02:A78A: 22        .byte $22   ; 
- D 0 - I - 0x00879B 02:A78B: 02        .byte $02   ; 
- D 0 - I - 0x00879C 02:A78C: BF        .byte $BF   ; 
- D 0 - I - 0x00879D 02:A78D: 0A        .byte $0A   ; 
- D 0 - I - 0x00879E 02:A78E: 21        .byte $21   ; 
- D 0 - I - 0x00879F 02:A78F: 02        .byte $02   ; 
- D 0 - I - 0x0087A0 02:A790: BF        .byte $BF   ; 
- D 0 - I - 0x0087A1 02:A791: 0C        .byte $0C   ; 
- D 0 - I - 0x0087A2 02:A792: 1A        .byte $1A   ; 
- D 0 - I - 0x0087A3 02:A793: 02        .byte $02   ; 
- D 0 - I - 0x0087A4 02:A794: B7        .byte $B7   ; 
- D 0 - I - 0x0087A5 02:A795: 0E        .byte $0E   ; 
- D 0 - I - 0x0087A6 02:A796: 20        .byte $20   ; 
- D 0 - I - 0x0087A7 02:A797: 02        .byte $02   ; 
- D 0 - I - 0x0087A8 02:A798: B7        .byte $B7   ; 
- D 0 - I - 0x0087A9 02:A799: 10        .byte $10   ; 
- D 0 - I - 0x0087AA 02:A79A: 22        .byte $22   ; 
- D 0 - I - 0x0087AB 02:A79B: 02        .byte $02   ; 
- D 0 - I - 0x0087AC 02:A79C: B7        .byte $B7   ; 
- D 0 - I - 0x0087AD 02:A79D: 12        .byte $12   ; 
- D 0 - I - 0x0087AE 02:A79E: 1F        .byte $1F   ; 
- D 0 - I - 0x0087AF 02:A79F: 02        .byte $02   ; 
- D 0 - I - 0x0087B0 02:A7A0: A2        .byte $A2   ; 
- D 0 - I - 0x0087B1 02:A7A1: 16        .byte $16   ; 
- D 0 - I - 0x0087B2 02:A7A2: 22        .byte $22   ; 
- D 0 - I - 0x0087B3 02:A7A3: 02        .byte $02   ; 
- D 0 - I - 0x0087B4 02:A7A4: 20        .byte $20   ; 
- D 0 - I - 0x0087B5 02:A7A5: 04        .byte $04   ; 
- D 0 - I - 0x0087B6 02:A7A6: 22        .byte $22   ; 
- D 0 - I - 0x0087B7 02:A7A7: 02        .byte $02   ; 
- D 0 - I - 0x0087B8 02:A7A8: A2        .byte $A2   ; 
- D 0 - I - 0x0087B9 02:A7A9: 40        .byte $40   ; 
- D 0 - I - 0x0087BA 02:A7AA: 24        .byte $24   ; 
- D 0 - I - 0x0087BB 02:A7AB: 06        .byte $06   ; 
- D 0 - I - 0x0087BC 02:A7AC: A2        .byte $A2   ; 
- D 0 - I - 0x0087BD 02:A7AD: 0D        .byte $0D   ; 
- D 0 - I - 0x0087BE 02:A7AE: B0        .byte $B0   ; 
- D 0 - I - 0x0087BF 02:A7AF: 02        .byte $02   ; 
- - - - - - 0x0087C0 02:A7B0: FF        .byte $FF   ; 

loc_track24:
- D 0 - I - 0x0087C1 02:A7B1: 06        .byte $06   ; 
- D 0 - I - 0x0087C2 02:A7B2: 02        .byte $02   ; 
- D 0 - I - 0x0087C3 02:A7B3: 0F        .byte $0F   ; 
- D 0 - I - 0x0087C4 02:A7B4: 00        .byte $00   ; 
- D 0 - I - 0x0087C5 02:A7B5: A3        .byte $A3   ; 
- D 0 - I - 0x0087C6 02:A7B6: 10        .byte $10   ; 
- D 0 - I - 0x0087C7 02:A7B7: 35        .byte $35   ; <5>
- D 0 - I - 0x0087C8 02:A7B8: 0C        .byte $0C   ; 
- D 0 - I - 0x0087C9 02:A7B9: 34        .byte $34   ; <4>
- D 0 - I - 0x0087CA 02:A7BA: 02        .byte $02   ; 
- D 0 - I - 0x0087CB 02:A7BB: 35        .byte $35   ; <5>
- D 0 - I - 0x0087CC 02:A7BC: 02        .byte $02   ; 
- D 0 - I - 0x0087CD 02:A7BD: 32        .byte $32   ; <2>
- D 0 - I - 0x0087CE 02:A7BE: 0C        .byte $0C   ; 
- D 0 - I - 0x0087CF 02:A7BF: 30        .byte $30   ; <0>
- D 0 - I - 0x0087D0 02:A7C0: 02        .byte $02   ; 
- D 0 - I - 0x0087D1 02:A7C1: 32        .byte $32   ; <2>
- D 0 - I - 0x0087D2 02:A7C2: 02        .byte $02   ; 
- D 0 - I - 0x0087D3 02:A7C3: 34        .byte $34   ; <4>
- D 0 - I - 0x0087D4 02:A7C4: 0C        .byte $0C   ; 
- D 0 - I - 0x0087D5 02:A7C5: 32        .byte $32   ; <2>
- D 0 - I - 0x0087D6 02:A7C6: 02        .byte $02   ; 
- D 0 - I - 0x0087D7 02:A7C7: 34        .byte $34   ; <4>
- D 0 - I - 0x0087D8 02:A7C8: 02        .byte $02   ; 
- D 0 - I - 0x0087D9 02:A7C9: 30        .byte $30   ; <0>
- D 0 - I - 0x0087DA 02:A7CA: 0C        .byte $0C   ; 
- D 0 - I - 0x0087DB 02:A7CB: 32        .byte $32   ; <2>
- D 0 - I - 0x0087DC 02:A7CC: 02        .byte $02   ; 
- D 0 - I - 0x0087DD 02:A7CD: 34        .byte $34   ; <4>
- D 0 - I - 0x0087DE 02:A7CE: 02        .byte $02   ; 
- D 0 - I - 0x0087DF 02:A7CF: B0        .byte $B0   ; 
- D 0 - I - 0x0087E0 02:A7D0: 02        .byte $02   ; 
- - - - - - 0x0087E1 02:A7D1: FF        .byte $FF   ; 

loc_track25:
- D 0 - I - 0x0087E2 02:A7D2: 06        .byte $06   ; 
- D 0 - I - 0x0087E3 02:A7D3: 65        .byte $65   ; <e>
- D 0 - I - 0x0087E4 02:A7D4: 00        .byte $00   ; 
- D 0 - I - 0x0087E5 02:A7D5: 00        .byte $00   ; 
- D 0 - I - 0x0087E6 02:A7D6: 22        .byte $22   ; 
- D 0 - I - 0x0087E7 02:A7D7: 06        .byte $06   ; 
- D 0 - I - 0x0087E8 02:A7D8: 29        .byte $29   ; 
- D 0 - I - 0x0087E9 02:A7D9: 06        .byte $06   ; 
- D 0 - I - 0x0087EA 02:A7DA: 32        .byte $32   ; <2>
- D 0 - I - 0x0087EB 02:A7DB: 04        .byte $04   ; 
- D 0 - I - 0x0087EC 02:A7DC: 17        .byte $17   ; 
- D 0 - I - 0x0087ED 02:A7DD: 06        .byte $06   ; 
- D 0 - I - 0x0087EE 02:A7DE: 22        .byte $22   ; 
- D 0 - I - 0x0087EF 02:A7DF: 06        .byte $06   ; 
- D 0 - I - 0x0087F0 02:A7E0: 27        .byte $27   ; 
- D 0 - I - 0x0087F1 02:A7E1: 04        .byte $04   ; 
- D 0 - I - 0x0087F2 02:A7E2: 20        .byte $20   ; 
- D 0 - I - 0x0087F3 02:A7E3: 06        .byte $06   ; 
- D 0 - I - 0x0087F4 02:A7E4: 27        .byte $27   ; 
- D 0 - I - 0x0087F5 02:A7E5: 06        .byte $06   ; 
- D 0 - I - 0x0087F6 02:A7E6: 30        .byte $30   ; <0>
- D 0 - I - 0x0087F7 02:A7E7: 04        .byte $04   ; 
- D 0 - I - 0x0087F8 02:A7E8: 19        .byte $19   ; 
- D 0 - I - 0x0087F9 02:A7E9: 06        .byte $06   ; 
- D 0 - I - 0x0087FA 02:A7EA: 24        .byte $24   ; 
- D 0 - I - 0x0087FB 02:A7EB: 06        .byte $06   ; 
- D 0 - I - 0x0087FC 02:A7EC: 29        .byte $29   ; 
- D 0 - I - 0x0087FD 02:A7ED: 04        .byte $04   ; 
- D 0 - I - 0x0087FE 02:A7EE: B0        .byte $B0   ; 
- D 0 - I - 0x0087FF 02:A7EF: 02        .byte $02   ; 
- - - - - - 0x008800 02:A7F0: FF        .byte $FF   ; 

loc_track39:
- D 0 - I - 0x008801 02:A7F1: 25        .byte $25   ; 
- D 0 - I - 0x008802 02:A7F2: 10        .byte $10   ; 
- D 0 - I - 0x008803 02:A7F3: 00        .byte $00   ; 
- D 0 - I - 0x008804 02:A7F4: 00        .byte $00   ; 
- D 0 - I - 0x008805 02:A7F5: FD        .byte $FD   ; 
- - - - - - 0x008806 02:A7F6: FE        .byte $FE   ; 
- D 0 - I - 0x008807 02:A7F7: 27        .byte $27   ; 
- D 0 - I - 0x008808 02:A7F8: 02        .byte $02   ; 
- D 0 - I - 0x008809 02:A7F9: BF        .byte $BF   ; 
- D 0 - I - 0x00880A 02:A7FA: 00        .byte $00   ; 
- D 0 - I - 0x00880B 02:A7FB: FD        .byte $FD   ; 
- - - - - - 0x00880C 02:A7FC: FE        .byte $FE   ; 
- D 0 - I - 0x00880D 02:A7FD: 25        .byte $25   ; 
- D 0 - I - 0x00880E 02:A7FE: 02        .byte $02   ; 
- D 0 - I - 0x00880F 02:A7FF: BF        .byte $BF   ; 
- D 0 - I - 0x008810 02:A800: 00        .byte $00   ; 
- D 0 - I - 0x008811 02:A801: FD        .byte $FD   ; 
- - - - - - 0x008812 02:A802: FE        .byte $FE   ; 
- D 0 - I - 0x008813 02:A803: 27        .byte $27   ; 
- D 0 - I - 0x008814 02:A804: 02        .byte $02   ; 
- D 0 - I - 0x008815 02:A805: BF        .byte $BF   ; 
- D 0 - I - 0x008816 02:A806: 00        .byte $00   ; 
- D 0 - I - 0x008817 02:A807: FD        .byte $FD   ; 
- - - - - - 0x008818 02:A808: FE        .byte $FE   ; 
- D 0 - I - 0x008819 02:A809: 25        .byte $25   ; 
- D 0 - I - 0x00881A 02:A80A: 02        .byte $02   ; 
- D 0 - I - 0x00881B 02:A80B: BF        .byte $BF   ; 
- D 0 - I - 0x00881C 02:A80C: 00        .byte $00   ; 
- D 0 - I - 0x00881D 02:A80D: FD        .byte $FD   ; 
- - - - - - 0x00881E 02:A80E: FE        .byte $FE   ; 
- D 0 - I - 0x00881F 02:A80F: 23        .byte $23   ; 
- D 0 - I - 0x008820 02:A810: 02        .byte $02   ; 
- D 0 - I - 0x008821 02:A811: 33        .byte $33   ; <3>
- D 0 - I - 0x008822 02:A812: 02        .byte $02   ; 
- D 0 - I - 0x008823 02:A813: B3        .byte $B3   ; 
- D 0 - I - 0x008824 02:A814: 00        .byte $00   ; 
- D 0 - I - 0x008825 02:A815: FD        .byte $FD   ; 
- - - - - - 0x008826 02:A816: FE        .byte $FE   ; 
- D 0 - I - 0x008827 02:A817: 25        .byte $25   ; 
- D 0 - I - 0x008828 02:A818: 02        .byte $02   ; 
- D 0 - I - 0x008829 02:A819: 35        .byte $35   ; <5>
- D 0 - I - 0x00882A 02:A81A: 02        .byte $02   ; 
- D 0 - I - 0x00882B 02:A81B: B3        .byte $B3   ; 
- D 0 - I - 0x00882C 02:A81C: 00        .byte $00   ; 
- D 0 - I - 0x00882D 02:A81D: FD        .byte $FD   ; 
- - - - - - 0x00882E 02:A81E: FE        .byte $FE   ; 
- D 0 - I - 0x00882F 02:A81F: 27        .byte $27   ; 
- D 0 - I - 0x008830 02:A820: 02        .byte $02   ; 
- D 0 - I - 0x008831 02:A821: 37        .byte $37   ; <7>
- D 0 - I - 0x008832 02:A822: 02        .byte $02   ; 
- D 0 - I - 0x008833 02:A823: B7        .byte $B7   ; 
- D 0 - I - 0x008834 02:A824: 00        .byte $00   ; 
- D 0 - I - 0x008835 02:A825: B1        .byte $B1   ; 
- D 0 - I - 0x008836 02:A826: 0E        .byte $0E   ; 
- D 0 - I - 0x008837 02:A827: B0        .byte $B0   ; 
- D 0 - I - 0x008838 02:A828: 02        .byte $02   ; 

loc_track3A:
- D 0 - I - 0x008839 02:A829: 05        .byte $05   ; 
- D 0 - I - 0x00883A 02:A82A: 00        .byte $00   ; 
- D 0 - I - 0x00883B 02:A82B: 02        .byte $02   ; 
- D 0 - I - 0x00883C 02:A82C: 00        .byte $00   ; 
- D 0 - I - 0x00883D 02:A82D: 1F        .byte $1F   ; 
- D 0 - I - 0x00883E 02:A82E: 02        .byte $02   ; 
- D 0 - I - 0x00883F 02:A82F: 29        .byte $29   ; 
- D 0 - I - 0x008840 02:A830: 02        .byte $02   ; 
- D 0 - I - 0x008841 02:A831: 39        .byte $39   ; <9>
- D 0 - I - 0x008842 02:A832: 01        .byte $01   ; 
- D 0 - I - 0x008843 02:A833: 39        .byte $39   ; <9>
- D 0 - I - 0x008844 02:A834: 01        .byte $01   ; 
- D 0 - I - 0x008845 02:A835: B7        .byte $B7   ; 
- D 0 - I - 0x008846 02:A836: 03        .byte $03   ; 
- D 0 - I - 0x008847 02:A837: 27        .byte $27   ; 
- D 0 - I - 0x008848 02:A838: 02        .byte $02   ; 
- D 0 - I - 0x008849 02:A839: 37        .byte $37   ; <7>
- D 0 - I - 0x00884A 02:A83A: 01        .byte $01   ; 
- D 0 - I - 0x00884B 02:A83B: 37        .byte $37   ; <7>
- D 0 - I - 0x00884C 02:A83C: 01        .byte $01   ; 
- D 0 - I - 0x00884D 02:A83D: B6        .byte $B6   ; 
- D 0 - I - 0x00884E 02:A83E: 07        .byte $07   ; 
- D 0 - I - 0x00884F 02:A83F: A0        .byte $A0   ; 
- D 0 - I - 0x008850 02:A840: 0F        .byte $0F   ; 
- D 0 - I - 0x008851 02:A841: 27        .byte $27   ; 
- D 0 - I - 0x008852 02:A842: 01        .byte $01   ; 
- D 0 - I - 0x008853 02:A843: 29        .byte $29   ; 
- D 0 - I - 0x008854 02:A844: 01        .byte $01   ; 
- D 0 - I - 0x008855 02:A845: 27        .byte $27   ; 
- D 0 - I - 0x008856 02:A846: 01        .byte $01   ; 
- D 0 - I - 0x008857 02:A847: 29        .byte $29   ; 
- D 0 - I - 0x008858 02:A848: 01        .byte $01   ; 
- D 0 - I - 0x008859 02:A849: 32        .byte $32   ; <2>
- D 0 - I - 0x00885A 02:A84A: 0C        .byte $0C   ; 
- D 0 - I - 0x00885B 02:A84B: B1        .byte $B1   ; 
- D 0 - I - 0x00885C 02:A84C: 0C        .byte $0C   ; 
- D 0 - I - 0x00885D 02:A84D: 29        .byte $29   ; 
- D 0 - I - 0x00885E 02:A84E: 01        .byte $01   ; 
- D 0 - I - 0x00885F 02:A84F: 2B        .byte $2B   ; 
- D 0 - I - 0x008860 02:A850: 01        .byte $01   ; 
- D 0 - I - 0x008861 02:A851: 29        .byte $29   ; 
- D 0 - I - 0x008862 02:A852: 01        .byte $01   ; 
- D 0 - I - 0x008863 02:A853: 2B        .byte $2B   ; 
- D 0 - I - 0x008864 02:A854: 01        .byte $01   ; 
- D 0 - I - 0x008865 02:A855: 32        .byte $32   ; <2>
- D 0 - I - 0x008866 02:A856: 10        .byte $10   ; 
- D 0 - I - 0x008867 02:A857: 19        .byte $19   ; 
- D 0 - I - 0x008868 02:A858: 01        .byte $01   ; 
- D 0 - I - 0x008869 02:A859: 20        .byte $20   ; 
- D 0 - I - 0x00886A 02:A85A: 01        .byte $01   ; 
- D 0 - I - 0x00886B 02:A85B: 22        .byte $22   ; 
- D 0 - I - 0x00886C 02:A85C: 01        .byte $01   ; 
- D 0 - I - 0x00886D 02:A85D: 24        .byte $24   ; 
- D 0 - I - 0x00886E 02:A85E: 01        .byte $01   ; 
- D 0 - I - 0x00886F 02:A85F: 20        .byte $20   ; 
- D 0 - I - 0x008870 02:A860: 01        .byte $01   ; 
- D 0 - I - 0x008871 02:A861: 22        .byte $22   ; 
- D 0 - I - 0x008872 02:A862: 01        .byte $01   ; 
- D 0 - I - 0x008873 02:A863: 24        .byte $24   ; 
- D 0 - I - 0x008874 02:A864: 01        .byte $01   ; 
- D 0 - I - 0x008875 02:A865: 27        .byte $27   ; 
- D 0 - I - 0x008876 02:A866: 01        .byte $01   ; 
- D 0 - I - 0x008877 02:A867: 24        .byte $24   ; 
- D 0 - I - 0x008878 02:A868: 01        .byte $01   ; 
- D 0 - I - 0x008879 02:A869: 27        .byte $27   ; 
- D 0 - I - 0x00887A 02:A86A: 01        .byte $01   ; 
- D 0 - I - 0x00887B 02:A86B: 29        .byte $29   ; 
- D 0 - I - 0x00887C 02:A86C: 01        .byte $01   ; 
- D 0 - I - 0x00887D 02:A86D: 30        .byte $30   ; <0>
- D 0 - I - 0x00887E 02:A86E: 01        .byte $01   ; 
- D 0 - I - 0x00887F 02:A86F: 27        .byte $27   ; 
- D 0 - I - 0x008880 02:A870: 01        .byte $01   ; 
- D 0 - I - 0x008881 02:A871: 29        .byte $29   ; 
- D 0 - I - 0x008882 02:A872: 01        .byte $01   ; 
- D 0 - I - 0x008883 02:A873: 30        .byte $30   ; <0>
- D 0 - I - 0x008884 02:A874: 01        .byte $01   ; 
- D 0 - I - 0x008885 02:A875: 32        .byte $32   ; <2>
- D 0 - I - 0x008886 02:A876: 01        .byte $01   ; 
- D 0 - I - 0x008887 02:A877: A0        .byte $A0   ; 
- D 0 - I - 0x008888 02:A878: 02        .byte $02   ; 
- D 0 - I - 0x008889 02:A879: 34        .byte $34   ; <4>
- D 0 - I - 0x00888A 02:A87A: 02        .byte $02   ; 
- D 0 - I - 0x00888B 02:A87B: 44        .byte $44   ; <D>
- D 0 - I - 0x00888C 02:A87C: 01        .byte $01   ; 
- D 0 - I - 0x00888D 02:A87D: 44        .byte $44   ; <D>
- D 0 - I - 0x00888E 02:A87E: 01        .byte $01   ; 
- D 0 - I - 0x00888F 02:A87F: B7        .byte $B7   ; 
- D 0 - I - 0x008890 02:A880: 27        .byte $27   ; 
- D 0 - I - 0x008891 02:A881: A0        .byte $A0   ; 
- D 0 - I - 0x008892 02:A882: 0F        .byte $0F   ; 
- D 0 - I - 0x008893 02:A883: 37        .byte $37   ; <7>
- D 0 - I - 0x008894 02:A884: 02        .byte $02   ; 
- D 0 - I - 0x008895 02:A885: 34        .byte $34   ; <4>
- D 0 - I - 0x008896 02:A886: 02        .byte $02   ; 
- D 0 - I - 0x008897 02:A887: 32        .byte $32   ; <2>
- D 0 - I - 0x008898 02:A888: 02        .byte $02   ; 
- D 0 - I - 0x008899 02:A889: 30        .byte $30   ; <0>
- D 0 - I - 0x00889A 02:A88A: 06        .byte $06   ; 
- D 0 - I - 0x00889B 02:A88B: 29        .byte $29   ; 
- D 0 - I - 0x00889C 02:A88C: 04        .byte $04   ; 
- D 0 - I - 0x00889D 02:A88D: 27        .byte $27   ; 
- D 0 - I - 0x00889E 02:A88E: 0E        .byte $0E   ; 
- D 0 - I - 0x00889F 02:A88F: A0        .byte $A0   ; 
- D 0 - I - 0x0088A0 02:A890: 02        .byte $02   ; 
- D 0 - I - 0x0088A1 02:A891: B0        .byte $B0   ; 
- D 0 - I - 0x0088A2 02:A892: 02        .byte $02   ; 
- - - - - - 0x0088A3 02:A893: FF        .byte $FF   ; 

loc_track9:
- D 0 - I - 0x0088A4 02:A894: 24        .byte $24   ; 
- D 0 - I - 0x0088A5 02:A895: 15        .byte $15   ; 
- D 0 - I - 0x0088A6 02:A896: 00        .byte $00   ; 
- D 0 - I - 0x0088A7 02:A897: 00        .byte $00   ; 
- D 0 - I - 0x0088A8 02:A898: FD        .byte $FD   ; 
- - - - - - 0x0088A9 02:A899: FE        .byte $FE   ; 
- D 0 - I - 0x0088AA 02:A89A: 30        .byte $30   ; <0>
- D 0 - I - 0x0088AB 02:A89B: 04        .byte $04   ; 
- D 0 - I - 0x0088AC 02:A89C: B7        .byte $B7   ; 
- D 0 - I - 0x0088AD 02:A89D: 00        .byte $00   ; 
- D 0 - I - 0x0088AE 02:A89E: FD        .byte $FD   ; 
- - - - - - 0x0088AF 02:A89F: FE        .byte $FE   ; 
- D 0 - I - 0x0088B0 02:A8A0: 2A        .byte $2A   ; 
- D 0 - I - 0x0088B1 02:A8A1: 04        .byte $04   ; 
- D 0 - I - 0x0088B2 02:A8A2: B7        .byte $B7   ; 
- D 0 - I - 0x0088B3 02:A8A3: 00        .byte $00   ; 
- D 0 - I - 0x0088B4 02:A8A4: FD        .byte $FD   ; 
- - - - - - 0x0088B5 02:A8A5: FE        .byte $FE   ; 
- D 0 - I - 0x0088B6 02:A8A6: 28        .byte $28   ; 
- D 0 - I - 0x0088B7 02:A8A7: 04        .byte $04   ; 
- D 0 - I - 0x0088B8 02:A8A8: B7        .byte $B7   ; 
- D 0 - I - 0x0088B9 02:A8A9: 00        .byte $00   ; 
- D 0 - I - 0x0088BA 02:A8AA: FD        .byte $FD   ; 
- - - - - - 0x0088BB 02:A8AB: FE        .byte $FE   ; 
- D 0 - I - 0x0088BC 02:A8AC: 25        .byte $25   ; 
- D 0 - I - 0x0088BD 02:A8AD: 04        .byte $04   ; 
- D 0 - I - 0x0088BE 02:A8AE: B3        .byte $B3   ; 
- D 0 - I - 0x0088BF 02:A8AF: 00        .byte $00   ; 
- D 0 - I - 0x0088C0 02:A8B0: FD        .byte $FD   ; 
- - - - - - 0x0088C1 02:A8B1: FE        .byte $FE   ; 
- D 0 - I - 0x0088C2 02:A8B2: 27        .byte $27   ; 
- D 0 - I - 0x0088C3 02:A8B3: 04        .byte $04   ; 
- D 0 - I - 0x0088C4 02:A8B4: B3        .byte $B3   ; 
- D 0 - I - 0x0088C5 02:A8B5: 00        .byte $00   ; 
- D 0 - I - 0x0088C6 02:A8B6: B1        .byte $B1   ; 
- D 0 - I - 0x0088C7 02:A8B7: 02        .byte $02   ; 
- D 0 - I - 0x0088C8 02:A8B8: FD        .byte $FD   ; 
- - - - - - 0x0088C9 02:A8B9: FE        .byte $FE   ; 
- D 0 - I - 0x0088CA 02:A8BA: 20        .byte $20   ; 
- D 0 - I - 0x0088CB 02:A8BB: 04        .byte $04   ; 
- D 0 - I - 0x0088CC 02:A8BC: 30        .byte $30   ; <0>
- D 0 - I - 0x0088CD 02:A8BD: 02        .byte $02   ; 
- D 0 - I - 0x0088CE 02:A8BE: 1A        .byte $1A   ; 
- D 0 - I - 0x0088CF 02:A8BF: 06        .byte $06   ; 
- D 0 - I - 0x0088D0 02:A8C0: 2A        .byte $2A   ; 
- D 0 - I - 0x0088D1 02:A8C1: 04        .byte $04   ; 
- D 0 - I - 0x0088D2 02:A8C2: 18        .byte $18   ; 
- D 0 - I - 0x0088D3 02:A8C3: 04        .byte $04   ; 
- D 0 - I - 0x0088D4 02:A8C4: 28        .byte $28   ; 
- D 0 - I - 0x0088D5 02:A8C5: 02        .byte $02   ; 
- D 0 - I - 0x0088D6 02:A8C6: 17        .byte $17   ; 
- D 0 - I - 0x0088D7 02:A8C7: 06        .byte $06   ; 
- D 0 - I - 0x0088D8 02:A8C8: 27        .byte $27   ; 
- D 0 - I - 0x0088D9 02:A8C9: 04        .byte $04   ; 
- D 0 - I - 0x0088DA 02:A8CA: B1        .byte $B1   ; 
- D 0 - I - 0x0088DB 02:A8CB: 00        .byte $00   ; 
- D 0 - I - 0x0088DC 02:A8CC: 20        .byte $20   ; 
- D 0 - I - 0x0088DD 02:A8CD: 04        .byte $04   ; 
- D 0 - I - 0x0088DE 02:A8CE: 30        .byte $30   ; <0>
- D 0 - I - 0x0088DF 02:A8CF: 02        .byte $02   ; 
- D 0 - I - 0x0088E0 02:A8D0: 1A        .byte $1A   ; 
- D 0 - I - 0x0088E1 02:A8D1: 06        .byte $06   ; 
- D 0 - I - 0x0088E2 02:A8D2: 2A        .byte $2A   ; 
- D 0 - I - 0x0088E3 02:A8D3: 04        .byte $04   ; 
- D 0 - I - 0x0088E4 02:A8D4: 25        .byte $25   ; 
- D 0 - I - 0x0088E5 02:A8D5: 04        .byte $04   ; 
- D 0 - I - 0x0088E6 02:A8D6: 25        .byte $25   ; 
- D 0 - I - 0x0088E7 02:A8D7: 04        .byte $04   ; 
- D 0 - I - 0x0088E8 02:A8D8: 25        .byte $25   ; 
- D 0 - I - 0x0088E9 02:A8D9: 04        .byte $04   ; 
- D 0 - I - 0x0088EA 02:A8DA: 25        .byte $25   ; 
- D 0 - I - 0x0088EB 02:A8DB: 04        .byte $04   ; 
- D 0 - I - 0x0088EC 02:A8DC: 27        .byte $27   ; 
- D 0 - I - 0x0088ED 02:A8DD: 04        .byte $04   ; 
- D 0 - I - 0x0088EE 02:A8DE: 27        .byte $27   ; 
- D 0 - I - 0x0088EF 02:A8DF: 04        .byte $04   ; 
- D 0 - I - 0x0088F0 02:A8E0: 27        .byte $27   ; 
- D 0 - I - 0x0088F1 02:A8E1: 04        .byte $04   ; 
- D 0 - I - 0x0088F2 02:A8E2: 27        .byte $27   ; 
- D 0 - I - 0x0088F3 02:A8E3: 04        .byte $04   ; 
- D 0 - I - 0x0088F4 02:A8E4: 27        .byte $27   ; 
- D 0 - I - 0x0088F5 02:A8E5: 02        .byte $02   ; 
- D 0 - I - 0x0088F6 02:A8E6: 37        .byte $37   ; <7>
- D 0 - I - 0x0088F7 02:A8E7: 02        .byte $02   ; 
- D 0 - I - 0x0088F8 02:A8E8: 28        .byte $28   ; 
- D 0 - I - 0x0088F9 02:A8E9: 02        .byte $02   ; 
- D 0 - I - 0x0088FA 02:A8EA: 38        .byte $38   ; <8>
- D 0 - I - 0x0088FB 02:A8EB: 02        .byte $02   ; 
- D 0 - I - 0x0088FC 02:A8EC: 2A        .byte $2A   ; 
- D 0 - I - 0x0088FD 02:A8ED: 02        .byte $02   ; 
- D 0 - I - 0x0088FE 02:A8EE: 3A        .byte $3A   ; 
- D 0 - I - 0x0088FF 02:A8EF: 02        .byte $02   ; 
- D 0 - I - 0x008900 02:A8F0: 2B        .byte $2B   ; 
- D 0 - I - 0x008901 02:A8F1: 02        .byte $02   ; 
- D 0 - I - 0x008902 02:A8F2: 3B        .byte $3B   ; 
- D 0 - I - 0x008903 02:A8F3: 02        .byte $02   ; 
- D 0 - I - 0x008904 02:A8F4: B0        .byte $B0   ; 
- D 0 - I - 0x008905 02:A8F5: 02        .byte $02   ; 
- - - - - - 0x008906 02:A8F6: FF        .byte $FF   ; 

loc_track26:
- - - - - - 0x008907 02:A8F7: FF        .byte $FF   ; 

loc_track27:
- - - - - - 0x008908 02:A8F8: FF        .byte $FF   ; 

loc_track28:
- D 0 - I - 0x008909 02:A8F9: 30        .byte $30   ; <0>
- D 0 - I - 0x00890A 02:A8FA: 00        .byte $00   ; 
- D 0 - I - 0x00890B 02:A8FB: 02        .byte $02   ; 
- D 0 - I - 0x00890C 02:A8FC: 00        .byte $00   ; 
- D 0 - I - 0x00890D 02:A8FD: 08        .byte $08   ; 
- D 0 - I - 0x00890E 02:A8FE: 10        .byte $10   ; 
- D 0 - I - 0x00890F 02:A8FF: FF        .byte $FF   ; 

loc_track29:
- D 0 - I - 0x008910 02:A900: 01        .byte $01   ; 
- D 0 - I - 0x008911 02:A901: 02        .byte $02   ; 
- D 0 - I - 0x008912 02:A902: 17        .byte $17   ; 
- D 0 - I - 0x008913 02:A903: 86        .byte $86   ; 
- D 0 - I - 0x008914 02:A904: 30        .byte $30   ; <0>
- D 0 - I - 0x008915 02:A905: 02        .byte $02   ; 
- D 0 - I - 0x008916 02:A906: 28        .byte $28   ; 
- D 0 - I - 0x008917 02:A907: 01        .byte $01   ; 
- D 0 - I - 0x008918 02:A908: FF        .byte $FF   ; 

loc_track2A:
- D 0 - I - 0x008919 02:A909: 03        .byte $03   ; 
- D 0 - I - 0x00891A 02:A90A: 01        .byte $01   ; 
- D 0 - I - 0x00891B 02:A90B: 1F        .byte $1F   ; 
- D 0 - I - 0x00891C 02:A90C: 9B        .byte $9B   ; 
- D 0 - I - 0x00891D 02:A90D: EF        .byte $EF   ; 
- D 0 - I - 0x00891E 02:A90E: 01        .byte $01   ; 
- D 0 - I - 0x00891F 02:A90F: FD        .byte $FD   ; 
- - - - - - 0x008920 02:A910: FE        .byte $FE   ; 
- D 0 - I - 0x008921 02:A911: 27        .byte $27   ; 
- D 0 - I - 0x008922 02:A912: 01        .byte $01   ; 
- D 0 - I - 0x008923 02:A913: 20        .byte $20   ; 
- D 0 - I - 0x008924 02:A914: 02        .byte $02   ; 
- D 0 - I - 0x008925 02:A915: 17        .byte $17   ; 
- D 0 - I - 0x008926 02:A916: 06        .byte $06   ; 
- D 0 - I - 0x008927 02:A917: B1        .byte $B1   ; 
- D 0 - I - 0x008928 02:A918: 00        .byte $00   ; 
- D 0 - I - 0x008929 02:A919: FF        .byte $FF   ; 

loc_track2B:
- - - - - - 0x00892A 02:A91A: FF        .byte $FF   ; 

loc_track2C:
- D 0 - I - 0x00892B 02:A91B: 32        .byte $32   ; <2>
- D 0 - I - 0x00892C 02:A91C: 00        .byte $00   ; 
- D 0 - I - 0x00892D 02:A91D: 03        .byte $03   ; 
- D 0 - I - 0x00892E 02:A91E: 00        .byte $00   ; 
- D 0 - I - 0x00892F 02:A91F: 02        .byte $02   ; 
- D 0 - I - 0x008930 02:A920: 01        .byte $01   ; 
- D 0 - I - 0x008931 02:A921: 04        .byte $04   ; 
- D 0 - I - 0x008932 02:A922: 01        .byte $01   ; 
- D 0 - I - 0x008933 02:A923: 07        .byte $07   ; 
- D 0 - I - 0x008934 02:A924: 05        .byte $05   ; 
- D 0 - I - 0x008935 02:A925: FF        .byte $FF   ; 

loc_track2D:
- D 0 - I - 0x008936 02:A926: 32        .byte $32   ; <2>
- D 0 - I - 0x008937 02:A927: 00        .byte $00   ; 
- D 0 - I - 0x008938 02:A928: 03        .byte $03   ; 
- D 0 - I - 0x008939 02:A929: 00        .byte $00   ; 
- D 0 - I - 0x00893A 02:A92A: 04        .byte $04   ; 
- D 0 - I - 0x00893B 02:A92B: 01        .byte $01   ; 
- D 0 - I - 0x00893C 02:A92C: 08        .byte $08   ; 
- D 0 - I - 0x00893D 02:A92D: 02        .byte $02   ; 
- D 0 - I - 0x00893E 02:A92E: FF        .byte $FF   ; 

loc_track2E:
- - - - - - 0x00893F 02:A92F: FF        .byte $FF   ; 

loc_track2F:
- - - - - - 0x008940 02:A930: FF        .byte $FF   ; 

loc_track30:
- D 0 - I - 0x008941 02:A931: 01        .byte $01   ; 
- D 0 - I - 0x008942 02:A932: 02        .byte $02   ; 
- D 0 - I - 0x008943 02:A933: 1F        .byte $1F   ; 
- D 0 - I - 0x008944 02:A934: 83        .byte $83   ; 
- D 0 - I - 0x008945 02:A935: EF        .byte $EF   ; 
- D 0 - I - 0x008946 02:A936: 02        .byte $02   ; 
- D 0 - I - 0x008947 02:A937: A3        .byte $A3   ; 
- D 0 - I - 0x008948 02:A938: 20        .byte $20   ; 
- D 0 - I - 0x008949 02:A939: FD        .byte $FD   ; 
- - - - - - 0x00894A 02:A93A: FE        .byte $FE   ; 
- D 0 - I - 0x00894B 02:A93B: 20        .byte $20   ; 
- D 0 - I - 0x00894C 02:A93C: 02        .byte $02   ; 
- D 0 - I - 0x00894D 02:A93D: BF        .byte $BF   ; 
- D 0 - I - 0x00894E 02:A93E: 00        .byte $00   ; 
- D 0 - I - 0x00894F 02:A93F: FF        .byte $FF   ; 

loc_track31:
- D 0 - I - 0x008950 02:A940: 32        .byte $32   ; <2>
- D 0 - I - 0x008951 02:A941: 00        .byte $00   ; 
- D 0 - I - 0x008952 02:A942: 03        .byte $03   ; 
- D 0 - I - 0x008953 02:A943: 00        .byte $00   ; 
- D 0 - I - 0x008954 02:A944: 04        .byte $04   ; 
- D 0 - I - 0x008955 02:A945: 01        .byte $01   ; 
- D 0 - I - 0x008956 02:A946: FF        .byte $FF   ; 

loc_track32:
- D 0 - I - 0x008957 02:A947: 30        .byte $30   ; <0>
- D 0 - I - 0x008958 02:A948: 00        .byte $00   ; 
- D 0 - I - 0x008959 02:A949: 01        .byte $01   ; 
- D 0 - I - 0x00895A 02:A94A: 00        .byte $00   ; 
- D 0 - I - 0x00895B 02:A94B: FD        .byte $FD   ; 
- - - - - - 0x00895C 02:A94C: FE        .byte $FE   ; 
- D 0 - I - 0x00895D 02:A94D: 04        .byte $04   ; 
- D 0 - I - 0x00895E 02:A94E: 02        .byte $02   ; 
- D 0 - I - 0x00895F 02:A94F: 03        .byte $03   ; 
- D 0 - I - 0x008960 02:A950: 02        .byte $02   ; 
- D 0 - I - 0x008961 02:A951: B2        .byte $B2   ; 
- D 0 - I - 0x008962 02:A952: 00        .byte $00   ; 
- D 0 - I - 0x008963 02:A953: 09        .byte $09   ; 
- D 0 - I - 0x008964 02:A954: 05        .byte $05   ; 
- D 0 - I - 0x008965 02:A955: FF        .byte $FF   ; 
- - - - - - 0x008966 02:A956: FF        .byte $FF   ; 

loc_track33:
- - - - - - 0x008967 02:A957: FF        .byte $FF   ; 

loc_track34:
- D 0 - I - 0x008968 02:A958: 01        .byte $01   ; 
- D 0 - I - 0x008969 02:A959: 01        .byte $01   ; 
- D 0 - I - 0x00896A 02:A95A: 01        .byte $01   ; 
- D 0 - I - 0x00896B 02:A95B: 8C        .byte $8C   ; 
- D 0 - I - 0x00896C 02:A95C: 16        .byte $16   ; 
- D 0 - I - 0x00896D 02:A95D: 04        .byte $04   ; 
- D 0 - I - 0x00896E 02:A95E: FF        .byte $FF   ; 

loc_track35:
- D 0 - I - 0x00896F 02:A95F: 02        .byte $02   ; 
- D 0 - I - 0x008970 02:A960: 02        .byte $02   ; 
- D 0 - I - 0x008971 02:A961: 17        .byte $17   ; 
- D 0 - I - 0x008972 02:A962: 00        .byte $00   ; 
- D 0 - I - 0x008973 02:A963: 40        .byte $40   ; 
- D 0 - I - 0x008974 02:A964: 01        .byte $01   ; 
- D 0 - I - 0x008975 02:A965: 50        .byte $50   ; <P>
- D 0 - I - 0x008976 02:A966: 01        .byte $01   ; 
- D 0 - I - 0x008977 02:A967: 60        .byte $60   ; 
- D 0 - I - 0x008978 02:A968: 01        .byte $01   ; 
- D 0 - I - 0x008979 02:A969: 65        .byte $65   ; <e>
- D 0 - I - 0x00897A 02:A96A: 01        .byte $01   ; 
- D 0 - I - 0x00897B 02:A96B: FF        .byte $FF   ; 

loc_track36:
- D 0 - I - 0x00897C 02:A96C: 30        .byte $30   ; <0>
- D 0 - I - 0x00897D 02:A96D: 00        .byte $00   ; 
- D 0 - I - 0x00897E 02:A96E: 05        .byte $05   ; 
- D 0 - I - 0x00897F 02:A96F: 00        .byte $00   ; 
- D 0 - I - 0x008980 02:A970: 09        .byte $09   ; 
- D 0 - I - 0x008981 02:A971: 01        .byte $01   ; 
- D 0 - I - 0x008982 02:A972: 05        .byte $05   ; 
- D 0 - I - 0x008983 02:A973: 05        .byte $05   ; 
- D 0 - I - 0x008984 02:A974: 09        .byte $09   ; 
- D 0 - I - 0x008985 02:A975: 30        .byte $30   ; <0>
- D 0 - I - 0x008986 02:A976: FF        .byte $FF   ; 

loc_track37:
- D 0 - I - 0x008987 02:A977: 00        .byte $00   ; 
- D 0 - I - 0x008988 02:A978: 01        .byte $01   ; 
- D 0 - I - 0x008989 02:A979: 00        .byte $00   ; 
- D 0 - I - 0x00898A 02:A97A: 81        .byte $81   ; 
- D 0 - I - 0x00898B 02:A97B: 20        .byte $20   ; 
- D 0 - I - 0x00898C 02:A97C: 03        .byte $03   ; 
- D 0 - I - 0x00898D 02:A97D: 27        .byte $27   ; 
- D 0 - I - 0x00898E 02:A97E: 01        .byte $01   ; 
- D 0 - I - 0x00898F 02:A97F: 25        .byte $25   ; 
- D 0 - I - 0x008990 02:A980: 02        .byte $02   ; 
- D 0 - I - 0x008991 02:A981: FF        .byte $FF   ; 

loc_track38:
- - - - - - 0x008992 02:A982: FF        .byte $FF   ; 

loc_track3C:
- - - - - - 0x008993 02:A983: FF        .byte $FF   ; 

loc_track3D:
- D 0 - I - 0x008994 02:A984: 30        .byte $30   ; <0>
- D 0 - I - 0x008995 02:A985: 00        .byte $00   ; 
- D 0 - I - 0x008996 02:A986: 02        .byte $02   ; 
- D 0 - I - 0x008997 02:A987: 00        .byte $00   ; 
- D 0 - I - 0x008998 02:A988: 06        .byte $06   ; 
- D 0 - I - 0x008999 02:A989: 01        .byte $01   ; 
- D 0 - I - 0x00899A 02:A98A: 0E        .byte $0E   ; 
- D 0 - I - 0x00899B 02:A98B: 03        .byte $03   ; 
- D 0 - I - 0x00899C 02:A98C: FF        .byte $FF   ; 

loc_track3E:
- - - - - - 0x00899D 02:A98D: FF        .byte $FF   ; 

loc_track3F:
- D 0 - I - 0x00899E 02:A98E: 00        .byte $00   ; 
- D 0 - I - 0x00899F 02:A98F: 02        .byte $02   ; 
- D 0 - I - 0x0089A0 02:A990: 18        .byte $18   ; 
- D 0 - I - 0x0089A1 02:A991: 84        .byte $84   ; 
- D 0 - I - 0x0089A2 02:A992: 46        .byte $46   ; <F>
- D 0 - I - 0x0089A3 02:A993: 07        .byte $07   ; 
- D 0 - I - 0x0089A4 02:A994: FF        .byte $FF   ; 

loc_track40:
- D 0 - I - 0x0089A5 02:A995: 00        .byte $00   ; 
- D 0 - I - 0x0089A6 02:A996: 01        .byte $01   ; 
- D 0 - I - 0x0089A7 02:A997: 19        .byte $19   ; 
- D 0 - I - 0x0089A8 02:A998: 8D        .byte $8D   ; 
- D 0 - I - 0x0089A9 02:A999: 21        .byte $21   ; 
- D 0 - I - 0x0089AA 02:A99A: 06        .byte $06   ; 
- D 0 - I - 0x0089AB 02:A99B: FF        .byte $FF   ; 

loc_track41:
- D 0 - I - 0x0089AC 02:A99C: 30        .byte $30   ; <0>
- D 0 - I - 0x0089AD 02:A99D: 00        .byte $00   ; 
- D 0 - I - 0x0089AE 02:A99E: 05        .byte $05   ; 
- D 0 - I - 0x0089AF 02:A99F: 00        .byte $00   ; 
- D 0 - I - 0x0089B0 02:A9A0: 0B        .byte $0B   ; 
- D 0 - I - 0x0089B1 02:A9A1: 01        .byte $01   ; 
- D 0 - I - 0x0089B2 02:A9A2: 0C        .byte $0C   ; 
- D 0 - I - 0x0089B3 02:A9A3: 01        .byte $01   ; 
- D 0 - I - 0x0089B4 02:A9A4: 0E        .byte $0E   ; 
- D 0 - I - 0x0089B5 02:A9A5: 02        .byte $02   ; 
- D 0 - I - 0x0089B6 02:A9A6: FF        .byte $FF   ; 

loc_track42:
- - - - - - 0x0089B7 02:A9A7: FF        .byte $FF   ; 

loc_track43:
- D 0 - I - 0x0089B8 02:A9A8: 04        .byte $04   ; 
- D 0 - I - 0x0089B9 02:A9A9: 02        .byte $02   ; 
- D 0 - I - 0x0089BA 02:A9AA: 0A        .byte $0A   ; 
- D 0 - I - 0x0089BB 02:A9AB: 00        .byte $00   ; 
- D 0 - I - 0x0089BC 02:A9AC: A3        .byte $A3   ; 
- D 0 - I - 0x0089BD 02:A9AD: 10        .byte $10   ; 
- D 0 - I - 0x0089BE 02:A9AE: 24        .byte $24   ; 
- D 0 - I - 0x0089BF 02:A9AF: 06        .byte $06   ; 
- D 0 - I - 0x0089C0 02:A9B0: 24        .byte $24   ; 
- D 0 - I - 0x0089C1 02:A9B1: 06        .byte $06   ; 
- D 0 - I - 0x0089C2 02:A9B2: 24        .byte $24   ; 
- D 0 - I - 0x0089C3 02:A9B3: 06        .byte $06   ; 
- D 0 - I - 0x0089C4 02:A9B4: 24        .byte $24   ; 
- D 0 - I - 0x0089C5 02:A9B5: 06        .byte $06   ; 
- D 0 - I - 0x0089C6 02:A9B6: A0        .byte $A0   ; 
- D 0 - I - 0x0089C7 02:A9B7: 02        .byte $02   ; 
- D 0 - I - 0x0089C8 02:A9B8: 24        .byte $24   ; 
- D 0 - I - 0x0089C9 02:A9B9: 04        .byte $04   ; 
- D 0 - I - 0x0089CA 02:A9BA: 24        .byte $24   ; 
- D 0 - I - 0x0089CB 02:A9BB: 04        .byte $04   ; 
- D 0 - I - 0x0089CC 02:A9BC: A0        .byte $A0   ; 
- D 0 - I - 0x0089CD 02:A9BD: 0A        .byte $0A   ; 
- D 0 - I - 0x0089CE 02:A9BE: 25        .byte $25   ; 
- D 0 - I - 0x0089CF 02:A9BF: 06        .byte $06   ; 
- D 0 - I - 0x0089D0 02:A9C0: 25        .byte $25   ; 
- D 0 - I - 0x0089D1 02:A9C1: 06        .byte $06   ; 
- D 0 - I - 0x0089D2 02:A9C2: 25        .byte $25   ; 
- D 0 - I - 0x0089D3 02:A9C3: 06        .byte $06   ; 
- D 0 - I - 0x0089D4 02:A9C4: 25        .byte $25   ; 
- D 0 - I - 0x0089D5 02:A9C5: 06        .byte $06   ; 
- D 0 - I - 0x0089D6 02:A9C6: A0        .byte $A0   ; 
- D 0 - I - 0x0089D7 02:A9C7: 02        .byte $02   ; 
- D 0 - I - 0x0089D8 02:A9C8: 25        .byte $25   ; 
- D 0 - I - 0x0089D9 02:A9C9: 04        .byte $04   ; 
- D 0 - I - 0x0089DA 02:A9CA: 25        .byte $25   ; 
- D 0 - I - 0x0089DB 02:A9CB: 04        .byte $04   ; 
- D 0 - I - 0x0089DC 02:A9CC: A0        .byte $A0   ; 
- D 0 - I - 0x0089DD 02:A9CD: 0A        .byte $0A   ; 
- D 0 - I - 0x0089DE 02:A9CE: B1        .byte $B1   ; 
- D 0 - I - 0x0089DF 02:A9CF: 02        .byte $02   ; 
- D 0 - I - 0x0089E0 02:A9D0: 28        .byte $28   ; 
- D 0 - I - 0x0089E1 02:A9D1: 06        .byte $06   ; 
- D 0 - I - 0x0089E2 02:A9D2: 28        .byte $28   ; 
- D 0 - I - 0x0089E3 02:A9D3: 06        .byte $06   ; 
- D 0 - I - 0x0089E4 02:A9D4: 28        .byte $28   ; 
- D 0 - I - 0x0089E5 02:A9D5: 06        .byte $06   ; 
- D 0 - I - 0x0089E6 02:A9D6: 28        .byte $28   ; 
- D 0 - I - 0x0089E7 02:A9D7: 06        .byte $06   ; 
- D 0 - I - 0x0089E8 02:A9D8: A0        .byte $A0   ; 
- D 0 - I - 0x0089E9 02:A9D9: 02        .byte $02   ; 
- D 0 - I - 0x0089EA 02:A9DA: 28        .byte $28   ; 
- D 0 - I - 0x0089EB 02:A9DB: 04        .byte $04   ; 
- D 0 - I - 0x0089EC 02:A9DC: 28        .byte $28   ; 
- D 0 - I - 0x0089ED 02:A9DD: 04        .byte $04   ; 
- D 0 - I - 0x0089EE 02:A9DE: A0        .byte $A0   ; 
- D 0 - I - 0x0089EF 02:A9DF: 0A        .byte $0A   ; 
- D 0 - I - 0x0089F0 02:A9E0: 27        .byte $27   ; 
- D 0 - I - 0x0089F1 02:A9E1: 06        .byte $06   ; 
- D 0 - I - 0x0089F2 02:A9E2: 27        .byte $27   ; 
- D 0 - I - 0x0089F3 02:A9E3: 06        .byte $06   ; 
- D 0 - I - 0x0089F4 02:A9E4: 27        .byte $27   ; 
- D 0 - I - 0x0089F5 02:A9E5: 06        .byte $06   ; 
- D 0 - I - 0x0089F6 02:A9E6: 27        .byte $27   ; 
- D 0 - I - 0x0089F7 02:A9E7: 06        .byte $06   ; 
- D 0 - I - 0x0089F8 02:A9E8: A0        .byte $A0   ; 
- D 0 - I - 0x0089F9 02:A9E9: 02        .byte $02   ; 
- D 0 - I - 0x0089FA 02:A9EA: 27        .byte $27   ; 
- D 0 - I - 0x0089FB 02:A9EB: 04        .byte $04   ; 
- D 0 - I - 0x0089FC 02:A9EC: 27        .byte $27   ; 
- D 0 - I - 0x0089FD 02:A9ED: 04        .byte $04   ; 
- D 0 - I - 0x0089FE 02:A9EE: A0        .byte $A0   ; 
- D 0 - I - 0x0089FF 02:A9EF: 0A        .byte $0A   ; 
- D 0 - I - 0x008A00 02:A9F0: 25        .byte $25   ; 
- D 0 - I - 0x008A01 02:A9F1: 06        .byte $06   ; 
- D 0 - I - 0x008A02 02:A9F2: 25        .byte $25   ; 
- D 0 - I - 0x008A03 02:A9F3: 06        .byte $06   ; 
- D 0 - I - 0x008A04 02:A9F4: 25        .byte $25   ; 
- D 0 - I - 0x008A05 02:A9F5: 06        .byte $06   ; 
- D 0 - I - 0x008A06 02:A9F6: 25        .byte $25   ; 
- D 0 - I - 0x008A07 02:A9F7: 06        .byte $06   ; 
- D 0 - I - 0x008A08 02:A9F8: A0        .byte $A0   ; 
- D 0 - I - 0x008A09 02:A9F9: 02        .byte $02   ; 
- D 0 - I - 0x008A0A 02:A9FA: 25        .byte $25   ; 
- D 0 - I - 0x008A0B 02:A9FB: 04        .byte $04   ; 
- D 0 - I - 0x008A0C 02:A9FC: 25        .byte $25   ; 
- D 0 - I - 0x008A0D 02:A9FD: 04        .byte $04   ; 
- D 0 - I - 0x008A0E 02:A9FE: A0        .byte $A0   ; 
- D 0 - I - 0x008A0F 02:A9FF: 0F        .byte $0F   ; 
- D 0 - I - 0x008A10 02:AA00: 2B        .byte $2B   ; 
- D 0 - I - 0x008A11 02:AA01: 18        .byte $18   ; 
- D 0 - I - 0x008A12 02:AA02: 35        .byte $35   ; <5>
- D 0 - I - 0x008A13 02:AA03: 02        .byte $02   ; 
- D 0 - I - 0x008A14 02:AA04: 34        .byte $34   ; <4>
- D 0 - I - 0x008A15 02:AA05: 02        .byte $02   ; 
- D 0 - I - 0x008A16 02:AA06: 32        .byte $32   ; <2>
- D 0 - I - 0x008A17 02:AA07: 02        .byte $02   ; 
- D 0 - I - 0x008A18 02:AA08: 30        .byte $30   ; <0>
- D 0 - I - 0x008A19 02:AA09: 02        .byte $02   ; 
- D 0 - I - 0x008A1A 02:AA0A: B0        .byte $B0   ; 
- D 0 - I - 0x008A1B 02:AA0B: 02        .byte $02   ; 
- - - - - - 0x008A1C 02:AA0C: FF        .byte $FF   ; 

loc_track44:
- D 0 - I - 0x008A1D 02:AA0D: 03        .byte $03   ; 
- D 0 - I - 0x008A1E 02:AA0E: 00        .byte $00   ; 
- D 0 - I - 0x008A1F 02:AA0F: 01        .byte $01   ; 
- D 0 - I - 0x008A20 02:AA10: 00        .byte $00   ; 
- D 0 - I - 0x008A21 02:AA11: FD        .byte $FD   ; 
- - - - - - 0x008A22 02:AA12: FE        .byte $FE   ; 
- D 0 - I - 0x008A23 02:AA13: 30        .byte $30   ; <0>
- D 0 - I - 0x008A24 02:AA14: 02        .byte $02   ; 
- D 0 - I - 0x008A25 02:AA15: 33        .byte $33   ; <3>
- D 0 - I - 0x008A26 02:AA16: 02        .byte $02   ; 
- D 0 - I - 0x008A27 02:AA17: 30        .byte $30   ; <0>
- D 0 - I - 0x008A28 02:AA18: 02        .byte $02   ; 
- D 0 - I - 0x008A29 02:AA19: 33        .byte $33   ; <3>
- D 0 - I - 0x008A2A 02:AA1A: 02        .byte $02   ; 
- D 0 - I - 0x008A2B 02:AA1B: 37        .byte $37   ; <7>
- D 0 - I - 0x008A2C 02:AA1C: 02        .byte $02   ; 
- D 0 - I - 0x008A2D 02:AA1D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A2E 02:AA1E: 02        .byte $02   ; 
- D 0 - I - 0x008A2F 02:AA1F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A30 02:AA20: 02        .byte $02   ; 
- D 0 - I - 0x008A31 02:AA21: 33        .byte $33   ; <3>
- D 0 - I - 0x008A32 02:AA22: 02        .byte $02   ; 
- D 0 - I - 0x008A33 02:AA23: 30        .byte $30   ; <0>
- D 0 - I - 0x008A34 02:AA24: 02        .byte $02   ; 
- D 0 - I - 0x008A35 02:AA25: 33        .byte $33   ; <3>
- D 0 - I - 0x008A36 02:AA26: 02        .byte $02   ; 
- D 0 - I - 0x008A37 02:AA27: 30        .byte $30   ; <0>
- D 0 - I - 0x008A38 02:AA28: 02        .byte $02   ; 
- D 0 - I - 0x008A39 02:AA29: 33        .byte $33   ; <3>
- D 0 - I - 0x008A3A 02:AA2A: 02        .byte $02   ; 
- D 0 - I - 0x008A3B 02:AA2B: 36        .byte $36   ; <6>
- D 0 - I - 0x008A3C 02:AA2C: 02        .byte $02   ; 
- D 0 - I - 0x008A3D 02:AA2D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A3E 02:AA2E: 02        .byte $02   ; 
- D 0 - I - 0x008A3F 02:AA2F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A40 02:AA30: 02        .byte $02   ; 
- D 0 - I - 0x008A41 02:AA31: 33        .byte $33   ; <3>
- D 0 - I - 0x008A42 02:AA32: 02        .byte $02   ; 
- D 0 - I - 0x008A43 02:AA33: B3        .byte $B3   ; 
- D 0 - I - 0x008A44 02:AA34: 00        .byte $00   ; 
- D 0 - I - 0x008A45 02:AA35: FD        .byte $FD   ; 
- - - - - - 0x008A46 02:AA36: FE        .byte $FE   ; 
- D 0 - I - 0x008A47 02:AA37: 35        .byte $35   ; <5>
- D 0 - I - 0x008A48 02:AA38: 02        .byte $02   ; 
- D 0 - I - 0x008A49 02:AA39: 38        .byte $38   ; <8>
- D 0 - I - 0x008A4A 02:AA3A: 02        .byte $02   ; 
- D 0 - I - 0x008A4B 02:AA3B: 35        .byte $35   ; <5>
- D 0 - I - 0x008A4C 02:AA3C: 02        .byte $02   ; 
- D 0 - I - 0x008A4D 02:AA3D: 38        .byte $38   ; <8>
- D 0 - I - 0x008A4E 02:AA3E: 02        .byte $02   ; 
- D 0 - I - 0x008A4F 02:AA3F: 40        .byte $40   ; 
- D 0 - I - 0x008A50 02:AA40: 02        .byte $02   ; 
- D 0 - I - 0x008A51 02:AA41: 38        .byte $38   ; <8>
- D 0 - I - 0x008A52 02:AA42: 02        .byte $02   ; 
- D 0 - I - 0x008A53 02:AA43: 35        .byte $35   ; <5>
- D 0 - I - 0x008A54 02:AA44: 02        .byte $02   ; 
- D 0 - I - 0x008A55 02:AA45: 38        .byte $38   ; <8>
- D 0 - I - 0x008A56 02:AA46: 02        .byte $02   ; 
- D 0 - I - 0x008A57 02:AA47: 35        .byte $35   ; <5>
- D 0 - I - 0x008A58 02:AA48: 02        .byte $02   ; 
- D 0 - I - 0x008A59 02:AA49: 38        .byte $38   ; <8>
- D 0 - I - 0x008A5A 02:AA4A: 02        .byte $02   ; 
- D 0 - I - 0x008A5B 02:AA4B: 35        .byte $35   ; <5>
- D 0 - I - 0x008A5C 02:AA4C: 02        .byte $02   ; 
- D 0 - I - 0x008A5D 02:AA4D: 38        .byte $38   ; <8>
- D 0 - I - 0x008A5E 02:AA4E: 02        .byte $02   ; 
- D 0 - I - 0x008A5F 02:AA4F: 3B        .byte $3B   ; 
- D 0 - I - 0x008A60 02:AA50: 02        .byte $02   ; 
- D 0 - I - 0x008A61 02:AA51: 38        .byte $38   ; <8>
- D 0 - I - 0x008A62 02:AA52: 02        .byte $02   ; 
- D 0 - I - 0x008A63 02:AA53: 35        .byte $35   ; <5>
- D 0 - I - 0x008A64 02:AA54: 02        .byte $02   ; 
- D 0 - I - 0x008A65 02:AA55: 38        .byte $38   ; <8>
- D 0 - I - 0x008A66 02:AA56: 02        .byte $02   ; 
- D 0 - I - 0x008A67 02:AA57: B1        .byte $B1   ; 
- D 0 - I - 0x008A68 02:AA58: 00        .byte $00   ; 
- D 0 - I - 0x008A69 02:AA59: FD        .byte $FD   ; 
- - - - - - 0x008A6A 02:AA5A: FE        .byte $FE   ; 
- D 0 - I - 0x008A6B 02:AA5B: 30        .byte $30   ; <0>
- D 0 - I - 0x008A6C 02:AA5C: 02        .byte $02   ; 
- D 0 - I - 0x008A6D 02:AA5D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A6E 02:AA5E: 02        .byte $02   ; 
- D 0 - I - 0x008A6F 02:AA5F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A70 02:AA60: 02        .byte $02   ; 
- D 0 - I - 0x008A71 02:AA61: 33        .byte $33   ; <3>
- D 0 - I - 0x008A72 02:AA62: 02        .byte $02   ; 
- D 0 - I - 0x008A73 02:AA63: 37        .byte $37   ; <7>
- D 0 - I - 0x008A74 02:AA64: 02        .byte $02   ; 
- D 0 - I - 0x008A75 02:AA65: 33        .byte $33   ; <3>
- D 0 - I - 0x008A76 02:AA66: 02        .byte $02   ; 
- D 0 - I - 0x008A77 02:AA67: 30        .byte $30   ; <0>
- D 0 - I - 0x008A78 02:AA68: 02        .byte $02   ; 
- D 0 - I - 0x008A79 02:AA69: 33        .byte $33   ; <3>
- D 0 - I - 0x008A7A 02:AA6A: 02        .byte $02   ; 
- D 0 - I - 0x008A7B 02:AA6B: 30        .byte $30   ; <0>
- D 0 - I - 0x008A7C 02:AA6C: 02        .byte $02   ; 
- D 0 - I - 0x008A7D 02:AA6D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A7E 02:AA6E: 02        .byte $02   ; 
- D 0 - I - 0x008A7F 02:AA6F: 30        .byte $30   ; <0>
- D 0 - I - 0x008A80 02:AA70: 02        .byte $02   ; 
- D 0 - I - 0x008A81 02:AA71: 33        .byte $33   ; <3>
- D 0 - I - 0x008A82 02:AA72: 02        .byte $02   ; 
- D 0 - I - 0x008A83 02:AA73: 36        .byte $36   ; <6>
- D 0 - I - 0x008A84 02:AA74: 02        .byte $02   ; 
- D 0 - I - 0x008A85 02:AA75: 33        .byte $33   ; <3>
- D 0 - I - 0x008A86 02:AA76: 02        .byte $02   ; 
- D 0 - I - 0x008A87 02:AA77: 30        .byte $30   ; <0>
- D 0 - I - 0x008A88 02:AA78: 02        .byte $02   ; 
- D 0 - I - 0x008A89 02:AA79: 33        .byte $33   ; <3>
- D 0 - I - 0x008A8A 02:AA7A: 02        .byte $02   ; 
- D 0 - I - 0x008A8B 02:AA7B: B1        .byte $B1   ; 
- D 0 - I - 0x008A8C 02:AA7C: 00        .byte $00   ; 
- D 0 - I - 0x008A8D 02:AA7D: FD        .byte $FD   ; 
- - - - - - 0x008A8E 02:AA7E: FE        .byte $FE   ; 
- D 0 - I - 0x008A8F 02:AA7F: 2A        .byte $2A   ; 
- D 0 - I - 0x008A90 02:AA80: 02        .byte $02   ; 
- D 0 - I - 0x008A91 02:AA81: 33        .byte $33   ; <3>
- D 0 - I - 0x008A92 02:AA82: 02        .byte $02   ; 
- D 0 - I - 0x008A93 02:AA83: 2A        .byte $2A   ; 
- D 0 - I - 0x008A94 02:AA84: 02        .byte $02   ; 
- D 0 - I - 0x008A95 02:AA85: 33        .byte $33   ; <3>
- D 0 - I - 0x008A96 02:AA86: 02        .byte $02   ; 
- D 0 - I - 0x008A97 02:AA87: 37        .byte $37   ; <7>
- D 0 - I - 0x008A98 02:AA88: 02        .byte $02   ; 
- D 0 - I - 0x008A99 02:AA89: 33        .byte $33   ; <3>
- D 0 - I - 0x008A9A 02:AA8A: 02        .byte $02   ; 
- D 0 - I - 0x008A9B 02:AA8B: 2A        .byte $2A   ; 
- D 0 - I - 0x008A9C 02:AA8C: 02        .byte $02   ; 
- D 0 - I - 0x008A9D 02:AA8D: 33        .byte $33   ; <3>
- D 0 - I - 0x008A9E 02:AA8E: 02        .byte $02   ; 
- D 0 - I - 0x008A9F 02:AA8F: B1        .byte $B1   ; 
- D 0 - I - 0x008AA0 02:AA90: 00        .byte $00   ; 
- D 0 - I - 0x008AA1 02:AA91: FD        .byte $FD   ; 
- - - - - - 0x008AA2 02:AA92: FE        .byte $FE   ; 
- D 0 - I - 0x008AA3 02:AA93: 2B        .byte $2B   ; 
- D 0 - I - 0x008AA4 02:AA94: 02        .byte $02   ; 
- D 0 - I - 0x008AA5 02:AA95: 32        .byte $32   ; <2>
- D 0 - I - 0x008AA6 02:AA96: 02        .byte $02   ; 
- D 0 - I - 0x008AA7 02:AA97: 2B        .byte $2B   ; 
- D 0 - I - 0x008AA8 02:AA98: 02        .byte $02   ; 
- D 0 - I - 0x008AA9 02:AA99: 32        .byte $32   ; <2>
- D 0 - I - 0x008AAA 02:AA9A: 02        .byte $02   ; 
- D 0 - I - 0x008AAB 02:AA9B: 37        .byte $37   ; <7>
- D 0 - I - 0x008AAC 02:AA9C: 02        .byte $02   ; 
- D 0 - I - 0x008AAD 02:AA9D: 32        .byte $32   ; <2>
- D 0 - I - 0x008AAE 02:AA9E: 02        .byte $02   ; 
- D 0 - I - 0x008AAF 02:AA9F: 2B        .byte $2B   ; 
- D 0 - I - 0x008AB0 02:AAA0: 02        .byte $02   ; 
- D 0 - I - 0x008AB1 02:AAA1: 32        .byte $32   ; <2>
- D 0 - I - 0x008AB2 02:AAA2: 02        .byte $02   ; 
- D 0 - I - 0x008AB3 02:AAA3: B1        .byte $B1   ; 
- D 0 - I - 0x008AB4 02:AAA4: 00        .byte $00   ; 
- D 0 - I - 0x008AB5 02:AAA5: B0        .byte $B0   ; 
- D 0 - I - 0x008AB6 02:AAA6: 02        .byte $02   ; 
- - - - - - 0x008AB7 02:AAA7: FF        .byte $FF   ; 

loc_track45:
- D 0 - I - 0x008AB8 02:AAA8: 0A        .byte $0A   ; 
- D 0 - I - 0x008AB9 02:AAA9: 00        .byte $00   ; 
- D 0 - I - 0x008ABA 02:AAAA: 17        .byte $17   ; 
- D 0 - I - 0x008ABB 02:AAAB: 00        .byte $00   ; 
- D 0 - I - 0x008ABC 02:AAAC: FD        .byte $FD   ; 
- - - - - - 0x008ABD 02:AAAD: FE        .byte $FE   ; 
- D 0 - I - 0x008ABE 02:AAAE: 45        .byte $45   ; <E>
- D 0 - I - 0x008ABF 02:AAAF: 01        .byte $01   ; 
- D 0 - I - 0x008AC0 02:AAB0: 41        .byte $41   ; <A>
- D 0 - I - 0x008AC1 02:AAB1: 01        .byte $01   ; 
- D 0 - I - 0x008AC2 02:AAB2: 3A        .byte $3A   ; 
- D 0 - I - 0x008AC3 02:AAB3: 01        .byte $01   ; 
- D 0 - I - 0x008AC4 02:AAB4: 36        .byte $36   ; <6>
- D 0 - I - 0x008AC5 02:AAB5: 01        .byte $01   ; 
- D 0 - I - 0x008AC6 02:AAB6: B3        .byte $B3   ; 
- D 0 - I - 0x008AC7 02:AAB7: 00        .byte $00   ; 
- D 0 - I - 0x008AC8 02:AAB8: FD        .byte $FD   ; 
- - - - - - 0x008AC9 02:AAB9: FE        .byte $FE   ; 
- D 0 - I - 0x008ACA 02:AABA: 47        .byte $47   ; <G>
- D 0 - I - 0x008ACB 02:AABB: 01        .byte $01   ; 
- D 0 - I - 0x008ACC 02:AABC: 43        .byte $43   ; <C>
- D 0 - I - 0x008ACD 02:AABD: 01        .byte $01   ; 
- D 0 - I - 0x008ACE 02:AABE: 40        .byte $40   ; 
- D 0 - I - 0x008ACF 02:AABF: 01        .byte $01   ; 
- D 0 - I - 0x008AD0 02:AAC0: 38        .byte $38   ; <8>
- D 0 - I - 0x008AD1 02:AAC1: 01        .byte $01   ; 
- D 0 - I - 0x008AD2 02:AAC2: B3        .byte $B3   ; 
- D 0 - I - 0x008AD3 02:AAC3: 00        .byte $00   ; 
- D 0 - I - 0x008AD4 02:AAC4: B0        .byte $B0   ; 
- D 0 - I - 0x008AD5 02:AAC5: 02        .byte $02   ; 
- - - - - - 0x008AD6 02:AAC6: FF        .byte $FF   ; 

loc_track46:
- D 0 - I - 0x008AD7 02:AAC7: 05        .byte $05   ; 
- D 0 - I - 0x008AD8 02:AAC8: 02        .byte $02   ; 
- D 0 - I - 0x008AD9 02:AAC9: 00        .byte $00   ; 
- D 0 - I - 0x008ADA 02:AACA: 00        .byte $00   ; 
- D 0 - I - 0x008ADB 02:AACB: 32        .byte $32   ; <2>
- D 0 - I - 0x008ADC 02:AACC: 02        .byte $02   ; 
- D 0 - I - 0x008ADD 02:AACD: 42        .byte $42   ; <B>
- D 0 - I - 0x008ADE 02:AACE: 01        .byte $01   ; 
- D 0 - I - 0x008ADF 02:AACF: 42        .byte $42   ; <B>
- D 0 - I - 0x008AE0 02:AAD0: 01        .byte $01   ; 
- D 0 - I - 0x008AE1 02:AAD1: B7        .byte $B7   ; 
- D 0 - I - 0x008AE2 02:AAD2: 02        .byte $02   ; 
- D 0 - I - 0x008AE3 02:AAD3: 34        .byte $34   ; <4>
- D 0 - I - 0x008AE4 02:AAD4: 02        .byte $02   ; 
- D 0 - I - 0x008AE5 02:AAD5: 44        .byte $44   ; <D>
- D 0 - I - 0x008AE6 02:AAD6: 01        .byte $01   ; 
- D 0 - I - 0x008AE7 02:AAD7: 44        .byte $44   ; <D>
- D 0 - I - 0x008AE8 02:AAD8: 01        .byte $01   ; 
- D 0 - I - 0x008AE9 02:AAD9: B7        .byte $B7   ; 
- D 0 - I - 0x008AEA 02:AADA: 06        .byte $06   ; 
- D 0 - I - 0x008AEB 02:AADB: 30        .byte $30   ; <0>
- D 0 - I - 0x008AEC 02:AADC: 02        .byte $02   ; 
- D 0 - I - 0x008AED 02:AADD: 40        .byte $40   ; 
- D 0 - I - 0x008AEE 02:AADE: 01        .byte $01   ; 
- D 0 - I - 0x008AEF 02:AADF: 40        .byte $40   ; 
- D 0 - I - 0x008AF0 02:AAE0: 01        .byte $01   ; 
- D 0 - I - 0x008AF1 02:AAE1: B7        .byte $B7   ; 
- D 0 - I - 0x008AF2 02:AAE2: 0A        .byte $0A   ; 
- D 0 - I - 0x008AF3 02:AAE3: 29        .byte $29   ; 
- D 0 - I - 0x008AF4 02:AAE4: 02        .byte $02   ; 
- D 0 - I - 0x008AF5 02:AAE5: 39        .byte $39   ; <9>
- D 0 - I - 0x008AF6 02:AAE6: 01        .byte $01   ; 
- D 0 - I - 0x008AF7 02:AAE7: 39        .byte $39   ; <9>
- D 0 - I - 0x008AF8 02:AAE8: 01        .byte $01   ; 
- D 0 - I - 0x008AF9 02:AAE9: B1        .byte $B1   ; 
- D 0 - I - 0x008AFA 02:AAEA: 0E        .byte $0E   ; 
- D 0 - I - 0x008AFB 02:AAEB: 27        .byte $27   ; 
- D 0 - I - 0x008AFC 02:AAEC: 02        .byte $02   ; 
- D 0 - I - 0x008AFD 02:AAED: 37        .byte $37   ; <7>
- D 0 - I - 0x008AFE 02:AAEE: 01        .byte $01   ; 
- D 0 - I - 0x008AFF 02:AAEF: 37        .byte $37   ; <7>
- D 0 - I - 0x008B00 02:AAF0: 01        .byte $01   ; 
- D 0 - I - 0x008B01 02:AAF1: 25        .byte $25   ; 
- D 0 - I - 0x008B02 02:AAF2: 02        .byte $02   ; 
- D 0 - I - 0x008B03 02:AAF3: 35        .byte $35   ; <5>
- D 0 - I - 0x008B04 02:AAF4: 01        .byte $01   ; 
- D 0 - I - 0x008B05 02:AAF5: 35        .byte $35   ; <5>
- D 0 - I - 0x008B06 02:AAF6: 01        .byte $01   ; 
- D 0 - I - 0x008B07 02:AAF7: 24        .byte $24   ; 
- D 0 - I - 0x008B08 02:AAF8: 02        .byte $02   ; 
- D 0 - I - 0x008B09 02:AAF9: 34        .byte $34   ; <4>
- D 0 - I - 0x008B0A 02:AAFA: 01        .byte $01   ; 
- D 0 - I - 0x008B0B 02:AAFB: 34        .byte $34   ; <4>
- D 0 - I - 0x008B0C 02:AAFC: 01        .byte $01   ; 
- D 0 - I - 0x008B0D 02:AAFD: B3        .byte $B3   ; 
- D 0 - I - 0x008B0E 02:AAFE: 18        .byte $18   ; 
- D 0 - I - 0x008B0F 02:AAFF: 32        .byte $32   ; <2>
- D 0 - I - 0x008B10 02:AB00: 02        .byte $02   ; 
- D 0 - I - 0x008B11 02:AB01: 42        .byte $42   ; <B>
- D 0 - I - 0x008B12 02:AB02: 01        .byte $01   ; 
- D 0 - I - 0x008B13 02:AB03: 42        .byte $42   ; <B>
- D 0 - I - 0x008B14 02:AB04: 01        .byte $01   ; 
- D 0 - I - 0x008B15 02:AB05: B7        .byte $B7   ; 
- D 0 - I - 0x008B16 02:AB06: 1C        .byte $1C   ; 
- D 0 - I - 0x008B17 02:AB07: 34        .byte $34   ; <4>
- D 0 - I - 0x008B18 02:AB08: 02        .byte $02   ; 
- D 0 - I - 0x008B19 02:AB09: 44        .byte $44   ; <D>
- D 0 - I - 0x008B1A 02:AB0A: 01        .byte $01   ; 
- D 0 - I - 0x008B1B 02:AB0B: 44        .byte $44   ; <D>
- D 0 - I - 0x008B1C 02:AB0C: 01        .byte $01   ; 
- D 0 - I - 0x008B1D 02:AB0D: B7        .byte $B7   ; 
- D 0 - I - 0x008B1E 02:AB0E: 20        .byte $20   ; 
- D 0 - I - 0x008B1F 02:AB0F: 27        .byte $27   ; 
- D 0 - I - 0x008B20 02:AB10: 02        .byte $02   ; 
- D 0 - I - 0x008B21 02:AB11: 37        .byte $37   ; <7>
- D 0 - I - 0x008B22 02:AB12: 01        .byte $01   ; 
- D 0 - I - 0x008B23 02:AB13: 37        .byte $37   ; <7>
- D 0 - I - 0x008B24 02:AB14: 01        .byte $01   ; 
- D 0 - I - 0x008B25 02:AB15: B3        .byte $B3   ; 
- D 0 - I - 0x008B26 02:AB16: 24        .byte $24   ; 
- D 0 - I - 0x008B27 02:AB17: 30        .byte $30   ; <0>
- D 0 - I - 0x008B28 02:AB18: 02        .byte $02   ; 
- D 0 - I - 0x008B29 02:AB19: 40        .byte $40   ; 
- D 0 - I - 0x008B2A 02:AB1A: 01        .byte $01   ; 
- D 0 - I - 0x008B2B 02:AB1B: 40        .byte $40   ; 
- D 0 - I - 0x008B2C 02:AB1C: 01        .byte $01   ; 
- D 0 - I - 0x008B2D 02:AB1D: B3        .byte $B3   ; 
- D 0 - I - 0x008B2E 02:AB1E: 28        .byte $28   ; 
- D 0 - I - 0x008B2F 02:AB1F: 32        .byte $32   ; <2>
- D 0 - I - 0x008B30 02:AB20: 02        .byte $02   ; 
- D 0 - I - 0x008B31 02:AB21: 42        .byte $42   ; <B>
- D 0 - I - 0x008B32 02:AB22: 01        .byte $01   ; 
- D 0 - I - 0x008B33 02:AB23: 42        .byte $42   ; <B>
- D 0 - I - 0x008B34 02:AB24: 01        .byte $01   ; 
- D 0 - I - 0x008B35 02:AB25: B3        .byte $B3   ; 
- D 0 - I - 0x008B36 02:AB26: 2C        .byte $2C   ; 
- D 0 - I - 0x008B37 02:AB27: 1F        .byte $1F   ; 
- D 0 - I - 0x008B38 02:AB28: 02        .byte $02   ; 
- D 0 - I - 0x008B39 02:AB29: A0        .byte $A0   ; 
- D 0 - I - 0x008B3A 02:AB2A: 04        .byte $04   ; 
- D 0 - I - 0x008B3B 02:AB2B: A2        .byte $A2   ; 
- D 0 - I - 0x008B3C 02:AB2C: 01        .byte $01   ; 
- D 0 - I - 0x008B3D 02:AB2D: 22        .byte $22   ; 
- D 0 - I - 0x008B3E 02:AB2E: 02        .byte $02   ; 
- D 0 - I - 0x008B3F 02:AB2F: 20        .byte $20   ; 
- D 0 - I - 0x008B40 02:AB30: 04        .byte $04   ; 
- D 0 - I - 0x008B41 02:AB31: 22        .byte $22   ; 
- D 0 - I - 0x008B42 02:AB32: 02        .byte $02   ; 
- D 0 - I - 0x008B43 02:AB33: 24        .byte $24   ; 
- D 0 - I - 0x008B44 02:AB34: 06        .byte $06   ; 
- D 0 - I - 0x008B45 02:AB35: A0        .byte $A0   ; 
- D 0 - I - 0x008B46 02:AB36: 00        .byte $00   ; 
- D 0 - I - 0x008B47 02:AB37: A2        .byte $A2   ; 
- D 0 - I - 0x008B48 02:AB38: 02        .byte $02   ; 
- D 0 - I - 0x008B49 02:AB39: B0        .byte $B0   ; 
- D 0 - I - 0x008B4A 02:AB3A: 02        .byte $02   ; 
- - - - - - 0x008B4B 02:AB3B: FF        .byte $FF   ; 

loc_track47:
- D 0 - I - 0x008B4C 02:AB3C: 06        .byte $06   ; 
- D 0 - I - 0x008B4D 02:AB3D: 02        .byte $02   ; 
- D 0 - I - 0x008B4E 02:AB3E: 09        .byte $09   ; 
- D 0 - I - 0x008B4F 02:AB3F: 00        .byte $00   ; 
- D 0 - I - 0x008B50 02:AB40: 32        .byte $32   ; <2>
- D 0 - I - 0x008B51 02:AB41: 06        .byte $06   ; 
- D 0 - I - 0x008B52 02:AB42: 37        .byte $37   ; <7>
- D 0 - I - 0x008B53 02:AB43: 06        .byte $06   ; 
- D 0 - I - 0x008B54 02:AB44: 30        .byte $30   ; <0>
- D 0 - I - 0x008B55 02:AB45: 02        .byte $02   ; 
- D 0 - I - 0x008B56 02:AB46: 32        .byte $32   ; <2>
- D 0 - I - 0x008B57 02:AB47: 02        .byte $02   ; 
- D 0 - I - 0x008B58 02:AB48: 2B        .byte $2B   ; 
- D 0 - I - 0x008B59 02:AB49: 06        .byte $06   ; 
- D 0 - I - 0x008B5A 02:AB4A: 37        .byte $37   ; <7>
- D 0 - I - 0x008B5B 02:AB4B: 06        .byte $06   ; 
- D 0 - I - 0x008B5C 02:AB4C: 29        .byte $29   ; 
- D 0 - I - 0x008B5D 02:AB4D: 02        .byte $02   ; 
- D 0 - I - 0x008B5E 02:AB4E: 2B        .byte $2B   ; 
- D 0 - I - 0x008B5F 02:AB4F: 02        .byte $02   ; 
- D 0 - I - 0x008B60 02:AB50: 30        .byte $30   ; <0>
- D 0 - I - 0x008B61 02:AB51: 06        .byte $06   ; 
- D 0 - I - 0x008B62 02:AB52: 2B        .byte $2B   ; 
- D 0 - I - 0x008B63 02:AB53: 06        .byte $06   ; 
- D 0 - I - 0x008B64 02:AB54: 28        .byte $28   ; 
- D 0 - I - 0x008B65 02:AB55: 04        .byte $04   ; 
- D 0 - I - 0x008B66 02:AB56: 29        .byte $29   ; 
- D 0 - I - 0x008B67 02:AB57: 0C        .byte $0C   ; 
- D 0 - I - 0x008B68 02:AB58: 2B        .byte $2B   ; 
- D 0 - I - 0x008B69 02:AB59: 02        .byte $02   ; 
- D 0 - I - 0x008B6A 02:AB5A: 30        .byte $30   ; <0>
- D 0 - I - 0x008B6B 02:AB5B: 02        .byte $02   ; 
- D 0 - I - 0x008B6C 02:AB5C: B0        .byte $B0   ; 
- D 0 - I - 0x008B6D 02:AB5D: 02        .byte $02   ; 
- - - - - - 0x008B6E 02:AB5E: FF        .byte $FF   ; 

loc_track48:
- D 0 - I - 0x008B6F 02:AB5F: 35        .byte $35   ; <5>
- D 0 - I - 0x008B70 02:AB60: 00        .byte $00   ; 
- D 0 - I - 0x008B71 02:AB61: 00        .byte $00   ; 
- D 0 - I - 0x008B72 02:AB62: 00        .byte $00   ; 
- D 0 - I - 0x008B73 02:AB63: FD        .byte $FD   ; 
- - - - - - 0x008B74 02:AB64: FE        .byte $FE   ; 
- D 0 - I - 0x008B75 02:AB65: 02        .byte $02   ; 
- D 0 - I - 0x008B76 02:AB66: 02        .byte $02   ; 
- D 0 - I - 0x008B77 02:AB67: 02        .byte $02   ; 
- D 0 - I - 0x008B78 02:AB68: 02        .byte $02   ; 
- D 0 - I - 0x008B79 02:AB69: 0A        .byte $0A   ; 
- D 0 - I - 0x008B7A 02:AB6A: 02        .byte $02   ; 
- D 0 - I - 0x008B7B 02:AB6B: 02        .byte $02   ; 
- D 0 - I - 0x008B7C 02:AB6C: 02        .byte $02   ; 
- D 0 - I - 0x008B7D 02:AB6D: 02        .byte $02   ; 
- D 0 - I - 0x008B7E 02:AB6E: 02        .byte $02   ; 
- D 0 - I - 0x008B7F 02:AB6F: 02        .byte $02   ; 
- D 0 - I - 0x008B80 02:AB70: 02        .byte $02   ; 
- D 0 - I - 0x008B81 02:AB71: 0A        .byte $0A   ; 
- D 0 - I - 0x008B82 02:AB72: 02        .byte $02   ; 
- D 0 - I - 0x008B83 02:AB73: 02        .byte $02   ; 
- D 0 - I - 0x008B84 02:AB74: 02        .byte $02   ; 
- D 0 - I - 0x008B85 02:AB75: B7        .byte $B7   ; 
- D 0 - I - 0x008B86 02:AB76: 00        .byte $00   ; 
- D 0 - I - 0x008B87 02:AB77: 0E        .byte $0E   ; 
- D 0 - I - 0x008B88 02:AB78: 02        .byte $02   ; 
- D 0 - I - 0x008B89 02:AB79: 02        .byte $02   ; 
- D 0 - I - 0x008B8A 02:AB7A: 02        .byte $02   ; 
- D 0 - I - 0x008B8B 02:AB7B: 0A        .byte $0A   ; 
- D 0 - I - 0x008B8C 02:AB7C: 02        .byte $02   ; 
- D 0 - I - 0x008B8D 02:AB7D: 02        .byte $02   ; 
- D 0 - I - 0x008B8E 02:AB7E: 02        .byte $02   ; 
- D 0 - I - 0x008B8F 02:AB7F: BF        .byte $BF   ; 
- D 0 - I - 0x008B90 02:AB80: 00        .byte $00   ; 
- - - - - - 0x008B91 02:AB81: B0        .byte $B0   ; 
- - - - - - 0x008B92 02:AB82: 02        .byte $02   ; 

loc_track49:
- D 0 - I - 0x008B93 02:AB83: 34        .byte $34   ; <4>
- D 0 - I - 0x008B94 02:AB84: 00        .byte $00   ; 
- D 0 - I - 0x008B95 02:AB85: 00        .byte $00   ; 
- D 0 - I - 0x008B96 02:AB86: 00        .byte $00   ; 
- D 0 - I - 0x008B97 02:AB87: 02        .byte $02   ; 
- D 0 - I - 0x008B98 02:AB88: 02        .byte $02   ; 
- D 0 - I - 0x008B99 02:AB89: 02        .byte $02   ; 
- D 0 - I - 0x008B9A 02:AB8A: 02        .byte $02   ; 
- D 0 - I - 0x008B9B 02:AB8B: 0A        .byte $0A   ; 
- D 0 - I - 0x008B9C 02:AB8C: 02        .byte $02   ; 
- D 0 - I - 0x008B9D 02:AB8D: 02        .byte $02   ; 
- D 0 - I - 0x008B9E 02:AB8E: 02        .byte $02   ; 
- D 0 - I - 0x008B9F 02:AB8F: B0        .byte $B0   ; 
- D 0 - I - 0x008BA0 02:AB90: 02        .byte $02   ; 
- - - - - - 0x008BA1 02:AB91: FF        .byte $FF   ; 

loc_track4A:
- D 0 - I - 0x008BA2 02:AB92: 3A        .byte $3A   ; 
- D 0 - I - 0x008BA3 02:AB93: 00        .byte $00   ; 
- D 0 - I - 0x008BA4 02:AB94: 00        .byte $00   ; 
- D 0 - I - 0x008BA5 02:AB95: 00        .byte $00   ; 
- D 0 - I - 0x008BA6 02:AB96: 1F        .byte $1F   ; 
- D 0 - I - 0x008BA7 02:AB97: 04        .byte $04   ; 
- D 0 - I - 0x008BA8 02:AB98: B0        .byte $B0   ; 
- D 0 - I - 0x008BA9 02:AB99: 02        .byte $02   ; 
- - - - - - 0x008BAA 02:AB9A: FF        .byte $FF   ; 

loc_track4B:
- D 0 - I - 0x008BAB 02:AB9B: 35        .byte $35   ; <5>
- D 0 - I - 0x008BAC 02:AB9C: 00        .byte $00   ; 
- D 0 - I - 0x008BAD 02:AB9D: 00        .byte $00   ; 
- D 0 - I - 0x008BAE 02:AB9E: 00        .byte $00   ; 
- D 0 - I - 0x008BAF 02:AB9F: 0E        .byte $0E   ; 
- D 0 - I - 0x008BB0 02:ABA0: 02        .byte $02   ; 
- D 0 - I - 0x008BB1 02:ABA1: 02        .byte $02   ; 
- D 0 - I - 0x008BB2 02:ABA2: 02        .byte $02   ; 
- D 0 - I - 0x008BB3 02:ABA3: 0A        .byte $0A   ; 
- D 0 - I - 0x008BB4 02:ABA4: 02        .byte $02   ; 
- D 0 - I - 0x008BB5 02:ABA5: A0        .byte $A0   ; 
- D 0 - I - 0x008BB6 02:ABA6: 01        .byte $01   ; 
- D 0 - I - 0x008BB7 02:ABA7: 02        .byte $02   ; 
- D 0 - I - 0x008BB8 02:ABA8: 04        .byte $04   ; 
- D 0 - I - 0x008BB9 02:ABA9: 02        .byte $02   ; 
- D 0 - I - 0x008BBA 02:ABAA: 04        .byte $04   ; 
- D 0 - I - 0x008BBB 02:ABAB: 02        .byte $02   ; 
- D 0 - I - 0x008BBC 02:ABAC: 02        .byte $02   ; 
- D 0 - I - 0x008BBD 02:ABAD: A0        .byte $A0   ; 
- D 0 - I - 0x008BBE 02:ABAE: 00        .byte $00   ; 
- D 0 - I - 0x008BBF 02:ABAF: B0        .byte $B0   ; 
- D 0 - I - 0x008BC0 02:ABB0: 02        .byte $02   ; 
- - - - - - 0x008BC1 02:ABB1: FF        .byte $FF   ; 

loc_track4C:
- D 0 - I - 0x008BC2 02:ABB2: 34        .byte $34   ; <4>
- D 0 - I - 0x008BC3 02:ABB3: 00        .byte $00   ; 
- D 0 - I - 0x008BC4 02:ABB4: 00        .byte $00   ; 
- D 0 - I - 0x008BC5 02:ABB5: 00        .byte $00   ; 
- D 0 - I - 0x008BC6 02:ABB6: 01        .byte $01   ; 
- D 0 - I - 0x008BC7 02:ABB7: 02        .byte $02   ; 
- D 0 - I - 0x008BC8 02:ABB8: 01        .byte $01   ; 
- D 0 - I - 0x008BC9 02:ABB9: 02        .byte $02   ; 
- D 0 - I - 0x008BCA 02:ABBA: 07        .byte $07   ; 
- D 0 - I - 0x008BCB 02:ABBB: 02        .byte $02   ; 
- D 0 - I - 0x008BCC 02:ABBC: 01        .byte $01   ; 
- D 0 - I - 0x008BCD 02:ABBD: 02        .byte $02   ; 
- D 0 - I - 0x008BCE 02:ABBE: 01        .byte $01   ; 
- D 0 - I - 0x008BCF 02:ABBF: 02        .byte $02   ; 
- D 0 - I - 0x008BD0 02:ABC0: 07        .byte $07   ; 
- D 0 - I - 0x008BD1 02:ABC1: 02        .byte $02   ; 
- D 0 - I - 0x008BD2 02:ABC2: 01        .byte $01   ; 
- D 0 - I - 0x008BD3 02:ABC3: 02        .byte $02   ; 
- D 0 - I - 0x008BD4 02:ABC4: 07        .byte $07   ; 
- D 0 - I - 0x008BD5 02:ABC5: 02        .byte $02   ; 
- D 0 - I - 0x008BD6 02:ABC6: B0        .byte $B0   ; 
- D 0 - I - 0x008BD7 02:ABC7: 02        .byte $02   ; 
- - - - - - 0x008BD8 02:ABC8: FF        .byte $FF   ; 

loc_track4D:
- D 0 - I - 0x008BD9 02:ABC9: 03        .byte $03   ; 
- D 0 - I - 0x008BDA 02:ABCA: 00        .byte $00   ; 
- D 0 - I - 0x008BDB 02:ABCB: 00        .byte $00   ; 
- D 0 - I - 0x008BDC 02:ABCC: 00        .byte $00   ; 
- D 0 - I - 0x008BDD 02:ABCD: 0A        .byte $0A   ; 
- D 0 - I - 0x008BDE 02:ABCE: 04        .byte $04   ; 
- D 0 - I - 0x008BDF 02:ABCF: 0A        .byte $0A   ; 
- D 0 - I - 0x008BE0 02:ABD0: 04        .byte $04   ; 
- D 0 - I - 0x008BE1 02:ABD1: FD        .byte $FD   ; 
- - - - - - 0x008BE2 02:ABD2: FE        .byte $FE   ; 
- D 0 - I - 0x008BE3 02:ABD3: A0        .byte $A0   ; 
- D 0 - I - 0x008BE4 02:ABD4: 01        .byte $01   ; 
- D 0 - I - 0x008BE5 02:ABD5: 02        .byte $02   ; 
- D 0 - I - 0x008BE6 02:ABD6: 04        .byte $04   ; 
- D 0 - I - 0x008BE7 02:ABD7: 01        .byte $01   ; 
- D 0 - I - 0x008BE8 02:ABD8: 02        .byte $02   ; 
- D 0 - I - 0x008BE9 02:ABD9: 01        .byte $01   ; 
- D 0 - I - 0x008BEA 02:ABDA: 02        .byte $02   ; 
- D 0 - I - 0x008BEB 02:ABDB: B2        .byte $B2   ; 
- D 0 - I - 0x008BEC 02:ABDC: 00        .byte $00   ; 
- D 0 - I - 0x008BED 02:ABDD: B0        .byte $B0   ; 
- D 0 - I - 0x008BEE 02:ABDE: 02        .byte $02   ; 
- - - - - - 0x008BEF 02:ABDF: FF        .byte $FF   ; 

loc_track4E:
- D 0 - I - 0x008BF0 02:ABE0: 35        .byte $35   ; <5>
- D 0 - I - 0x008BF1 02:ABE1: 00        .byte $00   ; 
- D 0 - I - 0x008BF2 02:ABE2: 00        .byte $00   ; 
- D 0 - I - 0x008BF3 02:ABE3: 00        .byte $00   ; 
- D 0 - I - 0x008BF4 02:ABE4: 01        .byte $01   ; 
- D 0 - I - 0x008BF5 02:ABE5: 02        .byte $02   ; 
- D 0 - I - 0x008BF6 02:ABE6: 01        .byte $01   ; 
- D 0 - I - 0x008BF7 02:ABE7: 02        .byte $02   ; 
- D 0 - I - 0x008BF8 02:ABE8: 09        .byte $09   ; 
- D 0 - I - 0x008BF9 02:ABE9: 02        .byte $02   ; 
- D 0 - I - 0x008BFA 02:ABEA: 01        .byte $01   ; 
- D 0 - I - 0x008BFB 02:ABEB: 02        .byte $02   ; 
- D 0 - I - 0x008BFC 02:ABEC: B0        .byte $B0   ; 
- D 0 - I - 0x008BFD 02:ABED: 02        .byte $02   ; 
- - - - - - 0x008BFE 02:ABEE: FF        .byte $FF   ; 

loc_track4F:
- D 0 - I - 0x008BFF 02:ABEF: 36        .byte $36   ; <6>
- D 0 - I - 0x008C00 02:ABF0: 00        .byte $00   ; 
- D 0 - I - 0x008C01 02:ABF1: 00        .byte $00   ; 
- D 0 - I - 0x008C02 02:ABF2: 00        .byte $00   ; 
- D 0 - I - 0x008C03 02:ABF3: 0A        .byte $0A   ; 
- D 0 - I - 0x008C04 02:ABF4: 02        .byte $02   ; 
- D 0 - I - 0x008C05 02:ABF5: 01        .byte $01   ; 
- D 0 - I - 0x008C06 02:ABF6: 02        .byte $02   ; 
- D 0 - I - 0x008C07 02:ABF7: 06        .byte $06   ; 
- D 0 - I - 0x008C08 02:ABF8: 02        .byte $02   ; 
- D 0 - I - 0x008C09 02:ABF9: 01        .byte $01   ; 
- D 0 - I - 0x008C0A 02:ABFA: 02        .byte $02   ; 
- D 0 - I - 0x008C0B 02:ABFB: B0        .byte $B0   ; 
- D 0 - I - 0x008C0C 02:ABFC: 02        .byte $02   ; 
- - - - - - 0x008C0D 02:ABFD: FF        .byte $FF   ; 

loc_track50:
- D 0 - I - 0x008C0E 02:ABFE: 00        .byte $00   ;
- D 0 - I - 0x008C0F 02:ABFF: 02        .byte $02   ; 
- D 0 - I - 0x008C10 02:AC00: 02        .byte $02   ; 
- D 0 - I - 0x008C11 02:AC01: 00        .byte $00   ; 

; 0x8C02 in 0x8000-0x9FFF
- D 0 - I - 0x008C12 02:AC02: 20        .byte $20   ; 
- D 0 - I - 0x008C13 02:AC03: 02        .byte $02   ; 
- D 0 - I - 0x008C14 02:AC04: 1F        .byte $1F   ; 
- D 0 - I - 0x008C15 02:AC05: 02        .byte $02   ; 
- D 0 - I - 0x008C16 02:AC06: FF        .byte $FF   ; 

loc_track51:
- D 0 - I - 0x008C17 02:AC07: 00        .byte $00   ; 
- D 0 - I - 0x008C18 02:AC08: 02        .byte $02   ; 
- D 0 - I - 0x008C19 02:AC09: 01        .byte $01   ; 
- D 0 - I - 0x008C1A 02:AC0A: 81        .byte $81   ; 
- D 0 - I - 0x008C1B 02:AC0B: 20        .byte $20   ; 
- D 0 - I - 0x008C1C 02:AC0C: 06        .byte $06   ; 
- D 0 - I - 0x008C1D 02:AC0D: A1        .byte $A1   ; 
- D 0 - I - 0x008C1E 02:AC0E: 95        .byte $95   ; 
- D 0 - I - 0x008C1F 02:AC0F: A0        .byte $A0   ; 
- D 0 - I - 0x008C20 02:AC10: 1F        .byte $1F   ; 
- D 0 - I - 0x008C21 02:AC11: EF        .byte $EF   ; 
- D 0 - I - 0x008C22 02:AC12: 01        .byte $01   ; 
- D 0 - I - 0x008C23 02:AC13: 20        .byte $20   ; 
- D 0 - I - 0x008C24 02:AC14: 20        .byte $20   ; 
- D 0 - I - 0x008C25 02:AC15: FF        .byte $FF   ; 

loc_track52:
- D 0 - I - 0x008C26 02:AC16: 30        .byte $30   ; <0>
- D 0 - I - 0x008C27 02:AC17: 00        .byte $00   ; 
- D 0 - I - 0x008C28 02:AC18: 04        .byte $04   ; 
- D 0 - I - 0x008C29 02:AC19: 00        .byte $00   ; 
- D 0 - I - 0x008C2A 02:AC1A: 0E        .byte $0E   ; 
- D 0 - I - 0x008C2B 02:AC1B: 06        .byte $06   ; 
- D 0 - I - 0x008C2C 02:AC1C: EF        .byte $EF   ; 
- D 0 - I - 0x008C2D 02:AC1D: 05        .byte $05   ; 
- D 0 - I - 0x008C2E 02:AC1E: 0A        .byte $0A   ; 
- D 0 - I - 0x008C2F 02:AC1F: 20        .byte $20   ; 
- D 0 - I - 0x008C30 02:AC20: FF        .byte $FF   ; 

loc_track53:
- - - - - - 0x008C31 02:AC21: 07        .byte $07   ; 
- - - - - - 0x008C32 02:AC22: 01        .byte $01   ; 
- - - - - - 0x008C33 02:AC23: 0F        .byte $0F   ; 
- - - - - - 0x008C34 02:AC24: 00        .byte $00   ; 
- - - - - - 0x008C35 02:AC25: A3        .byte $A3   ; 
- - - - - - 0x008C36 02:AC26: 10        .byte $10   ; 
- - - - - - 0x008C37 02:AC27: 30        .byte $30   ; <0>
- - - - - - 0x008C38 02:AC28: 06        .byte $06   ; 
- - - - - - 0x008C39 02:AC29: 32        .byte $32   ; <2>
- - - - - - 0x008C3A 02:AC2A: 02        .byte $02   ; 
- - - - - - 0x008C3B 02:AC2B: 30        .byte $30   ; <0>
- - - - - - 0x008C3C 02:AC2C: 04        .byte $04   ; 
- - - - - - 0x008C3D 02:AC2D: 2B        .byte $2B   ; 
- - - - - - 0x008C3E 02:AC2E: 04        .byte $04   ; 
- - - - - - 0x008C3F 02:AC2F: 29        .byte $29   ; 
- - - - - - 0x008C40 02:AC30: 04        .byte $04   ; 
- - - - - - 0x008C41 02:AC31: 27        .byte $27   ; 
- - - - - - 0x008C42 02:AC32: 02        .byte $02   ; 
- - - - - - 0x008C43 02:AC33: 29        .byte $29   ; 
- - - - - - 0x008C44 02:AC34: 18        .byte $18   ; 
- - - - - - 0x008C45 02:AC35: FF        .byte $FF   ; 

loc_track54:
- - - - - - 0x008C46 02:AC36: 07        .byte $07   ; 
- - - - - - 0x008C47 02:AC37: 60        .byte $60   ; 
- - - - - - 0x008C48 02:AC38: 00        .byte $00   ; 
- - - - - - 0x008C49 02:AC39: 00        .byte $00   ; 
- - - - - - 0x008C4A 02:AC3A: 25        .byte $25   ; 
- - - - - - 0x008C4B 02:AC3B: 04        .byte $04   ; 
- - - - - - 0x008C4C 02:AC3C: 30        .byte $30   ; <0>
- - - - - - 0x008C4D 02:AC3D: 04        .byte $04   ; 
- - - - - - 0x008C4E 02:AC3E: 35        .byte $35   ; <5>
- - - - - - 0x008C4F 02:AC3F: 04        .byte $04   ; 
- - - - - - 0x008C50 02:AC40: 27        .byte $27   ; 
- - - - - - 0x008C51 02:AC41: 04        .byte $04   ; 
- - - - - - 0x008C52 02:AC42: 32        .byte $32   ; <2>
- - - - - - 0x008C53 02:AC43: 04        .byte $04   ; 
- - - - - - 0x008C54 02:AC44: 37        .byte $37   ; <7>
- - - - - - 0x008C55 02:AC45: 04        .byte $04   ; 
- - - - - - 0x008C56 02:AC46: 29        .byte $29   ; 
- - - - - - 0x008C57 02:AC47: 04        .byte $04   ; 
- - - - - - 0x008C58 02:AC48: 24        .byte $24   ; 
- - - - - - 0x008C59 02:AC49: 04        .byte $04   ; 
- - - - - - 0x008C5A 02:AC4A: 20        .byte $20   ; 
- - - - - - 0x008C5B 02:AC4B: 04        .byte $04   ; 
- - - - - - 0x008C5C 02:AC4C: 19        .byte $19   ; 
- - - - - - 0x008C5D 02:AC4D: 08        .byte $08   ; 
- - - - - - 0x008C5E 02:AC4E: FF        .byte $FF   ; 

loc_track55:
- D 0 - I - 0x008C5F 02:AC4F: 03        .byte $03   ; 
- D 0 - I - 0x008C60 02:AC50: 02        .byte $02   ; 
- D 0 - I - 0x008C61 02:AC51: 1C        .byte $1C   ; 
- D 0 - I - 0x008C62 02:AC52: 00        .byte $00   ; 
- D 0 - I - 0x008C63 02:AC53: A3        .byte $A3   ; 
- D 0 - I - 0x008C64 02:AC54: 21        .byte $21   ; 
- D 0 - I - 0x008C65 02:AC55: 1F        .byte $1F   ; 
- D 0 - I - 0x008C66 02:AC56: 04        .byte $04   ; 
- D 0 - I - 0x008C67 02:AC57: 25        .byte $25   ; 
- D 0 - I - 0x008C68 02:AC58: 04        .byte $04   ; 
- D 0 - I - 0x008C69 02:AC59: 27        .byte $27   ; 
- D 0 - I - 0x008C6A 02:AC5A: 04        .byte $04   ; 
- D 0 - I - 0x008C6B 02:AC5B: 28        .byte $28   ; 
- D 0 - I - 0x008C6C 02:AC5C: 04        .byte $04   ; 
- D 0 - I - 0x008C6D 02:AC5D: 2B        .byte $2B   ; 
- D 0 - I - 0x008C6E 02:AC5E: 04        .byte $04   ; 
- D 0 - I - 0x008C6F 02:AC5F: 30        .byte $30   ; <0>
- D 0 - I - 0x008C70 02:AC60: 04        .byte $04   ; 
- D 0 - I - 0x008C71 02:AC61: 32        .byte $32   ; <2>
- D 0 - I - 0x008C72 02:AC62: 04        .byte $04   ; 
- D 0 - I - 0x008C73 02:AC63: 30        .byte $30   ; <0>
- D 0 - I - 0x008C74 02:AC64: 08        .byte $08   ; 
- D 0 - I - 0x008C75 02:AC65: 2B        .byte $2B   ; 
- D 0 - I - 0x008C76 02:AC66: 04        .byte $04   ; 
- D 0 - I - 0x008C77 02:AC67: 28        .byte $28   ; 
- D 0 - I - 0x008C78 02:AC68: 04        .byte $04   ; 
- D 0 - I - 0x008C79 02:AC69: 27        .byte $27   ; 
- D 0 - I - 0x008C7A 02:AC6A: 08        .byte $08   ; 
- D 0 - I - 0x008C7B 02:AC6B: 25        .byte $25   ; 
- D 0 - I - 0x008C7C 02:AC6C: 04        .byte $04   ; 
- D 0 - I - 0x008C7D 02:AC6D: 27        .byte $27   ; 
- D 0 - I - 0x008C7E 02:AC6E: 04        .byte $04   ; 
- D 0 - I - 0x008C7F 02:AC6F: 28        .byte $28   ; 
- D 0 - I - 0x008C80 02:AC70: 04        .byte $04   ; 
- D 0 - I - 0x008C81 02:AC71: 1F        .byte $1F   ; 
- D 0 - I - 0x008C82 02:AC72: 04        .byte $04   ; 
- D 0 - I - 0x008C83 02:AC73: FD        .byte $FD   ; 
- - - - - - 0x008C84 02:AC74: FE        .byte $FE   ; 
- D 0 - I - 0x008C85 02:AC75: 2B        .byte $2B   ; 
- D 0 - I - 0x008C86 02:AC76: 04        .byte $04   ; 
- D 0 - I - 0x008C87 02:AC77: 28        .byte $28   ; 
- D 0 - I - 0x008C88 02:AC78: 04        .byte $04   ; 
- D 0 - I - 0x008C89 02:AC79: 27        .byte $27   ; 
- D 0 - I - 0x008C8A 02:AC7A: 04        .byte $04   ; 
- D 0 - I - 0x008C8B 02:AC7B: 25        .byte $25   ; 
- D 0 - I - 0x008C8C 02:AC7C: 04        .byte $04   ; 
- D 0 - I - 0x008C8D 02:AC7D: B2        .byte $B2   ; 
- D 0 - I - 0x008C8E 02:AC7E: 00        .byte $00   ; 
- D 0 - I - 0x008C8F 02:AC7F: 27        .byte $27   ; 
- D 0 - I - 0x008C90 02:AC80: 04        .byte $04   ; 
- D 0 - I - 0x008C91 02:AC81: 28        .byte $28   ; 
- D 0 - I - 0x008C92 02:AC82: 04        .byte $04   ; 
- D 0 - I - 0x008C93 02:AC83: 27        .byte $27   ; 
- D 0 - I - 0x008C94 02:AC84: 04        .byte $04   ; 
- D 0 - I - 0x008C95 02:AC85: B0        .byte $B0   ; 
- D 0 - I - 0x008C96 02:AC86: 02        .byte $02   ; 
- - - - - - 0x008C97 02:AC87: FF        .byte $FF   ; 

loc_track56:
- D 0 - I - 0x008C98 02:AC88: 13        .byte $13   ; 
- D 0 - I - 0x008C99 02:AC89: 02        .byte $02   ; 
- D 0 - I - 0x008C9A 02:AC8A: 15        .byte $15   ; 
- D 0 - I - 0x008C9B 02:AC8B: 00        .byte $00   ; 
- D 0 - I - 0x008C9C 02:AC8C: 1F        .byte $1F   ; 
- D 0 - I - 0x008C9D 02:AC8D: 03        .byte $03   ; 
- D 0 - I - 0x008C9E 02:AC8E: 1F        .byte $1F   ; 
- D 0 - I - 0x008C9F 02:AC8F: 04        .byte $04   ; 
- D 0 - I - 0x008CA0 02:AC90: 25        .byte $25   ; 
- D 0 - I - 0x008CA1 02:AC91: 04        .byte $04   ; 
- D 0 - I - 0x008CA2 02:AC92: 27        .byte $27   ; 
- D 0 - I - 0x008CA3 02:AC93: 04        .byte $04   ; 
- D 0 - I - 0x008CA4 02:AC94: 28        .byte $28   ; 
- D 0 - I - 0x008CA5 02:AC95: 04        .byte $04   ; 
- D 0 - I - 0x008CA6 02:AC96: 2B        .byte $2B   ; 
- D 0 - I - 0x008CA7 02:AC97: 04        .byte $04   ; 
- D 0 - I - 0x008CA8 02:AC98: 30        .byte $30   ; <0>
- D 0 - I - 0x008CA9 02:AC99: 04        .byte $04   ; 
- D 0 - I - 0x008CAA 02:AC9A: 32        .byte $32   ; <2>
- D 0 - I - 0x008CAB 02:AC9B: 04        .byte $04   ; 
- D 0 - I - 0x008CAC 02:AC9C: 30        .byte $30   ; <0>
- D 0 - I - 0x008CAD 02:AC9D: 08        .byte $08   ; 
- D 0 - I - 0x008CAE 02:AC9E: 2B        .byte $2B   ; 
- D 0 - I - 0x008CAF 02:AC9F: 04        .byte $04   ; 
- D 0 - I - 0x008CB0 02:ACA0: 28        .byte $28   ; 
- D 0 - I - 0x008CB1 02:ACA1: 04        .byte $04   ; 
- D 0 - I - 0x008CB2 02:ACA2: 27        .byte $27   ; 
- D 0 - I - 0x008CB3 02:ACA3: 08        .byte $08   ; 
- D 0 - I - 0x008CB4 02:ACA4: 25        .byte $25   ; 
- D 0 - I - 0x008CB5 02:ACA5: 04        .byte $04   ; 
- D 0 - I - 0x008CB6 02:ACA6: 27        .byte $27   ; 
- D 0 - I - 0x008CB7 02:ACA7: 04        .byte $04   ; 
- D 0 - I - 0x008CB8 02:ACA8: 28        .byte $28   ; 
- D 0 - I - 0x008CB9 02:ACA9: 04        .byte $04   ; 
- D 0 - I - 0x008CBA 02:ACAA: 1F        .byte $1F   ; 
- D 0 - I - 0x008CBB 02:ACAB: 04        .byte $04   ; 
- D 0 - I - 0x008CBC 02:ACAC: FD        .byte $FD   ; 
- - - - - - 0x008CBD 02:ACAD: FE        .byte $FE   ; 
- D 0 - I - 0x008CBE 02:ACAE: 2B        .byte $2B   ; 
- D 0 - I - 0x008CBF 02:ACAF: 04        .byte $04   ; 
- D 0 - I - 0x008CC0 02:ACB0: 28        .byte $28   ; 
- D 0 - I - 0x008CC1 02:ACB1: 04        .byte $04   ; 
- D 0 - I - 0x008CC2 02:ACB2: 27        .byte $27   ; 
- D 0 - I - 0x008CC3 02:ACB3: 04        .byte $04   ; 
- D 0 - I - 0x008CC4 02:ACB4: 25        .byte $25   ; 
- D 0 - I - 0x008CC5 02:ACB5: 04        .byte $04   ; 
- D 0 - I - 0x008CC6 02:ACB6: B2        .byte $B2   ; 
- D 0 - I - 0x008CC7 02:ACB7: 00        .byte $00   ; 
- D 0 - I - 0x008CC8 02:ACB8: 27        .byte $27   ; 
- D 0 - I - 0x008CC9 02:ACB9: 04        .byte $04   ; 
- D 0 - I - 0x008CCA 02:ACBA: 28        .byte $28   ; 
- D 0 - I - 0x008CCB 02:ACBB: 04        .byte $04   ; 
- D 0 - I - 0x008CCC 02:ACBC: 27        .byte $27   ; 
- D 0 - I - 0x008CCD 02:ACBD: 04        .byte $04   ; 
- D 0 - I - 0x008CCE 02:ACBE: B0        .byte $B0   ; 
- D 0 - I - 0x008CCF 02:ACBF: 03        .byte $03   ; 
- - - - - - 0x008CD0 02:ACC0: FF        .byte $FF   ; 

loc_track57:
- D 0 - I - 0x008CD1 02:ACC1: 23        .byte $23   ; 
- D 0 - I - 0x008CD2 02:ACC2: 7F        .byte $7F   ; 
- D 0 - I - 0x008CD3 02:ACC3: 00        .byte $00   ; 
- D 0 - I - 0x008CD4 02:ACC4: 00        .byte $00   ; 
- D 0 - I - 0x008CD5 02:ACC5: 15        .byte $15   ; 
- D 0 - I - 0x008CD6 02:ACC6: 08        .byte $08   ; 
- D 0 - I - 0x008CD7 02:ACC7: 25        .byte $25   ; 
- D 0 - I - 0x008CD8 02:ACC8: 08        .byte $08   ; 
- D 0 - I - 0x008CD9 02:ACC9: 15        .byte $15   ; 
- D 0 - I - 0x008CDA 02:ACCA: 08        .byte $08   ; 
- D 0 - I - 0x008CDB 02:ACCB: 25        .byte $25   ; 
- D 0 - I - 0x008CDC 02:ACCC: 08        .byte $08   ; 
- D 0 - I - 0x008CDD 02:ACCD: 17        .byte $17   ; 
- D 0 - I - 0x008CDE 02:ACCE: 08        .byte $08   ; 
- D 0 - I - 0x008CDF 02:ACCF: 27        .byte $27   ; 
- D 0 - I - 0x008CE0 02:ACD0: 08        .byte $08   ; 
- D 0 - I - 0x008CE1 02:ACD1: 17        .byte $17   ; 
- D 0 - I - 0x008CE2 02:ACD2: 08        .byte $08   ; 
- D 0 - I - 0x008CE3 02:ACD3: 27        .byte $27   ; 
- D 0 - I - 0x008CE4 02:ACD4: 08        .byte $08   ; 
- D 0 - I - 0x008CE5 02:ACD5: B0        .byte $B0   ; 
- D 0 - I - 0x008CE6 02:ACD6: 02        .byte $02   ; 
- - - - - - 0x008CE7 02:ACD7: FF        .byte $FF   ; 

loc_track58:
- - - - - - 0x008CE8 02:ACD8: FF        .byte $FF   ; 

loc_track59:
- - - - - - 0x008CE9 02:ACD9: FF        .byte $FF   ; 

loc_track5A:
- - - - - - 0x008CEA 02:ACDA: FF        .byte $FF   ; 

loc_track5F:
- - - - - - 0x008CEB 02:ACDB: 03        .byte $03   ; 
- - - - - - 0x008CEC 02:ACDC: 01        .byte $01   ; 
- - - - - - 0x008CED 02:ACDD: 1F        .byte $1F   ; 
- - - - - - 0x008CEE 02:ACDE: AA        .byte $AA   ; 
- - - - - - 0x008CEF 02:ACDF: EF        .byte $EF   ; 
- - - - - - 0x008CF0 02:ACE0: 01        .byte $01   ; 
- - - - - - 0x008CF1 02:ACE1: 20        .byte $20   ; 
- - - - - - 0x008CF2 02:ACE2: 04        .byte $04   ; 
- - - - - - 0x008CF3 02:ACE3: FD        .byte $FD   ; 
- - - - - - 0x008CF4 02:ACE4: FE        .byte $FE   ; 
- - - - - - 0x008CF5 02:ACE5: 20        .byte $20   ; 
- - - - - - 0x008CF6 02:ACE6: 02        .byte $02   ; 
- - - - - - 0x008CF7 02:ACE7: B7        .byte $B7   ; 
- - - - - - 0x008CF8 02:ACE8: 00        .byte $00   ; 
- - - - - - 0x008CF9 02:ACE9: FF        .byte $FF   ; 

loc_track60:
- D 0 - I - 0x008CFA 02:ACEA: 00        .byte $00   ; 
- D 0 - I - 0x008CFB 02:ACEB: 02        .byte $02   ; 
- D 0 - I - 0x008CFC 02:ACEC: 0F        .byte $0F   ; 
- D 0 - I - 0x008CFD 02:ACED: 8C        .byte $8C   ; 
- D 0 - I - 0x008CFE 02:ACEE: FD        .byte $FD   ; 
- - - - - - 0x008CFF 02:ACEF: FE        .byte $FE   ; 
- D 0 - I - 0x008D00 02:ACF0: 40        .byte $40   ; 
- D 0 - I - 0x008D01 02:ACF1: 02        .byte $02   ; 
- D 0 - I - 0x008D02 02:ACF2: BF        .byte $BF   ; 
- D 0 - I - 0x008D03 02:ACF3: 00        .byte $00   ; 
- D 0 - I - 0x008D04 02:ACF4: FF        .byte $FF   ; 

loc_track5B:
- D 0 - I - 0x008D05 02:ACF5: 07        .byte $07   ; 
- D 0 - I - 0x008D06 02:ACF6: 02        .byte $02   ; 
- D 0 - I - 0x008D07 02:ACF7: 0F        .byte $0F   ; 
- D 0 - I - 0x008D08 02:ACF8: 00        .byte $00   ; 
- D 0 - I - 0x008D09 02:ACF9: 27        .byte $27   ; 
- D 0 - I - 0x008D0A 02:ACFA: 06        .byte $06   ; 
- D 0 - I - 0x008D0B 02:ACFB: 37        .byte $37   ; <7>
- D 0 - I - 0x008D0C 02:ACFC: 02        .byte $02   ; 
- D 0 - I - 0x008D0D 02:ACFD: 35        .byte $35   ; <5>
- D 0 - I - 0x008D0E 02:ACFE: 02        .byte $02   ; 
- D 0 - I - 0x008D0F 02:ACFF: 34        .byte $34   ; <4>
- D 0 - I - 0x008D10 02:AD00: 02        .byte $02   ; 
- D 0 - I - 0x008D11 02:AD01: 32        .byte $32   ; <2>
- D 0 - I - 0x008D12 02:AD02: 02        .byte $02   ; 
- D 0 - I - 0x008D13 02:AD03: 30        .byte $30   ; <0>
- D 0 - I - 0x008D14 02:AD04: 02        .byte $02   ; 
- D 0 - I - 0x008D15 02:AD05: 32        .byte $32   ; <2>
- D 0 - I - 0x008D16 02:AD06: 02        .byte $02   ; 
- D 0 - I - 0x008D17 02:AD07: 34        .byte $34   ; <4>
- D 0 - I - 0x008D18 02:AD08: 01        .byte $01   ; 
- D 0 - I - 0x008D19 02:AD09: 30        .byte $30   ; <0>
- D 0 - I - 0x008D1A 02:AD0A: 0D        .byte $0D   ; 
- D 0 - I - 0x008D1B 02:AD0B: 32        .byte $32   ; <2>
- D 0 - I - 0x008D1C 02:AD0C: 02        .byte $02   ; 
- D 0 - I - 0x008D1D 02:AD0D: 34        .byte $34   ; <4>
- D 0 - I - 0x008D1E 02:AD0E: 01        .byte $01   ; 
- D 0 - I - 0x008D1F 02:AD0F: 30        .byte $30   ; <0>
- D 0 - I - 0x008D20 02:AD10: 03        .byte $03   ; 
- D 0 - I - 0x008D21 02:AD11: 37        .byte $37   ; <7>
- D 0 - I - 0x008D22 02:AD12: 02        .byte $02   ; 
- D 0 - I - 0x008D23 02:AD13: 35        .byte $35   ; <5>
- D 0 - I - 0x008D24 02:AD14: 02        .byte $02   ; 
- D 0 - I - 0x008D25 02:AD15: 34        .byte $34   ; <4>
- D 0 - I - 0x008D26 02:AD16: 02        .byte $02   ; 
- D 0 - I - 0x008D27 02:AD17: 32        .byte $32   ; <2>
- D 0 - I - 0x008D28 02:AD18: 02        .byte $02   ; 
- D 0 - I - 0x008D29 02:AD19: 30        .byte $30   ; <0>
- D 0 - I - 0x008D2A 02:AD1A: 02        .byte $02   ; 
- D 0 - I - 0x008D2B 02:AD1B: 32        .byte $32   ; <2>
- D 0 - I - 0x008D2C 02:AD1C: 02        .byte $02   ; 
- D 0 - I - 0x008D2D 02:AD1D: 34        .byte $34   ; <4>
- D 0 - I - 0x008D2E 02:AD1E: 02        .byte $02   ; 
- D 0 - I - 0x008D2F 02:AD1F: 35        .byte $35   ; <5>
- D 0 - I - 0x008D30 02:AD20: 02        .byte $02   ; 
- D 0 - I - 0x008D31 02:AD21: 40        .byte $40   ; 
- D 0 - I - 0x008D32 02:AD22: 02        .byte $02   ; 
- D 0 - I - 0x008D33 02:AD23: 3B        .byte $3B   ; 
- D 0 - I - 0x008D34 02:AD24: 04        .byte $04   ; 
- D 0 - I - 0x008D35 02:AD25: 37        .byte $37   ; <7>
- D 0 - I - 0x008D36 02:AD26: 04        .byte $04   ; 
- D 0 - I - 0x008D37 02:AD27: B0        .byte $B0   ; 
- D 0 - I - 0x008D38 02:AD28: 02        .byte $02   ; 
- - - - - - 0x008D39 02:AD29: FF        .byte $FF   ; 

loc_track5C:
- D 0 - I - 0x008D3A 02:AD2A: 07        .byte $07   ; 
- D 0 - I - 0x008D3B 02:AD2B: 00        .byte $00   ; 
- D 0 - I - 0x008D3C 02:AD2C: 00        .byte $00   ; 
- D 0 - I - 0x008D3D 02:AD2D: 00        .byte $00   ; 
- D 0 - I - 0x008D3E 02:AD2E: 1F        .byte $1F   ; 
- D 0 - I - 0x008D3F 02:AD2F: 01        .byte $01   ; 
- D 0 - I - 0x008D40 02:AD30: B0        .byte $B0   ; 
- D 0 - I - 0x008D41 02:AD31: 02        .byte $02   ; 
- - - - - - 0x008D42 02:AD32: FF        .byte $FF   ; 

loc_track5D:
- D 0 - I - 0x008D43 02:AD33: 07        .byte $07   ; 
- D 0 - I - 0x008D44 02:AD34: 00        .byte $00   ; 
- D 0 - I - 0x008D45 02:AD35: 20        .byte $20   ; 
- D 0 - I - 0x008D46 02:AD36: 00        .byte $00   ; 
- D 0 - I - 0x008D47 02:AD37: 20        .byte $20   ; 
- D 0 - I - 0x008D48 02:AD38: 06        .byte $06   ; 
- D 0 - I - 0x008D49 02:AD39: 20        .byte $20   ; 
- D 0 - I - 0x008D4A 02:AD3A: 02        .byte $02   ; 
- D 0 - I - 0x008D4B 02:AD3B: 1B        .byte $1B   ; 
- D 0 - I - 0x008D4C 02:AD3C: 06        .byte $06   ; 
- D 0 - I - 0x008D4D 02:AD3D: 1B        .byte $1B   ; 
- D 0 - I - 0x008D4E 02:AD3E: 02        .byte $02   ; 
- D 0 - I - 0x008D4F 02:AD3F: 19        .byte $19   ; 
- D 0 - I - 0x008D50 02:AD40: 06        .byte $06   ; 
- D 0 - I - 0x008D51 02:AD41: 19        .byte $19   ; 
- D 0 - I - 0x008D52 02:AD42: 02        .byte $02   ; 
- D 0 - I - 0x008D53 02:AD43: 17        .byte $17   ; 
- D 0 - I - 0x008D54 02:AD44: 06        .byte $06   ; 
- D 0 - I - 0x008D55 02:AD45: 17        .byte $17   ; 
- D 0 - I - 0x008D56 02:AD46: 02        .byte $02   ; 
- D 0 - I - 0x008D57 02:AD47: 25        .byte $25   ; 
- D 0 - I - 0x008D58 02:AD48: 06        .byte $06   ; 
- D 0 - I - 0x008D59 02:AD49: 25        .byte $25   ; 
- D 0 - I - 0x008D5A 02:AD4A: 02        .byte $02   ; 
- D 0 - I - 0x008D5B 02:AD4B: 24        .byte $24   ; 
- D 0 - I - 0x008D5C 02:AD4C: 06        .byte $06   ; 
- D 0 - I - 0x008D5D 02:AD4D: 24        .byte $24   ; 
- D 0 - I - 0x008D5E 02:AD4E: 02        .byte $02   ; 
- D 0 - I - 0x008D5F 02:AD4F: 22        .byte $22   ; 
- D 0 - I - 0x008D60 02:AD50: 06        .byte $06   ; 
- D 0 - I - 0x008D61 02:AD51: 22        .byte $22   ; 
- D 0 - I - 0x008D62 02:AD52: 02        .byte $02   ; 
- D 0 - I - 0x008D63 02:AD53: 27        .byte $27   ; 
- D 0 - I - 0x008D64 02:AD54: 06        .byte $06   ; 
- D 0 - I - 0x008D65 02:AD55: 27        .byte $27   ; 
- D 0 - I - 0x008D66 02:AD56: 02        .byte $02   ; 
- D 0 - I - 0x008D67 02:AD57: B0        .byte $B0   ; 
- D 0 - I - 0x008D68 02:AD58: 02        .byte $02   ; 
- - - - - - 0x008D69 02:AD59: FF        .byte $FF   ; 

loc_track5E:
- D 0 - I - 0x008D6A 02:AD5A: 37        .byte $37   ; <7>
- D 0 - I - 0x008D6B 02:AD5B: 00        .byte $00   ; 
- D 0 - I - 0x008D6C 02:AD5C: 00        .byte $00   ; 
- D 0 - I - 0x008D6D 02:AD5D: 00        .byte $00   ; 
- D 0 - I - 0x008D6E 02:AD5E: 1F        .byte $1F   ; 
- D 0 - I - 0x008D6F 02:AD5F: 04        .byte $04   ; 
- D 0 - I - 0x008D70 02:AD60: B0        .byte $B0   ; 
- D 0 - I - 0x008D71 02:AD61: 02        .byte $02   ; 
- - - - - - 0x008D72 02:AD62: FF        .byte $FF   ; 

- - - - - - 0x008D73 02:AD63: 5D        .byte $5D   ; 
- - - - - - 0x008D74 02:AD64: 01        .byte $01   ; 
- - - - - - 0x008D75 02:AD65: 00        .byte $00   ; 
- - - - - - 0x008D76 02:AD66: 80        .byte $80   ; 
- - - - - - 0x008D77 02:AD67: 5D        .byte $5D   ; 
- - - - - - 0x008D78 02:AD68: 02        .byte $02   ; 
- - - - - - 0x008D79 02:AD69: E0        .byte $E0   ; 
- - - - - - 0x008D7A 02:AD6A: 80        .byte $80   ; 
- - - - - - 0x008D7B 02:AD6B: 5E        .byte $5E   ; 
- - - - - - 0x008D7C 02:AD6C: 01        .byte $01   ; 
- - - - - - 0x008D7D 02:AD6D: 00        .byte $00   ; 
- - - - - - 0x008D7E 02:AD6E: 80        .byte $80   ; 
- - - - - - 0x008D7F 02:AD6F: 5E        .byte $5E   ; 
- - - - - - 0x008D80 02:AD70: 02        .byte $02   ; 
- - - - - - 0x008D81 02:AD71: E0        .byte $E0   ; 
- - - - - - 0x008D82 02:AD72: 80        .byte $80   ; 
- - - - - - 0x008D83 02:AD73: 5F        .byte $5F   ; 
- - - - - - 0x008D84 02:AD74: 04        .byte $04   ; 
- - - - - - 0x008D85 02:AD75: 00        .byte $00   ; 
- - - - - - 0x008D86 02:AD76: 80        .byte $80   ; 
- - - - - - 0x008D87 02:AD77: 5F        .byte $5F   ; 
- - - - - - 0x008D88 02:AD78: 05        .byte $05   ; 
- - - - - - 0x008D89 02:AD79: 00        .byte $00   ; 
- - - - - - 0x008D8A 02:AD7A: 80        .byte $80   ; 
- - - - - - 0x008D8B 02:AD7B: 60        .byte $60   ; 
- - - - - - 0x008D8C 02:AD7C: 04        .byte $04   ; 
- - - - - - 0x008D8D 02:AD7D: 70        .byte $70   ; <p>
- - - - - - 0x008D8E 02:AD7E: 80        .byte $80   ; 
- - - - - - 0x008D8F 02:AD7F: 60        .byte $60   ; 

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
- D 0 - - - 0x0095F0 02:B5E0: 00        .byte $00   ; 
- D 0 - - - 0x0095F1 02:B5E1: 20        .byte $20   ; 
- D 0 - - - 0x0095F2 02:B5E2: 10        .byte $10   ; 
- D 0 - - - 0x0095F3 02:B5E3: 20        .byte $20   ; 
- D 0 - - - 0x0095F4 02:B5E4: 10        .byte $10   ; 
- D 0 - - - 0x0095F5 02:B5E5: 10        .byte $10   ; 
- D 0 - - - 0x0095F6 02:B5E6: 10        .byte $10   ; 
- - - - - - 0x0095F7 02:B5E7: 00        .byte $00   ; 
- D 0 - - - 0x0095F8 02:B5E8: 20        .byte $20   ; 
- D 0 - - - 0x0095F9 02:B5E9: 40        .byte $40   ; 
- - - - - - 0x0095FA 02:B5EA: 20        .byte $20   ; 
- D 0 - - - 0x0095FB 02:B5EB: 50        .byte $50   ; <P>
- - - - - - 0x0095FC 02:B5EC: 00        .byte $00   ; 
- - - - - - 0x0095FD 02:B5ED: 00        .byte $00   ; 
- D 0 - - - 0x0095FE 02:B5EE: 10        .byte $10   ; 
- D 0 - - - 0x0095FF 02:B5EF: 05        .byte $05   ; 
- D 0 - - - 0x009600 02:B5F0: 30        .byte $30   ; <0>
- D 0 - - - 0x009601 02:B5F1: 03        .byte $03   ; 
- D 0 - - - 0x009602 02:B5F2: 10        .byte $10   ; 
- D 0 - - - 0x009603 02:B5F3: 20        .byte $20   ; 
- D 0 - - - 0x009604 02:B5F4: 20        .byte $20   ; 
- - - - - - 0x009605 02:B5F5: 00        .byte $00   ; 
- D 0 - - - 0x009606 02:B5F6: 05        .byte $05   ; 
- D 0 - - - 0x009607 02:B5F7: 03        .byte $03   ; 
- D 0 - - - 0x009608 02:B5F8: 20        .byte $20   ; 
- D 0 - - - 0x009609 02:B5F9: 40        .byte $40   ; 
- D 0 - - - 0x00960A 02:B5FA: 10        .byte $10   ; 
- D 0 - - - 0x00960B 02:B5FB: 20        .byte $20   ; 
- D 0 - - - 0x00960C 02:B5FC: 20        .byte $20   ; 
- D 0 - - - 0x00960D 02:B5FD: 20        .byte $20   ; 
- - - - - - 0x00960E 02:B5FE: 00        .byte $00   ; 
- D 0 - - - 0x00960F 02:B5FF: 30        .byte $30   ; <0>
- D 0 - - - 0x009610 02:B600: 20        .byte $20   ; 
- D 0 - - - 0x009611 02:B601: 20        .byte $20   ; 
- D 0 - - - 0x009612 02:B602: 30        .byte $30   ; <0>
- D 0 - - - 0x009613 02:B603: 50        .byte $50   ; <P>
- D 0 - - - 0x009614 02:B604: 40        .byte $40   ; 
- D 0 - - - 0x009615 02:B605: 10        .byte $10   ; 
- D 0 - - - 0x009616 02:B606: 60        .byte $60   ; 
- D 0 - - - 0x009617 02:B607: 30        .byte $30   ; <0>
- - - - - - 0x009618 02:B608: F0        .byte $F0   ; 
- - - - - - 0x009619 02:B609: 00        .byte $00   ; 
- - - - - - 0x00961A 02:B60A: F0        .byte $F0   ; 
- D 0 - - - 0x00961B 02:B60B: 00        .byte $00   ; 
- - - - - - 0x00961C 02:B60C: F0        .byte $F0   ; 
- - - - - - 0x00961D 02:B60D: 00        .byte $00   ; 
- - - - - - 0x00961E 02:B60E: F0        .byte $F0   ; 
- D 0 - - - 0x00961F 02:B60F: 00        .byte $00   ; 
- - - - - - 0x009620 02:B610: 00        .byte $00   ; 
- - - - - - 0x009621 02:B611: 00        .byte $00   ; 
- - - - - - 0x009622 02:B612: 00        .byte $00   ; 
- - - - - - 0x009623 02:B613: 00        .byte $00   ; 
- D 0 - - - 0x009624 02:B614: 10        .byte $10   ; 
- D 0 - - - 0x009625 02:B615: 30        .byte $30   ; <0>
- D 0 - - - 0x009626 02:B616: 20        .byte $20   ; 
- D 0 - - - 0x009627 02:B617: 50        .byte $50   ; <P>
- D 0 - - - 0x009628 02:B618: 30        .byte $30   ; <0>
- - - - - - 0x009629 02:B619: 00        .byte $00   ; 
- - - - - - 0x00962A 02:B61A: 92        .byte $92   ; 
- - - - - - 0x00962B 02:B61B: 96        .byte $96   ; 
- D 0 - - - 0x00962C 02:B61C: 92        .byte $92   ; 
- D 0 - - - 0x00962D 02:B61D: 96        .byte $96   ; 
- - - - - - 0x00962E 02:B61E: 92        .byte $92   ; 
- - - - - - 0x00962F 02:B61F: 96        .byte $96   ; 
- D 0 - - - 0x009630 02:B620: 92        .byte $92   ; 
- D 0 - - - 0x009631 02:B621: 96        .byte $96   ; 
- - - - - - 0x009632 02:B622: 92        .byte $92   ; 
- - - - - - 0x009633 02:B623: 96        .byte $96   ; 
- D 0 - - - 0x009634 02:B624: 92        .byte $92   ; 
- D 0 - - - 0x009635 02:B625: 96        .byte $96   ; 
- D 0 - - - 0x009636 02:B626: 92        .byte $92   ; 
- D 0 - - - 0x009637 02:B627: 96        .byte $96   ; 
- D 0 - - - 0x009638 02:B628: 93        .byte $93   ; 
- D 0 - - - 0x009639 02:B629: 96        .byte $96   ; 
- D 0 - - - 0x00963A 02:B62A: 95        .byte $95   ; 
- D 0 - - - 0x00963B 02:B62B: 96        .byte $96   ; 
- D 0 - - - 0x00963C 02:B62C: 92        .byte $92   ; 
- D 0 - - - 0x00963D 02:B62D: 96        .byte $96   ; 
- D 0 - - - 0x00963E 02:B62E: 92        .byte $92   ; 
- D 0 - - - 0x00963F 02:B62F: 96        .byte $96   ; 
- D 0 - - - 0x009640 02:B630: 92        .byte $92   ; 
- D 0 - - - 0x009641 02:B631: 96        .byte $96   ; 
- D 0 - - - 0x009642 02:B632: 98        .byte $98   ; 
- D 0 - - - 0x009643 02:B633: 96        .byte $96   ; 
- - - - - - 0x009644 02:B634: 92        .byte $92   ; 
- - - - - - 0x009645 02:B635: 96        .byte $96   ; 
- D 0 - - - 0x009646 02:B636: 92        .byte $92   ; 
- D 0 - - - 0x009647 02:B637: 96        .byte $96   ; 
- D 0 - - - 0x009648 02:B638: 9A        .byte $9A   ; 
- D 0 - - - 0x009649 02:B639: 96        .byte $96   ; 
- D 0 - - - 0x00964A 02:B63A: 9C        .byte $9C   ; 
- D 0 - - - 0x00964B 02:B63B: 96        .byte $96   ; 
- - - - - - 0x00964C 02:B63C: 92        .byte $92   ; 
- - - - - - 0x00964D 02:B63D: 96        .byte $96   ; 
- - - - - - 0x00964E 02:B63E: 92        .byte $92   ; 
- - - - - - 0x00964F 02:B63F: 96        .byte $96   ; 
- - - - - - 0x009650 02:B640: 92        .byte $92   ; 
- - - - - - 0x009651 02:B641: 96        .byte $96   ; 
- - - - - - 0x009652 02:B642: 92        .byte $92   ; 
- - - - - - 0x009653 02:B643: 96        .byte $96   ; 
- D 0 - - - 0x009654 02:B644: 9F        .byte $9F   ; 
- D 0 - - - 0x009655 02:B645: 96        .byte $96   ; 
- D 0 - - - 0x009656 02:B646: 92        .byte $92   ; 
- D 0 - - - 0x009657 02:B647: 96        .byte $96   ; 
- - - - - - 0x009658 02:B648: 92        .byte $92   ; 
- - - - - - 0x009659 02:B649: 96        .byte $96   ; 
- - - - - - 0x00965A 02:B64A: 92        .byte $92   ; 
- - - - - - 0x00965B 02:B64B: 96        .byte $96   ; 
- D 0 - - - 0x00965C 02:B64C: A1        .byte $A1   ; 
- D 0 - - - 0x00965D 02:B64D: 96        .byte $96   ; 
- D 0 - - - 0x00965E 02:B64E: A3        .byte $A3   ; 
- D 0 - - - 0x00965F 02:B64F: 96        .byte $96   ; 
- D 0 - - - 0x009660 02:B650: A5        .byte $A5   ; 
- D 0 - - - 0x009661 02:B651: 96        .byte $96   ; 
- D 0 - - - 0x009662 02:B652: 92        .byte $92   ; 
- D 0 - - - 0x009663 02:B653: 96        .byte $96   ; 
- D 0 - - - 0x009664 02:B654: 92        .byte $92   ; 
- D 0 - - - 0x009665 02:B655: 96        .byte $96   ; 
- D 0 - - - 0x009666 02:B656: 92        .byte $92   ; 
- D 0 - - - 0x009667 02:B657: 96        .byte $96   ; 
- D 0 - - - 0x009668 02:B658: A7        .byte $A7   ; 
- D 0 - - - 0x009669 02:B659: 96        .byte $96   ; 
- D 0 - - - 0x00966A 02:B65A: A9        .byte $A9   ; 
- D 0 - - - 0x00966B 02:B65B: 96        .byte $96   ; 
- D 0 - - - 0x00966C 02:B65C: AC        .byte $AC   ; 
- D 0 - - - 0x00966D 02:B65D: 96        .byte $96   ; 
- D 0 - - - 0x00966E 02:B65E: B0        .byte $B0   ; 
- D 0 - - - 0x00966F 02:B65F: 96        .byte $96   ; 
- D 0 - - - 0x009670 02:B660: B3        .byte $B3   ; 
- D 0 - - - 0x009671 02:B661: 96        .byte $96   ; 
- D 0 - - - 0x009672 02:B662: B6        .byte $B6   ; 
- D 0 - - - 0x009673 02:B663: 96        .byte $96   ; 
- D 0 - - - 0x009674 02:B664: B9        .byte $B9   ; 
- D 0 - - - 0x009675 02:B665: 96        .byte $96   ; 
- D 0 - - - 0x009676 02:B666: BC        .byte $BC   ; 
- D 0 - - - 0x009677 02:B667: 96        .byte $96   ; 
- D 0 - - - 0x009678 02:B668: C1        .byte $C1   ; 
- D 0 - - - 0x009679 02:B669: 96        .byte $96   ; 
- D 0 - - - 0x00967A 02:B66A: C4        .byte $C4   ; 
- D 0 - - - 0x00967B 02:B66B: 96        .byte $96   ; 
- D 0 - - - 0x00967C 02:B66C: CA        .byte $CA   ; 
- D 0 - - - 0x00967D 02:B66D: 96        .byte $96   ; 
- D 0 - - - 0x00967E 02:B66E: CE        .byte $CE   ; 
- D 0 - - - 0x00967F 02:B66F: 96        .byte $96   ; 
- - - - - - 0x009680 02:B670: 92        .byte $92   ; 
- - - - - - 0x009681 02:B671: 96        .byte $96   ; 
- D 0 - - - 0x009682 02:B672: D3        .byte $D3   ; 
- D 0 - - - 0x009683 02:B673: 96        .byte $96   ; 
- - - - - - 0x009684 02:B674: 92        .byte $92   ; 
- - - - - - 0x009685 02:B675: 96        .byte $96   ; 
- D 0 - - - 0x009686 02:B676: 92        .byte $92   ; 
- D 0 - - - 0x009687 02:B677: 96        .byte $96   ; 
- D 0 - - - 0x009688 02:B678: D5        .byte $D5   ; 
- D 0 - - - 0x009689 02:B679: 96        .byte $96   ; 
- - - - - - 0x00968A 02:B67A: 92        .byte $92   ; 
- - - - - - 0x00968B 02:B67B: 96        .byte $96   ; 
- D 0 - - - 0x00968C 02:B67C: D7        .byte $D7   ; 
- D 0 - - - 0x00968D 02:B67D: 96        .byte $96   ; 
- D 0 - - - 0x00968E 02:B67E: DB        .byte $DB   ; 
- D 0 - - - 0x00968F 02:B67F: 96        .byte $96   ; 
- D 0 - - - 0x009690 02:B680: E0        .byte $E0   ; 
- D 0 - - - 0x009691 02:B681: 96        .byte $96   ; 
- D 0 - - - 0x009692 02:B682: E3        .byte $E3   ; 
- D 0 - - - 0x009693 02:B683: 96        .byte $96   ; 
- D 0 - - - 0x009694 02:B684: E5        .byte $E5   ; 
- D 0 - - - 0x009695 02:B685: 96        .byte $96   ; 
- D 0 - - - 0x009696 02:B686: E7        .byte $E7   ; 
- D 0 - - - 0x009697 02:B687: 96        .byte $96   ; 
- D 0 - - - 0x009698 02:B688: 92        .byte $92   ; 
- D 0 - - - 0x009699 02:B689: 96        .byte $96   ; 
- - - - - - 0x00969A 02:B68A: 92        .byte $92   ; 
- - - - - - 0x00969B 02:B68B: 96        .byte $96   ; 
- D 0 - - - 0x00969C 02:B68C: E9        .byte $E9   ; 
- D 0 - - - 0x00969D 02:B68D: 96        .byte $96   ; 
- - - - - - 0x00969E 02:B68E: 92        .byte $92   ; 
- - - - - - 0x00969F 02:B68F: 96        .byte $96   ; 
- D 0 - - - 0x0096A0 02:B690: 92        .byte $92   ; 
- D 0 - - - 0x0096A1 02:B691: 96        .byte $96   ; 
- D 0 - I - 0x0096A2 02:B692: FF        .byte $FF   ; 
- D 0 - I - 0x0096A3 02:B693: 01        .byte $01   ; 
- D 0 - I - 0x0096A4 02:B694: FF        .byte $FF   ; 
- D 0 - I - 0x0096A5 02:B695: 01        .byte $01   ; 
- D 0 - I - 0x0096A6 02:B696: 02        .byte $02   ; 
- D 0 - I - 0x0096A7 02:B697: FF        .byte $FF   ; 
- D 0 - I - 0x0096A8 02:B698: 01        .byte $01   ; 
- - - - - - 0x0096A9 02:B699: FF        .byte $FF   ; 
- D 0 - I - 0x0096AA 02:B69A: 00        .byte $00   ; 
- - - - - - 0x0096AB 02:B69B: FF        .byte $FF   ; 
- D 0 - I - 0x0096AC 02:B69C: 00        .byte $00   ; 
- D 0 - I - 0x0096AD 02:B69D: 02        .byte $02   ; 
- - - - - - 0x0096AE 02:B69E: FF        .byte $FF   ; 
- D 0 - I - 0x0096AF 02:B69F: 01        .byte $01   ; 
- - - - - - 0x0096B0 02:B6A0: FF        .byte $FF   ; 
- D 0 - I - 0x0096B1 02:B6A1: 00        .byte $00   ; 
- - - - - - 0x0096B2 02:B6A2: FF        .byte $FF   ; 
- D 0 - I - 0x0096B3 02:B6A3: 00        .byte $00   ; 
- D 0 - I - 0x0096B4 02:B6A4: FF        .byte $FF   ; 
- D 0 - I - 0x0096B5 02:B6A5: 02        .byte $02   ; 
- - - - - - 0x0096B6 02:B6A6: FF        .byte $FF   ; 
- D 0 - I - 0x0096B7 02:B6A7: 04        .byte $04   ; 
- D 0 - I - 0x0096B8 02:B6A8: FF        .byte $FF   ; 
- D 0 - I - 0x0096B9 02:B6A9: 02        .byte $02   ; 
- D 0 - I - 0x0096BA 02:B6AA: 03        .byte $03   ; 
- D 0 - I - 0x0096BB 02:B6AB: FF        .byte $FF   ; 
- D 0 - I - 0x0096BC 02:B6AC: 01        .byte $01   ; 
- D 0 - I - 0x0096BD 02:B6AD: 02        .byte $02   ; 
- D 0 - I - 0x0096BE 02:B6AE: 05        .byte $05   ; 
- D 0 - I - 0x0096BF 02:B6AF: FF        .byte $FF   ; 
- D 0 - I - 0x0096C0 02:B6B0: 04        .byte $04   ; 
- D 0 - I - 0x0096C1 02:B6B1: 05        .byte $05   ; 
- D 0 - I - 0x0096C2 02:B6B2: FF        .byte $FF   ; 
- D 0 - I - 0x0096C3 02:B6B3: 05        .byte $05   ; 
- D 0 - I - 0x0096C4 02:B6B4: 06        .byte $06   ; 
- D 0 - I - 0x0096C5 02:B6B5: FF        .byte $FF   ; 
- D 0 - I - 0x0096C6 02:B6B6: 04        .byte $04   ; 
- D 0 - I - 0x0096C7 02:B6B7: 05        .byte $05   ; 
- D 0 - I - 0x0096C8 02:B6B8: FF        .byte $FF   ; 
- D 0 - I - 0x0096C9 02:B6B9: 01        .byte $01   ; 
- D 0 - I - 0x0096CA 02:B6BA: 02        .byte $02   ; 
- D 0 - I - 0x0096CB 02:B6BB: FF        .byte $FF   ; 
- D 0 - I - 0x0096CC 02:B6BC: 02        .byte $02   ; 
- D 0 - I - 0x0096CD 02:B6BD: 03        .byte $03   ; 
- D 0 - I - 0x0096CE 02:B6BE: 05        .byte $05   ; 
- D 0 - I - 0x0096CF 02:B6BF: 06        .byte $06   ; 
- D 0 - I - 0x0096D0 02:B6C0: FF        .byte $FF   ; 
- D 0 - I - 0x0096D1 02:B6C1: 05        .byte $05   ; 
- D 0 - I - 0x0096D2 02:B6C2: 07        .byte $07   ; 
- D 0 - I - 0x0096D3 02:B6C3: FF        .byte $FF   ; 
- D 0 - I - 0x0096D4 02:B6C4: 02        .byte $02   ; 
- D 0 - I - 0x0096D5 02:B6C5: 03        .byte $03   ; 
- D 0 - I - 0x0096D6 02:B6C6: 04        .byte $04   ; 
- D 0 - I - 0x0096D7 02:B6C7: 07        .byte $07   ; 
- D 0 - I - 0x0096D8 02:B6C8: 08        .byte $08   ; 
- D 0 - I - 0x0096D9 02:B6C9: FF        .byte $FF   ; 
- D 0 - I - 0x0096DA 02:B6CA: 03        .byte $03   ; 
- D 0 - I - 0x0096DB 02:B6CB: 04        .byte $04   ; 
- D 0 - I - 0x0096DC 02:B6CC: 05        .byte $05   ; 
- D 0 - I - 0x0096DD 02:B6CD: FF        .byte $FF   ; 
- D 0 - I - 0x0096DE 02:B6CE: 01        .byte $01   ; 
- D 0 - I - 0x0096DF 02:B6CF: 02        .byte $02   ; 
- D 0 - I - 0x0096E0 02:B6D0: 04        .byte $04   ; 
- D 0 - I - 0x0096E1 02:B6D1: 05        .byte $05   ; 
- - - - - - 0x0096E2 02:B6D2: FF        .byte $FF   ; 
- D 0 - I - 0x0096E3 02:B6D3: 04        .byte $04   ; 
- D 0 - I - 0x0096E4 02:B6D4: FF        .byte $FF   ; 
- D 0 - I - 0x0096E5 02:B6D5: 00        .byte $00   ; 
- - - - - - 0x0096E6 02:B6D6: FF        .byte $FF   ; 
- D 0 - I - 0x0096E7 02:B6D7: 02        .byte $02   ; 
- D 0 - I - 0x0096E8 02:B6D8: 04        .byte $04   ; 
- D 0 - I - 0x0096E9 02:B6D9: 07        .byte $07   ; 
- D 0 - I - 0x0096EA 02:B6DA: FF        .byte $FF   ; 
- D 0 - I - 0x0096EB 02:B6DB: 01        .byte $01   ; 
- D 0 - I - 0x0096EC 02:B6DC: 03        .byte $03   ; 
- D 0 - I - 0x0096ED 02:B6DD: 04        .byte $04   ; 
- D 0 - I - 0x0096EE 02:B6DE: 07        .byte $07   ; 
- D 0 - I - 0x0096EF 02:B6DF: FF        .byte $FF   ; 
- D 0 - I - 0x0096F0 02:B6E0: 02        .byte $02   ; 
- D 0 - I - 0x0096F1 02:B6E1: 04        .byte $04   ; 
- D 0 - I - 0x0096F2 02:B6E2: FF        .byte $FF   ; 
- D 0 - I - 0x0096F3 02:B6E3: 01        .byte $01   ; 
- - - - - - 0x0096F4 02:B6E4: FF        .byte $FF   ; 
- D 0 - I - 0x0096F5 02:B6E5: 04        .byte $04   ; 
- D 0 - I - 0x0096F6 02:B6E6: FF        .byte $FF   ; 
- D 0 - I - 0x0096F7 02:B6E7: 01        .byte $01   ; 
- - - - - - 0x0096F8 02:B6E8: FF        .byte $FF   ; 
- D 0 - I - 0x0096F9 02:B6E9: 00        .byte $00   ; 
- D 0 - I - 0x0096FA 02:B6EA: FF        .byte $FF   ; 
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



