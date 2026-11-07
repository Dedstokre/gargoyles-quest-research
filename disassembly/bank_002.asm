; Disassembly of "gargoyles_quest.gb"
; This file was created with:
; mgbdis v3.0 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

Call_002_4000:
    jp   Jump_002_46E3                            ; $4000: $C3 $E3 $46


    ld   hl, $9800                                ; $4003: $21 $00 $98

Call_002_4006:
    ld   bc, $0140                                ; $4006: $01 $40 $01
    ld   a, $1B                                   ; $4009: $3E $1B
    call Call_000_0049                            ; $400B: $CD $49 $00
    ld   a, [$DF39]                               ; $400E: $FA $39 $DF
    or   a                                        ; $4011: $B7
    jp   nz, Jump_002_4083                        ; $4012: $C2 $83 $40

    push hl                                       ; $4015: $E5
    ld   a, $24                                   ; $4016: $3E $24
    ld   [$DF00], a                               ; $4018: $EA $00 $DF
    call Call_000_00C8                            ; $401B: $CD $C8 $00
    ld   a, $26                                   ; $401E: $3E $26
    ld   [$9805], a                               ; $4020: $EA $05 $98
    ld   a, $1C                                   ; $4023: $3E $1C
    ld   [$980B], a                               ; $4025: $EA $0B $98
    ld   a, $13                                   ; $4028: $3E $13
    ld   [$9824], a                               ; $402A: $EA $24 $98
    inc  a                                        ; $402D: $3C
    ld   [$9825], a                               ; $402E: $EA $25 $98
    ld   a, $2B                                   ; $4031: $3E $2B
    ld   [$982A], a                               ; $4033: $EA $2A $98
    inc  a                                        ; $4036: $3C
    ld   [$982B], a                               ; $4037: $EA $2B $98
    pop  hl                                       ; $403A: $E1
    ld   de, $432A                                ; $403B: $11 $2A $43
    ld   bc, $140A                                ; $403E: $01 $0A $14
    call Call_002_4143                            ; $4041: $CD $43 $41
    ld   bc, $01C0                                ; $4044: $01 $C0 $01
    ld   a, $0F                                   ; $4047: $3E $0F
    call Call_000_0049                            ; $4049: $CD $49 $00
    ld   bc, $02C0                                ; $404C: $01 $C0 $02
    ld   a, $C0                                   ; $404F: $3E $C0
    call Call_000_0049                            ; $4051: $CD $49 $00
    ld   hl, $9988                                ; $4054: $21 $88 $99
    ld   b, $05                                   ; $4057: $06 $05
    call Call_002_4159                            ; $4059: $CD $59 $41
    ld   hl, $99C8                                ; $405C: $21 $C8 $99
    ld   b, $08                                   ; $405F: $06 $08
    call Call_002_4159                            ; $4061: $CD $59 $41
    ld   hl, $9A02                                ; $4064: $21 $02 $9A
    ld   b, $11                                   ; $4067: $06 $11
    call Call_002_4159                            ; $4069: $CD $59 $41
    ld   hl, $9A20                                ; $406C: $21 $20 $9A
    ld   b, $14                                   ; $406F: $06 $14
    call Call_002_4159                            ; $4071: $CD $59 $41
    xor  a                                        ; $4074: $AF
    rst  RST_28                                   ; $4075: $EF
    ld   b, $68                                   ; $4076: $06 $68
    ld   a, $F5                                   ; $4078: $3E $F5
    rst  RST_28                                   ; $407A: $EF
    jr   jr_002_4083                              ; $407B: $18 $06

Jump_002_407D:
    call Call_000_0051                            ; $407D: $CD $51 $00
    call Call_000_00E5                            ; $4080: $CD $E5 $00

Jump_002_4083:
jr_002_4083:
    xor  a                                        ; $4083: $AF
    ld   [$C669], a                               ; $4084: $EA $69 $C6
    ld   a, $02                                   ; $4087: $3E $02
    ld   [$DF08], a                               ; $4089: $EA $08 $DF
    ld   a, $08                                   ; $408C: $3E $08
    ld   [$C361], a                               ; $408E: $EA $61 $C3
    ld   hl, $9C00                                ; $4091: $21 $00 $9C
    ld   bc, $0500                                ; $4094: $01 $00 $05
    ld   a, $C0                                   ; $4097: $3E $C0
    call Call_000_0049                            ; $4099: $CD $49 $00
    ld   a, [$DF39]                               ; $409C: $FA $39 $DF
    cp   $02                                      ; $409F: $FE $02
    jp   z, Jump_002_425A                         ; $40A1: $CA $5A $42

    ld   hl, $9C00                                ; $40A4: $21 $00 $9C
    ld   de, $0020                                ; $40A7: $11 $20 $00
    ld   a, $A3                                   ; $40AA: $3E $A3
    ld   b, $20                                   ; $40AC: $06 $20

jr_002_40AE:
    ld   [hl], a                                  ; $40AE: $77
    add  hl, de                                   ; $40AF: $19
    dec  b                                        ; $40B0: $05
    jr   nz, jr_002_40AE                          ; $40B1: $20 $FB

    ld   hl, $9C13                                ; $40B3: $21 $13 $9C
    ld   b, $20                                   ; $40B6: $06 $20

jr_002_40B8:
    ld   [hl], a                                  ; $40B8: $77
    add  hl, de                                   ; $40B9: $19
    dec  b                                        ; $40BA: $05
    jr   nz, jr_002_40B8                          ; $40BB: $20 $FB

    call Call_002_4160                            ; $40BD: $CD $60 $41
    call Call_000_0044                            ; $40C0: $CD $44 $00
    xor  a                                        ; $40C3: $AF
    ld   [$C364], a                               ; $40C4: $EA $64 $C3
    ld   [$C362], a                               ; $40C7: $EA $62 $C3
    ld   a, $E3                                   ; $40CA: $3E $E3
    ldh  [rLCDC], a                               ; $40CC: $E0 $40
    ei                                            ; $40CE: $FB
    call Call_000_0059                            ; $40CF: $CD $59 $00
    ld   a, $05                                   ; $40D2: $3E $05
    ld   [$C7C1], a                               ; $40D4: $EA $C1 $C7
    ld   a, $64                                   ; $40D7: $3E $64
    ld   [$C7C2], a                               ; $40D9: $EA $C2 $C7

jr_002_40DC:
    ld   a, [$C7C0]                               ; $40DC: $FA $C0 $C7
    and  $01                                      ; $40DF: $E6 $01
    swap a                                        ; $40E1: $CB $37
    add  $70                                      ; $40E3: $C6 $70
    ld   [$C000], a                               ; $40E5: $EA $00 $C0
    ld   a, $38                                   ; $40E8: $3E $38
    ld   [$C001], a                               ; $40EA: $EA $01 $C0
    ld   a, $8F                                   ; $40ED: $3E $8F
    ld   [$C002], a                               ; $40EF: $EA $02 $C0
    xor  a                                        ; $40F2: $AF
    ld   [$C003], a                               ; $40F3: $EA $03 $C0
    call Call_000_00E0                            ; $40F6: $CD $E0 $00
    ld   a, [$C7C2]                               ; $40F9: $FA $C2 $C7
    dec  a                                        ; $40FC: $3D
    ld   [$C7C2], a                               ; $40FD: $EA $C2 $C7
    jr   nz, jr_002_410C                          ; $4100: $20 $0A

    ld   a, [$C7C1]                               ; $4102: $FA $C1 $C7
    dec  a                                        ; $4105: $3D
    ld   [$C7C1], a                               ; $4106: $EA $C1 $C7
    jp   z, Jump_002_407D                         ; $4109: $CA $7D $40

jr_002_410C:
    ld   a, [$C262]                               ; $410C: $FA $62 $C2
    and  $C4                                      ; $410F: $E6 $C4
    jr   z, jr_002_411B                           ; $4111: $28 $08

    ld   a, [$C7C0]                               ; $4113: $FA $C0 $C7
    xor  $01                                      ; $4116: $EE $01
    ld   [$C7C0], a                               ; $4118: $EA $C0 $C7

jr_002_411B:
    ld   b, $6C                                   ; $411B: $06 $6C
    ld   a, [$C26A]                               ; $411D: $FA $6A $C2
    ld   c, a                                     ; $4120: $4F
    and  $F0                                      ; $4121: $E6 $F0
    jr   nz, jr_002_412C                          ; $4123: $20 $07

    ld   a, c                                     ; $4125: $79
    and  $04                                      ; $4126: $E6 $04
    jr   nz, jr_002_412C                          ; $4128: $20 $02

    ld   b, $93                                   ; $412A: $06 $93

jr_002_412C:
    ld   a, b                                     ; $412C: $78
    ld   [$C669], a                               ; $412D: $EA $69 $C6
    ld   a, [$C262]                               ; $4130: $FA $62 $C2
    and  $08                                      ; $4133: $E6 $08
    jr   z, jr_002_40DC                           ; $4135: $28 $A5

    xor  a                                        ; $4137: $AF
    ld   [$DF08], a                               ; $4138: $EA $08 $DF
    ld   a, [$C7C0]                               ; $413B: $FA $C0 $C7
    rrca                                          ; $413E: $0F
    ret  nc                                       ; $413F: $D0

    jp   Jump_002_4424                            ; $4140: $C3 $24 $44


Call_002_4143:
jr_002_4143:
    push bc                                       ; $4143: $C5

jr_002_4144:
    ld   a, [de]                                  ; $4144: $1A
    inc  de                                       ; $4145: $13
    ld   [hl+], a                                 ; $4146: $22
    dec  b                                        ; $4147: $05
    jr   nz, jr_002_4144                          ; $4148: $20 $FA

    ld   a, l                                     ; $414A: $7D
    and  $E0                                      ; $414B: $E6 $E0
    add  $20                                      ; $414D: $C6 $20
    ld   l, a                                     ; $414F: $6F
    ld   a, h                                     ; $4150: $7C
    adc  $00                                      ; $4151: $CE $00
    ld   h, a                                     ; $4153: $67
    pop  bc                                       ; $4154: $C1
    dec  c                                        ; $4155: $0D
    jr   nz, jr_002_4143                          ; $4156: $20 $EB

    ret                                           ; $4158: $C9


Call_002_4159:
jr_002_4159:
    ld   a, [de]                                  ; $4159: $1A
    inc  de                                       ; $415A: $13
    ld   [hl+], a                                 ; $415B: $22
    dec  b                                        ; $415C: $05
    jr   nz, jr_002_4159                          ; $415D: $20 $FA

    ret                                           ; $415F: $C9


Call_002_4160:
    xor  a                                        ; $4160: $AF
    ld   hl, $C362                                ; $4161: $21 $62 $C3
    ld   [hl+], a                                 ; $4164: $22
    ld   [hl+], a                                 ; $4165: $22
    ld   [hl+], a                                 ; $4166: $22
    ld   [hl+], a                                 ; $4167: $22
    ld   [$C7C1], a                               ; $4168: $EA $C1 $C7
    ld   [$C7CB], a                               ; $416B: $EA $CB $C7
    ld   hl, $C203                                ; $416E: $21 $03 $C2
    ld   d, h                                     ; $4171: $54
    inc  d                                        ; $4172: $14
    ld   e, l                                     ; $4173: $5D
    ld   [hl+], a                                 ; $4174: $22
    ld   [de], a                                  ; $4175: $12
    inc  e                                        ; $4176: $1C
    ld   [hl+], a                                 ; $4177: $22
    ld   [de], a                                  ; $4178: $12
    inc  l                                        ; $4179: $2C
    ld   e, l                                     ; $417A: $5D
    ld   a, $10                                   ; $417B: $3E $10
    ld   [hl+], a                                 ; $417D: $22
    ld   a, $98                                   ; $417E: $3E $98
    ld   [de], a                                  ; $4180: $12
    inc  e                                        ; $4181: $1C
    xor  a                                        ; $4182: $AF
    ld   [hl], a                                  ; $4183: $77
    ld   [de], a                                  ; $4184: $12
    ld   l, $10                                   ; $4185: $2E $10
    ld   e, l                                     ; $4187: $5D
    ld   [hl-], a                                 ; $4188: $32
    ld   [de], a                                  ; $4189: $12
    dec  e                                        ; $418A: $1D
    ld   [hl-], a                                 ; $418B: $32
    ld   [de], a                                  ; $418C: $12
    dec  e                                        ; $418D: $1D
    ld   a, $1C                                   ; $418E: $3E $1C
    ld   [hl], a                                  ; $4190: $77
    inc  a                                        ; $4191: $3C
    ld   [de], a                                  ; $4192: $12
    xor  a                                        ; $4193: $AF
    ld   l, a                                     ; $4194: $6F
    ld   e, a                                     ; $4195: $5F
    inc  a                                        ; $4196: $3C
    ld   [hl], a                                  ; $4197: $77
    ld   [de], a                                  ; $4198: $12
    ld   a, $E0                                   ; $4199: $3E $E0
    ld   [$C360], a                               ; $419B: $EA $60 $C3
    call Call_002_6967                            ; $419E: $CD $67 $69
    call RenderObjectSprites                      ; $41A1: $CD $C4 $69
    ld   a, [$DF39]                               ; $41A4: $FA $39 $DF
    or   a                                        ; $41A7: $B7
    jp   nz, Jump_002_420A                        ; $41A8: $C2 $0A $42

    ld   a, $B0                                   ; $41AB: $3E $B0
    ld   [$C7C3], a                               ; $41AD: $EA $C3 $C7
    ld   [$C362], a                               ; $41B0: $EA $62 $C3
    ld   a, $03                                   ; $41B3: $3E $03
    ld   [$C7C2], a                               ; $41B5: $EA $C2 $C7
    ld   a, $EB                                   ; $41B8: $3E $EB
    ldh  [rLCDC], a                               ; $41BA: $E0 $40
    ei                                            ; $41BC: $FB
    call Call_000_0059                            ; $41BD: $CD $59 $00
    xor  a                                        ; $41C0: $AF
    ld   [$C7B0], a                               ; $41C1: $EA $B0 $C7

jr_002_41C4:
    call Call_000_00E0                            ; $41C4: $CD $E0 $00
    ld   a, [$C7C1]                               ; $41C7: $FA $C1 $C7
    ld   b, a                                     ; $41CA: $47
    or   a                                        ; $41CB: $B7
    jr   nz, jr_002_41D5                          ; $41CC: $20 $07

    ld   a, [$C26A]                               ; $41CE: $FA $6A $C2
    and  $03                                      ; $41D1: $E6 $03
    jr   nz, jr_002_41F4                          ; $41D3: $20 $1F

jr_002_41D5:
    ld   a, [$C7C3]                               ; $41D5: $FA $C3 $C7
    inc  a                                        ; $41D8: $3C
    add  b                                        ; $41D9: $80
    ld   [$C7C3], a                               ; $41DA: $EA $C3 $C7
    ld   [$C362], a                               ; $41DD: $EA $62 $C3
    push af                                       ; $41E0: $F5
    and  $07                                      ; $41E1: $E6 $07
    call z, Call_002_427B                         ; $41E3: $CC $7B $42
    pop  af                                       ; $41E6: $F1
    or   a                                        ; $41E7: $B7
    jr   nz, jr_002_41F4                          ; $41E8: $20 $0A

    ld   a, [$C7C2]                               ; $41EA: $FA $C2 $C7
    dec  a                                        ; $41ED: $3D
    ld   [$C7C2], a                               ; $41EE: $EA $C2 $C7
    jp   z, Jump_000_0051                         ; $41F1: $CA $51 $00

jr_002_41F4:
    ld   a, [$C262]                               ; $41F4: $FA $62 $C2
    and  $08                                      ; $41F7: $E6 $08
    jr   z, jr_002_41C4                           ; $41F9: $28 $C9

    ld   a, $03                                   ; $41FB: $3E $03
    ld   [$C7C1], a                               ; $41FD: $EA $C1 $C7
    ld   a, [$C7C3]                               ; $4200: $FA $C3 $C7
    and  $FC                                      ; $4203: $E6 $FC
    ld   [$C7C3], a                               ; $4205: $EA $C3 $C7
    jr   jr_002_41C4                              ; $4208: $18 $BA

Jump_002_420A:
    ld   a, $D6                                   ; $420A: $3E $D6
    ld   [$C7C0], a                               ; $420C: $EA $C0 $C7
    ld   a, $03                                   ; $420F: $3E $03
    ld   [$C7C1], a                               ; $4211: $EA $C1 $C7
    xor  a                                        ; $4214: $AF
    ld   [$C7C2], a                               ; $4215: $EA $C2 $C7
    ld   a, $EB                                   ; $4218: $3E $EB
    ldh  [rLCDC], a                               ; $421A: $E0 $40
    ei                                            ; $421C: $FB
    call Call_000_0059                            ; $421D: $CD $59 $00
    call Call_002_4229                            ; $4220: $CD $29 $42
    pop  bc                                       ; $4223: $C1
    ld   a, $F0                                   ; $4224: $3E $F0
    jp   Jump_000_00D0                            ; $4226: $C3 $D0 $00


Call_002_4229:
    xor  a                                        ; $4229: $AF
    ld   [$C7B0], a                               ; $422A: $EA $B0 $C7

jr_002_422D:
    ld   a, [$C7C0]                               ; $422D: $FA $C0 $C7
    ld   [$C362], a                               ; $4230: $EA $62 $C3
    call Call_000_00E0                            ; $4233: $CD $E0 $00
    ld   a, [$C7C2]                               ; $4236: $FA $C2 $C7
    add  $28                                      ; $4239: $C6 $28
    ld   [$C7C2], a                               ; $423B: $EA $C2 $C7
    jr   nc, jr_002_422D                          ; $423E: $30 $ED

    ld   a, [$C7C0]                               ; $4240: $FA $C0 $C7
    inc  a                                        ; $4243: $3C
    push af                                       ; $4244: $F5
    and  $07                                      ; $4245: $E6 $07
    call z, Call_002_427B                         ; $4247: $CC $7B $42
    pop  af                                       ; $424A: $F1
    ld   [$C7C0], a                               ; $424B: $EA $C0 $C7
    jr   nz, jr_002_422D                          ; $424E: $20 $DD

    ld   a, [$C7C1]                               ; $4250: $FA $C1 $C7
    dec  a                                        ; $4253: $3D
    ld   [$C7C1], a                               ; $4254: $EA $C1 $C7
    jr   nz, jr_002_422D                          ; $4257: $20 $D4

    ret                                           ; $4259: $C9


Jump_002_425A:
    ld   a, $9F                                   ; $425A: $3E $9F
    ld   [$C7C0], a                               ; $425C: $EA $C0 $C7
    xor  a                                        ; $425F: $AF
    ld   [$C7C2], a                               ; $4260: $EA $C2 $C7
    ld   [$C364], a                               ; $4263: $EA $64 $C3
    inc  a                                        ; $4266: $3C
    ld   [$C7C1], a                               ; $4267: $EA $C1 $C7
    ld   a, $EB                                   ; $426A: $3E $EB
    ldh  [rLCDC], a                               ; $426C: $E0 $40
    ei                                            ; $426E: $FB
    call Call_000_0059                            ; $426F: $CD $59 $00
    call Call_002_4229                            ; $4272: $CD $29 $42

Jump_002_4275:
    call Call_000_00E0                            ; $4275: $CD $E0 $00
    jp   Jump_002_4275                            ; $4278: $C3 $75 $42


Call_002_427B:
    ld   a, [$C7B6]                               ; $427B: $FA $B6 $C7
    add  $20                                      ; $427E: $C6 $20
    ld   [$C7B6], a                               ; $4280: $EA $B6 $C7
    ld   a, [$C7B7]                               ; $4283: $FA $B7 $C7
    adc  $00                                      ; $4286: $CE $00
    and  $03                                      ; $4288: $E6 $03
    or   $9C                                      ; $428A: $F6 $9C
    ld   [$C7B7], a                               ; $428C: $EA $B7 $C7
    ld   a, [$C7B0]                               ; $428F: $FA $B0 $C7
    dec  a                                        ; $4292: $3D
    jr   z, jr_002_42C8                           ; $4293: $28 $33

    dec  a                                        ; $4295: $3D
    jp   z, Jump_002_431B                         ; $4296: $CA $1B $43

    ld   hl, $4980                                ; $4299: $21 $80 $49
    ld   bc, $9D42                                ; $429C: $01 $42 $9D
    ld   a, [$DF39]                               ; $429F: $FA $39 $DF
    or   a                                        ; $42A2: $B7
    jr   z, jr_002_42B4                           ; $42A3: $28 $0F

    ld   hl, $4B19                                ; $42A5: $21 $19 $4B
    ld   bc, $9DA2                                ; $42A8: $01 $A2 $9D
    dec  a                                        ; $42AB: $3D
    jr   z, jr_002_42B4                           ; $42AC: $28 $06

    ld   hl, $4C4F                                ; $42AE: $21 $4F $4C
    ld   bc, $9CC6                                ; $42B1: $01 $C6 $9C

jr_002_42B4:
    ld   a, c                                     ; $42B4: $79
    ld   [$C7B6], a                               ; $42B5: $EA $B6 $C7
    ld   a, b                                     ; $42B8: $78
    ld   [$C7B7], a                               ; $42B9: $EA $B7 $C7
    ld   a, $10                                   ; $42BC: $3E $10
    ld   [$C7B3], a                               ; $42BE: $EA $B3 $C7
    swap a                                        ; $42C1: $CB $37
    ld   [$C7B0], a                               ; $42C3: $EA $B0 $C7
    jr   jr_002_42D0                              ; $42C6: $18 $08

jr_002_42C8:
    ld   a, [$C7B8]                               ; $42C8: $FA $B8 $C7
    ld   l, a                                     ; $42CB: $6F
    ld   a, [$C7B9]                               ; $42CC: $FA $B9 $C7
    ld   h, a                                     ; $42CF: $67

jr_002_42D0:
    ld   de, $C770                                ; $42D0: $11 $70 $C7
    ld   c, $00                                   ; $42D3: $0E $00

jr_002_42D5:
    ld   a, [hl+]                                 ; $42D5: $2A
    bit  7, a                                     ; $42D6: $CB $7F
    jr   z, jr_002_42DF                           ; $42D8: $28 $05

    ld   [de], a                                  ; $42DA: $12
    inc  e                                        ; $42DB: $1C
    inc  c                                        ; $42DC: $0C
    jr   jr_002_42D5                              ; $42DD: $18 $F6

jr_002_42DF:
    sub  $70                                      ; $42DF: $D6 $70
    jr   nz, jr_002_42F9                          ; $42E1: $20 $16

    and  $0F                                      ; $42E3: $E6 $0F
    ld   b, a                                     ; $42E5: $47
    jr   nz, jr_002_42EA                          ; $42E6: $20 $02

    ld   b, $10                                   ; $42E8: $06 $10

jr_002_42EA:
    ld   a, $C0                                   ; $42EA: $3E $C0

jr_002_42EC:
    ld   [de], a                                  ; $42EC: $12
    inc  e                                        ; $42ED: $1C
    inc  c                                        ; $42EE: $0C
    dec  b                                        ; $42EF: $05
    jr   nz, jr_002_42EC                          ; $42F0: $20 $FA

    ld   a, c                                     ; $42F2: $79
    and  $0F                                      ; $42F3: $E6 $0F
    jr   nz, jr_002_42D5                          ; $42F5: $20 $DE

    jr   jr_002_430A                              ; $42F7: $18 $11

jr_002_42F9:
    cp   $0D                                      ; $42F9: $FE $0D
    jr   nz, jr_002_4316                          ; $42FB: $20 $19

    ld   a, $10                                   ; $42FD: $3E $10
    sub  c                                        ; $42FF: $91
    jr   z, jr_002_430A                           ; $4300: $28 $08

    ld   b, a                                     ; $4302: $47
    ld   a, $C0                                   ; $4303: $3E $C0

jr_002_4305:
    ld   [de], a                                  ; $4305: $12
    inc  e                                        ; $4306: $1C
    dec  b                                        ; $4307: $05
    jr   nz, jr_002_4305                          ; $4308: $20 $FB

jr_002_430A:
    ld   a, l                                     ; $430A: $7D
    ld   [$C7B8], a                               ; $430B: $EA $B8 $C7
    ld   a, h                                     ; $430E: $7C
    ld   [$C7B9], a                               ; $430F: $EA $B9 $C7
    ld   [$C79D], a                               ; $4312: $EA $9D $C7
    ret                                           ; $4315: $C9


jr_002_4316:
    ld   a, $02                                   ; $4316: $3E $02
    ld   [$C7B0], a                               ; $4318: $EA $B0 $C7

Jump_002_431B:
    ld   hl, $C770                                ; $431B: $21 $70 $C7
    ld   b, $10                                   ; $431E: $06 $10
    ld   a, $C0                                   ; $4320: $3E $C0

jr_002_4322:
    ld   [hl+], a                                 ; $4322: $22
    dec  b                                        ; $4323: $05
    jr   nz, jr_002_4322                          ; $4324: $20 $FC

    ld   [$C79D], a                               ; $4326: $EA $9D $C7
    ret                                           ; $4329: $C9


    dec  de                                       ; $432A: $1B
    dec  de                                       ; $432B: $1B
    nop                                           ; $432C: $00
    ld   bc, $0302                                ; $432D: $01 $02 $03
    inc  b                                        ; $4330: $04
    dec  b                                        ; $4331: $05
    ld   b, $07                                   ; $4332: $06 $07
    ld   [$0A09], sp                              ; $4334: $08 $09 $0A
    dec  bc                                       ; $4337: $0B
    inc  c                                        ; $4338: $0C
    dec  c                                        ; $4339: $0D
    ld   c, $1B                                   ; $433A: $0E $1B
    dec  de                                       ; $433C: $1B
    dec  de                                       ; $433D: $1B
    dec  de                                       ; $433E: $1B
    ld   h, $10                                   ; $433F: $26 $10
    ld   de, $2212                                ; $4341: $11 $12 $22
    ld   [hl+], a                                 ; $4344: $22
    dec  d                                        ; $4345: $15
    ld   d, $17                                   ; $4346: $16 $17
    jr   @+$1B                                    ; $4348: $18 $19

    ld   a, [de]                                  ; $434A: $1A
    ld   [hl+], a                                 ; $434B: $22
    ld   [hl+], a                                 ; $434C: $22
    dec  e                                        ; $434D: $1D
    ld   e, $1F                                   ; $434E: $1E $1F
    dec  de                                       ; $4350: $1B
    ld   h, $13                                   ; $4351: $26 $13
    inc  d                                        ; $4353: $14
    jr   nz, @+$23                                ; $4354: $20 $21

    ld   [hl+], a                                 ; $4356: $22
    inc  hl                                       ; $4357: $23
    inc  h                                        ; $4358: $24
    dec  h                                        ; $4359: $25
    ld   [hl+], a                                 ; $435A: $22
    daa                                           ; $435B: $27
    jr   z, jr_002_4387                           ; $435C: $28 $29

    ld   a, [hl+]                                 ; $435E: $2A
    ld   [hl+], a                                 ; $435F: $22
    ld   [hl+], a                                 ; $4360: $22
    ld   [hl+], a                                 ; $4361: $22
    ld   l, $2F                                   ; $4362: $2E $2F
    inc  de                                       ; $4364: $13
    inc  d                                        ; $4365: $14
    dec  l                                        ; $4366: $2D
    add  b                                        ; $4367: $80
    jr   nc, jr_002_439B                          ; $4368: $30 $31

    ld   [hl-], a                                 ; $436A: $32
    inc  sp                                       ; $436B: $33
    inc  [hl]                                     ; $436C: $34
    dec  [hl]                                     ; $436D: $35
    ld   [hl], $37                                ; $436E: $36 $37
    jr   c, jr_002_43AB                           ; $4370: $38 $39

    ld   a, [hl-]                                 ; $4372: $3A
    dec  sp                                       ; $4373: $3B
    inc  a                                        ; $4374: $3C
    dec  a                                        ; $4375: $3D
    ld   a, $3F                                   ; $4376: $3E $3F
    add  e                                        ; $4378: $83
    add  [hl]                                     ; $4379: $86
    dec  l                                        ; $437A: $2D
    add  c                                        ; $437B: $81
    ld   b, b                                     ; $437C: $40
    ld   b, c                                     ; $437D: $41
    ld   b, d                                     ; $437E: $42
    ld   b, e                                     ; $437F: $43
    ld   b, h                                     ; $4380: $44
    ld   b, l                                     ; $4381: $45
    ld   b, [hl]                                  ; $4382: $46
    ld   b, a                                     ; $4383: $47
    ld   c, b                                     ; $4384: $48
    ld   c, c                                     ; $4385: $49
    ld   c, d                                     ; $4386: $4A

jr_002_4387:
    ld   c, e                                     ; $4387: $4B
    ld   c, h                                     ; $4388: $4C
    ld   c, l                                     ; $4389: $4D
    ld   c, [hl]                                  ; $438A: $4E
    ld   c, a                                     ; $438B: $4F
    add  h                                        ; $438C: $84
    dec  l                                        ; $438D: $2D
    dec  l                                        ; $438E: $2D
    add  d                                        ; $438F: $82
    ld   d, b                                     ; $4390: $50
    ld   d, c                                     ; $4391: $51
    ld   d, d                                     ; $4392: $52
    ld   d, e                                     ; $4393: $53
    ld   d, h                                     ; $4394: $54
    ld   d, l                                     ; $4395: $55
    ld   d, [hl]                                  ; $4396: $56
    ld   d, a                                     ; $4397: $57
    ld   e, b                                     ; $4398: $58
    ld   e, c                                     ; $4399: $59
    ld   e, d                                     ; $439A: $5A

jr_002_439B:
    ld   e, e                                     ; $439B: $5B
    ld   e, h                                     ; $439C: $5C
    ld   e, l                                     ; $439D: $5D
    ld   e, [hl]                                  ; $439E: $5E
    ld   e, a                                     ; $439F: $5F
    add  l                                        ; $43A0: $85
    dec  l                                        ; $43A1: $2D
    dec  l                                        ; $43A2: $2D
    dec  l                                        ; $43A3: $2D
    ld   h, b                                     ; $43A4: $60
    ld   h, c                                     ; $43A5: $61
    ld   h, d                                     ; $43A6: $62
    ld   h, e                                     ; $43A7: $63
    ld   h, h                                     ; $43A8: $64
    ld   h, l                                     ; $43A9: $65
    ld   h, [hl]                                  ; $43AA: $66

jr_002_43AB:
    ld   h, a                                     ; $43AB: $67
    ld   l, b                                     ; $43AC: $68
    ld   l, c                                     ; $43AD: $69
    ld   l, d                                     ; $43AE: $6A
    ld   l, e                                     ; $43AF: $6B
    ld   l, h                                     ; $43B0: $6C
    ld   l, l                                     ; $43B1: $6D
    ld   l, [hl]                                  ; $43B2: $6E
    ld   l, a                                     ; $43B3: $6F
    dec  l                                        ; $43B4: $2D
    dec  l                                        ; $43B5: $2D
    dec  l                                        ; $43B6: $2D
    dec  l                                        ; $43B7: $2D
    ld   [hl], b                                  ; $43B8: $70
    dec  l                                        ; $43B9: $2D
    dec  l                                        ; $43BA: $2D
    dec  l                                        ; $43BB: $2D
    dec  l                                        ; $43BC: $2D
    dec  l                                        ; $43BD: $2D
    halt                                          ; $43BE: $76
    dec  l                                        ; $43BF: $2D
    dec  l                                        ; $43C0: $2D
    ld   a, c                                     ; $43C1: $79
    dec  l                                        ; $43C2: $2D
    dec  l                                        ; $43C3: $2D
    dec  l                                        ; $43C4: $2D
    dec  l                                        ; $43C5: $2D
    dec  l                                        ; $43C6: $2D
    ld   a, a                                     ; $43C7: $7F
    dec  l                                        ; $43C8: $2D
    dec  l                                        ; $43C9: $2D
    ld   [hl], c                                  ; $43CA: $71
    ld   [hl], d                                  ; $43CB: $72
    ld   [hl], l                                  ; $43CC: $75
    ld   [hl], a                                  ; $43CD: $77
    ld   [hl], c                                  ; $43CE: $71
    ld   [hl], d                                  ; $43CF: $72
    ld   [hl], l                                  ; $43D0: $75
    ld   [hl], a                                  ; $43D1: $77
    ld   [hl], c                                  ; $43D2: $71
    ld   [hl], d                                  ; $43D3: $72
    ld   [hl], l                                  ; $43D4: $75
    ld   [hl], a                                  ; $43D5: $77
    ld   [hl], c                                  ; $43D6: $71
    ld   [hl], d                                  ; $43D7: $72
    ld   [hl], l                                  ; $43D8: $75
    ld   [hl], a                                  ; $43D9: $77
    ld   [hl], c                                  ; $43DA: $71
    ld   [hl], d                                  ; $43DB: $72
    ld   [hl], l                                  ; $43DC: $75
    ld   [hl], a                                  ; $43DD: $77
    ld   [hl], e                                  ; $43DE: $73
    ld   [hl], h                                  ; $43DF: $74
    rrca                                          ; $43E0: $0F
    rrca                                          ; $43E1: $0F
    ld   [hl], e                                  ; $43E2: $73
    ld   [hl], h                                  ; $43E3: $74
    rrca                                          ; $43E4: $0F
    rrca                                          ; $43E5: $0F
    ld   [hl], e                                  ; $43E6: $73
    ld   [hl], h                                  ; $43E7: $74
    rrca                                          ; $43E8: $0F
    rrca                                          ; $43E9: $0F
    ld   [hl], e                                  ; $43EA: $73
    ld   [hl], h                                  ; $43EB: $74
    rrca                                          ; $43EC: $0F
    rrca                                          ; $43ED: $0F
    ld   [hl], e                                  ; $43EE: $73
    ld   [hl], h                                  ; $43EF: $74
    rrca                                          ; $43F0: $0F
    rrca                                          ; $43F1: $0F
    sub  b                                        ; $43F2: $90
    sub  c                                        ; $43F3: $91
    sub  d                                        ; $43F4: $92
    sub  e                                        ; $43F5: $93
    sub  c                                        ; $43F6: $91
    sub  h                                        ; $43F7: $94
    sub  d                                        ; $43F8: $92
    sub  b                                        ; $43F9: $90
    sub  b                                        ; $43FA: $90
    add  a                                        ; $43FB: $87
    adc  b                                        ; $43FC: $88
    sub  e                                        ; $43FD: $93
    adc  c                                        ; $43FE: $89
    adc  d                                        ; $43FF: $8A
    adc  e                                        ; $4400: $8B
    adc  h                                        ; $4401: $8C
    adc  h                                        ; $4402: $8C
    adc  b                                        ; $4403: $88
    rrca                                          ; $4404: $0F
    adc  l                                        ; $4405: $8D
    sub  d                                        ; $4406: $92
    sub  h                                        ; $4407: $94
    adc  l                                        ; $4408: $8D
    adc  b                                        ; $4409: $88
    adc  [hl]                                     ; $440A: $8E
    rrca                                          ; $440B: $0F
    sbc  e                                        ; $440C: $9B
    sbc  h                                        ; $440D: $9C
    sbc  l                                        ; $440E: $9D
    sbc  [hl]                                     ; $440F: $9E
    sub  l                                        ; $4410: $95
    sub  [hl]                                     ; $4411: $96
    adc  l                                        ; $4412: $8D
    sub  a                                        ; $4413: $97
    sbc  b                                        ; $4414: $98
    sub  b                                        ; $4415: $90
    sub  a                                        ; $4416: $97
    adc  c                                        ; $4417: $89
    rrca                                          ; $4418: $0F
    sbc  c                                        ; $4419: $99
    sbc  d                                        ; $441A: $9A
    rrca                                          ; $441B: $0F
    sbc  b                                        ; $441C: $98
    sub  [hl]                                     ; $441D: $96
    sbc  b                                        ; $441E: $98
    sub  c                                        ; $441F: $91
    sub  a                                        ; $4420: $97
    sbc  b                                        ; $4421: $98
    adc  c                                        ; $4422: $89
    adc  b                                        ; $4423: $88

Jump_002_4424:
    call Call_000_0051                            ; $4424: $CD $51 $00
    ld   a, $20                                   ; $4427: $3E $20
    call Call_000_00D0                            ; $4429: $CD $D0 $00
    call Call_000_00E5                            ; $442C: $CD $E5 $00
    ld   a, $C0                                   ; $442F: $3E $C0
    call Call_000_004C                            ; $4431: $CD $4C $00
    ld   a, $25                                   ; $4434: $3E $25
    ld   [$DF00], a                               ; $4436: $EA $00 $DF
    call Call_000_00C8                            ; $4439: $CD $C8 $00
    ld   hl, $9903                                ; $443C: $21 $03 $99
    ld   de, $4C90                                ; $443F: $11 $90 $4C
    ld   bc, $0705                                ; $4442: $01 $05 $07

jr_002_4445:
    push bc                                       ; $4445: $C5

jr_002_4446:
    ld   a, [de]                                  ; $4446: $1A
    ld   [hl+], a                                 ; $4447: $22
    inc  de                                       ; $4448: $13
    inc  hl                                       ; $4449: $23
    dec  b                                        ; $444A: $05
    jr   nz, jr_002_4446                          ; $444B: $20 $F9

    ld   c, $32                                   ; $444D: $0E $32
    add  hl, bc                                   ; $444F: $09
    ld   a, l                                     ; $4450: $7D
    ld   l, a                                     ; $4451: $6F
    pop  bc                                       ; $4452: $C1
    dec  c                                        ; $4453: $0D
    jr   nz, jr_002_4445                          ; $4454: $20 $EF

    ld   hl, $9A10                                ; $4456: $21 $10 $9A
    ld   a, [de]                                  ; $4459: $1A
    inc  de                                       ; $445A: $13
    ld   [hl+], a                                 ; $445B: $22
    ld   a, [de]                                  ; $445C: $1A
    ld   [hl], a                                  ; $445D: $77
    ld   hl, $9800                                ; $445E: $21 $00 $98
    ld   de, $0020                                ; $4461: $11 $20 $00
    ld   a, $08                                   ; $4464: $3E $08
    call Call_002_46D3                            ; $4466: $CD $D3 $46
    ld   hl, $9801                                ; $4469: $21 $01 $98
    call Call_002_46D3                            ; $446C: $CD $D3 $46
    ld   hl, $9812                                ; $446F: $21 $12 $98
    call Call_002_46D3                            ; $4472: $CD $D3 $46
    ld   hl, $9813                                ; $4475: $21 $13 $98
    call Call_002_46D3                            ; $4478: $CD $D3 $46
    ld   e, $01                                   ; $447B: $1E $01
    ld   hl, $9800                                ; $447D: $21 $00 $98
    call Call_002_46D3                            ; $4480: $CD $D3 $46
    ld   hl, $98E0                                ; $4483: $21 $E0 $98
    call Call_002_46D3                            ; $4486: $CD $D3 $46
    xor  $01                                      ; $4489: $EE $01
    ld   hl, $9A20                                ; $448B: $21 $20 $9A
    call Call_002_46D3                            ; $448E: $CD $D3 $46
    ld   a, $C0                                   ; $4491: $3E $C0
    ld   [$9841], a                               ; $4493: $EA $41 $98
    ld   [$9852], a                               ; $4496: $EA $52 $98
    ld   [$9861], a                               ; $4499: $EA $61 $98
    ld   [$9872], a                               ; $449C: $EA $72 $98
    ld   a, $08                                   ; $449F: $3E $08
    ld   [$9822], a                               ; $44A1: $EA $22 $98
    ld   [$98A2], a                               ; $44A4: $EA $A2 $98
    inc  a                                        ; $44A7: $3C
    ld   [$9831], a                               ; $44A8: $EA $31 $98
    ld   [$98B1], a                               ; $44AB: $EA $B1 $98
    ld   a, $18                                   ; $44AE: $3E $18
    ld   [$98A0], a                               ; $44B0: $EA $A0 $98
    ld   [$98E0], a                               ; $44B3: $EA $E0 $98
    inc  a                                        ; $44B6: $3C
    ld   [$98E1], a                               ; $44B7: $EA $E1 $98
    inc  a                                        ; $44BA: $3C
    ld   [$98C0], a                               ; $44BB: $EA $C0 $98
    ld   [$9900], a                               ; $44BE: $EA $00 $99
    inc  a                                        ; $44C1: $3C
    ld   [$9901], a                               ; $44C2: $EA $01 $99
    ld   a, $54                                   ; $44C5: $3E $54
    ld   [$9960], a                               ; $44C7: $EA $60 $99
    ld   [$9972], a                               ; $44CA: $EA $72 $99
    inc  a                                        ; $44CD: $3C
    ld   [$9961], a                               ; $44CE: $EA $61 $99
    ld   [$9973], a                               ; $44D1: $EA $73 $99
    inc  a                                        ; $44D4: $3C
    ld   [$9980], a                               ; $44D5: $EA $80 $99
    ld   [$9992], a                               ; $44D8: $EA $92 $99
    inc  a                                        ; $44DB: $3C
    ld   [$9981], a                               ; $44DC: $EA $81 $99
    ld   [$9993], a                               ; $44DF: $EA $93 $99
    ld   a, $24                                   ; $44E2: $3E $24
    ld   [$99F2], a                               ; $44E4: $EA $F2 $99
    inc  a                                        ; $44E7: $3C
    ld   [$99F3], a                               ; $44E8: $EA $F3 $99
    inc  a                                        ; $44EB: $3C
    ld   [$9A12], a                               ; $44EC: $EA $12 $9A
    inc  a                                        ; $44EF: $3C
    ld   [$9A13], a                               ; $44F0: $EA $13 $9A
    ld   a, $05                                   ; $44F3: $3E $05
    ld   [$C7A3], a                               ; $44F5: $EA $A3 $C7
    xor  a                                        ; $44F8: $AF
    ld   [$C7A4], a                               ; $44F9: $EA $A4 $C7
    ld   [$C7A5], a                               ; $44FC: $EA $A5 $C7
    ld   hl, $C200                                ; $44FF: $21 $00 $C2
    ld   a, $A5                                   ; $4502: $3E $A5
    ld   [hl+], a                                 ; $4504: $22
    ld   a, $98                                   ; $4505: $3E $98
    ld   [hl+], a                                 ; $4507: $22
    ld   a, $09                                   ; $4508: $3E $09
    ld   [hl+], a                                 ; $450A: $22
    ld   b, a                                     ; $450B: $47
    ld   a, $C0                                   ; $450C: $3E $C0

jr_002_450E:
    ld   [hl+], a                                 ; $450E: $22
    dec  b                                        ; $450F: $05
    jr   nz, jr_002_450E                          ; $4510: $20 $FC

    ld   l, $07                                   ; $4512: $2E $07
    ld   a, $CD                                   ; $4514: $3E $CD
    ld   [hl], a                                  ; $4516: $77
    call Call_000_0044                            ; $4517: $CD $44 $00
    ld   a, $12                                   ; $451A: $3E $12
    rst  RST_28                                   ; $451C: $EF
    ld   b, $68                                   ; $451D: $06 $68
    ld   a, $F5                                   ; $451F: $3E $F5
    rst  RST_28                                   ; $4521: $EF
    ld   a, $83                                   ; $4522: $3E $83
    ldh  [rLCDC], a                               ; $4524: $E0 $40
    ei                                            ; $4526: $FB
    call Call_000_0059                            ; $4527: $CD $59 $00
    jr   jr_002_453A                              ; $452A: $18 $0E

Jump_002_452C:
    call Call_000_0044                            ; $452C: $CD $44 $00
    ld   hl, $4C7D                                ; $452F: $21 $7D $4C
    call Call_002_46B7                            ; $4532: $CD $B7 $46
    ld   a, $78                                   ; $4535: $3E $78
    call Call_000_00D0                            ; $4537: $CD $D0 $00

jr_002_453A:
    ld   hl, $4C6A                                ; $453A: $21 $6A $4C
    call Call_002_46B7                            ; $453D: $CD $B7 $46
    ld   hl, $C20F                                ; $4540: $21 $0F $C2
    xor  a                                        ; $4543: $AF
    ld   [hl+], a                                 ; $4544: $22
    ld   [hl+], a                                 ; $4545: $22
    ld   [hl+], a                                 ; $4546: $22
    ld   [hl+], a                                 ; $4547: $22
    ld   hl, $C200                                ; $4548: $21 $00 $C2
    call Call_002_46B7                            ; $454B: $CD $B7 $46
    call Call_000_0044                            ; $454E: $CD $44 $00
    ld   a, [$C211]                               ; $4551: $FA $11 $C2
    add  $50                                      ; $4554: $C6 $50
    ld   [$C000], a                               ; $4556: $EA $00 $C0
    ld   a, [$C212]                               ; $4559: $FA $12 $C2
    add  $18                                      ; $455C: $C6 $18
    ld   [$C001], a                               ; $455E: $EA $01 $C0
    ld   a, $C8                                   ; $4561: $3E $C8
    ld   [$C002], a                               ; $4563: $EA $02 $C0
    ld   a, [$C26A]                               ; $4566: $FA $6A $C2
    and  $20                                      ; $4569: $E6 $20
    jr   z, jr_002_4587                           ; $456B: $28 $1A

    ld   a, $38                                   ; $456D: $3E $38
    ld   [$C004], a                               ; $456F: $EA $04 $C0
    ld   a, [$C210]                               ; $4572: $FA $10 $C2
    bit  2, a                                     ; $4575: $CB $57
    jr   z, jr_002_457A                           ; $4577: $28 $01

    inc  a                                        ; $4579: $3C

jr_002_457A:
    swap a                                        ; $457A: $CB $37
    rrca                                          ; $457C: $0F
    add  $30                                      ; $457D: $C6 $30
    ld   [$C005], a                               ; $457F: $EA $05 $C0
    ld   a, $9F                                   ; $4582: $3E $9F
    ld   [$C006], a                               ; $4584: $EA $06 $C0

jr_002_4587:
    call Call_000_00E0                            ; $4587: $CD $E0 $00
    ld   hl, $454E                                ; $458A: $21 $4E $45
    push hl                                       ; $458D: $E5
    ld   a, [$C262]                               ; $458E: $FA $62 $C2
    or   a                                        ; $4591: $B7
    jr   nz, jr_002_45B5                          ; $4592: $20 $21

    ld   a, [$C7C1]                               ; $4594: $FA $C1 $C7
    ld   b, a                                     ; $4597: $47
    ld   a, [$C261]                               ; $4598: $FA $61 $C2
    and  b                                        ; $459B: $A0
    and  $F0                                      ; $459C: $E6 $F0
    jr   nz, jr_002_45A8                          ; $459E: $20 $08

    xor  a                                        ; $45A0: $AF
    ld   [$C7C1], a                               ; $45A1: $EA $C1 $C7
    ld   [$C7C2], a                               ; $45A4: $EA $C2 $C7
    ret                                           ; $45A7: $C9


jr_002_45A8:
    ld   a, [$C7C2]                               ; $45A8: $FA $C2 $C7
    inc  a                                        ; $45AB: $3C
    ld   [$C7C2], a                               ; $45AC: $EA $C2 $C7
    and  $0F                                      ; $45AF: $E6 $0F
    ret  nz                                       ; $45B1: $C0

    ld   a, [$C7C1]                               ; $45B2: $FA $C1 $C7

jr_002_45B5:
    ld   [$C7C1], a                               ; $45B5: $EA $C1 $C7
    rrca                                          ; $45B8: $0F
    jr   c, jr_002_45D4                           ; $45B9: $38 $19

    rrca                                          ; $45BB: $0F
    jr   c, jr_002_4613                           ; $45BC: $38 $55

    rrca                                          ; $45BE: $0F
    jp   c, Jump_002_461D                         ; $45BF: $DA $1D $46

    rrca                                          ; $45C2: $0F
    rrca                                          ; $45C3: $0F
    jp   c, Jump_002_4633                         ; $45C4: $DA $33 $46

    rrca                                          ; $45C7: $0F
    jp   c, Jump_002_4654                         ; $45C8: $DA $54 $46

    rrca                                          ; $45CB: $0F
    jp   c, Jump_002_4674                         ; $45CC: $DA $74 $46

    rrca                                          ; $45CF: $0F
    jp   c, Jump_002_4695                         ; $45D0: $DA $95 $46

    ret                                           ; $45D3: $C9


jr_002_45D4:
    ld   hl, $C203                                ; $45D4: $21 $03 $C2
    ld   a, [$C210]                               ; $45D7: $FA $10 $C2
    ld   b, a                                     ; $45DA: $47
    bit  2, a                                     ; $45DB: $CB $57
    jr   z, jr_002_45E0                           ; $45DD: $28 $01

    inc  a                                        ; $45DF: $3C

jr_002_45E0:
    add  l                                        ; $45E0: $85
    ld   l, a                                     ; $45E1: $6F
    ld   a, [$C20F]                               ; $45E2: $FA $0F $C2
    cp   $20                                      ; $45E5: $FE $20
    jr   nc, jr_002_4601                          ; $45E7: $30 $18

    inc  a                                        ; $45E9: $3C
    and  $1F                                      ; $45EA: $E6 $1F
    add  $E0                                      ; $45EC: $C6 $E0
    ld   [hl], a                                  ; $45EE: $77
    inc  b                                        ; $45EF: $04
    ld   a, b                                     ; $45F0: $78
    ld   [$C210], a                               ; $45F1: $EA $10 $C2
    push af                                       ; $45F4: $F5
    ld   hl, $C200                                ; $45F5: $21 $00 $C2
    call Call_002_46B7                            ; $45F8: $CD $B7 $46
    pop  af                                       ; $45FB: $F1
    cp   $08                                      ; $45FC: $FE $08
    ret  c                                        ; $45FE: $D8

    jr   jr_002_462B                              ; $45FF: $18 $2A

jr_002_4601:
    jr   z, jr_002_4613                           ; $4601: $28 $10

    and  $03                                      ; $4603: $E6 $03
    dec  a                                        ; $4605: $3D
    jr   nz, jr_002_462B                          ; $4606: $20 $23

    ld   a, [$C210]                               ; $4608: $FA $10 $C2
    inc  a                                        ; $460B: $3C
    cp   $08                                      ; $460C: $FE $08
    ret  nc                                       ; $460E: $D0

    ld   [$C210], a                               ; $460F: $EA $10 $C2
    ret                                           ; $4612: $C9


jr_002_4613:
    ld   a, [$C210]                               ; $4613: $FA $10 $C2
    or   a                                        ; $4616: $B7
    ret  z                                        ; $4617: $C8

    dec  a                                        ; $4618: $3D
    ld   [$C210], a                               ; $4619: $EA $10 $C2
    ret                                           ; $461C: $C9


Jump_002_461D:
    call Call_000_0044                            ; $461D: $CD $44 $00
    call Call_000_0051                            ; $4620: $CD $51 $00
    ld   a, $30                                   ; $4623: $3E $30
    call Call_000_00D0                            ; $4625: $CD $D0 $00
    jp   BootInit                                 ; $4628: $C3 $50 $01


jr_002_462B:
    call Call_002_47E4                            ; $462B: $CD $E4 $47
    pop  hl                                       ; $462E: $E1
    jp   nc, Jump_002_452C                        ; $462F: $D2 $2C $45

    ret                                           ; $4632: $C9


Jump_002_4633:
    ld   a, [$C212]                               ; $4633: $FA $12 $C2
    add  $10                                      ; $4636: $C6 $10
    ld   [$C212], a                               ; $4638: $EA $12 $C2
    cp   $70                                      ; $463B: $FE $70
    jr   nc, jr_002_4647                          ; $463D: $30 $08

    ld   a, [$C20F]                               ; $463F: $FA $0F $C2
    inc  a                                        ; $4642: $3C
    ld   [$C20F], a                               ; $4643: $EA $0F $C2
    ret                                           ; $4646: $C9


jr_002_4647:
    xor  a                                        ; $4647: $AF
    ld   [$C212], a                               ; $4648: $EA $12 $C2
    ld   a, [$C20F]                               ; $464B: $FA $0F $C2
    sub  $06                                      ; $464E: $D6 $06
    ld   [$C20F], a                               ; $4650: $EA $0F $C2
    ret                                           ; $4653: $C9


Jump_002_4654:
    ld   a, [$C212]                               ; $4654: $FA $12 $C2
    sub  $10                                      ; $4657: $D6 $10
    ld   [$C212], a                               ; $4659: $EA $12 $C2
    jr   c, jr_002_4666                           ; $465C: $38 $08

    ld   a, [$C20F]                               ; $465E: $FA $0F $C2
    dec  a                                        ; $4661: $3D
    ld   [$C20F], a                               ; $4662: $EA $0F $C2
    ret                                           ; $4665: $C9


jr_002_4666:
    ld   a, $60                                   ; $4666: $3E $60
    ld   [$C212], a                               ; $4668: $EA $12 $C2
    ld   a, [$C20F]                               ; $466B: $FA $0F $C2
    add  $06                                      ; $466E: $C6 $06
    ld   [$C20F], a                               ; $4670: $EA $0F $C2
    ret                                           ; $4673: $C9


Jump_002_4674:
    ld   a, [$C211]                               ; $4674: $FA $11 $C2
    sub  $10                                      ; $4677: $D6 $10
    ld   [$C211], a                               ; $4679: $EA $11 $C2
    jr   c, jr_002_4687                           ; $467C: $38 $09

    ld   a, [$C20F]                               ; $467E: $FA $0F $C2
    sub  $07                                      ; $4681: $D6 $07
    ld   [$C20F], a                               ; $4683: $EA $0F $C2
    ret                                           ; $4686: $C9


jr_002_4687:
    ld   a, $40                                   ; $4687: $3E $40
    ld   [$C211], a                               ; $4689: $EA $11 $C2
    ld   a, [$C20F]                               ; $468C: $FA $0F $C2
    add  $1C                                      ; $468F: $C6 $1C
    ld   [$C20F], a                               ; $4691: $EA $0F $C2
    ret                                           ; $4694: $C9


Jump_002_4695:
    ld   a, [$C211]                               ; $4695: $FA $11 $C2
    add  $10                                      ; $4698: $C6 $10
    ld   [$C211], a                               ; $469A: $EA $11 $C2
    cp   $50                                      ; $469D: $FE $50
    jr   nc, jr_002_46AA                          ; $469F: $30 $09

    ld   a, [$C20F]                               ; $46A1: $FA $0F $C2
    add  $07                                      ; $46A4: $C6 $07
    ld   [$C20F], a                               ; $46A6: $EA $0F $C2
    ret                                           ; $46A9: $C9


jr_002_46AA:
    xor  a                                        ; $46AA: $AF
    ld   [$C211], a                               ; $46AB: $EA $11 $C2
    ld   a, [$C20F]                               ; $46AE: $FA $0F $C2
    sub  $1C                                      ; $46B1: $D6 $1C
    ld   [$C20F], a                               ; $46B3: $EA $0F $C2
    ret                                           ; $46B6: $C9


Call_002_46B7:
    ld   de, $C770                                ; $46B7: $11 $70 $C7
    ld   a, [hl+]                                 ; $46BA: $2A
    ld   [$C7B6], a                               ; $46BB: $EA $B6 $C7
    ld   a, [hl+]                                 ; $46BE: $2A
    ld   [$C7B7], a                               ; $46BF: $EA $B7 $C7
    ld   a, [hl+]                                 ; $46C2: $2A
    ld   [$C7B3], a                               ; $46C3: $EA $B3 $C7
    ld   [$C79D], a                               ; $46C6: $EA $9D $C7
    ld   b, a                                     ; $46C9: $47

jr_002_46CA:
    ld   a, [hl+]                                 ; $46CA: $2A
    ld   [de], a                                  ; $46CB: $12
    inc  e                                        ; $46CC: $1C
    dec  b                                        ; $46CD: $05
    jr   nz, jr_002_46CA                          ; $46CE: $20 $FA

    jp   WaitForRequestedVBlank                   ; $46D0: $C3 $90 $00


Call_002_46D3:
    xor  $01                                      ; $46D3: $EE $01
    ld   b, $0A                                   ; $46D5: $06 $0A

jr_002_46D7:
    ld   [hl], a                                  ; $46D7: $77
    xor  $01                                      ; $46D8: $EE $01
    add  hl, de                                   ; $46DA: $19
    ld   [hl], a                                  ; $46DB: $77
    xor  $01                                      ; $46DC: $EE $01
    add  hl, de                                   ; $46DE: $19
    dec  b                                        ; $46DF: $05
    jr   nz, jr_002_46D7                          ; $46E0: $20 $F5

    ret                                           ; $46E2: $C9


Jump_002_46E3:
    ld   hl, $C960                                ; $46E3: $21 $60 $C9
    ld   b, $1F                                   ; $46E6: $06 $1F
    xor  a                                        ; $46E8: $AF

jr_002_46E9:
    ld   [hl+], a                                 ; $46E9: $22
    dec  b                                        ; $46EA: $05
    jr   nz, jr_002_46E9                          ; $46EB: $20 $FC

    ld   a, [$DF1A]                               ; $46ED: $FA $1A $DF
    ld   b, $08                                   ; $46F0: $06 $08
    call Call_002_47BA                            ; $46F2: $CD $BA $47
    ld   a, [$DF18]                               ; $46F5: $FA $18 $DF
    ld   b, $07                                   ; $46F8: $06 $07
    call Call_002_47BA                            ; $46FA: $CD $BA $47
    ld   a, [$DF1B]                               ; $46FD: $FA $1B $DF
    ld   b, $03                                   ; $4700: $06 $03
    call Call_002_47BA                            ; $4702: $CD $BA $47
    xor  a                                        ; $4705: $AF
    ld   b, $03                                   ; $4706: $06 $03
    call Call_002_47BA                            ; $4708: $CD $BA $47
    ld   a, [$DF17]                               ; $470B: $FA $17 $DF
    ld   b, $04                                   ; $470E: $06 $04
    call Call_002_47BA                            ; $4710: $CD $BA $47
    ld   a, [$DF19]                               ; $4713: $FA $19 $DF
    inc  b                                        ; $4716: $04
    call Call_002_47BA                            ; $4717: $CD $BA $47
    ld   a, [$DF14]                               ; $471A: $FA $14 $DF
    ld   b, $03                                   ; $471D: $06 $03
    call Call_002_47BA                            ; $471F: $CD $BA $47
    xor  a                                        ; $4722: $AF
    ld   b, $03                                   ; $4723: $06 $03
    call Call_002_47BA                            ; $4725: $CD $BA $47
    ld   bc, $C969                                ; $4728: $01 $69 $C9
    ld   h, $00                                   ; $472B: $26 $00
    ld   a, [bc]                                  ; $472D: $0A
    inc  c                                        ; $472E: $0C
    ld   l, a                                     ; $472F: $6F
    ld   a, [bc]                                  ; $4730: $0A
    inc  c                                        ; $4731: $0C
    call AddAToHL                                 ; $4732: $CD $71 $00
    ld   a, [bc]                                  ; $4735: $0A
    inc  c                                        ; $4736: $0C
    call AddAToHL                                 ; $4737: $CD $71 $00
    ld   a, [bc]                                  ; $473A: $0A
    call AddAToHL                                 ; $473B: $CD $71 $00
    ld   a, l                                     ; $473E: $7D
    ld   [$C968], a                               ; $473F: $EA $68 $C9
    ld   a, h                                     ; $4742: $7C
    swap a                                        ; $4743: $CB $37
    rlca                                          ; $4745: $07
    and  $E0                                      ; $4746: $E6 $E0
    ld   l, a                                     ; $4748: $6F
    ld   a, [bc]                                  ; $4749: $0A
    or   l                                        ; $474A: $B5
    ld   [bc], a                                  ; $474B: $02
    ld   a, [$C26A]                               ; $474C: $FA $6A $C2
    and  $07                                      ; $474F: $E6 $07
    push af                                       ; $4751: $F5
    ld   hl, $494A                                ; $4752: $21 $4A $49
    call AddAToHL                                 ; $4755: $CD $71 $00
    ld   de, $C968                                ; $4758: $11 $68 $C9
    ld   b, $05                                   ; $475B: $06 $05

jr_002_475D:
    ld   a, [de]                                  ; $475D: $1A
    xor  [hl]                                     ; $475E: $AE
    ld   [de], a                                  ; $475F: $12
    inc  hl                                       ; $4760: $23
    inc  e                                        ; $4761: $1C
    dec  b                                        ; $4762: $05
    jr   nz, jr_002_475D                          ; $4763: $20 $F8

    ld   a, [$C96B]                               ; $4765: $FA $6B $C9
    and  $E3                                      ; $4768: $E6 $E3
    ld   b, a                                     ; $476A: $47
    pop  af                                       ; $476B: $F1
    rlca                                          ; $476C: $07
    rlca                                          ; $476D: $07
    or   b                                        ; $476E: $B0
    ld   [$C96B], a                               ; $476F: $EA $6B $C9
    ld   hl, $C968                                ; $4772: $21 $68 $C9
    ld   de, $C96D                                ; $4775: $11 $6D $C9
    ld   b, $05                                   ; $4778: $06 $05

jr_002_477A:
    ld   a, [hl+]                                 ; $477A: $2A
    ld   [de], a                                  ; $477B: $12
    inc  e                                        ; $477C: $1C
    dec  b                                        ; $477D: $05
    jr   nz, jr_002_477A                          ; $477E: $20 $FA

    ld   hl, $C967                                ; $4780: $21 $67 $C9
    ld   c, $08                                   ; $4783: $0E $08

jr_002_4785:
    ld   b, $05                                   ; $4785: $06 $05

jr_002_4787:
    ld   a, [$C96D]                               ; $4787: $FA $6D $C9
    rla                                           ; $478A: $17
    ld   [$C96D], a                               ; $478B: $EA $6D $C9
    ld   a, [$C96E]                               ; $478E: $FA $6E $C9
    rla                                           ; $4791: $17
    ld   [$C96E], a                               ; $4792: $EA $6E $C9
    ld   a, [$C96F]                               ; $4795: $FA $6F $C9
    rla                                           ; $4798: $17
    ld   [$C96F], a                               ; $4799: $EA $6F $C9
    ld   a, [$C970]                               ; $479C: $FA $70 $C9
    rla                                           ; $479F: $17
    ld   [$C970], a                               ; $47A0: $EA $70 $C9
    ld   a, [$C971]                               ; $47A3: $FA $71 $C9
    rla                                           ; $47A6: $17
    ld   [$C971], a                               ; $47A7: $EA $71 $C9
    rl   [hl]                                     ; $47AA: $CB $16
    dec  b                                        ; $47AC: $05
    jr   nz, jr_002_4787                          ; $47AD: $20 $D8

    ld   a, [hl]                                  ; $47AF: $7E
    add  $E0                                      ; $47B0: $C6 $E0
    ld   [hl], a                                  ; $47B2: $77
    dec  l                                        ; $47B3: $2D
    dec  c                                        ; $47B4: $0D
    jr   nz, jr_002_4785                          ; $47B5: $20 $CE

    ret                                           ; $47B7: $C9


Call_002_47B8:
    ld   b, $05                                   ; $47B8: $06 $05

Call_002_47BA:
    ld   c, a                                     ; $47BA: $4F

jr_002_47BB:
    srl  c                                        ; $47BB: $CB $39
    ld   a, [$C96C]                               ; $47BD: $FA $6C $C9
    rra                                           ; $47C0: $1F
    ld   [$C96C], a                               ; $47C1: $EA $6C $C9
    ld   a, [$C96B]                               ; $47C4: $FA $6B $C9
    rra                                           ; $47C7: $1F
    ld   [$C96B], a                               ; $47C8: $EA $6B $C9
    ld   a, [$C96A]                               ; $47CB: $FA $6A $C9
    rra                                           ; $47CE: $1F
    ld   [$C96A], a                               ; $47CF: $EA $6A $C9
    ld   a, [$C969]                               ; $47D2: $FA $69 $C9
    rra                                           ; $47D5: $1F
    ld   [$C969], a                               ; $47D6: $EA $69 $C9
    ld   a, [$C968]                               ; $47D9: $FA $68 $C9
    rra                                           ; $47DC: $1F
    ld   [$C968], a                               ; $47DD: $EA $68 $C9
    dec  b                                        ; $47E0: $05
    jr   nz, jr_002_47BB                          ; $47E1: $20 $D8

    ret                                           ; $47E3: $C9


Call_002_47E4:
    ld   a, [$C20B]                               ; $47E4: $FA $0B $C2
    call Call_002_47B8                            ; $47E7: $CD $B8 $47
    ld   a, [$C20A]                               ; $47EA: $FA $0A $C2
    call Call_002_47B8                            ; $47ED: $CD $B8 $47
    ld   a, [$C209]                               ; $47F0: $FA $09 $C2
    call Call_002_47B8                            ; $47F3: $CD $B8 $47
    ld   a, [$C208]                               ; $47F6: $FA $08 $C2
    call Call_002_47B8                            ; $47F9: $CD $B8 $47
    ld   a, [$C206]                               ; $47FC: $FA $06 $C2
    call Call_002_47B8                            ; $47FF: $CD $B8 $47
    ld   a, [$C205]                               ; $4802: $FA $05 $C2
    call Call_002_47B8                            ; $4805: $CD $B8 $47
    ld   a, [$C204]                               ; $4808: $FA $04 $C2
    call Call_002_47B8                            ; $480B: $CD $B8 $47
    ld   a, [$C203]                               ; $480E: $FA $03 $C2
    call Call_002_47B8                            ; $4811: $CD $B8 $47
    ld   a, [$C96B]                               ; $4814: $FA $6B $C9
    rrca                                          ; $4817: $0F
    rrca                                          ; $4818: $0F
    and  $07                                      ; $4819: $E6 $07
    ld   hl, $494A                                ; $481B: $21 $4A $49
    call AddAToHL                                 ; $481E: $CD $71 $00
    ld   de, $C968                                ; $4821: $11 $68 $C9
    ld   b, $05                                   ; $4824: $06 $05

jr_002_4826:
    ld   a, [de]                                  ; $4826: $1A
    xor  [hl]                                     ; $4827: $AE
    ld   [de], a                                  ; $4828: $12
    inc  hl                                       ; $4829: $23
    inc  e                                        ; $482A: $1C
    dec  b                                        ; $482B: $05
    jr   nz, jr_002_4826                          ; $482C: $20 $F8

    ld   a, [$C96B]                               ; $482E: $FA $6B $C9
    and  $E3                                      ; $4831: $E6 $E3
    ld   [$C96B], a                               ; $4833: $EA $6B $C9
    ld   bc, $C969                                ; $4836: $01 $69 $C9
    ld   h, $00                                   ; $4839: $26 $00
    ld   a, [bc]                                  ; $483B: $0A
    inc  c                                        ; $483C: $0C
    ld   l, a                                     ; $483D: $6F
    ld   a, [bc]                                  ; $483E: $0A
    inc  c                                        ; $483F: $0C
    call AddAToHL                                 ; $4840: $CD $71 $00
    ld   a, [bc]                                  ; $4843: $0A
    inc  c                                        ; $4844: $0C
    call AddAToHL                                 ; $4845: $CD $71 $00
    ld   a, [bc]                                  ; $4848: $0A
    and  $1F                                      ; $4849: $E6 $1F
    call AddAToHL                                 ; $484B: $CD $71 $00
    ld   a, [bc]                                  ; $484E: $0A
    swap a                                        ; $484F: $CB $37
    rrca                                          ; $4851: $0F
    and  $07                                      ; $4852: $E6 $07
    ld   b, a                                     ; $4854: $47
    ld   a, [$C968]                               ; $4855: $FA $68 $C9
    sub  l                                        ; $4858: $95
    ld   a, b                                     ; $4859: $78
    sbc  h                                        ; $485A: $9C
    jp   nz, Jump_002_4908                        ; $485B: $C2 $08 $49

    ld   b, $03                                   ; $485E: $06 $03
    call Call_002_490A                            ; $4860: $CD $0A $49
    ld   b, $03                                   ; $4863: $06 $03
    call Call_002_490A                            ; $4865: $CD $0A $49
    ld   [$DF14], a                               ; $4868: $EA $14 $DF
    ld   b, $01                                   ; $486B: $06 $01
    call Call_002_490A                            ; $486D: $CD $0A $49
    ld   [$DF19], a                               ; $4870: $EA $19 $DF
    ld   b, $04                                   ; $4873: $06 $04
    call Call_002_490A                            ; $4875: $CD $0A $49
    ld   [$DF17], a                               ; $4878: $EA $17 $DF
    cp   $0A                                      ; $487B: $FE $0A
    jp   nc, Jump_002_4908                        ; $487D: $D2 $08 $49

    ld   b, $03                                   ; $4880: $06 $03
    call Call_002_490A                            ; $4882: $CD $0A $49
    ld   b, $03                                   ; $4885: $06 $03
    call Call_002_490A                            ; $4887: $CD $0A $49
    ld   [$DF1B], a                               ; $488A: $EA $1B $DF
    ld   b, $07                                   ; $488D: $06 $07
    call Call_002_490A                            ; $488F: $CD $0A $49
    ld   [$DF18], a                               ; $4892: $EA $18 $DF
    cp   $64                                      ; $4895: $FE $64
    jp   nc, Jump_002_4908                        ; $4897: $D2 $08 $49

    ld   b, $08                                   ; $489A: $06 $08
    call Call_002_490A                            ; $489C: $CD $0A $49
    ld   [$DF1A], a                               ; $489F: $EA $1A $DF
    ld   a, [$DF14]                               ; $48A2: $FA $14 $DF
    or   a                                        ; $48A5: $B7
    jr   z, jr_002_4908                           ; $48A6: $28 $60

    cp   $05                                      ; $48A8: $FE $05
    jr   nc, jr_002_4908                          ; $48AA: $30 $5C

    sla  a                                        ; $48AC: $CB $27
    sla  a                                        ; $48AE: $CB $27
    ld   hl, $4932                                ; $48B0: $21 $32 $49
    call AddAToHL                                 ; $48B3: $CD $71 $00
    ld   a, [hl+]                                 ; $48B6: $2A
    cp   $FF                                      ; $48B7: $FE $FF
    jr   nz, jr_002_48C0                          ; $48B9: $20 $05

    ld   a, [$DF1A]                               ; $48BB: $FA $1A $DF
    and  $01                                      ; $48BE: $E6 $01

jr_002_48C0:
    ld   [$DF0E], a                               ; $48C0: $EA $0E $DF
    inc  hl                                       ; $48C3: $23
    ld   b, $02                                   ; $48C4: $06 $02
    ld   a, [$DF1A]                               ; $48C6: $FA $1A $DF
    and  $28                                      ; $48C9: $E6 $28
    jr   z, jr_002_48D3                           ; $48CB: $28 $06

    inc  b                                        ; $48CD: $04
    cp   $28                                      ; $48CE: $FE $28
    jr   nz, jr_002_48D3                          ; $48D0: $20 $01

    inc  b                                        ; $48D2: $04

jr_002_48D3:
    ld   a, b                                     ; $48D3: $78
    ld   [$DF15], a                               ; $48D4: $EA $15 $DF
    ld   a, [hl+]                                 ; $48D7: $2A
    cp   $FF                                      ; $48D8: $FE $FF
    jr   nz, jr_002_48E3                          ; $48DA: $20 $07

    ld   a, [$DF1A]                               ; $48DC: $FA $1A $DF
    and  $10                                      ; $48DF: $E6 $10
    swap a                                        ; $48E1: $CB $37

jr_002_48E3:
    ld   [$DF13], a                               ; $48E3: $EA $13 $DF
    ld   a, [hl]                                  ; $48E6: $7E
    ld   b, a                                     ; $48E7: $47
    ld   a, [$DF1A]                               ; $48E8: $FA $1A $DF
    and  b                                        ; $48EB: $A0
    cp   b                                        ; $48EC: $B8
    jr   nz, jr_002_4908                          ; $48ED: $20 $19

    ld   hl, $4945                                ; $48EF: $21 $45 $49
    ld   a, [$DF14]                               ; $48F2: $FA $14 $DF
    call AddAToHL                                 ; $48F5: $CD $71 $00
    ld   a, [hl]                                  ; $48F8: $7E
    ld   [$DF16], a                               ; $48F9: $EA $16 $DF
    ld   a, [$DF1B]                               ; $48FC: $FA $1B $DF
    or   a                                        ; $48FF: $B7
    jr   z, jr_002_4908                           ; $4900: $28 $06

    cp   $07                                      ; $4902: $FE $07
    jr   nc, jr_002_4908                          ; $4904: $30 $02

    scf                                           ; $4906: $37
    ret                                           ; $4907: $C9


Jump_002_4908:
jr_002_4908:
    or   a                                        ; $4908: $B7
    ret                                           ; $4909: $C9


Call_002_490A:
    ld   c, $00                                   ; $490A: $0E $00

jr_002_490C:
    ld   a, [$C968]                               ; $490C: $FA $68 $C9
    rla                                           ; $490F: $17
    ld   [$C968], a                               ; $4910: $EA $68 $C9
    ld   a, [$C969]                               ; $4913: $FA $69 $C9
    rla                                           ; $4916: $17
    ld   [$C969], a                               ; $4917: $EA $69 $C9
    ld   a, [$C96A]                               ; $491A: $FA $6A $C9
    rla                                           ; $491D: $17
    ld   [$C96A], a                               ; $491E: $EA $6A $C9
    ld   a, [$C96B]                               ; $4921: $FA $6B $C9
    rla                                           ; $4924: $17
    ld   [$C96B], a                               ; $4925: $EA $6B $C9
    ld   a, [$C96C]                               ; $4928: $FA $6C $C9
    rla                                           ; $492B: $17
    ld   [$C96C], a                               ; $492C: $EA $6C $C9
    rl   c                                        ; $492F: $CB $11
    dec  b                                        ; $4931: $05
    jr   nz, jr_002_490C                          ; $4932: $20 $D8

    ld   a, c                                     ; $4934: $79
    ret                                           ; $4935: $C9


    rst  RST_38                                   ; $4936: $FF
    ld   [bc], a                                  ; $4937: $02
    nop                                           ; $4938: $00
    nop                                           ; $4939: $00
    ld   bc, $FFFF                                ; $493A: $01 $FF $FF
    ld   bc, $FF02                                ; $493D: $01 $02 $FF
    ld   [bc], a                                  ; $4940: $02
    dec  e                                        ; $4941: $1D
    ld   [bc], a                                  ; $4942: $02
    rst  RST_38                                   ; $4943: $FF
    ld   [bc], a                                  ; $4944: $02
    ld   e, l                                     ; $4945: $5D
    nop                                           ; $4946: $00
    ld   bc, $0201                                ; $4947: $01 $01 $02
    dec  c                                        ; $494A: $0D
    ld   [hl], $8A                                ; $494B: $36 $8A
    ld   hl, $F545                                ; $494D: $21 $45 $F5
    ld   c, h                                     ; $4950: $4C
    dec  de                                       ; $4951: $1B
    xor  a                                        ; $4952: $AF
    ld   [de], a                                  ; $4953: $12
    dec  bc                                       ; $4954: $0B
    inc  [hl]                                     ; $4955: $34
    nop                                           ; $4956: $00
    nop                                           ; $4957: $00
    nop                                           ; $4958: $00
    nop                                           ; $4959: $00
    nop                                           ; $495A: $00
    nop                                           ; $495B: $00
    nop                                           ; $495C: $00
    nop                                           ; $495D: $00
    nop                                           ; $495E: $00
    nop                                           ; $495F: $00
    nop                                           ; $4960: $00
    nop                                           ; $4961: $00
    nop                                           ; $4962: $00
    nop                                           ; $4963: $00
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    nop                                           ; $496A: $00
    nop                                           ; $496B: $00
    nop                                           ; $496C: $00
    nop                                           ; $496D: $00
    nop                                           ; $496E: $00
    nop                                           ; $496F: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    nop                                           ; $4973: $00
    nop                                           ; $4974: $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    nop                                           ; $4977: $00
    nop                                           ; $4978: $00
    nop                                           ; $4979: $00
    nop                                           ; $497A: $00
    nop                                           ; $497B: $00
    nop                                           ; $497C: $00
    nop                                           ; $497D: $00
    nop                                           ; $497E: $00
    nop                                           ; $497F: $00
    pop  hl                                       ; $4980: $E1
    ret  nz                                       ; $4981: $C0

    db   $EC                                      ; $4982: $EC
    rst  RST_28                                   ; $4983: $EF
    xor  $E7                                      ; $4984: $EE $E7
    ret  nz                                       ; $4986: $C0

    db   $F4                                      ; $4987: $F4
    jp   hl                                       ; $4988: $E9


    db   $ED                                      ; $4989: $ED
    push hl                                       ; $498A: $E5
    ret  nz                                       ; $498B: $C0

    pop  hl                                       ; $498C: $E1
    rst  RST_20                                   ; $498D: $E7
    rst  RST_28                                   ; $498E: $EF
    call z, Call_002_7D7D                         ; $498F: $CC $7D $7D
    db   $F4                                      ; $4992: $F4
    add  sp, -$1B                                 ; $4993: $E8 $E5
    ret  nz                                       ; $4995: $C0

    rst  RST_20                                   ; $4996: $E7
    add  sp, -$11                                 ; $4997: $E8 $EF
    push af                                       ; $4999: $F5
    db   $EC                                      ; $499A: $EC
    ret  nz                                       ; $499B: $C0

    ldh  a, [c]                                   ; $499C: $F2
    push hl                                       ; $499D: $E5
    pop  hl                                       ; $499E: $E1
    db   $EC                                      ; $499F: $EC
    db   $ED                                      ; $49A0: $ED
    ld   a, l                                     ; $49A1: $7D
    ld   a, l                                     ; $49A2: $7D
    ldh  [c], a                                   ; $49A3: $E2
    pop  hl                                       ; $49A4: $E1
    ldh  a, [c]                                   ; $49A5: $F2
    push hl                                       ; $49A6: $E5
    db   $EC                                      ; $49A7: $EC
    ld   sp, hl                                   ; $49A8: $F9
    ret  nz                                       ; $49A9: $C0

    push hl                                       ; $49AA: $E5
    di                                            ; $49AB: $F3
    db   $E3                                      ; $49AC: $E3
    pop  hl                                       ; $49AD: $E1
    ldh  a, [$FFE5]                               ; $49AE: $F0 $E5
    db   $E4                                      ; $49B0: $E4
    ld   a, l                                     ; $49B1: $7D
    ld   a, l                                     ; $49B2: $7D
    rst  RST_20                                   ; $49B3: $E7
    ldh  a, [c]                                   ; $49B4: $F2
    push hl                                       ; $49B5: $E5
    pop  hl                                       ; $49B6: $E1
    db   $F4                                      ; $49B7: $F4
    ret  nz                                       ; $49B8: $C0

    ldh  a, [$FFE5]                               ; $49B9: $F0 $E5
    ldh  a, [c]                                   ; $49BB: $F2
    jp   hl                                       ; $49BC: $E9


    db   $EC                                      ; $49BD: $EC
    adc  $7D                                      ; $49BE: $CE $7D
    ld   a, l                                     ; $49C0: $7D
    pop  hl                                       ; $49C1: $E1
    ret  nz                                       ; $49C2: $C0

    db   $EC                                      ; $49C3: $EC
    pop  hl                                       ; $49C4: $E1
    ldh  a, [c]                                   ; $49C5: $F2
    rst  RST_20                                   ; $49C6: $E7
    push hl                                       ; $49C7: $E5
    ret  nz                                       ; $49C8: $C0

    pop  hl                                       ; $49C9: $E1
    ldh  a, [c]                                   ; $49CA: $F2
    db   $ED                                      ; $49CB: $ED
    ld   sp, hl                                   ; $49CC: $F9
    ret  nz                                       ; $49CD: $C0

    rst  RST_28                                   ; $49CE: $EF
    and  $7D                                      ; $49CF: $E6 $7D
    ld   a, l                                     ; $49D1: $7D
    db   $E4                                      ; $49D2: $E4
    push hl                                       ; $49D3: $E5
    di                                            ; $49D4: $F3
    db   $F4                                      ; $49D5: $F4
    ldh  a, [c]                                   ; $49D6: $F2
    rst  RST_28                                   ; $49D7: $EF
    ld   sp, hl                                   ; $49D8: $F9
    push hl                                       ; $49D9: $E5
    ldh  a, [c]                                   ; $49DA: $F2
    di                                            ; $49DB: $F3
    ret  nz                                       ; $49DC: $C0

    db   $E3                                      ; $49DD: $E3
    pop  hl                                       ; $49DE: $E1
    db   $ED                                      ; $49DF: $ED
    push hl                                       ; $49E0: $E5
    ld   a, l                                     ; $49E1: $7D
    ld   a, l                                     ; $49E2: $7D
    and  $F2                                      ; $49E3: $E6 $F2
    rst  RST_28                                   ; $49E5: $EF
    db   $ED                                      ; $49E6: $ED
    ret  nz                                       ; $49E7: $C0

    pop  hl                                       ; $49E8: $E1
    ret  nz                                       ; $49E9: $C0

    xor  $E5                                      ; $49EA: $EE $E5
    jp   hl                                       ; $49EC: $E9


    rst  RST_20                                   ; $49ED: $E7
    add  sp, -$1E                                 ; $49EE: $E8 $E2
    rst  RST_28                                   ; $49F0: $EF
    ldh  a, [c]                                   ; $49F1: $F2
    call Call_002_7D7D                            ; $49F2: $CD $7D $7D
    jp   hl                                       ; $49F5: $E9


    xor  $E7                                      ; $49F6: $EE $E7
    ret  nz                                       ; $49F8: $C0

    push af                                       ; $49F9: $F5
    xor  $E9                                      ; $49FA: $EE $E9
    or   $E5                                      ; $49FC: $F6 $E5
    ldh  a, [c]                                   ; $49FE: $F2
    di                                            ; $49FF: $F3
    push hl                                       ; $4A00: $E5
    adc  $7D                                      ; $4A01: $CE $7D
    ld   a, l                                     ; $4A03: $7D
    db   $F4                                      ; $4A04: $F4
    add  sp, -$1B                                 ; $4A05: $E8 $E5
    ret  nz                                       ; $4A07: $C0

    db   $E3                                      ; $4A08: $E3
    ldh  a, [c]                                   ; $4A09: $F2
    push hl                                       ; $4A0A: $E5
    pop  hl                                       ; $4A0B: $E1
    db   $F4                                      ; $4A0C: $F4
    push af                                       ; $4A0D: $F5
    ldh  a, [c]                                   ; $4A0E: $F2
    push hl                                       ; $4A0F: $E5
    di                                            ; $4A10: $F3
    ret  nz                                       ; $4A11: $C0

    rst  RST_28                                   ; $4A12: $EF
    and  $7D                                      ; $4A13: $E6 $7D
    ld   a, l                                     ; $4A15: $7D
    db   $F4                                      ; $4A16: $F4
    add  sp, -$1B                                 ; $4A17: $E8 $E5
    ret  nz                                       ; $4A19: $C0

    rst  RST_20                                   ; $4A1A: $E7
    add  sp, -$11                                 ; $4A1B: $E8 $EF
    push af                                       ; $4A1D: $F5
    db   $EC                                      ; $4A1E: $EC
    ret  nz                                       ; $4A1F: $C0

    ldh  a, [c]                                   ; $4A20: $F2
    push hl                                       ; $4A21: $E5
    pop  hl                                       ; $4A22: $E1
    db   $EC                                      ; $4A23: $EC
    db   $ED                                      ; $4A24: $ED
    ld   a, l                                     ; $4A25: $7D
    ld   a, l                                     ; $4A26: $7D
    rst  RST_30                                   ; $4A27: $F7
    push hl                                       ; $4A28: $E5
    ldh  a, [c]                                   ; $4A29: $F2
    push hl                                       ; $4A2A: $E5
    ret  nz                                       ; $4A2B: $C0

    xor  $EF                                      ; $4A2C: $EE $EF
    ret  nz                                       ; $4A2E: $C0

    db   $ED                                      ; $4A2F: $ED
    pop  hl                                       ; $4A30: $E1
    db   $F4                                      ; $4A31: $F4
    db   $E3                                      ; $4A32: $E3
    add  sp, $7D                                  ; $4A33: $E8 $7D
    ld   a, l                                     ; $4A35: $7D
    and  $EF                                      ; $4A36: $E6 $EF
    ldh  a, [c]                                   ; $4A38: $F2
    ret  nz                                       ; $4A39: $C0

    db   $F4                                      ; $4A3A: $F4
    add  sp, -$1B                                 ; $4A3B: $E8 $E5
    ret  nz                                       ; $4A3D: $C0

    ldh  a, [$FFEF]                               ; $4A3E: $F0 $EF
    rst  RST_30                                   ; $4A40: $F7
    push hl                                       ; $4A41: $E5
    ldh  a, [c]                                   ; $4A42: $F2
    and  $F5                                      ; $4A43: $E6 $F5
    db   $EC                                      ; $4A45: $EC
    ld   a, l                                     ; $4A46: $7D
    ld   a, l                                     ; $4A47: $7D
    db   $E4                                      ; $4A48: $E4
    push hl                                       ; $4A49: $E5
    di                                            ; $4A4A: $F3
    db   $F4                                      ; $4A4B: $F4
    ldh  a, [c]                                   ; $4A4C: $F2
    rst  RST_28                                   ; $4A4D: $EF
    ld   sp, hl                                   ; $4A4E: $F9
    push hl                                       ; $4A4F: $E5
    ldh  a, [c]                                   ; $4A50: $F2
    di                                            ; $4A51: $F3
    adc  $7D                                      ; $4A52: $CE $7D
    ld   a, l                                     ; $4A54: $7D
    ld   [$F3F5], a                               ; $4A55: $EA $F5 $F3
    db   $F4                                      ; $4A58: $F4
    ret  nz                                       ; $4A59: $C0

    rst  RST_30                                   ; $4A5A: $F7
    add  sp, -$1B                                 ; $4A5B: $E8 $E5
    xor  $7D                                      ; $4A5D: $EE $7D
    ld   a, l                                     ; $4A5F: $7D
    push hl                                       ; $4A60: $E5
    or   $E5                                      ; $4A61: $F6 $E5
    ldh  a, [c]                                   ; $4A63: $F2
    ld   sp, hl                                   ; $4A64: $F9
    rst  RST_28                                   ; $4A65: $EF
    xor  $E5                                      ; $4A66: $EE $E5
    ret  nz                                       ; $4A68: $C0

    add  sp, -$1F                                 ; $4A69: $E8 $E1
    db   $E4                                      ; $4A6B: $E4
    ld   a, l                                     ; $4A6C: $7D
    ld   a, l                                     ; $4A6D: $7D
    rst  RST_20                                   ; $4A6E: $E7
    jp   hl                                       ; $4A6F: $E9


    or   $E5                                      ; $4A70: $F6 $E5
    xor  $C0                                      ; $4A72: $EE $C0
    push af                                       ; $4A74: $F5
    ldh  a, [$FFC0]                               ; $4A75: $F0 $C0
    add  sp, -$11                                 ; $4A77: $E8 $EF
    ldh  a, [$FFE5]                               ; $4A79: $F0 $E5
    call z, $E1C0                                 ; $4A7B: $CC $C0 $E1
    ld   a, l                                     ; $4A7E: $7D
    ld   a, l                                     ; $4A7F: $7D
    rst  RST_20                                   ; $4A80: $E7
    ldh  a, [c]                                   ; $4A81: $F2
    push hl                                       ; $4A82: $E5
    pop  hl                                       ; $4A83: $E1
    db   $F4                                      ; $4A84: $F4
    ret  nz                                       ; $4A85: $C0

    and  $E9                                      ; $4A86: $E6 $E9
    ldh  a, [c]                                   ; $4A88: $F2
    push hl                                       ; $4A89: $E5
    ret  nz                                       ; $4A8A: $C0

    di                                            ; $4A8B: $F3
    rst  RST_30                                   ; $4A8C: $F7
    push hl                                       ; $4A8D: $E5
    ldh  a, [$FFF4]                               ; $4A8E: $F0 $F4
    ld   a, l                                     ; $4A90: $7D
    ld   a, l                                     ; $4A91: $7D
    rst  RST_28                                   ; $4A92: $EF
    or   $E5                                      ; $4A93: $F6 $E5
    ldh  a, [c]                                   ; $4A95: $F2
    ret  nz                                       ; $4A96: $C0

    db   $F4                                      ; $4A97: $F4
    add  sp, -$1B                                 ; $4A98: $E8 $E5
    ret  nz                                       ; $4A9A: $C0

    ldh  a, [c]                                   ; $4A9B: $F2
    push hl                                       ; $4A9C: $E5
    pop  hl                                       ; $4A9D: $E1
    db   $EC                                      ; $4A9E: $EC
    db   $ED                                      ; $4A9F: $ED
    call z, Call_002_7D7D                         ; $4AA0: $CC $7D $7D
    rst  RST_30                                   ; $4AA3: $F7
    jp   hl                                       ; $4AA4: $E9


    ldh  a, [$FFE9]                               ; $4AA5: $F0 $E9
    xor  $E7                                      ; $4AA7: $EE $E7
    ret  nz                                       ; $4AA9: $C0

    rst  RST_28                                   ; $4AAA: $EF
    push af                                       ; $4AAB: $F5
    db   $F4                                      ; $4AAC: $F4
    ret  nz                                       ; $4AAD: $C0

    db   $F4                                      ; $4AAE: $F4
    add  sp, -$1B                                 ; $4AAF: $E8 $E5
    ld   a, l                                     ; $4AB1: $7D
    ld   a, l                                     ; $4AB2: $7D
    db   $E4                                      ; $4AB3: $E4
    push hl                                       ; $4AB4: $E5
    di                                            ; $4AB5: $F3
    db   $F4                                      ; $4AB6: $F4
    ldh  a, [c]                                   ; $4AB7: $F2
    rst  RST_28                                   ; $4AB8: $EF
    ld   sp, hl                                   ; $4AB9: $F9
    push hl                                       ; $4ABA: $E5
    ldh  a, [c]                                   ; $4ABB: $F2
    di                                            ; $4ABC: $F3
    ret  nz                                       ; $4ABD: $C0

    pop  hl                                       ; $4ABE: $E1
    ldh  a, [c]                                   ; $4ABF: $F2
    db   $ED                                      ; $4AC0: $ED
    ld   sp, hl                                   ; $4AC1: $F9
    adc  $7D                                      ; $4AC2: $CE $7D
    ld   a, l                                     ; $4AC4: $7D
    ld   a, l                                     ; $4AC5: $7D
    ld   a, l                                     ; $4AC6: $7D
    di                                            ; $4AC7: $F3
    push hl                                       ; $4AC8: $E5
    or   $E5                                      ; $4AC9: $F6 $E5
    ldh  a, [c]                                   ; $4ACB: $F2
    pop  hl                                       ; $4ACC: $E1
    db   $EC                                      ; $4ACD: $EC
    ret  nz                                       ; $4ACE: $C0

    add  sp, -$0B                                 ; $4ACF: $E8 $F5
    xor  $E4                                      ; $4AD1: $EE $E4
    ldh  a, [c]                                   ; $4AD3: $F2
    push hl                                       ; $4AD4: $E5
    db   $E4                                      ; $4AD5: $E4
    ld   a, l                                     ; $4AD6: $7D
    ld   a, l                                     ; $4AD7: $7D
    ld   sp, hl                                   ; $4AD8: $F9
    push hl                                       ; $4AD9: $E5
    pop  hl                                       ; $4ADA: $E1
    ldh  a, [c]                                   ; $4ADB: $F2
    di                                            ; $4ADC: $F3
    ret  nz                                       ; $4ADD: $C0

    add  sp, -$1F                                 ; $4ADE: $E8 $E1
    or   $E5                                      ; $4AE0: $F6 $E5
    ld   a, l                                     ; $4AE2: $7D
    ld   a, l                                     ; $4AE3: $7D
    ldh  a, [$FFE1]                               ; $4AE4: $F0 $E1
    di                                            ; $4AE6: $F3
    di                                            ; $4AE7: $F3
    push hl                                       ; $4AE8: $E5
    db   $E4                                      ; $4AE9: $E4
    ret  nz                                       ; $4AEA: $C0

    pop  hl                                       ; $4AEB: $E1
    xor  $E4                                      ; $4AEC: $EE $E4
    ret  nz                                       ; $4AEE: $C0

    db   $F4                                      ; $4AEF: $F4
    add  sp, -$1B                                 ; $4AF0: $E8 $E5
    ld   a, l                                     ; $4AF2: $7D
    ld   a, l                                     ; $4AF3: $7D
    ldh  a, [c]                                   ; $4AF4: $F2
    push hl                                       ; $4AF5: $E5
    pop  hl                                       ; $4AF6: $E1
    db   $EC                                      ; $4AF7: $EC
    db   $ED                                      ; $4AF8: $ED
    ret  nz                                       ; $4AF9: $C0

    jp   hl                                       ; $4AFA: $E9


    di                                            ; $4AFB: $F3
    ld   a, l                                     ; $4AFC: $7D
    ld   a, l                                     ; $4AFD: $7D
    db   $F4                                      ; $4AFE: $F4
    add  sp, -$0E                                 ; $4AFF: $E8 $F2
    push hl                                       ; $4B01: $E5
    pop  hl                                       ; $4B02: $E1
    db   $F4                                      ; $4B03: $F4
    push hl                                       ; $4B04: $E5
    xor  $E5                                      ; $4B05: $EE $E5
    db   $E4                                      ; $4B07: $E4
    ret  nz                                       ; $4B08: $C0

    rst  RST_28                                   ; $4B09: $EF
    xor  $E3                                      ; $4B0A: $EE $E3
    push hl                                       ; $4B0C: $E5
    ld   a, l                                     ; $4B0D: $7D
    ld   a, l                                     ; $4B0E: $7D
    pop  hl                                       ; $4B0F: $E1
    rst  RST_20                                   ; $4B10: $E7
    pop  hl                                       ; $4B11: $E1
    jp   hl                                       ; $4B12: $E9


    xor  $CE                                      ; $4B13: $EE $CE
    adc  $CE                                      ; $4B15: $CE $CE
    ld   a, l                                     ; $4B17: $7D
    ld   a, a                                     ; $4B18: $7F
    rst  RST_30                                   ; $4B19: $F7
    add  sp, -$1B                                 ; $4B1A: $E8 $E5
    xor  $C0                                      ; $4B1C: $EE $C0
    ldh  [c], a                                   ; $4B1E: $E2
    ldh  a, [c]                                   ; $4B1F: $F2
    push hl                                       ; $4B20: $E5
    pop  hl                                       ; $4B21: $E1
    rst  RST_20                                   ; $4B22: $E7
    push hl                                       ; $4B23: $E5
    ldh  a, [c]                                   ; $4B24: $F2
    ret  nz                                       ; $4B25: $C0

    rst  RST_30                                   ; $4B26: $F7
    pop  hl                                       ; $4B27: $E1
    di                                            ; $4B28: $F3
    ld   a, l                                     ; $4B29: $7D
    ld   a, l                                     ; $4B2A: $7D
    db   $E4                                      ; $4B2B: $E4
    push hl                                       ; $4B2C: $E5
    and  $E5                                      ; $4B2D: $E6 $E5
    pop  hl                                       ; $4B2F: $E1
    db   $F4                                      ; $4B30: $F4
    push hl                                       ; $4B31: $E5
    db   $E4                                      ; $4B32: $E4
    call z, $E8C0                                 ; $4B33: $CC $C0 $E8
    jp   hl                                       ; $4B36: $E9


    di                                            ; $4B37: $F3
    ld   a, l                                     ; $4B38: $7D
    ld   a, l                                     ; $4B39: $7D
    ldh  a, [$FFEF]                               ; $4B3A: $F0 $EF
    rst  RST_30                                   ; $4B3C: $F7
    push hl                                       ; $4B3D: $E5
    ldh  a, [c]                                   ; $4B3E: $F2
    ret  nz                                       ; $4B3F: $C0

    rst  RST_28                                   ; $4B40: $EF
    or   $E5                                      ; $4B41: $F6 $E5
    ldh  a, [c]                                   ; $4B43: $F2
    ld   a, l                                     ; $4B44: $7D
    ld   a, l                                     ; $4B45: $7D
    db   $E4                                      ; $4B46: $E4
    pop  hl                                       ; $4B47: $E1
    ldh  a, [c]                                   ; $4B48: $F2
    db   $EB                                      ; $4B49: $EB
    rst  RST_28                                   ; $4B4A: $EF
    pop  hl                                       ; $4B4B: $E1
    xor  $7D                                      ; $4B4C: $EE $7D
    ld   a, l                                     ; $4B4E: $7D
    or   $E1                                      ; $4B4F: $F6 $E1
    xor  $E9                                      ; $4B51: $EE $E9
    di                                            ; $4B53: $F3
    add  sp, -$1B                                 ; $4B54: $E8 $E5
    db   $E4                                      ; $4B56: $E4
    adc  $7D                                      ; $4B57: $CE $7D
    ld   a, l                                     ; $4B59: $7D
    ld   a, l                                     ; $4B5A: $7D
    db   $E4                                      ; $4B5B: $E4
    pop  hl                                       ; $4B5C: $E1
    ldh  a, [c]                                   ; $4B5D: $F2
    db   $EB                                      ; $4B5E: $EB
    rst  RST_28                                   ; $4B5F: $EF
    pop  hl                                       ; $4B60: $E1
    xor  $C0                                      ; $4B61: $EE $C0
    ldh  a, [c]                                   ; $4B63: $F2
    push hl                                       ; $4B64: $E5
    rst  RST_20                                   ; $4B65: $E7
    pop  hl                                       ; $4B66: $E1
    jp   hl                                       ; $4B67: $E9


    xor  $E5                                      ; $4B68: $EE $E5
    db   $E4                                      ; $4B6A: $E4
    ld   a, l                                     ; $4B6B: $7D
    ld   a, l                                     ; $4B6C: $7D
    add  sp, -$17                                 ; $4B6D: $E8 $E9
    di                                            ; $4B6F: $F3
    ret  nz                                       ; $4B70: $C0

    rst  RST_20                                   ; $4B71: $E7
    ldh  a, [c]                                   ; $4B72: $F2
    push hl                                       ; $4B73: $E5
    pop  hl                                       ; $4B74: $E1
    db   $F4                                      ; $4B75: $F4
    ret  nz                                       ; $4B76: $C0

    ldh  a, [$FFEF]                               ; $4B77: $F0 $EF
    rst  RST_30                                   ; $4B79: $F7
    push hl                                       ; $4B7A: $E5
    ldh  a, [c]                                   ; $4B7B: $F2
    ld   a, l                                     ; $4B7C: $7D
    ld   a, l                                     ; $4B7D: $7D
    pop  hl                                       ; $4B7E: $E1
    xor  $E4                                      ; $4B7F: $EE $E4
    ret  nz                                       ; $4B81: $C0

    db   $E4                                      ; $4B82: $E4
    push hl                                       ; $4B83: $E5
    and  $E5                                      ; $4B84: $E6 $E5
    pop  hl                                       ; $4B86: $E1
    db   $F4                                      ; $4B87: $F4
    push hl                                       ; $4B88: $E5
    db   $E4                                      ; $4B89: $E4
    ret  nz                                       ; $4B8A: $C0

    db   $F4                                      ; $4B8B: $F4
    add  sp, -$1B                                 ; $4B8C: $E8 $E5
    ld   a, l                                     ; $4B8E: $7D
    ld   a, l                                     ; $4B8F: $7D
    push hl                                       ; $4B90: $E5
    xor  $F4                                      ; $4B91: $EE $F4
    jp   hl                                       ; $4B93: $E9


    ldh  a, [c]                                   ; $4B94: $F2
    push hl                                       ; $4B95: $E5
    ret  nz                                       ; $4B96: $C0

    pop  hl                                       ; $4B97: $E1
    ldh  a, [c]                                   ; $4B98: $F2
    db   $ED                                      ; $4B99: $ED
    ld   sp, hl                                   ; $4B9A: $F9
    ret  nz                                       ; $4B9B: $C0

    rst  RST_28                                   ; $4B9C: $EF
    and  $7D                                      ; $4B9D: $E6 $7D
    ld   a, l                                     ; $4B9F: $7D
    db   $E4                                      ; $4BA0: $E4
    push hl                                       ; $4BA1: $E5
    di                                            ; $4BA2: $F3
    db   $F4                                      ; $4BA3: $F4
    ldh  a, [c]                                   ; $4BA4: $F2
    rst  RST_28                                   ; $4BA5: $EF
    ld   sp, hl                                   ; $4BA6: $F9
    push hl                                       ; $4BA7: $E5
    ldh  a, [c]                                   ; $4BA8: $F2
    di                                            ; $4BA9: $F3
    adc  $7D                                      ; $4BAA: $CE $7D
    ld   a, l                                     ; $4BAC: $7D
    ld   a, l                                     ; $4BAD: $7D
    db   $F4                                      ; $4BAE: $F4
    add  sp, -$1B                                 ; $4BAF: $E8 $E5
    ret  nz                                       ; $4BB1: $C0

    rst  RST_20                                   ; $4BB2: $E7
    add  sp, -$11                                 ; $4BB3: $E8 $EF
    push af                                       ; $4BB5: $F5
    db   $EC                                      ; $4BB6: $EC
    ret  nz                                       ; $4BB7: $C0

    ldh  a, [c]                                   ; $4BB8: $F2
    push hl                                       ; $4BB9: $E5
    pop  hl                                       ; $4BBA: $E1
    db   $EC                                      ; $4BBB: $EC
    db   $ED                                      ; $4BBC: $ED
    ld   a, l                                     ; $4BBD: $7D
    ld   a, l                                     ; $4BBE: $7D
    ldh  [c], a                                   ; $4BBF: $E2
    push hl                                       ; $4BC0: $E5
    db   $E3                                      ; $4BC1: $E3
    pop  hl                                       ; $4BC2: $E1
    db   $ED                                      ; $4BC3: $ED
    push hl                                       ; $4BC4: $E5
    ret  nz                                       ; $4BC5: $C0

    di                                            ; $4BC6: $F3
    pop  hl                                       ; $4BC7: $E1
    and  $E5                                      ; $4BC8: $E6 $E5
    jp   c, $DBDF                                 ; $4BCA: $DA $DF $DB

    ld   a, l                                     ; $4BCD: $7D
    ld   a, l                                     ; $4BCE: $7D
    pop  hl                                       ; $4BCF: $E1
    rst  RST_20                                   ; $4BD0: $E7
    pop  hl                                       ; $4BD1: $E1
    jp   hl                                       ; $4BD2: $E9


    xor  $CE                                      ; $4BD3: $EE $CE
    ld   a, l                                     ; $4BD5: $7D
    ld   a, l                                     ; $4BD6: $7D
    ld   a, l                                     ; $4BD7: $7D
    ld   a, l                                     ; $4BD8: $7D
    ld   a, l                                     ; $4BD9: $7D
    and  $E9                                      ; $4BDA: $E6 $E9
    ldh  a, [c]                                   ; $4BDC: $F2
    push hl                                       ; $4BDD: $E5
    ldh  [c], a                                   ; $4BDE: $E2
    ldh  a, [c]                                   ; $4BDF: $F2
    pop  hl                                       ; $4BE0: $E1
    xor  $E4                                      ; $4BE1: $EE $E4
    ret  nz                                       ; $4BE3: $C0

    ldh  [c], a                                   ; $4BE4: $E2
    push hl                                       ; $4BE5: $E5
    db   $E3                                      ; $4BE6: $E3
    pop  hl                                       ; $4BE7: $E1
    db   $ED                                      ; $4BE8: $ED
    push hl                                       ; $4BE9: $E5
    ld   a, l                                     ; $4BEA: $7D
    ld   a, l                                     ; $4BEB: $7D
    rst  RST_30                                   ; $4BEC: $F7
    push hl                                       ; $4BED: $E5
    db   $EC                                      ; $4BEE: $EC
    db   $EC                                      ; $4BEF: $EC
    ret  nz                                       ; $4BF0: $C0

    db   $EB                                      ; $4BF1: $EB
    xor  $EF                                      ; $4BF2: $EE $EF
    rst  RST_30                                   ; $4BF4: $F7
    xor  $7D                                      ; $4BF5: $EE $7D
    ld   a, l                                     ; $4BF7: $7D
    db   $F4                                      ; $4BF8: $F4
    add  sp, -$0E                                 ; $4BF9: $E8 $F2
    rst  RST_28                                   ; $4BFB: $EF
    push af                                       ; $4BFC: $F5
    rst  RST_20                                   ; $4BFD: $E7
    add  sp, -$11                                 ; $4BFE: $E8 $EF
    push af                                       ; $4C00: $F5
    db   $F4                                      ; $4C01: $F4
    ret  nz                                       ; $4C02: $C0

    db   $F4                                      ; $4C03: $F4
    add  sp, -$1B                                 ; $4C04: $E8 $E5
    ld   a, l                                     ; $4C06: $7D
    ld   a, l                                     ; $4C07: $7D
    rst  RST_20                                   ; $4C08: $E7
    add  sp, -$11                                 ; $4C09: $E8 $EF
    push af                                       ; $4C0B: $F5
    db   $EC                                      ; $4C0C: $EC
    ret  nz                                       ; $4C0D: $C0

    ldh  a, [c]                                   ; $4C0E: $F2
    push hl                                       ; $4C0F: $E5
    pop  hl                                       ; $4C10: $E1
    db   $EC                                      ; $4C11: $EC
    db   $ED                                      ; $4C12: $ED
    call z, $E1C0                                 ; $4C13: $CC $C0 $E1
    ld   a, l                                     ; $4C16: $7D
    ld   a, l                                     ; $4C17: $7D
    db   $EC                                      ; $4C18: $EC
    push hl                                       ; $4C19: $E5
    rst  RST_20                                   ; $4C1A: $E7
    push hl                                       ; $4C1B: $E5
    xor  $E4                                      ; $4C1C: $EE $E4
    ret  nz                                       ; $4C1E: $C0

    jp   hl                                       ; $4C1F: $E9


    xor  $C0                                      ; $4C20: $EE $C0
    add  sp, -$17                                 ; $4C22: $E8 $E9
    di                                            ; $4C24: $F3
    ld   a, l                                     ; $4C25: $7D
    ld   a, l                                     ; $4C26: $7D
    rst  RST_28                                   ; $4C27: $EF
    rst  RST_30                                   ; $4C28: $F7
    xor  $C0                                      ; $4C29: $EE $C0
    db   $F4                                      ; $4C2B: $F4
    jp   hl                                       ; $4C2C: $E9


    db   $ED                                      ; $4C2D: $ED
    push hl                                       ; $4C2E: $E5
    adc  $7D                                      ; $4C2F: $CE $7D
    ld   a, l                                     ; $4C31: $7D
    ld   a, l                                     ; $4C32: $7D
    ld   a, l                                     ; $4C33: $7D
    ld   a, l                                     ; $4C34: $7D
    ld   a, l                                     ; $4C35: $7D
    ld   a, l                                     ; $4C36: $7D
    ld   a, l                                     ; $4C37: $7D
    ld   a, l                                     ; $4C38: $7D
    ld   a, l                                     ; $4C39: $7D
    ld   a, l                                     ; $4C3A: $7D
    ld   a, l                                     ; $4C3B: $7D
    ld   a, l                                     ; $4C3C: $7D
    ld   a, l                                     ; $4C3D: $7D
    ld   a, l                                     ; $4C3E: $7D
    ld   a, l                                     ; $4C3F: $7D
    ld   a, l                                     ; $4C40: $7D
    ld   a, l                                     ; $4C41: $7D
    ret  nz                                       ; $4C42: $C0

    ret  nz                                       ; $4C43: $C0

    ret  nz                                       ; $4C44: $C0

    ret  nz                                       ; $4C45: $C0

    db   $F4                                      ; $4C46: $F4
    add  sp, -$1B                                 ; $4C47: $E8 $E5
    ret  nz                                       ; $4C49: $C0

    push hl                                       ; $4C4A: $E5
    xor  $E4                                      ; $4C4B: $EE $E4
    ld   a, l                                     ; $4C4D: $7D
    ld   a, a                                     ; $4C4E: $7F
    ldh  a, [$FFF2]                               ; $4C4F: $F0 $F2
    push hl                                       ; $4C51: $E5
    di                                            ; $4C52: $F3
    push hl                                       ; $4C53: $E5
    xor  $F4                                      ; $4C54: $EE $F4
    push hl                                       ; $4C56: $E5
    db   $E4                                      ; $4C57: $E4
    ld   a, l                                     ; $4C58: $7D
    ld   a, l                                     ; $4C59: $7D
    ret  nz                                       ; $4C5A: $C0

    ret  nz                                       ; $4C5B: $C0

    ret  nz                                       ; $4C5C: $C0

    ldh  [c], a                                   ; $4C5D: $E2
    ld   sp, hl                                   ; $4C5E: $F9
    ld   a, l                                     ; $4C5F: $7D
    ld   a, l                                     ; $4C60: $7D
    ret  nz                                       ; $4C61: $C0

    ret  nc                                       ; $4C62: $D0

    pop  de                                       ; $4C63: $D1
    jp   nc, $D4D3                                ; $4C64: $D2 $D3 $D4

    push de                                       ; $4C67: $D5
    ld   a, l                                     ; $4C68: $7D
    ld   a, a                                     ; $4C69: $7F
    ld   h, d                                     ; $4C6A: $62
    sbc  b                                        ; $4C6B: $98
    db   $10                                      ; $4C6C: $10
    ldh  a, [$FFE1]                               ; $4C6D: $F0 $E1
    di                                            ; $4C6F: $F3
    di                                            ; $4C70: $F3
    rst  RST_30                                   ; $4C71: $F7
    rst  RST_28                                   ; $4C72: $EF
    ldh  a, [c]                                   ; $4C73: $F2
    db   $E4                                      ; $4C74: $E4
    ret  nz                                       ; $4C75: $C0

    push hl                                       ; $4C76: $E5
    xor  $F4                                      ; $4C77: $EE $F4
    push hl                                       ; $4C79: $E5
    ldh  a, [c]                                   ; $4C7A: $F2
    push hl                                       ; $4C7B: $E5
    db   $E4                                      ; $4C7C: $E4
    ld   h, d                                     ; $4C7D: $62
    sbc  b                                        ; $4C7E: $98
    db   $10                                      ; $4C7F: $10
    ret  nz                                       ; $4C80: $C0

    ldh  a, [$FFE1]                               ; $4C81: $F0 $E1
    di                                            ; $4C83: $F3
    di                                            ; $4C84: $F3
    rst  RST_30                                   ; $4C85: $F7
    rst  RST_28                                   ; $4C86: $EF
    ldh  a, [c]                                   ; $4C87: $F2
    db   $E4                                      ; $4C88: $E4
    ret  nz                                       ; $4C89: $C0

    rst  RST_30                                   ; $4C8A: $F7
    ldh  a, [c]                                   ; $4C8B: $F2
    rst  RST_28                                   ; $4C8C: $EF
    xor  $E7                                      ; $4C8D: $EE $E7
    ret  nz                                       ; $4C8F: $C0

    pop  hl                                       ; $4C90: $E1
    ldh  [c], a                                   ; $4C91: $E2
    db   $E3                                      ; $4C92: $E3
    db   $E4                                      ; $4C93: $E4
    push hl                                       ; $4C94: $E5
    and  $E7                                      ; $4C95: $E6 $E7
    add  sp, -$17                                 ; $4C97: $E8 $E9
    ld   [$ECEB], a                               ; $4C99: $EA $EB $EC
    db   $ED                                      ; $4C9C: $ED
    xor  $EF                                      ; $4C9D: $EE $EF
    ldh  a, [$FFF1]                               ; $4C9F: $F0 $F1
    ldh  a, [c]                                   ; $4CA1: $F2
    di                                            ; $4CA2: $F3
    db   $F4                                      ; $4CA3: $F4
    push af                                       ; $4CA4: $F5
    or   $F7                                      ; $4CA5: $F6 $F7
    ld   hl, sp-$07                               ; $4CA7: $F8 $F9
    ld   a, [$D5D4]                               ; $4CA9: $FA $D4 $D5
    sub  $D7                                      ; $4CAC: $D6 $D7
    ret  c                                        ; $4CAE: $D8

    reti                                          ; $4CAF: $D9


    ret                                           ; $4CB0: $C9


    ret  z                                        ; $4CB1: $C8

    push hl                                       ; $4CB2: $E5
    xor  $E4                                      ; $4CB3: $EE $E4
    nop                                           ; $4CB5: $00
    nop                                           ; $4CB6: $00
    nop                                           ; $4CB7: $00
    nop                                           ; $4CB8: $00
    nop                                           ; $4CB9: $00
    nop                                           ; $4CBA: $00
    nop                                           ; $4CBB: $00
    nop                                           ; $4CBC: $00
    nop                                           ; $4CBD: $00
    nop                                           ; $4CBE: $00
    nop                                           ; $4CBF: $00
    nop                                           ; $4CC0: $00
    nop                                           ; $4CC1: $00
    nop                                           ; $4CC2: $00
    nop                                           ; $4CC3: $00
    nop                                           ; $4CC4: $00
    nop                                           ; $4CC5: $00
    nop                                           ; $4CC6: $00
    nop                                           ; $4CC7: $00
    nop                                           ; $4CC8: $00
    nop                                           ; $4CC9: $00
    nop                                           ; $4CCA: $00
    nop                                           ; $4CCB: $00
    nop                                           ; $4CCC: $00
    nop                                           ; $4CCD: $00
    nop                                           ; $4CCE: $00
    nop                                           ; $4CCF: $00
    nop                                           ; $4CD0: $00
    nop                                           ; $4CD1: $00
    nop                                           ; $4CD2: $00
    nop                                           ; $4CD3: $00
    nop                                           ; $4CD4: $00
    nop                                           ; $4CD5: $00
    nop                                           ; $4CD6: $00
    nop                                           ; $4CD7: $00
    nop                                           ; $4CD8: $00
    nop                                           ; $4CD9: $00
    nop                                           ; $4CDA: $00
    nop                                           ; $4CDB: $00
    nop                                           ; $4CDC: $00
    nop                                           ; $4CDD: $00
    nop                                           ; $4CDE: $00
    nop                                           ; $4CDF: $00
    nop                                           ; $4CE0: $00
    nop                                           ; $4CE1: $00
    nop                                           ; $4CE2: $00
    nop                                           ; $4CE3: $00
    nop                                           ; $4CE4: $00
    nop                                           ; $4CE5: $00
    nop                                           ; $4CE6: $00
    nop                                           ; $4CE7: $00
    nop                                           ; $4CE8: $00
    nop                                           ; $4CE9: $00
    nop                                           ; $4CEA: $00
    nop                                           ; $4CEB: $00
    nop                                           ; $4CEC: $00
    nop                                           ; $4CED: $00
    nop                                           ; $4CEE: $00
    nop                                           ; $4CEF: $00
    nop                                           ; $4CF0: $00
    nop                                           ; $4CF1: $00
    nop                                           ; $4CF2: $00
    nop                                           ; $4CF3: $00
    nop                                           ; $4CF4: $00
    nop                                           ; $4CF5: $00
    nop                                           ; $4CF6: $00
    nop                                           ; $4CF7: $00
    nop                                           ; $4CF8: $00
    nop                                           ; $4CF9: $00
    nop                                           ; $4CFA: $00
    nop                                           ; $4CFB: $00
    nop                                           ; $4CFC: $00
    nop                                           ; $4CFD: $00
    nop                                           ; $4CFE: $00
    nop                                           ; $4CFF: $00
    nop                                           ; $4D00: $00
    nop                                           ; $4D01: $00
    nop                                           ; $4D02: $00
    nop                                           ; $4D03: $00
    nop                                           ; $4D04: $00
    nop                                           ; $4D05: $00
    nop                                           ; $4D06: $00
    nop                                           ; $4D07: $00
    nop                                           ; $4D08: $00
    nop                                           ; $4D09: $00
    nop                                           ; $4D0A: $00
    nop                                           ; $4D0B: $00
    nop                                           ; $4D0C: $00
    nop                                           ; $4D0D: $00
    nop                                           ; $4D0E: $00
    nop                                           ; $4D0F: $00
    nop                                           ; $4D10: $00
    nop                                           ; $4D11: $00
    nop                                           ; $4D12: $00
    nop                                           ; $4D13: $00
    nop                                           ; $4D14: $00
    nop                                           ; $4D15: $00
    nop                                           ; $4D16: $00
    nop                                           ; $4D17: $00
    nop                                           ; $4D18: $00
    nop                                           ; $4D19: $00
    nop                                           ; $4D1A: $00
    nop                                           ; $4D1B: $00
    nop                                           ; $4D1C: $00
    nop                                           ; $4D1D: $00
    nop                                           ; $4D1E: $00
    nop                                           ; $4D1F: $00
    nop                                           ; $4D20: $00
    nop                                           ; $4D21: $00
    nop                                           ; $4D22: $00
    nop                                           ; $4D23: $00
    nop                                           ; $4D24: $00
    nop                                           ; $4D25: $00
    nop                                           ; $4D26: $00
    nop                                           ; $4D27: $00
    nop                                           ; $4D28: $00
    nop                                           ; $4D29: $00
    nop                                           ; $4D2A: $00
    nop                                           ; $4D2B: $00
    nop                                           ; $4D2C: $00
    nop                                           ; $4D2D: $00
    nop                                           ; $4D2E: $00
    nop                                           ; $4D2F: $00
    nop                                           ; $4D30: $00
    nop                                           ; $4D31: $00
    nop                                           ; $4D32: $00
    nop                                           ; $4D33: $00
    nop                                           ; $4D34: $00
    nop                                           ; $4D35: $00
    nop                                           ; $4D36: $00
    nop                                           ; $4D37: $00
    nop                                           ; $4D38: $00
    nop                                           ; $4D39: $00
    nop                                           ; $4D3A: $00
    nop                                           ; $4D3B: $00
    nop                                           ; $4D3C: $00
    nop                                           ; $4D3D: $00
    nop                                           ; $4D3E: $00
    nop                                           ; $4D3F: $00
    nop                                           ; $4D40: $00
    nop                                           ; $4D41: $00
    nop                                           ; $4D42: $00
    nop                                           ; $4D43: $00
    nop                                           ; $4D44: $00
    nop                                           ; $4D45: $00
    nop                                           ; $4D46: $00
    nop                                           ; $4D47: $00
    nop                                           ; $4D48: $00
    nop                                           ; $4D49: $00
    nop                                           ; $4D4A: $00
    nop                                           ; $4D4B: $00
    nop                                           ; $4D4C: $00
    nop                                           ; $4D4D: $00
    nop                                           ; $4D4E: $00
    nop                                           ; $4D4F: $00
    nop                                           ; $4D50: $00
    nop                                           ; $4D51: $00
    nop                                           ; $4D52: $00
    nop                                           ; $4D53: $00
    nop                                           ; $4D54: $00
    nop                                           ; $4D55: $00
    nop                                           ; $4D56: $00
    nop                                           ; $4D57: $00
    nop                                           ; $4D58: $00
    nop                                           ; $4D59: $00
    nop                                           ; $4D5A: $00
    nop                                           ; $4D5B: $00
    nop                                           ; $4D5C: $00
    nop                                           ; $4D5D: $00
    nop                                           ; $4D5E: $00
    nop                                           ; $4D5F: $00
    nop                                           ; $4D60: $00
    nop                                           ; $4D61: $00
    nop                                           ; $4D62: $00
    nop                                           ; $4D63: $00
    nop                                           ; $4D64: $00
    nop                                           ; $4D65: $00
    nop                                           ; $4D66: $00
    nop                                           ; $4D67: $00
    nop                                           ; $4D68: $00
    nop                                           ; $4D69: $00
    nop                                           ; $4D6A: $00
    nop                                           ; $4D6B: $00
    nop                                           ; $4D6C: $00
    nop                                           ; $4D6D: $00
    nop                                           ; $4D6E: $00
    nop                                           ; $4D6F: $00
    nop                                           ; $4D70: $00
    nop                                           ; $4D71: $00
    nop                                           ; $4D72: $00
    nop                                           ; $4D73: $00
    nop                                           ; $4D74: $00
    nop                                           ; $4D75: $00
    nop                                           ; $4D76: $00
    nop                                           ; $4D77: $00
    nop                                           ; $4D78: $00
    nop                                           ; $4D79: $00
    nop                                           ; $4D7A: $00
    nop                                           ; $4D7B: $00
    nop                                           ; $4D7C: $00
    nop                                           ; $4D7D: $00
    nop                                           ; $4D7E: $00
    nop                                           ; $4D7F: $00

AnimationPointerTable::
    db   $80, $51
    db   $80, $51
    db   $83, $51
    db   $89, $51
    db   $8C, $51
    db   $92, $51
    db   $98, $51
    db   $9E, $51
    db   $A4, $51
    db   $A7, $51
    db   $AA, $51
    db   $AD, $51
    db   $B0, $51
    db   $BA, $51
    db   $C0, $51
    db   $C5, $51
    db   $CB, $51
    db   $CE, $51
    db   $D1, $51
    db   $D4, $51
    db   $D7, $51
    db   $DA, $51
    db   $E0, $51
    db   $E5, $51
    db   $E9, $51
    db   $ED, $51
    db   $F1, $51
    db   $F5, $51
    db   $F8, $51
    db   $FB, $51
    db   $FE, $51
    db   $02, $52
    db   $05, $52
    db   $08, $52
    db   $0C, $52
    db   $12, $52
    db   $18, $52
    db   $1B, $52
    db   $21, $52
    db   $24, $52
    db   $2A, $52
    db   $30, $52
    db   $30, $52
    db   $37, $52
    db   $3B, $52
    db   $3E, $52
    db   $42, $52
    db   $46, $52
    db   $49, $52
    db   $4C, $52
    db   $50, $52
    db   $54, $52
    db   $57, $52
    db   $5A, $52
    db   $5D, $52
    db   $61, $52
    db   $65, $52
    db   $68, $52
    db   $6B, $52
    db   $6E, $52
    db   $72, $52
    db   $75, $52
    db   $78, $52
    db   $7B, $52
    db   $7E, $52
    db   $81, $52
    db   $84, $52
    db   $87, $52
    db   $8A, $52
    db   $8D, $52
    db   $90, $52
    db   $96, $52
    db   $99, $52
    db   $9C, $52
    db   $9F, $52
    db   $A2, $52
    db   $A5, $52
    db   $A5, $52
    db   $A8, $52
    db   $AC, $52
    db   $B0, $52
    db   $B3, $52
    db   $B6, $52
    db   $BC, $52
    db   $C2, $52
    db   $C7, $52
    db   $CC, $52
    db   $CF, $52
    db   $D3, $52
    db   $D7, $52
    db   $DA, $52
    db   $E0, $52
    db   $E4, $52
    db   $EA, $52
    db   $F0, $52
    db   $F4, $52
    db   $FA, $52
    db   $02, $53
    db   $05, $53
    db   $09, $53
    db   $0D, $53
    db   $10, $53
    db   $13, $53
    db   $16, $53
    db   $19, $53
    db   $1C, $53
    db   $1F, $53
    db   $22, $53
    db   $25, $53
    db   $29, $53
    db   $2D, $53
    db   $31, $53
    db   $36, $53
    db   $3A, $53
    db   $3E, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $41, $53
    db   $45, $53
    db   $49, $53
    db   $4D, $53
    db   $51, $53
    db   $55, $53
    db   $59, $53
    db   $5D, $53
    db   $61, $53
    db   $65, $53
    db   $69, $53
    db   $6D, $53
    db   $71, $53
    db   $74, $53
    db   $77, $53
    db   $7A, $53
    db   $7D, $53
    db   $80, $53
    db   $83, $53
    db   $86, $53
    db   $89, $53
    db   $8D, $53
    db   $91, $53
    db   $95, $53
    db   $99, $53
    db   $9C, $53
    db   $9F, $53
    db   $A3, $53
    db   $A7, $53
    db   $A7, $53
    db   $A7, $53
    db   $A7, $53

FramePointerTable::
    db   $A7, $53
    db   $A7, $53
    db   $BB, $53
    db   $CD, $53
    db   $E1, $53
    db   $F5, $53
    db   $11, $54
    db   $33, $54
    db   $55, $54
    db   $6F, $54
    db   $93, $54
    db   $B7, $54
    db   $D3, $54
    db   $F9, $54
    db   $1F, $55
    db   $3D, $55
    db   $4F, $55
    db   $69, $55
    db   $69, $55
    db   $69, $55
    db   $7D, $55
    db   $87, $55
    db   $91, $55
    db   $9B, $55
    db   $A5, $55
    db   $CB, $55
    db   $E9, $55
    db   $F3, $55
    db   $FD, $55
    db   $07, $56
    db   $11, $56
    db   $1B, $56
    db   $21, $56
    db   $2B, $56
    db   $35, $56
    db   $35, $56
    db   $35, $56
    db   $3F, $56
    db   $49, $56
    db   $53, $56
    db   $5D, $56
    db   $63, $56
    db   $69, $56
    db   $6F, $56
    db   $75, $56
    db   $7B, $56
    db   $8D, $56
    db   $9D, $56
    db   $AF, $56
    db   $B9, $56
    db   $C7, $56
    db   $D1, $56
    db   $DF, $56
    db   $E7, $56
    db   $F5, $56
    db   $09, $57
    db   $1D, $57
    db   $2B, $57
    db   $33, $57
    db   $3F, $57
    db   $4B, $57
    db   $59, $57
    db   $67, $57
    db   $7F, $57
    db   $97, $57
    db   $A5, $57
    db   $B3, $57
    db   $BD, $57
    db   $CF, $57
    db   $E1, $57
    db   $F5, $57
    db   $09, $58
    db   $0D, $58
    db   $11, $58
    db   $11, $58
    db   $25, $58
    db   $3B, $58
    db   $49, $58
    db   $5F, $58
    db   $75, $58
    db   $87, $58
    db   $C3, $58
    db   $FD, $58
    db   $39, $59
    db   $73, $59
    db   $AF, $59
    db   $E9, $59
    db   $E9, $59
    db   $E9, $59
    db   $E9, $59
    db   $29, $5A
    db   $69, $5A
    db   $73, $5A
    db   $7D, $5A
    db   $8B, $5A
    db   $97, $5A
    db   $AB, $5A
    db   $BF, $5A
    db   $D1, $5A
    db   $E7, $5A
    db   $25, $5B
    db   $5D, $5B
    db   $9B, $5B
    db   $D3, $5B
    db   $E1, $5B
    db   $EF, $5B
    db   $11, $5C
    db   $2F, $5C
    db   $39, $5C
    db   $43, $5C
    db   $4F, $5C
    db   $5B, $5C
    db   $6F, $5C
    db   $95, $5C
    db   $BB, $5C
    db   $BB, $5C
    db   $C5, $5C
    db   $CF, $5C
    db   $D9, $5C
    db   $E3, $5C
    db   $ED, $5C
    db   $F7, $5C
    db   $09, $5D
    db   $13, $5D
    db   $1D, $5D
    db   $27, $5D
    db   $31, $5D
    db   $3B, $5D
    db   $4F, $5D
    db   $61, $5D
    db   $73, $5D
    db   $77, $5D
    db   $8B, $5D
    db   $9F, $5D
    db   $B1, $5D
    db   $C3, $5D
    db   $D5, $5D
    db   $D9, $5D
    db   $EB, $5D
    db   $FD, $5D
    db   $0F, $5E
    db   $31, $5E
    db   $53, $5E
    db   $75, $5E
    db   $97, $5E
    db   $AF, $5E
    db   $B5, $5E
    db   $BF, $5E
    db   $C9, $5E
    db   $E3, $5E
    db   $FD, $5E
    db   $17, $5F
    db   $31, $5F
    db   $53, $5F
    db   $6F, $5F
    db   $8B, $5F
    db   $A7, $5F
    db   $C3, $5F
    db   $E5, $5F
    db   $05, $60
    db   $29, $60
    db   $47, $60
    db   $51, $60
    db   $5B, $60
    db   $65, $60
    db   $6F, $60
    db   $79, $60
    db   $83, $60
    db   $8D, $60
    db   $97, $60
    db   $9D, $60
    db   $AF, $60
    db   $C1, $60
    db   $D3, $60
    db   $DD, $60
    db   $E3, $60
    db   $ED, $60
    db   $F3, $60
    db   $FD, $60
    db   $07, $61
    db   $11, $61
    db   $25, $61
    db   $25, $61
    db   $2F, $61
    db   $39, $61
    db   $43, $61
    db   $4D, $61
    db   $57, $61
    db   $61, $61
    db   $65, $61
    db   $79, $61
    db   $8D, $61
    db   $A1, $61
    db   $AB, $61
    db   $B5, $61
    db   $BF, $61
    db   $C9, $61
    db   $D3, $61
    db   $DD, $61
    db   $E7, $61
    db   $F1, $61
    db   $FB, $61
    db   $05, $62
    db   $0F, $62
    db   $19, $62
    db   $23, $62
    db   $2D, $62
    db   $37, $62
    db   $41, $62
    db   $4B, $62
    db   $55, $62
    db   $5F, $62
    db   $69, $62
    db   $73, $62
    db   $7D, $62
    db   $87, $62
    db   $91, $62
    db   $9B, $62
    db   $A5, $62
    db   $AF, $62
    db   $B9, $62
    db   $CB, $62
    db   $DD, $62
    db   $EF, $62
    db   $01, $63
    db   $11, $63
    db   $21, $63
    db   $31, $63
    db   $41, $63
    db   $51, $63
    db   $61, $63
    db   $71, $63
    db   $81, $63
    db   $8B, $63
    db   $95, $63
    db   $A5, $63
    db   $B5, $63
    db   $C5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63
    db   $D5, $63

SpriteLayoutPointerTable::
    db   $D5, $63
    db   $D5, $63
    db   $DD, $63
    db   $EF, $63
    db   $FF, $63
    db   $0F, $64
    db   $1F, $64
    db   $3F, $64
    db   $63, $64
    db   $6B, $64
    db   $77, $64
    db   $99, $64
    db   $B3, $64
    db   $D7, $64
    db   $F3, $64
    db   $F3, $64
    db   $FB, $64
    db   $FF, $64
    db   $07, $65
    db   $0B, $65
    db   $0F, $65
    db   $13, $65
    db   $1F, $65
    db   $2F, $65
    db   $47, $65
    db   $5D, $65
    db   $69, $65
    db   $6B, $65
    db   $6F, $65
    db   $71, $65
    db   $73, $65
    db   $79, $65
    db   $81, $65
    db   $BB, $65
    db   $BB, $65
    db   $BB, $65
    db   $BB, $65
    db   $F9, $65
    db   $05, $66
    db   $0F, $66
    db   $47, $66
    db   $59, $66
    db   $6B, $66
    db   $7F, $66
    db   $89, $66
    db   $BF, $66
    db   $BF, $66
    db   $C3, $66
    db   $D1, $66
    db   $D1, $66
    db   $F5, $66
    db   $F5, $66
    db   $F5, $66
    db   $F5, $66
    db   $F5, $66
    db   $F5, $66
    db   $F5, $66
    db   $F7, $66
    db   $05, $67
    db   $15, $67
    db   $25, $67
    db   $45, $67
    db   $4F, $67
    db   $71, $67
    db   $8D, $67
    db   $95, $67
    db   $A9, $67
    db   $AD, $67
    db   $AF, $67
    db   $BF, $67
    db   $C3, $67
    db   $C7, $67
    db   $DB, $67
    db   $DF, $67
    db   $E7, $67
    db   $EB, $67
    db   $ED, $67
    db   $CB, $67
    db   $CF, $67
    db   $D3, $67
    db   $0B, $68
    db   $0D, $68
    db   $1F, $68
    db   $2F, $68
    db   $39, $68
    db   $3D, $68
    db   $59, $68
    db   $59, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68
    db   $5D, $68

AnimationSequenceData::
    db   $FF, $01, $01, $08, $04, $03, $02, $03, $04, $FF, $01, $05, $06, $04, $06, $07
    db   $08, $07, $06, $04, $0C, $0D, $0E, $0D, $03, $04, $09, $0A, $0B, $0A, $03, $04
    db   $18, $0D, $19, $0D, $FF, $01, $0F, $FF, $01, $10, $FF, $01, $11, $FF, $01, $12
    db   $04, $08, $0C, $13, $0D, $13, $0E, $13, $0D, $13, $04, $04, $14, $15, $16, $17
    db   $03, $03, $7C, $7D, $7E, $03, $04, $7C, $7D, $7E, $79, $FF, $01, $AE, $FF, $01
    db   $AF, $FF, $01, $1E, $FF, $01, $1F, $FF, $01, $B0, $06, $04, $1A, $1B, $1C, $1D
    db   $04, $03, $B1, $B2, $B3, $08, $02, $A1, $A2, $08, $02, $A3, $A4, $08, $02, $BA
    db   $BB, $08, $02, $B8, $B9, $FF, $01, $21, $FF, $01, $70, $FF, $01, $71, $08, $02
    db   $6E, $6D, $FF, $01, $6F, $FF, $01, $20, $08, $02, $B6, $B7, $08, $04, $24, $25
    db   $26, $27, $08, $04, $28, $29, $2A, $2B, $FF, $01, $2C, $08, $04, $2D, $2E, $2F
    db   $2E, $FF, $01, $4F, $08, $04, $AA, $AB, $AC, $AB, $03, $04, $A1, $A2, $A3, $A4
    db   $03, $05, $A5, $A6, $A7, $A8, $A9, $10, $02, $9A, $9B, $FF, $01, $9C, $05, $02
    db   $3A, $3B, $08, $02, $3C, $3D, $FF, $01, $3E, $FF, $01, $3F, $18, $02, $7F, $B4
    db   $10, $02, $40, $41, $FF, $01, $42, $FF, $01, $43, $FF, $01, $44, $08, $02, $45
    db   $46, $08, $02, $47, $48, $FF, $01, $4A, $FF, $01, $4B, $FF, $01, $4C, $08, $02
    db   $4D, $4E, $FF, $01, $80, $FF, $01, $81, $FF, $01, $82, $FF, $01, $83, $FF, $01
    db   $84, $FF, $01, $85, $FF, $01, $88, $FF, $01, $8A, $FF, $01, $89, $FF, $01, $8B
    db   $08, $04, $8C, $8D, $8E, $8F, $FF, $01, $90, $FF, $01, $91, $FF, $01, $92, $FF
    db   $01, $93, $FF, $01, $BC, $FF, $01, $AD, $08, $02, $9D, $A0, $08, $02, $9E, $9F
    db   $FF, $01, $98, $FF, $01, $99, $08, $04, $34, $35, $36, $37, $08, $04, $37, $36
    db   $35, $34, $08, $03, $37, $38, $39, $08, $03, $39, $38, $37, $FF, $01, $78, $04
    db   $02, $76, $77, $04, $02, $74, $75, $FF, $01, $73, $08, $04, $30, $31, $87, $96
    db   $08, $02, $96, $97, $08, $04, $96, $87, $31, $30, $08, $04, $32, $33, $86, $94
    db   $08, $02, $94, $95, $08, $04, $94, $86, $33, $32, $08, $06, $50, $51, $52, $53
    db   $54, $55, $FF, $01, $56, $08, $02, $57, $58, $10, $02, $59, $5A, $FF, $01, $5B
    db   $FF, $01, $5C, $FF, $01, $5D, $FF, $01, $5E, $FF, $01, $5F, $FF, $01, $60, $FF
    db   $01, $61, $FF, $01, $62, $05, $02, $63, $64, $05, $02, $65, $66, $08, $02, $67
    db   $68, $10, $03, $69, $69, $6A, $08, $02, $6B, $6C, $08, $02, $BD, $BE, $FF, $01
    db   $BF, $10, $02, $C0, $C1, $10, $02, $C2, $C3, $10, $02, $C4, $C5, $10, $02, $C8
    db   $C9, $10, $02, $C6, $C7, $10, $02, $CA, $CB, $10, $02, $CE, $CF, $10, $02, $CC
    db   $CD, $10, $02, $D0, $D1, $10, $02, $D4, $D5, $10, $02, $D2, $D3, $10, $02, $D6
    db   $D7, $FF, $01, $D9, $FF, $01, $D8, $FF, $01, $DA, $FF, $01, $DB, $FF, $01, $DC
    db   $FF, $01, $DD, $FF, $01, $DE, $FF, $01, $DF, $10, $02, $E0, $E1, $10, $02, $E2
    db   $E3, $10, $02, $E4, $E5, $10, $02, $E7, $E6, $FF, $01, $E8, $FF, $01, $E9, $10
    db   $02, $EA, $EB, $10, $02, $EC, $ED

FrameDescriptorData::
    db   $08, $02, $90, $00, $91, $00, $92, $00, $A0, $00, $A1, $00, $A2, $00, $81, $00
    db   $82, $00, $6B, $00, $07, $04, $86, $00, $87, $00, $88, $00, $96, $00, $97, $00
    db   $98, $00, $A7, $00, $A8, $00, $08, $02, $93, $00, $94, $00, $95, $00, $A3, $00
    db   $A4, $00, $A5, $00, $84, $00, $85, $00, $83, $00, $08, $02, $99, $00, $9A, $00
    db   $9B, $00, $A9, $00, $AA, $00, $AB, $00, $8A, $00, $8B, $00, $89, $00, $0C, $01
    db   $8F, $00, $AF, $00, $9F, $00, $BF, $00, $4C, $00, $4D, $00, $4E, $00, $5C, $00
    db   $5D, $00, $5E, $00, $BD, $00, $BE, $00, $BC, $00, $0F, $06, $8D, $00, $8E, $00
    db   $9C, $00, $9D, $00, $9E, $00, $AC, $00, $AD, $00, $AE, $00, $61, $20, $63, $20
    db   $61, $00, $63, $00, $60, $20, $62, $20, $60, $00, $62, $00, $0F, $06, $8D, $00
    db   $8E, $00, $9C, $00, $9D, $00, $9E, $00, $AC, $00, $AD, $00, $AE, $00, $8C, $20
    db   $BA, $20, $8C, $00, $BA, $00, $80, $20, $A6, $20, $80, $00, $A6, $00, $0B, $06
    db   $8D, $00, $8E, $00, $9C, $00, $9D, $00, $9E, $00, $AC, $00, $AD, $00, $AE, $00
    db   $4F, $20, $5F, $20, $4F, $00, $5F, $00, $10, $0A, $40, $00, $41, $00, $42, $00
    db   $50, $00, $51, $00, $52, $00, $B1, $00, $B2, $00, $B0, $00, $61, $20, $63, $20
    db   $61, $00, $63, $00, $60, $20, $62, $20, $60, $00, $62, $00, $10, $02, $40, $00
    db   $41, $00, $42, $00, $50, $00, $51, $00, $52, $00, $B1, $00, $B2, $00, $B0, $00
    db   $8C, $20, $BA, $20, $8C, $00, $BA, $00, $80, $20, $A6, $20, $80, $00, $A6, $00
    db   $0C, $0B, $40, $00, $41, $00, $42, $00, $50, $00, $51, $00, $52, $00, $B1, $00
    db   $B2, $00, $B0, $00, $4F, $20, $5F, $20, $4F, $00, $5F, $00, $11, $07, $8F, $00
    db   $AF, $00, $9F, $00, $BF, $00, $43, $00, $44, $00, $45, $00, $53, $00, $54, $00
    db   $55, $00, $61, $20, $63, $20, $61, $00, $63, $00, $60, $20, $62, $20, $60, $00
    db   $62, $00, $11, $07, $8F, $00, $AF, $00, $9F, $00, $BF, $00, $43, $00, $44, $00
    db   $45, $00, $53, $00, $54, $00, $55, $00, $8C, $20, $BA, $20, $8C, $00, $BA, $00
    db   $80, $20, $A6, $20, $80, $00, $A6, $00, $0D, $07, $8F, $00, $AF, $00, $9F, $00
    db   $BF, $00, $43, $00, $44, $00, $45, $00, $53, $00, $54, $00, $55, $00, $4F, $20
    db   $5F, $20, $4F, $00, $5F, $00, $07, $05, $B7, $00, $B8, $00, $47, $00, $48, $00
    db   $57, $00, $58, $00, $46, $00, $56, $00, $0B, $01, $8F, $00, $AF, $00, $9F, $00
    db   $BF, $00, $B3, $00, $B4, $00, $48, $00, $B5, $00, $B6, $00, $58, $00, $B9, $00
    db   $BB, $00, $08, $02, $CE, $00, $C8, $00, $CE, $20, $CC, $40, $CD, $40, $CC, $60
    db   $CD, $00, $CC, $20, $CC, $00, $03, $0F, $40, $00, $41, $60, $41, $00, $40, $60
    db   $03, $0F, $42, $40, $42, $60, $42, $00, $42, $20, $03, $0F, $43, $40, $43, $60
    db   $43, $00, $43, $20, $03, $0F, $44, $40, $44, $60, $44, $00, $44, $20, $11, $0C
    db   $8F, $00, $AF, $00, $9F, $00, $BF, $00, $43, $00, $44, $00, $45, $00, $53, $00
    db   $54, $00, $55, $00, $61, $20, $63, $20, $61, $00, $63, $00, $60, $20, $62, $20
    db   $60, $00, $62, $00, $0D, $0D, $8F, $00, $AF, $00, $9F, $00, $BF, $00, $43, $00
    db   $44, $00, $45, $00, $53, $00, $54, $00, $55, $00, $4F, $20, $5F, $20, $4F, $00
    db   $5F, $00, $03, $0F, $7A, $00, $7B, $00, $7A, $40, $7B, $40, $03, $0F, $7C, $00
    db   $7C, $20, $7D, $00, $7D, $20, $03, $0F, $7B, $20, $7A, $20, $7B, $60, $7A, $60
    db   $03, $0F, $7D, $40, $7D, $60, $7C, $40, $7C, $60, $03, $0F, $7A, $00, $7B, $00
    db   $7C, $00, $7D, $00, $01, $10, $D0, $10, $D1, $10, $03, $0F, $E0, $00, $E1, $00
    db   $E2, $00, $E3, $00, $03, $0F, $EE, $00, $EF, $00, $EF, $60, $EE, $60, $03, $0F
    db   $D4, $00, $D5, $00, $D6, $00, $D7, $00, $03, $0F, $D8, $00, $D9, $00, $DA, $00
    db   $DB, $00, $03, $0F, $D9, $20, $D8, $20, $DB, $20, $DA, $20, $03, $0F, $D5, $20
    db   $D4, $20, $D7, $20, $D6, $20, $01, $10, $DC, $00, $DD, $00, $01, $10, $DE, $00
    db   $DF, $00, $01, $10, $DF, $20, $DE, $20, $01, $10, $DD, $20, $DC, $20, $01, $10
    db   $E8, $00, $E8, $20, $07, $51, $07, $00, $08, $00, $09, $00, $0A, $00, $0B, $00
    db   $0D, $00, $0E, $00, $0C, $00, $06, $51, $00, $00, $01, $00, $02, $00, $03, $00
    db   $04, $00, $05, $00, $06, $00, $07, $51, $07, $00, $08, $00, $09, $00, $0A, $00
    db   $0B, $00, $10, $00, $11, $00, $0F, $00, $03, $46, $D8, $00, $DA, $00, $D9, $00
    db   $DB, $00, $05, $46, $D8, $00, $DA, $00, $D9, $00, $DB, $00, $D9, $00, $DB, $00
    db   $03, $39, $D8, $00, $D9, $00, $DA, $00, $DB, $00, $05, $39, $D8, $00, $D9, $00
    db   $DA, $00, $DB, $00, $DA, $00, $DB, $00, $02, $1F, $03, $00, $04, $00, $03, $20
    db   $05, $1E, $05, $00, $06, $00, $05, $20, $07, $00, $08, $00, $07, $20, $08, $1C
    db   $0B, $00, $0A, $00, $0C, $00, $0D, $00, $0E, $00, $0F, $00, $10, $00, $11, $00
    db   $09, $00, $08, $1C, $14, $00, $13, $00, $15, $00, $16, $00, $17, $00, $18, $00
    db   $19, $00, $1A, $00, $12, $00, $05, $49, $1B, $00, $1C, $00, $1B, $20, $1D, $00
    db   $1E, $00, $1D, $20, $02, $49, $03, $40, $04, $40, $03, $60, $04, $53, $34, $00
    db   $34, $20, $36, $00, $37, $00, $38, $00, $04, $53, $35, $00, $35, $20, $36, $00
    db   $37, $00, $38, $00, $05, $41, $39, $00, $3A, $00, $3B, $00, $3C, $00, $3D, $00
    db   $3E, $00, $05, $41, $39, $00, $3A, $00, $3B, $00, $3F, $00, $3D, $00, $3E, $00
    db   $0A, $42, $09, $00, $0A, $00, $14, $00, $15, $00, $16, $00, $17, $00, $18, $00
    db   $19, $00, $1A, $00, $1B, $00, $1C, $00, $0A, $42, $09, $00, $0A, $00, $1D, $00
    db   $1E, $00, $16, $00, $17, $00, $18, $00, $19, $00, $1A, $00, $1B, $00, $1C, $00
    db   $05, $43, $DF, $00, $E2, $00, $E3, $00, $E4, $00, $E5, $00, $E6, $00, $05, $43
    db   $DF, $00, $E2, $00, $E3, $00, $EB, $00, $EC, $00, $E6, $00, $03, $0F, $E7, $00
    db   $E8, $00, $E9, $00, $EA, $00, $07, $17, $08, $00, $09, $00, $0A, $00, $0B, $00
    db   $08, $20, $09, $20, $0A, $20, $0B, $20, $07, $17, $08, $00, $0C, $00, $0E, $00
    db   $0B, $00, $08, $20, $0D, $00, $0F, $00, $0B, $20, $08, $05, $33, $00, $34, $00
    db   $35, $00, $36, $00, $37, $00, $38, $00, $34, $40, $35, $40, $33, $40, $08, $05
    db   $39, $00, $3A, $00, $3B, $00, $3C, $00, $3D, $00, $3E, $00, $3A, $40, $3B, $40
    db   $39, $40, $00, $4A, $3F, $00, $00, $4A, $3F, $20, $08, $50, $02, $00, $03, $00
    db   $02, $20, $04, $00, $05, $00, $06, $00, $08, $00, $09, $00, $07, $00, $09, $50
    db   $02, $00, $03, $00, $02, $20, $04, $00, $0A, $00, $0B, $00, $0D, $00, $0E, $00
    db   $0C, $00, $0F, $00, $05, $41, $24, $00, $24, $20, $25, $00, $26, $00, $27, $00
    db   $28, $00, $09, $40, $29, $00, $29, $20, $2B, $00, $2B, $20, $2A, $00, $2A, $20
    db   $2C, $00, $2C, $20, $2D, $00, $2D, $20, $09, $41, $2F, $00, $2F, $20, $21, $00
    db   $21, $20, $22, $00, $22, $20, $2E, $00, $2E, $20, $20, $00, $20, $20, $07, $17
    db   $0B, $40, $0A, $40, $09, $40, $08, $40, $0B, $60, $0A, $60, $09, $60, $08, $60
    db   $1C, $20, $00, $10, $01, $10, $02, $10, $03, $10, $04, $10, $05, $10, $1C, $10
    db   $1D, $10, $06, $10, $07, $10, $26, $10, $27, $10, $1E, $10, $1F, $10, $08, $10
    db   $09, $10, $28, $10, $29, $10, $20, $10, $0D, $10, $0E, $10, $0F, $10, $2A, $10
    db   $2B, $10, $0A, $10, $10, $10, $11, $10, $0B, $10, $0C, $10, $1B, $27, $00, $10
    db   $01, $10, $02, $10, $03, $10, $04, $10, $05, $10, $21, $10, $22, $10, $06, $10
    db   $07, $10, $2C, $10, $2D, $10, $23, $10, $24, $10, $08, $10, $09, $10, $2E, $10
    db   $2F, $10, $0D, $10, $0E, $10, $0F, $10, $30, $10, $31, $10, $0A, $10, $10, $10
    db   $11, $10, $0B, $10, $0C, $10, $1C, $20, $00, $10, $01, $10, $02, $10, $03, $10
    db   $04, $10, $05, $10, $1C, $10, $1D, $10, $06, $10, $07, $10, $26, $10, $27, $10
    db   $1E, $10, $1F, $10, $08, $10, $09, $10, $28, $10, $29, $10, $20, $10, $12, $10
    db   $13, $10, $14, $10, $2A, $10, $2B, $10, $0A, $10, $15, $10, $16, $10, $0B, $10
    db   $0C, $10, $1B, $27, $00, $10, $01, $10, $02, $10, $03, $10, $04, $10, $05, $10
    db   $21, $10, $22, $10, $06, $10, $07, $10, $2C, $10, $2D, $10, $23, $10, $24, $10
    db   $08, $10, $09, $10, $2E, $10, $2F, $10, $12, $10, $13, $10, $14, $10, $30, $10
    db   $31, $10, $0A, $10, $15, $10, $16, $10, $0B, $10, $0C, $10, $1C, $20, $00, $10
    db   $01, $10, $02, $10, $03, $10, $04, $10, $05, $10, $1C, $10, $1D, $10, $06, $10
    db   $07, $10, $26, $10, $27, $10, $1E, $10, $1F, $10, $08, $10, $09, $10, $28, $10
    db   $29, $10, $20, $10, $17, $10, $18, $10, $19, $10, $2A, $10, $2B, $10, $0A, $10
    db   $1A, $10, $1B, $10, $0B, $10, $0C, $10, $1B, $27, $00, $10, $01, $10, $02, $10
    db   $03, $10, $04, $10, $05, $10, $21, $10, $22, $10, $06, $10, $07, $10, $2C, $10
    db   $2D, $10, $23, $10, $24, $10, $08, $10, $09, $10, $2E, $10, $2F, $10, $17, $10
    db   $18, $10, $19, $10, $30, $10, $31, $10, $0A, $10, $1A, $10, $1B, $10, $0B, $10
    db   $0C, $10, $1E, $24, $00, $10, $01, $10, $03, $10, $04, $10, $05, $10, $06, $10
    db   $07, $10, $08, $10, $09, $10, $0A, $10, $0B, $10, $0C, $10, $0D, $10, $0E, $10
    db   $0F, $10, $10, $10, $11, $10, $12, $10, $13, $10, $14, $10, $15, $10, $16, $10
    db   $17, $10, $18, $10, $19, $10, $1A, $10, $1B, $10, $1C, $10, $1D, $10, $1E, $10
    db   $1F, $10, $1E, $24, $00, $10, $01, $10, $03, $10, $04, $10, $05, $10, $06, $10
    db   $07, $10, $08, $10, $09, $10, $0A, $10, $0B, $10, $0C, $10, $0D, $10, $20, $10
    db   $21, $10, $22, $10, $23, $10, $24, $10, $25, $10, $26, $10, $27, $10, $28, $10
    db   $29, $10, $2A, $10, $2B, $10, $2C, $10, $2D, $10, $2E, $10, $2F, $10, $30, $10
    db   $31, $10, $03, $0F, $06, $00, $06, $20, $07, $00, $07, $20, $03, $0F, $08, $00
    db   $08, $20, $09, $00, $09, $20, $05, $25, $0A, $10, $0B, $10, $0C, $10, $0D, $10
    db   $0E, $10, $0F, $10, $04, $26, $10, $10, $11, $10, $12, $10, $13, $10, $14, $10
    db   $08, $28, $00, $10, $01, $10, $04, $10, $05, $10, $08, $10, $09, $10, $0A, $10
    db   $0B, $10, $0C, $10, $08, $29, $00, $10, $01, $10, $0D, $10, $04, $10, $05, $10
    db   $0E, $10, $0F, $10, $10, $10, $09, $10, $07, $46, $02, $00, $06, $00, $03, $00
    db   $07, $00, $03, $20, $07, $20, $02, $20, $06, $20, $09, $2A, $0D, $10, $11, $10
    db   $05, $10, $0E, $10, $0F, $10, $10, $10, $09, $10, $0A, $10, $0B, $10, $0C, $10
    db   $1D, $2B, $00, $10, $01, $10, $1C, $10, $03, $10, $04, $10, $05, $10, $06, $10
    db   $07, $10, $08, $10, $09, $10, $0A, $10, $0B, $10, $0C, $10, $0D, $10, $0E, $10
    db   $0F, $10, $10, $10, $11, $10, $12, $10, $13, $10, $14, $10, $15, $10, $16, $10
    db   $17, $10, $18, $10, $19, $10, $1A, $10, $1B, $10, $1A, $10, $1D, $10, $1A, $2C
    db   $21, $10, $22, $10, $23, $10, $24, $10, $25, $10, $0A, $10, $26, $10, $0C, $10
    db   $27, $10, $28, $10, $29, $10, $10, $10, $11, $10, $12, $10, $13, $10, $2A, $10
    db   $15, $10, $16, $10, $17, $10, $18, $10, $19, $10, $1A, $10, $1B, $10, $1A, $10
    db   $1D, $10, $20, $10, $2B, $10, $1D, $2B, $00, $10, $01, $10, $1C, $10, $03, $10
    db   $04, $10, $05, $10, $06, $10, $07, $10, $08, $10, $09, $10, $0A, $10, $0B, $10
    db   $0C, $10, $0D, $10, $0E, $10, $0F, $10, $10, $10, $11, $10, $1E, $10, $13, $10
    db   $14, $10, $15, $10, $16, $10, $1F, $10, $18, $10, $19, $10, $1A, $10, $1B, $10
    db   $1A, $10, $1D, $10, $1A, $2C, $21, $10, $22, $10, $23, $10, $24, $10, $25, $10
    db   $0A, $10, $26, $10, $0C, $10, $27, $10, $28, $10, $29, $10, $10, $10, $11, $10
    db   $1E, $10, $13, $10, $2A, $10, $15, $10, $16, $10, $1F, $10, $18, $10, $19, $10
    db   $1A, $10, $1B, $10, $1A, $10, $1D, $10, $20, $10, $2B, $10, $05, $41, $3D, $40
    db   $3E, $40, $3B, $40, $3C, $40, $39, $40, $3A, $40, $05, $41, $3D, $40, $3E, $40
    db   $3B, $40, $3F, $40, $39, $40, $3A, $40, $0F, $54, $D0, $10, $DC, $10, $D1, $10
    db   $D2, $10, $D3, $10, $D4, $10, $D5, $10, $D6, $10, $D7, $10, $D8, $10, $D9, $10
    db   $DA, $10, $DB, $10, $DD, $10, $DE, $10, $DF, $10, $0D, $55, $E0, $10, $E1, $10
    db   $E2, $10, $E3, $10, $E4, $10, $E5, $10, $E6, $10, $E7, $10, $E8, $10, $E9, $10
    db   $EA, $10, $EB, $10, $EC, $10, $ED, $10, $03, $0F, $EE, $00, $EE, $20, $EE, $40
    db   $EE, $60, $03, $0F, $EF, $00, $EF, $20, $EF, $40, $EF, $60, $04, $2F, $C8, $00
    db   $C8, $00, $C8, $00, $C8, $00, $C8, $00, $04, $2F, $44, $00, $42, $00, $40, $00
    db   $41, $00, $47, $00, $08, $2E, $43, $00, $40, $00, $45, $00, $42, $00, $C8, $00
    db   $46, $00, $48, $00, $42, $00, $44, $00, $11, $31, $A0, $50, $A1, $10, $A0, $10
    db   $A0, $50, $A0, $10, $A0, $50, $A1, $10, $A0, $10, $A0, $50, $A1, $10, $A0, $50
    db   $A0, $10, $A0, $50, $A0, $10, $A0, $50, $A1, $50, $A0, $50, $A0, $10, $11, $31
    db   $A2, $10, $A0, $30, $A0, $70, $A0, $30, $A1, $30, $A0, $30, $A0, $70, $A1, $70
    db   $A0, $70, $A0, $30, $A0, $70, $A0, $30, $A1, $30, $A0, $30, $A0, $70, $A0, $30
    db   $A0, $70, $A0, $30, $03, $0F, $24, $00, $24, $20, $24, $40, $24, $60, $03, $0F
    db   $15, $00, $15, $20, $15, $40, $15, $60, $03, $0F, $16, $00, $16, $20, $16, $40
    db   $16, $60, $03, $0F, $22, $00, $22, $20, $22, $40, $22, $60, $03, $0F, $23, $00
    db   $23, $20, $23, $40, $23, $60, $03, $0F, $02, $00, $02, $20, $02, $40, $02, $60
    db   $07, $52, $6A, $00, $6A, $20, $6A, $00, $6A, $20, $6A, $40, $6A, $60, $6A, $40
    db   $6A, $60, $03, $0F, $FC, $20, $F0, $20, $FC, $60, $F3, $20, $03, $0F, $FC, $20
    db   $F3, $60, $FC, $60, $F0, $60, $03, $0F, $70, $00, $70, $20, $70, $40, $70, $60
    db   $03, $0F, $71, $00, $71, $20, $71, $40, $71, $60, $03, $0F, $6A, $00, $6A, $20
    db   $6A, $40, $6A, $60, $08, $50, $F0, $00, $F1, $00, $F0, $20, $F2, $00, $F3, $00
    db   $F2, $20, $F1, $40, $F0, $60, $F0, $40, $07, $1C, $2E, $00, $2D, $00, $2F, $00
    db   $20, $00, $21, $00, $22, $00, $23, $00, $22, $20, $07, $1D, $25, $00, $26, $00
    db   $27, $00, $2F, $20, $22, $00, $23, $00, $22, $20, $24, $00, $00, $4A, $28, $00
    db   $08, $50, $19, $00, $1A, $00, $19, $20, $1B, $00, $1C, $00, $1B, $20, $1E, $00
    db   $1D, $20, $1D, $00, $08, $50, $1F, $00, $2C, $00, $1F, $20, $2D, $00, $2E, $00
    db   $2D, $20, $1E, $00, $1D, $20, $1D, $00, $07, $50, $E5, $00, $E6, $00, $E7, $00
    db   $E8, $00, $E9, $00, $EA, $00, $EB, $00, $EC, $00, $07, $17, $D8, $00, $DA, $00
    db   $DA, $00, $DA, $00, $D9, $00, $DB, $00, $DB, $00, $DB, $00, $07, $46, $D8, $00
    db   $DA, $00, $D9, $00, $DB, $00, $D9, $00, $DB, $00, $D9, $00, $DB, $00, $00, $4A
    db   $ED, $00, $07, $17, $FC, $10, $FE, $10, $FC, $10, $FE, $10, $FD, $10, $FF, $10
    db   $FD, $10, $FF, $10, $07, $47, $F3, $20, $F3, $60, $F2, $20, $F2, $60, $F0, $20
    db   $F1, $20, $F0, $20, $F1, $20, $07, $46, $FC, $10, $FE, $10, $FD, $10, $FF, $10
    db   $FC, $10, $FE, $10, $FD, $10, $FF, $10, $0F, $16, $F4, $00, $F6, $00, $F6, $40
    db   $F4, $40, $F4, $20, $F6, $20, $F6, $60, $F4, $60, $F5, $00, $F8, $00, $F8, $40
    db   $F5, $40, $F5, $20, $F8, $20, $F8, $60, $F5, $60, $0F, $16, $F4, $00, $F6, $00
    db   $F6, $40, $F4, $40, $F4, $20, $F6, $20, $F6, $60, $F4, $60, $F5, $00, $F7, $00
    db   $F8, $40, $F5, $40, $F5, $20, $F8, $20, $F8, $60, $F5, $60, $0F, $16, $F4, $00
    db   $F6, $00, $F6, $40, $F4, $40, $F4, $20, $F6, $20, $F6, $60, $F4, $60, $F5, $00
    db   $F9, $00, $F8, $40, $F5, $40, $F5, $20, $F8, $20, $F8, $60, $F5, $60, $0F, $16
    db   $F4, $00, $F6, $00, $F6, $40, $F4, $40, $F4, $20, $F6, $20, $F6, $60, $F4, $60
    db   $F5, $00, $FA, $00, $F8, $40, $F5, $40, $F5, $20, $F8, $20, $F8, $60, $F5, $60
    db   $0A, $18, $D0, $00, $D2, $00, $D0, $40, $D0, $00, $D0, $20, $D0, $00, $D0, $40
    db   $D1, $00, $D0, $40, $D2, $20, $D2, $00, $01, $10, $E0, $10, $E1, $10, $03, $0F
    db   $30, $00, $31, $00, $30, $00, $31, $00, $03, $0F, $32, $00, $32, $00, $33, $00
    db   $33, $00, $0B, $17, $D8, $00, $DA, $00, $DA, $00, $DA, $00, $D9, $00, $DB, $00
    db   $DB, $00, $DB, $00, $DA, $00, $DA, $00, $DB, $00, $DB, $00, $0B, $17, $D9, $20
    db   $DB, $20, $DB, $20, $DB, $20, $D8, $20, $DA, $20, $DA, $20, $DA, $20, $DB, $20
    db   $DB, $20, $DA, $20, $DA, $20, $0B, $46, $D8, $00, $DA, $00, $D9, $00, $DB, $00
    db   $D9, $00, $DB, $00, $D9, $00, $DB, $00, $D9, $00, $DB, $00, $D9, $00, $DB, $00
    db   $0B, $46, $DA, $40, $D8, $40, $DB, $40, $D9, $40, $DB, $40, $D9, $40, $DB, $40
    db   $D9, $40, $DB, $40, $D9, $40, $DB, $40, $D9, $40, $0F, $4B, $16, $00, $1A, $00
    db   $1E, $00, $22, $00, $17, $00, $1B, $00, $1F, $00, $23, $00, $18, $00, $1C, $00
    db   $20, $00, $24, $00, $25, $00, $21, $00, $1D, $00, $19, $00, $0C, $4B, $26, $00
    db   $29, $00, $2C, $00, $2F, $00, $27, $00, $2A, $00, $2D, $00, $30, $00, $28, $00
    db   $2B, $00, $2E, $00, $31, $00, $32, $00, $0C, $4C, $11, $00, $14, $00, $18, $00
    db   $20, $00, $12, $00, $15, $00, $19, $00, $10, $00, $13, $00, $16, $00, $1A, $00
    db   $1B, $00, $17, $00, $0C, $4C, $11, $00, $14, $00, $18, $00, $20, $00, $12, $00
    db   $15, $00, $19, $00, $10, $00, $13, $00, $1C, $00, $1E, $00, $1F, $00, $1D, $00
    db   $0C, $4C, $11, $00, $14, $00, $21, $00, $20, $00, $12, $00, $15, $00, $22, $00
    db   $10, $00, $13, $00, $16, $00, $1A, $00, $1B, $00, $17, $00, $0F, $3C, $0C, $00
    db   $0D, $00, $0E, $00, $0F, $00, $10, $00, $11, $00, $12, $00, $13, $00, $14, $00
    db   $15, $00, $24, $00, $25, $00, $26, $00, $27, $00, $28, $00, $29, $00, $0E, $3D
    db   $2A, $00, $2B, $00, $2C, $00, $2D, $00, $2E, $00, $0C, $00, $0D, $00, $0E, $00
    db   $0F, $00, $10, $00, $11, $00, $12, $00, $13, $00, $14, $00, $15, $00, $10, $3E
    db   $0C, $00, $0D, $00, $0E, $00, $0F, $00, $10, $00, $11, $00, $12, $00, $13, $00
    db   $14, $00, $15, $00, $2F, $00, $30, $00, $31, $00, $32, $00, $33, $00, $34, $00
    db   $35, $00, $0D, $3F, $16, $00, $17, $00, $18, $00, $19, $00, $1A, $00, $1B, $00
    db   $1C, $00, $1D, $00, $1E, $00, $1F, $00, $20, $00, $21, $00, $22, $00, $23, $00
    db   $03, $0F, $4B, $00, $4B, $20, $59, $00, $59, $20, $03, $0F, $5A, $00, $5A, $20
    db   $5B, $00, $5B, $20, $03, $0F, $64, $00, $64, $20, $65, $00, $65, $20, $03, $0F
    db   $66, $00, $66, $20, $67, $00, $67, $20, $03, $47, $71, $00, $71, $40, $71, $20
    db   $71, $60, $03, $4D, $73, $00, $73, $40, $74, $00, $74, $40, $03, $4D, $75, $00
    db   $75, $40, $76, $00, $76, $40, $03, $4E, $77, $00, $77, $40, $78, $00, $78, $40
    db   $01, $4F, $79, $00, $79, $40, $07, $51, $07, $00, $08, $00, $12, $00, $0A, $00
    db   $0B, $00, $0D, $00, $0E, $00, $13, $00, $07, $51, $00, $00, $01, $00, $12, $00
    db   $03, $00, $04, $00, $05, $00, $06, $00, $13, $00, $07, $51, $07, $00, $08, $00
    db   $12, $00, $0A, $00, $0B, $00, $10, $00, $11, $00, $13, $00, $03, $0F, $08, $00
    db   $09, $00, $0A, $00, $0B, $00, $01, $1B, $7B, $00, $7B, $20, $03, $0F, $7A, $00
    db   $7B, $00, $7C, $00, $7D, $00, $01, $57, $7F, $00, $7F, $40, $03, $0F, $7B, $20
    db   $7A, $20, $7D, $20, $7C, $20, $03, $0F, $7F, $20, $7E, $20, $7F, $60, $7E, $60
    db   $03, $0F, $7D, $60, $7C, $60, $7B, $60, $7A, $60, $08, $50, $F0, $00, $F1, $00
    db   $F0, $20, $F2, $00, $F3, $20, $F2, $20, $F1, $40, $F0, $60, $F0, $40, $03, $47
    db   $23, $00, $23, $40, $24, $00, $25, $00, $03, $47, $23, $00, $23, $40, $25, $40
    db   $24, $40, $03, $0F, $68, $00, $68, $20, $69, $00, $69, $20, $03, $0F, $6C, $00
    db   $6C, $20, $6D, $00, $6D, $20, $03, $0F, $6E, $00, $6E, $20, $6F, $00, $6F, $20
    db   $03, $0F, $49, $00, $49, $20, $4A, $00, $4A, $20, $00, $4A, $1F, $00, $08, $1C
    db   $05, $00, $04, $00, $06, $00, $07, $00, $08, $00, $09, $00, $0A, $00, $0B, $00
    db   $03, $00, $08, $1C, $15, $00, $0F, $00, $16, $00, $17, $00, $18, $00, $19, $00
    db   $1A, $00, $1B, $00, $0C, $00, $08, $1C, $1E, $00, $1D, $00, $1F, $00, $20, $00
    db   $21, $00, $22, $00, $23, $00, $2D, $00, $1C, $00, $03, $11, $00, $00, $01, $00
    db   $10, $00, $11, $00, $03, $11, $01, $20, $00, $20, $11, $20, $10, $20, $03, $11
    db   $02, $00, $03, $00, $12, $00, $13, $00, $03, $11, $03, $20, $02, $20, $13, $20
    db   $12, $20, $03, $11, $04, $00, $05, $00, $14, $00, $15, $00, $03, $11, $06, $00
    db   $07, $00, $16, $00, $17, $00, $03, $11, $20, $00, $21, $00, $30, $00, $31, $00
    db   $03, $11, $21, $20, $20, $20, $31, $20, $30, $20, $03, $11, $22, $00, $23, $00
    db   $32, $00, $33, $00, $03, $11, $23, $20, $22, $20, $33, $20, $32, $20, $03, $11
    db   $24, $00, $25, $00, $34, $00, $35, $00, $03, $11, $26, $00, $27, $00, $36, $00
    db   $37, $00, $03, $11, $08, $00, $09, $00, $18, $00, $19, $00, $03, $11, $09, $20
    db   $08, $20, $19, $20, $18, $20, $03, $11, $0A, $00, $0B, $00, $1A, $00, $1B, $00
    db   $03, $11, $0B, $20, $0A, $20, $1B, $20, $1A, $20, $03, $11, $0C, $00, $0D, $00
    db   $1C, $00, $1D, $00, $03, $11, $0E, $00, $0F, $00, $1E, $00, $1F, $00, $03, $11
    db   $2A, $00, $2B, $00, $3A, $00, $3B, $00, $03, $11, $2B, $20, $2A, $20, $3B, $20
    db   $3A, $20, $03, $11, $28, $00, $29, $00, $38, $00, $39, $00, $03, $11, $29, $20
    db   $28, $20, $39, $20, $38, $20, $03, $11, $2C, $00, $2D, $00, $3C, $00, $3D, $00
    db   $03, $11, $2E, $00, $2F, $00, $3E, $00, $3F, $00, $03, $11, $40, $00, $40, $20
    db   $41, $00, $41, $20, $03, $11, $44, $00, $44, $20, $45, $00, $45, $20, $03, $11
    db   $42, $00, $43, $00, $54, $00, $55, $00, $03, $11, $46, $00, $46, $20, $56, $00
    db   $56, $20, $07, $38, $47, $00, $49, $00, $4A, $00, $4B, $00, $4C, $00, $4F, $20
    db   $4E, $20, $48, $00, $07, $38, $48, $20, $4A, $20, $49, $20, $4C, $20, $4B, $20
    db   $4E, $00, $4F, $00, $47, $20, $07, $38, $67, $00, $69, $00, $6A, $00, $6B, $00
    db   $6C, $00, $4F, $20, $4E, $20, $68, $00, $07, $38, $68, $20, $6A, $20, $69, $20
    db   $6C, $20, $6B, $20, $4E, $00, $4F, $00, $67, $20, $06, $39, $61, $00, $62, $00
    db   $63, $00, $64, $00, $65, $00, $66, $00, $60, $00, $06, $39, $61, $00, $62, $00
    db   $63, $00, $64, $00, $6F, $20, $5F, $20, $60, $00, $06, $38, $60, $20, $62, $20
    db   $61, $20, $64, $20, $63, $20, $5F, $00, $6F, $00, $06, $38, $60, $20, $62, $20
    db   $61, $20, $64, $20, $63, $20, $66, $20, $65, $20, $06, $39, $59, $00, $5A, $00
    db   $5B, $00, $5C, $00, $5D, $00, $5E, $00, $58, $00, $06, $39, $4D, $00, $5A, $00
    db   $57, $00, $5C, $00, $5D, $00, $5E, $00, $58, $00, $06, $38, $58, $20, $5A, $20
    db   $59, $20, $5C, $20, $5B, $20, $5E, $20, $5D, $20, $06, $38, $58, $20, $5A, $20
    db   $4D, $20, $5C, $20, $57, $20, $5E, $20, $5D, $20, $03, $11, $6D, $00, $6D, $20
    db   $6E, $00, $6E, $20, $03, $11, $7D, $00, $7D, $20, $7E, $00, $7E, $20, $06, $39
    db   $59, $00, $71, $00, $5B, $00, $72, $00, $5D, $00, $5E, $00, $70, $00, $06, $39
    db   $4D, $00, $71, $00, $57, $00, $72, $00, $5D, $00, $5E, $00, $70, $00, $06, $38
    db   $70, $20, $71, $20, $59, $20, $72, $20, $5B, $20, $5E, $20, $5D, $20, $06, $38
    db   $70, $20, $71, $20, $4D, $20, $72, $20, $57, $20, $5E, $20, $5D, $20

SpriteLayoutOffsetData::
    db   $F3, $F2, $F3, $FA, $FB, $F2, $FB, $FA, $FB, $F2, $FB, $FA, $FB, $02, $03, $F2
    db   $03, $FA, $03, $02, $F3, $FA, $F3, $02, $F3, $F2, $F3, $02, $FB, $02, $F3, $FA
    db   $FB, $FA, $F3, $0A, $FB, $0A, $F3, $F2, $FB, $F2, $F3, $F2, $F3, $FA, $F3, $02
    db   $FB, $F2, $FB, $FA, $FB, $02, $03, $F9, $03, $01, $F3, $FA, $F3, $02, $FB, $FA
    db   $FB, $02, $03, $FA, $03, $02, $F7, $F2, $FF, $F2, $F1, $FA, $F1, $02, $F9, $F2
    db   $F9, $FA, $F9, $02, $01, $F2, $01, $FA, $01, $02, $F3, $02, $FB, $02, $F3, $FA
    db   $FB, $FA, $F3, $0A, $FB, $0A, $F3, $F2, $FB, $F2, $F3, $F2, $F3, $FA, $FB, $F2
    db   $FB, $FA, $F9, $F2, $F9, $FA, $F9, $02, $01, $F2, $01, $FA, $01, $02, $F3, $02
    db   $FB, $02, $F3, $FA, $FB, $FA, $F3, $0A, $FB, $0A, $F3, $F2, $FB, $F2, $F8, $F2
    db   $F8, $FA, $00, $F2, $00, $FA, $F8, $02, $00, $F2, $00, $FA, $00, $02, $F8, $FA
    db   $F8, $F2, $FA, $F2, $FA, $FA, $FA, $02, $02, $F2, $02, $FA, $02, $02, $F2, $FA
    db   $F2, $02, $F2, $F2, $F2, $02, $FA, $02, $F2, $FA, $FA, $FA, $F2, $0A, $FA, $0A
    db   $F2, $F2, $FA, $F2, $FC, $F2, $FC, $FA, $FC, $02, $04, $F2, $04, $FA, $04, $02
    db   $F4, $FA, $F4, $02, $F4, $F2, $F4, $02, $FC, $02, $F4, $FA, $FC, $FA, $F2, $F2
    db   $F2, $FA, $FA, $F2, $FA, $FA, $F8, $F2, $F8, $FA, $F8, $02, $00, $F2, $00, $FA
    db   $00, $02, $F2, $02, $FA, $02, $F2, $FA, $FA, $FA, $F2, $0A, $FA, $0A, $F2, $F2
    db   $FA, $F2, $F4, $F2, $F4, $FA, $FC, $F2, $FC, $FA, $FA, $F2, $FA, $FA, $FA, $02
    db   $02, $F2, $02, $FA, $02, $02, $F4, $02, $FC, $02, $F4, $FA, $FC, $FA, $F8, $F8
    db   $F8, $00, $00, $F8, $00, $00, $FC, $F8, $FC, $00, $F6, $F8, $F6, $00, $FE, $F8
    db   $FE, $00, $F4, $F8, $F4, $00, $FC, $F8, $FC, $00, $04, $F8, $04, $00, $F5, $F8
    db   $F4, $00, $FD, $F8, $FC, $00, $05, $F8, $04, $00, $F0, $F0, $F8, $F0, $00, $F0
    db   $08, $F0, $F0, $08, $F8, $08, $00, $08, $08, $08, $F0, $F8, $F8, $F8, $00, $F8
    db   $08, $F8, $F0, $00, $F8, $00, $00, $00, $08, $00, $10, $F8, $18, $F8, $10, $00
    db   $18, $00, $E8, $F8, $F0, $F0, $F0, $F8, $F8, $F8, $F8, $00, $00, $F0, $00, $F8
    db   $00, $08, $08, $F0, $08, $00, $10, $F0, $F8, $F8, $F8, $00, $00, $F0, $00, $F8
    db   $00, $00, $00, $08, $FC, $FC, $FC, $F8, $FC, $00, $F4, $04, $F4, $FC, $FC, $F4
    db   $FC, $FC, $FC, $04, $04, $F4, $04, $FC, $04, $04, $F4, $F4, $E4, $00, $E4, $08
    db   $EC, $F0, $EC, $F8, $EC, $00, $EC, $08, $F4, $E8, $F4, $F0, $F4, $F8, $F4, $00
    db   $F4, $08, $F4, $10, $FC, $E8, $FC, $F0, $FC, $F8, $FC, $00, $FC, $08, $FC, $10
    db   $04, $E8, $04, $F0, $04, $F8, $04, $00, $04, $08, $04, $10, $0C, $F0, $0C, $F8
    db   $0C, $00, $0C, $08, $0C, $10, $E4, $00, $E4, $08, $EC, $F0, $EC, $F8, $EC, $00
    db   $EC, $08, $EC, $10, $F4, $E8, $F4, $F0, $F4, $F8, $F4, $00, $F4, $08, $F4, $10
    db   $FC, $E8, $FC, $F0, $FC, $F8, $FC, $00, $FC, $08, $FC, $10, $04, $E8, $04, $F0
    db   $04, $F8, $04, $00, $04, $08, $04, $10, $0C, $E8, $0C, $F0, $0C, $F8, $0C, $00
    db   $0C, $08, $0C, $10, $F0, $E8, $F4, $F0, $F8, $E8, $FC, $F0, $FC, $F8, $04, $F8
    db   $00, $F8, $08, $F0, $08, $F8, $10, $F0, $10, $F8, $E4, $00, $E4, $08, $EC, $F0
    db   $EC, $F8, $EC, $00, $EC, $08, $F4, $E8, $F4, $F0, $F4, $F8, $F4, $00, $F4, $08
    db   $F4, $10, $FC, $E8, $FC, $F0, $FC, $F8, $FC, $00, $FC, $08, $FC, $10, $04, $F0
    db   $04, $F8, $04, $00, $04, $08, $04, $10, $0C, $F0, $0C, $F8, $0C, $00, $0C, $08
    db   $0C, $10, $E8, $F8, $F0, $F8, $F8, $F8, $F8, $00, $00, $F8, $00, $00, $08, $F8
    db   $08, $00, $10, $F8, $E8, $F8, $F0, $F8, $F8, $E8, $F8, $F8, $F8, $00, $00, $E8
    db   $00, $F0, $00, $F8, $00, $00, $F8, $E8, $F8, $F8, $F8, $00, $00, $E8, $00, $F0
    db   $00, $F8, $00, $00, $08, $F8, $08, $00, $10, $F8, $E8, $F0, $E8, $F8, $E8, $00
    db   $E8, $08, $E8, $10, $F0, $F0, $F0, $F8, $F0, $00, $F0, $08, $F0, $10, $F8, $E8
    db   $F8, $F0, $F8, $F8, $F8, $00, $F8, $08, $F8, $10, $00, $E8, $00, $F0, $00, $F8
    db   $00, $00, $00, $08, $08, $E8, $08, $F0, $08, $F8, $08, $00, $08, $08, $10, $E8
    db   $10, $F0, $10, $F8, $10, $00, $F0, $E8, $00, $10, $FC, $DC, $FC, $E4, $FC, $EC
    db   $FC, $F4, $FC, $FC, $FC, $04, $FC, $0C, $FC, $14, $FC, $1C, $0E, $00, $16, $00
    db   $1E, $00, $26, $00, $2E, $00, $36, $00, $3E, $00, $46, $00, $4E, $00, $56, $00
    db   $5E, $00, $66, $00, $6E, $00, $76, $00, $7E, $00, $86, $00, $8E, $00, $96, $00
    db   $E8, $F8, $F0, $F8, $F0, $00, $F8, $F8, $F8, $00, $00, $F8, $00, $00, $E8, $00
    db   $FC, $F8, $04, $F8, $F4, $F8, $F4, $00, $FC, $F8, $FC, $00, $04, $F8, $04, $00
    db   $FC, $F8, $04, $F8, $F5, $F8, $F4, $00, $FD, $F8, $FC, $00, $05, $F8, $04, $00
    db   $F8, $F8, $F8, $00, $F8, $08, $00, $F0, $00, $F8, $00, $00, $00, $08, $08, $F8
    db   $08, $00, $08, $08, $F8, $F0, $F8, $F8, $00, $F0, $00, $F8, $08, $F0, $08, $F8
    db   $F0, $F0, $F0, $F8, $F8, $F0, $F8, $F8, $00, $F8, $F8, $F8, $F8, $00, $F8, $08
    db   $00, $F0, $00, $F8, $00, $00, $00, $08, $08, $F8, $08, $00, $08, $08, $FB, $E8
    db   $F8, $F0, $F8, $F8, $00, $E0, $03, $E8, $00, $F0, $00, $F8, $F0, $F8, $F0, $00
    db   $F0, $08, $F8, $F8, $F8, $00, $F8, $08, $00, $F0, $00, $F8, $00, $00, $00, $08
    db   $08, $F0, $08, $F8, $08, $00, $08, $08, $F5, $F0, $F5, $08, $FD, $F0, $FD, $08
    db   $F4, $F8, $F4, $00, $FC, $F8, $FC, $00, $04, $F8, $04, $00, $F8, $F0, $F8, $08
    db   $00, $F0, $00, $08, $F0, $F4, $F0, $FC, $F8, $F4, $F8, $FC, $F8, $04, $00, $F4
    db   $00, $FC, $00, $04, $08, $F4, $08, $FC, $08, $04, $F8, $E8, $00, $E8, $F8, $F0
    db   $00, $F0, $F8, $F8, $00, $F8, $F8, $00, $00, $00, $F8, $08, $00, $08, $F8, $10
    db   $00, $10, $F8, $18, $00, $18, $00, $F8, $00, $00, $F4, $F4, $F4, $FC, $F4, $04
    db   $FC, $F4, $FC, $FC, $FC, $04, $F0, $F0, $F8, $F0, $00, $F0, $08, $F0, $F0, $F8
    db   $F8, $F8, $00, $F8, $08, $F8, $F0, $00, $F8, $00, $00, $00, $08, $00, $08, $08
    db   $00, $08, $F8, $08, $F0, $08, $F4, $F4, $F4, $FC, $F4, $04, $FC, $F4, $FC, $FC
    db   $FC, $04, $04, $FC, $04, $04, $04, $F4, $04, $0C, $F0, $F8, $F0, $00, $F8, $F0
    db   $F8, $08, $00, $F0, $00, $08, $08, $F8, $08, $00, $F8, $F4, $F8, $FC, $00, $F4
    db   $00, $FC, $00, $04, $F0, $F0, $08, $F0, $F0, $F8, $F0, $00, $F0, $08, $F8, $F0
    db   $F8, $F8, $F8, $00, $F8, $08, $00, $F0, $00, $F8, $00, $00, $00, $08, $08, $F8
    db   $08, $00, $08, $08, $F8, $FC, $00, $FC

    nop                                           ; $685D: $00
    nop                                           ; $685E: $00
    nop                                           ; $685F: $00
    xor  a                                        ; $6860: $AF
    ld   [$C7C9], a                               ; $6861: $EA $C9 $C7

jr_002_6864:
    xor  a                                        ; $6864: $AF
    ld   [$C7CA], a                               ; $6865: $EA $CA $C7

jr_002_6868:
    ld   a, [$C7C9]                               ; $6868: $FA $C9 $C7
    ld   hl, $6917                                ; $686B: $21 $17 $69
    call Add2AToHL                                ; $686E: $CD $81 $00
    ld   a, [hl+]                                 ; $6871: $2A
    ld   d, a                                     ; $6872: $57
    ld   a, [hl]                                  ; $6873: $7E
    ld   e, a                                     ; $6874: $5F
    push de                                       ; $6875: $D5
    ld   a, [$C7CA]                               ; $6876: $FA $CA $C7
    ld   hl, $6927                                ; $6879: $21 $27 $69
    call Add2AToHL                                ; $687C: $CD $81 $00
    ld   a, [hl+]                                 ; $687F: $2A
    ld   b, a                                     ; $6880: $47
    ld   a, [hl+]                                 ; $6881: $2A
    ld   c, a                                     ; $6882: $4F
    push hl                                       ; $6883: $E5
    call Call_002_68CD                            ; $6884: $CD $CD $68
    call Call_002_68B6                            ; $6887: $CD $B6 $68
    ld   a, [$C7CA]                               ; $688A: $FA $CA $C7
    inc  a                                        ; $688D: $3C
    ld   [$C7CA], a                               ; $688E: $EA $CA $C7
    pop  hl                                       ; $6891: $E1
    pop  de                                       ; $6892: $D1
    ld   a, [hl+]                                 ; $6893: $2A
    ld   b, a                                     ; $6894: $47
    ld   c, [hl]                                  ; $6895: $4E
    call Call_002_68CD                            ; $6896: $CD $CD $68
    call Call_002_68B6                            ; $6899: $CD $B6 $68
    ld   a, [$C7CA]                               ; $689C: $FA $CA $C7
    inc  a                                        ; $689F: $3C
    ld   [$C7CA], a                               ; $68A0: $EA $CA $C7
    ld   a, [$C7CA]                               ; $68A3: $FA $CA $C7
    cp   $20                                      ; $68A6: $FE $20
    jr   nz, jr_002_6868                          ; $68A8: $20 $BE

    ld   a, [$C7C9]                               ; $68AA: $FA $C9 $C7
    inc  a                                        ; $68AD: $3C
    ld   [$C7C9], a                               ; $68AE: $EA $C9 $C7
    cp   $08                                      ; $68B1: $FE $08
    jr   nz, jr_002_6864                          ; $68B3: $20 $AF

    ret                                           ; $68B5: $C9


Call_002_68B6:
    add  hl, hl                                   ; $68B6: $29
    push hl                                       ; $68B7: $E5
    ld   hl, $C220                                ; $68B8: $21 $20 $C2
    ld   a, [$C7C9]                               ; $68BB: $FA $C9 $C7
    add  h                                        ; $68BE: $84
    ld   h, a                                     ; $68BF: $67
    ld   a, [$C7CA]                               ; $68C0: $FA $CA $C7
    sla  a                                        ; $68C3: $CB $27
    call AddAToHL                                 ; $68C5: $CD $71 $00
    pop  de                                       ; $68C8: $D1
    ld   [hl], e                                  ; $68C9: $73
    inc  l                                        ; $68CA: $2C
    ld   [hl], d                                  ; $68CB: $72
    ret                                           ; $68CC: $C9


Call_002_68CD:
    ld   hl, $C7C4                                ; $68CD: $21 $C4 $C7
    xor  a                                        ; $68D0: $AF
    ld   [hl+], a                                 ; $68D1: $22
    ld   [hl+], a                                 ; $68D2: $22
    ld   [hl+], a                                 ; $68D3: $22
    ld   [hl+], a                                 ; $68D4: $22
    ld   [hl], a                                  ; $68D5: $77
    ld   l, $10                                   ; $68D6: $2E $10

jr_002_68D8:
    ld   a, [$C7C8]                               ; $68D8: $FA $C8 $C7
    srl  a                                        ; $68DB: $CB $3F
    ld   [$C7C8], a                               ; $68DD: $EA $C8 $C7
    rr   d                                        ; $68E0: $CB $1A
    rr   e                                        ; $68E2: $CB $1B
    jr   nc, jr_002_68FF                          ; $68E4: $30 $19

    ld   a, [$C7C4]                               ; $68E6: $FA $C4 $C7
    add  c                                        ; $68E9: $81
    ld   [$C7C4], a                               ; $68EA: $EA $C4 $C7
    ld   a, [$C7C5]                               ; $68ED: $FA $C5 $C7
    adc  b                                        ; $68F0: $88
    ld   [$C7C5], a                               ; $68F1: $EA $C5 $C7
    ld   a, [$C7C6]                               ; $68F4: $FA $C6 $C7
    ld   h, a                                     ; $68F7: $67
    ld   a, [$C7C7]                               ; $68F8: $FA $C7 $C7
    adc  h                                        ; $68FB: $8C
    ld   [$C7C6], a                               ; $68FC: $EA $C6 $C7

jr_002_68FF:
    sla  c                                        ; $68FF: $CB $21
    rl   b                                        ; $6901: $CB $10
    ld   a, [$C7C7]                               ; $6903: $FA $C7 $C7
    rl   a                                        ; $6906: $CB $17
    ld   [$C7C7], a                               ; $6908: $EA $C7 $C7
    dec  l                                        ; $690B: $2D
    jr   nz, jr_002_68D8                          ; $690C: $20 $CA

    ld   a, [$C7C5]                               ; $690E: $FA $C5 $C7
    ld   l, a                                     ; $6911: $6F
    ld   a, [$C7C6]                               ; $6912: $FA $C6 $C7
    ld   h, a                                     ; $6915: $67
    ret                                           ; $6916: $C9


    nop                                           ; $6917: $00
    ld   b, b                                     ; $6918: $40
    nop                                           ; $6919: $00
    add  b                                        ; $691A: $80
    nop                                           ; $691B: $00
    ret  nz                                       ; $691C: $C0

    ld   bc, $0100                                ; $691D: $01 $00 $01
    ld   b, b                                     ; $6920: $40
    ld   bc, $0180                                ; $6921: $01 $80 $01
    ret  nz                                       ; $6924: $C0

    ld   [bc], a                                  ; $6925: $02
    nop                                           ; $6926: $00
    ld   bc, $0000                                ; $6927: $01 $00 $00
    nop                                           ; $692A: $00
    nop                                           ; $692B: $00
    db   $EC                                      ; $692C: $EC
    nop                                           ; $692D: $00
    ld   h, c                                     ; $692E: $61
    nop                                           ; $692F: $00
    or   l                                        ; $6930: $B5
    nop                                           ; $6931: $00
    or   l                                        ; $6932: $B5
    nop                                           ; $6933: $00
    ld   h, c                                     ; $6934: $61
    nop                                           ; $6935: $00
    db   $EC                                      ; $6936: $EC
    nop                                           ; $6937: $00
    nop                                           ; $6938: $00
    ld   bc, $0000                                ; $6939: $01 $00 $00
    ld   h, c                                     ; $693C: $61
    nop                                           ; $693D: $00
    db   $EC                                      ; $693E: $EC
    nop                                           ; $693F: $00
    or   l                                        ; $6940: $B5
    nop                                           ; $6941: $00
    or   l                                        ; $6942: $B5
    nop                                           ; $6943: $00
    db   $EC                                      ; $6944: $EC
    nop                                           ; $6945: $00
    ld   h, c                                     ; $6946: $61
    ld   bc, $0000                                ; $6947: $01 $00 $00
    nop                                           ; $694A: $00
    nop                                           ; $694B: $00
    db   $EC                                      ; $694C: $EC
    nop                                           ; $694D: $00
    ld   h, c                                     ; $694E: $61
    nop                                           ; $694F: $00
    or   l                                        ; $6950: $B5
    nop                                           ; $6951: $00
    or   l                                        ; $6952: $B5
    nop                                           ; $6953: $00
    ld   h, c                                     ; $6954: $61
    nop                                           ; $6955: $00
    db   $EC                                      ; $6956: $EC
    nop                                           ; $6957: $00
    nop                                           ; $6958: $00
    ld   bc, $0000                                ; $6959: $01 $00 $00
    ld   h, c                                     ; $695C: $61
    nop                                           ; $695D: $00
    db   $EC                                      ; $695E: $EC
    nop                                           ; $695F: $00
    or   l                                        ; $6960: $B5
    nop                                           ; $6961: $00
    or   l                                        ; $6962: $B5
    nop                                           ; $6963: $00
    db   $EC                                      ; $6964: $EC
    nop                                           ; $6965: $00
    ld   h, c                                     ; $6966: $61

Call_002_6967:
    ld   a, $17                                   ; $6967: $3E $17

jr_002_6969:
    ld   [$C692], a                               ; $6969: $EA $92 $C6
    ld   hl, $C200                                ; $696C: $21 $00 $C2
    add  h                                        ; $696F: $84
    ld   h, a                                     ; $6970: $67
    ld   a, [hl]                                  ; $6971: $7E
    rrca                                          ; $6972: $0F
    jr   nc, jr_002_69BB                          ; $6973: $30 $46

    push hl                                       ; $6975: $E5
    ld   b, h                                     ; $6976: $44
    ld   c, $03                                   ; $6977: $0E $03
    ld   d, h                                     ; $6979: $54
    ld   e, $11                                   ; $697A: $1E $11
    ld   hl, $C362                                ; $697C: $21 $62 $C3
    ld   a, [bc]                                  ; $697F: $0A
    sub  [hl]                                     ; $6980: $96
    ld   [de], a                                  ; $6981: $12
    push af                                       ; $6982: $F5
    cp   $98                                      ; $6983: $FE $98
    jr   nc, jr_002_69B7                          ; $6985: $30 $30

    inc  l                                        ; $6987: $2C
    inc  c                                        ; $6988: $0C
    pop  af                                       ; $6989: $F1
    ld   a, [bc]                                  ; $698A: $0A
    sbc  [hl]                                     ; $698B: $9E
    jr   nz, jr_002_69B8                          ; $698C: $20 $2A

    inc  l                                        ; $698E: $2C
    inc  c                                        ; $698F: $0C
    inc  c                                        ; $6990: $0C
    inc  e                                        ; $6991: $1C
    ld   a, [bc]                                  ; $6992: $0A
    sub  [hl]                                     ; $6993: $96
    ld   [de], a                                  ; $6994: $12
    push af                                       ; $6995: $F5
    cp   $AC                                      ; $6996: $FE $AC
    jr   nc, jr_002_69B7                          ; $6998: $30 $1D

    inc  l                                        ; $699A: $2C
    inc  c                                        ; $699B: $0C
    pop  af                                       ; $699C: $F1
    ld   a, [bc]                                  ; $699D: $0A
    sbc  [hl]                                     ; $699E: $9E
    jr   nz, jr_002_69B8                          ; $699F: $20 $17

    ld   a, [$C460]                               ; $69A1: $FA $60 $C4
    rlca                                          ; $69A4: $07
    jr   nc, jr_002_69B2                          ; $69A5: $30 $0B

    ld   a, [de]                                  ; $69A7: $1A
    cp   $3F                                      ; $69A8: $FE $3F
    jr   nc, jr_002_69B2                          ; $69AA: $30 $06

    dec  e                                        ; $69AC: $1D
    ld   a, [de]                                  ; $69AD: $1A
    cp   $58                                      ; $69AE: $FE $58
    jr   c, jr_002_69B8                           ; $69B0: $38 $06

jr_002_69B2:
    pop  hl                                       ; $69B2: $E1
    res  3, [hl]                                  ; $69B3: $CB $9E
    jr   jr_002_69BB                              ; $69B5: $18 $04

jr_002_69B7:
    pop  af                                       ; $69B7: $F1

jr_002_69B8:
    pop  hl                                       ; $69B8: $E1
    set  3, [hl]                                  ; $69B9: $CB $DE

jr_002_69BB:
    ld   a, [$C692]                               ; $69BB: $FA $92 $C6
    dec  a                                        ; $69BE: $3D
    bit  7, a                                     ; $69BF: $CB $7F
    jr   z, jr_002_6969                           ; $69C1: $28 $A6

    ret                                           ; $69C3: $C9


RenderObjectSprites::
    ld   a, [$C26A]                               ; $69C4: $FA $6A $C2
    and  $04                                      ; $69C7: $E6 $04
    jr   nz, jr_002_69DB                          ; $69C9: $20 $10

jr_002_69CB:
    ld   [$C692], a                               ; $69CB: $EA $92 $C6
    call AdvanceAnimationAndRender                ; $69CE: $CD $1F $6A
    ld   a, [$C692]                               ; $69D1: $FA $92 $C6
    inc  a                                        ; $69D4: $3C
    cp   $18                                      ; $69D5: $FE $18
    jr   c, jr_002_69CB                           ; $69D7: $38 $F2

    jr   jr_002_6A0A                              ; $69D9: $18 $2F

jr_002_69DB:
    ld   a, [$DF01]                               ; $69DB: $FA $01 $DF
    rrca                                          ; $69DE: $0F
    jr   c, jr_002_69F5                           ; $69DF: $38 $14

    ld   a, $17                                   ; $69E1: $3E $17
    ld   [$C692], a                               ; $69E3: $EA $92 $C6

jr_002_69E6:
    call AdvanceAnimationAndRender                ; $69E6: $CD $1F $6A
    ld   a, [$C692]                               ; $69E9: $FA $92 $C6
    dec  a                                        ; $69EC: $3D
    ld   [$C692], a                               ; $69ED: $EA $92 $C6
    inc  a                                        ; $69F0: $3C
    jr   nz, jr_002_69E6                          ; $69F1: $20 $F3

    jr   jr_002_6A0A                              ; $69F3: $18 $15

jr_002_69F5:
    xor  a                                        ; $69F5: $AF
    ld   [$C692], a                               ; $69F6: $EA $92 $C6
    call AdvanceAnimationAndRender                ; $69F9: $CD $1F $6A
    ld   a, $17                                   ; $69FC: $3E $17

jr_002_69FE:
    ld   [$C692], a                               ; $69FE: $EA $92 $C6
    call AdvanceAnimationAndRender                ; $6A01: $CD $1F $6A
    ld   a, [$C692]                               ; $6A04: $FA $92 $C6
    dec  a                                        ; $6A07: $3D
    jr   nz, jr_002_69FE                          ; $6A08: $20 $F4

jr_002_6A0A:
    ld   a, [$C7CB]                               ; $6A0A: $FA $CB $C7
    cp   $A0                                      ; $6A0D: $FE $A0
    ret  nc                                       ; $6A0F: $D0

    ld   h, $C0                                   ; $6A10: $26 $C0
    ld   l, a                                     ; $6A12: $6F
    ld   b, $F0                                   ; $6A13: $06 $F0

jr_002_6A15:
    ld   [hl], b                                  ; $6A15: $70
    ld   a, l                                     ; $6A16: $7D
    add  $04                                      ; $6A17: $C6 $04
    ld   l, a                                     ; $6A19: $6F
    cp   $A0                                      ; $6A1A: $FE $A0
    jr   c, jr_002_6A15                           ; $6A1C: $38 $F7

    ret                                           ; $6A1E: $C9


AdvanceAnimationAndRender::
    ld   a, [$C692]                               ; $6A1F: $FA $92 $C6
    ld   l, $00                                   ; $6A22: $2E $00
    add  $C2                                      ; $6A24: $C6 $C2
    ld   h, a                                     ; $6A26: $67
    ld   a, [hl]                                  ; $6A27: $7E
    bit  0, a                                     ; $6A28: $CB $47
    ret  z                                        ; $6A2A: $C8

    bit  3, a                                     ; $6A2B: $CB $5F
    ret  nz                                       ; $6A2D: $C0

    bit  4, a                                     ; $6A2E: $CB $67
    ret  nz                                       ; $6A30: $C0

    and  $A0                                      ; $6A31: $E6 $A0
    ld   [$C7C8], a                               ; $6A33: $EA $C8 $C7
    ld   l, $13                                   ; $6A36: $2E $13
    ld   a, [hl]                                  ; $6A38: $7E
    ld   [$C7C4], a                               ; $6A39: $EA $C4 $C7
    ld   l, $0E                                   ; $6A3C: $2E $0E
    ld   a, [hl+]                                 ; $6A3E: $2A
    ld   c, l                                     ; $6A3F: $4D
    ld   b, h                                     ; $6A40: $44
    inc  [hl]                                     ; $6A41: $34
    ld   d, [hl]                                  ; $6A42: $56
    inc  l                                        ; $6A43: $2C
    ld   e, [hl]                                  ; $6A44: $5E
    ld   hl, AnimationPointerTable                ; $6A45: $21 $80 $4D
    call Add2AToHL                                ; $6A48: $CD $81 $00
    ld   a, [hl+]                                 ; $6A4B: $2A
    ld   h, [hl]                                  ; $6A4C: $66
    ld   l, a                                     ; $6A4D: $6F
    ld   a, [$C693]                               ; $6A4E: $FA $93 $C6
    or   a                                        ; $6A51: $B7
    jr   nz, jr_002_6A5A                          ; $6A52: $20 $06

    ld   a, [$C7C4]                               ; $6A54: $FA $C4 $C7
    rlca                                          ; $6A57: $07
    jr   nc, jr_002_6A63                          ; $6A58: $30 $09

jr_002_6A5A:
    ld   a, [$C692]                               ; $6A5A: $FA $92 $C6
    or   a                                        ; $6A5D: $B7
    jr   z, jr_002_6A63                           ; $6A5E: $28 $03

    inc  hl                                       ; $6A60: $23
    jr   jr_002_6A82                              ; $6A61: $18 $1F

jr_002_6A63:
    ld   a, d                                     ; $6A63: $7A
    cp   [hl]                                     ; $6A64: $BE
    inc  hl                                       ; $6A65: $23
    jr   c, jr_002_6A82                           ; $6A66: $38 $1A

    xor  a                                        ; $6A68: $AF
    ld   [bc], a                                  ; $6A69: $02
    ld   a, e                                     ; $6A6A: $7B
    inc  a                                        ; $6A6B: $3C
    cp   [hl]                                     ; $6A6C: $BE
    jr   c, jr_002_6A80                           ; $6A6D: $38 $11

    ld   a, [$C7C4]                               ; $6A6F: $FA $C4 $C7
    bit  6, a                                     ; $6A72: $CB $77
    jr   z, jr_002_6A7F                           ; $6A74: $28 $09

    push bc                                       ; $6A76: $C5
    ld   c, $13                                   ; $6A77: $0E $13
    set  7, a                                     ; $6A79: $CB $FF
    ld   [bc], a                                  ; $6A7B: $02
    pop  bc                                       ; $6A7C: $C1
    jr   jr_002_6A82                              ; $6A7D: $18 $03

jr_002_6A7F:
    xor  a                                        ; $6A7F: $AF

jr_002_6A80:
    inc  c                                        ; $6A80: $0C
    ld   [bc], a                                  ; $6A81: $02

jr_002_6A82:
    ld   a, [$C7CB]                               ; $6A82: $FA $CB $C7
    cp   $A0                                      ; $6A85: $FE $A0
    ret  nc                                       ; $6A87: $D0

    inc  hl                                       ; $6A88: $23
    ld   a, e                                     ; $6A89: $7B
    call AddAToHL                                 ; $6A8A: $CD $71 $00
    ld   a, [hl]                                  ; $6A8D: $7E
    ld   hl, FramePointerTable                    ; $6A8E: $21 $C0 $4E
    call Add2AToHL                                ; $6A91: $CD $81 $00
    ld   a, [hl+]                                 ; $6A94: $2A
    ld   c, a                                     ; $6A95: $4F
    ld   b, [hl]                                  ; $6A96: $46
    ld   a, [bc]                                  ; $6A97: $0A
    ld   [$C7C9], a                               ; $6A98: $EA $C9 $C7
    inc  bc                                       ; $6A9B: $03
    ld   a, [bc]                                  ; $6A9C: $0A
    inc  bc                                       ; $6A9D: $03
    ld   hl, SpriteLayoutPointerTable             ; $6A9E: $21 $C0 $50
    call Add2AToHL                                ; $6AA1: $CD $81 $00
    ld   a, [hl+]                                 ; $6AA4: $2A
    ld   e, a                                     ; $6AA5: $5F
    ld   d, [hl]                                  ; $6AA6: $56
    ld   a, [$C692]                               ; $6AA7: $FA $92 $C6
    ld   hl, $C211                                ; $6AAA: $21 $11 $C2
    add  h                                        ; $6AAD: $84
    ld   h, a                                     ; $6AAE: $67
    ld   a, [hl+]                                 ; $6AAF: $2A
    inc  a                                        ; $6AB0: $3C
    inc  a                                        ; $6AB1: $3C
    ld   [$C7C7], a                               ; $6AB2: $EA $C7 $C7
    ld   a, [hl]                                  ; $6AB5: $7E
    ld   [$C7C6], a                               ; $6AB6: $EA $C6 $C7
    ld   h, $C0                                   ; $6AB9: $26 $C0
    ld   a, [$C7CB]                               ; $6ABB: $FA $CB $C7
    ld   l, a                                     ; $6ABE: $6F
    ld   a, [$C360]                               ; $6ABF: $FA $60 $C3
    add  $0C                                      ; $6AC2: $C6 $0C
    ld   [$C7C5], a                               ; $6AC4: $EA $C5 $C7

jr_002_6AC7:
    push hl                                       ; $6AC7: $E5
    ld   l, e                                     ; $6AC8: $6B
    ld   h, d                                     ; $6AC9: $62
    pop  de                                       ; $6ACA: $D1
    ld   a, [$C7C7]                               ; $6ACB: $FA $C7 $C7
    add  [hl]                                     ; $6ACE: $86
    inc  hl                                       ; $6ACF: $23
    push bc                                       ; $6AD0: $C5
    ld   c, a                                     ; $6AD1: $4F
    ld   a, [$C7C5]                               ; $6AD2: $FA $C5 $C7
    cp   c                                        ; $6AD5: $B9
    ld   a, c                                     ; $6AD6: $79
    pop  bc                                       ; $6AD7: $C1
    jr   c, jr_002_6B0C                           ; $6AD8: $38 $32

    ld   [de], a                                  ; $6ADA: $12
    inc  e                                        ; $6ADB: $1C
    ld   a, [$C7C8]                               ; $6ADC: $FA $C8 $C7
    bit  5, a                                     ; $6ADF: $CB $6F
    jr   z, jr_002_6AEA                           ; $6AE1: $28 $07

    ld   a, [hl+]                                 ; $6AE3: $2A
    xor  $FF                                      ; $6AE4: $EE $FF
    add  $F9                                      ; $6AE6: $C6 $F9
    jr   jr_002_6AEB                              ; $6AE8: $18 $01

jr_002_6AEA:
    ld   a, [hl+]                                 ; $6AEA: $2A

jr_002_6AEB:
    push hl                                       ; $6AEB: $E5
    ld   l, e                                     ; $6AEC: $6B
    ld   h, d                                     ; $6AED: $62
    ld   d, a                                     ; $6AEE: $57
    ld   a, [$C7C6]                               ; $6AEF: $FA $C6 $C7
    add  d                                        ; $6AF2: $82
    pop  de                                       ; $6AF3: $D1
    cp   $A8                                      ; $6AF4: $FE $A8
    jr   nc, jr_002_6B11                          ; $6AF6: $30 $19

    ld   [hl+], a                                 ; $6AF8: $22
    push hl                                       ; $6AF9: $E5
    ld   l, c                                     ; $6AFA: $69
    ld   h, b                                     ; $6AFB: $60
    pop  bc                                       ; $6AFC: $C1
    ld   a, [hl+]                                 ; $6AFD: $2A
    ld   [bc], a                                  ; $6AFE: $02
    inc  c                                        ; $6AFF: $0C
    ld   a, [$C7C8]                               ; $6B00: $FA $C8 $C7
    xor  [hl]                                     ; $6B03: $AE
    inc  hl                                       ; $6B04: $23
    push hl                                       ; $6B05: $E5
    ld   l, c                                     ; $6B06: $69
    ld   h, b                                     ; $6B07: $60
    pop  bc                                       ; $6B08: $C1
    ld   [hl+], a                                 ; $6B09: $22
    jr   jr_002_6B19                              ; $6B0A: $18 $0D

jr_002_6B0C:
    push de                                       ; $6B0C: $D5
    ld   e, l                                     ; $6B0D: $5D
    ld   d, h                                     ; $6B0E: $54
    pop  hl                                       ; $6B0F: $E1
    inc  de                                       ; $6B10: $13

jr_002_6B11:
    inc  bc                                       ; $6B11: $03
    inc  bc                                       ; $6B12: $03
    ld   a, l                                     ; $6B13: $7D
    and  $FC                                      ; $6B14: $E6 $FC
    ld   l, a                                     ; $6B16: $6F
    xor  a                                        ; $6B17: $AF
    ld   [hl], a                                  ; $6B18: $77

jr_002_6B19:
    ld   a, l                                     ; $6B19: $7D
    ld   [$C7CB], a                               ; $6B1A: $EA $CB $C7
    cp   $A0                                      ; $6B1D: $FE $A0
    ret  nc                                       ; $6B1F: $D0

    ld   a, [$C7C9]                               ; $6B20: $FA $C9 $C7
    dec  a                                        ; $6B23: $3D
    ld   [$C7C9], a                               ; $6B24: $EA $C9 $C7
    inc  a                                        ; $6B27: $3C
    jr   nz, jr_002_6AC7                          ; $6B28: $20 $9D

    ret                                           ; $6B2A: $C9


    dec  bc                                       ; $6B2B: $0B
    ld   l, h                                     ; $6B2C: $6C
    dec  de                                       ; $6B2D: $1B
    ld   l, h                                     ; $6B2E: $6C
    dec  hl                                       ; $6B2F: $2B
    ld   l, h                                     ; $6B30: $6C
    dec  sp                                       ; $6B31: $3B
    ld   l, h                                     ; $6B32: $6C
    ld   c, e                                     ; $6B33: $4B
    ld   l, h                                     ; $6B34: $6C
    ld   e, e                                     ; $6B35: $5B
    ld   l, h                                     ; $6B36: $6C
    ld   l, e                                     ; $6B37: $6B
    ld   l, h                                     ; $6B38: $6C
    db   $DB                                      ; $6B39: $DB
    ld   l, h                                     ; $6B3A: $6C
    ld   a, e                                     ; $6B3B: $7B
    ld   l, h                                     ; $6B3C: $6C
    db   $EB                                      ; $6B3D: $EB
    ld   l, h                                     ; $6B3E: $6C
    adc  e                                        ; $6B3F: $8B
    ld   l, h                                     ; $6B40: $6C
    ei                                            ; $6B41: $FB
    ld   l, h                                     ; $6B42: $6C
    sbc  e                                        ; $6B43: $9B
    ld   l, h                                     ; $6B44: $6C
    xor  e                                        ; $6B45: $AB
    ld   l, h                                     ; $6B46: $6C
    dec  bc                                       ; $6B47: $0B
    ld   l, l                                     ; $6B48: $6D
    cp   e                                        ; $6B49: $BB
    ld   l, h                                     ; $6B4A: $6C
    dec  de                                       ; $6B4B: $1B
    ld   l, l                                     ; $6B4C: $6D
    bit  5, h                                     ; $6B4D: $CB $6C
    dec  hl                                       ; $6B4F: $2B
    ld   l, l                                     ; $6B50: $6D
    bit  5, h                                     ; $6B51: $CB $6C
    dec  hl                                       ; $6B53: $2B
    ld   l, l                                     ; $6B54: $6D
    bit  5, h                                     ; $6B55: $CB $6C
    dec  hl                                       ; $6B57: $2B
    ld   l, l                                     ; $6B58: $6D
    bit  5, h                                     ; $6B59: $CB $6C
    dec  hl                                       ; $6B5B: $2B
    ld   l, l                                     ; $6B5C: $6D
    dec  sp                                       ; $6B5D: $3B
    ld   l, l                                     ; $6B5E: $6D
    ld   c, e                                     ; $6B5F: $4B
    ld   l, l                                     ; $6B60: $6D
    ld   e, e                                     ; $6B61: $5B
    ld   l, l                                     ; $6B62: $6D
    ld   l, e                                     ; $6B63: $6B
    ld   l, l                                     ; $6B64: $6D
    ld   a, e                                     ; $6B65: $7B
    ld   l, l                                     ; $6B66: $6D
    adc  e                                        ; $6B67: $8B
    ld   l, l                                     ; $6B68: $6D
    sbc  e                                        ; $6B69: $9B
    ld   l, l                                     ; $6B6A: $6D
    sbc  e                                        ; $6B6B: $9B
    ld   l, l                                     ; $6B6C: $6D
    xor  e                                        ; $6B6D: $AB
    ld   l, l                                     ; $6B6E: $6D
    cp   e                                        ; $6B6F: $BB
    ld   l, l                                     ; $6B70: $6D
    bit  5, l                                     ; $6B71: $CB $6D
    db   $DB                                      ; $6B73: $DB
    ld   l, l                                     ; $6B74: $6D
    db   $EB                                      ; $6B75: $EB
    ld   l, l                                     ; $6B76: $6D
    ei                                            ; $6B77: $FB
    ld   l, l                                     ; $6B78: $6D
    dec  bc                                       ; $6B79: $0B
    ld   l, [hl]                                  ; $6B7A: $6E
    ld   e, e                                     ; $6B7B: $5B
    ld   l, h                                     ; $6B7C: $6C
    ld   l, e                                     ; $6B7D: $6B
    ld   l, h                                     ; $6B7E: $6C
    db   $DB                                      ; $6B7F: $DB
    ld   l, h                                     ; $6B80: $6C
    dec  de                                       ; $6B81: $1B
    ld   l, [hl]                                  ; $6B82: $6E
    dec  de                                       ; $6B83: $1B
    ld   l, [hl]                                  ; $6B84: $6E
    dec  de                                       ; $6B85: $1B
    ld   l, [hl]                                  ; $6B86: $6E
    dec  de                                       ; $6B87: $1B
    ld   l, [hl]                                  ; $6B88: $6E
    dec  de                                       ; $6B89: $1B
    ld   l, [hl]                                  ; $6B8A: $6E
    dec  de                                       ; $6B8B: $1B
    ld   l, [hl]                                  ; $6B8C: $6E
    dec  de                                       ; $6B8D: $1B
    ld   l, [hl]                                  ; $6B8E: $6E
    dec  de                                       ; $6B8F: $1B
    ld   l, [hl]                                  ; $6B90: $6E
    dec  de                                       ; $6B91: $1B
    ld   l, [hl]                                  ; $6B92: $6E
    dec  de                                       ; $6B93: $1B
    ld   l, [hl]                                  ; $6B94: $6E
    dec  de                                       ; $6B95: $1B
    ld   l, [hl]                                  ; $6B96: $6E
    dec  de                                       ; $6B97: $1B
    ld   l, [hl]                                  ; $6B98: $6E
    dec  de                                       ; $6B99: $1B
    ld   l, [hl]                                  ; $6B9A: $6E
    dec  de                                       ; $6B9B: $1B
    ld   l, [hl]                                  ; $6B9C: $6E
    dec  de                                       ; $6B9D: $1B
    ld   l, [hl]                                  ; $6B9E: $6E
    dec  de                                       ; $6B9F: $1B
    ld   l, [hl]                                  ; $6BA0: $6E
    dec  de                                       ; $6BA1: $1B
    ld   l, [hl]                                  ; $6BA2: $6E
    dec  de                                       ; $6BA3: $1B
    ld   l, [hl]                                  ; $6BA4: $6E
    dec  de                                       ; $6BA5: $1B
    ld   l, [hl]                                  ; $6BA6: $6E
    dec  de                                       ; $6BA7: $1B
    ld   l, [hl]                                  ; $6BA8: $6E
    dec  de                                       ; $6BA9: $1B
    ld   l, [hl]                                  ; $6BAA: $6E
    dec  hl                                       ; $6BAB: $2B
    ld   l, [hl]                                  ; $6BAC: $6E
    dec  sp                                       ; $6BAD: $3B
    ld   l, [hl]                                  ; $6BAE: $6E
    ld   c, e                                     ; $6BAF: $4B
    ld   l, [hl]                                  ; $6BB0: $6E
    ld   e, e                                     ; $6BB1: $5B
    ld   l, [hl]                                  ; $6BB2: $6E
    ld   l, e                                     ; $6BB3: $6B
    ld   l, [hl]                                  ; $6BB4: $6E
    ld   a, e                                     ; $6BB5: $7B
    ld   l, [hl]                                  ; $6BB6: $6E
    adc  e                                        ; $6BB7: $8B
    ld   l, [hl]                                  ; $6BB8: $6E
    sbc  e                                        ; $6BB9: $9B
    ld   l, [hl]                                  ; $6BBA: $6E
    xor  e                                        ; $6BBB: $AB
    ld   l, [hl]                                  ; $6BBC: $6E
    cp   e                                        ; $6BBD: $BB
    ld   l, [hl]                                  ; $6BBE: $6E
    bit  5, [hl]                                  ; $6BBF: $CB $6E
    db   $DB                                      ; $6BC1: $DB
    ld   l, [hl]                                  ; $6BC2: $6E
    db   $EB                                      ; $6BC3: $EB
    ld   l, [hl]                                  ; $6BC4: $6E
    ei                                            ; $6BC5: $FB
    ld   l, [hl]                                  ; $6BC6: $6E
    dec  bc                                       ; $6BC7: $0B
    ld   l, a                                     ; $6BC8: $6F
    dec  de                                       ; $6BC9: $1B
    ld   l, a                                     ; $6BCA: $6F
    dec  hl                                       ; $6BCB: $2B
    ld   l, a                                     ; $6BCC: $6F
    dec  sp                                       ; $6BCD: $3B
    ld   l, a                                     ; $6BCE: $6F
    ld   c, e                                     ; $6BCF: $4B
    ld   l, a                                     ; $6BD0: $6F
    ld   e, e                                     ; $6BD1: $5B
    ld   l, a                                     ; $6BD2: $6F
    ld   l, e                                     ; $6BD3: $6B
    ld   l, a                                     ; $6BD4: $6F
    ld   a, e                                     ; $6BD5: $7B
    ld   l, a                                     ; $6BD6: $6F
    adc  e                                        ; $6BD7: $8B
    ld   l, a                                     ; $6BD8: $6F
    sbc  e                                        ; $6BD9: $9B
    ld   l, a                                     ; $6BDA: $6F
    xor  e                                        ; $6BDB: $AB
    ld   l, a                                     ; $6BDC: $6F
    cp   e                                        ; $6BDD: $BB
    ld   l, a                                     ; $6BDE: $6F
    bit  5, a                                     ; $6BDF: $CB $6F
    db   $DB                                      ; $6BE1: $DB
    ld   l, a                                     ; $6BE2: $6F
    db   $EB                                      ; $6BE3: $EB
    ld   l, a                                     ; $6BE4: $6F
    ei                                            ; $6BE5: $FB
    ld   l, a                                     ; $6BE6: $6F
    dec  bc                                       ; $6BE7: $0B
    ld   [hl], b                                  ; $6BE8: $70
    dec  de                                       ; $6BE9: $1B
    ld   [hl], b                                  ; $6BEA: $70
    dec  hl                                       ; $6BEB: $2B
    ld   [hl], b                                  ; $6BEC: $70
    dec  sp                                       ; $6BED: $3B
    ld   [hl], b                                  ; $6BEE: $70
    ld   c, e                                     ; $6BEF: $4B
    ld   [hl], b                                  ; $6BF0: $70
    ld   e, e                                     ; $6BF1: $5B
    ld   [hl], b                                  ; $6BF2: $70
    ld   l, e                                     ; $6BF3: $6B
    ld   [hl], b                                  ; $6BF4: $70
    ld   a, e                                     ; $6BF5: $7B
    ld   [hl], b                                  ; $6BF6: $70
    adc  e                                        ; $6BF7: $8B
    ld   [hl], b                                  ; $6BF8: $70
    sbc  e                                        ; $6BF9: $9B
    ld   [hl], b                                  ; $6BFA: $70
    xor  e                                        ; $6BFB: $AB
    ld   [hl], b                                  ; $6BFC: $70
    cp   e                                        ; $6BFD: $BB
    ld   [hl], b                                  ; $6BFE: $70
    bit  6, b                                     ; $6BFF: $CB $70
    db   $DB                                      ; $6C01: $DB
    ld   [hl], b                                  ; $6C02: $70
    db   $EB                                      ; $6C03: $EB
    ld   [hl], b                                  ; $6C04: $70
    ei                                            ; $6C05: $FB
    ld   [hl], b                                  ; $6C06: $70
    ei                                            ; $6C07: $FB
    ld   [hl], b                                  ; $6C08: $70
    ei                                            ; $6C09: $FB
    ld   [hl], b                                  ; $6C0A: $70
    nop                                           ; $6C0B: $00
    ld   [$6B5D], sp                              ; $6C0C: $08 $5D $6B
    rrca                                          ; $6C0F: $0F
    rra                                           ; $6C10: $1F
    ld   l, [hl]                                  ; $6C11: $6E
    rla                                           ; $6C12: $17
    rrca                                          ; $6C13: $0F
    ld   l, $07                                   ; $6C14: $2E $07
    ld   bc, $0100                                ; $6C16: $01 $00 $01
    ld   d, b                                     ; $6C19: $50
    ld   e, b                                     ; $6C1A: $58

jr_002_6C1B:
    ld   bc, $5D38                                ; $6C1B: $01 $38 $5D
    ld   l, e                                     ; $6C1E: $6B
    ccf                                           ; $6C1F: $3F
    rra                                           ; $6C20: $1F
    ld   l, [hl]                                  ; $6C21: $6E
    rlca                                          ; $6C22: $07
    rrca                                          ; $6C23: $0F
    ld   l, $02                                   ; $6C24: $2E $02
    ld   b, $00                                   ; $6C26: $06 $00
    ld   b, $50                                   ; $6C28: $06 $50
    ld   e, b                                     ; $6C2A: $58
    ld   [bc], a                                  ; $6C2B: $02
    jr   c, jr_002_6C8B                           ; $6C2C: $38 $5D

    ld   l, e                                     ; $6C2E: $6B
    ccf                                           ; $6C2F: $3F
    rra                                           ; $6C30: $1F
    ld   l, [hl]                                  ; $6C31: $6E
    rlca                                          ; $6C32: $07
    rrca                                          ; $6C33: $0F
    ld   l, $07                                   ; $6C34: $2E $07
    ld   bc, $0100                                ; $6C36: $01 $00 $01
    ld   d, b                                     ; $6C39: $50
    ld   e, b                                     ; $6C3A: $58
    inc  bc                                       ; $6C3B: $03
    jr   c, jr_002_6CBB                           ; $6C3C: $38 $7D

    db   $EB                                      ; $6C3E: $EB
    ccf                                           ; $6C3F: $3F
    ccf                                           ; $6C40: $3F
    xor  $07                                      ; $6C41: $EE $07
    cpl                                           ; $6C43: $2F
    xor  [hl]                                     ; $6C44: $AE
    ld   [bc], a                                  ; $6C45: $02
    rlca                                          ; $6C46: $07
    nop                                           ; $6C47: $00
    nop                                           ; $6C48: $00
    ld   d, b                                     ; $6C49: $50
    ld   e, b                                     ; $6C4A: $58
    inc  b                                        ; $6C4B: $04
    jr   z, jr_002_6C1B                           ; $6C4C: $28 $CD

    dec  sp                                       ; $6C4E: $3B
    cpl                                           ; $6C4F: $2F
    adc  a                                        ; $6C50: $8F
    ld   a, $2F                                   ; $6C51: $3E $2F
    cp   a                                        ; $6C53: $BF
    cp   $06                                      ; $6C54: $FE $06
    ld   [bc], a                                  ; $6C56: $02
    nop                                           ; $6C57: $00
    nop                                           ; $6C58: $00
    ld   d, b                                     ; $6C59: $50
    ld   e, b                                     ; $6C5A: $58
    dec  b                                        ; $6C5B: $05
    jr   c, jr_002_6CBB                           ; $6C5C: $38 $5D

    ld   l, e                                     ; $6C5E: $6B
    ccf                                           ; $6C5F: $3F
    rra                                           ; $6C60: $1F
    ld   l, [hl]                                  ; $6C61: $6E
    rlca                                          ; $6C62: $07
    rrca                                          ; $6C63: $0F
    ld   l, $FF                                   ; $6C64: $2E $FF
    rlca                                          ; $6C66: $07
    add  b                                        ; $6C67: $80
    rlca                                          ; $6C68: $07
    ld   d, b                                     ; $6C69: $50
    ld   e, b                                     ; $6C6A: $58
    nop                                           ; $6C6B: $00
    db   $10                                      ; $6C6C: $10
    ld   e, l                                     ; $6C6D: $5D
    ld   l, e                                     ; $6C6E: $6B
    rla                                           ; $6C6F: $17
    rra                                           ; $6C70: $1F
    ld   l, [hl]                                  ; $6C71: $6E
    rra                                           ; $6C72: $1F
    rrca                                          ; $6C73: $0F
    ld   l, $03                                   ; $6C74: $2E $03
    nop                                           ; $6C76: $00
    nop                                           ; $6C77: $00
    nop                                           ; $6C78: $00
    ld   d, b                                     ; $6C79: $50
    ld   e, b                                     ; $6C7A: $58
    ld   bc, $5D13                                ; $6C7B: $01 $13 $5D
    ld   l, e                                     ; $6C7E: $6B
    ld   [de], a                                  ; $6C7F: $12
    rra                                           ; $6C80: $1F
    ld   l, [hl]                                  ; $6C81: $6E
    ld   a, [de]                                  ; $6C82: $1A
    rrca                                          ; $6C83: $0F
    ld   l, $01                                   ; $6C84: $2E $01
    ld   [bc], a                                  ; $6C86: $02
    nop                                           ; $6C87: $00
    ld   [bc], a                                  ; $6C88: $02
    ld   d, b                                     ; $6C89: $50
    ld   e, b                                     ; $6C8A: $58

jr_002_6C8B:
    nop                                           ; $6C8B: $00
    jr   nz, jr_002_6CEB                          ; $6C8C: $20 $5D

    ld   l, e                                     ; $6C8E: $6B
    daa                                           ; $6C8F: $27
    rra                                           ; $6C90: $1F
    ld   l, [hl]                                  ; $6C91: $6E
    cpl                                           ; $6C92: $2F
    rrca                                          ; $6C93: $0F
    ld   l, $03                                   ; $6C94: $2E $03
    nop                                           ; $6C96: $00
    nop                                           ; $6C97: $00
    nop                                           ; $6C98: $00
    ld   d, b                                     ; $6C99: $50
    ld   e, b                                     ; $6C9A: $58
    ld   [bc], a                                  ; $6C9B: $02
    nop                                           ; $6C9C: $00
    ld   b, l                                     ; $6C9D: $45
    dec  bc                                       ; $6C9E: $0B
    rlca                                          ; $6C9F: $07
    rlca                                          ; $6CA0: $07
    ld   c, $07                                   ; $6CA1: $0E $07
    scf                                           ; $6CA3: $37
    adc  $01                                      ; $6CA4: $CE $01
    ld   [bc], a                                  ; $6CA6: $02
    nop                                           ; $6CA7: $00
    nop                                           ; $6CA8: $00
    ld   d, b                                     ; $6CA9: $50
    ld   e, b                                     ; $6CAA: $58
    nop                                           ; $6CAB: $00
    jr   jr_002_6D0B                              ; $6CAC: $18 $5D

    ld   l, e                                     ; $6CAE: $6B
    rra                                           ; $6CAF: $1F
    rra                                           ; $6CB0: $1F
    ld   l, [hl]                                  ; $6CB1: $6E
    daa                                           ; $6CB2: $27
    rrca                                          ; $6CB3: $0F
    ld   l, $04                                   ; $6CB4: $2E $04
    nop                                           ; $6CB6: $00
    nop                                           ; $6CB7: $00
    nop                                           ; $6CB8: $00
    ld   d, b                                     ; $6CB9: $50
    ld   e, b                                     ; $6CBA: $58

jr_002_6CBB:
    inc  bc                                       ; $6CBB: $03
    inc  hl                                       ; $6CBC: $23
    ld   e, l                                     ; $6CBD: $5D
    ld   l, e                                     ; $6CBE: $6B
    ld   [hl+], a                                 ; $6CBF: $22
    rra                                           ; $6CC0: $1F
    ld   l, [hl]                                  ; $6CC1: $6E
    ld   a, [hl+]                                 ; $6CC2: $2A
    rrca                                          ; $6CC3: $0F
    ld   l, $04                                   ; $6CC4: $2E $04
    ld   bc, $0100                                ; $6CC6: $01 $00 $01
    ld   d, b                                     ; $6CC9: $50
    ld   e, b                                     ; $6CCA: $58
    inc  bc                                       ; $6CCB: $03
    inc  bc                                       ; $6CCC: $03
    push bc                                       ; $6CCD: $C5
    dec  de                                       ; $6CCE: $1B
    ld   [bc], a                                  ; $6CCF: $02
    add  a                                        ; $6CD0: $87
    ld   e, $02                                   ; $6CD1: $1E $02
    or   a                                        ; $6CD3: $B7
    sbc  $01                                      ; $6CD4: $DE $01
    ld   [bc], a                                  ; $6CD6: $02
    nop                                           ; $6CD7: $00
    nop                                           ; $6CD8: $00
    ld   d, b                                     ; $6CD9: $50
    ld   e, b                                     ; $6CDA: $58
    nop                                           ; $6CDB: $00
    inc  d                                        ; $6CDC: $14
    ld   e, b                                     ; $6CDD: $58
    ld   h, c                                     ; $6CDE: $61
    inc  de                                       ; $6CDF: $13
    ld   a, [de]                                  ; $6CE0: $1A
    ld   h, h                                     ; $6CE1: $64
    dec  de                                       ; $6CE2: $1B
    ld   a, [bc]                                  ; $6CE3: $0A
    inc  h                                        ; $6CE4: $24
    inc  bc                                       ; $6CE5: $03
    nop                                           ; $6CE6: $00
    inc  bc                                       ; $6CE7: $03
    nop                                           ; $6CE8: $00
    ld   d, b                                     ; $6CE9: $50
    ld   e, b                                     ; $6CEA: $58

jr_002_6CEB:
    ld   bc, $C815                                ; $6CEB: $01 $15 $C8
    ld   sp, $8A14                                ; $6CEE: $31 $14 $8A
    inc  [hl]                                     ; $6CF1: $34
    inc  d                                        ; $6CF2: $14
    cp   d                                        ; $6CF3: $BA
    db   $F4                                      ; $6CF4: $F4
    ld   bc, $0102                                ; $6CF5: $01 $02 $01
    ld   [bc], a                                  ; $6CF8: $02
    ld   d, b                                     ; $6CF9: $50
    ld   e, b                                     ; $6CFA: $58
    nop                                           ; $6CFB: $00
    inc  h                                        ; $6CFC: $24
    ld   e, b                                     ; $6CFD: $58
    ld   h, c                                     ; $6CFE: $61
    inc  hl                                       ; $6CFF: $23
    ld   a, [de]                                  ; $6D00: $1A
    ld   h, h                                     ; $6D01: $64
    dec  hl                                       ; $6D02: $2B
    ld   a, [bc]                                  ; $6D03: $0A
    inc  h                                        ; $6D04: $24
    inc  bc                                       ; $6D05: $03
    nop                                           ; $6D06: $00
    inc  bc                                       ; $6D07: $03
    nop                                           ; $6D08: $00
    ld   d, b                                     ; $6D09: $50
    ld   e, b                                     ; $6D0A: $58

jr_002_6D0B:
    nop                                           ; $6D0B: $00
    dec  e                                        ; $6D0C: $1D
    ld   e, b                                     ; $6D0D: $58
    ld   h, c                                     ; $6D0E: $61
    inc  e                                        ; $6D0F: $1C
    ld   a, [de]                                  ; $6D10: $1A
    ld   h, h                                     ; $6D11: $64
    inc  h                                        ; $6D12: $24
    ld   a, [bc]                                  ; $6D13: $0A
    inc  h                                        ; $6D14: $24
    inc  b                                        ; $6D15: $04
    nop                                           ; $6D16: $00
    inc  b                                        ; $6D17: $04
    nop                                           ; $6D18: $00
    ld   d, b                                     ; $6D19: $50
    ld   e, b                                     ; $6D1A: $58
    inc  bc                                       ; $6D1B: $03
    jr   nz, jr_002_6D76                          ; $6D1C: $20 $58

    ld   h, c                                     ; $6D1E: $61
    daa                                           ; $6D1F: $27
    ld   a, [de]                                  ; $6D20: $1A
    ld   h, h                                     ; $6D21: $64
    cpl                                           ; $6D22: $2F
    ld   a, [bc]                                  ; $6D23: $0A
    inc  h                                        ; $6D24: $24
    inc  b                                        ; $6D25: $04
    ld   bc, HeaderLogo                           ; $6D26: $01 $04 $01
    ld   d, b                                     ; $6D29: $50
    ld   e, b                                     ; $6D2A: $58
    inc  bc                                       ; $6D2B: $03
    dec  b                                        ; $6D2C: $05
    ld   c, b                                     ; $6D2D: $48
    ld   hl, $0A04                                ; $6D2E: $21 $04 $0A
    inc  h                                        ; $6D31: $24
    inc  b                                        ; $6D32: $04
    ld   a, [hl-]                                 ; $6D33: $3A
    db   $E4                                      ; $6D34: $E4
    ld   bc, $0102                                ; $6D35: $01 $02 $01
    nop                                           ; $6D38: $00
    ld   d, b                                     ; $6D39: $50
    ld   e, b                                     ; $6D3A: $58
    nop                                           ; $6D3B: $00
    dec  d                                        ; $6D3C: $15
    db   $FD                                      ; $6D3D: $FD
    ei                                            ; $6D3E: $FB
    inc  d                                        ; $6D3F: $14
    cp   a                                        ; $6D40: $BF
    cp   $1C                                      ; $6D41: $FE $1C
    xor  a                                        ; $6D43: $AF
    cp   [hl]                                     ; $6D44: $BE
    nop                                           ; $6D45: $00
    nop                                           ; $6D46: $00
    nop                                           ; $6D47: $00
    nop                                           ; $6D48: $00
    ld   d, b                                     ; $6D49: $50
    ld   e, b                                     ; $6D4A: $58
    nop                                           ; $6D4B: $00
    ld   e, $5D                                   ; $6D4C: $1E $5D
    ld   l, e                                     ; $6D4E: $6B
    dec  e                                        ; $6D4F: $1D
    rra                                           ; $6D50: $1F
    ld   l, [hl]                                  ; $6D51: $6E
    dec  h                                        ; $6D52: $25
    rrca                                          ; $6D53: $0F
    ld   l, $00                                   ; $6D54: $2E $00
    nop                                           ; $6D56: $00
    nop                                           ; $6D57: $00
    nop                                           ; $6D58: $00
    ld   d, b                                     ; $6D59: $50
    ld   e, b                                     ; $6D5A: $58
    nop                                           ; $6D5B: $00
    rra                                           ; $6D5C: $1F
    ld   e, $6C                                   ; $6D5D: $1E $6C
    ld   e, $5F                                   ; $6D5F: $1E $5F
    ld   l, a                                     ; $6D61: $6F
    ld   h, $4F                                   ; $6D62: $26 $4F
    cpl                                           ; $6D64: $2F
    nop                                           ; $6D65: $00
    nop                                           ; $6D66: $00
    nop                                           ; $6D67: $00
    nop                                           ; $6D68: $00
    ld   d, b                                     ; $6D69: $50
    ld   e, b                                     ; $6D6A: $58
    nop                                           ; $6D6B: $00
    inc  h                                        ; $6D6C: $24
    ld   e, l                                     ; $6D6D: $5D
    ld   l, e                                     ; $6D6E: $6B
    inc  hl                                       ; $6D6F: $23
    rra                                           ; $6D70: $1F
    ld   l, [hl]                                  ; $6D71: $6E
    dec  hl                                       ; $6D72: $2B
    rrca                                          ; $6D73: $0F
    ld   l, $00                                   ; $6D74: $2E $00

jr_002_6D76:
    nop                                           ; $6D76: $00
    nop                                           ; $6D77: $00
    nop                                           ; $6D78: $00
    ld   d, b                                     ; $6D79: $50
    ld   e, b                                     ; $6D7A: $58
    nop                                           ; $6D7B: $00
    ld   h, $5D                                   ; $6D7C: $26 $5D
    ld   l, e                                     ; $6D7E: $6B
    dec  h                                        ; $6D7F: $25
    rra                                           ; $6D80: $1F
    ld   l, [hl]                                  ; $6D81: $6E

jr_002_6D82:
    dec  l                                        ; $6D82: $2D
    rrca                                          ; $6D83: $0F
    ld   l, $00                                   ; $6D84: $2E $00
    nop                                           ; $6D86: $00
    nop                                           ; $6D87: $00
    nop                                           ; $6D88: $00
    ld   d, b                                     ; $6D89: $50
    ld   e, b                                     ; $6D8A: $58
    nop                                           ; $6D8B: $00
    dec  h                                        ; $6D8C: $25
    ld   e, l                                     ; $6D8D: $5D
    ld   l, e                                     ; $6D8E: $6B
    inc  h                                        ; $6D8F: $24
    rra                                           ; $6D90: $1F
    ld   l, [hl]                                  ; $6D91: $6E
    inc  l                                        ; $6D92: $2C
    rrca                                          ; $6D93: $0F
    ld   l, $00                                   ; $6D94: $2E $00
    nop                                           ; $6D96: $00
    nop                                           ; $6D97: $00
    nop                                           ; $6D98: $00
    ld   d, b                                     ; $6D99: $50
    ld   e, b                                     ; $6D9A: $58
    ld   bc, $5D05                                ; $6D9B: $01 $05 $5D
    ld   l, e                                     ; $6D9E: $6B
    inc  b                                        ; $6D9F: $04
    rra                                           ; $6DA0: $1F
    ld   l, [hl]                                  ; $6DA1: $6E
    inc  c                                        ; $6DA2: $0C
    rrca                                          ; $6DA3: $0F
    ld   l, $00                                   ; $6DA4: $2E $00
    nop                                           ; $6DA6: $00
    nop                                           ; $6DA7: $00
    nop                                           ; $6DA8: $00
    ld   d, b                                     ; $6DA9: $50
    ld   e, b                                     ; $6DAA: $58
    ld   bc, $CD0D                                ; $6DAB: $01 $0D $CD
    dec  sp                                       ; $6DAE: $3B
    inc  c                                        ; $6DAF: $0C
    adc  a                                        ; $6DB0: $8F
    ld   a, $0C                                   ; $6DB1: $3E $0C
    cp   a                                        ; $6DB3: $BF
    cp   $00                                      ; $6DB4: $FE $00
    nop                                           ; $6DB6: $00
    nop                                           ; $6DB7: $00
    nop                                           ; $6DB8: $00
    ld   d, b                                     ; $6DB9: $50
    ld   e, b                                     ; $6DBA: $58
    nop                                           ; $6DBB: $00
    ld   [$5BD5], sp                              ; $6DBC: $08 $D5 $5B
    rrca                                          ; $6DBF: $0F
    sub  a                                        ; $6DC0: $97
    ld   e, [hl]                                  ; $6DC1: $5E
    rla                                           ; $6DC2: $17
    add  a                                        ; $6DC3: $87
    ld   e, $07                                   ; $6DC4: $1E $07
    ld   bc, $0100                                ; $6DC6: $01 $00 $01
    ld   d, b                                     ; $6DC9: $50
    ld   e, b                                     ; $6DCA: $58
    nop                                           ; $6DCB: $00
    inc  bc                                       ; $6DCC: $03
    call nc, $0259                                ; $6DCD: $D4 $59 $02
    sub  [hl]                                     ; $6DD0: $96
    ld   e, h                                     ; $6DD1: $5C
    ld   a, [bc]                                  ; $6DD2: $0A
    add  [hl]                                     ; $6DD3: $86
    inc  e                                        ; $6DD4: $1C
    rlca                                          ; $6DD5: $07
    ld   bc, $0002                                ; $6DD6: $01 $02 $00
    ld   d, b                                     ; $6DD9: $50
    ld   e, b                                     ; $6DDA: $58
    ld   bc, $8721                                ; $6DDB: $01 $21 $87
    ld   e, $21                                   ; $6DDE: $1E $21
    ret  nz                                       ; $6DE0: $C0

    ld   de, $7821                                ; $6DE1: $11 $21 $78
    pop  hl                                       ; $6DE4: $E1

jr_002_6DE5:
    ld   [bc], a                                  ; $6DE5: $02
    ld   b, $01                                   ; $6DE6: $06 $01
    inc  bc                                       ; $6DE8: $03
    ld   d, b                                     ; $6DE9: $50
    ld   e, b                                     ; $6DEA: $58
    ld   [bc], a                                  ; $6DEB: $02
    inc  [hl]                                     ; $6DEC: $34
    db   $10                                      ; $6DED: $10
    ld   b, b                                     ; $6DEE: $40
    inc  sp                                       ; $6DEF: $33
    ld   d, c                                     ; $6DF0: $51
    ld   b, e                                     ; $6DF1: $43
    dec  sp                                       ; $6DF2: $3B
    ld   b, c                                     ; $6DF3: $41
    inc  bc                                       ; $6DF4: $03
    rlca                                          ; $6DF5: $07
    ld   bc, $0003                                ; $6DF6: $01 $03 $00
    ld   d, b                                     ; $6DF9: $50
    ld   e, b                                     ; $6DFA: $58
    inc  bc                                       ; $6DFB: $03
    jr   z, @-$37                                 ; $6DFC: $28 $C7

    rra                                           ; $6DFE: $1F
    jr   z, jr_002_6D82                           ; $6DFF: $28 $81

    ld   [de], a                                  ; $6E01: $12
    jr   z, @-$4D                                 ; $6E02: $28 $B1

    jp   nc, $0702                                ; $6E04: $D2 $02 $07

    nop                                           ; $6E07: $00
    dec  b                                        ; $6E08: $05
    ld   d, b                                     ; $6E09: $50
    ld   e, b                                     ; $6E0A: $58
    inc  b                                        ; $6E0B: $04
    inc  [hl]                                     ; $6E0C: $34
    ld   l, e                                     ; $6E0D: $6B
    and  a                                        ; $6E0E: $A7
    inc  sp                                       ; $6E0F: $33
    dec  l                                        ; $6E10: $2D
    xor  d                                        ; $6E11: $AA
    dec  sp                                       ; $6E12: $3B
    dec  e                                        ; $6E13: $1D
    ld   l, d                                     ; $6E14: $6A
    rlca                                          ; $6E15: $07
    ld   [bc], a                                  ; $6E16: $02
    inc  bc                                       ; $6E17: $03
    ld   bc, $5850                                ; $6E18: $01 $50 $58
    nop                                           ; $6E1B: $00
    ld   [$5BD5], sp                              ; $6E1C: $08 $D5 $5B
    rrca                                          ; $6E1F: $0F
    sub  a                                        ; $6E20: $97
    ld   e, [hl]                                  ; $6E21: $5E
    rla                                           ; $6E22: $17
    add  a                                        ; $6E23: $87
    ld   e, $07                                   ; $6E24: $1E $07
    ld   bc, $0100                                ; $6E26: $01 $00 $01
    ld   d, b                                     ; $6E29: $50
    ld   e, b                                     ; $6E2A: $58
    ld   [$0B22], sp                              ; $6E2B: $08 $22 $0B
    ld   h, $21                                   ; $6E2E: $26 $21
    ld   c, h                                     ; $6E30: $4C
    add  hl, hl                                   ; $6E31: $29
    ld   hl, $E97C                                ; $6E32: $21 $7C $E9
    add  b                                        ; $6E35: $80
    add  b                                        ; $6E36: $80
    ld   de, $5814                                ; $6E37: $11 $14 $58
    ld   e, b                                     ; $6E3A: $58
    add  hl, bc                                   ; $6E3B: $09
    ld   [hl], $7E                                ; $6E3C: $36 $7E
    db   $ED                                      ; $6E3E: $ED
    ld   [hl], $38                                ; $6E3F: $36 $38
    ldh  [$FF3E], a                               ; $6E41: $E0 $3E
    jr   z, jr_002_6DE5                           ; $6E43: $28 $A0

    add  b                                        ; $6E45: $80
    add  b                                        ; $6E46: $80
    ld   d, $17                                   ; $6E47: $16 $17
    ld   e, b                                     ; $6E49: $58
    ld   e, b                                     ; $6E4A: $58
    add  hl, bc                                   ; $6E4B: $09
    ld   d, $65                                   ; $6E4C: $16 $65
    adc  e                                        ; $6E4E: $8B
    dec  d                                        ; $6E4F: $15
    daa                                           ; $6E50: $27
    adc  [hl]                                     ; $6E51: $8E
    dec  e                                        ; $6E52: $1D
    rla                                           ; $6E53: $17
    ld   c, [hl]                                  ; $6E54: $4E
    add  b                                        ; $6E55: $80
    add  b                                        ; $6E56: $80
    ld   d, $12                                   ; $6E57: $16 $12
    ld   e, b                                     ; $6E59: $58
    ld   e, b                                     ; $6E5A: $58
    add  hl, bc                                   ; $6E5B: $09
    scf                                           ; $6E5C: $37
    ld   b, b                                     ; $6E5D: $40
    ld   bc, $0236                                ; $6E5E: $01 $36 $02
    inc  b                                        ; $6E61: $04
    ld   [hl], $32                                ; $6E62: $36 $32
    call nz, $8080                                ; $6E64: $C4 $80 $80
    ld   d, $16                                   ; $6E67: $16 $16
    ld   e, b                                     ; $6E69: $58
    ld   e, b                                     ; $6E6A: $58
    add  hl, bc                                   ; $6E6B: $09
    rla                                           ; $6E6C: $17
    ld   b, b                                     ; $6E6D: $40
    ld   bc, $0216                                ; $6E6E: $01 $16 $02
    inc  b                                        ; $6E71: $04
    ld   d, $32                                   ; $6E72: $16 $32
    call nz, $8080                                ; $6E74: $C4 $80 $80
    ld   d, $12                                   ; $6E77: $16 $12
    ld   e, b                                     ; $6E79: $58
    ld   e, b                                     ; $6E7A: $58
    add  hl, bc                                   ; $6E7B: $09
    daa                                           ; $6E7C: $27
    xor  c                                        ; $6E7D: $A9
    or   d                                        ; $6E7E: $B2
    ld   h, $EA                                   ; $6E7F: $26 $EA
    or   l                                        ; $6E81: $B5
    ld   l, $DA                                   ; $6E82: $2E $DA
    ld   [hl], l                                  ; $6E84: $75
    add  b                                        ; $6E85: $80
    add  b                                        ; $6E86: $80
    ld   d, $14                                   ; $6E87: $16 $14
    ld   e, b                                     ; $6E89: $58
    ld   e, b                                     ; $6E8A: $58
    add  hl, bc                                   ; $6E8B: $09
    ld   b, $25                                   ; $6E8C: $06 $25
    adc  d                                        ; $6E8E: $8A
    dec  b                                        ; $6E8F: $05
    ld   h, [hl]                                  ; $6E90: $66
    adc  l                                        ; $6E91: $8D
    dec  c                                        ; $6E92: $0D
    ld   d, [hl]                                  ; $6E93: $56
    ld   c, l                                     ; $6E94: $4D
    add  b                                        ; $6E95: $80
    add  b                                        ; $6E96: $80
    dec  d                                        ; $6E97: $15
    db   $10                                      ; $6E98: $10
    ld   e, b                                     ; $6E99: $58
    ld   e, b                                     ; $6E9A: $58
    add  hl, bc                                   ; $6E9B: $09
    ld   a, [hl-]                                 ; $6E9C: $3A
    ld   b, [hl]                                  ; $6E9D: $46
    dec  c                                        ; $6E9E: $0D
    ld   a, [hl-]                                 ; $6E9F: $3A
    nop                                           ; $6EA0: $00
    nop                                           ; $6EA1: $00
    ld   a, [hl-]                                 ; $6EA2: $3A
    jr   nc, @-$3E                                ; $6EA3: $30 $C0

    add  b                                        ; $6EA5: $80
    add  b                                        ; $6EA6: $80
    ld   [de], a                                  ; $6EA7: $12
    rla                                           ; $6EA8: $17
    ld   e, b                                     ; $6EA9: $58
    ld   e, b                                     ; $6EAA: $58
    add  hl, bc                                   ; $6EAB: $09

jr_002_6EAC:
    jr   c, jr_002_6ECD                           ; $6EAC: $38 $1F

    ld   l, [hl]                                  ; $6EAE: $6E
    jr   c, jr_002_6F09                           ; $6EAF: $38 $58

    ld   h, c                                     ; $6EB1: $61
    nop                                           ; $6EB2: $00
    ld   c, b                                     ; $6EB3: $48
    ld   hl, $8080                                ; $6EB4: $21 $80 $80
    db   $10                                      ; $6EB7: $10
    rla                                           ; $6EB8: $17
    ld   e, b                                     ; $6EB9: $58
    ld   e, b                                     ; $6EBA: $58
    add  hl, bc                                   ; $6EBB: $09
    add  hl, sp                                   ; $6EBC: $39
    ld   e, a                                     ; $6EBD: $5F
    ld   l, a                                     ; $6EBE: $6F
    add  hl, sp                                   ; $6EBF: $39
    add  hl, de                                   ; $6EC0: $19
    ld   h, d                                     ; $6EC1: $62
    ld   bc, $2209                                ; $6EC2: $01 $09 $22
    add  b                                        ; $6EC5: $80
    add  b                                        ; $6EC6: $80
    ld   de, $5817                                ; $6EC7: $11 $17 $58
    ld   e, b                                     ; $6ECA: $58
    add  hl, bc                                   ; $6ECB: $09
    inc  sp                                       ; $6ECC: $33

jr_002_6ECD:
    jr   jr_002_6F2F                              ; $6ECD: $18 $60

    ld   [hl-], a                                 ; $6ECF: $32
    ld   e, c                                     ; $6ED0: $59
    ld   h, e                                     ; $6ED1: $63
    ld   a, [hl-]                                 ; $6ED2: $3A
    ld   c, c                                     ; $6ED3: $49
    inc  hl                                       ; $6ED4: $23
    add  b                                        ; $6ED5: $80
    add  b                                        ; $6ED6: $80
    ld   [de], a                                  ; $6ED7: $12
    ld   d, $58                                   ; $6ED8: $16 $58
    ld   e, b                                     ; $6EDA: $58
    add  hl, bc                                   ; $6EDB: $09
    inc  a                                        ; $6EDC: $3C
    ld   d, $4C                                   ; $6EDD: $16 $4C
    dec  sp                                       ; $6EDF: $3B
    ld   d, a                                     ; $6EE0: $57
    ld   c, a                                     ; $6EE1: $4F
    inc  bc                                       ; $6EE2: $03
    ld   b, a                                     ; $6EE3: $47
    rrca                                          ; $6EE4: $0F
    add  b                                        ; $6EE5: $80
    add  b                                        ; $6EE6: $80
    inc  d                                        ; $6EE7: $14
    rla                                           ; $6EE8: $17
    ld   e, b                                     ; $6EE9: $58
    ld   e, b                                     ; $6EEA: $58
    add  hl, bc                                   ; $6EEB: $09
    dec  sp                                       ; $6EEC: $3B
    push de                                       ; $6EED: $D5
    ld   e, e                                     ; $6EEE: $5B
    ld   a, [hl-]                                 ; $6EEF: $3A
    sub  a                                        ; $6EF0: $97
    ld   e, [hl]                                  ; $6EF1: $5E
    ld   [bc], a                                  ; $6EF2: $02

jr_002_6EF3:
    add  a                                        ; $6EF3: $87
    ld   e, $80                                   ; $6EF4: $1E $80
    add  b                                        ; $6EF6: $80
    inc  de                                       ; $6EF7: $13
    rla                                           ; $6EF8: $17
    ld   e, b                                     ; $6EF9: $58
    ld   e, b                                     ; $6EFA: $58
    add  hl, bc                                   ; $6EFB: $09
    inc  l                                        ; $6EFC: $2C

jr_002_6EFD:
    ld   [hl], $CC                                ; $6EFD: $36 $CC
    dec  hl                                       ; $6EFF: $2B

jr_002_6F00:
    ld   [hl], a                                  ; $6F00: $77
    rst  RST_08                                   ; $6F01: $CF
    inc  sp                                       ; $6F02: $33
    ld   h, a                                     ; $6F03: $67
    adc  a                                        ; $6F04: $8F
    add  b                                        ; $6F05: $80
    add  b                                        ; $6F06: $80
    inc  d                                        ; $6F07: $14
    dec  d                                        ; $6F08: $15

jr_002_6F09:
    ld   e, b                                     ; $6F09: $58
    ld   e, b                                     ; $6F0A: $58
    add  hl, bc                                   ; $6F0B: $09
    jr   z, jr_002_6EAC                           ; $6F0C: $28 $9E

    ld   a, h                                     ; $6F0E: $7C
    cpl                                           ; $6F0F: $2F
    rst  RST_18                                   ; $6F10: $DF
    ld   a, a                                     ; $6F11: $7F
    scf                                           ; $6F12: $37
    rst  RST_08                                   ; $6F13: $CF
    ccf                                           ; $6F14: $3F
    add  b                                        ; $6F15: $80
    add  b                                        ; $6F16: $80
    db   $10                                      ; $6F17: $10
    dec  d                                        ; $6F18: $15
    ld   e, b                                     ; $6F19: $58
    ld   e, b                                     ; $6F1A: $58
    add  hl, bc                                   ; $6F1B: $09
    add  hl, hl                                   ; $6F1C: $29
    sbc  [hl]                                     ; $6F1D: $9E
    ld   a, h                                     ; $6F1E: $7C
    jr   z, jr_002_6F00                           ; $6F1F: $28 $DF

    ld   a, a                                     ; $6F21: $7F
    jr   nc, jr_002_6EF3                          ; $6F22: $30 $CF

    ccf                                           ; $6F24: $3F
    add  b                                        ; $6F25: $80
    add  b                                        ; $6F26: $80
    ld   de, $5815                                ; $6F27: $11 $15 $58
    ld   e, b                                     ; $6F2A: $58
    add  hl, bc                                   ; $6F2B: $09

jr_002_6F2C:
    dec  a                                        ; $6F2C: $3D
    ld   d, [hl]                                  ; $6F2D: $56
    ld   c, l                                     ; $6F2E: $4D

jr_002_6F2F:
    dec  a                                        ; $6F2F: $3D
    db   $10                                      ; $6F30: $10
    ld   b, b                                     ; $6F31: $40
    dec  b                                        ; $6F32: $05
    nop                                           ; $6F33: $00
    nop                                           ; $6F34: $00
    add  b                                        ; $6F35: $80
    add  b                                        ; $6F36: $80
    dec  d                                        ; $6F37: $15
    rla                                           ; $6F38: $17

jr_002_6F39:
    ld   e, b                                     ; $6F39: $58
    ld   e, b                                     ; $6F3A: $58
    add  hl, bc                                   ; $6F3B: $09
    inc  a                                        ; $6F3C: $3C
    ld   d, $4C                                   ; $6F3D: $16 $4C
    dec  sp                                       ; $6F3F: $3B
    ld   d, a                                     ; $6F40: $57
    ld   c, a                                     ; $6F41: $4F
    inc  bc                                       ; $6F42: $03
    ld   b, a                                     ; $6F43: $47
    rrca                                          ; $6F44: $0F
    add  b                                        ; $6F45: $80
    add  b                                        ; $6F46: $80
    inc  d                                        ; $6F47: $14
    rla                                           ; $6F48: $17
    ld   e, b                                     ; $6F49: $58
    ld   e, b                                     ; $6F4A: $58
    add  hl, bc                                   ; $6F4B: $09
    ld   sp, $6B5D                                ; $6F4C: $31 $5D $6B
    jr   nc, @+$21                                ; $6F4F: $30 $1F

    ld   l, [hl]                                  ; $6F51: $6E
    jr   c, @+$11                                 ; $6F52: $38 $0F

    ld   l, $80                                   ; $6F54: $2E $80
    add  b                                        ; $6F56: $80
    ld   de, $5816                                ; $6F57: $11 $16 $58
    ld   e, b                                     ; $6F5A: $58
    add  hl, bc                                   ; $6F5B: $09
    jr   nc, jr_002_6EFD                          ; $6F5C: $30 $9F

    ld   a, [hl]                                  ; $6F5E: $7E
    jr   nc, jr_002_6F39                          ; $6F5F: $30 $D8

    ld   [hl], c                                  ; $6F61: $71
    jr   c, jr_002_6F2C                           ; $6F62: $38 $C8

    ld   sp, $8080                                ; $6F64: $31 $80 $80
    db   $10                                      ; $6F67: $10
    ld   d, $58                                   ; $6F68: $16 $58
    ld   e, b                                     ; $6F6A: $58
    add  hl, bc                                   ; $6F6B: $09
    jr   c, @+$21                                 ; $6F6C: $38 $1F

    ld   l, [hl]                                  ; $6F6E: $6E
    jr   c, @+$5A                                 ; $6F6F: $38 $58

    ld   h, c                                     ; $6F71: $61
    nop                                           ; $6F72: $00
    ld   c, b                                     ; $6F73: $48
    ld   hl, $8080                                ; $6F74: $21 $80 $80
    db   $10                                      ; $6F77: $10
    rla                                           ; $6F78: $17
    ld   e, b                                     ; $6F79: $58
    ld   e, b                                     ; $6F7A: $58
    ld   [$2610], sp                              ; $6F7B: $08 $10 $26
    adc  h                                        ; $6F7E: $8C
    rla                                           ; $6F7F: $17
    ld   h, a                                     ; $6F80: $67
    adc  a                                        ; $6F81: $8F
    rra                                           ; $6F82: $1F
    ld   d, a                                     ; $6F83: $57
    ld   c, a                                     ; $6F84: $4F
    add  b                                        ; $6F85: $80
    add  b                                        ; $6F86: $80
    db   $10                                      ; $6F87: $10
    ld   [de], a                                  ; $6F88: $12
    ld   e, b                                     ; $6F89: $58
    ld   e, b                                     ; $6F8A: $58
    ld   [$B610], sp                              ; $6F8B: $08 $10 $B6
    call c, $F717                                 ; $6F8E: $DC $17 $F7
    rst  RST_18                                   ; $6F91: $DF
    rra                                           ; $6F92: $1F
    rst  RST_20                                   ; $6F93: $E7
    sbc  a                                        ; $6F94: $9F
    add  b                                        ; $6F95: $80
    add  b                                        ; $6F96: $80
    db   $10                                      ; $6F97: $10
    ld   [de], a                                  ; $6F98: $12
    ld   e, b                                     ; $6F99: $58
    ld   e, b                                     ; $6F9A: $58
    ld   [$3409], sp                              ; $6F9B: $08 $09 $34
    ret  z                                        ; $6F9E: $C8

    ld   [$CB75], sp                              ; $6F9F: $08 $75 $CB
    db   $10                                      ; $6FA2: $10
    ld   h, l                                     ; $6FA3: $65
    adc  e                                        ; $6FA4: $8B
    add  b                                        ; $6FA5: $80
    add  b                                        ; $6FA6: $80
    db   $10                                      ; $6FA7: $10
    ld   de, $5858                                ; $6FA8: $11 $58 $58
    ld   [$E909], sp                              ; $6FAB: $08 $09 $E9
    or   e                                        ; $6FAE: $B3
    ld   [$B6AB], sp                              ; $6FAF: $08 $AB $B6
    db   $10                                      ; $6FB2: $10
    sbc  e                                        ; $6FB3: $9B
    halt                                          ; $6FB4: $76
    add  b                                        ; $6FB5: $80
    add  b                                        ; $6FB6: $80
    db   $10                                      ; $6FB7: $10
    ld   de, $5858                                ; $6FB8: $11 $58 $58
    ld   [$9E01], sp                              ; $6FBB: $08 $01 $9E
    ld   a, h                                     ; $6FBE: $7C
    nop                                           ; $6FBF: $00
    rst  RST_18                                   ; $6FC0: $DF
    ld   a, a                                     ; $6FC1: $7F
    ld   [$3FCF], sp                              ; $6FC2: $08 $CF $3F
    add  b                                        ; $6FC5: $80
    add  b                                        ; $6FC6: $80
    ld   de, $5810                                ; $6FC7: $11 $10 $58
    ld   e, b                                     ; $6FCA: $58
    ld   [$DB01], sp                              ; $6FCB: $08 $01 $DB
    ld   [hl], a                                  ; $6FCE: $77
    nop                                           ; $6FCF: $00
    sbc  l                                        ; $6FD0: $9D
    ld   a, d                                     ; $6FD1: $7A
    ld   [$3A8D], sp                              ; $6FD2: $08 $8D $3A
    add  b                                        ; $6FD5: $80
    add  b                                        ; $6FD6: $80
    db   $10                                      ; $6FD7: $10
    db   $10                                      ; $6FD8: $10
    ld   e, b                                     ; $6FD9: $58
    ld   e, b                                     ; $6FDA: $58
    ld   [$3313], sp                              ; $6FDB: $08 $13 $33
    add  $12                                      ; $6FDE: $C6 $12
    ld   [hl], h                                  ; $6FE0: $74
    ret                                           ; $6FE1: $C9


    ld   a, [de]                                  ; $6FE2: $1A
    ld   h, h                                     ; $6FE3: $64
    adc  c                                        ; $6FE4: $89
    add  b                                        ; $6FE5: $80
    add  b                                        ; $6FE6: $80
    ld   [de], a                                  ; $6FE7: $12
    ld   [de], a                                  ; $6FE8: $12
    ld   e, b                                     ; $6FE9: $58
    ld   e, b                                     ; $6FEA: $58
    ld   [$BF13], sp                              ; $6FEB: $08 $13 $BF
    cp   $13                                      ; $6FEE: $FE $13
    ld   hl, sp-$0F                               ; $6FF0: $F8 $F1
    dec  de                                       ; $6FF2: $1B
    add  sp, -$4F                                 ; $6FF3: $E8 $B1
    add  b                                        ; $6FF5: $80
    add  b                                        ; $6FF6: $80
    inc  de                                       ; $6FF7: $13
    inc  de                                       ; $6FF8: $13
    ld   e, b                                     ; $6FF9: $58
    ld   e, b                                     ; $6FFA: $58
    ld   [$BC13], sp                              ; $6FFB: $08 $13 $BC
    ld   hl, sp+$12                               ; $6FFE: $F8 $12

Call_002_7000:
    db   $FD                                      ; $7000: $FD

Call_002_7001:
    ei                                            ; $7001: $FB
    ld   a, [de]                                  ; $7002: $1A
    db   $ED                                      ; $7003: $ED
    cp   e                                        ; $7004: $BB
    add  b                                        ; $7005: $80
    add  b                                        ; $7006: $80
    ld   [de], a                                  ; $7007: $12
    inc  de                                       ; $7008: $13
    ld   e, b                                     ; $7009: $58
    ld   e, b                                     ; $700A: $58
    ld   [$F00D], sp                              ; $700B: $08 $0D $F0
    pop  de                                       ; $700E: $D1
    inc  c                                        ; $700F: $0C
    or   d                                        ; $7010: $B2
    call nc, $A214                                ; $7011: $D4 $14 $A2
    sub  h                                        ; $7014: $94
    add  b                                        ; $7015: $80
    add  b                                        ; $7016: $80
    inc  d                                        ; $7017: $14
    ld   de, $5858                                ; $7018: $11 $58 $58
    ld   [$C015], sp                              ; $701B: $08 $15 $C0
    ld   de, $8214                                ; $701E: $11 $14 $82
    inc  d                                        ; $7021: $14
    inc  d                                        ; $7022: $14
    or   d                                        ; $7023: $B2
    call nc, $8080                                ; $7024: $D4 $80 $80
    inc  d                                        ; $7027: $14
    ld   [de], a                                  ; $7028: $12
    ld   e, b                                     ; $7029: $58
    ld   e, b                                     ; $702A: $58
    ld   [$6015], sp                              ; $702B: $08 $15 $60
    add  c                                        ; $702E: $81
    inc  d                                        ; $702F: $14
    ld   [hl+], a                                 ; $7030: $22
    add  h                                        ; $7031: $84
    inc  e                                        ; $7032: $1C
    ld   [de], a                                  ; $7033: $12
    ld   b, h                                     ; $7034: $44
    add  b                                        ; $7035: $80
    add  b                                        ; $7036: $80
    inc  d                                        ; $7037: $14
    ld   [de], a                                  ; $7038: $12
    ld   e, b                                     ; $7039: $58
    ld   e, b                                     ; $703A: $58
    ld   [$591D], sp                              ; $703B: $08 $1D $59
    ld   h, e                                     ; $703E: $63
    inc  e                                        ; $703F: $1C
    dec  de                                       ; $7040: $1B
    ld   h, [hl]                                  ; $7041: $66
    inc  h                                        ; $7042: $24
    dec  bc                                       ; $7043: $0B
    ld   h, $80                                   ; $7044: $26 $80
    add  b                                        ; $7046: $80
    inc  d                                        ; $7047: $14
    inc  de                                       ; $7048: $13
    ld   e, b                                     ; $7049: $58
    ld   e, b                                     ; $704A: $58
    ld   [$921C], sp                              ; $704B: $08 $1C $92
    ld   d, h                                     ; $704E: $54
    dec  de                                       ; $704F: $1B
    db   $D3                                      ; $7050: $D3
    ld   d, a                                     ; $7051: $57
    inc  hl                                       ; $7052: $23
    jp   $8017                                    ; $7053: $C3 $17 $80


    add  b                                        ; $7056: $80
    inc  de                                       ; $7057: $13
    inc  de                                       ; $7058: $13
    ld   e, b                                     ; $7059: $58
    ld   e, b                                     ; $705A: $58
    ld   [$5414], sp                              ; $705B: $08 $14 $54
    ld   c, c                                     ; $705E: $49
    inc  de                                       ; $705F: $13
    ld   d, $4C                                   ; $7060: $16 $4C
    dec  de                                       ; $7062: $1B
    ld   b, $0C                                   ; $7063: $06 $0C
    add  b                                        ; $7065: $80
    add  b                                        ; $7066: $80
    inc  de                                       ; $7067: $13
    ld   [de], a                                  ; $7068: $12
    ld   e, b                                     ; $7069: $58
    ld   e, b                                     ; $706A: $58
    ld   [$D724], sp                              ; $706B: $08 $24 $D7
    ld   e, a                                     ; $706E: $5F
    inc  h                                        ; $706F: $24
    sub  c                                        ; $7070: $91
    ld   d, d                                     ; $7071: $52
    inc  l                                        ; $7072: $2C
    add  c                                        ; $7073: $81
    ld   [de], a                                  ; $7074: $12
    add  b                                        ; $7075: $80
    add  b                                        ; $7076: $80
    inc  d                                        ; $7077: $14
    inc  d                                        ; $7078: $14
    ld   e, b                                     ; $7079: $58
    ld   e, b                                     ; $707A: $58
    ld   [$6314], sp                              ; $707B: $08 $14 $63
    add  a                                        ; $707E: $87
    inc  de                                       ; $707F: $13
    dec  h                                        ; $7080: $25
    adc  d                                        ; $7081: $8A
    dec  de                                       ; $7082: $1B
    dec  d                                        ; $7083: $15
    ld   c, d                                     ; $7084: $4A
    add  b                                        ; $7085: $80
    add  b                                        ; $7086: $80
    inc  de                                       ; $7087: $13
    ld   [de], a                                  ; $7088: $12
    ld   e, b                                     ; $7089: $58
    ld   e, b                                     ; $708A: $58
    ld   [$381D], sp                              ; $708B: $08 $1D $38
    ldh  [rNR32], a                               ; $708E: $E0 $1C
    ld   a, c                                     ; $7090: $79
    db   $E3                                      ; $7091: $E3
    inc  h                                        ; $7092: $24
    ld   l, c                                     ; $7093: $69
    and  e                                        ; $7094: $A3
    add  b                                        ; $7095: $80
    add  b                                        ; $7096: $80
    inc  d                                        ; $7097: $14
    inc  d                                        ; $7098: $14
    ld   e, b                                     ; $7099: $58
    ld   e, b                                     ; $709A: $58
    ld   [$3815], sp                              ; $709B: $08 $15 $38
    ldh  [rNR14], a                               ; $709E: $E0 $14
    ld   a, c                                     ; $70A0: $79
    db   $E3                                      ; $70A1: $E3
    inc  e                                        ; $70A2: $1C
    ld   l, c                                     ; $70A3: $69
    and  e                                        ; $70A4: $A3
    add  b                                        ; $70A5: $80
    add  b                                        ; $70A6: $80
    inc  d                                        ; $70A7: $14
    inc  de                                       ; $70A8: $13
    ld   e, b                                     ; $70A9: $58
    ld   e, b                                     ; $70AA: $58
    ld   [$5C11], sp                              ; $70AB: $08 $11 $5C
    ld   l, c                                     ; $70AE: $69
    db   $10                                      ; $70AF: $10
    ld   e, $6C                                   ; $70B0: $1E $6C
    jr   jr_002_70C2                              ; $70B2: $18 $0E

    inc  l                                        ; $70B4: $2C
    add  b                                        ; $70B5: $80
    add  b                                        ; $70B6: $80
    db   $10                                      ; $70B7: $10
    ld   [de], a                                  ; $70B8: $12
    ld   e, b                                     ; $70B9: $58
    ld   e, b                                     ; $70BA: $58
    ld   [$840A], sp                              ; $70BB: $08 $0A $84
    jr   @+$0B                                    ; $70BE: $18 $09

    push bc                                       ; $70C0: $C5
    dec  de                                       ; $70C1: $1B

jr_002_70C2:
    add  hl, bc                                   ; $70C2: $09
    push af                                       ; $70C3: $F5
    db   $DB                                      ; $70C4: $DB
    add  b                                        ; $70C5: $80
    add  b                                        ; $70C6: $80
    ld   de, $5811                                ; $70C7: $11 $11 $58
    ld   e, b                                     ; $70CA: $58
    ld   [$4815], sp                              ; $70CB: $08 $15 $48
    ld   hl, $0A14                                ; $70CE: $21 $14 $0A
    inc  h                                        ; $70D1: $24
    inc  d                                        ; $70D2: $14
    ld   a, [hl-]                                 ; $70D3: $3A
    db   $E4                                      ; $70D4: $E4
    add  b                                        ; $70D5: $80
    add  b                                        ; $70D6: $80
    inc  d                                        ; $70D7: $14
    ld   [de], a                                  ; $70D8: $12
    ld   e, b                                     ; $70D9: $58
    ld   e, b                                     ; $70DA: $58
    ld   [$230B], sp                              ; $70DB: $08 $0B $23
    add  [hl]                                     ; $70DE: $86
    ld   a, [bc]                                  ; $70DF: $0A
    ld   h, h                                     ; $70E0: $64
    adc  c                                        ; $70E1: $89
    ld   [de], a                                  ; $70E2: $12
    ld   d, h                                     ; $70E3: $54
    ld   c, c                                     ; $70E4: $49
    add  b                                        ; $70E5: $80
    add  b                                        ; $70E6: $80
    ld   [de], a                                  ; $70E7: $12
    ld   de, $5858                                ; $70E8: $11 $58 $58
    ld   [$2E03], sp                              ; $70EB: $08 $03 $2E
    xor  h                                        ; $70EE: $AC
    ld   [bc], a                                  ; $70EF: $02
    ld   l, a                                     ; $70F0: $6F
    xor  a                                        ; $70F1: $AF
    ld   a, [bc]                                  ; $70F2: $0A
    ld   e, a                                     ; $70F3: $5F
    ld   l, a                                     ; $70F4: $6F
    add  b                                        ; $70F5: $80
    add  b                                        ; $70F6: $80
    inc  de                                       ; $70F7: $13
    db   $10                                      ; $70F8: $10
    ld   e, b                                     ; $70F9: $58
    ld   e, b                                     ; $70FA: $58
    ld   e, a                                     ; $70FB: $5F
    ld   a, d                                     ; $70FC: $7A
    call $5F7A                                    ; $70FD: $CD $7A $5F
    ld   a, d                                     ; $7100: $7A
    ld   a, c                                     ; $7101: $79
    ld   a, d                                     ; $7102: $7A
    add  h                                        ; $7103: $84
    ld   a, d                                     ; $7104: $7A
    rst  RST_20                                   ; $7105: $E7
    ld   a, d                                     ; $7106: $7A
    add  h                                        ; $7107: $84
    ld   a, d                                     ; $7108: $7A
    ldh  a, [c]                                   ; $7109: $F2
    ld   a, d                                     ; $710A: $7A
    add  h                                        ; $710B: $84
    ld   a, d                                     ; $710C: $7A
    sub  l                                        ; $710D: $95
    ld   a, d                                     ; $710E: $7A
    db   $FD                                      ; $710F: $FD
    ld   a, d                                     ; $7110: $7A
    inc  bc                                       ; $7111: $03
    ld   a, e                                     ; $7112: $7B
    sbc  e                                        ; $7113: $9B
    ld   a, d                                     ; $7114: $7A
    add  hl, bc                                   ; $7115: $09
    ld   a, e                                     ; $7116: $7B
    inc  d                                        ; $7117: $14
    ld   a, e                                     ; $7118: $7B
    and  [hl]                                     ; $7119: $A6
    ld   a, d                                     ; $711A: $7A
    rra                                           ; $711B: $1F
    ld   a, e                                     ; $711C: $7B
    xor  h                                        ; $711D: $AC
    ld   a, d                                     ; $711E: $7A
    inc  [hl]                                     ; $711F: $34
    ld   a, e                                     ; $7120: $7B
    ld   c, [hl]                                  ; $7121: $4E
    ld   a, e                                     ; $7122: $7B
    cp   l                                        ; $7123: $BD
    ld   a, d                                     ; $7124: $7A
    ld   e, [hl]                                  ; $7125: $5E
    ld   a, e                                     ; $7126: $7B
    ld   e, [hl]                                  ; $7127: $5E
    ld   a, e                                     ; $7128: $7B
    push af                                       ; $7129: $F5
    ld   [hl], d                                  ; $712A: $72
    rst  RST_38                                   ; $712B: $FF
    ld   [hl], e                                  ; $712C: $73
    inc  de                                       ; $712D: $13
    ld   [hl], l                                  ; $712E: $75
    ld   a, [$A575]                               ; $712F: $FA $75 $A5
    halt                                          ; $7132: $76
    ret  z                                        ; $7133: $C8

    ld   [hl], a                                  ; $7134: $77
    xor  a                                        ; $7135: $AF
    ld   a, b                                     ; $7136: $78
    xor  a                                        ; $7137: $AF
    ld   a, b                                     ; $7138: $78
    nop                                           ; $7139: $00
    ld   a, c                                     ; $713A: $79
    nop                                           ; $713B: $00
    ld   a, c                                     ; $713C: $79
    db   $10                                      ; $713D: $10
    ld   a, c                                     ; $713E: $79
    db   $10                                      ; $713F: $10
    ld   a, c                                     ; $7140: $79
    ld   h, c                                     ; $7141: $61
    ld   a, c                                     ; $7142: $79
    and  e                                        ; $7143: $A3
    ld   a, c                                     ; $7144: $79
    and  e                                        ; $7145: $A3
    ld   a, c                                     ; $7146: $79
    ld   sp, hl                                   ; $7147: $F9
    ld   a, c                                     ; $7148: $79
    ld   sp, hl                                   ; $7149: $F9
    ld   a, c                                     ; $714A: $79
    add  hl, bc                                   ; $714B: $09
    ld   a, d                                     ; $714C: $7A
    add  hl, bc                                   ; $714D: $09
    ld   a, d                                     ; $714E: $7A
    add  hl, bc                                   ; $714F: $09
    ld   a, d                                     ; $7150: $7A
    add  hl, bc                                   ; $7151: $09
    ld   a, d                                     ; $7152: $7A
    add  hl, bc                                   ; $7153: $09
    ld   a, d                                     ; $7154: $7A
    add  hl, bc                                   ; $7155: $09
    ld   a, d                                     ; $7156: $7A
    add  hl, bc                                   ; $7157: $09
    ld   a, d                                     ; $7158: $7A
    add  hl, bc                                   ; $7159: $09
    ld   a, d                                     ; $715A: $7A
    ld   e, a                                     ; $715B: $5F
    ld   a, d                                     ; $715C: $7A
    ld   a, c                                     ; $715D: $79
    ld   a, d                                     ; $715E: $7A
    add  h                                        ; $715F: $84
    ld   a, d                                     ; $7160: $7A
    adc  a                                        ; $7161: $8F
    ld   a, d                                     ; $7162: $7A
    sbc  e                                        ; $7163: $9B
    ld   a, d                                     ; $7164: $7A
    and  [hl]                                     ; $7165: $A6
    ld   a, d                                     ; $7166: $7A
    xor  h                                        ; $7167: $AC
    ld   a, d                                     ; $7168: $7A
    or   d                                        ; $7169: $B2
    ld   a, d                                     ; $716A: $7A
    cp   l                                        ; $716B: $BD
    ld   a, d                                     ; $716C: $7A
    call $207A                                    ; $716D: $CD $7A $20
    inc  d                                        ; $7170: $14
    ld   bc, $0101                                ; $7171: $01 $01 $01
    nop                                           ; $7174: $00
    inc  e                                        ; $7175: $1C
    ld   bc, $0101                                ; $7176: $01 $01 $01
    nop                                           ; $7179: $00
    inc  c                                        ; $717A: $0C
    inc  bc                                       ; $717B: $03
    ld   bc, $1001                                ; $717C: $01 $01 $10
    jr   jr_002_7183                              ; $717F: $18 $02

    inc  b                                        ; $7181: $04
    nop                                           ; $7182: $00

jr_002_7183:
    db   $10                                      ; $7183: $10
    inc  e                                        ; $7184: $1C
    ld   h, $01                                   ; $7185: $26 $01
    ld   bc, $4800                                ; $7187: $01 $00 $48
    inc  hl                                       ; $718A: $23
    nop                                           ; $718B: $00
    ld   bc, $1C22                                ; $718C: $01 $22 $1C
    ld   c, c                                     ; $718F: $49
    inc  b                                        ; $7190: $04
    ld   bc, $1C02                                ; $7191: $01 $02 $1C
    ld   c, c                                     ; $7194: $49
    inc  b                                        ; $7195: $04
    ld   bc, $1400                                ; $7196: $01 $00 $14
    jr   z, @+$03                                 ; $7199: $28 $01

    ld   bc, $1800                                ; $719B: $01 $00 $18
    dec  [hl]                                     ; $719E: $35
    nop                                           ; $719F: $00
    ld   bc, $1020                                ; $71A0: $01 $20 $10
    dec  [hl]                                     ; $71A3: $35
    nop                                           ; $71A4: $00
    ld   bc, $1400                                ; $71A5: $01 $00 $14
    ld   hl, $0101                                ; $71A8: $21 $01 $01
    nop                                           ; $71AB: $00
    inc  d                                        ; $71AC: $14
    cpl                                           ; $71AD: $2F
    ld   bc, $0001                                ; $71AE: $01 $01 $00
    inc  e                                        ; $71B1: $1C
    jr   nc, jr_002_71B4                          ; $71B2: $30 $00

jr_002_71B4:
    nop                                           ; $71B4: $00
    nop                                           ; $71B5: $00
    inc  e                                        ; $71B6: $1C
    ld   sp, $0000                                ; $71B7: $31 $00 $00
    db   $10                                      ; $71BA: $10
    jr   jr_002_71C3                              ; $71BB: $18 $06

    ld   a, [de]                                  ; $71BD: $1A
    nop                                           ; $71BE: $00
    db   $10                                      ; $71BF: $10
    jr   jr_002_71C8                              ; $71C0: $18 $06

    dec  de                                       ; $71C2: $1B

jr_002_71C3:
    nop                                           ; $71C3: $00
    db   $10                                      ; $71C4: $10
    jr   jr_002_71CD                              ; $71C5: $18 $06

    inc  e                                        ; $71C7: $1C

jr_002_71C8:
    nop                                           ; $71C8: $00
    db   $10                                      ; $71C9: $10
    jr   jr_002_71D2                              ; $71CA: $18 $06

    dec  e                                        ; $71CC: $1D

jr_002_71CD:
    nop                                           ; $71CD: $00
    nop                                           ; $71CE: $00
    jr   c, @+$3D                                 ; $71CF: $38 $3B

    nop                                           ; $71D1: $00

jr_002_71D2:
    nop                                           ; $71D2: $00
    nop                                           ; $71D3: $00
    inc  a                                        ; $71D4: $3C
    inc  a                                        ; $71D5: $3C
    nop                                           ; $71D6: $00
    ld   bc, $3010                                ; $71D7: $01 $10 $30
    dec  a                                        ; $71DA: $3D
    nop                                           ; $71DB: $00
    ld   [bc], a                                  ; $71DC: $02
    nop                                           ; $71DD: $00
    db   $10                                      ; $71DE: $10
    dec  [hl]                                     ; $71DF: $35
    nop                                           ; $71E0: $00
    ld   bc, $1820                                ; $71E1: $01 $20 $18
    dec  [hl]                                     ; $71E4: $35
    nop                                           ; $71E5: $00
    ld   bc, $0002                                ; $71E6: $01 $02 $00
    ld   b, l                                     ; $71E9: $45
    jr   nz, jr_002_71EF                          ; $71EA: $20 $03

    ld   [bc], a                                  ; $71EC: $02
    nop                                           ; $71ED: $00
    ld   b, [hl]                                  ; $71EE: $46

jr_002_71EF:
    jr   nz, jr_002_71F4                          ; $71EF: $20 $03

    ld   [hl+], a                                 ; $71F1: $22
    nop                                           ; $71F2: $00
    ld   b, [hl]                                  ; $71F3: $46

jr_002_71F4:
    jr   nz, jr_002_71F9                          ; $71F4: $20 $03

    db   $10                                      ; $71F6: $10
    jr   jr_002_71FF                              ; $71F7: $18 $06

jr_002_71F9:
    inc  c                                        ; $71F9: $0C
    nop                                           ; $71FA: $00
    db   $10                                      ; $71FB: $10
    jr   jr_002_7204                              ; $71FC: $18 $06

    dec  bc                                       ; $71FE: $0B

jr_002_71FF:
    nop                                           ; $71FF: $00
    stop                                          ; $7200: $10 $00
    ld   c, $00                                   ; $7202: $0E $00

jr_002_7204:
    nop                                           ; $7204: $00
    db   $10                                      ; $7205: $10
    jr   jr_002_720E                              ; $7206: $18 $06

    jr   jr_002_720A                              ; $7208: $18 $00

jr_002_720A:
    db   $10                                      ; $720A: $10
    jr   @+$08                                    ; $720B: $18 $06

    rla                                           ; $720D: $17

jr_002_720E:
    nop                                           ; $720E: $00
    db   $10                                      ; $720F: $10
    jr   jr_002_7218                              ; $7210: $18 $06

    ld   d, $00                                   ; $7212: $16 $00
    db   $10                                      ; $7214: $10
    jr   @+$08                                    ; $7215: $18 $06

    dec  d                                        ; $7217: $15

jr_002_7218:
    nop                                           ; $7218: $00
    nop                                           ; $7219: $00
    inc  e                                        ; $721A: $1C
    daa                                           ; $721B: $27
    ld   bc, $0001                                ; $721C: $01 $01 $00
    jr   nz, jr_002_7245                          ; $721F: $20 $24

    inc  bc                                       ; $7221: $03
    ld   bc, $1402                                ; $7222: $01 $02 $14
    ld   c, b                                     ; $7225: $48
    db   $10                                      ; $7226: $10
    ld   [bc], a                                  ; $7227: $02
    ld   [bc], a                                  ; $7228: $02
    inc  e                                        ; $7229: $1C
    ld   [hl-], a                                 ; $722A: $32
    inc  bc                                       ; $722B: $03
    ld   [bc], a                                  ; $722C: $02
    ld   [bc], a                                  ; $722D: $02
    inc  e                                        ; $722E: $1C
    inc  sp                                       ; $722F: $33
    nop                                           ; $7230: $00
    ld   bc, $1402                                ; $7231: $01 $02 $14
    ld   c, d                                     ; $7234: $4A
    db   $10                                      ; $7235: $10
    inc  bc                                       ; $7236: $03
    ld   [bc], a                                  ; $7237: $02
    db   $10                                      ; $7238: $10
    ld   c, a                                     ; $7239: $4F
    db   $10                                      ; $723A: $10
    ld   bc, $3010                                ; $723B: $01 $10 $30
    dec  a                                        ; $723E: $3D
    ld   bc, $0202                                ; $723F: $01 $02 $02
    inc  d                                        ; $7242: $14
    ld   l, $07                                   ; $7243: $2E $07

jr_002_7245:
    ld   [bc], a                                  ; $7245: $02
    ld   [bc], a                                  ; $7246: $02
    nop                                           ; $7247: $00
    ld   b, b                                     ; $7248: $40
    ld   b, b                                     ; $7249: $40
    inc  bc                                       ; $724A: $03
    ld   [bc], a                                  ; $724B: $02
    nop                                           ; $724C: $00
    ld   b, c                                     ; $724D: $41
    nop                                           ; $724E: $00
    inc  bc                                       ; $724F: $03
    ld   [hl+], a                                 ; $7250: $22
    nop                                           ; $7251: $00
    ld   b, c                                     ; $7252: $41
    nop                                           ; $7253: $00
    inc  bc                                       ; $7254: $03
    db   $10                                      ; $7255: $10
    db   $10                                      ; $7256: $10
    inc  l                                        ; $7257: $2C
    inc  bc                                       ; $7258: $03
    ld   [bc], a                                  ; $7259: $02
    nop                                           ; $725A: $00
    inc  c                                        ; $725B: $0C
    inc  b                                        ; $725C: $04
    ld   [bc], a                                  ; $725D: $02
    nop                                           ; $725E: $00
    db   $10                                      ; $725F: $10
    jr   @+$08                                    ; $7260: $18 $06

    add  hl, bc                                   ; $7262: $09
    nop                                           ; $7263: $00
    db   $10                                      ; $7264: $10
    jr   jr_002_726D                              ; $7265: $18 $06

    ld   [$1200], sp                              ; $7267: $08 $00 $12
    nop                                           ; $726A: $00
    inc  [hl]                                     ; $726B: $34
    nop                                           ; $726C: $00

jr_002_726D:
    nop                                           ; $726D: $00
    nop                                           ; $726E: $00
    inc  l                                        ; $726F: $2C
    add  hl, sp                                   ; $7270: $39
    ld   bc, $0002                                ; $7271: $01 $02 $00
    inc  [hl]                                     ; $7274: $34
    dec  sp                                       ; $7275: $3B
    ld   bc, $2000                                ; $7276: $01 $00 $20
    inc  d                                        ; $7279: $14
    ld   [hl], $00                                ; $727A: $36 $00
    ld   bc, $1C00                                ; $727C: $01 $00 $1C
    ld   [hl], $00                                ; $727F: $36 $00
    ld   bc, $1420                                ; $7281: $01 $20 $14
    scf                                           ; $7284: $37
    nop                                           ; $7285: $00
    ld   bc, $1C00                                ; $7286: $01 $00 $1C
    scf                                           ; $7289: $37
    nop                                           ; $728A: $00
    ld   bc, $1000                                ; $728B: $01 $00 $10
    jr   c, jr_002_7292                           ; $728E: $38 $02

    ld   [bc], a                                  ; $7290: $02
    db   $10                                      ; $7291: $10

jr_002_7292:
    jr   jr_002_729A                              ; $7292: $18 $06

    ld   [hl+], a                                 ; $7294: $22
    nop                                           ; $7295: $00
    db   $10                                      ; $7296: $10
    jr   jr_002_729F                              ; $7297: $18 $06

    inc  hl                                       ; $7299: $23

jr_002_729A:
    nop                                           ; $729A: $00
    nop                                           ; $729B: $00
    ld   bc, $1708                                ; $729C: $01 $08 $17

jr_002_729F:
    nop                                           ; $729F: $00
    nop                                           ; $72A0: $00
    ld   [bc], a                                  ; $72A1: $02
    ld   [$0018], sp                              ; $72A2: $08 $18 $00
    nop                                           ; $72A5: $00
    inc  b                                        ; $72A6: $04
    ld   [$0019], sp                              ; $72A7: $08 $19 $00
    nop                                           ; $72AA: $00
    ld   [$1A08], sp                              ; $72AB: $08 $08 $1A
    nop                                           ; $72AE: $00
    jr   nz, @+$1E                                ; $72AF: $20 $1C

    dec  b                                        ; $72B1: $05
    nop                                           ; $72B2: $00
    ld   [bc], a                                  ; $72B3: $02
    nop                                           ; $72B4: $00
    inc  d                                        ; $72B5: $14
    dec  b                                        ; $72B6: $05
    nop                                           ; $72B7: $00
    ld   [bc], a                                  ; $72B8: $02
    nop                                           ; $72B9: $00
    inc  a                                        ; $72BA: $3C
    ld   [hl+], a                                 ; $72BB: $22
    nop                                           ; $72BC: $00
    ld   bc, $1800                                ; $72BD: $01 $00 $18
    ld   a, [hl-]                                 ; $72C0: $3A
    nop                                           ; $72C1: $00
    ld   bc, $1C00                                ; $72C2: $01 $00 $1C
    inc  d                                        ; $72C5: $14
    nop                                           ; $72C6: $00
    ld   bc, $0100                                ; $72C7: $01 $00 $01
    inc  bc                                       ; $72CA: $03
    ld   bc, $1001                                ; $72CB: $01 $01 $10
    jr   jr_002_72D6                              ; $72CE: $18 $06

    inc  h                                        ; $72D0: $24
    nop                                           ; $72D1: $00
    db   $10                                      ; $72D2: $10
    jr   @+$08                                    ; $72D3: $18 $06

    dec  h                                        ; $72D5: $25

jr_002_72D6:
    nop                                           ; $72D6: $00
    db   $10                                      ; $72D7: $10
    jr   jr_002_72E0                              ; $72D8: $18 $06

    ld   h, $00                                   ; $72DA: $26 $00
    db   $10                                      ; $72DC: $10
    jr   @+$08                                    ; $72DD: $18 $06

    daa                                           ; $72DF: $27

jr_002_72E0:
    nop                                           ; $72E0: $00
    db   $10                                      ; $72E1: $10
    jr   jr_002_72EA                              ; $72E2: $18 $06

    jr   z, jr_002_72E6                           ; $72E4: $28 $00

jr_002_72E6:
    ld   [bc], a                                  ; $72E6: $02
    inc  d                                        ; $72E7: $14
    ld   c, h                                     ; $72E8: $4C
    db   $10                                      ; $72E9: $10

jr_002_72EA:
    ld   [bc], a                                  ; $72EA: $02
    nop                                           ; $72EB: $00
    inc  d                                        ; $72EC: $14
    ld   c, b                                     ; $72ED: $48
    db   $10                                      ; $72EE: $10
    ld   [bc], a                                  ; $72EF: $02
    db   $10                                      ; $72F0: $10
    jr   @+$08                                    ; $72F1: $18 $06

    inc  sp                                       ; $72F3: $33
    nop                                           ; $72F4: $00
    ld   b, l                                     ; $72F5: $45
    ld   d, d                                     ; $72F6: $52
    ld   bc, $024B                                ; $72F7: $01 $4B $02
    ccf                                           ; $72FA: $3F
    add  sp, $00                                  ; $72FB: $E8 $00
    ld   b, b                                     ; $72FD: $40
    ld   bc, $383F                                ; $72FE: $01 $3F $38
    ld   bc, $0220                                ; $7301: $01 $20 $02
    dec  a                                        ; $7304: $3D
    add  b                                        ; $7305: $80
    nop                                           ; $7306: $00
    add  b                                        ; $7307: $80
    ld   [bc], a                                  ; $7308: $02
    ccf                                           ; $7309: $3F
    jr   @+$03                                    ; $730A: $18 $01

    jr   nz, jr_002_7312                          ; $730C: $20 $04

    ccf                                           ; $730E: $3F
    ld   l, b                                     ; $730F: $68
    nop                                           ; $7310: $00
    ld   [hl], b                                  ; $7311: $70

jr_002_7312:
    inc  b                                        ; $7312: $04
    ccf                                           ; $7313: $3F
    cp   b                                        ; $7314: $B8
    nop                                           ; $7315: $00
    ld   h, b                                     ; $7316: $60
    ld   b, $3F                                   ; $7317: $06 $3F
    ld   c, b                                     ; $7319: $48
    ld   bc, $06F0                                ; $731A: $01 $F0 $06
    dec  a                                        ; $731D: $3D
    ret  c                                        ; $731E: $D8

    ld   bc, $06B0                                ; $731F: $01 $B0 $06
    nop                                           ; $7322: $00
    add  sp, $01                                  ; $7323: $E8 $01
    ret  nz                                       ; $7325: $C0

    nop                                           ; $7326: $00
    ld   bc, $01B8                                ; $7327: $01 $B8 $01
    ld   d, b                                     ; $732A: $50
    ld   bc, $B800                                ; $732B: $01 $00 $B8
    ld   bc, $0160                                ; $732E: $01 $60 $01
    ld   bc, $01F8                                ; $7331: $01 $F8 $01
    ret  nz                                       ; $7334: $C0

    ld   bc, $F801                                ; $7335: $01 $01 $F8
    ld   bc, $0220                                ; $7338: $01 $20 $02
    ld   bc, $0178                                ; $733B: $01 $78 $01
    and  b                                        ; $733E: $A0
    ld   [bc], a                                  ; $733F: $02
    ld   bc, $0158                                ; $7340: $01 $58 $01
    ldh  a, [$FF03]                               ; $7343: $F0 $03
    ld   bc, $0158                                ; $7345: $01 $58 $01
    jr   nc, jr_002_734E                          ; $7348: $30 $04

    ld   bc, $0168                                ; $734A: $01 $68 $01
    ld   [hl], b                                  ; $734D: $70

jr_002_734E:
    inc  b                                        ; $734E: $04
    nop                                           ; $734F: $00
    ld   l, b                                     ; $7350: $68
    ld   bc, $04D0                                ; $7351: $01 $D0 $04
    nop                                           ; $7354: $00
    ld   e, b                                     ; $7355: $58
    ld   bc, $0520                                ; $7356: $01 $20 $05
    ld   bc, $00C8                                ; $7359: $01 $C8 $00
    and  b                                        ; $735C: $A0
    dec  b                                        ; $735D: $05
    ld   [bc], a                                  ; $735E: $02
    ld   [$A001], sp                              ; $735F: $08 $01 $A0
    ld   bc, $7802                                ; $7362: $01 $02 $78
    nop                                           ; $7365: $00
    ldh  a, [rSC]                                 ; $7366: $F0 $02
    ld   [bc], a                                  ; $7368: $02
    adc  b                                        ; $7369: $88
    nop                                           ; $736A: $00
    jr   nz, jr_002_7370                          ; $736B: $20 $03

    ld   [bc], a                                  ; $736D: $02
    adc  b                                        ; $736E: $88
    nop                                           ; $736F: $00

jr_002_7370:
    or   b                                        ; $7370: $B0
    inc  b                                        ; $7371: $04
    ld   [bc], a                                  ; $7372: $02
    ld   [$C001], sp                              ; $7373: $08 $01 $C0
    ld   b, $02                                   ; $7376: $06 $02
    ld   c, b                                     ; $7378: $48
    ld   bc, $06E0                                ; $7379: $01 $E0 $06
    inc  bc                                       ; $737C: $03
    inc  b                                        ; $737D: $04
    ld   bc, $03F0                                ; $737E: $01 $F0 $03
    inc  bc                                       ; $7381: $03
    inc  b                                        ; $7382: $04
    ld   bc, $0400                                ; $7383: $01 $00 $04
    inc  bc                                       ; $7386: $03
    inc  b                                        ; $7387: $04
    ld   bc, $0410                                ; $7388: $01 $10 $04
    inc  bc                                       ; $738B: $03
    inc  b                                        ; $738C: $04
    ld   bc, $0420                                ; $738D: $01 $20 $04
    inc  bc                                       ; $7390: $03
    inc  b                                        ; $7391: $04
    ld   bc, $0430                                ; $7392: $01 $30 $04
    inc  bc                                       ; $7395: $03
    inc  b                                        ; $7396: $04
    ld   bc, $0440                                ; $7397: $01 $40 $04
    inc  bc                                       ; $739A: $03
    inc  b                                        ; $739B: $04
    ld   bc, $0440                                ; $739C: $01 $40 $04
    cpl                                           ; $739F: $2F
    ld   a, [bc]                                  ; $73A0: $0A
    ld   bc, $01A0                                ; $73A1: $01 $A0 $01
    cpl                                           ; $73A4: $2F
    ld   a, d                                     ; $73A5: $7A
    nop                                           ; $73A6: $00
    ldh  a, [rSC]                                 ; $73A7: $F0 $02
    cpl                                           ; $73A9: $2F
    adc  d                                        ; $73AA: $8A
    nop                                           ; $73AB: $00
    ret  nz                                       ; $73AC: $C0

    inc  b                                        ; $73AD: $04
    jr   nc, @+$52                                ; $73AE: $30 $50

    ld   bc, $0250                                ; $73B0: $01 $50 $02
    ld   sp, BootInit                             ; $73B3: $31 $50 $01
    sub  b                                        ; $73B6: $90
    ld   [bc], a                                  ; $73B7: $02
    inc  b                                        ; $73B8: $04
    call nz, Call_002_7001                        ; $73B9: $C4 $01 $70
    nop                                           ; $73BC: $00
    inc  b                                        ; $73BD: $04
    ld   d, h                                     ; $73BE: $54
    ld   bc, $0280                                ; $73BF: $01 $80 $02
    inc  b                                        ; $73C2: $04
    call nc, Call_002_7000                        ; $73C3: $D4 $00 $70
    inc  bc                                       ; $73C6: $03
    inc  b                                        ; $73C7: $04
    call nc, $A000                                ; $73C8: $D4 $00 $A0
    inc  bc                                       ; $73CB: $03
    inc  b                                        ; $73CC: $04
    call nc, $B000                                ; $73CD: $D4 $00 $B0
    inc  b                                        ; $73D0: $04
    inc  b                                        ; $73D1: $04
    or   h                                        ; $73D2: $B4
    nop                                           ; $73D3: $00
    ldh  [rTIMA], a                               ; $73D4: $E0 $05
    inc  b                                        ; $73D6: $04
    call nz, Call_002_4000                        ; $73D7: $C4 $00 $40
    ld   b, $05                                   ; $73DA: $06 $05
    cp   b                                        ; $73DC: $B8
    nop                                           ; $73DD: $00
    jr   nz, jr_002_73E4                          ; $73DE: $20 $04

    dec  b                                        ; $73E0: $05
    xor  b                                        ; $73E1: $A8
    nop                                           ; $73E2: $00
    ld   b, b                                     ; $73E3: $40

jr_002_73E4:
    inc  b                                        ; $73E4: $04
    dec  b                                        ; $73E5: $05
    ld   c, b                                     ; $73E6: $48
    nop                                           ; $73E7: $00
    add  b                                        ; $73E8: $80
    dec  b                                        ; $73E9: $05
    dec  b                                        ; $73EA: $05
    ld   e, b                                     ; $73EB: $58
    nop                                           ; $73EC: $00
    ld   d, b                                     ; $73ED: $50
    inc  bc                                       ; $73EE: $03
    dec  b                                        ; $73EF: $05
    ld   a, b                                     ; $73F0: $78
    nop                                           ; $73F1: $00
    ld   [hl], b                                  ; $73F2: $70
    inc  bc                                       ; $73F3: $03
    dec  b                                        ; $73F4: $05
    sbc  b                                        ; $73F5: $98
    nop                                           ; $73F6: $00
    ret  nc                                       ; $73F7: $D0

    inc  bc                                       ; $73F8: $03
    dec  b                                        ; $73F9: $05
    ret  z                                        ; $73FA: $C8

    nop                                           ; $73FB: $00
    add  b                                        ; $73FC: $80
    ld   b, $FF                                   ; $73FD: $06 $FF
    ld   b, $B0                                   ; $73FF: $06 $B0
    nop                                           ; $7401: $00
    jr   nc, @+$03                                ; $7402: $30 $01

    ld   b, $40                                   ; $7404: $06 $40
    nop                                           ; $7406: $00
    jr   nc, jr_002_740A                          ; $7407: $30 $01

    rlca                                          ; $7409: $07

jr_002_740A:
    ld   b, b                                     ; $740A: $40
    nop                                           ; $740B: $00
    ldh  a, [rSB]                                 ; $740C: $F0 $01
    rlca                                          ; $740E: $07
    ret  nc                                       ; $740F: $D0

    nop                                           ; $7410: $00
    ldh  a, [rSB]                                 ; $7411: $F0 $01
    dec  c                                        ; $7413: $0D
    add  b                                        ; $7414: $80
    nop                                           ; $7415: $00
    sub  b                                        ; $7416: $90
    ld   bc, $D83F                                ; $7417: $01 $3F $D8
    ld   b, $10                                   ; $741A: $06 $10
    ld   bc, $C83F                                ; $741C: $01 $3F $C8
    dec  b                                        ; $741F: $05
    ret  nc                                       ; $7420: $D0

    ld   bc, $783F                                ; $7421: $01 $3F $78
    inc  b                                        ; $7424: $04
    jr   nc, jr_002_7428                          ; $7425: $30 $01

    ccf                                           ; $7427: $3F

jr_002_7428:
    ld   a, b                                     ; $7428: $78
    inc  b                                        ; $7429: $04
    ret  nc                                       ; $742A: $D0

    ld   [bc], a                                  ; $742B: $02
    ccf                                           ; $742C: $3F
    xor  b                                        ; $742D: $A8
    inc  bc                                       ; $742E: $03
    ldh  [rSC], a                                 ; $742F: $E0 $02
    ccf                                           ; $7431: $3F
    ld   e, b                                     ; $7432: $58
    ld   [bc], a                                  ; $7433: $02
    ldh  [rP1], a                                 ; $7434: $E0 $00
    ccf                                           ; $7436: $3F
    jr   z, jr_002_743A                           ; $7437: $28 $01

    or   b                                        ; $7439: $B0

jr_002_743A:
    ld   bc, $583C                                ; $743A: $01 $3C $58
    dec  b                                        ; $743D: $05
    ldh  a, [rSC]                                 ; $743E: $F0 $02
    inc  b                                        ; $7440: $04
    call nz, $9006                                ; $7441: $C4 $06 $90
    nop                                           ; $7444: $00
    inc  b                                        ; $7445: $04
    call nz, $B006                                ; $7446: $C4 $06 $B0
    nop                                           ; $7449: $00
    inc  b                                        ; $744A: $04
    call nc, Call_002_4006                        ; $744B: $D4 $06 $40
    ld   bc, $B404                                ; $744E: $01 $04 $B4
    ld   b, $80                                   ; $7451: $06 $80
    ld   bc, $E808                                ; $7453: $01 $08 $E8
    dec  b                                        ; $7456: $05
    db   $10                                      ; $7457: $10
    ld   [bc], a                                  ; $7458: $02
    ld   [$05D8], sp                              ; $7459: $08 $D8 $05
    jr   nz, @+$04                                ; $745C: $20 $02

    ld   [$0598], sp                              ; $745E: $08 $98 $05
    ld   h, b                                     ; $7461: $60
    ld   [bc], a                                  ; $7462: $02
    add  hl, bc                                   ; $7463: $09
    ld   e, b                                     ; $7464: $58
    ld   b, $E0                                   ; $7465: $06 $E0
    ld   bc, $C835                                ; $7467: $01 $35 $C8
    dec  b                                        ; $746A: $05
    ld   d, b                                     ; $746B: $50
    ld   bc, $D835                                ; $746C: $01 $35 $D8
    dec  b                                        ; $746F: $05
    ld   d, b                                     ; $7470: $50
    ld   bc, $C80A                                ; $7471: $01 $0A $C8
    dec  b                                        ; $7474: $05
    db   $10                                      ; $7475: $10
    ld   bc, $6809                                ; $7476: $01 $09 $68
    dec  b                                        ; $7479: $05
    ld   h, b                                     ; $747A: $60
    ld   bc, $E80A                                ; $747B: $01 $0A $E8
    inc  b                                        ; $747E: $04
    db   $10                                      ; $747F: $10
    ld   bc, $080A                                ; $7480: $01 $0A $08
    inc  bc                                       ; $7483: $03
    or   b                                        ; $7484: $B0
    ld   bc, $D40B                                ; $7485: $01 $0B $D4
    ld   b, $40                                   ; $7488: $06 $40
    ld   bc, $940B                                ; $748A: $01 $0B $94
    ld   b, $C0                                   ; $748D: $06 $C0
    ld   bc, $E40B                                ; $748F: $01 $0B $E4
    dec  b                                        ; $7492: $05
    ld   d, b                                     ; $7493: $50
    ld   bc, $840B                                ; $7494: $01 $0B $84
    dec  b                                        ; $7497: $05
    ld   d, b                                     ; $7498: $50
    ld   bc, $240B                                ; $7499: $01 $0B $24
    dec  b                                        ; $749C: $05
    db   $10                                      ; $749D: $10
    ld   bc, $040B                                ; $749E: $01 $0B $04
    dec  b                                        ; $74A1: $05
    ld   d, b                                     ; $74A2: $50
    ld   bc, $680C                                ; $74A3: $01 $0C $68
    inc  bc                                       ; $74A6: $03
    jr   jr_002_74AA                              ; $74A7: $18 $01

    inc  c                                        ; $74A9: $0C

jr_002_74AA:
    adc  b                                        ; $74AA: $88
    ld   [bc], a                                  ; $74AB: $02
    jr   jr_002_74AF                              ; $74AC: $18 $01

    inc  c                                        ; $74AE: $0C

jr_002_74AF:
    ret  z                                        ; $74AF: $C8

    ld   bc, $0178                                ; $74B0: $01 $78 $01
    dec  c                                        ; $74B3: $0D
    add  b                                        ; $74B4: $80
    inc  b                                        ; $74B5: $04
    db   $10                                      ; $74B6: $10
    ld   [bc], a                                  ; $74B7: $02
    ld   c, $40                                   ; $74B8: $0E $40
    inc  b                                        ; $74BA: $04
    ld   [hl], b                                  ; $74BB: $70
    ld   [bc], a                                  ; $74BC: $02
    dec  c                                        ; $74BD: $0D
    and  b                                        ; $74BE: $A0
    inc  bc                                       ; $74BF: $03
    add  b                                        ; $74C0: $80
    ld   bc, $E00D                                ; $74C1: $01 $0D $E0
    ld   [bc], a                                  ; $74C4: $02
    ldh  a, [rP1]                                 ; $74C5: $F0 $00
    dec  c                                        ; $74C7: $0D
    and  b                                        ; $74C8: $A0
    ld   [bc], a                                  ; $74C9: $02
    ld   d, b                                     ; $74CA: $50
    ld   bc, $600E                                ; $74CB: $01 $0E $60
    ld   [bc], a                                  ; $74CE: $02
    jr   nc, jr_002_74D2                          ; $74CF: $30 $01

    dec  c                                        ; $74D1: $0D

jr_002_74D2:
    ld   h, b                                     ; $74D2: $60
    ld   [bc], a                                  ; $74D3: $02
    or   b                                        ; $74D4: $B0
    ld   bc, $FF0D                                ; $74D5: $01 $0D $FF
    ld   bc, $01A0                                ; $74D8: $01 $A0 $01
    ld   c, $80                                   ; $74DB: $0E $80
    ld   bc, $0170                                ; $74DD: $01 $70 $01
    dec  c                                        ; $74E0: $0D
    ld   b, b                                     ; $74E1: $40
    ld   bc, $01F0                                ; $74E2: $01 $F0 $01
    rrca                                          ; $74E5: $0F
    or   b                                        ; $74E6: $B0
    inc  b                                        ; $74E7: $04
    ret  nz                                       ; $74E8: $C0

    ld   [bc], a                                  ; $74E9: $02
    rrca                                          ; $74EA: $0F
    or   b                                        ; $74EB: $B0
    inc  b                                        ; $74EC: $04
    ldh  [rSC], a                                 ; $74ED: $E0 $02
    rrca                                          ; $74EF: $0F
    or   b                                        ; $74F0: $B0
    inc  b                                        ; $74F1: $04
    ldh  a, [rSC]                                 ; $74F2: $F0 $02
    rrca                                          ; $74F4: $0F
    jr   z, jr_002_74FC                           ; $74F5: $28 $05

    jr   nc, jr_002_74FA                          ; $74F7: $30 $01

    db   $10                                      ; $74F9: $10

jr_002_74FA:
    add  b                                        ; $74FA: $80
    inc  b                                        ; $74FB: $04

jr_002_74FC:
    ld   hl, sp+$01                               ; $74FC: $F8 $01
    ld   de, $0490                                ; $74FE: $11 $90 $04
    ld   [hl], b                                  ; $7501: $70
    ld   bc, $9012                                ; $7502: $01 $12 $90
    inc  b                                        ; $7505: $04
    ld   d, b                                     ; $7506: $50
    ld   bc, $9812                                ; $7507: $01 $12 $98
    dec  b                                        ; $750A: $05
    ld   [hl], b                                  ; $750B: $70
    ld   [bc], a                                  ; $750C: $02
    ld   c, l                                     ; $750D: $4D
    jr   @+$04                                    ; $750E: $18 $02

    cp   b                                        ; $7510: $B8
    ld   bc, $3EFF                                ; $7511: $01 $FF $3E
    add  sp, $00                                  ; $7514: $E8 $00
    ldh  a, [rP1]                                 ; $7516: $F0 $00
    ld   a, $78                                   ; $7518: $3E $78
    ld   bc, $0120                                ; $751A: $01 $20 $01
    ld   a, $C8                                   ; $751D: $3E $C8
    ld   bc, $01F0                                ; $751F: $01 $F0 $01
    ld   a, $E8                                   ; $7522: $3E $E8
    ld   bc, $03C0                                ; $7524: $01 $C0 $03
    ld   a, $48                                   ; $7527: $3E $48
    nop                                           ; $7529: $00
    jr   nc, jr_002_7531                          ; $752A: $30 $05

    ld   a, $68                                   ; $752C: $3E $68
    nop                                           ; $752E: $00
    jr   nz, jr_002_7537                          ; $752F: $20 $06

jr_002_7531:
    dec  a                                        ; $7531: $3D
    jr   jr_002_7535                              ; $7532: $18 $01

    and  b                                        ; $7534: $A0

jr_002_7535:
    ld   b, $3D                                   ; $7535: $06 $3D

jr_002_7537:
    ld   l, b                                     ; $7537: $68
    ld   bc, $04C0                                ; $7538: $01 $C0 $04
    dec  a                                        ; $753B: $3D
    adc  b                                        ; $753C: $88
    nop                                           ; $753D: $00
    ldh  [rDIV], a                                ; $753E: $E0 $04
    ld   [hl-], a                                 ; $7540: $32
    or   b                                        ; $7541: $B0
    nop                                           ; $7542: $00
    ld   a, b                                     ; $7543: $78
    dec  b                                        ; $7544: $05
    ld   [hl-], a                                 ; $7545: $32
    or   b                                        ; $7546: $B0
    nop                                           ; $7547: $00
    cp   b                                        ; $7548: $B8
    inc  b                                        ; $7549: $04
    ld   [hl-], a                                 ; $754A: $32
    sub  b                                        ; $754B: $90
    nop                                           ; $754C: $00
    jr   @+$05                                    ; $754D: $18 $03

    inc  de                                       ; $754F: $13
    push af                                       ; $7550: $F5
    ld   bc, $0078                                ; $7551: $01 $78 $00
    inc  de                                       ; $7554: $13
    sub  l                                        ; $7555: $95
    ld   bc, $00C8                                ; $7556: $01 $C8 $00
    inc  de                                       ; $7559: $13
    or   l                                        ; $755A: $B5
    ld   bc, $0178                                ; $755B: $01 $78 $01
    inc  de                                       ; $755E: $13
    and  l                                        ; $755F: $A5
    ld   bc, $0278                                ; $7560: $01 $78 $02
    inc  de                                       ; $7563: $13
    push af                                       ; $7564: $F5
    ld   bc, $03B8                                ; $7565: $01 $B8 $03
    inc  de                                       ; $7568: $13
    push hl                                       ; $7569: $E5
    nop                                           ; $756A: $00
    ld   hl, sp+$04                               ; $756B: $F8 $04
    inc  [hl]                                     ; $756D: $34
    ld   c, [hl]                                  ; $756E: $4E
    ld   bc, $032F                                ; $756F: $01 $2F $03
    inc  [hl]                                     ; $7572: $34
    sbc  [hl]                                     ; $7573: $9E
    ld   bc, $048F                                ; $7574: $01 $8F $04
    inc  d                                        ; $7577: $14
    sub  b                                        ; $7578: $90
    ld   bc, $03D8                                ; $7579: $01 $D8 $03
    inc  d                                        ; $757C: $14
    db   $10                                      ; $757D: $10
    ld   bc, $0338                                ; $757E: $01 $38 $03
    inc  d                                        ; $7581: $14
    or   b                                        ; $7582: $B0
    nop                                           ; $7583: $00
    ld   hl, sp+$04                               ; $7584: $F8 $04
    inc  d                                        ; $7586: $14
    ld   h, b                                     ; $7587: $60
    ld   bc, $0498                                ; $7588: $01 $98 $04
    dec  d                                        ; $758B: $15
    ldh  a, [rSB]                                 ; $758C: $F0 $01
    sub  b                                        ; $758E: $90
    nop                                           ; $758F: $00
    dec  d                                        ; $7590: $15
    sub  b                                        ; $7591: $90
    ld   bc, $00E0                                ; $7592: $01 $E0 $00
    dec  d                                        ; $7595: $15
    or   b                                        ; $7596: $B0
    ld   bc, $0190                                ; $7597: $01 $90 $01
    dec  d                                        ; $759A: $15
    and  b                                        ; $759B: $A0
    ld   bc, $02A0                                ; $759C: $01 $A0 $02
    ld   d, $A8                                   ; $759F: $16 $A8
    ld   bc, $00A0                                ; $75A1: $01 $A0 $00
    rla                                           ; $75A4: $17
    cp   b                                        ; $75A5: $B8
    ld   bc, $00F0                                ; $75A6: $01 $F0 $00
    ld   d, $38                                   ; $75A9: $16 $38
    ld   bc, $00E0                                ; $75AB: $01 $E0 $00
    rla                                           ; $75AE: $17
    ld   e, b                                     ; $75AF: $58
    ld   bc, BootInit                             ; $75B0: $01 $50 $01
    add  hl, bc                                   ; $75B3: $09
    ld   c, b                                     ; $75B4: $48
    ld   bc, $02C0                                ; $75B5: $01 $C0 $02
    inc  c                                        ; $75B8: $0C
    ld   l, b                                     ; $75B9: $68
    ld   bc, $01D8                                ; $75BA: $01 $D8 $01
    inc  c                                        ; $75BD: $0C
    sbc  b                                        ; $75BE: $98
    ld   bc, $02D8                                ; $75BF: $01 $D8 $02
    inc  c                                        ; $75C2: $0C
    jr   jr_002_75C6                              ; $75C3: $18 $01

    ret  c                                        ; $75C5: $D8

jr_002_75C6:
    ld   [bc], a                                  ; $75C6: $02
    inc  sp                                       ; $75C7: $33
    xor  b                                        ; $75C8: $A8
    ld   bc, $0160                                ; $75C9: $01 $60 $01
    inc  sp                                       ; $75CC: $33
    sbc  b                                        ; $75CD: $98
    ld   bc, $02B0                                ; $75CE: $01 $B0 $02
    inc  sp                                       ; $75D1: $33
    add  sp, $01                                  ; $75D2: $E8 $01
    sub  b                                        ; $75D4: $90
    inc  bc                                       ; $75D5: $03
    inc  sp                                       ; $75D6: $33
    add  sp, $01                                  ; $75D7: $E8 $01
    ld   [hl], b                                  ; $75D9: $70
    inc  bc                                       ; $75DA: $03
    inc  h                                        ; $75DB: $24
    ld   [hl], b                                  ; $75DC: $70
    nop                                           ; $75DD: $00
    ret  c                                        ; $75DE: $D8

    inc  b                                        ; $75DF: $04
    ld   a, [hl-]                                 ; $75E0: $3A
    xor  b                                        ; $75E1: $A8
    nop                                           ; $75E2: $00
    jr   nc, jr_002_75E8                          ; $75E3: $30 $03

    ld   a, [hl-]                                 ; $75E5: $3A
    adc  b                                        ; $75E6: $88
    nop                                           ; $75E7: $00

jr_002_75E8:
    jr   nc, jr_002_75ED                          ; $75E8: $30 $03

    dec  sp                                       ; $75EA: $3B
    cp   b                                        ; $75EB: $B8
    nop                                           ; $75EC: $00

jr_002_75ED:
    ldh  a, [$FF03]                               ; $75ED: $F0 $03
    dec  sp                                       ; $75EF: $3B
    ld   [hl], b                                  ; $75F0: $70
    nop                                           ; $75F1: $00
    ldh  a, [$FF03]                               ; $75F2: $F0 $03
    dec  sp                                       ; $75F4: $3B
    ld   e, b                                     ; $75F5: $58
    nop                                           ; $75F6: $00
    ldh  a, [$FF03]                               ; $75F7: $F0 $03
    rst  RST_38                                   ; $75F9: $FF
    ld   a, $D8                                   ; $75FA: $3E $D8
    nop                                           ; $75FC: $00
    db   $10                                      ; $75FD: $10
    ld   bc, $283E                                ; $75FE: $01 $3E $28
    inc  bc                                       ; $7601: $03
    or   b                                        ; $7602: $B0
    nop                                           ; $7603: $00
    ld   a, $38                                   ; $7604: $3E $38
    ld   b, $20                                   ; $7606: $06 $20
    ld   [bc], a                                  ; $7608: $02
    ld   a, $68                                   ; $7609: $3E $68
    dec  b                                        ; $760B: $05
    and  b                                        ; $760C: $A0
    ld   bc, $283E                                ; $760D: $01 $3E $28
    ld   b, $50                                   ; $7610: $06 $50
    ld   [bc], a                                  ; $7612: $02
    ld   a, $78                                   ; $7613: $3E $78
    rlca                                          ; $7615: $07
    add  b                                        ; $7616: $80
    ld   bc, $A83E                                ; $7617: $01 $3E $A8
    inc  b                                        ; $761A: $04
    nop                                           ; $761B: $00
    ld   bc, $D83E                                ; $761C: $01 $3E $D8
    dec  b                                        ; $761F: $05
    jr   nz, @+$03                                ; $7620: $20 $01

    ld   a, $98                                   ; $7622: $3E $98
    dec  b                                        ; $7624: $05
    ret  nz                                       ; $7625: $C0

    ld   bc, $583D                                ; $7626: $01 $3D $58
    inc  b                                        ; $7629: $04
    ld   d, b                                     ; $762A: $50
    nop                                           ; $762B: $00
    dec  a                                        ; $762C: $3D
    cp   b                                        ; $762D: $B8
    ld   b, $70                                   ; $762E: $06 $70
    nop                                           ; $7630: $00
    dec  [hl]                                     ; $7631: $35
    jr   c, jr_002_7635                           ; $7632: $38 $01

    ld   b, b                                     ; $7634: $40

jr_002_7635:
    ld   bc, $6836                                ; $7635: $01 $36 $68
    ld   bc, $0110                                ; $7638: $01 $10 $01
    dec  [hl]                                     ; $763B: $35
    ret  z                                        ; $763C: $C8

jr_002_763D:
    ld   bc, $01C0                                ; $763D: $01 $C0 $01
    ld   [hl], $D8                                ; $7640: $36 $D8
    ld   [bc], a                                  ; $7642: $02
    ret  nc                                       ; $7643: $D0

    nop                                           ; $7644: $00
    dec  [hl]                                     ; $7645: $35
    ret  z                                        ; $7646: $C8

    inc  bc                                       ; $7647: $03
    jr   nz, jr_002_764B                          ; $7648: $20 $01

    rla                                           ; $764A: $17

jr_002_764B:
    ld   [$5004], sp                              ; $764B: $08 $04 $50
    nop                                           ; $764E: $00
    rla                                           ; $764F: $17
    ld   l, b                                     ; $7650: $68
    inc  b                                        ; $7651: $04
    ld   d, b                                     ; $7652: $50
    nop                                           ; $7653: $00
    scf                                           ; $7654: $37
    add  sp, $05                                  ; $7655: $E8 $05
    sub  b                                        ; $7657: $90
    nop                                           ; $7658: $00
    jr   c, @-$36                                 ; $7659: $38 $C8

    dec  b                                        ; $765B: $05
    add  b                                        ; $765C: $80
    nop                                           ; $765D: $00
    scf                                           ; $765E: $37
    ld   [$F006], sp                              ; $765F: $08 $06 $F0
    nop                                           ; $7662: $00
    jr   c, jr_002_763D                           ; $7663: $38 $D8

    dec  b                                        ; $7665: $05
    ld   h, b                                     ; $7666: $60
    ld   bc, $9838                                ; $7667: $01 $38 $98
    dec  b                                        ; $766A: $05
    add  b                                        ; $766B: $80
    ld   bc, $9837                                ; $766C: $01 $37 $98
    dec  b                                        ; $766F: $05
    nop                                           ; $7670: $00
    ld   [bc], a                                  ; $7671: $02
    add  hl, sp                                   ; $7672: $39
    ld   h, d                                     ; $7673: $62
    dec  b                                        ; $7674: $05
    jr   c, jr_002_7679                           ; $7675: $38 $02

    add  hl, sp                                   ; $7677: $39
    sub  d                                        ; $7678: $92

jr_002_7679:
    ld   b, $F8                                   ; $7679: $06 $F8
    ld   bc, $B825                                ; $767B: $01 $25 $B8
    ld   b, $88                                   ; $767E: $06 $88
    ld   bc, $B826                                ; $7680: $01 $26 $B8
    ld   b, $98                                   ; $7683: $06 $98
    ld   bc, $B826                                ; $7685: $01 $26 $B8
    ld   b, $A8                                   ; $7688: $06 $A8
    ld   bc, $B826                                ; $768A: $01 $26 $B8
    ld   b, $B8                                   ; $768D: $06 $B8
    ld   bc, $982E                                ; $768F: $01 $2E $98
    rlca                                          ; $7692: $07
    jr   @+$03                                    ; $7693: $18 $01

    ld   l, $E8                                   ; $7695: $2E $E8
    rlca                                          ; $7697: $07
    jr   c, jr_002_769B                           ; $7698: $38 $01

    ld   b, [hl]                                  ; $769A: $46

jr_002_769B:
    add  sp, $05                                  ; $769B: $E8 $05
    or   b                                        ; $769D: $B0
    ld   [bc], a                                  ; $769E: $02
    ld   b, a                                     ; $769F: $47
    ld   c, b                                     ; $76A0: $48
    ld   b, $B0                                   ; $76A1: $06 $B0
    ld   [bc], a                                  ; $76A3: $02
    rst  RST_38                                   ; $76A4: $FF
    jr   @-$58                                    ; $76A5: $18 $A6

    ld   [bc], a                                  ; $76A7: $02
    ld   h, b                                     ; $76A8: $60
    ld   b, $19                                   ; $76A9: $06 $19
    and  [hl]                                     ; $76AB: $A6
    ld   [bc], a                                  ; $76AC: $02
    ld   [hl], b                                  ; $76AD: $70
    ld   b, $1A                                   ; $76AE: $06 $1A
    and  [hl]                                     ; $76B0: $A6
    ld   [bc], a                                  ; $76B1: $02
    add  b                                        ; $76B2: $80
    ld   b, $1B                                   ; $76B3: $06 $1B
    ret  nz                                       ; $76B5: $C0

    ld   [bc], a                                  ; $76B6: $02
    ld   h, b                                     ; $76B7: $60
    dec  b                                        ; $76B8: $05
    inc  e                                        ; $76B9: $1C
    call nz, $A002                                ; $76BA: $C4 $02 $A0
    dec  b                                        ; $76BD: $05
    ld   c, b                                     ; $76BE: $48
    ld   e, b                                     ; $76BF: $58
    ld   [bc], a                                  ; $76C0: $02
    jr   c, jr_002_76C4                           ; $76C1: $38 $01

    ld   c, c                                     ; $76C3: $49

jr_002_76C4:
    sbc  b                                        ; $76C4: $98
    ld   [bc], a                                  ; $76C5: $02
    ld   [$4902], sp                              ; $76C6: $08 $02 $49
    jr   z, jr_002_76CC                           ; $76C9: $28 $01

    or   b                                        ; $76CB: $B0

jr_002_76CC:
    ld   [bc], a                                  ; $76CC: $02
    ld   c, c                                     ; $76CD: $49
    cp   b                                        ; $76CE: $B8
    ld   bc, $03B0                                ; $76CF: $01 $B0 $03
    ld   c, c                                     ; $76D2: $49
    jr   c, jr_002_76D7                           ; $76D3: $38 $02

    ldh  a, [$FF03]                               ; $76D5: $F0 $03

jr_002_76D7:
    ld   c, d                                     ; $76D7: $4A
    jr   nz, jr_002_76DB                          ; $76D8: $20 $01

    ret  nc                                       ; $76DA: $D0

jr_002_76DB:
    ld   [bc], a                                  ; $76DB: $02
    inc  sp                                       ; $76DC: $33
    xor  b                                        ; $76DD: $A8
    nop                                           ; $76DE: $00
    ret  nz                                       ; $76DF: $C0

    nop                                           ; $76E0: $00
    inc  sp                                       ; $76E1: $33
    xor  b                                        ; $76E2: $A8
    nop                                           ; $76E3: $00
    sub  b                                        ; $76E4: $90
    nop                                           ; $76E5: $00
    inc  sp                                       ; $76E6: $33
    xor  b                                        ; $76E7: $A8
    ld   bc, $0200                                ; $76E8: $01 $00 $02
    inc  sp                                       ; $76EB: $33
    xor  b                                        ; $76EC: $A8
    ld   bc, $01D0                                ; $76ED: $01 $D0 $01
    dec  b                                        ; $76F0: $05
    sbc  b                                        ; $76F1: $98
    nop                                           ; $76F2: $00
    nop                                           ; $76F3: $00
    ld   bc, $8805                                ; $76F4: $01 $05 $88
    nop                                           ; $76F7: $00
    ld   [hl], b                                  ; $76F8: $70
    ld   bc, $A805                                ; $76F9: $01 $05 $A8
    nop                                           ; $76FC: $00
    ret  nz                                       ; $76FD: $C0

    ld   bc, $A805                                ; $76FE: $01 $05 $A8
    nop                                           ; $7701: $00
    db   $10                                      ; $7702: $10
    ld   [bc], a                                  ; $7703: $02
    ld   b, b                                     ; $7704: $40
    sbc  b                                        ; $7705: $98
    ld   bc, $00C0                                ; $7706: $01 $C0 $00
    ld   b, c                                     ; $7709: $41
    ld   [$D002], sp                              ; $770A: $08 $02 $D0
    nop                                           ; $770D: $00
    ld   b, b                                     ; $770E: $40
    ld   c, b                                     ; $770F: $48
    ld   [bc], a                                  ; $7710: $02
    ret  nz                                       ; $7711: $C0

    nop                                           ; $7712: $00
    ld   b, c                                     ; $7713: $41
    adc  b                                        ; $7714: $88
    ld   [bc], a                                  ; $7715: $02
    ret  nc                                       ; $7716: $D0

    nop                                           ; $7717: $00
    ld   b, b                                     ; $7718: $40
    ret  z                                        ; $7719: $C8

    ld   bc, $02B0                                ; $771A: $01 $B0 $02
    ld   b, b                                     ; $771D: $40
    jr   z, jr_002_7722                           ; $771E: $28 $02

    ldh  a, [$FF03]                               ; $7720: $F0 $03

jr_002_7722:
    ld   b, e                                     ; $7722: $43
    ld   a, [bc]                                  ; $7723: $0A
    ld   [bc], a                                  ; $7724: $02
    ld   d, b                                     ; $7725: $50
    ld   bc, $0A43                                ; $7726: $01 $43 $0A
    ld   [bc], a                                  ; $7729: $02
    ld   h, b                                     ; $772A: $60
    ld   bc, $0A43                                ; $772B: $01 $43 $0A
    ld   [bc], a                                  ; $772E: $02
    ld   [hl], b                                  ; $772F: $70
    ld   bc, $0A43                                ; $7730: $01 $43 $0A
    ld   [bc], a                                  ; $7733: $02
    add  b                                        ; $7734: $80
    ld   bc, $0A43                                ; $7735: $01 $43 $0A
    ld   [bc], a                                  ; $7738: $02
    sub  b                                        ; $7739: $90
    ld   bc, $0A43                                ; $773A: $01 $43 $0A
    ld   [bc], a                                  ; $773D: $02
    and  b                                        ; $773E: $A0
    ld   bc, $0A43                                ; $773F: $01 $43 $0A
    ld   [bc], a                                  ; $7742: $02
    or   b                                        ; $7743: $B0
    ld   bc, $0A43                                ; $7744: $01 $43 $0A
    ld   [bc], a                                  ; $7747: $02
    ret  nz                                       ; $7748: $C0

    ld   bc, $9A43                                ; $7749: $01 $43 $9A
    ld   [bc], a                                  ; $774C: $02
    db   $10                                      ; $774D: $10
    inc  b                                        ; $774E: $04
    ld   b, e                                     ; $774F: $43
    sbc  d                                        ; $7750: $9A
    ld   [bc], a                                  ; $7751: $02
    jr   nz, @+$06                                ; $7752: $20 $04

    ld   b, e                                     ; $7754: $43
    ld   a, d                                     ; $7755: $7A
    ld   [bc], a                                  ; $7756: $02
    jr   nc, jr_002_775D                          ; $7757: $30 $04

    ld   b, e                                     ; $7759: $43
    ld   a, d                                     ; $775A: $7A
    ld   [bc], a                                  ; $775B: $02
    ld   b, b                                     ; $775C: $40

jr_002_775D:
    inc  b                                        ; $775D: $04
    ld   b, e                                     ; $775E: $43
    ld   e, d                                     ; $775F: $5A
    ld   [bc], a                                  ; $7760: $02
    ld   d, b                                     ; $7761: $50
    inc  b                                        ; $7762: $04
    ld   b, e                                     ; $7763: $43
    ld   e, d                                     ; $7764: $5A
    ld   [bc], a                                  ; $7765: $02
    ld   h, b                                     ; $7766: $60
    inc  b                                        ; $7767: $04
    ld   b, e                                     ; $7768: $43
    ld   a, [hl-]                                 ; $7769: $3A
    ld   [bc], a                                  ; $776A: $02
    ld   [hl], b                                  ; $776B: $70
    inc  b                                        ; $776C: $04
    ld   b, e                                     ; $776D: $43
    ld   a, [hl-]                                 ; $776E: $3A
    ld   [bc], a                                  ; $776F: $02
    add  b                                        ; $7770: $80
    inc  b                                        ; $7771: $04
    ld   b, h                                     ; $7772: $44
    ld   e, b                                     ; $7773: $58
    ld   [bc], a                                  ; $7774: $02
    db   $10                                      ; $7775: $10
    ld   [bc], a                                  ; $7776: $02
    ld   b, h                                     ; $7777: $44
    ld   a, b                                     ; $7778: $78
    ld   [bc], a                                  ; $7779: $02
    jr   nc, @+$04                                ; $777A: $30 $02

    ld   [bc], a                                  ; $777C: $02
    add  sp, $02                                  ; $777D: $E8 $02
    db   $10                                      ; $777F: $10
    ld   [bc], a                                  ; $7780: $02
    ld   [bc], a                                  ; $7781: $02
    add  sp, $02                                  ; $7782: $E8 $02
    jr   nc, @+$04                                ; $7784: $30 $02

    ld   [bc], a                                  ; $7786: $02
    add  sp, $02                                  ; $7787: $E8 $02
    ld   d, b                                     ; $7789: $50
    ld   [bc], a                                  ; $778A: $02
    ld   [bc], a                                  ; $778B: $02
    add  sp, $02                                  ; $778C: $E8 $02
    ld   [hl], b                                  ; $778E: $70
    ld   [bc], a                                  ; $778F: $02
    add  hl, sp                                   ; $7790: $39
    xor  b                                        ; $7791: $A8
    ld   [bc], a                                  ; $7792: $02
    ret  nc                                       ; $7793: $D0

    ld   [bc], a                                  ; $7794: $02
    add  hl, sp                                   ; $7795: $39
    xor  b                                        ; $7796: $A8
    ld   bc, $02F8                                ; $7797: $01 $F8 $02
    add  hl, sp                                   ; $779A: $39
    ret  z                                        ; $779B: $C8

    ld   [bc], a                                  ; $779C: $02
    db   $10                                      ; $779D: $10
    dec  b                                        ; $779E: $05
    daa                                           ; $779F: $27
    jr   nz, jr_002_77A3                          ; $77A0: $20 $01

    sbc  b                                        ; $77A2: $98

jr_002_77A3:
    inc  bc                                       ; $77A3: $03
    inc  de                                       ; $77A4: $13
    ld   hl, sp+$02                               ; $77A5: $F8 $02
    ret  c                                        ; $77A7: $D8

    inc  bc                                       ; $77A8: $03
    inc  de                                       ; $77A9: $13
    sbc  b                                        ; $77AA: $98
    ld   bc, $0438                                ; $77AB: $01 $38 $04
    inc  d                                        ; $77AE: $14
    ldh  [rSC], a                                 ; $77AF: $E0 $02
    cp   b                                        ; $77B1: $B8
    inc  bc                                       ; $77B2: $03
    inc  d                                        ; $77B3: $14
    ld   h, b                                     ; $77B4: $60
    ld   bc, $0458                                ; $77B5: $01 $58 $04
    dec  a                                        ; $77B8: $3D
    jr   jr_002_77BD                              ; $77B9: $18 $02

    jr   nc, jr_002_77BE                          ; $77BB: $30 $01

jr_002_77BD:
    dec  a                                        ; $77BD: $3D

jr_002_77BE:
    jr   z, jr_002_77C1                           ; $77BE: $28 $01

    or   b                                        ; $77C0: $B0

jr_002_77C1:
    inc  bc                                       ; $77C1: $03
    dec  a                                        ; $77C2: $3D
    ld   l, b                                     ; $77C3: $68
    ld   [bc], a                                  ; $77C4: $02
    or   b                                        ; $77C5: $B0
    dec  b                                        ; $77C6: $05
    rst  RST_38                                   ; $77C7: $FF
    dec  e                                        ; $77C8: $1D
    ret  z                                        ; $77C9: $C8

    nop                                           ; $77CA: $00
    ld   b, b                                     ; $77CB: $40
    ld   bc, $C81D                                ; $77CC: $01 $1D $C8
    nop                                           ; $77CF: $00
    ld   b, b                                     ; $77D0: $40
    rst  RST_38                                   ; $77D1: $FF
    ld   e, $40                                   ; $77D2: $1E $40
    ld   [bc], a                                  ; $77D4: $02
    ld   hl, sp+$00                               ; $77D5: $F8 $00
    ld   e, $40                                   ; $77D7: $1E $40
    ld   [bc], a                                  ; $77D9: $02
    ld   hl, sp+$02                               ; $77DA: $F8 $02
    rra                                           ; $77DC: $1F
    add  b                                        ; $77DD: $80
    ld   [bc], a                                  ; $77DE: $02
    sbc  b                                        ; $77DF: $98
    nop                                           ; $77E0: $00
    rra                                           ; $77E1: $1F
    add  b                                        ; $77E2: $80
    ld   [bc], a                                  ; $77E3: $02
    sbc  b                                        ; $77E4: $98
    ld   [bc], a                                  ; $77E5: $02
    rra                                           ; $77E6: $1F
    add  b                                        ; $77E7: $80
    ld   [bc], a                                  ; $77E8: $02
    ret  c                                        ; $77E9: $D8

    nop                                           ; $77EA: $00
    rra                                           ; $77EB: $1F
    add  b                                        ; $77EC: $80
    ld   [bc], a                                  ; $77ED: $02
    ret  c                                        ; $77EE: $D8

    ld   [bc], a                                  ; $77EF: $02
    rra                                           ; $77F0: $1F
    add  b                                        ; $77F1: $80
    ld   [bc], a                                  ; $77F2: $02
    cp   b                                        ; $77F3: $B8
    nop                                           ; $77F4: $00
    rra                                           ; $77F5: $1F
    add  b                                        ; $77F6: $80
    ld   [bc], a                                  ; $77F7: $02
    cp   b                                        ; $77F8: $B8
    ld   [bc], a                                  ; $77F9: $02
    jr   nz, jr_002_7854                          ; $77FA: $20 $58

    inc  b                                        ; $77FC: $04
    jr   jr_002_77FF                              ; $77FD: $18 $00

jr_002_77FF:
    jr   nz, jr_002_7859                          ; $77FF: $20 $58

    inc  b                                        ; $7801: $04
    jr   jr_002_7806                              ; $7802: $18 $02

    jr   nz, jr_002_785E                          ; $7804: $20 $58

jr_002_7806:
    inc  b                                        ; $7806: $04
    ld   hl, sp+$01                               ; $7807: $F8 $01
    jr   nz, jr_002_7863                          ; $7809: $20 $58

    inc  b                                        ; $780B: $04
    ld   hl, sp-$01                               ; $780C: $F8 $FF
    ld   hl, $0488                                ; $780E: $21 $88 $04
    jr   jr_002_7813                              ; $7811: $18 $00

jr_002_7813:
    ld   hl, $0488                                ; $7813: $21 $88 $04
    jr   @+$04                                    ; $7816: $18 $02

    ld   hl, $0488                                ; $7818: $21 $88 $04
    ld   hl, sp+$01                               ; $781B: $F8 $01
    ld   hl, $0488                                ; $781D: $21 $88 $04
    ld   hl, sp-$01                               ; $7820: $F8 $FF
    dec  [hl]                                     ; $7822: $35
    ld   e, b                                     ; $7823: $58
    ld   b, $A0                                   ; $7824: $06 $A0
    nop                                           ; $7826: $00
    dec  [hl]                                     ; $7827: $35
    ld   e, b                                     ; $7828: $58
    ld   b, $A0                                   ; $7829: $06 $A0
    ld   [bc], a                                  ; $782B: $02
    dec  [hl]                                     ; $782C: $35
    jr   jr_002_7835                              ; $782D: $18 $06

    and  b                                        ; $782F: $A0
    nop                                           ; $7830: $00
    dec  [hl]                                     ; $7831: $35
    jr   jr_002_783A                              ; $7832: $18 $06

    and  b                                        ; $7834: $A0

jr_002_7835:
    ld   [bc], a                                  ; $7835: $02
    dec  [hl]                                     ; $7836: $35
    sbc  b                                        ; $7837: $98
    inc  b                                        ; $7838: $04
    ld   [hl], b                                  ; $7839: $70

jr_002_783A:
    nop                                           ; $783A: $00
    dec  [hl]                                     ; $783B: $35
    sbc  b                                        ; $783C: $98
    inc  b                                        ; $783D: $04
    ld   [hl], b                                  ; $783E: $70
    ld   [bc], a                                  ; $783F: $02
    dec  [hl]                                     ; $7840: $35
    ld   e, b                                     ; $7841: $58
    inc  b                                        ; $7842: $04
    ldh  a, [rSB]                                 ; $7843: $F0 $01
    dec  [hl]                                     ; $7845: $35
    ld   e, b                                     ; $7846: $58
    inc  b                                        ; $7847: $04
    ldh  a, [rIE]                                 ; $7848: $F0 $FF
    dec  [hl]                                     ; $784A: $35
    jr   @+$06                                    ; $784B: $18 $04

    ldh  a, [rSB]                                 ; $784D: $F0 $01
    dec  [hl]                                     ; $784F: $35
    jr   jr_002_7856                              ; $7850: $18 $04

    ldh  a, [rIE]                                 ; $7852: $F0 $FF

jr_002_7854:
    dec  b                                        ; $7854: $05
    ld   l, b                                     ; $7855: $68

jr_002_7856:
    rlca                                          ; $7856: $07
    sub  b                                        ; $7857: $90
    nop                                           ; $7858: $00

jr_002_7859:
    dec  b                                        ; $7859: $05
    ld   l, b                                     ; $785A: $68
    rlca                                          ; $785B: $07
    sub  b                                        ; $785C: $90
    ld   [bc], a                                  ; $785D: $02

jr_002_785E:
    dec  b                                        ; $785E: $05
    ld   c, b                                     ; $785F: $48
    rlca                                          ; $7860: $07
    sub  b                                        ; $7861: $90
    nop                                           ; $7862: $00

jr_002_7863:
    dec  b                                        ; $7863: $05
    ld   c, b                                     ; $7864: $48
    rlca                                          ; $7865: $07
    sub  b                                        ; $7866: $90
    ld   [bc], a                                  ; $7867: $02
    dec  b                                        ; $7868: $05
    ld   l, b                                     ; $7869: $68
    rlca                                          ; $786A: $07
    ret  nz                                       ; $786B: $C0

    ld   bc, $6805                                ; $786C: $01 $05 $68
    rlca                                          ; $786F: $07
    ret  nz                                       ; $7870: $C0

    rst  RST_38                                   ; $7871: $FF
    dec  b                                        ; $7872: $05
    ld   [$9007], sp                              ; $7873: $08 $07 $90
    ld   bc, $0805                                ; $7876: $01 $05 $08
    rlca                                          ; $7879: $07
    sub  b                                        ; $787A: $90
    rst  RST_38                                   ; $787B: $FF
    dec  b                                        ; $787C: $05
    jr   c, jr_002_7884                           ; $787D: $38 $05

    jr   nc, jr_002_7882                          ; $787F: $30 $01

    dec  b                                        ; $7881: $05

jr_002_7882:
    jr   c, jr_002_7889                           ; $7882: $38 $05

jr_002_7884:
    jr   nc, @+$01                                ; $7884: $30 $FF

    dec  b                                        ; $7886: $05
    sbc  b                                        ; $7887: $98
    inc  b                                        ; $7888: $04

jr_002_7889:
    jr   nz, jr_002_788C                          ; $7889: $20 $01

    dec  b                                        ; $788B: $05

jr_002_788C:
    sbc  b                                        ; $788C: $98
    inc  b                                        ; $788D: $04
    jr   nz, @+$01                                ; $788E: $20 $FF

    ld   c, h                                     ; $7890: $4C
    ld   hl, sp+$00                               ; $7891: $F8 $00
    sub  b                                        ; $7893: $90
    nop                                           ; $7894: $00
    ld   c, h                                     ; $7895: $4C
    ld   hl, sp+$00                               ; $7896: $F8 $00
    sub  b                                        ; $7898: $90
    ld   [bc], a                                  ; $7899: $02
    ld   c, h                                     ; $789A: $4C
    ret  z                                        ; $789B: $C8

    nop                                           ; $789C: $00
    ld   b, b                                     ; $789D: $40
    ld   bc, $C84C                                ; $789E: $01 $4C $C8
    nop                                           ; $78A1: $00
    ld   b, b                                     ; $78A2: $40
    rst  RST_38                                   ; $78A3: $FF
    dec  a                                        ; $78A4: $3D
    sbc  b                                        ; $78A5: $98
    dec  b                                        ; $78A6: $05
    nop                                           ; $78A7: $00
    ld   bc, $983D                                ; $78A8: $01 $3D $98
    dec  b                                        ; $78AB: $05
    nop                                           ; $78AC: $00
    rst  RST_38                                   ; $78AD: $FF
    rst  RST_38                                   ; $78AE: $FF
    inc  bc                                       ; $78AF: $03
    db   $E4                                      ; $78B0: $E4
    nop                                           ; $78B1: $00
    ld   [hl], b                                  ; $78B2: $70
    ld   bc, $E403                                ; $78B3: $01 $03 $E4
    nop                                           ; $78B6: $00
    add  b                                        ; $78B7: $80
    ld   bc, $E403                                ; $78B8: $01 $03 $E4
    nop                                           ; $78BB: $00
    or   b                                        ; $78BC: $B0
    ld   bc, $E403                                ; $78BD: $01 $03 $E4
    nop                                           ; $78C0: $00
    ret  nz                                       ; $78C1: $C0

    ld   bc, $E403                                ; $78C2: $01 $03 $E4
    nop                                           ; $78C5: $00
    ldh  a, [rSB]                                 ; $78C6: $F0 $01
    inc  bc                                       ; $78C8: $03
    db   $E4                                      ; $78C9: $E4
    nop                                           ; $78CA: $00
    nop                                           ; $78CB: $00
    ld   [bc], a                                  ; $78CC: $02
    inc  bc                                       ; $78CD: $03
    db   $E4                                      ; $78CE: $E4
    nop                                           ; $78CF: $00
    ld   d, b                                     ; $78D0: $50
    ld   [bc], a                                  ; $78D1: $02
    inc  bc                                       ; $78D2: $03
    db   $E4                                      ; $78D3: $E4
    nop                                           ; $78D4: $00
    ld   h, b                                     ; $78D5: $60
    ld   [bc], a                                  ; $78D6: $02
    inc  bc                                       ; $78D7: $03
    db   $E4                                      ; $78D8: $E4
    nop                                           ; $78D9: $00
    ld   [hl], b                                  ; $78DA: $70
    ld   [bc], a                                  ; $78DB: $02
    inc  bc                                       ; $78DC: $03
    db   $E4                                      ; $78DD: $E4
    nop                                           ; $78DE: $00
    and  b                                        ; $78DF: $A0
    ld   [bc], a                                  ; $78E0: $02
    inc  bc                                       ; $78E1: $03
    db   $E4                                      ; $78E2: $E4
    nop                                           ; $78E3: $00
    or   b                                        ; $78E4: $B0
    ld   [bc], a                                  ; $78E5: $02
    inc  bc                                       ; $78E6: $03
    db   $E4                                      ; $78E7: $E4
    nop                                           ; $78E8: $00
    ret  nz                                       ; $78E9: $C0

    ld   [bc], a                                  ; $78EA: $02
    inc  bc                                       ; $78EB: $03
    db   $E4                                      ; $78EC: $E4
    nop                                           ; $78ED: $00
    ret  nc                                       ; $78EE: $D0

jr_002_78EF:
    ld   [bc], a                                  ; $78EF: $02
    inc  bc                                       ; $78F0: $03
    db   $E4                                      ; $78F1: $E4
    nop                                           ; $78F2: $00
    ldh  [rSC], a                                 ; $78F3: $E0 $02
    add  hl, hl                                   ; $78F5: $29
    ldh  a, [rP1]                                 ; $78F6: $F0 $00
    sub  b                                        ; $78F8: $90
    ld   bc, $F029                                ; $78F9: $01 $29 $F0
    nop                                           ; $78FC: $00
    sub  b                                        ; $78FD: $90
    ld   [bc], a                                  ; $78FE: $02
    rst  RST_38                                   ; $78FF: $FF
    scf                                           ; $7900: $37
    cp   b                                        ; $7901: $B8
    ld   [bc], a                                  ; $7902: $02
    ldh  [rP1], a                                 ; $7903: $E0 $00
    jr   c, jr_002_78EF                           ; $7905: $38 $E8

    ld   [bc], a                                  ; $7907: $02
    add  b                                        ; $7908: $80
    ld   bc, $B837                                ; $7909: $01 $37 $B8
    ld   [bc], a                                  ; $790C: $02
    or   b                                        ; $790D: $B0
    ld   bc, $03FF                                ; $790E: $01 $FF $03
    db   $E4                                      ; $7911: $E4
    nop                                           ; $7912: $00
    jr   nc, jr_002_7916                          ; $7913: $30 $01

    inc  bc                                       ; $7915: $03

jr_002_7916:
    db   $E4                                      ; $7916: $E4
    nop                                           ; $7917: $00
    ld   b, b                                     ; $7918: $40
    ld   bc, $E403                                ; $7919: $01 $03 $E4
    nop                                           ; $791C: $00
    ld   d, b                                     ; $791D: $50
    ld   bc, $E403                                ; $791E: $01 $03 $E4
    nop                                           ; $7921: $00
    ld   h, b                                     ; $7922: $60
    ld   bc, $E403                                ; $7923: $01 $03 $E4
    nop                                           ; $7926: $00
    ld   [hl], b                                  ; $7927: $70
    ld   bc, $E403                                ; $7928: $01 $03 $E4
    nop                                           ; $792B: $00
    ret  nz                                       ; $792C: $C0

    ld   bc, $E403                                ; $792D: $01 $03 $E4
    nop                                           ; $7930: $00
    ret  nc                                       ; $7931: $D0

    ld   bc, $F403                                ; $7932: $01 $03 $F4
    nop                                           ; $7935: $00
    ld   d, b                                     ; $7936: $50
    ld   [bc], a                                  ; $7937: $02
    inc  bc                                       ; $7938: $03
    db   $F4                                      ; $7939: $F4
    nop                                           ; $793A: $00
    ld   h, b                                     ; $793B: $60
    ld   [bc], a                                  ; $793C: $02
    inc  bc                                       ; $793D: $03
    db   $F4                                      ; $793E: $F4
    nop                                           ; $793F: $00
    ld   [hl], b                                  ; $7940: $70
    ld   [bc], a                                  ; $7941: $02
    inc  bc                                       ; $7942: $03
    db   $F4                                      ; $7943: $F4
    nop                                           ; $7944: $00
    add  b                                        ; $7945: $80
    ld   [bc], a                                  ; $7946: $02
    inc  bc                                       ; $7947: $03
    db   $E4                                      ; $7948: $E4
    nop                                           ; $7949: $00
    ret  nz                                       ; $794A: $C0

    ld   [bc], a                                  ; $794B: $02
    inc  bc                                       ; $794C: $03
    db   $E4                                      ; $794D: $E4
    nop                                           ; $794E: $00
    ret  nc                                       ; $794F: $D0

    ld   [bc], a                                  ; $7950: $02
    inc  bc                                       ; $7951: $03
    call nz, $E000                                ; $7952: $C4 $00 $E0
    ld   [bc], a                                  ; $7955: $02
    inc  bc                                       ; $7956: $03
    call nz, $F000                                ; $7957: $C4 $00 $F0
    ld   [bc], a                                  ; $795A: $02
    dec  a                                        ; $795B: $3D
    sbc  b                                        ; $795C: $98
    nop                                           ; $795D: $00
    jr   nc, jr_002_7963                          ; $795E: $30 $03

    rst  RST_38                                   ; $7960: $FF
    ld   [hl+], a                                 ; $7961: $22
    ld   [hl], h                                  ; $7962: $74

jr_002_7963:
    nop                                           ; $7963: $00
    or   b                                        ; $7964: $B0
    nop                                           ; $7965: $00
    ld   [hl+], a                                 ; $7966: $22
    ld   [hl], h                                  ; $7967: $74
    nop                                           ; $7968: $00
    and  b                                        ; $7969: $A0
    nop                                           ; $796A: $00
    ld   [hl+], a                                 ; $796B: $22
    db   $E4                                      ; $796C: $E4
    nop                                           ; $796D: $00
    ldh  a, [rP1]                                 ; $796E: $F0 $00
    ld   [hl+], a                                 ; $7970: $22
    db   $E4                                      ; $7971: $E4
    nop                                           ; $7972: $00
    ret  nc                                       ; $7973: $D0

    nop                                           ; $7974: $00
    ld   [hl+], a                                 ; $7975: $22
    ld   b, h                                     ; $7976: $44
    ld   bc, $00E0                                ; $7977: $01 $E0 $00
    dec  [hl]                                     ; $797A: $35
    ret  z                                        ; $797B: $C8

    nop                                           ; $797C: $00
    ret  nz                                       ; $797D: $C0

    nop                                           ; $797E: $00
    dec  [hl]                                     ; $797F: $35
    jr   @+$03                                    ; $7980: $18 $01

    ldh  [rP1], a                                 ; $7982: $E0 $00
    dec  [hl]                                     ; $7984: $35
    jr   jr_002_7988                              ; $7985: $18 $01

    ret  nz                                       ; $7987: $C0

jr_002_7988:
    nop                                           ; $7988: $00
    ld   [hl], $98                                ; $7989: $36 $98
    ld   bc, $00C0                                ; $798B: $01 $C0 $00
    ld   [bc], a                                  ; $798E: $02
    add  sp, $02                                  ; $798F: $E8 $02
    ret  nz                                       ; $7991: $C0

    nop                                           ; $7992: $00
    ld   [bc], a                                  ; $7993: $02
    add  sp, $02                                  ; $7994: $E8 $02
    jr   nc, jr_002_7999                          ; $7996: $30 $01

    ld   [bc], a                                  ; $7998: $02

jr_002_7999:
    xor  b                                        ; $7999: $A8
    ld   [bc], a                                  ; $799A: $02
    and  b                                        ; $799B: $A0
    ld   bc, $5808                                ; $799C: $01 $08 $58
    ld   [bc], a                                  ; $799F: $02
    ld   [hl], b                                  ; $79A0: $70
    ld   bc, $03FF                                ; $79A1: $01 $FF $03
    db   $F4                                      ; $79A4: $F4
    nop                                           ; $79A5: $00
    ret  nc                                       ; $79A6: $D0

    ld   bc, $F403                                ; $79A7: $01 $03 $F4
    nop                                           ; $79AA: $00
    ldh  [rSB], a                                 ; $79AB: $E0 $01
    inc  bc                                       ; $79AD: $03
    db   $F4                                      ; $79AE: $F4
    nop                                           ; $79AF: $00
    ldh  a, [rSB]                                 ; $79B0: $F0 $01
    inc  bc                                       ; $79B2: $03
    db   $F4                                      ; $79B3: $F4
    nop                                           ; $79B4: $00
    nop                                           ; $79B5: $00
    ld   [bc], a                                  ; $79B6: $02
    inc  bc                                       ; $79B7: $03
    db   $F4                                      ; $79B8: $F4
    nop                                           ; $79B9: $00
    db   $10                                      ; $79BA: $10
    ld   [bc], a                                  ; $79BB: $02
    inc  bc                                       ; $79BC: $03
    db   $F4                                      ; $79BD: $F4
    nop                                           ; $79BE: $00
    jr   nz, jr_002_79C3                          ; $79BF: $20 $02

    dec  b                                        ; $79C1: $05
    ld   a, b                                     ; $79C2: $78

jr_002_79C3:
    nop                                           ; $79C3: $00
    stop                                          ; $79C4: $10 $00
    dec  b                                        ; $79C6: $05
    sbc  b                                        ; $79C7: $98
    nop                                           ; $79C8: $00
    jr   nc, jr_002_79CB                          ; $79C9: $30 $00

jr_002_79CB:
    dec  b                                        ; $79CB: $05
    adc  b                                        ; $79CC: $88
    nop                                           ; $79CD: $00
    nop                                           ; $79CE: $00
    ld   [bc], a                                  ; $79CF: $02
    dec  b                                        ; $79D0: $05
    ld   a, b                                     ; $79D1: $78
    nop                                           ; $79D2: $00
    nop                                           ; $79D3: $00
    ld   [bc], a                                  ; $79D4: $02
    dec  b                                        ; $79D5: $05
    adc  b                                        ; $79D6: $88
    nop                                           ; $79D7: $00
    ld   [hl], b                                  ; $79D8: $70
    ld   [bc], a                                  ; $79D9: $02
    dec  b                                        ; $79DA: $05
    ld   a, b                                     ; $79DB: $78
    nop                                           ; $79DC: $00
    or   b                                        ; $79DD: $B0
    inc  bc                                       ; $79DE: $03
    dec  b                                        ; $79DF: $05
    adc  b                                        ; $79E0: $88
    nop                                           ; $79E1: $00
    or   b                                        ; $79E2: $B0
    inc  bc                                       ; $79E3: $03
    ld   [bc], a                                  ; $79E4: $02
    adc  b                                        ; $79E5: $88
    nop                                           ; $79E6: $00
    ret  nc                                       ; $79E7: $D0

    ld   [bc], a                                  ; $79E8: $02
    ld   [bc], a                                  ; $79E9: $02
    cp   b                                        ; $79EA: $B8
    nop                                           ; $79EB: $00
    ld   [hl], b                                  ; $79EC: $70
    inc  bc                                       ; $79ED: $03
    ld   [bc], a                                  ; $79EE: $02
    cp   b                                        ; $79EF: $B8
    nop                                           ; $79F0: $00
    ret  nc                                       ; $79F1: $D0

    inc  bc                                       ; $79F2: $03
    ld   [bc], a                                  ; $79F3: $02
    sbc  b                                        ; $79F4: $98
    nop                                           ; $79F5: $00
    jr   nz, jr_002_79FC                          ; $79F6: $20 $04

    rst  RST_38                                   ; $79F8: $FF
    inc  h                                        ; $79F9: $24
    jr   z, @+$03                                 ; $79FA: $28 $01

jr_002_79FC:
    ldh  a, [rP1]                                 ; $79FC: $F0 $00
    inc  h                                        ; $79FE: $24
    ld   e, b                                     ; $79FF: $58
    ld   bc, $0280                                ; $7A00: $01 $80 $02
    inc  h                                        ; $7A03: $24
    jr   c, @+$03                                 ; $7A04: $38 $01

    ldh  a, [$FF03]                               ; $7A06: $F0 $03
    rst  RST_38                                   ; $7A08: $FF
    dec  h                                        ; $7A09: $25
    ld   a, b                                     ; $7A0A: $78
    ld   bc, $00B8                                ; $7A0B: $01 $B8 $00
    ld   h, $78                                   ; $7A0E: $26 $78
    ld   bc, $00C8                                ; $7A10: $01 $C8 $00
    ld   h, $78                                   ; $7A13: $26 $78
    ld   bc, $00D8                                ; $7A15: $01 $D8 $00
    ld   h, $78                                   ; $7A18: $26 $78
    ld   bc, $00E8                                ; $7A1A: $01 $E8 $00
    dec  h                                        ; $7A1D: $25
    ld   l, b                                     ; $7A1E: $68
    ld   [bc], a                                  ; $7A1F: $02
    jr   c, jr_002_7A22                           ; $7A20: $38 $00

jr_002_7A22:
    ld   h, $68                                   ; $7A22: $26 $68
    ld   [bc], a                                  ; $7A24: $02
    ld   c, b                                     ; $7A25: $48
    nop                                           ; $7A26: $00
    ld   h, $68                                   ; $7A27: $26 $68
    ld   [bc], a                                  ; $7A29: $02
    ld   e, b                                     ; $7A2A: $58
    nop                                           ; $7A2B: $00
    ld   h, $68                                   ; $7A2C: $26 $68
    ld   [bc], a                                  ; $7A2E: $02
    ld   l, b                                     ; $7A2F: $68
    nop                                           ; $7A30: $00
    dec  h                                        ; $7A31: $25
    jr   z, jr_002_7A35                           ; $7A32: $28 $01

    ld   h, b                                     ; $7A34: $60

jr_002_7A35:
    ld   bc, $2826                                ; $7A35: $01 $26 $28
    ld   bc, $0170                                ; $7A38: $01 $70 $01
    ld   h, $28                                   ; $7A3B: $26 $28
    ld   bc, $0180                                ; $7A3D: $01 $80 $01
    ld   h, $28                                   ; $7A40: $26 $28
    ld   bc, $0190                                ; $7A42: $01 $90 $01
    ld   a, $68                                   ; $7A45: $3E $68
    nop                                           ; $7A47: $00
    and  b                                        ; $7A48: $A0
    nop                                           ; $7A49: $00
    dec  a                                        ; $7A4A: $3D
    ld   c, b                                     ; $7A4B: $48
    ld   bc, $00B0                                ; $7A4C: $01 $B0 $00
    ld   a, $28                                   ; $7A4F: $3E $28
    ld   [bc], a                                  ; $7A51: $02
    jr   nc, jr_002_7A54                          ; $7A52: $30 $00

jr_002_7A54:
    ld   a, $38                                   ; $7A54: $3E $38
    ld   [bc], a                                  ; $7A56: $02
    ld   h, b                                     ; $7A57: $60
    ld   bc, $283D                                ; $7A58: $01 $3D $28
    ld   bc, BootInit                             ; $7A5B: $01 $50 $01
    rst  RST_38                                   ; $7A5E: $FF
    inc  b                                        ; $7A5F: $04
    ld   h, h                                     ; $7A60: $64
    nop                                           ; $7A61: $00
    ldh  [rP1], a                                 ; $7A62: $E0 $00
    inc  b                                        ; $7A64: $04
    ld   h, h                                     ; $7A65: $64
    nop                                           ; $7A66: $00
    ret  nz                                       ; $7A67: $C0

    nop                                           ; $7A68: $00
    inc  b                                        ; $7A69: $04
    ld   b, h                                     ; $7A6A: $44
    nop                                           ; $7A6B: $00
    adc  b                                        ; $7A6C: $88
    nop                                           ; $7A6D: $00
    inc  b                                        ; $7A6E: $04
    ld   h, h                                     ; $7A6F: $64
    nop                                           ; $7A70: $00
    ld   l, b                                     ; $7A71: $68
    nop                                           ; $7A72: $00
    inc  b                                        ; $7A73: $04
    ld   h, h                                     ; $7A74: $64
    nop                                           ; $7A75: $00
    ld   e, b                                     ; $7A76: $58
    nop                                           ; $7A77: $00
    rst  RST_38                                   ; $7A78: $FF
    ld   [hl+], a                                 ; $7A79: $22
    call nc, $8000                                ; $7A7A: $D4 $00 $80
    nop                                           ; $7A7D: $00
    ld   [hl+], a                                 ; $7A7E: $22
    call nc, Call_002_7000                        ; $7A7F: $D4 $00 $70
    nop                                           ; $7A82: $00
    rst  RST_38                                   ; $7A83: $FF
    inc  hl                                       ; $7A84: $23
    add  sp, $00                                  ; $7A85: $E8 $00
    ld   c, b                                     ; $7A87: $48
    nop                                           ; $7A88: $00
    inc  hl                                       ; $7A89: $23
    add  sp, $00                                  ; $7A8A: $E8 $00
    ret  nc                                       ; $7A8C: $D0

    nop                                           ; $7A8D: $00
    rst  RST_38                                   ; $7A8E: $FF
    ld   c, e                                     ; $7A8F: $4B
    or   b                                        ; $7A90: $B0
    nop                                           ; $7A91: $00
    add  b                                        ; $7A92: $80
    nop                                           ; $7A93: $00
    rst  RST_38                                   ; $7A94: $FF
    inc  h                                        ; $7A95: $24
    or   b                                        ; $7A96: $B0
    nop                                           ; $7A97: $00
    add  b                                        ; $7A98: $80
    nop                                           ; $7A99: $00
    rst  RST_38                                   ; $7A9A: $FF
    daa                                           ; $7A9B: $27
    ldh  [rP1], a                                 ; $7A9C: $E0 $00
    ld   [hl], b                                  ; $7A9E: $70
    nop                                           ; $7A9F: $00
    daa                                           ; $7AA0: $27
    ldh  [rP1], a                                 ; $7AA1: $E0 $00
    ret  nz                                       ; $7AA3: $C0

    nop                                           ; $7AA4: $00
    rst  RST_38                                   ; $7AA5: $FF
    jr   z, jr_002_7AC8                           ; $7AA6: $28 $20

    ld   bc, $0090                                ; $7AA8: $01 $90 $00
    rst  RST_38                                   ; $7AAB: $FF
    ld   a, [hl+]                                 ; $7AAC: $2A
    ldh  [rP1], a                                 ; $7AAD: $E0 $00
    ld   h, b                                     ; $7AAF: $60
    nop                                           ; $7AB0: $00
    rst  RST_38                                   ; $7AB1: $FF
    ld   a, [hl+]                                 ; $7AB2: $2A
    ldh  [rP1], a                                 ; $7AB3: $E0 $00
    or   b                                        ; $7AB5: $B0
    nop                                           ; $7AB6: $00
    ld   a, [hl+]                                 ; $7AB7: $2A
    ldh  [rP1], a                                 ; $7AB8: $E0 $00
    ret  nc                                       ; $7ABA: $D0

    nop                                           ; $7ABB: $00
    rst  RST_38                                   ; $7ABC: $FF
    dec  hl                                       ; $7ABD: $2B
    ld   d, [hl]                                  ; $7ABE: $56
    nop                                           ; $7ABF: $00
    adc  b                                        ; $7AC0: $88
    nop                                           ; $7AC1: $00
    inc  l                                        ; $7AC2: $2C
    ld   e, [hl]                                  ; $7AC3: $5E
    nop                                           ; $7AC4: $00
    ld   [hl], b                                  ; $7AC5: $70
    nop                                           ; $7AC6: $00
    dec  l                                        ; $7AC7: $2D

jr_002_7AC8:
    ld   e, [hl]                                  ; $7AC8: $5E
    nop                                           ; $7AC9: $00
    and  b                                        ; $7ACA: $A0
    nop                                           ; $7ACB: $00
    rst  RST_38                                   ; $7ACC: $FF
    ld   [hl+], a                                 ; $7ACD: $22
    ld   h, h                                     ; $7ACE: $64
    nop                                           ; $7ACF: $00
    ldh  [rP1], a                                 ; $7AD0: $E0 $00
    ld   [hl+], a                                 ; $7AD2: $22
    ld   h, h                                     ; $7AD3: $64
    nop                                           ; $7AD4: $00
    ret  nz                                       ; $7AD5: $C0

    nop                                           ; $7AD6: $00
    ld   [hl+], a                                 ; $7AD7: $22
    ld   b, h                                     ; $7AD8: $44
    nop                                           ; $7AD9: $00
    adc  b                                        ; $7ADA: $88
    nop                                           ; $7ADB: $00
    ld   [hl+], a                                 ; $7ADC: $22
    ld   h, h                                     ; $7ADD: $64
    nop                                           ; $7ADE: $00
    ld   l, b                                     ; $7ADF: $68
    nop                                           ; $7AE0: $00
    ld   [hl+], a                                 ; $7AE1: $22
    ld   h, h                                     ; $7AE2: $64
    nop                                           ; $7AE3: $00
    ld   e, b                                     ; $7AE4: $58
    nop                                           ; $7AE5: $00
    rst  RST_38                                   ; $7AE6: $FF
    inc  c                                        ; $7AE7: $0C
    call nc, Call_002_7000                        ; $7AE8: $D4 $00 $70
    nop                                           ; $7AEB: $00
    inc  c                                        ; $7AEC: $0C
    call nz, $A800                                ; $7AED: $C4 $00 $A8
    nop                                           ; $7AF0: $00
    rst  RST_38                                   ; $7AF1: $FF
    inc  c                                        ; $7AF2: $0C
    sub  h                                        ; $7AF3: $94
    nop                                           ; $7AF4: $00
    ld   b, b                                     ; $7AF5: $40

jr_002_7AF6:
    nop                                           ; $7AF6: $00
    inc  c                                        ; $7AF7: $0C
    sub  h                                        ; $7AF8: $94
    nop                                           ; $7AF9: $00
    ret  nc                                       ; $7AFA: $D0

    nop                                           ; $7AFB: $00
    rst  RST_38                                   ; $7AFC: $FF
    ld   l, $F4                                   ; $7AFD: $2E $F4
    nop                                           ; $7AFF: $00
    sub  b                                        ; $7B00: $90
    nop                                           ; $7B01: $00
    rst  RST_38                                   ; $7B02: $FF
    daa                                           ; $7B03: $27
    ldh  a, [rP1]                                 ; $7B04: $F0 $00
    add  b                                        ; $7B06: $80
    nop                                           ; $7B07: $00
    rst  RST_38                                   ; $7B08: $FF
    ld   a, [hl+]                                 ; $7B09: $2A
    ldh  [rP1], a                                 ; $7B0A: $E0 $00
    ld   [hl], b                                  ; $7B0C: $70
    nop                                           ; $7B0D: $00
    ld   a, [hl+]                                 ; $7B0E: $2A
    ldh  [rP1], a                                 ; $7B0F: $E0 $00
    ret  nz                                       ; $7B11: $C0

    nop                                           ; $7B12: $00
    rst  RST_38                                   ; $7B13: $FF
    ld   l, $E8                                   ; $7B14: $2E $E8
    nop                                           ; $7B16: $00
    and  b                                        ; $7B17: $A0
    nop                                           ; $7B18: $00
    ld   l, $E8                                   ; $7B19: $2E $E8
    nop                                           ; $7B1B: $00
    ldh  [rP1], a                                 ; $7B1C: $E0 $00
    rst  RST_38                                   ; $7B1E: $FF
    dec  h                                        ; $7B1F: $25
    add  sp, $00                                  ; $7B20: $E8 $00
    cp   b                                        ; $7B22: $B8
    nop                                           ; $7B23: $00
    ld   h, $E8                                   ; $7B24: $26 $E8
    nop                                           ; $7B26: $00
    ret  z                                        ; $7B27: $C8

    nop                                           ; $7B28: $00
    ld   h, $E8                                   ; $7B29: $26 $E8
    nop                                           ; $7B2B: $00
    ret  c                                        ; $7B2C: $D8

    nop                                           ; $7B2D: $00
    ld   h, $E8                                   ; $7B2E: $26 $E8
    nop                                           ; $7B30: $00
    add  sp, $00                                  ; $7B31: $E8 $00
    rst  RST_38                                   ; $7B33: $FF
    ld   b, $B0                                   ; $7B34: $06 $B0
    nop                                           ; $7B36: $00
    jr   nc, jr_002_7B39                          ; $7B37: $30 $00

jr_002_7B39:
    ld   b, $40                                   ; $7B39: $06 $40
    nop                                           ; $7B3B: $00
    jr   nc, jr_002_7B3E                          ; $7B3C: $30 $00

jr_002_7B3E:
    rlca                                          ; $7B3E: $07
    ld   b, b                                     ; $7B3F: $40
    nop                                           ; $7B40: $00
    ldh  a, [rP1]                                 ; $7B41: $F0 $00
    rlca                                          ; $7B43: $07
    ret  nc                                       ; $7B44: $D0

    nop                                           ; $7B45: $00
    ldh  a, [rP1]                                 ; $7B46: $F0 $00
    dec  c                                        ; $7B48: $0D
    add  b                                        ; $7B49: $80
    nop                                           ; $7B4A: $00
    sub  b                                        ; $7B4B: $90
    nop                                           ; $7B4C: $00
    rst  RST_38                                   ; $7B4D: $FF
    jr   jr_002_7AF6                              ; $7B4E: $18 $A6

    nop                                           ; $7B50: $00
    ld   h, b                                     ; $7B51: $60
    nop                                           ; $7B52: $00
    add  hl, de                                   ; $7B53: $19
    and  [hl]                                     ; $7B54: $A6
    nop                                           ; $7B55: $00
    ld   [hl], b                                  ; $7B56: $70
    nop                                           ; $7B57: $00
    ld   a, [de]                                  ; $7B58: $1A
    and  [hl]                                     ; $7B59: $A6
    nop                                           ; $7B5A: $00
    add  b                                        ; $7B5B: $80
    nop                                           ; $7B5C: $00
    rst  RST_38                                   ; $7B5D: $FF
    rst  RST_38                                   ; $7B5E: $FF
    rst  RST_38                                   ; $7B5F: $FF
    ld   [hl+], a                                 ; $7B60: $22
    ld   a, l                                     ; $7B61: $7D
    ld   [hl+], a                                 ; $7B62: $22
    ld   a, l                                     ; $7B63: $7D
    add  hl, hl                                   ; $7B64: $29
    ld   a, l                                     ; $7B65: $7D
    jr   nc, jr_002_7BE5                          ; $7B66: $30 $7D

    scf                                           ; $7B68: $37
    ld   a, l                                     ; $7B69: $7D
    ld   c, d                                     ; $7B6A: $4A
    ld   a, l                                     ; $7B6B: $7D
    ld   d, a                                     ; $7B6C: $57
    ld   a, l                                     ; $7B6D: $7D
    ld   [hl], b                                  ; $7B6E: $70
    ld   a, l                                     ; $7B6F: $7D
    adc  c                                        ; $7B70: $89
    ld   a, l                                     ; $7B71: $7D
    sub  b                                        ; $7B72: $90
    ld   a, l                                     ; $7B73: $7D
    sub  a                                        ; $7B74: $97
    ld   a, l                                     ; $7B75: $7D
    xor  d                                        ; $7B76: $AA
    ld   a, l                                     ; $7B77: $7D
    cp   l                                        ; $7B78: $BD
    ld   a, l                                     ; $7B79: $7D
    call nz, $DD7D                                ; $7B7A: $C4 $7D $DD
    ld   a, l                                     ; $7B7D: $7D
    ld   [$F17D], a                               ; $7B7E: $EA $7D $F1
    ld   a, l                                     ; $7B81: $7D
    ld   hl, sp+$7D                               ; $7B82: $F8 $7D
    rst  RST_38                                   ; $7B84: $FF
    ld   a, l                                     ; $7B85: $7D
    call c, $127F                                 ; $7B86: $DC $7F $12
    ld   a, [hl]                                  ; $7B89: $7E
    add  hl, de                                   ; $7B8A: $19
    ld   a, [hl]                                  ; $7B8B: $7E
    inc  l                                        ; $7B8C: $2C
    ld   a, [hl]                                  ; $7B8D: $7E
    ld   b, l                                     ; $7B8E: $45
    ld   a, [hl]                                  ; $7B8F: $7E
    ld   e, [hl]                                  ; $7B90: $5E
    ld   a, [hl]                                  ; $7B91: $7E
    ld   [hl], a                                  ; $7B92: $77
    ld   a, [hl]                                  ; $7B93: $7E
    add  h                                        ; $7B94: $84
    ld   a, [hl]                                  ; $7B95: $7E
    adc  e                                        ; $7B96: $8B
    ld   a, [hl]                                  ; $7B97: $7E
    sub  d                                        ; $7B98: $92
    ld   a, [hl]                                  ; $7B99: $7E
    and  l                                        ; $7B9A: $A5
    ld   a, [hl]                                  ; $7B9B: $7E
    jp   z, $D77E                                 ; $7B9C: $CA $7E $D7

    ld   a, [hl]                                  ; $7B9F: $7E
    ld   [$0F7E], a                               ; $7BA0: $EA $7E $0F
    ld   a, a                                     ; $7BA3: $7F
    jr   z, jr_002_7C25                           ; $7BA4: $28 $7F

    dec  sp                                       ; $7BA6: $3B
    ld   a, a                                     ; $7BA7: $7F
    ld   c, b                                     ; $7BA8: $48
    ld   a, a                                     ; $7BA9: $7F
    ld   d, l                                     ; $7BAA: $55
    ld   a, a                                     ; $7BAB: $7F
    ld   h, d                                     ; $7BAC: $62
    ld   a, a                                     ; $7BAD: $7F
    ld   l, a                                     ; $7BAE: $6F
    ld   a, a                                     ; $7BAF: $7F
    ld   a, h                                     ; $7BB0: $7C
    ld   a, a                                     ; $7BB1: $7F
    add  e                                        ; $7BB2: $83
    ld   a, a                                     ; $7BB3: $7F
    adc  d                                        ; $7BB4: $8A
    ld   a, a                                     ; $7BB5: $7F
    sbc  [hl]                                     ; $7BB6: $9E
    ld   a, l                                     ; $7BB7: $7D
    cp   b                                        ; $7BB8: $B8
    ld   a, [hl]                                  ; $7BB9: $7E
    pop  de                                       ; $7BBA: $D1
    ld   a, l                                     ; $7BBB: $7D
    xor  c                                        ; $7BBC: $A9
    ld   a, a                                     ; $7BBD: $7F
    ld   a, $7D                                   ; $7BBE: $3E $7D
    or   b                                        ; $7BC0: $B0
    ld   a, a                                     ; $7BC1: $7F
    or   a                                        ; $7BC2: $B7
    ld   a, a                                     ; $7BC3: $7F
    call nz, $EF7F                                ; $7BC4: $C4 $7F $EF
    ld   a, a                                     ; $7BC7: $7F
    push af                                       ; $7BC8: $F5
    ld   a, a                                     ; $7BC9: $7F
    push af                                       ; $7BCA: $F5
    ld   a, a                                     ; $7BCB: $7F
    push af                                       ; $7BCC: $F5
    ld   a, a                                     ; $7BCD: $7F
    push af                                       ; $7BCE: $F5
    ld   a, a                                     ; $7BCF: $7F
    xor  $7C                                      ; $7BD0: $EE $7C
    xor  $7C                                      ; $7BD2: $EE $7C
    di                                            ; $7BD4: $F3
    ld   a, h                                     ; $7BD5: $7C
    db   $10                                      ; $7BD6: $10
    ld   a, l                                     ; $7BD7: $7D
    inc  de                                       ; $7BD8: $13
    ld   a, l                                     ; $7BD9: $7D
    rla                                           ; $7BDA: $17
    ld   a, l                                     ; $7BDB: $7D
    ld   a, [de]                                  ; $7BDC: $1A
    ld   a, l                                     ; $7BDD: $7D
    ld   e, $7D                                   ; $7BDE: $1E $7D
    nop                                           ; $7BE0: $00
    nop                                           ; $7BE1: $00
    nop                                           ; $7BE2: $00
    nop                                           ; $7BE3: $00
    nop                                           ; $7BE4: $00

jr_002_7BE5:
    nop                                           ; $7BE5: $00
    ld   [$A002], sp                              ; $7BE6: $08 $02 $A0
    sub  [hl]                                     ; $7BE9: $96
    and  b                                        ; $7BEA: $A0
    ld   e, a                                     ; $7BEB: $5F
    ld   [$A002], sp                              ; $7BEC: $08 $02 $A0
    sub  [hl]                                     ; $7BEF: $96
    ret  nz                                       ; $7BF0: $C0

    ld   e, a                                     ; $7BF1: $5F
    ld   [$A002], sp                              ; $7BF2: $08 $02 $A0
    sub  [hl]                                     ; $7BF5: $96
    ldh  [$FF5F], a                               ; $7BF6: $E0 $5F
    inc  b                                        ; $7BF8: $04
    inc  b                                        ; $7BF9: $04
    ret  nz                                       ; $7BFA: $C0

    sub  b                                        ; $7BFB: $90
    ret  nz                                       ; $7BFC: $C0

    ld   h, b                                     ; $7BFD: $60
    ld   [bc], a                                  ; $7BFE: $02
    ld   [bc], a                                  ; $7BFF: $02
    nop                                           ; $7C00: $00
    sub  c                                        ; $7C01: $91
    ret  nz                                       ; $7C02: $C0

    ld   h, b                                     ; $7C03: $60
    ld   [bc], a                                  ; $7C04: $02
    ld   [bc], a                                  ; $7C05: $02
    and  b                                        ; $7C06: $A0
    sub  b                                        ; $7C07: $90
    and  b                                        ; $7C08: $A0
    ld   h, b                                     ; $7C09: $60
    ld   bc, $8001                                ; $7C0A: $01 $01 $80
    sub  c                                        ; $7C0D: $91
    ret  nz                                       ; $7C0E: $C0

    ld   h, b                                     ; $7C0F: $60
    ld   bc, $A001                                ; $7C10: $01 $01 $A0
    sub  c                                        ; $7C13: $91
    and  b                                        ; $7C14: $A0
    ld   h, b                                     ; $7C15: $60
    ld   bc, $5001                                ; $7C16: $01 $01 $50
    sub  c                                        ; $7C19: $91
    ret  nc                                       ; $7C1A: $D0

    ld   h, b                                     ; $7C1B: $60
    ld   bc, $7001                                ; $7C1C: $01 $01 $70
    sub  c                                        ; $7C1F: $91
    or   b                                        ; $7C20: $B0
    ld   h, b                                     ; $7C21: $60
    inc  b                                        ; $7C22: $04
    inc  b                                        ; $7C23: $04
    ret  nz                                       ; $7C24: $C0

jr_002_7C25:
    sub  b                                        ; $7C25: $90
    ret  nc                                       ; $7C26: $D0

    ld   h, b                                     ; $7C27: $60
    ld   [bc], a                                  ; $7C28: $02
    ld   [bc], a                                  ; $7C29: $02
    nop                                           ; $7C2A: $00
    sub  c                                        ; $7C2B: $91
    ret  nc                                       ; $7C2C: $D0

    ld   h, b                                     ; $7C2D: $60
    ld   [bc], a                                  ; $7C2E: $02
    ld   [bc], a                                  ; $7C2F: $02
    and  b                                        ; $7C30: $A0
    sub  b                                        ; $7C31: $90
    or   b                                        ; $7C32: $B0
    ld   h, b                                     ; $7C33: $60
    ld   bc, $8001                                ; $7C34: $01 $01 $80
    sub  c                                        ; $7C37: $91
    ret  nc                                       ; $7C38: $D0

    ld   h, b                                     ; $7C39: $60
    ld   bc, $A001                                ; $7C3A: $01 $01 $A0
    sub  c                                        ; $7C3D: $91
    or   b                                        ; $7C3E: $B0
    ld   h, b                                     ; $7C3F: $60
    ld   bc, $5001                                ; $7C40: $01 $01 $50
    sub  c                                        ; $7C43: $91
    and  b                                        ; $7C44: $A0
    ld   h, b                                     ; $7C45: $60
    ld   bc, $7001                                ; $7C46: $01 $01 $70
    sub  c                                        ; $7C49: $91
    ret  nz                                       ; $7C4A: $C0

    ld   h, b                                     ; $7C4B: $60
    inc  b                                        ; $7C4C: $04
    inc  b                                        ; $7C4D: $04
    ret  nz                                       ; $7C4E: $C0

    sub  b                                        ; $7C4F: $90
    and  b                                        ; $7C50: $A0
    ld   h, b                                     ; $7C51: $60
    ld   [bc], a                                  ; $7C52: $02
    ld   [bc], a                                  ; $7C53: $02
    nop                                           ; $7C54: $00
    sub  c                                        ; $7C55: $91
    and  b                                        ; $7C56: $A0
    ld   h, b                                     ; $7C57: $60
    ld   [bc], a                                  ; $7C58: $02
    ld   [bc], a                                  ; $7C59: $02
    and  b                                        ; $7C5A: $A0
    sub  b                                        ; $7C5B: $90
    ret  nz                                       ; $7C5C: $C0

    ld   h, b                                     ; $7C5D: $60
    ld   bc, $8001                                ; $7C5E: $01 $01 $80
    sub  c                                        ; $7C61: $91
    and  b                                        ; $7C62: $A0
    ld   h, b                                     ; $7C63: $60
    ld   bc, $A001                                ; $7C64: $01 $01 $A0
    sub  c                                        ; $7C67: $91
    ret  nz                                       ; $7C68: $C0

    ld   h, b                                     ; $7C69: $60
    ld   bc, $5001                                ; $7C6A: $01 $01 $50
    sub  c                                        ; $7C6D: $91
    or   b                                        ; $7C6E: $B0
    ld   h, b                                     ; $7C6F: $60
    ld   bc, $7001                                ; $7C70: $01 $01 $70
    sub  c                                        ; $7C73: $91
    ret  nc                                       ; $7C74: $D0

    ld   h, b                                     ; $7C75: $60
    inc  b                                        ; $7C76: $04
    inc  b                                        ; $7C77: $04
    ret  nz                                       ; $7C78: $C0

    sub  b                                        ; $7C79: $90
    or   b                                        ; $7C7A: $B0
    ld   h, b                                     ; $7C7B: $60
    ld   [bc], a                                  ; $7C7C: $02
    ld   [bc], a                                  ; $7C7D: $02
    nop                                           ; $7C7E: $00
    sub  c                                        ; $7C7F: $91
    or   b                                        ; $7C80: $B0
    ld   h, b                                     ; $7C81: $60
    ld   [bc], a                                  ; $7C82: $02
    ld   [bc], a                                  ; $7C83: $02
    and  b                                        ; $7C84: $A0
    sub  b                                        ; $7C85: $90
    ret  nc                                       ; $7C86: $D0

    ld   h, b                                     ; $7C87: $60
    ld   bc, $8001                                ; $7C88: $01 $01 $80
    sub  c                                        ; $7C8B: $91
    or   b                                        ; $7C8C: $B0
    ld   h, b                                     ; $7C8D: $60
    ld   bc, $A001                                ; $7C8E: $01 $01 $A0
    sub  c                                        ; $7C91: $91
    ret  nc                                       ; $7C92: $D0

    ld   h, b                                     ; $7C93: $60
    ld   bc, $5001                                ; $7C94: $01 $01 $50
    sub  c                                        ; $7C97: $91
    ret  nz                                       ; $7C98: $C0

    ld   h, b                                     ; $7C99: $60
    ld   bc, $7001                                ; $7C9A: $01 $01 $70
    sub  c                                        ; $7C9D: $91
    and  b                                        ; $7C9E: $A0
    ld   h, b                                     ; $7C9F: $60
    ld   [$8004], sp                              ; $7CA0: $08 $04 $80
    sub  l                                        ; $7CA3: $95
    add  b                                        ; $7CA4: $80
    ld   a, l                                     ; $7CA5: $7D
    ld   [$8004], sp                              ; $7CA6: $08 $04 $80
    sub  d                                        ; $7CA9: $92
    nop                                           ; $7CAA: $00
    ld   e, [hl]                                  ; $7CAB: $5E
    ld   [$8004], sp                              ; $7CAC: $08 $04 $80
    sub  d                                        ; $7CAF: $92
    ld   b, b                                     ; $7CB0: $40
    ld   e, [hl]                                  ; $7CB1: $5E
    ld   [$8004], sp                              ; $7CB2: $08 $04 $80
    sub  l                                        ; $7CB5: $95
    add  b                                        ; $7CB6: $80
    ld   e, [hl]                                  ; $7CB7: $5E
    ld   [$8004], sp                              ; $7CB8: $08 $04 $80
    sub  d                                        ; $7CBB: $92
    ret  nz                                       ; $7CBC: $C0

    ld   e, [hl]                                  ; $7CBD: $5E
    ld   [$4004], sp                              ; $7CBE: $08 $04 $40
    sub  l                                        ; $7CC1: $95
    nop                                           ; $7CC2: $00
    ld   e, l                                     ; $7CC3: $5D
    ld   [$4004], sp                              ; $7CC4: $08 $04 $40
    sub  l                                        ; $7CC7: $95
    ld   b, b                                     ; $7CC8: $40
    ld   e, l                                     ; $7CC9: $5D
    ld   [$C004], sp                              ; $7CCA: $08 $04 $C0
    sub  [hl]                                     ; $7CCD: $96
    ret  nz                                       ; $7CCE: $C0

    ld   e, [hl]                                  ; $7CCF: $5E
    ld   [$C004], sp                              ; $7CD0: $08 $04 $C0
    sub  [hl]                                     ; $7CD3: $96
    nop                                           ; $7CD4: $00
    ld   e, [hl]                                  ; $7CD5: $5E
    ld   [$C004], sp                              ; $7CD6: $08 $04 $C0
    sub  [hl]                                     ; $7CD9: $96
    ld   b, b                                     ; $7CDA: $40
    ld   e, [hl]                                  ; $7CDB: $5E
    ld   [$4004], sp                              ; $7CDC: $08 $04 $40
    sub  h                                        ; $7CDF: $94
    nop                                           ; $7CE0: $00
    ld   e, [hl]                                  ; $7CE1: $5E
    ld   [$4004], sp                              ; $7CE2: $08 $04 $40
    sub  h                                        ; $7CE5: $94
    ld   b, b                                     ; $7CE6: $40
    ld   e, [hl]                                  ; $7CE7: $5E
    ld   [$4004], sp                              ; $7CE8: $08 $04 $40
    sub  h                                        ; $7CEB: $94
    ret  nz                                       ; $7CEC: $C0

    ld   e, [hl]                                  ; $7CED: $5E
    inc  b                                        ; $7CEE: $04
    ld   bc, $0102                                ; $7CEF: $01 $02 $01
    inc  bc                                       ; $7CF2: $03
    inc  e                                        ; $7CF3: $1C
    inc  b                                        ; $7CF4: $04
    dec  b                                        ; $7CF5: $05
    ld   b, $07                                   ; $7CF6: $06 $07
    ld   [$0A09], sp                              ; $7CF8: $08 $09 $0A
    dec  bc                                       ; $7CFB: $0B
    inc  c                                        ; $7CFC: $0C
    dec  c                                        ; $7CFD: $0D
    ld   c, $0F                                   ; $7CFE: $0E $0F
    db   $10                                      ; $7D00: $10
    ld   de, $1312                                ; $7D01: $11 $12 $13
    inc  d                                        ; $7D04: $14
    dec  d                                        ; $7D05: $15
    ld   d, $17                                   ; $7D06: $16 $17
    jr   jr_002_7D23                              ; $7D08: $18 $19

    ld   a, [de]                                  ; $7D0A: $1A
    dec  de                                       ; $7D0B: $1B
    inc  e                                        ; $7D0C: $1C
    dec  e                                        ; $7D0D: $1D
    ld   e, $1F                                   ; $7D0E: $1E $1F
    ld   [bc], a                                  ; $7D10: $02
    jr   nz, jr_002_7D36                          ; $7D11: $20 $23

    inc  bc                                       ; $7D13: $03
    inc  h                                        ; $7D14: $24
    ld   hl, $0222                                ; $7D15: $21 $22 $02
    dec  h                                        ; $7D18: $25
    ld   h, $03                                   ; $7D19: $26 $03
    daa                                           ; $7D1B: $27
    jr   z, jr_002_7D47                           ; $7D1C: $28 $29

    inc  bc                                       ; $7D1E: $03
    inc  l                                        ; $7D1F: $2C
    ld   a, [hl+]                                 ; $7D20: $2A
    dec  hl                                       ; $7D21: $2B
    rlca                                          ; $7D22: $07

jr_002_7D23:
    ld   a, [hl+]                                 ; $7D23: $2A
    nop                                           ; $7D24: $00
    ld   c, c                                     ; $7D25: $49
    nop                                           ; $7D26: $00
    adc  b                                        ; $7D27: $88
    nop                                           ; $7D28: $00
    rlca                                          ; $7D29: $07
    ld   a, [hl+]                                 ; $7D2A: $2A
    nop                                           ; $7D2B: $00
    ld   b, h                                     ; $7D2C: $44
    nop                                           ; $7D2D: $00
    adc  b                                        ; $7D2E: $88
    nop                                           ; $7D2F: $00
    rlca                                          ; $7D30: $07
    add  hl, bc                                   ; $7D31: $09
    nop                                           ; $7D32: $00
    ld   c, h                                     ; $7D33: $4C
    nop                                           ; $7D34: $00
    add  h                                        ; $7D35: $84

jr_002_7D36:
    nop                                           ; $7D36: $00
    rlca                                          ; $7D37: $07
    add  hl, bc                                   ; $7D38: $09
    nop                                           ; $7D39: $00
    ld   b, b                                     ; $7D3A: $40
    nop                                           ; $7D3B: $00
    add  h                                        ; $7D3C: $84
    nop                                           ; $7D3D: $00
    rlca                                          ; $7D3E: $07
    ld   a, h                                     ; $7D3F: $7C
    ld   b, b                                     ; $7D40: $40
    ld   l, b                                     ; $7D41: $68
    ld   b, b                                     ; $7D42: $40
    sub  b                                        ; $7D43: $90
    rlca                                          ; $7D44: $07
    inc  b                                        ; $7D45: $04
    nop                                           ; $7D46: $00

jr_002_7D47:
    ld   e, c                                     ; $7D47: $59
    nop                                           ; $7D48: $00
    sub  b                                        ; $7D49: $90
    rlca                                          ; $7D4A: $07
    jr   nz, jr_002_7D4D                          ; $7D4B: $20 $00

jr_002_7D4D:
    ld   d, c                                     ; $7D4D: $51
    nop                                           ; $7D4E: $00
    add  b                                        ; $7D4F: $80
    rlca                                          ; $7D50: $07
    jr   nz, jr_002_7D53                          ; $7D51: $20 $00

jr_002_7D53:
    ld   d, [hl]                                  ; $7D53: $56
    nop                                           ; $7D54: $00
    add  d                                        ; $7D55: $82
    nop                                           ; $7D56: $00
    rlca                                          ; $7D57: $07
    ld   bc, $6EC0                                ; $7D58: $01 $C0 $6E
    ret  nz                                       ; $7D5B: $C0

    sub  [hl]                                     ; $7D5C: $96
    rlca                                          ; $7D5D: $07
    ld   bc, $6EE0                                ; $7D5E: $01 $E0 $6E
    ldh  [$FF96], a                               ; $7D61: $E0 $96
    rlca                                          ; $7D63: $07
    ld   bc, $6ED0                                ; $7D64: $01 $D0 $6E
    ret  nc                                       ; $7D67: $D0

    sub  [hl]                                     ; $7D68: $96
    rlca                                          ; $7D69: $07
    ld   bc, $6EF0                                ; $7D6A: $01 $F0 $6E
    ldh  a, [$FF96]                               ; $7D6D: $F0 $96
    nop                                           ; $7D6F: $00
    rlca                                          ; $7D70: $07
    ld   bc, $6EC0                                ; $7D71: $01 $C0 $6E
    ret  nc                                       ; $7D74: $D0

    sub  [hl]                                     ; $7D75: $96
    rlca                                          ; $7D76: $07
    ld   bc, $6EE0                                ; $7D77: $01 $E0 $6E
    ldh  a, [$FF96]                               ; $7D7A: $F0 $96
    rlca                                          ; $7D7C: $07

Call_002_7D7D:
    ld   bc, $6ED0                                ; $7D7D: $01 $D0 $6E
    ret  nz                                       ; $7D80: $C0

    sub  [hl]                                     ; $7D81: $96
    rlca                                          ; $7D82: $07
    ld   bc, $6EF0                                ; $7D83: $01 $F0 $6E
    ldh  [$FF96], a                               ; $7D86: $E0 $96
    nop                                           ; $7D88: $00
    rlca                                          ; $7D89: $07
    stop                                          ; $7D8A: $10 $00
    ld   l, a                                     ; $7D8C: $6F
    nop                                           ; $7D8D: $00
    sub  a                                        ; $7D8E: $97
    nop                                           ; $7D8F: $00
    rlca                                          ; $7D90: $07
    stop                                          ; $7D91: $10 $00
    ld   e, b                                     ; $7D93: $58
    nop                                           ; $7D94: $00
    sub  a                                        ; $7D95: $97
    nop                                           ; $7D96: $00
    rlca                                          ; $7D97: $07
    ld   [$4D00], sp                              ; $7D98: $08 $00 $4D
    nop                                           ; $7D9B: $00
    add  h                                        ; $7D9C: $84
    nop                                           ; $7D9D: $00
    ld   b, $5C                                   ; $7D9E: $06 $5C
    ld   b, b                                     ; $7DA0: $40
    ld   d, b                                     ; $7DA1: $50
    ld   b, b                                     ; $7DA2: $40
    sub  b                                        ; $7DA3: $90
    rlca                                          ; $7DA4: $07
    inc  b                                        ; $7DA5: $04
    nop                                           ; $7DA6: $00
    ld   e, c                                     ; $7DA7: $59
    nop                                           ; $7DA8: $00
    sub  b                                        ; $7DA9: $90
    ld   b, $20                                   ; $7DAA: $06 $20
    nop                                           ; $7DAC: $00
    ld   d, [hl]                                  ; $7DAD: $56
    nop                                           ; $7DAE: $00
    sub  [hl]                                     ; $7DAF: $96
    ld   b, $20                                   ; $7DB0: $06 $20
    nop                                           ; $7DB2: $00
    ld   a, h                                     ; $7DB3: $7C
    nop                                           ; $7DB4: $00
    add  b                                        ; $7DB5: $80
    ld   b, $20                                   ; $7DB6: $06 $20
    nop                                           ; $7DB8: $00
    ld   [hl], h                                  ; $7DB9: $74
    nop                                           ; $7DBA: $00
    add  d                                        ; $7DBB: $82
    nop                                           ; $7DBC: $00
    rlca                                          ; $7DBD: $07
    jr   nz, jr_002_7DC0                          ; $7DBE: $20 $00

jr_002_7DC0:
    ld   a, d                                     ; $7DC0: $7A
    nop                                           ; $7DC1: $00
    sub  [hl]                                     ; $7DC2: $96
    nop                                           ; $7DC3: $00
    ld   b, $40                                   ; $7DC4: $06 $40
    nop                                           ; $7DC6: $00
    ld   l, b                                     ; $7DC7: $68
    nop                                           ; $7DC8: $00
    add  b                                        ; $7DC9: $80
    rlca                                          ; $7DCA: $07
    stop                                          ; $7DCB: $10 $00
    ld   d, b                                     ; $7DCD: $50
    nop                                           ; $7DCE: $00
    adc  l                                        ; $7DCF: $8D
    nop                                           ; $7DD0: $00
    rlca                                          ; $7DD1: $07
    inc  b                                        ; $7DD2: $04
    nop                                           ; $7DD3: $00
    ld   e, c                                     ; $7DD4: $59
    nop                                           ; $7DD5: $00
    sub  b                                        ; $7DD6: $90
    rlca                                          ; $7DD7: $07
    ld   a, h                                     ; $7DD8: $7C
    ld   b, b                                     ; $7DD9: $40
    ld   a, b                                     ; $7DDA: $78
    ld   b, b                                     ; $7DDB: $40
    sub  b                                        ; $7DDC: $90
    ld   b, $30                                   ; $7DDD: $06 $30
    nop                                           ; $7DDF: $00
    ld   [hl], b                                  ; $7DE0: $70
    nop                                           ; $7DE1: $00
    add  b                                        ; $7DE2: $80
    ld   b, $10                                   ; $7DE3: $06 $10
    nop                                           ; $7DE5: $00
    ld   a, a                                     ; $7DE6: $7F
    nop                                           ; $7DE7: $00
    add  e                                        ; $7DE8: $83
    nop                                           ; $7DE9: $00
    rlca                                          ; $7DEA: $07
    inc  b                                        ; $7DEB: $04
    nop                                           ; $7DEC: $00
    ld   e, c                                     ; $7DED: $59
    nop                                           ; $7DEE: $00
    sub  b                                        ; $7DEF: $90
    nop                                           ; $7DF0: $00
    rlca                                          ; $7DF1: $07
    ld   [bc], a                                  ; $7DF2: $02
    ldh  [$FF59], a                               ; $7DF3: $E0 $59
    and  b                                        ; $7DF5: $A0
    add  a                                        ; $7DF6: $87
    nop                                           ; $7DF7: $00
    rlca                                          ; $7DF8: $07
    inc  b                                        ; $7DF9: $04
    and  b                                        ; $7DFA: $A0
    ld   c, e                                     ; $7DFB: $4B
    and  b                                        ; $7DFC: $A0
    add  a                                        ; $7DFD: $87
    nop                                           ; $7DFE: $00
    rlca                                          ; $7DFF: $07
    ld   [bc], a                                  ; $7E00: $02
    jr   nz, @+$4B                                ; $7E01: $20 $49

    and  b                                        ; $7E03: $A0
    add  a                                        ; $7E04: $87
    rlca                                          ; $7E05: $07
    ld   [bc], a                                  ; $7E06: $02
    ret  nz                                       ; $7E07: $C0

    ld   c, c                                     ; $7E08: $49
    ret  nz                                       ; $7E09: $C0

    add  a                                        ; $7E0A: $87
    rlca                                          ; $7E0B: $07
    ld   [bc], a                                  ; $7E0C: $02
    ldh  [rOBP0], a                               ; $7E0D: $E0 $48
    ldh  [$FF87], a                               ; $7E0F: $E0 $87
    nop                                           ; $7E11: $00
    ld   b, $04                                   ; $7E12: $06 $04
    add  b                                        ; $7E14: $80
    ld   d, e                                     ; $7E15: $53
    nop                                           ; $7E16: $00
    adc  d                                        ; $7E17: $8A
    nop                                           ; $7E18: $00
    rlca                                          ; $7E19: $07
    stop                                          ; $7E1A: $10 $00
    halt                                          ; $7E1C: $76
    nop                                           ; $7E1D: $00
    sub  d                                        ; $7E1E: $92
    rlca                                          ; $7E1F: $07
    stop                                          ; $7E20: $10 $00
    ld   l, l                                     ; $7E22: $6D
    nop                                           ; $7E23: $00
    sub  [hl]                                     ; $7E24: $96
    rlca                                          ; $7E25: $07
    inc  b                                        ; $7E26: $04
    ld   b, b                                     ; $7E27: $40
    ld   [hl], a                                  ; $7E28: $77
    ld   b, b                                     ; $7E29: $40
    sub  l                                        ; $7E2A: $95
    nop                                           ; $7E2B: $00
    rlca                                          ; $7E2C: $07
    stop                                          ; $7E2D: $10 $00
    ld   e, e                                     ; $7E2F: $5B
    nop                                           ; $7E30: $00
    sub  d                                        ; $7E31: $92
    ld   b, $08                                   ; $7E32: $06 $08
    add  b                                        ; $7E34: $80
    ld   h, l                                     ; $7E35: $65
    add  b                                        ; $7E36: $80
    sub  [hl]                                     ; $7E37: $96
    rlca                                          ; $7E38: $07
    inc  b                                        ; $7E39: $04
    ld   b, b                                     ; $7E3A: $40
    ld   a, b                                     ; $7E3B: $78
    ld   b, b                                     ; $7E3C: $40
    sub  l                                        ; $7E3D: $95
    rlca                                          ; $7E3E: $07
    inc  b                                        ; $7E3F: $04
    ld   b, b                                     ; $7E40: $40
    ld   [hl], b                                  ; $7E41: $70
    ld   b, b                                     ; $7E42: $40
    sub  a                                        ; $7E43: $97
    nop                                           ; $7E44: $00
    rlca                                          ; $7E45: $07
    stop                                          ; $7E46: $10 $00
    ld   e, e                                     ; $7E48: $5B
    nop                                           ; $7E49: $00
    sub  d                                        ; $7E4A: $92
    ld   b, $04                                   ; $7E4B: $06 $04
    nop                                           ; $7E4D: $00
    ld   h, h                                     ; $7E4E: $64
    nop                                           ; $7E4F: $00
    sub  h                                        ; $7E50: $94
    ld   b, $10                                   ; $7E51: $06 $10
    nop                                           ; $7E53: $00
    ld   a, a                                     ; $7E54: $7F
    nop                                           ; $7E55: $00
    add  e                                        ; $7E56: $83
    ld   b, $10                                   ; $7E57: $06 $10
    nop                                           ; $7E59: $00
    ld   a, [hl]                                  ; $7E5A: $7E
    nop                                           ; $7E5B: $00
    add  d                                        ; $7E5C: $82
    nop                                           ; $7E5D: $00
    rlca                                          ; $7E5E: $07
    ld   [$7440], sp                              ; $7E5F: $08 $40 $74
    ld   b, b                                     ; $7E62: $40
    sub  d                                        ; $7E63: $92
    rlca                                          ; $7E64: $07
    ld   [$7D00], sp                              ; $7E65: $08 $00 $7D
    add  b                                        ; $7E68: $80
    sub  h                                        ; $7E69: $94
    ld   b, $10                                   ; $7E6A: $06 $10
    nop                                           ; $7E6C: $00
    ld   [hl], a                                  ; $7E6D: $77
    nop                                           ; $7E6E: $00
    add  c                                        ; $7E6F: $81
    ld   b, $20                                   ; $7E70: $06 $20
    nop                                           ; $7E72: $00
    ld   a, b                                     ; $7E73: $78
    nop                                           ; $7E74: $00
    add  d                                        ; $7E75: $82
    nop                                           ; $7E76: $00
    rlca                                          ; $7E77: $07
    inc  b                                        ; $7E78: $04
    nop                                           ; $7E79: $00
    ld   a, c                                     ; $7E7A: $79
    ret  nz                                       ; $7E7B: $C0

    sub  b                                        ; $7E7C: $90
    rlca                                          ; $7E7D: $07
    inc  b                                        ; $7E7E: $04
    ld   b, b                                     ; $7E7F: $40
    ld   [hl], c                                  ; $7E80: $71
    add  b                                        ; $7E81: $80
    sub  a                                        ; $7E82: $97
    nop                                           ; $7E83: $00
    rlca                                          ; $7E84: $07
    stop                                          ; $7E85: $10 $00
    ld   l, l                                     ; $7E87: $6D
    nop                                           ; $7E88: $00
    sub  a                                        ; $7E89: $97
    nop                                           ; $7E8A: $00
    rlca                                          ; $7E8B: $07
    stop                                          ; $7E8C: $10 $00
    ld   [hl], a                                  ; $7E8E: $77
    nop                                           ; $7E8F: $00
    sub  a                                        ; $7E90: $97
    nop                                           ; $7E91: $00
    rlca                                          ; $7E92: $07
    inc  c                                        ; $7E93: $0C
    jr   nz, jr_002_7EE2                          ; $7E94: $20 $4C

    db   $10                                      ; $7E96: $10
    add  b                                        ; $7E97: $80
    ld   b, $10                                   ; $7E98: $06 $10
    nop                                           ; $7E9A: $00
    ld   c, a                                     ; $7E9B: $4F
    nop                                           ; $7E9C: $00
    add  c                                        ; $7E9D: $81
    ld   b, $10                                   ; $7E9E: $06 $10
    nop                                           ; $7EA0: $00
    ld   [hl], d                                  ; $7EA1: $72
    nop                                           ; $7EA2: $00
    add  d                                        ; $7EA3: $82
    nop                                           ; $7EA4: $00
    rlca                                          ; $7EA5: $07
    jr   nz, jr_002_7EA8                          ; $7EA6: $20 $00

jr_002_7EA8:
    ld   d, h                                     ; $7EA8: $54
    nop                                           ; $7EA9: $00
    add  b                                        ; $7EAA: $80
    ld   b, $10                                   ; $7EAB: $06 $10
    nop                                           ; $7EAD: $00
    ld   l, a                                     ; $7EAE: $6F
    nop                                           ; $7EAF: $00
    adc  l                                        ; $7EB0: $8D
    rlca                                          ; $7EB1: $07
    stop                                          ; $7EB2: $10 $00
    ld   c, l                                     ; $7EB4: $4D
    nop                                           ; $7EB5: $00
    adc  [hl]                                     ; $7EB6: $8E
    nop                                           ; $7EB7: $00
    ld   b, $7C                                   ; $7EB8: $06 $7C
    ld   b, b                                     ; $7EBA: $40
    ld   h, b                                     ; $7EBB: $60
    ld   b, b                                     ; $7EBC: $40
    sub  b                                        ; $7EBD: $90
    rlca                                          ; $7EBE: $07
    inc  b                                        ; $7EBF: $04
    nop                                           ; $7EC0: $00
    ld   e, c                                     ; $7EC1: $59
    nop                                           ; $7EC2: $00
    sub  b                                        ; $7EC3: $90
    rlca                                          ; $7EC4: $07
    inc  b                                        ; $7EC5: $04
    ret  nz                                       ; $7EC6: $C0

    ld   l, [hl]                                  ; $7EC7: $6E
    ret  nz                                       ; $7EC8: $C0

    sub  [hl]                                     ; $7EC9: $96
    ld   b, $04                                   ; $7ECA: $06 $04
    add  b                                        ; $7ECC: $80
    ld   h, c                                     ; $7ECD: $61
    ret  nz                                       ; $7ECE: $C0

    sub  d                                        ; $7ECF: $92
    ld   b, $34                                   ; $7ED0: $06 $34
    nop                                           ; $7ED2: $00
    ld   l, h                                     ; $7ED3: $6C
    nop                                           ; $7ED4: $00
    add  b                                        ; $7ED5: $80
    nop                                           ; $7ED6: $00
    rlca                                          ; $7ED7: $07
    inc  b                                        ; $7ED8: $04
    nop                                           ; $7ED9: $00
    ld   a, c                                     ; $7EDA: $79
    nop                                           ; $7EDB: $00
    sub  l                                        ; $7EDC: $95
    rlca                                          ; $7EDD: $07
    inc  b                                        ; $7EDE: $04
    ret  nz                                       ; $7EDF: $C0

    ld   l, [hl]                                  ; $7EE0: $6E
    ret  nz                                       ; $7EE1: $C0

jr_002_7EE2:
    sub  [hl]                                     ; $7EE2: $96
    rlca                                          ; $7EE3: $07
    inc  b                                        ; $7EE4: $04
    ret  nz                                       ; $7EE5: $C0

    ld   d, a                                     ; $7EE6: $57
    ret  nz                                       ; $7EE7: $C0

    add  d                                        ; $7EE8: $82
    nop                                           ; $7EE9: $00
    ld   b, $04                                   ; $7EEA: $06 $04
    nop                                           ; $7EEC: $00
    ld   h, l                                     ; $7EED: $65
    add  b                                        ; $7EEE: $80
    sub  e                                        ; $7EEF: $93
    ld   b, $04                                   ; $7EF0: $06 $04
    ret  nz                                       ; $7EF2: $C0

    ld   h, [hl]                                  ; $7EF3: $66
    ld   b, b                                     ; $7EF4: $40
    adc  a                                        ; $7EF5: $8F
    rlca                                          ; $7EF6: $07
    inc  bc                                       ; $7EF7: $03
    ret  nc                                       ; $7EF8: $D0

    ld   c, h                                     ; $7EF9: $4C
    add  b                                        ; $7EFA: $80
    adc  a                                        ; $7EFB: $8F
    ld   b, $04                                   ; $7EFC: $06 $04
    add  b                                        ; $7EFE: $80
    ld   d, c                                     ; $7EFF: $51
    ret  nz                                       ; $7F00: $C0

    adc  a                                        ; $7F01: $8F
    ld   b, $04                                   ; $7F02: $06 $04
    or   b                                        ; $7F04: $B0
    ld   b, a                                     ; $7F05: $47
    nop                                           ; $7F06: $00
    adc  [hl]                                     ; $7F07: $8E
    rlca                                          ; $7F08: $07
    ld   [bc], a                                  ; $7F09: $02
    ldh  [rKEY1], a                               ; $7F0A: $E0 $4D
    ldh  [$FF8E], a                               ; $7F0C: $E0 $8E
    nop                                           ; $7F0E: $00
    rlca                                          ; $7F0F: $07
    inc  bc                                       ; $7F10: $03
    nop                                           ; $7F11: $00
    ld   l, b                                     ; $7F12: $68
    nop                                           ; $7F13: $00
    adc  l                                        ; $7F14: $8D
    ld   b, $04                                   ; $7F15: $06 $04
    nop                                           ; $7F17: $00
    ld   c, l                                     ; $7F18: $4D
    nop                                           ; $7F19: $00
    adc  a                                        ; $7F1A: $8F
    ld   b, $04                                   ; $7F1B: $06 $04
    ret  nz                                       ; $7F1D: $C0

    ld   h, [hl]                                  ; $7F1E: $66
    ld   b, b                                     ; $7F1F: $40
    adc  a                                        ; $7F20: $8F
    rlca                                          ; $7F21: $07
    inc  bc                                       ; $7F22: $03
    ret  nc                                       ; $7F23: $D0

    ld   c, h                                     ; $7F24: $4C
    add  b                                        ; $7F25: $80
    adc  a                                        ; $7F26: $8F
    nop                                           ; $7F27: $00
    ld   b, $10                                   ; $7F28: $06 $10
    nop                                           ; $7F2A: $00
    ld   c, a                                     ; $7F2B: $4F
    nop                                           ; $7F2C: $00
    add  c                                        ; $7F2D: $81
    ld   b, $10                                   ; $7F2E: $06 $10
    nop                                           ; $7F30: $00
    ld   [hl], d                                  ; $7F31: $72
    nop                                           ; $7F32: $00
    add  d                                        ; $7F33: $82
    ld   b, $10                                   ; $7F34: $06 $10
    nop                                           ; $7F36: $00
    ld   a, a                                     ; $7F37: $7F
    nop                                           ; $7F38: $00
    add  e                                        ; $7F39: $83
    nop                                           ; $7F3A: $00
    ld   b, $10                                   ; $7F3B: $06 $10
    nop                                           ; $7F3D: $00
    ld   [hl], a                                  ; $7F3E: $77
    nop                                           ; $7F3F: $00
    add  c                                        ; $7F40: $81
    ld   b, $20                                   ; $7F41: $06 $20
    nop                                           ; $7F43: $00
    ld   a, b                                     ; $7F44: $78
    nop                                           ; $7F45: $00
    add  d                                        ; $7F46: $82
    nop                                           ; $7F47: $00
    rlca                                          ; $7F48: $07
    stop                                          ; $7F49: $10 $00
    ld   d, b                                     ; $7F4B: $50
    nop                                           ; $7F4C: $00
    adc  l                                        ; $7F4D: $8D
    rlca                                          ; $7F4E: $07
    stop                                          ; $7F4F: $10 $00
    ld   d, e                                     ; $7F51: $53
    nop                                           ; $7F52: $00
    adc  [hl]                                     ; $7F53: $8E
    nop                                           ; $7F54: $00
    rlca                                          ; $7F55: $07
    stop                                          ; $7F56: $10 $00
    ld   d, l                                     ; $7F58: $55
    nop                                           ; $7F59: $00
    adc  l                                        ; $7F5A: $8D
    rlca                                          ; $7F5B: $07
    stop                                          ; $7F5C: $10 $00
    ld   d, a                                     ; $7F5E: $57
    nop                                           ; $7F5F: $00
    adc  [hl]                                     ; $7F60: $8E
    nop                                           ; $7F61: $00
    ld   b, $10                                   ; $7F62: $06 $10
    nop                                           ; $7F64: $00
    ld   l, a                                     ; $7F65: $6F
    nop                                           ; $7F66: $00
    add  b                                        ; $7F67: $80
    ld   b, $10                                   ; $7F68: $06 $10
    nop                                           ; $7F6A: $00
    ld   a, [hl]                                  ; $7F6B: $7E
    nop                                           ; $7F6C: $00
    add  d                                        ; $7F6D: $82
    nop                                           ; $7F6E: $00
    ld   b, $0A                                   ; $7F6F: $06 $0A
    nop                                           ; $7F71: $00
    ld   c, a                                     ; $7F72: $4F
    nop                                           ; $7F73: $00
    add  d                                        ; $7F74: $82
    rlca                                          ; $7F75: $07
    inc  b                                        ; $7F76: $04
    ret  nz                                       ; $7F77: $C0

    ld   d, a                                     ; $7F78: $57
    ret  nz                                       ; $7F79: $C0

    add  d                                        ; $7F7A: $82
    nop                                           ; $7F7B: $00
    ld   b, $40                                   ; $7F7C: $06 $40
    nop                                           ; $7F7E: $00
    ld   [hl], h                                  ; $7F7F: $74
    nop                                           ; $7F80: $00
    add  b                                        ; $7F81: $80
    nop                                           ; $7F82: $00
    rlca                                          ; $7F83: $07
    inc  b                                        ; $7F84: $04
    nop                                           ; $7F85: $00
    ld   d, b                                     ; $7F86: $50
    nop                                           ; $7F87: $00
    adc  l                                        ; $7F88: $8D
    nop                                           ; $7F89: $00
    ld   b, $20                                   ; $7F8A: $06 $20
    nop                                           ; $7F8C: $00
    ld   [hl], e                                  ; $7F8D: $73
    nop                                           ; $7F8E: $00
    add  b                                        ; $7F8F: $80
    ld   b, $10                                   ; $7F90: $06 $10
    nop                                           ; $7F92: $00
    ld   [hl], h                                  ; $7F93: $74
    nop                                           ; $7F94: $00
    add  d                                        ; $7F95: $82
    rlca                                          ; $7F96: $07
    inc  b                                        ; $7F97: $04
    nop                                           ; $7F98: $00
    ld   e, c                                     ; $7F99: $59
    nop                                           ; $7F9A: $00
    sub  b                                        ; $7F9B: $90
    rlca                                          ; $7F9C: $07
    ld   e, h                                     ; $7F9D: $5C
    ld   b, b                                     ; $7F9E: $40
    ld   [hl], b                                  ; $7F9F: $70
    ld   b, b                                     ; $7FA0: $40
    sub  b                                        ; $7FA1: $90
    rlca                                          ; $7FA2: $07
    jr   nz, jr_002_7FA5                          ; $7FA3: $20 $00

jr_002_7FA5:
    ld   c, [hl]                                  ; $7FA5: $4E
    nop                                           ; $7FA6: $00
    sub  [hl]                                     ; $7FA7: $96
    nop                                           ; $7FA8: $00
    rlca                                          ; $7FA9: $07
    ld   [bc], a                                  ; $7FAA: $02
    ret  nz                                       ; $7FAB: $C0

    ld   c, l                                     ; $7FAC: $4D
    ret  nz                                       ; $7FAD: $C0

    adc  [hl]                                     ; $7FAE: $8E
    nop                                           ; $7FAF: $00
    rlca                                          ; $7FB0: $07
    ld   b, $40                                   ; $7FB1: $06 $40
    ld   e, a                                     ; $7FB3: $5F
    nop                                           ; $7FB4: $00
    adc  l                                        ; $7FB5: $8D
    nop                                           ; $7FB6: $00
    rlca                                          ; $7FB7: $07
    add  b                                        ; $7FB8: $80
    nop                                           ; $7FB9: $00
    ld   b, b                                     ; $7FBA: $40
    nop                                           ; $7FBB: $00
    add  h                                        ; $7FBC: $84
    ld   b, $04                                   ; $7FBD: $06 $04
    nop                                           ; $7FBF: $00
    ld   a, a                                     ; $7FC0: $7F
    nop                                           ; $7FC1: $00
    adc  l                                        ; $7FC2: $8D
    nop                                           ; $7FC3: $00
    rlca                                          ; $7FC4: $07
    ld   l, h                                     ; $7FC5: $6C
    ld   b, b                                     ; $7FC6: $40
    ld   l, b                                     ; $7FC7: $68
    ld   b, b                                     ; $7FC8: $40
    sub  b                                        ; $7FC9: $90
    rlca                                          ; $7FCA: $07
    stop                                          ; $7FCB: $10 $00
    ld   e, b                                     ; $7FCD: $58
    nop                                           ; $7FCE: $00
    sub  a                                        ; $7FCF: $97
    rlca                                          ; $7FD0: $07
    inc  b                                        ; $7FD1: $04
    nop                                           ; $7FD2: $00
    ld   e, c                                     ; $7FD3: $59
    nop                                           ; $7FD4: $00
    sub  b                                        ; $7FD5: $90
    rlca                                          ; $7FD6: $07
    inc  b                                        ; $7FD7: $04
    ld   b, b                                     ; $7FD8: $40
    ld   d, e                                     ; $7FD9: $53
    ld   b, b                                     ; $7FDA: $40
    adc  [hl]                                     ; $7FDB: $8E
    rlca                                          ; $7FDC: $07
    ld   [bc], a                                  ; $7FDD: $02
    ld   h, b                                     ; $7FDE: $60
    ld   c, c                                     ; $7FDF: $49
    and  b                                        ; $7FE0: $A0
    add  a                                        ; $7FE1: $87
    rlca                                          ; $7FE2: $07
    ld   [bc], a                                  ; $7FE3: $02
    nop                                           ; $7FE4: $00
    ld   c, d                                     ; $7FE5: $4A
    ret  nz                                       ; $7FE6: $C0

    add  a                                        ; $7FE7: $87
    rlca                                          ; $7FE8: $07
    ld   [bc], a                                  ; $7FE9: $02
    ldh  [rWX], a                                 ; $7FEA: $E0 $4B
    ldh  [$FF87], a                               ; $7FEC: $E0 $87
    nop                                           ; $7FEE: $00
    ld   b, $20                                   ; $7FEF: $06 $20
    nop                                           ; $7FF1: $00
    ld   l, b                                     ; $7FF2: $68
    nop                                           ; $7FF3: $00
    adc  l                                        ; $7FF4: $8D
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
