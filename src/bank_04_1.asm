.segment "BANK_04_1"
.include "bank_ram.inc"
.org $8000  ; for listing file
; 0x010010-0x01200F

.export loc_display_Clarisse_first_cutscene
.export loc_display_select_character
.export loc_display_all_character_are_died
.export loc_display_main_title
.export tbl_ptr_checkpoints
.export tbl_demo_btn_pressed
.export tbl_template_chr_banks1
.export tbl_main_menu_chr_banks
.export tbl_main_menu_palette
.export tbl_copyright
.export tbl_ptr_corridors
.export tbl_ptr_destructible_walls
.export tbl_room_lengths
.export tbl_roof_pitches
.export tbl_message_bar_bottom_attrs
.export tbl_character_select_palette
.export tbl_ptr_checkpoints_on_the_level
.export tbl_ptr_enemy_palette
.export tbl_road_hills
.export tbl_checkpoint_after_death
.export tbl_clarissa_colors
.export tbl_menu_npc_colors
.export tbl_car_render_offsets
.export tbl_room_types
.export tbl_enemies_after_waiting

; see $C5B2
- D - - - - 0x010010 04:8000: 7B 9D     .addr loc_main_menu_gunshot_f1 ; frame 1
- D 0 - - - 0x010012 04:8002: 9B 9D     .addr loc_main_menu_gunshot_f2 ; frame 2
- D 0 - - - 0x010014 04:8004: BE 9D     .addr loc_main_menu_gunshot_f3 ; frame 3
- D 0 - - - 0x010016 04:8006: D9 9D     .addr loc_main_menu_gunshot_f4 ; frame 4
- D 0 - - - 0x010018 04:8008: 00 9E     .addr loc_main_menu_gunshot_f5 ; frame 5

tbl_ptr_checkpoints:
- D 0 - - - 0x01001A 04:800A: 3B 89     .addr tbl_checkpoints

tbl_ptr_enemy_palette:
- D 0 - - - 0x01001C 04:800C: CD 9C     .addr tbl_enemy_palette

tbl_demo_btn_pressed:
- D 0 - - - 0x01001E 04:800E: 1D 89     .addr tbl_fake_actions ; Lupin
- D 0 - - - 0x010020 04:8010: 1D 89     .addr tbl_fake_actions ; Jigen
- D 0 - - - 0x010022 04:8012: 1D 89     .addr tbl_fake_actions ; Goemon

tbl_template_chr_banks1:
- D 0 - - - 0x010024 04:8014: 12        .byte $12   ; Tiles: the shortgun
- D 0 - - - 0x010025 04:8015: 00        .byte $00   ; 
- D 0 - - - 0x010026 04:8016: 38        .byte $38   ; Tiles: japanese symbols
- D 0 - - - 0x010027 04:8017: 39        .byte $39   ; Tiles: latin symbols, digits
- D 0 - - - 0x010028 04:8018: 32        .byte $32   ; Tiles: portraits
- D 0 - - - 0x010029 04:8019: 33        .byte $33   ; Tiles: portraits of the main characters

; Palettes for Clarissa in the cutscenes
tbl_clarissa_colors:
- D 0 - - - 0x01002A 04:801A: 0F        .byte $0F, $20, $20, $20
- D 0 - - - 0x01002E 04:801E: 0F        .byte $0F, $36, $21, $20
- D 0 - - - 0x010032 04:8022: 0F        .byte $0F, $36, $17, $07
- D 0 - - - 0x010036 04:8026: 0F        .byte $0F, $36, $17, $20

; Address of the frames (a list tiles)
tbl_copyright:
- D 0 - - - 0x01003A 04:802A: 7B        .byte $7B   ; 
- D 0 - - - 0x01003B 04:802B: 00        .byte $00   ; 
- D 0 - - - 0x01003C 04:802C: 7A        .byte $7A   ; モ
- D 0 - - - 0x01003D 04:802D: 6C        .byte $6C   ; ン
- D 0 - - - 0x01003E 04:802E: 0D        .byte $0D   ; キ
- D 0 - - - 0x01003F 04:802F: 5B        .byte $5B   ; ー
- D 0 - - - 0x010040 04:8030: 5E        .byte $5E   ; ・
- D 0 - - - 0x010041 04:8031: 05        .byte $05   ; パ
- D 0 - - - 0x010042 04:8032: 6C        .byte $6C   ; ン
- D 0 - - - 0x010043 04:8033: 68        .byte $68   ; チ
- D 0 - - - 0x010044 04:8034: 00        .byte $00   ;
- D 0 - - - 0x010045 04:8035: 00        .byte $00   ; 
- D 0 - - - 0x010046 04:8036: 53        .byte $53   ; T
- D 0 - - - 0x010047 04:8037: 4C        .byte $4C   ; M
- D 0 - - - 0x010048 04:8038: 52        .byte $52   ; S
- D 0 - - - 0x010049 04:8039: 5C        .byte $5C   ; . 
- D 0 - - - 0x01004A 04:803A: 58        .byte $58   ; Y
- D 0 - - - 0x01004B 04:803B: 53        .byte $53   ; T
- D 0 - - - 0x01004C 04:803C: 55        .byte $55   ; V
- D 0 - - - 0x01004D 04:803D: 5C        .byte $5C   ; .
- D 0 - - - 0x01004E 04:803E: 4D        .byte $4D   ; N
- D 0 - - - 0x01004F 04:803F: 53        .byte $53   ; T
- D 0 - - - 0x010050 04:8040: 55        .byte $55   ; V
- D 0 - - - 0x010051 04:8041: 5C        .byte $5C   ; .

tbl_menu_npc_colors:
- D 0 - - - 0x010052 04:8042: 0F        .byte $0F, $36, $21, $20
- D 0 - - - 0x010056 04:8046: 0F        .byte $0F, $20, $36, $2A   ; Lupin
- D 0 - - - 0x01005A 04:804A: 0F        .byte $0F, $11, $36, $00   ; Jigen
- D 0 - - - 0x01005E 04:804E: 0F        .byte $0F, $20, $36, $10   ; Goemon
- D 0 - - - 0x010062 04:8052: 0F        .byte $0F, $20, $36, $06   ; Zenigata
- D 0 - - - 0x010066 04:8056: 0F        .byte $0F, $1A, $37, $26   ; Fujiko
- D 0 - - - 0x01006A 04:805A: 0F        .byte $0F, $20, $37, $17   ; Clarisse

; Clarisse (First cutscene)
loc_display_Clarisse_first_cutscene:
- D 0 - I - 0x01006E 04:805E: 8C        .addr $208C                            ; PPU address
- D 0 - I - 0x010070 04:8060: F9        .addr loc_sc_first_cutscene_portrait   ; CPU address $86F9
- D 0 - I - 0x010072 04:8062: 09        .byte $09                              ; the number of the vertical tiles
- D 0 - I - 0x010073 04:8063: 08        .byte $08                              ; the number of the horizontal tiles
- D 0 - I - 0x010074 04:8064: CB        .addr $23CB                            ; PPU address
- D 0 - I - 0x010076 04:8066: 89        .addr loc_sc_first_cutscene_tbl_attrs  ; CPU address $8789
- D 0 - I - 0x010078 04:8068: 03        .byte $03
- D 0 - I - 0x010079 04:8069: 02        .byte $02

; Lupin
- D 0 - I - 0x01007A 04:806A: C4        .addr $20C4                   ; PPU address
- D 0 - I - 0x01007C 04:806C: 41        .addr loc_sc_lupin_portrait   ; CPU address $8741
- D 0 - I - 0x01007E 04:806E: 04        .byte $04
- D 0 - I - 0x01007F 04:806F: 03        .byte $03
- D 0 - I - 0x010080 04:8070: C9        .addr $23C9                   ; PPU address
- D 0 - I - 0x010082 04:8072: 8F        .addr loc_sc_lupin_tbl_attrs  ; CPU address $878F
- D 0 - I - 0x010084 04:8074: 02        .byte $02
- D 0 - I - 0x010085 04:8075: 01        .byte $01

; Jigen
- D 0 - I - 0x010086 04:8076: 50        .addr $2150                   ; PPU address
- D 0 - I - 0x010088 04:8078: 4D        .addr loc_sc_jigen_portrait   ; CPU address $874D
- D 0 - I - 0x01008A 04:807A: 04        .byte $04
- D 0 - I - 0x01008B 04:807B: 03        .byte $03
- D 0 - I - 0x01008C 04:807C: D4        .addr $23D4                   ; PPU address
- D 0 - I - 0x01008E 04:807E: 91        .addr loc_sc_jigen_tbl_attrs  ; CPU address $8791
- D 0 - I - 0x010090 04:8080: 02        .byte $02
- D 0 - I - 0x010091 04:8081: 01        .byte $01

; Goemon
- D 0 - I - 0x010092 04:8082: 16        .addr $2216                    ; PPU address
- D 0 - I - 0x010094 04:8084: 59        .addr loc_sc_goemon_portrait   ; CPU address $8759
- D 0 - I - 0x010096 04:8086: 04        .byte $04
- D 0 - I - 0x010097 04:8087: 03        .byte $03
- D 0 - I - 0x010098 04:8088: E5        .addr $23E5                    ; PPU address
- D 0 - I - 0x01009A 04:808A: 93        .addr loc_sc_goemon_tbl_attrs  ; CPU address $8793
- D 0 - I - 0x01009C 04:808C: 01        .byte $01
- D 0 - I - 0x01009D 04:808D: 02        .byte $02

; Zenigata
- D 0 - I - 0x01009E 04:808E: 5A        .addr $205A                      ; PPU address
- D 0 - I - 0x0100A0 04:8090: 65        .addr loc_sc_zenigata_portrait   ; CPU address $8765
- D 0 - I - 0x0100A2 04:8092: 04        .byte $04
- D 0 - I - 0x0100A3 04:8093: 03        .byte $03
- D 0 - I - 0x0100A4 04:8094: C6        .addr $23C6                      ; PPU address
- D 0 - I - 0x0100A6 04:8096: 95        .addr loc_sc_zenigata_tbl_attrs  ; CPU address $8795
- D 0 - I - 0x0100A8 04:8098: 02        .byte $02
- D 0 - I - 0x0100A9 04:8099: 02        .byte $02

; Fujiko
- D 0 - I - 0x0100AA 04:809A: 82        .addr $2182                    ; PPU address
- D 0 - I - 0x0100AC 04:809C: 71        .addr loc_sc_fujiko_portrait   ; CPU address $8771
- D 0 - I - 0x0100AE 04:809E: 04        .byte $04
- D 0 - I - 0x0100AF 04:809F: 03        .byte $03
- D 0 - I - 0x0100B0 04:80A0: D8        .addr $23D8                    ; PPU address
- D 0 - I - 0x0100B2 04:80A2: 99        .addr loc_sc_fujiko_tbl_attrs  ; CPU address $8799
- D 0 - I - 0x0100B4 04:80A4: 01        .byte $01
- D 0 - I - 0x0100B5 04:80A5: 02        .byte $02

; Clarisse
- D 0 - I - 0x0100B6 04:80A6: 96        .addr $2296                      ; PPU address
- D 0 - I - 0x0100B8 04:80A8: 7D        .addr loc_sc_clarisse_portrait   ; CPU address $877D
- D 0 - I - 0x0100BA 04:80AA: 04        .byte $04
- D 0 - I - 0x0100BB 04:80AB: 03        .byte $03
- D 0 - I - 0x0100BC 04:80AC: ED        .addr $23ED                      ; PPU address
- D 0 - I - 0x0100BE 04:80AE: 9B        .addr loc_sc_clarisse_tbl_attrs  ; CPU address $879B
- D 0 - I - 0x0100C0 04:80B0: 01        .byte $01
- D 0 - I - 0x0100C1 04:80B1: 02        .byte $02

; Clarisse (Last cutscene)
- D 0 - I - 0x0100C2 04:80B2: 8C        .addr $208C                           ; PPU address
- D 0 - I - 0x0100C4 04:80B4: 9D        .addr loc_sc_last_cutscene_portrait   ; CPU address $879D
- D 0 - I - 0x0100C6 04:80B6: 09        .byte $09
- D 0 - I - 0x0100C7 04:80B7: 08        .byte $08
- D 0 - I - 0x0100C8 04:80B8: CB        .addr $23CB                           ; PPU address
- D 0 - I - 0x0100CA 04:80BA: E5        .addr loc_sc_last_cutscene_tbl_attrs  ; CPU address $87E5
- D 0 - I - 0x0100CC 04:80BC: 03        .byte $03
- D 0 - I - 0x0100CD 04:80BD: 02        .byte $02

tbl_main_menu_chr_banks:
- D 0 - - - 0x0100CE 04:80BE: 12        .byte $12, $00, $3C, $3D, $3A, $3B

tbl_main_menu_palette:
- D 0 - - - 0x0100D4 04:80C4: 0F        .byte $0F, $20, $27, $00
- D 0 - - - 0x0100D8 04:80C8: 0F        .byte $0F, $20, $20, $20
- D 0 - - - 0x0100DC 04:80CC: 0F        .byte $0F, $16, $16, $16
- D 0 - - - 0x0100E0 04:80D0: 0F        .byte $0F, $27, $27, $27
- D 0 - - - 0x0100E4 04:80D4: 0F        .byte $0F, $10, $17, $00
- D 0 - - - 0x0100E8 04:80D8: 0F        .byte $0F, $20, $20, $20
- D 0 - - - 0x0100EC 04:80DC: 0F        .byte $0F, $25, $25, $25
- D 0 - - - 0x0100F0 04:80E0: 0F        .byte $0F, $12, $12, $12

loc_display_main_title:
- D 0 - I - 0x0100F4 04:80E4: E5        .addr $20E5               ; ppu address
                                        .addr loc_tile_title_row1 ; CPU address $8879
                                        .byte $16                 ; count
- D 0 - I - 0x0100F9 04:80E9: 05        .addr $2105               ; ppu address
                                        .addr loc_tile_title_row2 ; CPU address $888F
                                        .byte $16
- D 0 - I - 0x0100FE 04:80EE: 25        .addr $2125               ; ppu address
                                        .addr loc_tile_title_row3 ; CPU address $88A5
                                        .byte $16
- D 0 - I - 0x010103 04:80F3: 45        .addr $2145               ; ppu address
                                        .addr loc_tile_title_row4 ; CPU address $88BB
                                        .byte $16
- D 0 - I - 0x010108 04:80F8: 65        .addr $2165               ; ppu address
                                        .addr loc_tile_title_row5 ; CPU address $88D1
                                        .byte $16
- D 0 - I - 0x01010D 04:80FD: 85        .addr $2185               ; ppu address
                                        .addr loc_tile_title_row6 ; CPU address $88E7
                                        .byte $16
- D 0 - I - 0x010112 04:8102: A4        .addr $21A4               ; ppu address
                                        .addr loc_tile_title_row7 ; CPU address $88FD
                                        .byte $02
- D 0 - I - 0x010117 04:8107: C8        .addr $21C8                  ; ppu address
                                        .addr loc_tile_subtitle_row1 ; CPU address $88FF
                                        .byte $0F
- D 0 - - - 0x01011C 04:810C: E8        .addr $21E8                  ; ppu address
                                        .addr loc_tile_subtitle_row2 ; CPU address $890E
                                        .byte $0F
- D 0 - I - 0x010121 04:8111: C0        .addr $23C0                ; ppu address
                                        .addr loc_tbl_title_attrs  ; CPU address $87F3
                                        .byte $40
- D 0 - I - 0x010126 04:8116: 64        .addr $2064          ; ppu address
                                        .addr loc_tile_score ; CPU address $8833
                                        .byte $05
- D 0 - I - 0x01012B 04:811B: 6E        .addr $206E             ; ppu address
                                        .addr loc_tile_hi_score ; CPU address $8838
                                        .byte $08
- D 0 - I - 0x010130 04:8120: EC        .addr $22EC           ; ppu address
                                        .addr loc_tile_namcot ; CPU address $8840
                                        .byte $08
- D 0 - I - 0x010135 04:8125: 28        .addr $2328                   ; ppu address
                                        .addr loc_tile_1987_namco_ltd ; CPU address $885B
                                        .byte $11
- D 0 - I - 0x01013A 04:812A: 67        .addr $2367                        ; ppu address
                                        .addr loc_tile_all_rights_reserved ; CPU address $8848
                                        .byte $13
- D 0 - I - 0x01013F 04:812F: 4D        .addr $224D          ; ppu address
                                        .addr loc_tile_start ; CPU address $886C
                                        .byte $05
- D 0 - I - 0x010144 04:8134: 8D        .addr $228D             ; ppu address
                                        .addr loc_tile_continue ; CPU address $8871
                                        .byte $08

; Screen 'Select a character'
loc_display_select_character:
- D 0 - I - 0x010149 04:8139: 62        .addr $2062                      ; ppu address (insertion point)
                                        .addr loc_tile_select_character1 ; CPU address $86C9
                                        .byte $1C                        ; count
- D 0 - I - 0x01014E 04:813E: 45        .addr $2145
                                        .addr loc_tile_select_character2 ; CPU address $86E5
                                        .byte $03
- D 0 - I - 0x010153 04:8143: 65        .addr $2165
                                        .addr loc_tile_select_character3 ; CPU address $86E8
                                        .byte $03
- D 0 - I - 0x010158 04:8148: 45        .addr $2245
                                        .addr loc_tile_select_character4 ; CPU address $86EB
                                        .byte $03
- D 0 - I - 0x01015D 04:814D: 65        .addr $2265
                                        .addr loc_tile_select_character5 ; CPU address $86EE
                                        .byte $03
- D 0 - I - 0x010162 04:8152: 45        .addr $2345
                                        .addr loc_tile_select_character6 ; CPU address $86F1
                                        .byte $04
- D 0 - I - 0x010167 04:8157: 65        .addr $2365
                                        .addr loc_tile_select_character7 ; CPU address $86F5
                                        .byte $04
- D 0 - I - 0x01016C 04:815C: C0        .addr $23C0
                                        .addr loc_tbl_attrs_select_character ; CPU address $8689
                                        .byte $40

- D 0 - I - 0x010171 04:8161: 8B 21     .word $218B            ; PPU address
- D 0 - I - 0x010173 04:8163: EB 87     .addr loc_sc_hi_score  ; CPU address $87EB
- D 0 - I - 0x010175 04:8165: 08        .byte $08

- D 0 - I - 0x010176 04:8166: 0E 22     .word $220E            ; PPU address
- D 0 - I - 0x010178 04:8168: EE 87     .addr loc_sc_score     ; CPU address $87EE
- D 0 - I - 0x01017A 04:816A: 05        .byte $05

; see $C652
loc_display_all_character_are_died:
- D 0 - I - 0x01017B 04:816B: C5 20     .word $20C5                  ; PPU address
- D 0 - I - 0x01017D 04:816D: 41 87     .addr loc_sc_lupin_portrait  ; CPU address $8741, in 'select character' screen
- D 0 - I - 0x01017F 04:816F: 03        .byte $03                    ; count

; see $C652
- D 0 - I - 0x010180 04:8170: C5 21     .word $21C5                  ; PPU address
- D 0 - I - 0x010182 04:8172: 4D 87     .addr loc_sc_jigen_portrait  ; CPU address $874D, in 'select character' screen
- D 0 - I - 0x010184 04:8174: 03        .byte $03                    ; count

; see $C652
- D 0 - I - 0x010185 04:8175: C5 22     .word $22C5                  ; PPU address
- D 0 - I - 0x010187 04:8177: 59 87     .addr loc_sc_goemon_portrait ; CPU address $8759, in 'select character' screen
- D 0 - I - 0x010189 04:8179: 03        .byte $03                    ; count

tbl_character_select_palette:
- D 0 - - - 0x01018A 04:817A: 0F        .byte $0F, $20, $20, $20
- D 0 - - - 0x01018E 04:817E: 0F        .byte $0F, $10, $36, $2A
- D 0 - - - 0x010192 04:8182: 0F        .byte $0F, $11, $36, $00
- D 0 - - - 0x010196 04:8186: 0F        .byte $0F, $20, $36, $10
- D 0 - - - 0x01019A 04:818A: 0F        .byte $0F, $10, $17, $00
- D 0 - - - 0x01019E 04:818E: 0F        .byte $0F, $20, $10, $00

; reserve
- D - - - - 0x0101A2 04:8192: 0F        .byte $0F, $20, $1C, $0F
- D - - - - 0x0101A6 04:8196: 0F        .byte $0F, $20, $20, $20

tbl_ptr_corridors:
- D 0 - - - 0x0101AA 04:819A: 03 8F     .addr tbl_corridors_level_1_0         ; CPU address $8F03
- D - - - - 0x0101AC 04:819C: 08 8F     .addr deadlock                        ; CPU address $8F08
- D - - - - 0x0101AE 04:819E: 08 8F     .addr deadlock
- D 0 - - - 0x0101B0 04:81A0: 0A 8F     .addr tbl_corridors_level_1_1         ; CPU address $8F0A
- D 0 - - - 0x0101B2 04:81A2: 3D 8F     .addr tbl_corridors_level_1_2         ; CPU address $8F3D
- D 0 - - - 0x0101B4 04:81A4: 7A 8F     .addr tbl_corridors_level_1_3         ; CPU address $8F7A
- D 0 - - - 0x0101B6 04:81A6: C1 8F     .addr tbl_corridors_level_2_outside   ; CPU address $8FC1
- D 0 - - - 0x0101B8 04:81A8: 0D 90     .addr tbl_corridors_level_2_d1_d3     ; CPU address $900D
- D 0 - - - 0x0101BA 04:81AA: 59 90     .addr tbl_corridors_level_2_d2        ; CPU address $9059
- D 0 - - - 0x0101BC 04:81AC: B4 90     .addr tbl_corridors_level_2_d4_d5     ; CPU address $90B4
- D 0 - - - 0x0101BE 04:81AE: 00 91     .addr tbl_corridors_level_2_d6_d8     ; CPU address $9100
- D 0 - - - 0x0101C0 04:81B0: 42 91     .addr tbl_corridors_level_2_d7        ; CPU address $9142
- D 0 - - - 0x0101C2 04:81B2: 93 91     .addr tbl_corridors_level_2_d9_d10    ; CPU address $9193
- D 0 - - - 0x0101C4 04:81B4: D5 91     .addr tbl_corridors_level_2_d11_d13   ; CPU address $91D5
- D 0 - - - 0x0101C6 04:81B6: 1C 92     .addr tbl_corridors_level_2_d12       ; CPU address $921C
- D 0 - - - 0x0101C8 04:81B8: 77 92     .addr tbl_corridors_level_3_0         ; CPU address $9277
- D 0 - - - 0x0101CA 04:81BA: 7D 92     .addr tbl_corridors_level_3_1         ; CPU address $927D
- D 0 - - - 0x0101CC 04:81BC: BA 92     .addr tbl_corridors_level_3_2         ; CPU address $92BA
- D 0 - - - 0x0101CE 04:81BE: 0B 93     .addr tbl_corridors_level_3_3         ; CPU address $930B
- D 0 - - - 0x0101D0 04:81C0: 57 93     .addr tbl_corridors_level_3_4         ; CPU address $9357
- D 0 - - - 0x0101D2 04:81C2: 08 8F     .addr deadlock
- D - - - - 0x0101D4 04:81C4: 08 8F     .addr deadlock
- D - - - - 0x0101D6 04:81C6: 08 8F     .addr deadlock
- D - - - - 0x0101D8 04:81C8: 08 8F     .addr deadlock
- D - - - - 0x0101DA 04:81CA: 08 8F     .addr deadlock
- D 0 - - - 0x0101DC 04:81CC: 08 8F     .addr deadlock
- D 0 - - - 0x0101DE 04:81CE: 10 9A     .addr tbl_corridors_unique_room_1     ; CPU address $9A10
- D 0 - - - 0x0101E0 04:81D0: 16 9A     .word tbl_corridors_unique_room_2_1   ; CPU address $9A16
- D 0 - - - 0x0101E2 04:81D2: 1C 9A     .word tbl_corridors_unique_room_2_2   ; CPU address $9A1C
- D 0 - - - 0x0101E4 04:81D4: 22 9A     .word tbl_corridors_unique_room_3     ; CPU address $9A22
- D 0 - - - 0x0101E6 04:81D6: 28 9A     .word tbl_corridors_unique_room_4     ; CPU address $9A28
- D 0 - - - 0x0101E8 04:81D8: 10 9A     .addr tbl_corridors_unique_room_1     ; CPU address $9A10
- D 0 - - - 0x0101EA 04:81DA: 16 9A     .addr tbl_corridors_unique_room_2_1   ; CPU address $9A16
- D 0 - - - 0x0101EC 04:81DC: 1C 9A     .addr tbl_corridors_unique_room_2_2   ; CPU address $9A1C
- D 0 - - - 0x0101EE 04:81DE: 22 9A     .addr tbl_corridors_unique_room_3     ; CPU address $9A22
- D 0 - - - 0x0101F0 04:81E0: 28 9A     .addr tbl_corridors_unique_room_4     ; CPU address $9A28
- D 0 - - - 0x0101F2 04:81E2: 08 8F     .addr deadlock
- D - - - - 0x0101F4 04:81E4: 08 8F     .addr deadlock
- D 0 - - - 0x0101F6 04:81E6: 08 8F     .addr deadlock
- D - - - - 0x0101F8 04:81E8: 08 8F     .addr deadlock
- D - - - - 0x0101FA 04:81EA: 08 8F     .addr deadlock
- D 0 - - - 0x0101FC 04:81EC: 08 8F     .addr deadlock
- D - - - - 0x0101FE 04:81EE: 08 8F     .addr deadlock
- D 0 - - - 0x010200 04:81F0: 08 8F     .addr deadlock
- D 0 - - - 0x010202 04:81F2: 08 8F     .addr deadlock
- D 0 - - - 0x010204 04:81F4: 08 8F     .addr deadlock
- D - - - - 0x010206 04:81F6: 08 8F     .addr deadlock
- D - - - - 0x010208 04:81F8: 08 8F     .addr deadlock
- D 0 - - - 0x01020A 04:81FA: 08 8F     .addr deadlock
- D 0 - - - 0x01020C 04:81FC: 08 8F     .addr deadlock
- D 0 - - - 0x01020E 04:81FE: 08 8F     .addr deadlock
- D - - - - 0x010210 04:8200: 08 8F     .addr deadlock
- D - - - - 0x010212 04:8202: 08 8F     .addr deadlock
- D - - - - 0x010214 04:8204: 08 8F     .addr deadlock
- D 0 - - - 0x010216 04:8206: 08 8F     .addr deadlock
- D 0 - - - 0x010218 04:8208: 08 8F     .addr deadlock
- D 0 - - - 0x01021A 04:820A: 08 8F     .addr deadlock
- D 0 - - - 0x01021C 04:820C: 08 8F     .addr deadlock
- D - - - - 0x01021E 04:820E: 08 8F     .addr deadlock
- D - - - - 0x010220 04:8210: 08 8F     .addr deadlock
- D 0 - - - 0x010222 04:8212: 08 8F     .addr deadlock
- D 0 - - - 0x010224 04:8214: 08 8F     .addr deadlock
- D 0 - - - 0x010226 04:8216: 08 8F     .addr deadlock
- D 0 - - - 0x010228 04:8218: 08 8F     .addr deadlock
- D 0 - - - 0x01022A 04:821A: 08 8F     .addr deadlock
- D 0 - - - 0x01022C 04:821C: 08 8F     .addr deadlock
- D 0 - - - 0x01022E 04:821E: AD 93     .addr tbl_corridors_level4_map1_b2_d2   ; CPU address $93AD
- D 0 - - - 0x010230 04:8220: BD 93     .addr tbl_corridors_level4_map1_c0_c2   ; CPU address $93BD
- D 0 - - - 0x010232 04:8222: CD 93     .addr tbl_corridors_level4_map1_b1_c1   ; CPU address $93CD
- D 0 - - - 0x010234 04:8224: D8 93     .addr tbl_corridors_level4_map1_b1_b3   ; CPU address $93D8
- D 0 - - - 0x010236 04:8226: E8 93     .addr tbl_corridors_level4_map1_a3_d3   ; CPU address $93E8
- D 0 - - - 0x010238 04:8228: 02 94     .addr tbl_corridors_level4_map1_d0_d3   ; CPU address $9402
- D 0 - - - 0x01023A 04:822A: 21 94     .addr tbl_corridors_level4_map1_a0_d0   ; CPU address $9421
- D 0 - - - 0x01023C 04:822C: 3B 94     .addr tbl_corridors_level4_map1_a0_a3   ; CPU address $943B
- D 0 - - - 0x01023E 04:822E: 5A 94     .addr tbl_corridors_level4_map2_a0_a6   ; CPU address $945A
- D 0 - - - 0x010240 04:8230: 79 94     .addr tbl_corridors_level4_map2_a6_f6   ; CPU address $9479
- D 0 - - - 0x010242 04:8232: 9D 94     .addr tbl_corridors_level4_map2_f0_f6   ; CPU address $949D
- D 0 - - - 0x010244 04:8234: C1 94     .addr tbl_corridors_level4_map2_a0_f0   ; CPU address $94C1
- D 0 - - - 0x010246 04:8236: EA 94     .addr tbl_corridors_level4_map2_b1_b5   ; CPU address $94EA
- D 0 - - - 0x010248 04:8238: FA 94     .addr tbl_corridors_level4_map2_a3_a3   ; CPU address $94FA
- D 0 - - - 0x01024A 04:823A: 00 95     .addr tbl_corridors_level4_map2_b5_e5   ; CPU address $9500
- D 0 - - - 0x01024C 04:823C: 1A 95     .addr tbl_corridors_level4_map2_e0_e6   ; CPU address $951A
- D 0 - - - 0x01024E 04:823E: 3E 95     .addr tbl_corridors_level4_map2_b1_f1   ; CPU address $953E
- D 0 - - - 0x010250 04:8240: 5D 95     .addr tbl_corridors_level4_map2_c2_c4   ; CPU address $955D
- D 0 - - - 0x010252 04:8242: 68 95     .addr tbl_corridors_level4_map2_b4_d4   ; CPU address $9568
- D 0 - - - 0x010254 04:8244: 78 95     .addr tbl_corridors_level4_map2_d2_d4   ; CPU address $9578
- D 0 - - - 0x010256 04:8246: 83 95     .addr tbl_corridors_level4_map2_c2_d2   ; CPU address $9583
- D 0 - - - 0x010258 04:8248: 93 95     .addr tbl_corridors_level4_map3_d3_e3   ; CPU address $9593
- D 0 - - - 0x01025A 04:824A: A3 95     .addr tbl_corridors_level4_map3_d3_d5   ; CPU address $95A3
- D 0 - - - 0x01025C 04:824C: B3 95     .addr tbl_corridors_level4_map3_d4_f4   ; CPU address $95B3
- D 0 - - - 0x01025E 04:824E: C3 95     .addr tbl_corridors_level4_map3_e3_e4   ; CPU address $95C3
- D 0 - - - 0x010260 04:8250: CE 95     .addr tbl_corridors_level4_map3_c2_g2   ; CPU address $95CE
- D 0 - - - 0x010262 04:8252: ED 95     .addr tbl_corridors_level4_map3_c1_c6   ; CPU address $95ED
- D 0 - - - 0x010264 04:8254: 16 96     .addr tbl_corridors_level4_map3_c5_f5   ; CPU address $9616
- D 0 - - - 0x010266 04:8256: 2B 96     .addr tbl_corridors_level4_map3_f2_f5   ; CPU address $962B
- D 0 - - - 0x010268 04:8258: 4A 96     .addr tbl_corridors_level4_map3_b1_g1   ; CPU address $964A
- D 0 - - - 0x01026A 04:825A: 73 96     .addr tbl_corridors_level4_map3_b1_b7   ; CPU address $9673
- D 0 - - - 0x01026C 04:825C: 92 96     .addr tbl_corridors_level4_map3_b6_g6   ; CPU address $9692
- D 0 - - - 0x01026E 04:825E: B6 96     .addr tbl_corridors_level4_map3_g1_g6   ; CPU address $96B6
- D 0 - - - 0x010270 04:8260: CB 96     .addr tbl_corridors_level4_map3_a0_h0   ; CPU address $96CB
- D 0 - - - 0x010272 04:8262: F9 96     .addr tbl_corridors_level4_map3_a0_a7   ; CPU address $96F9
- D 0 - - - 0x010274 04:8264: 27 97     .addr tbl_corridors_level4_map3_a7_h7   ; CPU address $9727
- D 0 - - - 0x010276 04:8266: 5A 97     .addr tbl_corridors_level4_map3_h0_h7   ; CPU address $975A
- D 0 - - - 0x010278 04:8268: 92 97     .addr tbl_corridors_level4_map4_a0_j0   ; CPU address $9792
- D 0 - - - 0x01027A 04:826A: CF 97     .addr tbl_corridors_level4_map4_a0_a9   ; CPU address $97CF
- D 0 - - - 0x01027C 04:826C: EE 97     .addr tbl_corridors_level4_map4_a9_j9   ; CPU address $97EE
- D 0 - - - 0x01027E 04:826E: 21 98     .addr tbl_corridors_level4_map4_j0_j9   ; CPU address $9821
- D 0 - - - 0x010280 04:8270: 54 98     .addr tbl_corridors_level4_map4_b1_i1   ; CPU address $9854
- D 0 - - - 0x010282 04:8272: 73 98     .addr tbl_corridors_level4_map4_b1_b2   ; CPU address $9873
- D 0 - - - 0x010284 04:8274: 8D 98     .addr tbl_corridors_level4_map4_b8_e8   ; CPU address $988D
- D 0 - - - 0x010286 04:8276: 98 98     .addr tbl_corridors_level4_map4_g8_j8   ; CPU address $9898
- D 0 - - - 0x010288 04:8278: B7 98     .addr tbl_corridors_level4_map4_i6_i8   ; CPU address $98B7
- D 0 - - - 0x01028A 04:827A: C2 98     .addr tbl_corridors_level4_map4_i1_i3   ; CPU address $98C2
- D 0 - - - 0x01028C 04:827C: D2 98     .addr tbl_corridors_level4_map4_g2_i2   ; CPU address $98D2
- D 0 - - - 0x01028E 04:827E: E2 98     .addr tbl_corridors_level4_map4_c2_e2   ; CPU address $98E2
- D 0 - - - 0x010290 04:8280: ED 98     .addr tbl_corridors_level4_map4_c1_c9   ; CPU address $98ED
- D 0 - - - 0x010292 04:8282: 25 99     .addr tbl_corridors_level4_map4_a7_i7   ; CPU address $9925
- D 0 - - - 0x010294 04:8284: 4E 99     .addr tbl_corridors_level4_map4_h2_h7   ; CPU address $994E
- D 0 - - - 0x010296 04:8286: 72 99     .addr tbl_corridors_level4_map4_d3_g3   ; CPU address $9972
- D 0 - - - 0x010298 04:8288: 82 99     .addr tbl_corridors_level4_map4_d2_d7   ; CPU address $9982
- D 0 - - - 0x01029A 04:828A: A6 99     .addr tbl_corridors_level4_map4_d6_h6   ; CPU address $99A6
- D 0 - - - 0x01029C 04:828C: C0 99     .addr tbl_corridors_level4_map4_g3_g6   ; CPU address $99C0
- D 0 - - - 0x01029E 04:828E: D5 99     .addr tbl_corridors_level4_map4_e4_g4   ; CPU address $99D5
- D 0 - - - 0x0102A0 04:8290: E5 99     .addr tbl_corridors_level4_map4_e5_e5   ; CPU address $99E5
- D 0 - - - 0x0102A2 04:8292: F5 99     .addr tbl_corridors_level4_map4_e5_f5   ; CPU address $99F5
- D 0 - - - 0x0102A4 04:8294: 05 9A     .addr tbl_corridors_level4_map4_f4_f5   ; CPU address $9A05

tbl_ptr_destructible_walls:
- D 0 - - - 0x0102A6 04:8296: 08 8F     .addr deadlock                          ; CPU address 8F08
- D - - - - 0x0102A8 04:8298: 08 8F     .addr deadlock
- D - - - - 0x0102AA 04:829A: 08 8F     .addr deadlock
- D 0 - - - 0x0102AC 04:829C: 08 8F     .addr deadlock
- D 0 - - - 0x0102AE 04:829E: 2E 9A     .addr tbl_destructible_walls_level1_2   ; CPU address $9A2E
- D 0 - - - 0x0102B0 04:82A0: 34 9A     .addr tbl_destructible_walls_level1_3   ; CPU address $9A34
- D 0 - - - 0x0102B2 04:82A2: 08 8F     .addr deadlock
- D 0 - - - 0x0102B4 04:82A4: 44 9A     .addr tbl_destructible_walls_level2_d1_d3   ; CPU address $9A44
- D 0 - - - 0x0102B6 04:82A6: 4A 9A     .addr tbl_destructible_walls_level2_d2      ; CPU address $9A4A
- D 0 - - - 0x0102B8 04:82A8: 5A 9A     .addr tbl_destructible_walls_level2_d4_d5   ; CPU address $9A5A
- D 0 - - - 0x0102BA 04:82AA: 60 9A     .addr tbl_destructible_walls_level2_d6_d8   ; CPU address $9A60
- D 0 - - - 0x0102BC 04:82AC: 66 9A     .addr tbl_destructible_walls_level2_d7      ; CPU address $9A66
- D 0 - - - 0x0102BE 04:82AE: 71 9A     .addr tbl_destructible_walls_level2_d9_d10  ; CPU address $9A71
- D 0 - - - 0x0102C0 04:82B0: 77 9A     .addr tbl_destructible_walls_level2_d11_d13 ; CPU address $9A77
- D 0 - - - 0x0102C2 04:82B2: 7D 9A     .addr tbl_destructible_walls_level2_d12     ; CPU address $9A7D
- D 0 - - - 0x0102C4 04:82B4: 08 8F     .addr deadlock
- D 0 - - - 0x0102C6 04:82B6: 8D 9A     .addr tbl_destructible_walls_level3_1   ; CPU address $9A8D
- D 0 - - - 0x0102C8 04:82B8: 93 9A     .addr tbl_destructible_walls_level3_2   ; CPU address $9A93
- D 0 - - - 0x0102CA 04:82BA: 9E 9A     .addr tbl_destructible_walls_level3_3   ; CPU address $9A9E
- D 0 - - - 0x0102CC 04:82BC: A4 9A     .addr tbl_destructible_walls_level3_4   ; CPU address $9AA4
- D 0 - - - 0x0102CE 04:82BE: 08 8F     .addr deadlock
- D - - - - 0x0102D0 04:82C0: 08 8F     .addr deadlock
- D - - - - 0x0102D2 04:82C2: 08 8F     .addr deadlock
- D - - - - 0x0102D4 04:82C4: 08 8F     .addr deadlock
- D - - - - 0x0102D6 04:82C6: 08 8F     .addr deadlock
- D 0 - - - 0x0102D8 04:82C8: 08 8F     .addr deadlock
- D 0 - - - 0x0102DA 04:82CA: 08 8F     .addr deadlock
- D 0 - - - 0x0102DC 04:82CC: 08 8F     .addr deadlock
- D 0 - - - 0x0102DE 04:82CE: 08 8F     .addr deadlock
- D 0 - - - 0x0102E0 04:82D0: 08 8F     .addr deadlock
- D 0 - - - 0x0102E2 04:82D2: 08 8F     .addr deadlock
- D 0 - - - 0x0102E4 04:82D4: 08 8F     .addr deadlock
- D 0 - - - 0x0102E6 04:82D6: 08 8F     .addr deadlock
- D 0 - - - 0x0102E8 04:82D8: 08 8F     .addr deadlock
- D 0 - - - 0x0102EA 04:82DA: 08 8F     .addr deadlock
- D 0 - - - 0x0102EC 04:82DC: 08 8F     .addr deadlock
- D 0 - - - 0x0102EE 04:82DE: 08 8F     .addr deadlock
- D - - - - 0x0102F0 04:82E0: 08 8F     .addr deadlock
- D 0 - - - 0x0102F2 04:82E2: 08 8F     .addr deadlock
- D - - - - 0x0102F4 04:82E4: 08 8F     .addr deadlock
- D - - - - 0x0102F6 04:82E6: 08 8F     .addr deadlock
- D 0 - - - 0x0102F8 04:82E8: 08 8F     .addr deadlock
- D - - - - 0x0102FA 04:82EA: 08 8F     .addr deadlock
- D 0 - - - 0x0102FC 04:82EC: 08 8F     .addr deadlock
- D 0 - - - 0x0102FE 04:82EE: 08 8F     .addr deadlock
- D 0 - - - 0x010300 04:82F0: 08 8F     .addr deadlock
- D - - - - 0x010302 04:82F2: 08 8F     .addr deadlock
- D - - - - 0x010304 04:82F4: 08 8F     .addr deadlock
- D 0 - - - 0x010306 04:82F6: 08 8F     .addr deadlock
- D 0 - - - 0x010308 04:82F8: 08 8F     .addr deadlock
- D 0 - - - 0x01030A 04:82FA: 08 8F     .addr deadlock
- D - - - - 0x01030C 04:82FC: 08 8F     .addr deadlock
- D - - - - 0x01030E 04:82FE: 08 8F     .addr deadlock
- D - - - - 0x010310 04:8300: 08 8F     .addr deadlock
- D 0 - - - 0x010312 04:8302: 08 8F     .addr deadlock
- D 0 - - - 0x010314 04:8304: 08 8F     .addr deadlock
- D 0 - - - 0x010316 04:8306: 08 8F     .addr deadlock
- D 0 - - - 0x010318 04:8308: 08 8F     .addr deadlock
- D - - - - 0x01031A 04:830A: 08 8F     .addr deadlock
- D - - - - 0x01031C 04:830C: 08 8F     .addr deadlock
- D 0 - - - 0x01031E 04:830E: 08 8F     .addr deadlock
- D 0 - - - 0x010320 04:8310: 08 8F     .addr deadlock
- D 0 - - - 0x010322 04:8312: 08 8F     .addr deadlock
- D 0 - - - 0x010324 04:8314: 08 8F     .addr deadlock
- D 0 - - - 0x010326 04:8316: 08 8F     .addr deadlock
- D 0 - - - 0x010328 04:8318: 08 8F     .addr deadlock
- D 0 - - - 0x01032A 04:831A: 08 8F     .addr deadlock
- D 0 - - - 0x01032C 04:831C: 08 8F     .addr deadlock
- D 0 - - - 0x01032E 04:831E: 08 8F     .addr deadlock
- D 0 - - - 0x010330 04:8320: 08 8F     .addr deadlock
- D 0 - - - 0x010332 04:8322: 08 8F     .addr deadlock
- D 0 - - - 0x010334 04:8324: 08 8F     .addr deadlock
- D 0 - - - 0x010336 04:8326: 08 8F     .addr deadlock
- D 0 - - - 0x010338 04:8328: 08 8F     .addr deadlock
- D 0 - - - 0x01033A 04:832A: 08 8F     .addr deadlock
- D 0 - - - 0x01033C 04:832C: 08 8F     .addr deadlock
- D 0 - - - 0x01033E 04:832E: 08 8F     .addr deadlock
- D 0 - - - 0x010340 04:8330: 08 8F     .addr deadlock
- D 0 - - - 0x010342 04:8332: 08 8F     .addr deadlock
- D 0 - - - 0x010344 04:8334: 08 8F     .addr deadlock
- D 0 - - - 0x010346 04:8336: 08 8F     .addr deadlock
- D 0 - - - 0x010348 04:8338: 08 8F     .addr deadlock
- D 0 - - - 0x01034A 04:833A: 08 8F     .addr deadlock
- D 0 - - - 0x01034C 04:833C: 08 8F     .addr deadlock
- D 0 - - - 0x01034E 04:833E: 08 8F     .addr deadlock
- D 0 - - - 0x010350 04:8340: 08 8F     .addr deadlock
- D 0 - - - 0x010352 04:8342: 08 8F     .addr deadlock
- D 0 - - - 0x010354 04:8344: 08 8F     .addr deadlock
- D 0 - - - 0x010356 04:8346: 08 8F     .addr deadlock
- D 0 - - - 0x010358 04:8348: 08 8F     .addr deadlock
- D 0 - - - 0x01035A 04:834A: 08 8F     .addr deadlock
- D 0 - - - 0x01035C 04:834C: 08 8F     .addr deadlock
- D 0 - - - 0x01035E 04:834E: 08 8F     .addr deadlock
- D 0 - - - 0x010360 04:8350: 08 8F     .addr deadlock
- D 0 - - - 0x010362 04:8352: 08 8F     .addr deadlock
- D 0 - - - 0x010364 04:8354: 08 8F     .addr deadlock
- D 0 - - - 0x010366 04:8356: 08 8F     .addr deadlock
- D 0 - - - 0x010368 04:8358: 08 8F     .addr deadlock
- D 0 - - - 0x01036A 04:835A: 08 8F     .addr deadlock
- D 0 - - - 0x01036C 04:835C: 08 8F     .addr deadlock
- D 0 - - - 0x01036E 04:835E: 08 8F     .addr deadlock
- D 0 - - - 0x010370 04:8360: 08 8F     .addr deadlock
- D 0 - - - 0x010372 04:8362: 08 8F     .addr deadlock
- D 0 - - - 0x010374 04:8364: 08 8F     .addr deadlock
- D 0 - - - 0x010376 04:8366: 08 8F     .addr deadlock
- D 0 - - - 0x010378 04:8368: 08 8F     .addr deadlock
- D 0 - - - 0x01037A 04:836A: 08 8F     .addr deadlock
- D 0 - - - 0x01037C 04:836C: 08 8F     .addr deadlock
- D 0 - - - 0x01037E 04:836E: 08 8F     .addr deadlock
- D 0 - - - 0x010380 04:8370: 08 8F     .addr deadlock
- D 0 - - - 0x010382 04:8372: 08 8F     .addr deadlock
- D 0 - - - 0x010384 04:8374: 08 8F     .addr deadlock
- D 0 - - - 0x010386 04:8376: 08 8F     .addr deadlock
- D 0 - - - 0x010388 04:8378: 08 8F     .addr deadlock
- D 0 - - - 0x01038A 04:837A: 08 8F     .addr deadlock
- D 0 - - - 0x01038C 04:837C: 08 8F     .addr deadlock
- D 0 - - - 0x01038E 04:837E: 08 8F     .addr deadlock
- D 0 - - - 0x010390 04:8380: 08 8F     .addr deadlock
- D 0 - - - 0x010392 04:8382: 08 8F     .addr deadlock
- D 0 - - - 0x010394 04:8384: 08 8F     .addr deadlock
- D 0 - - - 0x010396 04:8386: 08 8F     .addr deadlock
- D 0 - - - 0x010398 04:8388: 08 8F     .addr deadlock
- D 0 - - - 0x01039A 04:838A: 08 8F     .addr deadlock
- D 0 - - - 0x01039C 04:838C: 08 8F     .addr deadlock
- D 0 - - - 0x01039E 04:838E: 08 8F     .addr deadlock
- D 0 - - - 0x0103A0 04:8390: 08 8F     .addr deadlock

tbl_room_types:
- D 0 - - - 0x0103A2 04:8392: 8D 9B     .addr loc_closed_room_type1  ; CPU address $9B8D
- D 0 - - - 0x0103A4 04:8394: 99 9B     .addr loc_open_room_type1    ; CPU address $9B99
- D 0 - - - 0x0103A6 04:8396: A5 9B     .addr loc_closed_room_type2  ; CPU address $9BA5
- D 0 - - - 0x0103A8 04:8398: B3 9B     .addr loc_open_room_type2    ; CPU address $9BB3
- D 0 - - - 0x0103AA 04:839A: C1 9B     .addr loc_closed_room_type3  ; CPU address $9BC1
- D 0 - - - 0x0103AC 04:839C: D7 9B     .addr loc_open_room_type3    ; CPU address $9BD7
- D 0 - - - 0x0103AE 04:839E: ED 9B     .addr loc_closed_room_type4  ; CPU address $9BED
- D 0 - - - 0x0103B0 04:83A0: F9 9B     .addr loc_open_room_type4    ; CPU address $9BF9
- D 0 - - - 0x0103B2 04:83A2: 05 9C     .addr loc_closed_room_type5  ; CPU address $9C05
- D - - - - 0x0103B4 04:83A4: 0F 9C     .addr loc_open_room_type5    ; CPU address $9C0F
- D 0 - - - 0x0103B6 04:83A6: 19 9C     .addr loc_closed_room_type6  ; CPU address $9C19
- D 0 - - - 0x0103B8 04:83A8: 25 9C     .addr loc_open_room_type6    ; CPU address $9C25
- D 0 - - - 0x0103BA 04:83AA: 31 9C     .addr loc_closed_room_type7  ; CPU address $9C31
- D 0 - - - 0x0103BC 04:83AC: 4B 9C     .addr loc_open_room_type7    ; CPU address $9C4B
- D 0 - - - 0x0103BE 04:83AE: 65 9C     .addr loc_closed_room_type8  ; CPU address $9C65
- D - - - - 0x0103C0 04:83B0: 6F 9C     .addr loc_open_room_type8    ; CPU address $9C6F
- D 0 - - - 0x0103C2 04:83B2: 79 9C     .addr loc_closed_room_type9  ; CPU address $9C79
- D - - - - 0x0103C4 04:83B4: 83 9C     .addr loc_open_room_type9    ; CPU address $9C83
- D 0 - - - 0x0103C6 04:83B6: 8D 9C     .addr loc_closed_room_type10 ; CPU address $9C8D
- D - - - - 0x0103C8 04:83B8: 97 9C     .addr loc_open_room_type10   ; CPU address $9C97
- D 0 - - - 0x0103CA 04:83BA: A1 9C     .addr loc_closed_room_type11 ; CPU address $9CA1
- D 0 - - - 0x0103CC 04:83BC: B7 9C     .addr loc_open_room_type11   ; CPU address $9CB7

tbl_checkpoint_after_death:
- D 0 - - - 0x0103CE 04:83BE: AF 9A     .addr loc_checkpoint_after_death_level_1_0      ; CPU address $9AAF
- D - - - - 0x0103D0 04:83C0: 08 8F     .addr deadlock                                  ; CPU address $8F08
- D - - - - 0x0103D2 04:83C2: 08 8F     .addr deadlock
- D 0 - - - 0x0103D4 04:83C4: C7 9A     .addr loc_checkpoint_after_death_level_1_1      ; CPU address $9AC7
- D - - - - 0x0103D6 04:83C6: D3 9A     .addr loc_checkpoint_after_death_level_1_2      ; CPU address $9AD3
- D 0 - - - 0x0103D8 04:83C8: DF 9A     .addr loc_checkpoint_after_death_level_1_3      ; CPU address $9ADF
- D 0 - - - 0x0103DA 04:83CA: E8 9A     .addr loc_checkpoint_after_death_level2_outside ; CPU address $9AE8
- D - - - - 0x0103DC 04:83CC: 00 9B     .addr loc_checkpoint_after_death_level2_d1_d3   ; CPU address $9B00
- D - - - - 0x0103DE 04:83CE: 0F 9B     .addr loc_checkpoint_after_death_level2_d2      ; CPU address $9B0F
- D 0 - - - 0x0103E0 04:83D0: 1B 9B     .addr loc_checkpoint_after_death_level2_d4_d5   ; CPU address $9B1B
- D - - - - 0x0103E2 04:83D2: 2A 9B     .addr loc_checkpoint_after_death_level2_d6_d8   ; CPU address $9B2A
- D 0 - - - 0x0103E4 04:83D4: 36 9B     .addr loc_checkpoint_after_death_level2_d7      ; CPU address $9B36
- D 0 - - - 0x0103E6 04:83D6: 2A 9B     .addr loc_checkpoint_after_death_level2_d9_d10  ; CPU address $9B2A
- D 0 - - - 0x0103E8 04:83D8: 2A 9B     .addr loc_checkpoint_after_death_level2_d11_d13 ; CPU address $9B2A
- D 0 - - - 0x0103EA 04:83DA: 42 9B     .addr loc_checkpoint_after_death_level2_d12     ; CPU address $9B42
- D - - - - 0x0103EC 04:83DC: 4E 9B     .addr loc_checkpoint_after_death_level3_0       ; CPU address $9B4E
- D - - - - 0x0103EE 04:83DE: 5D 9B     .addr loc_checkpoint_after_death_level3_1       ; CPU address $9B5D
- D 0 - - - 0x0103F0 04:83E0: 63 9B     .addr loc_checkpoint_after_death_level3_2       ; CPU address $9B63
- D - - - - 0x0103F2 04:83E2: 69 9B     .addr loc_checkpoint_after_death_level3_3       ; CPU address $9B69
- D - - - - 0x0103F4 04:83E4: 6F 9B     .addr loc_checkpoint_after_death_level3_4       ; CPU address $9B6F
- D - - - - 0x0103F6 04:83E6: 8A 9B     .addr loc_checkpoint_after_death_one            ; CPU address $9B8A
- D - - - - 0x0103F8 04:83E8: 08 8F     .addr deadlock
- D - - - - 0x0103FA 04:83EA: 08 8F     .addr deadlock
- D - - - - 0x0103FC 04:83EC: 08 8F     .addr deadlock
- D - - - - 0x0103FE 04:83EE: 08 8F     .addr deadlock
- D 0 - - - 0x010400 04:83F0: 75 9B     .word loc_checkpoint_after_death_level_racing   ; CPU address $9B75
- D - - - - 0x010402 04:83F2: 8A 9B     .addr loc_checkpoint_after_death_one            ; CPU address $9B8A
- D - - - - 0x010404 04:83F4: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010406 04:83F6: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010408 04:83F8: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01040A 04:83FA: 8A 9B     .addr loc_checkpoint_after_death_one
- D 0 - - - 0x01040C 04:83FC: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01040E 04:83FE: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010410 04:8400: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010412 04:8402: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010414 04:8404: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010416 04:8406: 08 8F     .addr deadlock
- D - - - - 0x010418 04:8408: 08 8F     .addr deadlock
- D - - - - 0x01041A 04:840A: 08 8F     .addr deadlock
- D - - - - 0x01041C 04:840C: 08 8F     .addr deadlock
- D - - - - 0x01041E 04:840E: 08 8F     .addr deadlock
- D - - - - 0x010420 04:8410: 08 8F     .addr deadlock
- D - - - - 0x010422 04:8412: 08 8F     .addr deadlock
- D - - - - 0x010424 04:8414: 08 8F     .addr deadlock
- D - - - - 0x010426 04:8416: 08 8F     .addr deadlock
- D - - - - 0x010428 04:8418: 08 8F     .addr deadlock
- D - - - - 0x01042A 04:841A: 08 8F     .addr deadlock
- D - - - - 0x01042C 04:841C: 08 8F     .addr deadlock
- D - - - - 0x01042E 04:841E: 08 8F     .addr deadlock
- D - - - - 0x010430 04:8420: 08 8F     .addr deadlock
- D - - - - 0x010432 04:8422: 08 8F     .addr deadlock
- D - - - - 0x010434 04:8424: 08 8F     .addr deadlock
- D - - - - 0x010436 04:8426: 08 8F     .addr deadlock
- D - - - - 0x010438 04:8428: 08 8F     .addr deadlock
- D - - - - 0x01043A 04:842A: 08 8F     .addr deadlock
- D - - - - 0x01043C 04:842C: 08 8F     .addr deadlock
- D - - - - 0x01043E 04:842E: 08 8F     .addr deadlock
- D - - - - 0x010440 04:8430: 08 8F     .addr deadlock
- D - - - - 0x010442 04:8432: 08 8F     .addr deadlock
- D - - - - 0x010444 04:8434: 08 8F     .addr deadlock
- D - - - - 0x010446 04:8436: 08 8F     .addr deadlock
- D - - - - 0x010448 04:8438: 08 8F     .addr deadlock
- D - - - - 0x01044A 04:843A: 08 8F     .addr deadlock
- D - - - - 0x01044C 04:843C: 08 8F     .addr deadlock
- D - - - - 0x01044E 04:843E: 08 8F     .addr deadlock
- D - - - - 0x010450 04:8440: 08 8F     .addr deadlock
- D 0 - - - 0x010452 04:8442: 8A 9B     .addr loc_checkpoint_after_death_one ; CPU Address $9B8A
- D - - - - 0x010454 04:8444: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010456 04:8446: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010458 04:8448: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01045A 04:844A: 8A 9B     .addr loc_checkpoint_after_death_one
- D 0 - - - 0x01045C 04:844C: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01045E 04:844E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010460 04:8450: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010462 04:8452: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010464 04:8454: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010466 04:8456: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010468 04:8458: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01046A 04:845A: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01046C 04:845C: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01046E 04:845E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010470 04:8460: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010472 04:8462: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010474 04:8464: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010476 04:8466: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010478 04:8468: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01047A 04:846A: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01047C 04:846C: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01047E 04:846E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010480 04:8470: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010482 04:8472: 8A 9B     .addr loc_checkpoint_after_death_one
- D 0 - - - 0x010484 04:8474: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010486 04:8476: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010488 04:8478: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01048A 04:847A: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01048C 04:847C: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01048E 04:847E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010490 04:8480: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010492 04:8482: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010494 04:8484: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010496 04:8486: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x010498 04:8488: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x01049A 04:848A: 8A 9B     .addr loc_checkpoint_after_death_one
- D 0 - - - 0x01049C 04:848C: 8A 9B     .addr loc_checkpoint_after_death_one
- D 0 - - - 0x01049E 04:848E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104A0 04:8490: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104A2 04:8492: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104A4 04:8494: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104A6 04:8496: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104A8 04:8498: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104AA 04:849A: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104AC 04:849C: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104AE 04:849E: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104B0 04:84A0: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104B2 04:84A2: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104B4 04:84A4: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104B6 04:84A6: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104B8 04:84A8: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104BA 04:84AA: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104BC 04:84AC: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104BE 04:84AE: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104C0 04:84B0: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104C2 04:84B2: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104C4 04:84B4: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104C6 04:84B6: 8A 9B     .addr loc_checkpoint_after_death_one
- D - - - - 0x0104C8 04:84B8: 8A 9B     .addr loc_checkpoint_after_death_one

tbl_enemies_after_waiting:
- D - - - - 0x0104CA 04:84BA: 0E        .byte $0E   ; level 1.0
- D - - - - 0x0104CB 04:84BB: 0F        .byte $0F   ; 
- D - - - - 0x0104CC 04:84BC: 0F        .byte $0F   ; 
- D - - - - 0x0104CD 04:84BD: 0E        .byte $0E   ; level 1.1
- D - - - - 0x0104CE 04:84BE: 16        .byte $16   ; level 1.2
- D - - - - 0x0104CF 04:84BF: 16        .byte $16   ; level 1.3
- D - - - - 0x0104D0 04:84C0: 12        .byte $12   ; level 2 (outside)
- D - - - - 0x0104D1 04:84C1: 1D        .byte $1D   ; level 2 (1-3)
- D - - - - 0x0104D2 04:84C2: 1D        .byte $1D   ; level 2 (2)
- D - - - - 0x0104D3 04:84C3: 12        .byte $12   ; level 2 (4-5)
- D - - - - 0x0104D4 04:84C4: 1D        .byte $1D   ; level 2 (6-8)
- D - - - - 0x0104D5 04:84C5: 1D        .byte $1D   ; level 2 (7)
- D - - - - 0x0104D6 04:84C6: 13        .byte $13   ; level 2 (9-10)
- D - - - - 0x0104D7 04:84C7: 13        .byte $13   ; level 2 (11-13)
- D - - - - 0x0104D8 04:84C8: 13        .byte $13   ; level 2 (12)
- D - - - - 0x0104D9 04:84C9: 02        .byte $02   ; level 3.0
- D - - - - 0x0104DA 04:84CA: 02        .byte $02   ; level 3.1
- D - - - - 0x0104DB 04:84CB: 02        .byte $02   ; level 3.2
- D - - - - 0x0104DC 04:84CC: 0A        .byte $0A   ; level 3.3
- D 0 - - - 0x0104DD 04:84CD: 0A        .byte $0A   ; level 3.4
- D 0 - - - 0x0104DE 04:84CE: 00        .byte $00   ; 
- D - - - - 0x0104DF 04:84CF: 00        .byte $00   ; 
- D - - - - 0x0104E0 04:84D0: 00        .byte $00   ; 
- D - - - - 0x0104E1 04:84D1: 00        .byte $00   ; 
- D - - - - 0x0104E2 04:84D2: 00        .byte $00   ; 
- D - - - - 0x0104E3 04:84D3: 21        .byte $21   ; level racing
- D 0 - - - 0x0104E4 04:84D4: 00        .byte $00   ; 
- D 0 - - - 0x0104E5 04:84D5: 00        .byte $00   ; 
- D 0 - - - 0x0104E6 04:84D6: 00        .byte $00   ; 
- D 0 - - - 0x0104E7 04:84D7: 00        .byte $00   ; 
- D 0 - - - 0x0104E8 04:84D8: 00        .byte $00   ; 
- D 0 - - - 0x0104E9 04:84D9: 00        .byte $00   ; 
- D 0 - - - 0x0104EA 04:84DA: 00        .byte $00   ; 
- D 0 - - - 0x0104EB 04:84DB: 00        .byte $00   ; 
- D 0 - - - 0x0104EC 04:84DC: 00        .byte $00   ; 
- D 0 - - - 0x0104ED 04:84DD: 00        .byte $00   ; 
- D - - - - 0x0104EE 04:84DE: 00        .byte $00   ; 
- D - - - - 0x0104EF 04:84DF: 00        .byte $00   ; 
- D - - - - 0x0104F0 04:84E0: 00        .byte $00   ; 
- D - - - - 0x0104F1 04:84E1: 00        .byte $00   ; 
- D - - - - 0x0104F2 04:84E2: 00        .byte $00   ; 
- D - - - - 0x0104F3 04:84E3: 00        .byte $00   ; 
- D - - - - 0x0104F4 04:84E4: 00        .byte $00   ; 
- D - - - - 0x0104F5 04:84E5: 00        .byte $00   ; 
- D - - - - 0x0104F6 04:84E6: 00        .byte $00   ; 
- D - - - - 0x0104F7 04:84E7: 00        .byte $00   ; 
- D - - - - 0x0104F8 04:84E8: 00        .byte $00   ; 
- D - - - - 0x0104F9 04:84E9: 00        .byte $00   ; 
- D - - - - 0x0104FA 04:84EA: 00        .byte $00   ; 
- D - - - - 0x0104FB 04:84EB: 00        .byte $00   ; 
- D - - - - 0x0104FC 04:84EC: 00        .byte $00   ; 
- D - - - - 0x0104FD 04:84ED: 00        .byte $00   ; 
- D - - - - 0x0104FE 04:84EE: 00        .byte $00   ; 
- D - - - - 0x0104FF 04:84EF: 00        .byte $00   ; 
- D - - - - 0x010500 04:84F0: 00        .byte $00   ; 
- D - - - - 0x010501 04:84F1: 00        .byte $00   ; 
- D - - - - 0x010502 04:84F2: 00        .byte $00   ; 
- D - - - - 0x010503 04:84F3: 00        .byte $00   ; 
- D - - - - 0x010504 04:84F4: 00        .byte $00   ; 
- D - - - - 0x010505 04:84F5: 00        .byte $00   ; 
- D - - - - 0x010506 04:84F6: 00        .byte $00   ; 
- D - - - - 0x010507 04:84F7: 00        .byte $00   ; 
- D - - - - 0x010508 04:84F8: 00        .byte $00   ; 
- D - - - - 0x010509 04:84F9: 00        .byte $00   ; 
- D - - - - 0x01050A 04:84FA: 00        .byte $00   ; 
- D - - - - 0x01050B 04:84FB: 00        .byte $00   ; 
- D - - - - 0x01050C 04:84FC: 21        .byte $21   ; level 4, map 1 (B2-D2)
- D - - - - 0x01050D 04:84FD: 21        .byte $21   ; level 4, map 1 (C0-C2)
- D - - - - 0x01050E 04:84FE: 21        .byte $21   ; level 4, map 1 (B1-C1)
- D - - - - 0x01050F 04:84FF: 21        .byte $21   ; level 4, map 1 (B1-B3)
- D - - - - 0x010510 04:8500: 21        .byte $21   ; level 4, map 1 (A3-D3)
- D - - - - 0x010511 04:8501: 21        .byte $21   ; level 4, map 1 (D0-D3)
- D - - - - 0x010512 04:8502: 21        .byte $21   ; level 4, map 1 (A0-D0)
- D - - - - 0x010513 04:8503: 21        .byte $21   ; level 4, map 1 (A0-A3)
- D - - - - 0x010514 04:8504: 21        .byte $21   ; level 4, map 2 (A0-A6)
- D - - - - 0x010515 04:8505: 21        .byte $21   ; level 4, map 2 (A6-F6)
- D - - - - 0x010516 04:8506: 21        .byte $21   ; level 4, map 2 (F0-F6)
- D - - - - 0x010517 04:8507: 21        .byte $21   ; level 4, map 2 (A0-F0)
- D - - - - 0x010518 04:8508: 21        .byte $21   ; level 4, map 2 (B1-B5)
- D 0 - - - 0x010519 04:8509: 21        .byte $21   ; level 4, map 2 (A3-A3)
- D - - - - 0x01051A 04:850A: 21        .byte $21   ; level 4, map 2 (B5-E5)
- D - - - - 0x01051B 04:850B: 21        .byte $21   ; level 4, map 2 (E0-E6)
- D - - - - 0x01051C 04:850C: 21        .byte $21   ; level 4, map 2 (B1-F1)
- D - - - - 0x01051D 04:850D: 21        .byte $21   ; level 4, map 2 (C2-C4)
- D - - - - 0x01051E 04:850E: 21        .byte $21   ; level 4, map 2 (B4-D4)
- D - - - - 0x01051F 04:850F: 21        .byte $21   ; level 4, map 2 (D2-D4)
- D - - - - 0x010520 04:8510: 21        .byte $21   ; level 4, map 2 (C2-D2)
- D 0 - - - 0x010521 04:8511: 27        .byte $27   ; level 4, map 3 (D3-E3)
- D - - - - 0x010522 04:8512: 27        .byte $27   ; level 4, map 3 (D3-D5)
- D - - - - 0x010523 04:8513: 27        .byte $27   ; level 4, map 3 (D4-F4)
- D - - - - 0x010524 04:8514: 27        .byte $27   ; level 4, map 3 (E3-E4)
- D - - - - 0x010525 04:8515: 27        .byte $27   ; level 4, map 3 (C2-G2)
- D - - - - 0x010526 04:8516: 27        .byte $27   ; level 4, map 3 (C1-C6)
- D - - - - 0x010527 04:8517: 27        .byte $27   ; level 4, map 3 (C5-F5)
- D - - - - 0x010528 04:8518: 27        .byte $27   ; level 4, map 3 (F2-F5)
- D - - - - 0x010529 04:8519: 27        .byte $27   ; level 4, map 3 (B1-G1)
- D - - - - 0x01052A 04:851A: 27        .byte $27   ; level 4, map 3 (B1-B7)
- D - - - - 0x01052B 04:851B: 27        .byte $27   ; level 4, map 3 (B6-G6)
- D - - - - 0x01052C 04:851C: 27        .byte $27   ; level 4, map 3 (G1-G6)
- D - - - - 0x01052D 04:851D: 27        .byte $27   ; level 4, map 3 (A0-H0)
- D - - - - 0x01052E 04:851E: 27        .byte $27   ; level 4, map 3 (A0-A7)
- D - - - - 0x01052F 04:851F: 27        .byte $27   ; level 4, map 3 (A7-H7)
- D - - - - 0x010530 04:8520: 27        .byte $27   ; level 4, map 3 (H0-H7)
- D - - - - 0x010531 04:8521: 27        .byte $27   ; level 4, map 4 (A0-J0)
- D - - - - 0x010532 04:8522: 27        .byte $27   ; level 4, map 4 (A0-A9)
- D - - - - 0x010533 04:8523: 27        .byte $27   ; level 4, map 4 (A9-J9)
- D - - - - 0x010534 04:8524: 27        .byte $27   ; level 4, map 4 (J0-J9)
- D - - - - 0x010535 04:8525: 27        .byte $27   ; level 4, map 4 (B1-I1)
- D - - - - 0x010536 04:8526: 27        .byte $27   ; level 4, map 4 (B1-B8)
- D - - - - 0x010537 04:8527: 27        .byte $27   ; level 4, map 4 (B8-E8)
- D - - - - 0x010538 04:8528: 27        .byte $27   ; level 4, map 4 (G8-J8)
- D - - - - 0x010539 04:8529: 27        .byte $27   ; level 4, map 4 (I6-I8)
- D - - - - 0x01053A 04:852A: 27        .byte $27   ; level 4, map 4 (I1-I3)
- D - - - - 0x01053B 04:852B: 27        .byte $27   ; level 4, map 4 (G2-I2)
- D - - - - 0x01053C 04:852C: 27        .byte $27   ; level 4, map 4 (C2-E2)
- D - - - - 0x01053D 04:852D: 27        .byte $27   ; level 4, map 4 (C1-C9)
- D - - - - 0x01053E 04:852E: 27        .byte $27   ; level 4, map 4 (A7-I7)
- D - - - - 0x01053F 04:852F: 27        .byte $27   ; level 4, map 4 (H2-H7)
- D - - - - 0x010540 04:8530: 27        .byte $27   ; level 4, map 4 (D3-G3)
- D 0 - - - 0x010541 04:8531: 27        .byte $27   ; level 4, map 4 (D2-D7)
- D - - - - 0x010542 04:8532: 27        .byte $27   ; level 4, map 4 (D6-H6)
- D - - - - 0x010543 04:8533: 27        .byte $27   ; level 4, map 4 (G3-G6)
- D - - - - 0x010544 04:8534: 27        .byte $27   ; level 4, map 4 (E4-G4)
- D - - - - 0x010545 04:8535: 27        .byte $27   ; level 4, map 4 (E3-E5)
- D - - - - 0x010546 04:8536: 27        .byte $27   ; level 4, map 4 (E5-E5)
- D - - - - 0x010547 04:8537: 27        .byte $27   ; level 4, map 4 (F4-F5)

tbl_room_lengths:
- D 0 - - - 0x010548 04:8538: 10        .byte $10   ; level 1.0
- D - - - - 0x010549 04:8539: 08        .byte $08   ; 
- D - - - - 0x01054A 04:853A: 08        .byte $08   ; 
- D 0 - - - 0x01054B 04:853B: 08        .byte $08   ; level 1.1
- D 0 - - - 0x01054C 04:853C: 08        .byte $08   ; level 1.2
- D 0 - - - 0x01054D 04:853D: 08        .byte $08   ; level 1.3
- D 0 - - - 0x01054E 04:853E: 10        .byte $10   ; level 2 (outside)
- D 0 - - - 0x01054F 04:853F: 08        .byte $08   ; level 2 (1-3)
- D 0 - - - 0x010550 04:8540: 08        .byte $08   ; level 2 (2)
- D 0 - - - 0x010551 04:8541: 08        .byte $08   ; level 2 (4-5)
- D 0 - - - 0x010552 04:8542: 08        .byte $08   ; level 2 (6-8)
- D 0 - - - 0x010553 04:8543: 08        .byte $08   ; level 2 (7)
- D 0 - - - 0x010554 04:8544: 08        .byte $08   ; level 2 (9-10)
- D 0 - - - 0x010555 04:8545: 08        .byte $08   ; level 2 (11-13)
- D 0 - - - 0x010556 04:8546: 08        .byte $08   ; level 2 (12)
- D 0 - - - 0x010557 04:8547: 10        .byte $10   ; level 3.0
- D 0 - - - 0x010558 04:8548: 08        .byte $08   ; level 3.1
- D 0 - - - 0x010559 04:8549: 08        .byte $08   ; level 3.2
- D 0 - - - 0x01055A 04:854A: 08        .byte $08   ; level 3.3
- D 0 - - - 0x01055B 04:854B: 08        .byte $08   ; level 3.4
- D 0 - - - 0x01055C 04:854C: 01        .byte $01   ; boss of level 4
- D - - - - 0x01055D 04:854D: 01        .byte $01   ; 
- D - - - - 0x01055E 04:854E: 01        .byte $01   ; 
- D - - - - 0x01055F 04:854F: 01        .byte $01   ; 
- D - - - - 0x010560 04:8550: 01        .byte $01   ; 
- D 0 - - - 0x010561 04:8551: 24        .byte $24   ; level racing
- D 0 - - - 0x010562 04:8552: 01        .byte $01   ; room with NPC in level 1
- D 0 - - - 0x010563 04:8553: 01        .byte $01   ; room with NPC in level 2.1
- D 0 - - - 0x010564 04:8554: 01        .byte $01   ; room with NPC in level 2.2
- D 0 - - - 0x010565 04:8555: 01        .byte $01   ; room with NPC in level 3
- D 0 - - - 0x010566 04:8556: 01        .byte $01   ; room with NPC in level 4
- D 0 - - - 0x010567 04:8557: 01        .byte $01   ; 
- D 0 - - - 0x010568 04:8558: 01        .byte $01   ; 
- D 0 - - - 0x010569 04:8559: 01        .byte $01   ; 
- D 0 - - - 0x01056A 04:855A: 01        .byte $01   ; 
- D 0 - - - 0x01056B 04:855B: 01        .byte $01   ; 
- D 0 - - - 0x01056C 04:855C: 01        .byte $01   ; level 3.0 (water 1.1)
- D - - - - 0x01056D 04:855D: 02        .byte $02   ; 
- D 0 - - - 0x01056E 04:855E: 03        .byte $03   ; level 3.0 (water 1.0)
- D - - - - 0x01056F 04:855F: 04        .byte $04   ; 
- D - - - - 0x010570 04:8560: 05        .byte $05   ; 
- D 0 - - - 0x010571 04:8561: 06        .byte $06   ; level 3.0 (water 1.2)
- D - - - - 0x010572 04:8562: 01        .byte $01   ; 
- D 0 - - - 0x010573 04:8563: 02        .byte $02   ; level 3.3 (water 1.0)
- D 0 - - - 0x010574 04:8564: 03        .byte $03   ; level 3.1 / 3.2 (water 1.0)
- D 0 - - - 0x010575 04:8565: 07        .byte $07   ; level 3.4 (water 1.0)
- D - - - - 0x010576 04:8566: 01        .byte $01   ; 
- D - - - - 0x010577 04:8567: 01        .byte $01   ; 
- D 0 - - - 0x010578 04:8568: 04        .byte $04   ; level 2 (1-3) (water 1.0)
- D 0 - - - 0x010579 04:8569: 04        .byte $04   ; level 2 (2) (water 1.0)
- D 0 - - - 0x01057A 04:856A: 06        .byte $06   ; level 2 (4-5) (water 1.0)
- D - - - - 0x01057B 04:856B: 01        .byte $01   ; 
- D - - - - 0x01057C 04:856C: 01        .byte $01   ; 
- D - - - - 0x01057D 04:856D: 01        .byte $01   ; 
- D 0 - - - 0x01057E 04:856E: 01        .byte $01   ; level 2 (6-8) (water 1.0)
- D 0 - - - 0x01057F 04:856F: 05        .byte $05   ; level 2 (7) (water 1.0)
- D 0 - - - 0x010580 04:8570: 03        .byte $03   ; level 2 (9-10) (water 1.0)
- D 0 - - - 0x010581 04:8571: 03        .byte $03   ; level 2 (11-13) / (12) (water 1.0)
- D - - - - 0x010582 04:8572: 04        .byte $04   ; 
- D - - - - 0x010583 04:8573: 04        .byte $04   ; 
- D 0 - - - 0x010584 04:8574: 01        .byte $01   ; 
- D 0 - - - 0x010585 04:8575: 02        .byte $02   ; 
- D 0 - - - 0x010586 04:8576: 03        .byte $03   ; 
- D 0 - - - 0x010587 04:8577: 07        .byte $07   ; 
- D 0 - - - 0x010588 04:8578: 04        .byte $04   ; 
- D 0 - - - 0x010589 04:8579: 04        .byte $04   ; 
- D 0 - - - 0x01058A 04:857A: 02        .byte $02   ; level 4, map 1 (B2-D2)
- D 0 - - - 0x01058B 04:857B: 02        .byte $02   ; level 4, map 1 (C0-C2)
- D 0 - - - 0x01058C 04:857C: 01        .byte $01   ; level 4, map 1 (B1-C1)
- D 0 - - - 0x01058D 04:857D: 02        .byte $02   ; level 4, map 1 (B1-B3)
- D 0 - - - 0x01058E 04:857E: 04        .byte $04   ; level 4, map 1 (A3-D3)
- D 0 - - - 0x01058F 04:857F: 04        .byte $04   ; level 4, map 1 (D0-D3)
- D 0 - - - 0x010590 04:8580: 04        .byte $04   ; level 4, map 1 (A0-D0)
- D 0 - - - 0x010591 04:8581: 04        .byte $04   ; level 4, map 1 (A0-A3)
- D 0 - - - 0x010592 04:8582: 06        .byte $06   ; level 4, map 2 (A0-A6)
- D 0 - - - 0x010593 04:8583: 06        .byte $06   ; level 4, map 2 (A6-F6)
- D 0 - - - 0x010594 04:8584: 06        .byte $06   ; level 4, map 2 (F0-F6)
- D 0 - - - 0x010595 04:8585: 06        .byte $06   ; level 4, map 2 (A0-F0)
- D 0 - - - 0x010596 04:8586: 05        .byte $05   ; level 4, map 2 (B1-B5)
- D 0 - - - 0x010597 04:8587: 01        .byte $01   ; level 4, map 2 (A3-A3)
- D 0 - - - 0x010598 04:8588: 03        .byte $03   ; level 4, map 2 (B5-E5)
- D 0 - - - 0x010599 04:8589: 05        .byte $05   ; level 4, map 2 (E0-E6)
- D 0 - - - 0x01059A 04:858A: 04        .byte $04   ; level 4, map 2 (B1-F1)
- D 0 - - - 0x01059B 04:858B: 01        .byte $01   ; level 4, map 2 (C2-C4)
- D 0 - - - 0x01059C 04:858C: 02        .byte $02   ; level 4, map 2 (B4-D4)
- D 0 - - - 0x01059D 04:858D: 01        .byte $01   ; level 4, map 2 (D2-D4)
- D 0 - - - 0x01059E 04:858E: 01        .byte $01   ; level 4, map 2 (C2-D2)
- D 0 - - - 0x01059F 04:858F: 02        .byte $02   ; level 4, map 3 (D3-E3)
- D 0 - - - 0x0105A0 04:8590: 02        .byte $02   ; level 4, map 3 (D3-D5)
- D 0 - - - 0x0105A1 04:8591: 02        .byte $02   ; level 4, map 3 (D4-F4)
- D 0 - - - 0x0105A2 04:8592: 01        .byte $01   ; level 4, map 3 (E3-E4)
- D 0 - - - 0x0105A3 04:8593: 04        .byte $04   ; level 4, map 3 (C2-G2)
- D 0 - - - 0x0105A4 04:8594: 05        .byte $05   ; level 4, map 3 (C1-C6)
- D 0 - - - 0x0105A5 04:8595: 04        .byte $04   ; level 4, map 3 (C5-F5)
- D 0 - - - 0x0105A6 04:8596: 04        .byte $04   ; level 4, map 3 (F2-F5)
- D 0 - - - 0x0105A7 04:8597: 06        .byte $06   ; level 4, map 3 (B1-G1)
- D 0 - - - 0x0105A8 04:8598: 06        .byte $06   ; level 4, map 3 (B1-B7)
- D 0 - - - 0x0105A9 04:8599: 06        .byte $06   ; level 4, map 3 (B6-G6)
- D 0 - - - 0x0105AA 04:859A: 06        .byte $06   ; level 4, map 3 (G1-G6)
- D 0 - - - 0x0105AB 04:859B: 08        .byte $08   ; level 4, map 3 (A0-H0)
- D 0 - - - 0x0105AC 04:859C: 07        .byte $07   ; level 4, map 3 (A0-A7)
- D 0 - - - 0x0105AD 04:859D: 08        .byte $08   ; level 4, map 3 (A7-H7)
- D 0 - - - 0x0105AE 04:859E: 07        .byte $07   ; level 4, map 3 (H0-H7)
- D 0 - - - 0x0105AF 04:859F: 0A        .byte $0A   ; level 4, map 4 (A0-J0)
- D 0 - - - 0x0105B0 04:85A0: 0A        .byte $0A   ; level 4, map 4 (A0-A9)
- D 0 - - - 0x0105B1 04:85A1: 0A        .byte $0A   ; level 4, map 4 (A9-J9)
- D 0 - - - 0x0105B2 04:85A2: 0A        .byte $0A   ; level 4, map 4 (J0-J9)
- D 0 - - - 0x0105B3 04:85A3: 08        .byte $08   ; level 4, map 4 (B1-I1)
- D 0 - - - 0x0105B4 04:85A4: 08        .byte $08   ; level 4, map 4 (B1-B8)
- D 0 - - - 0x0105B5 04:85A5: 03        .byte $03   ; level 4, map 4 (B8-E8)
- D 0 - - - 0x0105B6 04:85A6: 05        .byte $05   ; level 4, map 4 (G8-J8)
- D 0 - - - 0x0105B7 04:85A7: 03        .byte $03   ; level 4, map 4 (I6-I8)
- D 0 - - - 0x0105B8 04:85A8: 04        .byte $04   ; level 4, map 4 (I1-I3)
- D 0 - - - 0x0105B9 04:85A9: 03        .byte $03   ; level 4, map 4 (G2-I2)
- D 0 - - - 0x0105BA 04:85AA: 03        .byte $03   ; level 4, map 4 (C2-E2)
- D 0 - - - 0x0105BB 04:85AB: 08        .byte $08   ; level 4, map 4 (C1-C9)
- D 0 - - - 0x0105BC 04:85AC: 08        .byte $08   ; level 4, map 4 (A7-I7)
- D 0 - - - 0x0105BD 04:85AD: 06        .byte $06   ; level 4, map 4 (H2-H7)
- D 0 - - - 0x0105BE 04:85AE: 04        .byte $04   ; level 4, map 4 (D3-G3)
- D 0 - - - 0x0105BF 04:85AF: 05        .byte $05   ; level 4, map 4 (D2-D7)
- D 0 - - - 0x0105C0 04:85B0: 04        .byte $04   ; level 4, map 4 (D6-H6)
- D 0 - - - 0x0105C1 04:85B1: 04        .byte $04   ; level 4, map 4 (G3-G6)
- D 0 - - - 0x0105C2 04:85B2: 02        .byte $02   ; level 4, map 4 (E4-G4)
- D 0 - - - 0x0105C3 04:85B3: 02        .byte $02   ; level 4, map 4 (E3-E5)
- D 0 - - - 0x0105C4 04:85B4: 01        .byte $01   ; level 4, map 4 (E5-E5)
- D 0 - - - 0x0105C5 04:85B5: 01        .byte $01   ; level 4, map 4 (F4-F5)

tbl_ptr_checkpoints_on_the_level:
- D 0 - - - 0x0105C6 04:85B6: 75 86     .addr tbl_checkpoints_on_the_level1 ; CPU address $8675
- D 0 - - - 0x0105C8 04:85B8: 79 86     .addr tbl_checkpoints_on_the_level2 ; CPU address $8679
- D 0 - - - 0x0105CA 04:85BA: 81 86     .addr tbl_checkpoints_on_the_level3 ; CPU address $8681
- D 0 - - - 0x0105CC 04:85BC: 85 86     .addr tbl_checkpoints_on_the_level4 ; CPU address $8685

tbl_message_bar_bottom_attrs:
- D 0 - - - 0x0105CE 04:85BE: C0        .byte $C0, $30, $00, $00, $00, $00, $00, $00, $CC, $33, $00, $00, $00, $00, $00, $00

tbl_roof_pitches:
; 1 byte - the starting x-position in the starting screen
; 2 byte - the starting number of the screen
; 3 byte - the ending x-position in the ending screen
; 4 byte - the ending number of the screen
; 5 byte - top (minimal) y-position of pitch
- D 0 - - - 0x0105DE 04:85CE: 88        .byte $88, $03, $B0, $03, $50   ; the left roof pitch 1
- D 0 - - - 0x0105E3 04:85D3: C8        .byte $C8, $04, $40, $05, $50   ; the left roof pitch 2
- D 0 - - - 0x0105E8 04:85D8: C8        .byte $C8, $06, $00, $07, $60   ; the left roof pitch 3
- D 0 - - - 0x0105ED 04:85DD: 58        .byte $58, $07, $A0, $07, $80   ; the left roof pitch 4
- D 0 - - - 0x0105F2 04:85E2: 38        .byte $38, $08, $70, $08, $60   ; the left roof pitch 5
- D 0 - - - 0x0105F7 04:85E7: 18        .byte $18, $09, $80, $09, $60   ; the left roof pitch 6
- D 0 - - - 0x0105FC 04:85EC: 58        .byte $58, $0B, $C0, $0B, $50   ; the left roof pitch 7
- D 0 - - - 0x010601 04:85F1: 08        .byte $08, $0E, $80, $0E, $50   ; the left roof pitch 8
- D 0 - - - 0x010606 04:85F6: A8        .byte $A8, $0F, $D0, $0F, $50   ; the left roof pitch 9
- D 0 - - - 0x01060B 04:85FB: FF        .byte $FF, $FF                  ;
- D 0 - - - 0x01060D 04:85FD: 50        .byte $50, $04, $88, $04, $50   ; the right roof pitch 1
- D 0 - - - 0x010612 04:8602: 20        .byte $20, $06, $98, $06, $50   ; the right roof pitch 2
- D 0 - - - 0x010617 04:8607: 30        .byte $30, $07, $68, $07, $60   ; the right roof pitch 3
- D 0 - - - 0x01061C 04:860C: 00        .byte $00, $08, $48, $08, $80   ; the right roof pitch 4
- D 0 - - - 0x010621 04:8611: A0        .byte $A0, $08, $D8, $08, $60   ; the right roof pitch 5
- D 0 - - - 0x010626 04:8616: 90        .byte $90, $0A, $F8, $0A, $60   ; the right roof pitch 6
- D 0 - - - 0x01062B 04:861B: A0        .byte $A0, $0C, $08, $0D, $50   ; the right roof pitch 7
- D 0 - - - 0x010630 04:8620: 40        .byte $40, $0F, $68, $0F, $50   ; the right roof pitch 8
- D 0 - - - 0x010635 04:8625: FF        .byte $FF, $FF   ; 

; For level-racing
tbl_car_render_offsets:
; 1 byte - the frame offset of the car wheels
; 2 byte - the frame offset of the car
; 3 byte - the display Y-position offset of the car
; 4 byte - the display Y-position offset of the character (in the car)
; 5 byte - the frame offset of the character (in the car)
; 6 byte - the offset of the bullet Y-position
- D 0 - - - 0x010637 04:8627: 00        .byte $00, $10, $FE, $F0, $18, $EE
- D 0 - - - 0x01063D 04:862D: 02        .byte $02, $10, $FE, $F0, $18, $EE
- D 0 - - - 0x010643 04:8633: 0C        .byte $0C, $14, $FF, $F4, $1A, $F1
- D 0 - - - 0x010649 04:8639: 0E        .byte $0E, $16, $00, $FB, $1C, $F8
- D 0 - - - 0x01064F 04:863F: 04        .byte $04, $10, $FD, $EF, $18, $ED
- D - - - - 0x010655 04:8645: 06        .byte $06, $10, $FD, $EF, $18, $ED
- D - - - - 0x01065B 04:864B: 08        .byte $08, $10, $FD, $EF, $18, $ED
- D 0 - - - 0x010661 04:8651: 0A        .byte $0A, $10, $00, $F2, $18, $F0

; 1 byte - ascent, HighPosX 
; 2 byte - ascent, start LowPosX
; 3 byte - ascent, end LowPosX
; 4 byte - descent, HighPosX
; 5 byte - descent, start LowPosX
; 6 byte - descent, end LowPosX
tbl_road_hills:
- D 0 - - - 0x010667 04:8657: 17        .byte $17, $30, $70, $19, $B0, $F0
- D 0 - - - 0x01066D 04:865D: 1A        .byte $1A, $20, $50, $1A, $C0, $F0
- D 0 - - - 0x010673 04:8663: 1B        .byte $1B, $30, $60, $1C, $B0, $F0
- D 0 - - - 0x010679 04:8669: 1D        .byte $1D, $20, $70, $1F, $B0, $F0
- D 0 - - - 0x01067F 04:866F: 20        .byte $20, $20, $50, $20, $C0, $F0

tbl_checkpoints_on_the_level1:
- D 0 - I - 0x010685 04:8675: 1A        .byte $1A
- D 0 - I - 0x010686 04:8676: 1A        .byte $1A
- D 0 - I - 0x010687 04:8677: 1F        .byte $1F
- D 0 - I - 0x010688 04:8678: 1F        .byte $1F

tbl_checkpoints_on_the_level2:
- D 0 - I - 0x010689 04:8679: 1B        .byte $1B
- D 0 - I - 0x01068A 04:867A: 1B        .byte $1B
- D 0 - I - 0x01068B 04:867B: 20        .byte $20
- D - - - - 0x01068C 04:867C: 20        .byte $20
- D 0 - I - 0x01068D 04:867D: 1C        .byte $1C
- D 0 - I - 0x01068E 04:867E: 1C        .byte $1C
- D 0 - I - 0x01068F 04:867F: 21        .byte $21
- D 0 - I - 0x010690 04:8680: 21        .byte $21

tbl_checkpoints_on_the_level3:
- D 0 - I - 0x010691 04:8681: 1D        .byte $1D
- D 0 - I - 0x010692 04:8682: 1D        .byte $1D
- D 0 - I - 0x010693 04:8683: 22        .byte $22
- D 0 - I - 0x010694 04:8684: 22        .byte $22

tbl_checkpoints_on_the_level4:
- D - - - - 0x010695 04:8685: 1E        .byte $1E
- D 0 - I - 0x010696 04:8686: 1E        .byte $1E
- D 0 - I - 0x010697 04:8687: 23        .byte $23
- D 0 - I - 0x010698 04:8688: 14        .byte $14

loc_tbl_attrs_select_character:
- D 0 - I - 0x010699 04:8689: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106A1 04:8691: 00        .byte $00, $50, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106A9 04:8699: 00        .byte $00, $05, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106B1 04:86A1: 00        .byte $00, $A0, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106B9 04:86A9: 00        .byte $00, $0A, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106C1 04:86B1: 00        .byte $00, $F0, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106C9 04:86B9: 00        .byte $00, $0F, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x0106D1 04:86C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00

; Please select your character
loc_tile_select_character1:
- D 0 - I - 0x0106D9 04:86C9: 4F        .byte $4F   ; P
- D 0 - I - 0x0106DA 04:86CA: 4B        .byte $4B   ; L
- D 0 - I - 0x0106DB 04:86CB: 44        .byte $44   ; E
- D 0 - I - 0x0106DC 04:86CC: 40        .byte $40   ; A
- D 0 - I - 0x0106DD 04:86CD: 52        .byte $52   ; S
- D 0 - I - 0x0106DE 04:86CE: 44        .byte $44   ; E
- D 0 - I - 0x0106DF 04:86CF: 00        .byte $00   ; 
- D 0 - I - 0x0106E0 04:86D0: 52        .byte $52   ; S
- D 0 - I - 0x0106E1 04:86D1: 44        .byte $44   ; E
- D 0 - I - 0x0106E2 04:86D2: 4B        .byte $4B   ; L
- D 0 - I - 0x0106E3 04:86D3: 44        .byte $44   ; E
- D 0 - I - 0x0106E4 04:86D4: 42        .byte $42   ; C
- D 0 - I - 0x0106E5 04:86D5: 53        .byte $53   ; T
- D 0 - I - 0x0106E6 04:86D6: 00        .byte $00   ; 
- D 0 - I - 0x0106E7 04:86D7: 58        .byte $58   ; Y
- D 0 - I - 0x0106E8 04:86D8: 4E        .byte $4E   ; O
- D 0 - I - 0x0106E9 04:86D9: 54        .byte $54   ; U
- D 0 - I - 0x0106EA 04:86DA: 51        .byte $51   ; R
- D 0 - I - 0x0106EB 04:86DB: 00        .byte $00   ; 
- D 0 - I - 0x0106EC 04:86DC: 42        .byte $42   ; C
- D 0 - I - 0x0106ED 04:86DD: 47        .byte $47   ; H
- D 0 - I - 0x0106EE 04:86DE: 40        .byte $40   ; A
- D 0 - I - 0x0106EF 04:86DF: 51        .byte $51   ; R
- D 0 - I - 0x0106F0 04:86E0: 40        .byte $40   ; A
- D 0 - I - 0x0106F1 04:86E1: 42        .byte $42   ; C
- D 0 - I - 0x0106F2 04:86E2: 53        .byte $53   ; T
- D 0 - I - 0x0106F3 04:86E3: 44        .byte $44   ; E
- D 0 - I - 0x0106F4 04:86E4: 51        .byte $51   ; R

; Lupin (top row)
loc_tile_select_character2:
- D 0 - I - 0x0106F5 04:86E5: 00        .byte $00, $7F, $00

; Lupin (bottom row)
loc_tile_select_character3:
- D 0 - I - 0x0106F8 04:86E8: 04        .byte $04, $05, $6C ; ルパン

; Jigen (top row)
loc_tile_select_character4:
- D 0 - I - 0x0106FB 04:86EB: 7E        .byte $7E, $7E, $00

; Jigen (bottom row)
loc_tile_select_character5:
- D 0 - I - 0x0106FE 04:86EE: 30        .byte $30, $2D, $29 ; じげん

; Goemon (top row)
loc_tile_select_character6:
- D 0 - I - 0x010701 04:86F1: 7E        .byte $7E, $00, $00, $00

; Goemon (bottom row)
loc_tile_select_character7:
- D 0 - I - 0x010705 04:86F5: 2E        .byte $2E, $13, $1E, $29 ; ごえもん

loc_sc_first_cutscene_portrait:
- D 0 - I - 0x010709 04:86F9: 00        .byte $00, $AF, $BE, $BF, $C8, $C9, $00, $00
- D 0 - I - 0x010711 04:8701: AE        .byte $AE, $82, $82, $82, $82, $82, $CA, $00
- D 0 - I - 0x010719 04:8709: E4        .byte $E4, $E6, $82, $82, $82, $82, $CB, $00
- D 0 - I - 0x010721 04:8711: E5        .byte $E5, $EE, $E1, $E3, $E1, $E2, $CC, $00
- D 0 - I - 0x010729 04:8719: 00        .byte $00, $EF, $E9, $EB, $EC, $82, $82, $CD
- D 0 - I - 0x010731 04:8721: 00        .byte $00, $F0, $EA, $01, $ED, $82, $82, $CE
- D 0 - I - 0x010739 04:8729: 00        .byte $00, $F7, $F1, $F3, $F5, $82, $82, $CF
- D 0 - I - 0x010741 04:8731: 00        .byte $00, $F8, $F2, $F4, $F6, $DF, $D1, $D0
- D 0 - I - 0x010749 04:8739: 00        .byte $00, $F9, $FA, $FB, $FC, $FD, $D7, $00

loc_sc_lupin_portrait:
- D 0 - I - 0x010751 04:8741: 80        .byte $80, $82, $84
- D 0 - I - 0x010754 04:8744: 81        .byte $81, $83, $85
- D 0 - I - 0x010757 04:8747: 90        .byte $90, $92, $94
- D 0 - I - 0x01075A 04:874A: 91        .byte $91, $93, $95

loc_sc_jigen_portrait:
- D 0 - I - 0x01075D 04:874D: 86        .byte $86, $88, $8A
- D 0 - I - 0x010760 04:8750: 87        .byte $87, $89, $8B
- D 0 - I - 0x010763 04:8753: 96        .byte $96, $98, $9A
- D 0 - I - 0x010766 04:8756: 97        .byte $97, $99, $9B

loc_sc_goemon_portrait:
- D 0 - I - 0x010769 04:8759: 8C        .byte $8C, $8E, $A0
- D 0 - I - 0x01076C 04:875C: 8D        .byte $8D, $8F, $A1
- D 0 - I - 0x01076F 04:875F: 9C        .byte $9C, $9E, $B0
- D 0 - I - 0x010772 04:8762: 9D        .byte $9D, $9F, $B1

loc_sc_zenigata_portrait:
- D 0 - I - 0x010775 04:8765: AE        .byte $AE, $C0, $C2
- D 0 - I - 0x010778 04:8768: AF        .byte $AF, $C1, $C3
- D 0 - I - 0x01077B 04:876B: BE        .byte $BE, $D0, $D2
- D 0 - I - 0x01077E 04:876E: BF        .byte $BF, $D1, $D3

loc_sc_fujiko_portrait:
- D 0 - I - 0x010781 04:8771: A2        .byte $A2, $A4, $A6
- D 0 - I - 0x010784 04:8774: A3        .byte $A3, $A5, $A7
- D 0 - I - 0x010787 04:8777: B2        .byte $B2, $B4, $B6
- D 0 - I - 0x01078A 04:877A: B3        .byte $B3, $B5, $B7

loc_sc_clarisse_portrait:
- D 0 - I - 0x01078D 04:877D: A8        .byte $A8, $AA, $AC
- D 0 - I - 0x010790 04:8780: A9        .byte $A9, $AB, $AD
- D 0 - I - 0x010793 04:8783: B8        .byte $B8, $BA, $BC
- D 0 - I - 0x010796 04:8786: B9        .byte $B9, $BB, $BD

loc_sc_first_cutscene_tbl_attrs:
- D 0 - I - 0x010799 04:8789: AA        .byte $AA, $AA
- D 0 - I - 0x01079B 04:878B: F6        .byte $F6, $BB
- D 0 - I - 0x01079D 04:878D: 05        .byte $05, $05

loc_sc_lupin_tbl_attrs:
- D 0 - I - 0x01079F 04:878F: 55        .byte $55
- D 0 - I - 0x0107A0 04:8790: 05        .byte $05

loc_sc_jigen_tbl_attrs:
- D 0 - I - 0x0107A1 04:8791: 55        .byte $55
- D 0 - I - 0x0107A2 04:8792: 05        .byte $05

loc_sc_goemon_tbl_attrs:
- D 0 - I - 0x0107A3 04:8793: 55        .byte $55, $55

loc_sc_zenigata_tbl_attrs:
- D 0 - I - 0x0107A5 04:8795: 55        .byte $55, $55
- D 0 - I - 0x0107A7 04:8797: 05        .byte $05, $55

loc_sc_fujiko_tbl_attrs:
- D 0 - I - 0x0107A9 04:8799: 55        .byte $55, $11

loc_sc_clarisse_tbl_attrs:
- D 0 - I - 0x0107AB 04:879B: 55        .byte $55, $55

loc_sc_last_cutscene_portrait:
- D 0 - I - 0x0107AD 04:879D: 00        .byte $00, $AF, $BE, $BF, $C8, $C9, $00, $00
- D 0 - I - 0x0107B5 04:87A5: AE        .byte $AE, $82, $82, $82, $82, $82, $CA, $00
- D 0 - I - 0x0107BD 04:87AD: E4        .byte $E4, $E6, $82, $82, $82, $82, $CB, $00
- D 0 - I - 0x0107C5 04:87B5: E5        .byte $E5, $E7, $E1, $E3, $E1, $E2, $CC, $00
- D 0 - I - 0x0107CD 04:87BD: 00        .byte $00, $DA, $C0, $C2, $DE, $82, $82, $CD
- D 0 - I - 0x0107D5 04:87C5: 00        .byte $00, $DB, $C1, $01, $E0, $82, $82, $CE
- D 0 - I - 0x0107DD 04:87CD: 00        .byte $00, $D8, $E8, $C3, $DC, $82, $82, $CF
- D 0 - I - 0x0107E5 04:87D5: 00        .byte $00, $D9, $C5, $C7, $DD, $DF, $D1, $D0
- D 0 - I - 0x0107ED 04:87DD: 00        .byte $00, $D4, $D2, $D3, $D5, $D6, $D7, $00

loc_sc_last_cutscene_tbl_attrs:
- D 0 - I - 0x0107F5 04:87E5: AA        .byte $AA, $AA
- D 0 - I - 0x0107F7 04:87E7: A6        .byte $A6, $BB
- D 0 - I - 0x0107F9 04:87E9: 05        .byte $05, $05

loc_sc_hi_score:
- D 0 - I - 0x0107FB 04:87EB: 47        .byte $47   ; H
- D 0 - I - 0x0107FC 04:87EC: 48        .byte $48   ; I
- D 0 - I - 0x0107FD 04:87ED: 5B        .byte $5B   ; -
loc_sc_score:
- D 0 - I - 0x0107FE 04:87EE: 52        .byte $52   ; S
- D 0 - I - 0x0107FF 04:87EF: 42        .byte $42   ; C
- D 0 - I - 0x010800 04:87F0: 4E        .byte $4E   ; O
- D 0 - I - 0x010801 04:87F1: 51        .byte $51   ; R
- D 0 - I - 0x010802 04:87F2: 44        .byte $44   ; E

loc_tbl_title_attrs:
- D 0 - I - 0x010803 04:87F3: F0        .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0
- D 0 - I - 0x01080B 04:87FB: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05
- D 0 - I - 0x010813 04:8803: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x01081B 04:880B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x010823 04:8813: 50        .byte $50, $50, $50, $50, $50, $50, $50, $50
- D 0 - I - 0x01082B 04:881B: A5        .byte $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5
- D 0 - I - 0x010833 04:8823: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55
- D 0 - I - 0x01083B 04:882B: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55

loc_tile_score:
- D 0 - I - 0x010843 04:8833: 9C        .byte $9C   ; S
- D 0 - I - 0x010844 04:8834: 8C        .byte $8C   ; C
- D 0 - I - 0x010845 04:8835: 98        .byte $98   ; O
- D 0 - I - 0x010846 04:8836: 9B        .byte $9B   ; R
- D 0 - I - 0x010847 04:8837: 8E        .byte $8E   ; E

loc_tile_hi_score:
- D 0 - I - 0x010848 04:8838: 91        .byte $91   ; H
- D 0 - I - 0x010849 04:8839: 92        .byte $92   ; I
- D 0 - I - 0x01084A 04:883A: A5        .byte $A5   ; -
- D 0 - I - 0x01084B 04:883B: 9C        .byte $9C   ; S
- D 0 - I - 0x01084C 04:883C: 8C        .byte $8C   ; C
- D 0 - I - 0x01084D 04:883D: 98        .byte $98   ; O
- D 0 - I - 0x01084E 04:883E: 9B        .byte $9B   ; R
- D 0 - I - 0x01084F 04:883F: 8E        .byte $8E   ; E

loc_tile_namcot:
- D 0 - I - 0x010850 04:8840: A8        .byte $A8
- D 0 - I - 0x010851 04:8841: AA        .byte $AA
- D 0 - I - 0x010852 04:8842: A9        .byte $A9
- D 0 - I - 0x010853 04:8843: AB        .byte $AB
- D 0 - I - 0x010854 04:8844: AC        .byte $AC
- D 0 - I - 0x010855 04:8845: AE        .byte $AE
- D 0 - I - 0x010856 04:8846: AD        .byte $AD
- D 0 - I - 0x010857 04:8847: AF        .byte $AF

loc_tile_all_rights_reserved:
- D 0 - I - 0x010858 04:8848: 8A        .byte $8A   ; A
- D 0 - I - 0x010859 04:8849: 95        .byte $95   ; L
- D 0 - I - 0x01085A 04:884A: 95        .byte $95   ; L
- D 0 - I - 0x01085B 04:884B: 00        .byte $00   ; 
- D 0 - I - 0x01085C 04:884C: 9B        .byte $9B   ; R
- D 0 - I - 0x01085D 04:884D: 92        .byte $92   ; I
- D 0 - I - 0x01085E 04:884E: 90        .byte $90   ; G
- D 0 - I - 0x01085F 04:884F: 91        .byte $91   ; H
- D 0 - I - 0x010860 04:8850: 9D        .byte $9D   ; T
- D 0 - I - 0x010861 04:8851: 9C        .byte $9C   ; S
- D 0 - I - 0x010862 04:8852: 00        .byte $00   ; 
- D 0 - I - 0x010863 04:8853: 9B        .byte $9B   ; R
- D 0 - I - 0x010864 04:8854: 8E        .byte $8E   ; E
- D 0 - I - 0x010865 04:8855: 9C        .byte $9C   ; S
- D 0 - I - 0x010866 04:8856: 8E        .byte $8E   ; E
- D 0 - I - 0x010867 04:8857: 9B        .byte $9B   ; R
- D 0 - I - 0x010868 04:8858: 9F        .byte $9F   ; V
- D 0 - I - 0x010869 04:8859: 8E        .byte $8E   ; E
- D 0 - I - 0x01086A 04:885A: 8D        .byte $8D   ; D

loc_tile_1987_namco_ltd:
- D 0 - I - 0x01086B 04:885B: A7        .byte $A7   ; ©
- D 0 - I - 0x01086C 04:885C: 00        .byte $00   ; 
- D 0 - I - 0x01086D 04:885D: 81        .byte $81   ; 1
- D 0 - I - 0x01086E 04:885E: 89        .byte $89   ; 9
- D 0 - I - 0x01086F 04:885F: 88        .byte $88   ; 8
- D 0 - I - 0x010870 04:8860: 87        .byte $87   ; 7
- D 0 - I - 0x010871 04:8861: 00        .byte $00   ; 
- D 0 - I - 0x010872 04:8862: 97        .byte $97   ; N
- D 0 - I - 0x010873 04:8863: 8A        .byte $8A   ; A
- D 0 - I - 0x010874 04:8864: 96        .byte $96   ; M
- D 0 - I - 0x010875 04:8865: 8C        .byte $8C   ; C
- D 0 - I - 0x010876 04:8866: 98        .byte $98   ; O
- D 0 - I - 0x010877 04:8867: 00        .byte $00   ; 
- D 0 - I - 0x010878 04:8868: 95        .byte $95   ; L
- D 0 - I - 0x010879 04:8869: 9D        .byte $9D   ; T
- D 0 - I - 0x01087A 04:886A: 8D        .byte $8D   ; D
- D 0 - I - 0x01087B 04:886B: A6        .byte $A6   ; .

loc_tile_start:
- D 0 - I - 0x01087C 04:886C: 9C        .byte $9C   ; S
- D 0 - I - 0x01087D 04:886D: 9D        .byte $9D   ; T
- D 0 - I - 0x01087E 04:886E: 8A        .byte $8A   ; A
- D 0 - I - 0x01087F 04:886F: 9B        .byte $9B   ; R
- D 0 - I - 0x010880 04:8870: 9D        .byte $9D   ; T

loc_tile_continue:
- D 0 - I - 0x010881 04:8871: 8C        .byte $8C   ; C
- D 0 - I - 0x010882 04:8872: 98        .byte $98   ; O
- D 0 - I - 0x010883 04:8873: 97        .byte $97   ; N
- D 0 - I - 0x010884 04:8874: 9D        .byte $9D   ; T
- D 0 - I - 0x010885 04:8875: 92        .byte $92   ; I
- D 0 - I - 0x010886 04:8876: 97        .byte $97   ; N
- D 0 - I - 0x010887 04:8877: 9E        .byte $9E   ; U
- D 0 - I - 0x010888 04:8878: 8E        .byte $8E   ; E

loc_tile_title_row1:
- D 0 - I - 0x010889 04:8879: F5        .byte $F5, $F7, $00, $00, $00, $00, $00, $00, $00, $00, $00, $B7, $B9, $00, $00, $00
- D 0 - I - 0x010899 04:8889: 00        .byte $00, $00, $CA, $CB, $00, $00

loc_tile_title_row2:
- D 0 - I - 0x01089F 04:888F: B0        .byte $B0, $B2, $B4, $B6, $B8, $BA, $BC, $BE, $2C, $2E, $34, $00, $C0, $C2, $C8, $C8
- D 0 - I - 0x0108AF 04:889F: CC        .byte $CC, $CE, $36, $02, $EA, $00

loc_tile_title_row3:
- D 0 - I - 0x0108B5 04:88A5: B1        .byte $B1, $B3, $B5, $B7, $B9, $BB, $BD, $BF, $2D, $2F, $35, $00, $C1, $C3, $C9, $C9
- D 0 - I - 0x0108C5 04:88B5: CD        .byte $CD, $CF, $01, $03, $EB, $10

loc_tile_title_row4:
- D 0 - I - 0x0108CB 04:88BB: D0        .byte $D0, $D2, $D4, $D6, $D8, $DA, $DC, $DE, $00, $00, $00, $E6, $E0, $E2, $E8, $E8
- D 0 - I - 0x0108DB 04:88CB: EC        .byte $EC, $EE, $04, $06, $08, $0A

loc_tile_title_row5:
- D 0 - I - 0x0108E1 04:88D1: D1        .byte $D1, $D3, $D5, $D7, $D9, $DB, $DD, $DF, $C5, $C7, $E5, $E7, $E1, $E3, $E9, $E9
- D 0 - I - 0x0108F1 04:88E1: ED        .byte $ED, $EF, $05, $07, $09, $0B

loc_tile_title_row6:
- D 0 - I - 0x0108F7 04:88E7: F0        .byte $F0, $F2, $F4, $F6, $F8, $FA, $FC, $FE, $F9, $FB, $FD, $FF, $C4, $C6, $E4, $E4
- D 0 - I - 0x010907 04:88F7: 0C        .byte $0C, $0E, $E4, $E4, $0D, $0F

loc_tile_title_row7:
- D 0 - I - 0x01090D 04:88FD: F3        .byte $F3, $F1

loc_tile_subtitle_row1:
- D 0 - I - 0x01090F 04:88FF: 14        .byte $14, $16, $18, $1A, $1C, $1E, $20, $22, $24, $26, $28, $2A, $13, $12, $30

loc_tile_subtitle_row2:
- D 0 - I - 0x01091E 04:890E: 15        .byte $15, $17, $19, $1B, $1D, $1F, $21, $23, $25, $27, $29, $2B, $11, $33, $31

; 1 byte - a time counter
; 2 byte - a bits of the buttons (+ BIT_BUTTON_B is added every 16th frame)
tbl_fake_actions:
- D 0 - I - 0x01092D 04:891D: 40        .byte $40, $80  ; BIT_BUTTON_Right
- D 0 - I - 0x01092F 04:891F: 20        .byte $20, $00  ; 
- D 0 - I - 0x010931 04:8921: 30        .byte $30, $11  ; BIT_BUTTON_Up + BIT_BUTTON_A
- D 0 - I - 0x010933 04:8923: 10        .byte $10, $40  ; BIT_BUTTON_Left
- D 0 - I - 0x010935 04:8925: 10        .byte $10, $80  ; BIT_BUTTON_Right
- D 0 - I - 0x010937 04:8927: 30        .byte $30, $11  ; BIT_BUTTON_Up + BIT_BUTTON_A
- D 0 - I - 0x010939 04:8929: 20        .byte $20, $20  ; BIT_BUTTON_Down
- D 0 - I - 0x01093B 04:892B: 20        .byte $20, $21  ; BIT_BUTTON_Down + BIT_BUTTON_A
- D 0 - I - 0x01093D 04:892D: 30        .byte $30, $80  ; BIT_BUTTON_Right
- D 0 - I - 0x01093F 04:892F: 30        .byte $30, $11  ; BIT_BUTTON_Up + BIT_BUTTON_A
- D 0 - I - 0x010941 04:8931: 40        .byte $40, $20  ; BIT_BUTTON_Down
- D 0 - I - 0x010943 04:8933: 40        .byte $40, $C1  ; BIT_BUTTON_Left_OR_Right + BIT_BUTTON_A
- D 0 - I - 0x010945 04:8935: 40        .byte $40, $C1  ; BIT_BUTTON_Left_OR_Right + BIT_BUTTON_A
- D 0 - I - 0x010947 04:8937: 80        .byte $80, $80  ; BIT_BUTTON_Right
- D 0 - I - 0x010949 04:8939: FF        .byte $FF, $FF

tbl_checkpoints:
; 1 byte - It's the number of the room (of the checkpoint)
; 2 byte - It's the high position of the character (high scroll by x)
; 3 byte - It's the low position of the character (low scroll by x)
; 4 byte - It's the position of the character relative to the screen
; main list
- D 0 - I - 0x01094B 04:893B: 00        .byte $00, $00, $00, $30   ; 0x00, to level 1.0
- D 0 - I - 0x01094F 04:893F: 01        .byte $01, $00, $00, $40   ; to level 1.1
- D 0 - I - 0x010953 04:8943: 02        .byte $02, $07, $00, $E0   ; to level 1.2
- D 0 - I - 0x010957 04:8947: 03        .byte $03, $00, $00, $38   ; to level 1.3
- D 0 - I - 0x01095B 04:894B: 04        .byte $04, $07, $00, $E8
- D - - - - 0x01095F 04:894F: 05        .byte $05, $00, $00, $38
- D 0 - I - 0x010963 04:8953: 06        .byte $06, $00, $00, $38   ; to level 2 (outside)
- D 0 - I - 0x010967 04:8957: 07        .byte $07, $00, $00, $50
- D - - - - 0x01096B 04:895B: 08        .byte $08, $00, $00, $50
- D 0 - I - 0x01096F 04:895F: 09        .byte $09, $00, $00, $50
- D - - - - 0x010973 04:8963: 0A        .byte $0A, $00, $00, $28
- D 0 - I - 0x010977 04:8967: 0B        .byte $0B, $00, $00, $28
- D - - - - 0x01097B 04:896B: 0C        .byte $0C, $00, $00, $68
- D 0 - I - 0x01097F 04:896F: 0D        .byte $0D, $00, $00, $68
- D 0 - I - 0x010983 04:8973: 0E        .byte $0E, $00, $00, $68
- D 0 - I - 0x010987 04:8977: 0F        .byte $0F, $00, $00, $40
- D 0 - I - 0x01098B 04:897B: 10        .byte $10, $00, $00, $40   ; 0x10
- D 0 - I - 0x01098F 04:897F: 11        .byte $11, $07, $00, $D0
- D - - - - 0x010993 04:8983: 12        .byte $12, $00, $00, $30
- D - - - - 0x010997 04:8987: 13        .byte $13, $07, $00, $D0
- D 0 - I - 0x01099B 04:898B: 14        .byte $14, $00, $00, $20
- D - - - - 0x01099F 04:898F: 15        .byte $15, $00, $00, $40
- D - - - - 0x0109A3 04:8993: 16        .byte $16, $00, $00, $40
- D - - - - 0x0109A7 04:8997: 17        .byte $17, $00, $00, $40
- D - - - - 0x0109AB 04:899B: 18        .byte $18, $00, $00, $40
- D 0 - I - 0x0109AF 04:899F: 19        .byte $19, $00, $00, $40
- D 0 - I - 0x0109B3 04:89A3: 1A        .byte $1A, $00, $00, $18   ; to NPC (level 1)
- D 0 - I - 0x0109B7 04:89A7: 1B        .byte $1B, $00, $00, $20
- D 0 - I - 0x0109BB 04:89AB: 1C        .byte $1C, $00, $00, $28
- D 0 - I - 0x0109BF 04:89AF: 1D        .byte $1D, $00, $00, $10
- D 0 - I - 0x0109C3 04:89B3: 1E        .byte $1E, $00, $00, $20
- D 0 - I - 0x0109C7 04:89B7: 1F        .byte $1F, $00, $00, $18   ; to briefcase room (level 1)
- D 0 - I - 0x0109CB 04:89BB: 20        .byte $20, $00, $00, $20   ; 0x20
- D 0 - I - 0x0109CF 04:89BF: 21        .byte $21, $00, $00, $28
- D 0 - I - 0x0109D3 04:89C3: 22        .byte $22, $00, $00, $10
- D 0 - I - 0x0109D7 04:89C7: 23        .byte $23, $00, $00, $20
- D - - - - 0x0109DB 04:89CB: 6A        .byte $6A, $04, $68, $80
- D - - - - 0x0109DF 04:89CF: 6A        .byte $6A, $07, $68, $80
- D - - - - 0x0109E3 04:89D3: 6A        .byte $6A, $08, $68, $80
- D 0 - I - 0x0109E7 04:89D7: 6B        .byte $6B, $02, $A8, $80
- D - - - - 0x0109EB 04:89DB: 6B        .byte $6B, $03, $68, $80
- D 0 - I - 0x0109EF 04:89DF: 6B        .byte $6B, $03, $88, $80
- D - - - - 0x0109F3 04:89E3: 6B        .byte $6B, $05, $68, $80
- D - - - - 0x0109F7 04:89E7: 6C        .byte $6C, $01, $68, $80
- D - - - - 0x0109FB 04:89EB: 6C        .byte $6C, $02, $68, $80
- D 0 - I - 0x0109FF 04:89EF: 6C        .byte $6C, $04, $68, $80
- D - - - - 0x010A03 04:89F3: 6C        .byte $6C, $05, $68, $80
- D - - - - 0x010A07 04:89F7: 6E        .byte $6E, $04, $00, $B8
- D - - - - 0x010A0B 04:89FB: 71        .byte $71, $00, $00, $B8   ; 0x30
- D - - - - 0x010A0F 04:89FF: 73        .byte $73, $02, $68, $80
- D - - - - 0x010A13 04:8A03: 73        .byte $73, $04, $68, $80
- D - - - - 0x010A17 04:8A07: 73        .byte $73, $06, $A8, $80
- D - - - - 0x010A1B 04:8A0B: 74        .byte $74, $00, $F8, $80
- D - - - - 0x010A1F 04:8A0F: 74        .byte $74, $02, $88, $80
- D - - - - 0x010A23 04:8A13: 74        .byte $74, $04, $68, $80
- D 0 - I - 0x010A27 04:8A17: 74        .byte $74, $07, $00, $B8
- D - - - - 0x010A2B 04:8A1B: 75        .byte $75, $02, $68, $80
- D - - - - 0x010A2F 04:8A1F: 75        .byte $75, $04, $68, $80
- D - - - - 0x010A33 04:8A23: 76        .byte $76, $01, $68, $80
- D 0 - I - 0x010A37 04:8A27: 77        .byte $77, $03, $88, $80
- D - - - - 0x010A3B 04:8A2B: 77        .byte $77, $04, $00, $E8
- D - - - - 0x010A3F 04:8A2F: 78        .byte $78, $00, $88, $80
- D 0 - I - 0x010A43 04:8A33: 7B        .byte $7B, $00, $00, $B8
- D 0 - I - 0x010A47 04:8A37: 58        .byte $58, $00, $70, $80
- D - - - - 0x010A4B 04:8A3B: 40        .byte $40, $00, $00, $80   ; 0x40
- D - - - - 0x010A4F 04:8A3F: 41        .byte $41, $00, $00, $80
- D 0 - I - 0x010A53 04:8A43: 42        .byte $42, $00, $00, $80
- D 0 - I - 0x010A57 04:8A47: 43        .byte $43, $00, $00, $10
- D 0 - I - 0x010A5B 04:8A4B: 44        .byte $44, $00, $00, $10
- D 0 - I - 0x010A5F 04:8A4F: 45        .byte $45, $00, $00, $10
- D - - - - 0x010A63 04:8A53: 46        .byte $46, $00, $00, $80
- D 0 - I - 0x010A67 04:8A57: 47        .byte $47, $00, $00, $80
- D 0 - I - 0x010A6B 04:8A5B: 48        .byte $48, $00, $00, $80
- D 0 - I - 0x010A6F 04:8A5F: 49        .byte $49, $00, $00, $10
- D 0 - I - 0x010A73 04:8A63: 4A        .byte $4A, $00, $00, $10
- D 0 - I - 0x010A77 04:8A67: 4B        .byte $4B, $00, $20, $80
- D 0 - I - 0x010A7B 04:8A6B: 4C        .byte $4C, $00, $20, $80
- D 0 - I - 0x010A7F 04:8A6F: 4D        .byte $4D, $00, $00, $80
- D - - - - 0x010A83 04:8A73: 4E        .byte $4E, $00, $20, $80
- D 0 - I - 0x010A87 04:8A77: 4F        .byte $4F, $00, $00, $10
- D - - - - 0x010A8B 04:8A7B: 50        .byte $50, $00, $00, $10   ; 0x50
- D 0 - I - 0x010A8F 04:8A7F: 51        .byte $51, $00, $00, $10
- D - - - - 0x010A93 04:8A83: 52        .byte $52, $00, $00, $10
- D 0 - I - 0x010A97 04:8A87: 53        .byte $53, $00, $00, $10
- D 0 - I - 0x010A9B 04:8A8B: 54        .byte $54, $00, $00, $10
- D 0 - I - 0x010A9F 04:8A8F: 55        .byte $55, $00, $00, $10
- D 0 - I - 0x010AA3 04:8A93: 56        .byte $56, $00, $00, $10
- D - - - - 0x010AA7 04:8A97: 57        .byte $57, $00, $00, $10
- D 0 - I - 0x010AAB 04:8A9B: 58        .byte $58, $00, $00, $10
- D - - - - 0x010AAF 04:8A9F: 59        .byte $59, $00, $00, $10
- D - - - - 0x010AB3 04:8AA3: 5A        .byte $5A, $00, $00, $10
- D 0 - I - 0x010AB7 04:8AA7: 5B        .byte $5B, $00, $00, $10
- D - - - - 0x010ABB 04:8AAB: 5C        .byte $5C, $00, $00, $10
- D 0 - I - 0x010ABF 04:8AAF: 5D        .byte $5D, $00, $00, $80
- D 0 - I - 0x010AC3 04:8AB3: 5E        .byte $5E, $00, $00, $80
- D - - - - 0x010AC7 04:8AB7: 5F        .byte $5F, $00, $20, $80
- D 0 - I - 0x010ACB 04:8ABB: 60        .byte $60, $00, $20, $80   ; 0x60
- D - - - - 0x010ACF 04:8ABF: 61        .byte $61, $00, $00, $80
- D 0 - I - 0x010AD3 04:8AC3: 62        .byte $62, $00, $20, $80
- D 0 - I - 0x010AD7 04:8AC7: 63        .byte $63, $00, $00, $10
- D 0 - I - 0x010ADB 04:8ACB: 64        .byte $64, $00, $00, $10
- D 0 - I - 0x010ADF 04:8ACF: 65        .byte $65, $00, $00, $80
- D 0 - I - 0x010AE3 04:8AD3: 66        .byte $66, $00, $00, $10
- D 0 - I - 0x010AE7 04:8AD7: 67        .byte $67, $00, $00, $10
- D 0 - I - 0x010AEB 04:8ADB: 68        .byte $68, $00, $20, $80
- D 0 - I - 0x010AEF 04:8ADF: 69        .byte $69, $00, $00, $80
- D - - - - 0x010AF3 04:8AE3: 6A        .byte $6A, $00, $00, $80
- D 0 - I - 0x010AF7 04:8AE7: 6B        .byte $6B, $00, $20, $80
- D 0 - I - 0x010AFB 04:8AEB: 6C        .byte $6C, $00, $20, $80
- D 0 - I - 0x010AFF 04:8AEF: 6D        .byte $6D, $00, $00, $80
- D - - - - 0x010B03 04:8AF3: 6E        .byte $6E, $00, $00, $80
- D 0 - I - 0x010B07 04:8AF7: 6F        .byte $6F, $00, $00, $80
- D - - - - 0x010B0B 04:8AFB: 70        .byte $70, $00, $00, $80   ; 0x70
- D 0 - I - 0x010B0F 04:8AFF: 71        .byte $71, $00, $00, $10
- D - - - - 0x010B13 04:8B03: 72        .byte $72, $00, $00, $80
- D 0 - I - 0x010B17 04:8B07: 73        .byte $73, $00, $00, $10
- D - - - - 0x010B1B 04:8B0B: 74        .byte $74, $00, $00, $10
- D - - - - 0x010B1F 04:8B0F: 75        .byte $75, $00, $00, $80
- D 0 - I - 0x010B23 04:8B13: 76        .byte $76, $00, $20, $80
- D 0 - I - 0x010B27 04:8B17: 77        .byte $77, $00, $00, $10
- D 0 - I - 0x010B2B 04:8B1B: 78        .byte $78, $00, $00, $10
- D 0 - I - 0x010B2F 04:8B1F: 79        .byte $79, $00, $20, $80
- D - - - - 0x010B33 04:8B23: 7A        .byte $7A, $00, $00, $10
- D 0 - I - 0x010B37 04:8B27: 7B        .byte $7B, $00, $00, $10
- D 0 - I - 0x010B3B 04:8B2B: 7C        .byte $7C, $00, $00, $10
- D 0 - I - 0x010B3F 04:8B2F: 7D        .byte $7D, $00, $00, $10
- D - - - - 0x010B43 04:8B33: 42        .byte $42, $00, $00, $10
- D - - - - 0x010B47 04:8B37: 42        .byte $42, $01, $00, $F0   ; level 4, map 4 (F4-F5)
- D 0 - I - 0x010B4B 04:8B3B: 43        .byte $43, $00, $70, $80   ; 0x80
- D - - - - 0x010B4F 04:8B3F: 43        .byte $43, $01, $00, $F0
- D 0 - I - 0x010B53 04:8B43: 44        .byte $44, $00, $00, $F0
- D 0 - I - 0x010B57 04:8B47: 45        .byte $45, $00, $70, $88
- D - - - - 0x010B5B 04:8B4B: 45        .byte $45, $01, $00, $F0
- D 0 - I - 0x010B5F 04:8B4F: 46        .byte $46, $01, $00, $80
- D 0 - I - 0x010B63 04:8B53: 46        .byte $46, $02, $E0, $80
- D 0 - I - 0x010B67 04:8B57: 47        .byte $47, $01, $00, $80
- D - - - - 0x010B6B 04:8B5B: 47        .byte $47, $02, $E0, $80
- D - - - - 0x010B6F 04:8B5F: 48        .byte $48, $01, $00, $80
- D - - - - 0x010B73 04:8B63: 48        .byte $48, $02, $E0, $80
- D 0 - I - 0x010B77 04:8B67: 49        .byte $49, $02, $70, $80
- D - - - - 0x010B7B 04:8B6B: 49        .byte $49, $03, $00, $B0
- D - - - - 0x010B7F 04:8B6F: 4A        .byte $4A, $03, $00, $80
- D 0 - I - 0x010B83 04:8B73: 4A        .byte $4A, $04, $70, $80
- D 0 - I - 0x010B87 04:8B77: 4A        .byte $4A, $05, $00, $B0
- D - - - - 0x010B8B 04:8B7B: 4B        .byte $4B, $04, $00, $80   ; 0x90
- D 0 - I - 0x010B8F 04:8B7F: 4B        .byte $4B, $05, $00, $80
- D 0 - I - 0x010B93 04:8B83: 4C        .byte $4C, $04, $00, $80
- D 0 - I - 0x010B97 04:8B87: 4C        .byte $4C, $05, $00, $80
- D - - - - 0x010B9B 04:8B8B: 4D        .byte $4D, $01, $00, $80
- D 0 - I - 0x010B9F 04:8B8F: 4D        .byte $4D, $04, $E0, $80
- D - - - - 0x010BA3 04:8B93: 4E        .byte $4E, $02, $00, $80
- D 0 - I - 0x010BA7 04:8B97: 4E        .byte $4E, $03, $00, $80
- D 0 - I - 0x010BAB 04:8B9B: 50        .byte $50, $02, $00, $F0
- D - - - - 0x010BAF 04:8B9F: 51        .byte $51, $00, $90, $80
- D 0 - I - 0x010BB3 04:8BA3: 51        .byte $51, $03, $70, $80
- D - - - - 0x010BB7 04:8BA7: 51        .byte $51, $04, $00, $F0
- D - - - - 0x010BBB 04:8BAB: 52        .byte $52, $00, $90, $80
- D 0 - I - 0x010BBF 04:8BAF: 52        .byte $52, $03, $00, $F0
- D 0 - I - 0x010BC3 04:8BB3: 53        .byte $53, $00, $00, $F0
- D 0 - I - 0x010BC7 04:8BB7: 54        .byte $54, $00, $90, $80
- D 0 - I - 0x010BCB 04:8BBB: 56        .byte $56, $00, $00, $F0   ; 0xA0
- D - - - - 0x010BCF 04:8BBF: 54        .byte $54, $01, $00, $F0
- D - - - - 0x010BD3 04:8BC3: 55        .byte $55, $00, $00, $F0
- D - - - - 0x010BD7 04:8BC7: 56        .byte $56, $00, $00, $80
- D - - - - 0x010BDB 04:8BCB: 49        .byte $49, $01, $68, $80
- D 0 - I - 0x010BDF 04:8BCF: 4A        .byte $4A, $00, $88, $80
- D - - - - 0x010BE3 04:8BD3: 4A        .byte $4A, $02, $68, $80
- D 0 - I - 0x010BE7 04:8BD7: 4E        .byte $4E, $00, $A8, $80
- D - - - - 0x010BEB 04:8BDB: 4E        .byte $4E, $01, $68, $80
- D - - - - 0x010BEF 04:8BDF: 51        .byte $51, $00, $00, $B8
- D 0 - I - 0x010BF3 04:8BE3: 52        .byte $52, $00, $00, $B8
- D - - - - 0x010BF7 04:8BE7: 52        .byte $52, $02, $68, $80
- D - - - - 0x010BFB 04:8BEB: 57        .byte $57, $00, $88, $80
- D - - - - 0x010BFF 04:8BEF: 57        .byte $57, $01, $00, $E8
- D - - - - 0x010C03 04:8BF3: 5B        .byte $5B, $00, $00, $B8
- D - - - - 0x010C07 04:8BF7: 5C        .byte $5C, $00, $00, $B8
- D - - - - 0x010C0B 04:8BFB: 5D        .byte $5D, $01, $88, $80   ; 0xB0
- D - - - - 0x010C0F 04:8BFF: 61        .byte $61, $03, $88, $80
- D - - - - 0x010C13 04:8C03: 62        .byte $62, $01, $88, $80
- D - - - - 0x010C17 04:8C07: 62        .byte $62, $03, $68, $80
- D - - - - 0x010C1B 04:8C0B: 63        .byte $63, $01, $68, $80
- D - - - - 0x010C1F 04:8C0F: 63        .byte $63, $02, $68, $80
- D - - - - 0x010C23 04:8C13: 63        .byte $63, $04, $A8, $80
- D 0 - I - 0x010C27 04:8C17: 63        .byte $63, $05, $68, $80
- D 0 - I - 0x010C2B 04:8C1B: 64        .byte $64, $03, $A8, $80
- D 0 - I - 0x010C2F 04:8C1F: 64        .byte $64, $04, $68, $80
- D - - - - 0x010C33 04:8C23: 64        .byte $64, $05, $68, $80
- D - - - - 0x010C37 04:8C27: 65        .byte $65, $05, $68, $80
- D 0 - I - 0x010C3B 04:8C2B: 65        .byte $65, $05, $88, $80
- D - - - - 0x010C3F 04:8C2F: 66        .byte $66, $04, $68, $80
- D 0 - I - 0x010C43 04:8C33: 66        .byte $66, $05, $68, $80
- D - - - - 0x010C47 04:8C37: 67        .byte $67, $00, $88, $80
- D 0 - I - 0x010C4B 04:8C3B: 07        .byte $07, $01, $68, $80   ; 0xC0
- D 0 - I - 0x010C4F 04:8C3F: 07        .byte $07, $01, $B8, $80
- D - - - - 0x010C53 04:8C43: 07        .byte $07, $03, $68, $80
- D 0 - I - 0x010C57 04:8C47: 07        .byte $07, $04, $B8, $80
- D - - - - 0x010C5B 04:8C4B: 08        .byte $08, $01, $78, $80
- D - - - - 0x010C5F 04:8C4F: 08        .byte $08, $03, $38, $80
- D - - - - 0x010C63 04:8C53: 08        .byte $08, $06, $38, $80
- D 0 - I - 0x010C67 04:8C57: 09        .byte $09, $00, $B8, $80
- D - - - - 0x010C6B 04:8C5B: 09        .byte $09, $03, $68, $80
- D - - - - 0x010C6F 04:8C5F: 09        .byte $09, $05, $68, $80
- D - - - - 0x010C73 04:8C63: 09        .byte $09, $05, $B8, $80
- D 0 - I - 0x010C77 04:8C67: 0A        .byte $0A, $03, $78, $80
- D 0 - I - 0x010C7B 04:8C6B: 0B        .byte $0B, $01, $48, $80
- D - - - - 0x010C7F 04:8C6F: 0B        .byte $0B, $02, $78, $80
- D 0 - I - 0x010C83 04:8C73: 0B        .byte $0B, $03, $38, $80
- D - - - - 0x010C87 04:8C77: 0B        .byte $0B, $07, $00, $C8
- D 0 - I - 0x010C8B 04:8C7B: 0C        .byte $0C, $03, $78, $80   ; 0xD0
- D - - - - 0x010C8F 04:8C7F: 0C        .byte $0C, $05, $78, $80
- D 0 - I - 0x010C93 04:8C83: 0D        .byte $0D, $01, $48, $80
- D - - - - 0x010C97 04:8C87: 0D        .byte $0D, $03, $48, $80
- D - - - - 0x010C9B 04:8C8B: 0D        .byte $0D, $05, $48, $80
- D 0 - I - 0x010C9F 04:8C8F: 0E        .byte $0E, $01, $98, $80
- D - - - - 0x010CA3 04:8C93: 0E        .byte $0E, $02, $38, $80
- D - - - - 0x010CA7 04:8C97: 0E        .byte $0E, $04, $48, $80
- D - - - - 0x010CAB 04:8C9B: 0F        .byte $0F, $01, $A8, $80   ; to level 3.0 (from water)
- D - - - - 0x010CAF 04:8C9F: 0F        .byte $0F, $02, $68, $80
- D 0 - I - 0x010CB3 04:8CA3: 0F        .byte $0F, $03, $08, $80
- D 0 - I - 0x010CB7 04:8CA7: 0F        .byte $0F, $04, $58, $80
- D - - - - 0x010CBB 04:8CAB: 0F        .byte $0F, $04, $A8, $80
- D - - - - 0x010CBF 04:8CAF: 0F        .byte $0F, $05, $18, $80
- D - - - - 0x010CC3 04:8CB3: 0F        .byte $0F, $05, $A8, $80
- D 0 - I - 0x010CC7 04:8CB7: 0F        .byte $0F, $06, $98, $80
- D 0 - I - 0x010CCB 04:8CBB: 0F        .byte $0F, $07, $68, $80   ; 0xE0
- D 0 - I - 0x010CCF 04:8CBF: 0F        .byte $0F, $08, $E8, $80
- D - - - - 0x010CD3 04:8CC3: 0F        .byte $0F, $09, $08, $80
- D - - - - 0x010CD7 04:8CC7: 0F        .byte $0F, $09, $58, $80
- D - - - - 0x010CDB 04:8CCB: 0F        .byte $0F, $0A, $28, $80
- D - - - - 0x010CDF 04:8CCF: 0F        .byte $0F, $0B, $08, $80
- D - - - - 0x010CE3 04:8CD3: 0F        .byte $0F, $0B, $A8, $80
- D 0 - I - 0x010CE7 04:8CD7: 0F        .byte $0F, $0C, $48, $80
- D - - - - 0x010CEB 04:8CDB: 0F        .byte $0F, $0D, $58, $80
- D 0 - I - 0x010CEF 04:8CDF: 0F        .byte $0F, $0E, $68, $80
- D - - - - 0x010CF3 04:8CE3: 10        .byte $10, $04, $38, $80
- D - - - - 0x010CF7 04:8CE7: 10        .byte $10, $05, $D8, $80
- D - - - - 0x010CFB 04:8CEB: 11        .byte $11, $01, $08, $80
- D - - - - 0x010CFF 04:8CEF: 11        .byte $11, $02, $A8, $80
- D - - - - 0x010D03 04:8CF3: 12        .byte $12, $00, $D8, $80
- D - - - - 0x010D07 04:8CF7: 12        .byte $12, $06, $38, $80
- D - - - - 0x010D0B 04:8CFB: 13        .byte $13, $00, $08, $80   ; 0xF0
- D - - - - 0x010D0F 04:8CFF: 13        .byte $13, $02, $08, $80
- D - - - - 0x010D13 04:8D03: 13        .byte $13, $03, $08, $80
- D - - - - 0x010D17 04:8D07: 13        .byte $13, $05, $A8, $80
- D - - - - 0x010D1B 04:8D0B: 67        .byte $67, $02, $68, $80
- D - - - - 0x010D1F 04:8D0F: 68        .byte $68, $01, $88, $80
- D 0 - I - 0x010D23 04:8D13: 68        .byte $68, $02, $88, $80
- D 0 - I - 0x010D27 04:8D17: 68        .byte $68, $04, $A8, $80
- D 0 - I - 0x010D2B 04:8D1B: 68        .byte $68, $05, $68, $80
- D 0 - I - 0x010D2F 04:8D1F: 68        .byte $68, $05, $A8, $80
- D 0 - I - 0x010D33 04:8D23: 68        .byte $68, $06, $68, $80
- D - - - - 0x010D37 04:8D27: 69        .byte $69, $05, $68, $80
- D - - - - 0x010D3B 04:8D2B: 69        .byte $69, $06, $88, $80
- D 0 - I - 0x010D3F 04:8D2F: 6A        .byte $6A, $02, $68, $80
- D - - - - 0x010D43 04:8D33: 6A        .byte $6A, $02, $88, $80   ; 0xFE, to level 4, map 4 (J0-J9)

; reserve
- D - - - - 0x010D47 04:8D37: FF        .byte $FF, $00, $00, $40

; secondary list
- D - - - - 0x010D4B 04:8D3B: 58        .byte $58, $00, $70, $80   ; 0x00
- D 0 - I - 0x010D4F 04:8D3F: 57        .byte $57, $00, $00, $80
- D - - - - 0x010D53 04:8D43: 58        .byte $58, $01, $00, $F0
- D 0 - I - 0x010D57 04:8D47: 59        .byte $59, $00, $70, $80
- D 0 - I - 0x010D5B 04:8D4B: 5A        .byte $5A, $00, $00, $F0
- D 0 - I - 0x010D5F 04:8D4F: 5B        .byte $5B, $00, $90, $80
- D 0 - I - 0x010D63 04:8D53: 5B        .byte $5B, $03, $00, $F0
- D 0 - I - 0x010D67 04:8D57: 5C        .byte $5C, $00, $90, $80
- D 0 - I - 0x010D6B 04:8D5B: 5C        .byte $5C, $03, $70, $80
- D 0 - I - 0x010D6F 04:8D5F: 5C        .byte $5C, $04, $00, $F0
- D 0 - I - 0x010D73 04:8D63: 5D        .byte $5D, $01, $00, $80
- D - - - - 0x010D77 04:8D67: 5D        .byte $5D, $02, $E0, $80
- D - - - - 0x010D7B 04:8D6B: 5E        .byte $5E, $01, $00, $80
- D - - - - 0x010D7F 04:8D6F: 5E        .byte $5E, $02, $E0, $80
- D 0 - I - 0x010D83 04:8D73: 5F        .byte $5F, $04, $00, $80
- D 0 - I - 0x010D87 04:8D77: 5F        .byte $5F, $05, $00, $80
- D 0 - I - 0x010D8B 04:8D7B: 60        .byte $60, $04, $70, $80   ; 0x10
- D - - - - 0x010D8F 04:8D7F: 60        .byte $60, $05, $00, $F0
- D 0 - I - 0x010D93 04:8D83: 61        .byte $61, $01, $00, $80
- D 0 - I - 0x010D97 04:8D87: 61        .byte $61, $04, $E0, $80
- D 0 - I - 0x010D9B 04:8D8B: 62        .byte $62, $04, $00, $80
- D 0 - I - 0x010D9F 04:8D8F: 62        .byte $62, $05, $00, $80
- D 0 - I - 0x010DA3 04:8D93: 63        .byte $63, $06, $70, $80
- D 0 - I - 0x010DA7 04:8D97: 64        .byte $64, $06, $00, $F0
- D 0 - I - 0x010DAB 04:8D9B: 63        .byte $63, $07, $00, $B0
- D 0 - I - 0x010DAF 04:8D9F: 65        .byte $65, $01, $00, $80
- D 0 - I - 0x010DB3 04:8DA3: 65        .byte $65, $06, $E0, $80
- D - - - - 0x010DB7 04:8DA7: 66        .byte $66, $06, $00, $F0
- D 0 - I - 0x010DBB 04:8DAB: 67        .byte $67, $08, $70, $80
- D 0 - I - 0x010DBF 04:8DAF: 67        .byte $67, $09, $00, $B0
- D - - - - 0x010DC3 04:8DB3: 68        .byte $68, $07, $00, $80
- D 0 - I - 0x010DC7 04:8DB7: 68        .byte $68, $09, $00, $80
- D - - - - 0x010DCB 04:8DBB: 69        .byte $69, $02, $00, $80   ; 0x20
- D 0 - I - 0x010DCF 04:8DBF: 69        .byte $69, $08, $E0, $80
- D - - - - 0x010DD3 04:8DC3: 6A        .byte $6A, $01, $00, $80
- D 0 - I - 0x010DD7 04:8DC7: 6A        .byte $6A, $08, $E0, $80
- D 0 - I - 0x010DDB 04:8DCB: 6B        .byte $6B, $06, $00, $80
- D 0 - I - 0x010DDF 04:8DCF: 6B        .byte $6B, $07, $00, $80
- D - - - - 0x010DE3 04:8DD3: 6C        .byte $6C, $06, $00, $80
- D 0 - I - 0x010DE7 04:8DD7: 6C        .byte $6C, $07, $00, $80
- D 0 - I - 0x010DEB 04:8DDB: 6D        .byte $6D, $01, $00, $80
- D 0 - I - 0x010DEF 04:8DDF: 6E        .byte $6E, $03, $70, $80
- D 0 - I - 0x010DF3 04:8DE3: 6E        .byte $6E, $04, $00, $F0
- D - - - - 0x010DF7 04:8DE7: 6F        .byte $6F, $01, $00, $80
- D 0 - I - 0x010DFB 04:8DEB: 70        .byte $70, $02, $00, $80
- D 0 - I - 0x010DFF 04:8DEF: 70        .byte $70, $03, $00, $80
- D - - - - 0x010E03 04:8DF3: 71        .byte $71, $00, $90, $80
- D - - - - 0x010E07 04:8DF7: 72        .byte $72, $01, $00, $80
- D - - - - 0x010E0B 04:8DFB: 10        .byte $10, $07, $00, $D0   ; 0x30
- D - - - - 0x010E0F 04:8DFF: 11        .byte $11, $00, $00, $30
- D 0 - I - 0x010E13 04:8E03: 11        .byte $11, $07, $00, $D0
- D 0 - I - 0x010E17 04:8E07: 12        .byte $12, $00, $00, $30
- D - - - - 0x010E1B 04:8E0B: 12        .byte $12, $07, $00, $D0
- D 0 - I - 0x010E1F 04:8E0F: 13        .byte $13, $07, $00, $D0
- D - - - - 0x010E23 04:8E13: 06        .byte $06, $00, $00, $80
- D 0 - I - 0x010E27 04:8E17: 06        .byte $06, $01, $00, $80
- D 0 - I - 0x010E2B 04:8E1B: 06        .byte $06, $02, $80, $80
- D 0 - I - 0x010E2F 04:8E1F: 06        .byte $06, $03, $B8, $80
- D 0 - I - 0x010E33 04:8E23: 06        .byte $06, $05, $00, $80
- D 0 - I - 0x010E37 04:8E27: 06        .byte $06, $0A, $C0, $80
- D 0 - I - 0x010E3B 04:8E2B: 06        .byte $06, $0B, $80, $80
- D 0 - I - 0x010E3F 04:8E2F: 06        .byte $06, $0C, $40, $80
- D 0 - I - 0x010E43 04:8E33: 06        .byte $06, $0D, $20, $80
- D 0 - I - 0x010E47 04:8E37: 06        .byte $06, $0D, $C8, $80
- D 0 - I - 0x010E4B 04:8E3B: 06        .byte $06, $0E, $40, $80   ; 0x40
- D 0 - I - 0x010E4F 04:8E3F: 06        .byte $06, $0E, $C0, $80
- D 0 - I - 0x010E53 04:8E43: 06        .byte $06, $0F, $00, $C8
- D 0 - I - 0x010E57 04:8E47: 07        .byte $07, $00, $00, $50
- D 0 - I - 0x010E5B 04:8E4B: 07        .byte $07, $06, $D0, $80
- D 0 - I - 0x010E5F 04:8E4F: 08        .byte $08, $00, $00, $50
- D 0 - I - 0x010E63 04:8E53: 09        .byte $09, $00, $00, $50
- D 0 - I - 0x010E67 04:8E57: 09        .byte $09, $06, $D0, $80
- D 0 - I - 0x010E6B 04:8E5B: 0A        .byte $0A, $00, $00, $28
- D 0 - I - 0x010E6F 04:8E5F: 0A        .byte $0A, $06, $E8, $80
- D 0 - I - 0x010E73 04:8E63: 0B        .byte $0B, $00, $00, $28
- D 0 - I - 0x010E77 04:8E67: 0C        .byte $0C, $00, $00, $68
- D 0 - I - 0x010E7B 04:8E6B: 0C        .byte $0C, $06, $A8, $80
- D 0 - I - 0x010E7F 04:8E6F: 0D        .byte $0D, $00, $00, $68
- D 0 - I - 0x010E83 04:8E73: 0D        .byte $0D, $06, $A8, $80
- D 0 - I - 0x010E87 04:8E77: 0E        .byte $0E, $00, $00, $68
- D 0 - I - 0x010E8B 04:8E7B: 72        .byte $72, $02, $00, $80   ; 0x50
- D 0 - I - 0x010E8F 04:8E7F: 00        .byte $00, $0F, $00, $88
- D 0 - I - 0x010E93 04:8E83: 73        .byte $73, $00, $90, $80
- D - - - - 0x010E97 04:8E87: 73        .byte $73, $05, $70, $80
- D - - - - 0x010E9B 04:8E8B: 73        .byte $73, $06, $70, $80
- D 0 - I - 0x010E9F 04:8E8F: 73        .byte $73, $07, $00, $F0
- D - - - - 0x010EA3 04:8E93: 74        .byte $74, $00, $90, $80
- D - - - - 0x010EA7 04:8E97: 74        .byte $74, $01, $90, $80
- D 0 - I - 0x010EAB 04:8E9B: 74        .byte $74, $06, $70, $80
- D 0 - I - 0x010EAF 04:8E9F: 03        .byte $03, $00, $00, $38   ; to level 1.1 (to the beginning)
- D 0 - I - 0x010EB3 04:8EA3: 03        .byte $03, $07, $00, $C8   ; to level 1.1 (to the end)
- D 0 - I - 0x010EB7 04:8EA7: 04        .byte $04, $00, $00, $28
- D 0 - I - 0x010EBB 04:8EAB: 04        .byte $04, $07, $00, $D8
- D 0 - I - 0x010EBF 04:8EAF: 05        .byte $05, $00, $00, $38
- D - - - - 0x010EC3 04:8EB3: 74        .byte $74, $07, $00, $F0
- D 0 - I - 0x010EC7 04:8EB7: 75        .byte $75, $01, $00, $80
- D 0 - I - 0x010ECB 04:8EBB: 75        .byte $75, $04, $E0, $80   ; 0x60
- D - - - - 0x010ECF 04:8EBF: 76        .byte $76, $02, $00, $80
- D - - - - 0x010ED3 04:8EC3: 76        .byte $76, $03, $00, $80
- D - - - - 0x010ED7 04:8EC7: 77        .byte $77, $00, $90, $80
- D 0 - I - 0x010EDB 04:8ECB: 77        .byte $77, $03, $70, $80
- D 0 - I - 0x010EDF 04:8ECF: 78        .byte $78, $02, $70, $80
- D 0 - I - 0x010EE3 04:8ED3: 78        .byte $78, $03, $00, $F0
- D - - - - 0x010EE7 04:8ED7: 79        .byte $79, $02, $00, $80
- D - - - - 0x010EEB 04:8EDB: 79        .byte $79, $03, $00, $80
- D 0 - I - 0x010EEF 04:8EDF: 7A        .byte $7A, $00, $90, $80
- D 0 - I - 0x010EF3 04:8EE3: 7A        .byte $7A, $01, $00, $F0
- D 0 - I - 0x010EF7 04:8EE7: 7B        .byte $7B, $00, $90, $80
- D - - - - 0x010EFB 04:8EEB: 7B        .byte $7B, $01, $00, $F0
- D 0 - I - 0x010EFF 04:8EEF: 7C        .byte $7C, $00, $00, $F0
- D 0 - I - 0x010F03 04:8EF3: 7D        .byte $7D, $00, $00, $F0
- D 0 - I - 0x010F07 04:8EF7: 57        .byte $57, $00, $70, $80
- D - - - - 0x010F0B 04:8EFB: 59        .byte $59, $01, $00, $F0   ; 0x70
- D 0 - I - 0x010F0F 04:8EFF: 42        .byte $42, $00, $70, $80   ; 0x71 to level 4, map 1 (B2-D2)

; 1 byte - XYZW HHHH
;   H - the screen number
;   X - ???
;   Y - the floor (0 - a top floor, 1 - a bottom floor)
;   Z - the type of door width (0x00 - M-size, 0x01 - X-size)
; 2 byte - The door's position along the X axis relative to the level
; 3 byte: - XYZW TTTT
;   X - to allow to leave the door open (1  - allow, 0 - disallow, for destructible walls)
;   Y - a checkpoint or unique room (0 - a checkpoint, 1 - an unique room)
;   Z - ???
;   W - ???
;   T (low-order nibble) - the display room type {0x00 - 0x0F}
; 4 byte
;   the room number (for a checkpoint and an unique room)
; 5 byte: see vRoomExtraInfo
tbl_corridors_level_1_0:
- D 0 - I - 0x010F13 04:8F03: 4F        .byte $4F, $88, $06, $59, $80

deadlock:
- D 0 - I - 0x010F18 04:8F08: FF        .byte $FF

; reserve
- D - - - - 0x010F19 04:8F09: FF        .byte $FF

tbl_corridors_level_1_1:
- D 0 - I - 0x010F1A 04:8F0A: 60        .byte $60, $38, $00, $51, $80
- D 0 - I - 0x010F1F 04:8F0F: 41        .byte $41, $A0, $47, $01, $00
- D 0 - I - 0x010F24 04:8F14: 02        .byte $02, $20, $47, $02, $00
- D 0 - I - 0x010F29 04:8F19: 42        .byte $42, $E0, $47, $03, $00
- D 0 - I - 0x010F2E 04:8F1E: 03        .byte $03, $20, $47, $04, $00
- D 0 - I - 0x010F33 04:8F23: 04        .byte $04, $20, $47, $05, $00
- D 0 - I - 0x010F38 04:8F28: 44        .byte $44, $E0, $47, $06, $00
- D 0 - I - 0x010F3D 04:8F2D: 45        .byte $45, $A0, $47, $07, $00
- D 0 - I - 0x010F42 04:8F32: 06        .byte $06, $20, $47, $08, $00
- D 0 - I - 0x010F47 04:8F37: 67        .byte $67, $C8, $00, $5C, $80
- D - - - - 0x010F4C 04:8F3C: FF        .byte $FF

tbl_corridors_level_1_2:
- D 0 - I - 0x010F4D 04:8F3D: 60        .byte $60, $28, $00, $5D, $80
- D 0 - I - 0x010F52 04:8F42: 01        .byte $01, $20, $47, $12, $00
- D 0 - I - 0x010F57 04:8F47: 41        .byte $41, $A0, $47, $11, $00
- D 0 - I - 0x010F5C 04:8F4C: 42        .byte $42, $80, $C8, $10, $02
- D 0 - I - 0x010F61 04:8F51: 43        .byte $43, $A0, $47, $0F, $01
- D 0 - I - 0x010F66 04:8F56: 44        .byte $44, $20, $47, $0E, $00
- D 0 - I - 0x010F6B 04:8F5B: 44        .byte $44, $A0, $47, $0D, $01
- D 0 - I - 0x010F70 04:8F60: 04        .byte $04, $E0, $47, $0C, $00
- D 0 - I - 0x010F75 04:8F65: 05        .byte $05, $20, $47, $0B, $00
- D 0 - I - 0x010F7A 04:8F6A: 06        .byte $06, $20, $47, $0A, $00
- D 0 - I - 0x010F7F 04:8F6F: 46        .byte $46, $A0, $47, $09, $00
- D 0 - I - 0x010F84 04:8F74: 67        .byte $67, $D8, $00, $5A, $80
- D - - - - 0x010F89 04:8F79: FF        .byte $FF

tbl_corridors_level_1_3:
- D 0 - I - 0x010F8A 04:8F7A: 60        .byte $60, $38, $00, $5B, $80
- D 0 - I - 0x010F8F 04:8F7F: 41        .byte $41, $80, $C8, $13, $03
- D 0 - I - 0x010F94 04:8F84: 42        .byte $42, $20, $47, $14, $02
- D 0 - I - 0x010F99 04:8F89: 42        .byte $42, $A0, $47, $15, $00
- D 0 - I - 0x010F9E 04:8F8E: 02        .byte $02, $E0, $47, $16, $02
- D 0 - I - 0x010FA3 04:8F93: 43        .byte $43, $80, $C8, $17, $02
- D 0 - I - 0x010FA8 04:8F98: 04        .byte $04, $20, $47, $18, $03
- D 0 - I - 0x010FAD 04:8F9D: 44        .byte $44, $A0, $47, $19, $00
- D 0 - I - 0x010FB2 04:8FA2: 45        .byte $45, $80, $C8, $1A, $02
- D 0 - I - 0x010FB7 04:8FA7: 46        .byte $46, $20, $47, $1B, $00
- D 0 - I - 0x010FBC 04:8FAC: 46        .byte $46, $A0, $47, $1C, $00
- D 0 - I - 0x010FC1 04:8FB1: 06        .byte $06, $E0, $47, $1D, $00
- D 0 - I - 0x010FC6 04:8FB6: 07        .byte $07, $20, $47, $1E, $00
- D 0 - I - 0x010FCB 04:8FBB: 47        .byte $47, $E0, $47, $1F, $03
- D 0 - I - 0x010FD0 04:8FC0: FF        .byte $FF

tbl_corridors_level_2_outside:
- D 0 - I - 0x010FD1 04:8FC1: 60        .byte $60, $80, $00, $43, $80
- D 0 - I - 0x010FD6 04:8FC6: 61        .byte $61, $80, $00, $45, $80
- D 0 - I - 0x010FDB 04:8FCB: 62        .byte $62, $FF, $00, $44, $80
- D 0 - I - 0x010FE0 04:8FD0: 63        .byte $63, $00, $00, $44, $80
- D 0 - I - 0x010FE5 04:8FD5: 44        .byte $44, $38, $00, $46, $80
- D 0 - I - 0x010FEA 04:8FDA: 65        .byte $65, $80, $00, $47, $80
- D 0 - I - 0x010FEF 04:8FDF: 4B        .byte $4B, $40, $00, $48, $80
- D 0 - I - 0x010FF4 04:8FE4: 6B        .byte $6B, $FF, $00, $4A, $80
- D 0 - I - 0x010FF9 04:8FE9: 6C        .byte $6C, $00, $00, $4A, $80
- D 0 - I - 0x010FFE 04:8FEE: 6C        .byte $6C, $C0, $00, $49, $80
- D 0 - I - 0x011003 04:8FF3: 6D        .byte $6D, $A0, $00, $4B, $80
- D 0 - I - 0x011008 04:8FF8: 6E        .byte $6E, $48, $00, $4C, $80
- D 0 - I - 0x01100D 04:8FFD: 6E        .byte $6E, $C0, $00, $4D, $80
- D 0 - I - 0x011012 04:9002: 6F        .byte $6F, $40, $00, $4F, $80
- D 0 - I - 0x011017 04:9007: 6F        .byte $6F, $C8, $00, $4E, $80
- D - - - - 0x01101C 04:900C: FF        .byte $FF

tbl_corridors_level_2_d1_d3:
- D 0 - I - 0x01101D 04:900D: 40        .byte $40, $50, $03, $36, $80
- D 0 - I - 0x011022 04:9012: 01        .byte $01, $20, $43, $01, $00
- D 0 - I - 0x011027 04:9017: 41        .byte $41, $60, $43, $02, $00
- D 0 - I - 0x01102C 04:901C: 02        .byte $02, $20, $43, $03, $00
- D 0 - I - 0x011031 04:9021: 42        .byte $42, $D0, $43, $04, $00
- D 0 - I - 0x011036 04:9026: 03        .byte $03, $20, $43, $05, $00
- D 0 - I - 0x01103B 04:902B: 43        .byte $43, $60, $43, $06, $00
- D 0 - I - 0x011040 04:9030: 04        .byte $04, $40, $43, $07, $01
- D 0 - I - 0x011045 04:9035: 44        .byte $44, $90, $43, $08, $00
- D 0 - I - 0x01104A 04:903A: 05        .byte $05, $20, $43, $09, $00
- D 0 - I - 0x01104F 04:903F: 45        .byte $45, $D0, $43, $0A, $02
- D 0 - I - 0x011054 04:9044: 06        .byte $06, $30, $43, $0B, $00
- D 0 - I - 0x011059 04:9049: 46        .byte $46, $48, $C9, $0C, $02
- D 0 - I - 0x01105E 04:904E: 46        .byte $46, $E0, $43, $0D, $00
- D 0 - I - 0x011063 04:9053: 47        .byte $47, $50, $03, $38, $80
- D - - - - 0x011068 04:9058: FF        .byte $FF

tbl_corridors_level_2_d2:
- D 0 - I - 0x011069 04:9059: 40        .byte $40, $50, $03, $37, $80
- D 0 - I - 0x01106E 04:905E: 01        .byte $01, $30, $43, $0E, $00
- D 0 - I - 0x011073 04:9063: 41        .byte $41, $48, $C9, $0F, $02
- D 0 - I - 0x011078 04:9068: 41        .byte $41, $E0, $43, $10, $00
- D 0 - I - 0x01107D 04:906D: 02        .byte $02, $20, $43, $11, $00
- D 0 - I - 0x011082 04:9072: 42        .byte $42, $D0, $43, $12, $03
- D 0 - I - 0x011087 04:9077: 03        .byte $03, $20, $43, $13, $00
- D 0 - I - 0x01108C 04:907C: 43        .byte $43, $60, $43, $14, $04
- D 0 - I - 0x011091 04:9081: 04        .byte $04, $40, $43, $15, $00
- D 0 - I - 0x011096 04:9086: 44        .byte $44, $90, $43, $16, $00
- D 0 - I - 0x01109B 04:908B: 05        .byte $05, $30, $43, $17, $00
- D 0 - I - 0x0110A0 04:9090: 45        .byte $45, $48, $C9, $18, $02
- D 0 - I - 0x0110A5 04:9095: 45        .byte $45, $E0, $43, $19, $00
- D 0 - I - 0x0110AA 04:909A: 06        .byte $06, $20, $43, $1A, $00
- D 0 - I - 0x0110AF 04:909F: 46        .byte $46, $60, $43, $1B, $05
- D 0 - I - 0x0110B4 04:90A4: 07        .byte $07, $30, $43, $1C, $06
- D 0 - I - 0x0110B9 04:90A9: 47        .byte $47, $48, $C9, $1D, $04
- D 0 - I - 0x0110BE 04:90AE: 47        .byte $47, $E0, $43, $1E, $01
- D 0 - I - 0x0110C3 04:90B3: FF        .byte $FF

tbl_corridors_level_2_d4_d5:
- D 0 - I - 0x0110C4 04:90B4: 40        .byte $40, $50, $03, $39, $80
- D 0 - I - 0x0110C9 04:90B9: 01        .byte $01, $20, $43, $1F, $07
- D 0 - I - 0x0110CE 04:90BE: 41        .byte $41, $D0, $43, $20, $00
- D 0 - I - 0x0110D3 04:90C3: 02        .byte $02, $40, $43, $21, $00
- D 0 - I - 0x0110D8 04:90C8: 42        .byte $42, $90, $43, $22, $02
- D 0 - I - 0x0110DD 04:90CD: 03        .byte $03, $20, $43, $23, $08
- D 0 - I - 0x0110E2 04:90D2: 43        .byte $43, $60, $43, $24, $00
- D 0 - I - 0x0110E7 04:90D7: 04        .byte $04, $30, $43, $25, $00
- D 0 - I - 0x0110EC 04:90DC: 44        .byte $44, $48, $C9, $26, $02
- D 0 - I - 0x0110F1 04:90E1: 44        .byte $44, $E0, $43, $27, $00
- D 0 - I - 0x0110F6 04:90E6: 05        .byte $05, $20, $43, $28, $00
- D 0 - I - 0x0110FB 04:90EB: 45        .byte $45, $60, $43, $29, $00
- D 0 - I - 0x011100 04:90F0: 06        .byte $06, $20, $43, $2A, $00
- D 0 - I - 0x011105 04:90F5: 46        .byte $46, $D0, $43, $2B, $09
- D 0 - I - 0x01110A 04:90FA: 47        .byte $47, $50, $03, $3A, $80
- D 0 - I - 0x01110F 04:90FF: FF        .byte $FF

tbl_corridors_level_2_d6_d8:
- D 0 - I - 0x011110 04:9100: 40        .byte $40, $28, $00, $3B, $80
- D 0 - I - 0x011115 04:9105: 01        .byte $01, $28, $44, $2C, $00
- D 0 - I - 0x01111A 04:910A: 02        .byte $02, $28, $44, $2D, $00
- D 0 - I - 0x01111F 04:910F: 42        .byte $42, $A8, $44, $2E, $0A
- D 0 - I - 0x011124 04:9114: 03        .byte $03, $28, $44, $2F, $00
- D 0 - I - 0x011129 04:9119: 43        .byte $43, $68, $44, $30, $00
- D 0 - I - 0x01112E 04:911E: 04        .byte $04, $28, $44, $31, $0B
- D 0 - I - 0x011133 04:9123: 44        .byte $44, $A8, $44, $32, $03
- D 0 - I - 0x011138 04:9128: 05        .byte $05, $28, $44, $33, $00
- D 0 - I - 0x01113D 04:912D: 06        .byte $06, $28, $44, $34, $00
- D 0 - I - 0x011142 04:9132: 46        .byte $46, $28, $C5, $35, $02
- D 0 - I - 0x011147 04:9137: 46        .byte $46, $A8, $44, $36, $00
- D 0 - I - 0x01114C 04:913C: 47        .byte $47, $68, $00, $3D, $80
- D - - - - 0x011151 04:9141: FF        .byte $FF

tbl_corridors_level_2_d7:
- D 0 - I - 0x011152 04:9142: 40        .byte $40, $28, $00, $3C, $80
- D 0 - I - 0x011157 04:9147: 01        .byte $01, $28, $44, $37, $00
- D 0 - I - 0x01115C 04:914C: 41        .byte $41, $68, $44, $38, $04
- D 0 - I - 0x011161 04:9151: 02        .byte $02, $28, $44, $39, $00
- D 0 - I - 0x011166 04:9156: 42        .byte $42, $28, $C5, $3A, $04
- D 0 - I - 0x01116B 04:915B: 42        .byte $42, $A8, $44, $3B, $00
- D 0 - I - 0x011170 04:9160: 03        .byte $03, $68, $44, $3C, $00
- D 0 - I - 0x011175 04:9165: 43        .byte $43, $A8, $44, $3D, $00
- D 0 - I - 0x01117A 04:916A: 04        .byte $04, $28, $44, $3E, $0C
- D 0 - I - 0x01117F 04:916F: 44        .byte $44, $A8, $44, $3F, $0D
- D 0 - I - 0x011184 04:9174: 05        .byte $05, $28, $44, $40, $00
- D 0 - I - 0x011189 04:9179: 45        .byte $45, $28, $C5, $41, $02
- D 0 - I - 0x01118E 04:917E: 45        .byte $45, $A8, $44, $42, $00
- D 0 - I - 0x011193 04:9183: 06        .byte $06, $28, $44, $43, $00
- D 0 - I - 0x011198 04:9188: 07        .byte $07, $28, $44, $44, $05
- D 0 - I - 0x01119D 04:918D: 47        .byte $47, $68, $44, $45, $0E
- D 0 - I - 0x0111A2 04:9192: FF        .byte $FF

tbl_corridors_level_2_d9_d10:
- D 0 - I - 0x0111A3 04:9193: 40        .byte $40, $68, $00, $3E, $80
- D 0 - I - 0x0111A8 04:9198: 01        .byte $01, $28, $44, $46, $00
- D 0 - I - 0x0111AD 04:919D: 02        .byte $02, $28, $44, $47, $00
- D 0 - I - 0x0111B2 04:91A2: 42        .byte $42, $A8, $44, $48, $00
- D 0 - I - 0x0111B7 04:91A7: 03        .byte $03, $28, $44, $49, $0F
- D 0 - I - 0x0111BC 04:91AC: 43        .byte $43, $68, $44, $4A, $00
- D 0 - I - 0x0111C1 04:91B1: 04        .byte $04, $28, $44, $4B, $06
- D 0 - I - 0x0111C6 04:91B6: 44        .byte $44, $28, $C5, $4C, $03
- D 0 - I - 0x0111CB 04:91BB: 44        .byte $44, $A8, $44, $4D, $10
- D 0 - I - 0x0111D0 04:91C0: 05        .byte $05, $28, $44, $4E, $00
- D 0 - I - 0x0111D5 04:91C5: 45        .byte $45, $68, $44, $4F, $00
- D 0 - I - 0x0111DA 04:91CA: 06        .byte $06, $28, $44, $50, $00
- D 0 - I - 0x0111DF 04:91CF: 47        .byte $47, $28, $00, $3F, $80
- D - - - - 0x0111E4 04:91D4: FF        .byte $FF

tbl_corridors_level_2_d11_d13:
- D 0 - I - 0x0111E5 04:91D5: 40        .byte $40, $68, $00, $40, $80
- D 0 - I - 0x0111EA 04:91DA: 01        .byte $01, $28, $44, $51, $11
- D 0 - I - 0x0111EF 04:91DF: 41        .byte $41, $68, $44, $52, $00
- D 0 - I - 0x0111F4 04:91E4: 02        .byte $02, $28, $44, $53, $00
- D 0 - I - 0x0111F9 04:91E9: 42        .byte $42, $28, $C5, $54, $03
- D 0 - I - 0x0111FE 04:91EE: 42        .byte $42, $A8, $44, $55, $00
- D 0 - I - 0x011203 04:91F3: 03        .byte $03, $28, $44, $56, $00
- D 0 - I - 0x011208 04:91F8: 43        .byte $43, $68, $44, $57, $00
- D 0 - I - 0x01120D 04:91FD: 04        .byte $04, $28, $44, $58, $12
- D 0 - I - 0x011212 04:9202: 44        .byte $44, $A8, $44, $59, $00
- D 0 - I - 0x011217 04:9207: 05        .byte $05, $28, $44, $5A, $07
- D 0 - I - 0x01121C 04:920C: 45        .byte $45, $68, $44, $5B, $13
- D 0 - I - 0x011221 04:9211: 06        .byte $06, $28, $44, $5C, $00
- D 0 - I - 0x011226 04:9216: 47        .byte $47, $28, $00, $42, $80
- D - - - - 0x01122B 04:921B: FF        .byte $FF

tbl_corridors_level_2_d12:
- D 0 - I - 0x01122C 04:921C: 40        .byte $40, $68, $00, $41, $80
- D 0 - I - 0x011231 04:9221: 01        .byte $01, $28, $44, $5D, $08
- D 0 - I - 0x011236 04:9226: 41        .byte $41, $28, $C5, $5E, $02
- D 0 - I - 0x01123B 04:922B: 41        .byte $41, $A8, $44, $5F, $00
- D 0 - I - 0x011240 04:9230: 02        .byte $02, $68, $44, $60, $14
- D 0 - I - 0x011245 04:9235: 42        .byte $42, $A8, $44, $61, $15
- D 0 - I - 0x01124A 04:923A: 03        .byte $03, $28, $44, $62, $00
- D 0 - I - 0x01124F 04:923F: 43        .byte $43, $28, $C5, $63, $03
- D 0 - I - 0x011254 04:9244: 43        .byte $43, $A8, $44, $64, $00
- D 0 - I - 0x011259 04:9249: 04        .byte $04, $28, $44, $65, $00
- D 0 - I - 0x01125E 04:924E: 44        .byte $44, $68, $44, $66, $16
- D 0 - I - 0x011263 04:9253: 05        .byte $05, $28, $44, $67, $17
- D 0 - I - 0x011268 04:9258: 45        .byte $45, $A8, $44, $68, $00
- D 0 - I - 0x01126D 04:925D: 06        .byte $06, $28, $44, $69, $00
- D 0 - I - 0x011272 04:9262: 46        .byte $46, $28, $C5, $6A, $03
- D 0 - I - 0x011277 04:9267: 46        .byte $46, $A8, $44, $6B, $00
- D 0 - I - 0x01127C 04:926C: 07        .byte $07, $28, $44, $6C, $00
- D 0 - I - 0x011281 04:9271: 47        .byte $47, $A8, $44, $6D, $09
- D 0 - I - 0x011286 04:9276: FF        .byte $FF

tbl_corridors_level_3_0:
- D 0 - I - 0x011287 04:9277: 6F        .byte $6F, $80, $00, $10, $00
- D 0 - I - 0x01128C 04:927C: FF        .byte $FF

tbl_corridors_level_3_1:
- D 0 - I - 0x01128D 04:927D: 41        .byte $41, $80, $41, $01, $00
- D 0 - I - 0x011292 04:9282: 02        .byte $02, $40, $41, $02, $00
- D 0 - I - 0x011297 04:9287: 42        .byte $42, $A0, $41, $03, $00
- D 0 - I - 0x01129C 04:928C: 42        .byte $42, $E0, $41, $04, $00
- D 0 - I - 0x0112A1 04:9291: 44        .byte $44, $40, $41, $05, $00
- D 0 - I - 0x0112A6 04:9296: 45        .byte $45, $80, $41, $06, $00
- D 0 - I - 0x0112AB 04:929B: 46        .byte $46, $80, $41, $07, $01
- D 0 - I - 0x0112B0 04:92A0: 06        .byte $06, $C0, $41, $08, $00
- D 0 - I - 0x0112B5 04:92A5: 46        .byte $46, $E0, $CA, $09, $02
- D 0 - I - 0x0112BA 04:92AA: 47        .byte $47, $40, $41, $0A, $00
- D 0 - I - 0x0112BF 04:92AF: 07        .byte $07, $C0, $41, $0B, $02
- D 0 - I - 0x0112C4 04:92B4: 47        .byte $47, $D0, $02, $32, $80
- D 0 - I - 0x0112C9 04:92B9: FF        .byte $FF

tbl_corridors_level_3_2:
- D 0 - I - 0x0112CA 04:92BA: 40        .byte $40, $30, $02, $33, $80
- D 0 - I - 0x0112CF 04:92BF: 00        .byte $00, $80, $41, $19, $00
- D 0 - I - 0x0112D4 04:92C4: 01        .byte $01, $20, $41, $18, $05
- D 0 - I - 0x0112D9 04:92C9: 01        .byte $01, $80, $41, $17, $00
- D 0 - I - 0x0112DE 04:92CE: 42        .byte $42, $80, $41, $16, $00
- D 0 - I - 0x0112E3 04:92D3: 43        .byte $43, $80, $41, $15, $00
- D 0 - I - 0x0112E8 04:92D8: 03        .byte $03, $C0, $41, $14, $00
- D 0 - I - 0x0112ED 04:92DD: 43        .byte $43, $E0, $CA, $13, $02
- D 0 - I - 0x0112F2 04:92E2: 45        .byte $45, $80, $41, $12, $04
- D 0 - I - 0x0112F7 04:92E7: 06        .byte $06, $40, $41, $11, $01
- D 0 - I - 0x0112FC 04:92EC: 46        .byte $46, $A0, $41, $10, $03
- D 0 - I - 0x011301 04:92F1: 46        .byte $46, $E0, $41, $0F, $00
- D 0 - I - 0x011306 04:92F6: 47        .byte $47, $20, $CA, $0E, $03
- D 0 - I - 0x01130B 04:92FB: 07        .byte $07, $60, $41, $0D, $00
- D 0 - I - 0x011310 04:9300: 47        .byte $47, $80, $41, $0C, $00
- D 0 - I - 0x011315 04:9305: 47        .byte $47, $D0, $02, $30, $80
- D 0 - I - 0x01131A 04:930A: FF        .byte $FF

tbl_corridors_level_3_3:
- D 0 - I - 0x01131B 04:930B: 40        .byte $40, $30, $02, $31, $80
- D 0 - I - 0x011320 04:9310: 00        .byte $00, $80, $41, $1A, $00
- D 0 - I - 0x011325 04:9315: 41        .byte $41, $80, $41, $1B, $00
- D 0 - I - 0x01132A 04:931A: 01        .byte $01, $C0, $41, $1C, $06
- D 0 - I - 0x01132F 04:931F: 41        .byte $41, $E0, $CA, $1D, $03
- D 0 - I - 0x011334 04:9324: 03        .byte $03, $40, $41, $1E, $00
- D 0 - I - 0x011339 04:9329: 43        .byte $43, $A0, $41, $1F, $00
- D 0 - I - 0x01133E 04:932E: 43        .byte $43, $E0, $41, $20, $00
- D 0 - I - 0x011343 04:9333: 44        .byte $44, $80, $41, $21, $00
- D 0 - I - 0x011348 04:9338: 05        .byte $05, $80, $41, $22, $00
- D 0 - I - 0x01134D 04:933D: 45        .byte $45, $C0, $41, $23, $02
- D 0 - I - 0x011352 04:9342: 46        .byte $46, $40, $41, $24, $07
- D 0 - I - 0x011357 04:9347: 47        .byte $47, $40, $41, $25, $00
- D 0 - I - 0x01135C 04:934C: 07        .byte $07, $C0, $41, $26, $08
- D 0 - I - 0x011361 04:9351: 47        .byte $47, $D0, $02, $35, $80
- D 0 - I - 0x011366 04:9356: FF        .byte $FF

tbl_corridors_level_3_4:
- D 0 - I - 0x011367 04:9357: 00        .byte $00, $20, $41, $36, $04
- D 0 - I - 0x01136C 04:935C: 00        .byte $00, $80, $41, $35, $00
- D 0 - I - 0x011371 04:9361: 01        .byte $01, $80, $41, $34, $00
- D 0 - I - 0x011376 04:9366: 41        .byte $41, $C0, $41, $33, $00
- D 0 - I - 0x01137B 04:936B: 42        .byte $42, $40, $41, $32, $00
- D 0 - I - 0x011380 04:9370: 03        .byte $03, $20, $41, $31, $0B
- D 0 - I - 0x011385 04:9375: 03        .byte $03, $80, $41, $30, $03
- D 0 - I - 0x01138A 04:937A: 04        .byte $04, $80, $41, $2F, $0A
- D 0 - I - 0x01138F 04:937F: 44        .byte $44, $C0, $41, $2E, $00
- D 0 - I - 0x011394 04:9384: 45        .byte $45, $80, $41, $2D, $00
- D 0 - I - 0x011399 04:9389: 46        .byte $46, $80, $41, $2C, $09
- D 0 - I - 0x01139E 04:938E: 06        .byte $06, $C0, $41, $2B, $00
- D 0 - I - 0x0113A3 04:9393: 46        .byte $46, $E0, $CA, $2A, $02
- D 0 - I - 0x0113A8 04:9398: 47        .byte $47, $20, $CA, $29, $02
- D 0 - I - 0x0113AD 04:939D: 07        .byte $07, $60, $41, $28, $00
- D 0 - I - 0x0113B2 04:93A2: 47        .byte $47, $80, $41, $27, $00
- D 0 - I - 0x0113B7 04:93A7: 47        .byte $47, $D0, $02, $34, $80
- D 0 - I - 0x0113BC 04:93AC: FF        .byte $FF

tbl_corridors_level4_map1_b2_d2:
- D 0 - I - 0x0113BD 04:93AD: 60        .byte $60, $10, $00, $83, $00
- D 0 - I - 0x0113C2 04:93B2: 60        .byte $60, $F0, $00, $43, $00
- D 0 - I - 0x0113C7 04:93B7: 61        .byte $61, $F0, $00, $87, $00
- D - - - - 0x0113CC 04:93BC: FF        .byte $FF

tbl_corridors_level4_map1_c0_c2:
- D 0 - I - 0x0113CD 04:93BD: 60        .byte $60, $10, $00, $71, $80
- D 0 - I - 0x0113D2 04:93C2: 60        .byte $60, $F0, $00, $44, $00
- D 0 - I - 0x0113D7 04:93C7: 61        .byte $61, $F0, $00, $89, $00
- D - - - - 0x0113DC 04:93CC: FF        .byte $FF

tbl_corridors_level4_map1_b1_c1:
- D 0 - I - 0x0113DD 04:93CD: 60        .byte $60, $10, $00, $80, $00
- D 0 - I - 0x0113E2 04:93D2: 60        .byte $60, $F0, $00, $45, $00
- D 0 - I - 0x0113E7 04:93D7: FF        .byte $FF

tbl_corridors_level4_map1_b1_b3:
- D 0 - I - 0x0113E8 04:93D8: 60        .byte $60, $10, $00, $82, $00
- D 0 - I - 0x0113ED 04:93DD: 60        .byte $60, $F0, $00, $7E, $00
- D 0 - I - 0x0113F2 04:93E2: 61        .byte $61, $F0, $00, $85, $00
- D - - - - 0x0113F7 04:93E7: FF        .byte $FF

tbl_corridors_level4_map1_a3_d3:
- D 0 - I - 0x0113F8 04:93E8: 60        .byte $60, $80, $00, $8B, $00
- D 0 - I - 0x0113FD 04:93ED: 61        .byte $61, $80, $00, $84, $00
- D 0 - I - 0x011402 04:93F2: 42        .byte $42, $10, $4B, $01, $00
- D 0 - I - 0x011407 04:93F7: 43        .byte $43, $20, $4B, $02, $00
- D - - - - 0x01140C 04:93FC: 63        .byte $63, $60, $00, $47, $00
- D - - - - 0x011411 04:9401: FF        .byte $FF

tbl_corridors_level4_map1_d0_d3:
- D 0 - I - 0x011412 04:9402: 60        .byte $60, $80, $00, $86, $00
- D 0 - I - 0x011417 04:9407: 61        .byte $61, $80, $00, $7F, $00
- D 0 - I - 0x01141C 04:940C: 42        .byte $42, $20, $4B, $03, $00
- D 0 - I - 0x011421 04:9411: 42        .byte $42, $E0, $4B, $04, $00
- D 0 - I - 0x011426 04:9416: 43        .byte $43, $20, $4B, $05, $00
- D 0 - I - 0x01142B 04:941B: 63        .byte $63, $60, $00, $48, $00
- D - - - - 0x011430 04:9420: FF        .byte $FF

tbl_corridors_level4_map1_a0_d0:
- D 0 - I - 0x011431 04:9421: 60        .byte $60, $80, $00, $88, $00
- D 0 - I - 0x011436 04:9426: 61        .byte $61, $80, $00, $81, $00
- D 0 - I - 0x01143B 04:942B: 42        .byte $42, $80, $4B, $06, $01
- D 0 - I - 0x011440 04:9430: 43        .byte $43, $20, $4B, $07, $00
- D 0 - I - 0x011445 04:9435: 63        .byte $63, $60, $00, $49, $00
- D - - - - 0x01144A 04:943A: FF        .byte $FF

tbl_corridors_level4_map1_a0_a3:
- D 0 - I - 0x01144B 04:943B: 60        .byte $60, $10, $00, $8A, $00
- D 0 - I - 0x011450 04:9440: 40        .byte $40, $90, $4B, $08, $02
- D 0 - I - 0x011455 04:9445: 41        .byte $41, $30, $4B, $09, $01
- D 0 - I - 0x01145A 04:944A: 42        .byte $42, $60, $4B, $0A, $00
- D 0 - I - 0x01145F 04:944F: 62        .byte $62, $F0, $00, $46, $00
- D 0 - I - 0x011464 04:9454: 43        .byte $43, $B0, $0B, $8F, $00
- D - - - - 0x011469 04:9459: FF        .byte $FF

tbl_corridors_level4_map2_a0_a6:
- D 0 - I - 0x01146A 04:945A: 60        .byte $60, $10, $00, $95, $00
- D 0 - I - 0x01146F 04:945F: 40        .byte $40, $90, $4B, $0B, $00
- D 0 - I - 0x011474 04:9464: 63        .byte $63, $80, $00, $4F, $00
- D 0 - I - 0x011479 04:9469: 44        .byte $44, $60, $4B, $0C, $02
- D 0 - I - 0x01147E 04:946E: 64        .byte $64, $F0, $00, $4B, $00
- D 0 - I - 0x011483 04:9473: 45        .byte $45, $B0, $0B, $8C, $00
- D - - - - 0x011488 04:9478: FF        .byte $FF

tbl_corridors_level4_map2_a6_f6:
- D 0 - I - 0x011489 04:9479: 60        .byte $60, $A0, $00, $8E, $00
- D 0 - I - 0x01148E 04:947E: 41        .byte $41, $80, $4B, $0D, $00
- D 0 - I - 0x011493 04:9483: 42        .byte $42, $20, $4B, $0E, $03
- D 0 - I - 0x011498 04:9488: 42        .byte $42, $E0, $4B, $0F, $03
- D 0 - I - 0x01149D 04:948D: 43        .byte $43, $80, $4B, $10, $00
- D 0 - I - 0x0114A2 04:9492: 64        .byte $64, $80, $00, $51, $00
- D 0 - I - 0x0114A7 04:9497: 65        .byte $65, $80, $00, $4C, $00
- D 0 - I - 0x0114AC 04:949C: FF        .byte $FF

tbl_corridors_level4_map2_f0_f6:
- D 0 - I - 0x0114AD 04:949D: 60        .byte $60, $A0, $00, $91, $00
- D 0 - I - 0x0114B2 04:94A2: 41        .byte $41, $70, $4B, $11, $00
- D 0 - I - 0x0114B7 04:94A7: 42        .byte $42, $20, $4B, $12, $00
- D 0 - I - 0x0114BC 04:94AC: 42        .byte $42, $E0, $4B, $13, $04
- D 0 - I - 0x0114C1 04:94B1: 43        .byte $43, $80, $4B, $14, $00
- D 0 - I - 0x0114C6 04:94B6: 64        .byte $64, $80, $00, $52, $00
- D 0 - I - 0x0114CB 04:94BB: 65        .byte $65, $80, $00, $4D, $00
- D - - - - 0x0114D0 04:94C0: FF        .byte $FF

tbl_corridors_level4_map2_a0_f0:
- D 0 - I - 0x0114D1 04:94C1: 60        .byte $60, $80, $00, $93, $00
- D 0 - I - 0x0114D6 04:94C6: 61        .byte $61, $80, $00, $9B, $00
- D 0 - I - 0x0114DB 04:94CB: 42        .byte $42, $20, $4B, $15, $04
- D 0 - I - 0x0114E0 04:94D0: 42        .byte $42, $E0, $4B, $16, $00
- D 0 - I - 0x0114E5 04:94D5: 43        .byte $43, $80, $4B, $17, $00
- D 0 - I - 0x0114EA 04:94DA: 44        .byte $44, $80, $4B, $18, $00
- D 0 - I - 0x0114EF 04:94DF: 45        .byte $45, $20, $4B, $19, $05
- D 0 - I - 0x0114F4 04:94E4: 65        .byte $65, $60, $00, $4A, $00
- D - - - - 0x0114F9 04:94E9: FF        .byte $FF

tbl_corridors_level4_map2_b1_b5:
- D 0 - I - 0x0114FA 04:94EA: 60        .byte $60, $A0, $00, $9D, $00
- D 0 - I - 0x0114FF 04:94EF: 62        .byte $62, $80, $00, $54, $00
- D 0 - I - 0x011504 04:94F4: 63        .byte $63, $80, $00, $50, $00
- D 0 - I - 0x011509 04:94F9: FF        .byte $FF

tbl_corridors_level4_map2_a3_a3:
- D - - - - 0x01150A 04:94FA: 60        .byte $60, $10, $00, $8D, $00
- D - - - - 0x01150F 04:94FF: FF        .byte $FF

tbl_corridors_level4_map2_b5_e5:
- D 0 - I - 0x011510 04:9500: 60        .byte $60, $10, $00, $97, $00
- D 0 - I - 0x011515 04:9505: 40        .byte $40, $90, $4B, $1A, $00
- D 0 - I - 0x01151A 04:950A: 41        .byte $41, $80, $4B, $1B, $00
- D 0 - I - 0x01151F 04:950F: 42        .byte $42, $60, $4B, $1C, $00
- D 0 - I - 0x011524 04:9514: 62        .byte $62, $F0, $00, $99, $00
- D 0 - I - 0x011529 04:9519: FF        .byte $FF

tbl_corridors_level4_map2_e0_e6:
- D 0 - I - 0x01152A 04:951A: 60        .byte $60, $10, $00, $90, $00
- D 0 - I - 0x01152F 04:951F: 61        .byte $61, $10, $00, $98, $00
- D 0 - I - 0x011534 04:9524: 41        .byte $41, $90, $4B, $1D, $00
- D 0 - I - 0x011539 04:9529: 42        .byte $42, $10, $4B, $1E, $05
- D 0 - I - 0x01153E 04:952E: 43        .byte $43, $60, $4B, $1F, $06
- D - - - - 0x011543 04:9533: 63        .byte $63, $F0, $00, $9C, $00
- D - - - - 0x011548 04:9538: 64        .byte $64, $F0, $00, $94, $00
- D - - - - 0x01154D 04:953D: FF        .byte $FF

tbl_corridors_level4_map2_b1_f1:
- D 0 - I - 0x01154E 04:953E: 60        .byte $60, $10, $00, $92, $00
- D 0 - I - 0x011553 04:9543: 61        .byte $61, $10, $00, $9A, $00
- D 0 - I - 0x011558 04:9548: 41        .byte $41, $90, $4B, $20, $00
- D 0 - I - 0x01155D 04:954D: 42        .byte $42, $30, $4B, $21, $06
- D 0 - I - 0x011562 04:9552: 43        .byte $43, $60, $4B, $22, $07
- D 0 - I - 0x011567 04:9557: 63        .byte $63, $F0, $00, $4E, $00
- D 0 - I - 0x01156C 04:955C: FF        .byte $FF

tbl_corridors_level4_map2_c2_c4:
- D 0 - I - 0x01156D 04:955D: 60        .byte $60, $10, $00, $A0, $00
- D 0 - I - 0x011572 04:9562: 60        .byte $60, $F0, $00, $9F, $00
- D 0 - I - 0x011577 04:9567: FF        .byte $FF

tbl_corridors_level4_map2_b4_d4:
- D 0 - I - 0x011578 04:9568: 60        .byte $60, $10, $00, $96, $00
- D 0 - I - 0x01157D 04:956D: 61        .byte $61, $10, $00, $9E, $00
- D 0 - I - 0x011582 04:9572: 61        .byte $61, $F0, $00, $55, $00
- D 0 - I - 0x011587 04:9577: FF        .byte $FF

tbl_corridors_level4_map2_d2_d4:
- D 0 - I - 0x011588 04:9578: 60        .byte $60, $10, $00, $A1, $00
- D 0 - I - 0x01158D 04:957D: 60        .byte $60, $F0, $00, $56, $00
- D - - - - 0x011592 04:9582: FF        .byte $FF

tbl_corridors_level4_map2_c2_d2:
- D 0 - I - 0x011593 04:9583: 60        .byte $60, $10, $00, $A2, $00
- D 0 - I - 0x011598 04:9588: 40        .byte $40, $80, $0B, $01, $80
- D 0 - I - 0x01159D 04:958D: 60        .byte $60, $F0, $00, $53, $00
- D - - - - 0x0115A2 04:9592: FF        .byte $FF

tbl_corridors_level4_map3_d3_e3:
- D 0 - I - 0x0115A3 04:9593: 60        .byte $60, $10, $00, $04, $80
- D 0 - I - 0x0115A8 04:9598: 40        .byte $40, $80, $0B, $A3, $00
- D 0 - I - 0x0115AD 04:959D: 60        .byte $60, $F0, $00, $58, $00
- D - - - - 0x0115B2 04:95A2: FF        .byte $FF

tbl_corridors_level4_map3_d3_d5:
- D 0 - I - 0x0115B3 04:95A3: 60        .byte $60, $10, $00, $6F, $80
- D 0 - I - 0x0115B8 04:95A8: 60        .byte $60, $F0, $00, $59, $00
- D 0 - I - 0x0115BD 04:95AD: 61        .byte $61, $F0, $00, $0A, $80
- D - - - - 0x0115C2 04:95B2: FF        .byte $FF

tbl_corridors_level4_map3_d4_f4:
- D 0 - I - 0x0115C3 04:95B3: 60        .byte $60, $10, $00, $3F, $00
- D - - - - 0x0115C8 04:95B8: 60        .byte $60, $F0, $00, $5A, $00
- D - - - - 0x0115CD 04:95BD: 61        .byte $61, $F0, $00, $0C, $80
- D - - - - 0x0115D2 04:95C2: FF        .byte $FF

tbl_corridors_level4_map3_e3_e4:
- D 0 - I - 0x0115D3 04:95C3: 60        .byte $60, $10, $00, $03, $80
- D 0 - I - 0x0115D8 04:95C8: 60        .byte $60, $F0, $00, $57, $00
- D 0 - I - 0x0115DD 04:95CD: FF        .byte $FF

tbl_corridors_level4_map3_c2_g2:
- D 0 - I - 0x0115DE 04:95CE: 60        .byte $60, $10, $00, $14, $80
- D 0 - I - 0x0115E3 04:95D3: 61        .byte $61, $10, $00, $0D, $80
- D 0 - I - 0x0115E8 04:95D8: 41        .byte $41, $90, $4B, $23, $07
- D 0 - I - 0x0115ED 04:95DD: 42        .byte $42, $10, $4B, $24, $00
- D 0 - I - 0x0115F2 04:95E2: 43        .byte $43, $60, $4B, $25, $08
- D 0 - I - 0x0115F7 04:95E7: 63        .byte $63, $F0, $00, $07, $80
- D 0 - I - 0x0115FC 04:95EC: FF        .byte $FF

tbl_corridors_level4_map3_c1_c6:
- D 0 - I - 0x0115FD 04:95ED: 60        .byte $60, $10, $00, $0E, $80
- D 0 - I - 0x011602 04:95F2: 61        .byte $61, $10, $00, $06, $80
- D 0 - I - 0x011607 04:95F7: 41        .byte $41, $90, $4B, $26, $00
- D 0 - I - 0x01160C 04:95FC: 42        .byte $42, $20, $4B, $27, $08
- D 0 - I - 0x011611 04:9601: 42        .byte $42, $E0, $4B, $28, $09
- D 0 - I - 0x011616 04:9606: 43        .byte $43, $60, $4B, $29, $00
- D 0 - I - 0x01161B 04:960B: 63        .byte $63, $F0, $00, $5D, $00
- D 0 - I - 0x011620 04:9610: 64        .byte $64, $F0, $00, $12, $80
- D - - - - 0x011625 04:9615: FF        .byte $FF

tbl_corridors_level4_map3_c5_f5:
- D 0 - I - 0x011626 04:9616: 60        .byte $60, $80, $00, $08, $80
- D 0 - I - 0x01162B 04:961B: 61        .byte $61, $80, $00, $02, $80
- D 0 - I - 0x011630 04:9620: 43        .byte $43, $20, $4B, $2A, $09
- D 0 - I - 0x011635 04:9625: 63        .byte $63, $60, $00, $5E, $00
- D 0 - I - 0x01163A 04:962A: FF        .byte $FF

tbl_corridors_level4_map3_f2_f5:
- D 0 - I - 0x01163B 04:962B: 60        .byte $60, $80, $00, $0B, $80
- D 0 - I - 0x011640 04:9630: 61        .byte $61, $80, $00, $70, $80
- D 0 - I - 0x011645 04:9635: 42        .byte $42, $20, $4B, $2B, $00
- D 0 - I - 0x01164A 04:963A: 42        .byte $42, $E0, $4B, $2C, $00
- D 0 - I - 0x01164F 04:963F: 43        .byte $43, $20, $4B, $2D, $00
- D 0 - I - 0x011654 04:9644: 63        .byte $63, $60, $00, $05, $80
- D - - - - 0x011659 04:9649: FF        .byte $FF

tbl_corridors_level4_map3_b1_g1:
- D 0 - I - 0x01165A 04:964A: 60        .byte $60, $A0, $00, $15, $80
- D 0 - I - 0x01165F 04:964F: 41        .byte $41, $80, $4B, $2E, $00
- D 0 - I - 0x011664 04:9654: 42        .byte $42, $20, $4B, $2F, $00
- D 0 - I - 0x011669 04:9659: 42        .byte $42, $E0, $4B, $30, $0A
- D 0 - I - 0x01166E 04:965E: 43        .byte $43, $20, $4B, $31, $00
- D 0 - I - 0x011673 04:9663: 43        .byte $43, $E0, $4B, $32, $0A
- D 0 - I - 0x011678 04:9668: 64        .byte $64, $80, $00, $5C, $00
- D 0 - I - 0x01167D 04:966D: 65        .byte $65, $80, $00, $60, $00
- D 0 - I - 0x011682 04:9672: FF        .byte $FF

tbl_corridors_level4_map3_b1_b7:
- D 0 - I - 0x011683 04:9673: 60        .byte $60, $A0, $00, $0F, $80
- D 0 - I - 0x011688 04:9678: 41        .byte $41, $20, $4B, $33, $00
- D 0 - I - 0x01168D 04:967D: 41        .byte $41, $E0, $4B, $34, $0B
- D 0 - I - 0x011692 04:9682: 44        .byte $44, $60, $4B, $35, $00
- D 0 - I - 0x011697 04:9687: 64        .byte $64, $F0, $00, $61, $00
- D 0 - I - 0x01169C 04:968C: 65        .byte $65, $F0, $00, $19, $80
- D - - - - 0x0116A1 04:9691: FF        .byte $FF

tbl_corridors_level4_map3_b6_g6:
- D 0 - I - 0x0116A2 04:9692: 60        .byte $60, $80, $00, $10, $80
- D 0 - I - 0x0116A7 04:9697: 61        .byte $61, $80, $00, $09, $80
- D 0 - I - 0x0116AC 04:969C: 42        .byte $42, $20, $4B, $36, $0C
- D 0 - I - 0x0116B1 04:96A1: 42        .byte $42, $E0, $4B, $37, $0B
- D 0 - I - 0x0116B6 04:96A6: 43        .byte $43, $80, $4B, $38, $00
- D 0 - I - 0x0116BB 04:96AB: 45        .byte $45, $20, $4B, $39, $0C
- D 0 - I - 0x0116C0 04:96B0: 65        .byte $65, $60, $00, $62, $00
- D - - - - 0x0116C5 04:96B5: FF        .byte $FF

tbl_corridors_level4_map3_g1_g6:
- D 0 - I - 0x0116C6 04:96B6: 60        .byte $60, $A0, $00, $13, $80
- D 0 - I - 0x0116CB 04:96BB: 41        .byte $41, $80, $4B, $3A, $00
- D 0 - I - 0x0116D0 04:96C0: 64        .byte $64, $80, $00, $5B, $00
- D 0 - I - 0x0116D5 04:96C5: 65        .byte $65, $80, $00, $5F, $00
- D 0 - I - 0x0116DA 04:96CA: FF        .byte $FF

tbl_corridors_level4_map3_a0_h0:
- D 0 - I - 0x0116DB 04:96CB: 60        .byte $60, $10, $00, $1B, $80
- D 0 - I - 0x0116E0 04:96D0: 40        .byte $40, $90, $4B, $3B, $00
- D 0 - I - 0x0116E5 04:96D5: 43        .byte $43, $20, $4B, $3C, $0D
- D 0 - I - 0x0116EA 04:96DA: 43        .byte $43, $E0, $4B, $3D, $00
- D 0 - I - 0x0116EF 04:96DF: 44        .byte $44, $20, $4B, $3E, $00
- D 0 - I - 0x0116F4 04:96E4: 44        .byte $44, $E0, $4B, $3F, $00
- D 0 - I - 0x0116F9 04:96E9: 46        .byte $46, $60, $4B, $40, $00
- D 0 - I - 0x0116FE 04:96EE: 66        .byte $66, $F0, $00, $64, $00
- D 0 - I - 0x011703 04:96F3: 47        .byte $47, $B0, $0B, $1D, $80
- D - - - - 0x011708 04:96F8: FF        .byte $FF

tbl_corridors_level4_map3_a0_a7:
- D 0 - I - 0x011709 04:96F9: 60        .byte $60, $10, $00, $16, $80
- D 0 - I - 0x01170E 04:96FE: 40        .byte $40, $90, $4B, $41, $0D
- D 0 - I - 0x011713 04:9703: 41        .byte $41, $70, $4B, $42, $0E
- D 0 - I - 0x011718 04:9708: 42        .byte $42, $20, $4B, $43, $00
- D 0 - I - 0x01171D 04:970D: 42        .byte $42, $E0, $4B, $44, $00
- D 0 - I - 0x011722 04:9712: 43        .byte $43, $80, $4B, $45, $00
- D 0 - I - 0x011727 04:9717: 45        .byte $45, $30, $4B, $46, $00
- D 0 - I - 0x01172C 04:971C: 46        .byte $46, $60, $4B, $47, $0F
- D 0 - I - 0x011731 04:9721: 66        .byte $66, $F0, $00, $65, $00
- D 0 - I - 0x011736 04:9726: FF        .byte $FF

tbl_corridors_level4_map3_a7_h7:
- D 0 - I - 0x011737 04:9727: 60        .byte $60, $80, $00, $17, $80
- D 0 - I - 0x01173C 04:972C: 61        .byte $61, $80, $00, $11, $80
- D 0 - I - 0x011741 04:9731: 42        .byte $42, $20, $4B, $48, $00
- D 0 - I - 0x011746 04:9736: 42        .byte $42, $E0, $4B, $49, $0E
- D 0 - I - 0x01174B 04:973B: 43        .byte $43, $20, $4B, $4A, $00
- D 0 - I - 0x011750 04:9740: 43        .byte $43, $E0, $4B, $4B, $10
- D 0 - I - 0x011755 04:9745: 44        .byte $44, $80, $4B, $4C, $00
- D 0 - I - 0x01175A 04:974A: 45        .byte $45, $30, $4B, $4D, $00
- D 0 - I - 0x01175F 04:974F: 47        .byte $47, $20, $4B, $4E, $00
- D 0 - I - 0x011764 04:9754: 67        .byte $67, $60, $00, $66, $00
- D 0 - I - 0x011769 04:9759: FF        .byte $FF

tbl_corridors_level4_map3_h0_h7:
- D 0 - I - 0x01176A 04:975A: 60        .byte $60, $10, $00, $1A, $80
- D 0 - I - 0x01176F 04:975F: 40        .byte $40, $90, $4B, $4F, $11
- D 0 - I - 0x011774 04:9764: 41        .byte $41, $80, $4B, $50, $00
- D 0 - I - 0x011779 04:9769: 42        .byte $42, $20, $4B, $51, $00
- D 0 - I - 0x01177E 04:976E: 42        .byte $42, $E0, $4B, $52, $00
- D 0 - I - 0x011783 04:9773: 43        .byte $43, $20, $4B, $53, $00
- D 0 - I - 0x011788 04:9778: 43        .byte $43, $E0, $4B, $54, $00
- D 0 - I - 0x01178D 04:977D: 44        .byte $44, $30, $4B, $55, $00
- D 0 - I - 0x011792 04:9782: 45        .byte $45, $30, $4B, $56, $12
- D 0 - I - 0x011797 04:9787: 46        .byte $46, $60, $4B, $57, $0F
- D 0 - I - 0x01179C 04:978C: 66        .byte $66, $F0, $00, $63, $00
- D 0 - I - 0x0117A1 04:9791: FF        .byte $FF

tbl_corridors_level4_map4_a0_j0:
- D 0 - I - 0x0117A2 04:9792: 60        .byte $60, $10, $00, $23, $80
- D 0 - I - 0x0117A7 04:9797: 40        .byte $40, $90, $4B, $58, $00
- D 0 - I - 0x0117AC 04:979C: 43        .byte $43, $70, $4B, $59, $13
- D 0 - I - 0x0117B1 04:97A1: 44        .byte $44, $20, $4B, $5A, $00
- D 0 - I - 0x0117B6 04:97A6: 44        .byte $44, $E0, $4B, $5B, $00
- D 0 - I - 0x0117BB 04:97AB: 45        .byte $45, $70, $4B, $5C, $00
- D 0 - I - 0x0117C0 04:97B0: 46        .byte $46, $20, $4B, $5D, $00
- D 0 - I - 0x0117C5 04:97B5: 46        .byte $46, $E0, $4B, $5E, $00
- D 0 - I - 0x0117CA 04:97BA: 47        .byte $47, $80, $4B, $5F, $00
- D 0 - I - 0x0117CF 04:97BF: 48        .byte $48, $60, $4B, $60, $14
- D 0 - I - 0x0117D4 04:97C4: 68        .byte $68, $F0, $00, $68, $00
- D 0 - I - 0x0117D9 04:97C9: 49        .byte $49, $B0, $0B, $18, $80
- D - - - - 0x0117DE 04:97CE: FF        .byte $FF

tbl_corridors_level4_map4_a0_a9:
- D 0 - I - 0x0117DF 04:97CF: 60        .byte $60, $A0, $00, $1C, $80
- D 0 - I - 0x0117E4 04:97D4: 41        .byte $41, $80, $4B, $61, $10
- D 0 - I - 0x0117E9 04:97D9: 44        .byte $44, $80, $4B, $62, $00
- D 0 - I - 0x0117EE 04:97DE: 67        .byte $67, $80, $00, $74, $00
- D 0 - I - 0x0117F3 04:97E3: 48        .byte $48, $80, $4B, $63, $15
- D 0 - I - 0x0117F8 04:97E8: 69        .byte $69, $80, $00, $69, $00
- D - - - - 0x0117FD 04:97ED: FF        .byte $FF

tbl_corridors_level4_map4_a9_j9:
- D 0 - I - 0x0117FE 04:97EE: 60        .byte $60, $80, $00, $1F, $80
- D 0 - I - 0x011803 04:97F3: 41        .byte $41, $80, $4B, $64, $11
- D 0 - I - 0x011808 04:97F8: 62        .byte $62, $80, $00, $55, $80
- D 0 - I - 0x01180D 04:97FD: 43        .byte $43, $20, $4B, $65, $00
- D 0 - I - 0x011812 04:9802: 43        .byte $43, $E0, $4B, $66, $00
- D 0 - I - 0x011817 04:9807: 44        .byte $44, $80, $4B, $67, $00
- D 0 - I - 0x01181C 04:980C: 46        .byte $46, $80, $4B, $68, $00
- D 0 - I - 0x011821 04:9811: 48        .byte $48, $10, $4B, $69, $16
- D 0 - I - 0x011826 04:9816: 49        .byte $49, $20, $4B, $6A, $17
- D 0 - I - 0x01182B 04:981B: 69        .byte $69, $60, $00, $6A, $00
- D 0 - I - 0x011830 04:9820: FF        .byte $FF

tbl_corridors_level4_map4_j0_j9:
- D 0 - I - 0x011831 04:9821: 60        .byte $60, $80, $00, $21, $80
- D 0 - I - 0x011836 04:9826: 61        .byte $61, $80, $00, $2A, $80
- D 0 - I - 0x01183B 04:982B: 44        .byte $44, $30, $4B, $6B, $12
- D 0 - I - 0x011840 04:9830: 45        .byte $45, $20, $4B, $6C, $00
- D 0 - I - 0x011845 04:9835: 45        .byte $45, $E0, $4B, $6D, $00
- D 0 - I - 0x01184A 04:983A: 46        .byte $46, $80, $4B, $6E, $00
- D 0 - I - 0x01184F 04:983F: 47        .byte $47, $30, $4B, $6F, $00
- D 0 - I - 0x011854 04:9844: 48        .byte $48, $30, $4B, $70, $18
- D 0 - I - 0x011859 04:9849: 49        .byte $49, $20, $4B, $71, $00
- D 0 - I - 0x01185E 04:984E: 69        .byte $69, $60, $00, $67, $00
- D - - - - 0x011863 04:9853: FF        .byte $FF

tbl_corridors_level4_map4_b1_i1:
- D 0 - I - 0x011864 04:9854: 60        .byte $60, $A0, $00, $2D, $80
- D 0 - I - 0x011869 04:9859: 41        .byte $41, $20, $4B, $72, $13
- D 0 - I - 0x01186E 04:985E: 41        .byte $41, $E0, $4B, $73, $19
- D 0 - I - 0x011873 04:9863: 42        .byte $42, $80, $4B, $74, $00
- D 0 - I - 0x011878 04:9868: 66        .byte $66, $80, $00, $73, $00
- D 0 - I - 0x01187D 04:986D: 67        .byte $67, $80, $00, $6C, $00
- D 0 - I - 0x011882 04:9872: FF        .byte $FF

tbl_corridors_level4_map4_b1_b2:
- D 0 - I - 0x011883 04:9873: 60        .byte $60, $A0, $00, $25, $80
- D 0 - I - 0x011888 04:9878: 43        .byte $43, $80, $4B, $75, $00
- D 0 - I - 0x01188D 04:987D: 44        .byte $44, $30, $4B, $76, $00
- D 0 - I - 0x011892 04:9882: 66        .byte $66, $80, $00, $56, $80
- D 0 - I - 0x011897 04:9887: 67        .byte $67, $80, $00, $6D, $00
- D 0 - I - 0x01189C 04:988C: FF        .byte $FF

tbl_corridors_level4_map4_b8_e8:
- D 0 - I - 0x01189D 04:988D: 60        .byte $60, $80, $00, $27, $80
- D - - - - 0x0118A2 04:9892: 61        .byte $61, $80, $00, $54, $80
- D - - - - 0x0118A7 04:9897: FF        .byte $FF

tbl_corridors_level4_map4_g8_j8:
- D 0 - I - 0x0118A8 04:9898: 41        .byte $41, $80, $4B, $77, $1A
- D 0 - I - 0x0118AD 04:989D: 42        .byte $42, $20, $4B, $78, $1B
- D 0 - I - 0x0118B2 04:98A2: 42        .byte $42, $E0, $4B, $79, $00
- D 0 - I - 0x0118B7 04:98A7: 43        .byte $43, $60, $4B, $7A, $14
- D 0 - I - 0x0118BC 04:98AC: 63        .byte $63, $F0, $00, $6F, $00
- D 0 - I - 0x0118C1 04:98B1: 64        .byte $64, $F0, $00, $22, $80
- D - - - - 0x0118C6 04:98B6: FF        .byte $FF

tbl_corridors_level4_map4_i6_i8:
- D 0 - I - 0x0118C7 04:98B7: 60        .byte $60, $80, $00, $29, $80
- D 0 - I - 0x0118CC 04:98BC: 61        .byte $61, $80, $00, $5E, $80
- D 0 - I - 0x0118D1 04:98C1: FF        .byte $FF

tbl_corridors_level4_map4_i1_i3:
- D 0 - I - 0x0118D2 04:98C2: 41        .byte $41, $80, $4B, $7B, $15
- D 0 - I - 0x0118D7 04:98C7: 62        .byte $62, $80, $00, $71, $00
- D 0 - I - 0x0118DC 04:98CC: 63        .byte $63, $80, $00, $6B, $00
- D 0 - I - 0x0118E1 04:98D1: FF        .byte $FF

tbl_corridors_level4_map4_g2_i2:
- D 0 - I - 0x0118E2 04:98D2: 60        .byte $60, $10, $00, $2C, $80
- D 0 - I - 0x0118E7 04:98D7: 61        .byte $61, $10, $00, $60, $80
- D 0 - I - 0x0118EC 04:98DC: 41        .byte $41, $90, $4B, $7C, $1C
- D - - - - 0x0118F1 04:98E1: FF        .byte $FF

tbl_corridors_level4_map4_c2_e2:
- D 0 - I - 0x0118F2 04:98E2: 61        .byte $61, $80, $00, $77, $00
- D 0 - I - 0x0118F7 04:98E7: 62        .byte $62, $80, $00, $52, $80
- D 0 - I - 0x0118FC 04:98EC: FF        .byte $FF

tbl_corridors_level4_map4_c1_c9:
- D 0 - I - 0x0118FD 04:98ED: 60        .byte $60, $10, $00, $24, $80
- D 0 - I - 0x011902 04:98F2: 61        .byte $61, $10, $00, $50, $80
- D 0 - I - 0x011907 04:98F7: 41        .byte $41, $90, $4B, $7D, $16
- D 0 - I - 0x01190C 04:98FC: 42        .byte $42, $30, $4B, $7E, $00
- D 0 - I - 0x011911 04:9901: 43        .byte $43, $20, $4B, $7F, $1D
- D 0 - I - 0x011916 04:9906: 43        .byte $43, $E0, $4B, $80, $00
- D 0 - I - 0x01191B 04:990B: 44        .byte $44, $30, $4B, $81, $00
- D 0 - I - 0x011920 04:9910: 45        .byte $45, $60, $4B, $82, $1E
- D 0 - I - 0x011925 04:9915: 65        .byte $65, $F0, $00, $57, $80
- D 0 - I - 0x01192A 04:991A: 66        .byte $66, $F0, $00, $28, $80
- D - - - - 0x01192F 04:991F: 67        .byte $67, $F0, $00, $20, $80
- D - - - - 0x011934 04:9924: FF        .byte $FF

tbl_corridors_level4_map4_a7_i7:
- D 0 - I - 0x011935 04:9925: 60        .byte $60, $10, $00, $1E, $80
- D 0 - I - 0x01193A 04:992A: 61        .byte $61, $10, $00, $26, $80
- D 0 - I - 0x01193F 04:992F: 62        .byte $62, $10, $00, $53, $80
- D 0 - I - 0x011944 04:9934: 42        .byte $42, $90, $4B, $83, $17
- D 0 - I - 0x011949 04:9939: 45        .byte $45, $80, $4B, $84, $00
- D 0 - I - 0x01194E 04:993E: 46        .byte $46, $60, $4B, $85, $00
- D 0 - I - 0x011953 04:9943: 66        .byte $66, $F0, $00, $75, $00
- D 0 - I - 0x011958 04:9948: 67        .byte $67, $F0, $00, $2B, $80
- D - - - - 0x01195D 04:994D: FF        .byte $FF

tbl_corridors_level4_map4_h2_h7:
- D 0 - I - 0x01195E 04:994E: 60        .byte $60, $80, $00, $58, $80
- D 0 - I - 0x011963 04:9953: 61        .byte $61, $80, $00, $66, $80
- D 0 - I - 0x011968 04:9958: 42        .byte $42, $30, $4B, $86, $00
- D 0 - I - 0x01196D 04:995D: 43        .byte $43, $80, $4B, $87, $1F
- D 0 - I - 0x011972 04:9962: 44        .byte $44, $30, $4B, $88, $00
- D 0 - I - 0x011977 04:9967: 45        .byte $45, $20, $4B, $89, $18
- D - - - - 0x01197C 04:996C: 65        .byte $65, $60, $00, $2E, $80
- D - - - - 0x011981 04:9971: FF        .byte $FF

tbl_corridors_level4_map4_d3_g3:
- D 0 - I - 0x011982 04:9972: 60        .byte $60, $A0, $00, $68, $80
- D 0 - I - 0x011987 04:9977: 62        .byte $62, $80, $00, $7B, $00
- D - - - - 0x01198C 04:997C: 63        .byte $63, $80, $00, $63, $80
- D - - - - 0x011991 04:9981: FF        .byte $FF

tbl_corridors_level4_map4_d2_d7:
- D 0 - I - 0x011992 04:9982: 60        .byte $60, $10, $00, $2F, $80
- D 0 - I - 0x011997 04:9987: 61        .byte $61, $10, $00, $62, $80
- D 0 - I - 0x01199C 04:998C: 41        .byte $41, $90, $4B, $8A, $00
- D 0 - I - 0x0119A1 04:9991: 42        .byte $42, $20, $4B, $8B, $19
- D 0 - I - 0x0119A6 04:9996: 42        .byte $42, $E0, $4B, $8C, $20
- D 0 - I - 0x0119AB 04:999B: 43        .byte $43, $60, $4B, $8D, $00
- D 0 - I - 0x0119B0 04:99A0: 63        .byte $63, $F0, $00, $78, $00
- D - - - - 0x0119B5 04:99A5: FF        .byte $FF

tbl_corridors_level4_map4_d6_h6:
- D 0 - I - 0x0119B6 04:99A6: 60        .byte $60, $10, $00, $64, $80
- D 0 - I - 0x0119BB 04:99AB: 40        .byte $40, $90, $4B, $8E, $00
- D 0 - I - 0x0119C0 04:99B0: 42        .byte $42, $60, $4B, $8F, $1A
- D 0 - I - 0x0119C5 04:99B5: 62        .byte $62, $F0, $00, $79, $00
- D 0 - I - 0x0119CA 04:99BA: 63        .byte $63, $F0, $00, $5F, $80
- D - - - - 0x0119CF 04:99BF: FF        .byte $FF

tbl_corridors_level4_map4_g3_g6:
- D 0 - I - 0x0119D0 04:99C0: 60        .byte $60, $A0, $00, $65, $80
- D 0 - I - 0x0119D5 04:99C5: 41        .byte $41, $80, $4B, $90, $1B
- D 0 - I - 0x0119DA 04:99CA: 62        .byte $62, $80, $00, $7A, $00
- D 0 - I - 0x0119DF 04:99CF: 63        .byte $63, $80, $00, $76, $00
- D - - - - 0x0119E4 04:99D4: FF        .byte $FF

tbl_corridors_level4_map4_e4_g4:
- D 0 - I - 0x0119E5 04:99D5: 60        .byte $60, $10, $00, $67, $80
- D 0 - I - 0x0119EA 04:99DA: 61        .byte $61, $10, $00, $6E, $80
- D 0 - I - 0x0119EF 04:99DF: 61        .byte $61, $F0, $00, $6B, $80
- D 0 - I - 0x0119F4 04:99E4: FF        .byte $FF

tbl_corridors_level4_map4_e5_e5:
- D 0 - I - 0x0119F5 04:99E5: 60        .byte $60, $10, $00, $61, $80
- D 0 - I - 0x0119FA 04:99EA: 61        .byte $61, $10, $00, $6A, $80
- D 0 - I - 0x0119FF 04:99EF: 61        .byte $61, $F0, $00, $7C, $00
- D 0 - I - 0x011A04 04:99F4: FF        .byte $FF

tbl_corridors_level4_map4_e5_f5:
- D 0 - I - 0x011A05 04:99F5: 60        .byte $60, $10, $00, $6C, $80
- D 0 - I - 0x011A0A 04:99FA: 40        .byte $40, $80, $4B, $91, $00
- D 0 - I - 0x011A0F 04:99FF: 60        .byte $60, $F0, $00, $7D, $00
- D 0 - I - 0x011A14 04:9A04: FF        .byte $FF

tbl_corridors_level4_map4_f4_f5:
- D 0 - I - 0x011A15 04:9A05: 60        .byte $60, $10, $00, $6D, $80
- D 0 - I - 0x011A1A 04:9A0A: 60        .byte $60, $F0, $00, $69, $80
- D - - - - 0x011A1F 04:9A0F: FF        .byte $FF

tbl_corridors_unique_room_1:
- D 0 - I - 0x011A20 04:9A10: 40        .byte $40, $18, $07, $FF, $00
- D 0 - I - 0x011A25 04:9A15: FF        .byte $FF

tbl_corridors_unique_room_2_1:
- D 0 - I - 0x011A26 04:9A16: 40        .byte $40, $20, $03, $FF, $00
- D 0 - I - 0x011A2B 04:9A1B: FF        .byte $FF

tbl_corridors_unique_room_2_2:
- D 0 - I - 0x011A2C 04:9A1C: 40        .byte $40, $28, $04, $FF, $00
- D 0 - I - 0x011A31 04:9A21: FF        .byte $FF

tbl_corridors_unique_room_3:
- D 0 - I - 0x011A32 04:9A22: 40        .byte $40, $10, $01, $FF, $00
- D 0 - I - 0x011A37 04:9A27: FF        .byte $FF

tbl_corridors_unique_room_4:
- D 0 - I - 0x011A38 04:9A28: 40        .byte $40, $20, $0B, $FF, $00
- D 0 - I - 0x011A3D 04:9A2D: FF        .byte $FF

; 1 byte - X-position (low value)
; 2 byte - Y-position (high value)
; 3 byte - the display room type {0x00 - 0x0F}
; 4 byte - the room number
; 5 byte - the offset in tbl_ptr_corridors for the corridor with the wall (1 of 5 bytes)
tbl_destructible_walls_level1_2:
- D 0 - I - 0x011A3E 04:9A2E: 80        .byte $80, $02, $08, $10, $0F
- D 0 - I - 0x011A43 04:9A33: FF        .byte $FF

tbl_destructible_walls_level1_3:
- D 0 - I - 0x011A44 04:9A34: 80        .byte $80, $01, $08, $13, $05
- D 0 - I - 0x011A49 04:9A39: 80        .byte $80, $03, $08, $17, $19
- D 0 - I - 0x011A4E 04:9A3E: 80        .byte $80, $05, $08, $1A, $28
- D - - - - 0x011A53 04:9A43: FF        .byte $FF

tbl_destructible_walls_level2_d1_d3:
- D 0 - I - 0x011A54 04:9A44: 48        .byte $48, $06, $09, $0C, $3C
- D - - - - 0x011A59 04:9A49: FF        .byte $FF

tbl_destructible_walls_level2_d2:
- D 0 - I - 0x011A5A 04:9A4A: 48        .byte $48, $01, $09, $0F, $0A
- D 0 - I - 0x011A5F 04:9A4F: 48        .byte $48, $05, $09, $18, $37
- D 0 - I - 0x011A64 04:9A54: 48        .byte $48, $07, $09, $1D, $50
- D - - - - 0x011A69 04:9A59: FF        .byte $FF

tbl_destructible_walls_level2_d4_d5:
- D 0 - I - 0x011A6A 04:9A5A: 48        .byte $48, $04, $09, $26, $28
- D - - - - 0x011A6F 04:9A5F: FF        .byte $FF

tbl_destructible_walls_level2_d6_d8:
- D 0 - I - 0x011A70 04:9A60: 28        .byte $28, $06, $05, $35, $32
- D - - - - 0x011A75 04:9A65: FF        .byte $FF

tbl_destructible_walls_level2_d7:
- D 0 - I - 0x011A76 04:9A66: 28        .byte $28, $02, $05, $3A, $14
- D 0 - I - 0x011A7B 04:9A6B: 28        .byte $28, $05, $05, $41, $37
- D - - - - 0x011A80 04:9A70: FF        .byte $FF

tbl_destructible_walls_level2_d9_d10:
- D 0 - I - 0x011A81 04:9A71: 28        .byte $28, $04, $05, $4C, $23
- D - - - - 0x011A86 04:9A76: FF        .byte $FF

tbl_destructible_walls_level2_d11_d13:
- D 0 - I - 0x011A87 04:9A77: 28        .byte $28, $02, $05, $54, $14
- D - - - - 0x011A8C 04:9A7C: FF        .byte $FF

tbl_destructible_walls_level2_d12:
- D 0 - I - 0x011A8D 04:9A7D: 28        .byte $28, $01, $05, $5E, $0A
- D 0 - I - 0x011A92 04:9A82: 28        .byte $28, $03, $05, $63, $23
- D 0 - I - 0x011A97 04:9A87: 28        .byte $28, $06, $05, $6A, $46
- D 0 - I - 0x011A9C 04:9A8C: FF        .byte $FF

tbl_destructible_walls_level3_1:
- D 0 - I - 0x011A9D 04:9A8D: E0        .byte $E0, $06, $0A, $09, $28
- D - - - - 0x011AA2 04:9A92: FF        .byte $FF

tbl_destructible_walls_level3_2:
- D 0 - I - 0x011AA3 04:9A93: E0        .byte $E0, $03, $0A, $13, $23
- D 0 - I - 0x011AA8 04:9A98: 20        .byte $20, $07, $0A, $0E, $3C
- D - - - - 0x011AAD 04:9A9D: FF        .byte $FF

tbl_destructible_walls_level3_3:
- D 0 - I - 0x011AAE 04:9A9E: E0        .byte $E0, $01, $0A, $1D, $14
- D 0 - I - 0x011AB3 04:9AA3: FF        .byte $FF

tbl_destructible_walls_level3_4:
- D 0 - I - 0x011AB4 04:9AA4: E0        .byte $E0, $06, $0A, $2A, $3C
- D 0 - I - 0x011AB9 04:9AA9: 20        .byte $20, $07, $0A, $29, $41
- D - - - - 0x011ABE 04:9AAE: FF        .byte $FF

; 1 byte (1 row) - 0x00 - left to right direction, 0x80 - right to left direction
; 1 byte (next row) - posY
; 2 byte - LowPosX
; 3 byte - HighPosX
loc_checkpoint_after_death_level_1_0:
- D 0 - I - 0x011ABF 04:9AAF: 00        .byte $00, $28, $02
- D - - - - 0x011AC2 04:9AB2: 7F        .byte $7F, $38, $04
- D - - - - 0x011AC5 04:9AB5: 7F        .byte $7F, $38, $06
- D 0 - I - 0x011AC8 04:9AB8: BF        .byte $BF, $28, $08
- D - - - - 0x011ACB 04:9ABB: BF        .byte $BF, $38, $0A
- D 0 - I - 0x011ACE 04:9ABE: BF        .byte $BF, $30, $0C
- D 0 - I - 0x011AD1 04:9AC1: AF        .byte $AF, $38, $0E
- D - - - - 0x011AD4 04:9AC4: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level_1_1:
- D 0 - I - 0x011AD7 04:9AC7: 00        .byte $00, $38, $02
- D - - - - 0x011ADA 04:9ACA: BF        .byte $BF, $38, $04
- D - - - - 0x011ADD 04:9ACD: BF        .byte $BF, $28, $06
- D - - - - 0x011AE0 04:9AD0: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level_1_2:
- D - - - - 0x011AE3 04:9AD3: 80        .byte $80, $D8, $06
- D - - - - 0x011AE6 04:9AD6: BF        .byte $BF, $C8, $04
- D - - - - 0x011AE9 04:9AD9: BF        .byte $BF, $D0, $02
- D - - - - 0x011AEC 04:9ADC: BF        .byte $BF, $00, $00

loc_checkpoint_after_death_level_1_3:
- D 0 - I - 0x011AEF 04:9ADF: 00        .byte $00, $38, $02
- D 0 - I - 0x011AF2 04:9AE2: BF        .byte $BF, $38, $04
- D 0 - I - 0x011AF5 04:9AE5: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_outside:
- D 0 - I - 0x011AF8 04:9AE8: 00        .byte $00, $38, $02
- D - - - - 0x011AFB 04:9AEB: BF        .byte $BF, $38, $04
- D - - - - 0x011AFE 04:9AEE: BF        .byte $BF, $38, $06
- D 0 - I - 0x011B01 04:9AF1: BF        .byte $BF, $38, $08
- D - - - - 0x011B04 04:9AF4: BF        .byte $BF, $38, $0A
- D - - - - 0x011B07 04:9AF7: BF        .byte $BF, $38, $0C
- D - - - - 0x011B0A 04:9AFA: BF        .byte $BF, $38, $0E
- D - - - - 0x011B0D 04:9AFD: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d1_d3:
- D - - - - 0x011B10 04:9B00: 00        .byte $00, $80, $02
- D - - - - 0x011B13 04:9B03: BF        .byte $BF, $80, $04
- D - - - - 0x011B16 04:9B06: BF        .byte $BF, $80, $06
- D - - - - 0x011B19 04:9B09: BF        .byte $BF, $50, $07
- D - - - - 0x011B1C 04:9B0C: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d2:
- D - - - - 0x011B1F 04:9B0F: 00        .byte $00, $80, $02
- D - - - - 0x011B22 04:9B12: BF        .byte $BF, $38, $04
- D - - - - 0x011B25 04:9B15: BF        .byte $BF, $38, $06
- D - - - - 0x011B28 04:9B18: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d4_d5:
- D 0 - I - 0x011B2B 04:9B1B: 00        .byte $00, $78, $02
- D - - - - 0x011B2E 04:9B1E: BF        .byte $BF, $88, $04
- D - - - - 0x011B31 04:9B21: BF        .byte $BF, $78, $06
- D - - - - 0x011B34 04:9B24: BF        .byte $BF, $50, $07
- D - - - - 0x011B37 04:9B27: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d6_d8:
loc_checkpoint_after_death_level2_d9_d10:
loc_checkpoint_after_death_level2_d11_d13:
- D 0 - I - 0x011B3A 04:9B2A: 00        .byte $00, $80, $02
- D 0 - I - 0x011B3D 04:9B2D: BF        .byte $BF, $80, $04
- D - - - - 0x011B40 04:9B30: BF        .byte $BF, $80, $06
- D - - - - 0x011B43 04:9B33: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d7:
- D 0 - I - 0x011B46 04:9B36: 00        .byte $00, $38, $02
- D - - - - 0x011B49 04:9B39: BF        .byte $BF, $38, $04
- D - - - - 0x011B4C 04:9B3C: A7        .byte $A7, $38, $06
- D - - - - 0x011B4F 04:9B3F: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level2_d12:
- D 0 - I - 0x011B52 04:9B42: 00        .byte $00, $48, $02
- D - - - - 0x011B55 04:9B45: BF        .byte $BF, $38, $04
- D - - - - 0x011B58 04:9B48: BF        .byte $BF, $38, $06
- D - - - - 0x011B5B 04:9B4B: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level3_0:
- D - - - - 0x011B5E 04:9B4E: 00        .byte $00, $48, $04
- D - - - - 0x011B61 04:9B51: BF        .byte $BF, $40, $06
- D - - - - 0x011B64 04:9B54: 9F        .byte $9F, $48, $08
- D - - - - 0x011B67 04:9B57: BF        .byte $BF, $38, $0C
- D - - - - 0x011B6A 04:9B5A: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level3_1:
- D - - - - 0x011B6D 04:9B5D: 00        .byte $00, $38, $04
- D - - - - 0x011B70 04:9B60: BF        .byte $BF, $FF, $FF

loc_checkpoint_after_death_level3_2:
- D 0 - I - 0x011B73 04:9B63: 80        .byte $80, $C8, $03
- D - - - - 0x011B76 04:9B66: BF        .byte $BF, $00, $00

loc_checkpoint_after_death_level3_3:
- D - - - - 0x011B79 04:9B69: 00        .byte $00, $38, $04
- D - - - - 0x011B7C 04:9B6C: A7        .byte $A7, $FF, $FF

loc_checkpoint_after_death_level3_4:
- D - - - - 0x011B7F 04:9B6F: 80        .byte $80, $D0, $04
- D - - - - 0x011B82 04:9B72: BF        .byte $BF, $00, $00

loc_checkpoint_after_death_level_racing:
- D 0 - I - 0x011B85 04:9B75: 00        .byte $00, $40, $05
- D - - - - 0x011B88 04:9B78: C7        .byte $C7, $40, $0A
- D - - - - 0x011B8B 04:9B7B: C7        .byte $C7, $30, $0F
- D - - - - 0x011B8E 04:9B7E: C7        .byte $C7, $30, $12
- D - - - - 0x011B91 04:9B81: C7        .byte $C7, $30, $17
- D - - - - 0x011B94 04:9B84: C7        .byte $C7, $30, $1D
- D - - - - 0x011B97 04:9B87: C7        .byte $C7, $FF, $FF

loc_checkpoint_after_death_one:
- D 0 - I - 0x011B9A 04:9B8A: 00        .byte $00, $FF, $FF

; 1 byte - vPpuBufferCount
; 2 byte - vPpuBufferInitValue
loc_closed_room_type1:
- D 0 - I - 0x011B9D 04:9B8D: 0A        .byte $0A, $05
- D 0 - I - 0x011B9F 04:9B8F: 00        .byte $00, $00, $00, $00, $00, $F8, $F9, $FA, $F9, $F9

loc_open_room_type1:
- D 0 - I - 0x011BA9 04:9B99: 0A        .byte $0A, $05
- D 0 - I - 0x011BAB 04:9B9B: C3        .byte $C3, $C3, $C5, $C3, $C3, $C4, $C4, $C4, $C4, $C4

loc_closed_room_type2:
- D 0 - I - 0x011BB5 04:9BA5: 0C        .byte $0C, $06
- D 0 - I - 0x011BB7 04:9BA7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

loc_open_room_type2:
- D 0 - I - 0x011BC3 04:9BB3: 0C        .byte $0C, $06
- D 0 - I - 0x011BC5 04:9BB5: 84        .byte $84, $85, $85, $85, $85, $85, $86, $87, $87, $87, $87, $87

loc_closed_room_type3:
- D 0 - I - 0x011BD1 04:9BC1: 14        .byte $14, $05
- D 0 - I - 0x011BD3 04:9BC3: 92        .byte $92, $92, $93, $92, $92, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $90
- D 0 - I - 0x011BE3 04:9BD3: 90        .byte $90, $91, $90, $90   ; 

loc_open_room_type3:
- D 0 - I - 0x011BE7 04:9BD7: 14        .byte $14, $05
- D 0 - I - 0x011BE9 04:9BD9: 90        .byte $90, $90, $90, $90, $90, $92, $92, $93, $92, $92, $90, $90, $91, $90, $90, $92
- D 0 - I - 0x011BF9 04:9BE9: 92        .byte $92, $92, $92, $92

loc_closed_room_type4:
- D 0 - I - 0x011BFD 04:9BED: 0A        .byte $0A, $05
- D 0 - I - 0x011BFF 04:9BEF: 00        .byte $00, $00, $00, $00, $00, $EE, $EF, $EF, $EF, $F0

loc_open_room_type4:
- D 0 - I - 0x011C09 04:9BF9: 0A        .byte $0A, $05
- D 0 - I - 0x011C0B 04:9BFB: C0        .byte $C0, $C1, $CC, $C4, $C5, $C2, $C3, $C3, $C6, $C7

loc_closed_room_type5:
- D 0 - I - 0x011C15 04:9C05: 08        .byte $08, $04
- D 0 - I - 0x011C17 04:9C07: 00        .byte $00, $00, $00, $00, $F5, $F5, $00, $F5

loc_open_room_type5:
- D - - - - 0x011C1F 04:9C0F: 08        .byte $08, $04
- D - - - - 0x011C21 04:9C11: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7

loc_closed_room_type6:
- D 0 - I - 0x011C29 04:9C19: 0A        .byte $0A, $05
- D 0 - I - 0x011C2B 04:9C1B: EC        .byte $EC, $ED, $F0, $ED, $F1, $EE, $EF, $F2, $EF, $F3

loc_open_room_type6:
- D 0 - I - 0x011C35 04:9C25: 0A        .byte $0A, $05
- D 0 - I - 0x011C37 04:9C27: E8        .byte $E8, $E9, $EA, $E8, $E9, $E8, $E9, $EB, $E8, $E9

loc_closed_room_type7:
- D 0 - I - 0x011C41 04:9C31: 18        .byte $18, $06
- D 0 - I - 0x011C43 04:9C33: A1        .byte $A1, $A5, $A5, $A7, $A5, $A5, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D 0 - I - 0x011C53 04:9C43: 00        .byte $00, $00, $AB, $A5, $A5, $A7, $A5, $A5

loc_open_room_type7:
- D 0 - I - 0x011C5B 04:9C4B: 18        .byte $18, $06
- D 0 - I - 0x011C5D 04:9C4D: 0E        .byte $0E, $12, $12, $15, $10, $15, $0F, $13, $13, $16, $11, $14, $0E, $12, $12, $17
- D 0 - I - 0x011C6D 04:9C5D: 10        .byte $10, $15, $0F, $13, $13, $18, $11, $14

loc_closed_room_type8:
- D 0 - I - 0x011C75 04:9C65: 08        .byte $08, $04
- D 0 - I - 0x011C77 04:9C67: 8E        .byte $8E, $8E, $8E, $00, $8F, $8F, $8F, $00

loc_open_room_type8:
- D - - - - 0x011C7F 04:9C6F: 08        .byte $08, $04
- D - - - - 0x011C81 04:9C71: 8C        .byte $8C, $8C, $8C, $8C, $8C, $8C, $8C, $8C

loc_closed_room_type9:
- D 0 - I - 0x011C89 04:9C79: 08        .byte $08, $04
- D 0 - I - 0x011C8B 04:9C7B: 00        .byte $00, $00, $00, $00, $F5, $F5, $00, $00

loc_open_room_type9:
- D - - - - 0x011C93 04:9C83: 08        .byte $08, $04
- D - - - - 0x011C95 04:9C85: F7        .byte $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7

loc_closed_room_type10:
- D 0 - I - 0x011C9D 04:9C8D: 08        .byte $08, $04
- D 0 - I - 0x011C9F 04:9C8F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00

loc_open_room_type10:
- D - - - - 0x011CA7 04:9C97: 08        .byte $08, $04
- D - - - - 0x011CA9 04:9C99: FC        .byte $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC

loc_closed_room_type11:
- D 0 - I - 0x011CB1 04:9CA1: 14        .byte $14, $05
- D 0 - I - 0x011CB3 04:9CA3: AE        .byte $AE, $CD, $B1, $CD, $B1, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $AC
- D 0 - I - 0x011CC3 04:9CB3: AD        .byte $AD, $B0, $AD, $B0

loc_open_room_type11:
- D 0 - I - 0x011CC7 04:9CB7: 14        .byte $14, $05
- D 0 - I - 0x011CC9 04:9CB9: D0        .byte $D0, $CE, $CF, $CE, $CF, $AE, $CD, $B1, $CD, $B1, $AC, $AD, $B0, $AD, $B0, $AE
- D 0 - I - 0x011CD9 04:9CC9: CD        .byte $CD, $B1, $CD, $B1

tbl_enemy_palette:
- D - - - - 0x011CDD 04:9CCD: 00        .byte $00, $00, $00   ; 0x00, Nobody
- D 0 - I - 0x011CE0 04:9CD0: 20        .byte $20, $17, $0F
- D 0 - I - 0x011CE3 04:9CD3: 10        .byte $10, $05, $0F
- D 0 - I - 0x011CE6 04:9CD6: 10        .byte $10, $05, $0F
- D 0 - I - 0x011CE9 04:9CD9: 00        .byte $00, $11, $0F
- D 0 - I - 0x011CEC 04:9CDC: 20        .byte $20, $29, $00
- D 0 - I - 0x011CEF 04:9CDF: 20        .byte $20, $29, $0F
- D 0 - I - 0x011CF2 04:9CE2: 37        .byte $37, $06, $0F
- D 0 - I - 0x011CF5 04:9CE5: 36        .byte $36, $0A, $0F
- D 0 - I - 0x011CF8 04:9CE8: 20        .byte $20, $36, $0F
- D 0 - I - 0x011CFB 04:9CEB: 16        .byte $16, $07, $0F
- D 0 - I - 0x011CFE 04:9CEE: 10        .byte $10, $17, $0F
- D 0 - I - 0x011D01 04:9CF1: 16        .byte $16, $07, $0F
- D 0 - I - 0x011D04 04:9CF4: 10        .byte $10, $00, $0F
- D 0 - I - 0x011D07 04:9CF7: 16        .byte $16, $12, $0F
- D 0 - I - 0x011D0A 04:9CFA: 10        .byte $10, $16, $07
- D 0 - I - 0x011D0D 04:9CFD: 10        .byte $10, $37, $0F   ; 0x10, Nun
- D 0 - I - 0x011D10 04:9D00: 20        .byte $20, $16, $0F
- D 0 - I - 0x011D13 04:9D03: 20        .byte $20, $38, $17
- D 0 - I - 0x011D16 04:9D06: 38        .byte $38, $0F, $17
- D 0 - I - 0x011D19 04:9D09: 37        .byte $37, $15, $0F
- D 0 - I - 0x011D1C 04:9D0C: 11        .byte $11, $0F, $14
- D 0 - I - 0x011D1F 04:9D0F: 0F        .byte $0F, $17, $10
- D 0 - I - 0x011D22 04:9D12: 36        .byte $36, $11, $0F
- D 0 - I - 0x011D25 04:9D15: 36        .byte $36, $11, $0F
- D 0 - I - 0x011D28 04:9D18: 36        .byte $36, $14, $0F
- D 0 - I - 0x011D2B 04:9D1B: 36        .byte $36, $0F, $1B
- D 0 - I - 0x011D2E 04:9D1E: 20        .byte $20, $16, $0F
- D 0 - I - 0x011D31 04:9D21: 20        .byte $20, $38, $0F
- D 0 - I - 0x011D34 04:9D24: 27        .byte $27, $17, $0F
- D 0 - I - 0x011D37 04:9D27: 10        .byte $10, $00, $0F
- D 0 - I - 0x011D3A 04:9D2A: 23        .byte $23, $18, $0F
- D 0 - I - 0x011D3D 04:9D2D: 38        .byte $38, $12, $0F   ; 0x20
- D 0 - I - 0x011D40 04:9D30: 20        .byte $20, $10, $07
- D 0 - I - 0x011D43 04:9D33: 10        .byte $10, $26, $0C
- D 0 - I - 0x011D46 04:9D36: 20        .byte $20, $17, $0F
- D 0 - I - 0x011D49 04:9D39: 20        .byte $20, $0F, $0F
- D 0 - I - 0x011D4C 04:9D3C: 30        .byte $30, $25, $0F
- D 0 - I - 0x011D4F 04:9D3F: 20        .byte $20, $08, $0F
- D 0 - I - 0x011D52 04:9D42: 36        .byte $36, $07, $0F
- D 0 - I - 0x011D55 04:9D45: 37        .byte $37, $27, $0F
- D 0 - I - 0x011D58 04:9D48: 26        .byte $26, $12, $05
- D 0 - I - 0x011D5B 04:9D4B: 36        .byte $36, $15, $0F
- D 0 - I - 0x011D5E 04:9D4E: 22        .byte $22, $08, $17
- D 0 - I - 0x011D61 04:9D51: 26        .byte $26, $17, $0F
- D 0 - I - 0x011D64 04:9D54: 26        .byte $26, $2B, $06
- D 0 - I - 0x011D67 04:9D57: 20        .byte $20, $27, $17
- D 0 - I - 0x011D6A 04:9D5A: 20        .byte $20, $16, $0F
- D 0 - I - 0x011D6D 04:9D5D: 10        .byte $10, $00, $07   ; 0x30
- D 0 - I - 0x011D70 04:9D60: 10        .byte $10, $07, $00
- D 0 - I - 0x011D73 04:9D63: 20        .byte $20, $23, $0F
- D 0 - I - 0x011D76 04:9D66: 20        .byte $20, $16, $0F
- D 0 - I - 0x011D79 04:9D69: 3B        .byte $3B, $27, $09
- D 0 - I - 0x011D7C 04:9D6C: 2C        .byte $2C, $27, $0F
- D 0 - I - 0x011D7F 04:9D6F: 37        .byte $37, $25, $0F
- D 0 - I - 0x011D82 04:9D72: 16        .byte $16, $36, $09
- D 0 - I - 0x011D85 04:9D75: 2C        .byte $2C, $27, $0C
- D 0 - I - 0x011D88 04:9D78: 10        .byte $10, $15, $0F   ; 0x39, Sensor

loc_main_menu_gunshot_f1:
- D 0 - I - 0x011D8B 04:9D7B: 03        .byte $03
- D 0 - I - 0x011D8C 04:9D7C: 20        .dbyt $20EE   ; PPU Address
- D 0 - I - 0x011D8E 04:9D7E: 3F        .byte $3F, $38, $3A
- D 0 - I - 0x011D91 04:9D81: 04        .byte $04
- D 0 - I - 0x011D92 04:9D82: 21        .dbyt $210D   ; PPU Address
- D 0 - I - 0x011D94 04:9D84: 3C        .byte $3C, $3E, $4C, $4E
- D 0 - I - 0x011D98 04:9D88: 04        .byte $04
- D 0 - I - 0x011D99 04:9D89: 21        .dbyt $212D   ; PPU Address
- D 0 - I - 0x011D9B 04:9D8B: 3D        .byte $3D, $4B, $4D, $4F
- D 0 - I - 0x011D9F 04:9D8F: 04        .byte $04
- D 0 - I - 0x011DA0 04:9D90: 21        .dbyt $214D   ; PPU Address
- D 0 - I - 0x011DA2 04:9D92: 68        .byte $68, $6A, $6C, $6E
- D 0 - I - 0x011DA6 04:9D96: 01        .byte $01
- D 0 - I - 0x011DA7 04:9D97: 21        .dbyt $216D   ; PPU Address
- D 0 - I - 0x011DA9 04:9D99: 69        .byte $69
- D 0 - I - 0x011DAA 04:9D9A: FF        .byte $FF

loc_main_menu_gunshot_f2:
- D 0 - I - 0x011DAB 04:9D9B: 01        .byte $01
- D 0 - I - 0x011DAC 04:9D9C: 20        .dbyt $20CE   ; PPU Address
- D 0 - I - 0x011DAE 04:9D9E: 56        .byte $56
- D 0 - I - 0x011DAF 04:9D9F: 07        .byte $07
- D 0 - I - 0x011DB0 04:9DA0: 20        .dbyt $20EB   ; PPU Address
- D 0 - I - 0x011DB2 04:9DA2: 51        .byte $51, $53, $00, $57, $38, $7D, $7F
- D 0 - I - 0x011DB9 04:9DA9: 09        .byte $09
- D 0 - I - 0x011DBA 04:9DAA: 21        .dbyt $2109   ; PPU Address
- D 0 - I - 0x011DBC 04:9DAC: 40        .byte $40, $42, $44, $46, $48, $4A, $4C, $4E, $7E
- D 0 - I - 0x011DC5 04:9DB5: 05        .byte $05
- D 0 - I - 0x011DC6 04:9DB6: 21        .dbyt $2129   ; PPU Address
- D 0 - I - 0x011DC8 04:9DB8: 41        .byte $41, $43, $45, $47, $49
- D 0 - I - 0x011DCD 04:9DBD: FF        .byte $FF

loc_main_menu_gunshot_f3:
- D 0 - I - 0x011DCE 04:9DBE: 01        .byte $01
- D 0 - I - 0x011DCF 04:9DBF: 21        .dbyt $214C   ; PPU Address
- D 0 - I - 0x011DD1 04:9DC1: 66        .byte $66
- D 0 - I - 0x011DD2 04:9DC2: 06        .byte $06
- D 0 - I - 0x011DD3 04:9DC3: 21        .dbyt $216B   ; PPU Address
- D 0 - I - 0x011DD5 04:9DC5: 65        .byte $65, $67, $69, $6B, $00, $6F
- D 0 - I - 0x011DDB 04:9DCB: 05        .byte $05
- D 0 - I - 0x011DDC 04:9DCC: 21        .dbyt $218C   ; PPU Address
- D 0 - I - 0x011DDE 04:9DCE: 72        .byte $72, $F9, $76, $78, $7A
- D 0 - I - 0x011DE3 04:9DD3: 02        .byte $02
- D 0 - I - 0x011DE4 04:9DD4: 21        .dbyt $21AE   ; PPU Address
- D 0 - I - 0x011DE6 04:9DD6: 77        .byte $77, $79
- D 0 - I - 0x011DE8 04:9DD8: FF        .byte $FF

loc_main_menu_gunshot_f4:
- D 0 - I - 0x011DE9 04:9DD9: 01        .byte $01
- D 0 - I - 0x011DEA 04:9DDA: 20        .dbyt $20AE   ; PPU Address
- D 0 - I - 0x011DEC 04:9DDC: 55        .byte $55
- D 0 - I - 0x011DED 04:9DDD: 0D        .byte $0D
- D 0 - I - 0x011DEE 04:9DDE: 20        .dbyt $20C8   ; PPU Address
- D 0 - I - 0x011DF0 04:9DE0: 6D        .byte $6D, $60, $00, $50, $52, $54, $56, $00, $00, $7C, $00, $00, $62
- D 0 - I - 0x011DFD 04:9DED: 0A        .byte $0A
- D 0 - I - 0x011DFE 04:9DEE: 20        .dbyt $20EA   ; PPU Address
- D 0 - I - 0x011E00 04:9DF0: 63        .byte $63, $51, $53, $00, $57, $38, $3A, $7D, $7F, $61
- D 0 - I - 0x011E0A 04:9DFA: 02        .byte $02
- D 0 - I - 0x011E0B 04:9DFB: 21        .dbyt $2131   ; PPU Address
- D 0 - I - 0x011E0D 04:9DFD: 39        .byte $39, $3B
- D 0 - I - 0x011E0F 04:9DFF: FF        .byte $FF

loc_main_menu_gunshot_f5:
- D 0 - I - 0x011E10 04:9E00: 09        .byte $09
- D 0 - I - 0x011E11 04:9E01: 21        .dbyt $2189   ; PPU Address
- D 0 - I - 0x011E13 04:9E03: 5C        .byte $5C, $5E, $70, $72, $74, $76, $78, $7A, $7B
- D 0 - I - 0x011E1C 04:9E0C: 0A        .byte $0A
- D 0 - I - 0x011E1D 04:9E0D: 21        .dbyt $21AA   ; PPU Address
- D 0 - I - 0x011E1F 04:9E0F: 5F        .byte $5F, $71, $00, $00, $77, $79, $00, $00, $58, $5A
- D 0 - I - 0x011E29 04:9E19: 0C        .byte $0C
- D 0 - I - 0x011E2A 04:9E1A: 21        .dbyt $21CA   ; PPU Address
- D 0 - I - 0x011E2C 04:9E1C: 5D        .byte $5D, $1A, $1C, $1E, $73, $22, $24, $26, $28, $2A, $59, $5B
- D 0 - I - 0x011E38 04:9E28: 01        .byte $01
- D 0 - I - 0x011E39 04:9E29: 21        .dbyt $21EE   ; PPU Address
- D 0 - I - 0x011E3B 04:9E2B: 75        .byte $75
- D 0 - I - 0x011E3C 04:9E2C: FF        .byte $FF

; reserve
- D - - - - 0x011E3D 04:9E2D: FC        .byte $FC, $FC, $FF, $7F, $FF, $FF, $C7, $06, $06, $06, $0E, $73, $F7, $FF, $C7, $06
- D - - - - 0x011E4D 04:9E3D: 06        .byte $06, $06, $0E, $F8, $F8, $F8, $38, $1C, $0E, $0E, $1C, $F8, $F0, $F8, $38, $1C
- D - - - - 0x011E5D 04:9E4D: 0E        .byte $0E, $0E, $1C, $18, $30, $30, $40, $E0, $70, $30, $10, $18, $30, $30, $60, $E0
- D - - - - 0x011E6D 04:9E5D: 70        .byte $70, $30, $10, $00, $00, $0E, $FF, $F0, $F0, $70, $70, $00, $00, $0E, $FF, $70
- D - - - - 0x011E7D 04:9E6D: 70        .byte $70, $70, $70, $00, $00, $0E, $FF, $E0, $E0, $E0, $E0, $00, $00, $0E, $FF, $E0
- D - - - - 0x011E8D 04:9E7D: E0        .byte $E0, $E0, $E0, $00, $00, $00, $01, $02, $02, $02, $03, $00, $00, $07, $0F, $0F
- D - - - - 0x011E9D 04:9E8D: 0F        .byte $0F, $0F, $0F, $13, $FF, $F9, $F7, $07, $06, $06, $0E, $1C, $FD, $FF, $FF, $07
- D - - - - 0x011EAD 04:9E9D: 06        .byte $06, $06, $0E, $00, $00, $10, $10, $00, $10, $20, $F7, $00, $00, $F0, $F8, $FC
- D - - - - 0x011EBD 04:9EAD: FE        .byte $FE, $F6, $F7, $FF, $7B, $FC, $3E, $0E, $07, $03, $03, $FE, $F8, $FC, $3E, $0E
- D - - - - 0x011ECD 04:9EBD: 07        .byte $07, $03, $03, $0F, $7F, $7F, $78, $00, $00, $00, $00, $0E, $7E, $7F, $78, $00
- D - - - - 0x011EDD 04:9ECD: 00        .byte $00, $00, $00, $1F, $1E, $DC, $F8, $70, $38, $1C, $1E, $1F, $3E, $FC, $F8, $78
- D - - - - 0x011EED 04:9EDD: 38        .byte $38, $1C, $1E, $FF, $FF, $FE, $6E, $67, $77, $77, $3F, $7F, $FE, $FE, $6E, $67
- D - - - - 0x011EFD 04:9EED: 77        .byte $77, $77, $3F, $1C, $3E, $3E, $3E, $3E, $1E, $0E, $06, $1C, $3E, $36, $30, $34
- D - - - - 0x011F0D 04:9EFD: 00        .byte $00, $30, $F8, $02, $54, $28, $44, $C8, $60, $D8, $72, $06, $0E, $1C, $38, $34
- D - - - - 0x011F1D 04:9F0D: 18        .byte $18, $20, $00, $00, $00, $0F, $1C, $18, $00, $00, $00, $00, $00, $0F, $EC, $38
- D - - - - 0x011F2D 04:9F1D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $07, $0F, $07, $03, $00, $00
- D - - - - 0x011F3D 04:9F2D: 00        .byte $00, $01, $07, $0B, $0E, $06, $03, $00, $00, $00, $00, $0F, $0E, $06, $03, $00
- D - - - - 0x011F4D 04:9F3D: 00        .byte $00, $00, $00, $10, $78, $FC, $FC, $78, $F8, $D8, $98, $F0, $F8, $FC, $FC, $78
- D - - - - 0x011F5D 04:9F4D: F8        .byte $F8, $D8, $98, $18, $18, $18, $18, $18, $28, $3C, $2F, $18, $18, $18, $18, $18
- D - - - - 0x011F6D 04:9F5D: 38        .byte $38, $3C, $2F, $38, $30, $60, $60, $00, $40, $E0, $F0, $38, $30, $60, $60, $40
- D - - - - 0x011F7D 04:9F6D: 40        .byte $40, $E0, $F0, $18, $18, $18, $18, $00, $0C, $1E, $17, $18, $18, $18, $18, $08
- D - - - - 0x011F8D 04:9F7D: 0C        .byte $0C, $1E, $17, $00, $00, $06, $06, $00, $00, $00, $00, $00, $00, $06, $06, $00
- D - - - - 0x011F9D 04:9F8D: 00        .byte $00, $00, $00, $0E, $3E, $78, $50, $70, $30, $18, $00, $0E, $3E, $78, $70, $70
- D - - - - 0x011FAD 04:9F9D: 30        .byte $30, $18, $00, $13, $FF, $FC, $F1, $07, $07, $03, $07, $1C, $FD, $FF, $FF, $07
- D - - - - 0x011FBD 04:9FAD: 07        .byte $07, $03, $07, $0E, $1C, $1C, $00, $38, $3C, $00, $00, $0E, $1C, $1C, $10, $38
- D - - - - 0x011FCD 04:9FBD: 3C        .byte $3C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x011FDD 04:9FCD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x011FED 04:9FDD: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x011FFD 04:9FED: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
- D - - - - 0x01200D 04:9FFD: 00        .byte $00, $00, $00   ; 

.out .sprintf("Free bytes in bank 04_1: 0x%X [%d]", ($A000 - *), ($A000 - *))



