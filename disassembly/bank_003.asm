; Disassembly of "gargoyles_quest.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

AudioTick::
    jp   Jump_003_4030                            ; $4000: $C3 $30 $40


AudioCommand::
    jp   Jump_003_4110                            ; $4003: $C3 $10 $41


Call_003_4006:
    ld   l, $00                                   ; $4006: $2E $00
    ld   b, $00                                   ; $4008: $06 $00
    ld   a, $08                                   ; $400A: $3E $08

jr_003_400C:
    add  hl, hl                                   ; $400C: $29
    jr   nc, jr_003_4010                          ; $400D: $30 $01

    add  hl, bc                                   ; $400F: $09

jr_003_4010:
    dec  a                                        ; $4010: $3D
    jr   nz, jr_003_400C                          ; $4011: $20 $F9

    ret                                           ; $4013: $C9


Call_003_4014:
    pop  hl                                       ; $4014: $E1
    call Call_003_4019                            ; $4015: $CD $19 $40
    jp   hl                                       ; $4018: $E9


Call_003_4019:
    add  a                                        ; $4019: $87

Call_003_401A:
    push bc                                       ; $401A: $C5
    ld   b, $00                                   ; $401B: $06 $00
    ld   c, a                                     ; $401D: $4F
    add  hl, bc                                   ; $401E: $09
    ld   a, [hl+]                                 ; $401F: $2A
    ld   h, [hl]                                  ; $4020: $66
    ld   l, a                                     ; $4021: $6F
    pop  bc                                       ; $4022: $C1
    ret                                           ; $4023: $C9


Call_003_4024:
    ld   hl, $DE92                                ; $4024: $21 $92 $DE
    add  [hl]                                     ; $4027: $86
    inc  hl                                       ; $4028: $23
    ld   h, [hl]                                  ; $4029: $66
    jr   nc, jr_003_402D                          ; $402A: $30 $01

    inc  h                                        ; $402C: $24

jr_003_402D:
    ld   l, a                                     ; $402D: $6F
    ld   a, [hl]                                  ; $402E: $7E
    ret                                           ; $402F: $C9


Jump_003_4030:
    ld   a, [$DE90]                               ; $4030: $FA $90 $DE
    rrca                                          ; $4033: $0F
    ret  c                                        ; $4034: $D8

    ld   hl, $DEA2                                ; $4035: $21 $A2 $DE
    ld   a, [hl+]                                 ; $4038: $2A
    or   [hl]                                     ; $4039: $B6
    call nz, AdvanceSoundSequenceTick             ; $403A: $C4 $C5 $42
    ld   hl, $DE96                                ; $403D: $21 $96 $DE
    ld   a, [$DE98]                               ; $4040: $FA $98 $DE
    add  [hl]                                     ; $4043: $86
    ld   [hl+], a                                 ; $4044: $22
    ld   a, [$DE99]                               ; $4045: $FA $99 $DE
    adc  $00                                      ; $4048: $CE $00
    ld   [hl], a                                  ; $404A: $77
    ldh  a, [rNR51]                               ; $404B: $F0 $25
    ld   [$DE94], a                               ; $404D: $EA $94 $DE
    ld   de, $DE00                                ; $4050: $11 $00 $DE
    ld   a, $30                                   ; $4053: $3E $30
    ld   [$DE95], a                               ; $4055: $EA $95 $DE
    xor  a                                        ; $4058: $AF

jr_003_4059:
    ld   [$DE91], a                               ; $4059: $EA $91 $DE
    ld   hl, $DE90                                ; $405C: $21 $90 $DE
    set  2, [hl]                                  ; $405F: $CB $D6
    ld   hl, $DEA0                                ; $4061: $21 $A0 $DE
    rrc  [hl]                                     ; $4064: $CB $0E
    call c, Call_003_4369                         ; $4066: $DC $69 $43
    ld   hl, $DE90                                ; $4069: $21 $90 $DE
    res  2, [hl]                                  ; $406C: $CB $96
    bit  1, [hl]                                  ; $406E: $CB $4E
    jr   nz, jr_003_4083                          ; $4070: $20 $11

    push de                                       ; $4072: $D5
    ld   hl, $DE00                                ; $4073: $21 $00 $DE
    ld   a, [$DE95]                               ; $4076: $FA $95 $DE
    ld   d, $00                                   ; $4079: $16 $00
    ld   e, a                                     ; $407B: $5F
    add  hl, de                                   ; $407C: $19
    ld   d, h                                     ; $407D: $54
    ld   e, l                                     ; $407E: $5D
    call Call_003_4431                            ; $407F: $CD $31 $44
    pop  de                                       ; $4082: $D1

jr_003_4083:
    ld   hl, $000C                                ; $4083: $21 $0C $00
    add  hl, de                                   ; $4086: $19
    ld   d, h                                     ; $4087: $54
    ld   e, l                                     ; $4088: $5D
    ld   hl, $DE95                                ; $4089: $21 $95 $DE
    ld   a, $18                                   ; $408C: $3E $18
    add  [hl]                                     ; $408E: $86
    ld   [hl], a                                  ; $408F: $77
    ld   hl, $DE9A                                ; $4090: $21 $9A $DE
    rrc  [hl]                                     ; $4093: $CB $0E
    ld   hl, $DE94                                ; $4095: $21 $94 $DE
    rrc  [hl]                                     ; $4098: $CB $0E
    ld   a, [$DE91]                               ; $409A: $FA $91 $DE
    add  $05                                      ; $409D: $C6 $05
    cp   $14                                      ; $409F: $FE $14
    jr   nz, jr_003_4059                          ; $40A1: $20 $B6

    ld   hl, $DE9A                                ; $40A3: $21 $9A $DE
    swap [hl]                                     ; $40A6: $CB $36
    ld   hl, $DE94                                ; $40A8: $21 $94 $DE
    swap [hl]                                     ; $40AB: $CB $36
    ld   e, [hl]                                  ; $40AD: $5E
    ld   hl, $DE90                                ; $40AE: $21 $90 $DE
    res  0, [hl]                                  ; $40B1: $CB $86
    ld   a, [$DEA0]                               ; $40B3: $FA $A0 $DE
    swap a                                        ; $40B6: $CB $37
    ld   [$DEA0], a                               ; $40B8: $EA $A0 $DE
    jr   nz, jr_003_4104                          ; $40BB: $20 $47

    bit  1, [hl]                                  ; $40BD: $CB $4E
    ret  nz                                       ; $40BF: $C0

    ld   hl, $DE9D                                ; $40C0: $21 $9D $DE
    ld   a, [hl+]                                 ; $40C3: $2A
    ld   d, a                                     ; $40C4: $57
    and  $7F                                      ; $40C5: $E6 $7F
    jr   nz, jr_003_40D0                          ; $40C7: $20 $07

    bit  7, d                                     ; $40C9: $CB $7A
    jr   z, jr_003_4104                           ; $40CB: $28 $37

    ldh  [rNR51], a                               ; $40CD: $E0 $25
    ret                                           ; $40CF: $C9


jr_003_40D0:
    push af                                       ; $40D0: $F5
    ld   a, [hl+]                                 ; $40D1: $2A
    ld   b, a                                     ; $40D2: $47
    ld   c, [hl]                                  ; $40D3: $4E
    pop  af                                       ; $40D4: $F1
    ld   h, $00                                   ; $40D5: $26 $00
    ld   l, a                                     ; $40D7: $6F
    add  hl, hl                                   ; $40D8: $29
    add  hl, hl                                   ; $40D9: $29
    add  hl, bc                                   ; $40DA: $09
    ld   a, l                                     ; $40DB: $7D
    ld   [$DE9F], a                               ; $40DC: $EA $9F $DE
    ld   a, h                                     ; $40DF: $7C
    jr   nc, jr_003_40F2                          ; $40E0: $30 $10

    ld   a, [$DE9D]                               ; $40E2: $FA $9D $DE
    and  $80                                      ; $40E5: $E6 $80
    ld   [$DE9D], a                               ; $40E7: $EA $9D $DE
    bit  7, d                                     ; $40EA: $CB $7A
    jr   z, jr_003_40F0                           ; $40EC: $28 $02

    ld   e, $00                                   ; $40EE: $1E $00

jr_003_40F0:
    ld   a, $FF                                   ; $40F0: $3E $FF

jr_003_40F2:
    ld   [$DE9E], a                               ; $40F2: $EA $9E $DE
    bit  7, d                                     ; $40F5: $CB $7A
    jr   z, jr_003_40FA                           ; $40F7: $28 $01

    cpl                                           ; $40F9: $2F

jr_003_40FA:
    srl  a                                        ; $40FA: $CB $3F
    and  $70                                      ; $40FC: $E6 $70
    ld   b, a                                     ; $40FE: $47
    swap a                                        ; $40FF: $CB $37
    or   b                                        ; $4101: $B0
    ldh  [rNR50], a                               ; $4102: $E0 $24

jr_003_4104:
    ld   a, e                                     ; $4104: $7B
    ldh  [rNR51], a                               ; $4105: $E0 $25
    ret                                           ; $4107: $C9


Call_003_4108:
Jump_003_4108:
    ld   a, [$DE91]                               ; $4108: $FA $91 $DE
    add  c                                        ; $410B: $81
    ld   c, a                                     ; $410C: $4F
    ld   a, b                                     ; $410D: $78
    ldh  [c], a                                   ; $410E: $E2
    ret                                           ; $410F: $C9


Jump_003_4110:
    ld   hl, $DE90                                ; $4110: $21 $90 $DE
    inc  [hl]                                     ; $4113: $34
    call DispatchSoundCommand                     ; $4114: $CD $1C $41
    ld   hl, $DE90                                ; $4117: $21 $90 $DE
    dec  [hl]                                     ; $411A: $35
    ret                                           ; $411B: $C9


DispatchSoundCommand::
    cp   $F0                                      ; $411C: $FE $F0
    jp   nc, Jump_003_41A5                        ; $411E: $D2 $A5 $41

    ld   hl, SoundCommandCount                    ; $4121: $21 $00 $4B

jr_003_4124:
    cp   [hl]                                     ; $4124: $BE
    jr   c, jr_003_412A                           ; $4125: $38 $03

    sub  [hl]                                     ; $4127: $96
    jr   jr_003_4124                              ; $4128: $18 $FA

Call_003_412A:
jr_003_412A:
    ld   d, a                                     ; $412A: $57
    ld   hl, SoundSequencePointerTable            ; $412B: $21 $05 $4B
    call Call_003_4019                            ; $412E: $CD $19 $40
    ld   a, h                                     ; $4131: $7C
    ld   h, l                                     ; $4132: $65
    ld   l, a                                     ; $4133: $6F
    or   h                                        ; $4134: $B4
    ret  z                                        ; $4135: $C8

    ld   a, [hl]                                  ; $4136: $7E
    or   a                                        ; $4137: $B7
    jr   z, jr_003_4171                           ; $4138: $28 $37

    inc  hl                                       ; $413A: $23
    ld   b, h                                     ; $413B: $44
    ld   c, l                                     ; $413C: $4D
    ld   e, a                                     ; $413D: $5F
    and  $7F                                      ; $413E: $E6 $7F
    ld   hl, $DEA1                                ; $4140: $21 $A1 $DE
    cp   [hl]                                     ; $4143: $BE
    ret  c                                        ; $4144: $D8

    ld   [hl], a                                  ; $4145: $77
    jr   nz, jr_003_4153                          ; $4146: $20 $0B

    ld   hl, $DEA4                                ; $4148: $21 $A4 $DE
    bit  7, [hl]                                  ; $414B: $CB $7E
    jr   z, jr_003_4153                           ; $414D: $28 $04

    xor  a                                        ; $414F: $AF
    ld   [$DEA5], a                               ; $4150: $EA $A5 $DE

jr_003_4153:
    ld   a, e                                     ; $4153: $7B
    ld   [$DEA4], a                               ; $4154: $EA $A4 $DE
    rlca                                          ; $4157: $07
    jr   nc, jr_003_415F                          ; $4158: $30 $05

    ld   a, d                                     ; $415A: $7A
    inc  a                                        ; $415B: $3C
    ld   [$DEA5], a                               ; $415C: $EA $A5 $DE

jr_003_415F:
    ld   a, c                                     ; $415F: $79
    ld   [$DEA2], a                               ; $4160: $EA $A2 $DE
    ld   a, b                                     ; $4163: $78
    ld   [$DEA3], a                               ; $4164: $EA $A3 $DE
    ld   b, $07                                   ; $4167: $06 $07
    ld   hl, $DEA6                                ; $4169: $21 $A6 $DE
    call Call_003_41D7                            ; $416C: $CD $D7 $41
    jr   jr_003_41A0                              ; $416F: $18 $2F

jr_003_4171:
    push hl                                       ; $4171: $E5
    call Call_003_41E6                            ; $4172: $CD $E6 $41
    ld   hl, $DE98                                ; $4175: $21 $98 $DE
    ld   [hl], $99                                ; $4178: $36 $99
    inc  hl                                       ; $417A: $23
    ld   [hl], $01                                ; $417B: $36 $01
    pop  hl                                       ; $417D: $E1
    ld   de, $DE30                                ; $417E: $11 $30 $DE
    ld   a, $04                                   ; $4181: $3E $04

jr_003_4183:
    push af                                       ; $4183: $F5
    inc  hl                                       ; $4184: $23
    ld   b, [hl]                                  ; $4185: $46
    inc  hl                                       ; $4186: $23
    ld   c, [hl]                                  ; $4187: $4E
    push hl                                       ; $4188: $E5
    ld   a, [bc]                                  ; $4189: $0A
    cp   $17                                      ; $418A: $FE $17
    jr   z, jr_003_4195                           ; $418C: $28 $07

    ld   hl, $000D                                ; $418E: $21 $0D $00
    add  hl, de                                   ; $4191: $19
    ld   [hl], b                                  ; $4192: $70
    dec  hl                                       ; $4193: $2B
    ld   [hl], c                                  ; $4194: $71

jr_003_4195:
    ld   hl, $0018                                ; $4195: $21 $18 $00
    add  hl, de                                   ; $4198: $19
    ld   d, h                                     ; $4199: $54
    ld   e, l                                     ; $419A: $5D
    pop  hl                                       ; $419B: $E1
    pop  af                                       ; $419C: $F1
    dec  a                                        ; $419D: $3D
    jr   nz, jr_003_4183                          ; $419E: $20 $E3

jr_003_41A0:
    ld   a, $77                                   ; $41A0: $3E $77
    ldh  [rNR50], a                               ; $41A2: $E0 $24
    ret                                           ; $41A4: $C9


Jump_003_41A5:
    and  $07                                      ; $41A5: $E6 $07
    call Call_003_4014                            ; $41A7: $CD $14 $40
    cp   d                                        ; $41AA: $BA
    ld   b, c                                     ; $41AB: $41
    cp   l                                        ; $41AC: $BD
    ld   b, c                                     ; $41AD: $41
    and  $41                                      ; $41AE: $E6 $41
    dec  bc                                       ; $41B0: $0B
    ld   b, d                                     ; $41B1: $42
    ld   [de], a                                  ; $41B2: $12
    ld   b, d                                     ; $41B3: $42
    or   a                                        ; $41B4: $B7
    ld   b, d                                     ; $41B5: $42
    or   l                                        ; $41B6: $B5
    ld   b, d                                     ; $41B7: $42
    add  [hl]                                     ; $41B8: $86
    ld   b, d                                     ; $41B9: $42
    call Call_003_41E6                            ; $41BA: $CD $E6 $41

Jump_003_41BD:
    ld   b, $0C                                   ; $41BD: $06 $0C
    ld   hl, $DEA1                                ; $41BF: $21 $A1 $DE
    call Call_003_41D7                            ; $41C2: $CD $D7 $41
    ld   a, [$DEA0]                               ; $41C5: $FA $A0 $DE
    or   a                                        ; $41C8: $B7
    ret  z                                        ; $41C9: $C8

Call_003_41CA:
    xor  $0F                                      ; $41CA: $EE $0F
    ld   [$DEA0], a                               ; $41CC: $EA $A0 $DE
    call Call_003_4217                            ; $41CF: $CD $17 $42
    xor  a                                        ; $41D2: $AF
    ld   [$DEA0], a                               ; $41D3: $EA $A0 $DE
    ret                                           ; $41D6: $C9


Call_003_41D7:
    xor  a                                        ; $41D7: $AF

jr_003_41D8:
    ld   [hl+], a                                 ; $41D8: $22
    dec  b                                        ; $41D9: $05
    jr   nz, jr_003_41D8                          ; $41DA: $20 $FC

    ld   b, $30                                   ; $41DC: $06 $30
    ld   hl, $DE00                                ; $41DE: $21 $00 $DE

jr_003_41E1:
    ld   [hl+], a                                 ; $41E1: $22
    dec  b                                        ; $41E2: $05
    jr   nz, jr_003_41E1                          ; $41E3: $20 $FC

    ret                                           ; $41E5: $C9


Call_003_41E6:
    ld   a, $FF                                   ; $41E6: $3E $FF
    ld   [$DE9A], a                               ; $41E8: $EA $9A $DE
    xor  a                                        ; $41EB: $AF
    ld   hl, $DE98                                ; $41EC: $21 $98 $DE
    ld   [hl+], a                                 ; $41EF: $22
    ld   [hl], a                                  ; $41F0: $77
    ld   [$DE96], a                               ; $41F1: $EA $96 $DE
    ld   [$DE9B], a                               ; $41F4: $EA $9B $DE
    ld   [$DE9C], a                               ; $41F7: $EA $9C $DE
    ld   hl, $DE9D                                ; $41FA: $21 $9D $DE
    ld   [hl+], a                                 ; $41FD: $22
    ld   [hl+], a                                 ; $41FE: $22
    ld   [hl], a                                  ; $41FF: $77
    ld   b, $60                                   ; $4200: $06 $60
    ld   hl, $DE30                                ; $4202: $21 $30 $DE

jr_003_4205:
    ld   [hl+], a                                 ; $4205: $22
    dec  b                                        ; $4206: $05
    jr   nz, jr_003_4205                          ; $4207: $20 $FC

    jr   jr_003_4217                              ; $4209: $18 $0C

    ld   hl, $DE90                                ; $420B: $21 $90 $DE
    set  1, [hl]                                  ; $420E: $CB $CE
    jr   jr_003_4217                              ; $4210: $18 $05

    ld   hl, $DE90                                ; $4212: $21 $90 $DE
    res  1, [hl]                                  ; $4215: $CB $8E

Call_003_4217:
jr_003_4217:
    ld   hl, $DE90                                ; $4217: $21 $90 $DE
    bit  3, [hl]                                  ; $421A: $CB $5E
    jr   nz, jr_003_4231                          ; $421C: $20 $13

    set  3, [hl]                                  ; $421E: $CB $DE
    ld   a, $80                                   ; $4220: $3E $80
    ldh  [rNR52], a                               ; $4222: $E0 $26
    ld   a, $08                                   ; $4224: $3E $08
    ldh  [rNR10], a                               ; $4226: $E0 $10
    xor  a                                        ; $4228: $AF
    ldh  [rNR30], a                               ; $4229: $E0 $1A
    ld   a, $80                                   ; $422B: $3E $80
    ldh  [rNR30], a                               ; $422D: $E0 $1A
    ldh  [rNR34], a                               ; $422F: $E0 $1E

jr_003_4231:
    ld   de, $DE30                                ; $4231: $11 $30 $DE
    ldh  a, [rNR51]                               ; $4234: $F0 $25
    ld   [$DE94], a                               ; $4236: $EA $94 $DE
    xor  a                                        ; $4239: $AF

jr_003_423A:
    ld   [$DE91], a                               ; $423A: $EA $91 $DE
    ld   b, a                                     ; $423D: $47
    ld   hl, $DEA0                                ; $423E: $21 $A0 $DE
    rrc  [hl]                                     ; $4241: $CB $0E
    jr   c, jr_003_425E                           ; $4243: $38 $19

    cp   $0A                                      ; $4245: $FE $0A
    jr   nc, jr_003_4252                          ; $4247: $30 $09

    add  $11                                      ; $4249: $C6 $11
    ld   c, a                                     ; $424B: $4F
    ld   hl, $000B                                ; $424C: $21 $0B $00
    add  hl, de                                   ; $424F: $19
    ld   a, [hl]                                  ; $4250: $7E
    ldh  [c], a                                   ; $4251: $E2

jr_003_4252:
    ld   a, [$DE94]                               ; $4252: $FA $94 $DE
    and  $EE                                      ; $4255: $E6 $EE
    ld   [$DE94], a                               ; $4257: $EA $94 $DE
    ld   c, a                                     ; $425A: $4F
    call Call_003_4287                            ; $425B: $CD $87 $42

jr_003_425E:
    ld   hl, $0018                                ; $425E: $21 $18 $00
    add  hl, de                                   ; $4261: $19
    ld   d, h                                     ; $4262: $54
    ld   e, l                                     ; $4263: $5D
    ld   hl, $DE9A                                ; $4264: $21 $9A $DE
    rrc  [hl]                                     ; $4267: $CB $0E
    ld   hl, $DE94                                ; $4269: $21 $94 $DE
    rrc  [hl]                                     ; $426C: $CB $0E
    ld   a, [$DE91]                               ; $426E: $FA $91 $DE
    add  $05                                      ; $4271: $C6 $05
    cp   $14                                      ; $4273: $FE $14
    jr   nz, jr_003_423A                          ; $4275: $20 $C3

    swap [hl]                                     ; $4277: $CB $36
    ld   a, [hl]                                  ; $4279: $7E
    ldh  [rNR51], a                               ; $427A: $E0 $25
    ld   hl, $DE9A                                ; $427C: $21 $9A $DE
    swap [hl]                                     ; $427F: $CB $36
    ld   hl, $DEA0                                ; $4281: $21 $A0 $DE
    swap [hl]                                     ; $4284: $CB $36
    ret                                           ; $4286: $C9


Call_003_4287:
    ld   hl, $DE90                                ; $4287: $21 $90 $DE
    bit  1, [hl]                                  ; $428A: $CB $4E
    ret  nz                                       ; $428C: $C0

    ld   a, [$DE9D]                               ; $428D: $FA $9D $DE
    cp   $80                                      ; $4290: $FE $80
    ret  z                                        ; $4292: $C8

    ld   hl, $0017                                ; $4293: $21 $17 $00
    add  hl, de                                   ; $4296: $19
    ld   a, [hl]                                  ; $4297: $7E
    or   a                                        ; $4298: $B7
    ret  z                                        ; $4299: $C8

    ld   a, [$DE9A]                               ; $429A: $FA $9A $DE
    and  $11                                      ; $429D: $E6 $11
    or   c                                        ; $429F: $B1
    ld   [$DE94], a                               ; $42A0: $EA $94 $DE
    ld   a, b                                     ; $42A3: $78
    cp   $0A                                      ; $42A4: $FE $0A
    ld   a, [hl]                                  ; $42A6: $7E
    jp   nz, Jump_003_4706                        ; $42A7: $C2 $06 $47

    call Call_003_46B7                            ; $42AA: $CD $B7 $46
    ld   a, [$DE9C]                               ; $42AD: $FA $9C $DE
    or   a                                        ; $42B0: $B7
    jp   nz, Jump_003_4825                        ; $42B1: $C2 $25 $48

    ret                                           ; $42B4: $C9


    set  7, b                                     ; $42B5: $CB $F8
    ld   hl, $DE9D                                ; $42B7: $21 $9D $DE
    ld   a, b                                     ; $42BA: $78
    and  $7F                                      ; $42BB: $E6 $7F
    jr   z, jr_003_42C0                           ; $42BD: $28 $01

    ld   a, b                                     ; $42BF: $78

jr_003_42C0:
    ld   [hl+], a                                 ; $42C0: $22
    xor  a                                        ; $42C1: $AF
    ld   [hl+], a                                 ; $42C2: $22
    ld   [hl], a                                  ; $42C3: $77
    ret                                           ; $42C4: $C9


AdvanceSoundSequenceTick::
    ld   a, [$DEA7]                               ; $42C5: $FA $A7 $DE
    or   a                                        ; $42C8: $B7
    jr   z, jr_003_42D4                           ; $42C9: $28 $09

    dec  a                                        ; $42CB: $3D
    ld   [$DEA7], a                               ; $42CC: $EA $A7 $DE
    ld   hl, $DEAA                                ; $42CF: $21 $AA $DE
    dec  [hl]                                     ; $42D2: $35
    ret                                           ; $42D3: $C9


jr_003_42D4:
    call Call_003_441F                            ; $42D4: $CD $1F $44
    or   a                                        ; $42D7: $B7
    jr   nz, jr_003_42EA                          ; $42D8: $20 $10

    ld   [$DEA1], a                               ; $42DA: $EA $A1 $DE
    ld   a, [$DEA5]                               ; $42DD: $FA $A5 $DE
    or   a                                        ; $42E0: $B7
    jp   z, Jump_003_41BD                         ; $42E1: $CA $BD $41

    dec  a                                        ; $42E4: $3D
    call Call_003_412A                            ; $42E5: $CD $2A $41
    jr   jr_003_42D4                              ; $42E8: $18 $EA

jr_003_42EA:
    push af                                       ; $42EA: $F5
    call Call_003_441F                            ; $42EB: $CD $1F $44
    ld   e, a                                     ; $42EE: $5F
    srl  e                                        ; $42EF: $CB $3B
    jr   nc, jr_003_431D                          ; $42F1: $30 $2A

    call Call_003_441F                            ; $42F3: $CD $1F $44
    or   a                                        ; $42F6: $B7
    jr   z, jr_003_4300                           ; $42F7: $28 $07

    ld   hl, $DEAC                                ; $42F9: $21 $AC $DE
    cp   [hl]                                     ; $42FC: $BE
    jr   z, jr_003_4311                           ; $42FD: $28 $12

    inc  [hl]                                     ; $42FF: $34

jr_003_4300:
    call Call_003_441F                            ; $4300: $CD $1F $44
    push af                                       ; $4303: $F5
    call Call_003_441F                            ; $4304: $CD $1F $44
    ld   [$DEA2], a                               ; $4307: $EA $A2 $DE
    pop  af                                       ; $430A: $F1
    ld   [$DEA3], a                               ; $430B: $EA $A3 $DE
    pop  af                                       ; $430E: $F1
    jr   jr_003_42D4                              ; $430F: $18 $C3

jr_003_4311:
    ld   [hl], $00                                ; $4311: $36 $00
    ld   hl, $DEA2                                ; $4313: $21 $A2 $DE
    ld   a, [hl]                                  ; $4316: $7E
    add  $02                                      ; $4317: $C6 $02
    ld   [hl+], a                                 ; $4319: $22
    jr   nc, jr_003_431D                          ; $431A: $30 $01

    inc  [hl]                                     ; $431C: $34

jr_003_431D:
    srl  e                                        ; $431D: $CB $3B
    jr   nc, jr_003_4327                          ; $431F: $30 $06

    call Call_003_441F                            ; $4321: $CD $1F $44
    ld   [$DEA8], a                               ; $4324: $EA $A8 $DE

jr_003_4327:
    srl  e                                        ; $4327: $CB $3B
    jr   nc, jr_003_4331                          ; $4329: $30 $06

    call Call_003_441F                            ; $432B: $CD $1F $44
    ld   [$DEA6], a                               ; $432E: $EA $A6 $DE

jr_003_4331:
    call Call_003_441F                            ; $4331: $CD $1F $44
    ld   [$DEA7], a                               ; $4334: $EA $A7 $DE
    ld   h, a                                     ; $4337: $67
    ld   a, [$DEA8]                               ; $4338: $FA $A8 $DE
    ld   c, a                                     ; $433B: $4F
    call Call_003_4006                            ; $433C: $CD $06 $40
    ld   a, h                                     ; $433F: $7C
    inc  a                                        ; $4340: $3C
    ld   [$DEAA], a                               ; $4341: $EA $AA $DE
    ld   hl, $DE90                                ; $4344: $21 $90 $DE
    inc  [hl]                                     ; $4347: $34
    call Call_003_441F                            ; $4348: $CD $1F $44
    push af                                       ; $434B: $F5
    ld   hl, $DEA0                                ; $434C: $21 $A0 $DE
    xor  [hl]                                     ; $434F: $AE
    call nz, Call_003_41CA                        ; $4350: $C4 $CA $41
    pop  af                                       ; $4353: $F1
    ld   [$DEA0], a                               ; $4354: $EA $A0 $DE
    ld   e, a                                     ; $4357: $5F
    swap a                                        ; $4358: $CB $37
    or   e                                        ; $435A: $B3
    ld   e, a                                     ; $435B: $5F
    pop  af                                       ; $435C: $F1
    and  e                                        ; $435D: $A3
    ld   d, a                                     ; $435E: $57
    ld   a, e                                     ; $435F: $7B
    cpl                                           ; $4360: $2F
    ld   hl, $DE94                                ; $4361: $21 $94 $DE
    and  [hl]                                     ; $4364: $A6
    or   d                                        ; $4365: $B2
    ldh  [rNR51], a                               ; $4366: $E0 $25
    ret                                           ; $4368: $C9


Call_003_4369:
    ld   hl, $0000                                ; $4369: $21 $00 $00
    add  hl, de                                   ; $436C: $19
    ld   a, [hl]                                  ; $436D: $7E
    or   a                                        ; $436E: $B7
    call nz, Call_003_484A                        ; $436F: $C4 $4A $48
    ld   hl, $DE90                                ; $4372: $21 $90 $DE
    bit  0, [hl]                                  ; $4375: $CB $46
    jr   nz, jr_003_43A2                          ; $4377: $20 $29

    call Call_003_4976                            ; $4379: $CD $76 $49
    ld   a, [$DEA7]                               ; $437C: $FA $A7 $DE
    or   a                                        ; $437F: $B7
    ret  z                                        ; $4380: $C8

    ld   a, [$DE91]                               ; $4381: $FA $91 $DE
    cp   $0A                                      ; $4384: $FE $0A
    jr   nz, jr_003_438F                          ; $4386: $20 $07

    ld   hl, $DEAB                                ; $4388: $21 $AB $DE
    dec  [hl]                                     ; $438B: $35
    jr   z, jr_003_4394                           ; $438C: $28 $06

    ret                                           ; $438E: $C9


jr_003_438F:
    ld   a, [$DEAA]                               ; $438F: $FA $AA $DE
    or   a                                        ; $4392: $B7
    ret  nz                                       ; $4393: $C0

jr_003_4394:
    ld   hl, $0001                                ; $4394: $21 $01 $00
    add  hl, de                                   ; $4397: $19
    bit  0, [hl]                                  ; $4398: $CB $46
    ret  nz                                       ; $439A: $C0

    ld   hl, $0004                                ; $439B: $21 $04 $00
    add  hl, de                                   ; $439E: $19
    ld   [hl], $03                                ; $439F: $36 $03
    ret                                           ; $43A1: $C9


jr_003_43A2:
    ld   c, $00                                   ; $43A2: $0E $00
    call Call_003_441F                            ; $43A4: $CD $1F $44

jr_003_43A7:
    srl  a                                        ; $43A7: $CB $3F
    jr   nc, jr_003_43B7                          ; $43A9: $30 $0C

    push af                                       ; $43AB: $F5
    call Call_003_441F                            ; $43AC: $CD $1F $44
    ld   b, a                                     ; $43AF: $47
    ld   a, c                                     ; $43B0: $79
    push bc                                       ; $43B1: $C5
    call Call_003_43BC                            ; $43B2: $CD $BC $43
    pop  bc                                       ; $43B5: $C1
    pop  af                                       ; $43B6: $F1

jr_003_43B7:
    jr   z, jr_003_43C9                           ; $43B7: $28 $10

    inc  c                                        ; $43B9: $0C
    jr   jr_003_43A7                              ; $43BA: $18 $EB

Call_003_43BC:
    call Call_003_4014                            ; $43BC: $CD $14 $40
    db   $ED                                      ; $43BF: $ED
    ld   b, a                                     ; $43C0: $47
    ld   l, a                                     ; $43C1: $6F
    ld   c, b                                     ; $43C2: $48
    jp   z, Jump_003_6947                         ; $43C3: $CA $47 $69

    ld   c, b                                     ; $43C6: $48
    ld   h, e                                     ; $43C7: $63
    ld   c, b                                     ; $43C8: $48

jr_003_43C9:
    call Call_003_441F                            ; $43C9: $CD $1F $44
    ld   hl, $0001                                ; $43CC: $21 $01 $00
    add  hl, de                                   ; $43CF: $19
    res  0, [hl]                                  ; $43D0: $CB $86
    res  5, [hl]                                  ; $43D2: $CB $AE
    push hl                                       ; $43D4: $E5
    ld   b, a                                     ; $43D5: $47
    ld   hl, $0007                                ; $43D6: $21 $07 $00
    add  hl, de                                   ; $43D9: $19
    ld   a, [hl+]                                 ; $43DA: $2A
    sla  a                                        ; $43DB: $CB $27
    jr   z, jr_003_43ED                           ; $43DD: $28 $0E

    ld   a, $5F                                   ; $43DF: $3E $5F
    jr   c, jr_003_43E5                           ; $43E1: $38 $02

    ld   a, $01                                   ; $43E3: $3E $01

jr_003_43E5:
    ld   [hl], a                                  ; $43E5: $77
    ld   hl, $0001                                ; $43E6: $21 $01 $00
    add  hl, de                                   ; $43E9: $19
    set  5, [hl]                                  ; $43EA: $CB $EE
    ld   a, b                                     ; $43EC: $78

jr_003_43ED:
    pop  hl                                       ; $43ED: $E1
    ld   a, b                                     ; $43EE: $78
    dec  a                                        ; $43EF: $3D
    cp   $FE                                      ; $43F0: $FE $FE
    jr   c, jr_003_43FC                           ; $43F2: $38 $08

    set  0, [hl]                                  ; $43F4: $CB $C6
    jp   z, Jump_003_4781                         ; $43F6: $CA $81 $47

    jp   Jump_003_47C1                            ; $43F9: $C3 $C1 $47


jr_003_43FC:
    ld   a, [$DE91]                               ; $43FC: $FA $91 $DE
    cp   $0A                                      ; $43FF: $FE $0A
    jr   c, jr_003_4417                           ; $4401: $38 $14

    jr   nz, jr_003_441C                          ; $4403: $20 $17

    push bc                                       ; $4405: $C5
    ld   a, [$DEA7]                               ; $4406: $FA $A7 $DE
    ld   h, a                                     ; $4409: $67
    ld   a, [$DEA9]                               ; $440A: $FA $A9 $DE
    ld   c, a                                     ; $440D: $4F
    call Call_003_4006                            ; $440E: $CD $06 $40
    ld   a, h                                     ; $4411: $7C
    inc  a                                        ; $4412: $3C
    ld   [$DEAB], a                               ; $4413: $EA $AB $DE
    pop  bc                                       ; $4416: $C1

jr_003_4417:
    ld   a, [$DEA6]                               ; $4417: $FA $A6 $DE
    add  b                                        ; $441A: $80
    ld   b, a                                     ; $441B: $47

jr_003_441C:
    jp   Jump_003_467B                            ; $441C: $C3 $7B $46


Call_003_441F:
    ld   hl, $DEA2                                ; $441F: $21 $A2 $DE
    ld   a, [hl+]                                 ; $4422: $2A
    ld   h, [hl]                                  ; $4423: $66
    ld   l, a                                     ; $4424: $6F
    ld   a, [hl+]                                 ; $4425: $2A
    push af                                       ; $4426: $F5
    ld   a, l                                     ; $4427: $7D
    ld   [$DEA2], a                               ; $4428: $EA $A2 $DE
    ld   a, h                                     ; $442B: $7C
    ld   [$DEA3], a                               ; $442C: $EA $A3 $DE
    pop  af                                       ; $442F: $F1
    ret                                           ; $4430: $C9


Call_003_4431:
    ld   hl, $000D                                ; $4431: $21 $0D $00
    add  hl, de                                   ; $4434: $19
    ld   a, [hl-]                                 ; $4435: $3A
    or   [hl]                                     ; $4436: $B6
    ret  z                                        ; $4437: $C8

    ld   hl, $0010                                ; $4438: $21 $10 $00
    add  hl, de                                   ; $443B: $19
    ld   a, [hl]                                  ; $443C: $7E
    or   a                                        ; $443D: $B7
    jr   z, jr_003_446B                           ; $443E: $28 $2B

    push hl                                       ; $4440: $E5
    ld   a, [de]                                  ; $4441: $1A
    or   a                                        ; $4442: $B7
    jr   z, jr_003_444B                           ; $4443: $28 $06

    call Call_003_484A                            ; $4445: $CD $4A $48
    call Call_003_4976                            ; $4448: $CD $76 $49

jr_003_444B:
    ld   a, [$DE97]                               ; $444B: $FA $97 $DE
    ld   b, a                                     ; $444E: $47
    ld   hl, $0012                                ; $444F: $21 $12 $00
    add  hl, de                                   ; $4452: $19
    ld   a, [hl]                                  ; $4453: $7E
    sub  b                                        ; $4454: $90
    ld   [hl], a                                  ; $4455: $77
    jr   z, jr_003_445A                           ; $4456: $28 $02

    jr   nc, jr_003_4460                          ; $4458: $30 $06

jr_003_445A:
    ld   hl, $0004                                ; $445A: $21 $04 $00
    add  hl, de                                   ; $445D: $19
    ld   [hl], $03                                ; $445E: $36 $03

jr_003_4460:
    pop  hl                                       ; $4460: $E1
    ld   a, [hl]                                  ; $4461: $7E
    sub  b                                        ; $4462: $90
    ld   [hl], a                                  ; $4463: $77
    jr   z, jr_003_446B                           ; $4464: $28 $05

    jr   c, jr_003_446B                           ; $4466: $38 $03

    cp   $C1                                      ; $4468: $FE $C1
    ret  c                                        ; $446A: $D8

jr_003_446B:
    call Call_003_4649                            ; $446B: $CD $49 $46
    cp   $20                                      ; $446E: $FE $20
    jp   c, Jump_003_454B                         ; $4470: $DA $4B $45

    push af                                       ; $4473: $F5
    swap a                                        ; $4474: $CB $37
    rrca                                          ; $4476: $0F
    and  $07                                      ; $4477: $E6 $07
    dec  a                                        ; $4479: $3D
    ld   hl, $000E                                ; $447A: $21 $0E $00
    add  hl, de                                   ; $447D: $19
    ld   bc, $465D                                ; $447E: $01 $5D $46
    bit  4, [hl]                                  ; $4481: $CB $66
    jr   nz, jr_003_448E                          ; $4483: $20 $09

    bit  5, [hl]                                  ; $4485: $CB $6E
    jr   z, jr_003_4493                           ; $4487: $28 $0A

    ld   bc, $4656                                ; $4489: $01 $56 $46
    jr   jr_003_4493                              ; $448C: $18 $05

jr_003_448E:
    res  4, [hl]                                  ; $448E: $CB $A6
    ld   bc, $4664                                ; $4490: $01 $64 $46

jr_003_4493:
    ld   h, $00                                   ; $4493: $26 $00
    ld   l, a                                     ; $4495: $6F
    add  hl, bc                                   ; $4496: $09
    ld   a, [hl]                                  ; $4497: $7E
    ld   hl, $0010                                ; $4498: $21 $10 $00
    add  hl, de                                   ; $449B: $19
    add  [hl]                                     ; $449C: $86
    ld   [hl], a                                  ; $449D: $77
    pop  af                                       ; $449E: $F1
    and  $1F                                      ; $449F: $E6 $1F
    jr   nz, jr_003_44AB                          ; $44A1: $20 $08

    ld   hl, $0017                                ; $44A3: $21 $17 $00
    add  hl, de                                   ; $44A6: $19
    ld   [hl], a                                  ; $44A7: $77
    jp   Jump_003_4543                            ; $44A8: $C3 $43 $45


jr_003_44AB:
    ld   b, a                                     ; $44AB: $47
    ld   a, [$DEA0]                               ; $44AC: $FA $A0 $DE
    rlca                                          ; $44AF: $07
    jr   c, jr_003_44C1                           ; $44B0: $38 $0F

    ld   a, [$DE94]                               ; $44B2: $FA $94 $DE
    and  $EE                                      ; $44B5: $E6 $EE
    ld   c, a                                     ; $44B7: $4F
    ld   a, [$DE9A]                               ; $44B8: $FA $9A $DE
    and  $11                                      ; $44BB: $E6 $11
    or   c                                        ; $44BD: $B1
    ld   [$DE94], a                               ; $44BE: $EA $94 $DE

jr_003_44C1:
    ld   hl, $000E                                ; $44C1: $21 $0E $00
    add  hl, de                                   ; $44C4: $19
    ld   a, [$DE91]                               ; $44C5: $FA $91 $DE
    cp   $0F                                      ; $44C8: $FE $0F
    jr   nz, jr_003_44D6                          ; $44CA: $20 $0A

    ld   a, [hl]                                  ; $44CC: $7E
    and  $07                                      ; $44CD: $E6 $07
    swap a                                        ; $44CF: $CB $37
    or   b                                        ; $44D1: $B0
    ld   b, a                                     ; $44D2: $47
    jp   Jump_003_4519                            ; $44D3: $C3 $19 $45


jr_003_44D6:
    ld   a, [hl]                                  ; $44D6: $7E
    and  $0F                                      ; $44D7: $E6 $0F
    ld   hl, $466B                                ; $44D9: $21 $6B $46
    call Call_003_401A                            ; $44DC: $CD $1A $40
    add  b                                        ; $44DF: $80
    ld   hl, $DE9B                                ; $44E0: $21 $9B $DE
    add  [hl]                                     ; $44E3: $86
    ld   hl, $000F                                ; $44E4: $21 $0F $00
    add  hl, de                                   ; $44E7: $19
    add  [hl]                                     ; $44E8: $86
    cp   $91                                      ; $44E9: $FE $91
    jr   c, jr_003_44EF                           ; $44EB: $38 $02

    ld   a, $90                                   ; $44ED: $3E $90

jr_003_44EF:
    ld   b, a                                     ; $44EF: $47
    ld   c, a                                     ; $44F0: $4F
    ld   hl, $0007                                ; $44F1: $21 $07 $00
    add  hl, de                                   ; $44F4: $19
    ld   a, [hl+]                                 ; $44F5: $2A
    or   a                                        ; $44F6: $B7
    jr   z, jr_003_4510                           ; $44F7: $28 $17

    ld   a, [hl]                                  ; $44F9: $7E
    or   a                                        ; $44FA: $B7
    jr   z, jr_003_4510                           ; $44FB: $28 $13

    cp   b                                        ; $44FD: $B8
    jr   nz, jr_003_4503                          ; $44FE: $20 $03

    xor  a                                        ; $4500: $AF
    jr   jr_003_4510                              ; $4501: $18 $0D

jr_003_4503:
    dec  hl                                       ; $4503: $2B
    jr   nc, jr_003_450A                          ; $4504: $30 $04

    set  7, [hl]                                  ; $4506: $CB $FE
    jr   jr_003_450C                              ; $4508: $18 $02

jr_003_450A:
    res  7, [hl]                                  ; $450A: $CB $BE

jr_003_450C:
    ld   a, $20                                   ; $450C: $3E $20
    inc  hl                                       ; $450E: $23
    ld   b, [hl]                                  ; $450F: $46

jr_003_4510:
    ld   [hl], c                                  ; $4510: $71
    ld   hl, $0001                                ; $4511: $21 $01 $00
    add  hl, de                                   ; $4514: $19
    res  5, [hl]                                  ; $4515: $CB $AE
    or   [hl]                                     ; $4517: $B6
    ld   [hl], a                                  ; $4518: $77

Jump_003_4519:
    ld   hl, $000E                                ; $4519: $21 $0E $00
    add  hl, de                                   ; $451C: $19
    push hl                                       ; $451D: $E5
    bit  7, [hl]                                  ; $451E: $CB $7E
    jr   nz, jr_003_4527                          ; $4520: $20 $05

    call Call_003_467B                            ; $4522: $CD $7B $46
    jr   jr_003_452A                              ; $4525: $18 $03

jr_003_4527:
    call Call_003_4781                            ; $4527: $CD $81 $47

jr_003_452A:
    pop  hl                                       ; $452A: $E1
    ld   a, [hl]                                  ; $452B: $7E
    and  $40                                      ; $452C: $E6 $40
    rlca                                          ; $452E: $07
    res  7, [hl]                                  ; $452F: $CB $BE
    or   [hl]                                     ; $4531: $B6
    ld   [hl], a                                  ; $4532: $77
    rlca                                          ; $4533: $07
    jr   c, jr_003_4543                           ; $4534: $38 $0D

    ld   hl, $0010                                ; $4536: $21 $10 $00
    add  hl, de                                   ; $4539: $19
    ld   a, [hl+]                                 ; $453A: $2A
    ld   c, a                                     ; $453B: $4F
    ld   h, [hl]                                  ; $453C: $66
    call Call_003_4006                            ; $453D: $CD $06 $40
    ld   a, h                                     ; $4540: $7C
    jr   jr_003_4545                              ; $4541: $18 $02

Jump_003_4543:
jr_003_4543:
    ld   a, $FF                                   ; $4543: $3E $FF

jr_003_4545:
    ld   hl, $0012                                ; $4545: $21 $12 $00
    add  hl, de                                   ; $4548: $19
    ld   [hl], a                                  ; $4549: $77
    ret                                           ; $454A: $C9


Jump_003_454B:
    ld   hl, $446B                                ; $454B: $21 $6B $44
    push hl                                       ; $454E: $E5
    cp   $04                                      ; $454F: $FE $04
    jr   c, jr_003_455A                           ; $4551: $38 $07

    push af                                       ; $4553: $F5
    call Call_003_4649                            ; $4554: $CD $49 $46
    ld   b, a                                     ; $4557: $47
    pop  af                                       ; $4558: $F1
    ld   c, a                                     ; $4559: $4F

jr_003_455A:
    call Call_003_4014                            ; $455A: $CD $14 $40
    sub  c                                        ; $455D: $91
    ld   b, l                                     ; $455E: $45
    sub  l                                        ; $455F: $95
    ld   b, l                                     ; $4560: $45
    sbc  c                                        ; $4561: $99
    ld   b, l                                     ; $4562: $45
    and  b                                        ; $4563: $A0
    ld   b, l                                     ; $4564: $45
    ld   a, [de]                                  ; $4565: $1A
    ld   b, [hl]                                  ; $4566: $46
    xor  c                                        ; $4567: $A9
    ld   b, l                                     ; $4568: $45
    cp   b                                        ; $4569: $B8
    ld   b, l                                     ; $456A: $45
    jp   z, $ED47                                 ; $456B: $CA $47 $ED

    ld   b, a                                     ; $456E: $47
    cp   [hl]                                     ; $456F: $BE
    ld   b, l                                     ; $4570: $45
    ret  z                                        ; $4571: $C8

    ld   b, l                                     ; $4572: $45
    call Call_003_6345                            ; $4573: $CD $45 $63
    ld   c, b                                     ; $4576: $48
    ld   l, c                                     ; $4577: $69
    ld   c, b                                     ; $4578: $48
    db   $D3                                      ; $4579: $D3
    ld   b, l                                     ; $457A: $45
    ret  c                                        ; $457B: $D8

    ld   b, l                                     ; $457C: $45
    db   $DD                                      ; $457D: $DD
    ld   b, l                                     ; $457E: $45
    ldh  [c], a                                   ; $457F: $E2
    ld   b, l                                     ; $4580: $45
    db   $D3                                      ; $4581: $D3
    ld   b, l                                     ; $4582: $45
    ret  c                                        ; $4583: $D8

    ld   b, l                                     ; $4584: $45
    db   $DD                                      ; $4585: $DD
    ld   b, l                                     ; $4586: $45
    ldh  [c], a                                   ; $4587: $E2
    ld   b, l                                     ; $4588: $45
    inc  bc                                       ; $4589: $03
    ld   b, [hl]                                  ; $458A: $46
    inc  h                                        ; $458B: $24
    ld   b, [hl]                                  ; $458C: $46
    ld   l, a                                     ; $458D: $6F
    ld   c, b                                     ; $458E: $48
    ccf                                           ; $458F: $3F
    ld   b, [hl]                                  ; $4590: $46
    ld   a, $20                                   ; $4591: $3E $20
    jr   jr_003_45A2                              ; $4593: $18 $0D

    ld   a, $40                                   ; $4595: $3E $40
    jr   jr_003_45A2                              ; $4597: $18 $09

    ld   hl, $000E                                ; $4599: $21 $0E $00
    add  hl, de                                   ; $459C: $19
    set  4, [hl]                                  ; $459D: $CB $E6
    ret                                           ; $459F: $C9


    ld   a, $08                                   ; $45A0: $3E $08

jr_003_45A2:
    ld   hl, $000E                                ; $45A2: $21 $0E $00
    add  hl, de                                   ; $45A5: $19
    xor  [hl]                                     ; $45A6: $AE
    ld   [hl], a                                  ; $45A7: $77
    ret                                           ; $45A8: $C9


    ld   a, b                                     ; $45A9: $78
    ld   [$DE99], a                               ; $45AA: $EA $99 $DE
    call Call_003_4649                            ; $45AD: $CD $49 $46
    ld   [$DE98], a                               ; $45B0: $EA $98 $DE
    xor  a                                        ; $45B3: $AF
    ld   [$DE96], a                               ; $45B4: $EA $96 $DE
    ret                                           ; $45B7: $C9


    ld   hl, $0011                                ; $45B8: $21 $11 $00
    add  hl, de                                   ; $45BB: $19
    ld   [hl], b                                  ; $45BC: $70
    ret                                           ; $45BD: $C9


    ld   hl, $000E                                ; $45BE: $21 $0E $00
    add  hl, de                                   ; $45C1: $19
    ld   a, [hl]                                  ; $45C2: $7E
    and  $F8                                      ; $45C3: $E6 $F8
    or   b                                        ; $45C5: $B0
    ld   [hl], a                                  ; $45C6: $77
    ret                                           ; $45C7: $C9


    ld   a, b                                     ; $45C8: $78
    ld   [$DE9B], a                               ; $45C9: $EA $9B $DE
    ret                                           ; $45CC: $C9


    ld   hl, $000F                                ; $45CD: $21 $0F $00
    add  hl, de                                   ; $45D0: $19
    ld   [hl], b                                  ; $45D1: $70
    ret                                           ; $45D2: $C9


    ld   hl, $0013                                ; $45D3: $21 $13 $00
    jr   jr_003_45E5                              ; $45D6: $18 $0D

    ld   hl, $0014                                ; $45D8: $21 $14 $00
    jr   jr_003_45E5                              ; $45DB: $18 $08

    ld   hl, $0015                                ; $45DD: $21 $15 $00
    jr   jr_003_45E5                              ; $45E0: $18 $03

    ld   hl, $0016                                ; $45E2: $21 $16 $00

jr_003_45E5:
    add  hl, de                                   ; $45E5: $19
    ld   a, c                                     ; $45E6: $79
    cp   $12                                      ; $45E7: $FE $12
    jr   nc, jr_003_45F7                          ; $45E9: $30 $0C

    ld   a, [hl]                                  ; $45EB: $7E
    or   a                                        ; $45EC: $B7
    jr   nz, jr_003_45F2                          ; $45ED: $20 $03

    ld   [hl], b                                  ; $45EF: $70
    jr   jr_003_45FF                              ; $45F0: $18 $0D

jr_003_45F2:
    dec  [hl]                                     ; $45F2: $35
    jr   z, jr_003_460F                           ; $45F3: $28 $1A

    jr   jr_003_45FF                              ; $45F5: $18 $08

jr_003_45F7:
    ld   a, [hl]                                  ; $45F7: $7E
    dec  a                                        ; $45F8: $3D
    jr   nz, jr_003_460F                          ; $45F9: $20 $14

    ld   [hl], a                                  ; $45FB: $77
    call Call_003_461A                            ; $45FC: $CD $1A $46

jr_003_45FF:
    call Call_003_4649                            ; $45FF: $CD $49 $46
    ld   b, a                                     ; $4602: $47
    push bc                                       ; $4603: $C5
    call Call_003_4649                            ; $4604: $CD $49 $46
    ld   hl, $000C                                ; $4607: $21 $0C $00
    add  hl, de                                   ; $460A: $19
    ld   [hl+], a                                 ; $460B: $22
    pop  bc                                       ; $460C: $C1
    ld   [hl], b                                  ; $460D: $70
    ret                                           ; $460E: $C9


jr_003_460F:
    ld   hl, $000C                                ; $460F: $21 $0C $00
    add  hl, de                                   ; $4612: $19
    ld   a, $02                                   ; $4613: $3E $02
    add  [hl]                                     ; $4615: $86
    ld   [hl+], a                                 ; $4616: $22
    ret  nc                                       ; $4617: $D0

    inc  [hl]                                     ; $4618: $34
    ret                                           ; $4619: $C9


Call_003_461A:
    ld   hl, $000E                                ; $461A: $21 $0E $00
    add  hl, de                                   ; $461D: $19
    ld   a, [hl]                                  ; $461E: $7E
    and  $97                                      ; $461F: $E6 $97
    or   b                                        ; $4621: $B0
    ld   [hl], a                                  ; $4622: $77
    ret                                           ; $4623: $C9


    pop  hl                                       ; $4624: $E1
    ld   hl, $000D                                ; $4625: $21 $0D $00
    add  hl, de                                   ; $4628: $19
    xor  a                                        ; $4629: $AF
    ld   [hl-], a                                 ; $462A: $32
    ld   [hl], a                                  ; $462B: $77
    ld   hl, $0017                                ; $462C: $21 $17 $00
    add  hl, de                                   ; $462F: $19
    ld   [hl], a                                  ; $4630: $77
    ld   a, [$DEA0]                               ; $4631: $FA $A0 $DE
    rlca                                          ; $4634: $07
    ret  c                                        ; $4635: $D8

    ld   a, [$DE94]                               ; $4636: $FA $94 $DE
    and  $EE                                      ; $4639: $E6 $EE
    ld   [$DE94], a                               ; $463B: $EA $94 $DE
    ret                                           ; $463E: $C9


    ld   a, [$DE9A]                               ; $463F: $FA $9A $DE
    and  $EE                                      ; $4642: $E6 $EE
    or   b                                        ; $4644: $B0
    ld   [$DE9A], a                               ; $4645: $EA $9A $DE
    ret                                           ; $4648: $C9


Call_003_4649:
    ld   hl, $000D                                ; $4649: $21 $0D $00
    add  hl, de                                   ; $464C: $19
    ld   a, [hl-]                                 ; $464D: $3A
    ld   c, [hl]                                  ; $464E: $4E
    ld   b, a                                     ; $464F: $47
    ld   a, [bc]                                  ; $4650: $0A
    inc  bc                                       ; $4651: $03
    ld   [hl], c                                  ; $4652: $71
    inc  hl                                       ; $4653: $23
    ld   [hl], b                                  ; $4654: $70
    ret                                           ; $4655: $C9


    ld   [bc], a                                  ; $4656: $02
    inc  b                                        ; $4657: $04
    ld   [$2010], sp                              ; $4658: $08 $10 $20
    ld   b, b                                     ; $465B: $40
    add  b                                        ; $465C: $80
    inc  bc                                       ; $465D: $03
    ld   b, $0C                                   ; $465E: $06 $0C
    jr   jr_003_4692                              ; $4660: $18 $30

    ld   h, b                                     ; $4662: $60
    ret  nz                                       ; $4663: $C0

    nop                                           ; $4664: $00
    add  hl, bc                                   ; $4665: $09
    ld   [de], a                                  ; $4666: $12
    inc  h                                        ; $4667: $24
    ld   c, b                                     ; $4668: $48
    sub  b                                        ; $4669: $90
    nop                                           ; $466A: $00
    nop                                           ; $466B: $00
    inc  c                                        ; $466C: $0C
    jr   jr_003_4693                              ; $466D: $18 $24

    jr   nc, jr_003_46AD                          ; $466F: $30 $3C

    ld   c, b                                     ; $4671: $48
    ld   d, h                                     ; $4672: $54
    jr   jr_003_4699                              ; $4673: $18 $24

    jr   nc, jr_003_46B3                          ; $4675: $30 $3C

    ld   c, b                                     ; $4677: $48
    ld   d, h                                     ; $4678: $54
    ld   h, b                                     ; $4679: $60
    ld   l, h                                     ; $467A: $6C

Call_003_467B:
Jump_003_467B:
    dec  b                                        ; $467B: $05
    push bc                                       ; $467C: $C5
    call Call_003_477A                            ; $467D: $CD $7A $47
    pop  bc                                       ; $4680: $C1
    ld   a, [$DE91]                               ; $4681: $FA $91 $DE
    cp   $0F                                      ; $4684: $FE $0F
    jr   nz, jr_003_468B                          ; $4686: $20 $03

    xor  a                                        ; $4688: $AF
    jr   jr_003_4694                              ; $4689: $18 $09

jr_003_468B:
    ld   a, b                                     ; $468B: $78
    ld   hl, $48B6                                ; $468C: $21 $B6 $48
    call Call_003_4019                            ; $468F: $CD $19 $40

jr_003_4692:
    ld   a, l                                     ; $4692: $7D

jr_003_4693:
    ld   b, h                                     ; $4693: $44

jr_003_4694:
    ld   hl, $0009                                ; $4694: $21 $09 $00
    add  hl, de                                   ; $4697: $19
    ld   [hl+], a                                 ; $4698: $22

jr_003_4699:
    ld   [hl], b                                  ; $4699: $70
    ld   a, [$DE91]                               ; $469A: $FA $91 $DE
    cp   $0A                                      ; $469D: $FE $0A
    jr   nz, jr_003_46C3                          ; $469F: $20 $22

    ld   a, $02                                   ; $46A1: $3E $02
    ld   hl, $0004                                ; $46A3: $21 $04 $00
    add  hl, de                                   ; $46A6: $19
    ld   [hl+], a                                 ; $46A7: $22
    ld   a, [hl]                                  ; $46A8: $7E
    rrca                                          ; $46A9: $0F
    and  $60                                      ; $46AA: $E6 $60
    cpl                                           ; $46AC: $2F

jr_003_46AD:
    inc  a                                        ; $46AD: $3C
    and  $60                                      ; $46AE: $E6 $60
    call Call_003_4793                            ; $46B0: $CD $93 $47

jr_003_46B3:
    or   a                                        ; $46B3: $B7
    jp   z, Jump_003_47C1                         ; $46B4: $CA $C1 $47

Call_003_46B7:
    ldh  [rNR32], a                               ; $46B7: $E0 $1C
    ld   hl, $0009                                ; $46B9: $21 $09 $00
    add  hl, de                                   ; $46BC: $19
    ld   a, [hl+]                                 ; $46BD: $2A
    ld   b, [hl]                                  ; $46BE: $46
    ld   c, a                                     ; $46BF: $4F
    jp   Jump_003_4ADB                            ; $46C0: $C3 $DB $4A


jr_003_46C3:
    ld   a, $00                                   ; $46C3: $3E $00
    call Call_003_4024                            ; $46C5: $CD $24 $40
    ld   hl, $488E                                ; $46C8: $21 $8E $48
    call Call_003_401A                            ; $46CB: $CD $1A $40
    or   a                                        ; $46CE: $B7
    jr   nz, jr_003_46DA                          ; $46CF: $20 $09

    ld   hl, $0003                                ; $46D1: $21 $03 $00
    add  hl, de                                   ; $46D4: $19
    ld   [hl+], a                                 ; $46D5: $22
    ld   [hl+], a                                 ; $46D6: $22
    ld   a, [hl]                                  ; $46D7: $7E
    jr   jr_003_4703                              ; $46D8: $18 $29

jr_003_46DA:
    ld   b, a                                     ; $46DA: $47
    ld   hl, $0005                                ; $46DB: $21 $05 $00
    add  hl, de                                   ; $46DE: $19
    ld   a, $F0                                   ; $46DF: $3E $F0
    sub  [hl]                                     ; $46E1: $96
    ld   c, a                                     ; $46E2: $4F
    ld   a, b                                     ; $46E3: $78
    sub  c                                        ; $46E4: $91
    jr   nc, jr_003_46E9                          ; $46E5: $30 $02

    and  $0F                                      ; $46E7: $E6 $0F

jr_003_46E9:
    push af                                       ; $46E9: $F5
    ld   c, a                                     ; $46EA: $4F
    and  $F0                                      ; $46EB: $E6 $F0
    ld   b, a                                     ; $46ED: $47
    ld   a, [hl]                                  ; $46EE: $7E
    sub  b                                        ; $46EF: $90
    swap a                                        ; $46F0: $CB $37
    ld   h, a                                     ; $46F2: $67
    ld   a, c                                     ; $46F3: $79
    and  $07                                      ; $46F4: $E6 $07
    ld   c, a                                     ; $46F6: $4F
    call Call_003_4006                            ; $46F7: $CD $06 $40
    ld   a, l                                     ; $46FA: $7D
    ld   hl, $0003                                ; $46FB: $21 $03 $00
    add  hl, de                                   ; $46FE: $19
    ld   [hl+], a                                 ; $46FF: $22
    ld   [hl], $00                                ; $4700: $36 $00
    pop  af                                       ; $4702: $F1

Call_003_4703:
jr_003_4703:
    call Call_003_4793                            ; $4703: $CD $93 $47

Jump_003_4706:
    push af                                       ; $4706: $F5
    ld   hl, $0009                                ; $4707: $21 $09 $00
    add  hl, de                                   ; $470A: $19
    ld   a, [hl+]                                 ; $470B: $2A
    ld   b, [hl]                                  ; $470C: $46
    ld   c, a                                     ; $470D: $4F
    call Call_003_4721                            ; $470E: $CD $21 $47
    set  7, h                                     ; $4711: $CB $FC
    ld   b, l                                     ; $4713: $45
    ld   c, $13                                   ; $4714: $0E $13
    call Call_003_4108                            ; $4716: $CD $08 $41
    pop  af                                       ; $4719: $F1
    dec  c                                        ; $471A: $0D
    ldh  [c], a                                   ; $471B: $E2
    inc  c                                        ; $471C: $0C
    inc  c                                        ; $471D: $0C
    ld   a, h                                     ; $471E: $7C
    ldh  [c], a                                   ; $471F: $E2
    ret                                           ; $4720: $C9


Call_003_4721:
    ld   a, [$DE91]                               ; $4721: $FA $91 $DE
    cp   $0F                                      ; $4724: $FE $0F
    jr   nz, jr_003_4738                          ; $4726: $20 $10

    ld   a, b                                     ; $4728: $78
    and  $7F                                      ; $4729: $E6 $7F
    xor  $0F                                      ; $472B: $EE $0F
    swap a                                        ; $472D: $CB $37
    ld   hl, $000B                                ; $472F: $21 $0B $00
    add  hl, de                                   ; $4732: $19
    or   [hl]                                     ; $4733: $B6
    ld   l, a                                     ; $4734: $6F
    ld   h, $00                                   ; $4735: $26 $00
    ret                                           ; $4737: $C9


jr_003_4738:
    ld   a, b                                     ; $4738: $78
    ld   b, $20                                   ; $4739: $06 $20
    ld   hl, $48AE                                ; $473B: $21 $AE $48

jr_003_473E:
    cp   [hl]                                     ; $473E: $BE
    jr   nc, jr_003_4748                          ; $473F: $30 $07

    inc  hl                                       ; $4741: $23
    dec  b                                        ; $4742: $05
    dec  b                                        ; $4743: $05
    dec  b                                        ; $4744: $05
    dec  b                                        ; $4745: $05
    jr   jr_003_473E                              ; $4746: $18 $F6

jr_003_4748:
    srl  a                                        ; $4748: $CB $3F
    rr   c                                        ; $474A: $CB $19
    add  b                                        ; $474C: $80
    push af                                       ; $474D: $F5
    and  $07                                      ; $474E: $E6 $07
    ld   b, a                                     ; $4750: $47
    pop  af                                       ; $4751: $F1
    and  $38                                      ; $4752: $E6 $38
    xor  $38                                      ; $4754: $EE $38
    jr   z, jr_003_4762                           ; $4756: $28 $0A

jr_003_4758:
    sub  $08                                      ; $4758: $D6 $08
    jr   z, jr_003_4762                           ; $475A: $28 $06

    srl  b                                        ; $475C: $CB $38
    rr   c                                        ; $475E: $CB $19
    jr   jr_003_4758                              ; $4760: $18 $F6

jr_003_4762:
    sub  c                                        ; $4762: $91
    ld   c, a                                     ; $4763: $4F
    ld   a, $80                                   ; $4764: $3E $80
    sbc  b                                        ; $4766: $98
    ld   b, a                                     ; $4767: $47
    ld   hl, $0006                                ; $4768: $21 $06 $00
    add  hl, de                                   ; $476B: $19
    ld   l, [hl]                                  ; $476C: $6E
    ld   h, $00                                   ; $476D: $26 $00
    bit  7, l                                     ; $476F: $CB $7D
    jr   z, jr_003_4774                           ; $4771: $28 $01

    dec  h                                        ; $4773: $25

jr_003_4774:
    add  hl, bc                                   ; $4774: $09
    ld   a, h                                     ; $4775: $7C
    and  $07                                      ; $4776: $E6 $07
    ld   h, a                                     ; $4778: $67
    ret                                           ; $4779: $C9


Call_003_477A:
    ld   a, $04                                   ; $477A: $3E $04
    call Call_003_4024                            ; $477C: $CD $24 $40
    jr   jr_003_4782                              ; $477F: $18 $01

Call_003_4781:
Jump_003_4781:
    xor  a                                        ; $4781: $AF

jr_003_4782:
    ld   hl, $0001                                ; $4782: $21 $01 $00
    add  hl, de                                   ; $4785: $19
    rlca                                          ; $4786: $07
    jr   c, jr_003_478C                           ; $4787: $38 $03

    bit  4, [hl]                                  ; $4789: $CB $66
    ret  z                                        ; $478B: $C8

jr_003_478C:
    ld   a, [hl]                                  ; $478C: $7E
    and  $2F                                      ; $478D: $E6 $2F
    ld   [hl+], a                                 ; $478F: $22
    ld   [hl], $00                                ; $4790: $36 $00
    ret                                           ; $4792: $C9


Call_003_4793:
    ld   hl, $DE90                                ; $4793: $21 $90 $DE
    bit  2, [hl]                                  ; $4796: $CB $56
    ret  nz                                       ; $4798: $C0

    ld   b, a                                     ; $4799: $47
    ld   hl, $0017                                ; $479A: $21 $17 $00
    add  hl, de                                   ; $479D: $19
    ld   [hl], a                                  ; $479E: $77
    pop  hl                                       ; $479F: $E1
    ld   a, [$DE9D]                               ; $47A0: $FA $9D $DE
    cp   $80                                      ; $47A3: $FE $80
    ret  z                                        ; $47A5: $C8

    ld   a, [$DEA0]                               ; $47A6: $FA $A0 $DE
    rlca                                          ; $47A9: $07
    ret  c                                        ; $47AA: $D8

    ld   a, b                                     ; $47AB: $78
    push hl                                       ; $47AC: $E5
    ret                                           ; $47AD: $C9


Jump_003_47AE:
    ld   hl, $DE90                                ; $47AE: $21 $90 $DE
    bit  2, [hl]                                  ; $47B1: $CB $56
    jr   nz, jr_003_47C1                          ; $47B3: $20 $0C

    ld   hl, $0017                                ; $47B5: $21 $17 $00
    add  hl, de                                   ; $47B8: $19
    ld   [hl], $00                                ; $47B9: $36 $00
    ld   hl, $DEA0                                ; $47BB: $21 $A0 $DE
    bit  7, [hl]                                  ; $47BE: $CB $7E
    ret  nz                                       ; $47C0: $C0

Jump_003_47C1:
jr_003_47C1:
    ld   a, [$DE94]                               ; $47C1: $FA $94 $DE
    and  $EE                                      ; $47C4: $E6 $EE
    ld   [$DE94], a                               ; $47C6: $EA $94 $DE
    ret                                           ; $47C9: $C9


    ld   a, [$DE91]                               ; $47CA: $FA $91 $DE
    cp   $0A                                      ; $47CD: $FE $0A
    jr   nz, jr_003_47DD                          ; $47CF: $20 $0C

    ld   hl, $DE90                                ; $47D1: $21 $90 $DE
    bit  2, [hl]                                  ; $47D4: $CB $56
    jr   z, jr_003_47E2                           ; $47D6: $28 $0A

    ld   a, b                                     ; $47D8: $78
    ld   [$DEA9], a                               ; $47D9: $EA $A9 $DE
    ret                                           ; $47DC: $C9


jr_003_47DD:
    swap b                                        ; $47DD: $CB $30
    ld   a, b                                     ; $47DF: $78
    jr   jr_003_47E7                              ; $47E0: $18 $05

Jump_003_47E2:
jr_003_47E2:
    ld   a, b                                     ; $47E2: $78
    rrca                                          ; $47E3: $0F
    rrca                                          ; $47E4: $0F
    or   $30                                      ; $47E5: $F6 $30

jr_003_47E7:
    ld   hl, $0005                                ; $47E7: $21 $05 $00
    add  hl, de                                   ; $47EA: $19
    ld   [hl], a                                  ; $47EB: $77
    ret                                           ; $47EC: $C9


    ld   a, b                                     ; $47ED: $78
    inc  a                                        ; $47EE: $3C
    ld   hl, $0000                                ; $47EF: $21 $00 $00
    add  hl, de                                   ; $47F2: $19
    cp   [hl]                                     ; $47F3: $BE
    ret  z                                        ; $47F4: $C8

    ld   [hl+], a                                 ; $47F5: $22
    set  4, [hl]                                  ; $47F6: $CB $E6
    call Call_003_484A                            ; $47F8: $CD $4A $48
    ld   a, [$DE91]                               ; $47FB: $FA $91 $DE
    cp   $0A                                      ; $47FE: $FE $0A
    ret  c                                        ; $4800: $D8

    jr   z, jr_003_480E                           ; $4801: $28 $0B

    ld   bc, $0006                                ; $4803: $01 $06 $00
    add  hl, bc                                   ; $4806: $09
    ld   a, [hl]                                  ; $4807: $7E
    ld   hl, $000B                                ; $4808: $21 $0B $00
    add  hl, de                                   ; $480B: $19
    ld   [hl], a                                  ; $480C: $77
    ret                                           ; $480D: $C9


jr_003_480E:
    ld   bc, $0007                                ; $480E: $01 $07 $00
    add  hl, bc                                   ; $4811: $09
    ld   a, [hl]                                  ; $4812: $7E
    or   a                                        ; $4813: $B7
    ret  z                                        ; $4814: $C8

    ld   hl, $DE90                                ; $4815: $21 $90 $DE
    bit  2, [hl]                                  ; $4818: $CB $56
    jr   nz, jr_003_4825                          ; $481A: $20 $09

    ld   [$DE9C], a                               ; $481C: $EA $9C $DE
    ld   hl, $DEA0                                ; $481F: $21 $A0 $DE
    bit  7, [hl]                                  ; $4822: $CB $7E
    ret  nz                                       ; $4824: $C0

Jump_003_4825:
jr_003_4825:
    dec  a                                        ; $4825: $3D
    ld   h, $00                                   ; $4826: $26 $00
    ld   l, a                                     ; $4828: $6F
    add  hl, hl                                   ; $4829: $29
    add  hl, hl                                   ; $482A: $29
    add  hl, hl                                   ; $482B: $29
    add  hl, hl                                   ; $482C: $29
    ld   a, [$4B03]                               ; $482D: $FA $03 $4B
    ld   b, a                                     ; $4830: $47
    ld   a, [$4B04]                               ; $4831: $FA $04 $4B
    ld   c, a                                     ; $4834: $4F
    add  hl, bc                                   ; $4835: $09
    xor  a                                        ; $4836: $AF
    ldh  [rNR30], a                               ; $4837: $E0 $1A
    ld   b, $10                                   ; $4839: $06 $10
    ld   c, $30                                   ; $483B: $0E $30

jr_003_483D:
    ld   a, [hl+]                                 ; $483D: $2A
    ldh  [c], a                                   ; $483E: $E2
    inc  c                                        ; $483F: $0C
    dec  b                                        ; $4840: $05
    jr   nz, jr_003_483D                          ; $4841: $20 $FA

    ld   a, $80                                   ; $4843: $3E $80
    ldh  [rNR30], a                               ; $4845: $E0 $1A
    ldh  [rNR34], a                               ; $4847: $E0 $1E
    ret                                           ; $4849: $C9


Call_003_484A:
    dec  a                                        ; $484A: $3D
    ld   h, $00                                   ; $484B: $26 $00
    ld   l, a                                     ; $484D: $6F
    add  hl, hl                                   ; $484E: $29
    add  hl, hl                                   ; $484F: $29
    add  hl, hl                                   ; $4850: $29
    ld   a, [$4B01]                               ; $4851: $FA $01 $4B
    ld   b, a                                     ; $4854: $47
    ld   a, [$4B02]                               ; $4855: $FA $02 $4B
    ld   c, a                                     ; $4858: $4F
    add  hl, bc                                   ; $4859: $09
    ld   a, l                                     ; $485A: $7D
    ld   [$DE92], a                               ; $485B: $EA $92 $DE
    ld   a, h                                     ; $485E: $7C
    ld   [$DE93], a                               ; $485F: $EA $93 $DE
    ret                                           ; $4862: $C9


    ld   hl, $0006                                ; $4863: $21 $06 $00
    add  hl, de                                   ; $4866: $19
    ld   [hl], b                                  ; $4867: $70
    ret                                           ; $4868: $C9


    ld   hl, $0007                                ; $4869: $21 $07 $00
    add  hl, de                                   ; $486C: $19
    ld   [hl], b                                  ; $486D: $70
    ret                                           ; $486E: $C9


    ld   a, [$DE91]                               ; $486F: $FA $91 $DE
    cp   $0A                                      ; $4872: $FE $0A
    jp   z, Jump_003_47E2                         ; $4874: $CA $E2 $47

    ld   hl, $DE90                                ; $4877: $21 $90 $DE
    bit  2, [hl]                                  ; $487A: $CB $56
    jr   nz, jr_003_4889                          ; $487C: $20 $0B

    ld   hl, $000B                                ; $487E: $21 $0B $00
    add  hl, de                                   ; $4881: $19
    ld   [hl], b                                  ; $4882: $70
    ld   hl, $DEA0                                ; $4883: $21 $A0 $DE
    bit  7, [hl]                                  ; $4886: $CB $7E
    ret  nz                                       ; $4888: $C0

jr_003_4889:
    ld   c, $11                                   ; $4889: $0E $11
    jp   Jump_003_4108                            ; $488B: $C3 $08 $41


    nop                                           ; $488E: $00
    rrca                                          ; $488F: $0F
    ld   c, $0D                                   ; $4890: $0E $0D
    inc  c                                        ; $4892: $0C
    dec  bc                                       ; $4893: $0B
    dec  de                                       ; $4894: $1B
    dec  de                                       ; $4895: $1B
    ld   a, [bc]                                  ; $4896: $0A
    ld   a, [de]                                  ; $4897: $1A
    ld   a, [hl+]                                 ; $4898: $2A
    ld   a, [hl+]                                 ; $4899: $2A
    ld   a, [hl+]                                 ; $489A: $2A
    add  hl, bc                                   ; $489B: $09
    add  hl, bc                                   ; $489C: $09
    add  hl, bc                                   ; $489D: $09
    add  hl, de                                   ; $489E: $19
    add  hl, de                                   ; $489F: $19
    add  hl, hl                                   ; $48A0: $29
    add  hl, hl                                   ; $48A1: $29
    add  hl, hl                                   ; $48A2: $29
    add  hl, sp                                   ; $48A3: $39
    add  hl, sp                                   ; $48A4: $39
    ld   c, c                                     ; $48A5: $49
    ld   c, c                                     ; $48A6: $49
    ld   c, c                                     ; $48A7: $49
    ld   e, c                                     ; $48A8: $59

jr_003_48A9:
    ld   e, c                                     ; $48A9: $59
    ld   l, c                                     ; $48AA: $69
    ld   l, c                                     ; $48AB: $69
    nop                                           ; $48AC: $00
    nop                                           ; $48AD: $00
    jr   c, jr_003_48E0                           ; $48AE: $38 $30

    jr   z, @+$22                                 ; $48B0: $28 $20

    jr   jr_003_48C4                              ; $48B2: $18 $10

    ld   [$AA00], sp                              ; $48B4: $08 $00 $AA
    ccf                                           ; $48B7: $3F
    ret  z                                        ; $48B8: $C8

    ld   a, $F4                                   ; $48B9: $3E $F4
    dec  a                                        ; $48BB: $3D
    inc  l                                        ; $48BC: $2C
    dec  a                                        ; $48BD: $3D
    ld   l, [hl]                                  ; $48BE: $6E
    inc  a                                        ; $48BF: $3C
    cp   h                                        ; $48C0: $BC

jr_003_48C1:
    dec  sp                                       ; $48C1: $3B
    ld   [de], a                                  ; $48C2: $12
    dec  sp                                       ; $48C3: $3B

jr_003_48C4:
    ld   [hl], h                                  ; $48C4: $74
    ld   a, [hl-]                                 ; $48C5: $3A
    sbc  $39                                      ; $48C6: $DE $39
    ld   d, b                                     ; $48C8: $50
    add  hl, sp                                   ; $48C9: $39
    jp   z, Jump_003_4C38                         ; $48CA: $CA $38 $4C

    jr   c, @-$54                                 ; $48CD: $38 $AA

    scf                                           ; $48CF: $37
    ret  z                                        ; $48D0: $C8

    ld   [hl], $F4                                ; $48D1: $36 $F4
    dec  [hl]                                     ; $48D3: $35
    inc  l                                        ; $48D4: $2C
    dec  [hl]                                     ; $48D5: $35
    ld   l, [hl]                                  ; $48D6: $6E
    inc  [hl]                                     ; $48D7: $34
    cp   h                                        ; $48D8: $BC

jr_003_48D9:
    inc  sp                                       ; $48D9: $33
    ld   [de], a                                  ; $48DA: $12
    inc  sp                                       ; $48DB: $33
    ld   [hl], h                                  ; $48DC: $74
    ld   [hl-], a                                 ; $48DD: $32
    sbc  $31                                      ; $48DE: $DE $31

jr_003_48E0:
    ld   d, b                                     ; $48E0: $50
    ld   sp, $30CA                                ; $48E1: $31 $CA $30
    ld   c, h                                     ; $48E4: $4C
    jr   nc, @-$54                                ; $48E5: $30 $AA

    cpl                                           ; $48E7: $2F
    ret  z                                        ; $48E8: $C8

    ld   l, $F4                                   ; $48E9: $2E $F4
    dec  l                                        ; $48EB: $2D
    inc  l                                        ; $48EC: $2C
    dec  l                                        ; $48ED: $2D
    ld   l, [hl]                                  ; $48EE: $6E
    inc  l                                        ; $48EF: $2C
    cp   h                                        ; $48F0: $BC
    dec  hl                                       ; $48F1: $2B
    ld   [de], a                                  ; $48F2: $12
    dec  hl                                       ; $48F3: $2B
    ld   [hl], h                                  ; $48F4: $74
    ld   a, [hl+]                                 ; $48F5: $2A
    sbc  $29                                      ; $48F6: $DE $29
    ld   d, b                                     ; $48F8: $50
    add  hl, hl                                   ; $48F9: $29
    jp   z, Jump_003_4C28                         ; $48FA: $CA $28 $4C

    jr   z, jr_003_48A9                           ; $48FD: $28 $AA

    daa                                           ; $48FF: $27
    ret  z                                        ; $4900: $C8

    ld   h, $F4                                   ; $4901: $26 $F4
    dec  h                                        ; $4903: $25
    inc  l                                        ; $4904: $2C
    dec  h                                        ; $4905: $25
    ld   l, [hl]                                  ; $4906: $6E
    inc  h                                        ; $4907: $24
    cp   h                                        ; $4908: $BC
    inc  hl                                       ; $4909: $23
    ld   [de], a                                  ; $490A: $12
    inc  hl                                       ; $490B: $23
    ld   [hl], h                                  ; $490C: $74
    ld   [hl+], a                                 ; $490D: $22
    sbc  $21                                      ; $490E: $DE $21
    ld   d, b                                     ; $4910: $50
    ld   hl, $20CA                                ; $4911: $21 $CA $20
    ld   c, h                                     ; $4914: $4C
    jr   nz, jr_003_48C1                          ; $4915: $20 $AA

    rra                                           ; $4917: $1F
    ret  z                                        ; $4918: $C8

    ld   e, $F4                                   ; $4919: $1E $F4
    dec  e                                        ; $491B: $1D
    inc  l                                        ; $491C: $2C
    dec  e                                        ; $491D: $1D
    ld   l, [hl]                                  ; $491E: $6E
    inc  e                                        ; $491F: $1C
    cp   h                                        ; $4920: $BC
    dec  de                                       ; $4921: $1B
    ld   [de], a                                  ; $4922: $12
    dec  de                                       ; $4923: $1B
    ld   [hl], h                                  ; $4924: $74
    ld   a, [de]                                  ; $4925: $1A
    sbc  $19                                      ; $4926: $DE $19
    ld   d, b                                     ; $4928: $50
    add  hl, de                                   ; $4929: $19
    jp   z, Jump_003_4C18                         ; $492A: $CA $18 $4C

    jr   jr_003_48D9                              ; $492D: $18 $AA

    rla                                           ; $492F: $17
    ret  z                                        ; $4930: $C8

    ld   d, $F4                                   ; $4931: $16 $F4
    dec  d                                        ; $4933: $15
    inc  l                                        ; $4934: $2C
    dec  d                                        ; $4935: $15
    ld   l, [hl]                                  ; $4936: $6E
    inc  d                                        ; $4937: $14
    cp   h                                        ; $4938: $BC
    inc  de                                       ; $4939: $13
    ld   [de], a                                  ; $493A: $12
    inc  de                                       ; $493B: $13
    ld   [hl], h                                  ; $493C: $74
    ld   [de], a                                  ; $493D: $12
    sbc  $11                                      ; $493E: $DE $11
    ld   d, b                                     ; $4940: $50
    ld   de, $10CA                                ; $4941: $11 $CA $10
    ld   c, h                                     ; $4944: $4C
    db   $10                                      ; $4945: $10
    xor  d                                        ; $4946: $AA
    rrca                                          ; $4947: $0F
    ret  z                                        ; $4948: $C8

    ld   c, $F4                                   ; $4949: $0E $F4
    dec  c                                        ; $494B: $0D
    inc  l                                        ; $494C: $2C
    dec  c                                        ; $494D: $0D
    ld   l, [hl]                                  ; $494E: $6E
    inc  c                                        ; $494F: $0C
    cp   h                                        ; $4950: $BC
    dec  bc                                       ; $4951: $0B
    ld   [de], a                                  ; $4952: $12
    dec  bc                                       ; $4953: $0B
    ld   [hl], h                                  ; $4954: $74
    ld   a, [bc]                                  ; $4955: $0A
    sbc  $09                                      ; $4956: $DE $09
    ld   d, b                                     ; $4958: $50
    add  hl, bc                                   ; $4959: $09
    jp   z, Jump_003_4C08                         ; $495A: $CA $08 $4C

    ld   [$07AA], sp                              ; $495D: $08 $AA $07
    ret  z                                        ; $4960: $C8

    ld   b, $F4                                   ; $4961: $06 $F4
    dec  b                                        ; $4963: $05
    inc  l                                        ; $4964: $2C
    dec  b                                        ; $4965: $05
    ld   l, [hl]                                  ; $4966: $6E
    inc  b                                        ; $4967: $04
    cp   h                                        ; $4968: $BC
    inc  bc                                       ; $4969: $03
    ld   [de], a                                  ; $496A: $12
    inc  bc                                       ; $496B: $03
    ld   [hl], h                                  ; $496C: $74
    ld   [bc], a                                  ; $496D: $02
    sbc  $01                                      ; $496E: $DE $01
    ld   d, b                                     ; $4970: $50
    ld   bc, $00CA                                ; $4971: $01 $CA $00
    ld   c, h                                     ; $4974: $4C
    nop                                           ; $4975: $00

Call_003_4976:
    ld   hl, $0005                                ; $4976: $21 $05 $00
    add  hl, de                                   ; $4979: $19
    ld   a, $F0                                   ; $497A: $3E $F0
    sub  [hl]                                     ; $497C: $96
    ld   b, a                                     ; $497D: $47
    ld   hl, $0004                                ; $497E: $21 $04 $00
    add  hl, de                                   ; $4981: $19
    ld   a, [hl]                                  ; $4982: $7E
    call Call_003_4014                            ; $4983: $CD $14 $40
    sub  d                                        ; $4986: $92
    ld   c, c                                     ; $4987: $49
    jp   nc, $1949                                ; $4988: $D2 $49 $19

    ld   c, d                                     ; $498B: $4A
    add  sp, $49                                  ; $498C: $E8 $49
    add  hl, de                                   ; $498E: $19
    ld   c, d                                     ; $498F: $4A
    add  sp, $4A                                  ; $4990: $E8 $4A
    ld   hl, $0003                                ; $4992: $21 $03 $00
    add  hl, de                                   ; $4995: $19
    ld   a, [hl]                                  ; $4996: $7E
    or   a                                        ; $4997: $B7
    jr   z, jr_003_499E                           ; $4998: $28 $04

    dec  [hl]                                     ; $499A: $35
    jp   nz, Jump_003_4A19                        ; $499B: $C2 $19 $4A

jr_003_499E:
    inc  hl                                       ; $499E: $23
    inc  [hl]                                     ; $499F: $34
    ld   a, $01                                   ; $49A0: $3E $01
    call Call_003_4024                            ; $49A2: $CD $24 $40
    and  $07                                      ; $49A5: $E6 $07
    jr   z, jr_003_49D9                           ; $49A7: $28 $30

    xor  $07                                      ; $49A9: $EE $07
    ld   c, a                                     ; $49AB: $4F
    inc  hl                                       ; $49AC: $23
    ld   a, [hl]                                  ; $49AD: $7E
    sub  b                                        ; $49AE: $90
    jr   nc, jr_003_49B2                          ; $49AF: $30 $01

    xor  a                                        ; $49B1: $AF

jr_003_49B2:
    ld   hl, $0005                                ; $49B2: $21 $05 $00
    add  hl, de                                   ; $49B5: $19
    cp   [hl]                                     ; $49B6: $BE
    jr   z, jr_003_49D9                           ; $49B7: $28 $20

    ld   b, a                                     ; $49B9: $47
    ld   a, [hl]                                  ; $49BA: $7E
    or   c                                        ; $49BB: $B1
    push af                                       ; $49BC: $F5
    and  $F0                                      ; $49BD: $E6 $F0
    sub  b                                        ; $49BF: $90
    swap a                                        ; $49C0: $CB $37
    ld   h, a                                     ; $49C2: $67
    call Call_003_4006                            ; $49C3: $CD $06 $40
    ld   a, l                                     ; $49C6: $7D
    ld   hl, $0003                                ; $49C7: $21 $03 $00
    add  hl, de                                   ; $49CA: $19
    ld   [hl], a                                  ; $49CB: $77
    pop  af                                       ; $49CC: $F1
    call Call_003_4703                            ; $49CD: $CD $03 $47
    jr   jr_003_4A19                              ; $49D0: $18 $47

    ld   hl, $0003                                ; $49D2: $21 $03 $00
    add  hl, de                                   ; $49D5: $19
    dec  [hl]                                     ; $49D6: $35
    jr   nz, jr_003_4A19                          ; $49D7: $20 $40

jr_003_49D9:
    ld   a, $02                                   ; $49D9: $3E $02
    call Call_003_4024                            ; $49DB: $CD $24 $40
    sub  b                                        ; $49DE: $90
    jr   z, jr_003_4A10                           ; $49DF: $28 $2F

    jr   c, jr_003_4A10                           ; $49E1: $38 $2D

    call Call_003_4703                            ; $49E3: $CD $03 $47
    jr   jr_003_4A09                              ; $49E6: $18 $21

    ld   a, [$DE91]                               ; $49E8: $FA $91 $DE
    cp   $0A                                      ; $49EB: $FE $0A
    jr   z, jr_003_4A10                           ; $49ED: $28 $21

    ld   a, $02                                   ; $49EF: $3E $02
    call Call_003_4024                            ; $49F1: $CD $24 $40
    sub  b                                        ; $49F4: $90
    jr   z, jr_003_4A10                           ; $49F5: $28 $19

    jr   c, jr_003_4A10                           ; $49F7: $38 $17

    inc  hl                                       ; $49F9: $23
    bit  3, [hl]                                  ; $49FA: $CB $5E
    jr   nz, jr_003_4A10                          ; $49FC: $20 $12

    ld   b, a                                     ; $49FE: $47
    ld   a, [hl]                                  ; $49FF: $7E
    dec  a                                        ; $4A00: $3D
    xor  $07                                      ; $4A01: $EE $07
    and  $07                                      ; $4A03: $E6 $07
    or   b                                        ; $4A05: $B0
    call Call_003_4703                            ; $4A06: $CD $03 $47

jr_003_4A09:
    ld   hl, $0004                                ; $4A09: $21 $04 $00
    add  hl, de                                   ; $4A0C: $19
    inc  [hl]                                     ; $4A0D: $34
    jr   jr_003_4A19                              ; $4A0E: $18 $09

jr_003_4A10:
    ld   hl, $0004                                ; $4A10: $21 $04 $00
    add  hl, de                                   ; $4A13: $19
    ld   [hl], $05                                ; $4A14: $36 $05
    jp   Jump_003_47AE                            ; $4A16: $C3 $AE $47


Jump_003_4A19:
jr_003_4A19:
    ld   hl, $0001                                ; $4A19: $21 $01 $00
    add  hl, de                                   ; $4A1C: $19
    bit  5, [hl]                                  ; $4A1D: $CB $6E
    jr   z, jr_003_4A76                           ; $4A1F: $28 $55

    push de                                       ; $4A21: $D5
    ld   hl, $0009                                ; $4A22: $21 $09 $00
    add  hl, de                                   ; $4A25: $19
    ld   a, [hl+]                                 ; $4A26: $2A
    ld   b, [hl]                                  ; $4A27: $46
    ld   c, a                                     ; $4A28: $4F
    ld   hl, $0007                                ; $4A29: $21 $07 $00
    add  hl, de                                   ; $4A2C: $19
    ld   a, [hl]                                  ; $4A2D: $7E
    sla  a                                        ; $4A2E: $CB $27
    push af                                       ; $4A30: $F5
    ld   h, $00                                   ; $4A31: $26 $00
    jr   nc, jr_003_4A38                          ; $4A33: $30 $03

    dec  h                                        ; $4A35: $25
    dec  a                                        ; $4A36: $3D
    cpl                                           ; $4A37: $2F

jr_003_4A38:
    ld   l, a                                     ; $4A38: $6F
    add  hl, bc                                   ; $4A39: $09
    ld   a, [$DE91]                               ; $4A3A: $FA $91 $DE
    cp   $0F                                      ; $4A3D: $FE $0F
    jr   nz, jr_003_4A45                          ; $4A3F: $20 $04

    pop  af                                       ; $4A41: $F1
    pop  de                                       ; $4A42: $D1
    jr   jr_003_4A6D                              ; $4A43: $18 $28

jr_003_4A45:
    push hl                                       ; $4A45: $E5
    ld   hl, $0008                                ; $4A46: $21 $08 $00
    add  hl, de                                   ; $4A49: $19
    ld   a, [hl]                                  ; $4A4A: $7E
    dec  a                                        ; $4A4B: $3D
    ld   hl, $48B6                                ; $4A4C: $21 $B6 $48
    call Call_003_4019                            ; $4A4F: $CD $19 $40
    ld   b, h                                     ; $4A52: $44
    ld   c, l                                     ; $4A53: $4D
    pop  hl                                       ; $4A54: $E1
    ld   a, l                                     ; $4A55: $7D
    sub  c                                        ; $4A56: $91
    ld   a, h                                     ; $4A57: $7C
    sbc  b                                        ; $4A58: $98
    ld   a, $FF                                   ; $4A59: $3E $FF
    adc  $00                                      ; $4A5B: $CE $00
    ld   e, a                                     ; $4A5D: $5F
    pop  af                                       ; $4A5E: $F1
    ld   a, e                                     ; $4A5F: $7B
    adc  $00                                      ; $4A60: $CE $00
    pop  de                                       ; $4A62: $D1
    jr   z, jr_003_4A6D                           ; $4A63: $28 $08

    ld   hl, $0001                                ; $4A65: $21 $01 $00
    add  hl, de                                   ; $4A68: $19
    res  5, [hl]                                  ; $4A69: $CB $AE
    jr   jr_003_4A6F                              ; $4A6B: $18 $02

jr_003_4A6D:
    ld   b, h                                     ; $4A6D: $44
    ld   c, l                                     ; $4A6E: $4D

jr_003_4A6F:
    ld   hl, $0009                                ; $4A6F: $21 $09 $00
    add  hl, de                                   ; $4A72: $19
    ld   a, c                                     ; $4A73: $79
    ld   [hl+], a                                 ; $4A74: $22
    ld   [hl], b                                  ; $4A75: $70

jr_003_4A76:
    call Call_003_4AE8                            ; $4A76: $CD $E8 $4A
    ld   hl, $DE90                                ; $4A79: $21 $90 $DE
    bit  2, [hl]                                  ; $4A7C: $CB $56
    jr   nz, jr_003_4A86                          ; $4A7E: $20 $06

    ld   hl, $DEA0                                ; $4A80: $21 $A0 $DE
    bit  7, [hl]                                  ; $4A83: $CB $7E
    ret  nz                                       ; $4A85: $C0

jr_003_4A86:
    ld   a, $05                                   ; $4A86: $3E $05
    call Call_003_4024                            ; $4A88: $CD $24 $40
    or   a                                        ; $4A8B: $B7
    jr   z, jr_003_4AD4                           ; $4A8C: $28 $46

    ld   c, a                                     ; $4A8E: $4F
    ld   hl, $0002                                ; $4A8F: $21 $02 $00
    add  hl, de                                   ; $4A92: $19
    ld   a, [hl-]                                 ; $4A93: $3A
    bit  6, [hl]                                  ; $4A94: $CB $76
    jr   z, jr_003_4A99                           ; $4A96: $28 $01

    cpl                                           ; $4A98: $2F

jr_003_4A99:
    or   a                                        ; $4A99: $B7
    jr   z, jr_003_4AD4                           ; $4A9A: $28 $38

    ld   h, a                                     ; $4A9C: $67
    call Call_003_4006                            ; $4A9D: $CD $06 $40
    ld   b, h                                     ; $4AA0: $44
    ld   c, l                                     ; $4AA1: $4D
    srl  b                                        ; $4AA2: $CB $38
    rr   c                                        ; $4AA4: $CB $19
    srl  b                                        ; $4AA6: $CB $38
    rr   c                                        ; $4AA8: $CB $19
    srl  b                                        ; $4AAA: $CB $38
    rr   c                                        ; $4AAC: $CB $19
    srl  b                                        ; $4AAE: $CB $38
    rr   c                                        ; $4AB0: $CB $19
    ld   a, b                                     ; $4AB2: $78
    or   c                                        ; $4AB3: $B1
    jr   z, jr_003_4AD4                           ; $4AB4: $28 $1E

    ld   hl, $0001                                ; $4AB6: $21 $01 $00
    add  hl, de                                   ; $4AB9: $19
    bit  7, [hl]                                  ; $4ABA: $CB $7E
    push af                                       ; $4ABC: $F5
    ld   hl, $0009                                ; $4ABD: $21 $09 $00
    add  hl, de                                   ; $4AC0: $19
    ld   a, [hl+]                                 ; $4AC1: $2A
    ld   h, [hl]                                  ; $4AC2: $66
    ld   l, a                                     ; $4AC3: $6F
    pop  af                                       ; $4AC4: $F1
    jr   nz, jr_003_4ACA                          ; $4AC5: $20 $03

    add  hl, bc                                   ; $4AC7: $09
    jr   jr_003_4AD0                              ; $4AC8: $18 $06

jr_003_4ACA:
    ld   a, l                                     ; $4ACA: $7D
    sub  c                                        ; $4ACB: $91
    ld   l, a                                     ; $4ACC: $6F
    ld   a, h                                     ; $4ACD: $7C
    sbc  b                                        ; $4ACE: $98
    ld   h, a                                     ; $4ACF: $67

jr_003_4AD0:
    ld   b, h                                     ; $4AD0: $44
    ld   c, l                                     ; $4AD1: $4D
    jr   jr_003_4ADB                              ; $4AD2: $18 $07

jr_003_4AD4:
    ld   hl, $0009                                ; $4AD4: $21 $09 $00
    add  hl, de                                   ; $4AD7: $19
    ld   a, [hl+]                                 ; $4AD8: $2A
    ld   b, [hl]                                  ; $4AD9: $46
    ld   c, a                                     ; $4ADA: $4F

Jump_003_4ADB:
jr_003_4ADB:
    call Call_003_4721                            ; $4ADB: $CD $21 $47
    ld   c, $13                                   ; $4ADE: $0E $13
    ld   b, l                                     ; $4AE0: $45
    call Call_003_4108                            ; $4AE1: $CD $08 $41
    inc  c                                        ; $4AE4: $0C
    ld   a, h                                     ; $4AE5: $7C
    ldh  [c], a                                   ; $4AE6: $E2
    ret                                           ; $4AE7: $C9


Call_003_4AE8:
    ld   a, $04                                   ; $4AE8: $3E $04
    call Call_003_4024                            ; $4AEA: $CD $24 $40
    and  $7F                                      ; $4AED: $E6 $7F
    ret  z                                        ; $4AEF: $C8

    ld   hl, $0002                                ; $4AF0: $21 $02 $00
    add  hl, de                                   ; $4AF3: $19
    add  [hl]                                     ; $4AF4: $86
    ld   [hl-], a                                 ; $4AF5: $32
    ret  nc                                       ; $4AF6: $D0

    ld   a, $40                                   ; $4AF7: $3E $40
    add  [hl]                                     ; $4AF9: $86
    ld   [hl], a                                  ; $4AFA: $77
    ret                                           ; $4AFB: $C9


    nop                                           ; $4AFC: $00
    nop                                           ; $4AFD: $00
    nop                                           ; $4AFE: $00
    nop                                           ; $4AFF: $00

SoundCommandCount::
    ld   [hl], $4B                                ; $4B00: $36 $4B
    ld   [hl], c                                  ; $4B02: $71
    ld   c, h                                     ; $4B03: $4C
    cp   c                                        ; $4B04: $B9

SoundSequencePointerTable::
    ld   c, l                                     ; $4B05: $4D
    ret                                           ; $4B06: $C9


    ld   c, a                                     ; $4B07: $4F
    add  hl, de                                   ; $4B08: $19
    ld   c, a                                     ; $4B09: $4F
    db   $DB                                      ; $4B0A: $DB
    ld   d, b                                     ; $4B0B: $50
    rst  RST_30                                   ; $4B0C: $F7
    ld   d, d                                     ; $4B0D: $52
    jp   c, $D954                                 ; $4B0E: $DA $54 $D9

    ld   d, [hl]                                  ; $4B11: $56
    cp   b                                        ; $4B12: $B8
    ld   e, b                                     ; $4B13: $58
    ld   sp, hl                                   ; $4B14: $F9
    ld   e, d                                     ; $4B15: $5A
    jp   nz, $875C                                ; $4B16: $C2 $5C $87

    ld   e, [hl]                                  ; $4B19: $5E
    add  b                                        ; $4B1A: $80
    ld   h, c                                     ; $4B1B: $61
    ld   h, h                                     ; $4B1C: $64
    nop                                           ; $4B1D: $00
    nop                                           ; $4B1E: $00
    ld   h, d                                     ; $4B1F: $62
    ld   hl, sp+$64                               ; $4B20: $F8 $64
    and  [hl]                                     ; $4B22: $A6
    ld   h, a                                     ; $4B23: $67
    ld   hl, $B867                                ; $4B24: $21 $67 $B8
    ld   l, c                                     ; $4B27: $69
    jr   @+$6B                                    ; $4B28: $18 $69

    add  l                                        ; $4B2A: $85
    nop                                           ; $4B2B: $00
    nop                                           ; $4B2C: $00
    nop                                           ; $4B2D: $00
    nop                                           ; $4B2E: $00
    ld   l, e                                     ; $4B2F: $6B
    ld   a, [hl-]                                 ; $4B30: $3A
    ld   l, e                                     ; $4B31: $6B
    ld   e, h                                     ; $4B32: $5C
    ld   l, e                                     ; $4B33: $6B
    ld   [hl], a                                  ; $4B34: $77
    ld   l, e                                     ; $4B35: $6B
    add  h                                        ; $4B36: $84
    ld   l, e                                     ; $4B37: $6B
    sub  [hl]                                     ; $4B38: $96
    ld   l, e                                     ; $4B39: $6B
    or   h                                        ; $4B3A: $B4
    ld   l, e                                     ; $4B3B: $6B
    jp   nc, $E36B                                ; $4B3C: $D2 $6B $E3

    ld   l, e                                     ; $4B3F: $6B
    db   $F4                                      ; $4B40: $F4
    ld   l, h                                     ; $4B41: $6C
    dec  b                                        ; $4B42: $05
    ld   l, h                                     ; $4B43: $6C
    ld   d, $6C                                   ; $4B44: $16 $6C
    dec  [hl]                                     ; $4B46: $35
    ld   l, h                                     ; $4B47: $6C
    ld   d, h                                     ; $4B48: $54
    ld   l, h                                     ; $4B49: $6C
    ld   l, a                                     ; $4B4A: $6F
    ld   l, h                                     ; $4B4B: $6C
    adc  d                                        ; $4B4C: $8A
    ld   l, h                                     ; $4B4D: $6C
    sbc  e                                        ; $4B4E: $9B
    ld   l, l                                     ; $4B4F: $6D
    rlca                                          ; $4B50: $07
    ld   l, l                                     ; $4B51: $6D
    inc  de                                       ; $4B52: $13
    ld   l, l                                     ; $4B53: $6D
    rra                                           ; $4B54: $1F
    ld   l, l                                     ; $4B55: $6D
    ld   [hl-], a                                 ; $4B56: $32
    ld   l, l                                     ; $4B57: $6D
    ld   c, h                                     ; $4B58: $4C
    ld   l, l                                     ; $4B59: $6D
    ld   h, [hl]                                  ; $4B5A: $66
    ld   l, l                                     ; $4B5B: $6D
    add  b                                        ; $4B5C: $80
    ld   l, l                                     ; $4B5D: $6D
    sbc  d                                        ; $4B5E: $9A
    ld   l, l                                     ; $4B5F: $6D
    cp   d                                        ; $4B60: $BA
    ld   l, [hl]                                  ; $4B61: $6E
    dec  h                                        ; $4B62: $25
    ld   l, [hl]                                  ; $4B63: $6E
    or   a                                        ; $4B64: $B7
    ld   l, [hl]                                  ; $4B65: $6E
    rst  WriteBgMapTilePair                       ; $4B66: $D7
    nop                                           ; $4B67: $00
    nop                                           ; $4B68: $00
    nop                                           ; $4B69: $00
    nop                                           ; $4B6A: $00
    ld   l, [hl]                                  ; $4B6B: $6E
    rst  RST_30                                   ; $4B6C: $F7
    ld   l, a                                     ; $4B6D: $6F
    ld   [bc], a                                  ; $4B6E: $02
    ld   l, a                                     ; $4B6F: $6F
    adc  h                                        ; $4B70: $8C
    ld   e, $08                                   ; $4B71: $1E $08
    ldh  a, [rTMA]                                ; $4B73: $F0 $06
    rst  RST_38                                   ; $4B75: $FF
    ld   bc, $0100                                ; $4B76: $01 $00 $01
    ld   e, $05                                   ; $4B79: $1E $05
    ld   d, b                                     ; $4B7B: $50
    dec  b                                        ; $4B7C: $05
    nop                                           ; $4B7D: $00
    nop                                           ; $4B7E: $00
    nop                                           ; $4B7F: $00
    ld   [bc], a                                  ; $4B80: $02
    rra                                           ; $4B81: $1F
    ld   [$07F0], sp                              ; $4B82: $08 $F0 $07
    nop                                           ; $4B85: $00
    nop                                           ; $4B86: $00
    nop                                           ; $4B87: $00
    nop                                           ; $4B88: $00
    rra                                           ; $4B89: $1F
    ld   [$03F0], sp                              ; $4B8A: $08 $F0 $03
    nop                                           ; $4B8D: $00
    nop                                           ; $4B8E: $00
    nop                                           ; $4B8F: $00
    nop                                           ; $4B90: $00
    rra                                           ; $4B91: $1F
    ld   [$07F0], sp                              ; $4B92: $08 $F0 $07
    sbc  [hl]                                     ; $4B95: $9E
    ld   a, b                                     ; $4B96: $78
    nop                                           ; $4B97: $00
    nop                                           ; $4B98: $00
    rra                                           ; $4B99: $1F
    ld   [$07E0], sp                              ; $4B9A: $08 $E0 $07
    nop                                           ; $4B9D: $00
    nop                                           ; $4B9E: $00
    nop                                           ; $4B9F: $00
    inc  bc                                       ; $4BA0: $03
    rra                                           ; $4BA1: $1F
    ld   [$03F0], sp                              ; $4BA2: $08 $F0 $03
    nop                                           ; $4BA5: $00
    nop                                           ; $4BA6: $00
    nop                                           ; $4BA7: $00
    nop                                           ; $4BA8: $00
    rra                                           ; $4BA9: $1F
    ld   [$08F0], sp                              ; $4BAA: $08 $F0 $08
    rst  RST_38                                   ; $4BAD: $FF
    ld   b, $00                                   ; $4BAE: $06 $00
    nop                                           ; $4BB0: $00
    ld   e, $08                                   ; $4BB1: $1E $08
    ldh  a, [rTAC]                                ; $4BB3: $F0 $07
    nop                                           ; $4BB5: $00
    nop                                           ; $4BB6: $00
    nop                                           ; $4BB7: $00
    nop                                           ; $4BB8: $00
    rra                                           ; $4BB9: $1F
    ld   [$03F0], sp                              ; $4BBA: $08 $F0 $03
    nop                                           ; $4BBD: $00
    nop                                           ; $4BBE: $00
    nop                                           ; $4BBF: $00
    nop                                           ; $4BC0: $00
    rra                                           ; $4BC1: $1F
    inc  bc                                       ; $4BC2: $03
    and  b                                        ; $4BC3: $A0
    inc  bc                                       ; $4BC4: $03
    nop                                           ; $4BC5: $00
    nop                                           ; $4BC6: $00
    nop                                           ; $4BC7: $00
    inc  b                                        ; $4BC8: $04
    ld   b, $00                                   ; $4BC9: $06 $00
    nop                                           ; $4BCB: $00
    nop                                           ; $4BCC: $00
    nop                                           ; $4BCD: $00
    nop                                           ; $4BCE: $00
    nop                                           ; $4BCF: $00
    nop                                           ; $4BD0: $00
    rra                                           ; $4BD1: $1F
    dec  b                                        ; $4BD2: $05
    add  b                                        ; $4BD3: $80
    ld   bc, $018E                                ; $4BD4: $01 $8E $01
    nop                                           ; $4BD7: $00
    dec  b                                        ; $4BD8: $05
    ld   e, $08                                   ; $4BD9: $1E $08
    ldh  a, [$FF03]                               ; $4BDB: $F0 $03
    nop                                           ; $4BDD: $00
    nop                                           ; $4BDE: $00
    nop                                           ; $4BDF: $00
    nop                                           ; $4BE0: $00
    ld   e, $00                                   ; $4BE1: $1E $00
    ldh  a, [$FF03]                               ; $4BE3: $F0 $03
    ei                                            ; $4BE5: $FB
    dec  b                                        ; $4BE6: $05
    nop                                           ; $4BE7: $00
    nop                                           ; $4BE8: $00
    rra                                           ; $4BE9: $1F
    ld   [$08F0], sp                              ; $4BEA: $08 $F0 $08
    rst  RST_38                                   ; $4BED: $FF
    inc  bc                                       ; $4BEE: $03
    nop                                           ; $4BEF: $00
    nop                                           ; $4BF0: $00
    rra                                           ; $4BF1: $1F
    nop                                           ; $4BF2: $00
    ldh  a, [rTIMA]                               ; $4BF3: $F0 $05
    rst  RST_38                                   ; $4BF5: $FF
    ld   bc, $0600                                ; $4BF6: $01 $00 $06
    ld   e, $00                                   ; $4BF9: $1E $00
    ldh  a, [rTIMA]                               ; $4BFB: $F0 $05
    nop                                           ; $4BFD: $00
    nop                                           ; $4BFE: $00
    nop                                           ; $4BFF: $00
    rlca                                          ; $4C00: $07
    rra                                           ; $4C01: $1F
    ld   b, $D0                                   ; $4C02: $06 $D0
    inc  bc                                       ; $4C04: $03
    nop                                           ; $4C05: $00
    nop                                           ; $4C06: $00
    nop                                           ; $4C07: $00

Jump_003_4C08:
    nop                                           ; $4C08: $00
    ld   e, $00                                   ; $4C09: $1E $00
    ldh  a, [rDIV]                                ; $4C0B: $F0 $04
    nop                                           ; $4C0D: $00
    nop                                           ; $4C0E: $00
    nop                                           ; $4C0F: $00
    nop                                           ; $4C10: $00
    rra                                           ; $4C11: $1F
    ld   [$06F0], sp                              ; $4C12: $08 $F0 $06
    nop                                           ; $4C15: $00
    nop                                           ; $4C16: $00
    nop                                           ; $4C17: $00

Jump_003_4C18:
    ld   [$031F], sp                              ; $4C18: $08 $1F $03
    db   $10                                      ; $4C1B: $10
    ld   b, $00                                   ; $4C1C: $06 $00
    nop                                           ; $4C1E: $00
    nop                                           ; $4C1F: $00
    nop                                           ; $4C20: $00
    rra                                           ; $4C21: $1F
    dec  b                                        ; $4C22: $05
    ld   d, b                                     ; $4C23: $50
    dec  b                                        ; $4C24: $05
    nop                                           ; $4C25: $00
    nop                                           ; $4C26: $00
    nop                                           ; $4C27: $00

Jump_003_4C28:
    nop                                           ; $4C28: $00
    rra                                           ; $4C29: $1F
    ld   [bc], a                                  ; $4C2A: $02
    and  b                                        ; $4C2B: $A0
    ld   [$0000], sp                              ; $4C2C: $08 $00 $00
    nop                                           ; $4C2F: $00
    add  hl, bc                                   ; $4C30: $09
    ld   e, $02                                   ; $4C31: $1E $02
    db   $10                                      ; $4C33: $10
    inc  b                                        ; $4C34: $04
    nop                                           ; $4C35: $00
    nop                                           ; $4C36: $00
    nop                                           ; $4C37: $00

Jump_003_4C38:
    nop                                           ; $4C38: $00
    rra                                           ; $4C39: $1F
    ld   [$05F0], sp                              ; $4C3A: $08 $F0 $05
    xor  $02                                      ; $4C3D: $EE $02
    nop                                           ; $4C3F: $00
    nop                                           ; $4C40: $00
    rra                                           ; $4C41: $1F
    ld   [$0410], sp                              ; $4C42: $08 $10 $04
    nop                                           ; $4C45: $00
    nop                                           ; $4C46: $00
    nop                                           ; $4C47: $00
    nop                                           ; $4C48: $00
    ld   e, $08                                   ; $4C49: $1E $08
    ldh  a, [rDIV]                                ; $4C4B: $F0 $04
    jp   nc, Jump_000_0005                        ; $4C4D: $D2 $05 $00

    ld   a, [bc]                                  ; $4C50: $0A
    rra                                           ; $4C51: $1F
    dec  b                                        ; $4C52: $05
    sub  b                                        ; $4C53: $90
    inc  b                                        ; $4C54: $04
    nop                                           ; $4C55: $00
    nop                                           ; $4C56: $00
    ld   [$1C00], sp                              ; $4C57: $08 $00 $1C
    ld   [$03F0], sp                              ; $4C5A: $08 $F0 $03
    call c, Call_000_0005                         ; $4C5D: $DC $05 $00
    dec  bc                                       ; $4C60: $0B
    ld   e, $08                                   ; $4C61: $1E $08
    ldh  a, [$FF03]                               ; $4C63: $F0 $03
    db   $FC                                      ; $4C65: $FC
    ld   bc, $0C00                                ; $4C66: $01 $00 $0C
    rra                                           ; $4C69: $1F
    ld   b, $B0                                   ; $4C6A: $06 $B0
    inc  bc                                       ; $4C6C: $03
    nop                                           ; $4C6D: $00
    nop                                           ; $4C6E: $00
    nop                                           ; $4C6F: $00
    nop                                           ; $4C70: $00
    ld   e, $08                                   ; $4C71: $1E $08
    ret  nc                                       ; $4C73: $D0

    inc  bc                                       ; $4C74: $03
    nop                                           ; $4C75: $00
    nop                                           ; $4C76: $00
    nop                                           ; $4C77: $00
    dec  c                                        ; $4C78: $0D
    inc  e                                        ; $4C79: $1C
    ld   [$03D0], sp                              ; $4C7A: $08 $D0 $03
    pop  de                                       ; $4C7D: $D1
    dec  b                                        ; $4C7E: $05
    nop                                           ; $4C7F: $00
    ld   c, $1F                                   ; $4C80: $0E $1F
    ld   [bc], a                                  ; $4C82: $02
    ldh  [rTIMA], a                               ; $4C83: $E0 $05
    nop                                           ; $4C85: $00
    nop                                           ; $4C86: $00
    nop                                           ; $4C87: $00
    rrca                                          ; $4C88: $0F
    ld   e, $02                                   ; $4C89: $1E $02
    ldh  a, [rP1]                                 ; $4C8B: $F0 $00
    jp   c, Jump_000_0003                         ; $4C8D: $DA $03 $00

    db   $10                                      ; $4C90: $10
    rra                                           ; $4C91: $1F
    inc  b                                        ; $4C92: $04
    ldh  a, [$FF03]                               ; $4C93: $F0 $03
    pop  hl                                       ; $4C95: $E1
    inc  e                                        ; $4C96: $1C
    nop                                           ; $4C97: $00
    nop                                           ; $4C98: $00
    inc  bc                                       ; $4C99: $03
    nop                                           ; $4C9A: $00
    ld   [hl], b                                  ; $4C9B: $70
    ld   bc, $6385                                ; $4C9C: $01 $85 $63
    nop                                           ; $4C9F: $00
    nop                                           ; $4CA0: $00
    rra                                           ; $4CA1: $1F
    dec  b                                        ; $4CA2: $05
    db   $10                                      ; $4CA3: $10
    ld   [$0000], sp                              ; $4CA4: $08 $00 $00
    nop                                           ; $4CA7: $00
    ld   de, $021E                                ; $4CA8: $11 $1E $02
    ldh  a, [rTIMA]                               ; $4CAB: $F0 $05
    nop                                           ; $4CAD: $00
    nop                                           ; $4CAE: $00
    nop                                           ; $4CAF: $00
    nop                                           ; $4CB0: $00
    ld   e, $06                                   ; $4CB1: $1E $06
    ldh  a, [rP1]                                 ; $4CB3: $F0 $00
    jp   c, Jump_000_0004                         ; $4CB5: $DA $04 $00

    nop                                           ; $4CB8: $00
    rst  RST_38                                   ; $4CB9: $FF
    rst  RST_38                                   ; $4CBA: $FF
    rst  RST_38                                   ; $4CBB: $FF
    rst  RST_38                                   ; $4CBC: $FF
    rst  RST_38                                   ; $4CBD: $FF
    rst  RST_38                                   ; $4CBE: $FF
    rst  RST_38                                   ; $4CBF: $FF
    rst  RST_38                                   ; $4CC0: $FF
    rst  RST_38                                   ; $4CC1: $FF
    rst  RST_38                                   ; $4CC2: $FF
    rst  RST_38                                   ; $4CC3: $FF
    rst  RST_38                                   ; $4CC4: $FF
    rst  RST_38                                   ; $4CC5: $FF
    rst  RST_38                                   ; $4CC6: $FF
    rst  RST_38                                   ; $4CC7: $FF
    rst  RST_38                                   ; $4CC8: $FF
    rst  RST_38                                   ; $4CC9: $FF
    rst  RST_38                                   ; $4CCA: $FF
    rst  RST_38                                   ; $4CCB: $FF
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    rst  RST_38                                   ; $4CCE: $FF
    rst  RST_38                                   ; $4CCF: $FF
    rst  RST_38                                   ; $4CD0: $FF
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    rst  RST_38                                   ; $4CD3: $FF
    rst  RST_38                                   ; $4CD4: $FF
    rst  RST_38                                   ; $4CD5: $FF
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    rst  RST_38                                   ; $4CD8: $FF
    db   $DD                                      ; $4CD9: $DD
    cp   e                                        ; $4CDA: $BB
    db   $DD                                      ; $4CDB: $DD
    rst  RST_38                                   ; $4CDC: $FF
    xor  $DD                                      ; $4CDD: $EE $DD
    xor  d                                        ; $4CDF: $AA
    cp   e                                        ; $4CE0: $BB
    rst  RST_38                                   ; $4CE1: $FF
    xor  $AA                                      ; $4CE2: $EE $AA
    call z, $FFFF                                 ; $4CE4: $CC $FF $FF
    db   $DD                                      ; $4CE7: $DD
    cp   e                                        ; $4CE8: $BB
    rst  RST_38                                   ; $4CE9: $FF
    cp   e                                        ; $4CEA: $BB
    ld   [hl], a                                  ; $4CEB: $77
    cp   e                                        ; $4CEC: $BB
    db   $DD                                      ; $4CED: $DD
    xor  $FF                                      ; $4CEE: $EE $FF
    rst  RST_38                                   ; $4CF0: $FF
    rst  RST_38                                   ; $4CF1: $FF
    rst  RST_38                                   ; $4CF2: $FF
    rst  RST_38                                   ; $4CF3: $FF
    xor  $CC                                      ; $4CF4: $EE $CC
    xor  d                                        ; $4CF6: $AA
    rst  RST_38                                   ; $4CF7: $FF
    xor  d                                        ; $4CF8: $AA
    rst  RST_38                                   ; $4CF9: $FF
    rst  RST_38                                   ; $4CFA: $FF
    rst  RST_38                                   ; $4CFB: $FF
    rst  RST_38                                   ; $4CFC: $FF
    rst  RST_38                                   ; $4CFD: $FF
    rst  RST_38                                   ; $4CFE: $FF
    rst  RST_38                                   ; $4CFF: $FF
    rst  RST_38                                   ; $4D00: $FF
    rst  RST_38                                   ; $4D01: $FF
    rst  RST_38                                   ; $4D02: $FF
    rst  RST_38                                   ; $4D03: $FF
    rst  RST_38                                   ; $4D04: $FF
    rst  RST_38                                   ; $4D05: $FF
    rst  RST_38                                   ; $4D06: $FF
    rst  RST_38                                   ; $4D07: $FF
    rst  RST_38                                   ; $4D08: $FF
    ld   [hl+], a                                 ; $4D09: $22
    ld   b, h                                     ; $4D0A: $44
    ld   [hl], a                                  ; $4D0B: $77
    xor  d                                        ; $4D0C: $AA
    db   $DD                                      ; $4D0D: $DD
    rst  RST_38                                   ; $4D0E: $FF
    rst  RST_38                                   ; $4D0F: $FF
    rst  RST_38                                   ; $4D10: $FF
    rst  RST_38                                   ; $4D11: $FF
    rst  RST_38                                   ; $4D12: $FF
    rst  RST_38                                   ; $4D13: $FF
    xor  $CC                                      ; $4D14: $EE $CC
    xor  d                                        ; $4D16: $AA
    adc  b                                        ; $4D17: $88
    ld   h, [hl]                                  ; $4D18: $66
    ld   de, $9944                                ; $4D19: $11 $44 $99
    xor  $FF                                      ; $4D1C: $EE $FF
    rst  RST_38                                   ; $4D1E: $FF
    rst  RST_38                                   ; $4D1F: $FF
    rst  RST_38                                   ; $4D20: $FF
    rst  RST_38                                   ; $4D21: $FF
    db   $DD                                      ; $4D22: $DD
    cp   e                                        ; $4D23: $BB
    sbc  c                                        ; $4D24: $99
    ld   [hl], a                                  ; $4D25: $77
    ld   d, l                                     ; $4D26: $55
    inc  sp                                       ; $4D27: $33
    ld   [hl+], a                                 ; $4D28: $22
    db   $DD                                      ; $4D29: $DD
    ld   [hl], a                                  ; $4D2A: $77
    cp   e                                        ; $4D2B: $BB
    db   $DD                                      ; $4D2C: $DD
    rst  RST_38                                   ; $4D2D: $FF
    rst  RST_38                                   ; $4D2E: $FF
    rst  RST_38                                   ; $4D2F: $FF
    rst  RST_38                                   ; $4D30: $FF
    rst  RST_38                                   ; $4D31: $FF
    rst  RST_38                                   ; $4D32: $FF
    rst  RST_38                                   ; $4D33: $FF
    xor  $BB                                      ; $4D34: $EE $BB
    sbc  c                                        ; $4D36: $99
    ld   [hl], a                                  ; $4D37: $77
    ld   d, l                                     ; $4D38: $55
    rst  RST_38                                   ; $4D39: $FF
    cp   e                                        ; $4D3A: $BB
    rst  RST_38                                   ; $4D3B: $FF
    nop                                           ; $4D3C: $00
    rst  RST_38                                   ; $4D3D: $FF
    rst  RST_38                                   ; $4D3E: $FF
    rst  RST_38                                   ; $4D3F: $FF
    rst  RST_38                                   ; $4D40: $FF
    rst  RST_38                                   ; $4D41: $FF
    rst  RST_38                                   ; $4D42: $FF
    rst  RST_38                                   ; $4D43: $FF
    rst  RST_38                                   ; $4D44: $FF
    xor  $BB                                      ; $4D45: $EE $BB
    nop                                           ; $4D47: $00
    db   $DD                                      ; $4D48: $DD
    rst  RST_38                                   ; $4D49: $FF
    inc  sp                                       ; $4D4A: $33
    ld   d, l                                     ; $4D4B: $55
    adc  b                                        ; $4D4C: $88
    db   $DD                                      ; $4D4D: $DD
    rst  RST_38                                   ; $4D4E: $FF
    rst  RST_38                                   ; $4D4F: $FF
    rst  RST_38                                   ; $4D50: $FF
    rst  RST_38                                   ; $4D51: $FF
    rst  RST_38                                   ; $4D52: $FF
    rst  RST_38                                   ; $4D53: $FF
    db   $DD                                      ; $4D54: $DD
    cp   e                                        ; $4D55: $BB

jr_003_4D56:
    sbc  c                                        ; $4D56: $99
    ld   [hl], a                                  ; $4D57: $77
    db   $DD                                      ; $4D58: $DD
    ld   [hl+], a                                 ; $4D59: $22
    adc  b                                        ; $4D5A: $88
    cp   e                                        ; $4D5B: $BB
    xor  $FF                                      ; $4D5C: $EE $FF
    rst  RST_38                                   ; $4D5E: $FF
    rst  RST_38                                   ; $4D5F: $FF
    rst  RST_38                                   ; $4D60: $FF
    rst  RST_38                                   ; $4D61: $FF
    rst  RST_38                                   ; $4D62: $FF
    rst  RST_38                                   ; $4D63: $FF
    xor  $DD                                      ; $4D64: $EE $DD
    call z, Call_003_55AA                         ; $4D66: $CC $AA $55
    rst  RST_38                                   ; $4D69: $FF
    inc  sp                                       ; $4D6A: $33
    ld   b, h                                     ; $4D6B: $44
    ld   [hl], a                                  ; $4D6C: $77
    xor  d                                        ; $4D6D: $AA
    call z, $FFEE                                 ; $4D6E: $CC $EE $FF
    rst  RST_38                                   ; $4D71: $FF
    xor  $CC                                      ; $4D72: $EE $CC
    cp   e                                        ; $4D74: $BB
    adc  b                                        ; $4D75: $88
    ld   h, [hl]                                  ; $4D76: $66
    ld   b, h                                     ; $4D77: $44
    rst  RST_38                                   ; $4D78: $FF
    call z, $88AA                                 ; $4D79: $CC $AA $88
    xor  d                                        ; $4D7C: $AA
    db   $DD                                      ; $4D7D: $DD
    xor  $FF                                      ; $4D7E: $EE $FF
    rst  RST_38                                   ; $4D80: $FF
    rst  RST_38                                   ; $4D81: $FF
    xor  $DD                                      ; $4D82: $EE $DD
    xor  d                                        ; $4D84: $AA
    sbc  c                                        ; $4D85: $99
    xor  d                                        ; $4D86: $AA
    call z, $FFEE                                 ; $4D87: $CC $EE $FF
    rst  RST_38                                   ; $4D8A: $FF
    rst  RST_38                                   ; $4D8B: $FF
    rst  RST_38                                   ; $4D8C: $FF
    rst  RST_38                                   ; $4D8D: $FF
    rst  RST_38                                   ; $4D8E: $FF
    rst  RST_38                                   ; $4D8F: $FF
    rst  RST_38                                   ; $4D90: $FF
    rst  RST_38                                   ; $4D91: $FF
    rst  RST_38                                   ; $4D92: $FF
    rst  RST_38                                   ; $4D93: $FF
    rst  RST_38                                   ; $4D94: $FF
    rst  RST_38                                   ; $4D95: $FF

jr_003_4D96:
    rst  RST_38                                   ; $4D96: $FF
    rst  RST_38                                   ; $4D97: $FF
    rst  RST_38                                   ; $4D98: $FF
    adc  b                                        ; $4D99: $88
    cp   e                                        ; $4D9A: $BB
    rst  RST_38                                   ; $4D9B: $FF
    rst  RST_38                                   ; $4D9C: $FF
    rst  RST_38                                   ; $4D9D: $FF
    rst  RST_38                                   ; $4D9E: $FF
    rst  RST_38                                   ; $4D9F: $FF
    rst  RST_38                                   ; $4DA0: $FF
    rst  RST_38                                   ; $4DA1: $FF
    rst  RST_38                                   ; $4DA2: $FF
    rst  RST_38                                   ; $4DA3: $FF
    xor  $CC                                      ; $4DA4: $EE $CC
    xor  d                                        ; $4DA6: $AA
    xor  d                                        ; $4DA7: $AA
    rst  RST_38                                   ; $4DA8: $FF

jr_003_4DA9:
    rst  RST_38                                   ; $4DA9: $FF
    rst  RST_38                                   ; $4DAA: $FF
    rst  RST_38                                   ; $4DAB: $FF
    rst  RST_38                                   ; $4DAC: $FF
    rst  RST_38                                   ; $4DAD: $FF
    rst  RST_38                                   ; $4DAE: $FF
    rst  RST_38                                   ; $4DAF: $FF
    rst  RST_38                                   ; $4DB0: $FF
    rst  RST_38                                   ; $4DB1: $FF
    rst  RST_38                                   ; $4DB2: $FF
    rst  RST_38                                   ; $4DB3: $FF
    rst  RST_38                                   ; $4DB4: $FF
    rst  RST_38                                   ; $4DB5: $FF
    rst  RST_38                                   ; $4DB6: $FF
    rst  RST_38                                   ; $4DB7: $FF
    rst  RST_38                                   ; $4DB8: $FF
    nop                                           ; $4DB9: $00
    nop                                           ; $4DBA: $00
    nop                                           ; $4DBB: $00
    nop                                           ; $4DBC: $00
    nop                                           ; $4DBD: $00
    nop                                           ; $4DBE: $00
    nop                                           ; $4DBF: $00
    nop                                           ; $4DC0: $00
    nop                                           ; $4DC1: $00
    nop                                           ; $4DC2: $00
    nop                                           ; $4DC3: $00
    nop                                           ; $4DC4: $00
    nop                                           ; $4DC5: $00
    nop                                           ; $4DC6: $00
    nop                                           ; $4DC7: $00
    nop                                           ; $4DC8: $00
    nop                                           ; $4DC9: $00
    ld   c, l                                     ; $4DCA: $4D
    jp   nc, $274E                                ; $4DCB: $D2 $4E $27

    ld   c, [hl]                                  ; $4DCE: $4E
    cp   [hl]                                     ; $4DCF: $BE
    ld   c, a                                     ; $4DD0: $4F
    jr   jr_003_4DDD                              ; $4DD1: $18 $0A

    inc  bc                                       ; $4DD3: $03
    jr   jr_003_4D56                              ; $4DD4: $18 $80

    dec  b                                        ; $4DD6: $05
    ld   bc, $0655                                ; $4DD7: $01 $55 $06
    ret  z                                        ; $4DDA: $C8

    rlca                                          ; $4DDB: $07
    inc  c                                        ; $4DDC: $0C

jr_003_4DDD:
    ld   [$0922], sp                              ; $4DDD: $08 $22 $09
    ld   bc, $0399                                ; $4DE0: $01 $99 $03
    adc  b                                        ; $4DE3: $88
    inc  b                                        ; $4DE4: $04
    nop                                           ; $4DE5: $00
    inc  b                                        ; $4DE6: $04
    nop                                           ; $4DE7: $00
    rst  RST_18                                   ; $4DE8: $DF
    inc  bc                                       ; $4DE9: $03
    xor  b                                        ; $4DEA: $A8
    add  c                                        ; $4DEB: $81
    adc  b                                        ; $4DEC: $88
    and  a                                        ; $4DED: $A7
    or   e                                        ; $4DEE: $B3
    or   h                                        ; $4DEF: $B4
    add  c                                        ; $4DF0: $81
    adc  b                                        ; $4DF1: $88
    ld   [bc], a                                  ; $4DF2: $02
    and  a                                        ; $4DF3: $A7
    adc  b                                        ; $4DF4: $88
    adc  h                                        ; $4DF5: $8C
    adc  b                                        ; $4DF6: $88
    adc  l                                        ; $4DF7: $8D
    sub  b                                        ; $4DF8: $90
    rst  RST_28                                   ; $4DF9: $EF
    sub  b                                        ; $4DFA: $90
    adc  a                                        ; $4DFB: $8F
    sub  b                                        ; $4DFC: $90
    adc  l                                        ; $4DFD: $8D
    rst  RST_08                                   ; $4DFE: $CF
    adc  [hl]                                     ; $4DFF: $8E
    adc  l                                        ; $4E00: $8D
    adc  [hl]                                     ; $4E01: $8E
    adc  e                                        ; $4E02: $8B
    call $8C8D                                    ; $4E03: $CD $8D $8C
    adc  l                                        ; $4E06: $8D
    adc  c                                        ; $4E07: $89
    adc  b                                        ; $4E08: $88
    add  [hl]                                     ; $4E09: $86
    add  h                                        ; $4E0A: $84
    add  e                                        ; $4E0B: $83
    ld   [de], a                                  ; $4E0C: $12
    nop                                           ; $4E0D: $00
    ld   c, [hl]                                  ; $4E0E: $4E
    inc  e                                        ; $4E0F: $1C
    pop  bc                                       ; $4E10: $C1
    and  c                                        ; $4E11: $A1
    add  hl, bc                                   ; $4E12: $09
    ld   [bc], a                                  ; $4E13: $02
    jr   jr_003_4D96                              ; $4E14: $18 $80

    add  c                                        ; $4E16: $81
    adc  b                                        ; $4E17: $88
    ld   c, $01                                   ; $4E18: $0E $01
    ld   c, l                                     ; $4E1A: $4D
    and  $D9                                      ; $4E1B: $E6 $D9
    cp   c                                        ; $4E1D: $B9
    add  hl, bc                                   ; $4E1E: $09
    ld   bc, $0399                                ; $4E1F: $01 $99 $03
    adc  b                                        ; $4E22: $88
    ld   d, $4D                                   ; $4E23: $16 $4D
    db   $E4                                      ; $4E25: $E4
    rla                                           ; $4E26: $17
    jr   jr_003_4DA9                              ; $4E27: $18 $80

    ld   b, $C8                                   ; $4E29: $06 $C8
    rlca                                          ; $4E2B: $07
    inc  c                                        ; $4E2C: $0C
    ld   [$0922], sp                              ; $4E2D: $08 $22 $09
    ld   bc, $04A0                                ; $4E30: $01 $A0 $04
    nop                                           ; $4E33: $00
    ld   b, $C8                                   ; $4E34: $06 $C8
    ld   [$0922], sp                              ; $4E36: $08 $22 $09
    ld   bc, $BCDB                                ; $4E39: $01 $DB $BC
    and  b                                        ; $4E3C: $A0
    and  b                                        ; $4E3D: $A0
    inc  bc                                       ; $4E3E: $03
    xor  a                                        ; $4E3F: $AF
    or   b                                        ; $4E40: $B0
    and  b                                        ; $4E41: $A0
    and  e                                        ; $4E42: $A3
    and  h                                        ; $4E43: $A4
    add  e                                        ; $4E44: $83
    inc  bc                                       ; $4E45: $03
    sbc  b                                        ; $4E46: $98
    inc  bc                                       ; $4E47: $03
    xor  b                                        ; $4E48: $A8
    and  a                                        ; $4E49: $A7
    xor  l                                        ; $4E4A: $AD
    xor  h                                        ; $4E4B: $AC
    and  b                                        ; $4E4C: $A0
    add  sp, -$1A                                 ; $4E4D: $E8 $E6
    ld   [bc], a                                  ; $4E4F: $02
    and  h                                        ; $4E50: $A4
    inc  bc                                       ; $4E51: $03
    sbc  b                                        ; $4E52: $98
    sbc  c                                        ; $4E53: $99
    or   h                                        ; $4E54: $B4
    sub  d                                        ; $4E55: $92
    or   d                                        ; $4E56: $B2
    xor  a                                        ; $4E57: $AF
    ret  nc                                       ; $4E58: $D0

    add  hl, bc                                   ; $4E59: $09
    inc  bc                                       ; $4E5A: $03
    ld   b, $32                                   ; $4E5B: $06 $32
    ld   [$040C], sp                              ; $4E5D: $08 $0C $04
    nop                                           ; $4E60: $00
    add  hl, de                                   ; $4E61: $19
    db   $10                                      ; $4E62: $10
    sbc  e                                        ; $4E63: $9B
    add  hl, de                                   ; $4E64: $19
    ld   de, $1999                                ; $4E65: $11 $99 $19
    ld   bc, $8D03                                ; $4E68: $01 $03 $8D
    add  hl, de                                   ; $4E6B: $19
    ld   de, $1988                                ; $4E6C: $11 $88 $19
    db   $10                                      ; $4E6F: $10
    add  [hl]                                     ; $4E70: $86
    add  hl, de                                   ; $4E71: $19
    ld   de, $198C                                ; $4E72: $11 $8C $19
    ld   bc, $1984                                ; $4E75: $01 $84 $19
    ld   de, $0E8D                                ; $4E78: $11 $8D $0E
    ld   [bc], a                                  ; $4E7B: $02
    ld   c, [hl]                                  ; $4E7C: $4E
    ld   e, a                                     ; $4E7D: $5F
    add  hl, de                                   ; $4E7E: $19
    db   $10                                      ; $4E7F: $10
    sub  h                                        ; $4E80: $94
    add  hl, de                                   ; $4E81: $19
    ld   de, $1993                                ; $4E82: $11 $93 $19
    ld   bc, $198D                                ; $4E85: $01 $8D $19
    ld   de, $1990                                ; $4E88: $11 $90 $19
    db   $10                                      ; $4E8B: $10
    adc  a                                        ; $4E8C: $8F
    add  hl, de                                   ; $4E8D: $19
    ld   de, $198A                                ; $4E8E: $11 $8A $19
    ld   bc, $198D                                ; $4E91: $01 $8D $19
    ld   de, $948C                                ; $4E94: $11 $8C $94
    adc  a                                        ; $4E97: $8F
    adc  l                                        ; $4E98: $8D
    adc  b                                        ; $4E99: $88
    sub  h                                        ; $4E9A: $94
    adc  b                                        ; $4E9B: $88
    inc  bc                                       ; $4E9C: $03
    sub  h                                        ; $4E9D: $94
    inc  bc                                       ; $4E9E: $03
    adc  b                                        ; $4E9F: $88
    sub  d                                        ; $4EA0: $92
    adc  l                                        ; $4EA1: $8D
    adc  e                                        ; $4EA2: $8B
    add  [hl]                                     ; $4EA3: $86
    sub  d                                        ; $4EA4: $92
    add  [hl]                                     ; $4EA5: $86
    inc  bc                                       ; $4EA6: $03
    sub  d                                        ; $4EA7: $92
    sbc  [hl]                                     ; $4EA8: $9E
    inc  bc                                       ; $4EA9: $03
    sub  d                                        ; $4EAA: $92
    adc  l                                        ; $4EAB: $8D
    adc  a                                        ; $4EAC: $8F

jr_003_4EAD:
    adc  b                                        ; $4EAD: $88
    add  c                                        ; $4EAE: $81
    adc  b                                        ; $4EAF: $88
    adc  l                                        ; $4EB0: $8D
    sub  d                                        ; $4EB1: $92
    sub  d                                        ; $4EB2: $92
    adc  l                                        ; $4EB3: $8D
    adc  l                                        ; $4EB4: $8D
    add  [hl]                                     ; $4EB5: $86
    adc  l                                        ; $4EB6: $8D
    adc  b                                        ; $4EB7: $88
    adc  b                                        ; $4EB8: $88
    add  c                                        ; $4EB9: $81
    ld   d, $4E                                   ; $4EBA: $16 $4E
    ld   [hl-], a                                 ; $4EBC: $32
    rla                                           ; $4EBD: $17
    rlca                                          ; $4EBE: $07
    inc  bc                                       ; $4EBF: $03
    ld   b, $E6                                   ; $4EC0: $06 $E6
    ld   [$0B0A], sp                              ; $4EC2: $08 $0A $0B
    inc  c                                        ; $4EC5: $0C
    and  b                                        ; $4EC6: $A0
    inc  b                                        ; $4EC7: $04
    nop                                           ; $4EC8: $00
    reti                                          ; $4EC9: $D9


    sbc  c                                        ; $4ECA: $99
    sbc  c                                        ; $4ECB: $99
    and  b                                        ; $4ECC: $A0
    and  b                                        ; $4ECD: $A0
    cp   c                                        ; $4ECE: $B9
    cp   c                                        ; $4ECF: $B9
    and  b                                        ; $4ED0: $A0
    sbc  c                                        ; $4ED1: $99
    sbc  b                                        ; $4ED2: $98
    sub  l                                        ; $4ED3: $95
    sub  h                                        ; $4ED4: $94
    sub  d                                        ; $4ED5: $92
    adc  a                                        ; $4ED6: $8F
    sub  b                                        ; $4ED7: $90
    adc  l                                        ; $4ED8: $8D
    rst  RST_08                                   ; $4ED9: $CF
    adc  b                                        ; $4EDA: $88
    adc  b                                        ; $4EDB: $88
    and  b                                        ; $4EDC: $A0
    reti                                          ; $4EDD: $D9


    sbc  b                                        ; $4EDE: $98
    sub  [hl]                                     ; $4EDF: $96
    sbc  b                                        ; $4EE0: $98
    sub  h                                        ; $4EE1: $94
    rst  WriteBgMapTilePair                       ; $4EE2: $D7
    sub  [hl]                                     ; $4EE3: $96
    sub  h                                        ; $4EE4: $94
    sub  [hl]                                     ; $4EE5: $96
    sub  d                                        ; $4EE6: $92
    sub  l                                        ; $4EE7: $95
    sub  h                                        ; $4EE8: $94
    sub  l                                        ; $4EE9: $95
    sub  d                                        ; $4EEA: $92
    sub  b                                        ; $4EEB: $90
    adc  h                                        ; $4EEC: $8C
    adc  l                                        ; $4EED: $8D
    adc  b                                        ; $4EEE: $88
    xor  c                                        ; $4EEF: $A9
    and  [hl]                                     ; $4EF0: $A6
    call $B4AD                                    ; $4EF1: $CD $AD $B4
    xor  l                                        ; $4EF4: $AD
    or   h                                        ; $4EF5: $B4
    xor  l                                        ; $4EF6: $AD
    or   h                                        ; $4EF7: $B4
    xor  l                                        ; $4EF8: $AD
    or   h                                        ; $4EF9: $B4
    xor  l                                        ; $4EFA: $AD
    or   h                                        ; $4EFB: $B4
    xor  l                                        ; $4EFC: $AD
    or   h                                        ; $4EFD: $B4
    xor  a                                        ; $4EFE: $AF
    or   [hl]                                     ; $4EFF: $B6
    xor  b                                        ; $4F00: $A8
    or   h                                        ; $4F01: $B4
    xor  l                                        ; $4F02: $AD
    or   h                                        ; $4F03: $B4
    xor  h                                        ; $4F04: $AC
    or   h                                        ; $4F05: $B4
    xor  e                                        ; $4F06: $AB
    or   d                                        ; $4F07: $B2
    xor  d                                        ; $4F08: $AA
    or   d                                        ; $4F09: $B2
    xor  c                                        ; $4F0A: $A9
    or   d                                        ; $4F0B: $B2
    sub  b                                        ; $4F0C: $90
    adc  h                                        ; $4F0D: $8C
    adc  l                                        ; $4F0E: $8D
    adc  b                                        ; $4F0F: $88
    or   l                                        ; $4F10: $B5
    or   d                                        ; $4F11: $B2
    xor  l                                        ; $4F12: $AD
    cp   c                                        ; $4F13: $B9
    ld   d, $4E                                   ; $4F14: $16 $4E
    rst  RST_00                                   ; $4F16: $C7
    rla                                           ; $4F17: $17
    rla                                           ; $4F18: $17
    nop                                           ; $4F19: $00
    ld   c, a                                     ; $4F1A: $4F
    ld   [hl+], a                                 ; $4F1B: $22
    ld   c, a                                     ; $4F1C: $4F
    sbc  d                                        ; $4F1D: $9A
    ld   c, a                                     ; $4F1E: $4F
    and  d                                        ; $4F1F: $A2
    ld   c, a                                     ; $4F20: $4F
    jp   c, Jump_000_050A                         ; $4F21: $DA $0A $05

    dec  b                                        ; $4F24: $05
    ld   bc, $0755                                ; $4F25: $01 $55 $07
    dec  bc                                       ; $4F28: $0B
    inc  b                                        ; $4F29: $04
    nop                                           ; $4F2A: $00
    jr   jr_003_4EAD                              ; $4F2B: $18 $80

    ld   b, $F5                                   ; $4F2D: $06 $F5
    add  hl, bc                                   ; $4F2F: $09
    ld   [bc], a                                  ; $4F30: $02
    inc  b                                        ; $4F31: $04
    nop                                           ; $4F32: $00
    ld   [$BB00], sp                              ; $4F33: $08 $00 $BB
    cp   [hl]                                     ; $4F36: $BE
    cp   l                                        ; $4F37: $BD
    cp   c                                        ; $4F38: $B9
    cp   e                                        ; $4F39: $BB
    inc  bc                                       ; $4F3A: $03
    xor  d                                        ; $4F3B: $AA
    xor  b                                        ; $4F3C: $A8
    and  c                                        ; $4F3D: $A1
    inc  bc                                       ; $4F3E: $03
    or   a                                        ; $4F3F: $B7
    sbc  c                                        ; $4F40: $99
    sbc  e                                        ; $4F41: $9B
    sbc  l                                        ; $4F42: $9D
    sbc  [hl]                                     ; $4F43: $9E
    sbc  l                                        ; $4F44: $9D
    sbc  c                                        ; $4F45: $99
    ld   [de], a                                  ; $4F46: $12
    ld   b, b                                     ; $4F47: $40
    ld   c, a                                     ; $4F48: $4F
    ld   d, l                                     ; $4F49: $55
    ld   bc, $08B6                                ; $4F4A: $01 $B6 $08
    rrca                                          ; $4F4D: $0F
    ld   [bc], a                                  ; $4F4E: $02
    ld   bc, $0ED6                                ; $4F4F: $01 $D6 $0E
    ld   bc, $314F                                ; $4F52: $01 $4F $31
    cp   e                                        ; $4F55: $BB
    ld   [$010F], sp                              ; $4F56: $08 $0F $01
    db   $DB                                      ; $4F59: $DB
    ld   [$9E00], sp                              ; $4F5A: $08 $00 $9E
    inc  bc                                       ; $4F5D: $03
    adc  b                                        ; $4F5E: $88
    inc  b                                        ; $4F5F: $04
    ld   c, b                                     ; $4F60: $48
    ld   [$8A00], sp                              ; $4F61: $08 $00 $8A
    ld   [$8A0F], sp                              ; $4F64: $08 $0F $8A
    ld   bc, $08CA                                ; $4F67: $01 $CA $08
    nop                                           ; $4F6A: $00
    adc  l                                        ; $4F6B: $8D
    adc  a                                        ; $4F6C: $8F
    ld   [bc], a                                  ; $4F6D: $02
    ret  z                                        ; $4F6E: $C8

    adc  d                                        ; $4F6F: $8A
    adc  b                                        ; $4F70: $88
    ld   [de], a                                  ; $4F71: $12
    nop                                           ; $4F72: $00
    ld   c, a                                     ; $4F73: $4F
    adc  b                                        ; $4F74: $88
    add  [hl]                                     ; $4F75: $86
    adc  b                                        ; $4F76: $88
    and  l                                        ; $4F77: $A5
    add  e                                        ; $4F78: $83
    add  l                                        ; $4F79: $85
    and  c                                        ; $4F7A: $A1
    inc  bc                                       ; $4F7B: $03
    sub  a                                        ; $4F7C: $97
    sbc  c                                        ; $4F7D: $99
    sbc  e                                        ; $4F7E: $9B
    sbc  [hl]                                     ; $4F7F: $9E
    cp   l                                        ; $4F80: $BD
    sbc  [hl]                                     ; $4F81: $9E
    inc  bc                                       ; $4F82: $03
    adc  b                                        ; $4F83: $88
    ld   c, $01                                   ; $4F84: $0E $01
    ld   c, a                                     ; $4F86: $4F
    ld   e, a                                     ; $4F87: $5F
    cp   [hl]                                     ; $4F88: $BE
    inc  bc                                       ; $4F89: $03
    xor  b                                        ; $4F8A: $A8
    and  l                                        ; $4F8B: $A5
    and  c                                        ; $4F8C: $A1
    ld   bc, $08A3                                ; $4F8D: $01 $A3 $08
    rrca                                          ; $4F90: $0F
    ld   [bc], a                                  ; $4F91: $02
    ld   bc, $08C3                                ; $4F92: $01 $C3 $08
    nop                                           ; $4F95: $00
    ld   d, $4F                                   ; $4F96: $16 $4F
    add  hl, hl                                   ; $4F98: $29
    rla                                           ; $4F99: $17
    rlca                                          ; $4F9A: $07
    dec  b                                        ; $4F9B: $05
    ld   [bc], a                                  ; $4F9C: $02
    ld   h, b                                     ; $4F9D: $60
    ld   d, $4F                                   ; $4F9E: $16 $4F
    add  hl, hl                                   ; $4FA0: $29
    rla                                           ; $4FA1: $17
    add  hl, bc                                   ; $4FA2: $09
    ld   [bc], a                                  ; $4FA3: $02
    rlca                                          ; $4FA4: $07
    inc  bc                                       ; $4FA5: $03
    ld   b, $FF                                   ; $4FA6: $06 $FF
    ld   [$0405], sp                              ; $4FA8: $08 $05 $04
    nop                                           ; $4FAB: $00
    inc  b                                        ; $4FAC: $04
    nop                                           ; $4FAD: $00
    rst  RST_08                                   ; $4FAE: $CF
    call $CACB                                    ; $4FAF: $CD $CB $CA
    ret  z                                        ; $4FB2: $C8

    call Call_000_0012                            ; $4FB3: $CD $12 $00
    ld   c, a                                     ; $4FB6: $4F
    cp   [hl]                                     ; $4FB7: $BE
    jp   nc, Jump_000_0ED1                        ; $4FB8: $D2 $D1 $0E

    ld   bc, $AC4F                                ; $4FBB: $01 $4F $AC
    ld   [bc], a                                  ; $4FBE: $02
    rst  RST_08                                   ; $4FBF: $CF
    or   c                                        ; $4FC0: $B1
    ld   [bc], a                                  ; $4FC1: $02
    jp   nc, $02AD                                ; $4FC2: $D2 $AD $02

    call nc, $CFB1                                ; $4FC5: $D4 $B1 $CF
    call $CAC8                                    ; $4FC8: $CD $C8 $CA
    ld   [bc], a                                  ; $4FCB: $02
    jp   nc, $02AD                                ; $4FCC: $D2 $AD $02

    call nc, $CFAE                                ; $4FCF: $D4 $AE $CF
    call $CF02                                    ; $4FD2: $CD $02 $CF
    xor  d                                        ; $4FD5: $AA
    ld   d, $4F                                   ; $4FD6: $16 $4F
    xor  d                                        ; $4FD8: $AA
    rla                                           ; $4FD9: $17
    rla                                           ; $4FDA: $17
    nop                                           ; $4FDB: $00
    ld   c, a                                     ; $4FDC: $4F
    db   $E4                                      ; $4FDD: $E4
    ld   d, b                                     ; $4FDE: $50
    ld   c, l                                     ; $4FDF: $4D
    ld   d, b                                     ; $4FE0: $50
    or   e                                        ; $4FE1: $B3
    ld   d, b                                     ; $4FE2: $50
    or   $0A                                      ; $4FE3: $F6 $0A
    dec  b                                        ; $4FE5: $05
    inc  b                                        ; $4FE6: $04
    nop                                           ; $4FE7: $00
    dec  b                                        ; $4FE8: $05
    ld   bc, $0699                                ; $4FE9: $01 $99 $06
    ret  z                                        ; $4FEC: $C8

    rlca                                          ; $4FED: $07
    inc  c                                        ; $4FEE: $0C
    ld   [$1820], sp                              ; $4FEF: $08 $20 $18
    ld   b, b                                     ; $4FF2: $40
    add  hl, bc                                   ; $4FF3: $09
    ld   bc, $B7B4                                ; $4FF4: $01 $B4 $B7
    sub  [hl]                                     ; $4FF7: $96
    cp   h                                        ; $4FF8: $BC
    sbc  e                                        ; $4FF9: $9B
    add  b                                        ; $4FFA: $80
    inc  bc                                       ; $4FFB: $03
    adc  b                                        ; $4FFC: $88
    add  a                                        ; $4FFD: $87
    adc  b                                        ; $4FFE: $88
    add  h                                        ; $4FFF: $84
    and  e                                        ; $5000: $A3
    add  e                                        ; $5001: $83
    adc  b                                        ; $5002: $88
    adc  e                                        ; $5003: $8B
    adc  d                                        ; $5004: $8A
    adc  l                                        ; $5005: $8D
    adc  e                                        ; $5006: $8B
    ld   l, d                                     ; $5007: $6A
    ld   l, b                                     ; $5008: $68
    adc  d                                        ; $5009: $8A
    adc  l                                        ; $500A: $8D
    nop                                           ; $500B: $00
    ld   l, a                                     ; $500C: $6F
    ld   [hl], b                                  ; $500D: $70
    ld   l, a                                     ; $500E: $6F
    ld   [hl], b                                  ; $500F: $70
    ld   l, a                                     ; $5010: $6F
    ld   [hl], b                                  ; $5011: $70
    nop                                           ; $5012: $00
    adc  [hl]                                     ; $5013: $8E
    adc  a                                        ; $5014: $8F
    sub  h                                        ; $5015: $94
    sub  a                                        ; $5016: $97
    sub  [hl]                                     ; $5017: $96
    adc  a                                        ; $5018: $8F
    sub  b                                        ; $5019: $90
    sub  d                                        ; $501A: $92
    sub  h                                        ; $501B: $94
    sub  b                                        ; $501C: $90
    adc  a                                        ; $501D: $8F
    ld   l, l                                     ; $501E: $6D
    ld   l, e                                     ; $501F: $6B
    adc  l                                        ; $5020: $8D
    adc  d                                        ; $5021: $8A
    nop                                           ; $5022: $00
    ld   l, e                                     ; $5023: $6B
    ld   l, l                                     ; $5024: $6D
    ld   l, e                                     ; $5025: $6B
    ld   l, l                                     ; $5026: $6D
    ld   l, e                                     ; $5027: $6B
    ld   l, l                                     ; $5028: $6D
    nop                                           ; $5029: $00
    adc  e                                        ; $502A: $8B
    adc  b                                        ; $502B: $88
    adc  d                                        ; $502C: $8A
    adc  a                                        ; $502D: $8F
    ld   bc, $01A3                                ; $502E: $01 $A3 $01
    add  e                                        ; $5031: $83
    adc  b                                        ; $5032: $88
    adc  d                                        ; $5033: $8A
    adc  e                                        ; $5034: $8B
    adc  l                                        ; $5035: $8D
    adc  a                                        ; $5036: $8F
    sub  b                                        ; $5037: $90
    adc  l                                        ; $5038: $8D
    nop                                           ; $5039: $00
    ld   [hl], e                                  ; $503A: $73
    ld   [hl], h                                  ; $503B: $74
    ld   [hl], e                                  ; $503C: $73
    ld   [hl], h                                  ; $503D: $74
    ld   [hl], e                                  ; $503E: $73
    ld   [hl], h                                  ; $503F: $74
    nop                                           ; $5040: $00
    sub  c                                        ; $5041: $91
    sub  e                                        ; $5042: $93
    ld   bc, $08B4                                ; $5043: $01 $B4 $08
    ld   hl, $B401                                ; $5046: $21 $01 $B4
    ld   d, $4F                                   ; $5049: $16 $4F
    and  $17                                      ; $504B: $E6 $17
    ld   [bc], a                                  ; $504D: $02
    add  b                                        ; $504E: $80
    inc  b                                        ; $504F: $04
    nop                                           ; $5050: $00
    ld   b, $C8                                   ; $5051: $06 $C8
    rlca                                          ; $5053: $07
    inc  b                                        ; $5054: $04
    ld   [$1820], sp                              ; $5055: $08 $20 $18
    ld   b, b                                     ; $5058: $40
    add  hl, bc                                   ; $5059: $09
    ld   bc, $B7B4                                ; $505A: $01 $B4 $B7
    sub  [hl]                                     ; $505D: $96
    cp   h                                        ; $505E: $BC
    sbc  e                                        ; $505F: $9B
    add  b                                        ; $5060: $80
    inc  bc                                       ; $5061: $03
    adc  b                                        ; $5062: $88
    add  a                                        ; $5063: $87
    adc  b                                        ; $5064: $88
    add  h                                        ; $5065: $84
    and  e                                        ; $5066: $A3
    add  e                                        ; $5067: $83
    adc  b                                        ; $5068: $88
    adc  e                                        ; $5069: $8B
    adc  d                                        ; $506A: $8A
    adc  l                                        ; $506B: $8D
    adc  e                                        ; $506C: $8B
    ld   l, d                                     ; $506D: $6A
    ld   l, b                                     ; $506E: $68
    adc  d                                        ; $506F: $8A
    adc  l                                        ; $5070: $8D
    nop                                           ; $5071: $00
    ld   l, a                                     ; $5072: $6F
    ld   [hl], b                                  ; $5073: $70
    ld   l, a                                     ; $5074: $6F
    ld   [hl], b                                  ; $5075: $70
    ld   l, a                                     ; $5076: $6F
    ld   [hl], b                                  ; $5077: $70
    nop                                           ; $5078: $00
    adc  [hl]                                     ; $5079: $8E
    adc  a                                        ; $507A: $8F
    sub  h                                        ; $507B: $94
    sub  a                                        ; $507C: $97
    sub  [hl]                                     ; $507D: $96
    adc  a                                        ; $507E: $8F
    sub  b                                        ; $507F: $90
    sub  d                                        ; $5080: $92
    sub  h                                        ; $5081: $94
    sub  b                                        ; $5082: $90
    adc  a                                        ; $5083: $8F
    ld   l, l                                     ; $5084: $6D
    ld   l, e                                     ; $5085: $6B
    adc  l                                        ; $5086: $8D
    adc  d                                        ; $5087: $8A
    nop                                           ; $5088: $00
    ld   l, e                                     ; $5089: $6B
    ld   l, l                                     ; $508A: $6D
    ld   l, e                                     ; $508B: $6B
    ld   l, l                                     ; $508C: $6D
    ld   l, e                                     ; $508D: $6B
    ld   l, l                                     ; $508E: $6D
    nop                                           ; $508F: $00
    adc  e                                        ; $5090: $8B
    adc  b                                        ; $5091: $88
    adc  d                                        ; $5092: $8A
    adc  a                                        ; $5093: $8F
    ld   bc, $01A3                                ; $5094: $01 $A3 $01
    add  e                                        ; $5097: $83
    adc  b                                        ; $5098: $88
    adc  d                                        ; $5099: $8A
    adc  e                                        ; $509A: $8B
    adc  l                                        ; $509B: $8D
    adc  a                                        ; $509C: $8F
    sub  b                                        ; $509D: $90
    adc  l                                        ; $509E: $8D
    nop                                           ; $509F: $00
    ld   [hl], e                                  ; $50A0: $73
    ld   [hl], h                                  ; $50A1: $74
    ld   [hl], e                                  ; $50A2: $73
    ld   [hl], h                                  ; $50A3: $74
    ld   [hl], e                                  ; $50A4: $73
    ld   [hl], h                                  ; $50A5: $74
    nop                                           ; $50A6: $00
    sub  c                                        ; $50A7: $91
    sub  e                                        ; $50A8: $93
    ld   bc, $08B4                                ; $50A9: $01 $B4 $08
    ld   hl, $B401                                ; $50AC: $21 $01 $B4
    ld   d, $50                                   ; $50AF: $16 $50
    ld   c, a                                     ; $50B1: $4F
    rla                                           ; $50B2: $17
    inc  b                                        ; $50B3: $04
    nop                                           ; $50B4: $00
    ld   b, $C8                                   ; $50B5: $06 $C8
    rlca                                          ; $50B7: $07
    inc  bc                                       ; $50B8: $03
    ld   [$B420], sp                              ; $50B9: $08 $20 $B4
    or   a                                        ; $50BC: $B7
    sub  [hl]                                     ; $50BD: $96
    cp   h                                        ; $50BE: $BC
    sbc  e                                        ; $50BF: $9B
    add  b                                        ; $50C0: $80
    inc  bc                                       ; $50C1: $03
    adc  b                                        ; $50C2: $88
    add  a                                        ; $50C3: $87
    adc  b                                        ; $50C4: $88
    add  h                                        ; $50C5: $84
    and  e                                        ; $50C6: $A3
    add  e                                        ; $50C7: $83
    adc  b                                        ; $50C8: $88
    adc  e                                        ; $50C9: $8B
    adc  d                                        ; $50CA: $8A
    adc  l                                        ; $50CB: $8D
    adc  e                                        ; $50CC: $8B
    ld   l, d                                     ; $50CD: $6A
    ld   l, b                                     ; $50CE: $68

jr_003_50CF:
    adc  d                                        ; $50CF: $8A
    adc  l                                        ; $50D0: $8D
    nop                                           ; $50D1: $00
    ld   l, a                                     ; $50D2: $6F
    ld   [hl], b                                  ; $50D3: $70
    ld   l, a                                     ; $50D4: $6F
    ld   [hl], b                                  ; $50D5: $70
    ld   l, a                                     ; $50D6: $6F
    ld   [hl], b                                  ; $50D7: $70
    nop                                           ; $50D8: $00
    adc  [hl]                                     ; $50D9: $8E
    adc  a                                        ; $50DA: $8F
    sub  h                                        ; $50DB: $94
    sub  a                                        ; $50DC: $97
    sub  [hl]                                     ; $50DD: $96
    adc  a                                        ; $50DE: $8F
    ld   b, $F0                                   ; $50DF: $06 $F0
    pop  bc                                       ; $50E1: $C1
    inc  bc                                       ; $50E2: $03
    rst  WriteBgMapTilePair                       ; $50E3: $D7
    sub  $D3                                      ; $50E4: $D6 $D3
    or   h                                        ; $50E6: $B4
    cp   e                                        ; $50E7: $BB
    cp   c                                        ; $50E8: $B9
    or   [hl]                                     ; $50E9: $B6
    or   h                                        ; $50EA: $B4
    or   e                                        ; $50EB: $B3
    ld   bc, $08B4                                ; $50EC: $01 $B4 $08
    ld   hl, $B401                                ; $50EF: $21 $01 $B4
    ld   d, $50                                   ; $50F2: $16 $50
    or   e                                        ; $50F4: $B3
    rla                                           ; $50F5: $17
    rla                                           ; $50F6: $17
    nop                                           ; $50F7: $00
    ld   d, c                                     ; $50F8: $51
    nop                                           ; $50F9: $00
    ld   d, c                                     ; $50FA: $51
    adc  l                                        ; $50FB: $8D
    ld   d, d                                     ; $50FC: $52
    ld   sp, $D952                                ; $50FD: $31 $52 $D9
    ld   a, [bc]                                  ; $5100: $0A
    inc  bc                                       ; $5101: $03
    dec  b                                        ; $5102: $05
    ld   bc, $0611                                ; $5103: $01 $11 $06
    ld   a, b                                     ; $5106: $78
    rlca                                          ; $5107: $07
    dec  c                                        ; $5108: $0D
    ld   [$0910], sp                              ; $5109: $08 $10 $09
    ld   [bc], a                                  ; $510C: $02
    jr   jr_003_50CF                              ; $510D: $18 $C0

    inc  b                                        ; $510F: $04
    nop                                           ; $5110: $00
    ld   [bc], a                                  ; $5111: $02
    sub  e                                        ; $5112: $93
    ld   [hl], h                                  ; $5113: $74
    call nc, $9F02                                ; $5114: $D4 $02 $9F
    inc  bc                                       ; $5117: $03
    ld   l, b                                     ; $5118: $68
    add  sp, -$80                                 ; $5119: $E8 $80
    and  c                                        ; $511B: $A1
    inc  bc                                       ; $511C: $03
    sbc  b                                        ; $511D: $98
    or   a                                        ; $511E: $B7
    sub  l                                        ; $511F: $95
    sub  h                                        ; $5120: $94
    push af                                       ; $5121: $F5
    ld   a, a                                     ; $5122: $7F
    inc  bc                                       ; $5123: $03
    adc  b                                        ; $5124: $88
    ld   h, a                                     ; $5125: $67
    adc  b                                        ; $5126: $88
    inc  bc                                       ; $5127: $03
    sub  h                                        ; $5128: $94
    ret  nz                                       ; $5129: $C0

    ld   a, a                                     ; $512A: $7F
    inc  bc                                       ; $512B: $03
    adc  b                                        ; $512C: $88
    ld   h, a                                     ; $512D: $67
    adc  b                                        ; $512E: $88
    inc  bc                                       ; $512F: $03
    sub  h                                        ; $5130: $94
    ret  nz                                       ; $5131: $C0

    add  hl, de                                   ; $5132: $19
    db   $10                                      ; $5133: $10
    inc  bc                                       ; $5134: $03
    ld   l, b                                     ; $5135: $68
    ld   l, b                                     ; $5136: $68
    adc  b                                        ; $5137: $88
    add  b                                        ; $5138: $80
    add  hl, de                                   ; $5139: $19
    ld   de, $9303                                ; $513A: $11 $03 $93
    add  hl, de                                   ; $513D: $19
    ld   bc, $7474                                ; $513E: $01 $74 $74
    sub  h                                        ; $5141: $94
    add  b                                        ; $5142: $80
    add  hl, de                                   ; $5143: $19
    ld   de, $199F                                ; $5144: $11 $9F $19
    db   $10                                      ; $5147: $10
    inc  bc                                       ; $5148: $03
    ld   l, b                                     ; $5149: $68
    ld   l, b                                     ; $514A: $68
    adc  b                                        ; $514B: $88
    add  b                                        ; $514C: $80
    add  hl, de                                   ; $514D: $19
    ld   de, $6887                                ; $514E: $11 $87 $68
    inc  bc                                       ; $5151: $03
    ld   [hl], h                                  ; $5152: $74
    ld   [hl], e                                  ; $5153: $73
    ld   [hl], h                                  ; $5154: $74
    ld   [hl], l                                  ; $5155: $75
    halt                                          ; $5156: $76
    ld   [hl], a                                  ; $5157: $77
    ld   a, b                                     ; $5158: $78
    inc  b                                        ; $5159: $04
    nop                                           ; $515A: $00
    ld   a, c                                     ; $515B: $79
    ld   [hl], h                                  ; $515C: $74
    ld   a, e                                     ; $515D: $7B
    ld   a, h                                     ; $515E: $7C
    ld   a, e                                     ; $515F: $7B
    ld   [hl], h                                  ; $5160: $74
    inc  bc                                       ; $5161: $03
    ld   l, b                                     ; $5162: $68
    ld   h, [hl]                                  ; $5163: $66
    ld   h, h                                     ; $5164: $64
    ld   h, [hl]                                  ; $5165: $66
    ld   l, b                                     ; $5166: $68
    ld   h, h                                     ; $5167: $64
    ld   h, c                                     ; $5168: $61
    ld   h, e                                     ; $5169: $63
    ld   h, h                                     ; $516A: $64
    ld   h, c                                     ; $516B: $61
    ld   [de], a                                  ; $516C: $12
    nop                                           ; $516D: $00
    ld   d, c                                     ; $516E: $51
    ld   a, a                                     ; $516F: $7F
    and  e                                        ; $5170: $A3
    and  a                                        ; $5171: $A7
    ld   l, b                                     ; $5172: $68
    inc  bc                                       ; $5173: $03
    ld   [hl], h                                  ; $5174: $74
    ld   [hl], e                                  ; $5175: $73
    ld   [hl], h                                  ; $5176: $74
    ld   [hl], l                                  ; $5177: $75
    halt                                          ; $5178: $76
    ld   [hl], a                                  ; $5179: $77
    ld   a, b                                     ; $517A: $78
    ld   c, $01                                   ; $517B: $0E $01
    ld   d, c                                     ; $517D: $51
    ld   e, c                                     ; $517E: $59
    ld   a, d                                     ; $517F: $7A
    ld   a, h                                     ; $5180: $7C
    ld   a, [hl]                                  ; $5181: $7E
    ld   a, d                                     ; $5182: $7A
    cp   h                                        ; $5183: $BC
    ld   a, h                                     ; $5184: $7C
    ld   a, c                                     ; $5185: $79
    ld   a, e                                     ; $5186: $7B
    ld   a, b                                     ; $5187: $78
    cp   c                                        ; $5188: $B9
    ld   d, $51                                   ; $5189: $16 $51
    rrca                                          ; $518B: $0F
    rla                                           ; $518C: $17
    ld   b, $78                                   ; $518D: $06 $78
    rlca                                          ; $518F: $07
    dec  bc                                       ; $5190: $0B
    ld   [$0910], sp                              ; $5191: $08 $10 $09
    ld   bc, $8018                                ; $5194: $01 $18 $80
    inc  b                                        ; $5197: $04
    nop                                           ; $5198: $00
    inc  b                                        ; $5199: $04
    nop                                           ; $519A: $00
    ld   a, c                                     ; $519B: $79
    ld   a, b                                     ; $519C: $78
    ld   [hl], a                                  ; $519D: $77
    halt                                          ; $519E: $76
    ld   a, c                                     ; $519F: $79
    ld   a, b                                     ; $51A0: $78
    ld   [hl], a                                  ; $51A1: $77
    halt                                          ; $51A2: $76
    ld   a, c                                     ; $51A3: $79
    ld   a, b                                     ; $51A4: $78
    ld   [hl], a                                  ; $51A5: $77
    halt                                          ; $51A6: $76
    ld   a, c                                     ; $51A7: $79
    ld   a, b                                     ; $51A8: $78
    ld   [hl], a                                  ; $51A9: $77
    halt                                          ; $51AA: $76
    ld   c, $01                                   ; $51AB: $0E $01
    ld   d, c                                     ; $51AD: $51
    sbc  c                                        ; $51AE: $99
    ld   a, h                                     ; $51AF: $7C
    ld   a, e                                     ; $51B0: $7B
    ld   a, h                                     ; $51B1: $7C
    inc  bc                                       ; $51B2: $03
    ld   l, b                                     ; $51B3: $68
    ld   h, [hl]                                  ; $51B4: $66
    ld   h, l                                     ; $51B5: $65
    ld   h, [hl]                                  ; $51B6: $66
    ld   l, c                                     ; $51B7: $69
    ld   l, b                                     ; $51B8: $68
    ld   l, c                                     ; $51B9: $69
    ld   l, b                                     ; $51BA: $68
    ld   h, [hl]                                  ; $51BB: $66
    ld   h, l                                     ; $51BC: $65
    ld   h, d                                     ; $51BD: $62
    ld   h, c                                     ; $51BE: $61
    inc  bc                                       ; $51BF: $03
    ld   [hl], a                                  ; $51C0: $77
    ld   a, c                                     ; $51C1: $79
    ld   a, b                                     ; $51C2: $78
    ld   [hl], a                                  ; $51C3: $77
    halt                                          ; $51C4: $76
    ld   a, c                                     ; $51C5: $79
    ld   a, b                                     ; $51C6: $78
    ld   [hl], a                                  ; $51C7: $77
    halt                                          ; $51C8: $76
    ld   a, c                                     ; $51C9: $79
    ld   a, b                                     ; $51CA: $78
    ld   [hl], a                                  ; $51CB: $77
    halt                                          ; $51CC: $76
    ld   a, c                                     ; $51CD: $79
    ld   a, b                                     ; $51CE: $78
    ld   [hl], a                                  ; $51CF: $77
    halt                                          ; $51D0: $76
    ld   a, c                                     ; $51D1: $79
    sbc  b                                        ; $51D2: $98
    ld   a, c                                     ; $51D3: $79
    sbc  b                                        ; $51D4: $98
    adc  h                                        ; $51D5: $8C
    ret  nz                                       ; $51D6: $C0

    ld   a, e                                     ; $51D7: $7B
    sbc  h                                        ; $51D8: $9C
    ld   a, e                                     ; $51D9: $7B
    sbc  h                                        ; $51DA: $9C
    adc  l                                        ; $51DB: $8D
    ret  nz                                       ; $51DC: $C0

    ld   a, b                                     ; $51DD: $78
    ld   a, b                                     ; $51DE: $78
    ld   a, b                                     ; $51DF: $78
    ld   a, e                                     ; $51E0: $7B
    ld   a, c                                     ; $51E1: $79
    ld   a, e                                     ; $51E2: $7B
    ld   a, h                                     ; $51E3: $7C
    ld   a, c                                     ; $51E4: $79
    ld   a, b                                     ; $51E5: $78
    ld   a, b                                     ; $51E6: $78
    ld   a, b                                     ; $51E7: $78
    ld   a, e                                     ; $51E8: $7B
    ld   a, c                                     ; $51E9: $79
    ld   a, e                                     ; $51EA: $7B
    ld   a, h                                     ; $51EB: $7C
    ld   a, c                                     ; $51EC: $79
    ld   a, b                                     ; $51ED: $78
    ld   a, b                                     ; $51EE: $78
    ld   a, b                                     ; $51EF: $78
    ld   a, e                                     ; $51F0: $7B
    ld   a, c                                     ; $51F1: $79
    ld   a, e                                     ; $51F2: $7B
    ld   a, h                                     ; $51F3: $7C
    ld   a, c                                     ; $51F4: $79
    ld   a, b                                     ; $51F5: $78
    ld   a, b                                     ; $51F6: $78
    ld   [hl], a                                  ; $51F7: $77
    ld   a, b                                     ; $51F8: $78
    ld   a, c                                     ; $51F9: $79
    ld   a, d                                     ; $51FA: $7A
    ld   a, e                                     ; $51FB: $7B
    ld   a, [hl]                                  ; $51FC: $7E
    inc  b                                        ; $51FD: $04
    nop                                           ; $51FE: $00
    sbc  h                                        ; $51FF: $9C
    inc  bc                                       ; $5200: $03
    adc  b                                        ; $5201: $88
    adc  b                                        ; $5202: $88
    adc  a                                        ; $5203: $8F
    adc  a                                        ; $5204: $8F
    adc  l                                        ; $5205: $8D
    adc  l                                        ; $5206: $8D
    adc  b                                        ; $5207: $88
    ld   [de], a                                  ; $5208: $12
    ld   [$2152], sp                              ; $5209: $08 $52 $21
    ld   h, [hl]                                  ; $520C: $66
    ld   l, b                                     ; $520D: $68
    ld   l, c                                     ; $520E: $69
    ld   h, [hl]                                  ; $520F: $66
    ld   l, l                                     ; $5210: $6D
    ld   l, a                                     ; $5211: $6F
    ld   [hl], b                                  ; $5212: $70
    ld   l, l                                     ; $5213: $6D
    ld   l, h                                     ; $5214: $6C
    inc  bc                                       ; $5215: $03
    ld   a, b                                     ; $5216: $78
    ld   [hl], a                                  ; $5217: $77
    ld   a, b                                     ; $5218: $78
    ld   a, c                                     ; $5219: $79
    ld   a, d                                     ; $521A: $7A
    ld   a, e                                     ; $521B: $7B
    ld   a, [hl]                                  ; $521C: $7E
    ld   c, $01                                   ; $521D: $0E $01
    ld   d, c                                     ; $521F: $51
    db   $FD                                      ; $5220: $FD
    xor  c                                        ; $5221: $A9
    ld   l, b                                     ; $5222: $68
    ld   l, d                                     ; $5223: $6A
    ld   l, h                                     ; $5224: $6C
    ld   l, l                                     ; $5225: $6D
    ld   l, l                                     ; $5226: $6D
    ld   l, d                                     ; $5227: $6A
    ld   l, h                                     ; $5228: $6C
    ld   h, [hl]                                  ; $5229: $66
    ld   h, [hl]                                  ; $522A: $66
    ld   h, e                                     ; $522B: $63
    add  h                                        ; $522C: $84
    ld   d, $51                                   ; $522D: $16 $51
    sub  a                                        ; $522F: $97
    rla                                           ; $5230: $17
    rlca                                          ; $5231: $07
    inc  bc                                       ; $5232: $03
    ld   b, $C8                                   ; $5233: $06 $C8
    ld   [$0B1E], sp                              ; $5235: $08 $1E $0B
    jr   jr_003_523E                              ; $5238: $18 $04

    nop                                           ; $523A: $00
    inc  b                                        ; $523B: $04
    nop                                           ; $523C: $00
    ld   [bc], a                                  ; $523D: $02

jr_003_523E:
    adc  l                                        ; $523E: $8D
    ld   l, l                                     ; $523F: $6D
    ld   [bc], a                                  ; $5240: $02
    adc  l                                        ; $5241: $8D
    ld   l, l                                     ; $5242: $6D
    ld   [bc], a                                  ; $5243: $02
    adc  l                                        ; $5244: $8D
    ld   l, l                                     ; $5245: $6D
    ld   [bc], a                                  ; $5246: $02
    adc  l                                        ; $5247: $8D
    ld   l, l                                     ; $5248: $6D
    ld   c, $01                                   ; $5249: $0E $01
    ld   d, d                                     ; $524B: $52
    dec  sp                                       ; $524C: $3B
    ld   [bc], a                                  ; $524D: $02
    adc  l                                        ; $524E: $8D
    ld   l, l                                     ; $524F: $6D
    ld   [bc], a                                  ; $5250: $02
    adc  a                                        ; $5251: $8F
    ld   l, a                                     ; $5252: $6F
    ld   [bc], a                                  ; $5253: $02
    sub  c                                        ; $5254: $91
    ld   [hl], d                                  ; $5255: $72
    ld   [bc], a                                  ; $5256: $02
    sub  h                                        ; $5257: $94
    ld   l, l                                     ; $5258: $6D
    ld   [bc], a                                  ; $5259: $02
    sub  d                                        ; $525A: $92
    ld   [hl], d                                  ; $525B: $72
    ld   [bc], a                                  ; $525C: $02
    sub  d                                        ; $525D: $92
    ld   [hl], d                                  ; $525E: $72
    ld   [bc], a                                  ; $525F: $02
    sub  d                                        ; $5260: $92
    ld   [hl], d                                  ; $5261: $72
    ld   [bc], a                                  ; $5262: $02
    sub  d                                        ; $5263: $92
    ld   [hl], d                                  ; $5264: $72
    ld   l, b                                     ; $5265: $68
    ld   [hl], h                                  ; $5266: $74
    ld   [hl], h                                  ; $5267: $74
    ld   l, b                                     ; $5268: $68
    ld   [hl], h                                  ; $5269: $74
    ld   [hl], h                                  ; $526A: $74
    ld   l, b                                     ; $526B: $68
    ld   [hl], h                                  ; $526C: $74
    ld   l, b                                     ; $526D: $68
    ld   [hl], h                                  ; $526E: $74
    ld   [hl], e                                  ; $526F: $73
    ld   [hl], d                                  ; $5270: $72
    ld   [hl], c                                  ; $5271: $71
    ld   [hl], b                                  ; $5272: $70
    ld   l, a                                     ; $5273: $6F
    ld   l, [hl]                                  ; $5274: $6E
    ld   l, l                                     ; $5275: $6D
    ld   a, c                                     ; $5276: $79
    ld   a, c                                     ; $5277: $79
    ld   l, l                                     ; $5278: $6D
    ld   a, c                                     ; $5279: $79
    ld   a, c                                     ; $527A: $79
    ld   l, l                                     ; $527B: $6D
    ld   a, c                                     ; $527C: $79
    ld   l, l                                     ; $527D: $6D
    ld   a, c                                     ; $527E: $79
    ld   a, b                                     ; $527F: $78
    ld   [hl], a                                  ; $5280: $77
    halt                                          ; $5281: $76
    ld   [hl], l                                  ; $5282: $75
    ld   [hl], h                                  ; $5283: $74
    ld   [hl], e                                  ; $5284: $73
    ld   [hl], h                                  ; $5285: $74
    ld   [hl], h                                  ; $5286: $74
    ld   [hl], h                                  ; $5287: $74
    ld   a, b                                     ; $5288: $78
    halt                                          ; $5289: $76
    ld   a, b                                     ; $528A: $78
    ld   a, c                                     ; $528B: $79
    halt                                          ; $528C: $76
    ld   [hl], h                                  ; $528D: $74
    ld   [hl], h                                  ; $528E: $74
    ld   [hl], h                                  ; $528F: $74
    ld   a, b                                     ; $5290: $78
    halt                                          ; $5291: $76
    ld   a, b                                     ; $5292: $78
    ld   a, c                                     ; $5293: $79
    halt                                          ; $5294: $76
    ld   [hl], h                                  ; $5295: $74
    ld   [hl], h                                  ; $5296: $74
    ld   [hl], h                                  ; $5297: $74
    ld   a, b                                     ; $5298: $78
    halt                                          ; $5299: $76
    ld   a, b                                     ; $529A: $78
    ld   a, c                                     ; $529B: $79
    halt                                          ; $529C: $76
    ld   [hl], h                                  ; $529D: $74
    ld   [hl], h                                  ; $529E: $74
    ld   [hl], e                                  ; $529F: $73
    ld   [hl], d                                  ; $52A0: $72
    ld   [hl], c                                  ; $52A1: $71
    ld   [hl], b                                  ; $52A2: $70
    ld   l, a                                     ; $52A3: $6F
    ld   l, [hl]                                  ; $52A4: $6E
    inc  b                                        ; $52A5: $04
    nop                                           ; $52A6: $00
    ld   a, c                                     ; $52A7: $79
    sbc  c                                        ; $52A8: $99
    ld   a, c                                     ; $52A9: $79
    ld   a, b                                     ; $52AA: $78
    sbc  b                                        ; $52AB: $98
    ld   a, b                                     ; $52AC: $78
    ld   [hl], a                                  ; $52AD: $77
    sub  a                                        ; $52AE: $97
    ld   [hl], a                                  ; $52AF: $77
    halt                                          ; $52B0: $76
    sub  [hl]                                     ; $52B1: $96
    halt                                          ; $52B2: $76
    ld   [de], a                                  ; $52B3: $12
    nop                                           ; $52B4: $00
    ld   d, d                                     ; $52B5: $52
    ret                                           ; $52B6: $C9


    ld   [hl], l                                  ; $52B7: $75
    sub  l                                        ; $52B8: $95
    ld   [hl], l                                  ; $52B9: $75
    ld   [hl], l                                  ; $52BA: $75
    sub  l                                        ; $52BB: $95
    ld   [hl], l                                  ; $52BC: $75
    ld   [hl], h                                  ; $52BD: $74
    ld   [hl], h                                  ; $52BE: $74
    ld   [hl], e                                  ; $52BF: $73
    ld   [hl], d                                  ; $52C0: $72
    ld   [hl], c                                  ; $52C1: $71
    ld   [hl], b                                  ; $52C2: $70
    ld   l, a                                     ; $52C3: $6F
    ld   l, [hl]                                  ; $52C4: $6E
    ld   c, $01                                   ; $52C5: $0E $01
    ld   d, d                                     ; $52C7: $52
    and  l                                        ; $52C8: $A5
    ld   [hl], d                                  ; $52C9: $72
    sub  d                                        ; $52CA: $92
    ld   [hl], d                                  ; $52CB: $72
    ld   [hl], h                                  ; $52CC: $74
    sub  h                                        ; $52CD: $94
    ld   [hl], h                                  ; $52CE: $74
    ld   l, b                                     ; $52CF: $68

jr_003_52D0:
    adc  b                                        ; $52D0: $88
    ld   l, b                                     ; $52D1: $68
    ld   l, l                                     ; $52D2: $6D
    adc  l                                        ; $52D3: $8D
    ld   l, l                                     ; $52D4: $6D
    ld   d, $52                                   ; $52D5: $16 $52
    add  hl, sp                                   ; $52D7: $39
    rla                                           ; $52D8: $17
    rla                                           ; $52D9: $17
    nop                                           ; $52DA: $00
    ld   d, d                                     ; $52DB: $52
    db   $E3                                      ; $52DC: $E3
    ld   d, e                                     ; $52DD: $53
    add  e                                        ; $52DE: $83
    ld   d, h                                     ; $52DF: $54
    ld   [hl], h                                  ; $52E0: $74
    ld   d, h                                     ; $52E1: $54
    ret  c                                        ; $52E2: $D8

    ld   a, [bc]                                  ; $52E3: $0A
    inc  bc                                       ; $52E4: $03
    dec  b                                        ; $52E5: $05
    ld   bc, $06EB                                ; $52E6: $01 $EB $06
    call c, Call_000_0004                         ; $52E9: $DC $04 $00
    rlca                                          ; $52EC: $07
    dec  bc                                       ; $52ED: $0B
    ld   [$0919], sp                              ; $52EE: $08 $19 $09
    ld   bc, $8018                                ; $52F1: $01 $18 $80
    sbc  [hl]                                     ; $52F4: $9E
    sbc  a                                        ; $52F5: $9F
    inc  bc                                       ; $52F6: $03
    adc  b                                        ; $52F7: $88
    ld   bc, $C484                                ; $52F8: $01 $84 $C4
    ld   [$011B], sp                              ; $52FB: $08 $1B $01
    db   $E4                                      ; $52FE: $E4
    ld   [$8617], sp                              ; $52FF: $08 $17 $86
    add  a                                        ; $5302: $87
    adc  b                                        ; $5303: $88
    ld   bc, $C585                                ; $5304: $01 $85 $C5
    ld   [$011B], sp                              ; $5307: $08 $1B $01
    push hl                                       ; $530A: $E5

jr_003_530B:
    ld   [$8719], sp                              ; $530B: $08 $19 $87
    adc  b                                        ; $530E: $88
    xor  l                                        ; $530F: $AD
    adc  e                                        ; $5310: $8B
    adc  c                                        ; $5311: $89
    xor  e                                        ; $5312: $AB
    adc  c                                        ; $5313: $89
    adc  b                                        ; $5314: $88
    adc  e                                        ; $5315: $8B
    ld   bc, $0188                                ; $5316: $01 $88 $01
    ret  z                                        ; $5319: $C8

    add  a                                        ; $531A: $87
    adc  b                                        ; $531B: $88
    xor  l                                        ; $531C: $AD
    adc  e                                        ; $531D: $8B
    adc  c                                        ; $531E: $89
    xor  e                                        ; $531F: $AB
    adc  c                                        ; $5320: $89
    adc  b                                        ; $5321: $88

jr_003_5322:
    add  [hl]                                     ; $5322: $86
    and  h                                        ; $5323: $A4
    inc  bc                                       ; $5324: $03
    sub  d                                        ; $5325: $92
    or   e                                        ; $5326: $B3
    jr   jr_003_5329                              ; $5327: $18 $00

jr_003_5329:
    call nc, $A0B3                                ; $5329: $D4 $B3 $A0
    call nc, $A0B3                                ; $532C: $D4 $B3 $A0
    or   l                                        ; $532F: $B5
    or   a                                        ; $5330: $B7
    cp   c                                        ; $5331: $B9
    inc  bc                                       ; $5332: $03
    xor  b                                        ; $5333: $A8
    add  [hl]                                     ; $5334: $86
    add  h                                        ; $5335: $84
    ld   [bc], a                                  ; $5336: $02
    jp   $D403                                    ; $5337: $C3 $03 $D4


    or   e                                        ; $533A: $B3
    and  b                                        ; $533B: $A0
    or   h                                        ; $533C: $B4
    or   l                                        ; $533D: $B5
    or   e                                        ; $533E: $B3
    and  b                                        ; $533F: $A0
    or   l                                        ; $5340: $B5
    sub  a                                        ; $5341: $97
    sbc  c                                        ; $5342: $99
    cp   e                                        ; $5343: $BB
    sbc  h                                        ; $5344: $9C
    sbc  [hl]                                     ; $5345: $9E
    cp   a                                        ; $5346: $BF
    inc  bc                                       ; $5347: $03
    xor  b                                        ; $5348: $A8
    ret  nz                                       ; $5349: $C0

    ld   [$071C], sp                              ; $534A: $08 $1C $07
    inc  c                                        ; $534D: $0C
    jr   jr_003_52D0                              ; $534E: $18 $80

    ld   h, a                                     ; $5350: $67
    ld   h, b                                     ; $5351: $60
    ld   l, b                                     ; $5352: $68
    ld   h, b                                     ; $5353: $60
    ld   [hl], b                                  ; $5354: $70
    ld   h, b                                     ; $5355: $60
    ld   h, a                                     ; $5356: $67
    ld   h, b                                     ; $5357: $60
    ld   l, b                                     ; $5358: $68
    ld   h, b                                     ; $5359: $60
    ld   [hl], b                                  ; $535A: $70
    ld   h, b                                     ; $535B: $60
    adc  a                                        ; $535C: $8F
    add  b                                        ; $535D: $80
    ld   h, [hl]                                  ; $535E: $66
    ld   h, b                                     ; $535F: $60
    ld   h, a                                     ; $5360: $67
    ld   h, b                                     ; $5361: $60
    ld   l, a                                     ; $5362: $6F
    ld   h, b                                     ; $5363: $60
    ld   h, [hl]                                  ; $5364: $66
    ld   h, b                                     ; $5365: $60
    ld   h, a                                     ; $5366: $67
    ld   h, b                                     ; $5367: $60
    ld   l, a                                     ; $5368: $6F
    ld   h, b                                     ; $5369: $60
    adc  [hl]                                     ; $536A: $8E
    add  b                                        ; $536B: $80
    add  l                                        ; $536C: $85
    add  b                                        ; $536D: $80
    add  [hl]                                     ; $536E: $86
    add  b                                        ; $536F: $80
    adc  [hl]                                     ; $5370: $8E
    add  b                                        ; $5371: $80
    ld   l, l                                     ; $5372: $6D
    ld   h, b                                     ; $5373: $60
    ld   l, h                                     ; $5374: $6C
    ld   h, b                                     ; $5375: $60
    adc  l                                        ; $5376: $8D
    add  b                                        ; $5377: $80
    ld   [$0719], sp                              ; $5378: $08 $19 $07
    dec  bc                                       ; $537B: $0B
    and  a                                        ; $537C: $A7
    xor  b                                        ; $537D: $A8
    and  b                                        ; $537E: $A0
    ld   d, $52                                   ; $537F: $16 $52
    ld   [$0617], a                               ; $5381: $EA $17 $06
    call c, Call_003_6002                         ; $5384: $DC $02 $60
    inc  b                                        ; $5387: $04
    nop                                           ; $5388: $00
    jr   jr_003_530B                              ; $5389: $18 $80

    add  hl, bc                                   ; $538B: $09
    ld   [bc], a                                  ; $538C: $02
    ld   [$0719], sp                              ; $538D: $08 $19 $07
    inc  b                                        ; $5390: $04
    sub  d                                        ; $5391: $92
    sub  e                                        ; $5392: $93
    sub  h                                        ; $5393: $94
    ld   d, b                                     ; $5394: $50
    jr   jr_003_53D7                              ; $5395: $18 $40

    rlca                                          ; $5397: $07
    dec  bc                                       ; $5398: $0B
    add  [hl]                                     ; $5399: $86
    add  a                                        ; $539A: $87
    adc  b                                        ; $539B: $88
    add  h                                        ; $539C: $84
    ret  z                                        ; $539D: $C8

    and  [hl]                                     ; $539E: $A6
    and  e                                        ; $539F: $A3
    jr   jr_003_5322                              ; $53A0: $18 $80

    rlca                                          ; $53A2: $07
    ld   [$908F], sp                              ; $53A3: $08 $8F $90
    sub  c                                        ; $53A6: $91
    adc  l                                        ; $53A7: $8D
    jr   jr_003_53EA                              ; $53A8: $18 $40

    rlca                                          ; $53AA: $07
    dec  bc                                       ; $53AB: $0B
    add  [hl]                                     ; $53AC: $86
    add  a                                        ; $53AD: $87
    adc  b                                        ; $53AE: $88
    add  l                                        ; $53AF: $85
    ret  z                                        ; $53B0: $C8

    and  a                                        ; $53B1: $A7
    and  [hl]                                     ; $53B2: $A6
    ld   [$041C], sp                              ; $53B3: $08 $1C $04
    ld   [$1019], sp                              ; $53B6: $08 $19 $10
    ld   [hl], e                                  ; $53B9: $73
    ld   h, b                                     ; $53BA: $60
    ld   [hl], h                                  ; $53BB: $74
    ld   h, b                                     ; $53BC: $60
    add  hl, de                                   ; $53BD: $19
    ld   bc, $606F                                ; $53BE: $01 $6F $60
    ld   [hl], b                                  ; $53C1: $70
    ld   h, b                                     ; $53C2: $60
    add  hl, de                                   ; $53C3: $19
    ld   bc, $606C                                ; $53C4: $01 $6C $60
    ld   l, l                                     ; $53C7: $6D
    ld   h, b                                     ; $53C8: $60
    add  hl, de                                   ; $53C9: $19
    ld   bc, $6067                                ; $53CA: $01 $67 $60
    ld   l, b                                     ; $53CD: $68
    ld   h, b                                     ; $53CE: $60
    ld   [de], a                                  ; $53CF: $12
    nop                                           ; $53D0: $00
    ld   d, e                                     ; $53D1: $53
    ldh  a, [rNR24]                               ; $53D2: $F0 $19
    db   $10                                      ; $53D4: $10
    ld   h, e                                     ; $53D5: $63
    ld   h, b                                     ; $53D6: $60

jr_003_53D7:
    ld   h, h                                     ; $53D7: $64
    ld   h, b                                     ; $53D8: $60
    add  hl, de                                   ; $53D9: $19
    ld   bc, $7803                                ; $53DA: $01 $03 $78
    ld   h, b                                     ; $53DD: $60
    ld   a, c                                     ; $53DE: $79
    ld   h, b                                     ; $53DF: $60
    add  hl, de                                   ; $53E0: $19
    ld   de, $6073                                ; $53E1: $11 $73 $60
    ld   [hl], h                                  ; $53E4: $74
    ld   h, b                                     ; $53E5: $60
    add  hl, de                                   ; $53E6: $19
    ld   bc, $606F                                ; $53E7: $01 $6F $60

jr_003_53EA:
    ld   [hl], b                                  ; $53EA: $70
    ld   h, b                                     ; $53EB: $60
    ld   c, $01                                   ; $53EC: $0E $01
    ld   d, e                                     ; $53EE: $53
    or   l                                        ; $53EF: $B5
    add  hl, de                                   ; $53F0: $19
    db   $10                                      ; $53F1: $10
    ld   a, e                                     ; $53F2: $7B
    ld   h, b                                     ; $53F3: $60
    ld   a, h                                     ; $53F4: $7C
    ld   h, b                                     ; $53F5: $60
    add  hl, de                                   ; $53F6: $19
    ld   bc, $6078                                ; $53F7: $01 $78 $60
    ld   a, c                                     ; $53FA: $79
    ld   h, b                                     ; $53FB: $60
    ld   [hl], e                                  ; $53FC: $73
    ld   h, b                                     ; $53FD: $60
    ld   [$0719], sp                              ; $53FE: $08 $19 $07
    ld   [$1119], sp                              ; $5401: $08 $19 $11
    adc  a                                        ; $5404: $8F
    or   b                                        ; $5405: $B0
    inc  b                                        ; $5406: $04
    nop                                           ; $5407: $00
    jr   @-$7E                                    ; $5408: $18 $80

    rlca                                          ; $540A: $07
    ld   [$0004], sp                              ; $540B: $08 $04 $00
    ret  nc                                       ; $540E: $D0

    adc  a                                        ; $540F: $8F
    ld   [$191C], sp                              ; $5410: $08 $1C $19
    db   $10                                      ; $5413: $10
    inc  bc                                       ; $5414: $03
    sub  h                                        ; $5415: $94
    add  hl, de                                   ; $5416: $19
    ld   bc, $1993                                ; $5417: $01 $93 $19
    db   $10                                      ; $541A: $10
    adc  a                                        ; $541B: $8F
    ld   [$0E19], sp                              ; $541C: $08 $19 $0E
    ld   bc, $0C54                                ; $541F: $01 $54 $0C
    add  hl, de                                   ; $5422: $19
    ld   de, $4018                                ; $5423: $11 $18 $40
    ld   bc, $A603                                ; $5426: $01 $03 $A6
    ld   [$011B], sp                              ; $5429: $08 $1B $01
    and  [hl]                                     ; $542C: $A6
    ld   [$0119], sp                              ; $542D: $08 $19 $01
    xor  c                                        ; $5430: $A9
    ld   [$011B], sp                              ; $5431: $08 $1B $01
    xor  c                                        ; $5434: $A9
    ld   [$1319], sp                              ; $5435: $08 $19 $13
    nop                                           ; $5438: $00
    ld   d, h                                     ; $5439: $54
    ld   b, e                                     ; $543A: $43
    xor  b                                        ; $543B: $A8
    xor  h                                        ; $543C: $AC
    or   l                                        ; $543D: $B5
    or   h                                        ; $543E: $B4
    rrca                                          ; $543F: $0F
    ld   bc, $0654                                ; $5440: $01 $54 $06
    xor  b                                        ; $5443: $A8
    xor  b                                        ; $5444: $A8
    xor  d                                        ; $5445: $AA
    xor  h                                        ; $5446: $AC
    jr   jr_003_5449                              ; $5447: $18 $00

jr_003_5449:
    rlca                                          ; $5449: $07
    ld   a, [bc]                                  ; $544A: $0A
    xor  l                                        ; $544B: $AD
    adc  h                                        ; $544C: $8C
    adc  l                                        ; $544D: $8D
    ld   bc, $08B4                                ; $544E: $01 $B4 $08
    dec  de                                       ; $5451: $1B
    ld   bc, $08B4                                ; $5452: $01 $B4 $08
    add  hl, de                                   ; $5455: $19
    xor  e                                        ; $5456: $AB
    adc  d                                        ; $5457: $8A
    adc  e                                        ; $5458: $8B
    ld   bc, $08B2                                ; $5459: $01 $B2 $08
    dec  de                                       ; $545C: $1B
    ld   bc, $08B2                                ; $545D: $01 $B2 $08
    add  hl, de                                   ; $5460: $19
    xor  c                                        ; $5461: $A9
    xor  b                                        ; $5462: $A8
    xor  l                                        ; $5463: $AD
    xor  h                                        ; $5464: $AC
    xor  a                                        ; $5465: $AF
    xor  l                                        ; $5466: $AD
    adc  h                                        ; $5467: $8C
    add  b                                        ; $5468: $80
    jr   jr_003_54AB                              ; $5469: $18 $40

    xor  b                                        ; $546B: $A8
    ld   [$6D15], sp                              ; $546C: $08 $15 $6D
    ld   b, b                                     ; $546F: $40
    ld   d, $53                                   ; $5470: $16 $53
    add  a                                        ; $5472: $87
    rla                                           ; $5473: $17
    add  hl, bc                                   ; $5474: $09
    ld   [bc], a                                  ; $5475: $02
    rlca                                          ; $5476: $07
    ld   [bc], a                                  ; $5477: $02
    inc  b                                        ; $5478: $04
    nop                                           ; $5479: $00
    ld   b, $F5                                   ; $547A: $06 $F5
    ld   [$0417], sp                              ; $547C: $08 $17 $04
    nop                                           ; $547F: $00
    xor  l                                        ; $5480: $AD
    xor  l                                        ; $5481: $AD
    xor  l                                        ; $5482: $AD
    xor  l                                        ; $5483: $AD
    ld   c, $03                                   ; $5484: $0E $03
    ld   d, h                                     ; $5486: $54
    ld   a, [hl]                                  ; $5487: $7E
    inc  b                                        ; $5488: $04
    nop                                           ; $5489: $00
    call $ADA8                                    ; $548A: $CD $A8 $AD
    ld   c, $03                                   ; $548D: $0E $03
    ld   d, h                                     ; $548F: $54
    adc  b                                        ; $5490: $88
    call $A1AE                                    ; $5491: $CD $AE $A1
    xor  l                                        ; $5494: $AD
    xor  l                                        ; $5495: $AD
    xor  [hl]                                     ; $5496: $AE
    and  c                                        ; $5497: $A1
    and  [hl]                                     ; $5498: $A6
    and  [hl]                                     ; $5499: $A6
    and  [hl]                                     ; $549A: $A6
    and  [hl]                                     ; $549B: $A6
    xor  b                                        ; $549C: $A8
    xor  b                                        ; $549D: $A8
    xor  b                                        ; $549E: $A8
    xor  b                                        ; $549F: $A8
    call $A1AE                                    ; $54A0: $CD $AE $A1
    xor  l                                        ; $54A3: $AD
    xor  l                                        ; $54A4: $AD
    xor  [hl]                                     ; $54A5: $AE
    and  c                                        ; $54A6: $A1
    and  [hl]                                     ; $54A7: $A6
    add  [hl]                                     ; $54A8: $86
    add  [hl]                                     ; $54A9: $86
    and  [hl]                                     ; $54AA: $A6

jr_003_54AB:
    add  [hl]                                     ; $54AB: $86
    add  [hl]                                     ; $54AC: $86
    xor  b                                        ; $54AD: $A8
    adc  b                                        ; $54AE: $88
    adc  b                                        ; $54AF: $88
    adc  b                                        ; $54B0: $88
    adc  b                                        ; $54B1: $88
    xor  b                                        ; $54B2: $A8
    ld   b, $FE                                   ; $54B3: $06 $FE
    ld   bc, $08CD                                ; $54B5: $01 $CD $08
    dec  de                                       ; $54B8: $1B
    ld   bc, $08CD                                ; $54B9: $01 $CD $08
    rla                                           ; $54BC: $17
    ld   bc, $08CB                                ; $54BD: $01 $CB $08
    dec  de                                       ; $54C0: $1B
    ld   bc, $08CB                                ; $54C1: $01 $CB $08
    rla                                           ; $54C4: $17
    ld   bc, $08C9                                ; $54C5: $01 $C9 $08
    dec  de                                       ; $54C8: $1B
    ld   bc, $08C9                                ; $54C9: $01 $C9 $08
    rla                                           ; $54CC: $17
    ret  z                                        ; $54CD: $C8

    ld   b, $C8                                   ; $54CE: $06 $C8
    add  a                                        ; $54D0: $87
    adc  b                                        ; $54D1: $88
    adc  d                                        ; $54D2: $8A
    adc  h                                        ; $54D3: $8C
    ld   d, $54                                   ; $54D4: $16 $54
    ld   a, b                                     ; $54D6: $78
    rla                                           ; $54D7: $17
    rla                                           ; $54D8: $17
    nop                                           ; $54D9: $00
    ld   d, h                                     ; $54DA: $54
    ldh  [c], a                                   ; $54DB: $E2
    ld   d, l                                     ; $54DC: $55
    ld   d, a                                     ; $54DD: $57
    ld   d, [hl]                                  ; $54DE: $56
    cpl                                           ; $54DF: $2F
    ld   d, [hl]                                  ; $54E0: $56
    or   a                                        ; $54E1: $B7
    ld   a, [bc]                                  ; $54E2: $0A
    add  hl, bc                                   ; $54E3: $09
    ld   b, $D2                                   ; $54E4: $06 $D2
    rlca                                          ; $54E6: $07
    dec  bc                                       ; $54E7: $0B
    ld   [$0900], sp                              ; $54E8: $08 $00 $09
    ld   [bc], a                                  ; $54EB: $02
    jr   jr_003_54EE                              ; $54EC: $18 $00

jr_003_54EE:
    ldh  [$FFE0], a                               ; $54EE: $E0 $E0
    inc  b                                        ; $54F0: $04
    nop                                           ; $54F1: $00
    inc  b                                        ; $54F2: $04
    nop                                           ; $54F3: $00
    adc  l                                        ; $54F4: $8D
    adc  a                                        ; $54F5: $8F
    sub  d                                        ; $54F6: $92
    ld   bc, $D090                                ; $54F7: $01 $90 $D0
    ld   [$021B], sp                              ; $54FA: $08 $1B $02
    ld   bc, $08D0                                ; $54FD: $01 $D0 $08
    inc  d                                        ; $5500: $14
    xor  a                                        ; $5501: $AF
    sub  d                                        ; $5502: $92
    sub  b                                        ; $5503: $90
    adc  e                                        ; $5504: $8B
    ld   bc, $CD8D                                ; $5505: $01 $8D $CD
    ld   [$CD1B], sp                              ; $5508: $08 $1B $CD
    ld   [$0114], sp                              ; $550B: $08 $14 $01
    adc  l                                        ; $550E: $8D
    adc  a                                        ; $550F: $8F
    sub  d                                        ; $5510: $92
    sub  b                                        ; $5511: $90
    ld   [de], a                                  ; $5512: $12
    nop                                           ; $5513: $00
    ld   d, l                                     ; $5514: $55
    ld   [hl-], a                                 ; $5515: $32
    adc  e                                        ; $5516: $8B
    adc  l                                        ; $5517: $8D
    adc  a                                        ; $5518: $8F
    sub  b                                        ; $5519: $90
    xor  a                                        ; $551A: $AF
    sub  b                                        ; $551B: $90
    sub  d                                        ; $551C: $92
    ld   [bc], a                                  ; $551D: $02
    res  5, e                                     ; $551E: $CB $AB
    adc  a                                        ; $5520: $8F
    adc  l                                        ; $5521: $8D
    adc  a                                        ; $5522: $8F
    sub  b                                        ; $5523: $90
    ld   bc, $08C8                                ; $5524: $01 $C8 $08
    dec  de                                       ; $5527: $1B
    ld   bc, $08E8                                ; $5528: $01 $E8 $08
    inc  d                                        ; $552B: $14
    jr   jr_003_556E                              ; $552C: $18 $40

    ld   c, $01                                   ; $552E: $0E $01
    ld   d, h                                     ; $5530: $54
    ldh  a, [c]                                   ; $5531: $F2
    sub  l                                        ; $5532: $95
    sub  h                                        ; $5533: $94
    sub  l                                        ; $5534: $95
    sub  a                                        ; $5535: $97
    cp   c                                        ; $5536: $B9
    sbc  b                                        ; $5537: $98
    sbc  c                                        ; $5538: $99
    ld   bc, $08BB                                ; $5539: $01 $BB $08
    dec  de                                       ; $553C: $1B
    ld   bc, $08DB                                ; $553D: $01 $DB $08
    inc  d                                        ; $5540: $14
    inc  bc                                       ; $5541: $03
    adc  c                                        ; $5542: $89
    adc  e                                        ; $5543: $8B
    ld   bc, $08E8                                ; $5544: $01 $E8 $08
    dec  de                                       ; $5547: $1B
    ret  z                                        ; $5548: $C8

    ld   bc, $1888                                ; $5549: $01 $88 $18
    nop                                           ; $554C: $00
    ld   [$0314], sp                              ; $554D: $08 $14 $03
    sub  d                                        ; $5550: $92
    sub  b                                        ; $5551: $90
    adc  a                                        ; $5552: $8F
    ld   d, $54                                   ; $5553: $16 $54
    ldh  a, [rNR22]                               ; $5555: $F0 $17
    ld   b, $A0                                   ; $5557: $06 $A0
    add  hl, bc                                   ; $5559: $09
    ld   [bc], a                                  ; $555A: $02
    rlca                                          ; $555B: $07
    ld   a, [bc]                                  ; $555C: $0A
    ld   [$1805], sp                              ; $555D: $08 $05 $18
    add  b                                        ; $5560: $80
    add  b                                        ; $5561: $80
    adc  b                                        ; $5562: $88
    adc  b                                        ; $5563: $88
    adc  b                                        ; $5564: $88
    add  b                                        ; $5565: $80
    add  a                                        ; $5566: $87
    add  a                                        ; $5567: $87
    add  a                                        ; $5568: $87
    add  b                                        ; $5569: $80
    add  [hl]                                     ; $556A: $86
    add  [hl]                                     ; $556B: $86
    add  [hl]                                     ; $556C: $86
    add  b                                        ; $556D: $80

jr_003_556E:
    add  h                                        ; $556E: $84
    add  h                                        ; $556F: $84
    add  h                                        ; $5570: $84
    inc  b                                        ; $5571: $04
    nop                                           ; $5572: $00
    inc  b                                        ; $5573: $04
    nop                                           ; $5574: $00
    ld   [$0600], sp                              ; $5575: $08 $00 $06
    call c, $8018                                 ; $5578: $DC $18 $80
    rlca                                          ; $557B: $07
    ld   [$8684], sp                              ; $557C: $08 $84 $86
    adc  c                                        ; $557F: $89
    adc  b                                        ; $5580: $88
    xor  e                                        ; $5581: $AB
    adc  c                                        ; $5582: $89
    adc  b                                        ; $5583: $88
    ld   [$091C], sp                              ; $5584: $08 $1C $09
    inc  bc                                       ; $5587: $03
    add  hl, de                                   ; $5588: $19
    db   $10                                      ; $5589: $10
    inc  bc                                       ; $558A: $03
    ld   l, b                                     ; $558B: $68
    ld   [hl], h                                  ; $558C: $74
    ld   l, b                                     ; $558D: $68
    ld   h, b                                     ; $558E: $60
    add  hl, de                                   ; $558F: $19
    ld   bc, $0368                                ; $5590: $01 $68 $03
    ld   [hl], h                                  ; $5593: $74
    inc  bc                                       ; $5594: $03
    ld   l, b                                     ; $5595: $68
    ld   h, b                                     ; $5596: $60
    add  hl, de                                   ; $5597: $19
    db   $10                                      ; $5598: $10
    inc  bc                                       ; $5599: $03
    ld   l, b                                     ; $559A: $68
    ld   [hl], h                                  ; $559B: $74
    ld   l, b                                     ; $559C: $68
    ld   l, b                                     ; $559D: $68
    add  hl, bc                                   ; $559E: $09
    ld   [bc], a                                  ; $559F: $02
    add  hl, de                                   ; $55A0: $19
    ld   de, $6874                                ; $55A1: $11 $74 $68
    ld   [hl], h                                  ; $55A4: $74
    ld   [hl], h                                  ; $55A5: $74
    ld   [$8914], sp                              ; $55A6: $08 $14 $89
    adc  b                                        ; $55A9: $88

Call_003_55AA:
    add  e                                        ; $55AA: $83
    add  h                                        ; $55AB: $84
    and  [hl]                                     ; $55AC: $A6
    add  h                                        ; $55AD: $84
    add  e                                        ; $55AE: $83
    ld   [$091C], sp                              ; $55AF: $08 $1C $09
    inc  bc                                       ; $55B2: $03
    add  hl, de                                   ; $55B3: $19
    db   $10                                      ; $55B4: $10
    ld   a, h                                     ; $55B5: $7C
    inc  bc                                       ; $55B6: $03
    ld   [hl], b                                  ; $55B7: $70
    ld   h, h                                     ; $55B8: $64
    ld   h, b                                     ; $55B9: $60
    add  hl, de                                   ; $55BA: $19
    ld   bc, $0364                                ; $55BB: $01 $64 $03
    ld   [hl], b                                  ; $55BE: $70
    ld   a, h                                     ; $55BF: $7C
    ld   h, b                                     ; $55C0: $60
    add  hl, de                                   ; $55C1: $19
    db   $10                                      ; $55C2: $10
    ld   h, h                                     ; $55C3: $64
    ld   [hl], b                                  ; $55C4: $70
    ld   h, h                                     ; $55C5: $64
    ld   h, h                                     ; $55C6: $64
    add  hl, bc                                   ; $55C7: $09
    ld   [bc], a                                  ; $55C8: $02
    add  hl, de                                   ; $55C9: $19
    ld   bc, $6470                                ; $55CA: $01 $70 $64
    ld   [hl], b                                  ; $55CD: $70
    ld   [hl], b                                  ; $55CE: $70
    add  hl, de                                   ; $55CF: $19
    ld   de, $1408                                ; $55D0: $11 $08 $14
    add  d                                        ; $55D3: $82
    add  h                                        ; $55D4: $84
    add  [hl]                                     ; $55D5: $86
    adc  b                                        ; $55D6: $88
    ld   h, [hl]                                  ; $55D7: $66
    ld   l, b                                     ; $55D8: $68
    ld   l, c                                     ; $55D9: $69
    ld   l, e                                     ; $55DA: $6B
    adc  l                                        ; $55DB: $8D
    ld   l, e                                     ; $55DC: $6B
    ld   l, c                                     ; $55DD: $69
    ld   l, b                                     ; $55DE: $68
    ld   h, [hl]                                  ; $55DF: $66
    ld   h, h                                     ; $55E0: $64
    ld   h, e                                     ; $55E1: $63
    add  [hl]                                     ; $55E2: $86
    adc  b                                        ; $55E3: $88
    add  hl, bc                                   ; $55E4: $09
    inc  bc                                       ; $55E5: $03
    ld   [$191C], sp                              ; $55E6: $08 $1C $19
    ld   bc, $7703                                ; $55E9: $01 $03 $77
    ld   l, e                                     ; $55EC: $6B
    ld   l, e                                     ; $55ED: $6B
    add  hl, de                                   ; $55EE: $19
    ld   de, $7703                                ; $55EF: $11 $03 $77
    ld   [hl], a                                  ; $55F2: $77
    ld   l, e                                     ; $55F3: $6B
    add  hl, de                                   ; $55F4: $19
    db   $10                                      ; $55F5: $10
    add  hl, bc                                   ; $55F6: $09
    ld   [bc], a                                  ; $55F7: $02
    ld   [hl], a                                  ; $55F8: $77
    ld   l, e                                     ; $55F9: $6B
    add  hl, de                                   ; $55FA: $19
    ld   de, $1408                                ; $55FB: $11 $08 $14
    xor  b                                        ; $55FE: $A8
    adc  c                                        ; $55FF: $89
    adc  e                                        ; $5600: $8B
    add  h                                        ; $5601: $84
    add  e                                        ; $5602: $83
    add  h                                        ; $5603: $84
    add  [hl]                                     ; $5604: $86
    and  h                                        ; $5605: $A4
    add  e                                        ; $5606: $83
    add  h                                        ; $5607: $84
    ld   [$091C], sp                              ; $5608: $08 $1C $09
    inc  bc                                       ; $560B: $03
    add  hl, de                                   ; $560C: $19
    db   $10                                      ; $560D: $10
    ld   a, c                                     ; $560E: $79
    inc  bc                                       ; $560F: $03
    ld   l, l                                     ; $5610: $6D
    inc  bc                                       ; $5611: $03
    ld   [hl], a                                  ; $5612: $77
    add  hl, de                                   ; $5613: $19
    ld   de, $6B03                                ; $5614: $11 $03 $6B
    inc  bc                                       ; $5617: $03
    ld   [hl], l                                  ; $5618: $75
    add  hl, de                                   ; $5619: $19
    ld   bc, $6903                                ; $561A: $01 $03 $69
    inc  bc                                       ; $561D: $03
    ld   [hl], h                                  ; $561E: $74
    inc  bc                                       ; $561F: $03
    ld   l, b                                     ; $5620: $68
    add  hl, de                                   ; $5621: $19
    ld   de, $0008                                ; $5622: $11 $08 $00
    add  hl, bc                                   ; $5625: $09
    ld   [bc], a                                  ; $5626: $02
    ld   c, $01                                   ; $5627: $0E $01
    ld   d, l                                     ; $5629: $55
    ld   [hl], e                                  ; $562A: $73
    ld   d, $55                                   ; $562B: $16 $55
    ld   [hl], c                                  ; $562D: $71
    rla                                           ; $562E: $17
    rlca                                          ; $562F: $07
    ld   [bc], a                                  ; $5630: $02
    ld   b, $BE                                   ; $5631: $06 $BE
    ld   [$091E], sp                              ; $5633: $08 $1E $09
    ld   bc, $708D                                ; $5636: $01 $8D $70
    ld   h, b                                     ; $5639: $60
    ld   [hl], b                                  ; $563A: $70
    ld   h, b                                     ; $563B: $60
    ld   [hl], b                                  ; $563C: $70
    ld   h, b                                     ; $563D: $60
    adc  l                                        ; $563E: $8D
    ld   l, a                                     ; $563F: $6F
    ld   h, b                                     ; $5640: $60
    ld   l, a                                     ; $5641: $6F
    ld   h, b                                     ; $5642: $60
    ld   l, a                                     ; $5643: $6F
    ld   h, b                                     ; $5644: $60
    adc  l                                        ; $5645: $8D
    ld   l, a                                     ; $5646: $6F
    ld   h, b                                     ; $5647: $60
    ld   l, a                                     ; $5648: $6F
    ld   h, b                                     ; $5649: $60
    ld   l, a                                     ; $564A: $6F
    ld   h, b                                     ; $564B: $60
    adc  l                                        ; $564C: $8D
    ld   l, l                                     ; $564D: $6D
    ld   h, b                                     ; $564E: $60
    ld   l, l                                     ; $564F: $6D
    ld   h, b                                     ; $5650: $60
    ld   l, l                                     ; $5651: $6D
    ld   h, b                                     ; $5652: $60
    inc  b                                        ; $5653: $04
    nop                                           ; $5654: $00
    inc  b                                        ; $5655: $04
    nop                                           ; $5656: $00
    inc  b                                        ; $5657: $04
    nop                                           ; $5658: $00
    adc  l                                        ; $5659: $8D
    ld   [hl], h                                  ; $565A: $74
    ld   h, b                                     ; $565B: $60
    ld   [hl], h                                  ; $565C: $74
    ld   h, b                                     ; $565D: $60
    ld   [hl], h                                  ; $565E: $74
    ld   h, b                                     ; $565F: $60
    adc  l                                        ; $5660: $8D
    ld   [hl], e                                  ; $5661: $73
    ld   h, b                                     ; $5662: $60
    ld   [hl], e                                  ; $5663: $73
    ld   h, b                                     ; $5664: $60
    ld   [hl], e                                  ; $5665: $73
    ld   h, b                                     ; $5666: $60
    adc  l                                        ; $5667: $8D
    ld   [hl], d                                  ; $5668: $72
    ld   h, b                                     ; $5669: $60
    ld   [hl], d                                  ; $566A: $72
    ld   h, b                                     ; $566B: $60
    ld   [hl], d                                  ; $566C: $72
    ld   h, b                                     ; $566D: $60
    adc  l                                        ; $566E: $8D
    ld   [hl], e                                  ; $566F: $73
    ld   h, b                                     ; $5670: $60
    ld   [hl], e                                  ; $5671: $73
    ld   h, b                                     ; $5672: $60
    ld   [hl], e                                  ; $5673: $73
    ld   h, b                                     ; $5674: $60
    ld   c, $01                                   ; $5675: $0E $01
    ld   d, [hl]                                  ; $5677: $56
    ld   d, a                                     ; $5678: $57
    inc  b                                        ; $5679: $04
    nop                                           ; $567A: $00
    adc  e                                        ; $567B: $8B
    ld   [hl], d                                  ; $567C: $72
    ld   h, b                                     ; $567D: $60
    ld   [hl], d                                  ; $567E: $72
    ld   h, b                                     ; $567F: $60
    ld   [hl], d                                  ; $5680: $72
    ld   h, b                                     ; $5681: $60
    ld   c, $01                                   ; $5682: $0E $01
    ld   d, [hl]                                  ; $5684: $56
    ld   a, c                                     ; $5685: $79
    inc  b                                        ; $5686: $04
    nop                                           ; $5687: $00
    adc  e                                        ; $5688: $8B
    ld   l, a                                     ; $5689: $6F
    ld   h, b                                     ; $568A: $60
    ld   l, a                                     ; $568B: $6F
    ld   h, b                                     ; $568C: $60
    ld   l, a                                     ; $568D: $6F
    ld   h, b                                     ; $568E: $60
    ld   c, $01                                   ; $568F: $0E $01
    ld   d, [hl]                                  ; $5691: $56
    add  [hl]                                     ; $5692: $86
    adc  l                                        ; $5693: $8D
    ld   [hl], h                                  ; $5694: $74
    ld   h, b                                     ; $5695: $60
    ld   [hl], h                                  ; $5696: $74
    ld   h, b                                     ; $5697: $60
    ld   [hl], h                                  ; $5698: $74
    ld   h, b                                     ; $5699: $60
    adc  l                                        ; $569A: $8D
    ld   [hl], e                                  ; $569B: $73
    ld   h, b                                     ; $569C: $60
    ld   [hl], e                                  ; $569D: $73
    ld   h, b                                     ; $569E: $60
    ld   [hl], e                                  ; $569F: $73
    ld   h, b                                     ; $56A0: $60
    adc  l                                        ; $56A1: $8D
    ld   [hl], d                                  ; $56A2: $72
    ld   h, b                                     ; $56A3: $60
    ld   [hl], d                                  ; $56A4: $72
    ld   h, b                                     ; $56A5: $60
    ld   [hl], d                                  ; $56A6: $72
    ld   h, b                                     ; $56A7: $60
    adc  l                                        ; $56A8: $8D
    ld   [hl], e                                  ; $56A9: $73
    ld   h, b                                     ; $56AA: $60
    ld   [hl], e                                  ; $56AB: $73
    ld   h, b                                     ; $56AC: $60
    ld   [hl], e                                  ; $56AD: $73
    ld   h, b                                     ; $56AE: $60
    rrca                                          ; $56AF: $0F
    ld   bc, $5556                                ; $56B0: $01 $56 $55
    ld   d, $56                                   ; $56B3: $16 $56
    ld   d, e                                     ; $56B5: $53
    rla                                           ; $56B6: $17
    rla                                           ; $56B7: $17
    nop                                           ; $56B8: $00
    ld   d, [hl]                                  ; $56B9: $56
    pop  bc                                       ; $56BA: $C1
    ld   d, a                                     ; $56BB: $57
    ld   l, c                                     ; $56BC: $69
    ld   d, a                                     ; $56BD: $57
    ld   hl, sp+$58                               ; $56BE: $F8 $58
    sub  h                                        ; $56C0: $94
    ld   a, [bc]                                  ; $56C1: $0A
    ld   [$0105], sp                              ; $56C2: $08 $05 $01
    ret  c                                        ; $56C5: $D8

    inc  b                                        ; $56C6: $04
    ld   b, b                                     ; $56C7: $40
    ld   b, $82                                   ; $56C8: $06 $82
    rlca                                          ; $56CA: $07
    dec  bc                                       ; $56CB: $0B
    ld   [$0910], sp                              ; $56CC: $08 $10 $09
    ld   bc, $01F6                                ; $56CF: $01 $F6 $01
    sub  $DC                                      ; $56D2: $D6 $DC
    ld   bc, $08DF                                ; $56D4: $01 $DF $08
    ld   hl, $DF01                                ; $56D7: $21 $01 $DF
    ld   [$1910], sp                              ; $56DA: $08 $10 $19
    stop                                          ; $56DD: $10 $00
    inc  bc                                       ; $56DF: $03
    sub  e                                        ; $56E0: $93
    add  hl, de                                   ; $56E1: $19
    ld   bc, $1993                                ; $56E2: $01 $93 $19
    db   $10                                      ; $56E5: $10
    sub  e                                        ; $56E6: $93
    add  b                                        ; $56E7: $80
    add  hl, de                                   ; $56E8: $19
    ld   bc, $1993                                ; $56E9: $01 $93 $19
    db   $10                                      ; $56EC: $10
    sub  e                                        ; $56ED: $93
    add  hl, de                                   ; $56EE: $19
    ld   bc, $A093                                ; $56EF: $01 $93 $A0
    nop                                           ; $56F2: $00
    and  b                                        ; $56F3: $A0
    add  hl, de                                   ; $56F4: $19
    ld   de, $0109                                ; $56F5: $11 $09 $01
    ld   bc, $F603                                ; $56F8: $01 $03 $F6
    ld   bc, $DCD6                                ; $56FB: $01 $D6 $DC
    ld   bc, $08DF                                ; $56FE: $01 $DF $08
    ld   hl, $01DF                                ; $5701: $21 $DF $01
    rst  RST_38                                   ; $5704: $FF
    ld   [$0610], sp                              ; $5705: $08 $10 $06
    ld   h, h                                     ; $5708: $64
    nop                                           ; $5709: $00
    inc  bc                                       ; $570A: $03
    adc  b                                        ; $570B: $88
    adc  b                                        ; $570C: $88
    adc  b                                        ; $570D: $88
    nop                                           ; $570E: $00
    xor  e                                        ; $570F: $AB
    nop                                           ; $5710: $00
    adc  d                                        ; $5711: $8A
    adc  d                                        ; $5712: $8A
    adc  d                                        ; $5713: $8A
    nop                                           ; $5714: $00
    and  a                                        ; $5715: $A7
    nop                                           ; $5716: $00
    adc  b                                        ; $5717: $88
    adc  b                                        ; $5718: $88
    adc  b                                        ; $5719: $88
    adc  a                                        ; $571A: $8F
    adc  a                                        ; $571B: $8F
    adc  a                                        ; $571C: $8F
    adc  l                                        ; $571D: $8D
    adc  l                                        ; $571E: $8D
    adc  l                                        ; $571F: $8D
    nop                                           ; $5720: $00
    and  a                                        ; $5721: $A7
    nop                                           ; $5722: $00
    adc  l                                        ; $5723: $8D
    adc  l                                        ; $5724: $8D
    adc  l                                        ; $5725: $8D
    xor  d                                        ; $5726: $AA
    adc  l                                        ; $5727: $8D
    adc  e                                        ; $5728: $8B
    adc  d                                        ; $5729: $8A
    adc  b                                        ; $572A: $88
    xor  b                                        ; $572B: $A8
    adc  e                                        ; $572C: $8B
    nop                                           ; $572D: $00
    xor  d                                        ; $572E: $AA
    nop                                           ; $572F: $00
    and  a                                        ; $5730: $A7
    adc  d                                        ; $5731: $8A
    nop                                           ; $5732: $00
    xor  b                                        ; $5733: $A8
    and  a                                        ; $5734: $A7
    nop                                           ; $5735: $00
    adc  b                                        ; $5736: $88
    adc  b                                        ; $5737: $88
    adc  b                                        ; $5738: $88
    nop                                           ; $5739: $00
    xor  e                                        ; $573A: $AB
    nop                                           ; $573B: $00
    adc  d                                        ; $573C: $8A
    adc  d                                        ; $573D: $8A
    adc  d                                        ; $573E: $8A
    nop                                           ; $573F: $00
    and  a                                        ; $5740: $A7
    nop                                           ; $5741: $00
    adc  b                                        ; $5742: $88
    adc  b                                        ; $5743: $88
    adc  b                                        ; $5744: $88
    adc  a                                        ; $5745: $8F
    adc  a                                        ; $5746: $8F
    adc  a                                        ; $5747: $8F
    adc  l                                        ; $5748: $8D
    adc  l                                        ; $5749: $8D
    adc  l                                        ; $574A: $8D
    nop                                           ; $574B: $00
    or   b                                        ; $574C: $B0
    nop                                           ; $574D: $00
    adc  a                                        ; $574E: $8F
    adc  a                                        ; $574F: $8F
    adc  a                                        ; $5750: $8F
    nop                                           ; $5751: $00
    or   h                                        ; $5752: $B4
    nop                                           ; $5753: $00
    sub  e                                        ; $5754: $93
    sub  e                                        ; $5755: $93
    sub  e                                        ; $5756: $93
    nop                                           ; $5757: $00
    or   [hl]                                     ; $5758: $B6
    nop                                           ; $5759: $00
    sub  e                                        ; $575A: $93
    sub  h                                        ; $575B: $94
    sub  l                                        ; $575C: $95
    sub  [hl]                                     ; $575D: $96
    sub  a                                        ; $575E: $97
    add  hl, bc                                   ; $575F: $09
    ld   [bc], a                                  ; $5760: $02
    adc  l                                        ; $5761: $8D
    nop                                           ; $5762: $00
    xor  a                                        ; $5763: $AF
    and  l                                        ; $5764: $A5
    ld   d, $56                                   ; $5765: $16 $56
    add  $17                                      ; $5767: $C6 $17
    inc  b                                        ; $5769: $04
    nop                                           ; $576A: $00
    ld   b, $78                                   ; $576B: $06 $78
    rlca                                          ; $576D: $07
    dec  bc                                       ; $576E: $0B
    ld   [$0910], sp                              ; $576F: $08 $10 $09
    ld   bc, $02EA                                ; $5772: $01 $EA $02
    reti                                          ; $5775: $D9


    inc  bc                                       ; $5776: $03
    xor  b                                        ; $5777: $A8
    ld   bc, $D703                                ; $5778: $01 $03 $D7
    ld   [$0121], sp                              ; $577B: $08 $21 $01
    rst  WriteBgMapTilePair                       ; $577E: $D7
    ld   [$1910], sp                              ; $577F: $08 $10 $19
    stop                                          ; $5782: $10 $00
    inc  bc                                       ; $5784: $03
    adc  l                                        ; $5785: $8D
    add  hl, de                                   ; $5786: $19
    ld   bc, $198D                                ; $5787: $01 $8D $19
    db   $10                                      ; $578A: $10
    adc  l                                        ; $578B: $8D
    add  b                                        ; $578C: $80
    add  hl, de                                   ; $578D: $19
    ld   bc, $198D                                ; $578E: $01 $8D $19
    db   $10                                      ; $5791: $10
    adc  l                                        ; $5792: $8D
    add  hl, de                                   ; $5793: $19
    ld   bc, $A08D                                ; $5794: $01 $8D $A0
    nop                                           ; $5797: $00
    and  b                                        ; $5798: $A0
    add  hl, de                                   ; $5799: $19
    ld   de, $EA03                                ; $579A: $11 $03 $EA
    ld   [bc], a                                  ; $579D: $02
    reti                                          ; $579E: $D9


    inc  bc                                       ; $579F: $03
    xor  b                                        ; $57A0: $A8
    inc  bc                                       ; $57A1: $03
    or   a                                        ; $57A2: $B7
    inc  bc                                       ; $57A3: $03
    xor  a                                        ; $57A4: $AF
    or   [hl]                                     ; $57A5: $B6
    or   h                                        ; $57A6: $B4
    inc  b                                        ; $57A7: $04
    jr   z, jr_003_581D                           ; $57A8: $28 $73

    ld   [hl], h                                  ; $57AA: $74
    ld   c, $0B                                   ; $57AB: $0E $0B
    ld   d, a                                     ; $57AD: $57
    and  a                                        ; $57AE: $A7

jr_003_57AF:
    ld   b, $64                                   ; $57AF: $06 $64
    inc  bc                                       ; $57B1: $03
    sub  a                                        ; $57B2: $97
    sub  a                                        ; $57B3: $97
    sub  a                                        ; $57B4: $97
    nop                                           ; $57B5: $00
    cp   e                                        ; $57B6: $BB
    nop                                           ; $57B7: $00
    sbc  e                                        ; $57B8: $9B
    sbc  e                                        ; $57B9: $9B
    sbc  e                                        ; $57BA: $9B
    nop                                           ; $57BB: $00
    or   [hl]                                     ; $57BC: $B6
    nop                                           ; $57BD: $00
    sub  a                                        ; $57BE: $97
    sub  a                                        ; $57BF: $97
    sub  a                                        ; $57C0: $97
    inc  bc                                       ; $57C1: $03
    adc  b                                        ; $57C2: $88
    adc  b                                        ; $57C3: $88
    adc  b                                        ; $57C4: $88
    add  a                                        ; $57C5: $87
    add  a                                        ; $57C6: $87
    add  a                                        ; $57C7: $87
    nop                                           ; $57C8: $00
    and  c                                        ; $57C9: $A1
    nop                                           ; $57CA: $00
    add  a                                        ; $57CB: $87
    add  a                                        ; $57CC: $87
    add  a                                        ; $57CD: $87

jr_003_57CE:
    and  a                                        ; $57CE: $A7
    add  a                                        ; $57CF: $87
    add  e                                        ; $57D0: $83

jr_003_57D1:
    add  e                                        ; $57D1: $83
    add  e                                        ; $57D2: $83
    and  e                                        ; $57D3: $A3
    add  e                                        ; $57D4: $83
    nop                                           ; $57D5: $00
    and  e                                        ; $57D6: $A3
    nop                                           ; $57D7: $00
    and  e                                        ; $57D8: $A3
    add  e                                        ; $57D9: $83
    nop                                           ; $57DA: $00
    and  e                                        ; $57DB: $A3
    inc  bc                                       ; $57DC: $03
    or   [hl]                                     ; $57DD: $B6
    ld   b, $FF                                   ; $57DE: $06 $FF
    and  b                                        ; $57E0: $A0
    or   h                                        ; $57E1: $B4
    or   [hl]                                     ; $57E2: $B6
    or   a                                        ; $57E3: $B7
    cp   c                                        ; $57E4: $B9
    cp   e                                        ; $57E5: $BB
    cp   h                                        ; $57E6: $BC
    cp   c                                        ; $57E7: $B9
    inc  bc                                       ; $57E8: $03
    ret  z                                        ; $57E9: $C8

    rlc  c                                        ; $57EA: $CB $01
    xor  a                                        ; $57EC: $AF
    ld   [$0121], sp                              ; $57ED: $08 $21 $01

jr_003_57F0:
    rst  RST_08                                   ; $57F0: $CF
    ld   [$AC10], sp                              ; $57F1: $08 $10 $AC
    ld   d, $57                                   ; $57F4: $16 $57
    ld   l, c                                     ; $57F6: $69
    rla                                           ; $57F7: $17
    rlca                                          ; $57F8: $07
    inc  bc                                       ; $57F9: $03
    ld   b, $C8                                   ; $57FA: $06 $C8
    ld   [$0B01], sp                              ; $57FC: $08 $01 $0B
    db   $F4                                      ; $57FF: $F4
    inc  b                                        ; $5800: $04
    jr   z, jr_003_5807                           ; $5801: $28 $04

    jr   z, jr_003_57AF                           ; $5803: $28 $AA

    adc  d                                        ; $5805: $8A
    adc  l                                        ; $5806: $8D

jr_003_5807:
    adc  d                                        ; $5807: $8A
    adc  l                                        ; $5808: $8D
    xor  d                                        ; $5809: $AA
    or   b                                        ; $580A: $B0
    adc  a                                        ; $580B: $8F
    adc  l                                        ; $580C: $8D
    ld   c, $01                                   ; $580D: $0E $01

jr_003_580F:
    ld   e, b                                     ; $580F: $58
    ld   [bc], a                                  ; $5810: $02
    xor  c                                        ; $5811: $A9
    adc  c                                        ; $5812: $89
    adc  a                                        ; $5813: $8F
    adc  c                                        ; $5814: $89
    adc  a                                        ; $5815: $8F
    xor  c                                        ; $5816: $A9
    or   b                                        ; $5817: $B0
    adc  a                                        ; $5818: $8F

jr_003_5819:
    sub  b                                        ; $5819: $90
    sub  e                                        ; $581A: $93
    sub  e                                        ; $581B: $93
    sub  e                                        ; $581C: $93

jr_003_581D:
    add  b                                        ; $581D: $80
    sub  e                                        ; $581E: $93
    sub  e                                        ; $581F: $93
    sub  e                                        ; $5820: $93
    and  b                                        ; $5821: $A0
    nop                                           ; $5822: $00
    and  b                                        ; $5823: $A0
    inc  b                                        ; $5824: $04
    jr   z, jr_003_57D1                           ; $5825: $28 $AA

    adc  d                                        ; $5827: $8A
    adc  l                                        ; $5828: $8D
    adc  d                                        ; $5829: $8A
    adc  l                                        ; $582A: $8D
    xor  d                                        ; $582B: $AA
    or   b                                        ; $582C: $B0
    adc  a                                        ; $582D: $8F
    adc  l                                        ; $582E: $8D
    ld   c, $01                                   ; $582F: $0E $01
    ld   e, b                                     ; $5831: $58
    inc  h                                        ; $5832: $24
    and  a                                        ; $5833: $A7
    add  a                                        ; $5834: $87
    adc  d                                        ; $5835: $8A
    add  a                                        ; $5836: $87
    adc  d                                        ; $5837: $8A
    xor  a                                        ; $5838: $AF
    xor  a                                        ; $5839: $AF
    sub  e                                        ; $583A: $93
    sub  e                                        ; $583B: $93
    inc  b                                        ; $583C: $04
    jr   z, jr_003_57CE                           ; $583D: $28 $8F

    ld   c, $0B                                   ; $583F: $0E $0B
    ld   e, b                                     ; $5841: $58
    inc  a                                        ; $5842: $3C
    inc  b                                        ; $5843: $04
    jr   z, jr_003_57CE                           ; $5844: $28 $88

    adc  b                                        ; $5846: $88
    adc  b                                        ; $5847: $88
    nop                                           ; $5848: $00
    xor  b                                        ; $5849: $A8
    nop                                           ; $584A: $00
    add  a                                        ; $584B: $87

jr_003_584C:
    add  a                                        ; $584C: $87
    add  a                                        ; $584D: $87

jr_003_584E:
    nop                                           ; $584E: $00
    and  a                                        ; $584F: $A7
    inc  b                                        ; $5850: $04
    jr   nz, jr_003_57F0                          ; $5851: $20 $9D

    ld   c, $05                                   ; $5853: $0E $05
    ld   e, b                                     ; $5855: $58
    ld   d, b                                     ; $5856: $50
    sbc  e                                        ; $5857: $9B
    sbc  e                                        ; $5858: $9B
    sbc  e                                        ; $5859: $9B
    inc  de                                       ; $585A: $13
    nop                                           ; $585B: $00
    ld   e, b                                     ; $585C: $58
    ld   a, d                                     ; $585D: $7A
    nop                                           ; $585E: $00
    cp   c                                        ; $585F: $B9
    nop                                           ; $5860: $00
    sbc  e                                        ; $5861: $9B
    sbc  e                                        ; $5862: $9B
    sbc  e                                        ; $5863: $9B
    nop                                           ; $5864: $00
    cp   e                                        ; $5865: $BB
    nop                                           ; $5866: $00
    inc  bc                                       ; $5867: $03
    adc  b                                        ; $5868: $88
    adc  b                                        ; $5869: $88
    adc  b                                        ; $586A: $88
    nop                                           ; $586B: $00
    xor  b                                        ; $586C: $A8
    inc  b                                        ; $586D: $04
    jr   nz, jr_003_580F                          ; $586E: $20 $9F

    ld   c, $08                                   ; $5870: $0E $08
    ld   e, b                                     ; $5872: $58
    ld   l, l                                     ; $5873: $6D
    nop                                           ; $5874: $00
    cp   e                                        ; $5875: $BB
    rrca                                          ; $5876: $0F
    ld   bc, $4358                                ; $5877: $01 $58 $43
    cp   h                                        ; $587A: $BC
    inc  b                                        ; $587B: $04
    jr   nz, jr_003_5819                          ; $587C: $20 $9B

    ld   c, $08                                   ; $587E: $0E $08
    ld   e, b                                     ; $5880: $58
    ld   a, e                                     ; $5881: $7B
    nop                                           ; $5882: $00
    cp   e                                        ; $5883: $BB
    nop                                           ; $5884: $00
    inc  bc                                       ; $5885: $03
    adc  d                                        ; $5886: $8A
    adc  d                                        ; $5887: $8A
    adc  d                                        ; $5888: $8A
    add  e                                        ; $5889: $83
    add  e                                        ; $588A: $83
    add  e                                        ; $588B: $83
    add  e                                        ; $588C: $83
    and  b                                        ; $588D: $A0
    nop                                           ; $588E: $00
    and  l                                        ; $588F: $A5
    ld   d, $58                                   ; $5890: $16 $58
    nop                                           ; $5892: $00
    rla                                           ; $5893: $17
    inc  b                                        ; $5894: $04
    jr   nz, @+$09                                ; $5895: $20 $07

    rlca                                          ; $5897: $07
    ld   b, $14                                   ; $5898: $06 $14
    ld   [$0426], sp                              ; $589A: $08 $26 $04
    jr   nz, jr_003_584C                          ; $589D: $20 $AD

    adc  l                                        ; $589F: $8D
    adc  l                                        ; $58A0: $8D
    xor  l                                        ; $58A1: $AD
    xor  l                                        ; $58A2: $AD
    adc  l                                        ; $58A3: $8D
    xor  l                                        ; $58A4: $AD
    adc  l                                        ; $58A5: $8D
    ld   c, $06                                   ; $58A6: $0E $06
    ld   e, b                                     ; $58A8: $58
    sbc  h                                        ; $58A9: $9C
    rlca                                          ; $58AA: $07
    ld   b, $8D                                   ; $58AB: $06 $8D
    adc  l                                        ; $58AD: $8D
    adc  l                                        ; $58AE: $8D
    rlca                                          ; $58AF: $07
    ld   [$8D8D], sp                              ; $58B0: $08 $8D $8D
    adc  l                                        ; $58B3: $8D
    rlca                                          ; $58B4: $07
    inc  c                                        ; $58B5: $0C
    adc  l                                        ; $58B6: $8D
    adc  l                                        ; $58B7: $8D
    adc  l                                        ; $58B8: $8D
    rlca                                          ; $58B9: $07
    rrca                                          ; $58BA: $0F
    adc  l                                        ; $58BB: $8D
    adc  l                                        ; $58BC: $8D
    adc  l                                        ; $58BD: $8D
    inc  b                                        ; $58BE: $04
    jr   nz, jr_003_584E                          ; $58BF: $20 $8D

    adc  l                                        ; $58C1: $8D
    adc  l                                        ; $58C2: $8D
    nop                                           ; $58C3: $00
    xor  a                                        ; $58C4: $AF
    nop                                           ; $58C5: $00
    adc  l                                        ; $58C6: $8D
    adc  l                                        ; $58C7: $8D
    adc  l                                        ; $58C8: $8D
    xor  a                                        ; $58C9: $AF
    adc  l                                        ; $58CA: $8D
    adc  l                                        ; $58CB: $8D
    adc  l                                        ; $58CC: $8D
    adc  l                                        ; $58CD: $8D
    adc  l                                        ; $58CE: $8D
    xor  a                                        ; $58CF: $AF
    adc  l                                        ; $58D0: $8D
    adc  l                                        ; $58D1: $8D
    adc  l                                        ; $58D2: $8D
    xor  a                                        ; $58D3: $AF
    adc  l                                        ; $58D4: $8D
    ld   c, $02                                   ; $58D5: $0E $02
    ld   e, b                                     ; $58D7: $58
    cp   [hl]                                     ; $58D8: $BE
    adc  l                                        ; $58D9: $8D
    adc  l                                        ; $58DA: $8D
    adc  l                                        ; $58DB: $8D
    nop                                           ; $58DC: $00
    xor  l                                        ; $58DD: $AD
    nop                                           ; $58DE: $00
    adc  l                                        ; $58DF: $8D
    adc  l                                        ; $58E0: $8D
    adc  l                                        ; $58E1: $8D
    xor  l                                        ; $58E2: $AD
    adc  l                                        ; $58E3: $8D
    rlca                                          ; $58E4: $07
    dec  bc                                       ; $58E5: $0B
    adc  l                                        ; $58E6: $8D
    adc  l                                        ; $58E7: $8D
    adc  l                                        ; $58E8: $8D

jr_003_58E9:
    rlca                                          ; $58E9: $07
    dec  c                                        ; $58EA: $0D
    adc  l                                        ; $58EB: $8D
    adc  l                                        ; $58EC: $8D
    adc  l                                        ; $58ED: $8D
    rlca                                          ; $58EE: $07
    rrca                                          ; $58EF: $0F
    nop                                           ; $58F0: $00
    xor  l                                        ; $58F1: $AD
    ld   b, $FF                                   ; $58F2: $06 $FF
    xor  a                                        ; $58F4: $AF
    ld   d, $58                                   ; $58F5: $16 $58
    sub  h                                        ; $58F7: $94
    rla                                           ; $58F8: $17
    nop                                           ; $58F9: $00
    ld   e, c                                     ; $58FA: $59
    ld   [bc], a                                  ; $58FB: $02
    ld   e, c                                     ; $58FC: $59
    and  d                                        ; $58FD: $A2
    ld   e, d                                     ; $58FE: $5A
    ld   c, c                                     ; $58FF: $49
    ld   e, d                                     ; $5900: $5A
    sub  a                                        ; $5901: $97
    ld   a, [bc]                                  ; $5902: $0A
    inc  bc                                       ; $5903: $03
    dec  b                                        ; $5904: $05
    nop                                           ; $5905: $00
    ret                                           ; $5906: $C9


    ld   b, $D2                                   ; $5907: $06 $D2
    rlca                                          ; $5909: $07
    dec  bc                                       ; $590A: $0B
    ld   [$091C], sp                              ; $590B: $08 $1C $09
    ld   [bc], a                                  ; $590E: $02
    jr   @-$7E                                    ; $590F: $18 $80

    inc  b                                        ; $5911: $04
    jr   nz, @+$78                                ; $5912: $20 $76

    ld   a, c                                     ; $5914: $79
    ld   a, h                                     ; $5915: $7C
    ld   [hl], l                                  ; $5916: $75
    ld   a, c                                     ; $5917: $79
    ld   a, h                                     ; $5918: $7C
    ld   [hl], h                                  ; $5919: $74
    ld   a, c                                     ; $591A: $79
    ld   a, h                                     ; $591B: $7C
    ld   [hl], e                                  ; $591C: $73
    ld   a, c                                     ; $591D: $79
    ld   a, h                                     ; $591E: $7C
    ld   c, $01                                   ; $591F: $0E $01
    ld   e, c                                     ; $5921: $59
    ld   de, $0004                                ; $5922: $11 $04 $00
    ld   b, $E6                                   ; $5925: $06 $E6
    jr   jr_003_58E9                              ; $5927: $18 $C0

    inc  b                                        ; $5929: $04
    nop                                           ; $592A: $00
    ld   [$0200], sp                              ; $592B: $08 $00 $02
    or   [hl]                                     ; $592E: $B6
    nop                                           ; $592F: $00
    ld   [hl], l                                  ; $5930: $75
    halt                                          ; $5931: $76
    ld   a, c                                     ; $5932: $79
    nop                                           ; $5933: $00
    inc  bc                                       ; $5934: $03
    ld   l, b                                     ; $5935: $68
    ld   h, b                                     ; $5936: $60
    and  a                                        ; $5937: $A7
    nop                                           ; $5938: $00
    ld   h, [hl]                                  ; $5939: $66
    ld   h, e                                     ; $593A: $63
    ld   h, [hl]                                  ; $593B: $66
    ld   [de], a                                  ; $593C: $12
    jr   nz, jr_003_5998                          ; $593D: $20 $59

    ld   e, d                                     ; $593F: $5A
    ld   h, l                                     ; $5940: $65
    ld   h, d                                     ; $5941: $62
    ld   h, l                                     ; $5942: $65
    ld   h, h                                     ; $5943: $64
    ld   h, c                                     ; $5944: $61
    ld   h, h                                     ; $5945: $64
    ld   h, e                                     ; $5946: $63
    inc  bc                                       ; $5947: $03
    ld   a, b                                     ; $5948: $78
    ld   a, e                                     ; $5949: $7B
    nop                                           ; $594A: $00
    sbc  c                                        ; $594B: $99
    inc  bc                                       ; $594C: $03
    ld   c, b                                     ; $594D: $48
    ld   h, b                                     ; $594E: $60
    ld   b, a                                     ; $594F: $47
    ld   bc, $08AA                                ; $5950: $01 $AA $08
    dec  de                                       ; $5953: $1B
    ld   bc, $0E8A                                ; $5954: $01 $8A $0E
    ld   bc, $2959                                ; $5957: $01 $59 $29
    ld   a, h                                     ; $595A: $7C
    ld   a, l                                     ; $595B: $7D
    halt                                          ; $595C: $76
    ld   a, c                                     ; $595D: $79
    ld   a, b                                     ; $595E: $78
    ld   a, c                                     ; $595F: $79
    ld   a, e                                     ; $5960: $7B
    ld   a, c                                     ; $5961: $79
    ld   a, e                                     ; $5962: $7B
    nop                                           ; $5963: $00
    ld   a, l                                     ; $5964: $7D
    ld   h, b                                     ; $5965: $60
    or   c                                        ; $5966: $B1
    ld   h, b                                     ; $5967: $60
    ld   d, d                                     ; $5968: $52
    ld   d, e                                     ; $5969: $53
    nop                                           ; $596A: $00
    ld   a, c                                     ; $596B: $79
    ld   a, b                                     ; $596C: $78
    ld   a, c                                     ; $596D: $79
    nop                                           ; $596E: $00
    or   c                                        ; $596F: $B1
    nop                                           ; $5970: $00
    ld   h, b                                     ; $5971: $60
    ld   [hl], d                                  ; $5972: $72
    ld   [hl], e                                  ; $5973: $73
    ld   a, c                                     ; $5974: $79
    ld   a, b                                     ; $5975: $78
    ld   a, c                                     ; $5976: $79
    ld   [bc], a                                  ; $5977: $02
    nop                                           ; $5978: $00
    or   [hl]                                     ; $5979: $B6
    nop                                           ; $597A: $00
    ld   [hl], l                                  ; $597B: $75
    halt                                          ; $597C: $76
    ld   a, c                                     ; $597D: $79
    inc  b                                        ; $597E: $04
    ld   [$4068], sp                              ; $597F: $08 $68 $40
    ld   b, a                                     ; $5982: $47
    xor  d                                        ; $5983: $AA
    nop                                           ; $5984: $00
    inc  bc                                       ; $5985: $03
    ld   [hl], l                                  ; $5986: $75
    halt                                          ; $5987: $76
    ld   a, c                                     ; $5988: $79
    ld   c, $01                                   ; $5989: $0E $01
    ld   e, c                                     ; $598B: $59
    ld   a, [hl]                                  ; $598C: $7E
    ld   a, l                                     ; $598D: $7D
    ld   a, h                                     ; $598E: $7C
    ld   a, l                                     ; $598F: $7D
    ld   a, [hl]                                  ; $5990: $7E
    ld   a, l                                     ; $5991: $7D
    ld   a, b                                     ; $5992: $78
    nop                                           ; $5993: $00
    sub  l                                        ; $5994: $95
    ld   [$181C], sp                              ; $5995: $08 $1C $18

jr_003_5998:
    add  b                                        ; $5998: $80
    nop                                           ; $5999: $00
    inc  bc                                       ; $599A: $03
    ld   [hl], c                                  ; $599B: $71
    ld   [hl], c                                  ; $599C: $71
    ld   [hl], c                                  ; $599D: $71
    ld   d, $59                                   ; $599E: $16 $59
    inc  hl                                       ; $59A0: $23
    rla                                           ; $59A1: $17
    ld   b, $64                                   ; $59A2: $06 $64
    jr   @-$7E                                    ; $59A4: $18 $80

    add  hl, bc                                   ; $59A6: $09
    ld   [bc], a                                  ; $59A7: $02
    rlca                                          ; $59A8: $07
    ld   [$1408], sp                              ; $59A9: $08 $08 $14
    inc  b                                        ; $59AC: $04
    jr   nz, jr_003_5A0F                          ; $59AD: $20 $60

    ld   l, d                                     ; $59AF: $6A
    ld   l, l                                     ; $59B0: $6D
    ld   h, b                                     ; $59B1: $60
    ld   l, d                                     ; $59B2: $6A
    ld   l, l                                     ; $59B3: $6D
    ld   h, b                                     ; $59B4: $60
    ld   l, d                                     ; $59B5: $6A
    ld   l, l                                     ; $59B6: $6D
    ld   h, b                                     ; $59B7: $60
    ld   l, d                                     ; $59B8: $6A
    ld   l, l                                     ; $59B9: $6D
    ld   c, $01                                   ; $59BA: $0E $01
    ld   e, c                                     ; $59BC: $59
    xor  h                                        ; $59BD: $AC
    nop                                           ; $59BE: $00
    and  b                                        ; $59BF: $A0
    inc  b                                        ; $59C0: $04
    nop                                           ; $59C1: $00
    ld   b, $E6                                   ; $59C2: $06 $E6
    add  hl, bc                                   ; $59C4: $09
    ld   bc, $0004                                ; $59C5: $01 $04 $00
    rlca                                          ; $59C8: $07
    rlca                                          ; $59C9: $07
    ld   [bc], a                                  ; $59CA: $02
    or   [hl]                                     ; $59CB: $B6
    rlca                                          ; $59CC: $07
    add  hl, bc                                   ; $59CD: $09
    nop                                           ; $59CE: $00
    ld   [hl], l                                  ; $59CF: $75
    halt                                          ; $59D0: $76
    ld   a, c                                     ; $59D1: $79
    nop                                           ; $59D2: $00
    inc  bc                                       ; $59D3: $03
    ld   l, b                                     ; $59D4: $68
    ld   h, b                                     ; $59D5: $60
    and  a                                        ; $59D6: $A7
    nop                                           ; $59D7: $00
    ld   l, d                                     ; $59D8: $6A
    ld   h, l                                     ; $59D9: $65
    ld   l, d                                     ; $59DA: $6A
    ld   l, c                                     ; $59DB: $69

jr_003_59DC:
    ld   h, l                                     ; $59DC: $65
    ld   l, c                                     ; $59DD: $69
    ld   [$001B], sp                              ; $59DE: $08 $1B $00
    adc  b                                        ; $59E1: $88
    ld   [$1214], sp                              ; $59E2: $08 $14 $12
    jr   z, jr_003_5A41                           ; $59E5: $28 $5A

    ld   [$6041], sp                              ; $59E7: $08 $41 $60
    ld   b, c                                     ; $59EA: $41
    add  c                                        ; $59EB: $81
    rlca                                          ; $59EC: $07
    rrca                                          ; $59ED: $0F
    add  hl, de                                   ; $59EE: $19
    db   $10                                      ; $59EF: $10
    inc  bc                                       ; $59F0: $03
    ld   c, d                                     ; $59F1: $4A
    ld   c, e                                     ; $59F2: $4B
    add  hl, de                                   ; $59F3: $19
    ld   de, $4D4C                                ; $59F4: $11 $4C $4D
    add  hl, de                                   ; $59F7: $19
    ld   bc, $194E                                ; $59F8: $01 $4E $19
    ld   de, $4C4D                                ; $59FB: $11 $4D $4C
    ld   c, e                                     ; $59FE: $4B
    rlca                                          ; $59FF: $07
    rlca                                          ; $5A00: $07
    xor  l                                        ; $5A01: $AD
    add  hl, bc                                   ; $5A02: $09
    ld   [bc], a                                  ; $5A03: $02
    ld   c, $01                                   ; $5A04: $0E $01
    ld   e, c                                     ; $5A06: $59
    add  $08                                      ; $5A07: $C6 $08
    inc  e                                        ; $5A09: $1C
    rlca                                          ; $5A0A: $07
    dec  bc                                       ; $5A0B: $0B
    adc  l                                        ; $5A0C: $8D
    add  c                                        ; $5A0D: $81
    inc  bc                                       ; $5A0E: $03

jr_003_5A0F:
    adc  l                                        ; $5A0F: $8D
    nop                                           ; $5A10: $00
    ld   h, b                                     ; $5A11: $60
    ld   [$4F14], sp                              ; $5A12: $08 $14 $4F
    ld   d, b                                     ; $5A15: $50
    nop                                           ; $5A16: $00
    halt                                          ; $5A17: $76
    ld   [hl], l                                  ; $5A18: $75
    halt                                          ; $5A19: $76
    ld   [$031C], sp                              ; $5A1A: $08 $1C $03
    adc  l                                        ; $5A1D: $8D
    add  c                                        ; $5A1E: $81
    inc  bc                                       ; $5A1F: $03
    adc  l                                        ; $5A20: $8D
    ld   h, b                                     ; $5A21: $60
    ld   [$6F14], sp                              ; $5A22: $08 $14 $6F
    ld   [hl], b                                  ; $5A25: $70
    halt                                          ; $5A26: $76
    ld   [hl], l                                  ; $5A27: $75
    halt                                          ; $5A28: $76
    nop                                           ; $5A29: $00
    ld   l, l                                     ; $5A2A: $6D
    ld   h, b                                     ; $5A2B: $60
    xor  l                                        ; $5A2C: $AD
    nop                                           ; $5A2D: $00
    ld   [hl], b                                  ; $5A2E: $70
    ld   [hl], c                                  ; $5A2F: $71
    halt                                          ; $5A30: $76
    inc  b                                        ; $5A31: $04
    nop                                           ; $5A32: $00
    ld   a, c                                     ; $5A33: $79
    ld   b, b                                     ; $5A34: $40
    ld   e, c                                     ; $5A35: $59
    cp   c                                        ; $5A36: $B9
    nop                                           ; $5A37: $00
    ld   [hl], b                                  ; $5A38: $70
    ld   [hl], c                                  ; $5A39: $71
    halt                                          ; $5A3A: $76
    ld   c, $01                                   ; $5A3B: $0E $01
    ld   e, d                                     ; $5A3D: $5A
    ld   sp, $8C00                                ; $5A3E: $31 $00 $8C

jr_003_5A41:
    adc  l                                        ; $5A41: $8D
    adc  h                                        ; $5A42: $8C
    add  b                                        ; $5A43: $80
    and  c                                        ; $5A44: $A1
    ld   d, $59                                   ; $5A45: $16 $59
    ret  nz                                       ; $5A47: $C0

    rla                                           ; $5A48: $17
    rlca                                          ; $5A49: $07
    inc  bc                                       ; $5A4A: $03
    ld   b, $C8                                   ; $5A4B: $06 $C8
    ld   [$0B17], sp                              ; $5A4D: $08 $17 $0B
    jr   jr_003_59DC                              ; $5A50: $18 $8A

    adc  c                                        ; $5A52: $89
    adc  b                                        ; $5A53: $88
    add  a                                        ; $5A54: $87
    adc  d                                        ; $5A55: $8A
    adc  c                                        ; $5A56: $89
    adc  b                                        ; $5A57: $88
    add  a                                        ; $5A58: $87
    ld   b, $FE                                   ; $5A59: $06 $FE
    inc  b                                        ; $5A5B: $04
    jr   nz, jr_003_5A62                          ; $5A5C: $20 $04

    jr   nz, jr_003_5ACA                          ; $5A5E: $20 $6A

    ld   l, l                                     ; $5A60: $6D
    ld   [hl], b                                  ; $5A61: $70

jr_003_5A62:
    ld   l, c                                     ; $5A62: $69
    ld   l, l                                     ; $5A63: $6D
    ld   [hl], b                                  ; $5A64: $70
    ld   l, b                                     ; $5A65: $68
    ld   l, l                                     ; $5A66: $6D
    ld   [hl], b                                  ; $5A67: $70
    ld   [de], a                                  ; $5A68: $12
    jr   nz, @+$5C                                ; $5A69: $20 $5A

    ld   [hl], e                                  ; $5A6B: $73
    ld   h, a                                     ; $5A6C: $67
    ld   l, l                                     ; $5A6D: $6D
    ld   [hl], b                                  ; $5A6E: $70
    ld   c, $08                                   ; $5A6F: $0E $08
    ld   e, d                                     ; $5A71: $5A
    ld   e, l                                     ; $5A72: $5D
    ld   h, l                                     ; $5A73: $65
    ld   h, l                                     ; $5A74: $65
    ld   h, l                                     ; $5A75: $65
    ld   b, $C8                                   ; $5A76: $06 $C8
    nop                                           ; $5A78: $00
    adc  d                                        ; $5A79: $8A
    adc  d                                        ; $5A7A: $8A
    adc  c                                        ; $5A7B: $89
    adc  c                                        ; $5A7C: $89
    adc  d                                        ; $5A7D: $8A
    adc  d                                        ; $5A7E: $8A
    adc  c                                        ; $5A7F: $89
    adc  c                                        ; $5A80: $89
    adc  d                                        ; $5A81: $8A
    adc  d                                        ; $5A82: $8A
    adc  c                                        ; $5A83: $89
    adc  c                                        ; $5A84: $89
    ld   b, $FE                                   ; $5A85: $06 $FE
    nop                                           ; $5A87: $00
    ld   h, l                                     ; $5A88: $65
    ld   l, c                                     ; $5A89: $69
    ld   l, h                                     ; $5A8A: $6C
    ld   h, h                                     ; $5A8B: $64
    ld   l, c                                     ; $5A8C: $69
    ld   l, h                                     ; $5A8D: $6C
    ld   h, l                                     ; $5A8E: $65
    ld   l, c                                     ; $5A8F: $69
    ld   l, h                                     ; $5A90: $6C
    nop                                           ; $5A91: $00
    sub  c                                        ; $5A92: $91
    ld   d, $5A                                   ; $5A93: $16 $5A
    ld   e, e                                     ; $5A95: $5B
    rla                                           ; $5A96: $17
    ld   b, $0A                                   ; $5A97: $06 $0A
    ld   [$8C15], sp                              ; $5A99: $08 $15 $8C
    adc  h                                        ; $5A9C: $8C
    adc  h                                        ; $5A9D: $8C
    adc  h                                        ; $5A9E: $8C
    adc  h                                        ; $5A9F: $8C
    adc  h                                        ; $5AA0: $8C
    adc  h                                        ; $5AA1: $8C
    rlca                                          ; $5AA2: $07
    add  hl, bc                                   ; $5AA3: $09
    adc  l                                        ; $5AA4: $8D
    inc  b                                        ; $5AA5: $04
    nop                                           ; $5AA6: $00
    inc  b                                        ; $5AA7: $04
    nop                                           ; $5AA8: $00
    rlca                                          ; $5AA9: $07
    rlca                                          ; $5AAA: $07
    ld   [$8C15], sp                              ; $5AAB: $08 $15 $8C
    adc  h                                        ; $5AAE: $8C
    adc  h                                        ; $5AAF: $8C
    ld   [$1226], sp                              ; $5AB0: $08 $26 $12
    nop                                           ; $5AB3: $00
    ld   e, d                                     ; $5AB4: $5A
    cp   e                                        ; $5AB5: $BB
    adc  l                                        ; $5AB6: $8D
    ld   c, $0C                                   ; $5AB7: $0E $0C
    ld   e, d                                     ; $5AB9: $5A
    and  a                                        ; $5ABA: $A7
    rlca                                          ; $5ABB: $07
    dec  bc                                       ; $5ABC: $0B
    adc  h                                        ; $5ABD: $8C
    ld   d, $5A                                   ; $5ABE: $16 $5A
    and  l                                        ; $5AC0: $A5
    rla                                           ; $5AC1: $17
    nop                                           ; $5AC2: $00
    ld   e, d                                     ; $5AC3: $5A
    bit  3, e                                     ; $5AC4: $CB $5B
    ld   h, [hl]                                  ; $5AC6: $66
    ld   e, e                                     ; $5AC7: $5B
    ldh  [c], a                                   ; $5AC8: $E2
    ld   e, h                                     ; $5AC9: $5C

jr_003_5ACA:
    add  [hl]                                     ; $5ACA: $86
    dec  b                                        ; $5ACB: $05
    ld   bc, $064C                                ; $5ACC: $01 $4C $06
    or   h                                        ; $5ACF: $B4
    rlca                                          ; $5AD0: $07
    inc  c                                        ; $5AD1: $0C
    add  hl, bc                                   ; $5AD2: $09
    ld   bc, $0804                                ; $5AD3: $01 $04 $08
    ld   [$1811], sp                              ; $5AD6: $08 $11 $18
    ret  nz                                       ; $5AD9: $C0

    ld   l, l                                     ; $5ADA: $6D
    ld   l, b                                     ; $5ADB: $68
    ld   l, l                                     ; $5ADC: $6D
    ld   [hl], b                                  ; $5ADD: $70
    ld   l, a                                     ; $5ADE: $6F
    ld   l, l                                     ; $5ADF: $6D
    ld   l, a                                     ; $5AE0: $6F
    ld   l, b                                     ; $5AE1: $68
    ld   l, l                                     ; $5AE2: $6D
    ld   l, b                                     ; $5AE3: $68
    ld   l, l                                     ; $5AE4: $6D
    ld   [hl], b                                  ; $5AE5: $70
    ld   l, a                                     ; $5AE6: $6F
    ld   l, l                                     ; $5AE7: $6D
    ld   l, a                                     ; $5AE8: $6F
    ld   l, b                                     ; $5AE9: $68
    ld   l, l                                     ; $5AEA: $6D
    ld   l, b                                     ; $5AEB: $68
    ld   l, l                                     ; $5AEC: $6D
    ld   [hl], h                                  ; $5AED: $74
    ld   [hl], d                                  ; $5AEE: $72
    ld   [hl], b                                  ; $5AEF: $70
    ld   [hl], d                                  ; $5AF0: $72
    ld   l, a                                     ; $5AF1: $6F
    ld   [hl], b                                  ; $5AF2: $70
    ld   l, a                                     ; $5AF3: $6F
    ld   [hl], b                                  ; $5AF4: $70
    ld   l, l                                     ; $5AF5: $6D
    ld   l, a                                     ; $5AF6: $6F
    ld   l, l                                     ; $5AF7: $6D
    ld   l, a                                     ; $5AF8: $6F
    ld   h, [hl]                                  ; $5AF9: $66
    ld   [bc], a                                  ; $5AFA: $02
    add  [hl]                                     ; $5AFB: $86
    ld   b, l                                     ; $5AFC: $45
    ld   b, e                                     ; $5AFD: $43
    ld   bc, $08A5                                ; $5AFE: $01 $A5 $08
    jr   z, jr_003_5B04                           ; $5B01: $28 $01

    push bc                                       ; $5B03: $C5

jr_003_5B04:
    ld   [$1811], sp                              ; $5B04: $08 $11 $18
    add  b                                        ; $5B07: $80
    xor  b                                        ; $5B08: $A8
    or   h                                        ; $5B09: $B4
    nop                                           ; $5B0A: $00
    ld   [hl], d                                  ; $5B0B: $72
    ld   [hl], h                                  ; $5B0C: $74
    ld   [hl], d                                  ; $5B0D: $72
    nop                                           ; $5B0E: $00
    ld   [hl], b                                  ; $5B0F: $70
    ld   l, a                                     ; $5B10: $6F
    sub  b                                        ; $5B11: $90
    adc  l                                        ; $5B12: $8D
    adc  a                                        ; $5B13: $8F
    adc  h                                        ; $5B14: $8C
    adc  l                                        ; $5B15: $8D
    adc  d                                        ; $5B16: $8A
    adc  l                                        ; $5B17: $8D
    ld   l, h                                     ; $5B18: $6C
    ld   l, d                                     ; $5B19: $6A
    adc  h                                        ; $5B1A: $8C

jr_003_5B1B:
    adc  b                                        ; $5B1B: $88
    sub  b                                        ; $5B1C: $90
    ld   l, a                                     ; $5B1D: $6F
    ld   l, l                                     ; $5B1E: $6D
    adc  a                                        ; $5B1F: $8F
    adc  h                                        ; $5B20: $8C
    ld   [bc], a                                  ; $5B21: $02
    xor  l                                        ; $5B22: $AD
    sub  b                                        ; $5B23: $90
    xor  a                                        ; $5B24: $AF
    or   e                                        ; $5B25: $B3
    ld   bc, $08B4                                ; $5B26: $01 $B4 $08
    jr   z, jr_003_5B2C                           ; $5B29: $28 $01

    or   h                                        ; $5B2B: $B4

jr_003_5B2C:
    ld   [$1811], sp                              ; $5B2C: $08 $11 $18
    ret  nz                                       ; $5B2F: $C0

    ld   bc, $01B5                                ; $5B30: $01 $B5 $01
    ld   [hl], l                                  ; $5B33: $75
    ld   [hl], h                                  ; $5B34: $74
    ld   [hl], l                                  ; $5B35: $75
    ld   [hl], d                                  ; $5B36: $72
    ld   bc, $01B4                                ; $5B37: $01 $B4 $01
    ld   [hl], h                                  ; $5B3A: $74
    ld   [hl], d                                  ; $5B3B: $72
    ld   [hl], h                                  ; $5B3C: $74
    ld   [hl], b                                  ; $5B3D: $70
    ld   bc, $01B2                                ; $5B3E: $01 $B2 $01
    ld   [hl], d                                  ; $5B41: $72
    ld   [hl], b                                  ; $5B42: $70
    ld   [hl], d                                  ; $5B43: $72
    ld   l, a                                     ; $5B44: $6F
    ld   [hl], b                                  ; $5B45: $70
    ld   [hl], d                                  ; $5B46: $72
    ld   [hl], b                                  ; $5B47: $70
    ld   l, a                                     ; $5B48: $6F
    ld   l, l                                     ; $5B49: $6D
    ld   l, a                                     ; $5B4A: $6F
    ld   l, l                                     ; $5B4B: $6D
    ld   l, h                                     ; $5B4C: $6C
    ld   l, l                                     ; $5B4D: $6D
    ld   l, h                                     ; $5B4E: $6C
    ld   l, l                                     ; $5B4F: $6D
    ld   l, a                                     ; $5B50: $6F
    or   b                                        ; $5B51: $B0
    ld   [hl], b                                  ; $5B52: $70
    ld   l, a                                     ; $5B53: $6F
    ld   [hl], b                                  ; $5B54: $70
    ld   [hl], d                                  ; $5B55: $72
    sub  h                                        ; $5B56: $94
    adc  l                                        ; $5B57: $8D
    or   h                                        ; $5B58: $B4
    push de                                       ; $5B59: $D5
    sub  h                                        ; $5B5A: $94
    sub  h                                        ; $5B5B: $94
    ld   bc, $08D5                                ; $5B5C: $01 $D5 $08
    jr   z, jr_003_5B62                           ; $5B5F: $28 $01

    push de                                       ; $5B61: $D5

jr_003_5B62:
    ld   d, $5A                                   ; $5B62: $16 $5A
    call nc, Call_000_0617                        ; $5B64: $D4 $17 $06
    ret  z                                        ; $5B67: $C8

    rlca                                          ; $5B68: $07
    dec  bc                                       ; $5B69: $0B
    ld   [$0911], sp                              ; $5B6A: $08 $11 $09
    ld   bc, $0004                                ; $5B6D: $01 $04 $00
    jr   @-$3E                                    ; $5B70: $18 $C0

    reti                                          ; $5B72: $D9


    rst  WriteBgMapTilePair                       ; $5B73: $D7
    sub  $B5                                      ; $5B74: $D6 $B5
    cp   b                                        ; $5B76: $B8
    ld   sp, hl                                   ; $5B77: $F9
    ld   a, c                                     ; $5B78: $79
    ld   a, e                                     ; $5B79: $7B
    ld   a, h                                     ; $5B7A: $7C
    ld   a, c                                     ; $5B7B: $79
    inc  bc                                       ; $5B7C: $03
    ld   l, l                                     ; $5B7D: $6D
    ld   l, a                                     ; $5B7E: $6F
    ld   [hl], b                                  ; $5B7F: $70
    ld   l, l                                     ; $5B80: $6D
    ld   l, c                                     ; $5B81: $69
    ld   l, e                                     ; $5B82: $6B
    ld   l, l                                     ; $5B83: $6D
    ld   l, c                                     ; $5B84: $69
    ld   l, b                                     ; $5B85: $68
    ld   l, c                                     ; $5B86: $69
    ld   l, e                                     ; $5B87: $6B
    ld   l, b                                     ; $5B88: $68
    ld   h, [hl]                                  ; $5B89: $66
    ld   l, b                                     ; $5B8A: $68
    ld   l, c                                     ; $5B8B: $69
    ld   h, [hl]                                  ; $5B8C: $66
    ld   h, h                                     ; $5B8D: $64
    ld   h, [hl]                                  ; $5B8E: $66
    ld   h, h                                     ; $5B8F: $64
    ld   h, c                                     ; $5B90: $61
    ld   h, h                                     ; $5B91: $64
    ld   h, [hl]                                  ; $5B92: $66
    ld   h, h                                     ; $5B93: $64
    ld   h, c                                     ; $5B94: $61
    ld   h, e                                     ; $5B95: $63
    ld   h, h                                     ; $5B96: $64
    ld   h, [hl]                                  ; $5B97: $66
    ld   h, e                                     ; $5B98: $63
    jr   jr_003_5B1B                              ; $5B99: $18 $80

    xor  b                                        ; $5B9B: $A8
    or   h                                        ; $5B9C: $B4
    nop                                           ; $5B9D: $00
    ld   [hl], d                                  ; $5B9E: $72
    ld   [hl], h                                  ; $5B9F: $74
    ld   [hl], d                                  ; $5BA0: $72
    nop                                           ; $5BA1: $00
    ld   [hl], b                                  ; $5BA2: $70
    ld   l, a                                     ; $5BA3: $6F
    sub  b                                        ; $5BA4: $90
    adc  l                                        ; $5BA5: $8D
    adc  a                                        ; $5BA6: $8F
    adc  h                                        ; $5BA7: $8C
    adc  l                                        ; $5BA8: $8D
    adc  d                                        ; $5BA9: $8A
    adc  l                                        ; $5BAA: $8D
    ld   l, h                                     ; $5BAB: $6C
    ld   l, d                                     ; $5BAC: $6A
    adc  h                                        ; $5BAD: $8C
    adc  b                                        ; $5BAE: $88
    ld   [hl], b                                  ; $5BAF: $70
    ld   l, a                                     ; $5BB0: $6F
    ld   [hl], b                                  ; $5BB1: $70
    ld   l, l                                     ; $5BB2: $6D
    xor  a                                        ; $5BB3: $AF
    ld   l, a                                     ; $5BB4: $6F
    ld   l, l                                     ; $5BB5: $6D
    ld   l, a                                     ; $5BB6: $6F
    ld   l, e                                     ; $5BB7: $6B
    xor  l                                        ; $5BB8: $AD
    ld   l, l                                     ; $5BB9: $6D
    ld   l, h                                     ; $5BBA: $6C
    ld   l, l                                     ; $5BBB: $6D
    ld   l, d                                     ; $5BBC: $6A
    xor  h                                        ; $5BBD: $AC
    ret  z                                        ; $5BBE: $C8

    and  h                                        ; $5BBF: $A4
    ld   l, e                                     ; $5BC0: $6B
    ld   l, d                                     ; $5BC1: $6A
    ld   l, e                                     ; $5BC2: $6B
    ld   l, l                                     ; $5BC3: $6D
    xor  c                                        ; $5BC4: $A9
    adc  a                                        ; $5BC5: $8F
    adc  c                                        ; $5BC6: $89
    inc  b                                        ; $5BC7: $04
    nop                                           ; $5BC8: $00
    ld   a, c                                     ; $5BC9: $79
    ld   [hl], h                                  ; $5BCA: $74
    ld   a, c                                     ; $5BCB: $79
    ld   a, h                                     ; $5BCC: $7C
    ld   a, d                                     ; $5BCD: $7A
    ld   [hl], l                                  ; $5BCE: $75
    ld   a, d                                     ; $5BCF: $7A
    ld   a, [hl]                                  ; $5BD0: $7E
    inc  bc                                       ; $5BD1: $03
    ld   l, c                                     ; $5BD2: $69
    ld   h, [hl]                                  ; $5BD3: $66
    ld   l, c                                     ; $5BD4: $69
    ld   l, [hl]                                  ; $5BD5: $6E
    ld   [hl], d                                  ; $5BD6: $72
    ld   l, [hl]                                  ; $5BD7: $6E
    ld   [hl], d                                  ; $5BD8: $72
    ld   [hl], l                                  ; $5BD9: $75
    ld   c, $01                                   ; $5BDA: $0E $01
    ld   e, e                                     ; $5BDC: $5B
    rst  RST_00                                   ; $5BDD: $C7
    ld   d, $5B                                   ; $5BDE: $16 $5B
    ld   l, [hl]                                  ; $5BE0: $6E
    rla                                           ; $5BE1: $17
    rlca                                          ; $5BE2: $07
    inc  bc                                       ; $5BE3: $03
    ld   b, $AA                                   ; $5BE4: $06 $AA
    ld   [$091E], sp                              ; $5BE6: $08 $1E $09
    ld   [bc], a                                  ; $5BE9: $02
    inc  b                                        ; $5BEA: $04
    nop                                           ; $5BEB: $00
    ld   l, l                                     ; $5BEC: $6D
    ld   [bc], a                                  ; $5BED: $02
    ld   bc, $018D                                ; $5BEE: $01 $8D $01
    xor  l                                        ; $5BF1: $AD
    ld   l, l                                     ; $5BF2: $6D
    ld   [bc], a                                  ; $5BF3: $02
    ld   bc, $018D                                ; $5BF4: $01 $8D $01
    xor  l                                        ; $5BF7: $AD
    ld   l, l                                     ; $5BF8: $6D
    ld   [bc], a                                  ; $5BF9: $02
    adc  l                                        ; $5BFA: $8D
    ld   l, l                                     ; $5BFB: $6D
    ld   [bc], a                                  ; $5BFC: $02
    adc  l                                        ; $5BFD: $8D
    ld   l, l                                     ; $5BFE: $6D
    ld   [bc], a                                  ; $5BFF: $02
    adc  l                                        ; $5C00: $8D
    ld   l, l                                     ; $5C01: $6D
    ld   [bc], a                                  ; $5C02: $02
    adc  l                                        ; $5C03: $8D
    ld   l, l                                     ; $5C04: $6D
    ld   l, l                                     ; $5C05: $6D
    ld   l, l                                     ; $5C06: $6D
    ld   l, l                                     ; $5C07: $6D
    ld   l, l                                     ; $5C08: $6D
    ld   l, l                                     ; $5C09: $6D
    ld   l, l                                     ; $5C0A: $6D
    ld   l, l                                     ; $5C0B: $6D
    ld   l, l                                     ; $5C0C: $6D
    ld   l, l                                     ; $5C0D: $6D
    ld   l, l                                     ; $5C0E: $6D
    ld   l, l                                     ; $5C0F: $6D
    ld   l, l                                     ; $5C10: $6D
    ld   l, l                                     ; $5C11: $6D
    ld   l, l                                     ; $5C12: $6D
    ld   l, l                                     ; $5C13: $6D
    adc  l                                        ; $5C14: $8D
    ld   l, l                                     ; $5C15: $6D
    ld   l, l                                     ; $5C16: $6D
    adc  l                                        ; $5C17: $8D
    ld   l, l                                     ; $5C18: $6D
    ld   l, l                                     ; $5C19: $6D
    adc  l                                        ; $5C1A: $8D
    ld   l, l                                     ; $5C1B: $6D
    ld   l, l                                     ; $5C1C: $6D
    adc  l                                        ; $5C1D: $8D
    ld   l, l                                     ; $5C1E: $6D
    ld   l, l                                     ; $5C1F: $6D
    adc  l                                        ; $5C20: $8D
    ld   l, l                                     ; $5C21: $6D
    ld   l, l                                     ; $5C22: $6D
    adc  l                                        ; $5C23: $8D
    ld   l, l                                     ; $5C24: $6D
    ld   l, l                                     ; $5C25: $6D
    sub  h                                        ; $5C26: $94
    ld   [hl], h                                  ; $5C27: $74
    ld   [hl], h                                  ; $5C28: $74
    sub  h                                        ; $5C29: $94
    ld   [hl], h                                  ; $5C2A: $74
    ld   [hl], h                                  ; $5C2B: $74
    adc  l                                        ; $5C2C: $8D
    ld   l, l                                     ; $5C2D: $6D
    ld   l, l                                     ; $5C2E: $6D
    adc  l                                        ; $5C2F: $8D
    ld   l, l                                     ; $5C30: $6D
    ld   l, l                                     ; $5C31: $6D
    adc  l                                        ; $5C32: $8D
    ld   l, l                                     ; $5C33: $6D
    ld   l, l                                     ; $5C34: $6D
    adc  l                                        ; $5C35: $8D
    ld   l, l                                     ; $5C36: $6D
    ld   l, l                                     ; $5C37: $6D
    adc  a                                        ; $5C38: $8F
    ld   l, a                                     ; $5C39: $6F
    ld   l, a                                     ; $5C3A: $6F
    adc  a                                        ; $5C3B: $8F
    ld   l, a                                     ; $5C3C: $6F
    ld   l, a                                     ; $5C3D: $6F
    sub  h                                        ; $5C3E: $94
    ld   [hl], h                                  ; $5C3F: $74
    ld   [hl], h                                  ; $5C40: $74
    adc  b                                        ; $5C41: $88
    ld   l, b                                     ; $5C42: $68
    ld   l, b                                     ; $5C43: $68
    ld   [hl], d                                  ; $5C44: $72
    ld   [hl], d                                  ; $5C45: $72
    ld   [hl], d                                  ; $5C46: $72
    ld   [hl], d                                  ; $5C47: $72
    ld   [hl], a                                  ; $5C48: $77
    ld   [hl], a                                  ; $5C49: $77
    ld   [hl], a                                  ; $5C4A: $77
    ld   [hl], a                                  ; $5C4B: $77
    ld   [hl], b                                  ; $5C4C: $70
    ld   [hl], b                                  ; $5C4D: $70
    ld   [hl], b                                  ; $5C4E: $70
    ld   [hl], b                                  ; $5C4F: $70
    ld   [hl], l                                  ; $5C50: $75
    ld   [hl], l                                  ; $5C51: $75
    ld   [hl], l                                  ; $5C52: $75
    ld   [hl], l                                  ; $5C53: $75
    ld   l, a                                     ; $5C54: $6F
    ld   l, a                                     ; $5C55: $6F
    ld   l, a                                     ; $5C56: $6F
    ld   l, a                                     ; $5C57: $6F
    ld   [hl], h                                  ; $5C58: $74
    ld   [hl], h                                  ; $5C59: $74
    ld   [hl], h                                  ; $5C5A: $74
    ld   [hl], h                                  ; $5C5B: $74
    ld   a, c                                     ; $5C5C: $79
    ld   a, c                                     ; $5C5D: $79
    ld   a, c                                     ; $5C5E: $79
    ld   a, c                                     ; $5C5F: $79
    ld   [hl], a                                  ; $5C60: $77
    ld   [hl], a                                  ; $5C61: $77
    ld   [hl], a                                  ; $5C62: $77
    ld   [hl], a                                  ; $5C63: $77
    ld   [hl], l                                  ; $5C64: $75
    ld   [hl], l                                  ; $5C65: $75
    ld   [hl], l                                  ; $5C66: $75
    ld   [hl], l                                  ; $5C67: $75
    ld   [hl], h                                  ; $5C68: $74
    ld   [hl], h                                  ; $5C69: $74
    ld   [hl], h                                  ; $5C6A: $74
    ld   [hl], h                                  ; $5C6B: $74
    ld   [hl], d                                  ; $5C6C: $72
    ld   [hl], d                                  ; $5C6D: $72
    ld   [hl], d                                  ; $5C6E: $72
    ld   [hl], d                                  ; $5C6F: $72
    ld   l, l                                     ; $5C70: $6D
    ld   l, l                                     ; $5C71: $6D
    ld   [hl], d                                  ; $5C72: $72
    ld   [hl], d                                  ; $5C73: $72
    inc  b                                        ; $5C74: $04
    nop                                           ; $5C75: $00
    adc  l                                        ; $5C76: $8D
    adc  l                                        ; $5C77: $8D
    adc  l                                        ; $5C78: $8D
    adc  l                                        ; $5C79: $8D
    adc  l                                        ; $5C7A: $8D
    adc  l                                        ; $5C7B: $8D
    adc  l                                        ; $5C7C: $8D
    adc  l                                        ; $5C7D: $8D
    ld   c, $01                                   ; $5C7E: $0E $01
    ld   e, h                                     ; $5C80: $5C
    ld   [hl], h                                  ; $5C81: $74
    ld   d, $5B                                   ; $5C82: $16 $5B
    ld   [$1717], a                               ; $5C84: $EA $17 $17
    nop                                           ; $5C87: $00
    ld   e, h                                     ; $5C88: $5C
    sub  b                                        ; $5C89: $90
    ld   e, l                                     ; $5C8A: $5D
    ld   e, h                                     ; $5C8B: $5C
    ld   e, [hl]                                  ; $5C8C: $5E
    ld   [$7F5E], sp                              ; $5C8D: $08 $5E $7F
    ld   a, [bc]                                  ; $5C90: $0A
    inc  bc                                       ; $5C91: $03
    dec  b                                        ; $5C92: $05
    inc  bc                                       ; $5C93: $03
    nop                                           ; $5C94: $00
    ld   b, $FF                                   ; $5C95: $06 $FF
    rlca                                          ; $5C97: $07
    rrca                                          ; $5C98: $0F
    ld   [$0923], sp                              ; $5C99: $08 $23 $09
    ld   bc, $0004                                ; $5C9C: $01 $04 $00
    add  hl, de                                   ; $5C9F: $19
    db   $10                                      ; $5CA0: $10
    ld   d, h                                     ; $5CA1: $54
    add  hl, de                                   ; $5CA2: $19
    ld   de, $1953                                ; $5CA3: $11 $53 $19
    ld   bc, $1954                                ; $5CA6: $01 $54 $19
    ld   de, $1955                                ; $5CA9: $11 $55 $19
    db   $10                                      ; $5CAC: $10
    ld   d, [hl]                                  ; $5CAD: $56
    add  hl, de                                   ; $5CAE: $19
    ld   de, $1955                                ; $5CAF: $11 $55 $19
    ld   bc, $1956                                ; $5CB2: $01 $56 $19
    ld   de, $1957                                ; $5CB5: $11 $57 $19
    db   $10                                      ; $5CB8: $10
    ld   e, b                                     ; $5CB9: $58
    add  hl, de                                   ; $5CBA: $19
    ld   de, $1957                                ; $5CBB: $11 $57 $19
    ld   bc, $1958                                ; $5CBE: $01 $58 $19
    ld   de, $1959                                ; $5CC1: $11 $59 $19
    db   $10                                      ; $5CC4: $10
    ld   e, d                                     ; $5CC5: $5A
    add  hl, de                                   ; $5CC6: $19
    ld   de, $1959                                ; $5CC7: $11 $59 $19
    ld   bc, $195A                                ; $5CCA: $01 $5A $19
    ld   de, LoadGraphicsDescriptorList           ; $5CCD: $11 $5B $19
    db   $10                                      ; $5CD0: $10
    ld   c, $01                                   ; $5CD1: $0E $01
    ld   e, h                                     ; $5CD3: $5C
    sbc  l                                        ; $5CD4: $9D
    add  hl, de                                   ; $5CD5: $19
    ld   de, $6B03                                ; $5CD6: $11 $03 $6B
    ld   l, d                                     ; $5CD9: $6A
    ld   l, [hl]                                  ; $5CDA: $6E
    ld   l, l                                     ; $5CDB: $6D
    ld   [hl], b                                  ; $5CDC: $70
    ld   l, a                                     ; $5CDD: $6F
    ld   [hl], e                                  ; $5CDE: $73
    ld   [hl], d                                  ; $5CDF: $72
    ld   [hl], l                                  ; $5CE0: $75
    halt                                          ; $5CE1: $76
    ld   [hl], a                                  ; $5CE2: $77
    ld   a, b                                     ; $5CE3: $78
    ld   a, [bc]                                  ; $5CE4: $0A
    inc  c                                        ; $5CE5: $0C
    jr   @-$3E                                    ; $5CE6: $18 $C0

    dec  b                                        ; $5CE8: $05
    ld   bc, $07D8                                ; $5CE9: $01 $D8 $07
    dec  bc                                       ; $5CEC: $0B
    add  hl, bc                                   ; $5CED: $09
    nop                                           ; $5CEE: $00
    inc  b                                        ; $5CEF: $04
    nop                                           ; $5CF0: $00
    ld   b, $AA                                   ; $5CF1: $06 $AA
    ld   [$9905], sp                              ; $5CF3: $08 $05 $99
    inc  bc                                       ; $5CF6: $03
    adc  b                                        ; $5CF7: $88
    adc  b                                        ; $5CF8: $88
    inc  bc                                       ; $5CF9: $03
    ld   [hl], h                                  ; $5CFA: $74
    ld   [hl], h                                  ; $5CFB: $74
    sbc  c                                        ; $5CFC: $99
    sbc  a                                        ; $5CFD: $9F
    sbc  a                                        ; $5CFE: $9F
    ld   [hl], h                                  ; $5CFF: $74
    ld   [hl], h                                  ; $5D00: $74
    sub  e                                        ; $5D01: $93
    sbc  h                                        ; $5D02: $9C
    sbc  h                                        ; $5D03: $9C
    ld   [hl], h                                  ; $5D04: $74
    ld   [hl], h                                  ; $5D05: $74
    sbc  b                                        ; $5D06: $98
    sbc  e                                        ; $5D07: $9B
    sbc  e                                        ; $5D08: $9B
    ld   [hl], h                                  ; $5D09: $74
    ld   [hl], h                                  ; $5D0A: $74
    sbc  [hl]                                     ; $5D0B: $9E
    inc  bc                                       ; $5D0C: $03
    adc  c                                        ; $5D0D: $89
    adc  c                                        ; $5D0E: $89
    inc  bc                                       ; $5D0F: $03
    ld   [hl], h                                  ; $5D10: $74
    ld   [hl], h                                  ; $5D11: $74
    sbc  e                                        ; $5D12: $9B
    inc  bc                                       ; $5D13: $03
    adc  b                                        ; $5D14: $88
    adc  b                                        ; $5D15: $88
    inc  bc                                       ; $5D16: $03
    ld   [hl], h                                  ; $5D17: $74
    ld   [hl], h                                  ; $5D18: $74
    sbc  b                                        ; $5D19: $98
    sbc  [hl]                                     ; $5D1A: $9E
    sbc  [hl]                                     ; $5D1B: $9E
    ld   [hl], h                                  ; $5D1C: $74
    ld   [hl], h                                  ; $5D1D: $74
    sbc  b                                        ; $5D1E: $98
    sbc  h                                        ; $5D1F: $9C
    sbc  h                                        ; $5D20: $9C
    add  b                                        ; $5D21: $80
    ld   b, $C8                                   ; $5D22: $06 $C8
    ld   [$7B10], sp                              ; $5D24: $08 $10 $7B
    ld   a, h                                     ; $5D27: $7C
    ld   a, e                                     ; $5D28: $7B
    ld   a, h                                     ; $5D29: $7C
    nop                                           ; $5D2A: $00
    ld   a, e                                     ; $5D2B: $7B
    ld   a, h                                     ; $5D2C: $7C
    ld   a, e                                     ; $5D2D: $7B
    nop                                           ; $5D2E: $00
    ld   a, c                                     ; $5D2F: $79
    ld   a, e                                     ; $5D30: $7B
    ld   a, b                                     ; $5D31: $78
    ld   h, b                                     ; $5D32: $60
    ld   b, $46                                   ; $5D33: $06 $46
    sbc  a                                        ; $5D35: $9F
    inc  bc                                       ; $5D36: $03
    adc  b                                        ; $5D37: $88
    ld   b, $C8                                   ; $5D38: $06 $C8
    inc  bc                                       ; $5D3A: $03
    sub  h                                        ; $5D3B: $94
    ld   a, [hl]                                  ; $5D3C: $7E
    inc  bc                                       ; $5D3D: $03
    ld   l, b                                     ; $5D3E: $68
    ld   h, [hl]                                  ; $5D3F: $66
    ld   l, b                                     ; $5D40: $68
    nop                                           ; $5D41: $00
    ld   h, [hl]                                  ; $5D42: $66
    ld   l, b                                     ; $5D43: $68
    ld   h, [hl]                                  ; $5D44: $66
    nop                                           ; $5D45: $00
    ld   h, h                                     ; $5D46: $64
    ld   h, [hl]                                  ; $5D47: $66
    ld   h, h                                     ; $5D48: $64
    ld   h, b                                     ; $5D49: $60
    ld   b, $46                                   ; $5D4A: $06 $46
    adc  h                                        ; $5D4C: $8C
    adc  l                                        ; $5D4D: $8D
    ld   b, $C8                                   ; $5D4E: $06 $C8
    add  c                                        ; $5D50: $81
    add  d                                        ; $5D51: $82
    adc  c                                        ; $5D52: $89
    add  [hl]                                     ; $5D53: $86
    add  d                                        ; $5D54: $82
    and  c                                        ; $5D55: $A1
    inc  bc                                       ; $5D56: $03
    cp   b                                        ; $5D57: $B8
    ld   d, $5C                                   ; $5D58: $16 $5C
    rst  RST_28                                   ; $5D5A: $EF
    rla                                           ; $5D5B: $17
    ld   b, $FF                                   ; $5D5C: $06 $FF
    rlca                                          ; $5D5E: $07
    ld   b, $08                                   ; $5D5F: $06 $08
    inc  hl                                       ; $5D61: $23
    add  hl, bc                                   ; $5D62: $09
    ld   bc, $8002                                ; $5D63: $01 $02 $80
    inc  b                                        ; $5D66: $04
    nop                                           ; $5D67: $00
    ld   d, h                                     ; $5D68: $54
    ld   d, e                                     ; $5D69: $53
    ld   d, h                                     ; $5D6A: $54
    ld   d, l                                     ; $5D6B: $55
    ld   d, [hl]                                  ; $5D6C: $56
    ld   d, l                                     ; $5D6D: $55
    ld   d, [hl]                                  ; $5D6E: $56
    ld   d, a                                     ; $5D6F: $57
    ld   e, b                                     ; $5D70: $58
    ld   d, a                                     ; $5D71: $57
    ld   e, b                                     ; $5D72: $58
    ld   e, c                                     ; $5D73: $59
    ld   e, d                                     ; $5D74: $5A
    ld   e, c                                     ; $5D75: $59
    ld   e, d                                     ; $5D76: $5A
    ld   e, e                                     ; $5D77: $5B
    ld   c, $01                                   ; $5D78: $0E $01
    ld   e, l                                     ; $5D7A: $5D
    ld   h, [hl]                                  ; $5D7B: $66
    inc  bc                                       ; $5D7C: $03
    ld   l, e                                     ; $5D7D: $6B
    ld   l, d                                     ; $5D7E: $6A
    ld   l, [hl]                                  ; $5D7F: $6E
    ld   l, l                                     ; $5D80: $6D
    ld   [hl], b                                  ; $5D81: $70
    ld   [hl], l                                  ; $5D82: $75
    halt                                          ; $5D83: $76
    ld   [hl], a                                  ; $5D84: $77
    ld   a, b                                     ; $5D85: $78
    add  hl, bc                                   ; $5D86: $09
    nop                                           ; $5D87: $00
    rlca                                          ; $5D88: $07
    dec  bc                                       ; $5D89: $0B
    inc  b                                        ; $5D8A: $04
    nop                                           ; $5D8B: $00
    ld   b, $C8                                   ; $5D8C: $06 $C8
    ld   [$0405], sp                              ; $5D8E: $08 $05 $04
    nop                                           ; $5D91: $00
    ld   a, c                                     ; $5D92: $79
    ld   a, e                                     ; $5D93: $7B
    ld   a, h                                     ; $5D94: $7C
    ld   a, [hl]                                  ; $5D95: $7E
    inc  bc                                       ; $5D96: $03
    ld   l, b                                     ; $5D97: $68
    ld   l, l                                     ; $5D98: $6D
    ld   l, h                                     ; $5D99: $6C
    ld   l, l                                     ; $5D9A: $6D
    ld   l, c                                     ; $5D9B: $69
    ld   l, b                                     ; $5D9C: $68
    ld   h, [hl]                                  ; $5D9D: $66
    ld   l, c                                     ; $5D9E: $69
    ld   l, b                                     ; $5D9F: $68
    ld   h, [hl]                                  ; $5DA0: $66
    ld   h, h                                     ; $5DA1: $64
    ld   l, b                                     ; $5DA2: $68
    ld   h, [hl]                                  ; $5DA3: $66
    ld   h, h                                     ; $5DA4: $64
    ld   h, e                                     ; $5DA5: $63
    ld   h, [hl]                                  ; $5DA6: $66
    ld   h, h                                     ; $5DA7: $64
    ld   h, e                                     ; $5DA8: $63
    ld   h, c                                     ; $5DA9: $61
    ld   h, h                                     ; $5DAA: $64
    ld   [de], a                                  ; $5DAB: $12
    ld   [$BC5D], sp                              ; $5DAC: $08 $5D $BC
    ld   h, e                                     ; $5DAF: $63
    ld   h, c                                     ; $5DB0: $61
    inc  bc                                       ; $5DB1: $03
    ld   a, b                                     ; $5DB2: $78
    ld   a, e                                     ; $5DB3: $7B
    ld   a, c                                     ; $5DB4: $79
    ld   a, b                                     ; $5DB5: $78
    ld   a, c                                     ; $5DB6: $79
    ld   a, e                                     ; $5DB7: $7B
    ld   c, $01                                   ; $5DB8: $0E $01
    ld   e, l                                     ; $5DBA: $5D
    sub  b                                        ; $5DBB: $90
    ld   l, b                                     ; $5DBC: $68
    ld   l, c                                     ; $5DBD: $69
    ld   l, b                                     ; $5DBE: $68
    ld   h, [hl]                                  ; $5DBF: $66
    ld   h, l                                     ; $5DC0: $65
    ld   l, e                                     ; $5DC1: $6B
    ld   l, h                                     ; $5DC2: $6C
    ld   l, l                                     ; $5DC3: $6D
    ld   b, $FA                                   ; $5DC4: $06 $FA
    ld   [$6F10], sp                              ; $5DC6: $08 $10 $6F
    ld   [hl], c                                  ; $5DC9: $71
    ld   [hl], d                                  ; $5DCA: $72
    ld   [hl], h                                  ; $5DCB: $74
    ld   [hl], l                                  ; $5DCC: $75
    ld   [hl], h                                  ; $5DCD: $74
    ld   [hl], d                                  ; $5DCE: $72
    ld   [hl], b                                  ; $5DCF: $70
    ld   b, $46                                   ; $5DD0: $06 $46
    ld   [$030C], sp                              ; $5DD2: $08 $0C $03
    ld   l, a                                     ; $5DD5: $6F
    ld   h, b                                     ; $5DD6: $60
    sbc  c                                        ; $5DD7: $99
    sbc  b                                        ; $5DD8: $98
    add  b                                        ; $5DD9: $80
    ld   b, $FA                                   ; $5DDA: $06 $FA
    ld   [$0310], sp                              ; $5DDC: $08 $10 $03
    ld   [hl], l                                  ; $5DDF: $75
    ld   [hl], h                                  ; $5DE0: $74
    ld   [hl], d                                  ; $5DE1: $72
    ld   [hl], l                                  ; $5DE2: $75
    ld   [hl], h                                  ; $5DE3: $74
    ld   [hl], d                                  ; $5DE4: $72
    ld   [hl], b                                  ; $5DE5: $70
    ld   [hl], h                                  ; $5DE6: $74
    ld   b, $46                                   ; $5DE7: $06 $46
    ld   [$610C], sp                              ; $5DE9: $08 $0C $61
    ld   h, b                                     ; $5DEC: $60
    add  [hl]                                     ; $5DED: $86
    add  h                                        ; $5DEE: $84
    add  c                                        ; $5DEF: $81
    ld   b, $C8                                   ; $5DF0: $06 $C8
    ld   [$6F10], sp                              ; $5DF2: $08 $10 $6F
    ld   [hl], b                                  ; $5DF5: $70
    ld   [hl], d                                  ; $5DF6: $72
    ld   l, a                                     ; $5DF7: $6F
    ld   [hl], h                                  ; $5DF8: $74
    ld   [hl], d                                  ; $5DF9: $72
    ld   [hl], b                                  ; $5DFA: $70
    ld   [hl], d                                  ; $5DFB: $72
    ld   [hl], b                                  ; $5DFC: $70
    ld   l, a                                     ; $5DFD: $6F
    ld   l, l                                     ; $5DFE: $6D
    ld   l, a                                     ; $5DFF: $6F
    ld   l, l                                     ; $5E00: $6D
    ld   l, h                                     ; $5E01: $6C
    ld   l, c                                     ; $5E02: $69
    ld   l, h                                     ; $5E03: $6C
    ld   d, $5D                                   ; $5E04: $16 $5D
    adc  d                                        ; $5E06: $8A
    rla                                           ; $5E07: $17
    rlca                                          ; $5E08: $07
    inc  bc                                       ; $5E09: $03
    ld   b, $FF                                   ; $5E0A: $06 $FF
    ld   [$0401], sp                              ; $5E0C: $08 $01 $04
    nop                                           ; $5E0F: $00
    ld   d, h                                     ; $5E10: $54
    ld   d, e                                     ; $5E11: $53
    ld   d, h                                     ; $5E12: $54
    ld   d, l                                     ; $5E13: $55
    ld   d, [hl]                                  ; $5E14: $56
    ld   d, l                                     ; $5E15: $55
    ld   d, [hl]                                  ; $5E16: $56
    ld   d, a                                     ; $5E17: $57

jr_003_5E18:
    ld   e, b                                     ; $5E18: $58
    ld   d, a                                     ; $5E19: $57
    ld   e, b                                     ; $5E1A: $58
    ld   e, c                                     ; $5E1B: $59
    ld   e, d                                     ; $5E1C: $5A
    ld   e, c                                     ; $5E1D: $59
    ld   e, d                                     ; $5E1E: $5A
    ld   e, e                                     ; $5E1F: $5B
    ld   c, $01                                   ; $5E20: $0E $01
    ld   e, [hl]                                  ; $5E22: $5E
    ld   c, $03                                   ; $5E23: $0E $03
    ld   l, e                                     ; $5E25: $6B
    ld   l, d                                     ; $5E26: $6A
    ld   l, [hl]                                  ; $5E27: $6E
    ld   l, l                                     ; $5E28: $6D
    ld   [hl], b                                  ; $5E29: $70
    ld   l, a                                     ; $5E2A: $6F
    ld   [hl], e                                  ; $5E2B: $73
    ld   [hl], d                                  ; $5E2C: $72
    ld   [hl], l                                  ; $5E2D: $75
    halt                                          ; $5E2E: $76
    ld   [hl], a                                  ; $5E2F: $77
    ld   a, b                                     ; $5E30: $78
    ld   b, $8C                                   ; $5E31: $06 $8C
    ld   [$091E], sp                              ; $5E33: $08 $1E $09
    ld   bc, $0004                                ; $5E36: $01 $04 $00
    adc  l                                        ; $5E39: $8D
    adc  l                                        ; $5E3A: $8D
    adc  l                                        ; $5E3B: $8D
    ld   l, l                                     ; $5E3C: $6D
    ld   l, l                                     ; $5E3D: $6D
    adc  l                                        ; $5E3E: $8D
    adc  l                                        ; $5E3F: $8D
    adc  l                                        ; $5E40: $8D
    ld   l, l                                     ; $5E41: $6D
    ld   l, l                                     ; $5E42: $6D
    ld   l, l                                     ; $5E43: $6D
    ld   l, l                                     ; $5E44: $6D
    adc  l                                        ; $5E45: $8D
    adc  l                                        ; $5E46: $8D
    ld   l, l                                     ; $5E47: $6D
    ld   l, l                                     ; $5E48: $6D
    adc  l                                        ; $5E49: $8D
    adc  l                                        ; $5E4A: $8D
    adc  l                                        ; $5E4B: $8D
    ld   l, l                                     ; $5E4C: $6D
    ld   l, l                                     ; $5E4D: $6D
    ld   l, b                                     ; $5E4E: $68
    ld   l, b                                     ; $5E4F: $68
    sbc  b                                        ; $5E50: $98
    sbc  b                                        ; $5E51: $98
    ld   l, b                                     ; $5E52: $68
    ld   l, b                                     ; $5E53: $68
    ld   l, b                                     ; $5E54: $68
    ld   l, b                                     ; $5E55: $68
    sbc  c                                        ; $5E56: $99
    sbc  c                                        ; $5E57: $99
    adc  b                                        ; $5E58: $88
    ld   l, b                                     ; $5E59: $68
    ld   l, b                                     ; $5E5A: $68
    sub  l                                        ; $5E5B: $95
    sub  l                                        ; $5E5C: $95
    ld   l, b                                     ; $5E5D: $68
    ld   l, b                                     ; $5E5E: $68
    adc  l                                        ; $5E5F: $8D
    sub  h                                        ; $5E60: $94
    sub  h                                        ; $5E61: $94
    adc  l                                        ; $5E62: $8D
    ld   [hl], e                                  ; $5E63: $73
    ld   [hl], h                                  ; $5E64: $74
    ld   [hl], e                                  ; $5E65: $73
    ld   [hl], h                                  ; $5E66: $74
    or   e                                        ; $5E67: $B3
    sub  h                                        ; $5E68: $94
    adc  a                                        ; $5E69: $8F
    xor  b                                        ; $5E6A: $A8
    ld   a, b                                     ; $5E6B: $78
    ld   a, c                                     ; $5E6C: $79
    ld   a, b                                     ; $5E6D: $78
    ld   a, c                                     ; $5E6E: $79
    cp   b                                        ; $5E6F: $B8
    sbc  c                                        ; $5E70: $99
    sub  h                                        ; $5E71: $94
    xor  l                                        ; $5E72: $AD
    ld   [hl], d                                  ; $5E73: $72
    ld   [hl], d                                  ; $5E74: $72
    sub  d                                        ; $5E75: $92
    sub  d                                        ; $5E76: $92
    ld   [hl], d                                  ; $5E77: $72
    ld   [hl], d                                  ; $5E78: $72
    or   h                                        ; $5E79: $B4
    xor  b                                        ; $5E7A: $A8
    ld   d, $5E                                   ; $5E7B: $16 $5E
    scf                                           ; $5E7D: $37
    rla                                           ; $5E7E: $17
    rla                                           ; $5E7F: $17
    nop                                           ; $5E80: $00
    ld   e, [hl]                                  ; $5E81: $5E
    adc  c                                        ; $5E82: $89
    ld   e, a                                     ; $5E83: $5F
    ld   e, h                                     ; $5E84: $5C
    ld   h, b                                     ; $5E85: $60
    ld   a, b                                     ; $5E86: $78
    ld   h, c                                     ; $5E87: $61
    ld   h, e                                     ; $5E88: $63
    ld   a, [bc]                                  ; $5E89: $0A
    inc  b                                        ; $5E8A: $04
    dec  b                                        ; $5E8B: $05
    ld   bc, $0624                                ; $5E8C: $01 $24 $06
    ldh  a, [rTAC]                                ; $5E8F: $F0 $07
    dec  bc                                       ; $5E91: $0B
    ld   [$0914], sp                              ; $5E92: $08 $14 $09
    ld   [bc], a                                  ; $5E95: $02
    jr   jr_003_5E18                              ; $5E96: $18 $80

    inc  b                                        ; $5E98: $04
    nop                                           ; $5E99: $00
    ld   [hl], d                                  ; $5E9A: $72
    ld   [hl], h                                  ; $5E9B: $74
    ld   [hl], l                                  ; $5E9C: $75
    ld   [hl], a                                  ; $5E9D: $77
    ld   a, c                                     ; $5E9E: $79
    ld   h, b                                     ; $5E9F: $60
    ld   [hl], d                                  ; $5EA0: $72
    ld   h, b                                     ; $5EA1: $60
    ld   bc, $08BA                                ; $5EA2: $01 $BA $08
    dec  de                                       ; $5EA5: $1B
    ld   bc, $08BA                                ; $5EA6: $01 $BA $08
    inc  d                                        ; $5EA9: $14
    ld   [hl], b                                  ; $5EAA: $70
    ld   [hl], d                                  ; $5EAB: $72
    ld   [hl], h                                  ; $5EAC: $74
    ld   [hl], l                                  ; $5EAD: $75
    ld   [hl], a                                  ; $5EAE: $77
    ld   h, b                                     ; $5EAF: $60
    ld   [hl], b                                  ; $5EB0: $70
    ld   h, b                                     ; $5EB1: $60
    ld   bc, $08B9                                ; $5EB2: $01 $B9 $08
    dec  de                                       ; $5EB5: $1B
    ld   bc, $08B9                                ; $5EB6: $01 $B9 $08
    inc  d                                        ; $5EB9: $14
    ld   l, [hl]                                  ; $5EBA: $6E
    ld   [hl], b                                  ; $5EBB: $70
    ld   [hl], d                                  ; $5EBC: $72
    ld   [hl], h                                  ; $5EBD: $74
    ld   [hl], l                                  ; $5EBE: $75
    ld   h, b                                     ; $5EBF: $60
    ld   l, [hl]                                  ; $5EC0: $6E
    ld   h, b                                     ; $5EC1: $60
    sub  a                                        ; $5EC2: $97
    ld   [hl], l                                  ; $5EC3: $75
    ld   [hl], h                                  ; $5EC4: $74
    ld   [hl], d                                  ; $5EC5: $72
    ld   h, b                                     ; $5EC6: $60
    sub  c                                        ; $5EC7: $91
    ld   [bc], a                                  ; $5EC8: $02
    sub  d                                        ; $5EC9: $92
    ld   [hl], h                                  ; $5ECA: $74
    ld   d, l                                     ; $5ECB: $55
    ld   d, h                                     ; $5ECC: $54
    ld   d, l                                     ; $5ECD: $55
    ld   bc, $0154                                ; $5ECE: $01 $54 $01
    ld   [hl], h                                  ; $5ED1: $74
    ld   d, d                                     ; $5ED2: $52
    ld   b, b                                     ; $5ED3: $40
    ld   bc, $08B2                                ; $5ED4: $01 $B2 $08
    dec  de                                       ; $5ED7: $1B
    ld   bc, $08B2                                ; $5ED8: $01 $B2 $08
    inc  d                                        ; $5EDB: $14
    inc  bc                                       ; $5EDC: $03
    adc  l                                        ; $5EDD: $8D
    ld   l, e                                     ; $5EDE: $6B
    ld   l, c                                     ; $5EDF: $69
    ld   l, b                                     ; $5EE0: $68
    ld   h, b                                     ; $5EE1: $60
    ld   h, [hl]                                  ; $5EE2: $66
    ld   h, b                                     ; $5EE3: $60
    ld   bc, $08AE                                ; $5EE4: $01 $AE $08
    dec  de                                       ; $5EE7: $1B
    ld   bc, $08AE                                ; $5EE8: $01 $AE $08
    inc  d                                        ; $5EEB: $14
    adc  e                                        ; $5EEC: $8B
    ld   l, c                                     ; $5EED: $69
    ld   l, b                                     ; $5EEE: $68
    ld   h, [hl]                                  ; $5EEF: $66
    ld   h, b                                     ; $5EF0: $60
    ld   h, h                                     ; $5EF1: $64
    ld   h, b                                     ; $5EF2: $60
    ld   bc, $08AD                                ; $5EF3: $01 $AD $08
    dec  de                                       ; $5EF6: $1B
    ld   bc, $08AD                                ; $5EF7: $01 $AD $08
    inc  d                                        ; $5EFA: $14
    adc  c                                        ; $5EFB: $89
    ld   l, b                                     ; $5EFC: $68
    ld   h, [hl]                                  ; $5EFD: $66
    ld   h, h                                     ; $5EFE: $64
    ld   h, d                                     ; $5EFF: $62
    ld   h, c                                     ; $5F00: $61
    ld   h, b                                     ; $5F01: $60
    ld   bc, $08AB                                ; $5F02: $01 $AB $08
    dec  de                                       ; $5F05: $1B
    ld   bc, $088B                                ; $5F06: $01 $8B $08
    inc  d                                        ; $5F09: $14
    adc  c                                        ; $5F0A: $89
    ld   c, b                                     ; $5F0B: $48
    ld   b, [hl]                                  ; $5F0C: $46
    adc  b                                        ; $5F0D: $88
    ld   l, c                                     ; $5F0E: $69
    ld   c, b                                     ; $5F0F: $48
    ld   c, c                                     ; $5F10: $49
    adc  b                                        ; $5F11: $88
    ld   b, [hl]                                  ; $5F12: $46
    ld   b, b                                     ; $5F13: $40
    ld   bc, $08A6                                ; $5F14: $01 $A6 $08
    dec  de                                       ; $5F17: $1B
    ld   bc, $8086                                ; $5F18: $01 $86 $80
    ld   [$6614], sp                              ; $5F1B: $08 $14 $66
    ld   h, b                                     ; $5F1E: $60
    ld   h, c                                     ; $5F1F: $61
    ld   h, b                                     ; $5F20: $60
    ld   l, b                                     ; $5F21: $68
    ld   h, b                                     ; $5F22: $60
    ld   h, c                                     ; $5F23: $61
    ld   h, b                                     ; $5F24: $60
    adc  c                                        ; $5F25: $89
    ld   l, b                                     ; $5F26: $68
    ld   h, [hl]                                  ; $5F27: $66
    ld   l, b                                     ; $5F28: $68
    ld   h, b                                     ; $5F29: $60
    ld   h, c                                     ; $5F2A: $61
    ld   h, b                                     ; $5F2B: $60
    ld   h, [hl]                                  ; $5F2C: $66
    ld   l, b                                     ; $5F2D: $68
    ld   l, c                                     ; $5F2E: $69
    ld   l, e                                     ; $5F2F: $6B
    ld   l, l                                     ; $5F30: $6D
    ld   [hl], d                                  ; $5F31: $72
    ld   [hl], c                                  ; $5F32: $71
    ld   [hl], d                                  ; $5F33: $72
    ld   [hl], h                                  ; $5F34: $74
    ld   [hl], d                                  ; $5F35: $72
    ld   [hl], c                                  ; $5F36: $71
    ld   l, a                                     ; $5F37: $6F
    ld   l, l                                     ; $5F38: $6D
    ld   h, b                                     ; $5F39: $60
    add  c                                        ; $5F3A: $81
    inc  bc                                       ; $5F3B: $03
    ld   [hl], d                                  ; $5F3C: $72
    ld   h, b                                     ; $5F3D: $60
    ld   l, l                                     ; $5F3E: $6D
    ld   h, b                                     ; $5F3F: $60
    ld   [hl], h                                  ; $5F40: $74
    ld   h, b                                     ; $5F41: $60
    ld   l, l                                     ; $5F42: $6D
    ld   h, b                                     ; $5F43: $60
    sub  l                                        ; $5F44: $95
    ld   [hl], h                                  ; $5F45: $74
    ld   [hl], d                                  ; $5F46: $72
    ld   [hl], h                                  ; $5F47: $74
    ld   a, c                                     ; $5F48: $79
    ld   a, b                                     ; $5F49: $78
    ld   a, c                                     ; $5F4A: $79
    ld   [hl], h                                  ; $5F4B: $74
    ld   h, b                                     ; $5F4C: $60
    ld   a, c                                     ; $5F4D: $79
    ld   h, b                                     ; $5F4E: $60
    ld   [hl], h                                  ; $5F4F: $74
    ld   h, b                                     ; $5F50: $60
    ld   a, l                                     ; $5F51: $7D
    ld   h, b                                     ; $5F52: $60
    sbc  [hl]                                     ; $5F53: $9E
    ld   a, l                                     ; $5F54: $7D
    ld   a, [hl]                                  ; $5F55: $7E
    sub  d                                        ; $5F56: $92
    add  b                                        ; $5F57: $80
    ld   d, $5E                                   ; $5F58: $16 $5E
    sbc  b                                        ; $5F5A: $98
    rla                                           ; $5F5B: $17
    ld   b, $F0                                   ; $5F5C: $06 $F0
    rlca                                          ; $5F5E: $07
    dec  bc                                       ; $5F5F: $0B
    add  hl, bc                                   ; $5F60: $09
    ld   bc, $8018                                ; $5F61: $01 $18 $80
    ret  nz                                       ; $5F64: $C0

    inc  b                                        ; $5F65: $04
    nop                                           ; $5F66: $00
    ld   [$6E14], sp                              ; $5F67: $08 $14 $6E
    ld   [hl], b                                  ; $5F6A: $70
    ld   [hl], d                                  ; $5F6B: $72
    ld   [hl], h                                  ; $5F6C: $74
    ld   [hl], l                                  ; $5F6D: $75
    ld   h, b                                     ; $5F6E: $60
    ld   l, [hl]                                  ; $5F6F: $6E
    ld   h, b                                     ; $5F70: $60
    ld   bc, $0897                                ; $5F71: $01 $97 $08

jr_003_5F74:
    dec  de                                       ; $5F74: $1B
    ld   bc, $0897                                ; $5F75: $01 $97 $08
    inc  d                                        ; $5F78: $14
    sub  l                                        ; $5F79: $95
    sub  h                                        ; $5F7A: $94
    ld   l, l                                     ; $5F7B: $6D
    ld   l, [hl]                                  ; $5F7C: $6E
    ld   [hl], b                                  ; $5F7D: $70
    ld   [hl], d                                  ; $5F7E: $72
    ld   [hl], h                                  ; $5F7F: $74
    ld   h, b                                     ; $5F80: $60
    ld   l, l                                     ; $5F81: $6D
    ld   h, b                                     ; $5F82: $60
    ld   bc, $0895                                ; $5F83: $01 $95 $08
    dec  de                                       ; $5F86: $1B
    ld   bc, $0895                                ; $5F87: $01 $95 $08
    inc  d                                        ; $5F8A: $14
    sub  h                                        ; $5F8B: $94
    sub  d                                        ; $5F8C: $92
    sub  h                                        ; $5F8D: $94
    ld   [hl], d                                  ; $5F8E: $72
    ld   [hl], c                                  ; $5F8F: $71
    ld   l, a                                     ; $5F90: $6F
    ld   h, b                                     ; $5F91: $60
    adc  l                                        ; $5F92: $8D
    ld   bc, $088D                                ; $5F93: $01 $8D $08
    dec  de                                       ; $5F96: $1B

jr_003_5F97:
    ld   bc, $088D                                ; $5F97: $01 $8D $08
    inc  d                                        ; $5F9A: $14
    adc  e                                        ; $5F9B: $8B
    ld   l, l                                     ; $5F9C: $6D
    ld   l, e                                     ; $5F9D: $6B
    adc  c                                        ; $5F9E: $89
    rlca                                          ; $5F9F: $07
    dec  bc                                       ; $5FA0: $0B
    ld   [$181C], sp                              ; $5FA1: $08 $1C $18
    add  b                                        ; $5FA4: $80
    inc  bc                                       ; $5FA5: $03
    ld   [hl], l                                  ; $5FA6: $75
    ld   [hl], h                                  ; $5FA7: $74
    ld   [hl], d                                  ; $5FA8: $72
    ld   [hl], h                                  ; $5FA9: $74
    ld   [hl], d                                  ; $5FAA: $72
    ld   [hl], c                                  ; $5FAB: $71
    add  hl, bc                                   ; $5FAC: $09
    ld   [bc], a                                  ; $5FAD: $02
    ld   [$0714], sp                              ; $5FAE: $08 $14 $07
    add  hl, bc                                   ; $5FB1: $09
    jr   jr_003_5F74                              ; $5FB2: $18 $C0

    inc  bc                                       ; $5FB4: $03
    ld   [hl], d                                  ; $5FB5: $72
    ld   h, b                                     ; $5FB6: $60
    add  hl, de                                   ; $5FB7: $19
    db   $10                                      ; $5FB8: $10
    ld   l, l                                     ; $5FB9: $6D
    ld   h, b                                     ; $5FBA: $60
    add  hl, de                                   ; $5FBB: $19
    ld   bc, $6075                                ; $5FBC: $01 $75 $60
    add  hl, de                                   ; $5FBF: $19
    ld   de, $606D                                ; $5FC0: $11 $6D $60
    add  hl, de                                   ; $5FC3: $19
    ld   bc, $7597                                ; $5FC4: $01 $97 $75
    ld   [hl], h                                  ; $5FC7: $74
    add  hl, de                                   ; $5FC8: $19
    ld   de, $7472                                ; $5FC9: $11 $72 $74
    add  hl, de                                   ; $5FCC: $19
    db   $10                                      ; $5FCD: $10
    ld   [hl], d                                  ; $5FCE: $72
    ld   [hl], c                                  ; $5FCF: $71
    add  hl, de                                   ; $5FD0: $19
    ld   de, $6070                                ; $5FD1: $11 $70 $60
    add  hl, de                                   ; $5FD4: $19
    db   $10                                      ; $5FD5: $10
    ld   l, e                                     ; $5FD6: $6B
    ld   h, b                                     ; $5FD7: $60
    add  hl, de                                   ; $5FD8: $19
    ld   bc, $6074                                ; $5FD9: $01 $74 $60
    add  hl, de                                   ; $5FDC: $19
    ld   de, $606B                                ; $5FDD: $11 $6B $60
    add  hl, de                                   ; $5FE0: $19
    db   $10                                      ; $5FE1: $10

jr_003_5FE2:
    sub  l                                        ; $5FE2: $95
    ld   [hl], h                                  ; $5FE3: $74
    ld   [hl], d                                  ; $5FE4: $72
    add  hl, de                                   ; $5FE5: $19
    ld   de, $7270                                ; $5FE6: $11 $70 $72
    add  hl, de                                   ; $5FE9: $19
    ld   bc, $6F70                                ; $5FEA: $01 $70 $6F
    add  hl, de                                   ; $5FED: $19
    ld   de, $606E                                ; $5FEE: $11 $6E $60
    add  hl, de                                   ; $5FF1: $19
    ld   bc, $6069                                ; $5FF2: $01 $69 $60
    add  hl, de                                   ; $5FF5: $19
    db   $10                                      ; $5FF6: $10
    ld   [hl], d                                  ; $5FF7: $72
    ld   h, b                                     ; $5FF8: $60
    add  hl, de                                   ; $5FF9: $19
    ld   de, $6069                                ; $5FFA: $11 $69 $60
    add  hl, de                                   ; $5FFD: $19
    ld   bc, $7294                                ; $5FFE: $01 $94 $72
    ld   [hl], c                                  ; $6001: $71

Call_003_6002:
    add  hl, de                                   ; $6002: $19
    ld   de, $6D6F                                ; $6003: $11 $6F $6D
    add  hl, de                                   ; $6006: $19
    db   $10                                      ; $6007: $10
    ld   l, e                                     ; $6008: $6B
    ld   l, c                                     ; $6009: $69
    add  hl, de                                   ; $600A: $19
    ld   de, $9102                                ; $600B: $11 $02 $91
    ld   [hl], d                                  ; $600E: $72
    adc  e                                        ; $600F: $8B
    ld   c, l                                     ; $6010: $4D
    ld   c, e                                     ; $6011: $4B
    ld   c, c                                     ; $6012: $49
    ld   c, e                                     ; $6013: $4B
    adc  c                                        ; $6014: $89
    jr   jr_003_5F97                              ; $6015: $18 $80

    ld   [$071C], sp                              ; $6017: $08 $1C $07
    dec  bc                                       ; $601A: $0B
    inc  bc                                       ; $601B: $03
    ld   [hl], l                                  ; $601C: $75
    ld   [hl], h                                  ; $601D: $74
    ld   [hl], l                                  ; $601E: $75
    ld   h, b                                     ; $601F: $60
    jr   jr_003_5FE2                              ; $6020: $18 $C0

    ld   [$0714], sp                              ; $6022: $08 $14 $07
    add  hl, bc                                   ; $6025: $09
    inc  bc                                       ; $6026: $03
    adc  l                                        ; $6027: $8D
    ld   a, c                                     ; $6028: $79
    ld   [hl], a                                  ; $6029: $77
    ld   [hl], l                                  ; $602A: $75
    ld   [hl], h                                  ; $602B: $74
    ld   [hl], l                                  ; $602C: $75
    ld   h, b                                     ; $602D: $60
    ld   [hl], c                                  ; $602E: $71
    ld   [hl], d                                  ; $602F: $72
    ld   a, d                                     ; $6030: $7A
    ld   a, c                                     ; $6031: $79
    ld   [hl], a                                  ; $6032: $77
    ld   [hl], l                                  ; $6033: $75
    ld   [hl], a                                  ; $6034: $77
    ld   [hl], l                                  ; $6035: $75
    ld   [hl], h                                  ; $6036: $74
    ld   [hl], d                                  ; $6037: $72
    sbc  c                                        ; $6038: $99
    ld   [hl], a                                  ; $6039: $77
    ld   [hl], l                                  ; $603A: $75
    ld   [hl], h                                  ; $603B: $74
    ld   [hl], l                                  ; $603C: $75
    ld   [hl], h                                  ; $603D: $74
    ld   [hl], d                                  ; $603E: $72
    ld   [hl], a                                  ; $603F: $77
    ld   [hl], l                                  ; $6040: $75
    ld   [hl], h                                  ; $6041: $74
    ld   [hl], d                                  ; $6042: $72
    ld   [hl], c                                  ; $6043: $71
    ld   h, b                                     ; $6044: $60
    adc  e                                        ; $6045: $8B
    ld   l, l                                     ; $6046: $6D
    ld   l, e                                     ; $6047: $6B
    ld   l, c                                     ; $6048: $69
    ld   l, b                                     ; $6049: $68
    ld   l, c                                     ; $604A: $69
    ld   h, b                                     ; $604B: $60
    ld   h, [hl]                                  ; $604C: $66
    ld   h, b                                     ; $604D: $60
    ld   h, l                                     ; $604E: $65
    ld   h, [hl]                                  ; $604F: $66
    ld   l, b                                     ; $6050: $68
    ld   l, c                                     ; $6051: $69
    ld   l, e                                     ; $6052: $6B
    ld   l, c                                     ; $6053: $69
    ld   l, b                                     ; $6054: $68
    ld   h, [hl]                                  ; $6055: $66
    ld   l, l                                     ; $6056: $6D
    ld   l, a                                     ; $6057: $6F
    ld   [hl], c                                  ; $6058: $71
    ld   h, b                                     ; $6059: $60
    ld   l, l                                     ; $605A: $6D
    ld   l, a                                     ; $605B: $6F
    ld   [hl], l                                  ; $605C: $75
    ld   [hl], h                                  ; $605D: $74
    ld   [hl], l                                  ; $605E: $75
    ld   [hl], h                                  ; $605F: $74
    ld   [hl], l                                  ; $6060: $75
    ld   h, b                                     ; $6061: $60
    ld   l, c                                     ; $6062: $69
    ld   l, e                                     ; $6063: $6B
    ld   l, l                                     ; $6064: $6D
    ld   l, e                                     ; $6065: $6B
    ld   bc, $0889                                ; $6066: $01 $89 $08
    dec  de                                       ; $6069: $1B
    ld   bc, $0889                                ; $606A: $01 $89 $08
    inc  d                                        ; $606D: $14
    ld   bc, $0895                                ; $606E: $01 $95 $08
    dec  de                                       ; $6071: $1B
    ld   bc, $1695                                ; $6072: $01 $95 $16
    ld   e, a                                     ; $6075: $5F
    ld   h, l                                     ; $6076: $65
    rla                                           ; $6077: $17
    dec  bc                                       ; $6078: $0B
    jr   jr_003_6082                              ; $6079: $18 $07

    inc  bc                                       ; $607B: $03
    ld   b, $F0                                   ; $607C: $06 $F0
    ld   [$011E], sp                              ; $607E: $08 $1E $01
    sub  d                                        ; $6081: $92

jr_003_6082:
    ld   [$011B], sp                              ; $6082: $08 $1B $01
    sub  d                                        ; $6085: $92
    ld   [$911E], sp                              ; $6086: $08 $1E $91
    sub  d                                        ; $6089: $92
    sub  a                                        ; $608A: $97
    sbc  c                                        ; $608B: $99
    sbc  d                                        ; $608C: $9A
    sub  a                                        ; $608D: $97
    ld   bc, $0890                                ; $608E: $01 $90 $08
    dec  de                                       ; $6091: $1B
    ld   bc, $0890                                ; $6092: $01 $90 $08
    ld   e, $8F                                   ; $6095: $1E $8F
    sub  b                                        ; $6097: $90
    sub  l                                        ; $6098: $95
    sub  a                                        ; $6099: $97
    sbc  c                                        ; $609A: $99
    sub  l                                        ; $609B: $95
    ld   bc, $088E                                ; $609C: $01 $8E $08
    dec  de                                       ; $609F: $1B
    ld   bc, $088E                                ; $60A0: $01 $8E $08
    ld   e, $8D                                   ; $60A3: $1E $8D
    adc  [hl]                                     ; $60A5: $8E
    ld   bc, $0897                                ; $60A6: $01 $97 $08
    dec  de                                       ; $60A9: $1B
    ld   bc, $0897                                ; $60AA: $01 $97 $08
    ld   e, $95                                   ; $60AD: $1E $95
    sub  h                                        ; $60AF: $94
    inc  b                                        ; $60B0: $04
    nop                                           ; $60B1: $00
    sub  h                                        ; $60B2: $94
    ld   l, l                                     ; $60B3: $6D
    ld   l, a                                     ; $60B4: $6F
    ld   [hl], c                                  ; $60B5: $71
    ld   h, b                                     ; $60B6: $60
    sub  c                                        ; $60B7: $91
    ld   bc, $08B2                                ; $60B8: $01 $B2 $08
    dec  de                                       ; $60BB: $1B
    ld   bc, $08B2                                ; $60BC: $01 $B2 $08
    ld   e, $01                                   ; $60BF: $1E $01
    sub  l                                        ; $60C1: $95
    ld   [$011B], sp                              ; $60C2: $08 $1B $01
    sub  l                                        ; $60C5: $95
    ld   [$971E], sp                              ; $60C6: $08 $1E $97
    sbc  c                                        ; $60C9: $99
    ld   a, d                                     ; $60CA: $7A
    ld   a, h                                     ; $60CB: $7C
    ld   a, d                                     ; $60CC: $7A
    ld   a, c                                     ; $60CD: $79
    ld   a, d                                     ; $60CE: $7A
    ld   a, c                                     ; $60CF: $79
    ld   [hl], a                                  ; $60D0: $77
    ld   a, c                                     ; $60D1: $79
    ld   [hl], a                                  ; $60D2: $77
    ld   [hl], h                                  ; $60D3: $74
    ld   [hl], b                                  ; $60D4: $70
    ld   [hl], h                                  ; $60D5: $74
    ld   a, d                                     ; $60D6: $7A
    ld   [hl], h                                  ; $60D7: $74
    ld   [hl], b                                  ; $60D8: $70
    ld   [hl], h                                  ; $60D9: $74
    ld   a, c                                     ; $60DA: $79
    ld   [hl], l                                  ; $60DB: $75
    ld   [hl], b                                  ; $60DC: $70

Call_003_60DD:
    ld   [hl], l                                  ; $60DD: $75
    ld   l, l                                     ; $60DE: $6D
    ld   [hl], b                                  ; $60DF: $70
    ld   l, c                                     ; $60E0: $69
    ld   l, l                                     ; $60E1: $6D
    ld   bc, $0892                                ; $60E2: $01 $92 $08
    dec  de                                       ; $60E5: $1B
    ld   bc, $0892                                ; $60E6: $01 $92 $08
    ld   e, $94                                   ; $60E9: $1E $94
    sub  l                                        ; $60EB: $95
    ld   [hl], a                                  ; $60EC: $77
    ld   a, d                                     ; $60ED: $7A
    ld   [hl], h                                  ; $60EE: $74
    ld   [hl], a                                  ; $60EF: $77
    ld   [hl], c                                  ; $60F0: $71
    ld   [hl], h                                  ; $60F1: $74
    ld   l, [hl]                                  ; $60F2: $6E
    ld   [hl], c                                  ; $60F3: $71
    ld   bc, $08AD                                ; $60F4: $01 $AD $08
    dec  de                                       ; $60F7: $1B
    ld   bc, $08AD                                ; $60F8: $01 $AD $08
    ld   e, $B2                                   ; $60FB: $1E $B2
    and  [hl]                                     ; $60FD: $A6
    ld   b, $96                                   ; $60FE: $06 $96
    ld   h, [hl]                                  ; $6100: $66
    ld   l, l                                     ; $6101: $6D
    ld   [hl], d                                  ; $6102: $72
    ld   l, l                                     ; $6103: $6D
    ld   l, c                                     ; $6104: $69
    ld   l, l                                     ; $6105: $6D
    ld   [hl], l                                  ; $6106: $75
    ld   l, l                                     ; $6107: $6D
    ld   [hl], h                                  ; $6108: $74
    ld   [hl], a                                  ; $6109: $77
    ld   [hl], c                                  ; $610A: $71
    ld   [hl], h                                  ; $610B: $74
    ld   l, l                                     ; $610C: $6D
    ld   [hl], c                                  ; $610D: $71
    ld   l, e                                     ; $610E: $6B
    ld   l, l                                     ; $610F: $6D
    ld   l, c                                     ; $6110: $69
    ld   [hl], d                                  ; $6111: $72
    ld   [hl], l                                  ; $6112: $75
    ld   [hl], d                                  ; $6113: $72
    ld   l, l                                     ; $6114: $6D
    ld   [hl], l                                  ; $6115: $75
    ld   a, c                                     ; $6116: $79
    ld   [hl], l                                  ; $6117: $75
    ld   l, l                                     ; $6118: $6D
    ld   [hl], h                                  ; $6119: $74
    ld   a, l                                     ; $611A: $7D
    ld   [hl], h                                  ; $611B: $74
    ld   a, [hl]                                  ; $611C: $7E
    ld   [hl], h                                  ; $611D: $74
    ld   a, l                                     ; $611E: $7D
    ld   [hl], h                                  ; $611F: $74
    ld   b, $FE                                   ; $6120: $06 $FE
    ld   bc, $0886                                ; $6122: $01 $86 $08
    dec  de                                       ; $6125: $1B
    ld   bc, $0886                                ; $6126: $01 $86 $08
    ld   e, $88                                   ; $6129: $1E $88
    adc  c                                        ; $612B: $89
    ld   l, e                                     ; $612C: $6B
    ld   [hl], c                                  ; $612D: $71
    ld   [hl], d                                  ; $612E: $72
    ld   [hl], h                                  ; $612F: $74
    ld   [hl], a                                  ; $6130: $77
    ld   [hl], l                                  ; $6131: $75
    ld   [hl], h                                  ; $6132: $74
    ld   [hl], l                                  ; $6133: $75
    ld   l, l                                     ; $6134: $6D
    ld   h, b                                     ; $6135: $60
    ld   l, l                                     ; $6136: $6D
    ld   h, b                                     ; $6137: $60
    ld   [hl], c                                  ; $6138: $71
    ld   h, b                                     ; $6139: $60
    ld   [hl], c                                  ; $613A: $71
    ld   h, b                                     ; $613B: $60
    sub  d                                        ; $613C: $92
    ld   [hl], l                                  ; $613D: $75
    ld   [hl], h                                  ; $613E: $74
    sub  d                                        ; $613F: $92
    add  b                                        ; $6140: $80
    add  [hl]                                     ; $6141: $86
    adc  l                                        ; $6142: $8D
    sub  d                                        ; $6143: $92
    adc  l                                        ; $6144: $8D
    sub  a                                        ; $6145: $97
    sbc  c                                        ; $6146: $99
    sbc  d                                        ; $6147: $9A
    sub  a                                        ; $6148: $97
    add  h                                        ; $6149: $84
    adc  e                                        ; $614A: $8B
    sub  b                                        ; $614B: $90
    adc  e                                        ; $614C: $8B
    sub  l                                        ; $614D: $95
    sub  a                                        ; $614E: $97
    sbc  c                                        ; $614F: $99
    sub  l                                        ; $6150: $95
    adc  [hl]                                     ; $6151: $8E
    sub  l                                        ; $6152: $95
    sbc  d                                        ; $6153: $9A
    sub  l                                        ; $6154: $95
    ld   bc, $0897                                ; $6155: $01 $97 $08
    dec  de                                       ; $6158: $1B
    ld   bc, $0897                                ; $6159: $01 $97 $08
    ld   e, $95                                   ; $615C: $1E $95
    sub  h                                        ; $615E: $94
    ld   d, $60                                   ; $615F: $16 $60
    or   b                                        ; $6161: $B0
    rla                                           ; $6162: $17
    rla                                           ; $6163: $17
    nop                                           ; $6164: $00
    ld   h, c                                     ; $6165: $61
    ld   l, l                                     ; $6166: $6D
    ld   h, d                                     ; $6167: $62
    ld   c, $62                                   ; $6168: $0E $62
    sbc  a                                        ; $616A: $9F
    ld   h, d                                     ; $616B: $62
    rst  RST_30                                   ; $616C: $F7
    dec  b                                        ; $616D: $05
    nop                                           ; $616E: $00
    ldh  a, [rTMA]                                ; $616F: $F0 $06
    ld   b, [hl]                                  ; $6171: $46
    rlca                                          ; $6172: $07
    inc  c                                        ; $6173: $0C
    ld   [$0422], sp                              ; $6174: $08 $22 $04
    ld   [$0109], sp                              ; $6177: $08 $09 $01
    ld   c, d                                     ; $617A: $4A
    ld   [bc], a                                  ; $617B: $02
    halt                                          ; $617C: $76
    ld   b, l                                     ; $617D: $45
    ld   [bc], a                                  ; $617E: $02
    ld   [hl], c                                  ; $617F: $71
    ld   b, h                                     ; $6180: $44
    ld   [bc], a                                  ; $6181: $02
    ld   [hl], b                                  ; $6182: $70
    ld   b, l                                     ; $6183: $45
    ld   [bc], a                                  ; $6184: $02
    ld   [hl], c                                  ; $6185: $71
    ld   c, $01                                   ; $6186: $0E $01
    ld   h, c                                     ; $6188: $61
    halt                                          ; $6189: $76
    inc  b                                        ; $618A: $04
    ld   [$0808], sp                              ; $618B: $08 $08 $08
    ld   b, $BE                                   ; $618E: $06 $BE
    add  hl, bc                                   ; $6190: $09
    nop                                           ; $6191: $00
    ld   l, d                                     ; $6192: $6A
    ld   l, h                                     ; $6193: $6C
    ld   [bc], a                                  ; $6194: $02
    adc  l                                        ; $6195: $8D
    ld   l, h                                     ; $6196: $6C
    ld   l, l                                     ; $6197: $6D
    ld   l, h                                     ; $6198: $6C
    ld   [bc], a                                  ; $6199: $02
    adc  l                                        ; $619A: $8D
    ld   c, h                                     ; $619B: $4C
    ld   c, l                                     ; $619C: $4D
    ld   l, a                                     ; $619D: $6F
    ld   l, l                                     ; $619E: $6D
    ld   l, h                                     ; $619F: $6C
    ld   l, d                                     ; $61A0: $6A
    ld   [bc], a                                  ; $61A1: $02
    adc  d                                        ; $61A2: $8A
    ld   l, h                                     ; $61A3: $6C
    and  a                                        ; $61A4: $A7
    add  hl, bc                                   ; $61A5: $09
    ld   [bc], a                                  ; $61A6: $02
    add  hl, de                                   ; $61A7: $19
    ld   bc, $564A                                ; $61A8: $01 $4A $56
    add  hl, de                                   ; $61AB: $19
    db   $10                                      ; $61AC: $10
    ld   b, a                                     ; $61AD: $47
    ld   d, e                                     ; $61AE: $53
    add  hl, de                                   ; $61AF: $19
    ld   bc, $5448                                ; $61B0: $01 $48 $54
    add  hl, de                                   ; $61B3: $19
    db   $10                                      ; $61B4: $10
    ld   b, h                                     ; $61B5: $44
    ld   d, b                                     ; $61B6: $50
    add  hl, de                                   ; $61B7: $19
    ld   bc, $5145                                ; $61B8: $01 $45 $51
    add  hl, de                                   ; $61BB: $19
    db   $10                                      ; $61BC: $10
    ld   b, d                                     ; $61BD: $42
    ld   c, [hl]                                  ; $61BE: $4E
    add  hl, de                                   ; $61BF: $19
    ld   bc, $4F43                                ; $61C0: $01 $43 $4F
    add  hl, de                                   ; $61C3: $19
    db   $10                                      ; $61C4: $10
    inc  bc                                       ; $61C5: $03
    ld   d, a                                     ; $61C6: $57
    inc  bc                                       ; $61C7: $03
    ld   c, e                                     ; $61C8: $4B
    add  hl, de                                   ; $61C9: $19
    ld   de, $0009                                ; $61CA: $11 $09 $00
    ld   l, d                                     ; $61CD: $6A
    ld   l, h                                     ; $61CE: $6C
    ld   [bc], a                                  ; $61CF: $02
    adc  l                                        ; $61D0: $8D
    ld   l, h                                     ; $61D1: $6C
    ld   l, l                                     ; $61D2: $6D
    ld   l, h                                     ; $61D3: $6C
    ld   [bc], a                                  ; $61D4: $02
    adc  l                                        ; $61D5: $8D
    ld   c, h                                     ; $61D6: $4C
    ld   c, l                                     ; $61D7: $4D
    ld   l, a                                     ; $61D8: $6F
    ld   l, l                                     ; $61D9: $6D
    ld   l, h                                     ; $61DA: $6C
    ld   l, l                                     ; $61DB: $6D
    sub  c                                        ; $61DC: $91
    ld   l, a                                     ; $61DD: $6F
    ld   [hl], c                                  ; $61DE: $71
    sub  d                                        ; $61DF: $92
    ld   [hl], c                                  ; $61E0: $71
    ld   [hl], d                                  ; $61E1: $72
    sub  h                                        ; $61E2: $94
    ld   [hl], d                                  ; $61E3: $72
    ld   [hl], h                                  ; $61E4: $74
    sub  [hl]                                     ; $61E5: $96
    ld   [hl], h                                  ; $61E6: $74
    halt                                          ; $61E7: $76
    add  hl, bc                                   ; $61E8: $09
    ld   bc, $6C6C                                ; $61E9: $01 $6C $6C
    ld   [bc], a                                  ; $61EC: $02
    add  b                                        ; $61ED: $80
    ld   l, h                                     ; $61EE: $6C
    ld   l, h                                     ; $61EF: $6C
    ld   l, l                                     ; $61F0: $6D
    ld   l, h                                     ; $61F1: $6C
    ld   l, d                                     ; $61F2: $6A
    ld   l, c                                     ; $61F3: $69
    ld   h, l                                     ; $61F4: $65
    ld   h, h                                     ; $61F5: $64
    ld   h, e                                     ; $61F6: $63
    inc  bc                                       ; $61F7: $03
    ld   [hl], l                                  ; $61F8: $75
    ld   [hl], h                                  ; $61F9: $74
    inc  bc                                       ; $61FA: $03
    ld   l, h                                     ; $61FB: $6C
    ld   l, h                                     ; $61FC: $6C
    ld   [bc], a                                  ; $61FD: $02
    add  b                                        ; $61FE: $80
    ld   l, h                                     ; $61FF: $6C
    ld   l, h                                     ; $6200: $6C
    ld   l, l                                     ; $6201: $6D
    ld   [hl], d                                  ; $6202: $72
    ld   [hl], c                                  ; $6203: $71
    ld   l, a                                     ; $6204: $6F
    ld   l, e                                     ; $6205: $6B
    ld   l, h                                     ; $6206: $6C
    ld   h, l                                     ; $6207: $65
    ld   h, e                                     ; $6208: $63
    ld   h, c                                     ; $6209: $61
    ld   d, $61                                   ; $620A: $16 $61
    adc  d                                        ; $620C: $8A
    rla                                           ; $620D: $17
    ld   a, [bc]                                  ; $620E: $0A
    inc  bc                                       ; $620F: $03
    ld   b, $46                                   ; $6210: $06 $46
    rlca                                          ; $6212: $07
    inc  c                                        ; $6213: $0C
    ld   [$0222], sp                              ; $6214: $08 $22 $02
    ld   h, b                                     ; $6217: $60
    add  hl, bc                                   ; $6218: $09
    ld   bc, $4A03                                ; $6219: $01 $03 $4A
    ld   [bc], a                                  ; $621C: $02
    halt                                          ; $621D: $76
    ld   b, l                                     ; $621E: $45
    ld   [bc], a                                  ; $621F: $02
    ld   [hl], c                                  ; $6220: $71
    ld   b, h                                     ; $6221: $44
    ld   [bc], a                                  ; $6222: $02
    ld   [hl], b                                  ; $6223: $70
    ld   b, l                                     ; $6224: $45
    ld   [bc], a                                  ; $6225: $02
    ld   [hl], c                                  ; $6226: $71
    ld   c, d                                     ; $6227: $4A
    ld   [bc], a                                  ; $6228: $02
    halt                                          ; $6229: $76
    ld   b, l                                     ; $622A: $45
    ld   [bc], a                                  ; $622B: $02
    ld   [hl], c                                  ; $622C: $71
    ld   b, h                                     ; $622D: $44
    ld   [bc], a                                  ; $622E: $02
    ld   [hl], b                                  ; $622F: $70
    ld   b, l                                     ; $6230: $45
    inc  b                                        ; $6231: $04
    nop                                           ; $6232: $00
    ld   b, $BE                                   ; $6233: $06 $BE
    ld   [$0908], sp                              ; $6235: $08 $08 $09
    nop                                           ; $6238: $00
    ld   a, l                                     ; $6239: $7D
    inc  bc                                       ; $623A: $03
    ld   l, b                                     ; $623B: $68
    ld   [bc], a                                  ; $623C: $02
    adc  b                                        ; $623D: $88
    ld   l, b                                     ; $623E: $68
    ld   l, b                                     ; $623F: $68
    ld   l, b                                     ; $6240: $68
    ld   [bc], a                                  ; $6241: $02
    adc  b                                        ; $6242: $88
    ld   c, b                                     ; $6243: $48
    ld   c, b                                     ; $6244: $48
    ld   l, b                                     ; $6245: $68
    ld   l, b                                     ; $6246: $68
    ld   l, b                                     ; $6247: $68
    ld   h, l                                     ; $6248: $65
    ld   [bc], a                                  ; $6249: $02
    add  a                                        ; $624A: $87
    ld   h, a                                     ; $624B: $67
    ld   bc, $08A3                                ; $624C: $01 $A3 $08
    jr   z, @+$03                                 ; $624F: $28 $01

    jp   $0808                                    ; $6251: $C3 $08 $08


    ld   h, l                                     ; $6254: $65
    ld   l, b                                     ; $6255: $68
    ld   [bc], a                                  ; $6256: $02
    adc  b                                        ; $6257: $88
    ld   l, b                                     ; $6258: $68
    ld   l, b                                     ; $6259: $68
    ld   l, b                                     ; $625A: $68
    ld   [bc], a                                  ; $625B: $02
    adc  b                                        ; $625C: $88
    ld   c, b                                     ; $625D: $48
    ld   c, b                                     ; $625E: $48
    ld   l, b                                     ; $625F: $68
    ld   l, b                                     ; $6260: $68
    ld   l, b                                     ; $6261: $68
    ld   l, d                                     ; $6262: $6A
    adc  h                                        ; $6263: $8C
    ld   l, h                                     ; $6264: $6C
    ld   l, h                                     ; $6265: $6C
    adc  l                                        ; $6266: $8D
    ld   l, l                                     ; $6267: $6D
    ld   l, l                                     ; $6268: $6D
    adc  a                                        ; $6269: $8F
    ld   l, a                                     ; $626A: $6F
    ld   l, a                                     ; $626B: $6F
    sub  c                                        ; $626C: $91
    ld   [hl], c                                  ; $626D: $71
    ld   [hl], c                                  ; $626E: $71
    add  hl, bc                                   ; $626F: $09
    ld   bc, $6565                                ; $6270: $01 $65 $65
    ld   [bc], a                                  ; $6273: $02
    add  b                                        ; $6274: $80
    ld   h, l                                     ; $6275: $65
    ld   h, l                                     ; $6276: $65
    ld   h, l                                     ; $6277: $65
    ld   h, l                                     ; $6278: $65
    rlca                                          ; $6279: $07
    ld   b, $02                                   ; $627A: $06 $02
    ld   h, b                                     ; $627C: $60
    ld   l, d                                     ; $627D: $6A
    ld   l, c                                     ; $627E: $69
    ld   h, l                                     ; $627F: $65
    ld   h, h                                     ; $6280: $64
    ld   h, e                                     ; $6281: $63
    inc  bc                                       ; $6282: $03
    ld   d, l                                     ; $6283: $55
    rlca                                          ; $6284: $07
    inc  c                                        ; $6285: $0C
    ld   a, l                                     ; $6286: $7D
    ld   a, l                                     ; $6287: $7D
    ld   [bc], a                                  ; $6288: $02
    add  b                                        ; $6289: $80
    ld   a, l                                     ; $628A: $7D
    ld   a, l                                     ; $628B: $7D
    ld   a, l                                     ; $628C: $7D
    ld   [bc], a                                  ; $628D: $02
    ld   h, b                                     ; $628E: $60
    rlca                                          ; $628F: $07
    ld   b, $03                                   ; $6290: $06 $03
    ld   [hl], d                                  ; $6292: $72
    ld   [hl], c                                  ; $6293: $71
    ld   l, a                                     ; $6294: $6F
    ld   l, e                                     ; $6295: $6B
    ld   l, h                                     ; $6296: $6C
    ld   h, l                                     ; $6297: $65
    ld   b, e                                     ; $6298: $43
    rlca                                          ; $6299: $07
    inc  c                                        ; $629A: $0C
    ld   d, $62                                   ; $629B: $16 $62
    ld   sp, $0917                                ; $629D: $31 $17 $09
    ld   [bc], a                                  ; $62A0: $02
    ld   b, $C8                                   ; $62A1: $06 $C8
    rlca                                          ; $62A3: $07
    inc  bc                                       ; $62A4: $03
    ld   [$8A1E], sp                              ; $62A5: $08 $1E $8A
    add  l                                        ; $62A8: $85
    adc  d                                        ; $62A9: $8A
    add  l                                        ; $62AA: $85
    adc  d                                        ; $62AB: $8A
    add  l                                        ; $62AC: $85
    adc  d                                        ; $62AD: $8A
    add  l                                        ; $62AE: $85
    inc  b                                        ; $62AF: $04
    nop                                           ; $62B0: $00
    inc  b                                        ; $62B1: $04
    nop                                           ; $62B2: $00
    adc  d                                        ; $62B3: $8A
    add  [hl]                                     ; $62B4: $86
    adc  d                                        ; $62B5: $8A
    add  [hl]                                     ; $62B6: $86
    adc  d                                        ; $62B7: $8A
    add  [hl]                                     ; $62B8: $86
    adc  d                                        ; $62B9: $8A
    add  [hl]                                     ; $62BA: $86
    ld   [de], a                                  ; $62BB: $12
    nop                                           ; $62BC: $00
    ld   h, d                                     ; $62BD: $62
    res  1, h                                     ; $62BE: $CB $8C
    add  a                                        ; $62C0: $87
    adc  h                                        ; $62C1: $8C
    add  a                                        ; $62C2: $87
    adc  h                                        ; $62C3: $8C
    add  a                                        ; $62C4: $87
    adc  h                                        ; $62C5: $8C
    add  a                                        ; $62C6: $87
    ld   c, $01                                   ; $62C7: $0E $01
    ld   h, d                                     ; $62C9: $62
    or   c                                        ; $62CA: $B1
    ld   l, d                                     ; $62CB: $6A
    ld   l, d                                     ; $62CC: $6A
    ld   l, d                                     ; $62CD: $6A
    ld   l, d                                     ; $62CE: $6A
    ld   l, c                                     ; $62CF: $69
    ld   l, c                                     ; $62D0: $69
    ld   l, c                                     ; $62D1: $69
    ld   l, c                                     ; $62D2: $69
    ld   l, b                                     ; $62D3: $68
    ld   l, b                                     ; $62D4: $68
    ld   l, b                                     ; $62D5: $68
    ld   l, b                                     ; $62D6: $68
    ld   h, a                                     ; $62D7: $67
    ld   h, a                                     ; $62D8: $67
    ld   h, a                                     ; $62D9: $67
    ld   h, a                                     ; $62DA: $67
    ld   c, d                                     ; $62DB: $4A
    ld   c, d                                     ; $62DC: $4A
    adc  d                                        ; $62DD: $8A
    ld   l, d                                     ; $62DE: $6A
    ld   l, d                                     ; $62DF: $6A
    ld   l, d                                     ; $62E0: $6A
    ld   l, d                                     ; $62E1: $6A
    ld   l, d                                     ; $62E2: $6A
    ld   l, d                                     ; $62E3: $6A
    ld   [bc], a                                  ; $62E4: $02
    add  b                                        ; $62E5: $80
    and  b                                        ; $62E6: $A0
    ld   c, d                                     ; $62E7: $4A
    ld   c, d                                     ; $62E8: $4A
    adc  d                                        ; $62E9: $8A
    ld   l, d                                     ; $62EA: $6A
    ld   l, d                                     ; $62EB: $6A
    ld   l, d                                     ; $62EC: $6A

jr_003_62ED:
    ld   l, d                                     ; $62ED: $6A
    ld   l, d                                     ; $62EE: $6A
    ld   l, d                                     ; $62EF: $6A
    ld   [bc], a                                  ; $62F0: $02
    add  b                                        ; $62F1: $80
    and  b                                        ; $62F2: $A0
    ld   d, $62                                   ; $62F3: $16 $62
    xor  a                                        ; $62F5: $AF
    rla                                           ; $62F6: $17
    rla                                           ; $62F7: $17
    nop                                           ; $62F8: $00
    ld   h, e                                     ; $62F9: $63
    ld   bc, $8C63                                ; $62FA: $01 $63 $8C
    ld   h, h                                     ; $62FD: $64
    jr   nz, jr_003_6364                          ; $62FE: $20 $64

    and  l                                        ; $6300: $A5
    ld   a, [bc]                                  ; $6301: $0A
    dec  b                                        ; $6302: $05
    dec  b                                        ; $6303: $05
    ld   bc, $0655                                ; $6304: $01 $55 $06
    ld   a, [$0F07]                               ; $6307: $FA $07 $0F
    ld   [$1810], sp                              ; $630A: $08 $10 $18
    ret  nz                                       ; $630D: $C0

    add  hl, de                                   ; $630E: $19
    db   $10                                      ; $630F: $10
    inc  b                                        ; $6310: $04
    nop                                           ; $6311: $00
    ld   d, c                                     ; $6312: $51
    ld   d, d                                     ; $6313: $52
    ld   d, l                                     ; $6314: $55
    ld   e, d                                     ; $6315: $5A
    ld   e, e                                     ; $6316: $5B
    inc  bc                                       ; $6317: $03
    ld   c, b                                     ; $6318: $48
    add  hl, de                                   ; $6319: $19
    ld   de, $010E                                ; $631A: $11 $0E $01
    ld   h, e                                     ; $631D: $63
    db   $10                                      ; $631E: $10
    add  hl, de                                   ; $631F: $19
    ld   bc, $4F4E                                ; $6320: $01 $4E $4F
    ld   d, h                                     ; $6323: $54
    add  hl, bc                                   ; $6324: $09
    inc  bc                                       ; $6325: $03
    ld   c, [hl]                                  ; $6326: $4E
    ld   c, a                                     ; $6327: $4F
    ld   d, h                                     ; $6328: $54
    ld   a, [bc]                                  ; $6329: $0A
    dec  b                                        ; $632A: $05
    jr   jr_003_62ED                              ; $632B: $18 $C0

    rlca                                          ; $632D: $07
    dec  bc                                       ; $632E: $0B
    add  hl, bc                                   ; $632F: $09
    ld   bc, $0105                                ; $6330: $01 $05 $01
    ld   l, c                                     ; $6333: $69
    inc  b                                        ; $6334: $04
    ld   [$1119], sp                              ; $6335: $08 $19 $11
    ld   b, $46                                   ; $6338: $06 $46
    ld   [$6B12], sp                              ; $633A: $08 $12 $6B
    ld   l, e                                     ; $633D: $6B
    ld   l, e                                     ; $633E: $6B
    ld   h, b                                     ; $633F: $60
    ld   l, e                                     ; $6340: $6B
    ld   l, e                                     ; $6341: $6B
    ld   l, e                                     ; $6342: $6B
    ld   h, b                                     ; $6343: $60
    ld   l, e                                     ; $6344: $6B

Call_003_6345:
    ld   l, e                                     ; $6345: $6B
    ld   l, e                                     ; $6346: $6B
    ld   h, b                                     ; $6347: $60
    ld   l, e                                     ; $6348: $6B
    ld   l, e                                     ; $6349: $6B
    ld   l, e                                     ; $634A: $6B
    ld   h, b                                     ; $634B: $60
    ld   b, $64                                   ; $634C: $06 $64
    ld   [$AA13], sp                              ; $634E: $08 $13 $AA
    and  a                                        ; $6351: $A7
    ld   bc, $01C8                                ; $6352: $01 $C8 $01
    add  sp, $04                                  ; $6355: $E8 $04
    nop                                           ; $6357: $00
    ld   [bc], a                                  ; $6358: $02
    add  b                                        ; $6359: $80
    inc  bc                                       ; $635A: $03
    ld   l, a                                     ; $635B: $6F
    ld   [bc], a                                  ; $635C: $02
    adc  l                                        ; $635D: $8D
    ld   l, e                                     ; $635E: $6B
    ld   [bc], a                                  ; $635F: $02
    adc  d                                        ; $6360: $8A
    ld   l, l                                     ; $6361: $6D
    ld   [bc], a                                  ; $6362: $02
    adc  e                                        ; $6363: $8B

jr_003_6364:
    ld   l, d                                     ; $6364: $6A
    ld   [bc], a                                  ; $6365: $02
    adc  b                                        ; $6366: $88
    ld   l, e                                     ; $6367: $6B
    ld   [bc], a                                  ; $6368: $02
    adc  d                                        ; $6369: $8A
    ld   l, b                                     ; $636A: $68
    ld   [bc], a                                  ; $636B: $02
    add  [hl]                                     ; $636C: $86
    ld   h, h                                     ; $636D: $64
    and  e                                        ; $636E: $A3
    ld   c, $01                                   ; $636F: $0E $01
    ld   h, e                                     ; $6371: $63
    ld   d, [hl]                                  ; $6372: $56
    ld   [bc], a                                  ; $6373: $02
    sub  b                                        ; $6374: $90
    ld   c, a                                     ; $6375: $4F
    ld   c, l                                     ; $6376: $4D
    adc  a                                        ; $6377: $8F
    adc  e                                        ; $6378: $8B
    ld   [bc], a                                  ; $6379: $02
    adc  l                                        ; $637A: $8D
    ld   c, e                                     ; $637B: $4B
    ld   c, d                                     ; $637C: $4A
    adc  e                                        ; $637D: $8B
    adc  b                                        ; $637E: $88
    sub  h                                        ; $637F: $94
    sub  d                                        ; $6380: $92
    sub  b                                        ; $6381: $90
    adc  a                                        ; $6382: $8F
    xor  l                                        ; $6383: $AD
    ld   [bc], a                                  ; $6384: $02
    adc  e                                        ; $6385: $8B
    ld   l, d                                     ; $6386: $6A
    add  sp, $16                                  ; $6387: $E8 $16
    ld   h, e                                     ; $6389: $63
    inc  [hl]                                     ; $638A: $34
    rla                                           ; $638B: $17
    ld   b, $FA                                   ; $638C: $06 $FA
    rlca                                          ; $638E: $07
    ld   [$1008], sp                              ; $638F: $08 $08 $10
    jr   @-$3E                                    ; $6392: $18 $C0

    add  hl, de                                   ; $6394: $19
    db   $10                                      ; $6395: $10
    ld   [bc], a                                  ; $6396: $02
    ld   h, b                                     ; $6397: $60
    inc  b                                        ; $6398: $04
    nop                                           ; $6399: $00
    ld   d, c                                     ; $639A: $51
    ld   d, d                                     ; $639B: $52
    ld   d, l                                     ; $639C: $55
    ld   e, d                                     ; $639D: $5A
    ld   e, e                                     ; $639E: $5B
    inc  bc                                       ; $639F: $03
    ld   c, b                                     ; $63A0: $48
    add  hl, de                                   ; $63A1: $19
    ld   de, $010E                                ; $63A2: $11 $0E $01
    ld   h, e                                     ; $63A5: $63
    sbc  b                                        ; $63A6: $98
    add  hl, de                                   ; $63A7: $19
    ld   bc, $4F4E                                ; $63A8: $01 $4E $4F
    ld   d, h                                     ; $63AB: $54
    add  hl, bc                                   ; $63AC: $09
    inc  bc                                       ; $63AD: $03
    jr   jr_003_63F0                              ; $63AE: $18 $40

    ld   b, $64                                   ; $63B0: $06 $64
    rlca                                          ; $63B2: $07
    dec  bc                                       ; $63B3: $0B
    add  hl, bc                                   ; $63B4: $09
    ld   bc, $0004                                ; $63B5: $01 $04 $00
    add  hl, de                                   ; $63B8: $19
    ld   de, $4606                                ; $63B9: $11 $06 $46
    ld   [$7C12], sp                              ; $63BC: $08 $12 $7C
    ld   a, h                                     ; $63BF: $7C
    sbc  h                                        ; $63C0: $9C
    ld   a, h                                     ; $63C1: $7C
    ld   a, h                                     ; $63C2: $7C
    sbc  h                                        ; $63C3: $9C
    ld   a, h                                     ; $63C4: $7C
    ld   a, h                                     ; $63C5: $7C
    sbc  h                                        ; $63C6: $9C
    ld   a, h                                     ; $63C7: $7C
    ld   a, h                                     ; $63C8: $7C
    sbc  h                                        ; $63C9: $9C
    ld   b, $64                                   ; $63CA: $06 $64
    ld   [$7C13], sp                              ; $63CC: $08 $13 $7C
    ld   a, e                                     ; $63CF: $7B
    ld   a, h                                     ; $63D0: $7C
    ld   a, c                                     ; $63D1: $79
    ld   a, e                                     ; $63D2: $7B
    ld   a, c                                     ; $63D3: $79
    ld   a, e                                     ; $63D4: $7B
    halt                                          ; $63D5: $76
    ld   [bc], a                                  ; $63D6: $02
    sbc  c                                        ; $63D7: $99
    ld   d, a                                     ; $63D8: $57
    ld   d, [hl]                                  ; $63D9: $56
    ld   bc, $01B7                                ; $63DA: $01 $B7 $01
    rst  RST_30                                   ; $63DD: $F7
    inc  b                                        ; $63DE: $04
    ld   [$6A68], sp                              ; $63DF: $08 $68 $6A
    ld   l, e                                     ; $63E2: $6B
    ld   l, b                                     ; $63E3: $68
    ld   h, [hl]                                  ; $63E4: $66
    ld   l, b                                     ; $63E5: $68
    ld   l, d                                     ; $63E6: $6A
    ld   h, [hl]                                  ; $63E7: $66
    ld   h, h                                     ; $63E8: $64
    ld   h, [hl]                                  ; $63E9: $66
    ld   l, b                                     ; $63EA: $68
    ld   h, h                                     ; $63EB: $64
    ld   h, e                                     ; $63EC: $63
    ld   h, h                                     ; $63ED: $64
    ld   h, [hl]                                  ; $63EE: $66
    ld   h, e                                     ; $63EF: $63

jr_003_63F0:
    ld   h, c                                     ; $63F0: $61
    ld   h, e                                     ; $63F1: $63
    ld   h, h                                     ; $63F2: $64
    ld   h, c                                     ; $63F3: $61
    inc  bc                                       ; $63F4: $03
    ld   [hl], a                                  ; $63F5: $77
    ld   a, c                                     ; $63F6: $79
    ld   a, e                                     ; $63F7: $7B
    ld   [hl], a                                  ; $63F8: $77
    halt                                          ; $63F9: $76
    ld   [hl], a                                  ; $63FA: $77
    ld   a, c                                     ; $63FB: $79
    halt                                          ; $63FC: $76
    ld   a, c                                     ; $63FD: $79
    ld   d, a                                     ; $63FE: $57
    ld   d, [hl]                                  ; $63FF: $56
    sub  a                                        ; $6400: $97
    ld   c, $01                                   ; $6401: $0E $01
    ld   h, e                                     ; $6403: $63
    sbc  $03                                      ; $6404: $DE $03
    adc  b                                        ; $6406: $88
    adc  d                                        ; $6407: $8A
    add  [hl]                                     ; $6408: $86
    add  e                                        ; $6409: $83
    add  l                                        ; $640A: $85
    add  a                                        ; $640B: $87
    add  e                                        ; $640C: $83
    inc  bc                                       ; $640D: $03
    sub  a                                        ; $640E: $97
    inc  bc                                       ; $640F: $03
    sub  b                                        ; $6410: $90
    adc  e                                        ; $6411: $8B
    adc  b                                        ; $6412: $88
    adc  e                                        ; $6413: $8B
    adc  e                                        ; $6414: $8B
    adc  d                                        ; $6415: $8A
    add  e                                        ; $6416: $83
    add  c                                        ; $6417: $81
    and  c                                        ; $6418: $A1
    inc  bc                                       ; $6419: $03
    or   [hl]                                     ; $641A: $B6
    rst  WriteBgMapTilePair                       ; $641B: $D7
    ld   d, $63                                   ; $641C: $16 $63
    or   [hl]                                     ; $641E: $B6
    rla                                           ; $641F: $17
    rlca                                          ; $6420: $07
    inc  bc                                       ; $6421: $03
    ld   b, $FF                                   ; $6422: $06 $FF
    ld   [$091E], sp                              ; $6424: $08 $1E $09
    ld   bc, $5251                                ; $6427: $01 $51 $52
    ld   d, l                                     ; $642A: $55
    ld   e, d                                     ; $642B: $5A
    ld   e, e                                     ; $642C: $5B
    inc  bc                                       ; $642D: $03
    ld   c, b                                     ; $642E: $48
    ld   c, [hl]                                  ; $642F: $4E
    ld   c, a                                     ; $6430: $4F
    ld   d, h                                     ; $6431: $54
    add  hl, bc                                   ; $6432: $09
    ld   [bc], a                                  ; $6433: $02
    ld   c, [hl]                                  ; $6434: $4E
    ld   c, a                                     ; $6435: $4F
    ld   d, h                                     ; $6436: $54
    inc  bc                                       ; $6437: $03
    ld   d, c                                     ; $6438: $51
    ld   d, d                                     ; $6439: $52
    ld   d, l                                     ; $643A: $55
    ld   e, d                                     ; $643B: $5A
    ld   e, e                                     ; $643C: $5B
    inc  bc                                       ; $643D: $03
    ld   c, b                                     ; $643E: $48
    ld   b, $A0                                   ; $643F: $06 $A0
    ld   [$091E], sp                              ; $6441: $08 $1E $09
    ld   bc, $0307                                ; $6444: $01 $07 $03
    inc  b                                        ; $6447: $04
    nop                                           ; $6448: $00
    ld   l, l                                     ; $6449: $6D
    ld   l, l                                     ; $644A: $6D
    adc  l                                        ; $644B: $8D
    ld   l, l                                     ; $644C: $6D
    ld   l, l                                     ; $644D: $6D
    adc  l                                        ; $644E: $8D
    ld   l, l                                     ; $644F: $6D
    ld   l, l                                     ; $6450: $6D
    adc  l                                        ; $6451: $8D
    ld   l, l                                     ; $6452: $6D
    ld   l, l                                     ; $6453: $6D
    adc  l                                        ; $6454: $8D
    inc  b                                        ; $6455: $04
    nop                                           ; $6456: $00
    ld   l, b                                     ; $6457: $68
    ld   [hl], h                                  ; $6458: $74
    ld   l, b                                     ; $6459: $68
    ld   [hl], h                                  ; $645A: $74
    ld   l, b                                     ; $645B: $68
    ld   [hl], h                                  ; $645C: $74
    ld   l, b                                     ; $645D: $68
    ld   [hl], h                                  ; $645E: $74
    ld   l, b                                     ; $645F: $68
    ld   [hl], h                                  ; $6460: $74
    ld   l, b                                     ; $6461: $68
    ld   [hl], h                                  ; $6462: $74
    ld   l, b                                     ; $6463: $68
    ld   [hl], h                                  ; $6464: $74
    ld   l, b                                     ; $6465: $68
    ld   [hl], h                                  ; $6466: $74
    ld   c, $01                                   ; $6467: $0E $01
    ld   h, h                                     ; $6469: $64
    ld   d, l                                     ; $646A: $55
    inc  b                                        ; $646B: $04
    nop                                           ; $646C: $00
    adc  b                                        ; $646D: $88
    ld   l, b                                     ; $646E: $68
    ld   l, b                                     ; $646F: $68
    adc  b                                        ; $6470: $88
    ld   l, b                                     ; $6471: $68
    ld   l, b                                     ; $6472: $68
    adc  b                                        ; $6473: $88
    ld   l, b                                     ; $6474: $68
    ld   l, b                                     ; $6475: $68
    adc  b                                        ; $6476: $88
    ld   l, b                                     ; $6477: $68
    ld   l, b                                     ; $6478: $68
    ld   c, $03                                   ; $6479: $0E $03
    ld   h, h                                     ; $647B: $64
    ld   l, e                                     ; $647C: $6B
    sub  b                                        ; $647D: $90
    ld   [hl], d                                  ; $647E: $72
    ld   [hl], d                                  ; $647F: $72
    adc  e                                        ; $6480: $8B
    ld   l, e                                     ; $6481: $6B
    ld   l, e                                     ; $6482: $6B
    adc  l                                        ; $6483: $8D
    ld   l, a                                     ; $6484: $6F
    ld   l, a                                     ; $6485: $6F
    adc  b                                        ; $6486: $88
    ld   l, b                                     ; $6487: $68
    ld   l, b                                     ; $6488: $68
    adc  l                                        ; $6489: $8D
    ld   l, a                                     ; $648A: $6F
    ld   l, a                                     ; $648B: $6F
    sub  b                                        ; $648C: $90
    ld   [hl], c                                  ; $648D: $71
    ld   [hl], c                                  ; $648E: $71
    sub  d                                        ; $648F: $92
    ld   [hl], d                                  ; $6490: $72
    ld   [hl], d                                  ; $6491: $72
    sub  e                                        ; $6492: $93
    ld   [hl], e                                  ; $6493: $73
    ld   [hl], e                                  ; $6494: $73
    adc  b                                        ; $6495: $88
    ld   l, b                                     ; $6496: $68
    ld   l, b                                     ; $6497: $68
    adc  b                                        ; $6498: $88
    ld   l, b                                     ; $6499: $68
    ld   l, b                                     ; $649A: $68
    adc  b                                        ; $649B: $88
    ld   l, b                                     ; $649C: $68
    ld   l, b                                     ; $649D: $68
    adc  b                                        ; $649E: $88
    ld   l, b                                     ; $649F: $68
    ld   l, b                                     ; $64A0: $68
    ld   d, $64                                   ; $64A1: $16 $64
    ld   b, a                                     ; $64A3: $47
    rla                                           ; $64A4: $17
    rla                                           ; $64A5: $17
    nop                                           ; $64A6: $00
    ld   h, h                                     ; $64A7: $64
    xor  a                                        ; $64A8: $AF
    ld   h, l                                     ; $64A9: $65
    ld   a, h                                     ; $64AA: $7C
    ld   h, [hl]                                  ; $64AB: $66
    dec  a                                        ; $64AC: $3D
    ld   h, [hl]                                  ; $64AD: $66
    and  c                                        ; $64AE: $A1
    ld   a, [bc]                                  ; $64AF: $0A
    dec  b                                        ; $64B0: $05
    dec  b                                        ; $64B1: $05
    ld   bc, $0680                                ; $64B2: $01 $80 $06
    ret  z                                        ; $64B5: $C8

    rlca                                          ; $64B6: $07
    rrca                                          ; $64B7: $0F
    ld   [$0908], sp                              ; $64B8: $08 $08 $09
    ld   bc, $91B4                                ; $64BB: $01 $B4 $91
    sub  d                                        ; $64BE: $92
    or   h                                        ; $64BF: $B4
    ld   [bc], a                                  ; $64C0: $02
    or   h                                        ; $64C1: $B4
    sbc  c                                        ; $64C2: $99
    cp   [hl]                                     ; $64C3: $BE
    ld   bc, $08BD                                ; $64C4: $01 $BD $08
    jr   z, jr_003_64CA                           ; $64C7: $28 $01

    cp   l                                        ; $64C9: $BD

jr_003_64CA:
    ld   [$9B08], sp                              ; $64CA: $08 $08 $9B
    sbc  l                                        ; $64CD: $9D
    ld   bc, $08B9                                ; $64CE: $01 $B9 $08
    jr   z, jr_003_64D4                           ; $64D1: $28 $01

    cp   c                                        ; $64D3: $B9

jr_003_64D4:
    ld   [$9F08], sp                              ; $64D4: $08 $08 $9F
    sbc  l                                        ; $64D7: $9D
    cp   a                                        ; $64D8: $BF
    ld   bc, $C803                                ; $64D9: $01 $03 $C8
    ld   [$0128], sp                              ; $64DC: $08 $28 $01
    ret  z                                        ; $64DF: $C8

    ld   [$A508], sp                              ; $64E0: $08 $08 $A5
    xor  b                                        ; $64E3: $A8
    xor  b                                        ; $64E4: $A8
    add  [hl]                                     ; $64E5: $86
    add  l                                        ; $64E6: $85
    add  [hl]                                     ; $64E7: $86
    add  l                                        ; $64E8: $85
    ld   [bc], a                                  ; $64E9: $02
    and  c                                        ; $64EA: $A1
    add  c                                        ; $64EB: $81
    add  c                                        ; $64EC: $81
    add  e                                        ; $64ED: $83
    add  [hl]                                     ; $64EE: $86
    add  l                                        ; $64EF: $85
    and  c                                        ; $64F0: $A1
    and  c                                        ; $64F1: $A1
    and  e                                        ; $64F2: $A3
    inc  b                                        ; $64F3: $04
    nop                                           ; $64F4: $00
    ld   b, $3C                                   ; $64F5: $06 $3C
    ld   [$0408], sp                              ; $64F7: $08 $08 $04
    nop                                           ; $64FA: $00
    sbc  c                                        ; $64FB: $99
    ld   a, c                                     ; $64FC: $79
    ld   a, c                                     ; $64FD: $79

jr_003_64FE:
    ld   [bc], a                                  ; $64FE: $02
    cp   c                                        ; $64FF: $B9
    ld   a, c                                     ; $6500: $79
    ld   a, c                                     ; $6501: $79
    sbc  c                                        ; $6502: $99
    sbc  [hl]                                     ; $6503: $9E
    sbc  [hl]                                     ; $6504: $9E
    ld   a, l                                     ; $6505: $7D
    ld   a, e                                     ; $6506: $7B
    sbc  l                                        ; $6507: $9D
    cp   c                                        ; $6508: $B9
    ld   a, c                                     ; $6509: $79
    ld   a, c                                     ; $650A: $79
    sbc  c                                        ; $650B: $99
    sbc  [hl]                                     ; $650C: $9E
    sbc  [hl]                                     ; $650D: $9E
    ld   a, l                                     ; $650E: $7D
    ld   a, e                                     ; $650F: $7B
    sbc  l                                        ; $6510: $9D
    cp   c                                        ; $6511: $B9
    ld   [de], a                                  ; $6512: $12
    nop                                           ; $6513: $00
    ld   h, l                                     ; $6514: $65
    dec  hl                                       ; $6515: $2B
    ld   a, l                                     ; $6516: $7D
    inc  bc                                       ; $6517: $03
    ld   l, b                                     ; $6518: $68
    adc  l                                        ; $6519: $8D
    adc  b                                        ; $651A: $88
    xor  l                                        ; $651B: $AD
    ld   bc, $088B                                ; $651C: $01 $8B $08
    jr   z, @+$03                                 ; $651F: $28 $01

    rrc  b                                        ; $6521: $CB $08
    ld   [$098C], sp                              ; $6523: $08 $8C $09
    ld   [bc], a                                  ; $6526: $02
    ld   c, $01                                   ; $6527: $0E $01
    ld   h, h                                     ; $6529: $64
    ld   sp, hl                                   ; $652A: $F9
    ld   a, [hl]                                  ; $652B: $7E
    ld   a, l                                     ; $652C: $7D
    sbc  c                                        ; $652D: $99
    sub  h                                        ; $652E: $94
    or   a                                        ; $652F: $B7
    ld   bc, $0896                                ; $6530: $01 $96 $08
    jr   z, jr_003_6536                           ; $6533: $28 $01

    or   [hl]                                     ; $6535: $B6

jr_003_6536:
    ld   [$0927], sp                              ; $6536: $08 $27 $09
    ld   bc, $6406                                ; $6539: $01 $06 $64
    jr   jr_003_64FE                              ; $653C: $18 $C0

    sub  a                                        ; $653E: $97
    sub  [hl]                                     ; $653F: $96
    sub  h                                        ; $6540: $94
    or   [hl]                                     ; $6541: $B6
    sbc  b                                        ; $6542: $98
    sbc  c                                        ; $6543: $99
    cp   e                                        ; $6544: $BB
    sbc  l                                        ; $6545: $9D
    sbc  [hl]                                     ; $6546: $9E
    ld   [$0308], sp                              ; $6547: $08 $08 $03
    adc  b                                        ; $654A: $88
    add  b                                        ; $654B: $80
    ld   [$0227], sp                              ; $654C: $08 $27 $02
    and  l                                        ; $654F: $A5
    add  l                                        ; $6550: $85
    add  e                                        ; $6551: $83
    add  l                                        ; $6552: $85
    inc  bc                                       ; $6553: $03
    or   [hl]                                     ; $6554: $B6
    sbc  b                                        ; $6555: $98
    sbc  c                                        ; $6556: $99
    sbc  e                                        ; $6557: $9B
    sbc  l                                        ; $6558: $9D
    sbc  [hl]                                     ; $6559: $9E
    sbc  a                                        ; $655A: $9F
    ld   bc, $A803                                ; $655B: $01 $03 $A8
    ld   [$0128], sp                              ; $655E: $08 $28 $01
    xor  b                                        ; $6561: $A8
    ld   [$A727], sp                              ; $6562: $08 $27 $A7
    xor  b                                        ; $6565: $A8
    adc  d                                        ; $6566: $8A
    add  b                                        ; $6567: $80

jr_003_6568:
    ld   [bc], a                                  ; $6568: $02
    or   d                                        ; $6569: $B2
    sub  d                                        ; $656A: $92
    sub  c                                        ; $656B: $91
    adc  a                                        ; $656C: $8F
    sub  c                                        ; $656D: $91
    add  b                                        ; $656E: $80
    ld   [bc], a                                  ; $656F: $02
    cp   b                                        ; $6570: $B8
    sbc  b                                        ; $6571: $98
    sub  [hl]                                     ; $6572: $96
    sub  h                                        ; $6573: $94
    or   [hl]                                     ; $6574: $B6
    xor  d                                        ; $6575: $AA
    xor  l                                        ; $6576: $AD
    xor  h                                        ; $6577: $AC
    ld   d, $64                                   ; $6578: $16 $64
    di                                            ; $657A: $F3
    rla                                           ; $657B: $17
    ld   b, $C8                                   ; $657C: $06 $C8
    rlca                                          ; $657E: $07
    dec  c                                        ; $657F: $0D
    ld   [$0908], sp                              ; $6580: $08 $08 $09
    ld   bc, $8DB2                                ; $6583: $01 $B2 $8D
    adc  a                                        ; $6586: $8F
    or   c                                        ; $6587: $B1
    ld   [bc], a                                  ; $6588: $02
    xor  l                                        ; $6589: $AD
    sub  h                                        ; $658A: $94
    cp   c                                        ; $658B: $B9
    ld   bc, $08B9                                ; $658C: $01 $B9 $08
    jr   z, jr_003_6592                           ; $658F: $28 $01

    reti                                          ; $6591: $D9


jr_003_6592:
    ld   [$D608], sp                              ; $6592: $08 $08 $D6
    reti                                          ; $6595: $D9


    ld   bc, $08B8                                ; $6596: $01 $B8 $08
    jr   z, jr_003_659C                           ; $6599: $28 $01

    cp   b                                        ; $659B: $B8

jr_003_659C:
    ld   [$9B08], sp                              ; $659C: $08 $08 $9B
    sbc  c                                        ; $659F: $99
    sbc  b                                        ; $65A0: $98
    sub  h                                        ; $65A1: $94
    ld   [$0627], sp                              ; $65A2: $08 $27 $06
    ret  z                                        ; $65A5: $C8

    jr   jr_003_6568                              ; $65A6: $18 $C0

    reti                                          ; $65A8: $D9


jr_003_65A9:
    rst  WriteBgMapTilePair                       ; $65A9: $D7
    sub  $D5                                      ; $65AA: $D6 $D5
    sub  $D5                                      ; $65AC: $D6 $D5
    inc  b                                        ; $65AE: $04
    nop                                           ; $65AF: $00
    rlca                                          ; $65B0: $07
    dec  bc                                       ; $65B1: $0B
    ld   b, $3C                                   ; $65B2: $06 $3C
    ld   [$1808], sp                              ; $65B4: $08 $08 $18
    nop                                           ; $65B7: $00
    sub  c                                        ; $65B8: $91
    ld   [hl], c                                  ; $65B9: $71
    ld   [hl], c                                  ; $65BA: $71
    ld   [bc], a                                  ; $65BB: $02
    or   c                                        ; $65BC: $B1
    ld   [hl], c                                  ; $65BD: $71
    ld   [hl], c                                  ; $65BE: $71
    sub  c                                        ; $65BF: $91
    sbc  c                                        ; $65C0: $99
    sbc  c                                        ; $65C1: $99
    ld   a, c                                     ; $65C2: $79
    ld   a, c                                     ; $65C3: $79
    sbc  c                                        ; $65C4: $99
    or   h                                        ; $65C5: $B4
    ld   [hl], h                                  ; $65C6: $74
    ld   [hl], h                                  ; $65C7: $74
    sub  h                                        ; $65C8: $94
    sbc  c                                        ; $65C9: $99
    sbc  c                                        ; $65CA: $99
    ld   a, c                                     ; $65CB: $79
    ld   a, c                                     ; $65CC: $79
    sbc  c                                        ; $65CD: $99
    or   h                                        ; $65CE: $B4
    ld   [hl], h                                  ; $65CF: $74
    ld   a, l                                     ; $65D0: $7D
    sbc  l                                        ; $65D1: $9D
    sbc  c                                        ; $65D2: $99
    cp   l                                        ; $65D3: $BD
    ld   bc, $089F                                ; $65D4: $01 $9F $08
    jr   z, jr_003_65DA                           ; $65D7: $28 $01

    rst  RST_18                                   ; $65D9: $DF

jr_003_65DA:
    ld   [$0708], sp                              ; $65DA: $08 $08 $07
    rrca                                          ; $65DD: $0F
    inc  bc                                       ; $65DE: $03
    adc  c                                        ; $65DF: $89
    and  l                                        ; $65E0: $A5
    rlca                                          ; $65E1: $07
    dec  bc                                       ; $65E2: $0B
    ld   [$0627], sp                              ; $65E3: $08 $27 $06
    ld   a, b                                     ; $65E6: $78
    jr   jr_003_65A9                              ; $65E7: $18 $C0

    inc  bc                                       ; $65E9: $03
    or   h                                        ; $65EA: $B4
    cp   c                                        ; $65EB: $B9
    inc  bc                                       ; $65EC: $03
    xor  b                                        ; $65ED: $A8
    adc  b                                        ; $65EE: $88
    ld   h, [hl]                                  ; $65EF: $66
    ld   h, l                                     ; $65F0: $65
    add  [hl]                                     ; $65F1: $86
    ld   bc, $0885                                ; $65F2: $01 $85 $08
    jr   z, jr_003_65F8                           ; $65F5: $28 $01

    push bc                                       ; $65F7: $C5

jr_003_65F8:
    ld   [$8027], sp                              ; $65F8: $08 $27 $80
    inc  bc                                       ; $65FB: $03
    sub  h                                        ; $65FC: $94
    sbc  c                                        ; $65FD: $99
    inc  bc                                       ; $65FE: $03
    adc  b                                        ; $65FF: $88
    adc  b                                        ; $6600: $88
    ld   h, [hl]                                  ; $6601: $66
    ld   h, l                                     ; $6602: $65
    add  [hl]                                     ; $6603: $86
    adc  b                                        ; $6604: $88
    and  [hl]                                     ; $6605: $A6
    ld   bc, $08A1                                ; $6606: $01 $A1 $08
    jr   z, jr_003_660C                           ; $6609: $28 $01

    pop  bc                                       ; $660B: $C1

jr_003_660C:
    ld   [$0327], sp                              ; $660C: $08 $27 $03
    pop  de                                       ; $660F: $D1
    call nc, Call_000_01B9                        ; $6610: $D4 $B9 $01
    cp   c                                        ; $6613: $B9
    ld   [$0128], sp                              ; $6614: $08 $28 $01
    reti                                          ; $6617: $D9


    ld   [$D127], sp                              ; $6618: $08 $27 $D1
    call nc, $B101                                ; $661B: $D4 $01 $B1
    ld   [$0128], sp                              ; $661E: $08 $28 $01
    or   c                                        ; $6621: $B1
    ld   [$AE27], sp                              ; $6622: $08 $27 $AE
    xor  d                                        ; $6625: $AA
    sbc  c                                        ; $6626: $99
    add  b                                        ; $6627: $80
    ld   [bc], a                                  ; $6628: $02
    inc  bc                                       ; $6629: $03
    xor  d                                        ; $662A: $AA
    adc  d                                        ; $662B: $8A
    adc  d                                        ; $662C: $8A
    adc  d                                        ; $662D: $8A
    adc  b                                        ; $662E: $88
    add  b                                        ; $662F: $80
    ld   [bc], a                                  ; $6630: $02
    or   h                                        ; $6631: $B4
    adc  a                                        ; $6632: $8F
    adc  a                                        ; $6633: $8F
    adc  a                                        ; $6634: $8F
    xor  d                                        ; $6635: $AA
    and  [hl]                                     ; $6636: $A6
    and  [hl]                                     ; $6637: $A6
    and  e                                        ; $6638: $A3
    ld   d, $65                                   ; $6639: $16 $65
    xor  [hl]                                     ; $663B: $AE
    rla                                           ; $663C: $17
    add  hl, bc                                   ; $663D: $09
    ld   [bc], a                                  ; $663E: $02
    ld   b, $E6                                   ; $663F: $06 $E6
    rlca                                          ; $6641: $07
    inc  bc                                       ; $6642: $03
    ld   [$A01E], sp                              ; $6643: $08 $1E $A0
    add  b                                        ; $6646: $80
    adc  h                                        ; $6647: $8C
    xor  e                                        ; $6648: $AB
    ld   [bc], a                                  ; $6649: $02
    xor  e                                        ; $664A: $AB
    adc  e                                        ; $664B: $8B
    xor  d                                        ; $664C: $AA
    ld   bc, $08A8                                ; $664D: $01 $A8 $08
    dec  de                                       ; $6650: $1B
    ld   bc, $08C8                                ; $6651: $01 $C8 $08
    ld   e, $C6                                   ; $6654: $1E $C6
    rst  RST_00                                   ; $6656: $C7
    ld   bc, $08C8                                ; $6657: $01 $C8 $08
    dec  de                                       ; $665A: $1B
    ld   bc, $08C8                                ; $665B: $01 $C8 $08
    ld   e, $0B                                   ; $665E: $1E $0B
    db   $F4                                      ; $6660: $F4
    call $CDCD                                    ; $6661: $CD $CD $CD
    call $C8C8                                    ; $6664: $CD $C8 $C8
    inc  b                                        ; $6667: $04
    nop                                           ; $6668: $00
    ld   b, $B4                                   ; $6669: $06 $B4
    inc  b                                        ; $666B: $04
    nop                                           ; $666C: $00
    inc  b                                        ; $666D: $04
    nop                                           ; $666E: $00
    xor  l                                        ; $666F: $AD
    ld   c, $0B                                   ; $6670: $0E $0B
    ld   h, [hl]                                  ; $6672: $66
    ld   l, l                                     ; $6673: $6D
    xor  l                                        ; $6674: $AD
    xor  [hl]                                     ; $6675: $AE
    xor  [hl]                                     ; $6676: $AE
    adc  [hl]                                     ; $6677: $8E
    adc  b                                        ; $6678: $88
    rrca                                          ; $6679: $0F
    ld   bc, $6B66                                ; $667A: $01 $66 $6B
    inc  b                                        ; $667D: $04
    nop                                           ; $667E: $00
    or   d                                        ; $667F: $B2
    or   d                                        ; $6680: $B2
    or   d                                        ; $6681: $B2
    or   d                                        ; $6682: $B2
    or   c                                        ; $6683: $B1
    or   c                                        ; $6684: $B1
    ld   [de], a                                  ; $6685: $12
    nop                                           ; $6686: $00
    ld   h, [hl]                                  ; $6687: $66
    adc  a                                        ; $6688: $8F
    or   c                                        ; $6689: $B1
    or   c                                        ; $668A: $B1
    ld   c, $01                                   ; $668B: $0E $01
    ld   h, [hl]                                  ; $668D: $66
    ld   a, l                                     ; $668E: $7D
    or   [hl]                                     ; $668F: $B6
    or   [hl]                                     ; $6690: $B6
    or   d                                        ; $6691: $B2
    or   d                                        ; $6692: $B2
    or   l                                        ; $6693: $B5
    or   l                                        ; $6694: $B5
    or   c                                        ; $6695: $B1
    or   c                                        ; $6696: $B1
    or   b                                        ; $6697: $B0
    or   b                                        ; $6698: $B0
    xor  a                                        ; $6699: $AF
    xor  a                                        ; $669A: $AF
    xor  b                                        ; $669B: $A8
    xor  b                                        ; $669C: $A8
    ld   d, $66                                   ; $669D: $16 $66
    ld   h, a                                     ; $669F: $67
    rla                                           ; $66A0: $17
    ld   b, $1E                                   ; $66A1: $06 $1E
    ld   [$A026], sp                              ; $66A3: $08 $26 $A0
    inc  b                                        ; $66A6: $04
    nop                                           ; $66A7: $00
    ldh  [$FF0E], a                               ; $66A8: $E0 $0E
    dec  b                                        ; $66AA: $05
    ld   h, [hl]                                  ; $66AB: $66
    and  [hl]                                     ; $66AC: $A6
    ret  nz                                       ; $66AD: $C0

    rlca                                          ; $66AE: $07
    dec  b                                        ; $66AF: $05
    nop                                           ; $66B0: $00
    ld   l, e                                     ; $66B1: $6B
    ld   l, e                                     ; $66B2: $6B
    rlca                                          ; $66B3: $07
    ld   b, $6B                                   ; $66B4: $06 $6B
    ld   l, e                                     ; $66B6: $6B
    rlca                                          ; $66B7: $07
    rlca                                          ; $66B8: $07
    ld   l, e                                     ; $66B9: $6B
    ld   l, e                                     ; $66BA: $6B
    rlca                                          ; $66BB: $07
    add  hl, bc                                   ; $66BC: $09
    ld   l, e                                     ; $66BD: $6B
    ld   l, e                                     ; $66BE: $6B
    rlca                                          ; $66BF: $07
    dec  bc                                       ; $66C0: $0B
    ld   l, e                                     ; $66C1: $6B
    ld   l, e                                     ; $66C2: $6B
    rlca                                          ; $66C3: $07
    rrca                                          ; $66C4: $0F
    ld   l, e                                     ; $66C5: $6B
    ld   l, e                                     ; $66C6: $6B
    inc  b                                        ; $66C7: $04
    nop                                           ; $66C8: $00
    rlca                                          ; $66C9: $07
    inc  c                                        ; $66CA: $0C
    inc  b                                        ; $66CB: $04
    nop                                           ; $66CC: $00
    adc  e                                        ; $66CD: $8B
    ld   l, e                                     ; $66CE: $6B
    ld   l, e                                     ; $66CF: $6B
    ld   l, e                                     ; $66D0: $6B
    ld   l, e                                     ; $66D1: $6B
    adc  e                                        ; $66D2: $8B
    nop                                           ; $66D3: $00
    ld   l, e                                     ; $66D4: $6B
    ld   l, e                                     ; $66D5: $6B
    ld   l, e                                     ; $66D6: $6B
    nop                                           ; $66D7: $00
    ld   l, e                                     ; $66D8: $6B
    ld   l, e                                     ; $66D9: $6B
    ld   l, e                                     ; $66DA: $6B
    ld   l, e                                     ; $66DB: $6B
    adc  e                                        ; $66DC: $8B
    ld   c, $02                                   ; $66DD: $0E $02
    ld   h, [hl]                                  ; $66DF: $66
    res  1, e                                     ; $66E0: $CB $8B
    ld   l, e                                     ; $66E2: $6B
    ld   l, e                                     ; $66E3: $6B
    ld   l, e                                     ; $66E4: $6B
    ld   l, e                                     ; $66E5: $6B
    adc  e                                        ; $66E6: $8B
    nop                                           ; $66E7: $00
    ld   l, e                                     ; $66E8: $6B
    ld   l, e                                     ; $66E9: $6B
    ld   l, e                                     ; $66EA: $6B
    ld   l, e                                     ; $66EB: $6B
    ld   l, e                                     ; $66EC: $6B
    ld   l, e                                     ; $66ED: $6B
    ld   l, e                                     ; $66EE: $6B
    ld   l, e                                     ; $66EF: $6B
    ld   l, e                                     ; $66F0: $6B
    rlca                                          ; $66F1: $07
    rrca                                          ; $66F2: $0F
    nop                                           ; $66F3: $00
    adc  d                                        ; $66F4: $8A
    adc  d                                        ; $66F5: $8A
    rlca                                          ; $66F6: $07
    inc  c                                        ; $66F7: $0C
    ld   l, e                                     ; $66F8: $6B
    ld   l, e                                     ; $66F9: $6B
    ld   l, e                                     ; $66FA: $6B
    ld   l, e                                     ; $66FB: $6B
    adc  e                                        ; $66FC: $8B
    nop                                           ; $66FD: $00
    ld   l, e                                     ; $66FE: $6B
    ld   l, e                                     ; $66FF: $6B
    ld   l, e                                     ; $6700: $6B
    nop                                           ; $6701: $00
    ld   l, e                                     ; $6702: $6B
    ld   l, e                                     ; $6703: $6B
    ld   l, e                                     ; $6704: $6B
    ld   l, e                                     ; $6705: $6B
    adc  e                                        ; $6706: $8B
    inc  b                                        ; $6707: $04
    nop                                           ; $6708: $00
    adc  e                                        ; $6709: $8B
    ld   l, e                                     ; $670A: $6B
    ld   l, e                                     ; $670B: $6B
    ld   l, e                                     ; $670C: $6B
    ld   l, e                                     ; $670D: $6B
    adc  e                                        ; $670E: $8B
    nop                                           ; $670F: $00
    ld   l, e                                     ; $6710: $6B
    ld   l, e                                     ; $6711: $6B
    ld   l, e                                     ; $6712: $6B
    nop                                           ; $6713: $00
    ld   l, e                                     ; $6714: $6B
    ld   l, e                                     ; $6715: $6B
    ld   l, e                                     ; $6716: $6B
    ld   l, e                                     ; $6717: $6B
    adc  e                                        ; $6718: $8B
    ld   c, $09                                   ; $6719: $0E $09
    ld   h, a                                     ; $671B: $67
    rlca                                          ; $671C: $07
    ld   d, $66                                   ; $671D: $16 $66
    rst  RST_00                                   ; $671F: $C7
    rla                                           ; $6720: $17
    nop                                           ; $6721: $00
    ld   h, a                                     ; $6722: $67
    ld   a, [hl+]                                 ; $6723: $2A
    ld   h, a                                     ; $6724: $67
    ld   e, h                                     ; $6725: $5C
    ld   h, a                                     ; $6726: $67
    ld   h, h                                     ; $6727: $64
    ld   h, a                                     ; $6728: $67
    adc  b                                        ; $6729: $88
    ld   a, [bc]                                  ; $672A: $0A
    dec  b                                        ; $672B: $05
    dec  b                                        ; $672C: $05
    ld   bc, $0733                                ; $672D: $01 $33 $07
    rrca                                          ; $6730: $0F
    inc  b                                        ; $6731: $04
    ld   [$DC06], sp                              ; $6732: $08 $06 $DC
    ld   [$0905], sp                              ; $6735: $08 $05 $09
    ld   bc, $8018                                ; $6738: $01 $18 $80
    sub  b                                        ; $673B: $90
    adc  l                                        ; $673C: $8D
    sub  b                                        ; $673D: $90
    sub  h                                        ; $673E: $94
    sub  d                                        ; $673F: $92
    sub  b                                        ; $6740: $90
    adc  a                                        ; $6741: $8F
    adc  l                                        ; $6742: $8D
    xor  e                                        ; $6743: $AB
    adc  b                                        ; $6744: $88
    adc  e                                        ; $6745: $8B
    xor  l                                        ; $6746: $AD
    adc  a                                        ; $6747: $8F
    sub  b                                        ; $6748: $90
    xor  l                                        ; $6749: $AD
    adc  a                                        ; $674A: $8F
    sub  b                                        ; $674B: $90
    xor  l                                        ; $674C: $AD
    xor  e                                        ; $674D: $AB
    dec  c                                        ; $674E: $0D
    ld   a, a                                     ; $674F: $7F
    call Call_000_0209                            ; $6750: $CD $09 $02
    call Call_000_000D                            ; $6753: $CD $0D $00
    add  hl, bc                                   ; $6756: $09
    ld   bc, $6716                                ; $6757: $01 $16 $67
    ld   sp, $0717                                ; $675A: $31 $17 $07
    inc  b                                        ; $675D: $04
    add  b                                        ; $675E: $80
    ld   b, b                                     ; $675F: $40
    ld   d, $67                                   ; $6760: $16 $67
    ld   sp, $0717                                ; $6762: $31 $17 $07
    inc  bc                                       ; $6765: $03
    ld   b, $FF                                   ; $6766: $06 $FF
    ld   [$0B1E], sp                              ; $6768: $08 $1E $0B
    inc  c                                        ; $676B: $0C
    inc  b                                        ; $676C: $04
    nop                                           ; $676D: $00
    adc  l                                        ; $676E: $8D
    sub  h                                        ; $676F: $94
    sbc  c                                        ; $6770: $99
    sbc  h                                        ; $6771: $9C
    or   l                                        ; $6772: $B5
    cp   c                                        ; $6773: $B9
    ld   [bc], a                                  ; $6774: $02
    or   h                                        ; $6775: $B4
    adc  a                                        ; $6776: $8F
    xor  l                                        ; $6777: $AD
    or   b                                        ; $6778: $B0
    ld   [bc], a                                  ; $6779: $02
    or   d                                        ; $677A: $B2
    sub  l                                        ; $677B: $95
    or   h                                        ; $677C: $B4
    xor  a                                        ; $677D: $AF
    adc  l                                        ; $677E: $8D
    sub  b                                        ; $677F: $90
    sub  d                                        ; $6780: $92
    sub  h                                        ; $6781: $94
    cp   c                                        ; $6782: $B9
    xor  l                                        ; $6783: $AD
    ld   d, $67                                   ; $6784: $16 $67
    ld   l, h                                     ; $6786: $6C
    rla                                           ; $6787: $17
    rlca                                          ; $6788: $07
    rrca                                          ; $6789: $0F
    ld   [$0625], sp                              ; $678A: $08 $25 $06
    ret  z                                        ; $678D: $C8

    inc  b                                        ; $678E: $04
    ld   b, b                                     ; $678F: $40
    add  hl, de                                   ; $6790: $19
    db   $10                                      ; $6791: $10
    ld   l, l                                     ; $6792: $6D
    ld   l, l                                     ; $6793: $6D
    ld   l, l                                     ; $6794: $6D
    ld   l, l                                     ; $6795: $6D
    add  hl, de                                   ; $6796: $19
    ld   de, $6D6D                                ; $6797: $11 $6D $6D
    ld   l, l                                     ; $679A: $6D
    ld   l, l                                     ; $679B: $6D
    add  hl, de                                   ; $679C: $19
    ld   bc, $6D6D                                ; $679D: $01 $6D $6D
    ld   l, l                                     ; $67A0: $6D
    ld   l, l                                     ; $67A1: $6D
    add  hl, de                                   ; $67A2: $19
    ld   de, $6D6D                                ; $67A3: $11 $6D $6D
    ld   l, l                                     ; $67A6: $6D
    ld   l, l                                     ; $67A7: $6D
    add  hl, de                                   ; $67A8: $19
    db   $10                                      ; $67A9: $10
    ld   l, l                                     ; $67AA: $6D
    ld   l, l                                     ; $67AB: $6D
    ld   l, l                                     ; $67AC: $6D
    ld   l, l                                     ; $67AD: $6D
    ld   l, l                                     ; $67AE: $6D
    ld   l, l                                     ; $67AF: $6D
    ld   l, l                                     ; $67B0: $6D
    ld   bc, $C06D                                ; $67B1: $01 $6D $C0
    ld   d, $67                                   ; $67B4: $16 $67
    adc  [hl]                                     ; $67B6: $8E
    rla                                           ; $67B7: $17
    nop                                           ; $67B8: $00
    ld   h, a                                     ; $67B9: $67
    pop  bc                                       ; $67BA: $C1
    ld   l, b                                     ; $67BB: $68
    jr   nc, jr_003_6826                          ; $67BC: $30 $68

    db   $D3                                      ; $67BE: $D3
    ld   l, c                                     ; $67BF: $69
    rla                                           ; $67C0: $17
    dec  b                                        ; $67C1: $05
    ld   bc, $0A33                                ; $67C2: $01 $33 $0A
    inc  bc                                       ; $67C5: $03
    inc  b                                        ; $67C6: $04
    ld   [$0018], sp                              ; $67C7: $08 $18 $00
    rlca                                          ; $67CA: $07
    inc  c                                        ; $67CB: $0C
    ld   [$0622], sp                              ; $67CC: $08 $22 $06
    ld   h, h                                     ; $67CF: $64
    ld   [hl], e                                  ; $67D0: $73
    ld   [hl], e                                  ; $67D1: $73
    ld   h, b                                     ; $67D2: $60
    ld   [hl], h                                  ; $67D3: $74
    ld   h, b                                     ; $67D4: $60
    ld   [hl], b                                  ; $67D5: $70
    ld   h, b                                     ; $67D6: $60
    ld   b, $01                                   ; $67D7: $06 $01
    ld   [$0123], sp                              ; $67D9: $08 $23 $01
    pop  de                                       ; $67DC: $D1
    ld   [hl], c                                  ; $67DD: $71
    ld   bc, $0871                                ; $67DE: $01 $71 $08
    ld   [hl+], a                                 ; $67E1: $22
    ld   [hl], c                                  ; $67E2: $71
    ld   [hl], b                                  ; $67E3: $70
    ld   [hl], c                                  ; $67E4: $71
    ld   [hl], d                                  ; $67E5: $72
    ld   l, a                                     ; $67E6: $6F
    ld   [hl], b                                  ; $67E7: $70
    ld   [$0623], sp                              ; $67E8: $08 $23 $06
    ret  z                                        ; $67EB: $C8

    ld   bc, $016A                                ; $67EC: $01 $6A $01
    xor  d                                        ; $67EF: $AA
    ld   h, b                                     ; $67F0: $60
    jr   @-$3E                                    ; $67F1: $18 $C0

    ld   [$6A22], sp                              ; $67F3: $08 $22 $6A
    ld   l, l                                     ; $67F6: $6D
    ld   [hl], h                                  ; $67F7: $74
    ld   bc, $0893                                ; $67F8: $01 $93 $08
    inc  hl                                       ; $67FB: $23
    ld   bc, $08B3                                ; $67FC: $01 $B3 $08
    ld   [hl+], a                                 ; $67FF: $22
    ld   l, d                                     ; $6800: $6A
    ld   l, l                                     ; $6801: $6D
    ld   [hl], h                                  ; $6802: $74
    ld   [hl], e                                  ; $6803: $73
    ld   l, l                                     ; $6804: $6D
    ld   [hl], c                                  ; $6805: $71
    ld   [hl], b                                  ; $6806: $70
    ld   l, a                                     ; $6807: $6F
    ld   l, b                                     ; $6808: $68
    ld   l, [hl]                                  ; $6809: $6E
    ld   bc, $08C6                                ; $680A: $01 $C6 $08
    inc  hl                                       ; $680D: $23
    ld   bc, $60A6                                ; $680E: $01 $A6 $60
    ld   [$6A22], sp                              ; $6811: $08 $22 $6A
    ld   l, l                                     ; $6814: $6D
    ld   [hl], e                                  ; $6815: $73
    ld   bc, $08B2                                ; $6816: $01 $B2 $08
    inc  hl                                       ; $6819: $23
    ld   bc, $08B2                                ; $681A: $01 $B2 $08
    ld   [hl+], a                                 ; $681D: $22
    ld   h, b                                     ; $681E: $60
    ld   l, d                                     ; $681F: $6A
    ld   l, l                                     ; $6820: $6D
    ld   [hl], h                                  ; $6821: $74
    ld   [hl], e                                  ; $6822: $73
    ld   l, d                                     ; $6823: $6A
    ld   l, l                                     ; $6824: $6D
    ld   [hl], e                                  ; $6825: $73

jr_003_6826:
    ld   bc, $08D2                                ; $6826: $01 $D2 $08
    inc  hl                                       ; $6829: $23
    ld   bc, $16D2                                ; $682A: $01 $D2 $16
    ld   h, a                                     ; $682D: $67
    add  $17                                      ; $682E: $C6 $17
    inc  b                                        ; $6830: $04
    ld   [$0009], sp                              ; $6831: $08 $09 $00
    rlca                                          ; $6834: $07
    inc  c                                        ; $6835: $0C
    ld   [$0622], sp                              ; $6836: $08 $22 $06
    ld   h, h                                     ; $6839: $64
    ld   l, l                                     ; $683A: $6D
    ld   l, l                                     ; $683B: $6D
    ld   h, b                                     ; $683C: $60
    ld   l, [hl]                                  ; $683D: $6E
    ld   h, b                                     ; $683E: $60
    ld   l, h                                     ; $683F: $6C
    ld   h, b                                     ; $6840: $60
    ld   b, $01                                   ; $6841: $06 $01
    ld   [$6D23], sp                              ; $6843: $08 $23 $6D
    ld   [$6022], sp                              ; $6846: $08 $22 $60
    add  hl, bc                                   ; $6849: $09
    ld   bc, $7071                                ; $684A: $01 $71 $70
    ld   [hl], c                                  ; $684D: $71
    ld   [hl], d                                  ; $684E: $72
    ld   l, a                                     ; $684F: $6F
    ld   [hl], b                                  ; $6850: $70
    ld   [$0123], sp                              ; $6851: $08 $23 $01
    ld   l, d                                     ; $6854: $6A
    ld   bc, $096A                                ; $6855: $01 $6A $09
    nop                                           ; $6858: $00
    ld   [$6D22], sp                              ; $6859: $08 $22 $6D
    ld   l, h                                     ; $685C: $6C
    ld   l, l                                     ; $685D: $6D
    ld   l, a                                     ; $685E: $6F
    ld   l, h                                     ; $685F: $6C
    ld   l, l                                     ; $6860: $6D
    ld   b, $C8                                   ; $6861: $06 $C8
    ld   [$0123], sp                              ; $6863: $08 $23 $01
    ld   h, l                                     ; $6866: $65
    ld   bc, $09C5                                ; $6867: $01 $C5 $09
    ld   bc, $1406                                ; $686A: $01 $06 $14
    ld   [$6122], sp                              ; $686D: $08 $22 $61
    ld   h, c                                     ; $6870: $61
    ld   h, b                                     ; $6871: $60
    ld   h, e                                     ; $6872: $63
    ld   h, b                                     ; $6873: $60
    inc  bc                                       ; $6874: $03
    ld   a, b                                     ; $6875: $78
    ld   h, b                                     ; $6876: $60
    ld   a, c                                     ; $6877: $79
    ld   h, b                                     ; $6878: $60
    ld   a, c                                     ; $6879: $79
    ld   h, b                                     ; $687A: $60
    ld   a, e                                     ; $687B: $7B
    ld   h, b                                     ; $687C: $60
    ld   a, l                                     ; $687D: $7D
    ld   h, b                                     ; $687E: $60
    ld   [hl], e                                  ; $687F: $73
    ld   b, $C8                                   ; $6880: $06 $C8
    ld   [$D923], sp                              ; $6882: $08 $23 $D9
    ld   b, $14                                   ; $6885: $06 $14
    ld   [$1922], sp                              ; $6887: $08 $22 $19
    ld   bc, $0300                                ; $688A: $01 $00 $03
    ld   [hl], c                                  ; $688D: $71
    ld   [hl], d                                  ; $688E: $72
    ld   l, a                                     ; $688F: $6F
    add  hl, de                                   ; $6890: $19
    ld   de, $6D00                                ; $6891: $11 $00 $6D
    ld   [hl], c                                  ; $6894: $71
    add  hl, de                                   ; $6895: $19
    db   $10                                      ; $6896: $10
    ld   l, h                                     ; $6897: $6C
    ld   [hl], b                                  ; $6898: $70
    add  hl, de                                   ; $6899: $19
    ld   de, $6E6A                                ; $689A: $11 $6A $6E
    ld   h, c                                     ; $689D: $61
    ld   h, c                                     ; $689E: $61
    ld   h, b                                     ; $689F: $60
    ld   h, e                                     ; $68A0: $63
    ld   h, b                                     ; $68A1: $60
    inc  bc                                       ; $68A2: $03
    ld   a, b                                     ; $68A3: $78
    ld   h, b                                     ; $68A4: $60
    ld   a, c                                     ; $68A5: $79
    ld   h, b                                     ; $68A6: $60
    ld   a, c                                     ; $68A7: $79
    ld   h, b                                     ; $68A8: $60
    ld   a, e                                     ; $68A9: $7B
    ld   h, b                                     ; $68AA: $60
    ld   a, l                                     ; $68AB: $7D
    ld   h, b                                     ; $68AC: $60
    ld   [hl], e                                  ; $68AD: $73
    ld   b, $C8                                   ; $68AE: $06 $C8
    ld   [$0323], sp                              ; $68B0: $08 $23 $03
    jp   z, Jump_000_2208                         ; $68B3: $CA $08 $22

    ld   d, c                                     ; $68B6: $51
    ld   d, d                                     ; $68B7: $52
    ld   d, c                                     ; $68B8: $51
    ld   d, d                                     ; $68B9: $52
    ld   d, c                                     ; $68BA: $51
    ld   d, d                                     ; $68BB: $52
    ld   d, c                                     ; $68BC: $51
    ld   d, d                                     ; $68BD: $52
    add  hl, de                                   ; $68BE: $19
    ld   bc, $5152                                ; $68BF: $01 $52 $51
    add  hl, de                                   ; $68C2: $19
    ld   de, $4F50                                ; $68C3: $11 $50 $4F
    ld   c, e                                     ; $68C6: $4B
    add  hl, de                                   ; $68C7: $19
    db   $10                                      ; $68C8: $10
    ld   c, d                                     ; $68C9: $4A
    ld   b, h                                     ; $68CA: $44
    inc  bc                                       ; $68CB: $03
    ld   d, a                                     ; $68CC: $57
    add  hl, de                                   ; $68CD: $19
    ld   de, $6816                                ; $68CE: $11 $16 $68
    jr   nc, jr_003_68EA                          ; $68D1: $30 $17

    rlca                                          ; $68D3: $07
    ld   [bc], a                                  ; $68D4: $02
    inc  b                                        ; $68D5: $04
    ld   [$F40B], sp                              ; $68D6: $08 $0B $F4
    ld   b, $82                                   ; $68D9: $06 $82
    ld   [$0422], sp                              ; $68DB: $08 $22 $04
    ld   [$6A6A], sp                              ; $68DE: $08 $6A $6A
    ld   h, b                                     ; $68E1: $60
    ld   l, d                                     ; $68E2: $6A
    ld   h, b                                     ; $68E3: $60
    ld   l, d                                     ; $68E4: $6A
    ld   h, b                                     ; $68E5: $60
    ld   l, d                                     ; $68E6: $6A
    ld   l, d                                     ; $68E7: $6A
    ld   l, d                                     ; $68E8: $6A
    ld   h, b                                     ; $68E9: $60

jr_003_68EA:
    ld   l, d                                     ; $68EA: $6A
    ld   h, b                                     ; $68EB: $60
    ld   l, d                                     ; $68EC: $6A
    ld   h, b                                     ; $68ED: $60
    ld   l, d                                     ; $68EE: $6A
    ld   c, $03                                   ; $68EF: $0E $03
    ld   l, b                                     ; $68F1: $68
    db   $DD                                      ; $68F2: $DD
    ld   l, d                                     ; $68F3: $6A
    ld   l, d                                     ; $68F4: $6A
    ld   h, b                                     ; $68F5: $60
    ld   l, d                                     ; $68F6: $6A
    ld   h, b                                     ; $68F7: $60
    ld   l, d                                     ; $68F8: $6A
    ld   h, b                                     ; $68F9: $60
    ld   l, d                                     ; $68FA: $6A
    ld   l, c                                     ; $68FB: $69
    ld   l, c                                     ; $68FC: $69
    ld   h, b                                     ; $68FD: $60
    ld   l, c                                     ; $68FE: $69
    ld   h, b                                     ; $68FF: $60
    ld   l, c                                     ; $6900: $69
    ld   h, b                                     ; $6901: $60
    ld   l, c                                     ; $6902: $69
    ld   h, a                                     ; $6903: $67
    ld   h, a                                     ; $6904: $67
    ld   h, b                                     ; $6905: $60
    ld   h, a                                     ; $6906: $67
    ld   h, b                                     ; $6907: $60
    ld   h, a                                     ; $6908: $67
    ld   h, b                                     ; $6909: $60
    ld   h, [hl]                                  ; $690A: $66
    ld   h, [hl]                                  ; $690B: $66
    ld   h, [hl]                                  ; $690C: $66
    ld   h, [hl]                                  ; $690D: $66
    ld   h, [hl]                                  ; $690E: $66
    ld   h, [hl]                                  ; $690F: $66
    ld   h, e                                     ; $6910: $63
    ld   h, b                                     ; $6911: $60
    ld   h, l                                     ; $6912: $65
    ld   d, $68                                   ; $6913: $16 $68
    push de                                       ; $6915: $D5
    rla                                           ; $6916: $17
    rla                                           ; $6917: $17
    nop                                           ; $6918: $00
    ld   l, c                                     ; $6919: $69
    ld   hl, $5669                                ; $691A: $21 $69 $56
    ld   l, c                                     ; $691D: $69
    ld   e, [hl]                                  ; $691E: $5E
    ld   l, c                                     ; $691F: $69
    add  h                                        ; $6920: $84
    dec  b                                        ; $6921: $05
    ld   bc, $07C7                                ; $6922: $01 $C7 $07
    rrca                                          ; $6925: $0F
    inc  b                                        ; $6926: $04
    jr   nz, jr_003_692F                          ; $6927: $20 $06

    ld   h, h                                     ; $6929: $64
    ld   [$0922], sp                              ; $692A: $08 $22 $09
    ld   [bc], a                                  ; $692D: $02
    add  b                                        ; $692E: $80

jr_003_692F:
    sub  h                                        ; $692F: $94
    sbc  c                                        ; $6930: $99
    sbc  l                                        ; $6931: $9D
    inc  bc                                       ; $6932: $03
    adc  b                                        ; $6933: $88
    adc  l                                        ; $6934: $8D
    ld   l, h                                     ; $6935: $6C
    ld   l, l                                     ; $6936: $6D
    adc  h                                        ; $6937: $8C
    ld   l, d                                     ; $6938: $6A
    ld   l, h                                     ; $6939: $6C
    xor  l                                        ; $693A: $AD
    adc  b                                        ; $693B: $88
    ld   l, h                                     ; $693C: $6C
    ld   l, l                                     ; $693D: $6D
    adc  h                                        ; $693E: $8C
    ld   l, d                                     ; $693F: $6A
    ld   l, h                                     ; $6940: $6C
    adc  l                                        ; $6941: $8D
    adc  a                                        ; $6942: $8F
    sub  c                                        ; $6943: $91
    adc  d                                        ; $6944: $8A
    sub  d                                        ; $6945: $92
    adc  a                                        ; $6946: $8F

Jump_003_6947:
    add  [hl]                                     ; $6947: $86
    adc  a                                        ; $6948: $8F
    adc  h                                        ; $6949: $8C
    nop                                           ; $694A: $00
    adc  l                                        ; $694B: $8D
    nop                                           ; $694C: $00
    ld   l, l                                     ; $694D: $6D
    ld   [hl], c                                  ; $694E: $71
    ld   [hl], h                                  ; $694F: $74
    add  hl, bc                                   ; $6950: $09
    inc  bc                                       ; $6951: $03
    ld   [bc], a                                  ; $6952: $02
    nop                                           ; $6953: $00
    call $0717                                    ; $6954: $CD $17 $07
    ld   b, $02                                   ; $6957: $06 $02
    add  b                                        ; $6959: $80
    ld   d, $69                                   ; $695A: $16 $69
    ld   h, $17                                   ; $695C: $26 $17
    ld   b, $E6                                   ; $695E: $06 $E6
    ld   [$071E], sp                              ; $6960: $08 $1E $07
    inc  bc                                       ; $6963: $03
    add  hl, bc                                   ; $6964: $09
    ld   bc, $8D00                                ; $6965: $01 $00 $8D
    sub  c                                        ; $6968: $91
    sub  h                                        ; $6969: $94
    sbc  c                                        ; $696A: $99
    sbc  l                                        ; $696B: $9D
    inc  bc                                       ; $696C: $03
    adc  b                                        ; $696D: $88
    add  [hl]                                     ; $696E: $86
    add  e                                        ; $696F: $83
    adc  b                                        ; $6970: $88
    add  l                                        ; $6971: $85
    add  c                                        ; $6972: $81
    add  l                                        ; $6973: $85
    add  [hl]                                     ; $6974: $86
    add  e                                        ; $6975: $83
    adc  b                                        ; $6976: $88
    xor  d                                        ; $6977: $AA
    adc  b                                        ; $6978: $88
    add  [hl]                                     ; $6979: $86
    add  e                                        ; $697A: $83
    add  [hl]                                     ; $697B: $86
    xor  b                                        ; $697C: $A8
    inc  bc                                       ; $697D: $03
    sub  h                                        ; $697E: $94
    nop                                           ; $697F: $00
    cp   c                                        ; $6980: $B9
    ld   [bc], a                                  ; $6981: $02
    call $1717                                    ; $6982: $CD $17 $17
    nop                                           ; $6985: $00
    ld   l, c                                     ; $6986: $69
    adc  [hl]                                     ; $6987: $8E
    ld   l, d                                     ; $6988: $6A
    rrca                                          ; $6989: $0F
    ld   l, d                                     ; $698A: $6A
    and  l                                        ; $698B: $A5
    ld   l, e                                     ; $698C: $6B
    add  hl, sp                                   ; $698D: $39
    ld   a, [bc]                                  ; $698E: $0A
    inc  bc                                       ; $698F: $03
    dec  b                                        ; $6990: $05
    nop                                           ; $6991: $00
    call z, $C806                                 ; $6992: $CC $06 $C8
    rlca                                          ; $6995: $07
    dec  bc                                       ; $6996: $0B
    ld   [$0922], sp                              ; $6997: $08 $22 $09
    ld   [bc], a                                  ; $699A: $02
    jr   @-$3E                                    ; $699B: $18 $C0

    inc  b                                        ; $699D: $04
    nop                                           ; $699E: $00
    ld   [bc], a                                  ; $699F: $02
    sub  e                                        ; $69A0: $93
    ld   [hl], h                                  ; $69A1: $74
    or   h                                        ; $69A2: $B4
    ld   [bc], a                                  ; $69A3: $02
    sbc  a                                        ; $69A4: $9F
    inc  bc                                       ; $69A5: $03
    ld   l, b                                     ; $69A6: $68
    xor  b                                        ; $69A7: $A8
    add  b                                        ; $69A8: $80
    and  c                                        ; $69A9: $A1
    inc  bc                                       ; $69AA: $03
    sbc  b                                        ; $69AB: $98
    or   a                                        ; $69AC: $B7
    sub  l                                        ; $69AD: $95
    sub  h                                        ; $69AE: $94
    push af                                       ; $69AF: $F5
    ld   a, a                                     ; $69B0: $7F
    inc  bc                                       ; $69B1: $03
    adc  b                                        ; $69B2: $88
    ld   h, a                                     ; $69B3: $67
    adc  b                                        ; $69B4: $88
    inc  bc                                       ; $69B5: $03
    sub  h                                        ; $69B6: $94
    ret  nz                                       ; $69B7: $C0

    ld   a, a                                     ; $69B8: $7F
    inc  bc                                       ; $69B9: $03
    adc  b                                        ; $69BA: $88
    ld   h, a                                     ; $69BB: $67
    adc  b                                        ; $69BC: $88
    inc  bc                                       ; $69BD: $03
    sub  h                                        ; $69BE: $94
    ret  nz                                       ; $69BF: $C0

    inc  bc                                       ; $69C0: $03
    ld   l, b                                     ; $69C1: $68
    ld   l, b                                     ; $69C2: $68
    adc  b                                        ; $69C3: $88
    add  b                                        ; $69C4: $80
    inc  bc                                       ; $69C5: $03
    sub  e                                        ; $69C6: $93
    ld   [hl], h                                  ; $69C7: $74
    ld   [hl], h                                  ; $69C8: $74
    sub  h                                        ; $69C9: $94
    add  b                                        ; $69CA: $80
    sbc  a                                        ; $69CB: $9F
    inc  bc                                       ; $69CC: $03
    ld   l, b                                     ; $69CD: $68
    ld   l, b                                     ; $69CE: $68
    adc  b                                        ; $69CF: $88
    add  b                                        ; $69D0: $80
    add  a                                        ; $69D1: $87
    ld   l, b                                     ; $69D2: $68
    inc  bc                                       ; $69D3: $03
    ld   [hl], h                                  ; $69D4: $74
    ld   [hl], e                                  ; $69D5: $73
    ld   [hl], h                                  ; $69D6: $74

jr_003_69D7:
    ld   [hl], l                                  ; $69D7: $75
    halt                                          ; $69D8: $76
    ld   [hl], a                                  ; $69D9: $77
    ld   a, b                                     ; $69DA: $78
    ld   d, $69                                   ; $69DB: $16 $69
    sbc  l                                        ; $69DD: $9D
    inc  b                                        ; $69DE: $04
    nop                                           ; $69DF: $00
    ld   a, c                                     ; $69E0: $79
    ld   [hl], h                                  ; $69E1: $74
    ld   a, e                                     ; $69E2: $7B
    ld   a, h                                     ; $69E3: $7C
    ld   a, e                                     ; $69E4: $7B
    ld   [hl], h                                  ; $69E5: $74
    inc  bc                                       ; $69E6: $03
    ld   l, b                                     ; $69E7: $68
    ld   h, [hl]                                  ; $69E8: $66
    ld   h, h                                     ; $69E9: $64
    ld   h, [hl]                                  ; $69EA: $66
    ld   l, b                                     ; $69EB: $68
    ld   h, h                                     ; $69EC: $64
    ld   h, c                                     ; $69ED: $61
    ld   h, e                                     ; $69EE: $63
    ld   h, h                                     ; $69EF: $64
    ld   h, c                                     ; $69F0: $61
    ld   [de], a                                  ; $69F1: $12
    nop                                           ; $69F2: $00
    ld   l, d                                     ; $69F3: $6A
    inc  b                                        ; $69F4: $04
    and  e                                        ; $69F5: $A3
    and  a                                        ; $69F6: $A7
    ld   l, b                                     ; $69F7: $68
    inc  bc                                       ; $69F8: $03
    ld   [hl], h                                  ; $69F9: $74
    ld   [hl], e                                  ; $69FA: $73
    ld   [hl], h                                  ; $69FB: $74
    ld   [hl], l                                  ; $69FC: $75
    halt                                          ; $69FD: $76
    ld   [hl], a                                  ; $69FE: $77
    ld   a, b                                     ; $69FF: $78
    ld   c, $01                                   ; $6A00: $0E $01
    ld   l, c                                     ; $6A02: $69
    sbc  $7A                                      ; $6A03: $DE $7A
    ld   a, h                                     ; $6A05: $7C
    ld   a, [hl]                                  ; $6A06: $7E
    ld   a, d                                     ; $6A07: $7A
    cp   h                                        ; $6A08: $BC
    ld   a, h                                     ; $6A09: $7C
    ld   a, c                                     ; $6A0A: $79
    ld   a, e                                     ; $6A0B: $7B
    ld   a, b                                     ; $6A0C: $78
    cp   c                                        ; $6A0D: $B9
    rla                                           ; $6A0E: $17
    ld   b, $C8                                   ; $6A0F: $06 $C8
    ld   [$0910], sp                              ; $6A11: $08 $10 $09
    ld   [bc], a                                  ; $6A14: $02
    jr   jr_003_69D7                              ; $6A15: $18 $C0

    inc  b                                        ; $6A17: $04
    nop                                           ; $6A18: $00
    rlca                                          ; $6A19: $07
    inc  b                                        ; $6A1A: $04
    ld   h, b                                     ; $6A1B: $60
    ld   [bc], a                                  ; $6A1C: $02
    sub  e                                        ; $6A1D: $93
    ld   [hl], h                                  ; $6A1E: $74
    or   h                                        ; $6A1F: $B4
    ld   [bc], a                                  ; $6A20: $02
    sbc  a                                        ; $6A21: $9F
    inc  bc                                       ; $6A22: $03
    ld   l, b                                     ; $6A23: $68
    xor  b                                        ; $6A24: $A8
    add  b                                        ; $6A25: $80
    and  c                                        ; $6A26: $A1
    inc  bc                                       ; $6A27: $03
    sbc  b                                        ; $6A28: $98
    or   a                                        ; $6A29: $B7
    sub  l                                        ; $6A2A: $95
    sub  h                                        ; $6A2B: $94
    ld   bc, $02B5                                ; $6A2C: $01 $B5 $02
    ld   bc, $0795                                ; $6A2F: $01 $95 $07
    dec  bc                                       ; $6A32: $0B
    ld   d, d                                     ; $6A33: $52
    ld   d, h                                     ; $6A34: $54
    ld   d, l                                     ; $6A35: $55
    ld   d, a                                     ; $6A36: $57
    ld   e, c                                     ; $6A37: $59
    ld   e, e                                     ; $6A38: $5B
    ld   e, h                                     ; $6A39: $5C
    ld   e, [hl]                                  ; $6A3A: $5E
    ld   e, e                                     ; $6A3B: $5B
    ld   e, h                                     ; $6A3C: $5C
    ld   e, [hl]                                  ; $6A3D: $5E
    inc  bc                                       ; $6A3E: $03
    ld   c, b                                     ; $6A3F: $48
    ld   c, c                                     ; $6A40: $49
    ld   c, e                                     ; $6A41: $4B
    ld   c, l                                     ; $6A42: $4D
    ld   c, a                                     ; $6A43: $4F
    ld   h, c                                     ; $6A44: $61
    inc  bc                                       ; $6A45: $03
    sbc  b                                        ; $6A46: $98
    ld   a, c                                     ; $6A47: $79
    sbc  b                                        ; $6A48: $98
    adc  h                                        ; $6A49: $8C
    ret  nz                                       ; $6A4A: $C0

    ld   a, e                                     ; $6A4B: $7B
    sbc  h                                        ; $6A4C: $9C
    ld   a, e                                     ; $6A4D: $7B
    sbc  h                                        ; $6A4E: $9C
    adc  l                                        ; $6A4F: $8D
    ret  nz                                       ; $6A50: $C0

    ld   a, b                                     ; $6A51: $78
    ld   a, b                                     ; $6A52: $78
    ld   a, b                                     ; $6A53: $78
    ld   a, e                                     ; $6A54: $7B
    ld   a, c                                     ; $6A55: $79
    ld   a, e                                     ; $6A56: $7B
    ld   a, h                                     ; $6A57: $7C
    ld   a, c                                     ; $6A58: $79
    ld   a, b                                     ; $6A59: $78
    ld   a, b                                     ; $6A5A: $78
    ld   a, b                                     ; $6A5B: $78
    ld   a, e                                     ; $6A5C: $7B
    ld   a, c                                     ; $6A5D: $79
    ld   a, e                                     ; $6A5E: $7B
    ld   a, h                                     ; $6A5F: $7C
    ld   a, c                                     ; $6A60: $79
    ld   a, b                                     ; $6A61: $78
    ld   a, b                                     ; $6A62: $78
    ld   a, b                                     ; $6A63: $78
    ld   a, e                                     ; $6A64: $7B
    ld   a, c                                     ; $6A65: $79
    ld   a, e                                     ; $6A66: $7B
    ld   a, h                                     ; $6A67: $7C
    ld   a, c                                     ; $6A68: $79
    ld   a, b                                     ; $6A69: $78
    ld   a, b                                     ; $6A6A: $78
    ld   [hl], a                                  ; $6A6B: $77
    ld   a, b                                     ; $6A6C: $78
    ld   a, c                                     ; $6A6D: $79
    ld   a, d                                     ; $6A6E: $7A
    ld   a, e                                     ; $6A6F: $7B
    ld   a, h                                     ; $6A70: $7C
    ld   d, $6A                                   ; $6A71: $16 $6A
    rla                                           ; $6A73: $17
    inc  b                                        ; $6A74: $04
    nop                                           ; $6A75: $00
    sbc  h                                        ; $6A76: $9C
    inc  bc                                       ; $6A77: $03
    adc  b                                        ; $6A78: $88
    adc  b                                        ; $6A79: $88
    adc  a                                        ; $6A7A: $8F
    adc  a                                        ; $6A7B: $8F
    adc  l                                        ; $6A7C: $8D
    adc  l                                        ; $6A7D: $8D
    adc  b                                        ; $6A7E: $88
    ld   [de], a                                  ; $6A7F: $12
    ld   [$986A], sp                              ; $6A80: $08 $6A $98
    ld   h, [hl]                                  ; $6A83: $66
    ld   l, b                                     ; $6A84: $68
    ld   l, c                                     ; $6A85: $69
    ld   h, [hl]                                  ; $6A86: $66
    ld   l, l                                     ; $6A87: $6D
    ld   l, a                                     ; $6A88: $6F
    ld   [hl], b                                  ; $6A89: $70
    ld   l, l                                     ; $6A8A: $6D
    ld   l, h                                     ; $6A8B: $6C
    inc  bc                                       ; $6A8C: $03
    ld   a, b                                     ; $6A8D: $78
    ld   [hl], a                                  ; $6A8E: $77
    ld   a, b                                     ; $6A8F: $78
    ld   a, c                                     ; $6A90: $79
    ld   a, d                                     ; $6A91: $7A
    ld   a, e                                     ; $6A92: $7B
    ld   a, [hl]                                  ; $6A93: $7E
    ld   c, $01                                   ; $6A94: $0E $01
    ld   l, d                                     ; $6A96: $6A
    ld   [hl], h                                  ; $6A97: $74
    xor  c                                        ; $6A98: $A9
    ld   l, b                                     ; $6A99: $68
    ld   l, d                                     ; $6A9A: $6A
    ld   l, h                                     ; $6A9B: $6C
    ld   l, l                                     ; $6A9C: $6D
    ld   l, l                                     ; $6A9D: $6D
    ld   l, d                                     ; $6A9E: $6A
    ld   l, h                                     ; $6A9F: $6C
    ld   h, [hl]                                  ; $6AA0: $66
    ld   h, [hl]                                  ; $6AA1: $66
    ld   h, e                                     ; $6AA2: $63
    add  h                                        ; $6AA3: $84
    rla                                           ; $6AA4: $17
    rlca                                          ; $6AA5: $07
    ld   [bc], a                                  ; $6AA6: $02
    ld   b, $C8                                   ; $6AA7: $06 $C8
    ld   [$0901], sp                              ; $6AA9: $08 $01 $09
    ld   bc, $0004                                ; $6AAC: $01 $04 $00
    sbc  c                                        ; $6AAF: $99
    sub  h                                        ; $6AB0: $94
    sbc  h                                        ; $6AB1: $9C
    sbc  e                                        ; $6AB2: $9B
    sbc  c                                        ; $6AB3: $99
    sub  h                                        ; $6AB4: $94
    sbc  h                                        ; $6AB5: $9C
    sbc  e                                        ; $6AB6: $9B
    sbc  c                                        ; $6AB7: $99
    sbc  e                                        ; $6AB8: $9B
    sbc  h                                        ; $6AB9: $9C
    sbc  [hl]                                     ; $6ABA: $9E
    inc  bc                                       ; $6ABB: $03
    adc  b                                        ; $6ABC: $88
    add  c                                        ; $6ABD: $81
    adc  l                                        ; $6ABE: $8D
    adc  e                                        ; $6ABF: $8B
    inc  bc                                       ; $6AC0: $03
    sub  d                                        ; $6AC1: $92
    adc  l                                        ; $6AC2: $8D
    adc  a                                        ; $6AC3: $8F
    sub  b                                        ; $6AC4: $90
    sub  d                                        ; $6AC5: $92
    sub  h                                        ; $6AC6: $94
    sub  l                                        ; $6AC7: $95
    sbc  c                                        ; $6AC8: $99
    ld   l, b                                     ; $6AC9: $68
    ld   [hl], h                                  ; $6ACA: $74
    ld   [hl], h                                  ; $6ACB: $74
    ld   l, b                                     ; $6ACC: $68
    ld   [hl], h                                  ; $6ACD: $74
    ld   [hl], h                                  ; $6ACE: $74
    ld   l, b                                     ; $6ACF: $68
    ld   [hl], h                                  ; $6AD0: $74
    ld   l, b                                     ; $6AD1: $68
    ld   [hl], h                                  ; $6AD2: $74
    ld   [hl], e                                  ; $6AD3: $73
    ld   [hl], d                                  ; $6AD4: $72
    ld   [hl], c                                  ; $6AD5: $71
    ld   [hl], b                                  ; $6AD6: $70
    ld   l, a                                     ; $6AD7: $6F
    ld   l, [hl]                                  ; $6AD8: $6E
    ld   l, l                                     ; $6AD9: $6D
    ld   a, c                                     ; $6ADA: $79
    ld   a, c                                     ; $6ADB: $79
    ld   l, l                                     ; $6ADC: $6D
    ld   a, c                                     ; $6ADD: $79
    ld   a, c                                     ; $6ADE: $79
    ld   l, l                                     ; $6ADF: $6D
    ld   a, c                                     ; $6AE0: $79
    ld   l, l                                     ; $6AE1: $6D
    ld   a, c                                     ; $6AE2: $79
    ld   a, b                                     ; $6AE3: $78
    ld   [hl], a                                  ; $6AE4: $77
    halt                                          ; $6AE5: $76
    ld   [hl], l                                  ; $6AE6: $75
    ld   [hl], h                                  ; $6AE7: $74
    ld   [hl], e                                  ; $6AE8: $73
    ld   [hl], h                                  ; $6AE9: $74
    ld   [hl], h                                  ; $6AEA: $74
    ld   [hl], h                                  ; $6AEB: $74
    ld   a, b                                     ; $6AEC: $78
    halt                                          ; $6AED: $76
    ld   a, b                                     ; $6AEE: $78
    ld   a, c                                     ; $6AEF: $79
    halt                                          ; $6AF0: $76
    ld   [hl], h                                  ; $6AF1: $74
    ld   [hl], h                                  ; $6AF2: $74
    ld   [hl], h                                  ; $6AF3: $74
    ld   a, b                                     ; $6AF4: $78
    halt                                          ; $6AF5: $76
    ld   a, b                                     ; $6AF6: $78
    ld   a, c                                     ; $6AF7: $79
    halt                                          ; $6AF8: $76
    ld   [hl], h                                  ; $6AF9: $74
    ld   [hl], h                                  ; $6AFA: $74
    ld   [hl], h                                  ; $6AFB: $74
    ld   a, b                                     ; $6AFC: $78
    halt                                          ; $6AFD: $76
    ld   a, b                                     ; $6AFE: $78
    ld   a, c                                     ; $6AFF: $79
    halt                                          ; $6B00: $76
    sub  h                                        ; $6B01: $94
    sub  d                                        ; $6B02: $92
    sub  b                                        ; $6B03: $90
    adc  a                                        ; $6B04: $8F
    ld   d, $6A                                   ; $6B05: $16 $6A
    xor  l                                        ; $6B07: $AD
    inc  b                                        ; $6B08: $04
    nop                                           ; $6B09: $00
    ld   a, c                                     ; $6B0A: $79
    sbc  c                                        ; $6B0B: $99
    ld   a, c                                     ; $6B0C: $79
    ld   a, b                                     ; $6B0D: $78
    sbc  b                                        ; $6B0E: $98
    ld   a, b                                     ; $6B0F: $78
    ld   [hl], a                                  ; $6B10: $77
    sub  a                                        ; $6B11: $97
    ld   [hl], a                                  ; $6B12: $77
    halt                                          ; $6B13: $76
    sub  [hl]                                     ; $6B14: $96
    halt                                          ; $6B15: $76
    ld   [de], a                                  ; $6B16: $12
    nop                                           ; $6B17: $00
    ld   l, e                                     ; $6B18: $6B
    inc  l                                        ; $6B19: $2C
    ld   [hl], l                                  ; $6B1A: $75
    sub  l                                        ; $6B1B: $95
    ld   [hl], l                                  ; $6B1C: $75
    ld   [hl], l                                  ; $6B1D: $75
    sub  l                                        ; $6B1E: $95
    ld   [hl], l                                  ; $6B1F: $75
    ld   [hl], h                                  ; $6B20: $74
    ld   [hl], h                                  ; $6B21: $74
    ld   [hl], e                                  ; $6B22: $73
    ld   [hl], d                                  ; $6B23: $72
    ld   [hl], c                                  ; $6B24: $71
    ld   [hl], b                                  ; $6B25: $70
    ld   l, a                                     ; $6B26: $6F
    ld   l, [hl]                                  ; $6B27: $6E
    ld   c, $01                                   ; $6B28: $0E $01
    ld   l, e                                     ; $6B2A: $6B
    ld   [$9272], sp                              ; $6B2B: $08 $72 $92
    ld   [hl], d                                  ; $6B2E: $72
    ld   [hl], h                                  ; $6B2F: $74
    sub  h                                        ; $6B30: $94
    ld   [hl], h                                  ; $6B31: $74
    ld   l, b                                     ; $6B32: $68
    adc  b                                        ; $6B33: $88
    ld   l, b                                     ; $6B34: $68
    ld   l, l                                     ; $6B35: $6D
    adc  l                                        ; $6B36: $8D
    ld   l, l                                     ; $6B37: $6D
    rla                                           ; $6B38: $17
    rla                                           ; $6B39: $17
    inc  bc                                       ; $6B3A: $03
    rst  RST_38                                   ; $6B3B: $FF
    ld   [bc], a                                  ; $6B3C: $02
    ld   a, [bc]                                  ; $6B3D: $0A
    ld   [bc], a                                  ; $6B3E: $02
    ld   a, [bc]                                  ; $6B3F: $0A
    rra                                           ; $6B40: $1F
    ld   [hl+], a                                 ; $6B41: $22
    nop                                           ; $6B42: $00
    rrca                                          ; $6B43: $0F
    add  $FE                                      ; $6B44: $C6 $FE
    ld   de, $1E0D                                ; $6B46: $11 $0D $1E
    rrca                                          ; $6B49: $0F
    add  c                                        ; $6B4A: $81
    daa                                           ; $6B4B: $27
    rst  RST_38                                   ; $6B4C: $FF
    inc  bc                                       ; $6B4D: $03
    ld   bc, $3B6B                                ; $6B4E: $01 $6B $3B
    ld   [bc], a                                  ; $6B51: $02
    inc  de                                       ; $6B52: $13
    ld   a, [bc]                                  ; $6B53: $0A
    ld   [$1681], sp                              ; $6B54: $08 $81 $16
    add  hl, bc                                   ; $6B57: $09
    db   $10                                      ; $6B58: $10
    adc  h                                        ; $6B59: $8C
    ld   l, $00                                   ; $6B5A: $2E $00
    inc  bc                                       ; $6B5C: $03
    rst  RST_38                                   ; $6B5D: $FF
    ld   [bc], a                                  ; $6B5E: $02
    dec  bc                                       ; $6B5F: $0B
    inc  bc                                       ; $6B60: $03
    ld   a, [bc]                                  ; $6B61: $0A
    rrca                                          ; $6B62: $0F
    ld   [hl+], a                                 ; $6B63: $22
    nop                                           ; $6B64: $00
    rrca                                          ; $6B65: $0F
    ld   e, d                                     ; $6B66: $5A
    dec  h                                        ; $6B67: $25
    dec  b                                        ; $6B68: $05
    ld   hl, $0B0F                                ; $6B69: $21 $0F $0B
    rst  RST_38                                   ; $6B6C: $FF
    inc  bc                                       ; $6B6D: $03
    ld   bc, $5D6B                                ; $6B6E: $01 $6B $5D
    dec  bc                                       ; $6B71: $0B
    inc  bc                                       ; $6B72: $03
    ld   [bc], a                                  ; $6B73: $02
    nop                                           ; $6B74: $00
    dec  l                                        ; $6B75: $2D
    nop                                           ; $6B76: $00
    inc  bc                                       ; $6B77: $03
    rst  RST_38                                   ; $6B78: $FF
    ld   [bc], a                                  ; $6B79: $02
    ld   hl, $021C                                ; $6B7A: $21 $1C $02
    rrca                                          ; $6B7D: $0F
    inc  h                                        ; $6B7E: $24
    ret  nz                                       ; $6B7F: $C0

    rrca                                          ; $6B80: $0F
    ld   a, a                                     ; $6B81: $7F
    dec  l                                        ; $6B82: $2D
    nop                                           ; $6B83: $00
    inc  b                                        ; $6B84: $04
    rst  RST_38                                   ; $6B85: $FF
    ld   [bc], a                                  ; $6B86: $02
    jr   nz, jr_003_6B9B                          ; $6B87: $20 $12

    ld   a, [bc]                                  ; $6B89: $0A
    rrca                                          ; $6B8A: $0F
    ld   [hl+], a                                 ; $6B8B: $22
    nop                                           ; $6B8C: $00
    inc  c                                        ; $6B8D: $0C
    ld   e, d                                     ; $6B8E: $5A
    inc  d                                        ; $6B8F: $14
    dec  c                                        ; $6B90: $0D
    ld   e, $0F                                   ; $6B91: $1E $0F
    ld   [hl-], a                                 ; $6B93: $32
    ld   a, [bc]                                  ; $6B94: $0A
    nop                                           ; $6B95: $00
    ld   bc, $02F0                                ; $6B96: $01 $F0 $02
    ld   [bc], a                                  ; $6B99: $02
    ld   [bc], a                                  ; $6B9A: $02

jr_003_6B9B:
    ld   [bc], a                                  ; $6B9B: $02
    rra                                           ; $6B9C: $1F
    ld   [hl+], a                                 ; $6B9D: $22
    nop                                           ; $6B9E: $00
    rrca                                          ; $6B9F: $0F
    add  $FE                                      ; $6BA0: $C6 $FE
    inc  [hl]                                     ; $6BA2: $34
    ldh  a, [$FF03]                               ; $6BA3: $F0 $03
    ld   bc, $976B                                ; $6BA5: $01 $6B $97
    ld   bc, $0A0A                                ; $6BA8: $01 $0A $0A
    ld   [$4A8C], sp                              ; $6BAB: $08 $8C $4A
    dec  d                                        ; $6BAE: $15
    db   $10                                      ; $6BAF: $10
    rrca                                          ; $6BB0: $0F
    rst  RST_38                                   ; $6BB1: $FF
    rrca                                          ; $6BB2: $0F
    nop                                           ; $6BB3: $00
    ld   bc, $020F                                ; $6BB4: $01 $0F $02
    ld   [bc], a                                  ; $6BB7: $02
    ld   [bc], a                                  ; $6BB8: $02
    ld   [bc], a                                  ; $6BB9: $02
    rra                                           ; $6BBA: $1F
    ld   [hl+], a                                 ; $6BBB: $22
    nop                                           ; $6BBC: $00
    rrca                                          ; $6BBD: $0F
    add  $FE                                      ; $6BBE: $C6 $FE
    inc  [hl]                                     ; $6BC0: $34
    rrca                                          ; $6BC1: $0F
    inc  bc                                       ; $6BC2: $03
    ld   bc, $B56B                                ; $6BC3: $01 $6B $B5
    inc  bc                                       ; $6BC6: $03
    ld   a, [bc]                                  ; $6BC7: $0A
    ld   a, [bc]                                  ; $6BC8: $0A
    ld   [$4A8C], sp                              ; $6BC9: $08 $8C $4A
    dec  d                                        ; $6BCC: $15
    db   $10                                      ; $6BCD: $10
    rrca                                          ; $6BCE: $0F
    rst  RST_38                                   ; $6BCF: $FF
    rrca                                          ; $6BD0: $0F
    nop                                           ; $6BD1: $00
    ld   [bc], a                                  ; $6BD2: $02
    ldh  a, [rSC]                                 ; $6BD3: $F0 $02
    ld   c, $13                                   ; $6BD5: $0E $13
    ld   a, [bc]                                  ; $6BD7: $0A
    rrca                                          ; $6BD8: $0F
    ld   [hl+], a                                 ; $6BD9: $22
    nop                                           ; $6BDA: $00
    rrca                                          ; $6BDB: $0F
    add  hl, sp                                   ; $6BDC: $39
    ld   d, $05                                   ; $6BDD: $16 $05
    inc  e                                        ; $6BDF: $1C
    rrca                                          ; $6BE0: $0F
    ld   a, [bc]                                  ; $6BE1: $0A
    nop                                           ; $6BE2: $00
    ld   [bc], a                                  ; $6BE3: $02
    rrca                                          ; $6BE4: $0F
    ld   [bc], a                                  ; $6BE5: $02
    ld   c, $13                                   ; $6BE6: $0E $13
    ld   a, [bc]                                  ; $6BE8: $0A
    rrca                                          ; $6BE9: $0F
    ld   [hl+], a                                 ; $6BEA: $22
    nop                                           ; $6BEB: $00
    rrca                                          ; $6BEC: $0F
    add  hl, sp                                   ; $6BED: $39
    ld   d, $05                                   ; $6BEE: $16 $05
    inc  e                                        ; $6BF0: $1C
    rrca                                          ; $6BF1: $0F
    ld   a, [bc]                                  ; $6BF2: $0A
    nop                                           ; $6BF3: $00
    inc  b                                        ; $6BF4: $04
    ldh  a, [rSC]                                 ; $6BF5: $F0 $02
    jr   nz, jr_003_6C0E                          ; $6BF7: $20 $15

    ld   a, [bc]                                  ; $6BF9: $0A
    rrca                                          ; $6BFA: $0F
    ld   [hl+], a                                 ; $6BFB: $22
    ret  nz                                       ; $6BFC: $C0

    rrca                                          ; $6BFD: $0F
    sbc  e                                        ; $6BFE: $9B
    ld   e, $05                                   ; $6BFF: $1E $05
    inc  e                                        ; $6C01: $1C
    rrca                                          ; $6C02: $0F
    add  hl, bc                                   ; $6C03: $09
    nop                                           ; $6C04: $00
    inc  b                                        ; $6C05: $04
    rrca                                          ; $6C06: $0F
    ld   [bc], a                                  ; $6C07: $02
    jr   nz, jr_003_6C1F                          ; $6C08: $20 $15

    ld   a, [bc]                                  ; $6C0A: $0A
    rrca                                          ; $6C0B: $0F
    ld   [hl+], a                                 ; $6C0C: $22
    ret  nz                                       ; $6C0D: $C0

jr_003_6C0E:
    rrca                                          ; $6C0E: $0F
    sbc  e                                        ; $6C0F: $9B
    ld   e, $05                                   ; $6C10: $1E $05
    inc  e                                        ; $6C12: $1C
    rrca                                          ; $6C13: $0F
    add  hl, bc                                   ; $6C14: $09
    nop                                           ; $6C15: $00
    inc  b                                        ; $6C16: $04
    ldh  a, [rSC]                                 ; $6C17: $F0 $02
    ld   a, [bc]                                  ; $6C19: $0A
    ld   [bc], a                                  ; $6C1A: $02
    ld   a, [bc]                                  ; $6C1B: $0A
    rra                                           ; $6C1C: $1F
    ld   [hl+], a                                 ; $6C1D: $22
    nop                                           ; $6C1E: $00

jr_003_6C1F:
    rrca                                          ; $6C1F: $0F
    add  $FE                                      ; $6C20: $C6 $FE
    jr   nc, jr_003_6C29                          ; $6C22: $30 $05

    ld   [hl+], a                                 ; $6C24: $22
    dec  bc                                       ; $6C25: $0B
    add  hl, bc                                   ; $6C26: $09
    ldh  a, [rSC]                                 ; $6C27: $F0 $02

jr_003_6C29:
    inc  d                                        ; $6C29: $14
    dec  d                                        ; $6C2A: $15
    ld   a, [bc]                                  ; $6C2B: $0A
    add  hl, bc                                   ; $6C2C: $09
    db   $10                                      ; $6C2D: $10
    add  a                                        ; $6C2E: $87
    cpl                                           ; $6C2F: $2F
    dec  b                                        ; $6C30: $05
    db   $10                                      ; $6C31: $10
    rrca                                          ; $6C32: $0F
    dec  bc                                       ; $6C33: $0B
    nop                                           ; $6C34: $00
    inc  b                                        ; $6C35: $04
    rrca                                          ; $6C36: $0F
    ld   [bc], a                                  ; $6C37: $02
    ld   a, [bc]                                  ; $6C38: $0A
    ld   [bc], a                                  ; $6C39: $02
    ld   a, [bc]                                  ; $6C3A: $0A
    rra                                           ; $6C3B: $1F
    ld   [hl+], a                                 ; $6C3C: $22
    nop                                           ; $6C3D: $00
    rrca                                          ; $6C3E: $0F
    add  $FE                                      ; $6C3F: $C6 $FE
    jr   nc, jr_003_6C48                          ; $6C41: $30 $05

    ld   [hl+], a                                 ; $6C43: $22
    dec  bc                                       ; $6C44: $0B
    add  hl, bc                                   ; $6C45: $09
    rrca                                          ; $6C46: $0F
    ld   [bc], a                                  ; $6C47: $02

jr_003_6C48:
    inc  d                                        ; $6C48: $14
    dec  d                                        ; $6C49: $15
    ld   a, [bc]                                  ; $6C4A: $0A
    add  hl, bc                                   ; $6C4B: $09
    db   $10                                      ; $6C4C: $10
    add  a                                        ; $6C4D: $87
    cpl                                           ; $6C4E: $2F
    dec  b                                        ; $6C4F: $05
    db   $10                                      ; $6C50: $10
    rrca                                          ; $6C51: $0F
    dec  bc                                       ; $6C52: $0B
    nop                                           ; $6C53: $00
    ld   b, $F0                                   ; $6C54: $06 $F0
    ld   [bc], a                                  ; $6C56: $02
    ld   a, [$0A03]                               ; $6C57: $FA $03 $0A
    rrca                                          ; $6C5A: $0F
    inc  h                                        ; $6C5B: $24
    nop                                           ; $6C5C: $00
    rlca                                          ; $6C5D: $07
    sub  l                                        ; $6C5E: $95
    ld   b, b                                     ; $6C5F: $40
    dec  b                                        ; $6C60: $05
    ld   a, [de]                                  ; $6C61: $1A
    rrca                                          ; $6C62: $0F
    ld   a, [bc]                                  ; $6C63: $0A
    ldh  a, [rSC]                                 ; $6C64: $F0 $02
    cp   $04                                      ; $6C66: $FE $04
    ld   a, [bc]                                  ; $6C68: $0A
    ld   [$5015], sp                              ; $6C69: $08 $15 $50
    nop                                           ; $6C6C: $00
    inc  c                                        ; $6C6D: $0C
    nop                                           ; $6C6E: $00
    ld   b, $0F                                   ; $6C6F: $06 $0F
    ld   [bc], a                                  ; $6C71: $02
    ld   a, [$0A03]                               ; $6C72: $FA $03 $0A
    rrca                                          ; $6C75: $0F
    inc  h                                        ; $6C76: $24
    nop                                           ; $6C77: $00
    rlca                                          ; $6C78: $07
    sub  l                                        ; $6C79: $95
    ld   b, b                                     ; $6C7A: $40
    dec  b                                        ; $6C7B: $05
    ld   a, [de]                                  ; $6C7C: $1A
    rrca                                          ; $6C7D: $0F
    ld   a, [bc]                                  ; $6C7E: $0A
    rrca                                          ; $6C7F: $0F
    ld   [bc], a                                  ; $6C80: $02
    cp   $04                                      ; $6C81: $FE $04
    ld   a, [bc]                                  ; $6C83: $0A
    ld   [$5015], sp                              ; $6C84: $08 $15 $50
    nop                                           ; $6C87: $00
    inc  c                                        ; $6C88: $0C
    nop                                           ; $6C89: $00
    add  hl, bc                                   ; $6C8A: $09
    rst  RST_38                                   ; $6C8B: $FF
    ld   [bc], a                                  ; $6C8C: $02
    inc  d                                        ; $6C8D: $14
    ld   [$0F0A], sp                              ; $6C8E: $08 $0A $0F
    inc  h                                        ; $6C91: $24
    add  b                                        ; $6C92: $80
    rrca                                          ; $6C93: $0F
    ld   [hl], b                                  ; $6C94: $70
    ld   sp, $1C05                                ; $6C95: $31 $05 $1C
    rrca                                          ; $6C98: $0F
    dec  bc                                       ; $6C99: $0B
    nop                                           ; $6C9A: $00
    rrca                                          ; $6C9B: $0F
    rst  RST_38                                   ; $6C9C: $FF
    ld   b, $02                                   ; $6C9D: $06 $02
    inc  c                                        ; $6C9F: $0C
    inc  b                                        ; $6CA0: $04
    rlca                                          ; $6CA1: $07
    rlca                                          ; $6CA2: $07
    ld   [hl+], a                                 ; $6CA3: $22
    add  b                                        ; $6CA4: $80
    rrca                                          ; $6CA5: $0F
    dec  h                                        ; $6CA6: $25
    rla                                           ; $6CA7: $17
    ld   [hl+], a                                 ; $6CA8: $22
    add  b                                        ; $6CA9: $80
    rrca                                          ; $6CAA: $0F
    db   $FD                                      ; $6CAB: $FD
    dec  h                                        ; $6CAC: $25
    rlca                                          ; $6CAD: $07
    ld   a, [bc]                                  ; $6CAE: $0A
    inc  bc                                       ; $6CAF: $03
    xor  d                                        ; $6CB0: $AA
    add  hl, de                                   ; $6CB1: $19
    rst  RST_38                                   ; $6CB2: $FF
    ld   [bc], a                                  ; $6CB3: $02
    ld   [bc], a                                  ; $6CB4: $02
    inc  b                                        ; $6CB5: $04
    rlca                                          ; $6CB6: $07
    nop                                           ; $6CB7: $00
    jr   z, jr_003_6CCA                           ; $6CB8: $28 $10

    db   $FD                                      ; $6CBA: $FD
    jr   z, jr_003_6CBD                           ; $6CBB: $28 $00

jr_003_6CBD:
    inc  e                                        ; $6CBD: $1C
    rst  RST_38                                   ; $6CBE: $FF
    ld   [bc], a                                  ; $6CBF: $02
    ld   [bc], a                                  ; $6CC0: $02
    inc  b                                        ; $6CC1: $04
    rlca                                          ; $6CC2: $07
    nop                                           ; $6CC3: $00
    dec  hl                                       ; $6CC4: $2B
    db   $10                                      ; $6CC5: $10
    db   $FD                                      ; $6CC6: $FD
    dec  hl                                       ; $6CC7: $2B
    nop                                           ; $6CC8: $00
    rra                                           ; $6CC9: $1F

jr_003_6CCA:
    rst  RST_38                                   ; $6CCA: $FF
    ld   [bc], a                                  ; $6CCB: $02
    ld   [bc], a                                  ; $6CCC: $02
    inc  b                                        ; $6CCD: $04
    rlca                                          ; $6CCE: $07
    nop                                           ; $6CCF: $00
    ld   l, $10                                   ; $6CD0: $2E $10
    db   $FD                                      ; $6CD2: $FD
    ld   l, $00                                   ; $6CD3: $2E $00
    ld   [hl+], a                                 ; $6CD5: $22
    rst  RST_38                                   ; $6CD6: $FF
    ld   [bc], a                                  ; $6CD7: $02
    ld   [bc], a                                  ; $6CD8: $02
    inc  b                                        ; $6CD9: $04
    rlca                                          ; $6CDA: $07
    nop                                           ; $6CDB: $00
    dec  l                                        ; $6CDC: $2D
    db   $10                                      ; $6CDD: $10
    db   $FD                                      ; $6CDE: $FD
    dec  l                                        ; $6CDF: $2D
    nop                                           ; $6CE0: $00
    ld   hl, $02FF                                ; $6CE1: $21 $FF $02
    ld   [bc], a                                  ; $6CE4: $02
    inc  b                                        ; $6CE5: $04
    rlca                                          ; $6CE6: $07
    nop                                           ; $6CE7: $00
    inc  l                                        ; $6CE8: $2C
    db   $10                                      ; $6CE9: $10
    db   $FD                                      ; $6CEA: $FD
    inc  l                                        ; $6CEB: $2C
    nop                                           ; $6CEC: $00
    jr   nz, @+$01                                ; $6CED: $20 $FF

    ld   [bc], a                                  ; $6CEF: $02
    ld   [bc], a                                  ; $6CF0: $02
    inc  b                                        ; $6CF1: $04
    rlca                                          ; $6CF2: $07
    nop                                           ; $6CF3: $00
    dec  hl                                       ; $6CF4: $2B
    db   $10                                      ; $6CF5: $10
    db   $FD                                      ; $6CF6: $FD
    dec  hl                                       ; $6CF7: $2B
    nop                                           ; $6CF8: $00
    rra                                           ; $6CF9: $1F
    rst  RST_38                                   ; $6CFA: $FF
    ld   [bc], a                                  ; $6CFB: $02
    ld   [bc], a                                  ; $6CFC: $02
    inc  d                                        ; $6CFD: $14
    rlca                                          ; $6CFE: $07
    nop                                           ; $6CFF: $00
    inc  [hl]                                     ; $6D00: $34
    db   $10                                      ; $6D01: $10
    db   $FD                                      ; $6D02: $FD
    inc  [hl]                                     ; $6D03: $34
    nop                                           ; $6D04: $00
    jr   z, jr_003_6D07                           ; $6D05: $28 $00

jr_003_6D07:
    ld   [$02F0], sp                              ; $6D07: $08 $F0 $02
    db   $DD                                      ; $6D0A: $DD
    jr   nc, @+$0A                                ; $6D0B: $30 $08

    dec  c                                        ; $6D0D: $0D
    ld   [hl+], a                                 ; $6D0E: $22
    rrca                                          ; $6D0F: $0F
    inc  c                                        ; $6D10: $0C
    ld   a, [bc]                                  ; $6D11: $0A
    nop                                           ; $6D12: $00
    ld   [$020F], sp                              ; $6D13: $08 $0F $02
    db   $DD                                      ; $6D16: $DD
    jr   nc, jr_003_6D21                          ; $6D17: $30 $08

    dec  c                                        ; $6D19: $0D
    ld   [hl+], a                                 ; $6D1A: $22
    rrca                                          ; $6D1B: $0F
    inc  c                                        ; $6D1C: $0C
    ld   a, [bc]                                  ; $6D1D: $0A
    nop                                           ; $6D1E: $00
    ld   c, $FF                                   ; $6D1F: $0E $FF

jr_003_6D21:
    ld   [bc], a                                  ; $6D21: $02
    ld   bc, $0306                                ; $6D22: $01 $06 $03
    rrca                                          ; $6D25: $0F
    ld   [hl+], a                                 ; $6D26: $22
    add  b                                        ; $6D27: $80
    rrca                                          ; $6D28: $0F
    add  c                                        ; $6D29: $81
    ld   [hl-], a                                 ; $6D2A: $32
    rrca                                          ; $6D2B: $0F
    ld   [hl+], a                                 ; $6D2C: $22
    add  b                                        ; $6D2D: $80
    rrca                                          ; $6D2E: $0F
    add  c                                        ; $6D2F: $81
    ld   h, $00                                   ; $6D30: $26 $00
    ld   c, $FF                                   ; $6D32: $0E $FF
    ld   [bc], a                                  ; $6D34: $02
    rst  RST_38                                   ; $6D35: $FF
    inc  bc                                       ; $6D36: $03
    inc  bc                                       ; $6D37: $03
    rlca                                          ; $6D38: $07
    ld   [hl+], a                                 ; $6D39: $22
    add  b                                        ; $6D3A: $80
    rrca                                          ; $6D3B: $0F
    ld   b, b                                     ; $6D3C: $40
    rlca                                          ; $6D3D: $07
    ld   [hl+], a                                 ; $6D3E: $22
    add  b                                        ; $6D3F: $80
    rrca                                          ; $6D40: $0F
    inc  [hl]                                     ; $6D41: $34
    rst  RST_38                                   ; $6D42: $FF
    ld   [bc], a                                  ; $6D43: $02
    ld   h, h                                     ; $6D44: $64
    inc  c                                        ; $6D45: $0C
    inc  bc                                       ; $6D46: $03
    nop                                           ; $6D47: $00
    ld   c, h                                     ; $6D48: $4C
    nop                                           ; $6D49: $00
    ld   b, b                                     ; $6D4A: $40
    nop                                           ; $6D4B: $00
    ld   a, [bc]                                  ; $6D4C: $0A
    rst  RST_38                                   ; $6D4D: $FF
    ld   [bc], a                                  ; $6D4E: $02
    jr   z, jr_003_6D55                           ; $6D4F: $28 $04

    ld   a, [bc]                                  ; $6D51: $0A
    rrca                                          ; $6D52: $0F
    inc  h                                        ; $6D53: $24
    nop                                           ; $6D54: $00

jr_003_6D55:
    rrca                                          ; $6D55: $0F
    ld   e, c                                     ; $6D56: $59
    dec  h                                        ; $6D57: $25
    dec  c                                        ; $6D58: $0D
    inc  h                                        ; $6D59: $24
    rrca                                          ; $6D5A: $0F
    ld   de, $FF03                                ; $6D5B: $11 $03 $FF
    ld   [bc], a                                  ; $6D5E: $02
    rra                                           ; $6D5F: $1F
    inc  b                                        ; $6D60: $04
    ld   [bc], a                                  ; $6D61: $02
    ld   [$0F7F], sp                              ; $6D62: $08 $7F $0F
    nop                                           ; $6D65: $00
    ld   a, [bc]                                  ; $6D66: $0A
    rst  RST_38                                   ; $6D67: $FF
    ld   [bc], a                                  ; $6D68: $02
    jr   z, jr_003_6D6F                           ; $6D69: $28 $04

    ld   a, [bc]                                  ; $6D6B: $0A
    rrca                                          ; $6D6C: $0F
    inc  h                                        ; $6D6D: $24
    ret  nz                                       ; $6D6E: $C0

jr_003_6D6F:
    rrca                                          ; $6D6F: $0F
    ld   e, c                                     ; $6D70: $59
    inc  l                                        ; $6D71: $2C
    dec  c                                        ; $6D72: $0D
    inc  h                                        ; $6D73: $24
    rrca                                          ; $6D74: $0F
    ld   de, $FF04                                ; $6D75: $11 $04 $FF
    ld   [bc], a                                  ; $6D78: $02
    rra                                           ; $6D79: $1F
    inc  b                                        ; $6D7A: $04
    ld   [bc], a                                  ; $6D7B: $02
    ld   [$297F], sp                              ; $6D7C: $08 $7F $29
    nop                                           ; $6D7F: $00
    ld   a, [bc]                                  ; $6D80: $0A
    rst  RST_38                                   ; $6D81: $FF
    ld   [bc], a                                  ; $6D82: $02
    jr   z, jr_003_6D89                           ; $6D83: $28 $04

    ld   a, [bc]                                  ; $6D85: $0A
    rrca                                          ; $6D86: $0F
    inc  h                                        ; $6D87: $24
    ret  nz                                       ; $6D88: $C0

jr_003_6D89:
    rrca                                          ; $6D89: $0F
    ld   e, c                                     ; $6D8A: $59
    ld   b, c                                     ; $6D8B: $41
    dec  c                                        ; $6D8C: $0D
    inc  h                                        ; $6D8D: $24
    rrca                                          ; $6D8E: $0F
    ld   de, $FF0A                                ; $6D8F: $11 $0A $FF
    ld   [bc], a                                  ; $6D92: $02
    rra                                           ; $6D93: $1F
    inc  b                                        ; $6D94: $04
    ld   [bc], a                                  ; $6D95: $02
    ld   [$3DAF], sp                              ; $6D96: $08 $AF $3D
    nop                                           ; $6D99: $00
    dec  bc                                       ; $6D9A: $0B
    sbc  $02                                      ; $6D9B: $DE $02
    jr   nz, jr_003_6DD2                          ; $6D9D: $20 $33

    rrca                                          ; $6D9F: $0F
    rra                                           ; $6DA0: $1F
    ld   [hl+], a                                 ; $6DA1: $22
    nop                                           ; $6DA2: $00
    rrca                                          ; $6DA3: $0F
    ld   e, d                                     ; $6DA4: $5A
    inc  bc                                       ; $6DA5: $03
    jr   z, jr_003_6DB7                           ; $6DA6: $28 $0F

    ld   [hl+], a                                 ; $6DA8: $22
    nop                                           ; $6DA9: $00
    rrca                                          ; $6DAA: $0F
    ld   e, d                                     ; $6DAB: $5A
    jr   z, jr_003_6DCD                           ; $6DAC: $28 $1F

    ld   e, $03                                   ; $6DAE: $1E $03
    rst  RST_00                                   ; $6DB0: $C7
    ld   e, d                                     ; $6DB1: $5A
    db   $FD                                      ; $6DB2: $FD
    jr   z, jr_003_6DC2                           ; $6DB3: $28 $0D

    ld   e, $0F                                   ; $6DB5: $1E $0F

jr_003_6DB7:
    sub  d                                        ; $6DB7: $92
    ld   c, $00                                   ; $6DB8: $0E $00
    ld   c, $FF                                   ; $6DBA: $0E $FF
    ld   b, $A0                                   ; $6DBC: $06 $A0
    ld   sp, hl                                   ; $6DBE: $F9
    rrca                                          ; $6DBF: $0F
    rlca                                          ; $6DC0: $07
    rlca                                          ; $6DC1: $07

jr_003_6DC2:
    rla                                           ; $6DC2: $17
    nop                                           ; $6DC3: $00
    rrca                                          ; $6DC4: $0F
    ld   b, h                                     ; $6DC5: $44
    rlca                                          ; $6DC6: $07
    rla                                           ; $6DC7: $17
    nop                                           ; $6DC8: $00
    rrca                                          ; $6DC9: $0F
    ld   b, c                                     ; $6DCA: $41
    rlca                                          ; $6DCB: $07
    rla                                           ; $6DCC: $17

jr_003_6DCD:
    inc  bc                                       ; $6DCD: $03
    and  b                                        ; $6DCE: $A0
    dec  a                                        ; $6DCF: $3D
    rst  RST_38                                   ; $6DD0: $FF
    ld   [bc], a                                  ; $6DD1: $02

jr_003_6DD2:
    ld   h, h                                     ; $6DD2: $64
    dec  b                                        ; $6DD3: $05
    rlca                                          ; $6DD4: $07
    nop                                           ; $6DD5: $00
    ld   b, h                                     ; $6DD6: $44
    nop                                           ; $6DD7: $00
    ld   b, c                                     ; $6DD8: $41
    inc  b                                        ; $6DD9: $04
    ld   h, h                                     ; $6DDA: $64
    dec  a                                        ; $6DDB: $3D
    rst  RST_38                                   ; $6DDC: $FF
    ld   [bc], a                                  ; $6DDD: $02
    ld   h, h                                     ; $6DDE: $64
    dec  b                                        ; $6DDF: $05
    rlca                                          ; $6DE0: $07
    nop                                           ; $6DE1: $00
    ld   b, h                                     ; $6DE2: $44
    nop                                           ; $6DE3: $00
    ld   b, c                                     ; $6DE4: $41
    inc  b                                        ; $6DE5: $04
    ld   h, h                                     ; $6DE6: $64
    dec  a                                        ; $6DE7: $3D
    rst  RST_38                                   ; $6DE8: $FF
    ld   [bc], a                                  ; $6DE9: $02
    ld   h, h                                     ; $6DEA: $64
    dec  b                                        ; $6DEB: $05
    rlca                                          ; $6DEC: $07
    nop                                           ; $6DED: $00
    ld   b, h                                     ; $6DEE: $44
    nop                                           ; $6DEF: $00
    ld   b, c                                     ; $6DF0: $41
    inc  b                                        ; $6DF1: $04
    ld   h, h                                     ; $6DF2: $64
    dec  a                                        ; $6DF3: $3D
    rst  RST_38                                   ; $6DF4: $FF
    ld   [bc], a                                  ; $6DF5: $02
    and  b                                        ; $6DF6: $A0
    ld   a, [bc]                                  ; $6DF7: $0A
    rlca                                          ; $6DF8: $07
    nop                                           ; $6DF9: $00
    ld   b, h                                     ; $6DFA: $44
    nop                                           ; $6DFB: $00
    ld   b, c                                     ; $6DFC: $41
    inc  b                                        ; $6DFD: $04
    and  b                                        ; $6DFE: $A0
    dec  a                                        ; $6DFF: $3D
    rst  RST_38                                   ; $6E00: $FF
    ld   [bc], a                                  ; $6E01: $02
    and  b                                        ; $6E02: $A0
    ld   a, [bc]                                  ; $6E03: $0A
    rlca                                          ; $6E04: $07
    nop                                           ; $6E05: $00
    ld   b, c                                     ; $6E06: $41
    nop                                           ; $6E07: $00
    dec  a                                        ; $6E08: $3D
    inc  b                                        ; $6E09: $04
    and  b                                        ; $6E0A: $A0
    jr   c, @+$01                                 ; $6E0B: $38 $FF

    ld   [bc], a                                  ; $6E0D: $02
    and  b                                        ; $6E0E: $A0
    ld   a, [bc]                                  ; $6E0F: $0A
    rlca                                          ; $6E10: $07
    nop                                           ; $6E11: $00
    ld   b, h                                     ; $6E12: $44
    nop                                           ; $6E13: $00
    ld   b, c                                     ; $6E14: $41
    inc  b                                        ; $6E15: $04
    and  b                                        ; $6E16: $A0
    dec  a                                        ; $6E17: $3D
    rst  RST_38                                   ; $6E18: $FF
    ld   [bc], a                                  ; $6E19: $02
    rst  RST_38                                   ; $6E1A: $FF
    ld   e, $07                                   ; $6E1B: $1E $07
    nop                                           ; $6E1D: $00
    ld   b, [hl]                                  ; $6E1E: $46
    nop                                           ; $6E1F: $00
    ld   b, c                                     ; $6E20: $41
    inc  b                                        ; $6E21: $04
    rst  RST_38                                   ; $6E22: $FF
    dec  a                                        ; $6E23: $3D
    nop                                           ; $6E24: $00
    ld   c, $FF                                   ; $6E25: $0E $FF
    ld   b, $FF                                   ; $6E27: $06 $FF
    db   $FD                                      ; $6E29: $FD
    inc  bc                                       ; $6E2A: $03
    rlca                                          ; $6E2B: $07
    rlca                                          ; $6E2C: $07
    ld   [hl+], a                                 ; $6E2D: $22
    nop                                           ; $6E2E: $00
    rrca                                          ; $6E2F: $0F
    jr   c, jr_003_6E39                           ; $6E30: $38 $07

    ld   [hl+], a                                 ; $6E32: $22
    nop                                           ; $6E33: $00
    rrca                                          ; $6E34: $0F
    dec  [hl]                                     ; $6E35: $35
    rlca                                          ; $6E36: $07
    ld   [hl+], a                                 ; $6E37: $22
    inc  bc                                       ; $6E38: $03

jr_003_6E39:
    rst  RST_38                                   ; $6E39: $FF
    inc  l                                        ; $6E3A: $2C
    rst  RST_38                                   ; $6E3B: $FF
    ld   b, $FF                                   ; $6E3C: $06 $FF
    db   $FD                                      ; $6E3E: $FD
    inc  bc                                       ; $6E3F: $03
    rlca                                          ; $6E40: $07
    nop                                           ; $6E41: $00
    dec  [hl]                                     ; $6E42: $35
    nop                                           ; $6E43: $00
    ld   sp, $2900                                ; $6E44: $31 $00 $29
    rst  RST_38                                   ; $6E47: $FF
    ld   b, $FF                                   ; $6E48: $06 $FF
    db   $FD                                      ; $6E4A: $FD
    inc  bc                                       ; $6E4B: $03
    rlca                                          ; $6E4C: $07
    nop                                           ; $6E4D: $00
    ld   sp, $2C00                                ; $6E4E: $31 $00 $2C
    nop                                           ; $6E51: $00
    dec  h                                        ; $6E52: $25
    rst  RST_38                                   ; $6E53: $FF
    ld   b, $FF                                   ; $6E54: $06 $FF
    db   $FD                                      ; $6E56: $FD
    inc  bc                                       ; $6E57: $03
    rlca                                          ; $6E58: $07
    nop                                           ; $6E59: $00
    dec  [hl]                                     ; $6E5A: $35
    nop                                           ; $6E5B: $00
    ld   sp, $2900                                ; $6E5C: $31 $00 $29
    rst  RST_38                                   ; $6E5F: $FF
    ld   b, $FF                                   ; $6E60: $06 $FF
    db   $FD                                      ; $6E62: $FD
    inc  bc                                       ; $6E63: $03
    rlca                                          ; $6E64: $07
    nop                                           ; $6E65: $00
    ld   sp, $2C00                                ; $6E66: $31 $00 $2C
    nop                                           ; $6E69: $00
    dec  h                                        ; $6E6A: $25
    rst  RST_38                                   ; $6E6B: $FF
    ld   b, $FF                                   ; $6E6C: $06 $FF
    db   $FD                                      ; $6E6E: $FD
    inc  bc                                       ; $6E6F: $03
    rlca                                          ; $6E70: $07
    nop                                           ; $6E71: $00
    inc  l                                        ; $6E72: $2C
    nop                                           ; $6E73: $00
    add  hl, hl                                   ; $6E74: $29
    nop                                           ; $6E75: $00
    jr   nz, @+$01                                ; $6E76: $20 $FF

    ld   b, $FF                                   ; $6E78: $06 $FF
    db   $FD                                      ; $6E7A: $FD
    inc  bc                                       ; $6E7B: $03
    rlca                                          ; $6E7C: $07
    nop                                           ; $6E7D: $00
    ld   sp, $2C00                                ; $6E7E: $31 $00 $2C
    nop                                           ; $6E81: $00
    dec  h                                        ; $6E82: $25
    rst  RST_38                                   ; $6E83: $FF
    ld   b, $FF                                   ; $6E84: $06 $FF
    db   $FD                                      ; $6E86: $FD
    inc  bc                                       ; $6E87: $03
    rlca                                          ; $6E88: $07
    nop                                           ; $6E89: $00
    dec  [hl]                                     ; $6E8A: $35
    nop                                           ; $6E8B: $00
    ld   sp, $2900                                ; $6E8C: $31 $00 $29
    rst  RST_38                                   ; $6E8F: $FF
    ld   b, $04                                   ; $6E90: $06 $04
    db   $FD                                      ; $6E92: $FD
    jr   @+$09                                    ; $6E93: $18 $07

    nop                                           ; $6E95: $00
    jr   c, jr_003_6E98                           ; $6E96: $38 $00

jr_003_6E98:
    dec  [hl]                                     ; $6E98: $35
    nop                                           ; $6E99: $00
    ld   sp, $06FF                                ; $6E9A: $31 $FF $06
    rst  RST_38                                   ; $6E9D: $FF
    db   $FD                                      ; $6E9E: $FD
    jr   jr_003_6EA8                              ; $6E9F: $18 $07

    nop                                           ; $6EA1: $00
    add  hl, sp                                   ; $6EA2: $39
    nop                                           ; $6EA3: $00
    inc  sp                                       ; $6EA4: $33
    nop                                           ; $6EA5: $00
    jr   nc, @+$01                                ; $6EA6: $30 $FF

jr_003_6EA8:
    ld   b, $FF                                   ; $6EA8: $06 $FF
    db   $FD                                      ; $6EAA: $FD
    ld   l, h                                     ; $6EAB: $6C
    rlca                                          ; $6EAC: $07
    ld   bc, $3A07                                ; $6EAD: $01 $07 $3A
    ld   bc, $3507                                ; $6EB0: $01 $07 $35
    ld   bc, $3207                                ; $6EB3: $01 $07 $32
    nop                                           ; $6EB6: $00
    dec  c                                        ; $6EB7: $0D
    rst  RST_38                                   ; $6EB8: $FF
    ld   [bc], a                                  ; $6EB9: $02
    ld   bc, $0A09                                ; $6EBA: $01 $09 $0A
    rrca                                          ; $6EBD: $0F
    inc  c                                        ; $6EBE: $0C
    add  b                                        ; $6EBF: $80
    rrca                                          ; $6EC0: $0F
    ld   [hl], d                                  ; $6EC1: $72
    dec  de                                       ; $6EC2: $1B
    dec  b                                        ; $6EC3: $05
    dec  d                                        ; $6EC4: $15
    inc  c                                        ; $6EC5: $0C
    add  hl, bc                                   ; $6EC6: $09
    rst  RST_38                                   ; $6EC7: $FF
    inc  bc                                       ; $6EC8: $03
    ld   a, [bc]                                  ; $6EC9: $0A
    ld   l, [hl]                                  ; $6ECA: $6E
    cp   b                                        ; $6ECB: $B8
    ld   bc, $0A05                                ; $6ECC: $01 $05 $0A
    add  hl, bc                                   ; $6ECF: $09
    ld   [hl+], a                                 ; $6ED0: $22
    ld   a, e                                     ; $6ED1: $7B
    inc  e                                        ; $6ED2: $1C
    ld   bc, $0921                                ; $6ED3: $01 $21 $09
    nop                                           ; $6ED6: $00
    dec  c                                        ; $6ED7: $0D
    rst  RST_38                                   ; $6ED8: $FF
    ld   [bc], a                                  ; $6ED9: $02
    ld   a, [bc]                                  ; $6EDA: $0A
    ld   [bc], a                                  ; $6EDB: $02
    inc  bc                                       ; $6EDC: $03
    rlca                                          ; $6EDD: $07
    ld   [hl+], a                                 ; $6EDE: $22
    add  b                                        ; $6EDF: $80
    rrca                                          ; $6EE0: $0F
    jr   z, jr_003_6EEA                           ; $6EE1: $28 $07

    ld   [hl+], a                                 ; $6EE3: $22
    add  b                                        ; $6EE4: $80
    rrca                                          ; $6EE5: $0F
    inc  [hl]                                     ; $6EE6: $34
    rst  RST_38                                   ; $6EE7: $FF
    ld   [bc], a                                  ; $6EE8: $02
    ld   a, [bc]                                  ; $6EE9: $0A

jr_003_6EEA:
    ld   [bc], a                                  ; $6EEA: $02
    inc  bc                                       ; $6EEB: $03
    rlca                                          ; $6EEC: $07
    ld   [hl+], a                                 ; $6EED: $22
    add  b                                        ; $6EEE: $80
    rrca                                          ; $6EEF: $0F
    dec  h                                        ; $6EF0: $25
    rlca                                          ; $6EF1: $07
    ld   [hl+], a                                 ; $6EF2: $22
    add  b                                        ; $6EF3: $80
    rrca                                          ; $6EF4: $0F
    ld   sp, $0500                                ; $6EF5: $31 $00 $05
    rst  RST_38                                   ; $6EF8: $FF
    ld   [bc], a                                  ; $6EF9: $02
    ld   c, c                                     ; $6EFA: $49
    ld   e, $08                                   ; $6EFB: $1E $08
    dec  b                                        ; $6EFD: $05
    ld   c, $0F                                   ; $6EFE: $0E $0F
    inc  c                                        ; $6F00: $0C
    nop                                           ; $6F01: $00
    ld   c, $FF                                   ; $6F02: $0E $FF
    ld   [bc], a                                  ; $6F04: $02
    ld   b, c                                     ; $6F05: $41
    rlca                                          ; $6F06: $07
    rrca                                          ; $6F07: $0F
    rlca                                          ; $6F08: $07
    inc  d                                        ; $6F09: $14
    ret  nz                                       ; $6F0A: $C0

    rrca                                          ; $6F0B: $0F
    inc  sp                                       ; $6F0C: $33
    rlca                                          ; $6F0D: $07
    inc  d                                        ; $6F0E: $14
    ret  nz                                       ; $6F0F: $C0

    rrca                                          ; $6F10: $0F
    ld   l, $07                                   ; $6F11: $2E $07
    ld   [hl+], a                                 ; $6F13: $22
    inc  bc                                       ; $6F14: $03
    sub  [hl]                                     ; $6F15: $96
    dec  de                                       ; $6F16: $1B
    dec  b                                        ; $6F17: $05
    inc  e                                        ; $6F18: $1C
    rrca                                          ; $6F19: $0F
    ld   a, [bc]                                  ; $6F1A: $0A
    rst  RST_38                                   ; $6F1B: $FF
    ld   [bc], a                                  ; $6F1C: $02
    ld   b, c                                     ; $6F1D: $41
    rlca                                          ; $6F1E: $07
    rrca                                          ; $6F1F: $0F
    nop                                           ; $6F20: $00
    inc  [hl]                                     ; $6F21: $34
    nop                                           ; $6F22: $00
    jr   nc, jr_003_6F25                          ; $6F23: $30 $00

jr_003_6F25:
    inc  e                                        ; $6F25: $1C
    nop                                           ; $6F26: $00
    rst  RST_38                                   ; $6F27: $FF
    rst  RST_38                                   ; $6F28: $FF
    ld   [bc], a                                  ; $6F29: $02
    ld   b, c                                     ; $6F2A: $41
    rlca                                          ; $6F2B: $07
    rrca                                          ; $6F2C: $0F
    nop                                           ; $6F2D: $00
    scf                                           ; $6F2E: $37
    nop                                           ; $6F2F: $00
    ld   sp, $1F00                                ; $6F30: $31 $00 $1F
    nop                                           ; $6F33: $00
    rst  RST_38                                   ; $6F34: $FF
    rst  RST_38                                   ; $6F35: $FF
    ld   [bc], a                                  ; $6F36: $02
    ld   b, c                                     ; $6F37: $41
    rlca                                          ; $6F38: $07
    rrca                                          ; $6F39: $0F
    inc  b                                        ; $6F3A: $04
    rlca                                          ; $6F3B: $07
    inc  sp                                       ; $6F3C: $33
    inc  b                                        ; $6F3D: $04
    rlca                                          ; $6F3E: $07
    ld   l, $06                                   ; $6F3F: $2E $06
    ld   [bc], a                                  ; $6F41: $02
    ld   h, h                                     ; $6F42: $64
    dec  de                                       ; $6F43: $1B
    nop                                           ; $6F44: $00
    rst  RST_38                                   ; $6F45: $FF
    rst  RST_38                                   ; $6F46: $FF
    ld   [bc], a                                  ; $6F47: $02
    ld   b, c                                     ; $6F48: $41
    rlca                                          ; $6F49: $07
    rrca                                          ; $6F4A: $0F
    nop                                           ; $6F4B: $00
    inc  [hl]                                     ; $6F4C: $34
    nop                                           ; $6F4D: $00
    jr   nc, jr_003_6F50                          ; $6F4E: $30 $00

jr_003_6F50:
    inc  e                                        ; $6F50: $1C
    nop                                           ; $6F51: $00
    rst  RST_38                                   ; $6F52: $FF
    rst  RST_38                                   ; $6F53: $FF
    ld   [bc], a                                  ; $6F54: $02
    ld   b, c                                     ; $6F55: $41
    rlca                                          ; $6F56: $07
    rrca                                          ; $6F57: $0F
    nop                                           ; $6F58: $00
    scf                                           ; $6F59: $37
    nop                                           ; $6F5A: $00
    ld   sp, $1F00                                ; $6F5B: $31 $00 $1F
    nop                                           ; $6F5E: $00
    rst  RST_38                                   ; $6F5F: $FF
    rst  RST_38                                   ; $6F60: $FF
    ld   [bc], a                                  ; $6F61: $02
    ld   b, c                                     ; $6F62: $41
    rlca                                          ; $6F63: $07
    rrca                                          ; $6F64: $0F
    inc  b                                        ; $6F65: $04
    inc  bc                                       ; $6F66: $03
    inc  sp                                       ; $6F67: $33
    inc  b                                        ; $6F68: $04
    inc  bc                                       ; $6F69: $03
    ld   l, $06                                   ; $6F6A: $2E $06
    ld   bc, $1B64                                ; $6F6C: $01 $64 $1B
    nop                                           ; $6F6F: $00
    rst  RST_38                                   ; $6F70: $FF
    rst  RST_38                                   ; $6F71: $FF
    ld   [bc], a                                  ; $6F72: $02
    ld   b, c                                     ; $6F73: $41
    rlca                                          ; $6F74: $07
    rrca                                          ; $6F75: $0F
    nop                                           ; $6F76: $00
    inc  [hl]                                     ; $6F77: $34
    nop                                           ; $6F78: $00
    jr   nc, jr_003_6F7B                          ; $6F79: $30 $00

jr_003_6F7B:
    inc  e                                        ; $6F7B: $1C
    nop                                           ; $6F7C: $00
    rst  RST_38                                   ; $6F7D: $FF
    rst  RST_38                                   ; $6F7E: $FF
    ld   [bc], a                                  ; $6F7F: $02
    ld   b, c                                     ; $6F80: $41
    rlca                                          ; $6F81: $07
    rrca                                          ; $6F82: $0F
    nop                                           ; $6F83: $00
    scf                                           ; $6F84: $37
    nop                                           ; $6F85: $00
    ld   sp, $1F00                                ; $6F86: $31 $00 $1F
    nop                                           ; $6F89: $00
    rst  RST_38                                   ; $6F8A: $FF
    nop                                           ; $6F8B: $00
    ld   [bc], a                                  ; $6F8C: $02
    rst  RST_38                                   ; $6F8D: $FF
    ld   [bc], a                                  ; $6F8E: $02
    dec  c                                        ; $6F8F: $0D
    ld   [bc], a                                  ; $6F90: $02
    ld   a, [bc]                                  ; $6F91: $0A
    rrca                                          ; $6F92: $0F
    ld   [hl+], a                                 ; $6F93: $22
    add  b                                        ; $6F94: $80
    dec  c                                        ; $6F95: $0D
    ldh  [rNR34], a                               ; $6F96: $E0 $1E
    dec  b                                        ; $6F98: $05
    inc  h                                        ; $6F99: $24
    dec  bc                                       ; $6F9A: $0B
    ld   [bc], a                                  ; $6F9B: $02
    rst  RST_38                                   ; $6F9C: $FF
    ld   [bc], a                                  ; $6F9D: $02
    inc  bc                                       ; $6F9E: $03
    ld   [bc], a                                  ; $6F9F: $02
    ld   a, [bc]                                  ; $6FA0: $0A
    dec  c                                        ; $6FA1: $0D
    db   $10                                      ; $6FA2: $10
    ld   c, $18                                   ; $6FA3: $0E $18
    ld   d, $01                                   ; $6FA5: $16 $01
    db   $10                                      ; $6FA7: $10
    ld   [$0000], sp                              ; $6FA8: $08 $00 $00
    nop                                           ; $6FAB: $00
    nop                                           ; $6FAC: $00
    nop                                           ; $6FAD: $00
    nop                                           ; $6FAE: $00
    nop                                           ; $6FAF: $00
    nop                                           ; $6FB0: $00
    nop                                           ; $6FB1: $00
    nop                                           ; $6FB2: $00
    nop                                           ; $6FB3: $00
    nop                                           ; $6FB4: $00
    nop                                           ; $6FB5: $00
    nop                                           ; $6FB6: $00
    nop                                           ; $6FB7: $00
    nop                                           ; $6FB8: $00
    nop                                           ; $6FB9: $00
    nop                                           ; $6FBA: $00
    nop                                           ; $6FBB: $00
    nop                                           ; $6FBC: $00
    nop                                           ; $6FBD: $00
    nop                                           ; $6FBE: $00
    nop                                           ; $6FBF: $00
    nop                                           ; $6FC0: $00
    nop                                           ; $6FC1: $00
    nop                                           ; $6FC2: $00
    nop                                           ; $6FC3: $00
    nop                                           ; $6FC4: $00
    nop                                           ; $6FC5: $00
    nop                                           ; $6FC6: $00
    nop                                           ; $6FC7: $00
    nop                                           ; $6FC8: $00
    nop                                           ; $6FC9: $00
    nop                                           ; $6FCA: $00
    nop                                           ; $6FCB: $00
    nop                                           ; $6FCC: $00
    nop                                           ; $6FCD: $00
    nop                                           ; $6FCE: $00
    nop                                           ; $6FCF: $00
    nop                                           ; $6FD0: $00
    nop                                           ; $6FD1: $00
    nop                                           ; $6FD2: $00
    nop                                           ; $6FD3: $00
    nop                                           ; $6FD4: $00
    nop                                           ; $6FD5: $00
    nop                                           ; $6FD6: $00
    nop                                           ; $6FD7: $00
    nop                                           ; $6FD8: $00
    nop                                           ; $6FD9: $00
    nop                                           ; $6FDA: $00
    nop                                           ; $6FDB: $00
    nop                                           ; $6FDC: $00
    nop                                           ; $6FDD: $00
    nop                                           ; $6FDE: $00
    nop                                           ; $6FDF: $00
    nop                                           ; $6FE0: $00
    nop                                           ; $6FE1: $00
    nop                                           ; $6FE2: $00
    nop                                           ; $6FE3: $00
    nop                                           ; $6FE4: $00
    nop                                           ; $6FE5: $00
    nop                                           ; $6FE6: $00
    nop                                           ; $6FE7: $00
    nop                                           ; $6FE8: $00
    nop                                           ; $6FE9: $00
    nop                                           ; $6FEA: $00
    nop                                           ; $6FEB: $00
    nop                                           ; $6FEC: $00
    nop                                           ; $6FED: $00
    nop                                           ; $6FEE: $00
    nop                                           ; $6FEF: $00
    nop                                           ; $6FF0: $00
    nop                                           ; $6FF1: $00
    nop                                           ; $6FF2: $00
    nop                                           ; $6FF3: $00
    nop                                           ; $6FF4: $00
    nop                                           ; $6FF5: $00
    nop                                           ; $6FF6: $00
    nop                                           ; $6FF7: $00
    nop                                           ; $6FF8: $00
    nop                                           ; $6FF9: $00
    nop                                           ; $6FFA: $00
    nop                                           ; $6FFB: $00
    nop                                           ; $6FFC: $00
    nop                                           ; $6FFD: $00
    nop                                           ; $6FFE: $00
    nop                                           ; $6FFF: $00
    nop                                           ; $7000: $00
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    nop                                           ; $7003: $00
    nop                                           ; $7004: $00
    dec  b                                        ; $7005: $05
    ld   b, $07                                   ; $7006: $06 $07
    nop                                           ; $7008: $00
    nop                                           ; $7009: $00
    nop                                           ; $700A: $00
    nop                                           ; $700B: $00
    nop                                           ; $700C: $00
    rlca                                          ; $700D: $07
    ld   c, $07                                   ; $700E: $0E $07
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    rlca                                          ; $7015: $07
    ld   d, $07                                   ; $7016: $16 $07
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701A: $00
    nop                                           ; $701B: $00
    nop                                           ; $701C: $00
    rlca                                          ; $701D: $07
    ld   e, $07                                   ; $701E: $1E $07
    nop                                           ; $7020: $00
    nop                                           ; $7021: $00
    nop                                           ; $7022: $00
    nop                                           ; $7023: $00
    nop                                           ; $7024: $00
    dec  h                                        ; $7025: $25
    ld   h, $27                                   ; $7026: $26 $27
    jr   z, jr_003_7053                           ; $7028: $28 $29

    nop                                           ; $702A: $00
    nop                                           ; $702B: $00
    nop                                           ; $702C: $00
    nop                                           ; $702D: $00
    ld   l, $2F                                   ; $702E: $2E $2F
    jr   nc, jr_003_7063                          ; $7030: $30 $31

    ld   [hl-], a                                 ; $7032: $32
    inc  sp                                       ; $7033: $33
    inc  [hl]                                     ; $7034: $34
    dec  [hl]                                     ; $7035: $35
    ld   [hl], $37                                ; $7036: $36 $37
    jr   c, jr_003_7073                           ; $7038: $38 $39

    ld   a, [hl-]                                 ; $703A: $3A
    dec  sp                                       ; $703B: $3B
    inc  a                                        ; $703C: $3C
    dec  a                                        ; $703D: $3D
    ld   a, $3F                                   ; $703E: $3E $3F
    ld   bc, $0101                                ; $7040: $01 $01 $01
    ld   bc, $0101                                ; $7043: $01 $01 $01
    ld   bc, $0101                                ; $7046: $01 $01 $01
    ld   bc, $0101                                ; $7049: $01 $01 $01
    ld   bc, $0302                                ; $704C: $01 $02 $03
    inc  b                                        ; $704F: $04
    ld   bc, $0101                                ; $7050: $01 $01 $01

jr_003_7053:
    ld   bc, $0501                                ; $7053: $01 $01 $05
    inc  b                                        ; $7056: $04
    ld   b, $01                                   ; $7057: $06 $01
    ld   bc, $0101                                ; $7059: $01 $01 $01
    ld   bc, $0807                                ; $705C: $01 $07 $08
    add  hl, bc                                   ; $705F: $09
    ld   bc, $0101                                ; $7060: $01 $01 $01

jr_003_7063:
    ld   bc, $0701                                ; $7063: $01 $01 $07
    ld   [bc], a                                  ; $7066: $02
    ld   a, [bc]                                  ; $7067: $0A
    ld   bc, $0101                                ; $7068: $01 $01 $01
    ld   bc, $0701                                ; $706B: $01 $01 $07
    dec  bc                                       ; $706E: $0B
    inc  c                                        ; $706F: $0C
    ld   bc, $0101                                ; $7070: $01 $01 $01

jr_003_7073:
    ld   bc, $0D01                                ; $7073: $01 $01 $0D
    ld   a, [bc]                                  ; $7076: $0A
    ld   a, [bc]                                  ; $7077: $0A
    ld   bc, $0101                                ; $7078: $01 $01 $01
    ld   bc, $0E01                                ; $707B: $01 $01 $0E
    ld   c, $0E                                   ; $707E: $0E $0E
    ld   bc, $0101                                ; $7080: $01 $01 $01
    ld   bc, $100F                                ; $7083: $01 $0F $10
    db   $10                                      ; $7086: $10
    ld   de, $0404                                ; $7087: $11 $04 $04
    ld   [de], a                                  ; $708A: $12
    inc  bc                                       ; $708B: $03
    inc  de                                       ; $708C: $13
    ld   [$1109], sp                              ; $708D: $08 $09 $11
    inc  d                                        ; $7090: $14
    dec  d                                        ; $7091: $15
    ld   d, $17                                   ; $7092: $16 $17
    rla                                           ; $7094: $17
    ld   [bc], a                                  ; $7095: $02
    ld   b, $11                                   ; $7096: $06 $11
    jr   @+$1A                                    ; $7098: $18 $18

    ld   d, $19                                   ; $709A: $16 $19
    ld   c, $1A                                   ; $709C: $0E $1A
    ld   b, $11                                   ; $709E: $06 $11
    dec  de                                       ; $70A0: $1B
    inc  e                                        ; $70A1: $1C
    ld   [$010A], sp                              ; $70A2: $08 $0A $01
    dec  e                                        ; $70A5: $1D
    ld   b, $11                                   ; $70A6: $06 $11
    ld   e, $1F                                   ; $70A8: $1E $1F
    dec  bc                                       ; $70AA: $0B
    jr   nz, @+$20                                ; $70AB: $20 $1E

    dec  e                                        ; $70AD: $1D
    ld   b, $11                                   ; $70AE: $06 $11
    ld   a, [bc]                                  ; $70B0: $0A
    ld   hl, $2322                                ; $70B1: $21 $22 $23
    ld   a, [bc]                                  ; $70B4: $0A
    inc  h                                        ; $70B5: $24
    ld   b, $11                                   ; $70B6: $06 $11
    jr   nz, @+$27                                ; $70B8: $20 $25

    ld   h, $27                                   ; $70BA: $26 $27
    daa                                           ; $70BC: $27
    daa                                           ; $70BD: $27
    jr   z, @+$13                                 ; $70BE: $28 $11

    ld   bc, $0101                                ; $70C0: $01 $01 $01
    ld   bc, $0101                                ; $70C3: $01 $01 $01
    ld   bc, $0101                                ; $70C6: $01 $01 $01
    ld   bc, $0101                                ; $70C9: $01 $01 $01
    ld   bc, $0101                                ; $70CC: $01 $01 $01
    ld   bc, $0101                                ; $70CF: $01 $01 $01
    ld   bc, $0101                                ; $70D2: $01 $01 $01
    ld   bc, $0101                                ; $70D5: $01 $01 $01
    ld   bc, $0101                                ; $70D8: $01 $01 $01
    ld   bc, $0101                                ; $70DB: $01 $01 $01
    ld   bc, $0101                                ; $70DE: $01 $01 $01
    ld   bc, $0101                                ; $70E1: $01 $01 $01
    ld   bc, $0101                                ; $70E4: $01 $01 $01
    ld   bc, $0101                                ; $70E7: $01 $01 $01
    ld   bc, $0101                                ; $70EA: $01 $01 $01
    ld   bc, $0101                                ; $70ED: $01 $01 $01
    ld   bc, $0101                                ; $70F0: $01 $01 $01
    ld   bc, $0101                                ; $70F3: $01 $01 $01
    ld   bc, $0101                                ; $70F6: $01 $01 $01
    ld   bc, $0101                                ; $70F9: $01 $01 $01
    ld   bc, $0101                                ; $70FC: $01 $01 $01
    ld   bc, $1111                                ; $70FF: $01 $11 $11
    ld   de, $1111                                ; $7102: $11 $11 $11
    ld   de, $1111                                ; $7105: $11 $11 $11
    ld   bc, $0101                                ; $7108: $01 $01 $01
    ld   bc, $0101                                ; $710B: $01 $01 $01
    ld   bc, $0101                                ; $710E: $01 $01 $01
    ld   bc, $0101                                ; $7111: $01 $01 $01
    ld   bc, $0101                                ; $7114: $01 $01 $01
    ld   bc, $1111                                ; $7117: $01 $11 $11
    ld   de, $1111                                ; $711A: $11 $11 $11
    ld   de, $0111                                ; $711D: $11 $11 $01
    ld   de, $2929                                ; $7120: $11 $29 $29
    ld   a, [hl+]                                 ; $7123: $2A
    jr   jr_003_713E                              ; $7124: $18 $18

    dec  hl                                       ; $7126: $2B
    inc  l                                        ; $7127: $2C
    ld   de, $2E2D                                ; $7128: $11 $2D $2E
    ld   e, $2F                                   ; $712B: $1E $2F
    jr   nc, jr_003_714C                          ; $712D: $30 $1D

    ld   e, $11                                   ; $712F: $1E $11
    ld   sp, $3332                                ; $7131: $31 $32 $33
    inc  [hl]                                     ; $7134: $34
    dec  [hl]                                     ; $7135: $35
    dec  e                                        ; $7136: $1D
    ld   e, $11                                   ; $7137: $1E $11
    rlca                                          ; $7139: $07
    jr   jr_003_7154                              ; $713A: $18 $18

    ld   [hl], $37                                ; $713C: $36 $37

jr_003_713E:
    jr   c, jr_003_715E                           ; $713E: $38 $1E

    ld   de, $2F07                                ; $7140: $11 $07 $2F
    jr   nc, jr_003_715D                          ; $7143: $30 $18

    jr   @+$3B                                    ; $7145: $18 $39

    ld   de, $0711                                ; $7147: $11 $11 $07
    ld   a, [hl-]                                 ; $714A: $3A
    dec  sp                                       ; $714B: $3B

jr_003_714C:
    inc  a                                        ; $714C: $3C
    dec  a                                        ; $714D: $3D
    ld   a, $11                                   ; $714E: $3E $11
    ld   de, $403F                                ; $7150: $11 $3F $40
    scf                                           ; $7153: $37

jr_003_7154:
    ld   b, c                                     ; $7154: $41
    ld   b, d                                     ; $7155: $42
    ld   b, e                                     ; $7156: $43
    ld   de, $4411                                ; $7157: $11 $11 $44
    inc  b                                        ; $715A: $04
    inc  b                                        ; $715B: $04
    inc  b                                        ; $715C: $04

jr_003_715D:
    ld   b, l                                     ; $715D: $45

jr_003_715E:
    ld   b, [hl]                                  ; $715E: $46
    ld   de, $1111                                ; $715F: $11 $11 $11
    ld   de, $1111                                ; $7162: $11 $11 $11
    ld   de, $1111                                ; $7165: $11 $11 $11
    ld   de, $1111                                ; $7168: $11 $11 $11
    ld   de, $1111                                ; $716B: $11 $11 $11
    ld   de, $1111                                ; $716E: $11 $11 $11
    ld   b, a                                     ; $7171: $47
    dec  de                                       ; $7172: $1B
    dec  de                                       ; $7173: $1B
    ld   c, b                                     ; $7174: $48
    dec  de                                       ; $7175: $1B
    ld   c, c                                     ; $7176: $49
    ld   de, $1611                                ; $7177: $11 $11 $16
    ld   c, d                                     ; $717A: $4A
    ld   c, d                                     ; $717B: $4A
    ld   c, e                                     ; $717C: $4B
    ld   c, h                                     ; $717D: $4C
    add  hl, bc                                   ; $717E: $09
    ld   de, $4D11                                ; $717F: $11 $11 $4D
    ld   c, l                                     ; $7182: $4D
    dec  [hl]                                     ; $7183: $35
    ld   c, e                                     ; $7184: $4B
    ld   c, [hl]                                  ; $7185: $4E
    ld   c, a                                     ; $7186: $4F
    ld   de, $0311                                ; $7187: $11 $11 $03
    ld   d, b                                     ; $718A: $50
    ld   d, c                                     ; $718B: $51
    ld   d, d                                     ; $718C: $52
    ld   d, e                                     ; $718D: $53
    ld   d, h                                     ; $718E: $54
    ld   de, $5511                                ; $718F: $11 $11 $55
    dec  sp                                       ; $7192: $3B
    ld   bc, $1801                                ; $7193: $01 $01 $18
    add  hl, bc                                   ; $7196: $09
    ld   de, $5611                                ; $7197: $11 $11 $56
    dec  de                                       ; $719A: $1B
    dec  de                                       ; $719B: $1B
    dec  de                                       ; $719C: $1B
    dec  de                                       ; $719D: $1B
    add  hl, bc                                   ; $719E: $09
    ld   de, $1657                                ; $719F: $11 $57 $16
    rla                                           ; $71A2: $17
    dec  a                                        ; $71A3: $3D
    inc  l                                        ; $71A4: $2C
    inc  a                                        ; $71A5: $3C
    add  hl, hl                                   ; $71A6: $29
    ld   de, $4457                                ; $71A7: $11 $57 $44
    ld   e, b                                     ; $71AA: $58
    daa                                           ; $71AB: $27
    ld   e, c                                     ; $71AC: $59
    ld   e, d                                     ; $71AD: $5A
    dec  bc                                       ; $71AE: $0B
    ld   e, $11                                   ; $71AF: $1E $11
    ld   de, $3636                                ; $71B1: $11 $36 $36
    ld   de, $1111                                ; $71B4: $11 $11 $11
    ld   de, $0101                                ; $71B7: $11 $01 $01
    ld   bc, $0101                                ; $71BA: $01 $01 $01
    ld   bc, $0101                                ; $71BD: $01 $01 $01
    nop                                           ; $71C0: $00
    nop                                           ; $71C1: $00
    nop                                           ; $71C2: $00
    nop                                           ; $71C3: $00
    nop                                           ; $71C4: $00
    nop                                           ; $71C5: $00
    ld   bc, $0001                                ; $71C6: $01 $01 $00
    nop                                           ; $71C9: $00
    nop                                           ; $71CA: $00
    nop                                           ; $71CB: $00
    nop                                           ; $71CC: $00
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    nop                                           ; $71CF: $00
    nop                                           ; $71D0: $00
    nop                                           ; $71D1: $00
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    nop                                           ; $71D4: $00
    nop                                           ; $71D5: $00
    nop                                           ; $71D6: $00
    nop                                           ; $71D7: $00
    nop                                           ; $71D8: $00
    nop                                           ; $71D9: $00
    nop                                           ; $71DA: $00
    nop                                           ; $71DB: $00
    nop                                           ; $71DC: $00
    nop                                           ; $71DD: $00
    nop                                           ; $71DE: $00
    nop                                           ; $71DF: $00
    nop                                           ; $71E0: $00
    nop                                           ; $71E1: $00
    nop                                           ; $71E2: $00
    nop                                           ; $71E3: $00
    nop                                           ; $71E4: $00
    nop                                           ; $71E5: $00
    nop                                           ; $71E6: $00
    nop                                           ; $71E7: $00
    nop                                           ; $71E8: $00
    nop                                           ; $71E9: $00
    nop                                           ; $71EA: $00
    nop                                           ; $71EB: $00
    nop                                           ; $71EC: $00
    nop                                           ; $71ED: $00
    nop                                           ; $71EE: $00
    nop                                           ; $71EF: $00
    nop                                           ; $71F0: $00
    nop                                           ; $71F1: $00
    nop                                           ; $71F2: $00
    nop                                           ; $71F3: $00
    nop                                           ; $71F4: $00
    nop                                           ; $71F5: $00
    nop                                           ; $71F6: $00
    nop                                           ; $71F7: $00
    nop                                           ; $71F8: $00
    nop                                           ; $71F9: $00
    nop                                           ; $71FA: $00
    nop                                           ; $71FB: $00
    nop                                           ; $71FC: $00
    nop                                           ; $71FD: $00
    nop                                           ; $71FE: $00
    nop                                           ; $71FF: $00
    nop                                           ; $7200: $00
    nop                                           ; $7201: $00
    nop                                           ; $7202: $00
    nop                                           ; $7203: $00
    nop                                           ; $7204: $00
    nop                                           ; $7205: $00
    nop                                           ; $7206: $00
    nop                                           ; $7207: $00
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00
    ld   l, b                                     ; $720A: $68
    ld   l, c                                     ; $720B: $69
    ld   l, d                                     ; $720C: $6A
    ld   l, e                                     ; $720D: $6B
    nop                                           ; $720E: $00
    nop                                           ; $720F: $00
    nop                                           ; $7210: $00
    nop                                           ; $7211: $00
    ld   l, h                                     ; $7212: $6C
    ld   l, l                                     ; $7213: $6D
    ld   l, l                                     ; $7214: $6D
    ld   l, [hl]                                  ; $7215: $6E
    nop                                           ; $7216: $00
    nop                                           ; $7217: $00
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    ld   l, h                                     ; $721A: $6C
    ld   l, l                                     ; $721B: $6D
    ld   l, l                                     ; $721C: $6D
    ld   l, [hl]                                  ; $721D: $6E
    nop                                           ; $721E: $00
    nop                                           ; $721F: $00
    nop                                           ; $7220: $00
    nop                                           ; $7221: $00
    ld   l, h                                     ; $7222: $6C
    ld   l, l                                     ; $7223: $6D
    ld   l, l                                     ; $7224: $6D
    ld   l, [hl]                                  ; $7225: $6E
    nop                                           ; $7226: $00
    nop                                           ; $7227: $00
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    ld   l, h                                     ; $722A: $6C
    ld   l, [hl]                                  ; $722B: $6E
    ld   l, a                                     ; $722C: $6F
    ld   l, a                                     ; $722D: $6F
    nop                                           ; $722E: $00
    nop                                           ; $722F: $00
    nop                                           ; $7230: $00
    nop                                           ; $7231: $00
    ld   [hl], b                                  ; $7232: $70
    ld   [hl], c                                  ; $7233: $71
    nop                                           ; $7234: $00
    nop                                           ; $7235: $00
    nop                                           ; $7236: $00
    nop                                           ; $7237: $00
    ld   bc, $5B01                                ; $7238: $01 $01 $5B
    ld   e, h                                     ; $723B: $5C
    ld   e, h                                     ; $723C: $5C
    ld   e, h                                     ; $723D: $5C
    ld   de, $010A                                ; $723E: $11 $0A $01
    ld   bc, $5D11                                ; $7241: $01 $11 $5D
    add  hl, hl                                   ; $7244: $29
    add  hl, hl                                   ; $7245: $29
    ld   a, [hl+]                                 ; $7246: $2A
    ld   c, $01                                   ; $7247: $0E $01
    ld   bc, $5D39                                ; $7249: $01 $39 $5D
    ld   e, [hl]                                  ; $724C: $5E
    ld   e, a                                     ; $724D: $5F
    ld   e, $01                                   ; $724E: $1E $01
    ld   bc, $1101                                ; $7250: $01 $01 $11
    ld   d, $09                                   ; $7253: $16 $09
    ld   h, b                                     ; $7255: $60
    ld   h, b                                     ; $7256: $60
    ld   c, l                                     ; $7257: $4D
    ld   bc, $1101                                ; $7258: $01 $01 $11
    cpl                                           ; $725B: $2F
    cpl                                           ; $725C: $2F
    dec  de                                       ; $725D: $1B
    jr   jr_003_72C1                              ; $725E: $18 $61

    ld   bc, $3901                                ; $7260: $01 $01 $39
    ld   [bc], a                                  ; $7263: $02
    dec  l                                        ; $7264: $2D
    ld   e, $18                                   ; $7265: $1E $18
    ld   h, d                                     ; $7267: $62
    ld   bc, $3901                                ; $7268: $01 $01 $39
    ld   d, l                                     ; $726B: $55
    dec  bc                                       ; $726C: $0B
    ld   e, $2F                                   ; $726D: $1E $2F
    cpl                                           ; $726F: $2F
    ld   bc, $1101                                ; $7270: $01 $01 $11
    jr   nc, jr_003_72D5                          ; $7273: $30 $60

    ld   h, b                                     ; $7275: $60
    ld   h, e                                     ; $7276: $63
    ld   d, h                                     ; $7277: $54
    ld   a, [bc]                                  ; $7278: $0A
    ld   a, [bc]                                  ; $7279: $0A
    ld   h, h                                     ; $727A: $64
    ld   bc, $0101                                ; $727B: $01 $01 $01
    ld   bc, $3D01                                ; $727E: $01 $01 $3D
    ld   h, l                                     ; $7281: $65
    dec  [hl]                                     ; $7282: $35
    ld   bc, $0101                                ; $7283: $01 $01 $01
    ld   bc, $0E01                                ; $7286: $01 $01 $0E
    ld   a, [de]                                  ; $7289: $1A
    dec  [hl]                                     ; $728A: $35
    ld   bc, $0101                                ; $728B: $01 $01 $01
    ld   bc, $6601                                ; $728E: $01 $01 $66
    dec  e                                        ; $7291: $1D
    dec  [hl]                                     ; $7292: $35
    ld   bc, $0101                                ; $7293: $01 $01 $01
    ld   bc, $6701                                ; $7296: $01 $01 $67
    dec  e                                        ; $7299: $1D
    dec  [hl]                                     ; $729A: $35
    ld   bc, $0101                                ; $729B: $01 $01 $01
    ld   bc, $3B01                                ; $729E: $01 $01 $3B
    dec  e                                        ; $72A1: $1D
    dec  [hl]                                     ; $72A2: $35
    ld   bc, $0101                                ; $72A3: $01 $01 $01
    ld   bc, $1601                                ; $72A6: $01 $01 $16
    jr   c, jr_003_72E0                           ; $72A9: $38 $35

    ld   bc, $0101                                ; $72AB: $01 $01 $01
    ld   bc, $1B01                                ; $72AE: $01 $01 $1B
    ld   c, c                                     ; $72B1: $49
    ld   de, $0101                                ; $72B2: $11 $01 $01
    ld   bc, $0101                                ; $72B5: $01 $01 $01
    nop                                           ; $72B8: $00
    nop                                           ; $72B9: $00
    nop                                           ; $72BA: $00
    nop                                           ; $72BB: $00
    nop                                           ; $72BC: $00
    nop                                           ; $72BD: $00
    nop                                           ; $72BE: $00
    nop                                           ; $72BF: $00
    nop                                           ; $72C0: $00

jr_003_72C1:
    nop                                           ; $72C1: $00
    nop                                           ; $72C2: $00
    nop                                           ; $72C3: $00
    nop                                           ; $72C4: $00
    nop                                           ; $72C5: $00
    nop                                           ; $72C6: $00
    nop                                           ; $72C7: $00
    nop                                           ; $72C8: $00
    nop                                           ; $72C9: $00
    ld   [hl], d                                  ; $72CA: $72
    ld   [hl], e                                  ; $72CB: $73
    nop                                           ; $72CC: $00
    nop                                           ; $72CD: $00
    nop                                           ; $72CE: $00
    nop                                           ; $72CF: $00
    nop                                           ; $72D0: $00
    nop                                           ; $72D1: $00
    ld   l, h                                     ; $72D2: $6C
    ld   l, [hl]                                  ; $72D3: $6E
    nop                                           ; $72D4: $00

jr_003_72D5:
    nop                                           ; $72D5: $00
    nop                                           ; $72D6: $00
    nop                                           ; $72D7: $00
    ld   [hl], h                                  ; $72D8: $74
    ld   [hl], l                                  ; $72D9: $75
    ld   l, h                                     ; $72DA: $6C
    ld   l, [hl]                                  ; $72DB: $6E
    ld   [hl], l                                  ; $72DC: $75
    ld   [hl], l                                  ; $72DD: $75
    nop                                           ; $72DE: $00
    nop                                           ; $72DF: $00

jr_003_72E0:
    halt                                          ; $72E0: $76
    ld   [hl], a                                  ; $72E1: $77
    ld   a, b                                     ; $72E2: $78
    ld   a, c                                     ; $72E3: $79
    ld   a, d                                     ; $72E4: $7A
    ld   a, e                                     ; $72E5: $7B
    nop                                           ; $72E6: $00
    nop                                           ; $72E7: $00
    halt                                          ; $72E8: $76
    ld   a, h                                     ; $72E9: $7C
    ld   l, l                                     ; $72EA: $6D
    ld   l, l                                     ; $72EB: $6D
    ld   l, l                                     ; $72EC: $6D
    ld   l, [hl]                                  ; $72ED: $6E
    nop                                           ; $72EE: $00
    nop                                           ; $72EF: $00
    ld   a, l                                     ; $72F0: $7D
    ld   l, a                                     ; $72F1: $6F
    ld   l, a                                     ; $72F2: $6F
    ld   l, a                                     ; $72F3: $6F
    ld   l, a                                     ; $72F4: $6F
    ld   l, a                                     ; $72F5: $6F
    nop                                           ; $72F6: $00
    nop                                           ; $72F7: $00
    ld   bc, $3901                                ; $72F8: $01 $01 $39
    dec  c                                        ; $72FB: $0D
    ld   a, [bc]                                  ; $72FC: $0A
    jr   nc, @+$62                                ; $72FD: $30 $60

    ld   a, [bc]                                  ; $72FF: $0A
    ld   bc, $4001                                ; $7300: $01 $01 $40
    ld   c, $0E                                   ; $7303: $0E $0E
    ld   de, $0E11                                ; $7305: $11 $11 $0E
    ld   bc, $0101                                ; $7308: $01 $01 $01
    ld   bc, $0101                                ; $730B: $01 $01 $01
    ld   bc, $0101                                ; $730E: $01 $01 $01
    ld   bc, $7E11                                ; $7311: $01 $11 $7E
    ld   a, a                                     ; $7314: $7F
    ld   a, a                                     ; $7315: $7F
    ld   de, $0111                                ; $7316: $11 $11 $01
    ld   bc, $8011                                ; $7319: $01 $11 $80
    ld   c, d                                     ; $731C: $4A
    cpl                                           ; $731D: $2F
    add  c                                        ; $731E: $81
    cpl                                           ; $731F: $2F
    ld   bc, $1101                                ; $7320: $01 $01 $11
    add  b                                        ; $7323: $80
    add  d                                        ; $7324: $82
    ld   d, h                                     ; $7325: $54
    add  e                                        ; $7326: $83
    add  h                                        ; $7327: $84
    ld   bc, $1101                                ; $7328: $01 $01 $11
    ld   c, d                                     ; $732B: $4A
    rla                                           ; $732C: $17
    ld   l, $2C                                   ; $732D: $2E $2C
    jr   c, @+$03                                 ; $732F: $38 $01

    ld   bc, $4A11                                ; $7331: $01 $11 $4A
    add  hl, de                                   ; $7334: $19
    ld   c, $33                                   ; $7335: $0E $33
    ld   h, b                                     ; $7337: $60
    ld   a, [bc]                                  ; $7338: $0A
    add  l                                        ; $7339: $85
    dec  [hl]                                     ; $733A: $35
    ld   bc, $0101                                ; $733B: $01 $01 $01
    ld   bc, $0E00                                ; $733E: $01 $00 $0E
    ld   c, $37                                   ; $7341: $0E $37
    ld   bc, $0101                                ; $7343: $01 $01 $01
    ld   bc, $0100                                ; $7346: $01 $00 $01
    ld   bc, $0101                                ; $7349: $01 $01 $01
    ld   bc, $0101                                ; $734C: $01 $01 $01
    nop                                           ; $734F: $00
    ld   a, a                                     ; $7350: $7F
    ld   a, a                                     ; $7351: $7F
    ld   a, a                                     ; $7352: $7F
    ld   de, $0101                                ; $7353: $11 $01 $01
    ld   bc, $2F00                                ; $7356: $01 $00 $2F
    jr   nc, jr_003_73B2                          ; $7359: $30 $57

    ld   de, $0101                                ; $735B: $11 $01 $01
    ld   bc, $6500                                ; $735E: $01 $00 $65
    add  [hl]                                     ; $7361: $86
    jr   @+$13                                    ; $7362: $18 $11

    ld   bc, $0101                                ; $7364: $01 $01 $01
    nop                                           ; $7367: $00
    inc  c                                        ; $7368: $0C
    add  a                                        ; $7369: $87
    ld   e, l                                     ; $736A: $5D
    ld   de, $0101                                ; $736B: $11 $01 $01
    ld   bc, $6000                                ; $736E: $01 $00 $60
    ld   h, b                                     ; $7371: $60
    jr   jr_003_7385                              ; $7372: $18 $11

    ld   bc, $0101                                ; $7374: $01 $01 $01
    nop                                           ; $7377: $00
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    nop                                           ; $737A: $00
    nop                                           ; $737B: $00
    nop                                           ; $737C: $00
    nop                                           ; $737D: $00
    nop                                           ; $737E: $00
    nop                                           ; $737F: $00
    nop                                           ; $7380: $00
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    nop                                           ; $7383: $00
    nop                                           ; $7384: $00

jr_003_7385:
    nop                                           ; $7385: $00
    nop                                           ; $7386: $00
    nop                                           ; $7387: $00
    nop                                           ; $7388: $00
    nop                                           ; $7389: $00
    ld   [hl], l                                  ; $738A: $75
    ld   [hl], l                                  ; $738B: $75
    ld   [hl], l                                  ; $738C: $75
    ld   [hl], l                                  ; $738D: $75
    adc  b                                        ; $738E: $88
    nop                                           ; $738F: $00
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    adc  c                                        ; $7392: $89
    ld   [hl], a                                  ; $7393: $77
    ld   a, d                                     ; $7394: $7A
    ld   a, e                                     ; $7395: $7B
    adc  d                                        ; $7396: $8A
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    adc  e                                        ; $739A: $8B
    adc  h                                        ; $739B: $8C
    ld   l, l                                     ; $739C: $6D
    adc  l                                        ; $739D: $8D
    adc  d                                        ; $739E: $8A
    nop                                           ; $739F: $00
    nop                                           ; $73A0: $00
    nop                                           ; $73A1: $00
    adc  [hl]                                     ; $73A2: $8E
    ld   l, l                                     ; $73A3: $6D
    ld   l, l                                     ; $73A4: $6D
    adc  a                                        ; $73A5: $8F
    adc  d                                        ; $73A6: $8A
    nop                                           ; $73A7: $00
    nop                                           ; $73A8: $00
    nop                                           ; $73A9: $00
    ld   [hl], b                                  ; $73AA: $70
    sub  b                                        ; $73AB: $90
    ld   l, l                                     ; $73AC: $6D
    sub  c                                        ; $73AD: $91
    adc  d                                        ; $73AE: $8A
    nop                                           ; $73AF: $00
    nop                                           ; $73B0: $00
    nop                                           ; $73B1: $00

jr_003_73B2:
    nop                                           ; $73B2: $00
    sub  d                                        ; $73B3: $92
    sub  e                                        ; $73B4: $93
    sub  h                                        ; $73B5: $94
    nop                                           ; $73B6: $00
    nop                                           ; $73B7: $00
    nop                                           ; $73B8: $00
    nop                                           ; $73B9: $00
    nop                                           ; $73BA: $00
    nop                                           ; $73BB: $00
    nop                                           ; $73BC: $00
    nop                                           ; $73BD: $00
    nop                                           ; $73BE: $00
    nop                                           ; $73BF: $00
    nop                                           ; $73C0: $00
    nop                                           ; $73C1: $00
    nop                                           ; $73C2: $00
    nop                                           ; $73C3: $00
    nop                                           ; $73C4: $00
    nop                                           ; $73C5: $00
    nop                                           ; $73C6: $00
    nop                                           ; $73C7: $00
    nop                                           ; $73C8: $00
    ld   [hl], l                                  ; $73C9: $75
    ld   [hl], l                                  ; $73CA: $75
    ld   [hl], l                                  ; $73CB: $75
    adc  b                                        ; $73CC: $88
    nop                                           ; $73CD: $00
    nop                                           ; $73CE: $00
    nop                                           ; $73CF: $00
    nop                                           ; $73D0: $00
    ld   l, b                                     ; $73D1: $68
    sub  l                                        ; $73D2: $95
    sub  [hl]                                     ; $73D3: $96
    adc  d                                        ; $73D4: $8A
    nop                                           ; $73D5: $00
    nop                                           ; $73D6: $00
    nop                                           ; $73D7: $00
    nop                                           ; $73D8: $00
    ld   l, h                                     ; $73D9: $6C
    ld   l, l                                     ; $73DA: $6D
    ld   l, l                                     ; $73DB: $6D
    adc  d                                        ; $73DC: $8A
    nop                                           ; $73DD: $00
    nop                                           ; $73DE: $00
    nop                                           ; $73DF: $00
    nop                                           ; $73E0: $00
    ld   l, h                                     ; $73E1: $6C
    ld   l, l                                     ; $73E2: $6D
    ld   l, l                                     ; $73E3: $6D
    adc  d                                        ; $73E4: $8A
    nop                                           ; $73E5: $00
    nop                                           ; $73E6: $00
    nop                                           ; $73E7: $00
    nop                                           ; $73E8: $00
    ld   [hl], b                                  ; $73E9: $70
    sub  a                                        ; $73EA: $97
    sub  c                                        ; $73EB: $91
    adc  d                                        ; $73EC: $8A
    nop                                           ; $73ED: $00
    nop                                           ; $73EE: $00
    nop                                           ; $73EF: $00
    nop                                           ; $73F0: $00
    nop                                           ; $73F1: $00
    nop                                           ; $73F2: $00
    nop                                           ; $73F3: $00
    nop                                           ; $73F4: $00
    nop                                           ; $73F5: $00
    nop                                           ; $73F6: $00
    nop                                           ; $73F7: $00
    ld   l, b                                     ; $73F8: $68
    sbc  b                                        ; $73F9: $98
    adc  d                                        ; $73FA: $8A
    nop                                           ; $73FB: $00
    ld   l, b                                     ; $73FC: $68
    ld   l, c                                     ; $73FD: $69
    adc  d                                        ; $73FE: $8A
    nop                                           ; $73FF: $00
    ld   l, h                                     ; $7400: $6C
    ld   l, l                                     ; $7401: $6D
    sbc  c                                        ; $7402: $99
    sbc  d                                        ; $7403: $9A
    sbc  e                                        ; $7404: $9B
    sbc  h                                        ; $7405: $9C
    adc  d                                        ; $7406: $8A
    nop                                           ; $7407: $00
    ld   l, h                                     ; $7408: $6C
    sbc  l                                        ; $7409: $9D
    sub  c                                        ; $740A: $91
    sub  c                                        ; $740B: $91
    sub  b                                        ; $740C: $90
    sbc  [hl]                                     ; $740D: $9E
    adc  d                                        ; $740E: $8A
    nop                                           ; $740F: $00
    ld   [hl], b                                  ; $7410: $70
    sbc  a                                        ; $7411: $9F
    and  b                                        ; $7412: $A0
    and  c                                        ; $7413: $A1
    ld   [hl], b                                  ; $7414: $70
    sub  c                                        ; $7415: $91
    adc  d                                        ; $7416: $8A
    nop                                           ; $7417: $00
    and  b                                        ; $7418: $A0
    and  d                                        ; $7419: $A2
    ld   l, h                                     ; $741A: $6C
    ld   l, l                                     ; $741B: $6D
    and  e                                        ; $741C: $A3
    and  e                                        ; $741D: $A3
    adc  d                                        ; $741E: $8A
    nop                                           ; $741F: $00
    ld   l, h                                     ; $7420: $6C
    ld   l, l                                     ; $7421: $6D
    and  h                                        ; $7422: $A4
    and  l                                        ; $7423: $A5
    ld   [hl], b                                  ; $7424: $70
    and  [hl]                                     ; $7425: $A6
    adc  d                                        ; $7426: $8A
    nop                                           ; $7427: $00
    ld   l, a                                     ; $7428: $6F
    ld   l, a                                     ; $7429: $6F
    ld   l, a                                     ; $742A: $6F
    and  a                                        ; $742B: $A7
    nop                                           ; $742C: $00
    nop                                           ; $742D: $00
    nop                                           ; $742E: $00
    nop                                           ; $742F: $00
    xor  b                                        ; $7430: $A8
    xor  c                                        ; $7431: $A9
    xor  d                                        ; $7432: $AA
    xor  e                                        ; $7433: $AB
    xor  h                                        ; $7434: $AC
    xor  h                                        ; $7435: $AC
    xor  h                                        ; $7436: $AC
    xor  l                                        ; $7437: $AD
    xor  b                                        ; $7438: $A8
    xor  [hl]                                     ; $7439: $AE
    xor  a                                        ; $743A: $AF
    or   b                                        ; $743B: $B0
    or   c                                        ; $743C: $B1
    or   d                                        ; $743D: $B2
    or   b                                        ; $743E: $B0
    or   e                                        ; $743F: $B3
    xor  b                                        ; $7440: $A8
    xor  [hl]                                     ; $7441: $AE
    or   h                                        ; $7442: $B4
    or   l                                        ; $7443: $B5
    or   [hl]                                     ; $7444: $B6
    xor  d                                        ; $7445: $AA
    or   a                                        ; $7446: $B7
    or   e                                        ; $7447: $B3
    xor  b                                        ; $7448: $A8
    cp   b                                        ; $7449: $B8
    xor  d                                        ; $744A: $AA
    xor  d                                        ; $744B: $AA
    cp   c                                        ; $744C: $B9
    xor  [hl]                                     ; $744D: $AE
    cp   d                                        ; $744E: $BA
    or   e                                        ; $744F: $B3
    xor  b                                        ; $7450: $A8
    or   d                                        ; $7451: $B2
    cp   e                                        ; $7452: $BB
    or   l                                        ; $7453: $B5
    cp   h                                        ; $7454: $BC
    cp   l                                        ; $7455: $BD
    or   b                                        ; $7456: $B0
    or   e                                        ; $7457: $B3
    xor  b                                        ; $7458: $A8
    xor  [hl]                                     ; $7459: $AE
    cp   [hl]                                     ; $745A: $BE
    cp   a                                        ; $745B: $BF
    or   b                                        ; $745C: $B0
    ret  nz                                       ; $745D: $C0

    pop  bc                                       ; $745E: $C1
    or   e                                        ; $745F: $B3
    xor  b                                        ; $7460: $A8
    xor  [hl]                                     ; $7461: $AE
    jp   nz, $C4C3                                ; $7462: $C2 $C3 $C4

    adc  c                                        ; $7465: $89
    ld   l, a                                     ; $7466: $6F
    and  a                                        ; $7467: $A7
    push bc                                       ; $7468: $C5
    add  $C7                                      ; $7469: $C6 $C7
    ret  z                                        ; $746B: $C8

    ld   l, l                                     ; $746C: $6D
    ret                                           ; $746D: $C9


    nop                                           ; $746E: $00
    nop                                           ; $746F: $00
    nop                                           ; $7470: $00
    nop                                           ; $7471: $00
    jp   z, $AAAA                                 ; $7472: $CA $AA $AA

    cp   [hl]                                     ; $7475: $BE
    nop                                           ; $7476: $00
    nop                                           ; $7477: $00
    nop                                           ; $7478: $00
    set  1, h                                     ; $7479: $CB $CC
    cp   d                                        ; $747B: $BA
    cp   d                                        ; $747C: $BA
    call Call_000_00CE                            ; $747D: $CD $CE $00
    nop                                           ; $7480: $00
    xor  b                                        ; $7481: $A8
    or   d                                        ; $7482: $B2
    or   b                                        ; $7483: $B0
    or   b                                        ; $7484: $B0
    rst  RST_08                                   ; $7485: $CF
    ret  nc                                       ; $7486: $D0

    nop                                           ; $7487: $00
    nop                                           ; $7488: $00
    xor  b                                        ; $7489: $A8
    xor  d                                        ; $748A: $AA
    or   a                                        ; $748B: $B7
    jp   nz, $00BE                                ; $748C: $C2 $BE $00

    nop                                           ; $748F: $00
    nop                                           ; $7490: $00
    xor  b                                        ; $7491: $A8
    xor  [hl]                                     ; $7492: $AE
    xor  a                                        ; $7493: $AF
    xor  a                                        ; $7494: $AF
    or   [hl]                                     ; $7495: $B6
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    xor  b                                        ; $7499: $A8
    xor  [hl]                                     ; $749A: $AE
    pop  de                                       ; $749B: $D1
    xor  a                                        ; $749C: $AF
    or   [hl]                                     ; $749D: $B6
    nop                                           ; $749E: $00
    nop                                           ; $749F: $00
    nop                                           ; $74A0: $00
    xor  b                                        ; $74A1: $A8
    xor  [hl]                                     ; $74A2: $AE
    xor  a                                        ; $74A3: $AF
    xor  a                                        ; $74A4: $AF
    or   [hl]                                     ; $74A5: $B6
    nop                                           ; $74A6: $00
    nop                                           ; $74A7: $00
    nop                                           ; $74A8: $00
    jp   nc, $D3D3                                ; $74A9: $D2 $D3 $D3

    db   $D3                                      ; $74AC: $D3
    db   $D3                                      ; $74AD: $D3
    nop                                           ; $74AE: $00
    nop                                           ; $74AF: $00
    nop                                           ; $74B0: $00
    nop                                           ; $74B1: $00
    call nc, $929A                                ; $74B2: $D4 $9A $92
    nop                                           ; $74B5: $00
    nop                                           ; $74B6: $00
    nop                                           ; $74B7: $00
    nop                                           ; $74B8: $00
    call nc, $D6D5                                ; $74B9: $D4 $D5 $D6
    rst  WriteBgMapTilePair                       ; $74BC: $D7
    sub  d                                        ; $74BD: $92
    nop                                           ; $74BE: $00
    nop                                           ; $74BF: $00
    nop                                           ; $74C0: $00
    ld   l, h                                     ; $74C1: $6C
    sub  $D6                                      ; $74C2: $D6 $D6
    sub  $6E                                      ; $74C4: $D6 $6E
    nop                                           ; $74C6: $00
    nop                                           ; $74C7: $00
    nop                                           ; $74C8: $00
    ret  c                                        ; $74C9: $D8

    reti                                          ; $74CA: $D9


    ld   l, l                                     ; $74CB: $6D
    jp   c, $00A5                                 ; $74CC: $DA $A5 $00

    nop                                           ; $74CF: $00
    nop                                           ; $74D0: $00
    nop                                           ; $74D1: $00
    ld   l, h                                     ; $74D2: $6C
    sbc  l                                        ; $74D3: $9D
    ld   l, [hl]                                  ; $74D4: $6E
    nop                                           ; $74D5: $00
    nop                                           ; $74D6: $00
    nop                                           ; $74D7: $00
    nop                                           ; $74D8: $00
    nop                                           ; $74D9: $00
    ret  c                                        ; $74DA: $D8

    ld   a, h                                     ; $74DB: $7C
    and  l                                        ; $74DC: $A5
    nop                                           ; $74DD: $00
    nop                                           ; $74DE: $00
    nop                                           ; $74DF: $00
    nop                                           ; $74E0: $00
    nop                                           ; $74E1: $00
    halt                                          ; $74E2: $76
    ld   a, h                                     ; $74E3: $7C
    adc  d                                        ; $74E4: $8A
    nop                                           ; $74E5: $00
    nop                                           ; $74E6: $00
    ld   bc, $0000                                ; $74E7: $01 $00 $00
    call nc, $927C                                ; $74EA: $D4 $7C $92
    nop                                           ; $74ED: $00
    nop                                           ; $74EE: $00
    ld   bc, $0101                                ; $74EF: $01 $01 $01
    ld   de, $4A4A                                ; $74F2: $11 $4A $4A
    ld   e, e                                     ; $74F5: $5B
    jr   nc, @+$1A                                ; $74F6: $30 $18

    ld   bc, $1101                                ; $74F8: $01 $01 $11
    add  hl, hl                                   ; $74FB: $29
    inc  l                                        ; $74FC: $2C
    db   $DB                                      ; $74FD: $DB
    dec  sp                                       ; $74FE: $3B
    ld   a, [bc]                                  ; $74FF: $0A
    ld   bc, $1101                                ; $7500: $01 $01 $11
    dec  l                                        ; $7503: $2D
    inc  bc                                       ; $7504: $03
    inc  l                                        ; $7505: $2C
    ld   bc, $0103                                ; $7506: $01 $03 $01
    ld   bc, $DC11                                ; $7509: $01 $11 $DC
    call c, Call_003_60DD                         ; $750C: $DC $DD $60
    sbc  $01                                      ; $750F: $DE $01
    ld   bc, $1111                                ; $7511: $01 $11 $11
    ld   de, $1111                                ; $7514: $11 $11 $11
    ld   de, $0101                                ; $7517: $11 $01 $01
    ld   bc, $0101                                ; $751A: $01 $01 $01
    ld   bc, $0101                                ; $751D: $01 $01 $01
    ld   bc, $5C11                                ; $7520: $01 $11 $5C
    ld   e, h                                     ; $7523: $5C
    ld   e, h                                     ; $7524: $5C
    ld   a, a                                     ; $7525: $7F
    ld   de, $017F                                ; $7526: $11 $7F $01
    ld   de, $0A57                                ; $7529: $11 $57 $0A
    inc  bc                                       ; $752C: $03
    inc  l                                        ; $752D: $2C
    jr   @+$24                                    ; $752E: $18 $22

    cpl                                           ; $7530: $2F
    cpl                                           ; $7531: $2F
    cpl                                           ; $7532: $2F
    ld   de, $0101                                ; $7533: $11 $01 $01
    ld   bc, $0200                                ; $7536: $01 $00 $02
    inc  bc                                       ; $7539: $03
    inc  l                                        ; $753A: $2C
    ld   de, $0101                                ; $753B: $11 $01 $01
    ld   bc, $0300                                ; $753E: $01 $00 $03
    dec  l                                        ; $7541: $2D
    ld   e, $01                                   ; $7542: $1E $01
    ld   bc, $0101                                ; $7544: $01 $01 $01
    nop                                           ; $7547: $00
    call c, $1EDC                                 ; $7548: $DC $DC $1E
    ld   bc, $0101                                ; $754B: $01 $01 $01
    ld   bc, $1100                                ; $754E: $01 $00 $11
    ld   de, $0111                                ; $7551: $11 $11 $01
    ld   bc, $0101                                ; $7554: $01 $01 $01
    nop                                           ; $7557: $00
    ld   bc, $0101                                ; $7558: $01 $01 $01
    ld   bc, $0101                                ; $755B: $01 $01 $01
    ld   bc, $7F00                                ; $755E: $01 $00 $7F
    ld   a, a                                     ; $7561: $7F
    ld   a, a                                     ; $7562: $7F
    ld   de, $0101                                ; $7563: $11 $01 $01
    ld   bc, $0A00                                ; $7566: $01 $00 $0A
    ld   h, h                                     ; $7569: $64
    add  hl, sp                                   ; $756A: $39
    ld   de, $0101                                ; $756B: $11 $01 $01
    ld   bc, $0000                                ; $756E: $01 $00 $00
    ld   l, h                                     ; $7571: $6C
    and  c                                        ; $7572: $A1
    and  h                                        ; $7573: $A4
    ld   l, l                                     ; $7574: $6D
    ld   [hl], c                                  ; $7575: $71
    nop                                           ; $7576: $00
    nop                                           ; $7577: $00
    nop                                           ; $7578: $00
    ld   l, a                                     ; $7579: $6F
    ld   l, a                                     ; $757A: $6F
    ld   [hl], b                                  ; $757B: $70
    sub  c                                        ; $757C: $91
    adc  d                                        ; $757D: $8A
    nop                                           ; $757E: $00
    nop                                           ; $757F: $00
    nop                                           ; $7580: $00
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    ldh  a, [c]                                   ; $7584: $F2
    nop                                           ; $7585: $00
    nop                                           ; $7586: $00
    nop                                           ; $7587: $00
    halt                                          ; $7588: $76
    sbc  d                                        ; $7589: $9A
    adc  c                                        ; $758A: $89
    adc  c                                        ; $758B: $89
    sub  d                                        ; $758C: $92
    nop                                           ; $758D: $00
    nop                                           ; $758E: $00
    nop                                           ; $758F: $00
    halt                                          ; $7590: $76
    ld   a, h                                     ; $7591: $7C
    and  c                                        ; $7592: $A1
    and  c                                        ; $7593: $A1
    ld   l, [hl]                                  ; $7594: $6E
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    halt                                          ; $7598: $76
    ld   a, h                                     ; $7599: $7C
    ld   l, l                                     ; $759A: $6D
    ld   l, l                                     ; $759B: $6D
    ld   l, [hl]                                  ; $759C: $6E
    nop                                           ; $759D: $00
    nop                                           ; $759E: $00
    nop                                           ; $759F: $00
    ld   a, l                                     ; $75A0: $7D
    ld   l, a                                     ; $75A1: $6F
    di                                            ; $75A2: $F3
    ld   l, a                                     ; $75A3: $6F
    ld   l, a                                     ; $75A4: $6F
    nop                                           ; $75A5: $00
    nop                                           ; $75A6: $00
    nop                                           ; $75A7: $00
    nop                                           ; $75A8: $00
    nop                                           ; $75A9: $00
    nop                                           ; $75AA: $00
    nop                                           ; $75AB: $00
    nop                                           ; $75AC: $00
    nop                                           ; $75AD: $00
    nop                                           ; $75AE: $00
    nop                                           ; $75AF: $00
    ld   [hl], l                                  ; $75B0: $75
    ld   [hl], l                                  ; $75B1: $75
    ld   [hl], l                                  ; $75B2: $75
    ld   [hl], l                                  ; $75B3: $75
    ld   [hl], l                                  ; $75B4: $75
    ld   [hl], l                                  ; $75B5: $75
    nop                                           ; $75B6: $00
    nop                                           ; $75B7: $00
    ld   l, b                                     ; $75B8: $68
    rst  RST_20                                   ; $75B9: $E7
    db   $F4                                      ; $75BA: $F4
    push af                                       ; $75BB: $F5
    rst  RST_20                                   ; $75BC: $E7
    ld   l, e                                     ; $75BD: $6B
    nop                                           ; $75BE: $00
    nop                                           ; $75BF: $00
    ld   [hl], b                                  ; $75C0: $70
    db   $E4                                      ; $75C1: $E4
    or   $F7                                      ; $75C2: $F6 $F7
    ld   l, l                                     ; $75C4: $6D
    ld   [hl], c                                  ; $75C5: $71
    nop                                           ; $75C6: $00
    nop                                           ; $75C7: $00
    halt                                          ; $75C8: $76
    ld   a, h                                     ; $75C9: $7C
    sbc  l                                        ; $75CA: $9D
    sbc  [hl]                                     ; $75CB: $9E
    ld   l, l                                     ; $75CC: $6D
    adc  d                                        ; $75CD: $8A
    nop                                           ; $75CE: $00
    nop                                           ; $75CF: $00
    halt                                          ; $75D0: $76
    adc  c                                        ; $75D1: $89
    ld   [hl], b                                  ; $75D2: $70
    ld   [hl], c                                  ; $75D3: $71
    adc  c                                        ; $75D4: $89
    adc  d                                        ; $75D5: $8A
    nop                                           ; $75D6: $00
    nop                                           ; $75D7: $00
    nop                                           ; $75D8: $00
    nop                                           ; $75D9: $00
    nop                                           ; $75DA: $00
    nop                                           ; $75DB: $00
    nop                                           ; $75DC: $00
    nop                                           ; $75DD: $00
    nop                                           ; $75DE: $00
    nop                                           ; $75DF: $00
    nop                                           ; $75E0: $00
    nop                                           ; $75E1: $00
    nop                                           ; $75E2: $00
    nop                                           ; $75E3: $00
    nop                                           ; $75E4: $00
    nop                                           ; $75E5: $00
    nop                                           ; $75E6: $00
    nop                                           ; $75E7: $00
    nop                                           ; $75E8: $00
    halt                                          ; $75E9: $76
    sbc  c                                        ; $75EA: $99
    sbc  c                                        ; $75EB: $99
    sbc  c                                        ; $75EC: $99
    sbc  c                                        ; $75ED: $99
    adc  d                                        ; $75EE: $8A
    nop                                           ; $75EF: $00
    nop                                           ; $75F0: $00
    halt                                          ; $75F1: $76
    ld   a, h                                     ; $75F2: $7C
    rst  RST_18                                   ; $75F3: $DF
    ldh  [$FF6D], a                               ; $75F4: $E0 $6D
    adc  d                                        ; $75F6: $8A
    nop                                           ; $75F7: $00
    nop                                           ; $75F8: $00
    halt                                          ; $75F9: $76
    ld   a, h                                     ; $75FA: $7C
    pop  hl                                       ; $75FB: $E1
    ldh  [c], a                                   ; $75FC: $E2
    ld   l, l                                     ; $75FD: $6D
    adc  d                                        ; $75FE: $8A
    nop                                           ; $75FF: $00
    nop                                           ; $7600: $00
    halt                                          ; $7601: $76
    db   $E3                                      ; $7602: $E3
    db   $E4                                      ; $7603: $E4
    ld   l, l                                     ; $7604: $6D
    sub  c                                        ; $7605: $91
    adc  d                                        ; $7606: $8A
    nop                                           ; $7607: $00
    nop                                           ; $7608: $00
    halt                                          ; $7609: $76
    adc  c                                        ; $760A: $89
    push hl                                       ; $760B: $E5
    and  $89                                      ; $760C: $E6 $89
    adc  d                                        ; $760E: $8A
    nop                                           ; $760F: $00
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    ld   [hl], h                                  ; $7619: $74
    ld   [hl], l                                  ; $761A: $75
    ld   [hl], l                                  ; $761B: $75
    ld   [hl], l                                  ; $761C: $75
    adc  b                                        ; $761D: $88
    nop                                           ; $761E: $00
    nop                                           ; $761F: $00
    nop                                           ; $7620: $00
    db   $ED                                      ; $7621: $ED
    ld   [hl], a                                  ; $7622: $77
    ld   a, d                                     ; $7623: $7A
    ld   a, d                                     ; $7624: $7A
    xor  $00                                      ; $7625: $EE $00
    nop                                           ; $7627: $00
    nop                                           ; $7628: $00
    rst  RST_28                                   ; $7629: $EF
    adc  h                                        ; $762A: $8C
    ld   l, l                                     ; $762B: $6D
    ld   l, l                                     ; $762C: $6D
    ld   a, e                                     ; $762D: $7B
    nop                                           ; $762E: $00
    nop                                           ; $762F: $00
    nop                                           ; $7630: $00
    ld   [hl], b                                  ; $7631: $70
    sub  b                                        ; $7632: $90
    ld   l, l                                     ; $7633: $6D
    ldh  a, [$FF71]                               ; $7634: $F0 $71
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    nop                                           ; $7639: $00
    ld   [hl], b                                  ; $763A: $70
    pop  af                                       ; $763B: $F1
    ld   [hl], c                                  ; $763C: $71
    nop                                           ; $763D: $00
    nop                                           ; $763E: $00
    nop                                           ; $763F: $00
    nop                                           ; $7640: $00
    nop                                           ; $7641: $00
    nop                                           ; $7642: $00
    nop                                           ; $7643: $00
    nop                                           ; $7644: $00
    nop                                           ; $7645: $00
    nop                                           ; $7646: $00
    nop                                           ; $7647: $00
    nop                                           ; $7648: $00
    nop                                           ; $7649: $00
    nop                                           ; $764A: $00
    nop                                           ; $764B: $00
    nop                                           ; $764C: $00
    nop                                           ; $764D: $00
    nop                                           ; $764E: $00
    nop                                           ; $764F: $00
    halt                                          ; $7650: $76
    adc  c                                        ; $7651: $89
    rst  RST_20                                   ; $7652: $E7
    rst  RST_20                                   ; $7653: $E7
    ld   l, e                                     ; $7654: $6B
    adc  c                                        ; $7655: $89
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    halt                                          ; $7658: $76
    rst  RST_20                                   ; $7659: $E7
    ld   a, h                                     ; $765A: $7C
    ld   l, l                                     ; $765B: $6D
    add  sp, $6B                                  ; $765C: $E8 $6B
    nop                                           ; $765E: $00
    nop                                           ; $765F: $00
    halt                                          ; $7660: $76
    jp   hl                                       ; $7661: $E9


    sbc  [hl]                                     ; $7662: $9E
    ld   [$EB8F], a                               ; $7663: $EA $8F $EB
    nop                                           ; $7666: $00
    nop                                           ; $7667: $00
    halt                                          ; $7668: $76
    ld   a, h                                     ; $7669: $7C
    ld   l, l                                     ; $766A: $6D
    ld   l, l                                     ; $766B: $6D
    ld   [$006E], a                               ; $766C: $EA $6E $00
    nop                                           ; $766F: $00
    halt                                          ; $7670: $76
    adc  c                                        ; $7671: $89
    adc  c                                        ; $7672: $89
    push hl                                       ; $7673: $E5
    db   $EC                                      ; $7674: $EC
    and  $00                                      ; $7675: $E6 $00
    nop                                           ; $7677: $00
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    nop                                           ; $767A: $00
    nop                                           ; $767B: $00
    nop                                           ; $767C: $00
    nop                                           ; $767D: $00
    nop                                           ; $767E: $00
    nop                                           ; $767F: $00
    nop                                           ; $7680: $00
    nop                                           ; $7681: $00
    ld   l, h                                     ; $7682: $6C
    ld   l, l                                     ; $7683: $6D
    ld   l, [hl]                                  ; $7684: $6E
    nop                                           ; $7685: $00
    nop                                           ; $7686: $00
    ld   bc, $0000                                ; $7687: $01 $00 $00
    ld   l, h                                     ; $768A: $6C
    ld   [$006E], a                               ; $768B: $EA $6E $00
    nop                                           ; $768E: $00
    ld   bc, $0000                                ; $768F: $01 $00 $00
    ld   l, h                                     ; $7692: $6C
    sbc  h                                        ; $7693: $9C
    ld   l, [hl]                                  ; $7694: $6E
    nop                                           ; $7695: $00
    nop                                           ; $7696: $00
    ld   bc, $0000                                ; $7697: $01 $00 $00
    ld   l, h                                     ; $769A: $6C
    ld   l, l                                     ; $769B: $6D
    ld   l, [hl]                                  ; $769C: $6E
    nop                                           ; $769D: $00
    nop                                           ; $769E: $00
    ld   bc, $0000                                ; $769F: $01 $00 $00
    ret  c                                        ; $76A2: $D8

    ld   a, h                                     ; $76A3: $7C
    and  l                                        ; $76A4: $A5
    nop                                           ; $76A5: $00
    nop                                           ; $76A6: $00
    ld   bc, $0000                                ; $76A7: $01 $00 $00
    halt                                          ; $76AA: $76
    ld   a, h                                     ; $76AB: $7C
    adc  d                                        ; $76AC: $8A
    nop                                           ; $76AD: $00
    nop                                           ; $76AE: $00
    ld   bc, $0000                                ; $76AF: $01 $00 $00
    halt                                          ; $76B2: $76
    adc  c                                        ; $76B3: $89
    adc  d                                        ; $76B4: $8A
    nop                                           ; $76B5: $00
    nop                                           ; $76B6: $00
    ld   bc, $0000                                ; $76B7: $01 $00 $00
    halt                                          ; $76BA: $76
    adc  c                                        ; $76BB: $89
    adc  d                                        ; $76BC: $8A
    nop                                           ; $76BD: $00
    nop                                           ; $76BE: $00
    ld   bc, $1101                                ; $76BF: $01 $01 $11
    ld   d, a                                     ; $76C2: $57
    ld   d, l                                     ; $76C3: $55
    sbc  $1E                                      ; $76C4: $DE $1E
    jr   @-$06                                    ; $76C6: $18 $F8

    ld   bc, $1611                                ; $76C8: $01 $11 $16
    add  hl, bc                                   ; $76CB: $09
    ld   h, b                                     ; $76CC: $60
    ld   h, b                                     ; $76CD: $60
    jr   jr_003_7711                              ; $76CE: $18 $41

    ld   bc, $1611                                ; $76D0: $01 $11 $16
    add  hl, bc                                   ; $76D3: $09
    ld   d, $22                                   ; $76D4: $16 $22
    ld   a, [bc]                                  ; $76D6: $0A
    ld   hl, $1101                                ; $76D7: $21 $01 $11
    ld   d, a                                     ; $76DA: $57
    ld   [hl+], a                                 ; $76DB: $22
    ld   hl, $17F8                                ; $76DC: $21 $F8 $17
    ld   sp, hl                                   ; $76DF: $F9
    ld   bc, $5711                                ; $76E0: $01 $11 $57
    ld   a, [$FB3B]                               ; $76E3: $FA $3B $FB
    db   $FC                                      ; $76E6: $FC
    db   $FD                                      ; $76E7: $FD
    ld   bc, $5711                                ; $76E8: $01 $11 $57
    ld   e, h                                     ; $76EB: $5C
    ld   e, h                                     ; $76EC: $5C
    ld   h, b                                     ; $76ED: $60
    jr   jr_003_7750                              ; $76EE: $18 $60

    ld   bc, $4811                                ; $76F0: $01 $11 $48
    ld   c, b                                     ; $76F3: $48
    ld   c, b                                     ; $76F4: $48
    ld   de, $1111                                ; $76F5: $11 $11 $11
    ld   bc, $0101                                ; $76F8: $01 $01 $01
    ld   bc, $0101                                ; $76FB: $01 $01 $01
    ld   bc, $3D01                                ; $76FE: $01 $01 $3D
    rla                                           ; $7701: $17
    ld   d, a                                     ; $7702: $57
    ld   de, $0101                                ; $7703: $11 $01 $01
    ld   bc, $1900                                ; $7706: $01 $00 $19
    ld   c, $18                                   ; $7709: $0E $18
    ld   de, $0101                                ; $770B: $11 $01 $01
    ld   bc, $1B00                                ; $770E: $01 $00 $1B

jr_003_7711:
    dec  de                                       ; $7711: $1B
    jr   @+$13                                    ; $7712: $18 $11

    ld   bc, $0101                                ; $7714: $01 $01 $01
    nop                                           ; $7717: $00
    add  hl, sp                                   ; $7718: $39
    dec  [hl]                                     ; $7719: $35
    add  hl, sp                                   ; $771A: $39
    ld   de, $0101                                ; $771B: $11 $01 $01
    ld   bc, $0100                                ; $771E: $01 $00 $01
    ld   bc, $1139                                ; $7721: $01 $39 $11
    ld   bc, $0101                                ; $7724: $01 $01 $01
    nop                                           ; $7727: $00
    ld   d, a                                     ; $7728: $57
    dec  [hl]                                     ; $7729: $35
    add  hl, sp                                   ; $772A: $39
    ld   de, $0101                                ; $772B: $11 $01 $01
    ld   bc, $4800                                ; $772E: $01 $00 $48
    ld   c, b                                     ; $7731: $48
    ld   c, b                                     ; $7732: $48
    ld   de, $0101                                ; $7733: $11 $01 $01
    ld   bc, $0100                                ; $7736: $01 $00 $01
    ld   bc, $0101                                ; $7739: $01 $01 $01
    ld   bc, $0101                                ; $773C: $01 $01 $01
    nop                                           ; $773F: $00
    db   $10                                      ; $7740: $10
    db   $10                                      ; $7741: $10
    db   $10                                      ; $7742: $10
    stop                                          ; $7743: $10 $00
    nop                                           ; $7745: $00
    nop                                           ; $7746: $00
    nop                                           ; $7747: $00
    inc  h                                        ; $7748: $24
    inc  h                                        ; $7749: $24
    inc  h                                        ; $774A: $24
    inc  c                                        ; $774B: $0C
    inc  h                                        ; $774C: $24
    inc  h                                        ; $774D: $24
    inc  h                                        ; $774E: $24
    inc  h                                        ; $774F: $24

jr_003_7750:
    inc  h                                        ; $7750: $24
    inc  h                                        ; $7751: $24
    jr   z, jr_003_777C                           ; $7752: $28 $28

    inc  h                                        ; $7754: $24
    inc  h                                        ; $7755: $24
    inc  h                                        ; $7756: $24
    jr   z, @+$1A                                 ; $7757: $28 $18

    inc  e                                        ; $7759: $1C
    jr   jr_003_7778                              ; $775A: $18 $1C

    inc  h                                        ; $775C: $24
    jr   jr_003_7783                              ; $775D: $18 $24

    jr   jr_003_7761                              ; $775F: $18 $00

jr_003_7761:
    nop                                           ; $7761: $00
    ld   e, b                                     ; $7762: $58
    ld   e, b                                     ; $7763: $58
    nop                                           ; $7764: $00
    inc  e                                        ; $7765: $1C
    nop                                           ; $7766: $00
    inc  e                                        ; $7767: $1C
    nop                                           ; $7768: $00
    nop                                           ; $7769: $00
    inc  h                                        ; $776A: $24
    inc  h                                        ; $776B: $24
    jr   c, jr_003_7792                           ; $776C: $38 $24

    jr   z, jr_003_7798                           ; $776E: $28 $28

    jr   c, jr_003_7796                           ; $7770: $38 $24

    jr   nz, jr_003_779C                          ; $7772: $20 $28

    inc  h                                        ; $7774: $24
    jr   jr_003_779B                              ; $7775: $18 $24

    inc  h                                        ; $7777: $24

jr_003_7778:
    jr   z, jr_003_77A2                           ; $7778: $28 $28

    nop                                           ; $777A: $00
    nop                                           ; $777B: $00

jr_003_777C:
    ld   d, b                                     ; $777C: $50
    ld   d, b                                     ; $777D: $50
    ld   e, b                                     ; $777E: $58
    inc  e                                        ; $777F: $1C
    ld   d, b                                     ; $7780: $50
    ld   d, b                                     ; $7781: $50
    inc  e                                        ; $7782: $1C

jr_003_7783:
    inc  e                                        ; $7783: $1C
    nop                                           ; $7784: $00
    nop                                           ; $7785: $00
    nop                                           ; $7786: $00
    nop                                           ; $7787: $00
    inc  c                                        ; $7788: $0C
    inc  h                                        ; $7789: $24
    jr   z, jr_003_77B4                           ; $778A: $28 $28

    ld   e, b                                     ; $778C: $58
    nop                                           ; $778D: $00
    ld   e, b                                     ; $778E: $58
    ld   e, b                                     ; $778F: $58
    ld   e, b                                     ; $7790: $58
    ld   b, b                                     ; $7791: $40

jr_003_7792:
    ld   e, b                                     ; $7792: $58
    ld   c, b                                     ; $7793: $48
    ld   b, h                                     ; $7794: $44
    ld   e, b                                     ; $7795: $58

jr_003_7796:
    ld   e, b                                     ; $7796: $58
    ld   e, b                                     ; $7797: $58

jr_003_7798:
    inc  e                                        ; $7798: $1C
    nop                                           ; $7799: $00
    inc  e                                        ; $779A: $1C

jr_003_779B:
    nop                                           ; $779B: $00

jr_003_779C:
    inc  h                                        ; $779C: $24
    inc  h                                        ; $779D: $24
    inc  h                                        ; $779E: $24
    jr   c, jr_003_77BD                           ; $779F: $38 $1C

    inc  e                                        ; $77A1: $1C

jr_003_77A2:
    inc  e                                        ; $77A2: $1C
    inc  e                                        ; $77A3: $1C
    jr   z, jr_003_77C6                           ; $77A4: $28 $20

    nop                                           ; $77A6: $00
    nop                                           ; $77A7: $00
    jr   z, jr_003_77CE                           ; $77A8: $28 $24

    nop                                           ; $77AA: $00
    inc  h                                        ; $77AB: $24
    inc  e                                        ; $77AC: $1C
    inc  e                                        ; $77AD: $1C
    nop                                           ; $77AE: $00
    nop                                           ; $77AF: $00
    inc  e                                        ; $77B0: $1C
    nop                                           ; $77B1: $00
    nop                                           ; $77B2: $00
    ld   e, b                                     ; $77B3: $58

jr_003_77B4:
    nop                                           ; $77B4: $00
    inc  h                                        ; $77B5: $24
    nop                                           ; $77B6: $00
    inc  h                                        ; $77B7: $24
    jr   jr_003_77BA                              ; $77B8: $18 $00

jr_003_77BA:
    jr   jr_003_77BC                              ; $77BA: $18 $00

jr_003_77BC:
    nop                                           ; $77BC: $00

jr_003_77BD:
    ld   e, b                                     ; $77BD: $58
    nop                                           ; $77BE: $00
    ld   e, b                                     ; $77BF: $58
    jr   c, jr_003_77CE                           ; $77C0: $38 $0C

    jr   z, jr_003_77EC                           ; $77C2: $28 $28

    nop                                           ; $77C4: $00
    nop                                           ; $77C5: $00

jr_003_77C6:
    inc  h                                        ; $77C6: $24
    nop                                           ; $77C7: $00
    nop                                           ; $77C8: $00
    nop                                           ; $77C9: $00
    nop                                           ; $77CA: $00
    inc  h                                        ; $77CB: $24
    nop                                           ; $77CC: $00
    nop                                           ; $77CD: $00

jr_003_77CE:
    jr   c, jr_003_77DC                           ; $77CE: $38 $0C

    nop                                           ; $77D0: $00
    inc  h                                        ; $77D1: $24
    inc  h                                        ; $77D2: $24
    inc  h                                        ; $77D3: $24
    jr   z, jr_003_77EE                           ; $77D4: $28 $18

    inc  e                                        ; $77D6: $1C
    inc  e                                        ; $77D7: $1C
    nop                                           ; $77D8: $00
    jr   z, jr_003_77F7                           ; $77D9: $28 $1C

    inc  e                                        ; $77DB: $1C

jr_003_77DC:
    jr   z, @+$2A                                 ; $77DC: $28 $28

    inc  e                                        ; $77DE: $1C
    inc  e                                        ; $77DF: $1C
    jr   jr_003_77FE                              ; $77E0: $18 $1C

    inc  e                                        ; $77E2: $1C
    inc  e                                        ; $77E3: $1C
    ld   e, h                                     ; $77E4: $5C
    ld   e, h                                     ; $77E5: $5C
    inc  h                                        ; $77E6: $24
    inc  h                                        ; $77E7: $24
    inc  e                                        ; $77E8: $1C
    inc  e                                        ; $77E9: $1C
    jr   jr_003_77EC                              ; $77EA: $18 $00

jr_003_77EC:
    inc  e                                        ; $77EC: $1C
    ld   e, h                                     ; $77ED: $5C

jr_003_77EE:
    nop                                           ; $77EE: $00
    inc  h                                        ; $77EF: $24
    nop                                           ; $77F0: $00
    nop                                           ; $77F1: $00
    jr   jr_003_77F4                              ; $77F2: $18 $00

jr_003_77F4:
    inc  h                                        ; $77F4: $24
    inc  c                                        ; $77F5: $0C
    inc  h                                        ; $77F6: $24

jr_003_77F7:
    inc  h                                        ; $77F7: $24
    inc  h                                        ; $77F8: $24
    inc  h                                        ; $77F9: $24
    jr   c, @+$0E                                 ; $77FA: $38 $0C

    inc  e                                        ; $77FC: $1C
    inc  e                                        ; $77FD: $1C

jr_003_77FE:
    ld   e, h                                     ; $77FE: $5C
    ld   e, h                                     ; $77FF: $5C
    inc  e                                        ; $7800: $1C
    inc  e                                        ; $7801: $1C
    ld   e, h                                     ; $7802: $5C
    inc  e                                        ; $7803: $1C
    inc  h                                        ; $7804: $24
    jr   z, jr_003_782B                           ; $7805: $28 $24

    jr   jr_003_7829                              ; $7807: $18 $20

    jr   z, jr_003_7827                           ; $7809: $28 $1C

    nop                                           ; $780B: $00
    jr   jr_003_780E                              ; $780C: $18 $00

jr_003_780E:
    nop                                           ; $780E: $00
    nop                                           ; $780F: $00
    ld   b, b                                     ; $7810: $40
    ld   b, h                                     ; $7811: $44
    ld   c, b                                     ; $7812: $48
    ld   e, h                                     ; $7813: $5C
    ld   e, h                                     ; $7814: $5C
    nop                                           ; $7815: $00
    ld   e, h                                     ; $7816: $5C
    nop                                           ; $7817: $00
    ld   e, h                                     ; $7818: $5C
    ld   e, h                                     ; $7819: $5C
    nop                                           ; $781A: $00
    nop                                           ; $781B: $00
    ld   e, h                                     ; $781C: $5C
    nop                                           ; $781D: $00
    nop                                           ; $781E: $00
    nop                                           ; $781F: $00
    nop                                           ; $7820: $00
    inc  h                                        ; $7821: $24
    nop                                           ; $7822: $00
    jr   z, jr_003_7825                           ; $7823: $28 $00

jr_003_7825:
    ld   e, h                                     ; $7825: $5C
    nop                                           ; $7826: $00

jr_003_7827:
    ld   e, h                                     ; $7827: $5C
    ld   e, h                                     ; $7828: $5C

jr_003_7829:
    inc  h                                        ; $7829: $24
    ld   e, h                                     ; $782A: $5C

jr_003_782B:
    jr   z, jr_003_7851                           ; $782B: $28 $24

    jr   jr_003_7857                              ; $782D: $18 $28

    jr   jr_003_7831                              ; $782F: $18 $00

jr_003_7831:
    ld   e, h                                     ; $7831: $5C
    nop                                           ; $7832: $00
    inc  h                                        ; $7833: $24
    inc  h                                        ; $7834: $24
    inc  h                                        ; $7835: $24
    jr   c, @+$3A                                 ; $7836: $38 $38

    nop                                           ; $7838: $00
    inc  e                                        ; $7839: $1C
    jr   jr_003_7858                              ; $783A: $18 $1C

    jr   z, jr_003_7856                           ; $783C: $28 $18

    inc  e                                        ; $783E: $1C
    nop                                           ; $783F: $00
    nop                                           ; $7840: $00
    ld   e, h                                     ; $7841: $5C
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    nop                                           ; $7844: $00
    jr   z, jr_003_7847                           ; $7845: $28 $00

jr_003_7847:
    nop                                           ; $7847: $00
    jr   nz, jr_003_7872                          ; $7848: $20 $28

    nop                                           ; $784A: $00
    nop                                           ; $784B: $00
    jr   @+$1E                                    ; $784C: $18 $1C

    nop                                           ; $784E: $00
    inc  e                                        ; $784F: $1C
    inc  e                                        ; $7850: $1C

jr_003_7851:
    nop                                           ; $7851: $00
    inc  e                                        ; $7852: $1C
    inc  e                                        ; $7853: $1C
    ld   e, h                                     ; $7854: $5C
    nop                                           ; $7855: $00

jr_003_7856:
    ld   e, h                                     ; $7856: $5C

jr_003_7857:
    inc  e                                        ; $7857: $1C

jr_003_7858:
    nop                                           ; $7858: $00
    inc  e                                        ; $7859: $1C
    inc  e                                        ; $785A: $1C
    inc  e                                        ; $785B: $1C
    ld   d, b                                     ; $785C: $50
    ld   d, b                                     ; $785D: $50
    ld   e, h                                     ; $785E: $5C
    nop                                           ; $785F: $00
    ld   d, b                                     ; $7860: $50
    ld   d, b                                     ; $7861: $50
    nop                                           ; $7862: $00
    nop                                           ; $7863: $00
    inc  e                                        ; $7864: $1C
    inc  e                                        ; $7865: $1C
    nop                                           ; $7866: $00
    inc  e                                        ; $7867: $1C
    ld   [$0808], sp                              ; $7868: $08 $08 $08
    ld   [$5C08], sp                              ; $786B: $08 $08 $5C
    ld   [$5C5C], sp                              ; $786E: $08 $5C $5C
    nop                                           ; $7871: $00

jr_003_7872:
    ld   d, h                                     ; $7872: $54
    nop                                           ; $7873: $00
    ld   e, h                                     ; $7874: $5C
    ld   e, h                                     ; $7875: $5C
    ld   d, h                                     ; $7876: $54
    ld   d, h                                     ; $7877: $54
    ld   d, h                                     ; $7878: $54
    nop                                           ; $7879: $00
    nop                                           ; $787A: $00
    ld   d, h                                     ; $787B: $54
    nop                                           ; $787C: $00
    inc  e                                        ; $787D: $1C
    ld   e, h                                     ; $787E: $5C
    ld   e, h                                     ; $787F: $5C
    inc  h                                        ; $7880: $24
    ld   d, b                                     ; $7881: $50
    inc  h                                        ; $7882: $24
    jr   jr_003_78D5                              ; $7883: $18 $50

    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    nop                                           ; $7887: $00
    nop                                           ; $7888: $00
    ld   d, b                                     ; $7889: $50
    nop                                           ; $788A: $00
    nop                                           ; $788B: $00
    ld   d, b                                     ; $788C: $50
    ld   e, h                                     ; $788D: $5C
    nop                                           ; $788E: $00
    ld   d, b                                     ; $788F: $50
    ld   d, h                                     ; $7890: $54
    ld   e, h                                     ; $7891: $5C
    ld   d, b                                     ; $7892: $50
    ld   d, b                                     ; $7893: $50
    jr   c, jr_003_78CE                           ; $7894: $38 $38

    jr   z, jr_003_78B8                           ; $7896: $28 $20

    inc  e                                        ; $7898: $1C
    inc  e                                        ; $7899: $1C
    inc  e                                        ; $789A: $1C
    nop                                           ; $789B: $00
    ld   e, h                                     ; $789C: $5C
    ld   e, h                                     ; $789D: $5C
    ld   e, h                                     ; $789E: $5C
    ld   e, h                                     ; $789F: $5C
    jr   z, jr_003_78C2                           ; $78A0: $28 $20

    inc  e                                        ; $78A2: $1C
    inc  e                                        ; $78A3: $1C
    jr   jr_003_78A6                              ; $78A4: $18 $00

jr_003_78A6:
    inc  e                                        ; $78A6: $1C
    inc  e                                        ; $78A7: $1C
    nop                                           ; $78A8: $00
    inc  h                                        ; $78A9: $24
    inc  e                                        ; $78AA: $1C
    jr   z, jr_003_78AD                           ; $78AB: $28 $00

jr_003_78AD:
    nop                                           ; $78AD: $00
    nop                                           ; $78AE: $00
    ld   e, h                                     ; $78AF: $5C
    nop                                           ; $78B0: $00
    nop                                           ; $78B1: $00
    ld   e, h                                     ; $78B2: $5C
    ld   e, h                                     ; $78B3: $5C
    inc  e                                        ; $78B4: $1C
    ld   e, h                                     ; $78B5: $5C
    inc  e                                        ; $78B6: $1C
    ld   e, h                                     ; $78B7: $5C

jr_003_78B8:
    inc  h                                        ; $78B8: $24
    jr   c, jr_003_78BF                           ; $78B9: $38 $04

    jr   nz, jr_003_78F5                          ; $78BB: $20 $38

    inc  h                                        ; $78BD: $24
    inc  b                                        ; $78BE: $04

jr_003_78BF:
    jr   z, jr_003_78C1                           ; $78BF: $28 $00

jr_003_78C1:
    nop                                           ; $78C1: $00

jr_003_78C2:
    inc  e                                        ; $78C2: $1C
    inc  e                                        ; $78C3: $1C
    ld   d, b                                     ; $78C4: $50
    nop                                           ; $78C5: $00
    inc  h                                        ; $78C6: $24
    inc  h                                        ; $78C7: $24
    inc  h                                        ; $78C8: $24
    jr   c, jr_003_78F3                           ; $78C9: $38 $28

    jr   nz, @+$52                                ; $78CB: $20 $50

    ld   d, h                                     ; $78CD: $54

jr_003_78CE:
    ld   d, b                                     ; $78CE: $50
    ld   d, b                                     ; $78CF: $50
    nop                                           ; $78D0: $00
    nop                                           ; $78D1: $00
    ld   e, h                                     ; $78D2: $5C
    nop                                           ; $78D3: $00
    inc  c                                        ; $78D4: $0C

jr_003_78D5:
    inc  h                                        ; $78D5: $24
    inc  h                                        ; $78D6: $24
    inc  h                                        ; $78D7: $24
    ld   e, h                                     ; $78D8: $5C
    ld   e, h                                     ; $78D9: $5C
    ld   d, h                                     ; $78DA: $54
    ld   e, h                                     ; $78DB: $5C
    nop                                           ; $78DC: $00
    ld   e, h                                     ; $78DD: $5C
    inc  h                                        ; $78DE: $24
    ld   d, b                                     ; $78DF: $50
    inc  d                                        ; $78E0: $14
    inc  d                                        ; $78E1: $14
    inc  d                                        ; $78E2: $14
    jr   z, jr_003_78F9                           ; $78E3: $28 $14

    jr   nc, jr_003_78EB                          ; $78E5: $30 $04

    jr   nc, jr_003_7915                          ; $78E7: $30 $2C

    inc  d                                        ; $78E9: $14
    inc  l                                        ; $78EA: $2C

jr_003_78EB:
    inc  b                                        ; $78EB: $04
    inc  d                                        ; $78EC: $14
    inc  d                                        ; $78ED: $14
    jr   z, jr_003_7904                           ; $78EE: $28 $14

    inc  d                                        ; $78F0: $14
    jr   nc, jr_003_7907                          ; $78F1: $30 $14

jr_003_78F3:
    jr   nc, @+$2E                                ; $78F3: $30 $2C

jr_003_78F5:
    inc  l                                        ; $78F5: $2C
    inc  l                                        ; $78F6: $2C
    inc  l                                        ; $78F7: $2C
    inc  l                                        ; $78F8: $2C

jr_003_78F9:
    inc  d                                        ; $78F9: $14
    inc  l                                        ; $78FA: $2C
    inc  d                                        ; $78FB: $14
    inc  d                                        ; $78FC: $14
    inc  d                                        ; $78FD: $14
    db   $10                                      ; $78FE: $10
    db   $10                                      ; $78FF: $10
    inc  d                                        ; $7900: $14
    jr   nc, jr_003_7917                          ; $7901: $30 $14

    inc  d                                        ; $7903: $14

jr_003_7904:
    inc  l                                        ; $7904: $2C
    inc  d                                        ; $7905: $14
    inc  d                                        ; $7906: $14

jr_003_7907:
    inc  d                                        ; $7907: $14
    inc  d                                        ; $7908: $14
    jr   nc, @+$16                                ; $7909: $30 $14

    jr   nc, jr_003_7939                          ; $790B: $30 $2C

    inc  d                                        ; $790D: $14
    inc  l                                        ; $790E: $2C
    inc  d                                        ; $790F: $14
    db   $10                                      ; $7910: $10
    db   $10                                      ; $7911: $10
    db   $10                                      ; $7912: $10
    inc  d                                        ; $7913: $14
    db   $10                                      ; $7914: $10

jr_003_7915:
    db   $10                                      ; $7915: $10
    inc  d                                        ; $7916: $14

jr_003_7917:
    inc  d                                        ; $7917: $14
    db   $10                                      ; $7918: $10
    inc  d                                        ; $7919: $14
    db   $10                                      ; $791A: $10
    inc  d                                        ; $791B: $14
    jr   z, jr_003_7946                           ; $791C: $28 $28

    jr   nc, jr_003_794C                          ; $791E: $30 $2C

    jr   z, jr_003_7952                           ; $7920: $28 $30

    inc  l                                        ; $7922: $2C
    inc  l                                        ; $7923: $2C
    inc  l                                        ; $7924: $2C
    jr   z, jr_003_7953                           ; $7925: $28 $2C

    inc  l                                        ; $7927: $2C
    jr   z, jr_003_7952                           ; $7928: $28 $28

    inc  l                                        ; $792A: $2C
    inc  l                                        ; $792B: $2C
    jr   z, @+$16                                 ; $792C: $28 $14

    inc  l                                        ; $792E: $2C
    inc  d                                        ; $792F: $14
    jr   nc, @+$2E                                ; $7930: $30 $2C

    jr   nc, @+$2E                                ; $7932: $30 $2C

    db   $10                                      ; $7934: $10
    inc  d                                        ; $7935: $14
    db   $10                                      ; $7936: $10
    stop                                          ; $7937: $10 $00

jr_003_7939:
    nop                                           ; $7939: $00
    ld   e, h                                     ; $793A: $5C
    ld   d, b                                     ; $793B: $50
    nop                                           ; $793C: $00
    nop                                           ; $793D: $00
    ld   d, b                                     ; $793E: $50
    ld   d, b                                     ; $793F: $50
    ld   e, h                                     ; $7940: $5C
    ld   [$085C], sp                              ; $7941: $08 $5C $08
    inc  e                                        ; $7944: $1C
    inc  e                                        ; $7945: $1C

jr_003_7946:
    nop                                           ; $7946: $00
    ld   e, h                                     ; $7947: $5C
    ld   [$5008], sp                              ; $7948: $08 $08 $50
    ld   d, b                                     ; $794B: $50

jr_003_794C:
    nop                                           ; $794C: $00
    ld   e, h                                     ; $794D: $5C
    nop                                           ; $794E: $00
    ld   d, b                                     ; $794F: $50
    ld   e, h                                     ; $7950: $5C
    inc  h                                        ; $7951: $24

jr_003_7952:
    ld   d, b                                     ; $7952: $50

jr_003_7953:
    inc  h                                        ; $7953: $24
    nop                                           ; $7954: $00
    ld   e, h                                     ; $7955: $5C
    inc  h                                        ; $7956: $24
    inc  h                                        ; $7957: $24
    inc  h                                        ; $7958: $24
    nop                                           ; $7959: $00
    inc  h                                        ; $795A: $24
    jr   jr_003_7995                              ; $795B: $18 $38

    jr   jr_003_7987                              ; $795D: $18 $28

    jr   @+$12                                    ; $795F: $18 $10

    db   $10                                      ; $7961: $10
    inc  d                                        ; $7962: $14
    db   $10                                      ; $7963: $10
    inc  d                                        ; $7964: $14
    inc  d                                        ; $7965: $14
    inc  d                                        ; $7966: $14
    inc  d                                        ; $7967: $14
    inc  d                                        ; $7968: $14
    db   $10                                      ; $7969: $10
    inc  d                                        ; $796A: $14
    db   $10                                      ; $796B: $10
    inc  d                                        ; $796C: $14
    inc  b                                        ; $796D: $04
    inc  d                                        ; $796E: $14
    ld   c, h                                     ; $796F: $4C
    jr   nc, jr_003_799E                          ; $7970: $30 $2C

    inc  l                                        ; $7972: $2C
    inc  l                                        ; $7973: $2C
    inc  l                                        ; $7974: $2C
    inc  b                                        ; $7975: $04
    inc  l                                        ; $7976: $2C
    ld   c, h                                     ; $7977: $4C
    inc  d                                        ; $7978: $14
    ld   c, h                                     ; $7979: $4C
    inc  d                                        ; $797A: $14
    jr   nc, jr_003_79A9                          ; $797B: $30 $2C

    ld   c, h                                     ; $797D: $4C
    inc  l                                        ; $797E: $2C
    inc  l                                        ; $797F: $2C
    inc  l                                        ; $7980: $2C
    inc  l                                        ; $7981: $2C
    inc  d                                        ; $7982: $14
    jr   nc, jr_003_79B1                          ; $7983: $30 $2C

    inc  l                                        ; $7985: $2C
    inc  d                                        ; $7986: $14

jr_003_7987:
    inc  d                                        ; $7987: $14
    inc  d                                        ; $7988: $14
    inc  d                                        ; $7989: $14
    inc  b                                        ; $798A: $04
    inc  d                                        ; $798B: $14
    jr   nc, jr_003_79A2                          ; $798C: $30 $14

    jr   nc, @+$16                                ; $798E: $30 $14

    inc  d                                        ; $7990: $14
    db   $10                                      ; $7991: $10
    inc  b                                        ; $7992: $04
    db   $10                                      ; $7993: $10
    inc  d                                        ; $7994: $14

jr_003_7995:
    jr   z, @+$2A                                 ; $7995: $28 $28

    jr   nc, jr_003_79C1                          ; $7997: $30 $28

    inc  d                                        ; $7999: $14
    inc  l                                        ; $799A: $2C
    jr   z, @+$2E                                 ; $799B: $28 $2C

    inc  l                                        ; $799D: $2C

jr_003_799E:
    inc  d                                        ; $799E: $14
    jr   nc, jr_003_79B5                          ; $799F: $30 $14

    inc  d                                        ; $79A1: $14

jr_003_79A2:
    inc  b                                        ; $79A2: $04
    jr   z, jr_003_79B9                           ; $79A3: $28 $14

    inc  d                                        ; $79A5: $14
    jr   z, jr_003_79AC                           ; $79A6: $28 $04

    inc  d                                        ; $79A8: $14

jr_003_79A9:
    inc  d                                        ; $79A9: $14
    inc  b                                        ; $79AA: $04
    inc  b                                        ; $79AB: $04

jr_003_79AC:
    inc  d                                        ; $79AC: $14
    jr   nc, jr_003_79D7                          ; $79AD: $30 $28

    jr   nc, jr_003_79DD                          ; $79AF: $30 $2C

jr_003_79B1:
    inc  l                                        ; $79B1: $2C
    inc  c                                        ; $79B2: $0C
    inc  l                                        ; $79B3: $2C
    inc  c                                        ; $79B4: $0C

jr_003_79B5:
    inc  l                                        ; $79B5: $2C
    inc  l                                        ; $79B6: $2C
    inc  l                                        ; $79B7: $2C
    inc  l                                        ; $79B8: $2C

jr_003_79B9:
    inc  l                                        ; $79B9: $2C
    inc  l                                        ; $79BA: $2C
    inc  c                                        ; $79BB: $0C
    inc  l                                        ; $79BC: $2C
    inc  l                                        ; $79BD: $2C
    jr   nc, jr_003_79D4                          ; $79BE: $30 $14

    inc  d                                        ; $79C0: $14

jr_003_79C1:
    inc  b                                        ; $79C1: $04
    inc  d                                        ; $79C2: $14
    jr   nc, @+$06                                ; $79C3: $30 $04

    inc  b                                        ; $79C5: $04
    inc  l                                        ; $79C6: $2C
    inc  l                                        ; $79C7: $2C
    jr   nc, @+$06                                ; $79C8: $30 $04

    inc  l                                        ; $79CA: $2C
    inc  l                                        ; $79CB: $2C
    inc  b                                        ; $79CC: $04
    jr   z, jr_003_79FB                           ; $79CD: $28 $2C

    inc  l                                        ; $79CF: $2C
    inc  b                                        ; $79D0: $04
    jr   nc, jr_003_79FF                          ; $79D1: $30 $2C

    inc  l                                        ; $79D3: $2C

jr_003_79D4:
    inc  d                                        ; $79D4: $14
    inc  d                                        ; $79D5: $14
    inc  d                                        ; $79D6: $14

jr_003_79D7:
    db   $10                                      ; $79D7: $10
    inc  l                                        ; $79D8: $2C
    inc  l                                        ; $79D9: $2C
    jr   nc, jr_003_79F0                          ; $79DA: $30 $14

    inc  d                                        ; $79DC: $14

jr_003_79DD:
    db   $10                                      ; $79DD: $10
    db   $10                                      ; $79DE: $10
    db   $10                                      ; $79DF: $10
    db   $10                                      ; $79E0: $10
    ld   [hl], b                                  ; $79E1: $70
    db   $10                                      ; $79E2: $10
    ld   [hl], b                                  ; $79E3: $70
    ld   h, b                                     ; $79E4: $60
    ld   [hl], b                                  ; $79E5: $70
    ld   h, b                                     ; $79E6: $60
    ld   [hl], h                                  ; $79E7: $74
    ld   [hl], b                                  ; $79E8: $70
    ld   [hl], b                                  ; $79E9: $70
    ld   [hl], h                                  ; $79EA: $74
    ld   [hl], h                                  ; $79EB: $74
    ld   [hl], b                                  ; $79EC: $70
    db   $10                                      ; $79ED: $10
    ld   [hl], b                                  ; $79EE: $70
    ld   [hl], b                                  ; $79EF: $70

jr_003_79F0:
    db   $10                                      ; $79F0: $10
    db   $10                                      ; $79F1: $10
    ld   [hl], b                                  ; $79F2: $70
    ld   [hl], b                                  ; $79F3: $70
    db   $10                                      ; $79F4: $10
    db   $10                                      ; $79F5: $10
    ld   [hl], b                                  ; $79F6: $70
    db   $10                                      ; $79F7: $10
    ld   h, b                                     ; $79F8: $60
    ld   h, h                                     ; $79F9: $64
    ld   h, b                                     ; $79FA: $60

jr_003_79FB:
    ld   h, h                                     ; $79FB: $64
    ld   h, h                                     ; $79FC: $64
    ld   h, h                                     ; $79FD: $64
    ld   h, h                                     ; $79FE: $64

jr_003_79FF:
    ld   h, h                                     ; $79FF: $64
    ld   [hl], h                                  ; $7A00: $74
    ld   [hl], h                                  ; $7A01: $74
    ld   h, h                                     ; $7A02: $64
    ld   h, h                                     ; $7A03: $64
    ld   [hl], h                                  ; $7A04: $74
    ld   [hl], b                                  ; $7A05: $70
    ld   h, h                                     ; $7A06: $64
    ld   [hl], b                                  ; $7A07: $70
    ld   [hl], h                                  ; $7A08: $74
    ld   [hl], h                                  ; $7A09: $74
    ld   h, b                                     ; $7A0A: $60
    ld   h, h                                     ; $7A0B: $64
    ld   [hl], b                                  ; $7A0C: $70
    db   $10                                      ; $7A0D: $10
    ld   [hl], b                                  ; $7A0E: $70
    db   $10                                      ; $7A0F: $10
    ld   h, h                                     ; $7A10: $64
    ld   h, h                                     ; $7A11: $64
    ld   h, h                                     ; $7A12: $64
    inc  [hl]                                     ; $7A13: $34
    ld   h, h                                     ; $7A14: $64
    ld   h, h                                     ; $7A15: $64
    inc  [hl]                                     ; $7A16: $34
    inc  [hl]                                     ; $7A17: $34
    ld   h, h                                     ; $7A18: $64
    ld   [hl], b                                  ; $7A19: $70
    ld   h, h                                     ; $7A1A: $64
    ld   [hl], b                                  ; $7A1B: $70
    inc  [hl]                                     ; $7A1C: $34
    ld   h, h                                     ; $7A1D: $64
    inc  [hl]                                     ; $7A1E: $34
    ld   h, h                                     ; $7A1F: $64
    ld   [hl], b                                  ; $7A20: $70
    ld   [hl], b                                  ; $7A21: $70
    ld   [hl], b                                  ; $7A22: $70
    ld   [hl], b                                  ; $7A23: $70
    ld   h, b                                     ; $7A24: $60
    ld   [hl], b                                  ; $7A25: $70
    ld   h, b                                     ; $7A26: $60
    ld   [hl], b                                  ; $7A27: $70
    ld   h, h                                     ; $7A28: $64
    ld   h, h                                     ; $7A29: $64
    ld   [hl], b                                  ; $7A2A: $70
    ld   [hl], b                                  ; $7A2B: $70
    ld   h, b                                     ; $7A2C: $60
    ld   h, h                                     ; $7A2D: $64
    ld   h, h                                     ; $7A2E: $64
    ld   h, h                                     ; $7A2F: $64
    ld   h, h                                     ; $7A30: $64
    ld   [hl], b                                  ; $7A31: $70
    ld   [hl], b                                  ; $7A32: $70
    ld   [hl], b                                  ; $7A33: $70
    ld   h, b                                     ; $7A34: $60
    ld   h, h                                     ; $7A35: $64
    ld   [hl], b                                  ; $7A36: $70
    ld   h, b                                     ; $7A37: $60
    ld   [hl], b                                  ; $7A38: $70
    ld   [hl], b                                  ; $7A39: $70
    ld   [hl], h                                  ; $7A3A: $74
    ld   [hl], b                                  ; $7A3B: $70
    ld   [hl], b                                  ; $7A3C: $70
    ld   [hl], h                                  ; $7A3D: $74
    ld   [hl], b                                  ; $7A3E: $70
    ld   h, b                                     ; $7A3F: $60
    ld   [hl], h                                  ; $7A40: $74
    ld   h, b                                     ; $7A41: $60
    ld   h, h                                     ; $7A42: $64
    ld   h, h                                     ; $7A43: $64
    ld   h, h                                     ; $7A44: $64
    ld   h, h                                     ; $7A45: $64
    ld   l, b                                     ; $7A46: $68
    ld   h, h                                     ; $7A47: $64
    inc  [hl]                                     ; $7A48: $34
    ld   [hl], b                                  ; $7A49: $70
    inc  [hl]                                     ; $7A4A: $34
    ld   [hl], h                                  ; $7A4B: $74
    ld   [hl], b                                  ; $7A4C: $70
    ld   h, b                                     ; $7A4D: $60
    ld   [hl], h                                  ; $7A4E: $74
    ld   h, b                                     ; $7A4F: $60
    ld   h, h                                     ; $7A50: $64
    ld   h, h                                     ; $7A51: $64
    ld   l, b                                     ; $7A52: $68
    ld   l, b                                     ; $7A53: $68
    db   $10                                      ; $7A54: $10
    ld   [hl], b                                  ; $7A55: $70
    db   $10                                      ; $7A56: $10
    inc  d                                        ; $7A57: $14
    ld   h, b                                     ; $7A58: $60
    ld   l, b                                     ; $7A59: $68
    inc  d                                        ; $7A5A: $14
    jr   nc, jr_003_7A89                          ; $7A5B: $30 $2C

    ld   l, b                                     ; $7A5D: $68
    inc  d                                        ; $7A5E: $14
    inc  d                                        ; $7A5F: $14
    inc  l                                        ; $7A60: $2C
    ld   l, b                                     ; $7A61: $68
    inc  d                                        ; $7A62: $14
    inc  l                                        ; $7A63: $2C
    inc  b                                        ; $7A64: $04
    inc  d                                        ; $7A65: $14
    inc  l                                        ; $7A66: $2C
    inc  d                                        ; $7A67: $14
    ld   [hl], b                                  ; $7A68: $70
    ld   [hl], b                                  ; $7A69: $70
    ld   [hl], b                                  ; $7A6A: $70
    ld   [hl], h                                  ; $7A6B: $74
    db   $10                                      ; $7A6C: $10
    db   $10                                      ; $7A6D: $10
    db   $10                                      ; $7A6E: $10
    ld   [hl], b                                  ; $7A6F: $70
    ld   [hl], b                                  ; $7A70: $70
    ld   h, b                                     ; $7A71: $60
    ld   [hl], b                                  ; $7A72: $70
    ld   [hl], b                                  ; $7A73: $70
    ld   h, h                                     ; $7A74: $64
    ld   [hl], b                                  ; $7A75: $70
    ld   h, b                                     ; $7A76: $60
    ld   [hl], h                                  ; $7A77: $74
    ld   [hl], b                                  ; $7A78: $70
    db   $10                                      ; $7A79: $10
    ld   [hl], h                                  ; $7A7A: $74
    db   $10                                      ; $7A7B: $10
    ld   h, b                                     ; $7A7C: $60
    ld   h, h                                     ; $7A7D: $64
    ld   h, h                                     ; $7A7E: $64
    ld   [hl], b                                  ; $7A7F: $70
    ld   h, h                                     ; $7A80: $64
    db   $10                                      ; $7A81: $10
    ld   [hl], b                                  ; $7A82: $70
    db   $10                                      ; $7A83: $10
    ld   h, h                                     ; $7A84: $64
    ld   h, h                                     ; $7A85: $64
    ld   h, h                                     ; $7A86: $64
    ld   a, h                                     ; $7A87: $7C
    db   $10                                      ; $7A88: $10

jr_003_7A89:
    ld   [hl], b                                  ; $7A89: $70
    db   $10                                      ; $7A8A: $10
    db   $10                                      ; $7A8B: $10
    ld   [hl], b                                  ; $7A8C: $70
    ld   [hl], b                                  ; $7A8D: $70
    db   $10                                      ; $7A8E: $10
    db   $10                                      ; $7A8F: $10
    inc  d                                        ; $7A90: $14
    inc  d                                        ; $7A91: $14
    inc  d                                        ; $7A92: $14
    inc  b                                        ; $7A93: $04
    inc  d                                        ; $7A94: $14
    ld   l, h                                     ; $7A95: $6C
    inc  b                                        ; $7A96: $04
    ld   l, h                                     ; $7A97: $6C
    ld   a, b                                     ; $7A98: $78
    ld   a, b                                     ; $7A99: $78
    ld   a, b                                     ; $7A9A: $78
    ld   a, b                                     ; $7A9B: $78
    ld   l, h                                     ; $7A9C: $6C
    inc  d                                        ; $7A9D: $14
    ld   l, h                                     ; $7A9E: $6C
    inc  b                                        ; $7A9F: $04
    inc  d                                        ; $7AA0: $14
    inc  d                                        ; $7AA1: $14
    db   $10                                      ; $7AA2: $10
    inc  d                                        ; $7AA3: $14
    jr   nc, jr_003_7AD2                          ; $7AA4: $30 $2C

    inc  d                                        ; $7AA6: $14
    jr   nc, jr_003_7AB5                          ; $7AA7: $30 $0C

    inc  l                                        ; $7AA9: $2C
    inc  l                                        ; $7AAA: $2C
    inc  d                                        ; $7AAB: $14
    nop                                           ; $7AAC: $00
    inc  h                                        ; $7AAD: $24
    nop                                           ; $7AAE: $00
    jr   nz, jr_003_7AE9                          ; $7AAF: $20 $38

    jr   c, jr_003_7ADB                           ; $7AB1: $38 $28

    jr   z, @+$1A                                 ; $7AB3: $28 $18

jr_003_7AB5:
    nop                                           ; $7AB5: $00
    jr   jr_003_7AD4                              ; $7AB6: $18 $1C

    inc  h                                        ; $7AB8: $24
    jr   c, jr_003_7AE3                           ; $7AB9: $38 $28

    jr   z, jr_003_7AE9                           ; $7ABB: $28 $2C

    inc  l                                        ; $7ABD: $2C
    ld   c, h                                     ; $7ABE: $4C
    inc  d                                        ; $7ABF: $14
    inc  l                                        ; $7AC0: $2C
    inc  l                                        ; $7AC1: $2C
    inc  d                                        ; $7AC2: $14
    ld   c, h                                     ; $7AC3: $4C
    ld   c, h                                     ; $7AC4: $4C
    inc  d                                        ; $7AC5: $14
    ld   c, h                                     ; $7AC6: $4C
    jr   z, jr_003_7ADD                           ; $7AC7: $28 $14

    ld   c, h                                     ; $7AC9: $4C
    jr   z, @+$4E                                 ; $7ACA: $28 $4C

    jr   nc, jr_003_7AFA                          ; $7ACC: $30 $2C

    inc  d                                        ; $7ACE: $14
    inc  d                                        ; $7ACF: $14
    inc  l                                        ; $7AD0: $2C
    inc  l                                        ; $7AD1: $2C

jr_003_7AD2:
    jr   nc, @+$2E                                ; $7AD2: $30 $2C

jr_003_7AD4:
    inc  d                                        ; $7AD4: $14
    jr   nc, jr_003_7AEB                          ; $7AD5: $30 $14

    jr   nc, jr_003_7B05                          ; $7AD7: $30 $2C

    inc  d                                        ; $7AD9: $14
    inc  l                                        ; $7ADA: $2C

jr_003_7ADB:
    inc  d                                        ; $7ADB: $14
    inc  d                                        ; $7ADC: $14

jr_003_7ADD:
    inc  d                                        ; $7ADD: $14
    jr   z, jr_003_7B08                           ; $7ADE: $28 $28

    inc  l                                        ; $7AE0: $2C
    inc  d                                        ; $7AE1: $14
    inc  l                                        ; $7AE2: $2C

jr_003_7AE3:
    jr   z, @+$4E                                 ; $7AE3: $28 $4C

    ld   c, h                                     ; $7AE5: $4C
    jr   nc, jr_003_7B14                          ; $7AE6: $30 $2C

    inc  l                                        ; $7AE8: $2C

jr_003_7AE9:
    inc  c                                        ; $7AE9: $0C
    inc  l                                        ; $7AEA: $2C

jr_003_7AEB:
    inc  l                                        ; $7AEB: $2C
    ld   c, h                                     ; $7AEC: $4C
    inc  d                                        ; $7AED: $14
    inc  l                                        ; $7AEE: $2C
    inc  d                                        ; $7AEF: $14
    inc  l                                        ; $7AF0: $2C
    inc  l                                        ; $7AF1: $2C
    inc  l                                        ; $7AF2: $2C
    inc  l                                        ; $7AF3: $2C
    db   $10                                      ; $7AF4: $10
    inc  d                                        ; $7AF5: $14
    inc  d                                        ; $7AF6: $14
    inc  d                                        ; $7AF7: $14
    inc  d                                        ; $7AF8: $14
    db   $10                                      ; $7AF9: $10

jr_003_7AFA:
    inc  d                                        ; $7AFA: $14
    inc  d                                        ; $7AFB: $14
    inc  d                                        ; $7AFC: $14
    jr   z, jr_003_7B13                           ; $7AFD: $28 $14

    jr   nc, jr_003_7B2D                          ; $7AFF: $30 $2C

    inc  l                                        ; $7B01: $2C
    inc  l                                        ; $7B02: $2C
    inc  d                                        ; $7B03: $14
    inc  l                                        ; $7B04: $2C

jr_003_7B05:
    inc  l                                        ; $7B05: $2C
    jr   nc, jr_003_7B34                          ; $7B06: $30 $2C

jr_003_7B08:
    db   $10                                      ; $7B08: $10
    db   $10                                      ; $7B09: $10
    db   $10                                      ; $7B0A: $10
    db   $10                                      ; $7B0B: $10
    jr   nc, jr_003_7B3A                          ; $7B0C: $30 $2C

    db   $10                                      ; $7B0E: $10
    db   $10                                      ; $7B0F: $10
    inc  d                                        ; $7B10: $14
    jr   z, jr_003_7B3B                           ; $7B11: $28 $28

jr_003_7B13:
    ld   a, b                                     ; $7B13: $78

jr_003_7B14:
    jr   z, @+$16                                 ; $7B14: $28 $14

    ld   a, b                                     ; $7B16: $78
    jr   z, jr_003_7B55                           ; $7B17: $28 $3C

    ld   a, b                                     ; $7B19: $78
    ld   a, b                                     ; $7B1A: $78
    ld   a, b                                     ; $7B1B: $78
    ld   a, b                                     ; $7B1C: $78
    inc  a                                        ; $7B1D: $3C
    ld   a, b                                     ; $7B1E: $78
    ld   a, b                                     ; $7B1F: $78
    nop                                           ; $7B20: $00
    inc  h                                        ; $7B21: $24
    nop                                           ; $7B22: $00
    jr   c, @+$26                                 ; $7B23: $38 $24

    jr   @+$3A                                    ; $7B25: $18 $38

    jr   jr_003_7B29                              ; $7B27: $18 $00

jr_003_7B29:
    jr   c, jr_003_7B2B                           ; $7B29: $38 $00

jr_003_7B2B:
    jr   z, jr_003_7B2D                           ; $7B2B: $28 $00

jr_003_7B2D:
    inc  b                                        ; $7B2D: $04
    nop                                           ; $7B2E: $00
    nop                                           ; $7B2F: $00
    jr   nz, jr_003_7B36                          ; $7B30: $20 $04

    inc  e                                        ; $7B32: $1C
    nop                                           ; $7B33: $00

jr_003_7B34:
    jr   z, jr_003_7B4E                           ; $7B34: $28 $18

jr_003_7B36:
    nop                                           ; $7B36: $00
    nop                                           ; $7B37: $00
    db   $10                                      ; $7B38: $10
    db   $10                                      ; $7B39: $10

jr_003_7B3A:
    db   $10                                      ; $7B3A: $10

jr_003_7B3B:
    stop                                          ; $7B3B: $10 $00
    nop                                           ; $7B3D: $00
    nop                                           ; $7B3E: $00
    nop                                           ; $7B3F: $00
    ld   de, $0011                                ; $7B40: $11 $11 $00
    nop                                           ; $7B43: $00
    ld   de, $1111                                ; $7B44: $11 $11 $11
    ld   de, $1111                                ; $7B47: $11 $11 $11
    ld   de, $0011                                ; $7B4A: $11 $11 $00
    nop                                           ; $7B4D: $00

jr_003_7B4E:
    db   $10                                      ; $7B4E: $10
    stop                                          ; $7B4F: $10 $00
    ld   de, $0000                                ; $7B51: $11 $00 $00
    nop                                           ; $7B54: $00

jr_003_7B55:
    ld   de, $1111                                ; $7B55: $11 $11 $11
    ld   de, $1041                                ; $7B58: $11 $41 $10
    ld   de, $0011                                ; $7B5B: $11 $11 $00
    ld   de, $1110                                ; $7B5E: $11 $10 $11
    nop                                           ; $7B61: $00
    ld   d, l                                     ; $7B62: $55
    ld   d, l                                     ; $7B63: $55
    ld   de, $1011                                ; $7B64: $11 $11 $10
    ld   de, $1111                                ; $7B67: $11 $11 $11
    ld   de, $0011                                ; $7B6A: $11 $11 $00
    nop                                           ; $7B6D: $00
    ld   de, $0011                                ; $7B6E: $11 $11 $00
    nop                                           ; $7B71: $00
    inc  d                                        ; $7B72: $14
    nop                                           ; $7B73: $00
    ld   de, $0001                                ; $7B74: $11 $01 $00
    nop                                           ; $7B77: $00
    nop                                           ; $7B78: $00
    ld   bc, $0101                                ; $7B79: $01 $01 $01
    nop                                           ; $7B7C: $00
    nop                                           ; $7B7D: $00
    ld   bc, $1101                                ; $7B7E: $01 $01 $11
    ld   de, $1000                                ; $7B81: $11 $00 $10
    nop                                           ; $7B84: $00
    ld   bc, $1100                                ; $7B85: $01 $00 $11
    ld   bc, $1011                                ; $7B88: $01 $11 $10
    nop                                           ; $7B8B: $00
    ld   bc, $1100                                ; $7B8C: $01 $00 $11
    nop                                           ; $7B8F: $00
    nop                                           ; $7B90: $00
    nop                                           ; $7B91: $00
    ld   de, $0011                                ; $7B92: $11 $11 $00
    nop                                           ; $7B95: $00
    ld   bc, $0001                                ; $7B96: $01 $01 $00
    nop                                           ; $7B99: $00
    ld   de, $1111                                ; $7B9A: $11 $11 $11
    ld   de, $1100                                ; $7B9D: $11 $00 $11
    nop                                           ; $7BA0: $00
    db   $10                                      ; $7BA1: $10
    ld   de, $4110                                ; $7BA2: $11 $10 $41
    nop                                           ; $7BA5: $00
    nop                                           ; $7BA6: $00
    nop                                           ; $7BA7: $00
    ld   de, $1011                                ; $7BA8: $11 $11 $10
    db   $10                                      ; $7BAB: $10
    ld   de, $1000                                ; $7BAC: $11 $00 $10
    nop                                           ; $7BAF: $00
    ld   bc, $0101                                ; $7BB0: $01 $01 $01
    ld   bc, $1111                                ; $7BB3: $01 $11 $11
    db   $10                                      ; $7BB6: $10
    db   $10                                      ; $7BB7: $10
    ld   bc, $1101                                ; $7BB8: $01 $01 $11
    ld   de, $0000                                ; $7BBB: $11 $00 $00
    stop                                          ; $7BBE: $10 $00
    ld   bc, $0100                                ; $7BC0: $01 $00 $01
    nop                                           ; $7BC3: $00
    ld   b, c                                     ; $7BC4: $41
    nop                                           ; $7BC5: $00
    nop                                           ; $7BC6: $00
    nop                                           ; $7BC7: $00
    nop                                           ; $7BC8: $00
    nop                                           ; $7BC9: $00
    db   $10                                      ; $7BCA: $10
    stop                                          ; $7BCB: $10 $00
    nop                                           ; $7BCD: $00
    ld   de, $1110                                ; $7BCE: $11 $10 $11
    nop                                           ; $7BD1: $00
    nop                                           ; $7BD2: $00
    nop                                           ; $7BD3: $00
    nop                                           ; $7BD4: $00
    nop                                           ; $7BD5: $00
    ld   bc, $1001                                ; $7BD6: $01 $01 $10
    db   $10                                      ; $7BD9: $10
    ld   de, $1011                                ; $7BDA: $11 $11 $10
    ld   bc, $1100                                ; $7BDD: $01 $00 $11
    ld   de, $1010                                ; $7BE0: $11 $10 $10
    nop                                           ; $7BE3: $00
    ld   bc, $1100                                ; $7BE4: $01 $00 $11
    ld   bc, $1111                                ; $7BE7: $01 $11 $11
    ld   de, $0014                                ; $7BEA: $11 $14 $00
    nop                                           ; $7BED: $00
    ld   de, $1411                                ; $7BEE: $11 $11 $14
    nop                                           ; $7BF1: $00
    nop                                           ; $7BF2: $00
    nop                                           ; $7BF3: $00
    ld   bc, $0001                                ; $7BF4: $01 $01 $00
    ld   bc, $1100                                ; $7BF7: $01 $00 $11
    ld   bc, $1101                                ; $7BFA: $01 $01 $11
    inc  d                                        ; $7BFD: $14
    ld   de, $0011                                ; $7BFE: $11 $11 $00
    nop                                           ; $7C01: $00
    db   $10                                      ; $7C02: $10
    ld   de, $1411                                ; $7C03: $11 $11 $14
    ld   de, $0011                                ; $7C06: $11 $11 $00
    db   $10                                      ; $7C09: $10
    ld   de, $1111                                ; $7C0A: $11 $11 $11
    ld   de, $1101                                ; $7C0D: $11 $01 $11
    ld   de, $1311                                ; $7C10: $11 $11 $13
    db   $10                                      ; $7C13: $10
    ld   sp, $1101                                ; $7C14: $31 $01 $11
    ld   de, $1010                                ; $7C17: $11 $10 $10
    nop                                           ; $7C1A: $00
    nop                                           ; $7C1B: $00
    ld   bc, $1101                                ; $7C1C: $01 $01 $11
    ld   de, $1110                                ; $7C1F: $11 $10 $11
    ld   bc, $1211                                ; $7C22: $01 $11 $12
    db   $10                                      ; $7C25: $10
    ld   hl, $1101                                ; $7C26: $21 $01 $11
    ld   de, $1111                                ; $7C29: $11 $11 $11
    ld   de, $1111                                ; $7C2C: $11 $11 $11
    nop                                           ; $7C2F: $00
    stop                                          ; $7C30: $10 $00
    ld   bc, $1100                                ; $7C32: $01 $00 $11
    nop                                           ; $7C35: $00
    ld   de, $0001                                ; $7C36: $11 $01 $00
    nop                                           ; $7C39: $00
    ld   de, $0011                                ; $7C3A: $11 $11 $00
    ld   de, $1100                                ; $7C3D: $11 $00 $11
    db   $10                                      ; $7C40: $10
    stop                                          ; $7C41: $10 $00
    ld   bc, $1100                                ; $7C43: $01 $00 $11
    ld   bc, $1101                                ; $7C46: $01 $01 $11
    ld   de, $1101                                ; $7C49: $11 $01 $11
    db   $10                                      ; $7C4C: $10
    db   $10                                      ; $7C4D: $10
    db   $10                                      ; $7C4E: $10
    db   $10                                      ; $7C4F: $10
    ld   de, $1111                                ; $7C50: $11 $11 $11
    ld   de, $1111                                ; $7C53: $11 $11 $11
    ld   de, $0011                                ; $7C56: $11 $11 $00
    nop                                           ; $7C59: $00
    ld   bc, $1101                                ; $7C5A: $01 $01 $11
    db   $10                                      ; $7C5D: $10
    ld   bc, $0000                                ; $7C5E: $01 $00 $00
    stop                                          ; $7C61: $10 $00
    ld   de, $1111                                ; $7C63: $11 $11 $11
    ld   bc, $1151                                ; $7C66: $01 $51 $11
    ld   de, $1011                                ; $7C69: $11 $11 $10
    ld   de, $0001                                ; $7C6C: $11 $01 $00
    dec  d                                        ; $7C6F: $15
    ld   de, $1111                                ; $7C70: $11 $11 $11
    ld   de, $1111                                ; $7C73: $11 $11 $11
    db   $10                                      ; $7C76: $10
    stop                                          ; $7C77: $10 $00
    nop                                           ; $7C79: $00
    nop                                           ; $7C7A: $00
    nop                                           ; $7C7B: $00
    nop                                           ; $7C7C: $00
    nop                                           ; $7C7D: $00
    nop                                           ; $7C7E: $00
    ld   bc, $1011                                ; $7C7F: $01 $11 $10
    ld   de, $0100                                ; $7C82: $11 $00 $01
    nop                                           ; $7C85: $00
    ld   de, $1000                                ; $7C86: $11 $00 $10
    nop                                           ; $7C89: $00
    ld   de, $0011                                ; $7C8A: $11 $11 $00
    ld   d, c                                     ; $7C8D: $51
    ld   de, $1111                                ; $7C8E: $11 $11 $11
    ld   de, $0121                                ; $7C91: $11 $21 $01
    ld   de, $1111                                ; $7C94: $11 $11 $11
    ld   de, $1111                                ; $7C97: $11 $11 $11
    ld   de, $0011                                ; $7C9A: $11 $11 $00
    nop                                           ; $7C9D: $00
    nop                                           ; $7C9E: $00
    nop                                           ; $7C9F: $00
    ld   de, $1100                                ; $7CA0: $11 $00 $11
    ld   bc, $0011                                ; $7CA3: $01 $11 $00
    ld   de, $0011                                ; $7CA6: $11 $11 $00
    ld   bc, $1100                                ; $7CA9: $01 $00 $11
    ld   bc, $1001                                ; $7CAC: $01 $01 $10
    db   $10                                      ; $7CAF: $10
    ld   de, $0111                                ; $7CB0: $11 $11 $01
    ld   bc, $1100                                ; $7CB3: $01 $00 $11
    nop                                           ; $7CB6: $00
    nop                                           ; $7CB7: $00
    ld   bc, $0011                                ; $7CB8: $01 $11 $00
    db   $10                                      ; $7CBB: $10
    ld   de, $1111                                ; $7CBC: $11 $11 $11
    db   $10                                      ; $7CBF: $10
    stop                                          ; $7CC0: $10 $00
    nop                                           ; $7CC2: $00
    nop                                           ; $7CC3: $00
    ld   de, $1011                                ; $7CC4: $11 $11 $10
    stop                                          ; $7CC7: $10 $00
    nop                                           ; $7CC9: $00
    ld   de, $0011                                ; $7CCA: $11 $11 $00
    stop                                          ; $7CCD: $10 $00
    ld   de, $1000                                ; $7CCF: $11 $00 $10
    ld   de, $1101                                ; $7CD2: $11 $01 $11
    ld   de, $1111                                ; $7CD5: $11 $11 $11
    db   $10                                      ; $7CD8: $10
    ld   de, $0101                                ; $7CD9: $11 $01 $01
    ld   de, $0011                                ; $7CDC: $11 $11 $00
    ld   bc, $1121                                ; $7CDF: $01 $21 $11
    nop                                           ; $7CE2: $00
    nop                                           ; $7CE3: $00
    ld   de, $1111                                ; $7CE4: $11 $11 $11
    ld   de, $1111                                ; $7CE7: $11 $11 $11
    ld   de, $0011                                ; $7CEA: $11 $11 $00
    nop                                           ; $7CED: $00
    ld   de, $1111                                ; $7CEE: $11 $11 $11
    ld   de, $1000                                ; $7CF1: $11 $00 $10
    nop                                           ; $7CF4: $00
    ld   bc, $0401                                ; $7CF5: $01 $01 $04
    ld   de, $0011                                ; $7CF8: $11 $11 $00
    nop                                           ; $7CFB: $00
    ld   de, $0011                                ; $7CFC: $11 $11 $00
    ld   de, $1100                                ; $7CFF: $11 $00 $11
    ld   de, $1111                                ; $7D02: $11 $11 $11
    ld   de, $1100                                ; $7D05: $11 $00 $11
    nop                                           ; $7D08: $00
    nop                                           ; $7D09: $00
    db   $10                                      ; $7D0A: $10
    dec  d                                        ; $7D0B: $15
    ld   bc, $1151                                ; $7D0C: $01 $51 $11
    ld   de, $0101                                ; $7D0F: $11 $01 $01
    ld   de, $0000                                ; $7D12: $11 $00 $00
    nop                                           ; $7D15: $00
    ld   de, $0001                                ; $7D16: $11 $01 $00
    ld   d, l                                     ; $7D19: $55
    ld   de, $1111                                ; $7D1A: $11 $11 $11
    ld   de, $1011                                ; $7D1D: $11 $11 $10
    nop                                           ; $7D20: $00
    ld   bc, $3300                                ; $7D21: $01 $00 $33
    ld   bc, $5501                                ; $7D24: $01 $01 $55
    ld   de, $1011                                ; $7D27: $11 $11 $10
    ld   de, $0001                                ; $7D2A: $11 $01 $00
    nop                                           ; $7D2D: $00
    nop                                           ; $7D2E: $00
    nop                                           ; $7D2F: $00
    ld   bc, $1001                                ; $7D30: $01 $01 $10
    db   $10                                      ; $7D33: $10
    ld   bc, $0101                                ; $7D34: $01 $01 $01
    nop                                           ; $7D37: $00
    ld   b, c                                     ; $7D38: $41
    nop                                           ; $7D39: $00
    stop                                          ; $7D3A: $10 $00
    ld   de, $0011                                ; $7D3C: $11 $11 $00
    nop                                           ; $7D3F: $00
    call Call_000_00B0                            ; $7D40: $CD $B0 $00
    ld   a, $90                                   ; $7D43: $3E $90
    ld   [$C360], a                               ; $7D45: $EA $60 $C3
    ld   hl, $C560                                ; $7D48: $21 $60 $C5
    ld   a, $9C                                   ; $7D4B: $3E $9C
    ld   [hl+], a                                 ; $7D4D: $22
    ld   a, $01                                   ; $7D4E: $3E $01
    ld   [hl+], a                                 ; $7D50: $22
    xor  a                                        ; $7D51: $AF
    ld   [hl+], a                                 ; $7D52: $22
    ld   [$DF33], a                               ; $7D53: $EA $33 $DF
    ld   a, $14                                   ; $7D56: $3E $14
    ld   [hl+], a                                 ; $7D58: $22
    ld   b, a                                     ; $7D59: $47
    inc  l                                        ; $7D5A: $2C
    ld   a, $C0                                   ; $7D5B: $3E $C0

jr_003_7D5D:
    ld   [hl+], a                                 ; $7D5D: $22
    dec  b                                        ; $7D5E: $05
    jr   nz, jr_003_7D5D                          ; $7D5F: $20 $FC

    call WaitForRequestedVBlank                   ; $7D61: $CD $90 $00
    ld   de, $7EA9                                ; $7D64: $11 $A9 $7E
    call Call_003_7E6A                            ; $7D67: $CD $6A $7E
    ld   a, [$DF16]                               ; $7D6A: $FA $16 $DF
    rlca                                          ; $7D6D: $07
    add  $0B                                      ; $7D6E: $C6 $0B
    ld   [$C564], a                               ; $7D70: $EA $64 $C5
    ld   de, $7F34                                ; $7D73: $11 $34 $7F
    call Call_003_7EF3                            ; $7D76: $CD $F3 $7E

Jump_003_7D79:
    ld   a, $0A                                   ; $7D79: $3E $0A
    ld   [$C562], a                               ; $7D7B: $EA $62 $C5
    ld   a, $9C                                   ; $7D7E: $3E $9C
    ld   [$C560], a                               ; $7D80: $EA $60 $C5
    ld   de, $7EE1                                ; $7D83: $11 $E1 $7E
    call Call_003_7E6A                            ; $7D86: $CD $6A $7E
    ld   a, [$DF33]                               ; $7D89: $FA $33 $DF
    and  a                                        ; $7D8C: $A7
    jr   nz, jr_003_7DC6                          ; $7D8D: $20 $37

    ld   a, $02                                   ; $7D8F: $3E $02
    ld   [$C564], a                               ; $7D91: $EA $64 $C5
    ld   de, $7F6D                                ; $7D94: $11 $6D $7F
    call Call_003_7EF3                            ; $7D97: $CD $F3 $7E
    ld   a, [$DF1A]                               ; $7D9A: $FA $1A $DF
    ld   [$DF34], a                               ; $7D9D: $EA $34 $DF
    ld   bc, $7F73                                ; $7DA0: $01 $73 $7F

jr_003_7DA3:
    ld   a, [$DF34]                               ; $7DA3: $FA $34 $DF
    and  a                                        ; $7DA6: $A7
    jr   z, jr_003_7DDA                           ; $7DA7: $28 $31

    srl  a                                        ; $7DA9: $CB $3F
    ld   [$DF34], a                               ; $7DAB: $EA $34 $DF
    jr   nc, jr_003_7DC2                          ; $7DAE: $30 $12

    ld   a, [bc]                                  ; $7DB0: $0A
    inc  bc                                       ; $7DB1: $03
    ld   e, a                                     ; $7DB2: $5F
    ld   a, [bc]                                  ; $7DB3: $0A
    inc  bc                                       ; $7DB4: $03
    ld   d, a                                     ; $7DB5: $57
    ld   a, $02                                   ; $7DB6: $3E $02
    ld   [$C564], a                               ; $7DB8: $EA $64 $C5
    push bc                                       ; $7DBB: $C5
    call Call_003_7F1E                            ; $7DBC: $CD $1E $7F
    pop  bc                                       ; $7DBF: $C1
    jr   jr_003_7DA3                              ; $7DC0: $18 $E1

jr_003_7DC2:
    inc  bc                                       ; $7DC2: $03
    inc  bc                                       ; $7DC3: $03
    jr   jr_003_7DA3                              ; $7DC4: $18 $DD

jr_003_7DC6:
    ld   b, $08                                   ; $7DC6: $06 $08
    ld   a, [$DF19]                               ; $7DC8: $FA $19 $DF
    and  a                                        ; $7DCB: $A7
    jr   nz, jr_003_7DD0                          ; $7DCC: $20 $02

    dec  b                                        ; $7DCE: $05
    dec  b                                        ; $7DCF: $05

jr_003_7DD0:
    ld   a, b                                     ; $7DD0: $78
    ld   [$C564], a                               ; $7DD1: $EA $64 $C5
    ld   de, $7FC7                                ; $7DD4: $11 $C7 $7F
    call Call_003_7EF3                            ; $7DD7: $CD $F3 $7E

jr_003_7DDA:
    xor  a                                        ; $7DDA: $AF
    ld   [$C360], a                               ; $7DDB: $EA $60 $C3
    ld   hl, $C57F                                ; $7DDE: $21 $7F $C5
    ld   d, h                                     ; $7DE1: $54
    ld   e, l                                     ; $7DE2: $5D
    ld   a, [$DF0E]                               ; $7DE3: $FA $0E $DF
    add  $D1                                      ; $7DE6: $C6 $D1
    ld   [hl+], a                                 ; $7DE8: $22
    ld   a, [$DF13]                               ; $7DE9: $FA $13 $DF
    add  $D1                                      ; $7DEC: $C6 $D1
    ld   [hl+], a                                 ; $7DEE: $22
    ld   a, [$DF15]                               ; $7DEF: $FA $15 $DF
    add  $D0                                      ; $7DF2: $C6 $D0
    ld   [hl], a                                  ; $7DF4: $77
    ld   hl, $C000                                ; $7DF5: $21 $00 $C0
    ld   b, $03                                   ; $7DF8: $06 $03
    ld   c, $18                                   ; $7DFA: $0E $18

jr_003_7DFC:
    ld   a, c                                     ; $7DFC: $79
    add  $10                                      ; $7DFD: $C6 $10
    ld   [hl+], a                                 ; $7DFF: $22
    ld   c, a                                     ; $7E00: $4F
    ld   a, $38                                   ; $7E01: $3E $38
    ld   [hl+], a                                 ; $7E03: $22
    ld   a, [de]                                  ; $7E04: $1A
    inc  e                                        ; $7E05: $1C
    ld   [hl+], a                                 ; $7E06: $22
    inc  l                                        ; $7E07: $2C
    dec  b                                        ; $7E08: $05
    jr   nz, jr_003_7DFC                          ; $7E09: $20 $F1

    ld   a, [$DF33]                               ; $7E0B: $FA $33 $DF
    and  a                                        ; $7E0E: $A7
    jr   z, jr_003_7E2F                           ; $7E0F: $28 $1E

    ld   b, $D0                                   ; $7E11: $06 $D0
    ld   a, [$DF17]                               ; $7E13: $FA $17 $DF
    add  b                                        ; $7E16: $80
    ld   [de], a                                  ; $7E17: $12
    dec  e                                        ; $7E18: $1D
    rst  RST_00                                   ; $7E19: $C7
    ld   a, $D0                                   ; $7E1A: $3E $D0
    add  c                                        ; $7E1C: $81
    ld   [de], a                                  ; $7E1D: $12
    dec  e                                        ; $7E1E: $1D
    ld   a, $D0                                   ; $7E1F: $3E $D0
    add  b                                        ; $7E21: $80
    ld   [de], a                                  ; $7E22: $12
    ld   bc, $7E59                                ; $7E23: $01 $59 $7E
    call Call_003_7E5F                            ; $7E26: $CD $5F $7E
    call Call_003_7E5F                            ; $7E29: $CD $5F $7E
    call Call_003_7E5F                            ; $7E2C: $CD $5F $7E

jr_003_7E2F:
    call WaitForRequestedVBlank                   ; $7E2F: $CD $90 $00
    ld   a, [$C262]                               ; $7E32: $FA $62 $C2
    rrca                                          ; $7E35: $0F
    jr   c, jr_003_7E44                           ; $7E36: $38 $0C

    rrca                                          ; $7E38: $0F
    jr   nc, jr_003_7E2F                          ; $7E39: $30 $F4

    call Call_000_00B0                            ; $7E3B: $CD $B0 $00
    ld   a, $04                                   ; $7E3E: $3E $04
    ld   [$C463], a                               ; $7E40: $EA $63 $C4
    ret                                           ; $7E43: $C9


jr_003_7E44:
    ld   b, $0A                                   ; $7E44: $06 $0A
    xor  a                                        ; $7E46: $AF
    ld   hl, $C00C                                ; $7E47: $21 $0C $C0

jr_003_7E4A:
    ld   [hl+], a                                 ; $7E4A: $22
    dec  b                                        ; $7E4B: $05
    jr   nz, jr_003_7E4A                          ; $7E4C: $20 $FC

    ld   a, [$DF33]                               ; $7E4E: $FA $33 $DF
    xor  $01                                      ; $7E51: $EE $01
    ld   [$DF33], a                               ; $7E53: $EA $33 $DF
    jp   Jump_003_7D79                            ; $7E56: $C3 $79 $7D


    jr   c, @-$66                                 ; $7E59: $38 $98

    jr   c, @-$6E                                 ; $7E5B: $38 $90

    jr   z, @-$66                                 ; $7E5D: $28 $98

Call_003_7E5F:
    ld   a, [bc]                                  ; $7E5F: $0A
    inc  c                                        ; $7E60: $0C
    ld   [hl+], a                                 ; $7E61: $22
    ld   a, [bc]                                  ; $7E62: $0A
    inc  c                                        ; $7E63: $0C
    ld   [hl+], a                                 ; $7E64: $22
    ld   a, [de]                                  ; $7E65: $1A
    inc  e                                        ; $7E66: $1C
    ld   [hl+], a                                 ; $7E67: $22
    inc  l                                        ; $7E68: $2C
    ret                                           ; $7E69: $C9


Call_003_7E6A:
jr_003_7E6A:
    ld   a, [de]                                  ; $7E6A: $1A
    inc  de                                       ; $7E6B: $13
    and  a                                        ; $7E6C: $A7
    ret  z                                        ; $7E6D: $C8

    ld   [$C564], a                               ; $7E6E: $EA $64 $C5

jr_003_7E71:
    ld   hl, $C560                                ; $7E71: $21 $60 $C5
    ld   a, [hl+]                                 ; $7E74: $2A
    ld   c, a                                     ; $7E75: $4F
    ld   a, $01                                   ; $7E76: $3E $01
    ld   [hl+], a                                 ; $7E78: $22
    ld   a, [hl]                                  ; $7E79: $7E
    add  $20                                      ; $7E7A: $C6 $20
    ld   [hl+], a                                 ; $7E7C: $22
    ld   a, c                                     ; $7E7D: $79
    adc  $00                                      ; $7E7E: $CE $00
    ld   [$C560], a                               ; $7E80: $EA $60 $C5
    ld   a, $0A                                   ; $7E83: $3E $0A
    ld   [hl+], a                                 ; $7E85: $22
    ld   c, a                                     ; $7E86: $4F
    inc  l                                        ; $7E87: $2C
    push de                                       ; $7E88: $D5

jr_003_7E89:
    ld   a, [de]                                  ; $7E89: $1A
    inc  de                                       ; $7E8A: $13
    ld   b, a                                     ; $7E8B: $47
    ld   a, [de]                                  ; $7E8C: $1A
    inc  de                                       ; $7E8D: $13

jr_003_7E8E:
    ld   [hl+], a                                 ; $7E8E: $22
    dec  c                                        ; $7E8F: $0D
    jr   z, jr_003_7E97                           ; $7E90: $28 $05

    dec  b                                        ; $7E92: $05
    jr   nz, jr_003_7E8E                          ; $7E93: $20 $F9

    jr   jr_003_7E89                              ; $7E95: $18 $F2

jr_003_7E97:
    call WaitForRequestedVBlank                   ; $7E97: $CD $90 $00
    ld   a, [$C564]                               ; $7E9A: $FA $64 $C5
    dec  a                                        ; $7E9D: $3D
    jr   z, jr_003_7EA6                           ; $7E9E: $28 $06

    ld   [$C564], a                               ; $7EA0: $EA $64 $C5
    pop  de                                       ; $7EA3: $D1
    jr   jr_003_7E71                              ; $7EA4: $18 $CB

jr_003_7EA6:
    pop  hl                                       ; $7EA6: $E1
    jr   jr_003_7E6A                              ; $7EA7: $18 $C1

    ld   bc, $C501                                ; $7EA9: $01 $01 $C5
    inc  bc                                       ; $7EAC: $03
    ret  nz                                       ; $7EAD: $C0

    inc  b                                        ; $7EAE: $04
    jp   $DC01                                    ; $7EAF: $C3 $01 $DC


    ld   bc, $06C5                                ; $7EB2: $01 $C5 $06
    ld   bc, $07C4                                ; $7EB5: $01 $C4 $07
    ret  nz                                       ; $7EB8: $C0

    ld   [bc], a                                  ; $7EB9: $02
    call nz, Call_000_0101                        ; $7EBA: $C4 $01 $01
    db   $DD                                      ; $7EBD: $DD
    rlca                                          ; $7EBE: $07
    jp   $DE01                                    ; $7EBF: $C3 $01 $DE


    ld   bc, $01C4                                ; $7EC2: $01 $C4 $01
    add  hl, bc                                   ; $7EC5: $09
    ret  nz                                       ; $7EC6: $C0

    ld   bc, $01C4                                ; $7EC7: $01 $C4 $01
    ld   bc, $04C5                                ; $7ECA: $01 $C5 $04
    ret  nz                                       ; $7ECD: $C0

    inc  b                                        ; $7ECE: $04
    jp   $C401                                    ; $7ECF: $C3 $01 $C4


    ld   b, $01                                   ; $7ED2: $06 $01
    call nz, $C008                                ; $7ED4: $C4 $08 $C0
    ld   bc, $01C4                                ; $7ED7: $01 $C4 $01
    ld   bc, $08DD                                ; $7EDA: $01 $DD $08
    jp   $DD01                                    ; $7EDD: $C3 $01 $DD


    nop                                           ; $7EE0: $00
    ld   bc, $C004                                ; $7EE1: $01 $04 $C0
    dec  b                                        ; $7EE4: $05
    jp   $DC01                                    ; $7EE5: $C3 $01 $DC


    rrca                                          ; $7EE8: $0F
    add  hl, bc                                   ; $7EE9: $09
    ret  nz                                       ; $7EEA: $C0

    ld   bc, $01C4                                ; $7EEB: $01 $C4 $01
    add  hl, bc                                   ; $7EEE: $09
    jp   $DE01                                    ; $7EEF: $C3 $01 $DE


    nop                                           ; $7EF2: $00

Call_003_7EF3:
    ld   hl, $C560                                ; $7EF3: $21 $60 $C5
    ld   a, $9C                                   ; $7EF6: $3E $9C
    ld   [hl+], a                                 ; $7EF8: $22
    ld   a, $01                                   ; $7EF9: $3E $01
    ld   [hl+], a                                 ; $7EFB: $22
    xor  a                                        ; $7EFC: $AF
    ld   [hl], a                                  ; $7EFD: $77

jr_003_7EFE:
    ld   a, [de]                                  ; $7EFE: $1A
    inc  de                                       ; $7EFF: $13
    and  a                                        ; $7F00: $A7
    jr   z, jr_003_7F19                           ; $7F01: $28 $16

    ld   b, a                                     ; $7F03: $47
    and  $F0                                      ; $7F04: $E6 $F0
    swap a                                        ; $7F06: $CB $37
    add  [hl]                                     ; $7F08: $86
    ld   [hl+], a                                 ; $7F09: $22
    ld   a, b                                     ; $7F0A: $78
    and  $0F                                      ; $7F0B: $E6 $0F
    ld   b, a                                     ; $7F0D: $47
    ld   [hl+], a                                 ; $7F0E: $22
    inc  l                                        ; $7F0F: $2C

jr_003_7F10:
    ld   a, [de]                                  ; $7F10: $1A
    inc  de                                       ; $7F11: $13
    ld   [hl+], a                                 ; $7F12: $22
    dec  b                                        ; $7F13: $05
    jr   nz, jr_003_7F10                          ; $7F14: $20 $FA

    call WaitForRequestedVBlank                   ; $7F16: $CD $90 $00

jr_003_7F19:
    ld   hl, $C564                                ; $7F19: $21 $64 $C5
    dec  [hl]                                     ; $7F1C: $35
    ret  z                                        ; $7F1D: $C8

Call_003_7F1E:
    ld   hl, $C560                                ; $7F1E: $21 $60 $C5
    ld   a, [hl+]                                 ; $7F21: $2A
    ld   c, a                                     ; $7F22: $4F
    ld   a, $01                                   ; $7F23: $3E $01
    ld   [hl+], a                                 ; $7F25: $22
    ld   a, [hl]                                  ; $7F26: $7E
    and  $F0                                      ; $7F27: $E6 $F0
    add  $20                                      ; $7F29: $C6 $20
    ld   [hl], a                                  ; $7F2B: $77
    ld   a, c                                     ; $7F2C: $79
    adc  $00                                      ; $7F2D: $CE $00
    ld   [$C560], a                               ; $7F2F: $EA $60 $C5
    jr   jr_003_7EFE                              ; $7F32: $18 $CA

    nop                                           ; $7F34: $00
    dec  d                                        ; $7F35: $15
    db   $EC                                      ; $7F36: $EC
    push hl                                       ; $7F37: $E5
    or   $E5                                      ; $7F38: $F6 $E5
    db   $EC                                      ; $7F3A: $EC
    nop                                           ; $7F3B: $00
    inc  d                                        ; $7F3C: $14
    ld   [$EDF5], a                               ; $7F3D: $EA $F5 $ED
    ldh  a, [rP1]                                 ; $7F40: $F0 $00
    inc  d                                        ; $7F42: $14
    rst  RST_30                                   ; $7F43: $F7
    jp   hl                                       ; $7F44: $E9


    xor  $E7                                      ; $7F45: $EE $E7
    nop                                           ; $7F47: $00
    inc  d                                        ; $7F48: $14
    db   $EC                                      ; $7F49: $EC

jr_003_7F4A:
    jp   hl                                       ; $7F4A: $E9


    and  $E5                                      ; $7F4B: $E6 $E5
    nop                                           ; $7F4D: $00
    nop                                           ; $7F4E: $00
    dec  d                                        ; $7F4F: $15
    db   $ED                                      ; $7F50: $ED
    pop  hl                                       ; $7F51: $E1
    rst  RST_20                                   ; $7F52: $E7
    jp   hl                                       ; $7F53: $E9


    db   $E3                                      ; $7F54: $E3
    nop                                           ; $7F55: $00
    ld   d, $E2                                   ; $7F56: $16 $E2
    push af                                       ; $7F58: $F5
    di                                            ; $7F59: $F3
    db   $F4                                      ; $7F5A: $F4
    push hl                                       ; $7F5B: $E5
    ldh  a, [c]                                   ; $7F5C: $F2
    nop                                           ; $7F5D: $00
    inc  d                                        ; $7F5E: $14
    db   $E3                                      ; $7F5F: $E3
    db   $EC                                      ; $7F60: $EC
    pop  hl                                       ; $7F61: $E1
    rst  RST_30                                   ; $7F62: $F7
    nop                                           ; $7F63: $00
    jr   jr_003_7F4A                              ; $7F64: $18 $E4

    pop  hl                                       ; $7F66: $E1
    ldh  a, [c]                                   ; $7F67: $F2
    db   $EB                                      ; $7F68: $EB
    and  $E9                                      ; $7F69: $E6 $E9
    ldh  a, [c]                                   ; $7F6B: $F2
    push hl                                       ; $7F6C: $E5
    nop                                           ; $7F6D: $00
    and  h                                        ; $7F6E: $A4
    jp   hl                                       ; $7F6F: $E9


    db   $F4                                      ; $7F70: $F4
    push hl                                       ; $7F71: $E5
    db   $ED                                      ; $7F72: $ED
    add  e                                        ; $7F73: $83
    ld   a, a                                     ; $7F74: $7F
    adc  l                                        ; $7F75: $8D
    ld   a, a                                     ; $7F76: $7F
    sub  h                                        ; $7F77: $94
    ld   a, a                                     ; $7F78: $7F
    sbc  l                                        ; $7F79: $9D
    ld   a, a                                     ; $7F7A: $7F
    and  [hl]                                     ; $7F7B: $A6
    ld   a, a                                     ; $7F7C: $7F
    xor  h                                        ; $7F7D: $AC
    ld   a, a                                     ; $7F7E: $7F
    or   l                                        ; $7F7F: $B5
    ld   a, a                                     ; $7F80: $7F
    cp   [hl]                                     ; $7F81: $BE
    ld   a, a                                     ; $7F82: $7F
    nop                                           ; $7F83: $00
    xor  b                                        ; $7F84: $A8
    and  $EE                                      ; $7F85: $E6 $EE
    rst  RST_20                                   ; $7F87: $E7
    ldh  a, [c]                                   ; $7F88: $F2
    xor  $E1                                      ; $7F89: $EE $E1
    jp   hl                                       ; $7F8B: $E9


    db   $EC                                      ; $7F8C: $EC
    nop                                           ; $7F8D: $00
    and  l                                        ; $7F8E: $A5
    di                                            ; $7F8F: $F3
    db   $F4                                      ; $7F90: $F4
    jp   hl                                       ; $7F91: $E9


    db   $E3                                      ; $7F92: $E3
    db   $EB                                      ; $7F93: $EB
    nop                                           ; $7F94: $00
    and  a                                        ; $7F95: $A7
    db   $E3                                      ; $7F96: $E3
    db   $E4                                      ; $7F97: $E4
    rst  RST_08                                   ; $7F98: $CF
    ldh  a, [$FFE7]                               ; $7F99: $F0 $E7
    di                                            ; $7F9B: $F3
    db   $F4                                      ; $7F9C: $F4
    nop                                           ; $7F9D: $00
    and  a                                        ; $7F9E: $A7
    pop  hl                                       ; $7F9F: $E1
    db   $ED                                      ; $7FA0: $ED
    ldh  a, [c]                                   ; $7FA1: $F2
    rst  RST_08                                   ; $7FA2: $CF
    db   $E4                                      ; $7FA3: $E4
    ldh  a, [c]                                   ; $7FA4: $F2
    rst  RST_20                                   ; $7FA5: $E7
    nop                                           ; $7FA6: $00
    and  h                                        ; $7FA7: $A4
    rst  RST_30                                   ; $7FA8: $F7
    jp   hl                                       ; $7FA9: $E9


    xor  $E7                                      ; $7FAA: $EE $E7
    nop                                           ; $7FAC: $00
    and  a                                        ; $7FAD: $A7
    pop  hl                                       ; $7FAE: $E1
    db   $ED                                      ; $7FAF: $ED
    ldh  a, [c]                                   ; $7FB0: $F2
    rst  RST_08                                   ; $7FB1: $CF
    db   $E4                                      ; $7FB2: $E4
    db   $E3                                      ; $7FB3: $E3
    db   $F4                                      ; $7FB4: $F4
    nop                                           ; $7FB5: $00
    and  a                                        ; $7FB6: $A7
    db   $E3                                      ; $7FB7: $E3
    db   $E4                                      ; $7FB8: $E4
    rst  RST_08                                   ; $7FB9: $CF
    db   $E4                                      ; $7FBA: $E4
    db   $EB                                      ; $7FBB: $EB
    xor  $F3                                      ; $7FBC: $EE $F3
    nop                                           ; $7FBE: $00
    and  a                                        ; $7FBF: $A7
    db   $E3                                      ; $7FC0: $E3
    db   $E4                                      ; $7FC1: $E4
    rst  RST_08                                   ; $7FC2: $CF
    rst  RST_20                                   ; $7FC3: $E7
    add  sp, -$11                                 ; $7FC4: $E8 $EF
    push af                                       ; $7FC6: $F5
    nop                                           ; $7FC7: $00
    and  h                                        ; $7FC8: $A4
    jp   hl                                       ; $7FC9: $E9


    db   $F4                                      ; $7FCA: $F4
    push hl                                       ; $7FCB: $E5
    db   $ED                                      ; $7FCC: $ED
    nop                                           ; $7FCD: $00
    and  a                                        ; $7FCE: $A7
    db   $F4                                      ; $7FCF: $F4
    pop  hl                                       ; $7FD0: $E1
    db   $EC                                      ; $7FD1: $EC
    jp   hl                                       ; $7FD2: $E9


    di                                            ; $7FD3: $F3
    ret  nz                                       ; $7FD4: $C0

    jp   z, $A700                                 ; $7FD5: $CA $00 $A7

    or   $E9                                      ; $7FD8: $F6 $E9
    pop  hl                                       ; $7FDA: $E1
    db   $EC                                      ; $7FDB: $EC
    di                                            ; $7FDC: $F3
    ret  nz                                       ; $7FDD: $C0

    jp   z, $A700                                 ; $7FDE: $CA $00 $A7

    push hl                                       ; $7FE1: $E5
    di                                            ; $7FE2: $F3
    di                                            ; $7FE3: $F3
    push hl                                       ; $7FE4: $E5
    xor  $E3                                      ; $7FE5: $EE $E3
    push hl                                       ; $7FE7: $E5
    nop                                           ; $7FE8: $00
    nop                                           ; $7FE9: $00
    nop                                           ; $7FEA: $00
    nop                                           ; $7FEB: $00
    nop                                           ; $7FEC: $00
    nop                                           ; $7FED: $00
    nop                                           ; $7FEE: $00
    nop                                           ; $7FEF: $00
    nop                                           ; $7FF0: $00
    nop                                           ; $7FF1: $00
    nop                                           ; $7FF2: $00
    nop                                           ; $7FF3: $00
    nop                                           ; $7FF4: $00
    nop                                           ; $7FF5: $00
    nop                                           ; $7FF6: $00
    nop                                           ; $7FF7: $00
    nop                                           ; $7FF8: $00
    nop                                           ; $7FF9: $00
    nop                                           ; $7FFA: $00
    nop                                           ; $7FFB: $00
    nop                                           ; $7FFC: $00
    nop                                           ; $7FFD: $00
    nop                                           ; $7FFE: $00
    nop                                           ; $7FFF: $00
