; Disassembly of "gargoyles_quest.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Jump_001_4000:
    ld   hl, $C36A                                ; $4000: $21 $6A $C3
    ld   a, [hl]                                  ; $4003: $7E
    and  $C0                                      ; $4004: $E6 $C0
    ld   [hl], a                                  ; $4006: $77
    ld   a, [$C203]                               ; $4007: $FA $03 $C2
    ld   b, a                                     ; $400A: $47
    call Call_001_4358                            ; $400B: $CD $58 $43
    call Call_001_4455                            ; $400E: $CD $55 $44
    call Call_001_439A                            ; $4011: $CD $9A $43
    ld   a, [$C369]                               ; $4014: $FA $69 $C3
    ld   b, a                                     ; $4017: $47
    call Call_001_4358                            ; $4018: $CD $58 $43
    call Call_001_403B                            ; $401B: $CD $3B $40
    ld   a, [$C203]                               ; $401E: $FA $03 $C2
    ld   b, a                                     ; $4021: $47
    call Call_001_4358                            ; $4022: $CD $58 $43
    call Call_001_41E6                            ; $4025: $CD $E6 $41
    call Call_001_4407                            ; $4028: $CD $07 $44
    call Call_001_448A                            ; $402B: $CD $8A $44
    ld   a, [$C36A]                               ; $402E: $FA $6A $C3
    bit  0, a                                     ; $4031: $CB $47
    ret  z                                        ; $4033: $C8

    ld   hl, $DF11                                ; $4034: $21 $11 $DF
    ld   a, [hl+]                                 ; $4037: $2A
    dec  a                                        ; $4038: $3D
    ld   [hl], a                                  ; $4039: $77
    ret                                           ; $403A: $C9


Call_001_403B:
    ld   a, [$C27B]                               ; $403B: $FA $7B $C2
    bit  3, a                                     ; $403E: $CB $5F
    ret  nz                                       ; $4040: $C0

    bit  5, a                                     ; $4041: $CB $6F
    ret  nz                                       ; $4043: $C0

    ld   a, [$C261]                               ; $4044: $FA $61 $C2
    bit  5, a                                     ; $4047: $CB $6F
    jr   nz, jr_001_405C                          ; $4049: $20 $11

    bit  4, a                                     ; $404B: $CB $67
    jr   nz, jr_001_40BB                          ; $404D: $20 $6C

    ld   hl, $C36B                                ; $404F: $21 $6B $C3
    set  7, [hl]                                  ; $4052: $CB $FE
    ld   a, [hl]                                  ; $4054: $7E
    rrca                                          ; $4055: $0F
    jr   c, jr_001_405C                           ; $4056: $38 $04

    rrca                                          ; $4058: $0F
    jr   c, jr_001_40BB                           ; $4059: $38 $60

    ret                                           ; $405B: $C9


Jump_001_405C:
jr_001_405C:
    ld   a, [$C36D]                               ; $405C: $FA $6D $C3
    call Call_001_4118                            ; $405F: $CD $18 $41
    ld   a, [$C36A]                               ; $4062: $FA $6A $C3
    bit  6, a                                     ; $4065: $CB $77
    jr   z, jr_001_4074                           ; $4067: $28 $0B

    ld   a, [$C206]                               ; $4069: $FA $06 $C2
    cpl                                           ; $406C: $2F
    inc  a                                        ; $406D: $3C
    and  $0F                                      ; $406E: $E6 $0F
    ld   c, a                                     ; $4070: $4F
    jp   Jump_001_4667                            ; $4071: $C3 $67 $46


jr_001_4074:
    ld   a, [$C36E]                               ; $4074: $FA $6E $C3
    ld   h, $C1                                   ; $4077: $26 $C1
    and  $F0                                      ; $4079: $E6 $F0
    swap a                                        ; $407B: $CB $37
    ld   l, a                                     ; $407D: $6F
    push hl                                       ; $407E: $E5
    ld   a, [$C371]                               ; $407F: $FA $71 $C3
    call Call_001_41DF                            ; $4082: $CD $DF $41
    pop  hl                                       ; $4085: $E1
    call Call_001_4097                            ; $4086: $CD $97 $40
    ld   a, [$C369]                               ; $4089: $FA $69 $C3
    sub  $08                                      ; $408C: $D6 $08
    and  $F0                                      ; $408E: $E6 $F0
    call Call_001_41DF                            ; $4090: $CD $DF $41
    call Call_001_4097                            ; $4093: $CD $97 $40
    ret                                           ; $4096: $C9


Call_001_4097:
    ld   a, [$C36C]                               ; $4097: $FA $6C $C3
    ld   b, $02                                   ; $409A: $06 $02
    cp   $0B                                      ; $409C: $FE $0B
    jr   z, jr_001_40A4                           ; $409E: $28 $04

    dec  b                                        ; $40A0: $05
    cp   $07                                      ; $40A1: $FE $07
    ret  nz                                       ; $40A3: $C0

jr_001_40A4:
    ld   a, b                                     ; $40A4: $78
    ld   [$C663], a                               ; $40A5: $EA $63 $C6
    ld   a, [$C36A]                               ; $40A8: $FA $6A $C3
    or   $10                                      ; $40AB: $F6 $10
    ld   [$C36A], a                               ; $40AD: $EA $6A $C3
    pop  hl                                       ; $40B0: $E1
    ld   a, [$C206]                               ; $40B1: $FA $06 $C2
    cpl                                           ; $40B4: $2F
    and  $0F                                      ; $40B5: $E6 $0F
    ld   c, a                                     ; $40B7: $4F
    jp   Jump_001_4667                            ; $40B8: $C3 $67 $46


Jump_001_40BB:
jr_001_40BB:
    ld   a, [$C36F]                               ; $40BB: $FA $6F $C3
    call Call_001_4118                            ; $40BE: $CD $18 $41
    ld   a, [$C36A]                               ; $40C1: $FA $6A $C3
    bit  6, a                                     ; $40C4: $CB $77
    jr   z, jr_001_40D1                           ; $40C6: $28 $09

    ld   a, [$C206]                               ; $40C8: $FA $06 $C2
    and  $0F                                      ; $40CB: $E6 $0F
    ld   c, a                                     ; $40CD: $4F
    jp   Jump_001_4694                            ; $40CE: $C3 $94 $46


jr_001_40D1:
    ld   a, [$C370]                               ; $40D1: $FA $70 $C3
    ld   h, $C1                                   ; $40D4: $26 $C1
    and  $F0                                      ; $40D6: $E6 $F0
    swap a                                        ; $40D8: $CB $37
    ld   l, a                                     ; $40DA: $6F
    push hl                                       ; $40DB: $E5
    ld   a, [$C371]                               ; $40DC: $FA $71 $C3
    call Call_001_41DF                            ; $40DF: $CD $DF $41
    pop  hl                                       ; $40E2: $E1
    call SideContactClassResponse                 ; $40E3: $CD $F4 $40
    ld   a, [$C369]                               ; $40E6: $FA $69 $C3
    sub  $08                                      ; $40E9: $D6 $08
    and  $F0                                      ; $40EB: $E6 $F0
    call Call_001_41DF                            ; $40ED: $CD $DF $41
    call SideContactClassResponse                 ; $40F0: $CD $F4 $40
    ret                                           ; $40F3: $C9


SideContactClassResponse::
    ld   a, [$C36C]                               ; $40F4: $FA $6C $C3
    ld   b, $02                                   ; $40F7: $06 $02
    cp   $0B                                      ; $40F9: $FE $0B
    jr   z, jr_001_4101                           ; $40FB: $28 $04

    dec  b                                        ; $40FD: $05
    cp   $07                                      ; $40FE: $FE $07
    ret  nz                                       ; $4100: $C0

jr_001_4101:
    ld   a, b                                     ; $4101: $78
    ld   [$C663], a                               ; $4102: $EA $63 $C6
    ld   a, [$C36A]                               ; $4105: $FA $6A $C3
    or   $10                                      ; $4108: $F6 $10
    ld   [$C36A], a                               ; $410A: $EA $6A $C3
    pop  hl                                       ; $410D: $E1
    ld   a, [$C206]                               ; $410E: $FA $06 $C2
    dec  a                                        ; $4111: $3D
    and  $0F                                      ; $4112: $E6 $0F
    ld   c, a                                     ; $4114: $4F
    jp   Jump_001_4694                            ; $4115: $C3 $94 $46


Call_001_4118:
    ld   h, $C1                                   ; $4118: $26 $C1
    and  $F0                                      ; $411A: $E6 $F0
    swap a                                        ; $411C: $CB $37
    ld   l, a                                     ; $411E: $6F
    ld   a, [$C36A]                               ; $411F: $FA $6A $C3
    and  $3F                                      ; $4122: $E6 $3F
    ld   [$C36A], a                               ; $4124: $EA $6A $C3
    push hl                                       ; $4127: $E5
    ld   a, [$C371]                               ; $4128: $FA $71 $C3
    call Call_001_41DF                            ; $412B: $CD $DF $41
    pop  hl                                       ; $412E: $E1
    ld   a, [$C36C]                               ; $412F: $FA $6C $C3
    cp   $01                                      ; $4132: $FE $01
    jr   z, jr_001_414B                           ; $4134: $28 $15

    cp   $09                                      ; $4136: $FE $09
    jr   z, jr_001_413C                           ; $4138: $28 $02

    jr   jr_001_417A                              ; $413A: $18 $3E

jr_001_413C:
    ld   a, [$C27B]                               ; $413C: $FA $7B $C2
    bit  1, a                                     ; $413F: $CB $4F
    jr   z, jr_001_4170                           ; $4141: $28 $2D

    ld   a, [$C36A]                               ; $4143: $FA $6A $C3
    or   $80                                      ; $4146: $F6 $80
    ld   [$C36A], a                               ; $4148: $EA $6A $C3

jr_001_414B:
    ld   a, [$C27B]                               ; $414B: $FA $7B $C2
    bit  1, a                                     ; $414E: $CB $4F
    jr   z, jr_001_4170                           ; $4150: $28 $1E

    ld   a, [$C20B]                               ; $4152: $FA $0B $C2
    bit  7, a                                     ; $4155: $CB $7F
    jr   nz, jr_001_4170                          ; $4157: $20 $17

    ld   a, [$C36B]                               ; $4159: $FA $6B $C3
    rlca                                          ; $415C: $07
    jr   c, jr_001_4170                           ; $415D: $38 $11

    ld   a, $08                                   ; $415F: $3E $08
    ld   [$C27B], a                               ; $4161: $EA $7B $C2
    xor  a                                        ; $4164: $AF
    ld   [$C2A2], a                               ; $4165: $EA $A2 $C2

WallLatchFacingFlipPath1::
    ld   a, [$C200]                               ; $4168: $FA $00 $C2
    xor  $20                                      ; $416B: $EE $20
    ld   [$C200], a                               ; $416D: $EA $00 $C2

jr_001_4170:
    ld   a, [$C36A]                               ; $4170: $FA $6A $C3
    or   $40                                      ; $4173: $F6 $40
    ld   [$C36A], a                               ; $4175: $EA $6A $C3
    jr   jr_001_4182                              ; $4178: $18 $08

jr_001_417A:
    cp   $0A                                      ; $417A: $FE $0A
    jr   z, jr_001_4170                           ; $417C: $28 $F2

    cp   $0D                                      ; $417E: $FE $0D
    jr   z, jr_001_4170                           ; $4180: $28 $EE

jr_001_4182:
    push hl                                       ; $4182: $E5
    ld   a, [$C376]                               ; $4183: $FA $76 $C3
    call Call_001_41DF                            ; $4186: $CD $DF $41
    pop  hl                                       ; $4189: $E1
    call Call_001_41AE                            ; $418A: $CD $AE $41
    ld   a, [$C373]                               ; $418D: $FA $73 $C3
    call Call_001_41DF                            ; $4190: $CD $DF $41
    ld   a, [$C36C]                               ; $4193: $FA $6C $C3
    cp   $01                                      ; $4196: $FE $01
    jr   z, jr_001_41A5                           ; $4198: $28 $0B

jr_001_419A:
    cp   $09                                      ; $419A: $FE $09
    jr   z, jr_001_41A5                           ; $419C: $28 $07

    cp   $0A                                      ; $419E: $FE $0A
    jr   z, jr_001_41A5                           ; $41A0: $28 $03

    cp   $0D                                      ; $41A2: $FE $0D
    ret  nz                                       ; $41A4: $C0

jr_001_41A5:
    ld   a, [$C36A]                               ; $41A5: $FA $6A $C3
    or   $40                                      ; $41A8: $F6 $40
    ld   [$C36A], a                               ; $41AA: $EA $6A $C3
    ret                                           ; $41AD: $C9


Call_001_41AE:
    cp   $01                                      ; $41AE: $FE $01
    jr   nz, jr_001_419A                          ; $41B0: $20 $E8

    ld   a, [$C27B]                               ; $41B2: $FA $7B $C2
    bit  1, a                                     ; $41B5: $CB $4F
    jr   z, jr_001_41D6                           ; $41B7: $28 $1D

    ld   a, [$C20B]                               ; $41B9: $FA $0B $C2
    rlca                                          ; $41BC: $07
    jr   c, jr_001_41D6                           ; $41BD: $38 $17

    ld   a, [$C36B]                               ; $41BF: $FA $6B $C3
    rlca                                          ; $41C2: $07
    jr   c, jr_001_41D6                           ; $41C3: $38 $11

    ld   a, $08                                   ; $41C5: $3E $08
    ld   [$C27B], a                               ; $41C7: $EA $7B $C2
    xor  a                                        ; $41CA: $AF
    ld   [$C2A2], a                               ; $41CB: $EA $A2 $C2

WallLatchFacingFlipPath2::
    ld   a, [$C200]                               ; $41CE: $FA $00 $C2
    xor  $20                                      ; $41D1: $EE $20
    ld   [$C200], a                               ; $41D3: $EA $00 $C2

jr_001_41D6:
    ld   a, [$C36A]                               ; $41D6: $FA $6A $C3
    or   $40                                      ; $41D9: $F6 $40
    ld   [$C36A], a                               ; $41DB: $EA $6A $C3
    ret                                           ; $41DE: $C9


Call_001_41DF:
    add  l                                        ; $41DF: $85
    ld   l, a                                     ; $41E0: $6F
    ld   a, [hl]                                  ; $41E1: $7E
    ld   [$C36C], a                               ; $41E2: $EA $6C $C3
    ret                                           ; $41E5: $C9


Call_001_41E6:
    ld   a, [$C36A]                               ; $41E6: $FA $6A $C3
    rlca                                          ; $41E9: $07
    jr   c, jr_001_41FD                           ; $41EA: $38 $11

    ld   a, [$C27B]                               ; $41EC: $FA $7B $C2
    bit  3, a                                     ; $41EF: $CB $5F
    ret  nz                                       ; $41F1: $C0

    bit  1, a                                     ; $41F2: $CB $4F
    jr   z, jr_001_41FD                           ; $41F4: $28 $07

    ld   a, [$C27C]                               ; $41F6: $FA $7C $C2
    and  a                                        ; $41F9: $A7
    jr   nz, jr_001_41FD                          ; $41FA: $20 $01

    ret                                           ; $41FC: $C9


jr_001_41FD:
    ld   b, $00                                   ; $41FD: $06 $00
    ld   d, b                                     ; $41FF: $50
    ld   hl, $C100                                ; $4200: $21 $00 $C1
    ld   a, [$C374]                               ; $4203: $FA $74 $C3
    ld   e, a                                     ; $4206: $5F
    add  hl, de                                   ; $4207: $19
    push hl                                       ; $4208: $E5
    ld   a, [$C36E]                               ; $4209: $FA $6E $C3
    call Call_001_4270                            ; $420C: $CD $70 $42
    pop  hl                                       ; $420F: $E1
    call Call_001_427B                            ; $4210: $CD $7B $42
    push hl                                       ; $4213: $E5
    ld   a, [$C370]                               ; $4214: $FA $70 $C3
    call Call_001_4270                            ; $4217: $CD $70 $42
    pop  hl                                       ; $421A: $E1
    call Call_001_427B                            ; $421B: $CD $7B $42
    push hl                                       ; $421E: $E5
    ld   a, [$C375]                               ; $421F: $FA $75 $C3
    call Call_001_4270                            ; $4222: $CD $70 $42
    pop  hl                                       ; $4225: $E1
    call Call_001_42C9                            ; $4226: $CD $C9 $42
    ld   a, [$C36A]                               ; $4229: $FA $6A $C3
    and  $28                                      ; $422C: $E6 $28
    ret  nz                                       ; $422E: $C0

    ld   a, [$C27B]                               ; $422F: $FA $7B $C2
    bit  1, a                                     ; $4232: $CB $4F
    jr   nz, jr_001_4254                          ; $4234: $20 $1E

    ld   de, $0000                                ; $4236: $11 $00 $00
    ld   hl, $C100                                ; $4239: $21 $00 $C1
    ld   a, [$C373]                               ; $423C: $FA $73 $C3
    ld   e, a                                     ; $423F: $5F
    add  hl, de                                   ; $4240: $19
    ld   a, [$C375]                               ; $4241: $FA $75 $C3
    call Call_001_4270                            ; $4244: $CD $70 $42
    call Call_001_432A                            ; $4247: $CD $2A $43
    ld   a, [$C36A]                               ; $424A: $FA $6A $C3
    and  $28                                      ; $424D: $E6 $28
    jr   z, jr_001_4254                           ; $424F: $28 $03

    jp   Jump_001_4711                            ; $4251: $C3 $11 $47


jr_001_4254:
    ld   a, [$C36A]                               ; $4254: $FA $6A $C3
    bit  0, a                                     ; $4257: $CB $47
    ret  z                                        ; $4259: $C8

    and  $7F                                      ; $425A: $E6 $7F
    ld   [$C36A], a                               ; $425C: $EA $6A $C3
    ld   a, [$C36A]                               ; $425F: $FA $6A $C3
    bit  2, a                                     ; $4262: $CB $57
    ret  nz                                       ; $4264: $C0

Call_001_4265:
    ld   a, [$C203]                               ; $4265: $FA $03 $C2
    sub  $05                                      ; $4268: $D6 $05
    and  $0F                                      ; $426A: $E6 $0F
    ld   c, a                                     ; $426C: $4F
    jp   Jump_001_4711                            ; $426D: $C3 $11 $47


Call_001_4270:
    and  $F0                                      ; $4270: $E6 $F0
    swap a                                        ; $4272: $CB $37
    ld   e, a                                     ; $4274: $5F
    add  hl, de                                   ; $4275: $19
    ld   a, [hl]                                  ; $4276: $7E
    ld   [$C36C], a                               ; $4277: $EA $6C $C3
    ret                                           ; $427A: $C9


Call_001_427B:
    ld   a, [$C36C]                               ; $427B: $FA $6C $C3
    cp   $01                                      ; $427E: $FE $01
    jr   z, jr_001_4297                           ; $4280: $28 $15

    cp   $04                                      ; $4282: $FE $04
    jr   z, jr_001_4297                           ; $4284: $28 $11

    cp   $09                                      ; $4286: $FE $09
    jr   z, jr_001_4297                           ; $4288: $28 $0D

    cp   $0A                                      ; $428A: $FE $0A
    jr   z, jr_001_4297                           ; $428C: $28 $09

    cp   $0D                                      ; $428E: $FE $0D
    jr   z, jr_001_4297                           ; $4290: $28 $05

    cp   $08                                      ; $4292: $FE $08
    jr   z, jr_001_42B9                           ; $4294: $28 $23

    ret                                           ; $4296: $C9


jr_001_4297:
    ld   a, [$C36A]                               ; $4297: $FA $6A $C3
    or   $01                                      ; $429A: $F6 $01
    ld   [$C36A], a                               ; $429C: $EA $6A $C3
    ret                                           ; $429F: $C9


    ld   a, [$C36A]                               ; $42A0: $FA $6A $C3
    or   $10                                      ; $42A3: $F6 $10
    ld   [$C36A], a                               ; $42A5: $EA $6A $C3
    ld   a, $01                                   ; $42A8: $3E $01
    ld   [$C663], a                               ; $42AA: $EA $63 $C6
    jr   jr_001_4297                              ; $42AD: $18 $E8

    ld   a, [$C36A]                               ; $42AF: $FA $6A $C3
    or   $02                                      ; $42B2: $F6 $02
    ld   [$C36A], a                               ; $42B4: $EA $6A $C3
    jr   jr_001_4297                              ; $42B7: $18 $DE

jr_001_42B9:
    inc  b                                        ; $42B9: $04
    ld   a, b                                     ; $42BA: $78
    bit  1, a                                     ; $42BB: $CB $4F
    jr   z, jr_001_4297                           ; $42BD: $28 $D8

    ld   a, [$C36A]                               ; $42BF: $FA $6A $C3
    or   $04                                      ; $42C2: $F6 $04
    ld   [$C36A], a                               ; $42C4: $EA $6A $C3
    jr   jr_001_4297                              ; $42C7: $18 $CE

Call_001_42C9:
    ld   a, [$C36C]                               ; $42C9: $FA $6C $C3
    sub  $02                                      ; $42CC: $D6 $02
    jr   z, jr_001_42E8                           ; $42CE: $28 $18

    dec  a                                        ; $42D0: $3D
    jr   z, jr_001_430A                           ; $42D1: $28 $37

    ret                                           ; $42D3: $C9


Call_001_42D4:
    ld   a, [$C203]                               ; $42D4: $FA $03 $C2
    sub  $05                                      ; $42D7: $D6 $05
    and  $0F                                      ; $42D9: $E6 $0F
    ld   c, a                                     ; $42DB: $4F
    ld   a, [$C206]                               ; $42DC: $FA $06 $C2
    add  $07                                      ; $42DF: $C6 $07
    and  $0F                                      ; $42E1: $E6 $0F
    ld   e, a                                     ; $42E3: $5F
    xor  $0F                                      ; $42E4: $EE $0F
    ld   b, a                                     ; $42E6: $47
    ret                                           ; $42E7: $C9


jr_001_42E8:
    call Call_001_42D4                            ; $42E8: $CD $D4 $42
    ld   a, [$C27B]                               ; $42EB: $FA $7B $C2
    bit  1, a                                     ; $42EE: $CB $4F
    jr   z, jr_001_42F7                           ; $42F0: $28 $05

    inc  c                                        ; $42F2: $0C
    ld   a, b                                     ; $42F3: $78
    sub  c                                        ; $42F4: $91
    ret  nc                                       ; $42F5: $D0

    dec  c                                        ; $42F6: $0D

jr_001_42F7:
    ld   a, [$C36A]                               ; $42F7: $FA $6A $C3
    or   $21                                      ; $42FA: $F6 $21
    ld   [$C36A], a                               ; $42FC: $EA $6A $C3
    push bc                                       ; $42FF: $C5
    call Call_001_4265                            ; $4300: $CD $65 $42
    pop  bc                                       ; $4303: $C1
    inc  b                                        ; $4304: $04
    ld   c, b                                     ; $4305: $48
    jp   Jump_001_4769                            ; $4306: $C3 $69 $47


    ret                                           ; $4309: $C9


jr_001_430A:
    call Call_001_42D4                            ; $430A: $CD $D4 $42
    ld   a, [$C27B]                               ; $430D: $FA $7B $C2
    bit  1, a                                     ; $4310: $CB $4F
    jr   z, jr_001_4317                           ; $4312: $28 $03

    ld   a, e                                     ; $4314: $7B
    sub  c                                        ; $4315: $91
    ret  nc                                       ; $4316: $D0

jr_001_4317:
    ld   a, [$C36A]                               ; $4317: $FA $6A $C3
    or   $09                                      ; $431A: $F6 $09
    ld   [$C36A], a                               ; $431C: $EA $6A $C3
    push de                                       ; $431F: $D5
    call Call_001_4265                            ; $4320: $CD $65 $42
    pop  de                                       ; $4323: $D1
    inc  e                                        ; $4324: $1C
    ld   c, e                                     ; $4325: $4B
    jp   Jump_001_4769                            ; $4326: $C3 $69 $47


    ret                                           ; $4329: $C9


Call_001_432A:
    ld   a, [$C36C]                               ; $432A: $FA $6C $C3
    sub  $02                                      ; $432D: $D6 $02
    jr   z, jr_001_4335                           ; $432F: $28 $04

    dec  a                                        ; $4331: $3D
    jr   z, jr_001_4346                           ; $4332: $28 $12

    ret                                           ; $4334: $C9


jr_001_4335:
    ld   a, [$C36A]                               ; $4335: $FA $6A $C3
    or   $21                                      ; $4338: $F6 $21
    ld   [$C36A], a                               ; $433A: $EA $6A $C3
    ld   a, [$C206]                               ; $433D: $FA $06 $C2
    add  $07                                      ; $4340: $C6 $07
    and  $0F                                      ; $4342: $E6 $0F
    ld   c, a                                     ; $4344: $4F
    ret                                           ; $4345: $C9


jr_001_4346:
    ld   a, [$C36A]                               ; $4346: $FA $6A $C3
    or   $09                                      ; $4349: $F6 $09
    ld   [$C36A], a                               ; $434B: $EA $6A $C3
    ld   a, [$C206]                               ; $434E: $FA $06 $C2
    add  $07                                      ; $4351: $C6 $07
    cpl                                           ; $4353: $2F
    and  $0F                                      ; $4354: $E6 $0F
    ld   c, a                                     ; $4356: $4F
    ret                                           ; $4357: $C9


Call_001_4358:
    ld   a, b                                     ; $4358: $78
    sub  $06                                      ; $4359: $D6 $06
    and  $F0                                      ; $435B: $E6 $F0
    ld   [$C373], a                               ; $435D: $EA $73 $C3
    ld   a, b                                     ; $4360: $78
    sub  $05                                      ; $4361: $D6 $05
    and  $F0                                      ; $4363: $E6 $F0
    ld   [$C374], a                               ; $4365: $EA $74 $C3
    ld   a, b                                     ; $4368: $78
    sub  $16                                      ; $4369: $D6 $16
    and  $F0                                      ; $436B: $E6 $F0
    ld   [$C371], a                               ; $436D: $EA $71 $C3
    ld   a, b                                     ; $4370: $78
    sub  $17                                      ; $4371: $D6 $17
    and  $F0                                      ; $4373: $E6 $F0
    ld   [$C372], a                               ; $4375: $EA $72 $C3
    ld   a, b                                     ; $4378: $78
    sub  $0E                                      ; $4379: $D6 $0E
    and  $F0                                      ; $437B: $E6 $F0
    ld   [$C376], a                               ; $437D: $EA $76 $C3
    ld   a, [$C206]                               ; $4380: $FA $06 $C2
    dec  a                                        ; $4383: $3D
    ld   [$C36F], a                               ; $4384: $EA $6F $C3
    dec  a                                        ; $4387: $3D
    ld   [$C370], a                               ; $4388: $EA $70 $C3
    sub  $07                                      ; $438B: $D6 $07
    ld   [$C375], a                               ; $438D: $EA $75 $C3
    sub  $07                                      ; $4390: $D6 $07
    ld   [$C36D], a                               ; $4392: $EA $6D $C3
    inc  a                                        ; $4395: $3C
    ld   [$C36E], a                               ; $4396: $EA $6E $C3
    ret                                           ; $4399: $C9


Call_001_439A:
    ld   a, [$C27B]                               ; $439A: $FA $7B $C2
    bit  1, a                                     ; $439D: $CB $4F
    ret  z                                        ; $439F: $C8

    ld   a, [$C27C]                               ; $43A0: $FA $7C $C2
    and  a                                        ; $43A3: $A7
    jr   z, jr_001_43A9                           ; $43A4: $28 $03

    bit  1, a                                     ; $43A6: $CB $4F
    ret  z                                        ; $43A8: $C8

jr_001_43A9:
    ld   b, $00                                   ; $43A9: $06 $00
    ld   d, b                                     ; $43AB: $50
    ld   hl, $C100                                ; $43AC: $21 $00 $C1
    ld   a, [$C371]                               ; $43AF: $FA $71 $C3
    ld   e, a                                     ; $43B2: $5F
    add  hl, de                                   ; $43B3: $19
    push hl                                       ; $43B4: $E5
    ld   a, [$C36E]                               ; $43B5: $FA $6E $C3
    inc  a                                        ; $43B8: $3C
    call Call_001_4270                            ; $43B9: $CD $70 $42
    pop  hl                                       ; $43BC: $E1
    call Call_001_43E2                            ; $43BD: $CD $E2 $43
    bit  0, b                                     ; $43C0: $CB $40
    jr   nz, jr_001_43D1                          ; $43C2: $20 $0D

    ld   a, [$C370]                               ; $43C4: $FA $70 $C3
    dec  a                                        ; $43C7: $3D
    call Call_001_4270                            ; $43C8: $CD $70 $42
    call Call_001_43E2                            ; $43CB: $CD $E2 $43
    bit  0, b                                     ; $43CE: $CB $40
    ret  z                                        ; $43D0: $C8

jr_001_43D1:
    xor  a                                        ; $43D1: $AF
    ld   [$C27B], a                               ; $43D2: $EA $7B $C2
    ld   a, [$C203]                               ; $43D5: $FA $03 $C2
    add  $05                                      ; $43D8: $C6 $05
    cpl                                           ; $43DA: $2F
    inc  a                                        ; $43DB: $3C
    and  $0F                                      ; $43DC: $E6 $0F
    ld   c, a                                     ; $43DE: $4F
    jp   Jump_001_4769                            ; $43DF: $C3 $69 $47


Call_001_43E2:
    ld   a, [$C36C]                               ; $43E2: $FA $6C $C3
    cp   $01                                      ; $43E5: $FE $01
    jr   z, jr_001_4405                           ; $43E7: $28 $1C

    cp   $09                                      ; $43E9: $FE $09
    jr   z, jr_001_4405                           ; $43EB: $28 $18

    cp   $0A                                      ; $43ED: $FE $0A
    jr   z, jr_001_4405                           ; $43EF: $28 $14

    cp   $0D                                      ; $43F1: $FE $0D
    jr   z, jr_001_4405                           ; $43F3: $28 $10

    cp   $07                                      ; $43F5: $FE $07
    ret  nz                                       ; $43F7: $C0

    ld   a, [$C36A]                               ; $43F8: $FA $6A $C3
    or   $10                                      ; $43FB: $F6 $10
    ld   [$C36A], a                               ; $43FD: $EA $6A $C3
    ld   a, $01                                   ; $4400: $3E $01
    ld   [$C663], a                               ; $4402: $EA $63 $C6

jr_001_4405:
    inc  b                                        ; $4405: $04
    ret                                           ; $4406: $C9


Call_001_4407:
    ld   b, $00                                   ; $4407: $06 $00
    ld   h, $C1                                   ; $4409: $26 $C1
    ld   d, h                                     ; $440B: $54
    ld   a, [$C203]                               ; $440C: $FA $03 $C2
    sub  $07                                      ; $440F: $D6 $07
    and  $F0                                      ; $4411: $E6 $F0
    ld   l, a                                     ; $4413: $6F
    ld   e, a                                     ; $4414: $5F
    ld   a, [$C370]                               ; $4415: $FA $70 $C3
    and  $F0                                      ; $4418: $E6 $F0
    swap a                                        ; $441A: $CB $37
    add  l                                        ; $441C: $85
    ld   l, a                                     ; $441D: $6F
    ld   a, [hl]                                  ; $441E: $7E
    ld   c, $01                                   ; $441F: $0E $01
    cp   $07                                      ; $4421: $FE $07
    jr   z, jr_001_443E                           ; $4423: $28 $19

    inc  c                                        ; $4425: $0C
    cp   $0B                                      ; $4426: $FE $0B
    jr   z, jr_001_443E                           ; $4428: $28 $14

    ld   a, [$C36E]                               ; $442A: $FA $6E $C3
    and  $F0                                      ; $442D: $E6 $F0
    swap a                                        ; $442F: $CB $37
    add  e                                        ; $4431: $83
    ld   e, a                                     ; $4432: $5F
    ld   a, [de]                                  ; $4433: $1A
    ld   c, $02                                   ; $4434: $0E $02
    cp   $0B                                      ; $4436: $FE $0B
    jr   z, jr_001_443E                           ; $4438: $28 $04

    dec  c                                        ; $443A: $0D
    cp   $07                                      ; $443B: $FE $07
    ret  nz                                       ; $443D: $C0

jr_001_443E:
    ld   a, [$C36A]                               ; $443E: $FA $6A $C3
    or   $11                                      ; $4441: $F6 $11
    ld   [$C36A], a                               ; $4443: $EA $6A $C3
    ld   a, c                                     ; $4446: $79
    ld   [$C663], a                               ; $4447: $EA $63 $C6
    ld   a, [$C203]                               ; $444A: $FA $03 $C2
    sub  $07                                      ; $444D: $D6 $07
    and  $0F                                      ; $444F: $E6 $0F
    ld   c, a                                     ; $4451: $4F
    jp   Jump_001_4711                            ; $4452: $C3 $11 $47


Call_001_4455:
    ld   a, [$C200]                               ; $4455: $FA $00 $C2
    res  7, a                                     ; $4458: $CB $BF
    ld   [$C200], a                               ; $445A: $EA $00 $C2
    xor  a                                        ; $445D: $AF
    ld   [$C668], a                               ; $445E: $EA $68 $C6
    ld   a, [$C203]                               ; $4461: $FA $03 $C2
    sub  $09                                      ; $4464: $D6 $09
    and  $F0                                      ; $4466: $E6 $F0
    ld   b, a                                     ; $4468: $47
    ld   a, [$C375]                               ; $4469: $FA $75 $C3
    and  $F0                                      ; $446C: $E6 $F0
    swap a                                        ; $446E: $CB $37
    add  b                                        ; $4470: $80
    ld   h, $C1                                   ; $4471: $26 $C1
    ld   l, a                                     ; $4473: $6F
    ld   a, [hl]                                  ; $4474: $7E
    cp   $08                                      ; $4475: $FE $08
    jr   nz, jr_001_447E                          ; $4477: $20 $05

    ld   [$C668], a                               ; $4479: $EA $68 $C6
    jr   jr_001_4481                              ; $447C: $18 $03

jr_001_447E:
    cp   $0C                                      ; $447E: $FE $0C
    ret  nz                                       ; $4480: $C0

jr_001_4481:
    ld   a, [$C200]                               ; $4481: $FA $00 $C2
    set  7, a                                     ; $4484: $CB $FF
    ld   [$C200], a                               ; $4486: $EA $00 $C2
    ret                                           ; $4489: $C9


Call_001_448A:
    xor  a                                        ; $448A: $AF
    ld   [$C36B], a                               ; $448B: $EA $6B $C3
    ld   a, [$C376]                               ; $448E: $FA $76 $C3
    ld   l, a                                     ; $4491: $6F
    ld   a, [$C375]                               ; $4492: $FA $75 $C3
    and  $F0                                      ; $4495: $E6 $F0
    swap a                                        ; $4497: $CB $37
    add  l                                        ; $4499: $85
    ld   h, $C1                                   ; $449A: $26 $C1
    ld   l, a                                     ; $449C: $6F
    ld   a, [hl]                                  ; $449D: $7E
    cp   $0E                                      ; $449E: $FE $0E
    jr   nz, jr_001_44BA                          ; $44A0: $20 $18

    ld   a, [$C36A]                               ; $44A2: $FA $6A $C3
    or   $22                                      ; $44A5: $F6 $22
    ld   [$C36A], a                               ; $44A7: $EA $6A $C3
    ld   a, $01                                   ; $44AA: $3E $01
    ld   [$C36B], a                               ; $44AC: $EA $6B $C3
    ld   a, [$DF02]                               ; $44AF: $FA $02 $DF
    cp   $02                                      ; $44B2: $FE $02
    ret  nz                                       ; $44B4: $C0

    ld   b, $03                                   ; $44B5: $06 $03
    jp   Jump_000_2039                            ; $44B7: $C3 $39 $20


jr_001_44BA:
    cp   $0F                                      ; $44BA: $FE $0F
    jr   nz, jr_001_44D6                          ; $44BC: $20 $18

    ld   a, [$C36A]                               ; $44BE: $FA $6A $C3
    or   $0A                                      ; $44C1: $F6 $0A
    ld   [$C36A], a                               ; $44C3: $EA $6A $C3
    ld   a, $02                                   ; $44C6: $3E $02
    ld   [$C36B], a                               ; $44C8: $EA $6B $C3
    ld   a, [$DF02]                               ; $44CB: $FA $02 $DF
    cp   $02                                      ; $44CE: $FE $02
    ret  nz                                       ; $44D0: $C0

    ld   b, $03                                   ; $44D1: $06 $03
    jp   Jump_000_2039                            ; $44D3: $C3 $39 $20


jr_001_44D6:
    ld   a, [$DF02]                               ; $44D6: $FA $02 $DF
    cp   $02                                      ; $44D9: $FE $02
    ret  nz                                       ; $44DB: $C0

    jp   Jump_000_2034                            ; $44DC: $C3 $34 $20


UpdatePlatformingPlayer::
    call WallPushInputMask                        ; $44DF: $CD $62 $4B
    call Call_001_44F4                            ; $44E2: $CD $F4 $44
    call Call_001_4C77                            ; $44E5: $CD $77 $4C
    call ShootHandler                             ; $44E8: $CD $8E $47
    call DispatchProjectileRecords                ; $44EB: $CD $B5 $48
    call Call_001_6E04                            ; $44EE: $CD $04 $6E
    jp   Jump_001_4000                            ; $44F1: $C3 $00 $40


Call_001_44F4:
    ld   a, [$C20B]                               ; $44F4: $FA $0B $C2
    rlca                                          ; $44F7: $07
    ret  c                                        ; $44F8: $D8

    ld   a, [$C36A]                               ; $44F9: $FA $6A $C3
    and  $41                                      ; $44FC: $E6 $41
    jr   z, jr_001_450D                           ; $44FE: $28 $0D

    ld   a, [$C4AC]                               ; $4500: $FA $AC $C4
    and  a                                        ; $4503: $A7
    jr   z, jr_001_450D                           ; $4504: $28 $07

    xor  a                                        ; $4506: $AF
    ld   [$C4AC], a                               ; $4507: $EA $AC $C4
    ld   a, $35                                   ; $450A: $3E $35
    rst  RST_28                                   ; $450C: $EF

jr_001_450D:
    ld   a, [$C27B]                               ; $450D: $FA $7B $C2
    bit  3, a                                     ; $4510: $CB $5F
    jp   nz, WallClingSustain                     ; $4512: $C2 $FF $4A

    bit  1, a                                     ; $4515: $CB $4F
    jp   nz, AirPhaseDispatcher                   ; $4517: $C2 $AB $45

    ld   a, [$C36A]                               ; $451A: $FA $6A $C3
    rrca                                          ; $451D: $0F
    jp   nc, JumpLaunch                           ; $451E: $D2 $60 $45

    ld   a, [$C262]                               ; $4521: $FA $62 $C2
    rrca                                          ; $4524: $0F
    jp   c, JumpLaunch                            ; $4525: $DA $60 $45

    ld   a, [$C27B]                               ; $4528: $FA $7B $C2
    bit  2, a                                     ; $452B: $CB $57
    ret  nz                                       ; $452D: $C0

    ld   a, [$C27B]                               ; $452E: $FA $7B $C2
    bit  0, a                                     ; $4531: $CB $47
    jp   c, Jump_001_454E                         ; $4533: $DA $4E $45

    ld   a, [$C261]                               ; $4536: $FA $61 $C2
    and  $30                                      ; $4539: $E6 $30
    jp   nz, Jump_001_4549                        ; $453B: $C2 $49 $45

    xor  a                                        ; $453E: $AF
    ld   [$C27B], a                               ; $453F: $EA $7B $C2
    inc  a                                        ; $4542: $3C
    ld   [$C274], a                               ; $4543: $EA $74 $C2
    jp   Jump_001_4632                            ; $4546: $C3 $32 $46


Jump_001_4549:
    ld   a, $01                                   ; $4549: $3E $01
    ld   [$C27B], a                               ; $454B: $EA $7B $C2

Jump_001_454E:
    inc  a                                        ; $454E: $3C
    ld   [$C274], a                               ; $454F: $EA $74 $C2
    ld   a, [$C261]                               ; $4552: $FA $61 $C2
    and  $30                                      ; $4555: $E6 $30
    jr   nz, jr_001_455D                          ; $4557: $20 $04

    xor  a                                        ; $4559: $AF
    ld   [$C27B], a                               ; $455A: $EA $7B $C2

jr_001_455D:
    jp   Jump_001_4632                            ; $455D: $C3 $32 $46


JumpLaunch::
    ld   a, $01                                   ; $4560: $3E $01
    ld   [$C4AC], a                               ; $4562: $EA $AC $C4
    ld   a, [$DF0F]                               ; $4565: $FA $0F $DF
    ld   [$C27D], a                               ; $4568: $EA $7D $C2
    ld   a, [$C668]                               ; $456B: $FA $68 $C6
    and  a                                        ; $456E: $A7
    jr   z, jr_001_4576                           ; $456F: $28 $05

    ld   a, $02                                   ; $4571: $3E $02
    ld   [$C27D], a                               ; $4573: $EA $7D $C2

jr_001_4576:
    ld   a, [$DF10]                               ; $4576: $FA $10 $DF
    ld   [$C27E], a                               ; $4579: $EA $7E $C2
    ld   a, [$DF11]                               ; $457C: $FA $11 $DF
    dec  a                                        ; $457F: $3D
    ld   [$DF12], a                               ; $4580: $EA $12 $DF
    xor  a                                        ; $4583: $AF
    ld   [$C27F], a                               ; $4584: $EA $7F $C2
    ld   [$C278], a                               ; $4587: $EA $78 $C2
    ld   [$C27C], a                               ; $458A: $EA $7C $C2
    ld   a, $02                                   ; $458D: $3E $02
    ld   [$C27B], a                               ; $458F: $EA $7B $C2
    ld   a, [$C262]                               ; $4592: $FA $62 $C2
    rrca                                          ; $4595: $0F
    jr   c, AirPhaseDispatcher                    ; $4596: $38 $13

    xor  a                                        ; $4598: $AF
    ld   [$C27D], a                               ; $4599: $EA $7D $C2
    ld   a, $80                                   ; $459C: $3E $80
    ld   [$C27E], a                               ; $459E: $EA $7E $C2
    ld   a, $04                                   ; $45A1: $3E $04
    ld   [$C27C], a                               ; $45A3: $EA $7C $C2
    call DescentPhysics                           ; $45A6: $CD $1D $47
    jr   jr_001_45C1                              ; $45A9: $18 $16

AirPhaseDispatcher::
    ld   a, [$C27C]                               ; $45AB: $FA $7C $C2
    rrca                                          ; $45AE: $0F
    jr   c, jr_001_45D7                           ; $45AF: $38 $26

    rrca                                          ; $45B1: $0F
    jr   c, jr_001_45F2                           ; $45B2: $38 $3E

    rrca                                          ; $45B4: $0F
    jp   c, Jump_001_461F                         ; $45B5: $DA $1F $46

    ld   a, [$C261]                               ; $45B8: $FA $61 $C2
    rrca                                          ; $45BB: $0F
    jr   nc, ReleaseCutVelocity                   ; $45BC: $30 $0B

    call AscentPhysics                            ; $45BE: $CD $E2 $46

Jump_001_45C1:
jr_001_45C1:
    ld   a, $04                                   ; $45C1: $3E $04
    ld   [$C274], a                               ; $45C3: $EA $74 $C2
    jp   Jump_001_4632                            ; $45C6: $C3 $32 $46


ReleaseCutVelocity::
    ld   a, $01                                   ; $45C9: $3E $01
    ld   [$C27C], a                               ; $45CB: $EA $7C $C2
    xor  a                                        ; $45CE: $AF
    ld   [$C27D], a                               ; $45CF: $EA $7D $C2
    ld   a, $80                                   ; $45D2: $3E $80
    ld   [$C27E], a                               ; $45D4: $EA $7E $C2

jr_001_45D7:
    ld   a, [$C262]                               ; $45D7: $FA $62 $C2
    rrca                                          ; $45DA: $0F
    jr   c, FlightEntry                           ; $45DB: $38 $05

    call DescentPhysics                           ; $45DD: $CD $1D $47
    jr   jr_001_45C1                              ; $45E0: $18 $DF

FlightEntry::
    ld   a, $02                                   ; $45E2: $3E $02
    ld   [$C275], a                               ; $45E4: $EA $75 $C2
    ld   a, $80                                   ; $45E7: $3E $80
    ld   [$C27E], a                               ; $45E9: $EA $7E $C2
    xor  a                                        ; $45EC: $AF
    ld   [$C27D], a                               ; $45ED: $EA $7D $C2
    jr   FlightSustain                            ; $45F0: $18 $07

jr_001_45F2:
    ld   a, [$C262]                               ; $45F2: $FA $62 $C2
    bit  0, a                                     ; $45F5: $CB $47
    jr   nz, FlightCancel                         ; $45F7: $20 $1F

FlightSustain::
    ld   a, $02                                   ; $45F9: $3E $02
    ld   [$C27C], a                               ; $45FB: $EA $7C $C2
    ld   a, [$DF12]                               ; $45FE: $FA $12 $DF
    and  a                                        ; $4601: $A7
    jr   z, jr_001_4627                           ; $4602: $28 $23

    call FlightMoveBudget                         ; $4604: $CD $75 $47
    ld   a, $80                                   ; $4607: $3E $80
    ld   [$C27E], a                               ; $4609: $EA $7E $C2
    xor  a                                        ; $460C: $AF
    ld   [$C27D], a                               ; $460D: $EA $7D $C2
    ld   a, $06                                   ; $4610: $3E $06
    ld   [$C274], a                               ; $4612: $EA $74 $C2
    jp   Jump_001_4632                            ; $4615: $C3 $32 $46


FlightCancel::
    ld   a, $04                                   ; $4618: $3E $04
    ld   [$C27C], a                               ; $461A: $EA $7C $C2
    jr   jr_001_4627                              ; $461D: $18 $08

Jump_001_461F:
    ld   a, [$C262]                               ; $461F: $FA $62 $C2
    rrca                                          ; $4622: $0F
    jr   nc, jr_001_462C                          ; $4623: $30 $07

    jr   FlightSustain                            ; $4625: $18 $D2

jr_001_4627:
    ld   a, $04                                   ; $4627: $3E $04
    ld   [$C27C], a                               ; $4629: $EA $7C $C2

jr_001_462C:
    call DescentPhysics                           ; $462C: $CD $1D $47
    jp   Jump_001_45C1                            ; $462F: $C3 $C1 $45


Jump_001_4632:
    ld   c, $C0                                   ; $4632: $0E $C0
    ld   a, [$C36A]                               ; $4634: $FA $6A $C3
    ld   b, a                                     ; $4637: $47
    and  $28                                      ; $4638: $E6 $28
    jr   z, jr_001_4644                           ; $463A: $28 $08

    ld   c, $80                                   ; $463C: $0E $80
    bit  1, b                                     ; $463E: $CB $48
    jr   z, jr_001_4644                           ; $4640: $28 $02

    jr   jr_001_46A7                              ; $4642: $18 $63

jr_001_4644:
    xor  a                                        ; $4644: $AF
    ld   [$C3C4], a                               ; $4645: $EA $C4 $C3
    ld   a, [$C261]                               ; $4648: $FA $61 $C2
    bit  4, a                                     ; $464B: $CB $67
    jr   z, jr_001_4679                           ; $464D: $28 $2A

    ld   a, [$C36A]                               ; $464F: $FA $6A $C3
    bit  3, a                                     ; $4652: $CB $5F
    jr   z, jr_001_4658                           ; $4654: $28 $02

    ld   c, $C0                                   ; $4656: $0E $C0

jr_001_4658:
    ld   hl, $C200                                ; $4658: $21 $00 $C2
    set  5, [hl]                                  ; $465B: $CB $EE
    ld   a, [$C280]                               ; $465D: $FA $80 $C2
    add  c                                        ; $4660: $81
    ld   [$C280], a                               ; $4661: $EA $80 $C2
    ret  nc                                       ; $4664: $D0

    ld   c, $01                                   ; $4665: $0E $01

Call_001_4667:
Jump_001_4667:
    ld   hl, $C212                                ; $4667: $21 $12 $C2
    ld   a, [hl]                                  ; $466A: $7E
    cp   $98                                      ; $466B: $FE $98
    ret  z                                        ; $466D: $C8

    ld   l, $06                                   ; $466E: $2E $06
    ld   a, [hl]                                  ; $4670: $7E
    add  c                                        ; $4671: $81
    ld   [hl+], a                                 ; $4672: $22
    jr   nc, jr_001_4676                          ; $4673: $30 $01

    inc  [hl]                                     ; $4675: $34

jr_001_4676:
    jp   Jump_001_4B95                            ; $4676: $C3 $95 $4B


jr_001_4679:
    bit  5, a                                     ; $4679: $CB $6F
    ret  z                                        ; $467B: $C8

    ld   a, [$C36A]                               ; $467C: $FA $6A $C3
    bit  5, a                                     ; $467F: $CB $6F
    jr   z, jr_001_4685                           ; $4681: $28 $02

    ld   c, $C0                                   ; $4683: $0E $C0

jr_001_4685:
    ld   hl, $C200                                ; $4685: $21 $00 $C2
    res  5, [hl]                                  ; $4688: $CB $AE
    ld   a, [$C280]                               ; $468A: $FA $80 $C2
    add  c                                        ; $468D: $81
    ld   [$C280], a                               ; $468E: $EA $80 $C2
    ret  nc                                       ; $4691: $D0

    ld   c, $01                                   ; $4692: $0E $01

Call_001_4694:
Jump_001_4694:
jr_001_4694:
    ld   hl, $C212                                ; $4694: $21 $12 $C2
    ld   a, [hl]                                  ; $4697: $7E
    cp   $18                                      ; $4698: $FE $18
    ret  z                                        ; $469A: $C8

    ld   l, $06                                   ; $469B: $2E $06
    ld   a, [hl]                                  ; $469D: $7E
    sub  c                                        ; $469E: $91
    ld   [hl+], a                                 ; $469F: $22
    jr   nc, jr_001_46A3                          ; $46A0: $30 $01

    dec  [hl]                                     ; $46A2: $35

jr_001_46A3:
    jp   Jump_001_4BD0                            ; $46A3: $C3 $D0 $4B


    ret                                           ; $46A6: $C9


jr_001_46A7:
    ld   a, [$C261]                               ; $46A7: $FA $61 $C2
    bit  4, a                                     ; $46AA: $CB $67
    jr   z, jr_001_46BB                           ; $46AC: $28 $0D

    ld   c, $FF                                   ; $46AE: $0E $FF
    ld   a, [$C36A]                               ; $46B0: $FA $6A $C3
    bit  5, a                                     ; $46B3: $CB $6F
    jr   z, jr_001_4658                           ; $46B5: $28 $A1

    ld   c, $80                                   ; $46B7: $0E $80
    jr   jr_001_4658                              ; $46B9: $18 $9D

jr_001_46BB:
    bit  5, a                                     ; $46BB: $CB $6F
    jr   z, jr_001_46CC                           ; $46BD: $28 $0D

    ld   c, $FF                                   ; $46BF: $0E $FF
    ld   a, [$C36A]                               ; $46C1: $FA $6A $C3
    bit  3, a                                     ; $46C4: $CB $5F
    jr   z, jr_001_4685                           ; $46C6: $28 $BD

    ld   c, $80                                   ; $46C8: $0E $80
    jr   jr_001_4685                              ; $46CA: $18 $B9

jr_001_46CC:
    ld   a, [$C280]                               ; $46CC: $FA $80 $C2
    sub  $40                                      ; $46CF: $D6 $40
    ld   [$C280], a                               ; $46D1: $EA $80 $C2
    ret  nc                                       ; $46D4: $D0

    ld   c, $01                                   ; $46D5: $0E $01
    ld   a, [$C36A]                               ; $46D7: $FA $6A $C3
    bit  5, a                                     ; $46DA: $CB $6F
    jr   nz, jr_001_4694                          ; $46DC: $20 $B6

    jp   Jump_001_4667                            ; $46DE: $C3 $67 $46


    ret                                           ; $46E1: $C9


AscentPhysics::
    ld   hl, $C27F                                ; $46E2: $21 $7F $C2
    ld   a, [hl]                                  ; $46E5: $7E
    add  $40                                      ; $46E6: $C6 $40
    ld   [hl-], a                                 ; $46E8: $32
    jr   nz, jr_001_46FE                          ; $46E9: $20 $13

    ld   a, [hl]                                  ; $46EB: $7E
    xor  $80                                      ; $46EC: $EE $80
    ld   [hl], a                                  ; $46EE: $77
    jr   z, jr_001_46FE                           ; $46EF: $28 $0D

    dec  l                                        ; $46F1: $2D
    dec  [hl]                                     ; $46F2: $35
    ld   a, [hl+]                                 ; $46F3: $2A
    inc  a                                        ; $46F4: $3C
    jr   nz, jr_001_46FE                          ; $46F5: $20 $07

    ld   [hl-], a                                 ; $46F7: $32
    inc  a                                        ; $46F8: $3C
    ld   [hl], a                                  ; $46F9: $77
    ld   [$C27C], a                               ; $46FA: $EA $7C $C2
    ret                                           ; $46FD: $C9


jr_001_46FE:
    ld   a, [hl-]                                 ; $46FE: $3A
    and  a                                        ; $46FF: $A7
    jr   z, jr_001_4710                           ; $4700: $28 $0E

    ld   c, a                                     ; $4702: $4F
    ld   a, [$C278]                               ; $4703: $FA $78 $C2
    add  c                                        ; $4706: $81
    ld   [$C278], a                               ; $4707: $EA $78 $C2
    jr   nz, jr_001_4710                          ; $470A: $20 $04

    ld   c, [hl]                                  ; $470C: $4E
    inc  c                                        ; $470D: $0C
    jr   jr_001_4711                              ; $470E: $18 $01

jr_001_4710:
    ld   c, [hl]                                  ; $4710: $4E

Call_001_4711:
Jump_001_4711:
jr_001_4711:
    ld   hl, $C203                                ; $4711: $21 $03 $C2
    ld   a, [hl]                                  ; $4714: $7E
    sub  c                                        ; $4715: $91
    ld   [hl+], a                                 ; $4716: $22
    jr   nc, jr_001_471A                          ; $4717: $30 $01

    dec  [hl]                                     ; $4719: $35

jr_001_471A:
    jp   Jump_001_4C42                            ; $471A: $C3 $42 $4C


DescentPhysics::
    ld   hl, $C27F                                ; $471D: $21 $7F $C2
    ld   a, [hl]                                  ; $4720: $7E
    add  $10                                      ; $4721: $C6 $10
    ld   [hl-], a                                 ; $4723: $32
    jr   nz, jr_001_473A                          ; $4724: $20 $14

    ld   a, [hl]                                  ; $4726: $7E
    add  $80                                      ; $4727: $C6 $80
    ld   [hl], a                                  ; $4729: $77
    jr   nz, jr_001_473A                          ; $472A: $20 $0E

    dec  l                                        ; $472C: $2D
    inc  [hl]                                     ; $472D: $34
    ld   a, [hl+]                                 ; $472E: $2A
    cp   $03                                      ; $472F: $FE $03
    jr   nz, jr_001_473A                          ; $4731: $20 $07

    dec  l                                        ; $4733: $2D
    ld   a, $02                                   ; $4734: $3E $02
    ld   [hl+], a                                 ; $4736: $22
    ld   a, $80                                   ; $4737: $3E $80
    ld   [hl], a                                  ; $4739: $77

jr_001_473A:
    ld   a, [hl-]                                 ; $473A: $3A
    and  a                                        ; $473B: $A7
    jr   z, jr_001_474D                           ; $473C: $28 $0F

    ld   c, a                                     ; $473E: $4F
    ld   a, [$C278]                               ; $473F: $FA $78 $C2
    add  c                                        ; $4742: $81
    ld   [$C278], a                               ; $4743: $EA $78 $C2
    jr   nz, jr_001_474D                          ; $4746: $20 $05

    ld   a, [hl]                                  ; $4748: $7E
    ld   c, a                                     ; $4749: $4F
    inc  c                                        ; $474A: $0C
    jr   jr_001_474F                              ; $474B: $18 $02

jr_001_474D:
    ld   a, [hl]                                  ; $474D: $7E
    ld   c, a                                     ; $474E: $4F

jr_001_474F:
    ld   a, [$C36A]                               ; $474F: $FA $6A $C3
    bit  0, a                                     ; $4752: $CB $47
    jr   z, jr_001_4769                           ; $4754: $28 $13

    xor  a                                        ; $4756: $AF
    ld   [$C27B], a                               ; $4757: $EA $7B $C2
    ret                                           ; $475A: $C9


    ld   a, [$C36A]                               ; $475B: $FA $6A $C3
    bit  0, a                                     ; $475E: $CB $47
    jr   z, jr_001_4767                           ; $4760: $28 $05

    xor  a                                        ; $4762: $AF
    ld   [$C27B], a                               ; $4763: $EA $7B $C2
    ret                                           ; $4766: $C9


jr_001_4767:
    ld   c, $01                                   ; $4767: $0E $01

Call_001_4769:
Jump_001_4769:
jr_001_4769:
    ld   hl, $C203                                ; $4769: $21 $03 $C2
    ld   a, [hl]                                  ; $476C: $7E
    add  c                                        ; $476D: $81
    ld   [hl+], a                                 ; $476E: $22
    jr   nc, jr_001_4772                          ; $476F: $30 $01

    inc  [hl]                                     ; $4771: $34

jr_001_4772:
    jp   Jump_001_4C03                            ; $4772: $C3 $03 $4C


FlightMoveBudget::
    ld   a, [$C36A]                               ; $4775: $FA $6A $C3
    rrca                                          ; $4778: $0F
    jr   nc, jr_001_4780                          ; $4779: $30 $05

    xor  a                                        ; $477B: $AF
    ld   [$C27B], a                               ; $477C: $EA $7B $C2
    ret                                           ; $477F: $C9


jr_001_4780:
    ld   a, [$DF13]                               ; $4780: $FA $13 $DF
    cp   $03                                      ; $4783: $FE $03
    ret  z                                        ; $4785: $C8

    ld   a, [$DF12]                               ; $4786: $FA $12 $DF
    dec  a                                        ; $4789: $3D

FlightBudgetDecrement::
    ld   [$DF12], a                               ; $478A: $EA $12 $DF
    ret                                           ; $478D: $C9


ShootHandler::
    ld   a, [$C262]                               ; $478E: $FA $62 $C2
    bit  1, a                                     ; $4791: $CB $4F
    jp   z, Jump_001_4867                         ; $4793: $CA $67 $48

    ld   hl, $C300                                ; $4796: $21 $00 $C3
    ld   a, [$C29E]                               ; $4799: $FA $9E $C2
    ld   b, a                                     ; $479C: $47

jr_001_479D:
    ld   a, [hl]                                  ; $479D: $7E
    rrca                                          ; $479E: $0F
    jr   nc, jr_001_47A8                          ; $479F: $30 $07

    inc  h                                        ; $47A1: $24
    dec  b                                        ; $47A2: $05
    jr   nz, jr_001_479D                          ; $47A3: $20 $F8

    jp   Jump_001_4867                            ; $47A5: $C3 $67 $48


jr_001_47A8:
    ld   a, [$DF38]                               ; $47A8: $FA $38 $DF
    add  $15                                      ; $47AB: $C6 $15
    rst  RST_28                                   ; $47AD: $EF
    ld   a, [$C27B]                               ; $47AE: $FA $7B $C2
    or   $04                                      ; $47B1: $F6 $04
    ld   [$C27B], a                               ; $47B3: $EA $7B $C2
    ld   a, $10                                   ; $47B6: $3E $10

ShotCooldownInit::
    ld   [$C28E], a                               ; $47B8: $EA $8E $C2
    ld   de, $C200                                ; $47BB: $11 $00 $C2
    ld   a, [de]                                  ; $47BE: $1A
    and  $A1                                      ; $47BF: $E6 $A1
    ld   [hl+], a                                 ; $47C1: $22
    ld   a, [$C27B]                               ; $47C2: $FA $7B $C2
    bit  3, a                                     ; $47C5: $CB $5F
    jr   nz, jr_001_47D3                          ; $47C7: $20 $0A

    bit  1, a                                     ; $47C9: $CB $4F
    jr   nz, jr_001_47E0                          ; $47CB: $20 $13

    bit  4, a                                     ; $47CD: $CB $67
    jr   nz, jr_001_4800                          ; $47CF: $20 $2F

    jr   jr_001_480D                              ; $47D1: $18 $3A

jr_001_47D3:
    ld   c, $09                                   ; $47D3: $0E $09
    ld   b, $04                                   ; $47D5: $06 $04
    ld   a, [de]                                  ; $47D7: $1A
    bit  5, a                                     ; $47D8: $CB $6F
    jr   nz, jr_001_482E                          ; $47DA: $20 $52

    ld   b, $0C                                   ; $47DC: $06 $0C
    jr   jr_001_482E                              ; $47DE: $18 $4E

jr_001_47E0:
    ld   c, $07                                   ; $47E0: $0E $07
    ld   a, [$C27C]                               ; $47E2: $FA $7C $C2
    bit  1, a                                     ; $47E5: $CB $4F
    jr   nz, jr_001_47EB                          ; $47E7: $20 $02

    ld   c, $05                                   ; $47E9: $0E $05

jr_001_47EB:
    ld   b, $0C                                   ; $47EB: $06 $0C
    bit  5, a                                     ; $47ED: $CB $6F
    jr   nz, jr_001_482E                          ; $47EF: $20 $3D

    ld   b, $04                                   ; $47F1: $06 $04
    bit  4, a                                     ; $47F3: $CB $67
    jr   nz, jr_001_482E                          ; $47F5: $20 $37

    ld   a, [de]                                  ; $47F7: $1A
    bit  5, a                                     ; $47F8: $CB $6F
    jr   nz, jr_001_482E                          ; $47FA: $20 $32

    ld   b, $0C                                   ; $47FC: $06 $0C
    jr   jr_001_482E                              ; $47FE: $18 $2E

jr_001_4800:
    ld   b, $04                                   ; $4800: $06 $04
    ld   c, $0B                                   ; $4802: $0E $0B
    ld   a, [de]                                  ; $4804: $1A
    bit  5, a                                     ; $4805: $CB $6F
    jr   nz, jr_001_482E                          ; $4807: $20 $25

    ld   b, $0C                                   ; $4809: $06 $0C
    jr   jr_001_482E                              ; $480B: $18 $21

jr_001_480D:
    ld   c, $03                                   ; $480D: $0E $03
    ld   b, $0C                                   ; $480F: $06 $0C
    bit  5, a                                     ; $4811: $CB $6F
    jr   nz, jr_001_482A                          ; $4813: $20 $15

    ld   b, $04                                   ; $4815: $06 $04
    bit  4, a                                     ; $4817: $CB $67
    jr   nz, jr_001_4824                          ; $4819: $20 $09

    ld   a, [de]                                  ; $481B: $1A
    bit  5, a                                     ; $481C: $CB $6F
    jr   nz, jr_001_482E                          ; $481E: $20 $0E

    ld   b, $0C                                   ; $4820: $06 $0C
    jr   jr_001_482E                              ; $4822: $18 $0A

jr_001_4824:
    ld   a, [de]                                  ; $4824: $1A
    set  5, a                                     ; $4825: $CB $EF
    ld   [de], a                                  ; $4827: $12
    jr   jr_001_482E                              ; $4828: $18 $04

jr_001_482A:
    ld   a, [de]                                  ; $482A: $1A
    res  5, a                                     ; $482B: $CB $AF
    ld   [de], a                                  ; $482D: $12

jr_001_482E:
    ld   a, c                                     ; $482E: $79
    ld   [$C274], a                               ; $482F: $EA $74 $C2
    ld   [$C275], a                               ; $4832: $EA $75 $C2
    ld   a, [$C29F]                               ; $4835: $FA $9F $C2
    or   b                                        ; $4838: $B0
    ld   [hl+], a                                 ; $4839: $22
    ld   b, a                                     ; $483A: $47
    inc  l                                        ; $483B: $2C
    ld   e, l                                     ; $483C: $5D
    ld   a, [$C27B]                               ; $483D: $FA $7B $C2
    bit  4, a                                     ; $4840: $CB $67
    jr   z, jr_001_4850                           ; $4842: $28 $0C

    ld   a, [de]                                  ; $4844: $1A
    add  $08                                      ; $4845: $C6 $08
    ld   [hl+], a                                 ; $4847: $22
    jr   nc, jr_001_4852                          ; $4848: $30 $08

    inc  e                                        ; $484A: $1C
    ld   a, [de]                                  ; $484B: $1A
    inc  a                                        ; $484C: $3C
    ld   [hl+], a                                 ; $484D: $22
    jr   jr_001_4855                              ; $484E: $18 $05

jr_001_4850:
    ld   a, [de]                                  ; $4850: $1A
    ld   [hl+], a                                 ; $4851: $22

jr_001_4852:
    inc  e                                        ; $4852: $1C
    ld   a, [de]                                  ; $4853: $1A
    ld   [hl+], a                                 ; $4854: $22

jr_001_4855:
    inc  l                                        ; $4855: $2C
    ld   e, l                                     ; $4856: $5D
    ld   a, [de]                                  ; $4857: $1A
    ld   [hl+], a                                 ; $4858: $22
    inc  e                                        ; $4859: $1C
    ld   a, [de]                                  ; $485A: $1A
    ld   [hl], a                                  ; $485B: $77
    ld   l, $09                                   ; $485C: $2E $09
    ld   a, [$DF38]                               ; $485E: $FA $38 $DF
    ld   [hl], a                                  ; $4861: $77
    ld   l, $0C                                   ; $4862: $2E $0C
    xor  a                                        ; $4864: $AF
    ld   [hl], a                                  ; $4865: $77
    ret                                           ; $4866: $C9


Jump_001_4867:
    ld   a, [$C27B]                               ; $4867: $FA $7B $C2
    bit  2, a                                     ; $486A: $CB $57
    ret  z                                        ; $486C: $C8

    ld   a, [$C28E]                               ; $486D: $FA $8E $C2
    and  a                                        ; $4870: $A7
    jr   nz, jr_001_487C                          ; $4871: $20 $09

    ld   a, [$C27B]                               ; $4873: $FA $7B $C2
    and  $FB                                      ; $4876: $E6 $FB
    ld   [$C27B], a                               ; $4878: $EA $7B $C2
    ret                                           ; $487B: $C9


jr_001_487C:
    dec  a                                        ; $487C: $3D
    ld   [$C28E], a                               ; $487D: $EA $8E $C2
    ld   a, [$C275]                               ; $4880: $FA $75 $C2
    ld   [$C274], a                               ; $4883: $EA $74 $C2
    ld   a, [$C27B]                               ; $4886: $FA $7B $C2
    and  $18                                      ; $4889: $E6 $18
    ret  nz                                       ; $488B: $C0

    ld   hl, $C200                                ; $488C: $21 $00 $C2
    ld   a, [$C261]                               ; $488F: $FA $61 $C2
    bit  4, a                                     ; $4892: $CB $67
    jr   z, jr_001_4899                           ; $4894: $28 $03

    set  5, [hl]                                  ; $4896: $CB $EE
    ret                                           ; $4898: $C9


jr_001_4899:
    bit  5, a                                     ; $4899: $CB $6F
    ret  z                                        ; $489B: $C8

    res  5, [hl]                                  ; $489C: $CB $AE
    ret                                           ; $489E: $C9


Call_001_489F:
    ld   e, $03                                   ; $489F: $1E $03
    ld   a, [de]                                  ; $48A1: $1A
    sub  $10                                      ; $48A2: $D6 $10
    and  $F0                                      ; $48A4: $E6 $F0
    ld   l, a                                     ; $48A6: $6F
    ld   e, $06                                   ; $48A7: $1E $06
    ld   a, [de]                                  ; $48A9: $1A
    sub  $08                                      ; $48AA: $D6 $08
    and  $F0                                      ; $48AC: $E6 $F0
    swap a                                        ; $48AE: $CB $37
    add  l                                        ; $48B0: $85
    ld   l, a                                     ; $48B1: $6F
    ld   h, $C1                                   ; $48B2: $26 $C1
    ret                                           ; $48B4: $C9


DispatchProjectileRecords::
    ld   a, [$C29E]                               ; $48B5: $FA $9E $C2
    dec  a                                        ; $48B8: $3D
    ld   [$C7CA], a                               ; $48B9: $EA $CA $C7
    xor  a                                        ; $48BC: $AF
    ld   [$C291], a                               ; $48BD: $EA $91 $C2

jr_001_48C0:
    ld   a, [$C7CA]                               ; $48C0: $FA $CA $C7
    ld   de, $C300                                ; $48C3: $11 $00 $C3
    add  d                                        ; $48C6: $82
    ld   d, a                                     ; $48C7: $57
    ld   a, [de]                                  ; $48C8: $1A
    bit  0, a                                     ; $48C9: $CB $47
    jr   z, @+$14                                 ; $48CB: $28 $12

    ld   bc, $48DF                                ; $48CD: $01 $DF $48
    push bc                                       ; $48D0: $C5
    ld   e, $09                                   ; $48D1: $1E $09
    ld   a, [de]                                  ; $48D3: $1A
    call Call_000_0B7D                            ; $48D4: $CD $7D $0B
    ld   [$EA48], a                               ; $48D7: $EA $48 $EA
    ld   c, b                                     ; $48DA: $48
    db   $F4                                      ; $48DB: $F4
    ld   c, b                                     ; $48DC: $48
    ld   [$FA48], a                               ; $48DD: $EA $48 $FA
    jp   z, Jump_000_3DC7                         ; $48E0: $CA $C7 $3D

    ld   [$C7CA], a                               ; $48E3: $EA $CA $C7
    inc  a                                        ; $48E6: $3C
    jr   nz, jr_001_48C0                          ; $48E7: $20 $D7

    ret                                           ; $48E9: $C9


ProcessNormalProjectile::
    ld   e, $0C                                   ; $48EA: $1E $0C
    ld   a, [de]                                  ; $48EC: $1A
    call Call_000_0B7D                            ; $48ED: $CD $7D $0B
    ld   [bc], a                                  ; $48F0: $02
    ld   c, c                                     ; $48F1: $49
    rra                                           ; $48F2: $1F
    ld   c, c                                     ; $48F3: $49
    ld   e, $0C                                   ; $48F4: $1E $0C
    ld   a, [de]                                  ; $48F6: $1A
    call Call_000_0B7D                            ; $48F7: $CD $7D $0B
    ld   [bc], a                                  ; $48FA: $02
    ld   c, c                                     ; $48FB: $49
    adc  e                                        ; $48FC: $8B
    ld   c, c                                     ; $48FD: $49
    push hl                                       ; $48FE: $E5
    ld   c, c                                     ; $48FF: $49
    ei                                            ; $4900: $FB
    ld   c, c                                     ; $4901: $49
    call $4A6A                                    ; $4902: $CD $6A $4A
    ld   e, $0E                                   ; $4905: $1E $0E
    ld   hl, $4A66                                ; $4907: $21 $66 $4A
    ld   a, [$DF38]                               ; $490A: $FA $38 $DF
    call AddAToHL                                 ; $490D: $CD $71 $00
    ld   a, [hl]                                  ; $4910: $7E
    ld   [de], a                                  ; $4911: $12
    inc  e                                        ; $4912: $1C
    xor  a                                        ; $4913: $AF
    ld   [de], a                                  ; $4914: $12
    inc  e                                        ; $4915: $1C
    ld   [de], a                                  ; $4916: $12
    ld   e, $0C                                   ; $4917: $1E $0C
    inc  a                                        ; $4919: $3C
    ld   [de], a                                  ; $491A: $12
    ld   [$C291], a                               ; $491B: $EA $91 $C2
    ret                                           ; $491E: $C9


    ld   e, $00                                   ; $491F: $1E $00
    ld   a, [de]                                  ; $4921: $1A
    bit  3, a                                     ; $4922: $CB $5F
    jr   nz, ClearProjectileRecord                ; $4924: $20 $5D

    call Call_001_489F                            ; $4926: $CD $9F $48
    ld   a, [hl]                                  ; $4929: $7E
    and  a                                        ; $492A: $A7
    jr   z, jr_001_4962                           ; $492B: $28 $35

    cp   $02                                      ; $492D: $FE $02
    jr   z, jr_001_4962                           ; $492F: $28 $31

    cp   $03                                      ; $4931: $FE $03
    jr   z, jr_001_4962                           ; $4933: $28 $2D

    cp   $04                                      ; $4935: $FE $04
    jr   z, jr_001_4962                           ; $4937: $28 $29

    cp   $08                                      ; $4939: $FE $08
    jr   z, jr_001_4962                           ; $493B: $28 $25

    cp   $0E                                      ; $493D: $FE $0E
    jr   z, jr_001_4962                           ; $493F: $28 $21

    cp   $0F                                      ; $4941: $FE $0F
    jr   z, jr_001_4962                           ; $4943: $28 $1D

    cp   $0D                                      ; $4945: $FE $0D
    jr   z, jr_001_496A                           ; $4947: $28 $21

    ld   e, $12                                   ; $4949: $1E $12
    ld   a, [de]                                  ; $494B: $1A
    cp   $58                                      ; $494C: $FE $58
    jr   nc, jr_001_4959                          ; $494E: $30 $09

    ld   a, [$DF38]                               ; $4950: $FA $38 $DF
    rlca                                          ; $4953: $07
    add  $19                                      ; $4954: $C6 $19
    rst  RST_28                                   ; $4956: $EF
    jr   ClearProjectileRecord                    ; $4957: $18 $2A

jr_001_4959:
    ld   a, [$DF38]                               ; $4959: $FA $38 $DF
    rlca                                          ; $495C: $07
    add  $1A                                      ; $495D: $C6 $1A
    rst  RST_28                                   ; $495F: $EF
    jr   ClearProjectileRecord                    ; $4960: $18 $21

jr_001_4962:
    ld   a, $01                                   ; $4962: $3E $01
    ld   [$C291], a                               ; $4964: $EA $91 $C2
    jp   AdvanceActorFixedPointMovement           ; $4967: $C3 $93 $4A


jr_001_496A:
    ld   a, [$DF38]                               ; $496A: $FA $38 $DF
    cp   $01                                      ; $496D: $FE $01
    jr   nz, ClearProjectileRecord                ; $496F: $20 $12

    xor  a                                        ; $4971: $AF
    ld   [hl], a                                  ; $4972: $77
    ld   c, l                                     ; $4973: $4D
    call Call_001_4C88                            ; $4974: $CD $88 $4C
    ld   b, $25                                   ; $4977: $06 $25
    ld   e, $12                                   ; $4979: $1E $12
    ld   a, [de]                                  ; $497B: $1A
    cp   $58                                      ; $497C: $FE $58
    jr   c, jr_001_4981                           ; $497E: $38 $01

    inc  b                                        ; $4980: $04

jr_001_4981:
    ld   a, b                                     ; $4981: $78
    rst  RST_28                                   ; $4982: $EF

ClearProjectileRecord::
    xor  a                                        ; $4983: $AF
    ld   e, $00                                   ; $4984: $1E $00
    ld   [de], a                                  ; $4986: $12
    ld   e, $11                                   ; $4987: $1E $11
    ld   [de], a                                  ; $4989: $12
    ret                                           ; $498A: $C9


    call AdvanceActorFixedPointMovement           ; $498B: $CD $93 $4A
    ld   e, $00                                   ; $498E: $1E $00
    ld   a, [de]                                  ; $4990: $1A
    bit  3, a                                     ; $4991: $CB $5F
    jr   nz, jr_001_49D7                          ; $4993: $20 $42

    call Call_001_489F                            ; $4995: $CD $9F $48
    ld   a, [hl]                                  ; $4998: $7E
    and  a                                        ; $4999: $A7
    jr   z, jr_001_49BA                           ; $499A: $28 $1E

    cp   $02                                      ; $499C: $FE $02
    jr   z, jr_001_49BA                           ; $499E: $28 $1A

    cp   $03                                      ; $49A0: $FE $03
    jr   z, jr_001_49BA                           ; $49A2: $28 $16

    cp   $04                                      ; $49A4: $FE $04
    jr   z, jr_001_49BA                           ; $49A6: $28 $12

    cp   $08                                      ; $49A8: $FE $08
    jr   z, jr_001_49BA                           ; $49AA: $28 $0E

    cp   $0E                                      ; $49AC: $FE $0E
    jr   z, jr_001_49BA                           ; $49AE: $28 $0A

    cp   $0F                                      ; $49B0: $FE $0F
    jr   z, jr_001_49BA                           ; $49B2: $28 $06

    cp   $07                                      ; $49B4: $FE $07
    jr   z, jr_001_49DF                           ; $49B6: $28 $27

    jr   jr_001_49C0                              ; $49B8: $18 $06

jr_001_49BA:
    ld   a, $01                                   ; $49BA: $3E $01
    ld   [$C291], a                               ; $49BC: $EA $91 $C2
    ret                                           ; $49BF: $C9


jr_001_49C0:
    ld   e, $12                                   ; $49C0: $1E $12
    ld   a, [de]                                  ; $49C2: $1A
    cp   $58                                      ; $49C3: $FE $58
    jr   nc, jr_001_49D0                          ; $49C5: $30 $09

    ld   a, [$DF38]                               ; $49C7: $FA $38 $DF
    rlca                                          ; $49CA: $07
    add  $19                                      ; $49CB: $C6 $19
    rst  RST_28                                   ; $49CD: $EF
    jr   jr_001_49D7                              ; $49CE: $18 $07

jr_001_49D0:
    ld   a, [$DF38]                               ; $49D0: $FA $38 $DF
    rlca                                          ; $49D3: $07
    add  $1A                                      ; $49D4: $C6 $1A
    rst  RST_28                                   ; $49D6: $EF

jr_001_49D7:
    xor  a                                        ; $49D7: $AF
    ld   e, $00                                   ; $49D8: $1E $00
    ld   [de], a                                  ; $49DA: $12
    ld   e, $11                                   ; $49DB: $1E $11
    ld   [de], a                                  ; $49DD: $12
    ret                                           ; $49DE: $C9


jr_001_49DF:
    ld   e, $0C                                   ; $49DF: $1E $0C
    ld   a, $02                                   ; $49E1: $3E $02
    ld   [de], a                                  ; $49E3: $12
    ret                                           ; $49E4: $C9


    ld   e, $0C                                   ; $49E5: $1E $0C
    ld   a, $03                                   ; $49E7: $3E $03
    ld   [de], a                                  ; $49E9: $12
    inc  e                                        ; $49EA: $1C
    xor  a                                        ; $49EB: $AF
    ld   [de], a                                  ; $49EC: $12
    inc  e                                        ; $49ED: $1C
    ld   a, $14                                   ; $49EE: $3E $14
    ld   [de], a                                  ; $49F0: $12
    inc  e                                        ; $49F1: $1C
    xor  a                                        ; $49F2: $AF
    ld   [de], a                                  ; $49F3: $12
    inc  e                                        ; $49F4: $1C
    ld   [de], a                                  ; $49F5: $12
    inc  a                                        ; $49F6: $3C
    ld   [$C291], a                               ; $49F7: $EA $91 $C2
    ret                                           ; $49FA: $C9


    ld   e, $00                                   ; $49FB: $1E $00
    ld   a, [de]                                  ; $49FD: $1A
    bit  3, a                                     ; $49FE: $CB $5F
    jr   nz, jr_001_49D7                          ; $4A00: $20 $D5

    ld   e, $0D                                   ; $4A02: $1E $0D
    ld   a, [de]                                  ; $4A04: $1A
    inc  a                                        ; $4A05: $3C
    ld   [de], a                                  ; $4A06: $12
    cp   $80                                      ; $4A07: $FE $80
    jr   z, jr_001_4A28                           ; $4A09: $28 $1D

    ld   a, $01                                   ; $4A0B: $3E $01
    ld   [$C291], a                               ; $4A0D: $EA $91 $C2
    ld   hl, $140C                                ; $4A10: $21 $0C $14
    call SharedPlayerContactComparator            ; $4A13: $CD $4B $7B
    ret  nc                                       ; $4A16: $D0

    ld   a, [$C27B]                               ; $4A17: $FA $7B $C2
    bit  3, a                                     ; $4A1A: $CB $5F
    ret  nz                                       ; $4A1C: $C0

    ld   a, $08                                   ; $4A1D: $3E $08
    ld   [$C27B], a                               ; $4A1F: $EA $7B $C2
    xor  a                                        ; $4A22: $AF
    ld   [$C2A2], a                               ; $4A23: $EA $A2 $C2
    jr   jr_001_4A3D                              ; $4A26: $18 $15

jr_001_4A28:
    ld   hl, $140E                                ; $4A28: $21 $0E $14
    call SharedPlayerContactComparator            ; $4A2B: $CD $4B $7B
    jr   nc, jr_001_49D7                          ; $4A2E: $30 $A7

    ld   a, [$C27B]                               ; $4A30: $FA $7B $C2
    bit  3, a                                     ; $4A33: $CB $5F
    jr   z, jr_001_49D7                           ; $4A35: $28 $A0

    xor  a                                        ; $4A37: $AF
    ld   [$C27B], a                               ; $4A38: $EA $7B $C2
    jr   jr_001_49D7                              ; $4A3B: $18 $9A

Call_001_4A3D:
jr_001_4A3D:
    ld   bc, $00F3                                ; $4A3D: $01 $F3 $00
    ld   hl, $C212                                ; $4A40: $21 $12 $C2
    ld   e, l                                     ; $4A43: $5D
    ld   a, [de]                                  ; $4A44: $1A
    sub  [hl]                                     ; $4A45: $96
    jr   nc, jr_001_4A4B                          ; $4A46: $30 $03

    ld   bc, $200D                                ; $4A48: $01 $0D $20

jr_001_4A4B:
    ld   l, $00                                   ; $4A4B: $2E $00
    ld   a, [hl]                                  ; $4A4D: $7E
    and  $0F                                      ; $4A4E: $E6 $0F
    or   b                                        ; $4A50: $B0
    ld   [hl], a                                  ; $4A51: $77
    ld   e, $06                                   ; $4A52: $1E $06
    ld   l, e                                     ; $4A54: $6B
    ld   a, [de]                                  ; $4A55: $1A
    add  c                                        ; $4A56: $81
    sub  [hl]                                     ; $4A57: $96
    bit  7, a                                     ; $4A58: $CB $7F
    jr   nz, jr_001_4A60                          ; $4A5A: $20 $04

    ld   c, a                                     ; $4A5C: $4F
    jp   Jump_001_4667                            ; $4A5D: $C3 $67 $46


jr_001_4A60:
    cpl                                           ; $4A60: $2F
    inc  a                                        ; $4A61: $3C
    ld   c, a                                     ; $4A62: $4F
    jp   Jump_001_4694                            ; $4A63: $C3 $94 $46


    db   $10                                      ; $4A66: $10
    dec  d                                        ; $4A67: $15
    ld   de, $1E16                                ; $4A68: $11 $16 $1E
    ld   bc, $471A                                ; $4A6B: $01 $1A $47
    and  $70                                      ; $4A6E: $E6 $70
    swap a                                        ; $4A70: $CB $37
    ld   hl, $C220                                ; $4A72: $21 $20 $C2
    add  h                                        ; $4A75: $84
    ld   h, a                                     ; $4A76: $67
    ld   a, b                                     ; $4A77: $78
    and  $0F                                      ; $4A78: $E6 $0F
    rlca                                          ; $4A7A: $07
    rlca                                          ; $4A7B: $07
    add  l                                        ; $4A7C: $85
    ld   l, a                                     ; $4A7D: $6F
    ld   e, $14                                   ; $4A7E: $1E $14
    ld   a, [hl+]                                 ; $4A80: $2A
    ld   [de], a                                  ; $4A81: $12
    inc  e                                        ; $4A82: $1C
    ld   a, [hl+]                                 ; $4A83: $2A
    ld   [de], a                                  ; $4A84: $12
    inc  e                                        ; $4A85: $1C
    ld   a, [hl+]                                 ; $4A86: $2A
    ld   [de], a                                  ; $4A87: $12
    inc  e                                        ; $4A88: $1C
    ld   a, [hl+]                                 ; $4A89: $2A
    ld   [de], a                                  ; $4A8A: $12
    xor  a                                        ; $4A8B: $AF
    ld   e, $02                                   ; $4A8C: $1E $02
    ld   [de], a                                  ; $4A8E: $12
    ld   e, $05                                   ; $4A8F: $1E $05
    ld   [de], a                                  ; $4A91: $12
    ret                                           ; $4A92: $C9


AdvanceActorFixedPointMovement::
    ld   h, d                                     ; $4A93: $62
    ld   l, $01                                   ; $4A94: $2E $01
    ld   e, $14                                   ; $4A96: $1E $14
    ld   a, [hl+]                                 ; $4A98: $2A
    and  $0F                                      ; $4A99: $E6 $0F
    cp   $04                                      ; $4A9B: $FE $04
    jr   c, jr_001_4AA9                           ; $4A9D: $38 $0A

    cp   $08                                      ; $4A9F: $FE $08
    jr   c, jr_001_4AAE                           ; $4AA1: $38 $0B

    cp   $0C                                      ; $4AA3: $FE $0C
    jr   c, jr_001_4AB3                           ; $4AA5: $38 $0C

    jr   jr_001_4AB8                              ; $4AA7: $18 $0F

jr_001_4AA9:
    call Call_001_4ABD                            ; $4AA9: $CD $BD $4A
    jr   jr_001_4AEF                              ; $4AAC: $18 $41

jr_001_4AAE:
    call Call_001_4ACE                            ; $4AAE: $CD $CE $4A
    jr   jr_001_4AEF                              ; $4AB1: $18 $3C

jr_001_4AB3:
    call Call_001_4ACE                            ; $4AB3: $CD $CE $4A
    jr   jr_001_4ADF                              ; $4AB6: $18 $27

jr_001_4AB8:
    call Call_001_4ABD                            ; $4AB8: $CD $BD $4A
    jr   jr_001_4ADF                              ; $4ABB: $18 $22

Call_001_4ABD:
    ld   a, [de]                                  ; $4ABD: $1A
    inc  e                                        ; $4ABE: $1C
    ld   c, a                                     ; $4ABF: $4F
    ld   a, [hl]                                  ; $4AC0: $7E
    add  c                                        ; $4AC1: $81
    ld   [hl+], a                                 ; $4AC2: $22
    ld   a, [de]                                  ; $4AC3: $1A
    inc  e                                        ; $4AC4: $1C
    ld   c, a                                     ; $4AC5: $4F
    ld   a, [hl]                                  ; $4AC6: $7E
    sbc  c                                        ; $4AC7: $99
    ld   [hl+], a                                 ; $4AC8: $22
    jr   nc, jr_001_4ACC                          ; $4AC9: $30 $01

    dec  [hl]                                     ; $4ACB: $35

jr_001_4ACC:
    inc  l                                        ; $4ACC: $2C
    ret                                           ; $4ACD: $C9


Call_001_4ACE:
    ld   a, [de]                                  ; $4ACE: $1A
    inc  e                                        ; $4ACF: $1C
    ld   c, a                                     ; $4AD0: $4F
    ld   a, [hl]                                  ; $4AD1: $7E
    add  c                                        ; $4AD2: $81
    ld   [hl+], a                                 ; $4AD3: $22
    ld   a, [de]                                  ; $4AD4: $1A
    inc  e                                        ; $4AD5: $1C
    ld   c, a                                     ; $4AD6: $4F
    ld   a, [hl]                                  ; $4AD7: $7E
    adc  c                                        ; $4AD8: $89
    ld   [hl+], a                                 ; $4AD9: $22
    jr   nc, jr_001_4ADD                          ; $4ADA: $30 $01

    inc  [hl]                                     ; $4ADC: $34

jr_001_4ADD:
    inc  l                                        ; $4ADD: $2C
    ret                                           ; $4ADE: $C9


jr_001_4ADF:
    ld   a, [de]                                  ; $4ADF: $1A
    inc  e                                        ; $4AE0: $1C
    ld   c, a                                     ; $4AE1: $4F
    ld   a, [hl]                                  ; $4AE2: $7E
    add  c                                        ; $4AE3: $81
    ld   [hl+], a                                 ; $4AE4: $22
    ld   a, [de]                                  ; $4AE5: $1A
    inc  e                                        ; $4AE6: $1C
    ld   c, a                                     ; $4AE7: $4F
    ld   a, [hl]                                  ; $4AE8: $7E
    sbc  c                                        ; $4AE9: $99
    ld   [hl+], a                                 ; $4AEA: $22
    jr   nc, jr_001_4AEE                          ; $4AEB: $30 $01

    dec  [hl]                                     ; $4AED: $35

jr_001_4AEE:
    ret                                           ; $4AEE: $C9


jr_001_4AEF:
    ld   a, [de]                                  ; $4AEF: $1A
    inc  e                                        ; $4AF0: $1C
    ld   c, a                                     ; $4AF1: $4F
    ld   a, [hl]                                  ; $4AF2: $7E
    add  c                                        ; $4AF3: $81
    ld   [hl+], a                                 ; $4AF4: $22
    ld   a, [de]                                  ; $4AF5: $1A
    inc  e                                        ; $4AF6: $1C
    ld   c, a                                     ; $4AF7: $4F
    ld   a, [hl]                                  ; $4AF8: $7E
    adc  c                                        ; $4AF9: $89
    ld   [hl+], a                                 ; $4AFA: $22
    jr   nc, jr_001_4AFE                          ; $4AFB: $30 $01

    inc  [hl]                                     ; $4AFD: $34

jr_001_4AFE:
    ret                                           ; $4AFE: $C9


WallClingSustain::
    ld   a, [$C27B]                               ; $4AFF: $FA $7B $C2
    bit  2, a                                     ; $4B02: $CB $57
    ret  nz                                       ; $4B04: $C0

    ld   a, [$C262]                               ; $4B05: $FA $62 $C2
    bit  0, a                                     ; $4B08: $CB $47
    jr   z, jr_001_4B55                           ; $4B0A: $28 $49

    xor  a                                        ; $4B0C: $AF
    ld   [$C27B], a                               ; $4B0D: $EA $7B $C2
    ld   a, [$C200]                               ; $4B10: $FA $00 $C2
    bit  5, a                                     ; $4B13: $CB $6F
    jr   z, jr_001_4B36                           ; $4B15: $28 $1F

    ld   a, [$C36A]                               ; $4B17: $FA $6A $C3
    or   $01                                      ; $4B1A: $F6 $01
    ld   [$C36A], a                               ; $4B1C: $EA $6A $C3
    ld   a, [$C261]                               ; $4B1F: $FA $61 $C2
    bit  4, a                                     ; $4B22: $CB $67
    jr   nz, jr_001_4B33                          ; $4B24: $20 $0D

    ld   a, $08                                   ; $4B26: $3E $08
    ld   [$C2A3], a                               ; $4B28: $EA $A3 $C2
    ld   a, $02                                   ; $4B2B: $3E $02
    ld   [$C2A2], a                               ; $4B2D: $EA $A2 $C2
    call WallPushInputMask                        ; $4B30: $CD $62 $4B

jr_001_4B33:
    jp   JumpLaunch                               ; $4B33: $C3 $60 $45


jr_001_4B36:
    ld   a, [$C36A]                               ; $4B36: $FA $6A $C3
    or   $01                                      ; $4B39: $F6 $01
    ld   [$C36A], a                               ; $4B3B: $EA $6A $C3
    ld   a, [$C261]                               ; $4B3E: $FA $61 $C2
    bit  5, a                                     ; $4B41: $CB $6F
    jr   nz, jr_001_4B52                          ; $4B43: $20 $0D

WallPushInputInit::
    ld   a, $08                                   ; $4B45: $3E $08
    ld   [$C2A3], a                               ; $4B47: $EA $A3 $C2
    ld   a, $01                                   ; $4B4A: $3E $01
    ld   [$C2A2], a                               ; $4B4C: $EA $A2 $C2
    call WallPushInputMask                        ; $4B4F: $CD $62 $4B

jr_001_4B52:
    jp   JumpLaunch                               ; $4B52: $C3 $60 $45


jr_001_4B55:
    ld   a, [$DF11]                               ; $4B55: $FA $11 $DF
    dec  a                                        ; $4B58: $3D
    ld   [$DF12], a                               ; $4B59: $EA $12 $DF
    ld   a, $08                                   ; $4B5C: $3E $08
    ld   [$C274], a                               ; $4B5E: $EA $74 $C2
    ret                                           ; $4B61: $C9


WallPushInputMask::
    ld   b, $21                                   ; $4B62: $06 $21
    ld   a, [$C2A2]                               ; $4B64: $FA $A2 $C2
    bit  0, a                                     ; $4B67: $CB $47
    jr   nz, WallPushInputCountdown               ; $4B69: $20 $07

    ld   b, $11                                   ; $4B6B: $06 $11
    bit  1, a                                     ; $4B6D: $CB $4F
    jr   nz, WallPushInputCountdown               ; $4B6F: $20 $01

    ret                                           ; $4B71: $C9


WallPushInputCountdown::
    ld   a, [$C2A3]                               ; $4B72: $FA $A3 $C2
    and  a                                        ; $4B75: $A7
    ret  z                                        ; $4B76: $C8

    dec  a                                        ; $4B77: $3D
    ld   [$C2A3], a                               ; $4B78: $EA $A3 $C2
    ld   a, b                                     ; $4B7B: $78
    ld   [$C261], a                               ; $4B7C: $EA $61 $C2
    ret                                           ; $4B7F: $C9


    ld   a, $10                                   ; $4B80: $3E $10
    ld   [$C27B], a                               ; $4B82: $EA $7B $C2
    ld   a, $0A                                   ; $4B85: $3E $0A
    ld   [$C274], a                               ; $4B87: $EA $74 $C2
    ld   a, [$C261]                               ; $4B8A: $FA $61 $C2
    and  $CF                                      ; $4B8D: $E6 $CF
    ld   [$C261], a                               ; $4B8F: $EA $61 $C2
    jp   Jump_001_4632                            ; $4B92: $C3 $32 $46


Jump_001_4B95:
    ld   a, [$C364]                               ; $4B95: $FA $64 $C3
    ld   b, a                                     ; $4B98: $47
    ld   a, [$C206]                               ; $4B99: $FA $06 $C2
    sub  b                                        ; $4B9C: $90
    ld   b, a                                     ; $4B9D: $47
    ld   a, [$C273]                               ; $4B9E: $FA $73 $C2
    sub  b                                        ; $4BA1: $90
    ret  nc                                       ; $4BA2: $D0

    ld   a, [$C364]                               ; $4BA3: $FA $64 $C3
    add  c                                        ; $4BA6: $81
    ld   [$C364], a                               ; $4BA7: $EA $64 $C3
    jr   nc, jr_001_4BB4                          ; $4BAA: $30 $08

    ld   a, [$C365]                               ; $4BAC: $FA $65 $C3
    inc  a                                        ; $4BAF: $3C
    ld   [$C365], a                               ; $4BB0: $EA $65 $C3
    ret                                           ; $4BB3: $C9


jr_001_4BB4:
    ld   a, [$DF06]                               ; $4BB4: $FA $06 $DF
    bit  1, a                                     ; $4BB7: $CB $4F
    jr   nz, jr_001_4BC4                          ; $4BB9: $20 $09

    ld   a, [$C3A4]                               ; $4BBB: $FA $A4 $C3
    ld   c, a                                     ; $4BBE: $4F
    ld   a, [$C365]                               ; $4BBF: $FA $65 $C3
    sub  c                                        ; $4BC2: $91
    ret  nz                                       ; $4BC3: $C0

jr_001_4BC4:
    ld   a, [$C364]                               ; $4BC4: $FA $64 $C3
    cp   $61                                      ; $4BC7: $FE $61
    ret  c                                        ; $4BC9: $D8

    ld   a, $60                                   ; $4BCA: $3E $60
    ld   [$C364], a                               ; $4BCC: $EA $64 $C3
    ret                                           ; $4BCF: $C9


Jump_001_4BD0:
    ld   a, [$C364]                               ; $4BD0: $FA $64 $C3
    ld   b, a                                     ; $4BD3: $47
    ld   a, [$C206]                               ; $4BD4: $FA $06 $C2
    sub  b                                        ; $4BD7: $90
    ld   b, a                                     ; $4BD8: $47
    ld   a, [$C273]                               ; $4BD9: $FA $73 $C2
    sub  b                                        ; $4BDC: $90
    ret  c                                        ; $4BDD: $D8

    ld   a, [$C364]                               ; $4BDE: $FA $64 $C3
    sub  c                                        ; $4BE1: $91
    ld   [$C364], a                               ; $4BE2: $EA $64 $C3
    ret  nc                                       ; $4BE5: $D0

    ld   a, [$DF06]                               ; $4BE6: $FA $06 $DF
    bit  1, a                                     ; $4BE9: $CB $4F
    jr   nz, jr_001_4BF3                          ; $4BEB: $20 $06

    ld   a, [$C365]                               ; $4BED: $FA $65 $C3
    and  a                                        ; $4BF0: $A7
    jr   nz, jr_001_4BF8                          ; $4BF1: $20 $05

jr_001_4BF3:
    xor  a                                        ; $4BF3: $AF
    ld   [$C364], a                               ; $4BF4: $EA $64 $C3
    ret                                           ; $4BF7: $C9


jr_001_4BF8:
    dec  a                                        ; $4BF8: $3D
    ld   [$C365], a                               ; $4BF9: $EA $65 $C3
    ret                                           ; $4BFC: $C9


    ld   a, $FF                                   ; $4BFD: $3E $FF
    ld   [$C364], a                               ; $4BFF: $EA $64 $C3
    ret                                           ; $4C02: $C9


Jump_001_4C03:
    ld   a, [$C362]                               ; $4C03: $FA $62 $C3
    ld   b, a                                     ; $4C06: $47
    ld   a, [$C203]                               ; $4C07: $FA $03 $C2
    sub  b                                        ; $4C0A: $90
    ld   b, a                                     ; $4C0B: $47
    ld   a, [$C272]                               ; $4C0C: $FA $72 $C2
    sub  b                                        ; $4C0F: $90
    ret  nc                                       ; $4C10: $D0

    xor  $FF                                      ; $4C11: $EE $FF
    inc  a                                        ; $4C13: $3C
    ld   c, a                                     ; $4C14: $4F
    ld   a, [$C362]                               ; $4C15: $FA $62 $C3
    add  c                                        ; $4C18: $81
    ld   [$C362], a                               ; $4C19: $EA $62 $C3
    jr   nc, jr_001_4C26                          ; $4C1C: $30 $08

    ld   a, [$C363]                               ; $4C1E: $FA $63 $C3
    inc  a                                        ; $4C21: $3C
    ld   [$C363], a                               ; $4C22: $EA $63 $C3
    ret                                           ; $4C25: $C9


jr_001_4C26:
    ld   a, [$DF06]                               ; $4C26: $FA $06 $DF
    bit  1, a                                     ; $4C29: $CB $4F
    jr   nz, jr_001_4C36                          ; $4C2B: $20 $09

    ld   a, [$C3A5]                               ; $4C2D: $FA $A5 $C3
    ld   c, a                                     ; $4C30: $4F
    ld   a, [$C363]                               ; $4C31: $FA $63 $C3
    sub  c                                        ; $4C34: $91
    ret  nz                                       ; $4C35: $C0

jr_001_4C36:
    ld   a, [$C362]                               ; $4C36: $FA $62 $C3
    cp   $81                                      ; $4C39: $FE $81
    ret  c                                        ; $4C3B: $D8

    ld   a, $80                                   ; $4C3C: $3E $80
    ld   [$C362], a                               ; $4C3E: $EA $62 $C3
    ret                                           ; $4C41: $C9


Jump_001_4C42:
    ld   a, [$C362]                               ; $4C42: $FA $62 $C3
    ld   b, a                                     ; $4C45: $47
    ld   a, [$C203]                               ; $4C46: $FA $03 $C2
    sub  b                                        ; $4C49: $90
    ld   b, a                                     ; $4C4A: $47
    ld   a, [$C272]                               ; $4C4B: $FA $72 $C2
    sub  b                                        ; $4C4E: $90
    ret  c                                        ; $4C4F: $D8

    ld   c, a                                     ; $4C50: $4F
    ld   a, [$C362]                               ; $4C51: $FA $62 $C3
    sub  c                                        ; $4C54: $91
    ld   [$C362], a                               ; $4C55: $EA $62 $C3
    ret  nc                                       ; $4C58: $D0

    ld   a, [$DF06]                               ; $4C59: $FA $06 $DF
    bit  1, a                                     ; $4C5C: $CB $4F
    jr   nz, jr_001_4C67                          ; $4C5E: $20 $07

    ld   a, [$C363]                               ; $4C60: $FA $63 $C3
    and  a                                        ; $4C63: $A7
    jp   nz, Jump_001_4C6C                        ; $4C64: $C2 $6C $4C

jr_001_4C67:
    xor  a                                        ; $4C67: $AF
    ld   [$C362], a                               ; $4C68: $EA $62 $C3
    ret                                           ; $4C6B: $C9


Jump_001_4C6C:
    dec  a                                        ; $4C6C: $3D
    ld   [$C363], a                               ; $4C6D: $EA $63 $C3
    ret                                           ; $4C70: $C9


    ld   a, $FF                                   ; $4C71: $3E $FF
    ld   [$C362], a                               ; $4C73: $EA $62 $C3
    ret                                           ; $4C76: $C9


Call_001_4C77:
    ld   a, [$C36A]                               ; $4C77: $FA $6A $C3
    bit  2, a                                     ; $4C7A: $CB $57
    ret  z                                        ; $4C7C: $C8

    ld   a, [$C26A]                               ; $4C7D: $FA $6A $C2
    and  $01                                      ; $4C80: $E6 $01
    ret  nz                                       ; $4C82: $C0

    ld   c, $01                                   ; $4C83: $0E $01
    jp   Jump_001_4769                            ; $4C85: $C3 $69 $47


Call_001_4C88:
    xor  a                                        ; $4C88: $AF
    ld   [$C7C4], a                               ; $4C89: $EA $C4 $C7
    ld   [$C7CA], a                               ; $4C8C: $EA $CA $C7
    push bc                                       ; $4C8F: $C5
    call FindAvailableWorldActorPage              ; $4C90: $CD $5D $4D
    pop  bc                                       ; $4C93: $C1
    ld   e, $00                                   ; $4C94: $1E $00
    ld   a, [de]                                  ; $4C96: $1A
    xor  $20                                      ; $4C97: $EE $20
    and  $F0                                      ; $4C99: $E6 $F0
    or   $01                                      ; $4C9B: $F6 $01
    ld   [hl], a                                  ; $4C9D: $77
    ld   e, $03                                   ; $4C9E: $1E $03
    ld   l, e                                     ; $4CA0: $6B
    ld   a, [de]                                  ; $4CA1: $1A
    and  $F0                                      ; $4CA2: $E6 $F0
    or   $08                                      ; $4CA4: $F6 $08
    ld   [hl+], a                                 ; $4CA6: $22
    inc  e                                        ; $4CA7: $1C
    ld   a, [de]                                  ; $4CA8: $1A
    ld   [hl], a                                  ; $4CA9: $77
    ld   e, $06                                   ; $4CAA: $1E $06
    ld   l, e                                     ; $4CAC: $6B
    ld   a, [de]                                  ; $4CAD: $1A
    and  $F0                                      ; $4CAE: $E6 $F0
    or   $08                                      ; $4CB0: $F6 $08
    ld   [hl+], a                                 ; $4CB2: $22
    inc  e                                        ; $4CB3: $1C
    ld   a, [de]                                  ; $4CB4: $1A
    ld   [hl], a                                  ; $4CB5: $77
    ld   l, $09                                   ; $4CB6: $2E $09
    ld   a, $0F                                   ; $4CB8: $3E $0F
    ld   [hl], a                                  ; $4CBA: $77
    ld   l, $0B                                   ; $4CBB: $2E $0B
    ld   a, $10                                   ; $4CBD: $3E $10
    ld   [hl+], a                                 ; $4CBF: $22
    xor  a                                        ; $4CC0: $AF
    ld   [hl], a                                  ; $4CC1: $77
    push de                                       ; $4CC2: $D5
    ld   d, $00                                   ; $4CC3: $16 $00
    ld   a, c                                     ; $4CC5: $79
    and  $0F                                      ; $4CC6: $E6 $0F
    ld   e, a                                     ; $4CC8: $5F
    ld   a, c                                     ; $4CC9: $79
    and  $F0                                      ; $4CCA: $E6 $F0
    sla  a                                        ; $4CCC: $CB $27
    rl   d                                        ; $4CCE: $CB $12
    sla  a                                        ; $4CD0: $CB $27
    rl   d                                        ; $4CD2: $CB $12
    sla  e                                        ; $4CD4: $CB $23
    add  e                                        ; $4CD6: $83
    ld   [$C687], a                               ; $4CD7: $EA $87 $C6
    ld   a, d                                     ; $4CDA: $7A
    add  $98                                      ; $4CDB: $C6 $98
    ld   [$C688], a                               ; $4CDD: $EA $88 $C6
    ld   a, [$DF02]                               ; $4CE0: $FA $02 $DF
    ld   hl, $4CEF                                ; $4CE3: $21 $EF $4C
    call AddAToHL                                 ; $4CE6: $CD $71 $00
    ld   a, [hl]                                  ; $4CE9: $7E
    ld   [$C689], a                               ; $4CEA: $EA $89 $C6
    pop  de                                       ; $4CED: $D1
    ret                                           ; $4CEE: $C9


    nop                                           ; $4CEF: $00
    nop                                           ; $4CF0: $00
    jr   c, @+$2A                                 ; $4CF1: $38 $28

    ld   e, h                                     ; $4CF3: $5C
    db   $10                                      ; $4CF4: $10

ScanStageEntityPlacements::
    call Call_001_4E20                            ; $4CF5: $CD $20 $4E
    ld   a, [$C3A5]                               ; $4CF8: $FA $A5 $C3
    ld   c, a                                     ; $4CFB: $4F
    ld   a, [$C3A4]                               ; $4CFC: $FA $A4 $C3
    sub  c                                        ; $4CFF: $91
    jp   c, Jump_001_4DB1                         ; $4D00: $DA $B1 $4D

    ld   a, [$C261]                               ; $4D03: $FA $61 $C2
    bit  4, a                                     ; $4D06: $CB $67
    jr   nz, jr_001_4D1C                          ; $4D08: $20 $12

    bit  5, a                                     ; $4D0A: $CB $6F
    ret  z                                        ; $4D0C: $C8

    ld   a, [$C365]                               ; $4D0D: $FA $65 $C3
    ld   c, a                                     ; $4D10: $4F
    ld   a, [$C364]                               ; $4D11: $FA $64 $C3
    sub  $14                                      ; $4D14: $D6 $14
    ld   b, a                                     ; $4D16: $47
    jr   nc, jr_001_4D29                          ; $4D17: $30 $10

    dec  c                                        ; $4D19: $0D
    jr   jr_001_4D29                              ; $4D1A: $18 $0D

jr_001_4D1C:
    ld   a, [$C365]                               ; $4D1C: $FA $65 $C3
    ld   c, a                                     ; $4D1F: $4F
    ld   a, [$C364]                               ; $4D20: $FA $64 $C3
    add  $B7                                      ; $4D23: $C6 $B7
    ld   b, a                                     ; $4D25: $47
    jr   nc, jr_001_4D29                          ; $4D26: $30 $01

    inc  c                                        ; $4D28: $0C

jr_001_4D29:
    xor  a                                        ; $4D29: $AF
    ld   [$C7C4], a                               ; $4D2A: $EA $C4 $C7
    ld   de, $CA20                                ; $4D2D: $11 $20 $CA

jr_001_4D30:
    push de                                       ; $4D30: $D5
    ld   a, [de]                                  ; $4D31: $1A
    cp   $FF                                      ; $4D32: $FE $FF
    jr   z, jr_001_4D5B                           ; $4D34: $28 $25

    bit  0, a                                     ; $4D36: $CB $47
    jr   nz, jr_001_4D57                          ; $4D38: $20 $1D

    ld   d, $CE                                   ; $4D3A: $16 $CE
    ld   a, [de]                                  ; $4D3C: $1A
    sub  b                                        ; $4D3D: $90
    jr   nz, jr_001_4D57                          ; $4D3E: $20 $17

    inc  d                                        ; $4D40: $14
    ld   a, [de]                                  ; $4D41: $1A
    sub  c                                        ; $4D42: $91
    jr   nz, jr_001_4D57                          ; $4D43: $20 $12

    push bc                                       ; $4D45: $C5
    call FindAvailableWorldActorPage              ; $4D46: $CD $5D $4D
    pop  bc                                       ; $4D49: $C1
    cp   $FF                                      ; $4D4A: $FE $FF
    jr   z, jr_001_4D5B                           ; $4D4C: $28 $0D

    ld   [$C7C4], a                               ; $4D4E: $EA $C4 $C7
    pop  de                                       ; $4D51: $D1
    call SpawnPlacementActorRecord                ; $4D52: $CD $74 $4D
    jr   jr_001_4D58                              ; $4D55: $18 $01

jr_001_4D57:
    pop  de                                       ; $4D57: $D1

jr_001_4D58:
    inc  e                                        ; $4D58: $1C
    jr   jr_001_4D30                              ; $4D59: $18 $D5

jr_001_4D5B:
    pop  de                                       ; $4D5B: $D1
    ret                                           ; $4D5C: $C9


FindAvailableWorldActorPage::
    ld   a, [$C7C4]                               ; $4D5D: $FA $C4 $C7
    push af                                       ; $4D60: $F5
    ld   hl, $C700                                ; $4D61: $21 $00 $C7
    add  h                                        ; $4D64: $84
    ld   h, a                                     ; $4D65: $67
    pop  af                                       ; $4D66: $F1

jr_001_4D67:
    ld   b, [hl]                                  ; $4D67: $46
    bit  0, b                                     ; $4D68: $CB $40
    ret  z                                        ; $4D6A: $C8

    inc  h                                        ; $4D6B: $24
    inc  a                                        ; $4D6C: $3C
    cp   $12                                      ; $4D6D: $FE $12
    jr   nz, jr_001_4D67                          ; $4D6F: $20 $F6

    ld   a, $FF                                   ; $4D71: $3E $FF
    ret                                           ; $4D73: $C9


SpawnPlacementActorRecord::
    push de                                       ; $4D74: $D5
    ld   a, [de]                                  ; $4D75: $1A
    or   $01                                      ; $4D76: $F6 $01
    ld   [de], a                                  ; $4D78: $12
    ld   a, [de]                                  ; $4D79: $1A
    inc  d                                        ; $4D7A: $14
    ld   [hl+], a                                 ; $4D7B: $22
    ld   a, [de]                                  ; $4D7C: $1A
    inc  d                                        ; $4D7D: $14
    ld   [hl+], a                                 ; $4D7E: $22
    inc  l                                        ; $4D7F: $2C
    ld   a, [de]                                  ; $4D80: $1A
    inc  d                                        ; $4D81: $14
    ld   [hl+], a                                 ; $4D82: $22
    ld   a, [de]                                  ; $4D83: $1A
    inc  d                                        ; $4D84: $14
    ld   [hl+], a                                 ; $4D85: $22
    inc  l                                        ; $4D86: $2C
    ld   a, [de]                                  ; $4D87: $1A
    inc  d                                        ; $4D88: $14
    ld   [hl+], a                                 ; $4D89: $22
    ld   a, [$DF02]                               ; $4D8A: $FA $02 $DF
    cp   $05                                      ; $4D8D: $FE $05
    jr   nz, jr_001_4D9B                          ; $4D8F: $20 $0A

    inc  d                                        ; $4D91: $14
    ld   a, [$C7CC]                               ; $4D92: $FA $CC $C7
    and  $FE                                      ; $4D95: $E6 $FE
    add  c                                        ; $4D97: $81
    ld   [hl+], a                                 ; $4D98: $22
    jr   jr_001_4D9E                              ; $4D99: $18 $03

jr_001_4D9B:
    ld   a, [de]                                  ; $4D9B: $1A
    inc  d                                        ; $4D9C: $14
    ld   [hl+], a                                 ; $4D9D: $22

jr_001_4D9E:
    ld   a, [de]                                  ; $4D9E: $1A
    inc  d                                        ; $4D9F: $14
    ld   [hl+], a                                 ; $4DA0: $22
    ld   a, [de]                                  ; $4DA1: $1A
    inc  d                                        ; $4DA2: $14
    ld   [hl+], a                                 ; $4DA3: $22
    ld   a, [de]                                  ; $4DA4: $1A
    inc  d                                        ; $4DA5: $14
    ld   [hl+], a                                 ; $4DA6: $22
    ld   a, [de]                                  ; $4DA7: $1A
    inc  d                                        ; $4DA8: $14
    ld   [hl+], a                                 ; $4DA9: $22
    xor  a                                        ; $4DAA: $AF
    ld   [hl], a                                  ; $4DAB: $77
    ld   l, $13                                   ; $4DAC: $2E $13
    ld   [hl], a                                  ; $4DAE: $77
    pop  de                                       ; $4DAF: $D1
    ret                                           ; $4DB0: $C9


Jump_001_4DB1:
    ld   a, [$C367]                               ; $4DB1: $FA $67 $C3
    ld   c, a                                     ; $4DB4: $4F
    ld   a, [$C362]                               ; $4DB5: $FA $62 $C3
    ld   b, a                                     ; $4DB8: $47
    sub  c                                        ; $4DB9: $91
    ret  z                                        ; $4DBA: $C8

    jr   c, jr_001_4DC2                           ; $4DBB: $38 $05

    rlca                                          ; $4DBD: $07
    jr   c, jr_001_4DC7                           ; $4DBE: $38 $07

    jr   jr_001_4DD6                              ; $4DC0: $18 $14

jr_001_4DC2:
    ld   a, c                                     ; $4DC2: $79
    sub  b                                        ; $4DC3: $90
    rlca                                          ; $4DC4: $07
    jr   c, jr_001_4DD6                           ; $4DC5: $38 $0F

jr_001_4DC7:
    ld   a, [$C363]                               ; $4DC7: $FA $63 $C3
    ld   c, a                                     ; $4DCA: $4F
    ld   a, [$C362]                               ; $4DCB: $FA $62 $C3
    sub  $18                                      ; $4DCE: $D6 $18
    ld   b, a                                     ; $4DD0: $47
    jr   nc, jr_001_4DE3                          ; $4DD1: $30 $10

    dec  c                                        ; $4DD3: $0D
    jr   jr_001_4DE3                              ; $4DD4: $18 $0D

jr_001_4DD6:
    ld   a, [$C363]                               ; $4DD6: $FA $63 $C3
    ld   c, a                                     ; $4DD9: $4F
    ld   a, [$C362]                               ; $4DDA: $FA $62 $C3
    add  $B0                                      ; $4DDD: $C6 $B0
    ld   b, a                                     ; $4DDF: $47
    jr   nc, jr_001_4DE3                          ; $4DE0: $30 $01

    inc  c                                        ; $4DE2: $0C

jr_001_4DE3:
    xor  a                                        ; $4DE3: $AF
    ld   [$C7C4], a                               ; $4DE4: $EA $C4 $C7
    ld   de, $CA20                                ; $4DE7: $11 $20 $CA

jr_001_4DEA:
    push de                                       ; $4DEA: $D5
    ld   a, [de]                                  ; $4DEB: $1A
    cp   $FF                                      ; $4DEC: $FE $FF
    jr   z, jr_001_4E1E                           ; $4DEE: $28 $2E

    bit  0, a                                     ; $4DF0: $CB $47
    jr   nz, jr_001_4E1A                          ; $4DF2: $20 $26

    ld   d, $CC                                   ; $4DF4: $16 $CC
    ld   a, [de]                                  ; $4DF6: $1A
    sub  b                                        ; $4DF7: $90
    jr   z, jr_001_4E03                           ; $4DF8: $28 $09

    dec  a                                        ; $4DFA: $3D
    jr   z, jr_001_4E03                           ; $4DFB: $28 $06

    dec  a                                        ; $4DFD: $3D
    jr   z, jr_001_4E03                           ; $4DFE: $28 $03

    dec  a                                        ; $4E00: $3D
    jr   nz, jr_001_4E1A                          ; $4E01: $20 $17

jr_001_4E03:
    inc  d                                        ; $4E03: $14
    ld   a, [de]                                  ; $4E04: $1A
    sub  c                                        ; $4E05: $91
    jr   nz, jr_001_4E1A                          ; $4E06: $20 $12

    push bc                                       ; $4E08: $C5
    call FindAvailableWorldActorPage              ; $4E09: $CD $5D $4D
    pop  bc                                       ; $4E0C: $C1
    cp   $FF                                      ; $4E0D: $FE $FF
    jr   z, jr_001_4E1E                           ; $4E0F: $28 $0D

    ld   [$C7C4], a                               ; $4E11: $EA $C4 $C7
    pop  de                                       ; $4E14: $D1
    call SpawnPlacementActorRecord                ; $4E15: $CD $74 $4D
    jr   jr_001_4E1B                              ; $4E18: $18 $01

jr_001_4E1A:
    pop  de                                       ; $4E1A: $D1

jr_001_4E1B:
    inc  e                                        ; $4E1B: $1C
    jr   jr_001_4DEA                              ; $4E1C: $18 $CC

jr_001_4E1E:
    pop  de                                       ; $4E1E: $D1
    ret                                           ; $4E1F: $C9


Call_001_4E20:
    ld   a, [$C3A5]                               ; $4E20: $FA $A5 $C3
    ld   c, a                                     ; $4E23: $4F
    ld   a, [$C3A4]                               ; $4E24: $FA $A4 $C3
    sub  c                                        ; $4E27: $91
    jp   c, Jump_001_4E8C                         ; $4E28: $DA $8C $4E

    ld   a, [$C364]                               ; $4E2B: $FA $64 $C3
    ld   b, a                                     ; $4E2E: $47
    ld   a, [$C365]                               ; $4E2F: $FA $65 $C3
    ld   c, a                                     ; $4E32: $4F
    ld   a, [$DF02]                               ; $4E33: $FA $02 $DF
    cp   $05                                      ; $4E36: $FE $05
    jr   nz, jr_001_4E3E                          ; $4E38: $20 $04

    ld   a, [$C7CC]                               ; $4E3A: $FA $CC $C7
    ld   c, a                                     ; $4E3D: $4F

jr_001_4E3E:
    push bc                                       ; $4E3E: $C5
    call Call_001_4E4C                            ; $4E3F: $CD $4C $4E
    pop  bc                                       ; $4E42: $C1
    ld   a, b                                     ; $4E43: $78
    sub  $20                                      ; $4E44: $D6 $20
    ld   b, a                                     ; $4E46: $47
    jr   nc, jr_001_4E53                          ; $4E47: $30 $0A

    dec  c                                        ; $4E49: $0D
    jr   jr_001_4E53                              ; $4E4A: $18 $07

Call_001_4E4C:
    ld   a, b                                     ; $4E4C: $78
    add  $C0                                      ; $4E4D: $C6 $C0
    ld   b, a                                     ; $4E4F: $47
    jr   nc, jr_001_4E53                          ; $4E50: $30 $01

    inc  c                                        ; $4E52: $0C

jr_001_4E53:
    ld   hl, $C700                                ; $4E53: $21 $00 $C7
    ld   d, $10                                   ; $4E56: $16 $10

jr_001_4E58:
    ld   l, $00                                   ; $4E58: $2E $00
    ld   a, [hl]                                  ; $4E5A: $7E
    bit  0, a                                     ; $4E5B: $CB $47
    jr   z, jr_001_4E87                           ; $4E5D: $28 $28

    bit  1, a                                     ; $4E5F: $CB $4F
    jr   nz, jr_001_4E87                          ; $4E61: $20 $24

    ld   l, $06                                   ; $4E63: $2E $06
    ld   a, [hl]                                  ; $4E65: $7E
    sub  b                                        ; $4E66: $90
    jr   z, jr_001_4E6C                           ; $4E67: $28 $03

    dec  a                                        ; $4E69: $3D
    jr   nz, jr_001_4E87                          ; $4E6A: $20 $1B

jr_001_4E6C:
    ld   l, $07                                   ; $4E6C: $2E $07
    ld   a, [hl]                                  ; $4E6E: $7E
    sub  c                                        ; $4E6F: $91
    jr   z, jr_001_4E75                           ; $4E70: $28 $03

    dec  a                                        ; $4E72: $3D
    jr   nz, jr_001_4E87                          ; $4E73: $20 $12

jr_001_4E75:
    ld   l, $00                                   ; $4E75: $2E $00
    xor  a                                        ; $4E77: $AF
    ld   [hl], a                                  ; $4E78: $77
    push de                                       ; $4E79: $D5
    ld   de, $CA20                                ; $4E7A: $11 $20 $CA
    ld   l, $08                                   ; $4E7D: $2E $08
    ld   a, [hl]                                  ; $4E7F: $7E
    add  e                                        ; $4E80: $83
    ld   e, a                                     ; $4E81: $5F
    ld   a, [de]                                  ; $4E82: $1A
    res  0, a                                     ; $4E83: $CB $87
    ld   [de], a                                  ; $4E85: $12
    pop  de                                       ; $4E86: $D1

jr_001_4E87:
    inc  h                                        ; $4E87: $24
    dec  d                                        ; $4E88: $15
    jr   nz, jr_001_4E58                          ; $4E89: $20 $CD

    ret                                           ; $4E8B: $C9


Jump_001_4E8C:
    ld   a, [$C362]                               ; $4E8C: $FA $62 $C3
    ld   b, a                                     ; $4E8F: $47
    ld   a, [$C363]                               ; $4E90: $FA $63 $C3
    ld   c, a                                     ; $4E93: $4F
    push bc                                       ; $4E94: $C5
    call Call_001_4EA2                            ; $4E95: $CD $A2 $4E
    pop  bc                                       ; $4E98: $C1
    ld   a, b                                     ; $4E99: $78
    sub  $28                                      ; $4E9A: $D6 $28
    ld   b, a                                     ; $4E9C: $47
    jr   nc, jr_001_4EA9                          ; $4E9D: $30 $0A

    dec  c                                        ; $4E9F: $0D
    jr   jr_001_4EA9                              ; $4EA0: $18 $07

Call_001_4EA2:
    ld   a, b                                     ; $4EA2: $78
    add  $C0                                      ; $4EA3: $C6 $C0
    ld   b, a                                     ; $4EA5: $47
    jr   nc, jr_001_4EA9                          ; $4EA6: $30 $01

    inc  c                                        ; $4EA8: $0C

jr_001_4EA9:
    ld   hl, $C700                                ; $4EA9: $21 $00 $C7
    ld   d, $10                                   ; $4EAC: $16 $10

jr_001_4EAE:
    ld   l, $00                                   ; $4EAE: $2E $00
    ld   a, [hl]                                  ; $4EB0: $7E
    bit  0, a                                     ; $4EB1: $CB $47
    jr   z, jr_001_4EE3                           ; $4EB3: $28 $2E

    bit  1, a                                     ; $4EB5: $CB $4F
    jr   nz, jr_001_4EE3                          ; $4EB7: $20 $2A

    ld   l, $03                                   ; $4EB9: $2E $03
    ld   a, [hl]                                  ; $4EBB: $7E
    sub  b                                        ; $4EBC: $90
    jr   z, jr_001_4EC8                           ; $4EBD: $28 $09

    dec  a                                        ; $4EBF: $3D
    jr   z, jr_001_4EC8                           ; $4EC0: $28 $06

    dec  a                                        ; $4EC2: $3D
    jr   z, jr_001_4EC8                           ; $4EC3: $28 $03

    dec  a                                        ; $4EC5: $3D
    jr   nz, jr_001_4EE3                          ; $4EC6: $20 $1B

jr_001_4EC8:
    ld   l, $04                                   ; $4EC8: $2E $04
    ld   a, [hl]                                  ; $4ECA: $7E
    sub  c                                        ; $4ECB: $91
    jr   z, jr_001_4ED1                           ; $4ECC: $28 $03

    dec  a                                        ; $4ECE: $3D
    jr   nz, jr_001_4EE3                          ; $4ECF: $20 $12

jr_001_4ED1:
    ld   l, $00                                   ; $4ED1: $2E $00
    xor  a                                        ; $4ED3: $AF
    ld   [hl], a                                  ; $4ED4: $77
    push de                                       ; $4ED5: $D5
    ld   de, $CA20                                ; $4ED6: $11 $20 $CA
    ld   l, $08                                   ; $4ED9: $2E $08
    ld   a, [hl]                                  ; $4EDB: $7E
    add  e                                        ; $4EDC: $83
    ld   e, a                                     ; $4EDD: $5F
    ld   a, [de]                                  ; $4EDE: $1A
    res  0, a                                     ; $4EDF: $CB $87
    ld   [de], a                                  ; $4EE1: $12
    pop  de                                       ; $4EE2: $D1

jr_001_4EE3:
    inc  h                                        ; $4EE3: $24
    dec  d                                        ; $4EE4: $15
    jr   nz, jr_001_4EAE                          ; $4EE5: $20 $C7

    ret                                           ; $4EE7: $C9


    ld   de, $CA20                                ; $4EE8: $11 $20 $CA
    ld   h, $C7                                   ; $4EEB: $26 $C7

jr_001_4EED:
    ld   a, [de]                                  ; $4EED: $1A
    cp   $FF                                      ; $4EEE: $FE $FF
    ret  z                                        ; $4EF0: $C8

    ld   a, [$DF01]                               ; $4EF1: $FA $01 $DF
    bit  1, a                                     ; $4EF4: $CB $4F
    jr   nz, jr_001_4F1A                          ; $4EF6: $20 $22

    ld   d, $D2                                   ; $4EF8: $16 $D2
    ld   a, [de]                                  ; $4EFA: $1A
    ld   d, $CA                                   ; $4EFB: $16 $CA
    ld   b, $DA                                   ; $4EFD: $06 $DA
    ld   c, a                                     ; $4EFF: $4F
    ld   a, [bc]                                  ; $4F00: $0A
    bit  0, a                                     ; $4F01: $CB $47
    jr   nz, jr_001_4F20                          ; $4F03: $20 $1B

    ld   a, c                                     ; $4F05: $79
    and  a                                        ; $4F06: $A7
    jr   nz, jr_001_4F1A                          ; $4F07: $20 $11

    ld   d, $D3                                   ; $4F09: $16 $D3
    ld   a, [de]                                  ; $4F0B: $1A
    ld   d, $CA                                   ; $4F0C: $16 $CA
    push hl                                       ; $4F0E: $E5
    ld   hl, $DF1C                                ; $4F0F: $21 $1C $DF
    call AddAToHL                                 ; $4F12: $CD $71 $00
    ld   a, [hl]                                  ; $4F15: $7E
    pop  hl                                       ; $4F16: $E1
    and  a                                        ; $4F17: $A7
    jr   nz, jr_001_4F20                          ; $4F18: $20 $06

jr_001_4F1A:
    ld   l, $00                                   ; $4F1A: $2E $00
    call SpawnPlacementActorRecord                ; $4F1C: $CD $74 $4D
    inc  h                                        ; $4F1F: $24

jr_001_4F20:
    inc  e                                        ; $4F20: $1C
    jr   jr_001_4EED                              ; $4F21: $18 $CA

DispatchWorldEntityActions::
    xor  a                                        ; $4F23: $AF
    ld   [$C68D], a                               ; $4F24: $EA $8D $C6
    ld   a, [$C26A]                               ; $4F27: $FA $6A $C2
    and  $01                                      ; $4F2A: $E6 $01
    ld   [$C692], a                               ; $4F2C: $EA $92 $C6

jr_001_4F2F:
    ld   de, $C700                                ; $4F2F: $11 $00 $C7
    add  d                                        ; $4F32: $82
    ld   d, a                                     ; $4F33: $57
    ld   a, [de]                                  ; $4F34: $1A
    bit  0, a                                     ; $4F35: $CB $47
    jr   z, jr_001_4F55                           ; $4F37: $28 $1C

    bit  2, a                                     ; $4F39: $CB $57
    jr   nz, jr_001_4F55                          ; $4F3B: $20 $18

    ld   bc, $4F55                                ; $4F3D: $01 $55 $4F
    push bc                                       ; $4F40: $C5
    ld   e, $09                                   ; $4F41: $1E $09
    ld   a, [de]                                  ; $4F43: $1A
    ld   hl, WorldEntityActionHandlerLowTable     ; $4F44: $21 $BF $4F
    call AddAToHL                                 ; $4F47: $CD $71 $00
    ld   c, [hl]                                  ; $4F4A: $4E
    ld   a, [de]                                  ; $4F4B: $1A
    ld   hl, WorldEntityActionHandlerHighTable    ; $4F4C: $21 $0F $50
    call AddAToHL                                 ; $4F4F: $CD $71 $00
    ld   h, [hl]                                  ; $4F52: $66
    ld   l, c                                     ; $4F53: $69
    jp   hl                                       ; $4F54: $E9


jr_001_4F55:
    ld   a, [$C692]                               ; $4F55: $FA $92 $C6
    inc  a                                        ; $4F58: $3C
    inc  a                                        ; $4F59: $3C
    ld   [$C692], a                               ; $4F5A: $EA $92 $C6
    cp   $13                                      ; $4F5D: $FE $13
    jr   c, jr_001_4F2F                           ; $4F5F: $38 $CE

    ld   a, [$C27C]                               ; $4F61: $FA $7C $C2
    and  a                                        ; $4F64: $A7
    jr   z, jr_001_4FB7                           ; $4F65: $28 $50

    ld   a, [$C691]                               ; $4F67: $FA $91 $C6
    rrca                                          ; $4F6A: $0F
    jr   nc, jr_001_4F81                          ; $4F6B: $30 $14

    ld   hl, $C36A                                ; $4F6D: $21 $6A $C3
    set  6, [hl]                                  ; $4F70: $CB $F6
    rrca                                          ; $4F72: $0F
    jr   nc, jr_001_4F81                          ; $4F73: $30 $0C

    ld   a, [$C27B]                               ; $4F75: $FA $7B $C2
    or   $08                                      ; $4F78: $F6 $08
    ld   [$C27B], a                               ; $4F7A: $EA $7B $C2
    xor  a                                        ; $4F7D: $AF
    ld   [$C2A2], a                               ; $4F7E: $EA $A2 $C2

jr_001_4F81:
    ld   a, [$C68D]                               ; $4F81: $FA $8D $C6
    ld   b, a                                     ; $4F84: $47
    ld   a, [$C26A]                               ; $4F85: $FA $6A $C2
    bit  0, a                                     ; $4F88: $CB $47
    jr   nz, jr_001_4F97                          ; $4F8A: $20 $0B

    ld   a, b                                     ; $4F8C: $78
    ld   [$C68E], a                               ; $4F8D: $EA $8E $C6
    ld   a, [$C68F]                               ; $4F90: $FA $8F $C6
    or   b                                        ; $4F93: $B0
    ret  z                                        ; $4F94: $C8

    jr   jr_001_4FA0                              ; $4F95: $18 $09

jr_001_4F97:
    ld   a, b                                     ; $4F97: $78
    ld   [$C68F], a                               ; $4F98: $EA $8F $C6
    ld   a, [$C68E]                               ; $4F9B: $FA $8E $C6
    or   b                                        ; $4F9E: $B0
    ret  z                                        ; $4F9F: $C8

jr_001_4FA0:
    ld   a, [$C27B]                               ; $4FA0: $FA $7B $C2
    and  $04                                      ; $4FA3: $E6 $04
    ld   [$C27B], a                               ; $4FA5: $EA $7B $C2
    ld   a, [$C36A]                               ; $4FA8: $FA $6A $C3
    or   $01                                      ; $4FAB: $F6 $01
    ld   [$C36A], a                               ; $4FAD: $EA $6A $C3
    ld   hl, $DF11                                ; $4FB0: $21 $11 $DF
    ld   a, [hl+]                                 ; $4FB3: $2A
    dec  a                                        ; $4FB4: $3D
    ld   [hl], a                                  ; $4FB5: $77
    ret                                           ; $4FB6: $C9


jr_001_4FB7:
    ld   hl, $C68D                                ; $4FB7: $21 $8D $C6
    xor  a                                        ; $4FBA: $AF
    ld   [hl+], a                                 ; $4FBB: $22
    ld   [hl+], a                                 ; $4FBC: $22
    ld   [hl], a                                  ; $4FBD: $77
    ret                                           ; $4FBE: $C9


WorldEntityActionHandlerLowTable::
    ld   e, a                                     ; $4FBF: $5F
    ld   a, b                                     ; $4FC0: $78
    dec  a                                        ; $4FC1: $3D
    dec  h                                        ; $4FC2: $25
    add  h                                        ; $4FC3: $84
    sbc  b                                        ; $4FC4: $98
    ld   a, [de]                                  ; $4FC5: $1A
    call z, $A942                                 ; $4FC6: $CC $42 $A9
    xor  c                                        ; $4FC9: $A9
    ld   c, [hl]                                  ; $4FCA: $4E
    ldh  a, [c]                                   ; $4FCB: $F2
    ld   [hl], l                                  ; $4FCC: $75
    cp   [hl]                                     ; $4FCD: $BE
    db   $E3                                      ; $4FCE: $E3
    inc  l                                        ; $4FCF: $2C
    ld   a, [bc]                                  ; $4FD0: $0A
    and  [hl]                                     ; $4FD1: $A6
    rst  RST_20                                   ; $4FD2: $E7
    di                                            ; $4FD3: $F3
    push bc                                       ; $4FD4: $C5
    db   $E4                                      ; $4FD5: $E4
    inc  bc                                       ; $4FD6: $03
    ld   e, d                                     ; $4FD7: $5A
    ld   e, d                                     ; $4FD8: $5A
    ld   e, d                                     ; $4FD9: $5A
    ld   e, d                                     ; $4FDA: $5A
    ld   e, d                                     ; $4FDB: $5A
    and  l                                        ; $4FDC: $A5
    cp   c                                        ; $4FDD: $B9
    push de                                       ; $4FDE: $D5
    ld   e, d                                     ; $4FDF: $5A
    ld   e, d                                     ; $4FE0: $5A
    xor  l                                        ; $4FE1: $AD
    rlca                                          ; $4FE2: $07
    sbc  a                                        ; $4FE3: $9F
    or   h                                        ; $4FE4: $B4
    db   $E4                                      ; $4FE5: $E4
    db   $E4                                      ; $4FE6: $E4
    ld   h, e                                     ; $4FE7: $63
    dec  sp                                       ; $4FE8: $3B
    ld   h, [hl]                                  ; $4FE9: $66
    ret  c                                        ; $4FEA: $D8

    sbc  c                                        ; $4FEB: $99
    ret  nz                                       ; $4FEC: $C0

    ld   d, b                                     ; $4FED: $50
    adc  c                                        ; $4FEE: $89
    rla                                           ; $4FEF: $17
    ld   sp, $2B9F                                ; $4FF0: $31 $9F $2B
    add  l                                        ; $4FF3: $85
    push hl                                       ; $4FF4: $E5
    db   $EC                                      ; $4FF5: $EC
    ld   a, $6E                                   ; $4FF6: $3E $6E
    jp   nc, $9754                                ; $4FF8: $D2 $54 $97

    db   $EC                                      ; $4FFB: $EC
    and  l                                        ; $4FFC: $A5
    ld   c, [hl]                                  ; $4FFD: $4E
    ld   h, a                                     ; $4FFE: $67
    and  a                                        ; $4FFF: $A7
    rst  WriteBgMapTilePair                       ; $5000: $D7
    ld   d, $9B                                   ; $5001: $16 $9B
    ld   e, a                                     ; $5003: $5F
    ld   l, a                                     ; $5004: $6F
    ld   d, [hl]                                  ; $5005: $56
    add  e                                        ; $5006: $83
    cp   a                                        ; $5007: $BF
    jp   nz, $D923                                ; $5008: $C2 $23 $D9

    cp   a                                        ; $500B: $BF
    ccf                                           ; $500C: $3F
    ccf                                           ; $500D: $3F
    ccf                                           ; $500E: $3F

WorldEntityActionHandlerHighTable::
    ld   d, b                                     ; $500F: $50
    ld   d, b                                     ; $5010: $50
    ld   d, c                                     ; $5011: $51
    ld   d, d                                     ; $5012: $52
    ld   d, d                                     ; $5013: $52
    ld   d, d                                     ; $5014: $52
    ld   d, e                                     ; $5015: $53
    ld   e, c                                     ; $5016: $59
    ld   d, e                                     ; $5017: $53
    ld   d, e                                     ; $5018: $53
    ld   d, e                                     ; $5019: $53
    ld   d, h                                     ; $501A: $54
    ld   d, e                                     ; $501B: $53
    ld   d, h                                     ; $501C: $54
    ld   d, h                                     ; $501D: $54
    ld   d, h                                     ; $501E: $54
    ld   d, l                                     ; $501F: $55
    ld   d, l                                     ; $5020: $55
    ld   d, l                                     ; $5021: $55
    ld   d, [hl]                                  ; $5022: $56
    ld   d, [hl]                                  ; $5023: $56
    ld   d, l                                     ; $5024: $55
    ld   d, l                                     ; $5025: $55
    ld   d, [hl]                                  ; $5026: $56
    ld   d, a                                     ; $5027: $57
    ld   d, a                                     ; $5028: $57
    ld   d, a                                     ; $5029: $57
    ld   d, a                                     ; $502A: $57
    ld   d, a                                     ; $502B: $57
    ld   d, [hl]                                  ; $502C: $56
    ld   d, [hl]                                  ; $502D: $56
    ld   d, [hl]                                  ; $502E: $56
    ld   d, a                                     ; $502F: $57
    ld   d, a                                     ; $5030: $57
    ld   d, a                                     ; $5031: $57
    ld   e, b                                     ; $5032: $58
    ld   e, b                                     ; $5033: $58
    ld   e, c                                     ; $5034: $59
    ld   e, c                                     ; $5035: $59
    ld   e, c                                     ; $5036: $59
    ld   e, d                                     ; $5037: $5A
    ld   e, e                                     ; $5038: $5B
    ld   d, h                                     ; $5039: $54
    ld   e, c                                     ; $503A: $59
    ld   e, e                                     ; $503B: $5B
    ld   e, c                                     ; $503C: $59
    ld   e, l                                     ; $503D: $5D
    ld   e, h                                     ; $503E: $5C
    ld   h, b                                     ; $503F: $60
    ld   h, c                                     ; $5040: $61
    ld   h, c                                     ; $5041: $61
    ld   h, d                                     ; $5042: $62
    ld   h, d                                     ; $5043: $62
    ld   h, d                                     ; $5044: $62
    ld   h, e                                     ; $5045: $63
    ld   h, h                                     ; $5046: $64
    ld   h, h                                     ; $5047: $64
    ld   h, h                                     ; $5048: $64
    ld   h, l                                     ; $5049: $65
    ld   h, l                                     ; $504A: $65
    ld   h, l                                     ; $504B: $65
    ld   h, [hl]                                  ; $504C: $66
    ld   h, a                                     ; $504D: $67
    ld   h, a                                     ; $504E: $67
    ld   h, a                                     ; $504F: $67
    ld   l, b                                     ; $5050: $68
    ld   l, c                                     ; $5051: $69
    ld   l, c                                     ; $5052: $69
    ld   l, d                                     ; $5053: $6A
    ld   l, d                                     ; $5054: $6A
    ld   l, e                                     ; $5055: $6B
    ld   l, e                                     ; $5056: $6B
    ld   l, h                                     ; $5057: $6C
    ld   l, e                                     ; $5058: $6B
    ld   e, [hl]                                  ; $5059: $5E
    ld   e, [hl]                                  ; $505A: $5E
    ld   l, h                                     ; $505B: $6C
    ld   l, h                                     ; $505C: $6C
    ld   l, h                                     ; $505D: $6C
    ld   l, h                                     ; $505E: $6C
    ld   e, $0C                                   ; $505F: $1E $0C
    ld   a, [de]                                  ; $5061: $1A
    and  a                                        ; $5062: $A7
    jp   nz, AdvanceActorFixedPointMovement       ; $5063: $C2 $93 $4A

    call $4A6A                                    ; $5066: $CD $6A $4A
    ld   e, $0E                                   ; $5069: $1E $0E
    ld   a, $0D                                   ; $506B: $3E $0D
    ld   [de], a                                  ; $506D: $12
    inc  e                                        ; $506E: $1C
    xor  a                                        ; $506F: $AF
    ld   [de], a                                  ; $5070: $12
    inc  e                                        ; $5071: $1C
    ld   [de], a                                  ; $5072: $12
    ld   e, $0C                                   ; $5073: $1E $0C
    inc  a                                        ; $5075: $3C
    ld   [de], a                                  ; $5076: $12
    ret                                           ; $5077: $C9


WorldEntityAction01Handler::
    ld   e, $0C                                   ; $5078: $1E $0C
    ld   a, [de]                                  ; $507A: $1A
    dec  a                                        ; $507B: $3D
    jr   z, jr_001_5096                           ; $507C: $28 $18

    dec  a                                        ; $507E: $3D
    jr   z, jr_001_50DB                           ; $507F: $28 $5A

    call $4A6A                                    ; $5081: $CD $6A $4A
    ld   e, $0E                                   ; $5084: $1E $0E
    ld   a, $20                                   ; $5086: $3E $20
    ld   [de], a                                  ; $5088: $12
    inc  e                                        ; $5089: $1C
    xor  a                                        ; $508A: $AF
    ld   [de], a                                  ; $508B: $12
    inc  e                                        ; $508C: $1C
    ld   [de], a                                  ; $508D: $12
    ld   e, $0D                                   ; $508E: $1E $0D
    ld   [de], a                                  ; $5090: $12
    ld   e, $0C                                   ; $5091: $1E $0C
    inc  a                                        ; $5093: $3C
    ld   [de], a                                  ; $5094: $12
    ret                                           ; $5095: $C9


jr_001_5096:
    ld   e, $0D                                   ; $5096: $1E $0D
    ld   a, [de]                                  ; $5098: $1A
    bit  7, a                                     ; $5099: $CB $7F
    jr   nz, jr_001_50C1                          ; $509B: $20 $24

    ld   b, $04                                   ; $509D: $06 $04
    ld   c, $40                                   ; $509F: $0E $40
    call Call_000_0BBF                            ; $50A1: $CD $BF $0B
    ld   a, [$DF0B]                               ; $50A4: $FA $0B $DF
    and  $03                                      ; $50A7: $E6 $03
    cp   $03                                      ; $50A9: $FE $03
    jr   nz, jr_001_50B1                          ; $50AB: $20 $04

    ld   b, $06                                   ; $50AD: $06 $06
    ld   c, $60                                   ; $50AF: $0E $60

jr_001_50B1:
    ld   a, b                                     ; $50B1: $78
    or   $80                                      ; $50B2: $F6 $80
    ld   [de], a                                  ; $50B4: $12
    ld   e, $18                                   ; $50B5: $1E $18
    xor  a                                        ; $50B7: $AF
    ld   [de], a                                  ; $50B8: $12
    inc  e                                        ; $50B9: $1C
    ld   a, b                                     ; $50BA: $78
    ld   [de], a                                  ; $50BB: $12
    inc  e                                        ; $50BC: $1C
    ld   a, c                                     ; $50BD: $79
    ld   [de], a                                  ; $50BE: $12
    jr   jr_001_50CA                              ; $50BF: $18 $09

jr_001_50C1:
    and  $07                                      ; $50C1: $E6 $07
    ld   [de], a                                  ; $50C3: $12
    ld   e, $19                                   ; $50C4: $1E $19
    ld   [de], a                                  ; $50C6: $12
    dec  e                                        ; $50C7: $1D
    xor  a                                        ; $50C8: $AF
    ld   [de], a                                  ; $50C9: $12

jr_001_50CA:
    ld   e, $00                                   ; $50CA: $1E $00
    ld   a, [de]                                  ; $50CC: $1A
    xor  $20                                      ; $50CD: $EE $20
    ld   [de], a                                  ; $50CF: $12
    inc  e                                        ; $50D0: $1C
    ld   a, [de]                                  ; $50D1: $1A
    xor  $08                                      ; $50D2: $EE $08
    ld   [de], a                                  ; $50D4: $12
    ld   e, $0C                                   ; $50D5: $1E $0C
    ld   a, $02                                   ; $50D7: $3E $02
    ld   [de], a                                  ; $50D9: $12
    ret                                           ; $50DA: $C9


jr_001_50DB:
    call Call_001_7D61                            ; $50DB: $CD $61 $7D
    ld   e, $0D                                   ; $50DE: $1E $0D
    ld   a, [de]                                  ; $50E0: $1A
    bit  4, a                                     ; $50E1: $CB $67
    jr   nz, jr_001_50F1                          ; $50E3: $20 $0C

    call Call_001_7AED                            ; $50E5: $CD $ED $7A
    jr   nc, jr_001_50F4                          ; $50E8: $30 $0A

    ld   e, $0D                                   ; $50EA: $1E $0D
    ld   a, [de]                                  ; $50EC: $1A
    set  4, a                                     ; $50ED: $CB $E7
    ld   [de], a                                  ; $50EF: $12
    ret                                           ; $50F0: $C9


jr_001_50F1:
    call Call_001_7B18                            ; $50F1: $CD $18 $7B

jr_001_50F4:
    ld   h, $F8                                   ; $50F4: $26 $F8
    ld   l, $06                                   ; $50F6: $2E $06
    call Call_001_6DCA                            ; $50F8: $CD $CA $6D
    ld   a, [$C662]                               ; $50FB: $FA $62 $C6
    ld   b, a                                     ; $50FE: $47
    cp   $08                                      ; $50FF: $FE $08
    ld   e, $00                                   ; $5101: $1E $00
    ld   a, [de]                                  ; $5103: $1A
    jr   z, jr_001_510B                           ; $5104: $28 $05

    res  7, a                                     ; $5106: $CB $BF
    ld   [de], a                                  ; $5108: $12
    jr   jr_001_510E                              ; $5109: $18 $03

jr_001_510B:
    set  7, a                                     ; $510B: $CB $FF
    ld   [de], a                                  ; $510D: $12

jr_001_510E:
    ld   e, $0D                                   ; $510E: $1E $0D
    ld   a, [de]                                  ; $5110: $1A
    bit  4, a                                     ; $5111: $CB $67
    jr   z, jr_001_512A                           ; $5113: $28 $15

    ld   a, b                                     ; $5115: $78
    cp   $01                                      ; $5116: $FE $01
    jr   nz, jr_001_512A                          ; $5118: $20 $10

    ld   a, [de]                                  ; $511A: $1A
    res  4, a                                     ; $511B: $CB $A7
    ld   [de], a                                  ; $511D: $12
    ld   e, $03                                   ; $511E: $1E $03
    ld   a, [de]                                  ; $5120: $1A
    and  $F8                                      ; $5121: $E6 $F8
    ld   [de], a                                  ; $5123: $12
    ld   e, $0C                                   ; $5124: $1E $0C
    ld   a, $01                                   ; $5126: $3E $01
    ld   [de], a                                  ; $5128: $12
    ret                                           ; $5129: $C9


jr_001_512A:
    call AdvanceActorFixedPointMovement           ; $512A: $CD $93 $4A
    ld   hl, $100C                                ; $512D: $21 $0C $10
    call SharedPlayerContactComparator            ; $5130: $CD $4B $7B
    ld   bc, $0D0D                                ; $5133: $01 $0D $0D
    call ComparePlayerProjectileWithActor         ; $5136: $CD $88 $7B
    ret  nc                                       ; $5139: $D0

    jp   Jump_001_7BC7                            ; $513A: $C3 $C7 $7B


WorldEntityAction02Handler::
    ld   e, $0C                                   ; $513D: $1E $0C
    ld   a, [de]                                  ; $513F: $1A
    call Call_000_0B7D                            ; $5140: $CD $7D $0B
    ld   c, c                                     ; $5143: $49
    ld   d, c                                     ; $5144: $51
    ld   e, b                                     ; $5145: $58
    ld   d, c                                     ; $5146: $51
    or   l                                        ; $5147: $B5
    ld   d, c                                     ; $5148: $51
    ld   e, $0E                                   ; $5149: $1E $0E
    ld   a, $13                                   ; $514B: $3E $13
    ld   [de], a                                  ; $514D: $12
    inc  e                                        ; $514E: $1C
    xor  a                                        ; $514F: $AF
    ld   [de], a                                  ; $5150: $12
    inc  e                                        ; $5151: $1C
    ld   [de], a                                  ; $5152: $12
    ld   e, $0C                                   ; $5153: $1E $0C
    inc  a                                        ; $5155: $3C
    ld   [de], a                                  ; $5156: $12
    ret                                           ; $5157: $C9


    ld   a, [$C27B]                               ; $5158: $FA $7B $C2
    bit  1, a                                     ; $515B: $CB $4F
    jr   z, jr_001_5164                           ; $515D: $28 $05

    ld   a, [$C27C]                               ; $515F: $FA $7C $C2
    and  a                                        ; $5162: $A7
    ret  z                                        ; $5163: $C8

jr_001_5164:
    ld   b, $0B                                   ; $5164: $06 $0B
    call Call_000_089A                            ; $5166: $CD $9A $08
    ld   b, $00                                   ; $5169: $06 $00
    ld   hl, $0410                                ; $516B: $21 $10 $04
    call Call_001_7B5A                            ; $516E: $CD $5A $7B
    push af                                       ; $5171: $F5
    ld   b, $0B                                   ; $5172: $06 $0B
    call Call_000_08B6                            ; $5174: $CD $B6 $08
    pop  af                                       ; $5177: $F1
    ret  nc                                       ; $5178: $D0

    ld   a, [$C688]                               ; $5179: $FA $88 $C6
    and  a                                        ; $517C: $A7
    ret  nz                                       ; $517D: $C0

    ld   b, $00                                   ; $517E: $06 $00
    ld   e, $03                                   ; $5180: $1E $03
    ld   a, [de]                                  ; $5182: $1A
    sub  $10                                      ; $5183: $D6 $10
    and  $F0                                      ; $5185: $E6 $F0
    sla  a                                        ; $5187: $CB $27
    rl   b                                        ; $5189: $CB $10
    sla  a                                        ; $518B: $CB $27
    rl   b                                        ; $518D: $CB $10
    ld   c, a                                     ; $518F: $4F
    ld   e, $06                                   ; $5190: $1E $06
    ld   a, [de]                                  ; $5192: $1A
    sub  $10                                      ; $5193: $D6 $10
    and  $F0                                      ; $5195: $E6 $F0
    swap a                                        ; $5197: $CB $37
    rlca                                          ; $5199: $07
    add  c                                        ; $519A: $81
    ld   [$C687], a                               ; $519B: $EA $87 $C6
    ld   a, b                                     ; $519E: $78
    add  $98                                      ; $519F: $C6 $98
    ld   [$C688], a                               ; $51A1: $EA $88 $C6
    xor  a                                        ; $51A4: $AF
    ld   [$C689], a                               ; $51A5: $EA $89 $C6
    ld   [hl], a                                  ; $51A8: $77
    ld   e, $00                                   ; $51A9: $1E $00
    ld   a, [de]                                  ; $51AB: $1A
    res  4, a                                     ; $51AC: $CB $A7
    ld   [de], a                                  ; $51AE: $12
    ld   e, $0C                                   ; $51AF: $1E $0C
    ld   a, $02                                   ; $51B1: $3E $02
    ld   [de], a                                  ; $51B3: $12
    ret                                           ; $51B4: $C9


    ld   a, [$C200]                               ; $51B5: $FA $00 $C2
    rrca                                          ; $51B8: $0F
    jr   nc, jr_001_5204                          ; $51B9: $30 $49

    ld   e, $1A                                   ; $51BB: $1E $1A
    ld   a, [de]                                  ; $51BD: $1A
    and  a                                        ; $51BE: $A7
    jr   nz, jr_001_51C8                          ; $51BF: $20 $07

    ld   a, [$C27B]                               ; $51C1: $FA $7B $C2
    bit  1, a                                     ; $51C4: $CB $4F
    jr   z, jr_001_5204                           ; $51C6: $28 $3C

jr_001_51C8:
    ld   a, [$C27C]                               ; $51C8: $FA $7C $C2
    and  a                                        ; $51CB: $A7
    jr   z, jr_001_5204                           ; $51CC: $28 $36

    ld   b, $0B                                   ; $51CE: $06 $0B
    call Call_000_089A                            ; $51D0: $CD $9A $08
    ld   b, $00                                   ; $51D3: $06 $00
    ld   hl, $0610                                ; $51D5: $21 $10 $06
    call Call_001_7B5A                            ; $51D8: $CD $5A $7B
    push af                                       ; $51DB: $F5
    ld   b, $0B                                   ; $51DC: $06 $0B
    call Call_000_08B6                            ; $51DE: $CD $B6 $08
    pop  af                                       ; $51E1: $F1
    jr   nc, jr_001_5204                          ; $51E2: $30 $20

    ld   a, $01                                   ; $51E4: $3E $01
    ld   e, $1A                                   ; $51E6: $1E $1A
    ld   [de], a                                  ; $51E8: $12
    ld   [$C68D], a                               ; $51E9: $EA $8D $C6
    ld   a, [$C203]                               ; $51EC: $FA $03 $C2
    ld   b, a                                     ; $51EF: $47
    ld   e, $03                                   ; $51F0: $1E $03
    ld   a, [de]                                  ; $51F2: $1A
    sub  b                                        ; $51F3: $90
    sub  $0D                                      ; $51F4: $D6 $0D
    jr   c, jr_001_51FE                           ; $51F6: $38 $06

    ld   c, a                                     ; $51F8: $4F
    call Call_001_4769                            ; $51F9: $CD $69 $47
    jr   jr_001_5204                              ; $51FC: $18 $06

jr_001_51FE:
    cpl                                           ; $51FE: $2F
    inc  a                                        ; $51FF: $3C
    ld   c, a                                     ; $5200: $4F
    call Call_001_4711                            ; $5201: $CD $11 $47

jr_001_5204:
    ld   e, $0A                                   ; $5204: $1E $0A
    ld   a, [de]                                  ; $5206: $1A
    and  a                                        ; $5207: $A7
    jr   z, jr_001_520D                           ; $5208: $28 $03

    dec  a                                        ; $520A: $3D
    ld   [de], a                                  ; $520B: $12
    ret                                           ; $520C: $C9


jr_001_520D:
    ld   e, $00                                   ; $520D: $1E $00
    ld   a, [de]                                  ; $520F: $1A
    bit  3, a                                     ; $5210: $CB $5F
    jr   z, jr_001_5219                           ; $5212: $28 $05

    xor  a                                        ; $5214: $AF
    ld   [de], a                                  ; $5215: $12
    jp   ClearPlacementStatusBit                  ; $5216: $C3 $F2 $7B


jr_001_5219:
    ld   e, $03                                   ; $5219: $1E $03
    ld   a, [de]                                  ; $521B: $1A
    add  $03                                      ; $521C: $C6 $03
    ld   [de], a                                  ; $521E: $12
    ret  nc                                       ; $521F: $D0

    inc  e                                        ; $5220: $1C
    ld   a, [de]                                  ; $5221: $1A
    inc  a                                        ; $5222: $3C
    ld   [de], a                                  ; $5223: $12
    ret                                           ; $5224: $C9


    ld   e, $0C                                   ; $5225: $1E $0C
    ld   a, [de]                                  ; $5227: $1A
    dec  a                                        ; $5228: $3D
    jr   z, jr_001_523D                           ; $5229: $28 $12

    call $4A6A                                    ; $522B: $CD $6A $4A
    ld   e, $0E                                   ; $522E: $1E $0E
    ld   a, $22                                   ; $5230: $3E $22
    ld   [de], a                                  ; $5232: $12
    inc  e                                        ; $5233: $1C
    xor  a                                        ; $5234: $AF
    ld   [de], a                                  ; $5235: $12
    inc  e                                        ; $5236: $1C
    ld   [de], a                                  ; $5237: $12
    ld   e, $0C                                   ; $5238: $1E $0C
    inc  a                                        ; $523A: $3C
    ld   [de], a                                  ; $523B: $12
    ret                                           ; $523C: $C9


jr_001_523D:
    call Call_001_7D61                            ; $523D: $CD $61 $7D
    ld   e, $01                                   ; $5240: $1E $01
    ld   a, [de]                                  ; $5242: $1A
    rrca                                          ; $5243: $0F
    jr   c, jr_001_5272                           ; $5244: $38 $2C

    call AdvanceActorFixedPointMovement           ; $5246: $CD $93 $4A
    ld   hl, $0106                                ; $5249: $21 $06 $01
    call Call_001_6DCA                            ; $524C: $CD $CA $6D
    ld   e, $01                                   ; $524F: $1E $01
    ld   a, [de]                                  ; $5251: $1A
    bit  3, a                                     ; $5252: $CB $5F
    jr   z, jr_001_5263                           ; $5254: $28 $0D

    ld   a, [$C661]                               ; $5256: $FA $61 $C6
    cp   $01                                      ; $5259: $FE $01
    jr   z, jr_001_5272                           ; $525B: $28 $15

    cp   $04                                      ; $525D: $FE $04
    jr   z, jr_001_5272                           ; $525F: $28 $11

    jr   jr_001_526E                              ; $5261: $18 $0B

jr_001_5263:
    ld   a, [$C660]                               ; $5263: $FA $60 $C6
    cp   $01                                      ; $5266: $FE $01
    jr   z, jr_001_5272                           ; $5268: $28 $08

    cp   $04                                      ; $526A: $FE $04
    jr   z, jr_001_5272                           ; $526C: $28 $04

jr_001_526E:
    ld   a, [de]                                  ; $526E: $1A
    xor  $08                                      ; $526F: $EE $08
    ld   [de], a                                  ; $5271: $12

jr_001_5272:
    ld   bc, $0E0E                                ; $5272: $01 $0E $0E
    call ComparePlayerProjectileWithActor         ; $5275: $CD $88 $7B
    ld   bc, $7D76                                ; $5278: $01 $76 $7D
    call c, Call_001_7BFF                         ; $527B: $DC $FF $7B
    ld   hl, $120C                                ; $527E: $21 $0C $12
    jp   SharedPlayerContactComparator            ; $5281: $C3 $4B $7B


WorldEntityAction04Handler::
    ld   e, $0C                                   ; $5284: $1E $0C
    ld   a, [de]                                  ; $5286: $1A
    and  a                                        ; $5287: $A7
    ret  nz                                       ; $5288: $C0

    ld   e, $0E                                   ; $5289: $1E $0E
    ld   a, $24                                   ; $528B: $3E $24
    ld   [de], a                                  ; $528D: $12
    inc  e                                        ; $528E: $1C
    xor  a                                        ; $528F: $AF
    ld   [de], a                                  ; $5290: $12
    inc  e                                        ; $5291: $1C
    ld   [de], a                                  ; $5292: $12
    ld   e, $0C                                   ; $5293: $1E $0C
    inc  a                                        ; $5295: $3C
    ld   [de], a                                  ; $5296: $12
    ret                                           ; $5297: $C9


    ld   e, $0C                                   ; $5298: $1E $0C
    ld   a, [de]                                  ; $529A: $1A
    dec  a                                        ; $529B: $3D
    jr   z, jr_001_52B7                           ; $529C: $28 $19

    dec  a                                        ; $529E: $3D
    jr   z, jr_001_52F6                           ; $529F: $28 $55

    ld   e, $0E                                   ; $52A1: $1E $0E
    ld   a, $43                                   ; $52A3: $3E $43
    ld   [de], a                                  ; $52A5: $12
    xor  a                                        ; $52A6: $AF
    inc  e                                        ; $52A7: $1C
    ld   [de], a                                  ; $52A8: $12
    inc  e                                        ; $52A9: $1C
    ld   [de], a                                  ; $52AA: $12
    ld   e, $1A                                   ; $52AB: $1E $1A
    ld   [de], a                                  ; $52AD: $12
    inc  e                                        ; $52AE: $1C
    ld   [de], a                                  ; $52AF: $12
    ld   e, $0C                                   ; $52B0: $1E $0C
    inc  a                                        ; $52B2: $3C
    ld   [de], a                                  ; $52B3: $12
    jp   $4A6A                                    ; $52B4: $C3 $6A $4A


jr_001_52B7:
    call Call_001_7D61                            ; $52B7: $CD $61 $7D
    ld   e, $1A                                   ; $52BA: $1E $1A
    ld   a, [de]                                  ; $52BC: $1A
    cp   $20                                      ; $52BD: $FE $20
    jr   z, jr_001_52C9                           ; $52BF: $28 $08

    inc  a                                        ; $52C1: $3C
    ld   [de], a                                  ; $52C2: $12
    ld   hl, $1014                                ; $52C3: $21 $14 $10
    jp   SharedPlayerContactComparator            ; $52C6: $C3 $4B $7B


jr_001_52C9:
    inc  e                                        ; $52C9: $1C
    ld   a, [de]                                  ; $52CA: $1A
    inc  a                                        ; $52CB: $3C
    ld   [de], a                                  ; $52CC: $12
    cp   $10                                      ; $52CD: $FE $10
    jr   z, jr_001_52E8                           ; $52CF: $28 $17

    call AdvanceActorFixedPointMovement           ; $52D1: $CD $93 $4A
    ld   hl, $1014                                ; $52D4: $21 $14 $10
    call SharedPlayerContactComparator            ; $52D7: $CD $4B $7B
    ret  nc                                       ; $52DA: $D0

    ld   c, $01                                   ; $52DB: $0E $01
    ld   e, $01                                   ; $52DD: $1E $01
    ld   a, [de]                                  ; $52DF: $1A
    bit  3, a                                     ; $52E0: $CB $5F
    jp   z, Jump_001_4667                         ; $52E2: $CA $67 $46

    jp   Jump_001_4694                            ; $52E5: $C3 $94 $46


jr_001_52E8:
    xor  a                                        ; $52E8: $AF
    ld   [de], a                                  ; $52E9: $12
    ld   e, $01                                   ; $52EA: $1E $01
    ld   a, [de]                                  ; $52EC: $1A
    xor  $08                                      ; $52ED: $EE $08
    ld   [de], a                                  ; $52EF: $12
    ld   e, $0C                                   ; $52F0: $1E $0C
    ld   a, $02                                   ; $52F2: $3E $02
    ld   [de], a                                  ; $52F4: $12
    ret                                           ; $52F5: $C9


jr_001_52F6:
    call Call_001_7D61                            ; $52F6: $CD $61 $7D
    ld   e, $1B                                   ; $52F9: $1E $1B
    ld   a, [de]                                  ; $52FB: $1A
    inc  a                                        ; $52FC: $3C
    ld   [de], a                                  ; $52FD: $12
    cp   $10                                      ; $52FE: $FE $10
    jr   z, jr_001_530B                           ; $5300: $28 $09

    call AdvanceActorFixedPointMovement           ; $5302: $CD $93 $4A
    ld   hl, $1014                                ; $5305: $21 $14 $10
    jp   SharedPlayerContactComparator            ; $5308: $C3 $4B $7B


jr_001_530B:
    xor  a                                        ; $530B: $AF
    ld   [de], a                                  ; $530C: $12
    dec  e                                        ; $530D: $1D
    ld   [de], a                                  ; $530E: $12
    ld   e, $0C                                   ; $530F: $1E $0C
    inc  a                                        ; $5311: $3C
    ld   [de], a                                  ; $5312: $12
    ld   e, $01                                   ; $5313: $1E $01
    ld   a, [de]                                  ; $5315: $1A
    xor  $08                                      ; $5316: $EE $08
    ld   [de], a                                  ; $5318: $12
    ret                                           ; $5319: $C9


WorldEntityAction06Handler::
    ld   e, $0C                                   ; $531A: $1E $0C
    ld   a, [de]                                  ; $531C: $1A
    dec  a                                        ; $531D: $3D
    jr   z, jr_001_532F                           ; $531E: $28 $0F

    ld   e, $0E                                   ; $5320: $1E $0E
    ld   a, $22                                   ; $5322: $3E $22
    ld   [de], a                                  ; $5324: $12
    inc  e                                        ; $5325: $1C
    xor  a                                        ; $5326: $AF
    ld   [de], a                                  ; $5327: $12
    inc  e                                        ; $5328: $1C
    ld   [de], a                                  ; $5329: $12
    ld   e, $0C                                   ; $532A: $1E $0C
    inc  a                                        ; $532C: $3C
    ld   [de], a                                  ; $532D: $12
    ret                                           ; $532E: $C9


jr_001_532F:
    ld   a, [$C200]                               ; $532F: $FA $00 $C2
    rrca                                          ; $5332: $0F
    ret  nc                                       ; $5333: $D0

    ld   bc, $2020                                ; $5334: $01 $20 $20
    call Call_001_7C40                            ; $5337: $CD $40 $7C
    ret  nc                                       ; $533A: $D0

    ld   e, $0A                                   ; $533B: $1E $0A
    ld   a, [de]                                  ; $533D: $1A
    ld   b, a                                     ; $533E: $47
    jp   SetQueuedDataSelectionId                 ; $533F: $C3 $64 $1F


WorldEntityAction08Handler::
    ld   e, $0C                                   ; $5342: $1E $0C
    ld   a, [de]                                  ; $5344: $1A
    dec  a                                        ; $5345: $3D
    jr   z, jr_001_5357                           ; $5346: $28 $0F

    ld   e, $0A                                   ; $5348: $1E $0A
    ld   a, [de]                                  ; $534A: $1A
    ld   e, $0E                                   ; $534B: $1E $0E
    ld   [de], a                                  ; $534D: $12
    xor  a                                        ; $534E: $AF
    inc  e                                        ; $534F: $1C
    ld   [de], a                                  ; $5350: $12
    inc  e                                        ; $5351: $1C
    ld   [de], a                                  ; $5352: $12
    ld   e, $0C                                   ; $5353: $1E $0C
    inc  a                                        ; $5355: $3C
    ld   [de], a                                  ; $5356: $12

jr_001_5357:
    call Call_001_7D61                            ; $5357: $CD $61 $7D
    ld   bc, $100C                                ; $535A: $01 $0C $10
    call Call_001_7C40                            ; $535D: $CD $40 $7C
    ret  nc                                       ; $5360: $D0

    ld   e, $01                                   ; $5361: $1E $01
    ld   a, [de]                                  ; $5363: $1A
    rrca                                          ; $5364: $0F
    jr   nc, jr_001_5375                          ; $5365: $30 $0E

    ld   a, [$DF17]                               ; $5367: $FA $17 $DF
    inc  a                                        ; $536A: $3C
    cp   $0A                                      ; $536B: $FE $0A
    jr   c, jr_001_5370                           ; $536D: $38 $01

    dec  a                                        ; $536F: $3D

jr_001_5370:
    ld   [$DF17], a                               ; $5370: $EA $17 $DF
    jr   jr_001_53A1                              ; $5373: $18 $2C

jr_001_5375:
    rrca                                          ; $5375: $0F
    jr   nc, jr_001_538D                          ; $5376: $30 $15

    ld   a, [$C20A]                               ; $5378: $FA $0A $C2
    inc  a                                        ; $537B: $3C
    ld   b, a                                     ; $537C: $47
    ld   a, [$DF15]                               ; $537D: $FA $15 $DF
    sub  b                                        ; $5380: $90
    jr   nc, jr_001_5384                          ; $5381: $30 $01

    dec  b                                        ; $5383: $05

jr_001_5384:
    ld   a, b                                     ; $5384: $78
    ld   [$C20A], a                               ; $5385: $EA $0A $C2
    call Call_000_23B9                            ; $5388: $CD $B9 $23
    jr   jr_001_53A1                              ; $538B: $18 $14

jr_001_538D:
    rrca                                          ; $538D: $0F
    jr   nc, jr_001_5394                          ; $538E: $30 $04

    ld   a, $04                                   ; $5390: $3E $04
    jr   jr_001_5396                              ; $5392: $18 $02

jr_001_5394:
    ld   a, $02                                   ; $5394: $3E $02

jr_001_5396:
    ld   hl, $DF18                                ; $5396: $21 $18 $DF
    add  [hl]                                     ; $5399: $86
    cp   $64                                      ; $539A: $FE $64
    jr   c, jr_001_53A0                           ; $539C: $38 $02

    ld   a, $63                                   ; $539E: $3E $63

jr_001_53A0:
    ld   [hl], a                                  ; $53A0: $77

jr_001_53A1:
    xor  a                                        ; $53A1: $AF
    ld   e, $00                                   ; $53A2: $1E $00
    ld   [de], a                                  ; $53A4: $12
    ld   a, $2D                                   ; $53A5: $3E $2D
    rst  RST_28                                   ; $53A7: $EF
    ret                                           ; $53A8: $C9


WorldEntityAction09Handler::
    ld   e, $0C                                   ; $53A9: $1E $0C
    ld   a, [de]                                  ; $53AB: $1A
    dec  a                                        ; $53AC: $3D
    jr   z, jr_001_53D3                           ; $53AD: $28 $24

    call $4A6A                                    ; $53AF: $CD $6A $4A
    ld   b, $03                                   ; $53B2: $06 $03
    ld   e, $01                                   ; $53B4: $1E $01
    ld   a, [de]                                  ; $53B6: $1A
    dec  e                                        ; $53B7: $1D
    bit  3, a                                     ; $53B8: $CB $5F
    jr   nz, jr_001_53BE                          ; $53BA: $20 $02

    set  5, b                                     ; $53BC: $CB $E8

jr_001_53BE:
    ld   a, b                                     ; $53BE: $78
    ld   [de], a                                  ; $53BF: $12
    ld   e, $0E                                   ; $53C0: $1E $0E
    ld   a, $2D                                   ; $53C2: $3E $2D
    ld   [de], a                                  ; $53C4: $12
    inc  e                                        ; $53C5: $1C
    xor  a                                        ; $53C6: $AF
    ld   [de], a                                  ; $53C7: $12
    inc  e                                        ; $53C8: $1C
    ld   [de], a                                  ; $53C9: $12
    ld   e, $0A                                   ; $53CA: $1E $0A
    inc  a                                        ; $53CC: $3C
    ld   [de], a                                  ; $53CD: $12
    inc  e                                        ; $53CE: $1C
    ld   [de], a                                  ; $53CF: $12
    inc  e                                        ; $53D0: $1C
    ld   [de], a                                  ; $53D1: $12
    ret                                           ; $53D2: $C9


jr_001_53D3:
    ld   e, $00                                   ; $53D3: $1E $00
    ld   a, [de]                                  ; $53D5: $1A
    bit  3, a                                     ; $53D6: $CB $5F
    jr   nz, jr_001_53EF                          ; $53D8: $20 $15

    call AdvanceActorFixedPointMovement           ; $53DA: $CD $93 $4A
    ld   bc, $0E10                                ; $53DD: $01 $10 $0E
    call ComparePlayerProjectileWithActor         ; $53E0: $CD $88 $7B
    ld   bc, $7D76                                ; $53E3: $01 $76 $7D
    call c, Call_001_7BFF                         ; $53E6: $DC $FF $7B
    ld   hl, $1210                                ; $53E9: $21 $10 $12
    jp   SharedPlayerContactComparator            ; $53EC: $C3 $4B $7B


jr_001_53EF:
    xor  a                                        ; $53EF: $AF
    ld   [de], a                                  ; $53F0: $12
    ret                                           ; $53F1: $C9


    ld   e, $0C                                   ; $53F2: $1E $0C
    ld   a, [de]                                  ; $53F4: $1A
    dec  a                                        ; $53F5: $3D
    jr   z, jr_001_540C                           ; $53F6: $28 $14

    ld   e, $0E                                   ; $53F8: $1E $0E
    ld   a, $0E                                   ; $53FA: $3E $0E
    ld   [de], a                                  ; $53FC: $12
    inc  e                                        ; $53FD: $1C
    xor  a                                        ; $53FE: $AF
    ld   [de], a                                  ; $53FF: $12
    inc  e                                        ; $5400: $1C
    ld   [de], a                                  ; $5401: $12
    dec  a                                        ; $5402: $3D
    ld   e, $08                                   ; $5403: $1E $08
    ld   [de], a                                  ; $5405: $12
    ld   e, $0C                                   ; $5406: $1E $0C
    ld   a, $01                                   ; $5408: $3E $01
    ld   [de], a                                  ; $540A: $12
    ret                                           ; $540B: $C9


jr_001_540C:
    ld   e, $08                                   ; $540C: $1E $08
    ld   a, [de]                                  ; $540E: $1A
    inc  a                                        ; $540F: $3C
    ld   [de], a                                  ; $5410: $12
    and  $0F                                      ; $5411: $E6 $0F
    ret  nz                                       ; $5413: $C0

    ld   a, $2C                                   ; $5414: $3E $2C
    rst  RST_28                                   ; $5416: $EF
    call Call_000_0BBF                            ; $5417: $CD $BF $0B
    ld   a, [$DF0B]                               ; $541A: $FA $0B $DF
    and  $07                                      ; $541D: $E6 $07
    rlca                                          ; $541F: $07
    ld   hl, $5440                                ; $5420: $21 $40 $54
    call AddAToHL                                 ; $5423: $CD $71 $00
    ld   e, $0A                                   ; $5426: $1E $0A
    ld   a, [de]                                  ; $5428: $1A
    ld   b, a                                     ; $5429: $47
    ld   e, $03                                   ; $542A: $1E $03
    ld   c, e                                     ; $542C: $4B
    ld   a, [bc]                                  ; $542D: $0A
    add  [hl]                                     ; $542E: $86
    ld   [de], a                                  ; $542F: $12
    inc  hl                                       ; $5430: $23
    inc  e                                        ; $5431: $1C
    inc  c                                        ; $5432: $0C
    ld   a, [bc]                                  ; $5433: $0A
    ld   [de], a                                  ; $5434: $12
    ld   e, $06                                   ; $5435: $1E $06
    ld   c, e                                     ; $5437: $4B
    ld   a, [bc]                                  ; $5438: $0A
    add  [hl]                                     ; $5439: $86
    ld   [de], a                                  ; $543A: $12
    inc  e                                        ; $543B: $1C
    inc  c                                        ; $543C: $0C
    ld   a, [bc]                                  ; $543D: $0A
    ld   [de], a                                  ; $543E: $12
    ret                                           ; $543F: $C9


    nop                                           ; $5440: $00
    nop                                           ; $5441: $00
    ldh  a, [$FFF0]                               ; $5442: $F0 $F0
    db   $10                                      ; $5444: $10
    db   $10                                      ; $5445: $10
    ldh  a, [rNR10]                               ; $5446: $F0 $10
    db   $10                                      ; $5448: $10
    ldh  a, [$FFF8]                               ; $5449: $F0 $F8
    ld   [$F008], sp                              ; $544B: $08 $08 $F0
    ld   e, $0C                                   ; $544E: $1E $0C
    ld   a, [de]                                  ; $5450: $1A
    dec  a                                        ; $5451: $3D
    jr   z, jr_001_548C                           ; $5452: $28 $38

    call $4A6A                                    ; $5454: $CD $6A $4A
    ld   e, $0E                                   ; $5457: $1E $0E
    ld   a, $56                                   ; $5459: $3E $56
    ld   [de], a                                  ; $545B: $12
    inc  e                                        ; $545C: $1C
    xor  a                                        ; $545D: $AF
    ld   [de], a                                  ; $545E: $12
    inc  e                                        ; $545F: $1C
    ld   [de], a                                  ; $5460: $12
    ld   e, $0C                                   ; $5461: $1E $0C
    inc  a                                        ; $5463: $3C
    ld   [de], a                                  ; $5464: $12
    ret                                           ; $5465: $C9


    ld   e, $0C                                   ; $5466: $1E $0C
    ld   a, [de]                                  ; $5468: $1A
    dec  a                                        ; $5469: $3D
    jp   z, Jump_001_548C                         ; $546A: $CA $8C $54

    ld   e, $0E                                   ; $546D: $1E $0E
    ld   a, $70                                   ; $546F: $3E $70
    ld   [de], a                                  ; $5471: $12
    jp   Jump_001_5480                            ; $5472: $C3 $80 $54


Selector0DActorUpdate::
    ld   e, $0C                                   ; $5475: $1E $0C
    ld   a, [de]                                  ; $5477: $1A
    dec  a                                        ; $5478: $3D
    jr   z, jr_001_548C                           ; $5479: $28 $11

    ld   e, $0E                                   ; $547B: $1E $0E
    ld   a, $22                                   ; $547D: $3E $22
    ld   [de], a                                  ; $547F: $12

Jump_001_5480:
    inc  e                                        ; $5480: $1C
    xor  a                                        ; $5481: $AF
    ld   [de], a                                  ; $5482: $12
    inc  e                                        ; $5483: $1C
    ld   [de], a                                  ; $5484: $12
    ld   e, $0C                                   ; $5485: $1E $0C
    inc  a                                        ; $5487: $3C
    ld   [de], a                                  ; $5488: $12
    jp   $4A6A                                    ; $5489: $C3 $6A $4A


Call_001_548C:
Jump_001_548C:
jr_001_548C:
    call AdvanceActorFixedPointMovement           ; $548C: $CD $93 $4A
    ld   e, $00                                   ; $548F: $1E $00
    ld   a, [de]                                  ; $5491: $1A
    bit  3, a                                     ; $5492: $CB $5F
    jr   nz, jr_001_54B9                          ; $5494: $20 $23

    ld   hl, $0C0A                                ; $5496: $21 $0A $0C
    call SharedPlayerContactComparator            ; $5499: $CD $4B $7B
    jr   c, jr_001_54AD                           ; $549C: $38 $0F

    ld   hl, $F806                                ; $549E: $21 $06 $F8
    call Call_001_6DCA                            ; $54A1: $CD $CA $6D
    ld   hl, $C661                                ; $54A4: $21 $61 $C6
    dec  [hl]                                     ; $54A7: $35
    jr   z, jr_001_54AD                           ; $54A8: $28 $03

    inc  l                                        ; $54AA: $2C
    dec  [hl]                                     ; $54AB: $35
    ret  nz                                       ; $54AC: $C0

jr_001_54AD:
    ld   b, $19                                   ; $54AD: $06 $19
    ld   e, $12                                   ; $54AF: $1E $12
    ld   a, [de]                                  ; $54B1: $1A
    cp   $58                                      ; $54B2: $FE $58
    jr   c, jr_001_54B7                           ; $54B4: $38 $01

    inc  b                                        ; $54B6: $04

jr_001_54B7:
    ld   a, b                                     ; $54B7: $78
    rst  RST_28                                   ; $54B8: $EF

jr_001_54B9:
    xor  a                                        ; $54B9: $AF
    ld   e, $00                                   ; $54BA: $1E $00
    ld   [de], a                                  ; $54BC: $12
    ret                                           ; $54BD: $C9


    ld   e, $0C                                   ; $54BE: $1E $0C
    ld   a, [de]                                  ; $54C0: $1A
    dec  a                                        ; $54C1: $3D
    jr   z, jr_001_54D3                           ; $54C2: $28 $0F

    ld   e, $0E                                   ; $54C4: $1E $0E
    ld   a, $22                                   ; $54C6: $3E $22
    ld   [de], a                                  ; $54C8: $12
    inc  e                                        ; $54C9: $1C
    xor  a                                        ; $54CA: $AF
    ld   [de], a                                  ; $54CB: $12
    inc  e                                        ; $54CC: $1C
    ld   [de], a                                  ; $54CD: $12
    ld   e, $0C                                   ; $54CE: $1E $0C
    inc  a                                        ; $54D0: $3C
    ld   [de], a                                  ; $54D1: $12
    ret                                           ; $54D2: $C9


jr_001_54D3:
    call Call_001_7D61                            ; $54D3: $CD $61 $7D
    ld   bc, $100C                                ; $54D6: $01 $0C $10
    call Call_001_7C40                            ; $54D9: $CD $40 $7C
    ret  nc                                       ; $54DC: $D0

    ld   hl, $DF06                                ; $54DD: $21 $06 $DF
    set  2, [hl]                                  ; $54E0: $CB $D6
    ret                                           ; $54E2: $C9


    ld   e, $0C                                   ; $54E3: $1E $0C
    ld   a, [de]                                  ; $54E5: $1A
    dec  a                                        ; $54E6: $3D
    jr   z, jr_001_54F8                           ; $54E7: $28 $0F

    ld   e, $0E                                   ; $54E9: $1E $0E
    ld   a, $2A                                   ; $54EB: $3E $2A
    ld   [de], a                                  ; $54ED: $12
    inc  e                                        ; $54EE: $1C
    xor  a                                        ; $54EF: $AF
    ld   [de], a                                  ; $54F0: $12
    inc  e                                        ; $54F1: $1C
    ld   [de], a                                  ; $54F2: $12
    ld   e, $0C                                   ; $54F3: $1E $0C
    inc  a                                        ; $54F5: $3C
    ld   [de], a                                  ; $54F6: $12
    ret                                           ; $54F7: $C9


jr_001_54F8:
    ld   e, $00                                   ; $54F8: $1E $00
    ld   a, [de]                                  ; $54FA: $1A
    bit  3, a                                     ; $54FB: $CB $5F
    jr   nz, jr_001_5505                          ; $54FD: $20 $06

    ld   e, $0B                                   ; $54FF: $1E $0B
    ld   a, [de]                                  ; $5501: $1A
    dec  a                                        ; $5502: $3D
    ld   [de], a                                  ; $5503: $12
    ret  nz                                       ; $5504: $C0

jr_001_5505:
    xor  a                                        ; $5505: $AF
    ld   e, $00                                   ; $5506: $1E $00
    ld   [de], a                                  ; $5508: $12
    ret                                           ; $5509: $C9


WorldEntityType11Handler::
    ld   e, $0C                                   ; $550A: $1E $0C
    ld   a, [de]                                  ; $550C: $1A
    dec  a                                        ; $550D: $3D
    jr   z, jr_001_5521                           ; $550E: $28 $11

    ld   e, $0E                                   ; $5510: $1E $0E
    ld   a, $84                                   ; $5512: $3E $84
    ld   [de], a                                  ; $5514: $12
    inc  e                                        ; $5515: $1C
    xor  a                                        ; $5516: $AF
    ld   [de], a                                  ; $5517: $12
    inc  e                                        ; $5518: $1C
    ld   [de], a                                  ; $5519: $12
    ld   e, $0C                                   ; $551A: $1E $0C
    inc  a                                        ; $551C: $3C
    ld   [de], a                                  ; $551D: $12
    jp   Jump_001_70BB                            ; $551E: $C3 $BB $70


jr_001_5521:
    call Call_001_7D61                            ; $5521: $CD $61 $7D
    call Call_001_70BB                            ; $5524: $CD $BB $70
    ld   b, $83                                   ; $5527: $06 $83
    jp   SelectType11DirectionalAnimation         ; $5529: $C3 $1A $56


    ld   e, $0C                                   ; $552C: $1E $0C
    ld   a, [de]                                  ; $552E: $1A
    dec  a                                        ; $552F: $3D
    jr   z, jr_001_5549                           ; $5530: $28 $17

    dec  a                                        ; $5532: $3D
    jr   z, jr_001_558B                           ; $5533: $28 $56

    dec  a                                        ; $5535: $3D
    jr   z, jr_001_5593                           ; $5536: $28 $5B

    ld   e, $0E                                   ; $5538: $1E $0E
    ld   a, $84                                   ; $553A: $3E $84
    ld   [de], a                                  ; $553C: $12
    inc  e                                        ; $553D: $1C
    xor  a                                        ; $553E: $AF
    ld   [de], a                                  ; $553F: $12
    inc  e                                        ; $5540: $1C
    ld   [de], a                                  ; $5541: $12
    ld   e, $0C                                   ; $5542: $1E $0C
    inc  a                                        ; $5544: $3C
    ld   [de], a                                  ; $5545: $12
    jp   Jump_001_70BB                            ; $5546: $C3 $BB $70


jr_001_5549:
    call Call_001_7D61                            ; $5549: $CD $61 $7D
    call Call_001_70BB                            ; $554C: $CD $BB $70
    ld   b, $83                                   ; $554F: $06 $83
    call SelectType11DirectionalAnimation         ; $5551: $CD $1A $56
    ld   a, [$C460]                               ; $5554: $FA $60 $C4
    rlca                                          ; $5557: $07
    ret  c                                        ; $5558: $D8

    ld   a, [$C26A]                               ; $5559: $FA $6A $C2
    and  a                                        ; $555C: $A7
    ret  nz                                       ; $555D: $C0

    call Call_000_0BBF                            ; $555E: $CD $BF $0B
    ld   a, [$DF0B]                               ; $5561: $FA $0B $DF
    rrca                                          ; $5564: $0F
    and  $0F                                      ; $5565: $E6 $0F
    cp   $04                                      ; $5567: $FE $04
    jr   nc, jr_001_556F                          ; $5569: $30 $04

    ld   b, $00                                   ; $556B: $06 $00
    jr   jr_001_5581                              ; $556D: $18 $12

jr_001_556F:
    cp   $08                                      ; $556F: $FE $08
    jr   nc, jr_001_5577                          ; $5571: $30 $04

    ld   b, $04                                   ; $5573: $06 $04
    jr   jr_001_5581                              ; $5575: $18 $0A

jr_001_5577:
    cp   $0C                                      ; $5577: $FE $0C
    jr   nc, jr_001_557F                          ; $5579: $30 $04

    ld   b, $08                                   ; $557B: $06 $08
    jr   jr_001_5581                              ; $557D: $18 $02

jr_001_557F:
    ld   b, $0C                                   ; $557F: $06 $0C

jr_001_5581:
    ld   e, $01                                   ; $5581: $1E $01
    ld   a, [de]                                  ; $5583: $1A
    and  $F0                                      ; $5584: $E6 $F0
    or   b                                        ; $5586: $B0
    ld   [de], a                                  ; $5587: $12
    jp   Jump_001_5646                            ; $5588: $C3 $46 $56


jr_001_558B:
    ld   e, $0C                                   ; $558B: $1E $0C
    ld   a, $03                                   ; $558D: $3E $03
    ld   [de], a                                  ; $558F: $12
    jp   $4A6A                                    ; $5590: $C3 $6A $4A


jr_001_5593:
    ld   b, $83                                   ; $5593: $06 $83
    call SelectType11DirectionalAnimation         ; $5595: $CD $1A $56
    call AdvanceActorFixedPointMovement           ; $5598: $CD $93 $4A
    ld   e, $18                                   ; $559B: $1E $18
    ld   a, [de]                                  ; $559D: $1A
    dec  a                                        ; $559E: $3D
    ld   [de], a                                  ; $559F: $12
    ret  nz                                       ; $55A0: $C0

    ld   e, $0C                                   ; $55A1: $1E $0C
    inc  a                                        ; $55A3: $3C
    ld   [de], a                                  ; $55A4: $12
    ret                                           ; $55A5: $C9


    ld   e, $0C                                   ; $55A6: $1E $0C
    ld   a, [de]                                  ; $55A8: $1A
    dec  a                                        ; $55A9: $3D
    jr   z, jr_001_55BD                           ; $55AA: $28 $11

    ld   e, $0E                                   ; $55AC: $1E $0E
    ld   a, $87                                   ; $55AE: $3E $87
    ld   [de], a                                  ; $55B0: $12
    inc  e                                        ; $55B1: $1C
    xor  a                                        ; $55B2: $AF
    ld   [de], a                                  ; $55B3: $12
    inc  e                                        ; $55B4: $1C
    ld   [de], a                                  ; $55B5: $12
    ld   e, $0C                                   ; $55B6: $1E $0C
    inc  a                                        ; $55B8: $3C
    ld   [de], a                                  ; $55B9: $12
    jp   Jump_001_70BB                            ; $55BA: $C3 $BB $70


jr_001_55BD:
    call Call_001_70BB                            ; $55BD: $CD $BB $70
    ld   b, $86                                   ; $55C0: $06 $86
    jp   SelectType11DirectionalAnimation         ; $55C2: $C3 $1A $56


    ld   e, $0C                                   ; $55C5: $1E $0C
    ld   a, [de]                                  ; $55C7: $1A
    dec  a                                        ; $55C8: $3D
    jr   z, jr_001_55DC                           ; $55C9: $28 $11

    ld   e, $0E                                   ; $55CB: $1E $0E
    ld   a, $8A                                   ; $55CD: $3E $8A
    ld   [de], a                                  ; $55CF: $12
    inc  e                                        ; $55D0: $1C
    xor  a                                        ; $55D1: $AF
    ld   [de], a                                  ; $55D2: $12
    inc  e                                        ; $55D3: $1C
    ld   [de], a                                  ; $55D4: $12
    ld   e, $0C                                   ; $55D5: $1E $0C
    inc  a                                        ; $55D7: $3C
    ld   [de], a                                  ; $55D8: $12
    jp   Jump_001_70BB                            ; $55D9: $C3 $BB $70


jr_001_55DC:
    call Call_001_70BB                            ; $55DC: $CD $BB $70
    ld   b, $89                                   ; $55DF: $06 $89
    jp   SelectType11DirectionalAnimation         ; $55E1: $C3 $1A $56


    ld   e, $0C                                   ; $55E4: $1E $0C
    ld   a, [de]                                  ; $55E6: $1A
    dec  a                                        ; $55E7: $3D
    jr   z, jr_001_55FB                           ; $55E8: $28 $11

    ld   e, $0E                                   ; $55EA: $1E $0E
    ld   a, $8D                                   ; $55EC: $3E $8D
    ld   [de], a                                  ; $55EE: $12
    inc  e                                        ; $55EF: $1C
    xor  a                                        ; $55F0: $AF
    ld   [de], a                                  ; $55F1: $12
    inc  e                                        ; $55F2: $1C
    ld   [de], a                                  ; $55F3: $12
    ld   e, $0C                                   ; $55F4: $1E $0C
    inc  a                                        ; $55F6: $3C
    ld   [de], a                                  ; $55F7: $12
    jp   Jump_001_70BB                            ; $55F8: $C3 $BB $70


jr_001_55FB:
    call Call_001_70BB                            ; $55FB: $CD $BB $70
    ld   b, $8C                                   ; $55FE: $06 $8C
    jp   SelectType11DirectionalAnimation         ; $5600: $C3 $1A $56


    ld   e, $0C                                   ; $5603: $1E $0C
    ld   a, [de]                                  ; $5605: $1A
    and  a                                        ; $5606: $A7
    ret  nz                                       ; $5607: $C0

    ld   e, $01                                   ; $5608: $1E $01
    ld   a, [de]                                  ; $560A: $1A
    ld   e, $0E                                   ; $560B: $1E $0E
    ld   [de], a                                  ; $560D: $12
    inc  e                                        ; $560E: $1C
    xor  a                                        ; $560F: $AF
    ld   [de], a                                  ; $5610: $12
    inc  e                                        ; $5611: $1C
    ld   [de], a                                  ; $5612: $12
    ld   e, $0C                                   ; $5613: $1E $0C
    inc  a                                        ; $5615: $3C
    ld   [de], a                                  ; $5616: $12
    jp   Jump_001_70BB                            ; $5617: $C3 $BB $70


SelectType11DirectionalAnimation::
    ld   e, $01                                   ; $561A: $1E $01
    ld   a, [de]                                  ; $561C: $1A
    and  $0F                                      ; $561D: $E6 $0F
    jr   nz, jr_001_5626                          ; $561F: $20 $05

    ld   e, $0E                                   ; $5621: $1E $0E
    ld   a, b                                     ; $5623: $78
    ld   [de], a                                  ; $5624: $12
    ret                                           ; $5625: $C9


jr_001_5626:
    inc  b                                        ; $5626: $04
    cp   $08                                      ; $5627: $FE $08
    jr   nz, jr_001_5630                          ; $5629: $20 $05

    ld   e, $0E                                   ; $562B: $1E $0E
    ld   a, b                                     ; $562D: $78
    ld   [de], a                                  ; $562E: $12
    ret                                           ; $562F: $C9


jr_001_5630:
    inc  b                                        ; $5630: $04
    cp   $04                                      ; $5631: $FE $04
    jr   nz, jr_001_563C                          ; $5633: $20 $07

    dec  e                                        ; $5635: $1D
    ld   a, [de]                                  ; $5636: $1A
    set  5, a                                     ; $5637: $CB $EF
    ld   [de], a                                  ; $5639: $12
    jr   jr_001_5641                              ; $563A: $18 $05

jr_001_563C:
    dec  e                                        ; $563C: $1D
    ld   a, [de]                                  ; $563D: $1A
    res  5, a                                     ; $563E: $CB $AF
    ld   [de], a                                  ; $5640: $12

jr_001_5641:
    ld   e, $0E                                   ; $5641: $1E $0E
    ld   a, b                                     ; $5643: $78
    ld   [de], a                                  ; $5644: $12
    ret                                           ; $5645: $C9


Jump_001_5646:
    ld   e, $1A                                   ; $5646: $1E $1A
    ld   a, b                                     ; $5648: $78
    and  a                                        ; $5649: $A7
    jr   nz, jr_001_5651                          ; $564A: $20 $05

    ld   a, [de]                                  ; $564C: $1A
    sub  $10                                      ; $564D: $D6 $10
    jr   jr_001_566E                              ; $564F: $18 $1D

jr_001_5651:
    cp   $04                                      ; $5651: $FE $04
    jr   nz, jr_001_565E                          ; $5653: $20 $09

    ld   a, [de]                                  ; $5655: $1A
    swap a                                        ; $5656: $CB $37
    add  $10                                      ; $5658: $C6 $10
    swap a                                        ; $565A: $CB $37
    jr   jr_001_566E                              ; $565C: $18 $10

jr_001_565E:
    cp   $08                                      ; $565E: $FE $08
    jr   nz, jr_001_5667                          ; $5660: $20 $05

    ld   a, [de]                                  ; $5662: $1A
    add  $10                                      ; $5663: $C6 $10
    jr   jr_001_566E                              ; $5665: $18 $07

jr_001_5667:
    ld   a, [de]                                  ; $5667: $1A
    swap a                                        ; $5668: $CB $37
    sub  $10                                      ; $566A: $D6 $10
    swap a                                        ; $566C: $CB $37

jr_001_566E:
    ld   h, $C1                                   ; $566E: $26 $C1
    ld   l, a                                     ; $5670: $6F
    ld   c, a                                     ; $5671: $4F
    ld   a, [hl]                                  ; $5672: $7E
    and  a                                        ; $5673: $A7
    ret  nz                                       ; $5674: $C0

    ld   a, [$C21A]                               ; $5675: $FA $1A $C2
    cp   c                                        ; $5678: $B9
    ret  z                                        ; $5679: $C8

    ld   b, $10                                   ; $567A: $06 $10
    ld   h, $C7                                   ; $567C: $26 $C7

jr_001_567E:
    ld   l, $00                                   ; $567E: $2E $00
    ld   a, [hl]                                  ; $5680: $7E
    bit  0, a                                     ; $5681: $CB $47
    jr   z, jr_001_5692                           ; $5683: $28 $0D

    bit  3, a                                     ; $5685: $CB $5F
    jr   nz, jr_001_5692                          ; $5687: $20 $09

    bit  4, a                                     ; $5689: $CB $67
    jr   nz, jr_001_5692                          ; $568B: $20 $05

    ld   l, $1A                                   ; $568D: $2E $1A
    ld   a, [hl]                                  ; $568F: $7E
    cp   c                                        ; $5690: $B9
    ret  z                                        ; $5691: $C8

jr_001_5692:
    inc  h                                        ; $5692: $24
    dec  b                                        ; $5693: $05
    jr   nz, jr_001_567E                          ; $5694: $20 $E8

    ld   e, $1A                                   ; $5696: $1E $1A
    ld   a, c                                     ; $5698: $79
    ld   [de], a                                  ; $5699: $12
    ld   e, $18                                   ; $569A: $1E $18
    ld   a, $10                                   ; $569C: $3E $10
    ld   [de], a                                  ; $569E: $12
    ld   e, $0C                                   ; $569F: $1E $0C
    ld   a, $02                                   ; $56A1: $3E $02
    ld   [de], a                                  ; $56A3: $12
    ret                                           ; $56A4: $C9


    ld   e, $0C                                   ; $56A5: $1E $0C
    ld   a, [de]                                  ; $56A7: $1A
    and  a                                        ; $56A8: $A7
    ret  nz                                       ; $56A9: $C0

    ld   e, $0E                                   ; $56AA: $1E $0E
    ld   a, $8F                                   ; $56AC: $3E $8F
    ld   [de], a                                  ; $56AE: $12

jr_001_56AF:
    inc  e                                        ; $56AF: $1C
    xor  a                                        ; $56B0: $AF
    ld   [de], a                                  ; $56B1: $12
    inc  e                                        ; $56B2: $1C
    ld   [de], a                                  ; $56B3: $12
    ld   e, $0C                                   ; $56B4: $1E $0C
    inc  a                                        ; $56B6: $3C
    ld   [de], a                                  ; $56B7: $12
    ret                                           ; $56B8: $C9


    ld   a, [$DF30]                               ; $56B9: $FA $30 $DF
    and  a                                        ; $56BC: $A7
    ret  z                                        ; $56BD: $C8

    ld   a, $40                                   ; $56BE: $3E $40
    ld   [$DF30], a                               ; $56C0: $EA $30 $DF
    ld   hl, $C687                                ; $56C3: $21 $87 $C6
    ld   a, $CA                                   ; $56C6: $3E $CA
    ld   [hl+], a                                 ; $56C8: $22
    ld   a, $9A                                   ; $56C9: $3E $9A
    ld   [hl+], a                                 ; $56CB: $22
    ld   a, $30                                   ; $56CC: $3E $30
    ld   [hl], a                                  ; $56CE: $77
    ld   a, $02                                   ; $56CF: $3E $02
    ld   [$C1B5], a                               ; $56D1: $EA $B5 $C1
    ret                                           ; $56D4: $C9


    ld   a, [$C4AD]                               ; $56D5: $FA $AD $C4
    and  a                                        ; $56D8: $A7
    ret  z                                        ; $56D9: $C8

    xor  a                                        ; $56DA: $AF
    ld   h, $C1                                   ; $56DB: $26 $C1
    ld   l, $38                                   ; $56DD: $2E $38
    ld   [hl], a                                  ; $56DF: $77
    ld   l, $68                                   ; $56E0: $2E $68
    ld   [hl], a                                  ; $56E2: $77
    ld   l, $78                                   ; $56E3: $2E $78
    ld   [hl], a                                  ; $56E5: $77
    ret                                           ; $56E6: $C9


    ld   e, $0C                                   ; $56E7: $1E $0C
    ld   a, [de]                                  ; $56E9: $1A
    and  a                                        ; $56EA: $A7
    ret  nz                                       ; $56EB: $C0

    ld   e, $0E                                   ; $56EC: $1E $0E
    ld   a, $99                                   ; $56EE: $3E $99
    ld   [de], a                                  ; $56F0: $12
    jr   jr_001_56AF                              ; $56F1: $18 $BC

    ld   e, $0C                                   ; $56F3: $1E $0C
    ld   a, [de]                                  ; $56F5: $1A
    dec  a                                        ; $56F6: $3D
    jr   z, jr_001_5717                           ; $56F7: $28 $1E

    dec  a                                        ; $56F9: $3D
    jr   z, jr_001_5741                           ; $56FA: $28 $45

    ld   e, $0E                                   ; $56FC: $1E $0E
    ld   a, $1B                                   ; $56FE: $3E $1B
    ld   [de], a                                  ; $5700: $12
    xor  a                                        ; $5701: $AF
    inc  e                                        ; $5702: $1C
    ld   [de], a                                  ; $5703: $12
    inc  e                                        ; $5704: $1C
    ld   [de], a                                  ; $5705: $12
    ld   c, $01                                   ; $5706: $0E $01
    ld   e, $01                                   ; $5708: $1E $01
    ld   a, [de]                                  ; $570A: $1A
    bit  2, a                                     ; $570B: $CB $57
    jr   z, jr_001_5710                           ; $570D: $28 $01

    inc  c                                        ; $570F: $0C

jr_001_5710:
    ld   e, $0C                                   ; $5710: $1E $0C
    ld   a, c                                     ; $5712: $79
    ld   [de], a                                  ; $5713: $12
    jp   $4A6A                                    ; $5714: $C3 $6A $4A


jr_001_5717:
    call Call_001_7D61                            ; $5717: $CD $61 $7D
    call AdvanceActorFixedPointMovement           ; $571A: $CD $93 $4A
    ld   hl, $F801                                ; $571D: $21 $01 $F8
    ld   e, $01                                   ; $5720: $1E $01
    ld   a, [de]                                  ; $5722: $1A
    bit  3, a                                     ; $5723: $CB $5F
    jr   nz, jr_001_5729                          ; $5725: $20 $02

    ld   h, $E8                                   ; $5727: $26 $E8

jr_001_5729:
    call Call_001_6DCA                            ; $5729: $CD $CA $6D
    ld   a, [$C662]                               ; $572C: $FA $62 $C6
    dec  a                                        ; $572F: $3D
    jr   nz, jr_001_573B                          ; $5730: $20 $09

jr_001_5732:
    ld   e, $01                                   ; $5732: $1E $01
    ld   a, [de]                                  ; $5734: $1A
    xor  $08                                      ; $5735: $EE $08
    ld   [de], a                                  ; $5737: $12
    jp   AdvanceActorFixedPointMovement           ; $5738: $C3 $93 $4A


jr_001_573B:
    ld   hl, $100C                                ; $573B: $21 $0C $10
    jp   SharedPlayerContactComparator            ; $573E: $C3 $4B $7B


jr_001_5741:
    call Call_001_7D61                            ; $5741: $CD $61 $7D
    call AdvanceActorFixedPointMovement           ; $5744: $CD $93 $4A
    ld   hl, $F007                                ; $5747: $21 $07 $F0
    call Call_001_6DCA                            ; $574A: $CD $CA $6D
    ld   hl, $C660                                ; $574D: $21 $60 $C6
    ld   a, [hl+]                                 ; $5750: $2A
    dec  a                                        ; $5751: $3D
    jr   z, jr_001_5732                           ; $5752: $28 $DE

    ld   a, [hl]                                  ; $5754: $7E
    dec  a                                        ; $5755: $3D
    jr   z, jr_001_5732                           ; $5756: $28 $DA

    jr   jr_001_573B                              ; $5758: $18 $E1

    ld   e, $0C                                   ; $575A: $1E $0C
    ld   a, [de]                                  ; $575C: $1A
    and  a                                        ; $575D: $A7
    jr   z, jr_001_5766                           ; $575E: $28 $06

    dec  a                                        ; $5760: $3D
    jr   z, jr_001_5770                           ; $5761: $28 $0D

    jp   Jump_001_5B29                            ; $5763: $C3 $29 $5B


jr_001_5766:
    ld   a, $41                                   ; $5766: $3E $41
    call Call_001_7D69                            ; $5768: $CD $69 $7D
    ld   e, $0C                                   ; $576B: $1E $0C
    inc  a                                        ; $576D: $3C
    ld   [de], a                                  ; $576E: $12
    ret                                           ; $576F: $C9


jr_001_5770:
    call Call_001_7D61                            ; $5770: $CD $61 $7D
    ld   hl, $130F                                ; $5773: $21 $0F $13
    call SharedPlayerContactComparator            ; $5776: $CD $4B $7B
    jr   c, jr_001_5782                           ; $5779: $38 $07

    ld   bc, $0E0E                                ; $577B: $01 $0E $0E
    call ComparePlayerProjectileWithActor         ; $577E: $CD $88 $7B
    ret  nc                                       ; $5781: $D0

jr_001_5782:
    ld   c, $17                                   ; $5782: $0E $17
    call Call_001_5D42                            ; $5784: $CD $42 $5D
    bit  3, a                                     ; $5787: $CB $5F
    jr   z, jr_001_578D                           ; $5789: $28 $02

    ld   c, $1F                                   ; $578B: $0E $1F

jr_001_578D:
    ld   b, $25                                   ; $578D: $06 $25
    xor  a                                        ; $578F: $AF
    ld   [$C7C4], a                               ; $5790: $EA $C4 $C7

jr_001_5793:
    push bc                                       ; $5793: $C5
    call FindAvailableWorldActorPage              ; $5794: $CD $5D $4D
    pop  bc                                       ; $5797: $C1
    cp   $FF                                      ; $5798: $FE $FF
    jr   z, jr_001_57AA                           ; $579A: $28 $0E

    ld   [$C7C4], a                               ; $579C: $EA $C4 $C7
    call Call_001_7D3F                            ; $579F: $CD $3F $7D
    ld   a, c                                     ; $57A2: $79
    sub  $03                                      ; $57A3: $D6 $03
    ld   c, a                                     ; $57A5: $4F
    bit  1, a                                     ; $57A6: $CB $4F
    jr   z, jr_001_5793                           ; $57A8: $28 $E9

jr_001_57AA:
    jp   Jump_001_5ACC                            ; $57AA: $C3 $CC $5A


    ld   e, $0C                                   ; $57AD: $1E $0C
    ld   a, [de]                                  ; $57AF: $1A
    dec  a                                        ; $57B0: $3D
    jr   z, jr_001_57C2                           ; $57B1: $28 $0F

    ld   a, $36                                   ; $57B3: $3E $36
    call Call_001_7D69                            ; $57B5: $CD $69 $7D
    ld   e, $1A                                   ; $57B8: $1E $1A
    ld   [de], a                                  ; $57BA: $12
    ld   e, $0C                                   ; $57BB: $1E $0C
    inc  a                                        ; $57BD: $3C
    ld   [de], a                                  ; $57BE: $12
    jp   $4A6A                                    ; $57BF: $C3 $6A $4A


jr_001_57C2:
    call Call_001_7D61                            ; $57C2: $CD $61 $7D
    call AdvanceActorFixedPointMovement           ; $57C5: $CD $93 $4A
    ld   bc, $0E0E                                ; $57C8: $01 $0E $0E
    call ComparePlayerProjectileWithActor         ; $57CB: $CD $88 $7B
    ld   hl, $130F                                ; $57CE: $21 $0F $13
    jp   nc, SharedPlayerContactComparator        ; $57D1: $D2 $4B $7B

    ld   bc, $2D3D                                ; $57D4: $01 $3D $2D
    xor  a                                        ; $57D7: $AF
    ld   [$C7C4], a                               ; $57D8: $EA $C4 $C7
    call Call_001_57F9                            ; $57DB: $CD $F9 $57
    ld   c, $3F                                   ; $57DE: $0E $3F
    call Call_001_57F9                            ; $57E0: $CD $F9 $57
    ld   e, $1A                                   ; $57E3: $1E $1A
    ld   a, [de]                                  ; $57E5: $1A
    bit  0, a                                     ; $57E6: $CB $47
    jr   nz, jr_001_57F2                          ; $57E8: $20 $08

    set  0, a                                     ; $57EA: $CB $C7
    ld   [de], a                                  ; $57EC: $12
    ld   e, $13                                   ; $57ED: $1E $13
    ld   a, $40                                   ; $57EF: $3E $40
    ld   [de], a                                  ; $57F1: $12

jr_001_57F2:
    ld   bc, $7D76                                ; $57F2: $01 $76 $7D
    call Call_001_7BFF                            ; $57F5: $CD $FF $7B
    ret                                           ; $57F8: $C9


Call_001_57F9:
    push bc                                       ; $57F9: $C5
    call FindAvailableWorldActorPage              ; $57FA: $CD $5D $4D
    pop  bc                                       ; $57FD: $C1
    cp   $FF                                      ; $57FE: $FE $FF
    ld   [$C7C4], a                               ; $5800: $EA $C4 $C7
    ret  z                                        ; $5803: $C8

    jp   Jump_001_7D3F                            ; $5804: $C3 $3F $7D


WorldEntityAction23Handler::
    ld   e, $0C                                   ; $5807: $1E $0C
    ld   a, [de]                                  ; $5809: $1A
    and  a                                        ; $580A: $A7
    jr   z, jr_001_5820                           ; $580B: $28 $13

    ld   b, a                                     ; $580D: $47
    ld   e, $00                                   ; $580E: $1E $00
    ld   a, [de]                                  ; $5810: $1A
    bit  3, a                                     ; $5811: $CB $5F
    ret  nz                                       ; $5813: $C0

    ld   a, b                                     ; $5814: $78
    call Call_000_0B7D                            ; $5815: $CD $7D $0B
    jr   nz, @+$5A                                ; $5818: $20 $58

    dec  [hl]                                     ; $581A: $35
    ld   e, b                                     ; $581B: $58
    ld   d, [hl]                                  ; $581C: $56
    ld   e, b                                     ; $581D: $58
    adc  c                                        ; $581E: $89
    ld   e, b                                     ; $581F: $58

jr_001_5820:
    ld   e, $00                                   ; $5820: $1E $00
    ld   a, [de]                                  ; $5822: $1A
    and  $E7                                      ; $5823: $E6 $E7
    ld   [de], a                                  ; $5825: $12
    ld   a, $3A                                   ; $5826: $3E $3A
    call Call_001_7D69                            ; $5828: $CD $69 $7D
    ld   e, $13                                   ; $582B: $1E $13
    ld   [de], a                                  ; $582D: $12
    ld   e, $0C                                   ; $582E: $1E $0C
    inc  a                                        ; $5830: $3C
    ld   [de], a                                  ; $5831: $12
    jp   $4A6A                                    ; $5832: $C3 $6A $4A


    ld   hl, $130F                                ; $5835: $21 $0F $13
    call SharedPlayerContactComparator            ; $5838: $CD $4B $7B
    ld   bc, $0E0E                                ; $583B: $01 $0E $0E
    call ComparePlayerProjectileWithActor         ; $583E: $CD $88 $7B
    jr   nc, jr_001_5849                          ; $5841: $30 $06

    ld   bc, $7D76                                ; $5843: $01 $76 $7D
    call Call_001_7BFF                            ; $5846: $CD $FF $7B

jr_001_5849:
    ld   bc, $FF40                                ; $5849: $01 $40 $FF
    call Call_001_7C40                            ; $584C: $CD $40 $7C
    ret  nc                                       ; $584F: $D0

    ld   e, $0C                                   ; $5850: $1E $0C
    ld   a, $02                                   ; $5852: $3E $02
    ld   [de], a                                  ; $5854: $12
    ret                                           ; $5855: $C9


    call AdvanceActorFixedPointMovement           ; $5856: $CD $93 $4A
    ld   hl, $130F                                ; $5859: $21 $0F $13
    call SharedPlayerContactComparator            ; $585C: $CD $4B $7B
    ld   bc, $0A0E                                ; $585F: $01 $0E $0A
    call ComparePlayerProjectileWithActor         ; $5862: $CD $88 $7B
    jr   nc, jr_001_586D                          ; $5865: $30 $06

    ld   bc, $7D76                                ; $5867: $01 $76 $7D
    call Call_001_7BFF                            ; $586A: $CD $FF $7B

jr_001_586D:
    ld   bc, $10FF                                ; $586D: $01 $FF $10
    call Call_001_7C40                            ; $5870: $CD $40 $7C
    ret  nc                                       ; $5873: $D0

    call Call_001_7C7B                            ; $5874: $CD $7B $7C
    ld   e, $01                                   ; $5877: $1E $01
    or   $20                                      ; $5879: $F6 $20
    ld   [de], a                                  ; $587B: $12
    ld   a, $3B                                   ; $587C: $3E $3B
    call Call_001_7D69                            ; $587E: $CD $69 $7D
    ld   e, $0C                                   ; $5881: $1E $0C
    ld   a, $03                                   ; $5883: $3E $03
    ld   [de], a                                  ; $5885: $12
    jp   $4A6A                                    ; $5886: $C3 $6A $4A


    call AdvanceActorFixedPointMovement           ; $5889: $CD $93 $4A
    ld   hl, $1313                                ; $588C: $21 $13 $13
    call SharedPlayerContactComparator            ; $588F: $CD $4B $7B
    ld   bc, $0E12                                ; $5892: $01 $12 $0E
    call ComparePlayerProjectileWithActor         ; $5895: $CD $88 $7B
    ld   bc, $7D76                                ; $5898: $01 $76 $7D
    call c, Call_001_7BFF                         ; $589B: $DC $FF $7B
    ret                                           ; $589E: $C9


    ld   e, $0C                                   ; $589F: $1E $0C
    ld   a, [de]                                  ; $58A1: $1A
    and  a                                        ; $58A2: $A7
    jr   z, jr_001_58BA                           ; $58A3: $28 $15

    ld   b, a                                     ; $58A5: $47
    ld   e, $00                                   ; $58A6: $1E $00
    ld   a, [de]                                  ; $58A8: $1A
    bit  3, a                                     ; $58A9: $CB $5F
    ret  nz                                       ; $58AB: $C0

    ld   a, b                                     ; $58AC: $78
    call Call_000_0B7D                            ; $58AD: $CD $7D $0B
    cp   d                                        ; $58B0: $BA
    ld   e, b                                     ; $58B1: $58
    rst  RST_18                                   ; $58B2: $DF
    ld   e, b                                     ; $58B3: $58
    jr   @+$5B                                    ; $58B4: $18 $59

    ld   [hl], a                                  ; $58B6: $77
    ld   e, c                                     ; $58B7: $59
    and  h                                        ; $58B8: $A4
    ld   e, c                                     ; $58B9: $59

jr_001_58BA:
    call $4A6A                                    ; $58BA: $CD $6A $4A
    ld   a, $2F                                   ; $58BD: $3E $2F
    call Call_001_7D69                            ; $58BF: $CD $69 $7D
    ld   e, $0C                                   ; $58C2: $1E $0C
    inc  a                                        ; $58C4: $3C
    ld   [de], a                                  ; $58C5: $12
    ld   e, $1A                                   ; $58C6: $1E $1A
    ld   a, $10                                   ; $58C8: $3E $10
    ld   [de], a                                  ; $58CA: $12

Jump_001_58CB:
jr_001_58CB:
    call Call_001_5D42                            ; $58CB: $CD $42 $5D
    ld   b, $81                                   ; $58CE: $06 $81
    bit  3, a                                     ; $58D0: $CB $5F
    jr   nz, jr_001_58D6                          ; $58D2: $20 $02

    ld   b, $A1                                   ; $58D4: $06 $A1

jr_001_58D6:
    ld   e, $00                                   ; $58D6: $1E $00
    ld   a, b                                     ; $58D8: $78
    ld   [de], a                                  ; $58D9: $12
    ld   b, $2E                                   ; $58DA: $06 $2E
    jp   SetQueuedDataSelectionId                 ; $58DC: $C3 $64 $1F


    call AdvanceActorFixedPointMovement           ; $58DF: $CD $93 $4A
    ld   hl, $1B13                                ; $58E2: $21 $13 $1B
    call SharedPlayerContactComparator            ; $58E5: $CD $4B $7B
    ld   bc, $1612                                ; $58E8: $01 $12 $16
    call ComparePlayerProjectileWithActor         ; $58EB: $CD $88 $7B
    jr   nc, jr_001_58F6                          ; $58EE: $30 $06

    ld   bc, $7D76                                ; $58F0: $01 $76 $7D
    call Call_001_7BFF                            ; $58F3: $CD $FF $7B

jr_001_58F6:
    ld   e, $1A                                   ; $58F6: $1E $1A
    ld   a, [de]                                  ; $58F8: $1A
    dec  a                                        ; $58F9: $3D
    ld   [de], a                                  ; $58FA: $12
    ret  nz                                       ; $58FB: $C0

    ld   e, $1A                                   ; $58FC: $1E $1A
    inc  a                                        ; $58FE: $3C
    ld   [de], a                                  ; $58FF: $12
    ld   e, $0C                                   ; $5900: $1E $0C
    inc  a                                        ; $5902: $3C
    ld   [de], a                                  ; $5903: $12
    call Call_000_0BBF                            ; $5904: $CD $BF $0B
    ld   a, [$DF0B]                               ; $5907: $FA $0B $DF
    and  $03                                      ; $590A: $E6 $03
    or   $80                                      ; $590C: $F6 $80
    ld   e, $0D                                   ; $590E: $1E $0D
    ld   [de], a                                  ; $5910: $12
    ld   e, $0E                                   ; $5911: $1E $0E
    ld   a, $30                                   ; $5913: $3E $30
    ld   [de], a                                  ; $5915: $12
    jr   jr_001_58CB                              ; $5916: $18 $B3

    ld   e, $1A                                   ; $5918: $1E $1A
    ld   a, [de]                                  ; $591A: $1A
    dec  a                                        ; $591B: $3D
    ld   [de], a                                  ; $591C: $12
    jr   nz, jr_001_5950                          ; $591D: $20 $31

    ld   a, $3F                                   ; $591F: $3E $3F
    ld   [de], a                                  ; $5921: $12
    call Call_001_5D42                            ; $5922: $CD $42 $5D
    or   $10                                      ; $5925: $F6 $10
    ld   c, a                                     ; $5927: $4F
    ld   e, $0D                                   ; $5928: $1E $0D
    ld   a, [de]                                  ; $592A: $1A
    rrca                                          ; $592B: $0F
    ld   [de], a                                  ; $592C: $12
    bit  4, a                                     ; $592D: $CB $67
    jp   nz, Jump_001_5964                        ; $592F: $C2 $64 $59

    ld   b, $08                                   ; $5932: $06 $08
    jr   c, jr_001_5938                           ; $5934: $38 $02

    ld   b, $FC                                   ; $5936: $06 $FC

jr_001_5938:
    xor  a                                        ; $5938: $AF
    ld   [$C7C4], a                               ; $5939: $EA $C4 $C7
    push bc                                       ; $593C: $C5
    call FindAvailableWorldActorPage              ; $593D: $CD $5D $4D
    ld   b, $25                                   ; $5940: $06 $25
    call Call_001_7D3F                            ; $5942: $CD $3F $7D
    pop  bc                                       ; $5945: $C1
    ld   l, $03                                   ; $5946: $2E $03
    ld   a, [hl]                                  ; $5948: $7E
    add  b                                        ; $5949: $80
    ld   [hl], a                                  ; $594A: $77
    ld   l, $0B                                   ; $594B: $2E $0B
    ld   a, $02                                   ; $594D: $3E $02
    ld   [hl], a                                  ; $594F: $77

jr_001_5950:
    ld   hl, $1B13                                ; $5950: $21 $13 $1B
    call SharedPlayerContactComparator            ; $5953: $CD $4B $7B
    ld   bc, $1612                                ; $5956: $01 $12 $16
    call ComparePlayerProjectileWithActor         ; $5959: $CD $88 $7B
    ret  nc                                       ; $595C: $D0

    ld   bc, $7D76                                ; $595D: $01 $76 $7D
    call Call_001_7BFF                            ; $5960: $CD $FF $7B
    ret                                           ; $5963: $C9


Jump_001_5964:
    ld   e, $0C                                   ; $5964: $1E $0C
    ld   a, $03                                   ; $5966: $3E $03
    ld   [de], a                                  ; $5968: $12
    ld   e, $1A                                   ; $5969: $1E $1A
    ld   a, $10                                   ; $596B: $3E $10
    ld   [de], a                                  ; $596D: $12
    ld   e, $01                                   ; $596E: $1E $01
    ld   a, [de]                                  ; $5970: $1A
    xor  $08                                      ; $5971: $EE $08
    ld   [de], a                                  ; $5973: $12
    jp   Jump_001_58CB                            ; $5974: $C3 $CB $58


    call AdvanceActorFixedPointMovement           ; $5977: $CD $93 $4A
    ld   hl, $1B13                                ; $597A: $21 $13 $1B
    call SharedPlayerContactComparator            ; $597D: $CD $4B $7B
    ld   bc, $1612                                ; $5980: $01 $12 $16
    call ComparePlayerProjectileWithActor         ; $5983: $CD $88 $7B
    jr   nc, jr_001_598E                          ; $5986: $30 $06

    ld   bc, $7D76                                ; $5988: $01 $76 $7D
    call Call_001_7BFF                            ; $598B: $CD $FF $7B

jr_001_598E:
    ld   e, $1A                                   ; $598E: $1E $1A
    ld   a, [de]                                  ; $5990: $1A
    dec  a                                        ; $5991: $3D
    ld   [de], a                                  ; $5992: $12
    ret  nz                                       ; $5993: $C0

    ld   a, $3F                                   ; $5994: $3E $3F
    ld   [de], a                                  ; $5996: $12
    ld   e, $0C                                   ; $5997: $1E $0C
    ld   a, $04                                   ; $5999: $3E $04
    ld   [de], a                                  ; $599B: $12
    ld   e, $0E                                   ; $599C: $1E $0E
    ld   a, $2F                                   ; $599E: $3E $2F
    ld   [de], a                                  ; $59A0: $12
    jp   Jump_001_58CB                            ; $59A1: $C3 $CB $58


    ld   e, $1A                                   ; $59A4: $1E $1A
    ld   a, [de]                                  ; $59A6: $1A
    dec  a                                        ; $59A7: $3D
    ld   [de], a                                  ; $59A8: $12
    ret  nz                                       ; $59A9: $C0

    ld   e, $0C                                   ; $59AA: $1E $0C
    ld   [de], a                                  ; $59AC: $12
    ld   e, $01                                   ; $59AD: $1E $01
    ld   a, [de]                                  ; $59AF: $1A
    xor  $08                                      ; $59B0: $EE $08
    ld   [de], a                                  ; $59B2: $12
    ret                                           ; $59B3: $C9


    ld   e, $0C                                   ; $59B4: $1E $0C
    ld   a, [de]                                  ; $59B6: $1A
    dec  a                                        ; $59B7: $3D
    jp   z, Jump_001_677E                         ; $59B8: $CA $7E $67

    ld   a, $42                                   ; $59BB: $3E $42
    jp   Jump_001_676F                            ; $59BD: $C3 $6F $67


    ld   e, $0C                                   ; $59C0: $1E $0C
    ld   a, [de]                                  ; $59C2: $1A
    dec  a                                        ; $59C3: $3D
    jp   z, Jump_001_677E                         ; $59C4: $CA $7E $67

    ld   a, $37                                   ; $59C7: $3E $37
    jp   Jump_001_676F                            ; $59C9: $C3 $6F $67


    ld   e, $0C                                   ; $59CC: $1E $0C
    ld   a, [de]                                  ; $59CE: $1A
    dec  a                                        ; $59CF: $3D
    jp   z, Jump_001_6794                         ; $59D0: $CA $94 $67

    ld   a, $21                                   ; $59D3: $3E $21
    jp   Jump_001_676F                            ; $59D5: $C3 $6F $67


    ld   e, $0C                                   ; $59D8: $1E $0C
    ld   a, [de]                                  ; $59DA: $1A
    dec  a                                        ; $59DB: $3D
    jp   z, Jump_001_677E                         ; $59DC: $CA $7E $67

    ld   a, $4B                                   ; $59DF: $3E $4B
    jp   Jump_001_676F                            ; $59E1: $C3 $6F $67


WorldEntityAction26Handler::
    ld   e, $0C                                   ; $59E4: $1E $0C
    ld   a, [de]                                  ; $59E6: $1A
    dec  a                                        ; $59E7: $3D
    jr   z, jr_001_5A03                           ; $59E8: $28 $19

    ld   b, $25                                   ; $59EA: $06 $25
    ld   e, $09                                   ; $59EC: $1E $09
    ld   a, [de]                                  ; $59EE: $1A
    cp   $26                                      ; $59EF: $FE $26
    jr   z, jr_001_59F5                           ; $59F1: $28 $02

    inc  b                                        ; $59F3: $04
    inc  b                                        ; $59F4: $04

jr_001_59F5:
    ld   a, b                                     ; $59F5: $78
    call Call_001_7D69                            ; $59F6: $CD $69 $7D
    ld   e, $0C                                   ; $59F9: $1E $0C
    inc  a                                        ; $59FB: $3C
    ld   [de], a                                  ; $59FC: $12
    ld   e, $00                                   ; $59FD: $1E $00
    ld   [de], a                                  ; $59FF: $12
    jp   $4A6A                                    ; $5A00: $C3 $6A $4A


jr_001_5A03:
    call Call_001_7D61                            ; $5A03: $CD $61 $7D
    call AdvanceActorFixedPointMovement           ; $5A06: $CD $93 $4A
    ld   hl, $100F                                ; $5A09: $21 $0F $10
    call SharedPlayerContactComparator            ; $5A0C: $CD $4B $7B
    ld   bc, $0F0E                                ; $5A0F: $01 $0E $0F
    call ComparePlayerProjectileWithActor         ; $5A12: $CD $88 $7B
    jr   nc, jr_001_5A34                          ; $5A15: $30 $1D

    ld   e, $09                                   ; $5A17: $1E $09
    ld   a, [de]                                  ; $5A19: $1A
    cp   $26                                      ; $5A1A: $FE $26
    jr   z, jr_001_5A2A                           ; $5A1C: $28 $0C

    inc  l                                        ; $5A1E: $2C
    ld   a, [hl]                                  ; $5A1F: $7E
    and  $0F                                      ; $5A20: $E6 $0F
    ld   b, a                                     ; $5A22: $47
    ld   e, l                                     ; $5A23: $5D
    ld   a, [de]                                  ; $5A24: $1A
    and  $0F                                      ; $5A25: $E6 $0F
    cp   b                                        ; $5A27: $B8
    jr   nz, jr_001_5A34                          ; $5A28: $20 $0A

jr_001_5A2A:
    ld   e, $0A                                   ; $5A2A: $1E $0A
    ld   a, [de]                                  ; $5A2C: $1A
    dec  a                                        ; $5A2D: $3D
    ld   [de], a                                  ; $5A2E: $12
    jr   nz, jr_001_5A34                          ; $5A2F: $20 $03

    jp   Jump_001_7BC7                            ; $5A31: $C3 $C7 $7B


jr_001_5A34:
    ld   bc, $C660                                ; $5A34: $01 $60 $C6
    ld   e, $01                                   ; $5A37: $1E $01
    ld   a, [de]                                  ; $5A39: $1A
    bit  3, a                                     ; $5A3A: $CB $5F
    jr   z, jr_001_5A3F                           ; $5A3C: $28 $01

    inc  c                                        ; $5A3E: $0C

jr_001_5A3F:
    push bc                                       ; $5A3F: $C5
    ld   hl, $F00A                                ; $5A40: $21 $0A $F0
    call Call_001_6DCA                            ; $5A43: $CD $CA $6D
    pop  bc                                       ; $5A46: $C1
    ld   a, [bc]                                  ; $5A47: $0A
    and  a                                        ; $5A48: $A7
    jp   nz, Jump_001_5A57                        ; $5A49: $C2 $57 $5A

    push bc                                       ; $5A4C: $C5
    ld   hl, $FE0A                                ; $5A4D: $21 $0A $FE
    call Call_001_6DCA                            ; $5A50: $CD $CA $6D
    pop  bc                                       ; $5A53: $C1
    ld   a, [bc]                                  ; $5A54: $0A
    and  a                                        ; $5A55: $A7
    ret  nz                                       ; $5A56: $C0

Jump_001_5A57:
    ld   e, $01                                   ; $5A57: $1E $01
    ld   a, [de]                                  ; $5A59: $1A
    xor  $08                                      ; $5A5A: $EE $08
    ld   [de], a                                  ; $5A5C: $12
    dec  e                                        ; $5A5D: $1D
    ld   a, [de]                                  ; $5A5E: $1A
    xor  $20                                      ; $5A5F: $EE $20
    ld   [de], a                                  ; $5A61: $12
    ret                                           ; $5A62: $C9


    ld   e, $0C                                   ; $5A63: $1E $0C
    ld   a, [de]                                  ; $5A65: $1A
    and  a                                        ; $5A66: $A7
    jr   z, jr_001_5A7E                           ; $5A67: $28 $15

    ld   b, a                                     ; $5A69: $47
    ld   e, $00                                   ; $5A6A: $1E $00
    ld   a, [de]                                  ; $5A6C: $1A
    bit  3, a                                     ; $5A6D: $CB $5F
    ret  nz                                       ; $5A6F: $C0

    ld   a, b                                     ; $5A70: $78
    call Call_000_0B7D                            ; $5A71: $CD $7D $0B
    ld   a, [hl]                                  ; $5A74: $7E
    ld   e, d                                     ; $5A75: $5A
    sub  e                                        ; $5A76: $93
    ld   e, d                                     ; $5A77: $5A
    add  sp, $5A                                  ; $5A78: $E8 $5A
    ld   [de], a                                  ; $5A7A: $12
    ld   e, e                                     ; $5A7B: $5B
    inc  hl                                       ; $5A7C: $23
    ld   e, e                                     ; $5A7D: $5B

jr_001_5A7E:
    ld   a, $31                                   ; $5A7E: $3E $31
    call Call_001_7D69                            ; $5A80: $CD $69 $7D
    ld   e, $18                                   ; $5A83: $1E $18
    ld   [de], a                                  ; $5A85: $12
    inc  e                                        ; $5A86: $1C
    ld   [de], a                                  ; $5A87: $12
    inc  e                                        ; $5A88: $1C
    inc  a                                        ; $5A89: $3C
    ld   e, $0C                                   ; $5A8A: $1E $0C
    ld   [de], a                                  ; $5A8C: $12
    ld   e, $1A                                   ; $5A8D: $1E $1A
    ld   a, $20                                   ; $5A8F: $3E $20
    ld   [de], a                                  ; $5A91: $12
    ret                                           ; $5A92: $C9


    ld   bc, $4040                                ; $5A93: $01 $40 $40
    call Call_001_7C40                            ; $5A96: $CD $40 $7C
    jr   nc, jr_001_5ABD                          ; $5A99: $30 $22

    ld   e, $13                                   ; $5A9B: $1E $13
    xor  a                                        ; $5A9D: $AF
    ld   [de], a                                  ; $5A9E: $12
    ld   e, $0C                                   ; $5A9F: $1E $0C
    ld   a, $02                                   ; $5AA1: $3E $02
    ld   [de], a                                  ; $5AA3: $12
    ld   e, $0D                                   ; $5AA4: $1E $0D
    ld   a, $3F                                   ; $5AA6: $3E $3F
    ld   [de], a                                  ; $5AA8: $12
    call Call_001_5D42                            ; $5AA9: $CD $42 $5D
    or   $10                                      ; $5AAC: $F6 $10
    ld   e, $01                                   ; $5AAE: $1E $01
    ld   [de], a                                  ; $5AB0: $12
    call $4A6A                                    ; $5AB1: $CD $6A $4A
    jr   jr_001_5ABD                              ; $5AB4: $18 $07

Jump_001_5AB6:
jr_001_5AB6:
    ld   e, $0D                                   ; $5AB6: $1E $0D
    ld   a, [de]                                  ; $5AB8: $1A
    dec  a                                        ; $5AB9: $3D
    ld   [de], a                                  ; $5ABA: $12
    jr   z, jr_001_5ACC                           ; $5ABB: $28 $0F

Jump_001_5ABD:
jr_001_5ABD:
    ld   hl, $130F                                ; $5ABD: $21 $0F $13
    call SharedPlayerContactComparator            ; $5AC0: $CD $4B $7B
    jr   c, jr_001_5ACC                           ; $5AC3: $38 $07

    ld   bc, $0E0E                                ; $5AC5: $01 $0E $0E
    call ComparePlayerProjectileWithActor         ; $5AC8: $CD $88 $7B
    ret  nc                                       ; $5ACB: $D0

Jump_001_5ACC:
jr_001_5ACC:
    ld   b, $25                                   ; $5ACC: $06 $25
    ld   e, $12                                   ; $5ACE: $1E $12
    ld   a, [de]                                  ; $5AD0: $1A
    cp   $58                                      ; $5AD1: $FE $58
    jr   c, jr_001_5AD6                           ; $5AD3: $38 $01

    inc  b                                        ; $5AD5: $04

jr_001_5AD6:
    ld   a, b                                     ; $5AD6: $78
    rst  RST_28                                   ; $5AD7: $EF
    ld   e, $0A                                   ; $5AD8: $1E $0A
    ld   a, $09                                   ; $5ADA: $3E $09
    ld   [de], a                                  ; $5ADC: $12
    ld   a, $0F                                   ; $5ADD: $3E $0F
    call Call_001_7D69                            ; $5ADF: $CD $69 $7D
    ld   e, $0C                                   ; $5AE2: $1E $0C
    ld   a, $04                                   ; $5AE4: $3E $04
    ld   [de], a                                  ; $5AE6: $12
    ret                                           ; $5AE7: $C9


    call AdvanceActorFixedPointMovement           ; $5AE8: $CD $93 $4A
    call Call_001_7B18                            ; $5AEB: $CD $18 $7B
    ld   hl, $F400                                ; $5AEE: $21 $00 $F4
    ld   e, $09                                   ; $5AF1: $1E $09
    ld   a, [de]                                  ; $5AF3: $1A
    cp   $29                                      ; $5AF4: $FE $29
    jr   z, jr_001_5AB6                           ; $5AF6: $28 $BE

    call Call_001_6DCA                            ; $5AF8: $CD $CA $6D
    ld   a, [$C662]                               ; $5AFB: $FA $62 $C6
    and  a                                        ; $5AFE: $A7
    jp   z, Jump_001_5AB6                         ; $5AFF: $CA $B6 $5A

    ld   e, $18                                   ; $5B02: $1E $18
    xor  a                                        ; $5B04: $AF
    ld   [de], a                                  ; $5B05: $12
    inc  e                                        ; $5B06: $1C
    ld   a, $03                                   ; $5B07: $3E $03
    ld   [de], a                                  ; $5B09: $12
    ld   e, $0C                                   ; $5B0A: $1E $0C
    ld   a, $03                                   ; $5B0C: $3E $03
    ld   [de], a                                  ; $5B0E: $12
    jp   Jump_001_5AB6                            ; $5B0F: $C3 $B6 $5A


    call AdvanceActorFixedPointMovement           ; $5B12: $CD $93 $4A
    call Call_001_7AED                            ; $5B15: $CD $ED $7A
    jp   nc, Jump_001_5AB6                        ; $5B18: $D2 $B6 $5A

    ld   e, $0C                                   ; $5B1B: $1E $0C
    ld   a, $02                                   ; $5B1D: $3E $02
    ld   [de], a                                  ; $5B1F: $12
    jp   Jump_001_5AB6                            ; $5B20: $C3 $B6 $5A


    ld   hl, $1B17                                ; $5B23: $21 $17 $1B
    call SharedPlayerContactComparator            ; $5B26: $CD $4B $7B

Jump_001_5B29:
    ld   e, $0A                                   ; $5B29: $1E $0A
    ld   a, [de]                                  ; $5B2B: $1A
    dec  a                                        ; $5B2C: $3D
    ld   [de], a                                  ; $5B2D: $12
    ret  nz                                       ; $5B2E: $C0

    ld   e, $00                                   ; $5B2F: $1E $00
    ld   a, [de]                                  ; $5B31: $1A
    ld   b, a                                     ; $5B32: $47
    xor  a                                        ; $5B33: $AF
    ld   [de], a                                  ; $5B34: $12
    bit  1, b                                     ; $5B35: $CB $48
    jp   z, ClearPlacementStatusBit               ; $5B37: $CA $F2 $7B

    ret                                           ; $5B3A: $C9


    ld   e, $0C                                   ; $5B3B: $1E $0C
    ld   a, [de]                                  ; $5B3D: $1A
    and  a                                        ; $5B3E: $A7
    jr   z, jr_001_5B5D                           ; $5B3F: $28 $1C

    ld   b, a                                     ; $5B41: $47
    ld   e, $00                                   ; $5B42: $1E $00
    ld   a, [de]                                  ; $5B44: $1A
    bit  3, a                                     ; $5B45: $CB $5F
    jr   nz, jr_001_5B57                          ; $5B47: $20 $0E

    ld   a, b                                     ; $5B49: $78
    call Call_000_0B7D                            ; $5B4A: $CD $7D $0B
    ld   e, l                                     ; $5B4D: $5D
    ld   e, e                                     ; $5B4E: $5B
    ld   [hl], h                                  ; $5B4F: $74
    ld   e, e                                     ; $5B50: $5B
    add  sp, $5A                                  ; $5B51: $E8 $5A
    ld   [de], a                                  ; $5B53: $12
    ld   e, e                                     ; $5B54: $5B
    inc  hl                                       ; $5B55: $23
    ld   e, e                                     ; $5B56: $5B

jr_001_5B57:
    bit  1, a                                     ; $5B57: $CB $4F
    ret  z                                        ; $5B59: $C8

    xor  a                                        ; $5B5A: $AF
    ld   [de], a                                  ; $5B5B: $12
    ret                                           ; $5B5C: $C9


jr_001_5B5D:
    ld   a, $31                                   ; $5B5D: $3E $31
    call Call_001_7D69                            ; $5B5F: $CD $69 $7D
    inc  a                                        ; $5B62: $3C
    ld   e, $0C                                   ; $5B63: $1E $0C
    ld   [de], a                                  ; $5B65: $12
    ld   e, $18                                   ; $5B66: $1E $18
    ld   [de], a                                  ; $5B68: $12
    inc  e                                        ; $5B69: $1C
    ld   a, $03                                   ; $5B6A: $3E $03
    ld   [de], a                                  ; $5B6C: $12
    inc  e                                        ; $5B6D: $1C
    ld   a, $40                                   ; $5B6E: $3E $40
    ld   [de], a                                  ; $5B70: $12
    jp   $4A6A                                    ; $5B71: $C3 $6A $4A


    ld   e, $11                                   ; $5B74: $1E $11
    ld   a, [de]                                  ; $5B76: $1A
    ld   b, a                                     ; $5B77: $47
    ld   a, [$C211]                               ; $5B78: $FA $11 $C2
    sub  b                                        ; $5B7B: $90
    add  $02                                      ; $5B7C: $C6 $02
    and  $FC                                      ; $5B7E: $E6 $FC
    jp   nz, Jump_001_5ABD                        ; $5B80: $C2 $BD $5A

    call Call_001_5D42                            ; $5B83: $CD $42 $5D
    or   $30                                      ; $5B86: $F6 $30
    ld   e, $01                                   ; $5B88: $1E $01
    ld   [de], a                                  ; $5B8A: $12
    call $4A6A                                    ; $5B8B: $CD $6A $4A
    ld   e, $0D                                   ; $5B8E: $1E $0D
    ld   a, $3F                                   ; $5B90: $3E $3F
    ld   [de], a                                  ; $5B92: $12
    ld   e, $0C                                   ; $5B93: $1E $0C
    ld   a, $03                                   ; $5B95: $3E $03
    ld   [de], a                                  ; $5B97: $12
    ret                                           ; $5B98: $C9


    ld   e, $0C                                   ; $5B99: $1E $0C
    ld   a, [de]                                  ; $5B9B: $1A
    call Call_000_0B7D                            ; $5B9C: $CD $7D $0B
    xor  l                                        ; $5B9F: $AD
    ld   e, e                                     ; $5BA0: $5B
    cp   e                                        ; $5BA1: $BB
    ld   e, e                                     ; $5BA2: $5B
    db   $DD                                      ; $5BA3: $DD
    ld   e, e                                     ; $5BA4: $5B
    dec  e                                        ; $5BA5: $1D
    ld   e, h                                     ; $5BA6: $5C
    inc  [hl]                                     ; $5BA7: $34
    ld   e, h                                     ; $5BA8: $5C
    ld   e, b                                     ; $5BA9: $58
    ld   e, h                                     ; $5BAA: $5C
    ld   l, b                                     ; $5BAB: $68
    ld   e, h                                     ; $5BAC: $5C
    ld   e, $00                                   ; $5BAD: $1E $00
    ld   a, [de]                                  ; $5BAF: $1A
    set  4, a                                     ; $5BB0: $CB $E7
    ld   [de], a                                  ; $5BB2: $12
    ld   a, $01                                   ; $5BB3: $3E $01
    ld   e, $0C                                   ; $5BB5: $1E $0C
    ld   [de], a                                  ; $5BB7: $12
    jp   $4A6A                                    ; $5BB8: $C3 $6A $4A


    ld   bc, $FF30                                ; $5BBB: $01 $30 $FF
    call Call_001_7C40                            ; $5BBE: $CD $40 $7C
    ret  nc                                       ; $5BC1: $D0

    ld   e, $00                                   ; $5BC2: $1E $00
    ld   a, [de]                                  ; $5BC4: $1A
    res  4, a                                     ; $5BC5: $CB $A7
    ld   [de], a                                  ; $5BC7: $12
    ld   a, $52                                   ; $5BC8: $3E $52
    call Call_001_7D69                            ; $5BCA: $CD $69 $7D
    ld   e, $13                                   ; $5BCD: $1E $13
    ld   a, $40                                   ; $5BCF: $3E $40
    ld   [de], a                                  ; $5BD1: $12
    ld   e, $1A                                   ; $5BD2: $1E $1A
    ld   a, $18                                   ; $5BD4: $3E $18
    ld   [de], a                                  ; $5BD6: $12
    ld   e, $0C                                   ; $5BD7: $1E $0C
    ld   a, $06                                   ; $5BD9: $3E $06
    ld   [de], a                                  ; $5BDB: $12
    ret                                           ; $5BDC: $C9


    call AdvanceActorFixedPointMovement           ; $5BDD: $CD $93 $4A
    ld   hl, $E40C                                ; $5BE0: $21 $0C $E4
    call Call_001_6DCA                            ; $5BE3: $CD $CA $6D
    ld   a, [$C662]                               ; $5BE6: $FA $62 $C6
    and  a                                        ; $5BE9: $A7
    jr   nz, jr_001_5C08                          ; $5BEA: $20 $1C

    ld   e, $1A                                   ; $5BEC: $1E $1A
    ld   a, [de]                                  ; $5BEE: $1A
    dec  a                                        ; $5BEF: $3D
    ld   [de], a                                  ; $5BF0: $12
    jp   z, Jump_001_5C28                         ; $5BF1: $CA $28 $5C

Jump_001_5BF4:
    ld   hl, $1713                                ; $5BF4: $21 $13 $17
    call SharedPlayerContactComparator            ; $5BF7: $CD $4B $7B
    ld   bc, $1212                                ; $5BFA: $01 $12 $12
    call ComparePlayerProjectileWithActor         ; $5BFD: $CD $88 $7B
    ret  nc                                       ; $5C00: $D0

    ld   bc, $7D76                                ; $5C01: $01 $76 $7D
    call Call_001_7BFF                            ; $5C04: $CD $FF $7B
    ret                                           ; $5C07: $C9


jr_001_5C08:
    ld   a, $55                                   ; $5C08: $3E $55
    call Call_001_7D69                            ; $5C0A: $CD $69 $7D
    ld   e, $1A                                   ; $5C0D: $1E $1A
    ld   a, $0F                                   ; $5C0F: $3E $0F
    ld   [de], a                                  ; $5C11: $12
    ld   e, $0C                                   ; $5C12: $1E $0C
    ld   a, $03                                   ; $5C14: $3E $03
    ld   [de], a                                  ; $5C16: $12
    ld   e, $13                                   ; $5C17: $1E $13
    ld   a, $40                                   ; $5C19: $3E $40
    ld   [de], a                                  ; $5C1B: $12
    ret                                           ; $5C1C: $C9


    ld   e, $1A                                   ; $5C1D: $1E $1A
    ld   a, [de]                                  ; $5C1F: $1A
    dec  a                                        ; $5C20: $3D
    ld   [de], a                                  ; $5C21: $12
    ret  nz                                       ; $5C22: $C0

    ld   a, $54                                   ; $5C23: $3E $54
    call Call_001_7D69                            ; $5C25: $CD $69 $7D

Jump_001_5C28:
    ld   e, $01                                   ; $5C28: $1E $01
    ld   a, [de]                                  ; $5C2A: $1A
    xor  $08                                      ; $5C2B: $EE $08
    ld   [de], a                                  ; $5C2D: $12
    ld   e, $0C                                   ; $5C2E: $1E $0C
    ld   a, $04                                   ; $5C30: $3E $04
    ld   [de], a                                  ; $5C32: $12
    ret                                           ; $5C33: $C9


    call AdvanceActorFixedPointMovement           ; $5C34: $CD $93 $4A
    ld   hl, $FC0C                                ; $5C37: $21 $0C $FC
    call Call_001_6DCA                            ; $5C3A: $CD $CA $6D
    ld   a, [$C662]                               ; $5C3D: $FA $62 $C6
    and  a                                        ; $5C40: $A7
    jp   z, Jump_001_5BF4                         ; $5C41: $CA $F4 $5B

    ld   a, $53                                   ; $5C44: $3E $53
    call Call_001_7D69                            ; $5C46: $CD $69 $7D
    ld   e, $13                                   ; $5C49: $1E $13
    ld   a, $40                                   ; $5C4B: $3E $40
    ld   [de], a                                  ; $5C4D: $12
    ld   e, $1A                                   ; $5C4E: $1E $1A
    rrca                                          ; $5C50: $0F
    ld   [de], a                                  ; $5C51: $12
    ld   e, $0C                                   ; $5C52: $1E $0C
    ld   a, $05                                   ; $5C54: $3E $05
    ld   [de], a                                  ; $5C56: $12
    ret                                           ; $5C57: $C9


    ld   e, $1A                                   ; $5C58: $1E $1A
    ld   a, [de]                                  ; $5C5A: $1A
    dec  a                                        ; $5C5B: $3D
    ld   [de], a                                  ; $5C5C: $12
    ret  nz                                       ; $5C5D: $C0

    ld   e, $0C                                   ; $5C5E: $1E $0C
    ld   [de], a                                  ; $5C60: $12
    ld   e, $01                                   ; $5C61: $1E $01
    ld   a, [de]                                  ; $5C63: $1A
    xor  $08                                      ; $5C64: $EE $08
    ld   [de], a                                  ; $5C66: $12
    ret                                           ; $5C67: $C9


    ld   e, $1A                                   ; $5C68: $1E $1A
    ld   a, [de]                                  ; $5C6A: $1A
    dec  a                                        ; $5C6B: $3D
    ld   [de], a                                  ; $5C6C: $12
    jp   nz, Jump_001_5BF4                        ; $5C6D: $C2 $F4 $5B

    ld   a, $20                                   ; $5C70: $3E $20
    ld   [de], a                                  ; $5C72: $12
    ld   e, $0C                                   ; $5C73: $1E $0C
    ld   a, $02                                   ; $5C75: $3E $02
    ld   [de], a                                  ; $5C77: $12
    ld   [$C7C4], a                               ; $5C78: $EA $C4 $C7
    call Call_001_7C7B                            ; $5C7B: $CD $7B $7C
    or   $30                                      ; $5C7E: $F6 $30
    ld   c, a                                     ; $5C80: $4F
    call FindAvailableWorldActorPage              ; $5C81: $CD $5D $4D
    ld   b, $2B                                   ; $5C84: $06 $2B
    jp   Jump_001_7D3F                            ; $5C86: $C3 $3F $7D


    ld   e, $0C                                   ; $5C89: $1E $0C
    ld   a, [de]                                  ; $5C8B: $1A
    and  a                                        ; $5C8C: $A7
    jr   z, jr_001_5CA4                           ; $5C8D: $28 $15

    ld   b, a                                     ; $5C8F: $47
    ld   e, $00                                   ; $5C90: $1E $00
    ld   a, [de]                                  ; $5C92: $1A
    bit  3, a                                     ; $5C93: $CB $5F
    ret  nz                                       ; $5C95: $C0

    ld   a, b                                     ; $5C96: $78
    call Call_000_0B7D                            ; $5C97: $CD $7D $0B
    and  h                                        ; $5C9A: $A4
    ld   e, h                                     ; $5C9B: $5C
    or   e                                        ; $5C9C: $B3
    ld   e, h                                     ; $5C9D: $5C
    ret  c                                        ; $5C9E: $D8

    ld   e, h                                     ; $5C9F: $5C
    cpl                                           ; $5CA0: $2F
    ld   e, l                                     ; $5CA1: $5D
    ld   a, [de]                                  ; $5CA2: $1A
    ld   e, l                                     ; $5CA3: $5D

jr_001_5CA4:
    ld   a, $3F                                   ; $5CA4: $3E $3F
    call Call_001_7D69                            ; $5CA6: $CD $69 $7D
    ld   e, $0C                                   ; $5CA9: $1E $0C
    inc  a                                        ; $5CAB: $3C
    ld   [de], a                                  ; $5CAC: $12
    ld   e, $1A                                   ; $5CAD: $1E $1A
    ld   a, $40                                   ; $5CAF: $3E $40
    ld   [de], a                                  ; $5CB1: $12
    ret                                           ; $5CB2: $C9


    ld   e, $1A                                   ; $5CB3: $1E $1A
    ld   a, [de]                                  ; $5CB5: $1A
    dec  a                                        ; $5CB6: $3D
    ld   [de], a                                  ; $5CB7: $12
    jr   nz, jr_001_5CC4                          ; $5CB8: $20 $0A

    ld   e, $0E                                   ; $5CBA: $1E $0E
    ld   a, $40                                   ; $5CBC: $3E $40
    ld   [de], a                                  ; $5CBE: $12
    ld   e, $0C                                   ; $5CBF: $1E $0C
    ld   a, $02                                   ; $5CC1: $3E $02
    ld   [de], a                                  ; $5CC3: $12

Jump_001_5CC4:
jr_001_5CC4:
    ld   hl, $1713                                ; $5CC4: $21 $13 $17
    call SharedPlayerContactComparator            ; $5CC7: $CD $4B $7B
    ld   bc, $1012                                ; $5CCA: $01 $12 $10
    call ComparePlayerProjectileWithActor         ; $5CCD: $CD $88 $7B
    ret  nc                                       ; $5CD0: $D0

    ld   bc, $7D76                                ; $5CD1: $01 $76 $7D
    call Call_001_7BFF                            ; $5CD4: $CD $FF $7B
    ret                                           ; $5CD7: $C9


    ld   c, $03                                   ; $5CD8: $0E $03
    call Call_001_5D42                            ; $5CDA: $CD $42 $5D
    or   $10                                      ; $5CDD: $F6 $10
    ld   b, a                                     ; $5CDF: $47
    push bc                                       ; $5CE0: $C5
    xor  a                                        ; $5CE1: $AF
    ld   [$C7C4], a                               ; $5CE2: $EA $C4 $C7
    call FindAvailableWorldActorPage              ; $5CE5: $CD $5D $4D
    pop  bc                                       ; $5CE8: $C1
    inc  a                                        ; $5CE9: $3C
    jr   z, jr_001_5D14                           ; $5CEA: $28 $28

    ld   a, $03                                   ; $5CEC: $3E $03
    ld   [hl+], a                                 ; $5CEE: $22
    ld   a, b                                     ; $5CEF: $78
    ld   [hl+], a                                 ; $5CF0: $22
    ld   l, $03                                   ; $5CF1: $2E $03
    ld   e, l                                     ; $5CF3: $5D
    ld   a, [de]                                  ; $5CF4: $1A
    ld   [hl+], a                                 ; $5CF5: $22
    inc  e                                        ; $5CF6: $1C
    ld   a, [de]                                  ; $5CF7: $1A
    ld   [hl+], a                                 ; $5CF8: $22
    inc  l                                        ; $5CF9: $2C
    ld   e, l                                     ; $5CFA: $5D
    ld   a, [de]                                  ; $5CFB: $1A
    ld   [hl+], a                                 ; $5CFC: $22
    inc  e                                        ; $5CFD: $1C
    ld   a, [de]                                  ; $5CFE: $1A
    ld   [hl+], a                                 ; $5CFF: $22
    inc  l                                        ; $5D00: $2C
    ld   a, $2F                                   ; $5D01: $3E $2F
    ld   [hl+], a                                 ; $5D03: $22
    ld   a, $01                                   ; $5D04: $3E $01
    ld   [hl+], a                                 ; $5D06: $22
    ld   [hl+], a                                 ; $5D07: $22
    ld   a, $03                                   ; $5D08: $3E $03
    ld   [hl], a                                  ; $5D0A: $77
    ld   l, $18                                   ; $5D0B: $2E $18
    xor  a                                        ; $5D0D: $AF
    ld   [hl+], a                                 ; $5D0E: $22
    ld   [hl], c                                  ; $5D0F: $71
    ld   a, $20                                   ; $5D10: $3E $20
    inc  l                                        ; $5D12: $2C
    ld   [hl], a                                  ; $5D13: $77

jr_001_5D14:
    ld   e, $0C                                   ; $5D14: $1E $0C
    ld   a, $04                                   ; $5D16: $3E $04
    ld   [de], a                                  ; $5D18: $12
    ret                                           ; $5D19: $C9


    ld   e, $1A                                   ; $5D1A: $1E $1A
    ld   a, [de]                                  ; $5D1C: $1A
    inc  a                                        ; $5D1D: $3C
    ld   [de], a                                  ; $5D1E: $12
    cp   $40                                      ; $5D1F: $FE $40
    jp   nz, Jump_001_5CC4                        ; $5D21: $C2 $C4 $5C

    ld   e, $0E                                   ; $5D24: $1E $0E
    ld   a, $3F                                   ; $5D26: $3E $3F
    ld   [de], a                                  ; $5D28: $12
    ld   e, $0C                                   ; $5D29: $1E $0C
    ld   a, $01                                   ; $5D2B: $3E $01
    ld   [de], a                                  ; $5D2D: $12
    ret                                           ; $5D2E: $C9


    ld   a, $31                                   ; $5D2F: $3E $31
    call Call_001_7D69                            ; $5D31: $CD $69 $7D
    call $4A6A                                    ; $5D34: $CD $6A $4A
    ld   e, $0D                                   ; $5D37: $1E $0D
    ld   a, $3F                                   ; $5D39: $3E $3F
    ld   [de], a                                  ; $5D3B: $12
    ld   e, $09                                   ; $5D3C: $1E $09
    ld   a, $29                                   ; $5D3E: $3E $29
    ld   [de], a                                  ; $5D40: $12
    ret                                           ; $5D41: $C9


Call_001_5D42:
    ld   e, $12                                   ; $5D42: $1E $12
    ld   a, [de]                                  ; $5D44: $1A
    ld   b, a                                     ; $5D45: $47
    ld   a, [$C212]                               ; $5D46: $FA $12 $C2
    cp   b                                        ; $5D49: $B8
    ld   a, $0C                                   ; $5D4A: $3E $0C
    ret  c                                        ; $5D4C: $D8

    xor  $08                                      ; $5D4D: $EE $08
    ret                                           ; $5D4F: $C9


    ld   e, $0C                                   ; $5D50: $1E $0C
    ld   a, [de]                                  ; $5D52: $1A
    call Call_000_0B7D                            ; $5D53: $CD $7D $0B
    ld   h, b                                     ; $5D56: $60
    ld   e, l                                     ; $5D57: $5D
    ld   a, e                                     ; $5D58: $7B
    ld   e, l                                     ; $5D59: $5D
    sbc  d                                        ; $5D5A: $9A
    ld   e, l                                     ; $5D5B: $5D
    ldh  [c], a                                   ; $5D5C: $E2
    ld   e, l                                     ; $5D5D: $5D
    inc  hl                                       ; $5D5E: $23
    ld   e, e                                     ; $5D5F: $5B
    ld   a, $01                                   ; $5D60: $3E $01
    ld   [de], a                                  ; $5D62: $12
    ld   a, $2B                                   ; $5D63: $3E $2B
    call Call_001_7D69                            ; $5D65: $CD $69 $7D
    call Call_000_0BBF                            ; $5D68: $CD $BF $0B
    ld   e, $1A                                   ; $5D6B: $1E $1A
    ld   [de], a                                  ; $5D6D: $12

Jump_001_5D6E:
    call Call_001_7C7B                            ; $5D6E: $CD $7B $7C
    and  $08                                      ; $5D71: $E6 $08
    or   $14                                      ; $5D73: $F6 $14
    call Call_001_7C20                            ; $5D75: $CD $20 $7C
    jp   $4A6A                                    ; $5D78: $C3 $6A $4A


    call Call_001_5FC3                            ; $5D7B: $CD $C3 $5F
    ld   e, $1A                                   ; $5D7E: $1E $1A
    ld   a, [de]                                  ; $5D80: $1A
    or   a                                        ; $5D81: $B7
    jr   z, jr_001_5D89                           ; $5D82: $28 $05

    dec  a                                        ; $5D84: $3D
    ld   [de], a                                  ; $5D85: $12
    jp   Jump_001_5DFF                            ; $5D86: $C3 $FF $5D


jr_001_5D89:
    ld   bc, $20FF                                ; $5D89: $01 $FF $20
    call Call_001_7C40                            ; $5D8C: $CD $40 $7C
    jp   nc, Jump_001_5DFF                        ; $5D8F: $D2 $FF $5D

    ld   e, $0C                                   ; $5D92: $1E $0C
    ld   a, $02                                   ; $5D94: $3E $02
    ld   [de], a                                  ; $5D96: $12
    jp   Jump_001_5DFF                            ; $5D97: $C3 $FF $5D


    call Call_001_7C7B                            ; $5D9A: $CD $7B $7C
    and  $08                                      ; $5D9D: $E6 $08
    or   $14                                      ; $5D9F: $F6 $14
    call Call_001_7C20                            ; $5DA1: $CD $20 $7C
    xor  a                                        ; $5DA4: $AF
    ld   [$C7C4], a                               ; $5DA5: $EA $C4 $C7
    call FindAvailableWorldActorPage              ; $5DA8: $CD $5D $4D
    rlca                                          ; $5DAB: $07
    jr   c, jr_001_5DD7                           ; $5DAC: $38 $29

    ld   b, $07                                   ; $5DAE: $06 $07
    ld   e, $01                                   ; $5DB0: $1E $01
    ld   a, [de]                                  ; $5DB2: $1A
    and  $08                                      ; $5DB3: $E6 $08
    or   $14                                      ; $5DB5: $F6 $14
    ld   c, a                                     ; $5DB7: $4F
    call Call_001_7D3F                            ; $5DB8: $CD $3F $7D
    ld   l, $03                                   ; $5DBB: $2E $03
    ld   a, [hl]                                  ; $5DBD: $7E
    add  $08                                      ; $5DBE: $C6 $08
    ld   [hl+], a                                 ; $5DC0: $22
    ld   a, [hl]                                  ; $5DC1: $7E
    adc  $00                                      ; $5DC2: $CE $00
    ld   [hl], a                                  ; $5DC4: $77
    ld   a, $2C                                   ; $5DC5: $3E $2C
    call Call_001_7D69                            ; $5DC7: $CD $69 $7D
    ld   e, $1A                                   ; $5DCA: $1E $1A
    ld   a, $1E                                   ; $5DCC: $3E $1E
    ld   [de], a                                  ; $5DCE: $12
    ld   e, $0C                                   ; $5DCF: $1E $0C
    ld   a, $03                                   ; $5DD1: $3E $03
    ld   [de], a                                  ; $5DD3: $12
    jp   Jump_001_5DFF                            ; $5DD4: $C3 $FF $5D


jr_001_5DD7:
    call AdvanceActorFixedPointMovement           ; $5DD7: $CD $93 $4A
    ld   e, $0C                                   ; $5DDA: $1E $0C
    ld   a, $01                                   ; $5DDC: $3E $01
    ld   [de], a                                  ; $5DDE: $12
    jp   Jump_001_5DFF                            ; $5DDF: $C3 $FF $5D


    ld   e, $1A                                   ; $5DE2: $1E $1A
    ld   a, [de]                                  ; $5DE4: $1A
    dec  a                                        ; $5DE5: $3D
    ld   [de], a                                  ; $5DE6: $12
    jp   nz, Jump_001_5DFF                        ; $5DE7: $C2 $FF $5D

    call Call_000_0BBF                            ; $5DEA: $CD $BF $0B
    and  $1F                                      ; $5DED: $E6 $1F
    add  $78                                      ; $5DEF: $C6 $78
    ld   [de], a                                  ; $5DF1: $12
    ld   a, $2B                                   ; $5DF2: $3E $2B
    call Call_001_7D69                            ; $5DF4: $CD $69 $7D
    ld   a, $01                                   ; $5DF7: $3E $01
    ld   e, $0C                                   ; $5DF9: $1E $0C
    ld   [de], a                                  ; $5DFB: $12
    jp   Jump_001_5D6E                            ; $5DFC: $C3 $6E $5D


Jump_001_5DFF:
    ld   bc, $1212                                ; $5DFF: $01 $12 $12
    call ComparePlayerProjectileWithActor         ; $5E02: $CD $88 $7B
    jr   nc, jr_001_5E14                          ; $5E05: $30 $0D

    inc  l                                        ; $5E07: $2C
    ld   e, l                                     ; $5E08: $5D
    ld   a, [hl]                                  ; $5E09: $7E
    and  $08                                      ; $5E0A: $E6 $08
    ld   b, a                                     ; $5E0C: $47
    ld   a, [de]                                  ; $5E0D: $1A
    and  $08                                      ; $5E0E: $E6 $08
    xor  b                                        ; $5E10: $A8
    jr   nz, jr_001_5E14                          ; $5E11: $20 $01

    scf                                           ; $5E13: $37

jr_001_5E14:
    ld   bc, $7D76                                ; $5E14: $01 $76 $7D
    call c, Call_001_5FF5                         ; $5E17: $DC $F5 $5F
    call Call_001_7D61                            ; $5E1A: $CD $61 $7D
    ld   hl, $1810                                ; $5E1D: $21 $10 $18
    jp   SharedPlayerContactComparator            ; $5E20: $C3 $4B $7B


    ld   e, $0C                                   ; $5E23: $1E $0C
    ld   a, [de]                                  ; $5E25: $1A
    call Call_000_0B7D                            ; $5E26: $CD $7D $0B
    dec  [hl]                                     ; $5E29: $35
    ld   e, [hl]                                  ; $5E2A: $5E
    ld   d, [hl]                                  ; $5E2B: $56
    ld   e, [hl]                                  ; $5E2C: $5E
    adc  d                                        ; $5E2D: $8A
    ld   e, [hl]                                  ; $5E2E: $5E
    sbc  a                                        ; $5E2F: $9F
    ld   e, [hl]                                  ; $5E30: $5E
    inc  hl                                       ; $5E31: $23
    ld   e, e                                     ; $5E32: $5B
    xor  c                                        ; $5E33: $A9
    ld   e, [hl]                                  ; $5E34: $5E
    xor  a                                        ; $5E35: $AF
    ld   [$C7C4], a                               ; $5E36: $EA $C4 $C7
    call FindAvailableWorldActorPage              ; $5E39: $CD $5D $4D
    rlca                                          ; $5E3C: $07
    jr   c, jr_001_5E52                           ; $5E3D: $38 $13

    ld   b, $4B                                   ; $5E3F: $06 $4B
    call Call_001_7D3F                            ; $5E41: $CD $3F $7D
    ld   e, $1A                                   ; $5E44: $1E $1A
    ld   l, e                                     ; $5E46: $6B
    ld   a, h                                     ; $5E47: $7C
    ld   [de], a                                  ; $5E48: $12
    ld   [hl], d                                  ; $5E49: $72
    ld   l, $0B                                   ; $5E4A: $2E $0B
    ld   a, $02                                   ; $5E4C: $3E $02
    ld   [hl], a                                  ; $5E4E: $77
    jp   Jump_001_5EA9                            ; $5E4F: $C3 $A9 $5E


jr_001_5E52:
    xor  a                                        ; $5E52: $AF
    ld   e, a                                     ; $5E53: $5F
    ld   [de], a                                  ; $5E54: $12
    ret                                           ; $5E55: $C9


    ld   e, $1B                                   ; $5E56: $1E $1B
    ld   a, [de]                                  ; $5E58: $1A
    or   a                                        ; $5E59: $B7
    jr   z, jr_001_5E60                           ; $5E5A: $28 $04

    dec  a                                        ; $5E5C: $3D
    ld   [de], a                                  ; $5E5D: $12
    jr   jr_001_5E68                              ; $5E5E: $18 $08

jr_001_5E60:
    ld   bc, $2840                                ; $5E60: $01 $40 $28
    call Call_001_7C40                            ; $5E63: $CD $40 $7C
    jr   c, jr_001_5E6E                           ; $5E66: $38 $06

jr_001_5E68:
    call Call_001_5FC3                            ; $5E68: $CD $C3 $5F
    jp   Jump_001_5EC4                            ; $5E6B: $C3 $C4 $5E


jr_001_5E6E:
    ld   a, $4F                                   ; $5E6E: $3E $4F
    call Call_001_7D69                            ; $5E70: $CD $69 $7D
    call Call_001_5EB7                            ; $5E73: $CD $B7 $5E
    call Call_001_7C7B                            ; $5E76: $CD $7B $7C
    ld   b, a                                     ; $5E79: $47
    ld   e, $1A                                   ; $5E7A: $1E $1A
    ld   a, [de]                                  ; $5E7C: $1A
    ld   h, a                                     ; $5E7D: $67
    ld   l, $01                                   ; $5E7E: $2E $01
    ld   [hl], b                                  ; $5E80: $70
    ld   e, $0C                                   ; $5E81: $1E $0C
    ld   l, e                                     ; $5E83: $6B
    ld   a, $02                                   ; $5E84: $3E $02
    ld   [de], a                                  ; $5E86: $12
    dec  a                                        ; $5E87: $3D
    ld   [hl], a                                  ; $5E88: $77
    ret                                           ; $5E89: $C9


    ld   e, $10                                   ; $5E8A: $1E $10
    ld   a, [de]                                  ; $5E8C: $1A
    dec  a                                        ; $5E8D: $3D
    jr   nz, jr_001_5E9C                          ; $5E8E: $20 $0C

    ld   e, $1A                                   ; $5E90: $1E $1A
    ld   a, [de]                                  ; $5E92: $1A
    ld   h, a                                     ; $5E93: $67
    ld   e, $0C                                   ; $5E94: $1E $0C
    ld   a, $03                                   ; $5E96: $3E $03
    ld   [de], a                                  ; $5E98: $12
    ld   l, e                                     ; $5E99: $6B
    dec  a                                        ; $5E9A: $3D
    ld   [hl], a                                  ; $5E9B: $77

jr_001_5E9C:
    jp   Jump_001_5EC4                            ; $5E9C: $C3 $C4 $5E


    ld   e, $0F                                   ; $5E9F: $1E $0F
    xor  a                                        ; $5EA1: $AF
    ld   [de], a                                  ; $5EA2: $12
    inc  e                                        ; $5EA3: $1C
    inc  a                                        ; $5EA4: $3C
    ld   [de], a                                  ; $5EA5: $12
    jp   Jump_001_5EC4                            ; $5EA6: $C3 $C4 $5E


Jump_001_5EA9:
    ld   e, $1B                                   ; $5EA9: $1E $1B
    ld   a, $3C                                   ; $5EAB: $3E $3C
    ld   [de], a                                  ; $5EAD: $12
    ld   a, $4E                                   ; $5EAE: $3E $4E
    call Call_001_7D69                            ; $5EB0: $CD $69 $7D
    inc  a                                        ; $5EB3: $3C
    ld   e, $0C                                   ; $5EB4: $1E $0C
    ld   [de], a                                  ; $5EB6: $12

Call_001_5EB7:
    call Call_001_7C7B                            ; $5EB7: $CD $7B $7C
    and  $08                                      ; $5EBA: $E6 $08
    or   $14                                      ; $5EBC: $F6 $14
    call Call_001_7C20                            ; $5EBE: $CD $20 $7C
    call $4A6A                                    ; $5EC1: $CD $6A $4A

Jump_001_5EC4:
    call Call_001_7D61                            ; $5EC4: $CD $61 $7D
    ld   bc, $1212                                ; $5EC7: $01 $12 $12
    call ComparePlayerProjectileWithActor         ; $5ECA: $CD $88 $7B
    ld   bc, $7D76                                ; $5ECD: $01 $76 $7D
    call c, Call_001_5FF5                         ; $5ED0: $DC $F5 $5F
    ld   hl, $1810                                ; $5ED3: $21 $10 $18
    jp   SharedPlayerContactComparator            ; $5ED6: $C3 $4B $7B


    call Call_001_5FB7                            ; $5ED9: $CD $B7 $5F
    ret  nc                                       ; $5EDC: $D0

    ld   e, $0C                                   ; $5EDD: $1E $0C
    ld   a, [de]                                  ; $5EDF: $1A
    call Call_000_0B7D                            ; $5EE0: $CD $7D $0B
    db   $ED                                      ; $5EE3: $ED
    ld   e, [hl]                                  ; $5EE4: $5E
    cp   $5E                                      ; $5EE5: $FE $5E
    dec  e                                        ; $5EE7: $1D
    ld   e, a                                     ; $5EE8: $5F
    ld   l, d                                     ; $5EE9: $6A
    ld   e, a                                     ; $5EEA: $5F
    adc  c                                        ; $5EEB: $89
    ld   e, a                                     ; $5EEC: $5F
    ld   a, $4D                                   ; $5EED: $3E $4D
    call Call_001_7D69                            ; $5EEF: $CD $69 $7D
    ld   e, $1A                                   ; $5EF2: $1E $1A
    ld   a, [de]                                  ; $5EF4: $1A
    ld   h, a                                     ; $5EF5: $67
    ld   l, $01                                   ; $5EF6: $2E $01
    ld   a, [hl]                                  ; $5EF8: $7E
    call Call_001_7C20                            ; $5EF9: $CD $20 $7C
    jr   jr_001_5F08                              ; $5EFC: $18 $0A

    ld   e, $01                                   ; $5EFE: $1E $01
    ld   a, [de]                                  ; $5F00: $1A
    call Call_001_7C20                            ; $5F01: $CD $20 $7C
    ld   e, $1A                                   ; $5F04: $1E $1A
    ld   a, [de]                                  ; $5F06: $1A
    ld   h, a                                     ; $5F07: $67

jr_001_5F08:
    ld   l, $03                                   ; $5F08: $2E $03
    ld   e, l                                     ; $5F0A: $5D
    ld   a, [hl+]                                 ; $5F0B: $2A
    sub  $08                                      ; $5F0C: $D6 $08
    ld   [de], a                                  ; $5F0E: $12
    inc  e                                        ; $5F0F: $1C
    ld   a, [hl+]                                 ; $5F10: $2A
    sbc  $00                                      ; $5F11: $DE $00
    ld   [de], a                                  ; $5F13: $12
    inc  l                                        ; $5F14: $2C
    inc  e                                        ; $5F15: $1C
    inc  e                                        ; $5F16: $1C
    ld   a, [hl+]                                 ; $5F17: $2A
    ld   [de], a                                  ; $5F18: $12
    inc  e                                        ; $5F19: $1C
    ld   a, [hl]                                  ; $5F1A: $7E
    ld   [de], a                                  ; $5F1B: $12
    ret                                           ; $5F1C: $C9


    ld   e, $01                                   ; $5F1D: $1E $01
    ld   a, [de]                                  ; $5F1F: $1A
    ld   b, a                                     ; $5F20: $47
    and  $07                                      ; $5F21: $E6 $07
    jr   nz, jr_001_5F42                          ; $5F23: $20 $1D

    ld   a, b                                     ; $5F25: $78
    swap a                                        ; $5F26: $CB $37
    ld   c, a                                     ; $5F28: $4F
    ld   e, $00                                   ; $5F29: $1E $00
    ld   a, [de]                                  ; $5F2B: $1A
    and  $20                                      ; $5F2C: $E6 $20
    jr   nz, jr_001_5F3A                          ; $5F2E: $20 $0A

    ld   b, $09                                   ; $5F30: $06 $09
    sla  c                                        ; $5F32: $CB $21
    jr   c, jr_001_5F42                           ; $5F34: $38 $0C

    ld   b, $0F                                   ; $5F36: $06 $0F
    jr   jr_001_5F42                              ; $5F38: $18 $08

jr_001_5F3A:
    ld   b, $07                                   ; $5F3A: $06 $07
    sla  c                                        ; $5F3C: $CB $21
    jr   c, jr_001_5F42                           ; $5F3E: $38 $02

    ld   b, $01                                   ; $5F40: $06 $01

jr_001_5F42:
    ld   a, b                                     ; $5F42: $78
    ld   hl, $5F5A                                ; $5F43: $21 $5A $5F
    call AddAToHL                                 ; $5F46: $CD $71 $00
    ld   a, [hl]                                  ; $5F49: $7E
    call Call_001_7C20                            ; $5F4A: $CD $20 $7C
    ld   a, $03                                   ; $5F4D: $3E $03
    ld   e, $0C                                   ; $5F4F: $1E $0C
    ld   [de], a                                  ; $5F51: $12
    ld   e, $1B                                   ; $5F52: $1E $1B
    ld   a, $3C                                   ; $5F54: $3E $3C
    ld   [de], a                                  ; $5F56: $12
    jp   $4A6A                                    ; $5F57: $C3 $6A $4A


    ld   hl, $2321                                ; $5F5A: $21 $21 $23
    inc  hl                                       ; $5F5D: $23
    dec  h                                        ; $5F5E: $25
    dec  h                                        ; $5F5F: $25
    dec  h                                        ; $5F60: $25
    dec  h                                        ; $5F61: $25
    dec  hl                                       ; $5F62: $2B
    dec  hl                                       ; $5F63: $2B
    dec  hl                                       ; $5F64: $2B
    dec  hl                                       ; $5F65: $2B
    dec  hl                                       ; $5F66: $2B
    dec  l                                        ; $5F67: $2D
    dec  l                                        ; $5F68: $2D
    cpl                                           ; $5F69: $2F
    call AdvanceActorFixedPointMovement           ; $5F6A: $CD $93 $4A
    ld   e, $1B                                   ; $5F6D: $1E $1B
    ld   a, [de]                                  ; $5F6F: $1A
    dec  a                                        ; $5F70: $3D
    ld   [de], a                                  ; $5F71: $12
    jp   nz, Jump_001_5FA8                        ; $5F72: $C2 $A8 $5F

    ld   e, $01                                   ; $5F75: $1E $01
    ld   a, [de]                                  ; $5F77: $1A
    add  $08                                      ; $5F78: $C6 $08
    and  $0F                                      ; $5F7A: $E6 $0F
    or   $20                                      ; $5F7C: $F6 $20
    call Call_001_7C20                            ; $5F7E: $CD $20 $7C
    ld   e, $0C                                   ; $5F81: $1E $0C
    ld   a, $04                                   ; $5F83: $3E $04
    ld   [de], a                                  ; $5F85: $12
    jp   $4A6A                                    ; $5F86: $C3 $6A $4A


    call AdvanceActorFixedPointMovement           ; $5F89: $CD $93 $4A
    ld   e, $1A                                   ; $5F8C: $1E $1A
    ld   a, [de]                                  ; $5F8E: $1A
    ld   h, a                                     ; $5F8F: $67
    ld   e, $03                                   ; $5F90: $1E $03
    ld   l, e                                     ; $5F92: $6B
    ld   bc, $140C                                ; $5F93: $01 $0C $14
    call Call_001_7C45                            ; $5F96: $CD $45 $7C
    jr   nc, jr_001_5FA8                          ; $5F99: $30 $0D

    ld   e, $1A                                   ; $5F9B: $1E $1A
    ld   a, [de]                                  ; $5F9D: $1A
    ld   h, a                                     ; $5F9E: $67
    ld   e, $0C                                   ; $5F9F: $1E $0C
    ld   l, e                                     ; $5FA1: $6B
    ld   a, $05                                   ; $5FA2: $3E $05
    ld   [hl], a                                  ; $5FA4: $77
    xor  a                                        ; $5FA5: $AF
    ld   [de], a                                  ; $5FA6: $12
    ret                                           ; $5FA7: $C9


Jump_001_5FA8:
jr_001_5FA8:
    call Call_001_7D61                            ; $5FA8: $CD $61 $7D
    ld   bc, $0808                                ; $5FAB: $01 $08 $08
    call ComparePlayerProjectileWithActor         ; $5FAE: $CD $88 $7B
    ld   hl, $100C                                ; $5FB1: $21 $0C $10
    jp   SharedPlayerContactComparator            ; $5FB4: $C3 $4B $7B


Call_001_5FB7:
    ld   e, $1A                                   ; $5FB7: $1E $1A
    ld   a, [de]                                  ; $5FB9: $1A
    ld   h, a                                     ; $5FBA: $67
    ld   l, $00                                   ; $5FBB: $2E $00
    ld   a, [hl]                                  ; $5FBD: $7E
    rrca                                          ; $5FBE: $0F
    ret  c                                        ; $5FBF: $D8

    jp   Jump_001_7BE1                            ; $5FC0: $C3 $E1 $7B


Call_001_5FC3:
    ld   hl, $0810                                ; $5FC3: $21 $10 $08
    call Call_001_6DCA                            ; $5FC6: $CD $CA $6D
    ld   a, [$C660]                               ; $5FC9: $FA $60 $C6
    or   a                                        ; $5FCC: $B7
    jr   z, jr_001_5FE7                           ; $5FCD: $28 $18

    ld   a, [$C661]                               ; $5FCF: $FA $61 $C6
    or   a                                        ; $5FD2: $B7
    jr   z, jr_001_5FE7                           ; $5FD3: $28 $12

    ld   hl, $FC10                                ; $5FD5: $21 $10 $FC
    call Call_001_6DCA                            ; $5FD8: $CD $CA $6D
    ld   a, [$C660]                               ; $5FDB: $FA $60 $C6
    or   a                                        ; $5FDE: $B7
    jr   nz, jr_001_5FE7                          ; $5FDF: $20 $06

    ld   a, [$C661]                               ; $5FE1: $FA $61 $C6
    or   a                                        ; $5FE4: $B7
    jr   z, jr_001_5FF2                           ; $5FE5: $28 $0B

jr_001_5FE7:
    ld   e, $01                                   ; $5FE7: $1E $01
    ld   a, [de]                                  ; $5FE9: $1A
    xor  $08                                      ; $5FEA: $EE $08
    call Call_001_7C20                            ; $5FEC: $CD $20 $7C
    call $4A6A                                    ; $5FEF: $CD $6A $4A

jr_001_5FF2:
    jp   AdvanceActorFixedPointMovement           ; $5FF2: $C3 $93 $4A


Call_001_5FF5:
Jump_001_5FF5:
    ld   hl, $6013                                ; $5FF5: $21 $13 $60
    ld   a, [$DF38]                               ; $5FF8: $FA $38 $DF
    call AddAToHL                                 ; $5FFB: $CD $71 $00
    ld   e, $0A                                   ; $5FFE: $1E $0A
    ld   a, [de]                                  ; $6000: $1A
    sub  [hl]                                     ; $6001: $96
    ld   [de], a                                  ; $6002: $12
    jp   c, Jump_001_5ACC                         ; $6003: $DA $CC $5A

    ld   b, $21                                   ; $6006: $06 $21
    ld   e, $12                                   ; $6008: $1E $12
    ld   a, [de]                                  ; $600A: $1A
    cp   $58                                      ; $600B: $FE $58
    jr   c, jr_001_6010                           ; $600D: $38 $01

    inc  b                                        ; $600F: $04

jr_001_6010:
    ld   a, b                                     ; $6010: $78
    rst  RST_28                                   ; $6011: $EF
    ret                                           ; $6012: $C9


    ld   bc, $0402                                ; $6013: $01 $02 $04
    ld   [$00FA], sp                              ; $6016: $08 $FA $00
    jp   nz, $D00F                                ; $6019: $C2 $0F $D0

    ld   e, $0C                                   ; $601C: $1E $0C
    ld   a, [de]                                  ; $601E: $1A
    dec  a                                        ; $601F: $3D
    jr   z, jr_001_6036                           ; $6020: $28 $14

    ld   e, $0E                                   ; $6022: $1E $0E
    ld   a, $34                                   ; $6024: $3E $34
    ld   [de], a                                  ; $6026: $12
    inc  e                                        ; $6027: $1C
    xor  a                                        ; $6028: $AF
    ld   [de], a                                  ; $6029: $12
    inc  e                                        ; $602A: $1C
    ld   [de], a                                  ; $602B: $12
    ld   e, $1B                                   ; $602C: $1E $1B
    ld   [de], a                                  ; $602E: $12
    ld   e, $0C                                   ; $602F: $1E $0C
    inc  a                                        ; $6031: $3C
    ld   [de], a                                  ; $6032: $12
    jp   $4A6A                                    ; $6033: $C3 $6A $4A


jr_001_6036:
    call Call_001_7D61                            ; $6036: $CD $61 $7D
    ld   hl, $140E                                ; $6039: $21 $0E $14
    call SharedPlayerContactComparator            ; $603C: $CD $4B $7B
    jr   nc, jr_001_60A9                          ; $603F: $30 $68

    ld   hl, $C691                                ; $6041: $21 $91 $C6
    ld   a, [hl]                                  ; $6044: $7E
    or   $01                                      ; $6045: $F6 $01
    ld   [hl], a                                  ; $6047: $77
    ld   e, $1E                                   ; $6048: $1E $1E
    ld   a, [de]                                  ; $604A: $1A
    and  a                                        ; $604B: $A7
    jr   nz, jr_001_6067                          ; $604C: $20 $19

    push hl                                       ; $604E: $E5
    call Call_001_4A3D                            ; $604F: $CD $3D $4A
    pop  hl                                       ; $6052: $E1
    ld   a, [$C27B]                               ; $6053: $FA $7B $C2
    bit  1, a                                     ; $6056: $CB $4F
    ret  z                                        ; $6058: $C8

    ld   e, $1E                                   ; $6059: $1E $1E
    ld   a, $01                                   ; $605B: $3E $01
    ld   [de], a                                  ; $605D: $12
    ld   a, $08                                   ; $605E: $3E $08
    ld   [$C27B], a                               ; $6060: $EA $7B $C2
    xor  a                                        ; $6063: $AF
    ld   [$C2A2], a                               ; $6064: $EA $A2 $C2

Jump_001_6067:
jr_001_6067:
    call Call_001_60F5                            ; $6067: $CD $F5 $60
    ld   hl, $0101                                ; $606A: $21 $01 $01

Jump_001_606D:
    call Call_001_6DCA                            ; $606D: $CD $CA $6D
    ld   a, [$C660]                               ; $6070: $FA $60 $C6
    cp   $07                                      ; $6073: $FE $07
    jr   nz, jr_001_6094                          ; $6075: $20 $1D

    ld   a, [$C661]                               ; $6077: $FA $61 $C6
    cp   $07                                      ; $607A: $FE $07
    jr   nz, jr_001_6094                          ; $607C: $20 $16

    ld   e, $12                                   ; $607E: $1E $12
    ld   a, [de]                                  ; $6080: $1A
    ld   e, $01                                   ; $6081: $1E $01
    cp   $A0                                      ; $6083: $FE $A0
    jr   c, jr_001_608C                           ; $6085: $38 $05

    ld   a, [de]                                  ; $6087: $1A
    set  3, a                                     ; $6088: $CB $DF
    ld   [de], a                                  ; $608A: $12
    ret                                           ; $608B: $C9


jr_001_608C:
    cp   $10                                      ; $608C: $FE $10
    ret  nc                                       ; $608E: $D0

    ld   a, [de]                                  ; $608F: $1A
    res  3, a                                     ; $6090: $CB $9F
    ld   [de], a                                  ; $6092: $12
    ret                                           ; $6093: $C9


jr_001_6094:
    ld   e, $1B                                   ; $6094: $1E $1B
    ld   a, [de]                                  ; $6096: $1A
    and  a                                        ; $6097: $A7
    ret  nz                                       ; $6098: $C0

    ld   a, $17                                   ; $6099: $3E $17
    ld   [de], a                                  ; $609B: $12
    ld   e, $00                                   ; $609C: $1E $00
    ld   a, [de]                                  ; $609E: $1A
    xor  $20                                      ; $609F: $EE $20
    ld   [de], a                                  ; $60A1: $12
    inc  e                                        ; $60A2: $1C
    ld   a, [de]                                  ; $60A3: $1A
    xor  $08                                      ; $60A4: $EE $08
    ld   [de], a                                  ; $60A6: $12
    jr   jr_001_60FE                              ; $60A7: $18 $55

jr_001_60A9:
    xor  a                                        ; $60A9: $AF
    ld   [$C691], a                               ; $60AA: $EA $91 $C6
    ld   e, $1D                                   ; $60AD: $1E $1D
    ld   [de], a                                  ; $60AF: $12
    inc  e                                        ; $60B0: $1C
    ld   [de], a                                  ; $60B1: $12
    ld   b, $00                                   ; $60B2: $06 $00
    ld   hl, $080B                                ; $60B4: $21 $0B $08
    ld   e, $03                                   ; $60B7: $1E $03
    ld   a, [de]                                  ; $60B9: $1A
    ld   c, a                                     ; $60BA: $4F
    sub  $10                                      ; $60BB: $D6 $10
    ld   [de], a                                  ; $60BD: $12
    push bc                                       ; $60BE: $C5
    call Call_001_7B5A                            ; $60BF: $CD $5A $7B
    pop  bc                                       ; $60C2: $C1
    ld   e, $03                                   ; $60C3: $1E $03
    ld   a, c                                     ; $60C5: $79
    ld   [de], a                                  ; $60C6: $12
    jr   nc, jr_001_6067                          ; $60C7: $30 $9E

    ld   a, [$C27C]                               ; $60C9: $FA $7C $C2
    and  a                                        ; $60CC: $A7
    jr   z, jr_001_6067                           ; $60CD: $28 $98

    ld   a, $01                                   ; $60CF: $3E $01
    ld   [$C68D], a                               ; $60D1: $EA $8D $C6
    ld   e, $1D                                   ; $60D4: $1E $1D
    ld   [de], a                                  ; $60D6: $12
    ld   e, $03                                   ; $60D7: $1E $03
    ld   a, [de]                                  ; $60D9: $1A
    sub  $17                                      ; $60DA: $D6 $17
    ld   c, a                                     ; $60DC: $4F
    ld   a, [$C203]                               ; $60DD: $FA $03 $C2
    sub  c                                        ; $60E0: $91
    bit  7, a                                     ; $60E1: $CB $7F
    jr   z, jr_001_60EE                           ; $60E3: $28 $09

    cpl                                           ; $60E5: $2F
    inc  a                                        ; $60E6: $3C
    ld   c, a                                     ; $60E7: $4F
    call Call_001_4769                            ; $60E8: $CD $69 $47
    jp   Jump_001_6067                            ; $60EB: $C3 $67 $60


jr_001_60EE:
    ld   c, a                                     ; $60EE: $4F
    call Call_001_4711                            ; $60EF: $CD $11 $47
    jp   Jump_001_6067                            ; $60F2: $C3 $67 $60


Call_001_60F5:
    ld   e, $1B                                   ; $60F5: $1E $1B
    ld   a, [de]                                  ; $60F7: $1A
    and  a                                        ; $60F8: $A7
    jr   z, jr_001_60FE                           ; $60F9: $28 $03

    dec  a                                        ; $60FB: $3D
    ld   [de], a                                  ; $60FC: $12
    ret                                           ; $60FD: $C9


jr_001_60FE:
    call AdvanceActorFixedPointMovement           ; $60FE: $CD $93 $4A
    ld   e, $1D                                   ; $6101: $1E $1D
    ld   a, [de]                                  ; $6103: $1A
    and  a                                        ; $6104: $A7
    jr   nz, jr_001_610B                          ; $6105: $20 $04

    inc  e                                        ; $6107: $1C
    ld   a, [de]                                  ; $6108: $1A
    and  a                                        ; $6109: $A7
    ret  z                                        ; $610A: $C8

jr_001_610B:
    ld   a, [$C369]                               ; $610B: $FA $69 $C3
    ld   b, a                                     ; $610E: $47
    call Call_001_4358                            ; $610F: $CD $58 $43
    ld   a, [$C36B]                               ; $6112: $FA $6B $C3
    or   $80                                      ; $6115: $F6 $80
    ld   [$C36B], a                               ; $6117: $EA $6B $C3
    ld   e, $01                                   ; $611A: $1E $01
    ld   a, [de]                                  ; $611C: $1A
    bit  3, a                                     ; $611D: $CB $5F
    jr   nz, jr_001_6129                          ; $611F: $20 $08

    ld   c, $01                                   ; $6121: $0E $01
    call Call_001_4667                            ; $6123: $CD $67 $46
    jp   Jump_001_40BB                            ; $6126: $C3 $BB $40


jr_001_6129:
    ld   c, $01                                   ; $6129: $0E $01
    call Call_001_4694                            ; $612B: $CD $94 $46
    jp   Jump_001_405C                            ; $612E: $C3 $5C $40


    ld   a, [$C200]                               ; $6131: $FA $00 $C2
    rrca                                          ; $6134: $0F
    ret  nc                                       ; $6135: $D0

    ld   e, $0C                                   ; $6136: $1E $0C
    ld   a, [de]                                  ; $6138: $1A
    dec  a                                        ; $6139: $3D
    jr   z, jr_001_614D                           ; $613A: $28 $11

    ld   e, $0E                                   ; $613C: $1E $0E
    ld   a, $26                                   ; $613E: $3E $26
    ld   [de], a                                  ; $6140: $12
    inc  e                                        ; $6141: $1C
    xor  a                                        ; $6142: $AF
    ld   [de], a                                  ; $6143: $12
    inc  e                                        ; $6144: $1C
    ld   [de], a                                  ; $6145: $12
    ld   e, $0C                                   ; $6146: $1E $0C
    inc  a                                        ; $6148: $3C
    ld   [de], a                                  ; $6149: $12
    jp   $4A6A                                    ; $614A: $C3 $6A $4A


jr_001_614D:
    call Call_001_7D61                            ; $614D: $CD $61 $7D
    ld   hl, $180B                                ; $6150: $21 $0B $18
    call SharedPlayerContactComparator            ; $6153: $CD $4B $7B
    jr   nc, jr_001_615E                          ; $6156: $30 $06

    xor  a                                        ; $6158: $AF
    ld   [$C27B], a                               ; $6159: $EA $7B $C2
    jr   jr_001_618D                              ; $615C: $18 $2F

jr_001_615E:
    ld   hl, $140E                                ; $615E: $21 $0E $14
    call SharedPlayerContactComparator            ; $6161: $CD $4B $7B
    jr   nc, jr_001_6196                          ; $6164: $30 $30

    ld   hl, $C691                                ; $6166: $21 $91 $C6
    ld   a, [hl]                                  ; $6169: $7E
    or   $01                                      ; $616A: $F6 $01
    ld   [hl], a                                  ; $616C: $77
    ld   e, $1E                                   ; $616D: $1E $1E
    ld   a, [de]                                  ; $616F: $1A
    and  a                                        ; $6170: $A7
    jr   nz, jr_001_618D                          ; $6171: $20 $1A

    ld   a, [$C27B]                               ; $6173: $FA $7B $C2
    bit  1, a                                     ; $6176: $CB $4F
    jr   z, jr_001_618D                           ; $6178: $28 $13

    ld   e, $1E                                   ; $617A: $1E $1E
    ld   a, $01                                   ; $617C: $3E $01
    ld   [de], a                                  ; $617E: $12
    push hl                                       ; $617F: $E5
    call Call_001_4A3D                            ; $6180: $CD $3D $4A
    pop  hl                                       ; $6183: $E1
    ld   a, $08                                   ; $6184: $3E $08
    ld   [$C27B], a                               ; $6186: $EA $7B $C2
    xor  a                                        ; $6189: $AF
    ld   [$C2A2], a                               ; $618A: $EA $A2 $C2

jr_001_618D:
    call Call_001_60F5                            ; $618D: $CD $F5 $60
    ld   hl, $D001                                ; $6190: $21 $01 $D0
    jp   Jump_001_606D                            ; $6193: $C3 $6D $60


jr_001_6196:
    ld   e, $1E                                   ; $6196: $1E $1E
    xor  a                                        ; $6198: $AF
    ld   [de], a                                  ; $6199: $12
    ld   [$C691], a                               ; $619A: $EA $91 $C6
    jr   jr_001_618D                              ; $619D: $18 $EE

    ld   e, $0C                                   ; $619F: $1E $0C
    ld   a, [de]                                  ; $61A1: $1A
    dec  a                                        ; $61A2: $3D
    jr   z, jr_001_61C3                           ; $61A3: $28 $1E

    dec  a                                        ; $61A5: $3D
    jr   z, jr_001_6221                           ; $61A6: $28 $79

    ld   e, $0E                                   ; $61A8: $1E $0E
    ld   a, $32                                   ; $61AA: $3E $32
    ld   [de], a                                  ; $61AC: $12
    inc  e                                        ; $61AD: $1C
    xor  a                                        ; $61AE: $AF
    ld   [de], a                                  ; $61AF: $12
    inc  e                                        ; $61B0: $1C
    ld   [de], a                                  ; $61B1: $12
    ld   e, $1A                                   ; $61B2: $1E $1A
    ld   [de], a                                  ; $61B4: $12
    inc  e                                        ; $61B5: $1C
    ld   [de], a                                  ; $61B6: $12
    ld   e, $0C                                   ; $61B7: $1E $0C
    inc  a                                        ; $61B9: $3C
    ld   [de], a                                  ; $61BA: $12
    ld   e, $1C                                   ; $61BB: $1E $1C
    ld   a, $03                                   ; $61BD: $3E $03
    ld   [de], a                                  ; $61BF: $12
    jp   $4A6A                                    ; $61C0: $C3 $6A $4A


jr_001_61C3:
    ld   e, $1A                                   ; $61C3: $1E $1A
    ld   a, [de]                                  ; $61C5: $1A
    inc  a                                        ; $61C6: $3C
    ld   [de], a                                  ; $61C7: $12
    and  $0F                                      ; $61C8: $E6 $0F
    jr   nz, jr_001_61DF                          ; $61CA: $20 $13

    ld   e, $01                                   ; $61CC: $1E $01
    ld   a, [de]                                  ; $61CE: $1A
    or   $80                                      ; $61CF: $F6 $80
    ld   e, $1B                                   ; $61D1: $1E $1B
    ld   [de], a                                  ; $61D3: $12
    call Call_001_7C7B                            ; $61D4: $CD $7B $7C
    or   $10                                      ; $61D7: $F6 $10
    ld   e, $01                                   ; $61D9: $1E $01
    ld   [de], a                                  ; $61DB: $12
    jp   Jump_001_6262                            ; $61DC: $C3 $62 $62


jr_001_61DF:
    call AdvanceActorFixedPointMovement           ; $61DF: $CD $93 $4A
    call Call_001_7D61                            ; $61E2: $CD $61 $7D
    ld   hl, $1010                                ; $61E5: $21 $10 $10
    call SharedPlayerContactComparator            ; $61E8: $CD $4B $7B
    ld   bc, $0C0C                                ; $61EB: $01 $0C $0C
    call ComparePlayerProjectileWithActor         ; $61EE: $CD $88 $7B
    ret  nc                                       ; $61F1: $D0

    ld   a, [$DF38]                               ; $61F2: $FA $38 $DF
    ld   hl, $7D76                                ; $61F5: $21 $76 $7D
    call AddAToHL                                 ; $61F8: $CD $71 $00
    ld   e, $0A                                   ; $61FB: $1E $0A
    ld   a, [de]                                  ; $61FD: $1A
    sub  [hl]                                     ; $61FE: $96
    ld   [de], a                                  ; $61FF: $12
    ret  nc                                       ; $6200: $D0

    ld   a, $03                                   ; $6201: $3E $03
    ld   [de], a                                  ; $6203: $12
    ld   e, $1C                                   ; $6204: $1E $1C
    ld   a, [de]                                  ; $6206: $1A
    dec  a                                        ; $6207: $3D
    ld   [de], a                                  ; $6208: $12
    inc  a                                        ; $6209: $3C
    push de                                       ; $620A: $D5
    add  d                                        ; $620B: $82
    ld   d, a                                     ; $620C: $57
    ld   e, $0C                                   ; $620D: $1E $0C
    ld   a, $02                                   ; $620F: $3E $02
    ld   [de], a                                  ; $6211: $12
    inc  e                                        ; $6212: $1C
    ld   a, $09                                   ; $6213: $3E $09
    ld   [de], a                                  ; $6215: $12
    inc  e                                        ; $6216: $1C
    ld   a, $0F                                   ; $6217: $3E $0F
    ld   [de], a                                  ; $6219: $12
    inc  e                                        ; $621A: $1C
    xor  a                                        ; $621B: $AF
    ld   [de], a                                  ; $621C: $12
    inc  e                                        ; $621D: $1C
    ld   [de], a                                  ; $621E: $12
    pop  de                                       ; $621F: $D1
    ret                                           ; $6220: $C9


jr_001_6221:
    ld   e, $0D                                   ; $6221: $1E $0D
    ld   a, [de]                                  ; $6223: $1A
    dec  a                                        ; $6224: $3D
    ld   [de], a                                  ; $6225: $12
    ret  nz                                       ; $6226: $C0

    ld   e, $00                                   ; $6227: $1E $00
    ld   [de], a                                  ; $6229: $12
    ret                                           ; $622A: $C9


    ld   e, $0C                                   ; $622B: $1E $0C
    ld   a, [de]                                  ; $622D: $1A
    dec  a                                        ; $622E: $3D
    jr   z, jr_001_6248                           ; $622F: $28 $17

    dec  a                                        ; $6231: $3D
    jr   z, jr_001_6221                           ; $6232: $28 $ED

    ld   e, $0E                                   ; $6234: $1E $0E
    ld   a, $33                                   ; $6236: $3E $33
    ld   [de], a                                  ; $6238: $12
    inc  e                                        ; $6239: $1C
    xor  a                                        ; $623A: $AF
    ld   [de], a                                  ; $623B: $12
    inc  e                                        ; $623C: $1C
    ld   [de], a                                  ; $623D: $12
    ld   e, $1B                                   ; $623E: $1E $1B
    ld   [de], a                                  ; $6240: $12
    ld   e, $0C                                   ; $6241: $1E $0C
    inc  a                                        ; $6243: $3C
    ld   [de], a                                  ; $6244: $12
    jp   $4A6A                                    ; $6245: $C3 $6A $4A


jr_001_6248:
    dec  d                                        ; $6248: $15
    ld   e, $1B                                   ; $6249: $1E $1B
    ld   a, [de]                                  ; $624B: $1A
    ld   c, a                                     ; $624C: $4F
    res  7, a                                     ; $624D: $CB $BF
    ld   [de], a                                  ; $624F: $12
    inc  d                                        ; $6250: $14
    bit  7, c                                     ; $6251: $CB $79
    jr   z, jr_001_6273                           ; $6253: $28 $1E

    ld   c, a                                     ; $6255: $4F
    ld   e, $01                                   ; $6256: $1E $01
    ld   a, [de]                                  ; $6258: $1A
    or   $80                                      ; $6259: $F6 $80
    ld   e, $1B                                   ; $625B: $1E $1B
    ld   [de], a                                  ; $625D: $12
    ld   e, $01                                   ; $625E: $1E $01
    ld   a, c                                     ; $6260: $79
    ld   [de], a                                  ; $6261: $12

Jump_001_6262:
    ld   e, $00                                   ; $6262: $1E $00
    bit  3, a                                     ; $6264: $CB $5F
    ld   a, [de]                                  ; $6266: $1A
    jr   nz, jr_001_626D                          ; $6267: $20 $04

    set  5, a                                     ; $6269: $CB $EF
    jr   jr_001_626F                              ; $626B: $18 $02

jr_001_626D:
    res  5, a                                     ; $626D: $CB $AF

jr_001_626F:
    ld   [de], a                                  ; $626F: $12
    jp   $4A6A                                    ; $6270: $C3 $6A $4A


jr_001_6273:
    call AdvanceActorFixedPointMovement           ; $6273: $CD $93 $4A
    call Call_001_7D61                            ; $6276: $CD $61 $7D
    ld   hl, $1010                                ; $6279: $21 $10 $10
    call SharedPlayerContactComparator            ; $627C: $CD $4B $7B
    ld   bc, $0C0C                                ; $627F: $01 $0C $0C
    jp   ComparePlayerProjectileWithActor         ; $6282: $C3 $88 $7B


    ld   e, $0C                                   ; $6285: $1E $0C
    ld   a, [de]                                  ; $6287: $1A
    dec  a                                        ; $6288: $3D
    jr   z, jr_001_629D                           ; $6289: $28 $12

    dec  a                                        ; $628B: $3D
    jr   z, jr_001_62C4                           ; $628C: $28 $36

    ld   e, $0E                                   ; $628E: $1E $0E
    ld   a, $47                                   ; $6290: $3E $47
    ld   [de], a                                  ; $6292: $12
    inc  e                                        ; $6293: $1C
    xor  a                                        ; $6294: $AF
    ld   [de], a                                  ; $6295: $12
    inc  e                                        ; $6296: $1C
    ld   [de], a                                  ; $6297: $12
    ld   e, $0C                                   ; $6298: $1E $0C
    inc  a                                        ; $629A: $3C
    ld   [de], a                                  ; $629B: $12
    ret                                           ; $629C: $C9


jr_001_629D:
    ld   bc, $FF80                                ; $629D: $01 $80 $FF
    call Call_001_7C40                            ; $62A0: $CD $40 $7C
    jr   nc, jr_001_62BD                          ; $62A3: $30 $18

    ld   e, $0A                                   ; $62A5: $1E $0A
    ld   a, [de]                                  ; $62A7: $1A
    inc  a                                        ; $62A8: $3C
    ld   [de], a                                  ; $62A9: $12
    rlca                                          ; $62AA: $07
    ret  nc                                       ; $62AB: $D0

    ld   e, $0C                                   ; $62AC: $1E $0C
    ld   a, $02                                   ; $62AE: $3E $02
    ld   [de], a                                  ; $62B0: $12
    ld   e, $00                                   ; $62B1: $1E $00
    ld   a, [de]                                  ; $62B3: $1A
    res  4, a                                     ; $62B4: $CB $A7
    ld   [de], a                                  ; $62B6: $12
    ld   a, $0E                                   ; $62B7: $3E $0E
    ld   [$C57F], a                               ; $62B9: $EA $7F $C5
    ret                                           ; $62BC: $C9


jr_001_62BD:
    ld   e, $00                                   ; $62BD: $1E $00
    xor  a                                        ; $62BF: $AF
    ld   [de], a                                  ; $62C0: $12
    jp   ClearPlacementStatusBit                  ; $62C1: $C3 $F2 $7B


jr_001_62C4:
    ld   e, $0A                                   ; $62C4: $1E $0A
    ld   a, [de]                                  ; $62C6: $1A
    inc  a                                        ; $62C7: $3C
    and  $0F                                      ; $62C8: $E6 $0F
    ld   [de], a                                  ; $62CA: $12
    jr   z, jr_001_62D9                           ; $62CB: $28 $0C

    push de                                       ; $62CD: $D5
    ld   bc, $C669                                ; $62CE: $01 $69 $C6
    ld   de, $6C93                                ; $62D1: $11 $93 $6C
    call Call_000_066F                            ; $62D4: $CD $6F $06
    pop  de                                       ; $62D7: $D1
    ret                                           ; $62D8: $C9


jr_001_62D9:
    ld   e, $00                                   ; $62D9: $1E $00
    ld   a, [de]                                  ; $62DB: $1A
    set  4, a                                     ; $62DC: $CB $E7
    ld   [de], a                                  ; $62DE: $12
    ld   e, $0C                                   ; $62DF: $1E $0C
    ld   a, $01                                   ; $62E1: $3E $01
    ld   [de], a                                  ; $62E3: $12
    ret                                           ; $62E4: $C9


    ld   e, $0C                                   ; $62E5: $1E $0C
    ld   a, [de]                                  ; $62E7: $1A
    and  a                                        ; $62E8: $A7
    jr   z, jr_001_62F6                           ; $62E9: $28 $0B

    dec  a                                        ; $62EB: $3D
    jp   z, Jump_001_6312                         ; $62EC: $CA $12 $63

    dec  a                                        ; $62EF: $3D
    jp   z, Jump_001_6374                         ; $62F0: $CA $74 $63

    jp   Jump_001_637F                            ; $62F3: $C3 $7F $63


jr_001_62F6:
    call $4A6A                                    ; $62F6: $CD $6A $4A
    ld   e, $01                                   ; $62F9: $1E $01
    ld   a, [de]                                  ; $62FB: $1A
    and  $08                                      ; $62FC: $E6 $08
    rrca                                          ; $62FE: $0F
    swap a                                        ; $62FF: $CB $37
    ld   b, a                                     ; $6301: $47
    ld   e, $0E                                   ; $6302: $1E $0E
    ld   a, $2E                                   ; $6304: $3E $2E
    or   b                                        ; $6306: $B0
    ld   [de], a                                  ; $6307: $12
    inc  e                                        ; $6308: $1C
    xor  a                                        ; $6309: $AF
    ld   [de], a                                  ; $630A: $12
    inc  e                                        ; $630B: $1C
    ld   [de], a                                  ; $630C: $12
    ld   e, $0C                                   ; $630D: $1E $0C
    inc  a                                        ; $630F: $3C
    ld   [de], a                                  ; $6310: $12
    ret                                           ; $6311: $C9


Jump_001_6312:
    call Call_001_7D61                            ; $6312: $CD $61 $7D
    ld   bc, $04FF                                ; $6315: $01 $FF $04
    call Call_001_7C40                            ; $6318: $CD $40 $7C
    jr   c, jr_001_634A                           ; $631B: $38 $2D

    call Call_001_63D8                            ; $631D: $CD $D8 $63
    call AdvanceActorFixedPointMovement           ; $6320: $CD $93 $4A
    ld   hl, $E809                                ; $6323: $21 $09 $E8
    ld   e, $01                                   ; $6326: $1E $01
    ld   a, [de]                                  ; $6328: $1A
    bit  3, a                                     ; $6329: $CB $5F
    jr   z, jr_001_632F                           ; $632B: $28 $02

    ld   h, $F8                                   ; $632D: $26 $F8

jr_001_632F:
    call Call_001_6DCA                            ; $632F: $CD $CA $6D
    ld   hl, $C660                                ; $6332: $21 $60 $C6
    ld   a, [hl+]                                 ; $6335: $2A
    or   [hl]                                     ; $6336: $B6
    jr   z, jr_001_633D                           ; $6337: $28 $04

    inc  l                                        ; $6339: $2C
    ld   a, [hl]                                  ; $633A: $7E
    and  a                                        ; $633B: $A7
    ret  z                                        ; $633C: $C8

jr_001_633D:
    ld   e, $01                                   ; $633D: $1E $01
    ld   a, [de]                                  ; $633F: $1A
    xor  $08                                      ; $6340: $EE $08
    ld   [de], a                                  ; $6342: $12
    ld   e, $0E                                   ; $6343: $1E $0E
    ld   a, [de]                                  ; $6345: $1A
    xor  $40                                      ; $6346: $EE $40
    ld   [de], a                                  ; $6348: $12
    ret                                           ; $6349: $C9


jr_001_634A:
    call Call_001_5D42                            ; $634A: $CD $42 $5D
    ld   e, $00                                   ; $634D: $1E $00
    bit  3, a                                     ; $634F: $CB $5F
    jr   z, jr_001_635A                           ; $6351: $28 $07

    inc  e                                        ; $6353: $1C
    ld   a, $2F                                   ; $6354: $3E $2F
    ld   b, a                                     ; $6356: $47
    ld   [de], a                                  ; $6357: $12
    jr   jr_001_6360                              ; $6358: $18 $06

jr_001_635A:
    ld   a, $21                                   ; $635A: $3E $21
    ld   [de], a                                  ; $635C: $12
    inc  e                                        ; $635D: $1C
    ld   b, a                                     ; $635E: $47
    ld   [de], a                                  ; $635F: $12

jr_001_6360:
    ld   e, $0C                                   ; $6360: $1E $0C
    ld   a, $02                                   ; $6362: $3E $02
    ld   [de], a                                  ; $6364: $12
    inc  e                                        ; $6365: $1C
    ld   a, b                                     ; $6366: $78
    and  $07                                      ; $6367: $E6 $07
    ld   [de], a                                  ; $6369: $12
    inc  e                                        ; $636A: $1C
    ld   a, $2D                                   ; $636B: $3E $2D
    ld   [de], a                                  ; $636D: $12
    inc  e                                        ; $636E: $1C
    xor  a                                        ; $636F: $AF
    ld   [de], a                                  ; $6370: $12
    inc  e                                        ; $6371: $1C
    ld   [de], a                                  ; $6372: $12
    ret                                           ; $6373: $C9


Jump_001_6374:
    call Call_001_7D61                            ; $6374: $CD $61 $7D
    ld   e, $0C                                   ; $6377: $1E $0C
    ld   a, $03                                   ; $6379: $3E $03
    ld   [de], a                                  ; $637B: $12
    jp   $4A6A                                    ; $637C: $C3 $6A $4A


Jump_001_637F:
    call Call_001_7D61                            ; $637F: $CD $61 $7D
    call Call_001_63D8                            ; $6382: $CD $D8 $63
    call AdvanceActorFixedPointMovement           ; $6385: $CD $93 $4A
    ld   e, $1A                                   ; $6388: $1E $1A
    ld   a, [de]                                  ; $638A: $1A
    inc  a                                        ; $638B: $3C
    ld   [de], a                                  ; $638C: $12
    and  $03                                      ; $638D: $E6 $03
    ret  nz                                       ; $638F: $C0

    ld   e, $00                                   ; $6390: $1E $00
    ld   a, [de]                                  ; $6392: $1A
    bit  5, a                                     ; $6393: $CB $6F
    jr   z, jr_001_63A7                           ; $6395: $28 $10

    ld   e, $0D                                   ; $6397: $1E $0D
    ld   a, [de]                                  ; $6399: $1A
    inc  a                                        ; $639A: $3C
    ld   [de], a                                  ; $639B: $12
    and  $0F                                      ; $639C: $E6 $0F
    ld   hl, $63C8                                ; $639E: $21 $C8 $63
    call AddAToHL                                 ; $63A1: $CD $71 $00
    ld   a, [hl]                                  ; $63A4: $7E
    jr   jr_001_63BF                              ; $63A5: $18 $18

jr_001_63A7:
    ld   e, $0D                                   ; $63A7: $1E $0D
    ld   a, [de]                                  ; $63A9: $1A
    dec  a                                        ; $63AA: $3D
    ld   [de], a                                  ; $63AB: $12
    and  $0F                                      ; $63AC: $E6 $0F
    ld   hl, $63C8                                ; $63AE: $21 $C8 $63
    call AddAToHL                                 ; $63B1: $CD $71 $00
    ld   a, [hl]                                  ; $63B4: $7E
    cp   $48                                      ; $63B5: $FE $48
    jr   nz, jr_001_63BD                          ; $63B7: $20 $04

    res  3, a                                     ; $63B9: $CB $9F
    jr   jr_001_63BF                              ; $63BB: $18 $02

jr_001_63BD:
    set  3, a                                     ; $63BD: $CB $DF

jr_001_63BF:
    ld   e, $01                                   ; $63BF: $1E $01
    ld   [de], a                                  ; $63C1: $12
    ld   e, $0C                                   ; $63C2: $1E $0C
    ld   a, $02                                   ; $63C4: $3E $02
    ld   [de], a                                  ; $63C6: $12
    ret                                           ; $63C7: $C9


    ld   [hl-], a                                 ; $63C8: $32
    inc  sp                                       ; $63C9: $33
    inc  sp                                       ; $63CA: $33
    inc  [hl]                                     ; $63CB: $34
    inc  [hl]                                     ; $63CC: $34
    dec  [hl]                                     ; $63CD: $35
    dec  [hl]                                     ; $63CE: $35
    ld   [hl], $36                                ; $63CF: $36 $36
    dec  [hl]                                     ; $63D1: $35
    dec  [hl]                                     ; $63D2: $35
    inc  [hl]                                     ; $63D3: $34
    inc  [hl]                                     ; $63D4: $34
    inc  sp                                       ; $63D5: $33
    inc  sp                                       ; $63D6: $33
    ld   [hl-], a                                 ; $63D7: $32

Call_001_63D8:
    ld   hl, $100C                                ; $63D8: $21 $0C $10
    call SharedPlayerContactComparator            ; $63DB: $CD $4B $7B
    ld   bc, $0C0C                                ; $63DE: $01 $0C $0C
    call ComparePlayerProjectileWithActor         ; $63E1: $CD $88 $7B
    ret  nc                                       ; $63E4: $D0

    ld   bc, $7D76                                ; $63E5: $01 $76 $7D
    call Call_001_7BFF                            ; $63E8: $CD $FF $7B
    ret                                           ; $63EB: $C9


    ld   e, $0C                                   ; $63EC: $1E $0C
    ld   a, [de]                                  ; $63EE: $1A
    dec  a                                        ; $63EF: $3D
    jr   z, jr_001_6404                           ; $63F0: $28 $12

    call $4A6A                                    ; $63F2: $CD $6A $4A
    ld   e, $0E                                   ; $63F5: $1E $0E
    ld   a, $2D                                   ; $63F7: $3E $2D
    ld   [de], a                                  ; $63F9: $12
    inc  e                                        ; $63FA: $1C
    xor  a                                        ; $63FB: $AF
    ld   [de], a                                  ; $63FC: $12
    inc  e                                        ; $63FD: $1C
    ld   [de], a                                  ; $63FE: $12
    ld   e, $0C                                   ; $63FF: $1E $0C
    inc  a                                        ; $6401: $3C
    ld   [de], a                                  ; $6402: $12
    ret                                           ; $6403: $C9


jr_001_6404:
    call Call_001_7D61                            ; $6404: $CD $61 $7D
    call Call_001_63D8                            ; $6407: $CD $D8 $63

Call_001_640A:
    call AdvanceActorFixedPointMovement           ; $640A: $CD $93 $4A
    ld   hl, $F70C                                ; $640D: $21 $0C $F7
    call Call_001_6DCA                            ; $6410: $CD $CA $6D
    ld   hl, $C660                                ; $6413: $21 $60 $C6
    ld   a, [hl+]                                 ; $6416: $2A
    cp   $01                                      ; $6417: $FE $01
    jr   z, jr_001_642F                           ; $6419: $28 $14

    cp   $0A                                      ; $641B: $FE $0A
    jr   z, jr_001_642F                           ; $641D: $28 $10

    cp   $0D                                      ; $641F: $FE $0D
    jr   z, jr_001_642F                           ; $6421: $28 $0C

    ld   a, [hl]                                  ; $6423: $7E
    cp   $0A                                      ; $6424: $FE $0A
    jr   z, jr_001_642F                           ; $6426: $28 $07

    cp   $0D                                      ; $6428: $FE $0D
    jr   z, jr_001_642F                           ; $642A: $28 $03

    cp   $01                                      ; $642C: $FE $01
    ret  nz                                       ; $642E: $C0

jr_001_642F:
    ld   e, $00                                   ; $642F: $1E $00
    ld   a, [de]                                  ; $6431: $1A
    xor  $20                                      ; $6432: $EE $20
    ld   [de], a                                  ; $6434: $12
    inc  e                                        ; $6435: $1C
    ld   a, [de]                                  ; $6436: $1A
    xor  $08                                      ; $6437: $EE $08
    ld   [de], a                                  ; $6439: $12
    jp   AdvanceActorFixedPointMovement           ; $643A: $C3 $93 $4A


    ret                                           ; $643D: $C9


WorldEntityAction37Handler::
    ld   e, $0C                                   ; $643E: $1E $0C
    ld   a, [de]                                  ; $6440: $1A
    dec  a                                        ; $6441: $3D
    jr   z, jr_001_6456                           ; $6442: $28 $12

    call $4A6A                                    ; $6444: $CD $6A $4A
    ld   e, $0E                                   ; $6447: $1E $0E
    ld   a, $20                                   ; $6449: $3E $20
    ld   [de], a                                  ; $644B: $12
    inc  e                                        ; $644C: $1C
    xor  a                                        ; $644D: $AF
    ld   [de], a                                  ; $644E: $12
    inc  e                                        ; $644F: $1C
    ld   [de], a                                  ; $6450: $12
    ld   e, $0C                                   ; $6451: $1E $0C
    inc  a                                        ; $6453: $3C
    ld   [de], a                                  ; $6454: $12
    ret                                           ; $6455: $C9


jr_001_6456:
    ld   bc, $10FF                                ; $6456: $01 $FF $10
    call Call_001_7C40                            ; $6459: $CD $40 $7C
    ld   c, $10                                   ; $645C: $0E $10
    jr   nc, jr_001_6462                          ; $645E: $30 $02

    ld   c, $30                                   ; $6460: $0E $30

jr_001_6462:
    ld   e, $01                                   ; $6462: $1E $01
    ld   a, [de]                                  ; $6464: $1A
    and  $0F                                      ; $6465: $E6 $0F
    or   c                                        ; $6467: $B1
    ld   [de], a                                  ; $6468: $12
    call $4A6A                                    ; $6469: $CD $6A $4A
    jr   jr_001_6404                              ; $646C: $18 $96

    ld   e, $0C                                   ; $646E: $1E $0C
    ld   a, [de]                                  ; $6470: $1A
    dec  a                                        ; $6471: $3D
    jr   z, jr_001_6488                           ; $6472: $28 $14

    ld   e, $0E                                   ; $6474: $1E $0E
    ld   a, $3C                                   ; $6476: $3E $3C
    ld   [de], a                                  ; $6478: $12
    inc  e                                        ; $6479: $1C
    xor  a                                        ; $647A: $AF
    ld   [de], a                                  ; $647B: $12
    inc  e                                        ; $647C: $1C
    ld   [de], a                                  ; $647D: $12
    ld   e, $1A                                   ; $647E: $1E $1A
    ld   [de], a                                  ; $6480: $12
    ld   e, $0D                                   ; $6481: $1E $0D
    ld   [de], a                                  ; $6483: $12
    dec  e                                        ; $6484: $1D
    inc  a                                        ; $6485: $3C
    ld   [de], a                                  ; $6486: $12
    ret                                           ; $6487: $C9


jr_001_6488:
    call Call_001_7D61                            ; $6488: $CD $61 $7D
    call Call_001_5D42                            ; $648B: $CD $42 $5D
    ld   c, $01                                   ; $648E: $0E $01
    bit  3, a                                     ; $6490: $CB $5F
    jr   nz, jr_001_6496                          ; $6492: $20 $02

    ld   c, $21                                   ; $6494: $0E $21

jr_001_6496:
    ld   e, $00                                   ; $6496: $1E $00
    ld   a, c                                     ; $6498: $79
    ld   [de], a                                  ; $6499: $12
    ld   e, $0D                                   ; $649A: $1E $0D
    ld   a, [de]                                  ; $649C: $1A
    and  a                                        ; $649D: $A7
    jr   nz, jr_001_64C4                          ; $649E: $20 $24

    ld   e, $1A                                   ; $64A0: $1E $1A
    ld   a, [de]                                  ; $64A2: $1A
    inc  a                                        ; $64A3: $3C
    ld   [de], a                                  ; $64A4: $12
    and  $3F                                      ; $64A5: $E6 $3F
    jp   nz, Jump_001_5CC4                        ; $64A7: $C2 $C4 $5C

    ld   [$C7C4], a                               ; $64AA: $EA $C4 $C7
    call Call_001_7C7B                            ; $64AD: $CD $7B $7C
    or   $10                                      ; $64B0: $F6 $10
    ld   c, a                                     ; $64B2: $4F
    call FindAvailableWorldActorPage              ; $64B3: $CD $5D $4D
    ld   b, $3F                                   ; $64B6: $06 $3F
    call Call_001_7D3F                            ; $64B8: $CD $3F $7D
    ld   e, $0E                                   ; $64BB: $1E $0E
    ld   a, $3D                                   ; $64BD: $3E $3D
    ld   [de], a                                  ; $64BF: $12
    ld   e, $0D                                   ; $64C0: $1E $0D
    ld   [de], a                                  ; $64C2: $12
    ret                                           ; $64C3: $C9


jr_001_64C4:
    ld   e, $1A                                   ; $64C4: $1E $1A
    ld   a, [de]                                  ; $64C6: $1A
    inc  a                                        ; $64C7: $3C
    ld   [de], a                                  ; $64C8: $12
    and  $07                                      ; $64C9: $E6 $07
    jp   nz, Jump_001_5CC4                        ; $64CB: $C2 $C4 $5C

    ld   e, $0C                                   ; $64CE: $1E $0C
    ld   [de], a                                  ; $64D0: $12
    ret                                           ; $64D1: $C9


    ld   e, $0C                                   ; $64D2: $1E $0C
    ld   a, [de]                                  ; $64D4: $1A
    and  a                                        ; $64D5: $A7
    jr   z, jr_001_64E0                           ; $64D6: $28 $08

    dec  a                                        ; $64D8: $3D
    jr   z, jr_001_64F6                           ; $64D9: $28 $1B

    dec  a                                        ; $64DB: $3D
    jr   z, jr_001_6508                           ; $64DC: $28 $2A

    jr   jr_001_6542                              ; $64DE: $18 $62

jr_001_64E0:
    ld   e, $0E                                   ; $64E0: $1E $0E
    ld   a, $39                                   ; $64E2: $3E $39
    ld   [de], a                                  ; $64E4: $12
    inc  e                                        ; $64E5: $1C
    xor  a                                        ; $64E6: $AF
    ld   [de], a                                  ; $64E7: $12
    inc  e                                        ; $64E8: $1C
    ld   [de], a                                  ; $64E9: $12
    ld   e, $1B                                   ; $64EA: $1E $1B
    ld   [de], a                                  ; $64EC: $12
    ld   e, $0D                                   ; $64ED: $1E $0D
    ld   [de], a                                  ; $64EF: $12
    dec  e                                        ; $64F0: $1D
    inc  a                                        ; $64F1: $3C
    ld   [de], a                                  ; $64F2: $12
    jp   $4A6A                                    ; $64F3: $C3 $6A $4A


jr_001_64F6:
    ld   e, $18                                   ; $64F6: $1E $18
    xor  a                                        ; $64F8: $AF
    ld   [de], a                                  ; $64F9: $12
    inc  e                                        ; $64FA: $1C
    ld   a, $03                                   ; $64FB: $3E $03
    ld   [de], a                                  ; $64FD: $12
    inc  e                                        ; $64FE: $1C
    ld   a, $30                                   ; $64FF: $3E $30
    ld   [de], a                                  ; $6501: $12
    ld   e, $0C                                   ; $6502: $1E $0C
    ld   a, $02                                   ; $6504: $3E $02
    ld   [de], a                                  ; $6506: $12
    ret                                           ; $6507: $C9


jr_001_6508:
    call Call_001_7D61                            ; $6508: $CD $61 $7D
    call Call_001_640A                            ; $650B: $CD $0A $64
    ld   e, $0D                                   ; $650E: $1E $0D
    ld   a, [de]                                  ; $6510: $1A
    rrca                                          ; $6511: $0F
    jr   c, jr_001_6521                           ; $6512: $38 $0D

    call Call_001_7AED                            ; $6514: $CD $ED $7A
    jp   nc, Jump_001_5CC4                        ; $6517: $D2 $C4 $5C

    xor  a                                        ; $651A: $AF
    ld   [de], a                                  ; $651B: $12
    ld   e, $0D                                   ; $651C: $1E $0D
    inc  a                                        ; $651E: $3C
    ld   [de], a                                  ; $651F: $12
    ret                                           ; $6520: $C9


jr_001_6521:
    call Call_001_7B18                            ; $6521: $CD $18 $7B
    ld   hl, $FC0B                                ; $6524: $21 $0B $FC
    call Call_001_6DCA                            ; $6527: $CD $CA $6D
    ld   hl, $C660                                ; $652A: $21 $60 $C6
    ld   a, [hl+]                                 ; $652D: $2A
    or   [hl]                                     ; $652E: $B6
    jp   z, Jump_001_5CC4                         ; $652F: $CA $C4 $5C

    cp   $0E                                      ; $6532: $FE $0E
    jp   nc, Jump_001_5CC4                        ; $6534: $D2 $C4 $5C

    ld   e, $0E                                   ; $6537: $1E $0E
    ld   a, $38                                   ; $6539: $3E $38
    ld   [de], a                                  ; $653B: $12
    ld   e, $0C                                   ; $653C: $1E $0C
    ld   a, $03                                   ; $653E: $3E $03
    ld   [de], a                                  ; $6540: $12
    ret                                           ; $6541: $C9


jr_001_6542:
    call Call_001_7D61                            ; $6542: $CD $61 $7D
    ld   e, $1B                                   ; $6545: $1E $1B
    ld   a, [de]                                  ; $6547: $1A
    inc  a                                        ; $6548: $3C
    ld   [de], a                                  ; $6549: $12
    cp   $30                                      ; $654A: $FE $30
    jp   nz, Jump_001_5CC4                        ; $654C: $C2 $C4 $5C

    ld   e, $0C                                   ; $654F: $1E $0C
    xor  a                                        ; $6551: $AF
    ld   [de], a                                  ; $6552: $12
    ret                                           ; $6553: $C9


    ld   e, $0C                                   ; $6554: $1E $0C
    ld   a, [de]                                  ; $6556: $1A
    dec  a                                        ; $6557: $3D
    jr   z, jr_001_656E                           ; $6558: $28 $14

    dec  a                                        ; $655A: $3D
    jr   z, jr_001_6583                           ; $655B: $28 $26

    ld   e, $0E                                   ; $655D: $1E $0E
    ld   a, $48                                   ; $655F: $3E $48
    ld   [de], a                                  ; $6561: $12
    inc  e                                        ; $6562: $1C
    xor  a                                        ; $6563: $AF
    ld   [de], a                                  ; $6564: $12
    inc  e                                        ; $6565: $1C
    ld   [de], a                                  ; $6566: $12
    ld   e, $0C                                   ; $6567: $1E $0C
    inc  a                                        ; $6569: $3C
    ld   [de], a                                  ; $656A: $12
    jp   $4A6A                                    ; $656B: $C3 $6A $4A


jr_001_656E:
    call Call_001_7D61                            ; $656E: $CD $61 $7D
    ld   a, [$C206]                               ; $6571: $FA $06 $C2
    ld   b, a                                     ; $6574: $47
    ld   e, $06                                   ; $6575: $1E $06
    ld   a, [de]                                  ; $6577: $1A
    sub  b                                        ; $6578: $90
    jr   z, jr_001_657D                           ; $6579: $28 $02

    dec  a                                        ; $657B: $3D
    ret  nz                                       ; $657C: $C0

jr_001_657D:
    ld   e, $0C                                   ; $657D: $1E $0C
    ld   a, $02                                   ; $657F: $3E $02
    ld   [de], a                                  ; $6581: $12
    ret                                           ; $6582: $C9


jr_001_6583:
    ld   e, $00                                   ; $6583: $1E $00
    ld   a, [de]                                  ; $6585: $1A
    bit  3, a                                     ; $6586: $CB $5F
    jp   nz, ClearPlacementStatusBit              ; $6588: $C2 $F2 $7B

    call Call_001_7D61                            ; $658B: $CD $61 $7D
    call AdvanceActorFixedPointMovement           ; $658E: $CD $93 $4A
    ld   hl, $0C0C                                ; $6591: $21 $0C $0C
    jp   SharedPlayerContactComparator            ; $6594: $C3 $4B $7B


    ld   e, $0C                                   ; $6597: $1E $0C
    ld   a, [de]                                  ; $6599: $1A
    and  a                                        ; $659A: $A7
    jr   z, jr_001_65A4                           ; $659B: $28 $07

    dec  a                                        ; $659D: $3D
    jr   z, jr_001_65C2                           ; $659E: $28 $22

    dec  a                                        ; $65A0: $3D
    jr   z, jr_001_65DF                           ; $65A1: $28 $3C

    ret                                           ; $65A3: $C9


jr_001_65A4:
    ld   b, $44                                   ; $65A4: $06 $44
    ld   e, $0A                                   ; $65A6: $1E $0A
    ld   a, [de]                                  ; $65A8: $1A
    rrca                                          ; $65A9: $0F
    jr   c, jr_001_65AD                           ; $65AA: $38 $01

    inc  b                                        ; $65AC: $04

jr_001_65AD:
    ld   e, $0E                                   ; $65AD: $1E $0E
    ld   a, b                                     ; $65AF: $78
    ld   [de], a                                  ; $65B0: $12
    xor  a                                        ; $65B1: $AF
    inc  e                                        ; $65B2: $1C
    ld   [de], a                                  ; $65B3: $12
    inc  e                                        ; $65B4: $1C
    ld   [de], a                                  ; $65B5: $12
    ld   e, $0C                                   ; $65B6: $1E $0C
    inc  a                                        ; $65B8: $3C
    ld   [de], a                                  ; $65B9: $12
    ld   a, $0A                                   ; $65BA: $3E $0A
    ld   e, $1A                                   ; $65BC: $1E $1A
    ld   [de], a                                  ; $65BE: $12
    jp   $4A6A                                    ; $65BF: $C3 $6A $4A


jr_001_65C2:
    call Call_001_7D61                            ; $65C2: $CD $61 $7D
    ld   hl, $1810                                ; $65C5: $21 $10 $18
    ld   e, $0A                                   ; $65C8: $1E $0A
    ld   a, [de]                                  ; $65CA: $1A
    rrca                                          ; $65CB: $0F
    jr   c, jr_001_65D1                           ; $65CC: $38 $03

    ld   hl, $1214                                ; $65CE: $21 $14 $12

jr_001_65D1:
    call SharedPlayerContactComparator            ; $65D1: $CD $4B $7B
    ret  nc                                       ; $65D4: $D0

    ld   e, $0C                                   ; $65D5: $1E $0C
    ld   a, $02                                   ; $65D7: $3E $02
    ld   [de], a                                  ; $65D9: $12
    dec  a                                        ; $65DA: $3D
    ld   [$C585], a                               ; $65DB: $EA $85 $C5
    ret                                           ; $65DE: $C9


jr_001_65DF:
    ld   e, $1A                                   ; $65DF: $1E $1A
    ld   a, [de]                                  ; $65E1: $1A
    dec  a                                        ; $65E2: $3D
    ld   [de], a                                  ; $65E3: $12
    jp   nz, AdvanceActorFixedPointMovement       ; $65E4: $C2 $93 $4A

    ld   e, $0C                                   ; $65E7: $1E $0C
    dec  a                                        ; $65E9: $3D
    ld   [de], a                                  ; $65EA: $12
    ret                                           ; $65EB: $C9


    ld   e, $0C                                   ; $65EC: $1E $0C
    ld   a, [de]                                  ; $65EE: $1A
    dec  a                                        ; $65EF: $3D
    jr   z, jr_001_6612                           ; $65F0: $28 $20

    dec  a                                        ; $65F2: $3D
    jr   z, jr_001_6625                           ; $65F3: $28 $30

    ld   e, $0E                                   ; $65F5: $1E $0E
    ld   a, $46                                   ; $65F7: $3E $46
    ld   [de], a                                  ; $65F9: $12
    xor  a                                        ; $65FA: $AF
    inc  e                                        ; $65FB: $1C
    ld   [de], a                                  ; $65FC: $12
    inc  e                                        ; $65FD: $1C
    ld   [de], a                                  ; $65FE: $12
    ld   e, $0C                                   ; $65FF: $1E $0C
    inc  a                                        ; $6601: $3C
    ld   [de], a                                  ; $6602: $12
    dec  a                                        ; $6603: $3D
    inc  e                                        ; $6604: $1C
    ld   [de], a                                  ; $6605: $12
    ld   e, $18                                   ; $6606: $1E $18
    ld   [de], a                                  ; $6608: $12
    inc  e                                        ; $6609: $1C
    ld   [de], a                                  ; $660A: $12
    inc  e                                        ; $660B: $1C
    ld   a, $20                                   ; $660C: $3E $20
    ld   [de], a                                  ; $660E: $12
    jp   $4A6A                                    ; $660F: $C3 $6A $4A


jr_001_6612:
    call Call_001_7D61                            ; $6612: $CD $61 $7D
    ld   a, [$C585]                               ; $6615: $FA $85 $C5
    rrca                                          ; $6618: $0F
    jr   nc, jr_001_6699                          ; $6619: $30 $7E

    xor  a                                        ; $661B: $AF
    ld   [$C585], a                               ; $661C: $EA $85 $C5
    ld   e, $0C                                   ; $661F: $1E $0C
    ld   a, $02                                   ; $6621: $3E $02
    ld   [de], a                                  ; $6623: $12
    ret                                           ; $6624: $C9


jr_001_6625:
    call Call_001_7D61                            ; $6625: $CD $61 $7D
    ld   hl, $000E                                ; $6628: $21 $0E $00
    call Call_001_6DCA                            ; $662B: $CD $CA $6D
    ld   hl, $C660                                ; $662E: $21 $60 $C6
    ld   e, $0D                                   ; $6631: $1E $0D
    ld   a, [de]                                  ; $6633: $1A
    rrca                                          ; $6634: $0F
    jr   c, jr_001_665A                           ; $6635: $38 $23

    ld   l, $62                                   ; $6637: $2E $62
    ld   a, [hl]                                  ; $6639: $7E
    and  a                                        ; $663A: $A7
    jr   z, jr_001_6655                           ; $663B: $28 $18

    cp   $0E                                      ; $663D: $FE $0E
    jr   nc, jr_001_6655                          ; $663F: $30 $14

    call Call_001_5D42                            ; $6641: $CD $42 $5D
    ld   e, $01                                   ; $6644: $1E $01
    or   $30                                      ; $6646: $F6 $30
    ld   [de], a                                  ; $6648: $12
    ld   e, $0D                                   ; $6649: $1E $0D
    ld   a, $01                                   ; $664B: $3E $01
    ld   [de], a                                  ; $664D: $12
    ld   e, $02                                   ; $664E: $1E $02
    ld   a, [de]                                  ; $6650: $1A
    and  $F0                                      ; $6651: $E6 $F0
    ld   [de], a                                  ; $6653: $12
    ret                                           ; $6654: $C9


jr_001_6655:
    call Call_001_7B18                            ; $6655: $CD $18 $7B
    jr   jr_001_6699                              ; $6658: $18 $3F

jr_001_665A:
    ld   a, [hl+]                                 ; $665A: $2A
    or   [hl]                                     ; $665B: $B6
    jr   z, jr_001_668F                           ; $665C: $28 $31

    cp   $0E                                      ; $665E: $FE $0E
    jr   nc, jr_001_668F                          ; $6660: $30 $2D

    ld   hl, $F80E                                ; $6662: $21 $0E $F8
    call Call_001_6DCA                            ; $6665: $CD $CA $6D
    ld   hl, $C660                                ; $6668: $21 $60 $C6
    ld   a, [hl+]                                 ; $666B: $2A
    or   [hl]                                     ; $666C: $B6
    jr   z, jr_001_6673                           ; $666D: $28 $04

    cp   $0E                                      ; $666F: $FE $0E
    jr   c, jr_001_6684                           ; $6671: $38 $11

jr_001_6673:
    ld   hl, $E80E                                ; $6673: $21 $0E $E8
    call Call_001_6DCA                            ; $6676: $CD $CA $6D
    ld   hl, $C660                                ; $6679: $21 $60 $C6
    ld   a, [hl+]                                 ; $667C: $2A
    or   [hl]                                     ; $667D: $B6
    jr   z, jr_001_668A                           ; $667E: $28 $0A

    cp   $0E                                      ; $6680: $FE $0E
    jr   nc, jr_001_668A                          ; $6682: $30 $06

jr_001_6684:
    ld   e, $01                                   ; $6684: $1E $01
    ld   a, [de]                                  ; $6686: $1A
    xor  $08                                      ; $6687: $EE $08
    ld   [de], a                                  ; $6689: $12

jr_001_668A:
    call AdvanceActorFixedPointMovement           ; $668A: $CD $93 $4A
    jr   jr_001_6699                              ; $668D: $18 $0A

jr_001_668F:
    xor  a                                        ; $668F: $AF
    ld   e, $0D                                   ; $6690: $1E $0D
    ld   [de], a                                  ; $6692: $12
    ld   e, $18                                   ; $6693: $1E $18
    ld   [de], a                                  ; $6695: $12
    inc  e                                        ; $6696: $1C
    ld   [de], a                                  ; $6697: $12
    ret                                           ; $6698: $C9


jr_001_6699:
    ld   hl, $1814                                ; $6699: $21 $14 $18
    call SharedPlayerContactComparator            ; $669C: $CD $4B $7B
    ld   bc, $100C                                ; $669F: $01 $0C $10
    jp   ComparePlayerProjectileWithActor         ; $66A2: $C3 $88 $7B


    ld   e, $0C                                   ; $66A5: $1E $0C
    ld   a, [de]                                  ; $66A7: $1A
    dec  a                                        ; $66A8: $3D
    jr   z, jr_001_66D6                           ; $66A9: $28 $2B

    dec  a                                        ; $66AB: $3D
    jr   z, jr_001_66F2                           ; $66AC: $28 $44

    dec  a                                        ; $66AE: $3D
    jr   z, jr_001_670A                           ; $66AF: $28 $59

    ld   e, $0A                                   ; $66B1: $1E $0A
    ld   a, [de]                                  ; $66B3: $1A
    and  a                                        ; $66B4: $A7
    jr   nz, jr_001_66BC                          ; $66B5: $20 $05

    ld   a, [$C585]                               ; $66B7: $FA $85 $C5
    rrca                                          ; $66BA: $0F
    ret  nc                                       ; $66BB: $D0

jr_001_66BC:
    ld   e, $0E                                   ; $66BC: $1E $0E
    ld   a, $5D                                   ; $66BE: $3E $5D
    ld   [de], a                                  ; $66C0: $12

Jump_001_66C1:
    xor  a                                        ; $66C1: $AF
    inc  e                                        ; $66C2: $1C
    ld   [de], a                                  ; $66C3: $12
    inc  e                                        ; $66C4: $1C
    ld   [de], a                                  ; $66C5: $12
    ld   [$C585], a                               ; $66C6: $EA $85 $C5
    ld   e, $1A                                   ; $66C9: $1E $1A
    ld   [de], a                                  ; $66CB: $12
    ld   e, $0C                                   ; $66CC: $1E $0C
    inc  a                                        ; $66CE: $3C
    ld   [de], a                                  ; $66CF: $12
    ld   e, $00                                   ; $66D0: $1E $00
    ld   [de], a                                  ; $66D2: $12
    jp   $4A6A                                    ; $66D3: $C3 $6A $4A


jr_001_66D6:
    call Call_001_7D61                            ; $66D6: $CD $61 $7D
    ld   e, $1A                                   ; $66D9: $1E $1A
    ld   a, [de]                                  ; $66DB: $1A
    inc  a                                        ; $66DC: $3C
    ld   [de], a                                  ; $66DD: $12
    cp   $10                                      ; $66DE: $FE $10
    jr   nz, jr_001_6739                          ; $66E0: $20 $57

Call_001_66E2:
    ld   e, $0C                                   ; $66E2: $1E $0C
    ld   a, [de]                                  ; $66E4: $1A
    inc  a                                        ; $66E5: $3C
    ld   [de], a                                  ; $66E6: $12
    ld   e, $0E                                   ; $66E7: $1E $0E
    ld   a, [de]                                  ; $66E9: $1A
    inc  a                                        ; $66EA: $3C
    ld   [de], a                                  ; $66EB: $12
    xor  a                                        ; $66EC: $AF
    inc  e                                        ; $66ED: $1C
    ld   [de], a                                  ; $66EE: $12
    inc  e                                        ; $66EF: $1C
    ld   [de], a                                  ; $66F0: $12
    ret                                           ; $66F1: $C9


jr_001_66F2:
    call Call_001_7D61                            ; $66F2: $CD $61 $7D
    ld   e, $1A                                   ; $66F5: $1E $1A
    ld   a, [de]                                  ; $66F7: $1A
    inc  a                                        ; $66F8: $3C
    ld   [de], a                                  ; $66F9: $12
    cp   $38                                      ; $66FA: $FE $38
    jr   nz, jr_001_673E                          ; $66FC: $20 $40

    xor  a                                        ; $66FE: $AF
    ld   [de], a                                  ; $66FF: $12
    call Call_001_66E2                            ; $6700: $CD $E2 $66

jr_001_6703:
    ld   e, $01                                   ; $6703: $1E $01
    ld   a, [de]                                  ; $6705: $1A
    xor  $08                                      ; $6706: $EE $08
    ld   [de], a                                  ; $6708: $12
    ret                                           ; $6709: $C9


jr_001_670A:
    call Call_001_7D61                            ; $670A: $CD $61 $7D
    ld   e, $1A                                   ; $670D: $1E $1A
    ld   a, [de]                                  ; $670F: $1A
    inc  a                                        ; $6710: $3C
    ld   [de], a                                  ; $6711: $12
    cp   $10                                      ; $6712: $FE $10
    jr   c, jr_001_6739                           ; $6714: $38 $23

    ld   e, $00                                   ; $6716: $1E $00
    cp   $40                                      ; $6718: $FE $40
    jr   z, jr_001_6721                           ; $671A: $28 $05

    ld   a, [de]                                  ; $671C: $1A
    set  4, a                                     ; $671D: $CB $E7
    ld   [de], a                                  ; $671F: $12
    ret                                           ; $6720: $C9


jr_001_6721:
    ld   a, [de]                                  ; $6721: $1A
    res  4, a                                     ; $6722: $CB $A7
    ld   [de], a                                  ; $6724: $12
    ld   e, $0E                                   ; $6725: $1E $0E
    ld   a, [de]                                  ; $6727: $1A
    sub  $02                                      ; $6728: $D6 $02
    ld   [de], a                                  ; $672A: $12
    inc  e                                        ; $672B: $1C
    xor  a                                        ; $672C: $AF
    ld   [de], a                                  ; $672D: $12
    inc  e                                        ; $672E: $1C
    ld   [de], a                                  ; $672F: $12
    ld   e, $1A                                   ; $6730: $1E $1A
    ld   [de], a                                  ; $6732: $12
    ld   e, $0C                                   ; $6733: $1E $0C
    inc  a                                        ; $6735: $3C
    ld   [de], a                                  ; $6736: $12
    jr   jr_001_6703                              ; $6737: $18 $CA

jr_001_6739:
    push hl                                       ; $6739: $E5
    call AdvanceActorFixedPointMovement           ; $673A: $CD $93 $4A
    pop  hl                                       ; $673D: $E1

jr_001_673E:
    ld   hl, $180C                                ; $673E: $21 $0C $18
    ld   e, $0E                                   ; $6741: $1E $0E
    ld   a, [de]                                  ; $6743: $1A
    cp   $5D                                      ; $6744: $FE $5D
    jr   nc, jr_001_674B                          ; $6746: $30 $03

    ld   hl, $1016                                ; $6748: $21 $16 $10

jr_001_674B:
    jp   SharedPlayerContactComparator            ; $674B: $C3 $4B $7B


    ld   e, $0C                                   ; $674E: $1E $0C
    ld   a, [de]                                  ; $6750: $1A
    dec  a                                        ; $6751: $3D
    jr   z, jr_001_66D6                           ; $6752: $28 $82

    dec  a                                        ; $6754: $3D
    jr   z, jr_001_66F2                           ; $6755: $28 $9B

    dec  a                                        ; $6757: $3D
    jr   z, jr_001_670A                           ; $6758: $28 $B0

    ld   a, [$C585]                               ; $675A: $FA $85 $C5
    rrca                                          ; $675D: $0F
    ret  nc                                       ; $675E: $D0

    ld   e, $0E                                   ; $675F: $1E $0E
    ld   a, $5D                                   ; $6761: $3E $5D
    ld   [de], a                                  ; $6763: $12
    jp   Jump_001_66C1                            ; $6764: $C3 $C1 $66


    ld   e, $0C                                   ; $6767: $1E $0C
    ld   a, [de]                                  ; $6769: $1A
    dec  a                                        ; $676A: $3D
    jr   z, jr_001_677E                           ; $676B: $28 $11

    ld   a, $3E                                   ; $676D: $3E $3E

Jump_001_676F:
    ld   e, $0E                                   ; $676F: $1E $0E
    ld   [de], a                                  ; $6771: $12
    inc  e                                        ; $6772: $1C
    xor  a                                        ; $6773: $AF
    ld   [de], a                                  ; $6774: $12
    inc  e                                        ; $6775: $1C
    ld   [de], a                                  ; $6776: $12
    ld   e, $0C                                   ; $6777: $1E $0C
    inc  a                                        ; $6779: $3C
    ld   [de], a                                  ; $677A: $12
    jp   $4A6A                                    ; $677B: $C3 $6A $4A


Jump_001_677E:
jr_001_677E:
    ld   e, $00                                   ; $677E: $1E $00
    ld   a, [de]                                  ; $6780: $1A
    bit  3, a                                     ; $6781: $CB $5F
    jr   nz, jr_001_678F                          ; $6783: $20 $0A

    call AdvanceActorFixedPointMovement           ; $6785: $CD $93 $4A
    ld   hl, $0C0A                                ; $6788: $21 $0A $0C
    call SharedPlayerContactComparator            ; $678B: $CD $4B $7B
    ret  nc                                       ; $678E: $D0

jr_001_678F:
    xor  a                                        ; $678F: $AF
    ld   e, $00                                   ; $6790: $1E $00
    ld   [de], a                                  ; $6792: $12
    ret                                           ; $6793: $C9


Jump_001_6794:
    ld   e, $00                                   ; $6794: $1E $00
    ld   a, [de]                                  ; $6796: $1A
    bit  3, a                                     ; $6797: $CB $5F
    jr   nz, jr_001_678F                          ; $6799: $20 $F4

    call AdvanceActorFixedPointMovement           ; $679B: $CD $93 $4A
    ld   hl, $100E                                ; $679E: $21 $0E $10
    call SharedPlayerContactComparator            ; $67A1: $CD $4B $7B
    jr   c, jr_001_678F                           ; $67A4: $38 $E9

    ret                                           ; $67A6: $C9


    push de                                       ; $67A7: $D5
    ld   bc, $C669                                ; $67A8: $01 $69 $C6
    ld   de, $6C93                                ; $67AB: $11 $93 $6C
    call Call_000_066F                            ; $67AE: $CD $6F $06
    pop  de                                       ; $67B1: $D1
    ld   e, $0C                                   ; $67B2: $1E $0C
    ld   a, [de]                                  ; $67B4: $1A
    call Call_000_0B7D                            ; $67B5: $CD $7D $0B
    jp   nz, $D967                                ; $67B8: $C2 $67 $D9

    ld   h, a                                     ; $67BB: $67
    ld   d, b                                     ; $67BC: $50
    ld   l, b                                     ; $67BD: $68
    cp   a                                        ; $67BE: $BF
    ld   l, b                                     ; $67BF: $68
    ret  nz                                       ; $67C0: $C0

    ld   l, b                                     ; $67C1: $68
    ld   e, $0E                                   ; $67C2: $1E $0E
    ld   a, $6A                                   ; $67C4: $3E $6A
    ld   [de], a                                  ; $67C6: $12
    inc  e                                        ; $67C7: $1C
    xor  a                                        ; $67C8: $AF
    ld   [de], a                                  ; $67C9: $12
    inc  e                                        ; $67CA: $1C
    ld   [de], a                                  ; $67CB: $12
    ld   e, $08                                   ; $67CC: $1E $08
    ld   [de], a                                  ; $67CE: $12
    ld   e, $1B                                   ; $67CF: $1E $1B
    ld   [de], a                                  ; $67D1: $12
    inc  e                                        ; $67D2: $1C
    ld   [de], a                                  ; $67D3: $12
    ld   e, $0C                                   ; $67D4: $1E $0C
    inc  a                                        ; $67D6: $3C
    ld   [de], a                                  ; $67D7: $12
    ret                                           ; $67D8: $C9


    ld   e, $1B                                   ; $67D9: $1E $1B
    ld   a, [de]                                  ; $67DB: $1A
    and  a                                        ; $67DC: $A7
    jr   nz, jr_001_6808                          ; $67DD: $20 $29

    ld   e, $08                                   ; $67DF: $1E $08
    ld   a, [de]                                  ; $67E1: $1A
    inc  a                                        ; $67E2: $3C
    ld   [de], a                                  ; $67E3: $12
    cp   $80                                      ; $67E4: $FE $80
    jr   nz, jr_001_6808                          ; $67E6: $20 $20

    xor  a                                        ; $67E8: $AF
    ld   [de], a                                  ; $67E9: $12
    ld   e, $1B                                   ; $67EA: $1E $1B
    ld   a, $02                                   ; $67EC: $3E $02
    ld   [de], a                                  ; $67EE: $12
    ld   [$C7C4], a                               ; $67EF: $EA $C4 $C7
    ld   bc, $0143                                ; $67F2: $01 $43 $01
    call $6A4B                                    ; $67F5: $CD $4B $6A
    dec  b                                        ; $67F8: $05
    call $6A4B                                    ; $67F9: $CD $4B $6A
    ld   bc, $6868                                ; $67FC: $01 $68 $68
    call Call_001_6888                            ; $67FF: $CD $88 $68
    ld   e, $0C                                   ; $6802: $1E $0C
    ld   a, $02                                   ; $6804: $3E $02
    ld   [de], a                                  ; $6806: $12
    ret                                           ; $6807: $C9


jr_001_6808:
    ld   e, $1C                                   ; $6808: $1E $1C
    ld   a, [de]                                  ; $680A: $1A
    inc  a                                        ; $680B: $3C
    ld   [de], a                                  ; $680C: $12
    and  $3F                                      ; $680D: $E6 $3F
    jr   nz, jr_001_6878                          ; $680F: $20 $67

    inc  e                                        ; $6811: $1C
    ld   a, [de]                                  ; $6812: $1A
    inc  a                                        ; $6813: $3C
    and  $1F                                      ; $6814: $E6 $1F
    ld   [de], a                                  ; $6816: $12
    ld   hl, $6899                                ; $6817: $21 $99 $68
    call AddAToHL                                 ; $681A: $CD $71 $00
    ld   a, [hl]                                  ; $681D: $7E
    and  $0E                                      ; $681E: $E6 $0E
    rrca                                          ; $6820: $0F
    ld   bc, $68B9                                ; $6821: $01 $B9 $68
    add  c                                        ; $6824: $81
    ld   c, a                                     ; $6825: $4F
    call Call_000_0BBF                            ; $6826: $CD $BF $0B
    rrca                                          ; $6829: $0F
    ld   a, [bc]                                  ; $682A: $0A
    jr   nc, jr_001_682F                          ; $682B: $30 $02

    swap a                                        ; $682D: $CB $37

jr_001_682F:
    and  $0F                                      ; $682F: $E6 $0F
    ld   b, a                                     ; $6831: $47
    ld   c, $42                                   ; $6832: $0E $42
    push hl                                       ; $6834: $E5
    ld   [$C7C4], a                               ; $6835: $EA $C4 $C7
    call $6A4B                                    ; $6838: $CD $4B $6A
    pop  hl                                       ; $683B: $E1
    ld   a, [hl]                                  ; $683C: $7E
    and  $01                                      ; $683D: $E6 $01
    inc  a                                        ; $683F: $3C
    ld   c, d                                     ; $6840: $4A
    add  d                                        ; $6841: $82
    ld   d, a                                     ; $6842: $57
    ld   e, $0E                                   ; $6843: $1E $0E
    ld   a, [hl]                                  ; $6845: $7E
    swap a                                        ; $6846: $CB $37
    and  $0F                                      ; $6848: $E6 $0F
    or   $60                                      ; $684A: $F6 $60
    ld   [de], a                                  ; $684C: $12
    ld   d, c                                     ; $684D: $51
    jr   jr_001_6878                              ; $684E: $18 $28

    ld   e, $08                                   ; $6850: $1E $08
    ld   a, [de]                                  ; $6852: $1A
    inc  a                                        ; $6853: $3C
    ld   [de], a                                  ; $6854: $12
    cp   $30                                      ; $6855: $FE $30
    jr   z, jr_001_6866                           ; $6857: $28 $0D

    push de                                       ; $6859: $D5
    ld   bc, $C66B                                ; $685A: $01 $6B $C6
    ld   de, $1C00                                ; $685D: $11 $00 $1C
    call Call_000_0652                            ; $6860: $CD $52 $06
    pop  de                                       ; $6863: $D1
    jr   jr_001_6878                              ; $6864: $18 $12

jr_001_6866:
    xor  a                                        ; $6866: $AF
    ld   [de], a                                  ; $6867: $12
    ld   e, $0C                                   ; $6868: $1E $0C
    ld   a, $01                                   ; $686A: $3E $01
    ld   [de], a                                  ; $686C: $12
    push de                                       ; $686D: $D5
    ld   bc, $C66B                                ; $686E: $01 $6B $C6
    ld   d, $1C                                   ; $6871: $16 $1C
    call Call_000_0666                            ; $6873: $CD $66 $06
    pop  de                                       ; $6876: $D1
    ret                                           ; $6877: $C9


jr_001_6878:
    ld   hl, $1018                                ; $6878: $21 $18 $10
    call SharedPlayerContactComparator            ; $687B: $CD $4B $7B
    ld   bc, $0C14                                ; $687E: $01 $14 $0C
    call ComparePlayerProjectileWithActor         ; $6881: $CD $88 $7B
    jp   c, Jump_001_78FB                         ; $6884: $DA $FB $78

    ret                                           ; $6887: $C9


Call_001_6888:
    inc  d                                        ; $6888: $14
    ld   e, $0E                                   ; $6889: $1E $0E
    ld   a, b                                     ; $688B: $78
    ld   [de], a                                  ; $688C: $12
    inc  d                                        ; $688D: $14
    ld   a, c                                     ; $688E: $79
    ld   [de], a                                  ; $688F: $12
    ld   a, $20                                   ; $6890: $3E $20
    ld   e, $08                                   ; $6892: $1E $08
    ld   [de], a                                  ; $6894: $12
    dec  d                                        ; $6895: $15
    ld   [de], a                                  ; $6896: $12
    dec  d                                        ; $6897: $15
    ret                                           ; $6898: $C9


    add  b                                        ; $6899: $80
    add  e                                        ; $689A: $83
    or   h                                        ; $689B: $B4
    or   a                                        ; $689C: $B7
    sbc  b                                        ; $689D: $98
    sbc  e                                        ; $689E: $9B
    add  b                                        ; $689F: $80
    add  b                                        ; $68A0: $80
    or   h                                        ; $68A1: $B4
    add  e                                        ; $68A2: $83
    add  b                                        ; $68A3: $80
    sbc  b                                        ; $68A4: $98
    or   a                                        ; $68A5: $B7
    sbc  e                                        ; $68A6: $9B
    or   h                                        ; $68A7: $B4
    add  e                                        ; $68A8: $83
    or   a                                        ; $68A9: $B7
    add  b                                        ; $68AA: $80
    add  e                                        ; $68AB: $83
    sbc  e                                        ; $68AC: $9B
    or   h                                        ; $68AD: $B4
    sbc  b                                        ; $68AE: $98
    or   a                                        ; $68AF: $B7
    add  b                                        ; $68B0: $80
    add  b                                        ; $68B1: $80
    sbc  e                                        ; $68B2: $9B
    sbc  b                                        ; $68B3: $98
    or   a                                        ; $68B4: $B7
    or   h                                        ; $68B5: $B4
    add  e                                        ; $68B6: $83
    add  b                                        ; $68B7: $80
    sbc  e                                        ; $68B8: $9B
    inc  hl                                       ; $68B9: $23
    ld   b, l                                     ; $68BA: $45
    inc  bc                                       ; $68BB: $03
    dec  d                                        ; $68BC: $15
    jr   nz, jr_001_6900                          ; $68BD: $20 $41

    ret                                           ; $68BF: $C9


    ld   e, $08                                   ; $68C0: $1E $08
    ld   a, [de]                                  ; $68C2: $1A
    cp   $80                                      ; $68C3: $FE $80
    jr   z, jr_001_68CA                           ; $68C5: $28 $03

    inc  a                                        ; $68C7: $3C
    ld   [de], a                                  ; $68C8: $12
    ret                                           ; $68C9: $C9


jr_001_68CA:
    xor  a                                        ; $68CA: $AF
    ld   e, $00                                   ; $68CB: $1E $00
    ld   [de], a                                  ; $68CD: $12
    inc  d                                        ; $68CE: $14
    ld   [de], a                                  ; $68CF: $12
    inc  d                                        ; $68D0: $14
    ld   [de], a                                  ; $68D1: $12
    inc  d                                        ; $68D2: $14
    ld   [de], a                                  ; $68D3: $12
    inc  d                                        ; $68D4: $14
    ld   [de], a                                  ; $68D5: $12
    ret                                           ; $68D6: $C9


    ld   e, $0C                                   ; $68D7: $1E $0C
    ld   a, [de]                                  ; $68D9: $1A
    and  a                                        ; $68DA: $A7
    jr   z, jr_001_68DF                           ; $68DB: $28 $02

    jr   jr_001_68EE                              ; $68DD: $18 $0F

jr_001_68DF:
    ld   e, $0E                                   ; $68DF: $1E $0E
    ld   a, $69                                   ; $68E1: $3E $69
    ld   [de], a                                  ; $68E3: $12
    inc  e                                        ; $68E4: $1C
    xor  a                                        ; $68E5: $AF
    ld   [de], a                                  ; $68E6: $12
    inc  e                                        ; $68E7: $1C
    ld   [de], a                                  ; $68E8: $12
    ld   e, $0C                                   ; $68E9: $1E $0C
    inc  a                                        ; $68EB: $3C
    ld   [de], a                                  ; $68EC: $12
    ret                                           ; $68ED: $C9


jr_001_68EE:
    ld   e, $0E                                   ; $68EE: $1E $0E
    ld   a, [de]                                  ; $68F0: $1A
    ld   hl, $1C0C                                ; $68F1: $21 $0C $1C
    rrca                                          ; $68F4: $0F
    jr   nc, jr_001_690E                          ; $68F5: $30 $17

    ld   hl, $0C1C                                ; $68F7: $21 $1C $0C
    rrca                                          ; $68FA: $0F
    jr   c, jr_001_690E                           ; $68FB: $38 $11

    ld   hl, $1C0C                                ; $68FD: $21 $0C $1C

jr_001_6900:
    ld   hl, $0C1C                                ; $6900: $21 $1C $0C
    push hl                                       ; $6903: $E5
    call SharedPlayerContactComparator            ; $6904: $CD $4B $7B
    pop  bc                                       ; $6907: $C1
    call ComparePlayerProjectileWithActor         ; $6908: $CD $88 $7B
    ld   hl, $1C0C                                ; $690B: $21 $0C $1C

jr_001_690E:
    push hl                                       ; $690E: $E5
    call SharedPlayerContactComparator            ; $690F: $CD $4B $7B
    pop  bc                                       ; $6912: $C1
    jp   ComparePlayerProjectileWithActor         ; $6913: $C3 $88 $7B


    ld   e, $0C                                   ; $6916: $1E $0C
    ld   a, [de]                                  ; $6918: $1A
    and  a                                        ; $6919: $A7
    jr   z, jr_001_691F                           ; $691A: $28 $03

    jr   @+$32                                    ; $691C: $18 $30

    ret                                           ; $691E: $C9


jr_001_691F:
    ld   e, $0A                                   ; $691F: $1E $0A
    ld   a, [de]                                  ; $6921: $1A
    ld   hl, $6948                                ; $6922: $21 $48 $69
    call AddAToHL                                 ; $6925: $CD $71 $00
    ld   a, [hl]                                  ; $6928: $7E
    ld   e, $01                                   ; $6929: $1E $01
    ld   [de], a                                  ; $692B: $12
    ld   b, $03                                   ; $692C: $06 $03
    bit  3, a                                     ; $692E: $CB $5F
    jr   nz, jr_001_6934                          ; $6930: $20 $02

    ld   b, $23                                   ; $6932: $06 $23

jr_001_6934:
    ld   a, b                                     ; $6934: $78
    dec  e                                        ; $6935: $1D
    ld   [de], a                                  ; $6936: $12
    ld   e, $0E                                   ; $6937: $1E $0E
    ld   a, $58                                   ; $6939: $3E $58
    ld   [de], a                                  ; $693B: $12
    call $4A6A                                    ; $693C: $CD $6A $4A
    call Call_001_69FB                            ; $693F: $CD $FB $69
    ld   e, $0B                                   ; $6942: $1E $0B
    ld   a, $02                                   ; $6944: $3E $02
    ld   [de], a                                  ; $6946: $12
    ret                                           ; $6947: $C9


    dec  a                                        ; $6948: $3D
    inc  sp                                       ; $6949: $33
    ld   a, $3A                                   ; $694A: $3E $3A
    ld   [hl-], a                                 ; $694C: $32
    ld   [hl], $1E                                ; $694D: $36 $1E
    ld   [$FE1A], sp                              ; $694F: $08 $1A $FE
    jr   nz, @+$2A                                ; $6952: $20 $28

    inc  bc                                       ; $6954: $03
    inc  a                                        ; $6955: $3C
    ld   [de], a                                  ; $6956: $12
    ret                                           ; $6957: $C9


    ld   e, $00                                   ; $6958: $1E $00
    ld   a, [de]                                  ; $695A: $1A
    bit  3, a                                     ; $695B: $CB $5F
    jr   nz, jr_001_6996                          ; $695D: $20 $37

    call AdvanceActorFixedPointMovement           ; $695F: $CD $93 $4A
    ld   hl, $0C0A                                ; $6962: $21 $0A $0C
    call SharedPlayerContactComparator            ; $6965: $CD $4B $7B
    jr   c, jr_001_6996                           ; $6968: $38 $2C

    ld   h, $F0                                   ; $696A: $26 $F0
    ld   l, $05                                   ; $696C: $2E $05
    call Call_001_6DCA                            ; $696E: $CD $CA $6D
    ld   c, $04                                   ; $6971: $0E $04
    ld   a, [$C662]                               ; $6973: $FA $62 $C6
    and  a                                        ; $6976: $A7
    jr   nz, jr_001_698E                          ; $6977: $20 $15

    ld   h, $F8                                   ; $6979: $26 $F8
    ld   l, $08                                   ; $697B: $2E $08
    call Call_001_6DCA                            ; $697D: $CD $CA $6D
    ld   hl, $C660                                ; $6980: $21 $60 $C6
    ld   a, [hl+]                                 ; $6983: $2A
    or   [hl]                                     ; $6984: $B6
    ret  z                                        ; $6985: $C8

    ld   e, $00                                   ; $6986: $1E $00
    ld   a, [de]                                  ; $6988: $1A
    xor  $20                                      ; $6989: $EE $20
    ld   [de], a                                  ; $698B: $12
    ld   c, $0C                                   ; $698C: $0E $0C

jr_001_698E:
    ld   e, $01                                   ; $698E: $1E $01
    ld   a, [de]                                  ; $6990: $1A
    xor  c                                        ; $6991: $A9
    ld   [de], a                                  ; $6992: $12
    jp   AdvanceActorFixedPointMovement           ; $6993: $C3 $93 $4A


jr_001_6996:
    xor  a                                        ; $6996: $AF
    ld   e, $00                                   ; $6997: $1E $00
    ld   [de], a                                  ; $6999: $12
    ret                                           ; $699A: $C9


    ld   e, $0C                                   ; $699B: $1E $0C
    ld   a, [de]                                  ; $699D: $1A
    and  a                                        ; $699E: $A7
    jr   z, jr_001_69A4                           ; $699F: $28 $03

    jr   jr_001_69B9                              ; $69A1: $18 $16

    ret                                           ; $69A3: $C9


jr_001_69A4:
    ld   a, $18                                   ; $69A4: $3E $18
    ld   e, $01                                   ; $69A6: $1E $01
    ld   [de], a                                  ; $69A8: $12
    ld   e, $0E                                   ; $69A9: $1E $0E
    ld   a, $57                                   ; $69AB: $3E $57
    ld   [de], a                                  ; $69AD: $12
    call Call_001_69FB                            ; $69AE: $CD $FB $69
    ld   e, $0B                                   ; $69B1: $1E $0B
    ld   a, $02                                   ; $69B3: $3E $02
    ld   [de], a                                  ; $69B5: $12
    jp   $4A6A                                    ; $69B6: $C3 $6A $4A


jr_001_69B9:
    ld   a, [$C708]                               ; $69B9: $FA $08 $C7
    and  a                                        ; $69BC: $A7
    ret  nz                                       ; $69BD: $C0

    call AdvanceActorFixedPointMovement           ; $69BE: $CD $93 $4A
    ld   e, $00                                   ; $69C1: $1E $00
    ld   a, [de]                                  ; $69C3: $1A
    bit  3, a                                     ; $69C4: $CB $5F
    jr   nz, jr_001_69DF                          ; $69C6: $20 $17

    ld   hl, $0C0A                                ; $69C8: $21 $0A $0C
    call SharedPlayerContactComparator            ; $69CB: $CD $4B $7B
    jr   c, jr_001_69DF                           ; $69CE: $38 $0F

    ld   bc, $0C0C                                ; $69D0: $01 $0C $0C
    call ComparePlayerProjectileWithActor         ; $69D3: $CD $88 $7B
    jr   nc, jr_001_69E8                          ; $69D6: $30 $10

    ld   a, [$DF38]                               ; $69D8: $FA $38 $DF
    cp   $03                                      ; $69DB: $FE $03
    jr   nz, jr_001_69E8                          ; $69DD: $20 $09

jr_001_69DF:
    xor  a                                        ; $69DF: $AF
    ld   e, $00                                   ; $69E0: $1E $00
    ld   [de], a                                  ; $69E2: $12
    ld   hl, $C71B                                ; $69E3: $21 $1B $C7
    dec  [hl]                                     ; $69E6: $35
    ret                                           ; $69E7: $C9


jr_001_69E8:
    ld   e, $08                                   ; $69E8: $1E $08
    ld   a, [de]                                  ; $69EA: $1A
    inc  a                                        ; $69EB: $3C
    ld   [de], a                                  ; $69EC: $12
    and  $0F                                      ; $69ED: $E6 $0F
    ret  nz                                       ; $69EF: $C0

    call Call_001_7C7B                            ; $69F0: $CD $7B $7C
    or   $10                                      ; $69F3: $F6 $10
    ld   e, $01                                   ; $69F5: $1E $01
    ld   [de], a                                  ; $69F7: $12
    jp   $4A6A                                    ; $69F8: $C3 $6A $4A


Call_001_69FB:
Jump_001_69FB:
    ld   e, $0A                                   ; $69FB: $1E $0A
    ld   a, [de]                                  ; $69FD: $1A
    rlca                                          ; $69FE: $07
    rlca                                          ; $69FF: $07
    ld   hl, $6A1F                                ; $6A00: $21 $1F $6A
    call AddAToHL                                 ; $6A03: $CD $71 $00
    ld   e, $03                                   ; $6A06: $1E $03
    ld   a, [hl+]                                 ; $6A08: $2A
    ld   [de], a                                  ; $6A09: $12
    inc  e                                        ; $6A0A: $1C
    ld   a, [hl+]                                 ; $6A0B: $2A
    ld   [de], a                                  ; $6A0C: $12
    ld   e, $06                                   ; $6A0D: $1E $06
    ld   a, [hl+]                                 ; $6A0F: $2A
    ld   [de], a                                  ; $6A10: $12
    inc  e                                        ; $6A11: $1C
    ld   a, [hl]                                  ; $6A12: $7E
    ld   [de], a                                  ; $6A13: $12
    ld   e, $08                                   ; $6A14: $1E $08
    xor  a                                        ; $6A16: $AF
    ld   [de], a                                  ; $6A17: $12
    inc  a                                        ; $6A18: $3C
    ld   e, $0B                                   ; $6A19: $1E $0B
    ld   [de], a                                  ; $6A1B: $12
    inc  e                                        ; $6A1C: $1C
    ld   [de], a                                  ; $6A1D: $12
    ret                                           ; $6A1E: $C9


    ld   h, b                                     ; $6A1F: $60
    nop                                           ; $6A20: $00
    ld   d, b                                     ; $6A21: $50
    nop                                           ; $6A22: $00
    ld   h, b                                     ; $6A23: $60
    nop                                           ; $6A24: $00
    ret  nz                                       ; $6A25: $C0

    nop                                           ; $6A26: $00
    ld   c, b                                     ; $6A27: $48
    nop                                           ; $6A28: $00
    ld   l, b                                     ; $6A29: $68
    nop                                           ; $6A2A: $00
    ld   [hl], b                                  ; $6A2B: $70
    nop                                           ; $6A2C: $00
    ld   l, b                                     ; $6A2D: $68
    nop                                           ; $6A2E: $00
    ld   c, b                                     ; $6A2F: $48
    nop                                           ; $6A30: $00
    xor  b                                        ; $6A31: $A8
    nop                                           ; $6A32: $00
    ld   [hl], b                                  ; $6A33: $70
    nop                                           ; $6A34: $00
    xor  b                                        ; $6A35: $A8
    nop                                           ; $6A36: $00
    sbc  b                                        ; $6A37: $98
    ld   [bc], a                                  ; $6A38: $02
    ld   a, b                                     ; $6A39: $78
    ld   b, $98                                   ; $6A3A: $06 $98
    ld   [bc], a                                  ; $6A3C: $02
    ld   h, b                                     ; $6A3D: $60
    ld   b, $98                                   ; $6A3E: $06 $98
    ld   [bc], a                                  ; $6A40: $02
    sub  b                                        ; $6A41: $90
    ld   b, $B8                                   ; $6A42: $06 $B8
    ld   [bc], a                                  ; $6A44: $02
    ld   h, b                                     ; $6A45: $60
    ld   b, $B8                                   ; $6A46: $06 $B8
    ld   [bc], a                                  ; $6A48: $02
    sub  b                                        ; $6A49: $90
    ld   b, $C5                                   ; $6A4A: $06 $C5
    call FindAvailableWorldActorPage              ; $6A4C: $CD $5D $4D
    pop  bc                                       ; $6A4F: $C1
    ld   a, $03                                   ; $6A50: $3E $03
    ld   [hl], a                                  ; $6A52: $77
    ld   l, $09                                   ; $6A53: $2E $09
    ld   a, c                                     ; $6A55: $79
    ld   [hl+], a                                 ; $6A56: $22
    ld   a, b                                     ; $6A57: $78
    ld   [hl+], a                                 ; $6A58: $22
    ld   a, $01                                   ; $6A59: $3E $01
    ld   [hl+], a                                 ; $6A5B: $22
    xor  a                                        ; $6A5C: $AF
    ld   [hl], a                                  ; $6A5D: $77
    ret                                           ; $6A5E: $C9


    ld   a, e                                     ; $6A5F: $7B
    ld   h, [hl]                                  ; $6A60: $66
    ld   a, [hl]                                  ; $6A61: $7E
    ld   h, [hl]                                  ; $6A62: $66
    and  [hl]                                     ; $6A63: $A6
    ld   h, a                                     ; $6A64: $67
    sbc  l                                        ; $6A65: $9D
    ld   [hl], a                                  ; $6A66: $77
    add  d                                        ; $6A67: $82
    halt                                          ; $6A68: $76
    and  e                                        ; $6A69: $A3
    ld   [hl], a                                  ; $6A6A: $77
    sbc  d                                        ; $6A6B: $9A
    ld   [hl], a                                  ; $6A6C: $77
    add  l                                        ; $6A6D: $85
    halt                                          ; $6A6E: $76
    push de                                       ; $6A6F: $D5
    ld   bc, $C669                                ; $6A70: $01 $69 $C6
    ld   de, $6C93                                ; $6A73: $11 $93 $6C
    call Call_000_066F                            ; $6A76: $CD $6F $06
    pop  de                                       ; $6A79: $D1
    ld   e, $0C                                   ; $6A7A: $1E $0C
    ld   a, [de]                                  ; $6A7C: $1A
    call Call_000_0B7D                            ; $6A7D: $CD $7D $0B
    adc  d                                        ; $6A80: $8A
    ld   l, d                                     ; $6A81: $6A
    xor  l                                        ; $6A82: $AD
    ld   l, d                                     ; $6A83: $6A
    ld   e, $6B                                   ; $6A84: $1E $6B
    ld   b, [hl]                                  ; $6A86: $46
    ld   l, e                                     ; $6A87: $6B
    ld   b, a                                     ; $6A88: $47
    ld   l, e                                     ; $6A89: $6B
    ld   e, $06                                   ; $6A8A: $1E $06
    ld   a, $78                                   ; $6A8C: $3E $78
    ld   [de], a                                  ; $6A8E: $12
    ld   e, $0E                                   ; $6A8F: $1E $0E
    ld   a, $64                                   ; $6A91: $3E $64
    ld   [de], a                                  ; $6A93: $12
    inc  e                                        ; $6A94: $1C
    xor  a                                        ; $6A95: $AF
    ld   [de], a                                  ; $6A96: $12
    inc  e                                        ; $6A97: $1C
    ld   [de], a                                  ; $6A98: $12
    ld   e, $08                                   ; $6A99: $1E $08
    ld   [de], a                                  ; $6A9B: $12
    ld   e, $1B                                   ; $6A9C: $1E $1B
    ld   [de], a                                  ; $6A9E: $12
    inc  e                                        ; $6A9F: $1C
    ld   [de], a                                  ; $6AA0: $12
    inc  e                                        ; $6AA1: $1C
    ld   [de], a                                  ; $6AA2: $12
    ld   e, $0C                                   ; $6AA3: $1E $0C
    inc  a                                        ; $6AA5: $3C
    ld   [de], a                                  ; $6AA6: $12
    ld   hl, $C66A                                ; $6AA7: $21 $6A $C6
    ld   a, [hl+]                                 ; $6AAA: $2A
    ld   [hl], a                                  ; $6AAB: $77
    ret                                           ; $6AAC: $C9


    ld   a, [$DF06]                               ; $6AAD: $FA $06 $DF
    bit  1, a                                     ; $6AB0: $CB $4F
    ret  z                                        ; $6AB2: $C8

    ld   e, $1B                                   ; $6AB3: $1E $1B
    ld   a, [de]                                  ; $6AB5: $1A
    and  a                                        ; $6AB6: $A7
    jr   nz, jr_001_6ADD                          ; $6AB7: $20 $24

    ld   e, $08                                   ; $6AB9: $1E $08
    ld   a, [de]                                  ; $6ABB: $1A
    inc  a                                        ; $6ABC: $3C
    ld   [de], a                                  ; $6ABD: $12
    cp   $80                                      ; $6ABE: $FE $80
    jr   nz, jr_001_6ADD                          ; $6AC0: $20 $1B

    xor  a                                        ; $6AC2: $AF
    ld   [de], a                                  ; $6AC3: $12
    ld   e, $1B                                   ; $6AC4: $1E $1B
    inc  a                                        ; $6AC6: $3C
    ld   [de], a                                  ; $6AC7: $12
    ld   [$C7C4], a                               ; $6AC8: $EA $C4 $C7
    ld   bc, $0643                                ; $6ACB: $01 $43 $06
    call $6A4B                                    ; $6ACE: $CD $4B $6A
    ld   bc, $6666                                ; $6AD1: $01 $66 $66
    call Call_001_6888                            ; $6AD4: $CD $88 $68
    ld   e, $0C                                   ; $6AD7: $1E $0C
    ld   a, $02                                   ; $6AD9: $3E $02
    ld   [de], a                                  ; $6ADB: $12
    ret                                           ; $6ADC: $C9


jr_001_6ADD:
    ld   e, $1C                                   ; $6ADD: $1E $1C
    ld   a, [de]                                  ; $6ADF: $1A
    and  a                                        ; $6AE0: $A7
    jr   nz, jr_001_6B0E                          ; $6AE1: $20 $2B

    inc  a                                        ; $6AE3: $3C
    ld   [de], a                                  ; $6AE4: $12
    inc  e                                        ; $6AE5: $1C
    ld   a, [de]                                  ; $6AE6: $1A
    inc  a                                        ; $6AE7: $3C
    and  $07                                      ; $6AE8: $E6 $07
    ld   [de], a                                  ; $6AEA: $12
    rlca                                          ; $6AEB: $07
    ld   hl, $6A5F                                ; $6AEC: $21 $5F $6A
    call AddAToHL                                 ; $6AEF: $CD $71 $00
    ld   a, [hl+]                                 ; $6AF2: $2A
    push hl                                       ; $6AF3: $E5
    ld   b, a                                     ; $6AF4: $47
    ld   c, $47                                   ; $6AF5: $0E $47
    call $6A4B                                    ; $6AF7: $CD $4B $6A
    pop  hl                                       ; $6AFA: $E1
    ld   a, [hl]                                  ; $6AFB: $7E
    swap a                                        ; $6AFC: $CB $37
    and  $0F                                      ; $6AFE: $E6 $0F
    or   $60                                      ; $6B00: $F6 $60
    ld   b, a                                     ; $6B02: $47
    ld   a, [hl]                                  ; $6B03: $7E
    and  $0F                                      ; $6B04: $E6 $0F
    or   $60                                      ; $6B06: $F6 $60
    ld   c, a                                     ; $6B08: $4F
    call Call_001_6888                            ; $6B09: $CD $88 $68
    jr   jr_001_6B0E                              ; $6B0C: $18 $00

jr_001_6B0E:
    ld   hl, $1010                                ; $6B0E: $21 $10 $10
    call SharedPlayerContactComparator            ; $6B11: $CD $4B $7B
    ld   bc, $0C0C                                ; $6B14: $01 $0C $0C
    call ComparePlayerProjectileWithActor         ; $6B17: $CD $88 $7B
    jp   c, Jump_001_78FB                         ; $6B1A: $DA $FB $78

    ret                                           ; $6B1D: $C9


    ld   e, $08                                   ; $6B1E: $1E $08
    ld   a, [de]                                  ; $6B20: $1A
    inc  a                                        ; $6B21: $3C
    ld   [de], a                                  ; $6B22: $12
    cp   $30                                      ; $6B23: $FE $30
    jr   z, jr_001_6B34                           ; $6B25: $28 $0D

    push de                                       ; $6B27: $D5
    ld   bc, $C66B                                ; $6B28: $01 $6B $C6
    ld   de, $1C00                                ; $6B2B: $11 $00 $1C
    call Call_000_0652                            ; $6B2E: $CD $52 $06
    pop  de                                       ; $6B31: $D1
    jr   jr_001_6B0E                              ; $6B32: $18 $DA

jr_001_6B34:
    xor  a                                        ; $6B34: $AF
    ld   [de], a                                  ; $6B35: $12
    ld   e, $0C                                   ; $6B36: $1E $0C
    ld   a, $01                                   ; $6B38: $3E $01
    ld   [de], a                                  ; $6B3A: $12
    push de                                       ; $6B3B: $D5
    ld   bc, $C66B                                ; $6B3C: $01 $6B $C6
    ld   d, $1C                                   ; $6B3F: $16 $1C
    call Call_000_0666                            ; $6B41: $CD $66 $06
    pop  de                                       ; $6B44: $D1
    ret                                           ; $6B45: $C9


    ret                                           ; $6B46: $C9


    ld   e, $08                                   ; $6B47: $1E $08
    ld   a, [de]                                  ; $6B49: $1A
    cp   $80                                      ; $6B4A: $FE $80
    jr   z, jr_001_6B51                           ; $6B4C: $28 $03

    inc  a                                        ; $6B4E: $3C
    ld   [de], a                                  ; $6B4F: $12
    ret                                           ; $6B50: $C9


jr_001_6B51:
    xor  a                                        ; $6B51: $AF
    ld   e, $00                                   ; $6B52: $1E $00
    ld   [de], a                                  ; $6B54: $12
    ret                                           ; $6B55: $C9


    ld   e, $0C                                   ; $6B56: $1E $0C
    ld   a, [de]                                  ; $6B58: $1A
    call Call_000_0B7D                            ; $6B59: $CD $7D $0B
    ld   h, b                                     ; $6B5C: $60
    ld   l, e                                     ; $6B5D: $6B
    ld   [hl], d                                  ; $6B5E: $72
    ld   l, e                                     ; $6B5F: $6B
    ld   e, $0E                                   ; $6B60: $1E $0E
    ld   a, $67                                   ; $6B62: $3E $67
    ld   [de], a                                  ; $6B64: $12
    inc  e                                        ; $6B65: $1C
    xor  a                                        ; $6B66: $AF
    ld   [de], a                                  ; $6B67: $12
    inc  e                                        ; $6B68: $1C
    ld   [de], a                                  ; $6B69: $12
    ld   e, $08                                   ; $6B6A: $1E $08
    ld   [de], a                                  ; $6B6C: $12
    ld   e, $0C                                   ; $6B6D: $1E $0C
    inc  a                                        ; $6B6F: $3C
    ld   [de], a                                  ; $6B70: $12
    ret                                           ; $6B71: $C9


    ld   e, $0E                                   ; $6B72: $1E $0E
    ld   a, [de]                                  ; $6B74: $1A
    cp   $67                                      ; $6B75: $FE $67
    ret  z                                        ; $6B77: $C8

    ld   hl, $1814                                ; $6B78: $21 $14 $18
    push hl                                       ; $6B7B: $E5
    call SharedPlayerContactComparator            ; $6B7C: $CD $4B $7B
    pop  bc                                       ; $6B7F: $C1
    jp   ComparePlayerProjectileWithActor         ; $6B80: $C3 $88 $7B


    ld   e, $0C                                   ; $6B83: $1E $0C
    ld   a, [de]                                  ; $6B85: $1A
    and  a                                        ; $6B86: $A7
    jr   z, jr_001_6B8C                           ; $6B87: $28 $03

    jr   jr_001_6BAC                              ; $6B89: $18 $21

    ret                                           ; $6B8B: $C9


jr_001_6B8C:
    ld   e, $0E                                   ; $6B8C: $1E $0E
    ld   a, $59                                   ; $6B8E: $3E $59
    ld   [de], a                                  ; $6B90: $12
    ld   e, $0A                                   ; $6B91: $1E $0A
    ld   a, [de]                                  ; $6B93: $1A
    ld   b, a                                     ; $6B94: $47
    swap a                                        ; $6B95: $CB $37
    and  $0F                                      ; $6B97: $E6 $0F
    ld   [de], a                                  ; $6B99: $12
    ld   a, b                                     ; $6B9A: $78
    and  $0F                                      ; $6B9B: $E6 $0F
    or   $30                                      ; $6B9D: $F6 $30
    ld   e, $01                                   ; $6B9F: $1E $01
    ld   [de], a                                  ; $6BA1: $12
    ld   e, $08                                   ; $6BA2: $1E $08
    xor  a                                        ; $6BA4: $AF
    ld   [de], a                                  ; $6BA5: $12
    call $4A6A                                    ; $6BA6: $CD $6A $4A
    jp   Jump_001_69FB                            ; $6BA9: $C3 $FB $69


jr_001_6BAC:
    ld   e, $08                                   ; $6BAC: $1E $08
    ld   a, [de]                                  ; $6BAE: $1A
    cp   $20                                      ; $6BAF: $FE $20
    jr   z, jr_001_6BB6                           ; $6BB1: $28 $03

    inc  a                                        ; $6BB3: $3C
    ld   [de], a                                  ; $6BB4: $12
    ret                                           ; $6BB5: $C9


jr_001_6BB6:
    call Call_001_548C                            ; $6BB6: $CD $8C $54
    ld   e, $00                                   ; $6BB9: $1E $00
    ld   a, [de]                                  ; $6BBB: $1A
    and  a                                        ; $6BBC: $A7
    ret  nz                                       ; $6BBD: $C0

    ld   [$C71C], a                               ; $6BBE: $EA $1C $C7
    ret                                           ; $6BC1: $C9


    push de                                       ; $6BC2: $D5
    call Call_000_0669                            ; $6BC3: $CD $69 $06
    pop  de                                       ; $6BC6: $D1
    ld   e, $0C                                   ; $6BC7: $1E $0C
    ld   a, [de]                                  ; $6BC9: $1A
    and  a                                        ; $6BCA: $A7
    jr   z, jr_001_6BD2                           ; $6BCB: $28 $05

    dec  a                                        ; $6BCD: $3D
    jr   z, jr_001_6BE9                           ; $6BCE: $28 $19

    jr   jr_001_6C2C                              ; $6BD0: $18 $5A

jr_001_6BD2:
    ld   e, $0E                                   ; $6BD2: $1E $0E
    ld   a, $6F                                   ; $6BD4: $3E $6F
    ld   [de], a                                  ; $6BD6: $12
    inc  e                                        ; $6BD7: $1C
    xor  a                                        ; $6BD8: $AF
    ld   [de], a                                  ; $6BD9: $12
    inc  e                                        ; $6BDA: $1C
    ld   [de], a                                  ; $6BDB: $12
    ld   e, $1A                                   ; $6BDC: $1E $1A
    inc  a                                        ; $6BDE: $3C
    ld   [de], a                                  ; $6BDF: $12
    ld   e, $0C                                   ; $6BE0: $1E $0C
    ld   [de], a                                  ; $6BE2: $12
    ld   hl, $C66A                                ; $6BE3: $21 $6A $C6
    ld   a, [hl+]                                 ; $6BE6: $2A
    ld   [hl], a                                  ; $6BE7: $77
    ret                                           ; $6BE8: $C9


jr_001_6BE9:
    ld   a, [$DF06]                               ; $6BE9: $FA $06 $DF
    bit  1, a                                     ; $6BEC: $CB $4F
    ret  z                                        ; $6BEE: $C8

    ld   e, $1A                                   ; $6BEF: $1E $1A
    ld   a, [de]                                  ; $6BF1: $1A
    inc  a                                        ; $6BF2: $3C
    ld   [de], a                                  ; $6BF3: $12
    and  $7F                                      ; $6BF4: $E6 $7F
    jr   nz, jr_001_6C19                          ; $6BF6: $20 $21

    ld   [$C7C4], a                               ; $6BF8: $EA $C4 $C7
    call Call_001_7C7B                            ; $6BFB: $CD $7B $7C
    or   $30                                      ; $6BFE: $F6 $30
    ld   c, a                                     ; $6C00: $4F
    call FindAvailableWorldActorPage              ; $6C01: $CD $5D $4D
    ld   b, $2A                                   ; $6C04: $06 $2A
    call Call_001_7D3F                            ; $6C06: $CD $3F $7D
    ld   b, $08                                   ; $6C09: $06 $08
    ld   e, $00                                   ; $6C0B: $1E $00
    ld   a, [de]                                  ; $6C0D: $1A
    bit  5, a                                     ; $6C0E: $CB $6F
    jr   nz, jr_001_6C14                          ; $6C10: $20 $02

    ld   b, $F8                                   ; $6C12: $06 $F8

jr_001_6C14:
    ld   l, $06                                   ; $6C14: $2E $06
    ld   a, [hl]                                  ; $6C16: $7E
    add  b                                        ; $6C17: $80
    ld   [hl], a                                  ; $6C18: $77

jr_001_6C19:
    call Call_001_7D61                            ; $6C19: $CD $61 $7D
    ld   hl, $1810                                ; $6C1C: $21 $10 $18
    call SharedPlayerContactComparator            ; $6C1F: $CD $4B $7B
    ld   bc, $1010                                ; $6C22: $01 $10 $10
    call ComparePlayerProjectileWithActor         ; $6C25: $CD $88 $7B
    jp   c, Jump_001_78FB                         ; $6C28: $DA $FB $78

    ret                                           ; $6C2B: $C9


jr_001_6C2C:
    ld   e, $08                                   ; $6C2C: $1E $08
    ld   a, [de]                                  ; $6C2E: $1A
    inc  a                                        ; $6C2F: $3C
    ld   [de], a                                  ; $6C30: $12
    sub  $40                                      ; $6C31: $D6 $40
    ret  nz                                       ; $6C33: $C0

    ld   e, $00                                   ; $6C34: $1E $00
    ld   [de], a                                  ; $6C36: $12
    ld   [$D800], a                               ; $6C37: $EA $00 $D8
    ld   hl, $C580                                ; $6C3A: $21 $80 $C5
    dec  [hl]                                     ; $6C3D: $35
    ret                                           ; $6C3E: $C9


    push de                                       ; $6C3F: $D5
    call Call_000_0669                            ; $6C40: $CD $69 $06
    pop  de                                       ; $6C43: $D1
    ld   e, $0C                                   ; $6C44: $1E $0C
    ld   a, [de]                                  ; $6C46: $1A
    and  a                                        ; $6C47: $A7
    jr   z, jr_001_6C5A                           ; $6C48: $28 $10

    dec  a                                        ; $6C4A: $3D
    jr   z, jr_001_6C7C                           ; $6C4B: $28 $2F

    dec  a                                        ; $6C4D: $3D
    jr   z, jr_001_6C9D                           ; $6C4E: $28 $4D

    dec  a                                        ; $6C50: $3D
    jr   z, jr_001_6CA9                           ; $6C51: $28 $56

    dec  a                                        ; $6C53: $3D
    jr   z, jr_001_6CB5                           ; $6C54: $28 $5F

    dec  a                                        ; $6C56: $3D
    jr   z, jr_001_6CBA                           ; $6C57: $28 $61

    ret                                           ; $6C59: $C9


jr_001_6C5A:
    call $4A6A                                    ; $6C5A: $CD $6A $4A
    ld   e, $0C                                   ; $6C5D: $1E $0C
    ld   a, $01                                   ; $6C5F: $3E $01
    ld   [de], a                                  ; $6C61: $12
    inc  e                                        ; $6C62: $1C
    inc  e                                        ; $6C63: $1C
    ld   a, $60                                   ; $6C64: $3E $60
    ld   [de], a                                  ; $6C66: $12
    inc  e                                        ; $6C67: $1C
    xor  a                                        ; $6C68: $AF
    ld   [de], a                                  ; $6C69: $12
    inc  e                                        ; $6C6A: $1C
    ld   [de], a                                  ; $6C6B: $12
    ld   e, $08                                   ; $6C6C: $1E $08
    inc  a                                        ; $6C6E: $3C
    ld   [de], a                                  ; $6C6F: $12
    ld   hl, $C66A                                ; $6C70: $21 $6A $C6
    ld   a, [hl+]                                 ; $6C73: $2A
    ld   [hl], a                                  ; $6C74: $77
    ld   e, $00                                   ; $6C75: $1E $00
    ld   a, [de]                                  ; $6C77: $1A
    set  6, a                                     ; $6C78: $CB $F7
    ld   [de], a                                  ; $6C7A: $12
    ret                                           ; $6C7B: $C9


jr_001_6C7C:
    call Call_001_7430                            ; $6C7C: $CD $30 $74
    ld   e, $0C                                   ; $6C7F: $1E $0C
    ld   a, [de]                                  ; $6C81: $1A
    cp   $02                                      ; $6C82: $FE $02
    ret  nz                                       ; $6C84: $C0

    ld   e, $04                                   ; $6C85: $1E $04
    dec  a                                        ; $6C87: $3D
    ld   [de], a                                  ; $6C88: $12
    ld   e, $07                                   ; $6C89: $1E $07
    dec  a                                        ; $6C8B: $3D
    ld   [de], a                                  ; $6C8C: $12

jr_001_6C8D:
    ld   e, $01                                   ; $6C8D: $1E $01
    ld   a, [de]                                  ; $6C8F: $1A
    or   $10                                      ; $6C90: $F6 $10
    ld   [de], a                                  ; $6C92: $12
    call $4A6A                                    ; $6C93: $CD $6A $4A

jr_001_6C96:
    ld   e, $00                                   ; $6C96: $1E $00
    ld   a, [de]                                  ; $6C98: $1A
    res  2, a                                     ; $6C99: $CB $97
    ld   [de], a                                  ; $6C9B: $12
    ret                                           ; $6C9C: $C9


jr_001_6C9D:
    call Call_001_74A4                            ; $6C9D: $CD $A4 $74
    ld   e, $0C                                   ; $6CA0: $1E $0C
    ld   a, [de]                                  ; $6CA2: $1A
    cp   $03                                      ; $6CA3: $FE $03
    jr   z, jr_001_6C8D                           ; $6CA5: $28 $E6

    jr   jr_001_6C96                              ; $6CA7: $18 $ED

jr_001_6CA9:
    call Call_001_74E7                            ; $6CA9: $CD $E7 $74
    ld   e, $0C                                   ; $6CAC: $1E $0C
    ld   a, [de]                                  ; $6CAE: $1A
    cp   $05                                      ; $6CAF: $FE $05
    jr   z, jr_001_6C8D                           ; $6CB1: $28 $DA

    jr   jr_001_6C96                              ; $6CB3: $18 $E1

jr_001_6CB5:
    call BossDefeatSequenceUpdate                 ; $6CB5: $CD $4D $75
    jr   jr_001_6C96                              ; $6CB8: $18 $DC

jr_001_6CBA:
    call Call_001_7536                            ; $6CBA: $CD $36 $75
    jr   jr_001_6C96                              ; $6CBD: $18 $D7

    ld   e, $0C                                   ; $6CBF: $1E $0C
    ld   a, [de]                                  ; $6CC1: $1A
    call Call_000_0B7D                            ; $6CC2: $CD $7D $0B
    rst  RST_08                                   ; $6CC5: $CF
    ld   l, h                                     ; $6CC6: $6C
    db   $E4                                      ; $6CC7: $E4
    ld   l, h                                     ; $6CC8: $6C
    ld   a, [bc]                                  ; $6CC9: $0A
    ld   l, l                                     ; $6CCA: $6D
    jr   @+$6F                                    ; $6CCB: $18 $6D

    inc  hl                                       ; $6CCD: $23
    ld   e, e                                     ; $6CCE: $5B
    ld   h, d                                     ; $6CCF: $62
    ld   e, $03                                   ; $6CD0: $1E $03
    ld   l, $1A                                   ; $6CD2: $2E $1A
    ld   a, [de]                                  ; $6CD4: $1A
    ld   [hl+], a                                 ; $6CD5: $22
    inc  e                                        ; $6CD6: $1C
    ld   a, [de]                                  ; $6CD7: $1A
    ld   [hl+], a                                 ; $6CD8: $22
    inc  e                                        ; $6CD9: $1C
    inc  e                                        ; $6CDA: $1C
    inc  l                                        ; $6CDB: $2C
    ld   a, [de]                                  ; $6CDC: $1A
    ld   [hl+], a                                 ; $6CDD: $22
    inc  e                                        ; $6CDE: $1C
    ld   a, [de]                                  ; $6CDF: $1A
    ld   [hl+], a                                 ; $6CE0: $22
    jp   Jump_001_6D38                            ; $6CE1: $C3 $38 $6D


    call Call_001_7C7B                            ; $6CE4: $CD $7B $7C
    or   $30                                      ; $6CE7: $F6 $30
    call Call_001_7C20                            ; $6CE9: $CD $20 $7C
    call Call_001_6D82                            ; $6CEC: $CD $82 $6D
    ld   e, $1C                                   ; $6CEF: $1E $1C
    ld   a, [de]                                  ; $6CF1: $1A
    dec  a                                        ; $6CF2: $3D
    ld   [de], a                                  ; $6CF3: $12
    ret  nz                                       ; $6CF4: $C0

    ld   bc, $8080                                ; $6CF5: $01 $80 $80
    call Call_001_7C32                            ; $6CF8: $CD $32 $7C
    jp   c, Jump_001_6D4A                         ; $6CFB: $DA $4A $6D

    ld   bc, $1010                                ; $6CFE: $01 $10 $10
    call Call_001_7C39                            ; $6D01: $CD $39 $7C
    jp   nc, Jump_001_6D63                        ; $6D04: $D2 $63 $6D

    jp   Jump_001_6D38                            ; $6D07: $C3 $38 $6D


    call Call_001_6D82                            ; $6D0A: $CD $82 $6D
    ld   e, $1C                                   ; $6D0D: $1E $1C
    ld   a, [de]                                  ; $6D0F: $1A
    dec  a                                        ; $6D10: $3D
    ld   [de], a                                  ; $6D11: $12
    jp   z, Jump_001_6D38                         ; $6D12: $CA $38 $6D

    jp   AdvanceActorFixedPointMovement           ; $6D15: $C3 $93 $4A


    call Call_001_6D82                            ; $6D18: $CD $82 $6D
    ld   bc, $8080                                ; $6D1B: $01 $80 $80
    call Call_001_7C32                            ; $6D1E: $CD $32 $7C
    jp   c, Jump_001_6D38                         ; $6D21: $DA $38 $6D

    ld   e, $1C                                   ; $6D24: $1E $1C
    ld   a, [de]                                  ; $6D26: $1A
    dec  a                                        ; $6D27: $3D
    ld   [de], a                                  ; $6D28: $12
    jp   nz, AdvanceActorFixedPointMovement       ; $6D29: $C2 $93 $4A

    ld   bc, $1010                                ; $6D2C: $01 $10 $10
    call Call_001_7C39                            ; $6D2F: $CD $39 $7C
    jp   nc, Jump_001_6D63                        ; $6D32: $D2 $63 $6D

    jp   Jump_001_6D38                            ; $6D35: $C3 $38 $6D


Jump_001_6D38:
    call Call_001_6DA7                            ; $6D38: $CD $A7 $6D
    ld   e, $0C                                   ; $6D3B: $1E $0C
    ld   a, [de]                                  ; $6D3D: $1A
    cp   $04                                      ; $6D3E: $FE $04
    ret  z                                        ; $6D40: $C8

    ld   a, $01                                   ; $6D41: $3E $01
    ld   [de], a                                  ; $6D43: $12
    ld   e, $1C                                   ; $6D44: $1E $1C
    ld   a, $1E                                   ; $6D46: $3E $1E
    ld   [de], a                                  ; $6D48: $12
    ret                                           ; $6D49: $C9


Jump_001_6D4A:
    call Call_000_0BBF                            ; $6D4A: $CD $BF $0B
    and  $1F                                      ; $6D4D: $E6 $1F
    ld   e, $1C                                   ; $6D4F: $1E $1C
    add  $1E                                      ; $6D51: $C6 $1E
    ld   [de], a                                  ; $6D53: $12
    call Call_001_6DBB                            ; $6D54: $CD $BB $6D
    ld   e, $0C                                   ; $6D57: $1E $0C
    ld   a, [de]                                  ; $6D59: $1A
    cp   $04                                      ; $6D5A: $FE $04
    ret  z                                        ; $6D5C: $C8

    ld   a, $02                                   ; $6D5D: $3E $02
    ld   [de], a                                  ; $6D5F: $12
    jp   $4A6A                                    ; $6D60: $C3 $6A $4A


Jump_001_6D63:
    ld   h, d                                     ; $6D63: $62
    ld   l, $1A                                   ; $6D64: $2E $1A
    call Call_001_7C7E                            ; $6D66: $CD $7E $7C
    or   $20                                      ; $6D69: $F6 $20
    call Call_001_7C20                            ; $6D6B: $CD $20 $7C
    call Call_001_6DBB                            ; $6D6E: $CD $BB $6D
    ld   e, $1C                                   ; $6D71: $1E $1C
    ld   a, $10                                   ; $6D73: $3E $10
    ld   [de], a                                  ; $6D75: $12
    ld   e, $0C                                   ; $6D76: $1E $0C
    ld   a, [de]                                  ; $6D78: $1A
    cp   $04                                      ; $6D79: $FE $04
    ret  z                                        ; $6D7B: $C8

    ld   a, $03                                   ; $6D7C: $3E $03
    ld   [de], a                                  ; $6D7E: $12
    jp   $4A6A                                    ; $6D7F: $C3 $6A $4A


Call_001_6D82:
    call Call_001_7D61                            ; $6D82: $CD $61 $7D
    ld   e, $09                                   ; $6D85: $1E $09
    ld   a, [de]                                  ; $6D87: $1A
    cp   $4C                                      ; $6D88: $FE $4C
    jr   z, jr_001_6D97                           ; $6D8A: $28 $0B

    ld   hl, $1810                                ; $6D8C: $21 $10 $18
    call SharedPlayerContactComparator            ; $6D8F: $CD $4B $7B
    ld   bc, $1212                                ; $6D92: $01 $12 $12
    jr   jr_001_6DA0                              ; $6D95: $18 $09

jr_001_6D97:
    ld   hl, $140C                                ; $6D97: $21 $0C $14
    call SharedPlayerContactComparator            ; $6D9A: $CD $4B $7B
    ld   bc, $0E0E                                ; $6D9D: $01 $0E $0E

jr_001_6DA0:
    call ComparePlayerProjectileWithActor         ; $6DA0: $CD $88 $7B
    ret  nc                                       ; $6DA3: $D0

    jp   Jump_001_5FF5                            ; $6DA4: $C3 $F5 $5F


Call_001_6DA7:
    ld   b, $51                                   ; $6DA7: $06 $51
    ld   e, $09                                   ; $6DA9: $1E $09
    ld   a, [de]                                  ; $6DAB: $1A
    cp   $4C                                      ; $6DAC: $FE $4C
    jr   nz, jr_001_6DB2                          ; $6DAE: $20 $02

    ld   b, $71                                   ; $6DB0: $06 $71

jr_001_6DB2:
    ld   e, $0E                                   ; $6DB2: $1E $0E
    ld   a, [de]                                  ; $6DB4: $1A
    cp   b                                        ; $6DB5: $B8
    ret  z                                        ; $6DB6: $C8

    ld   a, b                                     ; $6DB7: $78
    jp   Jump_001_7D69                            ; $6DB8: $C3 $69 $7D


Call_001_6DBB:
    ld   b, $50                                   ; $6DBB: $06 $50
    ld   e, $09                                   ; $6DBD: $1E $09
    ld   a, [de]                                  ; $6DBF: $1A
    cp   $4C                                      ; $6DC0: $FE $4C
    jr   nz, jr_001_6DC6                          ; $6DC2: $20 $02

    ld   b, $72                                   ; $6DC4: $06 $72

jr_001_6DC6:
    ld   a, b                                     ; $6DC6: $78
    jp   Jump_001_7D69                            ; $6DC7: $C3 $69 $7D


Call_001_6DCA:
    xor  a                                        ; $6DCA: $AF
    ld   [$C660], a                               ; $6DCB: $EA $60 $C6
    ld   b, $C1                                   ; $6DCE: $06 $C1
    ld   e, $03                                   ; $6DD0: $1E $03
    ld   a, [de]                                  ; $6DD2: $1A
    add  h                                        ; $6DD3: $84
    and  $F0                                      ; $6DD4: $E6 $F0
    ld   c, a                                     ; $6DD6: $4F
    push bc                                       ; $6DD7: $C5
    ld   e, $06                                   ; $6DD8: $1E $06
    ld   a, [de]                                  ; $6DDA: $1A
    sub  $08                                      ; $6DDB: $D6 $08
    ld   h, a                                     ; $6DDD: $67
    add  l                                        ; $6DDE: $85
    and  $F0                                      ; $6DDF: $E6 $F0
    swap a                                        ; $6DE1: $CB $37
    add  c                                        ; $6DE3: $81
    ld   c, a                                     ; $6DE4: $4F
    ld   a, [bc]                                  ; $6DE5: $0A
    ld   [$C660], a                               ; $6DE6: $EA $60 $C6
    pop  bc                                       ; $6DE9: $C1
    push bc                                       ; $6DEA: $C5
    ld   a, h                                     ; $6DEB: $7C
    sub  l                                        ; $6DEC: $95
    and  $F0                                      ; $6DED: $E6 $F0
    swap a                                        ; $6DEF: $CB $37
    add  c                                        ; $6DF1: $81
    ld   c, a                                     ; $6DF2: $4F
    ld   a, [bc]                                  ; $6DF3: $0A
    ld   [$C661], a                               ; $6DF4: $EA $61 $C6
    pop  bc                                       ; $6DF7: $C1
    ld   a, h                                     ; $6DF8: $7C
    and  $F0                                      ; $6DF9: $E6 $F0
    swap a                                        ; $6DFB: $CB $37
    add  c                                        ; $6DFD: $81
    ld   c, a                                     ; $6DFE: $4F
    ld   a, [bc]                                  ; $6DFF: $0A
    ld   [$C662], a                               ; $6E00: $EA $62 $C6
    ret                                           ; $6E03: $C9


Call_001_6E04:
    ld   hl, $C20B                                ; $6E04: $21 $0B $C2
    ld   a, [$C667]                               ; $6E07: $FA $67 $C6
    and  a                                        ; $6E0A: $A7
    jr   z, jr_001_6E0E                           ; $6E0B: $28 $01

    ret                                           ; $6E0D: $C9


jr_001_6E0E:
    ld   a, [hl]                                  ; $6E0E: $7E
    and  a                                        ; $6E0F: $A7
    jr   nz, jr_001_6E8B                          ; $6E10: $20 $79

    ld   a, [$C36A]                               ; $6E12: $FA $6A $C3
    bit  4, a                                     ; $6E15: $CB $67
    ret  z                                        ; $6E17: $C8

    ld   a, $23                                   ; $6E18: $3E $23
    rst  RST_28                                   ; $6E1A: $EF
    ld   a, [$C663]                               ; $6E1B: $FA $63 $C6
    ld   c, a                                     ; $6E1E: $4F
    ld   l, $0A                                   ; $6E1F: $2E $0A
    ld   a, [hl]                                  ; $6E21: $7E
    sub  c                                        ; $6E22: $91
    ld   [hl], a                                  ; $6E23: $77
    jr   z, jr_001_6E28                           ; $6E24: $28 $02

    jr   nc, jr_001_6E83                          ; $6E26: $30 $5B

jr_001_6E28:
    ld   a, [$DF19]                               ; $6E28: $FA $19 $DF
    rlca                                          ; $6E2B: $07
    jr   nc, jr_001_6E34                          ; $6E2C: $30 $06

    rrca                                          ; $6E2E: $0F
    or   $01                                      ; $6E2F: $F6 $01
    ld   [$DF19], a                               ; $6E31: $EA $19 $DF

jr_001_6E34:
    ld   a, $F0                                   ; $6E34: $3E $F0
    rst  RST_28                                   ; $6E36: $EF
    call WaitForRequestedVBlank                   ; $6E37: $CD $90 $00
    ld   a, $34                                   ; $6E3A: $3E $34
    rst  RST_28                                   ; $6E3C: $EF
    call Call_000_23B9                            ; $6E3D: $CD $B9 $23
    ld   a, $C0                                   ; $6E40: $3E $C0
    ld   [$C664], a                               ; $6E42: $EA $64 $C6
    ld   de, $C200                                ; $6E45: $11 $00 $C2
    xor  a                                        ; $6E48: $AF
    ld   [de], a                                  ; $6E49: $12
    ld   e, $03                                   ; $6E4A: $1E $03
    inc  a                                        ; $6E4C: $3C
    ld   [$C7C4], a                               ; $6E4D: $EA $C4 $C7
    ld   c, $30                                   ; $6E50: $0E $30

jr_001_6E52:
    call FindAvailableWorldActorPage              ; $6E52: $CD $5D $4D
    cp   $FF                                      ; $6E55: $FE $FF
    ret  z                                        ; $6E57: $C8

    ld   [$C7C4], a                               ; $6E58: $EA $C4 $C7
    push de                                       ; $6E5B: $D5
    ld   a, $01                                   ; $6E5C: $3E $01
    ld   [hl+], a                                 ; $6E5E: $22
    ld   a, c                                     ; $6E5F: $79
    ld   [hl+], a                                 ; $6E60: $22
    inc  l                                        ; $6E61: $2C
    ld   a, [de]                                  ; $6E62: $1A
    ld   [hl+], a                                 ; $6E63: $22
    inc  e                                        ; $6E64: $1C
    ld   a, [de]                                  ; $6E65: $1A
    ld   [hl+], a                                 ; $6E66: $22
    inc  e                                        ; $6E67: $1C
    inc  e                                        ; $6E68: $1C
    inc  l                                        ; $6E69: $2C
    ld   a, [de]                                  ; $6E6A: $1A
    ld   [hl+], a                                 ; $6E6B: $22
    inc  e                                        ; $6E6C: $1C
    ld   a, [de]                                  ; $6E6D: $1A
    ld   [hl], a                                  ; $6E6E: $77
    ld   l, $0C                                   ; $6E6F: $2E $0C
    xor  a                                        ; $6E71: $AF
    ld   [hl], a                                  ; $6E72: $77
    ld   l, $09                                   ; $6E73: $2E $09
    ld   [hl], a                                  ; $6E75: $77
    ld   l, $13                                   ; $6E76: $2E $13
    ld   [hl], a                                  ; $6E78: $77
    pop  de                                       ; $6E79: $D1
    ld   a, c                                     ; $6E7A: $79
    add  $02                                      ; $6E7B: $C6 $02
    ld   c, a                                     ; $6E7D: $4F
    cp   $40                                      ; $6E7E: $FE $40
    jr   nz, jr_001_6E52                          ; $6E80: $20 $D0

    ret                                           ; $6E82: $C9


jr_001_6E83:
    call Call_000_23B9                            ; $6E83: $CD $B9 $23
    ld   hl, $C20B                                ; $6E86: $21 $0B $C2
    ld   [hl], $88                                ; $6E89: $36 $88

jr_001_6E8B:
    dec  [hl]                                     ; $6E8B: $35
    ld   a, [hl]                                  ; $6E8C: $7E
    cp   $78                                      ; $6E8D: $FE $78
    jr   c, jr_001_6ED5                           ; $6E8F: $38 $44

    ld   a, $0C                                   ; $6E91: $3E $0C
    ld   [$C274], a                               ; $6E93: $EA $74 $C2
    bit  7, [hl]                                  ; $6E96: $CB $7E
    ret  z                                        ; $6E98: $C8

    ld   a, [$C27B]                               ; $6E99: $FA $7B $C2
    bit  3, a                                     ; $6E9C: $CB $5F
    jr   z, jr_001_6EAD                           ; $6E9E: $28 $0D

    and  $03                                      ; $6EA0: $E6 $03
    ld   [$C27B], a                               ; $6EA2: $EA $7B $C2
    ld   l, $00                                   ; $6EA5: $2E $00
    ld   a, [hl]                                  ; $6EA7: $7E
    xor  $40                                      ; $6EA8: $EE $40
    ld   [hl], a                                  ; $6EAA: $77
    jr   jr_001_6EBB                              ; $6EAB: $18 $0E

jr_001_6EAD:
    bit  1, a                                     ; $6EAD: $CB $4F
    jr   nz, jr_001_6EBB                          ; $6EAF: $20 $0A

    and  $03                                      ; $6EB1: $E6 $03
    ld   [$C27B], a                               ; $6EB3: $EA $7B $C2
    ld   c, $01                                   ; $6EB6: $0E $01
    call Call_001_4711                            ; $6EB8: $CD $11 $47

jr_001_6EBB:
    ld   l, $00                                   ; $6EBB: $2E $00
    bit  5, [hl]                                  ; $6EBD: $CB $6E
    jr   nz, jr_001_6ECB                          ; $6EBF: $20 $0A

    ld   a, $10                                   ; $6EC1: $3E $10
    ld   [$C261], a                               ; $6EC3: $EA $61 $C2
    ld   c, $01                                   ; $6EC6: $0E $01
    jp   Jump_001_4667                            ; $6EC8: $C3 $67 $46


jr_001_6ECB:
    ld   a, $20                                   ; $6ECB: $3E $20
    ld   [$C261], a                               ; $6ECD: $EA $61 $C2
    ld   c, $01                                   ; $6ED0: $0E $01
    jp   Jump_001_4694                            ; $6ED2: $C3 $94 $46


jr_001_6ED5:
    bit  3, [hl]                                  ; $6ED5: $CB $5E
    ld   l, $00                                   ; $6ED7: $2E $00
    jr   z, jr_001_6EDE                           ; $6ED9: $28 $03

    set  4, [hl]                                  ; $6EDB: $CB $E6
    ret                                           ; $6EDD: $C9


jr_001_6EDE:
    res  4, [hl]                                  ; $6EDE: $CB $A6
    ret                                           ; $6EE0: $C9


    ld   a, [$DF02]                               ; $6EE1: $FA $02 $DF
    cp   $06                                      ; $6EE4: $FE $06
    ret  nc                                       ; $6EE6: $D0

    ld   a, [$DF06]                               ; $6EE7: $FA $06 $DF
    rrca                                          ; $6EEA: $0F
    jr   c, jr_001_6F0F                           ; $6EEB: $38 $22

    ld   a, [$DF02]                               ; $6EED: $FA $02 $DF
    ld   hl, $6F3D                                ; $6EF0: $21 $3D $6F
    rlca                                          ; $6EF3: $07
    call AddAToHL                                 ; $6EF4: $CD $71 $00
    ld   a, [hl+]                                 ; $6EF7: $2A
    ld   b, a                                     ; $6EF8: $47
    ld   a, [$C204]                               ; $6EF9: $FA $04 $C2
    xor  b                                        ; $6EFC: $A8
    jr   nz, jr_001_6F0F                          ; $6EFD: $20 $10

    ld   a, [hl]                                  ; $6EFF: $7E
    ld   b, a                                     ; $6F00: $47
    ld   a, [$C207]                               ; $6F01: $FA $07 $C2
    xor  b                                        ; $6F04: $A8
    jr   nz, jr_001_6F0F                          ; $6F05: $20 $08

    ld   a, [$DF06]                               ; $6F07: $FA $06 $DF
    set  0, a                                     ; $6F0A: $CB $C7
    ld   [$DF06], a                               ; $6F0C: $EA $06 $DF

jr_001_6F0F:
    ld   a, [$DF06]                               ; $6F0F: $FA $06 $DF
    bit  1, a                                     ; $6F12: $CB $4F
    ret  nz                                       ; $6F14: $C0

    ld   a, [$DF02]                               ; $6F15: $FA $02 $DF
    ld   hl, $6F49                                ; $6F18: $21 $49 $6F
    rlca                                          ; $6F1B: $07
    call AddAToHL                                 ; $6F1C: $CD $71 $00
    ld   a, [hl+]                                 ; $6F1F: $2A
    ld   b, a                                     ; $6F20: $47
    ld   a, [$C363]                               ; $6F21: $FA $63 $C3
    xor  b                                        ; $6F24: $A8
    ret  nz                                       ; $6F25: $C0

    ld   a, [hl]                                  ; $6F26: $7E
    ld   b, a                                     ; $6F27: $47
    ld   a, [$C365]                               ; $6F28: $FA $65 $C3
    xor  b                                        ; $6F2B: $A8
    ret  nz                                       ; $6F2C: $C0

    ld   a, [$C364]                               ; $6F2D: $FA $64 $C3
    cp   $08                                      ; $6F30: $FE $08
    jr   z, jr_001_6F37                           ; $6F32: $28 $03

    cp   $47                                      ; $6F34: $FE $47
    ret  nz                                       ; $6F36: $C0

jr_001_6F37:
    ld   hl, $DF06                                ; $6F37: $21 $06 $DF
    set  1, [hl]                                  ; $6F3A: $CB $CE
    ret                                           ; $6F3C: $C9


    nop                                           ; $6F3D: $00
    inc  b                                        ; $6F3E: $04
    inc  bc                                       ; $6F3F: $03
    ld   bc, $0400                                ; $6F40: $01 $00 $04
    dec  b                                        ; $6F43: $05
    nop                                           ; $6F44: $00
    ld   [bc], a                                  ; $6F45: $02
    inc  bc                                       ; $6F46: $03
    add  b                                        ; $6F47: $80
    inc  bc                                       ; $6F48: $03
    ld   bc, $0007                                ; $6F49: $01 $07 $00
    ld   bc, $0700                                ; $6F4C: $01 $00 $07
    rlca                                          ; $6F4F: $07
    ld   [bc], a                                  ; $6F50: $02
    ld   [bc], a                                  ; $6F51: $02
    ld   b, $80                                   ; $6F52: $06 $80
    inc  bc                                       ; $6F54: $03

ValidateOverworldDestinationAndEncounter::
    xor  a                                        ; $6F55: $AF
    ld   [$C579], a                               ; $6F56: $EA $79 $C5
    ld   a, [$DF07]                               ; $6F59: $FA $07 $DF
    and  $80                                      ; $6F5C: $E6 $80
    ld   [$DF07], a                               ; $6F5E: $EA $07 $DF
    ld   h, $C1                                   ; $6F61: $26 $C1
    ld   a, [$C21A]                               ; $6F63: $FA $1A $C2
    ld   l, a                                     ; $6F66: $6F
    ld   b, $01                                   ; $6F67: $06 $01
    ld   a, [hl]                                  ; $6F69: $7E
    sub  $02                                      ; $6F6A: $D6 $02
    jp   z, Jump_001_6FF7                         ; $6F6C: $CA $F7 $6F

    sla  b                                        ; $6F6F: $CB $20
    dec  a                                        ; $6F71: $3D
    jp   z, Jump_001_6FF7                         ; $6F72: $CA $F7 $6F

    sla  b                                        ; $6F75: $CB $20
    dec  a                                        ; $6F77: $3D
    jr   z, jr_001_6FF7                           ; $6F78: $28 $7D

    sla  b                                        ; $6F7A: $CB $20
    dec  a                                        ; $6F7C: $3D
    jr   z, jr_001_6FF7                           ; $6F7D: $28 $78

    ld   b, $10                                   ; $6F7F: $06 $10
    ld   c, a                                     ; $6F81: $4F
    ld   a, [$DF14]                               ; $6F82: $FA $14 $DF
    cp   $04                                      ; $6F85: $FE $04
    jr   z, jr_001_6F9C                           ; $6F87: $28 $13

    ld   a, c                                     ; $6F89: $79
    dec  a                                        ; $6F8A: $3D
    jr   z, jr_001_7009                           ; $6F8B: $28 $7C

    sla  b                                        ; $6F8D: $CB $20
    dec  a                                        ; $6F8F: $3D
    jr   z, jr_001_7009                           ; $6F90: $28 $77

    sla  b                                        ; $6F92: $CB $20
    dec  a                                        ; $6F94: $3D
    jr   z, jr_001_7009                           ; $6F95: $28 $72

    sla  b                                        ; $6F97: $CB $20
    dec  a                                        ; $6F99: $3D
    jr   z, jr_001_7009                           ; $6F9A: $28 $6D

jr_001_6F9C:
    xor  a                                        ; $6F9C: $AF
    ld   [$DF07], a                               ; $6F9D: $EA $07 $DF
    ld   a, [$DF36]                               ; $6FA0: $FA $36 $DF
    cp   $08                                      ; $6FA3: $FE $08
    jr   c, OverworldDirectionalInput             ; $6FA5: $38 $74

    xor  a                                        ; $6FA7: $AF
    ld   [$DF36], a                               ; $6FA8: $EA $36 $DF
    call Call_000_0BBF                            ; $6FAB: $CD $BF $0B
    ld   b, a                                     ; $6FAE: $47
    ld   a, [$C26A]                               ; $6FAF: $FA $6A $C2
    add  b                                        ; $6FB2: $80
    and  $03                                      ; $6FB3: $E6 $03
    jr   nz, OverworldDirectionalInput            ; $6FB5: $20 $64

    ld   a, [$C204]                               ; $6FB7: $FA $04 $C2
    and  $0F                                      ; $6FBA: $E6 $0F
    cp   $05                                      ; $6FBC: $FE $05
    jr   nc, OverworldDirectionalInput            ; $6FBE: $30 $5B

    swap a                                        ; $6FC0: $CB $37
    rrca                                          ; $6FC2: $0F
    ld   c, a                                     ; $6FC3: $4F
    ld   a, [$C207]                               ; $6FC4: $FA $07 $C2
    and  $0F                                      ; $6FC7: $E6 $0F
    add  c                                        ; $6FC9: $81
    push hl                                       ; $6FCA: $E5
    ld   hl, $70D2                                ; $6FCB: $21 $D2 $70
    call AddAToHL                                 ; $6FCE: $CD $71 $00
    ld   a, [hl]                                  ; $6FD1: $7E
    pop  hl                                       ; $6FD2: $E1
    and  a                                        ; $6FD3: $A7
    jr   z, OverworldDirectionalInput             ; $6FD4: $28 $45

    ld   c, a                                     ; $6FD6: $4F
    ld   a, [$DF0B]                               ; $6FD7: $FA $0B $DF
    swap a                                        ; $6FDA: $CB $37
    and  $03                                      ; $6FDC: $E6 $03
    jr   z, jr_001_6FE1                           ; $6FDE: $28 $01

    dec  a                                        ; $6FE0: $3D

jr_001_6FE1:
    add  c                                        ; $6FE1: $81
    ld   [$DF02], a                               ; $6FE2: $EA $02 $DF
    xor  a                                        ; $6FE5: $AF
    ld   [$DF2D], a                               ; $6FE6: $EA $2D $DF
    call Call_001_71A7                            ; $6FE9: $CD $A7 $71
    ld   a, $09                                   ; $6FEC: $3E $09
    rst  RST_28                                   ; $6FEE: $EF
    ld   a, $10                                   ; $6FEF: $3E $10
    call Call_000_00D0                            ; $6FF1: $CD $D0 $00
    jp   Jump_001_7142                            ; $6FF4: $C3 $42 $71


Jump_001_6FF7:
jr_001_6FF7:
    ld   a, [$DF07]                               ; $6FF7: $FA $07 $DF
    and  a                                        ; $6FFA: $A7
    jr   nz, OverworldDirectionalInput            ; $6FFB: $20 $1E

    ld   a, b                                     ; $6FFD: $78
    or   $80                                      ; $6FFE: $F6 $80
    ld   [$DF07], a                               ; $7000: $EA $07 $DF
    ld   a, $01                                   ; $7003: $3E $01
    ld   [$C579], a                               ; $7005: $EA $79 $C5
    ret                                           ; $7008: $C9


jr_001_7009:
    ld   a, $33                                   ; $7009: $3E $33
    rst  RST_28                                   ; $700B: $EF
    ld   a, b                                     ; $700C: $78
    ld   [$C261], a                               ; $700D: $EA $61 $C2
    rlca                                          ; $7010: $07
    jr   c, jr_001_703B                           ; $7011: $38 $28

    rlca                                          ; $7013: $07
    jr   c, jr_001_7030                           ; $7014: $38 $1A

    rlca                                          ; $7016: $07
    jr   c, jr_001_704E                           ; $7017: $38 $35

    jr   jr_001_7065                              ; $7019: $18 $4A

OverworldDirectionalInput::
    ld   a, [$C261]                               ; $701B: $FA $61 $C2
    rlca                                          ; $701E: $07
    jr   c, jr_001_7036                           ; $701F: $38 $15

    rlca                                          ; $7021: $07
    jr   c, jr_001_702B                           ; $7022: $38 $07

    rlca                                          ; $7024: $07
    jr   c, jr_001_7041                           ; $7025: $38 $1A

    rlca                                          ; $7027: $07
    jr   c, jr_001_7058                           ; $7028: $38 $2E

    ret                                           ; $702A: $C9


jr_001_702B:
    ld   a, $81                                   ; $702B: $3E $81
    ld   [$C274], a                               ; $702D: $EA $74 $C2

jr_001_7030:
    ld   a, l                                     ; $7030: $7D
    sub  $10                                      ; $7031: $D6 $10
    ld   l, a                                     ; $7033: $6F
    jr   jr_001_706D                              ; $7034: $18 $37

jr_001_7036:
    ld   a, $80                                   ; $7036: $3E $80
    ld   [$C274], a                               ; $7038: $EA $74 $C2

jr_001_703B:
    ld   a, l                                     ; $703B: $7D
    add  $10                                      ; $703C: $C6 $10
    ld   l, a                                     ; $703E: $6F
    jr   jr_001_706D                              ; $703F: $18 $2C

jr_001_7041:
    ld   a, [$C200]                               ; $7041: $FA $00 $C2
    res  5, a                                     ; $7044: $CB $AF
    ld   [$C200], a                               ; $7046: $EA $00 $C2
    ld   a, $82                                   ; $7049: $3E $82
    ld   [$C274], a                               ; $704B: $EA $74 $C2

jr_001_704E:
    ld   a, l                                     ; $704E: $7D
    swap a                                        ; $704F: $CB $37
    sub  $10                                      ; $7051: $D6 $10
    swap a                                        ; $7053: $CB $37
    ld   l, a                                     ; $7055: $6F
    jr   jr_001_706D                              ; $7056: $18 $15

jr_001_7058:
    ld   a, [$C200]                               ; $7058: $FA $00 $C2
    set  5, a                                     ; $705B: $CB $EF
    ld   [$C200], a                               ; $705D: $EA $00 $C2
    ld   a, $82                                   ; $7060: $3E $82
    ld   [$C274], a                               ; $7062: $EA $74 $C2

jr_001_7065:
    ld   a, l                                     ; $7065: $7D
    swap a                                        ; $7066: $CB $37
    add  $10                                      ; $7068: $C6 $10
    swap a                                        ; $706A: $CB $37
    ld   l, a                                     ; $706C: $6F

jr_001_706D:
    ld   a, [hl]                                  ; $706D: $7E
    cp   $01                                      ; $706E: $FE $01
    jr   nz, jr_001_7078                          ; $7070: $20 $06

    ld   a, $01                                   ; $7072: $3E $01
    ld   [$C579], a                               ; $7074: $EA $79 $C5
    ret                                           ; $7077: $C9


jr_001_7078:
    ld   d, $C7                                   ; $7078: $16 $C7
    ld   b, $13                                   ; $707A: $06 $13

jr_001_707C:
    ld   e, $00                                   ; $707C: $1E $00
    ld   a, [de]                                  ; $707E: $1A
    bit  0, a                                     ; $707F: $CB $47
    jr   z, jr_001_7097                           ; $7081: $28 $14

    bit  3, a                                     ; $7083: $CB $5F
    jr   nz, jr_001_7097                          ; $7085: $20 $10

    bit  4, a                                     ; $7087: $CB $67
    jr   nz, jr_001_7097                          ; $7089: $20 $0C

    ld   e, $1A                                   ; $708B: $1E $1A
    ld   a, [de]                                  ; $708D: $1A
    cp   l                                        ; $708E: $BD
    jr   nz, jr_001_7097                          ; $708F: $20 $06

    ld   a, $01                                   ; $7091: $3E $01
    ld   [$C579], a                               ; $7093: $EA $79 $C5
    ret                                           ; $7096: $C9


jr_001_7097:
    inc  d                                        ; $7097: $14
    dec  b                                        ; $7098: $05
    jr   nz, jr_001_707C                          ; $7099: $20 $E1

CommitOverworldDestination::
    ld   a, l                                     ; $709B: $7D
    ld   [$C21A], a                               ; $709C: $EA $1A $C2
    ld   hl, $DF36                                ; $709F: $21 $36 $DF
    inc  [hl]                                     ; $70A2: $34
    ret                                           ; $70A3: $C9


    ld   a, [$C203]                               ; $70A4: $FA $03 $C2
    sub  $10                                      ; $70A7: $D6 $10
    and  $F0                                      ; $70A9: $E6 $F0
    ld   l, a                                     ; $70AB: $6F
    ld   a, [$C206]                               ; $70AC: $FA $06 $C2
    sub  $08                                      ; $70AF: $D6 $08
    and  $F0                                      ; $70B1: $E6 $F0
    swap a                                        ; $70B3: $CB $37
    add  l                                        ; $70B5: $85
    ld   l, a                                     ; $70B6: $6F
    ld   [$C21A], a                               ; $70B7: $EA $1A $C2
    ret                                           ; $70BA: $C9


Call_001_70BB:
Jump_001_70BB:
    ld   e, $03                                   ; $70BB: $1E $03
    ld   a, [de]                                  ; $70BD: $1A
    sub  $10                                      ; $70BE: $D6 $10
    and  $F0                                      ; $70C0: $E6 $F0
    ld   l, a                                     ; $70C2: $6F
    ld   e, $06                                   ; $70C3: $1E $06
    ld   a, [de]                                  ; $70C5: $1A
    sub  $08                                      ; $70C6: $D6 $08
    and  $F0                                      ; $70C8: $E6 $F0
    swap a                                        ; $70CA: $CB $37
    add  l                                        ; $70CC: $85
    ld   l, a                                     ; $70CD: $6F
    ld   e, $1A                                   ; $70CE: $1E $1A
    ld   [de], a                                  ; $70D0: $12
    ret                                           ; $70D1: $C9


    dec  de                                       ; $70D2: $1B
    dec  de                                       ; $70D3: $1B
    dec  de                                       ; $70D4: $1B
    dec  de                                       ; $70D5: $1B
    nop                                           ; $70D6: $00
    nop                                           ; $70D7: $00
    nop                                           ; $70D8: $00
    nop                                           ; $70D9: $00
    dec  de                                       ; $70DA: $1B
    dec  de                                       ; $70DB: $1B
    dec  de                                       ; $70DC: $1B
    dec  de                                       ; $70DD: $1B
    nop                                           ; $70DE: $00
    nop                                           ; $70DF: $00
    nop                                           ; $70E0: $00
    nop                                           ; $70E1: $00
    add  hl, de                                   ; $70E2: $19
    add  hl, de                                   ; $70E3: $19
    dec  de                                       ; $70E4: $1B
    inc  e                                        ; $70E5: $1C
    nop                                           ; $70E6: $00
    nop                                           ; $70E7: $00
    nop                                           ; $70E8: $00
    nop                                           ; $70E9: $00
    add  hl, de                                   ; $70EA: $19
    add  hl, de                                   ; $70EB: $19
    dec  de                                       ; $70EC: $1B
    inc  e                                        ; $70ED: $1C
    inc  e                                        ; $70EE: $1C
    nop                                           ; $70EF: $00
    nop                                           ; $70F0: $00
    nop                                           ; $70F1: $00
    add  hl, de                                   ; $70F2: $19
    add  hl, de                                   ; $70F3: $19
    add  hl, de                                   ; $70F4: $19
    inc  e                                        ; $70F5: $1C
    inc  e                                        ; $70F6: $1C
    nop                                           ; $70F7: $00
    nop                                           ; $70F8: $00
    nop                                           ; $70F9: $00
    ld   a, [$DF07]                               ; $70FA: $FA $07 $DF
    rrca                                          ; $70FD: $0F
    jr   c, jr_001_710A                           ; $70FE: $38 $0A

    rrca                                          ; $7100: $0F
    jr   c, jr_001_7121                           ; $7101: $38 $1E

    rrca                                          ; $7103: $0F
    jr   c, jr_001_7150                           ; $7104: $38 $4A

    rrca                                          ; $7106: $0F
    jr   c, jr_001_7163                           ; $7107: $38 $5A

    ret                                           ; $7109: $C9


jr_001_710A:
    ld   hl, $721B                                ; $710A: $21 $1B $72
    call Call_001_7181                            ; $710D: $CD $81 $71
    ld   a, [hl]                                  ; $7110: $7E
    ld   [$DF03], a                               ; $7111: $EA $03 $DF
    ld   [$DF04], a                               ; $7114: $EA $04 $DF
    call Call_000_00B0                            ; $7117: $CD $B0 $00
    xor  a                                        ; $711A: $AF
    ld   [$DF08], a                               ; $711B: $EA $08 $DF
    jp   $0570                                    ; $711E: $C3 $70 $05


jr_001_7121:
    call Call_001_71A7                            ; $7121: $CD $A7 $71
    ld   hl, $7230                                ; $7124: $21 $30 $72
    call Call_001_7181                            ; $7127: $CD $81 $71
    ld   a, [hl]                                  ; $712A: $7E
    ld   [$DF02], a                               ; $712B: $EA $02 $DF
    cp   $06                                      ; $712E: $FE $06
    jr   nc, jr_001_7142                          ; $7130: $30 $10

    ld   b, a                                     ; $7132: $47
    ld   a, [$DF14]                               ; $7133: $FA $14 $DF
    inc  b                                        ; $7136: $04
    sub  b                                        ; $7137: $90
    jr   c, jr_001_7142                           ; $7138: $38 $08

    ld   a, [$DF08]                               ; $713A: $FA $08 $DF
    dec  a                                        ; $713D: $3D
    ld   [$DF08], a                               ; $713E: $EA $08 $DF
    ret                                           ; $7141: $C9


Jump_001_7142:
jr_001_7142:
    ld   a, [$DF01]                               ; $7142: $FA $01 $DF
    xor  $03                                      ; $7145: $EE $03
    ld   [$DF01], a                               ; $7147: $EA $01 $DF
    call Call_000_00B0                            ; $714A: $CD $B0 $00
    jp   $0570                                    ; $714D: $C3 $70 $05


jr_001_7150:
    call Call_001_71A7                            ; $7150: $CD $A7 $71
    ld   hl, $72B5                                ; $7153: $21 $B5 $72
    call Call_001_7181                            ; $7156: $CD $81 $71
    ld   a, [hl]                                  ; $7159: $7E
    ld   [$DF03], a                               ; $715A: $EA $03 $DF
    call Call_000_00B0                            ; $715D: $CD $B0 $00
    jp   $0570                                    ; $7160: $C3 $70 $05


jr_001_7163:
    call Call_000_00B0                            ; $7163: $CD $B0 $00
    ld   a, $82                                   ; $7166: $3E $82
    ld   [$DF07], a                               ; $7168: $EA $07 $DF
    ld   a, [$DF08]                               ; $716B: $FA $08 $DF
    dec  a                                        ; $716E: $3D
    ld   hl, $DD00                                ; $716F: $21 $00 $DD
    rlca                                          ; $7172: $07
    rlca                                          ; $7173: $07
    swap a                                        ; $7174: $CB $37
    add  $18                                      ; $7176: $C6 $18
    ld   l, a                                     ; $7178: $6F
    ld   a, [hl]                                  ; $7179: $7E
    ld   [$DF03], a                               ; $717A: $EA $03 $DF
    jp   $0570                                    ; $717D: $C3 $70 $05


    ret                                           ; $7180: $C9


Call_001_7181:
    ld   a, [$C204]                               ; $7181: $FA $04 $C2
    ld   b, a                                     ; $7184: $47
    ld   a, [$C207]                               ; $7185: $FA $07 $C2
    ld   c, a                                     ; $7188: $4F
    ld   a, [$C21A]                               ; $7189: $FA $1A $C2
    ld   d, a                                     ; $718C: $57

jr_001_718D:
    push hl                                       ; $718D: $E5
    ld   a, [hl+]                                 ; $718E: $2A
    and  a                                        ; $718F: $A7
    jr   z, jr_001_71A5                           ; $7190: $28 $13

    cp   b                                        ; $7192: $B8
    jr   nz, jr_001_719D                          ; $7193: $20 $08

    ld   a, [hl+]                                 ; $7195: $2A
    cp   c                                        ; $7196: $B9
    jr   nz, jr_001_719D                          ; $7197: $20 $04

    ld   a, [hl+]                                 ; $7199: $2A
    cp   d                                        ; $719A: $BA
    jr   z, jr_001_71A5                           ; $719B: $28 $08

jr_001_719D:
    pop  hl                                       ; $719D: $E1
    ld   a, $04                                   ; $719E: $3E $04
    call AddAToHL                                 ; $71A0: $CD $71 $00
    jr   jr_001_718D                              ; $71A3: $18 $E8

jr_001_71A5:
    pop  de                                       ; $71A5: $D1
    ret                                           ; $71A6: $C9


Call_001_71A7:
    ld   a, [$DF08]                               ; $71A7: $FA $08 $DF
    inc  a                                        ; $71AA: $3C
    ld   [$DF08], a                               ; $71AB: $EA $08 $DF
    dec  a                                        ; $71AE: $3D
    rlca                                          ; $71AF: $07
    rlca                                          ; $71B0: $07
    swap a                                        ; $71B1: $CB $37
    ld   l, a                                     ; $71B3: $6F
    ld   h, $DD                                   ; $71B4: $26 $DD
    ld   a, [$C39A]                               ; $71B6: $FA $9A $C3
    ld   [hl+], a                                 ; $71B9: $22
    ld   a, [$C39B]                               ; $71BA: $FA $9B $C3
    ld   [hl+], a                                 ; $71BD: $22
    ld   a, [$C39E]                               ; $71BE: $FA $9E $C3
    ld   [hl+], a                                 ; $71C1: $22
    ld   a, [$C3A1]                               ; $71C2: $FA $A1 $C3
    ld   [hl+], a                                 ; $71C5: $22
    ld   a, [$C39C]                               ; $71C6: $FA $9C $C3
    ld   [hl+], a                                 ; $71C9: $22
    ld   a, [$C39F]                               ; $71CA: $FA $9F $C3
    ld   [hl+], a                                 ; $71CD: $22
    ld   a, [$C3A2]                               ; $71CE: $FA $A2 $C3
    ld   [hl+], a                                 ; $71D1: $22
    ld   a, [$C39D]                               ; $71D2: $FA $9D $C3
    ld   [hl+], a                                 ; $71D5: $22
    ld   a, [$C3A0]                               ; $71D6: $FA $A0 $C3
    ld   [hl+], a                                 ; $71D9: $22
    ld   a, [$C3A3]                               ; $71DA: $FA $A3 $C3
    ld   [hl+], a                                 ; $71DD: $22
    ld   a, [$C3A4]                               ; $71DE: $FA $A4 $C3
    ld   [hl+], a                                 ; $71E1: $22
    ld   a, [$C3A5]                               ; $71E2: $FA $A5 $C3
    ld   [hl+], a                                 ; $71E5: $22
    ld   a, [$C365]                               ; $71E6: $FA $65 $C3
    ld   [hl+], a                                 ; $71E9: $22
    ld   a, [$C363]                               ; $71EA: $FA $63 $C3
    ld   [hl+], a                                 ; $71ED: $22
    ld   a, [$C272]                               ; $71EE: $FA $72 $C2
    ld   [hl+], a                                 ; $71F1: $22
    ld   a, [$C273]                               ; $71F2: $FA $73 $C2
    ld   [hl+], a                                 ; $71F5: $22
    ld   a, [$C204]                               ; $71F6: $FA $04 $C2
    ld   [hl+], a                                 ; $71F9: $22
    ld   a, [$C203]                               ; $71FA: $FA $03 $C2
    ld   [hl+], a                                 ; $71FD: $22
    ld   a, [$C207]                               ; $71FE: $FA $07 $C2
    ld   [hl+], a                                 ; $7201: $22
    ld   a, [$C206]                               ; $7202: $FA $06 $C2
    ld   [hl+], a                                 ; $7205: $22
    ld   a, [$C364]                               ; $7206: $FA $64 $C3
    ld   [hl+], a                                 ; $7209: $22
    ld   a, [$C362]                               ; $720A: $FA $62 $C3
    ld   [hl+], a                                 ; $720D: $22
    ld   a, [$C3A9]                               ; $720E: $FA $A9 $C3
    ld   [hl+], a                                 ; $7211: $22
    ld   a, [$C399]                               ; $7212: $FA $99 $C3
    ld   [hl+], a                                 ; $7215: $22
    ld   a, [$DF03]                               ; $7216: $FA $03 $DF
    ld   [hl], a                                  ; $7219: $77
    ret                                           ; $721A: $C9


    ld   d, $14                                   ; $721B: $16 $14
    ld   c, h                                     ; $721D: $4C
    dec  de                                       ; $721E: $1B
    rla                                           ; $721F: $17
    inc  d                                        ; $7220: $14
    or   l                                        ; $7221: $B5
    add  hl, hl                                   ; $7222: $29
    ld   d, $13                                   ; $7223: $16 $13
    ld   [bc], a                                  ; $7225: $02
    dec  hl                                       ; $7226: $2B
    dec  d                                        ; $7227: $15
    ld   de, $2A46                                ; $7228: $11 $46 $2A
    dec  d                                        ; $722B: $15
    ld   de, $2A45                                ; $722C: $11 $45 $2A
    nop                                           ; $722F: $00
    ld   [de], a                                  ; $7230: $12
    ld   de, $01C4                                ; $7231: $11 $C4 $01
    ld   [de], a                                  ; $7234: $12
    ld   de, $01C5                                ; $7235: $11 $C5 $01
    ld   [de], a                                  ; $7238: $12
    ld   de, $01D4                                ; $7239: $11 $D4 $01
    ld   [de], a                                  ; $723C: $12
    ld   de, $01D5                                ; $723D: $11 $D5 $01
    ld   de, $F613                                ; $7240: $11 $13 $F6
    inc  bc                                       ; $7243: $03
    ld   de, $8A14                                ; $7244: $11 $14 $8A
    dec  b                                        ; $7247: $05
    ld   de, $8B14                                ; $7248: $11 $14 $8B
    dec  b                                        ; $724B: $05
    ld   de, $9A14                                ; $724C: $11 $14 $9A
    dec  b                                        ; $724F: $05
    ld   de, $9B14                                ; $7250: $11 $14 $9B
    dec  b                                        ; $7253: $05
    inc  de                                       ; $7254: $13
    db   $10                                      ; $7255: $10
    ld   h, $06                                   ; $7256: $26 $06
    inc  de                                       ; $7258: $13
    db   $10                                      ; $7259: $10
    or   $07                                      ; $725A: $F6 $07
    ld   [de], a                                  ; $725C: $12
    db   $10                                      ; $725D: $10
    ld   e, $08                                   ; $725E: $1E $08
    ld   [de], a                                  ; $7260: $12
    ld   de, $0912                                ; $7261: $11 $12 $09
    db   $10                                      ; $7264: $10
    ld   de, $0AD2                                ; $7265: $11 $D2 $0A
    db   $10                                      ; $7268: $10
    ld   de, $0BD5                                ; $7269: $11 $D5 $0B
    inc  de                                       ; $726C: $13
    ld   [de], a                                  ; $726D: $12
    ld   l, d                                     ; $726E: $6A
    inc  c                                        ; $726F: $0C
    inc  de                                       ; $7270: $13
    inc  de                                       ; $7271: $13
    ld   d, e                                     ; $7272: $53
    dec  c                                        ; $7273: $0D
    inc  de                                       ; $7274: $13
    inc  de                                       ; $7275: $13
    ld   d, a                                     ; $7276: $57
    ld   c, $12                                   ; $7277: $0E $12
    inc  d                                        ; $7279: $14
    ld   l, e                                     ; $727A: $6B
    rrca                                          ; $727B: $0F
    ld   [de], a                                  ; $727C: $12
    inc  d                                        ; $727D: $14
    ld   c, e                                     ; $727E: $4B
    db   $10                                      ; $727F: $10
    inc  de                                       ; $7280: $13
    inc  d                                        ; $7281: $14
    adc  $11                                      ; $7282: $CE $11
    ld   [de], a                                  ; $7284: $12
    inc  d                                        ; $7285: $14
    ld   [$1212], a                               ; $7286: $EA $12 $12
    inc  d                                        ; $7289: $14
    sub  e                                        ; $728A: $93
    inc  de                                       ; $728B: $13
    inc  de                                       ; $728C: $13
    inc  de                                       ; $728D: $13
    xor  [hl]                                     ; $728E: $AE
    inc  d                                        ; $728F: $14
    inc  de                                       ; $7290: $13
    inc  d                                        ; $7291: $14
    pop  af                                       ; $7292: $F1
    dec  d                                        ; $7293: $15
    inc  d                                        ; $7294: $14
    inc  d                                        ; $7295: $14
    xor  c                                        ; $7296: $A9
    ld   d, $13                                   ; $7297: $16 $13
    inc  d                                        ; $7299: $14
    ld   c, e                                     ; $729A: $4B
    rla                                           ; $729B: $17
    inc  d                                        ; $729C: $14
    inc  d                                        ; $729D: $14
    ld   a, [hl-]                                 ; $729E: $3A
    jr   jr_001_72B8                              ; $729F: $18 $17

    ld   [de], a                                  ; $72A1: $12
    or   [hl]                                     ; $72A2: $B6
    nop                                           ; $72A3: $00
    rla                                           ; $72A4: $17
    ld   [de], a                                  ; $72A5: $12
    or   a                                        ; $72A6: $B7
    nop                                           ; $72A7: $00
    ld   d, $12                                   ; $72A8: $16 $12
    dec  hl                                       ; $72AA: $2B
    ld   [bc], a                                  ; $72AB: $02
    dec  d                                        ; $72AC: $15
    db   $10                                      ; $72AD: $10
    ld   b, a                                     ; $72AE: $47
    inc  b                                        ; $72AF: $04
    dec  d                                        ; $72B0: $15
    db   $10                                      ; $72B1: $10
    ld   c, b                                     ; $72B2: $48
    inc  b                                        ; $72B3: $04
    nop                                           ; $72B4: $00
    inc  de                                       ; $72B5: $13
    db   $10                                      ; $72B6: $10
    and  [hl]                                     ; $72B7: $A6

jr_001_72B8:
    ld   bc, $1013                                ; $72B8: $01 $13 $10
    and  a                                        ; $72BB: $A7
    ld   bc, $1013                                ; $72BC: $01 $13 $10
    or   [hl]                                     ; $72BF: $B6
    ld   bc, $1013                                ; $72C0: $01 $13 $10
    or   a                                        ; $72C3: $B7
    ld   bc, $1212                                ; $72C4: $01 $12 $12
    jr   nz, jr_001_72CB                          ; $72C7: $20 $02

    ld   [de], a                                  ; $72C9: $12
    ld   [de], a                                  ; $72CA: $12

jr_001_72CB:
    ld   hl, $1202                                ; $72CB: $21 $02 $12
    ld   [de], a                                  ; $72CE: $12
    jr   nc, jr_001_72D3                          ; $72CF: $30 $02

    ld   [de], a                                  ; $72D1: $12
    ld   [de], a                                  ; $72D2: $12

jr_001_72D3:
    ld   sp, $1102                                ; $72D3: $31 $02 $11
    db   $10                                      ; $72D6: $10
    ld   c, b                                     ; $72D7: $48
    inc  bc                                       ; $72D8: $03
    ld   de, $4910                                ; $72D9: $11 $10 $49
    inc  bc                                       ; $72DC: $03
    ld   de, $5910                                ; $72DD: $11 $10 $59
    inc  bc                                       ; $72E0: $03
    ld   de, $2212                                ; $72E1: $11 $12 $22
    inc  b                                        ; $72E4: $04
    ld   de, $2312                                ; $72E5: $11 $12 $23
    inc  b                                        ; $72E8: $04
    ld   de, $3312                                ; $72E9: $11 $12 $33
    inc  b                                        ; $72EC: $04
    ld   de, $AE12                                ; $72ED: $11 $12 $AE
    dec  b                                        ; $72F0: $05
    ld   de, $AF13                                ; $72F1: $11 $13 $AF
    dec  b                                        ; $72F4: $05
    ld   de, $BE12                                ; $72F5: $11 $12 $BE
    dec  b                                        ; $72F8: $05
    ld   de, $BF13                                ; $72F9: $11 $13 $BF
    dec  b                                        ; $72FC: $05
    inc  d                                        ; $72FD: $14
    inc  de                                       ; $72FE: $13
    add  hl, hl                                   ; $72FF: $29
    ld   b, $14                                   ; $7300: $06 $14
    inc  de                                       ; $7302: $13
    jr   c, jr_001_730B                           ; $7303: $38 $06

    inc  d                                        ; $7305: $14
    inc  de                                       ; $7306: $13
    add  hl, sp                                   ; $7307: $39
    ld   b, $11                                   ; $7308: $06 $11
    ld   [de], a                                  ; $730A: $12

jr_001_730B:
    add  b                                        ; $730B: $80
    ld   a, [bc]                                  ; $730C: $0A
    ld   de, $8112                                ; $730D: $11 $12 $81
    ld   a, [bc]                                  ; $7310: $0A
    ld   de, $9012                                ; $7311: $11 $12 $90
    ld   a, [bc]                                  ; $7314: $0A
    ld   de, $9112                                ; $7315: $11 $12 $91
    ld   a, [bc]                                  ; $7318: $0A
    ld   [de], a                                  ; $7319: $12
    inc  d                                        ; $731A: $14
    xor  d                                        ; $731B: $AA
    ld   c, $12                                   ; $731C: $0E $12
    inc  d                                        ; $731E: $14
    xor  e                                        ; $731F: $AB
    ld   c, $12                                   ; $7320: $0E $12
    inc  d                                        ; $7322: $14
    cp   d                                        ; $7323: $BA
    ld   c, $12                                   ; $7324: $0E $12
    inc  d                                        ; $7326: $14
    cp   e                                        ; $7327: $BB
    ld   c, $12                                   ; $7328: $0E $12
    inc  d                                        ; $732A: $14
    adc  c                                        ; $732B: $89
    inc  de                                       ; $732C: $13
    rla                                           ; $732D: $17
    ld   d, $8C                                   ; $732E: $16 $8C
    ld   [de], a                                  ; $7330: $12
    rla                                           ; $7331: $17
    rla                                           ; $7332: $17
    ld   hl, $1714                                ; $7333: $21 $14 $17
    ld   d, $17                                   ; $7336: $16 $17
    inc  de                                       ; $7338: $13
    inc  de                                       ; $7339: $13
    ld   d, $A5                                   ; $733A: $16 $A5
    inc  d                                        ; $733C: $14
    inc  de                                       ; $733D: $13
    ld   d, $53                                   ; $733E: $16 $53
    inc  de                                       ; $7340: $13
    dec  d                                        ; $7341: $15
    ld   d, $E9                                   ; $7342: $16 $E9
    add  hl, bc                                   ; $7344: $09
    ld   d, $16                                   ; $7345: $16 $16
    dec  sp                                       ; $7347: $3B
    ld   [$1715], sp                              ; $7348: $08 $15 $17
    ret  nc                                       ; $734B: $D0

    inc  de                                       ; $734C: $13
    ld   [de], a                                  ; $734D: $12
    ld   d, $4A                                   ; $734E: $16 $4A
    inc  d                                        ; $7350: $14
    ld   de, $C416                                ; $7351: $11 $16 $C4
    inc  de                                       ; $7354: $13
    inc  d                                        ; $7355: $14
    ld   d, $59                                   ; $7356: $16 $59
    inc  c                                        ; $7358: $0C
    inc  d                                        ; $7359: $14
    ld   d, $D7                                   ; $735A: $16 $D7
    inc  d                                        ; $735C: $14
    inc  d                                        ; $735D: $14
    rla                                           ; $735E: $17
    cp   a                                        ; $735F: $BF
    inc  de                                       ; $7360: $13
    db   $10                                      ; $7361: $10
    ld   d, $67                                   ; $7362: $16 $67
    inc  d                                        ; $7364: $14
    db   $10                                      ; $7365: $10
    dec  d                                        ; $7366: $15
    cp   [hl]                                     ; $7367: $BE
    inc  de                                       ; $7368: $13
    nop                                           ; $7369: $00

UpdateSelector4FScriptedController::
    call Call_000_0669                            ; $736A: $CD $69 $06
    ld   de, $C70C                                ; $736D: $11 $0C $C7
    ld   a, [de]                                  ; $7370: $1A
    and  a                                        ; $7371: $A7
    jr   z, jr_001_73A2                           ; $7372: $28 $2E

    cp   $10                                      ; $7374: $FE $10
    jr   z, jr_001_73D0                           ; $7376: $28 $58

    cp   $11                                      ; $7378: $FE $11
    jr   z, jr_001_73E2                           ; $737A: $28 $66

    cp   $12                                      ; $737C: $FE $12
    jr   z, jr_001_73F4                           ; $737E: $28 $74

    cp   $13                                      ; $7380: $FE $13
    jp   z, Jump_001_741E                         ; $7382: $CA $1E $74

    dec  a                                        ; $7385: $3D
    jp   z, Jump_001_7430                         ; $7386: $CA $30 $74

    dec  a                                        ; $7389: $3D
    jp   z, Jump_001_74A4                         ; $738A: $CA $A4 $74

    dec  a                                        ; $738D: $3D
    jp   z, Jump_001_74E7                         ; $738E: $CA $E7 $74

    dec  a                                        ; $7391: $3D
    jp   z, BossDefeatSequenceUpdate              ; $7392: $CA $4D $75

    dec  a                                        ; $7395: $3D
    jp   z, Jump_001_7536                         ; $7396: $CA $36 $75

    dec  a                                        ; $7399: $3D
    jp   z, BossDefeatState06BufferBuilder        ; $739A: $CA $A2 $75

    dec  a                                        ; $739D: $3D
    jp   z, BossDefeatState07PresentationUpdate   ; $739E: $CA $D4 $75

    ret                                           ; $73A1: $C9


jr_001_73A2:
    ld   e, $00                                   ; $73A2: $1E $00
    ld   a, $07                                   ; $73A4: $3E $07
    ld   [de], a                                  ; $73A6: $12
    inc  e                                        ; $73A7: $1C
    ld   a, $10                                   ; $73A8: $3E $10
    ld   [de], a                                  ; $73AA: $12
    call $4A6A                                    ; $73AB: $CD $6A $4A
    ld   hl, $7677                                ; $73AE: $21 $77 $76
    call CopyBossRecordTemplate                   ; $73B1: $CD $64 $76
    ld   a, $10                                   ; $73B4: $3E $10
    ld   [de], a                                  ; $73B6: $12
    inc  e                                        ; $73B7: $1C
    ld   a, $01                                   ; $73B8: $3E $01
    ld   [de], a                                  ; $73BA: $12
    ld   e, $0C                                   ; $73BB: $1E $0C
    ld   a, $10                                   ; $73BD: $3E $10
    ld   [de], a                                  ; $73BF: $12
    inc  e                                        ; $73C0: $1C
    inc  e                                        ; $73C1: $1C
    ld   a, $60                                   ; $73C2: $3E $60
    ld   [de], a                                  ; $73C4: $12
    inc  e                                        ; $73C5: $1C
    xor  a                                        ; $73C6: $AF
    ld   [de], a                                  ; $73C7: $12
    inc  e                                        ; $73C8: $1C
    ld   [de], a                                  ; $73C9: $12
    ld   hl, $C66A                                ; $73CA: $21 $6A $C6
    ld   a, [hl+]                                 ; $73CD: $2A
    ld   [hl], a                                  ; $73CE: $77
    ret                                           ; $73CF: $C9


jr_001_73D0:
    ld   e, $08                                   ; $73D0: $1E $08
    ld   a, [de]                                  ; $73D2: $1A
    and  a                                        ; $73D3: $A7
    jr   z, jr_001_73D9                           ; $73D4: $28 $03

    dec  a                                        ; $73D6: $3D
    ld   [de], a                                  ; $73D7: $12
    ret                                           ; $73D8: $C9


jr_001_73D9:
    ld   a, $4A                                   ; $73D9: $3E $4A
    ld   [de], a                                  ; $73DB: $12
    ld   e, $0C                                   ; $73DC: $1E $0C
    ld   a, $11                                   ; $73DE: $3E $11
    ld   [de], a                                  ; $73E0: $12
    ret                                           ; $73E1: $C9


jr_001_73E2:
    call BossMovementAndHitCheck                  ; $73E2: $CD $87 $76
    ld   e, $08                                   ; $73E5: $1E $08
    ld   a, [de]                                  ; $73E7: $1A
    dec  a                                        ; $73E8: $3D
    ld   [de], a                                  ; $73E9: $12
    ret  nz                                       ; $73EA: $C0

    ld   a, $40                                   ; $73EB: $3E $40
    ld   [de], a                                  ; $73ED: $12
    ld   e, $0C                                   ; $73EE: $1E $0C
    ld   a, $12                                   ; $73F0: $3E $12
    ld   [de], a                                  ; $73F2: $12
    ret                                           ; $73F3: $C9


jr_001_73F4:
    call BossHitResponseAndContact                ; $73F4: $CD $8A $76
    ld   e, $08                                   ; $73F7: $1E $08
    ld   a, [de]                                  ; $73F9: $1A
    dec  a                                        ; $73FA: $3D
    ld   [de], a                                  ; $73FB: $12
    cp   $30                                      ; $73FC: $FE $30
    jr   nz, jr_001_7405                          ; $73FE: $20 $05

    ld   b, $2C                                   ; $7400: $06 $2C
    jp   SpawnBossProjectileRecord                ; $7402: $C3 $EC $76


jr_001_7405:
    cp   $20                                      ; $7405: $FE $20
    jr   nz, jr_001_740E                          ; $7407: $20 $05

    ld   b, $2C                                   ; $7409: $06 $2C
    jp   SpawnBossProjectileRecord                ; $740B: $C3 $EC $76


jr_001_740E:
    and  a                                        ; $740E: $A7
    ret  nz                                       ; $740F: $C0

    ld   a, $4A                                   ; $7410: $3E $4A
    ld   [de], a                                  ; $7412: $12
    ld   e, $01                                   ; $7413: $1E $01
    ld   a, $08                                   ; $7415: $3E $08
    ld   [de], a                                  ; $7417: $12
    ld   e, $0C                                   ; $7418: $1E $0C
    ld   a, $13                                   ; $741A: $3E $13
    ld   [de], a                                  ; $741C: $12
    ret                                           ; $741D: $C9


Jump_001_741E:
    call BossMovementAndHitCheck                  ; $741E: $CD $87 $76
    ld   e, $08                                   ; $7421: $1E $08
    ld   a, [de]                                  ; $7423: $1A
    dec  a                                        ; $7424: $3D
    ld   [de], a                                  ; $7425: $12
    ret  nz                                       ; $7426: $C0

    ld   a, $1E                                   ; $7427: $3E $1E
    ld   [de], a                                  ; $7429: $12
    ld   e, $0C                                   ; $742A: $1E $0C
    ld   a, $01                                   ; $742C: $3E $01
    ld   [de], a                                  ; $742E: $12
    ret                                           ; $742F: $C9


Call_001_7430:
Jump_001_7430:
    ld   e, $08                                   ; $7430: $1E $08
    ld   a, [de]                                  ; $7432: $1A
    dec  a                                        ; $7433: $3D
    ld   [de], a                                  ; $7434: $12
    ret  nz                                       ; $7435: $C0

    ld   e, $00                                   ; $7436: $1E $00
    ld   a, [de]                                  ; $7438: $1A
    res  4, a                                     ; $7439: $CB $A7
    ld   [de], a                                  ; $743B: $12
    bit  6, a                                     ; $743C: $CB $77
    jr   z, jr_001_7444                           ; $743E: $28 $04

    ld   a, $03                                   ; $7440: $3E $03
    jr   jr_001_744B                              ; $7442: $18 $07

jr_001_7444:
    call Call_000_0BBF                            ; $7444: $CD $BF $0B
    and  $03                                      ; $7447: $E6 $03
    jr   z, jr_001_7444                           ; $7449: $28 $F9

jr_001_744B:
    dec  a                                        ; $744B: $3D
    swap a                                        ; $744C: $CB $37
    rrca                                          ; $744E: $0F
    ld   hl, BossPositionTemplateBase             ; $744F: $21 $6F $76
    call AddAToHL                                 ; $7452: $CD $71 $00
    call CopyBossRecordTemplate                   ; $7455: $CD $64 $76
    ld   e, $06                                   ; $7458: $1E $06
    ld   a, [de]                                  ; $745A: $1A
    ld   b, a                                     ; $745B: $47
    ld   a, [$C206]                               ; $745C: $FA $06 $C2
    sub  b                                        ; $745F: $90
    jr   c, jr_001_7469                           ; $7460: $38 $07

    ld   e, $00                                   ; $7462: $1E $00
    ld   a, $27                                   ; $7464: $3E $27
    ld   [de], a                                  ; $7466: $12
    jr   jr_001_746E                              ; $7467: $18 $05

jr_001_7469:
    ld   e, $00                                   ; $7469: $1E $00
    ld   a, $07                                   ; $746B: $3E $07
    ld   [de], a                                  ; $746D: $12

jr_001_746E:
    ld   e, $01                                   ; $746E: $1E $01
    xor  a                                        ; $7470: $AF
    ld   [de], a                                  ; $7471: $12
    call $4A6A                                    ; $7472: $CD $6A $4A
    ld   hl, $C203                                ; $7475: $21 $03 $C2
    ld   e, $18                                   ; $7478: $1E $18
    ld   c, $20                                   ; $747A: $0E $20
    ld   a, [$DF0B]                               ; $747C: $FA $0B $DF
    swap a                                        ; $747F: $CB $37
    and  $03                                      ; $7481: $E6 $03
    jr   z, jr_001_7496                           ; $7483: $28 $11

    ld   c, $00                                   ; $7485: $0E $00
    rrca                                          ; $7487: $0F
    jr   nc, jr_001_7496                          ; $7488: $30 $0C

    ld   c, $10                                   ; $748A: $0E $10
    ld   a, [hl+]                                 ; $748C: $2A
    add  c                                        ; $748D: $81
    ld   [de], a                                  ; $748E: $12
    ld   a, [hl]                                  ; $748F: $7E
    adc  $00                                      ; $7490: $CE $00
    inc  e                                        ; $7492: $1C
    ld   [de], a                                  ; $7493: $12
    jr   jr_001_749E                              ; $7494: $18 $08

jr_001_7496:
    ld   a, [hl+]                                 ; $7496: $2A
    sub  c                                        ; $7497: $91
    ld   [de], a                                  ; $7498: $12
    ld   a, [hl]                                  ; $7499: $7E
    sbc  $00                                      ; $749A: $DE $00
    inc  e                                        ; $749C: $1C
    ld   [de], a                                  ; $749D: $12

jr_001_749E:
    ld   e, $0C                                   ; $749E: $1E $0C
    ld   a, $02                                   ; $74A0: $3E $02
    ld   [de], a                                  ; $74A2: $12
    ret                                           ; $74A3: $C9


Call_001_74A4:
Jump_001_74A4:
    call BossMovementAndHitCheck                  ; $74A4: $CD $87 $76
    ld   e, $04                                   ; $74A7: $1E $04
    ld   h, d                                     ; $74A9: $62
    ld   l, $19                                   ; $74AA: $2E $19
    ld   a, [de]                                  ; $74AC: $1A
    sub  [hl]                                     ; $74AD: $96
    ret  nz                                       ; $74AE: $C0

    dec  l                                        ; $74AF: $2D
    dec  e                                        ; $74B0: $1D
    ld   a, [de]                                  ; $74B1: $1A
    sub  [hl]                                     ; $74B2: $96
    ret  nz                                       ; $74B3: $C0

    ld   hl, $C206                                ; $74B4: $21 $06 $C2
    ld   e, l                                     ; $74B7: $5D
    ld   a, [de]                                  ; $74B8: $1A
    ld   b, a                                     ; $74B9: $47
    ld   a, [hl]                                  ; $74BA: $7E
    sub  b                                        ; $74BB: $90
    jr   c, jr_001_74C9                           ; $74BC: $38 $0B

    ld   e, $00                                   ; $74BE: $1E $00
    ld   a, $27                                   ; $74C0: $3E $27
    ld   [de], a                                  ; $74C2: $12
    inc  e                                        ; $74C3: $1C
    ld   a, $04                                   ; $74C4: $3E $04
    ld   [de], a                                  ; $74C6: $12
    jr   jr_001_74D2                              ; $74C7: $18 $09

jr_001_74C9:
    ld   e, $00                                   ; $74C9: $1E $00
    ld   a, $07                                   ; $74CB: $3E $07
    ld   [de], a                                  ; $74CD: $12
    inc  e                                        ; $74CE: $1C
    ld   a, $0C                                   ; $74CF: $3E $0C
    ld   [de], a                                  ; $74D1: $12

jr_001_74D2:
    ld   a, [hl+]                                 ; $74D2: $2A
    ld   e, $18                                   ; $74D3: $1E $18
    ld   [de], a                                  ; $74D5: $12
    inc  e                                        ; $74D6: $1C
    ld   a, [hl]                                  ; $74D7: $7E
    ld   [de], a                                  ; $74D8: $12
    call $4A6A                                    ; $74D9: $CD $6A $4A
    ld   e, $0C                                   ; $74DC: $1E $0C
    ld   a, $03                                   ; $74DE: $3E $03
    ld   [de], a                                  ; $74E0: $12
    ld   e, $1B                                   ; $74E1: $1E $1B
    ld   a, $20                                   ; $74E3: $3E $20
    ld   [de], a                                  ; $74E5: $12
    ret                                           ; $74E6: $C9


Call_001_74E7:
Jump_001_74E7:
    ld   e, $1B                                   ; $74E7: $1E $1B
    ld   a, [de]                                  ; $74E9: $1A
    and  a                                        ; $74EA: $A7
    jr   z, jr_001_74F4                           ; $74EB: $28 $07

    dec  a                                        ; $74ED: $3D
    ld   [de], a                                  ; $74EE: $12
    call BossHitResponseAndContact                ; $74EF: $CD $8A $76
    jr   jr_001_74F7                              ; $74F2: $18 $03

jr_001_74F4:
    call BossMovementAndHitCheck                  ; $74F4: $CD $87 $76

jr_001_74F7:
    ld   e, $07                                   ; $74F7: $1E $07
    ld   h, d                                     ; $74F9: $62
    ld   l, $19                                   ; $74FA: $2E $19
    ld   a, [de]                                  ; $74FC: $1A
    sub  [hl]                                     ; $74FD: $96
    jr   nz, jr_001_7508                          ; $74FE: $20 $08

    dec  l                                        ; $7500: $2D
    dec  e                                        ; $7501: $1D
    ld   a, [de]                                  ; $7502: $1A
    sub  [hl]                                     ; $7503: $96
    jr   nz, jr_001_7508                          ; $7504: $20 $02

    jr   jr_001_7528                              ; $7506: $18 $20

jr_001_7508:
    ld   e, $1A                                   ; $7508: $1E $1A
    ld   a, [de]                                  ; $750A: $1A
    inc  a                                        ; $750B: $3C
    ld   [de], a                                  ; $750C: $12
    and  $3F                                      ; $750D: $E6 $3F
    ret  nz                                       ; $750F: $C0

    call Call_000_0BBF                            ; $7510: $CD $BF $0B
    rrca                                          ; $7513: $0F
    ret  nc                                       ; $7514: $D0

    ld   b, $02                                   ; $7515: $06 $02
    ld   e, $00                                   ; $7517: $1E $00
    ld   a, [de]                                  ; $7519: $1A
    bit  5, a                                     ; $751A: $CB $6F
    jr   nz, jr_001_7520                          ; $751C: $20 $02

    set  3, b                                     ; $751E: $CB $D8

jr_001_7520:
    call SpawnBossProjectileRecord                ; $7520: $CD $EC $76
    set  2, b                                     ; $7523: $CB $D0
    jp   SpawnBossProjectileRecord                ; $7525: $C3 $EC $76


jr_001_7528:
    ld   e, $01                                   ; $7528: $1E $01
    ld   a, $08                                   ; $752A: $3E $08
    ld   [de], a                                  ; $752C: $12
    call $4A6A                                    ; $752D: $CD $6A $4A
    ld   e, $0C                                   ; $7530: $1E $0C
    ld   a, $05                                   ; $7532: $3E $05
    ld   [de], a                                  ; $7534: $12
    ret                                           ; $7535: $C9


Call_001_7536:
Jump_001_7536:
    call BossMovementAndHitCheck                  ; $7536: $CD $87 $76
    ld   e, $00                                   ; $7539: $1E $00
    ld   a, [de]                                  ; $753B: $1A
    bit  3, a                                     ; $753C: $CB $5F
    ret  z                                        ; $753E: $C8

    set  4, a                                     ; $753F: $CB $E7
    ld   [de], a                                  ; $7541: $12
    ld   e, $08                                   ; $7542: $1E $08
    ld   a, $3C                                   ; $7544: $3E $3C
    ld   [de], a                                  ; $7546: $12
    ld   e, $0C                                   ; $7547: $1E $0C
    ld   a, $01                                   ; $7549: $3E $01
    ld   [de], a                                  ; $754B: $12
    ret                                           ; $754C: $C9


BossDefeatSequenceUpdate::
    ld   e, $08                                   ; $754D: $1E $08
    ld   a, [de]                                  ; $754F: $1A
    inc  a                                        ; $7550: $3C
    ld   [de], a                                  ; $7551: $12
    cp   $80                                      ; $7552: $FE $80
    jr   z, jr_001_7578                           ; $7554: $28 $22

    ld   e, $00                                   ; $7556: $1E $00
    bit  2, a                                     ; $7558: $CB $57
    ld   a, [de]                                  ; $755A: $1A
    jr   nz, jr_001_7561                          ; $755B: $20 $04

    set  4, a                                     ; $755D: $CB $E7
    jr   jr_001_7563                              ; $755F: $18 $02

jr_001_7561:
    res  4, a                                     ; $7561: $CB $A7

jr_001_7563:
    ld   [de], a                                  ; $7563: $12
    ld   e, $00                                   ; $7564: $1E $00
    ld   a, [de]                                  ; $7566: $1A
    bit  6, a                                     ; $7567: $CB $77
    jr   nz, jr_001_7570                          ; $7569: $20 $05

    ld   a, $90                                   ; $756B: $3E $90
    ld   [$C360], a                               ; $756D: $EA $60 $C3

jr_001_7570:
    ld   hl, $C200                                ; $7570: $21 $00 $C2
    ld   a, [hl]                                  ; $7573: $7E
    and  $21                                      ; $7574: $E6 $21
    ld   [hl], a                                  ; $7576: $77
    ret                                           ; $7577: $C9


Jump_001_7578:
jr_001_7578:
    ld   a, $F0                                   ; $7578: $3E $F0
    rst  RST_28                                   ; $757A: $EF
    ld   e, $00                                   ; $757B: $1E $00
    xor  a                                        ; $757D: $AF
    ld   [de], a                                  ; $757E: $12
    ld   [$D800], a                               ; $757F: $EA $00 $D8
    call DeactivateBossWorldActorPages            ; $7582: $CD $26 $26
    ld   e, $0C                                   ; $7585: $1E $0C
    ld   a, $06                                   ; $7587: $3E $06
    ld   [de], a                                  ; $7589: $12
    ld   a, $81                                   ; $758A: $3E $81
    ld   [$C690], a                               ; $758C: $EA $90 $C6
    ld   hl, $C7CC                                ; $758F: $21 $CC $C7
    ld   a, [$C364]                               ; $7592: $FA $64 $C3
    ld   [hl+], a                                 ; $7595: $22
    ld   a, [$C362]                               ; $7596: $FA $62 $C3
    ld   b, a                                     ; $7599: $47
    ld   a, $80                                   ; $759A: $3E $80
    sub  b                                        ; $759C: $90
    ld   [hl+], a                                 ; $759D: $22
    ld   a, $80                                   ; $759E: $3E $80
    ld   [hl], a                                  ; $75A0: $77
    ret                                           ; $75A1: $C9


BossDefeatState06BufferBuilder::
    ld   a, $11                                   ; $75A2: $3E $11
    rst  RST_28                                   ; $75A4: $EF
    ld   a, $00                                   ; $75A5: $3E $00
    call Call_000_00D0                            ; $75A7: $CD $D0 $00
    ld   e, $0C                                   ; $75AA: $1E $0C
    ld   a, $07                                   ; $75AC: $3E $07
    ld   [de], a                                  ; $75AE: $12
    ld   e, $08                                   ; $75AF: $1E $08
    ld   [de], a                                  ; $75B1: $12
    ld   hl, $CA66                                ; $75B2: $21 $66 $CA
    xor  a                                        ; $75B5: $AF
    ld   [hl+], a                                 ; $75B6: $22
    ld   a, $9C                                   ; $75B7: $3E $9C
    ld   [hl+], a                                 ; $75B9: $22
    ld   a, $2C                                   ; $75BA: $3E $2C
    call Call_001_75CB                            ; $75BC: $CD $CB $75
    ld   a, $2E                                   ; $75BF: $3E $2E
    call Call_001_75CB                            ; $75C1: $CD $CB $75
    ld   a, $FF                                   ; $75C4: $3E $FF
    ld   [hl], a                                  ; $75C6: $77
    ld   a, $2F                                   ; $75C7: $3E $2F
    rst  RST_28                                   ; $75C9: $EF
    ret                                           ; $75CA: $C9


Call_001_75CB:
    ld   b, $20                                   ; $75CB: $06 $20

jr_001_75CD:
    ld   [hl+], a                                 ; $75CD: $22
    xor  $01                                      ; $75CE: $EE $01
    dec  b                                        ; $75D0: $05
    jr   nz, jr_001_75CD                          ; $75D1: $20 $FA

    ret                                           ; $75D3: $C9


BossDefeatState07PresentationUpdate::
    ld   e, $08                                   ; $75D4: $1E $08
    ld   a, [de]                                  ; $75D6: $1A
    and  a                                        ; $75D7: $A7
    jr   z, jr_001_75E2                           ; $75D8: $28 $08

    dec  a                                        ; $75DA: $3D
    ld   [de], a                                  ; $75DB: $12
    ld   a, $01                                   ; $75DC: $3E $01
    ld   [$CA61], a                               ; $75DE: $EA $61 $CA
    ret                                           ; $75E1: $C9


jr_001_75E2:
    ld   a, [$C26A]                               ; $75E2: $FA $6A $C2
    bit  2, a                                     ; $75E5: $CB $57
    jr   z, jr_001_75EF                           ; $75E7: $28 $06

    ld   hl, $C364                                ; $75E9: $21 $64 $C3
    inc  [hl]                                     ; $75EC: $34
    jr   jr_001_75F8                              ; $75ED: $18 $09

jr_001_75EF:
    ld   hl, $C364                                ; $75EF: $21 $64 $C3
    dec  [hl]                                     ; $75F2: $35
    ld   a, [hl]                                  ; $75F3: $7E
    inc  a                                        ; $75F4: $3C
    jr   nz, jr_001_75F8                          ; $75F5: $20 $01

    ld   [hl], a                                  ; $75F7: $77

jr_001_75F8:
    ld   hl, $C7CE                                ; $75F8: $21 $CE $C7
    dec  [hl]                                     ; $75FB: $35
    jr   z, jr_001_761E                           ; $75FC: $28 $20

    bit  0, [hl]                                  ; $75FE: $CB $46
    ret  nz                                       ; $7600: $C0

    dec  l                                        ; $7601: $2D
    ld   a, [hl]                                  ; $7602: $7E
    and  a                                        ; $7603: $A7
    jr   z, jr_001_7608                           ; $7604: $28 $02

    dec  [hl]                                     ; $7606: $35
    ret                                           ; $7607: $C9


jr_001_7608:
    ld   hl, $C360                                ; $7608: $21 $60 $C3
    dec  [hl]                                     ; $760B: $35
    ld   a, [$C211]                               ; $760C: $FA $11 $C2
    sub  $06                                      ; $760F: $D6 $06
    sub  [hl]                                     ; $7611: $96
    ret  c                                        ; $7612: $D8

    ld   c, a                                     ; $7613: $4F
    xor  a                                        ; $7614: $AF
    ld   [$C27B], a                               ; $7615: $EA $7B $C2
    ld   [$C274], a                               ; $7618: $EA $74 $C2
    jp   Jump_001_4711                            ; $761B: $C3 $11 $47


jr_001_761E:
    dec  l                                        ; $761E: $2D
    dec  l                                        ; $761F: $2D
    ld   a, [hl]                                  ; $7620: $7E
    ld   [$C364], a                               ; $7621: $EA $64 $C3
    ld   hl, $CA66                                ; $7624: $21 $66 $CA
    ld   a, $40                                   ; $7627: $3E $40
    ld   [hl+], a                                 ; $7629: $22
    ld   a, $9B                                   ; $762A: $3E $9B
    ld   [hl+], a                                 ; $762C: $22
    ld   l, $61                                   ; $762D: $2E $61
    ld   [hl], $01                                ; $762F: $36 $01
    call WaitForRequestedVBlank                   ; $7631: $CD $90 $00
    ld   [hl], $01                                ; $7634: $36 $01
    call WaitForRequestedVBlank                   ; $7636: $CD $90 $00
    ld   [hl], $01                                ; $7639: $36 $01
    call WaitForRequestedVBlank                   ; $763B: $CD $90 $00
    ld   l, $66                                   ; $763E: $2E $66
    xor  a                                        ; $7640: $AF
    ld   [hl+], a                                 ; $7641: $22
    ld   a, $98                                   ; $7642: $3E $98
    ld   [hl+], a                                 ; $7644: $22
    ld   l, $61                                   ; $7645: $2E $61
    ld   [hl], $01                                ; $7647: $36 $01
    call WaitForRequestedVBlank                   ; $7649: $CD $90 $00
    ld   b, $20                                   ; $764C: $06 $20
    ld   hl, $C1D0                                ; $764E: $21 $D0 $C1
    ld   a, $01                                   ; $7651: $3E $01

jr_001_7653:
    ld   [hl+], a                                 ; $7653: $22
    dec  b                                        ; $7654: $05
    jr   nz, jr_001_7653                          ; $7655: $20 $FC

    ld   a, $08                                   ; $7657: $3E $08
    ld   [$C70C], a                               ; $7659: $EA $0C $C7
    ld   a, $90                                   ; $765C: $3E $90
    ld   [$C360], a                               ; $765E: $EA $60 $C3
    jp   Jump_000_26DB                            ; $7661: $C3 $DB $26


CopyBossRecordTemplate::
    ld   e, $02                                   ; $7664: $1E $02
    ld   b, $08                                   ; $7666: $06 $08

jr_001_7668:
    ld   a, [hl+]                                 ; $7668: $2A
    ld   [de], a                                  ; $7669: $12
    inc  e                                        ; $766A: $1C
    dec  b                                        ; $766B: $05
    jr   nz, jr_001_7668                          ; $766C: $20 $FA

    ret                                           ; $766E: $C9


BossPositionTemplateBase::
    nop                                           ; $766F: $00
    jr   nz, jr_001_7674                          ; $7670: $20 $02

    nop                                           ; $7672: $00
    ld   d, b                                     ; $7673: $50

jr_001_7674:
    rlca                                          ; $7674: $07
    add  b                                        ; $7675: $80
    ld   c, a                                     ; $7676: $4F
    nop                                           ; $7677: $00
    jr   nz, jr_001_767C                          ; $7678: $20 $02

    nop                                           ; $767A: $00
    sub  b                                        ; $767B: $90

jr_001_767C:
    rlca                                          ; $767C: $07
    add  b                                        ; $767D: $80
    ld   c, a                                     ; $767E: $4F
    nop                                           ; $767F: $00
    jr   nz, @+$04                                ; $7680: $20 $02

    nop                                           ; $7682: $00
    ldh  [rTAC], a                                ; $7683: $E0 $07
    add  b                                        ; $7685: $80
    ld   c, a                                     ; $7686: $4F

BossMovementAndHitCheck::
    call AdvanceActorFixedPointMovement           ; $7687: $CD $93 $4A

BossHitResponseAndContact::
    ld   bc, $1418                                ; $768A: $01 $18 $14
    call ComparePlayerProjectileWithActor         ; $768D: $CD $88 $7B
    jr   nc, jr_001_76CF                          ; $7690: $30 $3D

    ld   a, $10                                   ; $7692: $3E $10
    ld   [$C57F], a                               ; $7694: $EA $7F $C5
    ld   b, $21                                   ; $7697: $06 $21
    ld   e, $12                                   ; $7699: $1E $12
    ld   a, [de]                                  ; $769B: $1A
    cp   $58                                      ; $769C: $FE $58
    jr   c, jr_001_76A1                           ; $769E: $38 $01

    inc  b                                        ; $76A0: $04

jr_001_76A1:
    ld   a, b                                     ; $76A1: $78
    rst  RST_28                                   ; $76A2: $EF
    ld   hl, BossDamageAmountTable                ; $76A3: $21 $72 $7D
    ld   a, [$DF38]                               ; $76A6: $FA $38 $DF
    call AddAToHL                                 ; $76A9: $CD $71 $00
    ld   e, $0A                                   ; $76AC: $1E $0A
    ld   a, [de]                                  ; $76AE: $1A
    sub  [hl]                                     ; $76AF: $96
    ld   [de], a                                  ; $76B0: $12
    jr   nc, jr_001_76CF                          ; $76B1: $30 $1C

    ld   e, $08                                   ; $76B3: $1E $08
    xor  a                                        ; $76B5: $AF
    ld   [de], a                                  ; $76B6: $12
    ld   e, $0C                                   ; $76B7: $1E $0C
    ld   a, $04                                   ; $76B9: $3E $04
    ld   [de], a                                  ; $76BB: $12
    xor  a                                        ; $76BC: $AF
    ld   [$D80C], a                               ; $76BD: $EA $0C $D8
    ld   a, $01                                   ; $76C0: $3E $01
    ld   [$D800], a                               ; $76C2: $EA $00 $D8
    ld   a, $0C                                   ; $76C5: $3E $0C
    ld   [$D809], a                               ; $76C7: $EA $09 $D8
    ld   a, d                                     ; $76CA: $7A
    ld   [$D80A], a                               ; $76CB: $EA $0A $D8
    ret                                           ; $76CE: $C9


jr_001_76CF:
    ld   hl, $181C                                ; $76CF: $21 $1C $18
    call SharedPlayerContactComparator            ; $76D2: $CD $4B $7B
    ld   h, $F8                                   ; $76D5: $26 $F8
    ld   l, $06                                   ; $76D7: $2E $06
    call Call_001_6DCA                            ; $76D9: $CD $CA $6D
    ld   l, $00                                   ; $76DC: $2E $00
    ld   h, d                                     ; $76DE: $62
    ld   a, [$C662]                               ; $76DF: $FA $62 $C6
    bit  3, a                                     ; $76E2: $CB $5F
    jr   nz, jr_001_76E9                          ; $76E4: $20 $03

    res  7, [hl]                                  ; $76E6: $CB $BE
    ret                                           ; $76E8: $C9


jr_001_76E9:
    set  7, [hl]                                  ; $76E9: $CB $FE
    ret                                           ; $76EB: $C9


SpawnBossProjectileRecord::
    ld   a, $15                                   ; $76EC: $3E $15
    rst  RST_28                                   ; $76EE: $EF
    ld   a, $01                                   ; $76EF: $3E $01
    ld   [$C7C4], a                               ; $76F1: $EA $C4 $C7
    push bc                                       ; $76F4: $C5
    call FindAvailableWorldActorPage              ; $76F5: $CD $5D $4D
    pop  bc                                       ; $76F8: $C1
    ld   l, $00                                   ; $76F9: $2E $00
    ld   e, l                                     ; $76FB: $5D
    ld   a, [de]                                  ; $76FC: $1A
    and  $23                                      ; $76FD: $E6 $23
    ld   [hl+], a                                 ; $76FF: $22
    ld   a, b                                     ; $7700: $78
    ld   [hl+], a                                 ; $7701: $22
    inc  l                                        ; $7702: $2C
    ld   e, l                                     ; $7703: $5D
    ld   a, [de]                                  ; $7704: $1A
    inc  e                                        ; $7705: $1C
    add  $08                                      ; $7706: $C6 $08
    ld   [hl+], a                                 ; $7708: $22
    ld   a, [de]                                  ; $7709: $1A
    ld   [hl+], a                                 ; $770A: $22
    inc  l                                        ; $770B: $2C
    ld   e, l                                     ; $770C: $5D
    ld   a, [de]                                  ; $770D: $1A
    inc  e                                        ; $770E: $1C
    ld   [hl+], a                                 ; $770F: $22
    ld   a, [de]                                  ; $7710: $1A
    ld   [hl+], a                                 ; $7711: $22
    ld   l, $0B                                   ; $7712: $2E $0B
    ld   a, $01                                   ; $7714: $3E $01
    ld   [hl], a                                  ; $7716: $77
    ld   l, $09                                   ; $7717: $2E $09
    ld   a, $0D                                   ; $7719: $3E $0D
    ld   [hl], a                                  ; $771B: $77
    xor  a                                        ; $771C: $AF
    ld   l, $0C                                   ; $771D: $2E $0C
    ld   [hl], a                                  ; $771F: $77
    ret                                           ; $7720: $C9


    call Call_000_0669                            ; $7721: $CD $69 $06
    ld   de, $C70C                                ; $7724: $11 $0C $C7
    ld   a, [de]                                  ; $7727: $1A
    cp   $08                                      ; $7728: $FE $08
    ret  nc                                       ; $772A: $D0

    call Call_000_0B7D                            ; $772B: $CD $7D $0B
    ld   a, $77                                   ; $772E: $3E $77
    ld   [hl], b                                  ; $7730: $70
    ld   [hl], a                                  ; $7731: $77
    or   e                                        ; $7732: $B3
    ld   [hl], a                                  ; $7733: $77
    db   $D3                                      ; $7734: $D3
    ld   [hl], a                                  ; $7735: $77
    xor  c                                        ; $7736: $A9
    ld   a, b                                     ; $7737: $78
    ld   [hl], b                                  ; $7738: $70
    ld   a, b                                     ; $7739: $78
    and  d                                        ; $773A: $A2
    ld   [hl], l                                  ; $773B: $75
    call nc, Call_000_1E75                        ; $773C: $D4 $75 $1E
    ld   [$A71A], sp                              ; $773F: $08 $1A $A7
    jr   z, jr_001_7747                           ; $7742: $28 $03

    dec  a                                        ; $7744: $3D
    ld   [de], a                                  ; $7745: $12
    ret                                           ; $7746: $C9


jr_001_7747:
    ld   e, $00                                   ; $7747: $1E $00
    ld   a, $07                                   ; $7749: $3E $07
    ld   [de], a                                  ; $774B: $12
    ld   hl, $799A                                ; $774C: $21 $9A $79
    call CopyBossRecordTemplate                   ; $774F: $CD $64 $76
    ld   a, $20                                   ; $7752: $3E $20
    ld   [de], a                                  ; $7754: $12
    inc  e                                        ; $7755: $1C
    ld   a, $02                                   ; $7756: $3E $02
    ld   [de], a                                  ; $7758: $12
    ld   e, $0C                                   ; $7759: $1E $0C
    dec  a                                        ; $775B: $3D
    ld   [de], a                                  ; $775C: $12
    inc  e                                        ; $775D: $1C
    ld   a, $06                                   ; $775E: $3E $06
    ld   [de], a                                  ; $7760: $12
    inc  e                                        ; $7761: $1C
    ld   a, $6C                                   ; $7762: $3E $6C
    ld   [de], a                                  ; $7764: $12
    inc  e                                        ; $7765: $1C
    xor  a                                        ; $7766: $AF
    ld   [de], a                                  ; $7767: $12
    inc  e                                        ; $7768: $1C
    ld   [de], a                                  ; $7769: $12
    ld   hl, $C66A                                ; $776A: $21 $6A $C6
    ld   a, [hl+]                                 ; $776D: $2A
    ld   [hl], a                                  ; $776E: $77
    ret                                           ; $776F: $C9


    ld   e, $08                                   ; $7770: $1E $08
    ld   a, [de]                                  ; $7772: $1A
    and  a                                        ; $7773: $A7
    jr   z, jr_001_7793                           ; $7774: $28 $1D

    dec  a                                        ; $7776: $3D
    ld   [de], a                                  ; $7777: $12
    ld   h, a                                     ; $7778: $67
    ld   c, $07                                   ; $7779: $0E $07
    ld   e, $06                                   ; $777B: $1E $06
    ld   a, [de]                                  ; $777D: $1A
    ld   b, a                                     ; $777E: $47
    ld   a, [$C206]                               ; $777F: $FA $06 $C2
    sub  b                                        ; $7782: $90
    jr   c, jr_001_7787                           ; $7783: $38 $02

    set  5, c                                     ; $7785: $CB $E9

jr_001_7787:
    ld   a, h                                     ; $7787: $7C
    bit  2, a                                     ; $7788: $CB $57
    jr   z, jr_001_778E                           ; $778A: $28 $02

    set  4, c                                     ; $778C: $CB $E1

jr_001_778E:
    ld   a, c                                     ; $778E: $79
    ld   e, $00                                   ; $778F: $1E $00
    ld   [de], a                                  ; $7791: $12
    ret                                           ; $7792: $C9


jr_001_7793:
    call Call_001_7C7B                            ; $7793: $CD $7B $7C
    or   $30                                      ; $7796: $F6 $30
    ld   b, a                                     ; $7798: $47
    ld   c, $07                                   ; $7799: $0E $07
    bit  3, a                                     ; $779B: $CB $5F
    jr   nz, jr_001_77A1                          ; $779D: $20 $02

    set  5, c                                     ; $779F: $CB $E9

jr_001_77A1:
    ld   e, $00                                   ; $77A1: $1E $00
    ld   a, c                                     ; $77A3: $79
    ld   [de], a                                  ; $77A4: $12
    call SpawnBossProjectileRecord                ; $77A5: $CD $EC $76
    ld   l, $09                                   ; $77A8: $2E $09
    ld   a, $0B                                   ; $77AA: $3E $0B
    ld   [hl], a                                  ; $77AC: $77
    ld   e, $0C                                   ; $77AD: $1E $0C
    ld   a, $02                                   ; $77AF: $3E $02
    ld   [de], a                                  ; $77B1: $12
    ret                                           ; $77B2: $C9


    ld   e, $08                                   ; $77B3: $1E $08
    ld   a, [de]                                  ; $77B5: $1A
    cp   $80                                      ; $77B6: $FE $80
    jr   z, jr_001_77CA                           ; $77B8: $28 $10

    ld   c, $6C                                   ; $77BA: $0E $6C
    inc  a                                        ; $77BC: $3C
    ld   [de], a                                  ; $77BD: $12
    ld   e, $0E                                   ; $77BE: $1E $0E
    cp   $20                                      ; $77C0: $FE $20
    jr   nc, jr_001_77C5                          ; $77C2: $30 $01

    inc  c                                        ; $77C4: $0C

jr_001_77C5:
    ld   a, c                                     ; $77C5: $79
    ld   [de], a                                  ; $77C6: $12
    jp   Jump_001_78EB                            ; $77C7: $C3 $EB $78


jr_001_77CA:
    ld   a, $20                                   ; $77CA: $3E $20
    ld   [de], a                                  ; $77CC: $12
    ld   e, $0C                                   ; $77CD: $1E $0C
    ld   a, $03                                   ; $77CF: $3E $03
    ld   [de], a                                  ; $77D1: $12
    ret                                           ; $77D2: $C9


    ld   e, $08                                   ; $77D3: $1E $08
    ld   a, [de]                                  ; $77D5: $1A
    and  a                                        ; $77D6: $A7
    jr   z, jr_001_77EA                           ; $77D7: $28 $11

    dec  a                                        ; $77D9: $3D
    ld   [de], a                                  ; $77DA: $12
    ld   e, $00                                   ; $77DB: $1E $00
    bit  2, a                                     ; $77DD: $CB $57
    ld   a, [de]                                  ; $77DF: $1A
    jr   z, jr_001_77E6                           ; $77E0: $28 $04

    set  4, a                                     ; $77E2: $CB $E7
    ld   [de], a                                  ; $77E4: $12
    ret                                           ; $77E5: $C9


jr_001_77E6:
    res  4, a                                     ; $77E6: $CB $A7
    ld   [de], a                                  ; $77E8: $12
    ret                                           ; $77E9: $C9


jr_001_77EA:
    ld   e, $0D                                   ; $77EA: $1E $0D
    ld   a, [de]                                  ; $77EC: $1A
    ld   hl, $793A                                ; $77ED: $21 $3A $79
    rlca                                          ; $77F0: $07
    call AddAToHL                                 ; $77F1: $CD $71 $00
    ld   a, [hl+]                                 ; $77F4: $2A
    ld   h, [hl]                                  ; $77F5: $66
    ld   l, a                                     ; $77F6: $6F
    push hl                                       ; $77F7: $E5
    call Call_001_7C7B                            ; $77F8: $CD $7B $7C
    pop  hl                                       ; $77FB: $E1
    srl  a                                        ; $77FC: $CB $3F
    srl  a                                        ; $77FE: $CB $3F
    call AddAToHL                                 ; $7800: $CD $71 $00
    ld   a, [hl]                                  ; $7803: $7E
    and  $0F                                      ; $7804: $E6 $0F
    ld   e, $0D                                   ; $7806: $1E $0D
    ld   [de], a                                  ; $7808: $12
    ld   b, a                                     ; $7809: $47
    ld   a, [hl]                                  ; $780A: $7E
    swap a                                        ; $780B: $CB $37
    and  $0F                                      ; $780D: $E6 $0F
    ld   e, $01                                   ; $780F: $1E $01
    ld   [de], a                                  ; $7811: $12
    ld   c, $07                                   ; $7812: $0E $07
    bit  3, a                                     ; $7814: $CB $5F
    jr   nz, jr_001_781A                          ; $7816: $20 $02

    set  5, c                                     ; $7818: $CB $E9

jr_001_781A:
    dec  e                                        ; $781A: $1D
    ld   a, c                                     ; $781B: $79
    ld   [de], a                                  ; $781C: $12
    ld   hl, $7982                                ; $781D: $21 $82 $79
    ld   a, b                                     ; $7820: $78
    rlca                                          ; $7821: $07
    call AddAToHL                                 ; $7822: $CD $71 $00
    ld   e, $18                                   ; $7825: $1E $18
    ld   a, [hl+]                                 ; $7827: $2A
    ld   [de], a                                  ; $7828: $12
    inc  e                                        ; $7829: $1C
    ld   a, [hl]                                  ; $782A: $7E
    ld   [de], a                                  ; $782B: $12
    ld   hl, $C900                                ; $782C: $21 $00 $C9
    ld   a, $03                                   ; $782F: $3E $03
    call Call_001_78D1                            ; $7831: $CD $D1 $78
    ld   e, $01                                   ; $7834: $1E $01
    ld   a, [de]                                  ; $7836: $1A
    or   $10                                      ; $7837: $F6 $10
    ld   l, e                                     ; $7839: $6B
    call Call_001_78DB                            ; $783A: $CD $DB $78
    ld   e, $06                                   ; $783D: $1E $06
    ld   a, [de]                                  ; $783F: $1A
    ld   l, e                                     ; $7840: $6B
    call Call_001_78D1                            ; $7841: $CD $D1 $78
    inc  l                                        ; $7844: $2C
    inc  e                                        ; $7845: $1C
    ld   a, [de]                                  ; $7846: $1A
    call Call_001_78D1                            ; $7847: $CD $D1 $78
    ld   e, $03                                   ; $784A: $1E $03
    ld   a, [de]                                  ; $784C: $1A
    ld   l, e                                     ; $784D: $6B
    call Call_001_78D1                            ; $784E: $CD $D1 $78
    inc  l                                        ; $7851: $2C
    inc  e                                        ; $7852: $1C
    ld   a, [de]                                  ; $7853: $1A
    call Call_001_78D1                            ; $7854: $CD $D1 $78
    ld   l, $09                                   ; $7857: $2E $09
    ld   a, $0A                                   ; $7859: $3E $0A
    call Call_001_78D1                            ; $785B: $CD $D1 $78
    ld   l, $0C                                   ; $785E: $2E $0C
    xor  a                                        ; $7860: $AF
    call Call_001_78D1                            ; $7861: $CD $D1 $78
    ld   e, l                                     ; $7864: $5D
    ld   a, $05                                   ; $7865: $3E $05
    ld   [de], a                                  ; $7867: $12
    inc  e                                        ; $7868: $1C
    inc  e                                        ; $7869: $1C
    ld   a, $2D                                   ; $786A: $3E $2D
    ld   [de], a                                  ; $786C: $12
    jp   $4A6A                                    ; $786D: $C3 $6A $4A


    call AdvanceActorFixedPointMovement           ; $7870: $CD $93 $4A
    ld   e, $00                                   ; $7873: $1E $00
    ld   a, [de]                                  ; $7875: $1A
    bit  3, a                                     ; $7876: $CB $5F
    jr   nz, jr_001_7886                          ; $7878: $20 $0C

    ld   bc, $0E10                                ; $787A: $01 $10 $0E
    call ComparePlayerProjectileWithActor         ; $787D: $CD $88 $7B
    ld   hl, $1210                                ; $7880: $21 $10 $12
    call SharedPlayerContactComparator            ; $7883: $CD $4B $7B

jr_001_7886:
    ld   h, d                                     ; $7886: $62
    ld   e, $03                                   ; $7887: $1E $03
    ld   l, $18                                   ; $7889: $2E $18
    ld   a, [de]                                  ; $788B: $1A
    sub  [hl]                                     ; $788C: $96
    ret  nz                                       ; $788D: $C0

    ld   e, $06                                   ; $788E: $1E $06
    ld   l, $19                                   ; $7890: $2E $19
    ld   a, [de]                                  ; $7892: $1A
    sub  [hl]                                     ; $7893: $96
    ret  nz                                       ; $7894: $C0

    ld   e, $0E                                   ; $7895: $1E $0E
    ld   a, $6C                                   ; $7897: $3E $6C
    ld   [de], a                                  ; $7899: $12
    inc  e                                        ; $789A: $1C
    xor  a                                        ; $789B: $AF
    ld   [de], a                                  ; $789C: $12
    inc  e                                        ; $789D: $1C
    ld   [de], a                                  ; $789E: $12
    ld   e, $0C                                   ; $789F: $1E $0C
    inc  a                                        ; $78A1: $3C
    ld   [de], a                                  ; $78A2: $12
    ld   e, $08                                   ; $78A3: $1E $08
    ld   a, $20                                   ; $78A5: $3E $20
    ld   [de], a                                  ; $78A7: $12
    ret                                           ; $78A8: $C9


Jump_001_78A9:
    ld   e, $08                                   ; $78A9: $1E $08
    ld   a, [de]                                  ; $78AB: $1A
    inc  a                                        ; $78AC: $3C
    ld   [de], a                                  ; $78AD: $12
    jp   z, Jump_001_7578                         ; $78AE: $CA $78 $75

    ld   e, $00                                   ; $78B1: $1E $00
    bit  2, a                                     ; $78B3: $CB $57
    ld   a, [de]                                  ; $78B5: $1A
    jr   nz, jr_001_78BC                          ; $78B6: $20 $04

    set  4, a                                     ; $78B8: $CB $E7
    jr   jr_001_78BE                              ; $78BA: $18 $02

jr_001_78BC:
    res  4, a                                     ; $78BC: $CB $A7

jr_001_78BE:
    ld   [de], a                                  ; $78BE: $12
    ld   a, $8F                                   ; $78BF: $3E $8F
    ld   [$C360], a                               ; $78C1: $EA $60 $C3
    ret                                           ; $78C4: $C9


    ld   a, $F0                                   ; $78C5: $3E $F0
    rst  RST_28                                   ; $78C7: $EF
    call DeactivateBossWorldActorPages            ; $78C8: $CD $26 $26
    ld   a, $06                                   ; $78CB: $3E $06
    ld   [$C70C], a                               ; $78CD: $EA $0C $C7
    ret                                           ; $78D0: $C9


Call_001_78D1:
    push hl                                       ; $78D1: $E5
    ld   b, $03                                   ; $78D2: $06 $03

jr_001_78D4:
    ld   [hl], a                                  ; $78D4: $77
    inc  h                                        ; $78D5: $24
    dec  b                                        ; $78D6: $05
    jr   nz, jr_001_78D4                          ; $78D7: $20 $FB

    pop  hl                                       ; $78D9: $E1
    ret                                           ; $78DA: $C9


Call_001_78DB:
    push hl                                       ; $78DB: $E5
    ld   b, $03                                   ; $78DC: $06 $03

jr_001_78DE:
    swap a                                        ; $78DE: $CB $37
    add  $40                                      ; $78E0: $C6 $40
    swap a                                        ; $78E2: $CB $37
    ld   [hl], a                                  ; $78E4: $77
    inc  h                                        ; $78E5: $24
    dec  b                                        ; $78E6: $05
    jr   nz, jr_001_78DE                          ; $78E7: $20 $F5

    pop  hl                                       ; $78E9: $E1
    ret                                           ; $78EA: $C9


Jump_001_78EB:
    call Call_001_7D61                            ; $78EB: $CD $61 $7D
    ld   hl, $1A18                                ; $78EE: $21 $18 $1A
    call SharedPlayerContactComparator            ; $78F1: $CD $4B $7B
    ld   bc, $1818                                ; $78F4: $01 $18 $18
    call ComparePlayerProjectileWithActor         ; $78F7: $CD $88 $7B
    ret  nc                                       ; $78FA: $D0

Jump_001_78FB:
    ld   a, [$DF38]                               ; $78FB: $FA $38 $DF
    ld   c, a                                     ; $78FE: $4F
    cp   $02                                      ; $78FF: $FE $02
    ret  z                                        ; $7901: $C8

    ld   a, $10                                   ; $7902: $3E $10
    ld   [$C57F], a                               ; $7904: $EA $7F $C5
    ld   b, $21                                   ; $7907: $06 $21
    ld   e, $12                                   ; $7909: $1E $12
    ld   a, [de]                                  ; $790B: $1A
    cp   $58                                      ; $790C: $FE $58
    jr   c, jr_001_7911                           ; $790E: $38 $01

    inc  b                                        ; $7910: $04

jr_001_7911:
    ld   a, b                                     ; $7911: $78
    rst  RST_28                                   ; $7912: $EF
    ld   hl, BossDamageAmountTable                ; $7913: $21 $72 $7D
    ld   a, c                                     ; $7916: $79
    call AddAToHL                                 ; $7917: $CD $71 $00
    ld   e, $0A                                   ; $791A: $1E $0A
    ld   a, [de]                                  ; $791C: $1A
    sub  [hl]                                     ; $791D: $96
    ld   [de], a                                  ; $791E: $12
    ret  nc                                       ; $791F: $D0

    ld   e, $08                                   ; $7920: $1E $08
    xor  a                                        ; $7922: $AF
    ld   [de], a                                  ; $7923: $12
    ld   e, $0C                                   ; $7924: $1E $0C
    ld   a, $04                                   ; $7926: $3E $04
    ld   [de], a                                  ; $7928: $12
    ld   hl, $D80C                                ; $7929: $21 $0C $D8
    xor  a                                        ; $792C: $AF
    ld   [hl], a                                  ; $792D: $77
    inc  a                                        ; $792E: $3C
    ld   l, $00                                   ; $792F: $2E $00
    ld   [hl], a                                  ; $7931: $77
    ld   a, $0C                                   ; $7932: $3E $0C
    ld   l, $09                                   ; $7934: $2E $09
    ld   [hl+], a                                 ; $7936: $22

jr_001_7937:
    ld   a, d                                     ; $7937: $7A
    ld   [hl], a                                  ; $7938: $77
    ret                                           ; $7939: $C9


    ld   d, d                                     ; $793A: $52
    ld   a, c                                     ; $793B: $79
    ld   d, [hl]                                  ; $793C: $56
    ld   a, c                                     ; $793D: $79
    ld   e, d                                     ; $793E: $5A
    ld   a, c                                     ; $793F: $79
    ld   e, [hl]                                  ; $7940: $5E
    ld   a, c                                     ; $7941: $79
    ld   h, d                                     ; $7942: $62
    ld   a, c                                     ; $7943: $79
    ld   h, [hl]                                  ; $7944: $66
    ld   a, c                                     ; $7945: $79
    ld   l, d                                     ; $7946: $6A
    ld   a, c                                     ; $7947: $79
    ld   l, [hl]                                  ; $7948: $6E
    ld   a, c                                     ; $7949: $79
    ld   [hl], d                                  ; $794A: $72
    ld   a, c                                     ; $794B: $79
    halt                                          ; $794C: $76
    ld   a, c                                     ; $794D: $79
    ld   a, d                                     ; $794E: $7A
    ld   a, c                                     ; $794F: $79
    ld   a, [hl]                                  ; $7950: $7E
    ld   a, c                                     ; $7951: $79
    ld   h, e                                     ; $7952: $63
    ld   h, e                                     ; $7953: $63
    ld   h, e                                     ; $7954: $63
    ld   h, e                                     ; $7955: $63
    ld   h, h                                     ; $7956: $64
    ld   h, h                                     ; $7957: $64
    and  e                                        ; $7958: $A3
    and  e                                        ; $7959: $A3
    and  h                                        ; $795A: $A4
    and  h                                        ; $795B: $A4
    and  h                                        ; $795C: $A4
    and  h                                        ; $795D: $A4
    ld   hl, $A566                                ; $795E: $21 $66 $A5
    ldh  [rNR43], a                               ; $7961: $E0 $22
    ld   h, a                                     ; $7963: $67
    and  [hl]                                     ; $7964: $A6
    pop  hl                                       ; $7965: $E1
    inc  hl                                       ; $7966: $23
    ld   l, d                                     ; $7967: $6A
    ld   l, d                                     ; $7968: $6A
    inc  hl                                       ; $7969: $23
    inc  h                                        ; $796A: $24
    ld   l, c                                     ; $796B: $69
    xor  d                                        ; $796C: $AA
    db   $E3                                      ; $796D: $E3
    ld   l, b                                     ; $796E: $68
    ld   l, b                                     ; $796F: $68
    xor  c                                        ; $7970: $A9
    db   $E4                                      ; $7971: $E4
    rst  RST_20                                   ; $7972: $E7
    rst  RST_20                                   ; $7973: $E7
    rst  RST_20                                   ; $7974: $E7
    rst  RST_20                                   ; $7975: $E7
    daa                                           ; $7976: $27
    daa                                           ; $7977: $27
    and  $E6                                      ; $7978: $E6 $E6
    ld   h, $26                                   ; $797A: $26 $26
    xor  e                                        ; $797C: $AB
    push hl                                       ; $797D: $E5
    ld   a, [hl+]                                 ; $797E: $2A
    ld   a, [hl+]                                 ; $797F: $2A
    ld   a, [hl+]                                 ; $7980: $2A
    ld   a, [hl+]                                 ; $7981: $2A
    ld   c, b                                     ; $7982: $48
    jr   nz, jr_001_79CD                          ; $7983: $20 $48

    add  b                                        ; $7985: $80
    ld   c, b                                     ; $7986: $48
    ldh  [$FF78], a                               ; $7987: $E0 $78
    ld   d, b                                     ; $7989: $50
    ld   a, b                                     ; $798A: $78
    or   b                                        ; $798B: $B0
    sbc  b                                        ; $798C: $98
    jr   nc, jr_001_7937                          ; $798D: $30 $A8

    add  b                                        ; $798F: $80
    sbc  b                                        ; $7990: $98
    ret  nc                                       ; $7991: $D0

    cp   b                                        ; $7992: $B8
    ldh  a, [$FFC8]                               ; $7993: $F0 $C8
    and  b                                        ; $7995: $A0
    ret  z                                        ; $7996: $C8

    ld   h, b                                     ; $7997: $60
    ld   hl, sp+$30                               ; $7998: $F8 $30
    nop                                           ; $799A: $00
    xor  b                                        ; $799B: $A8
    nop                                           ; $799C: $00
    nop                                           ; $799D: $00
    add  b                                        ; $799E: $80
    rlca                                          ; $799F: $07
    ld   b, b                                     ; $79A0: $40
    nop                                           ; $79A1: $00
    call Call_000_0669                            ; $79A2: $CD $69 $06
    ld   de, $C70C                                ; $79A5: $11 $0C $C7
    ld   a, [de]                                  ; $79A8: $1A
    and  a                                        ; $79A9: $A7
    jr   z, jr_001_79C2                           ; $79AA: $28 $16

    dec  a                                        ; $79AC: $3D
    jr   z, jr_001_79F8                           ; $79AD: $28 $49

    dec  a                                        ; $79AF: $3D
    jp   z, Jump_001_7A44                         ; $79B0: $CA $44 $7A

    sub  $02                                      ; $79B3: $D6 $02
    jp   z, Jump_001_78A9                         ; $79B5: $CA $A9 $78

    sub  $02                                      ; $79B8: $D6 $02
    jp   z, BossDefeatState06BufferBuilder        ; $79BA: $CA $A2 $75

    dec  a                                        ; $79BD: $3D
    jp   z, BossDefeatState07PresentationUpdate   ; $79BE: $CA $D4 $75

    ret                                           ; $79C1: $C9


jr_001_79C2:
    ld   e, $08                                   ; $79C2: $1E $08
    ld   a, [de]                                  ; $79C4: $1A
    and  a                                        ; $79C5: $A7
    jr   z, jr_001_79CB                           ; $79C6: $28 $03

    dec  a                                        ; $79C8: $3D
    ld   [de], a                                  ; $79C9: $12
    ret                                           ; $79CA: $C9


jr_001_79CB:
    ld   e, $00                                   ; $79CB: $1E $00

jr_001_79CD:
    ld   a, $07                                   ; $79CD: $3E $07
    ld   [de], a                                  ; $79CF: $12
    inc  e                                        ; $79D0: $1C
    ld   a, $04                                   ; $79D1: $3E $04
    ld   [de], a                                  ; $79D3: $12
    call $4A6A                                    ; $79D4: $CD $6A $4A
    ld   hl, $7AE5                                ; $79D7: $21 $E5 $7A
    call CopyBossRecordTemplate                   ; $79DA: $CD $64 $76
    ld   a, $40                                   ; $79DD: $3E $40
    ld   [de], a                                  ; $79DF: $12
    inc  e                                        ; $79E0: $1C
    ld   a, $02                                   ; $79E1: $3E $02
    ld   [de], a                                  ; $79E3: $12
    ld   e, $0C                                   ; $79E4: $1E $0C
    dec  a                                        ; $79E6: $3D
    ld   [de], a                                  ; $79E7: $12
    inc  e                                        ; $79E8: $1C
    inc  e                                        ; $79E9: $1C
    ld   a, $63                                   ; $79EA: $3E $63
    ld   [de], a                                  ; $79EC: $12
    inc  e                                        ; $79ED: $1C
    xor  a                                        ; $79EE: $AF
    ld   [de], a                                  ; $79EF: $12
    inc  e                                        ; $79F0: $1C
    ld   [de], a                                  ; $79F1: $12
    ld   hl, $C66A                                ; $79F2: $21 $6A $C6
    ld   a, [hl+]                                 ; $79F5: $2A
    ld   [hl], a                                  ; $79F6: $77
    ret                                           ; $79F7: $C9


jr_001_79F8:
    ld   e, $08                                   ; $79F8: $1E $08
    ld   a, $60                                   ; $79FA: $3E $60
    ld   [de], a                                  ; $79FC: $12
    ld   e, $0C                                   ; $79FD: $1E $0C
    ld   a, $02                                   ; $79FF: $3E $02
    ld   [de], a                                  ; $7A01: $12
    inc  e                                        ; $7A02: $1C
    ld   a, [$C363]                               ; $7A03: $FA $63 $C3
    and  a                                        ; $7A06: $A7
    jr   z, jr_001_7A13                           ; $7A07: $28 $0A

    call Call_000_0BBF                            ; $7A09: $CD $BF $0B
    and  $03                                      ; $7A0C: $E6 $03
    jr   nz, jr_001_7A13                          ; $7A0E: $20 $03

    xor  a                                        ; $7A10: $AF
    ld   [de], a                                  ; $7A11: $12
    ret                                           ; $7A12: $C9


jr_001_7A13:
    ld   a, $01                                   ; $7A13: $3E $01
    ld   [de], a                                  ; $7A15: $12
    ld   hl, $C203                                ; $7A16: $21 $03 $C2
    ld   e, l                                     ; $7A19: $5D
    ld   a, [de]                                  ; $7A1A: $1A
    sub  [hl]                                     ; $7A1B: $96
    jr   c, jr_001_7A2F                           ; $7A1C: $38 $11

    ld   e, $18                                   ; $7A1E: $1E $18
    xor  a                                        ; $7A20: $AF
    ld   [de], a                                  ; $7A21: $12
    inc  e                                        ; $7A22: $1C
    ld   a, $03                                   ; $7A23: $3E $03
    ld   [de], a                                  ; $7A25: $12
    inc  e                                        ; $7A26: $1C
    ld   a, $18                                   ; $7A27: $3E $18
    ld   [de], a                                  ; $7A29: $12
    ld   e, $0D                                   ; $7A2A: $1E $0D
    ld   a, $03                                   ; $7A2C: $3E $03
    ld   [de], a                                  ; $7A2E: $12

jr_001_7A2F:
    ld   bc, $070C                                ; $7A2F: $01 $0C $07
    ld   e, $06                                   ; $7A32: $1E $06
    ld   l, e                                     ; $7A34: $6B
    ld   a, [de]                                  ; $7A35: $1A
    sub  [hl]                                     ; $7A36: $96
    jr   nc, jr_001_7A3C                          ; $7A37: $30 $03

    ld   bc, $2704                                ; $7A39: $01 $04 $27

jr_001_7A3C:
    ld   e, $00                                   ; $7A3C: $1E $00
    ld   a, b                                     ; $7A3E: $78
    ld   [de], a                                  ; $7A3F: $12
    inc  e                                        ; $7A40: $1C
    ld   a, c                                     ; $7A41: $79
    ld   [de], a                                  ; $7A42: $12
    ret                                           ; $7A43: $C9


Jump_001_7A44:
    ld   e, $0D                                   ; $7A44: $1E $0D
    ld   a, [de]                                  ; $7A46: $1A
    rrca                                          ; $7A47: $0F
    jr   c, jr_001_7A57                           ; $7A48: $38 $0D

    ld   e, $08                                   ; $7A4A: $1E $08
    ld   a, [de]                                  ; $7A4C: $1A
    dec  a                                        ; $7A4D: $3D
    ld   [de], a                                  ; $7A4E: $12
    jp   nz, Jump_001_78EB                        ; $7A4F: $C2 $EB $78

    ld   e, $0C                                   ; $7A52: $1E $0C
    inc  a                                        ; $7A54: $3C
    ld   [de], a                                  ; $7A55: $12
    ret                                           ; $7A56: $C9


jr_001_7A57:
    rrca                                          ; $7A57: $0F
    jr   nc, jr_001_7A6A                          ; $7A58: $30 $10

    call Call_001_7AED                            ; $7A5A: $CD $ED $7A
    jr   nc, jr_001_7A9A                          ; $7A5D: $30 $3B

    ld   e, $18                                   ; $7A5F: $1E $18
    xor  a                                        ; $7A61: $AF
    ld   [de], a                                  ; $7A62: $12
    inc  e                                        ; $7A63: $1C
    ld   [de], a                                  ; $7A64: $12
    ld   e, $0D                                   ; $7A65: $1E $0D
    ld   a, $01                                   ; $7A67: $3E $01
    ld   [de], a                                  ; $7A69: $12

jr_001_7A6A:
    ld   e, $0D                                   ; $7A6A: $1E $0D
    ld   a, [de]                                  ; $7A6C: $1A
    rlca                                          ; $7A6D: $07
    jr   c, jr_001_7A73                           ; $7A6E: $38 $03

    call Call_001_7B18                            ; $7A70: $CD $18 $7B

jr_001_7A73:
    ld   h, $08                                   ; $7A73: $26 $08
    ld   l, $10                                   ; $7A75: $2E $10
    call Call_001_6DCA                            ; $7A77: $CD $CA $6D
    ld   c, $81                                   ; $7A7A: $0E $81
    ld   hl, $C660                                ; $7A7C: $21 $60 $C6
    ld   a, [hl+]                                 ; $7A7F: $2A
    or   [hl]                                     ; $7A80: $B6
    inc  l                                        ; $7A81: $2C
    or   [hl]                                     ; $7A82: $B6
    jr   nz, jr_001_7A87                          ; $7A83: $20 $02

    ld   c, $01                                   ; $7A85: $0E $01

jr_001_7A87:
    ld   a, c                                     ; $7A87: $79
    ld   e, $0D                                   ; $7A88: $1E $0D
    ld   [de], a                                  ; $7A8A: $12
    rlca                                          ; $7A8B: $07
    jr   nc, jr_001_7A9A                          ; $7A8C: $30 $0C

    ld   e, $08                                   ; $7A8E: $1E $08
    ld   a, [de]                                  ; $7A90: $1A
    dec  a                                        ; $7A91: $3D
    ld   [de], a                                  ; $7A92: $12
    jr   nz, jr_001_7A9A                          ; $7A93: $20 $05

    ld   e, $0C                                   ; $7A95: $1E $0C
    inc  a                                        ; $7A97: $3C
    ld   [de], a                                  ; $7A98: $12
    ret                                           ; $7A99: $C9


jr_001_7A9A:
    call Call_001_7ABA                            ; $7A9A: $CD $BA $7A
    call AdvanceActorFixedPointMovement           ; $7A9D: $CD $93 $4A
    ld   e, $06                                   ; $7AA0: $1E $06
    ld   a, [de]                                  ; $7AA2: $1A
    ld   bc, $070C                                ; $7AA3: $01 $0C $07
    cp   $F0                                      ; $7AA6: $FE $F0
    jr   z, jr_001_7AB0                           ; $7AA8: $28 $06

    ld   bc, $2704                                ; $7AAA: $01 $04 $27
    cp   $10                                      ; $7AAD: $FE $10
    ret  nz                                       ; $7AAF: $C0

jr_001_7AB0:
    ld   e, $00                                   ; $7AB0: $1E $00
    ld   a, b                                     ; $7AB2: $78
    ld   [de], a                                  ; $7AB3: $12
    inc  e                                        ; $7AB4: $1C
    ld   a, c                                     ; $7AB5: $79
    ld   [de], a                                  ; $7AB6: $12
    jp   AdvanceActorFixedPointMovement           ; $7AB7: $C3 $93 $4A


Call_001_7ABA:
    ld   e, $1B                                   ; $7ABA: $1E $1B
    ld   a, [de]                                  ; $7ABC: $1A
    inc  a                                        ; $7ABD: $3C
    ld   [de], a                                  ; $7ABE: $12
    and  $7F                                      ; $7ABF: $E6 $7F
    jr   nz, jr_001_7AE2                          ; $7AC1: $20 $1F

    call Call_001_7C7B                            ; $7AC3: $CD $7B $7C
    or   $10                                      ; $7AC6: $F6 $10
    ld   b, a                                     ; $7AC8: $47
    call SpawnBossProjectileRecord                ; $7AC9: $CD $EC $76
    ld   l, $09                                   ; $7ACC: $2E $09
    ld   a, $0B                                   ; $7ACE: $3E $0B
    ld   [hl], a                                  ; $7AD0: $77
    ld   l, $06                                   ; $7AD1: $2E $06
    ld   e, $00                                   ; $7AD3: $1E $00
    ld   a, [de]                                  ; $7AD5: $1A
    bit  5, a                                     ; $7AD6: $CB $6F
    ld   a, [hl]                                  ; $7AD8: $7E
    jr   z, jr_001_7ADF                           ; $7AD9: $28 $04

    add  $18                                      ; $7ADB: $C6 $18
    jr   jr_001_7AE1                              ; $7ADD: $18 $02

jr_001_7ADF:
    sub  $18                                      ; $7ADF: $D6 $18

jr_001_7AE1:
    ld   [hl], a                                  ; $7AE1: $77

jr_001_7AE2:
    jp   Jump_001_78EB                            ; $7AE2: $C3 $EB $78


    nop                                           ; $7AE5: $00
    ret  nc                                       ; $7AE6: $D0

    rlca                                          ; $7AE7: $07
    nop                                           ; $7AE8: $00
    ret  nz                                       ; $7AE9: $C0

    ld   [bc], a                                  ; $7AEA: $02
    ld   b, b                                     ; $7AEB: $40
    nop                                           ; $7AEC: $00

Call_001_7AED:
    ld   e, $1A                                   ; $7AED: $1E $1A
    ld   a, [de]                                  ; $7AEF: $1A
    ld   b, a                                     ; $7AF0: $47
    ld   e, $18                                   ; $7AF1: $1E $18
    ld   a, [de]                                  ; $7AF3: $1A
    sub  b                                        ; $7AF4: $90
    ld   [de], a                                  ; $7AF5: $12
    jr   nc, jr_001_7AFE                          ; $7AF6: $30 $06

    inc  e                                        ; $7AF8: $1C
    ld   a, [de]                                  ; $7AF9: $1A
    sub  $01                                      ; $7AFA: $D6 $01
    ld   [de], a                                  ; $7AFC: $12
    ret  c                                        ; $7AFD: $D8

jr_001_7AFE:
    ld   e, $18                                   ; $7AFE: $1E $18
    ld   a, [de]                                  ; $7B00: $1A
    inc  e                                        ; $7B01: $1C
    ld   b, a                                     ; $7B02: $47
    ld   a, [de]                                  ; $7B03: $1A
    ld   c, a                                     ; $7B04: $4F
    ld   e, $02                                   ; $7B05: $1E $02
    ld   a, [de]                                  ; $7B07: $1A
    add  b                                        ; $7B08: $80
    ld   [de], a                                  ; $7B09: $12
    jr   nc, jr_001_7B0D                          ; $7B0A: $30 $01

    inc  c                                        ; $7B0C: $0C

jr_001_7B0D:
    inc  e                                        ; $7B0D: $1C
    ld   a, [de]                                  ; $7B0E: $1A
    sub  c                                        ; $7B0F: $91
    ld   [de], a                                  ; $7B10: $12
    ret  nc                                       ; $7B11: $D0

    inc  e                                        ; $7B12: $1C
    ld   a, [de]                                  ; $7B13: $1A
    dec  a                                        ; $7B14: $3D
    ld   [de], a                                  ; $7B15: $12
    and  a                                        ; $7B16: $A7
    ret                                           ; $7B17: $C9


Call_001_7B18:
    ld   e, $1A                                   ; $7B18: $1E $1A
    ld   a, [de]                                  ; $7B1A: $1A
    ld   b, a                                     ; $7B1B: $47
    ld   e, $18                                   ; $7B1C: $1E $18
    ld   a, [de]                                  ; $7B1E: $1A
    add  b                                        ; $7B1F: $80
    ld   [de], a                                  ; $7B20: $12
    jr   nc, jr_001_7B32                          ; $7B21: $30 $0F

    inc  e                                        ; $7B23: $1C
    ld   a, [de]                                  ; $7B24: $1A
    inc  a                                        ; $7B25: $3C
    ld   [de], a                                  ; $7B26: $12
    cp   $04                                      ; $7B27: $FE $04
    jr   nz, jr_001_7B32                          ; $7B29: $20 $07

    ld   a, $03                                   ; $7B2B: $3E $03
    ld   [de], a                                  ; $7B2D: $12
    dec  e                                        ; $7B2E: $1D
    xor  a                                        ; $7B2F: $AF
    sub  b                                        ; $7B30: $90
    ld   [de], a                                  ; $7B31: $12

jr_001_7B32:
    ld   e, $18                                   ; $7B32: $1E $18
    ld   a, [de]                                  ; $7B34: $1A
    inc  e                                        ; $7B35: $1C
    ld   b, a                                     ; $7B36: $47
    ld   a, [de]                                  ; $7B37: $1A
    ld   c, a                                     ; $7B38: $4F
    ld   e, $02                                   ; $7B39: $1E $02
    ld   a, [de]                                  ; $7B3B: $1A
    add  b                                        ; $7B3C: $80
    ld   [de], a                                  ; $7B3D: $12
    jr   nc, jr_001_7B41                          ; $7B3E: $30 $01

    inc  c                                        ; $7B40: $0C

jr_001_7B41:
    inc  e                                        ; $7B41: $1C
    ld   a, [de]                                  ; $7B42: $1A
    add  c                                        ; $7B43: $81
    ld   [de], a                                  ; $7B44: $12
    ret  nc                                       ; $7B45: $D0

    inc  e                                        ; $7B46: $1C
    ld   a, [de]                                  ; $7B47: $1A
    inc  a                                        ; $7B48: $3C
    ld   [de], a                                  ; $7B49: $12
    ret                                           ; $7B4A: $C9


SharedPlayerContactComparator::
    ld   b, $00                                   ; $7B4B: $06 $00
    ld   a, [$C27B]                               ; $7B4D: $FA $7B $C2
    bit  4, a                                     ; $7B50: $CB $67
    jr   z, jr_001_7B5A                           ; $7B52: $28 $06

    ld   a, h                                     ; $7B54: $7C
    sub  $04                                      ; $7B55: $D6 $04
    ld   h, a                                     ; $7B57: $67
    ld   b, $FD                                   ; $7B58: $06 $FD

Call_001_7B5A:
jr_001_7B5A:
    ld   a, [$C203]                               ; $7B5A: $FA $03 $C2
    add  b                                        ; $7B5D: $80
    ld   b, a                                     ; $7B5E: $47
    ld   a, [$C206]                               ; $7B5F: $FA $06 $C2
    ld   c, a                                     ; $7B62: $4F
    ld   e, $03                                   ; $7B63: $1E $03
    ld   a, [de]                                  ; $7B65: $1A
    sub  b                                        ; $7B66: $90
    add  h                                        ; $7B67: $84
    sla  h                                        ; $7B68: $CB $24
    sub  h                                        ; $7B6A: $94
    ret  nc                                       ; $7B6B: $D0

    ld   e, $06                                   ; $7B6C: $1E $06
    ld   a, [de]                                  ; $7B6E: $1A
    sub  c                                        ; $7B6F: $91
    add  l                                        ; $7B70: $85
    sla  l                                        ; $7B71: $CB $25
    sub  l                                        ; $7B73: $95
    ret  nc                                       ; $7B74: $D0

    ld   e, $0B                                   ; $7B75: $1E $0B
    ld   a, [de]                                  ; $7B77: $1A
    and  a                                        ; $7B78: $A7
    jr   z, jr_001_7B86                           ; $7B79: $28 $0B

    ld   [$C663], a                               ; $7B7B: $EA $63 $C6
    ld   a, [$C36A]                               ; $7B7E: $FA $6A $C3
    or   $10                                      ; $7B81: $F6 $10
    ld   [$C36A], a                               ; $7B83: $EA $6A $C3

jr_001_7B86:
    scf                                           ; $7B86: $37
    ret                                           ; $7B87: $C9


ComparePlayerProjectileWithActor::
    ld   a, [$C291]                               ; $7B88: $FA $91 $C2
    and  a                                        ; $7B8B: $A7
    ret  z                                        ; $7B8C: $C8

    ld   a, [$C29E]                               ; $7B8D: $FA $9E $C2
    ld   [$C7CC], a                               ; $7B90: $EA $CC $C7
    ld   h, $C3                                   ; $7B93: $26 $C3

jr_001_7B95:
    push bc                                       ; $7B95: $C5
    ld   l, $00                                   ; $7B96: $2E $00
    ld   a, [hl]                                  ; $7B98: $7E
    bit  0, a                                     ; $7B99: $CB $47
    jr   z, jr_001_7BBB                           ; $7B9B: $28 $1E

    ld   l, $11                                   ; $7B9D: $2E $11
    ld   e, l                                     ; $7B9F: $5D
    ld   a, [de]                                  ; $7BA0: $1A
    sub  [hl]                                     ; $7BA1: $96
    add  b                                        ; $7BA2: $80
    sla  b                                        ; $7BA3: $CB $20
    sub  b                                        ; $7BA5: $90
    jr   nc, jr_001_7BBB                          ; $7BA6: $30 $13

    inc  l                                        ; $7BA8: $2C
    inc  e                                        ; $7BA9: $1C
    ld   a, [de]                                  ; $7BAA: $1A
    sub  [hl]                                     ; $7BAB: $96
    add  c                                        ; $7BAC: $81
    sla  c                                        ; $7BAD: $CB $21
    sub  c                                        ; $7BAF: $91
    jr   nc, jr_001_7BBB                          ; $7BB0: $30 $09

    pop  bc                                       ; $7BB2: $C1
    xor  a                                        ; $7BB3: $AF
    dec  l                                        ; $7BB4: $2D
    ld   [hl], a                                  ; $7BB5: $77
    ld   l, $00                                   ; $7BB6: $2E $00
    ld   [hl], a                                  ; $7BB8: $77
    scf                                           ; $7BB9: $37
    ret                                           ; $7BBA: $C9


jr_001_7BBB:
    pop  bc                                       ; $7BBB: $C1
    inc  h                                        ; $7BBC: $24
    ld   a, [$C7CC]                               ; $7BBD: $FA $CC $C7
    dec  a                                        ; $7BC0: $3D
    ld   [$C7CC], a                               ; $7BC1: $EA $CC $C7
    jr   nz, jr_001_7B95                          ; $7BC4: $20 $CF

    ret                                           ; $7BC6: $C9


Jump_001_7BC7:
jr_001_7BC7:
    ld   b, $25                                   ; $7BC7: $06 $25
    ld   e, $12                                   ; $7BC9: $1E $12
    ld   a, [de]                                  ; $7BCB: $1A
    cp   $58                                      ; $7BCC: $FE $58
    jr   c, jr_001_7BD1                           ; $7BCE: $38 $01

    inc  b                                        ; $7BD0: $04

jr_001_7BD1:
    ld   a, b                                     ; $7BD1: $78
    rst  RST_28                                   ; $7BD2: $EF
    ld   l, $01                                   ; $7BD3: $2E $01
    ld   a, [hl]                                  ; $7BD5: $7E
    and  $0F                                      ; $7BD6: $E6 $0F
    res  2, a                                     ; $7BD8: $CB $97
    rlca                                          ; $7BDA: $07
    rlca                                          ; $7BDB: $07
    ld   e, $00                                   ; $7BDC: $1E $00
    or   $01                                      ; $7BDE: $F6 $01
    ld   [de], a                                  ; $7BE0: $12

Jump_001_7BE1:
    ld   e, $09                                   ; $7BE1: $1E $09
    ld   a, $0F                                   ; $7BE3: $3E $0F
    ld   [de], a                                  ; $7BE5: $12
    ld   e, $0B                                   ; $7BE6: $1E $0B
    ld   a, $07                                   ; $7BE8: $3E $07
    ld   [de], a                                  ; $7BEA: $12
    xor  a                                        ; $7BEB: $AF
    ld   e, $13                                   ; $7BEC: $1E $13
    ld   [de], a                                  ; $7BEE: $12
    ld   e, $0C                                   ; $7BEF: $1E $0C
    ld   [de], a                                  ; $7BF1: $12

ClearPlacementStatusBit::
    ld   b, $CA                                   ; $7BF2: $06 $CA
    ld   e, $08                                   ; $7BF4: $1E $08
    ld   a, [de]                                  ; $7BF6: $1A
    add  $20                                      ; $7BF7: $C6 $20
    ld   c, a                                     ; $7BF9: $4F
    ld   a, [bc]                                  ; $7BFA: $0A
    res  0, a                                     ; $7BFB: $CB $87
    ld   [bc], a                                  ; $7BFD: $02
    ret                                           ; $7BFE: $C9


Call_001_7BFF:
    push hl                                       ; $7BFF: $E5
    ld   h, b                                     ; $7C00: $60
    ld   l, c                                     ; $7C01: $69
    ld   a, [$DF38]                               ; $7C02: $FA $38 $DF
    call AddAToHL                                 ; $7C05: $CD $71 $00
    ld   e, $0A                                   ; $7C08: $1E $0A
    ld   a, [de]                                  ; $7C0A: $1A
    sub  [hl]                                     ; $7C0B: $96
    ld   [de], a                                  ; $7C0C: $12
    pop  hl                                       ; $7C0D: $E1
    jr   nc, jr_001_7C13                          ; $7C0E: $30 $03

    pop  bc                                       ; $7C10: $C1
    jr   jr_001_7BC7                              ; $7C11: $18 $B4

jr_001_7C13:
    ld   b, $21                                   ; $7C13: $06 $21
    ld   e, $12                                   ; $7C15: $1E $12
    ld   a, [de]                                  ; $7C17: $1A
    cp   $58                                      ; $7C18: $FE $58
    jr   c, jr_001_7C1D                           ; $7C1A: $38 $01

    inc  b                                        ; $7C1C: $04

jr_001_7C1D:
    ld   a, b                                     ; $7C1D: $78
    rst  RST_28                                   ; $7C1E: $EF
    ret                                           ; $7C1F: $C9


Call_001_7C20:
    ld   e, $01                                   ; $7C20: $1E $01
    ld   [de], a                                  ; $7C22: $12
    and  $08                                      ; $7C23: $E6 $08
    ld   e, $00                                   ; $7C25: $1E $00
    ld   a, [de]                                  ; $7C27: $1A
    jr   nz, jr_001_7C2E                          ; $7C28: $20 $04

    or   $20                                      ; $7C2A: $F6 $20
    jr   jr_001_7C30                              ; $7C2C: $18 $02

jr_001_7C2E:
    and  $DF                                      ; $7C2E: $E6 $DF

jr_001_7C30:
    ld   [de], a                                  ; $7C30: $12
    ret                                           ; $7C31: $C9


Call_001_7C32:
    ld   e, $1A                                   ; $7C32: $1E $1A
    ld   hl, $C203                                ; $7C34: $21 $03 $C2
    jr   jr_001_7C45                              ; $7C37: $18 $0C

Call_001_7C39:
    ld   h, d                                     ; $7C39: $62
    ld   e, $03                                   ; $7C3A: $1E $03
    ld   l, $1A                                   ; $7C3C: $2E $1A
    jr   jr_001_7C45                              ; $7C3E: $18 $05

Call_001_7C40:
    ld   e, $03                                   ; $7C40: $1E $03
    ld   hl, $C203                                ; $7C42: $21 $03 $C2

Call_001_7C45:
jr_001_7C45:
    ld   a, [de]                                  ; $7C45: $1A
    sub  [hl]                                     ; $7C46: $96
    ld   [$C7C4], a                               ; $7C47: $EA $C4 $C7
    inc  l                                        ; $7C4A: $2C
    inc  e                                        ; $7C4B: $1C
    ld   a, [de]                                  ; $7C4C: $1A
    sbc  [hl]                                     ; $7C4D: $9E
    jr   z, jr_001_7C5A                           ; $7C4E: $28 $0A

    add  $01                                      ; $7C50: $C6 $01
    ret  nc                                       ; $7C52: $D0

    ld   a, [$C7C4]                               ; $7C53: $FA $C4 $C7
    add  b                                        ; $7C56: $80
    jr   c, jr_001_7C5F                           ; $7C57: $38 $06

    ret                                           ; $7C59: $C9


jr_001_7C5A:
    ld   a, [$C7C4]                               ; $7C5A: $FA $C4 $C7
    cp   b                                        ; $7C5D: $B8
    ret  nc                                       ; $7C5E: $D0

jr_001_7C5F:
    inc  l                                        ; $7C5F: $2C
    inc  l                                        ; $7C60: $2C
    inc  e                                        ; $7C61: $1C
    inc  e                                        ; $7C62: $1C
    ld   a, [de]                                  ; $7C63: $1A
    sub  [hl]                                     ; $7C64: $96
    ld   [$C7C5], a                               ; $7C65: $EA $C5 $C7
    inc  l                                        ; $7C68: $2C
    inc  e                                        ; $7C69: $1C
    ld   a, [de]                                  ; $7C6A: $1A
    sbc  [hl]                                     ; $7C6B: $9E
    jr   z, jr_001_7C76                           ; $7C6C: $28 $08

    add  $01                                      ; $7C6E: $C6 $01
    ret  nc                                       ; $7C70: $D0

    ld   a, [$C7C5]                               ; $7C71: $FA $C5 $C7
    add  c                                        ; $7C74: $81
    ret                                           ; $7C75: $C9


jr_001_7C76:
    ld   a, [$C7C5]                               ; $7C76: $FA $C5 $C7
    cp   c                                        ; $7C79: $B9
    ret                                           ; $7C7A: $C9


Call_001_7C7B:
    ld   hl, $C203                                ; $7C7B: $21 $03 $C2

Call_001_7C7E:
    ld   e, $03                                   ; $7C7E: $1E $03
    ld   c, [hl]                                  ; $7C80: $4E
    inc  l                                        ; $7C81: $2C
    ld   b, [hl]                                  ; $7C82: $46
    push hl                                       ; $7C83: $E5
    ld   a, [de]                                  ; $7C84: $1A
    ld   l, a                                     ; $7C85: $6F
    inc  e                                        ; $7C86: $1C
    ld   a, [de]                                  ; $7C87: $1A
    ld   h, a                                     ; $7C88: $67
    ld   a, l                                     ; $7C89: $7D
    sub  c                                        ; $7C8A: $91
    ld   l, a                                     ; $7C8B: $6F
    ld   a, h                                     ; $7C8C: $7C
    sbc  b                                        ; $7C8D: $98
    ld   h, a                                     ; $7C8E: $67
    rlca                                          ; $7C8F: $07
    ld   e, $00                                   ; $7C90: $1E $00
    jr   nc, jr_001_7CA0                          ; $7C92: $30 $0C

    ld   a, l                                     ; $7C94: $7D
    cpl                                           ; $7C95: $2F
    add  $01                                      ; $7C96: $C6 $01
    ld   l, a                                     ; $7C98: $6F
    ld   a, h                                     ; $7C99: $7C
    cpl                                           ; $7C9A: $2F
    adc  $00                                      ; $7C9B: $CE $00
    ld   h, a                                     ; $7C9D: $67
    ld   e, $04                                   ; $7C9E: $1E $04

jr_001_7CA0:
    pop  bc                                       ; $7CA0: $C1
    push hl                                       ; $7CA1: $E5
    push de                                       ; $7CA2: $D5
    ld   h, b                                     ; $7CA3: $60
    ld   l, c                                     ; $7CA4: $69
    inc  l                                        ; $7CA5: $2C
    inc  l                                        ; $7CA6: $2C
    ld   e, $06                                   ; $7CA7: $1E $06
    ld   c, [hl]                                  ; $7CA9: $4E
    inc  l                                        ; $7CAA: $2C
    ld   b, [hl]                                  ; $7CAB: $46
    ld   a, [de]                                  ; $7CAC: $1A
    ld   l, a                                     ; $7CAD: $6F
    inc  e                                        ; $7CAE: $1C
    ld   a, [de]                                  ; $7CAF: $1A
    ld   h, a                                     ; $7CB0: $67
    ld   a, l                                     ; $7CB1: $7D
    sub  c                                        ; $7CB2: $91
    ld   l, a                                     ; $7CB3: $6F
    ld   a, h                                     ; $7CB4: $7C
    sbc  b                                        ; $7CB5: $98
    ld   h, a                                     ; $7CB6: $67
    rlca                                          ; $7CB7: $07
    pop  de                                       ; $7CB8: $D1
    jr   nc, jr_001_7CC7                          ; $7CB9: $30 $0C

    ld   a, l                                     ; $7CBB: $7D
    cpl                                           ; $7CBC: $2F
    add  $01                                      ; $7CBD: $C6 $01
    ld   l, a                                     ; $7CBF: $6F
    ld   a, h                                     ; $7CC0: $7C
    cpl                                           ; $7CC1: $2F
    adc  $00                                      ; $7CC2: $CE $00
    ld   h, a                                     ; $7CC4: $67
    inc  e                                        ; $7CC5: $1C
    inc  e                                        ; $7CC6: $1C

jr_001_7CC7:
    pop  bc                                       ; $7CC7: $C1
    push hl                                       ; $7CC8: $E5
    ld   a, l                                     ; $7CC9: $7D
    sub  c                                        ; $7CCA: $91
    ld   l, a                                     ; $7CCB: $6F
    ld   a, h                                     ; $7CCC: $7C
    sbc  b                                        ; $7CCD: $98
    ld   h, a                                     ; $7CCE: $67
    pop  hl                                       ; $7CCF: $E1
    rlca                                          ; $7CD0: $07
    jr   nc, jr_001_7CE4                          ; $7CD1: $30 $11

    ld   a, l                                     ; $7CD3: $7D
    ld   l, c                                     ; $7CD4: $69
    ld   c, a                                     ; $7CD5: $4F
    ld   a, h                                     ; $7CD6: $7C
    ld   h, b                                     ; $7CD7: $60
    ld   b, a                                     ; $7CD8: $47
    ld   a, e                                     ; $7CD9: $7B
    or   a                                        ; $7CDA: $B7
    jr   z, jr_001_7CE1                           ; $7CDB: $28 $04

    cp   $04                                      ; $7CDD: $FE $04
    jr   nz, jr_001_7CEE                          ; $7CDF: $20 $0D

jr_001_7CE1:
    inc  e                                        ; $7CE1: $1C
    jr   jr_001_7CEE                              ; $7CE2: $18 $0A

jr_001_7CE4:
    ld   a, e                                     ; $7CE4: $7B
    cp   $02                                      ; $7CE5: $FE $02
    jr   z, jr_001_7CED                           ; $7CE7: $28 $04

    cp   $06                                      ; $7CE9: $FE $06
    jr   nz, jr_001_7CEE                          ; $7CEB: $20 $01

jr_001_7CED:
    inc  e                                        ; $7CED: $1C

jr_001_7CEE:
    sla  e                                        ; $7CEE: $CB $23
    sla  e                                        ; $7CF0: $CB $23
    srl  h                                        ; $7CF2: $CB $3C
    rr   l                                        ; $7CF4: $CB $1D
    srl  h                                        ; $7CF6: $CB $3C
    rr   l                                        ; $7CF8: $CB $1D
    push hl                                       ; $7CFA: $E5
    ld   a, l                                     ; $7CFB: $7D
    sub  c                                        ; $7CFC: $91
    ld   l, a                                     ; $7CFD: $6F
    ld   a, h                                     ; $7CFE: $7C
    sbc  b                                        ; $7CFF: $98
    ld   h, a                                     ; $7D00: $67
    pop  hl                                       ; $7D01: $E1
    rlca                                          ; $7D02: $07
    jr   nc, jr_001_7D16                          ; $7D03: $30 $11

    inc  e                                        ; $7D05: $1C
    push bc                                       ; $7D06: $C5
    push hl                                       ; $7D07: $E5
    add  hl, hl                                   ; $7D08: $29
    pop  bc                                       ; $7D09: $C1
    add  hl, bc                                   ; $7D0A: $09
    pop  bc                                       ; $7D0B: $C1
    ld   a, l                                     ; $7D0C: $7D
    sub  c                                        ; $7D0D: $91
    ld   l, a                                     ; $7D0E: $6F
    ld   a, h                                     ; $7D0F: $7C
    sbc  b                                        ; $7D10: $98

jr_001_7D11:
    ld   h, a                                     ; $7D11: $67
    rlca                                          ; $7D12: $07
    jr   nc, jr_001_7D16                          ; $7D13: $30 $01

    inc  e                                        ; $7D15: $1C

jr_001_7D16:
    ld   hl, $7D1F                                ; $7D16: $21 $1F $7D
    ld   a, e                                     ; $7D19: $7B
    call AddAToHL                                 ; $7D1A: $CD $71 $00
    ld   a, [hl]                                  ; $7D1D: $7E

jr_001_7D1E:
    ret                                           ; $7D1E: $C9


    inc  c                                        ; $7D1F: $0C
    dec  c                                        ; $7D20: $0D
    ld   c, $00                                   ; $7D21: $0E $00
    nop                                           ; $7D23: $00
    rrca                                          ; $7D24: $0F
    ld   c, $00                                   ; $7D25: $0E $00
    nop                                           ; $7D27: $00
    ld   bc, $0002                                ; $7D28: $01 $02 $00
    inc  b                                        ; $7D2B: $04
    inc  bc                                       ; $7D2C: $03
    ld   [bc], a                                  ; $7D2D: $02
    nop                                           ; $7D2E: $00
    inc  c                                        ; $7D2F: $0C
    dec  bc                                       ; $7D30: $0B
    ld   a, [bc]                                  ; $7D31: $0A
    nop                                           ; $7D32: $00
    ld   [$0A09], sp                              ; $7D33: $08 $09 $0A
    nop                                           ; $7D36: $00
    ld   [$0607], sp                              ; $7D37: $08 $07 $06
    nop                                           ; $7D3A: $00
    inc  b                                        ; $7D3B: $04
    dec  b                                        ; $7D3C: $05
    ld   b, $00                                   ; $7D3D: $06 $00

Call_001_7D3F:
Jump_001_7D3F:
    ld   a, $03                                   ; $7D3F: $3E $03
    ld   [hl], a                                  ; $7D41: $77
    push de                                       ; $7D42: $D5
    ld   d, h                                     ; $7D43: $54
    ld   a, c                                     ; $7D44: $79
    call Call_001_7C20                            ; $7D45: $CD $20 $7C
    pop  de                                       ; $7D48: $D1
    ld   e, $03                                   ; $7D49: $1E $03
    ld   l, e                                     ; $7D4B: $6B
    ld   a, [de]                                  ; $7D4C: $1A
    ld   [hl+], a                                 ; $7D4D: $22
    inc  e                                        ; $7D4E: $1C
    ld   a, [de]                                  ; $7D4F: $1A
    ld   [hl+], a                                 ; $7D50: $22
    inc  l                                        ; $7D51: $2C
    ld   e, l                                     ; $7D52: $5D
    ld   a, [de]                                  ; $7D53: $1A
    ld   [hl+], a                                 ; $7D54: $22
    inc  e                                        ; $7D55: $1C
    ld   a, [de]                                  ; $7D56: $1A
    ld   [hl+], a                                 ; $7D57: $22
    inc  l                                        ; $7D58: $2C
    ld   [hl], b                                  ; $7D59: $70
    xor  a                                        ; $7D5A: $AF
    ld   l, $0C                                   ; $7D5B: $2E $0C
    ld   [hl-], a                                 ; $7D5D: $32
    inc  a                                        ; $7D5E: $3C
    ld   [hl], a                                  ; $7D5F: $77
    ret                                           ; $7D60: $C9


Call_001_7D61:
    ld   e, $00                                   ; $7D61: $1E $00
    ld   a, [de]                                  ; $7D63: $1A
    bit  3, a                                     ; $7D64: $CB $5F
    ret  z                                        ; $7D66: $C8

    pop  bc                                       ; $7D67: $C1
    ret                                           ; $7D68: $C9


Call_001_7D69:
Jump_001_7D69:
    ld   e, $0E                                   ; $7D69: $1E $0E
    ld   [de], a                                  ; $7D6B: $12
    inc  e                                        ; $7D6C: $1C
    xor  a                                        ; $7D6D: $AF
    ld   [de], a                                  ; $7D6E: $12
    inc  e                                        ; $7D6F: $1C
    ld   [de], a                                  ; $7D70: $12
    ret                                           ; $7D71: $C9


BossDamageAmountTable::
    ld   bc, $0002                                ; $7D72: $01 $02 $00
    ld   [$0101], sp                              ; $7D75: $08 $01 $01
    ld   [bc], a                                  ; $7D78: $02
    inc  b                                        ; $7D79: $04
    adc  b                                        ; $7D7A: $88
    ld   a, l                                     ; $7D7B: $7D
    adc  b                                        ; $7D7C: $88
    ld   a, l                                     ; $7D7D: $7D
    cp   d                                        ; $7D7E: $BA
    ld   a, l                                     ; $7D7F: $7D
    db   $EC                                      ; $7D80: $EC
    ld   a, l                                     ; $7D81: $7D
    ld   e, $7E                                   ; $7D82: $1E $7E
    ld   d, b                                     ; $7D84: $50
    ld   a, [hl]                                  ; $7D85: $7E
    add  d                                        ; $7D86: $82

jr_001_7D87:
    ld   a, [hl]                                  ; $7D87: $7E
    ld   [$D618], sp                              ; $7D88: $08 $18 $D6
    ld   e, l                                     ; $7D8B: $5D
    jr   jr_001_7D1E                              ; $7D8C: $18 $90

    ld   d, b                                     ; $7D8E: $50
    jr   nz, jr_001_7D11                          ; $7D8F: $20 $80

    db   $10                                      ; $7D91: $10
    add  b                                        ; $7D92: $80
    add  b                                        ; $7D93: $80
    db   $10                                      ; $7D94: $10
    inc  de                                       ; $7D95: $13
    ld   e, b                                     ; $7D96: $58
    ld   e, b                                     ; $7D97: $58
    inc  de                                       ; $7D98: $13
    ret  z                                        ; $7D99: $C8

    db   $10                                      ; $7D9A: $10
    ld   [hl], b                                  ; $7D9B: $70
    jr   jr_001_7E0E                              ; $7D9C: $18 $70

    ld   hl, sp+$72                               ; $7D9E: $F8 $72
    nop                                           ; $7DA0: $00
    add  hl, bc                                   ; $7DA1: $09
    ld   [hl], $AF                                ; $7DA2: $36 $AF
    cp   [hl]                                     ; $7DA4: $BE
    ld   [hl], $E8                                ; $7DA5: $36 $E8
    or   c                                        ; $7DA7: $B1
    ld   a, $D8                                   ; $7DA8: $3E $D8
    ld   [hl], c                                  ; $7DAA: $71
    add  b                                        ; $7DAB: $80
    add  b                                        ; $7DAC: $80
    ld   d, $16                                   ; $7DAD: $16 $16
    ld   e, b                                     ; $7DAF: $58
    ld   e, b                                     ; $7DB0: $58
    rla                                           ; $7DB1: $17
    jr   z, jr_001_7DCA                           ; $7DB2: $28 $16

    add  b                                        ; $7DB4: $80
    jr   z, jr_001_7D87                           ; $7DB5: $28 $D0

    ld   hl, sp-$2D                               ; $7DB7: $F8 $D3
    ld   bc, $0A08                                ; $7DB9: $01 $08 $0A
    or   e                                        ; $7DBC: $B3
    sub  $09                                      ; $7DBD: $D6 $09
    db   $F4                                      ; $7DBF: $F4
    reti                                          ; $7DC0: $D9


    ld   de, $99E4                                ; $7DC1: $11 $E4 $99
    add  b                                        ; $7DC4: $80
    add  b                                        ; $7DC5: $80
    ld   de, $5811                                ; $7DC6: $11 $11 $58
    ld   e, b                                     ; $7DC9: $58

jr_001_7DCA:
    ld   [de], a                                  ; $7DCA: $12
    ld   c, b                                     ; $7DCB: $48
    ld   [de], a                                  ; $7DCC: $12
    db   $10                                      ; $7DCD: $10
    cp   b                                        ; $7DCE: $B8
    ldh  a, [$FF08]                               ; $7DCF: $F0 $08
    db   $FC                                      ; $7DD1: $FC
    rla                                           ; $7DD2: $17
    add  hl, bc                                   ; $7DD3: $09
    ld   d, $BD                                   ; $7DD4: $16 $BD
    ld   a, [$FE15]                               ; $7DD6: $FA $15 $FE
    db   $FD                                      ; $7DD9: $FD
    dec  e                                        ; $7DDA: $1D
    xor  $BD                                      ; $7DDB: $EE $BD
    add  b                                        ; $7DDD: $80
    add  b                                        ; $7DDE: $80
    dec  d                                        ; $7DDF: $15
    inc  de                                       ; $7DE0: $13
    ld   e, b                                     ; $7DE1: $58
    ld   e, b                                     ; $7DE2: $58
    inc  de                                       ; $7DE3: $13
    ld   l, b                                     ; $7DE4: $68
    ld   d, $40                                   ; $7DE5: $16 $40
    add  sp, $10                                  ; $7DE7: $E8 $10
    ld   hl, sp+$1F                               ; $7DE9: $F8 $1F
    ld   [bc], a                                  ; $7DEB: $02
    ld   [$FF00], sp                              ; $7DEC: $08 $00 $FF
    rst  RST_38                                   ; $7DEF: $FF
    nop                                           ; $7DF0: $00
    cp   c                                        ; $7DF1: $B9
    ldh  a, [c]                                   ; $7DF2: $F2
    ld   [$B2A9], sp                              ; $7DF3: $08 $A9 $B2
    add  b                                        ; $7DF6: $80
    add  b                                        ; $7DF7: $80
    db   $10                                      ; $7DF8: $10
    ld   de, $5858                                ; $7DF9: $11 $58 $58
    ld   de, $1068                                ; $7DFC: $11 $68 $10
    and  b                                        ; $7DFF: $A0
    ld   c, b                                     ; $7E00: $48
    db   $10                                      ; $7E01: $10
    ld   [$1715], sp                              ; $7E02: $08 $15 $17
    add  hl, bc                                   ; $7E05: $09
    cpl                                           ; $7E06: $2F
    sbc  e                                        ; $7E07: $9B
    halt                                          ; $7E08: $76
    ld   l, $DC                                   ; $7E09: $2E $DC
    ld   a, c                                     ; $7E0B: $79
    ld   [hl], $CC                                ; $7E0C: $36 $CC

jr_001_7E0E:
    add  hl, sp                                   ; $7E0E: $39
    add  b                                        ; $7E0F: $80
    add  b                                        ; $7E10: $80
    ld   d, $15                                   ; $7E11: $16 $15
    ld   e, b                                     ; $7E13: $58
    ld   e, b                                     ; $7E14: $58
    dec  d                                        ; $7E15: $15
    add  sp, $17                                  ; $7E16: $E8 $17
    db   $10                                      ; $7E18: $10
    cp   b                                        ; $7E19: $B8
    sub  b                                        ; $7E1A: $90
    ld   [$039C], sp                              ; $7E1B: $08 $9C $03
    ld   [$F402], sp                              ; $7E1E: $08 $02 $F4
    reti                                          ; $7E21: $D9


    ld   bc, $DCB6                                ; $7E22: $01 $B6 $DC
    add  hl, bc                                   ; $7E25: $09

jr_001_7E26:
    and  [hl]                                     ; $7E26: $A6
    sbc  h                                        ; $7E27: $9C
    add  b                                        ; $7E28: $80
    add  b                                        ; $7E29: $80
    ld   de, $5810                                ; $7E2A: $11 $10 $58
    ld   e, b                                     ; $7E2D: $58
    ld   de, $1248                                ; $7E2E: $11 $48 $12
    ld   b, b                                     ; $7E31: $40
    add  sp, -$10                                 ; $7E32: $E8 $F0
    ld   [$29FF], sp                              ; $7E34: $08 $FF $29
    add  hl, bc                                   ; $7E37: $09
    ld   c, $1D                                   ; $7E38: $0E $1D
    ld   l, d                                     ; $7E3A: $6A
    dec  c                                        ; $7E3B: $0D
    ld   e, [hl]                                  ; $7E3C: $5E
    ld   l, l                                     ; $7E3D: $6D
    dec  d                                        ; $7E3E: $15
    ld   c, [hl]                                  ; $7E3F: $4E
    dec  l                                        ; $7E40: $2D
    add  b                                        ; $7E41: $80
    add  b                                        ; $7E42: $80
    dec  d                                        ; $7E43: $15
    ld   de, $5858                                ; $7E44: $11 $58 $58
    ld   de, $16D8                                ; $7E47: $11 $D8 $16
    ld   d, b                                     ; $7E4A: $50
    ld   hl, sp-$80                               ; $7E4B: $F8 $80
    ld   [$0480], sp                              ; $7E4D: $08 $80 $04
    ld   [$920B], sp                              ; $7E50: $08 $0B $92
    ld   d, h                                     ; $7E53: $54
    ld   a, [bc]                                  ; $7E54: $0A
    db   $D3                                      ; $7E55: $D3
    ld   d, a                                     ; $7E56: $57
    ld   [de], a                                  ; $7E57: $12
    jp   $8017                                    ; $7E58: $C3 $17 $80


    add  b                                        ; $7E5B: $80
    ld   [de], a                                  ; $7E5C: $12
    ld   de, $5858                                ; $7E5D: $11 $58 $58
    ld   de, $12C8                                ; $7E60: $11 $C8 $12
    ldh  a, [$FF98]                               ; $7E63: $F0 $98
    ld   [hl], b                                  ; $7E65: $70
    ld   [$297A], sp                              ; $7E66: $08 $7A $29
    add  hl, bc                                   ; $7E69: $09
    daa                                           ; $7E6A: $27
    jp   nc, Jump_000_2655                        ; $7E6B: $D2 $55 $26

    sub  h                                        ; $7E6E: $94
    ld   e, b                                     ; $7E6F: $58
    ld   l, $84                                   ; $7E70: $2E $84
    jr   @-$7E                                    ; $7E72: $18 $80

    add  b                                        ; $7E74: $80
    ld   d, $14                                   ; $7E75: $16 $14
    ld   e, b                                     ; $7E77: $58
    ld   e, b                                     ; $7E78: $58
    inc  d                                        ; $7E79: $14
    ret  z                                        ; $7E7A: $C8

    rla                                           ; $7E7B: $17
    nop                                           ; $7E7C: $00
    xor  b                                        ; $7E7D: $A8
    ld   [hl], b                                  ; $7E7E: $70
    ld   [$057B], sp                              ; $7E7F: $08 $7B $05
    ld   [$771B], sp                              ; $7E82: $08 $1B $77
    rst  RST_08                                   ; $7E85: $CF
    dec  de                                       ; $7E86: $1B
    ld   sp, $23C2                                ; $7E87: $31 $C2 $23
    ld   hl, $8082                                ; $7E8A: $21 $82 $80
    add  b                                        ; $7E8D: $80
    inc  de                                       ; $7E8E: $13
    inc  de                                       ; $7E8F: $13
    ld   e, b                                     ; $7E90: $58
    ld   e, b                                     ; $7E91: $58
    inc  d                                        ; $7E92: $14
    jr   c, jr_001_7EA8                           ; $7E93: $38 $13

    and  b                                        ; $7E95: $A0
    ld   c, b                                     ; $7E96: $48
    ldh  [$FF08], a                               ; $7E97: $E0 $08
    push hl                                       ; $7E99: $E5
    inc  e                                        ; $7E9A: $1C
    add  hl, bc                                   ; $7E9B: $09
    ld   b, $D2                                   ; $7E9C: $06 $D2
    ld   d, l                                     ; $7E9E: $55
    dec  b                                        ; $7E9F: $05
    sub  h                                        ; $7EA0: $94
    ld   e, b                                     ; $7EA1: $58
    dec  c                                        ; $7EA2: $0D
    add  h                                        ; $7EA3: $84
    jr   jr_001_7E26                              ; $7EA4: $18 $80

    add  b                                        ; $7EA6: $80
    dec  d                                        ; $7EA7: $15

jr_001_7EA8:
    db   $10                                      ; $7EA8: $10
    ld   e, b                                     ; $7EA9: $58
    ld   e, b                                     ; $7EAA: $58
    db   $10                                      ; $7EAB: $10
    ret  z                                        ; $7EAC: $C8

    dec  d                                        ; $7EAD: $15
    ldh  a, [$FF98]                               ; $7EAE: $F0 $98
    ld   [hl], b                                  ; $7EB0: $70
    ld   hl, sp+$7A                               ; $7EB1: $F8 $7A
    db   $06                                      ; $7EB3: $06

    ; padding
    ds $14C, $00
