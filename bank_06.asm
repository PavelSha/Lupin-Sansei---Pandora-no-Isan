.segment "BANK_06"
.include "bank_ram.inc"
; 0x018010-0x01C00F

C - - - - - 0x018010 06:A000: 4C 4D A0  JMP $A04D
C - - - - - 0x018013 06:A003: 4C 66 A3  JMP $A366
C - - - - - 0x018016 06:A006: 4C B3 A5  JMP $A5B3
C - - - - - 0x018019 06:A009: 4C 82 A7  JMP $A782
C - - - - - 0x01801C 06:A00C: 4C 3B AC  JMP $AC3B
C - - - - - 0x01801F 06:A00F: 4C 09 AE  JMP $AE09
C - - - - - 0x018022 06:A012: 4C A7 AF  JMP $AFA7
C - - - - - 0x018025 06:A015: 4C E4 B1  JMP $B1E4
C - - - - - 0x018028 06:A018: 4C 33 B8  JMP $B833
C - - - - - 0x01802B 06:A01B: 4C FB BA  JMP $BAFB
C - - - - - 0x01802E 06:A01E: 4C 96 BD  JMP $BD96
- D 1 - - - 0x018031 06:A021: 00        .byte $00   ; 
- D 1 - - - 0x018032 06:A022: 00        .byte $00   ; 
- D 1 - - - 0x018033 06:A023: 18        .byte $18   ; 
- D 1 - - - 0x018034 06:A024: 06        .byte $06   ; 
- D 1 - - - 0x018035 06:A025: 00        .byte $00   ; 
- D 1 - - - 0x018036 06:A026: 00        .byte $00   ; 
- D 1 - - - 0x018037 06:A027: 14        .byte $14   ; 
- D 1 - - - 0x018038 06:A028: 06        .byte $06   ; 
- D 1 - - - 0x018039 06:A029: 00        .byte $00   ; 
- D 1 - - - 0x01803A 06:A02A: 00        .byte $00   ; 
- D 1 - - - 0x01803B 06:A02B: 10        .byte $10   ; 
- D 1 - - - 0x01803C 06:A02C: 06        .byte $06   ; 
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
- D 1 - - - 0x018055 06:A045: 00        .byte $00   ; 
- D 1 - - - 0x018056 06:A046: 00        .byte $00   ; 
- D 1 - - - 0x018057 06:A047: 00        .byte $00   ; 
- D 1 - - - 0x018058 06:A048: 10        .byte $10   ; 
- D 1 - - - 0x018059 06:A049: 10        .byte $10   ; 
- D 1 - - - 0x01805A 06:A04A: 10        .byte $10   ; 
- D 1 - - - 0x01805B 06:A04B: 08        .byte $08   ; 
- D 1 - - - 0x01805C 06:A04C: 08        .byte $08   ; 
C D 1 - - - 0x01805D 06:A04D: A2 01     LDX #$01
C - - - - - 0x01805F 06:A04F: 86 1A     STX ram_001A
C - - - - - 0x018061 06:A051: A6 1A     LDX ram_001A
C - - - - - 0x018063 06:A053: 20 FA A0  JSR $A0FA
C - - - - - 0x018066 06:A056: BD 20 03  LDA ram_0320,X
C - - - - - 0x018069 06:A059: C9 E0     CMP #$E0
C - - - - - 0x01806B 06:A05B: B0 2C     BCS $A089
C - - - - - 0x01806D 06:A05D: C9 C0     CMP #$C0
C - - - - - 0x01806F 06:A05F: 90 28     BCC $A089
C - - - - - 0x018071 06:A061: 20 CC A0  JSR $A0CC
C - - - - - 0x018074 06:A064: 20 60 D6  JSR $D660
C - - - - - 0x018077 06:A067: B0 0B     BCS $A074
C - - - - - 0x018079 06:A069: A5 5F     LDA ram_005F
C - - - - - 0x01807B 06:A06B: 29 02     AND #$02
C - - - - - 0x01807D 06:A06D: F0 0B     BEQ $A07A
C - - - - - 0x01807F 06:A06F: 20 06 D6  JSR $D606
C - - - - - 0x018082 06:A072: 90 10     BCC $A084
C - - - - - 0x018084 06:A074: 20 98 A0  JSR $A098
C - - - - - 0x018087 06:A077: 4C 89 A0  JMP $A089
C - - - - - 0x01808A 06:A07A: A6 7A     LDX ram_007A
C - - - - - 0x01808C 06:A07C: 20 B6 D5  JSR $D5B6
C - - - - - 0x01808F 06:A07F: B0 0D     BCS $A08E
C - - - - - 0x018091 06:A081: CA        DEX
C - - - - - 0x018092 06:A082: 10 F8     BPL $A07C
C - - - - - 0x018094 06:A084: A6 1A     LDX ram_001A
C - - - - - 0x018096 06:A086: 20 62 D5  JSR $D562
C D 1 - - - 0x018099 06:A089: C6 1A     DEC ram_001A
C - - - - - 0x01809B 06:A08B: 10 C4     BPL $A051
C - - - - - 0x01809D 06:A08D: 60        RTS
C - - - - - 0x01809E 06:A08E: A9 00     LDA #$00
C - - - - - 0x0180A0 06:A090: 95 8F     STA ram_008F,X
C - - - - - 0x0180A2 06:A092: 20 98 A0  JSR $A098
C - - - - - 0x0180A5 06:A095: 4C 89 A0  JMP $A089
C - - - - - 0x0180A8 06:A098: A6 1A     LDX ram_001A
C - - - - - 0x0180AA 06:A09A: A9 22     LDA #$22
C - - - - - 0x0180AC 06:A09C: 20 23 A3  JSR $A323
C - - - - - 0x0180AF 06:A09F: A9 10     LDA #$10
C - - - - - 0x0180B1 06:A0A1: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0180B4 06:A0A4: A9 03     LDA #$03
C - - - - - 0x0180B6 06:A0A6: 9D 56 03  STA ram_0356,X
C - - - - - 0x0180B9 06:A0A9: A9 00     LDA #$00
C - - - - - 0x0180BB 06:A0AB: 9D 44 03  STA ram_0344,X
C - - - - - 0x0180BE 06:A0AE: 60        RTS
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
C - - - - - 0x0180DC 06:A0CC: A0 00     LDY #$00
C - - - - - 0x0180DE 06:A0CE: BD 20 03  LDA ram_0320,X
C - - - - - 0x0180E1 06:A0D1: 29 12     AND #$12
C - - - - - 0x0180E3 06:A0D3: F0 08     BEQ $A0DD
C - - - - - 0x0180E5 06:A0D5: A0 04     LDY #$04
C - - - - - 0x0180E7 06:A0D7: C9 10     CMP #$10
C - - - - - 0x0180E9 06:A0D9: F0 02     BEQ $A0DD
C - - - - - 0x0180EB 06:A0DB: A0 08     LDY #$08
C - - - - - 0x0180ED 06:A0DD: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0180F0 06:A0E0: 18        CLC
C - - - - - 0x0180F1 06:A0E1: 79 21 A0  ADC $A021,Y
C - - - - - 0x0180F4 06:A0E4: 85 AD     STA ram_00AD
C - - - - - 0x0180F6 06:A0E6: BD 32 03  LDA ram_0332,X
C - - - - - 0x0180F9 06:A0E9: 18        CLC
C - - - - - 0x0180FA 06:A0EA: 79 22 A0  ADC $A022,Y
C - - - - - 0x0180FD 06:A0ED: 85 AE     STA ram_00AE
C - - - - - 0x0180FF 06:A0EF: B9 23 A0  LDA $A023,Y
C - - - - - 0x018102 06:A0F2: 85 AF     STA ram_00AF
C - - - - - 0x018104 06:A0F4: B9 24 A0  LDA $A024,Y
C - - - - - 0x018107 06:A0F7: 85 B0     STA ram_00B0
C - - - - - 0x018109 06:A0F9: 60        RTS
C - - - - - 0x01810A 06:A0FA: BD 20 03  LDA ram_0320,X
C - - - - - 0x01810D 06:A0FD: 10 FA     BPL $A0F9
C - - - - - 0x01810F 06:A0FF: 4A        LSR
C - - - - - 0x018110 06:A100: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x018113 06:A103: 30        .byte $30   ; <0>
- D 1 - I - 0x018114 06:A104: A2        .byte $A2   ; 
- D 1 - I - 0x018115 06:A105: B5        .byte $B5   ; 
- D 1 - I - 0x018116 06:A106: A1        .byte $A1   ; 
- D 1 - I - 0x018117 06:A107: 10        .byte $10   ; 
- D 1 - I - 0x018118 06:A108: A1        .byte $A1   ; 
- D 1 - I - 0x018119 06:A109: 01        .byte $01   ; 
- D 1 - I - 0x01811A 06:A10A: A2        .byte $A2   ; 
- D 1 - I - 0x01811B 06:A10B: D2        .byte $D2   ; 
- D 1 - I - 0x01811C 06:A10C: A2        .byte $A2   ; 
- D 1 - I - 0x01811D 06:A10D: 10        .byte $10   ; 
- D 1 - I - 0x01811E 06:A10E: A1        .byte $A1   ; 
- D 1 - I - 0x01811F 06:A10F: 10        .byte $10   ; 
- D 1 - I - 0x018120 06:A110: A1        .byte $A1   ; 
C - - - - - 0x018121 06:A111: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018124 06:A114: 85 00     STA ram_0000
C - - - - - 0x018126 06:A116: E6 00     INC ram_0000
C - - - - - 0x018128 06:A118: 20 58 D3  JSR $D358
C - - - - - 0x01812B 06:A11B: D0 07     BNE $A124
C - - - - - 0x01812D 06:A11D: A9 1C     LDA #$1C
C - - - - - 0x01812F 06:A11F: A0 02     LDY #$02
C - - - - - 0x018131 06:A121: 4C 20 A2  JMP $A220
C - - - - - 0x018134 06:A124: 20 EC A2  JSR $A2EC
C - - - - - 0x018137 06:A127: BD 20 03  LDA ram_0320,X
C - - - - - 0x01813A 06:A12A: 29 08     AND #$08
C - - - - - 0x01813C 06:A12C: F0 35     BEQ $A163
C - - - - - 0x01813E 06:A12E: A0 08     LDY #$08
C D 1 - - - 0x018140 06:A130: BD 38 03  LDA ram_0338,X
C - - - - - 0x018143 06:A133: 85 00     STA ram_0000
C - - - - - 0x018145 06:A135: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018148 06:A138: 85 01     STA ram_0001
C - - - - - 0x01814A 06:A13A: 20 7B D6  JSR $D67B
C - - - - - 0x01814D 06:A13D: 90 03     BCC $A142
C - - - - - 0x01814F 06:A13F: 4C 7F D7  JMP $D77F
C - - - - - 0x018152 06:A142: 20 AC D6  JSR $D6AC
C - - - - - 0x018155 06:A145: 90 03     BCC $A14A
C - - - - - 0x018157 06:A147: 4C 41 D7  JMP $D741
C - - - - - 0x01815A 06:A14A: 20 25 D7  JSR $D725
C - - - - - 0x01815D 06:A14D: C0 E0     CPY #$E0
C - - - - - 0x01815F 06:A14F: 90 03     BCC $A154
C - - - - - 0x018161 06:A151: 4C 89 D9  JMP $D989
C - - - - - 0x018164 06:A154: 98        TYA
C - - - - - 0x018165 06:A155: 18        CLC
C - - - - - 0x018166 06:A156: 6D 02 03  ADC ram_0302
C - - - - - 0x018169 06:A159: 85 01     STA ram_0001
C - - - - - 0x01816B 06:A15B: AD 03 03  LDA ram_0303
C - - - - - 0x01816E 06:A15E: 85 02     STA ram_0002
C - - - - - 0x018170 06:A160: 4C 33 CE  JMP $CE33
C - - - - - 0x018173 06:A163: BD 20 03  LDA ram_0320,X
C - - - - - 0x018176 06:A166: 6A        ROR
C - - - - - 0x018177 06:A167: 90 0F     BCC $A178
C - - - - - 0x018179 06:A169: 20 7E A1  JSR $A17E
C D 1 - - - 0x01817C 06:A16C: 20 AE D9  JSR $D9AE
C - - - - - 0x01817F 06:A16F: BD 44 03  LDA ram_0344,X
C - - - - - 0x018182 06:A172: 0A        ASL
C - - - - - 0x018183 06:A173: 0A        ASL
C - - - - - 0x018184 06:A174: A8        TAY
C - - - - - 0x018185 06:A175: 4C 30 A1  JMP $A130
C - - - - - 0x018188 06:A178: 20 A8 A1  JSR $A1A8
C - - - - - 0x01818B 06:A17B: 4C 6C A1  JMP $A16C
C - - - - - 0x01818E 06:A17E: 20 CA D7  JSR $D7CA
C - - - - - 0x018191 06:A181: F0 09     BEQ $A18C
C - - - - - 0x018193 06:A183: A5 2C     LDA ram_002C
C - - - - - 0x018195 06:A185: 29 01     AND #$01
C - - - - - 0x018197 06:A187: F0 1E     BEQ $A1A7
C - - - - - 0x018199 06:A189: 4C F0 D6  JMP $D6F0
C - - - - - 0x01819C 06:A18C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01819F 06:A18F: 29 24     AND #$24
C - - - - - 0x0181A1 06:A191: D0 14     BNE $A1A7
C - - - - - 0x0181A3 06:A193: A9 02     LDA #$02
C - - - - - 0x0181A5 06:A195: 20 23 A3  JSR $A323
C - - - - - 0x0181A8 06:A198: A9 14     LDA #$14
C - - - - - 0x0181AA 06:A19A: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0181AD 06:A19D: A9 03     LDA #$03
C - - - - - 0x0181AF 06:A19F: 9D 56 03  STA ram_0356,X
C - - - - - 0x0181B2 06:A1A2: A9 00     LDA #$00
C - - - - - 0x0181B4 06:A1A4: 9D 44 03  STA ram_0344,X
C - - - - - 0x0181B7 06:A1A7: 60        RTS
C - - - - - 0x0181B8 06:A1A8: 20 BF D7  JSR $D7BF
C - - - - - 0x0181BB 06:A1AB: F0 DF     BEQ $A18C
C - - - - - 0x0181BD 06:A1AD: A5 2C     LDA ram_002C
C - - - - - 0x0181BF 06:A1AF: 29 01     AND #$01
C - - - - - 0x0181C1 06:A1B1: F0 F4     BEQ $A1A7
C - - - - - 0x0181C3 06:A1B3: 4C 0F D7  JMP $D70F
C - - - - - 0x0181C6 06:A1B6: DE 4A 03  DEC ram_034A,X
C - - - - - 0x0181C9 06:A1B9: D0 15     BNE $A1D0
C - - - - - 0x0181CB 06:A1BB: A9 03     LDA #$03
C - - - - - 0x0181CD 06:A1BD: A0 03     LDY #$03
C - - - - - 0x0181CF 06:A1BF: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0181D2 06:A1C2: 98        TYA
C - - - - - 0x0181D3 06:A1C3: 9D 56 03  STA ram_0356,X
C - - - - - 0x0181D6 06:A1C6: BD 20 03  LDA ram_0320,X
C - - - - - 0x0181D9 06:A1C9: 09 02     ORA #$02
C - - - - - 0x0181DB 06:A1CB: 9D 20 03  STA ram_0320,X
C - - - - - 0x0181DE 06:A1CE: D0 61     BNE $A231
C - - - - - 0x0181E0 06:A1D0: BD 38 03  LDA ram_0338,X
C - - - - - 0x0181E3 06:A1D3: 85 00     STA ram_0000
C - - - - - 0x0181E5 06:A1D5: BD 3E 03  LDA ram_033E,X
C - - - - - 0x0181E8 06:A1D8: 85 01     STA ram_0001
C - - - - - 0x0181EA 06:A1DA: 20 7B D6  JSR $D67B
C - - - - - 0x0181ED 06:A1DD: 90 03     BCC $A1E2
- - - - - - 0x0181EF 06:A1DF: 4C        .byte $4C   ; <L>
- - - - - - 0x0181F0 06:A1E0: 7F        .byte $7F   ; 
- - - - - - 0x0181F1 06:A1E1: D7        .byte $D7   ; 
C - - - - - 0x0181F2 06:A1E2: 20 AC D6  JSR $D6AC
C - - - - - 0x0181F5 06:A1E5: 90 03     BCC $A1EA
C - - - - - 0x0181F7 06:A1E7: 4C 41 D7  JMP $D741
C - - - - - 0x0181FA 06:A1EA: BD 20 03  LDA ram_0320,X
C - - - - - 0x0181FD 06:A1ED: 09 40     ORA #$40
C - - - - - 0x0181FF 06:A1EF: 9D 20 03  STA ram_0320,X
C - - - - - 0x018202 06:A1F2: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018205 06:A1F5: 85 00     STA ram_0000
C - - - - - 0x018207 06:A1F7: A5 03     LDA ram_0003
C - - - - - 0x018209 06:A1F9: 9D 32 03  STA ram_0332,X
C - - - - - 0x01820C 06:A1FC: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01820F 06:A1FF: 4C 9F D9  JMP $D99F
C - - - - - 0x018212 06:A202: DE 4A 03  DEC ram_034A,X
C - - - - - 0x018215 06:A205: F0 05     BEQ $A20C
C - - - - - 0x018217 06:A207: A0 0C     LDY #$0C
C - - - - - 0x018219 06:A209: 4C 30 A1  JMP $A130
C - - - - - 0x01821C 06:A20C: A0 01     LDY #$01
C - - - - - 0x01821E 06:A20E: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018221 06:A211: C9 80     CMP #$80
C - - - - - 0x018223 06:A213: B0 08     BCS $A21D
C - - - - - 0x018225 06:A215: 20 64 D0  JSR $D064
C - - - - - 0x018228 06:A218: 6A        ROR
C - - - - - 0x018229 06:A219: 90 02     BCC $A21D
C - - - - - 0x01822B 06:A21B: A0 04     LDY #$04
C - - - - - 0x01822D 06:A21D: B9 58 E3  LDA $E358,Y
C D 1 - - - 0x018230 06:A220: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018233 06:A223: 98        TYA
C - - - - - 0x018234 06:A224: 9D 56 03  STA ram_0356,X
C - - - - - 0x018237 06:A227: A9 02     LDA #$02
C - - - - - 0x018239 06:A229: 20 23 A3  JSR $A323
C - - - - - 0x01823C 06:A22C: A9 00     LDA #$00
C - - - - - 0x01823E 06:A22E: 9D 44 03  STA ram_0344,X
C - - - - - 0x018241 06:A231: BD 4A 03  LDA ram_034A,X
C - - - - - 0x018244 06:A234: C9 18     CMP #$18
C - - - - - 0x018246 06:A236: 90 07     BCC $A23F
C - - - - - 0x018248 06:A238: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01824B 06:A23B: C9 DF     CMP #$DF
C - - - - - 0x01824D 06:A23D: B0 1E     BCS $A25D
C - - - - - 0x01824F 06:A23F: BD 56 03  LDA ram_0356,X
C - - - - - 0x018252 06:A242: C9 03     CMP #$03
C - - - - - 0x018254 06:A244: D0 17     BNE $A25D
C - - - - - 0x018256 06:A246: BD 20 03  LDA ram_0320,X
C - - - - - 0x018259 06:A249: 6A        ROR
C - - - - - 0x01825A 06:A24A: 90 0A     BCC $A256
C - - - - - 0x01825C 06:A24C: 29 10     AND #$10
C - - - - - 0x01825E 06:A24E: D0 0A     BNE $A25A
C - - - - - 0x018260 06:A250: 20 7E A1  JSR $A17E
C - - - - - 0x018263 06:A253: 4C 5D A2  JMP $A25D
C - - - - - 0x018266 06:A256: 29 10     AND #$10
C - - - - - 0x018268 06:A258: D0 F6     BNE $A250
C - - - - - 0x01826A 06:A25A: 20 A8 A1  JSR $A1A8
C D 1 - - - 0x01826D 06:A25D: BC 4A 03  LDY ram_034A,X
C - - - - - 0x018270 06:A260: B9 5D E3  LDA $E35D,Y
C - - - - - 0x018273 06:A263: 18        CLC
C - - - - - 0x018274 06:A264: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x018277 06:A267: C9 DF     CMP #$DF
C - - - - - 0x018279 06:A269: 90 09     BCC $A274
C - - - - - 0x01827B 06:A26B: A0 DF     LDY #$DF
C - - - - - 0x01827D 06:A26D: C9 F8     CMP #$F8
C - - - - - 0x01827F 06:A26F: 90 02     BCC $A273
- - - - - - 0x018281 06:A271: A0        .byte $A0   ; 
- - - - - - 0x018282 06:A272: 00        .byte $00   ; 
C - - - - - 0x018283 06:A273: 98        TYA
C - - - - - 0x018284 06:A274: 9D 2C 03  STA ram_032C,X
C - - - - - 0x018287 06:A277: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01828A 06:A27A: C0 18     CPY #$18
C - - - - - 0x01828C 06:A27C: 90 35     BCC $A2B3
C - - - - - 0x01828E 06:A27E: C9 DF     CMP #$DF
C - - - - - 0x018290 06:A280: 90 05     BCC $A287
C - - - - - 0x018292 06:A282: A0 FF     LDY #$FF
C - - - - - 0x018294 06:A284: 4C 30 A1  JMP $A130
C - - - - - 0x018297 06:A287: 85 00     STA ram_0000
C - - - - - 0x018299 06:A289: E6 00     INC ram_0000
C - - - - - 0x01829B 06:A28B: 20 58 D3  JSR $D358
C - - - - - 0x01829E 06:A28E: F0 23     BEQ $A2B3
C - - - - - 0x0182A0 06:A290: C9 02     CMP #$02
C - - - - - 0x0182A2 06:A292: F0 07     BEQ $A29B
C - - - - - 0x0182A4 06:A294: 20 47 D3  JSR $D347
C - - - - - 0x0182A7 06:A297: D0 0E     BNE $A2A7
C - - - - - 0x0182A9 06:A299: F0 18     BEQ $A2B3
C - - - - - 0x0182AB 06:A29B: 20 47 D3  JSR $D347
C - - - - - 0x0182AE 06:A29E: F0 13     BEQ $A2B3
C - - - - - 0x0182B0 06:A2A0: BD 56 03  LDA ram_0356,X
C - - - - - 0x0182B3 06:A2A3: C9 04     CMP #$04
C - - - - - 0x0182B5 06:A2A5: F0 0C     BEQ $A2B3
C - - - - - 0x0182B7 06:A2A7: 20 A8 D7  JSR $D7A8
C - - - - - 0x0182BA 06:A2AA: BD 20 03  LDA ram_0320,X
C - - - - - 0x0182BD 06:A2AD: 29 20     AND #$20
C - - - - - 0x0182BF 06:A2AF: D0 1D     BNE $A2CE
C - - - - - 0x0182C1 06:A2B1: F0 0A     BEQ $A2BD
C - - - - - 0x0182C3 06:A2B3: FE 4A 03  INC ram_034A,X
C - - - - - 0x0182C6 06:A2B6: A9 2F     LDA #$2F
C - - - - - 0x0182C8 06:A2B8: DD 4A 03  CMP ram_034A,X
C - - - - - 0x0182CB 06:A2BB: B0 03     BCS $A2C0
C - - - - - 0x0182CD 06:A2BD: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0182D0 06:A2C0: A0 10     LDY #$10
C - - - - - 0x0182D2 06:A2C2: BD 20 03  LDA ram_0320,X
C - - - - - 0x0182D5 06:A2C5: 29 20     AND #$20
C - - - - - 0x0182D7 06:A2C7: D0 02     BNE $A2CB
C - - - - - 0x0182D9 06:A2C9: A0 18     LDY #$18
C - - - - - 0x0182DB 06:A2CB: 4C 30 A1  JMP $A130
C - - - - - 0x0182DE 06:A2CE: A9 30     LDA #$30
C - - - - - 0x0182E0 06:A2D0: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0182E3 06:A2D3: DE 4A 03  DEC ram_034A,X
C - - - - - 0x0182E6 06:A2D6: D0 03     BNE $A2DB
C - - - - - 0x0182E8 06:A2D8: 4C 7F D7  JMP $D77F
C - - - - - 0x0182EB 06:A2DB: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0182EE 06:A2DE: 20 5F D0  JSR $D05F
C - - - - - 0x0182F1 06:A2E1: A8        TAY
C - - - - - 0x0182F2 06:A2E2: B9 E9 A2  LDA $A2E9,Y
C - - - - - 0x0182F5 06:A2E5: A8        TAY
C - - - - - 0x0182F6 06:A2E6: 4C 30 A1  JMP $A130
- D 1 - - - 0x0182F9 06:A2E9: E4        .byte $E4   ; 
- D 1 - - - 0x0182FA 06:A2EA: E0        .byte $E0   ; 
- D 1 - - - 0x0182FB 06:A2EB: 14        .byte $14   ; 
C - - - - - 0x0182FC 06:A2EC: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0182FF 06:A2EF: F0 0A     BEQ $A2FB
C - - - - - 0x018301 06:A2F1: DE 4A 03  DEC ram_034A,X
C - - - - - 0x018304 06:A2F4: D0 39     BNE $A32F
C - - - - - 0x018306 06:A2F6: A9 00     LDA #$00
C - - - - - 0x018308 06:A2F8: 20 23 A3  JSR $A323
C - - - - - 0x01830B 06:A2FB: 20 30 A3  JSR $A330
C - - - - - 0x01830E 06:A2FE: A5 2C     LDA ram_002C
C - - - - - 0x018310 06:A300: 29 3F     AND #$3F
C - - - - - 0x018312 06:A302: D0 2B     BNE $A32F
C - - - - - 0x018314 06:A304: 20 64 D0  JSR $D064
C - - - - - 0x018317 06:A307: 6A        ROR
C - - - - - 0x018318 06:A308: B0 25     BCS $A32F
C - - - - - 0x01831A 06:A30A: 29 07     AND #$07
C - - - - - 0x01831C 06:A30C: A8        TAY
C - - - - - 0x01831D 06:A30D: B9 45 A0  LDA $A045,Y
C - - - - - 0x018320 06:A310: 85 05     STA ram_0005
C - - - - - 0x018322 06:A312: F0 11     BEQ $A325
C - - - - - 0x018324 06:A314: C9 10     CMP #$10
C - - - - - 0x018326 06:A316: F0 04     BEQ $A31C
C - - - - - 0x018328 06:A318: A9 18     LDA #$18
C - - - - - 0x01832A 06:A31A: D0 02     BNE $A31E
C - - - - - 0x01832C 06:A31C: A9 20     LDA #$20
C - - - - - 0x01832E 06:A31E: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018331 06:A321: D0 02     BNE $A325
C - - - - - 0x018333 06:A323: 85 05     STA ram_0005
C - - - - - 0x018335 06:A325: BD 20 03  LDA ram_0320,X
C - - - - - 0x018338 06:A328: 29 C1     AND #$C1
C - - - - - 0x01833A 06:A32A: 05 05     ORA ram_0005
C - - - - - 0x01833C 06:A32C: 9D 20 03  STA ram_0320,X
C - - - - - 0x01833F 06:A32F: 60        RTS
C - - - - - 0x018340 06:A330: A9 7F     LDA #$7F
C - - - - - 0x018342 06:A332: 20 BD D6  JSR $D6BD
C - - - - - 0x018345 06:A335: 84 05     STY ram_0005
C - - - - - 0x018347 06:A337: BD 20 03  LDA ram_0320,X
C - - - - - 0x01834A 06:A33A: 29 FE     AND #$FE
C - - - - - 0x01834C 06:A33C: 05 05     ORA ram_0005
C - - - - - 0x01834E 06:A33E: 9D 20 03  STA ram_0320,X
C - - - - - 0x018351 06:A341: 60        RTS
- D 1 - I - 0x018352 06:A342: 05        .byte $05   ; 
- D 1 - I - 0x018353 06:A343: 04        .byte $04   ; 
- D 1 - I - 0x018354 06:A344: 03        .byte $03   ; 
- D 1 - I - 0x018355 06:A345: 01        .byte $01   ; 
- D 1 - I - 0x018356 06:A346: 00        .byte $00   ; 
- D 1 - I - 0x018357 06:A347: 0F        .byte $0F   ; 
- D 1 - I - 0x018358 06:A348: 0D        .byte $0D   ; 
- D 1 - I - 0x018359 06:A349: 0C        .byte $0C   ; 
- D 1 - I - 0x01835A 06:A34A: 0B        .byte $0B   ; 
- D 1 - I - 0x01835B 06:A34B: 0C        .byte $0C   ; 
- D 1 - I - 0x01835C 06:A34C: 0D        .byte $0D   ; 
- D 1 - I - 0x01835D 06:A34D: 0F        .byte $0F   ; 
- D 1 - I - 0x01835E 06:A34E: 00        .byte $00   ; 
- D 1 - I - 0x01835F 06:A34F: 01        .byte $01   ; 
- D 1 - I - 0x018360 06:A350: 03        .byte $03   ; 
- D 1 - I - 0x018361 06:A351: 04        .byte $04   ; 
- D 1 - I - 0x018362 06:A352: 44        .byte $44   ; <D>
- D 1 - I - 0x018363 06:A353: 04        .byte $04   ; 
- D 1 - I - 0x018364 06:A354: 04        .byte $04   ; 
- D 1 - I - 0x018365 06:A355: 04        .byte $04   ; 
- D 1 - I - 0x018366 06:A356: 06        .byte $06   ; 
- D 1 - I - 0x018367 06:A357: 04        .byte $04   ; 
- D 1 - I - 0x018368 06:A358: 04        .byte $04   ; 
- D 1 - I - 0x018369 06:A359: 04        .byte $04   ; 
- D 1 - I - 0x01836A 06:A35A: 44        .byte $44   ; <D>
- D 1 - I - 0x01836B 06:A35B: 04        .byte $04   ; 
- D 1 - I - 0x01836C 06:A35C: 04        .byte $04   ; 
- D 1 - I - 0x01836D 06:A35D: 04        .byte $04   ; 
- D 1 - I - 0x01836E 06:A35E: 06        .byte $06   ; 
- D 1 - I - 0x01836F 06:A35F: 04        .byte $04   ; 
- D 1 - I - 0x018370 06:A360: 04        .byte $04   ; 
- D 1 - I - 0x018371 06:A361: 04        .byte $04   ; 
- D 1 - - - 0x018372 06:A362: 05        .byte $05   ; 
- D 1 - - - 0x018373 06:A363: 0A        .byte $0A   ; 
- D 1 - - - 0x018374 06:A364: 00        .byte $00   ; 
- D 1 - - - 0x018375 06:A365: 10        .byte $10   ; 
C D 1 - - - 0x018376 06:A366: A2 01     LDX #$01
C - - - - - 0x018378 06:A368: 86 1A     STX ram_001A
C - - - - - 0x01837A 06:A36A: A6 1A     LDX ram_001A
C - - - - - 0x01837C 06:A36C: 20 17 A4  JSR $A417
C - - - - - 0x01837F 06:A36F: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018382 06:A372: C9 E0     CMP #$E0
C - - - - - 0x018384 06:A374: B0 49     BCS $A3BF
C - - - - - 0x018386 06:A376: C9 C0     CMP #$C0
C - - - - - 0x018388 06:A378: 90 45     BCC $A3BF
C - - - - - 0x01838A 06:A37A: A0 02     LDY #$02
C - - - - - 0x01838C 06:A37C: AD 01 03  LDA ram_0301
C - - - - - 0x01838F 06:A37F: C9 27     CMP #$27
C - - - - - 0x018391 06:A381: F0 02     BEQ $A385
C - - - - - 0x018393 06:A383: A0 00     LDY #$00
C - - - - - 0x018395 06:A385: BD 68 03  LDA ram_0368,X
C - - - - - 0x018398 06:A388: 18        CLC
C - - - - - 0x018399 06:A389: 79 62 A3  ADC $A362,Y
C - - - - - 0x01839C 06:A38C: 85 AD     STA ram_00AD
C - - - - - 0x01839E 06:A38E: BD 6E 03  LDA ram_036E,X
C - - - - - 0x0183A1 06:A391: 85 AE     STA ram_00AE
C - - - - - 0x0183A3 06:A393: B9 63 A3  LDA $A363,Y
C - - - - - 0x0183A6 06:A396: 85 AF     STA ram_00AF
C - - - - - 0x0183A8 06:A398: A9 05     LDA #$05
C - - - - - 0x0183AA 06:A39A: 85 B0     STA ram_00B0
C - - - - - 0x0183AC 06:A39C: 20 60 D6  JSR $D660
C - - - - - 0x0183AF 06:A39F: B0 0B     BCS $A3AC
C - - - - - 0x0183B1 06:A3A1: A5 5F     LDA ram_005F
C - - - - - 0x0183B3 06:A3A3: 29 02     AND #$02
C - - - - - 0x0183B5 06:A3A5: F0 0B     BEQ $A3B2
C - - - - - 0x0183B7 06:A3A7: 20 06 D6  JSR $D606
C - - - - - 0x0183BA 06:A3AA: 90 10     BCC $A3BC
C - - - - - 0x0183BC 06:A3AC: 20 DD A3  JSR $A3DD
C - - - - - 0x0183BF 06:A3AF: 4C BF A3  JMP $A3BF
C - - - - - 0x0183C2 06:A3B2: A6 7A     LDX ram_007A
C - - - - - 0x0183C4 06:A3B4: 20 B6 D5  JSR $D5B6
C - - - - - 0x0183C7 06:A3B7: B0 0B     BCS $A3C4
C D 1 - - - 0x0183C9 06:A3B9: CA        DEX
C - - - - - 0x0183CA 06:A3BA: 10 F8     BPL $A3B4
C - - - - - 0x0183CC 06:A3BC: 20 62 D5  JSR $D562
C D 1 - - - 0x0183CF 06:A3BF: C6 1A     DEC ram_001A
C - - - - - 0x0183D1 06:A3C1: 10 A7     BPL $A36A
C - - - - - 0x0183D3 06:A3C3: 60        RTS
C - - - - - 0x0183D4 06:A3C4: A9 00     LDA #$00
C - - - - - 0x0183D6 06:A3C6: 95 8F     STA ram_008F,X
C - - - - - 0x0183D8 06:A3C8: A6 1A     LDX ram_001A
C - - - - - 0x0183DA 06:A3CA: BD 62 03  LDA ram_0362,X
C - - - - - 0x0183DD 06:A3CD: 30 06     BMI $A3D5
C - - - - - 0x0183DF 06:A3CF: 20 DD A3  JSR $A3DD
C - - - - - 0x0183E2 06:A3D2: 4C BF A3  JMP $A3BF
C - - - - - 0x0183E5 06:A3D5: A9 10     LDA #$10
C - - - - - 0x0183E7 06:A3D7: 20 20 C4  JSR $C420
C - - - - - 0x0183EA 06:A3DA: 4C B9 A3  JMP $A3B9
C - - - - - 0x0183ED 06:A3DD: A6 1A     LDX ram_001A
C - - - - - 0x0183EF 06:A3DF: AD 01 03  LDA ram_0301
C - - - - - 0x0183F2 06:A3E2: C9 27     CMP #$27
C - - - - - 0x0183F4 06:A3E4: D0 21     BNE $A407
C - - - - - 0x0183F6 06:A3E6: DE 8C 03  DEC ram_038C,X
C - - - - - 0x0183F9 06:A3E9: F0 1C     BEQ $A407
C - - - - - 0x0183FB 06:A3EB: A0 00     LDY #$00
C - - - - - 0x0183FD 06:A3ED: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018400 06:A3F0: 6A        ROR
C - - - - - 0x018401 06:A3F1: B0 02     BCS $A3F5
C - - - - - 0x018403 06:A3F3: A0 08     LDY #$08
C - - - - - 0x018405 06:A3F5: 98        TYA
C - - - - - 0x018406 06:A3F6: 9D 92 03  STA ram_0392,X
C - - - - - 0x018409 06:A3F9: A9 40     LDA #$40
C - - - - - 0x01840B 06:A3FB: 9D 86 03  STA ram_0386,X
C - - - - - 0x01840E 06:A3FE: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018411 06:A401: 09 02     ORA #$02
C - - - - - 0x018413 06:A403: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018416 06:A406: 60        RTS
C - - - - - 0x018417 06:A407: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01841A 06:A40A: 29 C0     AND #$C0
C - - - - - 0x01841C 06:A40C: 09 20     ORA #$20
C - - - - - 0x01841E 06:A40E: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018421 06:A411: A9 08     LDA #$08
C - - - - - 0x018423 06:A413: 9D 86 03  STA ram_0386,X
C - - - - - 0x018426 06:A416: 60        RTS
C - - - - - 0x018427 06:A417: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01842A 06:A41A: 10 FA     BPL $A416
C - - - - - 0x01842C 06:A41C: 29 20     AND #$20
C - - - - - 0x01842E 06:A41E: D0 22     BNE $A442
C - - - - - 0x018430 06:A420: A0 03     LDY #$03
C - - - - - 0x018432 06:A422: AD 01 03  LDA ram_0301
C - - - - - 0x018435 06:A425: C9 27     CMP #$27
C - - - - - 0x018437 06:A427: D0 0B     BNE $A434
C - - - - - 0x018439 06:A429: A0 00     LDY #$00
C - - - - - 0x01843B 06:A42B: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01843E 06:A42E: 29 02     AND #$02
C - - - - - 0x018440 06:A430: D0 02     BNE $A434
C - - - - - 0x018442 06:A432: A0 01     LDY #$01
C - - - - - 0x018444 06:A434: 98        TYA
C - - - - - 0x018445 06:A435: 25 2C     AND ram_002C
C - - - - - 0x018447 06:A437: D0 06     BNE $A43F
C - - - - - 0x018449 06:A439: 20 28 A5  JSR $A528
C - - - - - 0x01844C 06:A43C: 20 89 A4  JSR $A489
C - - - - - 0x01844F 06:A43F: 20 C4 D9  JSR $D9C4
C - - - - - 0x018452 06:A442: BD 80 03  LDA ram_0380,X
C - - - - - 0x018455 06:A445: 0A        ASL
C - - - - - 0x018456 06:A446: 0A        ASL
C - - - - - 0x018457 06:A447: A8        TAY
C - - - - - 0x018458 06:A448: BD 74 03  LDA ram_0374,X
C - - - - - 0x01845B 06:A44B: 85 00     STA ram_0000
C - - - - - 0x01845D 06:A44D: BD 7A 03  LDA ram_037A,X
C - - - - - 0x018460 06:A450: 85 01     STA ram_0001
C - - - - - 0x018462 06:A452: 20 7B D6  JSR $D67B
C - - - - - 0x018465 06:A455: 90 03     BCC $A45A
C - - - - - 0x018467 06:A457: 4C 73 D8  JMP $D873
C - - - - - 0x01846A 06:A45A: 20 AC D6  JSR $D6AC
C - - - - - 0x01846D 06:A45D: 90 03     BCC $A462
C - - - - - 0x01846F 06:A45F: 4C 4D D8  JMP $D84D
C - - - - - 0x018472 06:A462: 20 31 D8  JSR $D831
C - - - - - 0x018475 06:A465: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018478 06:A468: 29 20     AND #$20
C - - - - - 0x01847A 06:A46A: F0 03     BEQ $A46F
C - - - - - 0x01847C 06:A46C: 4C 7E A4  JMP $A47E
C - - - - - 0x01847F 06:A46F: 98        TYA
C - - - - - 0x018480 06:A470: 18        CLC
C - - - - - 0x018481 06:A471: 6D 06 03  ADC ram_0306
C - - - - - 0x018484 06:A474: 85 01     STA ram_0001
C - - - - - 0x018486 06:A476: AD 07 03  LDA ram_0307
C - - - - - 0x018489 06:A479: 85 02     STA ram_0002
C - - - - - 0x01848B 06:A47B: 4C 33 CE  JMP $CE33
C D 1 - - - 0x01848E 06:A47E: DE 86 03  DEC ram_0386,X
C - - - - - 0x018491 06:A481: D0 03     BNE $A486
C - - - - - 0x018493 06:A483: 4C 73 D8  JMP $D873
C - - - - - 0x018496 06:A486: 4C 7D D9  JMP $D97D
C - - - - - 0x018499 06:A489: AD 01 03  LDA ram_0301
C - - - - - 0x01849C 06:A48C: C9 27     CMP #$27
C - - - - - 0x01849E 06:A48E: F0 2F     BEQ $A4BF
C - - - - - 0x0184A0 06:A490: 20 8F A5  JSR $A58F
C - - - - - 0x0184A3 06:A493: BC 92 03  LDY ram_0392,X
C - - - - - 0x0184A6 06:A496: B1 00     LDA (ram_0000),Y
C - - - - - 0x0184A8 06:A498: 0A        ASL
C - - - - - 0x0184A9 06:A499: A8        TAY
C - - - - - 0x0184AA 06:A49A: BD 68 03  LDA ram_0368,X
C - - - - - 0x0184AD 06:A49D: 18        CLC
C - - - - - 0x0184AE 06:A49E: 79 D4 DA  ADC $DAD4,Y
C - - - - - 0x0184B1 06:A4A1: 9D 68 03  STA ram_0368,X
C - - - - - 0x0184B4 06:A4A4: A9 00     LDA #$00
C - - - - - 0x0184B6 06:A4A6: 85 02     STA ram_0002
C - - - - - 0x0184B8 06:A4A8: B9 D5 DA  LDA $DAD5,Y
C - - - - - 0x0184BB 06:A4AB: 10 02     BPL $A4AF
C - - - - - 0x0184BD 06:A4AD: C6 02     DEC ram_0002
C - - - - - 0x0184BF 06:A4AF: 18        CLC
C - - - - - 0x0184C0 06:A4B0: 7D 74 03  ADC ram_0374,X
C - - - - - 0x0184C3 06:A4B3: 9D 74 03  STA ram_0374,X
C - - - - - 0x0184C6 06:A4B6: BD 7A 03  LDA ram_037A,X
C - - - - - 0x0184C9 06:A4B9: 65 02     ADC ram_0002
C - - - - - 0x0184CB 06:A4BB: 9D 7A 03  STA ram_037A,X
C - - - - - 0x0184CE 06:A4BE: 60        RTS
C - - - - - 0x0184CF 06:A4BF: 20 98 A5  JSR $A598
C - - - - - 0x0184D2 06:A4C2: C9 01     CMP #$01
C - - - - - 0x0184D4 06:A4C4: 90 33     BCC $A4F9
C - - - - - 0x0184D6 06:A4C6: C9 08     CMP #$08
C - - - - - 0x0184D8 06:A4C8: B0 07     BCS $A4D1
C - - - - - 0x0184DA 06:A4CA: 20 B7 D8  JSR $D8B7
C - - - - - 0x0184DD 06:A4CD: F0 2A     BEQ $A4F9
C - - - - - 0x0184DF 06:A4CF: D0 09     BNE $A4DA
C - - - - - 0x0184E1 06:A4D1: C9 09     CMP #$09
C - - - - - 0x0184E3 06:A4D3: 90 24     BCC $A4F9
C - - - - - 0x0184E5 06:A4D5: 20 C2 D8  JSR $D8C2
C - - - - - 0x0184E8 06:A4D8: F0 1F     BEQ $A4F9
C - - - - - 0x0184EA 06:A4DA: 20 98 A5  JSR $A598
C - - - - - 0x0184ED 06:A4DD: 0A        ASL
C - - - - - 0x0184EE 06:A4DE: A8        TAY
C - - - - - 0x0184EF 06:A4DF: A9 00     LDA #$00
C - - - - - 0x0184F1 06:A4E1: 85 02     STA ram_0002
C - - - - - 0x0184F3 06:A4E3: B9 D5 DA  LDA $DAD5,Y
C - - - - - 0x0184F6 06:A4E6: 10 02     BPL $A4EA
C - - - - - 0x0184F8 06:A4E8: C6 02     DEC ram_0002
C - - - - - 0x0184FA 06:A4EA: 18        CLC
C - - - - - 0x0184FB 06:A4EB: 7D 74 03  ADC ram_0374,X
C - - - - - 0x0184FE 06:A4EE: 9D 74 03  STA ram_0374,X
C - - - - - 0x018501 06:A4F1: BD 7A 03  LDA ram_037A,X
C - - - - - 0x018504 06:A4F4: 65 02     ADC ram_0002
C - - - - - 0x018506 06:A4F6: 9D 7A 03  STA ram_037A,X
C - - - - - 0x018509 06:A4F9: 20 98 A5  JSR $A598
C - - - - - 0x01850C 06:A4FC: C9 05     CMP #$05
C - - - - - 0x01850E 06:A4FE: 90 0B     BCC $A50B
C - - - - - 0x018510 06:A500: C9 0C     CMP #$0C
C - - - - - 0x018512 06:A502: B0 07     BCS $A50B
C - - - - - 0x018514 06:A504: 20 CD D8  JSR $D8CD
C - - - - - 0x018517 06:A507: F0 1E     BEQ $A527
C - - - - - 0x018519 06:A509: D0 0D     BNE $A518
C - - - - - 0x01851B 06:A50B: C9 04     CMP #$04
C - - - - - 0x01851D 06:A50D: 90 04     BCC $A513
C - - - - - 0x01851F 06:A50F: C9 0D     CMP #$0D
C - - - - - 0x018521 06:A511: 90 14     BCC $A527
C - - - - - 0x018523 06:A513: 20 D1 D8  JSR $D8D1
C - - - - - 0x018526 06:A516: F0 0F     BEQ $A527
C - - - - - 0x018528 06:A518: 20 98 A5  JSR $A598
C - - - - - 0x01852B 06:A51B: 0A        ASL
C - - - - - 0x01852C 06:A51C: A8        TAY
C - - - - - 0x01852D 06:A51D: BD 68 03  LDA ram_0368,X
C - - - - - 0x018530 06:A520: 18        CLC
C - - - - - 0x018531 06:A521: 79 D4 DA  ADC $DAD4,Y
C - - - - - 0x018534 06:A524: 9D 68 03  STA ram_0368,X
C - - - - - 0x018537 06:A527: 60        RTS
C - - - - - 0x018538 06:A528: 20 8F A5  JSR $A58F
C - - - - - 0x01853B 06:A52B: DE 86 03  DEC ram_0386,X
C - - - - - 0x01853E 06:A52E: D0 14     BNE $A544
C - - - - - 0x018540 06:A530: FE 92 03  INC ram_0392,X
C - - - - - 0x018543 06:A533: BD 92 03  LDA ram_0392,X
C - - - - - 0x018546 06:A536: 29 0F     AND #$0F
C - - - - - 0x018548 06:A538: 9D 92 03  STA ram_0392,X
C - - - - - 0x01854B 06:A53B: 18        CLC
C - - - - - 0x01854C 06:A53C: 69 10     ADC #$10
C - - - - - 0x01854E 06:A53E: A8        TAY
C - - - - - 0x01854F 06:A53F: B1 00     LDA (ram_0000),Y
C - - - - - 0x018551 06:A541: 9D 86 03  STA ram_0386,X
C - - - - - 0x018554 06:A544: 20 DF D6  JSR $D6DF
C - - - - - 0x018557 06:A547: BD 68 03  LDA ram_0368,X
C - - - - - 0x01855A 06:A54A: C9 30     CMP #$30
C - - - - - 0x01855C 06:A54C: B0 0A     BCS $A558
C - - - - - 0x01855E 06:A54E: A9 00     LDA #$00
C - - - - - 0x018560 06:A550: C0 01     CPY #$01
C - - - - - 0x018562 06:A552: D0 1B     BNE $A56F
C - - - - - 0x018564 06:A554: A9 08     LDA #$08
C - - - - - 0x018566 06:A556: D0 17     BNE $A56F
C - - - - - 0x018568 06:A558: BD 68 03  LDA ram_0368,X
C - - - - - 0x01856B 06:A55B: C9 BF     CMP #$BF
C - - - - - 0x01856D 06:A55D: 90 18     BCC $A577
C - - - - - 0x01856F 06:A55F: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018572 06:A562: 29 FD     AND #$FD
C - - - - - 0x018574 06:A564: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018577 06:A567: A9 03     LDA #$03
C - - - - - 0x018579 06:A569: C0 01     CPY #$01
C - - - - - 0x01857B 06:A56B: D0 02     BNE $A56F
C - - - - - 0x01857D 06:A56D: A9 0B     LDA #$0B
C - - - - - 0x01857F 06:A56F: 9D 92 03  STA ram_0392,X
C - - - - - 0x018582 06:A572: A9 50     LDA #$50
C - - - - - 0x018584 06:A574: 9D 86 03  STA ram_0386,X
C - - - - - 0x018587 06:A577: BC 92 03  LDY ram_0392,X
C - - - - - 0x01858A 06:A57A: B1 00     LDA (ram_0000),Y
C - - - - - 0x01858C 06:A57C: 29 08     AND #$08
C - - - - - 0x01858E 06:A57E: F0 02     BEQ $A582
C - - - - - 0x018590 06:A580: A9 01     LDA #$01
C - - - - - 0x018592 06:A582: 85 05     STA ram_0005
C - - - - - 0x018594 06:A584: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018597 06:A587: 29 FE     AND #$FE
C - - - - - 0x018599 06:A589: 05 05     ORA ram_0005
C - - - - - 0x01859B 06:A58B: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01859E 06:A58E: 60        RTS
C - - - - - 0x01859F 06:A58F: A9 42     LDA #$42
C - - - - - 0x0185A1 06:A591: 85 00     STA ram_0000
C - - - - - 0x0185A3 06:A593: A9 A3     LDA #$A3
C - - - - - 0x0185A5 06:A595: 85 01     STA ram_0001
C - - - - - 0x0185A7 06:A597: 60        RTS
C - - - - - 0x0185A8 06:A598: 20 8F A5  JSR $A58F
C - - - - - 0x0185AB 06:A59B: BC 92 03  LDY ram_0392,X
C - - - - - 0x0185AE 06:A59E: B1 00     LDA (ram_0000),Y
C - - - - - 0x0185B0 06:A5A0: 60        RTS
- - - - - - 0x0185B1 06:A5A1: 18        .byte $18   ; 
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
C D 1 - - - 0x0185C3 06:A5B3: A2 01     LDX #$01
C - - - - - 0x0185C5 06:A5B5: 86 1A     STX ram_001A
C - - - - - 0x0185C7 06:A5B7: A6 1A     LDX ram_001A
C - - - - - 0x0185C9 06:A5B9: 20 1A A6  JSR $A61A
C - - - - - 0x0185CC 06:A5BC: BD 5C 03  LDA ram_035C,X
C - - - - - 0x0185CF 06:A5BF: C9 E0     CMP #$E0
C - - - - - 0x0185D1 06:A5C1: B0 40     BCS $A603
C - - - - - 0x0185D3 06:A5C3: C9 C0     CMP #$C0
C - - - - - 0x0185D5 06:A5C5: 90 3C     BCC $A603
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
C - - - - - 0x0185EC 06:A5DC: A5 5F     LDA ram_005F
C - - - - - 0x0185EE 06:A5DE: 29 02     AND #$02
C - - - - - 0x0185F0 06:A5E0: F0 0B     BEQ $A5ED
C - - - - - 0x0185F2 06:A5E2: 20 06 D6  JSR $D606
C - - - - - 0x0185F5 06:A5E5: 90 19     BCC $A600
C - - - - - 0x0185F7 06:A5E7: 20 08 A6  JSR $A608
C - - - - - 0x0185FA 06:A5EA: 4C 03 A6  JMP $A603
C - - - - - 0x0185FD 06:A5ED: A6 7A     LDX ram_007A
C - - - - - 0x0185FF 06:A5EF: 20 B6 D5  JSR $D5B6
C - - - - - 0x018602 06:A5F2: 90 09     BCC $A5FD
C - - - - - 0x018604 06:A5F4: A9 10     LDA #$10
C - - - - - 0x018606 06:A5F6: 20 20 C4  JSR $C420
C - - - - - 0x018609 06:A5F9: A9 00     LDA #$00
C - - - - - 0x01860B 06:A5FB: 95 8F     STA ram_008F,X
C - - - - - 0x01860D 06:A5FD: CA        DEX
C - - - - - 0x01860E 06:A5FE: 10 EF     BPL $A5EF
C - - - - - 0x018610 06:A600: 20 62 D5  JSR $D562
C D 1 - - - 0x018613 06:A603: C6 1A     DEC ram_001A
C - - - - - 0x018615 06:A605: 10 B0     BPL $A5B7
C - - - - - 0x018617 06:A607: 60        RTS
C - - - - - 0x018618 06:A608: A6 1A     LDX ram_001A
C - - - - - 0x01861A 06:A60A: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01861D 06:A60D: 29 C0     AND #$C0
C - - - - - 0x01861F 06:A60F: 09 20     ORA #$20
C - - - - - 0x018621 06:A611: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018624 06:A614: A9 08     LDA #$08
C - - - - - 0x018626 06:A616: 9D 86 03  STA ram_0386,X
C - - - - - 0x018629 06:A619: 60        RTS
C - - - - - 0x01862A 06:A61A: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01862D 06:A61D: 10 E8     BPL $A607
C - - - - - 0x01862F 06:A61F: 4A        LSR
C - - - - - 0x018630 06:A620: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x018633 06:A623: DE        .byte $DE   ; 
- D 1 - I - 0x018634 06:A624: A6        .byte $A6   ; 
- - - - - - 0x018635 06:A625: 30        .byte $30   ; <0>
- - - - - - 0x018636 06:A626: A6        .byte $A6   ; 
- - - - - - 0x018637 06:A627: 30        .byte $30   ; <0>
- - - - - - 0x018638 06:A628: A6        .byte $A6   ; 
- - - - - - 0x018639 06:A629: 30        .byte $30   ; <0>
- - - - - - 0x01863A 06:A62A: A6        .byte $A6   ; 
- D 1 - I - 0x01863B 06:A62B: 46        .byte $46   ; <F>
- D 1 - I - 0x01863C 06:A62C: A6        .byte $A6   ; 
- D 1 - I - 0x01863D 06:A62D: 30        .byte $30   ; <0>
- D 1 - I - 0x01863E 06:A62E: A6        .byte $A6   ; 
- D 1 - I - 0x01863F 06:A62F: 30        .byte $30   ; <0>
- D 1 - I - 0x018640 06:A630: A6        .byte $A6   ; 
C - - - - - 0x018641 06:A631: A9 09     LDA #$09
C - - - - - 0x018643 06:A633: 20 DB D8  JSR $D8DB
C - - - - - 0x018646 06:A636: D0 49     BNE $A681
C - - - - - 0x018648 06:A638: BD 80 03  LDA ram_0380,X
C - - - - - 0x01864B 06:A63B: 29 03     AND #$03
C - - - - - 0x01864D 06:A63D: 9D 80 03  STA ram_0380,X
C - - - - - 0x018650 06:A640: A9 1C     LDA #$1C
C - - - - - 0x018652 06:A642: A0 03     LDY #$03
C - - - - - 0x018654 06:A644: 4C CE A6  JMP $A6CE
C D 1 - - - 0x018657 06:A647: BD 74 03  LDA ram_0374,X
C - - - - - 0x01865A 06:A64A: 85 00     STA ram_0000
C - - - - - 0x01865C 06:A64C: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01865F 06:A64F: 85 01     STA ram_0001
C - - - - - 0x018661 06:A651: 20 7B D6  JSR $D67B
C - - - - - 0x018664 06:A654: 90 03     BCC $A659
C - - - - - 0x018666 06:A656: 4C 73 D8  JMP $D873
C - - - - - 0x018669 06:A659: 20 AC D6  JSR $D6AC
C - - - - - 0x01866C 06:A65C: 90 03     BCC $A661
C - - - - - 0x01866E 06:A65E: 4C 4D D8  JMP $D84D
C - - - - - 0x018671 06:A661: 20 31 D8  JSR $D831
C - - - - - 0x018674 06:A664: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018677 06:A667: 29 20     AND #$20
C - - - - - 0x018679 06:A669: F0 03     BEQ $A66E
C - - - - - 0x01867B 06:A66B: 4C 52 A7  JMP $A752
C - - - - - 0x01867E 06:A66E: BD 80 03  LDA ram_0380,X
C - - - - - 0x018681 06:A671: 29 06     AND #$06
C - - - - - 0x018683 06:A673: 18        CLC
C - - - - - 0x018684 06:A674: 6D 06 03  ADC ram_0306
C - - - - - 0x018687 06:A677: 85 01     STA ram_0001
C - - - - - 0x018689 06:A679: AD 07 03  LDA ram_0307
C - - - - - 0x01868C 06:A67C: 85 02     STA ram_0002
C - - - - - 0x01868E 06:A67E: 4C 33 CE  JMP $CE33
C - - - - - 0x018691 06:A681: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018694 06:A684: 6A        ROR
C - - - - - 0x018695 06:A685: 90 28     BCC $A6AF
C - - - - - 0x018697 06:A687: 20 B5 A6  JSR $A6B5
C D 1 - - - 0x01869A 06:A68A: 20 90 A6  JSR $A690
C - - - - - 0x01869D 06:A68D: 4C 47 A6  JMP $A647
C - - - - - 0x0186A0 06:A690: A5 2C     LDA ram_002C
C - - - - - 0x0186A2 06:A692: 29 0F     AND #$0F
C - - - - - 0x0186A4 06:A694: D0 05     BNE $A69B
C - - - - - 0x0186A6 06:A696: A9 37     LDA #$37
C - - - - - 0x0186A8 06:A698: 20 20 C4  JSR $C420
C - - - - - 0x0186AB 06:A69B: A5 2C     LDA ram_002C
C - - - - - 0x0186AD 06:A69D: 29 03     AND #$03
C - - - - - 0x0186AF 06:A69F: D0 0D     BNE $A6AE
C - - - - - 0x0186B1 06:A6A1: BD 5C 03  LDA ram_035C,X
C - - - - - 0x0186B4 06:A6A4: 6A        ROR
C - - - - - 0x0186B5 06:A6A5: B0 04     BCS $A6AB
C - - - - - 0x0186B7 06:A6A7: FE 80 03  INC ram_0380,X
C - - - - - 0x0186BA 06:A6AA: 60        RTS
C - - - - - 0x0186BB 06:A6AB: DE 80 03  DEC ram_0380,X
C - - - - - 0x0186BE 06:A6AE: 60        RTS
C - - - - - 0x0186BF 06:A6AF: 20 C6 A6  JSR $A6C6
C - - - - - 0x0186C2 06:A6B2: 4C 8A A6  JMP $A68A
C - - - - - 0x0186C5 06:A6B5: 20 C2 D8  JSR $D8C2
C - - - - - 0x0186C8 06:A6B8: F0 03     BEQ $A6BD
C - - - - - 0x0186CA 06:A6BA: 4C 09 D8  JMP $D809
C - - - - - 0x0186CD 06:A6BD: BD 5C 03  LDA ram_035C,X
C - - - - - 0x0186D0 06:A6C0: 49 01     EOR #$01
C - - - - - 0x0186D2 06:A6C2: 9D 5C 03  STA ram_035C,X
C - - - - - 0x0186D5 06:A6C5: 60        RTS
C - - - - - 0x0186D6 06:A6C6: 20 B7 D8  JSR $D8B7
C - - - - - 0x0186D9 06:A6C9: F0 F2     BEQ $A6BD
C - - - - - 0x0186DB 06:A6CB: 4C 28 D8  JMP $D828
C D 1 - - - 0x0186DE 06:A6CE: 9D 86 03  STA ram_0386,X
C - - - - - 0x0186E1 06:A6D1: 98        TYA
C - - - - - 0x0186E2 06:A6D2: 9D 92 03  STA ram_0392,X
C - - - - - 0x0186E5 06:A6D5: BD 5C 03  LDA ram_035C,X
C - - - - - 0x0186E8 06:A6D8: 29 FD     AND #$FD
C - - - - - 0x0186EA 06:A6DA: 09 02     ORA #$02
C - - - - - 0x0186EC 06:A6DC: 9D 5C 03  STA ram_035C,X
C - - - - - 0x0186EF 06:A6DF: BD 68 03  LDA ram_0368,X
C - - - - - 0x0186F2 06:A6E2: C9 D7     CMP #$D7
C - - - - - 0x0186F4 06:A6E4: B0 0F     BCS $A6F5
C - - - - - 0x0186F6 06:A6E6: BD 5C 03  LDA ram_035C,X
C - - - - - 0x0186F9 06:A6E9: 6A        ROR
C - - - - - 0x0186FA 06:A6EA: 90 06     BCC $A6F2
C - - - - - 0x0186FC 06:A6EC: 20 B5 A6  JSR $A6B5
C - - - - - 0x0186FF 06:A6EF: 4C F5 A6  JMP $A6F5
C - - - - - 0x018702 06:A6F2: 20 C6 A6  JSR $A6C6
C D 1 - - - 0x018705 06:A6F5: BC 86 03  LDY ram_0386,X
C - - - - - 0x018708 06:A6F8: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01870B 06:A6FB: 18        CLC
C - - - - - 0x01870C 06:A6FC: 7D 68 03  ADC ram_0368,X
C - - - - - 0x01870F 06:A6FF: C9 D7     CMP #$D7
C - - - - - 0x018711 06:A701: 90 02     BCC $A705
C - - - - - 0x018713 06:A703: A9 D7     LDA #$D7
C - - - - - 0x018715 06:A705: 9D 68 03  STA ram_0368,X
C - - - - - 0x018718 06:A708: BC 86 03  LDY ram_0386,X
C - - - - - 0x01871B 06:A70B: C0 18     CPY #$18
C - - - - - 0x01871D 06:A70D: 90 33     BCC $A742
C - - - - - 0x01871F 06:A70F: C9 D7     CMP #$D7
C - - - - - 0x018721 06:A711: 90 05     BCC $A718
C - - - - - 0x018723 06:A713: A0 FF     LDY #$FF
C - - - - - 0x018725 06:A715: 4C 47 A6  JMP $A647
C - - - - - 0x018728 06:A718: A9 09     LDA #$09
C - - - - - 0x01872A 06:A71A: 20 DB D8  JSR $D8DB
C - - - - - 0x01872D 06:A71D: F0 23     BEQ $A742
C - - - - - 0x01872F 06:A71F: 20 A8 D8  JSR $D8A8
C - - - - - 0x018732 06:A722: A0 10     LDY #$10
C - - - - - 0x018734 06:A724: BD 86 03  LDA ram_0386,X
C - - - - - 0x018737 06:A727: D9 A1 A5  CMP $A5A1,Y
C - - - - - 0x01873A 06:A72A: B0 04     BCS $A730
C - - - - - 0x01873C 06:A72C: 88        DEY
C - - - - - 0x01873D 06:A72D: 88        DEY
C - - - - - 0x01873E 06:A72E: D0 F7     BNE $A727
C - - - - - 0x018740 06:A730: B9 A2 A5  LDA $A5A2,Y
C - - - - - 0x018743 06:A733: 9D 86 03  STA ram_0386,X
C - - - - - 0x018746 06:A736: C9 18     CMP #$18
C - - - - - 0x018748 06:A738: D0 08     BNE $A742
C - - - - - 0x01874A 06:A73A: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01874D 06:A73D: 29 E1     AND #$E1
C - - - - - 0x01874F 06:A73F: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018752 06:A742: FE 86 03  INC ram_0386,X
C - - - - - 0x018755 06:A745: A9 2F     LDA #$2F
C - - - - - 0x018757 06:A747: DD 86 03  CMP ram_0386,X
C - - - - - 0x01875A 06:A74A: B0 03     BCS $A74F
C - - - - - 0x01875C 06:A74C: 9D 86 03  STA ram_0386,X
C - - - - - 0x01875F 06:A74F: 4C 47 A6  JMP $A647
C D 1 - - - 0x018762 06:A752: DE 86 03  DEC ram_0386,X
C - - - - - 0x018765 06:A755: D0 03     BNE $A75A
C - - - - - 0x018767 06:A757: 4C 73 D8  JMP $D873
C - - - - - 0x01876A 06:A75A: A5 46     LDA ram_0046
C - - - - - 0x01876C 06:A75C: C9 19     CMP #$19
C - - - - - 0x01876E 06:A75E: F0 03     BEQ $A763
C - - - - - 0x018770 06:A760: 4C 7D D9  JMP $D97D
C - - - - - 0x018773 06:A763: BD 86 03  LDA ram_0386,X
C - - - - - 0x018776 06:A766: 4C 9F D9  JMP $D99F
- D 1 - - - 0x018779 06:A769: 03        .byte $03   ; 
- D 1 - - - 0x01877A 06:A76A: 04        .byte $04   ; 
- D 1 - - - 0x01877B 06:A76B: 05        .byte $05   ; 
- D 1 - - - 0x01877C 06:A76C: 06        .byte $06   ; 
- D 1 - - - 0x01877D 06:A76D: E8        .byte $E8   ; 
- D 1 - - - 0x01877E 06:A76E: 0E        .byte $0E   ; 
- D 1 - - - 0x01877F 06:A76F: 00        .byte $00   ; 
- D 1 - - - 0x018780 06:A770: E8        .byte $E8   ; 
- D 1 - - - 0x018781 06:A771: F2        .byte $F2   ; 
- D 1 - - - 0x018782 06:A772: FF        .byte $FF   ; 
- D 1 - - - 0x018783 06:A773: F1        .byte $F1   ; 
- D 1 - - - 0x018784 06:A774: 0D        .byte $0D   ; 
- D 1 - - - 0x018785 06:A775: 00        .byte $00   ; 
- D 1 - - - 0x018786 06:A776: F1        .byte $F1   ; 
- D 1 - - - 0x018787 06:A777: F3        .byte $F3   ; 
- D 1 - - - 0x018788 06:A778: FF        .byte $FF   ; 
- D 1 - - - 0x018789 06:A779: DE        .byte $DE   ; 
- D 1 - - - 0x01878A 06:A77A: FC        .byte $FC   ; 
- D 1 - - - 0x01878B 06:A77B: FF        .byte $FF   ; 
- D 1 - - - 0x01878C 06:A77C: DE        .byte $DE   ; 
- D 1 - - - 0x01878D 06:A77D: 04        .byte $04   ; 
- D 1 - - - 0x01878E 06:A77E: 00        .byte $00   ; 
- D 1 - - - 0x01878F 06:A77F: 00        .byte $00   ; 
- D 1 - - - 0x018790 06:A780: 54        .byte $54   ; <T>
- D 1 - - - 0x018791 06:A781: A8        .byte $A8   ; 
C D 1 - - - 0x018792 06:A782: 20 88 A7  JSR $A788
C - - - - - 0x018795 06:A785: 4C 73 A9  JMP $A973
C - - - - - 0x018798 06:A788: A2 01     LDX #$01
C - - - - - 0x01879A 06:A78A: 86 1A     STX ram_001A
C - - - - - 0x01879C 06:A78C: A6 1A     LDX ram_001A
C - - - - - 0x01879E 06:A78E: 20 F7 A7  JSR $A7F7
C - - - - - 0x0187A1 06:A791: BD 20 03  LDA ram_0320,X
C - - - - - 0x0187A4 06:A794: C9 E0     CMP #$E0
C - - - - - 0x0187A6 06:A796: B0 39     BCS $A7D1
C - - - - - 0x0187A8 06:A798: C9 C0     CMP #$C0
C - - - - - 0x0187AA 06:A79A: 90 35     BCC $A7D1
C - - - - - 0x0187AC 06:A79C: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0187AF 06:A79F: 85 AD     STA ram_00AD
C - - - - - 0x0187B1 06:A7A1: BD 32 03  LDA ram_0332,X
C - - - - - 0x0187B4 06:A7A4: 85 AE     STA ram_00AE
C - - - - - 0x0187B6 06:A7A6: A9 14     LDA #$14
C - - - - - 0x0187B8 06:A7A8: 85 AF     STA ram_00AF
C - - - - - 0x0187BA 06:A7AA: A9 06     LDA #$06
C - - - - - 0x0187BC 06:A7AC: 85 B0     STA ram_00B0
C - - - - - 0x0187BE 06:A7AE: 20 60 D6  JSR $D660
C - - - - - 0x0187C1 06:A7B1: B0 0B     BCS $A7BE
C - - - - - 0x0187C3 06:A7B3: A5 5F     LDA ram_005F
C - - - - - 0x0187C5 06:A7B5: 29 02     AND #$02
C - - - - - 0x0187C7 06:A7B7: F0 0B     BEQ $A7C4
- - - - - - 0x0187C9 06:A7B9: 20        .byte $20   ; 
- - - - - - 0x0187CA 06:A7BA: 06        .byte $06   ; 
- - - - - - 0x0187CB 06:A7BB: D6        .byte $D6   ; 
- - - - - - 0x0187CC 06:A7BC: 90        .byte $90   ; 
- - - - - - 0x0187CD 06:A7BD: 10        .byte $10   ; 
C - - - - - 0x0187CE 06:A7BE: 20 E0 A7  JSR $A7E0
C - - - - - 0x0187D1 06:A7C1: 4C D1 A7  JMP $A7D1
C - - - - - 0x0187D4 06:A7C4: A6 7A     LDX ram_007A
C - - - - - 0x0187D6 06:A7C6: 20 B6 D5  JSR $D5B6
C - - - - - 0x0187D9 06:A7C9: B0 0B     BCS $A7D6
C - - - - - 0x0187DB 06:A7CB: CA        DEX
C - - - - - 0x0187DC 06:A7CC: 10 F8     BPL $A7C6
C - - - - - 0x0187DE 06:A7CE: 20 62 D5  JSR $D562
C D 1 - - - 0x0187E1 06:A7D1: C6 1A     DEC ram_001A
C - - - - - 0x0187E3 06:A7D3: 10 B7     BPL $A78C
C - - - - - 0x0187E5 06:A7D5: 60        RTS
C - - - - - 0x0187E6 06:A7D6: A9 00     LDA #$00
C - - - - - 0x0187E8 06:A7D8: 95 8F     STA ram_008F,X
C - - - - - 0x0187EA 06:A7DA: 20 E0 A7  JSR $A7E0
C - - - - - 0x0187ED 06:A7DD: 4C D1 A7  JMP $A7D1
C - - - - - 0x0187F0 06:A7E0: A6 1A     LDX ram_001A
C - - - - - 0x0187F2 06:A7E2: BD 20 03  LDA ram_0320,X
C - - - - - 0x0187F5 06:A7E5: 29 C1     AND #$C1
C - - - - - 0x0187F7 06:A7E7: 09 22     ORA #$22
C - - - - - 0x0187F9 06:A7E9: 9D 20 03  STA ram_0320,X
C - - - - - 0x0187FC 06:A7EC: A9 10     LDA #$10
C - - - - - 0x0187FE 06:A7EE: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018801 06:A7F1: A9 00     LDA #$00
C - - - - - 0x018803 06:A7F3: 9D 44 03  STA ram_0344,X
C - - - - - 0x018806 06:A7F6: 60        RTS
C - - - - - 0x018807 06:A7F7: BD 20 03  LDA ram_0320,X
C - - - - - 0x01880A 06:A7FA: 10 FA     BPL $A7F6
C - - - - - 0x01880C 06:A7FC: 4A        LSR
C - - - - - 0x01880D 06:A7FD: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x018810 06:A800: 62        .byte $62   ; <b>
- D 1 - I - 0x018811 06:A801: A8        .byte $A8   ; 
- - - - - - 0x018812 06:A802: 0D        .byte $0D   ; 
- - - - - - 0x018813 06:A803: A8        .byte $A8   ; 
- - - - - - 0x018814 06:A804: 0D        .byte $0D   ; 
- - - - - - 0x018815 06:A805: A8        .byte $A8   ; 
- - - - - - 0x018816 06:A806: 0D        .byte $0D   ; 
- - - - - - 0x018817 06:A807: A8        .byte $A8   ; 
- D 1 - I - 0x018818 06:A808: D8        .byte $D8   ; 
- D 1 - I - 0x018819 06:A809: A8        .byte $A8   ; 
- D 1 - I - 0x01881A 06:A80A: 0D        .byte $0D   ; 
- D 1 - I - 0x01881B 06:A80B: A8        .byte $A8   ; 
- D 1 - I - 0x01881C 06:A80C: 0D        .byte $0D   ; 
- D 1 - I - 0x01881D 06:A80D: A8        .byte $A8   ; 
C - - - - - 0x01881E 06:A80E: 20 F2 A8  JSR $A8F2
C D 1 - - - 0x018821 06:A811: BD 38 03  LDA ram_0338,X
C - - - - - 0x018824 06:A814: 85 00     STA ram_0000
C - - - - - 0x018826 06:A816: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018829 06:A819: 85 01     STA ram_0001
C - - - - - 0x01882B 06:A81B: 20 7B D6  JSR $D67B
C - - - - - 0x01882E 06:A81E: 90 03     BCC $A823
C - - - - - 0x018830 06:A820: 4C 7F D7  JMP $D77F
C - - - - - 0x018833 06:A823: 20 AC D6  JSR $D6AC
C - - - - - 0x018836 06:A826: 90 03     BCC $A82B
C - - - - - 0x018838 06:A828: 4C 41 D7  JMP $D741
C - - - - - 0x01883B 06:A82B: 20 25 D7  JSR $D725
C - - - - - 0x01883E 06:A82E: C0 E0     CPY #$E0
C - - - - - 0x018840 06:A830: 90 03     BCC $A835
C - - - - - 0x018842 06:A832: 4C 89 D9  JMP $D989
C - - - - - 0x018845 06:A835: 98        TYA
C - - - - - 0x018846 06:A836: 18        CLC
C - - - - - 0x018847 06:A837: 6D 02 03  ADC ram_0302
C - - - - - 0x01884A 06:A83A: 85 01     STA ram_0001
C - - - - - 0x01884C 06:A83C: AD 03 03  LDA ram_0303
C - - - - - 0x01884F 06:A83F: 85 02     STA ram_0002
C - - - - - 0x018851 06:A841: 4C 33 CE  JMP $CE33
C - - - - - 0x018854 06:A844: 20 37 D9  JSR $D937
C - - - - - 0x018857 06:A847: A9 F8     LDA #$F8
C - - - - - 0x018859 06:A849: 20 AD D3  JSR $D3AD
C - - - - - 0x01885C 06:A84C: C9 01     CMP #$01
C - - - - - 0x01885E 06:A84E: F0 12     BEQ $A862
C - - - - - 0x018860 06:A850: 4C FD D6  JMP $D6FD
C - - - - - 0x018863 06:A853: 20 37 D9  JSR $D937
C - - - - - 0x018866 06:A856: A9 08     LDA #$08
C - - - - - 0x018868 06:A858: 20 97 D3  JSR $D397
C - - - - - 0x01886B 06:A85B: C9 01     CMP #$01
C - - - - - 0x01886D 06:A85D: F0 03     BEQ $A862
C - - - - - 0x01886F 06:A85F: 4C 1C D7  JMP $D71C
- - - - - - 0x018872 06:A862: 60        .byte $60   ; 
C - - - - - 0x018873 06:A863: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018876 06:A866: C9 DF     CMP #$DF
C - - - - - 0x018878 06:A868: B0 0F     BCS $A879
C - - - - - 0x01887A 06:A86A: BD 20 03  LDA ram_0320,X
C - - - - - 0x01887D 06:A86D: 6A        ROR
C - - - - - 0x01887E 06:A86E: B0 06     BCS $A876
C - - - - - 0x018880 06:A870: 20 44 A8  JSR $A844
C - - - - - 0x018883 06:A873: 4C 79 A8  JMP $A879
C - - - - - 0x018886 06:A876: 20 53 A8  JSR $A853
C D 1 - - - 0x018889 06:A879: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01888C 06:A87C: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01888F 06:A87F: 18        CLC
C - - - - - 0x018890 06:A880: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x018893 06:A883: C9 DF     CMP #$DF
C - - - - - 0x018895 06:A885: 90 09     BCC $A890
- - - - - - 0x018897 06:A887: A0        .byte $A0   ; 
- - - - - - 0x018898 06:A888: DF        .byte $DF   ; 
- - - - - - 0x018899 06:A889: C9        .byte $C9   ; 
- - - - - - 0x01889A 06:A88A: F8        .byte $F8   ; 
- - - - - - 0x01889B 06:A88B: 90        .byte $90   ; 
- - - - - - 0x01889C 06:A88C: 02        .byte $02   ; 
- - - - - - 0x01889D 06:A88D: A0        .byte $A0   ; 
- - - - - - 0x01889E 06:A88E: 00        .byte $00   ; 
- - - - - - 0x01889F 06:A88F: 98        .byte $98   ; 
C - - - - - 0x0188A0 06:A890: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0188A3 06:A893: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0188A6 06:A896: C0 18     CPY #$18
C - - - - - 0x0188A8 06:A898: 90 28     BCC $A8C2
C - - - - - 0x0188AA 06:A89A: C9 DF     CMP #$DF
C - - - - - 0x0188AC 06:A89C: 90 05     BCC $A8A3
- - - - - - 0x0188AE 06:A89E: A0        .byte $A0   ; 
- - - - - - 0x0188AF 06:A89F: FF        .byte $FF   ; 
- - - - - - 0x0188B0 06:A8A0: 4C        .byte $4C   ; <L>
- - - - - - 0x0188B1 06:A8A1: 11        .byte $11   ; 
- - - - - - 0x0188B2 06:A8A2: A8        .byte $A8   ; 
C - - - - - 0x0188B3 06:A8A3: 85 00     STA ram_0000
C - - - - - 0x0188B5 06:A8A5: E6 00     INC ram_0000
C - - - - - 0x0188B7 06:A8A7: 20 58 D3  JSR $D358
C - - - - - 0x0188BA 06:A8AA: F0 16     BEQ $A8C2
C - - - - - 0x0188BC 06:A8AC: C9 02     CMP #$02
C - - - - - 0x0188BE 06:A8AE: F0 07     BEQ $A8B7
- - - - - - 0x0188C0 06:A8B0: 20        .byte $20   ; 
- - - - - - 0x0188C1 06:A8B1: 47        .byte $47   ; <G>
- - - - - - 0x0188C2 06:A8B2: D3        .byte $D3   ; 
- - - - - - 0x0188C3 06:A8B3: D0        .byte $D0   ; 
- - - - - - 0x0188C4 06:A8B4: 07        .byte $07   ; 
- - - - - - 0x0188C5 06:A8B5: F0        .byte $F0   ; 
- - - - - - 0x0188C6 06:A8B6: 0B        .byte $0B   ; 
C - - - - - 0x0188C7 06:A8B7: 20 47 D3  JSR $D347
C - - - - - 0x0188CA 06:A8BA: F0 06     BEQ $A8C2
C - - - - - 0x0188CC 06:A8BC: 20 A8 D7  JSR $D7A8
C - - - - - 0x0188CF 06:A8BF: 4C D4 A8  JMP $A8D4
C - - - - - 0x0188D2 06:A8C2: FE 4A 03  INC ram_034A,X
C - - - - - 0x0188D5 06:A8C5: A9 2F     LDA #$2F
C - - - - - 0x0188D7 06:A8C7: DD 4A 03  CMP ram_034A,X
C - - - - - 0x0188DA 06:A8CA: B0 03     BCS $A8CF
- - - - - - 0x0188DC 06:A8CC: 9D        .byte $9D   ; 
- - - - - - 0x0188DD 06:A8CD: 4A        .byte $4A   ; <J>
- - - - - - 0x0188DE 06:A8CE: 03        .byte $03   ; 
C - - - - - 0x0188DF 06:A8CF: A0 08     LDY #$08
C - - - - - 0x0188E1 06:A8D1: 4C 11 A8  JMP $A811
C D 1 - - - 0x0188E4 06:A8D4: A9 30     LDA #$30
C - - - - - 0x0188E6 06:A8D6: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0188E9 06:A8D9: DE 4A 03  DEC ram_034A,X
C - - - - - 0x0188EC 06:A8DC: D0 03     BNE $A8E1
C - - - - - 0x0188EE 06:A8DE: 4C 7F D7  JMP $D77F
C - - - - - 0x0188F1 06:A8E1: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0188F4 06:A8E4: 20 5F D0  JSR $D05F
C - - - - - 0x0188F7 06:A8E7: A8        TAY
C - - - - - 0x0188F8 06:A8E8: B9 EF A8  LDA $A8EF,Y
C - - - - - 0x0188FB 06:A8EB: A8        TAY
C - - - - - 0x0188FC 06:A8EC: 4C 11 A8  JMP $A811
- D 1 - - - 0x0188FF 06:A8EF: E4        .byte $E4   ; 
- D 1 - - - 0x018900 06:A8F0: E0        .byte $E0   ; 
- D 1 - - - 0x018901 06:A8F1: 10        .byte $10   ; 
C - - - - - 0x018902 06:A8F2: A0 02     LDY #$02
C - - - - - 0x018904 06:A8F4: BD 4A 03  LDA ram_034A,X
C - - - - - 0x018907 06:A8F7: D9 7F A7  CMP $A77F,Y
C - - - - - 0x01890A 06:A8FA: D0 10     BNE $A90C
C - - - - - 0x01890C 06:A8FC: A9 17     LDA #$17
C - - - - - 0x01890E 06:A8FE: 20 20 C4  JSR $C420
C - - - - - 0x018911 06:A901: 20 28 A9  JSR $A928
C - - - - - 0x018914 06:A904: A9 0C     LDA #$0C
C - - - - - 0x018916 06:A906: 9D 26 03  STA ram_0326,X
C - - - - - 0x018919 06:A909: 4C 0F A9  JMP $A90F
C - - - - - 0x01891C 06:A90C: 88        DEY
C - - - - - 0x01891D 06:A90D: 10 E8     BPL $A8F7
C D 1 - - - 0x01891F 06:A90F: A0 00     LDY #$00
C - - - - - 0x018921 06:A911: BD 26 03  LDA ram_0326,X
C - - - - - 0x018924 06:A914: F0 06     BEQ $A91C
C - - - - - 0x018926 06:A916: C9 08     CMP #$08
C - - - - - 0x018928 06:A918: B0 02     BCS $A91C
C - - - - - 0x01892A 06:A91A: A0 04     LDY #$04
C - - - - - 0x01892C 06:A91C: FE 4A 03  INC ram_034A,X
C - - - - - 0x01892F 06:A91F: BD 26 03  LDA ram_0326,X
C - - - - - 0x018932 06:A922: F0 03     BEQ $A927
C - - - - - 0x018934 06:A924: DE 26 03  DEC ram_0326,X
C - - - - - 0x018937 06:A927: 60        RTS
C - - - - - 0x018938 06:A928: A0 00     LDY #$00
C - - - - - 0x01893A 06:A92A: 20 37 A9  JSR $A937
C - - - - - 0x01893D 06:A92D: A4 1A     LDY ram_001A
C - - - - - 0x01893F 06:A92F: A9 01     LDA #$01
C - - - - - 0x018941 06:A931: 99 46 03  STA ram_0346,Y
C - - - - - 0x018944 06:A934: 4C 50 A9  JMP $A950
C - - - - - 0x018947 06:A937: BD 20 03  LDA ram_0320,X
C - - - - - 0x01894A 06:A93A: 6A        ROR
C - - - - - 0x01894B 06:A93B: 90 03     BCC $A940
C - - - - - 0x01894D 06:A93D: C8        INY
C - - - - - 0x01894E 06:A93E: C8        INY
C - - - - - 0x01894F 06:A93F: C8        INY
C - - - - - 0x018950 06:A940: B9 6D A7  LDA $A76D,Y
C - - - - - 0x018953 06:A943: 85 02     STA ram_0002
C - - - - - 0x018955 06:A945: B9 6E A7  LDA $A76E,Y
C - - - - - 0x018958 06:A948: 85 03     STA ram_0003
C - - - - - 0x01895A 06:A94A: B9 6F A7  LDA $A76F,Y
C - - - - - 0x01895D 06:A94D: 85 04     STA ram_0004
C - - - - - 0x01895F 06:A94F: 60        RTS
C D 1 - - - 0x018960 06:A950: BD 20 03  LDA ram_0320,X
C - - - - - 0x018963 06:A953: 29 C1     AND #$C1
C - - - - - 0x018965 06:A955: 99 22 03  STA ram_0322,Y
C - - - - - 0x018968 06:A958: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01896B 06:A95B: 18        CLC
C - - - - - 0x01896C 06:A95C: 65 02     ADC ram_0002
C - - - - - 0x01896E 06:A95E: 99 2E 03  STA ram_032E,Y
C - - - - - 0x018971 06:A961: BD 38 03  LDA ram_0338,X
C - - - - - 0x018974 06:A964: 18        CLC
C - - - - - 0x018975 06:A965: 65 03     ADC ram_0003
C - - - - - 0x018977 06:A967: 99 3A 03  STA ram_033A,Y
C - - - - - 0x01897A 06:A96A: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01897D 06:A96D: 65 04     ADC ram_0004
C - - - - - 0x01897F 06:A96F: 99 40 03  STA ram_0340,Y
C - - - - - 0x018982 06:A972: 60        RTS
C D 1 - - - 0x018983 06:A973: A2 05     LDX #$05
C - - - - - 0x018985 06:A975: AD 00 03  LDA ram_0300
C - - - - - 0x018988 06:A978: C9 1F     CMP #$1F
C - - - - - 0x01898A 06:A97A: F0 02     BEQ $A97E
C - - - - - 0x01898C 06:A97C: A2 03     LDX #$03
C - - - - - 0x01898E 06:A97E: 86 1A     STX ram_001A
C - - - - - 0x018990 06:A980: A6 1A     LDX ram_001A
C - - - - - 0x018992 06:A982: 20 CB A9  JSR $A9CB
C - - - - - 0x018995 06:A985: BD 20 03  LDA ram_0320,X
C - - - - - 0x018998 06:A988: C9 E0     CMP #$E0
C - - - - - 0x01899A 06:A98A: B0 2E     BCS $A9BA
C - - - - - 0x01899C 06:A98C: C9 C0     CMP #$C0
C - - - - - 0x01899E 06:A98E: 90 2A     BCC $A9BA
C - - - - - 0x0189A0 06:A990: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0189A3 06:A993: 85 AD     STA ram_00AD
C - - - - - 0x0189A5 06:A995: BD 32 03  LDA ram_0332,X
C - - - - - 0x0189A8 06:A998: 85 AE     STA ram_00AE
C - - - - - 0x0189AA 06:A99A: AD 00 03  LDA ram_0300
C - - - - - 0x0189AD 06:A99D: C9 37     CMP #$37
C - - - - - 0x0189AF 06:A99F: F0 06     BEQ $A9A7
C - - - - - 0x0189B1 06:A9A1: A9 01     LDA #$01
C - - - - - 0x0189B3 06:A9A3: A0 02     LDY #$02
C - - - - - 0x0189B5 06:A9A5: D0 04     BNE $A9AB
C - - - - - 0x0189B7 06:A9A7: A9 08     LDA #$08
C - - - - - 0x0189B9 06:A9A9: A0 06     LDY #$06
C - - - - - 0x0189BB 06:A9AB: 85 AF     STA ram_00AF
C - - - - - 0x0189BD 06:A9AD: 84 B0     STY ram_00B0
C - - - - - 0x0189BF 06:A9AF: 20 62 D5  JSR $D562
C - - - - - 0x0189C2 06:A9B2: 90 06     BCC $A9BA
C - - - - - 0x0189C4 06:A9B4: 20 57 B8  JSR $B857
C - - - - - 0x0189C7 06:A9B7: 20 C3 A9  JSR $A9C3
C - - - - - 0x0189CA 06:A9BA: C6 1A     DEC ram_001A
C - - - - - 0x0189CC 06:A9BC: A6 1A     LDX ram_001A
C - - - - - 0x0189CE 06:A9BE: E0 01     CPX #$01
C - - - - - 0x0189D0 06:A9C0: D0 BE     BNE $A980
C - - - - - 0x0189D2 06:A9C2: 60        RTS
C D 1 - - - 0x0189D3 06:A9C3: A6 1A     LDX ram_001A
C - - - - - 0x0189D5 06:A9C5: A9 00     LDA #$00
C - - - - - 0x0189D7 06:A9C7: 9D 20 03  STA ram_0320,X
C - - - - - 0x0189DA 06:A9CA: 60        RTS
C - - - - - 0x0189DB 06:A9CB: BD 20 03  LDA ram_0320,X
C - - - - - 0x0189DE 06:A9CE: 10 F2     BPL $A9C2
C - - - - - 0x0189E0 06:A9D0: 4A        LSR
C - - - - - 0x0189E1 06:A9D1: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x0189E4 06:A9D4: 0C        .byte $0C   ; 
- D 1 - I - 0x0189E5 06:A9D5: AB        .byte $AB   ; 
- D 1 - I - 0x0189E6 06:A9D6: 44        .byte $44   ; <D>
- D 1 - I - 0x0189E7 06:A9D7: AA        .byte $AA   ; 
- D 1 - I - 0x0189E8 06:A9D8: AB        .byte $AB   ; 
- D 1 - I - 0x0189E9 06:A9D9: AB        .byte $AB   ; 
- - - - - - 0x0189EA 06:A9DA: 44        .byte $44   ; <D>
- - - - - - 0x0189EB 06:A9DB: AA        .byte $AA   ; 
- - - - - - 0x0189EC 06:A9DC: 88        .byte $88   ; 
- - - - - - 0x0189ED 06:A9DD: AA        .byte $AA   ; 
- D 1 - I - 0x0189EE 06:A9DE: 44        .byte $44   ; <D>
- D 1 - I - 0x0189EF 06:A9DF: AA        .byte $AA   ; 
- D 1 - I - 0x0189F0 06:A9E0: 44        .byte $44   ; <D>
- D 1 - I - 0x0189F1 06:A9E1: AA        .byte $AA   ; 
C - - - - - 0x0189F2 06:A9E2: 20 FD A9  JSR $A9FD
C - - - - - 0x0189F5 06:A9E5: 4C 2B AA  JMP $AA2B
C - - - - - 0x0189F8 06:A9E8: 20 12 AA  JSR $AA12
C - - - - - 0x0189FB 06:A9EB: BD 38 03  LDA ram_0338,X
C - - - - - 0x0189FE 06:A9EE: 38        SEC
C - - - - - 0x0189FF 06:A9EF: E5 00     SBC ram_0000
C - - - - - 0x018A01 06:A9F1: 9D 38 03  STA ram_0338,X
C - - - - - 0x018A04 06:A9F4: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018A07 06:A9F7: E9 00     SBC #$00
C - - - - - 0x018A09 06:A9F9: 9D 3E 03  STA ram_033E,X
C - - - - - 0x018A0C 06:A9FC: 60        RTS
C - - - - - 0x018A0D 06:A9FD: 20 12 AA  JSR $AA12
C - - - - - 0x018A10 06:AA00: BD 38 03  LDA ram_0338,X
C - - - - - 0x018A13 06:AA03: 18        CLC
C - - - - - 0x018A14 06:AA04: 65 00     ADC ram_0000
C - - - - - 0x018A16 06:AA06: 9D 38 03  STA ram_0338,X
C - - - - - 0x018A19 06:AA09: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018A1C 06:AA0C: 69 00     ADC #$00
C - - - - - 0x018A1E 06:AA0E: 9D 3E 03  STA ram_033E,X
C - - - - - 0x018A21 06:AA11: 60        RTS
C - - - - - 0x018A22 06:AA12: BD 26 03  LDA ram_0326,X
C - - - - - 0x018A25 06:AA15: 4A        LSR
C - - - - - 0x018A26 06:AA16: 85 00     STA ram_0000
C - - - - - 0x018A28 06:AA18: 90 07     BCC $AA21
C - - - - - 0x018A2A 06:AA1A: A5 2C     LDA ram_002C
C - - - - - 0x018A2C 06:AA1C: 6A        ROR
C - - - - - 0x018A2D 06:AA1D: 90 02     BCC $AA21
C - - - - - 0x018A2F 06:AA1F: E6 00     INC ram_0000
C - - - - - 0x018A31 06:AA21: 60        RTS
C - - - - - 0x018A32 06:AA22: BD 20 03  LDA ram_0320,X
C - - - - - 0x018A35 06:AA25: 6A        ROR
C - - - - - 0x018A36 06:AA26: 90 BA     BCC $A9E2
C - - - - - 0x018A38 06:AA28: 20 E8 A9  JSR $A9E8
C D 1 - - - 0x018A3B 06:AA2B: A0 10     LDY #$10
C - - - - - 0x018A3D 06:AA2D: AD 00 03  LDA ram_0300
C - - - - - 0x018A40 06:AA30: C9 19     CMP #$19
C - - - - - 0x018A42 06:AA32: F0 55     BEQ $AA89
C - - - - - 0x018A44 06:AA34: A0 1C     LDY #$1C
C - - - - - 0x018A46 06:AA36: C9 35     CMP #$35
C - - - - - 0x018A48 06:AA38: F0 4F     BEQ $AA89
C - - - - - 0x018A4A 06:AA3A: A0 24     LDY #$24
C - - - - - 0x018A4C 06:AA3C: C9 38     CMP #$38
C - - - - - 0x018A4E 06:AA3E: F0 49     BEQ $AA89
C - - - - - 0x018A50 06:AA40: A0 00     LDY #$00
C - - - - - 0x018A52 06:AA42: 4C 89 AA  JMP $AA89
C - - - - - 0x018A55 06:AA45: BD 44 03  LDA ram_0344,X
C - - - - - 0x018A58 06:AA48: F0 29     BEQ $AA73
C - - - - - 0x018A5A 06:AA4A: BD 20 03  LDA ram_0320,X
C - - - - - 0x018A5D 06:AA4D: 29 04     AND #$04
C - - - - - 0x018A5F 06:AA4F: F0 08     BEQ $AA59
C - - - - - 0x018A61 06:AA51: DE 4A 03  DEC ram_034A,X
C - - - - - 0x018A64 06:AA54: D0 03     BNE $AA59
C - - - - - 0x018A66 06:AA56: 4C C3 A9  JMP $A9C3
C - - - - - 0x018A69 06:AA59: AD 00 03  LDA ram_0300
C - - - - - 0x018A6C 06:AA5C: C9 01     CMP #$01
C - - - - - 0x018A6E 06:AA5E: F0 C2     BEQ $AA22
C - - - - - 0x018A70 06:AA60: C9 19     CMP #$19
C - - - - - 0x018A72 06:AA62: F0 BE     BEQ $AA22
C - - - - - 0x018A74 06:AA64: C9 35     CMP #$35
C - - - - - 0x018A76 06:AA66: F0 BA     BEQ $AA22
C - - - - - 0x018A78 06:AA68: C9 1F     CMP #$1F
C - - - - - 0x018A7A 06:AA6A: F0 B6     BEQ $AA22
C - - - - - 0x018A7C 06:AA6C: C9 38     CMP #$38
C - - - - - 0x018A7E 06:AA6E: F0 B2     BEQ $AA22
C - - - - - 0x018A80 06:AA70: 4C F2 AA  JMP $AAF2
C - - - - - 0x018A83 06:AA73: DE 44 03  DEC ram_0344,X
C - - - - - 0x018A86 06:AA76: A0 04     LDY #$04
C - - - - - 0x018A88 06:AA78: AD 00 03  LDA ram_0300
C - - - - - 0x018A8B 06:AA7B: C9 01     CMP #$01
C - - - - - 0x018A8D 06:AA7D: F0 0A     BEQ $AA89
C - - - - - 0x018A8F 06:AA7F: C9 19     CMP #$19
C - - - - - 0x018A91 06:AA81: F0 06     BEQ $AA89
C - - - - - 0x018A93 06:AA83: C9 1F     CMP #$1F
C - - - - - 0x018A95 06:AA85: F0 02     BEQ $AA89
C - - - - - 0x018A97 06:AA87: A0 14     LDY #$14
C D 1 - - - 0x018A99 06:AA89: BD 38 03  LDA ram_0338,X
C - - - - - 0x018A9C 06:AA8C: 85 00     STA ram_0000
C - - - - - 0x018A9E 06:AA8E: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018AA1 06:AA91: 85 01     STA ram_0001
C - - - - - 0x018AA3 06:AA93: AD 00 03  LDA ram_0300
C - - - - - 0x018AA6 06:AA96: C9 37     CMP #$37
C - - - - - 0x018AA8 06:AA98: D0 08     BNE $AAA2
C - - - - - 0x018AAA 06:AA9A: 20 7B D6  JSR $D67B
C - - - - - 0x018AAD 06:AA9D: 90 03     BCC $AAA2
C - - - - - 0x018AAF 06:AA9F: 4C C3 A9  JMP $A9C3
C - - - - - 0x018AB2 06:AAA2: 20 AC D6  JSR $D6AC
C - - - - - 0x018AB5 06:AAA5: 90 03     BCC $AAAA
C - - - - - 0x018AB7 06:AAA7: 4C 41 D7  JMP $D741
C - - - - - 0x018ABA 06:AAAA: 20 25 D7  JSR $D725
C - - - - - 0x018ABD 06:AAAD: AD 00 03  LDA ram_0300
C - - - - - 0x018AC0 06:AAB0: C9 37     CMP #$37
C - - - - - 0x018AC2 06:AAB2: F0 34     BEQ $AAE8
C - - - - - 0x018AC4 06:AAB4: C9 07     CMP #$07
C - - - - - 0x018AC6 06:AAB6: D0 0A     BNE $AAC2
C - - - - - 0x018AC8 06:AAB8: A0 20     LDY #$20
C - - - - - 0x018ACA 06:AABA: A5 2C     LDA ram_002C
C - - - - - 0x018ACC 06:AABC: 29 08     AND #$08
C - - - - - 0x018ACE 06:AABE: D0 02     BNE $AAC2
C - - - - - 0x018AD0 06:AAC0: A0 22     LDY #$22
C - - - - - 0x018AD2 06:AAC2: 98        TYA
C - - - - - 0x018AD3 06:AAC3: 18        CLC
C - - - - - 0x018AD4 06:AAC4: 69 A8     ADC #$A8
C - - - - - 0x018AD6 06:AAC6: 85 01     STA ram_0001
C - - - - - 0x018AD8 06:AAC8: A9 40     LDA #$40
C - - - - - 0x018ADA 06:AACA: C0 14     CPY #$14
C - - - - - 0x018ADC 06:AACC: 90 15     BCC $AAE3
C - - - - - 0x018ADE 06:AACE: AC 00 03  LDY ram_0300
C - - - - - 0x018AE1 06:AAD1: C0 07     CPY #$07
C - - - - - 0x018AE3 06:AAD3: F0 0E     BEQ $AAE3
C - - - - - 0x018AE5 06:AAD5: C0 14     CPY #$14
C - - - - - 0x018AE7 06:AAD7: F0 0A     BEQ $AAE3
C - - - - - 0x018AE9 06:AAD9: C0 35     CPY #$35
C - - - - - 0x018AEB 06:AADB: F0 06     BEQ $AAE3
C - - - - - 0x018AED 06:AADD: C0 38     CPY #$38
C - - - - - 0x018AEF 06:AADF: F0 02     BEQ $AAE3
- - - - - - 0x018AF1 06:AAE1: A9        .byte $A9   ; 
- - - - - - 0x018AF2 06:AAE2: 44        .byte $44   ; <D>
C - - - - - 0x018AF3 06:AAE3: 85 02     STA ram_0002
C - - - - - 0x018AF5 06:AAE5: 4C 33 CE  JMP $CE33
C - - - - - 0x018AF8 06:AAE8: 98        TYA
C - - - - - 0x018AF9 06:AAE9: 18        CLC
C - - - - - 0x018AFA 06:AAEA: 69 AC     ADC #$AC
C - - - - - 0x018AFC 06:AAEC: 85 01     STA ram_0001
C - - - - - 0x018AFE 06:AAEE: A9 80     LDA #$80
C - - - - - 0x018B00 06:AAF0: D0 F1     BNE $AAE3
C D 1 - - - 0x018B02 06:AAF2: A9 0C     LDA #$0C
C - - - - - 0x018B04 06:AAF4: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018B07 06:AAF7: 20 64 D0  JSR $D064
C - - - - - 0x018B0A 06:AAFA: 29 03     AND #$03
C - - - - - 0x018B0C 06:AAFC: A8        TAY
C - - - - - 0x018B0D 06:AAFD: B9 69 A7  LDA $A769,Y
C - - - - - 0x018B10 06:AB00: 9D 26 03  STA ram_0326,X
C - - - - - 0x018B13 06:AB03: BD 20 03  LDA ram_0320,X
C - - - - - 0x018B16 06:AB06: 29 C1     AND #$C1
C - - - - - 0x018B18 06:AB08: 09 02     ORA #$02
C - - - - - 0x018B1A 06:AB0A: 9D 20 03  STA ram_0320,X
C - - - - - 0x018B1D 06:AB0D: AD 00 03  LDA ram_0300
C - - - - - 0x018B20 06:AB10: C9 08     CMP #$08
C - - - - - 0x018B22 06:AB12: F0 08     BEQ $AB1C
C - - - - - 0x018B24 06:AB14: C9 14     CMP #$14
C - - - - - 0x018B26 06:AB16: F0 04     BEQ $AB1C
C - - - - - 0x018B28 06:AB18: C9 20     CMP #$20
C - - - - - 0x018B2A 06:AB1A: D0 06     BNE $AB22
C - - - - - 0x018B2C 06:AB1C: A5 2C     LDA ram_002C
C - - - - - 0x018B2E 06:AB1E: 29 03     AND #$03
C - - - - - 0x018B30 06:AB20: F0 33     BEQ $AB55
C - - - - - 0x018B32 06:AB22: BD 20 03  LDA ram_0320,X
C - - - - - 0x018B35 06:AB25: 6A        ROR
C - - - - - 0x018B36 06:AB26: 90 06     BCC $AB2E
C - - - - - 0x018B38 06:AB28: 20 E8 A9  JSR $A9E8
C - - - - - 0x018B3B 06:AB2B: 4C 31 AB  JMP $AB31
C - - - - - 0x018B3E 06:AB2E: 20 FD A9  JSR $A9FD
C D 1 - - - 0x018B41 06:AB31: BC 4A 03  LDY ram_034A,X
C - - - - - 0x018B44 06:AB34: B9 5D E3  LDA $E35D,Y
C - - - - - 0x018B47 06:AB37: 18        CLC
C - - - - - 0x018B48 06:AB38: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x018B4B 06:AB3B: C9 F8     CMP #$F8
C - - - - - 0x018B4D 06:AB3D: 90 02     BCC $AB41
- - - - - - 0x018B4F 06:AB3F: A9        .byte $A9   ; 
- - - - - - 0x018B50 06:AB40: 00        .byte $00   ; 
C - - - - - 0x018B51 06:AB41: 9D 2C 03  STA ram_032C,X
C - - - - - 0x018B54 06:AB44: BD 4A 03  LDA ram_034A,X
C - - - - - 0x018B57 06:AB47: C9 18     CMP #$18
C - - - - - 0x018B59 06:AB49: 90 0A     BCC $AB55
C - - - - - 0x018B5B 06:AB4B: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018B5E 06:AB4E: C9 DF     CMP #$DF
C - - - - - 0x018B60 06:AB50: 90 03     BCC $AB55
C - - - - - 0x018B62 06:AB52: 4C C3 A9  JMP $A9C3
C - - - - - 0x018B65 06:AB55: AD 00 03  LDA ram_0300
C - - - - - 0x018B68 06:AB58: C9 08     CMP #$08
C - - - - - 0x018B6A 06:AB5A: F0 08     BEQ $AB64
C - - - - - 0x018B6C 06:AB5C: C9 14     CMP #$14
C - - - - - 0x018B6E 06:AB5E: F0 04     BEQ $AB64
C - - - - - 0x018B70 06:AB60: C9 20     CMP #$20
C - - - - - 0x018B72 06:AB62: D0 06     BNE $AB6A
C - - - - - 0x018B74 06:AB64: A5 2C     LDA ram_002C
C - - - - - 0x018B76 06:AB66: 29 03     AND #$03
C - - - - - 0x018B78 06:AB68: F0 0D     BEQ $AB77
C - - - - - 0x018B7A 06:AB6A: FE 4A 03  INC ram_034A,X
C - - - - - 0x018B7D 06:AB6D: A9 2F     LDA #$2F
C - - - - - 0x018B7F 06:AB6F: DD 4A 03  CMP ram_034A,X
C - - - - - 0x018B82 06:AB72: B0 03     BCS $AB77
C - - - - - 0x018B84 06:AB74: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018B87 06:AB77: A0 0C     LDY #$0C
C - - - - - 0x018B89 06:AB79: 4C 89 AA  JMP $AA89
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
C - - - - - 0x018BBC 06:ABAC: BD 26 03  LDA ram_0326,X
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
C - - - - - 0x018BCE 06:ABBE: 20 1A AC  JSR $AC1A
C - - - - - 0x018BD1 06:ABC1: 20 DB AB  JSR $ABDB
C - - - - - 0x018BD4 06:ABC4: A5 2C     LDA ram_002C
C - - - - - 0x018BD6 06:ABC6: 29 03     AND #$03
C - - - - - 0x018BD8 06:ABC8: D0 03     BNE $ABCD
C - - - - - 0x018BDA 06:ABCA: FE 44 03  INC ram_0344,X
C - - - - - 0x018BDD 06:ABCD: BD 44 03  LDA ram_0344,X
C - - - - - 0x018BE0 06:ABD0: 29 03     AND #$03
C - - - - - 0x018BE2 06:ABD2: 0A        ASL
C - - - - - 0x018BE3 06:ABD3: 0A        ASL
C - - - - - 0x018BE4 06:ABD4: 18        CLC
C - - - - - 0x018BE5 06:ABD5: 69 18     ADC #$18
C - - - - - 0x018BE7 06:ABD7: A8        TAY
C - - - - - 0x018BE8 06:ABD8: 4C 89 AA  JMP $AA89
C - - - - - 0x018BEB 06:ABDB: BC 56 03  LDY ram_0356,X
C - - - - - 0x018BEE 06:ABDE: B1 00     LDA (ram_0000),Y
C - - - - - 0x018BF0 06:ABE0: 85 0A     STA ram_000A
C - - - - - 0x018BF2 06:ABE2: BD 20 03  LDA ram_0320,X
C - - - - - 0x018BF5 06:ABE5: 6A        ROR
C - - - - - 0x018BF6 06:ABE6: 90 09     BCC $ABF1
C - - - - - 0x018BF8 06:ABE8: A9 10     LDA #$10
C - - - - - 0x018BFA 06:ABEA: 38        SEC
C - - - - - 0x018BFB 06:ABEB: E5 0A     SBC ram_000A
C - - - - - 0x018BFD 06:ABED: 29 0F     AND #$0F
C - - - - - 0x018BFF 06:ABEF: 85 0A     STA ram_000A
C - - - - - 0x018C01 06:ABF1: A5 0A     LDA ram_000A
C - - - - - 0x018C03 06:ABF3: 0A        ASL
C - - - - - 0x018C04 06:ABF4: A8        TAY
C - - - - - 0x018C05 06:ABF5: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018C08 06:ABF8: 18        CLC
C - - - - - 0x018C09 06:ABF9: 79 D4 DA  ADC $DAD4,Y
C - - - - - 0x018C0C 06:ABFC: 9D 2C 03  STA ram_032C,X
C - - - - - 0x018C0F 06:ABFF: A9 00     LDA #$00
C - - - - - 0x018C11 06:AC01: 85 02     STA ram_0002
C - - - - - 0x018C13 06:AC03: B9 D5 DA  LDA $DAD5,Y
C - - - - - 0x018C16 06:AC06: 10 02     BPL $AC0A
C - - - - - 0x018C18 06:AC08: C6 02     DEC ram_0002
C - - - - - 0x018C1A 06:AC0A: 18        CLC
C - - - - - 0x018C1B 06:AC0B: 7D 38 03  ADC ram_0338,X
C - - - - - 0x018C1E 06:AC0E: 9D 38 03  STA ram_0338,X
C - - - - - 0x018C21 06:AC11: BD 3E 03  LDA ram_033E,X
C - - - - - 0x018C24 06:AC14: 65 02     ADC ram_0002
C - - - - - 0x018C26 06:AC16: 9D 3E 03  STA ram_033E,X
C - - - - - 0x018C29 06:AC19: 60        RTS
C - - - - - 0x018C2A 06:AC1A: DE 4A 03  DEC ram_034A,X
C - - - - - 0x018C2D 06:AC1D: D0 1B     BNE $AC3A
C - - - - - 0x018C2F 06:AC1F: FE 56 03  INC ram_0356,X
C - - - - - 0x018C32 06:AC22: BD 56 03  LDA ram_0356,X
C - - - - - 0x018C35 06:AC25: C9 08     CMP #$08
C - - - - - 0x018C37 06:AC27: D0 03     BNE $AC2C
C - - - - - 0x018C39 06:AC29: 4C C3 A9  JMP $A9C3
C - - - - - 0x018C3C 06:AC2C: 29 07     AND #$07
C - - - - - 0x018C3E 06:AC2E: 9D 56 03  STA ram_0356,X
C - - - - - 0x018C41 06:AC31: 18        CLC
C - - - - - 0x018C42 06:AC32: 69 08     ADC #$08
C - - - - - 0x018C44 06:AC34: A8        TAY
C - - - - - 0x018C45 06:AC35: B1 00     LDA (ram_0000),Y
C - - - - - 0x018C47 06:AC37: 9D 4A 03  STA ram_034A,X
C - - - - - 0x018C4A 06:AC3A: 60        RTS
C D 1 - - - 0x018C4B 06:AC3B: 20 80 AC  JSR $AC80
C - - - - - 0x018C4E 06:AC3E: 24 D1     BIT ram_00D1
C - - - - - 0x018C50 06:AC40: 50 33     BVC $AC75
C - - - - - 0x018C52 06:AC42: A5 2C     LDA ram_002C
C - - - - - 0x018C54 06:AC44: 29 03     AND #$03
C - - - - - 0x018C56 06:AC46: A8        TAY
C - - - - - 0x018C57 06:AC47: B9 5E 03  LDA ram_035E,Y
C - - - - - 0x018C5A 06:AC4A: 30 29     BMI $AC75
C - - - - - 0x018C5C 06:AC4C: A9 29     LDA #$29
C - - - - - 0x018C5E 06:AC4E: 20 20 C4  JSR $C420
C - - - - - 0x018C61 06:AC51: A9 C2     LDA #$C2
C - - - - - 0x018C63 06:AC53: 99 5E 03  STA ram_035E,Y
C - - - - - 0x018C66 06:AC56: 20 64 D0  JSR $D064
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
C - - - - - 0x018C85 06:AC75: AD 01 03  LDA ram_0301
C - - - - - 0x018C88 06:AC78: F0 03     BEQ $AC7D
C - - - - - 0x018C8A 06:AC7A: 4C 00 AD  JMP $AD00
C - - - - - 0x018C8D 06:AC7D: 4C 51 AD  JMP $AD51
C - - - - - 0x018C90 06:AC80: A2 01     LDX #$01
C - - - - - 0x018C92 06:AC82: 86 1A     STX ram_001A
C - - - - - 0x018C94 06:AC84: A6 1A     LDX ram_001A
C - - - - - 0x018C96 06:AC86: 20 98 AC  JSR $AC98
C - - - - - 0x018C99 06:AC89: C6 1A     DEC ram_001A
C - - - - - 0x018C9B 06:AC8B: 10 F7     BPL $AC84
C - - - - - 0x018C9D 06:AC8D: 60        RTS
C - - - - - 0x018C9E 06:AC8E: A6 1A     LDX ram_001A
C - - - - - 0x018CA0 06:AC90: A9 00     LDA #$00
C - - - - - 0x018CA2 06:AC92: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018CA5 06:AC95: 4C 83 D8  JMP $D883
C - - - - - 0x018CA8 06:AC98: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018CAB 06:AC9B: 10 F0     BPL $AC8D
C - - - - - 0x018CAD 06:AC9D: BD 74 03  LDA ram_0374,X
C - - - - - 0x018CB0 06:ACA0: 85 00     STA ram_0000
C - - - - - 0x018CB2 06:ACA2: BD 7A 03  LDA ram_037A,X
C - - - - - 0x018CB5 06:ACA5: 85 01     STA ram_0001
C - - - - - 0x018CB7 06:ACA7: 20 7B D6  JSR $D67B
C - - - - - 0x018CBA 06:ACAA: B0 E2     BCS $AC8E
C - - - - - 0x018CBC 06:ACAC: 20 AC D6  JSR $D6AC
C - - - - - 0x018CBF 06:ACAF: B0 DD     BCS $AC8E
C - - - - - 0x018CC1 06:ACB1: BD 68 03  LDA ram_0368,X
C - - - - - 0x018CC4 06:ACB4: 85 00     STA ram_0000
C - - - - - 0x018CC6 06:ACB6: A5 03     LDA ram_0003
C - - - - - 0x018CC8 06:ACB8: 9D 6E 03  STA ram_036E,X
C - - - - - 0x018CCB 06:ACBB: 24 D1     BIT ram_00D1
C - - - - - 0x018CCD 06:ACBD: 10 0B     BPL $ACCA
C - - - - - 0x018CCF 06:ACBF: A9 6E     LDA #$6E
C - - - - - 0x018CD1 06:ACC1: 85 01     STA ram_0001
C - - - - - 0x018CD3 06:ACC3: A9 44     LDA #$44
C - - - - - 0x018CD5 06:ACC5: 85 02     STA ram_0002
C - - - - - 0x018CD7 06:ACC7: 20 33 CE  JSR $CE33
C - - - - - 0x018CDA 06:ACCA: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018CDD 06:ACCD: 10 30     BPL $ACFF
C - - - - - 0x018CDF 06:ACCF: 24 D1     BIT ram_00D1
C - - - - - 0x018CE1 06:ACD1: 70 2C     BVS $ACFF
C - - - - - 0x018CE3 06:ACD3: BD 68 03  LDA ram_0368,X
C - - - - - 0x018CE6 06:ACD6: 85 AD     STA ram_00AD
C - - - - - 0x018CE8 06:ACD8: BD 6E 03  LDA ram_036E,X
C - - - - - 0x018CEB 06:ACDB: 85 AE     STA ram_00AE
C - - - - - 0x018CED 06:ACDD: A9 08     LDA #$08
C - - - - - 0x018CEF 06:ACDF: 85 AF     STA ram_00AF
C - - - - - 0x018CF1 06:ACE1: A9 04     LDA #$04
C - - - - - 0x018CF3 06:ACE3: 85 B0     STA ram_00B0
C - - - - - 0x018CF5 06:ACE5: 20 42 D6  JSR $D642
C - - - - - 0x018CF8 06:ACE8: 90 15     BCC $ACFF
C - - - - - 0x018CFA 06:ACEA: A0 03     LDY #$03
C - - - - - 0x018CFC 06:ACEC: A9 00     LDA #$00
C - - - - - 0x018CFE 06:ACEE: 99 5E 03  STA ram_035E,Y
C - - - - - 0x018D01 06:ACF1: 88        DEY
C - - - - - 0x018D02 06:ACF2: 10 FA     BPL $ACEE
C - - - - - 0x018D04 06:ACF4: A9 02     LDA #$02
C - - - - - 0x018D06 06:ACF6: 8D 18 02  STA ram_0218
C - - - - - 0x018D09 06:ACF9: A5 D1     LDA ram_00D1
C - - - - - 0x018D0B 06:ACFB: 09 40     ORA #$40
C - - - - - 0x018D0D 06:ACFD: 85 D1     STA ram_00D1
C - - - - - 0x018D0F 06:ACFF: 60        RTS
C D 1 - - - 0x018D10 06:AD00: A2 03     LDX #$03
C - - - - - 0x018D12 06:AD02: 86 1A     STX ram_001A
C - - - - - 0x018D14 06:AD04: A6 1A     LDX ram_001A
C - - - - - 0x018D16 06:AD06: 20 77 AD  JSR $AD77
C - - - - - 0x018D19 06:AD09: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018D1C 06:AD0C: C9 E0     CMP #$E0
C - - - - - 0x018D1E 06:AD0E: B0 33     BCS $AD43
C - - - - - 0x018D20 06:AD10: C9 C0     CMP #$C0
C - - - - - 0x018D22 06:AD12: 90 2F     BCC $AD43
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
C - - - - - 0x018D39 06:AD29: AD 14 02  LDA ram_0214
C - - - - - 0x018D3C 06:AD2C: C9 49     CMP #$49
C - - - - - 0x018D3E 06:AD2E: D0 0B     BNE $AD3B
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
C - - - - - 0x018D4B 06:AD3B: 20 62 D5  JSR $D562
C - - - - - 0x018D4E 06:AD3E: 90 03     BCC $AD43
C - - - - - 0x018D50 06:AD40: 20 6F AD  JSR $AD6F
C - - - - - 0x018D53 06:AD43: C6 1A     DEC ram_001A
C - - - - - 0x018D55 06:AD45: 10 BD     BPL $AD04
C - - - - - 0x018D57 06:AD47: AD 18 02  LDA ram_0218
C - - - - - 0x018D5A 06:AD4A: D0 0C     BNE $AD58
C - - - - - 0x018D5C 06:AD4C: AD 17 02  LDA ram_0217
C - - - - - 0x018D5F 06:AD4F: D0 07     BNE $AD58
C D 1 - - - 0x018D61 06:AD51: A5 D1     LDA ram_00D1
C - - - - - 0x018D63 06:AD53: 29 BF     AND #$BF
C - - - - - 0x018D65 06:AD55: 85 D1     STA ram_00D1
C - - - - - 0x018D67 06:AD57: 60        RTS
C - - - - - 0x018D68 06:AD58: A0 02     LDY #$02
C - - - - - 0x018D6A 06:AD5A: 4C AC CD  JMP $CDAC
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
C D 1 - - - 0x018D7F 06:AD6F: A6 1A     LDX ram_001A
C - - - - - 0x018D81 06:AD71: A9 00     LDA #$00
C - - - - - 0x018D83 06:AD73: 9D 5E 03  STA ram_035E,X
C - - - - - 0x018D86 06:AD76: 60        RTS
C - - - - - 0x018D87 06:AD77: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018D8A 06:AD7A: 10 FA     BPL $AD76
C - - - - - 0x018D8C 06:AD7C: 4A        LSR
C - - - - - 0x018D8D 06:AD7D: 4A        LSR
C - - - - - 0x018D8E 06:AD7E: 90 03     BCC $AD83
C - - - - - 0x018D90 06:AD80: 4C B3 AD  JMP $ADB3
C D 1 - - - 0x018D93 06:AD83: BD 76 03  LDA ram_0376,X
C - - - - - 0x018D96 06:AD86: 85 00     STA ram_0000
C - - - - - 0x018D98 06:AD88: BD 7C 03  LDA ram_037C,X
C - - - - - 0x018D9B 06:AD8B: 85 01     STA ram_0001
C - - - - - 0x018D9D 06:AD8D: 20 AC D6  JSR $D6AC
C - - - - - 0x018DA0 06:AD90: B0 DD     BCS $AD6F
C - - - - - 0x018DA2 06:AD92: BD 6A 03  LDA ram_036A,X
C - - - - - 0x018DA5 06:AD95: 85 00     STA ram_0000
C - - - - - 0x018DA7 06:AD97: A5 03     LDA ram_0003
C - - - - - 0x018DA9 06:AD99: 9D 70 03  STA ram_0370,X
C - - - - - 0x018DAC 06:AD9C: BD 5E 03  LDA ram_035E,X
C - - - - - 0x018DAF 06:AD9F: 29 20     AND #$20
C - - - - - 0x018DB1 06:ADA1: F0 03     BEQ $ADA6
- - - - - - 0x018DB3 06:ADA3: 4C        .byte $4C   ; <L>
- - - - - - 0x018DB4 06:ADA4: FB        .byte $FB   ; 
- - - - - - 0x018DB5 06:ADA5: AD        .byte $AD   ; 
C - - - - - 0x018DB6 06:ADA6: 98        TYA
C - - - - - 0x018DB7 06:ADA7: 18        CLC
C - - - - - 0x018DB8 06:ADA8: 69 98     ADC #$98
C - - - - - 0x018DBA 06:ADAA: 85 01     STA ram_0001
C - - - - - 0x018DBC 06:ADAC: A9 47     LDA #$47
C - - - - - 0x018DBE 06:ADAE: 85 02     STA ram_0002
C - - - - - 0x018DC0 06:ADB0: 4C 33 CE  JMP $CE33
C D 1 - - - 0x018DC3 06:ADB3: BC 88 03  LDY ram_0388,X
C - - - - - 0x018DC6 06:ADB6: B9 5D E3  LDA $E35D,Y
C - - - - - 0x018DC9 06:ADB9: 18        CLC
C - - - - - 0x018DCA 06:ADBA: 7D 6A 03  ADC ram_036A,X
C - - - - - 0x018DCD 06:ADBD: 9D 6A 03  STA ram_036A,X
C - - - - - 0x018DD0 06:ADC0: C9 DF     CMP #$DF
C - - - - - 0x018DD2 06:ADC2: 90 03     BCC $ADC7
C - - - - - 0x018DD4 06:ADC4: 4C 6F AD  JMP $AD6F
C - - - - - 0x018DD7 06:ADC7: FE 88 03  INC ram_0388,X
C - - - - - 0x018DDA 06:ADCA: A9 1F     LDA #$1F
C - - - - - 0x018DDC 06:ADCC: DD 88 03  CMP ram_0388,X
C - - - - - 0x018DDF 06:ADCF: B0 03     BCS $ADD4
C - - - - - 0x018DE1 06:ADD1: 9D 88 03  STA ram_0388,X
C - - - - - 0x018DE4 06:ADD4: A5 2C     LDA ram_002C
C - - - - - 0x018DE6 06:ADD6: 29 03     AND #$03
C - - - - - 0x018DE8 06:ADD8: D0 0F     BNE $ADE9
C - - - - - 0x018DEA 06:ADDA: FE 82 03  INC ram_0382,X
C - - - - - 0x018DED 06:ADDD: BD 82 03  LDA ram_0382,X
C - - - - - 0x018DF0 06:ADE0: C9 08     CMP #$08
C - - - - - 0x018DF2 06:ADE2: 90 05     BCC $ADE9
C - - - - - 0x018DF4 06:ADE4: A9 00     LDA #$00
C - - - - - 0x018DF6 06:ADE6: 9D 82 03  STA ram_0382,X
C - - - - - 0x018DF9 06:ADE9: BC 82 03  LDY ram_0382,X
C - - - - - 0x018DFC 06:ADEC: B9 F3 AD  LDA $ADF3,Y
C - - - - - 0x018DFF 06:ADEF: A8        TAY
C - - - - - 0x018E00 06:ADF0: 4C 83 AD  JMP $AD83
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
C D 1 - - - 0x018E19 06:AE09: A2 01     LDX #$01
C - - - - - 0x018E1B 06:AE0B: 86 1A     STX ram_001A
C - - - - - 0x018E1D 06:AE0D: A6 1A     LDX ram_001A
C - - - - - 0x018E1F 06:AE0F: 20 58 AE  JSR $AE58
C - - - - - 0x018E22 06:AE12: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018E25 06:AE15: C9 E0     CMP #$E0
C - - - - - 0x018E27 06:AE17: B0 23     BCS $AE3C
C - - - - - 0x018E29 06:AE19: C9 C0     CMP #$C0
C - - - - - 0x018E2B 06:AE1B: 90 1F     BCC $AE3C
C - - - - - 0x018E2D 06:AE1D: BD 68 03  LDA ram_0368,X
C - - - - - 0x018E30 06:AE20: 85 AD     STA ram_00AD
C - - - - - 0x018E32 06:AE22: BD 6E 03  LDA ram_036E,X
C - - - - - 0x018E35 06:AE25: 85 AE     STA ram_00AE
C - - - - - 0x018E37 06:AE27: A9 20     LDA #$20
C - - - - - 0x018E39 06:AE29: 85 AF     STA ram_00AF
C - - - - - 0x018E3B 06:AE2B: A9 06     LDA #$06
C - - - - - 0x018E3D 06:AE2D: 85 B0     STA ram_00B0
C - - - - - 0x018E3F 06:AE2F: A6 7A     LDX ram_007A
C - - - - - 0x018E41 06:AE31: 20 B6 D5  JSR $D5B6
C - - - - - 0x018E44 06:AE34: B0 0B     BCS $AE41
C - - - - - 0x018E46 06:AE36: CA        DEX
C - - - - - 0x018E47 06:AE37: 10 F8     BPL $AE31
C - - - - - 0x018E49 06:AE39: 20 62 D5  JSR $D562
C D 1 - - - 0x018E4C 06:AE3C: C6 1A     DEC ram_001A
C - - - - - 0x018E4E 06:AE3E: 10 CD     BPL $AE0D
C - - - - - 0x018E50 06:AE40: 60        RTS
C - - - - - 0x018E51 06:AE41: A9 00     LDA #$00
C - - - - - 0x018E53 06:AE43: 95 8F     STA ram_008F,X
C - - - - - 0x018E55 06:AE45: 20 4B AE  JSR $AE4B
C - - - - - 0x018E58 06:AE48: 4C 3C AE  JMP $AE3C
C - - - - - 0x018E5B 06:AE4B: A6 1A     LDX ram_001A
C - - - - - 0x018E5D 06:AE4D: A9 20     LDA #$20
C - - - - - 0x018E5F 06:AE4F: 20 7A AF  JSR $AF7A
C - - - - - 0x018E62 06:AE52: A9 40     LDA #$40
C - - - - - 0x018E64 06:AE54: 9D 86 03  STA ram_0386,X
C - - - - - 0x018E67 06:AE57: 60        RTS
C - - - - - 0x018E68 06:AE58: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018E6B 06:AE5B: 10 FA     BPL $AE57
C - - - - - 0x018E6D 06:AE5D: 4A        LSR
C - - - - - 0x018E6E 06:AE5E: 20 B8 D0  JSR $D0B8
- - - - - - 0x018E71 06:AE61: 6E        .byte $6E   ; <n>
- - - - - - 0x018E72 06:AE62: AE        .byte $AE   ; 
- - - - - - 0x018E73 06:AE63: 6E        .byte $6E   ; <n>
- - - - - - 0x018E74 06:AE64: AE        .byte $AE   ; 
- - - - - - 0x018E75 06:AE65: 6E        .byte $6E   ; <n>
- - - - - - 0x018E76 06:AE66: AE        .byte $AE   ; 
- - - - - - 0x018E77 06:AE67: 6E        .byte $6E   ; <n>
- - - - - - 0x018E78 06:AE68: AE        .byte $AE   ; 
- D 1 - I - 0x018E79 06:AE69: B4        .byte $B4   ; 
- D 1 - I - 0x018E7A 06:AE6A: AE        .byte $AE   ; 
- D 1 - I - 0x018E7B 06:AE6B: 6E        .byte $6E   ; <n>
- D 1 - I - 0x018E7C 06:AE6C: AE        .byte $AE   ; 
- D 1 - I - 0x018E7D 06:AE6D: 6E        .byte $6E   ; <n>
- D 1 - I - 0x018E7E 06:AE6E: AE        .byte $AE   ; 
C - - - - - 0x018E7F 06:AE6F: 20 C8 AE  JSR $AEC8
C - - - - - 0x018E82 06:AE72: F0 06     BEQ $AE7A
- - - - - - 0x018E84 06:AE74: 20        .byte $20   ; 
- - - - - - 0x018E85 06:AE75: 32        .byte $32   ; <2>
- - - - - - 0x018E86 06:AE76: AF        .byte $AF   ; 
- - - - - - 0x018E87 06:AE77: 4C        .byte $4C   ; <L>
- - - - - - 0x018E88 06:AE78: 82        .byte $82   ; 
- - - - - - 0x018E89 06:AE79: AE        .byte $AE   ; 
C - - - - - 0x018E8A 06:AE7A: A9 00     LDA #$00
C - - - - - 0x018E8C 06:AE7C: 20 7A AF  JSR $AF7A
C - - - - - 0x018E8F 06:AE7F: 20 68 AF  JSR $AF68
C - - - - - 0x018E92 06:AE82: 20 C4 D9  JSR $D9C4
C - - - - - 0x018E95 06:AE85: BD 80 03  LDA ram_0380,X
C - - - - - 0x018E98 06:AE88: 0A        ASL
C - - - - - 0x018E99 06:AE89: 0A        ASL
C - - - - - 0x018E9A 06:AE8A: A8        TAY
C - - - - - 0x018E9B 06:AE8B: BD 74 03  LDA ram_0374,X
C - - - - - 0x018E9E 06:AE8E: 85 00     STA ram_0000
C - - - - - 0x018EA0 06:AE90: BD 7A 03  LDA ram_037A,X
C - - - - - 0x018EA3 06:AE93: 85 01     STA ram_0001
C - - - - - 0x018EA5 06:AE95: 20 7B D6  JSR $D67B
C - - - - - 0x018EA8 06:AE98: 90 03     BCC $AE9D
C - - - - - 0x018EAA 06:AE9A: 4C 73 D8  JMP $D873
C - - - - - 0x018EAD 06:AE9D: 20 AC D6  JSR $D6AC
C - - - - - 0x018EB0 06:AEA0: 90 03     BCC $AEA5
C - - - - - 0x018EB2 06:AEA2: 4C 4D D8  JMP $D84D
C - - - - - 0x018EB5 06:AEA5: 20 31 D8  JSR $D831
C - - - - - 0x018EB8 06:AEA8: 98        TYA
C - - - - - 0x018EB9 06:AEA9: 18        CLC
C - - - - - 0x018EBA 06:AEAA: 69 1C     ADC #$1C
C - - - - - 0x018EBC 06:AEAC: 85 01     STA ram_0001
C - - - - - 0x018EBE 06:AEAE: A9 13     LDA #$13
C - - - - - 0x018EC0 06:AEB0: 85 02     STA ram_0002
C - - - - - 0x018EC2 06:AEB2: 4C 33 CE  JMP $CE33
C - - - - - 0x018EC5 06:AEB5: DE 86 03  DEC ram_0386,X
C - - - - - 0x018EC8 06:AEB8: D0 03     BNE $AEBD
C - - - - - 0x018ECA 06:AEBA: 4C 73 D8  JMP $D873
C - - - - - 0x018ECD 06:AEBD: BD 86 03  LDA ram_0386,X
C - - - - - 0x018ED0 06:AEC0: 29 0C     AND #$0C
C - - - - - 0x018ED2 06:AEC2: 18        CLC
C - - - - - 0x018ED3 06:AEC3: 69 0C     ADC #$0C
C - - - - - 0x018ED5 06:AEC5: A8        TAY
C - - - - - 0x018ED6 06:AEC6: D0 C3     BNE $AE8B
C - - - - - 0x018ED8 06:AEC8: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018EDB 06:AECB: 6A        ROR
C - - - - - 0x018EDC 06:AECC: 90 2A     BCC $AEF8
C - - - - - 0x018EDE 06:AECE: 20 4A D9  JSR $D94A
C - - - - - 0x018EE1 06:AED1: A9 F8     LDA #$F8
C - - - - - 0x018EE3 06:AED3: 20 AD D3  JSR $D3AD
C - - - - - 0x018EE6 06:AED6: D0 4A     BNE $AF22
C - - - - - 0x018EE8 06:AED8: A5 00     LDA ram_0000
C - - - - - 0x018EEA 06:AEDA: 38        SEC
C - - - - - 0x018EEB 06:AEDB: E9 10     SBC #$10
C - - - - - 0x018EED 06:AEDD: 85 00     STA ram_0000
C - - - - - 0x018EEF 06:AEDF: 20 52 D9  JSR $D952
C - - - - - 0x018EF2 06:AEE2: A9 F8     LDA #$F8
C - - - - - 0x018EF4 06:AEE4: 20 AD D3  JSR $D3AD
C - - - - - 0x018EF7 06:AEE7: D0 39     BNE $AF22
C - - - - - 0x018EF9 06:AEE9: A5 00     LDA ram_0000
C - - - - - 0x018EFB 06:AEEB: 38        SEC
C - - - - - 0x018EFC 06:AEEC: E9 0F     SBC #$0F
C - - - - - 0x018EFE 06:AEEE: 85 00     STA ram_0000
C - - - - - 0x018F00 06:AEF0: 20 52 D9  JSR $D952
C - - - - - 0x018F03 06:AEF3: A9 F8     LDA #$F8
C - - - - - 0x018F05 06:AEF5: 4C AD D3  JMP $D3AD
C - - - - - 0x018F08 06:AEF8: 20 4A D9  JSR $D94A
C - - - - - 0x018F0B 06:AEFB: A9 08     LDA #$08
C - - - - - 0x018F0D 06:AEFD: 20 97 D3  JSR $D397
C - - - - - 0x018F10 06:AF00: D0 20     BNE $AF22
C - - - - - 0x018F12 06:AF02: A5 00     LDA ram_0000
C - - - - - 0x018F14 06:AF04: 38        SEC
C - - - - - 0x018F15 06:AF05: E9 10     SBC #$10
C - - - - - 0x018F17 06:AF07: 85 00     STA ram_0000
C - - - - - 0x018F19 06:AF09: 20 52 D9  JSR $D952
C - - - - - 0x018F1C 06:AF0C: A9 08     LDA #$08
C - - - - - 0x018F1E 06:AF0E: 20 97 D3  JSR $D397
C - - - - - 0x018F21 06:AF11: D0 0F     BNE $AF22
C - - - - - 0x018F23 06:AF13: A5 00     LDA ram_0000
C - - - - - 0x018F25 06:AF15: 38        SEC
C - - - - - 0x018F26 06:AF16: E9 0F     SBC #$0F
C - - - - - 0x018F28 06:AF18: 85 00     STA ram_0000
C - - - - - 0x018F2A 06:AF1A: 20 52 D9  JSR $D952
C - - - - - 0x018F2D 06:AF1D: A9 08     LDA #$08
C - - - - - 0x018F2F 06:AF1F: 4C 97 D3  JMP $D397
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
C - - - - - 0x018F78 06:AF68: A5 2C     LDA ram_002C
C - - - - - 0x018F7A 06:AF6A: 29 01     AND #$01
C - - - - - 0x018F7C 06:AF6C: D0 18     BNE $AF86
C - - - - - 0x018F7E 06:AF6E: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018F81 06:AF71: 6A        ROR
C - - - - - 0x018F82 06:AF72: 90 03     BCC $AF77
C - - - - - 0x018F84 06:AF74: 4C 09 D8  JMP $D809
C - - - - - 0x018F87 06:AF77: 4C 28 D8  JMP $D828
C - - - - - 0x018F8A 06:AF7A: 85 05     STA ram_0005
C - - - - - 0x018F8C 06:AF7C: BD 5C 03  LDA ram_035C,X
C - - - - - 0x018F8F 06:AF7F: 29 C1     AND #$C1
C - - - - - 0x018F91 06:AF81: 05 05     ORA ram_0005
C - - - - - 0x018F93 06:AF83: 9D 5C 03  STA ram_035C,X
C - - - - - 0x018F96 06:AF86: 60        RTS
- D 1 - I - 0x018F97 06:AF87: 01        .byte $01   ; 
- D 1 - I - 0x018F98 06:AF88: 02        .byte $02   ; 
- D 1 - I - 0x018F99 06:AF89: 03        .byte $03   ; 
- D 1 - I - 0x018F9A 06:AF8A: 04        .byte $04   ; 
- D 1 - I - 0x018F9B 06:AF8B: 04        .byte $04   ; 
- D 1 - I - 0x018F9C 06:AF8C: 05        .byte $05   ; 
- D 1 - I - 0x018F9D 06:AF8D: 06        .byte $06   ; 
- D 1 - I - 0x018F9E 06:AF8E: 07        .byte $07   ; 
- D 1 - I - 0x018F9F 06:AF8F: 0F        .byte $0F   ; 
- D 1 - I - 0x018FA0 06:AF90: 0E        .byte $0E   ; 
- D 1 - I - 0x018FA1 06:AF91: 0D        .byte $0D   ; 
- D 1 - I - 0x018FA2 06:AF92: 0C        .byte $0C   ; 
- D 1 - I - 0x018FA3 06:AF93: 0C        .byte $0C   ; 
- D 1 - I - 0x018FA4 06:AF94: 0B        .byte $0B   ; 
- D 1 - I - 0x018FA5 06:AF95: 0A        .byte $0A   ; 
- D 1 - I - 0x018FA6 06:AF96: 09        .byte $09   ; 
- D 1 - I - 0x018FA7 06:AF97: 08        .byte $08   ; 
- D 1 - I - 0x018FA8 06:AF98: 10        .byte $10   ; 
- D 1 - I - 0x018FA9 06:AF99: 20        .byte $20   ; 
- D 1 - I - 0x018FAA 06:AF9A: 40        .byte $40   ; 
- D 1 - I - 0x018FAB 06:AF9B: 40        .byte $40   ; 
- D 1 - I - 0x018FAC 06:AF9C: 20        .byte $20   ; 
- D 1 - I - 0x018FAD 06:AF9D: 10        .byte $10   ; 
- D 1 - I - 0x018FAE 06:AF9E: 08        .byte $08   ; 
- D 1 - I - 0x018FAF 06:AF9F: 08        .byte $08   ; 
- D 1 - I - 0x018FB0 06:AFA0: 10        .byte $10   ; 
- D 1 - I - 0x018FB1 06:AFA1: 20        .byte $20   ; 
- D 1 - I - 0x018FB2 06:AFA2: 40        .byte $40   ; 
- D 1 - I - 0x018FB3 06:AFA3: 40        .byte $40   ; 
- D 1 - I - 0x018FB4 06:AFA4: 20        .byte $20   ; 
- D 1 - I - 0x018FB5 06:AFA5: 10        .byte $10   ; 
- D 1 - I - 0x018FB6 06:AFA6: 08        .byte $08   ; 
C D 1 - - - 0x018FB7 06:AFA7: 20 AD AF  JSR $AFAD
C - - - - - 0x018FBA 06:AFAA: 4C 73 A9  JMP $A973
C - - - - - 0x018FBD 06:AFAD: A2 01     LDX #$01
C - - - - - 0x018FBF 06:AFAF: 86 1A     STX ram_001A
C - - - - - 0x018FC1 06:AFB1: A6 1A     LDX ram_001A
C - - - - - 0x018FC3 06:AFB3: 20 26 B0  JSR $B026
C - - - - - 0x018FC6 06:AFB6: A6 1A     LDX ram_001A
C - - - - - 0x018FC8 06:AFB8: BD 20 03  LDA ram_0320,X
C - - - - - 0x018FCB 06:AFBB: C9 E0     CMP #$E0
C - - - - - 0x018FCD 06:AFBD: B0 3C     BCS $AFFB
C - - - - - 0x018FCF 06:AFBF: C9 C0     CMP #$C0
C - - - - - 0x018FD1 06:AFC1: 90 38     BCC $AFFB
C - - - - - 0x018FD3 06:AFC3: BD 2C 03  LDA ram_032C,X
C - - - - - 0x018FD6 06:AFC6: 18        CLC
C - - - - - 0x018FD7 06:AFC7: 69 FC     ADC #$FC
C - - - - - 0x018FD9 06:AFC9: 85 AD     STA ram_00AD
C - - - - - 0x018FDB 06:AFCB: BD 32 03  LDA ram_0332,X
C - - - - - 0x018FDE 06:AFCE: 85 AE     STA ram_00AE
C - - - - - 0x018FE0 06:AFD0: A9 18     LDA #$18
C - - - - - 0x018FE2 06:AFD2: 85 AF     STA ram_00AF
C - - - - - 0x018FE4 06:AFD4: A9 06     LDA #$06
C - - - - - 0x018FE6 06:AFD6: 85 B0     STA ram_00B0
C - - - - - 0x018FE8 06:AFD8: 20 60 D6  JSR $D660
C - - - - - 0x018FEB 06:AFDB: B0 0B     BCS $AFE8
C - - - - - 0x018FED 06:AFDD: A5 5F     LDA ram_005F
C - - - - - 0x018FEF 06:AFDF: 29 02     AND #$02
C - - - - - 0x018FF1 06:AFE1: F0 0B     BEQ $AFEE
C - - - - - 0x018FF3 06:AFE3: 20 06 D6  JSR $D606
C - - - - - 0x018FF6 06:AFE6: 90 10     BCC $AFF8
C - - - - - 0x018FF8 06:AFE8: 20 0A B0  JSR $B00A
C - - - - - 0x018FFB 06:AFEB: 4C FB AF  JMP $AFFB
C - - - - - 0x018FFE 06:AFEE: A6 7A     LDX ram_007A
C - - - - - 0x019000 06:AFF0: 20 B6 D5  JSR $D5B6
C - - - - - 0x019003 06:AFF3: B0 0B     BCS $B000
C - - - - - 0x019005 06:AFF5: CA        DEX
C - - - - - 0x019006 06:AFF6: 10 F8     BPL $AFF0
C - - - - - 0x019008 06:AFF8: 20 62 D5  JSR $D562
C D 1 - - - 0x01900B 06:AFFB: C6 1A     DEC ram_001A
C - - - - - 0x01900D 06:AFFD: 10 B2     BPL $AFB1
C - - - - - 0x01900F 06:AFFF: 60        RTS
C - - - - - 0x019010 06:B000: A9 00     LDA #$00
C - - - - - 0x019012 06:B002: 95 8F     STA ram_008F,X
C - - - - - 0x019014 06:B004: 20 0A B0  JSR $B00A
C - - - - - 0x019017 06:B007: 4C FB AF  JMP $AFFB
C - - - - - 0x01901A 06:B00A: A6 1A     LDX ram_001A
C - - - - - 0x01901C 06:B00C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01901F 06:B00F: 29 C1     AND #$C1
C - - - - - 0x019021 06:B011: 09 22     ORA #$22
C - - - - - 0x019023 06:B013: 9D 20 03  STA ram_0320,X
C - - - - - 0x019026 06:B016: A9 10     LDA #$10
C - - - - - 0x019028 06:B018: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01902B 06:B01B: A9 03     LDA #$03
C - - - - - 0x01902D 06:B01D: 9D 56 03  STA ram_0356,X
C - - - - - 0x019030 06:B020: A9 00     LDA #$00
C - - - - - 0x019032 06:B022: 9D 44 03  STA ram_0344,X
C - - - - - 0x019035 06:B025: 60        RTS
C - - - - - 0x019036 06:B026: BD 20 03  LDA ram_0320,X
C - - - - - 0x019039 06:B029: 10 FA     BPL $B025
C - - - - - 0x01903B 06:B02B: 4A        LSR
C - - - - - 0x01903C 06:B02C: 4A        LSR
C - - - - - 0x01903D 06:B02D: 90 03     BCC $B032
C - - - - - 0x01903F 06:B02F: 4C 2A B1  JMP $B12A
C - - - - - 0x019042 06:B032: A5 2C     LDA ram_002C
C - - - - - 0x019044 06:B034: 29 01     AND #$01
C - - - - - 0x019046 06:B036: D0 06     BNE $B03E
C - - - - - 0x019048 06:B038: 20 B3 B0  JSR $B0B3
C - - - - - 0x01904B 06:B03B: 20 84 B0  JSR $B084
C - - - - - 0x01904E 06:B03E: A0 00     LDY #$00
C - - - - - 0x019050 06:B040: BD 56 03  LDA ram_0356,X
C - - - - - 0x019053 06:B043: 29 07     AND #$07
C - - - - - 0x019055 06:B045: F0 11     BEQ $B058
C - - - - - 0x019057 06:B047: C9 04     CMP #$04
C - - - - - 0x019059 06:B049: B0 0D     BCS $B058
C - - - - - 0x01905B 06:B04B: C9 03     CMP #$03
C - - - - - 0x01905D 06:B04D: D0 07     BNE $B056
C - - - - - 0x01905F 06:B04F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019062 06:B052: C9 30     CMP #$30
C - - - - - 0x019064 06:B054: 90 02     BCC $B058
C - - - - - 0x019066 06:B056: A0 04     LDY #$04
C D 1 - - - 0x019068 06:B058: BD 38 03  LDA ram_0338,X
C - - - - - 0x01906B 06:B05B: 85 00     STA ram_0000
C - - - - - 0x01906D 06:B05D: BD 3E 03  LDA ram_033E,X
C - - - - - 0x019070 06:B060: 85 01     STA ram_0001
C - - - - - 0x019072 06:B062: 20 7B D6  JSR $D67B
C - - - - - 0x019075 06:B065: 90 03     BCC $B06A
C - - - - - 0x019077 06:B067: 4C 7F D7  JMP $D77F
C - - - - - 0x01907A 06:B06A: 20 AC D6  JSR $D6AC
C - - - - - 0x01907D 06:B06D: 90 03     BCC $B072
C - - - - - 0x01907F 06:B06F: 4C 41 D7  JMP $D741
C - - - - - 0x019082 06:B072: 20 25 D7  JSR $D725
C - - - - - 0x019085 06:B075: 98        TYA
C - - - - - 0x019086 06:B076: 18        CLC
C - - - - - 0x019087 06:B077: 6D 02 03  ADC ram_0302
C - - - - - 0x01908A 06:B07A: 85 01     STA ram_0001
C - - - - - 0x01908C 06:B07C: AD 03 03  LDA ram_0303
C - - - - - 0x01908F 06:B07F: 85 02     STA ram_0002
C - - - - - 0x019091 06:B081: 4C 33 CE  JMP $CE33
C - - - - - 0x019094 06:B084: 20 FB B0  JSR $B0FB
C - - - - - 0x019097 06:B087: BC 56 03  LDY ram_0356,X
C - - - - - 0x01909A 06:B08A: B1 00     LDA (ram_0000),Y
C - - - - - 0x01909C 06:B08C: 0A        ASL
C - - - - - 0x01909D 06:B08D: A8        TAY
C - - - - - 0x01909E 06:B08E: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0190A1 06:B091: 18        CLC
C - - - - - 0x0190A2 06:B092: 79 D4 DA  ADC $DAD4,Y
C - - - - - 0x0190A5 06:B095: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0190A8 06:B098: A9 00     LDA #$00
C - - - - - 0x0190AA 06:B09A: 85 02     STA ram_0002
C - - - - - 0x0190AC 06:B09C: B9 D5 DA  LDA $DAD5,Y
C - - - - - 0x0190AF 06:B09F: 10 02     BPL $B0A3
C - - - - - 0x0190B1 06:B0A1: C6 02     DEC ram_0002
C - - - - - 0x0190B3 06:B0A3: 18        CLC
C - - - - - 0x0190B4 06:B0A4: 7D 38 03  ADC ram_0338,X
C - - - - - 0x0190B7 06:B0A7: 9D 38 03  STA ram_0338,X
C - - - - - 0x0190BA 06:B0AA: BD 3E 03  LDA ram_033E,X
C - - - - - 0x0190BD 06:B0AD: 65 02     ADC ram_0002
C - - - - - 0x0190BF 06:B0AF: 9D 3E 03  STA ram_033E,X
C - - - - - 0x0190C2 06:B0B2: 60        RTS
C - - - - - 0x0190C3 06:B0B3: 20 FB B0  JSR $B0FB
C - - - - - 0x0190C6 06:B0B6: DE 4A 03  DEC ram_034A,X
C - - - - - 0x0190C9 06:B0B9: D0 17     BNE $B0D2
C - - - - - 0x0190CB 06:B0BB: FE 56 03  INC ram_0356,X
C - - - - - 0x0190CE 06:B0BE: BD 56 03  LDA ram_0356,X
C - - - - - 0x0190D1 06:B0C1: 20 04 B1  JSR $B104
C - - - - - 0x0190D4 06:B0C4: 29 0F     AND #$0F
C - - - - - 0x0190D6 06:B0C6: 9D 56 03  STA ram_0356,X
C - - - - - 0x0190D9 06:B0C9: 18        CLC
C - - - - - 0x0190DA 06:B0CA: 69 10     ADC #$10
C - - - - - 0x0190DC 06:B0CC: A8        TAY
C - - - - - 0x0190DD 06:B0CD: B1 00     LDA (ram_0000),Y
C - - - - - 0x0190DF 06:B0CF: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0190E2 06:B0D2: A9 40     LDA #$40
C - - - - - 0x0190E4 06:B0D4: DD 2C 03  CMP ram_032C,X
C - - - - - 0x0190E7 06:B0D7: B0 07     BCS $B0E0
C - - - - - 0x0190E9 06:B0D9: A9 BF     LDA #$BF
C - - - - - 0x0190EB 06:B0DB: DD 2C 03  CMP ram_032C,X
C - - - - - 0x0190EE 06:B0DE: B0 03     BCS $B0E3
C - - - - - 0x0190F0 06:B0E0: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0190F3 06:B0E3: BC 56 03  LDY ram_0356,X
C - - - - - 0x0190F6 06:B0E6: B1 00     LDA (ram_0000),Y
C - - - - - 0x0190F8 06:B0E8: 29 08     AND #$08
C - - - - - 0x0190FA 06:B0EA: F0 02     BEQ $B0EE
C - - - - - 0x0190FC 06:B0EC: A9 01     LDA #$01
C - - - - - 0x0190FE 06:B0EE: 85 05     STA ram_0005
C - - - - - 0x019100 06:B0F0: BD 20 03  LDA ram_0320,X
C - - - - - 0x019103 06:B0F3: 29 FE     AND #$FE
C - - - - - 0x019105 06:B0F5: 05 05     ORA ram_0005
C - - - - - 0x019107 06:B0F7: 9D 20 03  STA ram_0320,X
C - - - - - 0x01910A 06:B0FA: 60        RTS
C - - - - - 0x01910B 06:B0FB: A9 87     LDA #$87
C - - - - - 0x01910D 06:B0FD: 85 00     STA ram_0000
C - - - - - 0x01910F 06:B0FF: A9 AF     LDA #$AF
C - - - - - 0x019111 06:B101: 85 01     STA ram_0001
C - - - - - 0x019113 06:B103: 60        RTS
C - - - - - 0x019114 06:B104: 48        PHA
C - - - - - 0x019115 06:B105: 29 07     AND #$07
C - - - - - 0x019117 06:B107: C9 03     CMP #$03
C - - - - - 0x019119 06:B109: D0 1D     BNE $B128
C - - - - - 0x01911B 06:B10B: A9 02     LDA #$02
C - - - - - 0x01911D 06:B10D: D0 02     BNE $B111
- - - - - - 0x01911F 06:B10F: A9        .byte $A9   ; 
- - - - - - 0x019120 06:B110: 00        .byte $00   ; 
C - - - - - 0x019121 06:B111: 18        CLC
C - - - - - 0x019122 06:B112: 65 1A     ADC ram_001A
C - - - - - 0x019124 06:B114: 85 05     STA ram_0005
C - - - - - 0x019126 06:B116: A0 06     LDY #$06
C - - - - - 0x019128 06:B118: 20 37 A9  JSR $A937
C - - - - - 0x01912B 06:B11B: A4 05     LDY ram_0005
C - - - - - 0x01912D 06:B11D: 20 50 A9  JSR $A950
C - - - - - 0x019130 06:B120: A9 04     LDA #$04
C - - - - - 0x019132 06:B122: 99 46 03  STA ram_0346,Y
C - - - - - 0x019135 06:B125: 99 28 03  STA ram_0328,Y
C - - - - - 0x019138 06:B128: 68        PLA
C - - - - - 0x019139 06:B129: 60        RTS
C D 1 - - - 0x01913A 06:B12A: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01913D 06:B12D: C9 DF     CMP #$DF
C - - - - - 0x01913F 06:B12F: B0 0F     BCS $B140
C - - - - - 0x019141 06:B131: BD 20 03  LDA ram_0320,X
C - - - - - 0x019144 06:B134: 6A        ROR
C - - - - - 0x019145 06:B135: B0 06     BCS $B13D
C - - - - - 0x019147 06:B137: 20 FD D6  JSR $D6FD
C - - - - - 0x01914A 06:B13A: 4C 40 B1  JMP $B140
C - - - - - 0x01914D 06:B13D: 20 1C D7  JSR $D71C
C D 1 - - - 0x019150 06:B140: BC 4A 03  LDY ram_034A,X
C - - - - - 0x019153 06:B143: B9 5D E3  LDA $E35D,Y
C - - - - - 0x019156 06:B146: 18        CLC
C - - - - - 0x019157 06:B147: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01915A 06:B14A: C9 DF     CMP #$DF
C - - - - - 0x01915C 06:B14C: 90 09     BCC $B157
C - - - - - 0x01915E 06:B14E: A0 DF     LDY #$DF
C - - - - - 0x019160 06:B150: C9 F8     CMP #$F8
C - - - - - 0x019162 06:B152: 90 02     BCC $B156
- - - - - - 0x019164 06:B154: A0        .byte $A0   ; 
- - - - - - 0x019165 06:B155: 00        .byte $00   ; 
C - - - - - 0x019166 06:B156: 98        TYA
C - - - - - 0x019167 06:B157: 9D 2C 03  STA ram_032C,X
C - - - - - 0x01916A 06:B15A: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01916D 06:B15D: C0 18     CPY #$18
C - - - - - 0x01916F 06:B15F: 90 09     BCC $B16A
C - - - - - 0x019171 06:B161: C9 DF     CMP #$DF
C - - - - - 0x019173 06:B163: 90 05     BCC $B16A
C - - - - - 0x019175 06:B165: A0 FF     LDY #$FF
C - - - - - 0x019177 06:B167: 4C 58 B0  JMP $B058
C - - - - - 0x01917A 06:B16A: FE 4A 03  INC ram_034A,X
C - - - - - 0x01917D 06:B16D: A9 2F     LDA #$2F
C - - - - - 0x01917F 06:B16F: DD 4A 03  CMP ram_034A,X
C - - - - - 0x019182 06:B172: B0 03     BCS $B177
C - - - - - 0x019184 06:B174: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019187 06:B177: A0 08     LDY #$08
C - - - - - 0x019189 06:B179: 4C 58 B0  JMP $B058
- D 1 - - - 0x01918C 06:B17C: 00        .byte $00   ; 
- D 1 - - - 0x01918D 06:B17D: 00        .byte $00   ; 
- D 1 - - - 0x01918E 06:B17E: 20        .byte $20   ; 
- D 1 - - - 0x01918F 06:B17F: 04        .byte $04   ; 
- D 1 - - - 0x019190 06:B180: 00        .byte $00   ; 
- D 1 - - - 0x019191 06:B181: 00        .byte $00   ; 
- D 1 - - - 0x019192 06:B182: 18        .byte $18   ; 
- D 1 - - - 0x019193 06:B183: 04        .byte $04   ; 
- D 1 - - - 0x019194 06:B184: EE        .byte $EE   ; 
- D 1 - - - 0x019195 06:B185: 06        .byte $06   ; 
- D 1 - - - 0x019196 06:B186: 06        .byte $06   ; 
- D 1 - - - 0x019197 06:B187: 04        .byte $04   ; 
- D 1 - - - 0x019198 06:B188: F2        .byte $F2   ; 
- D 1 - - - 0x019199 06:B189: 06        .byte $06   ; 
- D 1 - - - 0x01919A 06:B18A: 06        .byte $06   ; 
- D 1 - - - 0x01919B 06:B18B: 04        .byte $04   ; 
- D 1 - - - 0x01919C 06:B18C: EE        .byte $EE   ; 
- D 1 - - - 0x01919D 06:B18D: 08        .byte $08   ; 
- D 1 - - - 0x01919E 06:B18E: 08        .byte $08   ; 
- D 1 - - - 0x01919F 06:B18F: 08        .byte $08   ; 
- - - - - - 0x0191A0 06:B190: EE        .byte $EE   ; 
- - - - - - 0x0191A1 06:B191: FA        .byte $FA   ; 
- - - - - - 0x0191A2 06:B192: 06        .byte $06   ; 
- - - - - - 0x0191A3 06:B193: 04        .byte $04   ; 
- - - - - - 0x0191A4 06:B194: F2        .byte $F2   ; 
- - - - - - 0x0191A5 06:B195: FA        .byte $FA   ; 
- - - - - - 0x0191A6 06:B196: 06        .byte $06   ; 
- - - - - - 0x0191A7 06:B197: 04        .byte $04   ; 
- - - - - - 0x0191A8 06:B198: EE        .byte $EE   ; 
- - - - - - 0x0191A9 06:B199: F8        .byte $F8   ; 
- - - - - - 0x0191AA 06:B19A: 08        .byte $08   ; 
- - - - - - 0x0191AB 06:B19B: 08        .byte $08   ; 
- D 1 - - - 0x0191AC 06:B19C: 00        .byte $00   ; 
- D 1 - - - 0x0191AD 06:B19D: 00        .byte $00   ; 
- D 1 - - - 0x0191AE 06:B19E: 20        .byte $20   ; 
- D 1 - - - 0x0191AF 06:B19F: 04        .byte $04   ; 
- D 1 - - - 0x0191B0 06:B1A0: 00        .byte $00   ; 
- D 1 - - - 0x0191B1 06:B1A1: 00        .byte $00   ; 
- D 1 - - - 0x0191B2 06:B1A2: 18        .byte $18   ; 
- D 1 - - - 0x0191B3 06:B1A3: 04        .byte $04   ; 
- D 1 - - - 0x0191B4 06:B1A4: 00        .byte $00   ; 
- D 1 - - - 0x0191B5 06:B1A5: 00        .byte $00   ; 
- D 1 - - - 0x0191B6 06:B1A6: 0C        .byte $0C   ; 
- D 1 - - - 0x0191B7 06:B1A7: 08        .byte $08   ; 
- D 1 - - - 0x0191B8 06:B1A8: 0C        .byte $0C   ; 
- D 1 - - - 0x0191B9 06:B1A9: 00        .byte $00   ; 
- D 1 - - - 0x0191BA 06:B1AA: 0C        .byte $0C   ; 
- D 1 - - - 0x0191BB 06:B1AB: 08        .byte $08   ; 
- D 1 - - - 0x0191BC 06:B1AC: 20        .byte $20   ; 
- D 1 - - - 0x0191BD 06:B1AD: 00        .byte $00   ; 
- D 1 - - - 0x0191BE 06:B1AE: 20        .byte $20   ; 
- D 1 - - - 0x0191BF 06:B1AF: 08        .byte $08   ; 
- D 1 - - - 0x0191C0 06:B1B0: 18        .byte $18   ; 
- D 1 - - - 0x0191C1 06:B1B1: 00        .byte $00   ; 
- D 1 - - - 0x0191C2 06:B1B2: 18        .byte $18   ; 
- D 1 - - - 0x0191C3 06:B1B3: 08        .byte $08   ; 
- D 1 - - - 0x0191C4 06:B1B4: F0        .byte $F0   ; 
- D 1 - - - 0x0191C5 06:B1B5: 04        .byte $04   ; 
- D 1 - - - 0x0191C6 06:B1B6: 10        .byte $10   ; 
- D 1 - - - 0x0191C7 06:B1B7: 04        .byte $04   ; 
- D 1 - - - 0x0191C8 06:B1B8: F8        .byte $F8   ; 
- D 1 - - - 0x0191C9 06:B1B9: 04        .byte $04   ; 
- D 1 - - - 0x0191CA 06:B1BA: 10        .byte $10   ; 
- D 1 - - - 0x0191CB 06:B1BB: 04        .byte $04   ; 
- D 1 - - - 0x0191CC 06:B1BC: F0        .byte $F0   ; 
- D 1 - - - 0x0191CD 06:B1BD: FC        .byte $FC   ; 
- D 1 - - - 0x0191CE 06:B1BE: 10        .byte $10   ; 
- D 1 - - - 0x0191CF 06:B1BF: 04        .byte $04   ; 
- D 1 - - - 0x0191D0 06:B1C0: F8        .byte $F8   ; 
- D 1 - - - 0x0191D1 06:B1C1: FC        .byte $FC   ; 
- D 1 - - - 0x0191D2 06:B1C2: 10        .byte $10   ; 
- D 1 - - - 0x0191D3 06:B1C3: 04        .byte $04   ; 
- D 1 - - - 0x0191D4 06:B1C4: 00        .byte $00   ; 
- D 1 - - - 0x0191D5 06:B1C5: 00        .byte $00   ; 
- D 1 - - - 0x0191D6 06:B1C6: 10        .byte $10   ; 
- D 1 - - - 0x0191D7 06:B1C7: 10        .byte $10   ; 
- D 1 - - - 0x0191D8 06:B1C8: 10        .byte $10   ; 
- D 1 - - - 0x0191D9 06:B1C9: 04        .byte $04   ; 
- D 1 - - - 0x0191DA 06:B1CA: 04        .byte $04   ; 
- D 1 - - - 0x0191DB 06:B1CB: 08        .byte $08   ; 
- D 1 - - - 0x0191DC 06:B1CC: 00        .byte $00   ; 
- D 1 - - - 0x0191DD 06:B1CD: 10        .byte $10   ; 
- D 1 - - - 0x0191DE 06:B1CE: 10        .byte $10   ; 
- D 1 - - - 0x0191DF 06:B1CF: 10        .byte $10   ; 
- D 1 - - - 0x0191E0 06:B1D0: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E1 06:B1D1: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E2 06:B1D2: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E3 06:B1D3: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E4 06:B1D4: 00        .byte $00   ; 
- D 1 - - - 0x0191E5 06:B1D5: 10        .byte $10   ; 
- D 1 - - - 0x0191E6 06:B1D6: 10        .byte $10   ; 
- D 1 - - - 0x0191E7 06:B1D7: 10        .byte $10   ; 
- D 1 - - - 0x0191E8 06:B1D8: 0C        .byte $0C   ; 
- D 1 - - - 0x0191E9 06:B1D9: 0C        .byte $0C   ; 
- D 1 - - - 0x0191EA 06:B1DA: 0C        .byte $0C   ; 
- D 1 - - - 0x0191EB 06:B1DB: 08        .byte $08   ; 
- D 1 - - - 0x0191EC 06:B1DC: 00        .byte $00   ; 
- D 1 - - - 0x0191ED 06:B1DD: 00        .byte $00   ; 
- D 1 - - - 0x0191EE 06:B1DE: 08        .byte $08   ; 
- D 1 - - - 0x0191EF 06:B1DF: 08        .byte $08   ; 
- - - - - - 0x0191F0 06:B1E0: 08        .byte $08   ; 
- - - - - - 0x0191F1 06:B1E1: 08        .byte $08   ; 
- D 1 - - - 0x0191F2 06:B1E2: 08        .byte $08   ; 
- D 1 - - - 0x0191F3 06:B1E3: 08        .byte $08   ; 
C D 1 - - - 0x0191F4 06:B1E4: 20 EA B1  JSR $B1EA
C - - - - - 0x0191F7 06:B1E7: 4C 73 A9  JMP $A973
C - - - - - 0x0191FA 06:B1EA: A2 01     LDX #$01
C - - - - - 0x0191FC 06:B1EC: 86 1A     STX ram_001A
C - - - - - 0x0191FE 06:B1EE: A6 1A     LDX ram_001A
C - - - - - 0x019200 06:B1F0: 20 56 B3  JSR $B356
C - - - - - 0x019203 06:B1F3: A6 1A     LDX ram_001A
C - - - - - 0x019205 06:B1F5: BD 20 03  LDA ram_0320,X
C - - - - - 0x019208 06:B1F8: C9 E0     CMP #$E0
C - - - - - 0x01920A 06:B1FA: B0 53     BCS $B24F
C - - - - - 0x01920C 06:B1FC: C9 C0     CMP #$C0
C - - - - - 0x01920E 06:B1FE: 90 4F     BCC $B24F
C - - - - - 0x019210 06:B200: 20 F5 B2  JSR $B2F5
C - - - - - 0x019213 06:B203: 20 60 D6  JSR $D660
C - - - - - 0x019216 06:B206: B0 0B     BCS $B213
C - - - - - 0x019218 06:B208: A5 5F     LDA ram_005F
C - - - - - 0x01921A 06:B20A: 29 02     AND #$02
C - - - - - 0x01921C 06:B20C: F0 0B     BEQ $B219
C - - - - - 0x01921E 06:B20E: 20 06 D6  JSR $D606
C - - - - - 0x019221 06:B211: 90 34     BCC $B247
C - - - - - 0x019223 06:B213: 20 5E B2  JSR $B25E
C - - - - - 0x019226 06:B216: 4C 4F B2  JMP $B24F
C - - - - - 0x019229 06:B219: A6 7A     LDX ram_007A
C - - - - - 0x01922B 06:B21B: 20 B6 D5  JSR $D5B6
C - - - - - 0x01922E 06:B21E: B0 34     BCS $B254
C - - - - - 0x019230 06:B220: CA        DEX
C - - - - - 0x019231 06:B221: 10 F8     BPL $B21B
C - - - - - 0x019233 06:B223: AD 00 03  LDA ram_0300
C - - - - - 0x019236 06:B226: C9 37     CMP #$37
C - - - - - 0x019238 06:B228: D0 1D     BNE $B247
C - - - - - 0x01923A 06:B22A: A6 1A     LDX ram_001A
C - - - - - 0x01923C 06:B22C: BD 22 03  LDA ram_0322,X
C - - - - - 0x01923F 06:B22F: 30 16     BMI $B247
C - - - - - 0x019241 06:B231: 20 E0 B2  JSR $B2E0
C - - - - - 0x019244 06:B234: A6 7A     LDX ram_007A
C - - - - - 0x019246 06:B236: 20 B6 D5  JSR $D5B6
C - - - - - 0x019249 06:B239: 90 09     BCC $B244
C - - - - - 0x01924B 06:B23B: A9 10     LDA #$10
C - - - - - 0x01924D 06:B23D: 20 20 C4  JSR $C420
C - - - - - 0x019250 06:B240: A9 00     LDA #$00
C - - - - - 0x019252 06:B242: 95 8F     STA ram_008F,X
C - - - - - 0x019254 06:B244: CA        DEX
C - - - - - 0x019255 06:B245: 10 EF     BPL $B236
C - - - - - 0x019257 06:B247: A6 1A     LDX ram_001A
C - - - - - 0x019259 06:B249: 20 AF B2  JSR $B2AF
C - - - - - 0x01925C 06:B24C: 20 62 D5  JSR $D562
C D 1 - - - 0x01925F 06:B24F: C6 1A     DEC ram_001A
C - - - - - 0x019261 06:B251: 10 9B     BPL $B1EE
C - - - - - 0x019263 06:B253: 60        RTS
C - - - - - 0x019264 06:B254: A9 00     LDA #$00
C - - - - - 0x019266 06:B256: 95 8F     STA ram_008F,X
C - - - - - 0x019268 06:B258: 20 5E B2  JSR $B25E
C - - - - - 0x01926B 06:B25B: 4C 4F B2  JMP $B24F
C - - - - - 0x01926E 06:B25E: A6 1A     LDX ram_001A
C - - - - - 0x019270 06:B260: AD 00 03  LDA ram_0300
C - - - - - 0x019273 06:B263: C9 37     CMP #$37
C - - - - - 0x019275 06:B265: D0 21     BNE $B288
C - - - - - 0x019277 06:B267: A0 04     LDY #$04
C - - - - - 0x019279 06:B269: AD 14 02  LDA ram_0214
C - - - - - 0x01927C 06:B26C: C9 41     CMP #$41
C - - - - - 0x01927E 06:B26E: F0 08     BEQ $B278
C - - - - - 0x019280 06:B270: A0 02     LDY #$02
C - - - - - 0x019282 06:B272: C9 42     CMP #$42
C - - - - - 0x019284 06:B274: F0 02     BEQ $B278
C - - - - - 0x019286 06:B276: A0 01     LDY #$01
C - - - - - 0x019288 06:B278: DE 50 03  DEC ram_0350,X
C - - - - - 0x01928B 06:B27B: F0 0B     BEQ $B288
C - - - - - 0x01928D 06:B27D: 88        DEY
C - - - - - 0x01928E 06:B27E: D0 08     BNE $B288
C - - - - - 0x019290 06:B280: BD 22 03  LDA ram_0322,X
C - - - - - 0x019293 06:B283: 30 03     BMI $B288
C - - - - - 0x019295 06:B285: 20 73 B7  JSR $B773
C - - - - - 0x019298 06:B288: A9 22     LDA #$22
C - - - - - 0x01929A 06:B28A: 20 4E B7  JSR $B74E
C - - - - - 0x01929D 06:B28D: A9 03     LDA #$03
C - - - - - 0x01929F 06:B28F: 9D 56 03  STA ram_0356,X
C - - - - - 0x0192A2 06:B292: A9 00     LDA #$00
C - - - - - 0x0192A4 06:B294: 9D 44 03  STA ram_0344,X
C - - - - - 0x0192A7 06:B297: A0 10     LDY #$10
C - - - - - 0x0192A9 06:B299: AD 00 03  LDA ram_0300
C - - - - - 0x0192AC 06:B29C: C9 38     CMP #$38
C - - - - - 0x0192AE 06:B29E: D0 0A     BNE $B2AA
C - - - - - 0x0192B0 06:B2A0: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0192B3 06:B2A3: 69 0B     ADC #$0B
C - - - - - 0x0192B5 06:B2A5: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0192B8 06:B2A8: A0 18     LDY #$18
C - - - - - 0x0192BA 06:B2AA: 98        TYA
C - - - - - 0x0192BB 06:B2AB: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0192BE 06:B2AE: 60        RTS
C - - - - - 0x0192BF 06:B2AF: AD 00 03  LDA ram_0300
C - - - - - 0x0192C2 06:B2B2: C9 19     CMP #$19
C - - - - - 0x0192C4 06:B2B4: F0 F8     BEQ $B2AE
C - - - - - 0x0192C6 06:B2B6: C9 35     CMP #$35
C - - - - - 0x0192C8 06:B2B8: F0 F4     BEQ $B2AE
C - - - - - 0x0192CA 06:B2BA: C9 38     CMP #$38
C - - - - - 0x0192CC 06:B2BC: F0 F0     BEQ $B2AE
C - - - - - 0x0192CE 06:B2BE: C9 37     CMP #$37
C - - - - - 0x0192D0 06:B2C0: F0 59     BEQ $B31B
C - - - - - 0x0192D2 06:B2C2: A0 08     LDY #$08
C - - - - - 0x0192D4 06:B2C4: BD 20 03  LDA ram_0320,X
C - - - - - 0x0192D7 06:B2C7: 48        PHA
C - - - - - 0x0192D8 06:B2C8: 29 14     AND #$14
C - - - - - 0x0192DA 06:B2CA: F0 08     BEQ $B2D4
C - - - - - 0x0192DC 06:B2CC: A0 0C     LDY #$0C
C - - - - - 0x0192DE 06:B2CE: C9 04     CMP #$04
C - - - - - 0x0192E0 06:B2D0: D0 02     BNE $B2D4
C - - - - - 0x0192E2 06:B2D2: A0 10     LDY #$10
C - - - - - 0x0192E4 06:B2D4: 68        PLA
C - - - - - 0x0192E5 06:B2D5: 6A        ROR
C - - - - - 0x0192E6 06:B2D6: 90 4E     BCC $B326
C - - - - - 0x0192E8 06:B2D8: 98        TYA
C - - - - - 0x0192E9 06:B2D9: 18        CLC
C - - - - - 0x0192EA 06:B2DA: 69 18     ADC #$18
C - - - - - 0x0192EC 06:B2DC: A8        TAY
C - - - - - 0x0192ED 06:B2DD: 4C 26 B3  JMP $B326
C - - - - - 0x0192F0 06:B2E0: A0 38     LDY #$38
C - - - - - 0x0192F2 06:B2E2: BD 20 03  LDA ram_0320,X
C - - - - - 0x0192F5 06:B2E5: 6A        ROR
C - - - - - 0x0192F6 06:B2E6: 90 02     BCC $B2EA
C - - - - - 0x0192F8 06:B2E8: A0 40     LDY #$40
C - - - - - 0x0192FA 06:B2EA: 29 08     AND #$08
C - - - - - 0x0192FC 06:B2EC: F0 04     BEQ $B2F2
C - - - - - 0x0192FE 06:B2EE: C8        INY
C - - - - - 0x0192FF 06:B2EF: C8        INY
C - - - - - 0x019300 06:B2F0: C8        INY
C - - - - - 0x019301 06:B2F1: C8        INY
C - - - - - 0x019302 06:B2F2: 4C 26 B3  JMP $B326
C - - - - - 0x019305 06:B2F5: AD 00 03  LDA ram_0300
C - - - - - 0x019308 06:B2F8: C9 01     CMP #$01
C - - - - - 0x01930A 06:B2FA: F0 1F     BEQ $B31B
C - - - - - 0x01930C 06:B2FC: C9 35     CMP #$35
C - - - - - 0x01930E 06:B2FE: F0 1B     BEQ $B31B
C - - - - - 0x019310 06:B300: C9 37     CMP #$37
C - - - - - 0x019312 06:B302: F0 17     BEQ $B31B
C - - - - - 0x019314 06:B304: C9 38     CMP #$38
C - - - - - 0x019316 06:B306: F0 3B     BEQ $B343
C - - - - - 0x019318 06:B308: A0 20     LDY #$20
C - - - - - 0x01931A 06:B30A: BD 20 03  LDA ram_0320,X
C - - - - - 0x01931D 06:B30D: 29 1C     AND #$1C
C - - - - - 0x01931F 06:B30F: F0 15     BEQ $B326
C - - - - - 0x019321 06:B311: A0 28     LDY #$28
C - - - - - 0x019323 06:B313: C9 08     CMP #$08
C - - - - - 0x019325 06:B315: F0 0F     BEQ $B326
C - - - - - 0x019327 06:B317: A0 24     LDY #$24
C - - - - - 0x019329 06:B319: D0 0B     BNE $B326
C - - - - - 0x01932B 06:B31B: A0 00     LDY #$00
C - - - - - 0x01932D 06:B31D: BD 20 03  LDA ram_0320,X
C - - - - - 0x019330 06:B320: 29 10     AND #$10
C - - - - - 0x019332 06:B322: F0 02     BEQ $B326
C - - - - - 0x019334 06:B324: A0 04     LDY #$04
C D 1 - - - 0x019336 06:B326: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019339 06:B329: 18        CLC
C - - - - - 0x01933A 06:B32A: 79 7C B1  ADC $B17C,Y
C - - - - - 0x01933D 06:B32D: 85 AD     STA ram_00AD
C - - - - - 0x01933F 06:B32F: BD 32 03  LDA ram_0332,X
C - - - - - 0x019342 06:B332: 18        CLC
C - - - - - 0x019343 06:B333: 79 7D B1  ADC $B17D,Y
C - - - - - 0x019346 06:B336: 85 AE     STA ram_00AE
C - - - - - 0x019348 06:B338: B9 7E B1  LDA $B17E,Y
C - - - - - 0x01934B 06:B33B: 85 AF     STA ram_00AF
C - - - - - 0x01934D 06:B33D: B9 7F B1  LDA $B17F,Y
C - - - - - 0x019350 06:B340: 85 B0     STA ram_00B0
C - - - - - 0x019352 06:B342: 60        RTS
C - - - - - 0x019353 06:B343: A0 2C     LDY #$2C
C - - - - - 0x019355 06:B345: BD 20 03  LDA ram_0320,X
C - - - - - 0x019358 06:B348: 29 0C     AND #$0C
C - - - - - 0x01935A 06:B34A: F0 DA     BEQ $B326
C - - - - - 0x01935C 06:B34C: A0 30     LDY #$30
C - - - - - 0x01935E 06:B34E: 29 08     AND #$08
C - - - - - 0x019360 06:B350: D0 D4     BNE $B326
C - - - - - 0x019362 06:B352: A0 34     LDY #$34
C - - - - - 0x019364 06:B354: D0 D0     BNE $B326
C - - - - - 0x019366 06:B356: BD 20 03  LDA ram_0320,X
C - - - - - 0x019369 06:B359: 10 E7     BPL $B342
C - - - - - 0x01936B 06:B35B: 4A        LSR
C - - - - - 0x01936C 06:B35C: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x01936F 06:B35F: 88        .byte $88   ; 
- D 1 - I - 0x019370 06:B360: B5        .byte $B5   ; 
- D 1 - I - 0x019371 06:B361: 9D        .byte $9D   ; 
- D 1 - I - 0x019372 06:B362: B3        .byte $B3   ; 
- D 1 - I - 0x019373 06:B363: 9D        .byte $9D   ; 
- D 1 - I - 0x019374 06:B364: B3        .byte $B3   ; 
- D 1 - I - 0x019375 06:B365: 59        .byte $59   ; <Y>
- D 1 - I - 0x019376 06:B366: B5        .byte $B5   ; 
- D 1 - I - 0x019377 06:B367: 4E        .byte $4E   ; <N>
- D 1 - I - 0x019378 06:B368: B6        .byte $B6   ; 
- D 1 - I - 0x019379 06:B369: 9D        .byte $9D   ; 
- D 1 - I - 0x01937A 06:B36A: B3        .byte $B3   ; 
- D 1 - I - 0x01937B 06:B36B: 9D        .byte $9D   ; 
- D 1 - I - 0x01937C 06:B36C: B3        .byte $B3   ; 
C - - - - - 0x01937D 06:B36D: 20 8E B6  JSR $B68E
C - - - - - 0x019380 06:B370: BD 20 03  LDA ram_0320,X
C - - - - - 0x019383 06:B373: 29 0C     AND #$0C
C - - - - - 0x019385 06:B375: F0 17     BEQ $B38E
C - - - - - 0x019387 06:B377: A0 08     LDY #$08
C - - - - - 0x019389 06:B379: C9 08     CMP #$08
C - - - - - 0x01938B 06:B37B: F0 1E     BEQ $B39B
C - - - - - 0x01938D 06:B37D: A0 0C     LDY #$0C
C - - - - - 0x01938F 06:B37F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019392 06:B382: C9 28     CMP #$28
C - - - - - 0x019394 06:B384: B0 15     BCS $B39B
C - - - - - 0x019396 06:B386: C9 08     CMP #$08
C - - - - - 0x019398 06:B388: 90 11     BCC $B39B
C - - - - - 0x01939A 06:B38A: A0 04     LDY #$04
C - - - - - 0x01939C 06:B38C: D0 0D     BNE $B39B
C - - - - - 0x01939E 06:B38E: 20 BD B4  JSR $B4BD
C - - - - - 0x0193A1 06:B391: A0 00     LDY #$00
C - - - - - 0x0193A3 06:B393: A5 2C     LDA ram_002C
C - - - - - 0x0193A5 06:B395: 29 08     AND #$08
C - - - - - 0x0193A7 06:B397: D0 02     BNE $B39B
C - - - - - 0x0193A9 06:B399: A0 04     LDY #$04
C - - - - - 0x0193AB 06:B39B: 4C 06 B4  JMP $B406
C - - - - - 0x0193AE 06:B39E: AD 00 03  LDA ram_0300
C - - - - - 0x0193B1 06:B3A1: C9 38     CMP #$38
C - - - - - 0x0193B3 06:B3A3: F0 C8     BEQ $B36D
C - - - - - 0x0193B5 06:B3A5: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0193B8 06:B3A8: 85 00     STA ram_0000
C - - - - - 0x0193BA 06:B3AA: E6 00     INC ram_0000
C - - - - - 0x0193BC 06:B3AC: 20 58 D3  JSR $D358
C - - - - - 0x0193BF 06:B3AF: D0 07     BNE $B3B8
C - - - - - 0x0193C1 06:B3B1: A9 1C     LDA #$1C
C - - - - - 0x0193C3 06:B3B3: A0 02     LDY #$02
C - - - - - 0x0193C5 06:B3B5: 4C 78 B5  JMP $B578
C - - - - - 0x0193C8 06:B3B8: 20 8E B6  JSR $B68E
C - - - - - 0x0193CB 06:B3BB: BD 20 03  LDA ram_0320,X
C - - - - - 0x0193CE 06:B3BE: 29 08     AND #$08
C - - - - - 0x0193D0 06:B3C0: D0 03     BNE $B3C5
C - - - - - 0x0193D2 06:B3C2: 4C F3 B4  JMP $B4F3
C - - - - - 0x0193D5 06:B3C5: A0 04     LDY #$04
C - - - - - 0x0193D7 06:B3C7: AD 00 03  LDA ram_0300
C - - - - - 0x0193DA 06:B3CA: C9 01     CMP #$01
C - - - - - 0x0193DC 06:B3CC: F0 38     BEQ $B406
C - - - - - 0x0193DE 06:B3CE: A0 00     LDY #$00
C - - - - - 0x0193E0 06:B3D0: C9 37     CMP #$37
C - - - - - 0x0193E2 06:B3D2: F0 32     BEQ $B406
C - - - - - 0x0193E4 06:B3D4: C9 35     CMP #$35
C - - - - - 0x0193E6 06:B3D6: D0 1A     BNE $B3F2
C - - - - - 0x0193E8 06:B3D8: A0 18     LDY #$18
C - - - - - 0x0193EA 06:B3DA: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0193ED 06:B3DD: C9 38     CMP #$38
C - - - - - 0x0193EF 06:B3DF: B0 25     BCS $B406
C - - - - - 0x0193F1 06:B3E1: A0 00     LDY #$00
C - - - - - 0x0193F3 06:B3E3: C9 30     CMP #$30
C - - - - - 0x0193F5 06:B3E5: B0 1F     BCS $B406
C - - - - - 0x0193F7 06:B3E7: A0 1C     LDY #$1C
C - - - - - 0x0193F9 06:B3E9: C9 28     CMP #$28
C - - - - - 0x0193FB 06:B3EB: B0 19     BCS $B406
C - - - - - 0x0193FD 06:B3ED: A0 00     LDY #$00
C - - - - - 0x0193FF 06:B3EF: 4C 06 B4  JMP $B406
C - - - - - 0x019402 06:B3F2: A0 20     LDY #$20
C - - - - - 0x019404 06:B3F4: BD 20 03  LDA ram_0320,X
C - - - - - 0x019407 06:B3F7: 29 04     AND #$04
C - - - - - 0x019409 06:B3F9: F0 0B     BEQ $B406
C - - - - - 0x01940B 06:B3FB: A0 1C     LDY #$1C
C - - - - - 0x01940D 06:B3FD: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019410 06:B400: C9 28     CMP #$28
C - - - - - 0x019412 06:B402: 90 02     BCC $B406
C - - - - - 0x019414 06:B404: A0 18     LDY #$18
C D 1 - - - 0x019416 06:B406: BD 38 03  LDA ram_0338,X
C - - - - - 0x019419 06:B409: 85 00     STA ram_0000
C - - - - - 0x01941B 06:B40B: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01941E 06:B40E: 85 01     STA ram_0001
C - - - - - 0x019420 06:B410: 20 7B D6  JSR $D67B
C - - - - - 0x019423 06:B413: 90 03     BCC $B418
C - - - - - 0x019425 06:B415: 4C 7F D7  JMP $D77F
C - - - - - 0x019428 06:B418: 20 AC D6  JSR $D6AC
C - - - - - 0x01942B 06:B41B: 90 03     BCC $B420
C - - - - - 0x01942D 06:B41D: 4C 41 D7  JMP $D741
C - - - - - 0x019430 06:B420: 20 25 D7  JSR $D725
C - - - - - 0x019433 06:B423: C0 E0     CPY #$E0
C - - - - - 0x019435 06:B425: 90 03     BCC $B42A
C - - - - - 0x019437 06:B427: 4C 89 D9  JMP $D989
C - - - - - 0x01943A 06:B42A: 20 AE B4  JSR $B4AE
C - - - - - 0x01943D 06:B42D: AD 00 03  LDA ram_0300
C - - - - - 0x019440 06:B430: C9 19     CMP #$19
C - - - - - 0x019442 06:B432: F0 45     BEQ $B479
C - - - - - 0x019444 06:B434: C9 37     CMP #$37
C - - - - - 0x019446 06:B436: F0 4F     BEQ $B487
C - - - - - 0x019448 06:B438: C9 01     CMP #$01
C - - - - - 0x01944A 06:B43A: D0 3C     BNE $B478
C - - - - - 0x01944C 06:B43C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01944F 06:B43F: 29 20     AND #$20
C - - - - - 0x019451 06:B441: D0 35     BNE $B478
C - - - - - 0x019453 06:B443: AC 04 03  LDY ram_0304
C - - - - - 0x019456 06:B446: BD 26 03  LDA ram_0326,X
C - - - - - 0x019459 06:B449: 30 03     BMI $B44E
C - - - - - 0x01945B 06:B44B: AC 05 03  LDY ram_0305
C - - - - - 0x01945E 06:B44E: 84 04     STY ram_0004
C - - - - - 0x019460 06:B450: A0 00     LDY #$00
C - - - - - 0x019462 06:B452: BD 20 03  LDA ram_0320,X
C - - - - - 0x019465 06:B455: 48        PHA
C - - - - - 0x019466 06:B456: 29 04     AND #$04
C - - - - - 0x019468 06:B458: F0 02     BEQ $B45C
C - - - - - 0x01946A 06:B45A: A0 04     LDY #$04
C - - - - - 0x01946C 06:B45C: 68        PLA
C - - - - - 0x01946D 06:B45D: 6A        ROR
C - - - - - 0x01946E 06:B45E: 90 02     BCC $B462
C - - - - - 0x019470 06:B460: C8        INY
C - - - - - 0x019471 06:B461: C8        INY
C - - - - - 0x019472 06:B462: 98        TYA
C - - - - - 0x019473 06:B463: 18        CLC
C - - - - - 0x019474 06:B464: 65 04     ADC ram_0004
C - - - - - 0x019476 06:B466: 85 01     STA ram_0001
C - - - - - 0x019478 06:B468: BD 20 03  LDA ram_0320,X
C - - - - - 0x01947B 06:B46B: 29 10     AND #$10
C - - - - - 0x01947D 06:B46D: F0 15     BEQ $B484
C - - - - - 0x01947F 06:B46F: A5 00     LDA ram_0000
C - - - - - 0x019481 06:B471: 18        CLC
C - - - - - 0x019482 06:B472: 69 05     ADC #$05
C - - - - - 0x019484 06:B474: 85 00     STA ram_0000
C - - - - - 0x019486 06:B476: D0 0C     BNE $B484
C - - - - - 0x019488 06:B478: 60        RTS
C - - - - - 0x019489 06:B479: C0 18     CPY #$18
C - - - - - 0x01948B 06:B47B: B0 FB     BCS $B478
C - - - - - 0x01948D 06:B47D: 98        TYA
C - - - - - 0x01948E 06:B47E: 18        CLC
C - - - - - 0x01948F 06:B47F: 6D 04 03  ADC ram_0304
C - - - - - 0x019492 06:B482: 85 01     STA ram_0001
C - - - - - 0x019494 06:B484: 4C 33 CE  JMP $CE33
C - - - - - 0x019497 06:B487: BD 20 03  LDA ram_0320,X
C - - - - - 0x01949A 06:B48A: 29 30     AND #$30
C - - - - - 0x01949C 06:B48C: D0 EA     BNE $B478
C - - - - - 0x01949E 06:B48E: BD 20 03  LDA ram_0320,X
C - - - - - 0x0194A1 06:B491: 29 08     AND #$08
C - - - - - 0x0194A3 06:B493: F0 0F     BEQ $B4A4
C - - - - - 0x0194A5 06:B495: A0 30     LDY #$30
C - - - - - 0x0194A7 06:B497: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0194AA 06:B49A: C9 28     CMP #$28
C - - - - - 0x0194AC 06:B49C: 90 08     BCC $B4A6
C - - - - - 0x0194AE 06:B49E: A0 2C     LDY #$2C
C - - - - - 0x0194B0 06:B4A0: C9 30     CMP #$30
C - - - - - 0x0194B2 06:B4A2: 90 02     BCC $B4A6
C - - - - - 0x0194B4 06:B4A4: A0 28     LDY #$28
C - - - - - 0x0194B6 06:B4A6: BD 20 03  LDA ram_0320,X
C - - - - - 0x0194B9 06:B4A9: 6A        ROR
C - - - - - 0x0194BA 06:B4AA: 90 02     BCC $B4AE
C - - - - - 0x0194BC 06:B4AC: C8        INY
C - - - - - 0x0194BD 06:B4AD: C8        INY
C - - - - - 0x0194BE 06:B4AE: 98        TYA
C - - - - - 0x0194BF 06:B4AF: 18        CLC
C - - - - - 0x0194C0 06:B4B0: 6D 02 03  ADC ram_0302
C - - - - - 0x0194C3 06:B4B3: 85 01     STA ram_0001
C - - - - - 0x0194C5 06:B4B5: AD 03 03  LDA ram_0303
C - - - - - 0x0194C8 06:B4B8: 85 02     STA ram_0002
C - - - - - 0x0194CA 06:B4BA: 4C 33 CE  JMP $CE33
C - - - - - 0x0194CD 06:B4BD: 20 37 D9  JSR $D937
C - - - - - 0x0194D0 06:B4C0: C6 00     DEC ram_0000
C - - - - - 0x0194D2 06:B4C2: BD 20 03  LDA ram_0320,X
C - - - - - 0x0194D5 06:B4C5: 6A        ROR
C - - - - - 0x0194D6 06:B4C6: 90 1A     BCC $B4E2
C - - - - - 0x0194D8 06:B4C8: A9 F8     LDA #$F8
C - - - - - 0x0194DA 06:B4CA: 20 AD D3  JSR $D3AD
C - - - - - 0x0194DD 06:B4CD: C9 01     CMP #$01
C - - - - - 0x0194DF 06:B4CF: D0 08     BNE $B4D9
C - - - - - 0x0194E1 06:B4D1: A5 2C     LDA ram_002C
C - - - - - 0x0194E3 06:B4D3: 6A        ROR
C - - - - - 0x0194E4 06:B4D4: 90 A2     BCC $B478
C - - - - - 0x0194E6 06:B4D6: 4C FD D6  JMP $D6FD
C - - - - - 0x0194E9 06:B4D9: BD 20 03  LDA ram_0320,X
C - - - - - 0x0194EC 06:B4DC: 49 01     EOR #$01
C - - - - - 0x0194EE 06:B4DE: 9D 20 03  STA ram_0320,X
C - - - - - 0x0194F1 06:B4E1: 60        RTS
C - - - - - 0x0194F2 06:B4E2: A9 08     LDA #$08
C - - - - - 0x0194F4 06:B4E4: 20 97 D3  JSR $D397
C - - - - - 0x0194F7 06:B4E7: C9 01     CMP #$01
C - - - - - 0x0194F9 06:B4E9: D0 EE     BNE $B4D9
C - - - - - 0x0194FB 06:B4EB: A5 2C     LDA ram_002C
C - - - - - 0x0194FD 06:B4ED: 6A        ROR
C - - - - - 0x0194FE 06:B4EE: 90 88     BCC $B478
C - - - - - 0x019500 06:B4F0: 4C 1C D7  JMP $D71C
C D 1 - - - 0x019503 06:B4F3: BD 20 03  LDA ram_0320,X
C - - - - - 0x019506 06:B4F6: 6A        ROR
C - - - - - 0x019507 06:B4F7: 90 0F     BCC $B508
C - - - - - 0x019509 06:B4F9: 20 0E B5  JSR $B50E
C D 1 - - - 0x01950C 06:B4FC: 20 AE D9  JSR $D9AE
C - - - - - 0x01950F 06:B4FF: BD 44 03  LDA ram_0344,X
C - - - - - 0x019512 06:B502: 0A        ASL
C - - - - - 0x019513 06:B503: 0A        ASL
C - - - - - 0x019514 06:B504: A8        TAY
C - - - - - 0x019515 06:B505: 4C 06 B4  JMP $B406
C - - - - - 0x019518 06:B508: 20 4D B5  JSR $B54D
C - - - - - 0x01951B 06:B50B: 4C FC B4  JMP $B4FC
C - - - - - 0x01951E 06:B50E: 20 CA D7  JSR $D7CA
C - - - - - 0x019521 06:B511: F0 08     BEQ $B51B
C - - - - - 0x019523 06:B513: A5 2C     LDA ram_002C
C - - - - - 0x019525 06:B515: 6A        ROR
C - - - - - 0x019526 06:B516: 90 34     BCC $B54C
C - - - - - 0x019528 06:B518: 4C F0 D6  JMP $D6F0
C - - - - - 0x01952B 06:B51B: AD 00 03  LDA ram_0300
C - - - - - 0x01952E 06:B51E: C9 35     CMP #$35
C - - - - - 0x019530 06:B520: F0 04     BEQ $B526
C - - - - - 0x019532 06:B522: C9 37     CMP #$37
C - - - - - 0x019534 06:B524: D0 0B     BNE $B531
C - - - - - 0x019536 06:B526: BD 20 03  LDA ram_0320,X
C - - - - - 0x019539 06:B529: 29 22     AND #$22
C - - - - - 0x01953B 06:B52B: D0 1F     BNE $B54C
C - - - - - 0x01953D 06:B52D: A9 0C     LDA #$0C
C - - - - - 0x01953F 06:B52F: D0 09     BNE $B53A
C - - - - - 0x019541 06:B531: BD 20 03  LDA ram_0320,X
C - - - - - 0x019544 06:B534: 29 20     AND #$20
C - - - - - 0x019546 06:B536: D0 14     BNE $B54C
C - - - - - 0x019548 06:B538: A9 14     LDA #$14
C - - - - - 0x01954A 06:B53A: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01954D 06:B53D: A9 02     LDA #$02
C - - - - - 0x01954F 06:B53F: 20 4E B7  JSR $B74E
C - - - - - 0x019552 06:B542: A9 03     LDA #$03
C - - - - - 0x019554 06:B544: 9D 56 03  STA ram_0356,X
C - - - - - 0x019557 06:B547: A9 00     LDA #$00
C - - - - - 0x019559 06:B549: 9D 44 03  STA ram_0344,X
C - - - - - 0x01955C 06:B54C: 60        RTS
C - - - - - 0x01955D 06:B54D: 20 BF D7  JSR $D7BF
C - - - - - 0x019560 06:B550: F0 C9     BEQ $B51B
C - - - - - 0x019562 06:B552: A5 2C     LDA ram_002C
C - - - - - 0x019564 06:B554: 6A        ROR
C - - - - - 0x019565 06:B555: 90 F5     BCC $B54C
C - - - - - 0x019567 06:B557: 4C 0F D7  JMP $D70F
C - - - - - 0x01956A 06:B55A: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01956D 06:B55D: F0 05     BEQ $B564
C - - - - - 0x01956F 06:B55F: A0 14     LDY #$14
C - - - - - 0x019571 06:B561: 4C 06 B4  JMP $B406
C - - - - - 0x019574 06:B564: 20 3E E3  JSR $E33E
C - - - - - 0x019577 06:B567: BC 2C 03  LDY ram_032C,X
C - - - - - 0x01957A 06:B56A: C0 BF     CPY #$BF
C - - - - - 0x01957C 06:B56C: 90 06     BCC $B574
C - - - - - 0x01957E 06:B56E: 29 01     AND #$01
C - - - - - 0x019580 06:B570: D0 02     BNE $B574
C - - - - - 0x019582 06:B572: A9 03     LDA #$03
C - - - - - 0x019584 06:B574: A8        TAY
C - - - - - 0x019585 06:B575: B9 58 E3  LDA $E358,Y
C D 1 - - - 0x019588 06:B578: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01958B 06:B57B: 98        TYA
C - - - - - 0x01958C 06:B57C: 9D 56 03  STA ram_0356,X
C - - - - - 0x01958F 06:B57F: A9 02     LDA #$02
C - - - - - 0x019591 06:B581: 20 4E B7  JSR $B74E
C - - - - - 0x019594 06:B584: A9 00     LDA #$00
C - - - - - 0x019596 06:B586: 9D 44 03  STA ram_0344,X
C - - - - - 0x019599 06:B589: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01959C 06:B58C: C9 DF     CMP #$DF
C - - - - - 0x01959E 06:B58E: B0 1E     BCS $B5AE
C - - - - - 0x0195A0 06:B590: BD 56 03  LDA ram_0356,X
C - - - - - 0x0195A3 06:B593: C9 03     CMP #$03
C - - - - - 0x0195A5 06:B595: D0 17     BNE $B5AE
C - - - - - 0x0195A7 06:B597: BD 20 03  LDA ram_0320,X
C - - - - - 0x0195AA 06:B59A: 6A        ROR
C - - - - - 0x0195AB 06:B59B: 90 0A     BCC $B5A7
C - - - - - 0x0195AD 06:B59D: 29 10     AND #$10
C - - - - - 0x0195AF 06:B59F: D0 0A     BNE $B5AB
C - - - - - 0x0195B1 06:B5A1: 20 0E B5  JSR $B50E
C - - - - - 0x0195B4 06:B5A4: 4C AE B5  JMP $B5AE
C - - - - - 0x0195B7 06:B5A7: 29 10     AND #$10
C - - - - - 0x0195B9 06:B5A9: D0 F6     BNE $B5A1
C - - - - - 0x0195BB 06:B5AB: 20 4D B5  JSR $B54D
C D 1 - - - 0x0195BE 06:B5AE: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0195C1 06:B5B1: B9 5D E3  LDA $E35D,Y
C - - - - - 0x0195C4 06:B5B4: 18        CLC
C - - - - - 0x0195C5 06:B5B5: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x0195C8 06:B5B8: C9 DF     CMP #$DF
C - - - - - 0x0195CA 06:B5BA: 90 09     BCC $B5C5
C - - - - - 0x0195CC 06:B5BC: A0 DF     LDY #$DF
C - - - - - 0x0195CE 06:B5BE: C9 F8     CMP #$F8
C - - - - - 0x0195D0 06:B5C0: 90 02     BCC $B5C4
- - - - - - 0x0195D2 06:B5C2: A0        .byte $A0   ; 
- - - - - - 0x0195D3 06:B5C3: 00        .byte $00   ; 
C - - - - - 0x0195D4 06:B5C4: 98        TYA
C - - - - - 0x0195D5 06:B5C5: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0195D8 06:B5C8: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0195DB 06:B5CB: C0 18     CPY #$18
C - - - - - 0x0195DD 06:B5CD: 90 59     BCC $B628
C - - - - - 0x0195DF 06:B5CF: C9 DF     CMP #$DF
C - - - - - 0x0195E1 06:B5D1: 90 05     BCC $B5D8
C - - - - - 0x0195E3 06:B5D3: A0 FF     LDY #$FF
C - - - - - 0x0195E5 06:B5D5: 4C 06 B4  JMP $B406
C - - - - - 0x0195E8 06:B5D8: 85 00     STA ram_0000
C - - - - - 0x0195EA 06:B5DA: E6 00     INC ram_0000
C - - - - - 0x0195EC 06:B5DC: 20 58 D3  JSR $D358
C - - - - - 0x0195EF 06:B5DF: F0 23     BEQ $B604
C - - - - - 0x0195F1 06:B5E1: C9 02     CMP #$02
C - - - - - 0x0195F3 06:B5E3: F0 07     BEQ $B5EC
C - - - - - 0x0195F5 06:B5E5: 20 47 D3  JSR $D347
C - - - - - 0x0195F8 06:B5E8: D0 0E     BNE $B5F8
- - - - - - 0x0195FA 06:B5EA: F0        .byte $F0   ; 
- - - - - - 0x0195FB 06:B5EB: 18        .byte $18   ; 
C - - - - - 0x0195FC 06:B5EC: 20 47 D3  JSR $D347
C - - - - - 0x0195FF 06:B5EF: F0 13     BEQ $B604
C - - - - - 0x019601 06:B5F1: BD 56 03  LDA ram_0356,X
C - - - - - 0x019604 06:B5F4: C9 04     CMP #$04
C - - - - - 0x019606 06:B5F6: F0 0C     BEQ $B604
C - - - - - 0x019608 06:B5F8: 20 A8 D7  JSR $D7A8
C - - - - - 0x01960B 06:B5FB: BD 20 03  LDA ram_0320,X
C - - - - - 0x01960E 06:B5FE: 29 20     AND #$20
C - - - - - 0x019610 06:B600: D0 32     BNE $B634
C - - - - - 0x019612 06:B602: F0 0A     BEQ $B60E
C - - - - - 0x019614 06:B604: FE 4A 03  INC ram_034A,X
C - - - - - 0x019617 06:B607: A9 2F     LDA #$2F
C - - - - - 0x019619 06:B609: DD 4A 03  CMP ram_034A,X
C - - - - - 0x01961C 06:B60C: B0 03     BCS $B611
C - - - - - 0x01961E 06:B60E: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019621 06:B611: A0 0C     LDY #$0C
C - - - - - 0x019623 06:B613: AD 00 03  LDA ram_0300
C - - - - - 0x019626 06:B616: C9 38     CMP #$38
C - - - - - 0x019628 06:B618: D0 02     BNE $B61C
C - - - - - 0x01962A 06:B61A: A0 10     LDY #$10
C - - - - - 0x01962C 06:B61C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01962F 06:B61F: 29 20     AND #$20
C - - - - - 0x019631 06:B621: D0 02     BNE $B625
C - - - - - 0x019633 06:B623: A0 08     LDY #$08
C - - - - - 0x019635 06:B625: 4C 06 B4  JMP $B406
C - - - - - 0x019638 06:B628: 20 D5 D7  JSR $D7D5
C - - - - - 0x01963B 06:B62B: D0 D7     BNE $B604
C - - - - - 0x01963D 06:B62D: A9 18     LDA #$18
C - - - - - 0x01963F 06:B62F: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019642 06:B632: D0 D0     BNE $B604
C - - - - - 0x019644 06:B634: AD 00 03  LDA ram_0300
C - - - - - 0x019647 06:B637: C9 37     CMP #$37
C - - - - - 0x019649 06:B639: D0 0F     BNE $B64A
C - - - - - 0x01964B 06:B63B: BD 50 03  LDA ram_0350,X
C - - - - - 0x01964E 06:B63E: F0 0A     BEQ $B64A
C - - - - - 0x019650 06:B640: A9 00     LDA #$00
C - - - - - 0x019652 06:B642: 20 4E B7  JSR $B74E
C - - - - - 0x019655 06:B645: A0 00     LDY #$00
C - - - - - 0x019657 06:B647: 4C 06 B4  JMP $B406
C - - - - - 0x01965A 06:B64A: A9 30     LDA #$30
C - - - - - 0x01965C 06:B64C: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01965F 06:B64F: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019662 06:B652: D0 03     BNE $B657
C - - - - - 0x019664 06:B654: 4C 7F D7  JMP $D77F
C - - - - - 0x019667 06:B657: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01966A 06:B65A: 20 5F D0  JSR $D05F
C - - - - - 0x01966D 06:B65D: A8        TAY
C - - - - - 0x01966E 06:B65E: B9 65 B6  LDA $B665,Y
C - - - - - 0x019671 06:B661: A8        TAY
C - - - - - 0x019672 06:B662: 4C 06 B4  JMP $B406
- D 1 - - - 0x019675 06:B665: E4        .byte $E4   ; 
- D 1 - - - 0x019676 06:B666: E0        .byte $E0   ; 
- D 1 - - - 0x019677 06:B667: 10        .byte $10   ; 
C - - - - - 0x019678 06:B668: BD 26 03  LDA ram_0326,X
C - - - - - 0x01967B 06:B66B: 10 20     BPL $B68D
C - - - - - 0x01967D 06:B66D: BD 20 03  LDA ram_0320,X
C - - - - - 0x019680 06:B670: 29 0C     AND #$0C
C - - - - - 0x019682 06:B672: C9 0C     CMP #$0C
C - - - - - 0x019684 06:B674: D0 17     BNE $B68D
C - - - - - 0x019686 06:B676: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019689 06:B679: C9 28     CMP #$28
C - - - - - 0x01968B 06:B67B: D0 10     BNE $B68D
C - - - - - 0x01968D 06:B67D: AD 00 03  LDA ram_0300
C - - - - - 0x019690 06:B680: C9 01     CMP #$01
C - - - - - 0x019692 06:B682: F0 03     BEQ $B687
C - - - - - 0x019694 06:B684: 4C 73 B7  JMP $B773
C - - - - - 0x019697 06:B687: 4C 98 B7  JMP $B798
C - - - - - 0x01969A 06:B68A: FE 4A 03  INC ram_034A,X
C - - - - - 0x01969D 06:B68D: 60        RTS
C - - - - - 0x01969E 06:B68E: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0196A1 06:B691: F0 1C     BEQ $B6AF
C - - - - - 0x0196A3 06:B693: DE 4A 03  DEC ram_034A,X
C - - - - - 0x0196A6 06:B696: D0 D0     BNE $B668
C - - - - - 0x0196A8 06:B698: A9 08     LDA #$08
C - - - - - 0x0196AA 06:B69A: AC 00 03  LDY ram_0300
C - - - - - 0x0196AD 06:B69D: C0 38     CPY #$38
C - - - - - 0x0196AF 06:B69F: F0 0B     BEQ $B6AC
C - - - - - 0x0196B1 06:B6A1: C0 37     CPY #$37
C - - - - - 0x0196B3 06:B6A3: D0 05     BNE $B6AA
C - - - - - 0x0196B5 06:B6A5: BD 22 03  LDA ram_0322,X
C - - - - - 0x0196B8 06:B6A8: 30 E0     BMI $B68A
C - - - - - 0x0196BA 06:B6AA: A9 00     LDA #$00
C - - - - - 0x0196BC 06:B6AC: 20 4E B7  JSR $B74E
C - - - - - 0x0196BF 06:B6AF: 20 11 B8  JSR $B811
C - - - - - 0x0196C2 06:B6B2: AD 00 03  LDA ram_0300
C - - - - - 0x0196C5 06:B6B5: C9 19     CMP #$19
C - - - - - 0x0196C7 06:B6B7: F0 04     BEQ $B6BD
C - - - - - 0x0196C9 06:B6B9: C9 38     CMP #$38
C - - - - - 0x0196CB 06:B6BB: D0 3E     BNE $B6FB
C - - - - - 0x0196CD 06:B6BD: BD 20 03  LDA ram_0320,X
C - - - - - 0x0196D0 06:B6C0: 29 40     AND #$40
C - - - - - 0x0196D2 06:B6C2: F0 37     BEQ $B6FB
C - - - - - 0x0196D4 06:B6C4: A5 2C     LDA ram_002C
C - - - - - 0x0196D6 06:B6C6: 29 07     AND #$07
C - - - - - 0x0196D8 06:B6C8: D0 31     BNE $B6FB
C - - - - - 0x0196DA 06:B6CA: A4 7A     LDY ram_007A
C - - - - - 0x0196DC 06:B6CC: B9 8F 00  LDA ram_008F,Y
C - - - - - 0x0196DF 06:B6CF: 10 27     BPL $B6F8
C - - - - - 0x0196E1 06:B6D1: B9 7B 00  LDA ram_007B,Y
C - - - - - 0x0196E4 06:B6D4: 38        SEC
C - - - - - 0x0196E5 06:B6D5: FD 32 03  SBC ram_0332,X
C - - - - - 0x0196E8 06:B6D8: B0 03     BCS $B6DD
C - - - - - 0x0196EA 06:B6DA: 20 73 D0  JSR $D073
C - - - - - 0x0196ED 06:B6DD: C9 10     CMP #$10
C - - - - - 0x0196EF 06:B6DF: B0 17     BCS $B6F8
C - - - - - 0x0196F1 06:B6E1: A9 20     LDA #$20
C - - - - - 0x0196F3 06:B6E3: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0196F6 06:B6E6: A9 08     LDA #$08
C - - - - - 0x0196F8 06:B6E8: AC 00 03  LDY ram_0300
C - - - - - 0x0196FB 06:B6EB: C0 38     CPY #$38
C - - - - - 0x0196FD 06:B6ED: D0 07     BNE $B6F6
C - - - - - 0x0196FF 06:B6EF: A9 30     LDA #$30
C - - - - - 0x019701 06:B6F1: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019704 06:B6F4: A9 04     LDA #$04
C - - - - - 0x019706 06:B6F6: D0 56     BNE $B74E
C - - - - - 0x019708 06:B6F8: 88        DEY
C - - - - - 0x019709 06:B6F9: 10 D1     BPL $B6CC
C - - - - - 0x01970B 06:B6FB: A5 2C     LDA ram_002C
C - - - - - 0x01970D 06:B6FD: 29 3F     AND #$3F
C - - - - - 0x01970F 06:B6FF: D0 59     BNE $B75A
C - - - - - 0x019711 06:B701: 20 64 D0  JSR $D064
C - - - - - 0x019714 06:B704: 6A        ROR
C - - - - - 0x019715 06:B705: B0 53     BCS $B75A
C - - - - - 0x019717 06:B707: 29 07     AND #$07
C - - - - - 0x019719 06:B709: BC 26 03  LDY ram_0326,X
C - - - - - 0x01971C 06:B70C: 30 03     BMI $B711
C - - - - - 0x01971E 06:B70E: 4C 27 B7  JMP $B727
C - - - - - 0x019721 06:B711: 18        CLC
C - - - - - 0x019722 06:B712: 69 08     ADC #$08
C - - - - - 0x019724 06:B714: AC 00 03  LDY ram_0300
C - - - - - 0x019727 06:B717: C0 38     CPY #$38
C - - - - - 0x019729 06:B719: F0 09     BEQ $B724
C - - - - - 0x01972B 06:B71B: C0 01     CPY #$01
C - - - - - 0x01972D 06:B71D: D0 08     BNE $B727
C - - - - - 0x01972F 06:B71F: 18        CLC
C - - - - - 0x019730 06:B720: 69 08     ADC #$08
C - - - - - 0x019732 06:B722: D0 03     BNE $B727
C - - - - - 0x019734 06:B724: 18        CLC
C - - - - - 0x019735 06:B725: 69 10     ADC #$10
C D 1 - - - 0x019737 06:B727: A8        TAY
C - - - - - 0x019738 06:B728: B9 C4 B1  LDA $B1C4,Y
C - - - - - 0x01973B 06:B72B: 20 5B B7  JSR $B75B
C - - - - - 0x01973E 06:B72E: 85 05     STA ram_0005
C - - - - - 0x019740 06:B730: F0 1E     BEQ $B750
C - - - - - 0x019742 06:B732: C9 10     CMP #$10
C - - - - - 0x019744 06:B734: F0 11     BEQ $B747
C - - - - - 0x019746 06:B736: AC 00 03  LDY ram_0300
C - - - - - 0x019749 06:B739: C0 38     CPY #$38
C - - - - - 0x01974B 06:B73B: D0 06     BNE $B743
C - - - - - 0x01974D 06:B73D: 20 43 B7  JSR $B743
C - - - - - 0x019750 06:B740: 4C 73 B7  JMP $B773
C - - - - - 0x019753 06:B743: A9 40     LDA #$40
C - - - - - 0x019755 06:B745: D0 02     BNE $B749
C - - - - - 0x019757 06:B747: A9 20     LDA #$20
C - - - - - 0x019759 06:B749: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01975C 06:B74C: D0 02     BNE $B750
C - - - - - 0x01975E 06:B74E: 85 05     STA ram_0005
C - - - - - 0x019760 06:B750: BD 20 03  LDA ram_0320,X
C - - - - - 0x019763 06:B753: 29 C1     AND #$C1
C - - - - - 0x019765 06:B755: 05 05     ORA ram_0005
C - - - - - 0x019767 06:B757: 9D 20 03  STA ram_0320,X
C - - - - - 0x01976A 06:B75A: 60        RTS
C - - - - - 0x01976B 06:B75B: 48        PHA
C - - - - - 0x01976C 06:B75C: C9 04     CMP #$04
C - - - - - 0x01976E 06:B75E: D0 11     BNE $B771
C - - - - - 0x019770 06:B760: AD 00 03  LDA ram_0300
C - - - - - 0x019773 06:B763: C9 01     CMP #$01
C - - - - - 0x019775 06:B765: D0 0A     BNE $B771
C - - - - - 0x019777 06:B767: BD 26 03  LDA ram_0326,X
C - - - - - 0x01977A 06:B76A: 30 05     BMI $B771
C - - - - - 0x01977C 06:B76C: A9 31     LDA #$31
C - - - - - 0x01977E 06:B76E: 20 20 C4  JSR $C420
C - - - - - 0x019781 06:B771: 68        PLA
C - - - - - 0x019782 06:B772: 60        RTS
C D 1 - - - 0x019783 06:B773: A9 31     LDA #$31
C - - - - - 0x019785 06:B775: 20 20 C4  JSR $C420
C - - - - - 0x019788 06:B778: A9 F0     LDA #$F0
C - - - - - 0x01978A 06:B77A: AC 00 03  LDY ram_0300
C - - - - - 0x01978D 06:B77D: C0 35     CPY #$35
C - - - - - 0x01978F 06:B77F: F0 08     BEQ $B789
C - - - - - 0x019791 06:B781: A9 28     LDA #$28
C - - - - - 0x019793 06:B783: C0 38     CPY #$38
C - - - - - 0x019795 06:B785: F0 02     BEQ $B789
C - - - - - 0x019797 06:B787: A9 EE     LDA #$EE
C - - - - - 0x019799 06:B789: 18        CLC
C - - - - - 0x01979A 06:B78A: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01979D 06:B78D: 9D 2E 03  STA ram_032E,X
C - - - - - 0x0197A0 06:B790: A9 00     LDA #$00
C - - - - - 0x0197A2 06:B792: 9D 46 03  STA ram_0346,X
C - - - - - 0x0197A5 06:B795: 4C A6 B7  JMP $B7A6
C D 1 - - - 0x0197A8 06:B798: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0197AB 06:B79B: 38        SEC
C - - - - - 0x0197AC 06:B79C: E9 17     SBC #$17
C - - - - - 0x0197AE 06:B79E: 9D 2E 03  STA ram_032E,X
C - - - - - 0x0197B1 06:B7A1: A9 01     LDA #$01
C - - - - - 0x0197B3 06:B7A3: 9D 46 03  STA ram_0346,X
C D 1 - - - 0x0197B6 06:B7A6: A9 C4     LDA #$C4
C - - - - - 0x0197B8 06:B7A8: 85 00     STA ram_0000
C - - - - - 0x0197BA 06:B7AA: BD 20 03  LDA ram_0320,X
C - - - - - 0x0197BD 06:B7AD: 29 01     AND #$01
C - - - - - 0x0197BF 06:B7AF: 05 00     ORA ram_0000
C - - - - - 0x0197C1 06:B7B1: 9D 22 03  STA ram_0322,X
C - - - - - 0x0197C4 06:B7B4: AC 00 03  LDY ram_0300
C - - - - - 0x0197C7 06:B7B7: C0 37     CPY #$37
C - - - - - 0x0197C9 06:B7B9: D0 1E     BNE $B7D9
C - - - - - 0x0197CB 06:B7BB: 29 F1     AND #$F1
C - - - - - 0x0197CD 06:B7BD: 09 08     ORA #$08
C - - - - - 0x0197CF 06:B7BF: 9D 22 03  STA ram_0322,X
C - - - - - 0x0197D2 06:B7C2: A9 00     LDA #$00
C - - - - - 0x0197D4 06:B7C4: 9D 58 03  STA ram_0358,X
C - - - - - 0x0197D7 06:B7C7: A9 08     LDA #$08
C - - - - - 0x0197D9 06:B7C9: 9D 4C 03  STA ram_034C,X
C - - - - - 0x0197DC 06:B7CC: 20 64 D0  JSR $D064
C - - - - - 0x0197DF 06:B7CF: 29 03     AND #$03
C - - - - - 0x0197E1 06:B7D1: C9 03     CMP #$03
C - - - - - 0x0197E3 06:B7D3: D0 0B     BNE $B7E0
C - - - - - 0x0197E5 06:B7D5: A9 02     LDA #$02
C - - - - - 0x0197E7 06:B7D7: D0 07     BNE $B7E0
C - - - - - 0x0197E9 06:B7D9: A9 20     LDA #$20
C - - - - - 0x0197EB 06:B7DB: 9D 4C 03  STA ram_034C,X
C - - - - - 0x0197EE 06:B7DE: A9 04     LDA #$04
C - - - - - 0x0197F0 06:B7E0: 9D 28 03  STA ram_0328,X
C - - - - - 0x0197F3 06:B7E3: A0 00     LDY #$00
C - - - - - 0x0197F5 06:B7E5: AD 00 03  LDA ram_0300
C - - - - - 0x0197F8 06:B7E8: C9 38     CMP #$38
C - - - - - 0x0197FA 06:B7EA: F0 02     BEQ $B7EE
C - - - - - 0x0197FC 06:B7EC: A0 0E     LDY #$0E
C - - - - - 0x0197FE 06:B7EE: 84 00     STY ram_0000
C - - - - - 0x019800 06:B7F0: BD 20 03  LDA ram_0320,X
C - - - - - 0x019803 06:B7F3: 29 01     AND #$01
C - - - - - 0x019805 06:B7F5: F0 06     BEQ $B7FD
C - - - - - 0x019807 06:B7F7: A9 F2     LDA #$F2
C - - - - - 0x019809 06:B7F9: 85 00     STA ram_0000
C - - - - - 0x01980B 06:B7FB: A9 FF     LDA #$FF
C - - - - - 0x01980D 06:B7FD: 85 01     STA ram_0001
C - - - - - 0x01980F 06:B7FF: BD 38 03  LDA ram_0338,X
C - - - - - 0x019812 06:B802: 18        CLC
C - - - - - 0x019813 06:B803: 65 00     ADC ram_0000
C - - - - - 0x019815 06:B805: 9D 3A 03  STA ram_033A,X
C - - - - - 0x019818 06:B808: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01981B 06:B80B: 65 01     ADC ram_0001
C - - - - - 0x01981D 06:B80D: 9D 40 03  STA ram_0340,X
C - - - - - 0x019820 06:B810: 60        RTS
C - - - - - 0x019821 06:B811: A9 7F     LDA #$7F
C - - - - - 0x019823 06:B813: 20 BD D6  JSR $D6BD
C - - - - - 0x019826 06:B816: 84 05     STY ram_0005
C - - - - - 0x019828 06:B818: BD 20 03  LDA ram_0320,X
C - - - - - 0x01982B 06:B81B: 29 FE     AND #$FE
C - - - - - 0x01982D 06:B81D: 05 05     ORA ram_0005
C - - - - - 0x01982F 06:B81F: 9D 20 03  STA ram_0320,X
C - - - - - 0x019832 06:B822: 60        RTS
- D 1 - - - 0x019833 06:B823: 00        .byte $00   ; 
- D 1 - - - 0x019834 06:B824: 00        .byte $00   ; 
- D 1 - - - 0x019835 06:B825: 20        .byte $20   ; 
- D 1 - - - 0x019836 06:B826: 04        .byte $04   ; 
- D 1 - - - 0x019837 06:B827: 00        .byte $00   ; 
- D 1 - - - 0x019838 06:B828: 00        .byte $00   ; 
- D 1 - - - 0x019839 06:B829: 18        .byte $18   ; 
- D 1 - - - 0x01983A 06:B82A: 04        .byte $04   ; 
- D 1 - - - 0x01983B 06:B82B: 00        .byte $00   ; 
- D 1 - - - 0x01983C 06:B82C: 00        .byte $00   ; 
- D 1 - - - 0x01983D 06:B82D: 00        .byte $00   ; 
- D 1 - - - 0x01983E 06:B82E: 10        .byte $10   ; 
- D 1 - - - 0x01983F 06:B82F: 10        .byte $10   ; 
- D 1 - - - 0x019840 06:B830: 0C        .byte $0C   ; 
- D 1 - - - 0x019841 06:B831: 0C        .byte $0C   ; 
- D 1 - - - 0x019842 06:B832: 0C        .byte $0C   ; 
C D 1 - - - 0x019843 06:B833: 20 39 B8  JSR $B839
C - - - - - 0x019846 06:B836: 4C 73 A9  JMP $A973
C - - - - - 0x019849 06:B839: A2 01     LDX #$01
C - - - - - 0x01984B 06:B83B: 86 1A     STX ram_001A
C - - - - - 0x01984D 06:B83D: A6 1A     LDX ram_001A
C - - - - - 0x01984F 06:B83F: 20 95 B8  JSR $B895
C - - - - - 0x019852 06:B842: A6 1A     LDX ram_001A
C - - - - - 0x019854 06:B844: BD 20 03  LDA ram_0320,X
C - - - - - 0x019857 06:B847: C9 E0     CMP #$E0
C - - - - - 0x019859 06:B849: B0 19     BCS $B864
C - - - - - 0x01985B 06:B84B: C9 C0     CMP #$C0
C - - - - - 0x01985D 06:B84D: 90 15     BCC $B864
C - - - - - 0x01985F 06:B84F: 20 6D B8  JSR $B86D
C - - - - - 0x019862 06:B852: 20 62 D5  JSR $D562
C - - - - - 0x019865 06:B855: 90 0D     BCC $B864
C - - - - - 0x019867 06:B857: AD 00 03  LDA ram_0300
C - - - - - 0x01986A 06:B85A: C9 07     CMP #$07
C - - - - - 0x01986C 06:B85C: D0 06     BNE $B864
C - - - - - 0x01986E 06:B85E: A5 3A     LDA ram_003A
C - - - - - 0x019870 06:B860: 09 20     ORA #$20
C - - - - - 0x019872 06:B862: 85 3A     STA ram_003A
C - - - - - 0x019874 06:B864: 60        RTS
C D 1 - - - 0x019875 06:B865: A9 4A     LDA #$4A
C - - - - - 0x019877 06:B867: 8D 17 03  STA ram_0317
C - - - - - 0x01987A 06:B86A: 4C 7F D7  JMP $D77F
C - - - - - 0x01987D 06:B86D: A0 00     LDY #$00
C - - - - - 0x01987F 06:B86F: BD 20 03  LDA ram_0320,X
C - - - - - 0x019882 06:B872: 29 10     AND #$10
C - - - - - 0x019884 06:B874: F0 02     BEQ $B878
C - - - - - 0x019886 06:B876: A0 04     LDY #$04
C - - - - - 0x019888 06:B878: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01988B 06:B87B: 18        CLC
C - - - - - 0x01988C 06:B87C: 79 23 B8  ADC $B823,Y
C - - - - - 0x01988F 06:B87F: 85 AD     STA ram_00AD
C - - - - - 0x019891 06:B881: BD 32 03  LDA ram_0332,X
C - - - - - 0x019894 06:B884: 18        CLC
C - - - - - 0x019895 06:B885: 79 24 B8  ADC $B824,Y
C - - - - - 0x019898 06:B888: 85 AE     STA ram_00AE
C - - - - - 0x01989A 06:B88A: B9 25 B8  LDA $B825,Y
C - - - - - 0x01989D 06:B88D: 85 AF     STA ram_00AF
C - - - - - 0x01989F 06:B88F: B9 26 B8  LDA $B826,Y
C - - - - - 0x0198A2 06:B892: 85 B0     STA ram_00B0
C - - - - - 0x0198A4 06:B894: 60        RTS
C - - - - - 0x0198A5 06:B895: BD 20 03  LDA ram_0320,X
C - - - - - 0x0198A8 06:B898: 10 FA     BPL $B894
C - - - - - 0x0198AA 06:B89A: 4A        LSR
C - - - - - 0x0198AB 06:B89B: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x0198AE 06:B89E: A2        .byte $A2   ; 
- D 1 - I - 0x0198AF 06:B89F: B9        .byte $B9   ; 
- D 1 - I - 0x0198B0 06:B8A0: AB        .byte $AB   ; 
- D 1 - I - 0x0198B1 06:B8A1: B8        .byte $B8   ; 
- - - - - - 0x0198B2 06:B8A2: AB        .byte $AB   ; 
- - - - - - 0x0198B3 06:B8A3: B8        .byte $B8   ; 
- D 1 - I - 0x0198B4 06:B8A4: 73        .byte $73   ; <s>
- D 1 - I - 0x0198B5 06:B8A5: B9        .byte $B9   ; 
- - - - - - 0x0198B6 06:B8A6: 49        .byte $49   ; <I>
- - - - - - 0x0198B7 06:B8A7: BA        .byte $BA   ; 
- D 1 - I - 0x0198B8 06:B8A8: AB        .byte $AB   ; 
- D 1 - I - 0x0198B9 06:B8A9: B8        .byte $B8   ; 
- D 1 - I - 0x0198BA 06:B8AA: AB        .byte $AB   ; 
- D 1 - I - 0x0198BB 06:B8AB: B8        .byte $B8   ; 
C - - - - - 0x0198BC 06:B8AC: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0198BF 06:B8AF: 85 00     STA ram_0000
C - - - - - 0x0198C1 06:B8B1: E6 00     INC ram_0000
C - - - - - 0x0198C3 06:B8B3: 20 58 D3  JSR $D358
C - - - - - 0x0198C6 06:B8B6: D0 07     BNE $B8BF
C - - - - - 0x0198C8 06:B8B8: A9 1C     LDA #$1C
C - - - - - 0x0198CA 06:B8BA: A0 02     LDY #$02
C - - - - - 0x0198CC 06:B8BC: 4C 92 B9  JMP $B992
C - - - - - 0x0198CF 06:B8BF: 20 63 BA  JSR $BA63
C - - - - - 0x0198D2 06:B8C2: BD 20 03  LDA ram_0320,X
C - - - - - 0x0198D5 06:B8C5: 29 08     AND #$08
C - - - - - 0x0198D7 06:B8C7: D0 03     BNE $B8CC
C - - - - - 0x0198D9 06:B8C9: 4C 13 B9  JMP $B913
C - - - - - 0x0198DC 06:B8CC: A0 0C     LDY #$0C
C - - - - - 0x0198DE 06:B8CE: BD 20 03  LDA ram_0320,X
C - - - - - 0x0198E1 06:B8D1: 29 04     AND #$04
C - - - - - 0x0198E3 06:B8D3: F0 0B     BEQ $B8E0
C - - - - - 0x0198E5 06:B8D5: A0 14     LDY #$14
C - - - - - 0x0198E7 06:B8D7: BD 4A 03  LDA ram_034A,X
C - - - - - 0x0198EA 06:B8DA: C9 28     CMP #$28
C - - - - - 0x0198EC 06:B8DC: 90 02     BCC $B8E0
C - - - - - 0x0198EE 06:B8DE: A0 10     LDY #$10
C D 1 - - - 0x0198F0 06:B8E0: BD 38 03  LDA ram_0338,X
C - - - - - 0x0198F3 06:B8E3: 85 00     STA ram_0000
C - - - - - 0x0198F5 06:B8E5: BD 3E 03  LDA ram_033E,X
C - - - - - 0x0198F8 06:B8E8: 85 01     STA ram_0001
C - - - - - 0x0198FA 06:B8EA: 20 7B D6  JSR $D67B
C - - - - - 0x0198FD 06:B8ED: 90 03     BCC $B8F2
C - - - - - 0x0198FF 06:B8EF: 4C 65 B8  JMP $B865
C - - - - - 0x019902 06:B8F2: 20 AC D6  JSR $D6AC
C - - - - - 0x019905 06:B8F5: 90 03     BCC $B8FA
C - - - - - 0x019907 06:B8F7: 4C 41 D7  JMP $D741
C - - - - - 0x01990A 06:B8FA: 20 25 D7  JSR $D725
C - - - - - 0x01990D 06:B8FD: C0 E0     CPY #$E0
C - - - - - 0x01990F 06:B8FF: 90 03     BCC $B904
- - - - - - 0x019911 06:B901: 4C        .byte $4C   ; <L>
- - - - - - 0x019912 06:B902: 89        .byte $89   ; 
- - - - - - 0x019913 06:B903: D9        .byte $D9   ; 
C - - - - - 0x019914 06:B904: 98        TYA
C - - - - - 0x019915 06:B905: 18        CLC
C - - - - - 0x019916 06:B906: 6D 02 03  ADC ram_0302
C - - - - - 0x019919 06:B909: 85 01     STA ram_0001
C - - - - - 0x01991B 06:B90B: AD 03 03  LDA ram_0303
C - - - - - 0x01991E 06:B90E: 85 02     STA ram_0002
C - - - - - 0x019920 06:B910: 4C 33 CE  JMP $CE33
C D 1 - - - 0x019923 06:B913: BD 20 03  LDA ram_0320,X
C - - - - - 0x019926 06:B916: 6A        ROR
C - - - - - 0x019927 06:B917: 90 0F     BCC $B928
C - - - - - 0x019929 06:B919: 20 2E B9  JSR $B92E
C D 1 - - - 0x01992C 06:B91C: 20 AE D9  JSR $D9AE
C - - - - - 0x01992F 06:B91F: BD 44 03  LDA ram_0344,X
C - - - - - 0x019932 06:B922: 0A        ASL
C - - - - - 0x019933 06:B923: 0A        ASL
C - - - - - 0x019934 06:B924: A8        TAY
C - - - - - 0x019935 06:B925: 4C E0 B8  JMP $B8E0
C - - - - - 0x019938 06:B928: 20 62 B9  JSR $B962
C - - - - - 0x01993B 06:B92B: 4C 1C B9  JMP $B91C
C - - - - - 0x01993E 06:B92E: 20 CA D7  JSR $D7CA
C - - - - - 0x019941 06:B931: C9 01     CMP #$01
C - - - - - 0x019943 06:B933: F0 0B     BEQ $B940
C - - - - - 0x019945 06:B935: 20 F0 D6  JSR $D6F0
C - - - - - 0x019948 06:B938: A5 2C     LDA ram_002C
C - - - - - 0x01994A 06:B93A: 6A        ROR
C - - - - - 0x01994B 06:B93B: 90 24     BCC $B961
C - - - - - 0x01994D 06:B93D: 4C F0 D6  JMP $D6F0
C - - - - - 0x019950 06:B940: BD 20 03  LDA ram_0320,X
C - - - - - 0x019953 06:B943: 29 20     AND #$20
C - - - - - 0x019955 06:B945: D0 1A     BNE $B961
C - - - - - 0x019957 06:B947: A5 5E     LDA ram_005E
C - - - - - 0x019959 06:B949: C9 03     CMP #$03
C - - - - - 0x01995B 06:B94B: F0 14     BEQ $B961
C - - - - - 0x01995D 06:B94D: A9 14     LDA #$14
C - - - - - 0x01995F 06:B94F: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019962 06:B952: A9 02     LDA #$02
C - - - - - 0x019964 06:B954: 20 AD BA  JSR $BAAD
C - - - - - 0x019967 06:B957: A9 03     LDA #$03
C - - - - - 0x019969 06:B959: 9D 56 03  STA ram_0356,X
C - - - - - 0x01996C 06:B95C: A9 00     LDA #$00
C - - - - - 0x01996E 06:B95E: 9D 44 03  STA ram_0344,X
C - - - - - 0x019971 06:B961: 60        RTS
C - - - - - 0x019972 06:B962: 20 BF D7  JSR $D7BF
C - - - - - 0x019975 06:B965: C9 01     CMP #$01
C - - - - - 0x019977 06:B967: F0 D7     BEQ $B940
C - - - - - 0x019979 06:B969: 20 0F D7  JSR $D70F
C - - - - - 0x01997C 06:B96C: A5 2C     LDA ram_002C
C - - - - - 0x01997E 06:B96E: 6A        ROR
C - - - - - 0x01997F 06:B96F: 90 F0     BCC $B961
C - - - - - 0x019981 06:B971: 4C 0F D7  JMP $D70F
C - - - - - 0x019984 06:B974: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019987 06:B977: F0 05     BEQ $B97E
C - - - - - 0x019989 06:B979: A0 18     LDY #$18
C - - - - - 0x01998B 06:B97B: 4C E0 B8  JMP $B8E0
C - - - - - 0x01998E 06:B97E: 20 3E E3  JSR $E33E
C - - - - - 0x019991 06:B981: BC 2C 03  LDY ram_032C,X
C - - - - - 0x019994 06:B984: C0 BF     CPY #$BF
C - - - - - 0x019996 06:B986: 90 06     BCC $B98E
C - - - - - 0x019998 06:B988: 29 01     AND #$01
C - - - - - 0x01999A 06:B98A: D0 02     BNE $B98E
C - - - - - 0x01999C 06:B98C: A9 03     LDA #$03
C - - - - - 0x01999E 06:B98E: A8        TAY
C - - - - - 0x01999F 06:B98F: B9 58 E3  LDA $E358,Y
C D 1 - - - 0x0199A2 06:B992: 9D 4A 03  STA ram_034A,X
C - - - - - 0x0199A5 06:B995: 98        TYA
C - - - - - 0x0199A6 06:B996: 9D 56 03  STA ram_0356,X
C - - - - - 0x0199A9 06:B999: A9 02     LDA #$02
C - - - - - 0x0199AB 06:B99B: 20 AD BA  JSR $BAAD
C - - - - - 0x0199AE 06:B99E: A9 00     LDA #$00
C - - - - - 0x0199B0 06:B9A0: 9D 44 03  STA ram_0344,X
C - - - - - 0x0199B3 06:B9A3: BD 2C 03  LDA ram_032C,X
C - - - - - 0x0199B6 06:B9A6: C9 DF     CMP #$DF
C - - - - - 0x0199B8 06:B9A8: B0 1E     BCS $B9C8
C - - - - - 0x0199BA 06:B9AA: BD 56 03  LDA ram_0356,X
C - - - - - 0x0199BD 06:B9AD: C9 03     CMP #$03
C - - - - - 0x0199BF 06:B9AF: D0 17     BNE $B9C8
C - - - - - 0x0199C1 06:B9B1: BD 20 03  LDA ram_0320,X
C - - - - - 0x0199C4 06:B9B4: 6A        ROR
C - - - - - 0x0199C5 06:B9B5: 90 0A     BCC $B9C1
C - - - - - 0x0199C7 06:B9B7: 29 10     AND #$10
C - - - - - 0x0199C9 06:B9B9: D0 0A     BNE $B9C5
C - - - - - 0x0199CB 06:B9BB: 20 2E B9  JSR $B92E
C - - - - - 0x0199CE 06:B9BE: 4C C8 B9  JMP $B9C8
C - - - - - 0x0199D1 06:B9C1: 29 10     AND #$10
C - - - - - 0x0199D3 06:B9C3: D0 F6     BNE $B9BB
C - - - - - 0x0199D5 06:B9C5: 20 62 B9  JSR $B962
C D 1 - - - 0x0199D8 06:B9C8: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0199DB 06:B9CB: B9 5D E3  LDA $E35D,Y
C - - - - - 0x0199DE 06:B9CE: 18        CLC
C - - - - - 0x0199DF 06:B9CF: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x0199E2 06:B9D2: C9 DF     CMP #$DF
C - - - - - 0x0199E4 06:B9D4: 90 09     BCC $B9DF
C - - - - - 0x0199E6 06:B9D6: A0 DF     LDY #$DF
C - - - - - 0x0199E8 06:B9D8: C9 F8     CMP #$F8
C - - - - - 0x0199EA 06:B9DA: 90 02     BCC $B9DE
- - - - - - 0x0199EC 06:B9DC: A0        .byte $A0   ; 
- - - - - - 0x0199ED 06:B9DD: 00        .byte $00   ; 
C - - - - - 0x0199EE 06:B9DE: 98        TYA
C - - - - - 0x0199EF 06:B9DF: 9D 2C 03  STA ram_032C,X
C - - - - - 0x0199F2 06:B9E2: BC 4A 03  LDY ram_034A,X
C - - - - - 0x0199F5 06:B9E5: C0 18     CPY #$18
C - - - - - 0x0199F7 06:B9E7: 90 50     BCC $BA39
C - - - - - 0x0199F9 06:B9E9: C9 DF     CMP #$DF
C - - - - - 0x0199FB 06:B9EB: 90 05     BCC $B9F2
C - - - - - 0x0199FD 06:B9ED: A0 FF     LDY #$FF
C - - - - - 0x0199FF 06:B9EF: 4C E0 B8  JMP $B8E0
C - - - - - 0x019A02 06:B9F2: 85 00     STA ram_0000
C - - - - - 0x019A04 06:B9F4: E6 00     INC ram_0000
C - - - - - 0x019A06 06:B9F6: 20 58 D3  JSR $D358
C - - - - - 0x019A09 06:B9F9: F0 23     BEQ $BA1E
C - - - - - 0x019A0B 06:B9FB: C9 02     CMP #$02
C - - - - - 0x019A0D 06:B9FD: F0 07     BEQ $BA06
C - - - - - 0x019A0F 06:B9FF: 20 47 D3  JSR $D347
C - - - - - 0x019A12 06:BA02: D0 0E     BNE $BA12
- - - - - - 0x019A14 06:BA04: F0        .byte $F0   ; 
- - - - - - 0x019A15 06:BA05: 18        .byte $18   ; 
C - - - - - 0x019A16 06:BA06: 20 47 D3  JSR $D347
C - - - - - 0x019A19 06:BA09: F0 13     BEQ $BA1E
C - - - - - 0x019A1B 06:BA0B: BD 56 03  LDA ram_0356,X
C - - - - - 0x019A1E 06:BA0E: C9 04     CMP #$04
C - - - - - 0x019A20 06:BA10: F0 0C     BEQ $BA1E
C - - - - - 0x019A22 06:BA12: 20 A8 D7  JSR $D7A8
C - - - - - 0x019A25 06:BA15: BD 20 03  LDA ram_0320,X
C - - - - - 0x019A28 06:BA18: 29 20     AND #$20
C - - - - - 0x019A2A 06:BA1A: D0 29     BNE $BA45
C - - - - - 0x019A2C 06:BA1C: F0 0A     BEQ $BA28
C - - - - - 0x019A2E 06:BA1E: FE 4A 03  INC ram_034A,X
C - - - - - 0x019A31 06:BA21: A9 2F     LDA #$2F
C - - - - - 0x019A33 06:BA23: DD 4A 03  CMP ram_034A,X
C - - - - - 0x019A36 06:BA26: B0 03     BCS $BA2B
C - - - - - 0x019A38 06:BA28: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019A3B 06:BA2B: A0 18     LDY #$18
C - - - - - 0x019A3D 06:BA2D: BD 20 03  LDA ram_0320,X
C - - - - - 0x019A40 06:BA30: 29 20     AND #$20
C - - - - - 0x019A42 06:BA32: D0 02     BNE $BA36
C - - - - - 0x019A44 06:BA34: A0 08     LDY #$08
C - - - - - 0x019A46 06:BA36: 4C E0 B8  JMP $B8E0
C - - - - - 0x019A49 06:BA39: 20 D5 D7  JSR $D7D5
C - - - - - 0x019A4C 06:BA3C: D0 E0     BNE $BA1E
C - - - - - 0x019A4E 06:BA3E: A9 18     LDA #$18
C - - - - - 0x019A50 06:BA40: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019A53 06:BA43: D0 D9     BNE $BA1E
- - - - - - 0x019A55 06:BA45: A9        .byte $A9   ; 
- - - - - - 0x019A56 06:BA46: 30        .byte $30   ; <0>
- - - - - - 0x019A57 06:BA47: 9D        .byte $9D   ; 
- - - - - - 0x019A58 06:BA48: 4A        .byte $4A   ; <J>
- - - - - - 0x019A59 06:BA49: 03        .byte $03   ; 
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
C - - - - - 0x019A73 06:BA63: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019A76 06:BA66: F0 1D     BEQ $BA85
C - - - - - 0x019A78 06:BA68: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019A7B 06:BA6B: F0 13     BEQ $BA80
C - - - - - 0x019A7D 06:BA6D: BD 20 03  LDA ram_0320,X
C - - - - - 0x019A80 06:BA70: 29 0C     AND #$0C
C - - - - - 0x019A82 06:BA72: C9 0C     CMP #$0C
C - - - - - 0x019A84 06:BA74: D0 43     BNE $BAB9
C - - - - - 0x019A86 06:BA76: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019A89 06:BA79: C9 28     CMP #$28
C - - - - - 0x019A8B 06:BA7B: D0 3C     BNE $BAB9
C - - - - - 0x019A8D 06:BA7D: 4C BA BA  JMP $BABA
C - - - - - 0x019A90 06:BA80: A9 00     LDA #$00
C - - - - - 0x019A92 06:BA82: 20 AD BA  JSR $BAAD
C - - - - - 0x019A95 06:BA85: 20 E1 BA  JSR $BAE1
C - - - - - 0x019A98 06:BA88: A5 2C     LDA ram_002C
C - - - - - 0x019A9A 06:BA8A: 29 3F     AND #$3F
C - - - - - 0x019A9C 06:BA8C: D0 2B     BNE $BAB9
C - - - - - 0x019A9E 06:BA8E: 20 64 D0  JSR $D064
C - - - - - 0x019AA1 06:BA91: 6A        ROR
C - - - - - 0x019AA2 06:BA92: B0 25     BCS $BAB9
C - - - - - 0x019AA4 06:BA94: 29 07     AND #$07
C - - - - - 0x019AA6 06:BA96: A8        TAY
C - - - - - 0x019AA7 06:BA97: B9 2B B8  LDA $B82B,Y
C - - - - - 0x019AAA 06:BA9A: 85 05     STA ram_0005
C - - - - - 0x019AAC 06:BA9C: F0 11     BEQ $BAAF
C - - - - - 0x019AAE 06:BA9E: C9 0C     CMP #$0C
C - - - - - 0x019AB0 06:BAA0: D0 04     BNE $BAA6
C - - - - - 0x019AB2 06:BAA2: A9 40     LDA #$40
C - - - - - 0x019AB4 06:BAA4: D0 02     BNE $BAA8
C - - - - - 0x019AB6 06:BAA6: A9 20     LDA #$20
C - - - - - 0x019AB8 06:BAA8: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019ABB 06:BAAB: D0 02     BNE $BAAF
C - - - - - 0x019ABD 06:BAAD: 85 05     STA ram_0005
C - - - - - 0x019ABF 06:BAAF: BD 20 03  LDA ram_0320,X
C - - - - - 0x019AC2 06:BAB2: 29 C1     AND #$C1
C - - - - - 0x019AC4 06:BAB4: 05 05     ORA ram_0005
C - - - - - 0x019AC6 06:BAB6: 9D 20 03  STA ram_0320,X
C - - - - - 0x019AC9 06:BAB9: 60        RTS
C D 1 - - - 0x019ACA 06:BABA: A0 0C     LDY #$0C
C - - - - - 0x019ACC 06:BABC: 20 2A A9  JSR $A92A
C - - - - - 0x019ACF 06:BABF: BD 22 03  LDA ram_0322,X
C - - - - - 0x019AD2 06:BAC2: 09 02     ORA #$02
C - - - - - 0x019AD4 06:BAC4: 9D 22 03  STA ram_0322,X
C - - - - - 0x019AD7 06:BAC7: 20 64 D0  JSR $D064
C - - - - - 0x019ADA 06:BACA: 29 03     AND #$03
C - - - - - 0x019ADC 06:BACC: 18        CLC
C - - - - - 0x019ADD 06:BACD: 69 03     ADC #$03
C - - - - - 0x019ADF 06:BACF: 9D 28 03  STA ram_0328,X
C - - - - - 0x019AE2 06:BAD2: A9 00     LDA #$00
C - - - - - 0x019AE4 06:BAD4: 9D 46 03  STA ram_0346,X
C - - - - - 0x019AE7 06:BAD7: A9 03     LDA #$03
C - - - - - 0x019AE9 06:BAD9: 9D 4C 03  STA ram_034C,X
C - - - - - 0x019AEC 06:BADC: A9 31     LDA #$31
C - - - - - 0x019AEE 06:BADE: 4C 20 C4  JMP $C420
C - - - - - 0x019AF1 06:BAE1: A9 3F     LDA #$3F
C - - - - - 0x019AF3 06:BAE3: 20 BD D6  JSR $D6BD
C - - - - - 0x019AF6 06:BAE6: 84 05     STY ram_0005
C - - - - - 0x019AF8 06:BAE8: BD 20 03  LDA ram_0320,X
C - - - - - 0x019AFB 06:BAEB: 29 FE     AND #$FE
C - - - - - 0x019AFD 06:BAED: 05 05     ORA ram_0005
C - - - - - 0x019AFF 06:BAEF: 9D 20 03  STA ram_0320,X
C - - - - - 0x019B02 06:BAF2: 60        RTS
- D 1 - - - 0x019B03 06:BAF3: 00        .byte $00   ; 
- D 1 - - - 0x019B04 06:BAF4: 00        .byte $00   ; 
- D 1 - - - 0x019B05 06:BAF5: 00        .byte $00   ; 
- D 1 - - - 0x019B06 06:BAF6: 00        .byte $00   ; 
- D 1 - - - 0x019B07 06:BAF7: 00        .byte $00   ; 
- D 1 - - - 0x019B08 06:BAF8: 02        .byte $02   ; 
- D 1 - - - 0x019B09 06:BAF9: 08        .byte $08   ; 
- D 1 - - - 0x019B0A 06:BAFA: 08        .byte $08   ; 
C D 1 - - - 0x019B0B 06:BAFB: A2 01     LDX #$01
C - - - - - 0x019B0D 06:BAFD: 86 1A     STX ram_001A
C - - - - - 0x019B0F 06:BAFF: A6 1A     LDX ram_001A
C - - - - - 0x019B11 06:BB01: 20 8A BB  JSR $BB8A
C - - - - - 0x019B14 06:BB04: A6 1A     LDX ram_001A
C - - - - - 0x019B16 06:BB06: BD 20 03  LDA ram_0320,X
C - - - - - 0x019B19 06:BB09: C9 E0     CMP #$E0
C - - - - - 0x019B1B 06:BB0B: B0 2A     BCS $BB37
C - - - - - 0x019B1D 06:BB0D: C9 C0     CMP #$C0
C - - - - - 0x019B1F 06:BB0F: 90 26     BCC $BB37
C - - - - - 0x019B21 06:BB11: 20 75 BB  JSR $BB75
C - - - - - 0x019B24 06:BB14: 20 60 D6  JSR $D660
C - - - - - 0x019B27 06:BB17: B0 0B     BCS $BB24
C - - - - - 0x019B29 06:BB19: A5 5F     LDA ram_005F
C - - - - - 0x019B2B 06:BB1B: 29 02     AND #$02
C - - - - - 0x019B2D 06:BB1D: F0 0B     BEQ $BB2A
- - - - - - 0x019B2F 06:BB1F: 20        .byte $20   ; 
- - - - - - 0x019B30 06:BB20: 06        .byte $06   ; 
- - - - - - 0x019B31 06:BB21: D6        .byte $D6   ; 
- - - - - - 0x019B32 06:BB22: 90        .byte $90   ; 
- - - - - - 0x019B33 06:BB23: 10        .byte $10   ; 
- - - - - - 0x019B34 06:BB24: 20        .byte $20   ; 
- - - - - - 0x019B35 06:BB25: 5E        .byte $5E   ; 
- - - - - - 0x019B36 06:BB26: BB        .byte $BB   ; 
- - - - - - 0x019B37 06:BB27: 4C        .byte $4C   ; <L>
- - - - - - 0x019B38 06:BB28: 37        .byte $37   ; <7>
- - - - - - 0x019B39 06:BB29: BB        .byte $BB   ; 
C - - - - - 0x019B3A 06:BB2A: A6 7A     LDX ram_007A
C - - - - - 0x019B3C 06:BB2C: 20 B6 D5  JSR $D5B6
C - - - - - 0x019B3F 06:BB2F: B0 0B     BCS $BB3C
C - - - - - 0x019B41 06:BB31: CA        DEX
C - - - - - 0x019B42 06:BB32: 10 F8     BPL $BB2C
C - - - - - 0x019B44 06:BB34: 20 62 D5  JSR $D562
C D 1 - - - 0x019B47 06:BB37: C6 1A     DEC ram_001A
C - - - - - 0x019B49 06:BB39: 10 C4     BPL $BAFF
C - - - - - 0x019B4B 06:BB3B: 60        RTS
C - - - - - 0x019B4C 06:BB3C: A9 00     LDA #$00
C - - - - - 0x019B4E 06:BB3E: 95 8F     STA ram_008F,X
C - - - - - 0x019B50 06:BB40: A6 1A     LDX ram_001A
C - - - - - 0x019B52 06:BB42: BD 20 03  LDA ram_0320,X
C - - - - - 0x019B55 06:BB45: 29 02     AND #$02
C - - - - - 0x019B57 06:BB47: D0 0A     BNE $BB53
C - - - - - 0x019B59 06:BB49: A9 80     LDA #$80
C - - - - - 0x019B5B 06:BB4B: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019B5E 06:BB4E: A9 04     LDA #$04
C - - - - - 0x019B60 06:BB50: 20 5F BD  JSR $BD5F
C - - - - - 0x019B63 06:BB53: DE 50 03  DEC ram_0350,X
C - - - - - 0x019B66 06:BB56: D0 DF     BNE $BB37
C - - - - - 0x019B68 06:BB58: 20 5E BB  JSR $BB5E
C - - - - - 0x019B6B 06:BB5B: 4C 37 BB  JMP $BB37
C - - - - - 0x019B6E 06:BB5E: A6 1A     LDX ram_001A
C - - - - - 0x019B70 06:BB60: A9 22     LDA #$22
C - - - - - 0x019B72 06:BB62: 20 5F BD  JSR $BD5F
C - - - - - 0x019B75 06:BB65: A9 10     LDA #$10
C - - - - - 0x019B77 06:BB67: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019B7A 06:BB6A: A9 03     LDA #$03
C - - - - - 0x019B7C 06:BB6C: 9D 56 03  STA ram_0356,X
C - - - - - 0x019B7F 06:BB6F: A9 00     LDA #$00
C - - - - - 0x019B81 06:BB71: 9D 44 03  STA ram_0344,X
C - - - - - 0x019B84 06:BB74: 60        RTS
C - - - - - 0x019B85 06:BB75: A0 00     LDY #$00
C - - - - - 0x019B87 06:BB77: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019B8A 06:BB7A: 85 AD     STA ram_00AD
C - - - - - 0x019B8C 06:BB7C: BD 32 03  LDA ram_0332,X
C - - - - - 0x019B8F 06:BB7F: 85 AE     STA ram_00AE
C - - - - - 0x019B91 06:BB81: A9 1E     LDA #$1E
C - - - - - 0x019B93 06:BB83: 85 AF     STA ram_00AF
C - - - - - 0x019B95 06:BB85: A9 08     LDA #$08
C - - - - - 0x019B97 06:BB87: 85 B0     STA ram_00B0
C - - - - - 0x019B99 06:BB89: 60        RTS
C - - - - - 0x019B9A 06:BB8A: BD 20 03  LDA ram_0320,X
C - - - - - 0x019B9D 06:BB8D: 10 FA     BPL $BB89
C - - - - - 0x019B9F 06:BB8F: BD 20 03  LDA ram_0320,X
C - - - - - 0x019BA2 06:BB92: 4A        LSR
C - - - - - 0x019BA3 06:BB93: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x019BA6 06:BB96: 82        .byte $82   ; 
- D 1 - I - 0x019BA7 06:BB97: BC        .byte $BC   ; 
- D 1 - I - 0x019BA8 06:BB98: A3        .byte $A3   ; 
- D 1 - I - 0x019BA9 06:BB99: BB        .byte $BB   ; 
- D 1 - I - 0x019BAA 06:BB9A: A3        .byte $A3   ; 
- D 1 - I - 0x019BAB 06:BB9B: BB        .byte $BB   ; 
- - - - - - 0x019BAC 06:BB9C: A3        .byte $A3   ; 
- - - - - - 0x019BAD 06:BB9D: BB        .byte $BB   ; 
- D 1 - I - 0x019BAE 06:BB9E: 16        .byte $16   ; 
- D 1 - I - 0x019BAF 06:BB9F: BD        .byte $BD   ; 
- D 1 - I - 0x019BB0 06:BBA0: A3        .byte $A3   ; 
- D 1 - I - 0x019BB1 06:BBA1: BB        .byte $BB   ; 
- D 1 - I - 0x019BB2 06:BBA2: A3        .byte $A3   ; 
- D 1 - I - 0x019BB3 06:BBA3: BB        .byte $BB   ; 
C - - - - - 0x019BB4 06:BBA4: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019BB7 06:BBA7: 85 00     STA ram_0000
C - - - - - 0x019BB9 06:BBA9: E6 00     INC ram_0000
C - - - - - 0x019BBB 06:BBAB: 20 58 D3  JSR $D358
C - - - - - 0x019BBE 06:BBAE: D0 07     BNE $BBB7
C - - - - - 0x019BC0 06:BBB0: A9 1C     LDA #$1C
C - - - - - 0x019BC2 06:BBB2: A0 02     LDY #$02
C - - - - - 0x019BC4 06:BBB4: 4C 72 BC  JMP $BC72
C - - - - - 0x019BC7 06:BBB7: 20 30 BD  JSR $BD30
C - - - - - 0x019BCA 06:BBBA: BD 20 03  LDA ram_0320,X
C - - - - - 0x019BCD 06:BBBD: 29 0A     AND #$0A
C - - - - - 0x019BCF 06:BBBF: F0 07     BEQ $BBC8
C - - - - - 0x019BD1 06:BBC1: C9 02     CMP #$02
C - - - - - 0x019BD3 06:BBC3: D0 06     BNE $BBCB
C - - - - - 0x019BD5 06:BBC5: 4C 6E BC  JMP $BC6E
C - - - - - 0x019BD8 06:BBC8: 20 18 BC  JSR $BC18
C - - - - - 0x019BDB 06:BBCB: BD 44 03  LDA ram_0344,X
C - - - - - 0x019BDE 06:BBCE: 0A        ASL
C - - - - - 0x019BDF 06:BBCF: 0A        ASL
C - - - - - 0x019BE0 06:BBD0: A8        TAY
C D 1 - - - 0x019BE1 06:BBD1: BD 38 03  LDA ram_0338,X
C - - - - - 0x019BE4 06:BBD4: 85 00     STA ram_0000
C - - - - - 0x019BE6 06:BBD6: BD 3E 03  LDA ram_033E,X
C - - - - - 0x019BE9 06:BBD9: 85 01     STA ram_0001
C - - - - - 0x019BEB 06:BBDB: 20 7B D6  JSR $D67B
C - - - - - 0x019BEE 06:BBDE: 90 03     BCC $BBE3
C - - - - - 0x019BF0 06:BBE0: 4C 7F D7  JMP $D77F
C - - - - - 0x019BF3 06:BBE3: 20 AC D6  JSR $D6AC
C - - - - - 0x019BF6 06:BBE6: 90 03     BCC $BBEB
C - - - - - 0x019BF8 06:BBE8: 4C 41 D7  JMP $D741
C - - - - - 0x019BFB 06:BBEB: 20 25 D7  JSR $D725
C - - - - - 0x019BFE 06:BBEE: C0 E0     CPY #$E0
C - - - - - 0x019C00 06:BBF0: 90 03     BCC $BBF5
C - - - - - 0x019C02 06:BBF2: 4C 89 D9  JMP $D989
C - - - - - 0x019C05 06:BBF5: 98        TYA
C - - - - - 0x019C06 06:BBF6: 18        CLC
C - - - - - 0x019C07 06:BBF7: 6D 02 03  ADC ram_0302
C - - - - - 0x019C0A 06:BBFA: 85 01     STA ram_0001
C - - - - - 0x019C0C 06:BBFC: AD 03 03  LDA ram_0303
C - - - - - 0x019C0F 06:BBFF: 85 02     STA ram_0002
C - - - - - 0x019C11 06:BC01: BD 20 03  LDA ram_0320,X
C - - - - - 0x019C14 06:BC04: 29 04     AND #$04
C - - - - - 0x019C16 06:BC06: F0 0D     BEQ $BC15
C - - - - - 0x019C18 06:BC08: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019C1B 06:BC0B: C9 08     CMP #$08
C - - - - - 0x019C1D 06:BC0D: 90 06     BCC $BC15
C - - - - - 0x019C1F 06:BC0F: 29 02     AND #$02
C - - - - - 0x019C21 06:BC11: 45 02     EOR ram_0002
C - - - - - 0x019C23 06:BC13: 85 02     STA ram_0002
C - - - - - 0x019C25 06:BC15: 4C 33 CE  JMP $CE33
C - - - - - 0x019C28 06:BC18: BD 20 03  LDA ram_0320,X
C - - - - - 0x019C2B 06:BC1B: 6A        ROR
C - - - - - 0x019C2C 06:BC1C: 90 06     BCC $BC24
C - - - - - 0x019C2E 06:BC1E: 20 2A BC  JSR $BC2A
C D 1 - - - 0x019C31 06:BC21: 4C AE D9  JMP $D9AE
C - - - - - 0x019C34 06:BC24: 20 5A BC  JSR $BC5A
C - - - - - 0x019C37 06:BC27: 4C 21 BC  JMP $BC21
C - - - - - 0x019C3A 06:BC2A: 20 CA D7  JSR $D7CA
C - - - - - 0x019C3D 06:BC2D: F0 0F     BEQ $BC3E
C - - - - - 0x019C3F 06:BC2F: BD 20 03  LDA ram_0320,X
C - - - - - 0x019C42 06:BC32: 29 04     AND #$04
C - - - - - 0x019C44 06:BC34: D0 05     BNE $BC3B
C - - - - - 0x019C46 06:BC36: A5 2C     LDA ram_002C
C - - - - - 0x019C48 06:BC38: 6A        ROR
C - - - - - 0x019C49 06:BC39: 90 1E     BCC $BC59
C - - - - - 0x019C4B 06:BC3B: 4C FD D6  JMP $D6FD
C - - - - - 0x019C4E 06:BC3E: BD 20 03  LDA ram_0320,X
C - - - - - 0x019C51 06:BC41: 29 20     AND #$20
C - - - - - 0x019C53 06:BC43: D0 14     BNE $BC59
C - - - - - 0x019C55 06:BC45: A9 02     LDA #$02
C - - - - - 0x019C57 06:BC47: 20 5F BD  JSR $BD5F
C - - - - - 0x019C5A 06:BC4A: A9 14     LDA #$14
C - - - - - 0x019C5C 06:BC4C: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019C5F 06:BC4F: A9 03     LDA #$03
C - - - - - 0x019C61 06:BC51: 9D 56 03  STA ram_0356,X
C - - - - - 0x019C64 06:BC54: A9 00     LDA #$00
C - - - - - 0x019C66 06:BC56: 9D 44 03  STA ram_0344,X
C - - - - - 0x019C69 06:BC59: 60        RTS
C - - - - - 0x019C6A 06:BC5A: 20 BF D7  JSR $D7BF
C - - - - - 0x019C6D 06:BC5D: F0 DF     BEQ $BC3E
C - - - - - 0x019C6F 06:BC5F: BD 20 03  LDA ram_0320,X
C - - - - - 0x019C72 06:BC62: 29 04     AND #$04
C - - - - - 0x019C74 06:BC64: D0 05     BNE $BC6B
C - - - - - 0x019C76 06:BC66: A5 2C     LDA ram_002C
C - - - - - 0x019C78 06:BC68: 6A        ROR
C - - - - - 0x019C79 06:BC69: 90 EE     BCC $BC59
C - - - - - 0x019C7B 06:BC6B: 4C 1C D7  JMP $D71C
C D 1 - - - 0x019C7E 06:BC6E: A9 14     LDA #$14
C - - - - - 0x019C80 06:BC70: A0 03     LDY #$03
C D 1 - - - 0x019C82 06:BC72: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019C85 06:BC75: 98        TYA
C - - - - - 0x019C86 06:BC76: 9D 56 03  STA ram_0356,X
C - - - - - 0x019C89 06:BC79: A9 02     LDA #$02
C - - - - - 0x019C8B 06:BC7B: 20 5F BD  JSR $BD5F
C - - - - - 0x019C8E 06:BC7E: A9 00     LDA #$00
C - - - - - 0x019C90 06:BC80: 9D 44 03  STA ram_0344,X
C - - - - - 0x019C93 06:BC83: BD 2C 03  LDA ram_032C,X
C - - - - - 0x019C96 06:BC86: C9 DF     CMP #$DF
C - - - - - 0x019C98 06:BC88: B0 1E     BCS $BCA8
C - - - - - 0x019C9A 06:BC8A: BD 56 03  LDA ram_0356,X
C - - - - - 0x019C9D 06:BC8D: C9 03     CMP #$03
C - - - - - 0x019C9F 06:BC8F: D0 17     BNE $BCA8
C - - - - - 0x019CA1 06:BC91: BD 20 03  LDA ram_0320,X
C - - - - - 0x019CA4 06:BC94: 6A        ROR
C - - - - - 0x019CA5 06:BC95: 90 0A     BCC $BCA1
C - - - - - 0x019CA7 06:BC97: 29 10     AND #$10
C - - - - - 0x019CA9 06:BC99: D0 0A     BNE $BCA5
C - - - - - 0x019CAB 06:BC9B: 20 2A BC  JSR $BC2A
C - - - - - 0x019CAE 06:BC9E: 4C A8 BC  JMP $BCA8
C - - - - - 0x019CB1 06:BCA1: 29 10     AND #$10
C - - - - - 0x019CB3 06:BCA3: D0 F6     BNE $BC9B
C - - - - - 0x019CB5 06:BCA5: 20 5A BC  JSR $BC5A
C D 1 - - - 0x019CB8 06:BCA8: BC 4A 03  LDY ram_034A,X
C - - - - - 0x019CBB 06:BCAB: B9 5D E3  LDA $E35D,Y
C - - - - - 0x019CBE 06:BCAE: 18        CLC
C - - - - - 0x019CBF 06:BCAF: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x019CC2 06:BCB2: C9 DF     CMP #$DF
C - - - - - 0x019CC4 06:BCB4: 90 03     BCC $BCB9
C - - - - - 0x019CC6 06:BCB6: A0 DF     LDY #$DF
C - - - - - 0x019CC8 06:BCB8: 98        TYA
C - - - - - 0x019CC9 06:BCB9: 9D 2C 03  STA ram_032C,X
C - - - - - 0x019CCC 06:BCBC: BC 4A 03  LDY ram_034A,X
C - - - - - 0x019CCF 06:BCBF: C0 18     CPY #$18
C - - - - - 0x019CD1 06:BCC1: 90 34     BCC $BCF7
C - - - - - 0x019CD3 06:BCC3: C9 DF     CMP #$DF
C - - - - - 0x019CD5 06:BCC5: 90 05     BCC $BCCC
C - - - - - 0x019CD7 06:BCC7: A0 FF     LDY #$FF
C - - - - - 0x019CD9 06:BCC9: 4C D1 BB  JMP $BBD1
C - - - - - 0x019CDC 06:BCCC: 85 00     STA ram_0000
C - - - - - 0x019CDE 06:BCCE: E6 00     INC ram_0000
C - - - - - 0x019CE0 06:BCD0: 20 58 D3  JSR $D358
C - - - - - 0x019CE3 06:BCD3: F0 22     BEQ $BCF7
C - - - - - 0x019CE5 06:BCD5: C9 02     CMP #$02
C - - - - - 0x019CE7 06:BCD7: F0 07     BEQ $BCE0
C - - - - - 0x019CE9 06:BCD9: 20 47 D3  JSR $D347
C - - - - - 0x019CEC 06:BCDC: D0 0D     BNE $BCEB
- - - - - - 0x019CEE 06:BCDE: F0        .byte $F0   ; 
- - - - - - 0x019CEF 06:BCDF: 17        .byte $17   ; 
C - - - - - 0x019CF0 06:BCE0: 20 47 D3  JSR $D347
C - - - - - 0x019CF3 06:BCE3: F0 12     BEQ $BCF7
C - - - - - 0x019CF5 06:BCE5: 20 64 D0  JSR $D064
C - - - - - 0x019CF8 06:BCE8: 6A        ROR
C - - - - - 0x019CF9 06:BCE9: 90 0C     BCC $BCF7
C - - - - - 0x019CFB 06:BCEB: 20 A8 D7  JSR $D7A8
C - - - - - 0x019CFE 06:BCEE: BD 20 03  LDA ram_0320,X
C - - - - - 0x019D01 06:BCF1: 29 20     AND #$20
C - - - - - 0x019D03 06:BCF3: D0 1D     BNE $BD12
C - - - - - 0x019D05 06:BCF5: F0 0A     BEQ $BD01
C - - - - - 0x019D07 06:BCF7: FE 4A 03  INC ram_034A,X
C - - - - - 0x019D0A 06:BCFA: A9 2F     LDA #$2F
C - - - - - 0x019D0C 06:BCFC: DD 4A 03  CMP ram_034A,X
C - - - - - 0x019D0F 06:BCFF: B0 03     BCS $BD04
C - - - - - 0x019D11 06:BD01: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019D14 06:BD04: A0 08     LDY #$08
C - - - - - 0x019D16 06:BD06: BD 20 03  LDA ram_0320,X
C - - - - - 0x019D19 06:BD09: 29 20     AND #$20
C - - - - - 0x019D1B 06:BD0B: F0 02     BEQ $BD0F
C - - - - - 0x019D1D 06:BD0D: A0 0C     LDY #$0C
C - - - - - 0x019D1F 06:BD0F: 4C D1 BB  JMP $BBD1
C - - - - - 0x019D22 06:BD12: A9 30     LDA #$30
C - - - - - 0x019D24 06:BD14: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019D27 06:BD17: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019D2A 06:BD1A: D0 03     BNE $BD1F
C - - - - - 0x019D2C 06:BD1C: 4C 7F D7  JMP $D77F
C - - - - - 0x019D2F 06:BD1F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019D32 06:BD22: 20 5F D0  JSR $D05F
C - - - - - 0x019D35 06:BD25: A8        TAY
C - - - - - 0x019D36 06:BD26: B9 2D BD  LDA $BD2D,Y
C - - - - - 0x019D39 06:BD29: A8        TAY
C - - - - - 0x019D3A 06:BD2A: 4C D1 BB  JMP $BBD1
- D 1 - - - 0x019D3D 06:BD2D: E4        .byte $E4   ; 
- D 1 - - - 0x019D3E 06:BD2E: E0        .byte $E0   ; 
- D 1 - - - 0x019D3F 06:BD2F: 10        .byte $10   ; 
C - - - - - 0x019D40 06:BD30: BD 4A 03  LDA ram_034A,X
C - - - - - 0x019D43 06:BD33: F0 0A     BEQ $BD3F
C - - - - - 0x019D45 06:BD35: DE 4A 03  DEC ram_034A,X
C - - - - - 0x019D48 06:BD38: D0 31     BNE $BD6B
C - - - - - 0x019D4A 06:BD3A: A9 00     LDA #$00
C - - - - - 0x019D4C 06:BD3C: 20 5F BD  JSR $BD5F
C - - - - - 0x019D4F 06:BD3F: 20 6C BD  JSR $BD6C
C - - - - - 0x019D52 06:BD42: A5 2C     LDA ram_002C
C - - - - - 0x019D54 06:BD44: 29 3F     AND #$3F
C - - - - - 0x019D56 06:BD46: D0 23     BNE $BD6B
C - - - - - 0x019D58 06:BD48: 20 64 D0  JSR $D064
C - - - - - 0x019D5B 06:BD4B: 6A        ROR
C - - - - - 0x019D5C 06:BD4C: B0 1D     BCS $BD6B
C - - - - - 0x019D5E 06:BD4E: 29 07     AND #$07
C - - - - - 0x019D60 06:BD50: A8        TAY
C - - - - - 0x019D61 06:BD51: B9 F3 BA  LDA $BAF3,Y
C - - - - - 0x019D64 06:BD54: C9 08     CMP #$08
C - - - - - 0x019D66 06:BD56: D0 07     BNE $BD5F
C - - - - - 0x019D68 06:BD58: 48        PHA
C - - - - - 0x019D69 06:BD59: A9 20     LDA #$20
C - - - - - 0x019D6B 06:BD5B: 9D 4A 03  STA ram_034A,X
C - - - - - 0x019D6E 06:BD5E: 68        PLA
C - - - - - 0x019D6F 06:BD5F: 85 05     STA ram_0005
C - - - - - 0x019D71 06:BD61: BD 20 03  LDA ram_0320,X
C - - - - - 0x019D74 06:BD64: 29 C1     AND #$C1
C - - - - - 0x019D76 06:BD66: 05 05     ORA ram_0005
C - - - - - 0x019D78 06:BD68: 9D 20 03  STA ram_0320,X
C - - - - - 0x019D7B 06:BD6B: 60        RTS
C - - - - - 0x019D7C 06:BD6C: A9 FF     LDA #$FF
C - - - - - 0x019D7E 06:BD6E: 20 BD D6  JSR $D6BD
C - - - - - 0x019D81 06:BD71: 84 05     STY ram_0005
C - - - - - 0x019D83 06:BD73: BD 20 03  LDA ram_0320,X
C - - - - - 0x019D86 06:BD76: 29 FE     AND #$FE
C - - - - - 0x019D88 06:BD78: 05 05     ORA ram_0005
C - - - - - 0x019D8A 06:BD7A: 9D 20 03  STA ram_0320,X
C - - - - - 0x019D8D 06:BD7D: 60        RTS
- D 1 - - - 0x019D8E 06:BD7E: 00        .byte $00   ; 
- D 1 - - - 0x019D8F 06:BD7F: 00        .byte $00   ; 
- D 1 - - - 0x019D90 06:BD80: 03        .byte $03   ; 
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
C D 1 - - - 0x019DA6 06:BD96: A2 01     LDX #$01
C - - - - - 0x019DA8 06:BD98: 86 1A     STX ram_001A
C - - - - - 0x019DAA 06:BD9A: A6 1A     LDX ram_001A
C - - - - - 0x019DAC 06:BD9C: 20 0D BE  JSR $BE0D
C - - - - - 0x019DAF 06:BD9F: A6 1A     LDX ram_001A
C - - - - - 0x019DB1 06:BDA1: BD 5C 03  LDA ram_035C,X
C - - - - - 0x019DB4 06:BDA4: 10 16     BPL $BDBC
C - - - - - 0x019DB6 06:BDA6: 20 E9 BD  JSR $BDE9
C - - - - - 0x019DB9 06:BDA9: A5 5F     LDA ram_005F
C - - - - - 0x019DBB 06:BDAB: 29 02     AND #$02
C - - - - - 0x019DBD 06:BDAD: D0 0A     BNE $BDB9
C - - - - - 0x019DBF 06:BDAF: A6 7A     LDX ram_007A
C - - - - - 0x019DC1 06:BDB1: 20 B6 D5  JSR $D5B6
C - - - - - 0x019DC4 06:BDB4: B0 0B     BCS $BDC1
C - - - - - 0x019DC6 06:BDB6: CA        DEX
C - - - - - 0x019DC7 06:BDB7: 10 F8     BPL $BDB1
C - - - - - 0x019DC9 06:BDB9: 20 62 D5  JSR $D562
C - - - - - 0x019DCC 06:BDBC: C6 1A     DEC ram_001A
C - - - - - 0x019DCE 06:BDBE: 10 DA     BPL $BD9A
C - - - - - 0x019DD0 06:BDC0: 60        RTS
- - - - - - 0x019DD1 06:BDC1: A9        .byte $A9   ; 
- - - - - - 0x019DD2 06:BDC2: 00        .byte $00   ; 
- - - - - - 0x019DD3 06:BDC3: 95        .byte $95   ; 
- - - - - - 0x019DD4 06:BDC4: 8F        .byte $8F   ; 
- - - - - - 0x019DD5 06:BDC5: 4C        .byte $4C   ; <L>
- - - - - - 0x019DD6 06:BDC6: BC        .byte $BC   ; 
- - - - - - 0x019DD7 06:BDC7: BD        .byte $BD   ; 
C - - - - - 0x019DD8 06:BDC8: A0 00     LDY #$00
C - - - - - 0x019DDA 06:BDCA: BD 86 03  LDA ram_0386,X
C - - - - - 0x019DDD 06:BDCD: 29 7F     AND #$7F
C - - - - - 0x019DDF 06:BDCF: C9 50     CMP #$50
C - - - - - 0x019DE1 06:BDD1: B0 15     BCS $BDE8
C - - - - - 0x019DE3 06:BDD3: C8        INY
C - - - - - 0x019DE4 06:BDD4: C9 40     CMP #$40
C - - - - - 0x019DE6 06:BDD6: B0 10     BCS $BDE8
C - - - - - 0x019DE8 06:BDD8: C8        INY
C - - - - - 0x019DE9 06:BDD9: C9 30     CMP #$30
C - - - - - 0x019DEB 06:BDDB: B0 0B     BCS $BDE8
C - - - - - 0x019DED 06:BDDD: C8        INY
C - - - - - 0x019DEE 06:BDDE: C9 20     CMP #$20
C - - - - - 0x019DF0 06:BDE0: B0 06     BCS $BDE8
C - - - - - 0x019DF2 06:BDE2: C8        INY
C - - - - - 0x019DF3 06:BDE3: C9 10     CMP #$10
C - - - - - 0x019DF5 06:BDE5: B0 01     BCS $BDE8
C - - - - - 0x019DF7 06:BDE7: C8        INY
C - - - - - 0x019DF8 06:BDE8: 60        RTS
C - - - - - 0x019DF9 06:BDE9: 20 C8 BD  JSR $BDC8
C - - - - - 0x019DFC 06:BDEC: 98        TYA
C - - - - - 0x019DFD 06:BDED: 0A        ASL
C - - - - - 0x019DFE 06:BDEE: 0A        ASL
C - - - - - 0x019DFF 06:BDEF: A8        TAY
C - - - - - 0x019E00 06:BDF0: BD 68 03  LDA ram_0368,X
C - - - - - 0x019E03 06:BDF3: 18        CLC
C - - - - - 0x019E04 06:BDF4: 79 7E BD  ADC $BD7E,Y
C - - - - - 0x019E07 06:BDF7: 85 AD     STA ram_00AD
C - - - - - 0x019E09 06:BDF9: BD 6E 03  LDA ram_036E,X
C - - - - - 0x019E0C 06:BDFC: 18        CLC
C - - - - - 0x019E0D 06:BDFD: 79 7F BD  ADC $BD7F,Y
C - - - - - 0x019E10 06:BE00: 85 AE     STA ram_00AE
C - - - - - 0x019E12 06:BE02: B9 80 BD  LDA $BD80,Y
C - - - - - 0x019E15 06:BE05: 85 AF     STA ram_00AF
C - - - - - 0x019E17 06:BE07: B9 81 BD  LDA $BD81,Y
C - - - - - 0x019E1A 06:BE0A: 85 B0     STA ram_00B0
C - - - - - 0x019E1C 06:BE0C: 60        RTS
C - - - - - 0x019E1D 06:BE0D: BD 5C 03  LDA ram_035C,X
C - - - - - 0x019E20 06:BE10: 10 FA     BPL $BE0C
C - - - - - 0x019E22 06:BE12: FE 86 03  INC ram_0386,X
C - - - - - 0x019E25 06:BE15: 20 C8 BD  JSR $BDC8
C - - - - - 0x019E28 06:BE18: 98        TYA
C - - - - - 0x019E29 06:BE19: 0A        ASL
C - - - - - 0x019E2A 06:BE1A: A8        TAY
C - - - - - 0x019E2B 06:BE1B: BD 74 03  LDA ram_0374,X
C - - - - - 0x019E2E 06:BE1E: 85 00     STA ram_0000
C - - - - - 0x019E30 06:BE20: BD 7A 03  LDA ram_037A,X
C - - - - - 0x019E33 06:BE23: 85 01     STA ram_0001
C - - - - - 0x019E35 06:BE25: 20 7B D6  JSR $D67B
C - - - - - 0x019E38 06:BE28: 90 03     BCC $BE2D
C - - - - - 0x019E3A 06:BE2A: 4C 73 D8  JMP $D873
C - - - - - 0x019E3D 06:BE2D: 20 AC D6  JSR $D6AC
C - - - - - 0x019E40 06:BE30: 90 03     BCC $BE35
C - - - - - 0x019E42 06:BE32: 4C 4D D8  JMP $D84D
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
C - - - - - 0x019E59 06:BE49: 4C 33 CE  JMP $CE33
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
- D 1 - - - 0x01A010 06:C000: 00        .byte $00   ; 
- D 1 - - - 0x01A011 06:C001: 00        .byte $00   ; 
- D 1 - - - 0x01A012 06:C002: 18        .byte $18   ; 
- D 1 - - - 0x01A013 06:C003: 08        .byte $08   ; 
- D 1 - - - 0x01A014 06:C004: 00        .byte $00   ; 
- D 1 - - - 0x01A015 06:C005: 00        .byte $00   ; 
- D 1 - - - 0x01A016 06:C006: 14        .byte $14   ; 
- D 1 - - - 0x01A017 06:C007: 08        .byte $08   ; 
- D 1 - - - 0x01A018 06:C008: 00        .byte $00   ; 
- D 1 - - - 0x01A019 06:C009: 00        .byte $00   ; 
- D 1 - - - 0x01A01A 06:C00A: 18        .byte $18   ; 
- D 1 - - - 0x01A01B 06:C00B: 08        .byte $08   ; 
- D 1 - - - 0x01A01C 06:C00C: F8        .byte $F8   ; 
- D 1 - - - 0x01A01D 06:C00D: 00        .byte $00   ; 
- D 1 - - - 0x01A01E 06:C00E: 10        .byte $10   ; 
- D 1 - - - 0x01A01F 06:C00F: 08        .byte $08   ; 
- D 1 - - - 0x01A020 06:C010: 00        .byte $00   ; 
- D 1 - - - 0x01A021 06:C011: 00        .byte $00   ; 
- D 1 - - - 0x01A022 06:C012: 10        .byte $10   ; 
- D 1 - - - 0x01A023 06:C013: 08        .byte $08   ; 
- - - - - - 0x01A024 06:C014: F8        .byte $F8   ; 
- - - - - - 0x01A025 06:C015: 00        .byte $00   ; 
- - - - - - 0x01A026 06:C016: 10        .byte $10   ; 
- - - - - - 0x01A027 06:C017: 08        .byte $08   ; 
- D 1 - - - 0x01A028 06:C018: 00        .byte $00   ; 
- D 1 - - - 0x01A029 06:C019: 00        .byte $00   ; 
- D 1 - - - 0x01A02A 06:C01A: 20        .byte $20   ; 
- D 1 - - - 0x01A02B 06:C01B: 06        .byte $06   ; 
- D 1 - - - 0x01A02C 06:C01C: 00        .byte $00   ; 
- D 1 - - - 0x01A02D 06:C01D: 00        .byte $00   ; 
- D 1 - - - 0x01A02E 06:C01E: 1C        .byte $1C   ; 
- D 1 - - - 0x01A02F 06:C01F: 06        .byte $06   ; 
- D 1 - - - 0x01A030 06:C020: 00        .byte $00   ; 
- D 1 - - - 0x01A031 06:C021: 09        .byte $09   ; 
- D 1 - - - 0x01A032 06:C022: 09        .byte $09   ; 
- D 1 - - - 0x01A033 06:C023: 0C        .byte $0C   ; 
- D 1 - - - 0x01A034 06:C024: 01        .byte $01   ; 
- D 1 - - - 0x01A035 06:C025: 02        .byte $02   ; 
- D 1 - - - 0x01A036 06:C026: 01        .byte $01   ; 
- D 1 - - - 0x01A037 06:C027: 02        .byte $02   ; 
C - - J - - 0x01A038 06:C028: A2 01     LDX #$01
C - - - - - 0x01A03A 06:C02A: 86 1A     STX ram_001A
C - - - - - 0x01A03C 06:C02C: A6 1A     LDX ram_001A
C - - - - - 0x01A03E 06:C02E: 20 F8 A0  JSR $A0F8
C - - - - - 0x01A041 06:C031: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A044 06:C034: C9 E0     CMP #$E0
C - - - - - 0x01A046 06:C036: B0 34     BCS $C06C
C - - - - - 0x01A048 06:C038: C9 C0     CMP #$C0
C - - - - - 0x01A04A 06:C03A: 90 30     BCC $C06C
C - - - - - 0x01A04C 06:C03C: 20 B6 A0  JSR $A0B6
C - - - - - 0x01A04F 06:C03F: 20 60 D6  JSR $D660
C - - - - - 0x01A052 06:C042: B0 0B     BCS $C04F
C - - - - - 0x01A054 06:C044: A5 5F     LDA ram_005F
C - - - - - 0x01A056 06:C046: 29 02     AND #$02
C - - - - - 0x01A058 06:C048: F0 10     BEQ $C05A
C - - - - - 0x01A05A 06:C04A: 20 06 D6  JSR $D606
C - - - - - 0x01A05D 06:C04D: 90 15     BCC $C064
C - - - - - 0x01A05F 06:C04F: A9 01     LDA #$01
C - - - - - 0x01A061 06:C051: 9D 50 03  STA ram_0350,X
C - - - - - 0x01A064 06:C054: 20 85 A0  JSR $A085
C - - - - - 0x01A067 06:C057: 4C 6C A0  JMP $A06C
C - - - - - 0x01A06A 06:C05A: A6 7A     LDX ram_007A
C - - - - - 0x01A06C 06:C05C: 20 B6 D5  JSR $D5B6
C - - - - - 0x01A06F 06:C05F: B0 10     BCS $C071
C - - - - - 0x01A071 06:C061: CA        DEX
C - - - - - 0x01A072 06:C062: 10 F8     BPL $C05C
C - - - - - 0x01A074 06:C064: A6 1A     LDX ram_001A
C - - - - - 0x01A076 06:C066: 20 9C A0  JSR $A09C
C - - - - - 0x01A079 06:C069: 20 62 D5  JSR $D562
C D 1 - - - 0x01A07C 06:C06C: C6 1A     DEC ram_001A
C - - - - - 0x01A07E 06:C06E: 10 BC     BPL $C02C
C - - - - - 0x01A080 06:C070: 60        RTS
C - - - - - 0x01A081 06:C071: A9 00     LDA #$00
C - - - - - 0x01A083 06:C073: 95 8F     STA ram_008F,X
C - - - - - 0x01A085 06:C075: 20 85 A0  JSR $A085
C - - - - - 0x01A088 06:C078: 4C 6C A0  JMP $A06C
- - - - - - 0x01A08B 06:C07B: A6        .byte $A6   ; 
- - - - - - 0x01A08C 06:C07C: 1A        .byte $1A   ; 
- - - - - - 0x01A08D 06:C07D: A9        .byte $A9   ; 
- - - - - - 0x01A08E 06:C07E: 00        .byte $00   ; 
- - - - - - 0x01A08F 06:C07F: 9D        .byte $9D   ; 
- - - - - - 0x01A090 06:C080: 20        .byte $20   ; 
- - - - - - 0x01A091 06:C081: 03        .byte $03   ; 
- - - - - - 0x01A092 06:C082: 4C        .byte $4C   ; <L>
- - - - - - 0x01A093 06:C083: 8F        .byte $8F   ; 
- - - - - - 0x01A094 06:C084: D7        .byte $D7   ; 
C - - - - - 0x01A095 06:C085: A6 1A     LDX ram_001A
C - - - - - 0x01A097 06:C087: A9 22     LDA #$22
C - - - - - 0x01A099 06:C089: 20 BA A2  JSR $A2BA
C - - - - - 0x01A09C 06:C08C: A9 0C     LDA #$0C
C - - - - - 0x01A09E 06:C08E: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A0A1 06:C091: A9 01     LDA #$01
C - - - - - 0x01A0A3 06:C093: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A0A6 06:C096: A9 00     LDA #$00
C - - - - - 0x01A0A8 06:C098: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A0AB 06:C09B: 60        RTS
C - - - - - 0x01A0AC 06:C09C: AD 00 03  LDA ram_0300
C - - - - - 0x01A0AF 06:C09F: C9 10     CMP #$10
C - - - - - 0x01A0B1 06:C0A1: F0 54     BEQ $C0F7
C - - - - - 0x01A0B3 06:C0A3: A0 0C     LDY #$0C
C - - - - - 0x01A0B5 06:C0A5: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A0B8 06:C0A8: 29 12     AND #$12
C - - - - - 0x01A0BA 06:C0AA: F0 2F     BEQ $C0DB
C - - - - - 0x01A0BC 06:C0AC: A0 10     LDY #$10
C - - - - - 0x01A0BE 06:C0AE: C9 02     CMP #$02
C - - - - - 0x01A0C0 06:C0B0: D0 29     BNE $C0DB
C - - - - - 0x01A0C2 06:C0B2: A0 10     LDY #$10
C - - - - - 0x01A0C4 06:C0B4: D0 25     BNE $C0DB
C - - - - - 0x01A0C6 06:C0B6: AD 00 03  LDA ram_0300
C - - - - - 0x01A0C9 06:C0B9: C9 10     CMP #$10
C - - - - - 0x01A0CB 06:C0BB: D0 0D     BNE $C0CA
C - - - - - 0x01A0CD 06:C0BD: A0 18     LDY #$18
C - - - - - 0x01A0CF 06:C0BF: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A0D2 06:C0C2: 29 10     AND #$10
C - - - - - 0x01A0D4 06:C0C4: F0 15     BEQ $C0DB
C - - - - - 0x01A0D6 06:C0C6: A0 1C     LDY #$1C
C - - - - - 0x01A0D8 06:C0C8: D0 11     BNE $C0DB
C - - - - - 0x01A0DA 06:C0CA: A0 00     LDY #$00
C - - - - - 0x01A0DC 06:C0CC: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A0DF 06:C0CF: 29 12     AND #$12
C - - - - - 0x01A0E1 06:C0D1: F0 08     BEQ $C0DB
C - - - - - 0x01A0E3 06:C0D3: A0 04     LDY #$04
C - - - - - 0x01A0E5 06:C0D5: C9 10     CMP #$10
C - - - - - 0x01A0E7 06:C0D7: D0 02     BNE $C0DB
C - - - - - 0x01A0E9 06:C0D9: A0 08     LDY #$08
C - - - - - 0x01A0EB 06:C0DB: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A0EE 06:C0DE: 18        CLC
C - - - - - 0x01A0EF 06:C0DF: 79 00 A0  ADC $A000,Y
C - - - - - 0x01A0F2 06:C0E2: 85 AD     STA ram_00AD
C - - - - - 0x01A0F4 06:C0E4: BD 32 03  LDA ram_0332,X
C - - - - - 0x01A0F7 06:C0E7: 18        CLC
C - - - - - 0x01A0F8 06:C0E8: 79 01 A0  ADC $A001,Y
C - - - - - 0x01A0FB 06:C0EB: 85 AE     STA ram_00AE
C - - - - - 0x01A0FD 06:C0ED: B9 02 A0  LDA $A002,Y
C - - - - - 0x01A100 06:C0F0: 85 AF     STA ram_00AF
C - - - - - 0x01A102 06:C0F2: B9 03 A0  LDA $A003,Y
C - - - - - 0x01A105 06:C0F5: 85 B0     STA ram_00B0
C - - - - - 0x01A107 06:C0F7: 60        RTS
C - - - - - 0x01A108 06:C0F8: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A10B 06:C0FB: 10 FA     BPL $C0F7
C - - - - - 0x01A10D 06:C0FD: 4A        LSR
C - - - - - 0x01A10E 06:C0FE: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x01A111 06:C101: BD        .byte $BD   ; 
- D 1 - I - 0x01A112 06:C102: A1        .byte $A1   ; 
- - - - - - 0x01A113 06:C103: 0E        .byte $0E   ; 
- - - - - - 0x01A114 06:C104: A1        .byte $A1   ; 
- D 1 - I - 0x01A115 06:C105: 0E        .byte $0E   ; 
- D 1 - I - 0x01A116 06:C106: A1        .byte $A1   ; 
- D 1 - I - 0x01A117 06:C107: 83        .byte $83   ; 
- D 1 - I - 0x01A118 06:C108: A1        .byte $A1   ; 
- D 1 - I - 0x01A119 06:C109: 86        .byte $86   ; 
- D 1 - I - 0x01A11A 06:C10A: A2        .byte $A2   ; 
- - - - - - 0x01A11B 06:C10B: 0E        .byte $0E   ; 
- - - - - - 0x01A11C 06:C10C: A1        .byte $A1   ; 
- - - - - - 0x01A11D 06:C10D: 0E        .byte $0E   ; 
- - - - - - 0x01A11E 06:C10E: A1        .byte $A1   ; 
C - - - - - 0x01A11F 06:C10F: 20 A0 A2  JSR $A2A0
C - - - - - 0x01A122 06:C112: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A125 06:C115: 29 10     AND #$10
C - - - - - 0x01A127 06:C117: F0 03     BEQ $C11C
C - - - - - 0x01A129 06:C119: 4C 84 A1  JMP $A184
C - - - - - 0x01A12C 06:C11C: A0 00     LDY #$00
C D 1 - - - 0x01A12E 06:C11E: BD 38 03  LDA ram_0338,X
C - - - - - 0x01A131 06:C121: 85 00     STA ram_0000
C - - - - - 0x01A133 06:C123: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01A136 06:C126: 85 01     STA ram_0001
C - - - - - 0x01A138 06:C128: 20 7B D6  JSR $D67B
C - - - - - 0x01A13B 06:C12B: 90 03     BCC $C130
C - - - - - 0x01A13D 06:C12D: 4C 7F D7  JMP $D77F
C - - - - - 0x01A140 06:C130: 20 AC D6  JSR $D6AC
C - - - - - 0x01A143 06:C133: 90 03     BCC $C138
C - - - - - 0x01A145 06:C135: 4C 41 D7  JMP $D741
C - - - - - 0x01A148 06:C138: 20 25 D7  JSR $D725
C - - - - - 0x01A14B 06:C13B: C0 E0     CPY #$E0
C - - - - - 0x01A14D 06:C13D: 90 03     BCC $C142
C - - - - - 0x01A14F 06:C13F: 4C 89 D9  JMP $D989
C - - - - - 0x01A152 06:C142: 98        TYA
C - - - - - 0x01A153 06:C143: 18        CLC
C - - - - - 0x01A154 06:C144: 6D 02 03  ADC ram_0302
C - - - - - 0x01A157 06:C147: 85 01     STA ram_0001
C - - - - - 0x01A159 06:C149: AD 03 03  LDA ram_0303
C - - - - - 0x01A15C 06:C14C: 85 02     STA ram_0002
C - - - - - 0x01A15E 06:C14E: 4C 33 CE  JMP $CE33
C - - - - - 0x01A161 06:C151: 20 CA D7  JSR $D7CA
C - - - - - 0x01A164 06:C154: D0 01     BNE $C157
C - - - - - 0x01A166 06:C156: 60        RTS
C - - - - - 0x01A167 06:C157: BD 56 03  LDA ram_0356,X
C - - - - - 0x01A16A 06:C15A: C9 01     CMP #$01
C - - - - - 0x01A16C 06:C15C: F0 0A     BEQ $C168
C - - - - - 0x01A16E 06:C15E: C9 02     CMP #$02
C - - - - - 0x01A170 06:C160: F0 03     BEQ $C165
- - - - - - 0x01A172 06:C162: 20        .byte $20   ; 
- - - - - - 0x01A173 06:C163: F0        .byte $F0   ; 
- - - - - - 0x01A174 06:C164: D6        .byte $D6   ; 
C - - - - - 0x01A175 06:C165: 20 F0 D6  JSR $D6F0
C - - - - - 0x01A178 06:C168: 4C F0 D6  JMP $D6F0
C - - - - - 0x01A17B 06:C16B: 20 BF D7  JSR $D7BF
C - - - - - 0x01A17E 06:C16E: F0 E6     BEQ $C156
C - - - - - 0x01A180 06:C170: BD 56 03  LDA ram_0356,X
C - - - - - 0x01A183 06:C173: C9 01     CMP #$01
C - - - - - 0x01A185 06:C175: F0 0A     BEQ $C181
C - - - - - 0x01A187 06:C177: C9 02     CMP #$02
C - - - - - 0x01A189 06:C179: F0 03     BEQ $C17E
- - - - - - 0x01A18B 06:C17B: 20        .byte $20   ; 
- - - - - - 0x01A18C 06:C17C: 0F        .byte $0F   ; 
- - - - - - 0x01A18D 06:C17D: D7        .byte $D7   ; 
C - - - - - 0x01A18E 06:C17E: 20 0F D7  JSR $D70F
C - - - - - 0x01A191 06:C181: 4C 0F D7  JMP $D70F
C D 1 - - - 0x01A194 06:C184: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A197 06:C187: F0 05     BEQ $C18E
C - - - - - 0x01A199 06:C189: A0 08     LDY #$08
C - - - - - 0x01A19B 06:C18B: 4C 1E A1  JMP $A11E
C - - - - - 0x01A19E 06:C18E: A9 34     LDA #$34
C - - - - - 0x01A1A0 06:C190: 20 20 C4  JSR $C420
C - - - - - 0x01A1A3 06:C193: A0 02     LDY #$02
C - - - - - 0x01A1A5 06:C195: AD 00 03  LDA ram_0300
C - - - - - 0x01A1A8 06:C198: C9 10     CMP #$10
C - - - - - 0x01A1AA 06:C19A: F0 02     BEQ $C19E
C - - - - - 0x01A1AC 06:C19C: A0 00     LDY #$00
C - - - - - 0x01A1AE 06:C19E: 84 00     STY ram_0000
C - - - - - 0x01A1B0 06:C1A0: 20 64 D0  JSR $D064
C - - - - - 0x01A1B3 06:C1A3: 29 01     AND #$01
C - - - - - 0x01A1B5 06:C1A5: 05 00     ORA ram_0000
C - - - - - 0x01A1B7 06:C1A7: A8        TAY
C - - - - - 0x01A1B8 06:C1A8: B9 20 A0  LDA $A020,Y
C - - - - - 0x01A1BB 06:C1AB: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A1BE 06:C1AE: B9 24 A0  LDA $A024,Y
C - - - - - 0x01A1C1 06:C1B1: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A1C4 06:C1B4: A9 02     LDA #$02
C - - - - - 0x01A1C6 06:C1B6: 20 BA A2  JSR $A2BA
C - - - - - 0x01A1C9 06:C1B9: A9 00     LDA #$00
C - - - - - 0x01A1CB 06:C1BB: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A1CE 06:C1BE: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A1D1 06:C1C1: C9 DF     CMP #$DF
C - - - - - 0x01A1D3 06:C1C3: B0 2A     BCS $C1EF
C - - - - - 0x01A1D5 06:C1C5: AD 00 03  LDA ram_0300
C - - - - - 0x01A1D8 06:C1C8: C9 10     CMP #$10
C - - - - - 0x01A1DA 06:C1CA: F0 0C     BEQ $C1D8
C - - - - - 0x01A1DC 06:C1CC: A5 2C     LDA ram_002C
C - - - - - 0x01A1DE 06:C1CE: 29 03     AND #$03
C - - - - - 0x01A1E0 06:C1D0: D0 06     BNE $C1D8
C - - - - - 0x01A1E2 06:C1D2: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A1E5 06:C1D5: 4C 06 A2  JMP $A206
C - - - - - 0x01A1E8 06:C1D8: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A1EB 06:C1DB: 6A        ROR
C - - - - - 0x01A1EC 06:C1DC: 90 0A     BCC $C1E8
C - - - - - 0x01A1EE 06:C1DE: 29 10     AND #$10
C - - - - - 0x01A1F0 06:C1E0: D0 0A     BNE $C1EC
C - - - - - 0x01A1F2 06:C1E2: 20 51 A1  JSR $A151
C - - - - - 0x01A1F5 06:C1E5: 4C EF A1  JMP $A1EF
C - - - - - 0x01A1F8 06:C1E8: 29 10     AND #$10
C - - - - - 0x01A1FA 06:C1EA: D0 F6     BNE $C1E2
C - - - - - 0x01A1FC 06:C1EC: 20 6B A1  JSR $A16B
C D 1 - - - 0x01A1FF 06:C1EF: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A202 06:C1F2: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01A205 06:C1F5: 18        CLC
C - - - - - 0x01A206 06:C1F6: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01A209 06:C1F9: C9 DF     CMP #$DF
C - - - - - 0x01A20B 06:C1FB: 90 09     BCC $C206
C - - - - - 0x01A20D 06:C1FD: A0 DF     LDY #$DF
C - - - - - 0x01A20F 06:C1FF: C9 F8     CMP #$F8
C - - - - - 0x01A211 06:C201: 90 02     BCC $C205
- - - - - - 0x01A213 06:C203: A0        .byte $A0   ; 
- - - - - - 0x01A214 06:C204: 00        .byte $00   ; 
C - - - - - 0x01A215 06:C205: 98        TYA
C D 1 - - - 0x01A216 06:C206: 9D 2C 03  STA ram_032C,X
C - - - - - 0x01A219 06:C209: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A21C 06:C20C: C0 18     CPY #$18
C - - - - - 0x01A21E 06:C20E: 90 3E     BCC $C24E
C - - - - - 0x01A220 06:C210: C9 DF     CMP #$DF
C - - - - - 0x01A222 06:C212: 90 05     BCC $C219
C - - - - - 0x01A224 06:C214: A0 FF     LDY #$FF
C - - - - - 0x01A226 06:C216: 4C 1E A1  JMP $A11E
C - - - - - 0x01A229 06:C219: 85 00     STA ram_0000
C - - - - - 0x01A22B 06:C21B: E6 00     INC ram_0000
C - - - - - 0x01A22D 06:C21D: 20 58 D3  JSR $D358
C - - - - - 0x01A230 06:C220: F0 2C     BEQ $C24E
C - - - - - 0x01A232 06:C222: C9 02     CMP #$02
C - - - - - 0x01A234 06:C224: F0 07     BEQ $C22D
C - - - - - 0x01A236 06:C226: 20 47 D3  JSR $D347
C - - - - - 0x01A239 06:C229: D0 0D     BNE $C238
- - - - - - 0x01A23B 06:C22B: F0        .byte $F0   ; 
- - - - - - 0x01A23C 06:C22C: 21        .byte $21   ; 
C - - - - - 0x01A23D 06:C22D: 20 47 D3  JSR $D347
C - - - - - 0x01A240 06:C230: F0 1C     BEQ $C24E
C - - - - - 0x01A242 06:C232: A5 2C     LDA ram_002C
C - - - - - 0x01A244 06:C234: 29 03     AND #$03
C - - - - - 0x01A246 06:C236: D0 16     BNE $C24E
C - - - - - 0x01A248 06:C238: 20 A8 D7  JSR $D7A8
C - - - - - 0x01A24B 06:C23B: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A24E 06:C23E: 29 20     AND #$20
C - - - - - 0x01A250 06:C240: D0 34     BNE $C276
C - - - - - 0x01A252 06:C242: A9 08     LDA #$08
C - - - - - 0x01A254 06:C244: 20 BA A2  JSR $A2BA
C - - - - - 0x01A257 06:C247: A9 20     LDA #$20
C - - - - - 0x01A259 06:C249: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A25C 06:C24C: D0 23     BNE $C271
C - - - - - 0x01A25E 06:C24E: AD 00 03  LDA ram_0300
C - - - - - 0x01A261 06:C251: 29 10     AND #$10
C - - - - - 0x01A263 06:C253: F0 06     BEQ $C25B
C - - - - - 0x01A265 06:C255: A5 2C     LDA ram_002C
C - - - - - 0x01A267 06:C257: 29 03     AND #$03
C - - - - - 0x01A269 06:C259: F0 0D     BEQ $C268
C - - - - - 0x01A26B 06:C25B: FE 4A 03  INC ram_034A,X
C - - - - - 0x01A26E 06:C25E: A9 2F     LDA #$2F
C - - - - - 0x01A270 06:C260: DD 4A 03  CMP ram_034A,X
C - - - - - 0x01A273 06:C263: B0 03     BCS $C268
C - - - - - 0x01A275 06:C265: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A278 06:C268: A0 0C     LDY #$0C
C - - - - - 0x01A27A 06:C26A: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A27D 06:C26D: 29 20     AND #$20
C - - - - - 0x01A27F 06:C26F: D0 02     BNE $C273
C - - - - - 0x01A281 06:C271: A0 04     LDY #$04
C - - - - - 0x01A283 06:C273: 4C 1E A1  JMP $A11E
C - - - - - 0x01A286 06:C276: AD 00 03  LDA ram_0300
C - - - - - 0x01A289 06:C279: C9 10     CMP #$10
C - - - - - 0x01A28B 06:C27B: D0 05     BNE $C282
C - - - - - 0x01A28D 06:C27D: DE 50 03  DEC ram_0350,X
C - - - - - 0x01A290 06:C280: D0 C0     BNE $C242
C - - - - - 0x01A292 06:C282: A9 30     LDA #$30
C - - - - - 0x01A294 06:C284: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A297 06:C287: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A29A 06:C28A: D0 03     BNE $C28F
C - - - - - 0x01A29C 06:C28C: 4C 7F D7  JMP $D77F
C - - - - - 0x01A29F 06:C28F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A2A2 06:C292: 20 5F D0  JSR $D05F
C - - - - - 0x01A2A5 06:C295: A8        TAY
C - - - - - 0x01A2A6 06:C296: B9 9D A2  LDA $A29D,Y
C - - - - - 0x01A2A9 06:C299: A8        TAY
C - - - - - 0x01A2AA 06:C29A: 4C 1E A1  JMP $A11E
- D 1 - - - 0x01A2AD 06:C29D: E4        .byte $E4   ; 
- D 1 - - - 0x01A2AE 06:C29E: E0        .byte $E0   ; 
- D 1 - - - 0x01A2AF 06:C29F: 10        .byte $10   ; 
C - - - - - 0x01A2B0 06:C2A0: 20 C7 A2  JSR $A2C7
C - - - - - 0x01A2B3 06:C2A3: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A2B6 06:C2A6: F0 05     BEQ $C2AD
C - - - - - 0x01A2B8 06:C2A8: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A2BB 06:C2AB: D0 19     BNE $C2C6
C - - - - - 0x01A2BD 06:C2AD: A5 2C     LDA ram_002C
C - - - - - 0x01A2BF 06:C2AF: 29 3F     AND #$3F
C - - - - - 0x01A2C1 06:C2B1: D0 13     BNE $C2C6
C - - - - - 0x01A2C3 06:C2B3: A9 10     LDA #$10
C - - - - - 0x01A2C5 06:C2B5: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A2C8 06:C2B8: A9 10     LDA #$10
C - - - - - 0x01A2CA 06:C2BA: 85 05     STA ram_0005
C - - - - - 0x01A2CC 06:C2BC: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A2CF 06:C2BF: 29 C1     AND #$C1
C - - - - - 0x01A2D1 06:C2C1: 05 05     ORA ram_0005
C - - - - - 0x01A2D3 06:C2C3: 9D 20 03  STA ram_0320,X
C - - - - - 0x01A2D6 06:C2C6: 60        RTS
C - - - - - 0x01A2D7 06:C2C7: A9 3F     LDA #$3F
C - - - - - 0x01A2D9 06:C2C9: 20 BD D6  JSR $D6BD
C - - - - - 0x01A2DC 06:C2CC: 84 05     STY ram_0005
C - - - - - 0x01A2DE 06:C2CE: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A2E1 06:C2D1: 29 FE     AND #$FE
C - - - - - 0x01A2E3 06:C2D3: 05 05     ORA ram_0005
C - - - - - 0x01A2E5 06:C2D5: 9D 20 03  STA ram_0320,X
C - - - - - 0x01A2E8 06:C2D8: 60        RTS
- D 1 - - - 0x01A2E9 06:C2D9: 00        .byte $00   ; 
- D 1 - - - 0x01A2EA 06:C2DA: 00        .byte $00   ; 
- D 1 - - - 0x01A2EB 06:C2DB: 20        .byte $20   ; 
- D 1 - - - 0x01A2EC 06:C2DC: 04        .byte $04   ; 
- D 1 - - - 0x01A2ED 06:C2DD: 00        .byte $00   ; 
- D 1 - - - 0x01A2EE 06:C2DE: 00        .byte $00   ; 
- D 1 - - - 0x01A2EF 06:C2DF: 18        .byte $18   ; 
- D 1 - - - 0x01A2F0 06:C2E0: 04        .byte $04   ; 
- D 1 - - - 0x01A2F1 06:C2E1: E8        .byte $E8   ; 
- D 1 - - - 0x01A2F2 06:C2E2: 08        .byte $08   ; 
- D 1 - - - 0x01A2F3 06:C2E3: 08        .byte $08   ; 
- D 1 - - - 0x01A2F4 06:C2E4: 0A        .byte $0A   ; 
- D 1 - - - 0x01A2F5 06:C2E5: EB        .byte $EB   ; 
- D 1 - - - 0x01A2F6 06:C2E6: 0C        .byte $0C   ; 
- D 1 - - - 0x01A2F7 06:C2E7: 0C        .byte $0C   ; 
- D 1 - - - 0x01A2F8 06:C2E8: 0C        .byte $0C   ; 
- D 1 - - - 0x01A2F9 06:C2E9: F0        .byte $F0   ; 
- D 1 - - - 0x01A2FA 06:C2EA: 08        .byte $08   ; 
- D 1 - - - 0x01A2FB 06:C2EB: 08        .byte $08   ; 
- D 1 - - - 0x01A2FC 06:C2EC: 08        .byte $08   ; 
- D 1 - - - 0x01A2FD 06:C2ED: F0        .byte $F0   ; 
- D 1 - - - 0x01A2FE 06:C2EE: FC        .byte $FC   ; 
- D 1 - - - 0x01A2FF 06:C2EF: 04        .byte $04   ; 
- D 1 - - - 0x01A300 06:C2F0: 08        .byte $08   ; 
- D 1 - - - 0x01A301 06:C2F1: E8        .byte $E8   ; 
- D 1 - - - 0x01A302 06:C2F2: F8        .byte $F8   ; 
- D 1 - - - 0x01A303 06:C2F3: 08        .byte $08   ; 
- D 1 - - - 0x01A304 06:C2F4: 0A        .byte $0A   ; 
- D 1 - - - 0x01A305 06:C2F5: EB        .byte $EB   ; 
- D 1 - - - 0x01A306 06:C2F6: F4        .byte $F4   ; 
- D 1 - - - 0x01A307 06:C2F7: 0C        .byte $0C   ; 
- D 1 - - - 0x01A308 06:C2F8: 0C        .byte $0C   ; 
- D 1 - - - 0x01A309 06:C2F9: F0        .byte $F0   ; 
- D 1 - - - 0x01A30A 06:C2FA: F8        .byte $F8   ; 
- D 1 - - - 0x01A30B 06:C2FB: 08        .byte $08   ; 
- D 1 - - - 0x01A30C 06:C2FC: 08        .byte $08   ; 
- D 1 - - - 0x01A30D 06:C2FD: F0        .byte $F0   ; 
- D 1 - - - 0x01A30E 06:C2FE: 04        .byte $04   ; 
- D 1 - - - 0x01A30F 06:C2FF: 04        .byte $04   ; 
- D 1 - - - 0x01A310 06:C300: 08        .byte $08   ; 
- D 1 - - - 0x01A311 06:C301: 00        .byte $00   ; 
- D 1 - - - 0x01A312 06:C302: 00        .byte $00   ; 
- D 1 - - - 0x01A313 06:C303: 10        .byte $10   ; 
- D 1 - - - 0x01A314 06:C304: 10        .byte $10   ; 
- D 1 - - - 0x01A315 06:C305: 10        .byte $10   ; 
- D 1 - - - 0x01A316 06:C306: 10        .byte $10   ; 
- D 1 - - - 0x01A317 06:C307: 0C        .byte $0C   ; 
- D 1 - - - 0x01A318 06:C308: 0C        .byte $0C   ; 
C - - J - - 0x01A319 06:C309: A2 01     LDX #$01
C - - - - - 0x01A31B 06:C30B: 86 1A     STX ram_001A
C - - - - - 0x01A31D 06:C30D: A6 1A     LDX ram_001A
C - - - - - 0x01A31F 06:C30F: 20 BB A3  JSR $A3BB
C - - - - - 0x01A322 06:C312: A6 1A     LDX ram_001A
C - - - - - 0x01A324 06:C314: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A327 06:C317: C9 E0     CMP #$E0
C - - - - - 0x01A329 06:C319: B0 39     BCS $C354
C - - - - - 0x01A32B 06:C31B: C9 C0     CMP #$C0
C - - - - - 0x01A32D 06:C31D: 90 35     BCC $C354
C - - - - - 0x01A32F 06:C31F: 20 93 A3  JSR $A393
C - - - - - 0x01A332 06:C322: 20 60 D6  JSR $D660
C - - - - - 0x01A335 06:C325: B0 0B     BCS $C332
C - - - - - 0x01A337 06:C327: A5 5F     LDA ram_005F
C - - - - - 0x01A339 06:C329: 29 02     AND #$02
C - - - - - 0x01A33B 06:C32B: F0 0B     BEQ $C338
C - - - - - 0x01A33D 06:C32D: 20 06 D6  JSR $D606
C - - - - - 0x01A340 06:C330: 90 10     BCC $C342
- - - - - - 0x01A342 06:C332: 20        .byte $20   ; 
- - - - - - 0x01A343 06:C333: 63        .byte $63   ; <c>
- - - - - - 0x01A344 06:C334: A3        .byte $A3   ; 
- - - - - - 0x01A345 06:C335: 4C        .byte $4C   ; <L>
- - - - - - 0x01A346 06:C336: 54        .byte $54   ; <T>
- - - - - - 0x01A347 06:C337: A3        .byte $A3   ; 
C - - - - - 0x01A348 06:C338: A6 7A     LDX ram_007A
C - - - - - 0x01A34A 06:C33A: 20 B6 D5  JSR $D5B6
C - - - - - 0x01A34D 06:C33D: B0 1A     BCS $C359
C - - - - - 0x01A34F 06:C33F: CA        DEX
C - - - - - 0x01A350 06:C340: 10 F8     BPL $C33A
C - - - - - 0x01A352 06:C342: A6 1A     LDX ram_001A
C - - - - - 0x01A354 06:C344: 20 62 D5  JSR $D562
C - - - - - 0x01A357 06:C347: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A35A 06:C34A: 29 04     AND #$04
C - - - - - 0x01A35C 06:C34C: F0 06     BEQ $C354
C - - - - - 0x01A35E 06:C34E: 20 7A A3  JSR $A37A
C - - - - - 0x01A361 06:C351: 20 62 D5  JSR $D562
C D 1 - - - 0x01A364 06:C354: C6 1A     DEC ram_001A
C - - - - - 0x01A366 06:C356: 10 B5     BPL $C30D
C - - - - - 0x01A368 06:C358: 60        RTS
C - - - - - 0x01A369 06:C359: A9 00     LDA #$00
C - - - - - 0x01A36B 06:C35B: 95 8F     STA ram_008F,X
C - - - - - 0x01A36D 06:C35D: 20 63 A3  JSR $A363
C - - - - - 0x01A370 06:C360: 4C 54 A3  JMP $A354
C - - - - - 0x01A373 06:C363: A6 1A     LDX ram_001A
C - - - - - 0x01A375 06:C365: A9 22     LDA #$22
C - - - - - 0x01A377 06:C367: 20 E9 A5  JSR $A5E9
C - - - - - 0x01A37A 06:C36A: A9 10     LDA #$10
C - - - - - 0x01A37C 06:C36C: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A37F 06:C36F: A9 03     LDA #$03
C - - - - - 0x01A381 06:C371: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A384 06:C374: A9 00     LDA #$00
C - - - - - 0x01A386 06:C376: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A389 06:C379: 60        RTS
C - - - - - 0x01A38A 06:C37A: A0 08     LDY #$08
C - - - - - 0x01A38C 06:C37C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A38F 06:C37F: 6A        ROR
C - - - - - 0x01A390 06:C380: 90 02     BCC $C384
C - - - - - 0x01A392 06:C382: A0 18     LDY #$18
C - - - - - 0x01A394 06:C384: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A397 06:C387: 29 18     AND #$18
C - - - - - 0x01A399 06:C389: 4A        LSR
C - - - - - 0x01A39A 06:C38A: 85 12     STA ram_0012
C - - - - - 0x01A39C 06:C38C: 98        TYA
C - - - - - 0x01A39D 06:C38D: 18        CLC
C - - - - - 0x01A39E 06:C38E: 65 12     ADC ram_0012
C - - - - - 0x01A3A0 06:C390: A8        TAY
C - - - - - 0x01A3A1 06:C391: D0 0B     BNE $C39E
C - - - - - 0x01A3A3 06:C393: A0 00     LDY #$00
C - - - - - 0x01A3A5 06:C395: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A3A8 06:C398: 29 10     AND #$10
C - - - - - 0x01A3AA 06:C39A: F0 02     BEQ $C39E
C - - - - - 0x01A3AC 06:C39C: A0 04     LDY #$04
C - - - - - 0x01A3AE 06:C39E: B9 D9 A2  LDA $A2D9,Y
C - - - - - 0x01A3B1 06:C3A1: 18        CLC
C - - - - - 0x01A3B2 06:C3A2: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01A3B5 06:C3A5: 85 AD     STA ram_00AD
C - - - - - 0x01A3B7 06:C3A7: B9 DA A2  LDA $A2DA,Y
C - - - - - 0x01A3BA 06:C3AA: 18        CLC
C - - - - - 0x01A3BB 06:C3AB: 7D 32 03  ADC ram_0332,X
C - - - - - 0x01A3BE 06:C3AE: 85 AE     STA ram_00AE
C - - - - - 0x01A3C0 06:C3B0: B9 DB A2  LDA $A2DB,Y
C - - - - - 0x01A3C3 06:C3B3: 85 AF     STA ram_00AF
C - - - - - 0x01A3C5 06:C3B5: B9 DC A2  LDA $A2DC,Y
C - - - - - 0x01A3C8 06:C3B8: 85 B0     STA ram_00B0
C - - - - - 0x01A3CA 06:C3BA: 60        RTS
C - - - - - 0x01A3CB 06:C3BB: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A3CE 06:C3BE: 10 FA     BPL $C3BA
C - - - - - 0x01A3D0 06:C3C0: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A3D3 06:C3C3: 4A        LSR
C - - - - - 0x01A3D4 06:C3C4: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x01A3D7 06:C3C7: D7        .byte $D7   ; 
- D 1 - I - 0x01A3D8 06:C3C8: A4        .byte $A4   ; 
- D 1 - I - 0x01A3D9 06:C3C9: D4        .byte $D4   ; 
- D 1 - I - 0x01A3DA 06:C3CA: A3        .byte $A3   ; 
- - - - - - 0x01A3DB 06:C3CB: D4        .byte $D4   ; 
- - - - - - 0x01A3DC 06:C3CC: A3        .byte $A3   ; 
- D 1 - I - 0x01A3DD 06:C3CD: A8        .byte $A8   ; 
- D 1 - I - 0x01A3DE 06:C3CE: A4        .byte $A4   ; 
- D 1 - I - 0x01A3DF 06:C3CF: 6B        .byte $6B   ; <k>
- D 1 - I - 0x01A3E0 06:C3D0: A5        .byte $A5   ; 
- D 1 - I - 0x01A3E1 06:C3D1: D4        .byte $D4   ; 
- D 1 - I - 0x01A3E2 06:C3D2: A3        .byte $A3   ; 
- D 1 - I - 0x01A3E3 06:C3D3: D4        .byte $D4   ; 
- D 1 - I - 0x01A3E4 06:C3D4: A3        .byte $A3   ; 
C - - - - - 0x01A3E5 06:C3D5: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A3E8 06:C3D8: 85 00     STA ram_0000
C - - - - - 0x01A3EA 06:C3DA: E6 00     INC ram_0000
C - - - - - 0x01A3EC 06:C3DC: 20 58 D3  JSR $D358
C - - - - - 0x01A3EF 06:C3DF: D0 07     BNE $C3E8
C - - - - - 0x01A3F1 06:C3E1: A9 1C     LDA #$1C
C - - - - - 0x01A3F3 06:C3E3: A0 02     LDY #$02
C - - - - - 0x01A3F5 06:C3E5: 4C C7 A4  JMP $A4C7
C - - - - - 0x01A3F8 06:C3E8: 20 85 A5  JSR $A585
C - - - - - 0x01A3FB 06:C3EB: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A3FE 06:C3EE: 29 0C     AND #$0C
C - - - - - 0x01A400 06:C3F0: F0 56     BEQ $C448
C - - - - - 0x01A402 06:C3F2: A0 04     LDY #$04
C - - - - - 0x01A404 06:C3F4: C9 08     CMP #$08
C - - - - - 0x01A406 06:C3F6: F0 0A     BEQ $C402
C - - - - - 0x01A408 06:C3F8: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A40B 06:C3FB: 29 18     AND #$18
C - - - - - 0x01A40D 06:C3FD: 4A        LSR
C - - - - - 0x01A40E 06:C3FE: 18        CLC
C - - - - - 0x01A40F 06:C3FF: 69 18     ADC #$18
C - - - - - 0x01A411 06:C401: A8        TAY
C D 1 - - - 0x01A412 06:C402: BD 38 03  LDA ram_0338,X
C - - - - - 0x01A415 06:C405: 85 00     STA ram_0000
C - - - - - 0x01A417 06:C407: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01A41A 06:C40A: 85 01     STA ram_0001
C - - - - - 0x01A41C 06:C40C: 20 7B D6  JSR $D67B
C - - - - - 0x01A41F 06:C40F: 90 03     BCC $C414
C - - - - - 0x01A421 06:C411: 4C 7F D7  JMP $D77F
C - - - - - 0x01A424 06:C414: 20 AC D6  JSR $D6AC
C - - - - - 0x01A427 06:C417: 90 03     BCC $C41C
C - - - - - 0x01A429 06:C419: 4C 41 D7  JMP $D741
C - - - - - 0x01A42C 06:C41C: 20 25 D7  JSR $D725
C - - - - - 0x01A42F 06:C41F: C0 E0     CPY #$E0
C - - - - - 0x01A431 06:C421: 90 03     BCC $C426
C - - - - - 0x01A433 06:C423: 4C 89 D9  JMP $D989
C - - - - - 0x01A436 06:C426: 98        TYA
C - - - - - 0x01A437 06:C427: 18        CLC
C - - - - - 0x01A438 06:C428: 6D 02 03  ADC ram_0302
C - - - - - 0x01A43B 06:C42B: 85 01     STA ram_0001
C - - - - - 0x01A43D 06:C42D: AD 03 03  LDA ram_0303
C - - - - - 0x01A440 06:C430: 85 02     STA ram_0002
C - - - - - 0x01A442 06:C432: 20 33 CE  JSR $CE33
C - - - - - 0x01A445 06:C435: 98        TYA
C - - - - - 0x01A446 06:C436: C9 18     CMP #$18
C - - - - - 0x01A448 06:C438: 90 05     BCC $C43F
C - - - - - 0x01A44A 06:C43A: 29 02     AND #$02
C - - - - - 0x01A44C 06:C43C: 18        CLC
C - - - - - 0x01A44D 06:C43D: 69 04     ADC #$04
C - - - - - 0x01A44F 06:C43F: 18        CLC
C - - - - - 0x01A450 06:C440: 6D 04 03  ADC ram_0304
C - - - - - 0x01A453 06:C443: 85 01     STA ram_0001
C - - - - - 0x01A455 06:C445: 4C 33 CE  JMP $CE33
C - - - - - 0x01A458 06:C448: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A45B 06:C44B: 6A        ROR
C - - - - - 0x01A45C 06:C44C: 90 0F     BCC $C45D
C - - - - - 0x01A45E 06:C44E: 20 63 A4  JSR $A463
C D 1 - - - 0x01A461 06:C451: 20 AE D9  JSR $D9AE
C - - - - - 0x01A464 06:C454: BD 44 03  LDA ram_0344,X
C - - - - - 0x01A467 06:C457: 0A        ASL
C - - - - - 0x01A468 06:C458: 0A        ASL
C - - - - - 0x01A469 06:C459: A8        TAY
C - - - - - 0x01A46A 06:C45A: 4C 02 A4  JMP $A402
C - - - - - 0x01A46D 06:C45D: 20 94 A4  JSR $A494
C - - - - - 0x01A470 06:C460: 4C 51 A4  JMP $A451
C - - - - - 0x01A473 06:C463: 20 37 D9  JSR $D937
C - - - - - 0x01A476 06:C466: A9 F8     LDA #$F8
C - - - - - 0x01A478 06:C468: 20 AD D3  JSR $D3AD
C - - - - - 0x01A47B 06:C46B: C9 01     CMP #$01
C - - - - - 0x01A47D 06:C46D: F0 09     BEQ $C478
C - - - - - 0x01A47F 06:C46F: A5 2C     LDA ram_002C
C - - - - - 0x01A481 06:C471: 29 03     AND #$03
C - - - - - 0x01A483 06:C473: F0 1E     BEQ $C493
C - - - - - 0x01A485 06:C475: 4C F0 D6  JMP $D6F0
- - - - - - 0x01A488 06:C478: BD        .byte $BD   ; 
- - - - - - 0x01A489 06:C479: 20        .byte $20   ; 
- - - - - - 0x01A48A 06:C47A: 03        .byte $03   ; 
- - - - - - 0x01A48B 06:C47B: 29        .byte $29   ; 
- - - - - - 0x01A48C 06:C47C: 20        .byte $20   ; 
- - - - - - 0x01A48D 06:C47D: D0        .byte $D0   ; 
- - - - - - 0x01A48E 06:C47E: 14        .byte $14   ; 
- - - - - - 0x01A48F 06:C47F: A9        .byte $A9   ; 
- - - - - - 0x01A490 06:C480: 02        .byte $02   ; 
- - - - - - 0x01A491 06:C481: 20        .byte $20   ; 
- - - - - - 0x01A492 06:C482: E9        .byte $E9   ; 
- - - - - - 0x01A493 06:C483: A5        .byte $A5   ; 
- - - - - - 0x01A494 06:C484: A9        .byte $A9   ; 
- - - - - - 0x01A495 06:C485: 14        .byte $14   ; 
- - - - - - 0x01A496 06:C486: 9D        .byte $9D   ; 
- - - - - - 0x01A497 06:C487: 4A        .byte $4A   ; <J>
- - - - - - 0x01A498 06:C488: 03        .byte $03   ; 
- - - - - - 0x01A499 06:C489: A9        .byte $A9   ; 
- - - - - - 0x01A49A 06:C48A: 03        .byte $03   ; 
- - - - - - 0x01A49B 06:C48B: 9D        .byte $9D   ; 
- - - - - - 0x01A49C 06:C48C: 56        .byte $56   ; <V>
- - - - - - 0x01A49D 06:C48D: 03        .byte $03   ; 
- - - - - - 0x01A49E 06:C48E: A9        .byte $A9   ; 
- - - - - - 0x01A49F 06:C48F: 00        .byte $00   ; 
- - - - - - 0x01A4A0 06:C490: 9D        .byte $9D   ; 
- - - - - - 0x01A4A1 06:C491: 44        .byte $44   ; <D>
- - - - - - 0x01A4A2 06:C492: 03        .byte $03   ; 
C - - - - - 0x01A4A3 06:C493: 60        RTS
C - - - - - 0x01A4A4 06:C494: 20 37 D9  JSR $D937
C - - - - - 0x01A4A7 06:C497: A9 08     LDA #$08
C - - - - - 0x01A4A9 06:C499: 20 97 D3  JSR $D397
C - - - - - 0x01A4AC 06:C49C: C9 01     CMP #$01
C - - - - - 0x01A4AE 06:C49E: F0 D8     BEQ $C478
C - - - - - 0x01A4B0 06:C4A0: A5 2C     LDA ram_002C
C - - - - - 0x01A4B2 06:C4A2: 29 03     AND #$03
C - - - - - 0x01A4B4 06:C4A4: F0 ED     BEQ $C493
C - - - - - 0x01A4B6 06:C4A6: 4C 0F D7  JMP $D70F
C - - - - - 0x01A4B9 06:C4A9: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A4BC 06:C4AC: F0 05     BEQ $C4B3
C - - - - - 0x01A4BE 06:C4AE: A0 14     LDY #$14
C - - - - - 0x01A4C0 06:C4B0: 4C 02 A4  JMP $A402
C - - - - - 0x01A4C3 06:C4B3: 20 3E E3  JSR $E33E
C - - - - - 0x01A4C6 06:C4B6: BC 2C 03  LDY ram_032C,X
C - - - - - 0x01A4C9 06:C4B9: C0 BF     CPY #$BF
C - - - - - 0x01A4CB 06:C4BB: 90 06     BCC $C4C3
C - - - - - 0x01A4CD 06:C4BD: 29 01     AND #$01
C - - - - - 0x01A4CF 06:C4BF: D0 02     BNE $C4C3
C - - - - - 0x01A4D1 06:C4C1: A9 03     LDA #$03
C - - - - - 0x01A4D3 06:C4C3: A8        TAY
C - - - - - 0x01A4D4 06:C4C4: B9 58 E3  LDA $E358,Y
C D 1 - - - 0x01A4D7 06:C4C7: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A4DA 06:C4CA: 98        TYA
C - - - - - 0x01A4DB 06:C4CB: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A4DE 06:C4CE: A9 02     LDA #$02
C - - - - - 0x01A4E0 06:C4D0: 20 E9 A5  JSR $A5E9
C - - - - - 0x01A4E3 06:C4D3: A9 00     LDA #$00
C - - - - - 0x01A4E5 06:C4D5: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A4E8 06:C4D8: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A4EB 06:C4DB: C9 DF     CMP #$DF
C - - - - - 0x01A4ED 06:C4DD: B0 1E     BCS $C4FD
C - - - - - 0x01A4EF 06:C4DF: BD 56 03  LDA ram_0356,X
C - - - - - 0x01A4F2 06:C4E2: C9 03     CMP #$03
C - - - - - 0x01A4F4 06:C4E4: D0 17     BNE $C4FD
C - - - - - 0x01A4F6 06:C4E6: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A4F9 06:C4E9: 6A        ROR
C - - - - - 0x01A4FA 06:C4EA: 90 0A     BCC $C4F6
C - - - - - 0x01A4FC 06:C4EC: 29 10     AND #$10
C - - - - - 0x01A4FE 06:C4EE: D0 0A     BNE $C4FA
C - - - - - 0x01A500 06:C4F0: 20 63 A4  JSR $A463
C - - - - - 0x01A503 06:C4F3: 4C FD A4  JMP $A4FD
C - - - - - 0x01A506 06:C4F6: 29 10     AND #$10
C - - - - - 0x01A508 06:C4F8: D0 F6     BNE $C4F0
C - - - - - 0x01A50A 06:C4FA: 20 94 A4  JSR $A494
C D 1 - - - 0x01A50D 06:C4FD: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A510 06:C500: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01A513 06:C503: 18        CLC
C - - - - - 0x01A514 06:C504: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01A517 06:C507: C9 DF     CMP #$DF
C - - - - - 0x01A519 06:C509: 90 09     BCC $C514
- - - - - - 0x01A51B 06:C50B: A0        .byte $A0   ; 
- - - - - - 0x01A51C 06:C50C: DF        .byte $DF   ; 
- - - - - - 0x01A51D 06:C50D: C9        .byte $C9   ; 
- - - - - - 0x01A51E 06:C50E: F8        .byte $F8   ; 
- - - - - - 0x01A51F 06:C50F: 90        .byte $90   ; 
- - - - - - 0x01A520 06:C510: 02        .byte $02   ; 
- - - - - - 0x01A521 06:C511: A0        .byte $A0   ; 
- - - - - - 0x01A522 06:C512: 00        .byte $00   ; 
- - - - - - 0x01A523 06:C513: 98        .byte $98   ; 
C - - - - - 0x01A524 06:C514: 9D 2C 03  STA ram_032C,X
C - - - - - 0x01A527 06:C517: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A52A 06:C51A: C0 18     CPY #$18
C - - - - - 0x01A52C 06:C51C: 90 2E     BCC $C54C
C - - - - - 0x01A52E 06:C51E: C9 DF     CMP #$DF
C - - - - - 0x01A530 06:C520: 90 05     BCC $C527
- - - - - - 0x01A532 06:C522: A0        .byte $A0   ; 
- - - - - - 0x01A533 06:C523: FF        .byte $FF   ; 
- - - - - - 0x01A534 06:C524: 4C        .byte $4C   ; <L>
- - - - - - 0x01A535 06:C525: 7F        .byte $7F   ; 
- - - - - - 0x01A536 06:C526: D7        .byte $D7   ; 
C - - - - - 0x01A537 06:C527: 85 00     STA ram_0000
C - - - - - 0x01A539 06:C529: E6 00     INC ram_0000
C - - - - - 0x01A53B 06:C52B: 20 58 D3  JSR $D358
C - - - - - 0x01A53E 06:C52E: F0 1C     BEQ $C54C
C - - - - - 0x01A540 06:C530: C9 02     CMP #$02
C - - - - - 0x01A542 06:C532: F0 07     BEQ $C53B
C - - - - - 0x01A544 06:C534: 20 47 D3  JSR $D347
C - - - - - 0x01A547 06:C537: D0 07     BNE $C540
- - - - - - 0x01A549 06:C539: F0        .byte $F0   ; 
- - - - - - 0x01A54A 06:C53A: 11        .byte $11   ; 
C - - - - - 0x01A54B 06:C53B: 20 47 D3  JSR $D347
C - - - - - 0x01A54E 06:C53E: F0 0C     BEQ $C54C
C - - - - - 0x01A550 06:C540: 20 A8 D7  JSR $D7A8
C - - - - - 0x01A553 06:C543: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A556 06:C546: 29 20     AND #$20
C - - - - - 0x01A558 06:C548: D0 1D     BNE $C567
C - - - - - 0x01A55A 06:C54A: F0 0A     BEQ $C556
C - - - - - 0x01A55C 06:C54C: FE 4A 03  INC ram_034A,X
C - - - - - 0x01A55F 06:C54F: A9 2F     LDA #$2F
C - - - - - 0x01A561 06:C551: DD 4A 03  CMP ram_034A,X
C - - - - - 0x01A564 06:C554: B0 03     BCS $C559
C - - - - - 0x01A566 06:C556: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A569 06:C559: A0 0C     LDY #$0C
C - - - - - 0x01A56B 06:C55B: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A56E 06:C55E: 29 20     AND #$20
C - - - - - 0x01A570 06:C560: D0 02     BNE $C564
C - - - - - 0x01A572 06:C562: A0 08     LDY #$08
C - - - - - 0x01A574 06:C564: 4C 02 A4  JMP $A402
C - - - - - 0x01A577 06:C567: A9 30     LDA #$30
C - - - - - 0x01A579 06:C569: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A57C 06:C56C: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A57F 06:C56F: D0 03     BNE $C574
C - - - - - 0x01A581 06:C571: 4C 7F D7  JMP $D77F
C - - - - - 0x01A584 06:C574: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A587 06:C577: 20 5F D0  JSR $D05F
C - - - - - 0x01A58A 06:C57A: A8        TAY
C - - - - - 0x01A58B 06:C57B: B9 82 A5  LDA $A582,Y
C - - - - - 0x01A58E 06:C57E: A8        TAY
C - - - - - 0x01A58F 06:C57F: 4C 02 A4  JMP $A402
- D 1 - - - 0x01A592 06:C582: E4        .byte $E4   ; 
- D 1 - - - 0x01A593 06:C583: E0        .byte $E0   ; 
- D 1 - - - 0x01A594 06:C584: 10        .byte $10   ; 
C - - - - - 0x01A595 06:C585: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A598 06:C588: F0 0A     BEQ $C594
C - - - - - 0x01A59A 06:C58A: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A59D 06:C58D: D0 66     BNE $C5F5
C - - - - - 0x01A59F 06:C58F: A9 00     LDA #$00
C - - - - - 0x01A5A1 06:C591: 20 E9 A5  JSR $A5E9
C - - - - - 0x01A5A4 06:C594: 20 F6 A5  JSR $A5F6
C - - - - - 0x01A5A7 06:C597: A5 2C     LDA ram_002C
C - - - - - 0x01A5A9 06:C599: 6A        ROR
C - - - - - 0x01A5AA 06:C59A: 90 28     BCC $C5C4
C - - - - - 0x01A5AC 06:C59C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A5AF 06:C59F: 29 40     AND #$40
C - - - - - 0x01A5B1 06:C5A1: F0 21     BEQ $C5C4
C - - - - - 0x01A5B3 06:C5A3: A5 6A     LDA ram_006A
C - - - - - 0x01A5B5 06:C5A5: DD 2C 03  CMP ram_032C,X
C - - - - - 0x01A5B8 06:C5A8: D0 1A     BNE $C5C4
C - - - - - 0x01A5BA 06:C5AA: A5 64     LDA ram_0064
C - - - - - 0x01A5BC 06:C5AC: 38        SEC
C - - - - - 0x01A5BD 06:C5AD: FD 32 03  SBC ram_0332,X
C - - - - - 0x01A5C0 06:C5B0: B0 03     BCS $C5B5
C - - - - - 0x01A5C2 06:C5B2: 20 73 D0  JSR $D073
C - - - - - 0x01A5C5 06:C5B5: C9 18     CMP #$18
C - - - - - 0x01A5C7 06:C5B7: B0 0B     BCS $C5C4
C - - - - - 0x01A5C9 06:C5B9: A9 31     LDA #$31
C - - - - - 0x01A5CB 06:C5BB: 20 20 C4  JSR $C420
C - - - - - 0x01A5CE 06:C5BE: A9 0C     LDA #$0C
C - - - - - 0x01A5D0 06:C5C0: 85 05     STA ram_0005
C - - - - - 0x01A5D2 06:C5C2: D0 1E     BNE $C5E2
C - - - - - 0x01A5D4 06:C5C4: A5 2C     LDA ram_002C
C - - - - - 0x01A5D6 06:C5C6: 29 3F     AND #$3F
C - - - - - 0x01A5D8 06:C5C8: D0 2B     BNE $C5F5
C - - - - - 0x01A5DA 06:C5CA: 20 64 D0  JSR $D064
C - - - - - 0x01A5DD 06:C5CD: 6A        ROR
C - - - - - 0x01A5DE 06:C5CE: 90 25     BCC $C5F5
C - - - - - 0x01A5E0 06:C5D0: 29 07     AND #$07
C - - - - - 0x01A5E2 06:C5D2: A8        TAY
C - - - - - 0x01A5E3 06:C5D3: B9 01 A3  LDA $A301,Y
C - - - - - 0x01A5E6 06:C5D6: 85 05     STA ram_0005
C - - - - - 0x01A5E8 06:C5D8: F0 11     BEQ $C5EB
C - - - - - 0x01A5EA 06:C5DA: C9 0C     CMP #$0C
C - - - - - 0x01A5EC 06:C5DC: F0 04     BEQ $C5E2
C - - - - - 0x01A5EE 06:C5DE: A9 20     LDA #$20
C - - - - - 0x01A5F0 06:C5E0: D0 02     BNE $C5E4
C - - - - - 0x01A5F2 06:C5E2: A9 20     LDA #$20
C - - - - - 0x01A5F4 06:C5E4: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A5F7 06:C5E7: D0 02     BNE $C5EB
C - - - - - 0x01A5F9 06:C5E9: 85 05     STA ram_0005
C - - - - - 0x01A5FB 06:C5EB: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A5FE 06:C5EE: 29 C1     AND #$C1
C - - - - - 0x01A600 06:C5F0: 05 05     ORA ram_0005
C - - - - - 0x01A602 06:C5F2: 9D 20 03  STA ram_0320,X
C - - - - - 0x01A605 06:C5F5: 60        RTS
C - - - - - 0x01A606 06:C5F6: A9 7F     LDA #$7F
C - - - - - 0x01A608 06:C5F8: 20 BD D6  JSR $D6BD
C - - - - - 0x01A60B 06:C5FB: 84 05     STY ram_0005
C - - - - - 0x01A60D 06:C5FD: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A610 06:C600: 29 FE     AND #$FE
C - - - - - 0x01A612 06:C602: 05 05     ORA ram_0005
C - - - - - 0x01A614 06:C604: 9D 20 03  STA ram_0320,X
C - - - - - 0x01A617 06:C607: 60        RTS
- D 1 - - - 0x01A618 06:C608: 00        .byte $00   ; 
- D 1 - - - 0x01A619 06:C609: 00        .byte $00   ; 
- D 1 - - - 0x01A61A 06:C60A: 20        .byte $20   ; 
- D 1 - - - 0x01A61B 06:C60B: 04        .byte $04   ; 
- D 1 - - - 0x01A61C 06:C60C: 00        .byte $00   ; 
- D 1 - - - 0x01A61D 06:C60D: 00        .byte $00   ; 
- D 1 - - - 0x01A61E 06:C60E: 18        .byte $18   ; 
- D 1 - - - 0x01A61F 06:C60F: 04        .byte $04   ; 
- D 1 - - - 0x01A620 06:C610: 00        .byte $00   ; 
- D 1 - - - 0x01A621 06:C611: 00        .byte $00   ; 
- D 1 - - - 0x01A622 06:C612: 20        .byte $20   ; 
- D 1 - - - 0x01A623 06:C613: 04        .byte $04   ; 
- D 1 - - - 0x01A624 06:C614: 00        .byte $00   ; 
- D 1 - - - 0x01A625 06:C615: 00        .byte $00   ; 
- D 1 - - - 0x01A626 06:C616: 18        .byte $18   ; 
- D 1 - - - 0x01A627 06:C617: 04        .byte $04   ; 
- D 1 - - - 0x01A628 06:C618: F0        .byte $F0   ; 
- D 1 - - - 0x01A629 06:C619: 06        .byte $06   ; 
- D 1 - - - 0x01A62A 06:C61A: 10        .byte $10   ; 
- D 1 - - - 0x01A62B 06:C61B: 08        .byte $08   ; 
- - - - - - 0x01A62C 06:C61C: 00        .byte $00   ; 
- - - - - - 0x01A62D 06:C61D: 00        .byte $00   ; 
- - - - - - 0x01A62E 06:C61E: 20        .byte $20   ; 
- - - - - - 0x01A62F 06:C61F: 04        .byte $04   ; 
- - - - - - 0x01A630 06:C620: 00        .byte $00   ; 
- - - - - - 0x01A631 06:C621: 00        .byte $00   ; 
- - - - - - 0x01A632 06:C622: 18        .byte $18   ; 
- - - - - - 0x01A633 06:C623: 04        .byte $04   ; 
- - - - - - 0x01A634 06:C624: F0        .byte $F0   ; 
- - - - - - 0x01A635 06:C625: FA        .byte $FA   ; 
- - - - - - 0x01A636 06:C626: 10        .byte $10   ; 
- - - - - - 0x01A637 06:C627: 08        .byte $08   ; 
- D 1 - - - 0x01A638 06:C628: 00        .byte $00   ; 
- D 1 - - - 0x01A639 06:C629: 00        .byte $00   ; 
- D 1 - - - 0x01A63A 06:C62A: 20        .byte $20   ; 
- D 1 - - - 0x01A63B 06:C62B: 04        .byte $04   ; 
- D 1 - - - 0x01A63C 06:C62C: 00        .byte $00   ; 
- D 1 - - - 0x01A63D 06:C62D: 00        .byte $00   ; 
- D 1 - - - 0x01A63E 06:C62E: 18        .byte $18   ; 
- D 1 - - - 0x01A63F 06:C62F: 04        .byte $04   ; 
- D 1 - - - 0x01A640 06:C630: 00        .byte $00   ; 
- D 1 - - - 0x01A641 06:C631: 00        .byte $00   ; 
- D 1 - - - 0x01A642 06:C632: 10        .byte $10   ; 
- D 1 - - - 0x01A643 06:C633: 08        .byte $08   ; 
- - - - - - 0x01A644 06:C634: 00        .byte $00   ; 
- - - - - - 0x01A645 06:C635: 00        .byte $00   ; 
- - - - - - 0x01A646 06:C636: 18        .byte $18   ; 
- - - - - - 0x01A647 06:C637: 08        .byte $08   ; 
- D 1 - - - 0x01A648 06:C638: 00        .byte $00   ; 
- D 1 - - - 0x01A649 06:C639: 00        .byte $00   ; 
- D 1 - - - 0x01A64A 06:C63A: 20        .byte $20   ; 
- D 1 - - - 0x01A64B 06:C63B: 04        .byte $04   ; 
- D 1 - - - 0x01A64C 06:C63C: 00        .byte $00   ; 
- D 1 - - - 0x01A64D 06:C63D: 00        .byte $00   ; 
- D 1 - - - 0x01A64E 06:C63E: 18        .byte $18   ; 
- D 1 - - - 0x01A64F 06:C63F: 04        .byte $04   ; 
- D 1 - - - 0x01A650 06:C640: 00        .byte $00   ; 
- D 1 - - - 0x01A651 06:C641: 00        .byte $00   ; 
- D 1 - - - 0x01A652 06:C642: 10        .byte $10   ; 
- D 1 - - - 0x01A653 06:C643: 08        .byte $08   ; 
- D 1 - - - 0x01A654 06:C644: 04        .byte $04   ; 
- D 1 - - - 0x01A655 06:C645: 08        .byte $08   ; 
- D 1 - - - 0x01A656 06:C646: 10        .byte $10   ; 
- D 1 - - - 0x01A657 06:C647: 08        .byte $08   ; 
- - - - - - 0x01A658 06:C648: 00        .byte $00   ; 
- - - - - - 0x01A659 06:C649: 00        .byte $00   ; 
- - - - - - 0x01A65A 06:C64A: 20        .byte $20   ; 
- - - - - - 0x01A65B 06:C64B: 04        .byte $04   ; 
- - - - - - 0x01A65C 06:C64C: 00        .byte $00   ; 
- - - - - - 0x01A65D 06:C64D: 00        .byte $00   ; 
- - - - - - 0x01A65E 06:C64E: 18        .byte $18   ; 
- - - - - - 0x01A65F 06:C64F: 04        .byte $04   ; 
- - - - - - 0x01A660 06:C650: 00        .byte $00   ; 
- - - - - - 0x01A661 06:C651: 00        .byte $00   ; 
- - - - - - 0x01A662 06:C652: 10        .byte $10   ; 
- - - - - - 0x01A663 06:C653: 08        .byte $08   ; 
- - - - - - 0x01A664 06:C654: 04        .byte $04   ; 
- - - - - - 0x01A665 06:C655: F8        .byte $F8   ; 
- - - - - - 0x01A666 06:C656: 10        .byte $10   ; 
- - - - - - 0x01A667 06:C657: 08        .byte $08   ; 
- D 1 - - - 0x01A668 06:C658: 00        .byte $00   ; 
- D 1 - - - 0x01A669 06:C659: 00        .byte $00   ; 
- D 1 - - - 0x01A66A 06:C65A: 10        .byte $10   ; 
- D 1 - - - 0x01A66B 06:C65B: 10        .byte $10   ; 
- D 1 - - - 0x01A66C 06:C65C: 10        .byte $10   ; 
- D 1 - - - 0x01A66D 06:C65D: 10        .byte $10   ; 
- D 1 - - - 0x01A66E 06:C65E: 08        .byte $08   ; 
- D 1 - - - 0x01A66F 06:C65F: 08        .byte $08   ; 
- D 1 - - - 0x01A670 06:C660: 00        .byte $00   ; 
- D 1 - - - 0x01A671 06:C661: 00        .byte $00   ; 
- D 1 - - - 0x01A672 06:C662: 10        .byte $10   ; 
- D 1 - - - 0x01A673 06:C663: 10        .byte $10   ; 
- D 1 - - - 0x01A674 06:C664: 10        .byte $10   ; 
- D 1 - - - 0x01A675 06:C665: 10        .byte $10   ; 
- D 1 - - - 0x01A676 06:C666: 10        .byte $10   ; 
- D 1 - - - 0x01A677 06:C667: 08        .byte $08   ; 
C - - J - - 0x01A678 06:C668: A2 01     LDX #$01
C - - - - - 0x01A67A 06:C66A: 86 1A     STX ram_001A
C - - - - - 0x01A67C 06:C66C: A6 1A     LDX ram_001A
C - - - - - 0x01A67E 06:C66E: 20 72 A7  JSR $A772
C - - - - - 0x01A681 06:C671: A6 1A     LDX ram_001A
C - - - - - 0x01A683 06:C673: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A686 06:C676: C9 E0     CMP #$E0
C - - - - - 0x01A688 06:C678: B0 3C     BCS $C6B6
C - - - - - 0x01A68A 06:C67A: C9 C0     CMP #$C0
C - - - - - 0x01A68C 06:C67C: 90 38     BCC $C6B6
C - - - - - 0x01A68E 06:C67E: AD 00 03  LDA ram_0300
C - - - - - 0x01A691 06:C681: C9 17     CMP #$17
C - - - - - 0x01A693 06:C683: D0 06     BNE $C68B
C - - - - - 0x01A695 06:C685: 20 2A A7  JSR $A72A
C - - - - - 0x01A698 06:C688: 4C 8E A6  JMP $A68E
C - - - - - 0x01A69B 06:C68B: 20 4A A7  JSR $A74A
C D 1 - - - 0x01A69E 06:C68E: 20 60 D6  JSR $D660
C - - - - - 0x01A6A1 06:C691: B0 0B     BCS $C69E
C - - - - - 0x01A6A3 06:C693: A5 5F     LDA ram_005F
C - - - - - 0x01A6A5 06:C695: 29 02     AND #$02
C - - - - - 0x01A6A7 06:C697: F0 0B     BEQ $C6A4
C - - - - - 0x01A6A9 06:C699: 20 06 D6  JSR $D606
C - - - - - 0x01A6AC 06:C69C: 90 10     BCC $C6AE
C - - - - - 0x01A6AE 06:C69E: 20 C5 A6  JSR $A6C5
C - - - - - 0x01A6B1 06:C6A1: 4C B6 A6  JMP $A6B6
C - - - - - 0x01A6B4 06:C6A4: A6 7A     LDX ram_007A
C - - - - - 0x01A6B6 06:C6A6: 20 B6 D5  JSR $D5B6
C - - - - - 0x01A6B9 06:C6A9: B0 10     BCS $C6BB
C - - - - - 0x01A6BB 06:C6AB: CA        DEX
C - - - - - 0x01A6BC 06:C6AC: 10 F8     BPL $C6A6
C - - - - - 0x01A6BE 06:C6AE: A6 1A     LDX ram_001A
C - - - - - 0x01A6C0 06:C6B0: 20 DC A6  JSR $A6DC
C - - - - - 0x01A6C3 06:C6B3: 20 62 D5  JSR $D562
C D 1 - - - 0x01A6C6 06:C6B6: C6 1A     DEC ram_001A
C - - - - - 0x01A6C8 06:C6B8: 10 B2     BPL $C66C
C - - - - - 0x01A6CA 06:C6BA: 60        RTS
C - - - - - 0x01A6CB 06:C6BB: A9 00     LDA #$00
C - - - - - 0x01A6CD 06:C6BD: 95 8F     STA ram_008F,X
C - - - - - 0x01A6CF 06:C6BF: 20 C5 A6  JSR $A6C5
C - - - - - 0x01A6D2 06:C6C2: 4C B6 A6  JMP $A6B6
C - - - - - 0x01A6D5 06:C6C5: A6 1A     LDX ram_001A
C - - - - - 0x01A6D7 06:C6C7: A9 22     LDA #$22
C - - - - - 0x01A6D9 06:C6C9: 20 E3 A9  JSR $A9E3
C - - - - - 0x01A6DC 06:C6CC: A9 10     LDA #$10
C - - - - - 0x01A6DE 06:C6CE: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A6E1 06:C6D1: A9 03     LDA #$03
C - - - - - 0x01A6E3 06:C6D3: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A6E6 06:C6D6: A9 00     LDA #$00
C - - - - - 0x01A6E8 06:C6D8: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A6EB 06:C6DB: 60        RTS
C - - - - - 0x01A6EC 06:C6DC: AD 00 03  LDA ram_0300
C - - - - - 0x01A6EF 06:C6DF: C9 17     CMP #$17
C - - - - - 0x01A6F1 06:C6E1: F0 25     BEQ $C708
C - - - - - 0x01A6F3 06:C6E3: A9 20     LDA #$20
C - - - - - 0x01A6F5 06:C6E5: 85 00     STA ram_0000
C - - - - - 0x01A6F7 06:C6E7: A0 30     LDY #$30
C - - - - - 0x01A6F9 06:C6E9: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A6FC 06:C6EC: 48        PHA
C - - - - - 0x01A6FD 06:C6ED: 29 16     AND #$16
C - - - - - 0x01A6FF 06:C6EF: F0 2D     BEQ $C71E
C - - - - - 0x01A701 06:C6F1: C9 06     CMP #$06
C - - - - - 0x01A703 06:C6F3: F0 29     BEQ $C71E
C - - - - - 0x01A705 06:C6F5: A0 34     LDY #$34
C - - - - - 0x01A707 06:C6F7: C9 10     CMP #$10
C - - - - - 0x01A709 06:C6F9: F0 23     BEQ $C71E
C - - - - - 0x01A70B 06:C6FB: A0 38     LDY #$38
C - - - - - 0x01A70D 06:C6FD: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A710 06:C700: C9 18     CMP #$18
C - - - - - 0x01A712 06:C702: 90 1A     BCC $C71E
C - - - - - 0x01A714 06:C704: A0 3C     LDY #$3C
C - - - - - 0x01A716 06:C706: D0 16     BNE $C71E
C - - - - - 0x01A718 06:C708: A9 18     LDA #$18
C - - - - - 0x01A71A 06:C70A: 85 00     STA ram_0000
C - - - - - 0x01A71C 06:C70C: A0 08     LDY #$08
C - - - - - 0x01A71E 06:C70E: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A721 06:C711: 48        PHA
C - - - - - 0x01A722 06:C712: 29 18     AND #$18
C - - - - - 0x01A724 06:C714: F0 08     BEQ $C71E
C - - - - - 0x01A726 06:C716: A0 0C     LDY #$0C
C - - - - - 0x01A728 06:C718: C9 10     CMP #$10
C - - - - - 0x01A72A 06:C71A: F0 02     BEQ $C71E
C - - - - - 0x01A72C 06:C71C: A0 10     LDY #$10
C - - - - - 0x01A72E 06:C71E: 68        PLA
C - - - - - 0x01A72F 06:C71F: 6A        ROR
C - - - - - 0x01A730 06:C720: 90 33     BCC $C755
C - - - - - 0x01A732 06:C722: 98        TYA
C - - - - - 0x01A733 06:C723: 18        CLC
C - - - - - 0x01A734 06:C724: 65 00     ADC ram_0000
C - - - - - 0x01A736 06:C726: A8        TAY
C - - - - - 0x01A737 06:C727: 4C 55 A7  JMP $A755
C - - - - - 0x01A73A 06:C72A: A0 20     LDY #$20
C - - - - - 0x01A73C 06:C72C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A73F 06:C72F: 29 16     AND #$16
C - - - - - 0x01A741 06:C731: F0 22     BEQ $C755
C - - - - - 0x01A743 06:C733: C9 06     CMP #$06
C - - - - - 0x01A745 06:C735: F0 1E     BEQ $C755
C - - - - - 0x01A747 06:C737: A0 28     LDY #$28
C - - - - - 0x01A749 06:C739: C9 10     CMP #$10
C - - - - - 0x01A74B 06:C73B: F0 18     BEQ $C755
C - - - - - 0x01A74D 06:C73D: A0 24     LDY #$24
C - - - - - 0x01A74F 06:C73F: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A752 06:C742: C9 18     CMP #$18
C - - - - - 0x01A754 06:C744: 90 0F     BCC $C755
C - - - - - 0x01A756 06:C746: A0 28     LDY #$28
C - - - - - 0x01A758 06:C748: D0 0B     BNE $C755
C - - - - - 0x01A75A 06:C74A: A0 00     LDY #$00
C - - - - - 0x01A75C 06:C74C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A75F 06:C74F: 29 10     AND #$10
C - - - - - 0x01A761 06:C751: F0 02     BEQ $C755
C - - - - - 0x01A763 06:C753: A0 04     LDY #$04
C D 1 - - - 0x01A765 06:C755: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A768 06:C758: 18        CLC
C - - - - - 0x01A769 06:C759: 79 08 A6  ADC $A608,Y
C - - - - - 0x01A76C 06:C75C: 85 AD     STA ram_00AD
C - - - - - 0x01A76E 06:C75E: BD 32 03  LDA ram_0332,X
C - - - - - 0x01A771 06:C761: 18        CLC
C - - - - - 0x01A772 06:C762: 79 09 A6  ADC $A609,Y
C - - - - - 0x01A775 06:C765: 85 AE     STA ram_00AE
C - - - - - 0x01A777 06:C767: B9 0A A6  LDA $A60A,Y
C - - - - - 0x01A77A 06:C76A: 85 AF     STA ram_00AF
C - - - - - 0x01A77C 06:C76C: B9 0B A6  LDA $A60B,Y
C - - - - - 0x01A77F 06:C76F: 85 B0     STA ram_00B0
C - - - - - 0x01A781 06:C771: 60        RTS
C - - - - - 0x01A782 06:C772: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A785 06:C775: 10 FA     BPL $C771
C - - - - - 0x01A787 06:C777: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A78A 06:C77A: 4A        LSR
C - - - - - 0x01A78B 06:C77B: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x01A78E 06:C77E: CD        .byte $CD   ; 
- D 1 - I - 0x01A78F 06:C77F: A8        .byte $A8   ; 
- - - - - - 0x01A790 06:C780: 8B        .byte $8B   ; 
- - - - - - 0x01A791 06:C781: A7        .byte $A7   ; 
- D 1 - I - 0x01A792 06:C782: 8B        .byte $8B   ; 
- D 1 - I - 0x01A793 06:C783: A7        .byte $A7   ; 
- D 1 - I - 0x01A794 06:C784: 92        .byte $92   ; 
- D 1 - I - 0x01A795 06:C785: A8        .byte $A8   ; 
- D 1 - I - 0x01A796 06:C786: 88        .byte $88   ; 
- D 1 - I - 0x01A797 06:C787: A9        .byte $A9   ; 
- D 1 - I - 0x01A798 06:C788: 8B        .byte $8B   ; 
- D 1 - I - 0x01A799 06:C789: A7        .byte $A7   ; 
- D 1 - I - 0x01A79A 06:C78A: 8B        .byte $8B   ; 
- D 1 - I - 0x01A79B 06:C78B: A7        .byte $A7   ; 
C - - - - - 0x01A79C 06:C78C: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A79F 06:C78F: 85 00     STA ram_0000
C - - - - - 0x01A7A1 06:C791: E6 00     INC ram_0000
C - - - - - 0x01A7A3 06:C793: 20 58 D3  JSR $D358
C - - - - - 0x01A7A6 06:C796: D0 07     BNE $C79F
C - - - - - 0x01A7A8 06:C798: A9 1C     LDA #$1C
C - - - - - 0x01A7AA 06:C79A: A0 02     LDY #$02
C - - - - - 0x01A7AC 06:C79C: 4C BD A8  JMP $A8BD
C - - - - - 0x01A7AF 06:C79F: 20 A2 A9  JSR $A9A2
C - - - - - 0x01A7B2 06:C7A2: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A7B5 06:C7A5: 29 08     AND #$08
C - - - - - 0x01A7B7 06:C7A7: D0 03     BNE $C7AC
C - - - - - 0x01A7B9 06:C7A9: 4C 30 A8  JMP $A830
C - - - - - 0x01A7BC 06:C7AC: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A7BF 06:C7AF: 29 07     AND #$07
C - - - - - 0x01A7C1 06:C7B1: D0 05     BNE $C7B8
C - - - - - 0x01A7C3 06:C7B3: A9 31     LDA #$31
C - - - - - 0x01A7C5 06:C7B5: 20 20 C4  JSR $C420
C - - - - - 0x01A7C8 06:C7B8: A0 18     LDY #$18
C - - - - - 0x01A7CA 06:C7BA: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A7CD 06:C7BD: 29 08     AND #$08
C - - - - - 0x01A7CF 06:C7BF: D0 02     BNE $C7C3
C - - - - - 0x01A7D1 06:C7C1: A0 1C     LDY #$1C
C D 1 - - - 0x01A7D3 06:C7C3: BD 38 03  LDA ram_0338,X
C - - - - - 0x01A7D6 06:C7C6: 85 00     STA ram_0000
C - - - - - 0x01A7D8 06:C7C8: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01A7DB 06:C7CB: 85 01     STA ram_0001
C - - - - - 0x01A7DD 06:C7CD: 20 7B D6  JSR $D67B
C - - - - - 0x01A7E0 06:C7D0: 90 03     BCC $C7D5
C - - - - - 0x01A7E2 06:C7D2: 4C 7F D7  JMP $D77F
C - - - - - 0x01A7E5 06:C7D5: 20 AC D6  JSR $D6AC
C - - - - - 0x01A7E8 06:C7D8: 90 03     BCC $C7DD
C - - - - - 0x01A7EA 06:C7DA: 4C 41 D7  JMP $D741
C - - - - - 0x01A7ED 06:C7DD: 20 25 D7  JSR $D725
C - - - - - 0x01A7F0 06:C7E0: C0 E0     CPY #$E0
C - - - - - 0x01A7F2 06:C7E2: 90 03     BCC $C7E7
C - - - - - 0x01A7F4 06:C7E4: 4C 89 D9  JMP $D989
C - - - - - 0x01A7F7 06:C7E7: AD 00 03  LDA ram_0300
C - - - - - 0x01A7FA 06:C7EA: C9 18     CMP #$18
C - - - - - 0x01A7FC 06:C7EC: D0 18     BNE $C806
C - - - - - 0x01A7FE 06:C7EE: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A801 06:C7F1: 29 26     AND #$26
C - - - - - 0x01A803 06:C7F3: C9 02     CMP #$02
C - - - - - 0x01A805 06:C7F5: D0 0F     BNE $C806
C - - - - - 0x01A807 06:C7F7: 98        TYA
C - - - - - 0x01A808 06:C7F8: 18        CLC
C - - - - - 0x01A809 06:C7F9: 6D 05 03  ADC ram_0305
C - - - - - 0x01A80C 06:C7FC: 85 01     STA ram_0001
C - - - - - 0x01A80E 06:C7FE: AD 03 03  LDA ram_0303
C - - - - - 0x01A811 06:C801: 85 02     STA ram_0002
C - - - - - 0x01A813 06:C803: 4C 33 CE  JMP $CE33
C - - - - - 0x01A816 06:C806: 98        TYA
C - - - - - 0x01A817 06:C807: 18        CLC
C - - - - - 0x01A818 06:C808: 6D 02 03  ADC ram_0302
C - - - - - 0x01A81B 06:C80B: 85 01     STA ram_0001
C - - - - - 0x01A81D 06:C80D: AD 03 03  LDA ram_0303
C - - - - - 0x01A820 06:C810: 85 02     STA ram_0002
C - - - - - 0x01A822 06:C812: 20 33 CE  JSR $CE33
C - - - - - 0x01A825 06:C815: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A828 06:C818: 29 08     AND #$08
C - - - - - 0x01A82A 06:C81A: F0 0A     BEQ $C826
C - - - - - 0x01A82C 06:C81C: A0 04     LDY #$04
C - - - - - 0x01A82E 06:C81E: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A831 06:C821: 6A        ROR
C - - - - - 0x01A832 06:C822: 90 02     BCC $C826
C - - - - - 0x01A834 06:C824: C8        INY
C - - - - - 0x01A835 06:C825: C8        INY
C - - - - - 0x01A836 06:C826: 98        TYA
C - - - - - 0x01A837 06:C827: 18        CLC
C - - - - - 0x01A838 06:C828: 6D 04 03  ADC ram_0304
C - - - - - 0x01A83B 06:C82B: 85 01     STA ram_0001
C - - - - - 0x01A83D 06:C82D: 4C 33 CE  JMP $CE33
C D 1 - - - 0x01A840 06:C830: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A843 06:C833: 6A        ROR
C - - - - - 0x01A844 06:C834: 90 11     BCC $C847
C - - - - - 0x01A846 06:C836: 20 4D A8  JSR $A84D
C D 1 - - - 0x01A849 06:C839: 20 AE D9  JSR $D9AE
C - - - - - 0x01A84C 06:C83C: BD 44 03  LDA ram_0344,X
C - - - - - 0x01A84F 06:C83F: 29 03     AND #$03
C - - - - - 0x01A851 06:C841: 0A        ASL
C - - - - - 0x01A852 06:C842: 0A        ASL
C - - - - - 0x01A853 06:C843: A8        TAY
C - - - - - 0x01A854 06:C844: 4C C3 A7  JMP $A7C3
C - - - - - 0x01A857 06:C847: 20 7E A8  JSR $A87E
C - - - - - 0x01A85A 06:C84A: 4C 39 A8  JMP $A839
C - - - - - 0x01A85D 06:C84D: 20 CA D7  JSR $D7CA
C - - - - - 0x01A860 06:C850: F0 10     BEQ $C862
C - - - - - 0x01A862 06:C852: AD 00 03  LDA ram_0300
C - - - - - 0x01A865 06:C855: C9 18     CMP #$18
C - - - - - 0x01A867 06:C857: F0 06     BEQ $C85F
C - - - - - 0x01A869 06:C859: A5 2C     LDA ram_002C
C - - - - - 0x01A86B 06:C85B: 29 03     AND #$03
C - - - - - 0x01A86D 06:C85D: F0 1E     BEQ $C87D
C - - - - - 0x01A86F 06:C85F: 4C F0 D6  JMP $D6F0
C - - - - - 0x01A872 06:C862: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A875 06:C865: 29 20     AND #$20
C - - - - - 0x01A877 06:C867: D0 14     BNE $C87D
C - - - - - 0x01A879 06:C869: A9 06     LDA #$06
C - - - - - 0x01A87B 06:C86B: 20 E3 A9  JSR $A9E3
C - - - - - 0x01A87E 06:C86E: A9 14     LDA #$14
C - - - - - 0x01A880 06:C870: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A883 06:C873: A9 03     LDA #$03
C - - - - - 0x01A885 06:C875: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A888 06:C878: A9 00     LDA #$00
C - - - - - 0x01A88A 06:C87A: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A88D 06:C87D: 60        RTS
C - - - - - 0x01A88E 06:C87E: 20 BF D7  JSR $D7BF
C - - - - - 0x01A891 06:C881: F0 DF     BEQ $C862
C - - - - - 0x01A893 06:C883: AD 00 03  LDA ram_0300
C - - - - - 0x01A896 06:C886: C9 18     CMP #$18
C - - - - - 0x01A898 06:C888: F0 06     BEQ $C890
C - - - - - 0x01A89A 06:C88A: A5 2C     LDA ram_002C
C - - - - - 0x01A89C 06:C88C: 29 03     AND #$03
C - - - - - 0x01A89E 06:C88E: F0 ED     BEQ $C87D
C - - - - - 0x01A8A0 06:C890: 4C 0F D7  JMP $D70F
C - - - - - 0x01A8A3 06:C893: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A8A6 06:C896: F0 05     BEQ $C89D
C - - - - - 0x01A8A8 06:C898: A0 14     LDY #$14
C - - - - - 0x01A8AA 06:C89A: 4C C3 A7  JMP $A7C3
C - - - - - 0x01A8AD 06:C89D: AD 00 03  LDA ram_0300
C - - - - - 0x01A8B0 06:C8A0: C9 18     CMP #$18
C - - - - - 0x01A8B2 06:C8A2: D0 05     BNE $C8A9
C - - - - - 0x01A8B4 06:C8A4: A9 32     LDA #$32
C - - - - - 0x01A8B6 06:C8A6: 20 20 C4  JSR $C420
C - - - - - 0x01A8B9 06:C8A9: 20 3E E3  JSR $E33E
C - - - - - 0x01A8BC 06:C8AC: BC 2C 03  LDY ram_032C,X
C - - - - - 0x01A8BF 06:C8AF: C0 BF     CPY #$BF
C - - - - - 0x01A8C1 06:C8B1: 90 06     BCC $C8B9
C - - - - - 0x01A8C3 06:C8B3: 29 01     AND #$01
C - - - - - 0x01A8C5 06:C8B5: D0 02     BNE $C8B9
C - - - - - 0x01A8C7 06:C8B7: A9 03     LDA #$03
C - - - - - 0x01A8C9 06:C8B9: A8        TAY
C - - - - - 0x01A8CA 06:C8BA: B9 58 E3  LDA $E358,Y
C D 1 - - - 0x01A8CD 06:C8BD: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A8D0 06:C8C0: 98        TYA
C - - - - - 0x01A8D1 06:C8C1: 9D 56 03  STA ram_0356,X
C - - - - - 0x01A8D4 06:C8C4: A9 02     LDA #$02
C - - - - - 0x01A8D6 06:C8C6: 20 E3 A9  JSR $A9E3
C - - - - - 0x01A8D9 06:C8C9: A9 00     LDA #$00
C - - - - - 0x01A8DB 06:C8CB: 9D 44 03  STA ram_0344,X
C - - - - - 0x01A8DE 06:C8CE: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01A8E1 06:C8D1: C9 DF     CMP #$DF
C - - - - - 0x01A8E3 06:C8D3: B0 1E     BCS $C8F3
C - - - - - 0x01A8E5 06:C8D5: BD 56 03  LDA ram_0356,X
C - - - - - 0x01A8E8 06:C8D8: C9 03     CMP #$03
C - - - - - 0x01A8EA 06:C8DA: D0 17     BNE $C8F3
C - - - - - 0x01A8EC 06:C8DC: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A8EF 06:C8DF: 6A        ROR
C - - - - - 0x01A8F0 06:C8E0: 90 0A     BCC $C8EC
C - - - - - 0x01A8F2 06:C8E2: 29 10     AND #$10
C - - - - - 0x01A8F4 06:C8E4: D0 0A     BNE $C8F0
C - - - - - 0x01A8F6 06:C8E6: 20 4D A8  JSR $A84D
C - - - - - 0x01A8F9 06:C8E9: 4C F3 A8  JMP $A8F3
C - - - - - 0x01A8FC 06:C8EC: 29 10     AND #$10
C - - - - - 0x01A8FE 06:C8EE: D0 F6     BNE $C8E6
C - - - - - 0x01A900 06:C8F0: 20 7E A8  JSR $A87E
C D 1 - - - 0x01A903 06:C8F3: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A906 06:C8F6: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01A909 06:C8F9: 18        CLC
C - - - - - 0x01A90A 06:C8FA: 7D 2C 03  ADC ram_032C,X
C - - - - - 0x01A90D 06:C8FD: C9 DF     CMP #$DF
C - - - - - 0x01A90F 06:C8FF: 90 09     BCC $C90A
C - - - - - 0x01A911 06:C901: A0 DF     LDY #$DF
C - - - - - 0x01A913 06:C903: C9 F8     CMP #$F8
C - - - - - 0x01A915 06:C905: 90 02     BCC $C909
- - - - - - 0x01A917 06:C907: A0        .byte $A0   ; 
- - - - - - 0x01A918 06:C908: 00        .byte $00   ; 
C - - - - - 0x01A919 06:C909: 98        TYA
C - - - - - 0x01A91A 06:C90A: 9D 2C 03  STA ram_032C,X
C - - - - - 0x01A91D 06:C90D: BC 4A 03  LDY ram_034A,X
C - - - - - 0x01A920 06:C910: C0 18     CPY #$18
C - - - - - 0x01A922 06:C912: 90 39     BCC $C94D
C - - - - - 0x01A924 06:C914: C9 DF     CMP #$DF
C - - - - - 0x01A926 06:C916: 90 05     BCC $C91D
C - - - - - 0x01A928 06:C918: A0 FF     LDY #$FF
C - - - - - 0x01A92A 06:C91A: 4C C3 A7  JMP $A7C3
C - - - - - 0x01A92D 06:C91D: 85 00     STA ram_0000
C - - - - - 0x01A92F 06:C91F: E6 00     INC ram_0000
C - - - - - 0x01A931 06:C921: 20 58 D3  JSR $D358
C - - - - - 0x01A934 06:C924: F0 27     BEQ $C94D
C - - - - - 0x01A936 06:C926: C9 02     CMP #$02
C - - - - - 0x01A938 06:C928: F0 07     BEQ $C931
C - - - - - 0x01A93A 06:C92A: 20 47 D3  JSR $D347
C - - - - - 0x01A93D 06:C92D: D0 0E     BNE $C93D
C - - - - - 0x01A93F 06:C92F: F0 1C     BEQ $C94D
C - - - - - 0x01A941 06:C931: 20 47 D3  JSR $D347
C - - - - - 0x01A944 06:C934: F0 17     BEQ $C94D
C - - - - - 0x01A946 06:C936: BD 56 03  LDA ram_0356,X
C - - - - - 0x01A949 06:C939: C9 04     CMP #$04
C - - - - - 0x01A94B 06:C93B: F0 10     BEQ $C94D
C - - - - - 0x01A94D 06:C93D: 20 A8 D7  JSR $D7A8
C - - - - - 0x01A950 06:C940: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A953 06:C943: 29 20     AND #$20
C - - - - - 0x01A955 06:C945: D0 3D     BNE $C984
C - - - - - 0x01A957 06:C947: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A95A 06:C94A: 4C 39 A8  JMP $A839
C - - - - - 0x01A95D 06:C94D: FE 4A 03  INC ram_034A,X
C - - - - - 0x01A960 06:C950: A9 2F     LDA #$2F
C - - - - - 0x01A962 06:C952: DD 4A 03  CMP ram_034A,X
C - - - - - 0x01A965 06:C955: B0 03     BCS $C95A
C - - - - - 0x01A967 06:C957: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A96A 06:C95A: A0 0C     LDY #$0C
C - - - - - 0x01A96C 06:C95C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A96F 06:C95F: 29 20     AND #$20
C - - - - - 0x01A971 06:C961: D0 1E     BNE $C981
C - - - - - 0x01A973 06:C963: A0 08     LDY #$08
C - - - - - 0x01A975 06:C965: AD 00 03  LDA ram_0300
C - - - - - 0x01A978 06:C968: C9 17     CMP #$17
C - - - - - 0x01A97A 06:C96A: F0 15     BEQ $C981
C - - - - - 0x01A97C 06:C96C: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A97F 06:C96F: 29 04     AND #$04
C - - - - - 0x01A981 06:C971: D0 0E     BNE $C981
C - - - - - 0x01A983 06:C973: A0 10     LDY #$10
C - - - - - 0x01A985 06:C975: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A988 06:C978: C9 18     CMP #$18
C - - - - - 0x01A98A 06:C97A: B0 05     BCS $C981
C - - - - - 0x01A98C 06:C97C: A5 2C     LDA ram_002C
C - - - - - 0x01A98E 06:C97E: 29 0C     AND #$0C
C - - - - - 0x01A990 06:C980: A8        TAY
C - - - - - 0x01A991 06:C981: 4C C3 A7  JMP $A7C3
C - - - - - 0x01A994 06:C984: A9 30     LDA #$30
C - - - - - 0x01A996 06:C986: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A999 06:C989: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A99C 06:C98C: D0 03     BNE $C991
C - - - - - 0x01A99E 06:C98E: 4C 7F D7  JMP $D77F
C - - - - - 0x01A9A1 06:C991: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A9A4 06:C994: 20 5F D0  JSR $D05F
C - - - - - 0x01A9A7 06:C997: A8        TAY
C - - - - - 0x01A9A8 06:C998: B9 9F A9  LDA $A99F,Y
C - - - - - 0x01A9AB 06:C99B: A8        TAY
C - - - - - 0x01A9AC 06:C99C: 4C C3 A7  JMP $A7C3
- D 1 - - - 0x01A9AF 06:C99F: E4        .byte $E4   ; 
- D 1 - - - 0x01A9B0 06:C9A0: E0        .byte $E0   ; 
- D 1 - - - 0x01A9B1 06:C9A1: 10        .byte $10   ; 
C - - - - - 0x01A9B2 06:C9A2: BD 4A 03  LDA ram_034A,X
C - - - - - 0x01A9B5 06:C9A5: F0 0A     BEQ $C9B1
C - - - - - 0x01A9B7 06:C9A7: DE 4A 03  DEC ram_034A,X
C - - - - - 0x01A9BA 06:C9AA: D0 43     BNE $C9EF
C - - - - - 0x01A9BC 06:C9AC: A9 00     LDA #$00
C - - - - - 0x01A9BE 06:C9AE: 20 E3 A9  JSR $A9E3
C - - - - - 0x01A9C1 06:C9B1: 20 F0 A9  JSR $A9F0
C - - - - - 0x01A9C4 06:C9B4: A5 2C     LDA ram_002C
C - - - - - 0x01A9C6 06:C9B6: 29 3F     AND #$3F
C - - - - - 0x01A9C8 06:C9B8: D0 35     BNE $C9EF
C - - - - - 0x01A9CA 06:C9BA: 20 64 D0  JSR $D064
C - - - - - 0x01A9CD 06:C9BD: 6A        ROR
C - - - - - 0x01A9CE 06:C9BE: B0 2F     BCS $C9EF
C - - - - - 0x01A9D0 06:C9C0: 29 07     AND #$07
C - - - - - 0x01A9D2 06:C9C2: AC 00 03  LDY ram_0300
C - - - - - 0x01A9D5 06:C9C5: C0 17     CPY #$17
C - - - - - 0x01A9D7 06:C9C7: F0 03     BEQ $C9CC
C - - - - - 0x01A9D9 06:C9C9: 18        CLC
C - - - - - 0x01A9DA 06:C9CA: 69 08     ADC #$08
C - - - - - 0x01A9DC 06:C9CC: A8        TAY
C - - - - - 0x01A9DD 06:C9CD: B9 58 A6  LDA $A658,Y
C - - - - - 0x01A9E0 06:C9D0: 85 05     STA ram_0005
C - - - - - 0x01A9E2 06:C9D2: F0 11     BEQ $C9E5
C - - - - - 0x01A9E4 06:C9D4: C9 10     CMP #$10
C - - - - - 0x01A9E6 06:C9D6: F0 04     BEQ $C9DC
C - - - - - 0x01A9E8 06:C9D8: A9 20     LDA #$20
C - - - - - 0x01A9EA 06:C9DA: D0 02     BNE $C9DE
C - - - - - 0x01A9EC 06:C9DC: A9 20     LDA #$20
C - - - - - 0x01A9EE 06:C9DE: 9D 4A 03  STA ram_034A,X
C - - - - - 0x01A9F1 06:C9E1: D0 02     BNE $C9E5
C - - - - - 0x01A9F3 06:C9E3: 85 05     STA ram_0005
C - - - - - 0x01A9F5 06:C9E5: BD 20 03  LDA ram_0320,X
C - - - - - 0x01A9F8 06:C9E8: 29 C1     AND #$C1
C - - - - - 0x01A9FA 06:C9EA: 05 05     ORA ram_0005
C - - - - - 0x01A9FC 06:C9EC: 9D 20 03  STA ram_0320,X
C - - - - - 0x01A9FF 06:C9EF: 60        RTS
C - - - - - 0x01AA00 06:C9F0: A9 7F     LDA #$7F
C - - - - - 0x01AA02 06:C9F2: 20 BD D6  JSR $D6BD
C - - - - - 0x01AA05 06:C9F5: 84 05     STY ram_0005
C - - - - - 0x01AA07 06:C9F7: BD 20 03  LDA ram_0320,X
C - - - - - 0x01AA0A 06:C9FA: 29 FE     AND #$FE
C - - - - - 0x01AA0C 06:C9FC: 05 05     ORA ram_0005
C - - - - - 0x01AA0E 06:C9FE: 9D 20 03  STA ram_0320,X
C - - - - - 0x01AA11 06:CA01: 60        RTS
C - - J - - 0x01AA12 06:CA02: A2 01     LDX #$01
C - - - - - 0x01AA14 06:CA04: 86 1A     STX ram_001A
C - - - - - 0x01AA16 06:CA06: A6 1A     LDX ram_001A
C - - - - - 0x01AA18 06:CA08: 20 69 AA  JSR $AA69
C - - - - - 0x01AA1B 06:CA0B: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AA1E 06:CA0E: C9 E0     CMP #$E0
C - - - - - 0x01AA20 06:CA10: B0 34     BCS $CA46
C - - - - - 0x01AA22 06:CA12: C9 C0     CMP #$C0
C - - - - - 0x01AA24 06:CA14: 90 30     BCC $CA46
C - - - - - 0x01AA26 06:CA16: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AA29 06:CA19: 85 AD     STA ram_00AD
C - - - - - 0x01AA2B 06:CA1B: BD 6E 03  LDA ram_036E,X
C - - - - - 0x01AA2E 06:CA1E: 85 AE     STA ram_00AE
C - - - - - 0x01AA30 06:CA20: A9 10     LDA #$10
C - - - - - 0x01AA32 06:CA22: 85 AF     STA ram_00AF
C - - - - - 0x01AA34 06:CA24: A9 06     LDA #$06
C - - - - - 0x01AA36 06:CA26: 85 B0     STA ram_00B0
C - - - - - 0x01AA38 06:CA28: A5 5F     LDA ram_005F
C - - - - - 0x01AA3A 06:CA2A: 29 02     AND #$02
C - - - - - 0x01AA3C 06:CA2C: F0 0B     BEQ $CA39
C - - - - - 0x01AA3E 06:CA2E: 20 06 D6  JSR $D606
C - - - - - 0x01AA41 06:CA31: 90 10     BCC $CA43
C - - - - - 0x01AA43 06:CA33: 20 57 AA  JSR $AA57
C - - - - - 0x01AA46 06:CA36: 4C 46 AA  JMP $AA46
C - - - - - 0x01AA49 06:CA39: A6 7A     LDX ram_007A
C - - - - - 0x01AA4B 06:CA3B: 20 B6 D5  JSR $D5B6
C - - - - - 0x01AA4E 06:CA3E: B0 0D     BCS $CA4D
C - - - - - 0x01AA50 06:CA40: CA        DEX
C - - - - - 0x01AA51 06:CA41: 10 F8     BPL $CA3B
C - - - - - 0x01AA53 06:CA43: 20 62 D5  JSR $D562
C D 1 - - - 0x01AA56 06:CA46: C6 1A     DEC ram_001A
C - - - - - 0x01AA58 06:CA48: 10 BC     BPL $CA06
C - - - - - 0x01AA5A 06:CA4A: 4C 32 AB  JMP $AB32
C - - - - - 0x01AA5D 06:CA4D: A9 00     LDA #$00
C - - - - - 0x01AA5F 06:CA4F: 95 8F     STA ram_008F,X
C - - - - - 0x01AA61 06:CA51: 20 57 AA  JSR $AA57
C - - - - - 0x01AA64 06:CA54: 4C 46 AA  JMP $AA46
C - - - - - 0x01AA67 06:CA57: A6 1A     LDX ram_001A
C - - - - - 0x01AA69 06:CA59: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AA6C 06:CA5C: 29 C1     AND #$C1
C - - - - - 0x01AA6E 06:CA5E: 09 20     ORA #$20
C - - - - - 0x01AA70 06:CA60: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AA73 06:CA63: A9 08     LDA #$08
C - - - - - 0x01AA75 06:CA65: 9D 86 03  STA ram_0386,X
C - - - - - 0x01AA78 06:CA68: 60        RTS
C - - - - - 0x01AA79 06:CA69: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AA7C 06:CA6C: 10 FA     BPL $CA68
C - - - - - 0x01AA7E 06:CA6E: 29 20     AND #$20
C - - - - - 0x01AA80 06:CA70: D0 06     BNE $CA78
C - - - - - 0x01AA82 06:CA72: 20 F3 AA  JSR $AAF3
C - - - - - 0x01AA85 06:CA75: 20 B9 AA  JSR $AAB9
C - - - - - 0x01AA88 06:CA78: BD 74 03  LDA ram_0374,X
C - - - - - 0x01AA8B 06:CA7B: 85 00     STA ram_0000
C - - - - - 0x01AA8D 06:CA7D: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01AA90 06:CA80: 85 01     STA ram_0001
C - - - - - 0x01AA92 06:CA82: 20 7B D6  JSR $D67B
C - - - - - 0x01AA95 06:CA85: 90 03     BCC $CA8A
C - - - - - 0x01AA97 06:CA87: 4C 73 D8  JMP $D873
C - - - - - 0x01AA9A 06:CA8A: 20 AC D6  JSR $D6AC
C - - - - - 0x01AA9D 06:CA8D: 90 03     BCC $CA92
C - - - - - 0x01AA9F 06:CA8F: 4C 4D D8  JMP $D84D
C - - - - - 0x01AAA2 06:CA92: 20 31 D8  JSR $D831
C - - - - - 0x01AAA5 06:CA95: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AAA8 06:CA98: 29 20     AND #$20
C - - - - - 0x01AAAA 06:CA9A: F0 03     BEQ $CA9F
C - - - - - 0x01AAAC 06:CA9C: 4C AE AA  JMP $AAAE
C D 1 - - - 0x01AAAF 06:CA9F: 98        TYA
C - - - - - 0x01AAB0 06:CAA0: 18        CLC
C - - - - - 0x01AAB1 06:CAA1: 6D 06 03  ADC ram_0306
C - - - - - 0x01AAB4 06:CAA4: 85 01     STA ram_0001
C - - - - - 0x01AAB6 06:CAA6: AD 07 03  LDA ram_0307
C - - - - - 0x01AAB9 06:CAA9: 85 02     STA ram_0002
C - - - - - 0x01AABB 06:CAAB: 4C 33 CE  JMP $CE33
C D 1 - - - 0x01AABE 06:CAAE: DE 86 03  DEC ram_0386,X
C - - - - - 0x01AAC1 06:CAB1: D0 03     BNE $CAB6
C - - - - - 0x01AAC3 06:CAB3: 4C 73 D8  JMP $D873
C - - - - - 0x01AAC6 06:CAB6: 4C 7D D9  JMP $D97D
C - - - - - 0x01AAC9 06:CAB9: 20 DF AA  JSR $AADF
C - - - - - 0x01AACC 06:CABC: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AACF 06:CABF: 29 02     AND #$02
C - - - - - 0x01AAD1 06:CAC1: F0 03     BEQ $CAC6
C - - - - - 0x01AAD3 06:CAC3: 20 DF AA  JSR $AADF
C - - - - - 0x01AAD6 06:CAC6: A5 2C     LDA ram_002C
C - - - - - 0x01AAD8 06:CAC8: 29 07     AND #$07
C - - - - - 0x01AADA 06:CACA: D0 03     BNE $CACF
C - - - - - 0x01AADC 06:CACC: FE 80 03  INC ram_0380,X
C - - - - - 0x01AADF 06:CACF: BD 80 03  LDA ram_0380,X
C - - - - - 0x01AAE2 06:CAD2: C9 03     CMP #$03
C - - - - - 0x01AAE4 06:CAD4: 90 05     BCC $CADB
C - - - - - 0x01AAE6 06:CAD6: A9 00     LDA #$00
C - - - - - 0x01AAE8 06:CAD8: 9D 80 03  STA ram_0380,X
C - - - - - 0x01AAEB 06:CADB: 0A        ASL
C - - - - - 0x01AAEC 06:CADC: 0A        ASL
C - - - - - 0x01AAED 06:CADD: A8        TAY
C - - - - - 0x01AAEE 06:CADE: 60        RTS
C - - - - - 0x01AAEF 06:CADF: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AAF2 06:CAE2: 6A        ROR
C - - - - - 0x01AAF3 06:CAE3: 90 08     BCC $CAED
C - - - - - 0x01AAF5 06:CAE5: A5 2C     LDA ram_002C
C - - - - - 0x01AAF7 06:CAE7: 6A        ROR
C - - - - - 0x01AAF8 06:CAE8: 90 47     BCC $CB31
C - - - - - 0x01AAFA 06:CAEA: 4C 09 D8  JMP $D809
- - - - - - 0x01AAFD 06:CAED: 20        .byte $20   ; 
- - - - - - 0x01AAFE 06:CAEE: 28        .byte $28   ; 
- - - - - - 0x01AAFF 06:CAEF: D8        .byte $D8   ; 
- - - - - - 0x01AB00 06:CAF0: 4C        .byte $4C   ; <L>
- - - - - - 0x01AB01 06:CAF1: 28        .byte $28   ; 
- - - - - - 0x01AB02 06:CAF2: D8        .byte $D8   ; 
C - - - - - 0x01AB03 06:CAF3: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AB06 06:CAF6: 29 F2     AND #$F2
C - - - - - 0x01AB08 06:CAF8: C9 C0     CMP #$C0
C - - - - - 0x01AB0A 06:CAFA: D0 35     BNE $CB31
C - - - - - 0x01AB0C 06:CAFC: BD 74 03  LDA ram_0374,X
C - - - - - 0x01AB0F 06:CAFF: 38        SEC
C - - - - - 0x01AB10 06:CB00: E5 66     SBC ram_0066
C - - - - - 0x01AB12 06:CB02: 85 12     STA ram_0012
C - - - - - 0x01AB14 06:CB04: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01AB17 06:CB07: E5 68     SBC ram_0068
C - - - - - 0x01AB19 06:CB09: D0 26     BNE $CB31
C - - - - - 0x01AB1B 06:CB0B: A5 12     LDA ram_0012
C - - - - - 0x01AB1D 06:CB0D: C9 40     CMP #$40
C - - - - - 0x01AB1F 06:CB0F: B0 20     BCS $CB31
C - - - - - 0x01AB21 06:CB11: C9 20     CMP #$20
C - - - - - 0x01AB23 06:CB13: 90 1C     BCC $CB31
C - - - - - 0x01AB25 06:CB15: 20 64 D0  JSR $D064
C - - - - - 0x01AB28 06:CB18: 29 03     AND #$03
C - - - - - 0x01AB2A 06:CB1A: D0 15     BNE $CB31
C - - - - - 0x01AB2C 06:CB1C: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AB2F 06:CB1F: 09 02     ORA #$02
C - - - - - 0x01AB31 06:CB21: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AB34 06:CB24: 9D 5E 03  STA ram_035E,X
C - - - - - 0x01AB37 06:CB27: A9 18     LDA #$18
C - - - - - 0x01AB39 06:CB29: 9D 88 03  STA ram_0388,X
C - - - - - 0x01AB3C 06:CB2C: A9 3F     LDA #$3F
C - - - - - 0x01AB3E 06:CB2E: 4C 20 C4  JMP $C420
C - - - - - 0x01AB41 06:CB31: 60        RTS
C D 1 - - - 0x01AB42 06:CB32: A2 03     LDX #$03
C - - - - - 0x01AB44 06:CB34: 86 1A     STX ram_001A
C - - - - - 0x01AB46 06:CB36: A6 1A     LDX ram_001A
C - - - - - 0x01AB48 06:CB38: BD 5A 03  LDA ram_035A,X
C - - - - - 0x01AB4B 06:CB3B: 10 23     BPL $CB60
C - - - - - 0x01AB4D 06:CB3D: 20 83 AB  JSR $AB83
C - - - - - 0x01AB50 06:CB40: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AB53 06:CB43: C9 E0     CMP #$E0
C - - - - - 0x01AB55 06:CB45: B0 19     BCS $CB60
C - - - - - 0x01AB57 06:CB47: C9 C0     CMP #$C0
C - - - - - 0x01AB59 06:CB49: 90 15     BCC $CB60
C - - - - - 0x01AB5B 06:CB4B: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AB5E 06:CB4E: 85 AD     STA ram_00AD
C - - - - - 0x01AB60 06:CB50: BD 6E 03  LDA ram_036E,X
C - - - - - 0x01AB63 06:CB53: 85 AE     STA ram_00AE
C - - - - - 0x01AB65 06:CB55: A9 06     LDA #$06
C - - - - - 0x01AB67 06:CB57: 85 AF     STA ram_00AF
C - - - - - 0x01AB69 06:CB59: A9 03     LDA #$03
C - - - - - 0x01AB6B 06:CB5B: 85 B0     STA ram_00B0
C - - - - - 0x01AB6D 06:CB5D: 20 62 D5  JSR $D562
C - - - - - 0x01AB70 06:CB60: C6 1A     DEC ram_001A
C - - - - - 0x01AB72 06:CB62: A6 1A     LDX ram_001A
C - - - - - 0x01AB74 06:CB64: E0 01     CPX #$01
C - - - - - 0x01AB76 06:CB66: D0 CE     BNE $CB36
C - - - - - 0x01AB78 06:CB68: 60        RTS
C D 1 - - - 0x01AB79 06:CB69: A6 1A     LDX ram_001A
C - - - - - 0x01AB7B 06:CB6B: A9 00     LDA #$00
C - - - - - 0x01AB7D 06:CB6D: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AB80 06:CB70: 60        RTS
C - - - - - 0x01AB81 06:CB71: A6 1A     LDX ram_001A
C - - - - - 0x01AB83 06:CB73: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AB86 06:CB76: 29 C0     AND #$C0
C - - - - - 0x01AB88 06:CB78: 09 20     ORA #$20
C - - - - - 0x01AB8A 06:CB7A: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AB8D 06:CB7D: A9 08     LDA #$08
C - - - - - 0x01AB8F 06:CB7F: 9D 86 03  STA ram_0386,X
C - - - - - 0x01AB92 06:CB82: 60        RTS
C - - - - - 0x01AB93 06:CB83: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AB96 06:CB86: 10 E0     BPL $CB68
C - - - - - 0x01AB98 06:CB88: 4A        LSR
C - - - - - 0x01AB99 06:CB89: 20 B8 D0  JSR $D0B8
- D 1 - I - 0x01AB9C 06:CB8C: D3        .byte $D3   ; 
- D 1 - I - 0x01AB9D 06:CB8D: AB        .byte $AB   ; 
- - - - - - 0x01AB9E 06:CB8E: 99        .byte $99   ; 
- - - - - - 0x01AB9F 06:CB8F: AB        .byte $AB   ; 
- - - - - - 0x01ABA0 06:CB90: 99        .byte $99   ; 
- - - - - - 0x01ABA1 06:CB91: AB        .byte $AB   ; 
- - - - - - 0x01ABA2 06:CB92: 99        .byte $99   ; 
- - - - - - 0x01ABA3 06:CB93: AB        .byte $AB   ; 
- D 1 - I - 0x01ABA4 06:CB94: 9E        .byte $9E   ; 
- D 1 - I - 0x01ABA5 06:CB95: AB        .byte $AB   ; 
- D 1 - I - 0x01ABA6 06:CB96: 99        .byte $99   ; 
- D 1 - I - 0x01ABA7 06:CB97: AB        .byte $AB   ; 
- D 1 - I - 0x01ABA8 06:CB98: 99        .byte $99   ; 
- D 1 - I - 0x01ABA9 06:CB99: AB        .byte $AB   ; 
C - - - - - 0x01ABAA 06:CB9A: 20 DF AA  JSR $AADF
C - - - - - 0x01ABAD 06:CB9D: A0 0C     LDY #$0C
C D 1 - - - 0x01ABAF 06:CB9F: BD 74 03  LDA ram_0374,X
C - - - - - 0x01ABB2 06:CBA2: 85 00     STA ram_0000
C - - - - - 0x01ABB4 06:CBA4: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01ABB7 06:CBA7: 85 01     STA ram_0001
C - - - - - 0x01ABB9 06:CBA9: 20 7B D6  JSR $D67B
C - - - - - 0x01ABBC 06:CBAC: 90 03     BCC $CBB1
- - - - - - 0x01ABBE 06:CBAE: 4C        .byte $4C   ; <L>
- - - - - - 0x01ABBF 06:CBAF: 69        .byte $69   ; <i>
- - - - - - 0x01ABC0 06:CBB0: AB        .byte $AB   ; 
C - - - - - 0x01ABC1 06:CBB1: 20 AC D6  JSR $D6AC
C - - - - - 0x01ABC4 06:CBB4: 90 03     BCC $CBB9
C - - - - - 0x01ABC6 06:CBB6: 4C 4D D8  JMP $D84D
C - - - - - 0x01ABC9 06:CBB9: 20 31 D8  JSR $D831
C - - - - - 0x01ABCC 06:CBBC: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01ABCF 06:CBBF: 29 20     AND #$20
C - - - - - 0x01ABD1 06:CBC1: D0 03     BNE $CBC6
C - - - - - 0x01ABD3 06:CBC3: 4C 9F AA  JMP $AA9F
C - - - - - 0x01ABD6 06:CBC6: DE 86 03  DEC ram_0386,X
C - - - - - 0x01ABD9 06:CBC9: D0 03     BNE $CBCE
C - - - - - 0x01ABDB 06:CBCB: 4C 69 AB  JMP $AB69
C - - - - - 0x01ABDE 06:CBCE: BD 86 03  LDA ram_0386,X
C - - - - - 0x01ABE1 06:CBD1: 4C 9F D9  JMP $D99F
C - - - - - 0x01ABE4 06:CBD4: BC 86 03  LDY ram_0386,X
C - - - - - 0x01ABE7 06:CBD7: B9 5D E3  LDA $E35D,Y
C - - - - - 0x01ABEA 06:CBDA: 18        CLC
C - - - - - 0x01ABEB 06:CBDB: 7D 68 03  ADC ram_0368,X
C - - - - - 0x01ABEE 06:CBDE: 9D 68 03  STA ram_0368,X
C - - - - - 0x01ABF1 06:CBE1: BD 68 03  LDA ram_0368,X
C - - - - - 0x01ABF4 06:CBE4: C9 EF     CMP #$EF
C - - - - - 0x01ABF6 06:CBE6: 90 03     BCC $CBEB
C - - - - - 0x01ABF8 06:CBE8: 4C 69 AB  JMP $AB69
C - - - - - 0x01ABFB 06:CBEB: 20 4A D9  JSR $D94A
C - - - - - 0x01ABFE 06:CBEE: 20 E5 D2  JSR $D2E5
C - - - - - 0x01AC01 06:CBF1: C9 01     CMP #$01
C - - - - - 0x01AC03 06:CBF3: D0 03     BNE $CBF8
C - - - - - 0x01AC05 06:CBF5: 20 71 AB  JSR $AB71
C - - - - - 0x01AC08 06:CBF8: FE 86 03  INC ram_0386,X
C - - - - - 0x01AC0B 06:CBFB: A9 2F     LDA #$2F
C - - - - - 0x01AC0D 06:CBFD: DD 86 03  CMP ram_0386,X
C - - - - - 0x01AC10 06:CC00: B0 03     BCS $CC05
C - - - - - 0x01AC12 06:CC02: 9D 86 03  STA ram_0386,X
C - - - - - 0x01AC15 06:CC05: A0 0C     LDY #$0C
C - - - - - 0x01AC17 06:CC07: 4C 9F AB  JMP $AB9F
C - - J - - 0x01AC1A 06:CC0A: A2 01     LDX #$01
C - - - - - 0x01AC1C 06:CC0C: 86 1A     STX ram_001A
C - - - - - 0x01AC1E 06:CC0E: A6 1A     LDX ram_001A
C - - - - - 0x01AC20 06:CC10: 20 5D AC  JSR $AC5D
C - - - - - 0x01AC23 06:CC13: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AC26 06:CC16: C9 E0     CMP #$E0
C - - - - - 0x01AC28 06:CC18: B0 34     BCS $CC4E
C - - - - - 0x01AC2A 06:CC1A: C9 C0     CMP #$C0
C - - - - - 0x01AC2C 06:CC1C: 90 30     BCC $CC4E
C - - - - - 0x01AC2E 06:CC1E: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AC31 06:CC21: 85 AD     STA ram_00AD
C - - - - - 0x01AC33 06:CC23: BD 6E 03  LDA ram_036E,X
C - - - - - 0x01AC36 06:CC26: 85 AE     STA ram_00AE
C - - - - - 0x01AC38 06:CC28: A9 16     LDA #$16
C - - - - - 0x01AC3A 06:CC2A: 85 AF     STA ram_00AF
C - - - - - 0x01AC3C 06:CC2C: A9 06     LDA #$06
C - - - - - 0x01AC3E 06:CC2E: 85 B0     STA ram_00B0
C - - - - - 0x01AC40 06:CC30: A5 5F     LDA ram_005F
C - - - - - 0x01AC42 06:CC32: 29 02     AND #$02
C - - - - - 0x01AC44 06:CC34: F0 0B     BEQ $CC41
C - - - - - 0x01AC46 06:CC36: 20 06 D6  JSR $D606
C - - - - - 0x01AC49 06:CC39: 90 10     BCC $CC4B
C - - - - - 0x01AC4B 06:CC3B: 20 57 AA  JSR $AA57
C - - - - - 0x01AC4E 06:CC3E: 4C 4E AC  JMP $AC4E
C - - - - - 0x01AC51 06:CC41: A6 7A     LDX ram_007A
C - - - - - 0x01AC53 06:CC43: 20 B6 D5  JSR $D5B6
C - - - - - 0x01AC56 06:CC46: B0 0B     BCS $CC53
C - - - - - 0x01AC58 06:CC48: CA        DEX
C - - - - - 0x01AC59 06:CC49: 10 F8     BPL $CC43
C - - - - - 0x01AC5B 06:CC4B: 20 62 D5  JSR $D562
C D 1 - - - 0x01AC5E 06:CC4E: C6 1A     DEC ram_001A
C - - - - - 0x01AC60 06:CC50: 10 BC     BPL $CC0E
C - - - - - 0x01AC62 06:CC52: 60        RTS
C - - - - - 0x01AC63 06:CC53: A9 00     LDA #$00
C - - - - - 0x01AC65 06:CC55: 95 8F     STA ram_008F,X
C - - - - - 0x01AC67 06:CC57: 20 57 AA  JSR $AA57
C - - - - - 0x01AC6A 06:CC5A: 4C 4E AC  JMP $AC4E
C - - - - - 0x01AC6D 06:CC5D: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AC70 06:CC60: 10 F0     BPL $CC52
C - - - - - 0x01AC72 06:CC62: 29 20     AND #$20
C - - - - - 0x01AC74 06:CC64: D0 06     BNE $CC6C
C - - - - - 0x01AC76 06:CC66: 20 DB AC  JSR $ACDB
C - - - - - 0x01AC79 06:CC69: 20 A6 AC  JSR $ACA6
C - - - - - 0x01AC7C 06:CC6C: BD 74 03  LDA ram_0374,X
C - - - - - 0x01AC7F 06:CC6F: 85 00     STA ram_0000
C - - - - - 0x01AC81 06:CC71: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01AC84 06:CC74: 85 01     STA ram_0001
C - - - - - 0x01AC86 06:CC76: 20 7B D6  JSR $D67B
C - - - - - 0x01AC89 06:CC79: 90 03     BCC $CC7E
C - - - - - 0x01AC8B 06:CC7B: 4C 73 D8  JMP $D873
C - - - - - 0x01AC8E 06:CC7E: 20 AC D6  JSR $D6AC
C - - - - - 0x01AC91 06:CC81: 90 03     BCC $CC86
C - - - - - 0x01AC93 06:CC83: 4C 4D D8  JMP $D84D
C - - - - - 0x01AC96 06:CC86: 20 31 D8  JSR $D831
C - - - - - 0x01AC99 06:CC89: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AC9C 06:CC8C: 29 20     AND #$20
C - - - - - 0x01AC9E 06:CC8E: D0 08     BNE $CC98
C - - - - - 0x01ACA0 06:CC90: 20 C6 AA  JSR $AAC6
C - - - - - 0x01ACA3 06:CC93: 4A        LSR
C - - - - - 0x01ACA4 06:CC94: A8        TAY
C - - - - - 0x01ACA5 06:CC95: 4C 9F AA  JMP $AA9F
C - - - - - 0x01ACA8 06:CC98: DE 86 03  DEC ram_0386,X
C - - - - - 0x01ACAB 06:CC9B: D0 03     BNE $CCA0
C - - - - - 0x01ACAD 06:CC9D: 4C 73 D8  JMP $D873
C - - - - - 0x01ACB0 06:CCA0: BD 86 03  LDA ram_0386,X
C - - - - - 0x01ACB3 06:CCA3: 4C 9F D9  JMP $D99F
C - - - - - 0x01ACB6 06:CCA6: A5 2C     LDA ram_002C
C - - - - - 0x01ACB8 06:CCA8: 29 04     AND #$04
C - - - - - 0x01ACBA 06:CCAA: D0 0D     BNE $CCB9
C - - - - - 0x01ACBC 06:CCAC: A5 2C     LDA ram_002C
C - - - - - 0x01ACBE 06:CCAE: 30 06     BMI $CCB6
C - - - - - 0x01ACC0 06:CCB0: DE 68 03  DEC ram_0368,X
C - - - - - 0x01ACC3 06:CCB3: 4C B9 AC  JMP $ACB9
C - - - - - 0x01ACC6 06:CCB6: FE 68 03  INC ram_0368,X
C D 1 - - - 0x01ACC9 06:CCB9: A0 00     LDY #$00
C - - - - - 0x01ACCB 06:CCBB: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01ACCE 06:CCBE: 29 0C     AND #$0C
C - - - - - 0x01ACD0 06:CCC0: C9 04     CMP #$04
C - - - - - 0x01ACD2 06:CCC2: F0 11     BEQ $CCD5
C - - - - - 0x01ACD4 06:CCC4: C9 08     CMP #$08
C - - - - - 0x01ACD6 06:CCC6: F0 12     BEQ $CCDA
C - - - - - 0x01ACD8 06:CCC8: A5 2C     LDA ram_002C
C - - - - - 0x01ACDA 06:CCCA: 29 03     AND #$03
C - - - - - 0x01ACDC 06:CCCC: D0 03     BNE $CCD1
C - - - - - 0x01ACDE 06:CCCE: 20 09 D8  JSR $D809
C - - - - - 0x01ACE1 06:CCD1: A0 02     LDY #$02
C - - - - - 0x01ACE3 06:CCD3: D0 05     BNE $CCDA
- - - - - - 0x01ACE5 06:CCD5: 20        .byte $20   ; 
- - - - - - 0x01ACE6 06:CCD6: 28        .byte $28   ; 
- - - - - - 0x01ACE7 06:CCD7: D8        .byte $D8   ; 
- - - - - - 0x01ACE8 06:CCD8: A0        .byte $A0   ; 
- - - - - - 0x01ACE9 06:CCD9: 04        .byte $04   ; 
C - - - - - 0x01ACEA 06:CCDA: 60        RTS
C - - - - - 0x01ACEB 06:CCDB: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01ACEE 06:CCDE: 29 20     AND #$20
C - - - - - 0x01ACF0 06:CCE0: D0 1D     BNE $CCFF
C - - - - - 0x01ACF2 06:CCE2: DE 86 03  DEC ram_0386,X
C - - - - - 0x01ACF5 06:CCE5: D0 18     BNE $CCFF
C - - - - - 0x01ACF7 06:CCE7: 20 64 D0  JSR $D064
C - - - - - 0x01ACFA 06:CCEA: 29 03     AND #$03
C - - - - - 0x01ACFC 06:CCEC: 0A        ASL
C - - - - - 0x01ACFD 06:CCED: A8        TAY
C - - - - - 0x01ACFE 06:CCEE: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AD01 06:CCF1: 29 C1     AND #$C1
C - - - - - 0x01AD03 06:CCF3: 19 00 AD  ORA $AD00,Y
C - - - - - 0x01AD06 06:CCF6: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AD09 06:CCF9: B9 01 AD  LDA $AD01,Y
C - - - - - 0x01AD0C 06:CCFC: 9D 86 03  STA ram_0386,X
C - - - - - 0x01AD0F 06:CCFF: 60        RTS
- D 1 - - - 0x01AD10 06:CD00: 08        .byte $08   ; 
- D 1 - - - 0x01AD11 06:CD01: 20        .byte $20   ; 
- D 1 - - - 0x01AD12 06:CD02: 00        .byte $00   ; 
- D 1 - - - 0x01AD13 06:CD03: 40        .byte $40   ; 
- - - - - - 0x01AD14 06:CD04: 04        .byte $04   ; 
- - - - - - 0x01AD15 06:CD05: 40        .byte $40   ; 
- - - - - - 0x01AD16 06:CD06: 08        .byte $08   ; 
- - - - - - 0x01AD17 06:CD07: 40        .byte $40   ; 
C - - J - - 0x01AD18 06:CD08: A2 01     LDX #$01
C - - - - - 0x01AD1A 06:CD0A: 86 1A     STX ram_001A
C - - - - - 0x01AD1C 06:CD0C: A6 1A     LDX ram_001A
C - - - - - 0x01AD1E 06:CD0E: 20 16 AD  JSR $AD16
C - - - - - 0x01AD21 06:CD11: C6 1A     DEC ram_001A
C - - - - - 0x01AD23 06:CD13: 10 F7     BPL $CD0C
C - - - - - 0x01AD25 06:CD15: 60        RTS
C - - - - - 0x01AD26 06:CD16: BD 20 03  LDA ram_0320,X
C - - - - - 0x01AD29 06:CD19: 10 FA     BPL $CD15
C - - - - - 0x01AD2B 06:CD1B: 20 47 AD  JSR $AD47
C - - - - - 0x01AD2E 06:CD1E: BD 38 03  LDA ram_0338,X
C - - - - - 0x01AD31 06:CD21: 85 00     STA ram_0000
C - - - - - 0x01AD33 06:CD23: BD 3E 03  LDA ram_033E,X
C - - - - - 0x01AD36 06:CD26: 85 01     STA ram_0001
C - - - - - 0x01AD38 06:CD28: 20 AC D6  JSR $D6AC
C - - - - - 0x01AD3B 06:CD2B: 90 03     BCC $CD30
C - - - - - 0x01AD3D 06:CD2D: 4C 8A D7  JMP $D78A
C - - - - - 0x01AD40 06:CD30: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01AD43 06:CD33: 85 00     STA ram_0000
C - - - - - 0x01AD45 06:CD35: A5 03     LDA ram_0003
C - - - - - 0x01AD47 06:CD37: 9D 32 03  STA ram_0332,X
C - - - - - 0x01AD4A 06:CD3A: AD 02 03  LDA ram_0302
C - - - - - 0x01AD4D 06:CD3D: 85 01     STA ram_0001
C - - - - - 0x01AD4F 06:CD3F: AD 03 03  LDA ram_0303
C - - - - - 0x01AD52 06:CD42: 85 02     STA ram_0002
C - - - - - 0x01AD54 06:CD44: 4C 33 CE  JMP $CE33
C - - - - - 0x01AD57 06:CD47: A5 2C     LDA ram_002C
C - - - - - 0x01AD59 06:CD49: 29 03     AND #$03
C - - - - - 0x01AD5B 06:CD4B: D0 0E     BNE $CD5B
C - - - - - 0x01AD5D 06:CD4D: BD 20 03  LDA ram_0320,X
C - - - - - 0x01AD60 06:CD50: 6A        ROR
C - - - - - 0x01AD61 06:CD51: 90 05     BCC $CD58
C - - - - - 0x01AD63 06:CD53: FE 2C 03  INC ram_032C,X
C - - - - - 0x01AD66 06:CD56: D0 03     BNE $CD5B
C - - - - - 0x01AD68 06:CD58: DE 2C 03  DEC ram_032C,X
C - - - - - 0x01AD6B 06:CD5B: FE 44 03  INC ram_0344,X
C - - - - - 0x01AD6E 06:CD5E: 10 0D     BPL $CD6D
C - - - - - 0x01AD70 06:CD60: A9 00     LDA #$00
C - - - - - 0x01AD72 06:CD62: 9D 44 03  STA ram_0344,X
C - - - - - 0x01AD75 06:CD65: BD 20 03  LDA ram_0320,X
C - - - - - 0x01AD78 06:CD68: 49 01     EOR #$01
C - - - - - 0x01AD7A 06:CD6A: 9D 20 03  STA ram_0320,X
C - - - - - 0x01AD7D 06:CD6D: 60        RTS
C - - - - - 0x01AD7E 06:CD6E: AD 01 03  LDA ram_0301
C - - - - - 0x01AD81 06:CD71: C9 32     CMP #$32
C - - - - - 0x01AD83 06:CD73: D0 03     BNE $CD78
C - - - - - 0x01AD85 06:CD75: 4C FD AD  JMP $ADFD
C - - - - - 0x01AD88 06:CD78: A5 46     LDA ram_0046
C - - - - - 0x01AD8A 06:CD7A: C9 0F     CMP #$0F
C - - - - - 0x01AD8C 06:CD7C: D0 4F     BNE $CDCD
C - - - - - 0x01AD8E 06:CD7E: 8A        TXA
C - - - - - 0x01AD8F 06:CD7F: 48        PHA
C - - - - - 0x01AD90 06:CD80: A2 01     LDX #$01
C - - - - - 0x01AD92 06:CD82: AD 00 03  LDA ram_0300
C - - - - - 0x01AD95 06:CD85: C9 0C     CMP #$0C
C - - - - - 0x01AD97 06:CD87: D0 39     BNE $CDC2
C - - - - - 0x01AD99 06:CD89: BD 20 03  LDA ram_0320,X
C - - - - - 0x01AD9C 06:CD8C: 10 34     BPL $CDC2
C - - - - - 0x01AD9E 06:CD8E: 29 40     AND #$40
C - - - - - 0x01ADA0 06:CD90: F0 30     BEQ $CDC2
C - - - - - 0x01ADA2 06:CD92: 8A        TXA
C - - - - - 0x01ADA3 06:CD93: 0A        ASL
C - - - - - 0x01ADA4 06:CD94: A4 4B     LDY ram_004B
C - - - - - 0x01ADA6 06:CD96: C0 0C     CPY #$0C
C - - - - - 0x01ADA8 06:CD98: 90 03     BCC $CD9D
C - - - - - 0x01ADAA 06:CD9A: 18        CLC
C - - - - - 0x01ADAB 06:CD9B: 69 04     ADC #$04
C - - - - - 0x01ADAD 06:CD9D: A8        TAY
C - - - - - 0x01ADAE 06:CD9E: B9 DF F6  LDA $F6DF,Y
C - - - - - 0x01ADB1 06:CDA1: C5 68     CMP ram_0068
C - - - - - 0x01ADB3 06:CDA3: D0 1D     BNE $CDC2
C - - - - - 0x01ADB5 06:CDA5: B9 E0 F6  LDA $F6E0,Y
C - - - - - 0x01ADB8 06:CDA8: 38        SEC
C - - - - - 0x01ADB9 06:CDA9: E5 66     SBC ram_0066
C - - - - - 0x01ADBB 06:CDAB: B0 03     BCS $CDB0
C - - - - - 0x01ADBD 06:CDAD: 20 73 D0  JSR $D073
C - - - - - 0x01ADC0 06:CDB0: C9 14     CMP #$14
C - - - - - 0x01ADC2 06:CDB2: B0 0E     BCS $CDC2
C - - - - - 0x01ADC4 06:CDB4: A5 6A     LDA ram_006A
C - - - - - 0x01ADC6 06:CDB6: 38        SEC
C - - - - - 0x01ADC7 06:CDB7: FD 2C 03  SBC ram_032C,X
C - - - - - 0x01ADCA 06:CDBA: C9 05     CMP #$05
C - - - - - 0x01ADCC 06:CDBC: 90 29     BCC $CDE7
C - - - - - 0x01ADCE 06:CDBE: C9 FF     CMP #$FF
C - - - - - 0x01ADD0 06:CDC0: B0 25     BCS $CDE7
C - - - - - 0x01ADD2 06:CDC2: CA        DEX
C - - - - - 0x01ADD3 06:CDC3: 10 BD     BPL $CD82
C D 1 - - - 0x01ADD5 06:CDC5: A5 6D     LDA ram_006D
C - - - - - 0x01ADD7 06:CDC7: 29 FE     AND #$FE
C - - - - - 0x01ADD9 06:CDC9: 85 6D     STA ram_006D
C - - - - - 0x01ADDB 06:CDCB: 68        PLA
C - - - - - 0x01ADDC 06:CDCC: AA        TAX
C - - - - - 0x01ADDD 06:CDCD: 60        RTS
C - - - - - 0x01ADDE 06:CDCE: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01ADE1 06:CDD1: 29 10     AND #$10
C - - - - - 0x01ADE3 06:CDD3: D0 0D     BNE $CDE2
C - - - - - 0x01ADE5 06:CDD5: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01ADE8 06:CDD8: 09 10     ORA #$10
C - - - - - 0x01ADEA 06:CDDA: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01ADED 06:CDDD: A9 70     LDA #$70
C - - - - - 0x01ADEF 06:CDDF: 9D 86 03  STA ram_0386,X
C - - - - - 0x01ADF2 06:CDE2: BD 68 03  LDA ram_0368,X
C - - - - - 0x01ADF5 06:CDE5: D0 03     BNE $CDEA
C - - - - - 0x01ADF7 06:CDE7: BD 2C 03  LDA ram_032C,X
C - - - - - 0x01ADFA 06:CDEA: 85 6A     STA ram_006A
C - - - - - 0x01ADFC 06:CDEC: 68        PLA
C - - - - - 0x01ADFD 06:CDED: AA        TAX
C - - - - - 0x01ADFE 06:CDEE: 68        PLA
C - - - - - 0x01ADFF 06:CDEF: 68        PLA
C - - - - - 0x01AE00 06:CDF0: A5 6D     LDA ram_006D
C - - - - - 0x01AE02 06:CDF2: 09 01     ORA #$01
C - - - - - 0x01AE04 06:CDF4: 85 6D     STA ram_006D
C - - - - - 0x01AE06 06:CDF6: A9 03     LDA #$03
C - - - - - 0x01AE08 06:CDF8: 85 6E     STA ram_006E
C - - - - - 0x01AE0A 06:CDFA: A9 02     LDA #$02
C - - - - - 0x01AE0C 06:CDFC: 60        RTS
C D 1 - - - 0x01AE0D 06:CDFD: 8A        TXA
C - - - - - 0x01AE0E 06:CDFE: 48        PHA
C - - - - - 0x01AE0F 06:CDFF: A2 01     LDX #$01
C - - - - - 0x01AE11 06:CE01: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AE14 06:CE04: 10 28     BPL $CE2E
C - - - - - 0x01AE16 06:CE06: 29 40     AND #$40
C - - - - - 0x01AE18 06:CE08: F0 24     BEQ $CE2E
C - - - - - 0x01AE1A 06:CE0A: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01AE1D 06:CE0D: C5 68     CMP ram_0068
C - - - - - 0x01AE1F 06:CE0F: D0 1D     BNE $CE2E
C - - - - - 0x01AE21 06:CE11: BD 74 03  LDA ram_0374,X
C - - - - - 0x01AE24 06:CE14: 38        SEC
C - - - - - 0x01AE25 06:CE15: E5 66     SBC ram_0066
C - - - - - 0x01AE27 06:CE17: B0 03     BCS $CE1C
C - - - - - 0x01AE29 06:CE19: 20 73 D0  JSR $D073
C - - - - - 0x01AE2C 06:CE1C: C9 0C     CMP #$0C
C - - - - - 0x01AE2E 06:CE1E: B0 0E     BCS $CE2E
C - - - - - 0x01AE30 06:CE20: A5 6A     LDA ram_006A
C - - - - - 0x01AE32 06:CE22: 38        SEC
C - - - - - 0x01AE33 06:CE23: FD 68 03  SBC ram_0368,X
C - - - - - 0x01AE36 06:CE26: C9 05     CMP #$05
C - - - - - 0x01AE38 06:CE28: 90 A4     BCC $CDCE
C - - - - - 0x01AE3A 06:CE2A: C9 FF     CMP #$FF
C - - - - - 0x01AE3C 06:CE2C: B0 A0     BCS $CDCE
C - - - - - 0x01AE3E 06:CE2E: CA        DEX
C - - - - - 0x01AE3F 06:CE2F: 10 D0     BPL $CE01
C - - - - - 0x01AE41 06:CE31: 4C C5 AD  JMP $ADC5
C - - J - - 0x01AE44 06:CE34: A2 01     LDX #$01
C - - - - - 0x01AE46 06:CE36: 86 1A     STX ram_001A
C - - - - - 0x01AE48 06:CE38: A6 1A     LDX ram_001A
C - - - - - 0x01AE4A 06:CE3A: 20 95 AE  JSR $AE95
C - - - - - 0x01AE4D 06:CE3D: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AE50 06:CE40: C9 E0     CMP #$E0
C - - - - - 0x01AE52 06:CE42: B0 3C     BCS $CE80
C - - - - - 0x01AE54 06:CE44: C9 C0     CMP #$C0
C - - - - - 0x01AE56 06:CE46: 90 38     BCC $CE80
C - - - - - 0x01AE58 06:CE48: AD 01 03  LDA ram_0301
C - - - - - 0x01AE5B 06:CE4B: C9 32     CMP #$32
C - - - - - 0x01AE5D 06:CE4D: F0 31     BEQ $CE80
C - - - - - 0x01AE5F 06:CE4F: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AE62 06:CE52: 85 AD     STA ram_00AD
C - - - - - 0x01AE64 06:CE54: BD 6E 03  LDA ram_036E,X
C - - - - - 0x01AE67 06:CE57: 85 AE     STA ram_00AE
C - - - - - 0x01AE69 06:CE59: A9 30     LDA #$30
C - - - - - 0x01AE6B 06:CE5B: 85 AF     STA ram_00AF
C - - - - - 0x01AE6D 06:CE5D: A9 04     LDA #$04
C - - - - - 0x01AE6F 06:CE5F: 85 B0     STA ram_00B0
C - - - - - 0x01AE71 06:CE61: 20 60 D6  JSR $D660
C - - - - - 0x01AE74 06:CE64: 90 06     BCC $CE6C
C - - - - - 0x01AE76 06:CE66: 20 85 AE  JSR $AE85
C - - - - - 0x01AE79 06:CE69: 4C 80 AE  JMP $AE80
C - - - - - 0x01AE7C 06:CE6C: A5 5F     LDA ram_005F
C - - - - - 0x01AE7E 06:CE6E: 29 02     AND #$02
C - - - - - 0x01AE80 06:CE70: D0 0E     BNE $CE80
C - - - - - 0x01AE82 06:CE72: A6 7A     LDX ram_007A
C - - - - - 0x01AE84 06:CE74: 20 B6 D5  JSR $D5B6
C - - - - - 0x01AE87 06:CE77: 90 04     BCC $CE7D
- - - - - - 0x01AE89 06:CE79: A9        .byte $A9   ; 
- - - - - - 0x01AE8A 06:CE7A: 00        .byte $00   ; 
- - - - - - 0x01AE8B 06:CE7B: 95        .byte $95   ; 
- - - - - - 0x01AE8C 06:CE7C: 8F        .byte $8F   ; 
C - - - - - 0x01AE8D 06:CE7D: CA        DEX
C - - - - - 0x01AE8E 06:CE7E: 10 F4     BPL $CE74
C D 1 - - - 0x01AE90 06:CE80: C6 1A     DEC ram_001A
C - - - - - 0x01AE92 06:CE82: 10 B4     BPL $CE38
C - - - - - 0x01AE94 06:CE84: 60        RTS
C - - - - - 0x01AE95 06:CE85: A6 1A     LDX ram_001A
C - - - - - 0x01AE97 06:CE87: A9 00     LDA #$00
C - - - - - 0x01AE99 06:CE89: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AE9C 06:CE8C: BC 62 03  LDY ram_0362,X
C - - - - - 0x01AE9F 06:CE8F: A9 FF     LDA #$FF
C - - - - - 0x01AEA1 06:CE91: 99 C0 05  STA ram_05C0,Y
C - - - - - 0x01AEA4 06:CE94: 60        RTS
C - - - - - 0x01AEA5 06:CE95: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AEA8 06:CE98: 10 FA     BPL $CE94
C - - - - - 0x01AEAA 06:CE9A: 29 12     AND #$12
C - - - - - 0x01AEAC 06:CE9C: D0 46     BNE $CEE4
C - - - - - 0x01AEAE 06:CE9E: A0 02     LDY #$02
C - - - - - 0x01AEB0 06:CEA0: AD 01 03  LDA ram_0301
C - - - - - 0x01AEB3 06:CEA3: C9 30     CMP #$30
C - - - - - 0x01AEB5 06:CEA5: D0 02     BNE $CEA9
C - - - - - 0x01AEB7 06:CEA7: A0 00     LDY #$00
C D 1 - - - 0x01AEB9 06:CEA9: BD 74 03  LDA ram_0374,X
C - - - - - 0x01AEBC 06:CEAC: 85 00     STA ram_0000
C - - - - - 0x01AEBE 06:CEAE: BD 7A 03  LDA ram_037A,X
C - - - - - 0x01AEC1 06:CEB1: 85 01     STA ram_0001
C - - - - - 0x01AEC3 06:CEB3: 20 7B D6  JSR $D67B
C - - - - - 0x01AEC6 06:CEB6: 90 03     BCC $CEBB
C - - - - - 0x01AEC8 06:CEB8: 4C 7E D8  JMP $D87E
C - - - - - 0x01AECB 06:CEBB: 20 AC D6  JSR $D6AC
C - - - - - 0x01AECE 06:CEBE: 90 03     BCC $CEC3
C - - - - - 0x01AED0 06:CEC0: 4C 4D D8  JMP $D84D
C - - - - - 0x01AED3 06:CEC3: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AED6 06:CEC6: 85 00     STA ram_0000
C - - - - - 0x01AED8 06:CEC8: A5 03     LDA ram_0003
C - - - - - 0x01AEDA 06:CECA: 9D 6E 03  STA ram_036E,X
C - - - - - 0x01AEDD 06:CECD: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AEE0 06:CED0: 09 40     ORA #$40
C - - - - - 0x01AEE2 06:CED2: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AEE5 06:CED5: 98        TYA
C - - - - - 0x01AEE6 06:CED6: 18        CLC
C - - - - - 0x01AEE7 06:CED7: 6D 06 03  ADC ram_0306
C - - - - - 0x01AEEA 06:CEDA: 85 01     STA ram_0001
C - - - - - 0x01AEEC 06:CEDC: AD 07 03  LDA ram_0307
C - - - - - 0x01AEEF 06:CEDF: 85 02     STA ram_0002
C - - - - - 0x01AEF1 06:CEE1: 4C 33 CE  JMP $CE33
C - - - - - 0x01AEF4 06:CEE4: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AEF7 06:CEE7: 29 10     AND #$10
C - - - - - 0x01AEF9 06:CEE9: D0 2B     BNE $CF16
C - - - - - 0x01AEFB 06:CEEB: A5 2C     LDA ram_002C
C - - - - - 0x01AEFD 06:CEED: 29 03     AND #$03
C - - - - - 0x01AEFF 06:CEEF: D0 0E     BNE $CEFF
C - - - - - 0x01AF01 06:CEF1: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AF04 06:CEF4: 6A        ROR
C - - - - - 0x01AF05 06:CEF5: 90 05     BCC $CEFC
C - - - - - 0x01AF07 06:CEF7: FE 68 03  INC ram_0368,X
C - - - - - 0x01AF0A 06:CEFA: D0 03     BNE $CEFF
C - - - - - 0x01AF0C 06:CEFC: DE 68 03  DEC ram_0368,X
C - - - - - 0x01AF0F 06:CEFF: FE 80 03  INC ram_0380,X
C - - - - - 0x01AF12 06:CF02: 10 0D     BPL $CF11
C - - - - - 0x01AF14 06:CF04: A9 00     LDA #$00
C - - - - - 0x01AF16 06:CF06: 9D 80 03  STA ram_0380,X
C - - - - - 0x01AF19 06:CF09: BD 5C 03  LDA ram_035C,X
C - - - - - 0x01AF1C 06:CF0C: 49 01     EOR #$01
C - - - - - 0x01AF1E 06:CF0E: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AF21 06:CF11: A0 04     LDY #$04
C - - - - - 0x01AF23 06:CF13: 4C A9 AE  JMP $AEA9
C - - - - - 0x01AF26 06:CF16: BD 86 03  LDA ram_0386,X
C - - - - - 0x01AF29 06:CF19: F0 03     BEQ $CF1E
C - - - - - 0x01AF2B 06:CF1B: DE 86 03  DEC ram_0386,X
C - - - - - 0x01AF2E 06:CF1E: A0 04     LDY #$04
C - - - - - 0x01AF30 06:CF20: BD 86 03  LDA ram_0386,X
C - - - - - 0x01AF33 06:CF23: C9 40     CMP #$40
C - - - - - 0x01AF35 06:CF25: B0 23     BCS $CF4A
C - - - - - 0x01AF37 06:CF27: A0 06     LDY #$06
C - - - - - 0x01AF39 06:CF29: C9 38     CMP #$38
C - - - - - 0x01AF3B 06:CF2B: B0 0E     BCS $CF3B
C - - - - - 0x01AF3D 06:CF2D: A0 08     LDY #$08
C - - - - - 0x01AF3F 06:CF2F: C9 30     CMP #$30
C - - - - - 0x01AF41 06:CF31: B0 08     BCS $CF3B
C - - - - - 0x01AF43 06:CF33: A0 0A     LDY #$0A
C - - - - - 0x01AF45 06:CF35: C9 28     CMP #$28
C - - - - - 0x01AF47 06:CF37: B0 02     BCS $CF3B
C - - - - - 0x01AF49 06:CF39: A0 0C     LDY #$0C
C - - - - - 0x01AF4B 06:CF3B: FE 68 03  INC ram_0368,X
C - - - - - 0x01AF4E 06:CF3E: BD 68 03  LDA ram_0368,X
C - - - - - 0x01AF51 06:CF41: C9 DF     CMP #$DF
C - - - - - 0x01AF53 06:CF43: 90 05     BCC $CF4A
C - - - - - 0x01AF55 06:CF45: A9 00     LDA #$00
C - - - - - 0x01AF57 06:CF47: 9D 5C 03  STA ram_035C,X
C - - - - - 0x01AF5A 06:CF4A: 4C A9 AE  JMP $AEA9
C - - - - - 0x01AF5D 06:CF4D: A2 05     LDX #$05
C - - - - - 0x01AF5F 06:CF4F: 86 1A     STX ram_001A
C - - - - - 0x01AF61 06:CF51: A6 1A     LDX ram_001A
C - - - - - 0x01AF63 06:CF53: 20 F8 AF  JSR $AFF8
C - - - - - 0x01AF66 06:CF56: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01AF69 06:CF59: C9 E0     CMP #$E0
C - - - - - 0x01AF6B 06:CF5B: B0 69     BCS $CFC6
C - - - - - 0x01AF6D 06:CF5D: C9 C0     CMP #$C0
C - - - - - 0x01AF6F 06:CF5F: 90 65     BCC $CFC6
C - - - - - 0x01AF71 06:CF61: A0 08     LDY #$08
C - - - - - 0x01AF73 06:CF63: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01AF76 06:CF66: 29 10     AND #$10
C - - - - - 0x01AF78 06:CF68: D0 02     BNE $CF6C
C - - - - - 0x01AF7A 06:CF6A: A0 10     LDY #$10
C - - - - - 0x01AF7C 06:CF6C: 84 AF     STY ram_00AF
C - - - - - 0x01AF7E 06:CF6E: BD AA 03  LDA ram_03AA,X
C - - - - - 0x01AF81 06:CF71: 38        SEC
C - - - - - 0x01AF82 06:CF72: E9 04     SBC #$04
C - - - - - 0x01AF84 06:CF74: 85 AD     STA ram_00AD
C - - - - - 0x01AF86 06:CF76: BD B0 03  LDA ram_03B0,X
C - - - - - 0x01AF89 06:CF79: 85 AE     STA ram_00AE
C - - - - - 0x01AF8B 06:CF7B: A9 02     LDA #$02
C - - - - - 0x01AF8D 06:CF7D: 85 B0     STA ram_00B0
C - - - - - 0x01AF8F 06:CF7F: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01AF92 06:CF82: 29 10     AND #$10
C - - - - - 0x01AF94 06:CF84: F0 25     BEQ $CFAB
C - - - - - 0x01AF96 06:CF86: BD C8 03  LDA ram_03C8,X
C - - - - - 0x01AF99 06:CF89: D0 3B     BNE $CFC6
C - - - - - 0x01AF9B 06:CF8B: 20 42 D6  JSR $D642
C - - - - - 0x01AF9E 06:CF8E: 90 36     BCC $CFC6
C - - - - - 0x01AFA0 06:CF90: BC 98 03  LDY ram_0398,X
C - - - - - 0x01AFA3 06:CF93: A5 6D     LDA ram_006D
C - - - - - 0x01AFA5 06:CF95: 30 0B     BMI $CFA2
C - - - - - 0x01AFA7 06:CF97: B9 19 02  LDA ram_0219,Y
C - - - - - 0x01AFAA 06:CF9A: 48        PHA
C - - - - - 0x01AFAB 06:CF9B: 09 80     ORA #$80
C - - - - - 0x01AFAD 06:CF9D: 99 19 02  STA ram_0219,Y
C - - - - - 0x01AFB0 06:CFA0: 68        PLA
C - - - - - 0x01AFB1 06:CFA1: A8        TAY
C - - - - - 0x01AFB2 06:CFA2: 20 67 B0  JSR $B067
C - - - - - 0x01AFB5 06:CFA5: 20 EF AF  JSR $AFEF
C - - - - - 0x01AFB8 06:CFA8: 4C C6 AF  JMP $AFC6
C - - - - - 0x01AFBB 06:CFAB: A5 5F     LDA ram_005F
C - - - - - 0x01AFBD 06:CFAD: 29 02     AND #$02
C - - - - - 0x01AFBF 06:CFAF: F0 0B     BEQ $CFBC
C - - - - - 0x01AFC1 06:CFB1: 20 06 D6  JSR $D606
C - - - - - 0x01AFC4 06:CFB4: 90 10     BCC $CFC6
C - - - - - 0x01AFC6 06:CFB6: 20 D5 AF  JSR $AFD5
C - - - - - 0x01AFC9 06:CFB9: 4C C6 AF  JMP $AFC6
C - - - - - 0x01AFCC 06:CFBC: A6 7A     LDX ram_007A
C - - - - - 0x01AFCE 06:CFBE: 20 B6 D5  JSR $D5B6
C - - - - - 0x01AFD1 06:CFC1: B0 08     BCS $CFCB
C - - - - - 0x01AFD3 06:CFC3: CA        DEX
C - - - - - 0x01AFD4 06:CFC4: 10 F8     BPL $CFBE
C D 1 - - - 0x01AFD6 06:CFC6: C6 1A     DEC ram_001A
C - - - - - 0x01AFD8 06:CFC8: D0 87     BNE $CF51
C - - - - - 0x01AFDA 06:CFCA: 60        RTS
C - - - - - 0x01AFDB 06:CFCB: A9 00     LDA #$00
C - - - - - 0x01AFDD 06:CFCD: 95 8F     STA ram_008F,X
C - - - - - 0x01AFDF 06:CFCF: 20 D5 AF  JSR $AFD5
C - - - - - 0x01AFE2 06:CFD2: 4C C6 AF  JMP $AFC6
C - - - - - 0x01AFE5 06:CFD5: A6 1A     LDX ram_001A
C - - - - - 0x01AFE7 06:CFD7: DE A4 03  DEC ram_03A4,X
C - - - - - 0x01AFEA 06:CFDA: D0 12     BNE $CFEE
C - - - - - 0x01AFEC 06:CFDC: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01AFEF 06:CFDF: 09 10     ORA #$10
C - - - - - 0x01AFF1 06:CFE1: 9D 9E 03  STA ram_039E,X
C - - - - - 0x01AFF4 06:CFE4: A9 10     LDA #$10
C - - - - - 0x01AFF6 06:CFE6: 9D C8 03  STA ram_03C8,X
C - - - - - 0x01AFF9 06:CFE9: A9 14     LDA #$14
C - - - - - 0x01AFFB 06:CFEB: 20 20 C4  JSR $C420
C - - - - - 0x01AFFE 06:CFEE: 60        RTS
C D 1 - - - 0x01AFFF 06:CFEF: A9 00     LDA #$00
C - - - - - 0x01B001 06:CFF1: 9D 9E 03  STA ram_039E,X
C - - - - - 0x01B004 06:CFF4: 9D 98 03  STA ram_0398,X
C - - - - - 0x01B007 06:CFF7: 60        RTS
C - - - - - 0x01B008 06:CFF8: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01B00B 06:CFFB: 10 F1     BPL $CFEE
C - - - - - 0x01B00D 06:CFFD: A0 00     LDY #$00
C - - - - - 0x01B00F 06:CFFF: 29 10     AND #$10
C - - - - - 0x01B011 06:D001: F0 2B     BEQ $D02E
C - - - - - 0x01B013 06:D003: BD C8 03  LDA ram_03C8,X
C - - - - - 0x01B016 06:D006: F0 0D     BEQ $D015
C - - - - - 0x01B018 06:D008: DE C8 03  DEC ram_03C8,X
C - - - - - 0x01B01B 06:D00B: A0 02     LDY #$02
C - - - - - 0x01B01D 06:D00D: C9 08     CMP #$08
C - - - - - 0x01B01F 06:D00F: B0 1D     BCS $D02E
C - - - - - 0x01B021 06:D011: A0 04     LDY #$04
C - - - - - 0x01B023 06:D013: D0 19     BNE $D02E
C - - - - - 0x01B025 06:D015: A5 6D     LDA ram_006D
C - - - - - 0x01B027 06:D017: 10 03     BPL $D01C
C - - - - - 0x01B029 06:D019: 20 57 B0  JSR $B057
C - - - - - 0x01B02C 06:D01C: BD 98 03  LDA ram_0398,X
C - - - - - 0x01B02F 06:D01F: A4 6D     LDY ram_006D
C - - - - - 0x01B031 06:D021: 30 06     BMI $D029
C - - - - - 0x01B033 06:D023: A8        TAY
C - - - - - 0x01B034 06:D024: B9 19 02  LDA ram_0219,Y
C - - - - - 0x01B037 06:D027: 29 0F     AND #$0F
C - - - - - 0x01B039 06:D029: 0A        ASL
C - - - - - 0x01B03A 06:D02A: 18        CLC
C - - - - - 0x01B03B 06:D02B: 69 06     ADC #$06
C - - - - - 0x01B03D 06:D02D: A8        TAY
C - - - - - 0x01B03E 06:D02E: BD B6 03  LDA ram_03B6,X
C - - - - - 0x01B041 06:D031: 85 00     STA ram_0000
C - - - - - 0x01B043 06:D033: BD BC 03  LDA ram_03BC,X
C - - - - - 0x01B046 06:D036: 85 01     STA ram_0001
C - - - - - 0x01B048 06:D038: 20 AC D6  JSR $D6AC
C - - - - - 0x01B04B 06:D03B: 90 03     BCC $D040
C - - - - - 0x01B04D 06:D03D: 4C EF AF  JMP $AFEF
C - - - - - 0x01B050 06:D040: BD AA 03  LDA ram_03AA,X
C - - - - - 0x01B053 06:D043: 85 00     STA ram_0000
C - - - - - 0x01B055 06:D045: A5 03     LDA ram_0003
C - - - - - 0x01B057 06:D047: 9D B0 03  STA ram_03B0,X
C - - - - - 0x01B05A 06:D04A: 98        TYA
C - - - - - 0x01B05B 06:D04B: 18        CLC
C - - - - - 0x01B05C 06:D04C: 69 5C     ADC #$5C
C - - - - - 0x01B05E 06:D04E: 85 01     STA ram_0001
C - - - - - 0x01B060 06:D050: A9 60     LDA #$60
C - - - - - 0x01B062 06:D052: 85 02     STA ram_0002
C - - - - - 0x01B064 06:D054: 4C 33 CE  JMP $CE33
C - - - - - 0x01B067 06:D057: A5 2C     LDA ram_002C
C - - - - - 0x01B069 06:D059: 29 03     AND #$03
C - - - - - 0x01B06B 06:D05B: D0 47     BNE $D0A4
C - - - - - 0x01B06D 06:D05D: 24 3F     BIT ram_003F
C - - - - - 0x01B06F 06:D05F: 30 03     BMI $D064
C - - - - - 0x01B071 06:D061: 4C 13 D9  JMP $D913
C - - - - - 0x01B074 06:D064: 4C F4 D8  JMP $D8F4
C - - - - - 0x01B077 06:D067: A5 6D     LDA ram_006D
C - - - - - 0x01B079 06:D069: 30 15     BMI $D080
C - - - - - 0x01B07B 06:D06B: 2C 14 02  BIT ram_0214
C - - - - - 0x01B07E 06:D06E: 10 10     BPL $D080
C - - - - - 0x01B080 06:D070: C0 05     CPY #$05
C - - - - - 0x01B082 06:D072: B0 0C     BCS $D080
C - - - - - 0x01B084 06:D074: 84 11     STY ram_0011
C - - - - - 0x01B086 06:D076: AD 14 02  LDA ram_0214
C - - - - - 0x01B089 06:D079: 29 7F     AND #$7F
C - - - - - 0x01B08B 06:D07B: 05 11     ORA ram_0011
C - - - - - 0x01B08D 06:D07D: 8D 14 02  STA ram_0214
C - - - - - 0x01B090 06:D080: B9 00 02  LDA ram_0200,Y
C - - - - - 0x01B093 06:D083: 18        CLC
C - - - - - 0x01B094 06:D084: 69 01     ADC #$01
C - - - - - 0x01B096 06:D086: C9 FF     CMP #$FF
C - - - - - 0x01B098 06:D088: 90 02     BCC $D08C
- - - - - - 0x01B09A 06:D08A: A9        .byte $A9   ; 
- - - - - - 0x01B09B 06:D08B: FF        .byte $FF   ; 
C - - - - - 0x01B09C 06:D08C: 99 00 02  STA ram_0200,Y
C - - - - - 0x01B09F 06:D08F: A9 20     LDA #$20
C - - - - - 0x01B0A1 06:D091: 99 0A 02  STA ram_020A,Y
C - - - - - 0x01B0A4 06:D094: A9 18     LDA #$18
C - - - - - 0x01B0A6 06:D096: 20 20 C4  JSR $C420
C - - - - - 0x01B0A9 06:D099: 60        RTS
C - - - - - 0x01B0AA 06:D09A: A2 05     LDX #$05
C - - - - - 0x01B0AC 06:D09C: BD 9E 03  LDA ram_039E,X
C - - - - - 0x01B0AF 06:D09F: 10 04     BPL $D0A5
C - - - - - 0x01B0B1 06:D0A1: CA        DEX
C - - - - - 0x01B0B2 06:D0A2: D0 F8     BNE $D09C
C - - - - - 0x01B0B4 06:D0A4: 60        RTS
C - - - - - 0x01B0B5 06:D0A5: A5 6D     LDA ram_006D
C - - - - - 0x01B0B7 06:D0A7: 30 6A     BMI $D113
C - - - - - 0x01B0B9 06:D0A9: 20 4F EF  JSR $EF4F
C - - - - - 0x01B0BC 06:D0AC: A0 00     LDY #$00
C - - - - - 0x01B0BE 06:D0AE: A5 46     LDA ram_0046
C - - - - - 0x01B0C0 06:D0B0: F0 0C     BEQ $D0BE
C - - - - - 0x01B0C2 06:D0B2: A0 02     LDY #$02
C - - - - - 0x01B0C4 06:D0B4: C9 06     CMP #$06
C - - - - - 0x01B0C6 06:D0B6: F0 06     BEQ $D0BE
C - - - - - 0x01B0C8 06:D0B8: A0 04     LDY #$04
C - - - - - 0x01B0CA 06:D0BA: C9 0F     CMP #$0F
C - - - - - 0x01B0CC 06:D0BC: D0 E6     BNE $D0A4
C - - - - - 0x01B0CE 06:D0BE: B9 9E 84  LDA $849E,Y
C - - - - - 0x01B0D1 06:D0C1: 85 12     STA ram_0012
C - - - - - 0x01B0D3 06:D0C3: B9 9F 84  LDA $849F,Y
C - - - - - 0x01B0D6 06:D0C6: 85 13     STA ram_0013
C - - - - - 0x01B0D8 06:D0C8: A9 01     LDA #$01
C - - - - - 0x01B0DA 06:D0CA: 20 D6 F2  JSR $F2D6
C - - - - - 0x01B0DD 06:D0CD: 90 D5     BCC $D0A4
C - - - - - 0x01B0DF 06:D0CF: A4 0A     LDY ram_000A
C - - - - - 0x01B0E1 06:D0D1: B9 19 02  LDA ram_0219,Y
C - - - - - 0x01B0E4 06:D0D4: 30 CE     BMI $D0A4
C - - - - - 0x01B0E6 06:D0D6: A0 05     LDY #$05
C - - - - - 0x01B0E8 06:D0D8: B9 9E 03  LDA ram_039E,Y
C - - - - - 0x01B0EB 06:D0DB: 10 14     BPL $D0F1
C - - - - - 0x01B0ED 06:D0DD: B9 B6 03  LDA ram_03B6,Y
C - - - - - 0x01B0F0 06:D0E0: 38        SEC
C - - - - - 0x01B0F1 06:D0E1: E5 01     SBC ram_0001
C - - - - - 0x01B0F3 06:D0E3: B9 BC 03  LDA ram_03BC,Y
C - - - - - 0x01B0F6 06:D0E6: E5 00     SBC ram_0000
C - - - - - 0x01B0F8 06:D0E8: D0 07     BNE $D0F1
C - - - - - 0x01B0FA 06:D0EA: B9 AA 03  LDA ram_03AA,Y
C - - - - - 0x01B0FD 06:D0ED: C5 02     CMP ram_0002
C - - - - - 0x01B0FF 06:D0EF: F0 B3     BEQ $D0A4
C - - - - - 0x01B101 06:D0F1: 88        DEY
C - - - - - 0x01B102 06:D0F2: D0 E4     BNE $D0D8
C - - - - - 0x01B104 06:D0F4: A9 C0     LDA #$C0
C - - - - - 0x01B106 06:D0F6: 9D 9E 03  STA ram_039E,X
C - - - - - 0x01B109 06:D0F9: A9 03     LDA #$03
C D 1 - - - 0x01B10B 06:D0FB: 9D A4 03  STA ram_03A4,X
C - - - - - 0x01B10E 06:D0FE: A5 00     LDA ram_0000
C - - - - - 0x01B110 06:D100: 9D BC 03  STA ram_03BC,X
C - - - - - 0x01B113 06:D103: A5 01     LDA ram_0001
C - - - - - 0x01B115 06:D105: 9D B6 03  STA ram_03B6,X
C - - - - - 0x01B118 06:D108: A5 02     LDA ram_0002
C - - - - - 0x01B11A 06:D10A: 9D AA 03  STA ram_03AA,X
C - - - - - 0x01B11D 06:D10D: A5 0A     LDA ram_000A
C - - - - - 0x01B11F 06:D10F: 9D 98 03  STA ram_0398,X
C - - - - - 0x01B122 06:D112: 60        RTS
C - - - - - 0x01B123 06:D113: 20 3B EF  JSR $EF3B
C - - - - - 0x01B126 06:D116: A5 2C     LDA ram_002C
C - - - - - 0x01B128 06:D118: 29 3F     AND #$3F
C - - - - - 0x01B12A 06:D11A: D0 F6     BNE $D112
C - - - - - 0x01B12C 06:D11C: 20 64 D0  JSR $D064
C - - - - - 0x01B12F 06:D11F: 29 A0     AND #$A0
C - - - - - 0x01B131 06:D121: D0 EF     BNE $D112
C - - - - - 0x01B133 06:D123: A9 08     LDA #$08
C - - - - - 0x01B135 06:D125: A4 3F     LDY ram_003F
C - - - - - 0x01B137 06:D127: 10 02     BPL $D12B
C - - - - - 0x01B139 06:D129: A9 F8     LDA #$F8
C - - - - - 0x01B13B 06:D12B: 18        CLC
C - - - - - 0x01B13C 06:D12C: 65 27     ADC ram_0027
C - - - - - 0x01B13E 06:D12E: 85 01     STA ram_0001
C - - - - - 0x01B140 06:D130: A5 4B     LDA ram_004B
C - - - - - 0x01B142 06:D132: 69 00     ADC #$00
C - - - - - 0x01B144 06:D134: 85 00     STA ram_0000
C - - - - - 0x01B146 06:D136: A5 35     LDA ram_0035
C - - - - - 0x01B148 06:D138: 29 1F     AND #$1F
C - - - - - 0x01B14A 06:D13A: A8        TAY
C - - - - - 0x01B14B 06:D13B: B9 A0 95  LDA $95A0,Y
C - - - - - 0x01B14E 06:D13E: 20 59 B1  JSR $B159
C - - - - - 0x01B151 06:D141: 20 64 D0  JSR $D064
C - - - - - 0x01B154 06:D144: 29 1F     AND #$1F
C - - - - - 0x01B156 06:D146: A8        TAY
C - - - - - 0x01B157 06:D147: B9 C0 95  LDA $95C0,Y
C - - - - - 0x01B15A 06:D14A: 85 02     STA ram_0002
C - - - - - 0x01B15C 06:D14C: A9 D0     LDA #$D0
C - - - - - 0x01B15E 06:D14E: 9D 9E 03  STA ram_039E,X
C - - - - - 0x01B161 06:D151: A9 00     LDA #$00
C - - - - - 0x01B163 06:D153: 9D C8 03  STA ram_03C8,X
C - - - - - 0x01B166 06:D156: 4C FB B0  JMP $B0FB
C - - - - - 0x01B169 06:D159: 85 0A     STA ram_000A
C - - - - - 0x01B16B 06:D15B: A8        TAY
C - - - - - 0x01B16C 06:D15C: A9 01     LDA #$01
C - - - - - 0x01B16E 06:D15E: C0 08     CPY #$08
C - - - - - 0x01B170 06:D160: F0 06     BEQ $D168
C - - - - - 0x01B172 06:D162: 88        DEY
C - - - - - 0x01B173 06:D163: 30 03     BMI $D168
C - - - - - 0x01B175 06:D165: 0A        ASL
C - - - - - 0x01B176 06:D166: D0 FA     BNE $D162
C - - - - - 0x01B178 06:D168: 85 0B     STA ram_000B
C - - - - - 0x01B17A 06:D16A: A5 40     LDA ram_0040
C - - - - - 0x01B17C 06:D16C: 0A        ASL
C - - - - - 0x01B17D 06:D16D: 18        CLC
C - - - - - 0x01B17E 06:D16E: 6D 90 94  ADC $9490
C - - - - - 0x01B181 06:D171: 85 12     STA ram_0012
C - - - - - 0x01B183 06:D173: AD 91 94  LDA $9491
C - - - - - 0x01B186 06:D176: 69 00     ADC #$00
C - - - - - 0x01B188 06:D178: 85 13     STA ram_0013
C - - - - - 0x01B18A 06:D17A: A0 00     LDY #$00
C - - - - - 0x01B18C 06:D17C: A5 0A     LDA ram_000A
C - - - - - 0x01B18E 06:D17E: C9 08     CMP #$08
C - - - - - 0x01B190 06:D180: F0 01     BEQ $D183
C - - - - - 0x01B192 06:D182: C8        INY
C - - - - - 0x01B193 06:D183: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B195 06:D185: 25 0B     AND ram_000B
C - - - - - 0x01B197 06:D187: F0 02     BEQ $D18B
C - - - - - 0x01B199 06:D189: 68        PLA
C - - - - - 0x01B19A 06:D18A: 68        PLA
C - - - - - 0x01B19B 06:D18B: 60        RTS
C - - - - - 0x01B19C 06:D18C: A5 46     LDA ram_0046
C - - - - - 0x01B19E 06:D18E: C9 1F     CMP #$1F
C - - - - - 0x01B1A0 06:D190: 90 F9     BCC $D18B
C - - - - - 0x01B1A2 06:D192: C9 24     CMP #$24
C - - - - - 0x01B1A4 06:D194: B0 F5     BCS $D18B
C - - - - - 0x01B1A6 06:D196: 20 4F EF  JSR $EF4F
C - - - - - 0x01B1A9 06:D199: A5 46     LDA ram_0046
C - - - - - 0x01B1AB 06:D19B: 38        SEC
C - - - - - 0x01B1AC 06:D19C: E9 1F     SBC #$1F
C - - - - - 0x01B1AE 06:D19E: 0A        ASL
C - - - - - 0x01B1AF 06:D19F: 85 12     STA ram_0012
C - - - - - 0x01B1B1 06:D1A1: 0A        ASL
C - - - - - 0x01B1B2 06:D1A2: 0A        ASL
C - - - - - 0x01B1B3 06:D1A3: 18        CLC
C - - - - - 0x01B1B4 06:D1A4: 65 12     ADC ram_0012
C - - - - - 0x01B1B6 06:D1A6: A8        TAY
C - - - - - 0x01B1B7 06:D1A7: A2 05     LDX #$05
C - - - - - 0x01B1B9 06:D1A9: B9 36 81  LDA $8136,Y
C - - - - - 0x01B1BC 06:D1AC: 9D AA 03  STA ram_03AA,X
C - - - - - 0x01B1BF 06:D1AF: C8        INY
C - - - - - 0x01B1C0 06:D1B0: B9 36 81  LDA $8136,Y
C - - - - - 0x01B1C3 06:D1B3: 9D B6 03  STA ram_03B6,X
C - - - - - 0x01B1C6 06:D1B6: A9 00     LDA #$00
C - - - - - 0x01B1C8 06:D1B8: 9D BC 03  STA ram_03BC,X
C - - - - - 0x01B1CB 06:D1BB: A9 03     LDA #$03
C - - - - - 0x01B1CD 06:D1BD: 9D A4 03  STA ram_03A4,X
C - - - - - 0x01B1D0 06:D1C0: C8        INY
C - - - - - 0x01B1D1 06:D1C1: CA        DEX
C - - - - - 0x01B1D2 06:D1C2: D0 E5     BNE $D1A9
C - - - - - 0x01B1D4 06:D1C4: A5 5E     LDA ram_005E
C - - - - - 0x01B1D6 06:D1C6: 0A        ASL
C - - - - - 0x01B1D7 06:D1C7: A8        TAY
C - - - - - 0x01B1D8 06:D1C8: B9 2E 81  LDA $812E,Y
C - - - - - 0x01B1DB 06:D1CB: 85 12     STA ram_0012
C - - - - - 0x01B1DD 06:D1CD: B9 2F 81  LDA $812F,Y
C - - - - - 0x01B1E0 06:D1D0: 85 13     STA ram_0013
C - - - - - 0x01B1E2 06:D1D2: A5 B7     LDA ram_00B7
C - - - - - 0x01B1E4 06:D1D4: 0A        ASL
C - - - - - 0x01B1E5 06:D1D5: 0A        ASL
C - - - - - 0x01B1E6 06:D1D6: 18        CLC
C - - - - - 0x01B1E7 06:D1D7: 65 B7     ADC ram_00B7
C - - - - - 0x01B1E9 06:D1D9: A8        TAY
C - - - - - 0x01B1EA 06:D1DA: A2 05     LDX #$05
C - - - - - 0x01B1EC 06:D1DC: 84 11     STY ram_0011
C - - - - - 0x01B1EE 06:D1DE: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B1F0 06:D1E0: 9D 98 03  STA ram_0398,X
C - - - - - 0x01B1F3 06:D1E3: F0 0A     BEQ $D1EF
C - - - - - 0x01B1F5 06:D1E5: A8        TAY
C - - - - - 0x01B1F6 06:D1E6: B9 19 02  LDA ram_0219,Y
C - - - - - 0x01B1F9 06:D1E9: 30 04     BMI $D1EF
C - - - - - 0x01B1FB 06:D1EB: A9 C0     LDA #$C0
C - - - - - 0x01B1FD 06:D1ED: D0 02     BNE $D1F1
C - - - - - 0x01B1FF 06:D1EF: A9 00     LDA #$00
C - - - - - 0x01B201 06:D1F1: 9D 9E 03  STA ram_039E,X
C - - - - - 0x01B204 06:D1F4: A4 11     LDY ram_0011
C - - - - - 0x01B206 06:D1F6: C8        INY
C - - - - - 0x01B207 06:D1F7: CA        DEX
C - - - - - 0x01B208 06:D1F8: D0 E2     BNE $D1DC
C - - - - - 0x01B20A 06:D1FA: 60        RTS
C D 1 - - - 0x01B20B 06:D1FB: C6 73     DEC ram_0073
C - - - - - 0x01B20D 06:D1FD: D0 0F     BNE $D20E
C - - - - - 0x01B20F 06:D1FF: C6 72     DEC ram_0072
C - - - - - 0x01B211 06:D201: D0 03     BNE $D206
C - - - - - 0x01B213 06:D203: 20 EE CD  JSR $CDEE
C - - - - - 0x01B216 06:D206: 20 63 DF  JSR $DF63
C - - - - - 0x01B219 06:D209: A2 00     LDX #$00
C - - - - - 0x01B21B 06:D20B: 4C C2 DB  JMP $DBC2
C - - - - - 0x01B21E 06:D20E: A5 73     LDA ram_0073
C - - - - - 0x01B220 06:D210: C9 20     CMP #$20
C - - - - - 0x01B222 06:D212: 90 F2     BCC $D206
C - - - - - 0x01B224 06:D214: 20 F1 DC  JSR $DCF1
C - - - - - 0x01B227 06:D217: A5 6C     LDA ram_006C
C - - - - - 0x01B229 06:D219: 6A        ROR
C - - - - - 0x01B22A 06:D21A: 90 06     BCC $D222
C - - - - - 0x01B22C 06:D21C: 20 E5 DC  JSR $DCE5
C - - - - - 0x01B22F 06:D21F: 4C 25 B2  JMP $B225
C - - - - - 0x01B232 06:D222: 20 B1 DC  JSR $DCB1
C D 1 - - - 0x01B235 06:D225: A2 10     LDX #$10
C - - - - - 0x01B237 06:D227: A5 73     LDA ram_0073
C - - - - - 0x01B239 06:D229: 29 0F     AND #$0F
C - - - - - 0x01B23B 06:D22B: C9 08     CMP #$08
C - - - - - 0x01B23D 06:D22D: B0 02     BCS $D231
C - - - - - 0x01B23F 06:D22F: A2 14     LDX #$14
C - - - - - 0x01B241 06:D231: 4C C2 DB  JMP $DBC2
C D 1 - - - 0x01B244 06:D234: 48        PHA
C - - - - - 0x01B245 06:D235: 20 4F EF  JSR $EF4F
C - - - - - 0x01B248 06:D238: 68        PLA
C - - - - - 0x01B249 06:D239: 0A        ASL
C - - - - - 0x01B24A 06:D23A: A8        TAY
C - - - - - 0x01B24B 06:D23B: B9 00 80  LDA $8000,Y
C - - - - - 0x01B24E 06:D23E: 85 CB     STA ram_00CB
C - - - - - 0x01B250 06:D240: B9 01 80  LDA $8001,Y
C - - - - - 0x01B253 06:D243: 29 1F     AND #$1F
C - - - - - 0x01B255 06:D245: 85 CC     STA ram_00CC
C - - - - - 0x01B257 06:D247: A9 80     LDA #$80
C - - - - - 0x01B259 06:D249: 85 C8     STA ram_00C8
C - - - - - 0x01B25B 06:D24B: A9 00     LDA #$00
C - - - - - 0x01B25D 06:D24D: 85 CA     STA ram_00CA
C - - - - - 0x01B25F 06:D24F: 85 C9     STA ram_00C9
C - - - - - 0x01B261 06:D251: 60        RTS
C - - - - - 0x01B262 06:D252: 4C 71 C3  JMP $C371
C D 1 - - - 0x01B265 06:D255: A5 C8     LDA ram_00C8
C - - - - - 0x01B267 06:D257: F0 F9     BEQ $D252
C - - - - - 0x01B269 06:D259: E6 CA     INC ram_00CA
C - - - - - 0x01B26B 06:D25B: A5 CA     LDA ram_00CA
C - - - - - 0x01B26D 06:D25D: 29 03     AND #$03
C - - - - - 0x01B26F 06:D25F: D0 F1     BNE $D252
C - - - - - 0x01B271 06:D261: 20 BE B2  JSR $B2BE
C - - - - - 0x01B274 06:D264: A4 C9     LDY ram_00C9
C - - - - - 0x01B276 06:D266: 20 DB B2  JSR $B2DB
C D 1 - - - 0x01B279 06:D269: C9 FC     CMP #$FC
C - - - - - 0x01B27B 06:D26B: 90 1E     BCC $D28B
C - - - - - 0x01B27D 06:D26D: C9 FE     CMP #$FE
C - - - - - 0x01B27F 06:D26F: D0 15     BNE $D286
C - - - - - 0x01B281 06:D271: C8        INY
C - - - - - 0x01B282 06:D272: AD 07 20  LDA $2007
C - - - - - 0x01B285 06:D275: 85 CF     STA ram_00CF
C - - - - - 0x01B287 06:D277: C8        INY
C - - - - - 0x01B288 06:D278: AD 07 20  LDA $2007
C - - - - - 0x01B28B 06:D27B: 85 D0     STA ram_00D0
C - - - - - 0x01B28D 06:D27D: C8        INY
C - - - - - 0x01B28E 06:D27E: 84 C9     STY ram_00C9
C - - - - - 0x01B290 06:D280: AD 07 20  LDA $2007
C - - - - - 0x01B293 06:D283: 4C 69 B2  JMP $B269
C - - - - - 0x01B296 06:D286: A9 00     LDA #$00
C - - - - - 0x01B298 06:D288: 85 C8     STA ram_00C8
C - - - - - 0x01B29A 06:D28A: 60        RTS
C - - - - - 0x01B29B 06:D28B: E6 C9     INC ram_00C9
C - - - - - 0x01B29D 06:D28D: D0 02     BNE $D291
- - - - - - 0x01B29F 06:D28F: E6        .byte $E6   ; 
- - - - - - 0x01B2A0 06:D290: C8        .byte $C8   ; 
C - - - - - 0x01B2A1 06:D291: A2 00     LDX #$00
C - - - - - 0x01B2A3 06:D293: C9 80     CMP #$80
C - - - - - 0x01B2A5 06:D295: 90 0A     BCC $D2A1
C - - - - - 0x01B2A7 06:D297: A2 7E     LDX #$7E
C - - - - - 0x01B2A9 06:D299: C9 C0     CMP #$C0
C - - - - - 0x01B2AB 06:D29B: 90 02     BCC $D29F
C - - - - - 0x01B2AD 06:D29D: A2 7F     LDX #$7F
C - - - - - 0x01B2AF 06:D29F: 29 3F     AND #$3F
C - - - - - 0x01B2B1 06:D2A1: 8E 33 06  STX ram_0633
C - - - - - 0x01B2B4 06:D2A4: 8D 34 06  STA ram_0634
C - - - - - 0x01B2B7 06:D2A7: A5 CF     LDA ram_00CF
C - - - - - 0x01B2B9 06:D2A9: 8D 30 06  STA ram_0630
C - - - - - 0x01B2BC 06:D2AC: A5 D0     LDA ram_00D0
C - - - - - 0x01B2BE 06:D2AE: 8D 31 06  STA ram_0631
C - - - - - 0x01B2C1 06:D2B1: A9 82     LDA #$82
C - - - - - 0x01B2C3 06:D2B3: 8D 32 06  STA ram_0632
C - - - - - 0x01B2C6 06:D2B6: E6 CF     INC ram_00CF
C - - - - - 0x01B2C8 06:D2B8: A9 50     LDA #$50
C - - - - - 0x01B2CA 06:D2BA: 4C 20 C4  JMP $C420
- - - - - - 0x01B2CD 06:D2BD: 60        .byte $60   ; 
C - - - - - 0x01B2CE 06:D2BE: A2 00     LDX #$00
C - - - - - 0x01B2D0 06:D2C0: A9 1A     LDA #$1A
C - - - - - 0x01B2D2 06:D2C2: 8E 00 80  STX $8000
C - - - - - 0x01B2D5 06:D2C5: 8D 01 80  STA $8001
C - - - - - 0x01B2D8 06:D2C8: E8        INX
C - - - - - 0x01B2D9 06:D2C9: A9 1C     LDA #$1C
C - - - - - 0x01B2DB 06:D2CB: 8E 00 80  STX $8000
C - - - - - 0x01B2DE 06:D2CE: 8D 01 80  STA $8001
C - - - - - 0x01B2E1 06:D2D1: E8        INX
C - - - - - 0x01B2E2 06:D2D2: A9 1E     LDA #$1E
C - - - - - 0x01B2E4 06:D2D4: 8E 00 80  STX $8000
C - - - - - 0x01B2E7 06:D2D7: 8D 01 80  STA $8001
C - - - - - 0x01B2EA 06:D2DA: 60        RTS
C - - - - - 0x01B2EB 06:D2DB: AD 02 20  LDA $2002
C - - - - - 0x01B2EE 06:D2DE: 98        TYA
C - - - - - 0x01B2EF 06:D2DF: 18        CLC
C - - - - - 0x01B2F0 06:D2E0: 65 CB     ADC ram_00CB
C - - - - - 0x01B2F2 06:D2E2: 48        PHA
C - - - - - 0x01B2F3 06:D2E3: A5 CC     LDA ram_00CC
C - - - - - 0x01B2F5 06:D2E5: 69 00     ADC #$00
C - - - - - 0x01B2F7 06:D2E7: 8D 06 20  STA $2006
C - - - - - 0x01B2FA 06:D2EA: 68        PLA
C - - - - - 0x01B2FB 06:D2EB: 8D 06 20  STA $2006
C - - - - - 0x01B2FE 06:D2EE: 4C FC B2  JMP $B2FC
- - - - - - 0x01B301 06:D2F1: AD        .byte $AD   ; 
- - - - - - 0x01B302 06:D2F2: 02        .byte $02   ; 
- - - - - - 0x01B303 06:D2F3: 20        .byte $20   ; 
- - - - - - 0x01B304 06:D2F4: A9        .byte $A9   ; 
- - - - - - 0x01B305 06:D2F5: 00        .byte $00   ; 
- - - - - - 0x01B306 06:D2F6: 8D        .byte $8D   ; 
- - - - - - 0x01B307 06:D2F7: 06        .byte $06   ; 
- - - - - - 0x01B308 06:D2F8: 20        .byte $20   ; 
- - - - - - 0x01B309 06:D2F9: 8C        .byte $8C   ; 
- - - - - - 0x01B30A 06:D2FA: 06        .byte $06   ; 
- - - - - - 0x01B30B 06:D2FB: 20        .byte $20   ; 
C D 1 - - - 0x01B30C 06:D2FC: AD 07 20  LDA $2007
C - - - - - 0x01B30F 06:D2FF: AD 07 20  LDA $2007
C - - - - - 0x01B312 06:D302: 60        RTS
C - - - - - 0x01B313 06:D303: BD 00 05  LDA ram_0500,X
C - - - - - 0x01B316 06:D306: 09 B0     ORA #$B0
C - - - - - 0x01B318 06:D308: 9D 00 05  STA ram_0500,X
C - - - - - 0x01B31B 06:D30B: 60        RTS
C - - - - - 0x01B31C 06:D30C: A0 00     LDY #$00
C - - - - - 0x01B31E 06:D30E: A5 BC     LDA ram_00BC
C - - - - - 0x01B320 06:D310: C5 60     CMP ram_0060
C - - - - - 0x01B322 06:D312: F0 01     BEQ $D315
- - - - - - 0x01B324 06:D314: C8        .byte $C8   ; 
C - - - - - 0x01B325 06:D315: B9 62 00  LDA ram_0062,Y
C - - - - - 0x01B328 06:D318: 60        RTS
C - - - - - 0x01B329 06:D319: 20 4F EF  JSR $EF4F
C - - - - - 0x01B32C 06:D31C: A0 FF     LDY #$FF
C - - - - - 0x01B32E 06:D31E: A2 00     LDX #$00
C - - - - - 0x01B330 06:D320: A5 5F     LDA ram_005F
C - - - - - 0x01B332 06:D322: 4A        LSR
C - - - - - 0x01B333 06:D323: 4A        LSR
C - - - - - 0x01B334 06:D324: 48        PHA
C - - - - - 0x01B335 06:D325: 29 03     AND #$03
C - - - - - 0x01B337 06:D327: C9 01     CMP #$01
C - - - - - 0x01B339 06:D329: D0 05     BNE $D330
C - - - - - 0x01B33B 06:D32B: C8        INY
C - - - - - 0x01B33C 06:D32C: 8A        TXA
C - - - - - 0x01B33D 06:D32D: 99 62 00  STA ram_0062,Y
C - - - - - 0x01B340 06:D330: 68        PLA
C - - - - - 0x01B341 06:D331: E8        INX
C - - - - - 0x01B342 06:D332: E0 03     CPX #$03
C - - - - - 0x01B344 06:D334: D0 EC     BNE $D322
C - - - - - 0x01B346 06:D336: 84 11     STY ram_0011
C - - - - - 0x01B348 06:D338: A6 60     LDX ram_0060
C - - - - - 0x01B34A 06:D33A: F0 03     BEQ $D33F
C - - - - - 0x01B34C 06:D33C: 20 03 B3  JSR $B303
C - - - - - 0x01B34F 06:D33F: A6 61     LDX ram_0061
C - - - - - 0x01B351 06:D341: F0 03     BEQ $D346
- - - - - - 0x01B353 06:D343: 20        .byte $20   ; 
- - - - - - 0x01B354 06:D344: 03        .byte $03   ; 
- - - - - - 0x01B355 06:D345: B3        .byte $B3   ; 
C - - - - - 0x01B356 06:D346: A9 00     LDA #$00
C - - - - - 0x01B358 06:D348: 85 60     STA ram_0060
C - - - - - 0x01B35A 06:D34A: 85 61     STA ram_0061
C - - - - - 0x01B35C 06:D34C: A5 5E     LDA ram_005E
C - - - - - 0x01B35E 06:D34E: 0A        ASL
C - - - - - 0x01B35F 06:D34F: A8        TAY
C - - - - - 0x01B360 06:D350: B9 08 81  LDA $8108,Y
C - - - - - 0x01B363 06:D353: 85 12     STA ram_0012
C - - - - - 0x01B365 06:D355: B9 09 81  LDA $8109,Y
C - - - - - 0x01B368 06:D358: 85 13     STA ram_0013
C - - - - - 0x01B36A 06:D35A: A0 00     LDY #$00
C - - - - - 0x01B36C 06:D35C: A5 46     LDA ram_0046
C - - - - - 0x01B36E 06:D35E: D1 12     CMP (ram_0012),Y
C - - - - - 0x01B370 06:D360: 90 05     BCC $D367
C - - - - - 0x01B372 06:D362: C8        INY
C - - - - - 0x01B373 06:D363: C8        INY
C - - - - - 0x01B374 06:D364: C8        INY
C - - - - - 0x01B375 06:D365: D0 F7     BNE $D35E
C - - - - - 0x01B377 06:D367: C8        INY
C - - - - - 0x01B378 06:D368: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B37A 06:D36A: 85 14     STA ram_0014
C - - - - - 0x01B37C 06:D36C: C8        INY
C - - - - - 0x01B37D 06:D36D: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B37F 06:D36F: 85 15     STA ram_0015
C - - - - - 0x01B381 06:D371: A0 00     LDY #$00
C - - - - - 0x01B383 06:D373: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B385 06:D375: 85 00     STA ram_0000
C - - - - - 0x01B387 06:D377: A9 02     LDA #$02
C - - - - - 0x01B389 06:D379: 85 01     STA ram_0001
C - - - - - 0x01B38B 06:D37B: 20 64 D0  JSR $D064
C - - - - - 0x01B38E 06:D37E: 29 3F     AND #$3F
C - - - - - 0x01B390 06:D380: 4A        LSR
C - - - - - 0x01B391 06:D381: 38        SEC
C - - - - - 0x01B392 06:D382: E5 00     SBC ram_0000
C - - - - - 0x01B394 06:D384: B0 FB     BCS $D381
C - - - - - 0x01B396 06:D386: 65 00     ADC ram_0000
C - - - - - 0x01B398 06:D388: A8        TAY
C - - - - - 0x01B399 06:D389: C8        INY
C - - - - - 0x01B39A 06:D38A: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B39C 06:D38C: AA        TAX
C - - - - - 0x01B39D 06:D38D: BD 00 05  LDA ram_0500,X
C - - - - - 0x01B3A0 06:D390: 29 B4     AND #$B4
C - - - - - 0x01B3A2 06:D392: C9 B0     CMP #$B0
C - - - - - 0x01B3A4 06:D394: F0 04     BEQ $D39A
C - - - - - 0x01B3A6 06:D396: C9 B4     CMP #$B4
C - - - - - 0x01B3A8 06:D398: D0 E1     BNE $D37B
C - - - - - 0x01B3AA 06:D39A: 29 1F     AND #$1F
C - - - - - 0x01B3AC 06:D39C: 9D 00 05  STA ram_0500,X
C - - - - - 0x01B3AF 06:D39F: A4 11     LDY ram_0011
C - - - - - 0x01B3B1 06:D3A1: 8A        TXA
C - - - - - 0x01B3B2 06:D3A2: 99 60 00  STA ram_0060,Y
C - - - - - 0x01B3B5 06:D3A5: C6 11     DEC ram_0011
C - - - - - 0x01B3B7 06:D3A7: 10 D2     BPL $D37B
C - - - - - 0x01B3B9 06:D3A9: 60        RTS
C - - - - - 0x01B3BA 06:D3AA: 20 4F EF  JSR $EF4F
C - - - - - 0x01B3BD 06:D3AD: A5 5E     LDA ram_005E
C - - - - - 0x01B3BF 06:D3AF: 0A        ASL
C - - - - - 0x01B3C0 06:D3B0: A8        TAY
C - - - - - 0x01B3C1 06:D3B1: B9 00 81  LDA $8100,Y
C - - - - - 0x01B3C4 06:D3B4: 85 14     STA ram_0014
C - - - - - 0x01B3C6 06:D3B6: B9 01 81  LDA $8101,Y
C - - - - - 0x01B3C9 06:D3B9: 85 15     STA ram_0015
C - - - - - 0x01B3CB 06:D3BB: A5 B9     LDA ram_00B9
C - - - - - 0x01B3CD 06:D3BD: 29 03     AND #$03
C - - - - - 0x01B3CF 06:D3BF: D0 15     BNE $D3D6
C - - - - - 0x01B3D1 06:D3C1: 20 0C B3  JSR $B30C
C - - - - - 0x01B3D4 06:D3C4: 0A        ASL
C - - - - - 0x01B3D5 06:D3C5: A8        TAY
C - - - - - 0x01B3D6 06:D3C6: B9 10 81  LDA $8110,Y
C - - - - - 0x01B3D9 06:D3C9: 85 12     STA ram_0012
C - - - - - 0x01B3DB 06:D3CB: B9 11 81  LDA $8111,Y
C - - - - - 0x01B3DE 06:D3CE: 85 13     STA ram_0013
C - - - - - 0x01B3E0 06:D3D0: 20 49 B5  JSR $B549
C - - - - - 0x01B3E3 06:D3D3: 4C E3 B3  JMP $B3E3
C - - - - - 0x01B3E6 06:D3D6: A5 B8     LDA ram_00B8
C - - - - - 0x01B3E8 06:D3D8: 0A        ASL
C - - - - - 0x01B3E9 06:D3D9: A8        TAY
C - - - - - 0x01B3EA 06:D3DA: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B3EC 06:D3DC: 85 12     STA ram_0012
C - - - - - 0x01B3EE 06:D3DE: C8        INY
C - - - - - 0x01B3EF 06:D3DF: B1 14     LDA (ram_0014),Y
C - - - - - 0x01B3F1 06:D3E1: 85 13     STA ram_0013
C D 1 - - - 0x01B3F3 06:D3E3: 20 EB B4  JSR $B4EB
C - - - - - 0x01B3F6 06:D3E6: A5 C8     LDA ram_00C8
C - - - - - 0x01B3F8 06:D3E8: D0 27     BNE $D411
C - - - - - 0x01B3FA 06:D3EA: 24 41     BIT ram_0041
C - - - - - 0x01B3FC 06:D3EC: 70 23     BVS $D411
C - - - - - 0x01B3FE 06:D3EE: 20 3E FC  JSR $FC3E
C - - - - - 0x01B401 06:D3F1: F0 0F     BEQ $D402
C - - - - - 0x01B403 06:D3F3: A9 03     LDA #$03
C - - - - - 0x01B405 06:D3F5: 20 79 D0  JSR $D079
C - - - - - 0x01B408 06:D3F8: F0 17     BEQ $D411
C - - - - - 0x01B40A 06:D3FA: A5 41     LDA ram_0041
C - - - - - 0x01B40C 06:D3FC: C9 06     CMP #$06
C - - - - - 0x01B40E 06:D3FE: 90 08     BCC $D408
C - - - - - 0x01B410 06:D400: B0 65     BCS $D467
C - - - - - 0x01B412 06:D402: A9 60     LDA #$60
C - - - - - 0x01B414 06:D404: C5 64     CMP ram_0064
C - - - - - 0x01B416 06:D406: B0 09     BCS $D411
C - - - - - 0x01B418 06:D408: A9 40     LDA #$40
C - - - - - 0x01B41A 06:D40A: 20 80 B4  JSR $B480
C - - - - - 0x01B41D 06:D40D: A9 04     LDA #$04
C - - - - - 0x01B41F 06:D40F: 85 30     STA ram_0030
C - - - - - 0x01B421 06:D411: A5 C8     LDA ram_00C8
C - - - - - 0x01B423 06:D413: D0 4E     BNE $D463
C - - - - - 0x01B425 06:D415: 24 41     BIT ram_0041
C - - - - - 0x01B427 06:D417: 30 4E     BMI $D467
C - - - - - 0x01B429 06:D419: 50 48     BVC $D463
C - - - - - 0x01B42B 06:D41B: A5 30     LDA ram_0030
C - - - - - 0x01B42D 06:D41D: F0 03     BEQ $D422
C - - - - - 0x01B42F 06:D41F: 4C 6D B5  JMP $B56D
C - - - - - 0x01B432 06:D422: A9 BF     LDA #$BF
C - - - - - 0x01B434 06:D424: 20 85 B4  JSR $B485
C - - - - - 0x01B437 06:D427: A5 41     LDA ram_0041
C - - - - - 0x01B439 06:D429: 29 0F     AND #$0F
C - - - - - 0x01B43B 06:D42B: A8        TAY
C - - - - - 0x01B43C 06:D42C: 84 11     STY ram_0011
C - - - - - 0x01B43E 06:D42E: 20 8A B4  JSR $B48A
C - - - - - 0x01B441 06:D431: A4 11     LDY ram_0011
C - - - - - 0x01B443 06:D433: C8        INY
C - - - - - 0x01B444 06:D434: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B446 06:D436: 20 8C B5  JSR $B58C
C - - - - - 0x01B449 06:D439: E6 41     INC ram_0041
C - - - - - 0x01B44B 06:D43B: E6 41     INC ram_0041
C - - - - - 0x01B44D 06:D43D: E6 41     INC ram_0041
C - - - - - 0x01B44F 06:D43F: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B451 06:D441: 48        PHA
C - - - - - 0x01B452 06:D442: 30 1B     BMI $D45F
C - - - - - 0x01B454 06:D444: A9 80     LDA #$80
C - - - - - 0x01B456 06:D446: 20 80 B4  JSR $B480
C - - - - - 0x01B459 06:D449: A5 B9     LDA ram_00B9
C - - - - - 0x01B45B 06:D44B: 29 03     AND #$03
C - - - - - 0x01B45D 06:D44D: D0 10     BNE $D45F
C - - - - - 0x01B45F 06:D44F: 20 0C B3  JSR $B30C
C - - - - - 0x01B462 06:D452: AA        TAX
C - - - - - 0x01B463 06:D453: A5 5F     LDA ram_005F
C - - - - - 0x01B465 06:D455: 1D 64 B4  ORA $B464,X
C - - - - - 0x01B468 06:D458: 85 5F     STA ram_005F
C - - - - - 0x01B46A 06:D45A: B6 60     LDX ram_0060,Y
C - - - - - 0x01B46C 06:D45C: 20 03 B3  JSR $B303
C - - - - - 0x01B46F 06:D45F: 68        PLA
C - - - - - 0x01B470 06:D460: 4C 34 B2  JMP $B234
C - - - - - 0x01B473 06:D463: 60        RTS
- D 1 - - - 0x01B474 06:D464: 0C        .byte $0C   ; 
- D 1 - - - 0x01B475 06:D465: 30        .byte $30   ; <0>
- D 1 - - - 0x01B476 06:D466: C0        .byte $C0   ; 
C - - - - - 0x01B477 06:D467: 20 3E FC  JSR $FC3E
C - - - - - 0x01B47A 06:D46A: F0 F7     BEQ $D463
C - - - - - 0x01B47C 06:D46C: A5 C8     LDA ram_00C8
C - - - - - 0x01B47E 06:D46E: D0 F3     BNE $D463
C - - - - - 0x01B480 06:D470: A5 39     LDA ram_0039
C - - - - - 0x01B482 06:D472: 30 EF     BMI $D463
C - - - - - 0x01B484 06:D474: A9 03     LDA #$03
C - - - - - 0x01B486 06:D476: 20 79 D0  JSR $D079
C - - - - - 0x01B489 06:D479: F0 E8     BEQ $D463
C - - - - - 0x01B48B 06:D47B: A9 E0     LDA #$E0
C - - - - - 0x01B48D 06:D47D: 85 39     STA ram_0039
C - - - - - 0x01B48F 06:D47F: 60        RTS
C - - - - - 0x01B490 06:D480: 05 41     ORA ram_0041
C - - - - - 0x01B492 06:D482: 85 41     STA ram_0041
C - - - - - 0x01B494 06:D484: 60        RTS
C - - - - - 0x01B495 06:D485: 25 41     AND ram_0041
C - - - - - 0x01B497 06:D487: 85 41     STA ram_0041
C - - - - - 0x01B499 06:D489: 60        RTS
C - - - - - 0x01B49A 06:D48A: A9 00     LDA #$00
C - - - - - 0x01B49C 06:D48C: 85 00     STA ram_0000
C - - - - - 0x01B49E 06:D48E: C0 00     CPY #$00
C - - - - - 0x01B4A0 06:D490: F0 06     BEQ $D498
C - - - - - 0x01B4A2 06:D492: A5 5F     LDA ram_005F
C - - - - - 0x01B4A4 06:D494: 29 03     AND #$03
C - - - - - 0x01B4A6 06:D496: 85 00     STA ram_0000
C - - - - - 0x01B4A8 06:D498: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B4AA 06:D49A: 18        CLC
C - - - - - 0x01B4AB 06:D49B: 65 00     ADC ram_0000
C - - - - - 0x01B4AD 06:D49D: 85 00     STA ram_0000
C - - - - - 0x01B4AF 06:D49F: 0A        ASL
C - - - - - 0x01B4B0 06:D4A0: 0A        ASL
C - - - - - 0x01B4B1 06:D4A1: 18        CLC
C - - - - - 0x01B4B2 06:D4A2: 65 00     ADC ram_0000
C - - - - - 0x01B4B4 06:D4A4: AA        TAX
C - - - - - 0x01B4B5 06:D4A5: BD 69 81  LDA $8169,X
C - - - - - 0x01B4B8 06:D4A8: 8D 0D 06  STA ram_060D
C - - - - - 0x01B4BB 06:D4AB: BD 6A 81  LDA $816A,X
C - - - - - 0x01B4BE 06:D4AE: 8D 0E 06  STA ram_060E
C - - - - - 0x01B4C1 06:D4B1: BD 6B 81  LDA $816B,X
C - - - - - 0x01B4C4 06:D4B4: 8D 0F 06  STA ram_060F
C - - - - - 0x01B4C7 06:D4B7: BD 6C 81  LDA $816C,X
C - - - - - 0x01B4CA 06:D4BA: 8D B6 06  STA ram_06B6
C - - - - - 0x01B4CD 06:D4BD: BD 68 81  LDA $8168,X
C - - - - - 0x01B4D0 06:D4C0: 0A        ASL
C - - - - - 0x01B4D1 06:D4C1: 0A        ASL
C - - - - - 0x01B4D2 06:D4C2: 85 00     STA ram_0000
C - - - - - 0x01B4D4 06:D4C4: 0A        ASL
C - - - - - 0x01B4D5 06:D4C5: 18        CLC
C - - - - - 0x01B4D6 06:D4C6: 65 00     ADC ram_0000
C - - - - - 0x01B4D8 06:D4C8: AA        TAX
C - - - - - 0x01B4D9 06:D4C9: A0 00     LDY #$00
C - - - - - 0x01B4DB 06:D4CB: BD 2A 83  LDA $832A,X
C - - - - - 0x01B4DE 06:D4CE: 99 33 06  STA ram_0633,Y
C - - - - - 0x01B4E1 06:D4D1: E8        INX
C - - - - - 0x01B4E2 06:D4D2: C8        INY
C - - - - - 0x01B4E3 06:D4D3: C0 0C     CPY #$0C
C - - - - - 0x01B4E5 06:D4D5: D0 F4     BNE $D4CB
C - - - - - 0x01B4E7 06:D4D7: A9 04     LDA #$04
C - - - - - 0x01B4E9 06:D4D9: 85 54     STA ram_0054
C - - - - - 0x01B4EB 06:D4DB: A9 A0     LDA #$A0
C - - - - - 0x01B4ED 06:D4DD: 8D 31 06  STA ram_0631
C - - - - - 0x01B4F0 06:D4E0: A9 63     LDA #$63
C - - - - - 0x01B4F2 06:D4E2: 8D 30 06  STA ram_0630
C - - - - - 0x01B4F5 06:D4E5: A9 0C     LDA #$0C
C - - - - - 0x01B4F7 06:D4E7: 8D 32 06  STA ram_0632
C - - - - - 0x01B4FA 06:D4EA: 60        RTS
C - - - - - 0x01B4FB 06:D4EB: A0 00     LDY #$00
C - - - - - 0x01B4FD 06:D4ED: B1 12     LDA (ram_0012),Y
C - - - - - 0x01B4FF 06:D4EF: 85 00     STA ram_0000
C - - - - - 0x01B501 06:D4F1: 0A        ASL
C - - - - - 0x01B502 06:D4F2: 0A        ASL
C - - - - - 0x01B503 06:D4F3: 18        CLC
C - - - - - 0x01B504 06:D4F4: 65 00     ADC ram_0000
C - - - - - 0x01B506 06:D4F6: AA        TAX
C - - - - - 0x01B507 06:D4F7: BD 4A 82  LDA $824A,X
C - - - - - 0x01B50A 06:D4FA: 8D 19 06  STA ram_0619
C - - - - - 0x01B50D 06:D4FD: 8D 1D 06  STA ram_061D
C - - - - - 0x01B510 06:D500: BD 4B 82  LDA $824B,X
C - - - - - 0x01B513 06:D503: 8D 1A 06  STA ram_061A
C - - - - - 0x01B516 06:D506: 8D 1E 06  STA ram_061E
C - - - - - 0x01B519 06:D509: BD 4C 82  LDA $824C,X
C - - - - - 0x01B51C 06:D50C: 8D 1B 06  STA ram_061B
C - - - - - 0x01B51F 06:D50F: 8D 1F 06  STA ram_061F
C - - - - - 0x01B522 06:D512: BD 4D 82  LDA $824D,X
C - - - - - 0x01B525 06:D515: 8D B3 06  STA ram_06B3
C - - - - - 0x01B528 06:D518: 8D B4 06  STA ram_06B4
C - - - - - 0x01B52B 06:D51B: EE B4 06  INC ram_06B4
C - - - - - 0x01B52E 06:D51E: BD 49 82  LDA $8249,X
C - - - - - 0x01B531 06:D521: 18        CLC
C - - - - - 0x01B532 06:D522: 69 84     ADC #$84
C - - - - - 0x01B534 06:D524: 85 01     STA ram_0001
C - - - - - 0x01B536 06:D526: 20 3E FC  JSR $FC3E
C - - - - - 0x01B539 06:D529: F0 0F     BEQ $D53A
C - - - - - 0x01B53B 06:D52B: AD D7 03  LDA ram_03D7
C - - - - - 0x01B53E 06:D52E: 6A        ROR
C - - - - - 0x01B53F 06:D52F: 90 04     BCC $D535
C - - - - - 0x01B541 06:D531: E6 01     INC ram_0001
C - - - - - 0x01B543 06:D533: E6 01     INC ram_0001
C - - - - - 0x01B545 06:D535: AD D8 03  LDA ram_03D8
C - - - - - 0x01B548 06:D538: D0 02     BNE $D53C
C - - - - - 0x01B54A 06:D53A: A9 80     LDA #$80
C - - - - - 0x01B54C 06:D53C: 85 03     STA ram_0003
C - - - - - 0x01B54E 06:D53E: A9 BF     LDA #$BF
C - - - - - 0x01B550 06:D540: 85 00     STA ram_0000
C - - - - - 0x01B552 06:D542: A9 62     LDA #$62
C - - - - - 0x01B554 06:D544: 85 02     STA ram_0002
C - - - - - 0x01B556 06:D546: 4C 33 CE  JMP $CE33
C - - - - - 0x01B559 06:D549: A9 04     LDA #$04
C - - - - - 0x01B55B 06:D54B: 24 41     BIT ram_0041
C - - - - - 0x01B55D 06:D54D: 30 08     BMI $D557
C - - - - - 0x01B55F 06:D54F: A9 02     LDA #$02
C - - - - - 0x01B561 06:D551: A4 30     LDY ram_0030
C - - - - - 0x01B563 06:D553: D0 02     BNE $D557
C - - - - - 0x01B565 06:D555: A9 00     LDA #$00
C - - - - - 0x01B567 06:D557: 18        CLC
C - - - - - 0x01B568 06:D558: 69 BA     ADC #$BA
C - - - - - 0x01B56A 06:D55A: AA        TAX
C - - - - - 0x01B56B 06:D55B: A9 80     LDA #$80
C - - - - - 0x01B56D 06:D55D: 85 01     STA ram_0001
C - - - - - 0x01B56F 06:D55F: A9 BF     LDA #$BF
C - - - - - 0x01B571 06:D561: 85 00     STA ram_0000
C - - - - - 0x01B573 06:D563: A9 62     LDA #$62
C - - - - - 0x01B575 06:D565: 85 45     STA ram_0045
C - - - - - 0x01B577 06:D567: 20 5A CE  JSR $CE5A
C - - - - - 0x01B57A 06:D56A: 4C 4F EF  JMP $EF4F
C D 1 - - - 0x01B57D 06:D56D: A9 01     LDA #$01
C - - - - - 0x01B57F 06:D56F: A2 14     LDX #$14
C - - - - - 0x01B581 06:D571: 8E 32 06  STX ram_0632
C - - - - - 0x01B584 06:D574: 9D 33 06  STA ram_0633,X
C - - - - - 0x01B587 06:D577: CA        DEX
C - - - - - 0x01B588 06:D578: 10 FA     BPL $D574
C - - - - - 0x01B58A 06:D57A: A9 20     LDA #$20
C - - - - - 0x01B58C 06:D57C: 8D 31 06  STA ram_0631
C - - - - - 0x01B58F 06:D57F: A4 30     LDY ram_0030
C - - - - - 0x01B591 06:D581: B9 87 B5  LDA $B587,Y
C - - - - - 0x01B594 06:D584: 8D 30 06  STA ram_0630
C - - - - - 0x01B597 06:D587: 60        RTS
- D 1 - - - 0x01B598 06:D588: C8        .byte $C8   ; 
- D 1 - - - 0x01B599 06:D589: A8        .byte $A8   ; 
- D 1 - - - 0x01B59A 06:D58A: 88        .byte $88   ; 
- D 1 - - - 0x01B59B 06:D58B: 68        .byte $68   ; <h>
C - - - - - 0x01B59C 06:D58C: 0A        ASL
C - - - - - 0x01B59D 06:D58D: AA        TAX
C - - - - - 0x01B59E 06:D58E: BD 9B B5  LDA $B59B,X
C - - - - - 0x01B5A1 06:D591: 85 02     STA ram_0002
C - - - - - 0x01B5A3 06:D593: BD 9C B5  LDA $B59C,X
C - - - - - 0x01B5A6 06:D596: 85 03     STA ram_0003
C - - - - - 0x01B5A8 06:D598: 6C 02 00  JMP (ram_0002)
- D 1 - - - 0x01B5AB 06:D59B: B4        .byte $B4   ; 
- D 1 - - - 0x01B5AC 06:D59C: B5        .byte $B5   ; 
- - - - - - 0x01B5AD 06:D59D: B3        .byte $B3   ; 
- - - - - - 0x01B5AE 06:D59E: B5        .byte $B5   ; 
- - - - - - 0x01B5AF 06:D59F: B2        .byte $B2   ; 
- - - - - - 0x01B5B0 06:D5A0: B5        .byte $B5   ; 
- - - - - - 0x01B5B1 06:D5A1: B1        .byte $B1   ; 
- - - - - - 0x01B5B2 06:D5A2: B5        .byte $B5   ; 
- D 1 - - - 0x01B5B3 06:D5A3: BE        .byte $BE   ; 
- D 1 - - - 0x01B5B4 06:D5A4: B5        .byte $B5   ; 
- D 1 - - - 0x01B5B5 06:D5A5: B6        .byte $B6   ; 
- D 1 - - - 0x01B5B6 06:D5A6: B5        .byte $B5   ; 
- D 1 - - - 0x01B5B7 06:D5A7: CA        .byte $CA   ; 
- D 1 - - - 0x01B5B8 06:D5A8: B5        .byte $B5   ; 
- D 1 - - - 0x01B5B9 06:D5A9: DD        .byte $DD   ; 
- D 1 - - - 0x01B5BA 06:D5AA: B5        .byte $B5   ; 
- D 1 - - - 0x01B5BB 06:D5AB: D9        .byte $D9   ; 
- D 1 - - - 0x01B5BC 06:D5AC: B5        .byte $B5   ; 
- D 1 - - - 0x01B5BD 06:D5AD: D5        .byte $D5   ; 
- D 1 - - - 0x01B5BE 06:D5AE: B5        .byte $B5   ; 
- D 1 - - - 0x01B5BF 06:D5AF: F2        .byte $F2   ; 
- D 1 - - - 0x01B5C0 06:D5B0: B5        .byte $B5   ; 
C - - - - - 0x01B5C1 06:D5B1: C8        INY
C - - - - - 0x01B5C2 06:D5B2: C8        INY
C D 1 - - - 0x01B5C3 06:D5B3: C8        INY
C - - - - - 0x01B5C4 06:D5B4: C8        INY
C - - - - - 0x01B5C5 06:D5B5: 60        RTS
C - - J - - 0x01B5C6 06:D5B6: AD 08 02  LDA ram_0208
C - - - - - 0x01B5C9 06:D5B9: F0 F9     BEQ $D5B4
C - - - - - 0x01B5CB 06:D5BB: CE 08 02  DEC ram_0208
C - - J - - 0x01B5CE 06:D5BE: A5 5F     LDA ram_005F
C - - - - - 0x01B5D0 06:D5C0: 29 03     AND #$03
C - - - - - 0x01B5D2 06:D5C2: F0 EF     BEQ $D5B3
C - - - - - 0x01B5D4 06:D5C4: C9 01     CMP #$01
C - - - - - 0x01B5D6 06:D5C6: F0 EA     BEQ $D5B2
C - - - - - 0x01B5D8 06:D5C8: D0 E7     BNE $D5B1
C - - J - - 0x01B5DA 06:D5CA: AD 08 02  LDA ram_0208
C - - - - - 0x01B5DD 06:D5CD: F0 E5     BEQ $D5B4
C - - - - - 0x01B5DF 06:D5CF: CE 08 02  DEC ram_0208
C - - - - - 0x01B5E2 06:D5D2: 4C B3 B5  JMP $B5B3
C - - J - - 0x01B5E5 06:D5D5: A2 4B     LDX #$4B
C - - - - - 0x01B5E7 06:D5D7: D0 06     BNE $D5DF
C - - J - - 0x01B5E9 06:D5D9: A2 44     LDX #$44
C - - - - - 0x01B5EB 06:D5DB: D0 02     BNE $D5DF
C - - J - - 0x01B5ED 06:D5DD: A2 32     LDX #$32
C - - - - - 0x01B5EF 06:D5DF: BD 00 05  LDA ram_0500,X
C - - - - - 0x01B5F2 06:D5E2: 29 08     AND #$08
C - - - - - 0x01B5F4 06:D5E4: F0 CE     BEQ $D5B4
C - - - - - 0x01B5F6 06:D5E6: E0 4B     CPX #$4B
C - - - - - 0x01B5F8 06:D5E8: D0 08     BNE $D5F2
C - - - - - 0x01B5FA 06:D5EA: AD 6D 05  LDA ram_056D
C - - - - - 0x01B5FD 06:D5ED: 29 1F     AND #$1F
C - - - - - 0x01B5FF 06:D5EF: 8D 6D 05  STA ram_056D
C - - J - - 0x01B602 06:D5F2: A6 BC     LDX ram_00BC
C - - - - - 0x01B604 06:D5F4: BD 00 05  LDA ram_0500,X
C - - - - - 0x01B607 06:D5F7: 09 08     ORA #$08
C - - - - - 0x01B609 06:D5F9: 9D 00 05  STA ram_0500,X
C - - - - - 0x01B60C 06:D5FC: D0 B5     BNE $D5B3
C - - - - - 0x01B60E 06:D5FE: A5 30     LDA ram_0030
C - - - - - 0x01B610 06:D600: F0 06     BEQ $D608
C - - - - - 0x01B612 06:D602: 20 6D B5  JSR $B56D
C - - - - - 0x01B615 06:D605: 4C A4 B7  JMP $B7A4
C - - - - - 0x01B618 06:D608: A5 D8     LDA ram_00D8
C - - - - - 0x01B61A 06:D60A: 29 1F     AND #$1F
C - - - - - 0x01B61C 06:D60C: 20 C1 D0  JSR $D0C1
- D 1 - I - 0x01B61F 06:D60F: 75        .byte $75   ; <u>
- D 1 - I - 0x01B620 06:D610: B7        .byte $B7   ; 
- D 1 - I - 0x01B621 06:D611: 62        .byte $62   ; <b>
- D 1 - I - 0x01B622 06:D612: B7        .byte $B7   ; 
- D 1 - I - 0x01B623 06:D613: 6D        .byte $6D   ; <m>
- D 1 - I - 0x01B624 06:D614: B7        .byte $B7   ; 
- D 1 - I - 0x01B625 06:D615: 5E        .byte $5E   ; 
- D 1 - I - 0x01B626 06:D616: B7        .byte $B7   ; 
- D 1 - I - 0x01B627 06:D617: 55        .byte $55   ; <U>
- D 1 - I - 0x01B628 06:D618: B6        .byte $B6   ; 
- D 1 - I - 0x01B629 06:D619: FE        .byte $FE   ; 
- D 1 - I - 0x01B62A 06:D61A: B6        .byte $B6   ; 
- D 1 - I - 0x01B62B 06:D61B: F4        .byte $F4   ; 
- D 1 - I - 0x01B62C 06:D61C: B6        .byte $B6   ; 
- D 1 - I - 0x01B62D 06:D61D: 62        .byte $62   ; <b>
- D 1 - I - 0x01B62E 06:D61E: B7        .byte $B7   ; 
- D 1 - I - 0x01B62F 06:D61F: EF        .byte $EF   ; 
- D 1 - I - 0x01B630 06:D620: B6        .byte $B6   ; 
- D 1 - I - 0x01B631 06:D621: 50        .byte $50   ; <P>
- D 1 - I - 0x01B632 06:D622: B7        .byte $B7   ; 
- D 1 - I - 0x01B633 06:D623: B2        .byte $B2   ; 
- D 1 - I - 0x01B634 06:D624: B6        .byte $B6   ; 
- D 1 - I - 0x01B635 06:D625: E0        .byte $E0   ; 
- D 1 - I - 0x01B636 06:D626: B6        .byte $B6   ; 
- D 1 - I - 0x01B637 06:D627: D4        .byte $D4   ; 
- D 1 - I - 0x01B638 06:D628: B6        .byte $B6   ; 
- D 1 - I - 0x01B639 06:D629: E0        .byte $E0   ; 
- D 1 - I - 0x01B63A 06:D62A: B6        .byte $B6   ; 
- - - - - - 0x01B63B 06:D62B: EE        .byte $EE   ; 
- - - - - - 0x01B63C 06:D62C: B6        .byte $B6   ; 
- D 1 - I - 0x01B63D 06:D62D: 32        .byte $32   ; <2>
- D 1 - I - 0x01B63E 06:D62E: B6        .byte $B6   ; 
- D 1 - I - 0x01B63F 06:D62F: 42        .byte $42   ; <B>
- D 1 - I - 0x01B640 06:D630: B6        .byte $B6   ; 
- - - - - - 0x01B641 06:D631: EE        .byte $EE   ; 
- - - - - - 0x01B642 06:D632: B6        .byte $B6   ; 
C - - - - - 0x01B643 06:D633: A9 7B     LDA #$7B
C - - - - - 0x01B645 06:D635: 2C F6 FF  BIT $FFF6
C - - - - - 0x01B648 06:D638: 70 02     BVS $D63C
- - - - - - 0x01B64A 06:D63A: A9        .byte $A9   ; 
- - - - - - 0x01B64B 06:D63B: 7D        .byte $7D   ; 
C - - - - - 0x01B64C 06:D63C: 20 34 B2  JSR $B234
C - - - - - 0x01B64F 06:D63F: E6 D8     INC ram_00D8
C - - - - - 0x01B651 06:D641: D0 0D     BNE $D650
C - - - - - 0x01B653 06:D643: A5 C8     LDA ram_00C8
C - - - - - 0x01B655 06:D645: D0 09     BNE $D650
C - - - - - 0x01B657 06:D647: A9 03     LDA #$03
C - - - - - 0x01B659 06:D649: 20 79 D0  JSR $D079
C - - - - - 0x01B65C 06:D64C: F0 02     BEQ $D650
C - - - - - 0x01B65E 06:D64E: E6 D8     INC ram_00D8
C - - - - - 0x01B660 06:D650: 20 F5 C4  JSR $C4F5
C - - - - - 0x01B663 06:D653: 4C 03 C8  JMP $C803
C - - - - - 0x01B666 06:D656: A5 C8     LDA ram_00C8
C - - - - - 0x01B668 06:D658: F0 03     BEQ $D65D
C - - - - - 0x01B66A 06:D65A: 4C A4 B7  JMP $B7A4
C - - - - - 0x01B66D 06:D65D: A9 55     LDA #$55
C - - - - - 0x01B66F 06:D65F: 20 20 C4  JSR $C420
C - - - - - 0x01B672 06:D662: A9 56     LDA #$56
C - - - - - 0x01B674 06:D664: 20 20 C4  JSR $C420
C - - - - - 0x01B677 06:D667: A9 57     LDA #$57
C - - - - - 0x01B679 06:D669: 20 20 C4  JSR $C420
C - - - - - 0x01B67C 06:D66C: A9 5F     LDA #$5F
C - - - - - 0x01B67E 06:D66E: 20 20 C4  JSR $C420
C - - - - - 0x01B681 06:D671: A9 60     LDA #$60
C - - - - - 0x01B683 06:D673: 20 20 C4  JSR $C420
C - - - - - 0x01B686 06:D676: A0 00     LDY #$00
C - - - - - 0x01B688 06:D678: A9 21     LDA #$21
C - - - - - 0x01B68A 06:D67A: 8D 31 06  STA ram_0631
C - - - - - 0x01B68D 06:D67D: A9 D2     LDA #$D2
C - - - - - 0x01B68F 06:D67F: 8D 30 06  STA ram_0630
C - - - - - 0x01B692 06:D682: B9 C0 BC  LDA $BCC0,Y
C - - - - - 0x01B695 06:D685: 99 33 06  STA ram_0633,Y
C - - - - - 0x01B698 06:D688: C8        INY
C - - - - - 0x01B699 06:D689: C0 04     CPY #$04
C - - - - - 0x01B69B 06:D68B: D0 F5     BNE $D682
C - - - - - 0x01B69D 06:D68D: A9 04     LDA #$04
C - - - - - 0x01B69F 06:D68F: 8D 32 06  STA ram_0632
C - - - - - 0x01B6A2 06:D692: A9 02     LDA #$02
C - - - - - 0x01B6A4 06:D694: 8D 44 03  STA ram_0344
C - - - - - 0x01B6A7 06:D697: A9 A0     LDA #$A0
C - - - - - 0x01B6A9 06:D699: 8D 38 03  STA ram_0338
C - - - - - 0x01B6AC 06:D69C: A9 00     LDA #$00
C - - - - - 0x01B6AE 06:D69E: 8D 3E 03  STA ram_033E
C - - - - - 0x01B6B1 06:D6A1: A9 80     LDA #$80
C - - - - - 0x01B6B3 06:D6A3: 8D 2C 03  STA ram_032C
C - - - - - 0x01B6B6 06:D6A6: A9 00     LDA #$00
C - - - - - 0x01B6B8 06:D6A8: 8D 56 03  STA ram_0356
C - - - - - 0x01B6BB 06:D6AB: A9 10     LDA #$10
C - - - - - 0x01B6BD 06:D6AD: 8D 4A 03  STA ram_034A
C - - - - - 0x01B6C0 06:D6B0: 4C 72 B7  JMP $B772
C - - - - - 0x01B6C3 06:D6B3: A5 C8     LDA ram_00C8
C - - - - - 0x01B6C5 06:D6B5: D0 38     BNE $D6EF
C - - - - - 0x01B6C7 06:D6B7: A9 5B     LDA #$5B
C - - - - - 0x01B6C9 06:D6B9: 20 20 C4  JSR $C420
C - - - - - 0x01B6CC 06:D6BC: A9 5C     LDA #$5C
C - - - - - 0x01B6CE 06:D6BE: 20 20 C4  JSR $C420
C - - - - - 0x01B6D1 06:D6C1: A9 5D     LDA #$5D
C - - - - - 0x01B6D3 06:D6C3: 20 20 C4  JSR $C420
C - - - - - 0x01B6D6 06:D6C6: A9 5E     LDA #$5E
C - - - - - 0x01B6D8 06:D6C8: 20 20 C4  JSR $C420
C - - - - - 0x01B6DB 06:D6CB: A5 5F     LDA ram_005F
C - - - - - 0x01B6DD 06:D6CD: 29 03     AND #$03
C - - - - - 0x01B6DF 06:D6CF: A8        TAY
C - - - - - 0x01B6E0 06:D6D0: B9 C4 BC  LDA $BCC4,Y
C - - - - - 0x01B6E3 06:D6D3: D0 06     BNE $D6DB
C - - - - - 0x01B6E5 06:D6D5: A5 C8     LDA ram_00C8
C - - - - - 0x01B6E7 06:D6D7: D0 16     BNE $D6EF
C - - - - - 0x01B6E9 06:D6D9: A9 7C     LDA #$7C
C - - - - - 0x01B6EB 06:D6DB: 20 34 B2  JSR $B234
C - - - - - 0x01B6EE 06:D6DE: E6 D8     INC ram_00D8
C - - - - - 0x01B6F0 06:D6E0: 60        RTS
C - - - - - 0x01B6F1 06:D6E1: A5 C8     LDA ram_00C8
C - - - - - 0x01B6F3 06:D6E3: D0 0A     BNE $D6EF
C - - - - - 0x01B6F5 06:D6E5: A9 03     LDA #$03
C - - - - - 0x01B6F7 06:D6E7: 20 79 D0  JSR $D079
C - - - - - 0x01B6FA 06:D6EA: D0 01     BNE $D6ED
C - - - - - 0x01B6FC 06:D6EC: 60        RTS
C - - - - - 0x01B6FD 06:D6ED: E6 D8     INC ram_00D8
C - - - - - 0x01B6FF 06:D6EF: 60        RTS
C - - - - - 0x01B700 06:D6F0: A9 06     LDA #$06
C - - - - - 0x01B702 06:D6F2: 4C 8D B7  JMP $B78D
C - - - - - 0x01B705 06:D6F5: A0 00     LDY #$00
C - - - - - 0x01B707 06:D6F7: 20 AC B8  JSR $B8AC
C - - - - - 0x01B70A 06:D6FA: A9 04     LDA #$04
C - - - - - 0x01B70C 06:D6FC: 4C 8D B7  JMP $B78D
C - - - - - 0x01B70F 06:D6FF: A5 2C     LDA ram_002C
C - - - - - 0x01B711 06:D701: 29 7F     AND #$7F
C - - - - - 0x01B713 06:D703: D0 05     BNE $D70A
C - - - - - 0x01B715 06:D705: A9 60     LDA #$60
C - - - - - 0x01B717 06:D707: 20 20 C4  JSR $C420
C - - - - - 0x01B71A 06:D70A: A5 2C     LDA ram_002C
C - - - - - 0x01B71C 06:D70C: 29 03     AND #$03
C - - - - - 0x01B71E 06:D70E: 0A        ASL
C - - - - - 0x01B71F 06:D70F: 0A        ASL
C - - - - - 0x01B720 06:D710: 0A        ASL
C - - - - - 0x01B721 06:D711: A8        TAY
C - - - - - 0x01B722 06:D712: 20 AC B8  JSR $B8AC
C - - - - - 0x01B725 06:D715: 20 4D B8  JSR $B84D
C - - - - - 0x01B728 06:D718: A5 2C     LDA ram_002C
C - - - - - 0x01B72A 06:D71A: 29 03     AND #$03
C - - - - - 0x01B72C 06:D71C: D0 03     BNE $D721
C - - - - - 0x01B72E 06:D71E: 20 80 B8  JSR $B880
C - - - - - 0x01B731 06:D721: A9 07     LDA #$07
C - - - - - 0x01B733 06:D723: 25 2C     AND ram_002C
C - - - - - 0x01B735 06:D725: D0 0F     BNE $D736
C - - - - - 0x01B737 06:D727: EE 44 03  INC ram_0344
C - - - - - 0x01B73A 06:D72A: AD 44 03  LDA ram_0344
C - - - - - 0x01B73D 06:D72D: C9 03     CMP #$03
C - - - - - 0x01B73F 06:D72F: 90 05     BCC $D736
C - - - - - 0x01B741 06:D731: A9 00     LDA #$00
C - - - - - 0x01B743 06:D733: 8D 44 03  STA ram_0344
C - - - - - 0x01B746 06:D736: AD 2C 03  LDA ram_032C
C - - - - - 0x01B749 06:D739: 85 00     STA ram_0000
C - - - - - 0x01B74B 06:D73B: AD 38 03  LDA ram_0338
C - - - - - 0x01B74E 06:D73E: 85 03     STA ram_0003
C - - - - - 0x01B750 06:D740: AD 44 03  LDA ram_0344
C - - - - - 0x01B753 06:D743: 0A        ASL
C - - - - - 0x01B754 06:D744: 18        CLC
C - - - - - 0x01B755 06:D745: 69 04     ADC #$04
C - - - - - 0x01B757 06:D747: 20 B7 B7  JSR $B7B7
C - - - - - 0x01B75A 06:D74A: AD 3E 03  LDA ram_033E
C - - - - - 0x01B75D 06:D74D: F0 55     BEQ $D7A4
C - - - - - 0x01B75F 06:D74F: D0 1D     BNE $D76E
C - - - - - 0x01B761 06:D751: A5 C8     LDA ram_00C8
C - - - - - 0x01B763 06:D753: D0 4F     BNE $D7A4
C - - - - - 0x01B765 06:D755: A9 03     LDA #$03
C - - - - - 0x01B767 06:D757: 20 79 D0  JSR $D079
C - - - - - 0x01B76A 06:D75A: F0 48     BEQ $D7A4
C - - - - - 0x01B76C 06:D75C: 4C 72 B7  JMP $B772
C - - - - - 0x01B76F 06:D75F: A9 02     LDA #$02
C - - - - - 0x01B771 06:D761: D0 2A     BNE $D78D
C - - - - - 0x01B773 06:D763: A5 C8     LDA ram_00C8
C - - - - - 0x01B775 06:D765: D0 3D     BNE $D7A4
C - - - - - 0x01B777 06:D767: A9 03     LDA #$03
C - - - - - 0x01B779 06:D769: 20 79 D0  JSR $D079
C - - - - - 0x01B77C 06:D76C: F0 36     BEQ $D7A4
C - - - - - 0x01B77E 06:D76E: A9 05     LDA #$05
C - - - - - 0x01B780 06:D770: 85 30     STA ram_0030
C D 1 - - - 0x01B782 06:D772: E6 D8     INC ram_00D8
C - - - - - 0x01B784 06:D774: D0 2E     BNE $D7A4
C - - - - - 0x01B786 06:D776: A2 07     LDX #$07
C - - - - - 0x01B788 06:D778: BD C7 BC  LDA $BCC7,X
C - - - - - 0x01B78B 06:D77B: 9D 18 06  STA ram_0618,X
C - - - - - 0x01B78E 06:D77E: CA        DEX
C - - - - - 0x01B78F 06:D77F: D0 F7     BNE $D778
C - - - - - 0x01B791 06:D781: A9 04     LDA #$04
C - - - - - 0x01B793 06:D783: 8D B3 06  STA ram_06B3
C - - - - - 0x01B796 06:D786: A9 05     LDA #$05
C - - - - - 0x01B798 06:D788: 8D B4 06  STA ram_06B4
C - - - - - 0x01B79B 06:D78B: A9 00     LDA #$00
C D 1 - - - 0x01B79D 06:D78D: 20 C3 B7  JSR $B7C3
C - - - - - 0x01B7A0 06:D790: B9 A9 BC  LDA $BCA9,Y
C - - - - - 0x01B7A3 06:D793: 20 34 B2  JSR $B234
C - - - - - 0x01B7A6 06:D796: 20 4F EF  JSR $EF4F
C - - - - - 0x01B7A9 06:D799: A4 11     LDY ram_0011
C - - - - - 0x01B7AB 06:D79B: A9 00     LDA #$00
C - - - - - 0x01B7AD 06:D79D: 85 00     STA ram_0000
C - - - - - 0x01B7AF 06:D79F: 20 98 B4  JSR $B498
C - - - - - 0x01B7B2 06:D7A2: E6 D8     INC ram_00D8
C D 1 - - - 0x01B7B4 06:D7A4: A9 BF     LDA #$BF
C - - - - - 0x01B7B6 06:D7A6: 85 00     STA ram_0000
C - - - - - 0x01B7B8 06:D7A8: A9 B0     LDA #$B0
C - - - - - 0x01B7BA 06:D7AA: 85 03     STA ram_0003
C - - - - - 0x01B7BC 06:D7AC: A9 00     LDA #$00
C - - - - - 0x01B7BE 06:D7AE: 20 B7 B7  JSR $B7B7
C - - - - - 0x01B7C1 06:D7B1: A9 D0     LDA #$D0
C - - - - - 0x01B7C3 06:D7B3: 85 03     STA ram_0003
C - - - - - 0x01B7C5 06:D7B5: A9 02     LDA #$02
C - - - - - 0x01B7C7 06:D7B7: 18        CLC
C - - - - - 0x01B7C8 06:D7B8: 69 C0     ADC #$C0
C - - - - - 0x01B7CA 06:D7BA: 85 01     STA ram_0001
C - - - - - 0x01B7CC 06:D7BC: A9 20     LDA #$20
C - - - - - 0x01B7CE 06:D7BE: 85 02     STA ram_0002
C - - - - - 0x01B7D0 06:D7C0: 4C 33 CE  JMP $CE33
C - - - - - 0x01B7D3 06:D7C3: 85 00     STA ram_0000
C - - - - - 0x01B7D5 06:D7C5: A9 A8     LDA #$A8
C - - - - - 0x01B7D7 06:D7C7: 85 12     STA ram_0012
C - - - - - 0x01B7D9 06:D7C9: A9 BC     LDA #$BC
C - - - - - 0x01B7DB 06:D7CB: 85 13     STA ram_0013
C - - - - - 0x01B7DD 06:D7CD: A5 5F     LDA ram_005F
C - - - - - 0x01B7DF 06:D7CF: 29 03     AND #$03
C - - - - - 0x01B7E1 06:D7D1: 0A        ASL
C - - - - - 0x01B7E2 06:D7D2: 0A        ASL
C - - - - - 0x01B7E3 06:D7D3: 0A        ASL
C - - - - - 0x01B7E4 06:D7D4: 18        CLC
C - - - - - 0x01B7E5 06:D7D5: 65 00     ADC ram_0000
C - - - - - 0x01B7E7 06:D7D7: A8        TAY
C - - - - - 0x01B7E8 06:D7D8: 84 11     STY ram_0011
C - - - - - 0x01B7EA 06:D7DA: 60        RTS
C - - - - - 0x01B7EB 06:D7DB: 20 02 C4  JSR $C402
C - - - - - 0x01B7EE 06:D7DE: 20 1D C3  JSR $C31D
C - - - - - 0x01B7F1 06:D7E1: 20 58 C3  JSR $C358
C - - - - - 0x01B7F4 06:D7E4: 20 46 EF  JSR $EF46
C - - - - - 0x01B7F7 06:D7E7: A2 05     LDX #$05
C - - - - - 0x01B7F9 06:D7E9: BD CF BC  LDA $BCCF,X
C - - - - - 0x01B7FC 06:D7EC: 9D AF 06  STA ram_06AF,X
C - - - - - 0x01B7FF 06:D7EF: CA        DEX
C - - - - - 0x01B800 06:D7F0: 10 F7     BPL $D7E9
C - - - - - 0x01B802 06:D7F2: 20 BA BA  JSR $BABA
C - - - - - 0x01B805 06:D7F5: A9 5E     LDA #$5E
C - - - - - 0x01B807 06:D7F7: 18        CLC
C - - - - - 0x01B808 06:D7F8: 69 54     ADC #$54
C - - - - - 0x01B80A 06:D7FA: 85 12     STA ram_0012
C - - - - - 0x01B80C 06:D7FC: A9 80     LDA #$80
C - - - - - 0x01B80E 06:D7FE: 69 00     ADC #$00
C - - - - - 0x01B810 06:D800: 85 13     STA ram_0013
C - - - - - 0x01B812 06:D802: AD 02 20  LDA $2002
C - - - - - 0x01B815 06:D805: 20 CB BA  JSR $BACB
C - - - - - 0x01B818 06:D808: A9 10     LDA #$10
C - - - - - 0x01B81A 06:D80A: 85 26     STA ram_0026
C - - - - - 0x01B81C 06:D80C: 60        RTS
C - - - - - 0x01B81D 06:D80D: 20 2F C6  JSR $C62F
C - - - - - 0x01B820 06:D810: A9 39     LDA #$39
C - - - - - 0x01B822 06:D812: 18        CLC
C - - - - - 0x01B823 06:D813: 69 23     ADC #$23
C - - - - - 0x01B825 06:D815: 85 12     STA ram_0012
C - - - - - 0x01B827 06:D817: A9 81     LDA #$81
C - - - - - 0x01B829 06:D819: 69 00     ADC #$00
C - - - - - 0x01B82B 06:D81B: 85 13     STA ram_0013
C - - - - - 0x01B82D 06:D81D: A9 02     LDA #$02
C - - - - - 0x01B82F 06:D81F: 85 00     STA ram_0000
C - - - - - 0x01B831 06:D821: 20 68 C6  JSR $C668
C - - - - - 0x01B834 06:D824: 20 52 C6  JSR $C652
C - - - - - 0x01B837 06:D827: A9 21     LDA #$21
C - - - - - 0x01B839 06:D829: 8D 06 20  STA $2006
C - - - - - 0x01B83C 06:D82C: A9 94     LDA #$94
C - - - - - 0x01B83E 06:D82E: 8D 06 20  STA $2006
C - - - - - 0x01B841 06:D831: A9 00     LDA #$00
C - - - - - 0x01B843 06:D833: 85 08     STA ram_0008
C - - - - - 0x01B845 06:D835: A9 70     LDA #$70
C - - - - - 0x01B847 06:D837: 85 09     STA ram_0009
C - - - - - 0x01B849 06:D839: A2 99     LDX #$99
C - - - - - 0x01B84B 06:D83B: 20 24 C9  JSR $C924
C - - - - - 0x01B84E 06:D83E: A9 22     LDA #$22
C - - - - - 0x01B850 06:D840: 8D 06 20  STA $2006
C - - - - - 0x01B853 06:D843: A9 14     LDA #$14
C - - - - - 0x01B855 06:D845: 8D 06 20  STA $2006
C - - - - - 0x01B858 06:D848: A2 56     LDX #$56
C - - - - - 0x01B85A 06:D84A: 4C 24 C9  JMP $C924
C - - - - - 0x01B85D 06:D84D: A9 D5     LDA #$D5
C - - - - - 0x01B85F 06:D84F: 85 00     STA ram_0000
C - - - - - 0x01B861 06:D851: A9 BC     LDA #$BC
C - - - - - 0x01B863 06:D853: 85 01     STA ram_0001
C - - - - - 0x01B865 06:D855: CE 4A 03  DEC ram_034A
C - - - - - 0x01B868 06:D858: D0 14     BNE $D86E
C - - - - - 0x01B86A 06:D85A: EE 56 03  INC ram_0356
C - - - - - 0x01B86D 06:D85D: AD 56 03  LDA ram_0356
C - - - - - 0x01B870 06:D860: 29 0F     AND #$0F
C - - - - - 0x01B872 06:D862: 8D 56 03  STA ram_0356
C - - - - - 0x01B875 06:D865: 18        CLC
C - - - - - 0x01B876 06:D866: 69 10     ADC #$10
C - - - - - 0x01B878 06:D868: A8        TAY
C - - - - - 0x01B879 06:D869: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B87B 06:D86B: 8D 4A 03  STA ram_034A
C - - - - - 0x01B87E 06:D86E: A9 30     LDA #$30
C - - - - - 0x01B880 06:D870: CD 2C 03  CMP ram_032C
C - - - - - 0x01B883 06:D873: B0 07     BCS $D87C
C - - - - - 0x01B885 06:D875: A9 BF     LDA #$BF
C - - - - - 0x01B887 06:D877: CD 2C 03  CMP ram_032C
C - - - - - 0x01B88A 06:D87A: B0 03     BCS $D87F
- - - - - - 0x01B88C 06:D87C: 8D        .byte $8D   ; 
- - - - - - 0x01B88D 06:D87D: 2C        .byte $2C   ; 
- - - - - - 0x01B88E 06:D87E: 03        .byte $03   ; 
C - - - - - 0x01B88F 06:D87F: 60        RTS
C - - - - - 0x01B890 06:D880: AC 56 03  LDY ram_0356
C - - - - - 0x01B893 06:D883: B1 00     LDA (ram_0000),Y
C - - - - - 0x01B895 06:D885: 0A        ASL
C - - - - - 0x01B896 06:D886: A8        TAY
C - - - - - 0x01B897 06:D887: AD 2C 03  LDA ram_032C
C - - - - - 0x01B89A 06:D88A: 18        CLC
C - - - - - 0x01B89B 06:D88B: 79 D4 DA  ADC $DAD4,Y
C - - - - - 0x01B89E 06:D88E: 8D 2C 03  STA ram_032C
C - - - - - 0x01B8A1 06:D891: A9 00     LDA #$00
C - - - - - 0x01B8A3 06:D893: 85 02     STA ram_0002
C - - - - - 0x01B8A5 06:D895: B9 D5 DA  LDA $DAD5,Y
C - - - - - 0x01B8A8 06:D898: 10 02     BPL $D89C
C - - - - - 0x01B8AA 06:D89A: C6 02     DEC ram_0002
C - - - - - 0x01B8AC 06:D89C: 18        CLC
C - - - - - 0x01B8AD 06:D89D: 6D 38 03  ADC ram_0338
C - - - - - 0x01B8B0 06:D8A0: 8D 38 03  STA ram_0338
C - - - - - 0x01B8B3 06:D8A3: AD 3E 03  LDA ram_033E
C - - - - - 0x01B8B6 06:D8A6: 65 02     ADC ram_0002
C - - - - - 0x01B8B8 06:D8A8: 8D 3E 03  STA ram_033E
C - - - - - 0x01B8BB 06:D8AB: 60        RTS
C - - - - - 0x01B8BC 06:D8AC: A2 00     LDX #$00
C - - - - - 0x01B8BE 06:D8AE: B9 88 BC  LDA $BC88,Y
C - - - - - 0x01B8C1 06:D8B1: 9D 04 06  STA ram_0604,X
C - - - - - 0x01B8C4 06:D8B4: C8        INY
C - - - - - 0x01B8C5 06:D8B5: E8        INX
C - - - - - 0x01B8C6 06:D8B6: E0 08     CPX #$08
C - - - - - 0x01B8C8 06:D8B8: D0 F4     BNE $D8AE
C - - - - - 0x01B8CA 06:D8BA: 60        RTS
- - - - - - 0x01B8CB 06:D8BB: 07        .byte $07   ; 
- - - - - - 0x01B8CC 06:D8BC: 17        .byte $17   ; 
- - - - - - 0x01B8CD 06:D8BD: 27        .byte $27   ; 
- - - - - - 0x01B8CE 06:D8BE: 37        .byte $37   ; <7>
- - - - - - 0x01B8CF 06:D8BF: 80        .byte $80   ; 
- - - - - - 0x01B8D0 06:D8C0: 00        .byte $00   ; 
- - - - - - 0x01B8D1 06:D8C1: 81        .byte $81   ; 
- - - - - - 0x01B8D2 06:D8C2: 00        .byte $00   ; 
- - - - - - 0x01B8D3 06:D8C3: 82        .byte $82   ; 
- - - - - - 0x01B8D4 06:D8C4: 00        .byte $00   ; 
- - - - - - 0x01B8D5 06:D8C5: 81        .byte $81   ; 
- - - - - - 0x01B8D6 06:D8C6: 80        .byte $80   ; 
C - - - - - 0x01B8D7 06:D8C7: A5 37     LDA ram_0037
C - - - - - 0x01B8D9 06:D8C9: 10 01     BPL $D8CC
C - - - - - 0x01B8DB 06:D8CB: 60        RTS
C - - - - - 0x01B8DC 06:D8CC: 20 02 C4  JSR $C402
C - - - - - 0x01B8DF 06:D8CF: A9 00     LDA #$00
C - - - - - 0x01B8E1 06:D8D1: 20 20 C4  JSR $C420
C - - - - - 0x01B8E4 06:D8D4: A9 01     LDA #$01
C - - - - - 0x01B8E6 06:D8D6: 20 20 C4  JSR $C420
C - - - - - 0x01B8E9 06:D8D9: A9 02     LDA #$02
C - - - - - 0x01B8EB 06:D8DB: 20 20 C4  JSR $C420
C - - - - - 0x01B8EE 06:D8DE: A9 03     LDA #$03
C - - - - - 0x01B8F0 06:D8E0: 20 20 C4  JSR $C420
C - - - - - 0x01B8F3 06:D8E3: 20 1D C3  JSR $C31D
C - - - - - 0x01B8F6 06:D8E6: 20 58 C3  JSR $C358
C - - - - - 0x01B8F9 06:D8E9: 20 46 EF  JSR $EF46
C - - - - - 0x01B8FC 06:D8EC: A2 05     LDX #$05
C - - - - - 0x01B8FE 06:D8EE: BD BE 80  LDA $80BE,X
C - - - - - 0x01B901 06:D8F1: 9D AF 06  STA ram_06AF,X
C - - - - - 0x01B904 06:D8F4: CA        DEX
C - - - - - 0x01B905 06:D8F5: 10 F7     BPL $D8EE
C - - - - - 0x01B907 06:D8F7: A2 1F     LDX #$1F
C - - - - - 0x01B909 06:D8F9: BD C4 80  LDA $80C4,X
C - - - - - 0x01B90C 06:D8FC: 9D 00 06  STA ram_0600,X
C - - - - - 0x01B90F 06:D8FF: CA        DEX
C - - - - - 0x01B910 06:D900: 10 F7     BPL $D8F9
C - - - - - 0x01B912 06:D902: A9 E4     LDA #$E4
C - - - - - 0x01B914 06:D904: 85 12     STA ram_0012
C - - - - - 0x01B916 06:D906: A9 80     LDA #$80
C - - - - - 0x01B918 06:D908: 85 13     STA ram_0013
C - - - - - 0x01B91A 06:D90A: A9 00     LDA #$00
C - - - - - 0x01B91C 06:D90C: 85 D6     STA ram_00D6
C - - - - - 0x01B91E 06:D90E: A2 0F     LDX #$0F
C - - - - - 0x01B920 06:D910: AD 09 01  LDA ram_0109
C - - - - - 0x01B923 06:D913: F0 01     BEQ $D916
C - - - - - 0x01B925 06:D915: E8        INX
C - - - - - 0x01B926 06:D916: 86 00     STX ram_0000
C - - - - - 0x01B928 06:D918: A5 00     LDA ram_0000
C - - - - - 0x01B92A 06:D91A: 20 86 D0  JSR $D086
C - - - - - 0x01B92D 06:D91D: C6 00     DEC ram_0000
C - - - - - 0x01B92F 06:D91F: 10 F7     BPL $D918
C - - - - - 0x01B931 06:D921: A9 20     LDA #$20
C - - - - - 0x01B933 06:D923: 8D 06 20  STA $2006
C - - - - - 0x01B936 06:D926: A9 84     LDA #$84
C - - - - - 0x01B938 06:D928: 8D 06 20  STA $2006
C - - - - - 0x01B93B 06:D92B: A2 56     LDX #$56
C - - - - - 0x01B93D 06:D92D: 20 1C C9  JSR $C91C
C - - - - - 0x01B940 06:D930: A9 20     LDA #$20
C - - - - - 0x01B942 06:D932: 8D 06 20  STA $2006
C - - - - - 0x01B945 06:D935: A9 8E     LDA #$8E
C - - - - - 0x01B947 06:D937: 8D 06 20  STA $2006
C - - - - - 0x01B94A 06:D93A: A2 99     LDX #$99
C - - - - - 0x01B94C 06:D93C: 20 1C C9  JSR $C91C
C - - - - - 0x01B94F 06:D93F: A9 80     LDA #$80
C - - - - - 0x01B951 06:D941: 85 3B     STA ram_003B
C - - - - - 0x01B953 06:D943: A9 00     LDA #$00
C - - - - - 0x01B955 06:D945: 85 B1     STA ram_00B1
C - - - - - 0x01B957 06:D947: 85 B2     STA ram_00B2
C - - - - - 0x01B959 06:D949: 85 B3     STA ram_00B3
C - - - - - 0x01B95B 06:D94B: 85 B4     STA ram_00B4
C - - - - - 0x01B95D 06:D94D: 85 2C     STA ram_002C
C - - - - - 0x01B95F 06:D94F: 85 2D     STA ram_002D
C - - - - - 0x01B961 06:D951: 85 19     STA ram_0019
C - - - - - 0x01B963 06:D953: 8D 31 06  STA ram_0631
C - - - - - 0x01B966 06:D956: 8D 7B 06  STA ram_067B
C - - - - - 0x01B969 06:D959: 85 29     STA ram_0029
C - - - - - 0x01B96B 06:D95B: 85 27     STA ram_0027
C - - - - - 0x01B96D 06:D95D: 85 3D     STA ram_003D
C - - - - - 0x01B96F 06:D95F: A9 8F     LDA #$8F
C - - - - - 0x01B971 06:D961: 85 AD     STA ram_00AD
C - - - - - 0x01B973 06:D963: 85 1C     STA ram_001C
C - - - - - 0x01B975 06:D965: 20 1E C5  JSR $C51E
C - - - - - 0x01B978 06:D968: A5 1C     LDA ram_001C
C - - - - - 0x01B97A 06:D96A: 29 08     AND #$08
C - - - - - 0x01B97C 06:D96C: D0 FA     BNE $D968
C - - - - - 0x01B97E 06:D96E: 85 1C     STA ram_001C
C - - - - - 0x01B980 06:D970: 85 3D     STA ram_003D
C - - - - - 0x01B982 06:D972: A9 00     LDA #$00
C - - - - - 0x01B984 06:D974: 85 2C     STA ram_002C
C - - - - - 0x01B986 06:D976: 85 2D     STA ram_002D
C - - - - - 0x01B988 06:D978: A5 2D     LDA ram_002D
C - - - - - 0x01B98A 06:D97A: C9 02     CMP #$02
C - - - - - 0x01B98C 06:D97C: 90 06     BCC $D984
C - - - - - 0x01B98E 06:D97E: A5 2C     LDA ram_002C
C - - - - - 0x01B990 06:D980: C9 40     CMP #$40
C - - - - - 0x01B992 06:D982: B0 45     BCS $D9C9
C - - - - - 0x01B994 06:D984: A5 3D     LDA ram_003D
C - - - - - 0x01B996 06:D986: F0 F0     BEQ $D978
C - - - - - 0x01B998 06:D988: 20 05 C3  JSR $C305
C - - - - - 0x01B99B 06:D98B: A9 00     LDA #$00
C - - - - - 0x01B99D 06:D98D: A8        TAY
C - - - - - 0x01B99E 06:D98E: 85 37     STA ram_0037
C - - - - - 0x01B9A0 06:D990: 85 B6     STA ram_00B6
C - - - - - 0x01B9A2 06:D992: 85 B7     STA ram_00B7
C - - - - - 0x01B9A4 06:D994: 85 39     STA ram_0039
C - - - - - 0x01B9A6 06:D996: A6 AD     LDX ram_00AD
C - - - - - 0x01B9A8 06:D998: E0 9F     CPX #$9F
C - - - - - 0x01B9AA 06:D99A: F0 07     BEQ $D9A3
C - - - - - 0x01B9AC 06:D99C: A5 B1     LDA ram_00B1
C - - - - - 0x01B9AE 06:D99E: F0 09     BEQ $D9A9
- - - - - - 0x01B9B0 06:D9A0: A8        .byte $A8   ; 
- - - - - - 0x01B9B1 06:D9A1: D0        .byte $D0   ; 
- - - - - - 0x01B9B2 06:D9A2: 03        .byte $03   ; 
C - - - - - 0x01B9B3 06:D9A3: AC 09 01  LDY ram_0109
C - - - - - 0x01B9B6 06:D9A6: B9 CA C1  LDA $C1CA,Y
C - - - - - 0x01B9B9 06:D9A9: 85 C4     STA ram_00C4
C - - - - - 0x01B9BB 06:D9AB: 84 5E     STY ram_005E
C - - - - - 0x01B9BD 06:D9AD: A9 FC     LDA #$FC
C - - - - - 0x01B9BF 06:D9AF: 85 D4     STA ram_00D4
C - - - - - 0x01B9C1 06:D9B1: 20 04 C9  JSR $C904
C - - - - - 0x01B9C4 06:D9B4: A9 10     LDA #$10
C - - - - - 0x01B9C6 06:D9B6: 85 3B     STA ram_003B
C - - - - - 0x01B9C8 06:D9B8: 60        RTS
- D 1 - - - 0x01B9C9 06:D9B9: 00        .byte $00   ; 
- D 1 - - - 0x01B9CA 06:D9BA: 42        .byte $42   ; <B>
- D 1 - - - 0x01B9CB 06:D9BB: 06        .byte $06   ; 
- D 1 - - - 0x01B9CC 06:D9BC: 10        .byte $10   ; 
- D 1 - - - 0x01B9CD 06:D9BD: 0F        .byte $0F   ; 
- D 1 - - - 0x01B9CE 06:D9BE: 07        .byte $07   ; 
- D 1 - - - 0x01B9CF 06:D9BF: 19        .byte $19   ; 
- D 1 - - - 0x01B9D0 06:D9C0: 03        .byte $03   ; 
- D 1 - - - 0x01B9D1 06:D9C1: 00        .byte $00   ; 
- D 1 - - - 0x01B9D2 06:D9C2: 03        .byte $03   ; 
- D 1 - - - 0x01B9D3 06:D9C3: 01        .byte $01   ; 
- D 1 - - - 0x01B9D4 06:D9C4: 02        .byte $02   ; 
- D 1 - - - 0x01B9D5 06:D9C5: 02        .byte $02   ; 
- D 1 - - - 0x01B9D6 06:D9C6: 01        .byte $01   ; 
- D 1 - - - 0x01B9D7 06:D9C7: 03        .byte $03   ; 
- D 1 - - - 0x01B9D8 06:D9C8: 00        .byte $00   ; 
C - - - - - 0x01B9D9 06:D9C9: 20 13 C3  JSR $C313
C - - - - - 0x01B9DC 06:D9CC: 20 05 C3  JSR $C305
C - - - - - 0x01B9DF 06:D9CF: A9 FF     LDA #$FF
C - - - - - 0x01B9E1 06:D9D1: 85 37     STA ram_0037
C - - - - - 0x01B9E3 06:D9D3: A9 01     LDA #$01
C - - - - - 0x01B9E5 06:D9D5: 85 24     STA ram_0024
C - - - - - 0x01B9E7 06:D9D7: 4C 02 C4  JMP $C402
C - - - - - 0x01B9EA 06:D9DA: A5 37     LDA ram_0037
C - - - - - 0x01B9EC 06:D9DC: 30 01     BMI $D9DF
C - - - - - 0x01B9EE 06:D9DE: 60        RTS
C - - - - - 0x01B9EF 06:D9DF: 20 02 C4  JSR $C402
C - - - - - 0x01B9F2 06:D9E2: 20 1D C3  JSR $C31D
C - - - - - 0x01B9F5 06:D9E5: 20 58 C3  JSR $C358
C - - - - - 0x01B9F8 06:D9E8: 20 46 EF  JSR $EF46
C - - - - - 0x01B9FB 06:D9EB: A2 05     LDX #$05
C - - - - - 0x01B9FD 06:D9ED: BD 14 80  LDA $8014,X
C - - - - - 0x01BA00 06:D9F0: 9D AF 06  STA ram_06AF,X
C - - - - - 0x01BA03 06:D9F3: CA        DEX
C - - - - - 0x01BA04 06:D9F4: 10 F7     BPL $D9ED
C - - - - - 0x01BA06 06:D9F6: A5 24     LDA ram_0024
C - - - - - 0x01BA08 06:D9F8: D0 32     BNE $DA2C
C - - - - - 0x01BA0A 06:D9FA: A2 36     LDX #$36
C - - - - - 0x01BA0C 06:D9FC: 8E B3 06  STX ram_06B3
C - - - - - 0x01BA0F 06:D9FF: E8        INX
C - - - - - 0x01BA10 06:DA00: 8E B4 06  STX ram_06B4
C - - - - - 0x01BA13 06:DA03: AD 02 20  LDA $2002
C - - - - - 0x01BA16 06:DA06: A9 23     LDA #$23
C - - - - - 0x01BA18 06:DA08: 8D 06 20  STA $2006
C - - - - - 0x01BA1B 06:DA0B: A9 64     LDA #$64
C - - - - - 0x01BA1D 06:DA0D: 8D 06 20  STA $2006
C - - - - - 0x01BA20 06:DA10: A2 00     LDX #$00
C - - - - - 0x01BA22 06:DA12: BD 2A 80  LDA $802A,X
C - - - - - 0x01BA25 06:DA15: 8D 07 20  STA $2007
C - - - - - 0x01BA28 06:DA18: E8        INX
C - - - - - 0x01BA29 06:DA19: E0 18     CPX #$18
C - - - - - 0x01BA2B 06:DA1B: D0 F5     BNE $DA12
C - - - - - 0x01BA2D 06:DA1D: A9 23     LDA #$23
C - - - - - 0x01BA2F 06:DA1F: 8D 06 20  STA $2006
C - - - - - 0x01BA32 06:DA22: A9 4B     LDA #$4B
C - - - - - 0x01BA34 06:DA24: 8D 06 20  STA $2006
C - - - - - 0x01BA37 06:DA27: A9 7F     LDA #$7F
C - - - - - 0x01BA39 06:DA29: 8D 07 20  STA $2007
C - - - - - 0x01BA3C 06:DA2C: 20 BA BA  JSR $BABA
C - - - - - 0x01BA3F 06:DA2F: A5 24     LDA ram_0024
C - - - - - 0x01BA41 06:DA31: 0A        ASL
C - - - - - 0x01BA42 06:DA32: 0A        ASL
C - - - - - 0x01BA43 06:DA33: AA        TAX
C - - - - - 0x01BA44 06:DA34: A0 04     LDY #$04
C - - - - - 0x01BA46 06:DA36: BD 42 80  LDA $8042,X
C - - - - - 0x01BA49 06:DA39: 99 00 06  STA ram_0600,Y
C - - - - - 0x01BA4C 06:DA3C: E8        INX
C - - - - - 0x01BA4D 06:DA3D: C8        INY
C - - - - - 0x01BA4E 06:DA3E: C0 08     CPY #$08
C - - - - - 0x01BA50 06:DA40: D0 F4     BNE $DA36
C - - - - - 0x01BA52 06:DA42: A5 24     LDA ram_0024
C - - - - - 0x01BA54 06:DA44: 0A        ASL
C - - - - - 0x01BA55 06:DA45: 0A        ASL
C - - - - - 0x01BA56 06:DA46: 85 12     STA ram_0012
C - - - - - 0x01BA58 06:DA48: 0A        ASL
C - - - - - 0x01BA59 06:DA49: 18        CLC
C - - - - - 0x01BA5A 06:DA4A: 65 12     ADC ram_0012
C - - - - - 0x01BA5C 06:DA4C: 18        CLC
C - - - - - 0x01BA5D 06:DA4D: 69 5E     ADC #$5E
C - - - - - 0x01BA5F 06:DA4F: 85 12     STA ram_0012
C - - - - - 0x01BA61 06:DA51: A9 80     LDA #$80
C - - - - - 0x01BA63 06:DA53: 69 00     ADC #$00
C - - - - - 0x01BA65 06:DA55: 85 13     STA ram_0013
C - - - - - 0x01BA67 06:DA57: AD 02 20  LDA $2002
C - - - - - 0x01BA6A 06:DA5A: 20 CB BA  JSR $BACB
C - - - - - 0x01BA6D 06:DA5D: A9 91     LDA #$91
C - - - - - 0x01BA6F 06:DA5F: 85 3B     STA ram_003B
C - - - - - 0x01BA71 06:DA61: A9 00     LDA #$00
C - - - - - 0x01BA73 06:DA63: 8D 31 06  STA ram_0631
C - - - - - 0x01BA76 06:DA66: 8D 7B 06  STA ram_067B
C - - - - - 0x01BA79 06:DA69: 85 29     STA ram_0029
C - - - - - 0x01BA7B 06:DA6B: 85 27     STA ram_0027
C - - - - - 0x01BA7D 06:DA6D: 85 2C     STA ram_002C
C - - - - - 0x01BA7F 06:DA6F: 85 2D     STA ram_002D
C - - - - - 0x01BA81 06:DA71: 85 3D     STA ram_003D
C - - - - - 0x01BA83 06:DA73: 85 19     STA ram_0019
C - - - - - 0x01BA85 06:DA75: 85 C8     STA ram_00C8
C - - - - - 0x01BA87 06:DA77: 20 1E C5  JSR $C51E
C - - - - - 0x01BA8A 06:DA7A: A5 3D     LDA ram_003D
C - - - - - 0x01BA8C 06:DA7C: 10 FC     BPL $DA7A
C - - - - - 0x01BA8E 06:DA7E: 20 13 C3  JSR $C313
C - - - - - 0x01BA91 06:DA81: 20 05 C3  JSR $C305
C - - - - - 0x01BA94 06:DA84: A6 24     LDX ram_0024
C - - - - - 0x01BA96 06:DA86: F0 24     BEQ $DAAC
C - - - - - 0x01BA98 06:DA88: E0 04     CPX #$04
C - - - - - 0x01BA9A 06:DA8A: B0 29     BCS $DAB5
C - - - - - 0x01BA9C 06:DA8C: CA        DEX
C - - - - - 0x01BA9D 06:DA8D: 8A        TXA
C - - - - - 0x01BA9E 06:DA8E: 05 5F     ORA ram_005F
C - - - - - 0x01BAA0 06:DA90: 85 5F     STA ram_005F
C - - - - - 0x01BAA2 06:DA92: A5 25     LDA ram_0025
C - - - - - 0x01BAA4 06:DA94: 29 07     AND #$07
C - - - - - 0x01BAA6 06:DA96: A8        TAY
C - - - - - 0x01BAA7 06:DA97: B9 B9 B9  LDA $B9B9,Y
C - - - - - 0x01BAAA 06:DA9A: 85 C4     STA ram_00C4
C - - - - - 0x01BAAC 06:DA9C: B9 C1 B9  LDA $B9C1,Y
C - - - - - 0x01BAAF 06:DA9F: 85 5E     STA ram_005E
C - - - - - 0x01BAB1 06:DAA1: A9 00     LDA #$00
C - - - - - 0x01BAB3 06:DAA3: 85 22     STA ram_0022
C - - - - - 0x01BAB5 06:DAA5: 85 23     STA ram_0023
C - - - - - 0x01BAB7 06:DAA7: 85 B6     STA ram_00B6
C - - - - - 0x01BAB9 06:DAA9: E6 25     INC ram_0025
C - - - - - 0x01BABB 06:DAAB: 60        RTS
C - - - - - 0x01BABC 06:DAAC: A9 00     LDA #$00
C - - - - - 0x01BABE 06:DAAE: 85 37     STA ram_0037
C - - - - - 0x01BAC0 06:DAB0: 68        PLA
C - - - - - 0x01BAC1 06:DAB1: 68        PLA
C - - - - - 0x01BAC2 06:DAB2: 4C 46 C0  JMP $C046
C - - - - - 0x01BAC5 06:DAB5: 68        PLA
C - - - - - 0x01BAC6 06:DAB6: 68        PLA
C - - - - - 0x01BAC7 06:DAB7: 4C 8D C2  JMP $C28D
C - - - - - 0x01BACA 06:DABA: A2 0F     LDX #$0F
C - - - - - 0x01BACC 06:DABC: BD 1A 80  LDA $801A,X
C - - - - - 0x01BACF 06:DABF: 9D 00 06  STA ram_0600,X
C - - - - - 0x01BAD2 06:DAC2: CA        DEX
C - - - - - 0x01BAD3 06:DAC3: 10 F7     BPL $DABC
C - - - - - 0x01BAD5 06:DAC5: A9 0F     LDA #$0F
C - - - - - 0x01BAD7 06:DAC7: 8D 10 06  STA ram_0610
C - - - - - 0x01BADA 06:DACA: 60        RTS
C - - - - - 0x01BADB 06:DACB: A0 00     LDY #$00
C - - - - - 0x01BADD 06:DACD: 20 05 BB  JSR $BB05
C - - - - - 0x01BAE0 06:DAD0: 84 11     STY ram_0011
C - - - - - 0x01BAE2 06:DAD2: A0 00     LDY #$00
C D 1 - - - 0x01BAE4 06:DAD4: 20 12 BB  JSR $BB12
C - - - - - 0x01BAE7 06:DAD7: F0 10     BEQ $DAE9
C - - - - - 0x01BAE9 06:DAD9: A5 00     LDA ram_0000
C - - - - - 0x01BAEB 06:DADB: 18        CLC
C - - - - - 0x01BAEC 06:DADC: 69 20     ADC #$20
C - - - - - 0x01BAEE 06:DADE: 85 00     STA ram_0000
C - - - - - 0x01BAF0 06:DAE0: A5 01     LDA ram_0001
C - - - - - 0x01BAF2 06:DAE2: 69 00     ADC #$00
C - - - - - 0x01BAF4 06:DAE4: 85 01     STA ram_0001
C - - - - - 0x01BAF6 06:DAE6: 4C D4 BA  JMP $BAD4
C - - - - - 0x01BAF9 06:DAE9: A4 11     LDY ram_0011
C - - - - - 0x01BAFB 06:DAEB: 20 05 BB  JSR $BB05
C - - - - - 0x01BAFE 06:DAEE: A0 00     LDY #$00
C D 1 - - - 0x01BB00 06:DAF0: 20 12 BB  JSR $BB12
C - - - - - 0x01BB03 06:DAF3: F0 34     BEQ $DB29
C - - - - - 0x01BB05 06:DAF5: A5 00     LDA ram_0000
C - - - - - 0x01BB07 06:DAF7: 18        CLC
C - - - - - 0x01BB08 06:DAF8: 69 08     ADC #$08
C - - - - - 0x01BB0A 06:DAFA: 85 00     STA ram_0000
C - - - - - 0x01BB0C 06:DAFC: A5 01     LDA ram_0001
C - - - - - 0x01BB0E 06:DAFE: 69 00     ADC #$00
C - - - - - 0x01BB10 06:DB00: 85 01     STA ram_0001
C - - - - - 0x01BB12 06:DB02: 4C F0 BA  JMP $BAF0
C - - - - - 0x01BB15 06:DB05: A2 00     LDX #$00
C - - - - - 0x01BB17 06:DB07: B1 12     LDA (ram_0012),Y
C - - - - - 0x01BB19 06:DB09: 95 00     STA ram_0000,X
C - - - - - 0x01BB1B 06:DB0B: C8        INY
C - - - - - 0x01BB1C 06:DB0C: E8        INX
C - - - - - 0x01BB1D 06:DB0D: E0 06     CPX #$06
C - - - - - 0x01BB1F 06:DB0F: D0 F6     BNE $DB07
C - - - - - 0x01BB21 06:DB11: 60        RTS
C - - - - - 0x01BB22 06:DB12: A5 01     LDA ram_0001
C - - - - - 0x01BB24 06:DB14: 8D 06 20  STA $2006
C - - - - - 0x01BB27 06:DB17: A5 00     LDA ram_0000
C - - - - - 0x01BB29 06:DB19: 8D 06 20  STA $2006
C - - - - - 0x01BB2C 06:DB1C: A6 05     LDX ram_0005
C - - - - - 0x01BB2E 06:DB1E: B1 02     LDA (ram_0002),Y
C - - - - - 0x01BB30 06:DB20: 8D 07 20  STA $2007
C - - - - - 0x01BB33 06:DB23: C8        INY
C - - - - - 0x01BB34 06:DB24: CA        DEX
C - - - - - 0x01BB35 06:DB25: D0 F7     BNE $DB1E
C - - - - - 0x01BB37 06:DB27: C6 04     DEC ram_0004
C - - - - - 0x01BB39 06:DB29: 60        RTS
C - - - - - 0x01BB3A 06:DB2A: 2C F6 FF  BIT $FFF6
C - - - - - 0x01BB3D 06:DB2D: 50 62     BVC $DB91
C - - - - - 0x01BB3F 06:DB2F: A5 B1     LDA ram_00B1
C - - - - - 0x01BB41 06:DB31: D0 5E     BNE $DB91
C - - - - - 0x01BB43 06:DB33: A5 1C     LDA ram_001C
C - - - - - 0x01BB45 06:DB35: F0 56     BEQ $DB8D
C - - - - - 0x01BB47 06:DB37: A5 B3     LDA ram_00B3
C - - - - - 0x01BB49 06:DB39: D0 56     BNE $DB91
C - - - - - 0x01BB4B 06:DB3B: A5 B2     LDA ram_00B2
C - - - - - 0x01BB4D 06:DB3D: D0 24     BNE $DB63
C - - - - - 0x01BB4F 06:DB3F: AD 92 BB  LDA $BB92
C - - - - - 0x01BB52 06:DB42: 20 79 D0  JSR $D079
C - - - - - 0x01BB55 06:DB45: D0 28     BNE $DB6F
C - - - - - 0x01BB57 06:DB47: AD 98 BB  LDA $BB98
C - - - - - 0x01BB5A 06:DB4A: 20 79 D0  JSR $D079
C - - - - - 0x01BB5D 06:DB4D: F0 06     BEQ $DB55
- - - - - - 0x01BB5F 06:DB4F: A9        .byte $A9   ; 
- - - - - - 0x01BB60 06:DB50: 06        .byte $06   ; 
- - - - - - 0x01BB61 06:DB51: 85        .byte $85   ; 
- - - - - - 0x01BB62 06:DB52: B4        .byte $B4   ; 
- - - - - - 0x01BB63 06:DB53: D0        .byte $D0   ; 
- - - - - - 0x01BB64 06:DB54: 1A        .byte $1A   ; 
C - - - - - 0x01BB65 06:DB55: AD 9E BB  LDA $BB9E
C - - - - - 0x01BB68 06:DB58: 20 79 D0  JSR $D079
C - - - - - 0x01BB6B 06:DB5B: F0 2A     BEQ $DB87
C - - - - - 0x01BB6D 06:DB5D: A9 0C     LDA #$0C
C - - - - - 0x01BB6F 06:DB5F: 85 B4     STA ram_00B4
C - - - - - 0x01BB71 06:DB61: D0 0C     BNE $DB6F
C - - - - - 0x01BB73 06:DB63: 18        CLC
C - - - - - 0x01BB74 06:DB64: 65 B4     ADC ram_00B4
C - - - - - 0x01BB76 06:DB66: A8        TAY
C - - - - - 0x01BB77 06:DB67: B9 92 BB  LDA $BB92,Y
C - - - - - 0x01BB7A 06:DB6A: 20 79 D0  JSR $D079
C - - - - - 0x01BB7D 06:DB6D: F0 18     BEQ $DB87
C - - - - - 0x01BB7F 06:DB6F: E6 B2     INC ram_00B2
C - - - - - 0x01BB81 06:DB71: E6 B3     INC ram_00B3
C - - - - - 0x01BB83 06:DB73: A5 B2     LDA ram_00B2
C - - - - - 0x01BB85 06:DB75: C9 06     CMP #$06
C - - - - - 0x01BB87 06:DB77: D0 18     BNE $DB91
- - - - - - 0x01BB89 06:DB79: A2        .byte $A2   ; 
- - - - - - 0x01BB8A 06:DB7A: 01        .byte $01   ; 
- - - - - - 0x01BB8B 06:DB7B: A5        .byte $A5   ; 
- - - - - - 0x01BB8C 06:DB7C: B4        .byte $B4   ; 
- - - - - - 0x01BB8D 06:DB7D: F0        .byte $F0   ; 
- - - - - - 0x01BB8E 06:DB7E: 06        .byte $06   ; 
- - - - - - 0x01BB8F 06:DB7F: E8        .byte $E8   ; 
- - - - - - 0x01BB90 06:DB80: C9        .byte $C9   ; 
- - - - - - 0x01BB91 06:DB81: 06        .byte $06   ; 
- - - - - - 0x01BB92 06:DB82: F0        .byte $F0   ; 
- - - - - - 0x01BB93 06:DB83: 01        .byte $01   ; 
- - - - - - 0x01BB94 06:DB84: E8        .byte $E8   ; 
- - - - - - 0x01BB95 06:DB85: 86        .byte $86   ; 
- - - - - - 0x01BB96 06:DB86: B1        .byte $B1   ; 
C - - - - - 0x01BB97 06:DB87: A9 00     LDA #$00
C - - - - - 0x01BB99 06:DB89: 85 B2     STA ram_00B2
C - - - - - 0x01BB9B 06:DB8B: 85 B4     STA ram_00B4
C - - - - - 0x01BB9D 06:DB8D: A9 00     LDA #$00
C - - - - - 0x01BB9F 06:DB8F: 85 B3     STA ram_00B3
C - - - - - 0x01BBA1 06:DB91: 60        RTS
- D 1 - - - 0x01BBA2 06:DB92: 10        .byte $10   ; 
- - - - - - 0x01BBA3 06:DB93: 20        .byte $20   ; 
- - - - - - 0x01BBA4 06:DB94: 40        .byte $40   ; 
- - - - - - 0x01BBA5 06:DB95: 80        .byte $80   ; 
- - - - - - 0x01BBA6 06:DB96: 02        .byte $02   ; 
- - - - - - 0x01BBA7 06:DB97: 01        .byte $01   ; 
- D 1 - - - 0x01BBA8 06:DB98: 40        .byte $40   ; 
- - - - - - 0x01BBA9 06:DB99: 80        .byte $80   ; 
- - - - - - 0x01BBAA 06:DB9A: 10        .byte $10   ; 
- - - - - - 0x01BBAB 06:DB9B: 20        .byte $20   ; 
- - - - - - 0x01BBAC 06:DB9C: 01        .byte $01   ; 
- - - - - - 0x01BBAD 06:DB9D: 02        .byte $02   ; 
- D 1 - - - 0x01BBAE 06:DB9E: 20        .byte $20   ; 
- D 1 - - - 0x01BBAF 06:DB9F: 10        .byte $10   ; 
- - - - - - 0x01BBB0 06:DBA0: 80        .byte $80   ; 
- - - - - - 0x01BBB1 06:DBA1: 40        .byte $40   ; 
- - - - - - 0x01BBB2 06:DBA2: 01        .byte $01   ; 
- - - - - - 0x01BBB3 06:DBA3: 01        .byte $01   ; 
C D 1 - - - 0x01BBB4 06:DBA4: A9 05     LDA #$05
C - - - - - 0x01BBB6 06:DBA6: 24 6D     BIT ram_006D
C - - - - - 0x01BBB8 06:DBA8: 30 13     BMI $DBBD
C - - - - - 0x01BBBA 06:DBAA: 20 FE BB  JSR $BBFE
C - - - - - 0x01BBBD 06:DBAD: B0 36     BCS $DBE5
C - - - - - 0x01BBBF 06:DBAF: A5 5E     LDA ram_005E
C - - - - - 0x01BBC1 06:DBB1: C9 03     CMP #$03
C - - - - - 0x01BBC3 06:DBB3: D0 08     BNE $DBBD
C - - - - - 0x01BBC5 06:DBB5: A6 46     LDX ram_0046
C - - - - - 0x01BBC7 06:DBB7: E0 19     CPX #$19
C - - - - - 0x01BBC9 06:DBB9: D0 02     BNE $DBBD
C - - - - - 0x01BBCB 06:DBBB: A9 04     LDA #$04
C D 1 - - - 0x01BBCD 06:DBBD: C5 FD     CMP ram_00FD
C - - - - - 0x01BBCF 06:DBBF: D0 07     BNE $DBC8
C - - - - - 0x01BBD1 06:DBC1: AD 00 04  LDA ram_0400
C - - - - - 0x01BBD4 06:DBC4: 8D 15 40  STA $4015
C - - - - - 0x01BBD7 06:DBC7: 60        RTS
C - - - - - 0x01BBD8 06:DBC8: 85 FD     STA ram_00FD
C - - - - - 0x01BBDA 06:DBCA: 0A        ASL
C - - - - - 0x01BBDB 06:DBCB: 0A        ASL
C - - - - - 0x01BBDC 06:DBCC: AA        TAX
C - - - - - 0x01BBDD 06:DBCD: BD 10 BC  LDA $BC10,X
C - - - - - 0x01BBE0 06:DBD0: 20 20 C4  JSR $C420
C - - - - - 0x01BBE3 06:DBD3: BD 11 BC  LDA $BC11,X
C - - - - - 0x01BBE6 06:DBD6: 20 20 C4  JSR $C420
C - - - - - 0x01BBE9 06:DBD9: BD 12 BC  LDA $BC12,X
C - - - - - 0x01BBEC 06:DBDC: 20 20 C4  JSR $C420
C - - - - - 0x01BBEF 06:DBDF: BD 13 BC  LDA $BC13,X
C - - - - - 0x01BBF2 06:DBE2: 4C 20 C4  JMP $C420
C - - - - - 0x01BBF5 06:DBE5: A0 0A     LDY #$0A
C - - - - - 0x01BBF7 06:DBE7: A5 B6     LDA ram_00B6
C - - - - - 0x01BBF9 06:DBE9: 29 03     AND #$03
C - - - - - 0x01BBFB 06:DBEB: C9 03     CMP #$03
C - - - - - 0x01BBFD 06:DBED: D0 08     BNE $DBF7
C - - - - - 0x01BBFF 06:DBEF: A5 3B     LDA ram_003B
C - - - - - 0x01BC01 06:DBF1: 29 01     AND #$01
C - - - - - 0x01BC03 06:DBF3: D0 02     BNE $DBF7
C - - - - - 0x01BC05 06:DBF5: A0 06     LDY #$06
C - - - - - 0x01BC07 06:DBF7: 98        TYA
C - - - - - 0x01BC08 06:DBF8: 18        CLC
C - - - - - 0x01BC09 06:DBF9: 65 5E     ADC ram_005E
C - - - - - 0x01BC0B 06:DBFB: 4C BD BB  JMP $BBBD
C - - - - - 0x01BC0E 06:DBFE: A5 46     LDA ram_0046
C - - - - - 0x01BC10 06:DC00: C9 14     CMP #$14
C - - - - - 0x01BC12 06:DC02: F0 0A     BEQ $DC0E
C - - - - - 0x01BC14 06:DC04: C9 1A     CMP #$1A
C - - - - - 0x01BC16 06:DC06: 90 04     BCC $DC0C
C - - - - - 0x01BC18 06:DC08: C9 24     CMP #$24
C - - - - - 0x01BC1A 06:DC0A: 90 02     BCC $DC0E
C - - - - - 0x01BC1C 06:DC0C: 18        CLC
C - - - - - 0x01BC1D 06:DC0D: 60        RTS
C - - - - - 0x01BC1E 06:DC0E: 38        SEC
C - - - - - 0x01BC1F 06:DC0F: 60        RTS
- D 1 - - - 0x01BC20 06:DC10: 04        .byte $04   ; 
- D 1 - - - 0x01BC21 06:DC11: 05        .byte $05   ; 
- D 1 - - - 0x01BC22 06:DC12: 39        .byte $39   ; <9>
- D 1 - - - 0x01BC23 06:DC13: 48        .byte $48   ; <H>
- D 1 - - - 0x01BC24 06:DC14: 06        .byte $06   ; 
- D 1 - - - 0x01BC25 06:DC15: 07        .byte $07   ; 
- D 1 - - - 0x01BC26 06:DC16: 3A        .byte $3A   ; 
- D 1 - - - 0x01BC27 06:DC17: 4B        .byte $4B   ; <K>
- D 1 - - - 0x01BC28 06:DC18: 08        .byte $08   ; 
- D 1 - - - 0x01BC29 06:DC19: 09        .byte $09   ; 
- D 1 - - - 0x01BC2A 06:DC1A: 3B        .byte $3B   ; 
- D 1 - - - 0x01BC2B 06:DC1B: 49        .byte $49   ; <I>
- D 1 - - - 0x01BC2C 06:DC1C: 1D        .byte $1D   ; 
- D 1 - - - 0x01BC2D 06:DC1D: 1E        .byte $1E   ; 
- D 1 - - - 0x01BC2E 06:DC1E: 44        .byte $44   ; <D>
- D 1 - - - 0x01BC2F 06:DC1F: 4D        .byte $4D   ; <M>
- D 1 - - - 0x01BC30 06:DC20: 1B        .byte $1B   ; 
- D 1 - - - 0x01BC31 06:DC21: 1C        .byte $1C   ; 
- D 1 - - - 0x01BC32 06:DC22: 43        .byte $43   ; <C>
- D 1 - - - 0x01BC33 06:DC23: 4C        .byte $4C   ; <L>
- D 1 - - - 0x01BC34 06:DC24: 1F        .byte $1F   ; 
- D 1 - - - 0x01BC35 06:DC25: 20        .byte $20   ; 
- D 1 - - - 0x01BC36 06:DC26: 45        .byte $45   ; <E>
- D 1 - - - 0x01BC37 06:DC27: 4A        .byte $4A   ; <J>
- D 1 - - - 0x01BC38 06:DC28: 22        .byte $22   ; 
- D 1 - - - 0x01BC39 06:DC29: 23        .byte $23   ; 
- D 1 - - - 0x01BC3A 06:DC2A: 46        .byte $46   ; <F>
- D 1 - - - 0x01BC3B 06:DC2B: 4E        .byte $4E   ; <N>
- D 1 - - - 0x01BC3C 06:DC2C: 22        .byte $22   ; 
- D 1 - - - 0x01BC3D 06:DC2D: 23        .byte $23   ; 
- D 1 - - - 0x01BC3E 06:DC2E: 46        .byte $46   ; <F>
- D 1 - - - 0x01BC3F 06:DC2F: 4E        .byte $4E   ; <N>
- D 1 - - - 0x01BC40 06:DC30: 22        .byte $22   ; 
- D 1 - - - 0x01BC41 06:DC31: 23        .byte $23   ; 
- D 1 - - - 0x01BC42 06:DC32: 46        .byte $46   ; <F>
- D 1 - - - 0x01BC43 06:DC33: 4E        .byte $4E   ; <N>
- D 1 - - - 0x01BC44 06:DC34: 22        .byte $22   ; 
- D 1 - - - 0x01BC45 06:DC35: 23        .byte $23   ; 
- D 1 - - - 0x01BC46 06:DC36: 46        .byte $46   ; <F>
- D 1 - - - 0x01BC47 06:DC37: 4E        .byte $4E   ; <N>
- D 1 - - - 0x01BC48 06:DC38: 24        .byte $24   ; 
- D 1 - - - 0x01BC49 06:DC39: 25        .byte $25   ; 
- D 1 - - - 0x01BC4A 06:DC3A: 47        .byte $47   ; <G>
- D 1 - - - 0x01BC4B 06:DC3B: 4F        .byte $4F   ; <O>
- D 1 - - - 0x01BC4C 06:DC3C: 24        .byte $24   ; 
- D 1 - - - 0x01BC4D 06:DC3D: 25        .byte $25   ; 
- D 1 - - - 0x01BC4E 06:DC3E: 47        .byte $47   ; <G>
- D 1 - - - 0x01BC4F 06:DC3F: 4F        .byte $4F   ; <O>
- D 1 - - - 0x01BC50 06:DC40: 24        .byte $24   ; 
- D 1 - - - 0x01BC51 06:DC41: 25        .byte $25   ; 
- D 1 - - - 0x01BC52 06:DC42: 47        .byte $47   ; <G>
- D 1 - - - 0x01BC53 06:DC43: 4F        .byte $4F   ; <O>
- D 1 - - - 0x01BC54 06:DC44: 24        .byte $24   ; 
- D 1 - - - 0x01BC55 06:DC45: 25        .byte $25   ; 
- D 1 - - - 0x01BC56 06:DC46: 47        .byte $47   ; <G>
- D 1 - - - 0x01BC57 06:DC47: 4F        .byte $4F   ; <O>
- - - - - - 0x01BC58 06:DC48: A9        .byte $A9   ; 
- - - - - - 0x01BC59 06:DC49: 00        .byte $00   ; 
- - - - - - 0x01BC5A 06:DC4A: 85        .byte $85   ; 
- - - - - - 0x01BC5B 06:DC4B: B7        .byte $B7   ; 
- - - - - - 0x01BC5C 06:DC4C: E6        .byte $E6   ; 
- - - - - - 0x01BC5D 06:DC4D: 46        .byte $46   ; <F>
- - - - - - 0x01BC5E 06:DC4E: A5        .byte $A5   ; 
- - - - - - 0x01BC5F 06:DC4F: 46        .byte $46   ; <F>
- - - - - - 0x01BC60 06:DC50: 85        .byte $85   ; 
- - - - - - 0x01BC61 06:DC51: C4        .byte $C4   ; 
- - - - - - 0x01BC62 06:DC52: 4A        .byte $4A   ; <J>
- - - - - - 0x01BC63 06:DC53: 4A        .byte $4A   ; <J>
- - - - - - 0x01BC64 06:DC54: 4A        .byte $4A   ; <J>
- - - - - - 0x01BC65 06:DC55: A8        .byte $A8   ; 
- - - - - - 0x01BC66 06:DC56: A5        .byte $A5   ; 
- - - - - - 0x01BC67 06:DC57: C4        .byte $C4   ; 
- - - - - - 0x01BC68 06:DC58: 29        .byte $29   ; 
- - - - - - 0x01BC69 06:DC59: 07        .byte $07   ; 
- - - - - - 0x01BC6A 06:DC5A: AA        .byte $AA   ; 
- - - - - - 0x01BC6B 06:DC5B: BD        .byte $BD   ; 
- - - - - - 0x01BC6C 06:DC5C: 70        .byte $70   ; <p>
- - - - - - 0x01BC6D 06:DC5D: BC        .byte $BC   ; 
- - - - - - 0x01BC6E 06:DC5E: 39        .byte $39   ; <9>
- - - - - - 0x01BC6F 06:DC5F: 78        .byte $78   ; <x>
- - - - - - 0x01BC70 06:DC60: BC        .byte $BC   ; 
- - - - - - 0x01BC71 06:DC61: D0        .byte $D0   ; 
- - - - - - 0x01BC72 06:DC62: 0C        .byte $0C   ; 
- - - - - - 0x01BC73 06:DC63: E6        .byte $E6   ; 
- - - - - - 0x01BC74 06:DC64: C4        .byte $C4   ; 
- - - - - - 0x01BC75 06:DC65: A5        .byte $A5   ; 
- - - - - - 0x01BC76 06:DC66: C4        .byte $C4   ; 
- - - - - - 0x01BC77 06:DC67: C9        .byte $C9   ; 
- - - - - - 0x01BC78 06:DC68: 7E        .byte $7E   ; 
- - - - - - 0x01BC79 06:DC69: 90        .byte $90   ; 
- - - - - - 0x01BC7A 06:DC6A: E7        .byte $E7   ; 
- - - - - - 0x01BC7B 06:DC6B: A9        .byte $A9   ; 
- - - - - - 0x01BC7C 06:DC6C: 00        .byte $00   ; 
- - - - - - 0x01BC7D 06:DC6D: 85        .byte $85   ; 
- - - - - - 0x01BC7E 06:DC6E: C4        .byte $C4   ; 
- - - - - - 0x01BC7F 06:DC6F: 60        .byte $60   ; 
- - - - - - 0x01BC80 06:DC70: 80        .byte $80   ; 
- - - - - - 0x01BC81 06:DC71: 40        .byte $40   ; 
- - - - - - 0x01BC82 06:DC72: 20        .byte $20   ; 
- - - - - - 0x01BC83 06:DC73: 10        .byte $10   ; 
- - - - - - 0x01BC84 06:DC74: 08        .byte $08   ; 
- - - - - - 0x01BC85 06:DC75: 04        .byte $04   ; 
- - - - - - 0x01BC86 06:DC76: 02        .byte $02   ; 
- - - - - - 0x01BC87 06:DC77: 01        .byte $01   ; 
- - - - - - 0x01BC88 06:DC78: 9F        .byte $9F   ; 
- - - - - - 0x01BC89 06:DC79: FF        .byte $FF   ; 
- - - - - - 0x01BC8A 06:DC7A: F0        .byte $F0   ; 
- - - - - - 0x01BC8B 06:DC7B: 40        .byte $40   ; 
- - - - - - 0x01BC8C 06:DC7C: 00        .byte $00   ; 
- - - - - - 0x01BC8D 06:DC7D: 00        .byte $00   ; 
- - - - - - 0x01BC8E 06:DC7E: 00        .byte $00   ; 
- - - - - - 0x01BC8F 06:DC7F: 00        .byte $00   ; 
- - - - - - 0x01BC90 06:DC80: 3F        .byte $3F   ; 
- - - - - - 0x01BC91 06:DC81: FF        .byte $FF   ; 
- - - - - - 0x01BC92 06:DC82: FF        .byte $FF   ; 
- - - - - - 0x01BC93 06:DC83: FF        .byte $FF   ; 
- - - - - - 0x01BC94 06:DC84: FF        .byte $FF   ; 
- - - - - - 0x01BC95 06:DC85: FF        .byte $FF   ; 
- - - - - - 0x01BC96 06:DC86: FF        .byte $FF   ; 
- - - - - - 0x01BC97 06:DC87: FC        .byte $FC   ; 
- D 1 - - - 0x01BC98 06:DC88: 0F        .byte $0F   ; 
- D 1 - - - 0x01BC99 06:DC89: 28        .byte $28   ; 
- D 1 - - - 0x01BC9A 06:DC8A: 18        .byte $18   ; 
- D 1 - - - 0x01BC9B 06:DC8B: 08        .byte $08   ; 
- D 1 - - - 0x01BC9C 06:DC8C: 0F        .byte $0F   ; 
- D 1 - - - 0x01BC9D 06:DC8D: 10        .byte $10   ; 
- D 1 - - - 0x01BC9E 06:DC8E: 0A        .byte $0A   ; 
- D 1 - - - 0x01BC9F 06:DC8F: 00        .byte $00   ; 
- D 1 - - - 0x01BCA0 06:DC90: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCA1 06:DC91: 05        .byte $05   ; 
- D 1 - - - 0x01BCA2 06:DC92: 20        .byte $20   ; 
- D 1 - - - 0x01BCA3 06:DC93: 25        .byte $25   ; 
- D 1 - - - 0x01BCA4 06:DC94: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCA5 06:DC95: 21        .byte $21   ; 
- D 1 - - - 0x01BCA6 06:DC96: 30        .byte $30   ; <0>
- D 1 - - - 0x01BCA7 06:DC97: 11        .byte $11   ; 
- D 1 - - - 0x01BCA8 06:DC98: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCA9 06:DC99: 0A        .byte $0A   ; 
- D 1 - - - 0x01BCAA 06:DC9A: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCAB 06:DC9B: 1A        .byte $1A   ; 
- D 1 - - - 0x01BCAC 06:DC9C: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCAD 06:DC9D: 06        .byte $06   ; 
- D 1 - - - 0x01BCAE 06:DC9E: 26        .byte $26   ; 
- D 1 - - - 0x01BCAF 06:DC9F: 16        .byte $16   ; 
- D 1 - - - 0x01BCB0 06:DCA0: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCB1 06:DCA1: 22        .byte $22   ; 
- D 1 - - - 0x01BCB2 06:DCA2: 32        .byte $32   ; <2>
- D 1 - - - 0x01BCB3 06:DCA3: 12        .byte $12   ; 
- D 1 - - - 0x01BCB4 06:DCA4: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCB5 06:DCA5: 25        .byte $25   ; 
- D 1 - - - 0x01BCB6 06:DCA6: 15        .byte $15   ; 
- D 1 - - - 0x01BCB7 06:DCA7: 05        .byte $05   ; 
- D 1 - I - 0x01BCB8 06:DCA8: 27        .byte $27   ; 
- D 1 - - - 0x01BCB9 06:DCA9: 63        .byte $63   ; <c>
- D 1 - I - 0x01BCBA 06:DCAA: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCBB 06:DCAB: 64        .byte $64   ; <d>
- D 1 - I - 0x01BCBC 06:DCAC: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCBD 06:DCAD: 65        .byte $65   ; <e>
- D 1 - I - 0x01BCBE 06:DCAE: 27        .byte $27   ; 
- D 1 - - - 0x01BCBF 06:DCAF: 66        .byte $66   ; <f>
- D 1 - I - 0x01BCC0 06:DCB0: 28        .byte $28   ; 
- D 1 - - - 0x01BCC1 06:DCB1: 68        .byte $68   ; <h>
- D 1 - I - 0x01BCC2 06:DCB2: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCC3 06:DCB3: 69        .byte $69   ; <i>
- D 1 - I - 0x01BCC4 06:DCB4: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCC5 06:DCB5: 6A        .byte $6A   ; <j>
- D 1 - I - 0x01BCC6 06:DCB6: 28        .byte $28   ; 
- D 1 - - - 0x01BCC7 06:DCB7: 6B        .byte $6B   ; <k>
- D 1 - I - 0x01BCC8 06:DCB8: 29        .byte $29   ; 
- D 1 - - - 0x01BCC9 06:DCB9: 6D        .byte $6D   ; <m>
- D 1 - I - 0x01BCCA 06:DCBA: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCCB 06:DCBB: 6E        .byte $6E   ; <n>
- D 1 - I - 0x01BCCC 06:DCBC: 2A        .byte $2A   ; 
- D 1 - - - 0x01BCCD 06:DCBD: 6F        .byte $6F   ; <o>
- D 1 - I - 0x01BCCE 06:DCBE: 29        .byte $29   ; 
- D 1 - - - 0x01BCCF 06:DCBF: 70        .byte $70   ; <p>
- D 1 - - - 0x01BCD0 06:DCC0: C0        .byte $C0   ; 
- D 1 - - - 0x01BCD1 06:DCC1: C1        .byte $C1   ; 
- D 1 - - - 0x01BCD2 06:DCC2: C1        .byte $C1   ; 
- D 1 - - - 0x01BCD3 06:DCC3: FE        .byte $FE   ; 
- D 1 - - - 0x01BCD4 06:DCC4: 67        .byte $67   ; <g>
- D 1 - - - 0x01BCD5 06:DCC5: 6C        .byte $6C   ; <l>
- D 1 - - - 0x01BCD6 06:DCC6: 71        .byte $71   ; <q>
- - - - - - 0x01BCD7 06:DCC7: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCD8 06:DCC8: 27        .byte $27   ; 
- D 1 - - - 0x01BCD9 06:DCC9: 17        .byte $17   ; 
- D 1 - - - 0x01BCDA 06:DCCA: 07        .byte $07   ; 
- D 1 - - - 0x01BCDB 06:DCCB: 0F        .byte $0F   ; 
- D 1 - - - 0x01BCDC 06:DCCC: 16        .byte $16   ; 
- D 1 - - - 0x01BCDD 06:DCCD: 11        .byte $11   ; 
- D 1 - - - 0x01BCDE 06:DCCE: 1A        .byte $1A   ; 
- D 1 - - - 0x01BCDF 06:DCCF: 12        .byte $12   ; 
- D 1 - - - 0x01BCE0 06:DCD0: 00        .byte $00   ; 
- D 1 - - - 0x01BCE1 06:DCD1: 38        .byte $38   ; <8>
- D 1 - - - 0x01BCE2 06:DCD2: 39        .byte $39   ; <9>
- D 1 - - - 0x01BCE3 06:DCD3: 36        .byte $36   ; <6>
- D 1 - - - 0x01BCE4 06:DCD4: 37        .byte $37   ; <7>
- D 1 - I - 0x01BCE5 06:DCD5: 02        .byte $02   ; 
- D 1 - I - 0x01BCE6 06:DCD6: 01        .byte $01   ; 
- D 1 - I - 0x01BCE7 06:DCD7: 00        .byte $00   ; 
- D 1 - I - 0x01BCE8 06:DCD8: 0F        .byte $0F   ; 
- D 1 - I - 0x01BCE9 06:DCD9: 0D        .byte $0D   ; 
- D 1 - I - 0x01BCEA 06:DCDA: 0B        .byte $0B   ; 
- D 1 - I - 0x01BCEB 06:DCDB: 09        .byte $09   ; 
- D 1 - I - 0x01BCEC 06:DCDC: 0A        .byte $0A   ; 
- D 1 - I - 0x01BCED 06:DCDD: 0B        .byte $0B   ; 
- D 1 - I - 0x01BCEE 06:DCDE: 0C        .byte $0C   ; 
- D 1 - I - 0x01BCEF 06:DCDF: 0D        .byte $0D   ; 
- D 1 - I - 0x01BCF0 06:DCE0: 0F        .byte $0F   ; 
- D 1 - I - 0x01BCF1 06:DCE1: 00        .byte $00   ; 
- D 1 - I - 0x01BCF2 06:DCE2: 01        .byte $01   ; 
- D 1 - I - 0x01BCF3 06:DCE3: 03        .byte $03   ; 
- D 1 - I - 0x01BCF4 06:DCE4: 04        .byte $04   ; 
- D 1 - I - 0x01BCF5 06:DCE5: 20        .byte $20   ; 
- D 1 - I - 0x01BCF6 06:DCE6: 08        .byte $08   ; 
- D 1 - I - 0x01BCF7 06:DCE7: 08        .byte $08   ; 
- D 1 - I - 0x01BCF8 06:DCE8: 08        .byte $08   ; 
- D 1 - I - 0x01BCF9 06:DCE9: 0C        .byte $0C   ; 
- D 1 - I - 0x01BCFA 06:DCEA: 20        .byte $20   ; 
- D 1 - I - 0x01BCFB 06:DCEB: 20        .byte $20   ; 
- D 1 - I - 0x01BCFC 06:DCEC: 20        .byte $20   ; 
- D 1 - I - 0x01BCFD 06:DCED: 20        .byte $20   ; 
- D 1 - I - 0x01BCFE 06:DCEE: 10        .byte $10   ; 
- D 1 - I - 0x01BCFF 06:DCEF: 20        .byte $20   ; 
- D 1 - I - 0x01BD00 06:DCF0: 10        .byte $10   ; 
- D 1 - I - 0x01BD01 06:DCF1: 08        .byte $08   ; 
- D 1 - I - 0x01BD02 06:DCF2: 10        .byte $10   ; 
- D 1 - I - 0x01BD03 06:DCF3: 10        .byte $10   ; 
- D 1 - I - 0x01BD04 06:DCF4: 10        .byte $10   ; 
- D 1 - - - 0x01BD05 06:DCF5: 14        .byte $14   ; 
- D 1 - - - 0x01BD06 06:DCF6: 17        .byte $17   ; 
- D 1 - - - 0x01BD07 06:DCF7: 17        .byte $17   ; 
- D 1 - - - 0x01BD08 06:DCF8: 00        .byte $00   ; 
- D 1 - - - 0x01BD09 06:DCF9: 20        .byte $20   ; 
- D 1 - - - 0x01BD0A 06:DCFA: 13        .byte $13   ; 
- D 1 - - - 0x01BD0B 06:DCFB: 13        .byte $13   ; 
- D 1 - - - 0x01BD0C 06:DCFC: 3C        .byte $3C   ; 
- D 1 - - - 0x01BD0D 06:DCFD: 20        .byte $20   ; 
- D 1 - - - 0x01BD0E 06:DCFE: 0F        .byte $0F   ; 
- D 1 - - - 0x01BD0F 06:DCFF: 0F        .byte $0F   ; 
- D 1 - - - 0x01BD10 06:DD00: 70        .byte $70   ; <p>
- D 1 - - - 0x01BD11 06:DD01: 20        .byte $20   ; 
- D 1 - - - 0x01BD12 06:DD02: 3F        .byte $3F   ; 
- D 1 - - - 0x01BD13 06:DD03: 3F        .byte $3F   ; 
- D 1 - - - 0x01BD14 06:DD04: 94        .byte $94   ; 
- D 1 - - - 0x01BD15 06:DD05: 89        .byte $89   ; 
- D 1 - - - 0x01BD16 06:DD06: 90        .byte $90   ; 
- D 1 - - - 0x01BD17 06:DD07: 08        .byte $08   ; 
- D 1 - - - 0x01BD18 06:DD08: BC        .byte $BC   ; 
- D 1 - - - 0x01BD19 06:DD09: 88        .byte $88   ; 
- D 1 - - - 0x01BD1A 06:DD0A: 90        .byte $90   ; 
- D 1 - - - 0x01BD1B 06:DD0B: 00        .byte $00   ; 
- D 1 - - - 0x01BD1C 06:DD0C: 84        .byte $84   ; 
- D 1 - - - 0x01BD1D 06:DD0D: 01        .byte $01   ; 
- D 1 - - - 0x01BD1E 06:DD0E: 19        .byte $19   ; 
- D 1 - - - 0x01BD1F 06:DD0F: 24        .byte $24   ; 
- D 1 - - - 0x01BD20 06:DD10: 26        .byte $26   ; 
- D 1 - - - 0x01BD21 06:DD11: 35        .byte $35   ; <5>
- D 1 - - - 0x01BD22 06:DD12: 36        .byte $36   ; <6>
- D 1 - - - 0x01BD23 06:DD13: 38        .byte $38   ; <8>
- D 1 - - - 0x01BD24 06:DD14: 07        .byte $07   ; 
- D 1 - - - 0x01BD25 06:DD15: 1F        .byte $1F   ; 
- D 1 - - - 0x01BD26 06:DD16: 09        .byte $09   ; 
- D 1 - - - 0x01BD27 06:DD17: 1A        .byte $1A   ; 
- D 1 - - - 0x01BD28 06:DD18: 37        .byte $37   ; <7>
- D 1 - - - 0x01BD29 06:DD19: 17        .byte $17   ; 
- D 1 - - - 0x01BD2A 06:DD1A: 18        .byte $18   ; 
- D 1 - - - 0x01BD2B 06:DD1B: 1C        .byte $1C   ; 
- D 1 - - - 0x01BD2C 06:DD1C: 00        .byte $00   ; 
- D 1 - - - 0x01BD2D 06:DD1D: 00        .byte $00   ; 
- D 1 - - - 0x01BD2E 06:DD1E: 0C        .byte $0C   ; 
- D 1 - - - 0x01BD2F 06:DD1F: FF        .byte $FF   ; 
- D 1 - - - 0x01BD30 06:DD20: 32        .byte $32   ; <2>
- D 1 - - - 0x01BD31 06:DD21: 42        .byte $42   ; <B>
- D 1 - - - 0x01BD32 06:DD22: 52        .byte $52   ; <R>
- D 1 - - - 0x01BD33 06:DD23: 4A        .byte $4A   ; <J>
- D 1 - - - 0x01BD34 06:DD24: 80        .byte $80   ; 
- D 1 - - - 0x01BD35 06:DD25: 00        .byte $00   ; 
- D 1 - - - 0x01BD36 06:DD26: 10        .byte $10   ; 
- D 1 - - - 0x01BD37 06:DD27: 12        .byte $12   ; 
- D 1 - - - 0x01BD38 06:DD28: 60        .byte $60   ; 
- D 1 - - - 0x01BD39 06:DD29: 82        .byte $82   ; 
- D 1 - - - 0x01BD3A 06:DD2A: 14        .byte $14   ; 
- D 1 - - - 0x01BD3B 06:DD2B: 00        .byte $00   ; 
- D 1 - - - 0x01BD3C 06:DD2C: 00        .byte $00   ; 
- D 1 - - - 0x01BD3D 06:DD2D: 02        .byte $02   ; 
- D 1 - - - 0x01BD3E 06:DD2E: 19        .byte $19   ; 
- D 1 - - - 0x01BD3F 06:DD2F: FF        .byte $FF   ; 
- D 1 - - - 0x01BD40 06:DD30: 00        .byte $00   ; 
- D 1 - - - 0x01BD41 06:DD31: 02        .byte $02   ; 
- D 1 - - - 0x01BD42 06:DD32: 00        .byte $00   ; 
- D 1 - - - 0x01BD43 06:DD33: 00        .byte $00   ; 
- D 1 - - - 0x01BD44 06:DD34: 00        .byte $00   ; 
- D 1 - - - 0x01BD45 06:DD35: 0A        .byte $0A   ; 
- D 1 - - - 0x01BD46 06:DD36: 3E        .byte $3E   ; 
- D 1 - - - 0x01BD47 06:DD37: FF        .byte $FF   ; 
- D 1 - - - 0x01BD48 06:DD38: 1C        .byte $1C   ; 
- D 1 - - - 0x01BD49 06:DD39: 02        .byte $02   ; 
- D 1 - - - 0x01BD4A 06:DD3A: 00        .byte $00   ; 
- D 1 - - - 0x01BD4B 06:DD3B: 00        .byte $00   ; 
- D 1 - - - 0x01BD4C 06:DD3C: 80        .byte $80   ; 
- D 1 - - - 0x01BD4D 06:DD3D: 00        .byte $00   ; 
- D 1 - - - 0x01BD4E 06:DD3E: 18        .byte $18   ; 
- D 1 - - - 0x01BD4F 06:DD3F: FF        .byte $FF   ; 
- D 1 - - - 0x01BD50 06:DD40: 70        .byte $70   ; <p>
- D 1 - - - 0x01BD51 06:DD41: 02        .byte $02   ; 
- D 1 - - - 0x01BD52 06:DD42: 00        .byte $00   ; 
- D 1 - - - 0x01BD53 06:DD43: 00        .byte $00   ; 
- D 1 - - - 0x01BD54 06:DD44: 00        .byte $00   ; 
- D 1 - - - 0x01BD55 06:DD45: 00        .byte $00   ; 
- D 1 - - - 0x01BD56 06:DD46: 3E        .byte $3E   ; 
- D 1 - - - 0x01BD57 06:DD47: FF        .byte $FF   ; 
- D 1 - - - 0x01BD58 06:DD48: 90        .byte $90   ; 
- D 1 - - - 0x01BD59 06:DD49: 02        .byte $02   ; 
- D 1 - - - 0x01BD5A 06:DD4A: 00        .byte $00   ; 
- D 1 - - - 0x01BD5B 06:DD4B: 00        .byte $00   ; 
- D 1 - - - 0x01BD5C 06:DD4C: 80        .byte $80   ; 
- D 1 - - - 0x01BD5D 06:DD4D: 00        .byte $00   ; 
- D 1 - - - 0x01BD5E 06:DD4E: 3E        .byte $3E   ; 
- D 1 - - - 0x01BD5F 06:DD4F: FF        .byte $FF   ; 
- D 1 - - - 0x01BD60 06:DD50: B4        .byte $B4   ; 
- D 1 - - - 0x01BD61 06:DD51: 02        .byte $02   ; 
- D 1 - - - 0x01BD62 06:DD52: 00        .byte $00   ; 
- D 1 - - - 0x01BD63 06:DD53: 00        .byte $00   ; 
- D 1 - - - 0x01BD64 06:DD54: 00        .byte $00   ; 
- D 1 - - - 0x01BD65 06:DD55: 00        .byte $00   ; 
- D 1 - - - 0x01BD66 06:DD56: 04        .byte $04   ; 
- D 1 - - - 0x01BD67 06:DD57: FF        .byte $FF   ; 
- D 1 - - - 0x01BD68 06:DD58: 00        .byte $00   ; 
- D 1 - - - 0x01BD69 06:DD59: 12        .byte $12   ; 
- D 1 - - - 0x01BD6A 06:DD5A: 00        .byte $00   ; 
- D 1 - - - 0x01BD6B 06:DD5B: 00        .byte $00   ; 
- D 1 - - - 0x01BD6C 06:DD5C: 00        .byte $00   ; 
- D 1 - - - 0x01BD6D 06:DD5D: 00        .byte $00   ; 
- D 1 - - - 0x01BD6E 06:DD5E: FF        .byte $FF   ; 
- D 1 - - - 0x01BD6F 06:DD5F: 15        .byte $15   ; 
- D 1 - - - 0x01BD70 06:DD60: 5E        .byte $5E   ; 
- D 1 - - - 0x01BD71 06:DD61: C0        .byte $C0   ; 
- D 1 - - - 0x01BD72 06:DD62: 00        .byte $00   ; 
- D 1 - - - 0x01BD73 06:DD63: 00        .byte $00   ; 
- D 1 - - - 0x01BD74 06:DD64: 00        .byte $00   ; 
- D 1 - - - 0x01BD75 06:DD65: 04        .byte $04   ; 
- D 1 - - - 0x01BD76 06:DD66: FF        .byte $FF   ; 
- D 1 - - - 0x01BD77 06:DD67: 0E        .byte $0E   ; 
- D 1 - - - 0x01BD78 06:DD68: 84        .byte $84   ; 
- D 1 - - - 0x01BD79 06:DD69: 46        .byte $46   ; <F>
- D 1 - - - 0x01BD7A 06:DD6A: 00        .byte $00   ; 
- D 1 - - - 0x01BD7B 06:DD6B: 00        .byte $00   ; 
- D 1 - - - 0x01BD7C 06:DD6C: 00        .byte $00   ; 
- D 1 - - - 0x01BD7D 06:DD6D: 00        .byte $00   ; 
- D 1 - - - 0x01BD7E 06:DD6E: 10        .byte $10   ; 
- D 1 - - - 0x01BD7F 06:DD6F: 11        .byte $11   ; 
- D 1 - - - 0x01BD80 06:DD70: 84        .byte $84   ; 
- D 1 - - - 0x01BD81 06:DD71: 82        .byte $82   ; 
- D 1 - - - 0x01BD82 06:DD72: 14        .byte $14   ; 
- D 1 - - - 0x01BD83 06:DD73: 00        .byte $00   ; 
- D 1 - - - 0x01BD84 06:DD74: 80        .byte $80   ; 
- D 1 - - - 0x01BD85 06:DD75: 02        .byte $02   ; 
- D 1 - - - 0x01BD86 06:DD76: 18        .byte $18   ; 
- D 1 - - - 0x01BD87 06:DD77: FF        .byte $FF   ; 
- D 1 - - - 0x01BD88 06:DD78: AC        .byte $AC   ; 
- D 1 - - - 0x01BD89 06:DD79: 80        .byte $80   ; 
- D 1 - - - 0x01BD8A 06:DD7A: 00        .byte $00   ; 
- D 1 - - - 0x01BD8B 06:DD7B: 00        .byte $00   ; 
- D 1 - - - 0x01BD8C 06:DD7C: 00        .byte $00   ; 
- D 1 - - - 0x01BD8D 06:DD7D: 00        .byte $00   ; 
- D 1 - - - 0x01BD8E 06:DD7E: 10        .byte $10   ; 
- D 1 - - - 0x01BD8F 06:DD7F: FF        .byte $FF   ; 
- D 1 - - - 0x01BD90 06:DD80: 2C        .byte $2C   ; 
- D 1 - - - 0x01BD91 06:DD81: 82        .byte $82   ; 
- D 1 - - - 0x01BD92 06:DD82: 14        .byte $14   ; 
- D 1 - - - 0x01BD93 06:DD83: 4C        .byte $4C   ; <L>
- D 1 - - - 0x01BD94 06:DD84: 00        .byte $00   ; 
- D 1 - - - 0x01BD95 06:DD85: 00        .byte $00   ; 
- D 1 - - - 0x01BD96 06:DD86: 10        .byte $10   ; 
- D 1 - - - 0x01BD97 06:DD87: FF        .byte $FF   ; 
- D 1 - - - 0x01BD98 06:DD88: 2C        .byte $2C   ; 
- D 1 - - - 0x01BD99 06:DD89: 82        .byte $82   ; 
- D 1 - - - 0x01BD9A 06:DD8A: 14        .byte $14   ; 
- D 1 - - - 0x01BD9B 06:DD8B: 4C        .byte $4C   ; <L>
- D 1 - - - 0x01BD9C 06:DD8C: 00        .byte $00   ; 
- D 1 - - - 0x01BD9D 06:DD8D: 00        .byte $00   ; 
- D 1 - - - 0x01BD9E 06:DD8E: FF        .byte $FF   ; 
- D 1 - - - 0x01BD9F 06:DD8F: 16        .byte $16   ; 
- D 1 - - - 0x01BDA0 06:DD90: 00        .byte $00   ; 
- D 1 - - - 0x01BDA1 06:DD91: C6        .byte $C6   ; 
- D 1 - - - 0x01BDA2 06:DD92: 00        .byte $00   ; 
- D 1 - - - 0x01BDA3 06:DD93: 00        .byte $00   ; 
- D 1 - - - 0x01BDA4 06:DD94: 00        .byte $00   ; 
- D 1 - - - 0x01BDA5 06:DD95: 00        .byte $00   ; 
- D 1 - - - 0x01BDA6 06:DD96: FF        .byte $FF   ; 
- D 1 - - - 0x01BDA7 06:DD97: 16        .byte $16   ; 
- D 1 - - - 0x01BDA8 06:DD98: 22        .byte $22   ; 
- D 1 - - - 0x01BDA9 06:DD99: C6        .byte $C6   ; 
- D 1 - - - 0x01BDAA 06:DD9A: 00        .byte $00   ; 
- D 1 - - - 0x01BDAB 06:DD9B: 00        .byte $00   ; 
- D 1 - - - 0x01BDAC 06:DD9C: 00        .byte $00   ; 
- D 1 - - - 0x01BDAD 06:DD9D: 00        .byte $00   ; 
- D 1 - - - 0x01BDAE 06:DD9E: C0        .byte $C0   ; 
- D 1 - - - 0x01BDAF 06:DD9F: 0C        .byte $0C   ; 
- D 1 - - - 0x01BDB0 06:DDA0: 00        .byte $00   ; 
- D 1 - - - 0x01BDB1 06:DDA1: 08        .byte $08   ; 
- D 1 - - - 0x01BDB2 06:DDA2: C1        .byte $C1   ; 
- D 1 - - - 0x01BDB3 06:DDA3: 0C        .byte $0C   ; 
- D 1 - - - 0x01BDB4 06:DDA4: 80        .byte $80   ; 
- D 1 - - - 0x01BDB5 06:DDA5: 00        .byte $00   ; 
- D 1 - - - 0x01BDB6 06:DDA6: C0        .byte $C0   ; 
- D 1 - - - 0x01BDB7 06:DDA7: 0E        .byte $0E   ; 
- D 1 - - - 0x01BDB8 06:DDA8: 80        .byte $80   ; 
- D 1 - - - 0x01BDB9 06:DDA9: 08        .byte $08   ; 
- D 1 - - - 0x01BDBA 06:DDAA: C1        .byte $C1   ; 
- D 1 - - - 0x01BDBB 06:DDAB: 0E        .byte $0E   ; 
- D 1 - - - 0x01BDBC 06:DDAC: 00        .byte $00   ; 
- D 1 - - - 0x01BDBD 06:DDAD: 00        .byte $00   ; 
- D 1 - - - 0x01BDBE 06:DDAE: C0        .byte $C0   ; 
- D 1 - - - 0x01BDBF 06:DDAF: 14        .byte $14   ; 
- D 1 - - - 0x01BDC0 06:DDB0: 00        .byte $00   ; 
- D 1 - - - 0x01BDC1 06:DDB1: 08        .byte $08   ; 
- D 1 - - - 0x01BDC2 06:DDB2: C1        .byte $C1   ; 
- D 1 - - - 0x01BDC3 06:DDB3: 14        .byte $14   ; 
- D 1 - - - 0x01BDC4 06:DDB4: 00        .byte $00   ; 
- D 1 - - - 0x01BDC5 06:DDB5: 00        .byte $00   ; 
- D 1 - - - 0x01BDC6 06:DDB6: C2        .byte $C2   ; 
- D 1 - - - 0x01BDC7 06:DDB7: 10        .byte $10   ; 
- D 1 - - - 0x01BDC8 06:DDB8: 00        .byte $00   ; 
- D 1 - - - 0x01BDC9 06:DDB9: 08        .byte $08   ; 
- D 1 - - - 0x01BDCA 06:DDBA: C2        .byte $C2   ; 
- D 1 - - - 0x01BDCB 06:DDBB: 10        .byte $10   ; 
- D 1 - - - 0x01BDCC 06:DDBC: 80        .byte $80   ; 
- D 1 - - - 0x01BDCD 06:DDBD: 00        .byte $00   ; 
- D 1 - - - 0x01BDCE 06:DDBE: C3        .byte $C3   ; 
- D 1 - - - 0x01BDCF 06:DDBF: 10        .byte $10   ; 
- D 1 - - - 0x01BDD0 06:DDC0: 80        .byte $80   ; 
- D 1 - - - 0x01BDD1 06:DDC1: 08        .byte $08   ; 
- D 1 - - - 0x01BDD2 06:DDC2: C3        .byte $C3   ; 
- D 1 - - - 0x01BDD3 06:DDC3: 10        .byte $10   ; 
- D 1 - - - 0x01BDD4 06:DDC4: 00        .byte $00   ; 
- D 1 - - - 0x01BDD5 06:DDC5: 00        .byte $00   ; 
- D 1 - - - 0x01BDD6 06:DDC6: C0        .byte $C0   ; 
- D 1 - - - 0x01BDD7 06:DDC7: 18        .byte $18   ; 
- D 1 - - - 0x01BDD8 06:DDC8: 00        .byte $00   ; 
- D 1 - - - 0x01BDD9 06:DDC9: 08        .byte $08   ; 
- D 1 - - - 0x01BDDA 06:DDCA: C1        .byte $C1   ; 
- D 1 - - - 0x01BDDB 06:DDCB: 18        .byte $18   ; 
- D 1 - - - 0x01BDDC 06:DDCC: 23        .byte $23   ; 
- D 1 - - - 0x01BDDD 06:DDCD: 0A        .byte $0A   ; 
- D 1 - - - 0x01BDDE 06:DDCE: 1D        .byte $1D   ; 
- D 1 - - - 0x01BDDF 06:DDCF: 21        .byte $21   ; 
- D 1 - - - 0x01BDE0 06:DDD0: 34        .byte $34   ; <4>
- D 1 - - - 0x01BDE1 06:DDD1: 22        .byte $22   ; 
- D 1 - - - 0x01BDE2 06:DDD2: FF        .byte $FF   ; 
- D 1 - - - 0x01BDE3 06:DDD3: 19        .byte $19   ; 
- D 1 - - - 0x01BDE4 06:DDD4: 6A        .byte $6A   ; <j>
- D 1 - - - 0x01BDE5 06:DDD5: C3        .byte $C3   ; 
- D 1 - - - 0x01BDE6 06:DDD6: 0C        .byte $0C   ; 
- D 1 - - - 0x01BDE7 06:DDD7: FF        .byte $FF   ; 
- D 1 - - - 0x01BDE8 06:DDD8: 28        .byte $28   ; 
- D 1 - - - 0x01BDE9 06:DDD9: 43        .byte $43   ; <C>
- D 1 - - - 0x01BDEA 06:DDDA: FF        .byte $FF   ; 
- D 1 - - - 0x01BDEB 06:DDDB: 12        .byte $12   ; 
- D 1 - - - 0x01BDEC 06:DDDC: 28        .byte $28   ; 
- D 1 - - - 0x01BDED 06:DDDD: 47        .byte $47   ; <G>
- D 1 - - - 0x01BDEE 06:DDDE: FF        .byte $FF   ; 
- D 1 - - - 0x01BDEF 06:DDDF: 19        .byte $19   ; 
- D 1 - - - 0x01BDF0 06:DDE0: 28        .byte $28   ; 
- D 1 - - - 0x01BDF1 06:DDE1: 47        .byte $47   ; <G>
- D 1 - - - 0x01BDF2 06:DDE2: FF        .byte $FF   ; 
- D 1 - - - 0x01BDF3 06:DDE3: 3E        .byte $3E   ; 
- D 1 - - - 0x01BDF4 06:DDE4: 56        .byte $56   ; <V>
- D 1 - - - 0x01BDF5 06:DDE5: 07        .byte $07   ; 
- D 1 - - - 0x01BDF6 06:DDE6: FF        .byte $FF   ; 
- D 1 - - - 0x01BDF7 06:DDE7: 19        .byte $19   ; 
- D 1 - - - 0x01BDF8 06:DDE8: 7A        .byte $7A   ; <z>
- D 1 - - - 0x01BDF9 06:DDE9: C3        .byte $C3   ; 
- D 1 - - - 0x01BDFA 06:DDEA: 14        .byte $14   ; 
- D 1 - - - 0x01BDFB 06:DDEB: FF        .byte $FF   ; 
- D 1 - - - 0x01BDFC 06:DDEC: 4A        .byte $4A   ; <J>
- D 1 - - - 0x01BDFD 06:DDED: C3        .byte $C3   ; 
- D 1 - - - 0x01BDFE 06:DDEE: 4C        .byte $4C   ; <L>
- D 1 - - - 0x01BDFF 06:DDEF: 01        .byte $01   ; 
- D 1 - - - 0x01BE00 06:DDF0: 94        .byte $94   ; 
- D 1 - - - 0x01BE01 06:DDF1: 00        .byte $00   ; 
- D 1 - - - 0x01BE02 06:DDF2: 51        .byte $51   ; <Q>
- - - - - - 0x01BE03 06:DDF3: 04        .byte $04   ; 
- - - - - - 0x01BE04 06:DDF4: 34        .byte $34   ; <4>
- - - - - - 0x01BE05 06:DDF5: 00        .byte $00   ; 
- D 1 - - - 0x01BE06 06:DDF6: 51        .byte $51   ; <Q>
- - - - - - 0x01BE07 06:DDF7: 04        .byte $04   ; 
- - - - - - 0x01BE08 06:DDF8: C4        .byte $C4   ; 
- - - - - - 0x01BE09 06:DDF9: 01        .byte $01   ; 
- D 1 - - - 0x01BE0A 06:DDFA: 58        .byte $58   ; <X>
- - - - - - 0x01BE0B 06:DDFB: 01        .byte $01   ; 
- - - - - - 0x01BE0C 06:DDFC: 34        .byte $34   ; <4>
- - - - - - 0x01BE0D 06:DDFD: 00        .byte $00   ; 
- D 1 - - - 0x01BE0E 06:DDFE: 58        .byte $58   ; <X>
- - - - - - 0x01BE0F 06:DDFF: 01        .byte $01   ; 
- - - - - - 0x01BE10 06:DE00: C4        .byte $C4   ; 
- - - - - - 0x01BE11 06:DE01: 01        .byte $01   ; 
- D 1 - - - 0x01BE12 06:DE02: 5C        .byte $5C   ; 
- D 1 - - - 0x01BE13 06:DE03: 04        .byte $04   ; 
- D 1 - - - 0x01BE14 06:DE04: B4        .byte $B4   ; 
- D 1 - - - 0x01BE15 06:DE05: 00        .byte $00   ; 
- D 1 - - - 0x01BE16 06:DE06: 64        .byte $64   ; <d>
- D 1 - - - 0x01BE17 06:DE07: 02        .byte $02   ; 
- - - - - - 0x01BE18 06:DE08: 94        .byte $94   ; 
- - - - - - 0x01BE19 06:DE09: 00        .byte $00   ; 
- D 1 - - - 0x01BE1A 06:DE0A: 67        .byte $67   ; <g>
- D 1 - - - 0x01BE1B 06:DE0B: 03        .byte $03   ; 
- D 1 - - - 0x01BE1C 06:DE0C: 94        .byte $94   ; 
- D 1 - - - 0x01BE1D 06:DE0D: 00        .byte $00   ; 
- D 1 - - - 0x01BE1E 06:DE0E: 67        .byte $67   ; <g>
- - - - - - 0x01BE1F 06:DE0F: 05        .byte $05   ; 
- - - - - - 0x01BE20 06:DE10: 94        .byte $94   ; 
- - - - - - 0x01BE21 06:DE11: 01        .byte $01   ; 
- D 1 - - - 0x01BE22 06:DE12: 78        .byte $78   ; <x>
- D 1 - - - 0x01BE23 06:DE13: 03        .byte $03   ; 
- D 1 - - - 0x01BE24 06:DE14: 34        .byte $34   ; <4>
- D 1 - - - 0x01BE25 06:DE15: 00        .byte $00   ; 
- D 1 - - - 0x01BE26 06:DE16: 67        .byte $67   ; <g>
- - - - - - 0x01BE27 06:DE17: 03        .byte $03   ; 
- - - - - - 0x01BE28 06:DE18: C4        .byte $C4   ; 
- - - - - - 0x01BE29 06:DE19: 01        .byte $01   ; 
- D 1 - - - 0x01BE2A 06:DE1A: 61        .byte $61   ; <a>
- - - - - - 0x01BE2B 06:DE1B: 03        .byte $03   ; 
- - - - - - 0x01BE2C 06:DE1C: 01        .byte $01   ; 
- - - - - - 0x01BE2D 06:DE1D: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE2E 06:DE1E: 3A        .byte $3A   ; 
- - - - - - 0x01BE2F 06:DE1F: 00        .byte $00   ; 
- - - - - - 0x01BE30 06:DE20: 5B        .byte $5B   ; 
- - - - - - 0x01BE31 06:DE21: 5B        .byte $5B   ; 
- D 1 - - - 0x01BE32 06:DE22: 5B        .byte $5B   ; 
- - - - - - 0x01BE33 06:DE23: 12        .byte $12   ; 
- - - - - - 0x01BE34 06:DE24: 5B        .byte $5B   ; 
- - - - - - 0x01BE35 06:DE25: 5B        .byte $5B   ; 
- D 1 - - - 0x01BE36 06:DE26: 5B        .byte $5B   ; 
- - - - - - 0x01BE37 06:DE27: 5B        .byte $5B   ; 
- - - - - - 0x01BE38 06:DE28: 5B        .byte $5B   ; 
- - - - - - 0x01BE39 06:DE29: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE3A 06:DE2A: 3A        .byte $3A   ; 
- - - - - - 0x01BE3B 06:DE2B: 00        .byte $00   ; 
- - - - - - 0x01BE3C 06:DE2C: 01        .byte $01   ; 
- - - - - - 0x01BE3D 06:DE2D: 02        .byte $02   ; 
- D 1 - - - 0x01BE3E 06:DE2E: 01        .byte $01   ; 
- - - - - - 0x01BE3F 06:DE2F: 12        .byte $12   ; 
- - - - - - 0x01BE40 06:DE30: 01        .byte $01   ; 
- - - - - - 0x01BE41 06:DE31: 02        .byte $02   ; 
- D 1 - - - 0x01BE42 06:DE32: 01        .byte $01   ; 
- - - - - - 0x01BE43 06:DE33: 02        .byte $02   ; 
- - - - - - 0x01BE44 06:DE34: 01        .byte $01   ; 
- - - - - - 0x01BE45 06:DE35: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE46 06:DE36: 3A        .byte $3A   ; 
- - - - - - 0x01BE47 06:DE37: 00        .byte $00   ; 
- - - - - - 0x01BE48 06:DE38: 02        .byte $02   ; 
- - - - - - 0x01BE49 06:DE39: 01        .byte $01   ; 
- D 1 - - - 0x01BE4A 06:DE3A: 02        .byte $02   ; 
- - - - - - 0x01BE4B 06:DE3B: 2C        .byte $2C   ; 
- - - - - - 0x01BE4C 06:DE3C: 02        .byte $02   ; 
- - - - - - 0x01BE4D 06:DE3D: 01        .byte $01   ; 
- D 1 - - - 0x01BE4E 06:DE3E: 02        .byte $02   ; 
- - - - - - 0x01BE4F 06:DE3F: 01        .byte $01   ; 
- - - - - - 0x01BE50 06:DE40: 02        .byte $02   ; 
- - - - - - 0x01BE51 06:DE41: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE52 06:DE42: 3A        .byte $3A   ; 
- - - - - - 0x01BE53 06:DE43: 00        .byte $00   ; 
- - - - - - 0x01BE54 06:DE44: 5B        .byte $5B   ; 
- - - - - - 0x01BE55 06:DE45: 5B        .byte $5B   ; 
- D 1 - - - 0x01BE56 06:DE46: 5B        .byte $5B   ; 
- - - - - - 0x01BE57 06:DE47: 5B        .byte $5B   ; 
- - - - - - 0x01BE58 06:DE48: 5B        .byte $5B   ; 
- - - - - - 0x01BE59 06:DE49: 5B        .byte $5B   ; 
- D 1 - - - 0x01BE5A 06:DE4A: 5B        .byte $5B   ; 
- - - - - - 0x01BE5B 06:DE4B: 5B        .byte $5B   ; 
- - - - - - 0x01BE5C 06:DE4C: 5B        .byte $5B   ; 
- - - - - - 0x01BE5D 06:DE4D: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE5E 06:DE4E: 3A        .byte $3A   ; 
- - - - - - 0x01BE5F 06:DE4F: 00        .byte $00   ; 
- - - - - - 0x01BE60 06:DE50: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE61 06:DE51: 6B        .byte $6B   ; <k>
- D 1 - - - 0x01BE62 06:DE52: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE63 06:DE53: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE64 06:DE54: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE65 06:DE55: 71        .byte $71   ; <q>
- D 1 - - - 0x01BE66 06:DE56: 74        .byte $74   ; <t>
- - - - - - 0x01BE67 06:DE57: 74        .byte $74   ; <t>
- - - - - - 0x01BE68 06:DE58: 75        .byte $75   ; <u>
- - - - - - 0x01BE69 06:DE59: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE6A 06:DE5A: 3A        .byte $3A   ; 
- - - - - - 0x01BE6B 06:DE5B: 00        .byte $00   ; 
- - - - - - 0x01BE6C 06:DE5C: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE6D 06:DE5D: 6B        .byte $6B   ; <k>
- D 1 - - - 0x01BE6E 06:DE5E: 6C        .byte $6C   ; <l>
- - - - - - 0x01BE6F 06:DE5F: 6D        .byte $6D   ; <m>
- - - - - - 0x01BE70 06:DE60: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE71 06:DE61: 72        .byte $72   ; <r>
- D 1 - - - 0x01BE72 06:DE62: 1C        .byte $1C   ; 
- - - - - - 0x01BE73 06:DE63: 1D        .byte $1D   ; 
- - - - - - 0x01BE74 06:DE64: 1D        .byte $1D   ; 
- - - - - - 0x01BE75 06:DE65: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE76 06:DE66: 3A        .byte $3A   ; 
- - - - - - 0x01BE77 06:DE67: 00        .byte $00   ; 
- - - - - - 0x01BE78 06:DE68: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE79 06:DE69: 6B        .byte $6B   ; <k>
- D 1 - - - 0x01BE7A 06:DE6A: 6C        .byte $6C   ; <l>
- - - - - - 0x01BE7B 06:DE6B: 6E        .byte $6E   ; <n>
- - - - - - 0x01BE7C 06:DE6C: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE7D 06:DE6D: 72        .byte $72   ; <r>
- D 1 - - - 0x01BE7E 06:DE6E: 1E        .byte $1E   ; 
- - - - - - 0x01BE7F 06:DE6F: 1F        .byte $1F   ; 
- - - - - - 0x01BE80 06:DE70: 1F        .byte $1F   ; 
- - - - - - 0x01BE81 06:DE71: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE82 06:DE72: 3A        .byte $3A   ; 
- - - - - - 0x01BE83 06:DE73: 00        .byte $00   ; 
- - - - - - 0x01BE84 06:DE74: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE85 06:DE75: 6B        .byte $6B   ; <k>
- D 1 - - - 0x01BE86 06:DE76: 6F        .byte $6F   ; <o>
- - - - - - 0x01BE87 06:DE77: 70        .byte $70   ; <p>
- - - - - - 0x01BE88 06:DE78: 6B        .byte $6B   ; <k>
- - - - - - 0x01BE89 06:DE79: 73        .byte $73   ; <s>
- D 1 - - - 0x01BE8A 06:DE7A: 76        .byte $76   ; <v>
- - - - - - 0x01BE8B 06:DE7B: 76        .byte $76   ; <v>
- - - - - - 0x01BE8C 06:DE7C: 77        .byte $77   ; <w>
- - - - - - 0x01BE8D 06:DE7D: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE8E 06:DE7E: 3A        .byte $3A   ; 
- - - - - - 0x01BE8F 06:DE7F: 00        .byte $00   ; 
- - - - - - 0x01BE90 06:DE80: 94        .byte $94   ; 
- - - - - - 0x01BE91 06:DE81: 96        .byte $96   ; 
- D 1 - - - 0x01BE92 06:DE82: 9E        .byte $9E   ; 
- - - - - - 0x01BE93 06:DE83: 83        .byte $83   ; 
- - - - - - 0x01BE94 06:DE84: 78        .byte $78   ; <x>
- - - - - - 0x01BE95 06:DE85: 79        .byte $79   ; <y>
- D 1 - - - 0x01BE96 06:DE86: 7A        .byte $7A   ; <z>
- - - - - - 0x01BE97 06:DE87: 81        .byte $81   ; 
- - - - - - 0x01BE98 06:DE88: 82        .byte $82   ; 
- - - - - - 0x01BE99 06:DE89: 0E        .byte $0E   ; 
- D 1 - - - 0x01BE9A 06:DE8A: 3A        .byte $3A   ; 
- - - - - - 0x01BE9B 06:DE8B: 00        .byte $00   ; 
- - - - - - 0x01BE9C 06:DE8C: 95        .byte $95   ; 
- - - - - - 0x01BE9D 06:DE8D: 97        .byte $97   ; 
- D 1 - - - 0x01BE9E 06:DE8E: 9F        .byte $9F   ; 
- - - - - - 0x01BE9F 06:DE8F: 72        .byte $72   ; <r>
- - - - - - 0x01BEA0 06:DE90: 7B        .byte $7B   ; 
- - - - - - 0x01BEA1 06:DE91: 7C        .byte $7C   ; 
- D 1 - - - 0x01BEA2 06:DE92: 7D        .byte $7D   ; 
- - - - - - 0x01BEA3 06:DE93: 81        .byte $81   ; 
- - - - - - 0x01BEA4 06:DE94: 82        .byte $82   ; 
- - - - - - 0x01BEA5 06:DE95: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEA6 06:DE96: 3A        .byte $3A   ; 
- - - - - - 0x01BEA7 06:DE97: 00        .byte $00   ; 
- - - - - - 0x01BEA8 06:DE98: 98        .byte $98   ; 
- - - - - - 0x01BEA9 06:DE99: 9A        .byte $9A   ; 
- D 1 - - - 0x01BEAA 06:DE9A: A0        .byte $A0   ; 
- - - - - - 0x01BEAB 06:DE9B: 84        .byte $84   ; 
- - - - - - 0x01BEAC 06:DE9C: 7E        .byte $7E   ; 
- - - - - - 0x01BEAD 06:DE9D: 7F        .byte $7F   ; 
- D 1 - - - 0x01BEAE 06:DE9E: 80        .byte $80   ; 
- - - - - - 0x01BEAF 06:DE9F: 81        .byte $81   ; 
- - - - - - 0x01BEB0 06:DEA0: 82        .byte $82   ; 
- - - - - - 0x01BEB1 06:DEA1: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEB2 06:DEA2: 3A        .byte $3A   ; 
- - - - - - 0x01BEB3 06:DEA3: 00        .byte $00   ; 
- - - - - - 0x01BEB4 06:DEA4: 99        .byte $99   ; 
- - - - - - 0x01BEB5 06:DEA5: 9B        .byte $9B   ; 
- D 1 - - - 0x01BEB6 06:DEA6: 85        .byte $85   ; 
- - - - - - 0x01BEB7 06:DEA7: 2E        .byte $2E   ; 
- - - - - - 0x01BEB8 06:DEA8: 2E        .byte $2E   ; 
- - - - - - 0x01BEB9 06:DEA9: 88        .byte $88   ; 
- D 1 - - - 0x01BEBA 06:DEAA: 89        .byte $89   ; 
- - - - - - 0x01BEBB 06:DEAB: 8A        .byte $8A   ; 
- - - - - - 0x01BEBC 06:DEAC: 8B        .byte $8B   ; 
- - - - - - 0x01BEBD 06:DEAD: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEBE 06:DEAE: 3A        .byte $3A   ; 
- - - - - - 0x01BEBF 06:DEAF: 00        .byte $00   ; 
- - - - - - 0x01BEC0 06:DEB0: 95        .byte $95   ; 
- - - - - - 0x01BEC1 06:DEB1: 97        .byte $97   ; 
- D 1 - - - 0x01BEC2 06:DEB2: 86        .byte $86   ; 
- - - - - - 0x01BEC3 06:DEB3: 2E        .byte $2E   ; 
- - - - - - 0x01BEC4 06:DEB4: 2E        .byte $2E   ; 
- - - - - - 0x01BEC5 06:DEB5: 8C        .byte $8C   ; 
- D 1 - - - 0x01BEC6 06:DEB6: 8D        .byte $8D   ; 
- - - - - - 0x01BEC7 06:DEB7: 8D        .byte $8D   ; 
- - - - - - 0x01BEC8 06:DEB8: 8E        .byte $8E   ; 
- - - - - - 0x01BEC9 06:DEB9: 0E        .byte $0E   ; 
- D 1 - - - 0x01BECA 06:DEBA: 3A        .byte $3A   ; 
- - - - - - 0x01BECB 06:DEBB: 00        .byte $00   ; 
- - - - - - 0x01BECC 06:DEBC: 98        .byte $98   ; 
- - - - - - 0x01BECD 06:DEBD: 9A        .byte $9A   ; 
- D 1 - - - 0x01BECE 06:DEBE: 86        .byte $86   ; 
- - - - - - 0x01BECF 06:DEBF: 2E        .byte $2E   ; 
- - - - - - 0x01BED0 06:DEC0: 92        .byte $92   ; 
- - - - - - 0x01BED1 06:DEC1: 8C        .byte $8C   ; 
- D 1 - - - 0x01BED2 06:DEC2: 8D        .byte $8D   ; 
- - - - - - 0x01BED3 06:DEC3: 8D        .byte $8D   ; 
- - - - - - 0x01BED4 06:DEC4: 8E        .byte $8E   ; 
- - - - - - 0x01BED5 06:DEC5: 0E        .byte $0E   ; 
- D 1 - - - 0x01BED6 06:DEC6: 3A        .byte $3A   ; 
- - - - - - 0x01BED7 06:DEC7: 00        .byte $00   ; 
- - - - - - 0x01BED8 06:DEC8: 99        .byte $99   ; 
- - - - - - 0x01BED9 06:DEC9: 9B        .byte $9B   ; 
- D 1 - - - 0x01BEDA 06:DECA: 86        .byte $86   ; 
- - - - - - 0x01BEDB 06:DECB: 2E        .byte $2E   ; 
- - - - - - 0x01BEDC 06:DECC: 93        .byte $93   ; 
- - - - - - 0x01BEDD 06:DECD: 8C        .byte $8C   ; 
- D 1 - - - 0x01BEDE 06:DECE: 8D        .byte $8D   ; 
- - - - - - 0x01BEDF 06:DECF: 8D        .byte $8D   ; 
- - - - - - 0x01BEE0 06:DED0: 8E        .byte $8E   ; 
- - - - - - 0x01BEE1 06:DED1: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEE2 06:DED2: 3A        .byte $3A   ; 
- - - - - - 0x01BEE3 06:DED3: 00        .byte $00   ; 
- - - - - - 0x01BEE4 06:DED4: 95        .byte $95   ; 
- - - - - - 0x01BEE5 06:DED5: 97        .byte $97   ; 
- D 1 - - - 0x01BEE6 06:DED6: 86        .byte $86   ; 
- - - - - - 0x01BEE7 06:DED7: 2E        .byte $2E   ; 
- - - - - - 0x01BEE8 06:DED8: 2E        .byte $2E   ; 
- - - - - - 0x01BEE9 06:DED9: 8C        .byte $8C   ; 
- D 1 - - - 0x01BEEA 06:DEDA: 8D        .byte $8D   ; 
- - - - - - 0x01BEEB 06:DEDB: 8D        .byte $8D   ; 
- - - - - - 0x01BEEC 06:DEDC: 8E        .byte $8E   ; 
- - - - - - 0x01BEED 06:DEDD: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEEE 06:DEDE: 3A        .byte $3A   ; 
- - - - - - 0x01BEEF 06:DEDF: 00        .byte $00   ; 
- - - - - - 0x01BEF0 06:DEE0: 98        .byte $98   ; 
- - - - - - 0x01BEF1 06:DEE1: 9A        .byte $9A   ; 
- D 1 - - - 0x01BEF2 06:DEE2: 87        .byte $87   ; 
- - - - - - 0x01BEF3 06:DEE3: 2E        .byte $2E   ; 
- - - - - - 0x01BEF4 06:DEE4: 2E        .byte $2E   ; 
- - - - - - 0x01BEF5 06:DEE5: 8F        .byte $8F   ; 
- D 1 - - - 0x01BEF6 06:DEE6: 90        .byte $90   ; 
- - - - - - 0x01BEF7 06:DEE7: 90        .byte $90   ; 
- - - - - - 0x01BEF8 06:DEE8: 91        .byte $91   ; 
- - - - - - 0x01BEF9 06:DEE9: 0E        .byte $0E   ; 
- D 1 - - - 0x01BEFA 06:DEEA: 3A        .byte $3A   ; 
- - - - - - 0x01BEFB 06:DEEB: 00        .byte $00   ; 
- - - - - - 0x01BEFC 06:DEEC: 99        .byte $99   ; 
- - - - - - 0x01BEFD 06:DEED: 9B        .byte $9B   ; 
- - - - - - 0x01BEFE 06:DEEE: A1        .byte $A1   ; 
- - - - - - 0x01BEFF 06:DEEF: 83        .byte $83   ; 
- - - - - - 0x01BF00 06:DEF0: 78        .byte $78   ; <x>
- - - - - - 0x01BF01 06:DEF1: 79        .byte $79   ; <y>
- - - - - - 0x01BF02 06:DEF2: 7A        .byte $7A   ; <z>
- - - - - - 0x01BF03 06:DEF3: 81        .byte $81   ; 
- - - - - - 0x01BF04 06:DEF4: 82        .byte $82   ; 
- - - - - - 0x01BF05 06:DEF5: 0E        .byte $0E   ; 
- - - - - - 0x01BF06 06:DEF6: 3A        .byte $3A   ; 
- - - - - - 0x01BF07 06:DEF7: 00        .byte $00   ; 
- - - - - - 0x01BF08 06:DEF8: 95        .byte $95   ; 
- - - - - - 0x01BF09 06:DEF9: 97        .byte $97   ; 
- - - - - - 0x01BF0A 06:DEFA: 9F        .byte $9F   ; 
- - - - - - 0x01BF0B 06:DEFB: 72        .byte $72   ; <r>
- - - - - - 0x01BF0C 06:DEFC: 7B        .byte $7B   ; 
- - - - - - 0x01BF0D 06:DEFD: 7C        .byte $7C   ; 
- - - - - - 0x01BF0E 06:DEFE: 7D        .byte $7D   ; 
- - - - - - 0x01BF0F 06:DEFF: 81        .byte $81   ; 
- - - - - - 0x01BF10 06:DF00: 82        .byte $82   ; 
- - - - - - 0x01BF11 06:DF01: 0E        .byte $0E   ; 
- - - - - - 0x01BF12 06:DF02: 3A        .byte $3A   ; 
- - - - - - 0x01BF13 06:DF03: 00        .byte $00   ; 
- - - - - - 0x01BF14 06:DF04: 9C        .byte $9C   ; 
- - - - - - 0x01BF15 06:DF05: 9D        .byte $9D   ; 
- - - - - - 0x01BF16 06:DF06: A2        .byte $A2   ; 
- - - - - - 0x01BF17 06:DF07: 84        .byte $84   ; 
- - - - - - 0x01BF18 06:DF08: 7E        .byte $7E   ; 
- - - - - - 0x01BF19 06:DF09: 7F        .byte $7F   ; 
- - - - - - 0x01BF1A 06:DF0A: 80        .byte $80   ; 
- - - - - - 0x01BF1B 06:DF0B: 81        .byte $81   ; 
- - - - - - 0x01BF1C 06:DF0C: 82        .byte $82   ; 
- - - - - - 0x01BF1D 06:DF0D: 0E        .byte $0E   ; 
- - - - - - 0x01BF1E 06:DF0E: 3A        .byte $3A   ; 
- - - - - - 0x01BF1F 06:DF0F: 00        .byte $00   ; 
- - - - - - 0x01BF20 06:DF10: 50        .byte $50   ; <P>
- - - - - - 0x01BF21 06:DF11: 50        .byte $50   ; <P>
- - - - - - 0x01BF22 06:DF12: 50        .byte $50   ; <P>
- - - - - - 0x01BF23 06:DF13: 50        .byte $50   ; <P>
- - - - - - 0x01BF24 06:DF14: 50        .byte $50   ; <P>
- - - - - - 0x01BF25 06:DF15: 50        .byte $50   ; <P>
- - - - - - 0x01BF26 06:DF16: 50        .byte $50   ; <P>
- - - - - - 0x01BF27 06:DF17: 50        .byte $50   ; <P>
- - - - - - 0x01BF28 06:DF18: 55        .byte $55   ; <U>
- - - - - - 0x01BF29 06:DF19: 55        .byte $55   ; <U>
- - - - - - 0x01BF2A 06:DF1A: 55        .byte $55   ; <U>
- - - - - - 0x01BF2B 06:DF1B: 55        .byte $55   ; <U>
- - - - - - 0x01BF2C 06:DF1C: 55        .byte $55   ; <U>
- - - - - - 0x01BF2D 06:DF1D: 55        .byte $55   ; <U>
- - - - - - 0x01BF2E 06:DF1E: 55        .byte $55   ; <U>
- - - - - - 0x01BF2F 06:DF1F: 55        .byte $55   ; <U>
- - - - - - 0x01BF30 06:DF20: 55        .byte $55   ; <U>
- - - - - - 0x01BF31 06:DF21: 55        .byte $55   ; <U>
- - - - - - 0x01BF32 06:DF22: 55        .byte $55   ; <U>
- - - - - - 0x01BF33 06:DF23: 55        .byte $55   ; <U>
- - - - - - 0x01BF34 06:DF24: 55        .byte $55   ; <U>
- - - - - - 0x01BF35 06:DF25: 55        .byte $55   ; <U>
- - - - - - 0x01BF36 06:DF26: 55        .byte $55   ; <U>
- - - - - - 0x01BF37 06:DF27: 55        .byte $55   ; <U>
- - - - - - 0x01BF38 06:DF28: 95        .byte $95   ; 
- - - - - - 0x01BF39 06:DF29: 65        .byte $65   ; <e>
- - - - - - 0x01BF3A 06:DF2A: 55        .byte $55   ; <U>
- - - - - - 0x01BF3B 06:DF2B: 55        .byte $55   ; <U>
- - - - - - 0x01BF3C 06:DF2C: 55        .byte $55   ; <U>
- - - - - - 0x01BF3D 06:DF2D: 55        .byte $55   ; <U>
- - - - - - 0x01BF3E 06:DF2E: 55        .byte $55   ; <U>
- - - - - - 0x01BF3F 06:DF2F: 55        .byte $55   ; <U>
- - - - - - 0x01BF40 06:DF30: 99        .byte $99   ; 
- - - - - - 0x01BF41 06:DF31: 66        .byte $66   ; <f>
- - - - - - 0x01BF42 06:DF32: 55        .byte $55   ; <U>
- - - - - - 0x01BF43 06:DF33: 55        .byte $55   ; <U>
- - - - - - 0x01BF44 06:DF34: 55        .byte $55   ; <U>
- - - - - - 0x01BF45 06:DF35: 55        .byte $55   ; <U>
- - - - - - 0x01BF46 06:DF36: 55        .byte $55   ; <U>
- - - - - - 0x01BF47 06:DF37: 55        .byte $55   ; <U>
- - - - - - 0x01BF48 06:DF38: 55        .byte $55   ; <U>
- - - - - - 0x01BF49 06:DF39: 55        .byte $55   ; <U>
- - - - - - 0x01BF4A 06:DF3A: 55        .byte $55   ; <U>
- - - - - - 0x01BF4B 06:DF3B: 55        .byte $55   ; <U>
- - - - - - 0x01BF4C 06:DF3C: 55        .byte $55   ; <U>
- - - - - - 0x01BF4D 06:DF3D: 55        .byte $55   ; <U>
- - - - - - 0x01BF4E 06:DF3E: 55        .byte $55   ; <U>
- - - - - - 0x01BF4F 06:DF3F: 55        .byte $55   ; <U>
- - - - - - 0x01BF50 06:DF40: 05        .byte $05   ; 
- - - - - - 0x01BF51 06:DF41: 05        .byte $05   ; 
- - - - - - 0x01BF52 06:DF42: 05        .byte $05   ; 
- - - - - - 0x01BF53 06:DF43: 05        .byte $05   ; 
- - - - - - 0x01BF54 06:DF44: 05        .byte $05   ; 
- - - - - - 0x01BF55 06:DF45: 05        .byte $05   ; 
- - - - - - 0x01BF56 06:DF46: 05        .byte $05   ; 
- - - - - - 0x01BF57 06:DF47: 05        .byte $05   ; 
- - - - - - 0x01BF58 06:DF48: 50        .byte $50   ; <P>
- - - - - - 0x01BF59 06:DF49: 50        .byte $50   ; <P>
- - - - - - 0x01BF5A 06:DF4A: 50        .byte $50   ; <P>
- - - - - - 0x01BF5B 06:DF4B: 50        .byte $50   ; <P>
- - - - - - 0x01BF5C 06:DF4C: 50        .byte $50   ; <P>
- - - - - - 0x01BF5D 06:DF4D: 50        .byte $50   ; <P>
- - - - - - 0x01BF5E 06:DF4E: 50        .byte $50   ; <P>
- - - - - - 0x01BF5F 06:DF4F: 50        .byte $50   ; <P>
- - - - - - 0x01BF60 06:DF50: 55        .byte $55   ; <U>
- - - - - - 0x01BF61 06:DF51: 55        .byte $55   ; <U>
- - - - - - 0x01BF62 06:DF52: 55        .byte $55   ; <U>
- - - - - - 0x01BF63 06:DF53: 95        .byte $95   ; 
- - - - - - 0x01BF64 06:DF54: A5        .byte $A5   ; 
- - - - - - 0x01BF65 06:DF55: A5        .byte $A5   ; 
- - - - - - 0x01BF66 06:DF56: 65        .byte $65   ; <e>
- - - - - - 0x01BF67 06:DF57: 55        .byte $55   ; <U>
- - - - - - 0x01BF68 06:DF58: 55        .byte $55   ; <U>
- - - - - - 0x01BF69 06:DF59: 55        .byte $55   ; <U>
- - - - - - 0x01BF6A 06:DF5A: 55        .byte $55   ; <U>
- - - - - - 0x01BF6B 06:DF5B: 99        .byte $99   ; 
- - - - - - 0x01BF6C 06:DF5C: 6A        .byte $6A   ; <j>
- - - - - - 0x01BF6D 06:DF5D: 9A        .byte $9A   ; 
- - - - - - 0x01BF6E 06:DF5E: 66        .byte $66   ; <f>
- - - - - - 0x01BF6F 06:DF5F: 55        .byte $55   ; <U>
- - - - - - 0x01BF70 06:DF60: 95        .byte $95   ; 
- - - - - - 0x01BF71 06:DF61: 65        .byte $65   ; <e>
- - - - - - 0x01BF72 06:DF62: 55        .byte $55   ; <U>
- - - - - - 0x01BF73 06:DF63: 99        .byte $99   ; 
- - - - - - 0x01BF74 06:DF64: AA        .byte $AA   ; 
- - - - - - 0x01BF75 06:DF65: AA        .byte $AA   ; 
- - - - - - 0x01BF76 06:DF66: 66        .byte $66   ; <f>
- - - - - - 0x01BF77 06:DF67: 55        .byte $55   ; <U>
- - - - - - 0x01BF78 06:DF68: 99        .byte $99   ; 
- - - - - - 0x01BF79 06:DF69: 66        .byte $66   ; <f>
- - - - - - 0x01BF7A 06:DF6A: AA        .byte $AA   ; 
- - - - - - 0x01BF7B 06:DF6B: AA        .byte $AA   ; 
- - - - - - 0x01BF7C 06:DF6C: AA        .byte $AA   ; 
- - - - - - 0x01BF7D 06:DF6D: AA        .byte $AA   ; 
- - - - - - 0x01BF7E 06:DF6E: AA        .byte $AA   ; 
- - - - - - 0x01BF7F 06:DF6F: AA        .byte $AA   ; 
- - - - - - 0x01BF80 06:DF70: 55        .byte $55   ; <U>
- - - - - - 0x01BF81 06:DF71: 55        .byte $55   ; <U>
- - - - - - 0x01BF82 06:DF72: 55        .byte $55   ; <U>
- - - - - - 0x01BF83 06:DF73: 55        .byte $55   ; <U>
- - - - - - 0x01BF84 06:DF74: 55        .byte $55   ; <U>
- - - - - - 0x01BF85 06:DF75: 55        .byte $55   ; <U>
- - - - - - 0x01BF86 06:DF76: 55        .byte $55   ; <U>
- - - - - - 0x01BF87 06:DF77: 55        .byte $55   ; <U>
- - - - - - 0x01BF88 06:DF78: 05        .byte $05   ; 
- - - - - - 0x01BF89 06:DF79: 05        .byte $05   ; 
- - - - - - 0x01BF8A 06:DF7A: 05        .byte $05   ; 
- - - - - - 0x01BF8B 06:DF7B: 05        .byte $05   ; 
- - - - - - 0x01BF8C 06:DF7C: 05        .byte $05   ; 
- - - - - - 0x01BF8D 06:DF7D: 05        .byte $05   ; 
- - - - - - 0x01BF8E 06:DF7E: 05        .byte $05   ; 
- - - - - - 0x01BF8F 06:DF7F: 05        .byte $05   ; 
- - - - - - 0x01BF90 06:DF80: 00        .byte $00   ; 
- - - - - - 0x01BF91 06:DF81: 80        .byte $80   ; 
- - - - - - 0x01BF92 06:DF82: F0        .byte $F0   ; 
- - - - - - 0x01BF93 06:DF83: F8        .byte $F8   ; 
- - - - - - 0x01BF94 06:DF84: F8        .byte $F8   ; 
- - - - - - 0x01BF95 06:DF85: F8        .byte $F8   ; 
- - - - - - 0x01BF96 06:DF86: F8        .byte $F8   ; 
- - - - - - 0x01BF97 06:DF87: F8        .byte $F8   ; 
- - - - - - 0x01BF98 06:DF88: 00        .byte $00   ; 
- - - - - - 0x01BF99 06:DF89: 80        .byte $80   ; 
- - - - - - 0x01BF9A 06:DF8A: 88        .byte $88   ; 
- - - - - - 0x01BF9B 06:DF8B: 84        .byte $84   ; 
- - - - - - 0x01BF9C 06:DF8C: 84        .byte $84   ; 
- - - - - - 0x01BF9D 06:DF8D: 84        .byte $84   ; 
- - - - - - 0x01BF9E 06:DF8E: 84        .byte $84   ; 
- - - - - - 0x01BF9F 06:DF8F: 84        .byte $84   ; 
- - - - - - 0x01BFA0 06:DF90: F8        .byte $F8   ; 
- - - - - - 0x01BFA1 06:DF91: F8        .byte $F8   ; 
- - - - - - 0x01BFA2 06:DF92: 78        .byte $78   ; <x>
- - - - - - 0x01BFA3 06:DF93: 78        .byte $78   ; <x>
- - - - - - 0x01BFA4 06:DF94: 70        .byte $70   ; <p>
- - - - - - 0x01BFA5 06:DF95: 00        .byte $00   ; 
- - - - - - 0x01BFA6 06:DF96: 00        .byte $00   ; 
- - - - - - 0x01BFA7 06:DF97: 00        .byte $00   ; 
- - - - - - 0x01BFA8 06:DF98: 84        .byte $84   ; 
- - - - - - 0x01BFA9 06:DF99: 84        .byte $84   ; 
- - - - - - 0x01BFAA 06:DF9A: 84        .byte $84   ; 
- - - - - - 0x01BFAB 06:DF9B: 84        .byte $84   ; 
- - - - - - 0x01BFAC 06:DF9C: 8C        .byte $8C   ; 
- - - - - - 0x01BFAD 06:DF9D: F0        .byte $F0   ; 
- - - - - - 0x01BFAE 06:DF9E: 00        .byte $00   ; 
- - - - - - 0x01BFAF 06:DF9F: 00        .byte $00   ; 
- - - - - - 0x01BFB0 06:DFA0: 00        .byte $00   ; 
- - - - - - 0x01BFB1 06:DFA1: 00        .byte $00   ; 
- - - - - - 0x01BFB2 06:DFA2: 00        .byte $00   ; 
- - - - - - 0x01BFB3 06:DFA3: F8        .byte $F8   ; 
- - - - - - 0x01BFB4 06:DFA4: 38        .byte $38   ; <8>
- - - - - - 0x01BFB5 06:DFA5: F8        .byte $F8   ; 
- - - - - - 0x01BFB6 06:DFA6: 38        .byte $38   ; <8>
- - - - - - 0x01BFB7 06:DFA7: F0        .byte $F0   ; 
- - - - - - 0x01BFB8 06:DFA8: 00        .byte $00   ; 
- - - - - - 0x01BFB9 06:DFA9: 00        .byte $00   ; 
- - - - - - 0x01BFBA 06:DFAA: F8        .byte $F8   ; 
- - - - - - 0x01BFBB 06:DFAB: 08        .byte $08   ; 
- - - - - - 0x01BFBC 06:DFAC: F0        .byte $F0   ; 
- - - - - - 0x01BFBD 06:DFAD: C0        .byte $C0   ; 
- - - - - - 0x01BFBE 06:DFAE: 08        .byte $08   ; 
- - - - - - 0x01BFBF 06:DFAF: F0        .byte $F0   ; 
- - - - - - 0x01BFC0 06:DFB0: 00        .byte $00   ; 
- - - - - - 0x01BFC1 06:DFB1: 00        .byte $00   ; 
- - - - - - 0x01BFC2 06:DFB2: 38        .byte $38   ; <8>
- - - - - - 0x01BFC3 06:DFB3: 7C        .byte $7C   ; 
- - - - - - 0x01BFC4 06:DFB4: 7C        .byte $7C   ; 
- - - - - - 0x01BFC5 06:DFB5: 7C        .byte $7C   ; 
- - - - - - 0x01BFC6 06:DFB6: 78        .byte $78   ; <x>
- - - - - - 0x01BFC7 06:DFB7: 7E        .byte $7E   ; 
- - - - - - 0x01BFC8 06:DFB8: 00        .byte $00   ; 
- - - - - - 0x01BFC9 06:DFB9: 00        .byte $00   ; 
- - - - - - 0x01BFCA 06:DFBA: 04        .byte $04   ; 
- - - - - - 0x01BFCB 06:DFBB: 02        .byte $02   ; 
- - - - - - 0x01BFCC 06:DFBC: 32        .byte $32   ; <2>
- - - - - - 0x01BFCD 06:DFBD: 1A        .byte $1A   ; 
- - - - - - 0x01BFCE 06:DFBE: 06        .byte $06   ; 
- - - - - - 0x01BFCF 06:DFBF: 7E        .byte $7E   ; 
- - - - - - 0x01BFD0 06:DFC0: 00        .byte $00   ; 
- - - - - - 0x01BFD1 06:DFC1: 00        .byte $00   ; 
- - - - - - 0x01BFD2 06:DFC2: 38        .byte $38   ; <8>
- - - - - - 0x01BFD3 06:DFC3: 7C        .byte $7C   ; 
- - - - - - 0x01BFD4 06:DFC4: 7C        .byte $7C   ; 
- - - - - - 0x01BFD5 06:DFC5: 7C        .byte $7C   ; 
- - - - - - 0x01BFD6 06:DFC6: 78        .byte $78   ; <x>
- - - - - - 0x01BFD7 06:DFC7: 7E        .byte $7E   ; 
- - - - - - 0x01BFD8 06:DFC8: 00        .byte $00   ; 
- - - - - - 0x01BFD9 06:DFC9: 00        .byte $00   ; 
- - - - - - 0x01BFDA 06:DFCA: 04        .byte $04   ; 
- - - - - - 0x01BFDB 06:DFCB: 02        .byte $02   ; 
- - - - - - 0x01BFDC 06:DFCC: 02        .byte $02   ; 
- - - - - - 0x01BFDD 06:DFCD: 02        .byte $02   ; 
- - - - - - 0x01BFDE 06:DFCE: 06        .byte $06   ; 
- - - - - - 0x01BFDF 06:DFCF: 7E        .byte $7E   ; 
- - - - - - 0x01BFE0 06:DFD0: 00        .byte $00   ; 
- - - - - - 0x01BFE1 06:DFD1: 2C        .byte $2C   ; 
- - - - - - 0x01BFE2 06:DFD2: 42        .byte $42   ; <B>
- - - - - - 0x01BFE3 06:DFD3: 58        .byte $58   ; <X>
- - - - - - 0x01BFE4 06:DFD4: 1A        .byte $1A   ; 
- - - - - - 0x01BFE5 06:DFD5: 42        .byte $42   ; <B>
- - - - - - 0x01BFE6 06:DFD6: 34        .byte $34   ; <4>
- - - - - - 0x01BFE7 06:DFD7: 00        .byte $00   ; 
- - - - - - 0x01BFE8 06:DFD8: 00        .byte $00   ; 
- - - - - - 0x01BFE9 06:DFD9: 3C        .byte $3C   ; 
- - - - - - 0x01BFEA 06:DFDA: 7E        .byte $7E   ; 
- - - - - - 0x01BFEB 06:DFDB: 66        .byte $66   ; <f>
- - - - - - 0x01BFEC 06:DFDC: 66        .byte $66   ; <f>
- - - - - - 0x01BFED 06:DFDD: 7E        .byte $7E   ; 
- - - - - - 0x01BFEE 06:DFDE: 3C        .byte $3C   ; 
- - - - - - 0x01BFEF 06:DFDF: 00        .byte $00   ; 
- - - - - - 0x01BFF0 06:DFE0: 08        .byte $08   ; 
- - - - - - 0x01BFF1 06:DFE1: 66        .byte $66   ; <f>
- - - - - - 0x01BFF2 06:DFE2: 5A        .byte $5A   ; <Z>
- - - - - - 0x01BFF3 06:DFE3: BC        .byte $BC   ; 
- - - - - - 0x01BFF4 06:DFE4: 3D        .byte $3D   ; 
- - - - - - 0x01BFF5 06:DFE5: 5A        .byte $5A   ; <Z>
- - - - - - 0x01BFF6 06:DFE6: 66        .byte $66   ; <f>
- - - - - - 0x01BFF7 06:DFE7: 10        .byte $10   ; 
- - - - - - 0x01BFF8 06:DFE8: 18        .byte $18   ; 
- - - - - - 0x01BFF9 06:DFE9: 7E        .byte $7E   ; 
- - - - - - 0x01BFFA 06:DFEA: 66        .byte $66   ; <f>
- - - - - - 0x01BFFB 06:DFEB: C3        .byte $C3   ; 
- - - - - - 0x01BFFC 06:DFEC: C3        .byte $C3   ; 
- - - - - - 0x01BFFD 06:DFED: 66        .byte $66   ; <f>
- - - - - - 0x01BFFE 06:DFEE: 7E        .byte $7E   ; 
- - - - - - 0x01BFFF 06:DFEF: 18        .byte $18   ; 
- - - - - - 0x01C000 06:DFF0: 00        .byte $00   ; 
- - - - - - 0x01C001 06:DFF1: 00        .byte $00   ; 
- - - - - - 0x01C002 06:DFF2: 00        .byte $00   ; 
- - - - - - 0x01C003 06:DFF3: 00        .byte $00   ; 
- - - - - - 0x01C004 06:DFF4: 00        .byte $00   ; 
- - - - - - 0x01C005 06:DFF5: 00        .byte $00   ; 
- - - - - - 0x01C006 06:DFF6: 00        .byte $00   ; 
- - - - - - 0x01C007 06:DFF7: 00        .byte $00   ; 
- - - - - - 0x01C008 06:DFF8: 00        .byte $00   ; 
- - - - - - 0x01C009 06:DFF9: 00        .byte $00   ; 
- - - - - - 0x01C00A 06:DFFA: 00        .byte $00   ; 
- - - - - - 0x01C00B 06:DFFB: 00        .byte $00   ; 
- - - - - - 0x01C00C 06:DFFC: 00        .byte $00   ; 
- - - - - - 0x01C00D 06:DFFD: 00        .byte $00   ; 
- - - - - - 0x01C00E 06:DFFE: 00        .byte $00   ; 
- - - - - - 0x01C00F 06:DFFF: 00        .byte $00   ; 



