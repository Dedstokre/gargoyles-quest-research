; Disassembly of "gargoyles_quest.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp   Jump_000_09A7                            ; $0000: $C3 $A7 $09


Jump_000_0003:
    nop                                           ; $0003: $00

Call_000_0004:
Jump_000_0004:
    nop                                           ; $0004: $00

Call_000_0005:
Jump_000_0005:
    nop                                           ; $0005: $00
    nop                                           ; $0006: $00
    nop                                           ; $0007: $00

RST_08::
    ld   a, [hl+]                                 ; $0008: $2A

Call_000_0009:
    ld   [de], a                                  ; $0009: $12
    inc  e                                        ; $000A: $1C
    ret                                           ; $000B: $C9


    nop                                           ; $000C: $00

Call_000_000D:
    nop                                           ; $000D: $00
    nop                                           ; $000E: $00
    nop                                           ; $000F: $00

WriteBgMapTilePair::
    ld   [hl+], a                                 ; $0010: $22
    inc  a                                        ; $0011: $3C

Call_000_0012:
    ld   [hl], a                                  ; $0012: $77
    inc  a                                        ; $0013: $3C
    add  hl, bc                                   ; $0014: $09
    push af                                       ; $0015: $F5
    ld   a, h                                     ; $0016: $7C
    db   $E6                                      ; $0017: $E6

RST_18::
    ei                                            ; $0018: $FB
    ld   h, a                                     ; $0019: $67
    pop  af                                       ; $001A: $F1
    ret                                           ; $001B: $C9


    nop                                           ; $001C: $00
    nop                                           ; $001D: $00
    nop                                           ; $001E: $00
    nop                                           ; $001F: $00

RST_20::
    ld   a, e                                     ; $0020: $7B
    add  $08                                      ; $0021: $C6 $08
    ld   e, a                                     ; $0023: $5F
    ret                                           ; $0024: $C9


    nop                                           ; $0025: $00
    nop                                           ; $0026: $00
    nop                                           ; $0027: $00

RST_28::
    push hl                                       ; $0028: $E5
    push de                                       ; $0029: $D5
    push bc                                       ; $002A: $C5
    call CallBank3_4003PreserveBank               ; $002B: $CD $F8 $0B
    pop  bc                                       ; $002E: $C1
    pop  de                                       ; $002F: $D1

RST_30::
    pop  hl                                       ; $0030: $E1
    ret                                           ; $0031: $C9


    nop                                           ; $0032: $00
    nop                                           ; $0033: $00
    nop                                           ; $0034: $00
    nop                                           ; $0035: $00
    nop                                           ; $0036: $00
    nop                                           ; $0037: $00

RST_38::
    nop                                           ; $0038: $00
    nop                                           ; $0039: $00
    nop                                           ; $003A: $00

Call_000_003B:
    nop                                           ; $003B: $00
    nop                                           ; $003C: $00
    nop                                           ; $003D: $00
    nop                                           ; $003E: $00
    nop                                           ; $003F: $00

VBlankVector::
    jp   VBlankISR                                ; $0040: $C3 $B7 $09


    nop                                           ; $0043: $00

Call_000_0044:
    jp   Jump_000_00B0                            ; $0044: $C3 $B0 $00


    nop                                           ; $0047: $00

LCDCInterrupt::
    reti                                          ; $0048: $D9


Call_000_0049:
    jp   MemoryFill                               ; $0049: $C3 $AE $0B


Call_000_004C:
    jp   Jump_000_0BA8                            ; $004C: $C3 $A8 $0B


    nop                                           ; $004F: $00

TimerOverflowInterrupt::
    reti                                          ; $0050: $D9


Call_000_0051:
Jump_000_0051:
    call Call_000_05C7                            ; $0051: $CD $C7 $05
    jp   Jump_000_00ED                            ; $0054: $C3 $ED $00


    nop                                           ; $0057: $00

SerialTransferCompleteInterrupt::
    reti                                          ; $0058: $D9


Call_000_0059:
    call Call_000_05B2                            ; $0059: $CD $B2 $05
    jp   Jump_000_00ED                            ; $005C: $C3 $ED $00


    nop                                           ; $005F: $00

JoypadTransitionInterrupt::
    reti                                          ; $0060: $D9


SetObjectAnimationIfChanged::
    push hl                                       ; $0061: $E5
    ld   hl, $C20E                                ; $0062: $21 $0E $C2
    add  h                                        ; $0065: $84
    ld   h, a                                     ; $0066: $67
    ld   a, b                                     ; $0067: $78

    cp   [hl]                                     ; $0068: $BE
    jr   z, jr_000_006F                           ; $0069: $28 $04

    ld   [hl+], a                                 ; $006B: $22
    xor  a                                        ; $006C: $AF
    ld   [hl+], a                                 ; $006D: $22
    ld   [hl], a                                  ; $006E: $77

jr_000_006F:
    pop  hl                                       ; $006F: $E1
    ret                                           ; $0070: $C9


AddAToHL::
    add  l                                        ; $0071: $85
    ld   l, a                                     ; $0072: $6F
    ret  nc                                       ; $0073: $D0

    inc  h                                        ; $0074: $24
    ret                                           ; $0075: $C9


    nop                                           ; $0076: $00
    nop                                           ; $0077: $00
    nop                                           ; $0078: $00
    nop                                           ; $0079: $00
    nop                                           ; $007A: $00
    nop                                           ; $007B: $00
    nop                                           ; $007C: $00
    nop                                           ; $007D: $00
    nop                                           ; $007E: $00
    nop                                           ; $007F: $00
    nop                                           ; $0080: $00

Add2AToHL::
    push bc                                       ; $0081: $C5
    ld   b, $00                                   ; $0082: $06 $00
    sla  a                                        ; $0084: $CB $27
    rl   b                                        ; $0086: $CB $10
    ld   c, a                                     ; $0088: $4F
    add  hl, bc                                   ; $0089: $09
    pop  bc                                       ; $008A: $C1
    ret                                           ; $008B: $C9


    nop                                           ; $008C: $00
    nop                                           ; $008D: $00
    nop                                           ; $008E: $00
    nop                                           ; $008F: $00

WaitForRequestedVBlank::
    xor  a                                        ; $0090: $AF
    ld   [$C267], a                               ; $0091: $EA $67 $C2
    halt                                          ; $0094: $76
    ret                                           ; $0095: $C9


    nop                                           ; $0096: $00
    nop                                           ; $0097: $00
    nop                                           ; $0098: $00
    nop                                           ; $0099: $00
    nop                                           ; $009A: $00
    nop                                           ; $009B: $00
    nop                                           ; $009C: $00
    nop                                           ; $009D: $00
    nop                                           ; $009E: $00
    nop                                           ; $009F: $00

Call_000_00A0:
    call EnableLcdAndInterrupts                   ; $00A0: $CD $A1 $0B
    call DisableLcdSafely                         ; $00A3: $CD $86 $0B
    ld   a, $03                                   ; $00A6: $3E $03
    ld   [$3000], a                               ; $00A8: $EA $00 $30
    jp   $4000                                    ; $00AB: $C3 $00 $40


    nop                                           ; $00AE: $00
    nop                                           ; $00AF: $00

Call_000_00B0:
Jump_000_00B0:
    push hl                                       ; $00B0: $E5
    push de                                       ; $00B1: $D5
    push bc                                       ; $00B2: $C5
    ld   b, $A0                                   ; $00B3: $06 $A0
    xor  a                                        ; $00B5: $AF
    ld   hl, $C000                                ; $00B6: $21 $00 $C0

jr_000_00B9:
    ld   [hl+], a                                 ; $00B9: $22
    dec  b                                        ; $00BA: $05
    jr   nz, jr_000_00B9                          ; $00BB: $20 $FC

    ld   [$C26C], a                               ; $00BD: $EA $6C $C2
    pop  hl                                       ; $00C0: $E1
    pop  de                                       ; $00C1: $D1
    pop  bc                                       ; $00C2: $C1
    ret                                           ; $00C3: $C9


    nop                                           ; $00C4: $00
    nop                                           ; $00C5: $00
    nop                                           ; $00C6: $00
    nop                                           ; $00C7: $00

Call_000_00C8:
    ld   hl, GraphicsSetPointerTable              ; $00C8: $21 $A6 $19

Jump_000_00CB:
    call LoadGraphicsDescriptorList               ; $00CB: $CD $5B $19

Call_000_00CE:
    jr   jr_000_00ED                              ; $00CE: $18 $1D

Call_000_00D0:
Jump_000_00D0:
jr_000_00D0:
    push af                                       ; $00D0: $F5
    call WaitForRequestedVBlank                   ; $00D1: $CD $90 $00

Call_000_00D4:
    pop  af                                       ; $00D4: $F1
    dec  a                                        ; $00D5: $3D
    jr   nz, jr_000_00D0                          ; $00D6: $20 $F8

    ret                                           ; $00D8: $C9


    nop                                           ; $00D9: $00
    nop                                           ; $00DA: $00
    nop                                           ; $00DB: $00

Call_000_00DC:
    nop                                           ; $00DC: $00
    nop                                           ; $00DD: $00
    nop                                           ; $00DE: $00
    nop                                           ; $00DF: $00

Call_000_00E0:
    call WaitForRequestedVBlank                   ; $00E0: $CD $90 $00
    jr   jr_000_00ED                              ; $00E3: $18 $08

Call_000_00E5:
    call DisableLcdSafely                         ; $00E5: $CD $86 $0B
    jr   jr_000_00ED                              ; $00E8: $18 $03

    call ExpandFont1bppTo2bpp                     ; $00EA: $CD $8B $19

Jump_000_00ED:
jr_000_00ED:
    ld   a, $02                                   ; $00ED: $3E $02
    ld   [$C3C5], a                               ; $00EF: $EA $C5 $C3
    ld   [$3000], a                               ; $00F2: $EA $00 $30
    ret                                           ; $00F5: $C9


    nop                                           ; $00F6: $00
    nop                                           ; $00F7: $00
    nop                                           ; $00F8: $00
    nop                                           ; $00F9: $00
    nop                                           ; $00FA: $00
    nop                                           ; $00FB: $00
    nop                                           ; $00FC: $00
    nop                                           ; $00FD: $00
    nop                                           ; $00FE: $00
    nop                                           ; $00FF: $00

Boot::
    nop                                           ; $0100: $00

Call_000_0101:
    jp   BootInit                                 ; $0101: $C3 $50 $01


HeaderLogo::
    db   $CE, $ED, $66, $66, $CC, $0D, $00, $0B, $03, $73, $00, $83, $00, $0C, $00, $0D
    db   $00, $08, $11, $1F, $88, $89, $00, $0E, $DC, $CC, $6E, $E6, $DD, $DD, $D9, $99
    db   $BB, $BB, $67, $63, $6E, $0E, $EC, $CC, $DD, $DC, $99, $9F, $BB, $B9, $33, $3E

HeaderTitle::
    db   "GARGOYLE'S", $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db   $00, $00

HeaderSGBFlag::
    db   $00

HeaderCartridgeType::
    db   $01

HeaderROMSize::
    db   $02

HeaderRAMSize::
    db   $00

HeaderDestinationCode::
    db   $01

HeaderOldLicenseeCode::
    db   $08

HeaderMaskROMVersion::
    db   $00

HeaderComplementCheck::
    db   $07

HeaderGlobalChecksum::
    db   $69, $3A

BootInit::
    ld   hl, $C000                                ; $0150: $21 $00 $C0
    ld   bc, $2000                                ; $0153: $01 $00 $20
    xor  a                                        ; $0156: $AF

jr_000_0157:
    ld   [hl+], a                                 ; $0157: $22
    dec  c                                        ; $0158: $0D
    jr   nz, jr_000_0157                          ; $0159: $20 $FC

    dec  b                                        ; $015B: $05
    jr   nz, jr_000_0157                          ; $015C: $20 $F9

    ld   sp, $C0FF                                ; $015E: $31 $FF $C0
    call InstallOamDmaRoutine                     ; $0161: $CD $65 $0B
    ld   a, $F0                                   ; $0164: $3E $F0
    rst  RST_28                                   ; $0166: $EF
    ld   a, $01                                   ; $0167: $3E $01
    ldh  [rIE], a                                 ; $0169: $E0 $FF
    ld   [$C269], a                               ; $016B: $EA $69 $C2
    call DisableLcdSafely                         ; $016E: $CD $86 $0B
    call ExpandFont1bppTo2bpp                     ; $0171: $CD $8B $19
    ld   b, $14                                   ; $0174: $06 $14
    call SetQueuedDataSelectionId                 ; $0176: $CD $64 $1F
    ld   a, $02                                   ; $0179: $3E $02
    ld   [$C3C5], a                               ; $017B: $EA $C5 $C3
    ld   [$3000], a                               ; $017E: $EA $00 $30
    xor  a                                        ; $0181: $AF
    ld   [$DF39], a                               ; $0182: $EA $39 $DF
    call $4003                                    ; $0185: $CD $03 $40
    call Call_000_00B0                            ; $0188: $CD $B0 $00
    call Call_000_05C7                            ; $018B: $CD $C7 $05
    ld   a, $40                                   ; $018E: $3E $40
    call Call_000_00D0                            ; $0190: $CD $D0 $00
    call DisableLcdSafely                         ; $0193: $CD $86 $0B
    xor  a                                        ; $0196: $AF
    ld   [$DF08], a                               ; $0197: $EA $08 $DF
    ld   [$DF09], a                               ; $019A: $EA $09 $DF
    ld   a, $01                                   ; $019D: $3E $01
    ld   [$DF01], a                               ; $019F: $EA $01 $DF
    ld   [$DF0B], a                               ; $01A2: $EA $0B $DF
    ld   a, $C3                                   ; $01A5: $3E $C3
    ld   [$DF0A], a                               ; $01A7: $EA $0A $DF
    ld   a, [$C7C0]                               ; $01AA: $FA $C0 $C7
    rrca                                          ; $01AD: $0F
    jr   c, jr_000_01DE                           ; $01AE: $38 $2E

    ld   a, $02                                   ; $01B0: $3E $02
    ld   [$DF15], a                               ; $01B2: $EA $15 $DF
    xor  a                                        ; $01B5: $AF
    ld   [$DF14], a                               ; $01B6: $EA $14 $DF

Call_000_01B9:
    ld   [$DF0E], a                               ; $01B9: $EA $0E $DF
    ld   [$DF13], a                               ; $01BC: $EA $13 $DF

Jump_000_01BF:
    ld   [$DF19], a                               ; $01BF: $EA $19 $DF
    ld   [$DF18], a                               ; $01C2: $EA $18 $DF
    ld   [$DF1B], a                               ; $01C5: $EA $1B $DF
    ld   [$DF1A], a                               ; $01C8: $EA $1A $DF
    ld   a, $07                                   ; $01CB: $3E $07
    ld   [$DF03], a                               ; $01CD: $EA $03 $DF
    ld   [$DF04], a                               ; $01D0: $EA $04 $DF
    ld   a, $01                                   ; $01D3: $3E $01
    ld   [$DF17], a                               ; $01D5: $EA $17 $DF
    xor  a                                        ; $01D8: $AF
    ld   [$DF07], a                               ; $01D9: $EA $07 $DF
    jr   StageSetupRamClear                       ; $01DC: $18 $03

jr_000_01DE:
    call Call_000_25FF                            ; $01DE: $CD $FF $25

StageSetupRamClear::
    call Call_000_00A0                            ; $01E1: $CD $A0 $00
    ld   hl, $C000                                ; $01E4: $21 $00 $C0
    ld   bc, $0800                                ; $01E7: $01 $00 $08
    xor  a                                        ; $01EA: $AF

jr_000_01EB:
    ld   [hl+], a                                 ; $01EB: $22

ClearWRAMC000C7FF::
    dec  c                                        ; $01EC: $0D
    jr   nz, jr_000_01EB                          ; $01ED: $20 $FC

    dec  b                                        ; $01EF: $05
    jr   nz, jr_000_01EB                          ; $01F0: $20 $F9

    call Call_000_00A0                            ; $01F2: $CD $A0 $00
    ld   hl, $C800                                ; $01F5: $21 $00 $C8
    ld   bc, $0800                                ; $01F8: $01 $00 $08
    xor  a                                        ; $01FB: $AF
    call MemoryFill                               ; $01FC: $CD $AE $0B
    call Call_000_00A0                            ; $01FF: $CD $A0 $00
    ld   hl, $D000                                ; $0202: $21 $00 $D0
    ld   bc, $0A00                                ; $0205: $01 $00 $0A
    xor  a                                        ; $0208: $AF

Call_000_0209:
    call MemoryFill                               ; $0209: $CD $AE $0B
    call Call_000_00A0                            ; $020C: $CD $A0 $00
    ld   sp, $C0FF                                ; $020F: $31 $FF $C0
    ld   a, [$DF01]                               ; $0212: $FA $01 $DF
    bit  1, a                                     ; $0215: $CB $4F
    jr   nz, jr_000_0229                          ; $0217: $20 $10

    rlca                                          ; $0219: $07
    jr   nz, jr_000_0229                          ; $021A: $20 $0D

    ld   a, [$DF33]                               ; $021C: $FA $33 $DF
    and  a                                        ; $021F: $A7
    jr   nz, jr_000_0229                          ; $0220: $20 $07

    ld   a, [$DF09]                               ; $0222: $FA $09 $DF
    bit  0, a                                     ; $0225: $CB $47
    jr   nz, jr_000_0230                          ; $0227: $20 $07

jr_000_0229:
    call LoadSceneGraphics                        ; $0229: $CD $31 $19
    xor  a                                        ; $022C: $AF
    ld   [$DF33], a                               ; $022D: $EA $33 $DF

jr_000_0230:
    call ClearBgMaps                              ; $0230: $CD $A7 $0B
    call Call_000_00A0                            ; $0233: $CD $A0 $00
    call Call_000_0C10                            ; $0236: $CD $10 $0C
    call Call_000_00A0                            ; $0239: $CD $A0 $00
    call Call_000_00B0                            ; $023C: $CD $B0 $00
    ld   a, $07                                   ; $023F: $3E $07
    ld   [$C361], a                               ; $0241: $EA $61 $C3
    ldh  [rSCX], a                                ; $0244: $E0 $43
    xor  a                                        ; $0246: $AF
    ldh  [rBGP], a                                ; $0247: $E0 $47
    ldh  [rOBP0], a                               ; $0249: $E0 $48
    ldh  [rOBP1], a                               ; $024B: $E0 $49
    call $031F                                    ; $024D: $CD $1F $03
    call Call_000_00A0                            ; $0250: $CD $A0 $00
    ld   b, $90                                   ; $0253: $06 $90
    ld   a, [$DF01]                               ; $0255: $FA $01 $DF
    bit  0, a                                     ; $0258: $CB $47
    jr   nz, jr_000_025E                          ; $025A: $20 $02

    ld   b, $80                                   ; $025C: $06 $80

jr_000_025E:
    ld   a, b                                     ; $025E: $78
    ld   [$C360], a                               ; $025F: $EA $60 $C3
    ldh  [rWY], a                                 ; $0262: $E0 $4A
    ld   b, $E3                                   ; $0264: $06 $E3
    ld   a, b                                     ; $0266: $78
    ldh  [rLCDC], a                               ; $0267: $E0 $40
    ei                                            ; $0269: $FB
    halt                                          ; $026A: $76
    ld   a, [$DF01]                               ; $026B: $FA $01 $DF
    rrca                                          ; $026E: $0F
    jp   c, Jump_000_06CB                         ; $026F: $DA $CB $06

    ld   hl, $02E8                                ; $0272: $21 $E8 $02
    ld   a, [$DF02]                               ; $0275: $FA $02 $DF
    call AddAToHL                                 ; $0278: $CD $71 $00
    ld   a, [hl]                                  ; $027B: $7E
    rst  RST_28                                   ; $027C: $EF
    ld   b, $68                                   ; $027D: $06 $68
    ld   a, $F5                                   ; $027F: $3E $F5
    rst  RST_28                                   ; $0281: $EF
    ld   a, [$DF02]                               ; $0282: $FA $02 $DF
    cp   $19                                      ; $0285: $FE $19
    jr   nc, jr_000_028E                          ; $0287: $30 $05

    call Call_000_08C6                            ; $0289: $CD $C6 $08
    jr   jr_000_0299                              ; $028C: $18 $0B

jr_000_028E:
    ld   a, $01                                   ; $028E: $3E $01
    ld   [$C3C5], a                               ; $0290: $EA $C5 $C3
    ld   [$3000], a                               ; $0293: $EA $00 $30
    call $4EE8                                    ; $0296: $CD $E8 $4E

jr_000_0299:
    ld   b, $8F                                   ; $0299: $06 $8F
    call SetQueuedDataSelectionId                 ; $029B: $CD $64 $1F
    call Call_000_1F55                            ; $029E: $CD $55 $1F
    ld   hl, $02C5                                ; $02A1: $21 $C5 $02
    ld   a, [$DF02]                               ; $02A4: $FA $02 $DF
    call AddAToHL                                 ; $02A7: $CD $71 $00
    ld   b, [hl]                                  ; $02AA: $46
    call Call_000_2039                            ; $02AB: $CD $39 $20
    ld   a, $31                                   ; $02AE: $3E $31
    ld   [$C200], a                               ; $02B0: $EA $00 $C2
    call Call_000_23B9                            ; $02B3: $CD $B9 $23
    call Call_000_0972                            ; $02B6: $CD $72 $09
    call Call_000_05B2                            ; $02B9: $CD $B2 $05
    call Call_000_246B                            ; $02BC: $CD $6B $24

Jump_000_02BF:
    call Call_000_2178                            ; $02BF: $CD $78 $21
    jp   Jump_000_0789                            ; $02C2: $C3 $89 $07


    ld   bc, $0300                                ; $02C5: $01 $00 $03
    nop                                           ; $02C8: $00
    dec  b                                        ; $02C9: $05
    rlca                                          ; $02CA: $07
    inc  b                                        ; $02CB: $04
    inc  b                                        ; $02CC: $04
    nop                                           ; $02CD: $00
    nop                                           ; $02CE: $00
    inc  b                                        ; $02CF: $04
    inc  b                                        ; $02D0: $04
    nop                                           ; $02D1: $00
    inc  b                                        ; $02D2: $04
    inc  b                                        ; $02D3: $04

Jump_000_02D4:
    ld   b, $06                                   ; $02D4: $06 $06
    nop                                           ; $02D6: $00
    nop                                           ; $02D7: $00
    nop                                           ; $02D8: $00
    nop                                           ; $02D9: $00
    nop                                           ; $02DA: $00
    nop                                           ; $02DB: $00
    nop                                           ; $02DC: $00
    nop                                           ; $02DD: $00
    nop                                           ; $02DE: $00
    nop                                           ; $02DF: $00
    nop                                           ; $02E0: $00
    nop                                           ; $02E1: $00
    nop                                           ; $02E2: $00
    nop                                           ; $02E3: $00
    nop                                           ; $02E4: $00
    nop                                           ; $02E5: $00
    nop                                           ; $02E6: $00
    ld   bc, $0403                                ; $02E7: $01 $03 $04
    dec  b                                        ; $02EA: $05
    ld   b, $07                                   ; $02EB: $06 $07

jr_000_02ED:
    ld   [$0B0B], sp                              ; $02ED: $08 $0B $0B
    dec  bc                                       ; $02F0: $0B
    dec  bc                                       ; $02F1: $0B
    dec  bc                                       ; $02F2: $0B
    dec  bc                                       ; $02F3: $0B
    dec  bc                                       ; $02F4: $0B
    dec  bc                                       ; $02F5: $0B
    dec  bc                                       ; $02F6: $0B
    dec  bc                                       ; $02F7: $0B
    dec  bc                                       ; $02F8: $0B
    dec  bc                                       ; $02F9: $0B
    dec  bc                                       ; $02FA: $0B
    dec  bc                                       ; $02FB: $0B
    dec  bc                                       ; $02FC: $0B
    dec  bc                                       ; $02FD: $0B
    dec  bc                                       ; $02FE: $0B
    dec  bc                                       ; $02FF: $0B
    dec  bc                                       ; $0300: $0B
    add  hl, bc                                   ; $0301: $09
    add  hl, bc                                   ; $0302: $09
    add  hl, bc                                   ; $0303: $09
    add  hl, bc                                   ; $0304: $09
    add  hl, bc                                   ; $0305: $09
    add  hl, bc                                   ; $0306: $09
    add  hl, bc                                   ; $0307: $09
    add  hl, bc                                   ; $0308: $09
    db   $10                                      ; $0309: $10
    ldh  a, [rLCDC]                               ; $030A: $F0 $40
    add  b                                        ; $030C: $80
    nop                                           ; $030D: $00
    nop                                           ; $030E: $00
    ld   [bc], a                                  ; $030F: $02
    add  b                                        ; $0310: $80
    inc  bc                                       ; $0311: $03
    nop                                           ; $0312: $00
    inc  bc                                       ; $0313: $03
    add  b                                        ; $0314: $80
    inc  b                                        ; $0315: $04
    nop                                           ; $0316: $00
    ld   bc, $0220                                ; $0317: $01 $20 $02
    jr   nz, jr_000_031E                          ; $031A: $20 $02

    jr   nz, @+$03                                ; $031C: $20 $01

jr_000_031E:
    jr   nz, jr_000_02ED                          ; $031E: $20 $CD

    cp   $22                                      ; $0320: $FE $22
    xor  a                                        ; $0322: $AF
    ld   [$C288], a                               ; $0323: $EA $88 $C2
    ld   a, [$DF15]                               ; $0326: $FA $15 $DF
    ld   [$C20A], a                               ; $0329: $EA $0A $C2
    ld   a, [$DF13]                               ; $032C: $FA $13 $DF
    ld   hl, $030B                                ; $032F: $21 $0B $03
    call AddAToHL                                 ; $0332: $CD $71 $00
    ld   a, [hl]                                  ; $0335: $7E
    ld   [$DF11], a                               ; $0336: $EA $11 $DF
    dec  a                                        ; $0339: $3D
    ld   [$DF12], a                               ; $033A: $EA $12 $DF
    call Call_000_06A6                            ; $033D: $CD $A6 $06
    ld   a, [$DF07]                               ; $0340: $FA $07 $DF
    bit  1, a                                     ; $0343: $CB $4F
    jr   nz, jr_000_0355                          ; $0345: $20 $0E

    ld   hl, $0543                                ; $0347: $21 $43 $05
    ld   d, $00                                   ; $034A: $16 $00
    ld   a, [$DF03]                               ; $034C: $FA $03 $DF
    ld   e, a                                     ; $034F: $5F
    add  hl, de                                   ; $0350: $19
    ld   a, [hl]                                  ; $0351: $7E
    ld   [$C399], a                               ; $0352: $EA $99 $C3

jr_000_0355:
    ld   a, $80                                   ; $0355: $3E $80
    ld   [$C3C3], a                               ; $0357: $EA $C3 $C3
    call Call_000_1DEF                            ; $035A: $CD $EF $1D
    ld   a, $01                                   ; $035D: $3E $01
    ld   [$3000], a                               ; $035F: $EA $00 $30
    ld   a, $02                                   ; $0362: $3E $02
    ld   [$3000], a                               ; $0364: $EA $00 $30
    call $6860                                    ; $0367: $CD $60 $68
    ld   a, [$DF01]                               ; $036A: $FA $01 $DF
    bit  0, a                                     ; $036D: $CB $47
    jr   z, jr_000_038A                           ; $036F: $28 $19

    ld   a, [$DF07]                               ; $0371: $FA $07 $DF
    bit  1, a                                     ; $0374: $CB $4F
    ret  nz                                       ; $0376: $C0

    ld   a, $08                                   ; $0377: $3E $08
    ld   [$C3A9], a                               ; $0379: $EA $A9 $C3
    ld   bc, $04E9                                ; $037C: $01 $E9 $04
    ld   hl, $048F                                ; $037F: $21 $8F $04
    ld   a, [$DF03]                               ; $0382: $FA $03 $DF
    ld   [$DF00], a                               ; $0385: $EA $00 $DF
    jr   jr_000_03A3                              ; $0388: $18 $19

jr_000_038A:
    ld   bc, $043D                                ; $038A: $01 $3D $04
    ld   hl, $03EB                                ; $038D: $21 $EB $03
    ld   a, [$DF06]                               ; $0390: $FA $06 $DF
    bit  0, a                                     ; $0393: $CB $47
    jr   z, jr_000_039D                           ; $0395: $28 $06

    ld   bc, $0483                                ; $0397: $01 $83 $04
    ld   hl, $0431                                ; $039A: $21 $31 $04

jr_000_039D:
    ld   a, [$DF02]                               ; $039D: $FA $02 $DF
    ld   [$DF00], a                               ; $03A0: $EA $00 $DF

jr_000_03A3:
    ld   d, $00                                   ; $03A3: $16 $00
    ld   a, [$DF00]                               ; $03A5: $FA $00 $DF
    rlca                                          ; $03A8: $07
    ld   e, a                                     ; $03A9: $5F
    add  hl, de                                   ; $03AA: $19
    ld   a, [hl+]                                 ; $03AB: $2A
    ld   [$C364], a                               ; $03AC: $EA $64 $C3
    ld   [$C366], a                               ; $03AF: $EA $66 $C3
    ld   a, [hl]                                  ; $03B2: $7E
    ld   [$C362], a                               ; $03B3: $EA $62 $C3
    ld   [$C367], a                               ; $03B6: $EA $67 $C3
    ld   h, b                                     ; $03B9: $60
    ld   l, c                                     ; $03BA: $69
    ld   a, [$DF00]                               ; $03BB: $FA $00 $DF
    rlca                                          ; $03BE: $07
    ld   e, a                                     ; $03BF: $5F
    add  hl, de                                   ; $03C0: $19
    ld   a, [hl+]                                 ; $03C1: $2A
    ld   [$C206], a                               ; $03C2: $EA $06 $C2
    ld   [$C368], a                               ; $03C5: $EA $68 $C3
    ld   a, [hl]                                  ; $03C8: $7E
    ld   [$C203], a                               ; $03C9: $EA $03 $C2
    ld   [$C369], a                               ; $03CC: $EA $69 $C3
    ld   a, [$C364]                               ; $03CF: $FA $64 $C3
    add  $58                                      ; $03D2: $C6 $58
    jr   nc, jr_000_03DD                          ; $03D4: $30 $07

    ld   a, [$C207]                               ; $03D6: $FA $07 $C2
    inc  a                                        ; $03D9: $3C
    ld   [$C207], a                               ; $03DA: $EA $07 $C2

jr_000_03DD:
    ld   a, [$C362]                               ; $03DD: $FA $62 $C3
    add  $50                                      ; $03E0: $C6 $50
    ret  nc                                       ; $03E2: $D0

    ld   a, [$C204]                               ; $03E3: $FA $04 $C2

jr_000_03E6:
    inc  a                                        ; $03E6: $3C
    ld   [$C204], a                               ; $03E7: $EA $04 $C2

jr_000_03EA:
    ret                                           ; $03EA: $C9


    nop                                           ; $03EB: $00
    add  b                                        ; $03EC: $80
    nop                                           ; $03ED: $00

jr_000_03EE:
    add  b                                        ; $03EE: $80
    nop                                           ; $03EF: $00
    add  b                                        ; $03F0: $80
    nop                                           ; $03F1: $00

jr_000_03F2:
    nop                                           ; $03F2: $00
    nop                                           ; $03F3: $00
    ld   d, b                                     ; $03F4: $50
    nop                                           ; $03F5: $00
    add  b                                        ; $03F6: $80
    nop                                           ; $03F7: $00
    add  b                                        ; $03F8: $80
    ld   h, b                                     ; $03F9: $60

jr_000_03FA:
    add  b                                        ; $03FA: $80
    nop                                           ; $03FB: $00
    add  b                                        ; $03FC: $80
    ld   h, b                                     ; $03FD: $60
    ld   d, b                                     ; $03FE: $50
    nop                                           ; $03FF: $00
    add  b                                        ; $0400: $80
    ld   h, b                                     ; $0401: $60
    add  b                                        ; $0402: $80
    nop                                           ; $0403: $00
    jr   nz, jr_000_0406                          ; $0404: $20 $00

jr_000_0406:
    add  b                                        ; $0406: $80
    ld   h, b                                     ; $0407: $60
    add  b                                        ; $0408: $80
    nop                                           ; $0409: $00
    add  b                                        ; $040A: $80
    ld   h, b                                     ; $040B: $60
    add  b                                        ; $040C: $80
    nop                                           ; $040D: $00
    jr   nc, @+$62                                ; $040E: $30 $60

    ld   d, b                                     ; $0410: $50
    nop                                           ; $0411: $00
    jr   nc, jr_000_0474                          ; $0412: $30 $60

    ld   d, b                                     ; $0414: $50
    nop                                           ; $0415: $00
    jr   nc, @+$62                                ; $0416: $30 $60

    ld   d, b                                     ; $0418: $50
    nop                                           ; $0419: $00
    jr   nc, @+$62                                ; $041A: $30 $60

    ld   d, b                                     ; $041C: $50
    nop                                           ; $041D: $00
    stop                                          ; $041E: $10 $00
    add  b                                        ; $0420: $80

jr_000_0421:
    db   $10                                      ; $0421: $10
    add  b                                        ; $0422: $80
    nop                                           ; $0423: $00
    add  b                                        ; $0424: $80
    nop                                           ; $0425: $00
    add  b                                        ; $0426: $80
    nop                                           ; $0427: $00
    add  b                                        ; $0428: $80
    nop                                           ; $0429: $00
    add  b                                        ; $042A: $80
    nop                                           ; $042B: $00
    add  b                                        ; $042C: $80

Call_000_042D:
    nop                                           ; $042D: $00
    ld   d, b                                     ; $042E: $50
    nop                                           ; $042F: $00

jr_000_0430:
    ld   [hl], b                                  ; $0430: $70
    ldh  [rSVBK], a                               ; $0431: $E0 $70
    jr   nc, jr_000_0465                          ; $0433: $30 $30

    ld   d, b                                     ; $0435: $50
    ld   h, b                                     ; $0436: $60
    ld   b, b                                     ; $0437: $40

jr_000_0438:
    jr   nc, jr_000_03FA                          ; $0438: $30 $C0

    ret  nz                                       ; $043A: $C0

    nop                                           ; $043B: $00
    nop                                           ; $043C: $00
    ld   [$08D5], sp                              ; $043D: $08 $D5 $08
    push hl                                       ; $0440: $E5
    ld   [$08E5], sp                              ; $0441: $08 $E5 $08
    ld   d, l                                     ; $0444: $55

jr_000_0445:
    ld   [$08A5], sp                              ; $0445: $08 $A5 $08

jr_000_0448:
    push hl                                       ; $0448: $E5
    jr   c, jr_000_0430                           ; $0449: $38 $E5

    add  sp, -$1B                                 ; $044B: $E8 $E5
    jr   c, @-$19                                 ; $044D: $38 $E5

    add  sp, -$5B                                 ; $044F: $E8 $A5
    jr   c, jr_000_0438                           ; $0451: $38 $E5

jr_000_0453:
    add  sp, -$1B                                 ; $0453: $E8 $E5
    jr   c, jr_000_04CC                           ; $0455: $38 $75

    jr   c, @-$19                                 ; $0457: $38 $E5

    add  sp, -$1B                                 ; $0459: $E8 $E5

jr_000_045B:
    jr   c, @-$19                                 ; $045B: $38 $E5

    add  sp, -$1B                                 ; $045D: $E8 $E5
    jr   c, jr_000_03E6                           ; $045F: $38 $85

    add  sp, -$6B                                 ; $0461: $E8 $95
    jr   c, jr_000_03EA                           ; $0463: $38 $85

jr_000_0465:
    add  sp, -$6B                                 ; $0465: $E8 $95
    jr   c, jr_000_03EE                           ; $0467: $38 $85

    add  sp, -$6B                                 ; $0469: $E8 $95
    jr   c, jr_000_03F2                           ; $046B: $38 $85

    add  sp, -$6B                                 ; $046D: $E8 $95
    jr   z, @+$67                                 ; $046F: $28 $65

    jr   z, jr_000_0448                           ; $0471: $28 $D5

    ld   l, b                                     ; $0473: $68

jr_000_0474:
    push de                                       ; $0474: $D5
    jr   z, @-$19                                 ; $0475: $28 $E5

    jr   z, @-$19                                 ; $0477: $28 $E5

    jr   z, @-$19                                 ; $0479: $28 $E5

    jr   c, @-$29                                 ; $047B: $38 $D5

    jr   z, @-$19                                 ; $047D: $28 $E5

    ld   c, b                                     ; $047F: $48
    and  l                                        ; $0480: $A5
    nop                                           ; $0481: $00
    nop                                           ; $0482: $00
    jr   c, jr_000_0445                           ; $0483: $38 $C0

    adc  b                                        ; $0485: $88
    add  b                                        ; $0486: $80
    xor  b                                        ; $0487: $A8
    or   b                                        ; $0488: $B0
    sbc  b                                        ; $0489: $98
    add  b                                        ; $048A: $80
    jr   jr_000_049D                              ; $048B: $18 $10

    nop                                           ; $048D: $00
    nop                                           ; $048E: $00
    cp   b                                        ; $048F: $B8
    ld   b, b                                     ; $0490: $40
    jr   z, jr_000_0493                           ; $0491: $28 $00

jr_000_0493:
    ld   [$68A0], sp                              ; $0493: $08 $A0 $68
    jr   nz, jr_000_0500                          ; $0496: $20 $68

    jr   nz, jr_000_0512                          ; $0498: $20 $78

    ret  nc                                       ; $049A: $D0

    ld   hl, sp-$60                               ; $049B: $F8 $A0

jr_000_049D:
    jr   z, @+$22                                 ; $049D: $28 $20

    jr   c, jr_000_0421                           ; $049F: $38 $80

    ld   c, b                                     ; $04A1: $48
    add  b                                        ; $04A2: $80
    ld   e, b                                     ; $04A3: $58
    add  b                                        ; $04A4: $80
    jr   @+$62                                    ; $04A5: $18 $60

    ld   [$1870], sp                              ; $04A7: $08 $70 $18
    ldh  [rNR23], a                               ; $04AA: $E0 $18
    sub  b                                        ; $04AC: $90

jr_000_04AD:
    jr   @-$6E                                    ; $04AD: $18 $90

    jr   z, @+$62                                 ; $04AF: $28 $60

    jr   jr_000_0513                              ; $04B1: $18 $60

    ld   [$3880], sp                              ; $04B3: $08 $80 $38
    sub  b                                        ; $04B6: $90
    jr   c, @-$7E                                 ; $04B7: $38 $80

    jr   jr_000_045B                              ; $04B9: $18 $A0

    jr   jr_000_04AD                              ; $04BB: $18 $F0

    ret  c                                        ; $04BD: $D8

    ldh  [$FF88], a                               ; $04BE: $E0 $88
    ret  nc                                       ; $04C0: $D0

    jr   jr_000_0453                              ; $04C1: $18 $90

    ret  z                                        ; $04C3: $C8

    sub  b                                        ; $04C4: $90

jr_000_04C5:
    cp   b                                        ; $04C5: $B8
    ldh  [$FF38], a                               ; $04C6: $E0 $38
    db   $10                                      ; $04C8: $10
    ret  c                                        ; $04C9: $D8

    db   $10                                      ; $04CA: $10
    ld   l, b                                     ; $04CB: $68

jr_000_04CC:
    ldh  a, [rBCPS]                               ; $04CC: $F0 $68
    jr   nc, jr_000_0538                          ; $04CE: $30 $68

    and  b                                        ; $04D0: $A0
    adc  b                                        ; $04D1: $88
    add  b                                        ; $04D2: $80
    sbc  b                                        ; $04D3: $98
    ld   [hl], b                                  ; $04D4: $70
    add  sp, $60                                  ; $04D5: $E8 $60
    ld   c, b                                     ; $04D7: $48
    ld   [hl], b                                  ; $04D8: $70
    ret  z                                        ; $04D9: $C8

    and  b                                        ; $04DA: $A0
    ld   e, b                                     ; $04DB: $58
    nop                                           ; $04DC: $00
    ld   e, b                                     ; $04DD: $58
    nop                                           ; $04DE: $00
    add  sp, -$80                                 ; $04DF: $E8 $80
    ret  c                                        ; $04E1: $D8

    jr   nc, jr_000_054C                          ; $04E2: $30 $68

    ld   b, b                                     ; $04E4: $40
    cp   b                                        ; $04E5: $B8
    and  b                                        ; $04E6: $A0
    jr   @-$3E                                    ; $04E7: $18 $C0

    db   $10                                      ; $04E9: $10
    sbc  b                                        ; $04EA: $98
    add  b                                        ; $04EB: $80
    ld   e, b                                     ; $04EC: $58
    ld   h, b                                     ; $04ED: $60
    ld   hl, sp-$40                               ; $04EE: $F8 $C0
    ld   a, b                                     ; $04F0: $78
    ret  nz                                       ; $04F1: $C0

    ld   a, b                                     ; $04F2: $78
    ret  nc                                       ; $04F3: $D0

    jr   z, jr_000_0546                           ; $04F4: $28 $50

    ld   hl, sp-$80                               ; $04F6: $F8 $80
    ld   a, b                                     ; $04F8: $78
    sub  b                                        ; $04F9: $90
    ret  c                                        ; $04FA: $D8

    and  b                                        ; $04FB: $A0
    ret  c                                        ; $04FC: $D8

    or   b                                        ; $04FD: $B0
    ret  c                                        ; $04FE: $D8

    ld   [hl], b                                  ; $04FF: $70

jr_000_0500:
    cp   b                                        ; $0500: $B8
    ld   h, b                                     ; $0501: $60
    ret  z                                        ; $0502: $C8

    ld   [hl], b                                  ; $0503: $70
    jr   c, @+$72                                 ; $0504: $38 $70

    add  sp, $70                                  ; $0506: $E8 $70
    add  sp, -$80                                 ; $0508: $E8 $80

Jump_000_050A:
    cp   b                                        ; $050A: $B8
    ld   [hl], b                                  ; $050B: $70
    cp   b                                        ; $050C: $B8
    ld   h, b                                     ; $050D: $60
    ret  c                                        ; $050E: $D8

    sub  b                                        ; $050F: $90
    add  sp, -$70                                 ; $0510: $E8 $90

jr_000_0512:
    ret  c                                        ; $0512: $D8

jr_000_0513:
    ld   [hl], b                                  ; $0513: $70
    ld   hl, sp+$70                               ; $0514: $F8 $70
    ld   c, b                                     ; $0516: $48
    jr   nc, jr_000_0551                          ; $0517: $30 $38

    ldh  [$FF28], a                               ; $0519: $E0 $28
    ld   [hl], b                                  ; $051B: $70
    add  sp, $20                                  ; $051C: $E8 $20
    add  sp, $10                                  ; $051E: $E8 $10
    jr   c, @-$6E                                 ; $0520: $38 $90

    ld   l, b                                     ; $0522: $68
    jr   nc, jr_000_058D                          ; $0523: $30 $68

    ret  nz                                       ; $0525: $C0

    ld   c, b                                     ; $0526: $48
    ret  nz                                       ; $0527: $C0

    adc  b                                        ; $0528: $88
    ret  nz                                       ; $0529: $C0

    ld   hl, sp-$20                               ; $052A: $F8 $E0
    ret  c                                        ; $052C: $D8

jr_000_052D:
    ldh  a, [$FFC8]                               ; $052D: $F0 $C8
    ld   b, b                                     ; $052F: $40
    cp   b                                        ; $0530: $B8
    and  b                                        ; $0531: $A0
    ret  z                                        ; $0532: $C8

    jr   nz, jr_000_052D                          ; $0533: $20 $F8

    or   b                                        ; $0535: $B0
    ld   e, b                                     ; $0536: $58
    or   b                                        ; $0537: $B0

jr_000_0538:
    ld   e, b                                     ; $0538: $58
    ld   b, b                                     ; $0539: $40
    ret  c                                        ; $053A: $D8

    jr   nc, jr_000_04C5                          ; $053B: $30 $88

    ret  nz                                       ; $053D: $C0

    sbc  b                                        ; $053E: $98
    db   $10                                      ; $053F: $10
    ld   hl, sp+$70                               ; $0540: $F8 $70
    jr   jr_000_0590                              ; $0542: $18 $4C

    inc  bc                                       ; $0544: $03
    and  c                                        ; $0545: $A1

jr_000_0546:
    daa                                           ; $0546: $27
    daa                                           ; $0547: $27
    ret  c                                        ; $0548: $D8

    and  b                                        ; $0549: $A0
    inc  hl                                       ; $054A: $23
    add  h                                        ; $054B: $84

jr_000_054C:
    add  l                                        ; $054C: $85
    add  [hl]                                     ; $054D: $86
    ld   h, d                                     ; $054E: $62
    ld   [hl], c                                  ; $054F: $71
    ldh  [c], a                                   ; $0550: $E2

jr_000_0551:
    sub  d                                        ; $0551: $92
    sub  d                                        ; $0552: $92
    ld   h, e                                     ; $0553: $63
    ld   h, d                                     ; $0554: $62
    add  c                                        ; $0555: $81
    sub  h                                        ; $0556: $94
    add  h                                        ; $0557: $84
    and  d                                        ; $0558: $A2
    ldh  a, [c]                                   ; $0559: $F2
    xor  $D9                                      ; $055A: $EE $D9
    sub  d                                        ; $055C: $92
    sbc  l                                        ; $055D: $9D
    db   $EC                                      ; $055E: $EC
    inc  d                                        ; $055F: $14
    ld   e, $F7                                   ; $0560: $1E $F7
    scf                                           ; $0562: $37
    and  a                                        ; $0563: $A7
    adc  c                                        ; $0564: $89
    ld   a, d                                     ; $0565: $7A
    ld   l, a                                     ; $0566: $6F
    ld   [hl], l                                  ; $0567: $75
    xor  l                                        ; $0568: $AD
    ld   b, $06                                   ; $0569: $06 $06
    adc  a                                        ; $056B: $8F
    ld   a, $47                                   ; $056C: $3E $47
    xor  h                                        ; $056E: $AC
    jp   nz, Jump_000_06FA                        ; $056F: $C2 $FA $06

    rst  RST_18                                   ; $0572: $DF
    and  $01                                      ; $0573: $E6 $01
    ld   [$DF06], a                               ; $0575: $EA $06 $DF
    call Call_000_05C7                            ; $0578: $CD $C7 $05
    call DisableLcdSafely                         ; $057B: $CD $86 $0B
    ld   a, $03                                   ; $057E: $3E $03
    ld   [$3000], a                               ; $0580: $EA $00 $30
    call $4000                                    ; $0583: $CD $00 $40
    ld   a, [$DF01]                               ; $0586: $FA $01 $DF
    bit  1, a                                     ; $0589: $CB $4F
    jr   z, jr_000_05A1                           ; $058B: $28 $14

jr_000_058D:
    ld   [$DF05], a                               ; $058D: $EA $05 $DF

jr_000_0590:
    ld   a, $23                                   ; $0590: $3E $23
    ld   [$DF00], a                               ; $0592: $EA $00 $DF
    ld   hl, GraphicsSetPointerTable              ; $0595: $21 $A6 $19
    call LoadGraphicsDescriptorList               ; $0598: $CD $5B $19
    ld   a, [$C3C5]                               ; $059B: $FA $C5 $C3
    ld   [$3000], a                               ; $059E: $EA $00 $30

jr_000_05A1:
    jp   StageSetupRamClear                       ; $05A1: $C3 $E1 $01


Call_000_05A4:
    ld   a, $02                                   ; $05A4: $3E $02
    ld   [$3000], a                               ; $05A6: $EA $00 $30
    call $4000                                    ; $05A9: $CD $00 $40
    ld   a, $01                                   ; $05AC: $3E $01
    ld   [$3000], a                               ; $05AE: $EA $00 $30
    ret                                           ; $05B1: $C9


Call_000_05B2:
    ld   b, $20                                   ; $05B2: $06 $20
    ld   hl, $060E                                ; $05B4: $21 $0E $06
    jr   jr_000_05F7                              ; $05B7: $18 $3E

Call_000_05B9:
    ld   b, $20                                   ; $05B9: $06 $20
    ld   hl, $0616                                ; $05BB: $21 $16 $06
    jr   jr_000_05F7                              ; $05BE: $18 $37

    ld   b, $20                                   ; $05C0: $06 $20
    ld   hl, $061E                                ; $05C2: $21 $1E $06
    jr   jr_000_05F7                              ; $05C5: $18 $30

Call_000_05C7:
    ld   a, $01                                   ; $05C7: $3E $01
    ld   [$DF09], a                               ; $05C9: $EA $09 $DF
    ld   a, [$DF01]                               ; $05CC: $FA $01 $DF
    rlca                                          ; $05CF: $07
    jr   c, jr_000_05D9                           ; $05D0: $38 $07

    ld   a, [$DF08]                               ; $05D2: $FA $08 $DF
    cp   $02                                      ; $05D5: $FE $02
    jr   z, jr_000_05E2                           ; $05D7: $28 $09

Call_000_05D9:
jr_000_05D9:
    xor  a                                        ; $05D9: $AF
    ld   [$DF09], a                               ; $05DA: $EA $09 $DF
    ld   b, $70                                   ; $05DD: $06 $70
    ld   a, $F6                                   ; $05DF: $3E $F6
    rst  RST_28                                   ; $05E1: $EF

Call_000_05E2:
jr_000_05E2:
    ld   b, $20                                   ; $05E2: $06 $20
    ld   hl, $0626                                ; $05E4: $21 $26 $06
    jr   jr_000_05F7                              ; $05E7: $18 $0E

Call_000_05E9:
    ld   b, $20                                   ; $05E9: $06 $20
    ld   hl, $062E                                ; $05EB: $21 $2E $06
    jr   jr_000_05F7                              ; $05EE: $18 $07

    ld   b, $20                                   ; $05F0: $06 $20
    ld   hl, $0636                                ; $05F2: $21 $36 $06
    jr   jr_000_05F7                              ; $05F5: $18 $00

jr_000_05F7:
    ld   a, b                                     ; $05F7: $78
    and  $07                                      ; $05F8: $E6 $07
    jr   nz, jr_000_0607                          ; $05FA: $20 $0B

    ld   a, [hl+]                                 ; $05FC: $2A
    ld   [$C669], a                               ; $05FD: $EA $69 $C6
    ld   [$C66B], a                               ; $0600: $EA $6B $C6
    ld   a, [hl+]                                 ; $0603: $2A
    ld   [$C66A], a                               ; $0604: $EA $6A $C6

jr_000_0607:
    dec  b                                        ; $0607: $05
    ret  z                                        ; $0608: $C8

    call WaitForRequestedVBlank                   ; $0609: $CD $90 $00
    jr   jr_000_05F7                              ; $060C: $18 $E9

    nop                                           ; $060E: $00
    nop                                           ; $060F: $00
    inc  b                                        ; $0610: $04
    inc  b                                        ; $0611: $04
    jr   jr_000_061C                              ; $0612: $18 $08

    ld   l, h                                     ; $0614: $6C
    inc  e                                        ; $0615: $1C
    db   $FC                                      ; $0616: $FC

Call_000_0617:
    inc  e                                        ; $0617: $1C
    db   $FC                                      ; $0618: $FC
    inc  e                                        ; $0619: $1C
    cp   h                                        ; $061A: $BC
    inc  e                                        ; $061B: $1C

jr_000_061C:
    ld   l, h                                     ; $061C: $6C
    inc  e                                        ; $061D: $1C
    nop                                           ; $061E: $00
    inc  e                                        ; $061F: $1C
    inc  b                                        ; $0620: $04
    inc  e                                        ; $0621: $1C
    jr   @+$1E                                    ; $0622: $18 $1C

    ld   l, h                                     ; $0624: $6C
    inc  e                                        ; $0625: $1C
    ld   l, h                                     ; $0626: $6C
    inc  e                                        ; $0627: $1C
    ld   [$0418], sp                              ; $0628: $08 $18 $04
    inc  b                                        ; $062B: $04
    nop                                           ; $062C: $00
    nop                                           ; $062D: $00
    ld   l, h                                     ; $062E: $6C
    inc  e                                        ; $062F: $1C
    cp   h                                        ; $0630: $BC
    inc  e                                        ; $0631: $1C
    db   $FC                                      ; $0632: $FC
    inc  e                                        ; $0633: $1C
    db   $FC                                      ; $0634: $FC
    inc  e                                        ; $0635: $1C
    ld   l, h                                     ; $0636: $6C
    inc  e                                        ; $0637: $1C
    ld   [$041C], sp                              ; $0638: $08 $1C $04
    inc  e                                        ; $063B: $1C
    nop                                           ; $063C: $00
    inc  e                                        ; $063D: $1C

Call_000_063E:
jr_000_063E:
    ld   bc, $C669                                ; $063E: $01 $69 $C6
    ld   de, $6C93                                ; $0641: $11 $93 $6C
    ld   hl, $C57E                                ; $0644: $21 $7E $C5
    dec  [hl]                                     ; $0647: $35
    jr   z, jr_000_0666                           ; $0648: $28 $1C

    call Call_000_0652                            ; $064A: $CD $52 $06
    call WaitForRequestedVBlank                   ; $064D: $CD $90 $00
    jr   jr_000_063E                              ; $0650: $18 $EC

Call_000_0652:
    ld   a, [$C26A]                               ; $0652: $FA $6A $C2
    ld   h, a                                     ; $0655: $67
    and  $03                                      ; $0656: $E6 $03
    ret  nz                                       ; $0658: $C0

    bit  2, h                                     ; $0659: $CB $54
    jr   z, jr_000_0660                           ; $065B: $28 $03

    ld   a, d                                     ; $065D: $7A
    ld   [bc], a                                  ; $065E: $02
    ret                                           ; $065F: $C9


jr_000_0660:
    ld   a, $2C                                   ; $0660: $3E $2C
    rst  RST_28                                   ; $0662: $EF
    ld   a, e                                     ; $0663: $7B
    ld   [bc], a                                  ; $0664: $02
    ret                                           ; $0665: $C9


Call_000_0666:
jr_000_0666:
    ld   a, d                                     ; $0666: $7A
    ld   [bc], a                                  ; $0667: $02
    ret                                           ; $0668: $C9


Call_000_0669:
    ld   de, $1C00                                ; $0669: $11 $00 $1C
    ld   bc, $C66B                                ; $066C: $01 $6B $C6

Call_000_066F:
    ld   hl, $C57F                                ; $066F: $21 $7F $C5
    ld   a, [hl]                                  ; $0672: $7E
    and  a                                        ; $0673: $A7
    jr   z, jr_000_0682                           ; $0674: $28 $0C

    dec  [hl]                                     ; $0676: $35
    bit  2, a                                     ; $0677: $CB $57
    ld   a, e                                     ; $0679: $7B
    jr   z, jr_000_0680                           ; $067A: $28 $04

    ld   a, $2C                                   ; $067C: $3E $2C
    rst  RST_28                                   ; $067E: $EF
    ld   a, d                                     ; $067F: $7A

jr_000_0680:
    ld   [bc], a                                  ; $0680: $02
    ret                                           ; $0681: $C9


jr_000_0682:
    ld   a, d                                     ; $0682: $7A
    ld   [bc], a                                  ; $0683: $02
    ret                                           ; $0684: $C9


Call_000_0685:
jr_000_0685:
    ld   a, [$C690]                               ; $0685: $FA $90 $C6
    rlca                                          ; $0688: $07
    ret  c                                        ; $0689: $D8

    ld   a, [$C3A7]                               ; $068A: $FA $A7 $C3
    and  a                                        ; $068D: $A7
    jr   z, jr_000_06A0                           ; $068E: $28 $10

    call Call_000_1448                            ; $0690: $CD $48 $14
    call Call_000_1123                            ; $0693: $CD $23 $11
    ld   a, $01                                   ; $0696: $3E $01
    ld   [$C3C5], a                               ; $0698: $EA $C5 $C3
    call WaitForRequestedVBlank                   ; $069B: $CD $90 $00
    jr   jr_000_0685                              ; $069E: $18 $E5

jr_000_06A0:
    ld   a, $24                                   ; $06A0: $3E $24
    rst  RST_28                                   ; $06A2: $EF
    call Call_000_2125                            ; $06A3: $CD $25 $21

Call_000_06A6:
    ld   a, [$DF0E]                               ; $06A6: $FA $0E $DF
    ld   hl, $030F                                ; $06A9: $21 $0F $03
    rlca                                          ; $06AC: $07
    call AddAToHL                                 ; $06AD: $CD $71 $00
    ld   a, [hl+]                                 ; $06B0: $2A
    ld   [$DF0F], a                               ; $06B1: $EA $0F $DF
    ld   a, [hl]                                  ; $06B4: $7E
    ld   [$DF10], a                               ; $06B5: $EA $10 $DF
    ld   a, [$DF38]                               ; $06B8: $FA $38 $DF
    rlca                                          ; $06BB: $07
    ld   hl, $0317                                ; $06BC: $21 $17 $03
    call AddAToHL                                 ; $06BF: $CD $71 $00
    ld   a, [hl+]                                 ; $06C2: $2A
    ld   [$C29E], a                               ; $06C3: $EA $9E $C2
    ld   a, [hl]                                  ; $06C6: $7E
    ld   [$C29F], a                               ; $06C7: $EA $9F $C2
    ret                                           ; $06CA: $C9


Jump_000_06CB:
    ld   a, $01                                   ; $06CB: $3E $01
    ld   [$C200], a                               ; $06CD: $EA $00 $C2
    ld   a, $01                                   ; $06D0: $3E $01
    ld   [$C3C5], a                               ; $06D2: $EA $C5 $C3
    ld   [$3000], a                               ; $06D5: $EA $00 $30
    ld   a, $80                                   ; $06D8: $3E $80
    ld   [$C274], a                               ; $06DA: $EA $74 $C2
    ld   b, a                                     ; $06DD: $47
    xor  a                                        ; $06DE: $AF
    call SetObjectAnimationIfChanged              ; $06DF: $CD $61 $00
    call $70A4                                    ; $06E2: $CD $A4 $70
    call $4EE8                                    ; $06E5: $CD $E8 $4E
    call WaitForRequestedVBlank                   ; $06E8: $CD $90 $00
    call Call_000_3236                            ; $06EB: $CD $36 $32
    call Call_000_3241                            ; $06EE: $CD $41 $32
    call WaitForRequestedVBlank                   ; $06F1: $CD $90 $00
    call Call_000_3236                            ; $06F4: $CD $36 $32
    call Call_000_3241                            ; $06F7: $CD $41 $32

Jump_000_06FA:
    call Call_000_05B2                            ; $06FA: $CD $B2 $05
    ld   a, [$DF03]                               ; $06FD: $FA $03 $DF
    and  a                                        ; $0700: $A7
    jp   z, Jump_000_2BC4                         ; $0701: $CA $C4 $2B

    cp   $28                                      ; $0704: $FE $28
    jp   z, Jump_000_2E35                         ; $0706: $CA $35 $2E

    cp   $2C                                      ; $0709: $FE $2C
    jp   z, Jump_000_2E47                         ; $070B: $CA $47 $2E

    cp   $1B                                      ; $070E: $FE $1B
    jp   z, Jump_000_2E2E                         ; $0710: $CA $2E $2E

    cp   $15                                      ; $0713: $FE $15
    jp   nc, Jump_000_2BC4                        ; $0715: $D2 $C4 $2B

    cp   $12                                      ; $0718: $FE $12
    jp   z, Jump_000_2E14                         ; $071A: $CA $14 $2E

    cp   $0B                                      ; $071D: $FE $0B
    jp   z, Jump_000_2CA9                         ; $071F: $CA $A9 $2C

    cp   $0D                                      ; $0722: $FE $0D
    jp   z, Jump_000_2CB4                         ; $0724: $CA $B4 $2C

    cp   $0E                                      ; $0727: $FE $0E
    jp   z, Jump_000_2D55                         ; $0729: $CA $55 $2D

    cp   $0F                                      ; $072C: $FE $0F
    jp   z, Jump_000_2D74                         ; $072E: $CA $74 $2D

    cp   $10                                      ; $0731: $FE $10
    jp   z, Jump_000_2DA3                         ; $0733: $CA $A3 $2D

    cp   $11                                      ; $0736: $FE $11
    jp   z, Jump_000_2DF1                         ; $0738: $CA $F1 $2D

    dec  a                                        ; $073B: $3D
    jp   z, Jump_000_2C0A                         ; $073C: $CA $0A $2C

    dec  a                                        ; $073F: $3D
    jp   z, Jump_000_2C0A                         ; $0740: $CA $0A $2C

    dec  a                                        ; $0743: $3D
    jp   z, Jump_000_2C0A                         ; $0744: $CA $0A $2C

    dec  a                                        ; $0747: $3D
    jp   z, Jump_000_2C0A                         ; $0748: $CA $0A $2C

    dec  a                                        ; $074B: $3D
    jp   z, Jump_000_2C12                         ; $074C: $CA $12 $2C

    dec  a                                        ; $074F: $3D
    jp   z, Jump_000_2C0A                         ; $0750: $CA $0A $2C

    dec  a                                        ; $0753: $3D
    jp   z, Jump_000_2C49                         ; $0754: $CA $49 $2C

    jp   Jump_000_2C02                            ; $0757: $C3 $02 $2C


Call_000_075A:
    call Call_000_1D15                            ; $075A: $CD $15 $1D
    ld   a, [$C274]                               ; $075D: $FA $74 $C2
    ld   b, a                                     ; $0760: $47
    xor  a                                        ; $0761: $AF
    call SetObjectAnimationIfChanged              ; $0762: $CD $61 $00
    call Call_000_147D                            ; $0765: $CD $7D $14
    ld   a, $01                                   ; $0768: $3E $01
    ld   [$C3C5], a                               ; $076A: $EA $C5 $C3
    ld   [$3000], a                               ; $076D: $EA $00 $30
    call $4F23                                    ; $0770: $CD $23 $4F
    ld   a, $02                                   ; $0773: $3E $02
    ld   [$C3C5], a                               ; $0775: $EA $C5 $C3
    ld   [$3000], a                               ; $0778: $EA $00 $30
    call $6967                                    ; $077B: $CD $67 $69
    ld   a, $08                                   ; $077E: $3E $08
    ld   [$C7CB], a                               ; $0780: $EA $CB $C7
    call $69C4                                    ; $0783: $CD $C4 $69
    jp   WaitForRequestedVBlank                   ; $0786: $C3 $90 $00


Jump_000_0789:
    ld   a, [$DF19]                               ; $0789: $FA $19 $DF
    rrca                                          ; $078C: $0F
    jr   nc, jr_000_0794                          ; $078D: $30 $05

    ld   a, $81                                   ; $078F: $3E $81
    ld   [$DF19], a                               ; $0791: $EA $19 $DF

jr_000_0794:
    ld   a, [$DF02]                               ; $0794: $FA $02 $DF
    cp   $06                                      ; $0797: $FE $06
    jr   nc, jr_000_07A5                          ; $0799: $30 $0A

    ld   b, $40                                   ; $079B: $06 $40
    ld   a, [$DF06]                               ; $079D: $FA $06 $DF
    bit  0, a                                     ; $07A0: $CB $47
    call z, Call_000_0854                         ; $07A2: $CC $54 $08

jr_000_07A5:
    xor  a                                        ; $07A5: $AF
    ld   [$C693], a                               ; $07A6: $EA $93 $C6
    ld   a, [$DF02]                               ; $07A9: $FA $02 $DF
    call Call_000_0B7D                            ; $07AC: $CD $7D $0B
    ld   e, e                                     ; $07AF: $5B
    ld   h, $32                                   ; $07B0: $26 $32
    daa                                           ; $07B2: $27
    nop                                           ; $07B3: $00
    jr   z, @-$7D                                 ; $07B4: $28 $81

    jr   z, jr_000_07BF                           ; $07B6: $28 $07

    add  hl, hl                                   ; $07B8: $29
    ld   a, c                                     ; $07B9: $79
    add  hl, hl                                   ; $07BA: $29
    call nz, $F229                                ; $07BB: $C4 $29 $F2
    add  hl, hl                                   ; $07BE: $29

jr_000_07BF:
    ret                                           ; $07BF: $C9


    add  hl, hl                                   ; $07C0: $29
    rst  RST_30                                   ; $07C1: $F7
    add  hl, hl                                   ; $07C2: $29
    call nz, $F229                                ; $07C3: $C4 $29 $F2
    add  hl, hl                                   ; $07C6: $29
    dec  h                                        ; $07C7: $25
    ld   a, [hl+]                                 ; $07C8: $2A
    ret                                           ; $07C9: $C9


    add  hl, hl                                   ; $07CA: $29
    rst  RST_30                                   ; $07CB: $F7
    add  hl, hl                                   ; $07CC: $29
    ret                                           ; $07CD: $C9


    add  hl, hl                                   ; $07CE: $29
    rst  RST_30                                   ; $07CF: $F7
    add  hl, hl                                   ; $07D0: $29
    ret                                           ; $07D1: $C9


    add  hl, hl                                   ; $07D2: $29
    rst  RST_30                                   ; $07D3: $F7
    add  hl, hl                                   ; $07D4: $29
    ret                                           ; $07D5: $C9


    add  hl, hl                                   ; $07D6: $29
    rst  RST_30                                   ; $07D7: $F7
    add  hl, hl                                   ; $07D8: $29
    ret                                           ; $07D9: $C9


    add  hl, hl                                   ; $07DA: $29
    rst  RST_30                                   ; $07DB: $F7
    add  hl, hl                                   ; $07DC: $29
    ret                                           ; $07DD: $C9


    add  hl, hl                                   ; $07DE: $29
    rst  RST_30                                   ; $07DF: $F7
    add  hl, hl                                   ; $07E0: $29
    ld   [hl], d                                  ; $07E1: $72
    ld   a, [hl+]                                 ; $07E2: $2A
    ld   [hl], d                                  ; $07E3: $72
    ld   a, [hl+]                                 ; $07E4: $2A
    ld   [hl], d                                  ; $07E5: $72
    ld   a, [hl+]                                 ; $07E6: $2A
    ld   [hl], d                                  ; $07E7: $72
    ld   a, [hl+]                                 ; $07E8: $2A
    ld   [hl], d                                  ; $07E9: $72
    ld   a, [hl+]                                 ; $07EA: $2A
    ld   [hl], d                                  ; $07EB: $72
    ld   a, [hl+]                                 ; $07EC: $2A
    ld   [hl], d                                  ; $07ED: $72
    ld   a, [hl+]                                 ; $07EE: $2A
    ld   [hl], d                                  ; $07EF: $72
    ld   a, [hl+]                                 ; $07F0: $2A
    add  a                                        ; $07F1: $87
    dec  hl                                       ; $07F2: $2B

Call_000_07F3:
Jump_000_07F3:
    ld   a, $01                                   ; $07F3: $3E $01
    ld   [$C3C5], a                               ; $07F5: $EA $C5 $C3
    ld   [$3000], a                               ; $07F8: $EA $00 $30
    call $6EE1                                    ; $07FB: $CD $E1 $6E
    ld   a, [$C200]                               ; $07FE: $FA $00 $C2
    bit  0, a                                     ; $0801: $CB $47
    jp   z, Jump_000_2524                         ; $0803: $CA $24 $25

    ld   a, [$C262]                               ; $0806: $FA $62 $C2
    bit  3, a                                     ; $0809: $CB $5F
    jr   z, jr_000_0810                           ; $080B: $28 $03

    call Call_000_0685                            ; $080D: $CD $85 $06

jr_000_0810:
    jr   jr_000_0825                              ; $0810: $18 $13

    ld   a, [$DF13]                               ; $0812: $FA $13 $DF
    inc  a                                        ; $0815: $3C
    and  $03                                      ; $0816: $E6 $03
    ld   [$DF13], a                               ; $0818: $EA $13 $DF
    ld   hl, $030B                                ; $081B: $21 $0B $03
    call AddAToHL                                 ; $081E: $CD $71 $00
    ld   a, [hl]                                  ; $0821: $7E
    ld   [$DF11], a                               ; $0822: $EA $11 $DF

jr_000_0825:
    ld   a, [$C274]                               ; $0825: $FA $74 $C2
    ld   b, a                                     ; $0828: $47
    xor  a                                        ; $0829: $AF
    call SetObjectAnimationIfChanged              ; $082A: $CD $61 $00
    call Call_000_1448                            ; $082D: $CD $48 $14
    ld   a, [$C690]                               ; $0830: $FA $90 $C6
    and  a                                        ; $0833: $A7
    jr   nz, jr_000_0839                          ; $0834: $20 $03

    call Call_000_1123                            ; $0836: $CD $23 $11

jr_000_0839:
    call Call_000_088E                            ; $0839: $CD $8E $08
    ld   a, $02                                   ; $083C: $3E $02
    ld   [$C3C5], a                               ; $083E: $EA $C5 $C3
    ld   [$3000], a                               ; $0841: $EA $00 $30
    call $6967                                    ; $0844: $CD $67 $69
    call $69C4                                    ; $0847: $CD $C4 $69
    xor  a                                        ; $084A: $AF
    ld   [$C7CB], a                               ; $084B: $EA $CB $C7
    call Call_000_08AA                            ; $084E: $CD $AA $08
    jp   WaitForRequestedVBlank                   ; $0851: $C3 $90 $00


Call_000_0854:
jr_000_0854:
    push bc                                       ; $0854: $C5
    xor  a                                        ; $0855: $AF
    ld   [$C262], a                               ; $0856: $EA $62 $C2
    ld   a, $10                                   ; $0859: $3E $10
    ld   [$C261], a                               ; $085B: $EA $61 $C2
    ld   a, $01                                   ; $085E: $3E $01
    ld   [$C3C5], a                               ; $0860: $EA $C5 $C3
    ld   [$3000], a                               ; $0863: $EA $00 $30
    call $44DF                                    ; $0866: $CD $DF $44
    ld   a, [$C274]                               ; $0869: $FA $74 $C2
    ld   b, a                                     ; $086C: $47
    xor  a                                        ; $086D: $AF
    call SetObjectAnimationIfChanged              ; $086E: $CD $61 $00
    call Call_000_1EB2                            ; $0871: $CD $B2 $1E
    ld   a, $02                                   ; $0874: $3E $02
    ld   [$C3C5], a                               ; $0876: $EA $C5 $C3
    ld   [$3000], a                               ; $0879: $EA $00 $30
    call $6967                                    ; $087C: $CD $67 $69
    call $69C4                                    ; $087F: $CD $C4 $69
    xor  a                                        ; $0882: $AF
    ld   [$C7CB], a                               ; $0883: $EA $CB $C7
    call WaitForRequestedVBlank                   ; $0886: $CD $90 $00
    pop  bc                                       ; $0889: $C1
    dec  b                                        ; $088A: $05
    jr   nz, jr_000_0854                          ; $088B: $20 $C7

    ret                                           ; $088D: $C9


Call_000_088E:
    ld   a, [$C20E]                               ; $088E: $FA $0E $C2
    cp   $0A                                      ; $0891: $FE $0A
    jr   z, jr_000_0898                           ; $0893: $28 $03

    cp   $0B                                      ; $0895: $FE $0B
    ret  nz                                       ; $0897: $C0

jr_000_0898:
    ld   b, $03                                   ; $0898: $06 $03

Call_000_089A:
    ld   a, [$C203]                               ; $089A: $FA $03 $C2
    add  b                                        ; $089D: $80
    ld   [$C203], a                               ; $089E: $EA $03 $C2
    ret  nc                                       ; $08A1: $D0

    ld   a, [$C204]                               ; $08A2: $FA $04 $C2
    inc  a                                        ; $08A5: $3C
    ld   [$C204], a                               ; $08A6: $EA $04 $C2
    ret                                           ; $08A9: $C9


Call_000_08AA:
    ld   a, [$C20E]                               ; $08AA: $FA $0E $C2
    cp   $0A                                      ; $08AD: $FE $0A
    jr   z, jr_000_08B4                           ; $08AF: $28 $03

    cp   $0B                                      ; $08B1: $FE $0B
    ret  nz                                       ; $08B3: $C0

jr_000_08B4:
    ld   b, $03                                   ; $08B4: $06 $03

Call_000_08B6:
    ld   a, [$C203]                               ; $08B6: $FA $03 $C2
    sub  b                                        ; $08B9: $90
    ld   [$C203], a                               ; $08BA: $EA $03 $C2
    ret  nc                                       ; $08BD: $D0

    ld   a, [$C204]                               ; $08BE: $FA $04 $C2
    dec  a                                        ; $08C1: $3D
    ld   [$C204], a                               ; $08C2: $EA $04 $C2
    ret                                           ; $08C5: $C9


Call_000_08C6:
    ld   a, $01                                   ; $08C6: $3E $01
    ld   [$C3C5], a                               ; $08C8: $EA $C5 $C3
    ld   [$3000], a                               ; $08CB: $EA $00 $30
    ld   hl, $C7CC                                ; $08CE: $21 $CC $C7
    ld   a, [$C365]                               ; $08D1: $FA $65 $C3
    ld   [hl+], a                                 ; $08D4: $22
    ld   a, [$C363]                               ; $08D5: $FA $63 $C3
    ld   [hl+], a                                 ; $08D8: $22
    ld   a, [$C364]                               ; $08D9: $FA $64 $C3
    ld   [hl+], a                                 ; $08DC: $22
    sub  $B0                                      ; $08DD: $D6 $B0
    ld   [$C364], a                               ; $08DF: $EA $64 $C3
    jr   nc, jr_000_08EB                          ; $08E2: $30 $07

    ld   a, [$C365]                               ; $08E4: $FA $65 $C3
    dec  a                                        ; $08E7: $3D
    ld   [$C365], a                               ; $08E8: $EA $65 $C3

jr_000_08EB:
    ld   a, [$C362]                               ; $08EB: $FA $62 $C3
    ld   [hl], a                                  ; $08EE: $77
    sub  $B0                                      ; $08EF: $D6 $B0
    ld   [$C362], a                               ; $08F1: $EA $62 $C3
    jr   nc, jr_000_08FD                          ; $08F4: $30 $07

    ld   a, [$C363]                               ; $08F6: $FA $63 $C3
    dec  a                                        ; $08F9: $3D
    ld   [$C363], a                               ; $08FA: $EA $63 $C3

jr_000_08FD:
    ld   a, [$C3A5]                               ; $08FD: $FA $A5 $C3

Call_000_0900:
    ld   b, a                                     ; $0900: $47
    ld   a, [$C3A4]                               ; $0901: $FA $A4 $C3
    cp   b                                        ; $0904: $B8
    jr   nc, jr_000_094A                          ; $0905: $30 $43

    ld   a, $B0                                   ; $0907: $3E $B0

Call_000_0909:
    ld   [$C7D0], a                               ; $0909: $EA $D0 $C7

jr_000_090C:
    ld   a, [$C362]                               ; $090C: $FA $62 $C3
    ld   [$C367], a                               ; $090F: $EA $67 $C3
    inc  a                                        ; $0912: $3C
    ld   [$C362], a                               ; $0913: $EA $62 $C3
    jr   nz, jr_000_091F                          ; $0916: $20 $07

    ld   a, [$C363]                               ; $0918: $FA $63 $C3
    inc  a                                        ; $091B: $3C
    ld   [$C363], a                               ; $091C: $EA $63 $C3

jr_000_091F:
    call $4CF5                                    ; $091F: $CD $F5 $4C
    ld   a, [$C7D0]                               ; $0922: $FA $D0 $C7
    dec  a                                        ; $0925: $3D
    ld   [$C7D0], a                               ; $0926: $EA $D0 $C7
    jr   nz, jr_000_090C                          ; $0929: $20 $E1

jr_000_092B:
    ld   hl, $C7CC                                ; $092B: $21 $CC $C7
    ld   a, [hl+]                                 ; $092E: $2A
    ld   [$C365], a                               ; $092F: $EA $65 $C3
    ld   a, [hl+]                                 ; $0932: $2A
    ld   [$C363], a                               ; $0933: $EA $63 $C3
    ld   a, [hl+]                                 ; $0936: $2A
    ld   [$C364], a                               ; $0937: $EA $64 $C3
    ld   a, [hl]                                  ; $093A: $7E
    ld   [$C362], a                               ; $093B: $EA $62 $C3
    ld   [$C367], a                               ; $093E: $EA $67 $C3
    ld   a, $02                                   ; $0941: $3E $02
    ld   [$C3C5], a                               ; $0943: $EA $C5 $C3
    ld   [$3000], a                               ; $0946: $EA $00 $30
    ret                                           ; $0949: $C9


jr_000_094A:
    ld   a, $B0                                   ; $094A: $3E $B0
    ld   [$C7D0], a                               ; $094C: $EA $D0 $C7

jr_000_094F:
    ld   a, [$C364]                               ; $094F: $FA $64 $C3
    inc  a                                        ; $0952: $3C
    ld   [$C364], a                               ; $0953: $EA $64 $C3
    jr   nz, jr_000_095F                          ; $0956: $20 $07

    ld   a, [$C365]                               ; $0958: $FA $65 $C3
    inc  a                                        ; $095B: $3C
    ld   [$C365], a                               ; $095C: $EA $65 $C3

jr_000_095F:
    ld   a, $10                                   ; $095F: $3E $10
    ld   [$C261], a                               ; $0961: $EA $61 $C2
    call $4CF5                                    ; $0964: $CD $F5 $4C
    ld   a, [$C7D0]                               ; $0967: $FA $D0 $C7
    dec  a                                        ; $096A: $3D
    ld   [$C7D0], a                               ; $096B: $EA $D0 $C7
    jr   nz, jr_000_094F                          ; $096E: $20 $DF

    jr   jr_000_092B                              ; $0970: $18 $B9

Call_000_0972:
    ld   b, $06                                   ; $0972: $06 $06

jr_000_0974:
    push bc                                       ; $0974: $C5
    ld   a, $01                                   ; $0975: $3E $01
    ld   [$C3C5], a                               ; $0977: $EA $C5 $C3
    ld   [$3000], a                               ; $097A: $EA $00 $30
    call $4F23                                    ; $097D: $CD $23 $4F
    ld   a, $02                                   ; $0980: $3E $02
    ld   [$C3C5], a                               ; $0982: $EA $C5 $C3
    ld   [$3000], a                               ; $0985: $EA $00 $30
    call Call_000_1EB2                            ; $0988: $CD $B2 $1E
    call $6967                                    ; $098B: $CD $67 $69
    call $69C4                                    ; $098E: $CD $C4 $69
    call WaitForRequestedVBlank                   ; $0991: $CD $90 $00
    pop  bc                                       ; $0994: $C1
    dec  b                                        ; $0995: $05
    jr   nz, jr_000_0974                          ; $0996: $20 $DC

    ret                                           ; $0998: $C9


Call_000_0999:
    ld   a, $01                                   ; $0999: $3E $01
    ld   [$3000], a                               ; $099B: $EA $00 $30
    ld   [$C3C5], a                               ; $099E: $EA $C5 $C3
    call $4F23                                    ; $09A1: $CD $23 $4F
    jp   WaitForRequestedVBlank                   ; $09A4: $C3 $90 $00


Jump_000_09A7:
    ld   a, [$DF18]                               ; $09A7: $FA $18 $DF
    ld   c, $00                                   ; $09AA: $0E $00

jr_000_09AC:
    sub  $0A                                      ; $09AC: $D6 $0A
    jr   c, jr_000_09B3                           ; $09AE: $38 $03

    inc  c                                        ; $09B0: $0C
    jr   jr_000_09AC                              ; $09B1: $18 $F9

jr_000_09B3:
    add  $0A                                      ; $09B3: $C6 $0A
    ld   b, a                                     ; $09B5: $47
    ret                                           ; $09B6: $C9


VBlankISR::
    push af                                       ; $09B7: $F5
    push bc                                       ; $09B8: $C5
    push de                                       ; $09B9: $D5
    push hl                                       ; $09BA: $E5
    ld   a, [$C267]                               ; $09BB: $FA $67 $C2
    and  a                                        ; $09BE: $A7
    jp   nz, Jump_000_0B10                        ; $09BF: $C2 $10 $0B

    call $FF80                                    ; $09C2: $CD $80 $FF
    ld   a, [$C688]                               ; $09C5: $FA $88 $C6
    and  a                                        ; $09C8: $A7
    jr   z, jr_000_09E3                           ; $09C9: $28 $18

    ld   h, a                                     ; $09CB: $67
    ld   a, [$C687]                               ; $09CC: $FA $87 $C6
    ld   l, a                                     ; $09CF: $6F
    xor  a                                        ; $09D0: $AF
    ld   [$C688], a                               ; $09D1: $EA $88 $C6

Call_000_09D4:
    ld   d, a                                     ; $09D4: $57
    ld   e, $1F                                   ; $09D5: $1E $1F
    ld   bc, $C689                                ; $09D7: $01 $89 $C6
    ld   a, [bc]                                  ; $09DA: $0A
    ld   [hl+], a                                 ; $09DB: $22
    inc  a                                        ; $09DC: $3C
    ld   [hl], a                                  ; $09DD: $77
    add  hl, de                                   ; $09DE: $19
    inc  a                                        ; $09DF: $3C
    ld   [hl+], a                                 ; $09E0: $22
    inc  a                                        ; $09E1: $3C
    ld   [hl], a                                  ; $09E2: $77

jr_000_09E3:
    ld   a, [$DF01]                               ; $09E3: $FA $01 $DF
    rrca                                          ; $09E6: $0F
    jr   nc, jr_000_09F2                          ; $09E7: $30 $09

    call Call_000_17CC                            ; $09E9: $CD $CC $17
    call $18BD                                    ; $09EC: $CD $BD $18
    jp   Jump_000_0A95                            ; $09EF: $C3 $95 $0A


jr_000_09F2:
    ld   a, [$C79E]                               ; $09F2: $FA $9E $C7
    or   a                                        ; $09F5: $B7
    jr   z, jr_000_0A16                           ; $09F6: $28 $1E

    ld   hl, $9C2B                                ; $09F8: $21 $2B $9C
    ld   de, $C790                                ; $09FB: $11 $90 $C7
    ld   a, [de]                                  ; $09FE: $1A
    ld   [hl+], a                                 ; $09FF: $22
    inc  e                                        ; $0A00: $1C
    ld   a, [de]                                  ; $0A01: $1A
    ld   [hl+], a                                 ; $0A02: $22
    inc  e                                        ; $0A03: $1C
    ld   a, [de]                                  ; $0A04: $1A
    ld   [hl+], a                                 ; $0A05: $22
    inc  e                                        ; $0A06: $1C
    ld   a, [de]                                  ; $0A07: $1A
    ld   [hl+], a                                 ; $0A08: $22
    inc  e                                        ; $0A09: $1C
    ld   a, [de]                                  ; $0A0A: $1A
    ld   [hl+], a                                 ; $0A0B: $22
    inc  e                                        ; $0A0C: $1C
    ld   a, [de]                                  ; $0A0D: $1A
    ld   [hl+], a                                 ; $0A0E: $22
    inc  e                                        ; $0A0F: $1C
    ld   a, [de]                                  ; $0A10: $1A
    ld   [hl], a                                  ; $0A11: $77
    xor  a                                        ; $0A12: $AF
    ld   [$C79E], a                               ; $0A13: $EA $9E $C7

jr_000_0A16:
    ld   a, [$C79F]                               ; $0A16: $FA $9F $C7
    or   a                                        ; $0A19: $B7
    jr   z, jr_000_0A34                           ; $0A1A: $28 $18

    ld   hl, $9C23                                ; $0A1C: $21 $23 $9C
    ld   de, $C797                                ; $0A1F: $11 $97 $C7
    ld   a, [de]                                  ; $0A22: $1A
    ld   [hl+], a                                 ; $0A23: $22
    inc  e                                        ; $0A24: $1C
    ld   a, [de]                                  ; $0A25: $1A
    ld   [hl+], a                                 ; $0A26: $22
    inc  e                                        ; $0A27: $1C
    ld   a, [de]                                  ; $0A28: $1A
    ld   [hl+], a                                 ; $0A29: $22
    inc  e                                        ; $0A2A: $1C
    ld   a, [de]                                  ; $0A2B: $1A
    ld   [hl+], a                                 ; $0A2C: $22
    inc  e                                        ; $0A2D: $1C
    ld   a, [de]                                  ; $0A2E: $1A
    ld   [hl], a                                  ; $0A2F: $77
    xor  a                                        ; $0A30: $AF
    ld   [$C79F], a                               ; $0A31: $EA $9F $C7

jr_000_0A34:
    ld   a, [$C7BE]                               ; $0A34: $FA $BE $C7
    or   a                                        ; $0A37: $B7
    jr   z, ConsumeQueuedVblankMapBytes           ; $0A38: $28 $11

    ld   h, a                                     ; $0A3A: $67
    ld   a, [$C7BD]                               ; $0A3B: $FA $BD $C7
    ld   l, a                                     ; $0A3E: $6F
    ld   a, [$C7A1]                               ; $0A3F: $FA $A1 $C7
    ld   [hl+], a                                 ; $0A42: $22
    ld   a, [$C7A2]                               ; $0A43: $FA $A2 $C7
    ld   [hl], a                                  ; $0A46: $77
    xor  a                                        ; $0A47: $AF
    ld   [$C7BE], a                               ; $0A48: $EA $BE $C7

ConsumeQueuedVblankMapBytes::
    ld   a, [$C690]                               ; $0A4B: $FA $90 $C6
    rrca                                          ; $0A4E: $0F
    jr   nc, jr_000_0A95                          ; $0A4F: $30 $44

    ld   de, $CA61                                ; $0A51: $11 $61 $CA
    ld   a, [de]                                  ; $0A54: $1A
    and  a                                        ; $0A55: $A7
    jr   z, jr_000_0A77                           ; $0A56: $28 $1F

    xor  a                                        ; $0A58: $AF
    ld   [de], a                                  ; $0A59: $12
    ld   e, $66                                   ; $0A5A: $1E $66
    ld   a, [de]                                  ; $0A5C: $1A
    ld   l, a                                     ; $0A5D: $6F
    inc  e                                        ; $0A5E: $1C
    ld   a, [de]                                  ; $0A5F: $1A
    ld   h, a                                     ; $0A60: $67
    inc  e                                        ; $0A61: $1C
    ld   bc, $001F                                ; $0A62: $01 $1F $00

jr_000_0A65:
    ld   a, [de]                                  ; $0A65: $1A
    inc  e                                        ; $0A66: $1C
    cp   $FF                                      ; $0A67: $FE $FF
    jr   z, jr_000_0A6E                           ; $0A69: $28 $03

    ld   [hl+], a                                 ; $0A6B: $22
    jr   jr_000_0A65                              ; $0A6C: $18 $F7

jr_000_0A6E:
    ld   e, $66                                   ; $0A6E: $1E $66
    ld   a, l                                     ; $0A70: $7D
    ld   [de], a                                  ; $0A71: $12
    inc  e                                        ; $0A72: $1C
    ld   a, h                                     ; $0A73: $7C
    ld   [de], a                                  ; $0A74: $12
    jr   jr_000_0ADA                              ; $0A75: $18 $63

jr_000_0A77:
    ld   a, [$C7A0]                               ; $0A77: $FA $A0 $C7
    or   a                                        ; $0A7A: $B7
    jr   z, jr_000_0A95                           ; $0A7B: $28 $18

    ld   a, [$C7BB]                               ; $0A7D: $FA $BB $C7
    ld   l, a                                     ; $0A80: $6F
    ld   a, [$C7BC]                               ; $0A81: $FA $BC $C7
    ld   h, a                                     ; $0A84: $67
    xor  a                                        ; $0A85: $AF
    ld   [$C7A0], a                               ; $0A86: $EA $A0 $C7
    ld   d, a                                     ; $0A89: $57
    ld   e, $20                                   ; $0A8A: $1E $20
    ld   a, $C9                                   ; $0A8C: $3E $C9
    ld   b, $08                                   ; $0A8E: $06 $08

jr_000_0A90:
    ld   [hl], a                                  ; $0A90: $77
    add  hl, de                                   ; $0A91: $19
    dec  b                                        ; $0A92: $05
    jr   nz, jr_000_0A90                          ; $0A93: $20 $FB

Jump_000_0A95:
jr_000_0A95:
    ld   a, [$C3A7]                               ; $0A95: $FA $A7 $C3
    or   a                                        ; $0A98: $B7
    jr   nz, jr_000_0AD7                          ; $0A99: $20 $3C

    ld   a, [$C79D]                               ; $0A9B: $FA $9D $C7
    or   a                                        ; $0A9E: $B7
    jr   z, jr_000_0ABA                           ; $0A9F: $28 $19

    ld   a, [$C7B6]                               ; $0AA1: $FA $B6 $C7
    ld   l, a                                     ; $0AA4: $6F
    ld   a, [$C7B7]                               ; $0AA5: $FA $B7 $C7
    ld   h, a                                     ; $0AA8: $67
    ld   a, [$C7B3]                               ; $0AA9: $FA $B3 $C7
    ld   b, a                                     ; $0AAC: $47
    ld   de, $C770                                ; $0AAD: $11 $70 $C7

CopyTilePageToVram::
    ld   a, [de]                                  ; $0AB0: $1A
    ld   [hl+], a                                 ; $0AB1: $22
    inc  e                                        ; $0AB2: $1C
    dec  b                                        ; $0AB3: $05
    jr   nz, CopyTilePageToVram                   ; $0AB4: $20 $FA

    xor  a                                        ; $0AB6: $AF

ClearVramPagePendingFlag::
    ld   [$C79D], a                               ; $0AB7: $EA $9D $C7

jr_000_0ABA:
    ld   a, [$C79C]                               ; $0ABA: $FA $9C $C7
    or   a                                        ; $0ABD: $B7
    jr   z, jr_000_0AD7                           ; $0ABE: $28 $17

    ld   a, [$C7AB]                               ; $0AC0: $FA $AB $C7
    ld   l, a                                     ; $0AC3: $6F
    ld   a, [$C7AC]                               ; $0AC4: $FA $AC $C7
    ld   h, a                                     ; $0AC7: $67
    ld   de, $C760                                ; $0AC8: $11 $60 $C7
    ld   b, $10                                   ; $0ACB: $06 $10

jr_000_0ACD:
    ld   a, [de]                                  ; $0ACD: $1A
    ld   [hl+], a                                 ; $0ACE: $22
    inc  e                                        ; $0ACF: $1C
    dec  b                                        ; $0AD0: $05
    jr   nz, jr_000_0ACD                          ; $0AD1: $20 $FA

    xor  a                                        ; $0AD3: $AF
    ld   [$C79C], a                               ; $0AD4: $EA $9C $C7

jr_000_0AD7:
    call Call_000_0D7D                            ; $0AD7: $CD $7D $0D

jr_000_0ADA:
    ld   a, [$C362]                               ; $0ADA: $FA $62 $C3
    ldh  [rSCY], a                                ; $0ADD: $E0 $42
    ld   a, [$C364]                               ; $0ADF: $FA $64 $C3
    ldh  [rSCX], a                                ; $0AE2: $E0 $43
    ld   a, [$C360]                               ; $0AE4: $FA $60 $C3
    ldh  [rWY], a                                 ; $0AE7: $E0 $4A
    ld   a, [$C361]                               ; $0AE9: $FA $61 $C3
    ldh  [rWX], a                                 ; $0AEC: $E0 $4B
    ld   a, [$C669]                               ; $0AEE: $FA $69 $C6
    ldh  [rBGP], a                                ; $0AF1: $E0 $47
    ld   a, [$C66A]                               ; $0AF3: $FA $6A $C6
    ldh  [rOBP0], a                               ; $0AF6: $E0 $48
    ld   a, [$C66B]                               ; $0AF8: $FA $6B $C6
    ldh  [rOBP1], a                               ; $0AFB: $E0 $49
    ld   a, [$C26A]                               ; $0AFD: $FA $6A $C2
    inc  a                                        ; $0B00: $3C
    ld   [$C26A], a                               ; $0B01: $EA $6A $C2
    ld   a, $01                                   ; $0B04: $3E $01
    ld   [$C267], a                               ; $0B06: $EA $67 $C2
    xor  a                                        ; $0B09: $AF
    ld   [$C3A6], a                               ; $0B0A: $EA $A6 $C3
    call ReadJoypad                               ; $0B0D: $CD $31 $0B

Jump_000_0B10:
    ld   a, $03                                   ; $0B10: $3E $03
    ld   [$3000], a                               ; $0B12: $EA $00 $30
    call $4000                                    ; $0B15: $CD $00 $40
    call Call_000_204A                            ; $0B18: $CD $4A $20
    call StageTileGraphicsRecord                  ; $0B1B: $CD $72 $1F
    ld   a, $01                                   ; $0B1E: $3E $01
    ld   [$3000], a                               ; $0B20: $EA $00 $30
    call Call_000_33A9                            ; $0B23: $CD $A9 $33
    ld   a, [$C3C5]                               ; $0B26: $FA $C5 $C3
    ld   [$3000], a                               ; $0B29: $EA $00 $30
    pop  hl                                       ; $0B2C: $E1
    pop  de                                       ; $0B2D: $D1
    pop  bc                                       ; $0B2E: $C1
    pop  af                                       ; $0B2F: $F1
    reti                                          ; $0B30: $D9


ReadJoypad::
    ld   a, $20                                   ; $0B31: $3E $20
    ldh  [rP1], a                                 ; $0B33: $E0 $00
    ldh  a, [rP1]                                 ; $0B35: $F0 $00
    ldh  a, [rP1]                                 ; $0B37: $F0 $00
    cpl                                           ; $0B39: $2F
    and  $0F                                      ; $0B3A: $E6 $0F
    swap a                                        ; $0B3C: $CB $37
    ld   b, a                                     ; $0B3E: $47
    ld   a, $10                                   ; $0B3F: $3E $10
    ldh  [rP1], a                                 ; $0B41: $E0 $00
    ldh  a, [rP1]                                 ; $0B43: $F0 $00
    ldh  a, [rP1]                                 ; $0B45: $F0 $00
    ldh  a, [rP1]                                 ; $0B47: $F0 $00
    ldh  a, [rP1]                                 ; $0B49: $F0 $00
    ldh  a, [rP1]                                 ; $0B4B: $F0 $00
    ldh  a, [rP1]                                 ; $0B4D: $F0 $00
    cpl                                           ; $0B4F: $2F
    and  $0F                                      ; $0B50: $E6 $0F
    or   b                                        ; $0B52: $B0
    ld   c, a                                     ; $0B53: $4F
    ld   a, [$C261]                               ; $0B54: $FA $61 $C2
    xor  c                                        ; $0B57: $A9
    and  c                                        ; $0B58: $A1
    ld   [$C262], a                               ; $0B59: $EA $62 $C2
    ld   a, c                                     ; $0B5C: $79
    ld   [$C261], a                               ; $0B5D: $EA $61 $C2
    ld   a, $30                                   ; $0B60: $3E $30
    ldh  [rP1], a                                 ; $0B62: $E0 $00
    ret                                           ; $0B64: $C9


InstallOamDmaRoutine::
    ld   c, $80                                   ; $0B65: $0E $80
    ld   b, $0A                                   ; $0B67: $06 $0A
    ld   hl, $0B73                                ; $0B69: $21 $73 $0B

jr_000_0B6C:
    ld   a, [hl+]                                 ; $0B6C: $2A
    ldh  [c], a                                   ; $0B6D: $E2
    inc  c                                        ; $0B6E: $0C
    dec  b                                        ; $0B6F: $05
    jr   nz, jr_000_0B6C                          ; $0B70: $20 $FA

    ret                                           ; $0B72: $C9


    ld   a, $C0                                   ; $0B73: $3E $C0
    ldh  [rDMA], a                                ; $0B75: $E0 $46
    ld   a, $28                                   ; $0B77: $3E $28

jr_000_0B79:
    dec  a                                        ; $0B79: $3D
    jr   nz, jr_000_0B79                          ; $0B7A: $20 $FD

    ret                                           ; $0B7C: $C9


Call_000_0B7D:
    add  a                                        ; $0B7D: $87
    pop  hl                                       ; $0B7E: $E1
    call AddAToHL                                 ; $0B7F: $CD $71 $00
    ld   a, [hl+]                                 ; $0B82: $2A
    ld   h, [hl]                                  ; $0B83: $66
    ld   l, a                                     ; $0B84: $6F
    jp   hl                                       ; $0B85: $E9


DisableLcdSafely::
    ldh  a, [rIE]                                 ; $0B86: $F0 $FF
    ld   [$C268], a                               ; $0B88: $EA $68 $C2
    res  0, a                                     ; $0B8B: $CB $87
    ldh  [rIE], a                                 ; $0B8D: $E0 $FF

jr_000_0B8F:
    ldh  a, [rLY]                                 ; $0B8F: $F0 $44
    cp   $91                                      ; $0B91: $FE $91
    jr   c, jr_000_0B8F                           ; $0B93: $38 $FA

    ldh  a, [rLCDC]                               ; $0B95: $F0 $40
    and  $7F                                      ; $0B97: $E6 $7F
    ldh  [rLCDC], a                               ; $0B99: $E0 $40
    ld   a, [$C268]                               ; $0B9B: $FA $68 $C2
    ldh  [rIE], a                                 ; $0B9E: $E0 $FF
    ret                                           ; $0BA0: $C9


EnableLcdAndInterrupts::
    ld   a, $E3                                   ; $0BA1: $3E $E3
    ldh  [rLCDC], a                               ; $0BA3: $E0 $40
    ei                                            ; $0BA5: $FB
    ret                                           ; $0BA6: $C9


ClearBgMaps::
    xor  a                                        ; $0BA7: $AF

Jump_000_0BA8:
    ld   hl, $9800                                ; $0BA8: $21 $00 $98
    ld   bc, $0800                                ; $0BAB: $01 $00 $08

MemoryFill::
    ld   [hl+], a                                 ; $0BAE: $22
    dec  c                                        ; $0BAF: $0D
    jr   nz, MemoryFill                           ; $0BB0: $20 $FC

    dec  b                                        ; $0BB2: $05
    jr   nz, MemoryFill                           ; $0BB3: $20 $F9

    ret                                           ; $0BB5: $C9


jr_000_0BB6:
    ld   a, [hl+]                                 ; $0BB6: $2A
    ld   [de], a                                  ; $0BB7: $12
    inc  de                                       ; $0BB8: $13
    dec  bc                                       ; $0BB9: $0B
    ld   a, b                                     ; $0BBA: $78
    or   c                                        ; $0BBB: $B1
    jr   nz, jr_000_0BB6                          ; $0BBC: $20 $F8

    ret                                           ; $0BBE: $C9


Call_000_0BBF:
    push hl                                       ; $0BBF: $E5
    ld   hl, $DF0C                                ; $0BC0: $21 $0C $DF
    ld   a, [$DF0A]                               ; $0BC3: $FA $0A $DF
    push af                                       ; $0BC6: $F5
    ld   [hl+], a                                 ; $0BC7: $22
    ld   a, [$DF0B]                               ; $0BC8: $FA $0B $DF
    ld   [hl-], a                                 ; $0BCB: $32
    sla  [hl]                                     ; $0BCC: $CB $26
    inc  hl                                       ; $0BCE: $23
    rl   [hl]                                     ; $0BCF: $CB $16
    dec  hl                                       ; $0BD1: $2B
    ld   a, [hl]                                  ; $0BD2: $7E
    push hl                                       ; $0BD3: $E5
    ld   hl, $DF0A                                ; $0BD4: $21 $0A $DF
    add  [hl]                                     ; $0BD7: $86
    ld   [hl], a                                  ; $0BD8: $77
    inc  hl                                       ; $0BD9: $23
    ld   a, [hl]                                  ; $0BDA: $7E
    pop  hl                                       ; $0BDB: $E1
    inc  hl                                       ; $0BDC: $23
    adc  [hl]                                     ; $0BDD: $8E
    ld   [$DF0B], a                               ; $0BDE: $EA $0B $DF
    pop  af                                       ; $0BE1: $F1
    ld   hl, $DF0B                                ; $0BE2: $21 $0B $DF
    add  [hl]                                     ; $0BE5: $86
    ld   [hl], a                                  ; $0BE6: $77
    pop  hl                                       ; $0BE7: $E1
    ret                                           ; $0BE8: $C9


Call_000_0BE9:
Jump_000_0BE9:
    push bc                                       ; $0BE9: $C5
    ld   b, $00                                   ; $0BEA: $06 $00
    sla  a                                        ; $0BEC: $CB $27
    rl   b                                        ; $0BEE: $CB $10
    sla  a                                        ; $0BF0: $CB $27
    rl   b                                        ; $0BF2: $CB $10
    ld   c, a                                     ; $0BF4: $4F
    add  hl, bc                                   ; $0BF5: $09
    pop  bc                                       ; $0BF6: $C1
    ret                                           ; $0BF7: $C9


CallBank3_4003PreserveBank::
    push af                                       ; $0BF8: $F5
    ld   hl, $C3C5                                ; $0BF9: $21 $C5 $C3
    ld   a, [hl+]                                 ; $0BFC: $2A
    ld   [hl-], a                                 ; $0BFD: $32
    ld   a, $03                                   ; $0BFE: $3E $03
    ld   [hl+], a                                 ; $0C00: $22
    ld   [$3000], a                               ; $0C01: $EA $00 $30
    pop  af                                       ; $0C04: $F1
    push hl                                       ; $0C05: $E5
    call $4003                                    ; $0C06: $CD $03 $40
    pop  hl                                       ; $0C09: $E1
    ld   a, [hl-]                                 ; $0C0A: $3A
    ld   [hl], a                                  ; $0C0B: $77
    ld   [$3000], a                               ; $0C0C: $EA $00 $30
    ret                                           ; $0C0F: $C9


Call_000_0C10:
    ld   a, $02                                   ; $0C10: $3E $02
    ld   [$3000], a                               ; $0C12: $EA $00 $30
    ld   a, [$DF01]                               ; $0C15: $FA $01 $DF
    bit  0, a                                     ; $0C18: $CB $47
    jr   z, jr_000_0C39                           ; $0C1A: $28 $1D

    ld   hl, $6BAB                                ; $0C1C: $21 $AB $6B
    ld   a, [$DF03]                               ; $0C1F: $FA $03 $DF
    ld   [$DF00], a                               ; $0C22: $EA $00 $DF
    ld   a, [$DF07]                               ; $0C25: $FA $07 $DF
    bit  1, a                                     ; $0C28: $CB $4F
    jr   z, jr_000_0C4C                           ; $0C2A: $28 $20

    ld   a, [$DF08]                               ; $0C2C: $FA $08 $DF
    dec  a                                        ; $0C2F: $3D
    rlca                                          ; $0C30: $07
    rlca                                          ; $0C31: $07
    swap a                                        ; $0C32: $CB $37
    ld   l, a                                     ; $0C34: $6F
    ld   h, $DD                                   ; $0C35: $26 $DD
    jr   jr_000_0C56                              ; $0C37: $18 $1D

jr_000_0C39:
    ld   hl, $6B2B                                ; $0C39: $21 $2B $6B
    ld   a, [$DF06]                               ; $0C3C: $FA $06 $DF
    bit  0, a                                     ; $0C3F: $CB $47
    jr   z, jr_000_0C46                           ; $0C41: $28 $03

    ld   hl, $6B71                                ; $0C43: $21 $71 $6B

jr_000_0C46:
    ld   a, [$DF02]                               ; $0C46: $FA $02 $DF
    ld   [$DF00], a                               ; $0C49: $EA $00 $DF

jr_000_0C4C:
    ld   a, [$DF00]                               ; $0C4C: $FA $00 $DF
    rlca                                          ; $0C4F: $07
    call AddAToHL                                 ; $0C50: $CD $71 $00
    ld   a, [hl+]                                 ; $0C53: $2A
    ld   h, [hl]                                  ; $0C54: $66
    ld   l, a                                     ; $0C55: $6F

jr_000_0C56:
    ld   a, [hl+]                                 ; $0C56: $2A
    ld   [$C39A], a                               ; $0C57: $EA $9A $C3
    and  a                                        ; $0C5A: $A7
    jr   z, jr_000_0C67                           ; $0C5B: $28 $0A

    cp   $08                                      ; $0C5D: $FE $08
    jr   c, jr_000_0C6B                           ; $0C5F: $38 $0A

    jr   z, jr_000_0C67                           ; $0C61: $28 $04

    ld   a, $03                                   ; $0C63: $3E $03
    jr   jr_000_0C6D                              ; $0C65: $18 $06

jr_000_0C67:
    ld   a, $05                                   ; $0C67: $3E $05
    jr   jr_000_0C6D                              ; $0C69: $18 $02

jr_000_0C6B:
    ld   a, $04                                   ; $0C6B: $3E $04

jr_000_0C6D:
    ld   [$C3C5], a                               ; $0C6D: $EA $C5 $C3
    ld   a, [hl+]                                 ; $0C70: $2A
    ld   [$C39C], a                               ; $0C71: $EA $9C $C3
    ld   a, [hl+]                                 ; $0C74: $2A
    ld   [$C39F], a                               ; $0C75: $EA $9F $C3
    ld   a, [hl+]                                 ; $0C78: $2A
    ld   [$C3A2], a                               ; $0C79: $EA $A2 $C3
    ld   a, [$C3C5]                               ; $0C7C: $FA $C5 $C3
    ld   [$3000], a                               ; $0C7F: $EA $00 $30
    ld   b, $0E                                   ; $0C82: $06 $0E

jr_000_0C84:
    push bc                                       ; $0C84: $C5
    call Call_000_11F5                            ; $0C85: $CD $F5 $11
    call Call_000_0D7D                            ; $0C88: $CD $7D $0D
    call Call_000_11FD                            ; $0C8B: $CD $FD $11
    call Call_000_0D7D                            ; $0C8E: $CD $7D $0D
    pop  bc                                       ; $0C91: $C1
    dec  b                                        ; $0C92: $05
    jr   nz, jr_000_0C84                          ; $0C93: $20 $EF

    ld   a, $02                                   ; $0C95: $3E $02
    ld   [$3000], a                               ; $0C97: $EA $00 $30
    xor  a                                        ; $0C9A: $AF
    ld   [$C3A9], a                               ; $0C9B: $EA $A9 $C3
    call Call_000_0CA2                            ; $0C9E: $CD $A2 $0C
    ret                                           ; $0CA1: $C9


Call_000_0CA2:
    ld   a, [$DF01]                               ; $0CA2: $FA $01 $DF
    bit  0, a                                     ; $0CA5: $CB $47
    jr   z, jr_000_0CFB                           ; $0CA7: $28 $52

    ld   hl, $6BAB                                ; $0CA9: $21 $AB $6B
    ld   a, [$DF03]                               ; $0CAC: $FA $03 $DF
    ld   [$DF00], a                               ; $0CAF: $EA $00 $DF
    ld   a, [$DF07]                               ; $0CB2: $FA $07 $DF
    bit  1, a                                     ; $0CB5: $CB $4F
    jr   z, jr_000_0D0E                           ; $0CB7: $28 $55

    ld   a, [$DF08]                               ; $0CB9: $FA $08 $DF
    dec  a                                        ; $0CBC: $3D
    ld   [$DF08], a                               ; $0CBD: $EA $08 $DF
    rlca                                          ; $0CC0: $07
    rlca                                          ; $0CC1: $07
    swap a                                        ; $0CC2: $CB $37
    ld   l, a                                     ; $0CC4: $6F
    ld   h, $DD                                   ; $0CC5: $26 $DD
    call Call_000_0D18                            ; $0CC7: $CD $18 $0D
    ld   a, [hl+]                                 ; $0CCA: $2A
    ld   [$C204], a                               ; $0CCB: $EA $04 $C2
    ld   a, [hl+]                                 ; $0CCE: $2A
    ld   [$C203], a                               ; $0CCF: $EA $03 $C2
    ld   [$C369], a                               ; $0CD2: $EA $69 $C3
    ld   a, [hl+]                                 ; $0CD5: $2A
    ld   [$C207], a                               ; $0CD6: $EA $07 $C2
    ld   a, [hl+]                                 ; $0CD9: $2A
    ld   [$C206], a                               ; $0CDA: $EA $06 $C2
    ld   [$C368], a                               ; $0CDD: $EA $68 $C3
    ld   a, [hl+]                                 ; $0CE0: $2A
    ld   [$C364], a                               ; $0CE1: $EA $64 $C3
    ld   [$C366], a                               ; $0CE4: $EA $66 $C3
    ld   a, [hl+]                                 ; $0CE7: $2A
    ld   [$C362], a                               ; $0CE8: $EA $62 $C3
    ld   [$C367], a                               ; $0CEB: $EA $67 $C3
    ld   a, [hl+]                                 ; $0CEE: $2A
    ld   [$C3A9], a                               ; $0CEF: $EA $A9 $C3
    ld   a, [hl+]                                 ; $0CF2: $2A
    ld   [$C399], a                               ; $0CF3: $EA $99 $C3
    ld   a, [hl+]                                 ; $0CF6: $2A
    ld   [$DF03], a                               ; $0CF7: $EA $03 $DF
    ret                                           ; $0CFA: $C9


jr_000_0CFB:
    ld   hl, $6B2B                                ; $0CFB: $21 $2B $6B
    ld   a, [$DF06]                               ; $0CFE: $FA $06 $DF
    bit  0, a                                     ; $0D01: $CB $47
    jr   z, jr_000_0D08                           ; $0D03: $28 $03

    ld   hl, $6B71                                ; $0D05: $21 $71 $6B

jr_000_0D08:
    ld   a, [$DF02]                               ; $0D08: $FA $02 $DF
    ld   [$DF00], a                               ; $0D0B: $EA $00 $DF

jr_000_0D0E:
    ld   a, [$DF00]                               ; $0D0E: $FA $00 $DF
    rlca                                          ; $0D11: $07
    call AddAToHL                                 ; $0D12: $CD $71 $00
    ld   a, [hl+]                                 ; $0D15: $2A
    ld   h, [hl]                                  ; $0D16: $66
    ld   l, a                                     ; $0D17: $6F

Call_000_0D18:
    ld   a, [hl+]                                 ; $0D18: $2A
    ld   [$C39A], a                               ; $0D19: $EA $9A $C3
    ld   a, [hl+]                                 ; $0D1C: $2A
    ld   [$C39B], a                               ; $0D1D: $EA $9B $C3
    ld   a, [hl+]                                 ; $0D20: $2A
    ld   [$C39E], a                               ; $0D21: $EA $9E $C3
    ld   a, [hl+]                                 ; $0D24: $2A
    ld   [$C3A1], a                               ; $0D25: $EA $A1 $C3
    ld   a, [hl+]                                 ; $0D28: $2A
    ld   [$C39C], a                               ; $0D29: $EA $9C $C3
    ld   a, [hl+]                                 ; $0D2C: $2A
    ld   [$C39F], a                               ; $0D2D: $EA $9F $C3
    ld   a, [hl+]                                 ; $0D30: $2A
    ld   [$C3A2], a                               ; $0D31: $EA $A2 $C3
    ld   a, [hl+]                                 ; $0D34: $2A
    ld   [$C39D], a                               ; $0D35: $EA $9D $C3
    ld   a, [hl+]                                 ; $0D38: $2A
    ld   [$C3A0], a                               ; $0D39: $EA $A0 $C3
    ld   a, [hl+]                                 ; $0D3C: $2A
    ld   [$C3A3], a                               ; $0D3D: $EA $A3 $C3
    ld   a, [hl+]                                 ; $0D40: $2A
    ld   [$C3A4], a                               ; $0D41: $EA $A4 $C3
    ld   a, [hl+]                                 ; $0D44: $2A
    ld   [$C3A5], a                               ; $0D45: $EA $A5 $C3
    ld   a, [hl+]                                 ; $0D48: $2A
    ld   [$C365], a                               ; $0D49: $EA $65 $C3
    ld   [$C207], a                               ; $0D4C: $EA $07 $C2
    ld   a, [hl+]                                 ; $0D4F: $2A
    ld   [$C363], a                               ; $0D50: $EA $63 $C3
    ld   [$C204], a                               ; $0D53: $EA $04 $C2
    ld   a, [hl+]                                 ; $0D56: $2A
    ld   [$C272], a                               ; $0D57: $EA $72 $C2
    ld   a, [hl+]                                 ; $0D5A: $2A
    ld   [$C273], a                               ; $0D5B: $EA $73 $C2
    ret                                           ; $0D5E: $C9


Call_000_0D5F:
    push de                                       ; $0D5F: $D5
    ld   hl, $9800                                ; $0D60: $21 $00 $98
    add  c                                        ; $0D63: $81
    and  $F0                                      ; $0D64: $E6 $F0
    ld   d, $00                                   ; $0D66: $16 $00
    sla  a                                        ; $0D68: $CB $27
    rl   d                                        ; $0D6A: $CB $12
    sla  a                                        ; $0D6C: $CB $27
    rl   d                                        ; $0D6E: $CB $12
    ld   e, a                                     ; $0D70: $5F
    add  hl, de                                   ; $0D71: $19
    pop  de                                       ; $0D72: $D1
    ld   a, e                                     ; $0D73: $7B
    add  b                                        ; $0D74: $80
    and  $0F                                      ; $0D75: $E6 $0F
    rlca                                          ; $0D77: $07
    ld   b, $00                                   ; $0D78: $06 $00
    ld   c, a                                     ; $0D7A: $4F
    add  hl, bc                                   ; $0D7B: $09
    ret                                           ; $0D7C: $C9


Call_000_0D7D:
    ld   a, [$C3A7]                               ; $0D7D: $FA $A7 $C3
    bit  6, a                                     ; $0D80: $CB $77
    jr   nz, jr_000_0DCA                          ; $0D82: $20 $46

    bit  4, a                                     ; $0D84: $CB $67
    jr   nz, jr_000_0DB8                          ; $0D86: $20 $30

    bit  2, a                                     ; $0D88: $CB $57
    jr   nz, jr_000_0DA6                          ; $0D8A: $20 $1A

    bit  0, a                                     ; $0D8C: $CB $47
    jr   nz, jr_000_0D94                          ; $0D8E: $20 $04

    ld   [$C3A6], a                               ; $0D90: $EA $A6 $C3
    ret                                           ; $0D93: $C9


jr_000_0D94:
    bit  1, a                                     ; $0D94: $CB $4F
    jr   z, jr_000_0D9F                           ; $0D96: $28 $07

    and  $F0                                      ; $0D98: $E6 $F0
    ld   [$C3A7], a                               ; $0D9A: $EA $A7 $C3
    jr   jr_000_0DEA                              ; $0D9D: $18 $4B

jr_000_0D9F:
    or   $02                                      ; $0D9F: $F6 $02
    ld   [$C3A7], a                               ; $0DA1: $EA $A7 $C3
    jr   jr_000_0DDC                              ; $0DA4: $18 $36

jr_000_0DA6:
    bit  3, a                                     ; $0DA6: $CB $5F
    jr   z, jr_000_0DB1                           ; $0DA8: $28 $07

    and  $F0                                      ; $0DAA: $E6 $F0
    ld   [$C3A7], a                               ; $0DAC: $EA $A7 $C3
    jr   jr_000_0DEA                              ; $0DAF: $18 $39

jr_000_0DB1:
    or   $08                                      ; $0DB1: $F6 $08
    ld   [$C3A7], a                               ; $0DB3: $EA $A7 $C3
    jr   jr_000_0DDC                              ; $0DB6: $18 $24

jr_000_0DB8:
    bit  5, a                                     ; $0DB8: $CB $6F
    jr   z, jr_000_0DC3                           ; $0DBA: $28 $07

    and  $0F                                      ; $0DBC: $E6 $0F
    ld   [$C3A7], a                               ; $0DBE: $EA $A7 $C3
    jr   jr_000_0E06                              ; $0DC1: $18 $43

jr_000_0DC3:
    or   $20                                      ; $0DC3: $F6 $20
    ld   [$C3A7], a                               ; $0DC5: $EA $A7 $C3
    jr   jr_000_0DF8                              ; $0DC8: $18 $2E

jr_000_0DCA:
    bit  7, a                                     ; $0DCA: $CB $7F
    jr   z, jr_000_0DD5                           ; $0DCC: $28 $07

    and  $0F                                      ; $0DCE: $E6 $0F
    ld   [$C3A7], a                               ; $0DD0: $EA $A7 $C3
    jr   jr_000_0E06                              ; $0DD3: $18 $31

jr_000_0DD5:
    or   $80                                      ; $0DD5: $F6 $80
    ld   [$C3A7], a                               ; $0DD7: $EA $A7 $C3
    jr   jr_000_0DF8                              ; $0DDA: $18 $1C

jr_000_0DDC:
    ld   de, $C378                                ; $0DDC: $11 $78 $C3
    ld   a, [de]                                  ; $0DDF: $1A
    ld   h, a                                     ; $0DE0: $67
    inc  e                                        ; $0DE1: $1C
    ld   a, [de]                                  ; $0DE2: $1A
    ld   l, a                                     ; $0DE3: $6F
    inc  e                                        ; $0DE4: $1C
    ld   bc, $0007                                ; $0DE5: $01 $07 $00
    jr   jr_000_0E14                              ; $0DE8: $18 $2A

jr_000_0DEA:
    ld   de, $C378                                ; $0DEA: $11 $78 $C3
    ld   a, [de]                                  ; $0DED: $1A
    ld   h, a                                     ; $0DEE: $67
    inc  e                                        ; $0DEF: $1C
    ld   a, [de]                                  ; $0DF0: $1A
    ld   l, a                                     ; $0DF1: $6F
    rst  RST_20                                   ; $0DF2: $E7
    ld   bc, $0006                                ; $0DF3: $01 $06 $00
    jr   jr_000_0E14                              ; $0DF6: $18 $1C

jr_000_0DF8:
    ld   de, $C388                                ; $0DF8: $11 $88 $C3
    ld   a, [de]                                  ; $0DFB: $1A
    ld   h, a                                     ; $0DFC: $67
    inc  e                                        ; $0DFD: $1C
    ld   a, [de]                                  ; $0DFE: $1A
    ld   l, a                                     ; $0DFF: $6F
    inc  e                                        ; $0E00: $1C
    ld   bc, $0007                                ; $0E01: $01 $07 $00
    jr   BuildBgMapFromStagedBytes                ; $0E04: $18 $1B

jr_000_0E06:
    ld   de, $C388                                ; $0E06: $11 $88 $C3
    ld   a, [de]                                  ; $0E09: $1A
    ld   h, a                                     ; $0E0A: $67
    inc  e                                        ; $0E0B: $1C
    ld   a, [de]                                  ; $0E0C: $1A
    ld   l, a                                     ; $0E0D: $6F
    rst  RST_20                                   ; $0E0E: $E7
    ld   bc, $0007                                ; $0E0F: $01 $07 $00
    jr   BuildBgMapFromStagedBytes                ; $0E12: $18 $0D

jr_000_0E14:
    push bc                                       ; $0E14: $C5
    ld   c, $1F                                   ; $0E15: $0E $1F
    ld   a, [de]                                  ; $0E17: $1A
    inc  e                                        ; $0E18: $1C
    rst  WriteBgMapTilePair                       ; $0E19: $D7
    rst  WriteBgMapTilePair                       ; $0E1A: $D7
    pop  bc                                       ; $0E1B: $C1
    dec  c                                        ; $0E1C: $0D
    jr   nz, jr_000_0E14                          ; $0E1D: $20 $F5

    jr   jr_000_0E38                              ; $0E1F: $18 $17

BuildBgMapFromStagedBytes::
    push bc                                       ; $0E21: $C5
    ld   c, $1F                                   ; $0E22: $0E $1F

ReadStagedByteForBgMap::
    ld   a, [de]                                  ; $0E24: $1A
    inc  de                                       ; $0E25: $13
    push hl                                       ; $0E26: $E5
    rst  WriteBgMapTilePair                       ; $0E27: $D7
    rst  WriteBgMapTilePair                       ; $0E28: $D7
    pop  hl                                       ; $0E29: $E1
    ld   a, l                                     ; $0E2A: $7D
    swap a                                        ; $0E2B: $CB $37
    rrca                                          ; $0E2D: $0F
    add  $10                                      ; $0E2E: $C6 $10
    rlca                                          ; $0E30: $07
    swap a                                        ; $0E31: $CB $37
    ld   l, a                                     ; $0E33: $6F
    pop  bc                                       ; $0E34: $C1
    dec  c                                        ; $0E35: $0D
    jr   nz, BuildBgMapFromStagedBytes            ; $0E36: $20 $E9

jr_000_0E38:
    ld   a, $01                                   ; $0E38: $3E $01
    ld   [$C3A6], a                               ; $0E3A: $EA $A6 $C3
    ret                                           ; $0E3D: $C9


Call_000_0E3E:
    ld   a, [$C3A8]                               ; $0E3E: $FA $A8 $C3
    and  a                                        ; $0E41: $A7
    jr   nz, jr_000_0E67                          ; $0E42: $20 $23

    ld   a, $01                                   ; $0E44: $3E $01
    ld   [$C3A8], a                               ; $0E46: $EA $A8 $C3
    call Call_000_1317                            ; $0E49: $CD $17 $13
    ld   a, [$C3A1]                               ; $0E4C: $FA $A1 $C3
    ld   e, a                                     ; $0E4F: $5F
    ld   bc, $0000                                ; $0E50: $01 $00 $00
    call Call_000_0D5F                            ; $0E53: $CD $5F $0D
    ld   bc, $C378                                ; $0E56: $01 $78 $C3
    ld   a, h                                     ; $0E59: $7C
    ld   [bc], a                                  ; $0E5A: $02
    inc  c                                        ; $0E5B: $0C
    ld   a, l                                     ; $0E5C: $7D
    ld   [bc], a                                  ; $0E5D: $02
    inc  c                                        ; $0E5E: $0C
    ld   h, $C1                                   ; $0E5F: $26 $C1
    ld   a, [$C3A1]                               ; $0E61: $FA $A1 $C3
    ld   l, a                                     ; $0E64: $6F
    jr   BuildPostClearGameplayGrid               ; $0E65: $18 $57

jr_000_0E67:
    ld   a, [$C3A1]                               ; $0E67: $FA $A1 $C3
    ld   e, a                                     ; $0E6A: $5F
    ld   bc, $0070                                ; $0E6B: $01 $70 $00
    call Call_000_0D5F                            ; $0E6E: $CD $5F $0D
    ld   bc, $C378                                ; $0E71: $01 $78 $C3
    ld   a, h                                     ; $0E74: $7C
    ld   [bc], a                                  ; $0E75: $02
    inc  c                                        ; $0E76: $0C
    ld   a, l                                     ; $0E77: $7D
    ld   [bc], a                                  ; $0E78: $02
    call Call_000_105A                            ; $0E79: $CD $5A $10
    jr   jr_000_0EE7                              ; $0E7C: $18 $69

Call_000_0E7E:
    ld   a, [$C3A8]                               ; $0E7E: $FA $A8 $C3
    and  a                                        ; $0E81: $A7
    jr   nz, jr_000_0EA7                          ; $0E82: $20 $23

    ld   a, $02                                   ; $0E84: $3E $02
    ld   [$C3A8], a                               ; $0E86: $EA $A8 $C3
    call Call_000_1344                            ; $0E89: $CD $44 $13
    ld   a, [$C3A2]                               ; $0E8C: $FA $A2 $C3
    ld   e, a                                     ; $0E8F: $5F
    ld   bc, $0000                                ; $0E90: $01 $00 $00
    call Call_000_0D5F                            ; $0E93: $CD $5F $0D
    ld   bc, $C378                                ; $0E96: $01 $78 $C3
    ld   a, h                                     ; $0E99: $7C
    ld   [bc], a                                  ; $0E9A: $02
    inc  c                                        ; $0E9B: $0C
    ld   a, l                                     ; $0E9C: $7D
    ld   [bc], a                                  ; $0E9D: $02
    inc  c                                        ; $0E9E: $0C
    ld   h, $C1                                   ; $0E9F: $26 $C1
    ld   a, [$C3A2]                               ; $0EA1: $FA $A2 $C3
    ld   l, a                                     ; $0EA4: $6F
    jr   BuildPostClearGameplayGrid               ; $0EA5: $18 $17

jr_000_0EA7:
    ld   a, [$C3A2]                               ; $0EA7: $FA $A2 $C3
    ld   e, a                                     ; $0EAA: $5F
    ld   bc, $0070                                ; $0EAB: $01 $70 $00
    call Call_000_0D5F                            ; $0EAE: $CD $5F $0D
    ld   bc, $C378                                ; $0EB1: $01 $78 $C3
    ld   a, h                                     ; $0EB4: $7C
    ld   [bc], a                                  ; $0EB5: $02
    inc  c                                        ; $0EB6: $0C
    ld   a, l                                     ; $0EB7: $7D
    ld   [bc], a                                  ; $0EB8: $02
    call Call_000_105A                            ; $0EB9: $CD $5A $10
    jr   jr_000_0EE7                              ; $0EBC: $18 $29

BuildPostClearGameplayGrid::
    ld   de, $000D                                ; $0EBE: $11 $0D $00
    push hl                                       ; $0EC1: $E5
    push bc                                       ; $0EC2: $C5
    push de                                       ; $0EC3: $D5
    call MapAreaLookup                            ; $0EC4: $CD $86 $10
    call ResolveMapDataEntry                      ; $0EC7: $CD $A4 $10
    call LookupPackedMapClass                     ; $0ECA: $CD $ED $10
    call LookupMapGraphicsData                    ; $0ECD: $CD $CD $10

jr_000_0ED0:
    pop  de                                       ; $0ED0: $D1

Jump_000_0ED1:
    pop  bc                                       ; $0ED1: $C1
    ld   a, [hl]                                  ; $0ED2: $7E
    ld   [bc], a                                  ; $0ED3: $02
    inc  bc                                       ; $0ED4: $03
    pop  hl                                       ; $0ED5: $E1
    ld   a, [$C3B4]                               ; $0ED6: $FA $B4 $C3

StorePostClearGridClass::
    ld   [hl], a                                  ; $0ED9: $77
    ld   a, l                                     ; $0EDA: $7D
    add  $10                                      ; $0EDB: $C6 $10
    ld   l, a                                     ; $0EDD: $6F
    dec  e                                        ; $0EDE: $1D
    ld   a, e                                     ; $0EDF: $7B
    cp   $06                                      ; $0EE0: $FE $06
    jr   z, jr_000_0F3F                           ; $0EE2: $28 $5B

    and  a                                        ; $0EE4: $A7
    jr   z, jr_000_0F43                           ; $0EE5: $28 $5C

jr_000_0EE7:
    push hl                                       ; $0EE7: $E5
    push bc                                       ; $0EE8: $C5
    push de                                       ; $0EE9: $D5
    ld   a, [$C3B3]                               ; $0EEA: $FA $B3 $C3
    xor  $02                                      ; $0EED: $EE $02
    ld   [$C3B3], a                               ; $0EEF: $EA $B3 $C3
    bit  1, a                                     ; $0EF2: $CB $4F
    jr   nz, jr_000_0F27                          ; $0EF4: $20 $31

    ld   a, [$C3B2]                               ; $0EF6: $FA $B2 $C3
    add  $08                                      ; $0EF9: $C6 $08
    ld   [$C3B2], a                               ; $0EFB: $EA $B2 $C3
    bit  6, a                                     ; $0EFE: $CB $77
    jr   z, jr_000_0F1C                           ; $0F00: $28 $1A

    and  $3F                                      ; $0F02: $E6 $3F
    ld   [$C3B2], a                               ; $0F04: $EA $B2 $C3
    ld   a, [$C3B1]                               ; $0F07: $FA $B1 $C3
    add  $08                                      ; $0F0A: $C6 $08
    and  $3F                                      ; $0F0C: $E6 $3F
    ld   [$C3B1], a                               ; $0F0E: $EA $B1 $C3
    ld   a, [$C3BB]                               ; $0F11: $FA $BB $C3
    ld   l, a                                     ; $0F14: $6F
    ld   a, [$C3B7]                               ; $0F15: $FA $B7 $C3
    ld   h, a                                     ; $0F18: $67
    call Call_000_109A                            ; $0F19: $CD $9A $10

jr_000_0F1C:
    ld   a, [$C3BC]                               ; $0F1C: $FA $BC $C3
    ld   l, a                                     ; $0F1F: $6F
    ld   a, [$C3B8]                               ; $0F20: $FA $B8 $C3
    ld   h, a                                     ; $0F23: $67
    call Call_000_10B8                            ; $0F24: $CD $B8 $10

jr_000_0F27:
    ld   a, [$C3BE]                               ; $0F27: $FA $BE $C3
    ld   l, a                                     ; $0F2A: $6F
    ld   a, [$C3BA]                               ; $0F2B: $FA $BA $C3
    ld   h, a                                     ; $0F2E: $67
    call Call_000_1101                            ; $0F2F: $CD $01 $11
    ld   a, [$C3BD]                               ; $0F32: $FA $BD $C3
    ld   l, a                                     ; $0F35: $6F
    ld   a, [$C3B9]                               ; $0F36: $FA $B9 $C3
    ld   h, a                                     ; $0F39: $67
    call Call_000_10E1                            ; $0F3A: $CD $E1 $10
    jr   jr_000_0ED0                              ; $0F3D: $18 $91

jr_000_0F3F:
    jp   Jump_000_1070                            ; $0F3F: $C3 $70 $10


    ret                                           ; $0F42: $C9


jr_000_0F43:
    xor  a                                        ; $0F43: $AF
    ld   [$C3A8], a                               ; $0F44: $EA $A8 $C3
    ret                                           ; $0F47: $C9


Call_000_0F48:
    ld   a, [$C3A8]                               ; $0F48: $FA $A8 $C3
    and  a                                        ; $0F4B: $A7
    jr   nz, jr_000_0F71                          ; $0F4C: $20 $23

    ld   a, $04                                   ; $0F4E: $3E $04
    ld   [$C3A8], a                               ; $0F50: $EA $A8 $C3
    call Call_000_1344                            ; $0F53: $CD $44 $13
    ld   a, [$C3A2]                               ; $0F56: $FA $A2 $C3
    ld   e, a                                     ; $0F59: $5F
    ld   bc, $0000                                ; $0F5A: $01 $00 $00
    call Call_000_0D5F                            ; $0F5D: $CD $5F $0D
    ld   bc, $C388                                ; $0F60: $01 $88 $C3
    ld   a, h                                     ; $0F63: $7C
    ld   [bc], a                                  ; $0F64: $02
    inc  c                                        ; $0F65: $0C
    ld   a, l                                     ; $0F66: $7D
    ld   [bc], a                                  ; $0F67: $02
    inc  c                                        ; $0F68: $0C
    ld   h, $C1                                   ; $0F69: $26 $C1
    ld   a, [$C3A2]                               ; $0F6B: $FA $A2 $C3
    ld   l, a                                     ; $0F6E: $6F
    jr   BuildPreClearStageGrid                   ; $0F6F: $18 $57

jr_000_0F71:
    ld   a, [$C3A2]                               ; $0F71: $FA $A2 $C3
    ld   e, a                                     ; $0F74: $5F
    ld   bc, $0700                                ; $0F75: $01 $00 $07
    call Call_000_0D5F                            ; $0F78: $CD $5F $0D
    ld   bc, $C388                                ; $0F7B: $01 $88 $C3
    ld   a, h                                     ; $0F7E: $7C
    ld   [bc], a                                  ; $0F7F: $02
    inc  c                                        ; $0F80: $0C
    ld   a, l                                     ; $0F81: $7D
    ld   [bc], a                                  ; $0F82: $02
    call Call_000_105A                            ; $0F83: $CD $5A $10
    jr   jr_000_0FF5                              ; $0F86: $18 $6D

Call_000_0F88:
    ld   a, [$C3A8]                               ; $0F88: $FA $A8 $C3
    and  a                                        ; $0F8B: $A7
    jr   nz, jr_000_0FB1                          ; $0F8C: $20 $23

    ld   a, $08                                   ; $0F8E: $3E $08
    ld   [$C3A8], a                               ; $0F90: $EA $A8 $C3
    call Call_000_1371                            ; $0F93: $CD $71 $13
    ld   a, [$C3A3]                               ; $0F96: $FA $A3 $C3
    ld   e, a                                     ; $0F99: $5F
    ld   bc, $0000                                ; $0F9A: $01 $00 $00
    call Call_000_0D5F                            ; $0F9D: $CD $5F $0D
    ld   bc, $C388                                ; $0FA0: $01 $88 $C3
    ld   a, h                                     ; $0FA3: $7C
    ld   [bc], a                                  ; $0FA4: $02
    inc  c                                        ; $0FA5: $0C
    ld   a, l                                     ; $0FA6: $7D
    ld   [bc], a                                  ; $0FA7: $02
    inc  c                                        ; $0FA8: $0C
    ld   h, $C1                                   ; $0FA9: $26 $C1
    ld   a, [$C3A3]                               ; $0FAB: $FA $A3 $C3
    ld   l, a                                     ; $0FAE: $6F
    jr   BuildPreClearStageGrid                   ; $0FAF: $18 $17

jr_000_0FB1:
    ld   a, [$C3A3]                               ; $0FB1: $FA $A3 $C3
    ld   e, a                                     ; $0FB4: $5F
    ld   bc, $0700                                ; $0FB5: $01 $00 $07
    call Call_000_0D5F                            ; $0FB8: $CD $5F $0D
    ld   bc, $C388                                ; $0FBB: $01 $88 $C3
    ld   a, h                                     ; $0FBE: $7C
    ld   [bc], a                                  ; $0FBF: $02
    inc  c                                        ; $0FC0: $0C
    ld   a, l                                     ; $0FC1: $7D
    ld   [bc], a                                  ; $0FC2: $02
    call Call_000_105A                            ; $0FC3: $CD $5A $10
    jr   jr_000_0FF5                              ; $0FC6: $18 $2D

BuildPreClearStageGrid::
    ld   de, $000E                                ; $0FC8: $11 $0E $00
    push hl                                       ; $0FCB: $E5
    push bc                                       ; $0FCC: $C5
    push de                                       ; $0FCD: $D5
    call MapAreaLookup                            ; $0FCE: $CD $86 $10
    call ResolveMapDataEntry                      ; $0FD1: $CD $A4 $10
    call LookupPackedMapClass                     ; $0FD4: $CD $ED $10
    call LookupMapGraphicsData                    ; $0FD7: $CD $CD $10

jr_000_0FDA:
    pop  de                                       ; $0FDA: $D1
    pop  bc                                       ; $0FDB: $C1
    ld   a, [hl]                                  ; $0FDC: $7E
    ld   [bc], a                                  ; $0FDD: $02
    inc  bc                                       ; $0FDE: $03
    pop  hl                                       ; $0FDF: $E1
    ld   a, [$C3B4]                               ; $0FE0: $FA $B4 $C3

StorePreClearGridClass::
    ld   [hl], a                                  ; $0FE3: $77
    ld   a, l                                     ; $0FE4: $7D
    swap a                                        ; $0FE5: $CB $37
    add  $10                                      ; $0FE7: $C6 $10
    swap a                                        ; $0FE9: $CB $37
    ld   l, a                                     ; $0FEB: $6F
    dec  e                                        ; $0FEC: $1D
    ld   a, e                                     ; $0FED: $7B
    cp   $07                                      ; $0FEE: $FE $07
    jr   z, jr_000_1052                           ; $0FF0: $28 $60

    and  a                                        ; $0FF2: $A7
    jr   z, jr_000_1055                           ; $0FF3: $28 $60

jr_000_0FF5:
    push hl                                       ; $0FF5: $E5
    push bc                                       ; $0FF6: $C5
    push de                                       ; $0FF7: $D5
    ld   a, [$C3B3]                               ; $0FF8: $FA $B3 $C3
    xor  $01                                      ; $0FFB: $EE $01
    ld   [$C3B3], a                               ; $0FFD: $EA $B3 $C3

Call_000_1000:
    bit  0, a                                     ; $1000: $CB $47
    jr   nz, jr_000_103A                          ; $1002: $20 $36

    ld   a, [$C3B2]                               ; $1004: $FA $B2 $C3
    rlca                                          ; $1007: $07
    swap a                                        ; $1008: $CB $37
    add  $20                                      ; $100A: $C6 $20
    push af                                       ; $100C: $F5
    swap a                                        ; $100D: $CB $37
    rrca                                          ; $100F: $0F
    ld   [$C3B2], a                               ; $1010: $EA $B2 $C3
    pop  af                                       ; $1013: $F1
    jr   nc, jr_000_102F                          ; $1014: $30 $19

    ld   a, [$C3B1]                               ; $1016: $FA $B1 $C3
    rlca                                          ; $1019: $07
    swap a                                        ; $101A: $CB $37
    add  $20                                      ; $101C: $C6 $20
    swap a                                        ; $101E: $CB $37
    rrca                                          ; $1020: $0F
    ld   [$C3B1], a                               ; $1021: $EA $B1 $C3
    ld   a, [$C3BB]                               ; $1024: $FA $BB $C3
    ld   l, a                                     ; $1027: $6F
    ld   a, [$C3B7]                               ; $1028: $FA $B7 $C3
    ld   h, a                                     ; $102B: $67
    call Call_000_109A                            ; $102C: $CD $9A $10

jr_000_102F:
    ld   a, [$C3BC]                               ; $102F: $FA $BC $C3
    ld   l, a                                     ; $1032: $6F
    ld   a, [$C3B8]                               ; $1033: $FA $B8 $C3
    ld   h, a                                     ; $1036: $67
    call Call_000_10B8                            ; $1037: $CD $B8 $10

jr_000_103A:
    ld   a, [$C3BE]                               ; $103A: $FA $BE $C3
    ld   l, a                                     ; $103D: $6F
    ld   a, [$C3BA]                               ; $103E: $FA $BA $C3
    ld   h, a                                     ; $1041: $67
    call Call_000_1101                            ; $1042: $CD $01 $11
    ld   a, [$C3BD]                               ; $1045: $FA $BD $C3
    ld   l, a                                     ; $1048: $6F
    ld   a, [$C3B9]                               ; $1049: $FA $B9 $C3
    ld   h, a                                     ; $104C: $67
    call Call_000_10E1                            ; $104D: $CD $E1 $10
    jr   jr_000_0FDA                              ; $1050: $18 $88

jr_000_1052:
    jr   jr_000_1070                              ; $1052: $18 $1C

    ret                                           ; $1054: $C9


jr_000_1055:
    xor  a                                        ; $1055: $AF
    ld   [$C3A8], a                               ; $1056: $EA $A8 $C3
    ret                                           ; $1059: $C9


Call_000_105A:
    push hl                                       ; $105A: $E5
    ld   hl, $C3AD                                ; $105B: $21 $AD $C3
    ld   a, [hl+]                                 ; $105E: $2A
    ld   d, a                                     ; $105F: $57
    ld   a, [hl+]                                 ; $1060: $2A
    ld   e, a                                     ; $1061: $5F
    ld   a, [hl+]                                 ; $1062: $2A
    ld   b, a                                     ; $1063: $47
    ld   a, [hl+]                                 ; $1064: $2A
    ld   c, a                                     ; $1065: $4F
    pop  hl                                       ; $1066: $E1
    ld   a, [$C3AB]                               ; $1067: $FA $AB $C3
    ld   h, a                                     ; $106A: $67
    ld   a, [$C3AC]                               ; $106B: $FA $AC $C3
    ld   l, a                                     ; $106E: $6F
    ret                                           ; $106F: $C9


Jump_000_1070:
jr_000_1070:
    push hl                                       ; $1070: $E5
    ld   hl, $C3AD                                ; $1071: $21 $AD $C3
    ld   a, d                                     ; $1074: $7A
    ld   [hl+], a                                 ; $1075: $22
    ld   a, e                                     ; $1076: $7B
    ld   [hl+], a                                 ; $1077: $22
    ld   a, b                                     ; $1078: $78
    ld   [hl+], a                                 ; $1079: $22
    ld   a, c                                     ; $107A: $79
    ld   [hl+], a                                 ; $107B: $22
    pop  hl                                       ; $107C: $E1
    ld   a, h                                     ; $107D: $7C
    ld   [$C3AB], a                               ; $107E: $EA $AB $C3
    ld   a, l                                     ; $1081: $7D
    ld   [$C3AC], a                               ; $1082: $EA $AC $C3
    ret                                           ; $1085: $C9


MapAreaLookup::
    ld   a, [$C39A]                               ; $1086: $FA $9A $C3
    ld   hl, $3C80                                ; $1089: $21 $80 $3C
    rlca                                          ; $108C: $07
    ld   e, a                                     ; $108D: $5F
    add  hl, de                                   ; $108E: $19
    ld   a, [hl+]                                 ; $108F: $2A

LoadMapLookupSubindex::
    ld   c, a                                     ; $1090: $4F
    ld   [$C3BB], a                               ; $1091: $EA $BB $C3
    ld   a, [hl]                                  ; $1094: $7E
    ld   h, a                                     ; $1095: $67
    ld   [$C3B7], a                               ; $1096: $EA $B7 $C3
    ld   l, c                                     ; $1099: $69

Call_000_109A:
    ld   a, [$C3B1]                               ; $109A: $FA $B1 $C3
    ld   e, a                                     ; $109D: $5F
    add  hl, de                                   ; $109E: $19
    ld   a, [hl]                                  ; $109F: $7E
    ld   [$C3B5], a                               ; $10A0: $EA $B5 $C3
    ret                                           ; $10A3: $C9


ResolveMapDataEntry::
    ld   a, [$C39A]                               ; $10A4: $FA $9A $C3
    ld   hl, $3C98                                ; $10A7: $21 $98 $3C
    rlca                                          ; $10AA: $07
    ld   e, a                                     ; $10AB: $5F
    add  hl, de                                   ; $10AC: $19
    ld   a, [hl+]                                 ; $10AD: $2A
    ld   c, a                                     ; $10AE: $4F
    ld   [$C3BC], a                               ; $10AF: $EA $BC $C3
    ld   a, [hl]                                  ; $10B2: $7E
    ld   h, a                                     ; $10B3: $67
    ld   [$C3B8], a                               ; $10B4: $EA $B8 $C3
    ld   l, c                                     ; $10B7: $69

Call_000_10B8:
    ld   a, [$C3B5]                               ; $10B8: $FA $B5 $C3
    rlca                                          ; $10BB: $07
    ld   e, a                                     ; $10BC: $5F
    add  hl, de                                   ; $10BD: $19
    ld   a, [hl+]                                 ; $10BE: $2A
    ld   c, a                                     ; $10BF: $4F
    ld   a, [hl]                                  ; $10C0: $7E
    ld   h, a                                     ; $10C1: $67
    ld   l, c                                     ; $10C2: $69
    ld   a, [$C3B2]                               ; $10C3: $FA $B2 $C3
    ld   e, a                                     ; $10C6: $5F
    add  hl, de                                   ; $10C7: $19
    ld   a, [hl]                                  ; $10C8: $7E
    ld   [$C3B6], a                               ; $10C9: $EA $B6 $C3
    ret                                           ; $10CC: $C9


LookupMapGraphicsData::
    ld   a, [$C39A]                               ; $10CD: $FA $9A $C3
    ld   hl, $3CB0                                ; $10D0: $21 $B0 $3C
    rlca                                          ; $10D3: $07
    ld   e, a                                     ; $10D4: $5F
    add  hl, de                                   ; $10D5: $19
    ld   a, [hl+]                                 ; $10D6: $2A
    ld   c, a                                     ; $10D7: $4F
    ld   [$C3BD], a                               ; $10D8: $EA $BD $C3
    ld   a, [hl]                                  ; $10DB: $7E
    ld   h, a                                     ; $10DC: $67
    ld   [$C3B9], a                               ; $10DD: $EA $B9 $C3
    ld   l, c                                     ; $10E0: $69

Call_000_10E1:
    ld   a, [$C3B6]                               ; $10E1: $FA $B6 $C3
    call Call_000_0BE9                            ; $10E4: $CD $E9 $0B
    ld   a, [$C3B3]                               ; $10E7: $FA $B3 $C3
    ld   e, a                                     ; $10EA: $5F
    add  hl, de                                   ; $10EB: $19
    ret                                           ; $10EC: $C9


LookupPackedMapClass::
    ld   a, [$C39A]                               ; $10ED: $FA $9A $C3
    ld   hl, $3CC8                                ; $10F0: $21 $C8 $3C
    rlca                                          ; $10F3: $07
    ld   e, a                                     ; $10F4: $5F
    add  hl, de                                   ; $10F5: $19
    ld   a, [hl+]                                 ; $10F6: $2A
    ld   c, a                                     ; $10F7: $4F
    ld   [$C3BE], a                               ; $10F8: $EA $BE $C3
    ld   a, [hl]                                  ; $10FB: $7E
    ld   h, a                                     ; $10FC: $67
    ld   [$C3BA], a                               ; $10FD: $EA $BA $C3
    ld   l, c                                     ; $1100: $69

Call_000_1101:
    ld   a, [$C3B6]                               ; $1101: $FA $B6 $C3
    call Add2AToHL                                ; $1104: $CD $81 $00
    ld   a, [$C3B3]                               ; $1107: $FA $B3 $C3
    bit  1, a                                     ; $110A: $CB $4F
    jr   z, jr_000_110F                           ; $110C: $28 $01

    inc  hl                                       ; $110E: $23

jr_000_110F:
    bit  0, a                                     ; $110F: $CB $47
    jr   z, jr_000_111A                           ; $1111: $28 $07

    ld   a, [hl]                                  ; $1113: $7E
    and  $0F                                      ; $1114: $E6 $0F
    ld   [$C3B4], a                               ; $1116: $EA $B4 $C3
    ret                                           ; $1119: $C9


jr_000_111A:
    ld   a, [hl]                                  ; $111A: $7E
    and  $F0                                      ; $111B: $E6 $F0
    swap a                                        ; $111D: $CB $37
    ld   [$C3B4], a                               ; $111F: $EA $B4 $C3
    ret                                           ; $1122: $C9


Call_000_1123:
    ld   a, [$C3A8]                               ; $1123: $FA $A8 $C3
    and  $03                                      ; $1126: $E6 $03
    jr   nz, jr_000_1136                          ; $1128: $20 $0C

    call Call_000_124D                            ; $112A: $CD $4D $12
    call Call_000_12B2                            ; $112D: $CD $B2 $12
    ld   a, [$C3A7]                               ; $1130: $FA $A7 $C3
    and  $F0                                      ; $1133: $E6 $F0
    ret  nz                                       ; $1135: $C0

jr_000_1136:
    call Call_000_1151                            ; $1136: $CD $51 $11
    jp   Jump_000_11CF                            ; $1139: $C3 $CF $11


Call_000_113C:
    ld   a, [$C39A]                               ; $113C: $FA $9A $C3
    and  a                                        ; $113F: $A7
    jr   z, jr_000_114B                           ; $1140: $28 $09

    cp   $08                                      ; $1142: $FE $08
    jr   c, jr_000_114E                           ; $1144: $38 $08

    jr   z, jr_000_114B                           ; $1146: $28 $03

    ld   b, $03                                   ; $1148: $06 $03
    ret                                           ; $114A: $C9


jr_000_114B:
    ld   b, $05                                   ; $114B: $06 $05
    ret                                           ; $114D: $C9


jr_000_114E:
    ld   b, $04                                   ; $114E: $06 $04
    ret                                           ; $1150: $C9


Call_000_1151:
Jump_000_1151:
    call Call_000_113C                            ; $1151: $CD $3C $11
    ld   a, b                                     ; $1154: $78
    ld   [$C3C5], a                               ; $1155: $EA $C5 $C3
    ld   [$3000], a                               ; $1158: $EA $00 $30
    ld   a, [$C3A8]                               ; $115B: $FA $A8 $C3
    and  $01                                      ; $115E: $E6 $01
    jr   nz, jr_000_117F                          ; $1160: $20 $1D

    ld   a, [$C3A9]                               ; $1162: $FA $A9 $C3
    sub  $10                                      ; $1165: $D6 $10
    jr   z, jr_000_1177                           ; $1167: $28 $0E

    dec  a                                        ; $1169: $3D
    jr   z, jr_000_1177                           ; $116A: $28 $0B

    dec  a                                        ; $116C: $3D
    jr   z, jr_000_1177                           ; $116D: $28 $08

    dec  a                                        ; $116F: $3D
    jr   z, jr_000_1177                           ; $1170: $28 $05

    dec  a                                        ; $1172: $3D
    jr   z, jr_000_1177                           ; $1173: $28 $02

    dec  a                                        ; $1175: $3D
    ret  nz                                       ; $1176: $C0

jr_000_1177:
    ld   a, [$C3A7]                               ; $1177: $FA $A7 $C3
    or   $01                                      ; $117A: $F6 $01
    ld   [$C3A7], a                               ; $117C: $EA $A7 $C3

jr_000_117F:
    call Call_000_0E3E                            ; $117F: $CD $3E $0E
    ld   a, [$C3A8]                               ; $1182: $FA $A8 $C3
    and  a                                        ; $1185: $A7
    ret  nz                                       ; $1186: $C0

    ld   a, [$C3A1]                               ; $1187: $FA $A1 $C3
    swap a                                        ; $118A: $CB $37
    add  $10                                      ; $118C: $C6 $10
    swap a                                        ; $118E: $CB $37
    ld   [$C3A1], a                               ; $1190: $EA $A1 $C3
    ld   a, [$C3A3]                               ; $1193: $FA $A3 $C3
    swap a                                        ; $1196: $CB $37
    add  $10                                      ; $1198: $C6 $10
    swap a                                        ; $119A: $CB $37
    ld   [$C3A3], a                               ; $119C: $EA $A3 $C3
    ld   a, [$C3A2]                               ; $119F: $FA $A2 $C3
    swap a                                        ; $11A2: $CB $37
    add  $10                                      ; $11A4: $C6 $10
    swap a                                        ; $11A6: $CB $37
    ld   [$C3A2], a                               ; $11A8: $EA $A2 $C3
    call Call_000_1317                            ; $11AB: $CD $17 $13
    call Call_000_139E                            ; $11AE: $CD $9E $13
    call Call_000_1330                            ; $11B1: $CD $30 $13
    call Call_000_1371                            ; $11B4: $CD $71 $13
    call Call_000_139E                            ; $11B7: $CD $9E $13
    call Call_000_138A                            ; $11BA: $CD $8A $13
    call Call_000_1344                            ; $11BD: $CD $44 $13
    call Call_000_139E                            ; $11C0: $CD $9E $13
    call Call_000_135D                            ; $11C3: $CD $5D $13
    ld   a, [$C3A9]                               ; $11C6: $FA $A9 $C3
    sub  $10                                      ; $11C9: $D6 $10
    ld   [$C3A9], a                               ; $11CB: $EA $A9 $C3
    ret                                           ; $11CE: $C9


Jump_000_11CF:
    call Call_000_113C                            ; $11CF: $CD $3C $11
    ld   a, b                                     ; $11D2: $78
    ld   [$C3C5], a                               ; $11D3: $EA $C5 $C3
    ld   [$3000], a                               ; $11D6: $EA $00 $30
    ld   a, [$C3A8]                               ; $11D9: $FA $A8 $C3
    and  $02                                      ; $11DC: $E6 $02
    jr   nz, jr_000_11FD                          ; $11DE: $20 $1D

    ld   a, [$C3A9]                               ; $11E0: $FA $A9 $C3
    sub  $EB                                      ; $11E3: $D6 $EB
    jr   z, jr_000_11F5                           ; $11E5: $28 $0E

    dec  a                                        ; $11E7: $3D
    jr   z, jr_000_11F5                           ; $11E8: $28 $0B

    dec  a                                        ; $11EA: $3D
    jr   z, jr_000_11F5                           ; $11EB: $28 $08

    dec  a                                        ; $11ED: $3D
    jr   z, jr_000_11F5                           ; $11EE: $28 $05

    dec  a                                        ; $11F0: $3D
    jr   z, jr_000_11F5                           ; $11F1: $28 $02

    dec  a                                        ; $11F3: $3D
    ret  nz                                       ; $11F4: $C0

Call_000_11F5:
jr_000_11F5:
    ld   a, [$C3A7]                               ; $11F5: $FA $A7 $C3
    or   $04                                      ; $11F8: $F6 $04
    ld   [$C3A7], a                               ; $11FA: $EA $A7 $C3

Call_000_11FD:
jr_000_11FD:
    call Call_000_0E7E                            ; $11FD: $CD $7E $0E
    ld   a, [$C3A8]                               ; $1200: $FA $A8 $C3
    and  a                                        ; $1203: $A7
    ret  nz                                       ; $1204: $C0

    ld   a, [$C3A3]                               ; $1205: $FA $A3 $C3
    swap a                                        ; $1208: $CB $37
    sub  $10                                      ; $120A: $D6 $10
    swap a                                        ; $120C: $CB $37
    ld   [$C3A3], a                               ; $120E: $EA $A3 $C3
    ld   a, [$C3A1]                               ; $1211: $FA $A1 $C3
    swap a                                        ; $1214: $CB $37
    sub  $10                                      ; $1216: $D6 $10
    swap a                                        ; $1218: $CB $37
    ld   [$C3A1], a                               ; $121A: $EA $A1 $C3
    ld   a, [$C3A2]                               ; $121D: $FA $A2 $C3
    swap a                                        ; $1220: $CB $37
    sub  $10                                      ; $1222: $D6 $10
    swap a                                        ; $1224: $CB $37
    ld   [$C3A2], a                               ; $1226: $EA $A2 $C3
    call Call_000_1317                            ; $1229: $CD $17 $13
    call Call_000_13CB                            ; $122C: $CD $CB $13
    call Call_000_1330                            ; $122F: $CD $30 $13
    call Call_000_1371                            ; $1232: $CD $71 $13
    call Call_000_13CB                            ; $1235: $CD $CB $13
    call Call_000_138A                            ; $1238: $CD $8A $13
    call Call_000_1344                            ; $123B: $CD $44 $13
    call Call_000_13CB                            ; $123E: $CD $CB $13
    call Call_000_135D                            ; $1241: $CD $5D $13
    ld   a, [$C3A9]                               ; $1244: $FA $A9 $C3
    add  $10                                      ; $1247: $C6 $10
    ld   [$C3A9], a                               ; $1249: $EA $A9 $C3
    ret                                           ; $124C: $C9


Call_000_124D:
Jump_000_124D:
    call Call_000_113C                            ; $124D: $CD $3C $11
    ld   a, b                                     ; $1250: $78
    ld   [$C3C5], a                               ; $1251: $EA $C5 $C3
    ld   [$3000], a                               ; $1254: $EA $00 $30
    ld   a, [$C3A8]                               ; $1257: $FA $A8 $C3
    and  $04                                      ; $125A: $E6 $04
    jr   nz, jr_000_126E                          ; $125C: $20 $10

    ld   a, [$C3AA]                               ; $125E: $FA $AA $C3
    sub  $F1                                      ; $1261: $D6 $F1
    add  $20                                      ; $1263: $C6 $20

Jump_000_1265:
    ret  nc                                       ; $1265: $D0

Jump_000_1266:
    ld   a, [$C3A7]                               ; $1266: $FA $A7 $C3
    or   $10                                      ; $1269: $F6 $10
    ld   [$C3A7], a                               ; $126B: $EA $A7 $C3

jr_000_126E:
    call Call_000_0F48                            ; $126E: $CD $48 $0F
    ld   a, [$C3A8]                               ; $1271: $FA $A8 $C3
    and  a                                        ; $1274: $A7
    ret  nz                                       ; $1275: $C0

    ld   a, [$C3A1]                               ; $1276: $FA $A1 $C3
    sub  $10                                      ; $1279: $D6 $10
    ld   [$C3A1], a                               ; $127B: $EA $A1 $C3
    ld   a, [$C3A3]                               ; $127E: $FA $A3 $C3
    sub  $10                                      ; $1281: $D6 $10
    ld   [$C3A3], a                               ; $1283: $EA $A3 $C3
    ld   a, [$C3A2]                               ; $1286: $FA $A2 $C3
    sub  $10                                      ; $1289: $D6 $10
    ld   [$C3A2], a                               ; $128B: $EA $A2 $C3
    call Call_000_1317                            ; $128E: $CD $17 $13
    call Call_000_1420                            ; $1291: $CD $20 $14
    call Call_000_1330                            ; $1294: $CD $30 $13
    call Call_000_1371                            ; $1297: $CD $71 $13
    call Call_000_1420                            ; $129A: $CD $20 $14
    call Call_000_138A                            ; $129D: $CD $8A $13
    call Call_000_1344                            ; $12A0: $CD $44 $13
    call Call_000_1420                            ; $12A3: $CD $20 $14
    call Call_000_135D                            ; $12A6: $CD $5D $13
    ld   a, [$C3AA]                               ; $12A9: $FA $AA $C3
    add  $10                                      ; $12AC: $C6 $10
    ld   [$C3AA], a                               ; $12AE: $EA $AA $C3
    ret                                           ; $12B1: $C9


Call_000_12B2:
Jump_000_12B2:
    call Call_000_113C                            ; $12B2: $CD $3C $11
    ld   a, b                                     ; $12B5: $78
    ld   [$C3C5], a                               ; $12B6: $EA $C5 $C3
    ld   [$3000], a                               ; $12B9: $EA $00 $30
    ld   a, [$C3A8]                               ; $12BC: $FA $A8 $C3
    and  $08                                      ; $12BF: $E6 $08
    jr   nz, jr_000_12D3                          ; $12C1: $20 $10

    ld   a, [$C3AA]                               ; $12C3: $FA $AA $C3
    sub  $30                                      ; $12C6: $D6 $30
    add  $20                                      ; $12C8: $C6 $20
    ret  nc                                       ; $12CA: $D0

    ld   a, [$C3A7]                               ; $12CB: $FA $A7 $C3
    or   $40                                      ; $12CE: $F6 $40
    ld   [$C3A7], a                               ; $12D0: $EA $A7 $C3

jr_000_12D3:
    call Call_000_0F88                            ; $12D3: $CD $88 $0F
    ld   a, [$C3A8]                               ; $12D6: $FA $A8 $C3
    and  a                                        ; $12D9: $A7
    ret  nz                                       ; $12DA: $C0

    ld   a, [$C3A1]                               ; $12DB: $FA $A1 $C3
    add  $10                                      ; $12DE: $C6 $10
    ld   [$C3A1], a                               ; $12E0: $EA $A1 $C3
    ld   a, [$C3A3]                               ; $12E3: $FA $A3 $C3
    add  $10                                      ; $12E6: $C6 $10
    ld   [$C3A3], a                               ; $12E8: $EA $A3 $C3
    ld   a, [$C3A2]                               ; $12EB: $FA $A2 $C3
    add  $10                                      ; $12EE: $C6 $10
    ld   [$C3A2], a                               ; $12F0: $EA $A2 $C3
    call Call_000_1317                            ; $12F3: $CD $17 $13
    call Call_000_13F8                            ; $12F6: $CD $F8 $13
    call Call_000_1330                            ; $12F9: $CD $30 $13
    call Call_000_1371                            ; $12FC: $CD $71 $13
    call Call_000_13F8                            ; $12FF: $CD $F8 $13
    call Call_000_138A                            ; $1302: $CD $8A $13
    call Call_000_1344                            ; $1305: $CD $44 $13
    call Call_000_13F8                            ; $1308: $CD $F8 $13
    call Call_000_135D                            ; $130B: $CD $5D $13
    ld   a, [$C3AA]                               ; $130E: $FA $AA $C3
    sub  $10                                      ; $1311: $D6 $10
    ld   [$C3AA], a                               ; $1313: $EA $AA $C3
    ret                                           ; $1316: $C9


Call_000_1317:
    ld   a, [$C39B]                               ; $1317: $FA $9B $C3
    ld   [$C3B1], a                               ; $131A: $EA $B1 $C3
    ld   a, [$C39E]                               ; $131D: $FA $9E $C3
    and  $3F                                      ; $1320: $E6 $3F
    ld   [$C3B2], a                               ; $1322: $EA $B2 $C3
    ld   a, [$C39E]                               ; $1325: $FA $9E $C3
    and  $C0                                      ; $1328: $E6 $C0
    rlca                                          ; $132A: $07
    rlca                                          ; $132B: $07
    ld   [$C3B3], a                               ; $132C: $EA $B3 $C3
    ret                                           ; $132F: $C9


Call_000_1330:
    ld   a, [$C3B1]                               ; $1330: $FA $B1 $C3
    ld   [$C39B], a                               ; $1333: $EA $9B $C3
    ld   a, [$C3B2]                               ; $1336: $FA $B2 $C3
    ld   c, a                                     ; $1339: $4F
    ld   a, [$C3B3]                               ; $133A: $FA $B3 $C3
    rrca                                          ; $133D: $0F
    rrca                                          ; $133E: $0F
    or   c                                        ; $133F: $B1
    ld   [$C39E], a                               ; $1340: $EA $9E $C3
    ret                                           ; $1343: $C9


Call_000_1344:
    ld   a, [$C39C]                               ; $1344: $FA $9C $C3
    ld   [$C3B1], a                               ; $1347: $EA $B1 $C3
    ld   a, [$C39F]                               ; $134A: $FA $9F $C3
    and  $3F                                      ; $134D: $E6 $3F
    ld   [$C3B2], a                               ; $134F: $EA $B2 $C3
    ld   a, [$C39F]                               ; $1352: $FA $9F $C3
    and  $C0                                      ; $1355: $E6 $C0
    rlca                                          ; $1357: $07
    rlca                                          ; $1358: $07
    ld   [$C3B3], a                               ; $1359: $EA $B3 $C3
    ret                                           ; $135C: $C9


Call_000_135D:
    ld   a, [$C3B1]                               ; $135D: $FA $B1 $C3
    ld   [$C39C], a                               ; $1360: $EA $9C $C3
    ld   a, [$C3B2]                               ; $1363: $FA $B2 $C3
    ld   c, a                                     ; $1366: $4F
    ld   a, [$C3B3]                               ; $1367: $FA $B3 $C3
    rrca                                          ; $136A: $0F
    rrca                                          ; $136B: $0F
    or   c                                        ; $136C: $B1
    ld   [$C39F], a                               ; $136D: $EA $9F $C3
    ret                                           ; $1370: $C9


Call_000_1371:
    ld   a, [$C39D]                               ; $1371: $FA $9D $C3
    ld   [$C3B1], a                               ; $1374: $EA $B1 $C3
    ld   a, [$C3A0]                               ; $1377: $FA $A0 $C3
    and  $3F                                      ; $137A: $E6 $3F
    ld   [$C3B2], a                               ; $137C: $EA $B2 $C3
    ld   a, [$C3A0]                               ; $137F: $FA $A0 $C3
    and  $C0                                      ; $1382: $E6 $C0
    rlca                                          ; $1384: $07
    rlca                                          ; $1385: $07
    ld   [$C3B3], a                               ; $1386: $EA $B3 $C3
    ret                                           ; $1389: $C9


Call_000_138A:
    ld   a, [$C3B1]                               ; $138A: $FA $B1 $C3
    ld   [$C39D], a                               ; $138D: $EA $9D $C3
    ld   a, [$C3B2]                               ; $1390: $FA $B2 $C3
    ld   c, a                                     ; $1393: $4F
    ld   a, [$C3B3]                               ; $1394: $FA $B3 $C3
    rrca                                          ; $1397: $0F
    rrca                                          ; $1398: $0F
    or   c                                        ; $1399: $B1
    ld   [$C3A0], a                               ; $139A: $EA $A0 $C3
    ret                                           ; $139D: $C9


Call_000_139E:
    ld   a, [$C3B3]                               ; $139E: $FA $B3 $C3
    xor  $01                                      ; $13A1: $EE $01
    ld   [$C3B3], a                               ; $13A3: $EA $B3 $C3
    bit  0, a                                     ; $13A6: $CB $47
    jr   nz, jr_000_13CA                          ; $13A8: $20 $20

    ld   a, [$C3B2]                               ; $13AA: $FA $B2 $C3
    rlca                                          ; $13AD: $07
    swap a                                        ; $13AE: $CB $37
    add  $20                                      ; $13B0: $C6 $20
    push af                                       ; $13B2: $F5
    swap a                                        ; $13B3: $CB $37
    rrca                                          ; $13B5: $0F
    ld   [$C3B2], a                               ; $13B6: $EA $B2 $C3
    pop  af                                       ; $13B9: $F1
    jr   nc, jr_000_13CA                          ; $13BA: $30 $0E

    ld   a, [$C3B1]                               ; $13BC: $FA $B1 $C3
    rlca                                          ; $13BF: $07
    swap a                                        ; $13C0: $CB $37

Jump_000_13C2:
    add  $20                                      ; $13C2: $C6 $20

Jump_000_13C4:
    swap a                                        ; $13C4: $CB $37
    rrca                                          ; $13C6: $0F
    ld   [$C3B1], a                               ; $13C7: $EA $B1 $C3

jr_000_13CA:
    ret                                           ; $13CA: $C9


Call_000_13CB:
    ld   a, [$C3B3]                               ; $13CB: $FA $B3 $C3
    xor  $01                                      ; $13CE: $EE $01
    ld   [$C3B3], a                               ; $13D0: $EA $B3 $C3
    bit  0, a                                     ; $13D3: $CB $47
    jr   z, jr_000_13F7                           ; $13D5: $28 $20

    ld   a, [$C3B2]                               ; $13D7: $FA $B2 $C3
    rlca                                          ; $13DA: $07
    swap a                                        ; $13DB: $CB $37
    sub  $20                                      ; $13DD: $D6 $20
    push af                                       ; $13DF: $F5
    swap a                                        ; $13E0: $CB $37
    rrca                                          ; $13E2: $0F
    ld   [$C3B2], a                               ; $13E3: $EA $B2 $C3
    pop  af                                       ; $13E6: $F1
    jr   nc, jr_000_13F7                          ; $13E7: $30 $0E

    ld   a, [$C3B1]                               ; $13E9: $FA $B1 $C3
    rlca                                          ; $13EC: $07
    swap a                                        ; $13ED: $CB $37
    sub  $20                                      ; $13EF: $D6 $20
    swap a                                        ; $13F1: $CB $37
    rrca                                          ; $13F3: $0F
    ld   [$C3B1], a                               ; $13F4: $EA $B1 $C3

jr_000_13F7:
    ret                                           ; $13F7: $C9


Call_000_13F8:
    ld   a, [$C3B3]                               ; $13F8: $FA $B3 $C3
    xor  $02                                      ; $13FB: $EE $02
    ld   [$C3B3], a                               ; $13FD: $EA $B3 $C3
    bit  1, a                                     ; $1400: $CB $4F
    jr   nz, jr_000_141F                          ; $1402: $20 $1B

    ld   a, [$C3B2]                               ; $1404: $FA $B2 $C3
    add  $08                                      ; $1407: $C6 $08
    ld   [$C3B2], a                               ; $1409: $EA $B2 $C3
    bit  6, a                                     ; $140C: $CB $77
    jr   z, jr_000_141F                           ; $140E: $28 $0F

    and  $3F                                      ; $1410: $E6 $3F
    ld   [$C3B2], a                               ; $1412: $EA $B2 $C3
    ld   a, [$C3B1]                               ; $1415: $FA $B1 $C3
    add  $08                                      ; $1418: $C6 $08
    and  $3F                                      ; $141A: $E6 $3F
    ld   [$C3B1], a                               ; $141C: $EA $B1 $C3

jr_000_141F:
    ret                                           ; $141F: $C9


Call_000_1420:
    ld   a, [$C3B3]                               ; $1420: $FA $B3 $C3
    xor  $02                                      ; $1423: $EE $02
    ld   [$C3B3], a                               ; $1425: $EA $B3 $C3
    bit  1, a                                     ; $1428: $CB $4F
    jr   z, jr_000_1447                           ; $142A: $28 $1B

    ld   a, [$C3B2]                               ; $142C: $FA $B2 $C3
    sub  $08                                      ; $142F: $D6 $08
    ld   [$C3B2], a                               ; $1431: $EA $B2 $C3
    bit  6, a                                     ; $1434: $CB $77
    jr   z, jr_000_1447                           ; $1436: $28 $0F

    and  $3F                                      ; $1438: $E6 $3F
    ld   [$C3B2], a                               ; $143A: $EA $B2 $C3
    ld   a, [$C3B1]                               ; $143D: $FA $B1 $C3
    sub  $08                                      ; $1440: $D6 $08
    and  $3F                                      ; $1442: $E6 $3F
    ld   [$C3B1], a                               ; $1444: $EA $B1 $C3

jr_000_1447:
    ret                                           ; $1447: $C9


Call_000_1448:
    ld   a, [$C203]                               ; $1448: $FA $03 $C2
    ld   [$C369], a                               ; $144B: $EA $69 $C3
    ld   a, [$C206]                               ; $144E: $FA $06 $C2
    ld   [$C368], a                               ; $1451: $EA $68 $C3
    ld   a, [$C364]                               ; $1454: $FA $64 $C3
    ld   c, a                                     ; $1457: $4F
    ld   a, [$C366]                               ; $1458: $FA $66 $C3
    sub  c                                        ; $145B: $91
    ld   b, a                                     ; $145C: $47
    ld   a, [$C3A9]                               ; $145D: $FA $A9 $C3
    sub  b                                        ; $1460: $90
    ld   [$C3A9], a                               ; $1461: $EA $A9 $C3
    ld   a, c                                     ; $1464: $79
    ld   [$C366], a                               ; $1465: $EA $66 $C3
    ld   a, [$C362]                               ; $1468: $FA $62 $C3
    ld   c, a                                     ; $146B: $4F
    ld   a, [$C367]                               ; $146C: $FA $67 $C3
    sub  c                                        ; $146F: $91
    ld   b, a                                     ; $1470: $47
    ld   a, [$C3AA]                               ; $1471: $FA $AA $C3
    sub  b                                        ; $1474: $90
    ld   [$C3AA], a                               ; $1475: $EA $AA $C3
    ld   a, c                                     ; $1478: $79
    ld   [$C367], a                               ; $1479: $EA $67 $C3
    ret                                           ; $147C: $C9


Call_000_147D:
    ld   a, [$C270]                               ; $147D: $FA $70 $C2
    and  a                                        ; $1480: $A7
    ret  nz                                       ; $1481: $C0

    ld   a, [$C3A7]                               ; $1482: $FA $A7 $C3
    and  a                                        ; $1485: $A7
    ret  nz                                       ; $1486: $C0

    ld   a, [$C463]                               ; $1487: $FA $63 $C4
    call Call_000_0B7D                            ; $148A: $CD $7D $0B
    sub  a                                        ; $148D: $97
    inc  d                                        ; $148E: $14
    rst  RST_08                                   ; $148F: $CF
    inc  d                                        ; $1490: $14
    ld   a, [de]                                  ; $1491: $1A
    dec  d                                        ; $1492: $15
    ld   l, c                                     ; $1493: $69
    dec  d                                        ; $1494: $15
    xor  $16                                      ; $1495: $EE $16
    ld   a, [$C262]                               ; $1497: $FA $62 $C2
    bit  0, a                                     ; $149A: $CB $47
    ret  z                                        ; $149C: $C8

    ld   a, $80                                   ; $149D: $3E $80
    ld   [$C460], a                               ; $149F: $EA $60 $C4
    call Call_000_18DD                            ; $14A2: $CD $DD $18
    ld   a, $81                                   ; $14A5: $3E $81
    ld   [$C460], a                               ; $14A7: $EA $60 $C4
    res  7, a                                     ; $14AA: $CB $BF
    ld   [$C463], a                               ; $14AC: $EA $63 $C4
    xor  a                                        ; $14AF: $AF
    ld   [$C462], a                               ; $14B0: $EA $62 $C4

jr_000_14B3:
    ld   a, [$C462]                               ; $14B3: $FA $62 $C4
    cp   $09                                      ; $14B6: $FE $09
    jr   z, jr_000_14BF                           ; $14B8: $28 $05

    call WaitForRequestedVBlank                   ; $14BA: $CD $90 $00
    jr   jr_000_14B3                              ; $14BD: $18 $F4

jr_000_14BF:
    xor  a                                        ; $14BF: $AF
    ld   [$C462], a                               ; $14C0: $EA $62 $C4
    ld   [$C464], a                               ; $14C3: $EA $64 $C4
    ld   a, [$C460]                               ; $14C6: $FA $60 $C4
    and  $80                                      ; $14C9: $E6 $80
    ld   [$C460], a                               ; $14CB: $EA $60 $C4
    ret                                           ; $14CE: $C9


jr_000_14CF:
    ld   a, [$C262]                               ; $14CF: $FA $62 $C2
    bit  0, a                                     ; $14D2: $CB $47
    jr   nz, jr_000_14DC                          ; $14D4: $20 $06

    bit  1, a                                     ; $14D6: $CB $4F
    jr   nz, jr_000_14E6                          ; $14D8: $20 $0C

    jr   jr_000_14F4                              ; $14DA: $18 $18

jr_000_14DC:
    ld   a, $02                                   ; $14DC: $3E $02
    ld   [$C463], a                               ; $14DE: $EA $63 $C4
    xor  a                                        ; $14E1: $AF
    ld   [$C564], a                               ; $14E2: $EA $64 $C5
    ret                                           ; $14E5: $C9


Jump_000_14E6:
jr_000_14E6:
    ld   a, $02                                   ; $14E6: $3E $02
    ld   [$C460], a                               ; $14E8: $EA $60 $C4
    xor  a                                        ; $14EB: $AF
    ld   [$C463], a                               ; $14EC: $EA $63 $C4
    ld   [$C000], a                               ; $14EF: $EA $00 $C0
    jr   jr_000_14B3                              ; $14F2: $18 $BF

jr_000_14F4:
    bit  6, a                                     ; $14F4: $CB $77
    jr   nz, jr_000_14FE                          ; $14F6: $20 $06

    bit  7, a                                     ; $14F8: $CB $7F
    jr   nz, jr_000_1509                          ; $14FA: $20 $0D

    jr   jr_000_1512                              ; $14FC: $18 $14

jr_000_14FE:
    ld   a, [$C464]                               ; $14FE: $FA $64 $C4
    dec  a                                        ; $1501: $3D
    and  $03                                      ; $1502: $E6 $03
    ld   [$C464], a                               ; $1504: $EA $64 $C4
    jr   jr_000_1512                              ; $1507: $18 $09

jr_000_1509:
    ld   a, [$C464]                               ; $1509: $FA $64 $C4
    inc  a                                        ; $150C: $3C
    and  $03                                      ; $150D: $E6 $03
    ld   [$C464], a                               ; $150F: $EA $64 $C4

jr_000_1512:
    call $1781                                    ; $1512: $CD $81 $17
    call WaitForRequestedVBlank                   ; $1515: $CD $90 $00
    jr   jr_000_14CF                              ; $1518: $18 $B5

Call_000_151A:
Jump_000_151A:
jr_000_151A:
    ld   a, [$C564]                               ; $151A: $FA $64 $C5
    cp   $06                                      ; $151D: $FE $06
    jr   z, jr_000_1555                           ; $151F: $28 $34

    ld   hl, $1769                                ; $1521: $21 $69 $17
    rlca                                          ; $1524: $07
    rlca                                          ; $1525: $07
    call AddAToHL                                 ; $1526: $CD $71 $00
    ld   e, l                                     ; $1529: $5D
    ld   d, h                                     ; $152A: $54
    ld   hl, $C565                                ; $152B: $21 $65 $C5
    ld   a, $9C                                   ; $152E: $3E $9C
    ld   [$C560], a                               ; $1530: $EA $60 $C5
    ld   a, [de]                                  ; $1533: $1A
    inc  de                                       ; $1534: $13
    ld   [$C562], a                               ; $1535: $EA $62 $C5
    ld   a, [de]                                  ; $1538: $1A
    inc  de                                       ; $1539: $13
    ld   [hl+], a                                 ; $153A: $22
    ld   b, $12                                   ; $153B: $06 $12
    ld   a, [de]                                  ; $153D: $1A
    inc  de                                       ; $153E: $13

jr_000_153F:
    ld   [hl+], a                                 ; $153F: $22
    dec  b                                        ; $1540: $05
    jr   nz, jr_000_153F                          ; $1541: $20 $FC

    ld   a, [de]                                  ; $1543: $1A
    ld   [hl], a                                  ; $1544: $77
    ld   hl, $C561                                ; $1545: $21 $61 $C5
    ld   a, $01                                   ; $1548: $3E $01
    ld   [hl+], a                                 ; $154A: $22
    inc  l                                        ; $154B: $2C
    ld   a, $14                                   ; $154C: $3E $14
    ld   [hl+], a                                 ; $154E: $22
    inc  [hl]                                     ; $154F: $34
    call WaitForRequestedVBlank                   ; $1550: $CD $90 $00
    jr   jr_000_151A                              ; $1553: $18 $C5

jr_000_1555:
    ld   a, $60                                   ; $1555: $3E $60
    ld   [$C360], a                               ; $1557: $EA $60 $C3
    xor  a                                        ; $155A: $AF
    ld   [$C564], a                               ; $155B: $EA $64 $C5
    ld   a, $03                                   ; $155E: $3E $03
    ld   [$C463], a                               ; $1560: $EA $63 $C4
    ld   a, [$C464]                               ; $1563: $FA $64 $C4
    cp   $02                                      ; $1566: $FE $02
    ret  nz                                       ; $1568: $C0

    call $1781                                    ; $1569: $CD $81 $17
    ld   a, [$C464]                               ; $156C: $FA $64 $C4
    and  a                                        ; $156F: $A7
    jr   z, jr_000_157C                           ; $1570: $28 $0A

    dec  a                                        ; $1572: $3D
    jr   z, jr_000_15C2                           ; $1573: $28 $4D

    dec  a                                        ; $1575: $3D
    jp   z, Jump_000_1639                         ; $1576: $CA $39 $16

    jp   Jump_000_1644                            ; $1579: $C3 $44 $16


jr_000_157C:
    ld   e, $01                                   ; $157C: $1E $01
    call Call_000_16F6                            ; $157E: $CD $F6 $16
    ld   b, a                                     ; $1581: $47

Call_000_1582:
Jump_000_1582:
    call WaitForRequestedVBlank                   ; $1582: $CD $90 $00
    ld   a, $05                                   ; $1585: $3E $05
    ld   [$C3C5], a                               ; $1587: $EA $C5 $C3
    ld   [$3000], a                               ; $158A: $EA $00 $30
    ld   a, b                                     ; $158D: $78
    ld   hl, $6228                                ; $158E: $21 $28 $62
    call Add2AToHL                                ; $1591: $CD $81 $00
    ld   a, [hl+]                                 ; $1594: $2A
    ld   d, [hl]                                  ; $1595: $56
    ld   e, a                                     ; $1596: $5F
    ld   a, [de]                                  ; $1597: $1A

jr_000_1598:
    inc  de                                       ; $1598: $13
    call Call_000_0B7D                            ; $1599: $CD $7D $0B

DialogueScriptOpcodeHandlerTable::
    inc  d                                        ; $159C: $14
    cpl                                           ; $159D: $2F
    ld   a, [de]                                  ; $159E: $1A
    cpl                                           ; $159F: $2F
    ld   a, [hl+]                                 ; $15A0: $2A
    cpl                                           ; $15A1: $2F
    ld   b, c                                     ; $15A2: $41
    cpl                                           ; $15A3: $2F
    sub  [hl]                                     ; $15A4: $96
    cpl                                           ; $15A5: $2F
    or   a                                        ; $15A6: $B7
    cpl                                           ; $15A7: $2F
    ret  c                                        ; $15A8: $D8

    cpl                                           ; $15A9: $2F
    rst  RST_20                                   ; $15AA: $E7
    cpl                                           ; $15AB: $2F
    db   $FD                                      ; $15AC: $FD
    cpl                                           ; $15AD: $2F
    dec  bc                                       ; $15AE: $0B
    jr   nc, jr_000_1598                          ; $15AF: $30 $E7

    cpl                                           ; $15B1: $2F
    rst  RST_20                                   ; $15B2: $E7
    cpl                                           ; $15B3: $2F
    rst  RST_20                                   ; $15B4: $E7
    cpl                                           ; $15B5: $2F
    rst  RST_20                                   ; $15B6: $E7
    cpl                                           ; $15B7: $2F
    rst  RST_20                                   ; $15B8: $E7
    cpl                                           ; $15B9: $2F
    rst  RST_20                                   ; $15BA: $E7
    cpl                                           ; $15BB: $2F
    dec  bc                                       ; $15BC: $0B
    jr   nc, @+$16                                ; $15BD: $30 $14

    cpl                                           ; $15BF: $2F
    inc  d                                        ; $15C0: $14
    cpl                                           ; $15C1: $2F

jr_000_15C2:
    ld   e, $00                                   ; $15C2: $1E $00
    call Call_000_16F6                            ; $15C4: $CD $F6 $16
    ld   b, a                                     ; $15C7: $47
    and  a                                        ; $15C8: $A7
    jr   z, jr_000_15F5                           ; $15C9: $28 $2A

    ld   a, [$DF30]                               ; $15CB: $FA $30 $DF
    bit  6, a                                     ; $15CE: $CB $77
    jr   nz, jr_000_1624                          ; $15D0: $20 $52

    ld   hl, $1632                                ; $15D2: $21 $32 $16

jr_000_15D5:
    ld   a, [hl+]                                 ; $15D5: $2A
    cp   $FF                                      ; $15D6: $FE $FF
    jr   z, jr_000_1624                           ; $15D8: $28 $4A

    cp   b                                        ; $15DA: $B8
    jr   z, jr_000_15E1                           ; $15DB: $28 $04

    inc  hl                                       ; $15DD: $23
    inc  hl                                       ; $15DE: $23
    jr   jr_000_15D5                              ; $15DF: $18 $F4

jr_000_15E1:
    ld   c, a                                     ; $15E1: $4F
    ld   a, [$DF1A]                               ; $15E2: $FA $1A $DF
    and  [hl]                                     ; $15E5: $A6
    inc  hl                                       ; $15E6: $23
    jr   z, jr_000_1624                           ; $15E7: $28 $3B

    ld   b, [hl]                                  ; $15E9: $46
    ld   a, [$DF30]                               ; $15EA: $FA $30 $DF
    or   $01                                      ; $15ED: $F6 $01
    ld   [$DF30], a                               ; $15EF: $EA $30 $DF
    jp   Jump_000_1582                            ; $15F2: $C3 $82 $15


jr_000_15F5:
    ld   a, [$DF30]                               ; $15F5: $FA $30 $DF
    rlca                                          ; $15F8: $07
    jr   c, jr_000_1624                           ; $15F9: $38 $29

    ld   a, [$C204]                               ; $15FB: $FA $04 $C2
    cp   $16                                      ; $15FE: $FE $16

Call_000_1600:
    jr   nz, jr_000_1624                          ; $1600: $20 $22

    ld   a, [$C207]                               ; $1602: $FA $07 $C2
    cp   $14                                      ; $1605: $FE $14
    jr   nz, jr_000_1624                          ; $1607: $20 $1B

    ld   a, [$C21A]                               ; $1609: $FA $1A $C2
    cp   $B7                                      ; $160C: $FE $B7
    jr   nz, jr_000_1624                          ; $160E: $20 $14

    ld   a, [$DF1A]                               ; $1610: $FA $1A $DF
    bit  6, a                                     ; $1613: $CB $77
    jr   z, jr_000_1624                           ; $1615: $28 $0D

    ld   b, $64                                   ; $1617: $06 $64
    ld   a, [$DF30]                               ; $1619: $FA $30 $DF
    or   $01                                      ; $161C: $F6 $01
    ld   [$DF30], a                               ; $161E: $EA $30 $DF
    jp   Jump_000_1582                            ; $1621: $C3 $82 $15


jr_000_1624:
    ld   a, [$DF30]                               ; $1624: $FA $30 $DF
    res  0, a                                     ; $1627: $CB $87
    ld   [$DF30], a                               ; $1629: $EA $30 $DF
    ld   b, $61                                   ; $162C: $06 $61
    jp   Jump_000_1582                            ; $162E: $C3 $82 $15


    ret                                           ; $1631: $C9


    rrca                                          ; $1632: $0F
    ld   [bc], a                                  ; $1633: $02
    ld   h, d                                     ; $1634: $62
    dec  [hl]                                     ; $1635: $35
    inc  b                                        ; $1636: $04
    ld   h, e                                     ; $1637: $63
    rst  RST_38                                   ; $1638: $FF

Jump_000_1639:
    ld   a, $03                                   ; $1639: $3E $03
    ld   [$C3C5], a                               ; $163B: $EA $C5 $C3
    ld   [$3000], a                               ; $163E: $EA $00 $30
    jp   $7D40                                    ; $1641: $C3 $40 $7D


Jump_000_1644:
    ld   a, $05                                   ; $1644: $3E $05
    ld   [$C3C5], a                               ; $1646: $EA $C5 $C3
    ld   [$3000], a                               ; $1649: $EA $00 $30
    xor  a                                        ; $164C: $AF
    ld   [$C4AB], a                               ; $164D: $EA $AB $C4
    ld   hl, $16A9                                ; $1650: $21 $A9 $16
    ld   a, [$C204]                               ; $1653: $FA $04 $C2
    ld   e, a                                     ; $1656: $5F
    ld   a, [$C207]                               ; $1657: $FA $07 $C2
    ld   d, a                                     ; $165A: $57
    ld   a, [$C21A]                               ; $165B: $FA $1A $C2
    ld   c, a                                     ; $165E: $4F

jr_000_165F:
    push hl                                       ; $165F: $E5
    ld   a, [hl+]                                 ; $1660: $2A
    cp   $FF                                      ; $1661: $FE $FF
    jr   z, jr_000_16A3                           ; $1663: $28 $3E

    cp   e                                        ; $1665: $BB
    jr   nz, jr_000_1694                          ; $1666: $20 $2C

    ld   a, [hl+]                                 ; $1668: $2A
    cp   d                                        ; $1669: $BA
    jr   nz, jr_000_1694                          ; $166A: $20 $28

    ld   a, [hl+]                                 ; $166C: $2A
    cp   c                                        ; $166D: $B9
    jr   nz, jr_000_1694                          ; $166E: $20 $24

    ld   b, [hl]                                  ; $1670: $46
    pop  hl                                       ; $1671: $E1
    ld   a, [$C4AB]                               ; $1672: $FA $AB $C4
    and  a                                        ; $1675: $A7
    jr   nz, jr_000_1682                          ; $1676: $20 $0A

    ld   a, [$DF1A]                               ; $1678: $FA $1A $DF
    bit  4, a                                     ; $167B: $CB $67
    jr   nz, jr_000_16A3                          ; $167D: $20 $24

    jp   Jump_000_1582                            ; $167F: $C3 $82 $15


jr_000_1682:
    ld   hl, $DF1C                                ; $1682: $21 $1C $DF
    dec  a                                        ; $1685: $3D
    call AddAToHL                                 ; $1686: $CD $71 $00
    ld   a, [hl]                                  ; $1689: $7E
    and  a                                        ; $168A: $A7
    jr   nz, jr_000_16A3                          ; $168B: $20 $16

    inc  [hl]                                     ; $168D: $34
    call Call_000_1908                            ; $168E: $CD $08 $19
    jp   Jump_000_1582                            ; $1691: $C3 $82 $15


jr_000_1694:
    ld   a, [$C4AB]                               ; $1694: $FA $AB $C4
    inc  a                                        ; $1697: $3C
    ld   [$C4AB], a                               ; $1698: $EA $AB $C4
    pop  hl                                       ; $169B: $E1
    ld   a, $04                                   ; $169C: $3E $04
    call AddAToHL                                 ; $169E: $CD $71 $00
    jr   jr_000_165F                              ; $16A1: $18 $BC

jr_000_16A3:
    pop  hl                                       ; $16A3: $E1
    ld   b, $60                                   ; $16A4: $06 $60
    jp   Jump_000_1582                            ; $16A6: $C3 $82 $15


    ld   de, $B212                                ; $16A9: $11 $12 $B2
    ld   h, l                                     ; $16AC: $65
    ld   d, $11                                   ; $16AD: $16 $11
    jp   Jump_000_1266                            ; $16AF: $C3 $66 $12


    ld   de, $66D7                                ; $16B2: $11 $D7 $66
    rla                                           ; $16B5: $17
    ld   de, $6774                                ; $16B6: $11 $74 $67
    rla                                           ; $16B9: $17
    rla                                           ; $16BA: $17
    or   e                                        ; $16BB: $B3
    ld   h, a                                     ; $16BC: $67
    ld   [de], a                                  ; $16BD: $12
    inc  de                                       ; $16BE: $13
    and  e                                        ; $16BF: $A3
    ld   h, a                                     ; $16C0: $67
    ld   d, $14                                   ; $16C1: $16 $14
    ld   d, h                                     ; $16C3: $54
    ld   l, b                                     ; $16C4: $68
    rla                                           ; $16C5: $17
    inc  de                                       ; $16C6: $13
    or   d                                        ; $16C7: $B2
    ld   l, b                                     ; $16C8: $68
    rla                                           ; $16C9: $17
    inc  d                                        ; $16CA: $14
    ld   l, d                                     ; $16CB: $6A
    ld   l, b                                     ; $16CC: $68
    inc  d                                        ; $16CD: $14
    inc  de                                       ; $16CE: $13
    sbc  c                                        ; $16CF: $99
    ld   l, c                                     ; $16D0: $69
    ld   d, $13                                   ; $16D1: $16 $13
    ld   d, d                                     ; $16D3: $52
    ld   l, c                                     ; $16D4: $69
    rla                                           ; $16D5: $17
    inc  d                                        ; $16D6: $14
    ld   h, c                                     ; $16D7: $61
    ld   l, h                                     ; $16D8: $6C
    ld   [de], a                                  ; $16D9: $12
    ld   de, $6C59                                ; $16DA: $11 $59 $6C
    ld   [de], a                                  ; $16DD: $12
    db   $10                                      ; $16DE: $10
    reti                                          ; $16DF: $D9


    ld   l, h                                     ; $16E0: $6C
    ld   d, $13                                   ; $16E1: $16 $13
    ld   a, [hl-]                                 ; $16E3: $3A
    ld   l, l                                     ; $16E4: $6D
    ld   d, $15                                   ; $16E5: $16 $15
    ld   c, d                                     ; $16E7: $4A
    ld   l, [hl]                                  ; $16E8: $6E
    db   $10                                      ; $16E9: $10
    db   $10                                      ; $16EA: $10
    ld   l, e                                     ; $16EB: $6B
    ld   l, a                                     ; $16EC: $6F
    rst  RST_38                                   ; $16ED: $FF
    ld   a, $90                                   ; $16EE: $3E $90
    ld   [$C360], a                               ; $16F0: $EA $60 $C3
    jp   Jump_000_14E6                            ; $16F3: $C3 $E6 $14


Call_000_16F6:
    ld   a, [$C274]                               ; $16F6: $FA $74 $C2
    sub  $80                                      ; $16F9: $D6 $80
    jr   z, jr_000_1702                           ; $16FB: $28 $05

    dec  a                                        ; $16FD: $3D
    jr   z, jr_000_170C                           ; $16FE: $28 $0C

    jr   jr_000_1716                              ; $1700: $18 $14

jr_000_1702:
    ld   a, [$C21A]                               ; $1702: $FA $1A $C2
    add  $10                                      ; $1705: $C6 $10
    ld   b, a                                     ; $1707: $47
    ld   c, $00                                   ; $1708: $0E $00
    jr   jr_000_1737                              ; $170A: $18 $2B

jr_000_170C:
    ld   a, [$C21A]                               ; $170C: $FA $1A $C2
    sub  $10                                      ; $170F: $D6 $10
    ld   b, a                                     ; $1711: $47
    ld   c, $08                                   ; $1712: $0E $08
    jr   jr_000_1737                              ; $1714: $18 $21

jr_000_1716:
    ld   a, [$C200]                               ; $1716: $FA $00 $C2
    bit  5, a                                     ; $1719: $CB $6F
    jr   z, jr_000_172B                           ; $171B: $28 $0E

    ld   a, [$C21A]                               ; $171D: $FA $1A $C2
    swap a                                        ; $1720: $CB $37
    add  $10                                      ; $1722: $C6 $10
    swap a                                        ; $1724: $CB $37
    ld   b, a                                     ; $1726: $47
    ld   c, $0C                                   ; $1727: $0E $0C
    jr   jr_000_1737                              ; $1729: $18 $0C

jr_000_172B:
    ld   a, [$C21A]                               ; $172B: $FA $1A $C2
    swap a                                        ; $172E: $CB $37
    sub  $10                                      ; $1730: $D6 $10
    swap a                                        ; $1732: $CB $37
    ld   b, a                                     ; $1734: $47
    ld   c, $04                                   ; $1735: $0E $04

jr_000_1737:
    ld   h, $C7                                   ; $1737: $26 $C7
    ld   d, $14                                   ; $1739: $16 $14

jr_000_173B:
    ld   l, $00                                   ; $173B: $2E $00
    ld   a, [hl]                                  ; $173D: $7E
    bit  0, a                                     ; $173E: $CB $47
    jr   z, jr_000_1763                           ; $1740: $28 $21

    bit  3, a                                     ; $1742: $CB $5F
    jr   nz, jr_000_1763                          ; $1744: $20 $1D

    bit  4, a                                     ; $1746: $CB $67
    jr   nz, jr_000_1763                          ; $1748: $20 $19

    ld   l, $1A                                   ; $174A: $2E $1A
    ld   a, [hl]                                  ; $174C: $7E
    cp   b                                        ; $174D: $B8
    jr   nz, jr_000_1763                          ; $174E: $20 $13

    ld   l, $01                                   ; $1750: $2E $01
    ld   a, [hl]                                  ; $1752: $7E
    and  $F0                                      ; $1753: $E6 $F0
    or   c                                        ; $1755: $B1
    ld   [hl], a                                  ; $1756: $77
    ld   l, $0D                                   ; $1757: $2E $0D
    ld   a, [hl]                                  ; $1759: $7E
    or   e                                        ; $175A: $B3
    ld   [hl], a                                  ; $175B: $77
    ld   l, $0A                                   ; $175C: $2E $0A
    ld   a, [hl]                                  ; $175E: $7E
    ld   [$DF2D], a                               ; $175F: $EA $2D $DF
    ret                                           ; $1762: $C9


jr_000_1763:
    inc  h                                        ; $1763: $24
    dec  d                                        ; $1764: $15
    jr   nz, jr_000_173B                          ; $1765: $20 $D4

    xor  a                                        ; $1767: $AF
    ret                                           ; $1768: $C9


    nop                                           ; $1769: $00
    push bc                                       ; $176A: $C5
    jp   Jump_000_20DC                            ; $176B: $C3 $DC $20


    call nz, $C4C0                                ; $176E: $C4 $C0 $C4
    ld   b, b                                     ; $1771: $40
    call nz, $C4C0                                ; $1772: $C4 $C0 $C4
    ld   h, b                                     ; $1775: $60
    call nz, $C4C0                                ; $1776: $C4 $C0 $C4
    add  b                                        ; $1779: $80
    call nz, $C4C0                                ; $177A: $C4 $C0 $C4
    and  b                                        ; $177D: $A0
    db   $DD                                      ; $177E: $DD
    jp   Jump_000_21DE                            ; $177F: $C3 $DE $21


    nop                                           ; $1782: $00
    ret  nz                                       ; $1783: $C0

    ld   a, [$C464]                               ; $1784: $FA $64 $C4
    swap a                                        ; $1787: $CB $37
    add  $18                                      ; $1789: $C6 $18
    ld   [hl+], a                                 ; $178B: $22
    ld   a, $10                                   ; $178C: $3E $10
    ld   [hl+], a                                 ; $178E: $22
    ld   a, $C8                                   ; $178F: $3E $C8
    ld   [hl+], a                                 ; $1791: $22
    ld   a, $00                                   ; $1792: $3E $00
    ld   [hl], a                                  ; $1794: $77
    ret                                           ; $1795: $C9


Call_000_1796:
    ld   hl, $C004                                ; $1796: $21 $04 $C0
    ld   b, $00                                   ; $1799: $06 $00
    ld   a, [$C26A]                               ; $179B: $FA $6A $C2
    bit  3, a                                     ; $179E: $CB $5F
    jr   nz, jr_000_17A4                          ; $17A0: $20 $02

    ld   b, $90                                   ; $17A2: $06 $90

jr_000_17A4:
    ld   a, b                                     ; $17A4: $78
    ld   [hl+], a                                 ; $17A5: $22
    ld   a, $98                                   ; $17A6: $3E $98
    ld   [hl+], a                                 ; $17A8: $22
    ld   a, $C8                                   ; $17A9: $3E $C8
    ld   [hl+], a                                 ; $17AB: $22
    xor  a                                        ; $17AC: $AF
    ld   [hl], a                                  ; $17AD: $77
    ret                                           ; $17AE: $C9


Call_000_17AF:
    ld   hl, $C004                                ; $17AF: $21 $04 $C0
    ld   b, $00                                   ; $17B2: $06 $00
    ld   a, [$C26A]                               ; $17B4: $FA $6A $C2
    bit  3, a                                     ; $17B7: $CB $5F
    jr   nz, jr_000_17C1                          ; $17B9: $20 $06

    ld   a, [$C583]                               ; $17BB: $FA $83 $C5
    add  $80                                      ; $17BE: $C6 $80
    ld   b, a                                     ; $17C0: $47

jr_000_17C1:
    ld   a, b                                     ; $17C1: $78
    ld   [hl+], a                                 ; $17C2: $22
    ld   a, $18                                   ; $17C3: $3E $18
    ld   [hl+], a                                 ; $17C5: $22
    ld   a, $C8                                   ; $17C6: $3E $C8
    ld   [hl+], a                                 ; $17C8: $22
    xor  a                                        ; $17C9: $AF
    ld   [hl], a                                  ; $17CA: $77
    ret                                           ; $17CB: $C9


Call_000_17CC:
    ld   a, [$C462]                               ; $17CC: $FA $62 $C4
    cp   $09                                      ; $17CF: $FE $09
    ret  z                                        ; $17D1: $C8

    ld   a, [$C460]                               ; $17D2: $FA $60 $C4
    bit  0, a                                     ; $17D5: $CB $47
    jr   nz, jr_000_17DE                          ; $17D7: $20 $05

    bit  1, a                                     ; $17D9: $CB $4F
    jr   nz, jr_000_1800                          ; $17DB: $20 $23

    ret                                           ; $17DD: $C9


jr_000_17DE:
    call Call_000_1824                            ; $17DE: $CD $24 $18
    ld   a, $07                                   ; $17E1: $3E $07

jr_000_17E3:
    push af                                       ; $17E3: $F5
    ld   a, [hl]                                  ; $17E4: $7E
    ld   [bc], a                                  ; $17E5: $02
    inc  bc                                       ; $17E6: $03
    ld   a, [de]                                  ; $17E7: $1A
    inc  de                                       ; $17E8: $13
    ld   [hl], a                                  ; $17E9: $77
    ld   a, l                                     ; $17EA: $7D
    swap a                                        ; $17EB: $CB $37
    rrca                                          ; $17ED: $0F
    add  $08                                      ; $17EE: $C6 $08
    rlca                                          ; $17F0: $07
    swap a                                        ; $17F1: $CB $37
    ld   l, a                                     ; $17F3: $6F
    pop  af                                       ; $17F4: $F1
    dec  a                                        ; $17F5: $3D
    jr   nz, jr_000_17E3                          ; $17F6: $20 $EB

    ld   a, [$C462]                               ; $17F8: $FA $62 $C4
    inc  a                                        ; $17FB: $3C
    ld   [$C462], a                               ; $17FC: $EA $62 $C4
    ret                                           ; $17FF: $C9


jr_000_1800:
    call Call_000_1824                            ; $1800: $CD $24 $18
    ld   d, $07                                   ; $1803: $16 $07

jr_000_1805:
    ld   a, [bc]                                  ; $1805: $0A
    inc  bc                                       ; $1806: $03
    ld   [hl], a                                  ; $1807: $77
    ld   a, l                                     ; $1808: $7D
    swap a                                        ; $1809: $CB $37
    rrca                                          ; $180B: $0F
    add  $08                                      ; $180C: $C6 $08
    rlca                                          ; $180E: $07
    swap a                                        ; $180F: $CB $37
    ld   l, a                                     ; $1811: $6F
    dec  d                                        ; $1812: $15
    jr   nz, jr_000_1805                          ; $1813: $20 $F0

    ld   a, [$C462]                               ; $1815: $FA $62 $C4
    inc  a                                        ; $1818: $3C
    ld   [$C462], a                               ; $1819: $EA $62 $C4
    cp   $09                                      ; $181C: $FE $09
    ret  nz                                       ; $181E: $C0

    xor  a                                        ; $181F: $AF
    ld   [$C460], a                               ; $1820: $EA $60 $C4
    ret                                           ; $1823: $C9


Call_000_1824:
    ld   a, [$C399]                               ; $1824: $FA $99 $C3
    and  $F0                                      ; $1827: $E6 $F0
    ld   hl, $9800                                ; $1829: $21 $00 $98
    ld   d, $00                                   ; $182C: $16 $00
    sla  a                                        ; $182E: $CB $27
    rl   d                                        ; $1830: $CB $12
    sla  a                                        ; $1832: $CB $27
    rl   d                                        ; $1834: $CB $12
    ld   e, a                                     ; $1836: $5F
    add  hl, de                                   ; $1837: $19
    ld   d, $00                                   ; $1838: $16 $00
    ld   a, [$C462]                               ; $183A: $FA $62 $C4
    swap a                                        ; $183D: $CB $37
    sla  a                                        ; $183F: $CB $27
    rl   d                                        ; $1841: $CB $12
    ld   e, a                                     ; $1843: $5F
    add  hl, de                                   ; $1844: $19
    ld   a, [$C399]                               ; $1845: $FA $99 $C3
    and  $0F                                      ; $1848: $E6 $0F
    rlca                                          ; $184A: $07
    dec  a                                        ; $184B: $3D
    and  $1F                                      ; $184C: $E6 $1F
    ld   e, a                                     ; $184E: $5F
    ld   d, $00                                   ; $184F: $16 $00
    add  hl, de                                   ; $1851: $19
    ld   a, h                                     ; $1852: $7C
    and  $9B                                      ; $1853: $E6 $9B
    ld   h, a                                     ; $1855: $67
    push hl                                       ; $1856: $E5
    ld   a, [$C462]                               ; $1857: $FA $62 $C4
    ld   hl, $187E                                ; $185A: $21 $7E $18
    ld   de, $0007                                ; $185D: $11 $07 $00
    call Call_000_1875                            ; $1860: $CD $75 $18
    push hl                                       ; $1863: $E5
    ld   a, [$C462]                               ; $1864: $FA $62 $C4
    ld   hl, $C465                                ; $1867: $21 $65 $C4
    ld   de, $0007                                ; $186A: $11 $07 $00
    call Call_000_1875                            ; $186D: $CD $75 $18
    push hl                                       ; $1870: $E5
    pop  bc                                       ; $1871: $C1
    pop  de                                       ; $1872: $D1
    pop  hl                                       ; $1873: $E1
    ret                                           ; $1874: $C9


Call_000_1875:
jr_000_1875:
    and  a                                        ; $1875: $A7
    jr   z, jr_000_187C                           ; $1876: $28 $04

    dec  a                                        ; $1878: $3D
    add  hl, de                                   ; $1879: $19
    jr   jr_000_1875                              ; $187A: $18 $F9

jr_000_187C:
    ret                                           ; $187C: $C9


    ret                                           ; $187D: $C9


    push bc                                       ; $187E: $C5
    jp   $C3C3                                    ; $187F: $C3 $C3 $C3


    jp   $DCC3                                    ; $1882: $C3 $C3 $DC


    call nz, $F4C0                                ; $1885: $C4 $C0 $F4
    pop  hl                                       ; $1888: $E1
    db   $EC                                      ; $1889: $EC
    db   $EB                                      ; $188A: $EB
    call nz, $C0C4                                ; $188B: $C4 $C4 $C0
    ret  nz                                       ; $188E: $C0

    ret  nz                                       ; $188F: $C0

    ret  nz                                       ; $1890: $C0

    ret  nz                                       ; $1891: $C0

    call nz, $C0C4                                ; $1892: $C4 $C4 $C0
    push af                                       ; $1895: $F5
    di                                            ; $1896: $F3
    push hl                                       ; $1897: $E5
    ret  nz                                       ; $1898: $C0

    call nz, $C0C4                                ; $1899: $C4 $C4 $C0
    ret  nz                                       ; $189C: $C0

    ret  nz                                       ; $189D: $C0

    ret  nz                                       ; $189E: $C0

    ret  nz                                       ; $189F: $C0

    call nz, $C0C4                                ; $18A0: $C4 $C4 $C0
    db   $EC                                      ; $18A3: $EC
    or   $EC                                      ; $18A4: $F6 $EC
    ret  nz                                       ; $18A6: $C0

    call nz, $C0C4                                ; $18A7: $C4 $C4 $C0
    ret  nz                                       ; $18AA: $C0

    ret  nz                                       ; $18AB: $C0

    ret  nz                                       ; $18AC: $C0

    ret  nz                                       ; $18AD: $C0

    call nz, $C0C4                                ; $18AE: $C4 $C4 $C0
    db   $E3                                      ; $18B1: $E3
    add  sp, -$15                                 ; $18B2: $E8 $EB
    ret  nz                                       ; $18B4: $C0

    call nz, $C3DD                                ; $18B5: $C4 $DD $C3
    jp   $C3C3                                    ; $18B8: $C3 $C3 $C3


    jp   $FADE                                    ; $18BB: $C3 $DE $FA


    ld   h, c                                     ; $18BE: $61
    push bc                                       ; $18BF: $C5
    bit  0, a                                     ; $18C0: $CB $47
    ret  z                                        ; $18C2: $C8

    xor  a                                        ; $18C3: $AF
    ld   [$C561], a                               ; $18C4: $EA $61 $C5
    ld   a, [$C560]                               ; $18C7: $FA $60 $C5
    ld   h, a                                     ; $18CA: $67
    ld   a, [$C562]                               ; $18CB: $FA $62 $C5
    ld   l, a                                     ; $18CE: $6F
    ld   a, [$C563]                               ; $18CF: $FA $63 $C5
    ld   b, a                                     ; $18D2: $47
    ld   de, $C565                                ; $18D3: $11 $65 $C5

jr_000_18D6:
    ld   a, [de]                                  ; $18D6: $1A
    inc  e                                        ; $18D7: $1C
    ld   [hl+], a                                 ; $18D8: $22
    dec  b                                        ; $18D9: $05
    jr   nz, jr_000_18D6                          ; $18DA: $20 $FA

    ret                                           ; $18DC: $C9


Call_000_18DD:
jr_000_18DD:
    ld   h, $C7                                   ; $18DD: $26 $C7
    ld   b, $10                                   ; $18DF: $06 $10

jr_000_18E1:
    ld   l, $00                                   ; $18E1: $2E $00
    ld   a, [hl]                                  ; $18E3: $7E
    bit  0, a                                     ; $18E4: $CB $47
    jr   z, jr_000_1901                           ; $18E6: $28 $19

    bit  3, a                                     ; $18E8: $CB $5F
    jr   nz, jr_000_1901                          ; $18EA: $20 $15

    bit  4, a                                     ; $18EC: $CB $67
    jr   nz, jr_000_1901                          ; $18EE: $20 $11

    ld   l, $18                                   ; $18F0: $2E $18
    ld   a, [hl]                                  ; $18F2: $7E
    and  a                                        ; $18F3: $A7
    jr   z, jr_000_1901                           ; $18F4: $28 $0B

    call Call_000_3236                            ; $18F6: $CD $36 $32
    call Call_000_3241                            ; $18F9: $CD $41 $32
    call WaitForRequestedVBlank                   ; $18FC: $CD $90 $00
    jr   jr_000_18DD                              ; $18FF: $18 $DC

jr_000_1901:
    inc  h                                        ; $1901: $24
    dec  b                                        ; $1902: $05
    jr   nz, jr_000_18E1                          ; $1903: $20 $DC

    jp   WaitForRequestedVBlank                   ; $1905: $C3 $90 $00


Call_000_1908:
    push bc                                       ; $1908: $C5
    push hl                                       ; $1909: $E5
    ld   a, [$C4AB]                               ; $190A: $FA $AB $C4
    dec  a                                        ; $190D: $3D
    ld   c, a                                     ; $190E: $4F
    ld   b, $10                                   ; $190F: $06 $10
    ld   hl, $C700                                ; $1911: $21 $00 $C7

jr_000_1914:
    ld   a, [hl]                                  ; $1914: $7E
    rrca                                          ; $1915: $0F
    jr   nc, jr_000_1928                          ; $1916: $30 $10

    ld   l, $0A                                   ; $1918: $2E $0A
    ld   a, [hl+]                                 ; $191A: $2A
    and  a                                        ; $191B: $A7
    jr   nz, jr_000_1928                          ; $191C: $20 $0A

    ld   a, [hl]                                  ; $191E: $7E
    sub  c                                        ; $191F: $91
    jr   nz, jr_000_1928                          ; $1920: $20 $06

    xor  a                                        ; $1922: $AF
    ld   l, $00                                   ; $1923: $2E $00
    ld   [hl], a                                  ; $1925: $77
    jr   jr_000_192E                              ; $1926: $18 $06

jr_000_1928:
    ld   l, $00                                   ; $1928: $2E $00
    inc  h                                        ; $192A: $24
    dec  b                                        ; $192B: $05
    jr   nz, jr_000_1914                          ; $192C: $20 $E6

jr_000_192E:
    pop  hl                                       ; $192E: $E1
    pop  bc                                       ; $192F: $C1
    ret                                           ; $1930: $C9


LoadSceneGraphics::
    ld   a, [$DF01]                               ; $1931: $FA $01 $DF
    bit  0, a                                     ; $1934: $CB $47
    jr   z, jr_000_1948                           ; $1936: $28 $10

    call ExpandFont1bppTo2bpp                     ; $1938: $CD $8B $19
    ld   a, [$DF03]                               ; $193B: $FA $03 $DF
    add  $30                                      ; $193E: $C6 $30
    ld   [$DF00], a                               ; $1940: $EA $00 $DF
    ld   hl, GraphicsSetPointerTable              ; $1943: $21 $A6 $19
    jr   LoadGraphicsDescriptorList               ; $1946: $18 $13

jr_000_1948:
    ld   a, [$DF02]                               ; $1948: $FA $02 $DF
    ld   [$DF00], a                               ; $194B: $EA $00 $DF
    ld   hl, GraphicsSetPointerTable              ; $194E: $21 $A6 $19
    ld   a, [$DF06]                               ; $1951: $FA $06 $DF
    bit  0, a                                     ; $1954: $CB $47
    jr   z, LoadGraphicsDescriptorList            ; $1956: $28 $03

    ld   hl, AlternateGraphicsSetPointerTable     ; $1958: $21 $A5 $1C

LoadGraphicsDescriptorList::
    ld   a, [$DF00]                               ; $195B: $FA $00 $DF

Call_000_195E:
    rlca                                          ; $195E: $07
    call AddAToHL                                 ; $195F: $CD $71 $00
    ld   a, [hl+]                                 ; $1962: $2A
    ld   h, [hl]                                  ; $1963: $66
    ld   l, a                                     ; $1964: $6F

jr_000_1965:
    ld   a, [hl+]                                 ; $1965: $2A
    and  a                                        ; $1966: $A7
    ret  z                                        ; $1967: $C8

    push af                                       ; $1968: $F5
    and  $0F                                      ; $1969: $E6 $0F
    ld   [$3000], a                               ; $196B: $EA $00 $30
    ld   a, [hl+]                                 ; $196E: $2A
    ld   d, a                                     ; $196F: $57
    ld   e, $00                                   ; $1970: $1E $00
    ld   a, [hl+]                                 ; $1972: $2A
    ld   c, a                                     ; $1973: $4F
    ld   a, [hl+]                                 ; $1974: $2A
    ld   b, a                                     ; $1975: $47
    pop  af                                       ; $1976: $F1
    push hl                                       ; $1977: $E5
    ld   h, b                                     ; $1978: $60
    ld   l, c                                     ; $1979: $69
    and  $F0                                      ; $197A: $E6 $F0
    ld   b, a                                     ; $197C: $47

jr_000_197D:
    ld   c, $10                                   ; $197D: $0E $10

jr_000_197F:
    ld   a, [hl+]                                 ; $197F: $2A
    ld   [de], a                                  ; $1980: $12
    inc  de                                       ; $1981: $13
    dec  c                                        ; $1982: $0D
    jr   nz, jr_000_197F                          ; $1983: $20 $FA

    dec  b                                        ; $1985: $05
    jr   nz, jr_000_197D                          ; $1986: $20 $F5

    pop  hl                                       ; $1988: $E1
    jr   jr_000_1965                              ; $1989: $18 $DA

ExpandFont1bppTo2bpp::
    ld   hl, $8C00                                ; $198B: $21 $00 $8C
    ld   de, $4000                                ; $198E: $11 $00 $40
    ld   b, $40                                   ; $1991: $06 $40
    ld   a, $05                                   ; $1993: $3E $05
    ld   [$3000], a                               ; $1995: $EA $00 $30

jr_000_1998:
    ld   c, $08                                   ; $1998: $0E $08

jr_000_199A:
    ld   a, [de]                                  ; $199A: $1A
    inc  de                                       ; $199B: $13
    ld   [hl+], a                                 ; $199C: $22
    xor  a                                        ; $199D: $AF
    ld   [hl+], a                                 ; $199E: $22
    dec  c                                        ; $199F: $0D
    jr   nz, jr_000_199A                          ; $19A0: $20 $F8

    dec  b                                        ; $19A2: $05
    jr   nz, jr_000_1998                          ; $19A3: $20 $F3

    ret                                           ; $19A5: $C9


GraphicsSetPointerTable::
    ld   h, h                                     ; $19A6: $64
    ld   a, [de]                                  ; $19A7: $1A
    ld   a, l                                     ; $19A8: $7D
    ld   a, [de]                                  ; $19A9: $1A
    sbc  d                                        ; $19AA: $9A
    ld   a, [de]                                  ; $19AB: $1A
    cp   e                                        ; $19AC: $BB
    ld   a, [de]                                  ; $19AD: $1A
    call nc, $F11A                                ; $19AE: $D4 $1A $F1
    ld   a, [de]                                  ; $19B1: $1A
    ld   c, $1B                                   ; $19B2: $0E $1B
    ld   c, $1B                                   ; $19B4: $0E $1B
    inc  hl                                       ; $19B6: $23
    dec  de                                       ; $19B7: $1B
    inc  hl                                       ; $19B8: $23
    dec  de                                       ; $19B9: $1B
    ld   b, b                                     ; $19BA: $40
    dec  de                                       ; $19BB: $1B
    ld   b, b                                     ; $19BC: $40
    dec  de                                       ; $19BD: $1B
    ld   e, l                                     ; $19BE: $5D
    dec  de                                       ; $19BF: $1B
    ld   a, [hl]                                  ; $19C0: $7E
    dec  de                                       ; $19C1: $1B
    ld   a, [hl]                                  ; $19C2: $7E
    dec  de                                       ; $19C3: $1B
    sub  e                                        ; $19C4: $93
    dec  de                                       ; $19C5: $1B
    sub  e                                        ; $19C6: $93
    dec  de                                       ; $19C7: $1B
    cp   h                                        ; $19C8: $BC
    dec  de                                       ; $19C9: $1B
    cp   h                                        ; $19CA: $BC
    dec  de                                       ; $19CB: $1B
    cp   h                                        ; $19CC: $BC
    dec  de                                       ; $19CD: $1B
    cp   h                                        ; $19CE: $BC
    dec  de                                       ; $19CF: $1B
    cp   h                                        ; $19D0: $BC
    dec  de                                       ; $19D1: $1B
    cp   h                                        ; $19D2: $BC
    dec  de                                       ; $19D3: $1B
    cp   h                                        ; $19D4: $BC
    dec  de                                       ; $19D5: $1B
    cp   h                                        ; $19D6: $BC
    dec  de                                       ; $19D7: $1B
    ret                                           ; $19D8: $C9


    dec  de                                       ; $19D9: $1B
    jp   c, $EB1B                                 ; $19DA: $DA $1B $EB

    dec  de                                       ; $19DD: $1B
    nop                                           ; $19DE: $00
    inc  e                                        ; $19DF: $1C
    ld   [hl+], a                                 ; $19E0: $22
    inc  e                                        ; $19E1: $1C
    jr   c, jr_000_1A00                           ; $19E2: $38 $1C

    ld   d, c                                     ; $19E4: $51
    inc  e                                        ; $19E5: $1C
    ld   d, d                                     ; $19E6: $52
    inc  e                                        ; $19E7: $1C
    ld   e, e                                     ; $19E8: $5B
    inc  e                                        ; $19E9: $1C
    ld   h, h                                     ; $19EA: $64
    ld   a, [de]                                  ; $19EB: $1A
    ld   l, h                                     ; $19EC: $6C
    inc  e                                        ; $19ED: $1C
    ld   [hl], l                                  ; $19EE: $75
    inc  e                                        ; $19EF: $1C
    ld   a, [hl]                                  ; $19F0: $7E
    inc  e                                        ; $19F1: $1C
    adc  e                                        ; $19F2: $8B
    inc  e                                        ; $19F3: $1C
    adc  e                                        ; $19F4: $8B
    inc  e                                        ; $19F5: $1C
    adc  e                                        ; $19F6: $8B
    inc  e                                        ; $19F7: $1C
    adc  e                                        ; $19F8: $8B
    inc  e                                        ; $19F9: $1C
    adc  e                                        ; $19FA: $8B
    inc  e                                        ; $19FB: $1C
    adc  e                                        ; $19FC: $8B
    inc  e                                        ; $19FD: $1C
    adc  e                                        ; $19FE: $8B
    inc  e                                        ; $19FF: $1C

jr_000_1A00:
    adc  e                                        ; $1A00: $8B
    inc  e                                        ; $1A01: $1C
    adc  e                                        ; $1A02: $8B
    inc  e                                        ; $1A03: $1C
    adc  e                                        ; $1A04: $8B
    inc  e                                        ; $1A05: $1C
    adc  e                                        ; $1A06: $8B
    inc  e                                        ; $1A07: $1C
    sbc  b                                        ; $1A08: $98
    inc  e                                        ; $1A09: $1C
    sbc  b                                        ; $1A0A: $98
    inc  e                                        ; $1A0B: $1C
    sbc  b                                        ; $1A0C: $98
    inc  e                                        ; $1A0D: $1C
    sbc  b                                        ; $1A0E: $98
    inc  e                                        ; $1A0F: $1C
    sbc  b                                        ; $1A10: $98
    inc  e                                        ; $1A11: $1C
    sbc  b                                        ; $1A12: $98
    inc  e                                        ; $1A13: $1C
    sbc  b                                        ; $1A14: $98
    inc  e                                        ; $1A15: $1C
    sbc  b                                        ; $1A16: $98
    inc  e                                        ; $1A17: $1C
    sbc  b                                        ; $1A18: $98
    inc  e                                        ; $1A19: $1C
    sbc  b                                        ; $1A1A: $98
    inc  e                                        ; $1A1B: $1C
    sbc  b                                        ; $1A1C: $98
    inc  e                                        ; $1A1D: $1C
    sbc  b                                        ; $1A1E: $98
    inc  e                                        ; $1A1F: $1C
    sbc  b                                        ; $1A20: $98
    inc  e                                        ; $1A21: $1C
    sbc  b                                        ; $1A22: $98
    inc  e                                        ; $1A23: $1C
    sbc  b                                        ; $1A24: $98
    inc  e                                        ; $1A25: $1C
    sbc  b                                        ; $1A26: $98
    inc  e                                        ; $1A27: $1C
    sbc  b                                        ; $1A28: $98
    inc  e                                        ; $1A29: $1C
    sbc  b                                        ; $1A2A: $98
    inc  e                                        ; $1A2B: $1C
    sbc  b                                        ; $1A2C: $98
    inc  e                                        ; $1A2D: $1C
    sbc  b                                        ; $1A2E: $98
    inc  e                                        ; $1A2F: $1C
    adc  e                                        ; $1A30: $8B
    inc  e                                        ; $1A31: $1C
    adc  e                                        ; $1A32: $8B
    inc  e                                        ; $1A33: $1C
    adc  e                                        ; $1A34: $8B
    inc  e                                        ; $1A35: $1C
    adc  e                                        ; $1A36: $8B
    inc  e                                        ; $1A37: $1C
    adc  e                                        ; $1A38: $8B
    inc  e                                        ; $1A39: $1C
    adc  e                                        ; $1A3A: $8B
    inc  e                                        ; $1A3B: $1C
    adc  e                                        ; $1A3C: $8B
    inc  e                                        ; $1A3D: $1C
    adc  e                                        ; $1A3E: $8B
    inc  e                                        ; $1A3F: $1C
    adc  e                                        ; $1A40: $8B
    inc  e                                        ; $1A41: $1C
    adc  e                                        ; $1A42: $8B
    inc  e                                        ; $1A43: $1C
    adc  e                                        ; $1A44: $8B
    inc  e                                        ; $1A45: $1C
    adc  e                                        ; $1A46: $8B
    inc  e                                        ; $1A47: $1C
    adc  e                                        ; $1A48: $8B
    inc  e                                        ; $1A49: $1C
    adc  e                                        ; $1A4A: $8B
    inc  e                                        ; $1A4B: $1C
    adc  e                                        ; $1A4C: $8B
    inc  e                                        ; $1A4D: $1C
    adc  e                                        ; $1A4E: $8B
    inc  e                                        ; $1A4F: $1C
    adc  e                                        ; $1A50: $8B
    inc  e                                        ; $1A51: $1C
    adc  e                                        ; $1A52: $8B
    inc  e                                        ; $1A53: $1C
    adc  e                                        ; $1A54: $8B
    inc  e                                        ; $1A55: $1C
    adc  e                                        ; $1A56: $8B
    inc  e                                        ; $1A57: $1C
    adc  e                                        ; $1A58: $8B
    inc  e                                        ; $1A59: $1C
    adc  e                                        ; $1A5A: $8B
    inc  e                                        ; $1A5B: $1C
    adc  e                                        ; $1A5C: $8B
    inc  e                                        ; $1A5D: $1C
    adc  e                                        ; $1A5E: $8B
    inc  e                                        ; $1A5F: $1C
    adc  e                                        ; $1A60: $8B
    inc  e                                        ; $1A61: $1C
    adc  e                                        ; $1A62: $8B
    inc  e                                        ; $1A63: $1C
    ld   [hl], a                                  ; $1A64: $77
    sub  b                                        ; $1A65: $90
    nop                                           ; $1A66: $00
    ld   l, b                                     ; $1A67: $68
    rla                                           ; $1A68: $17
    sub  a                                        ; $1A69: $97
    nop                                           ; $1A6A: $00
    ld   e, b                                     ; $1A6B: $58
    rla                                           ; $1A6C: $17
    adc  l                                        ; $1A6D: $8D
    nop                                           ; $1A6E: $00
    ld   d, b                                     ; $1A6F: $50
    rla                                           ; $1A70: $17
    adc  [hl]                                     ; $1A71: $8E
    nop                                           ; $1A72: $00
    ld   d, e                                     ; $1A73: $53
    daa                                           ; $1A74: $27
    add  b                                        ; $1A75: $80
    nop                                           ; $1A76: $00
    ld   d, h                                     ; $1A77: $54
    ld   h, $82                                   ; $1A78: $26 $82
    nop                                           ; $1A7A: $00
    ld   a, [hl]                                  ; $1A7B: $7E
    nop                                           ; $1A7C: $00
    ld   [hl], a                                  ; $1A7D: $77
    sub  b                                        ; $1A7E: $90
    nop                                           ; $1A7F: $00
    ld   [hl], b                                  ; $1A80: $70
    rla                                           ; $1A81: $17
    sub  a                                        ; $1A82: $97
    nop                                           ; $1A83: $00
    ld   l, l                                     ; $1A84: $6D
    daa                                           ; $1A85: $27
    add  b                                        ; $1A86: $80
    nop                                           ; $1A87: $00
    ld   d, h                                     ; $1A88: $54
    ld   d, $83                                   ; $1A89: $16 $83
    nop                                           ; $1A8B: $00
    ld   a, a                                     ; $1A8C: $7F
    ld   d, $8D                                   ; $1A8D: $16 $8D
    nop                                           ; $1A8F: $00
    ld   l, a                                     ; $1A90: $6F
    rla                                           ; $1A91: $17
    adc  [hl]                                     ; $1A92: $8E
    nop                                           ; $1A93: $00
    ld   c, l                                     ; $1A94: $4D
    ld   d, $8F                                   ; $1A95: $16 $8F
    nop                                           ; $1A97: $00
    ld   c, l                                     ; $1A98: $4D
    nop                                           ; $1A99: $00
    add  a                                        ; $1A9A: $87
    sub  b                                        ; $1A9B: $90
    nop                                           ; $1A9C: $00
    ld   a, b                                     ; $1A9D: $78
    ld   d, $80                                   ; $1A9E: $16 $80
    nop                                           ; $1AA0: $00
    ld   l, a                                     ; $1AA1: $6F
    ld   d, $81                                   ; $1AA2: $16 $81
    nop                                           ; $1AA4: $00
    ld   c, a                                     ; $1AA5: $4F
    ld   d, $82                                   ; $1AA6: $16 $82
    nop                                           ; $1AA8: $00
    ld   [hl], d                                  ; $1AA9: $72
    ld   d, $83                                   ; $1AAA: $16 $83
    nop                                           ; $1AAC: $00
    ld   a, a                                     ; $1AAD: $7F
    rla                                           ; $1AAE: $17
    adc  l                                        ; $1AAF: $8D
    nop                                           ; $1AB0: $00
    ld   a, c                                     ; $1AB1: $79
    rla                                           ; $1AB2: $17
    adc  [hl]                                     ; $1AB3: $8E
    nop                                           ; $1AB4: $00
    ld   c, l                                     ; $1AB5: $4D
    rla                                           ; $1AB6: $17
    adc  a                                        ; $1AB7: $8F
    ret  nz                                       ; $1AB8: $C0

    ld   [hl], a                                  ; $1AB9: $77
    nop                                           ; $1ABA: $00
    add  [hl]                                     ; $1ABB: $86
    sub  b                                        ; $1ABC: $90
    nop                                           ; $1ABD: $00
    ld   h, b                                     ; $1ABE: $60
    ld   h, $80                                   ; $1ABF: $26 $80
    nop                                           ; $1AC1: $00
    ld   a, c                                     ; $1AC2: $79
    ld   d, $82                                   ; $1AC3: $16 $82
    nop                                           ; $1AC5: $00
    ld   c, a                                     ; $1AC6: $4F
    ld   d, $83                                   ; $1AC7: $16 $83
    nop                                           ; $1AC9: $00
    ld   a, a                                     ; $1ACA: $7F
    rla                                           ; $1ACB: $17
    adc  l                                        ; $1ACC: $8D
    nop                                           ; $1ACD: $00
    ld   d, b                                     ; $1ACE: $50
    rla                                           ; $1ACF: $17
    adc  [hl]                                     ; $1AD0: $8E
    nop                                           ; $1AD1: $00
    ld   d, e                                     ; $1AD2: $53
    nop                                           ; $1AD3: $00
    ld   d, $80                                   ; $1AD4: $16 $80
    nop                                           ; $1AD6: $00
    ld   l, a                                     ; $1AD7: $6F
    ld   d, $82                                   ; $1AD8: $16 $82
    nop                                           ; $1ADA: $00
    ld   a, [hl]                                  ; $1ADB: $7E
    rla                                           ; $1ADC: $17
    adc  l                                        ; $1ADD: $8D
    nop                                           ; $1ADE: $00
    ld   d, b                                     ; $1ADF: $50
    ld   d, $8E                                   ; $1AE0: $16 $8E
    or   b                                        ; $1AE2: $B0
    ld   b, a                                     ; $1AE3: $47
    ld   d, $8F                                   ; $1AE4: $16 $8F
    nop                                           ; $1AE6: $00
    ld   h, b                                     ; $1AE7: $60
    ld   h, [hl]                                  ; $1AE8: $66
    sub  b                                        ; $1AE9: $90
    nop                                           ; $1AEA: $00
    ld   d, b                                     ; $1AEB: $50
    daa                                           ; $1AEC: $27
    sub  [hl]                                     ; $1AED: $96
    nop                                           ; $1AEE: $00
    ld   a, d                                     ; $1AEF: $7A
    nop                                           ; $1AF0: $00
    ld   b, a                                     ; $1AF1: $47
    sub  b                                        ; $1AF2: $90
    nop                                           ; $1AF3: $00
    ld   e, c                                     ; $1AF4: $59
    rla                                           ; $1AF5: $17
    sub  d                                        ; $1AF6: $92
    nop                                           ; $1AF7: $00
    halt                                          ; $1AF8: $76
    ld   d, $94                                   ; $1AF9: $16 $94
    nop                                           ; $1AFB: $00
    ld   h, h                                     ; $1AFC: $64
    rla                                           ; $1AFD: $17
    sub  l                                        ; $1AFE: $95
    nop                                           ; $1AFF: $00
    ld   [hl], a                                  ; $1B00: $77
    daa                                           ; $1B01: $27
    sub  [hl]                                     ; $1B02: $96
    nop                                           ; $1B03: $00
    ld   l, l                                     ; $1B04: $6D
    ld   d, $82                                   ; $1B05: $16 $82
    nop                                           ; $1B07: $00
    ld   a, [hl]                                  ; $1B08: $7E
    ld   d, $83                                   ; $1B09: $16 $83
    nop                                           ; $1B0B: $00
    ld   a, a                                     ; $1B0C: $7F
    nop                                           ; $1B0D: $00
    ld   h, a                                     ; $1B0E: $67
    sub  b                                        ; $1B0F: $90
    nop                                           ; $1B10: $00
    ld   l, b                                     ; $1B11: $68
    daa                                           ; $1B12: $27
    sub  [hl]                                     ; $1B13: $96
    nop                                           ; $1B14: $00
    halt                                          ; $1B15: $76
    ld   d, $82                                   ; $1B16: $16 $82
    nop                                           ; $1B18: $00
    ld   a, [hl]                                  ; $1B19: $7E
    rla                                           ; $1B1A: $17
    adc  l                                        ; $1B1B: $8D
    nop                                           ; $1B1C: $00
    ld   a, c                                     ; $1B1D: $79
    rla                                           ; $1B1E: $17
    adc  [hl]                                     ; $1B1F: $8E
    nop                                           ; $1B20: $00
    ld   d, e                                     ; $1B21: $53
    nop                                           ; $1B22: $00
    add  a                                        ; $1B23: $87
    sub  b                                        ; $1B24: $90
    nop                                           ; $1B25: $00
    ld   [hl], b                                  ; $1B26: $70
    rla                                           ; $1B27: $17
    sub  d                                        ; $1B28: $92
    nop                                           ; $1B29: $00
    ld   l, b                                     ; $1B2A: $68
    daa                                           ; $1B2B: $27
    add  b                                        ; $1B2C: $80
    nop                                           ; $1B2D: $00
    ld   b, h                                     ; $1B2E: $44
    ld   d, $83                                   ; $1B2F: $16 $83
    nop                                           ; $1B31: $00
    ld   a, a                                     ; $1B32: $7F
    rla                                           ; $1B33: $17
    adc  l                                        ; $1B34: $8D
    nop                                           ; $1B35: $00
    ld   a, c                                     ; $1B36: $79
    rla                                           ; $1B37: $17
    adc  [hl]                                     ; $1B38: $8E
    nop                                           ; $1B39: $00
    ld   d, e                                     ; $1B3A: $53
    rla                                           ; $1B3B: $17
    adc  a                                        ; $1B3C: $8F
    nop                                           ; $1B3D: $00
    ld   a, b                                     ; $1B3E: $78
    nop                                           ; $1B3F: $00
    ld   h, a                                     ; $1B40: $67
    sub  b                                        ; $1B41: $90
    nop                                           ; $1B42: $00
    ld   l, b                                     ; $1B43: $68
    daa                                           ; $1B44: $27
    sub  [hl]                                     ; $1B45: $96
    nop                                           ; $1B46: $00
    halt                                          ; $1B47: $76
    ld   d, $81                                   ; $1B48: $16 $81
    nop                                           ; $1B4A: $00
    ld   c, a                                     ; $1B4B: $4F
    ld   d, $82                                   ; $1B4C: $16 $82
    nop                                           ; $1B4E: $00
    ld   [hl], d                                  ; $1B4F: $72
    rla                                           ; $1B50: $17
    adc  l                                        ; $1B51: $8D
    nop                                           ; $1B52: $00
    ld   a, c                                     ; $1B53: $79
    rla                                           ; $1B54: $17
    adc  [hl]                                     ; $1B55: $8E
    nop                                           ; $1B56: $00
    ld   d, e                                     ; $1B57: $53
    ld   d, $8F                                   ; $1B58: $16 $8F
    nop                                           ; $1B5A: $00
    ld   c, l                                     ; $1B5B: $4D
    nop                                           ; $1B5C: $00
    halt                                          ; $1B5D: $76
    sub  b                                        ; $1B5E: $90
    nop                                           ; $1B5F: $00
    ld   h, b                                     ; $1B60: $60
    rla                                           ; $1B61: $17
    sub  d                                        ; $1B62: $92
    nop                                           ; $1B63: $00
    ld   a, b                                     ; $1B64: $78
    rla                                           ; $1B65: $17
    sub  e                                        ; $1B66: $93
    nop                                           ; $1B67: $00
    ld   a, e                                     ; $1B68: $7B
    rla                                           ; $1B69: $17
    sub  a                                        ; $1B6A: $97
    nop                                           ; $1B6B: $00
    ld   [hl], a                                  ; $1B6C: $77
    daa                                           ; $1B6D: $27
    add  b                                        ; $1B6E: $80
    nop                                           ; $1B6F: $00
    ld   d, h                                     ; $1B70: $54
    ld   d, $83                                   ; $1B71: $16 $83
    nop                                           ; $1B73: $00
    ld   a, a                                     ; $1B74: $7F
    rla                                           ; $1B75: $17
    adc  l                                        ; $1B76: $8D
    nop                                           ; $1B77: $00
    ld   d, b                                     ; $1B78: $50
    ld   d, $8F                                   ; $1B79: $16 $8F
    nop                                           ; $1B7B: $00
    ld   c, l                                     ; $1B7C: $4D
    nop                                           ; $1B7D: $00
    ld   h, a                                     ; $1B7E: $67
    sub  b                                        ; $1B7F: $90
    nop                                           ; $1B80: $00
    ld   l, b                                     ; $1B81: $68
    daa                                           ; $1B82: $27
    sub  [hl]                                     ; $1B83: $96
    nop                                           ; $1B84: $00
    halt                                          ; $1B85: $76
    ld   d, $82                                   ; $1B86: $16 $82
    nop                                           ; $1B88: $00
    ld   a, [hl]                                  ; $1B89: $7E
    rla                                           ; $1B8A: $17
    adc  l                                        ; $1B8B: $8D
    nop                                           ; $1B8C: $00
    ld   d, b                                     ; $1B8D: $50
    rla                                           ; $1B8E: $17
    adc  [hl]                                     ; $1B8F: $8E
    nop                                           ; $1B90: $00
    ld   d, e                                     ; $1B91: $53
    nop                                           ; $1B92: $00
    ld   h, $90                                   ; $1B93: $26 $90
    nop                                           ; $1B95: $00
    ld   h, b                                     ; $1B96: $60
    rla                                           ; $1B97: $17
    sub  d                                        ; $1B98: $92
    nop                                           ; $1B99: $00
    ld   a, b                                     ; $1B9A: $78
    rla                                           ; $1B9B: $17
    sub  e                                        ; $1B9C: $93
    nop                                           ; $1B9D: $00
    ld   a, e                                     ; $1B9E: $7B
    rla                                           ; $1B9F: $17
    sub  h                                        ; $1BA0: $94
    nop                                           ; $1BA1: $00
    ld   a, l                                     ; $1BA2: $7D
    rla                                           ; $1BA3: $17
    sub  l                                        ; $1BA4: $95
    nop                                           ; $1BA5: $00
    ld   e, b                                     ; $1BA6: $58
    ld   d, $96                                   ; $1BA7: $16 $96
    nop                                           ; $1BA9: $00
    ld   h, [hl]                                  ; $1BAA: $66
    rla                                           ; $1BAB: $17
    sub  a                                        ; $1BAC: $97
    nop                                           ; $1BAD: $00
    ld   [hl], a                                  ; $1BAE: $77
    ld   d, $81                                   ; $1BAF: $16 $81
    nop                                           ; $1BB1: $00
    ld   [hl], a                                  ; $1BB2: $77
    ld   h, $82                                   ; $1BB3: $26 $82
    nop                                           ; $1BB5: $00
    ld   a, b                                     ; $1BB6: $78
    rla                                           ; $1BB7: $17
    adc  l                                        ; $1BB8: $8D
    nop                                           ; $1BB9: $00
    ld   a, c                                     ; $1BBA: $79
    nop                                           ; $1BBB: $00
    add  [hl]                                     ; $1BBC: $86
    sub  b                                        ; $1BBD: $90
    nop                                           ; $1BBE: $00
    ld   h, b                                     ; $1BBF: $60
    rla                                           ; $1BC0: $17
    adc  l                                        ; $1BC1: $8D
    nop                                           ; $1BC2: $00
    ld   d, l                                     ; $1BC3: $55
    rla                                           ; $1BC4: $17
    adc  [hl]                                     ; $1BC5: $8E
    nop                                           ; $1BC6: $00
    ld   d, a                                     ; $1BC7: $57
    nop                                           ; $1BC8: $00
    rla                                           ; $1BC9: $17
    adc  [hl]                                     ; $1BCA: $8E
    nop                                           ; $1BCB: $00
    ld   d, e                                     ; $1BCC: $53
    ld   h, a                                     ; $1BCD: $67
    sub  b                                        ; $1BCE: $90
    nop                                           ; $1BCF: $00
    ld   l, b                                     ; $1BD0: $68
    daa                                           ; $1BD1: $27
    sub  [hl]                                     ; $1BD2: $96
    nop                                           ; $1BD3: $00
    halt                                          ; $1BD4: $76
    daa                                           ; $1BD5: $27
    add  b                                        ; $1BD6: $80
    nop                                           ; $1BD7: $00
    ld   d, h                                     ; $1BD8: $54
    nop                                           ; $1BD9: $00
    rla                                           ; $1BDA: $17
    adc  [hl]                                     ; $1BDB: $8E
    nop                                           ; $1BDC: $00
    ld   d, e                                     ; $1BDD: $53
    ld   h, a                                     ; $1BDE: $67
    sub  b                                        ; $1BDF: $90
    nop                                           ; $1BE0: $00
    ld   l, b                                     ; $1BE1: $68
    daa                                           ; $1BE2: $27
    sub  [hl]                                     ; $1BE3: $96
    nop                                           ; $1BE4: $00
    halt                                          ; $1BE5: $76
    daa                                           ; $1BE6: $27
    add  b                                        ; $1BE7: $80
    nop                                           ; $1BE8: $00
    ld   d, h                                     ; $1BE9: $54
    nop                                           ; $1BEA: $00
    rla                                           ; $1BEB: $17
    adc  [hl]                                     ; $1BEC: $8E
    nop                                           ; $1BED: $00
    ld   d, e                                     ; $1BEE: $53
    ld   h, a                                     ; $1BEF: $67
    sub  b                                        ; $1BF0: $90
    nop                                           ; $1BF1: $00
    ld   l, b                                     ; $1BF2: $68
    daa                                           ; $1BF3: $27
    sub  [hl]                                     ; $1BF4: $96
    nop                                           ; $1BF5: $00
    halt                                          ; $1BF6: $76
    rla                                           ; $1BF7: $17
    add  b                                        ; $1BF8: $80
    nop                                           ; $1BF9: $00
    ld   d, e                                     ; $1BFA: $53
    rla                                           ; $1BFB: $17
    add  c                                        ; $1BFC: $81
    nop                                           ; $1BFD: $00
    ld   d, l                                     ; $1BFE: $55
    nop                                           ; $1BFF: $00
    rla                                           ; $1C00: $17
    adc  [hl]                                     ; $1C01: $8E
    nop                                           ; $1C02: $00
    ld   d, e                                     ; $1C03: $53
    ld   h, a                                     ; $1C04: $67
    sub  b                                        ; $1C05: $90
    nop                                           ; $1C06: $00
    ld   l, b                                     ; $1C07: $68
    daa                                           ; $1C08: $27
    sub  [hl]                                     ; $1C09: $96
    nop                                           ; $1C0A: $00
    halt                                          ; $1C0B: $76
    ld   d, $80                                   ; $1C0C: $16 $80
    nop                                           ; $1C0E: $00
    ld   l, d                                     ; $1C0F: $6A
    ld   d, $81                                   ; $1C10: $16 $81
    nop                                           ; $1C12: $00
    ld   a, l                                     ; $1C13: $7D
    ld   d, $82                                   ; $1C14: $16 $82
    nop                                           ; $1C16: $00
    ld   d, b                                     ; $1C17: $50
    nop                                           ; $1C18: $00
    ld   d, $81                                   ; $1C19: $16 $81
    nop                                           ; $1C1B: $00
    ld   [hl], a                                  ; $1C1C: $77
    ld   h, $82                                   ; $1C1D: $26 $82
    nop                                           ; $1C1F: $00
    ld   a, b                                     ; $1C20: $78
    nop                                           ; $1C21: $00
    rla                                           ; $1C22: $17
    adc  [hl]                                     ; $1C23: $8E
    nop                                           ; $1C24: $00
    ld   d, e                                     ; $1C25: $53
    ld   h, a                                     ; $1C26: $67
    sub  b                                        ; $1C27: $90
    nop                                           ; $1C28: $00
    ld   l, b                                     ; $1C29: $68
    ld   d, $93                                   ; $1C2A: $16 $93
    nop                                           ; $1C2C: $00
    ld   h, l                                     ; $1C2D: $65
    daa                                           ; $1C2E: $27
    sub  [hl]                                     ; $1C2F: $96
    nop                                           ; $1C30: $00
    halt                                          ; $1C31: $76
    ld   b, [hl]                                  ; $1C32: $46
    add  b                                        ; $1C33: $80
    nop                                           ; $1C34: $00
    ld   [hl], h                                  ; $1C35: $74
    nop                                           ; $1C36: $00
    nop                                           ; $1C37: $00
    rla                                           ; $1C38: $17
    adc  [hl]                                     ; $1C39: $8E
    nop                                           ; $1C3A: $00
    ld   d, e                                     ; $1C3B: $53
    ld   h, a                                     ; $1C3C: $67
    sub  b                                        ; $1C3D: $90
    nop                                           ; $1C3E: $00
    ld   l, b                                     ; $1C3F: $68
    daa                                           ; $1C40: $27
    sub  [hl]                                     ; $1C41: $96
    nop                                           ; $1C42: $00
    halt                                          ; $1C43: $76
    daa                                           ; $1C44: $27
    add  b                                        ; $1C45: $80
    nop                                           ; $1C46: $00
    ld   d, c                                     ; $1C47: $51
    daa                                           ; $1C48: $27
    add  d                                        ; $1C49: $82
    nop                                           ; $1C4A: $00
    ld   d, [hl]                                  ; $1C4B: $56
    rla                                           ; $1C4C: $17
    adc  l                                        ; $1C4D: $8D
    nop                                           ; $1C4E: $00
    ld   d, b                                     ; $1C4F: $50
    nop                                           ; $1C50: $00
    nop                                           ; $1C51: $00
    add  a                                        ; $1C52: $87
    sub  b                                        ; $1C53: $90
    nop                                           ; $1C54: $00
    ld   [hl], b                                  ; $1C55: $70
    ld   h, $81                                   ; $1C56: $26 $81
    nop                                           ; $1C58: $00
    ld   a, e                                     ; $1C59: $7B
    nop                                           ; $1C5A: $00
    ld   h, $80                                   ; $1C5B: $26 $80
    nop                                           ; $1C5D: $00
    ld   [hl], e                                  ; $1C5E: $73
    ld   d, $82                                   ; $1C5F: $16 $82
    nop                                           ; $1C61: $00
    ld   [hl], h                                  ; $1C62: $74
    ld   h, a                                     ; $1C63: $67
    sub  b                                        ; $1C64: $90
    nop                                           ; $1C65: $00
    ld   [hl], b                                  ; $1C66: $70
    daa                                           ; $1C67: $27
    sub  [hl]                                     ; $1C68: $96
    nop                                           ; $1C69: $00
    ld   c, [hl]                                  ; $1C6A: $4E
    nop                                           ; $1C6B: $00
    add  a                                        ; $1C6C: $87
    add  h                                        ; $1C6D: $84
    nop                                           ; $1C6E: $00
    ld   b, b                                     ; $1C6F: $40
    rla                                           ; $1C70: $17
    adc  h                                        ; $1C71: $8C
    nop                                           ; $1C72: $00
    ld   c, b                                     ; $1C73: $48
    nop                                           ; $1C74: $00
    add  [hl]                                     ; $1C75: $86
    sub  b                                        ; $1C76: $90
    nop                                           ; $1C77: $00
    ld   b, b                                     ; $1C78: $40
    dec  h                                        ; $1C79: $25
    adc  b                                        ; $1C7A: $88
    nop                                           ; $1C7B: $00
    ld   b, d                                     ; $1C7C: $42
    nop                                           ; $1C7D: $00
    rla                                           ; $1C7E: $17
    sub  b                                        ; $1C7F: $90
    nop                                           ; $1C80: $00
    ld   a, b                                     ; $1C81: $78
    rla                                           ; $1C82: $17
    sub  c                                        ; $1C83: $91
    nop                                           ; $1C84: $00
    ld   a, h                                     ; $1C85: $7C
    rla                                           ; $1C86: $17
    sub  d                                        ; $1C87: $92
    nop                                           ; $1C88: $00
    ld   e, c                                     ; $1C89: $59
    nop                                           ; $1C8A: $00
    halt                                          ; $1C8B: $76
    add  b                                        ; $1C8C: $80
    nop                                           ; $1C8D: $00
    ld   c, b                                     ; $1C8E: $48
    ld   d, $87                                   ; $1C8F: $16 $87
    nop                                           ; $1C91: $00
    ld   l, d                                     ; $1C92: $6A
    add  a                                        ; $1C93: $87
    sub  b                                        ; $1C94: $90
    nop                                           ; $1C95: $00
    ld   h, b                                     ; $1C96: $60
    nop                                           ; $1C97: $00
    halt                                          ; $1C98: $76
    add  b                                        ; $1C99: $80
    nop                                           ; $1C9A: $00
    ld   c, b                                     ; $1C9B: $48
    ld   d, $87                                   ; $1C9C: $16 $87
    nop                                           ; $1C9E: $00
    ld   l, d                                     ; $1C9F: $6A
    add  [hl]                                     ; $1CA0: $86
    sub  b                                        ; $1CA1: $90
    nop                                           ; $1CA2: $00
    ld   e, b                                     ; $1CA3: $58
    nop                                           ; $1CA4: $00

AlternateGraphicsSetPointerTable::
    xor  a                                        ; $1CA5: $AF
    inc  e                                        ; $1CA6: $1C
    cp   h                                        ; $1CA7: $BC
    inc  e                                        ; $1CA8: $1C
    sbc  d                                        ; $1CA9: $9A
    ld   a, [de]                                  ; $1CAA: $1A
    cp   e                                        ; $1CAB: $BB
    ld   a, [de]                                  ; $1CAC: $1A
    add  sp, $1A                                  ; $1CAD: $E8 $1A
    rla                                           ; $1CAF: $17
    sub  a                                        ; $1CB0: $97
    nop                                           ; $1CB1: $00
    ld   l, a                                     ; $1CB2: $6F
    daa                                           ; $1CB3: $27
    add  b                                        ; $1CB4: $80
    nop                                           ; $1CB5: $00
    ld   d, h                                     ; $1CB6: $54
    ld   h, $82                                   ; $1CB7: $26 $82
    nop                                           ; $1CB9: $00
    ld   a, [hl]                                  ; $1CBA: $7E
    nop                                           ; $1CBB: $00
    rla                                           ; $1CBC: $17
    sub  a                                        ; $1CBD: $97
    nop                                           ; $1CBE: $00
    ld   [hl], a                                  ; $1CBF: $77
    rla                                           ; $1CC0: $17
    add  b                                        ; $1CC1: $80
    db   $10                                      ; $1CC2: $10
    ld   c, h                                     ; $1CC3: $4C
    ld   d, $81                                   ; $1CC4: $16 $81
    nop                                           ; $1CC6: $00
    ld   c, a                                     ; $1CC7: $4F
    ld   d, $82                                   ; $1CC8: $16 $82
    nop                                           ; $1CCA: $00
    ld   [hl], d                                  ; $1CCB: $72
    ld   d, $83                                   ; $1CCC: $16 $83
    nop                                           ; $1CCE: $00
    ld   a, a                                     ; $1CCF: $7F
    ld   h, $8D                                   ; $1CD0: $26 $8D
    nop                                           ; $1CD2: $00
    ld   l, b                                     ; $1CD3: $68
    nop                                           ; $1CD4: $00
    nop                                           ; $1CD5: $00
    push de                                       ; $1CD6: $D5
    dec  de                                       ; $1CD7: $1B
    and  $1B                                      ; $1CD8: $E6 $1B
    push de                                       ; $1CDA: $D5
    dec  de                                       ; $1CDB: $1B
    and  $1B                                      ; $1CDC: $E6 $1B
    rst  RST_30                                   ; $1CDE: $F7
    dec  de                                       ; $1CDF: $1B
    ld   a, [$F71C]                               ; $1CE0: $FA $1C $F7

Call_000_1CE3:
    dec  de                                       ; $1CE3: $1B
    ld   a, [$F71C]                               ; $1CE4: $FA $1C $F7
    dec  de                                       ; $1CE7: $1B
    add  hl, de                                   ; $1CE8: $19
    inc  e                                        ; $1CE9: $1C
    db   $10                                      ; $1CEA: $10
    dec  e                                        ; $1CEB: $1D
    ld   [hl-], a                                 ; $1CEC: $32
    inc  e                                        ; $1CED: $1C
    ld   [hl-], a                                 ; $1CEE: $32
    inc  e                                        ; $1CEF: $1C
    ld   d, [hl]                                  ; $1CF0: $56
    inc  e                                        ; $1CF1: $1C
    db   $10                                      ; $1CF2: $10
    dec  e                                        ; $1CF3: $1D
    ld   b, h                                     ; $1CF4: $44
    inc  e                                        ; $1CF5: $1C
    rlca                                          ; $1CF6: $07
    dec  e                                        ; $1CF7: $1D
    ld   d, [hl]                                  ; $1CF8: $56
    inc  e                                        ; $1CF9: $1C
    ld   d, $81                                   ; $1CFA: $16 $81
    nop                                           ; $1CFC: $00
    ld   c, a                                     ; $1CFD: $4F
    ld   d, $82                                   ; $1CFE: $16 $82
    nop                                           ; $1D00: $00
    ld   [hl], d                                  ; $1D01: $72
    ld   d, $8F                                   ; $1D02: $16 $8F
    nop                                           ; $1D04: $00
    ld   c, l                                     ; $1D05: $4D
    nop                                           ; $1D06: $00
    rla                                           ; $1D07: $17
    adc  l                                        ; $1D08: $8D
    nop                                           ; $1D09: $00
    ld   d, l                                     ; $1D0A: $55
    rla                                           ; $1D0B: $17
    adc  [hl]                                     ; $1D0C: $8E
    nop                                           ; $1D0D: $00
    ld   d, a                                     ; $1D0E: $57
    nop                                           ; $1D0F: $00
    ld   h, $80                                   ; $1D10: $26 $80
    nop                                           ; $1D12: $00
    ld   a, c                                     ; $1D13: $79
    nop                                           ; $1D14: $00

Call_000_1D15:
    ld   a, $01                                   ; $1D15: $3E $01
    ld   [$C3C5], a                               ; $1D17: $EA $C5 $C3
    ld   [$3000], a                               ; $1D1A: $EA $00 $30
    ld   a, [$C270]                               ; $1D1D: $FA $70 $C2
    and  a                                        ; $1D20: $A7
    jp   nz, Jump_000_1DA3                        ; $1D21: $C2 $A3 $1D

    ld   a, [$C3A7]                               ; $1D24: $FA $A7 $C3
    bit  0, a                                     ; $1D27: $CB $47
    jp   nz, Jump_000_1DCB                        ; $1D29: $C2 $CB $1D

    bit  2, a                                     ; $1D2C: $CB $57
    jp   nz, Jump_000_1DD6                        ; $1D2E: $C2 $D6 $1D

    bit  4, a                                     ; $1D31: $CB $67
    jp   nz, Jump_000_1DE1                        ; $1D33: $C2 $E1 $1D

    bit  6, a                                     ; $1D36: $CB $77
    jp   nz, Jump_000_1DEC                        ; $1D38: $C2 $EC $1D

    ld   a, [$C460]                               ; $1D3B: $FA $60 $C4
    and  a                                        ; $1D3E: $A7
    ret  nz                                       ; $1D3F: $C0

    call $6F55                                    ; $1D40: $CD $55 $6F
    call $70FA                                    ; $1D43: $CD $FA $70
    ld   a, [$C579]                               ; $1D46: $FA $79 $C5
    bit  0, a                                     ; $1D49: $CB $47
    ret  nz                                       ; $1D4B: $C0

    ld   a, $10                                   ; $1D4C: $3E $10
    ld   [$C271], a                               ; $1D4E: $EA $71 $C2
    ld   a, [$C261]                               ; $1D51: $FA $61 $C2
    rlca                                          ; $1D54: $07
    jr   c, jr_000_1D96                           ; $1D55: $38 $3F

    rlca                                          ; $1D57: $07
    jr   c, jr_000_1D87                           ; $1D58: $38 $2D

    rlca                                          ; $1D5A: $07
    jr   c, jr_000_1D74                           ; $1D5B: $38 $17

    rlca                                          ; $1D5D: $07
    jr   c, jr_000_1D61                           ; $1D5E: $38 $01

    ret                                           ; $1D60: $C9


jr_000_1D61:
    ld   a, [$C399]                               ; $1D61: $FA $99 $C3
    swap a                                        ; $1D64: $CB $37
    add  $10                                      ; $1D66: $C6 $10
    swap a                                        ; $1D68: $CB $37
    ld   [$C399], a                               ; $1D6A: $EA $99 $C3
    ld   a, $01                                   ; $1D6D: $3E $01
    ld   [$C270], a                               ; $1D6F: $EA $70 $C2
    jr   jr_000_1DA3                              ; $1D72: $18 $2F

jr_000_1D74:
    ld   a, [$C399]                               ; $1D74: $FA $99 $C3
    swap a                                        ; $1D77: $CB $37
    sub  $10                                      ; $1D79: $D6 $10
    swap a                                        ; $1D7B: $CB $37
    ld   [$C399], a                               ; $1D7D: $EA $99 $C3
    ld   a, $02                                   ; $1D80: $3E $02
    ld   [$C270], a                               ; $1D82: $EA $70 $C2
    jr   jr_000_1DA3                              ; $1D85: $18 $1C

jr_000_1D87:
    ld   a, [$C399]                               ; $1D87: $FA $99 $C3
    sub  $10                                      ; $1D8A: $D6 $10
    ld   [$C399], a                               ; $1D8C: $EA $99 $C3
    ld   a, $03                                   ; $1D8F: $3E $03
    ld   [$C270], a                               ; $1D91: $EA $70 $C2
    jr   jr_000_1DA3                              ; $1D94: $18 $0D

jr_000_1D96:
    ld   a, [$C399]                               ; $1D96: $FA $99 $C3
    add  $10                                      ; $1D99: $C6 $10
    ld   [$C399], a                               ; $1D9B: $EA $99 $C3
    ld   a, $04                                   ; $1D9E: $3E $04
    ld   [$C270], a                               ; $1DA0: $EA $70 $C2

Jump_000_1DA3:
jr_000_1DA3:
    ld   hl, $1DB6                                ; $1DA3: $21 $B6 $1D
    push hl                                       ; $1DA6: $E5
    ld   a, [$C270]                               ; $1DA7: $FA $70 $C2
    dec  a                                        ; $1DAA: $3D
    call Call_000_0B7D                            ; $1DAB: $CD $7D $0B
    jp   $CE1D                                    ; $1DAE: $C3 $1D $CE


    dec  e                                        ; $1DB1: $1D
    reti                                          ; $1DB2: $D9


    dec  e                                        ; $1DB3: $1D
    db   $E4                                      ; $1DB4: $E4
    dec  e                                        ; $1DB5: $1D
    ld   a, [$C271]                               ; $1DB6: $FA $71 $C2
    dec  a                                        ; $1DB9: $3D
    ld   [$C271], a                               ; $1DBA: $EA $71 $C2
    ret  nz                                       ; $1DBD: $C0

    xor  a                                        ; $1DBE: $AF
    ld   [$C270], a                               ; $1DBF: $EA $70 $C2
    ret                                           ; $1DC2: $C9


    ld   c, $01                                   ; $1DC3: $0E $01
    call $4667                                    ; $1DC5: $CD $67 $46
    call Call_000_1448                            ; $1DC8: $CD $48 $14

Jump_000_1DCB:
    jp   Jump_000_1151                            ; $1DCB: $C3 $51 $11


    ld   c, $01                                   ; $1DCE: $0E $01
    call $4694                                    ; $1DD0: $CD $94 $46
    call Call_000_1448                            ; $1DD3: $CD $48 $14

Jump_000_1DD6:
    jp   Jump_000_11CF                            ; $1DD6: $C3 $CF $11


    ld   c, $01                                   ; $1DD9: $0E $01
    call $4711                                    ; $1DDB: $CD $11 $47
    call Call_000_1448                            ; $1DDE: $CD $48 $14

Jump_000_1DE1:
    jp   Jump_000_124D                            ; $1DE1: $C3 $4D $12


    ld   c, $01                                   ; $1DE4: $0E $01
    call $4769                                    ; $1DE6: $CD $69 $47
    call Call_000_1448                            ; $1DE9: $CD $48 $14

Jump_000_1DEC:
    jp   Jump_000_12B2                            ; $1DEC: $C3 $B2 $12


Call_000_1DEF:
    ld   a, $02                                   ; $1DEF: $3E $02
    ld   [$3000], a                               ; $1DF1: $EA $00 $30
    ld   a, [$DF01]                               ; $1DF4: $FA $01 $DF
    rrca                                          ; $1DF7: $0F
    jr   nc, jr_000_1E33                          ; $1DF8: $30 $39

    ld   a, [$DF03]                               ; $1DFA: $FA $03 $DF
    ld   hl, $38E0                                ; $1DFD: $21 $E0 $38
    call Add2AToHL                                ; $1E00: $CD $81 $00
    ld   a, [hl+]                                 ; $1E03: $2A
    ld   h, [hl]                                  ; $1E04: $66
    ld   l, a                                     ; $1E05: $6F
    ld   b, $00                                   ; $1E06: $06 $00
    ld   de, $CA20                                ; $1E08: $11 $20 $CA

jr_000_1E0B:
    push de                                       ; $1E0B: $D5
    ld   a, [hl+]                                 ; $1E0C: $2A
    ld   [de], a                                  ; $1E0D: $12
    inc  a                                        ; $1E0E: $3C
    jr   z, jr_000_1E31                           ; $1E0F: $28 $20

    inc  d                                        ; $1E11: $14
    ld   a, [hl+]                                 ; $1E12: $2A
    ld   [de], a                                  ; $1E13: $12
    inc  d                                        ; $1E14: $14
    ld   a, [hl+]                                 ; $1E15: $2A
    ld   [de], a                                  ; $1E16: $12
    inc  d                                        ; $1E17: $14
    ld   a, [hl+]                                 ; $1E18: $2A
    ld   [de], a                                  ; $1E19: $12
    inc  d                                        ; $1E1A: $14
    ld   a, [hl+]                                 ; $1E1B: $2A
    ld   [de], a                                  ; $1E1C: $12
    inc  d                                        ; $1E1D: $14
    ld   a, [hl+]                                 ; $1E1E: $2A
    ld   [de], a                                  ; $1E1F: $12
    inc  d                                        ; $1E20: $14
    ld   a, b                                     ; $1E21: $78
    ld   [de], a                                  ; $1E22: $12
    inc  d                                        ; $1E23: $14
    ld   a, [hl+]                                 ; $1E24: $2A
    ld   [de], a                                  ; $1E25: $12
    inc  d                                        ; $1E26: $14
    ld   a, [hl+]                                 ; $1E27: $2A
    ld   [de], a                                  ; $1E28: $12
    inc  d                                        ; $1E29: $14
    ld   a, [hl+]                                 ; $1E2A: $2A
    ld   [de], a                                  ; $1E2B: $12
    pop  de                                       ; $1E2C: $D1
    inc  b                                        ; $1E2D: $04
    inc  e                                        ; $1E2E: $1C
    jr   jr_000_1E0B                              ; $1E2F: $18 $DA

jr_000_1E31:
    pop  de                                       ; $1E31: $D1
    ret                                           ; $1E32: $C9


jr_000_1E33:
    ld   a, [$DF02]                               ; $1E33: $FA $02 $DF
    ld   b, a                                     ; $1E36: $47
    cp   $19                                      ; $1E37: $FE $19
    jr   c, LoadStagePlacementsFromTemplates      ; $1E39: $38 $30

    ld   a, [$DF2D]                               ; $1E3B: $FA $2D $DF
    and  a                                        ; $1E3E: $A7
    jr   nz, LoadStagePlacementsFromTemplates     ; $1E3F: $20 $2A

    ld   a, b                                     ; $1E41: $78
    sub  $19                                      ; $1E42: $D6 $19
    ld   b, a                                     ; $1E44: $47
    rlca                                          ; $1E45: $07
    add  b                                        ; $1E46: $80
    ld   b, a                                     ; $1E47: $47

jr_000_1E48:
    call Call_000_0BBF                            ; $1E48: $CD $BF $0B
    ld   a, [$DF0B]                               ; $1E4B: $FA $0B $DF
    and  $03                                      ; $1E4E: $E6 $03
    jr   z, jr_000_1E48                           ; $1E50: $28 $F6

    dec  a                                        ; $1E52: $3D
    ld   [$C694], a                               ; $1E53: $EA $94 $C6
    add  b                                        ; $1E56: $80
    ld   b, a                                     ; $1E57: $47
    push bc                                       ; $1E58: $C5
    ld   hl, $1CD6                                ; $1E59: $21 $D6 $1C
    call Call_000_195E                            ; $1E5C: $CD $5E $19
    pop  bc                                       ; $1E5F: $C1
    ld   a, $02                                   ; $1E60: $3E $02
    ld   [$3000], a                               ; $1E62: $EA $00 $30
    ld   a, b                                     ; $1E65: $78
    ld   hl, $70FB                                ; $1E66: $21 $FB $70
    jr   jr_000_1E6F                              ; $1E69: $18 $04

LoadStagePlacementsFromTemplates::
    ld   a, b                                     ; $1E6B: $78
    ld   hl, $7129                                ; $1E6C: $21 $29 $71

Call_000_1E6F:
jr_000_1E6F:
    call Add2AToHL                                ; $1E6F: $CD $81 $00
    ld   a, [hl+]                                 ; $1E72: $2A
    ld   h, [hl]                                  ; $1E73: $66
    ld   l, a                                     ; $1E74: $6F

Call_000_1E75:
    ld   b, $00                                   ; $1E75: $06 $00
    ld   de, $CA20                                ; $1E77: $11 $20 $CA

jr_000_1E7A:
    push de                                       ; $1E7A: $D5
    ld   a, [hl]                                  ; $1E7B: $7E
    ld   [de], a                                  ; $1E7C: $12
    inc  a                                        ; $1E7D: $3C
    jr   z, jr_000_1E31                           ; $1E7E: $28 $B1

    ld   a, [hl+]                                 ; $1E80: $2A
    push hl                                       ; $1E81: $E5
    ld   hl, $716F                                ; $1E82: $21 $6F $71
    ld   c, a                                     ; $1E85: $4F
    call AddAToHL                                 ; $1E86: $CD $71 $00
    ld   a, c                                     ; $1E89: $79
    call Call_000_0BE9                            ; $1E8A: $CD $E9 $0B
    ld   a, [hl+]                                 ; $1E8D: $2A
    ld   [de], a                                  ; $1E8E: $12
    inc  d                                        ; $1E8F: $14
    ld   a, [hl+]                                 ; $1E90: $2A
    ld   [de], a                                  ; $1E91: $12
    ld   d, $D1                                   ; $1E92: $16 $D1
    ld   a, [hl+]                                 ; $1E94: $2A
    ld   [de], a                                  ; $1E95: $12
    inc  d                                        ; $1E96: $14
    ld   a, [hl+]                                 ; $1E97: $2A
    ld   [de], a                                  ; $1E98: $12
    inc  d                                        ; $1E99: $14
    ld   a, [hl]                                  ; $1E9A: $7E
    ld   [de], a                                  ; $1E9B: $12
    pop  hl                                       ; $1E9C: $E1
    ld   d, $CC                                   ; $1E9D: $16 $CC
    ld   a, [hl+]                                 ; $1E9F: $2A
    ld   [de], a                                  ; $1EA0: $12
    inc  d                                        ; $1EA1: $14
    ld   a, [hl+]                                 ; $1EA2: $2A
    ld   [de], a                                  ; $1EA3: $12
    inc  d                                        ; $1EA4: $14
    ld   a, [hl+]                                 ; $1EA5: $2A
    ld   [de], a                                  ; $1EA6: $12
    inc  d                                        ; $1EA7: $14
    ld   a, [hl+]                                 ; $1EA8: $2A
    ld   [de], a                                  ; $1EA9: $12
    inc  d                                        ; $1EAA: $14
    ld   a, b                                     ; $1EAB: $78
    ld   [de], a                                  ; $1EAC: $12
    pop  de                                       ; $1EAD: $D1
    inc  b                                        ; $1EAE: $04
    inc  e                                        ; $1EAF: $1C
    jr   jr_000_1E7A                              ; $1EB0: $18 $C8

Call_000_1EB2:
    ld   a, [$DF13]                               ; $1EB2: $FA $13 $DF
    cp   $03                                      ; $1EB5: $FE $03
    jr   nz, jr_000_1EE0                          ; $1EB7: $20 $27

    ld   a, [$C7BA]                               ; $1EB9: $FA $BA $C7
    inc  a                                        ; $1EBC: $3C
    ret  z                                        ; $1EBD: $C8

    ld   b, $07                                   ; $1EBE: $06 $07
    ld   hl, $C790                                ; $1EC0: $21 $90 $C7
    ld   de, $1ED9                                ; $1EC3: $11 $D9 $1E

jr_000_1EC6:
    ld   a, [de]                                  ; $1EC6: $1A
    ld   [hl+], a                                 ; $1EC7: $22
    inc  de                                       ; $1EC8: $13
    dec  b                                        ; $1EC9: $05
    jr   nz, jr_000_1EC6                          ; $1ECA: $20 $FA

    ld   a, $FF                                   ; $1ECC: $3E $FF
    ld   [$C7BA], a                               ; $1ECE: $EA $BA $C7
    ld   [$C79E], a                               ; $1ED1: $EA $9E $C7
    inc  a                                        ; $1ED4: $3C
    ld   [$C7CB], a                               ; $1ED5: $EA $CB $C7
    ret                                           ; $1ED8: $C9


    nop                                           ; $1ED9: $00
    jp   z, Jump_000_00CB                         ; $1EDA: $CA $CB $00

    nop                                           ; $1EDD: $00
    nop                                           ; $1EDE: $00
    nop                                           ; $1EDF: $00

jr_000_1EE0:
    ld   a, [$DF12]                               ; $1EE0: $FA $12 $DF
    ld   b, a                                     ; $1EE3: $47
    srl  a                                        ; $1EE4: $CB $3F
    srl  a                                        ; $1EE6: $CB $3F
    ld   c, a                                     ; $1EE8: $4F
    ld   a, [$C7BA]                               ; $1EE9: $FA $BA $C7
    ld   d, a                                     ; $1EEC: $57
    ld   a, b                                     ; $1EED: $78
    swap a                                        ; $1EEE: $CB $37
    rrca                                          ; $1EF0: $0F
    and  $07                                      ; $1EF1: $E6 $07
    cp   d                                        ; $1EF3: $BA
    jr   z, jr_000_1F1B                           ; $1EF4: $28 $25

    ld   [$C7BA], a                               ; $1EF6: $EA $BA $C7
    ld   b, a                                     ; $1EF9: $47
    ld   d, a                                     ; $1EFA: $57
    ld   hl, $C790                                ; $1EFB: $21 $90 $C7
    and  a                                        ; $1EFE: $A7
    jr   nz, jr_000_1F05                          ; $1EFF: $20 $04

    ld   b, $01                                   ; $1F01: $06 $01
    jr   jr_000_1F12                              ; $1F03: $18 $0D

jr_000_1F05:
    ld   a, $C9                                   ; $1F05: $3E $C9

jr_000_1F07:
    ld   [hl+], a                                 ; $1F07: $22
    dec  b                                        ; $1F08: $05
    jr   nz, jr_000_1F07                          ; $1F09: $20 $FC

    ld   a, $07                                   ; $1F0B: $3E $07
    sub  d                                        ; $1F0D: $92
    jr   z, jr_000_1F16                           ; $1F0E: $28 $06

    ld   b, a                                     ; $1F10: $47
    xor  a                                        ; $1F11: $AF

jr_000_1F12:
    ld   [hl+], a                                 ; $1F12: $22
    dec  b                                        ; $1F13: $05
    jr   nz, jr_000_1F12                          ; $1F14: $20 $FC

jr_000_1F16:
    ld   a, $01                                   ; $1F16: $3E $01
    ld   [$C79E], a                               ; $1F18: $EA $9E $C7

jr_000_1F1B:
    ld   a, [$C360]                               ; $1F1B: $FA $60 $C3
    add  $18                                      ; $1F1E: $C6 $18
    ld   [$C000], a                               ; $1F20: $EA $00 $C0
    ld   [$C004], a                               ; $1F23: $EA $04 $C0
    ld   a, $58                                   ; $1F26: $3E $58
    ld   [$C001], a                               ; $1F28: $EA $01 $C0
    ld   a, $C8                                   ; $1F2B: $3E $C8
    ld   [$C002], a                               ; $1F2D: $EA $02 $C0
    ld   a, $C9                                   ; $1F30: $3E $C9
    ld   [$C006], a                               ; $1F32: $EA $06 $C0
    ld   a, $00                                   ; $1F35: $3E $00
    ld   [$C007], a                               ; $1F37: $EA $07 $C0
    xor  a                                        ; $1F3A: $AF
    ld   [$C003], a                               ; $1F3B: $EA $03 $C0
    ld   a, c                                     ; $1F3E: $79
    add  $58                                      ; $1F3F: $C6 $58
    ld   [$C005], a                               ; $1F41: $EA $05 $C0
    ld   a, $08                                   ; $1F44: $3E $08
    ld   [$C7CB], a                               ; $1F46: $EA $CB $C7
    ret                                           ; $1F49: $C9


Call_000_1F4A:
    push bc                                       ; $1F4A: $C5
    ld   b, $10                                   ; $1F4B: $06 $10

jr_000_1F4D:
    ld   a, [hl+]                                 ; $1F4D: $2A
    ld   [de], a                                  ; $1F4E: $12
    inc  de                                       ; $1F4F: $13
    dec  b                                        ; $1F50: $05
    jr   nz, jr_000_1F4D                          ; $1F51: $20 $FA

    pop  bc                                       ; $1F53: $C1
    ret                                           ; $1F54: $C9


Call_000_1F55:
Jump_000_1F55:
jr_000_1F55:
    call WaitForRequestedVBlank                   ; $1F55: $CD $90 $00
    ld   a, [$C7AF]                               ; $1F58: $FA $AF $C7
    or   a                                        ; $1F5B: $B7

TileGraphicsChainEntry::
    jr   nz, jr_000_1F55                          ; $1F5C: $20 $F7

    ret                                           ; $1F5E: $C9


jr_000_1F5F:
    xor  a                                        ; $1F5F: $AF
    ld   [$C7AF], a                               ; $1F60: $EA $AF $C7
    ret                                           ; $1F63: $C9


SetQueuedDataSelectionId::
    ld   a, [$C7AF]                               ; $1F64: $FA $AF $C7
    cp   b                                        ; $1F67: $B8
    ret  z                                        ; $1F68: $C8

    ld   a, b                                     ; $1F69: $78
    ld   [$C7AF], a                               ; $1F6A: $EA $AF $C7
    xor  a                                        ; $1F6D: $AF
    ld   [$C7B0], a                               ; $1F6E: $EA $B0 $C7
    ret                                           ; $1F71: $C9


StageTileGraphicsRecord::
    ld   a, [$C79D]                               ; $1F72: $FA $9D $C7
    or   a                                        ; $1F75: $B7
    ret  nz                                       ; $1F76: $C0

    ld   a, [$C7AF]                               ; $1F77: $FA $AF $C7
    or   a                                        ; $1F7A: $B7
    ret  z                                        ; $1F7B: $C8

    ld   a, [$C7B0]                               ; $1F7C: $FA $B0 $C7
    call Call_000_0B7D                            ; $1F7F: $CD $7D $0B
    adc  b                                        ; $1F82: $88
    rra                                           ; $1F83: $1F
    and  b                                        ; $1F84: $A0
    rra                                           ; $1F85: $1F
    push de                                       ; $1F86: $D5
    rra                                           ; $1F87: $1F
    ld   a, $02                                   ; $1F88: $3E $02
    ld   [$3000], a                               ; $1F8A: $EA $00 $30
    ld   [$C7B0], a                               ; $1F8D: $EA $B0 $C7
    ld   a, [$C7AF]                               ; $1F90: $FA $AF $C7
    and  $7F                                      ; $1F93: $E6 $7F
    ld   hl, $7B60                                ; $1F95: $21 $60 $7B
    call Add2AToHL                                ; $1F98: $CD $81 $00
    ld   a, [hl+]                                 ; $1F9B: $2A
    ld   h, [hl]                                  ; $1F9C: $66
    ld   l, a                                     ; $1F9D: $6F
    jr   jr_000_1FB0                              ; $1F9E: $18 $10

    ld   a, $02                                   ; $1FA0: $3E $02
    ld   [$3000], a                               ; $1FA2: $EA $00 $30
    ld   [$C7B0], a                               ; $1FA5: $EA $B0 $C7
    ld   a, [$C7B8]                               ; $1FA8: $FA $B8 $C7
    ld   l, a                                     ; $1FAB: $6F
    ld   a, [$C7B9]                               ; $1FAC: $FA $B9 $C7
    ld   h, a                                     ; $1FAF: $67

jr_000_1FB0:
    ld   a, [hl+]                                 ; $1FB0: $2A
    or   a                                        ; $1FB1: $B7
    jr   z, jr_000_1F5F                           ; $1FB2: $28 $AB

    ld   [$C7B1], a                               ; $1FB4: $EA $B1 $C7
    ld   a, [hl+]                                 ; $1FB7: $2A
    ld   [$C7B2], a                               ; $1FB8: $EA $B2 $C7
    ld   a, [hl+]                                 ; $1FBB: $2A
    ld   [$C7B4], a                               ; $1FBC: $EA $B4 $C7
    ld   a, [hl+]                                 ; $1FBF: $2A
    ld   [$C7B5], a                               ; $1FC0: $EA $B5 $C7
    ld   a, [hl+]                                 ; $1FC3: $2A
    ld   [$C7B6], a                               ; $1FC4: $EA $B6 $C7
    ld   a, [hl+]                                 ; $1FC7: $2A
    ld   [$C7B7], a                               ; $1FC8: $EA $B7 $C7
    ld   a, l                                     ; $1FCB: $7D
    ld   [$C7B8], a                               ; $1FCC: $EA $B8 $C7
    ld   a, h                                     ; $1FCF: $7C
    ld   [$C7B9], a                               ; $1FD0: $EA $B9 $C7
    jr   jr_000_1FE8                              ; $1FD3: $18 $13

    ld   a, [$C7B3]                               ; $1FD5: $FA $B3 $C7
    ld   b, a                                     ; $1FD8: $47
    ld   a, [$C7B6]                               ; $1FD9: $FA $B6 $C7
    add  b                                        ; $1FDC: $80
    ld   [$C7B6], a                               ; $1FDD: $EA $B6 $C7
    ld   a, [$C7B7]                               ; $1FE0: $FA $B7 $C7

jr_000_1FE3:
    adc  $00                                      ; $1FE3: $CE $00
    ld   [$C7B7], a                               ; $1FE5: $EA $B7 $C7

jr_000_1FE8:
    ld   a, [$C7B4]                               ; $1FE8: $FA $B4 $C7
    ld   l, a                                     ; $1FEB: $6F
    ld   a, [$C7B5]                               ; $1FEC: $FA $B5 $C7
    ld   h, a                                     ; $1FEF: $67
    ld   a, [$C7B1]                               ; $1FF0: $FA $B1 $C7
    ld   [$3000], a                               ; $1FF3: $EA $00 $30
    ld   de, $C770                                ; $1FF6: $11 $70 $C7
    call Call_000_1F4A                            ; $1FF9: $CD $4A $1F
    ld   b, $10                                   ; $1FFC: $06 $10
    ld   a, [$C7B2]                               ; $1FFE: $FA $B2 $C7
    dec  a                                        ; $2001: $3D
    ld   [$C7B2], a                               ; $2002: $EA $B2 $C7
    jr   z, jr_000_2027                           ; $2005: $28 $20

    call Call_000_1F4A                            ; $2007: $CD $4A $1F
    ld   b, $20                                   ; $200A: $06 $20
    ld   a, [$C7B2]                               ; $200C: $FA $B2 $C7
    dec  a                                        ; $200F: $3D
    ld   [$C7B2], a                               ; $2010: $EA $B2 $C7
    jr   z, jr_000_2027                           ; $2013: $28 $12

    ld   a, b                                     ; $2015: $78
    ld   [$C7B3], a                               ; $2016: $EA $B3 $C7
    ld   a, l                                     ; $2019: $7D
    ld   [$C7B4], a                               ; $201A: $EA $B4 $C7
    ld   a, h                                     ; $201D: $7C
    ld   [$C7B5], a                               ; $201E: $EA $B5 $C7
    ld   a, $01                                   ; $2021: $3E $01

jr_000_2023:
    ld   [$C79D], a                               ; $2023: $EA $9D $C7
    ret                                           ; $2026: $C9


jr_000_2027:
    ld   a, b                                     ; $2027: $78
    ld   [$C7B3], a                               ; $2028: $EA $B3 $C7
    ld   a, $01                                   ; $202B: $3E $01
    ld   [$C79D], a                               ; $202D: $EA $9D $C7
    ld   [$C7B0], a                               ; $2030: $EA $B0 $C7
    ret                                           ; $2033: $C9


Call_000_2034:
Jump_000_2034:
    xor  a                                        ; $2034: $AF
    ld   [$C7A3], a                               ; $2035: $EA $A3 $C7
    ret                                           ; $2038: $C9


Call_000_2039:
Jump_000_2039:
    ld   a, [$C7A3]                               ; $2039: $FA $A3 $C7
    cp   b                                        ; $203C: $B8
    ret  z                                        ; $203D: $C8

    ld   a, b                                     ; $203E: $78

Jump_000_203F:
    ld   [$C7A3], a                               ; $203F: $EA $A3 $C7
    xor  a                                        ; $2042: $AF
    ld   [$C7A4], a                               ; $2043: $EA $A4 $C7
    ld   [$C7A5], a                               ; $2046: $EA $A5 $C7
    ret                                           ; $2049: $C9


Call_000_204A:
    ld   a, [$C79C]                               ; $204A: $FA $9C $C7
    or   a                                        ; $204D: $B7
    ret  nz                                       ; $204E: $C0

    ld   a, [$C7A3]                               ; $204F: $FA $A3 $C7
    or   a                                        ; $2052: $B7
    ret  z                                        ; $2053: $C8

    ld   a, [$C7A4]                               ; $2054: $FA $A4 $C7
    call Call_000_0B7D                            ; $2057: $CD $7D $0B
    ld   h, d                                     ; $205A: $62
    jr   nz, jr_000_1FE3                          ; $205B: $20 $86

    jr   nz, jr_000_2023                          ; $205D: $20 $C4

    jr   nz, @+$03                                ; $205F: $20 $01

    ld   hl, $023E                                ; $2061: $21 $3E $02
    ld   [$3000], a                               ; $2064: $EA $00 $30
    ld   a, [$C7A3]                               ; $2067: $FA $A3 $C7
    ld   hl, $7BD0                                ; $206A: $21 $D0 $7B
    call Add2AToHL                                ; $206D: $CD $81 $00
    ld   a, [hl+]                                 ; $2070: $2A
    ld   h, [hl]                                  ; $2071: $66
    ld   l, a                                     ; $2072: $6F
    ld   a, [hl+]                                 ; $2073: $2A
    ld   [$C7AA], a                               ; $2074: $EA $AA $C7
    ld   a, l                                     ; $2077: $7D
    ld   [$C7A7], a                               ; $2078: $EA $A7 $C7
    ld   a, h                                     ; $207B: $7C
    ld   [$C7A8], a                               ; $207C: $EA $A8 $C7
    ld   a, $02                                   ; $207F: $3E $02
    ld   [$C7A4], a                               ; $2081: $EA $A4 $C7
    jr   jr_000_209F                              ; $2084: $18 $19

    ld   a, $02                                   ; $2086: $3E $02
    ld   [$3000], a                               ; $2088: $EA $00 $30
    ld   a, [$C7A7]                               ; $208B: $FA $A7 $C7
    ld   c, a                                     ; $208E: $4F
    ld   a, [$C7A5]                               ; $208F: $FA $A5 $C7
    add  c                                        ; $2092: $81
    ld   l, a                                     ; $2093: $6F
    ld   a, [$C7A8]                               ; $2094: $FA $A8 $C7
    adc  $00                                      ; $2097: $CE $00
    ld   h, a                                     ; $2099: $67
    ld   a, $02                                   ; $209A: $3E $02
    ld   [$C7A4], a                               ; $209C: $EA $A4 $C7

jr_000_209F:
    ld   b, $00                                   ; $209F: $06 $00
    ld   c, [hl]                                  ; $20A1: $4E
    ld   hl, $7BE0                                ; $20A2: $21 $E0 $7B
    sla  c                                        ; $20A5: $CB $21
    rl   b                                        ; $20A7: $CB $10
    add  hl, bc                                   ; $20A9: $09
    sla  c                                        ; $20AA: $CB $21
    rl   b                                        ; $20AC: $CB $10
    add  hl, bc                                   ; $20AE: $09
    ld   a, [hl+]                                 ; $20AF: $2A
    ld   [$C7A6], a                               ; $20B0: $EA $A6 $C7
    ld   a, [hl+]                                 ; $20B3: $2A
    ld   [$C7A9], a                               ; $20B4: $EA $A9 $C7
    ld   a, [hl+]                                 ; $20B7: $2A
    ld   [$C7AB], a                               ; $20B8: $EA $AB $C7
    ld   a, [hl+]                                 ; $20BB: $2A
    ld   [$C7AC], a                               ; $20BC: $EA $AC $C7
    ld   a, [hl+]                                 ; $20BF: $2A
    ld   h, [hl]                                  ; $20C0: $66
    ld   l, a                                     ; $20C1: $6F
    jr   jr_000_20DD                              ; $20C2: $18 $19

    ld   a, [$C7AB]                               ; $20C4: $FA $AB $C7
    add  $10                                      ; $20C7: $C6 $10
    ld   [$C7AB], a                               ; $20C9: $EA $AB $C7
    jr   nc, jr_000_20D5                          ; $20CC: $30 $07

    ld   a, [$C7AC]                               ; $20CE: $FA $AC $C7
    inc  a                                        ; $20D1: $3C
    ld   [$C7AC], a                               ; $20D2: $EA $AC $C7

jr_000_20D5:
    ld   a, [$C7AD]                               ; $20D5: $FA $AD $C7

Jump_000_20D8:
    ld   l, a                                     ; $20D8: $6F
    ld   a, [$C7AE]                               ; $20D9: $FA $AE $C7

Jump_000_20DC:
    ld   h, a                                     ; $20DC: $67

jr_000_20DD:
    ld   de, $C760                                ; $20DD: $11 $60 $C7
    ld   a, $07                                   ; $20E0: $3E $07
    ld   [$3000], a                               ; $20E2: $EA $00 $30
    call Call_000_1F4A                            ; $20E5: $CD $4A $1F
    ld   a, l                                     ; $20E8: $7D
    ld   [$C7AD], a                               ; $20E9: $EA $AD $C7
    ld   a, h                                     ; $20EC: $7C
    ld   [$C7AE], a                               ; $20ED: $EA $AE $C7
    ld   [$C79C], a                               ; $20F0: $EA $9C $C7
    ld   a, [$C7A9]                               ; $20F3: $FA $A9 $C7
    dec  a                                        ; $20F6: $3D
    ld   [$C7A9], a                               ; $20F7: $EA $A9 $C7
    jr   nz, jr_000_2101                          ; $20FA: $20 $05

    ld   a, $03                                   ; $20FC: $3E $03
    ld   [$C7A4], a                               ; $20FE: $EA $A4 $C7

jr_000_2101:
    ld   a, [$C7A6]                               ; $2101: $FA $A6 $C7
    dec  a                                        ; $2104: $3D
    ld   [$C7A6], a                               ; $2105: $EA $A6 $C7
    ret  nz                                       ; $2108: $C0

    ld   a, [$C7A5]                               ; $2109: $FA $A5 $C7
    inc  a                                        ; $210C: $3C
    ld   [$C7A5], a                               ; $210D: $EA $A5 $C7
    ld   b, a                                     ; $2110: $47
    ld   a, [$C7AA]                               ; $2111: $FA $AA $C7
    cp   b                                        ; $2114: $B8
    jr   z, jr_000_211D                           ; $2115: $28 $06

    ld   a, $01                                   ; $2117: $3E $01
    ld   [$C7A4], a                               ; $2119: $EA $A4 $C7
    ret                                           ; $211C: $C9


jr_000_211D:
    xor  a                                        ; $211D: $AF
    ld   [$C7A5], a                               ; $211E: $EA $A5 $C7

Jump_000_2121:
    ld   [$C7A4], a                               ; $2121: $EA $A4 $C7
    ret                                           ; $2124: $C9


Call_000_2125:
    ld   a, [$C669]                               ; $2125: $FA $69 $C6
    ld   c, a                                     ; $2128: $4F
    ld   a, $6C                                   ; $2129: $3E $6C
    ld   [$C669], a                               ; $212B: $EA $69 $C6
    ld   a, [$C7AF]                               ; $212E: $FA $AF $C7
    ld   b, a                                     ; $2131: $47
    push bc                                       ; $2132: $C5
    ld   a, [$C200]                               ; $2133: $FA $00 $C2
    push af                                       ; $2136: $F5
    xor  a                                        ; $2137: $AF
    ld   [$C200], a                               ; $2138: $EA $00 $C2
    inc  a                                        ; $213B: $3C
    ld   [$C693], a                               ; $213C: $EA $93 $C6
    ld   a, [$DF38]                               ; $213F: $FA $38 $DF
    ld   [$C7BF], a                               ; $2142: $EA $BF $C7
    call Call_000_00B0                            ; $2145: $CD $B0 $00
    call Call_000_2186                            ; $2148: $CD $86 $21
    call Call_000_21E4                            ; $214B: $CD $E4 $21
    ld   a, [$DF38]                               ; $214E: $FA $38 $DF
    ld   b, a                                     ; $2151: $47
    ld   a, [$C7BF]                               ; $2152: $FA $BF $C7
    cp   $04                                      ; $2155: $FE $04
    jr   z, jr_000_2162                           ; $2157: $28 $09

    cp   b                                        ; $2159: $B8
    jr   z, jr_000_2162                           ; $215A: $28 $06

    ld   [$DF38], a                               ; $215C: $EA $38 $DF
    call Call_000_2436                            ; $215F: $CD $36 $24

jr_000_2162:
    call Call_000_219F                            ; $2162: $CD $9F $21
    call Call_000_2178                            ; $2165: $CD $78 $21
    xor  a                                        ; $2168: $AF
    ld   [$C693], a                               ; $2169: $EA $93 $C6
    pop  af                                       ; $216C: $F1
    ld   [$C200], a                               ; $216D: $EA $00 $C2
    pop  bc                                       ; $2170: $C1
    ld   a, c                                     ; $2171: $79
    ld   [$C669], a                               ; $2172: $EA $69 $C6
    jp   SetQueuedDataSelectionId                 ; $2175: $C3 $64 $1F


Call_000_2178:
    ld   a, [$DF38]                               ; $2178: $FA $38 $DF
    or   $90                                      ; $217B: $F6 $90
    ld   b, a                                     ; $217D: $47
    call SetQueuedDataSelectionId                 ; $217E: $CD $64 $1F
    ld   a, $06                                   ; $2181: $3E $06
    jp   Jump_000_00D0                            ; $2183: $C3 $D0 $00


Call_000_2186:
    ld   b, $81                                   ; $2186: $06 $81
    call SetQueuedDataSelectionId                 ; $2188: $CD $64 $1F
    call Call_000_23EE                            ; $218B: $CD $EE $23

jr_000_218E:
    call Call_000_21CD                            ; $218E: $CD $CD $21
    ld   a, [$C360]                               ; $2191: $FA $60 $C3
    dec  a                                        ; $2194: $3D
    ld   [$C360], a                               ; $2195: $EA $60 $C3
    cp   $51                                      ; $2198: $FE $51
    jr   nc, jr_000_218E                          ; $219A: $30 $F2

    jp   Jump_000_21CD                            ; $219C: $C3 $CD $21


Call_000_219F:
jr_000_219F:
    call Call_000_21CD                            ; $219F: $CD $CD $21
    ld   a, [$C360]                               ; $21A2: $FA $60 $C3
    inc  a                                        ; $21A5: $3C
    ld   [$C360], a                               ; $21A6: $EA $60 $C3
    cp   $78                                      ; $21A9: $FE $78
    jr   c, jr_000_219F                           ; $21AB: $38 $F2

    ld   b, $82                                   ; $21AD: $06 $82
    call SetQueuedDataSelectionId                 ; $21AF: $CD $64 $1F

jr_000_21B2:
    call Call_000_21CD                            ; $21B2: $CD $CD $21
    ld   a, [$C360]                               ; $21B5: $FA $60 $C3
    inc  a                                        ; $21B8: $3C
    ld   [$C360], a                               ; $21B9: $EA $60 $C3
    cp   $80                                      ; $21BC: $FE $80
    jr   c, jr_000_21B2                           ; $21BE: $38 $F2

    ld   a, $18                                   ; $21C0: $3E $18
    jp   Jump_000_21C5                            ; $21C2: $C3 $C5 $21


Jump_000_21C5:
jr_000_21C5:
    push af                                       ; $21C5: $F5
    call Call_000_21CD                            ; $21C6: $CD $CD $21
    pop  af                                       ; $21C9: $F1
    dec  a                                        ; $21CA: $3D
    jr   nz, jr_000_21C5                          ; $21CB: $20 $F8

Call_000_21CD:
Jump_000_21CD:
    call Call_000_1EB2                            ; $21CD: $CD $B2 $1E
    call Call_000_22A0                            ; $21D0: $CD $A0 $22
    ld   a, $02                                   ; $21D3: $3E $02
    ld   [$C3C5], a                               ; $21D5: $EA $C5 $C3
    ld   [$3000], a                               ; $21D8: $EA $00 $30
    call $6967                                    ; $21DB: $CD $67 $69

Jump_000_21DE:
    call $69C4                                    ; $21DE: $CD $C4 $69
    jp   WaitForRequestedVBlank                   ; $21E1: $C3 $90 $00


Call_000_21E4:
Jump_000_21E4:
    call Call_000_21CD                            ; $21E4: $CD $CD $21
    ld   a, [$C262]                               ; $21E7: $FA $62 $C2
    bit  5, a                                     ; $21EA: $CB $6F
    jr   nz, jr_000_2255                          ; $21EC: $20 $67

    bit  4, a                                     ; $21EE: $CB $67
    jr   nz, jr_000_222E                          ; $21F0: $20 $3C

    bit  3, a                                     ; $21F2: $CB $5F
    ret  nz                                       ; $21F4: $C0

    rrca                                          ; $21F5: $0F
    jp   nc, Jump_000_227B                        ; $21F6: $D2 $7B $22

    ld   a, [$C7BF]                               ; $21F9: $FA $BF $C7
    cp   $04                                      ; $21FC: $FE $04
    jr   c, jr_000_227B                           ; $21FE: $38 $7B

    call Call_000_227E                            ; $2200: $CD $7E $22
    ld   a, [$DF19]                               ; $2203: $FA $19 $DF
    res  7, a                                     ; $2206: $CB $BF

Jump_000_2208:
    ld   [$DF19], a                               ; $2208: $EA $19 $DF
    xor  a                                        ; $220B: $AF
    ld   [$C7A1], a                               ; $220C: $EA $A1 $C7
    ld   [$C7A2], a                               ; $220F: $EA $A2 $C7
    ld   a, $6E                                   ; $2212: $3E $6E
    ld   [$C7BD], a                               ; $2214: $EA $BD $C7
    ld   a, $9C                                   ; $2217: $3E $9C
    ld   [$C7BE], a                               ; $2219: $EA $BE $C7
    call Call_000_21CD                            ; $221C: $CD $CD $21
    ld   a, $8E                                   ; $221F: $3E $8E
    ld   [$C7BD], a                               ; $2221: $EA $BD $C7
    ld   a, $9C                                   ; $2224: $3E $9C
    ld   [$C7BE], a                               ; $2226: $EA $BE $C7
    ld   a, [$DF38]                               ; $2229: $FA $38 $DF
    jr   jr_000_2278                              ; $222C: $18 $4A

jr_000_222E:
    ld   a, $27                                   ; $222E: $3E $27
    rst  RST_28                                   ; $2230: $EF
    ld   a, [$C7BF]                               ; $2231: $FA $BF $C7
    inc  a                                        ; $2234: $3C
    cp   $04                                      ; $2235: $FE $04
    jr   c, jr_000_2247                           ; $2237: $38 $0E

    jr   nz, jr_000_2244                          ; $2239: $20 $09

jr_000_223B:
    ld   [$C7BF], a                               ; $223B: $EA $BF $C7
    ld   a, [$DF19]                               ; $223E: $FA $19 $DF
    rlca                                          ; $2241: $07
    jr   c, jr_000_227B                           ; $2242: $38 $37

jr_000_2244:
    xor  a                                        ; $2244: $AF
    jr   jr_000_2278                              ; $2245: $18 $31

jr_000_2247:
    ld   b, a                                     ; $2247: $47
    ld   a, [$DF16]                               ; $2248: $FA $16 $DF
    cp   b                                        ; $224B: $B8
    jr   c, jr_000_2251                           ; $224C: $38 $03

    ld   a, b                                     ; $224E: $78
    jr   jr_000_2278                              ; $224F: $18 $27

jr_000_2251:
    ld   a, $04                                   ; $2251: $3E $04
    jr   jr_000_223B                              ; $2253: $18 $E6

jr_000_2255:
    ld   a, $27                                   ; $2255: $3E $27
    rst  RST_28                                   ; $2257: $EF
    ld   a, [$C7BF]                               ; $2258: $FA $BF $C7
    dec  a                                        ; $225B: $3D
    bit  7, a                                     ; $225C: $CB $7F
    jr   z, jr_000_2270                           ; $225E: $28 $10

    ld   a, $04                                   ; $2260: $3E $04
    ld   [$C7BF], a                               ; $2262: $EA $BF $C7
    ld   a, [$DF19]                               ; $2265: $FA $19 $DF
    rlca                                          ; $2268: $07
    jr   c, jr_000_227B                           ; $2269: $38 $10

    ld   a, [$DF16]                               ; $226B: $FA $16 $DF
    jr   jr_000_2278                              ; $226E: $18 $08

jr_000_2270:
    ld   b, a                                     ; $2270: $47
    ld   a, [$DF16]                               ; $2271: $FA $16 $DF
    cp   b                                        ; $2274: $B8
    jr   c, jr_000_2278                           ; $2275: $38 $01

    ld   a, b                                     ; $2277: $78

jr_000_2278:
    ld   [$C7BF], a                               ; $2278: $EA $BF $C7

Jump_000_227B:
jr_000_227B:
    jp   Jump_000_21E4                            ; $227B: $C3 $E4 $21


Call_000_227E:
jr_000_227E:
    call Call_000_21CD                            ; $227E: $CD $CD $21
    ld   a, [$DF15]                               ; $2281: $FA $15 $DF
    ld   b, a                                     ; $2284: $47
    ld   a, [$C20A]                               ; $2285: $FA $0A $C2
    cp   b                                        ; $2288: $B8
    ret  z                                        ; $2289: $C8

    inc  a                                        ; $228A: $3C
    ld   [$C20A], a                               ; $228B: $EA $0A $C2
    call Call_000_23B9                            ; $228E: $CD $B9 $23
    ld   a, $30                                   ; $2291: $3E $30
    rst  RST_28                                   ; $2293: $EF
    ld   a, $0F                                   ; $2294: $3E $0F

jr_000_2296:
    push af                                       ; $2296: $F5
    call Call_000_21CD                            ; $2297: $CD $CD $21
    pop  af                                       ; $229A: $F1
    dec  a                                        ; $229B: $3D
    jr   nz, jr_000_2296                          ; $229C: $20 $F8

    jr   jr_000_227E                              ; $229E: $18 $DE

Call_000_22A0:
    ld   a, [$C7BF]                               ; $22A0: $FA $BF $C7
    swap a                                        ; $22A3: $CB $37
    ld   b, a                                     ; $22A5: $47
    rrca                                          ; $22A6: $0F
    add  b                                        ; $22A7: $80
    add  $10                                      ; $22A8: $C6 $10
    ld   b, a                                     ; $22AA: $47
    ld   a, [$C7BF]                               ; $22AB: $FA $BF $C7
    cp   $04                                      ; $22AE: $FE $04
    jr   nz, jr_000_22B6                          ; $22B0: $20 $04

    ld   a, b                                     ; $22B2: $78
    add  $08                                      ; $22B3: $C6 $08
    ld   b, a                                     ; $22B5: $47

jr_000_22B6:
    ld   a, [$C360]                               ; $22B6: $FA $60 $C3
    add  $28                                      ; $22B9: $C6 $28
    ld   [$C008], a                               ; $22BB: $EA $08 $C0
    ld   [$C00C], a                               ; $22BE: $EA $0C $C0
    add  $08                                      ; $22C1: $C6 $08
    ld   [$C010], a                               ; $22C3: $EA $10 $C0
    ld   [$C014], a                               ; $22C6: $EA $14 $C0
    ld   a, b                                     ; $22C9: $78
    ld   [$C009], a                               ; $22CA: $EA $09 $C0
    ld   [$C011], a                               ; $22CD: $EA $11 $C0
    add  $08                                      ; $22D0: $C6 $08
    ld   [$C00D], a                               ; $22D2: $EA $0D $C0
    ld   [$C015], a                               ; $22D5: $EA $15 $C0
    ld   a, $94                                   ; $22D8: $3E $94
    ld   [$C00A], a                               ; $22DA: $EA $0A $C0
    ld   [$C00E], a                               ; $22DD: $EA $0E $C0
    ld   [$C012], a                               ; $22E0: $EA $12 $C0
    ld   [$C016], a                               ; $22E3: $EA $16 $C0
    xor  a                                        ; $22E6: $AF
    ld   [$C00B], a                               ; $22E7: $EA $0B $C0
    ld   a, $20                                   ; $22EA: $3E $20
    ld   [$C00F], a                               ; $22EC: $EA $0F $C0
    rlca                                          ; $22EF: $07
    ld   [$C013], a                               ; $22F0: $EA $13 $C0
    ld   a, $60                                   ; $22F3: $3E $60
    ld   [$C017], a                               ; $22F5: $EA $17 $C0
    ld   a, $18                                   ; $22F8: $3E $18
    ld   [$C7CB], a                               ; $22FA: $EA $CB $C7
    ret                                           ; $22FD: $C9


    ld   hl, $9C00                                ; $22FE: $21 $00 $9C
    ld   a, $C0                                   ; $2301: $3E $C0
    ld   [hl+], a                                 ; $2303: $22
    ld   b, $12                                   ; $2304: $06 $12
    inc  a                                        ; $2306: $3C

jr_000_2307:
    ld   [hl+], a                                 ; $2307: $22
    dec  b                                        ; $2308: $05
    jr   nz, jr_000_2307                          ; $2309: $20 $FC

    inc  a                                        ; $230B: $3C
    ld   [hl], a                                  ; $230C: $77
    ld   hl, $9C20                                ; $230D: $21 $20 $9C
    inc  a                                        ; $2310: $3C
    ld   bc, $0808                                ; $2311: $01 $08 $08
    ld   de, $0020                                ; $2314: $11 $20 $00

jr_000_2317:
    ld   [hl], a                                  ; $2317: $77
    add  hl, de                                   ; $2318: $19
    dec  b                                        ; $2319: $05
    jr   nz, jr_000_2317                          ; $231A: $20 $FB

    ld   hl, $9C33                                ; $231C: $21 $33 $9C

jr_000_231F:
    ld   [hl], a                                  ; $231F: $77
    add  hl, de                                   ; $2320: $19
    dec  c                                        ; $2321: $0D
    jr   nz, jr_000_231F                          ; $2322: $20 $FB

    ld   a, $C4                                   ; $2324: $3E $C4
    ld   [$9C21], a                               ; $2326: $EA $21 $9C
    inc  a                                        ; $2329: $3C
    ld   [$9C29], a                               ; $232A: $EA $29 $9C
    ld   a, $9F                                   ; $232D: $3E $9F
    ld   [$9CD0], a                               ; $232F: $EA $D0 $9C
    ld   a, $A4                                   ; $2332: $3E $A4
    ld   [$9CC1], a                               ; $2334: $EA $C1 $9C
    ld   hl, $9CC5                                ; $2337: $21 $C5 $9C
    inc  a                                        ; $233A: $3C
    ld   [hl+], a                                 ; $233B: $22
    inc  a                                        ; $233C: $3C
    ld   [hl+], a                                 ; $233D: $22
    inc  a                                        ; $233E: $3C
    ld   [hl+], a                                 ; $233F: $22
    ld   b, $C4                                   ; $2340: $06 $C4
    ld   [hl], b                                  ; $2342: $70
    inc  l                                        ; $2343: $2C
    inc  a                                        ; $2344: $3C
    ld   [hl+], a                                 ; $2345: $22
    inc  a                                        ; $2346: $3C
    ld   [hl], a                                  ; $2347: $77
    ld   [$9CC2], a                               ; $2348: $EA $C2 $9C
    ld   a, $80                                   ; $234B: $3E $80
    ld   hl, $9C61                                ; $234D: $21 $61 $9C
    ld   [hl+], a                                 ; $2350: $22
    inc  a                                        ; $2351: $3C
    ld   [hl], a                                  ; $2352: $77
    ld   a, $8A                                   ; $2353: $3E $8A
    ld   l, $81                                   ; $2355: $2E $81
    ld   [hl+], a                                 ; $2357: $22
    inc  a                                        ; $2358: $3C
    ld   [hl], a                                  ; $2359: $77
    ld   a, [$DF19]                               ; $235A: $FA $19 $DF
    rrca                                          ; $235D: $0F
    jr   nc, jr_000_236F                          ; $235E: $30 $0F

    ld   a, $88                                   ; $2360: $3E $88
    ld   hl, $9C6E                                ; $2362: $21 $6E $9C
    ld   [hl+], a                                 ; $2365: $22
    inc  a                                        ; $2366: $3C
    ld   [hl], a                                  ; $2367: $77
    ld   a, $92                                   ; $2368: $3E $92
    ld   l, $8E                                   ; $236A: $2E $8E
    ld   [hl+], a                                 ; $236C: $22
    inc  a                                        ; $236D: $3C
    ld   [hl], a                                  ; $236E: $77

jr_000_236F:
    ld   a, $A0                                   ; $236F: $3E $A0
    ld   hl, $9CAE                                ; $2371: $21 $AE $9C
    ld   [hl+], a                                 ; $2374: $22
    inc  a                                        ; $2375: $3C
    ld   [hl], a                                  ; $2376: $77
    inc  a                                        ; $2377: $3C
    ld   l, $CE                                   ; $2378: $2E $CE
    ld   [hl+], a                                 ; $237A: $22
    inc  a                                        ; $237B: $3C
    ld   [hl], a                                  ; $237C: $77
    ld   a, [$DF16]                               ; $237D: $FA $16 $DF
    call Call_000_0B7D                            ; $2380: $CD $7D $0B
    cp   b                                        ; $2383: $B8
    inc  hl                                       ; $2384: $23
    xor  c                                        ; $2385: $A9
    inc  hl                                       ; $2386: $23
    sbc  d                                        ; $2387: $9A
    inc  hl                                       ; $2388: $23
    adc  e                                        ; $2389: $8B
    inc  hl                                       ; $238A: $23
    ld   a, $86                                   ; $238B: $3E $86
    ld   hl, $9C6A                                ; $238D: $21 $6A $9C
    ld   [hl+], a                                 ; $2390: $22
    inc  a                                        ; $2391: $3C
    ld   [hl], a                                  ; $2392: $77
    ld   a, $90                                   ; $2393: $3E $90
    ld   l, $8A                                   ; $2395: $2E $8A
    ld   [hl+], a                                 ; $2397: $22
    inc  a                                        ; $2398: $3C
    ld   [hl], a                                  ; $2399: $77
    ld   a, $82                                   ; $239A: $3E $82
    ld   hl, $9C67                                ; $239C: $21 $67 $9C
    ld   [hl+], a                                 ; $239F: $22
    inc  a                                        ; $23A0: $3C
    ld   [hl], a                                  ; $23A1: $77
    ld   a, $8C                                   ; $23A2: $3E $8C
    ld   l, $87                                   ; $23A4: $2E $87
    ld   [hl+], a                                 ; $23A6: $22
    inc  a                                        ; $23A7: $3C
    ld   [hl], a                                  ; $23A8: $77
    ld   a, $84                                   ; $23A9: $3E $84
    ld   hl, $9C64                                ; $23AB: $21 $64 $9C
    ld   [hl+], a                                 ; $23AE: $22
    inc  a                                        ; $23AF: $3C
    ld   [hl], a                                  ; $23B0: $77
    ld   a, $8E                                   ; $23B1: $3E $8E
    ld   l, $84                                   ; $23B3: $2E $84
    ld   [hl+], a                                 ; $23B5: $22
    inc  a                                        ; $23B6: $3C
    ld   [hl], a                                  ; $23B7: $77
    ret                                           ; $23B8: $C9


Call_000_23B9:
    ld   hl, $C797                                ; $23B9: $21 $97 $C7
    ld   b, $05                                   ; $23BC: $06 $05
    xor  a                                        ; $23BE: $AF

jr_000_23BF:
    ld   [hl+], a                                 ; $23BF: $22
    dec  b                                        ; $23C0: $05
    jr   nz, jr_000_23BF                          ; $23C1: $20 $FC

    ld   hl, $C797                                ; $23C3: $21 $97 $C7
    ld   a, [$DF15]                               ; $23C6: $FA $15 $DF
    ld   c, a                                     ; $23C9: $4F
    ld   a, [$C20A]                               ; $23CA: $FA $0A $C2
    or   a                                        ; $23CD: $B7
    jr   z, jr_000_23DF                           ; $23CE: $28 $0F

    cp   c                                        ; $23D0: $B9
    jr   z, jr_000_23D5                           ; $23D1: $28 $02

    jr   nc, jr_000_23DF                          ; $23D3: $30 $0A

jr_000_23D5:
    ld   b, a                                     ; $23D5: $47
    ld   a, c                                     ; $23D6: $79
    sub  b                                        ; $23D7: $90
    ld   c, a                                     ; $23D8: $4F
    ld   a, $C7                                   ; $23D9: $3E $C7

jr_000_23DB:
    ld   [hl+], a                                 ; $23DB: $22
    dec  b                                        ; $23DC: $05
    jr   nz, jr_000_23DB                          ; $23DD: $20 $FC

jr_000_23DF:
    ld   a, c                                     ; $23DF: $79
    or   a                                        ; $23E0: $B7
    jr   z, jr_000_23E9                           ; $23E1: $28 $06

    ld   a, $C6                                   ; $23E3: $3E $C6

jr_000_23E5:
    ld   [hl+], a                                 ; $23E5: $22
    dec  c                                        ; $23E6: $0D
    jr   nz, jr_000_23E5                          ; $23E7: $20 $FC

jr_000_23E9:
    inc  a                                        ; $23E9: $3C
    ld   [$C79F], a                               ; $23EA: $EA $9F $C7
    ret                                           ; $23ED: $C9


Call_000_23EE:
    ld   a, [$DF17]                               ; $23EE: $FA $17 $DF
    add  $95                                      ; $23F1: $C6 $95
    ld   [$C7A1], a                               ; $23F3: $EA $A1 $C7
    xor  a                                        ; $23F6: $AF
    ld   [$C7A2], a                               ; $23F7: $EA $A2 $C7
    ld   a, $D1                                   ; $23FA: $3E $D1
    ld   [$C7BD], a                               ; $23FC: $EA $BD $C7
    ld   a, $9C                                   ; $23FF: $3E $9C
    ld   [$C7BE], a                               ; $2401: $EA $BE $C7
    call Call_000_21CD                            ; $2404: $CD $CD $21
    ld   a, [$DF0E]                               ; $2407: $FA $0E $DF
    add  $96                                      ; $240A: $C6 $96
    ld   [$C7A1], a                               ; $240C: $EA $A1 $C7
    ld   a, $C3                                   ; $240F: $3E $C3
    ld   [$C7BD], a                               ; $2411: $EA $BD $C7
    ld   a, $9C                                   ; $2414: $3E $9C
    ld   [$C7BE], a                               ; $2416: $EA $BE $C7
    call Call_000_21CD                            ; $2419: $CD $CD $21
    rst  RST_00                                   ; $241C: $C7
    ld   a, c                                     ; $241D: $79
    add  $95                                      ; $241E: $C6 $95
    ld   [$C7A1], a                               ; $2420: $EA $A1 $C7
    ld   a, b                                     ; $2423: $78
    add  $95                                      ; $2424: $C6 $95
    ld   [$C7A2], a                               ; $2426: $EA $A2 $C7
    ld   a, $CB                                   ; $2429: $3E $CB
    ld   [$C7BD], a                               ; $242B: $EA $BD $C7
    ld   a, $9C                                   ; $242E: $3E $9C
    ld   [$C7BE], a                               ; $2430: $EA $BE $C7
    jp   Jump_000_21CD                            ; $2433: $C3 $CD $21


Call_000_2436:
    ld   a, b                                     ; $2436: $78
    cp   $02                                      ; $2437: $FE $02
    jr   nz, jr_000_2448                          ; $2439: $20 $0D

    ld   d, $C3                                   ; $243B: $16 $C3
    call Call_000_2452                            ; $243D: $CD $52 $24
    inc  d                                        ; $2440: $14
    call Call_000_2452                            ; $2441: $CD $52 $24
    inc  d                                        ; $2444: $14
    call Call_000_2452                            ; $2445: $CD $52 $24

jr_000_2448:
    ld   hl, $C300                                ; $2448: $21 $00 $C3
    xor  a                                        ; $244B: $AF
    ld   [hl], a                                  ; $244C: $77
    inc  h                                        ; $244D: $24
    ld   [hl], a                                  ; $244E: $77
    inc  h                                        ; $244F: $24
    ld   [hl], a                                  ; $2450: $77
    ret                                           ; $2451: $C9


Call_000_2452:
    ld   e, $00                                   ; $2452: $1E $00
    ld   a, [de]                                  ; $2454: $1A
    rrca                                          ; $2455: $0F
    jr   nc, jr_000_246A                          ; $2456: $30 $12

    ld   e, $0C                                   ; $2458: $1E $0C
    ld   a, [de]                                  ; $245A: $1A
    cp   $03                                      ; $245B: $FE $03
    jr   nz, jr_000_246A                          ; $245D: $20 $0B

    ld   a, $01                                   ; $245F: $3E $01
    ld   [$C3C5], a                               ; $2461: $EA $C5 $C3
    ld   [$3000], a                               ; $2464: $EA $00 $30
    call $4A28                                    ; $2467: $CD $28 $4A

jr_000_246A:
    ret                                           ; $246A: $C9


Call_000_246B:
    ld   b, $83                                   ; $246B: $06 $83
    call SetQueuedDataSelectionId                 ; $246D: $CD $64 $1F
    call Call_000_1F55                            ; $2470: $CD $55 $1F
    ld   b, $1E                                   ; $2473: $06 $1E
    call Call_000_24B2                            ; $2475: $CD $B2 $24
    ld   a, $78                                   ; $2478: $3E $78
    ld   [$C7BF], a                               ; $247A: $EA $BF $C7

jr_000_247D:
    call Call_000_21CD                            ; $247D: $CD $CD $21
    ld   a, [$C7BF]                               ; $2480: $FA $BF $C7
    dec  a                                        ; $2483: $3D
    ld   [$C7BF], a                               ; $2484: $EA $BF $C7
    jr   nz, jr_000_247D                          ; $2487: $20 $F4

    call Call_000_24F9                            ; $2489: $CD $F9 $24
    ld   b, $84                                   ; $248C: $06 $84
    call SetQueuedDataSelectionId                 ; $248E: $CD $64 $1F
    jp   Jump_000_1F55                            ; $2491: $C3 $55 $1F


Call_000_2494:
    ld   b, $83                                   ; $2494: $06 $83
    call SetQueuedDataSelectionId                 ; $2496: $CD $64 $1F
    call Call_000_1F55                            ; $2499: $CD $55 $1F
    ld   b, $1F                                   ; $249C: $06 $1F
    call Call_000_24B2                            ; $249E: $CD $B2 $24
    ld   a, $10                                   ; $24A1: $3E $10

jr_000_24A3:
    push af                                       ; $24A3: $F5
    call Call_000_1EB2                            ; $24A4: $CD $B2 $1E
    call $6967                                    ; $24A7: $CD $67 $69
    call $69C4                                    ; $24AA: $CD $C4 $69
    pop  af                                       ; $24AD: $F1
    dec  a                                        ; $24AE: $3D
    jr   nz, jr_000_24A3                          ; $24AF: $20 $F2

    ret                                           ; $24B1: $C9


Call_000_24B2:
    ld   a, $01                                   ; $24B2: $3E $01
    ld   [$C693], a                               ; $24B4: $EA $93 $C6
    ld   [$DF01], a                               ; $24B7: $EA $01 $DF
    ld   hl, $C200                                ; $24BA: $21 $00 $C2
    ld   de, $C8A3                                ; $24BD: $11 $A3 $C8
    ld   a, [hl]                                  ; $24C0: $7E
    ld   [de], a                                  ; $24C1: $12
    ld   a, $01                                   ; $24C2: $3E $01
    ld   [hl+], a                                 ; $24C4: $22
    inc  e                                        ; $24C5: $1C
    ld   l, $03                                   ; $24C6: $2E $03
    ld   a, [hl]                                  ; $24C8: $7E
    ld   [de], a                                  ; $24C9: $12
    inc  e                                        ; $24CA: $1C
    ld   a, [$C362]                               ; $24CB: $FA $62 $C3
    add  $50                                      ; $24CE: $C6 $50
    ld   [hl+], a                                 ; $24D0: $22
    ld   a, [hl]                                  ; $24D1: $7E
    ld   [de], a                                  ; $24D2: $12
    inc  e                                        ; $24D3: $1C
    ld   a, [$C363]                               ; $24D4: $FA $63 $C3
    adc  $00                                      ; $24D7: $CE $00
    ld   [hl+], a                                 ; $24D9: $22
    inc  l                                        ; $24DA: $2C
    ld   a, [hl]                                  ; $24DB: $7E
    ld   [de], a                                  ; $24DC: $12
    inc  e                                        ; $24DD: $1C
    ld   a, [$C364]                               ; $24DE: $FA $64 $C3
    add  $58                                      ; $24E1: $C6 $58
    ld   [hl+], a                                 ; $24E3: $22
    ld   a, [hl]                                  ; $24E4: $7E
    ld   [de], a                                  ; $24E5: $12
    inc  e                                        ; $24E6: $1C
    ld   a, [$C365]                               ; $24E7: $FA $65 $C3
    adc  $00                                      ; $24EA: $CE $00
    ld   [hl+], a                                 ; $24EC: $22
    ld   l, $0E                                   ; $24ED: $2E $0E
    ld   a, [hl]                                  ; $24EF: $7E
    ld   [de], a                                  ; $24F0: $12
    inc  e                                        ; $24F1: $1C
    ld   [hl], a                                  ; $24F2: $77
    ld   a, b                                     ; $24F3: $78
    ld   [hl+], a                                 ; $24F4: $22
    xor  a                                        ; $24F5: $AF
    ld   [hl+], a                                 ; $24F6: $22
    ld   [hl], a                                  ; $24F7: $77
    ret                                           ; $24F8: $C9


Call_000_24F9:
    ld   a, $02                                   ; $24F9: $3E $02
    ld   [$DF01], a                               ; $24FB: $EA $01 $DF
    xor  a                                        ; $24FE: $AF
    ld   [$C200], a                               ; $24FF: $EA $00 $C2
    call Call_000_21CD                            ; $2502: $CD $CD $21
    ld   hl, $C200                                ; $2505: $21 $00 $C2
    ld   de, $C8A3                                ; $2508: $11 $A3 $C8
    ld   a, [de]                                  ; $250B: $1A
    and  $EF                                      ; $250C: $E6 $EF
    ld   [hl], a                                  ; $250E: $77
    inc  e                                        ; $250F: $1C
    ld   l, $03                                   ; $2510: $2E $03
    ld   a, [de]                                  ; $2512: $1A
    ld   [hl+], a                                 ; $2513: $22
    inc  e                                        ; $2514: $1C
    ld   a, [de]                                  ; $2515: $1A
    ld   [hl+], a                                 ; $2516: $22
    inc  e                                        ; $2517: $1C
    inc  l                                        ; $2518: $2C
    ld   a, [de]                                  ; $2519: $1A
    ld   [hl+], a                                 ; $251A: $22
    inc  e                                        ; $251B: $1C
    ld   a, [de]                                  ; $251C: $1A
    ld   [hl+], a                                 ; $251D: $22
    inc  e                                        ; $251E: $1C
    ld   l, $0E                                   ; $251F: $2E $0E
    ld   a, [de]                                  ; $2521: $1A
    ld   [hl+], a                                 ; $2522: $22
    ret                                           ; $2523: $C9


Call_000_2524:
Jump_000_2524:
    ld   b, $0A                                   ; $2524: $06 $0A
    call SetQueuedDataSelectionId                 ; $2526: $CD $64 $1F

Jump_000_2529:
    ld   hl, $C664                                ; $2529: $21 $64 $C6
    dec  [hl]                                     ; $252C: $35
    jr   z, jr_000_2558                           ; $252D: $28 $29

    ld   a, $01                                   ; $252F: $3E $01
    ld   [$C3C5], a                               ; $2531: $EA $C5 $C3
    ld   [$3000], a                               ; $2534: $EA $00 $30
    call $4F23                                    ; $2537: $CD $23 $4F
    call $48B5                                    ; $253A: $CD $B5 $48
    call Call_000_1EB2                            ; $253D: $CD $B2 $1E
    ld   a, $02                                   ; $2540: $3E $02
    ld   [$C3C5], a                               ; $2542: $EA $C5 $C3
    ld   [$3000], a                               ; $2545: $EA $00 $30
    call $6967                                    ; $2548: $CD $67 $69
    call $69C4                                    ; $254B: $CD $C4 $69
    xor  a                                        ; $254E: $AF
    ld   [$C7CB], a                               ; $254F: $EA $CB $C7
    call WaitForRequestedVBlank                   ; $2552: $CD $90 $00
    jp   Jump_000_2529                            ; $2555: $C3 $29 $25


Call_000_2558:
Jump_000_2558:
jr_000_2558:
    ld   a, [$DF17]                               ; $2558: $FA $17 $DF
    sub  $01                                      ; $255B: $D6 $01
    ld   [$DF17], a                               ; $255D: $EA $17 $DF
    jr   c, jr_000_256B                           ; $2560: $38 $09

    ld   a, [$DF02]                               ; $2562: $FA $02 $DF
    cp   $19                                      ; $2565: $FE $19
    ret  nc                                       ; $2567: $D0

    jp   $0570                                    ; $2568: $C3 $70 $05


jr_000_256B:
    ld   a, $0F                                   ; $256B: $3E $0F
    rst  RST_28                                   ; $256D: $EF
    call Call_000_2494                            ; $256E: $CD $94 $24
    xor  a                                        ; $2571: $AF
    ld   hl, $C665                                ; $2572: $21 $65 $C6
    ld   [hl+], a                                 ; $2575: $22
    ld   [hl-], a                                 ; $2576: $32

jr_000_2577:
    call WaitForRequestedVBlank                   ; $2577: $CD $90 $00
    inc  [hl]                                     ; $257A: $34
    jr   nz, jr_000_2584                          ; $257B: $20 $07

    inc  l                                        ; $257D: $2C
    inc  [hl]                                     ; $257E: $34
    ld   a, [hl-]                                 ; $257F: $3A
    cp   $03                                      ; $2580: $FE $03
    jr   z, jr_000_258A                           ; $2582: $28 $06

jr_000_2584:
    ld   a, [$C262]                               ; $2584: $FA $62 $C2
    rrca                                          ; $2587: $0F
    jr   nc, jr_000_2577                          ; $2588: $30 $ED

jr_000_258A:
    ld   a, $5E                                   ; $258A: $3E $5E
    ld   [$DF32], a                               ; $258C: $EA $32 $DF
    xor  a                                        ; $258F: $AF
    ld   [$DF2E], a                               ; $2590: $EA $2E $DF
    ld   [$DF30], a                               ; $2593: $EA $30 $DF
    inc  a                                        ; $2596: $3C
    ld   [$DF17], a                               ; $2597: $EA $17 $DF
    ld   [$DF33], a                               ; $259A: $EA $33 $DF
    ld   a, [$DF04]                               ; $259D: $FA $04 $DF
    bit  7, a                                     ; $25A0: $CB $7F
    jr   nz, jr_000_25B9                          ; $25A2: $20 $15

    ld   [$DF03], a                               ; $25A4: $EA $03 $DF
    xor  a                                        ; $25A7: $AF
    ld   [$DF07], a                               ; $25A8: $EA $07 $DF
    ld   [$DF08], a                               ; $25AB: $EA $08 $DF
    ld   [$DF06], a                               ; $25AE: $EA $06 $DF
    ld   a, $81                                   ; $25B1: $3E $81
    ld   [$DF01], a                               ; $25B3: $EA $01 $DF
    jp   $0570                                    ; $25B6: $C3 $70 $05


jr_000_25B9:
    call Call_000_25C8                            ; $25B9: $CD $C8 $25
    jp   $0570                                    ; $25BC: $C3 $70 $05


Call_000_25BF:
    ld   b, $19                                   ; $25BF: $06 $19

jr_000_25C1:
    ld   a, [hl+]                                 ; $25C1: $2A
    ld   [de], a                                  ; $25C2: $12
    inc  e                                        ; $25C3: $1C
    dec  b                                        ; $25C4: $05
    jr   nz, jr_000_25C1                          ; $25C5: $20 $FA

    ret                                           ; $25C7: $C9


Call_000_25C8:
jr_000_25C8:
    ld   b, a                                     ; $25C8: $47
    ld   a, $01                                   ; $25C9: $3E $01
    ld   [$C3C5], a                               ; $25CB: $EA $C5 $C3
    ld   [$3000], a                               ; $25CE: $EA $00 $30
    ld   hl, $7D7A                                ; $25D1: $21 $7A $7D
    ld   a, b                                     ; $25D4: $78
    and  $07                                      ; $25D5: $E6 $07
    call Add2AToHL                                ; $25D7: $CD $81 $00
    ld   a, [hl+]                                 ; $25DA: $2A
    ld   h, [hl]                                  ; $25DB: $66
    ld   l, a                                     ; $25DC: $6F
    ld   de, $DD00                                ; $25DD: $11 $00 $DD
    call Call_000_25BF                            ; $25E0: $CD $BF $25
    ld   e, $40                                   ; $25E3: $1E $40
    call Call_000_25BF                            ; $25E5: $CD $BF $25
    ld   a, $13                                   ; $25E8: $3E $13
    ld   [$DF03], a                               ; $25EA: $EA $03 $DF
    ld   a, $02                                   ; $25ED: $3E $02
    ld   [$DF08], a                               ; $25EF: $EA $08 $DF
    xor  a                                        ; $25F2: $AF
    ld   [$DF07], a                               ; $25F3: $EA $07 $DF
    ld   [$DF06], a                               ; $25F6: $EA $06 $DF
    ld   a, $81                                   ; $25F9: $3E $81
    ld   [$DF01], a                               ; $25FB: $EA $01 $DF
    ret                                           ; $25FE: $C9


Call_000_25FF:
    ld   h, $DA                                   ; $25FF: $26 $DA
    ld   a, [$DF1A]                               ; $2601: $FA $1A $DF
    ld   b, a                                     ; $2604: $47
    bit  3, a                                     ; $2605: $CB $5F
    jr   z, jr_000_260E                           ; $2607: $28 $05

    ld   l, $14                                   ; $2609: $2E $14
    ld   a, $01                                   ; $260B: $3E $01
    ld   [hl], a                                  ; $260D: $77

jr_000_260E:
    bit  5, b                                     ; $260E: $CB $68
    jr   z, jr_000_2617                           ; $2610: $28 $05

    ld   l, $7A                                   ; $2612: $2E $7A
    ld   a, $01                                   ; $2614: $3E $01
    ld   [hl], a                                  ; $2616: $77

jr_000_2617:
    ld   a, $5E                                   ; $2617: $3E $5E
    ld   [$DF32], a                               ; $2619: $EA $32 $DF
    ld   a, [$DF1B]                               ; $261C: $FA $1B $DF
    or   $80                                      ; $261F: $F6 $80
    ld   [$DF04], a                               ; $2621: $EA $04 $DF
    jr   jr_000_25C8                              ; $2624: $18 $A2

DeactivateBossWorldActorPages::
    ld   hl, $C708                                ; $2626: $21 $08 $C7
    ld   a, $40                                   ; $2629: $3E $40
    ld   [hl], a                                  ; $262B: $77
    xor  a                                        ; $262C: $AF
    ld   l, $0C                                   ; $262D: $2E $0C
    ld   [hl], a                                  ; $262F: $77

Call_000_2630:
    ld   b, $13                                   ; $2630: $06 $13
    ld   l, $00                                   ; $2632: $2E $00

jr_000_2634:
    ld   [hl], a                                  ; $2634: $77
    inc  h                                        ; $2635: $24
    dec  b                                        ; $2636: $05
    jr   nz, jr_000_2634                          ; $2637: $20 $FB

    ret                                           ; $2639: $C9


Jump_000_263A:
    ld   a, b                                     ; $263A: $78
    ld   hl, $DF03                                ; $263B: $21 $03 $DF
    ld   [hl+], a                                 ; $263E: $22
    ld   [hl], a                                  ; $263F: $77
    ld   a, c                                     ; $2640: $79
    ld   [$DF14], a                               ; $2641: $EA $14 $DF
    jr   jr_000_264D                              ; $2644: $18 $07

Jump_000_2646:
    ld   hl, $DF02                                ; $2646: $21 $02 $DF
    ld   a, [hl+]                                 ; $2649: $2A
    add  $0F                                      ; $264A: $C6 $0F
    ld   [hl], a                                  ; $264C: $77

Jump_000_264D:
jr_000_264D:
    xor  a                                        ; $264D: $AF
    ld   hl, $DF06                                ; $264E: $21 $06 $DF
    ld   [hl+], a                                 ; $2651: $22
    ld   [hl+], a                                 ; $2652: $22
    ld   [hl], a                                  ; $2653: $77
    inc  a                                        ; $2654: $3C

Jump_000_2655:
    ld   [$DF01], a                               ; $2655: $EA $01 $DF
    jp   $0570                                    ; $2658: $C3 $70 $05


jr_000_265B:
    call Call_000_2BAD                            ; $265B: $CD $AD $2B
    ld   a, [$DF06]                               ; $265E: $FA $06 $DF
    bit  1, a                                     ; $2661: $CB $4F
    jr   nz, jr_000_2673                          ; $2663: $20 $0E

    ld   a, [$C200]                               ; $2665: $FA $00 $C2
    bit  3, a                                     ; $2668: $CB $5F
    jr   z, jr_000_265B                           ; $266A: $28 $EF

    bit  4, a                                     ; $266C: $CB $67
    jp   z, Jump_000_2558                         ; $266E: $CA $58 $25

    jr   jr_000_265B                              ; $2671: $18 $E8

jr_000_2673:
    ld   a, $0D                                   ; $2673: $3E $0D
    rst  RST_28                                   ; $2675: $EF
    call Call_000_2034                            ; $2676: $CD $34 $20
    ld   b, $05                                   ; $2679: $06 $05
    call SetQueuedDataSelectionId                 ; $267B: $CD $64 $1F
    ld   a, $05                                   ; $267E: $3E $05
    ld   b, $0F                                   ; $2680: $06 $0F
    call Call_000_3370                            ; $2682: $CD $70 $33
    call DeactivateBossWorldActorPages            ; $2685: $CD $26 $26

jr_000_2688:
    ld   a, $01                                   ; $2688: $3E $01
    ld   [$C3C5], a                               ; $268A: $EA $C5 $C3
    ld   [$3000], a                               ; $268D: $EA $00 $30
    call $736A                                    ; $2690: $CD $6A $73
    call $4F23                                    ; $2693: $CD $23 $4F
    ld   a, [$C700]                               ; $2696: $FA $00 $C7
    and  a                                        ; $2699: $A7
    jr   nz, jr_000_26AA                          ; $269A: $20 $0E

    ld   a, [$C212]                               ; $269C: $FA $12 $C2
    cp   $88                                      ; $269F: $FE $88
    jp   nz, Jump_000_26AA                        ; $26A1: $C2 $AA $26

    ld   a, [$C27B]                               ; $26A4: $FA $7B $C2
    rrca                                          ; $26A7: $0F
    jr   c, jr_000_26D0                           ; $26A8: $38 $26

Jump_000_26AA:
jr_000_26AA:
    ld   a, [$C70C]                               ; $26AA: $FA $0C $C7
    cp   $04                                      ; $26AD: $FE $04
    jr   z, jr_000_26BF                           ; $26AF: $28 $0E

    cp   $06                                      ; $26B1: $FE $06
    jr   z, jr_000_26BF                           ; $26B3: $28 $0A

    cp   $07                                      ; $26B5: $FE $07
    jr   z, jr_000_26BF                           ; $26B7: $28 $06

    call $44DF                                    ; $26B9: $CD $DF $44
    call Call_000_1EB2                            ; $26BC: $CD $B2 $1E

jr_000_26BF:
    call Call_000_07F3                            ; $26BF: $CD $F3 $07
    ld   a, [$C200]                               ; $26C2: $FA $00 $C2
    bit  3, a                                     ; $26C5: $CB $5F
    jr   z, jr_000_26CE                           ; $26C7: $28 $05

    bit  4, a                                     ; $26C9: $CB $67
    jp   z, Jump_000_2558                         ; $26CB: $CA $58 $25

jr_000_26CE:
    jr   jr_000_2688                              ; $26CE: $18 $B8

jr_000_26D0:
    ld   a, $5F                                   ; $26D0: $3E $5F
    ld   [$DF32], a                               ; $26D2: $EA $32 $DF
    ld   bc, $0001                                ; $26D5: $01 $01 $00
    jp   Jump_000_263A                            ; $26D8: $C3 $3A $26


Jump_000_26DB:
    ld   a, $2F                                   ; $26DB: $3E $2F
    rst  RST_28                                   ; $26DD: $EF
    ld   b, $07                                   ; $26DE: $06 $07
    call SetQueuedDataSelectionId                 ; $26E0: $CD $64 $1F
    ld   hl, $9A5C                                ; $26E3: $21 $5C $9A
    call QueueStageVblankMapOperation             ; $26E6: $CD $1E $27
    ld   hl, $9A5B                                ; $26E9: $21 $5B $9A
    call QueueStageVblankMapOperation             ; $26EC: $CD $1E $27
    ld   a, $20                                   ; $26EF: $3E $20
    call Call_000_00D0                            ; $26F1: $CD $D0 $00
    ld   a, $2F                                   ; $26F4: $3E $2F
    rst  RST_28                                   ; $26F6: $EF
    ld   b, $06                                   ; $26F7: $06 $06
    call SetQueuedDataSelectionId                 ; $26F9: $CD $64 $1F
    ld   hl, $9A5D                                ; $26FC: $21 $5D $9A
    call QueueStageVblankMapOperation             ; $26FF: $CD $1E $27
    ld   hl, $9A5A                                ; $2702: $21 $5A $9A
    call QueueStageVblankMapOperation             ; $2705: $CD $1E $27
    ld   a, $20                                   ; $2708: $3E $20
    call Call_000_00D0                            ; $270A: $CD $D0 $00
    ld   a, $F0                                   ; $270D: $3E $F0
    rst  RST_28                                   ; $270F: $EF
    ld   b, $07                                   ; $2710: $06 $07
    call SetQueuedDataSelectionId                 ; $2712: $CD $64 $1F
    ld   hl, $9A5E                                ; $2715: $21 $5E $9A
    call QueueStageVblankMapOperation             ; $2718: $CD $1E $27
    ld   hl, $9A59                                ; $271B: $21 $59 $9A

QueueStageVblankMapOperation::
    call WaitForRequestedVBlank                   ; $271E: $CD $90 $00
    call WaitForRequestedVBlank                   ; $2721: $CD $90 $00
    ld   a, l                                     ; $2724: $7D
    ld   [$C7BB], a                               ; $2725: $EA $BB $C7
    ld   a, h                                     ; $2728: $7C
    ld   [$C7BC], a                               ; $2729: $EA $BC $C7
    ld   a, $01                                   ; $272C: $3E $01
    ld   [$C7A0], a                               ; $272E: $EA $A0 $C7
    ret                                           ; $2731: $C9


jr_000_2732:
    call Call_000_2BAD                            ; $2732: $CD $AD $2B
    ld   a, [$DF06]                               ; $2735: $FA $06 $DF
    bit  1, a                                     ; $2738: $CB $4F
    jr   nz, jr_000_274A                          ; $273A: $20 $0E

    ld   a, [$C200]                               ; $273C: $FA $00 $C2
    bit  3, a                                     ; $273F: $CB $5F
    jr   z, jr_000_2732                           ; $2741: $28 $EF

    bit  4, a                                     ; $2743: $CB $67
    jp   z, Jump_000_2558                         ; $2745: $CA $58 $25

    jr   jr_000_2732                              ; $2748: $18 $E8

jr_000_274A:
    ld   a, $0D                                   ; $274A: $3E $0D
    rst  RST_28                                   ; $274C: $EF
    ld   a, $04                                   ; $274D: $3E $04
    ld   b, $09                                   ; $274F: $06 $09
    call Call_000_3370                            ; $2751: $CD $70 $33
    ld   a, $04                                   ; $2754: $3E $04
    ld   [$C580], a                               ; $2756: $EA $80 $C5

jr_000_2759:
    ld   a, [$C580]                               ; $2759: $FA $80 $C5
    and  a                                        ; $275C: $A7
    jr   nz, jr_000_2776                          ; $275D: $20 $17

    xor  a                                        ; $275F: $AF
    ld   [$C57E], a                               ; $2760: $EA $7E $C5
    call Call_000_063E                            ; $2763: $CD $3E $06
    call Call_000_279F                            ; $2766: $CD $9F $27
    ld   a, $07                                   ; $2769: $3E $07
    ld   [$DF06], a                               ; $276B: $EA $06 $DF

jr_000_276E:
    ld   a, [$C212]                               ; $276E: $FA $12 $C2
    cp   $19                                      ; $2771: $FE $19
    jp   z, Jump_000_27F5                         ; $2773: $CA $F5 $27

jr_000_2776:
    ld   a, $01                                   ; $2776: $3E $01
    ld   [$C3C5], a                               ; $2778: $EA $C5 $C3
    ld   [$3000], a                               ; $277B: $EA $00 $30
    call $4F23                                    ; $277E: $CD $23 $4F
    call $44DF                                    ; $2781: $CD $DF $44
    call Call_000_1EB2                            ; $2784: $CD $B2 $1E
    call Call_000_07F3                            ; $2787: $CD $F3 $07
    ld   a, [$C200]                               ; $278A: $FA $00 $C2
    bit  3, a                                     ; $278D: $CB $5F
    jr   z, jr_000_2796                           ; $278F: $28 $05

    bit  4, a                                     ; $2791: $CB $67
    jp   z, Jump_000_2558                         ; $2793: $CA $58 $25

jr_000_2796:
    ld   a, [$DF06]                               ; $2796: $FA $06 $DF
    bit  2, a                                     ; $2799: $CB $57
    jr   nz, jr_000_276E                          ; $279B: $20 $D1

    jr   jr_000_2759                              ; $279D: $18 $BA

Call_000_279F:
    ld   a, $F0                                   ; $279F: $3E $F0
    rst  RST_28                                   ; $27A1: $EF
    ld   a, $11                                   ; $27A2: $3E $11
    rst  RST_28                                   ; $27A4: $EF
    ld   a, $00                                   ; $27A5: $3E $00
    call Call_000_00D0                            ; $27A7: $CD $D0 $00
    ld   a, $2F                                   ; $27AA: $3E $2F
    rst  RST_28                                   ; $27AC: $EF
    ld   bc, $14C0                                ; $27AD: $01 $C0 $14
    call Call_000_27E1                            ; $27B0: $CD $E1 $27
    ld   a, $08                                   ; $27B3: $3E $08
    call Call_000_00D0                            ; $27B5: $CD $D0 $00
    ld   a, $2F                                   ; $27B8: $3E $2F
    rst  RST_28                                   ; $27BA: $EF
    ld   bc, $1480                                ; $27BB: $01 $80 $14
    call Call_000_27E1                            ; $27BE: $CD $E1 $27
    ld   a, $08                                   ; $27C1: $3E $08
    call Call_000_00D0                            ; $27C3: $CD $D0 $00
    ld   a, $2F                                   ; $27C6: $3E $2F
    rst  RST_28                                   ; $27C8: $EF
    ld   bc, $1440                                ; $27C9: $01 $40 $14
    call Call_000_27E1                            ; $27CC: $CD $E1 $27
    ld   a, $F0                                   ; $27CF: $3E $F0
    rst  RST_28                                   ; $27D1: $EF
    xor  a                                        ; $27D2: $AF
    ld   hl, $C1A0                                ; $27D3: $21 $A0 $C1
    ld   [hl+], a                                 ; $27D6: $22
    ld   [hl], a                                  ; $27D7: $77
    ld   l, $B0                                   ; $27D8: $2E $B0
    ld   [hl+], a                                 ; $27DA: $22
    ld   [hl], a                                  ; $27DB: $77
    ld   l, $90                                   ; $27DC: $2E $90
    ld   [hl+], a                                 ; $27DE: $22
    ld   [hl], a                                  ; $27DF: $77
    ret                                           ; $27E0: $C9


Call_000_27E1:
    call Call_000_27E8                            ; $27E1: $CD $E8 $27
    ld   a, c                                     ; $27E4: $79
    add  $02                                      ; $27E5: $C6 $02
    ld   c, a                                     ; $27E7: $4F

Call_000_27E8:
    ld   hl, $C687                                ; $27E8: $21 $87 $C6
    ld   a, c                                     ; $27EB: $79
    ld   [hl+], a                                 ; $27EC: $22
    ld   a, $9A                                   ; $27ED: $3E $9A
    ld   [hl+], a                                 ; $27EF: $22
    ld   a, b                                     ; $27F0: $78
    ld   [hl], a                                  ; $27F1: $77
    jp   WaitForRequestedVBlank                   ; $27F2: $C3 $90 $00


Jump_000_27F5:
    ld   a, $01                                   ; $27F5: $3E $01
    ld   [$DF31], a                               ; $27F7: $EA $31 $DF
    ld   bc, $2802                                ; $27FA: $01 $02 $28
    jp   Jump_000_263A                            ; $27FD: $C3 $3A $26


    ld   b, $21                                   ; $2800: $06 $21
    call SetQueuedDataSelectionId                 ; $2802: $CD $64 $1F

jr_000_2805:
    call Call_000_2BAD                            ; $2805: $CD $AD $2B
    ld   a, [$DF06]                               ; $2808: $FA $06 $DF
    bit  1, a                                     ; $280B: $CB $4F
    jr   nz, jr_000_281D                          ; $280D: $20 $0E

    ld   a, [$C200]                               ; $280F: $FA $00 $C2
    bit  3, a                                     ; $2812: $CB $5F
    jr   z, jr_000_2805                           ; $2814: $28 $EF

    bit  4, a                                     ; $2816: $CB $67
    jp   z, Jump_000_2558                         ; $2818: $CA $58 $25

    jr   jr_000_2805                              ; $281B: $18 $E8

jr_000_281D:
    ld   a, $0D                                   ; $281D: $3E $0D
    rst  RST_28                                   ; $281F: $EF
    call Call_000_2034                            ; $2820: $CD $34 $20
    ld   b, $8E                                   ; $2823: $06 $8E
    call SetQueuedDataSelectionId                 ; $2825: $CD $64 $1F
    ld   a, $04                                   ; $2828: $3E $04
    ld   b, $37                                   ; $282A: $06 $37
    call Call_000_3370                            ; $282C: $CD $70 $33
    call DeactivateBossWorldActorPages            ; $282F: $CD $26 $26

jr_000_2832:
    ld   a, $01                                   ; $2832: $3E $01
    ld   [$C3C5], a                               ; $2834: $EA $C5 $C3
    ld   [$3000], a                               ; $2837: $EA $00 $30
    call $7721                                    ; $283A: $CD $21 $77
    call $4F23                                    ; $283D: $CD $23 $4F
    ld   hl, $C700                                ; $2840: $21 $00 $C7
    ld   a, [hl]                                  ; $2843: $7E
    and  a                                        ; $2844: $A7
    jr   nz, jr_000_2855                          ; $2845: $20 $0E

    ld   a, [$C212]                               ; $2847: $FA $12 $C2
    cp   $88                                      ; $284A: $FE $88
    jp   nz, Jump_000_2855                        ; $284C: $C2 $55 $28

    ld   a, [$C27B]                               ; $284F: $FA $7B $C2
    rrca                                          ; $2852: $0F
    jr   c, jr_000_287B                           ; $2853: $38 $26

Jump_000_2855:
jr_000_2855:
    ld   a, [$C70C]                               ; $2855: $FA $0C $C7
    cp   $04                                      ; $2858: $FE $04
    jr   z, jr_000_286A                           ; $285A: $28 $0E

    cp   $06                                      ; $285C: $FE $06
    jr   z, jr_000_286A                           ; $285E: $28 $0A

    cp   $07                                      ; $2860: $FE $07
    jr   z, jr_000_286A                           ; $2862: $28 $06

    call $44DF                                    ; $2864: $CD $DF $44
    call Call_000_1EB2                            ; $2867: $CD $B2 $1E

jr_000_286A:
    call Call_000_07F3                            ; $286A: $CD $F3 $07
    ld   a, [$C200]                               ; $286D: $FA $00 $C2
    bit  3, a                                     ; $2870: $CB $5F
    jr   z, jr_000_2879                           ; $2872: $28 $05

    bit  4, a                                     ; $2874: $CB $67
    jp   z, Jump_000_2558                         ; $2876: $CA $58 $25

jr_000_2879:
    jr   jr_000_2832                              ; $2879: $18 $B7

jr_000_287B:
    ld   bc, $0B03                                ; $287B: $01 $03 $0B
    jp   Jump_000_263A                            ; $287E: $C3 $3A $26


    ld   b, $1F                                   ; $2881: $06 $1F
    call SetQueuedDataSelectionId                 ; $2883: $CD $64 $1F

jr_000_2886:
    call Call_000_2BAD                            ; $2886: $CD $AD $2B
    ld   a, [$DF06]                               ; $2889: $FA $06 $DF
    bit  1, a                                     ; $288C: $CB $4F
    jr   nz, jr_000_289E                          ; $288E: $20 $0E

    ld   a, [$C200]                               ; $2890: $FA $00 $C2
    bit  3, a                                     ; $2893: $CB $5F
    jr   z, jr_000_2886                           ; $2895: $28 $EF

    bit  4, a                                     ; $2897: $CB $67
    jp   z, Jump_000_2558                         ; $2899: $CA $58 $25

    jr   jr_000_2886                              ; $289C: $18 $E8

jr_000_289E:
    ld   a, $0D                                   ; $289E: $3E $0D
    rst  RST_28                                   ; $28A0: $EF
    call Call_000_2034                            ; $28A1: $CD $34 $20
    ld   b, $9E                                   ; $28A4: $06 $9E
    call SetQueuedDataSelectionId                 ; $28A6: $CD $64 $1F
    ld   a, $04                                   ; $28A9: $3E $04
    ld   b, $3A                                   ; $28AB: $06 $3A
    call Call_000_3370                            ; $28AD: $CD $70 $33
    call DeactivateBossWorldActorPages            ; $28B0: $CD $26 $26

jr_000_28B3:
    ld   a, $01                                   ; $28B3: $3E $01
    ld   [$C3C5], a                               ; $28B5: $EA $C5 $C3
    ld   [$3000], a                               ; $28B8: $EA $00 $30
    call $79A2                                    ; $28BB: $CD $A2 $79
    call $4F23                                    ; $28BE: $CD $23 $4F
    ld   hl, $C700                                ; $28C1: $21 $00 $C7
    ld   a, [hl]                                  ; $28C4: $7E
    and  a                                        ; $28C5: $A7
    jr   nz, jr_000_28D6                          ; $28C6: $20 $0E

    ld   a, [$C212]                               ; $28C8: $FA $12 $C2
    cp   $88                                      ; $28CB: $FE $88
    jp   nz, Jump_000_28D6                        ; $28CD: $C2 $D6 $28

    ld   a, [$C27B]                               ; $28D0: $FA $7B $C2
    rrca                                          ; $28D3: $0F
    jr   c, jr_000_28FC                           ; $28D4: $38 $26

Jump_000_28D6:
jr_000_28D6:
    ld   a, [$C70C]                               ; $28D6: $FA $0C $C7
    cp   $04                                      ; $28D9: $FE $04
    jr   z, jr_000_28EB                           ; $28DB: $28 $0E

    cp   $06                                      ; $28DD: $FE $06
    jr   z, jr_000_28EB                           ; $28DF: $28 $0A

    cp   $07                                      ; $28E1: $FE $07
    jr   z, jr_000_28EB                           ; $28E3: $28 $06

    call $44DF                                    ; $28E5: $CD $DF $44
    call Call_000_1EB2                            ; $28E8: $CD $B2 $1E

jr_000_28EB:
    call Call_000_07F3                            ; $28EB: $CD $F3 $07
    ld   a, [$C200]                               ; $28EE: $FA $00 $C2
    bit  3, a                                     ; $28F1: $CB $5F
    jr   z, jr_000_28FA                           ; $28F3: $28 $05

    bit  4, a                                     ; $28F5: $CB $67
    jp   z, Jump_000_2558                         ; $28F7: $CA $58 $25

jr_000_28FA:
    jr   jr_000_28B3                              ; $28FA: $18 $B7

jr_000_28FC:
    ld   a, $01                                   ; $28FC: $3E $01
    ld   [$DF31], a                               ; $28FE: $EA $31 $DF
    ld   bc, $2C04                                ; $2901: $01 $04 $2C
    jp   Jump_000_263A                            ; $2904: $C3 $3A $26


    ld   b, $20                                   ; $2907: $06 $20
    call SetQueuedDataSelectionId                 ; $2909: $CD $64 $1F

jr_000_290C:
    call Call_000_2BAD                            ; $290C: $CD $AD $2B
    ld   a, [$DF06]                               ; $290F: $FA $06 $DF
    bit  1, a                                     ; $2912: $CB $4F
    jr   nz, jr_000_2924                          ; $2914: $20 $0E

    ld   a, [$C200]                               ; $2916: $FA $00 $C2
    bit  3, a                                     ; $2919: $CB $5F
    jr   z, jr_000_290C                           ; $291B: $28 $EF

    bit  4, a                                     ; $291D: $CB $67
    jp   z, Jump_000_2558                         ; $291F: $CA $58 $25

    jr   jr_000_290C                              ; $2922: $18 $E8

jr_000_2924:
    ld   a, $0D                                   ; $2924: $3E $0D
    rst  RST_28                                   ; $2926: $EF
    xor  a                                        ; $2927: $AF
    ld   h, $C7                                   ; $2928: $26 $C7
    call Call_000_2630                            ; $292A: $CD $30 $26
    dec  a                                        ; $292D: $3D
    ld   [$CA23], a                               ; $292E: $EA $23 $CA
    ld   a, $01                                   ; $2931: $3E $01
    ld   [$C3C5], a                               ; $2933: $EA $C5 $C3
    ld   [$3000], a                               ; $2936: $EA $00 $30
    call $4EE8                                    ; $2939: $CD $E8 $4E

jr_000_293C:
    ld   a, $01                                   ; $293C: $3E $01
    ld   [$C3C5], a                               ; $293E: $EA $C5 $C3
    ld   [$3000], a                               ; $2941: $EA $00 $30
    call $4F23                                    ; $2944: $CD $23 $4F
    ld   a, [$C700]                               ; $2947: $FA $00 $C7
    or   a                                        ; $294A: $B7
    jr   z, jr_000_296B                           ; $294B: $28 $1E

    ld   a, [$C80C]                               ; $294D: $FA $0C $C8
    cp   $04                                      ; $2950: $FE $04
    jr   z, jr_000_295A                           ; $2952: $28 $06

    call $44DF                                    ; $2954: $CD $DF $44
    call Call_000_1EB2                            ; $2957: $CD $B2 $1E

jr_000_295A:
    call Call_000_07F3                            ; $295A: $CD $F3 $07
    ld   a, [$C200]                               ; $295D: $FA $00 $C2
    bit  3, a                                     ; $2960: $CB $5F
    jr   z, jr_000_2969                           ; $2962: $28 $05

    bit  4, a                                     ; $2964: $CB $67
    jp   z, Jump_000_2558                         ; $2966: $CA $58 $25

jr_000_2969:
    jr   jr_000_293C                              ; $2969: $18 $D1

jr_000_296B:
    ld   a, $11                                   ; $296B: $3E $11
    rst  RST_28                                   ; $296D: $EF
    ld   a, $00                                   ; $296E: $3E $00
    call Call_000_00D0                            ; $2970: $CD $D0 $00
    ld   bc, $0F05                                ; $2973: $01 $05 $0F
    jp   Jump_000_263A                            ; $2976: $C3 $3A $26


    ld   b, $19                                   ; $2979: $06 $19
    call SetQueuedDataSelectionId                 ; $297B: $CD $64 $1F

jr_000_297E:
    ld   a, $01                                   ; $297E: $3E $01
    ld   [$C3C5], a                               ; $2980: $EA $C5 $C3
    ld   [$3000], a                               ; $2983: $EA $00 $30
    call $4F23                                    ; $2986: $CD $23 $4F
    call $44DF                                    ; $2989: $CD $DF $44
    ld   a, [$C365]                               ; $298C: $FA $65 $C3
    ld   [$C7CC], a                               ; $298F: $EA $CC $C7
    push af                                       ; $2992: $F5
    and  $01                                      ; $2993: $E6 $01
    ld   [$C365], a                               ; $2995: $EA $65 $C3
    call $4CF5                                    ; $2998: $CD $F5 $4C
    pop  af                                       ; $299B: $F1
    ld   [$C365], a                               ; $299C: $EA $65 $C3
    call Call_000_1EB2                            ; $299F: $CD $B2 $1E
    call Call_000_07F3                            ; $29A2: $CD $F3 $07
    ld   a, [$C200]                               ; $29A5: $FA $00 $C2
    bit  3, a                                     ; $29A8: $CB $5F
    jr   z, jr_000_29B1                           ; $29AA: $28 $05

    bit  4, a                                     ; $29AC: $CB $67
    jp   z, Jump_000_2558                         ; $29AE: $CA $58 $25

jr_000_29B1:
    ld   a, [$DF06]                               ; $29B1: $FA $06 $DF
    bit  2, a                                     ; $29B4: $CB $57
    jr   nz, jr_000_29BA                          ; $29B6: $20 $02

    jr   jr_000_297E                              ; $29B8: $18 $C4

jr_000_29BA:
    xor  a                                        ; $29BA: $AF
    ld   [$DF02], a                               ; $29BB: $EA $02 $DF
    ld   bc, $1006                                ; $29BE: $01 $06 $10
    jp   Jump_000_263A                            ; $29C1: $C3 $3A $26


    ld   b, $29                                   ; $29C4: $06 $29
    call SetQueuedDataSelectionId                 ; $29C6: $CD $64 $1F

jr_000_29C9:
    call Call_000_2BAD                            ; $29C9: $CD $AD $2B
    ld   a, [$C200]                               ; $29CC: $FA $00 $C2
    bit  3, a                                     ; $29CF: $CB $5F
    jr   z, jr_000_29D8                           ; $29D1: $28 $05

    bit  4, a                                     ; $29D3: $CB $67
    jp   z, Jump_000_2558                         ; $29D5: $CA $58 $25

jr_000_29D8:
    ld   a, [$C212]                               ; $29D8: $FA $12 $C2
    cp   $90                                      ; $29DB: $FE $90
    jr   z, jr_000_29E5                           ; $29DD: $28 $06

    cp   $20                                      ; $29DF: $FE $20
    jr   z, jr_000_29E8                           ; $29E1: $28 $05

    jr   jr_000_29C9                              ; $29E3: $18 $E4

jr_000_29E5:
    jp   Jump_000_2646                            ; $29E5: $C3 $46 $26


jr_000_29E8:
    ld   hl, $DF02                                ; $29E8: $21 $02 $DF
    ld   a, [hl+]                                 ; $29EB: $2A
    add  $10                                      ; $29EC: $C6 $10
    ld   [hl], a                                  ; $29EE: $77
    jp   Jump_000_264D                            ; $29EF: $C3 $4D $26


    ld   b, $29                                   ; $29F2: $06 $29
    call SetQueuedDataSelectionId                 ; $29F4: $CD $64 $1F
    ld   a, $01                                   ; $29F7: $3E $01
    ld   [$C200], a                               ; $29F9: $EA $00 $C2

jr_000_29FC:
    call Call_000_2BAD                            ; $29FC: $CD $AD $2B
    ld   a, [$C200]                               ; $29FF: $FA $00 $C2
    bit  3, a                                     ; $2A02: $CB $5F
    jr   z, jr_000_2A0B                           ; $2A04: $28 $05

    bit  4, a                                     ; $2A06: $CB $67
    jp   z, Jump_000_2558                         ; $2A08: $CA $58 $25

jr_000_2A0B:
    ld   a, [$C212]                               ; $2A0B: $FA $12 $C2
    cp   $20                                      ; $2A0E: $FE $20
    jr   z, jr_000_2A18                           ; $2A10: $28 $06

    cp   $90                                      ; $2A12: $FE $90
    jr   z, jr_000_2A1B                           ; $2A14: $28 $05

    jr   jr_000_29FC                              ; $2A16: $18 $E4

jr_000_2A18:
    jp   Jump_000_2646                            ; $2A18: $C3 $46 $26


jr_000_2A1B:
    ld   hl, $DF02                                ; $2A1B: $21 $02 $DF
    ld   a, [hl+]                                 ; $2A1E: $2A
    add  $0E                                      ; $2A1F: $C6 $0E
    ld   [hl], a                                  ; $2A21: $77
    jp   Jump_000_264D                            ; $2A22: $C3 $4D $26


jr_000_2A25:
    call Call_000_2BAD                            ; $2A25: $CD $AD $2B
    ld   a, [$C200]                               ; $2A28: $FA $00 $C2
    bit  3, a                                     ; $2A2B: $CB $5F
    jr   z, jr_000_2A34                           ; $2A2D: $28 $05

    bit  4, a                                     ; $2A2F: $CB $67
    jp   z, Jump_000_2558                         ; $2A31: $CA $58 $25

jr_000_2A34:
    ld   a, [$C212]                               ; $2A34: $FA $12 $C2
    cp   $90                                      ; $2A37: $FE $90
    jr   z, jr_000_2A41                           ; $2A39: $28 $06

    cp   $20                                      ; $2A3B: $FE $20
    jr   z, jr_000_2A50                           ; $2A3D: $28 $11

    jr   jr_000_2A25                              ; $2A3F: $18 $E4

jr_000_2A41:
    xor  a                                        ; $2A41: $AF
    ld   [$DF2E], a                               ; $2A42: $EA $2E $DF
    ld   a, $0D                                   ; $2A45: $3E $0D
    ld   [$DF03], a                               ; $2A47: $EA $03 $DF
    ld   [$DF04], a                               ; $2A4A: $EA $04 $DF
    jp   Jump_000_264D                            ; $2A4D: $C3 $4D $26


jr_000_2A50:
    xor  a                                        ; $2A50: $AF
    ld   [$DF06], a                               ; $2A51: $EA $06 $DF
    ld   a, [$DF08]                               ; $2A54: $FA $08 $DF
    dec  a                                        ; $2A57: $3D
    rlca                                          ; $2A58: $07
    rlca                                          ; $2A59: $07
    swap a                                        ; $2A5A: $CB $37
    add  $18                                      ; $2A5C: $C6 $18
    ld   l, a                                     ; $2A5E: $6F
    ld   h, $DD                                   ; $2A5F: $26 $DD
    ld   a, [hl]                                  ; $2A61: $7E
    ld   [$DF03], a                               ; $2A62: $EA $03 $DF
    ld   a, $82                                   ; $2A65: $3E $82
    ld   [$DF07], a                               ; $2A67: $EA $07 $DF
    ld   a, $01                                   ; $2A6A: $3E $01
    ld   [$DF01], a                               ; $2A6C: $EA $01 $DF
    jp   $0570                                    ; $2A6F: $C3 $70 $05


    ld   a, $01                                   ; $2A72: $3E $01
    ld   [$C3C5], a                               ; $2A74: $EA $C5 $C3
    ld   [$3000], a                               ; $2A77: $EA $00 $30
    ld   a, [$DF02]                               ; $2A7A: $FA $02 $DF
    sub  $19                                      ; $2A7D: $D6 $19
    ld   hl, $2B7E                                ; $2A7F: $21 $7E $2B
    call AddAToHL                                 ; $2A82: $CD $71 $00
    ld   a, [hl]                                  ; $2A85: $7E
    and  $3F                                      ; $2A86: $E6 $3F
    ld   b, a                                     ; $2A88: $47
    ld   c, $04                                   ; $2A89: $0E $04
    ld   a, [hl]                                  ; $2A8B: $7E
    rlca                                          ; $2A8C: $07
    jr   c, jr_000_2A90                           ; $2A8D: $38 $01

    inc  c                                        ; $2A8F: $0C

jr_000_2A90:
    ld   a, c                                     ; $2A90: $79
    call Call_000_3370                            ; $2A91: $CD $70 $33
    ld   a, $04                                   ; $2A94: $3E $04
    ld   [$DF32], a                               ; $2A96: $EA $32 $DF

Jump_000_2A99:
jr_000_2A99:
    ld   a, $01                                   ; $2A99: $3E $01
    ld   [$C3C5], a                               ; $2A9B: $EA $C5 $C3
    ld   [$3000], a                               ; $2A9E: $EA $00 $30
    call $4F23                                    ; $2AA1: $CD $23 $4F
    call $44DF                                    ; $2AA4: $CD $DF $44
    call Call_000_1EB2                            ; $2AA7: $CD $B2 $1E
    ld   a, [$C200]                               ; $2AAA: $FA $00 $C2
    bit  0, a                                     ; $2AAD: $CB $47
    jr   nz, jr_000_2AB8                          ; $2AAF: $20 $07

    call Call_000_2524                            ; $2AB1: $CD $24 $25
    ld   b, $01                                   ; $2AB4: $06 $01
    jr   jr_000_2ACB                              ; $2AB6: $18 $13

jr_000_2AB8:
    call Call_000_07F3                            ; $2AB8: $CD $F3 $07
    ld   b, $01                                   ; $2ABB: $06 $01
    ld   a, [$C200]                               ; $2ABD: $FA $00 $C2
    bit  3, a                                     ; $2AC0: $CB $5F
    jr   z, jr_000_2AD2                           ; $2AC2: $28 $0E

    bit  4, a                                     ; $2AC4: $CB $67
    jr   nz, jr_000_2AD2                          ; $2AC6: $20 $0A

    call Call_000_2558                            ; $2AC8: $CD $58 $25

jr_000_2ACB:
    ld   a, $02                                   ; $2ACB: $3E $02
    ld   [$DF2E], a                               ; $2ACD: $EA $2E $DF
    jr   jr_000_2B26                              ; $2AD0: $18 $54

jr_000_2AD2:
    ld   hl, $C700                                ; $2AD2: $21 $00 $C7
    ld   b, $05                                   ; $2AD5: $06 $05

jr_000_2AD7:
    ld   a, [hl]                                  ; $2AD7: $7E
    bit  0, a                                     ; $2AD8: $CB $47
    jr   nz, jr_000_2A99                          ; $2ADA: $20 $BD

    inc  h                                        ; $2ADC: $24
    dec  b                                        ; $2ADD: $05
    jr   nz, jr_000_2AD7                          ; $2ADE: $20 $F7

    ld   hl, $C200                                ; $2AE0: $21 $00 $C2
    res  4, [hl]                                  ; $2AE3: $CB $A6
    ld   a, $02                                   ; $2AE5: $3E $02
    ld   [$C3C5], a                               ; $2AE7: $EA $C5 $C3
    ld   [$3000], a                               ; $2AEA: $EA $00 $30
    call Call_000_1EB2                            ; $2AED: $CD $B2 $1E
    call $69C4                                    ; $2AF0: $CD $C4 $69
    ld   a, $11                                   ; $2AF3: $3E $11
    rst  RST_28                                   ; $2AF5: $EF
    ld   a, $00                                   ; $2AF6: $3E $00
    call Call_000_00D0                            ; $2AF8: $CD $D0 $00
    ld   a, [$DF02]                               ; $2AFB: $FA $02 $DF
    sub  $19                                      ; $2AFE: $D6 $19
    ld   c, a                                     ; $2B00: $4F
    ld   a, [$DF2D]                               ; $2B01: $FA $2D $DF
    and  a                                        ; $2B04: $A7
    jr   z, jr_000_2B14                           ; $2B05: $28 $0D

    ld   a, c                                     ; $2B07: $79
    ld   hl, $2B63                                ; $2B08: $21 $63 $2B
    call AddAToHL                                 ; $2B0B: $CD $71 $00
    ld   a, [hl]                                  ; $2B0E: $7E
    ld   [$DF32], a                               ; $2B0F: $EA $32 $DF
    jr   jr_000_2B22                              ; $2B12: $18 $0E

jr_000_2B14:
    ld   a, c                                     ; $2B14: $79
    rlca                                          ; $2B15: $07
    add  c                                        ; $2B16: $81
    ld   c, a                                     ; $2B17: $4F
    ld   a, [$C694]                               ; $2B18: $FA $94 $C6
    add  c                                        ; $2B1B: $81
    ld   hl, $2B6C                                ; $2B1C: $21 $6C $2B
    call AddAToHL                                 ; $2B1F: $CD $71 $00

jr_000_2B22:
    ld   a, [hl]                                  ; $2B22: $7E
    ld   [$DF32], a                               ; $2B23: $EA $32 $DF

jr_000_2B26:
    xor  a                                        ; $2B26: $AF
    ld   [$DF06], a                               ; $2B27: $EA $06 $DF
    ld   a, [$DF08]                               ; $2B2A: $FA $08 $DF
    dec  a                                        ; $2B2D: $3D
    rlca                                          ; $2B2E: $07
    rlca                                          ; $2B2F: $07
    swap a                                        ; $2B30: $CB $37
    add  $18                                      ; $2B32: $C6 $18
    ld   l, a                                     ; $2B34: $6F
    ld   h, $DD                                   ; $2B35: $26 $DD
    ld   a, [hl]                                  ; $2B37: $7E
    ld   [$DF03], a                               ; $2B38: $EA $03 $DF
    ld   a, $82                                   ; $2B3B: $3E $82
    ld   [$DF07], a                               ; $2B3D: $EA $07 $DF
    dec  b                                        ; $2B40: $05
    jr   z, jr_000_2B5B                           ; $2B41: $28 $18

    ld   a, [$DF2D]                               ; $2B43: $FA $2D $DF
    and  a                                        ; $2B46: $A7
    jr   z, jr_000_2B5B                           ; $2B47: $28 $12

    ld   d, $DA                                   ; $2B49: $16 $DA
    ld   e, a                                     ; $2B4B: $5F
    ld   a, [de]                                  ; $2B4C: $1A
    bit  7, a                                     ; $2B4D: $CB $7F
    jr   z, jr_000_2B56                           ; $2B4F: $28 $05

    or   $01                                      ; $2B51: $F6 $01
    ld   [de], a                                  ; $2B53: $12
    jr   jr_000_2B5B                              ; $2B54: $18 $05

jr_000_2B56:
    ld   a, $01                                   ; $2B56: $3E $01
    ld   [$DF2E], a                               ; $2B58: $EA $2E $DF

jr_000_2B5B:
    ld   a, $81                                   ; $2B5B: $3E $81
    ld   [$DF01], a                               ; $2B5D: $EA $01 $DF
    jp   $0570                                    ; $2B60: $C3 $70 $05


    ld   h, a                                     ; $2B63: $67
    ld   h, a                                     ; $2B64: $67
    nop                                           ; $2B65: $00
    ld   h, a                                     ; $2B66: $67
    ld   h, a                                     ; $2B67: $67
    nop                                           ; $2B68: $00
    nop                                           ; $2B69: $00
    nop                                           ; $2B6A: $00
    nop                                           ; $2B6B: $00
    ld   h, [hl]                                  ; $2B6C: $66
    ld   h, [hl]                                  ; $2B6D: $66
    ld   h, [hl]                                  ; $2B6E: $66
    ld   h, [hl]                                  ; $2B6F: $66
    ld   h, [hl]                                  ; $2B70: $66
    ld   h, [hl]                                  ; $2B71: $66
    ld   h, [hl]                                  ; $2B72: $66
    ld   h, a                                     ; $2B73: $67
    ld   h, [hl]                                  ; $2B74: $66
    ld   l, b                                     ; $2B75: $68
    ld   h, a                                     ; $2B76: $67
    ld   l, b                                     ; $2B77: $68
    ld   l, b                                     ; $2B78: $68
    ld   l, b                                     ; $2B79: $68
    ld   l, b                                     ; $2B7A: $68
    ld   l, c                                     ; $2B7B: $69
    ld   l, c                                     ; $2B7C: $69
    ld   l, c                                     ; $2B7D: $69
    dec  e                                        ; $2B7E: $1D
    ld   e, $1F                                   ; $2B7F: $1E $1F
    inc  h                                        ; $2B81: $24
    ld   h, $25                                   ; $2B82: $26 $25
    nop                                           ; $2B84: $00
    add  l                                        ; $2B85: $85
    adc  l                                        ; $2B86: $8D
    ld   a, $01                                   ; $2B87: $3E $01
    ld   [$C3C5], a                               ; $2B89: $EA $C5 $C3
    ld   [$3000], a                               ; $2B8C: $EA $00 $30
    ld   hl, $C66A                                ; $2B8F: $21 $6A $C6
    ld   a, [hl+]                                 ; $2B92: $2A
    ld   [hl], a                                  ; $2B93: $77
    ld   a, [$DF16]                               ; $2B94: $FA $16 $DF
    and  a                                        ; $2B97: $A7
    jr   nz, jr_000_2BA0                          ; $2B98: $20 $06

    ld   [$DF38], a                               ; $2B9A: $EA $38 $DF
    call Call_000_2178                            ; $2B9D: $CD $78 $21

jr_000_2BA0:
    ld   a, $04                                   ; $2BA0: $3E $04
    ld   b, $0D                                   ; $2BA2: $06 $0D
    call Call_000_3370                            ; $2BA4: $CD $70 $33
    call Call_000_3241                            ; $2BA7: $CD $41 $32
    jp   Jump_000_2A99                            ; $2BAA: $C3 $99 $2A


Call_000_2BAD:
    ld   a, $01                                   ; $2BAD: $3E $01
    ld   [$C3C5], a                               ; $2BAF: $EA $C5 $C3
    ld   [$3000], a                               ; $2BB2: $EA $00 $30
    call $4F23                                    ; $2BB5: $CD $23 $4F
    call $44DF                                    ; $2BB8: $CD $DF $44
    call $4CF5                                    ; $2BBB: $CD $F5 $4C
    call Call_000_1EB2                            ; $2BBE: $CD $B2 $1E
    jp   Jump_000_07F3                            ; $2BC1: $C3 $F3 $07


Jump_000_2BC4:
    ld   a, $01                                   ; $2BC4: $3E $01
    rst  RST_28                                   ; $2BC6: $EF
    ld   b, $68                                   ; $2BC7: $06 $68
    ld   a, $F5                                   ; $2BC9: $3E $F5
    rst  RST_28                                   ; $2BCB: $EF
    ld   b, $02                                   ; $2BCC: $06 $02
    call Call_000_2039                            ; $2BCE: $CD $39 $20
    call Call_000_2EDD                            ; $2BD1: $CD $DD $2E

jr_000_2BD4:
    call Call_000_075A                            ; $2BD4: $CD $5A $07
    ld   hl, $C584                                ; $2BD7: $21 $84 $C5
    ld   a, [hl]                                  ; $2BDA: $7E
    rrca                                          ; $2BDB: $0F
    jr   nc, jr_000_2BF4                          ; $2BDC: $30 $16

    ld   a, [$C583]                               ; $2BDE: $FA $83 $C5
    and  a                                        ; $2BE1: $A7
    jr   nz, jr_000_2BD4                          ; $2BE2: $20 $F0

    xor  a                                        ; $2BE4: $AF
    ld   [$C584], a                               ; $2BE5: $EA $84 $C5
    ld   a, [$DF2D]                               ; $2BE8: $FA $2D $DF
    ld   h, $DA                                   ; $2BEB: $26 $DA
    ld   l, a                                     ; $2BED: $6F
    inc  [hl]                                     ; $2BEE: $34
    call Call_000_2E81                            ; $2BEF: $CD $81 $2E
    jr   jr_000_2BD4                              ; $2BF2: $18 $E0

jr_000_2BF4:
    ld   a, [hl]                                  ; $2BF4: $7E
    rlca                                          ; $2BF5: $07
    jr   c, jr_000_2BD4                           ; $2BF6: $38 $DC

    rlca                                          ; $2BF8: $07
    jr   nc, jr_000_2BD4                          ; $2BF9: $30 $D9

    set  7, [hl]                                  ; $2BFB: $CB $FE
    call Call_000_2E81                            ; $2BFD: $CD $81 $2E
    jr   jr_000_2BD4                              ; $2C00: $18 $D2

Jump_000_2C02:
    call Call_000_2E59                            ; $2C02: $CD $59 $2E
    call Call_000_2EDD                            ; $2C05: $CD $DD $2E
    jr   jr_000_2C0D                              ; $2C08: $18 $03

Jump_000_2C0A:
    call Call_000_2E59                            ; $2C0A: $CD $59 $2E

Jump_000_2C0D:
jr_000_2C0D:
    call Call_000_075A                            ; $2C0D: $CD $5A $07
    jr   jr_000_2C0D                              ; $2C10: $18 $FB

Jump_000_2C12:
    call Call_000_2E59                            ; $2C12: $CD $59 $2E
    ld   a, [$DF2E]                               ; $2C15: $FA $2E $DF
    rrca                                          ; $2C18: $0F
    jr   c, jr_000_2C23                           ; $2C19: $38 $08

    call Call_000_2EDD                            ; $2C1B: $CD $DD $2E

jr_000_2C1E:
    call Call_000_075A                            ; $2C1E: $CD $5A $07
    jr   jr_000_2C1E                              ; $2C21: $18 $FB

jr_000_2C23:
    xor  a                                        ; $2C23: $AF
    ld   [$DF2E], a                               ; $2C24: $EA $2E $DF
    ld   a, $81                                   ; $2C27: $3E $81
    ld   [$C274], a                               ; $2C29: $EA $74 $C2
    ld   b, a                                     ; $2C2C: $47
    xor  a                                        ; $2C2D: $AF
    call SetObjectAnimationIfChanged              ; $2C2E: $CD $61 $00
    call Call_000_3241                            ; $2C31: $CD $41 $32
    ld   a, $15                                   ; $2C34: $3E $15
    ld   [$DF32], a                               ; $2C36: $EA $32 $DF
    call Call_000_2EDD                            ; $2C39: $CD $DD $2E

Call_000_2C3C:
    xor  a                                        ; $2C3C: $AF
    ld   [$C700], a                               ; $2C3D: $EA $00 $C7
    ld   hl, $DA7A                                ; $2C40: $21 $7A $DA
    inc  [hl]                                     ; $2C43: $34
    call WaitForRequestedVBlank                   ; $2C44: $CD $90 $00
    jr   jr_000_2C1E                              ; $2C47: $18 $D5

Jump_000_2C49:
    ld   a, $02                                   ; $2C49: $3E $02
    rst  RST_28                                   ; $2C4B: $EF
    ld   b, $68                                   ; $2C4C: $06 $68
    ld   a, $F5                                   ; $2C4E: $3E $F5
    rst  RST_28                                   ; $2C50: $EF
    ld   a, [$C274]                               ; $2C51: $FA $74 $C2
    ld   b, a                                     ; $2C54: $47
    xor  a                                        ; $2C55: $AF
    call SetObjectAnimationIfChanged              ; $2C56: $CD $61 $00
    ld   a, $01                                   ; $2C59: $3E $01
    ld   [$C3C5], a                               ; $2C5B: $EA $C5 $C3
    ld   [$3000], a                               ; $2C5E: $EA $00 $30
    call Call_000_3241                            ; $2C61: $CD $41 $32
    ld   a, $1E                                   ; $2C64: $3E $1E
    call Call_000_00D0                            ; $2C66: $CD $D0 $00
    ld   a, [$DF37]                               ; $2C69: $FA $37 $DF
    and  a                                        ; $2C6C: $A7
    jr   nz, jr_000_2CA1                          ; $2C6D: $20 $32

    inc  a                                        ; $2C6F: $3C
    ld   [$DF37], a                               ; $2C70: $EA $37 $DF
    ld   bc, $0401                                ; $2C73: $01 $01 $04
    push bc                                       ; $2C76: $C5

jr_000_2C77:
    pop  bc                                       ; $2C77: $C1
    ld   a, c                                     ; $2C78: $79
    inc  c                                        ; $2C79: $0C
    dec  b                                        ; $2C7A: $05
    jr   z, jr_000_2C96                           ; $2C7B: $28 $19

    push bc                                       ; $2C7D: $C5
    ld   [$DF32], a                               ; $2C7E: $EA $32 $DF
    call Call_000_2EC4                            ; $2C81: $CD $C4 $2E
    call Call_000_2EDD                            ; $2C84: $CD $DD $2E
    ld   a, $C8                                   ; $2C87: $3E $C8
    ld   [$C703], a                               ; $2C89: $EA $03 $C7
    call Call_000_3241                            ; $2C8C: $CD $41 $32
    ld   a, $1E                                   ; $2C8F: $3E $1E
    call Call_000_00D0                            ; $2C91: $CD $D0 $00
    jr   jr_000_2C77                              ; $2C94: $18 $E1

jr_000_2C96:
    xor  a                                        ; $2C96: $AF
    ld   [$C700], a                               ; $2C97: $EA $00 $C7
    inc  a                                        ; $2C9A: $3C
    ld   [$DA03], a                               ; $2C9B: $EA $03 $DA
    call WaitForRequestedVBlank                   ; $2C9E: $CD $90 $00

jr_000_2CA1:
    call Call_000_2EDD                            ; $2CA1: $CD $DD $2E
    call Call_000_075A                            ; $2CA4: $CD $5A $07
    jr   jr_000_2CA1                              ; $2CA7: $18 $F8

Jump_000_2CA9:
    ld   a, $0A                                   ; $2CA9: $3E $0A
    rst  RST_28                                   ; $2CAB: $EF
    ld   b, $68                                   ; $2CAC: $06 $68
    ld   a, $F5                                   ; $2CAE: $3E $F5
    rst  RST_28                                   ; $2CB0: $EF
    jp   Jump_000_2C0D                            ; $2CB1: $C3 $0D $2C


Jump_000_2CB4:
    call Call_000_2E59                            ; $2CB4: $CD $59 $2E
    ld   a, [$DF2E]                               ; $2CB7: $FA $2E $DF

Call_000_2CBA:
    bit  0, a                                     ; $2CBA: $CB $47
    jp   nz, Jump_000_2D44                        ; $2CBC: $C2 $44 $2D

    bit  1, a                                     ; $2CBF: $CB $4F
    jr   z, jr_000_2CCA                           ; $2CC1: $28 $07

    ld   hl, $CC00                                ; $2CC3: $21 $00 $CC
    res  4, [hl]                                  ; $2CC6: $CB $A6
    jr   jr_000_2D40                              ; $2CC8: $18 $76

jr_000_2CCA:
    call Call_000_075A                            ; $2CCA: $CD $5A $07
    ld   a, [$C70D]                               ; $2CCD: $FA $0D $C7
    rrca                                          ; $2CD0: $0F
    jr   nc, jr_000_2CCA                          ; $2CD1: $30 $F7

    ld   a, $20                                   ; $2CD3: $3E $20
    ld   [$C57B], a                               ; $2CD5: $EA $7B $C5

jr_000_2CD8:
    ld   a, [$C57B]                               ; $2CD8: $FA $7B $C5
    bit  0, a                                     ; $2CDB: $CB $47
    jr   nz, jr_000_2CE3                          ; $2CDD: $20 $04

    ld   hl, $C706                                ; $2CDF: $21 $06 $C7
    inc  [hl]                                     ; $2CE2: $34

jr_000_2CE3:
    call Call_000_3236                            ; $2CE3: $CD $36 $32
    call Call_000_3241                            ; $2CE6: $CD $41 $32
    ld   a, [$C57B]                               ; $2CE9: $FA $7B $C5
    dec  a                                        ; $2CEC: $3D
    ld   [$C57B], a                               ; $2CED: $EA $7B $C5
    jr   z, jr_000_2CF7                           ; $2CF0: $28 $05

    call WaitForRequestedVBlank                   ; $2CF2: $CD $90 $00
    jr   jr_000_2CD8                              ; $2CF5: $18 $E1

jr_000_2CF7:
    call Call_000_075A                            ; $2CF7: $CD $5A $07
    ld   a, [$DF30]                               ; $2CFA: $FA $30 $DF
    rrca                                          ; $2CFD: $0F
    jr   nc, jr_000_2CF7                          ; $2CFE: $30 $F7

    ld   a, $80                                   ; $2D00: $3E $80
    ld   [$DF30], a                               ; $2D02: $EA $30 $DF
    call Call_000_05E9                            ; $2D05: $CD $E9 $05
    xor  a                                        ; $2D08: $AF
    ld   [$C57C], a                               ; $2D09: $EA $7C $C5

jr_000_2D0C:
    ld   hl, $C800                                ; $2D0C: $21 $00 $C8
    ld   a, [$C57C]                               ; $2D0F: $FA $7C $C5
    add  h                                        ; $2D12: $84
    ld   h, a                                     ; $2D13: $67
    res  4, [hl]                                  ; $2D14: $CB $A6

jr_000_2D16:
    call Call_000_075A                            ; $2D16: $CD $5A $07
    ld   h, $C8                                   ; $2D19: $26 $C8
    ld   a, [$C57C]                               ; $2D1B: $FA $7C $C5
    add  h                                        ; $2D1E: $84
    ld   h, a                                     ; $2D1F: $67
    ld   l, $0D                                   ; $2D20: $2E $0D
    ld   a, [hl]                                  ; $2D22: $7E
    rrca                                          ; $2D23: $0F
    jr   nc, jr_000_2D16                          ; $2D24: $30 $F0

    ld   l, $00                                   ; $2D26: $2E $00
    xor  a                                        ; $2D28: $AF
    ld   [hl], a                                  ; $2D29: $77
    ld   a, [$C57C]                               ; $2D2A: $FA $7C $C5
    inc  a                                        ; $2D2D: $3C
    ld   [$C57C], a                               ; $2D2E: $EA $7C $C5
    cp   $04                                      ; $2D31: $FE $04
    jr   nz, jr_000_2D0C                          ; $2D33: $20 $D7

    inc  h                                        ; $2D35: $24
    res  4, [hl]                                  ; $2D36: $CB $A6
    call Call_000_05B9                            ; $2D38: $CD $B9 $05

jr_000_2D3B:
    call Call_000_075A                            ; $2D3B: $CD $5A $07
    jr   jr_000_2D3B                              ; $2D3E: $18 $FB

jr_000_2D40:
    xor  a                                        ; $2D40: $AF
    ld   [$DF2E], a                               ; $2D41: $EA $2E $DF

Jump_000_2D44:
jr_000_2D44:
    call Call_000_075A                            ; $2D44: $CD $5A $07
    ld   a, [$C70D]                               ; $2D47: $FA $0D $C7
    rrca                                          ; $2D4A: $0F
    jr   nc, jr_000_2D44                          ; $2D4B: $30 $F7

    call Call_000_2E81                            ; $2D4D: $CD $81 $2E

jr_000_2D50:
    call Call_000_075A                            ; $2D50: $CD $5A $07
    jr   jr_000_2D50                              ; $2D53: $18 $FB

Jump_000_2D55:
    call Call_000_2E59                            ; $2D55: $CD $59 $2E

jr_000_2D58:
    call Call_000_075A                            ; $2D58: $CD $5A $07
    ld   hl, $C70D                                ; $2D5B: $21 $0D $C7
    ld   a, [hl]                                  ; $2D5E: $7E
    rrca                                          ; $2D5F: $0F
    jr   c, jr_000_2D67                           ; $2D60: $38 $05

    inc  h                                        ; $2D62: $24
    ld   a, [hl]                                  ; $2D63: $7E
    rrca                                          ; $2D64: $0F
    jr   nc, jr_000_2D58                          ; $2D65: $30 $F1

jr_000_2D67:
    ld   a, $A0                                   ; $2D67: $3E $A0
    ld   [$C57B], a                               ; $2D69: $EA $7B $C5
    call Call_000_2EA4                            ; $2D6C: $CD $A4 $2E

jr_000_2D6F:
    call Call_000_075A                            ; $2D6F: $CD $5A $07
    jr   jr_000_2D6F                              ; $2D72: $18 $FB

Jump_000_2D74:
    call Call_000_2E59                            ; $2D74: $CD $59 $2E

jr_000_2D77:
    call Call_000_075A                            ; $2D77: $CD $5A $07
    ld   hl, $C70D                                ; $2D7A: $21 $0D $C7
    ld   a, [hl]                                  ; $2D7D: $7E
    rrca                                          ; $2D7E: $0F
    jr   c, jr_000_2D86                           ; $2D7F: $38 $05

    inc  h                                        ; $2D81: $24
    ld   a, [hl]                                  ; $2D82: $7E
    rrca                                          ; $2D83: $0F
    jr   nc, jr_000_2D77                          ; $2D84: $30 $F1

jr_000_2D86:
    ld   hl, $C700                                ; $2D86: $21 $00 $C7
    xor  a                                        ; $2D89: $AF
    ld   [hl], a                                  ; $2D8A: $77
    inc  h                                        ; $2D8B: $24
    ld   [hl], a                                  ; $2D8C: $77

jr_000_2D8D:
    call Call_000_075A                            ; $2D8D: $CD $5A $07
    ld   a, [$C460]                               ; $2D90: $FA $60 $C4
    and  a                                        ; $2D93: $A7
    jr   nz, jr_000_2D8D                          ; $2D94: $20 $F7

    ld   a, $4A                                   ; $2D96: $3E $4A
    ld   [$DF32], a                               ; $2D98: $EA $32 $DF
    call Call_000_2EDD                            ; $2D9B: $CD $DD $2E

jr_000_2D9E:
    call Call_000_075A                            ; $2D9E: $CD $5A $07
    jr   jr_000_2D9E                              ; $2DA1: $18 $FB

Jump_000_2DA3:
    call Call_000_2E59                            ; $2DA3: $CD $59 $2E

jr_000_2DA6:
    call Call_000_075A                            ; $2DA6: $CD $5A $07
    ld   a, [$DF2E]                               ; $2DA9: $FA $2E $DF
    and  a                                        ; $2DAC: $A7
    jr   z, jr_000_2DA6                           ; $2DAD: $28 $F7

    ld   hl, $C70D                                ; $2DAF: $21 $0D $C7
    ld   a, [hl]                                  ; $2DB2: $7E
    rrca                                          ; $2DB3: $0F
    jr   c, jr_000_2DBB                           ; $2DB4: $38 $05

    inc  h                                        ; $2DB6: $24
    ld   a, [hl]                                  ; $2DB7: $7E
    rrca                                          ; $2DB8: $0F
    jr   nc, jr_000_2DA6                          ; $2DB9: $30 $EB

jr_000_2DBB:
    call Call_000_075A                            ; $2DBB: $CD $5A $07
    ld   a, [$C460]                               ; $2DBE: $FA $60 $C4
    and  a                                        ; $2DC1: $A7
    jr   nz, jr_000_2DBB                          ; $2DC2: $20 $F7

    xor  a                                        ; $2DC4: $AF
    ld   [$C57E], a                               ; $2DC5: $EA $7E $C5
    call Call_000_063E                            ; $2DC8: $CD $3E $06
    ld   hl, $C700                                ; $2DCB: $21 $00 $C7
    xor  a                                        ; $2DCE: $AF
    ld   [hl], a                                  ; $2DCF: $77
    inc  h                                        ; $2DD0: $24
    ld   [hl], a                                  ; $2DD1: $77
    call Call_000_3241                            ; $2DD2: $CD $41 $32
    ld   a, $3F                                   ; $2DD5: $3E $3F
    call Call_000_00D0                            ; $2DD7: $CD $D0 $00
    xor  a                                        ; $2DDA: $AF
    ld   [$DF07], a                               ; $2DDB: $EA $07 $DF
    ld   [$DF08], a                               ; $2DDE: $EA $08 $DF
    ld   [$DF06], a                               ; $2DE1: $EA $06 $DF
    ld   a, $11                                   ; $2DE4: $3E $11
    ld   [$DF03], a                               ; $2DE6: $EA $03 $DF
    ld   a, $01                                   ; $2DE9: $3E $01
    ld   [$DF01], a                               ; $2DEB: $EA $01 $DF
    jp   $0570                                    ; $2DEE: $C3 $70 $05


Jump_000_2DF1:
    ld   a, $0A                                   ; $2DF1: $3E $0A
    rst  RST_28                                   ; $2DF3: $EF
    ld   b, $68                                   ; $2DF4: $06 $68
    ld   a, $F5                                   ; $2DF6: $3E $F5
    rst  RST_28                                   ; $2DF8: $EF

jr_000_2DF9:
    call Call_000_075A                            ; $2DF9: $CD $5A $07
    ld   hl, $C70D                                ; $2DFC: $21 $0D $C7
    ld   a, [hl]                                  ; $2DFF: $7E
    rrca                                          ; $2E00: $0F
    jr   c, jr_000_2E08                           ; $2E01: $38 $05

    inc  h                                        ; $2E03: $24
    ld   a, [hl]                                  ; $2E04: $7E
    rrca                                          ; $2E05: $0F
    jr   nc, jr_000_2DF9                          ; $2E06: $30 $F1

jr_000_2E08:
    call Call_000_075A                            ; $2E08: $CD $5A $07
    ld   a, [$C460]                               ; $2E0B: $FA $60 $C4
    and  a                                        ; $2E0E: $A7
    jr   nz, jr_000_2E08                          ; $2E0F: $20 $F7

    jp   Jump_000_3466                            ; $2E11: $C3 $66 $34


Jump_000_2E14:
    call Call_000_2E59                            ; $2E14: $CD $59 $2E

jr_000_2E17:
    call Call_000_075A                            ; $2E17: $CD $5A $07
    ld   a, [$DF30]                               ; $2E1A: $FA $30 $DF
    and  a                                        ; $2E1D: $A7
    jr   z, jr_000_2E17                           ; $2E1E: $28 $F7

    ld   a, [$DF1A]                               ; $2E20: $FA $1A $DF
    res  1, a                                     ; $2E23: $CB $8F
    ld   [$DF1A], a                               ; $2E25: $EA $1A $DF
    xor  a                                        ; $2E28: $AF
    ld   [$DF30], a                               ; $2E29: $EA $30 $DF
    jr   jr_000_2E17                              ; $2E2C: $18 $E9

Jump_000_2E2E:
    xor  a                                        ; $2E2E: $AF
    ld   [$DF2E], a                               ; $2E2F: $EA $2E $DF
    jp   Jump_000_2BC4                            ; $2E32: $C3 $C4 $2B


Jump_000_2E35:
    ld   a, [$DF31]                               ; $2E35: $FA $31 $DF
    and  a                                        ; $2E38: $A7
    jr   z, jr_000_2E44                           ; $2E39: $28 $09

    xor  a                                        ; $2E3B: $AF
    ld   [$DF31], a                               ; $2E3C: $EA $31 $DF
    ld   a, $70                                   ; $2E3F: $3E $70
    ld   [$DF32], a                               ; $2E41: $EA $32 $DF

jr_000_2E44:
    jp   Jump_000_2BC4                            ; $2E44: $C3 $C4 $2B


Jump_000_2E47:
    ld   a, [$DF31]                               ; $2E47: $FA $31 $DF
    and  a                                        ; $2E4A: $A7
    jr   z, jr_000_2E56                           ; $2E4B: $28 $09

    xor  a                                        ; $2E4D: $AF
    ld   [$DF31], a                               ; $2E4E: $EA $31 $DF
    ld   a, $71                                   ; $2E51: $3E $71
    ld   [$DF32], a                               ; $2E53: $EA $32 $DF

jr_000_2E56:
    jp   Jump_000_2BC4                            ; $2E56: $C3 $C4 $2B


Call_000_2E59:
    ld   a, [$DF01]                               ; $2E59: $FA $01 $DF
    rlca                                          ; $2E5C: $07
    jr   c, jr_000_2E65                           ; $2E5D: $38 $06

    ld   a, [$DF09]                               ; $2E5F: $FA $09 $DF
    rrca                                          ; $2E62: $0F
    jr   c, jr_000_2E72                           ; $2E63: $38 $0D

jr_000_2E65:
    ld   hl, $DF01                                ; $2E65: $21 $01 $DF
    res  7, [hl]                                  ; $2E68: $CB $BE
    ld   a, $02                                   ; $2E6A: $3E $02
    rst  RST_28                                   ; $2E6C: $EF
    ld   b, $68                                   ; $2E6D: $06 $68
    ld   a, $F5                                   ; $2E6F: $3E $F5
    rst  RST_28                                   ; $2E71: $EF

jr_000_2E72:
    ret                                           ; $2E72: $C9


    ld   a, $01                                   ; $2E73: $3E $01
    ld   [$C3C5], a                               ; $2E75: $EA $C5 $C3
    ld   [$3000], a                               ; $2E78: $EA $00 $30
    call $4EE8                                    ; $2E7B: $CD $E8 $4E
    jp   WaitForRequestedVBlank                   ; $2E7E: $C3 $90 $00


Call_000_2E81:
    ld   a, $20                                   ; $2E81: $3E $20
    ld   [$C57B], a                               ; $2E83: $EA $7B $C5

jr_000_2E86:
    ld   a, [$C57B]                               ; $2E86: $FA $7B $C5
    bit  0, a                                     ; $2E89: $CB $47
    jr   nz, jr_000_2E91                          ; $2E8B: $20 $04

    ld   hl, $C703                                ; $2E8D: $21 $03 $C7
    dec  [hl]                                     ; $2E90: $35

jr_000_2E91:
    call Call_000_3236                            ; $2E91: $CD $36 $32
    call Call_000_3241                            ; $2E94: $CD $41 $32
    ld   a, [$C57B]                               ; $2E97: $FA $7B $C5
    dec  a                                        ; $2E9A: $3D
    ld   [$C57B], a                               ; $2E9B: $EA $7B $C5
    ret  z                                        ; $2E9E: $C8

    call WaitForRequestedVBlank                   ; $2E9F: $CD $90 $00
    jr   jr_000_2E86                              ; $2EA2: $18 $E2

Call_000_2EA4:
jr_000_2EA4:
    ld   a, [$C57B]                               ; $2EA4: $FA $7B $C5
    bit  0, a                                     ; $2EA7: $CB $47
    jr   nz, jr_000_2EB1                          ; $2EA9: $20 $06

    ld   hl, $C703                                ; $2EAB: $21 $03 $C7
    dec  [hl]                                     ; $2EAE: $35
    inc  h                                        ; $2EAF: $24
    dec  [hl]                                     ; $2EB0: $35

jr_000_2EB1:
    call Call_000_3236                            ; $2EB1: $CD $36 $32
    call Call_000_3241                            ; $2EB4: $CD $41 $32
    ld   a, [$C57B]                               ; $2EB7: $FA $7B $C5

Call_000_2EBA:
    dec  a                                        ; $2EBA: $3D
    ld   [$C57B], a                               ; $2EBB: $EA $7B $C5
    ret  z                                        ; $2EBE: $C8

    call WaitForRequestedVBlank                   ; $2EBF: $CD $90 $00
    jr   jr_000_2EA4                              ; $2EC2: $18 $E0

Call_000_2EC4:
    ld   a, $40                                   ; $2EC4: $3E $40
    ld   [$C57B], a                               ; $2EC6: $EA $7B $C5

jr_000_2EC9:
    ld   hl, $C703                                ; $2EC9: $21 $03 $C7
    dec  [hl]                                     ; $2ECC: $35
    call Call_000_3236                            ; $2ECD: $CD $36 $32
    call Call_000_3241                            ; $2ED0: $CD $41 $32
    ld   hl, $C57B                                ; $2ED3: $21 $7B $C5
    dec  [hl]                                     ; $2ED6: $35
    ret  z                                        ; $2ED7: $C8

    call WaitForRequestedVBlank                   ; $2ED8: $CD $90 $00
    jr   jr_000_2EC9                              ; $2EDB: $18 $EC

Call_000_2EDD:
    ld   a, [$DF32]                               ; $2EDD: $FA $32 $DF
    and  a                                        ; $2EE0: $A7
    ret  z                                        ; $2EE1: $C8

    ld   a, [$C274]                               ; $2EE2: $FA $74 $C2
    ld   b, a                                     ; $2EE5: $47
    xor  a                                        ; $2EE6: $AF
    call SetObjectAnimationIfChanged              ; $2EE7: $CD $61 $00
    call Call_000_3241                            ; $2EEA: $CD $41 $32
    xor  a                                        ; $2EED: $AF
    ld   [$C564], a                               ; $2EEE: $EA $64 $C5
    ld   a, $07                                   ; $2EF1: $3E $07
    ld   [$C361], a                               ; $2EF3: $EA $61 $C3
    call Call_000_151A                            ; $2EF6: $CD $1A $15
    ld   a, $60                                   ; $2EF9: $3E $60
    ld   [$C360], a                               ; $2EFB: $EA $60 $C3
    ld   a, [$DF32]                               ; $2EFE: $FA $32 $DF
    ld   b, a                                     ; $2F01: $47
    call Call_000_1582                            ; $2F02: $CD $82 $15
    xor  a                                        ; $2F05: $AF
    ld   [$C463], a                               ; $2F06: $EA $63 $C4
    ld   [$DF32], a                               ; $2F09: $EA $32 $DF
    ld   a, $90                                   ; $2F0C: $3E $90
    ld   [$C360], a                               ; $2F0E: $EA $60 $C3
    jp   WaitForRequestedVBlank                   ; $2F11: $C3 $90 $00


    call LoadDialogueRecordVoice                  ; $2F14: $CD $44 $30
    jp   ResolveDialogueTextPointer               ; $2F17: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2F1A: $CD $44 $30
    ld   a, [de]                                  ; $2F1D: $1A
    inc  de                                       ; $2F1E: $13
    ld   b, a                                     ; $2F1F: $47
    ld   a, [$DF14]                               ; $2F20: $FA $14 $DF
    dec  a                                        ; $2F23: $3D
    jr   z, jr_000_2F27                           ; $2F24: $28 $01

    inc  de                                       ; $2F26: $13

jr_000_2F27:
    jp   ResolveDialogueTextPointer               ; $2F27: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2F2A: $CD $44 $30
    ld   hl, $C584                                ; $2F2D: $21 $84 $C5
    set  6, [hl]                                  ; $2F30: $CB $F6
    ld   a, [de]                                  ; $2F32: $1A
    inc  de                                       ; $2F33: $13
    ld   b, a                                     ; $2F34: $47
    ld   a, [$DF1A]                               ; $2F35: $FA $1A $DF
    and  b                                        ; $2F38: $A0
    jr   z, jr_000_2F3E                           ; $2F39: $28 $03

    inc  de                                       ; $2F3B: $13
    res  6, [hl]                                  ; $2F3C: $CB $B6

jr_000_2F3E:
    jp   ResolveDialogueTextPointer               ; $2F3E: $C3 $63 $30


Call_000_2F41:
    call Call_000_2F7F                            ; $2F41: $CD $7F $2F
    call Call_000_05A4                            ; $2F44: $CD $A4 $05
    ld   hl, $C565                                ; $2F47: $21 $65 $C5
    ld   de, $C967                                ; $2F4A: $11 $67 $C9
    ld   a, [de]                                  ; $2F4D: $1A
    dec  e                                        ; $2F4E: $1D
    ld   [hl+], a                                 ; $2F4F: $22
    ld   a, [de]                                  ; $2F50: $1A
    dec  e                                        ; $2F51: $1D
    ld   [hl+], a                                 ; $2F52: $22
    ld   a, [de]                                  ; $2F53: $1A
    dec  e                                        ; $2F54: $1D
    ld   [hl+], a                                 ; $2F55: $22
    ld   a, [de]                                  ; $2F56: $1A
    dec  e                                        ; $2F57: $1D
    ld   [hl+], a                                 ; $2F58: $22
    ld   a, $CD                                   ; $2F59: $3E $CD
    ld   [hl+], a                                 ; $2F5B: $22
    ld   a, [de]                                  ; $2F5C: $1A
    dec  e                                        ; $2F5D: $1D
    ld   [hl+], a                                 ; $2F5E: $22
    ld   a, [de]                                  ; $2F5F: $1A
    dec  e                                        ; $2F60: $1D
    ld   [hl+], a                                 ; $2F61: $22
    ld   a, [de]                                  ; $2F62: $1A
    dec  e                                        ; $2F63: $1D
    ld   [hl+], a                                 ; $2F64: $22
    ld   a, [de]                                  ; $2F65: $1A
    dec  e                                        ; $2F66: $1D
    ld   [hl+], a                                 ; $2F67: $22
    ld   a, $01                                   ; $2F68: $3E $01
    ld   [$C561], a                               ; $2F6A: $EA $61 $C5
    ld   a, $09                                   ; $2F6D: $3E $09
    ld   [$C563], a                               ; $2F6F: $EA $63 $C5
    ld   a, $9C                                   ; $2F72: $3E $9C
    ld   [$C560], a                               ; $2F74: $EA $60 $C5
    ld   a, $44                                   ; $2F77: $3E $44
    ld   [$C562], a                               ; $2F79: $EA $62 $C5
    jp   WaitForRequestedVBlank                   ; $2F7C: $C3 $90 $00


Call_000_2F7F:
    ld   a, [$DF08]                               ; $2F7F: $FA $08 $DF
    dec  a                                        ; $2F82: $3D
    rlca                                          ; $2F83: $07
    rlca                                          ; $2F84: $07
    swap a                                        ; $2F85: $CB $37
    add  $18                                      ; $2F87: $C6 $18
    ld   h, $DD                                   ; $2F89: $26 $DD
    ld   l, a                                     ; $2F8B: $6F
    ld   a, [hl]                                  ; $2F8C: $7E
    ld   [$DF1B], a                               ; $2F8D: $EA $1B $DF
    or   $80                                      ; $2F90: $F6 $80
    ld   [$DF04], a                               ; $2F92: $EA $04 $DF
    ret                                           ; $2F95: $C9


    call LoadDialogueRecordVoice                  ; $2F96: $CD $44 $30
    ld   a, [$DF1A]                               ; $2F99: $FA $1A $DF
    bit  2, a                                     ; $2F9C: $CB $57
    jp   nz, ResolveDialogueTextPointer           ; $2F9E: $C2 $63 $30

    inc  de                                       ; $2FA1: $13
    ld   a, [$DF14]                               ; $2FA2: $FA $14 $DF
    bit  1, a                                     ; $2FA5: $CB $4F
    jp   nz, ResolveDialogueTextPointer           ; $2FA7: $C2 $63 $30

    inc  de                                       ; $2FAA: $13
    ld   a, [$DF1A]                               ; $2FAB: $FA $1A $DF
    bit  0, a                                     ; $2FAE: $CB $47
    jp   nz, ResolveDialogueTextPointer           ; $2FB0: $C2 $63 $30

    inc  de                                       ; $2FB3: $13
    jp   ResolveDialogueTextPointer               ; $2FB4: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2FB7: $CD $44 $30
    ld   a, [$DF1A]                               ; $2FBA: $FA $1A $DF
    bit  3, a                                     ; $2FBD: $CB $5F
    jp   nz, ResolveDialogueTextPointer           ; $2FBF: $C2 $63 $30

    ld   a, $01                                   ; $2FC2: $3E $01
    ld   [$C584], a                               ; $2FC4: $EA $84 $C5
    inc  de                                       ; $2FC7: $13
    ld   a, [$DF1A]                               ; $2FC8: $FA $1A $DF
    bit  2, a                                     ; $2FCB: $CB $57
    jp   nz, ResolveDialogueTextPointer           ; $2FCD: $C2 $63 $30

    xor  a                                        ; $2FD0: $AF
    ld   [$C584], a                               ; $2FD1: $EA $84 $C5
    inc  de                                       ; $2FD4: $13
    jp   ResolveDialogueTextPointer               ; $2FD5: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2FD8: $CD $44 $30
    ld   a, [$DF0E]                               ; $2FDB: $FA $0E $DF
    cp   $02                                      ; $2FDE: $FE $02
    jp   z, ResolveDialogueTextPointer            ; $2FE0: $CA $63 $30

    inc  de                                       ; $2FE3: $13
    jp   ResolveDialogueTextPointer               ; $2FE4: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2FE7: $CD $44 $30
    ld   a, [$DF1A]                               ; $2FEA: $FA $1A $DF
    bit  6, a                                     ; $2FED: $CB $77
    ld   [$C4AD], a                               ; $2FEF: $EA $AD $C4
    jp   nz, ResolveDialogueTextPointer           ; $2FF2: $C2 $63 $30

    xor  a                                        ; $2FF5: $AF
    ld   [$C4AD], a                               ; $2FF6: $EA $AD $C4
    inc  de                                       ; $2FF9: $13
    jp   ResolveDialogueTextPointer               ; $2FFA: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $2FFD: $CD $44 $30
    ld   a, [$DF2E]                               ; $3000: $FA $2E $DF
    rrca                                          ; $3003: $0F
    jp   c, ResolveDialogueTextPointer            ; $3004: $DA $63 $30

    inc  de                                       ; $3007: $13
    jp   ResolveDialogueTextPointer               ; $3008: $C3 $63 $30


    call LoadDialogueRecordVoice                  ; $300B: $CD $44 $30
    ld   a, [$DF08]                               ; $300E: $FA $08 $DF
    dec  a                                        ; $3011: $3D
    rlca                                          ; $3012: $07
    rlca                                          ; $3013: $07
    swap a                                        ; $3014: $CB $37
    add  $18                                      ; $3016: $C6 $18
    ld   h, $DD                                   ; $3018: $26 $DD
    ld   l, a                                     ; $301A: $6F
    ld   a, [hl]                                  ; $301B: $7E
    ld   l, $08                                   ; $301C: $2E $08
    cp   $03                                      ; $301E: $FE $03
    jr   c, jr_000_3030                           ; $3020: $38 $0E

    inc  de                                       ; $3022: $13
    inc  de                                       ; $3023: $13
    inc  de                                       ; $3024: $13
    ld   l, $10                                   ; $3025: $2E $10
    cp   $05                                      ; $3027: $FE $05
    jr   c, jr_000_3030                           ; $3029: $38 $05

    inc  de                                       ; $302B: $13
    inc  de                                       ; $302C: $13
    inc  de                                       ; $302D: $13
    ld   l, $20                                   ; $302E: $2E $20

jr_000_3030:
    ld   a, [$DF17]                               ; $3030: $FA $17 $DF
    cp   $09                                      ; $3033: $FE $09
    jp   nc, ResolveDialogueTextPointer           ; $3035: $D2 $63 $30

    inc  de                                       ; $3038: $13
    ld   a, [$DF18]                               ; $3039: $FA $18 $DF
    sub  l                                        ; $303C: $95
    jp   nc, ResolveDialogueTextPointer           ; $303D: $D2 $63 $30

    inc  de                                       ; $3040: $13
    jp   ResolveDialogueTextPointer               ; $3041: $C3 $63 $30


LoadDialogueRecordVoice::
    push de                                       ; $3044: $D5
    call Call_000_3236                            ; $3045: $CD $36 $32
    call WaitForRequestedVBlank                   ; $3048: $CD $90 $00
    call Call_000_3236                            ; $304B: $CD $36 $32
    call Call_000_3241                            ; $304E: $CD $41 $32
    call WaitForRequestedVBlank                   ; $3051: $CD $90 $00
    pop  de                                       ; $3054: $D1
    ld   a, $05                                   ; $3055: $3E $05
    ld   [$C3C5], a                               ; $3057: $EA $C5 $C3
    ld   [$3000], a                               ; $305A: $EA $00 $30
    ld   a, [de]                                  ; $305D: $1A
    inc  de                                       ; $305E: $13
    ld   [$C57A], a                               ; $305F: $EA $7A $C5
    ret                                           ; $3062: $C9


ResolveDialogueTextPointer::
    ld   a, [de]                                  ; $3063: $1A
    ld   hl, $6000                                ; $3064: $21 $00 $60
    call Add2AToHL                                ; $3067: $CD $81 $00
    ld   a, [hl+]                                 ; $306A: $2A
    ld   h, [hl]                                  ; $306B: $66
    ld   l, a                                     ; $306C: $6F

Jump_000_306D:
jr_000_306D:
    ld   a, $9C                                   ; $306D: $3E $9C
    ld   [$C560], a                               ; $306F: $EA $60 $C5
    ld   a, $41                                   ; $3072: $3E $41
    ld   [$C562], a                               ; $3074: $EA $62 $C5

AdvanceDialogueTextStream::
    ld   a, [hl+]                                 ; $3077: $2A
    ld   b, a                                     ; $3078: $47
    bit  7, a                                     ; $3079: $CB $7F
    jr   z, jr_000_308F                           ; $307B: $28 $12

    push hl                                       ; $307D: $E5
    res  7, a                                     ; $307E: $CB $BF
    ld   hl, $6128                                ; $3080: $21 $28 $61
    call Add2AToHL                                ; $3083: $CD $81 $00
    ld   a, [hl+]                                 ; $3086: $2A
    ld   h, [hl]                                  ; $3087: $66
    ld   l, a                                     ; $3088: $6F
    call Call_000_3205                            ; $3089: $CD $05 $32
    pop  hl                                       ; $308C: $E1
    jr   AdvanceDialogueTextStream                ; $308D: $18 $E8

jr_000_308F:
    sub  $7F                                      ; $308F: $D6 $7F
    jr   nz, jr_000_30A5                          ; $3091: $20 $12

jr_000_3093:
    ld   a, [$C262]                               ; $3093: $FA $62 $C2
    and  $03                                      ; $3096: $E6 $03
    jr   nz, jr_000_309F                          ; $3098: $20 $05

    call WaitForRequestedVBlank                   ; $309A: $CD $90 $00
    jr   jr_000_3093                              ; $309D: $18 $F4

jr_000_309F:
    ld   a, $04                                   ; $309F: $3E $04
    ld   [$C463], a                               ; $30A1: $EA $63 $C4
    ret                                           ; $30A4: $C9


jr_000_30A5:
    inc  a                                        ; $30A5: $3C
    jr   nz, jr_000_30B2                          ; $30A6: $20 $0A

    ld   a, [hl]                                  ; $30A8: $7E
    ld   c, a                                     ; $30A9: $4F
    cp   $08                                      ; $30AA: $FE $08
    jp   z, Jump_000_326F                         ; $30AC: $CA $6F $32

    jp   Jump_000_3254                            ; $30AF: $C3 $54 $32


jr_000_30B2:
    inc  a                                        ; $30B2: $3C
    jr   nz, jr_000_30BC                          ; $30B3: $20 $07

    ld   a, $81                                   ; $30B5: $3E $81
    ld   [$C562], a                               ; $30B7: $EA $62 $C5
    jr   AdvanceDialogueTextStream                ; $30BA: $18 $BB

jr_000_30BC:
    inc  a                                        ; $30BC: $3C
    jr   nz, jr_000_30DE                          ; $30BD: $20 $1F

jr_000_30BF:
    ld   a, [$C262]                               ; $30BF: $FA $62 $C2
    and  $03                                      ; $30C2: $E6 $03
    jr   nz, jr_000_30D0                          ; $30C4: $20 $0A

    push hl                                       ; $30C6: $E5
    call Call_000_1796                            ; $30C7: $CD $96 $17
    call WaitForRequestedVBlank                   ; $30CA: $CD $90 $00
    pop  hl                                       ; $30CD: $E1
    jr   jr_000_30BF                              ; $30CE: $18 $EF

jr_000_30D0:
    push hl                                       ; $30D0: $E5
    xor  a                                        ; $30D1: $AF
    ld   [$C004], a                               ; $30D2: $EA $04 $C0
    ld   [$C564], a                               ; $30D5: $EA $64 $C5
    call Call_000_151A                            ; $30D8: $CD $1A $15
    pop  hl                                       ; $30DB: $E1
    jr   jr_000_306D                              ; $30DC: $18 $8F

jr_000_30DE:
    inc  a                                        ; $30DE: $3C
    jr   nz, jr_000_30E8                          ; $30DF: $20 $07

    ld   a, [hl+]                                 ; $30E1: $2A
    call Call_000_00D0                            ; $30E2: $CD $D0 $00
    jp   AdvanceDialogueTextStream                ; $30E5: $C3 $77 $30


jr_000_30E8:
    inc  a                                        ; $30E8: $3C
    inc  a                                        ; $30E9: $3C
    jr   nz, jr_000_30FE                          ; $30EA: $20 $12

    ld   a, [hl]                                  ; $30EC: $7E
    rst  RST_28                                   ; $30ED: $EF
    ld   c, $C0                                   ; $30EE: $0E $C0
    ld   a, [hl+]                                 ; $30F0: $2A
    cp   $2D                                      ; $30F1: $FE $2D
    jr   nz, jr_000_30F7                          ; $30F3: $20 $02

    ld   c, $60                                   ; $30F5: $0E $60

jr_000_30F7:
    ld   a, c                                     ; $30F7: $79
    call Call_000_00D0                            ; $30F8: $CD $D0 $00
    jp   AdvanceDialogueTextStream                ; $30FB: $C3 $77 $30


jr_000_30FE:
    inc  a                                        ; $30FE: $3C
    jr   nz, jr_000_310D                          ; $30FF: $20 $0C

    ld   a, [hl+]                                 ; $3101: $2A
    ld   c, a                                     ; $3102: $4F
    ld   a, [$DF1A]                               ; $3103: $FA $1A $DF
    or   c                                        ; $3106: $B1
    ld   [$DF1A], a                               ; $3107: $EA $1A $DF
    jp   AdvanceDialogueTextStream                ; $310A: $C3 $77 $30


jr_000_310D:
    inc  a                                        ; $310D: $3C
    jr   nz, jr_000_313D                          ; $310E: $20 $2D

    ld   a, [hl+]                                 ; $3110: $2A
    bit  7, a                                     ; $3111: $CB $7F
    jr   z, jr_000_311D                           ; $3113: $28 $08

    and  $0F                                      ; $3115: $E6 $0F
    ld   [$DF15], a                               ; $3117: $EA $15 $DF
    jp   AdvanceDialogueTextStream                ; $311A: $C3 $77 $30


jr_000_311D:
    bit  6, a                                     ; $311D: $CB $77
    jr   z, jr_000_3129                           ; $311F: $28 $08

    and  $0F                                      ; $3121: $E6 $0F
    ld   [$DF13], a                               ; $3123: $EA $13 $DF
    jp   AdvanceDialogueTextStream                ; $3126: $C3 $77 $30


jr_000_3129:
    bit  5, a                                     ; $3129: $CB $6F
    jr   z, jr_000_3135                           ; $312B: $28 $08

    and  $0F                                      ; $312D: $E6 $0F
    ld   [$DF0E], a                               ; $312F: $EA $0E $DF
    jp   AdvanceDialogueTextStream                ; $3132: $C3 $77 $30


jr_000_3135:
    and  $0F                                      ; $3135: $E6 $0F
    ld   [$DF16], a                               ; $3137: $EA $16 $DF
    jp   AdvanceDialogueTextStream                ; $313A: $C3 $77 $30


jr_000_313D:
    inc  a                                        ; $313D: $3C
    jr   nz, jr_000_3151                          ; $313E: $20 $11

    ld   a, $FF                                   ; $3140: $3E $FF
    call Call_000_00D0                            ; $3142: $CD $D0 $00
    push hl                                       ; $3145: $E5
    xor  a                                        ; $3146: $AF
    ld   [$C564], a                               ; $3147: $EA $64 $C5
    call Call_000_151A                            ; $314A: $CD $1A $15
    pop  hl                                       ; $314D: $E1
    jp   Jump_000_306D                            ; $314E: $C3 $6D $30


jr_000_3151:
    inc  a                                        ; $3151: $3C
    jr   nz, jr_000_315F                          ; $3152: $20 $0B

    ld   a, $FF                                   ; $3154: $3E $FF
    call Call_000_00D0                            ; $3156: $CD $D0 $00
    ld   a, $04                                   ; $3159: $3E $04
    ld   [$C463], a                               ; $315B: $EA $63 $C4
    ret                                           ; $315E: $C9


jr_000_315F:
    inc  a                                        ; $315F: $3C
    jr   nz, jr_000_3197                          ; $3160: $20 $35

    ld   a, [hl+]                                 ; $3162: $2A
    bit  7, a                                     ; $3163: $CB $7F
    jr   z, jr_000_317A                           ; $3165: $28 $13

    and  $0F                                      ; $3167: $E6 $0F
    ld   c, a                                     ; $3169: $4F
    ld   a, [$DF17]                               ; $316A: $FA $17 $DF
    add  c                                        ; $316D: $81
    cp   $0A                                      ; $316E: $FE $0A
    jr   c, jr_000_3174                           ; $3170: $38 $02

    ld   a, $09                                   ; $3172: $3E $09

jr_000_3174:
    ld   [$DF17], a                               ; $3174: $EA $17 $DF
    jp   AdvanceDialogueTextStream                ; $3177: $C3 $77 $30


jr_000_317A:
    bit  6, a                                     ; $317A: $CB $77
    jr   z, jr_000_3186                           ; $317C: $28 $08

    ld   a, $01                                   ; $317E: $3E $01
    ld   [$DF19], a                               ; $3180: $EA $19 $DF
    jp   AdvanceDialogueTextStream                ; $3183: $C3 $77 $30


jr_000_3186:
    ld   b, a                                     ; $3186: $47
    ld   a, [$DF18]                               ; $3187: $FA $18 $DF
    add  b                                        ; $318A: $80
    cp   $64                                      ; $318B: $FE $64
    jr   c, jr_000_3191                           ; $318D: $38 $02

    ld   a, $63                                   ; $318F: $3E $63

jr_000_3191:
    ld   [$DF18], a                               ; $3191: $EA $18 $DF
    jp   AdvanceDialogueTextStream                ; $3194: $C3 $77 $30


jr_000_3197:
    inc  a                                        ; $3197: $3C
    jr   nz, jr_000_31AC                          ; $3198: $20 $12

    ld   a, [hl+]                                 ; $319A: $2A
    ld   [$DF02], a                               ; $319B: $EA $02 $DF
    ld   a, $01                                   ; $319E: $3E $01
    ld   [$C3C5], a                               ; $31A0: $EA $C5 $C3
    ld   [$3000], a                               ; $31A3: $EA $00 $30
    call $71A7                                    ; $31A6: $CD $A7 $71
    jp   $7142                                    ; $31A9: $C3 $42 $71


jr_000_31AC:
    inc  a                                        ; $31AC: $3C
    jr   nz, jr_000_31CA                          ; $31AD: $20 $1B

    ld   a, [$DF2D]                               ; $31AF: $FA $2D $DF
    ld   d, $DA                                   ; $31B2: $16 $DA
    ld   e, a                                     ; $31B4: $5F
    ld   a, $80                                   ; $31B5: $3E $80
    ld   [de], a                                  ; $31B7: $12
    ld   a, [hl+]                                 ; $31B8: $2A
    ld   [$DF02], a                               ; $31B9: $EA $02 $DF
    ld   a, $01                                   ; $31BC: $3E $01
    ld   [$C3C5], a                               ; $31BE: $EA $C5 $C3
    ld   [$3000], a                               ; $31C1: $EA $00 $30
    call $71A7                                    ; $31C4: $CD $A7 $71
    jp   $7142                                    ; $31C7: $C3 $42 $71


jr_000_31CA:
    inc  a                                        ; $31CA: $3C
    jr   nz, jr_000_31D5                          ; $31CB: $20 $08

    push hl                                       ; $31CD: $E5
    call Call_000_2F41                            ; $31CE: $CD $41 $2F
    pop  hl                                       ; $31D1: $E1
    jp   AdvanceDialogueTextStream                ; $31D2: $C3 $77 $30


jr_000_31D5:
    ld   a, b                                     ; $31D5: $78
    cp   $20                                      ; $31D6: $FE $20
    jr   nz, jr_000_31E2                          ; $31D8: $20 $08

    ld   a, $10                                   ; $31DA: $3E $10
    call Call_000_00D0                            ; $31DC: $CD $D0 $00
    push hl                                       ; $31DF: $E5
    jr   jr_000_31F4                              ; $31E0: $18 $12

jr_000_31E2:
    push hl                                       ; $31E2: $E5
    add  $A0                                      ; $31E3: $C6 $A0
    ld   [$C565], a                               ; $31E5: $EA $65 $C5
    ld   a, $01                                   ; $31E8: $3E $01
    ld   [$C561], a                               ; $31EA: $EA $61 $C5
    ld   [$C563], a                               ; $31ED: $EA $63 $C5
    ld   a, [$C57A]                               ; $31F0: $FA $7A $C5
    rst  RST_28                                   ; $31F3: $EF

jr_000_31F4:
    ld   a, [$C562]                               ; $31F4: $FA $62 $C5
    inc  a                                        ; $31F7: $3C
    ld   [$C562], a                               ; $31F8: $EA $62 $C5
    call WaitForRequestedVBlank                   ; $31FB: $CD $90 $00
    call WaitForRequestedVBlank                   ; $31FE: $CD $90 $00
    pop  hl                                       ; $3201: $E1
    jp   AdvanceDialogueTextStream                ; $3202: $C3 $77 $30


Call_000_3205:
jr_000_3205:
    ld   a, [hl+]                                 ; $3205: $2A
    and  a                                        ; $3206: $A7
    ret  z                                        ; $3207: $C8

    cp   $20                                      ; $3208: $FE $20
    jr   nz, jr_000_3214                          ; $320A: $20 $08

    ld   a, $10                                   ; $320C: $3E $10
    call Call_000_00D0                            ; $320E: $CD $D0 $00
    push hl                                       ; $3211: $E5
    jr   jr_000_3226                              ; $3212: $18 $12

jr_000_3214:
    push hl                                       ; $3214: $E5
    add  $A0                                      ; $3215: $C6 $A0
    ld   [$C565], a                               ; $3217: $EA $65 $C5
    ld   a, $01                                   ; $321A: $3E $01
    ld   [$C561], a                               ; $321C: $EA $61 $C5
    ld   [$C563], a                               ; $321F: $EA $63 $C5
    ld   a, [$C57A]                               ; $3222: $FA $7A $C5
    rst  RST_28                                   ; $3225: $EF

jr_000_3226:
    ld   a, [$C562]                               ; $3226: $FA $62 $C5
    inc  a                                        ; $3229: $3C
    ld   [$C562], a                               ; $322A: $EA $62 $C5
    call WaitForRequestedVBlank                   ; $322D: $CD $90 $00
    call WaitForRequestedVBlank                   ; $3230: $CD $90 $00
    pop  hl                                       ; $3233: $E1
    jr   jr_000_3205                              ; $3234: $18 $CF

Call_000_3236:
    ld   a, $01                                   ; $3236: $3E $01
    ld   [$C3C5], a                               ; $3238: $EA $C5 $C3
    ld   [$3000], a                               ; $323B: $EA $00 $30
    jp   $4F23                                    ; $323E: $C3 $23 $4F


Call_000_3241:
    ld   a, $02                                   ; $3241: $3E $02
    ld   [$C3C5], a                               ; $3243: $EA $C5 $C3
    ld   [$3000], a                               ; $3246: $EA $00 $30
    call $6967                                    ; $3249: $CD $67 $69
    ld   a, $08                                   ; $324C: $3E $08
    ld   [$C7CB], a                               ; $324E: $EA $CB $C7
    jp   $69C4                                    ; $3251: $C3 $C4 $69


Jump_000_3254:
    push bc                                       ; $3254: $C5
    call Call_000_32B6                            ; $3255: $CD $B6 $32
    pop  bc                                       ; $3258: $C1
    ld   a, c                                     ; $3259: $79
    ld   hl, $3330                                ; $325A: $21 $30 $33
    rlca                                          ; $325D: $07
    call AddAToHL                                 ; $325E: $CD $71 $00
    ld   a, [$C583]                               ; $3261: $FA $83 $C5
    and  a                                        ; $3264: $A7
    jr   z, jr_000_3268                           ; $3265: $28 $01

    inc  hl                                       ; $3267: $23

jr_000_3268:
    ld   a, [hl]                                  ; $3268: $7E
    call Call_000_3326                            ; $3269: $CD $26 $33
    jp   Jump_000_306D                            ; $326C: $C3 $6D $30


Jump_000_326F:
    push bc                                       ; $326F: $C5
    call Call_000_32B6                            ; $3270: $CD $B6 $32
    pop  bc                                       ; $3273: $C1
    ld   a, c                                     ; $3274: $79
    ld   hl, $3330                                ; $3275: $21 $30 $33
    rlca                                          ; $3278: $07
    call AddAToHL                                 ; $3279: $CD $71 $00
    ld   a, [$C583]                               ; $327C: $FA $83 $C5
    and  a                                        ; $327F: $A7
    jr   z, jr_000_3285                           ; $3280: $28 $03

    inc  hl                                       ; $3282: $23
    jr   jr_000_32AF                              ; $3283: $18 $2A

jr_000_3285:
    ld   a, [$DF08]                               ; $3285: $FA $08 $DF
    dec  a                                        ; $3288: $3D
    rlca                                          ; $3289: $07
    rlca                                          ; $328A: $07
    swap a                                        ; $328B: $CB $37
    add  $18                                      ; $328D: $C6 $18
    ld   d, $DD                                   ; $328F: $16 $DD
    ld   e, a                                     ; $3291: $5F
    ld   a, [de]                                  ; $3292: $1A
    ld   e, $08                                   ; $3293: $1E $08
    cp   $03                                      ; $3295: $FE $03
    jr   c, jr_000_32A1                           ; $3297: $38 $08

    ld   e, $10                                   ; $3299: $1E $10
    cp   $05                                      ; $329B: $FE $05
    jr   c, jr_000_32A1                           ; $329D: $38 $02

    ld   e, $20                                   ; $329F: $1E $20

jr_000_32A1:
    ld   a, [$DF17]                               ; $32A1: $FA $17 $DF
    inc  a                                        ; $32A4: $3C
    ld   [$DF17], a                               ; $32A5: $EA $17 $DF
    ld   a, [$DF18]                               ; $32A8: $FA $18 $DF
    sub  e                                        ; $32AB: $93
    ld   [$DF18], a                               ; $32AC: $EA $18 $DF

jr_000_32AF:
    ld   a, [hl]                                  ; $32AF: $7E
    call Call_000_3326                            ; $32B0: $CD $26 $33
    jp   Jump_000_306D                            ; $32B3: $C3 $6D $30


Call_000_32B6:
    ld   a, $01                                   ; $32B6: $3E $01
    ld   [$C561], a                               ; $32B8: $EA $61 $C5
    ld   a, $03                                   ; $32BB: $3E $03
    ld   [$C563], a                               ; $32BD: $EA $63 $C5
    ld   a, $9C                                   ; $32C0: $3E $9C
    ld   [$C560], a                               ; $32C2: $EA $60 $C5
    ld   a, $44                                   ; $32C5: $3E $44
    ld   [$C562], a                               ; $32C7: $EA $62 $C5
    ld   a, $F9                                   ; $32CA: $3E $F9
    ld   [$C565], a                               ; $32CC: $EA $65 $C5
    ld   a, $E5                                   ; $32CF: $3E $E5
    ld   [$C566], a                               ; $32D1: $EA $66 $C5
    ld   a, $F3                                   ; $32D4: $3E $F3
    ld   [$C567], a                               ; $32D6: $EA $67 $C5
    call WaitForRequestedVBlank                   ; $32D9: $CD $90 $00
    ld   a, $01                                   ; $32DC: $3E $01
    ld   [$C561], a                               ; $32DE: $EA $61 $C5
    ld   a, $02                                   ; $32E1: $3E $02
    ld   [$C563], a                               ; $32E3: $EA $63 $C5
    ld   a, $9C                                   ; $32E6: $3E $9C
    ld   [$C560], a                               ; $32E8: $EA $60 $C5
    ld   a, $84                                   ; $32EB: $3E $84
    ld   [$C562], a                               ; $32ED: $EA $62 $C5
    ld   a, $EE                                   ; $32F0: $3E $EE
    ld   [$C565], a                               ; $32F2: $EA $65 $C5
    ld   a, $EF                                   ; $32F5: $3E $EF
    ld   [$C566], a                               ; $32F7: $EA $66 $C5
    call WaitForRequestedVBlank                   ; $32FA: $CD $90 $00
    xor  a                                        ; $32FD: $AF
    ld   [$C583], a                               ; $32FE: $EA $83 $C5

jr_000_3301:
    ld   a, [$C262]                               ; $3301: $FA $62 $C2
    bit  0, a                                     ; $3304: $CB $47
    jr   nz, jr_000_331C                          ; $3306: $20 $14

    and  $C0                                      ; $3308: $E6 $C0
    jr   z, jr_000_3314                           ; $330A: $28 $08

    ld   a, [$C583]                               ; $330C: $FA $83 $C5
    xor  $10                                      ; $330F: $EE $10
    ld   [$C583], a                               ; $3311: $EA $83 $C5

jr_000_3314:
    call Call_000_17AF                            ; $3314: $CD $AF $17
    call WaitForRequestedVBlank                   ; $3317: $CD $90 $00
    jr   jr_000_3301                              ; $331A: $18 $E5

jr_000_331C:
    xor  a                                        ; $331C: $AF
    ld   [$C004], a                               ; $331D: $EA $04 $C0
    ld   [$C564], a                               ; $3320: $EA $64 $C5
    jp   Jump_000_151A                            ; $3323: $C3 $1A $15


Call_000_3326:
    ld   hl, $6000                                ; $3326: $21 $00 $60
    call Add2AToHL                                ; $3329: $CD $81 $00
    ld   a, [hl+]                                 ; $332C: $2A
    ld   h, [hl]                                  ; $332D: $66
    ld   l, a                                     ; $332E: $6F
    ret                                           ; $332F: $C9


    rrca                                          ; $3330: $0F
    ld   c, $1C                                   ; $3331: $0E $1C
    dec  de                                       ; $3333: $1B
    dec  [hl]                                     ; $3334: $35
    inc  [hl]                                     ; $3335: $34
    ld   h, a                                     ; $3336: $67
    inc  a                                        ; $3337: $3C
    ld   b, l                                     ; $3338: $45
    ld   b, h                                     ; $3339: $44
    ld   d, [hl]                                  ; $333A: $56
    ld   d, a                                     ; $333B: $57
    ld   e, [hl]                                  ; $333C: $5E
    ld   h, b                                     ; $333D: $60
    add  [hl]                                     ; $333E: $86
    adc  b                                        ; $333F: $88
    add  a                                        ; $3340: $87
    adc  b                                        ; $3341: $88
    adc  c                                        ; $3342: $89
    adc  b                                        ; $3343: $88

    ; padding
    ds $2C, $00

Call_000_3370:
    ld   de, $CA60                                ; $3370: $11 $60 $CA
    ld   [de], a                                  ; $3373: $12
    inc  e                                        ; $3374: $1C
    inc  e                                        ; $3375: $1C
    xor  a                                        ; $3376: $AF
    ld   [$C3A7], a                               ; $3377: $EA $A7 $C3
    ld   [$C3A8], a                               ; $337A: $EA $A8 $C3
    ld   a, [$C39A]                               ; $337D: $FA $9A $C3
    ld   hl, $3C98                                ; $3380: $21 $98 $3C
    call Add2AToHL                                ; $3383: $CD $81 $00
    ld   a, [hl+]                                 ; $3386: $2A
    ld   h, [hl]                                  ; $3387: $66
    ld   l, a                                     ; $3388: $6F
    ld   a, b                                     ; $3389: $78
    call Add2AToHL                                ; $338A: $CD $81 $00
    ld   a, [hl+]                                 ; $338D: $2A
    ld   [de], a                                  ; $338E: $12
    inc  e                                        ; $338F: $1C
    ld   a, [hl]                                  ; $3390: $7E
    ld   [de], a                                  ; $3391: $12
    inc  e                                        ; $3392: $1C
    inc  e                                        ; $3393: $1C
    xor  a                                        ; $3394: $AF
    ld   [de], a                                  ; $3395: $12
    inc  e                                        ; $3396: $1C
    ld   [de], a                                  ; $3397: $12
    inc  e                                        ; $3398: $1C
    ld   a, $98                                   ; $3399: $3E $98
    ld   [de], a                                  ; $339B: $12
    ld   e, $A8                                   ; $339C: $1E $A8
    ld   a, $FF                                   ; $339E: $3E $FF
    ld   [de], a                                  ; $33A0: $12
    inc  e                                        ; $33A1: $1C
    inc  a                                        ; $33A2: $3C
    ld   [de], a                                  ; $33A3: $12
    inc  a                                        ; $33A4: $3C
    ld   [$C690], a                               ; $33A5: $EA $90 $C6
    ret                                           ; $33A8: $C9


Call_000_33A9:
    ld   de, $CA60                                ; $33A9: $11 $60 $CA
    ld   a, [de]                                  ; $33AC: $1A
    and  a                                        ; $33AD: $A7
    ret  z                                        ; $33AE: $C8

    ld   [$3000], a                               ; $33AF: $EA $00 $30
    inc  e                                        ; $33B2: $1C
    ld   a, [de]                                  ; $33B3: $1A
    or   a                                        ; $33B4: $B7
    ret  nz                                       ; $33B5: $C0

    inc  a                                        ; $33B6: $3C
    ld   [de], a                                  ; $33B7: $12
    inc  e                                        ; $33B8: $1C
    ld   a, [de]                                  ; $33B9: $1A
    inc  e                                        ; $33BA: $1C
    ld   c, a                                     ; $33BB: $4F
    ld   a, [de]                                  ; $33BC: $1A
    inc  e                                        ; $33BD: $1C
    ld   b, a                                     ; $33BE: $47
    ld   a, $08                                   ; $33BF: $3E $08
    ld   [de], a                                  ; $33C1: $12
    inc  e                                        ; $33C2: $1C
    ld   a, [de]                                  ; $33C3: $1A
    rrca                                          ; $33C4: $0F
    jr   c, jr_000_33EC                           ; $33C5: $38 $25

    ld   e, $68                                   ; $33C7: $1E $68

jr_000_33C9:
    call Call_000_3446                            ; $33C9: $CD $46 $34
    push bc                                       ; $33CC: $C5
    ld   b, d                                     ; $33CD: $42
    ld   a, e                                     ; $33CE: $7B
    add  $20                                      ; $33CF: $C6 $20
    ld   c, a                                     ; $33D1: $4F
    call Call_000_3422                            ; $33D2: $CD $22 $34
    call Call_000_3422                            ; $33D5: $CD $22 $34
    pop  bc                                       ; $33D8: $C1
    call Call_000_3456                            ; $33D9: $CD $56 $34
    push bc                                       ; $33DC: $C5
    call Call_000_342F                            ; $33DD: $CD $2F $34
    pop  bc                                       ; $33E0: $C1
    inc  bc                                       ; $33E1: $03
    ld   hl, $CA64                                ; $33E2: $21 $64 $CA
    dec  [hl]                                     ; $33E5: $35
    jr   nz, jr_000_33C9                          ; $33E6: $20 $E1

    ld   l, $65                                   ; $33E8: $2E $65
    inc  [hl]                                     ; $33EA: $34
    ret                                           ; $33EB: $C9


jr_000_33EC:
    ld   e, $68                                   ; $33EC: $1E $68

jr_000_33EE:
    call Call_000_3446                            ; $33EE: $CD $46 $34
    push bc                                       ; $33F1: $C5
    ld   b, d                                     ; $33F2: $42
    ld   a, e                                     ; $33F3: $7B
    add  $20                                      ; $33F4: $C6 $20
    ld   c, a                                     ; $33F6: $4F
    inc  hl                                       ; $33F7: $23
    inc  hl                                       ; $33F8: $23
    call Call_000_3422                            ; $33F9: $CD $22 $34
    call Call_000_3422                            ; $33FC: $CD $22 $34
    pop  bc                                       ; $33FF: $C1
    call Call_000_3456                            ; $3400: $CD $56 $34
    push bc                                       ; $3403: $C5
    inc  hl                                       ; $3404: $23
    call Call_000_342F                            ; $3405: $CD $2F $34
    pop  bc                                       ; $3408: $C1
    inc  bc                                       ; $3409: $03
    ld   hl, $CA64                                ; $340A: $21 $64 $CA
    dec  [hl]                                     ; $340D: $35
    jr   nz, jr_000_33EE                          ; $340E: $20 $DE

    inc  l                                        ; $3410: $2C
    inc  [hl]                                     ; $3411: $34
    ld   a, [hl]                                  ; $3412: $7E
    cp   $10                                      ; $3413: $FE $10
    jr   z, jr_000_341D                           ; $3415: $28 $06

    ld   l, $62                                   ; $3417: $2E $62
    ld   a, c                                     ; $3419: $79
    ld   [hl+], a                                 ; $341A: $22
    ld   [hl], b                                  ; $341B: $70
    ret                                           ; $341C: $C9


jr_000_341D:
    ld   l, $60                                   ; $341D: $2E $60
    xor  a                                        ; $341F: $AF
    ld   [hl], a                                  ; $3420: $77
    ret                                           ; $3421: $C9


Call_000_3422:
    ld   a, [hl+]                                 ; $3422: $2A
    ld   [de], a                                  ; $3423: $12
    inc  a                                        ; $3424: $3C
    inc  e                                        ; $3425: $1C
    ld   [de], a                                  ; $3426: $12
    inc  a                                        ; $3427: $3C
    inc  e                                        ; $3428: $1C
    ld   [bc], a                                  ; $3429: $02
    inc  a                                        ; $342A: $3C
    inc  c                                        ; $342B: $0C
    ld   [bc], a                                  ; $342C: $02
    inc  c                                        ; $342D: $0C
    ret                                           ; $342E: $C9


Call_000_342F:
    ld   b, $C1                                   ; $342F: $06 $C1
    ld   a, [$CAA9]                               ; $3431: $FA $A9 $CA
    ld   c, a                                     ; $3434: $4F
    ld   a, [hl]                                  ; $3435: $7E
    and  $F0                                      ; $3436: $E6 $F0
    swap a                                        ; $3438: $CB $37
    ld   [bc], a                                  ; $343A: $02
    inc  c                                        ; $343B: $0C
    ld   a, [hl]                                  ; $343C: $7E
    and  $0F                                      ; $343D: $E6 $0F
    ld   [bc], a                                  ; $343F: $02
    inc  c                                        ; $3440: $0C
    ld   a, c                                     ; $3441: $79
    ld   [$CAA9], a                               ; $3442: $EA $A9 $CA
    ret                                           ; $3445: $C9


Call_000_3446:
    ld   a, [$C39A]                               ; $3446: $FA $9A $C3
    ld   hl, $3CB0                                ; $3449: $21 $B0 $3C
    call Add2AToHL                                ; $344C: $CD $81 $00
    ld   a, [hl+]                                 ; $344F: $2A
    ld   h, [hl]                                  ; $3450: $66
    ld   l, a                                     ; $3451: $6F
    ld   a, [bc]                                  ; $3452: $0A
    jp   Jump_000_0BE9                            ; $3453: $C3 $E9 $0B


Call_000_3456:
    ld   a, [$C39A]                               ; $3456: $FA $9A $C3
    ld   hl, $3CC8                                ; $3459: $21 $C8 $3C
    call Add2AToHL                                ; $345C: $CD $81 $00
    ld   a, [hl+]                                 ; $345F: $2A
    ld   h, [hl]                                  ; $3460: $66
    ld   l, a                                     ; $3461: $6F
    ld   a, [bc]                                  ; $3462: $0A
    jp   Add2AToHL                                ; $3463: $C3 $81 $00


Jump_000_3466:
    call Call_000_05D9                            ; $3466: $CD $D9 $05
    ld   a, $0E                                   ; $3469: $3E $0E
    rst  RST_28                                   ; $346B: $EF
    ld   b, $68                                   ; $346C: $06 $68
    ld   a, $F5                                   ; $346E: $3E $F5
    rst  RST_28                                   ; $3470: $EF
    ld   a, $80                                   ; $3471: $3E $80
    call Call_000_00D0                            ; $3473: $CD $D0 $00
    call DisableLcdSafely                         ; $3476: $CD $86 $0B
    call ExpandFont1bppTo2bpp                     ; $3479: $CD $8B $19
    ld   a, $02                                   ; $347C: $3E $02
    ld   [$C3C5], a                               ; $347E: $EA $C5 $C3
    ld   [$3000], a                               ; $3481: $EA $00 $30
    dec  a                                        ; $3484: $3D
    ld   [$DF39], a                               ; $3485: $EA $39 $DF
    ld   b, $94                                   ; $3488: $06 $94
    call SetQueuedDataSelectionId                 ; $348A: $CD $64 $1F
    call Call_000_00B0                            ; $348D: $CD $B0 $00
    call $4003                                    ; $3490: $CD $03 $40
    call Call_000_05E2                            ; $3493: $CD $E2 $05
    call DisableLcdSafely                         ; $3496: $CD $86 $0B
    call EnableLcdAndInterrupts                   ; $3499: $CD $A1 $0B
    ld   a, $02                                   ; $349C: $3E $02
    ld   [$DF01], a                               ; $349E: $EA $01 $DF
    ld   b, $AF                                   ; $34A1: $06 $AF
    call SetQueuedDataSelectionId                 ; $34A3: $CD $64 $1F
    xor  a                                        ; $34A6: $AF
    ld   [$C39A], a                               ; $34A7: $EA $9A $C3
    ld   a, $05                                   ; $34AA: $3E $05
    ld   b, $0F                                   ; $34AC: $06 $0F
    call Call_000_3370                            ; $34AE: $CD $70 $33
    xor  a                                        ; $34B1: $AF
    ld   h, $C7                                   ; $34B2: $26 $C7
    call Call_000_2630                            ; $34B4: $CD $30 $26
    ld   a, $02                                   ; $34B7: $3E $02
    ld   [$C3C5], a                               ; $34B9: $EA $C5 $C3
    ld   [$3000], a                               ; $34BC: $EA $00 $30
    ld   a, $0F                                   ; $34BF: $3E $0F
    ld   hl, $70FB                                ; $34C1: $21 $FB $70
    call Call_000_1E6F                            ; $34C4: $CD $6F $1E
    ld   a, $01                                   ; $34C7: $3E $01
    ld   [$C3C5], a                               ; $34C9: $EA $C5 $C3
    ld   [$3000], a                               ; $34CC: $EA $00 $30
    call $4EE8                                    ; $34CF: $CD $E8 $4E
    call Call_000_1F55                            ; $34D2: $CD $55 $1F
    xor  a                                        ; $34D5: $AF
    ld   [$C363], a                               ; $34D6: $EA $63 $C3
    ld   [$C365], a                               ; $34D9: $EA $65 $C3
    ld   a, $60                                   ; $34DC: $3E $60
    ld   [$C362], a                               ; $34DE: $EA $62 $C3
    ld   [$C364], a                               ; $34E1: $EA $64 $C3
    ld   bc, $8040                                ; $34E4: $01 $40 $80
    call Call_000_3851                            ; $34E7: $CD $51 $38
    call Call_000_3236                            ; $34EA: $CD $36 $32
    ld   a, [$C26A]                               ; $34ED: $FA $6A $C2
    xor  $01                                      ; $34F0: $EE $01
    ld   [$C26A], a                               ; $34F2: $EA $6A $C2
    call Call_000_3236                            ; $34F5: $CD $36 $32
    call Call_000_3241                            ; $34F8: $CD $41 $32
    call Call_000_00B0                            ; $34FB: $CD $B0 $00
    call Call_000_05B2                            ; $34FE: $CD $B2 $05
    ld   b, $00                                   ; $3501: $06 $00
    call Call_000_3836                            ; $3503: $CD $36 $38
    ld   b, $10                                   ; $3506: $06 $10
    call Call_000_3836                            ; $3508: $CD $36 $38
    ld   a, $01                                   ; $350B: $3E $01
    ld   [$DF01], a                               ; $350D: $EA $01 $DF
    ld   a, $16                                   ; $3510: $3E $16
    ld   [$DF32], a                               ; $3512: $EA $32 $DF
    call Call_000_2EDD                            ; $3515: $CD $DD $2E
    call Call_000_05E2                            ; $3518: $CD $E2 $05
    call Call_000_00B0                            ; $351B: $CD $B0 $00
    ld   a, $02                                   ; $351E: $3E $02
    ld   [$DF01], a                               ; $3520: $EA $01 $DF
    ld   b, $AD                                   ; $3523: $06 $AD
    call SetQueuedDataSelectionId                 ; $3525: $CD $64 $1F
    ld   a, $02                                   ; $3528: $3E $02
    ld   [$C39A], a                               ; $352A: $EA $9A $C3
    ld   a, $04                                   ; $352D: $3E $04
    ld   b, $37                                   ; $352F: $06 $37
    call Call_000_3370                            ; $3531: $CD $70 $33
    call DeactivateBossWorldActorPages            ; $3534: $CD $26 $26
    ld   a, $01                                   ; $3537: $3E $01
    ld   [$C3C5], a                               ; $3539: $EA $C5 $C3
    ld   [$3000], a                               ; $353C: $EA $00 $30
    ld   a, $60                                   ; $353F: $3E $60
    ld   [$C362], a                               ; $3541: $EA $62 $C3
    ld   a, $20                                   ; $3544: $3E $20
    ld   [$C364], a                               ; $3546: $EA $64 $C3
    call Call_000_1F55                            ; $3549: $CD $55 $1F
    ld   [$C363], a                               ; $354C: $EA $63 $C3
    ld   [$C365], a                               ; $354F: $EA $65 $C3
    xor  a                                        ; $3552: $AF
    ld   [$C708], a                               ; $3553: $EA $08 $C7
    call $7721                                    ; $3556: $CD $21 $77
    ld   hl, $C704                                ; $3559: $21 $04 $C7
    xor  a                                        ; $355C: $AF
    ld   [hl], a                                  ; $355D: $77
    ld   l, $07                                   ; $355E: $2E $07
    ld   [hl], a                                  ; $3560: $77
    ld   bc, $6020                                ; $3561: $01 $20 $60
    call Call_000_3851                            ; $3564: $CD $51 $38
    call Call_000_3236                            ; $3567: $CD $36 $32
    ld   a, [$C26A]                               ; $356A: $FA $6A $C2
    xor  $01                                      ; $356D: $EE $01
    ld   [$C26A], a                               ; $356F: $EA $6A $C2
    call Call_000_3236                            ; $3572: $CD $36 $32
    call Call_000_3241                            ; $3575: $CD $41 $32
    call Call_000_05B2                            ; $3578: $CD $B2 $05
    ld   bc, $2002                                ; $357B: $01 $02 $20

jr_000_357E:
    push bc                                       ; $357E: $C5
    call Call_000_0999                            ; $357F: $CD $99 $09
    call $7721                                    ; $3582: $CD $21 $77
    ld   a, $02                                   ; $3585: $3E $02
    ld   [$C3C5], a                               ; $3587: $EA $C5 $C3
    ld   [$3000], a                               ; $358A: $EA $00 $30
    call $6967                                    ; $358D: $CD $67 $69
    call $69C4                                    ; $3590: $CD $C4 $69
    xor  a                                        ; $3593: $AF
    ld   [$C7CB], a                               ; $3594: $EA $CB $C7
    pop  bc                                       ; $3597: $C1
    dec  b                                        ; $3598: $05
    jr   nz, jr_000_357E                          ; $3599: $20 $E3

    dec  c                                        ; $359B: $0D
    jr   nz, jr_000_357E                          ; $359C: $20 $E0

    ld   a, $01                                   ; $359E: $3E $01
    ld   [$DF01], a                               ; $35A0: $EA $01 $DF
    ld   a, $17                                   ; $35A3: $3E $17
    ld   [$DF32], a                               ; $35A5: $EA $32 $DF
    call Call_000_2EDD                            ; $35A8: $CD $DD $2E
    call Call_000_05E2                            ; $35AB: $CD $E2 $05
    call Call_000_00B0                            ; $35AE: $CD $B0 $00
    ld   a, $02                                   ; $35B1: $3E $02
    ld   [$DF01], a                               ; $35B3: $EA $01 $DF
    ld   b, $AC                                   ; $35B6: $06 $AC
    call SetQueuedDataSelectionId                 ; $35B8: $CD $64 $1F
    ld   a, $03                                   ; $35BB: $3E $03
    ld   [$C39A], a                               ; $35BD: $EA $9A $C3
    ld   a, $04                                   ; $35C0: $3E $04
    ld   b, $3A                                   ; $35C2: $06 $3A
    call Call_000_3370                            ; $35C4: $CD $70 $33
    call DeactivateBossWorldActorPages            ; $35C7: $CD $26 $26
    ld   a, $01                                   ; $35CA: $3E $01
    ld   [$C3C5], a                               ; $35CC: $EA $C5 $C3
    ld   [$3000], a                               ; $35CF: $EA $00 $30
    ld   a, $60                                   ; $35D2: $3E $60
    ld   [$C362], a                               ; $35D4: $EA $62 $C3
    ld   a, $60                                   ; $35D7: $3E $60
    ld   [$C364], a                               ; $35D9: $EA $64 $C3
    call Call_000_1F55                            ; $35DC: $CD $55 $1F
    ld   [$C363], a                               ; $35DF: $EA $63 $C3
    ld   [$C365], a                               ; $35E2: $EA $65 $C3
    xor  a                                        ; $35E5: $AF
    ld   [$C708], a                               ; $35E6: $EA $08 $C7
    call $79A2                                    ; $35E9: $CD $A2 $79
    ld   hl, $C704                                ; $35EC: $21 $04 $C7
    xor  a                                        ; $35EF: $AF
    ld   [hl], a                                  ; $35F0: $77
    ld   l, $07                                   ; $35F1: $2E $07
    ld   [hl], a                                  ; $35F3: $77
    ld   bc, $A0B0                                ; $35F4: $01 $B0 $A0
    call Call_000_3851                            ; $35F7: $CD $51 $38
    call Call_000_3236                            ; $35FA: $CD $36 $32
    ld   a, [$C26A]                               ; $35FD: $FA $6A $C2
    xor  $01                                      ; $3600: $EE $01
    ld   [$C26A], a                               ; $3602: $EA $6A $C2
    call Call_000_3236                            ; $3605: $CD $36 $32
    call Call_000_3241                            ; $3608: $CD $41 $32
    call Call_000_05B2                            ; $360B: $CD $B2 $05
    ld   b, $E0                                   ; $360E: $06 $E0

jr_000_3610:
    push bc                                       ; $3610: $C5
    call Call_000_0999                            ; $3611: $CD $99 $09
    call $79A2                                    ; $3614: $CD $A2 $79
    ld   a, $02                                   ; $3617: $3E $02
    ld   [$C3C5], a                               ; $3619: $EA $C5 $C3
    ld   [$3000], a                               ; $361C: $EA $00 $30
    call $6967                                    ; $361F: $CD $67 $69
    call $69C4                                    ; $3622: $CD $C4 $69
    xor  a                                        ; $3625: $AF
    ld   [$C7CB], a                               ; $3626: $EA $CB $C7
    pop  bc                                       ; $3629: $C1
    dec  b                                        ; $362A: $05
    jr   nz, jr_000_3610                          ; $362B: $20 $E3

    ld   a, $01                                   ; $362D: $3E $01
    ld   [$DF01], a                               ; $362F: $EA $01 $DF
    ld   a, $18                                   ; $3632: $3E $18
    ld   [$DF32], a                               ; $3634: $EA $32 $DF
    call Call_000_2EDD                            ; $3637: $CD $DD $2E
    call Call_000_05E2                            ; $363A: $CD $E2 $05
    ld   a, $02                                   ; $363D: $3E $02
    ld   [$DF01], a                               ; $363F: $EA $01 $DF
    call Call_000_00B0                            ; $3642: $CD $B0 $00
    ld   b, $AB                                   ; $3645: $06 $AB
    call SetQueuedDataSelectionId                 ; $3647: $CD $64 $1F
    ld   a, $04                                   ; $364A: $3E $04
    ld   [$C39A], a                               ; $364C: $EA $9A $C3
    ld   a, $04                                   ; $364F: $3E $04
    ld   b, $1E                                   ; $3651: $06 $1E
    call Call_000_3370                            ; $3653: $CD $70 $33
    xor  a                                        ; $3656: $AF
    ld   h, $C7                                   ; $3657: $26 $C7
    call Call_000_2630                            ; $3659: $CD $30 $26
    ld   a, $02                                   ; $365C: $3E $02
    ld   [$C3C5], a                               ; $365E: $EA $C5 $C3
    ld   [$3000], a                               ; $3661: $EA $00 $30
    ld   a, $13                                   ; $3664: $3E $13
    ld   hl, $70FB                                ; $3666: $21 $FB $70
    call Call_000_1E6F                            ; $3669: $CD $6F $1E
    ld   a, $03                                   ; $366C: $3E $03
    ld   [$DF06], a                               ; $366E: $EA $06 $DF
    ld   a, $01                                   ; $3671: $3E $01
    ld   [$C3C5], a                               ; $3673: $EA $C5 $C3
    ld   [$3000], a                               ; $3676: $EA $00 $30
    call $4EE8                                    ; $3679: $CD $E8 $4E
    call Call_000_1F55                            ; $367C: $CD $55 $1F
    ld   [$C363], a                               ; $367F: $EA $63 $C3
    ld   [$C365], a                               ; $3682: $EA $65 $C3
    ld   a, $60                                   ; $3685: $3E $60
    ld   [$C362], a                               ; $3687: $EA $62 $C3
    ld   a, $20                                   ; $368A: $3E $20
    ld   [$C364], a                               ; $368C: $EA $64 $C3
    ld   bc, $8080                                ; $368F: $01 $80 $80
    call Call_000_3851                            ; $3692: $CD $51 $38
    call Call_000_3236                            ; $3695: $CD $36 $32
    ld   a, [$C26A]                               ; $3698: $FA $6A $C2
    xor  $01                                      ; $369B: $EE $01
    ld   [$C26A], a                               ; $369D: $EA $6A $C2
    call Call_000_3236                            ; $36A0: $CD $36 $32
    call Call_000_3241                            ; $36A3: $CD $41 $32
    call Call_000_05B2                            ; $36A6: $CD $B2 $05
    ld   b, $00                                   ; $36A9: $06 $00
    call Call_000_3836                            ; $36AB: $CD $36 $38
    ld   b, $80                                   ; $36AE: $06 $80
    call Call_000_3836                            ; $36B0: $CD $36 $38
    ld   a, $01                                   ; $36B3: $3E $01
    ld   [$DF01], a                               ; $36B5: $EA $01 $DF
    ld   a, $19                                   ; $36B8: $3E $19
    ld   [$DF32], a                               ; $36BA: $EA $32 $DF
    call Call_000_2EDD                            ; $36BD: $CD $DD $2E
    call Call_000_05E2                            ; $36C0: $CD $E2 $05
    call Call_000_00B0                            ; $36C3: $CD $B0 $00
    ld   a, $02                                   ; $36C6: $3E $02
    ld   [$DF01], a                               ; $36C8: $EA $01 $DF
    ld   b, $AA                                   ; $36CB: $06 $AA
    call SetQueuedDataSelectionId                 ; $36CD: $CD $64 $1F
    ld   a, $01                                   ; $36D0: $3E $01
    ld   [$C39A], a                               ; $36D2: $EA $9A $C3
    ld   a, $04                                   ; $36D5: $3E $04
    ld   b, $0D                                   ; $36D7: $06 $0D
    call Call_000_3370                            ; $36D9: $CD $70 $33
    xor  a                                        ; $36DC: $AF
    ld   h, $C7                                   ; $36DD: $26 $C7
    call Call_000_2630                            ; $36DF: $CD $30 $26
    ld   a, $02                                   ; $36E2: $3E $02
    ld   [$C3C5], a                               ; $36E4: $EA $C5 $C3
    ld   [$3000], a                               ; $36E7: $EA $00 $30
    ld   a, $14                                   ; $36EA: $3E $14
    ld   hl, $70FB                                ; $36EC: $21 $FB $70
    call Call_000_1E6F                            ; $36EF: $CD $6F $1E
    ld   a, $01                                   ; $36F2: $3E $01
    ld   [$C3C5], a                               ; $36F4: $EA $C5 $C3
    ld   [$3000], a                               ; $36F7: $EA $00 $30
    call $4EE8                                    ; $36FA: $CD $E8 $4E
    call Call_000_1F55                            ; $36FD: $CD $55 $1F
    xor  a                                        ; $3700: $AF
    ld   [$C363], a                               ; $3701: $EA $63 $C3
    ld   [$C365], a                               ; $3704: $EA $65 $C3
    ld   a, $20                                   ; $3707: $3E $20
    ld   [$C362], a                               ; $3709: $EA $62 $C3
    ld   a, $30                                   ; $370C: $3E $30
    ld   [$C364], a                               ; $370E: $EA $64 $C3
    ld   bc, $8080                                ; $3711: $01 $80 $80
    call Call_000_3851                            ; $3714: $CD $51 $38
    call Call_000_3236                            ; $3717: $CD $36 $32
    ld   a, [$C26A]                               ; $371A: $FA $6A $C2
    xor  $01                                      ; $371D: $EE $01
    ld   [$C26A], a                               ; $371F: $EA $6A $C2
    call Call_000_3236                            ; $3722: $CD $36 $32
    call Call_000_3241                            ; $3725: $CD $41 $32
    call Call_000_05B2                            ; $3728: $CD $B2 $05
    ld   b, $00                                   ; $372B: $06 $00
    call Call_000_3836                            ; $372D: $CD $36 $38
    ld   b, $80                                   ; $3730: $06 $80
    call Call_000_3836                            ; $3732: $CD $36 $38
    ld   a, $01                                   ; $3735: $3E $01
    ld   [$DF01], a                               ; $3737: $EA $01 $DF
    ld   a, $1A                                   ; $373A: $3E $1A
    ld   [$DF32], a                               ; $373C: $EA $32 $DF
    call Call_000_2EDD                            ; $373F: $CD $DD $2E
    call Call_000_05E2                            ; $3742: $CD $E2 $05
    call Call_000_00B0                            ; $3745: $CD $B0 $00
    ld   a, $02                                   ; $3748: $3E $02
    ld   [$DF01], a                               ; $374A: $EA $01 $DF
    ld   b, $31                                   ; $374D: $06 $31
    call SetQueuedDataSelectionId                 ; $374F: $CD $64 $1F
    xor  a                                        ; $3752: $AF
    ld   [$C39A], a                               ; $3753: $EA $9A $C3
    ld   a, $05                                   ; $3756: $3E $05
    ld   b, $08                                   ; $3758: $06 $08
    call Call_000_3370                            ; $375A: $CD $70 $33
    xor  a                                        ; $375D: $AF
    ld   h, $C7                                   ; $375E: $26 $C7
    call Call_000_2630                            ; $3760: $CD $30 $26
    call Call_000_1F55                            ; $3763: $CD $55 $1F
    ld   b, $B2                                   ; $3766: $06 $B2
    call SetQueuedDataSelectionId                 ; $3768: $CD $64 $1F
    call Call_000_1F55                            ; $376B: $CD $55 $1F
    ld   b, $01                                   ; $376E: $06 $01
    call Call_000_2039                            ; $3770: $CD $39 $20
    xor  a                                        ; $3773: $AF
    ld   [$C363], a                               ; $3774: $EA $63 $C3
    ld   [$C365], a                               ; $3777: $EA $65 $C3
    ld   a, $60                                   ; $377A: $3E $60
    ld   [$C362], a                               ; $377C: $EA $62 $C3
    ld   a, $00                                   ; $377F: $3E $00
    ld   [$C364], a                               ; $3781: $EA $64 $C3
    ld   bc, $D508                                ; $3784: $01 $08 $D5
    call Call_000_3851                            ; $3787: $CD $51 $38
    ld   a, $21                                   ; $378A: $3E $21
    ld   [$C200], a                               ; $378C: $EA $00 $C2
    ld   a, $01                                   ; $378F: $3E $01
    ld   [$C36A], a                               ; $3791: $EA $6A $C3
    call Call_000_3862                            ; $3794: $CD $62 $38
    ld   a, $03                                   ; $3797: $3E $03
    ld   [$DF38], a                               ; $3799: $EA $38 $DF
    ld   [$DF16], a                               ; $379C: $EA $16 $DF
    ld   hl, $DF0E                                ; $379F: $21 $0E $DF
    ld   [hl+], a                                 ; $37A2: $22
    inc  a                                        ; $37A3: $3C
    ld   [hl+], a                                 ; $37A4: $22
    xor  a                                        ; $37A5: $AF
    ld   [hl], a                                  ; $37A6: $77
    call Call_000_05B2                            ; $37A7: $CD $B2 $05
    ld   b, $68                                   ; $37AA: $06 $68

jr_000_37AC:
    push bc                                       ; $37AC: $C5
    ld   a, $10                                   ; $37AD: $3E $10
    ld   [$C261], a                               ; $37AF: $EA $61 $C2
    call Call_000_3862                            ; $37B2: $CD $62 $38
    pop  bc                                       ; $37B5: $C1
    dec  b                                        ; $37B6: $05
    jr   nz, jr_000_37AC                          ; $37B7: $20 $F3

    ld   b, $10                                   ; $37B9: $06 $10
    ld   a, $01                                   ; $37BB: $3E $01
    ld   [$C262], a                               ; $37BD: $EA $62 $C2
    ld   [$C36A], a                               ; $37C0: $EA $6A $C3

jr_000_37C3:
    push bc                                       ; $37C3: $C5
    ld   a, $11                                   ; $37C4: $3E $11
    ld   [$C261], a                               ; $37C6: $EA $61 $C2
    call Call_000_3862                            ; $37C9: $CD $62 $38
    xor  a                                        ; $37CC: $AF
    ld   [$C262], a                               ; $37CD: $EA $62 $C2
    ld   [$C36A], a                               ; $37D0: $EA $6A $C3
    pop  bc                                       ; $37D3: $C1
    dec  b                                        ; $37D4: $05
    jr   nz, jr_000_37C3                          ; $37D5: $20 $EC

    ld   b, $40                                   ; $37D7: $06 $40
    ld   a, $03                                   ; $37D9: $3E $03
    ld   [$C262], a                               ; $37DB: $EA $62 $C2
    ld   a, $40                                   ; $37DE: $3E $40
    ld   [$C57F], a                               ; $37E0: $EA $7F $C5

jr_000_37E3:
    push bc                                       ; $37E3: $C5
    ld   bc, $C669                                ; $37E4: $01 $69 $C6
    ld   de, $6C93                                ; $37E7: $11 $93 $6C
    call Call_000_066F                            ; $37EA: $CD $6F $06
    call Call_000_3862                            ; $37ED: $CD $62 $38
    xor  a                                        ; $37F0: $AF
    ld   [$C262], a                               ; $37F1: $EA $62 $C2
    pop  bc                                       ; $37F4: $C1
    dec  b                                        ; $37F5: $05
    jr   nz, jr_000_37E3                          ; $37F6: $20 $EB

    ld   a, $01                                   ; $37F8: $3E $01
    ld   [$DF01], a                               ; $37FA: $EA $01 $DF
    ld   a, $1B                                   ; $37FD: $3E $1B
    ld   [$DF32], a                               ; $37FF: $EA $32 $DF
    call Call_000_2EDD                            ; $3802: $CD $DD $2E
    ld   a, $60                                   ; $3805: $3E $60
    ld   [$C360], a                               ; $3807: $EA $60 $C3
    xor  a                                        ; $380A: $AF
    call Call_000_00D0                            ; $380B: $CD $D0 $00
    xor  a                                        ; $380E: $AF
    call Call_000_00D0                            ; $380F: $CD $D0 $00
    ld   a, $90                                   ; $3812: $3E $90
    ld   [$C360], a                               ; $3814: $EA $60 $C3
    call Call_000_05E2                            ; $3817: $CD $E2 $05
    call Call_000_00B0                            ; $381A: $CD $B0 $00
    call DisableLcdSafely                         ; $381D: $CD $86 $0B
    call ExpandFont1bppTo2bpp                     ; $3820: $CD $8B $19
    ld   a, $02                                   ; $3823: $3E $02
    ld   [$DF39], a                               ; $3825: $EA $39 $DF
    ld   [$C3C5], a                               ; $3828: $EA $C5 $C3
    ld   [$3000], a                               ; $382B: $EA $00 $30
    ld   b, $30                                   ; $382E: $06 $30
    call SetQueuedDataSelectionId                 ; $3830: $CD $64 $1F
    jp   $4003                                    ; $3833: $C3 $03 $40


Call_000_3836:
jr_000_3836:
    push bc                                       ; $3836: $C5
    call Call_000_0999                            ; $3837: $CD $99 $09
    ld   a, $02                                   ; $383A: $3E $02
    ld   [$C3C5], a                               ; $383C: $EA $C5 $C3
    ld   [$3000], a                               ; $383F: $EA $00 $30
    call $6967                                    ; $3842: $CD $67 $69
    call $69C4                                    ; $3845: $CD $C4 $69
    xor  a                                        ; $3848: $AF
    ld   [$C7CB], a                               ; $3849: $EA $CB $C7
    pop  bc                                       ; $384C: $C1
    dec  b                                        ; $384D: $05
    jr   nz, jr_000_3836                          ; $384E: $20 $E6

    ret                                           ; $3850: $C9


Call_000_3851:
    ld   hl, $C200                                ; $3851: $21 $00 $C2
    ld   a, $11                                   ; $3854: $3E $11
    ld   [hl], a                                  ; $3856: $77
    xor  a                                        ; $3857: $AF
    ld   l, $03                                   ; $3858: $2E $03
    ld   [hl], b                                  ; $385A: $70
    inc  l                                        ; $385B: $2C
    ld   [hl+], a                                 ; $385C: $22
    inc  l                                        ; $385D: $2C
    ld   [hl], c                                  ; $385E: $71
    inc  l                                        ; $385F: $2C
    ld   [hl], a                                  ; $3860: $77
    ret                                           ; $3861: $C9


Call_000_3862:
    ld   a, $01                                   ; $3862: $3E $01
    ld   [$C3C5], a                               ; $3864: $EA $C5 $C3
    ld   [$3000], a                               ; $3867: $EA $00 $30
    call $44F4                                    ; $386A: $CD $F4 $44
    call $478E                                    ; $386D: $CD $8E $47
    call $48B5                                    ; $3870: $CD $B5 $48
    ld   a, [$C274]                               ; $3873: $FA $74 $C2
    ld   b, a                                     ; $3876: $47
    xor  a                                        ; $3877: $AF
    call SetObjectAnimationIfChanged              ; $3878: $CD $61 $00
    call Call_000_1EB2                            ; $387B: $CD $B2 $1E
    ld   a, $02                                   ; $387E: $3E $02
    ld   [$C3C5], a                               ; $3880: $EA $C5 $C3
    ld   [$3000], a                               ; $3883: $EA $00 $30
    call $6967                                    ; $3886: $CD $67 $69
    call $69C4                                    ; $3889: $CD $C4 $69
    xor  a                                        ; $388C: $AF
    ld   [$C7CB], a                               ; $388D: $EA $CB $C7
    db   $C3                                      ; $3890: $C3
    sub  b                                        ; $3891: $90

    ; padding
    ds $4E, $00

    ld   b, b                                     ; $38E0: $40
    add  hl, sp                                   ; $38E1: $39
    ret                                           ; $38E2: $C9


    add  hl, sp                                   ; $38E3: $39
    ld   [de], a                                  ; $38E4: $12
    ld   a, [hl-]                                 ; $38E5: $3A
    ld   b, b                                     ; $38E6: $40
    ld   a, [hl-]                                 ; $38E7: $3A
    rst  RST_20                                   ; $38E8: $E7
    ld   a, [hl-]                                 ; $38E9: $3A
    inc  bc                                       ; $38EA: $03
    dec  sp                                       ; $38EB: $3B
    xor  b                                        ; $38EC: $A8
    dec  sp                                       ; $38ED: $3B
    cp   a                                        ; $38EE: $BF
    add  hl, sp                                   ; $38EF: $39
    ld   l, [hl]                                  ; $38F0: $6E
    ld   a, [hl-]                                 ; $38F1: $3A
    add  c                                        ; $38F2: $81
    ld   a, [hl-]                                 ; $38F3: $3A
    sub  h                                        ; $38F4: $94
    ld   a, [hl-]                                 ; $38F5: $3A
    cp   c                                        ; $38F6: $B9
    ld   a, [hl-]                                 ; $38F7: $3A

jr_000_38F8:
    ld   sp, $683B                                ; $38F8: $31 $3B $68
    dec  sp                                       ; $38FB: $3B
    call nz, $D73B                                ; $38FC: $C4 $3B $D7
    dec  sp                                       ; $38FF: $3B
    ld   [$063B], a                               ; $3900: $EA $3B $06
    inc  a                                        ; $3903: $3C
    inc  [hl]                                     ; $3904: $34
    inc  a                                        ; $3905: $3C
    ld   e, c                                     ; $3906: $59
    inc  a                                        ; $3907: $3C
    ld   h, e                                     ; $3908: $63
    inc  a                                        ; $3909: $3C
    ld   b, b                                     ; $390A: $40
    add  hl, sp                                   ; $390B: $39
    ld   b, b                                     ; $390C: $40
    add  hl, sp                                   ; $390D: $39
    ld   b, b                                     ; $390E: $40

jr_000_390F:
    add  hl, sp                                   ; $390F: $39
    ld   b, b                                     ; $3910: $40
    add  hl, sp                                   ; $3911: $39
    ld   b, b                                     ; $3912: $40
    add  hl, sp                                   ; $3913: $39
    ld   b, b                                     ; $3914: $40
    add  hl, sp                                   ; $3915: $39
    ld   b, b                                     ; $3916: $40
    add  hl, sp                                   ; $3917: $39
    ld   b, b                                     ; $3918: $40
    add  hl, sp                                   ; $3919: $39
    ld   b, b                                     ; $391A: $40
    add  hl, sp                                   ; $391B: $39
    ld   b, b                                     ; $391C: $40
    add  hl, sp                                   ; $391D: $39
    ld   b, b                                     ; $391E: $40
    add  hl, sp                                   ; $391F: $39
    ld   b, b                                     ; $3920: $40
    add  hl, sp                                   ; $3921: $39
    ld   b, b                                     ; $3922: $40
    add  hl, sp                                   ; $3923: $39
    ld   b, b                                     ; $3924: $40
    add  hl, sp                                   ; $3925: $39
    ld   b, b                                     ; $3926: $40
    add  hl, sp                                   ; $3927: $39
    ld   b, b                                     ; $3928: $40
    add  hl, sp                                   ; $3929: $39
    ld   b, b                                     ; $392A: $40
    add  hl, sp                                   ; $392B: $39
    ld   b, b                                     ; $392C: $40
    add  hl, sp                                   ; $392D: $39
    ld   b, b                                     ; $392E: $40
    add  hl, sp                                   ; $392F: $39
    ld   b, b                                     ; $3930: $40
    add  hl, sp                                   ; $3931: $39
    ld   b, b                                     ; $3932: $40
    add  hl, sp                                   ; $3933: $39

jr_000_3934:
    ld   b, b                                     ; $3934: $40
    add  hl, sp                                   ; $3935: $39
    ld   b, b                                     ; $3936: $40
    add  hl, sp                                   ; $3937: $39
    ld   b, b                                     ; $3938: $40
    add  hl, sp                                   ; $3939: $39
    ld   b, b                                     ; $393A: $40
    add  hl, sp                                   ; $393B: $39
    ld   b, b                                     ; $393C: $40

jr_000_393D:
    add  hl, sp                                   ; $393D: $39
    ld   b, b                                     ; $393E: $40
    add  hl, sp                                   ; $393F: $39
    nop                                           ; $3940: $00
    jr   @+$2A                                    ; $3941: $18 $28

    ld   [de], a                                  ; $3943: $12
    ret  nc                                       ; $3944: $D0

    db   $10                                      ; $3945: $10
    ld   de, $1B14                                ; $3946: $11 $14 $1B
    nop                                           ; $3949: $00
    jr   jr_000_3934                              ; $394A: $18 $E8

    stop                                          ; $394C: $10 $00
    ld   de, $7915                                ; $394E: $11 $15 $79
    dec  e                                        ; $3951: $1D
    nop                                           ; $3952: $00
    jr   jr_000_393D                              ; $3953: $18 $E8

    inc  de                                       ; $3955: $13
    or   b                                        ; $3956: $B0
    db   $10                                      ; $3957: $10
    dec  d                                        ; $3958: $15
    ld   [hl], d                                  ; $3959: $72
    add  hl, de                                   ; $395A: $19
    nop                                           ; $395B: $00
    jr   @+$6A                                    ; $395C: $18 $68

    inc  d                                        ; $395E: $14
    ld   b, b                                     ; $395F: $40
    ld   de, $7315                                ; $3960: $11 $15 $73
    ld   a, [de]                                  ; $3963: $1A
    nop                                           ; $3964: $00
    jr   jr_000_390F                              ; $3965: $18 $A8

    inc  d                                        ; $3967: $14
    db   $10                                      ; $3968: $10
    ld   de, $7415                                ; $3969: $11 $15 $74
    dec  de                                       ; $396C: $1B
    nop                                           ; $396D: $00
    jr   jr_000_38F8                              ; $396E: $18 $88

    inc  de                                       ; $3970: $13
    ld   b, b                                     ; $3971: $40
    db   $10                                      ; $3972: $10
    ld   de, $0010                                ; $3973: $11 $10 $00
    nop                                           ; $3976: $00
    jr   @-$76                                    ; $3977: $18 $88

    inc  de                                       ; $3979: $13
    or   b                                        ; $397A: $B0
    ld   de, $7515                                ; $397B: $11 $15 $75
    add  hl, de                                   ; $397E: $19

jr_000_397F:
    nop                                           ; $397F: $00
    jr   jr_000_39EA                              ; $3980: $18 $68

    ld   [de], a                                  ; $3982: $12
    db   $10                                      ; $3983: $10
    ld   de, $7615                                ; $3984: $11 $15 $76
    ld   a, [de]                                  ; $3987: $1A
    nop                                           ; $3988: $00
    jr   @+$0A                                    ; $3989: $18 $08

    inc  de                                       ; $398B: $13
    ret  nc                                       ; $398C: $D0

    ld   [de], a                                  ; $398D: $12
    dec  d                                        ; $398E: $15
    ld   a, b                                     ; $398F: $78
    inc  e                                        ; $3990: $1C
    nop                                           ; $3991: $00
    jr   jr_000_399C                              ; $3992: $18 $08

    ld   [de], a                                  ; $3994: $12
    jr   nc, @+$14                                ; $3995: $30 $12

jr_000_3997:
    dec  d                                        ; $3997: $15
    ld   [hl], a                                  ; $3998: $77
    ld   e, $00                                   ; $3999: $1E $00
    nop                                           ; $399B: $00

jr_000_399C:
    adc  b                                        ; $399C: $88
    inc  d                                        ; $399D: $14
    rla                                           ; $399E: $17
    ld   [de], a                                  ; $399F: $12
    inc  de                                       ; $39A0: $13
    nop                                           ; $39A1: $00
    stop                                          ; $39A2: $10 $00
    jr   jr_000_3A0E                              ; $39A4: $18 $68

jr_000_39A6:
    ld   [de], a                                  ; $39A6: $12
    and  b                                        ; $39A7: $A0
    ld   de, $001D                                ; $39A8: $11 $1D $00
    dec  bc                                       ; $39AB: $0B
    nop                                           ; $39AC: $00
    jr   jr_000_3997                              ; $39AD: $18 $E8

    ld   [de], a                                  ; $39AF: $12
    and  b                                        ; $39B0: $A0
    db   $10                                      ; $39B1: $10
    dec  e                                        ; $39B2: $1D
    nop                                           ; $39B3: $00
    inc  c                                        ; $39B4: $0C
    nop                                           ; $39B5: $00
    jr   jr_000_3A30                              ; $39B6: $18 $78

jr_000_39B8:
    db   $10                                      ; $39B8: $10
    ret  nz                                       ; $39B9: $C0

    db   $10                                      ; $39BA: $10
    dec  e                                        ; $39BB: $1D
    nop                                           ; $39BC: $00
    rrca                                          ; $39BD: $0F
    rst  RST_38                                   ; $39BE: $FF
    nop                                           ; $39BF: $00
    db   $10                                      ; $39C0: $10
    ret  z                                        ; $39C1: $C8

    rla                                           ; $39C2: $17
    add  b                                        ; $39C3: $80
    ld   [de], a                                  ; $39C4: $12
    ld   de, $0003                                ; $39C5: $11 $03 $00
    rst  RST_38                                   ; $39C8: $FF
    nop                                           ; $39C9: $00
    jr   @+$4A                                    ; $39CA: $18 $48

    rla                                           ; $39CC: $17
    ret  nz                                       ; $39CD: $C0

    ld   d, $10                                   ; $39CE: $16 $10
    rlca                                          ; $39D0: $07
    nop                                           ; $39D1: $00
    nop                                           ; $39D2: $00

jr_000_39D3:
    jr   @-$76                                    ; $39D3: $18 $88

    rla                                           ; $39D5: $17
    ld   [hl], b                                  ; $39D6: $70
    ld   d, $10                                   ; $39D7: $16 $10
    ld   [$0000], sp                              ; $39D9: $08 $00 $00
    jr   jr_000_39A6                              ; $39DC: $18 $C8

    rla                                           ; $39DE: $17
    ret  nc                                       ; $39DF: $D0

    ld   d, $10                                   ; $39E0: $16 $10
    add  hl, bc                                   ; $39E2: $09
    nop                                           ; $39E3: $00
    nop                                           ; $39E4: $00
    jr   jr_000_397F                              ; $39E5: $18 $98

    rla                                           ; $39E7: $17
    ld   b, b                                     ; $39E8: $40
    rla                                           ; $39E9: $17

jr_000_39EA:
    ld   [de], a                                  ; $39EA: $12
    ld   a, [bc]                                  ; $39EB: $0A
    nop                                           ; $39EC: $00
    nop                                           ; $39ED: $00
    jr   @+$4A                                    ; $39EE: $18 $48

    rla                                           ; $39F0: $17

jr_000_39F1:
    sub  b                                        ; $39F1: $90
    ld   d, $10                                   ; $39F2: $16 $10
    dec  bc                                       ; $39F4: $0B
    nop                                           ; $39F5: $00
    nop                                           ; $39F6: $00
    jr   @+$0A                                    ; $39F7: $18 $08

jr_000_39F9:
    rla                                           ; $39F9: $17
    ld   b, b                                     ; $39FA: $40
    rla                                           ; $39FB: $17
    db   $10                                      ; $39FC: $10
    inc  c                                        ; $39FD: $0C
    nop                                           ; $39FE: $00
    nop                                           ; $39FF: $00
    jr   jr_000_3A4A                              ; $3A00: $18 $48

    rla                                           ; $3A02: $17
    jr   nc, jr_000_3A1C                          ; $3A03: $30 $17

    ld   [de], a                                  ; $3A05: $12
    dec  c                                        ; $3A06: $0D
    nop                                           ; $3A07: $00
    nop                                           ; $3A08: $00
    jr   jr_000_39D3                              ; $3A09: $18 $C8

    rla                                           ; $3A0B: $17
    ld   b, b                                     ; $3A0C: $40
    rla                                           ; $3A0D: $17

jr_000_3A0E:
    dec  e                                        ; $3A0E: $1D

jr_000_3A0F:
    nop                                           ; $3A0F: $00
    inc  bc                                       ; $3A10: $03
    rst  RST_38                                   ; $3A11: $FF
    nop                                           ; $3A12: $00
    jr   @+$0A                                    ; $3A13: $18 $08

    inc  de                                       ; $3A15: $13
    add  b                                        ; $3A16: $80
    ld   d, $10                                   ; $3A17: $16 $10
    inc  hl                                       ; $3A19: $23
    nop                                           ; $3A1A: $00
    nop                                           ; $3A1B: $00

jr_000_3A1C:
    jr   @+$0A                                    ; $3A1C: $18 $08

    inc  de                                       ; $3A1E: $13
    ret  nc                                       ; $3A1F: $D0

    ld   d, $12                                   ; $3A20: $16 $12
    inc  h                                        ; $3A22: $24
    nop                                           ; $3A23: $00
    nop                                           ; $3A24: $00
    jr   @+$7A                                    ; $3A25: $18 $78

    inc  de                                       ; $3A27: $13
    ld   [hl], b                                  ; $3A28: $70
    ld   d, $10                                   ; $3A29: $16 $10
    dec  h                                        ; $3A2B: $25
    nop                                           ; $3A2C: $00
    nop                                           ; $3A2D: $00
    jr   jr_000_39B8                              ; $3A2E: $18 $88

jr_000_3A30:
    inc  de                                       ; $3A30: $13
    ret  nz                                       ; $3A31: $C0

    ld   d, $12                                   ; $3A32: $16 $12
    ld   h, $00                                   ; $3A34: $26 $00
    nop                                           ; $3A36: $00
    jr   jr_000_39F1                              ; $3A37: $18 $B8

    inc  de                                       ; $3A39: $13
    ld   b, b                                     ; $3A3A: $40
    ld   d, $12                                   ; $3A3B: $16 $12
    daa                                           ; $3A3D: $27
    nop                                           ; $3A3E: $00
    rst  RST_38                                   ; $3A3F: $FF
    nop                                           ; $3A40: $00
    jr   @+$0A                                    ; $3A41: $18 $08

    ld   d, $90                                   ; $3A43: $16 $90
    ld   d, $10                                   ; $3A45: $16 $10
    jr   z, jr_000_3A49                           ; $3A47: $28 $00

jr_000_3A49:
    nop                                           ; $3A49: $00

jr_000_3A4A:
    jr   jr_000_3A74                              ; $3A4A: $18 $28

    ld   d, $F0                                   ; $3A4C: $16 $F0
    ld   d, $11                                   ; $3A4E: $16 $11
    add  hl, hl                                   ; $3A50: $29
    nop                                           ; $3A51: $00
    nop                                           ; $3A52: $00
    jr   @-$06                                    ; $3A53: $18 $F8

    dec  d                                        ; $3A55: $15
    jr   nz, jr_000_3A6F                          ; $3A56: $20 $17

    db   $10                                      ; $3A58: $10
    ld   a, [hl+]                                 ; $3A59: $2A
    nop                                           ; $3A5A: $00
    nop                                           ; $3A5B: $00
    jr   @-$16                                    ; $3A5C: $18 $E8

    dec  d                                        ; $3A5E: $15

jr_000_3A5F:
    ret  nc                                       ; $3A5F: $D0

    ld   d, $12                                   ; $3A60: $16 $12
    dec  hl                                       ; $3A62: $2B
    nop                                           ; $3A63: $00
    nop                                           ; $3A64: $00
    jr   jr_000_3A0F                              ; $3A65: $18 $A8

    dec  d                                        ; $3A67: $15

jr_000_3A68:
    add  b                                        ; $3A68: $80
    ld   d, $10                                   ; $3A69: $16 $10
    inc  l                                        ; $3A6B: $2C
    nop                                           ; $3A6C: $00
    rst  RST_38                                   ; $3A6D: $FF
    nop                                           ; $3A6E: $00

jr_000_3A6F:
    jr   jr_000_39F9                              ; $3A6F: $18 $88

    rla                                           ; $3A71: $17
    ld   d, b                                     ; $3A72: $50
    db   $10                                      ; $3A73: $10

jr_000_3A74:
    db   $10                                      ; $3A74: $10
    dec  l                                        ; $3A75: $2D
    nop                                           ; $3A76: $00
    nop                                           ; $3A77: $00
    jr   @+$7A                                    ; $3A78: $18 $78

    rla                                           ; $3A7A: $17
    or   b                                        ; $3A7B: $B0
    db   $10                                      ; $3A7C: $10
    ld   [de], a                                  ; $3A7D: $12
    ld   l, $00                                   ; $3A7E: $2E $00
    rst  RST_38                                   ; $3A80: $FF
    nop                                           ; $3A81: $00
    jr   jr_000_3A1C                              ; $3A82: $18 $98

    rla                                           ; $3A84: $17
    ld   h, b                                     ; $3A85: $60
    ld   de, $2F12                                ; $3A86: $11 $12 $2F
    nop                                           ; $3A89: $00
    nop                                           ; $3A8A: $00
    jr   @+$7A                                    ; $3A8B: $18 $78

    rla                                           ; $3A8D: $17
    sub  b                                        ; $3A8E: $90
    ld   de, $3010                                ; $3A8F: $11 $10 $30
    nop                                           ; $3A92: $00
    rst  RST_38                                   ; $3A93: $FF
    nop                                           ; $3A94: $00
    jr   jr_000_3A5F                              ; $3A95: $18 $C8

    ld   d, $C0                                   ; $3A97: $16 $C0
    ld   [de], a                                  ; $3A99: $12
    ld   [de], a                                  ; $3A9A: $12
    ld   sp, $0000                                ; $3A9B: $31 $00 $00
    jr   jr_000_3A68                              ; $3A9E: $18 $C8

    ld   d, $40                                   ; $3AA0: $16 $40
    ld   [de], a                                  ; $3AA2: $12
    db   $10                                      ; $3AA3: $10
    ld   [hl-], a                                 ; $3AA4: $32
    nop                                           ; $3AA5: $00
    nop                                           ; $3AA6: $00
    jr   @+$6A                                    ; $3AA7: $18 $68

    ld   d, $30                                   ; $3AA9: $16 $30
    ld   [de], a                                  ; $3AAB: $12
    ld   [de], a                                  ; $3AAC: $12
    inc  sp                                       ; $3AAD: $33
    nop                                           ; $3AAE: $00
    nop                                           ; $3AAF: $00
    jr   jr_000_3B1A                              ; $3AB0: $18 $68

    ld   d, $C0                                   ; $3AB2: $16 $C0
    ld   [de], a                                  ; $3AB4: $12
    db   $10                                      ; $3AB5: $10
    inc  [hl]                                     ; $3AB6: $34
    nop                                           ; $3AB7: $00
    rst  RST_38                                   ; $3AB8: $FF
    nop                                           ; $3AB9: $00
    sub  b                                        ; $3ABA: $90
    ld   l, b                                     ; $3ABB: $68
    rla                                           ; $3ABC: $17
    ld   h, b                                     ; $3ABD: $60
    inc  d                                        ; $3ABE: $14
    rla                                           ; $3ABF: $17
    dec  [hl]                                     ; $3AC0: $35
    nop                                           ; $3AC1: $00
    nop                                           ; $3AC2: $00
    sub  c                                        ; $3AC3: $91

jr_000_3AC4:
    ld   l, b                                     ; $3AC4: $68
    rla                                           ; $3AC5: $17
    ld   [hl], b                                  ; $3AC6: $70

jr_000_3AC7:
    inc  d                                        ; $3AC7: $14
    rla                                           ; $3AC8: $17
    dec  [hl]                                     ; $3AC9: $35
    nop                                           ; $3ACA: $00
    db   $10                                      ; $3ACB: $10
    jr   @+$6A                                    ; $3ACC: $18 $68

    rla                                           ; $3ACE: $17
    ld   [hl], b                                  ; $3ACF: $70
    inc  d                                        ; $3AD0: $14
    ld   e, $00                                   ; $3AD1: $1E $00
    stop                                          ; $3AD3: $10 $00
    jr   jr_000_3B4F                              ; $3AD5: $18 $78

    rla                                           ; $3AD7: $17
    or   b                                        ; $3AD8: $B0
    inc  d                                        ; $3AD9: $14
    dec  e                                        ; $3ADA: $1D
    nop                                           ; $3ADB: $00
    rlca                                          ; $3ADC: $07
    nop                                           ; $3ADD: $00

jr_000_3ADE:
    jr   jr_000_3B58                              ; $3ADE: $18 $78

    rla                                           ; $3AE0: $17
    jr   nz, jr_000_3AF7                          ; $3AE1: $20 $14

    dec  e                                        ; $3AE3: $1D
    nop                                           ; $3AE4: $00
    ld   a, [bc]                                  ; $3AE5: $0A
    rst  RST_38                                   ; $3AE6: $FF
    nop                                           ; $3AE7: $00
    jr   @-$06                                    ; $3AE8: $18 $F8

    ld   de, $1660                                ; $3AEA: $11 $60 $16
    db   $10                                      ; $3AED: $10
    ld   [hl], $00                                ; $3AEE: $36 $00
    nop                                           ; $3AF0: $00
    jr   @+$2A                                    ; $3AF1: $18 $28

    ld   [de], a                                  ; $3AF3: $12
    and  b                                        ; $3AF4: $A0
    ld   d, $10                                   ; $3AF5: $16 $10

jr_000_3AF7:
    scf                                           ; $3AF7: $37
    nop                                           ; $3AF8: $00
    nop                                           ; $3AF9: $00
    jr   jr_000_3AC4                              ; $3AFA: $18 $C8

    ld   de, $16D0                                ; $3AFC: $11 $D0 $16
    db   $10                                      ; $3AFF: $10
    add  hl, sp                                   ; $3B00: $39
    nop                                           ; $3B01: $00
    rst  RST_38                                   ; $3B02: $FF
    nop                                           ; $3B03: $00
    jr   jr_000_3B6E                              ; $3B04: $18 $68

    inc  d                                        ; $3B06: $14
    and  b                                        ; $3B07: $A0
    ld   d, $12                                   ; $3B08: $16 $12
    ld   a, d                                     ; $3B0A: $7A
    rra                                           ; $3B0B: $1F
    nop                                           ; $3B0C: $00
    jr   jr_000_3AC7                              ; $3B0D: $18 $B8

    inc  d                                        ; $3B0F: $14

jr_000_3B10:
    jr   nz, @+$19                                ; $3B10: $20 $17

    db   $10                                      ; $3B12: $10
    ld   a, [hl-]                                 ; $3B13: $3A
    nop                                           ; $3B14: $00
    nop                                           ; $3B15: $00
    jr   jr_000_3B10                              ; $3B16: $18 $F8

    inc  d                                        ; $3B18: $14

jr_000_3B19:
    sub  b                                        ; $3B19: $90

jr_000_3B1A:
    ld   d, $10                                   ; $3B1A: $16 $10

jr_000_3B1C:
    dec  sp                                       ; $3B1C: $3B
    nop                                           ; $3B1D: $00
    nop                                           ; $3B1E: $00
    jr   jr_000_3B19                              ; $3B1F: $18 $F8

    inc  d                                        ; $3B21: $14
    jr   nz, jr_000_3B3B                          ; $3B22: $20 $17

    db   $10                                      ; $3B24: $10
    inc  a                                        ; $3B25: $3C
    nop                                           ; $3B26: $00
    nop                                           ; $3B27: $00
    jr   jr_000_3B92                              ; $3B28: $18 $68

    inc  d                                        ; $3B2A: $14
    jr   nz, jr_000_3B44                          ; $3B2B: $20 $17

    db   $10                                      ; $3B2D: $10
    dec  a                                        ; $3B2E: $3D
    nop                                           ; $3B2F: $00
    rst  RST_38                                   ; $3B30: $FF
    nop                                           ; $3B31: $00
    sbc  d                                        ; $3B32: $9A
    sbc  b                                        ; $3B33: $98
    rla                                           ; $3B34: $17
    jr   nc, jr_000_3B4A                          ; $3B35: $30 $13

    rla                                           ; $3B37: $17
    ld   a, $00                                   ; $3B38: $3E $00
    nop                                           ; $3B3A: $00

jr_000_3B3B:
    sbc  e                                        ; $3B3B: $9B

jr_000_3B3C:
    sbc  b                                        ; $3B3C: $98
    rla                                           ; $3B3D: $17
    ld   b, b                                     ; $3B3E: $40
    inc  de                                       ; $3B3F: $13
    rla                                           ; $3B40: $17
    ld   a, $00                                   ; $3B41: $3E $00
    db   $10                                      ; $3B43: $10

jr_000_3B44:
    jr   jr_000_3ADE                              ; $3B44: $18 $98

    rla                                           ; $3B46: $17
    ld   b, b                                     ; $3B47: $40
    inc  de                                       ; $3B48: $13
    rra                                           ; $3B49: $1F

jr_000_3B4A:
    nop                                           ; $3B4A: $00
    stop                                          ; $3B4B: $10 $00
    jr   @-$36                                    ; $3B4D: $18 $C8

jr_000_3B4F:
    rla                                           ; $3B4F: $17
    jr   nc, jr_000_3B65                          ; $3B50: $30 $13

    dec  e                                        ; $3B52: $1D
    nop                                           ; $3B53: $00
    ld   b, $00                                   ; $3B54: $06 $00
    jr   @+$6A                                    ; $3B56: $18 $68

jr_000_3B58:
    ld   d, $30                                   ; $3B58: $16 $30
    inc  de                                       ; $3B5A: $13
    dec  e                                        ; $3B5B: $1D
    nop                                           ; $3B5C: $00
    add  hl, bc                                   ; $3B5D: $09
    nop                                           ; $3B5E: $00
    jr   jr_000_3BA9                              ; $3B5F: $18 $48

    ld   d, $B0                                   ; $3B61: $16 $B0
    inc  de                                       ; $3B63: $13
    dec  e                                        ; $3B64: $1D

jr_000_3B65:
    nop                                           ; $3B65: $00
    dec  c                                        ; $3B66: $0D
    rst  RST_38                                   ; $3B67: $FF
    nop                                           ; $3B68: $00
    jr   jr_000_3BC3                              ; $3B69: $18 $58

    ld   d, $B0                                   ; $3B6B: $16 $B0
    inc  d                                        ; $3B6D: $14

jr_000_3B6E:
    ld   d, $3F                                   ; $3B6E: $16 $3F
    nop                                           ; $3B70: $00
    db   $10                                      ; $3B71: $10
    jr   jr_000_3B1C                              ; $3B72: $18 $A8

    ld   d, $80                                   ; $3B74: $16 $80
    inc  d                                        ; $3B76: $14
    ld   d, $40                                   ; $3B77: $16 $40
    nop                                           ; $3B79: $00
    db   $10                                      ; $3B7A: $10
    jr   @-$36                                    ; $3B7B: $18 $C8

    ld   d, $60                                   ; $3B7D: $16 $60
    inc  d                                        ; $3B7F: $14
    ld   d, $41                                   ; $3B80: $16 $41
    nop                                           ; $3B82: $00
    db   $10                                      ; $3B83: $10
    jr   jr_000_3B6E                              ; $3B84: $18 $E8

    ld   d, $80                                   ; $3B86: $16 $80
    inc  d                                        ; $3B88: $14
    ld   d, $42                                   ; $3B89: $16 $42
    nop                                           ; $3B8B: $00
    db   $10                                      ; $3B8C: $10
    jr   @-$36                                    ; $3B8D: $18 $C8

    ld   d, $A0                                   ; $3B8F: $16 $A0
    inc  d                                        ; $3B91: $14

jr_000_3B92:
    ld   d, $43                                   ; $3B92: $16 $43
    nop                                           ; $3B94: $00
    db   $10                                      ; $3B95: $10
    jr   @+$6A                                    ; $3B96: $18 $68

    ld   d, $B0                                   ; $3B98: $16 $B0
    inc  d                                        ; $3B9A: $14
    dec  d                                        ; $3B9B: $15
    ld   a, e                                     ; $3B9C: $7B
    jr   nz, jr_000_3B9F                          ; $3B9D: $20 $00

jr_000_3B9F:
    jr   jr_000_3C09                              ; $3B9F: $18 $68

    ld   d, $50                                   ; $3BA1: $16 $50
    inc  d                                        ; $3BA3: $14
    dec  e                                        ; $3BA4: $1D
    nop                                           ; $3BA5: $00
    dec  b                                        ; $3BA6: $05
    rst  RST_38                                   ; $3BA7: $FF
    nop                                           ; $3BA8: $00

jr_000_3BA9:
    jr   @-$36                                    ; $3BA9: $18 $C8

    db   $10                                      ; $3BAB: $10
    and  b                                        ; $3BAC: $A0
    ld   d, $10                                   ; $3BAD: $16 $10
    ld   b, h                                     ; $3BAF: $44
    nop                                           ; $3BB0: $00
    nop                                           ; $3BB1: $00
    jr   jr_000_3B3C                              ; $3BB2: $18 $88

    db   $10                                      ; $3BB4: $10
    jr   nc, jr_000_3BCD                          ; $3BB5: $30 $16

    db   $10                                      ; $3BB7: $10
    ld   b, l                                     ; $3BB8: $45
    nop                                           ; $3BB9: $00
    nop                                           ; $3BBA: $00
    jr   jr_000_3BF5                              ; $3BBB: $18 $38

    db   $10                                      ; $3BBD: $10
    or   b                                        ; $3BBE: $B0
    ld   d, $12                                   ; $3BBF: $16 $12
    ld   b, a                                     ; $3BC1: $47
    nop                                           ; $3BC2: $00

jr_000_3BC3:
    rst  RST_38                                   ; $3BC3: $FF
    nop                                           ; $3BC4: $00
    sub  h                                        ; $3BC5: $94
    ld   e, b                                     ; $3BC6: $58
    dec  d                                        ; $3BC7: $15
    add  b                                        ; $3BC8: $80
    db   $10                                      ; $3BC9: $10
    rla                                           ; $3BCA: $17
    ld   c, b                                     ; $3BCB: $48
    nop                                           ; $3BCC: $00

jr_000_3BCD:
    nop                                           ; $3BCD: $00
    sub  l                                        ; $3BCE: $95
    ld   e, b                                     ; $3BCF: $58
    dec  d                                        ; $3BD0: $15
    sub  b                                        ; $3BD1: $90
    db   $10                                      ; $3BD2: $10
    rla                                           ; $3BD3: $17
    ld   c, b                                     ; $3BD4: $48
    nop                                           ; $3BD5: $00
    rst  RST_38                                   ; $3BD6: $FF
    nop                                           ; $3BD7: $00
    sub  h                                        ; $3BD8: $94
    cp   b                                        ; $3BD9: $B8
    dec  d                                        ; $3BDA: $15
    ld   h, b                                     ; $3BDB: $60
    ld   de, $4917                                ; $3BDC: $11 $17 $49
    nop                                           ; $3BDF: $00
    nop                                           ; $3BE0: $00
    sub  l                                        ; $3BE1: $95
    cp   b                                        ; $3BE2: $B8
    dec  d                                        ; $3BE3: $15

jr_000_3BE4:
    ld   [hl], b                                  ; $3BE4: $70
    ld   de, $4917                                ; $3BE5: $11 $17 $49
    nop                                           ; $3BE8: $00
    rst  RST_38                                   ; $3BE9: $FF
    nop                                           ; $3BEA: $00
    sub  d                                        ; $3BEB: $92
    ld   c, b                                     ; $3BEC: $48
    ld   d, $70                                   ; $3BED: $16 $70
    dec  d                                        ; $3BEF: $15
    rla                                           ; $3BF0: $17
    ld   a, h                                     ; $3BF1: $7C
    ld   hl, $9300                                ; $3BF2: $21 $00 $93

jr_000_3BF5:
    ld   c, b                                     ; $3BF5: $48
    ld   d, $80                                   ; $3BF6: $16 $80
    dec  d                                        ; $3BF8: $15
    rla                                           ; $3BF9: $17
    ld   a, h                                     ; $3BFA: $7C
    ld   hl, $1800                                ; $3BFB: $21 $00 $18

jr_000_3BFE:
    ld   e, b                                     ; $3BFE: $58
    ld   d, $B0                                   ; $3BFF: $16 $B0
    dec  d                                        ; $3C01: $15
    dec  e                                        ; $3C02: $1D
    nop                                           ; $3C03: $00
    ld   c, $FF                                   ; $3C04: $0E $FF
    nop                                           ; $3C06: $00
    sub  b                                        ; $3C07: $90
    ld   l, b                                     ; $3C08: $68

jr_000_3C09:
    rla                                           ; $3C09: $17
    ld   h, b                                     ; $3C0A: $60
    inc  d                                        ; $3C0B: $14
    rla                                           ; $3C0C: $17
    ld   d, d                                     ; $3C0D: $52
    nop                                           ; $3C0E: $00

jr_000_3C0F:
    nop                                           ; $3C0F: $00
    sub  c                                        ; $3C10: $91
    ld   l, b                                     ; $3C11: $68
    rla                                           ; $3C12: $17
    ld   [hl], b                                  ; $3C13: $70
    inc  d                                        ; $3C14: $14
    rla                                           ; $3C15: $17
    ld   d, d                                     ; $3C16: $52
    nop                                           ; $3C17: $00
    nop                                           ; $3C18: $00
    jr   @-$66                                    ; $3C19: $18 $98

    rla                                           ; $3C1B: $17
    ld   b, b                                     ; $3C1C: $40
    inc  d                                        ; $3C1D: $14
    ld   [de], a                                  ; $3C1E: $12
    ld   c, e                                     ; $3C1F: $4B
    nop                                           ; $3C20: $00
    nop                                           ; $3C21: $00
    jr   @-$66                                    ; $3C22: $18 $98

    rla                                           ; $3C24: $17
    sub  b                                        ; $3C25: $90
    inc  d                                        ; $3C26: $14
    ld   de, $004E                                ; $3C27: $11 $4E $00

jr_000_3C2A:
    nop                                           ; $3C2A: $00
    jr   jr_000_3CA5                              ; $3C2B: $18 $78

    rla                                           ; $3C2D: $17
    ld   d, b                                     ; $3C2E: $50
    inc  d                                        ; $3C2F: $14
    ld   [de], a                                  ; $3C30: $12
    ld   d, c                                     ; $3C31: $51
    nop                                           ; $3C32: $00
    rst  RST_38                                   ; $3C33: $FF
    nop                                           ; $3C34: $00
    jr   jr_000_3C0F                              ; $3C35: $18 $D8

    ld   d, $70                                   ; $3C37: $16 $70
    ld   de, $0E11                                ; $3C39: $11 $11 $0E
    nop                                           ; $3C3C: $00
    nop                                           ; $3C3D: $00
    sub  [hl]                                     ; $3C3E: $96
    adc  b                                        ; $3C3F: $88
    ld   d, $60                                   ; $3C40: $16 $60
    ld   de, $0F17                                ; $3C42: $11 $17 $0F
    nop                                           ; $3C45: $00
    nop                                           ; $3C46: $00
    sub  a                                        ; $3C47: $97
    adc  b                                        ; $3C48: $88
    ld   d, $70                                   ; $3C49: $16 $70
    ld   de, $0F17                                ; $3C4B: $11 $17 $0F
    nop                                           ; $3C4E: $00
    nop                                           ; $3C4F: $00
    jr   jr_000_3C2A                              ; $3C50: $18 $D8

    ld   d, $40                                   ; $3C52: $16 $40
    ld   de, $001D                                ; $3C54: $11 $1D $00
    nop                                           ; $3C57: $00
    rst  RST_38                                   ; $3C58: $FF
    nop                                           ; $3C59: $00
    jr   jr_000_3BE4                              ; $3C5A: $18 $88

    ld   d, $90                                   ; $3C5C: $16 $90
    db   $10                                      ; $3C5E: $10
    ld   de, $0054                                ; $3C5F: $11 $54 $00
    rst  RST_38                                   ; $3C62: $FF
    nop                                           ; $3C63: $00
    jr   jr_000_3BFE                              ; $3C64: $18 $98

    rla                                           ; $3C66: $17
    ret  nz                                       ; $3C67: $C0

    db   $10                                      ; $3C68: $10
    ld   de, $0055                                ; $3C69: $11 $55 $00
    rst  RST_38                                   ; $3C6C: $FF
    rst  RST_38                                   ; $3C6D: $FF
    rst  RST_38                                   ; $3C6E: $FF
    nop                                           ; $3C6F: $00
    nop                                           ; $3C70: $00
    nop                                           ; $3C71: $00
    nop                                           ; $3C72: $00
    nop                                           ; $3C73: $00
    nop                                           ; $3C74: $00
    nop                                           ; $3C75: $00
    nop                                           ; $3C76: $00
    nop                                           ; $3C77: $00
    nop                                           ; $3C78: $00
    nop                                           ; $3C79: $00
    nop                                           ; $3C7A: $00
    nop                                           ; $3C7B: $00
    nop                                           ; $3C7C: $00
    nop                                           ; $3C7D: $00
    nop                                           ; $3C7E: $00
    nop                                           ; $3C7F: $00
    nop                                           ; $3C80: $00
    ld   d, c                                     ; $3C81: $51
    nop                                           ; $3C82: $00
    ld   b, b                                     ; $3C83: $40
    ld   b, b                                     ; $3C84: $40
    ld   c, l                                     ; $3C85: $4D
    ld   b, b                                     ; $3C86: $40
    ld   e, c                                     ; $3C87: $59
    add  b                                        ; $3C88: $80
    ld   l, b                                     ; $3C89: $68
    nop                                           ; $3C8A: $00
    ld   [hl], l                                  ; $3C8B: $75
    nop                                           ; $3C8C: $00
    ld   b, h                                     ; $3C8D: $44
    nop                                           ; $3C8E: $00
    ld   b, h                                     ; $3C8F: $44
    nop                                           ; $3C90: $00
    ld   b, h                                     ; $3C91: $44
    nop                                           ; $3C92: $00
    ld   [hl], b                                  ; $3C93: $70
    nop                                           ; $3C94: $00
    nop                                           ; $3C95: $00
    nop                                           ; $3C96: $00
    nop                                           ; $3C97: $00
    call c, Call_000_2C3C                         ; $3C98: $DC $3C $2C
    dec  a                                        ; $3C9B: $3D
    xor  h                                        ; $3C9C: $AC
    dec  a                                        ; $3C9D: $3D
    inc  l                                        ; $3C9E: $2C
    ld   a, $AC                                   ; $3C9F: $3E $AC
    ld   a, $EC                                   ; $3CA1: $3E $EC
    ld   a, $0C                                   ; $3CA3: $3E $0C

jr_000_3CA5:
    ccf                                           ; $3CA5: $3F
    inc  c                                        ; $3CA6: $0C
    ccf                                           ; $3CA7: $3F
    inc  c                                        ; $3CA8: $0C
    ccf                                           ; $3CA9: $3F
    ld   e, h                                     ; $3CAA: $5C
    ccf                                           ; $3CAB: $3F
    nop                                           ; $3CAC: $00
    nop                                           ; $3CAD: $00
    nop                                           ; $3CAE: $00
    nop                                           ; $3CAF: $00
    nop                                           ; $3CB0: $00
    ld   e, d                                     ; $3CB1: $5A
    ld   b, b                                     ; $3CB2: $40
    ld   b, a                                     ; $3CB3: $47
    ld   b, b                                     ; $3CB4: $40
    ld   d, e                                     ; $3CB5: $53
    add  b                                        ; $3CB6: $80
    ld   h, d                                     ; $3CB7: $62
    nop                                           ; $3CB8: $00
    ld   l, a                                     ; $3CB9: $6F
    ld   b, b                                     ; $3CBA: $40
    ld   a, c                                     ; $3CBB: $79
    nop                                           ; $3CBC: $00
    ld   c, e                                     ; $3CBD: $4B
    nop                                           ; $3CBE: $00
    ld   c, e                                     ; $3CBF: $4B
    nop                                           ; $3CC0: $00
    ld   c, e                                     ; $3CC1: $4B
    ld   b, b                                     ; $3CC2: $40
    ld   [hl], a                                  ; $3CC3: $77
    nop                                           ; $3CC4: $00
    nop                                           ; $3CC5: $00
    nop                                           ; $3CC6: $00
    nop                                           ; $3CC7: $00
    nop                                           ; $3CC8: $00
    ld   e, [hl]                                  ; $3CC9: $5E
    ld   b, b                                     ; $3CCA: $40
    ld   c, e                                     ; $3CCB: $4B
    ld   b, b                                     ; $3CCC: $40
    ld   d, a                                     ; $3CCD: $57
    add  b                                        ; $3CCE: $80
    ld   h, [hl]                                  ; $3CCF: $66
    nop                                           ; $3CD0: $00
    ld   [hl], e                                  ; $3CD1: $73
    ld   b, b                                     ; $3CD2: $40
    ld   a, l                                     ; $3CD3: $7D
    nop                                           ; $3CD4: $00
    ld   c, a                                     ; $3CD5: $4F
    nop                                           ; $3CD6: $00
    ld   c, a                                     ; $3CD7: $4F
    nop                                           ; $3CD8: $00
    ld   c, a                                     ; $3CD9: $4F
    ld   b, b                                     ; $3CDA: $40
    ld   a, e                                     ; $3CDB: $7B
    ld   b, b                                     ; $3CDC: $40
    ld   d, c                                     ; $3CDD: $51
    add  b                                        ; $3CDE: $80
    ld   d, c                                     ; $3CDF: $51
    ret  nz                                       ; $3CE0: $C0

    ld   d, c                                     ; $3CE1: $51
    nop                                           ; $3CE2: $00
    ld   d, d                                     ; $3CE3: $52
    ld   b, b                                     ; $3CE4: $40
    ld   d, d                                     ; $3CE5: $52
    add  b                                        ; $3CE6: $80
    ld   d, d                                     ; $3CE7: $52
    ret  nz                                       ; $3CE8: $C0

    ld   d, d                                     ; $3CE9: $52
    nop                                           ; $3CEA: $00
    ld   d, e                                     ; $3CEB: $53
    ld   b, b                                     ; $3CEC: $40
    ld   d, e                                     ; $3CED: $53
    add  b                                        ; $3CEE: $80
    ld   d, e                                     ; $3CEF: $53
    ret  nz                                       ; $3CF0: $C0

    ld   d, e                                     ; $3CF1: $53
    nop                                           ; $3CF2: $00
    ld   d, h                                     ; $3CF3: $54
    ld   b, b                                     ; $3CF4: $40
    ld   d, h                                     ; $3CF5: $54
    add  b                                        ; $3CF6: $80
    ld   d, h                                     ; $3CF7: $54
    ret  nz                                       ; $3CF8: $C0

    ld   d, h                                     ; $3CF9: $54
    nop                                           ; $3CFA: $00
    ld   d, l                                     ; $3CFB: $55
    ld   b, b                                     ; $3CFC: $40
    ld   d, l                                     ; $3CFD: $55
    add  b                                        ; $3CFE: $80
    ld   d, l                                     ; $3CFF: $55
    ret  nz                                       ; $3D00: $C0

    ld   d, l                                     ; $3D01: $55
    nop                                           ; $3D02: $00
    ld   d, [hl]                                  ; $3D03: $56
    ld   b, b                                     ; $3D04: $40
    ld   d, [hl]                                  ; $3D05: $56
    ld   b, b                                     ; $3D06: $40
    ld   d, [hl]                                  ; $3D07: $56
    ld   b, b                                     ; $3D08: $40
    ld   d, [hl]                                  ; $3D09: $56
    ld   b, b                                     ; $3D0A: $40
    ld   d, [hl]                                  ; $3D0B: $56
    ld   b, b                                     ; $3D0C: $40
    ld   d, [hl]                                  ; $3D0D: $56
    add  b                                        ; $3D0E: $80
    ld   d, [hl]                                  ; $3D0F: $56
    ret  nz                                       ; $3D10: $C0

    ld   d, [hl]                                  ; $3D11: $56
    nop                                           ; $3D12: $00
    ld   d, a                                     ; $3D13: $57
    ld   b, b                                     ; $3D14: $40
    ld   d, a                                     ; $3D15: $57
    add  b                                        ; $3D16: $80
    ld   d, a                                     ; $3D17: $57
    ret  nz                                       ; $3D18: $C0

    ld   d, a                                     ; $3D19: $57
    nop                                           ; $3D1A: $00
    ld   e, b                                     ; $3D1B: $58
    ld   b, b                                     ; $3D1C: $40
    ld   e, b                                     ; $3D1D: $58
    add  b                                        ; $3D1E: $80
    ld   e, b                                     ; $3D1F: $58
    ret  nz                                       ; $3D20: $C0

    ld   e, b                                     ; $3D21: $58
    nop                                           ; $3D22: $00
    ld   e, c                                     ; $3D23: $59
    ld   b, b                                     ; $3D24: $40
    ld   e, c                                     ; $3D25: $59
    add  b                                        ; $3D26: $80
    ld   e, c                                     ; $3D27: $59
    ret  nz                                       ; $3D28: $C0

    ld   e, c                                     ; $3D29: $59
    nop                                           ; $3D2A: $00
    ld   e, d                                     ; $3D2B: $5A
    ld   b, b                                     ; $3D2C: $40
    ld   b, b                                     ; $3D2D: $40
    add  b                                        ; $3D2E: $80
    ld   b, b                                     ; $3D2F: $40
    add  b                                        ; $3D30: $80
    ld   b, b                                     ; $3D31: $40
    add  b                                        ; $3D32: $80
    ld   b, b                                     ; $3D33: $40
    add  b                                        ; $3D34: $80
    ld   b, b                                     ; $3D35: $40
    add  b                                        ; $3D36: $80
    ld   b, b                                     ; $3D37: $40
    ret  nz                                       ; $3D38: $C0

    ld   b, b                                     ; $3D39: $40
    ret  nz                                       ; $3D3A: $C0

    ld   b, b                                     ; $3D3B: $40
    ret  nz                                       ; $3D3C: $C0

    ld   b, b                                     ; $3D3D: $40
    nop                                           ; $3D3E: $00
    ld   b, c                                     ; $3D3F: $41
    ld   b, b                                     ; $3D40: $40
    ld   b, c                                     ; $3D41: $41
    add  b                                        ; $3D42: $80
    ld   b, c                                     ; $3D43: $41
    ret  nz                                       ; $3D44: $C0

    ld   b, c                                     ; $3D45: $41
    nop                                           ; $3D46: $00
    ld   b, d                                     ; $3D47: $42
    ld   b, b                                     ; $3D48: $40
    ld   b, d                                     ; $3D49: $42
    ld   b, b                                     ; $3D4A: $40
    ld   b, d                                     ; $3D4B: $42
    ld   b, b                                     ; $3D4C: $40
    ld   b, d                                     ; $3D4D: $42
    add  b                                        ; $3D4E: $80
    ld   b, d                                     ; $3D4F: $42
    ret  nz                                       ; $3D50: $C0

    ld   b, d                                     ; $3D51: $42
    nop                                           ; $3D52: $00
    ld   b, e                                     ; $3D53: $43
    ld   b, b                                     ; $3D54: $40
    ld   b, e                                     ; $3D55: $43
    add  b                                        ; $3D56: $80
    ld   b, e                                     ; $3D57: $43
    add  b                                        ; $3D58: $80
    ld   b, e                                     ; $3D59: $43
    add  b                                        ; $3D5A: $80
    ld   b, e                                     ; $3D5B: $43
    add  b                                        ; $3D5C: $80
    ld   b, e                                     ; $3D5D: $43
    ret  nz                                       ; $3D5E: $C0

    ld   b, e                                     ; $3D5F: $43
    nop                                           ; $3D60: $00
    ld   b, h                                     ; $3D61: $44
    ld   b, b                                     ; $3D62: $40
    ld   b, h                                     ; $3D63: $44
    ld   b, b                                     ; $3D64: $40
    ld   b, h                                     ; $3D65: $44
    ld   b, b                                     ; $3D66: $40
    ld   b, h                                     ; $3D67: $44
    ld   b, b                                     ; $3D68: $40
    ld   b, h                                     ; $3D69: $44
    ld   b, b                                     ; $3D6A: $40
    ld   b, h                                     ; $3D6B: $44
    ld   b, b                                     ; $3D6C: $40
    ld   b, h                                     ; $3D6D: $44
    add  b                                        ; $3D6E: $80
    ld   b, h                                     ; $3D6F: $44
    ret  nz                                       ; $3D70: $C0

    ld   b, h                                     ; $3D71: $44
    nop                                           ; $3D72: $00
    ld   b, l                                     ; $3D73: $45
    nop                                           ; $3D74: $00
    ld   b, l                                     ; $3D75: $45
    nop                                           ; $3D76: $00
    ld   b, l                                     ; $3D77: $45
    nop                                           ; $3D78: $00
    ld   b, l                                     ; $3D79: $45
    nop                                           ; $3D7A: $00
    ld   b, l                                     ; $3D7B: $45
    nop                                           ; $3D7C: $00
    ld   b, l                                     ; $3D7D: $45
    ld   b, b                                     ; $3D7E: $40
    ld   b, l                                     ; $3D7F: $45
    add  b                                        ; $3D80: $80
    ld   b, l                                     ; $3D81: $45
    ret  nz                                       ; $3D82: $C0

    ld   b, l                                     ; $3D83: $45
    ret  nz                                       ; $3D84: $C0

    ld   b, l                                     ; $3D85: $45
    ret  nz                                       ; $3D86: $C0

    ld   b, l                                     ; $3D87: $45
    ret  nz                                       ; $3D88: $C0

    ld   b, l                                     ; $3D89: $45
    ret  nz                                       ; $3D8A: $C0

    ld   b, l                                     ; $3D8B: $45
    ret  nz                                       ; $3D8C: $C0

    ld   b, l                                     ; $3D8D: $45
    nop                                           ; $3D8E: $00
    ld   b, [hl]                                  ; $3D8F: $46
    ld   b, b                                     ; $3D90: $40
    ld   b, [hl]                                  ; $3D91: $46
    add  b                                        ; $3D92: $80
    ld   b, [hl]                                  ; $3D93: $46
    add  b                                        ; $3D94: $80
    ld   b, [hl]                                  ; $3D95: $46
    add  b                                        ; $3D96: $80
    ld   b, [hl]                                  ; $3D97: $46
    add  b                                        ; $3D98: $80
    ld   b, [hl]                                  ; $3D99: $46
    add  b                                        ; $3D9A: $80
    ld   b, [hl]                                  ; $3D9B: $46
    add  b                                        ; $3D9C: $80
    ld   b, [hl]                                  ; $3D9D: $46
    ret  nz                                       ; $3D9E: $C0

    ld   b, [hl]                                  ; $3D9F: $46
    nop                                           ; $3DA0: $00
    ld   b, a                                     ; $3DA1: $47
    ld   b, b                                     ; $3DA2: $40
    ld   b, a                                     ; $3DA3: $47
    ld   b, b                                     ; $3DA4: $40
    ld   b, a                                     ; $3DA5: $47
    ld   b, b                                     ; $3DA6: $40
    ld   b, a                                     ; $3DA7: $47
    ld   b, b                                     ; $3DA8: $40
    ld   b, a                                     ; $3DA9: $47
    ld   b, b                                     ; $3DAA: $40
    ld   b, a                                     ; $3DAB: $47
    add  b                                        ; $3DAC: $80
    ld   c, l                                     ; $3DAD: $4D
    ret  nz                                       ; $3DAE: $C0

    ld   c, l                                     ; $3DAF: $4D
    nop                                           ; $3DB0: $00
    ld   c, [hl]                                  ; $3DB1: $4E
    add  b                                        ; $3DB2: $80
    ld   c, l                                     ; $3DB3: $4D
    add  b                                        ; $3DB4: $80
    ld   c, l                                     ; $3DB5: $4D
    add  b                                        ; $3DB6: $80
    ld   c, l                                     ; $3DB7: $4D
    add  b                                        ; $3DB8: $80
    ld   c, l                                     ; $3DB9: $4D
    add  b                                        ; $3DBA: $80
    ld   c, l                                     ; $3DBB: $4D
    ld   b, b                                     ; $3DBC: $40
    ld   c, [hl]                                  ; $3DBD: $4E
    add  b                                        ; $3DBE: $80
    ld   c, [hl]                                  ; $3DBF: $4E
    add  b                                        ; $3DC0: $80
    ld   c, l                                     ; $3DC1: $4D
    add  b                                        ; $3DC2: $80
    ld   c, l                                     ; $3DC3: $4D
    add  b                                        ; $3DC4: $80
    ld   c, l                                     ; $3DC5: $4D
    add  b                                        ; $3DC6: $80

Jump_000_3DC7:
    ld   c, l                                     ; $3DC7: $4D
    add  b                                        ; $3DC8: $80
    ld   c, l                                     ; $3DC9: $4D
    add  b                                        ; $3DCA: $80
    ld   c, l                                     ; $3DCB: $4D
    ret  nz                                       ; $3DCC: $C0

    ld   c, [hl]                                  ; $3DCD: $4E
    nop                                           ; $3DCE: $00
    ld   c, a                                     ; $3DCF: $4F
    add  b                                        ; $3DD0: $80
    ld   c, l                                     ; $3DD1: $4D
    add  b                                        ; $3DD2: $80
    ld   c, l                                     ; $3DD3: $4D
    add  b                                        ; $3DD4: $80
    ld   c, l                                     ; $3DD5: $4D
    add  b                                        ; $3DD6: $80
    ld   c, l                                     ; $3DD7: $4D
    add  b                                        ; $3DD8: $80
    ld   c, l                                     ; $3DD9: $4D
    add  b                                        ; $3DDA: $80
    ld   c, l                                     ; $3DDB: $4D
    add  b                                        ; $3DDC: $80
    ld   c, l                                     ; $3DDD: $4D
    add  b                                        ; $3DDE: $80
    ld   c, l                                     ; $3DDF: $4D
    add  b                                        ; $3DE0: $80
    ld   c, l                                     ; $3DE1: $4D
    add  b                                        ; $3DE2: $80
    ld   c, l                                     ; $3DE3: $4D
    add  b                                        ; $3DE4: $80
    ld   c, l                                     ; $3DE5: $4D
    add  b                                        ; $3DE6: $80
    ld   c, l                                     ; $3DE7: $4D
    add  b                                        ; $3DE8: $80
    ld   c, l                                     ; $3DE9: $4D
    add  b                                        ; $3DEA: $80
    ld   c, l                                     ; $3DEB: $4D
    add  b                                        ; $3DEC: $80
    ld   c, l                                     ; $3DED: $4D
    add  b                                        ; $3DEE: $80
    ld   c, l                                     ; $3DEF: $4D
    add  b                                        ; $3DF0: $80
    ld   c, l                                     ; $3DF1: $4D
    add  b                                        ; $3DF2: $80
    ld   c, l                                     ; $3DF3: $4D
    add  b                                        ; $3DF4: $80
    ld   c, l                                     ; $3DF5: $4D
    add  b                                        ; $3DF6: $80
    ld   c, l                                     ; $3DF7: $4D
    add  b                                        ; $3DF8: $80
    ld   c, l                                     ; $3DF9: $4D
    add  b                                        ; $3DFA: $80
    ld   c, l                                     ; $3DFB: $4D
    add  b                                        ; $3DFC: $80
    ld   c, l                                     ; $3DFD: $4D
    add  b                                        ; $3DFE: $80
    ld   c, l                                     ; $3DFF: $4D
    add  b                                        ; $3E00: $80
    ld   c, l                                     ; $3E01: $4D
    add  b                                        ; $3E02: $80
    ld   c, l                                     ; $3E03: $4D
    add  b                                        ; $3E04: $80
    ld   c, l                                     ; $3E05: $4D
    add  b                                        ; $3E06: $80
    ld   c, l                                     ; $3E07: $4D
    add  b                                        ; $3E08: $80
    ld   c, l                                     ; $3E09: $4D
    add  b                                        ; $3E0A: $80
    ld   c, l                                     ; $3E0B: $4D
    ld   b, b                                     ; $3E0C: $40
    ld   c, a                                     ; $3E0D: $4F
    add  b                                        ; $3E0E: $80
    ld   c, a                                     ; $3E0F: $4F
    ret  nz                                       ; $3E10: $C0

    ld   c, a                                     ; $3E11: $4F
    nop                                           ; $3E12: $00
    ld   d, b                                     ; $3E13: $50
    ld   b, b                                     ; $3E14: $40
    ld   d, b                                     ; $3E15: $50
    add  b                                        ; $3E16: $80
    ld   d, b                                     ; $3E17: $50
    ret  nz                                       ; $3E18: $C0

    ld   d, b                                     ; $3E19: $50
    nop                                           ; $3E1A: $00
    ld   d, c                                     ; $3E1B: $51
    ld   b, b                                     ; $3E1C: $40
    ld   d, c                                     ; $3E1D: $51
    add  b                                        ; $3E1E: $80
    ld   d, c                                     ; $3E1F: $51
    ret  nz                                       ; $3E20: $C0

    ld   d, c                                     ; $3E21: $51
    nop                                           ; $3E22: $00
    ld   d, d                                     ; $3E23: $52
    ld   b, b                                     ; $3E24: $40
    ld   d, d                                     ; $3E25: $52
    add  b                                        ; $3E26: $80
    ld   d, d                                     ; $3E27: $52
    ret  nz                                       ; $3E28: $C0

    ld   d, d                                     ; $3E29: $52
    nop                                           ; $3E2A: $00
    ld   d, e                                     ; $3E2B: $53
    add  b                                        ; $3E2C: $80
    ld   e, c                                     ; $3E2D: $59
    ret  nz                                       ; $3E2E: $C0

    ld   e, c                                     ; $3E2F: $59
    add  b                                        ; $3E30: $80
    ld   e, c                                     ; $3E31: $59
    nop                                           ; $3E32: $00
    ld   e, d                                     ; $3E33: $5A
    ld   b, b                                     ; $3E34: $40
    ld   e, d                                     ; $3E35: $5A
    add  b                                        ; $3E36: $80
    ld   e, c                                     ; $3E37: $59
    add  b                                        ; $3E38: $80
    ld   e, c                                     ; $3E39: $59
    add  b                                        ; $3E3A: $80
    ld   e, c                                     ; $3E3B: $59
    add  b                                        ; $3E3C: $80
    ld   e, d                                     ; $3E3D: $5A
    ret  nz                                       ; $3E3E: $C0

    ld   e, d                                     ; $3E3F: $5A
    add  b                                        ; $3E40: $80
    ld   e, c                                     ; $3E41: $59
    nop                                           ; $3E42: $00
    ld   e, e                                     ; $3E43: $5B
    ld   b, b                                     ; $3E44: $40
    ld   e, e                                     ; $3E45: $5B
    add  b                                        ; $3E46: $80
    ld   e, c                                     ; $3E47: $59
    add  b                                        ; $3E48: $80
    ld   e, c                                     ; $3E49: $59
    add  b                                        ; $3E4A: $80
    ld   e, c                                     ; $3E4B: $59
    add  b                                        ; $3E4C: $80
    ld   e, e                                     ; $3E4D: $5B
    ret  nz                                       ; $3E4E: $C0

    ld   e, e                                     ; $3E4F: $5B
    add  b                                        ; $3E50: $80
    ld   e, c                                     ; $3E51: $59
    nop                                           ; $3E52: $00
    ld   e, h                                     ; $3E53: $5C
    ld   b, b                                     ; $3E54: $40
    ld   e, h                                     ; $3E55: $5C
    add  b                                        ; $3E56: $80
    ld   e, c                                     ; $3E57: $59
    add  b                                        ; $3E58: $80
    ld   e, c                                     ; $3E59: $59
    add  b                                        ; $3E5A: $80
    ld   e, c                                     ; $3E5B: $59
    add  b                                        ; $3E5C: $80
    ld   e, h                                     ; $3E5D: $5C
    ret  nz                                       ; $3E5E: $C0

    ld   e, h                                     ; $3E5F: $5C
    add  b                                        ; $3E60: $80
    ld   e, c                                     ; $3E61: $59
    nop                                           ; $3E62: $00
    ld   e, l                                     ; $3E63: $5D
    ld   b, b                                     ; $3E64: $40
    ld   e, l                                     ; $3E65: $5D
    add  b                                        ; $3E66: $80

Call_000_3E67:
    ld   e, l                                     ; $3E67: $5D
    ret  nz                                       ; $3E68: $C0

    ld   e, l                                     ; $3E69: $5D
    nop                                           ; $3E6A: $00
    ld   e, [hl]                                  ; $3E6B: $5E
    ld   b, b                                     ; $3E6C: $40
    ld   e, [hl]                                  ; $3E6D: $5E
    add  b                                        ; $3E6E: $80
    ld   e, [hl]                                  ; $3E6F: $5E
    ret  nz                                       ; $3E70: $C0

    ld   e, [hl]                                  ; $3E71: $5E
    nop                                           ; $3E72: $00
    ld   e, a                                     ; $3E73: $5F
    ld   b, b                                     ; $3E74: $40
    ld   e, a                                     ; $3E75: $5F
    add  b                                        ; $3E76: $80
    ld   e, a                                     ; $3E77: $5F
    ret  nz                                       ; $3E78: $C0

    ld   e, a                                     ; $3E79: $5F
    nop                                           ; $3E7A: $00
    ld   h, b                                     ; $3E7B: $60
    ld   b, b                                     ; $3E7C: $40
    ld   h, b                                     ; $3E7D: $60
    add  b                                        ; $3E7E: $80
    ld   h, b                                     ; $3E7F: $60
    ret  nz                                       ; $3E80: $C0

    ld   h, b                                     ; $3E81: $60
    add  b                                        ; $3E82: $80
    ld   e, c                                     ; $3E83: $59
    add  b                                        ; $3E84: $80
    ld   e, c                                     ; $3E85: $59
    add  b                                        ; $3E86: $80
    ld   e, c                                     ; $3E87: $59
    add  b                                        ; $3E88: $80
    ld   e, c                                     ; $3E89: $59
    add  b                                        ; $3E8A: $80
    ld   e, c                                     ; $3E8B: $59
    nop                                           ; $3E8C: $00
    ld   h, c                                     ; $3E8D: $61
    ld   b, b                                     ; $3E8E: $40
    ld   h, c                                     ; $3E8F: $61
    add  b                                        ; $3E90: $80
    ld   h, c                                     ; $3E91: $61
    add  b                                        ; $3E92: $80
    ld   e, c                                     ; $3E93: $59
    add  b                                        ; $3E94: $80
    ld   e, c                                     ; $3E95: $59
    add  b                                        ; $3E96: $80
    ld   e, c                                     ; $3E97: $59
    add  b                                        ; $3E98: $80
    ld   e, c                                     ; $3E99: $59
    add  b                                        ; $3E9A: $80
    ld   e, c                                     ; $3E9B: $59
    ret  nz                                       ; $3E9C: $C0

    ld   h, c                                     ; $3E9D: $61
    nop                                           ; $3E9E: $00
    ld   h, d                                     ; $3E9F: $62
    ld   b, b                                     ; $3EA0: $40
    ld   h, d                                     ; $3EA1: $62
    add  b                                        ; $3EA2: $80
    ld   e, c                                     ; $3EA3: $59
    add  b                                        ; $3EA4: $80
    ld   e, c                                     ; $3EA5: $59
    add  b                                        ; $3EA6: $80
    ld   e, c                                     ; $3EA7: $59
    add  b                                        ; $3EA8: $80
    ld   e, c                                     ; $3EA9: $59
    add  b                                        ; $3EAA: $80
    ld   e, c                                     ; $3EAB: $59
    ret  nz                                       ; $3EAC: $C0

    ld   l, b                                     ; $3EAD: $68
    ret  nz                                       ; $3EAE: $C0

    ld   l, b                                     ; $3EAF: $68
    ret  nz                                       ; $3EB0: $C0

    ld   l, b                                     ; $3EB1: $68
    ret  nz                                       ; $3EB2: $C0

    ld   l, b                                     ; $3EB3: $68
    ret  nz                                       ; $3EB4: $C0

    ld   l, b                                     ; $3EB5: $68
    ret  nz                                       ; $3EB6: $C0

    ld   l, b                                     ; $3EB7: $68
    ret  nz                                       ; $3EB8: $C0

    ld   l, b                                     ; $3EB9: $68
    ret  nz                                       ; $3EBA: $C0

    ld   l, b                                     ; $3EBB: $68
    nop                                           ; $3EBC: $00
    ld   l, c                                     ; $3EBD: $69
    ld   b, b                                     ; $3EBE: $40
    ld   l, c                                     ; $3EBF: $69
    add  b                                        ; $3EC0: $80
    ld   l, c                                     ; $3EC1: $69
    ret  nz                                       ; $3EC2: $C0

    ld   l, c                                     ; $3EC3: $69
    nop                                           ; $3EC4: $00
    ld   l, d                                     ; $3EC5: $6A
    ld   b, b                                     ; $3EC6: $40
    ld   l, d                                     ; $3EC7: $6A
    add  b                                        ; $3EC8: $80
    ld   l, d                                     ; $3EC9: $6A
    ret  nz                                       ; $3ECA: $C0

    ld   l, d                                     ; $3ECB: $6A
    nop                                           ; $3ECC: $00
    ld   l, e                                     ; $3ECD: $6B
    ld   b, b                                     ; $3ECE: $40
    ld   l, e                                     ; $3ECF: $6B
    add  b                                        ; $3ED0: $80
    ld   l, e                                     ; $3ED1: $6B
    ret  nz                                       ; $3ED2: $C0

    ld   l, e                                     ; $3ED3: $6B
    nop                                           ; $3ED4: $00
    ld   l, h                                     ; $3ED5: $6C
    ld   b, b                                     ; $3ED6: $40
    ld   l, h                                     ; $3ED7: $6C
    add  b                                        ; $3ED8: $80
    ld   l, h                                     ; $3ED9: $6C
    ret  nz                                       ; $3EDA: $C0

    ld   l, h                                     ; $3EDB: $6C
    nop                                           ; $3EDC: $00
    ld   l, l                                     ; $3EDD: $6D
    ld   b, b                                     ; $3EDE: $40
    ld   l, l                                     ; $3EDF: $6D
    add  b                                        ; $3EE0: $80
    ld   l, l                                     ; $3EE1: $6D
    ret  nz                                       ; $3EE2: $C0

    ld   l, l                                     ; $3EE3: $6D
    nop                                           ; $3EE4: $00
    ld   l, [hl]                                  ; $3EE5: $6E
    ld   b, b                                     ; $3EE6: $40
    ld   l, [hl]                                  ; $3EE7: $6E
    add  b                                        ; $3EE8: $80
    ld   l, [hl]                                  ; $3EE9: $6E
    ret  nz                                       ; $3EEA: $C0

    ld   l, [hl]                                  ; $3EEB: $6E
    ld   b, b                                     ; $3EEC: $40
    ld   [hl], l                                  ; $3EED: $75
    add  b                                        ; $3EEE: $80
    ld   [hl], l                                  ; $3EEF: $75
    ret  nz                                       ; $3EF0: $C0

    ld   [hl], l                                  ; $3EF1: $75
    nop                                           ; $3EF2: $00
    halt                                          ; $3EF3: $76
    ld   b, b                                     ; $3EF4: $40
    halt                                          ; $3EF5: $76
    add  b                                        ; $3EF6: $80
    halt                                          ; $3EF7: $76
    ret  nz                                       ; $3EF8: $C0

    halt                                          ; $3EF9: $76
    nop                                           ; $3EFA: $00
    ld   [hl], a                                  ; $3EFB: $77
    ld   b, b                                     ; $3EFC: $40
    ld   [hl], a                                  ; $3EFD: $77
    add  b                                        ; $3EFE: $80
    ld   [hl], a                                  ; $3EFF: $77
    ret  nz                                       ; $3F00: $C0

    ld   [hl], a                                  ; $3F01: $77
    nop                                           ; $3F02: $00
    ld   a, b                                     ; $3F03: $78
    ld   b, b                                     ; $3F04: $40
    ld   a, b                                     ; $3F05: $78
    add  b                                        ; $3F06: $80
    ld   a, b                                     ; $3F07: $78
    ret  nz                                       ; $3F08: $C0

    ld   a, b                                     ; $3F09: $78
    nop                                           ; $3F0A: $00
    ld   a, c                                     ; $3F0B: $79
    ld   b, b                                     ; $3F0C: $40
    ld   b, h                                     ; $3F0D: $44
    add  b                                        ; $3F0E: $80
    ld   b, h                                     ; $3F0F: $44
    ret  nz                                       ; $3F10: $C0

    ld   b, h                                     ; $3F11: $44
    nop                                           ; $3F12: $00
    ld   b, l                                     ; $3F13: $45
    ld   b, b                                     ; $3F14: $40
    ld   b, l                                     ; $3F15: $45
    add  b                                        ; $3F16: $80
    ld   b, l                                     ; $3F17: $45
    ret  nz                                       ; $3F18: $C0

    ld   b, l                                     ; $3F19: $45
    ret  nz                                       ; $3F1A: $C0

    ld   b, l                                     ; $3F1B: $45
    ret  nz                                       ; $3F1C: $C0

    ld   b, l                                     ; $3F1D: $45
    nop                                           ; $3F1E: $00
    ld   b, [hl]                                  ; $3F1F: $46
    ld   b, b                                     ; $3F20: $40
    ld   b, [hl]                                  ; $3F21: $46
    add  b                                        ; $3F22: $80
    ld   b, [hl]                                  ; $3F23: $46
    ret  nz                                       ; $3F24: $C0

    ld   b, [hl]                                  ; $3F25: $46
    nop                                           ; $3F26: $00
    ld   b, a                                     ; $3F27: $47
    ld   b, b                                     ; $3F28: $40
    ld   b, a                                     ; $3F29: $47
    ld   b, b                                     ; $3F2A: $40
    ld   b, a                                     ; $3F2B: $47
    ld   b, b                                     ; $3F2C: $40
    ld   b, a                                     ; $3F2D: $47
    add  b                                        ; $3F2E: $80
    ld   b, a                                     ; $3F2F: $47
    ret  nz                                       ; $3F30: $C0

    ld   b, a                                     ; $3F31: $47
    nop                                           ; $3F32: $00
    ld   c, b                                     ; $3F33: $48
    ld   b, b                                     ; $3F34: $40
    ld   c, b                                     ; $3F35: $48
    add  b                                        ; $3F36: $80
    ld   c, b                                     ; $3F37: $48
    add  b                                        ; $3F38: $80
    ld   c, b                                     ; $3F39: $48
    add  b                                        ; $3F3A: $80
    ld   c, b                                     ; $3F3B: $48
    add  b                                        ; $3F3C: $80
    ld   c, b                                     ; $3F3D: $48
    ret  nz                                       ; $3F3E: $C0

    ld   c, b                                     ; $3F3F: $48
    nop                                           ; $3F40: $00
    ld   c, c                                     ; $3F41: $49
    ld   b, b                                     ; $3F42: $40
    ld   c, c                                     ; $3F43: $49
    add  b                                        ; $3F44: $80
    ld   c, c                                     ; $3F45: $49
    ret  nz                                       ; $3F46: $C0

    ld   c, c                                     ; $3F47: $49
    ret  nz                                       ; $3F48: $C0

    ld   c, c                                     ; $3F49: $49
    ret  nz                                       ; $3F4A: $C0

    ld   c, c                                     ; $3F4B: $49
    ret  nz                                       ; $3F4C: $C0

    ld   c, c                                     ; $3F4D: $49
    nop                                           ; $3F4E: $00
    ld   c, d                                     ; $3F4F: $4A
    ld   b, b                                     ; $3F50: $40
    ld   c, d                                     ; $3F51: $4A
    add  b                                        ; $3F52: $80
    ld   c, d                                     ; $3F53: $4A
    ret  nz                                       ; $3F54: $C0

    ld   c, d                                     ; $3F55: $4A
    nop                                           ; $3F56: $00
    ld   c, e                                     ; $3F57: $4B
    nop                                           ; $3F58: $00
    ld   c, e                                     ; $3F59: $4B
    nop                                           ; $3F5A: $00
    ld   c, e                                     ; $3F5B: $4B
    ret  z                                        ; $3F5C: $C8

    ld   [hl], c                                  ; $3F5D: $71
    ld   b, b                                     ; $3F5E: $40
    ld   [hl], b                                  ; $3F5F: $70
    ld   b, b                                     ; $3F60: $40
    ld   [hl], b                                  ; $3F61: $70
    ld   b, b                                     ; $3F62: $40
    ld   [hl], b                                  ; $3F63: $70
    ld   b, b                                     ; $3F64: $40
    ld   [hl], b                                  ; $3F65: $70
    ld   b, b                                     ; $3F66: $40
    ld   [hl], b                                  ; $3F67: $70
    add  b                                        ; $3F68: $80
    ld   [hl], b                                  ; $3F69: $70
    ret  nz                                       ; $3F6A: $C0

    ld   [hl], b                                  ; $3F6B: $70
    nop                                           ; $3F6C: $00
    ld   [hl], c                                  ; $3F6D: $71
    nop                                           ; $3F6E: $00
    ld   [hl], c                                  ; $3F6F: $71
    nop                                           ; $3F70: $00
    ld   [hl], c                                  ; $3F71: $71
    nop                                           ; $3F72: $00
    ld   [hl], c                                  ; $3F73: $71
    nop                                           ; $3F74: $00
    ld   [hl], c                                  ; $3F75: $71
    nop                                           ; $3F76: $00
    ld   [hl], c                                  ; $3F77: $71
    nop                                           ; $3F78: $00
    ld   [hl], c                                  ; $3F79: $71
    ld   b, b                                     ; $3F7A: $40
    ld   [hl], c                                  ; $3F7B: $71
    ld   b, b                                     ; $3F7C: $40
    ld   [hl], c                                  ; $3F7D: $71
    ld   b, b                                     ; $3F7E: $40
    ld   [hl], c                                  ; $3F7F: $71
    ld   b, b                                     ; $3F80: $40
    ld   [hl], c                                  ; $3F81: $71
    ld   b, b                                     ; $3F82: $40
    ld   [hl], c                                  ; $3F83: $71
    ld   b, b                                     ; $3F84: $40
    ld   [hl], c                                  ; $3F85: $71
    ld   b, b                                     ; $3F86: $40
    ld   [hl], c                                  ; $3F87: $71
    ld   b, b                                     ; $3F88: $40
    ld   [hl], c                                  ; $3F89: $71
    add  b                                        ; $3F8A: $80
    ld   [hl], c                                  ; $3F8B: $71
    add  b                                        ; $3F8C: $80
    ld   [hl], c                                  ; $3F8D: $71
    add  b                                        ; $3F8E: $80
    ld   [hl], c                                  ; $3F8F: $71
    add  b                                        ; $3F90: $80
    ld   [hl], c                                  ; $3F91: $71
    add  b                                        ; $3F92: $80
    ld   [hl], c                                  ; $3F93: $71
    add  b                                        ; $3F94: $80
    ld   [hl], c                                  ; $3F95: $71
    add  b                                        ; $3F96: $80
    ld   [hl], c                                  ; $3F97: $71
    add  b                                        ; $3F98: $80
    ld   [hl], c                                  ; $3F99: $71
    ret  nz                                       ; $3F9A: $C0

    ld   [hl], c                                  ; $3F9B: $71
    ret  nz                                       ; $3F9C: $C0

    ld   [hl], c                                  ; $3F9D: $71
    ret  nz                                       ; $3F9E: $C0

    ld   [hl], c                                  ; $3F9F: $71
    ret  nz                                       ; $3FA0: $C0

    ld   [hl], c                                  ; $3FA1: $71
    ret  nz                                       ; $3FA2: $C0

    ld   [hl], c                                  ; $3FA3: $71
    ret  nz                                       ; $3FA4: $C0

    ld   [hl], c                                  ; $3FA5: $71
    ret  nz                                       ; $3FA6: $C0

    ld   [hl], c                                  ; $3FA7: $71
    jr   c, @+$74                                 ; $3FA8: $38 $72

    ld   a, b                                     ; $3FAA: $78
    ld   [hl], d                                  ; $3FAB: $72
    ld   hl, sp+$71                               ; $3FAC: $F8 $71
    cp   b                                        ; $3FAE: $B8
    ld   [hl], d                                  ; $3FAF: $72
    ld   hl, sp+$72                               ; $3FB0: $F8 $72
    ld   hl, sp+$72                               ; $3FB2: $F8 $72
    ld   hl, sp+$72                               ; $3FB4: $F8 $72
    ld   hl, sp+$72                               ; $3FB6: $F8 $72
    ld   hl, sp+$72                               ; $3FB8: $F8 $72
    jr   c, @+$75                                 ; $3FBA: $38 $73

    ld   a, b                                     ; $3FBC: $78
    ld   [hl], e                                  ; $3FBD: $73
    cp   b                                        ; $3FBE: $B8
    ld   [hl], e                                  ; $3FBF: $73
    ldh  a, [$FF73]                               ; $3FC0: $F0 $73
    jr   nc, @+$76                                ; $3FC2: $30 $74

    ld   [hl], b                                  ; $3FC4: $70
    ld   [hl], h                                  ; $3FC5: $74
    or   b                                        ; $3FC6: $B0
    ld   [hl], h                                  ; $3FC7: $74
    ldh  a, [$FF74]                               ; $3FC8: $F0 $74
    jr   nc, @+$77                                ; $3FCA: $30 $75

    ret  c                                        ; $3FCC: $D8

    ld   [hl], l                                  ; $3FCD: $75
    ld   b, b                                     ; $3FCE: $40
    halt                                          ; $3FCF: $76
    db   $10                                      ; $3FD0: $10
    halt                                          ; $3FD1: $76
    ld   [hl], b                                  ; $3FD2: $70
    ld   [hl], l                                  ; $3FD3: $75
    xor  b                                        ; $3FD4: $A8
    ld   [hl], l                                  ; $3FD5: $75
    add  b                                        ; $3FD6: $80
    halt                                          ; $3FD7: $76
    ret  nz                                       ; $3FD8: $C0

    halt                                          ; $3FD9: $76
    nop                                           ; $3FDA: $00
    ld   [hl], a                                  ; $3FDB: $77
    nop                                           ; $3FDC: $00
    nop                                           ; $3FDD: $00
    nop                                           ; $3FDE: $00
    nop                                           ; $3FDF: $00
    nop                                           ; $3FE0: $00
    nop                                           ; $3FE1: $00
    nop                                           ; $3FE2: $00
    nop                                           ; $3FE3: $00
    nop                                           ; $3FE4: $00
    nop                                           ; $3FE5: $00
    nop                                           ; $3FE6: $00
    nop                                           ; $3FE7: $00
    nop                                           ; $3FE8: $00
    nop                                           ; $3FE9: $00
    nop                                           ; $3FEA: $00
    nop                                           ; $3FEB: $00
    nop                                           ; $3FEC: $00
    nop                                           ; $3FED: $00
    nop                                           ; $3FEE: $00
    nop                                           ; $3FEF: $00
    nop                                           ; $3FF0: $00
    nop                                           ; $3FF1: $00
    nop                                           ; $3FF2: $00
    nop                                           ; $3FF3: $00
    nop                                           ; $3FF4: $00
    nop                                           ; $3FF5: $00
    nop                                           ; $3FF6: $00
    nop                                           ; $3FF7: $00
    nop                                           ; $3FF8: $00
    nop                                           ; $3FF9: $00
    nop                                           ; $3FFA: $00
    nop                                           ; $3FFB: $00
    nop                                           ; $3FFC: $00
    nop                                           ; $3FFD: $00
    nop                                           ; $3FFE: $00
    nop                                           ; $3FFF: $00
