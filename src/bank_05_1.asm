.segment "BANK_05_1"
.include "bank_ram.inc"
.org $8000  ; for listing file
; 0x014010-0x01600F

; 1 Page
; Address of the frames (a list tiles)
- D 0 - - - 0x014010 05:8000: F6 85     .addr loc_lupin_jigen_stand_right_frame_       ; CPU address $85F6, Daisuke Jigen is standing (right) (or Lupin)
- D 0 - I - 0x014012 05:8002: 17 86     .addr loc_lupin_jigen_stand_left_frame_        ; CPU address $8617, Daisuke Jigen is standing (left) (or Lupin)
- D 0 - I - 0x014014 05:8004: 38 86     .addr loc_lupin_jigen_run_right_frame_1        ; CPU address $8638, Daisuke Jigen is running (right) (or Lupin)
- D 0 - I - 0x014016 05:8006: 51 86     .addr loc_lupin_jigen_run_left_frame_1         ; CPU address $8651, Daisuke Jigen is running (left) (or Lupin)
- D 0 - I - 0x014018 05:8008: 6A 86     .addr loc_lupin_jigen_run_right_frame_2        ; CPU address $866A, Daisuke Jigen is running, 2nd frame (right) (or Lupin)
- D 0 - I - 0x01401A 05:800A: 83 86     .addr loc_lupin_jigen_run_left_frame_2         ; CPU address $8683, Daisuke Jigen is running, 2nd frame (left) (or Lupin)
- D 0 - I - 0x01401C 05:800C: 9C 86     .addr loc_lupin_jigen_run_right_frame_3        ; CPU address $869C, Daisuke Jigen is running, 3nd frame (right) (or Lupin)
- D 0 - I - 0x01401E 05:800E: B9 86     .addr loc_lupin_jigen_run_left_frame_3         ; CPU address $86B9, Daisuke Jigen is running, 3nd frame (left) (or Lupin)
- D 0 - I - 0x014020 05:8010: 8E 87     .addr loc_lupin_jigen_descend_right_frame_     ; CPU address $878E, Daisuke Jigen is descending (right) (or Lupin)
- D 0 - I - 0x014022 05:8012: AF 87     .addr loc_lupin_jigen_descend_left_frame_      ; CPU address $87AF, Daisuke Jigen is descending (left) (or Lupin)
- D 0 - I - 0x014024 05:8014: 08 87     .addr loc_lupin_jigen_sit_right_frame_         ; CPU address $8708, Daisuke Jigen is sitting (right) (or Lupin)
- D 0 - I - 0x014026 05:8016: 21 87     .addr loc_lupin_jigen_sit_left_frame_          ; CPU address $8721, Daisuke Jigen is sitting (left) (or Lupin)
- D - - - - 0x014028 05:8018: D6 86     .addr loc_lupin_jigen_broken_right_frame_      ; CPU address $86D6, broken
- D - - - - 0x01402A 05:801A: EF 86     .addr loc_lupin_jigen_broken_left_frame_       ; CPU address $86EF, broken
- D 0 - I - 0x01402C 05:801C: 3A 87     .addr loc_lupin_jigen_fall_right_frame_        ; CPU address $873A, Daisuke Jigen is falling (right) (or Lupin)
- D 0 - I - 0x01402E 05:801E: 53 87     .addr loc_lupin_jigen_fall_left_frame_         ; CPU address $8753, Daisuke Jigen is falling (left) (or Lupin)
- D 0 - I - 0x014030 05:8020: 6C 87     .addr loc_lupin_jigen_lie_right_frame_         ; CPU address $876C, Daisuke Jigen is lying (right) (or Lupin)
- D 0 - I - 0x014032 05:8022: 7D 87     .addr loc_lupin_jigen_lie_left_frame_          ; CPU address $877D, Daisuke Jigen is lying (left) (or Lupin)
- D 0 - I - 0x014034 05:8024: D0 87     .addr loc_lupin_jigen_turn_away_frame_1        ; CPU address $87D0, Daisuke Jigen is turning away, frame 1 (or Lupin)
- D 0 - I - 0x014036 05:8026: E1 87     .addr loc_lupin_jigen_turn_away_frame_2        ; CPU address $87E1, Daisuke Jigen is turning away, frame 2 (or Lupin)
- D 0 - I - 0x014038 05:8028: F2 87     .addr loc_lupin_jigen_look_at_us_frame_1       ; CPU address $87F2, Daisuke Jigen is looking at us, frame 1 (or Lupin)
- D 0 - I - 0x01403A 05:802A: 03 88     .addr loc_lupin_jigen_look_at_us_frame_2       ; CPU address $8803, Daisuke Jigen is looking at us, frame 2 (or Lupin)
; Goemon Ishikawa XIII
- D 0 - I - 0x01403C 05:802C: 14 88     .addr loc_goemon_stand_right_frame_            ; CPU address $8814, Goemon Ishikawa XIII is standing (right)
- D 0 - I - 0x01403E 05:802E: 39 88     .addr loc_goemon_stand_left_frame_             ; CPU address $8839, Goemon Ishikawa XIII is standing (left)
- D 0 - I - 0x014040 05:8030: 5E 88     .addr loc_goemon_run_right_frame_1             ; CPU address $885E, Goemon Ishikawa XIII is running (right)
- D 0 - I - 0x014042 05:8032: 7F 88     .addr loc_goemon_run_left_frame_1              ; CPU address $887F, Goemon Ishikawa XIII is running (left)
- D 0 - I - 0x014044 05:8034: A0 88     .addr loc_goemon_run_right_frame_2             ; CPU address $88A0, Goemon Ishikawa XIII is running, 2nd frame (right)
- D 0 - I - 0x014046 05:8036: C1 88     .addr loc_goemon_run_left_frame_2              ; CPU address $88C1, Goemon Ishikawa XIII is running, 2nd frame (left)
- D 0 - I - 0x014048 05:8038: E2 88     .addr loc_goemon_run_right_frame_3             ; CPU address $88E2, Goemon Ishikawa XIII is running, 3nd frame (right)
- D 0 - I - 0x01404A 05:803A: 07 89     .addr loc_goemon_run_left_frame_3              ; CPU address $8907, Goemon Ishikawa XIII is running, 3nd frame (left)
- D 0 - I - 0x01404C 05:803C: 0C 8A     .addr loc_goemon_descend_right_frame_          ; CPU address $8A0C, Goemon Ishikawa XIII is descending (right)
- D 0 - I - 0x01404E 05:803E: 31 8A     .addr loc_goemon_descend_left_frame_           ; CPU address $8A31, Goemon Ishikawa XIII is descending (left)
- D 0 - I - 0x014050 05:8040: 6E 89     .addr loc_goemon_sit_right_frame_              ; CPU address $896E, Goemon Ishikawa XIII is sitting (right)
- D 0 - I - 0x014052 05:8042: 93 89     .addr loc_goemon_sit_left_frame_               ; CPU address $8993, Goemon Ishikawa XIII is sitting (left)
- D - - - - 0x014054 05:8044: 2C 89     .addr loc_goemon_broken_right_frame_           ; CPU address $892C, broken
- D - - - - 0x014056 05:8046: 4D 89     .addr loc_goemon_broken_left_frame_            ; CPU address $894D, broken
- D 0 - I - 0x014058 05:8048: B8 89     .addr loc_goemon_fall_right_frame_             ; CPU address $89B8, Goemon Ishikawa XIII is falling (right)
- D 0 - I - 0x01405A 05:804A: D1 89     .addr loc_goemon_fall_left_frame_              ; CPU address $89D1, Goemon Ishikawa XIII is falling (left)
- D 0 - I - 0x01405C 05:804C: EA 89     .addr loc_goemon_lie_right_frame_              ; CPU address $89EA, Goemon Ishikawa XIII is lying (right)
- D 0 - I - 0x01405E 05:804E: FB 89     .addr loc_goemon_lie_left_frame_               ; CPU address $89FB, Goemon Ishikawa XIII is lying (left)
- D 0 - I - 0x014060 05:8050: 56 8A     .addr loc_goemon_turn_away_frame_1             ; CPU address $8A56, Goemon Ishikawa XIII is turning away, frame 1
- D 0 - I - 0x014062 05:8052: 67 8A     .addr loc_goemon_turn_away_frame_2             ; CPU address $8A67, Goemon Ishikawa XIII is turning away, frame 2
- D 0 - I - 0x014064 05:8054: 78 8A     .addr loc_goemon_look_at_us_frame_1            ; CPU address $8A78, Goemon Ishikawa XIII is looking at us, frame 1
- D 0 - I - 0x014066 05:8056: 89 8A     .addr loc_goemon_look_at_us_frame_2            ; CPU address $8A89, Goemon Ishikawa XIII is looking at us, frame 2
; the sword
- D 0 - I - 0x014068 05:8058: DB 8A     .addr loc_goemon_sword_right_frame_1     ; CPU address $8ADB
- D 0 - I - 0x01406A 05:805A: B4 8A     .addr loc_goemon_sword_left_frame_1      ; CPU address $8AB4
- D 0 - I - 0x01406C 05:805C: CE 8A     .addr loc_goemon_sword_right_frame_2     ; CPU address $8ACE
- D 0 - I - 0x01406E 05:805E: 0F 8B     .addr loc_goemon_sword_left_frame_2      ; CPU address $8B0F
- D 0 - I - 0x014070 05:8060: C1 8A     .addr loc_goemon_sword_right_frame_3     ; CPU address $8AC1
- D 0 - I - 0x014072 05:8062: 02 8B     .addr loc_goemon_sword_left_frame_3      ; CPU address $8B02
- D 0 - I - 0x014074 05:8064: B4 8A     .addr loc_goemon_sword_left_frame_1      ; CPU address $8AB4
- D 0 - I - 0x014076 05:8066: DB 8A     .addr loc_goemon_sword_right_frame_1     ; CPU address $8ADB
- D 0 - I - 0x014078 05:8068: A7 8A     .addr loc_goemon_sword_right_frame_4     ; CPU address $8AA7
- D 0 - I - 0x01407A 05:806A: F5 8A     .addr loc_goemon_sword_left_frame_4      ; CPU address $8AF5
- D 0 - I - 0x01407C 05:806C: 9A 8A     .addr loc_goemon_sword_right_frame_5     ; CPU address $8A9A
- D 0 - I - 0x01407E 05:806E: E8 8A     .addr loc_goemon_sword_left_frame_5      ; CPU address $8AE8

- D - - - - 0x014080 05:8070: 1C 8B     .addr loc_select_item_frame_             ; CPU address $8B1C
- D 0 - I - 0x014082 05:8072: 2D 8B     .addr loc_select_menu_gun_frame_         ; CPU address $8B2D
- D 0 - I - 0x014084 05:8074: 36 8B     .addr loc_select_menu_handcuffs_frame_   ; CPU address $8B36
- D 0 - I - 0x014086 05:8076: 5F 8B     .addr loc_select_menu_prison_bars_frame_ ; CPU address $8B5F
- D - - - - 0x014088 05:8078: 90 8B     .addr loc_unknown_frame_1                ; CPU address $8B90
- D - - - - 0x01408A 05:807A: 95 8B     .addr loc_unknown_frame_2                ; CPU address $8B95
- D - - - - 0x01408C 05:807C: 9A 8B     .addr loc_unknown_frame_3                ; CPU address $8B9A
; The level-racing
- D 0 - I - 0x01408E 05:807E: 9F 8B     .addr loc_car_wheels_frame_1                          ; CPU address $8B9F
- D 0 - I - 0x014090 05:8080: A8 8B     .addr loc_car_wheels_frame_2                          ; CPU address $8BA8
- D 0 - I - 0x014092 05:8082: B1 8B     .addr loc_car_wheels_frame_3                          ; CPU address $8BB1
- D - - - - 0x014094 05:8084: BA 8B     .addr loc_car_wheels_frame_4                          ; CPU address $8BBA
- D - - - - 0x014096 05:8086: C3 8B     .addr loc_car_wheels_frame_5                          ; CPU address $8BC3
- D 0 - I - 0x014098 05:8088: CC 8B     .addr loc_car_wheels_frame_6                          ; CPU address $8BCC
- D 0 - I - 0x01409A 05:808A: D5 8B     .addr loc_car_wheel_45_degree_frame_                  ; CPU address $8BD5
- D 0 - I - 0x01409C 05:808C: DE 8B     .addr loc_car_wheel_90_degree_frame_                  ; CPU address $8BDE
- D 0 - I - 0x01409E 05:808E: DF 8B     .addr loc_car_frame_                                  ; CPU address $8BDF
- D - - - - 0x0140A0 05:8090: FC 8B     .addr loc_car_broken_frame_                           ; CPU address $8BFC
- D 0 - I - 0x0140A2 05:8092: 19 8C     .addr loc_car_45_degree_frame_                        ; CPU address $8C19
- D 0 - I - 0x0140A4 05:8094: 3A 8C     .addr loc_car_90_degree_frame_                        ; CPU address $8C3A
- D 0 - I - 0x0140A6 05:8096: 5B 8C     .addr loc_lupin_in_car_frame_                         ; CPU address $8C5B, Lupin is in the car
- D - - - - 0x0140A8 05:8098: 64 8C     .addr loc_lupin_45d_in_car_frame_                     ; CPU address $8C64
- D - - - - 0x0140AA 05:809A: 6D 8C     .addr loc_lupin_90d_in_car_frame_                     ; CPU address $8C6D
- D 0 - I - 0x0140AC 05:809C: 76 8C     .addr loc_jigen_in_car_frame_                         ; CPU address $8C76
- D 0 - I - 0x0140AE 05:809E: 7F 8C     .addr loc_jigen_45d_in_car_frame_                     ; CPU address $8C7F
- D 0 - I - 0x0140B0 05:80A0: 88 8C     .addr loc_jigen_90d_in_car_frame_                     ; CPU address $8C88
- D 0 - I - 0x0140B2 05:80A2: 91 8C     .addr loc_goemon_in_car_frame_                        ; CPU address $8C91, Doemon is in the car
- D 0 - I - 0x0140B4 05:80A4: 96 8C     .addr loc_goemon_45d_in_car_frame_                    ; CPU address $8C96
- D 0 - I - 0x0140B6 05:80A6: 9B 8C     .addr loc_goemon_90d_in_car_frame_                    ; CPU address $8C9B
; The sword
- D 0 - I - 0x0140B8 05:80A8: A5 8C     .addr loc_goemon_sword_in_car_frame_1                 ; CPU address $8CA5
- D 0 - I - 0x0140BA 05:80AA: A0 8C     .addr loc_goemon_sword_in_car_frame_2                 ; CPU address $8CA0
- D 0 - I - 0x0140BC 05:80AC: F5 85     .addr loc_empty_frame_                                ; CPU address $85F5
- D 0 - I - 0x0140BE 05:80AE: AA 8C     .addr loc_car_drives_into_the_pyramid_frame_1         ; CPU address $8CAA
- D 0 - I - 0x0140C0 05:80B0: C3 8C     .addr loc_car_drives_into_the_pyramid_frame_2         ; CPU address $8CC3
- D 0 - I - 0x0140C2 05:80B2: D4 8C     .addr loc_car_drives_into_the_pyramid_frame_2_mirror  ; CPU address $8CD4
- D 0 - I - 0x0140C4 05:80B4: E5 8C     .addr loc_car_drives_into_the_pyramid_frame_3         ; CPU address $8CE5
- D 0 - I - 0x0140C6 05:80B6: F6 8C     .addr loc_car_drives_into_the_pyramid_frame_3_mirror  ; CPU address $8CF6
- D 0 - I - 0x0140C8 05:80B8: 07 8D     .addr loc_car_drives_into_the_pyramid_frame_4         ; CPU address $8D07
- D 0 - I - 0x0140CA 05:80BA: 10 8D     .addr loc_car_drives_into_the_pyramid_frame_4_mirror  ; CPU address $8D10
- D 0 - I - 0x0140CC 05:80BC: 19 8D     .addr loc_car_drives_into_the_pyramid_frame_5         ; CPU address $8D19
- D 0 - I - 0x0140CE 05:80BE: 1E 8D     .addr loc_car_drives_into_the_pyramid_frame_6         ; CPU address $8D1E
- D 0 - I - 0x0140D0 05:80C0: E8 82     .addr loc_final_npc_clarissa_frame_                   ; CPU address $82E8
- D 0 - I - 0x0140D2 05:80C2: 09 83     .addr loc_final_npc_fujiko_frame_                     ; CPU address $8309
- D 0 - I - 0x0140D4 05:80C4: 2E 83     .addr loc_final_phenix_frame_1                        ; CPU address $832E
- D 0 - I - 0x0140D6 05:80C6: 57 83     .addr loc_final_phenix_frame_2                        ; CPU address $8357
- D 0 - I - 0x0140D8 05:80C8: 70 83     .addr loc_final_phenix_frame_3                        ; CPU address $8370

; reserve
- D - - - - 0x0140DA 05:80CA: 00 00     .word $0000
- D - - - - 0x0140DC 05:80CC: 00 00     .word $0000
- D - - - - 0x0140DE 05:80CE: 00 00     .word $0000
- D - - - - 0x0140E0 05:80D0: 00 00     .word $0000
- D - - - - 0x0140E2 05:80D2: 00 00     .word $0000
- D - - - - 0x0140E4 05:80D4: 00 00     .word $0000
- D - - - - 0x0140E6 05:80D6: 00 00     .word $0000
- D - - - - 0x0140E8 05:80D8: 00 00     .word $0000
- D - - - - 0x0140EA 05:80DA: 00 00     .word $0000
- D - - - - 0x0140EC 05:80DC: 00 00     .word $0000
- D - - - - 0x0140EE 05:80DE: 00 00     .word $0000
- D - - - - 0x0140F0 05:80E0: 00 00     .word $0000
- D - - - - 0x0140F2 05:80E2: 00 00     .word $0000
- D 0 - I - 0x0140F4 05:80E4: 00 00     .word $0000
- D - - - - 0x0140F6 05:80E6: 00 00     .word $0000
- D - - - - 0x0140F8 05:80E8: 00 00     .word $0000
- D - - - - 0x0140FA 05:80EA: 00 00     .word $0000
- D - - - - 0x0140FC 05:80EC: 00 00     .word $0000
- D - - - - 0x0140FE 05:80EE: 00 00     .word $0000
- D - - - - 0x014100 05:80F0: 00 00     .word $0000
- D - - - - 0x014102 05:80F2: 00 00     .word $0000
- D - - - - 0x014104 05:80F4: 00 00     .word $0000
- D - - - - 0x014106 05:80F6: 00 00     .word $0000
- D - - - - 0x014108 05:80F8: 00 00     .word $0000
- D - - - - 0x01410A 05:80FA: 00 00     .word $0000
- D - - - - 0x01410C 05:80FC: 00 00     .word $0000
- D - - - - 0x01410E 05:80FE: 00 00     .word $0000

- D 0 - I - 0x014110 05:8100: 23 8D     .addr loc_lupin_diver_and_gun_right_frame_ ; CPU address $8D23
- D 0 - I - 0x014112 05:8102: 48 8D     .addr loc_lupin_diver_and_gun_left_frame_  ; CPU address $8D48
- D 0 - I - 0x014114 05:8104: 6D 8D     .addr loc_lupin_diver_right_frame_1        ; CPU address $8D6D
- D 0 - I - 0x014116 05:8106: 86 8D     .addr loc_lupin_diver_left_frame_1         ; CPU address $8D86
- D 0 - I - 0x014118 05:8108: 9F 8D     .addr loc_lupin_diver_right_frame_2        ; CPU address $8D9F
- D 0 - I - 0x01411A 05:810A: B8 8D     .addr loc_lupin_diver_left_frame_2         ; CPU address $8DB8
- D 0 - I - 0x01411C 05:810C: D1 8D     .addr loc_lupin_diver_right_frame_3        ; CPU address $8DD1
- D 0 - I - 0x01411E 05:810E: EE 8D     .addr loc_lupin_diver_left_frame_3         ; CPU address $8DEE
- D 0 - I - 0x014120 05:8110: 0B 8E     .addr loc_lupin_diver_death_right_frame_   ; CPU address $8E0B
- D 0 - I - 0x014122 05:8112: 28 8E     .addr loc_lupin_diver_death_left_frame_    ; CPU address $8E28
- D 0 - I - 0x014124 05:8114: 45 8E     .addr loc_lupin_diver_bob_up_right_frame_  ; CPU address $8E45
- D 0 - I - 0x014126 05:8116: 62 8E     .addr loc_lupin_diver_bob_up_left_frame_   ; CPU address $8E62
; bubbles
- D 0 - I - 0x014128 05:8118: 7F 8E     .addr loc_bubble_small_frame_              ; CPU address $8E7F
- D 0 - I - 0x01412A 05:811A: 84 8E     .addr loc_bubble_middle_frame_             ; CPU address $8E84
- D 0 - I - 0x01412C 05:811C: 89 8E     .addr loc_bubble_big_frame_                ; CPU address $8E89
- D 0 - I - 0x01412E 05:811E: BD 8E     .addr loc_jet_pack_right_frame_1           ; CPU address $8EBD
- D 0 - I - 0x014130 05:8120: C6 8E     .addr loc_jet_pack_left_frame_1            ; CPU address $8EC6
- D 0 - I - 0x014132 05:8122: CF 8E     .addr loc_jet_pack_right_frame_2           ; CPU address $8ECF
- D 0 - I - 0x014134 05:8124: D8 8E     .addr loc_jet_pack_left_frame_2            ; CPU address $8ED8
- D 0 - I - 0x014136 05:8126: E1 8E     .addr loc_jet_pack_fire_right_frame_       ; CPU address $8EE1
- D 0 - I - 0x014138 05:8128: EA 8E     .addr loc_jet_pack_fire_left_frame_        ; CPU address $8EEA
; jet-pack
- D 0 - I - 0x01413A 05:812A: F3 8E     .addr loc_lupin_jet_pack_right_frame_1  ; CPU address $8EF3
- D 0 - I - 0x01413C 05:812C: 14 8F     .addr loc_lupin_jet_pack_left_frame_1   ; CPU address $8F14
- D 0 - I - 0x01413E 05:812E: 35 8F     .addr loc_lupin_jet_pack_right_frame_2  ; CPU address $8F35
- D 0 - I - 0x014140 05:8130: 56 8F     .addr loc_lupin_jet_pack_left_frame_2   ; CPU address $8F56
- D 0 - I - 0x014142 05:8132: 77 8F     .addr loc_lupin_jet_pack_right_frame_3  ; CPU address $8F77
- D 0 - I - 0x014144 05:8134: 98 8F     .addr loc_lupin_jet_pack_left_frame_3   ; CPU address $8F98
- D 0 - I - 0x014146 05:8136: B9 8F     .addr loc_lupin_jet_pack_right_frame_4  ; CPU address $8FB9
- D 0 - I - 0x014148 05:8138: DA 8F     .addr loc_lupin_jet_pack_left_frame_4   ; CPU address $8FDA
; rifle
- D 0 - I - 0x01414A 05:813A: 01 91     .addr loc_lupin_rifle_right_frame_1  ; CPU address $9101
- D 0 - I - 0x01414C 05:813C: 22 91     .addr loc_lupin_rifle_left_frame_1   ; CPU address $9122
- D 0 - I - 0x01414E 05:813E: C7 91     .addr loc_lupin_rifle_right_frame_2  ; CPU address $91C7
- D 0 - I - 0x014150 05:8140: E8 91     .addr loc_lupin_rifle_left_frame_2   ; CPU address $91E8
- D 0 - I - 0x014152 05:8142: 09 92     .addr loc_lupin_rifle_right_frame_3  ; CPU address $9209
- D 0 - I - 0x014154 05:8144: 26 92     .addr loc_lupin_rifle_left_frame_3   ; CPU address $9226
- D 0 - I - 0x014156 05:8146: 43 92     .addr loc_lupin_rifle_right_frame_4  ; CPU address $9243
- D 0 - I - 0x014158 05:8148: 64 92     .addr loc_lupin_rifle_left_frame_4   ; CPU address $9264
- D 0 - I - 0x01415A 05:814A: 43 91     .addr loc_lupin_rifle_right_frame_5  ; CPU address $9143
- D 0 - I - 0x01415C 05:814C: 68 91     .addr loc_lupin_rifle_left_frame_5   ; CPU address $9168
- D 0 - I - 0x01415E 05:814E: 8D 91     .addr loc_lupin_rifle_right_frame_6  ; CPU address $918D
- D 0 - I - 0x014160 05:8150: AA 91     .addr loc_lupin_rifle_left_frame_6   ; CPU address $91AA
; balloon
- D 0 - I - 0x014162 05:8152: AF 90     .addr loc_lupin_balloon_right_frame_1  ; CPU address $90AF
- D 0 - I - 0x014164 05:8154: D8 90     .addr loc_lupin_balloon_left_frame_1   ; CPU address $90D8
- D 0 - I - 0x014166 05:8156: 54 90     .addr loc_balloon_frame_1              ; CPU address $9054
- D 0 - I - 0x014168 05:8158: 6D 90     .addr loc_balloon_frame_2              ; CPU address $906D
- D 0 - I - 0x01416A 05:815A: 8E 90     .addr loc_balloon_frame_3              ; CPU address $908E

- D 0 - I - 0x01416C 05:815C: 8E 8E     .addr loc_briefcase_frame_1           ; CPU Address $8E8E
- D 0 - I - 0x01416E 05:815E: 9B 8E     .addr loc_briefcase_frame_2           ; CPU Address $8E9B
- D 0 - I - 0x014170 05:8160: AC 8E     .addr loc_briefcase_frame_3           ; CPU Address $8EAC

; items
- D 0 - I - 0x014172 05:8162: FB 8F     .addr loc_radio_frame_                ; CPU Address $8FFB
- D 0 - I - 0x014174 05:8164: 23 90     .addr loc_bomb_frame_                 ; CPU Address $9023
- D 0 - I - 0x014176 05:8166: 3E 90     .addr loc_artillery_frame_            ; CPU Address $903E
- D 0 - I - 0x014178 05:8168: 0D 90     .addr loc_jet_pack_frame_             ; CPU Address $900D
- D 0 - I - 0x01417A 05:816A: 1A 90     .addr loc_infrared_goggles_frame_     ; CPU Address $901A
- D 0 - I - 0x01417C 05:816C: 04 90     .addr loc_breathing_apparatus_frame_  ; CPU Address $9004
- D 0 - I - 0x01417E 05:816E: 2C 90     .addr loc_helium_balloon_frame_       ; CPU Address $902C
- D 0 - I - 0x014180 05:8170: 35 90     .addr loc_bullet_proof_vest_frame_    ; CPU Address $9035
- D 0 - I - 0x014182 05:8172: 4B 90     .addr loc_ring_frame_                 ; CPU Address $904B

; The bomb is exploding
- D 0 - I - 0x014184 05:8174: 85 92     .addr loc_bomb_explode_frame_1       ; CPU Address $9285
- D 0 - I - 0x014186 05:8176: 96 92     .addr loc_bomb_explode_frame_2       ; CPU Address $9296
- D 0 - I - 0x014188 05:8178: A7 92     .addr loc_bomb_explode_frame_3       ; CPU Address $92A7
- D 0 - I - 0x01418A 05:817A: D0 92     .addr loc_bomb_explode_frame_4       ; CPU Address $92D0
- D 0 - I - 0x01418C 05:817C: 11 93     .addr loc_bomb_explode_frame_5       ; CPU Address $9311
- D 0 - I - 0x01418E 05:817E: 22 93     .addr loc_bomb_semi_explode_frame_1  ; CPU Address $9322
- D 0 - I - 0x014190 05:8180: 2B 93     .addr loc_bomb_semi_explode_frame_2  ; CPU Address $932B
- D 0 - I - 0x014192 05:8182: 34 93     .addr loc_bomb_semi_explode_frame_3  ; CPU Address $9334

; NPCs
- D 0 - I - 0x014194 05:8184: 8D 83     .addr loc_npc_fujiko_frame_1       ; CPU Address $838D
- D 0 - I - 0x014196 05:8186: AE 83     .addr loc_npc_zenigata_frame_1     ; CPU Address $83AE
- D 0 - I - 0x014198 05:8188: CF 83     .addr loc_npc_man_frame_           ; CPU Address $83CF
- D 0 - I - 0x01419A 05:818A: F0 83     .addr loc_npc_sailor_frame_        ; CPU Address $83F0
- D 0 - I - 0x01419C 05:818C: 11 84     .addr loc_npc_pharaoh_tomb_frame_1 ; CPU Address $8411
- D 0 - I - 0x01419E 05:818E: 3A 84     .addr loc_npc_woman_frame_1        ; CPU Address $843A
- D 0 - I - 0x0141A0 05:8190: 4B 84     .addr loc_npc_woman_frame_2        ; CPU Address $844B
- D 0 - I - 0x0141A2 05:8192: 60 84     .addr loc_npc_woman_frame_3        ; CPU Address $8460
- D 0 - I - 0x0141A4 05:8194: 81 84     .addr loc_npc_woman_frame_4        ; CPU Address $8481
- D 0 - I - 0x0141A6 05:8196: 9E 84     .addr loc_npc_woman_frame_5        ; CPU Address $849E
- D 0 - I - 0x0141A8 05:8198: B3 84     .addr loc_npc_woman_frame_6        ; CPU Address $84B3
- D 0 - I - 0x0141AA 05:819A: CC 84     .addr loc_npc_pharaoh_tomb_frame_2 ; CPU Address $84CC
- D 0 - I - 0x0141AC 05:819C: F5 84     .addr loc_npc_yi_frame_            ; CPU Address $84F5
- D 0 - I - 0x0141AE 05:819E: 06 85     .addr loc_npc_lian_frame_          ; CPU Address $8506
- D 0 - I - 0x0141B0 05:81A0: 23 85     .addr loc_npc_san_frame_           ; CPU Address $8523
- D 0 - I - 0x0141B2 05:81A2: 40 85     .addr loc_npc_suu_frame_           ; CPU Address $8540
- D - - - - 0x0141B4 05:81A4: 5D 85     .addr loc_npc_fujiko_frame_2       ; CPU Address $855D
- D 0 - I - 0x0141B6 05:81A6: 9F 85     .addr loc_npc_zenigata_frame_2     ; CPU Address $859F
- D 0 - I - 0x0141B8 05:81A8: 7E 85     .addr loc_npc_pharaoh_tomb_frame_3 ; CPU Address $857E
- D 0 - I - 0x0141BA 05:81AA: C0 85     .addr loc_npc_prisoner_frame_1     ; CPU Address $85C0
- D 0 - I - 0x0141BC 05:81AC: D1 85     .addr loc_npc_prisoner_frame_2     ; CPU Address $85D1
- D 0 - I - 0x0141BE 05:81AE: 1F 95     .addr loc_hulk_right_frame_6       ; CPU Address $951F
- D 0 - I - 0x0141C0 05:81B0: 4C 95     .addr loc_hulk_left_frame_6        ; CPU Address $954C
- D 0 - I - 0x0141C2 05:81B2: B5 98     .addr loc_kim_right_frame_10       ; CPU Address $98B5
- D 0 - I - 0x0141C4 05:81B4: D6 98     .addr loc_kim_left_frame_10        ; CPU Address $98D6
- D 0 - I - 0x0141C6 05:81B6: FF 9A     .addr loc_raid_right_frame_6       ; CPU Address $9AFF
- D 0 - I - 0x0141C8 05:81B8: 40 9B     .addr loc_raid_left_frame_6        ; CPU Address $9B40

- D 0 - I - 0x0141CA 05:81BA: E2 85     .addr loc_prisoner_rope_frame_1  ; CPU address $85E2
- D 0 - I - 0x0141CC 05:81BC: E7 85     .addr loc_prisoner_rope_frame_2  ; CPU address $85E7
- D 0 - I - 0x0141CE 05:81BE: F0 85     .addr loc_prisoner_rope_frame_3  ; CPU address $85F0

; reserve
- D - - - - 0x0141D0 05:81C0: 00 04     .addr $0400
- D - - - - 0x0141D2 05:81C2: 04 00     .addr $0004
- D - - - - 0x0141D4 05:81C4: 00 00     .addr $0000
- D - - - - 0x0141D6 05:81C6: 00 00     .addr $0000
- D - - - - 0x0141D8 05:81C8: 01 1B     .addr $1B01
- D - - - - 0x0141DA 05:81CA: 1B 18     .addr $181B
- D - - - - 0x0141DC 05:81CC: 10 10     .addr $1010
- D - - - - 0x0141DE 05:81CE: 00 00     .addr $0000
- D - - - - 0x0141E0 05:81D0: 00 00     .addr $0000
- D - - - - 0x0141E2 05:81D2: 00 00     .addr $0000
- D - - - - 0x0141E4 05:81D4: 00 18     .addr $1800
- D - - - - 0x0141E6 05:81D6: 00 00     .addr $0000
- D - - - - 0x0141E8 05:81D8: 18 18     .addr $1818
- D - - - - 0x0141EA 05:81DA: 18 18     .addr $1818
- D - - - - 0x0141EC 05:81DC: 18 00     .addr $0018
- D - - - - 0x0141EE 05:81DE: 1E 1F     .addr $1F1E
- D - - - - 0x0141F0 05:81E0: 01 01     .addr $0101
- D - - - - 0x0141F2 05:81E2: 00 00     .addr $0000
- D - - - - 0x0141F4 05:81E4: 00 00     .addr $0000
- D - - - - 0x0141F6 05:81E6: 00 00     .addr $0000
- D - - - - 0x0141F8 05:81E8: 06 06     .addr $0606
- D - - - - 0x0141FA 05:81EA: 06 04     .addr $0406
- D - - - - 0x0141FC 05:81EC: 04 00     .addr $0004
- D - - - - 0x0141FE 05:81EE: 00 00     .addr $0000
- D - - - - 0x014200 05:81F0: 00 00     .addr $0000
- D - - - - 0x014202 05:81F2: 00 00     .addr $0000
- D - - - - 0x014204 05:81F4: 00 00     .addr $0000
- D - - - - 0x014206 05:81F6: 00 00     .addr $0000
- D - - - - 0x014208 05:81F8: 7C 3C     .addr $3C7C
- D - - - - 0x01420A 05:81FA: 3E 1E     .addr $1E3E
- D - - - - 0x01420C 05:81FC: 0E 0F     .addr $0F0E
- D - - - - 0x01420E 05:81FE: FF FE     .addr $FEFF

- D 0 - I - 0x014210 05:8200: 3D 93     .addr loc_hulk_right_frame_1       ; CPU Address $933D
- D 0 - I - 0x014212 05:8202: 6E 93     .addr loc_hulk_left_frame_1        ; CPU Address $936E
- D 0 - I - 0x014214 05:8204: 9F 93     .addr loc_hulk_right_frame_2       ; CPU Address $939F
- D 0 - I - 0x014216 05:8206: D0 93     .addr loc_hulk_left_frame_2        ; CPU Address $93D0
- D 0 - I - 0x014218 05:8208: 01 94     .addr loc_hulk_right_frame_3       ; CPU Address $9401
- D 0 - I - 0x01421A 05:820A: 2E 94     .addr loc_hulk_left_frame_3        ; CPU Address $942E
- D 0 - I - 0x01421C 05:820C: 5B 94     .addr loc_hulk_right_frame_4       ; CPU Address $945B
- D 0 - I - 0x01421E 05:820E: 8C 94     .addr loc_hulk_left_frame_4        ; CPU Address $948C
- D 0 - I - 0x014220 05:8210: BD 94     .addr loc_hulk_right_frame_5       ; CPU Address $94BD
- D 0 - I - 0x014222 05:8212: EE 94     .addr loc_hulk_left_frame_5        ; CPU Address $94EE
- D 0 - I - 0x014224 05:8214: 1F 95     .addr loc_hulk_right_frame_6       ; CPU Address $951F
- D 0 - I - 0x014226 05:8216: 4C 95     .addr loc_hulk_left_frame_6        ; CPU Address $954C
- D 0 - I - 0x014228 05:8218: 79 95     .addr loc_hulk_hand_right_frame_1  ; CPU Address $9579
- D 0 - I - 0x01422A 05:821A: 86 95     .addr loc_hulk_hand_left_frame_1   ; CPU Address $9586
- D 0 - I - 0x01422C 05:821C: 93 95     .addr loc_hulk_hand_right_frame_2  ; CPU Address $9593
- D 0 - I - 0x01422E 05:821E: A0 95     .addr loc_hulk_hand_left_frame_2   ; CPU Address $95A0
- D 0 - I - 0x014230 05:8220: AD 95     .addr loc_hulk_hand_right_frame_3  ; CPU Address $95AD
- D 0 - I - 0x014232 05:8222: BA 95     .addr loc_hulk_hand_left_frame_3   ; CPU Address $95BA
- D 0 - I - 0x014234 05:8224: C7 95     .addr loc_hulk_hand_right_frame_4  ; CPU Address $95C7
- D 0 - I - 0x014236 05:8226: D8 95     .addr loc_hulk_hand_left_frame_4   ; CPU Address $95D8
- D 0 - I - 0x014238 05:8228: E9 95     .addr loc_hulk_hand_right_frame_5  ; CPU Address $95E9
- D 0 - I - 0x01423A 05:822A: FA 95     .addr loc_hulk_hand_left_frame_5   ; CPU Address $95FA
- D 0 - I - 0x01423C 05:822C: 0B 96     .addr loc_hulk_hand_right_frame_6  ; CPU Address $960B
- D 0 - I - 0x01423E 05:822E: 14 96     .addr loc_hulk_hand_left_frame_6   ; CPU Address $9614
- D 0 - I - 0x014240 05:8230: 1D 96     .addr loc_hulk_hand_right_frame_7  ; CPU Address $961D
- D 0 - I - 0x014242 05:8232: 26 96     .addr loc_hulk_hand_left_frame_7   ; CPU Address $9626

- D 0 - I - 0x014244 05:8234: 2F 96     .addr loc_hulk_projectile_frame_1  ; CPU Address $962F
- D 0 - I - 0x014246 05:8236: 38 96     .addr loc_hulk_projectile_frame_2  ; CPU Address $9638
- D 0 - I - 0x014248 05:8238: 41 96     .addr loc_hulk_projectile_frame_3  ; CPU Address $9641
- D 0 - I - 0x01424A 05:823A: 4A 96     .addr loc_hulk_projectile_frame_4  ; CPU Address $964A

- D 0 - I - 0x01424C 05:823C: 53 96     .addr loc_kim_right_frame_1        ; CPU Address $9653
- D 0 - I - 0x01424E 05:823E: 78 96     .addr loc_kim_left_frame_1         ; CPU Address $9678
- D 0 - I - 0x014250 05:8240: 9D 96     .addr loc_kim_right_frame_2        ; CPU Address $969D
- D 0 - I - 0x014252 05:8242: C2 96     .addr loc_kim_left_frame_2         ; CPU Address $96C2
- D 0 - I - 0x014254 05:8244: E7 96     .addr loc_kim_right_frame_3        ; CPU Address $96E7
- D 0 - I - 0x014256 05:8246: 0C 97     .addr loc_kim_left_frame_3         ; CPU Address $970C
- D 0 - I - 0x014258 05:8248: 31 97     .addr loc_kim_right_frame_4        ; CPU Address $9731
- D 0 - I - 0x01425A 05:824A: 4E 97     .addr loc_kim_left_frame_4         ; CPU Address $974E
- D 0 - I - 0x01425C 05:824C: 6B 97     .addr loc_kim_right_frame_5        ; CPU Address $976B
- D 0 - I - 0x01425E 05:824E: 88 97     .addr loc_kim_left_frame_5         ; CPU Address $9788
- D 0 - I - 0x014260 05:8250: A5 97     .addr loc_kim_right_frame_6        ; CPU Address $97A5
- D 0 - I - 0x014262 05:8252: C6 97     .addr loc_kim_left_frame_6         ; CPU Address $97C6
- D 0 - I - 0x014264 05:8254: E7 97     .addr loc_kim_right_frame_7        ; CPU Address $97E7
- D 0 - I - 0x014266 05:8256: 08 98     .addr loc_kim_left_frame_7         ; CPU Address $9808
- D 0 - I - 0x014268 05:8258: 29 98     .addr loc_kim_right_frame_8        ; CPU Address $9829
- D 0 - I - 0x01426A 05:825A: 4A 98     .addr loc_kim_left_frame_8         ; CPU Address $984A
- D 0 - I - 0x01426C 05:825C: 6B 98     .addr loc_kim_right_frame_9        ; CPU Address $986B
- D 0 - I - 0x01426E 05:825E: 90 98     .addr loc_kim_left_frame_9         ; CPU Address $9890
- D 0 - I - 0x014270 05:8260: B5 98     .addr loc_kim_right_frame_10       ; CPU Address $98B5
- D 0 - I - 0x014272 05:8262: D6 98     .addr loc_kim_left_frame_10        ; CPU Address $98D6

- D 0 - I - 0x014274 05:8264: F7 98     .addr loc_butterfly_right_frame_1   ; CPU Address $98F7
- D 0 - I - 0x014276 05:8266: FC 98     .addr loc_butterfly_left_frame_1    ; CPU Address $98FC
- D 0 - I - 0x014278 05:8268: 01 99     .addr loc_butterfly_right_frame_2   ; CPU Address $9901
- D 0 - I - 0x01427A 05:826A: 06 99     .addr loc_butterfly_left_frame_2    ; CPU Address $9906
- D 0 - I - 0x01427C 05:826C: 0B 99     .addr loc_butterfly_right_frame_3   ; CPU Address $990B
- D 0 - I - 0x01427E 05:826E: 10 99     .addr loc_butterfly_left_frame_3    ; CPU Address $9910

- D 0 - I - 0x014280 05:8270: 15 99     .addr loc_raid_right_frame_1        ; CPU Address $9915
- D 0 - I - 0x014282 05:8272: 42 99     .addr loc_raid_left_frame_1         ; CPU Address $9942
- D 0 - I - 0x014284 05:8274: 6F 99     .addr loc_raid_right_frame_2        ; CPU Address $996F
- D 0 - I - 0x014286 05:8276: AC 99     .addr loc_raid_left_frame_2         ; CPU Address $99AC
- D 0 - I - 0x014288 05:8278: E9 99     .addr loc_raid_right_frame_3        ; CPU Address $99E9
- D 0 - I - 0x01428A 05:827A: 16 9A     .addr loc_raid_left_frame_3         ; CPU Address $9A16
- D 0 - I - 0x01428C 05:827C: 43 9A     .addr loc_raid_right_frame_4        ; CPU Address $9A43
- D 0 - I - 0x01428E 05:827E: 70 9A     .addr loc_raid_left_frame_4         ; CPU Address $9A70
- D 0 - I - 0x014290 05:8280: 9D 9A     .addr loc_raid_right_frame_5        ; CPU Address $9A9D
- D 0 - I - 0x014292 05:8282: CE 9A     .addr loc_raid_left_frame_5         ; CPU Address $9ACE
- D 0 - I - 0x014294 05:8284: FF 9A     .addr loc_raid_right_frame_6        ; CPU Address $9AFF
- D 0 - I - 0x014296 05:8286: 40 9B     .addr loc_raid_left_frame_6         ; CPU Address $9B40

- D 0 - I - 0x014298 05:8288: 81 9B     .addr loc_raid_head_frame_1        ; CPU Address $9B81
- D 0 - I - 0x01429A 05:828A: 8B 9B     .addr loc_raid_head_frame_2        ; CPU Address $9B8B
- D 0 - I - 0x01429C 05:828C: 86 9B     .addr loc_raid_head_frame_3        ; CPU Address $9B86
- D 0 - I - 0x01429E 05:828E: 90 9B     .addr loc_raid_head_frame_4        ; CPU Address $9B90

- D 0 - I - 0x0142A0 05:8290: 95 9B     .addr loc_raid_projectile_frame_1  ; CPU Address $9B95
- D 0 - I - 0x0142A2 05:8292: 9A 9B     .addr loc_raid_projectile_frame_2  ; CPU Address $9B9A

- D 0 - I - 0x0142A4 05:8294: 9F 9B     .addr loc_last_boss_part_right_frame_1   ; CPU Address $9B9F
- D 0 - I - 0x0142A6 05:8296: C0 9B     .addr loc_last_boss_part_left_frame_1    ; CPU Address $9BC0
- D 0 - I - 0x0142A8 05:8298: E1 9B     .addr loc_last_boss_part_right_frame_2   ; CPU Address $9BE1
- D - - - - 0x0142AA 05:829A: FA 9B     .addr loc_last_boss_part_left_frame_2    ; CPU Address $9BFA
- D 0 - I - 0x0142AC 05:829C: 13 9C     .addr loc_last_boss_part_right_frame_3   ; CPU Address $9C13
- D - - - - 0x0142AE 05:829E: 30 9C     .addr loc_last_boss_part_left_frame_3    ; CPU Address $9C30
- D 0 - I - 0x0142B0 05:82A0: 4D 9C     .addr loc_last_boss_part_right_frame_4   ; CPU Address $9C4D
- D 0 - I - 0x0142B2 05:82A2: 66 9C     .addr loc_last_boss_part_left_frame_4    ; CPU Address $9C66
- D 0 - I - 0x0142B4 05:82A4: 7F 9C     .addr loc_last_boss_part_right_frame_5   ; CPU Address $9C7F
- D 0 - I - 0x0142B6 05:82A6: 98 9C     .addr loc_last_boss_part_left_frame_5    ; CPU Address $9C98
- D 0 - I - 0x0142B8 05:82A8: B1 9C     .addr loc_last_boss_part_right_frame_6   ; CPU Address $9CB1
- D 0 - I - 0x0142BA 05:82AA: C2 9C     .addr loc_last_boss_part_left_frame_6    ; CPU Address $9CC2
- D 0 - I - 0x0142BC 05:82AC: D3 9C     .addr loc_last_boss_part_right_frame_7   ; CPU Address $9CD3
- D 0 - I - 0x0142BE 05:82AE: DC 9C     .addr loc_last_boss_part_left_frame_7    ; CPU Address $9CDC
- D 0 - I - 0x0142C0 05:82B0: E5 9C     .addr loc_last_boss_part_right_frame_8   ; CPU Address $9CE5
- D 0 - I - 0x0142C2 05:82B2: EE 9C     .addr loc_last_boss_part_left_frame_8    ; CPU Address $9CEE
- D 0 - I - 0x0142C4 05:82B4: F7 9C     .addr loc_last_boss_part_right_frame_9   ; CPU Address $9CF7
- D 0 - I - 0x0142C6 05:82B6: 08 9D     .addr loc_last_boss_part_left_frame_9    ; CPU Address $9D08
- D 0 - I - 0x0142C8 05:82B8: 19 9D     .addr loc_last_boss_part_right_frame_10  ; CPU Address $9D19
- D 0 - I - 0x0142CA 05:82BA: 2A 9D     .addr loc_last_boss_part_left_frame_10   ; CPU Address $9D2A
- D 0 - I - 0x0142CC 05:82BC: 3B 9D     .addr loc_last_boss_part_right_frame_11  ; CPU Address $9D3B
- D 0 - I - 0x0142CE 05:82BE: 4C 9D     .addr loc_last_boss_part_left_frame_11   ; CPU Address $9D4C
- D 0 - I - 0x0142D0 05:82C0: 5D 9D     .addr loc_last_boss_part_right_frame_12  ; CPU Address $9D5D
- D 0 - I - 0x0142D2 05:82C2: 6A 9D     .addr loc_last_boss_part_left_frame_12   ; CPU Address $9D6A
- D - - - - 0x0142D4 05:82C4: 77 9D     .addr loc_last_boss_part_right_frame_13  ; CPU Address $9D77
- D - - - - 0x0142D6 05:82C6: 88 9D     .addr loc_last_boss_part_left_frame_13   ; CPU Address $9D88
- D 0 - I - 0x0142D8 05:82C8: 99 9D     .addr loc_last_boss_part_right_frame_14  ; CPU Address $9D99
- D 0 - I - 0x0142DA 05:82CA: 9E 9D     .addr loc_last_boss_part_left_frame_14   ; CPU Address $9D9E
- D 0 - I - 0x0142DC 05:82CC: A3 9D     .addr loc_last_boss_part_right_frame_15  ; CPU Address $9DA3
- D 0 - I - 0x0142DE 05:82CE: A8 9D     .addr loc_last_boss_part_left_frame_15   ; CPU Address $9DA8
- D 0 - I - 0x0142E0 05:82D0: AD 9D     .addr loc_last_boss_part_right_frame_16  ; CPU Address $9DAD
- D 0 - I - 0x0142E2 05:82D2: B2 9D     .addr loc_last_boss_part_left_frame_16   ; CPU Address $9DB2
- D 0 - I - 0x0142E4 05:82D4: B7 9D     .addr loc_last_boss_projectile_frame_1   ; CPU Address $9DB7
- D 0 - I - 0x0142E6 05:82D6: BC 9D     .addr loc_last_boss_projectile_frame_2   ; CPU Address $9DBC
- D 0 - I - 0x0142E8 05:82D8: C1 9D     .addr loc_last_boss_part_right_frame_17  ; CPU Address $9DC1
- D 0 - I - 0x0142EA 05:82DA: F2 9D     .addr loc_last_boss_part_left_frame_17   ; CPU Address $9DF2
- D 0 - I - 0x0142EC 05:82DC: 23 9E     .addr loc_last_boss_part_right_frame_18  ; CPU Address $9E23
- D 0 - I - 0x0142EE 05:82DE: 48 9E     .addr loc_last_boss_part_left_frame_18   ; CPU Address $9E48
- D 0 - I - 0x0142F0 05:82E0: 6D 9E     .addr loc_last_boss_part_right_frame_19  ; CPU Address $9E6D
- D 0 - I - 0x0142F2 05:82E2: 8A 9E     .addr loc_last_boss_part_left_frame_19   ; CPU Address $9E8A
- D 0 - I - 0x0142F4 05:82E4: A7 9E     .addr loc_last_boss_part_right_frame_20  ; CPU Address $9EA7
- D 0 - I - 0x0142F6 05:82E6: C4 9E     .addr loc_last_boss_part_left_frame_20   ; CPU Address $9EC4

loc_final_npc_clarissa_frame_:
- D 0 - I - 0x0142F8 05:82E8: 08        .byte $08                 ; Tile count
- D 0 - I - 0x0142F9 05:82E9: E4        .byte $E4, $C0, $43, $FC
- D 0 - I - 0x0142FD 05:82ED: EC        .byte $EC, $C1, $43, $FC
- D 0 - I - 0x014301 05:82F1: F4        .byte $F4, $C2, $43, $FD
- D 0 - I - 0x014305 05:82F5: F8        .byte $F8, $C3, $43, $00
- D 0 - I - 0x014309 05:82F9: F8        .byte $F8, $C4, $43, $F8
- D 0 - I - 0x01430D 05:82FD: EA        .byte $EA, $CB, $40, $FD
- D 0 - I - 0x014311 05:8301: E7        .byte $E7, $CC, $41, $F9
- D 0 - I - 0x014315 05:8305: F8        .byte $F8, $CD, $41, $FE

loc_final_npc_fujiko_frame_:
- D 0 - I - 0x014319 05:8309: 09        .byte $09
- D 0 - I - 0x01431A 05:830A: E0        .byte $E0, $C5, $43, $FA
- D 0 - I - 0x01431E 05:830E: E5        .byte $E5, $C6, $43, $FC
- D 0 - I - 0x014322 05:8312: E9        .byte $E9, $C7, $43, $FB
- D 0 - I - 0x014326 05:8316: F1        .byte $F1, $C8, $43, $FB
- D 0 - I - 0x01432A 05:831A: F8        .byte $F8, $C9, $43, $FD
- D 0 - I - 0x01432E 05:831E: F8        .byte $F8, $CA, $43, $F5
- D 0 - I - 0x014332 05:8322: E0        .byte $E0, $CE, $41, $F8
- D 0 - I - 0x014336 05:8326: EB        .byte $EB, $CF, $41, $00
- D 0 - I - 0x01433A 05:832A: F0        .byte $F0, $D0, $41, $F8

loc_final_phenix_frame_1:
- D 0 - I - 0x01433E 05:832E: 0A        .byte $0A
- D 0 - I - 0x01433F 05:832F: E0        .byte $E0, $B1, $02, $F6
- D 0 - I - 0x014343 05:8333: E0        .byte $E0, $B3, $02, $00
- D 0 - I - 0x014347 05:8337: E8        .byte $E8, $AC, $02, $F8
- D 0 - I - 0x01434B 05:833B: E8        .byte $E8, $AE, $02, $00
- D 0 - I - 0x01434F 05:833F: EC        .byte $EC, $B4, $02, $F3
- D 0 - I - 0x014353 05:8343: F0        .byte $F0, $AD, $02, $F8
- D 0 - I - 0x014357 05:8347: F0        .byte $F0, $AF, $02, $00
- D 0 - I - 0x01435B 05:834B: F8        .byte $F8, $B0, $02, $F8
- D 0 - I - 0x01435F 05:834F: F8        .byte $F8, $B2, $02, $00
- D 0 - I - 0x014363 05:8353: F8        .byte $F8, $B5, $02, $08

loc_final_phenix_frame_2:
- D 0 - I - 0x014367 05:8357: 06        .byte $06
- D 0 - I - 0x014368 05:8358: EA        .byte $EA, $B4, $02, $F3
- D 0 - I - 0x01436C 05:835C: ED        .byte $ED, $BD, $02, $FB
- D 0 - I - 0x014370 05:8360: F1        .byte $F1, $B6, $02, $F8
- D 0 - I - 0x014374 05:8364: F5        .byte $F5, $BE, $02, $00
- D 0 - I - 0x014378 05:8368: F6        .byte $F6, $B5, $02, $08
- D 0 - I - 0x01437C 05:836C: F9        .byte $F9, $B7, $02, $F8

loc_final_phenix_frame_3:
- D 0 - I - 0x014380 05:8370: 07        .byte $07
- D 0 - I - 0x014381 05:8371: E8        .byte $E8, $B8, $02, $F5
- D 0 - I - 0x014385 05:8375: E8        .byte $E8, $BA, $02, $FD
- D 0 - I - 0x014389 05:8379: F0        .byte $F0, $B9, $02, $F5
- D 0 - I - 0x01438D 05:837D: F0        .byte $F0, $BB, $02, $FD
- D 0 - I - 0x014391 05:8381: F8        .byte $F8, $BC, $02, $F8
- D 0 - I - 0x014395 05:8385: F8        .byte $F8, $B2, $02, $00
- D 0 - I - 0x014399 05:8389: F8        .byte $F8, $B5, $02, $08

loc_npc_fujiko_frame_1:
- D 0 - I - 0x01439D 05:838D: 08        .byte $08
- D 0 - I - 0x01439E 05:838E: E0        .byte $E0, $F0, $00, $F8
- D 0 - I - 0x0143A2 05:8392: E0        .byte $E0, $F2, $00, $00
- D 0 - I - 0x0143A6 05:8396: E8        .byte $E8, $F1, $00, $F8
- D 0 - I - 0x0143AA 05:839A: E8        .byte $E8, $F3, $00, $00
- D 0 - I - 0x0143AE 05:839E: F0        .byte $F0, $F4, $00, $F8
- D 0 - I - 0x0143B2 05:83A2: F0        .byte $F0, $F6, $00, $00
- D 0 - I - 0x0143B6 05:83A6: F8        .byte $F8, $F5, $00, $F8
- D 0 - I - 0x0143BA 05:83AA: F8        .byte $F8, $F7, $00, $00

loc_npc_zenigata_frame_1:
- D 0 - I - 0x0143BE 05:83AE: 08        .byte $08
- D 0 - I - 0x0143BF 05:83AF: E0        .byte $E0, $80, $00, $F8
- D 0 - I - 0x0143C3 05:83B3: E0        .byte $E0, $82, $00, $00
- D 0 - I - 0x0143C7 05:83B7: E8        .byte $E8, $81, $00, $F8
- D 0 - I - 0x0143CB 05:83BB: E8        .byte $E8, $83, $00, $00
- D 0 - I - 0x0143CF 05:83BF: F0        .byte $F0, $84, $00, $F8
- D 0 - I - 0x0143D3 05:83C3: F0        .byte $F0, $86, $00, $00
- D 0 - I - 0x0143D7 05:83C7: F8        .byte $F8, $85, $00, $F8
- D 0 - I - 0x0143DB 05:83CB: F8        .byte $F8, $87, $00, $00

loc_npc_man_frame_:
- D 0 - I - 0x0143DF 05:83CF: 08        .byte $08
- D 0 - I - 0x0143E0 05:83D0: E0        .byte $E0, $88, $00, $F8
- D 0 - I - 0x0143E4 05:83D4: E0        .byte $E0, $8A, $00, $00
- D 0 - I - 0x0143E8 05:83D8: E8        .byte $E8, $89, $00, $F8
- D 0 - I - 0x0143EC 05:83DC: E8        .byte $E8, $8B, $00, $00
- D 0 - I - 0x0143F0 05:83E0: F0        .byte $F0, $8C, $00, $F8
- D 0 - I - 0x0143F4 05:83E4: F0        .byte $F0, $8E, $00, $00
- D 0 - I - 0x0143F8 05:83E8: F8        .byte $F8, $8D, $00, $F8
- D 0 - I - 0x0143FC 05:83EC: F8        .byte $F8, $8F, $00, $00

loc_npc_sailor_frame_:
- D 0 - I - 0x014400 05:83F0: 08        .byte $08
- D 0 - I - 0x014401 05:83F1: E0        .byte $E0, $90, $00, $F8
- D 0 - I - 0x014405 05:83F5: E0        .byte $E0, $92, $00, $00
- D 0 - I - 0x014409 05:83F9: E8        .byte $E8, $91, $00, $F8
- D 0 - I - 0x01440D 05:83FD: E8        .byte $E8, $93, $00, $00
- D 0 - I - 0x014411 05:8401: F0        .byte $F0, $94, $00, $F8
- D 0 - I - 0x014415 05:8405: F0        .byte $F0, $96, $00, $00
- D 0 - I - 0x014419 05:8409: F8        .byte $F8, $95, $00, $F8
- D 0 - I - 0x01441D 05:840D: F8        .byte $F8, $97, $00, $00

loc_npc_pharaoh_tomb_frame_1:
- D 0 - I - 0x014421 05:8411: 0A        .byte $0A
- D 0 - I - 0x014422 05:8412: D8        .byte $D8, $DC, $00, $F8
- D 0 - I - 0x014426 05:8416: D8        .byte $D8, $DE, $00, $00
- D 0 - I - 0x01442A 05:841A: E0        .byte $E0, $D4, $00, $F8
- D 0 - I - 0x01442E 05:841E: E0        .byte $E0, $D6, $00, $00
- D 0 - I - 0x014432 05:8422: E8        .byte $E8, $D5, $00, $F8
- D 0 - I - 0x014436 05:8426: E8        .byte $E8, $D7, $00, $00
- D 0 - I - 0x01443A 05:842A: F0        .byte $F0, $D8, $00, $F8
- D 0 - I - 0x01443E 05:842E: F0        .byte $F0, $DA, $00, $00
- D 0 - I - 0x014442 05:8432: F8        .byte $F8, $D9, $00, $F8
- D 0 - I - 0x014446 05:8436: F8        .byte $F8, $DB, $00, $00

loc_npc_woman_frame_1:
- D 0 - I - 0x01444A 05:843A: 04        .byte $04
- D 0 - I - 0x01444B 05:843B: E0        .byte $E0, $98, $00, $FC
- D 0 - I - 0x01444F 05:843F: E8        .byte $E8, $99, $00, $FC
- D 0 - I - 0x014453 05:8443: F0        .byte $F0, $9A, $00, $FC
- D 0 - I - 0x014457 05:8447: F8        .byte $F8, $9B, $00, $FC

loc_npc_woman_frame_2:
- D 0 - I - 0x01445B 05:844B: 05        .byte $05
- D 0 - I - 0x01445C 05:844C: E0        .byte $E0, $9C, $00, $FB
- D 0 - I - 0x014460 05:8450: E8        .byte $E8, $9D, $00, $FB
- D 0 - I - 0x014464 05:8454: F0        .byte $F0, $9E, $00, $FB
- D 0 - I - 0x014468 05:8458: F8        .byte $F8, $9F, $00, $F8
- D 0 - I - 0x01446C 05:845C: F8        .byte $F8, $A0, $00, $00

loc_npc_woman_frame_3:
- D 0 - I - 0x014470 05:8460: 08        .byte $08
- D 0 - I - 0x014471 05:8461: E0        .byte $E0, $CC, $00, $F8
- D 0 - I - 0x014475 05:8465: E0        .byte $E0, $CE, $00, $00
- D 0 - I - 0x014479 05:8469: E8        .byte $E8, $CD, $00, $F8
- D 0 - I - 0x01447D 05:846D: E8        .byte $E8, $CF, $00, $00
- D 0 - I - 0x014481 05:8471: F0        .byte $F0, $D0, $00, $F8
- D 0 - I - 0x014485 05:8475: F0        .byte $F0, $D2, $00, $00
- D 0 - I - 0x014489 05:8479: F8        .byte $F8, $D1, $00, $F8
- D 0 - I - 0x01448D 05:847D: F8        .byte $F8, $D3, $00, $00

loc_npc_woman_frame_4:
- D 0 - I - 0x014491 05:8481: 07        .byte $07
- D 0 - I - 0x014492 05:8482: E0        .byte $E0, $A4, $00, $F8
- D 0 - I - 0x014496 05:8486: E0        .byte $E0, $A6, $00, $00
- D 0 - I - 0x01449A 05:848A: E8        .byte $E8, $A5, $00, $F8
- D 0 - I - 0x01449E 05:848E: E8        .byte $E8, $A7, $00, $00
- D 0 - I - 0x0144A2 05:8492: F0        .byte $F0, $A2, $00, $FB
- D 0 - I - 0x0144A6 05:8496: F8        .byte $F8, $A1, $00, $F8
- D 0 - I - 0x0144AA 05:849A: F8        .byte $F8, $A3, $00, $00

loc_npc_woman_frame_5:
- D 0 - I - 0x0144AE 05:849E: 05        .byte $05
- D 0 - I - 0x0144AF 05:849F: E0        .byte $E0, $A8, $00, $FC
- D 0 - I - 0x0144B3 05:84A3: E8        .byte $E8, $A9, $00, $F8
- D 0 - I - 0x0144B7 05:84A7: E8        .byte $E8, $AB, $00, $00
- D 0 - I - 0x0144BB 05:84AB: F0        .byte $F0, $AA, $00, $FC
- D 0 - I - 0x0144BF 05:84AF: F8        .byte $F8, $AC, $00, $FC

loc_npc_woman_frame_6:
- D 0 - I - 0x0144C3 05:84B3: 06        .byte $06
- D 0 - I - 0x0144C4 05:84B4: E0        .byte $E0, $AE, $00, $FC
- D 0 - I - 0x0144C8 05:84B8: E8        .byte $E8, $AD, $00, $F8
- D 0 - I - 0x0144CC 05:84BC: E8        .byte $E8, $AF, $00, $00
- D 0 - I - 0x0144D0 05:84C0: F0        .byte $F0, $B0, $00, $FD
- D 0 - I - 0x0144D4 05:84C4: F8        .byte $F8, $B1, $00, $F8
- D 0 - I - 0x0144D8 05:84C8: F8        .byte $F8, $B2, $00, $00

loc_npc_pharaoh_tomb_frame_2:
- D 0 - I - 0x0144DC 05:84CC: 0A        .byte $0A
- D 0 - I - 0x0144DD 05:84CD: D8        .byte $D8, $DD, $00, $F8
- D 0 - I - 0x0144E1 05:84D1: D8        .byte $D8, $DF, $00, $00
- D 0 - I - 0x0144E5 05:84D5: E0        .byte $E0, $E8, $00, $F8
- D 0 - I - 0x0144E9 05:84D9: E0        .byte $E0, $EA, $00, $00
- D 0 - I - 0x0144ED 05:84DD: E8        .byte $E8, $E9, $00, $F8
- D 0 - I - 0x0144F1 05:84E1: E8        .byte $E8, $EB, $00, $00
- D 0 - I - 0x0144F5 05:84E5: F0        .byte $F0, $EC, $00, $F8
- D 0 - I - 0x0144F9 05:84E9: F0        .byte $F0, $EE, $00, $00
- D 0 - I - 0x0144FD 05:84ED: F8        .byte $F8, $ED, $00, $F8
- D 0 - I - 0x014501 05:84F1: F8        .byte $F8, $EF, $00, $00

loc_npc_yi_frame_:
- D 0 - I - 0x014505 05:84F5: 04        .byte $04
- D 0 - I - 0x014506 05:84F6: E0        .byte $E0, $B4, $00, $FC
- D 0 - I - 0x01450A 05:84FA: E8        .byte $E8, $B5, $00, $FC
- D 0 - I - 0x01450E 05:84FE: F0        .byte $F0, $B6, $00, $FB
- D 0 - I - 0x014512 05:8502: F8        .byte $F8, $B7, $00, $FB

loc_npc_lian_frame_:
- D 0 - I - 0x014516 05:8506: 07        .byte $07
- D 0 - I - 0x014517 05:8507: E0        .byte $E0, $B3, $00, $FC
- D 0 - I - 0x01451B 05:850B: E8        .byte $E8, $B8, $00, $F8
- D 0 - I - 0x01451F 05:850F: E8        .byte $E8, $BA, $00, $00
- D 0 - I - 0x014523 05:8513: F0        .byte $F0, $B9, $00, $F8
- D 0 - I - 0x014527 05:8517: F0        .byte $F0, $BB, $00, $00
- D 0 - I - 0x01452B 05:851B: F8        .byte $F8, $BC, $00, $F8
- D 0 - I - 0x01452F 05:851F: F8        .byte $F8, $BE, $00, $00

loc_npc_san_frame_:
- D 0 - I - 0x014533 05:8523: 07        .byte $07
- D 0 - I - 0x014534 05:8524: E0        .byte $E0, $C6, $00, $FC
- D 0 - I - 0x014538 05:8528: E8        .byte $E8, $C5, $00, $F8
- D 0 - I - 0x01453C 05:852C: E8        .byte $E8, $C7, $00, $00
- D 0 - I - 0x014540 05:8530: F0        .byte $F0, $C8, $00, $F8
- D 0 - I - 0x014544 05:8534: F0        .byte $F0, $CA, $00, $00
- D 0 - I - 0x014548 05:8538: F8        .byte $F8, $C9, $00, $F8
- D 0 - I - 0x01454C 05:853C: F8        .byte $F8, $CB, $00, $00

loc_npc_suu_frame_:
- D 0 - I - 0x014550 05:8540: 07        .byte $07
- D 0 - I - 0x014551 05:8541: E0        .byte $E0, $C4, $00, $FC
- D 0 - I - 0x014555 05:8545: E8        .byte $E8, $BD, $00, $F8
- D 0 - I - 0x014559 05:8549: E8        .byte $E8, $BF, $00, $00
- D 0 - I - 0x01455D 05:854D: F0        .byte $F0, $C0, $00, $F8
- D 0 - I - 0x014561 05:8551: F0        .byte $F0, $C2, $00, $00
- D 0 - I - 0x014565 05:8555: F8        .byte $F8, $C1, $00, $F8
- D 0 - I - 0x014569 05:8559: F8        .byte $F8, $C3, $00, $00

loc_npc_fujiko_frame_2:
- D - - - - 0x01456D 05:855D: 08        .byte $08
- D - - - - 0x01456E 05:855E: E0        .byte $E0, $F0, $00, $F8
- D - - - - 0x014572 05:8562: E0        .byte $E0, $F2, $00, $00
- D - - - - 0x014576 05:8566: E8        .byte $E8, $F1, $00, $F8
- D - - - - 0x01457A 05:856A: E8        .byte $E8, $F3, $00, $00
- D - - - - 0x01457E 05:856E: F0        .byte $F0, $F4, $00, $F8
- D - - - - 0x014582 05:8572: F0        .byte $F0, $F6, $00, $00
- D - - - - 0x014586 05:8576: F8        .byte $F8, $F5, $00, $F8
- D - - - - 0x01458A 05:857A: F8        .byte $F8, $F7, $00, $00

loc_npc_pharaoh_tomb_frame_3:
- D 0 - I - 0x01458E 05:857E: 08        .byte $08
- D 0 - I - 0x01458F 05:857F: E0        .byte $E0, $E0, $00, $F8
- D 0 - I - 0x014593 05:8583: E0        .byte $E0, $E2, $00, $00
- D 0 - I - 0x014597 05:8587: E8        .byte $E8, $E1, $00, $F8
- D 0 - I - 0x01459B 05:858B: E8        .byte $E8, $E3, $00, $00
- D 0 - I - 0x01459F 05:858F: F0        .byte $F0, $E4, $00, $F8
- D 0 - I - 0x0145A3 05:8593: F0        .byte $F0, $E6, $00, $00
- D 0 - I - 0x0145A7 05:8597: F8        .byte $F8, $E5, $00, $F8
- D 0 - I - 0x0145AB 05:859B: F8        .byte $F8, $E7, $00, $00

loc_npc_zenigata_frame_2:
- D 0 - I - 0x0145AF 05:859F: 08        .byte $08
- D 0 - I - 0x0145B0 05:85A0: E1        .byte $E1, $94, $40, $00
- D 0 - I - 0x0145B4 05:85A4: E1        .byte $E1, $96, $40, $F8
- D 0 - I - 0x0145B8 05:85A8: E9        .byte $E9, $95, $40, $00
- D 0 - I - 0x0145BC 05:85AC: E9        .byte $E9, $97, $40, $F8
- D 0 - I - 0x0145C0 05:85B0: F1        .byte $F1, $91, $40, $F8
- D 0 - I - 0x0145C4 05:85B4: F1        .byte $F1, $91, $00, $00
- D 0 - I - 0x0145C8 05:85B8: F9        .byte $F9, $93, $40, $F6
- D 0 - I - 0x0145CC 05:85BC: F9        .byte $F9, $93, $00, $02

; Lupin or Jigen
loc_npc_prisoner_frame_1:
- D 0 - I - 0x0145D0 05:85C0: 04        .byte $04
- D 0 - I - 0x0145D1 05:85C1: E0        .byte $E0, $86, $40, $FC
- D 0 - I - 0x0145D5 05:85C5: E8        .byte $E8, $A0, $00, $FC
- D 0 - I - 0x0145D9 05:85C9: F0        .byte $F0, $A1, $00, $FC
- D 0 - I - 0x0145DD 05:85CD: F8        .byte $F8, $A2, $00, $FC

; Goemon
loc_npc_prisoner_frame_2:
- D 0 - I - 0x0145E1 05:85D1: 04        .byte $04
- D 0 - I - 0x0145E2 05:85D2: E1        .byte $E1, $DA, $40, $FC
- D 0 - I - 0x0145E6 05:85D6: E8        .byte $E8, $F8, $00, $FD
- D 0 - I - 0x0145EA 05:85DA: F0        .byte $F0, $F9, $00, $FD
- D 0 - I - 0x0145EE 05:85DE: F8        .byte $F8, $FA, $00, $FD

loc_prisoner_rope_frame_1:
- D 0 - I - 0x0145F2 05:85E2: 01        .byte $01
- D 0 - I - 0x0145F3 05:85E3: EC        .byte $EC, $BC, $00, $FD

loc_prisoner_rope_frame_2:
- D 0 - I - 0x0145F7 05:85E7: 02        .byte $02
- D 0 - I - 0x0145F8 05:85E8: EE        .byte $EE, $BA, $00, $FD
- D 0 - I - 0x0145FC 05:85EC: F6        .byte $F6, $BB, $00, $FD

loc_prisoner_rope_frame_3:
- D 0 - I - 0x014600 05:85F0: 01        .byte $01
- D 0 - I - 0x014601 05:85F1: F8        .byte $F8, $BD, $00, $FD

loc_empty_frame_:
- D 0 - I - 0x014605 05:85F5: 00        .byte $00

loc_lupin_jigen_stand_right_frame_:
- D 0 - I - 0x014606 05:85F6: 08        .byte $08                 ; Tile count
- D 0 - I - 0x014607 05:85F7: E0        .byte $E0, $53, $00, $FD
- D 0 - I - 0x01460B 05:85FB: E8        .byte $E8, $54, $00, $F8
- D 0 - I - 0x01460F 05:85FF: E8        .byte $E8, $56, $00, $00
- D 0 - I - 0x014613 05:8603: E8        .byte $E8, $65, $00, $08
- D 0 - I - 0x014617 05:8607: F0        .byte $F0, $58, $00, $F8
- D 0 - I - 0x01461B 05:860B: F0        .byte $F0, $5A, $00, $00
- D 0 - I - 0x01461F 05:860F: F8        .byte $F8, $59, $00, $F8
- D 0 - I - 0x014623 05:8613: F8        .byte $F8, $5B, $00, $00

loc_lupin_jigen_stand_left_frame_:
- D 0 - I - 0x014627 05:8617: 08        .byte $08
- D 0 - I - 0x014628 05:8618: E0        .byte $E0, $53, $40, $FB
- D 0 - I - 0x01462C 05:861C: E8        .byte $E8, $54, $40, $00
- D 0 - I - 0x014630 05:8620: E8        .byte $E8, $56, $40, $F8
- D 0 - I - 0x014634 05:8624: E8        .byte $E8, $65, $40, $F0
- D 0 - I - 0x014638 05:8628: F0        .byte $F0, $58, $40, $00
- D 0 - I - 0x01463C 05:862C: F0        .byte $F0, $5A, $40, $F8
- D 0 - I - 0x014640 05:8630: F8        .byte $F8, $59, $40, $00
- D 0 - I - 0x014644 05:8634: F8        .byte $F8, $5B, $40, $F8

loc_lupin_jigen_run_right_frame_1:
- D 0 - I - 0x014648 05:8638: 06        .byte $06
- D 0 - I - 0x014649 05:8639: E0        .byte $E0, $44, $00, $FF
- D 0 - I - 0x01464D 05:863D: E8        .byte $E8, $40, $00, $F8
- D 0 - I - 0x014651 05:8641: E8        .byte $E8, $42, $00, $00
- D 0 - I - 0x014655 05:8645: F0        .byte $F0, $41, $00, $F8
- D 0 - I - 0x014659 05:8649: F0        .byte $F0, $43, $00, $00
- D 0 - I - 0x01465D 05:864D: F8        .byte $F8, $45, $00, $00

loc_lupin_jigen_run_left_frame_1:
- D 0 - I - 0x014661 05:8651: 06        .byte $06
- D 0 - I - 0x014662 05:8652: E0        .byte $E0, $44, $40, $F9
- D 0 - I - 0x014666 05:8656: E8        .byte $E8, $40, $40, $00
- D 0 - I - 0x01466A 05:865A: E8        .byte $E8, $42, $40, $F8
- D 0 - I - 0x01466E 05:865E: F0        .byte $F0, $41, $40, $00
- D 0 - I - 0x014672 05:8662: F0        .byte $F0, $43, $40, $F8
- D 0 - I - 0x014676 05:8666: F8        .byte $F8, $45, $40, $F8

loc_lupin_jigen_run_right_frame_2:
- D 0 - I - 0x01467A 05:866A: 06        .byte $06
- D 0 - I - 0x01467B 05:866B: E0        .byte $E0, $46, $00, $FF
- D 0 - I - 0x01467F 05:866F: E8        .byte $E8, $48, $00, $F8
- D 0 - I - 0x014683 05:8673: E8        .byte $E8, $4A, $00, $00
- D 0 - I - 0x014687 05:8677: F0        .byte $F0, $49, $00, $F8
- D 0 - I - 0x01468B 05:867B: F0        .byte $F0, $4B, $00, $00
- D 0 - I - 0x01468F 05:867F: F8        .byte $F8, $47, $00, $FA

loc_lupin_jigen_run_left_frame_2:
- D 0 - I - 0x014693 05:8683: 06        .byte $06
- D 0 - I - 0x014694 05:8684: E0        .byte $E0, $46, $40, $F9
- D 0 - I - 0x014698 05:8688: E8        .byte $E8, $48, $40, $00
- D 0 - I - 0x01469C 05:868C: E8        .byte $E8, $4A, $40, $F8
- D 0 - I - 0x0146A0 05:8690: F0        .byte $F0, $49, $40, $00
- D 0 - I - 0x0146A4 05:8694: F0        .byte $F0, $4B, $40, $F8
- D 0 - I - 0x0146A8 05:8698: F8        .byte $F8, $47, $40, $FE

loc_lupin_jigen_run_right_frame_3:
- D 0 - I - 0x0146AC 05:869C: 07        .byte $07
- D 0 - I - 0x0146AD 05:869D: E0        .byte $E0, $52, $00, $FF
- D 0 - I - 0x0146B1 05:86A1: E8        .byte $E8, $4C, $00, $F8
- D 0 - I - 0x0146B5 05:86A5: E8        .byte $E8, $4E, $00, $00
- D 0 - I - 0x0146B9 05:86A9: F0        .byte $F0, $4D, $00, $F8
- D 0 - I - 0x0146BD 05:86AD: F0        .byte $F0, $4F, $00, $00
- D 0 - I - 0x0146C1 05:86B1: F8        .byte $F8, $50, $00, $F8
- D 0 - I - 0x0146C5 05:86B5: F8        .byte $F8, $51, $00, $00

loc_lupin_jigen_run_left_frame_3:
- D 0 - I - 0x0146C9 05:86B9: 07        .byte $07
- D 0 - I - 0x0146CA 05:86BA: E0        .byte $E0, $52, $40, $F9
- D 0 - I - 0x0146CE 05:86BE: E8        .byte $E8, $4C, $40, $00
- D 0 - I - 0x0146D2 05:86C2: E8        .byte $E8, $4E, $40, $F8
- D 0 - I - 0x0146D6 05:86C6: F0        .byte $F0, $4D, $40, $00
- D 0 - I - 0x0146DA 05:86CA: F0        .byte $F0, $4F, $40, $F8
- D 0 - I - 0x0146DE 05:86CE: F8        .byte $F8, $50, $40, $00
- D 0 - I - 0x0146E2 05:86D2: F8        .byte $F8, $51, $40, $F8

loc_lupin_jigen_broken_right_frame_:
- D - - - - 0x0146E6 05:86D6: 06        .byte $06
- D - - - - 0x0146E7 05:86D7: E8        .byte $E8, $60, $00, $F8
- D - - - - 0x0146EB 05:86DB: E8        .byte $E8, $62, $00, $00
- D - - - - 0x0146EF 05:86DF: F0        .byte $F0, $61, $00, $F8
- D - - - - 0x0146F3 05:86E3: F0        .byte $F0, $63, $00, $00
- D - - - - 0x0146F7 05:86E7: F8        .byte $F8, $64, $00, $F8
- D - - - - 0x0146FB 05:86EB: F8        .byte $F8, $66, $00, $00

loc_lupin_jigen_broken_left_frame_:
- D - - - - 0x0146FF 05:86EF: 06        .byte $06
- D - - - - 0x014700 05:86F0: E8        .byte $E8, $60, $40, $00
- D - - - - 0x014704 05:86F4: E8        .byte $E8, $62, $40, $F8
- D - - - - 0x014708 05:86F8: F0        .byte $F0, $61, $40, $00
- D - - - - 0x01470C 05:86FC: F0        .byte $F0, $63, $40, $F8
- D - - - - 0x014710 05:8700: F8        .byte $F8, $64, $40, $00
- D - - - - 0x014714 05:8704: F8        .byte $F8, $66, $40, $F8

loc_lupin_jigen_sit_right_frame_:
- D 0 - I - 0x014718 05:8708: 06        .byte $06
- D 0 - I - 0x014719 05:8709: E8        .byte $E8, $5C, $00, $00
- D 0 - I - 0x01471D 05:870D: F0        .byte $F0, $5D, $00, $F8
- D 0 - I - 0x014721 05:8711: F0        .byte $F0, $5E, $00, $00
- D 0 - I - 0x014725 05:8715: F0        .byte $F0, $65, $00, $08
- D 0 - I - 0x014729 05:8719: F8        .byte $F8, $55, $00, $F8
- D 0 - I - 0x01472D 05:871D: F8        .byte $F8, $57, $00, $00

loc_lupin_jigen_sit_left_frame_:
- D 0 - I - 0x014731 05:8721: 06        .byte $06
- D 0 - I - 0x014732 05:8722: E8        .byte $E8, $5C, $40, $F8
- D 0 - I - 0x014736 05:8726: F0        .byte $F0, $5D, $40, $00
- D 0 - I - 0x01473A 05:872A: F0        .byte $F0, $5E, $40, $F8
- D 0 - I - 0x01473E 05:872E: F0        .byte $F0, $65, $40, $F0
- D 0 - I - 0x014742 05:8732: F8        .byte $F8, $55, $40, $00
- D 0 - I - 0x014746 05:8736: F8        .byte $F8, $57, $40, $F8

loc_lupin_jigen_fall_right_frame_:
- D 0 - I - 0x01474A 05:873A: 06        .byte $06
- D 0 - I - 0x01474B 05:873B: F0        .byte $F0, $64, $C0, $00
- D 0 - I - 0x01474F 05:873F: F0        .byte $F0, $66, $C0, $F8
- D 0 - I - 0x014753 05:8743: F0        .byte $F0, $67, $40, $F1
- D 0 - I - 0x014757 05:8747: F8        .byte $F8, $68, $40, $00
- D 0 - I - 0x01475B 05:874B: F8        .byte $F8, $6A, $40, $F8
- D 0 - I - 0x01475F 05:874F: F8        .byte $F8, $69, $40, $F0

loc_lupin_jigen_fall_left_frame_:
- D 0 - I - 0x014763 05:8753: 06        .byte $06
- D 0 - I - 0x014764 05:8754: F0        .byte $F0, $64, $80, $F8
- D 0 - I - 0x014768 05:8758: F0        .byte $F0, $66, $80, $00
- D 0 - I - 0x01476C 05:875C: F0        .byte $F0, $67, $00, $07
- D 0 - I - 0x014770 05:8760: F8        .byte $F8, $68, $00, $F8
- D 0 - I - 0x014774 05:8764: F8        .byte $F8, $6A, $00, $00
- D 0 - I - 0x014778 05:8768: F8        .byte $F8, $69, $00, $08

loc_lupin_jigen_lie_right_frame_:
- D 0 - I - 0x01477C 05:876C: 04        .byte $04
- D 0 - I - 0x01477D 05:876D: F8        .byte $F8, $6B, $40, $08
- D 0 - I - 0x014781 05:8771: F8        .byte $F8, $6C, $40, $00
- D 0 - I - 0x014785 05:8775: F8        .byte $F8, $6E, $40, $F8
- D 0 - I - 0x014789 05:8779: F8        .byte $F8, $6D, $40, $F0

loc_lupin_jigen_lie_left_frame_:
- D 0 - I - 0x01478D 05:877D: 04        .byte $04
- D 0 - I - 0x01478E 05:877E: F8        .byte $F8, $6B, $00, $F0
- D 0 - I - 0x014792 05:8782: F8        .byte $F8, $6C, $00, $F8
- D 0 - I - 0x014796 05:8786: F8        .byte $F8, $6E, $00, $00
- D 0 - I - 0x01479A 05:878A: F8        .byte $F8, $6D, $00, $08

loc_lupin_jigen_descend_right_frame_:
- D 0 - I - 0x01479E 05:878E: 08        .byte $08
- D 0 - I - 0x01479F 05:878F: E0        .byte $E0, $6F, $00, $F8
- D 0 - I - 0x0147A3 05:8793: E0        .byte $E0, $44, $00, $FF
- D 0 - I - 0x0147A7 05:8797: E8        .byte $E8, $74, $00, $F8
- D 0 - I - 0x0147AB 05:879B: E8        .byte $E8, $78, $00, $00
- D 0 - I - 0x0147AF 05:879F: F0        .byte $F0, $4D, $00, $F8
- D 0 - I - 0x0147B3 05:87A3: F0        .byte $F0, $4F, $00, $00
- D 0 - I - 0x0147B7 05:87A7: F8        .byte $F8, $50, $00, $F8
- D 0 - I - 0x0147BB 05:87AB: F8        .byte $F8, $51, $00, $00

loc_lupin_jigen_descend_left_frame_:
- D 0 - I - 0x0147BF 05:87AF: 08        .byte $08
- D 0 - I - 0x0147C0 05:87B0: E0        .byte $E0, $6F, $40, $00
- D 0 - I - 0x0147C4 05:87B4: E0        .byte $E0, $44, $40, $F9
- D 0 - I - 0x0147C8 05:87B8: E8        .byte $E8, $74, $40, $00
- D 0 - I - 0x0147CC 05:87BC: E8        .byte $E8, $78, $40, $F8
- D 0 - I - 0x0147D0 05:87C0: F0        .byte $F0, $4D, $40, $00
- D 0 - I - 0x0147D4 05:87C4: F0        .byte $F0, $4F, $40, $F8
- D 0 - I - 0x0147D8 05:87C8: F8        .byte $F8, $50, $40, $00
- D 0 - I - 0x0147DC 05:87CC: F8        .byte $F8, $51, $40, $F8

loc_lupin_jigen_turn_away_frame_1:
- D 0 - I - 0x0147E0 05:87D0: 04        .byte $04
- D 0 - I - 0x0147E1 05:87D1: E0        .byte $E0, $70, $40, $FD
- D 0 - I - 0x0147E5 05:87D5: E8        .byte $E8, $71, $40, $FD
- D 0 - I - 0x0147E9 05:87D9: F0        .byte $F0, $72, $40, $FC
- D 0 - I - 0x0147ED 05:87DD: F8        .byte $F8, $73, $40, $FC

loc_lupin_jigen_turn_away_frame_2:
- D 0 - I - 0x0147F1 05:87E1: 04        .byte $04
- D 0 - I - 0x0147F2 05:87E2: E0        .byte $E0, $70, $00, $FB
- D 0 - I - 0x0147F6 05:87E6: E8        .byte $E8, $71, $00, $FB
- D 0 - I - 0x0147FA 05:87EA: F0        .byte $F0, $72, $00, $FC
- D 0 - I - 0x0147FE 05:87EE: F8        .byte $F8, $73, $00, $FC

loc_lupin_jigen_look_at_us_frame_1:
- D 0 - I - 0x014802 05:87F2: 04        .byte $04
- D 0 - I - 0x014803 05:87F3: E0        .byte $E0, $75, $40, $FD
- D 0 - I - 0x014807 05:87F7: E8        .byte $E8, $76, $40, $FD
- D 0 - I - 0x01480B 05:87FB: F0        .byte $F0, $77, $40, $FC
- D 0 - I - 0x01480F 05:87FF: F8        .byte $F8, $79, $40, $FC

loc_lupin_jigen_look_at_us_frame_2:
- D 0 - I - 0x014813 05:8803: 04        .byte $04
- D 0 - I - 0x014814 05:8804: E0        .byte $E0, $75, $00, $FB
- D 0 - I - 0x014818 05:8808: E8        .byte $E8, $76, $00, $FB
- D 0 - I - 0x01481C 05:880C: F0        .byte $F0, $77, $00, $FC
- D 0 - I - 0x014820 05:8810: F8        .byte $F8, $79, $00, $FC

loc_goemon_stand_right_frame_:
- D 0 - I - 0x014824 05:8814: 07        .byte $07                 ; Tile count
- D 0 - I - 0x014825 05:8815: E1        .byte $E1, $58, $00, $F8
- D 0 - I - 0x014829 05:8819: E1        .byte $E1, $5A, $00, $00
- D 0 - I - 0x01482D 05:881D: E9        .byte $E9, $59, $00, $F8
- D 0 - I - 0x014831 05:8821: F0        .byte $F0, $5C, $00, $F6
- D 0 - I - 0x014835 05:8825: F0        .byte $F0, $5E, $00, $FE
- D 0 - I - 0x014839 05:8829: F8        .byte $F8, $5D, $00, $F6
- D 0 - I - 0x01483D 05:882D: F8        .byte $F8, $5F, $00, $FE

- D 0 - I - 0x014841 05:8831: E9        .byte $E9, $5B, $00, $00
- D 0 - I - 0x014845 05:8835: E9        .byte $E9, $63, $00, $00

loc_goemon_stand_left_frame_:
- D 0 - I - 0x014849 05:8839: 07        .byte $07
- D 0 - I - 0x01484A 05:883A: E1        .byte $E1, $58, $40, $00
- D 0 - I - 0x01484E 05:883E: E1        .byte $E1, $5A, $40, $F8
- D 0 - I - 0x014852 05:8842: E9        .byte $E9, $59, $40, $00
- D 0 - I - 0x014856 05:8846: F0        .byte $F0, $5C, $40, $02
- D 0 - I - 0x01485A 05:884A: F0        .byte $F0, $5E, $40, $FA
- D 0 - I - 0x01485E 05:884E: F8        .byte $F8, $5D, $40, $02
 
- D 0 - I - 0x014862 05:8852: F8        .byte $F8, $5F, $40, $FA
- D 0 - I - 0x014866 05:8856: E9        .byte $E9, $5B, $40, $F8
- D 0 - I - 0x01486A 05:885A: E9        .byte $E9, $63, $40, $F8

loc_goemon_run_right_frame_1:
- D 0 - I - 0x01486E 05:885E: 06        .byte $06
- D 0 - I - 0x01486F 05:885F: E8        .byte $E8, $4A, $00, $F7
- D 0 - I - 0x014873 05:8863: E8        .byte $E8, $42, $00, $FF
- D 0 - I - 0x014877 05:8867: F0        .byte $F0, $41, $00, $F0
- D 0 - I - 0x01487B 05:886B: F0        .byte $F0, $4C, $00, $F8
- D 0 - I - 0x01487F 05:886F: F8        .byte $F8, $4D, $00, $F0
- D 0 - I - 0x014883 05:8873: F8        .byte $F8, $4F, $00, $F8

- D 0 - I - 0x014887 05:8877: F0        .byte $F0, $4E, $00, $00
- D 0 - I - 0x01488B 05:887B: F0        .byte $F0, $52, $00, $00

loc_goemon_run_left_frame_1:
- D 0 - I - 0x01488F 05:887F: 06        .byte $06
- D 0 - I - 0x014890 05:8880: E8        .byte $E8, $4A, $40, $01
- D 0 - I - 0x014894 05:8884: E8        .byte $E8, $42, $40, $F9
- D 0 - I - 0x014898 05:8888: F0        .byte $F0, $41, $40, $08
- D 0 - I - 0x01489C 05:888C: F0        .byte $F0, $4C, $40, $00
- D 0 - I - 0x0148A0 05:8890: F8        .byte $F8, $4D, $40, $08
- D 0 - I - 0x0148A4 05:8894: F8        .byte $F8, $4F, $40, $00

- D 0 - I - 0x0148A8 05:8898: F0        .byte $F0, $4E, $40, $F8
- D 0 - I - 0x0148AC 05:889C: F0        .byte $F0, $52, $40, $F8

loc_goemon_run_right_frame_2:
- D 0 - I - 0x0148B0 05:88A0: 06        .byte $06
- D 0 - I - 0x0148B1 05:88A1: E8        .byte $E8, $40, $00, $F8
- D 0 - I - 0x0148B5 05:88A5: E8        .byte $E8, $42, $00, $00
- D 0 - I - 0x0148B9 05:88A9: F0        .byte $F0, $41, $00, $F0
- D 0 - I - 0x0148BD 05:88AD: F0        .byte $F0, $43, $00, $F8
- D 0 - I - 0x0148C1 05:88B1: F8        .byte $F8, $49, $00, $F3
- D 0 - I - 0x0148C5 05:88B5: F8        .byte $F8, $4B, $00, $FB

- D 0 - I - 0x0148C9 05:88B9: F0        .byte $F0, $48, $00, $00
- D 0 - I - 0x0148CD 05:88BD: F0        .byte $F0, $51, $00, $00

loc_goemon_run_left_frame_2:
- D 0 - I - 0x0148D1 05:88C1: 06        .byte $06
- D 0 - I - 0x0148D2 05:88C2: E8        .byte $E8, $40, $40, $00
- D 0 - I - 0x0148D6 05:88C6: E8        .byte $E8, $42, $40, $F8
- D 0 - I - 0x0148DA 05:88CA: F0        .byte $F0, $41, $40, $08
- D 0 - I - 0x0148DE 05:88CE: F0        .byte $F0, $43, $40, $00
- D 0 - I - 0x0148E2 05:88D2: F8        .byte $F8, $49, $40, $05
- D 0 - I - 0x0148E6 05:88D6: F8        .byte $F8, $4B, $40, $FD

- D 0 - I - 0x0148EA 05:88DA: F0        .byte $F0, $48, $40, $F8
- D 0 - I - 0x0148EE 05:88DE: F0        .byte $F0, $51, $40, $F8

loc_goemon_run_right_frame_3:
- D 0 - I - 0x0148F2 05:88E2: 07        .byte $07
- D 0 - I - 0x0148F3 05:88E3: E8        .byte $E8, $40, $00, $F6
- D 0 - I - 0x0148F7 05:88E7: E8        .byte $E8, $42, $00, $FE
- D 0 - I - 0x0148FB 05:88EB: F0        .byte $F0, $41, $00, $F0
- D 0 - I - 0x0148FF 05:88EF: F0        .byte $F0, $43, $00, $F8
- D 0 - I - 0x014903 05:88F3: FB        .byte $FB, $46, $00, $EF
- D 0 - I - 0x014907 05:88F7: F8        .byte $F8, $45, $00, $F7
- D 0 - I - 0x01490B 05:88FB: F8        .byte $F8, $47, $00, $FF

- D 0 - I - 0x01490F 05:88FF: F0        .byte $F0, $44, $00, $00
- D 0 - I - 0x014913 05:8903: F0        .byte $F0, $50, $00, $00

loc_goemon_run_left_frame_3:
- D 0 - I - 0x014917 05:8907: 07        .byte $07
- D 0 - I - 0x014918 05:8908: E8        .byte $E8, $40, $40, $02
- D 0 - I - 0x01491C 05:890C: E8        .byte $E8, $42, $40, $FA
- D 0 - I - 0x014920 05:8910: F0        .byte $F0, $41, $40, $08
- D 0 - I - 0x014924 05:8914: F0        .byte $F0, $43, $40, $00
- D 0 - I - 0x014928 05:8918: FB        .byte $FB, $46, $40, $09
- D 0 - I - 0x01492C 05:891C: F8        .byte $F8, $45, $40, $01
- D 0 - I - 0x014930 05:8920: F8        .byte $F8, $47, $40, $F9

- D 0 - I - 0x014934 05:8924: F0        .byte $F0, $44, $40, $F8
- D 0 - I - 0x014938 05:8928: F0        .byte $F0, $50, $40, $F8

loc_goemon_broken_right_frame_:
- D - - - - 0x01493C 05:892C: 08        .byte $08
- D - - - - 0x01493D 05:892D: EC        .byte $EC, $4A, $00, $F7
- D - - - - 0x014941 05:8931: EC        .byte $EC, $42, $00, $FF
- D - - - - 0x014945 05:8935: F4        .byte $F4, $41, $00, $F0
- D - - - - 0x014949 05:8939: F4        .byte $F4, $43, $00, $F8
- D - - - - 0x01494D 05:893D: FB        .byte $FB, $46, $00, $F0
- D - - - - 0x014951 05:8941: FC        .byte $FC, $54, $00, $F8
- D - - - - 0x014955 05:8945: FC        .byte $FC, $56, $00, $00
- D - - - - 0x014959 05:8949: F4        .byte $F4, $55, $00, $00

loc_goemon_broken_left_frame_:
- D - - - - 0x01495D 05:894D: 08        .byte $08
- D - - - - 0x01495E 05:894E: EC        .byte $EC, $4A, $40, $01
- D - - - - 0x014962 05:8952: EC        .byte $EC, $42, $40, $F9
- D - - - - 0x014966 05:8956: F4        .byte $F4, $41, $40, $08
- D - - - - 0x01496A 05:895A: F4        .byte $F4, $43, $40, $00
- D - - - - 0x01496E 05:895E: FB        .byte $FB, $46, $40, $08
- D - - - - 0x014972 05:8962: FC        .byte $FC, $54, $40, $00
- D - - - - 0x014976 05:8966: FC        .byte $FC, $56, $40, $F8
- D - - - - 0x01497A 05:896A: F4        .byte $F4, $55, $40, $F8

loc_goemon_sit_right_frame_:
- D 0 - I - 0x01497E 05:896E: 07        .byte $07
- D 0 - I - 0x01497F 05:896F: EC        .byte $EC, $40, $00, $F7
- D 0 - I - 0x014983 05:8973: EC        .byte $EC, $42, $00, $FF
- D 0 - I - 0x014987 05:8977: F4        .byte $F4, $41, $00, $F0
- D 0 - I - 0x01498B 05:897B: F4        .byte $F4, $43, $00, $F8
- D 0 - I - 0x01498F 05:897F: FB        .byte $FB, $46, $00, $F0
- D 0 - I - 0x014993 05:8983: FC        .byte $FC, $54, $00, $F8
- D 0 - I - 0x014997 05:8987: FC        .byte $FC, $56, $00, $00

- D 0 - I - 0x01499B 05:898B: F4        .byte $F4, $55, $00, $00
- D 0 - I - 0x01499F 05:898F: F4        .byte $F4, $57, $00, $00

loc_goemon_sit_left_frame_:
- D 0 - I - 0x0149A3 05:8993: 07        .byte $07
- D 0 - I - 0x0149A4 05:8994: EC        .byte $EC, $40, $40, $01
- D 0 - I - 0x0149A8 05:8998: EC        .byte $EC, $42, $40, $F9
- D 0 - I - 0x0149AC 05:899C: F4        .byte $F4, $41, $40, $08
- D 0 - I - 0x0149B0 05:89A0: F4        .byte $F4, $43, $40, $00
- D 0 - I - 0x0149B4 05:89A4: FB        .byte $FB, $46, $40, $08
- D 0 - I - 0x0149B8 05:89A8: FC        .byte $FC, $54, $40, $00
- D 0 - I - 0x0149BC 05:89AC: FC        .byte $FC, $56, $40, $F8

- D 0 - I - 0x0149C0 05:89B0: F4        .byte $F4, $55, $40, $F8
- D 0 - I - 0x0149C4 05:89B4: F4        .byte $F4, $57, $40, $F8

loc_goemon_fall_right_frame_:
- D 0 - I - 0x0149C8 05:89B8: 06        .byte $06
- D 0 - I - 0x0149C9 05:89B9: F0        .byte $F0, $6A, $00, $F1
- D 0 - I - 0x0149CD 05:89BD: F0        .byte $F0, $4B, $C0, $FB
- D 0 - I - 0x0149D1 05:89C1: F0        .byte $F0, $49, $C0, $03
- D 0 - I - 0x0149D5 05:89C5: F8        .byte $F8, $69, $00, $F0
- D 0 - I - 0x0149D9 05:89C9: F8        .byte $F8, $6B, $00, $F8
- D 0 - I - 0x0149DD 05:89CD: F8        .byte $F8, $6C, $00, $00

loc_goemon_fall_left_frame_:
- D 0 - I - 0x0149E1 05:89D1: 06        .byte $06
- D 0 - I - 0x0149E2 05:89D2: F0        .byte $F0, $6A, $40, $07
- D 0 - I - 0x0149E6 05:89D6: F0        .byte $F0, $4B, $80, $FD
- D 0 - I - 0x0149EA 05:89DA: F0        .byte $F0, $49, $80, $F5
- D 0 - I - 0x0149EE 05:89DE: F8        .byte $F8, $69, $40, $08
- D 0 - I - 0x0149F2 05:89E2: F8        .byte $F8, $6B, $40, $00
- D 0 - I - 0x0149F6 05:89E6: F8        .byte $F8, $6C, $40, $F8

loc_goemon_lie_right_frame_:
- D 0 - I - 0x0149FA 05:89EA: 04        .byte $04
- D 0 - I - 0x0149FB 05:89EB: F8        .byte $F8, $6D, $00, $F0
- D 0 - I - 0x0149FF 05:89EF: F8        .byte $F8, $6F, $00, $F8
- D 0 - I - 0x014A03 05:89F3: F8        .byte $F8, $6E, $00, $00
- D 0 - I - 0x014A07 05:89F7: F8        .byte $F8, $70, $00, $08

loc_goemon_lie_left_frame_:
- D 0 - I - 0x014A0B 05:89FB: 04        .byte $04
- D 0 - I - 0x014A0C 05:89FC: F8        .byte $F8, $6D, $40, $08
- D 0 - I - 0x014A10 05:8A00: F8        .byte $F8, $6F, $40, $00
- D 0 - I - 0x014A14 05:8A04: F8        .byte $F8, $6E, $40, $F8
- D 0 - I - 0x014A18 05:8A08: F8        .byte $F8, $70, $40, $F0

loc_goemon_descend_right_frame_:
- D 0 - I - 0x014A1C 05:8A0C: 07        .byte $07
- D 0 - I - 0x014A1D 05:8A0D: E0        .byte $E0, $58, $00, $F8
- D 0 - I - 0x014A21 05:8A11: E0        .byte $E0, $5A, $00, $00
- D 0 - I - 0x014A25 05:8A15: E8        .byte $E8, $41, $00, $F3
- D 0 - I - 0x014A29 05:8A19: E8        .byte $E8, $43, $00, $FB
- D 0 - I - 0x014A2D 05:8A1D: F0        .byte $F0, $7E, $00, $FA
- D 0 - I - 0x014A31 05:8A21: F0        .byte $F0, $47, $00, $02
- D 0 - I - 0x014A35 05:8A25: F8        .byte $F8, $7F, $00, $F8

- D 0 - I - 0x014A39 05:8A29: E8        .byte $E8, $7D, $00, $03
- D 0 - I - 0x014A3D 05:8A2D: E8        .byte $E8, $50, $00, $03

loc_goemon_descend_left_frame_:
- D 0 - I - 0x014A41 05:8A31: 07        .byte $07
- D 0 - I - 0x014A42 05:8A32: E0        .byte $E0, $58, $40, $00
- D 0 - I - 0x014A46 05:8A36: E0        .byte $E0, $5A, $40, $F8
- D 0 - I - 0x014A4A 05:8A3A: E8        .byte $E8, $41, $40, $05
- D 0 - I - 0x014A4E 05:8A3E: E8        .byte $E8, $43, $40, $FD
- D 0 - I - 0x014A52 05:8A42: F0        .byte $F0, $7E, $40, $FE
- D 0 - I - 0x014A56 05:8A46: F0        .byte $F0, $47, $40, $FA
- D 0 - I - 0x014A5A 05:8A4A: F8        .byte $F8, $7F, $40, $00

- D 0 - I - 0x014A5E 05:8A4E: E8        .byte $E8, $7D, $40, $F5
- D 0 - I - 0x014A62 05:8A52: E8        .byte $E8, $50, $40, $F5

loc_goemon_turn_away_frame_1:
- D 0 - I - 0x014A66 05:8A56: 04        .byte $04
- D 0 - I - 0x014A67 05:8A57: E0        .byte $E0, $60, $00, $FC
- D 0 - I - 0x014A6B 05:8A5B: E8        .byte $E8, $61, $00, $FC
- D 0 - I - 0x014A6F 05:8A5F: F0        .byte $F0, $62, $00, $FC
- D 0 - I - 0x014A73 05:8A63: F8        .byte $F8, $63, $00, $FC

loc_goemon_turn_away_frame_2:
- D 0 - I - 0x014A77 05:8A67: 04        .byte $04
- D 0 - I - 0x014A78 05:8A68: E0        .byte $E0, $60, $40, $FC
- D 0 - I - 0x014A7C 05:8A6C: E8        .byte $E8, $61, $40, $FC
- D 0 - I - 0x014A80 05:8A70: F0        .byte $F0, $62, $40, $FC
- D 0 - I - 0x014A84 05:8A74: F8        .byte $F8, $63, $40, $FC

loc_goemon_look_at_us_frame_1:
- D 0 - I - 0x014A88 05:8A78: 04        .byte $04
- D 0 - I - 0x014A89 05:8A79: E0        .byte $E0, $64, $00, $FC
- D 0 - I - 0x014A8D 05:8A7D: E8        .byte $E8, $65, $00, $FC
- D 0 - I - 0x014A91 05:8A81: F0        .byte $F0, $66, $00, $FC
- D 0 - I - 0x014A95 05:8A85: F8        .byte $F8, $67, $00, $FC

loc_goemon_look_at_us_frame_2:
- D 0 - I - 0x014A99 05:8A89: 04        .byte $04
- D 0 - I - 0x014A9A 05:8A8A: E0        .byte $E0, $64, $40, $FC
- D 0 - I - 0x014A9E 05:8A8E: E8        .byte $E8, $65, $40, $FC
- D 0 - I - 0x014AA2 05:8A92: F0        .byte $F0, $66, $40, $FC
- D 0 - I - 0x014AA6 05:8A96: F8        .byte $F8, $67, $40, $FC

loc_goemon_sword_right_frame_5:
- D 0 - I - 0x014AAA 05:8A9A: 03        .byte $03
- D 0 - I - 0x014AAB 05:8A9B: FD        .byte $FD, $71, $00, $FD
- D 0 - I - 0x014AAF 05:8A9F: 05        .byte $05, $74, $00, $00
- D 0 - I - 0x014AB3 05:8AA3: 08        .byte $08, $75, $00, $F8

loc_goemon_sword_right_frame_4:
- D 0 - I - 0x014AB7 05:8AA7: 03        .byte $03
- D 0 - I - 0x014AB8 05:8AA8: FD        .byte $FD, $71, $00, $FD
- D 0 - I - 0x014ABC 05:8AAC: 05        .byte $05, $72, $00, $03
- D 0 - I - 0x014AC0 05:8AB0: 0D        .byte $0D, $73, $00, $FD

loc_goemon_sword_left_frame_1:
- D 0 - I - 0x014AC4 05:8AB4: 03        .byte $03
- D 0 - I - 0x014AC5 05:8AB5: FD        .byte $FD, $76, $00, $FF
- D 0 - I - 0x014AC9 05:8AB9: FD        .byte $FD, $77, $00, $07
- D 0 - I - 0x014ACD 05:8ABD: FD        .byte $FD, $75, $00, $0F

loc_goemon_sword_right_frame_3:
- D 0 - I - 0x014AD1 05:8AC1: 03        .byte $03
- D 0 - I - 0x014AD2 05:8AC2: FD        .byte $FD, $71, $00, $FD
- D 0 - I - 0x014AD6 05:8AC6: F8        .byte $F8, $72, $80, $03
- D 0 - I - 0x014ADA 05:8ACA: F0        .byte $F0, $73, $80, $FD

loc_goemon_sword_right_frame_2:
- D 0 - I - 0x014ADE 05:8ACE: 03        .byte $03
- D 0 - I - 0x014ADF 05:8ACF: FD        .byte $FD, $71, $00, $FD
- D 0 - I - 0x014AE3 05:8AD3: F8        .byte $F8, $74, $80, $00
- D 0 - I - 0x014AE7 05:8AD7: F6        .byte $F6, $75, $00, $F8

loc_goemon_sword_right_frame_1:
- D 0 - I - 0x014AEB 05:8ADB: 03        .byte $03
- D 0 - I - 0x014AEC 05:8ADC: FD        .byte $FD, $76, $40, $FE
- D 0 - I - 0x014AF0 05:8AE0: FD        .byte $FD, $77, $40, $F6
- D 0 - I - 0x014AF4 05:8AE4: FD        .byte $FD, $75, $00, $EE

loc_goemon_sword_left_frame_5:
- D 0 - I - 0x014AF8 05:8AE8: 03        .byte $03
- D 0 - I - 0x014AF9 05:8AE9: FD        .byte $FD, $71, $40, $00
- D 0 - I - 0x014AFD 05:8AED: 05        .byte $05, $74, $40, $FD
- D 0 - I - 0x014B01 05:8AF1: 08        .byte $08, $75, $00, $05

loc_goemon_sword_left_frame_4:
- D 0 - I - 0x014B05 05:8AF5: 03        .byte $03
- D 0 - I - 0x014B06 05:8AF6: FD        .byte $FD, $71, $40, $00
- D 0 - I - 0x014B0A 05:8AFA: 05        .byte $05, $72, $40, $FA
- D 0 - I - 0x014B0E 05:8AFE: 0D        .byte $0D, $73, $40, $00

loc_goemon_sword_left_frame_3:
- D 0 - I - 0x014B12 05:8B02: 03        .byte $03
- D 0 - I - 0x014B13 05:8B03: FD        .byte $FD, $71, $40, $00
- D 0 - I - 0x014B17 05:8B07: F8        .byte $F8, $72, $C0, $FA
- D 0 - I - 0x014B1B 05:8B0B: F0        .byte $F0, $73, $C0, $00

loc_goemon_sword_left_frame_2:
- D 0 - I - 0x014B1F 05:8B0F: 03        .byte $03
- D 0 - I - 0x014B20 05:8B10: FD        .byte $FD, $71, $40, $00
- D 0 - I - 0x014B24 05:8B14: F8        .byte $F8, $74, $C0, $FD
- D 0 - I - 0x014B28 05:8B18: F6        .byte $F6, $75, $00, $05

loc_select_item_frame_:
- D - - - - 0x014B2C 05:8B1C: 04        .byte $04
- D - - - - 0x014B2D 05:8B1D: 00        .byte $00, $03, $80, $00
- D - - - - 0x014B31 05:8B21: 00        .byte $00, $03, $C0, $08
- D - - - - 0x014B35 05:8B25: 08        .byte $08, $03, $00, $00
- D - - - - 0x014B39 05:8B29: 08        .byte $08, $03, $40, $08

loc_select_menu_gun_frame_:
- D 0 - I - 0x014B3D 05:8B2D: 02        .byte $02
- D 0 - I - 0x014B3E 05:8B2E: F8        .byte $F8, $62, $00, $F8
- D 0 - I - 0x014B42 05:8B32: F8        .byte $F8, $63, $00, $00

loc_select_menu_handcuffs_frame_:
- D 0 - I - 0x014B46 05:8B36: 0A        .byte $0A
- D 0 - I - 0x014B47 05:8B37: E9        .byte $E9, $79, $00, $EC
- D 0 - I - 0x014B4B 05:8B3B: E5        .byte $E5, $7A, $00, $F4
- D 0 - I - 0x014B4F 05:8B3F: ED        .byte $ED, $74, $00, $F4
- D 0 - I - 0x014B53 05:8B43: F5        .byte $F5, $75, $00, $F4
- D 0 - I - 0x014B57 05:8B47: E0        .byte $E0, $76, $00, $FC
- D 0 - I - 0x014B5B 05:8B4B: E8        .byte $E8, $77, $00, $FC
- D 0 - I - 0x014B5F 05:8B4F: F0        .byte $F0, $70, $00, $FC
- D 0 - I - 0x014B63 05:8B53: F8        .byte $F8, $71, $00, $FC
- D 0 - I - 0x014B67 05:8B57: F0        .byte $F0, $72, $00, $04
- D 0 - I - 0x014B6B 05:8B5B: F8        .byte $F8, $73, $00, $04

loc_select_menu_prison_bars_frame_:
- D 0 - I - 0x014B6F 05:8B5F: 0C        .byte $0C
- D 0 - I - 0x014B70 05:8B60: E0        .byte $E0, $61, $01, $F4
- D 0 - I - 0x014B74 05:8B64: E0        .byte $E0, $61, $01, $FC
- D 0 - I - 0x014B78 05:8B68: E0        .byte $E0, $61, $01, $04
- D 0 - I - 0x014B7C 05:8B6C: E8        .byte $E8, $61, $01, $F4
- D 0 - I - 0x014B80 05:8B70: E8        .byte $E8, $61, $01, $FC
- D 0 - I - 0x014B84 05:8B74: E8        .byte $E8, $61, $01, $04
- D 0 - I - 0x014B88 05:8B78: F0        .byte $F0, $61, $01, $F4
- D 0 - I - 0x014B8C 05:8B7C: F0        .byte $F0, $61, $01, $FC
- D 0 - I - 0x014B90 05:8B80: F0        .byte $F0, $61, $01, $04
- D 0 - I - 0x014B94 05:8B84: F8        .byte $F8, $61, $01, $F4
- D 0 - I - 0x014B98 05:8B88: F8        .byte $F8, $61, $01, $FC
- D 0 - I - 0x014B9C 05:8B8C: F8        .byte $F8, $61, $01, $04

; C or the star frame 1 or something
loc_unknown_frame_1:
- D - - - - 0x014BA0 05:8B90: 01        .byte $01
- D - - - - 0x014BA1 05:8B91: FC        .byte $FC, $11, $00, $FC

; O or the star frame 2 or something
loc_unknown_frame_2:
- D - - - - 0x014BA5 05:8B95: 01        .byte $01
- D - - - - 0x014BA6 05:8B96: FC        .byte $FC, $12, $00, $FC

; R or the star frame 3 or something
loc_unknown_frame_3:
- D - - - - 0x014BAA 05:8B9A: 01        .byte $01
- D - - - - 0x014BAB 05:8B9B: FC        .byte $FC, $10, $00, $FC

loc_car_wheels_frame_1:
- D 0 - I - 0x014BAF 05:8B9F: 02        .byte $02
- D 0 - I - 0x014BB0 05:8BA0: FB        .byte $FB, $46, $00, $F3
- D 0 - I - 0x014BB4 05:8BA4: FA        .byte $FA, $46, $00, $04

loc_car_wheels_frame_2:
- D 0 - I - 0x014BB8 05:8BA8: 02        .byte $02
- D 0 - I - 0x014BB9 05:8BA9: FA        .byte $FA, $46, $00, $F3
- D 0 - I - 0x014BBD 05:8BAD: FB        .byte $FB, $46, $00, $04

loc_car_wheels_frame_3:
- D 0 - I - 0x014BC1 05:8BB1: 02        .byte $02
- D 0 - I - 0x014BC2 05:8BB2: FB        .byte $FB, $46, $00, $F3
- D 0 - I - 0x014BC6 05:8BB6: FB        .byte $FB, $46, $00, $04

loc_car_wheels_frame_4:
- D - - - - 0x014BCA 05:8BBA: 02        .byte $02
- D - - - - 0x014BCB 05:8BBB: FB        .byte $FB, $46, $00, $F3
- D - - - - 0x014BCF 05:8BBF: F9        .byte $F9, $46, $00, $04

loc_car_wheels_frame_5:
- D - - - - 0x014BD3 05:8BC3: 02        .byte $02
- D - - - - 0x014BD4 05:8BC4: F9        .byte $F9, $46, $00, $F3
- D - - - - 0x014BD8 05:8BC8: FB        .byte $FB, $46, $00, $04

loc_car_wheels_frame_6:
- D 0 - I - 0x014BDC 05:8BCC: 02        .byte $02
- D 0 - I - 0x014BDD 05:8BCD: FC        .byte $FC, $5B, $00, $F3
- D 0 - I - 0x014BE1 05:8BD1: FC        .byte $FC, $5B, $00, $04

loc_car_wheel_45_degree_frame_:
- D 0 - I - 0x014BE5 05:8BD5: 02        .byte $02
- D 0 - I - 0x014BE6 05:8BD6: FD        .byte $FD, $59, $00, $F3
- D 0 - I - 0x014BEA 05:8BDA: FD        .byte $FD, $59, $00, $04

loc_car_wheel_90_degree_frame_:
- D 0 - I - 0x014BEE 05:8BDE: 00        .byte $00

loc_car_frame_:
- D 0 - I - 0x014BEF 05:8BDF: 07        .byte $07
- D 0 - I - 0x014BF0 05:8BE0: F0        .byte $F0, $40, $00, $F1
- D 0 - I - 0x014BF4 05:8BE4: F0        .byte $F0, $42, $00, $F9
- D 0 - I - 0x014BF8 05:8BE8: F0        .byte $F0, $44, $00, $01
- D 0 - I - 0x014BFC 05:8BEC: F8        .byte $F8, $41, $00, $EE
- D 0 - I - 0x014C00 05:8BF0: F8        .byte $F8, $43, $00, $F6
- D 0 - I - 0x014C04 05:8BF4: F8        .byte $F8, $45, $00, $FE
- D 0 - I - 0x014C08 05:8BF8: F8        .byte $F8, $47, $00, $06

loc_car_broken_frame_:
- D - - - - 0x014C0C 05:8BFC: 07        .byte $07
- D - - - - 0x014C0D 05:8BFD: F0        .byte $F0, $50, $00, $F1
- D - - - - 0x014C11 05:8C01: F0        .byte $F0, $52, $00, $F9
- D - - - - 0x014C15 05:8C05: F0        .byte $F0, $54, $00, $01
- D - - - - 0x014C19 05:8C09: F8        .byte $F8, $51, $00, $EE
- D - - - - 0x014C1D 05:8C0D: F8        .byte $F8, $53, $00, $F6
- D - - - - 0x014C21 05:8C11: F8        .byte $F8, $55, $00, $FE
- D - - - - 0x014C25 05:8C15: F6        .byte $F6, $56, $00, $06

loc_car_45_degree_frame_:
- D 0 - I - 0x014C29 05:8C19: 08        .byte $08
- D 0 - I - 0x014C2A 05:8C1A: F0        .byte $F0, $48, $00, $EC
- D 0 - I - 0x014C2E 05:8C1E: F0        .byte $F0, $4A, $00, $F4
- D 0 - I - 0x014C32 05:8C22: F0        .byte $F0, $4C, $00, $FC
- D 0 - I - 0x014C36 05:8C26: F0        .byte $F0, $4E, $00, $04
- D 0 - I - 0x014C3A 05:8C2A: F8        .byte $F8, $49, $00, $EE
- D 0 - I - 0x014C3E 05:8C2E: F8        .byte $F8, $4B, $00, $F6
- D 0 - I - 0x014C42 05:8C32: F8        .byte $F8, $4D, $00, $FE
- D 0 - I - 0x014C46 05:8C36: F8        .byte $F8, $4F, $00, $06

loc_car_90_degree_frame_:
- D 0 - I - 0x014C4A 05:8C3A: 08        .byte $08
- D 0 - I - 0x014C4B 05:8C3B: F0        .byte $F0, $58, $00, $EE
- D 0 - I - 0x014C4F 05:8C3F: F0        .byte $F0, $5A, $00, $F6
- D 0 - I - 0x014C53 05:8C43: F0        .byte $F0, $5C, $00, $FE
- D 0 - I - 0x014C57 05:8C47: F0        .byte $F0, $5E, $00, $06
- D 0 - I - 0x014C5B 05:8C4B: F8        .byte $F8, $58, $80, $EE
- D 0 - I - 0x014C5F 05:8C4F: F8        .byte $F8, $5A, $80, $F6
- D 0 - I - 0x014C63 05:8C53: F8        .byte $F8, $5C, $80, $FE
- D 0 - I - 0x014C67 05:8C57: F8        .byte $F8, $5D, $00, $06

loc_lupin_in_car_frame_:
- D 0 - I - 0x014C6B 05:8C5B: 02        .byte $02
- D 0 - I - 0x014C6C 05:8C5C: F8        .byte $F8, $68, $00, $FD
- D 0 - I - 0x014C70 05:8C60: F8        .byte $F8, $69, $00, $05

loc_lupin_45d_in_car_frame_:
- D - - - - 0x014C74 05:8C64: 02        .byte $02
- D - - - - 0x014C75 05:8C65: F8        .byte $F8, $6C, $00, $FD
- D - - - - 0x014C79 05:8C69: F7        .byte $F7, $69, $00, $05

loc_lupin_90d_in_car_frame_:
- D - - - - 0x014C7D 05:8C6D: 02        .byte $02
- D - - - - 0x014C7E 05:8C6E: F8        .byte $F8, $6A, $00, $FD
- D - - - - 0x014C82 05:8C72: F8        .byte $F8, $6B, $00, $05

loc_jigen_in_car_frame_:
- D 0 - I - 0x014C86 05:8C76: 02        .byte $02
- D 0 - I - 0x014C87 05:8C77: F8        .byte $F8, $63, $00, $FD
- D 0 - I - 0x014C8B 05:8C7B: F8        .byte $F8, $64, $00, $05

loc_jigen_45d_in_car_frame_:
- D 0 - I - 0x014C8F 05:8C7F: 02        .byte $02
- D 0 - I - 0x014C90 05:8C80: F8        .byte $F8, $67, $00, $FD
- D 0 - I - 0x014C94 05:8C84: F6        .byte $F6, $64, $00, $05

loc_jigen_90d_in_car_frame_:
- D 0 - I - 0x014C98 05:8C88: 02        .byte $02
- D 0 - I - 0x014C99 05:8C89: F8        .byte $F8, $65, $00, $FD
- D 0 - I - 0x014C9D 05:8C8D: F8        .byte $F8, $66, $00, $05

loc_goemon_in_car_frame_:
- D 0 - I - 0x014CA1 05:8C91: 01        .byte $01
- D 0 - I - 0x014CA2 05:8C92: F8        .byte $F8, $5F, $00, $FD

loc_goemon_45d_in_car_frame_:
- D 0 - I - 0x014CA6 05:8C96: 01        .byte $01
- D 0 - I - 0x014CA7 05:8C97: F8        .byte $F8, $62, $00, $FD

loc_goemon_90d_in_car_frame_:
- D 0 - I - 0x014CAB 05:8C9B: 01        .byte $01
- D 0 - I - 0x014CAC 05:8C9C: F8        .byte $F8, $61, $00, $FD

loc_goemon_sword_in_car_frame_2:
- D 0 - I - 0x014CB0 05:8CA0: 01        .byte $01
- D 0 - I - 0x014CB1 05:8CA1: F8        .byte $F8, $60, $00, $05

loc_goemon_sword_in_car_frame_1:
- D 0 - I - 0x014CB5 05:8CA5: 01        .byte $01
- D 0 - I - 0x014CB6 05:8CA6: F8        .byte $F8, $6D, $00, $05

loc_car_drives_into_the_pyramid_frame_1:
- D 0 - I - 0x014CBA 05:8CAA: 06        .byte $06
- D 0 - I - 0x014CBB 05:8CAB: F0        .byte $F0, $6E, $00, $F4
- D 0 - I - 0x014CBF 05:8CAF: F0        .byte $F0, $70, $00, $FC
- D 0 - I - 0x014CC3 05:8CB3: F0        .byte $F0, $72, $00, $04
- D 0 - I - 0x014CC7 05:8CB7: F8        .byte $F8, $6F, $00, $F4
- D 0 - I - 0x014CCB 05:8CBB: F8        .byte $F8, $71, $00, $FC
- D 0 - I - 0x014CCF 05:8CBF: F8        .byte $F8, $73, $00, $04

loc_car_drives_into_the_pyramid_frame_2:
- D 0 - I - 0x014CD3 05:8CC3: 04        .byte $04
- D 0 - I - 0x014CD4 05:8CC4: F0        .byte $F0, $74, $00, $F8
- D 0 - I - 0x014CD8 05:8CC8: F0        .byte $F0, $74, $40, $00
- D 0 - I - 0x014CDC 05:8CCC: F8        .byte $F8, $75, $00, $F8
- D 0 - I - 0x014CE0 05:8CD0: F8        .byte $F8, $76, $00, $00

loc_car_drives_into_the_pyramid_frame_2_mirror:
- D 0 - I - 0x014CE4 05:8CD4: 04        .byte $04
- D 0 - I - 0x014CE5 05:8CD5: F0        .byte $F0, $74, $00, $F8
- D 0 - I - 0x014CE9 05:8CD9: F0        .byte $F0, $74, $40, $00
- D 0 - I - 0x014CED 05:8CDD: F8        .byte $F8, $76, $40, $F8
- D 0 - I - 0x014CF1 05:8CE1: F8        .byte $F8, $75, $40, $00

loc_car_drives_into_the_pyramid_frame_3:
- D 0 - I - 0x014CF5 05:8CE5: 04        .byte $04
- D 0 - I - 0x014CF6 05:8CE6: F4        .byte $F4, $78, $00, $F8
- D 0 - I - 0x014CFA 05:8CEA: F4        .byte $F4, $78, $40, $00
- D 0 - I - 0x014CFE 05:8CEE: FC        .byte $FC, $79, $00, $F8
- D 0 - I - 0x014D02 05:8CF2: FC        .byte $FC, $77, $00, $00

loc_car_drives_into_the_pyramid_frame_3_mirror:
- D 0 - I - 0x014D06 05:8CF6: 04        .byte $04
- D 0 - I - 0x014D07 05:8CF7: F4        .byte $F4, $78, $00, $F8
- D 0 - I - 0x014D0B 05:8CFB: F4        .byte $F4, $78, $40, $00
- D 0 - I - 0x014D0F 05:8CFF: FC        .byte $FC, $77, $40, $F8
- D 0 - I - 0x014D13 05:8D03: FC        .byte $FC, $79, $40, $00

loc_car_drives_into_the_pyramid_frame_4:
- D 0 - I - 0x014D17 05:8D07: 02        .byte $02
- D 0 - I - 0x014D18 05:8D08: F6        .byte $F6, $7A, $00, $FC
- D 0 - I - 0x014D1C 05:8D0C: FE        .byte $FE, $7B, $00, $FC

loc_car_drives_into_the_pyramid_frame_4_mirror:
- D 0 - I - 0x014D20 05:8D10: 02        .byte $02
- D 0 - I - 0x014D21 05:8D11: F6        .byte $F6, $7A, $00, $FC
- D 0 - I - 0x014D25 05:8D15: FE        .byte $FE, $7B, $40, $FC

loc_car_drives_into_the_pyramid_frame_5:
- D 0 - I - 0x014D29 05:8D19: 01        .byte $01
- D 0 - I - 0x014D2A 05:8D1A: F8        .byte $F8, $7C, $00, $FC

loc_car_drives_into_the_pyramid_frame_6:
- D 0 - I - 0x014D2E 05:8D1E: 01        .byte $01
- D 0 - I - 0x014D2F 05:8D1F: F8        .byte $F8, $7D, $00, $FC

loc_lupin_diver_and_gun_right_frame_:
- D 0 - I - 0x014D33 05:8D23: 09        .byte $09
- D 0 - I - 0x014D34 05:8D24: E0        .byte $E0, $57, $00, $02
- D 0 - I - 0x014D38 05:8D28: E7        .byte $E7, $62, $00, $FA
- D 0 - I - 0x014D3C 05:8D2C: E8        .byte $E8, $64, $00, $02
- D 0 - I - 0x014D40 05:8D30: E8        .byte $E8, $6E, $00, $07
- D 0 - I - 0x014D44 05:8D34: E8        .byte $E8, $6F, $00, $0F
- D 0 - I - 0x014D48 05:8D38: EF        .byte $EF, $63, $00, $F5
- D 0 - I - 0x014D4C 05:8D3C: EF        .byte $EF, $65, $00, $FD
- D 0 - I - 0x014D50 05:8D40: F7        .byte $F7, $66, $00, $F1
- D 0 - I - 0x014D54 05:8D44: F7        .byte $F7, $67, $00, $F9

loc_lupin_diver_and_gun_left_frame_:
- D 0 - I - 0x014D58 05:8D48: 09        .byte $09
- D 0 - I - 0x014D59 05:8D49: E0        .byte $E0, $57, $40, $F6
- D 0 - I - 0x014D5D 05:8D4D: E7        .byte $E7, $62, $40, $FE
- D 0 - I - 0x014D61 05:8D51: E8        .byte $E8, $64, $40, $F6
- D 0 - I - 0x014D65 05:8D55: E8        .byte $E8, $6E, $40, $F1
- D 0 - I - 0x014D69 05:8D59: E8        .byte $E8, $6F, $40, $E9
- D 0 - I - 0x014D6D 05:8D5D: EF        .byte $EF, $63, $40, $03
- D 0 - I - 0x014D71 05:8D61: EF        .byte $EF, $65, $40, $FB
- D 0 - I - 0x014D75 05:8D65: F7        .byte $F7, $66, $40, $07
- D 0 - I - 0x014D79 05:8D69: F7        .byte $F7, $67, $40, $FF

loc_lupin_diver_right_frame_1:
- D 0 - I - 0x014D7D 05:8D6D: 06        .byte $06
- D 0 - I - 0x014D7E 05:8D6E: E0        .byte $E0, $57, $00, $02
- D 0 - I - 0x014D82 05:8D72: E7        .byte $E7, $58, $00, $FA
- D 0 - I - 0x014D86 05:8D76: E8        .byte $E8, $5A, $00, $02
- D 0 - I - 0x014D8A 05:8D7A: EF        .byte $EF, $59, $00, $F9
- D 0 - I - 0x014D8E 05:8D7E: F4        .byte $F4, $5B, $00, $F1
- D 0 - I - 0x014D92 05:8D82: F7        .byte $F7, $5C, $00, $F8

loc_lupin_diver_left_frame_1:
- D 0 - I - 0x014D96 05:8D86: 06        .byte $06
- D 0 - I - 0x014D97 05:8D87: E0        .byte $E0, $57, $40, $F6
- D 0 - I - 0x014D9B 05:8D8B: E7        .byte $E7, $58, $40, $FE
- D 0 - I - 0x014D9F 05:8D8F: E8        .byte $E8, $5A, $40, $F6
- D 0 - I - 0x014DA3 05:8D93: EF        .byte $EF, $59, $40, $FF
- D 0 - I - 0x014DA7 05:8D97: F4        .byte $F4, $5B, $40, $07
- D 0 - I - 0x014DAB 05:8D9B: F7        .byte $F7, $5C, $40, $00

loc_lupin_diver_right_frame_2:
- D 0 - I - 0x014DAF 05:8D9F: 06        .byte $06
- D 0 - I - 0x014DB0 05:8DA0: E0        .byte $E0, $57, $00, $02
- D 0 - I - 0x014DB4 05:8DA4: E7        .byte $E7, $5E, $00, $FA
- D 0 - I - 0x014DB8 05:8DA8: E8        .byte $E8, $5D, $00, $02
- D 0 - I - 0x014DBC 05:8DAC: EF        .byte $EF, $5F, $00, $FA
- D 0 - I - 0x014DC0 05:8DB0: F5        .byte $F5, $61, $00, $F7
- D 0 - I - 0x014DC4 05:8DB4: F8        .byte $F8, $60, $00, $F2

loc_lupin_diver_left_frame_2:
- D 0 - I - 0x014DC8 05:8DB8: 06        .byte $06
- D 0 - I - 0x014DC9 05:8DB9: E0        .byte $E0, $57, $40, $F6
- D 0 - I - 0x014DCD 05:8DBD: E7        .byte $E7, $5E, $40, $FE
- D 0 - I - 0x014DD1 05:8DC1: E8        .byte $E8, $5D, $40, $F6
- D 0 - I - 0x014DD5 05:8DC5: EF        .byte $EF, $5F, $40, $FE
- D 0 - I - 0x014DD9 05:8DC9: F5        .byte $F5, $61, $40, $01
- D 0 - I - 0x014DDD 05:8DCD: F8        .byte $F8, $60, $40, $06

loc_lupin_diver_right_frame_3:
- D 0 - I - 0x014DE1 05:8DD1: 07        .byte $07
- D 0 - I - 0x014DE2 05:8DD2: E0        .byte $E0, $57, $00, $02
- D 0 - I - 0x014DE6 05:8DD6: E7        .byte $E7, $62, $00, $FA
- D 0 - I - 0x014DEA 05:8DDA: E8        .byte $E8, $64, $00, $02
- D 0 - I - 0x014DEE 05:8DDE: EF        .byte $EF, $63, $00, $F5
- D 0 - I - 0x014DF2 05:8DE2: EF        .byte $EF, $65, $00, $FD
- D 0 - I - 0x014DF6 05:8DE6: F7        .byte $F7, $66, $00, $F1
- D 0 - I - 0x014DFA 05:8DEA: F7        .byte $F7, $67, $00, $F9

loc_lupin_diver_left_frame_3:
- D 0 - I - 0x014DFE 05:8DEE: 07        .byte $07
- D 0 - I - 0x014DFF 05:8DEF: E0        .byte $E0, $57, $40, $F6
- D 0 - I - 0x014E03 05:8DF3: E7        .byte $E7, $62, $40, $FE
- D 0 - I - 0x014E07 05:8DF7: E8        .byte $E8, $64, $40, $F6
- D 0 - I - 0x014E0B 05:8DFB: EF        .byte $EF, $63, $40, $03
- D 0 - I - 0x014E0F 05:8DFF: EF        .byte $EF, $65, $40, $FB
- D 0 - I - 0x014E13 05:8E03: F7        .byte $F7, $66, $40, $07
- D 0 - I - 0x014E17 05:8E07: F7        .byte $F7, $67, $40, $FF

loc_lupin_diver_death_right_frame_:
- D 0 - I - 0x014E1B 05:8E0B: 07        .byte $07
- D 0 - I - 0x014E1C 05:8E0C: E7        .byte $E7, $68, $00, $FC
- D 0 - I - 0x014E20 05:8E10: EB        .byte $EB, $69, $00, $03
- D 0 - I - 0x014E24 05:8E14: EB        .byte $EB, $6A, $00, $0B
- D 0 - I - 0x014E28 05:8E18: EF        .byte $EF, $59, $00, $F9
- D 0 - I - 0x014E2C 05:8E1C: F3        .byte $F3, $6B, $00, $04
- D 0 - I - 0x014E30 05:8E20: F4        .byte $F4, $5B, $00, $F1
- D 0 - I - 0x014E34 05:8E24: F7        .byte $F7, $5C, $00, $F8

loc_lupin_diver_death_left_frame_:
- D 0 - I - 0x014E38 05:8E28: 07        .byte $07
- D 0 - I - 0x014E39 05:8E29: E7        .byte $E7, $68, $40, $FC
- D 0 - I - 0x014E3D 05:8E2D: EB        .byte $EB, $69, $40, $F5
- D 0 - I - 0x014E41 05:8E31: EB        .byte $EB, $6A, $40, $EB
- D 0 - I - 0x014E45 05:8E35: EF        .byte $EF, $59, $40, $FF
- D 0 - I - 0x014E49 05:8E39: F3        .byte $F3, $6B, $40, $F4
- D 0 - I - 0x014E4D 05:8E3D: F4        .byte $F4, $5B, $40, $07
- D 0 - I - 0x014E51 05:8E41: F7        .byte $F7, $5C, $40, $00

loc_lupin_diver_bob_up_right_frame_:
- D 0 - I - 0x014E55 05:8E45: 07        .byte $07
- D 0 - I - 0x014E56 05:8E46: D8        .byte $D8, $6C, $00, $02
- D 0 - I - 0x014E5A 05:8E4A: E0        .byte $E0, $57, $00, $02
- D 0 - I - 0x014E5E 05:8E4E: E7        .byte $E7, $5E, $00, $FA
- D 0 - I - 0x014E62 05:8E52: E8        .byte $E8, $6D, $00, $02
- D 0 - I - 0x014E66 05:8E56: EF        .byte $EF, $59, $00, $F9
- D 0 - I - 0x014E6A 05:8E5A: F4        .byte $F4, $5B, $00, $F1
- D 0 - I - 0x014E6E 05:8E5E: F7        .byte $F7, $5C, $00, $F8

loc_lupin_diver_bob_up_left_frame_:
- D 0 - I - 0x014E72 05:8E62: 07        .byte $07
- D 0 - I - 0x014E73 05:8E63: D8        .byte $D8, $6C, $40, $F6
- D 0 - I - 0x014E77 05:8E67: E0        .byte $E0, $57, $40, $F6
- D 0 - I - 0x014E7B 05:8E6B: E7        .byte $E7, $5E, $40, $FE
- D 0 - I - 0x014E7F 05:8E6F: E8        .byte $E8, $6D, $40, $F6
- D 0 - I - 0x014E83 05:8E73: EF        .byte $EF, $59, $40, $FF
- D 0 - I - 0x014E87 05:8E77: F4        .byte $F4, $5B, $40, $07
- D 0 - I - 0x014E8B 05:8E7B: F7        .byte $F7, $5C, $40, $00

loc_bubble_small_frame_:
- D 0 - I - 0x014E8F 05:8E7F: 01        .byte $01
- D 0 - I - 0x014E90 05:8E80: F8        .byte $F8, $2C, $00, $FC

loc_bubble_middle_frame_:
- D 0 - I - 0x014E94 05:8E84: 01        .byte $01
- D 0 - I - 0x014E95 05:8E85: F8        .byte $F8, $2B, $00, $FC

loc_bubble_big_frame_:
- D 0 - I - 0x014E99 05:8E89: 01        .byte $01
- D 0 - I - 0x014E9A 05:8E8A: F8        .byte $F8, $2A, $00, $FC

loc_briefcase_frame_1:
- D 0 - I - 0x014E9E 05:8E8E: 03        .byte $03
- D 0 - I - 0x014E9F 05:8E8F: E8        .byte $E8, $1C, $00, $FC
- D 0 - I - 0x014EA3 05:8E93: F0        .byte $F0, $1B, $00, $FC
- D 0 - I - 0x014EA7 05:8E97: F8        .byte $F8, $1A, $00, $FC

loc_briefcase_frame_2:
- D 0 - I - 0x014EAB 05:8E9B: 04        .byte $04
- D 0 - I - 0x014EAC 05:8E9C: F3        .byte $F3, $21, $00, $F7
- D 0 - I - 0x014EB0 05:8EA0: F1        .byte $F1, $1E, $00, $03
- D 0 - I - 0x014EB4 05:8EA4: F8        .byte $F8, $1F, $00, $F9
- D 0 - I - 0x014EB8 05:8EA8: F8        .byte $F8, $20, $00, $01

loc_briefcase_frame_3:
- D 0 - I - 0x014EBC 05:8EAC: 04        .byte $04
- D 0 - I - 0x014EBD 05:8EAD: F0        .byte $F0, $21, $00, $FA
- D 0 - I - 0x014EC1 05:8EB1: F1        .byte $F1, $1E, $40, $05
- D 0 - I - 0x014EC5 05:8EB5: F8        .byte $F8, $1E, $40, $F7
- D 0 - I - 0x014EC9 05:8EB9: F8        .byte $F8, $20, $00, $06

loc_jet_pack_right_frame_1:
- D 0 - I - 0x014ECD 05:8EBD: 02        .byte $02
- D 0 - I - 0x014ECE 05:8EBE: E6        .byte $E6, $40, $00, $F8
- D 0 - I - 0x014ED2 05:8EC2: EB        .byte $EB, $41, $00, $FE

loc_jet_pack_left_frame_1:
- D 0 - I - 0x014ED6 05:8EC6: 02        .byte $02
- D 0 - I - 0x014ED7 05:8EC7: E6        .byte $E6, $40, $40, $00
- D 0 - I - 0x014EDB 05:8ECB: EB        .byte $EB, $41, $40, $FA

loc_jet_pack_right_frame_2:
- D 0 - I - 0x014EDF 05:8ECF: 02        .byte $02
- D 0 - I - 0x014EE0 05:8ED0: E6        .byte $E6, $42, $00, $F8
- D 0 - I - 0x014EE4 05:8ED4: EB        .byte $EB, $41, $00, $FE

loc_jet_pack_left_frame_2:
- D 0 - I - 0x014EE8 05:8ED8: 02        .byte $02
- D 0 - I - 0x014EE9 05:8ED9: E6        .byte $E6, $42, $40, $00
- D 0 - I - 0x014EED 05:8EDD: EB        .byte $EB, $41, $40, $FA

loc_jet_pack_fire_right_frame_:
- D 0 - I - 0x014EF1 05:8EE1: 02        .byte $02
- D 0 - I - 0x014EF2 05:8EE2: EE        .byte $EE, $70, $00, $F0
- D 0 - I - 0x014EF6 05:8EE6: F3        .byte $F3, $70, $00, $ED

loc_jet_pack_fire_left_frame_:
- D 0 - I - 0x014EFA 05:8EEA: 02        .byte $02
- D 0 - I - 0x014EFB 05:8EEB: EE        .byte $EE, $70, $40, $08
- D 0 - I - 0x014EFF 05:8EEF: F3        .byte $F3, $70, $40, $0B

loc_lupin_jet_pack_right_frame_1:
- D 0 - I - 0x014F03 05:8EF3: 08        .byte $08
- D 0 - I - 0x014F04 05:8EF4: E0        .byte $E0, $43, $01, $FC
- D 0 - I - 0x014F08 05:8EF8: E8        .byte $E8, $4E, $01, $F4
- D 0 - I - 0x014F0C 05:8EFC: E8        .byte $E8, $45, $01, $FC
- D 0 - I - 0x014F10 05:8F00: E6        .byte $E6, $71, $00, $02
- D 0 - I - 0x014F14 05:8F04: F0        .byte $F0, $4A, $01, $F5
- D 0 - I - 0x014F18 05:8F08: F0        .byte $F0, $4C, $01, $FD
- D 0 - I - 0x014F1C 05:8F0C: F8        .byte $F8, $4B, $01, $F5
- D 0 - I - 0x014F20 05:8F10: F8        .byte $F8, $4D, $01, $FD

loc_lupin_jet_pack_left_frame_1:
- D 0 - I - 0x014F24 05:8F14: 08        .byte $08
- D 0 - I - 0x014F25 05:8F15: E0        .byte $E0, $43, $41, $FC
- D 0 - I - 0x014F29 05:8F19: E8        .byte $E8, $4E, $41, $04
- D 0 - I - 0x014F2D 05:8F1D: E8        .byte $E8, $45, $41, $FC
- D 0 - I - 0x014F31 05:8F21: E6        .byte $E6, $71, $40, $F6
- D 0 - I - 0x014F35 05:8F25: F0        .byte $F0, $4A, $41, $03
- D 0 - I - 0x014F39 05:8F29: F0        .byte $F0, $4C, $41, $FB
- D 0 - I - 0x014F3D 05:8F2D: F8        .byte $F8, $4B, $41, $03
- D 0 - I - 0x014F41 05:8F31: F8        .byte $F8, $4D, $41, $FB

loc_lupin_jet_pack_right_frame_2:
- D 0 - I - 0x014F45 05:8F35: 08        .byte $08
- D 0 - I - 0x014F46 05:8F36: E0        .byte $E0, $43, $01, $FC
- D 0 - I - 0x014F4A 05:8F3A: E8        .byte $E8, $4E, $01, $F4
- D 0 - I - 0x014F4E 05:8F3E: E8        .byte $E8, $45, $01, $FC
- D 0 - I - 0x014F52 05:8F42: E6        .byte $E6, $71, $00, $02
- D 0 - I - 0x014F56 05:8F46: F0        .byte $F0, $4F, $01, $F8
- D 0 - I - 0x014F5A 05:8F4A: F0        .byte $F0, $50, $01, $00
- D 0 - I - 0x014F5E 05:8F4E: F4        .byte $F4, $51, $01, $08
- D 0 - I - 0x014F62 05:8F52: F8        .byte $F8, $52, $01, $03

loc_lupin_jet_pack_left_frame_2:
- D 0 - I - 0x014F66 05:8F56: 08        .byte $08
- D 0 - I - 0x014F67 05:8F57: E0        .byte $E0, $43, $41, $FC
- D 0 - I - 0x014F6B 05:8F5B: E8        .byte $E8, $4E, $41, $04
- D 0 - I - 0x014F6F 05:8F5F: E8        .byte $E8, $45, $41, $FC
- D 0 - I - 0x014F73 05:8F63: E6        .byte $E6, $71, $40, $F6
- D 0 - I - 0x014F77 05:8F67: F0        .byte $F0, $4F, $41, $00
- D 0 - I - 0x014F7B 05:8F6B: F0        .byte $F0, $50, $41, $F8
- D 0 - I - 0x014F7F 05:8F6F: F4        .byte $F4, $51, $41, $F0
- D 0 - I - 0x014F83 05:8F73: F8        .byte $F8, $52, $41, $F5

loc_lupin_jet_pack_right_frame_3:
- D 0 - I - 0x014F87 05:8F77: 08        .byte $08
- D 0 - I - 0x014F88 05:8F78: E4        .byte $E4, $43, $01, $FC
- D 0 - I - 0x014F8C 05:8F7C: EC        .byte $EC, $4E, $01, $F4
- D 0 - I - 0x014F90 05:8F80: EC        .byte $EC, $45, $01, $FC
- D 0 - I - 0x014F94 05:8F84: EA        .byte $EA, $71, $00, $02
- D 0 - I - 0x014F98 05:8F88: F0        .byte $F0, $46, $01, $FA
- D 0 - I - 0x014F9C 05:8F8C: F0        .byte $F0, $47, $01, $02
- D 0 - I - 0x014FA0 05:8F90: F8        .byte $F8, $48, $01, $F5
- D 0 - I - 0x014FA4 05:8F94: F8        .byte $F8, $49, $01, $FD

loc_lupin_jet_pack_left_frame_3:
- D 0 - I - 0x014FA8 05:8F98: 08        .byte $08
- D 0 - I - 0x014FA9 05:8F99: E4        .byte $E4, $43, $41, $FC
- D 0 - I - 0x014FAD 05:8F9D: EC        .byte $EC, $4E, $41, $04
- D 0 - I - 0x014FB1 05:8FA1: EC        .byte $EC, $45, $41, $FC
- D 0 - I - 0x014FB5 05:8FA5: EA        .byte $EA, $71, $40, $F6
- D 0 - I - 0x014FB9 05:8FA9: F0        .byte $F0, $46, $41, $FE
- D 0 - I - 0x014FBD 05:8FAD: F0        .byte $F0, $47, $41, $F6
- D 0 - I - 0x014FC1 05:8FB1: F8        .byte $F8, $48, $41, $03
- D 0 - I - 0x014FC5 05:8FB5: F8        .byte $F8, $49, $41, $FB

loc_lupin_jet_pack_right_frame_4:
- D 0 - I - 0x014FC9 05:8FB9: 08        .byte $08
- D 0 - I - 0x014FCA 05:8FBA: E0        .byte $E0, $43, $01, $FC
- D 0 - I - 0x014FCE 05:8FBE: E8        .byte $E8, $4E, $01, $F4
- D 0 - I - 0x014FD2 05:8FC2: E8        .byte $E8, $45, $01, $FC
- D 0 - I - 0x014FD6 05:8FC6: E6        .byte $E6, $71, $00, $02
- D 0 - I - 0x014FDA 05:8FCA: F0        .byte $F0, $72, $01, $F5
- D 0 - I - 0x014FDE 05:8FCE: F0        .byte $F0, $74, $01, $FD
- D 0 - I - 0x014FE2 05:8FD2: F8        .byte $F8, $73, $01, $F5
- D 0 - I - 0x014FE6 05:8FD6: F8        .byte $F8, $75, $01, $FD

loc_lupin_jet_pack_left_frame_4:
- D 0 - I - 0x014FEA 05:8FDA: 08        .byte $08
- D 0 - I - 0x014FEB 05:8FDB: E0        .byte $E0, $43, $41, $FC
- D 0 - I - 0x014FEF 05:8FDF: E8        .byte $E8, $4E, $41, $04
- D 0 - I - 0x014FF3 05:8FE3: E8        .byte $E8, $45, $41, $FC
- D 0 - I - 0x014FF7 05:8FE7: E6        .byte $E6, $71, $40, $F6
- D 0 - I - 0x014FFB 05:8FEB: F0        .byte $F0, $72, $41, $03
- D 0 - I - 0x014FFF 05:8FEF: F0        .byte $F0, $74, $41, $FB
- D 0 - I - 0x015003 05:8FF3: F8        .byte $F8, $73, $41, $03
- D 0 - I - 0x015007 05:8FF7: F8        .byte $F8, $75, $41, $FB

loc_radio_frame_:
- D 0 - I - 0x01500B 05:8FFB: 02        .byte $02
- D 0 - I - 0x01500C 05:8FFC: F3        .byte $F3, $2D, $00, $FF
- D 0 - I - 0x015010 05:9000: F6        .byte $F6, $2E, $00, $FC

loc_breathing_apparatus_frame_:
- D 0 - I - 0x015014 05:9004: 02        .byte $02
- D 0 - I - 0x015015 05:9005: F3        .byte $F3, $2F, $00, $FA
- D 0 - I - 0x015019 05:9009: F6        .byte $F6, $30, $00, $00

loc_jet_pack_frame_:
- D 0 - I - 0x01501D 05:900D: 03        .byte $03
- D 0 - I - 0x01501E 05:900E: F2        .byte $F2, $31, $00, $FC
- D 0 - I - 0x015022 05:9012: F6        .byte $F6, $32, $00, $FB
- D 0 - I - 0x015026 05:9016: F4        .byte $F4, $33, $00, $03

loc_infrared_goggles_frame_:
- D 0 - I - 0x01502A 05:901A: 02        .byte $02
- D 0 - I - 0x01502B 05:901B: F3        .byte $F3, $34, $00, $FE
- D 0 - I - 0x01502F 05:901F: F5        .byte $F5, $35, $00, $FB

loc_bomb_frame_:
- D 0 - I - 0x015033 05:9023: 02        .byte $02
- D 0 - I - 0x015034 05:9024: F3        .byte $F3, $36, $00, $FC
- D 0 - I - 0x015038 05:9028: F8        .byte $F8, $37, $00, $FB

loc_helium_balloon_frame_:
- D 0 - I - 0x01503C 05:902C: 02        .byte $02
- D 0 - I - 0x01503D 05:902D: F0        .byte $F0, $38, $00, $FC
- D 0 - I - 0x015041 05:9031: F8        .byte $F8, $39, $00, $FC

loc_bullet_proof_vest_frame_:
- D 0 - I - 0x015045 05:9035: 02        .byte $02
- D 0 - I - 0x015046 05:9036: F0        .byte $F0, $3A, $00, $FC
- D 0 - I - 0x01504A 05:903A: F8        .byte $F8, $3B, $00, $FC

loc_artillery_frame_:
- D 0 - I - 0x01504E 05:903E: 03        .byte $03
- D 0 - I - 0x01504F 05:903F: E8        .byte $E8, $11, $00, $FC
- D 0 - I - 0x015053 05:9043: F0        .byte $F0, $12, $00, $FC
- D 0 - I - 0x015057 05:9047: F8        .byte $F8, $3E, $00, $FC

loc_ring_frame_:
- D 0 - I - 0x01505B 05:904B: 02        .byte $02
- D 0 - I - 0x01505C 05:904C: F2        .byte $F2, $3C, $00, $F9
- D 0 - I - 0x015060 05:9050: F6        .byte $F6, $3D, $00, $FE

loc_balloon_frame_1:
- D 0 - I - 0x015064 05:9054: 06        .byte $06
- D 0 - I - 0x015065 05:9055: C0        .byte $C0, $40, $00, $F8
- D 0 - I - 0x015069 05:9059: C0        .byte $C0, $42, $00, $00
- D 0 - I - 0x01506D 05:905D: C8        .byte $C8, $41, $00, $F8
- D 0 - I - 0x015071 05:9061: C8        .byte $C8, $43, $00, $00
- D 0 - I - 0x015075 05:9065: D0        .byte $D0, $44, $00, $F8
- D 0 - I - 0x015079 05:9069: D8        .byte $D8, $45, $00, $F8

loc_balloon_frame_2:
- D 0 - I - 0x01507D 05:906D: 08        .byte $08
- D 0 - I - 0x01507E 05:906E: B8        .byte $B8, $4A, $01, $FA
- D 0 - I - 0x015082 05:9072: C0        .byte $C0, $46, $01, $F5
- D 0 - I - 0x015086 05:9076: C0        .byte $C0, $48, $01, $03
- D 0 - I - 0x01508A 05:907A: C8        .byte $C8, $47, $01, $F5
- D 0 - I - 0x01508E 05:907E: C8        .byte $C8, $49, $01, $03
- D 0 - I - 0x015092 05:9082: D0        .byte $D0, $4B, $01, $FB
- D 0 - I - 0x015096 05:9086: D0        .byte $D0, $44, $00, $F8
- D 0 - I - 0x01509A 05:908A: D8        .byte $D8, $45, $00, $F8

loc_balloon_frame_3:
- D 0 - I - 0x01509E 05:908E: 08        .byte $08
- D 0 - I - 0x01509F 05:908F: BD        .byte $BD, $4C, $00, $F6
- D 0 - I - 0x0150A3 05:9093: BC        .byte $BC, $50, $00, $00
- D 0 - I - 0x0150A7 05:9097: BC        .byte $BC, $51, $00, $08
- D 0 - I - 0x0150AB 05:909B: C5        .byte $C5, $4D, $00, $F1
- D 0 - I - 0x0150AF 05:909F: C7        .byte $C7, $52, $00, $04
- D 0 - I - 0x0150B3 05:90A3: CD        .byte $CD, $4E, $00, $F4
- D 0 - I - 0x0150B7 05:90A7: D0        .byte $D0, $4F, $00, $FC
- D 0 - I - 0x0150BB 05:90AB: D8        .byte $D8, $45, $00, $F8

loc_lupin_balloon_right_frame_1:
- D 0 - I - 0x0150BF 05:90AF: 0A        .byte $0A
- D 0 - I - 0x0150C0 05:90B0: D8        .byte $D8, $53, $41, $FB
- D 0 - I - 0x0150C4 05:90B4: E0        .byte $E0, $54, $41, $03
- D 0 - I - 0x0150C8 05:90B8: E0        .byte $E0, $55, $41, $FB
- D 0 - I - 0x0150CC 05:90BC: E8        .byte $E8, $5C, $41, $0F
- D 0 - I - 0x0150D0 05:90C0: E8        .byte $E8, $5D, $41, $07
- D 0 - I - 0x0150D4 05:90C4: E8        .byte $E8, $57, $41, $FF
- D 0 - I - 0x0150D8 05:90C8: F0        .byte $F0, $58, $41, $03
- D 0 - I - 0x0150DC 05:90CC: F0        .byte $F0, $5A, $41, $FB
- D 0 - I - 0x0150E0 05:90D0: F8        .byte $F8, $59, $41, $03
- D 0 - I - 0x0150E4 05:90D4: F8        .byte $F8, $5B, $41, $FB

loc_lupin_balloon_left_frame_1:
- D 0 - I - 0x0150E8 05:90D8: 0A        .byte $0A
- D 0 - I - 0x0150E9 05:90D9: D8        .byte $D8, $53, $01, $FD
- D 0 - I - 0x0150ED 05:90DD: E0        .byte $E0, $54, $01, $F5
- D 0 - I - 0x0150F1 05:90E1: E0        .byte $E0, $55, $01, $FD
- D 0 - I - 0x0150F5 05:90E5: E8        .byte $E8, $5C, $01, $E9
- D 0 - I - 0x0150F9 05:90E9: E8        .byte $E8, $5D, $01, $F1
- D 0 - I - 0x0150FD 05:90ED: E8        .byte $E8, $57, $01, $F9
- D 0 - I - 0x015101 05:90F1: F0        .byte $F0, $58, $01, $F5
- D 0 - I - 0x015105 05:90F5: F0        .byte $F0, $5A, $01, $FD
- D 0 - I - 0x015109 05:90F9: F8        .byte $F8, $59, $01, $F5
- D 0 - I - 0x01510D 05:90FD: F8        .byte $F8, $5B, $01, $FD

loc_lupin_rifle_right_frame_1:
- D 0 - I - 0x015111 05:9101: 08        .byte $08
- D 0 - I - 0x015112 05:9102: E2        .byte $E2, $6F, $01, $FE
- D 0 - I - 0x015116 05:9106: E8        .byte $E8, $68, $01, $F8
- D 0 - I - 0x01511A 05:910A: E8        .byte $E8, $6A, $01, $00
- D 0 - I - 0x01511E 05:910E: EC        .byte $EC, $67, $01, $08
- D 0 - I - 0x015122 05:9112: F0        .byte $F0, $69, $01, $F8
- D 0 - I - 0x015126 05:9116: F0        .byte $F0, $6B, $01, $00
- D 0 - I - 0x01512A 05:911A: F8        .byte $F8, $76, $01, $F9
- D 0 - I - 0x01512E 05:911E: F8        .byte $F8, $77, $01, $03

loc_lupin_rifle_left_frame_1:
- D 0 - I - 0x015132 05:9122: 08        .byte $08
- D 0 - I - 0x015133 05:9123: E2        .byte $E2, $6F, $41, $FA
- D 0 - I - 0x015137 05:9127: E8        .byte $E8, $68, $41, $00
- D 0 - I - 0x01513B 05:912B: E8        .byte $E8, $6A, $41, $F8
- D 0 - I - 0x01513F 05:912F: EC        .byte $EC, $67, $41, $F0
- D 0 - I - 0x015143 05:9133: F0        .byte $F0, $69, $41, $00
- D 0 - I - 0x015147 05:9137: F0        .byte $F0, $6B, $41, $F8
- D 0 - I - 0x01514B 05:913B: F8        .byte $F8, $76, $41, $FF
- D 0 - I - 0x01514F 05:913F: F8        .byte $F8, $77, $41, $F5

loc_lupin_rifle_right_frame_5:
- D 0 - I - 0x015153 05:9143: 09        .byte $09
- D 0 - I - 0x015154 05:9144: E2        .byte $E2, $6F, $01, $FE
- D 0 - I - 0x015158 05:9148: E8        .byte $E8, $60, $01, $F8
- D 0 - I - 0x01515C 05:914C: E8        .byte $E8, $62, $01, $00
- D 0 - I - 0x015160 05:9150: EC        .byte $EC, $66, $01, $08
- D 0 - I - 0x015164 05:9154: F0        .byte $F0, $61, $01, $F3
- D 0 - I - 0x015168 05:9158: F0        .byte $F0, $63, $01, $FB
- D 0 - I - 0x01516C 05:915C: F0        .byte $F0, $64, $01, $03
- D 0 - I - 0x015170 05:9160: F8        .byte $F8, $76, $01, $FC
- D 0 - I - 0x015174 05:9164: F8        .byte $F8, $75, $01, $03

loc_lupin_rifle_left_frame_5:
- D 0 - I - 0x015178 05:9168: 09        .byte $09
- D 0 - I - 0x015179 05:9169: E2        .byte $E2, $6F, $41, $FA
- D 0 - I - 0x01517D 05:916D: E8        .byte $E8, $60, $41, $00
- D 0 - I - 0x015181 05:9171: E8        .byte $E8, $62, $41, $F8
- D 0 - I - 0x015185 05:9175: EC        .byte $EC, $66, $41, $F0
- D 0 - I - 0x015189 05:9179: F0        .byte $F0, $61, $41, $05
- D 0 - I - 0x01518D 05:917D: F0        .byte $F0, $63, $41, $FD
- D 0 - I - 0x015191 05:9181: F0        .byte $F0, $64, $41, $F5
- D 0 - I - 0x015195 05:9185: F8        .byte $F8, $76, $41, $FC
- D 0 - I - 0x015199 05:9189: F8        .byte $F8, $75, $41, $F5

loc_lupin_rifle_right_frame_6:
- D 0 - I - 0x01519D 05:918D: 07        .byte $07
- D 0 - I - 0x01519E 05:918E: E2        .byte $E2, $6F, $01, $FE
- D 0 - I - 0x0151A2 05:9192: E8        .byte $E8, $60, $01, $F8
- D 0 - I - 0x0151A6 05:9196: E8        .byte $E8, $62, $01, $00
- D 0 - I - 0x0151AA 05:919A: EC        .byte $EC, $66, $01, $08
- D 0 - I - 0x0151AE 05:919E: F0        .byte $F0, $6C, $01, $F8
- D 0 - I - 0x0151B2 05:91A2: F0        .byte $F0, $6E, $01, $00
- D 0 - I - 0x0151B6 05:91A6: F8        .byte $F8, $6D, $01, $FF

loc_lupin_rifle_left_frame_6:
- D 0 - I - 0x0151BA 05:91AA: 07        .byte $07
- D 0 - I - 0x0151BB 05:91AB: E2        .byte $E2, $6F, $41, $FA
- D 0 - I - 0x0151BF 05:91AF: E8        .byte $E8, $60, $41, $00
- D 0 - I - 0x0151C3 05:91B3: E8        .byte $E8, $62, $41, $F8
- D 0 - I - 0x0151C7 05:91B7: EC        .byte $EC, $66, $41, $F0
- D 0 - I - 0x0151CB 05:91BB: F0        .byte $F0, $6C, $41, $00
- D 0 - I - 0x0151CF 05:91BF: F0        .byte $F0, $6E, $41, $F8
- D 0 - I - 0x0151D3 05:91C3: F8        .byte $F8, $6D, $41, $F9

loc_lupin_rifle_right_frame_2:
- D 0 - I - 0x0151D7 05:91C7: 08        .byte $08
- D 0 - I - 0x0151D8 05:91C8: E2        .byte $E2, $6F, $01, $FC
- D 0 - I - 0x0151DC 05:91CC: E8        .byte $E8, $68, $01, $F6
- D 0 - I - 0x0151E0 05:91D0: E8        .byte $E8, $6A, $01, $FE
- D 0 - I - 0x0151E4 05:91D4: EB        .byte $EB, $67, $01, $06
- D 0 - I - 0x0151E8 05:91D8: F0        .byte $F0, $5B, $01, $F6
- D 0 - I - 0x0151EC 05:91DC: F0        .byte $F0, $6B, $01, $FE
- D 0 - I - 0x0151F0 05:91E0: F8        .byte $F8, $5C, $01, $F6
- D 0 - I - 0x0151F4 05:91E4: F8        .byte $F8, $77, $01, $01

loc_lupin_rifle_left_frame_2:
- D 0 - I - 0x0151F8 05:91E8: 08        .byte $08
- D 0 - I - 0x0151F9 05:91E9: E2        .byte $E2, $6F, $41, $FC
- D 0 - I - 0x0151FD 05:91ED: E8        .byte $E8, $68, $41, $02
- D 0 - I - 0x015201 05:91F1: E8        .byte $E8, $6A, $41, $FA
- D 0 - I - 0x015205 05:91F5: EB        .byte $EB, $67, $41, $F2
- D 0 - I - 0x015209 05:91F9: F0        .byte $F0, $5B, $41, $02
- D 0 - I - 0x01520D 05:91FD: F0        .byte $F0, $6B, $41, $FA
- D 0 - I - 0x015211 05:9201: F8        .byte $F8, $5C, $41, $02
- D 0 - I - 0x015215 05:9205: F8        .byte $F8, $77, $41, $F7

loc_lupin_rifle_right_frame_3:
- D 0 - I - 0x015219 05:9209: 07        .byte $07
- D 0 - I - 0x01521A 05:920A: E2        .byte $E2, $6F, $01, $FC
- D 0 - I - 0x01521E 05:920E: E8        .byte $E8, $68, $01, $F6
- D 0 - I - 0x015222 05:9212: E8        .byte $E8, $6A, $01, $FE
- D 0 - I - 0x015226 05:9216: EB        .byte $EB, $67, $01, $06
- D 0 - I - 0x01522A 05:921A: F0        .byte $F0, $5D, $01, $F6
- D 0 - I - 0x01522E 05:921E: F0        .byte $F0, $5E, $01, $FE
- D 0 - I - 0x015232 05:9222: F8        .byte $F8, $5F, $01, $F8

loc_lupin_rifle_left_frame_3:
- D 0 - I - 0x015236 05:9226: 07        .byte $07
- D 0 - I - 0x015237 05:9227: E2        .byte $E2, $6F, $41, $FC
- D 0 - I - 0x01523B 05:922B: E8        .byte $E8, $68, $41, $02
- D 0 - I - 0x01523F 05:922F: E8        .byte $E8, $6A, $41, $FA
- D 0 - I - 0x015243 05:9233: EB        .byte $EB, $67, $41, $F2
- D 0 - I - 0x015247 05:9237: F0        .byte $F0, $5D, $41, $02
- D 0 - I - 0x01524B 05:923B: F0        .byte $F0, $5E, $41, $FA
- D 0 - I - 0x01524F 05:923F: F8        .byte $F8, $5F, $41, $00

loc_lupin_rifle_right_frame_4:
- D 0 - I - 0x015253 05:9243: 08        .byte $08
- D 0 - I - 0x015254 05:9244: E2        .byte $E2, $6F, $01, $FC
- D 0 - I - 0x015258 05:9248: E8        .byte $E8, $68, $01, $F6
- D 0 - I - 0x01525C 05:924C: E8        .byte $E8, $6A, $01, $FE
- D 0 - I - 0x015260 05:9250: EB        .byte $EB, $67, $01, $06
- D 0 - I - 0x015264 05:9254: F0        .byte $F0, $69, $01, $F6
- D 0 - I - 0x015268 05:9258: F0        .byte $F0, $6B, $01, $FE
- D 0 - I - 0x01526C 05:925C: F8        .byte $F8, $76, $01, $F7
- D 0 - I - 0x015270 05:9260: F8        .byte $F8, $57, $01, $FF

loc_lupin_rifle_left_frame_4:
- D 0 - I - 0x015274 05:9264: 08        .byte $08
- D 0 - I - 0x015275 05:9265: E2        .byte $E2, $6F, $41, $FC
- D 0 - I - 0x015279 05:9269: E8        .byte $E8, $68, $41, $02
- D 0 - I - 0x01527D 05:926D: E8        .byte $E8, $6A, $41, $FA
- D 0 - I - 0x015281 05:9271: EB        .byte $EB, $67, $41, $F2
- D 0 - I - 0x015285 05:9275: F0        .byte $F0, $69, $41, $02
- D 0 - I - 0x015289 05:9279: F0        .byte $F0, $6B, $41, $FA
- D 0 - I - 0x01528D 05:927D: F8        .byte $F8, $76, $41, $01
- D 0 - I - 0x015291 05:9281: F8        .byte $F8, $57, $41, $F9

loc_bomb_explode_frame_1:
- D 0 - I - 0x015295 05:9285: 04        .byte $04
- D 0 - I - 0x015296 05:9286: F0        .byte $F0, $29, $C0, $F8
- D 0 - I - 0x01529A 05:928A: F0        .byte $F0, $28, $00, $00
- D 0 - I - 0x01529E 05:928E: F8        .byte $F8, $28, $C0, $F8
- D 0 - I - 0x0152A2 05:9292: F8        .byte $F8, $19, $00, $00

loc_bomb_explode_frame_2:
- D 0 - I - 0x0152A6 05:9296: 04        .byte $04
- D 0 - I - 0x0152A7 05:9297: F0        .byte $F0, $23, $00, $F8
- D 0 - I - 0x0152AB 05:929B: F0        .byte $F0, $29, $80, $00
- D 0 - I - 0x0152AF 05:929F: F8        .byte $F8, $29, $C0, $F8
- D 0 - I - 0x0152B3 05:92A3: F8        .byte $F8, $23, $C0, $00

loc_bomb_explode_frame_3:
- D 0 - I - 0x0152B7 05:92A7: 0A        .byte $0A
- D 0 - I - 0x0152B8 05:92A8: E8        .byte $E8, $24, $00, $00
- D 0 - I - 0x0152BC 05:92AC: E8        .byte $E8, $26, $00, $08
- D 0 - I - 0x0152C0 05:92B0: F0        .byte $F0, $23, $00, $F8
- D 0 - I - 0x0152C4 05:92B4: F0        .byte $F0, $25, $00, $00
- D 0 - I - 0x0152C8 05:92B8: F0        .byte $F0, $27, $00, $08
- D 0 - I - 0x0152CC 05:92BC: F8        .byte $F8, $27, $C0, $F0
- D 0 - I - 0x0152D0 05:92C0: F8        .byte $F8, $25, $C0, $F8
- D 0 - I - 0x0152D4 05:92C4: F8        .byte $F8, $23, $C0, $00
- D 0 - I - 0x0152D8 05:92C8: 00        .byte $00, $26, $C0, $F0
- D 0 - I - 0x0152DC 05:92CC: 00        .byte $00, $24, $C0, $F8

loc_bomb_explode_frame_4:
- D 0 - I - 0x0152E0 05:92D0: 10        .byte $10
- D 0 - I - 0x0152E1 05:92D1: E8        .byte $E8, $26, $40, $F0
- D 0 - I - 0x0152E5 05:92D5: E8        .byte $E8, $24, $40, $F8
- D 0 - I - 0x0152E9 05:92D9: E8        .byte $E8, $24, $00, $00
- D 0 - I - 0x0152ED 05:92DD: E8        .byte $E8, $26, $00, $08
- D 0 - I - 0x0152F1 05:92E1: F0        .byte $F0, $27, $40, $F0
- D 0 - I - 0x0152F5 05:92E5: F0        .byte $F0, $25, $40, $F8
- D 0 - I - 0x0152F9 05:92E9: F0        .byte $F0, $25, $00, $00
- D 0 - I - 0x0152FD 05:92ED: F0        .byte $F0, $27, $00, $08
- D 0 - I - 0x015301 05:92F1: F8        .byte $F8, $27, $C0, $F0
- D 0 - I - 0x015305 05:92F5: F8        .byte $F8, $25, $C0, $F8
- D 0 - I - 0x015309 05:92F9: F8        .byte $F8, $25, $80, $00
- D 0 - I - 0x01530D 05:92FD: F8        .byte $F8, $27, $80, $08
- D 0 - I - 0x015311 05:9301: 00        .byte $00, $26, $C0, $F0
- D 0 - I - 0x015315 05:9305: 00        .byte $00, $24, $C0, $F8
- D 0 - I - 0x015319 05:9309: 00        .byte $00, $24, $80, $00
- D 0 - I - 0x01531D 05:930D: 00        .byte $00, $26, $80, $08

loc_bomb_explode_frame_5:
- D 0 - I - 0x015321 05:9311: 04        .byte $04
- D 0 - I - 0x015322 05:9312: F0        .byte $F0, $28, $40, $F8
- D 0 - I - 0x015326 05:9316: F0        .byte $F0, $29, $80, $00
- D 0 - I - 0x01532A 05:931A: F8        .byte $F8, $29, $40, $F8
- D 0 - I - 0x01532E 05:931E: F8        .byte $F8, $28, $80, $00

loc_bomb_semi_explode_frame_1:
- D 0 - I - 0x015332 05:9322: 02        .byte $02
- D 0 - I - 0x015333 05:9323: F8        .byte $F8, $29, $C0, $F8
- D 0 - I - 0x015337 05:9327: F8        .byte $F8, $28, $00, $00

loc_bomb_semi_explode_frame_2:
- D 0 - I - 0x01533B 05:932B: 02        .byte $02
- D 0 - I - 0x01533C 05:932C: F8        .byte $F8, $23, $00, $F8
- D 0 - I - 0x015340 05:9330: F8        .byte $F8, $29, $80, $00

loc_bomb_semi_explode_frame_3:
- D 0 - I - 0x015344 05:9334: 02        .byte $02
- D 0 - I - 0x015345 05:9335: F8        .byte $F8, $28, $40, $F8
- D 0 - I - 0x015349 05:9339: F8        .byte $F8, $29, $80, $00

loc_hulk_right_frame_1:
- D 0 - I - 0x01534D 05:933D: 0C        .byte $0C
- D 0 - I - 0x01534E 05:933E: D1        .byte $D1, $80, $42, $FC
- D 0 - I - 0x015352 05:9342: D1        .byte $D1, $81, $42, $F4
- D 0 - I - 0x015356 05:9346: D8        .byte $D8, $8C, $42, $FD
- D 0 - I - 0x01535A 05:934A: D8        .byte $D8, $8E, $42, $F5
- D 0 - I - 0x01535E 05:934E: E0        .byte $E0, $8D, $42, $FC
- D 0 - I - 0x015362 05:9352: E0        .byte $E0, $8F, $42, $F4
- D 0 - I - 0x015366 05:9356: E8        .byte $E8, $90, $42, $FE
- D 0 - I - 0x01536A 05:935A: E8        .byte $E8, $92, $42, $F6
- D 0 - I - 0x01536E 05:935E: F0        .byte $F0, $88, $42, $01
- D 0 - I - 0x015372 05:9362: F0        .byte $F0, $8A, $42, $F7
- D 0 - I - 0x015376 05:9366: F8        .byte $F8, $89, $42, $04
- D 0 - I - 0x01537A 05:936A: F8        .byte $F8, $8B, $42, $F4

loc_hulk_left_frame_1:
- D 0 - I - 0x01537E 05:936E: 0C        .byte $0C
- D 0 - I - 0x01537F 05:936F: D1        .byte $D1, $80, $02, $FC
- D 0 - I - 0x015383 05:9373: D1        .byte $D1, $81, $02, $04
- D 0 - I - 0x015387 05:9377: D8        .byte $D8, $8C, $02, $FB
- D 0 - I - 0x01538B 05:937B: D8        .byte $D8, $8E, $02, $03
- D 0 - I - 0x01538F 05:937F: E0        .byte $E0, $8D, $02, $FC
- D 0 - I - 0x015393 05:9383: E0        .byte $E0, $8F, $02, $04
- D 0 - I - 0x015397 05:9387: E8        .byte $E8, $90, $02, $FA
- D 0 - I - 0x01539B 05:938B: E8        .byte $E8, $92, $02, $02
- D 0 - I - 0x01539F 05:938F: F0        .byte $F0, $88, $02, $F7
- D 0 - I - 0x0153A3 05:9393: F0        .byte $F0, $8A, $02, $01
- D 0 - I - 0x0153A7 05:9397: F8        .byte $F8, $89, $02, $F4
- D 0 - I - 0x0153AB 05:939B: F8        .byte $F8, $8B, $02, $04

loc_hulk_right_frame_2:
- D 0 - I - 0x0153AF 05:939F: 0C        .byte $0C
- D 0 - I - 0x0153B0 05:93A0: D0        .byte $D0, $80, $42, $FC
- D 0 - I - 0x0153B4 05:93A4: D0        .byte $D0, $81, $42, $F3
- D 0 - I - 0x0153B8 05:93A8: D8        .byte $D8, $82, $42, $FE
- D 0 - I - 0x0153BC 05:93AC: D8        .byte $D8, $83, $42, $F6
- D 0 - I - 0x0153C0 05:93B0: E0        .byte $E0, $84, $42, $FD
- D 0 - I - 0x0153C4 05:93B4: E0        .byte $E0, $86, $42, $F5
- D 0 - I - 0x0153C8 05:93B8: E8        .byte $E8, $91, $42, $FE
- D 0 - I - 0x0153CC 05:93BC: E8        .byte $E8, $93, $42, $F6
- D 0 - I - 0x0153D0 05:93C0: F0        .byte $F0, $94, $42, $00
- D 0 - I - 0x0153D4 05:93C4: F0        .byte $F0, $96, $42, $F8
- D 0 - I - 0x0153D8 05:93C8: F8        .byte $F8, $95, $42, $00
- D 0 - I - 0x0153DC 05:93CC: F8        .byte $F8, $97, $42, $F6

loc_hulk_left_frame_2:
- D 0 - I - 0x0153E0 05:93D0: 0C        .byte $0C
- D 0 - I - 0x0153E1 05:93D1: D0        .byte $D0, $80, $02, $FC
- D 0 - I - 0x0153E5 05:93D5: D0        .byte $D0, $81, $02, $05
- D 0 - I - 0x0153E9 05:93D9: D8        .byte $D8, $82, $02, $FA
- D 0 - I - 0x0153ED 05:93DD: D8        .byte $D8, $83, $02, $02
- D 0 - I - 0x0153F1 05:93E1: E0        .byte $E0, $84, $02, $FB
- D 0 - I - 0x0153F5 05:93E5: E0        .byte $E0, $86, $02, $03
- D 0 - I - 0x0153F9 05:93E9: E8        .byte $E8, $91, $02, $FA
- D 0 - I - 0x0153FD 05:93ED: E8        .byte $E8, $93, $02, $02
- D 0 - I - 0x015401 05:93F1: F0        .byte $F0, $94, $02, $F8
- D 0 - I - 0x015405 05:93F5: F0        .byte $F0, $96, $02, $00
- D 0 - I - 0x015409 05:93F9: F8        .byte $F8, $95, $02, $F8
- D 0 - I - 0x01540D 05:93FD: F8        .byte $F8, $97, $02, $02

loc_hulk_right_frame_3:
- D 0 - I - 0x015411 05:9401: 0B        .byte $0B
- D 0 - I - 0x015412 05:9402: D0        .byte $D0, $80, $42, $FC
- D 0 - I - 0x015416 05:9406: D0        .byte $D0, $81, $42, $F3
- D 0 - I - 0x01541A 05:940A: D8        .byte $D8, $98, $42, $FE
- D 0 - I - 0x01541E 05:940E: D8        .byte $D8, $9A, $42, $F6
- D 0 - I - 0x015422 05:9412: E0        .byte $E0, $99, $42, $FD
- D 0 - I - 0x015426 05:9416: E0        .byte $E0, $9B, $42, $F5
- D 0 - I - 0x01542A 05:941A: E8        .byte $E8, $9C, $42, $00
- D 0 - I - 0x01542E 05:941E: E8        .byte $E8, $9E, $42, $F8
- D 0 - I - 0x015432 05:9422: F0        .byte $F0, $A0, $42, $FC
- D 0 - I - 0x015436 05:9426: F8        .byte $F8, $9D, $42, $00
- D 0 - I - 0x01543A 05:942A: F8        .byte $F8, $9F, $42, $F8

loc_hulk_left_frame_3:
- D 0 - I - 0x01543E 05:942E: 0B        .byte $0B
- D 0 - I - 0x01543F 05:942F: D0        .byte $D0, $80, $02, $FC
- D 0 - I - 0x015443 05:9433: D0        .byte $D0, $81, $02, $05
- D 0 - I - 0x015447 05:9437: D8        .byte $D8, $98, $02, $FA
- D 0 - I - 0x01544B 05:943B: D8        .byte $D8, $9A, $02, $02
- D 0 - I - 0x01544F 05:943F: E0        .byte $E0, $99, $02, $FB
- D 0 - I - 0x015453 05:9443: E0        .byte $E0, $9B, $02, $03
- D 0 - I - 0x015457 05:9447: E8        .byte $E8, $9C, $02, $F8
- D 0 - I - 0x01545B 05:944B: E8        .byte $E8, $9E, $02, $00
- D 0 - I - 0x01545F 05:944F: F0        .byte $F0, $A0, $02, $FC
- D 0 - I - 0x015463 05:9453: F8        .byte $F8, $9D, $02, $F8
- D 0 - I - 0x015467 05:9457: F8        .byte $F8, $9F, $02, $00

loc_hulk_right_frame_4:
- D 0 - I - 0x01546B 05:945B: 0C        .byte $0C
- D 0 - I - 0x01546C 05:945C: D0        .byte $D0, $80, $42, $FC
- D 0 - I - 0x015470 05:9460: D0        .byte $D0, $81, $42, $F3
- D 0 - I - 0x015474 05:9464: D8        .byte $D8, $82, $42, $FE
- D 0 - I - 0x015478 05:9468: D8        .byte $D8, $83, $42, $F6
- D 0 - I - 0x01547C 05:946C: E0        .byte $E0, $84, $42, $FD
- D 0 - I - 0x015480 05:9470: E0        .byte $E0, $86, $42, $F5
- D 0 - I - 0x015484 05:9474: E8        .byte $E8, $85, $42, $FE
- D 0 - I - 0x015488 05:9478: E8        .byte $E8, $87, $42, $F6
- D 0 - I - 0x01548C 05:947C: F0        .byte $F0, $88, $42, $01
- D 0 - I - 0x015490 05:9480: F0        .byte $F0, $8A, $42, $F7
- D 0 - I - 0x015494 05:9484: F8        .byte $F8, $89, $42, $04
- D 0 - I - 0x015498 05:9488: F8        .byte $F8, $8B, $42, $F4

loc_hulk_left_frame_4:
- D 0 - I - 0x01549C 05:948C: 0C        .byte $0C
- D 0 - I - 0x01549D 05:948D: D0        .byte $D0, $80, $02, $FC
- D 0 - I - 0x0154A1 05:9491: D0        .byte $D0, $81, $02, $05
- D 0 - I - 0x0154A5 05:9495: D8        .byte $D8, $82, $02, $FA
- D 0 - I - 0x0154A9 05:9499: D8        .byte $D8, $83, $02, $02
- D 0 - I - 0x0154AD 05:949D: E0        .byte $E0, $84, $02, $FB
- D 0 - I - 0x0154B1 05:94A1: E0        .byte $E0, $86, $02, $03
- D 0 - I - 0x0154B5 05:94A5: E8        .byte $E8, $85, $02, $FA
- D 0 - I - 0x0154B9 05:94A9: E8        .byte $E8, $87, $02, $02
- D 0 - I - 0x0154BD 05:94AD: F0        .byte $F0, $88, $02, $F7
- D 0 - I - 0x0154C1 05:94B1: F0        .byte $F0, $8A, $02, $01
- D 0 - I - 0x0154C5 05:94B5: F8        .byte $F8, $89, $02, $F4
- D 0 - I - 0x0154C9 05:94B9: F8        .byte $F8, $8B, $02, $04

loc_hulk_right_frame_5:
- D 0 - I - 0x0154CD 05:94BD: 0C        .byte $0C
- D 0 - I - 0x0154CE 05:94BE: D5        .byte $D5, $80, $42, $FD
- D 0 - I - 0x0154D2 05:94C2: D4        .byte $D4, $81, $42, $F4
- D 0 - I - 0x0154D6 05:94C6: DB        .byte $DB, $8C, $42, $FD
- D 0 - I - 0x0154DA 05:94CA: DB        .byte $DB, $8E, $42, $F5
- D 0 - I - 0x0154DE 05:94CE: E3        .byte $E3, $8D, $42, $FC
- D 0 - I - 0x0154E2 05:94D2: E3        .byte $E3, $8F, $42, $F4
- D 0 - I - 0x0154E6 05:94D6: EB        .byte $EB, $A1, $42, $01
- D 0 - I - 0x0154EA 05:94DA: EB        .byte $EB, $A3, $42, $F9
- D 0 - I - 0x0154EE 05:94DE: F3        .byte $F3, $A4, $42, $04
- D 0 - I - 0x0154F2 05:94E2: F3        .byte $F3, $A6, $42, $FC
- D 0 - I - 0x0154F6 05:94E6: FB        .byte $FB, $A2, $42, $07
- D 0 - I - 0x0154FA 05:94EA: FB        .byte $FB, $A2, $42, $FF

loc_hulk_left_frame_5:
- D 0 - I - 0x0154FE 05:94EE: 0C        .byte $0C
- D 0 - I - 0x0154FF 05:94EF: D5        .byte $D5, $80, $02, $FB
- D 0 - I - 0x015503 05:94F3: D4        .byte $D4, $81, $02, $04
- D 0 - I - 0x015507 05:94F7: DB        .byte $DB, $8C, $02, $FB
- D 0 - I - 0x01550B 05:94FB: DB        .byte $DB, $8E, $02, $03
- D 0 - I - 0x01550F 05:94FF: E3        .byte $E3, $8D, $02, $FC
- D 0 - I - 0x015513 05:9503: E3        .byte $E3, $8F, $02, $04
- D 0 - I - 0x015517 05:9507: EB        .byte $EB, $A1, $02, $F7
- D 0 - I - 0x01551B 05:950B: EB        .byte $EB, $A3, $02, $FF
- D 0 - I - 0x01551F 05:950F: F3        .byte $F3, $A4, $02, $F4
- D 0 - I - 0x015523 05:9513: F3        .byte $F3, $A6, $02, $FC
- D 0 - I - 0x015527 05:9517: FB        .byte $FB, $A2, $02, $F1
- D 0 - I - 0x01552B 05:951B: FB        .byte $FB, $A2, $02, $F9

loc_hulk_right_frame_6:
- D 0 - I - 0x01552F 05:951F: 0B        .byte $0B
- D 0 - I - 0x015530 05:9520: F0        .byte $F0, $B6, $42, $F8
- D 0 - I - 0x015534 05:9524: F8        .byte $F8, $B5, $42, $00
- D 0 - I - 0x015538 05:9528: F8        .byte $F8, $B7, $42, $F8
- D 0 - I - 0x01553C 05:952C: E9        .byte $E9, $A7, $42, $10
- D 0 - I - 0x015540 05:9530: E9        .byte $E9, $A5, $82, $04
- D 0 - I - 0x015544 05:9534: F0        .byte $F0, $8C, $42, $0D
- D 0 - I - 0x015548 05:9538: F0        .byte $F0, $8B, $C2, $06
- D 0 - I - 0x01554C 05:953C: F8        .byte $F8, $B4, $42, $20
- D 0 - I - 0x015550 05:9540: F8        .byte $F8, $93, $82, $16
- D 0 - I - 0x015554 05:9544: F8        .byte $F8, $82, $42, $0E
- D 0 - I - 0x015558 05:9548: F8        .byte $F8, $86, $C2, $06

loc_hulk_left_frame_6:
- D 0 - I - 0x01555C 05:954C: 0B        .byte $0B
- D 0 - I - 0x01555D 05:954D: F0        .byte $F0, $B6, $02, $00
- D 0 - I - 0x015561 05:9551: F8        .byte $F8, $B5, $02, $F8
- D 0 - I - 0x015565 05:9555: F8        .byte $F8, $B7, $02, $00
- D 0 - I - 0x015569 05:9559: E9        .byte $E9, $A7, $02, $E8
- D 0 - I - 0x01556D 05:955D: E9        .byte $E9, $A5, $C2, $F4
- D 0 - I - 0x015571 05:9561: F0        .byte $F0, $8C, $02, $EB
- D 0 - I - 0x015575 05:9565: F0        .byte $F0, $8B, $82, $F2
- D 0 - I - 0x015579 05:9569: F8        .byte $F8, $B4, $02, $D8
- D 0 - I - 0x01557D 05:956D: F8        .byte $F8, $93, $C2, $E2
- D 0 - I - 0x015581 05:9571: F8        .byte $F8, $82, $02, $EA
- D 0 - I - 0x015585 05:9575: F8        .byte $F8, $86, $82, $F2

loc_hulk_hand_right_frame_1:
- D 0 - I - 0x015589 05:9579: 03        .byte $03
- D 0 - I - 0x01558A 05:957A: D2        .byte $D2, $A8, $43, $05
- D 0 - I - 0x01558E 05:957E: DA        .byte $DA, $A9, $43, $05
- D 0 - I - 0x015592 05:9582: E1        .byte $E1, $A5, $42, $03

loc_hulk_hand_left_frame_1:
- D 0 - I - 0x015596 05:9586: 03        .byte $03
- D 0 - I - 0x015597 05:9587: D2        .byte $D2, $A8, $03, $F3
- D 0 - I - 0x01559B 05:958B: DA        .byte $DA, $A9, $03, $F3
- D 0 - I - 0x01559F 05:958F: E1        .byte $E1, $A5, $02, $F5

loc_hulk_hand_right_frame_2:
- D 0 - I - 0x0155A3 05:9593: 03        .byte $03
- D 0 - I - 0x0155A4 05:9594: D0        .byte $D0, $A8, $43, $05
- D 0 - I - 0x0155A8 05:9598: D8        .byte $D8, $A9, $43, $05
- D 0 - I - 0x0155AC 05:959C: DF        .byte $DF, $A5, $42, $03

loc_hulk_hand_left_frame_2:
- D 0 - I - 0x0155B0 05:95A0: 03        .byte $03
- D 0 - I - 0x0155B1 05:95A1: D0        .byte $D0, $A8, $03, $F3
- D 0 - I - 0x0155B5 05:95A5: D8        .byte $D8, $A9, $03, $F3
- D 0 - I - 0x0155B9 05:95A9: DF        .byte $DF, $A5, $02, $F5

loc_hulk_hand_right_frame_3:
- D 0 - I - 0x0155BD 05:95AD: 03        .byte $03
- D 0 - I - 0x0155BE 05:95AE: E1        .byte $E1, $84, $42, $02
- D 0 - I - 0x0155C2 05:95B2: E6        .byte $E6, $AA, $43, $07
- D 0 - I - 0x0155C6 05:95B6: EC        .byte $EC, $AB, $43, $0B

loc_hulk_hand_left_frame_3:
- D 0 - I - 0x0155CA 05:95BA: 03        .byte $03
- D 0 - I - 0x0155CB 05:95BB: E1        .byte $E1, $84, $02, $F6
- D 0 - I - 0x0155CF 05:95BF: E6        .byte $E6, $AA, $03, $F1
- D 0 - I - 0x0155D3 05:95C3: EC        .byte $EC, $AB, $03, $ED

loc_hulk_hand_right_frame_4:
- D 0 - I - 0x0155D7 05:95C7: 04        .byte $04
- D 0 - I - 0x0155D8 05:95C8: CA        .byte $CA, $AC, $42, $02
- D 0 - I - 0x0155DC 05:95CC: C8        .byte $C8, $AE, $43, $FA
- D 0 - I - 0x0155E0 05:95D0: C8        .byte $C8, $AF, $43, $F2
- D 0 - I - 0x0155E4 05:95D4: D2        .byte $D2, $AD, $42, $04

loc_hulk_hand_left_frame_4:
- D 0 - I - 0x0155E8 05:95D8: 04        .byte $04
- D 0 - I - 0x0155E9 05:95D9: CA        .byte $CA, $AC, $02, $F6
- D 0 - I - 0x0155ED 05:95DD: C8        .byte $C8, $AE, $03, $FE
- D 0 - I - 0x0155F1 05:95E1: C8        .byte $C8, $AF, $03, $06
- D 0 - I - 0x0155F5 05:95E5: D2        .byte $D2, $AD, $02, $F4

loc_hulk_hand_right_frame_5:
- D 0 - I - 0x0155F9 05:95E9: 04        .byte $04
- D 0 - I - 0x0155FA 05:95EA: C3        .byte $C3, $AB, $C3, $13
- D 0 - I - 0x0155FE 05:95EE: C9        .byte $C9, $AA, $C3, $0F
- D 0 - I - 0x015602 05:95F2: CF        .byte $CF, $B0, $42, $09
- D 0 - I - 0x015606 05:95F6: D3        .byte $D3, $B2, $42, $05

loc_hulk_hand_left_frame_5:
- D 0 - I - 0x01560A 05:95FA: 04        .byte $04
- D 0 - I - 0x01560B 05:95FB: C3        .byte $C3, $AB, $83, $E5
- D 0 - I - 0x01560F 05:95FF: C9        .byte $C9, $AA, $83, $E9
- D 0 - I - 0x015613 05:9603: CF        .byte $CF, $B0, $02, $EF
- D 0 - I - 0x015617 05:9607: D3        .byte $D3, $B2, $02, $F3

loc_hulk_hand_right_frame_6:
- D 0 - I - 0x01561B 05:960B: 02        .byte $02
- D 0 - I - 0x01561C 05:960C: D9        .byte $D9, $B1, $42, $0E
- D 0 - I - 0x015620 05:9610: D9        .byte $D9, $B3, $42, $06

loc_hulk_hand_left_frame_6:
- D 0 - I - 0x015624 05:9614: 02        .byte $02
- D 0 - I - 0x015625 05:9615: D9        .byte $D9, $B1, $02, $EA
- D 0 - I - 0x015629 05:9619: D9        .byte $D9, $B3, $02, $F2

loc_hulk_hand_right_frame_7:
- D 0 - I - 0x01562D 05:961D: 02        .byte $02
- D 0 - I - 0x01562E 05:961E: DC        .byte $DC, $B2, $C2, $05
- D 0 - I - 0x015632 05:9622: E0        .byte $E0, $B0, $C2, $09

loc_hulk_hand_left_frame_7:
- D 0 - I - 0x015636 05:9626: 02        .byte $02
- D 0 - I - 0x015637 05:9627: DC        .byte $DC, $B2, $82, $F3
- D 0 - I - 0x01563B 05:962B: E0        .byte $E0, $B0, $82, $EF

loc_hulk_projectile_frame_1:
- D 0 - I - 0x01563F 05:962F: 02        .byte $02
- D 0 - I - 0x015640 05:9630: F3        .byte $F3, $AB, $80, $F8
- D 0 - I - 0x015644 05:9634: F9        .byte $F9, $AA, $80, $FC

loc_hulk_projectile_frame_2:
- D 0 - I - 0x015648 05:9638: 02        .byte $02
- D 0 - I - 0x015649 05:9639: F5        .byte $F5, $AA, $00, $FC
- D 0 - I - 0x01564D 05:963D: FB        .byte $FB, $AB, $00, $F8

loc_hulk_projectile_frame_3:
- D 0 - I - 0x015651 05:9641: 02        .byte $02
- D 0 - I - 0x015652 05:9642: F5        .byte $F5, $AA, $40, $FC
- D 0 - I - 0x015656 05:9646: FB        .byte $FB, $AB, $40, $00

loc_hulk_projectile_frame_4:
- D 0 - I - 0x01565A 05:964A: 02        .byte $02
- D 0 - I - 0x01565B 05:964B: F3        .byte $F3, $AB, $C0, $00
- D 0 - I - 0x01565F 05:964F: F9        .byte $F9, $AA, $C0, $FC

loc_kim_right_frame_1:
- D 0 - I - 0x015663 05:9653: 09        .byte $09
- D 0 - I - 0x015664 05:9654: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x015668 05:9658: E2        .byte $E2, $A5, $42, $03
- D 0 - I - 0x01566C 05:965C: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x015670 05:9660: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x015674 05:9664: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015678 05:9668: F0        .byte $F0, $90, $42, $00
- D 0 - I - 0x01567C 05:966C: F0        .byte $F0, $92, $42, $F8
- D 0 - I - 0x015680 05:9670: F8        .byte $F8, $91, $42, $00
- D 0 - I - 0x015684 05:9674: F8        .byte $F8, $93, $42, $F7

loc_kim_left_frame_1:
- D 0 - I - 0x015688 05:9678: 09        .byte $09
- D 0 - I - 0x015689 05:9679: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x01568D 05:967D: E2        .byte $E2, $A5, $02, $F5
- D 0 - I - 0x015691 05:9681: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x015695 05:9685: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x015699 05:9689: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x01569D 05:968D: F0        .byte $F0, $90, $02, $F8
- D 0 - I - 0x0156A1 05:9691: F0        .byte $F0, $92, $02, $00
- D 0 - I - 0x0156A5 05:9695: F8        .byte $F8, $91, $02, $F8
- D 0 - I - 0x0156A9 05:9699: F8        .byte $F8, $93, $02, $01

loc_kim_right_frame_2:
- D 0 - I - 0x0156AD 05:969D: 09        .byte $09
- D 0 - I - 0x0156AE 05:969E: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x0156B2 05:96A2: E2        .byte $E2, $A5, $42, $03
- D 0 - I - 0x0156B6 05:96A6: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x0156BA 05:96AA: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x0156BE 05:96AE: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x0156C2 05:96B2: F0        .byte $F0, $94, $42, $00
- D 0 - I - 0x0156C6 05:96B6: F0        .byte $F0, $96, $42, $F8
- D 0 - I - 0x0156CA 05:96BA: F8        .byte $F8, $95, $42, $00
- D 0 - I - 0x0156CE 05:96BE: F8        .byte $F8, $97, $42, $F8

loc_kim_left_frame_2:
- D 0 - I - 0x0156D2 05:96C2: 09        .byte $09
- D 0 - I - 0x0156D3 05:96C3: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x0156D7 05:96C7: E2        .byte $E2, $A5, $02, $F5
- D 0 - I - 0x0156DB 05:96CB: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x0156DF 05:96CF: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x0156E3 05:96D3: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x0156E7 05:96D7: F0        .byte $F0, $94, $02, $F8
- D 0 - I - 0x0156EB 05:96DB: F0        .byte $F0, $96, $02, $00
- D 0 - I - 0x0156EF 05:96DF: F8        .byte $F8, $95, $02, $F8
- D 0 - I - 0x0156F3 05:96E3: F8        .byte $F8, $97, $02, $00

loc_kim_right_frame_3:
- D 0 - I - 0x0156F7 05:96E7: 09        .byte $09
- D 0 - I - 0x0156F8 05:96E8: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x0156FC 05:96EC: E2        .byte $E2, $A5, $42, $03
- D 0 - I - 0x015700 05:96F0: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x015704 05:96F4: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x015708 05:96F8: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x01570C 05:96FC: F0        .byte $F0, $98, $42, $00
- D 0 - I - 0x015710 05:9700: F0        .byte $F0, $9A, $42, $F8
- D 0 - I - 0x015714 05:9704: F8        .byte $F8, $99, $42, $00
- D 0 - I - 0x015718 05:9708: F8        .byte $F8, $9B, $42, $F8

loc_kim_left_frame_3:
- D 0 - I - 0x01571C 05:970C: 09        .byte $09
- D 0 - I - 0x01571D 05:970D: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x015721 05:9711: E2        .byte $E2, $A5, $02, $F5
- D 0 - I - 0x015725 05:9715: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x015729 05:9719: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x01572D 05:971D: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x015731 05:9721: F0        .byte $F0, $98, $02, $F8
- D 0 - I - 0x015735 05:9725: F0        .byte $F0, $9A, $02, $00
- D 0 - I - 0x015739 05:9729: F8        .byte $F8, $99, $02, $F8
- D 0 - I - 0x01573D 05:972D: F8        .byte $F8, $9B, $02, $00

loc_kim_right_frame_4:
- D 0 - I - 0x015741 05:9731: 07        .byte $07
- D 0 - I - 0x015742 05:9732: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x015746 05:9736: E2        .byte $E2, $A5, $42, $03
- D 0 - I - 0x01574A 05:973A: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x01574E 05:973E: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x015752 05:9742: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015756 05:9746: F0        .byte $F0, $A9, $42, $FB
- D 0 - I - 0x01575A 05:974A: F8        .byte $F8, $AA, $42, $FB

loc_kim_left_frame_4:
- D 0 - I - 0x01575E 05:974E: 07        .byte $07
- D 0 - I - 0x01575F 05:974F: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x015763 05:9753: E2        .byte $E2, $A5, $02, $F5
- D 0 - I - 0x015767 05:9757: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x01576B 05:975B: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x01576F 05:975F: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x015773 05:9763: F0        .byte $F0, $A9, $02, $FD
- D 0 - I - 0x015777 05:9767: F8        .byte $F8, $AA, $02, $FD

loc_kim_right_frame_5:
- D 0 - I - 0x01577B 05:976B: 07        .byte $07
- D 0 - I - 0x01577C 05:976C: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x015780 05:9770: E0        .byte $E0, $9E, $42, $02
- D 0 - I - 0x015784 05:9774: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x015788 05:9778: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x01578C 05:977C: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015790 05:9780: F0        .byte $F0, $A9, $42, $FB
- D 0 - I - 0x015794 05:9784: F8        .byte $F8, $AA, $42, $FB

loc_kim_left_frame_5:
- D 0 - I - 0x015798 05:9788: 07        .byte $07
- D 0 - I - 0x015799 05:9789: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x01579D 05:978D: E0        .byte $E0, $9E, $02, $F6
- D 0 - I - 0x0157A1 05:9791: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x0157A5 05:9795: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x0157A9 05:9799: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x0157AD 05:979D: F0        .byte $F0, $A9, $02, $FD
- D 0 - I - 0x0157B1 05:97A1: F8        .byte $F8, $AA, $02, $FD

loc_kim_right_frame_6:
- D 0 - I - 0x0157B5 05:97A5: 08        .byte $08
- D 0 - I - 0x0157B6 05:97A6: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x0157BA 05:97AA: E0        .byte $E0, $8F, $42, $02
- D 0 - I - 0x0157BE 05:97AE: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x0157C2 05:97B2: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x0157C6 05:97B6: E8        .byte $E8, $A0, $42, $03
- D 0 - I - 0x0157CA 05:97BA: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x0157CE 05:97BE: F0        .byte $F0, $A9, $42, $FB
- D 0 - I - 0x0157D2 05:97C2: F8        .byte $F8, $AA, $42, $FB

loc_kim_left_frame_6:
- D 0 - I - 0x0157D6 05:97C6: 08        .byte $08
- D 0 - I - 0x0157D7 05:97C7: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x0157DB 05:97CB: E0        .byte $E0, $8F, $02, $F6
- D 0 - I - 0x0157DF 05:97CF: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x0157E3 05:97D3: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x0157E7 05:97D7: E8        .byte $E8, $A0, $02, $F5
- D 0 - I - 0x0157EB 05:97DB: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x0157EF 05:97DF: F0        .byte $F0, $A9, $02, $FD
- D 0 - I - 0x0157F3 05:97E3: F8        .byte $F8, $AA, $02, $FD

loc_kim_right_frame_7:
- D 0 - I - 0x0157F7 05:97E7: 08        .byte $08
- D 0 - I - 0x0157F8 05:97E8: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x0157FC 05:97EC: E0        .byte $E0, $9C, $42, $02
- D 0 - I - 0x015800 05:97F0: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x015804 05:97F4: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x015808 05:97F8: E8        .byte $E8, $9D, $42, $06
- D 0 - I - 0x01580C 05:97FC: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015810 05:9800: F0        .byte $F0, $A9, $42, $FB
- D 0 - I - 0x015814 05:9804: F8        .byte $F8, $AA, $42, $FB

loc_kim_left_frame_7:
- D 0 - I - 0x015818 05:9808: 08        .byte $08
- D 0 - I - 0x015819 05:9809: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x01581D 05:980D: E0        .byte $E0, $9C, $02, $F6
- D 0 - I - 0x015821 05:9811: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x015825 05:9815: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x015829 05:9819: E8        .byte $E8, $9D, $02, $F2
- D 0 - I - 0x01582D 05:981D: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x015831 05:9821: F0        .byte $F0, $A9, $02, $FD
- D 0 - I - 0x015835 05:9825: F8        .byte $F8, $AA, $02, $FD

loc_kim_right_frame_8:
- D 0 - I - 0x015839 05:9829: 08        .byte $08
- D 0 - I - 0x01583A 05:982A: D9        .byte $D9, $A4, $42, $0A
- D 0 - I - 0x01583E 05:982E: D8        .byte $D8, $A6, $42, $FB
- D 0 - I - 0x015842 05:9832: DD        .byte $DD, $9F, $42, $02
- D 0 - I - 0x015846 05:9836: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x01584A 05:983A: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x01584E 05:983E: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015852 05:9842: F0        .byte $F0, $A9, $42, $FB
- D 0 - I - 0x015856 05:9846: F8        .byte $F8, $AA, $42, $FB

loc_kim_left_frame_8:
- D 0 - I - 0x01585A 05:984A: 08        .byte $08
- D 0 - I - 0x01585B 05:984B: D9        .byte $D9, $A4, $02, $EE
- D 0 - I - 0x01585F 05:984F: D8        .byte $D8, $A6, $02, $FD
- D 0 - I - 0x015863 05:9853: DD        .byte $DD, $9F, $02, $F6
- D 0 - I - 0x015867 05:9857: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x01586B 05:985B: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x01586F 05:985F: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x015873 05:9863: F0        .byte $F0, $A9, $02, $FD
- D 0 - I - 0x015877 05:9867: F8        .byte $F8, $AA, $02, $FD

loc_kim_right_frame_9:
- D 0 - I - 0x01587B 05:986B: 09        .byte $09
- D 0 - I - 0x01587C 05:986C: D8        .byte $D8, $A6, $42, $FC
- D 0 - I - 0x015880 05:9870: E2        .byte $E2, $A5, $42, $03
- D 0 - I - 0x015884 05:9874: E0        .byte $E0, $A7, $42, $FB
- D 0 - I - 0x015888 05:9878: E2        .byte $E2, $AB, $42, $F3
- D 0 - I - 0x01588C 05:987C: E8        .byte $E8, $A8, $42, $FB
- D 0 - I - 0x015890 05:9880: EC        .byte $EC, $AC, $42, $03
- D 0 - I - 0x015894 05:9884: F0        .byte $F0, $AE, $42, $FB
- D 0 - I - 0x015898 05:9888: F4        .byte $F4, $AD, $42, $03
- D 0 - I - 0x01589C 05:988C: F8        .byte $F8, $AF, $42, $FE

loc_kim_left_frame_9:
- D 0 - I - 0x0158A0 05:9890: 09        .byte $09
- D 0 - I - 0x0158A1 05:9891: D8        .byte $D8, $A6, $02, $FC
- D 0 - I - 0x0158A5 05:9895: E2        .byte $E2, $A5, $02, $F5
- D 0 - I - 0x0158A9 05:9899: E0        .byte $E0, $A7, $02, $FD
- D 0 - I - 0x0158AD 05:989D: E2        .byte $E2, $AB, $02, $05
- D 0 - I - 0x0158B1 05:98A1: E8        .byte $E8, $A8, $02, $FD
- D 0 - I - 0x0158B5 05:98A5: EC        .byte $EC, $AC, $02, $F5
- D 0 - I - 0x0158B9 05:98A9: F0        .byte $F0, $AE, $02, $FD
- D 0 - I - 0x0158BD 05:98AD: F4        .byte $F4, $AD, $02, $F5
- D 0 - I - 0x0158C1 05:98B1: F8        .byte $F8, $AF, $02, $FA

loc_kim_right_frame_10:
- D 0 - I - 0x0158C5 05:98B5: 08        .byte $08
- D 0 - I - 0x0158C6 05:98B6: E4        .byte $E4, $A6, $42, $FC
- D 0 - I - 0x0158CA 05:98BA: EE        .byte $EE, $A5, $42, $03
- D 0 - I - 0x0158CE 05:98BE: EC        .byte $EC, $A7, $42, $FB
- D 0 - I - 0x0158D2 05:98C2: EE        .byte $EE, $AB, $42, $F3
- D 0 - I - 0x0158D6 05:98C6: F4        .byte $F4, $A8, $42, $FB
- D 0 - I - 0x0158DA 05:98CA: FA        .byte $FA, $8C, $42, $0B
- D 0 - I - 0x0158DE 05:98CE: FA        .byte $FA, $8D, $42, $03
- D 0 - I - 0x0158E2 05:98D2: FC        .byte $FC, $8E, $42, $FB

loc_kim_left_frame_10:
- D 0 - I - 0x0158E6 05:98D6: 08        .byte $08
- D 0 - I - 0x0158E7 05:98D7: E4        .byte $E4, $A6, $02, $FC
- D 0 - I - 0x0158EB 05:98DB: EE        .byte $EE, $A5, $02, $F5
- D 0 - I - 0x0158EF 05:98DF: EC        .byte $EC, $A7, $02, $FD
- D 0 - I - 0x0158F3 05:98E3: EE        .byte $EE, $AB, $02, $05
- D 0 - I - 0x0158F7 05:98E7: F4        .byte $F4, $A8, $02, $FD
- D 0 - I - 0x0158FB 05:98EB: FA        .byte $FA, $8C, $02, $ED
- D 0 - I - 0x0158FF 05:98EF: FA        .byte $FA, $8D, $02, $F5
- D 0 - I - 0x015903 05:98F3: FC        .byte $FC, $8E, $02, $FD

loc_butterfly_right_frame_1:
- D 0 - I - 0x015907 05:98F7: 01        .byte $01
- D 0 - I - 0x015908 05:98F8: F8        .byte $F8, $8B, $43, $FC

loc_butterfly_left_frame_1:
- D 0 - I - 0x01590C 05:98FC: 01        .byte $01
- D 0 - I - 0x01590D 05:98FD: F8        .byte $F8, $8B, $03, $FC

loc_butterfly_right_frame_2:
- D 0 - I - 0x015911 05:9901: 01        .byte $01
- D 0 - I - 0x015912 05:9902: F8        .byte $F8, $8A, $43, $FC

loc_butterfly_left_frame_2:
- D 0 - I - 0x015916 05:9906: 01        .byte $01
- D 0 - I - 0x015917 05:9907: F8        .byte $F8, $8A, $03, $FC

loc_butterfly_right_frame_3:
- D 0 - I - 0x01591B 05:990B: 01        .byte $01
- D 0 - I - 0x01591C 05:990C: F8        .byte $F8, $89, $43, $FC

loc_butterfly_left_frame_3:
- D 0 - I - 0x015920 05:9910: 01        .byte $01
- D 0 - I - 0x015921 05:9911: F8        .byte $F8, $89, $03, $FC

loc_raid_right_frame_1:
- D 0 - I - 0x015925 05:9915: 0B        .byte $0B
- D 0 - I - 0x015926 05:9916: D0        .byte $D0, $80, $42, $FC
- D 0 - I - 0x01592A 05:991A: D0        .byte $D0, $82, $42, $F4
- D 0 - I - 0x01592E 05:991E: D8        .byte $D8, $81, $42, $FC
- D 0 - I - 0x015932 05:9922: D8        .byte $D8, $83, $42, $F4
- D 0 - I - 0x015936 05:9926: E0        .byte $E0, $86, $42, $FC
- D 0 - I - 0x01593A 05:992A: E8        .byte $E8, $85, $42, $04
- D 0 - I - 0x01593E 05:992E: E8        .byte $E8, $87, $42, $FC
- D 0 - I - 0x015942 05:9932: F0        .byte $F0, $88, $42, $02
- D 0 - I - 0x015946 05:9936: F0        .byte $F0, $8A, $42, $F6
- D 0 - I - 0x01594A 05:993A: F8        .byte $F8, $89, $42, $06
- D 0 - I - 0x01594E 05:993E: F8        .byte $F8, $8B, $42, $F2

loc_raid_left_frame_1:
- D 0 - I - 0x015952 05:9942: 0B        .byte $0B
- D 0 - I - 0x015953 05:9943: D0        .byte $D0, $80, $02, $FC
- D 0 - I - 0x015957 05:9947: D0        .byte $D0, $82, $02, $04
- D 0 - I - 0x01595B 05:994B: D8        .byte $D8, $81, $02, $FC
- D 0 - I - 0x01595F 05:994F: D8        .byte $D8, $83, $02, $04
- D 0 - I - 0x015963 05:9953: E0        .byte $E0, $86, $02, $FC
- D 0 - I - 0x015967 05:9957: E8        .byte $E8, $85, $02, $F4
- D 0 - I - 0x01596B 05:995B: E8        .byte $E8, $87, $02, $FC
- D 0 - I - 0x01596F 05:995F: F0        .byte $F0, $88, $02, $F6
- D 0 - I - 0x015973 05:9963: F0        .byte $F0, $8A, $02, $02
- D 0 - I - 0x015977 05:9967: F8        .byte $F8, $89, $02, $F2
- D 0 - I - 0x01597B 05:996B: F8        .byte $F8, $8B, $02, $06

loc_raid_right_frame_2:
- D 0 - I - 0x01597F 05:996F: 0F        .byte $0F
- D 0 - I - 0x015980 05:9970: D0        .byte $D0, $8C, $42, $FF
- D 0 - I - 0x015984 05:9974: D0        .byte $D0, $8E, $42, $F7
- D 0 - I - 0x015988 05:9978: D8        .byte $D8, $8D, $42, $FF
- D 0 - I - 0x01598C 05:997C: D8        .byte $D8, $8F, $42, $F7
- D 0 - I - 0x015990 05:9980: E0        .byte $E0, $90, $42, $04
- D 0 - I - 0x015994 05:9984: E0        .byte $E0, $92, $42, $FC
- D 0 - I - 0x015998 05:9988: E0        .byte $E0, $94, $42, $F4
- D 0 - I - 0x01599C 05:998C: E8        .byte $E8, $91, $42, $04
- D 0 - I - 0x0159A0 05:9990: E8        .byte $E8, $93, $42, $FC
- D 0 - I - 0x0159A4 05:9994: E8        .byte $E8, $95, $42, $F4
- D 0 - I - 0x0159A8 05:9998: F0        .byte $F0, $96, $42, $04
- D 0 - I - 0x0159AC 05:999C: F0        .byte $F0, $9A, $42, $FC
- D 0 - I - 0x0159B0 05:99A0: F0        .byte $F0, $98, $42, $F4
- D 0 - I - 0x0159B4 05:99A4: F8        .byte $F8, $97, $42, $03
- D 0 - I - 0x0159B8 05:99A8: F8        .byte $F8, $99, $42, $F4

loc_raid_left_frame_2:
- D 0 - I - 0x0159BC 05:99AC: 0F        .byte $0F
- D 0 - I - 0x0159BD 05:99AD: D0        .byte $D0, $8C, $02, $F9
- D 0 - I - 0x0159C1 05:99B1: D0        .byte $D0, $8E, $02, $01
- D 0 - I - 0x0159C5 05:99B5: D8        .byte $D8, $8D, $02, $F9
- D 0 - I - 0x0159C9 05:99B9: D8        .byte $D8, $8F, $02, $01
- D 0 - I - 0x0159CD 05:99BD: E0        .byte $E0, $90, $02, $F4
- D 0 - I - 0x0159D1 05:99C1: E0        .byte $E0, $92, $02, $FC
- D 0 - I - 0x0159D5 05:99C5: E0        .byte $E0, $94, $02, $04
- D 0 - I - 0x0159D9 05:99C9: E8        .byte $E8, $91, $02, $F4
- D 0 - I - 0x0159DD 05:99CD: E8        .byte $E8, $93, $02, $FC
- D 0 - I - 0x0159E1 05:99D1: E8        .byte $E8, $95, $02, $04
- D 0 - I - 0x0159E5 05:99D5: F0        .byte $F0, $96, $02, $F4
- D 0 - I - 0x0159E9 05:99D9: F0        .byte $F0, $9A, $02, $FC
- D 0 - I - 0x0159ED 05:99DD: F0        .byte $F0, $98, $02, $04
- D 0 - I - 0x0159F1 05:99E1: F8        .byte $F8, $97, $02, $F5
- D 0 - I - 0x0159F5 05:99E5: F8        .byte $F8, $99, $02, $04

loc_raid_right_frame_3:
- D 0 - I - 0x0159F9 05:99E9: 0B        .byte $0B
- D 0 - I - 0x0159FA 05:99EA: D0        .byte $D0, $9E, $42, $00
- D 0 - I - 0x0159FE 05:99EE: D0        .byte $D0, $A0, $42, $F8
- D 0 - I - 0x015A02 05:99F2: D8        .byte $D8, $9F, $42, $00
- D 0 - I - 0x015A06 05:99F6: D8        .byte $D8, $A1, $42, $F8
- D 0 - I - 0x015A0A 05:99FA: E0        .byte $E0, $A2, $42, $00
- D 0 - I - 0x015A0E 05:99FE: E0        .byte $E0, $A4, $42, $F8
- D 0 - I - 0x015A12 05:9A02: E8        .byte $E8, $A3, $42, $00
- D 0 - I - 0x015A16 05:9A06: E8        .byte $E8, $A5, $42, $F8
- D 0 - I - 0x015A1A 05:9A0A: F0        .byte $F0, $9C, $42, $FC
- D 0 - I - 0x015A1E 05:9A0E: F8        .byte $F8, $9B, $42, $00
- D 0 - I - 0x015A22 05:9A12: F8        .byte $F8, $9D, $42, $F8

loc_raid_left_frame_3:
- D 0 - I - 0x015A26 05:9A16: 0B        .byte $0B
- D 0 - I - 0x015A27 05:9A17: D0        .byte $D0, $9E, $02, $F8
- D 0 - I - 0x015A2B 05:9A1B: D0        .byte $D0, $A0, $02, $00
- D 0 - I - 0x015A2F 05:9A1F: D8        .byte $D8, $9F, $02, $F8
- D 0 - I - 0x015A33 05:9A23: D8        .byte $D8, $A1, $02, $00
- D 0 - I - 0x015A37 05:9A27: E0        .byte $E0, $A2, $02, $F8
- D 0 - I - 0x015A3B 05:9A2B: E0        .byte $E0, $A4, $02, $00
- D 0 - I - 0x015A3F 05:9A2F: E8        .byte $E8, $A3, $02, $F8
- D 0 - I - 0x015A43 05:9A33: E8        .byte $E8, $A5, $02, $00
- D 0 - I - 0x015A47 05:9A37: F0        .byte $F0, $9C, $02, $FC
- D 0 - I - 0x015A4B 05:9A3B: F8        .byte $F8, $9B, $02, $F8
- D 0 - I - 0x015A4F 05:9A3F: F8        .byte $F8, $9D, $02, $00

loc_raid_right_frame_4:
- D 0 - I - 0x015A53 05:9A43: 0B        .byte $0B
- D 0 - I - 0x015A54 05:9A44: D0        .byte $D0, $9E, $42, $00
- D 0 - I - 0x015A58 05:9A48: D0        .byte $D0, $A0, $42, $F8
- D 0 - I - 0x015A5C 05:9A4C: D8        .byte $D8, $9F, $42, $00
- D 0 - I - 0x015A60 05:9A50: D8        .byte $D8, $A1, $42, $F8
- D 0 - I - 0x015A64 05:9A54: E0        .byte $E0, $A2, $42, $00
- D 0 - I - 0x015A68 05:9A58: E0        .byte $E0, $A4, $42, $F8
- D 0 - I - 0x015A6C 05:9A5C: E8        .byte $E8, $A6, $42, $00
- D 0 - I - 0x015A70 05:9A60: E8        .byte $E8, $A5, $42, $F8
- D 0 - I - 0x015A74 05:9A64: F0        .byte $F0, $A8, $42, $FC
- D 0 - I - 0x015A78 05:9A68: F8        .byte $F8, $A7, $42, $04
- D 0 - I - 0x015A7C 05:9A6C: F8        .byte $F8, $A9, $42, $FC

loc_raid_left_frame_4:
- D 0 - I - 0x015A80 05:9A70: 0B        .byte $0B
- D 0 - I - 0x015A81 05:9A71: D0        .byte $D0, $9E, $02, $F8
- D 0 - I - 0x015A85 05:9A75: D0        .byte $D0, $A0, $02, $00
- D 0 - I - 0x015A89 05:9A79: D8        .byte $D8, $9F, $02, $F8
- D 0 - I - 0x015A8D 05:9A7D: D8        .byte $D8, $A1, $02, $00
- D 0 - I - 0x015A91 05:9A81: E0        .byte $E0, $A2, $02, $F8
- D 0 - I - 0x015A95 05:9A85: E0        .byte $E0, $A4, $02, $00
- D 0 - I - 0x015A99 05:9A89: E8        .byte $E8, $A6, $02, $F8
- D 0 - I - 0x015A9D 05:9A8D: E8        .byte $E8, $A5, $02, $00
- D 0 - I - 0x015AA1 05:9A91: F0        .byte $F0, $A8, $02, $FC
- D 0 - I - 0x015AA5 05:9A95: F8        .byte $F8, $A7, $02, $F4
- D 0 - I - 0x015AA9 05:9A99: F8        .byte $F8, $A9, $02, $FC

loc_raid_right_frame_5:
- D 0 - I - 0x015AAD 05:9A9D: 0C        .byte $0C
- D 0 - I - 0x015AAE 05:9A9E: D4        .byte $D4, $9E, $42, $00
- D 0 - I - 0x015AB2 05:9AA2: D4        .byte $D4, $A0, $42, $F8
- D 0 - I - 0x015AB6 05:9AA6: D2        .byte $D2, $84, $42, $FC
- D 0 - I - 0x015ABA 05:9AAA: DC        .byte $DC, $9F, $42, $00
- D 0 - I - 0x015ABE 05:9AAE: DC        .byte $DC, $A1, $42, $F8
- D 0 - I - 0x015AC2 05:9AB2: E4        .byte $E4, $A2, $42, $00
- D 0 - I - 0x015AC6 05:9AB6: E4        .byte $E4, $A4, $42, $F8
- D 0 - I - 0x015ACA 05:9ABA: EC        .byte $EC, $AA, $42, $00
- D 0 - I - 0x015ACE 05:9ABE: EC        .byte $EC, $A5, $42, $F8
- D 0 - I - 0x015AD2 05:9AC2: F1        .byte $F1, $AC, $42, $08
- D 0 - I - 0x015AD6 05:9AC6: F4        .byte $F4, $AB, $42, $00
- D 0 - I - 0x015ADA 05:9ACA: FB        .byte $FB, $AD, $42, $00

loc_raid_left_frame_5:
- D 0 - I - 0x015ADE 05:9ACE: 0C        .byte $0C
- D 0 - I - 0x015ADF 05:9ACF: D4        .byte $D4, $9E, $02, $F8
- D 0 - I - 0x015AE3 05:9AD3: D4        .byte $D4, $A0, $02, $00
- D 0 - I - 0x015AE7 05:9AD7: D2        .byte $D2, $84, $02, $FC
- D 0 - I - 0x015AEB 05:9ADB: DC        .byte $DC, $9F, $02, $F8
- D 0 - I - 0x015AEF 05:9ADF: DC        .byte $DC, $A1, $02, $00
- D 0 - I - 0x015AF3 05:9AE3: E4        .byte $E4, $A2, $02, $F8
- D 0 - I - 0x015AF7 05:9AE7: E4        .byte $E4, $A4, $02, $00
- D 0 - I - 0x015AFB 05:9AEB: EC        .byte $EC, $AA, $02, $F8
- D 0 - I - 0x015AFF 05:9AEF: EC        .byte $EC, $A5, $02, $00
- D 0 - I - 0x015B03 05:9AF3: F1        .byte $F1, $AC, $02, $F0
- D 0 - I - 0x015B07 05:9AF7: F4        .byte $F4, $AB, $02, $F8
- D 0 - I - 0x015B0B 05:9AFB: FB        .byte $FB, $AD, $02, $F8

loc_raid_right_frame_6:
- D 0 - I - 0x015B0F 05:9AFF: 10        .byte $10
- D 0 - I - 0x015B10 05:9B00: F0        .byte $F0, $B4, $42, $E4
- D 0 - I - 0x015B14 05:9B04: F0        .byte $F0, $B6, $42, $DC
- D 0 - I - 0x015B18 05:9B08: F8        .byte $F8, $B5, $42, $E4
- D 0 - I - 0x015B1C 05:9B0C: F8        .byte $F8, $B7, $42, $DC
- D 0 - I - 0x015B20 05:9B10: E0        .byte $E0, $9E, $42, $00
- D 0 - I - 0x015B24 05:9B14: E0        .byte $E0, $A0, $42, $F8
- D 0 - I - 0x015B28 05:9B18: DE        .byte $DE, $84, $42, $FC
- D 0 - I - 0x015B2C 05:9B1C: E8        .byte $E8, $B8, $42, $F1
- D 0 - I - 0x015B30 05:9B20: F0        .byte $F0, $B9, $42, $F1
- D 0 - I - 0x015B34 05:9B24: E8        .byte $E8, $9F, $42, $00
- D 0 - I - 0x015B38 05:9B28: E8        .byte $E8, $A1, $42, $F8
- D 0 - I - 0x015B3C 05:9B2C: F0        .byte $F0, $A2, $42, $00
- D 0 - I - 0x015B40 05:9B30: F0        .byte $F0, $A4, $42, $F8
- D 0 - I - 0x015B44 05:9B34: F8        .byte $F8, $AE, $42, $FD
- D 0 - I - 0x015B48 05:9B38: F8        .byte $F8, $AF, $42, $F5
- D 0 - I - 0x015B4C 05:9B3C: F8        .byte $F8, $AA, $42, $ED

loc_raid_left_frame_6:
- D 0 - I - 0x015B50 05:9B40: 10        .byte $10
- D 0 - I - 0x015B51 05:9B41: F0        .byte $F0, $B4, $02, $14
- D 0 - I - 0x015B55 05:9B45: F0        .byte $F0, $B6, $02, $1C
- D 0 - I - 0x015B59 05:9B49: F8        .byte $F8, $B5, $02, $14
- D 0 - I - 0x015B5D 05:9B4D: F8        .byte $F8, $B7, $02, $1C
- D 0 - I - 0x015B61 05:9B51: E0        .byte $E0, $9E, $02, $F8
- D 0 - I - 0x015B65 05:9B55: E0        .byte $E0, $A0, $02, $00
- D 0 - I - 0x015B69 05:9B59: DE        .byte $DE, $84, $02, $FC
- D 0 - I - 0x015B6D 05:9B5D: E8        .byte $E8, $B8, $02, $07
- D 0 - I - 0x015B71 05:9B61: F0        .byte $F0, $B9, $02, $07
- D 0 - I - 0x015B75 05:9B65: E8        .byte $E8, $9F, $02, $F8
- D 0 - I - 0x015B79 05:9B69: E8        .byte $E8, $A1, $02, $00
- D 0 - I - 0x015B7D 05:9B6D: F0        .byte $F0, $A2, $02, $F8
- D 0 - I - 0x015B81 05:9B71: F0        .byte $F0, $A4, $02, $00
- D 0 - I - 0x015B85 05:9B75: F8        .byte $F8, $AE, $02, $FB
- D 0 - I - 0x015B89 05:9B79: F8        .byte $F8, $AF, $02, $03
- D 0 - I - 0x015B8D 05:9B7D: F8        .byte $F8, $AA, $02, $0B

loc_raid_head_frame_1:
- D 0 - I - 0x015B91 05:9B81: 01        .byte $01
- D 0 - I - 0x015B92 05:9B82: CE        .byte $CE, $84, $42, $FC

loc_raid_head_frame_3:
- D 0 - I - 0x015B96 05:9B86: 01        .byte $01
- D 0 - I - 0x015B97 05:9B87: CE        .byte $CE, $BB, $02, $FC

loc_raid_head_frame_2:
- D 0 - I - 0x015B9B 05:9B8B: 01        .byte $01
- D 0 - I - 0x015B9C 05:9B8C: CE        .byte $CE, $84, $02, $FC

loc_raid_head_frame_4:
- D 0 - I - 0x015BA0 05:9B90: 01        .byte $01
- D 0 - I - 0x015BA1 05:9B91: CE        .byte $CE, $BC, $02, $FC

loc_raid_projectile_frame_1:
- D 0 - I - 0x015BA5 05:9B95: 01        .byte $01
- D 0 - I - 0x015BA6 05:9B96: F8        .byte $F8, $BD, $40, $FC

loc_raid_projectile_frame_2:
- D 0 - I - 0x015BAA 05:9B9A: 01        .byte $01
- D 0 - I - 0x015BAB 05:9B9B: F8        .byte $F8, $BE, $00, $FC

loc_last_boss_part_right_frame_1:
- D 0 - I - 0x015BAF 05:9B9F: 08        .byte $08
- D 0 - I - 0x015BB0 05:9BA0: DD        .byte $DD, $81, $42, $FD
- D 0 - I - 0x015BB4 05:9BA4: E5        .byte $E5, $82, $42, $FC
- D 0 - I - 0x015BB8 05:9BA8: ED        .byte $ED, $83, $42, $FB
- D 0 - I - 0x015BBC 05:9BAC: E9        .byte $E9, $85, $42, $F4
- D 0 - I - 0x015BC0 05:9BB0: F2        .byte $F2, $84, $42, $FC
- D 0 - I - 0x015BC4 05:9BB4: F0        .byte $F0, $86, $42, $F4
- D 0 - I - 0x015BC8 05:9BB8: F8        .byte $F8, $87, $42, $F8
- D 0 - I - 0x015BCC 05:9BBC: F8        .byte $F8, $87, $42, $F2

loc_last_boss_part_left_frame_1:
- D 0 - I - 0x015BD0 05:9BC0: 08        .byte $08
- D 0 - I - 0x015BD1 05:9BC1: DD        .byte $DD, $81, $02, $FB
- D 0 - I - 0x015BD5 05:9BC5: E5        .byte $E5, $82, $02, $FC
- D 0 - I - 0x015BD9 05:9BC9: ED        .byte $ED, $83, $02, $FD
- D 0 - I - 0x015BDD 05:9BCD: E9        .byte $E9, $85, $02, $04
- D 0 - I - 0x015BE1 05:9BD1: F2        .byte $F2, $84, $02, $FC
- D 0 - I - 0x015BE5 05:9BD5: F0        .byte $F0, $86, $02, $04
- D 0 - I - 0x015BE9 05:9BD9: F8        .byte $F8, $87, $02, $00
- D 0 - I - 0x015BED 05:9BDD: F8        .byte $F8, $87, $02, $06

loc_last_boss_part_right_frame_2:
- D 0 - I - 0x015BF1 05:9BE1: 06        .byte $06
- D 0 - I - 0x015BF2 05:9BE2: E1        .byte $E1, $81, $42, $FD
- D 0 - I - 0x015BF6 05:9BE6: E9        .byte $E9, $90, $42, $FC
- D 0 - I - 0x015BFA 05:9BEA: ED        .byte $ED, $92, $42, $F4
- D 0 - I - 0x015BFE 05:9BEE: F0        .byte $F0, $91, $42, $02
- D 0 - I - 0x015C02 05:9BF2: F1        .byte $F1, $93, $42, $FA
- D 0 - I - 0x015C06 05:9BF6: F8        .byte $F8, $9C, $42, $FD

loc_last_boss_part_left_frame_2:
- D - - - - 0x015C0A 05:9BFA: 06        .byte $06
- D - - - - 0x015C0B 05:9BFB: E1        .byte $E1, $81, $02, $FB
- D - - - - 0x015C0F 05:9BFF: E9        .byte $E9, $90, $02, $FC
- D - - - - 0x015C13 05:9C03: ED        .byte $ED, $92, $02, $04
- D - - - - 0x015C17 05:9C07: F0        .byte $F0, $91, $02, $F6
- D - - - - 0x015C1B 05:9C0B: F1        .byte $F1, $93, $02, $FE
- D - - - - 0x015C1F 05:9C0F: F8        .byte $F8, $9C, $02, $FB

loc_last_boss_part_right_frame_3:
- D 0 - I - 0x015C23 05:9C13: 07        .byte $07
- D 0 - I - 0x015C24 05:9C14: E5        .byte $E5, $81, $42, $FD
- D 0 - I - 0x015C28 05:9C18: ED        .byte $ED, $9D, $42, $FC
- D 0 - I - 0x015C2C 05:9C1C: F1        .byte $F1, $92, $42, $F4
- D 0 - I - 0x015C30 05:9C20: F5        .byte $F5, $94, $42, $02
- D 0 - I - 0x015C34 05:9C24: F5        .byte $F5, $96, $42, $FA
- D 0 - I - 0x015C38 05:9C28: FD        .byte $FD, $95, $42, $02
- D 0 - I - 0x015C3C 05:9C2C: FD        .byte $FD, $97, $42, $FA

loc_last_boss_part_left_frame_3:
- D - - - - 0x015C40 05:9C30: 07        .byte $07
- D - - - - 0x015C41 05:9C31: E5        .byte $E5, $81, $02, $FB
- D - - - - 0x015C45 05:9C35: ED        .byte $ED, $9D, $02, $FC
- D - - - - 0x015C49 05:9C39: F1        .byte $F1, $92, $02, $04
- D - - - - 0x015C4D 05:9C3D: F5        .byte $F5, $94, $02, $F6
- D - - - - 0x015C51 05:9C41: F5        .byte $F5, $96, $02, $FE
- D - - - - 0x015C55 05:9C45: FD        .byte $FD, $95, $02, $F6
- D - - - - 0x015C59 05:9C49: FD        .byte $FD, $97, $02, $FE

loc_last_boss_part_right_frame_4:
- D 0 - I - 0x015C5D 05:9C4D: 06        .byte $06
- D 0 - I - 0x015C5E 05:9C4E: E9        .byte $E9, $81, $42, $FD
- D 0 - I - 0x015C62 05:9C52: F1        .byte $F1, $98, $42, $02
- D 0 - I - 0x015C66 05:9C56: F1        .byte $F1, $9A, $42, $FA
- D 0 - I - 0x015C6A 05:9C5A: F9        .byte $F9, $99, $42, $02
- D 0 - I - 0x015C6E 05:9C5E: F9        .byte $F9, $9B, $42, $FA
- D 0 - I - 0x015C72 05:9C62: F5        .byte $F5, $92, $42, $F4

loc_last_boss_part_left_frame_4:
- D 0 - I - 0x015C76 05:9C66: 06        .byte $06
- D 0 - I - 0x015C77 05:9C67: E9        .byte $E9, $81, $02, $FB
- D 0 - I - 0x015C7B 05:9C6B: F1        .byte $F1, $98, $02, $F6
- D 0 - I - 0x015C7F 05:9C6F: F1        .byte $F1, $9A, $02, $FE
- D 0 - I - 0x015C83 05:9C73: F9        .byte $F9, $99, $02, $F6
- D 0 - I - 0x015C87 05:9C77: F9        .byte $F9, $9B, $02, $FE
- D 0 - I - 0x015C8B 05:9C7B: F5        .byte $F5, $92, $02, $04

loc_last_boss_part_right_frame_5:
- D 0 - I - 0x015C8F 05:9C7F: 06        .byte $06
- D 0 - I - 0x015C90 05:9C80: E1        .byte $E1, $81, $42, $FD
- D 0 - I - 0x015C94 05:9C84: E9        .byte $E9, $90, $42, $FC
- D 0 - I - 0x015C98 05:9C88: ED        .byte $ED, $92, $42, $F4
- D 0 - I - 0x015C9C 05:9C8C: F0        .byte $F0, $AA, $42, $02
- D 0 - I - 0x015CA0 05:9C90: F1        .byte $F1, $AC, $42, $FA
- D 0 - I - 0x015CA4 05:9C94: F8        .byte $F8, $AB, $42, $04

loc_last_boss_part_left_frame_5:
- D 0 - I - 0x015CA8 05:9C98: 06        .byte $06
- D 0 - I - 0x015CA9 05:9C99: E1        .byte $E1, $81, $02, $FB
- D 0 - I - 0x015CAD 05:9C9D: E9        .byte $E9, $90, $02, $FC
- D 0 - I - 0x015CB1 05:9CA1: ED        .byte $ED, $92, $02, $04
- D 0 - I - 0x015CB5 05:9CA5: F0        .byte $F0, $AA, $02, $F6
- D 0 - I - 0x015CB9 05:9CA9: F1        .byte $F1, $AC, $02, $FE
- D 0 - I - 0x015CBD 05:9CAD: F8        .byte $F8, $AB, $02, $F4

loc_last_boss_part_right_frame_6:
- D 0 - I - 0x015CC1 05:9CB1: 04        .byte $04
- D 0 - I - 0x015CC2 05:9CB2: D5        .byte $D5, $88, $42, $F7
- D 0 - I - 0x015CC6 05:9CB6: D5        .byte $D5, $8A, $42, $EF
- D 0 - I - 0x015CCA 05:9CBA: DD        .byte $DD, $89, $42, $F7
- D 0 - I - 0x015CCE 05:9CBE: DD        .byte $DD, $8B, $42, $EF

loc_last_boss_part_left_frame_6:
- D 0 - I - 0x015CD2 05:9CC2: 04        .byte $04
- D 0 - I - 0x015CD3 05:9CC3: D5        .byte $D5, $88, $02, $01
- D 0 - I - 0x015CD7 05:9CC7: D5        .byte $D5, $8A, $02, $09
- D 0 - I - 0x015CDB 05:9CCB: DD        .byte $DD, $89, $02, $01
- D 0 - I - 0x015CDF 05:9CCF: DD        .byte $DD, $8B, $02, $09

loc_last_boss_part_right_frame_7:
- D 0 - I - 0x015CE3 05:9CD3: 02        .byte $02
- D 0 - I - 0x015CE4 05:9CD4: DB        .byte $DB, $8C, $42, $F7
- D 0 - I - 0x015CE8 05:9CD8: E3        .byte $E3, $8D, $42, $F5

loc_last_boss_part_left_frame_7:
- D 0 - I - 0x015CEC 05:9CDC: 02        .byte $02
- D 0 - I - 0x015CED 05:9CDD: DB        .byte $DB, $8C, $02, $01
- D 0 - I - 0x015CF1 05:9CE1: E3        .byte $E3, $8D, $02, $03

loc_last_boss_part_right_frame_8:
- D 0 - I - 0x015CF5 05:9CE5: 02        .byte $02
- D 0 - I - 0x015CF6 05:9CE6: DA        .byte $DA, $8E, $42, $F6
- D 0 - I - 0x015CFA 05:9CEA: E2        .byte $E2, $8F, $42, $F5

loc_last_boss_part_left_frame_8:
- D 0 - I - 0x015CFE 05:9CEE: 02        .byte $02
- D 0 - I - 0x015CFF 05:9CEF: DA        .byte $DA, $8E, $02, $02
- D 0 - I - 0x015D03 05:9CF3: E2        .byte $E2, $8F, $02, $03

loc_last_boss_part_right_frame_9:
- D 0 - I - 0x015D07 05:9CF7: 04        .byte $04
- D 0 - I - 0x015D08 05:9CF8: CA        .byte $CA, $A7, $42, $FF
- D 0 - I - 0x015D0C 05:9CFC: D2        .byte $D2, $A8, $42, $07
- D 0 - I - 0x015D10 05:9D00: DD        .byte $DD, $A0, $42, $05
- D 0 - I - 0x015D14 05:9D04: E5        .byte $E5, $9F, $42, $05

loc_last_boss_part_left_frame_9:
- D 0 - I - 0x015D18 05:9D08: 04        .byte $04
- D 0 - I - 0x015D19 05:9D09: CA        .byte $CA, $A7, $02, $F9
- D 0 - I - 0x015D1D 05:9D0D: D2        .byte $D2, $A8, $02, $F1
- D 0 - I - 0x015D21 05:9D11: DD        .byte $DD, $A0, $02, $F3
- D 0 - I - 0x015D25 05:9D15: E5        .byte $E5, $9F, $02, $F3

loc_last_boss_part_right_frame_10:
- D 0 - I - 0x015D29 05:9D19: 04        .byte $04
- D 0 - I - 0x015D2A 05:9D1A: CD        .byte $CD, $A7, $02, $0F
- D 0 - I - 0x015D2E 05:9D1E: D5        .byte $D5, $A9, $42, $07
- D 0 - I - 0x015D32 05:9D22: DD        .byte $DD, $A0, $42, $05
- D 0 - I - 0x015D36 05:9D26: E5        .byte $E5, $9F, $42, $05

loc_last_boss_part_left_frame_10:
- D 0 - I - 0x015D3A 05:9D2A: 04        .byte $04
- D 0 - I - 0x015D3B 05:9D2B: CD        .byte $CD, $A7, $42, $E9
- D 0 - I - 0x015D3F 05:9D2F: D5        .byte $D5, $A9, $02, $F1
- D 0 - I - 0x015D43 05:9D33: DD        .byte $DD, $A0, $02, $F3
- D 0 - I - 0x015D47 05:9D37: E5        .byte $E5, $9F, $02, $F3

loc_last_boss_part_right_frame_11:
- D 0 - I - 0x015D4B 05:9D3B: 04        .byte $04
- D 0 - I - 0x015D4C 05:9D3C: DD        .byte $DD, $A0, $42, $05
- D 0 - I - 0x015D50 05:9D40: E5        .byte $E5, $9F, $42, $05
- D 0 - I - 0x015D54 05:9D44: E0        .byte $E0, $A9, $C2, $07
- D 0 - I - 0x015D58 05:9D48: E8        .byte $E8, $A7, $82, $0F

loc_last_boss_part_left_frame_11:
- D 0 - I - 0x015D5C 05:9D4C: 04        .byte $04
- D 0 - I - 0x015D5D 05:9D4D: DD        .byte $DD, $A0, $02, $F3
- D 0 - I - 0x015D61 05:9D51: E5        .byte $E5, $9F, $02, $F3
- D 0 - I - 0x015D65 05:9D55: E0        .byte $E0, $A9, $82, $F1
- D 0 - I - 0x015D69 05:9D59: E8        .byte $E8, $A7, $C2, $E9

loc_last_boss_part_right_frame_12:
- D 0 - I - 0x015D6D 05:9D5D: 03        .byte $03
- D 0 - I - 0x015D6E 05:9D5E: D5        .byte $D5, $A1, $42, $07
- D 0 - I - 0x015D72 05:9D62: DD        .byte $DD, $9E, $42, $05
- D 0 - I - 0x015D76 05:9D66: E5        .byte $E5, $9F, $42, $05

loc_last_boss_part_left_frame_12:
- D 0 - I - 0x015D7A 05:9D6A: 03        .byte $03
- D 0 - I - 0x015D7B 05:9D6B: D5        .byte $D5, $A1, $02, $F1
- D 0 - I - 0x015D7F 05:9D6F: DD        .byte $DD, $9E, $02, $F3
- D 0 - I - 0x015D83 05:9D73: E5        .byte $E5, $9F, $02, $F3

loc_last_boss_part_right_frame_13:
- D - - - - 0x015D87 05:9D77: 04        .byte $04
- D - - - - 0x015D88 05:9D78: D5        .byte $D5, $A4, $42, $05
- D - - - - 0x015D8C 05:9D7C: DD        .byte $DD, $A5, $42, $05
- D - - - - 0x015D90 05:9D80: DD        .byte $DD, $A6, $42, $FD
- D - - - - 0x015D94 05:9D84: E5        .byte $E5, $A3, $42, $FC

loc_last_boss_part_left_frame_13:
- D - - - - 0x015D98 05:9D88: 04        .byte $04
- D - - - - 0x015D99 05:9D89: D5        .byte $D5, $A4, $02, $F3
- D - - - - 0x015D9D 05:9D8D: DD        .byte $DD, $A5, $02, $F3
- D - - - - 0x015DA1 05:9D91: DD        .byte $DD, $A6, $02, $FB
- D - - - - 0x015DA5 05:9D95: E5        .byte $E5, $A3, $02, $FC

loc_last_boss_part_right_frame_14:
- D 0 - I - 0x015DA9 05:9D99: 01        .byte $01
- D 0 - I - 0x015DAA 05:9D9A: D5        .byte $D5, $80, $42, $FF

loc_last_boss_part_left_frame_14:
- D 0 - I - 0x015DAE 05:9D9E: 01        .byte $01
- D 0 - I - 0x015DAF 05:9D9F: D5        .byte $D5, $80, $02, $F9

loc_last_boss_part_right_frame_15:
- D 0 - I - 0x015DB3 05:9DA3: 01        .byte $01
- D 0 - I - 0x015DB4 05:9DA4: D5        .byte $D5, $06, $42, $FF

loc_last_boss_part_left_frame_15:
- D 0 - I - 0x015DB8 05:9DA8: 01        .byte $01
- D 0 - I - 0x015DB9 05:9DA9: D5        .byte $D5, $06, $02, $F9

loc_last_boss_part_right_frame_16:
- D 0 - I - 0x015DBD 05:9DAD: 01        .byte $01
- D 0 - I - 0x015DBE 05:9DAE: D5        .byte $D5, $0A, $42, $FF

loc_last_boss_part_left_frame_16:
- D 0 - I - 0x015DC2 05:9DB2: 01        .byte $01
- D 0 - I - 0x015DC3 05:9DB3: D5        .byte $D5, $0A, $02, $F9

loc_last_boss_projectile_frame_1:
- D 0 - I - 0x015DC7 05:9DB7: 01        .byte $01
- D 0 - I - 0x015DC8 05:9DB8: F8        .byte $F8, $AD, $03, $FC

loc_last_boss_projectile_frame_2:
- D 0 - I - 0x015DCC 05:9DBC: 01        .byte $01
- D 0 - I - 0x015DCD 05:9DBD: F8        .byte $F8, $AE, $03, $FC

loc_last_boss_part_right_frame_17:
- D 0 - I - 0x015DD1 05:9DC1: 0C        .byte $0C
- D 0 - I - 0x015DD2 05:9DC2: DD        .byte $DD, $A0, $42, $05
- D 0 - I - 0x015DD6 05:9DC6: DD        .byte $DD, $81, $42, $FD
- D 0 - I - 0x015DDA 05:9DCA: DB        .byte $DB, $8C, $42, $F7
- D 0 - I - 0x015DDE 05:9DCE: E5        .byte $E5, $9F, $42, $05
- D 0 - I - 0x015DE2 05:9DD2: E5        .byte $E5, $82, $42, $FC
- D 0 - I - 0x015DE6 05:9DD6: E3        .byte $E3, $8D, $42, $F5
- D 0 - I - 0x015DEA 05:9DDA: E9        .byte $E9, $85, $42, $F4
- D 0 - I - 0x015DEE 05:9DDE: ED        .byte $ED, $83, $42, $FB
- D 0 - I - 0x015DF2 05:9DE2: F1        .byte $F1, $86, $42, $F4
- D 0 - I - 0x015DF6 05:9DE6: F3        .byte $F3, $84, $42, $FC
- D 0 - I - 0x015DFA 05:9DEA: F9        .byte $F9, $87, $42, $F8
- D 0 - I - 0x015DFE 05:9DEE: F9        .byte $F9, $87, $42, $F2

loc_last_boss_part_left_frame_17:
- D 0 - I - 0x015E02 05:9DF2: 0C        .byte $0C
- D 0 - I - 0x015E03 05:9DF3: DD        .byte $DD, $A0, $02, $F3
- D 0 - I - 0x015E07 05:9DF7: DD        .byte $DD, $81, $02, $FB
- D 0 - I - 0x015E0B 05:9DFB: DB        .byte $DB, $8C, $02, $01
- D 0 - I - 0x015E0F 05:9DFF: E5        .byte $E5, $9F, $02, $F3
- D 0 - I - 0x015E13 05:9E03: E5        .byte $E5, $82, $02, $FC
- D 0 - I - 0x015E17 05:9E07: E3        .byte $E3, $8D, $02, $03
- D 0 - I - 0x015E1B 05:9E0B: E9        .byte $E9, $85, $02, $04
- D 0 - I - 0x015E1F 05:9E0F: ED        .byte $ED, $83, $02, $FD
- D 0 - I - 0x015E23 05:9E13: F1        .byte $F1, $86, $02, $04
- D 0 - I - 0x015E27 05:9E17: F3        .byte $F3, $84, $02, $FC
- D 0 - I - 0x015E2B 05:9E1B: F9        .byte $F9, $87, $02, $00
- D 0 - I - 0x015E2F 05:9E1F: F9        .byte $F9, $87, $02, $06

loc_last_boss_part_right_frame_18:
- D 0 - I - 0x015E33 05:9E23: 09        .byte $09
- D 0 - I - 0x015E34 05:9E24: E9        .byte $E9, $A0, $42, $05
- D 0 - I - 0x015E38 05:9E28: E9        .byte $E9, $81, $42, $FD
- D 0 - I - 0x015E3C 05:9E2C: E7        .byte $E7, $8C, $42, $F7
- D 0 - I - 0x015E40 05:9E30: F1        .byte $F1, $98, $42, $02
- D 0 - I - 0x015E44 05:9E34: F1        .byte $F1, $9A, $42, $FA
- D 0 - I - 0x015E48 05:9E38: EF        .byte $EF, $8D, $42, $F5
- D 0 - I - 0x015E4C 05:9E3C: F9        .byte $F9, $99, $42, $02
- D 0 - I - 0x015E50 05:9E40: F9        .byte $F9, $9B, $42, $FA
- D 0 - I - 0x015E54 05:9E44: F5        .byte $F5, $92, $42, $F4

loc_last_boss_part_left_frame_18:
- D 0 - I - 0x015E58 05:9E48: 09        .byte $09
- D 0 - I - 0x015E59 05:9E49: E9        .byte $E9, $A0, $02, $F3
- D 0 - I - 0x015E5D 05:9E4D: E9        .byte $E9, $81, $02, $FB
- D 0 - I - 0x015E61 05:9E51: E7        .byte $E7, $8C, $02, $01
- D 0 - I - 0x015E65 05:9E55: F1        .byte $F1, $98, $02, $F6
- D 0 - I - 0x015E69 05:9E59: F1        .byte $F1, $9A, $02, $FE
- D 0 - I - 0x015E6D 05:9E5D: EF        .byte $EF, $8D, $02, $03
- D 0 - I - 0x015E71 05:9E61: F9        .byte $F9, $99, $02, $F6
- D 0 - I - 0x015E75 05:9E65: F9        .byte $F9, $9B, $02, $FE
- D 0 - I - 0x015E79 05:9E69: F5        .byte $F5, $92, $02, $04

loc_last_boss_part_right_frame_19:
- D 0 - I - 0x015E7D 05:9E6D: 07        .byte $07
- D 0 - I - 0x015E7E 05:9E6E: E8        .byte $E8, $06, $42, $01
- D 0 - I - 0x015E82 05:9E72: E8        .byte $E8, $06, $42, $F9
- D 0 - I - 0x015E86 05:9E76: F1        .byte $F1, $08, $42, $01
- D 0 - I - 0x015E8A 05:9E7A: F0        .byte $F0, $06, $42, $FD
- D 0 - I - 0x015E8E 05:9E7E: F0        .byte $F0, $06, $42, $F5
- D 0 - I - 0x015E92 05:9E82: F8        .byte $F8, $06, $42, $FD
- D 0 - I - 0x015E96 05:9E86: F8        .byte $F8, $08, $42, $F5

loc_last_boss_part_left_frame_19:
- D 0 - I - 0x015E9A 05:9E8A: 07        .byte $07
- D 0 - I - 0x015E9B 05:9E8B: E8        .byte $E8, $06, $02, $F7
- D 0 - I - 0x015E9F 05:9E8F: E8        .byte $E8, $06, $02, $FF
- D 0 - I - 0x015EA3 05:9E93: F1        .byte $F1, $08, $02, $F7
- D 0 - I - 0x015EA7 05:9E97: F0        .byte $F0, $06, $02, $FB
- D 0 - I - 0x015EAB 05:9E9B: F0        .byte $F0, $06, $02, $03
- D 0 - I - 0x015EAF 05:9E9F: F8        .byte $F8, $06, $02, $FB
- D 0 - I - 0x015EB3 05:9EA3: F8        .byte $F8, $08, $02, $03

loc_last_boss_part_right_frame_20:
- D 0 - I - 0x015EB7 05:9EA7: 07        .byte $07
- D 0 - I - 0x015EB8 05:9EA8: E8        .byte $E8, $0A, $42, $01
- D 0 - I - 0x015EBC 05:9EAC: E8        .byte $E8, $0A, $42, $F9
- D 0 - I - 0x015EC0 05:9EB0: F1        .byte $F1, $0C, $42, $01
- D 0 - I - 0x015EC4 05:9EB4: F0        .byte $F0, $0A, $42, $FD
- D 0 - I - 0x015EC8 05:9EB8: F0        .byte $F0, $0A, $42, $F5
- D 0 - I - 0x015ECC 05:9EBC: F8        .byte $F8, $0A, $42, $FD
- D 0 - I - 0x015ED0 05:9EC0: F8        .byte $F8, $0C, $42, $F5

loc_last_boss_part_left_frame_20:
- D 0 - I - 0x015ED4 05:9EC4: 07        .byte $07
- D 0 - I - 0x015ED5 05:9EC5: E8        .byte $E8, $0A, $02, $F7
- D 0 - I - 0x015ED9 05:9EC9: E8        .byte $E8, $0A, $02, $FF
- D 0 - I - 0x015EDD 05:9ECD: F1        .byte $F1, $0C, $02, $F7
- D 0 - I - 0x015EE1 05:9ED1: F0        .byte $F0, $0A, $02, $FB
- D 0 - I - 0x015EE5 05:9ED5: F0        .byte $F0, $0A, $02, $03
- D 0 - I - 0x015EE9 05:9ED9: F8        .byte $F8, $0A, $02, $FB
- D 0 - I - 0x015EED 05:9EDD: F8        .byte $F8, $0C, $02, $03

; reserved
- D - - - - 0x015EF1 05:9EE1: 00        .byte $00, $0F, $30, $C3, $F8, $00, $00, $00, $00, $00, $0F, $3F, $F8, $00, $00, $00
- D - - - - 0x015F01 05:9EF1: E0        .byte $E0, $10, $10, $E0, $00, $00, $00, $00, $00, $F0, $F0, $E0, $00, $00, $00, $F0
- D - - - - 0x015F11 05:9F01: 90        .byte $90, $9C, $06, $03, $11, $08, $04, $00, $60, $60, $78, $1C, $0E, $07, $03, $00
- D - - - - 0x015F21 05:9F11: 00        .byte $00, $07, $3E, $60, $40, $40, $00, $00, $00, $00, $01, $1F, $3F, $38, $18, $00
- D - - - - 0x015F31 05:9F21: 08        .byte $08, $0E, $04, $0E, $0F, $06, $02, $00, $00, $00, $0C, $1E, $0F, $06, $02, $09
- D - - - - 0x015F41 05:9F31: FF        .byte $FF, $8F, $1F, $18, $00, $00, $00, $01, $0F, $7F, $FF, $F8, $00, $00, $00, $38
- D - - - - 0x015F51 05:9F41: 78        .byte $78, $FC, $FC, $FC, $7E, $00, $00, $04, $26, $33, $3B, $1F, $8F, $7E, $3C, $00
- D - - - - 0x015F61 05:9F51: 02        .byte $02, $03, $81, $83, $81, $40, $40, $00, $02, $07, $8F, $DF, $F9, $70, $60, $70
- D - - - - 0x015F71 05:9F61: F8        .byte $F8, $F8, $F8, $F8, $E0, $60, $00, $70, $F8, $18, $48, $08, $18, $7C, $7C, $40
- D - - - - 0x015F81 05:9F71: 00        .byte $00, $48, $88, $88, $C0, $E6, $77, $7E, $7E, $7E, $FE, $FE, $FE, $F8, $70, $18
- D - - - - 0x015F91 05:9F81: 30        .byte $30, $F0, $70, $38, $1C, $0E, $0E, $18, $30, $F0, $60, $18, $1C, $0E, $0E, $1E
- D - - - - 0x015FA1 05:9F91: 3C        .byte $3C, $78, $F8, $F8, $F8, $7C, $1E, $1F, $3D, $79, $F9, $FF, $FF, $7F, $1F, $00
- D - - - - 0x015FB1 05:9FA1: 00        .byte $00, $30, $30, $03, $03, $00, $00, $00, $00, $00, $00, $60, $64, $EE, $DC, $00
- D - - - - 0x015FC1 05:9FB1: 00        .byte $00, $0F, $1F, $1F, $0F, $00, $00, $F8, $F0, $E1, $C5, $C1, $F3, $FC, $F0, $03
- D - - - - 0x015FD1 05:9FC1: 0C        .byte $0C, $30, $E3, $86, $1C, $30, $60, $00, $03, $0F, $1F, $7E, $FC, $F0, $60, $02
- D - - - - 0x015FE1 05:9FD1: 0C        .byte $0C, $32, $C4, $10, $60, $C0, $00, $01, $03, $0E, $3C, $F0, $E0, $C0, $00, $12
- D - - - - 0x015FF1 05:9FE1: 24        .byte $24, $24, $6C, $48, $C8, $98, $10, $0E, $1C, $1C, $1C, $38, $38, $78, $70, $05
- D - - - - 0x016001 05:9FF1: 05        .byte $05, $0A, $0A, $14, $24, $28, $48, $03, $03, $06, $06, $0C, $1C, $18, $38

.out .sprintf("Free bytes in bank 05_1: 0x%X [%d]", ($A000 - *), ($A000 - *))



