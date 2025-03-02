.segment "BANK_02_1"
.include "bank_ram.inc"
.include "constants.inc"
.org $8000  ; for listing file
; 0x008010-0x00A00F
; Page 1 can transferred in 2 banks at the same time

.export loc_AD80_activate_sound_manager
.export tbl_select_characters_dialog
.export tbl_select_characters_dialog_radio
.export tbl_select_characters_dialog_losing
.export tbl_enemy_score
.export tbl_water_gap_level4
.export tbl_water_y_position
.export tbl_water_rooms_props_in
.export tbl_water_rooms_props_out
.export tbl_water_random_items
.export loc_tbl_water_item_bits

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

; -- Header --
; 1 byte - ppu frames per sound pair, FPP (0x00 - 0x0F)
; 2 byte - duty or linear control load (for the noise channel - nothing)
; 3 byte - volume
; 4 byte - sweep by default (only for pulse channel), otherwise - 0x00
; -- Sound pair --
; 1 byte - sound command:
;   FF - the last sound row
;     2 byte is missed
;   FD - the special mark
;     2 byte - sound row index  
;   EX, where X = 0,1,2,3,...,0x0F - constant volume changes (decreasing, only for pulse and noise channels)
;     X - the count of the changes (in FPP utits)
;     2 byte - the change step
;   DX, where X = 0,1,2,3,...,0x0F - constant volume changes (increasing, only for pulse and noise channels)
;     X - the count of the changes (in FPP utits)
;     2 byte - the change step
;   CX, where X = 0,1,2,3,...,0x0F - volume changes (only for pulse and noise channels)
;     X - the direction of distributions (see tbl_B21A_direction_of_distributions)
;     2 byte - length in FPP utits for next sound rows
;   B0 - go to the sound row
;     2 byte - sound row index
;   BX, where X = 1,2,3,...,0x0F - go to the sound row X times
;     2 byte:
;       If 2 byte != 0x00 then sound row index
;       else the sound row index will be used from the special mark (see sound command - FD)
;   A0 - set volume (only for pulse and noise channels)
;     2 byte - new volume value
;   A1 - set sweep (only for pulse channel)
;     2 byte - new sweep value
;   A2, 2 byte (new value):
;     For pulse channel - 0000 00DD, Duty (D)
;     For triangle channel - CRRR RRRR, length counter halt / linear counter control (C), linear counter load (R)
;     For noise channel - nothing
;   A3 - shaking effect for next sound rows (only for pulse channel)
;     2 byte - RVVVCCCC, R - need restore after using effect, VVV - value for the table of the spread, C * 2 - length in FPP utits for skip effect
;   If the sound command < 0xA0
;     For pulse channel: OOOONNNN, O - octave, N - notes (0x00 - C, 0x01 - C#, ..., 0x0B - B)
;     For noise channel: 0000PPPP, P - time period (0x00, 0x01, ..., 0x0F)
;     2 byte - length of the sound pair (The case less than 0x00 is not used)
loc_track0:
.incbin "../assets/audio_track00.bin"

loc_track1:
.incbin "../assets/audio_track01.bin"

loc_track2:
.incbin "../assets/audio_track02.bin"

loc_track3:
.incbin "../assets/audio_track03.bin"

loc_track4:
.incbin "../assets/audio_track04.bin"

loc_track5:
.incbin "../assets/audio_track05.bin"

loc_track6:
.incbin "../assets/audio_track06.bin"

loc_track7:
.incbin "../assets/audio_track07.bin"

loc_track8:
.incbin "../assets/audio_track08.bin"

loc_track3B:
.incbin "../assets/audio_track3B.bin"

loc_trackA:
- D - - - - 0x0084CD 02:84BD: FF        .byte $FF

loc_trackB:
.incbin "../assets/audio_track0B.bin"

loc_trackC:
.incbin "../assets/audio_track0C.bin"

loc_trackD:
.incbin "../assets/audio_track0D.bin"

loc_trackE:
.incbin "../assets/audio_track0E.bin"

loc_trackF:
.incbin "../assets/audio_track0F.bin"

loc_track10:
.incbin "../assets/audio_track10.bin"

loc_track11:
.incbin "../assets/audio_track11.bin"

loc_track12:
.incbin "../assets/audio_track12.bin"

loc_track13:
.incbin "../assets/audio_track13.bin"

loc_track14:
.incbin "../assets/audio_track14.bin"

loc_track15:
.incbin "../assets/audio_track15.bin"

loc_track16:
.incbin "../assets/audio_track16.bin"

loc_track17:
.incbin "../assets/audio_track17.bin"

loc_track18:
.incbin "../assets/audio_track18.bin"

loc_track19:
.incbin "../assets/audio_track19.bin"

loc_track1A:
.incbin "../assets/audio_track1A.bin"

loc_track21:
.incbin "../assets/audio_track21.bin"

loc_track1B:
.incbin "../assets/audio_track1B.bin"

loc_track1C:
.incbin "../assets/audio_track1C.bin"

loc_track1D:
.incbin "../assets/audio_track1D.bin"

loc_track1E:
.incbin "../assets/audio_track1E.bin"

loc_track1F:
.incbin "../assets/audio_track1F.bin"

loc_track20:
.incbin "../assets/audio_track20.bin"

loc_track22:
.incbin "../assets/audio_track22.bin"

loc_track23:
.incbin "../assets/audio_track23.bin"

loc_track24:
.incbin "../assets/audio_track24.bin"

loc_track25:
.incbin "../assets/audio_track25.bin"

loc_track39:
.incbin "../assets/audio_track39.bin"

loc_track3A:
.incbin "../assets/audio_track3A.bin"

loc_track9:
.incbin "../assets/audio_track09.bin"

loc_track26:
- D - - - - 0x008907 02:88F7: FF        .byte $FF

loc_track27:
- D - - - - 0x008908 02:88F8: FF        .byte $FF

loc_track28:
.incbin "../assets/audio_track28.bin"

loc_track29:
.incbin "../assets/audio_track29.bin"

loc_track2A:
.incbin "../assets/audio_track2A.bin"

loc_track2B:
- D - - - - 0x00892A 02:891A: FF        .byte $FF

loc_track2C:
.incbin "../assets/audio_track2C.bin"

loc_track2D:
.incbin "../assets/audio_track2D.bin"

loc_track2E:
- D - - - - 0x00893F 02:892F: FF        .byte $FF

loc_track2F:
- D - - - - 0x008940 02:8930: FF        .byte $FF

loc_track30:
.incbin "../assets/audio_track30.bin"

loc_track31:
.incbin "../assets/audio_track31.bin"

loc_track32:
.incbin "../assets/audio_track32.bin"

- D - - - - 0x008966 02:8956: FF        .byte $FF

loc_track33:
- D - - - - 0x008967 02:8957: FF        .byte $FF

loc_track34:
.incbin "../assets/audio_track34.bin"

loc_track35:
.incbin "../assets/audio_track35.bin"

loc_track36:
.incbin "../assets/audio_track36.bin"

loc_track37:
.incbin "../assets/audio_track37.bin"

loc_track38:
- D - - - - 0x008992 02:8982: FF        .byte $FF

loc_track3C:
- D - - - - 0x008993 02:8983: FF        .byte $FF

loc_track3D:
.incbin "../assets/audio_track3D.bin"

loc_track3E:
- D - - - - 0x00899D 02:898D: FF        .byte $FF

loc_track3F:
.incbin "../assets/audio_track3F.bin"

loc_track40:
.incbin "../assets/audio_track40.bin"

loc_track41:
.incbin "../assets/audio_track41.bin"

loc_track42:
- D - - - - 0x0089B7 02:89A7: FF        .byte $FF

loc_track43:
.incbin "../assets/audio_track43.bin"

loc_track44:
.incbin "../assets/audio_track44.bin"

loc_track45:
.incbin "../assets/audio_track45.bin"

loc_track46:
.incbin "../assets/audio_track46.bin"

loc_track47:
.incbin "../assets/audio_track47.bin"

loc_track48:
.incbin "../assets/audio_track48.bin"

loc_track49:
.incbin "../assets/audio_track49.bin"

loc_track4A:
.incbin "../assets/audio_track4A.bin"

loc_track4B:
.incbin "../assets/audio_track4B.bin"

loc_track4C:
.incbin "../assets/audio_track4C.bin"

loc_track4D:
.incbin "../assets/audio_track4D.bin"

loc_track4E:
.incbin "../assets/audio_track4E.bin"

loc_track4F:
.incbin "../assets/audio_track4F.bin"

loc_track50:
.incbin "../assets/audio_track50.bin"

loc_track51:
.incbin "../assets/audio_track51.bin"

loc_track52:
.incbin "../assets/audio_track52.bin"

loc_track53:
.incbin "../assets/audio_track53.bin"

loc_track54:
.incbin "../assets/audio_track54.bin"

loc_track55:
.incbin "../assets/audio_track55.bin"

loc_track56:
.incbin "../assets/audio_track56.bin"

loc_track57:
.incbin "../assets/audio_track57.bin"

loc_track58:
- D - - - - 0x008CE8 02:8CD8: FF        .byte $FF

loc_track59:
- D - - - - 0x008CE9 02:8CD9: FF        .byte $FF

loc_track5A:
- D - - - - 0x008CEA 02:8CDA: FF        .byte $FF

loc_track5F:
.incbin "../assets/audio_track5F.bin"

loc_track60:
.incbin "../assets/audio_track60.bin"

loc_track5B:
.incbin "../assets/audio_track5B.bin"

loc_track5C:
.incbin "../assets/audio_track5C.bin"

loc_track5D:
.incbin "../assets/audio_track5D.bin"

loc_track5E:
.incbin "../assets/audio_track5E.bin"

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
C D 1 - - - 0x008D90 02:AD80: A9 00     LDA #$00                               ;
C - - - - - 0x008D92 02:AD82: 8D 01 04  STA vApuChannelProcessed               ; clears all channels
C - - - - - 0x008D95 02:AD85: EE 06 04  INC vSoundCounter                      ;
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
bra_AD88_loop:                                                                 ; loop by sound rows (8 times)
C - - - - - 0x008D98 02:AD88: AA        TAX                                    ; x <~ sound row offset
C - - - - - 0x008D99 02:AD89: BD 11 04  LDA vSoundRowComplexChannel,X          ;
C - - - - - 0x008D9C 02:AD8C: 29 03     AND #$03                               ;
C - - - - - 0x008D9E 02:AD8E: 8D 02 04  STA vCurrentApuChannel                 ; puts the apu channel (0x00, 0x01, 0x02 or 0x03)
C - - - - - 0x008DA1 02:AD91: A8        TAY                                    ; 0x00, 0x01, 0x02 or 0x03
C - - - - - 0x008DA2 02:AD92: B9 A6 B1  LDA tbl_B1A6_apu_channels_flags,Y      ; puts the apu channel flags (0x00, 0x01, 0x82 or 0x43)
C - - - - - 0x008DA5 02:AD95: 8D 03 04  STA vCurrentApuChannelFlag             ;
C - - - - - 0x008DA8 02:AD98: BD 10 04  LDA vSoundRowIndex,X                   ;
C - - - - - 0x008DAB 02:AD9B: F0 5C     BEQ bra_ADF9_init                      ; If SoundRowIndex == 0x00
C - - - - - 0x008DAD 02:AD9D: C9 FF     CMP #$FF                               ; CONSTANT - the sound row isn't activated
C - - - - - 0x008DAF 02:AD9F: F0 4F     BEQ bra_ADF0_next_row                  ; If SoundRowIndex == 0xFF
C - - - - - 0x008DB1 02:ADA1: 20 3F B1  JSR sub_B13F_shake_timer               ;
C - - - - - 0x008DB4 02:ADA4: 20 B4 B0  JSR sub_B0B4_distribute_volume         ;
C - - - - - 0x008DB7 02:ADA7: FE 1D 04  INC vSoundRowVolumeChCounter,X         ; the constant increase with further adjustments
C - - - - - 0x008DBA 02:ADAA: BD 1D 04  LDA vSoundRowVolumeChCounter,X         ;
C - - - - - 0x008DBD 02:ADAD: DD 1C 04  CMP vSoundRowVolumeChLength,X          ;
C - - - - - 0x008DC0 02:ADB0: 90 06     BCC @bra_ADB8_skip                     ; If the counter < the length
C - - - - - 0x008DC2 02:ADB2: BD 1C 04  LDA vSoundRowVolumeChLength,X          ;
C - - - - - 0x008DC5 02:ADB5: 9D 1D 04  STA vSoundRowVolumeChCounter,X         ; reset the counter to the length
@bra_ADB8_skip:
C - - - - - 0x008DC8 02:ADB8: DE 15 04  DEC vSoundRowFPPCounter,X              ; updates a counter
C - - - - - 0x008DCB 02:ADBB: 10 18     BPL bra_ADD5_skip                      ; If SoundRowFPPCounter >= 0x00
C - - - - - 0x008DCD 02:ADBD: BD 14 04  LDA vSoundRowFPPValue,X                ;
C - - - - - 0x008DD0 02:ADC0: 29 0F     AND #$0F                               ; CONSTANT - Max value (0x0F)
C - - - - - 0x008DD2 02:ADC2: 9D 15 04  STA vSoundRowFPPCounter,X              ; Initializes a counter again
C - - - - - 0x008DD5 02:ADC5: 20 FD B0  JSR sub_B0FD_change_volume_by_constant ;
C - - - - - 0x008DD8 02:ADC8: BD 24 04  LDA vSoundRowShakingEfCounter,X        ;
C - - - - - 0x008DDB 02:ADCB: F0 03     BEQ @bra_ADD0_skip                     ; If the counter == 0x00
C - - - - - 0x008DDD 02:ADCD: DE 24 04  DEC vSoundRowShakingEfCounter,X        ;
@bra_ADD0_skip:
C - - - - - 0x008DE0 02:ADD0: DE 17 04  DEC vSoundRowFPPLength,X               ;
C - - - - - 0x008DE3 02:ADD3: F0 06     BEQ bra_ADDB_skip                      ; If the length == 0x00
bra_ADD5_skip:
C - - - - - 0x008DE5 02:ADD5: 20 89 B0  JSR sub_B089_assign_main_parameters_   ;
C - - - - - 0x008DE8 02:ADD8: 4C E4 AD  JMP loc_ADE4_mark_current_channel      ;

bra_ADDB_skip:
loc_ADDB_continue:
C D 1 - - - 0x008DEB 02:ADDB: BD 23 04  LDA vSoundRowShakingEfValue,X      ;
C - - - - - 0x008DEE 02:ADDE: 9D 24 04  STA vSoundRowShakingEfCounter,X    ; restore from the sound track
C - - - - - 0x008DF1 02:ADE1: 20 38 AE  JSR sub_AE38_execute_sound_pair    ;
loc_ADE4_mark_current_channel:
C D 1 - - - 0x008DF4 02:ADE4: AC 02 04  LDY vCurrentApuChannel             ;
C - - - - - 0x008DF7 02:ADE7: B9 9E B1  LDA tbl_apu_channels,Y             ;
C - - - - - 0x008DFA 02:ADEA: 0D 01 04  ORA vApuChannelProcessed           ;
C - - - - - 0x008DFD 02:ADED: 8D 01 04  STA vApuChannelProcessed           ; the current channel is processed
bra_ADF0_next_row:
C - - - - - 0x008E00 02:ADF0: 8A        TXA                                ; a <~ sound row offset
C - - - - - 0x008E01 02:ADF1: 18        CLC                                ;
C - - - - - 0x008E02 02:ADF2: 69 15     ADC #$15                           ; CONSTANT: Sound row step, step for X
C - - - - - 0x008E04 02:ADF4: C9 A8     CMP #$A8                           ; $15+$15+$15+$15+$15+$15+$15+$15=$A8, 8 iterations for sound row
C - - - - - 0x008E06 02:ADF6: D0 90     BNE bra_AD88_loop                  ; If Register A != 0xA8
C - - - - - 0x008E08 02:ADF8: 60        RTS                                ;

loc_ADF9:
bra_ADF9_init:
C - - - - - 0x008E09 02:ADF9: BD 12 04  LDA vSoundRowTrackLow,X                     ;
C - - - - - 0x008E0C 02:ADFC: 85 FE     STA ram_00FE                                ; Low address (the current track)
C - - - - - 0x008E0E 02:ADFE: BD 13 04  LDA vSoundRowTrackHigh,X                    ;
C - - - - - 0x008E11 02:AE01: 85 FF     STA ram_00FF                                ; High address  (the current track)
C - - - - - 0x008E13 02:AE03: A0 00     LDY #$00                                    ; to 1 byte of 4
C - - - - - 0x008E15 02:AE05: B1 FE     LDA (ram_00FE),Y                            ;
C - - - - - 0x008E17 02:AE07: 29 0F     AND #$0F                                    ; CONSTANT - Max value (0x0F)
C - - - - - 0x008E19 02:AE09: 9D 14 04  STA vSoundRowFPPValue,X                     ; set the control value
C - - - - - 0x008E1C 02:AE0C: 9D 15 04  STA vSoundRowFPPCounter,X                   ; set the counter
C - - - - - 0x008E1F 02:AE0F: C8        INY                                         ; to 2 byte of 4
C - - - - - 0x008E20 02:AE10: 20 6F B0  JSR sub_B06F_prepare_duty_or_linear_counter ;
C - - - - - 0x008E23 02:AE13: C8        INY                                         ; to 3 byte of 4
C - - - - - 0x008E24 02:AE14: B1 FE     LDA (ram_00FE),Y                            ; load the volume
C - - - - - 0x008E26 02:AE16: 0D 04 04  ORA vSoundTempValue1                        ; adds the duty or the linear counter load
C - - - - - 0x008E29 02:AE19: 9D 16 04  STA vSoundRowMainChannelByte,X              ;
C - - - - - 0x008E2C 02:AE1C: C8        INY                                         ; to 4 byte of 4
C - - - - - 0x008E2D 02:AE1D: B1 FE     LDA (ram_00FE),Y                            ; load the sweep
C - - - - - 0x008E2F 02:AE1F: 9D 18 04  STA vSoundRowSweep,X                        ;
C - - - - - 0x008E32 02:AE22: A9 00     LDA #$00                                    ;
C - - - - - 0x008E34 02:AE24: 9D 19 04  STA vSoundRowMarkCacheNoReplay,X            ; clear
C - - - - - 0x008E37 02:AE27: 9D 1A 04  STA vSoundRowCacheNoReplay,X                ; clear
C - - - - - 0x008E3A 02:AE2A: 9D 1B 04  STA vSoundRowVolumeDirection,X              ; clear for the sound row
C - - - - - 0x008E3D 02:AE2D: 9D 1E 04  STA vSoundRowVolumeIterCount,X              ; reset to 0x00
C - - - - - 0x008E40 02:AE30: A9 02     LDA #$02                                    ; CONSTANT - index of the first secord row (the sound header has 4 bytes)
C - - - - - 0x008E42 02:AE32: 9D 10 04  STA vSoundRowIndex,X                        ;
C - - - - - 0x008E45 02:AE35: 4C DB AD  JMP loc_ADDB_continue                       ;

sub_AE38_execute_sound_pair:
loc_AE38_next_sound_pair:
bra_AE38_next_sound_pair:
C D 1 - - - 0x008E48 02:AE38: A0 00     LDY #$00                    ; to 1 byte of 2
C - - - - - 0x008E4A 02:AE3A: 84 FF     STY ram_00FF                ; clear
C - - - - - 0x008E4C 02:AE3C: BD 10 04  LDA vSoundRowIndex,X        ;
C - - - - - 0x008E4F 02:AE3F: 0A        ASL                         ; *2, because the sound row has 2 bytes
C - - - - - 0x008E50 02:AE40: 26 FF     ROL ram_00FF                ;
C - - - - - 0x008E52 02:AE42: 7D 12 04  ADC vSoundRowTrackLow,X     ;
C - - - - - 0x008E55 02:AE45: 85 FE     STA ram_00FE                ;
C - - - - - 0x008E57 02:AE47: BD 13 04  LDA vSoundRowTrackHigh,X    ;
C - - - - - 0x008E5A 02:AE4A: 65 FF     ADC ram_00FF                ;
C - - - - - 0x008E5C 02:AE4C: 85 FF     STA ram_00FF                ; $00FE,$00FF - the row address by the SoundRowIndex
C - - - - - 0x008E5E 02:AE4E: B1 FE     LDA (ram_00FE),Y            ; A <~ sound command
C - - - - - 0x008E60 02:AE50: FE 10 04  INC vSoundRowIndex,X        ; resolves the index for next iteration
C - - - - - 0x008E63 02:AE53: C8        INY                         ; to 2 byte of 2
C - - - - - 0x008E64 02:AE54: C9 F0     CMP #$F0                    ;
C - - - - - 0x008E66 02:AE56: B0 1A     BCS bra_AE72_Fx_command     ; If the sound command >= 0xF0
C - - - - - 0x008E68 02:AE58: C9 E0     CMP #$E0                    ;
C - - - - - 0x008E6A 02:AE5A: B0 2D     BCS bra_AE89_Ex_command     ; If the sound command >= 0xE0
C - - - - - 0x008E6C 02:AE5C: C9 D0     CMP #$D0                    ;
C - - - - - 0x008E6E 02:AE5E: B0 33     BCS bra_AE93_Dx_command     ; If the sound command >= 0xD0
C - - - - - 0x008E70 02:AE60: C9 C0     CMP #$C0                    ;
C - - - - - 0x008E72 02:AE62: B0 44     BCS bra_AEA8_Cx_command     ; If the sound command >= 0xC0
C - - - - - 0x008E74 02:AE64: C9 B0     CMP #$B0                    ;
C - - - - - 0x008E76 02:AE66: B0 5F     BCS bra_AEC7_replays        ; If the sound command >= 0xB0
C - - - - - 0x008E78 02:AE68: C9 A0     CMP #$A0                    ;
C - - - - - 0x008E7A 02:AE6A: 90 03     BCC bra_AE6F_skip           ; If the sound command < 0xA0
C - - - - - 0x008E7C 02:AE6C: 4C F5 AE  JMP loc_AEF5_Ax_command     ;

bra_AE6F_skip:
C - - - - - 0x008E7F 02:AE6F: 4C B7 AF  JMP loc_AFB7_digit_command  ;

; In: Register A - the sound command
bra_AE72_Fx_command:
C - - - - - 0x008E82 02:AE72: C9 FD     CMP #$FD                       ; CONSTANT - the mark for replays
C - - - - - 0x008E84 02:AE74: D0 09     BNE bra_AE7F_skip              ; If the sound command != 0xFD
C - - - - - 0x008E86 02:AE76: BD 10 04  LDA vSoundRowIndex,X           ;
C - - - - - 0x008E89 02:AE79: 9D 22 04  STA vSoundRowMarkForReplay,X   ; fixes the mark
bra_AE7C_repeat:
C - - - - - 0x008E8C 02:AE7C: 4C 38 AE  JMP loc_AE38_next_sound_pair   ;

; In: Register A - the sound command
bra_AE7F_skip:
C - - - - - 0x008E8F 02:AE7F: C9 FF     CMP #$FF                       ; CONSTANT - the last sound row
C - - - - - 0x008E91 02:AE81: D0 F9     BNE bra_AE7C_repeat            ; If the sound command != 0xFF
C - - - - - 0x008E93 02:AE83: 9D 10 04  STA vSoundRowIndex,X           ; <~ 0xFF (the sound row isn't activated)
C - - - - - 0x008E96 02:AE86: 4C 51 B0  JMP loc_B051_skip_channel      ;

; In: Register A - the sound command
bra_AE89_Ex_command:
C - - - - - 0x008E99 02:AE89: 29 0F     AND #$0F                           ; the mask for the count
C - - - - - 0x008E9B 02:AE8B: 49 FF     EOR #$FF                           ;
C - - - - - 0x008E9D 02:AE8D: 18        CLC                                ;
C - - - - - 0x008E9E 02:AE8E: 69 01     ADC #$01                           ; <~ 0xF0 + abs(0x0F - 0x0X) + 1, the step is changing in the negative direction
C - - - - - 0x008EA0 02:AE90: 4C 95 AE  JMP loc_AE95_set_volume_iteration  ;

; In: Register A - the sound command
bra_AE93_Dx_command:
C - - - - - 0x008EA3 02:AE93: 29 0F     AND #$0F                              ; !(UNUSED), the mask for the count
; In: Register A - the count of the volume iteration
loc_AE95_set_volume_iteration:
C D 1 - - - 0x008EA5 02:AE95: 2C 03 04  BIT vCurrentApuChannelFlag            ;
C - - - - - 0x008EA8 02:AE98: 30 0B     BMI @bra_AEA5_triangle                ; If the current channel is triangle
C - - - - - 0x008EAA 02:AE9A: 9D 1E 04  STA vSoundRowVolumeIterCount,X        ; <~ {0x00, 0x01, ..., 0x0F} or {0xF0, 0xF1, ..., 0xFF}
C - - - - - 0x008EAD 02:AE9D: B1 FE     LDA (ram_00FE),Y                      ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x008EAF 02:AE9F: 9D 1F 04  STA vSoundRowVolumeIterStep,X         ;
C - - - - - 0x008EB2 02:AEA2: 9D 20 04  STA vSoundRowVolumeIterCurrentStep,X  ;
@bra_AEA5_triangle:
C - - - - - 0x008EB5 02:AEA5: 4C 38 AE  JMP loc_AE38_next_sound_pair          ;

; In: Register A - the sound command
bra_AEA8_Cx_command:
C - - - - - 0x008EB8 02:AEA8: 29 0F     AND #$0F                        ;
C - - - - - 0x008EBA 02:AEAA: 8D 04 04  STA vSoundTempValue1            ; <~ the direction
C - - - - - 0x008EBD 02:AEAD: 2C 03 04  BIT vCurrentApuChannelFlag      ;
C - - - - - 0x008EC0 02:AEB0: 30 12     BMI @bra_AEC4_next              ; If the current channel is triangle
C - - - - - 0x008EC2 02:AEB2: BD 16 04  LDA vSoundRowMainChannelByte,X  ;
C - - - - - 0x008EC5 02:AEB5: 29 10     AND #$10                        ; CONSTANT - constant volume (C) https://www.nesdev.org/wiki/APU (#Pulse #Noise)
C - - - - - 0x008EC7 02:AEB7: F0 0B     BEQ @bra_AEC4_next              ; If constant volume (C) is cleared
C - - - - - 0x008EC9 02:AEB9: B1 FE     LDA (ram_00FE),Y                ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x008ECB 02:AEBB: 9D 1C 04  STA vSoundRowVolumeChLength,X   ;
C - - - - - 0x008ECE 02:AEBE: AD 04 04  LDA vSoundTempValue1            ;
C - - - - - 0x008ED1 02:AEC1: 9D 1B 04  STA vSoundRowVolumeDirection,X  ; <~ {0x00, 0x01, ..., 0x0F}, for {0x0A, ..., 0x0F} - this is not implemented
@bra_AEC4_next:
C - - - - - 0x008ED4 02:AEC4: 4C 38 AE  JMP loc_AE38_next_sound_pair    ;

; In: Register A - the sound command
bra_AEC7_replays:
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
C - - - - - 0x008F02 02:AEF2: 4C 38 AE  JMP loc_AE38_next_sound_pair        ;

; In: Register A - the sound command
loc_AEF5_Ax_command:
C D 1 - - - 0x008F05 02:AEF5: D0 0F     BNE bra_AF06_skip              ; If the sound command != 0xA0
C - - - - - 0x008F07 02:AEF7: 2C 03 04  BIT vCurrentApuChannelFlag     ;
C - - - - - 0x008F0A 02:AEFA: 30 13     BMI bra_AF0F_triangle          ; If the current channel is triangle
C - - - - - 0x008F0C 02:AEFC: BD 16 04  LDA vSoundRowMainChannelByte,X ;
C - - - - - 0x008F0F 02:AEFF: 29 C0     AND #$C0                       ; CONSTANT - Duty (D) https://www.nesdev.org/wiki/APU (#Pulse)
C - - - - - 0x008F11 02:AF01: 11 FE     ORA (ram_00FE),Y               ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x008F13 02:AF03: 4C 23 AF  JMP loc_AF23_continue          ;

; In: Register A - the sound command
bra_AF06_skip:
C - - - - - 0x008F16 02:AF06: C9 A1     CMP #$A1                        ; CONSTANT - the new sweep
C - - - - - 0x008F18 02:AF08: D0 08     BNE bra_AF12_skip               ; If the sound command != 0xA1
C - - - - - 0x008F1A 02:AF0A: B1 FE     LDA (ram_00FE),Y                ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x008F1C 02:AF0C: 9D 18 04  STA vSoundRowSweep,X            ; adds the new sweep
bra_AF0F_triangle:
C - - - - - 0x008F1F 02:AF0F: 4C 38 AE  JMP loc_AE38_next_sound_pair    ;

bra_AF12_skip:
C - - - - - 0x008F22 02:AF12: C9 A2     CMP #$A2                                    ; CONSTANT - the new volume
C - - - - - 0x008F24 02:AF14: D0 13     BNE bra_AF29_skip                           ; If the sound command != 0xA2
C - - - - - 0x008F26 02:AF16: 20 6F B0  JSR sub_B06F_prepare_duty_or_linear_counter ;
C - - - - - 0x008F29 02:AF19: B0 08     BCS bra_AF23_triangle                       ; If the current channel is triangle
C - - - - - 0x008F2B 02:AF1B: BD 16 04  LDA vSoundRowMainChannelByte,X              ;
C - - - - - 0x008F2E 02:AF1E: 29 1F     AND #$1F                                    ; CONSTANT - constant volume (C) + volume
C - - - - - 0x008F30 02:AF20: 0D 04 04  ORA vSoundTempValue1                        ; adds the duty
loc_AF23_continue:
bra_AF23_triangle:
C D 1 - - - 0x008F33 02:AF23: 9D 16 04  STA vSoundRowMainChannelByte,X              ; a changed value
C - - - - - 0x008F36 02:AF26: 4C 38 AE  JMP loc_AE38_next_sound_pair                ;

bra_AF29_skip:
C - - - - - 0x008F39 02:AF29: C9 A3     CMP #$A3                        ; CONSTANT - shaking effect
C - - - - - 0x008F3B 02:AF2B: D0 1C     BNE bra_AF49_skip               ; If the sound command != 0xA3
C - - - - - 0x008F3D 02:AF2D: B1 FE     LDA (ram_00FE),Y                ;
C - - - - - 0x008F3F 02:AF2F: 30 1C     BMI bra_AF4D_restore            ; If the second element of the sound pair >= 0x80 (is negative)
C - - - - - 0x008F41 02:AF31: 48        PHA                             ; store second of the sound pair
C - - - - - 0x008F42 02:AF32: 29 0F     AND #$0F                        ; the mask for the skip
C - - - - - 0x008F44 02:AF34: 0A        ASL                             ; *2
C - - - - - 0x008F45 02:AF35: 9D 23 04  STA vSoundRowShakingEfValue,X   ; initializes
C - - - - - 0x008F48 02:AF38: 9D 24 04  STA vSoundRowShakingEfCounter,X ; initializes
C - - - - - 0x008F4B 02:AF3B: 68        PLA                             ; retrieve second of the sound pair (see $AF31)
C - - - - - 0x008F4C 02:AF3C: 29 70     AND #$70                        ; the mask for the table of spread
C - - - - - 0x008F4E 02:AF3E: 0D 02 04  ORA vCurrentApuChannel          ;
C - - - - - 0x008F51 02:AF41: 09 80     ORA #$80                        ; CONSTANT - using shaking effect
C - - - - - 0x008F53 02:AF43: 9D 11 04  STA vSoundRowComplexChannel,X   ;
C - - - - - 0x008F56 02:AF46: 4C 38 AE  JMP loc_AE38_next_sound_pair    ;

bra_AF49_skip:
C - - - - - 0x008F59 02:AF49: C9 A4     CMP #$A4                       ; !(UNUSED)
C - - - - - 0x008F5B 02:AF4B: D0 0B     BNE bra_AF58                   ; !(UNUSED)
bra_AF4D_restore:
C - - - - - 0x008F5D 02:AF4D: BD 11 04  LDA vSoundRowComplexChannel,X  ; !(UNUSED)
C - - - - - 0x008F60 02:AF50: 29 03     AND #$03                       ; !(UNUSED)
C - - - - - 0x008F62 02:AF52: 9D 11 04  STA vSoundRowComplexChannel,X  ; !(UNUSED)
C - - - - - 0x008F65 02:AF55: 4C 38 AE  JMP loc_AE38_next_sound_pair   ; !(UNUSED)

bra_AF58:
C - - - - - 0x008F68 02:AF58: C9 A5     CMP #$A5                       ; !(UNUSED)
C - - - - - 0x008F6A 02:AF5A: D0 08     BNE bra_AF64                   ; !(UNUSED)
C - - - - - 0x008F6C 02:AF5C: B1 FE     LDA (ram_00FE),Y               ; !(UNUSED)
C - - - - - 0x008F6E 02:AF5E: 8D 07 04  STA ram_0407                   ; !(UNUSED)
C - - - - - 0x008F71 02:AF61: 4C 38 AE  JMP loc_AE38_next_sound_pair   ; !(UNUSED)

bra_AF64:
C - - - - - 0x008F74 02:AF64: C9 AD     CMP #$AD                       ; !(UNUSED)
C - - - - - 0x008F76 02:AF66: D0 26     BNE bra_AF8E                   ; !(UNUSED)
C - - - - - 0x008F78 02:AF68: B1 FE     LDA (ram_00FE),Y               ; !(UNUSED)
C - - - - - 0x008F7A 02:AF6A: 48        PHA                            ; !(UNUSED)
C - - - - - 0x008F7B 02:AF6B: A9 00     LDA #$00                       ; !(UNUSED)
C - - - - - 0x008F7D 02:AF6D: 85 FF     STA ram_00FF                   ; !(UNUSED)
C - - - - - 0x008F7F 02:AF6F: BD 10 04  LDA vSoundRowIndex,X           ; !(UNUSED)
C - - - - - 0x008F82 02:AF72: 0A        ASL                            ; !(UNUSED)
C - - - - - 0x008F83 02:AF73: 26 FF     ROL ram_00FF                   ; !(UNUSED)
C - - - - - 0x008F85 02:AF75: 7D 12 04  ADC vSoundRowTrackLow,X        ; !(UNUSED)
C - - - - - 0x008F88 02:AF78: 9D 12 04  STA vSoundRowTrackLow,X        ; !(UNUSED)
C - - - - - 0x008F8B 02:AF7B: BD 13 04  LDA vSoundRowTrackHigh,X       ; !(UNUSED)
C - - - - - 0x008F8E 02:AF7E: 65 FF     ADC ram_00FF                   ; !(UNUSED)
C - - - - - 0x008F90 02:AF80: 9D 13 04  STA vSoundRowTrackHigh,X       ; !(UNUSED)
C - - - - - 0x008F93 02:AF83: A9 00     LDA #$00                       ; !(UNUSED)
C - - - - - 0x008F95 02:AF85: 9D 10 04  STA vSoundRowIndex,X           ; !(UNUSED)
C - - - - - 0x008F98 02:AF88: 68        PLA                            ; !(UNUSED)
C - - - - - 0x008F99 02:AF89: D0 10     BNE bra_AF9B                   ; !(UNUSED)
C - - - - - 0x008F9B 02:AF8B: 4C F9 AD  JMP loc_ADF9                   ; !(UNUSED)

bra_AF8E:
C - - - - - 0x008F9E 02:AF8E: C9 AE     CMP #$AE                       ; !(UNUSED)
C - - - - - 0x008FA0 02:AF90: D0 0C     BNE bra_AF9E                   ; !(UNUSED)
C - - - - - 0x008FA2 02:AF92: 1E 14 04  ASL vSoundRowFPPValue,X        ; !(UNUSED)
C - - - - - 0x008FA5 02:AF95: B1 FE     LDA (ram_00FE),Y               ; !(UNUSED)
C - - - - - 0x008FA7 02:AF97: 0A        ASL                            ; !(UNUSED)
C - - - - - 0x008FA8 02:AF98: 7E 14 04  ROR vSoundRowFPPValue,X        ; !(UNUSED)
bra_AF9B:
C - - - - - 0x008FAB 02:AF9B: 4C 38 AE  JMP loc_AE38_next_sound_pair   ; !(UNUSED)

bra_AF9E:
C - - - - - 0x008FAE 02:AF9E: C9 AF     CMP #$AF                       ; !(UNUSED)
C - - - - - 0x008FB0 02:AFA0: D0 12     BNE @bra_AFB4_skip             ; !(UNUSED)
C - - - - - 0x008FB2 02:AFA2: B1 FE     LDA (ram_00FE),Y               ; !(UNUSED)
C - - - - - 0x008FB4 02:AFA4: 29 0F     AND #$0F                       ; !(UNUSED)
C - - - - - 0x008FB6 02:AFA6: 9D 15 04  STA vSoundRowFPPCounter,X      ; !(UNUSED)
C - - - - - 0x008FB9 02:AFA9: BD 14 04  LDA vSoundRowFPPValue,X        ; !(UNUSED)
C - - - - - 0x008FBC 02:AFAC: 29 F0     AND #$F0                       ; !(UNUSED)
C - - - - - 0x008FBE 02:AFAE: 1D 15 04  ORA vSoundRowFPPCounter,X      ; !(UNUSED)
C - - - - - 0x008FC1 02:AFB1: 9D 14 04  STA vSoundRowFPPValue,X        ; !(UNUSED)
@bra_AFB4_skip:
C - - - - - 0x008FC4 02:AFB4: 4C 38 AE  JMP loc_AE38_next_sound_pair   ; !(UNUSED)

; In: Register A - the sound command
loc_AFB7_digit_command:
C D 1 - - - 0x008FC7 02:AFB7: 2C 03 04  BIT vCurrentApuChannelFlag  ;
C - - - - - 0x008FCA 02:AFBA: 70 7F     BVS bra_B03B_noise          ; If the current channel is noise
C - - - - - 0x008FCC 02:AFBC: 48        PHA                         ; store the sound command
C - - - - - 0x008FCD 02:AFBD: 29 0F     AND #$0F                    ; the mask for the note
C - - - - - 0x008FCF 02:AFBF: C9 0C     CMP #$0C                    ; CONSTANT - Max value (less than 0x0C)
C - - - - - 0x008FD1 02:AFC1: 90 03     BCC bra_AFC6_play_note      ; If the note < 0x0C
C - - - - - 0x008FD3 02:AFC3: 4C 49 B0  JMP loc_B049_mute_channel   ;

; In: Register A - the note (0x00, 0x01, ..., 0x0B)
bra_AFC6_play_note:
C - - - - - 0x008FD6 02:AFC6: 0A        ASL                                       ; *2, because the timer has 2 bytes (high and low)
C - - - - - 0x008FD7 02:AFC7: A8        TAY                                       ;
C - - - - - 0x008FD8 02:AFC8: BD 14 04  LDA vSoundRowFPPValue,X                   ;
C - - - - - 0x008FDB 02:AFCB: 10 05     BPL bra_AFD2_skip                         ; If SoundRowFPPValue >= 0x00
C - - - - - 0x008FDD 02:AFCD: 98        TYA                                       ; !(UNUSED)
C - - - - - 0x008FDE 02:AFCE: 18        CLC                                       ; !(UNUSED)
C - - - - - 0x008FDF 02:AFCF: 69 18     ADC #$18                                  ; !(UNUSED)
C - - - - - 0x008FE1 02:AFD1: A8        TAY                                       ; !(UNUSED)
bra_AFD2_skip:
C - - - - - 0x008FE2 02:AFD2: B9 6E B1  LDA tbl_B16E_period_by_notes,Y            ;
C - - - - - 0x008FE5 02:AFD5: 8D 04 04  STA vSoundTempValue1                      ; timer low for 0th octave
C - - - - - 0x008FE8 02:AFD8: B9 6F B1  LDA tbl_B16E_period_by_notes + 1,Y        ;
C - - - - - 0x008FEB 02:AFDB: 8D 05 04  STA vSoundTempValue2                      ; timer high for 0th octave
C - - - - - 0x008FEE 02:AFDE: 68        PLA                                       ; retrieve the sound command (see $AFBC)
C - - - - - 0x008FEF 02:AFDF: 29 F0     AND #$F0                                  ; the mask for the octave
C - - - - - 0x008FF1 02:AFE1: F0 0E     BEQ bra_AFF1_set_internal_channel_params_ ; If the octave == 0x00
C - - - - - 0x008FF3 02:AFE3: 4A        LSR                                       ;
C - - - - - 0x008FF4 02:AFE4: 4A        LSR                                       ;
C - - - - - 0x008FF5 02:AFE5: 4A        LSR                                       ;
C - - - - - 0x008FF6 02:AFE6: 4A        LSR                                       ; gets high half-byte
C - - - - - 0x008FF7 02:AFE7: A8        TAY                                       ; set loop counter (the number of the octaves)
@bra_AFE8_loop:                                                                   ; loop by y
C - - - - - 0x008FF8 02:AFE8: 4E 05 04  LSR vSoundTempValue2                      ;
C - - - - - 0x008FFB 02:AFEB: 6E 04 04  ROR vSoundTempValue1                      ; TimerHigh:TimerLow / 2
C - - - - - 0x008FFE 02:AFEE: 88        DEY                                       ; decrement loop counter
C - - - - - 0x008FFF 02:AFEF: D0 F7     BNE @bra_AFE8_loop                        ; If Register Y != 0
; In: $0404 - timer low or noise period low
; In: $0405 - timer high or noise period high
bra_AFF1_set_internal_channel_params_:
C - - - - - 0x009001 02:AFF1: A0 01     LDY #$01                                  ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x009003 02:AFF3: B1 FE     LDA (ram_00FE),Y                          ;
C - - - - - 0x009005 02:AFF5: 9D 17 04  STA vSoundRowFPPLength,X                  ;
C - - - - - 0x009008 02:AFF8: A9 00     LDA #$00                                  ;
C - - - - - 0x00900A 02:AFFA: 9D 1D 04  STA vSoundRowVolumeChCounter,X            ; reset to 0x00 for next sound row
C - - - - - 0x00900D 02:AFFD: 20 61 B0  JSR sub_B061_prepare_current_channel      ;
C - - - - - 0x009010 02:B000: B9 9E B1  LDA tbl_apu_channels,Y                    ;
C - - - - - 0x009013 02:B003: 0D 00 04  ORA vApuChannelStatus                     ; enables the current channel
C - - - - - 0x009016 02:B006: 8D 00 04  STA vApuChannelStatus                     ; caches
C - - - - - 0x009019 02:B009: 8D 15 40  STA APU_STATUS                            ; re-enables the status
C - - - - - 0x00901C 02:B00C: AD 05 04  LDA vSoundTempValue2                      ;
C - - - - - 0x00901F 02:B00F: 48        PHA                                       ; store timer high or noise period high
C - - - - - 0x009020 02:B010: AD 04 04  LDA vSoundTempValue1                      ;
C - - - - - 0x009023 02:B013: 48        PHA                                       ; store timer low or noise period low
C - - - - - 0x009024 02:B014: 20 8C B0  JSR sub_B08C_assign_main_parameters_ex    ;
C - - - - - 0x009027 02:B017: BD 18 04  LDA vSoundRowSweep,X                      ;
C - - - - - 0x00902A 02:B01A: 99 01 40  STA $4001,Y                               ; assign a sweep (pulse channel) or 0x00
C - - - - - 0x00902D 02:B01D: 68        PLA                                       ; retrieve timer low or noise period low (see $B013)
C - - - - - 0x00902E 02:B01E: 99 02 40  STA $4002,Y                               ; assign a timer low/noise period low
C - - - - - 0x009031 02:B021: C9 02     CMP #$02                                  ; CONSTANT - min value of the timer
C - - - - - 0x009033 02:B023: 90 08     BCC @bra_B02D_min                         ; If Register A < 0x02
C - - - - - 0x009035 02:B025: C9 FE     CMP #$FE                                  ; CONSTANT - max value of the timer
C - - - - - 0x009037 02:B027: 90 06     BCC @bra_B02F_skip                        ; If Register A < 0xFE
C - - - - - 0x009039 02:B029: A9 FD     LDA #$FD                                  ; the correction value #1
C - - - - - 0x00903B 02:B02B: D0 02     BNE @bra_B02F_skip                        ; Always true

@bra_B02D_min:
C - - - - - 0x00903D 02:B02D: A9 02     LDA #$02                                  ; the correction value #2
@bra_B02F_skip:
C - - - - - 0x00903F 02:B02F: 9D 21 04  STA vSoundRowTimerCorrection,X            ;
C - - - - - 0x009042 02:B032: 68        PLA                                       ; retrieve timer high or noise period high (see $B00F)
C - - - - - 0x009043 02:B033: 29 07     AND #$07                                  ; the mask for timer high
C - - - - - 0x009045 02:B035: 09 08     ORA #$08                                  ; CONSTANT - Length counter load is 0x01
C - - - - - 0x009047 02:B037: 99 03 40  STA $4003,Y                               ; assign a timer high/noise period high
C - - - - - 0x00904A 02:B03A: 60        RTS                                       ;

; In: Register A - the sound command
bra_B03B_noise:
C - - - - - 0x00904B 02:B03B: C9 10     CMP #$10                                  ; CONSTANT - Max value (for the sound command < 0xA0)
C - - - - - 0x00904D 02:B03D: B0 0B     BCS bra_B04A_mute_noise                   ; If the sound command >= 0x10
C - - - - - 0x00904F 02:B03F: 8D 04 04  STA vSoundTempValue1                      ; period <~ the sound command (less than 0x10)
C - - - - - 0x009052 02:B042: A9 00     LDA #$00                                  ;
C - - - - - 0x009054 02:B044: 8D 05 04  STA vSoundTempValue2                      ; Noise period high is always zero
C - - - - - 0x009057 02:B047: F0 A8     BEQ bra_AFF1_set_internal_channel_params_ ; Always true

loc_B049_mute_channel:
C D 1 - - - 0x009059 02:B049: 68        PLA                                    ; retrieve the sound command (see $AFBC)
; In: Register A - the sound command
bra_B04A_mute_noise:
C - - - - - 0x00905A 02:B04A: A0 01     LDY #$01                               ; to 2 byte of 2 (second of the sound pair)
C - - - - - 0x00905C 02:B04C: B1 FE     LDA (ram_00FE),Y                       ;
C - - - - - 0x00905E 02:B04E: 9D 17 04  STA vSoundRowFPPLength,X               ;
loc_B051_skip_channel:
C D 1 - - - 0x009061 02:B051: 20 61 B0  JSR sub_B061_prepare_current_channel   ;
C - - - - - 0x009064 02:B054: B9 A2 B1  LDA tbl_B1A2_skip_apu_channel,Y        ;
C - - - - - 0x009067 02:B057: 2D 00 04  AND vApuChannelStatus                  ; filters by all enabled channels
C - - - - - 0x00906A 02:B05A: 8D 15 40  STA APU_STATUS                         ; re-enables the status
C - - - - - 0x00906D 02:B05D: 8D 00 04  STA vApuChannelStatus                  ; caches
C - - - - - 0x009070 02:B060: 60        RTS                                    ;

; Out: Register Y - 0x00 - pulse 1, 0x01 - pulse 2, 0x02 - triangle, 0x03 - noise
sub_B061_prepare_current_channel:
C - - - - - 0x009071 02:B061: AC 02 04  LDY vCurrentApuChannel     ;
C - - - - - 0x009074 02:B064: B9 9E B1  LDA tbl_apu_channels,Y     ;
C - - - - - 0x009077 02:B067: 2C 01 04  BIT vApuChannelProcessed   ;
C - - - - - 0x00907A 02:B06A: F0 02     BEQ @bra_B06E_RTS          ; If the current channel isn't processed
C - - - - - 0x00907C 02:B06C: 68        PLA                        ;
C - - - - - 0x00907D 02:B06D: 68        PLA                        ; double return (i.e. from sub_AE38_execute_sound_pair)
@bra_B06E_RTS:
C - - - - - 0x00907E 02:B06E: 60        RTS                        ;

; Out: the carry status (analog return true or false)
; 1, if the triangle linear counter is set
; 0, otherwise.
sub_B06F_prepare_duty_or_linear_counter:
C - - - - - 0x00907F 02:B06F: 2C 03 04  BIT vCurrentApuChannelFlag  ;
C - - - - - 0x009082 02:B072: 30 0C     BMI bra_B080_triangle       ; If the current channel is triangle
C - - - - - 0x009084 02:B074: B1 FE     LDA (ram_00FE),Y            ; to 2 byte of 2 for the sound row (or 2 byte of 4 for the sound header)
C - - - - - 0x009086 02:B076: 6A        ROR                         ;
C - - - - - 0x009087 02:B077: 6A        ROR                         ;
C - - - - - 0x009088 02:B078: 6A        ROR                         ; moves to high bits
C - - - - - 0x009089 02:B079: 29 C0     AND #$C0                    ; CONSTANT - Duty (D) https://www.nesdev.org/wiki/APU (#Pulse)
C - - - - - 0x00908B 02:B07B: 8D 04 04  STA vSoundTempValue1        ; caches the duty
C - - - - - 0x00908E 02:B07E: 18        CLC                         ; return false
C - - - - - 0x00908F 02:B07F: 60        RTS                         ;

bra_B080_triangle:
C - - - - - 0x009090 02:B080: B1 FE     LDA (ram_00FE),Y            ; to 2 byte of 2 for the sound row (or 2 byte of 4 for the sound header)
C - - - - - 0x009092 02:B082: 29 7F     AND #$7F                    ; CONSTANT - linear counter load (R) https://www.nesdev.org/wiki/APU (#Triangle)
C - - - - - 0x009094 02:B084: 8D 04 04  STA vSoundTempValue1        ; caches the linear counter load
C - - - - - 0x009097 02:B087: 38        SEC                         ; return true
C - - - - - 0x009098 02:B088: 60        RTS                         ;

sub_B089_assign_main_parameters_:
C - - - - - 0x009099 02:B089: 20 61 B0  JSR sub_B061_prepare_current_channel  ;
; In; Register Y - apu channel
; Out: Register Y - 0x00 (pulse1), 0x04 (pulse2), 0x08 (triangle), 0x0C (noise)
sub_B08C_assign_main_parameters_ex:
C - - - - - 0x00909C 02:B08C: C0 02     CPY #$02                              ; CONSTANT - the triangle channel
C - - - - - 0x00909E 02:B08E: F0 15     BEQ bra_B0A5_triangle                 ; If the channel == 0x02
C - - - - - 0x0090A0 02:B090: BD 1B 04  LDA vSoundRowVolumeDirection,X        ;
C - - - - - 0x0090A3 02:B093: D0 2B     BNE bra_B0C0_skip                     ; If the direction != 0x00
C - - - - - 0x0090A5 02:B095: 20 AB B0  JSR sub_B0AB_get_channel_offset       ;
C - - - - - 0x0090A8 02:B098: BD 16 04  LDA vSoundRowMainChannelByte,X        ;
C - - - - - 0x0090AB 02:B09B: 29 10     AND #$10                              ; CONSTANT - constant volume (C) https://www.nesdev.org/wiki/APU (#Pulse #Noise)
C - - - - - 0x0090AD 02:B09D: 0A        ASL                                   ; to envelope loop / length counter halt (L)
C - - - - - 0x0090AE 02:B09E: 1D 16 04  ORA vSoundRowMainChannelByte,X        ; the resolves for the constant volume
C - - - - - 0x0090B1 02:B0A1: 99 00 40  STA $4000,Y                           ; assign a main channel parameters
C - - - - - 0x0090B4 02:B0A4: 60        RTS                                   ;

bra_B0A5_triangle:
C - - - - - 0x0090B5 02:B0A5: BD 16 04  LDA vSoundRowMainChannelByte,X   ;
C - - - - - 0x0090B8 02:B0A8: 8D 08 40  STA TRI_LINEAR                   ; assign a main channel parameters
; Out: Register Y - 0x00 (pulse1), 0x04 (pulse2), 0x08 (triangle), 0x0C (noise)
sub_B0AB_get_channel_offset:
C - - - - - 0x0090BB 02:B0AB: 48        PHA                              ; store A
C - - - - - 0x0090BC 02:B0AC: AD 02 04  LDA vCurrentApuChannel           ;
C - - - - - 0x0090BF 02:B0AF: 0A        ASL                              ;
C - - - - - 0x0090C0 02:B0B0: 0A        ASL                              ; *4
C - - - - - 0x0090C1 02:B0B1: A8        TAY                              ;
C - - - - - 0x0090C2 02:B0B2: 68        PLA                              ; retrieve A (see $B0AB)
bra_B0B3_RTS:
C - - - - - 0x0090C3 02:B0B3: 60        RTS                              ;

sub_B0B4_distribute_volume:
C - - - - - 0x0090C4 02:B0B4: 20 61 B0  JSR sub_B061_prepare_current_channel      ;
C - - - - - 0x0090C7 02:B0B7: C0 02     CPY #$02                                  ; CONSTANT - the triangle channel
C - - - - - 0x0090C9 02:B0B9: F0 F8     BEQ bra_B0B3_RTS                          ; If the channel == 0x02
C - - - - - 0x0090CB 02:B0BB: BD 1B 04  LDA vSoundRowVolumeDirection,X            ;
C - - - - - 0x0090CE 02:B0BE: F0 F3     BEQ bra_B0B3_RTS                          ; If the direction == 0x00
; In: Register A - the direction of distributions
bra_B0C0_skip:
C - - - - - 0x0090D0 02:B0C0: 0A        ASL                                       ;
C - - - - - 0x0090D1 02:B0C1: 0A        ASL                                       ;
C - - - - - 0x0090D2 02:B0C2: 0A        ASL                                       ;
C - - - - - 0x0090D3 02:B0C3: 0A        ASL                                       ; puts in high half-byte
C - - - - - 0x0090D4 02:B0C4: 48        PHA                                       ; store the direction, one of {0x00, 0x10, 0x20, ..., 0x90}
C - - - - - 0x0090D5 02:B0C5: A9 00     LDA #$00                                  ;
C - - - - - 0x0090D7 02:B0C7: 8D 04 04  STA vSoundTempValue1                      ; prepares a temp value
C - - - - - 0x0090DA 02:B0CA: BD 1D 04  LDA vSoundRowVolumeChCounter,X            ; distributes the counter between 0x00 and vSoundRowVolumeChLength
C - - - - - 0x0090DD 02:B0CD: A0 03     LDY #$03                                  ; set loop counter
@bra_B0CF_loop:                                                                   ; loop by y (4 times)
C - - - - - 0x0090DF 02:B0CF: 0A        ASL                                       ; *2
C - - - - - 0x0090E0 02:B0D0: DD 1C 04  CMP vSoundRowVolumeChLength,X             ;
C - - - - - 0x0090E3 02:B0D3: 90 03     BCC @bra_B0D8                             ; If the current value < vSoundRowVolumeChLength
C - - - - - 0x0090E5 02:B0D5: FD 1C 04  SBC vSoundRowVolumeChLength,X             ; resolves the current value for the range [0x00, vSoundRowVolumeChLength]
@bra_B0D8:
C - - - - - 0x0090E8 02:B0D8: 2E 04 04  ROL vSoundTempValue1                      ; +1, if the carry flag is set
C - - - - - 0x0090EB 02:B0DB: 88        DEY                                       ; decrement loop counter
C - - - - - 0x0090EC 02:B0DC: 10 F1     BPL @bra_B0CF_loop                        ; If Register Y >= 0x00
C - - - - - 0x0090EE 02:B0DE: 68        PLA                                       ; retrieve the direction (see $B0C4)
C - - - - - 0x0090EF 02:B0DF: 0D 04 04  ORA vSoundTempValue1                      ; + one of {0x00, 0x01, ... , 0x0F}
C - - - - - 0x0090F2 02:B0E2: A8        TAY                                       ;
C - - - - - 0x0090F3 02:B0E3: BD 16 04  LDA vSoundRowMainChannelByte,X            ;
C - - - - - 0x0090F6 02:B0E6: 29 0F     AND #$0F                                  ; CONSTANT - a volume
C - - - - - 0x0090F8 02:B0E8: 19 1A B2  ORA tbl_B21A_direction_of_distributions,Y ; <~ old volume + distributed index
C - - - - - 0x0090FB 02:B0EB: A8        TAY                                       ; gets an index
C - - - - - 0x0090FC 02:B0EC: BD 16 04  LDA vSoundRowMainChannelByte,X            ;
C - - - - - 0x0090FF 02:B0EF: 29 C0     AND #$C0                                  ; the mask for the duty
C - - - - - 0x009101 02:B0F1: 09 30     ORA #$30                                  ; CONSTANT - constant volume (C) + envelope loop / length counter halt (L)
                                                                                  ; see https://www.nesdev.org/wiki/APU (#Pulse #Noise)
C - - - - - 0x009103 02:B0F3: 19 BA B2  ORA tbl_B2BA_volumes,Y                    ; adds a new distributed volume
C - - - - - 0x009106 02:B0F6: 20 AB B0  JSR sub_B0AB_get_channel_offset           ;
C - - - - - 0x009109 02:B0F9: 99 00 40  STA $4000,Y                               ; assign a main channel parameters
C - - - - - 0x00910C 02:B0FC: 60        RTS                                       ;

sub_B0FD_change_volume_by_constant:
C - - - - - 0x00910D 02:B0FD: 2C 03 04  BIT vCurrentApuChannelFlag            ;
C - - - - - 0x009110 02:B100: 30 2E     BMI bra_B130_RTS                      ; If the current channel is triangle
C - - - - - 0x009112 02:B102: BD 1E 04  LDA vSoundRowVolumeIterCount,X        ;
C - - - - - 0x009115 02:B105: F0 29     BEQ bra_B130_RTS                      ; If the count is 0x00
C - - - - - 0x009117 02:B107: DE 20 04  DEC vSoundRowVolumeIterCurrentStep,X  ;
C - - - - - 0x00911A 02:B10A: D0 24     BNE bra_B130_RTS                      ; If the current step (the step counter) != 0x00
C - - - - - 0x00911C 02:B10C: BD 1F 04  LDA vSoundRowVolumeIterStep,X         ;
C - - - - - 0x00911F 02:B10F: 9D 20 04  STA vSoundRowVolumeIterCurrentStep,X  ; resets the current step to the step from the sound row
C - - - - - 0x009122 02:B112: BD 16 04  LDA vSoundRowMainChannelByte,X        ;
C - - - - - 0x009125 02:B115: 29 1F     AND #$1F                              ; CONSTANT - constant volume (C) + max volume
C - - - - - 0x009127 02:B117: 8D 04 04  STA vSoundTempValue1                  ;
C - - - - - 0x00912A 02:B11A: 29 10     AND #$10                              ; CONSTANT - constant volume (C)
C - - - - - 0x00912C 02:B11C: F0 12     BEQ bra_B130_RTS                      ; If constant volume (C) is cleared
C - - - - - 0x00912E 02:B11E: BD 1E 04  LDA vSoundRowVolumeIterCount,X        ;
C - - - - - 0x009131 02:B121: 30 0E     BMI bra_B131_decreasing               ; If the count is 0xFX
C - - - - - 0x009133 02:B123: DE 1E 04  DEC vSoundRowVolumeIterCount,X        ; the volume is changing
C - - - - - 0x009136 02:B126: AD 04 04  LDA vSoundTempValue1                  ;
C - - - - - 0x009139 02:B129: C9 1F     CMP #$1F                              ; CONSTANT - constant volume (C) + max volume
C - - - - - 0x00913B 02:B12B: F0 03     BEQ bra_B130_RTS                      ; If the volume is maximum
C - - - - - 0x00913D 02:B12D: FE 16 04  INC vSoundRowMainChannelByte,X        ; increases
bra_B130_RTS:
C - - - - - 0x009140 02:B130: 60        RTS                                   ;

bra_B131_decreasing:
C - - - - - 0x009141 02:B131: FE 1E 04  INC vSoundRowVolumeIterCount,X        ; the volume is changing
C - - - - - 0x009144 02:B134: AD 04 04  LDA vSoundTempValue1                  ;
C - - - - - 0x009147 02:B137: C9 10     CMP #$10                              ; CONSTANT - constant volume (C) + min volume
C - - - - - 0x009149 02:B139: F0 F5     BEQ bra_B130_RTS                      ; If the volume is minimum
C - - - - - 0x00914B 02:B13B: DE 16 04  DEC vSoundRowMainChannelByte,X        ; decreases
C - - - - - 0x00914E 02:B13E: 60        RTS                                   ;

sub_B13F_shake_timer:
C - - - - - 0x00914F 02:B13F: 20 61 B0  JSR sub_B061_prepare_current_channel  ;
C - - - - - 0x009152 02:B142: 2C 03 04  BIT vCurrentApuChannelFlag            ;
C - - - - - 0x009155 02:B145: 70 26     BVS bra_B16D_RTS                      ; If the current channel is noise
C - - - - - 0x009157 02:B147: BD 24 04  LDA vSoundRowShakingEfCounter,X       ;
C - - - - - 0x00915A 02:B14A: D0 21     BNE bra_B16D_RTS                      ; If the skip counter != 0x00
C - - - - - 0x00915C 02:B14C: AD 06 04  LDA vSoundCounter                     ;
C - - - - - 0x00915F 02:B14F: 29 0F     AND #$0F                              ; 
C - - - - - 0x009161 02:B151: 8D 04 04  STA vSoundTempValue1                  ; puts one of (0x00, 0x01, ..., 0x0F)
C - - - - - 0x009164 02:B154: BD 11 04  LDA vSoundRowComplexChannel,X         ;
C - - - - - 0x009167 02:B157: 10 14     BPL bra_B16D_RTS                      ; If the shaking effect is not used
C - - - - - 0x009169 02:B159: 29 70     AND #$70                              ; CONSTANT - the mask for the index
C - - - - - 0x00916B 02:B15B: 18        CLC                                   ;
C - - - - - 0x00916C 02:B15C: 6D 04 04  ADC vSoundTempValue1                  ; <~ the index + one of (0x00, 0x01, ..., 0x0F)
C - - - - - 0x00916F 02:B15F: A8        TAY                                   ;
C - - - - - 0x009170 02:B160: B9 AA B1  LDA tbl_B1AA_shaking_spread,Y         ;
C - - - - - 0x009173 02:B163: 18        CLC                                   ;
C - - - - - 0x009174 02:B164: 7D 21 04  ADC vSoundRowTimerCorrection,X        ; the timer value is corrected
C - - - - - 0x009177 02:B167: 20 AB B0  JSR sub_B0AB_get_channel_offset       ;
C - - - - - 0x00917A 02:B16A: 99 02 40  STA $4002,Y                           ; assign a timer low/noise period low
bra_B16D_RTS:
C - - - - - 0x00917D 02:B16D: 60        RTS                                   ;

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
- D - - - - 0x009196 02:B186: 7E        .byte $7E, $06   ; !(UNUSED)
- D - - - - 0x009198 02:B188: 21        .byte $21, $06   ; !(UNUSED)
- D - - - - 0x00919A 02:B18A: C9        .byte $C9, $05   ; !(UNUSED)
- D - - - - 0x00919C 02:B18C: 76        .byte $76, $05   ; !(UNUSED)
- D - - - - 0x00919E 02:B18E: 27        .byte $27, $05   ; !(UNUSED)
- D - - - - 0x0091A0 02:B190: DD        .byte $DD, $04   ; !(UNUSED)
- D - - - - 0x0091A2 02:B192: 96        .byte $96, $04   ; !(UNUSED)
- D - - - - 0x0091A4 02:B194: 55        .byte $55, $04   ; !(UNUSED)
- D - - - - 0x0091A6 02:B196: 17        .byte $17, $04   ; !(UNUSED)
- D - - - - 0x0091A8 02:B198: DD        .byte $DD, $03   ; !(UNUSED)
- D - - - - 0x0091AA 02:B19A: A5        .byte $A5, $03   ; !(UNUSED)
- D - - - - 0x0091AC 02:B19C: 71        .byte $71, $03   ; !(UNUSED)

tbl_apu_channels:
- D 1 - - - 0x0091AE 02:B19E: 01        .byte $01   ; Flag: pulse channel 1
- D 1 - - - 0x0091AF 02:B19F: 02        .byte $02   ; Flag: pulse channel 2
- D 1 - - - 0x0091B0 02:B1A0: 04        .byte $04   ; Flag: triangle channel
- D 1 - - - 0x0091B1 02:B1A1: 08        .byte $08   ; Flag: noise channel

tbl_B1A2_skip_apu_channel:
- D 1 - - - 0x0091B2 02:B1A2: 0E        .byte $0E   ; Skip pulse channel 1
- D 1 - - - 0x0091B3 02:B1A3: 0D        .byte $0D   ; Skip pulse channel 2
- D 1 - - - 0x0091B4 02:B1A4: 0B        .byte $0B   ; Skip triangle channel
- D 1 - - - 0x0091B5 02:B1A5: 07        .byte $07   ; Skip noise channel

tbl_B1A6_apu_channels_flags:
- D 1 - - - 0x0091B6 02:B1A6: 00        .byte $00   ; pulse channel 1
- D 1 - - - 0x0091B7 02:B1A7: 01        .byte $01   ; pulse channel 2
- D 1 - - - 0x0091B8 02:B1A8: 82        .byte $82   ; triangle channel
- D 1 - - - 0x0091B9 02:B1A9: 43        .byte $43   ; noise channel

tbl_B1AA_shaking_spread:
- D - - - - 0x0091BA 02:B1AA: 00        .byte $00, $00, $01, $01, $00, $00, $FF, $FF, $00, $00, $01, $01, $00, $00, $FF, $FF
- D 1 - - - 0x0091CA 02:B1BA: 00        .byte $00, $00, $00, $00, $01, $01, $01, $01, $00, $00, $00, $00, $FF, $FF, $FF, $FF
- D 1 - - - 0x0091DA 02:B1CA: 00        .byte $00, $01, $02, $01, $00, $FF, $FE, $FF, $00, $01, $02, $01, $00, $FF, $FE, $FF
- D - - - - 0x0091EA 02:B1DA: 00        .byte $00, $00, $01, $01, $02, $02, $01, $01, $00, $00, $FF, $FF, $FE, $FE, $FF, $FF
- D - - - - 0x0091FA 02:B1EA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF
- D - - - - 0x00920A 02:B1FA: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE
- D 1 - - - 0x00921A 02:B20A: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

tbl_B21A_direction_of_distributions:
- D - - - - 0x00922A 02:B21A: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
- D - - - - 0x00923A 02:B22A: F0        .byte $F0, $E0, $D0, $C0, $B0, $A0, $90, $80, $70, $60, $50, $40, $30, $20, $10, $00
- D - - - - 0x00924A 02:B23A: 00        .byte $00, $10, $20, $30, $40, $50, $60, $70, $80, $90, $A0, $B0, $C0, $D0, $E0, $F0
- D - - - - 0x00925A 02:B24A: F0        .byte $F0, $E0, $D0, $C0, $B0, $A0, $90, $80, $80, $90, $A0, $B0, $C0, $D0, $E0, $F0
- D - - - - 0x00926A 02:B25A: 80        .byte $80, $90, $A0, $B0, $C0, $D0, $E0, $F0, $F0, $E0, $D0, $C0, $B0, $A0, $90, $80
- D - - - - 0x00927A 02:B26A: F0        .byte $F0, $D0, $B0, $90, $70, $50, $30, $10, $E0, $C0, $A0, $80, $60, $40, $20, $00
- D - - - - 0x00928A 02:B27A: F0        .byte $F0, $E0, $D0, $C0, $C0, $D0, $E0, $D0, $C0, $A0, $80, $60, $40, $20, $10, $00
- D - - - - 0x00929A 02:B28A: F0        .byte $F0, $D0, $B0, $90, $A0, $B0, $90, $70, $60, $50, $40, $30, $20, $10, $10, $00
- D - - - - 0x0092AA 02:B29A: 40        .byte $40, $40, $40, $40, $40, $40, $40, $60, $60, $70, $80, $A0, $C0, $F0, $B0, $80
- D 1 - - - 0x0092BA 02:B2AA: F0        .byte $F0, $F0, $A0, $80, $F0, $F0, $A0, $80, $70, $70, $60, $60, $50, $50, $40, $20

tbl_B2BA_volumes:
- D - - - - 0x0092CA 02:B2BA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x0092DA 02:B2CA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
- D - - - - 0x0092EA 02:B2DA: 00        .byte $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $02, $02, $02, $02
- D - - - - 0x0092FA 02:B2EA: 00        .byte $00, $00, $00, $01, $01, $01, $01, $01, $02, $02, $02, $02, $02, $03, $03, $03
- D - - - - 0x00930A 02:B2FA: 00        .byte $00, $00, $01, $01, $01, $01, $02, $02, $02, $02, $03, $03, $03, $03, $04, $04
- D - - - - 0x00931A 02:B30A: 00        .byte $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $04, $04, $04, $05, $05
- D - - - - 0x00932A 02:B31A: 00        .byte $00, $00, $01, $01, $02, $02, $02, $03, $03, $04, $04, $04, $05, $05, $06, $06
- D - - - - 0x00933A 02:B32A: 00        .byte $00, $00, $01, $01, $02, $02, $03, $03, $04, $04, $05, $05, $06, $06, $07, $07
- D - - - - 0x00934A 02:B33A: 00        .byte $00, $01, $01, $02, $02, $03, $03, $04, $04, $05, $05, $06, $06, $07, $07, $08
- D - - - - 0x00935A 02:B34A: 00        .byte $00, $01, $01, $02, $02, $03, $04, $04, $05, $05, $06, $07, $07, $08, $08, $09
- D - - - - 0x00936A 02:B35A: 00        .byte $00, $01, $01, $02, $03, $03, $04, $05, $05, $06, $07, $07, $08, $09, $09, $0A
- D - - - - 0x00937A 02:B36A: 00        .byte $00, $01, $01, $02, $03, $04, $04, $05, $06, $07, $07, $08, $09, $0A, $0A, $0B
- D - - - - 0x00938A 02:B37A: 00        .byte $00, $01, $02, $02, $03, $04, $05, $06, $06, $07, $08, $09, $0A, $0A, $0B, $0C
- D - - - - 0x00939A 02:B38A: 00        .byte $00, $01, $02, $03, $03, $04, $05, $06, $07, $08, $09, $0A, $0A, $0B, $0C, $0D
- D - - - - 0x0093AA 02:B39A: 00        .byte $00, $01, $02, $03, $04, $05, $06, $07, $07, $08, $09, $0A, $0B, $0C, $0D, $0E
- D - - - - 0x0093BA 02:B3AA: 00        .byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F

- - - - - - 0x0093CA 02:B3BA: 87        .byte $87   ; 
- - - - - - 0x0093CB 02:B3BB: 00        .byte $00   ; 
- - - - - - 0x0093CC 02:B3BC: FF        .byte $FF   ; 
- - - - - - 0x0093CD 02:B3BD: 60        .byte $60   ; 
- - - - - - 0x0093CE 02:B3BE: 10        .byte $10   ; 
- - - - - - 0x0093CF 02:B3BF: 00        .byte $00   ; 
- - - - - - 0x0093D0 02:B3C0: 71        .byte $71   ; 
- - - - - - 0x0093D1 02:B3C1: 80        .byte $80   ; 
- - - - - - 0x0093D2 02:B3C2: 60        .byte $60   ; 
- - - - - - 0x0093D3 02:B3C3: F0        .byte $F0   ; 
- - - - - - 0x0093D4 02:B3C4: 00        .byte $00   ; 
- - - - - - 0x0093D5 02:B3C5: 44        .byte $44   ; 
- - - - - - 0x0093D6 02:B3C6: 00        .byte $00   ; 
- - - - - - 0x0093D7 02:B3C7: 61        .byte $61   ; 
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
- - - - - - 0x0093E5 02:B3D5: 45        .byte $45   ; 
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
- - - - - - 0x0093F2 02:B3E2: 61        .byte $61   ; 
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
- - - - - - 0x0093FD 02:B3ED: 61        .byte $61   ; 
- - - - - - 0x0093FE 02:B3EE: 80        .byte $80   ; 
- - - - - - 0x0093FF 02:B3EF: 00        .byte $00   ; 
- - - - - - 0x009400 02:B3F0: 84        .byte $84   ; 
- - - - - - 0x009401 02:B3F1: 00        .byte $00   ; 
- - - - - - 0x009402 02:B3F2: 42        .byte $42   ; 
- - - - - - 0x009403 02:B3F3: 10        .byte $10   ; 
- - - - - - 0x009404 02:B3F4: 4B        .byte $4B   ; 
- - - - - - 0x009405 02:B3F5: 01        .byte $01   ; 
- - - - - - 0x009406 02:B3F6: 00        .byte $00   ; 
- - - - - - 0x009407 02:B3F7: 43        .byte $43   ; 
- - - - - - 0x009408 02:B3F8: 20        .byte $20   ; 
- - - - - - 0x009409 02:B3F9: 4B        .byte $4B   ; 
- - - - - - 0x00940A 02:B3FA: 02        .byte $02   ; 
- - - - - - 0x00940B 02:B3FB: 00        .byte $00   ; 
- - - - - - 0x00940C 02:B3FC: 63        .byte $63   ; 
- - - - - - 0x00940D 02:B3FD: 60        .byte $60   ; 
- - - - - - 0x00940E 02:B3FE: 00        .byte $00   ; 
- - - - - - 0x00940F 02:B3FF: 47        .byte $47   ; 

.org $9400
tbl_select_characters_dialog:
- - - - - - 0x009410 02:9400: E9 9A     .word $9AE9
- - - - - - 0x009412 02:9402: E9 9A     .word $9AE9
- D 0 - - - 0x009414 02:9404: FD 9A     .word $9AFD
- D 0 - - - 0x009416 02:9406: 11 9B     .word $9B11
- - - - - - 0x009418 02:9408: E9 9A     .word $9AE9
- - - - - - 0x00941A 02:940A: E9 9A     .word $9AE9
- D 0 - - - 0x00941C 02:940C: 25 9B     .word $9B25
- D 0 - - - 0x00941E 02:940E: 39 9B     .word $9B39
- - - - - - 0x009420 02:9410: E9 9A     .word $9AE9
- - - - - - 0x009422 02:9412: E9 9A     .word $9AE9
- D 0 - - - 0x009424 02:9414: 4D 9B     .word $9B4D
- D 0 - - - 0x009426 02:9416: 61 9B     .word $9B61
- D 0 - - - 0x009428 02:9418: E9 9A     .word $9AE9
- D 0 - - - 0x00942A 02:941A: 75 9B     .word $9B75
- D 0 - - - 0x00942C 02:941C: 89 9B     .word $9B89
- D 0 - - - 0x00942E 02:941E: 9D 9B     .word $9B9D
- - - - - - 0x009430 02:9420: B1 9B     .word $9BB1
- - - - - - 0x009432 02:9422: C5 9B     .word $9BC5
- D 0 - - - 0x009434 02:9424: D9 9B     .word $9BD9
- D 0 - - - 0x009436 02:9426: ED 9B     .word $9BED
- - - - - - 0x009438 02:9428: 01 9C     .word $9C01
- - - - - - 0x00943A 02:942A: 15 9C     .word $9C15
- D 0 - - - 0x00943C 02:942C: 29 9C     .word $9C29
- D 0 - - - 0x00943E 02:942E: 3D 9C     .word $9C3D
- - - - - - 0x009440 02:9430: E9 9A     .word $9AE9
- - - - - - 0x009442 02:9432: 75 9B     .word $9B75
- D 0 - - - 0x009444 02:9434: 51 9C     .word $9C51
- D 0 - - - 0x009446 02:9436: 65 9C     .word $9C65
- - - - - - 0x009448 02:9438: B1 9B     .word $9BB1
- - - - - - 0x00944A 02:943A: C5 9B     .word $9BC5
- D 0 - - - 0x00944C 02:943C: E9 9A     .word $9AE9
- D 0 - - - 0x00944E 02:943E: 79 9C     .word $9C79
- - - - - - 0x009450 02:9440: 01 9C     .word $9C01
- - - - - - 0x009452 02:9442: 15 9C     .word $9C15
- D 0 - - - 0x009454 02:9444: 8D 9C     .word $9C8D
- D 0 - - - 0x009456 02:9446: A1 9C     .word $9CA1
- - - - - - 0x009458 02:9448: E9 9A     .word $9AE9
- - - - - - 0x00945A 02:944A: 75 9B     .word $9B75
- D 0 - - - 0x00945C 02:944C: B5 9C     .word $9CB5
- D 0 - - - 0x00945E 02:944E: C9 9C     .word $9CC9
- - - - - - 0x009460 02:9450: B1 9B     .word $9BB1
- - - - - - 0x009462 02:9452: C5 9B     .word $9BC5
- D 0 - - - 0x009464 02:9454: DD 9C     .word $9CDD
- D 0 - - - 0x009466 02:9456: F1 9C     .word $9CF1
- - - - - - 0x009468 02:9458: 01 9C     .word $9C01
- - - - - - 0x00946A 02:945A: 15 9C     .word $9C15
- D 0 - - - 0x00946C 02:945C: 05 9D     .word $9D05
- D 0 - - - 0x00946E 02:945E: 19 9D     .word $9D19

tbl_select_characters_dialog_losing:
- D 0 - - - 0x009470 02:9460: 2D 9D     .addr loc_losing_dialog1  ; CPU Address $9D2D
- D 0 - - - 0x009472 02:9462: 41 9D     .addr loc_losing_dialog2  ; CPU Address $9D41
- D 0 - - - 0x009474 02:9464: 55 9D     .addr loc_losing_dialog3  ; CPU Address $9D55
- D 0 - - - 0x009476 02:9466: 69 9D     .addr loc_losing_dialog4  ; CPU Address $9D69
- D 0 - - - 0x009478 02:9468: 7D 9D     .addr loc_losing_dialog5  ; CPU Address $9D7D
- D 0 - - - 0x00947A 02:946A: 91 9D     .addr loc_losing_dialog6  ; CPU Address $9D91
- D 0 - - - 0x00947C 02:946C: A5 9D     .addr loc_losing_dialog7  ; CPU Address $9DA5
- D 0 - - - 0x00947E 02:946E: B9 9D     .addr loc_losing_dialog8  ; CPU Address $9DB9
- D 0 - - - 0x009480 02:9470: E9 9A     .addr loc_losing_dialog9  ; CPU Address $9AE9
- D 0 - - - 0x009482 02:9472: CD 9D     .addr loc_losing_dialog10 ; CPU Address $9DCD
- D 0 - - - 0x009484 02:9474: E1 9D     .addr loc_losing_dialog11 ; CPU Address $9DE1
- D 0 - - - 0x009486 02:9476: F5 9D     .addr loc_losing_dialog12 ; CPU Address $9DF5

tbl_select_characters_dialog_radio:
- D 0 - - - 0x009488 02:9478: 09 9E     .addr loc_radio_dialog1  ; CPU Address $9E09
- D 0 - - - 0x00948A 02:947A: 1D 9E     .addr loc_radio_dialog2  ; CPU Address $9E1D
- D 0 - - - 0x00948C 02:947C: 31 9E     .addr loc_radio_dialog3  ; CPU Address $9E31
- D 0 - - - 0x00948E 02:947E: 45 9E     .addr loc_radio_dialog4  ; CPU Address $9E45
- D 0 - - - 0x009490 02:9480: 59 9E     .addr loc_radio_dialog5  ; CPU Address $9E59
- D 0 - - - 0x009492 02:9482: 6D 9E     .addr loc_radio_dialog6  ; CPU Address $9E6D
- D 0 - - - 0x009494 02:9484: 81 9E     .addr loc_radio_dialog7  ; CPU Address $9E81
- D 0 - - - 0x009496 02:9486: 95 9E     .addr loc_radio_dialog8  ; CPU Address $9E95
- D 0 - - - 0x009498 02:9488: E9 9A     .addr loc_radio_dialog9  ; CPU Address $9AE9
- D 0 - - - 0x00949A 02:948A: A9 9E     .addr loc_radio_dialog10 ; CPU Address $9EA9
- D 0 - - - 0x00949C 02:948C: BD 9E     .addr loc_radio_dialog11 ; CPU Address $9EBD
- D 0 - - - 0x00949E 02:948E: D1 9E     .addr loc_radio_dialog12 ; CPU Address $9ED1

loc_tbl_water_item_bits:
- D 0 - - - 0x0094A0 02:9490: E7 99     .addr tbl_water_item_bits

tbl_water_rooms_props_in:
- D 0 - - - 0x0094A2 02:9492: EB 96     .addr loc_lvl2_water_room1_props_in   ; CPU address $96EB
- D 0 - - - 0x0094A4 02:9494: 05 97     .addr loc_lvl2_water_room2_props_in   ; CPU address $9705
- D 0 - - - 0x0094A6 02:9496: 19 97     .addr loc_lvl2_water_room3_props_in   ; CPU address $9719
- D 0 - - - 0x0094A8 02:9498: 33 97     .addr loc_lvl2_water_room4_props_in   ; CPU address $9733
- D 0 - - - 0x0094AA 02:949A: 3B 97     .addr loc_lvl2_water_room5_props_in   ; CPU address $973B
- D 0 - - - 0x0094AC 02:949C: 55 97     .addr loc_lvl2_water_room6_props_in   ; CPU address $9755
- D 0 - - - 0x0094AE 02:949E: 63 97     .addr loc_lvl2_water_room7_props_in   ; CPU address $9763
- D 0 - - - 0x0094B0 02:94A0: 77 97     .addr loc_lvl2_water_room8_props_in   ; CPU address $9777
- D 0 - - - 0x0094B2 02:94A2: 8B 97     .addr loc_lvl3_water_room1_props_in   ; CPU address $978B
- D 0 - - - 0x0094B4 02:94A4: F9 97     .addr loc_lvl3_water_room2_props_in   ; CPU address $97F9
- D 0 - - - 0x0094B6 02:94A6: 07 98     .addr loc_lvl3_water_room3_props_in   ; CPU address $9807
- D 0 - - - 0x0094B8 02:94A8: 15 98     .addr loc_lvl3_water_room4_props_in   ; CPU address $9815
- D 0 - - - 0x0094BA 02:94AA: 23 98     .addr loc_lvl3_water_room5_props_in   ; CPU address $9823
- D 0 - - - 0x0094BC 02:94AC: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094BE 02:94AE: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094C0 02:94B0: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094C2 02:94B2: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094C4 02:94B4: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094C6 02:94B6: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094C8 02:94B8: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094CA 02:94BA: 3D 98     .addr loc_lvl4_water_room1_props_in   ; CPU address $983D
- D 0 - - - 0x0094CC 02:94BC: 44 98     .addr loc_lvl4_water_room2_props_in   ; CPU address $9844
- D 0 - - - 0x0094CE 02:94BE: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094D0 02:94C0: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094D2 02:94C2: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094D4 02:94C4: 51 98     .addr loc_lvl4_water_room3_props_in   ; CPU address $9851
- D 0 - - - 0x0094D6 02:94C6: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094D8 02:94C8: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094DA 02:94CA: 5E 98     .addr loc_lvl4_water_room4_props_in   ; CPU address $985E
- D 0 - - - 0x0094DC 02:94CC: 65 98     .addr loc_lvl4_water_room5_props_in   ; CPU address $9865
- D 0 - - - 0x0094DE 02:94CE: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094E0 02:94D0: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094E2 02:94D2: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094E4 02:94D4: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094E6 02:94D6: 72 98     .addr loc_lvl4_water_room6_props_in   ; CPU address $9872
- D - - - - 0x0094E8 02:94D8: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094EA 02:94DA: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094EC 02:94DC: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094EE 02:94DE: 7F 98     .addr loc_lvl4_water_room7_props_in   ; CPU address $987F
- D 0 - - - 0x0094F0 02:94E0: 86 98     .addr loc_lvl4_water_room8_props_in   ; CPU address $9886
- D 0 - - - 0x0094F2 02:94E2: 8D 98     .addr loc_lvl4_water_room9_props_in   ; CPU address $988D
- D - - - - 0x0094F4 02:94E4: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094F6 02:94E6: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x0094F8 02:94E8: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x0094FA 02:94EA: 94 98     .addr loc_lvl4_water_room10_props_in  ; CPU address $9894
- D 0 - - - 0x0094FC 02:94EC: 9B 98     .addr loc_lvl4_water_room11_props_in  ; CPU address $989B
- D 0 - - - 0x0094FE 02:94EE: A8 98     .addr loc_lvl4_water_room12_props_in  ; CPU address $98A8
- D 0 - - - 0x009500 02:94F0: C1 98     .addr loc_lvl4_water_room13_props_in  ; CPU address $98C1
- D 0 - - - 0x009502 02:94F2: D4 98     .addr loc_lvl4_water_room14_props_in  ; CPU address $98D4
- D 0 - - - 0x009504 02:94F4: E1 98     .addr loc_lvl4_water_room15_props_in  ; CPU address $98E1
- D 0 - - - 0x009506 02:94F6: EE 98     .addr loc_lvl4_water_room16_props_in  ; CPU address $98EE
- D 0 - - - 0x009508 02:94F8: FB 98     .addr loc_lvl4_water_room17_props_in  ; CPU address $98FB
- D 0 - - - 0x00950A 02:94FA: 20 99     .addr loc_lvl4_water_room18_props_in  ; CPU address $9920
- D 0 - - - 0x00950C 02:94FC: 2D 99     .addr loc_lvl4_water_room19_props_in  ; CPU address $992D
- D 0 - - - 0x00950E 02:94FE: 4C 99     .addr loc_lvl4_water_room20_props_in  ; CPU address $994C
- D 0 - - - 0x009510 02:9500: 65 99     .addr loc_lvl4_water_room21_props_in  ; CPU address $9965
- D - - - - 0x009512 02:9502: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x009514 02:9504: 7E 99     .addr loc_lvl4_water_room22_props_in  ; CPU address $997E
- D - - - - 0x009516 02:9506: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x009518 02:9508: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x00951A 02:950A: 85 99     .addr loc_lvl4_water_room23_props_in  ; CPU address $9985
- D - - - - 0x00951C 02:950C: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x00951E 02:950E: 8C 99     .addr loc_lvl4_water_room24_props_in  ; CPU address $998C
- D 0 - - - 0x009520 02:9510: 9F 99     .addr loc_lvl4_water_room25_props_in  ; CPU address $999F
- D 0 - - - 0x009522 02:9512: B8 99     .addr loc_lvl4_water_room26_props_in  ; CPU address $99B8
- D 0 - - - 0x009524 02:9514: C5 99     .addr loc_lvl4_water_room27_props_in  ; CPU address $99C5
- D 0 - - - 0x009526 02:9516: CC 99     .addr loc_lvl4_water_room28_props_in  ; CPU address $99CC
- D 0 - - - 0x009528 02:9518: D9 99     .addr loc_lvl4_water_room29_props_in  ; CPU address $99D9
- D - - - - 0x00952A 02:951A: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x00952C 02:951C: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D 0 - - - 0x00952E 02:951E: E0 99     .addr loc_lvl4_water_room30_props_in  ; CPU address $99E0
- D - - - - 0x009530 02:9520: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703
- D - - - - 0x009532 02:9522: 03 97     .addr loc_water_empty_room_props_in   ; CPU address $9703

tbl_water_rooms_props_out:
- D 0 - - - 0x009534 02:9524: 63 9A     .addr loc_water_room1_props_out  ; CPU address $9A63
- D - - - - 0x009536 02:9526: 67 9A     .addr loc_water_room2_props_out  ; CPU address $9A67
- D 0 - - - 0x009538 02:9528: 6B 9A     .addr loc_water_room3_props_out  ; CPU address $9A6B
- D 0 - - - 0x00953A 02:952A: 71 9A     .addr loc_water_room4_props_out  ; CPU address $9A71
- D 0 - - - 0x00953C 02:952C: 72 9A     .addr loc_water_room5_props_out  ; CPU address $9A72
- D 0 - - - 0x00953E 02:952E: 77 9A     .addr loc_water_room6_props_out  ; CPU address $9A77
- D 0 - - - 0x009540 02:9530: 79 9A     .addr loc_water_room7_props_out  ; CPU address $9A79
- D 0 - - - 0x009542 02:9532: 7C 9A     .addr loc_water_room8_props_out  ; CPU address $9A7C
- D 0 - - - 0x009544 02:9534: 7F 9A     .addr loc_water_room9_props_out  ; CPU address $9A7F
- D 0 - - - 0x009546 02:9536: 82 9A     .addr loc_water_room10_props_out ; CPU address $9A82
- D - - - - 0x009548 02:9538: 83 9A     .addr loc_water_room11_props_out ; CPU address $9A83
- D - - - - 0x00954A 02:953A: 84 9A     .addr loc_water_room12_props_out ; CPU address $9A84
- D - - - - 0x00954C 02:953C: 85 9A     .addr loc_water_room13_props_out ; CPU address $9A85
- D 0 - - - 0x00954E 02:953E: 86 9A     .addr loc_water_room14_props_out ; CPU address $9A86
- D - - - - 0x009550 02:9540: 89 9A     .addr loc_water_room15_props_out ; CPU address $9A89
- D - - - - 0x009552 02:9542: 8A 9A     .addr loc_water_room16_props_out ; CPU address $9A8A
- D 0 - - - 0x009554 02:9544: 8B 9A     .addr loc_water_room17_props_out ; CPU address $9A8B
- D - - - - 0x009556 02:9546: 91 9A     .addr loc_water_room18_props_out ; CPU address $9A91
- D - - - - 0x009558 02:9548: 94 9A     .addr loc_water_room19_props_out ; CPU address $9A94
- D - - - - 0x00955A 02:954A: 97 9A     .addr loc_water_room20_props_out ; CPU address $9A97
- D - - - - 0x00955C 02:954C: 99 9A     .addr loc_water_room21_props_out ; CPU address $9A99
- D - - - - 0x00955E 02:954E: 9B 9A     .addr loc_water_room22_props_out ; CPU address $9A9B
- D - - - - 0x009560 02:9550: A2 9A     .addr loc_water_room23_props_out ; CPU address $9AA2
- D - - - - 0x009562 02:9552: A3 9A     .addr loc_water_room24_props_out ; CPU address $9AA3
- D 0 - - - 0x009564 02:9554: A5 9A     .addr loc_water_room25_props_out ; CPU address $9AA5
- D - - - - 0x009566 02:9556: A7 9A     .addr loc_water_room26_props_out ; CPU address $9AA7
- D 0 - - - 0x009568 02:9558: A8 9A     .addr loc_water_room27_props_out ; CPU address $9AA8
- D - - - - 0x00956A 02:955A: A9 9A     .addr loc_water_room28_props_out ; CPU address $9AA9
- D - - - - 0x00956C 02:955C: AA 9A     .addr loc_water_room29_props_out ; CPU address $9AAA
- D - - - - 0x00956E 02:955E: AC 9A     .addr loc_water_room30_props_out ; CPU address $9AAC
- D - - - - 0x009570 02:9560: AD 9A     .addr loc_water_room31_props_out ; CPU address $9AAD
- D - - - - 0x009572 02:9562: AE 9A     .addr loc_water_room32_props_out ; CPU address $9AAE
- D - - - - 0x009574 02:9564: AF 9A     .addr loc_water_room33_props_out ; CPU address $9AAF
- D - - - - 0x009576 02:9566: B0 9A     .addr loc_water_room34_props_out ; CPU address $9AB0
- D - - - - 0x009578 02:9568: B2 9A     .addr loc_water_room35_props_out ; CPU address $9AB2
- D 0 - - - 0x00957A 02:956A: B4 9A     .addr loc_water_room36_props_out ; CPU address $9AB4
- D 0 - - - 0x00957C 02:956C: B6 9A     .addr loc_water_room37_props_out ; CPU address $9AB6
- D - - - - 0x00957E 02:956E: B8 9A     .addr loc_water_room38_props_out ; CPU address $9AB8
- D 0 - - - 0x009580 02:9570: B9 9A     .addr loc_water_room39_props_out ; CPU address $9AB9
- D 0 - - - 0x009582 02:9572: BB 9A     .addr loc_water_room40_props_out ; CPU address $9ABB
- D - - - - 0x009584 02:9574: BE 9A     .addr loc_water_room41_props_out ; CPU address $9ABE
- D 0 - - - 0x009586 02:9576: C0 9A     .addr loc_water_room42_props_out ; CPU address $9AC0
- D - - - - 0x009588 02:9578: C7 9A     .addr loc_water_room43_props_out ; CPU address $9AC7
- D 0 - - - 0x00958A 02:957A: CA 9A     .addr loc_water_room44_props_out ; CPU address $9ACA
- D - - - - 0x00958C 02:957C: CE 9A     .addr loc_water_room45_props_out ; CPU address $9ACE
- D 0 - - - 0x00958E 02:957E: D1 9A     .addr loc_water_room46_props_out ; CPU address $9AD1
- D - - - - 0x009590 02:9580: D5 9A     .addr loc_water_room47_props_out ; CPU address $9AD5
- D 0 - - - 0x009592 02:9582: D7 9A     .addr loc_water_room48_props_out ; CPU address $9AD7
- D - - - - 0x009594 02:9584: D9 9A     .addr loc_water_room49_props_out ; CPU address $9AD9
- D - - - - 0x009596 02:9586: DA 9A     .addr loc_water_room50_props_out ; CPU address $9ADA
- D - - - - 0x009598 02:9588: DB 9A     .addr loc_water_room51_props_out ; CPU address $9ADB
- D - - - - 0x00959A 02:958A: DC 9A     .addr loc_water_room52_props_out ; CPU address $9ADC
- D - - - - 0x00959C 02:958C: DD 9A     .addr loc_water_room53_props_out ; CPU address $9ADD
- D - - - - 0x00959E 02:958E: DE 9A     .addr loc_water_room54_props_out ; CPU address $9ADE
- D - - - - 0x0095A0 02:9590: DF 9A     .addr loc_water_room55_props_out ; CPU address $9ADF
- D - - - - 0x0095A2 02:9592: E1 9A     .addr loc_water_room56_props_out ; CPU address $9AE1
- D - - - - 0x0095A4 02:9594: E2 9A     .addr loc_water_room57_props_out ; CPU address $9AE2
- D - - - - 0x0095A6 02:9596: E3 9A     .addr loc_water_room58_props_out ; CPU address $9AE3
- D - - - - 0x0095A8 02:9598: E4 9A     .addr loc_water_room59_props_out ; CPU address $9AE4
- D 0 - - - 0x0095AA 02:959A: E5 9A     .addr loc_water_room60_props_out ; CPU address $9AE5
- D - - - - 0x0095AC 02:959C: E7 9A     .addr loc_water_room61_props_out ; CPU address $9AE7
- D 0 - - - 0x0095AE 02:959E: E8 9A     .addr loc_water_room62_props_out ; CPU address $9AE8

tbl_water_random_items:
- D 0 - - - 0x0095B0 02:95A0: 08        .byte $08, $08, $08, $07, $07, $07, $06, $06, $06, $05, $05, $05, $04, $04, $04, $03
- D 0 - - - 0x0095C0 02:95B0: 03        .byte $03, $03, $02, $02, $02, $01, $01, $01, $00, $00, $00, $07, $06, $05, $04, $03

tbl_water_y_position:
- D 0 - - - 0x0095D0 02:95C0: 5F        .byte $5F, $67, $6F, $77, $7F, $87, $8F, $97, $9F, $A7, $AF, $B7, $BF, $67, $5F, $67
- D 0 - - - 0x0095E0 02:95D0: 6F        .byte $6F, $77, $7F, $87, $8F, $97, $9F, $A7, $AF, $B7, $BF, $67, $5F, $67, $6F, $77

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

; 1, 2 byte - the water gap position [Hw:Lw]
; 3 byte - the room number
; 4 byte - the character X-position (high value)
; 5 byte - the flowing offset
; 6 byte - the water room index
loc_lvl2_water_room1_props_in:
- D 0 - I - 0x0096FB 02:96EB: F0        .byte $F0, $01, $30, $00, $01, $00
- D 0 - I - 0x009701 02:96F1: 40        .byte $40, $02, $30, $01, $01, $00
- D 0 - I - 0x009707 02:96F7: F0        .byte $F0, $03, $30, $02, $01, $00
- D 0 - I - 0x00970D 02:96FD: 40        .byte $40, $50, $30, $03, $01, $00

loc_water_empty_room_props_in:
- D 0 - I - 0x009713 02:9703: FF        .byte $FF, $FF

loc_lvl2_water_room2_props_in:
- D 0 - I - 0x009715 02:9705: 40        .byte $40, $02, $31, $00, $FF, $01
- D 0 - I - 0x00971B 02:970B: F0        .byte $F0, $03, $31, $01, $FF, $01
- D 0 - I - 0x009721 02:9711: F0        .byte $F0, $06, $31, $03, $FF, $01
- D - - - - 0x009727 02:9717: FF        .byte $FF, $FF

loc_lvl2_water_room3_props_in:
- D 0 - I - 0x009729 02:9719: 40        .byte $40, $01, $32, $00, $01, $02
- D 0 - I - 0x00972F 02:971F: F0        .byte $F0, $03, $32, $02, $01, $02
- D 0 - I - 0x009735 02:9725: F0        .byte $F0, $05, $32, $04, $01, $02
- D 0 - I - 0x00973B 02:972B: 40        .byte $40, $06, $32, $05, $01, $02
- D - - - - 0x009741 02:9731: FF        .byte $FF, $FF

loc_lvl2_water_room4_props_in:
- D 0 - I - 0x009743 02:9733: 00        .byte $00, $04, $36, $00, $01, $03
- D - - - - 0x009749 02:9739: FF        .byte $FF, $FF

loc_lvl2_water_room5_props_in:
- D 0 - I - 0x00974B 02:973B: 00        .byte $00, $02, $37, $00, $FF, $04
- D 0 - I - 0x009751 02:9741: 20        .byte $20, $03, $37, $01, $FF, $04
- D 0 - I - 0x009757 02:9747: 00        .byte $00, $04, $37, $02, $FF, $04
- D 0 - I - 0x00975D 02:974D: 00        .byte $00, $08, $37, $04, $FF, $04
- D - - - - 0x009763 02:9753: FF        .byte $FF, $FF

loc_lvl2_water_room6_props_in:
- D 0 - I - 0x009765 02:9755: 00        .byte $00, $04, $38, $00, $01, $05
- D 0 - I - 0x00976B 02:975B: 00        .byte $00, $06, $38, $01, $01, $05
- D - - - - 0x009771 02:9761: FF        .byte $FF, $FF

loc_lvl2_water_room7_props_in:
- D 0 - I - 0x009773 02:9763: 00        .byte $00, $02, $39, $00, $FF, $06
- D 0 - I - 0x009779 02:9769: 00        .byte $00, $04, $39, $01, $FF, $06
- D 0 - I - 0x00977F 02:976F: 00        .byte $00, $06, $39, $02, $FF, $06
- D - - - - 0x009785 02:9775: FF        .byte $FF, $FF

loc_lvl2_water_room8_props_in:
- D 0 - I - 0x009787 02:9777: 20        .byte $20, $02, $39, $00, $01, $07
- D 0 - I - 0x00978D 02:977D: 00        .byte $00, $03, $39, $01, $01, $07
- D 0 - I - 0x009793 02:9783: 00        .byte $00, $05, $39, $02, $01, $07
- D - - - - 0x009799 02:9789: FF        .byte $FF, $FF

loc_lvl3_water_room1_props_in:
- D 0 - I - 0x00979B 02:978B: 30        .byte $30, $02, $26, $00, $01, $08
- D 0 - I - 0x0097A1 02:9791: F0        .byte $F0, $02, $26, $01, $01, $08
- D 0 - I - 0x0097A7 02:9797: 90        .byte $90, $03, $26, $02, $01, $08
- D 0 - I - 0x0097AD 02:979D: E0        .byte $E0, $04, $24, $00, $01, $09
- D 0 - I - 0x0097B3 02:97A3: 30        .byte $30, $05, $24, $00, $01, $0A
- D 0 - I - 0x0097B9 02:97A9: A0        .byte $A0, $05, $24, $00, $01, $0B
- D 0 - I - 0x0097BF 02:97AF: 30        .byte $30, $06, $24, $00, $01, $0C
- D 0 - I - 0x0097C5 02:97B5: 20        .byte $20, $07, $26, $00, $01, $0D
- D 0 - I - 0x0097CB 02:97BB: F0        .byte $F0, $07, $26, $01, $01, $0D
- D 0 - I - 0x0097D1 02:97C1: 60        .byte $60, $09, $26, $02, $01, $0D
- D 0 - I - 0x0097D7 02:97C7: 90        .byte $90, $09, $24, $00, $01, $0E
- D 0 - I - 0x0097DD 02:97CD: E0        .byte $E0, $09, $24, $00, $01, $0F
- D 0 - I - 0x0097E3 02:97D3: B0        .byte $B0, $0A, $29, $00, $01, $10
- D 0 - I - 0x0097E9 02:97D9: 90        .byte $90, $0B, $29, $01, $01, $10
- D 0 - I - 0x0097EF 02:97DF: 30        .byte $30, $0C, $29, $02, $01, $10
- D 0 - I - 0x0097F5 02:97E5: D0        .byte $D0, $0C, $29, $03, $01, $10
- D 0 - I - 0x0097FB 02:97EB: E0        .byte $E0, $0D, $29, $04, $01, $10
- D 0 - I - 0x009801 02:97F1: F0        .byte $F0, $0E, $29, $05, $01, $10
- D - - - - 0x009807 02:97F7: FF        .byte $FF, $FF

loc_lvl3_water_room2_props_in:
- D 0 - I - 0x009809 02:97F9: C0        .byte $C0, $04, $2C, $00, $FF, $11
- D - - - - 0x00980F 02:97FF: 60        .byte $60, $06, $2C, $02, $FF, $11
- D - - - - 0x009815 02:9805: FF        .byte $FF, $FF

loc_lvl3_water_room3_props_in:
- D 0 - I - 0x009817 02:9807: C0        .byte $C0, $01, $2C, $00, $01, $12
- D 0 - I - 0x00981D 02:980D: 60        .byte $60, $03, $2C, $02, $01, $12
- D - - - - 0x009823 02:9813: FF        .byte $FF, $FF

loc_lvl3_water_room4_props_in:
- D 0 - I - 0x009825 02:9815: 60        .byte $60, $01, $2B, $01, $FF, $13
- D 0 - I - 0x00982B 02:981B: C0        .byte $C0, $06, $2B, $01, $FF, $14
- D - - - - 0x009831 02:9821: FF        .byte $FF, $FF

loc_lvl3_water_room5_props_in:
- D 0 - I - 0x009833 02:9823: C0        .byte $C0, $00, $2D, $00, $01, $15
- D 0 - I - 0x009839 02:9829: C0        .byte $C0, $02, $2D, $02, $01, $15
- D 0 - I - 0x00983F 02:982F: C0        .byte $C0, $03, $2D, $03, $01, $15
- D 0 - I - 0x009845 02:9835: 60        .byte $60, $06, $2D, $06, $01, $15
- D - - - - 0x00984B 02:983B: FF        .byte $FF, $FF

loc_lvl4_water_room1_props_in:
- D 0 - I - 0x00984D 02:983D: F0        .byte $F0, $01, $3C, $00, $FF, $16
- D - - - - 0x009853 02:9843: FF        .byte $FF

loc_lvl4_water_room2_props_in:
- D 0 - I - 0x009854 02:9844: F0        .byte $F0, $01, $3D, $00, $FF, $17
- D 0 - I - 0x00985A 02:984A: F0        .byte $F0, $02, $3D, $01, $FF, $17
- D 0 - I - 0x009860 02:9850: FF        .byte $FF

loc_lvl4_water_room3_props_in:
- D 0 - I - 0x009861 02:9851: 80        .byte $80, $01, $3D, $00, $FF, $18
- D 0 - I - 0x009867 02:9857: F0        .byte $F0, $01, $3D, $01, $FF, $18
- D 0 - I - 0x00986D 02:985D: FF        .byte $FF

loc_lvl4_water_room4_props_in:
- D 0 - I - 0x00986E 02:985E: C0        .byte $C0, $00, $3C, $00, $01, $19
- D 0 - I - 0x009874 02:9864: FF        .byte $FF

loc_lvl4_water_room5_props_in:
- D 0 - I - 0x009875 02:9865: C0        .byte $C0, $00, $3C, $00, $FF, $1A
- D 0 - I - 0x00987B 02:986B: F0        .byte $F0, $02, $3C, $00, $01, $1B
- D 0 - I - 0x009881 02:9871: FF        .byte $FF

loc_lvl4_water_room6_props_in:
- D 0 - I - 0x009882 02:9872: 80        .byte $80, $01, $3D, $00, $01, $1C
- D 0 - I - 0x009888 02:9878: F0        .byte $F0, $01, $3D, $01, $01, $1C
- D 0 - I - 0x00988E 02:987E: FF        .byte $FF

loc_lvl4_water_room7_props_in:
- D 0 - I - 0x00988F 02:987F: C0        .byte $C0, $00, $3C, $00, $01, $1D
- D 0 - I - 0x009895 02:9885: FF        .byte $FF

loc_lvl4_water_room8_props_in:
- D 0 - I - 0x009896 02:9886: C0        .byte $C0, $00, $3C, $00, $00, $1E
- D - - - - 0x00989C 02:988C: FF        .byte $FF

loc_lvl4_water_room9_props_in:
- D 0 - I - 0x00989D 02:988D: F0        .byte $F0, $02, $3C, $00, $01, $1F
- D - - - - 0x0098A3 02:9893: FF        .byte $FF

loc_lvl4_water_room10_props_in:
- D 0 - I - 0x0098A4 02:9894: F0        .byte $F0, $04, $3C, $00, $FF, $20
- D - - - - 0x0098AA 02:989A: FF        .byte $FF

loc_lvl4_water_room11_props_in:
- D 0 - I - 0x0098AB 02:989B: F0        .byte $F0, $02, $3D, $00, $01, $21
- D 0 - I - 0x0098B1 02:98A1: F0        .byte $F0, $03, $3D, $01, $01, $21
- D - - - - 0x0098B7 02:98A7: FF        .byte $FF

loc_lvl4_water_room12_props_in:
- D 0 - I - 0x0098B8 02:98A8: F8        .byte $F8, $01, $3D, $00, $FF, $22
- D 0 - I - 0x0098BE 02:98AE: F8        .byte $F8, $02, $3D, $01, $FF, $22
- D 0 - I - 0x0098C4 02:98B4: 80        .byte $80, $05, $3D, $00, $FF, $23
- D 0 - I - 0x0098CA 02:98BA: F0        .byte $F0, $05, $3D, $01, $FF, $23
- D - - - - 0x0098D0 02:98C0: FF        .byte $FF

loc_lvl4_water_room13_props_in:
- D 0 - I - 0x0098D1 02:98C1: 80        .byte $80, $04, $3D, $00, $01, $24
- D 0 - I - 0x0098D7 02:98C7: F0        .byte $F0, $04, $3D, $01, $01, $24
- D 0 - I - 0x0098DD 02:98CD: F0        .byte $F0, $05, $3C, $00, $01, $25
- D - - - - 0x0098E3 02:98D3: FF        .byte $FF

loc_lvl4_water_room14_props_in:
- D 0 - I - 0x0098E4 02:98D4: F0        .byte $F0, $05, $3D, $00, $01, $26
- D 0 - I - 0x0098EA 02:98DA: F0        .byte $F0, $06, $3D, $01, $01, $26
- D - - - - 0x0098F0 02:98E0: FF        .byte $FF

loc_lvl4_water_room15_props_in:
- D 0 - I - 0x0098F1 02:98E1: F0        .byte $F0, $04, $3E, $00, $01, $27
- D 0 - I - 0x0098F7 02:98E7: F0        .byte $F0, $05, $3E, $02, $01, $27
- D - - - - 0x0098FD 02:98ED: FF        .byte $FF

loc_lvl4_water_room16_props_in:
- D 0 - I - 0x0098FE 02:98EE: F0        .byte $F0, $01, $3D, $00, $FF, $28
- D 0 - I - 0x009904 02:98F4: F0        .byte $F0, $02, $3D, $01, $FF, $28
- D - - - - 0x00990A 02:98FA: FF        .byte $FF

loc_lvl4_water_room17_props_in:
- D 0 - I - 0x00990B 02:98FB: F0        .byte $F0, $02, $3F, $00, $01, $29
- D 0 - I - 0x009911 02:9901: F0        .byte $F0, $03, $3F, $01, $01, $29
- D 0 - I - 0x009917 02:9907: 80        .byte $80, $05, $3F, $03, $01, $29
- D 0 - I - 0x00991D 02:990D: F0        .byte $F0, $05, $3F, $04, $01, $29
- D 0 - I - 0x009923 02:9913: 80        .byte $80, $06, $3F, $05, $01, $29
- D 0 - I - 0x009929 02:9919: F0        .byte $F0, $06, $3F, $06, $01, $29
- D - - - - 0x00992F 02:991F: FF        .byte $FF

loc_lvl4_water_room18_props_in:
- D 0 - I - 0x009930 02:9920: F0        .byte $F0, $05, $3E, $00, $FF, $2A
- D 0 - I - 0x009936 02:9926: F0        .byte $F0, $07, $3E, $02, $FF, $2A
- D - - - - 0x00993C 02:992C: FF        .byte $FF

loc_lvl4_water_room19_props_in:
- D 0 - I - 0x00993D 02:992D: F0        .byte $F0, $02, $40, $00, $01, $2B
- D 0 - I - 0x009943 02:9933: F0        .byte $F0, $03, $40, $01, $01, $2B
- D 0 - I - 0x009949 02:9939: F0        .byte $F0, $04, $40, $03, $01, $2B
- D 0 - I - 0x00994F 02:993F: F0        .byte $F0, $07, $3E, $00, $01, $2C
- D 0 - I - 0x009955 02:9945: F0        .byte $F0, $08, $3E, $02, $01, $2C
- D - - - - 0x00995B 02:994B: FF        .byte $FF

loc_lvl4_water_room20_props_in:
- D 0 - I - 0x00995C 02:994C: 80        .byte $80, $03, $41, $00, $FF, $2D
- D 0 - I - 0x009962 02:9952: F0        .byte $F0, $03, $41, $01, $FF, $2D
- D 0 - I - 0x009968 02:9958: F0        .byte $F0, $04, $41, $02, $FF, $2D
- D 0 - I - 0x00996E 02:995E: F0        .byte $F0, $05, $41, $03, $FF, $2D
- D - - - - 0x009974 02:9964: FF        .byte $FF

loc_lvl4_water_room21_props_in:
- D 0 - I - 0x009975 02:9965: F0        .byte $F0, $01, $3D, $00, $01, $2E
- D 0 - I - 0x00997B 02:996B: F0        .byte $F0, $02, $3D, $01, $01, $2E
- D 0 - I - 0x009981 02:9971: F0        .byte $F0, $04, $3D, $00, $FF, $2F
- D 0 - I - 0x009987 02:9977: F0        .byte $F0, $05, $3D, $01, $FF, $2F
- D - - - - 0x00998D 02:997D: FF        .byte $FF

loc_lvl4_water_room22_props_in:
- D - - - - 0x00998E 02:997E: F0        .byte $F0, $04, $3C, $00, $FF, $30
- D - - - - 0x009994 02:9984: FF        .byte $FF

loc_lvl4_water_room23_props_in:
- D 0 - I - 0x009995 02:9985: C0        .byte $C0, $00, $3C, $00, $FF, $31
- D - - - - 0x00999B 02:998B: FF        .byte $FF

loc_lvl4_water_room24_props_in:
- D 0 - I - 0x00999C 02:998C: F0        .byte $F0, $02, $3C, $00, $FF, $32
- D 0 - I - 0x0099A2 02:9992: F0        .byte $F0, $04, $3C, $00, $01, $33
- D 0 - I - 0x0099A8 02:9998: F0        .byte $F0, $07, $3C, $00, $01, $34
- D - - - - 0x0099AE 02:999E: FF        .byte $FF

loc_lvl4_water_room25_props_in:
- D 0 - I - 0x0099AF 02:999F: C0        .byte $C0, $01, $3C, $00, $01, $35
- D 0 - I - 0x0099B5 02:99A5: F0        .byte $F0, $03, $3D, $00, $FF, $36
- D 0 - I - 0x0099BB 02:99AB: F0        .byte $F0, $04, $3D, $01, $FF, $36
- D 0 - I - 0x0099C1 02:99B1: F0        .byte $F0, $07, $3C, $00, $FF, $37
- D - - - - 0x0099C7 02:99B7: FF        .byte $FF

loc_lvl4_water_room26_props_in:
- D 0 - I - 0x0099C8 02:99B8: F0        .byte $F0, $02, $3C, $00, $FF, $38
- D 0 - I - 0x0099CE 02:99BE: F0        .byte $F0, $04, $3C, $00, $01, $39
- D - - - - 0x0099D4 02:99C4: FF        .byte $FF

loc_lvl4_water_room27_props_in:
- D 0 - I - 0x0099D5 02:99C5: F0        .byte $F0, $01, $3C, $00, $01, $3A
- D - - - - 0x0099DB 02:99CB: FF        .byte $FF

loc_lvl4_water_room28_props_in:
- D 0 - I - 0x0099DC 02:99CC: 80        .byte $80, $04, $3D, $00, $FF, $3B
- D 0 - I - 0x0099E2 02:99D2: F0        .byte $F0, $04, $3D, $01, $FF, $3B
- D - - - - 0x0099E8 02:99D8: FF        .byte $FF

loc_lvl4_water_room29_props_in:
- D 0 - I - 0x0099E9 02:99D9: F0        .byte $F0, $01, $3C, $00, $01, $3C
- D - - - - 0x0099EF 02:99DF: FF        .byte $FF

loc_lvl4_water_room30_props_in:
- D 0 - I - 0x0099F0 02:99E0: F0        .byte $F0, $01, $3C, $00, $FF, $3D
- D - - - - 0x0099F6 02:99E6: FF        .byte $FF

; 1 byte - for the ruby ring (0xFF - disallow, 0xFE - allow)
; 2 byte - for everything else (1 - disallow, 0 - allow)
tbl_water_item_bits:
- D 0 - I - 0x0099F7 02:99E7: FF        .byte $FF, $3E
- D 0 - I - 0x0099F9 02:99E9: FE        .byte $FE, $DF
- D 0 - I - 0x0099FB 02:99EB: FF        .byte $FF, $6E
- D 0 - I - 0x0099FD 02:99ED: FF        .byte $FF, $E9
- D 0 - I - 0x0099FF 02:99EF: FF        .byte $FF, $DE
- D - - - - 0x009A01 02:99F1: FF        .byte $FF, $E9
- D - - - - 0x009A03 02:99F3: FE        .byte $FE, $DE
- D - - - - 0x009A05 02:99F5: FF        .byte $FF, $B7
- D 0 - I - 0x009A07 02:99F7: FF        .byte $FF, $DA
- D - - - - 0x009A09 02:99F9: FE        .byte $FE, $F7
- D - - - - 0x009A0B 02:99FB: FE        .byte $FE, $FE
- D - - - - 0x009A0D 02:99FD: FE        .byte $FE, $D7
- D - - - - 0x009A0F 02:99FF: FF        .byte $FF, $EB
- D 0 - I - 0x009A11 02:9A01: FF        .byte $FF, $75
- D - - - - 0x009A13 02:9A03: FE        .byte $FE, $AF
- D - - - - 0x009A15 02:9A05: FF        .byte $FF, $F4
- D - - - - 0x009A17 02:9A07: FE        .byte $FE, $EA
- D - - - - 0x009A19 02:9A09: FE        .byte $FE, $EA
- D 0 - I - 0x009A1B 02:9A0B: FF        .byte $FF, $A6
- D - - - - 0x009A1D 02:9A0D: FE        .byte $FE, $7E
- D - - - - 0x009A1F 02:9A0F: FE        .byte $FE, $B9
- D 0 - I - 0x009A21 02:9A11: FE        .byte $FE, $A7
- D - - - - 0x009A23 02:9A13: FF        .byte $FF, $6A
- D - - - - 0x009A25 02:9A15: FE        .byte $FE, $7A
- D 0 - I - 0x009A27 02:9A17: FF        .byte $FF, $AB
- D - - - - 0x009A29 02:9A19: FE        .byte $FE, $EE
- D - - - - 0x009A2B 02:9A1B: FF        .byte $FF, $2E
- D 0 - I - 0x009A2D 02:9A1D: FF        .byte $FF, $17
- D - - - - 0x009A2F 02:9A1F: FE        .byte $FE, $EA
- D 0 - I - 0x009A31 02:9A21: FF        .byte $FF, $37
- D - - - - 0x009A33 02:9A23: FE        .byte $FE, $9F
- D - - - - 0x009A35 02:9A25: FE        .byte $FE, $7E
- D - - - - 0x009A37 02:9A27: FE        .byte $FE, $EB
- D - - - - 0x009A39 02:9A29: FE        .byte $FE, $7B
- D - - - - 0x009A3B 02:9A2B: FE        .byte $FE, $EE
- D 0 - I - 0x009A3D 02:9A2D: FE        .byte $FE, $BB
- D - - - - 0x009A3F 02:9A2F: FF        .byte $FF, $2E
- D - - - - 0x009A41 02:9A31: FF        .byte $FF, $5D
- D 0 - I - 0x009A43 02:9A33: FE        .byte $FE, $B7
- D - - - - 0x009A45 02:9A35: FF        .byte $FF, $6A
- D - - - - 0x009A47 02:9A37: FE        .byte $FE, $AB
- D 0 - I - 0x009A49 02:9A39: FF        .byte $FF, $AE
- D - - - - 0x009A4B 02:9A3B: FF        .byte $FF, $AB
- D 0 - I - 0x009A4D 02:9A3D: FE        .byte $FE, $AE
- D 0 - I - 0x009A4F 02:9A3F: FF        .byte $FF, $AE
- D - - - - 0x009A51 02:9A41: FF        .byte $FF, $AB
- D - - - - 0x009A53 02:9A43: FE        .byte $FE, $AF
- D - - - - 0x009A55 02:9A45: FF        .byte $FF, $BA
- D - - - - 0x009A57 02:9A47: FF        .byte $FF, $57
- D - - - - 0x009A59 02:9A49: FF        .byte $FF, $5B
- D - - - - 0x009A5B 02:9A4B: FE        .byte $FE, $5F
- D - - - - 0x009A5D 02:9A4D: FF        .byte $FF, $76
- D - - - - 0x009A5F 02:9A4F: FE        .byte $FE, $5F
- D - - - - 0x009A61 02:9A51: FF        .byte $FF, $7A
- D - - - - 0x009A63 02:9A53: FE        .byte $FE, $BB
- D - - - - 0x009A65 02:9A55: FF        .byte $FF, $7A
- D - - - - 0x009A67 02:9A57: FF        .byte $FF, $75
- D - - - - 0x009A69 02:9A59: FE        .byte $FE, $5F
- D - - - - 0x009A6B 02:9A5B: FF        .byte $FF, $BA
- D 0 - I - 0x009A6D 02:9A5D: FE        .byte $FE, $77
- D - - - - 0x009A6F 02:9A5F: FF        .byte $FF, $BA
- D - - - - 0x009A71 02:9A61: FF        .byte $FF, $73

; checkpoints by the screens
loc_water_room1_props_out:
- D 0 - I - 0x009A73 02:9A63: C0        .byte $C0, $C1, $C2, $C3

loc_water_room2_props_out:
- D - - - - 0x009A77 02:9A67: C4        .byte $C4, $C5, $00, $C6

loc_water_room3_props_out:
- D 0 - I - 0x009A7B 02:9A6B: C7        .byte $C7, $00, $C8, $00, $C9, $CA

loc_water_room4_props_out:
- D 0 - I - 0x009A81 02:9A71: CB        .byte $CB

loc_water_room5_props_out:
- D 0 - I - 0x009A82 02:9A72: CC        .byte $CC, $CD, $CE, $00, $CF

loc_water_room6_props_out:
- D 0 - I - 0x009A87 02:9A77: D0        .byte $D0, $D1

loc_water_room7_props_out:
- D 0 - I - 0x009A89 02:9A79: D2        .byte $D2, $D3, $D4

loc_water_room8_props_out:
- D 0 - I - 0x009A8C 02:9A7C: D5        .byte $D5, $D6, $D7

loc_water_room9_props_out:
- D - - - - 0x009A8F 02:9A7F: D8        .byte $D8, $D9, $DA

loc_water_room10_props_out:
- D 0 - I - 0x009A92 02:9A82: DB        .byte $DB

loc_water_room11_props_out:
- D - - - - 0x009A93 02:9A83: DC        .byte $DC

loc_water_room12_props_out:
- D - - - - 0x009A94 02:9A84: DD        .byte $DD

loc_water_room13_props_out:
- D - - - - 0x009A95 02:9A85: DE        .byte $DE

loc_water_room14_props_out:
- D 0 - I - 0x009A96 02:9A86: DF        .byte $DF, $E0, $E1

loc_water_room15_props_out:
- D - - - - 0x009A99 02:9A89: E2        .byte $E2

loc_water_room16_props_out:
- D - - - - 0x009A9A 02:9A8A: E3        .byte $E3

loc_water_room17_props_out:
- D - - - - 0x009A9B 02:9A8B: E4        .byte $E4, $E5, $E6, $E7, $E8, $E9

loc_water_room18_props_out:
- D - - - - 0x009AA1 02:9A91: EA        .byte $EA, $00, $EB

loc_water_room19_props_out:
- D - - - - 0x009AA4 02:9A94: EC        .byte $EC, $00, $ED

loc_water_room20_props_out:
- D - - - - 0x009AA7 02:9A97: 00        .byte $00, $EE

loc_water_room21_props_out:
- D - - - - 0x009AA9 02:9A99: 00        .byte $00, $EF

loc_water_room22_props_out:
- D - - - - 0x009AAB 02:9A9B: F0        .byte $F0, $00, $F1, $F2, $00, $00, $F3

loc_water_room23_props_out:
- D - - - - 0x009AB2 02:9AA2: A4        .byte $A4

loc_water_room24_props_out:
- D - - - - 0x009AB3 02:9AA3: A5        .byte $A5, $A6

loc_water_room25_props_out:
- D 0 - I - 0x009AB5 02:9AA5: A7        .byte $A7, $A8

loc_water_room26_props_out:
- D - - - - 0x009AB7 02:9AA7: A9        .byte $A9

loc_water_room27_props_out:
- D 0 - I - 0x009AB8 02:9AA8: AA        .byte $AA

loc_water_room28_props_out:
- D - - - - 0x009AB9 02:9AA9: AB        .byte $AB

loc_water_room29_props_out:
- D - - - - 0x009ABA 02:9AAA: AC        .byte $AC, $AD

loc_water_room30_props_out:
- D - - - - 0x009ABC 02:9AAC: AE        .byte $AE

loc_water_room31_props_out:
- D - - - - 0x009ABD 02:9AAD: AF        .byte $AF

loc_water_room32_props_out:
- D - - - - 0x009ABE 02:9AAE: B0        .byte $B0

loc_water_room33_props_out:
- D - - - - 0x009ABF 02:9AAF: B1        .byte $B1

loc_water_room34_props_out:
- D - - - - 0x009AC0 02:9AB0: B2        .byte $B2, $B3

loc_water_room35_props_out:
- D - - - - 0x009AC2 02:9AB2: B4        .byte $B4, $B5

loc_water_room36_props_out:
- D - - - - 0x009AC4 02:9AB4: B6        .byte $B6, $B7

loc_water_room37_props_out:
- D 0 - I - 0x009AC6 02:9AB6: B8        .byte $B8, $B9

loc_water_room38_props_out:
- D - - - - 0x009AC8 02:9AB8: BA        .byte $BA

loc_water_room39_props_out:
- D - - - - 0x009AC9 02:9AB9: BB        .byte $BB, $BC

loc_water_room40_props_out:
- D - - - - 0x009ACB 02:9ABB: BD        .byte $BD, $00, $BE

loc_water_room41_props_out:
- D - - - - 0x009ACE 02:9ABE: BF        .byte $BF, $F4

loc_water_room42_props_out:
- D - - - - 0x009AD0 02:9AC0: F5        .byte $F5, $F6, $00, $F7, $F8, $F9, $FA

loc_water_room43_props_out:
- D - - - - 0x009AD7 02:9AC7: FB        .byte $FB, $00, $FC

loc_water_room44_props_out:
- D 0 - I - 0x009ADA 02:9ACA: FD        .byte $FD, $FE, $00, $24

loc_water_room45_props_out:
- D - - - - 0x009ADE 02:9ACE: 25        .byte $25, $00, $26

loc_water_room46_props_out:
- D 0 - I - 0x009AE1 02:9AD1: 27        .byte $27, $28, $29, $2A

loc_water_room47_props_out:
- D - - - - 0x009AE5 02:9AD5: 2B        .byte $2B, $2C

loc_water_room48_props_out:
- D 0 - I - 0x009AE7 02:9AD7: 2D        .byte $2D, $2E

loc_water_room49_props_out:
- D - - - - 0x009AE9 02:9AD9: 2F        .byte $2F

loc_water_room50_props_out:
- D - - - - 0x009AEA 02:9ADA: 30        .byte $30

loc_water_room51_props_out:
- D - - - - 0x009AEB 02:9ADB: 31        .byte $31

loc_water_room52_props_out:
- D - - - - 0x009AEC 02:9ADC: 32        .byte $32

loc_water_room53_props_out:
- D - - - - 0x009AED 02:9ADD: 33        .byte $33

loc_water_room54_props_out:
- D - - - - 0x009AEE 02:9ADE: 34        .byte $34

loc_water_room55_props_out:
- D - - - - 0x009AEF 02:9ADF: 35        .byte $35, $36

loc_water_room56_props_out:
- D - - - - 0x009AF1 02:9AE1: 37        .byte $37

loc_water_room57_props_out:
- D - - - - 0x009AF2 02:9AE2: 38        .byte $38

loc_water_room58_props_out:
- D - - - - 0x009AF3 02:9AE3: 39        .byte $39

loc_water_room59_props_out:
- D - - - - 0x009AF4 02:9AE4: 3A        .byte $3A

loc_water_room60_props_out:
- D 0 - I - 0x009AF5 02:9AE5: 3B        .byte $3B, $3C

loc_water_room61_props_out:
- D - - - - 0x009AF7 02:9AE7: 3D        .byte $3D

loc_water_room62_props_out:
- D 0 - I - 0x009AF8 02:9AE8: 3E        .byte $3E

loc_losing_dialog9:
loc_radio_dialog9:
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

loc_losing_dialog1:
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

loc_losing_dialog2:
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

loc_losing_dialog3:
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

loc_losing_dialog4:
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

loc_losing_dialog5:
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

loc_losing_dialog6:
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

loc_losing_dialog7:
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

loc_losing_dialog8:
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

loc_losing_dialog10:
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

loc_losing_dialog11:
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

loc_losing_dialog12:
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

loc_radio_dialog1:
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

loc_radio_dialog2:
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

loc_radio_dialog3:
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

loc_radio_dialog4:
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

loc_radio_dialog5:
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

loc_radio_dialog6:
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

loc_radio_dialog7:
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

loc_radio_dialog8:
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

loc_radio_dialog10:
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

loc_radio_dialog11:
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

loc_radio_dialog12:
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



