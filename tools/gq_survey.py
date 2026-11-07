#!/usr/bin/env python3
import argparse, hashlib, zlib
from pathlib import Path

R=['B','C','D','E','H','L','(HL)','A']
RP=['BC','DE','HL','SP']; RP2=['BC','DE','HL','AF']; CC=['NZ','Z','NC','C']
ALU=['ADD A,','ADC A,','SUB ','SBC A,','AND ','XOR ','OR ','CP ']
ROT=['RLC','RRC','RL','RR','SLA','SRA','SWAP','SRL']

def s8(x): return x-256 if x>=128 else x

def dec(d,o,a):
    op=d[o]; x=op>>6; y=(op>>3)&7; z=op&7; p=y>>1; q=y&1; n=1; tgt=None; flow='next'
    def i8():
        nonlocal n; n=max(n,2); return d[o+1]
    def i16():
        nonlocal n; n=max(n,3); return d[o+1]|(d[o+2]<<8)
    if op==0xCB:
        b=i8(); xx=b>>6; yy=(b>>3)&7; zz=b&7
        t=(f'{ROT[yy]} {R[zz]}' if xx==0 else f'BIT {yy},{R[zz]}' if xx==1 else f'RES {yy},{R[zz]}' if xx==2 else f'SET {yy},{R[zz]}')
    elif x==0:
        if z==0:
            if y==0:t='NOP'
            elif y==1:t=f'LD (${i16():04X}),SP'
            elif y==2:i8();t='STOP';flow='stop'
            elif y==3:
                e=i8();tgt=(a+2+s8(e))&0xffff;t=f'JR ${tgt:04X}';flow='jmp'
            else:
                e=i8();tgt=(a+2+s8(e))&0xffff;t=f'JR {CC[y-4]},${tgt:04X}';flow='cjmp'
        elif z==1:t=f'LD {RP[p]},${i16():04X}' if not q else f'ADD HL,{RP[p]}'
        elif z==2:t=f"LD {['(BC)','(DE)','(HL+)','(HL-)'][p]},A" if not q else f"LD A,{['(BC)','(DE)','(HL+)','(HL-)'][p]}"
        elif z==3:t=f"{'INC' if not q else 'DEC'} {RP[p]}"
        elif z==4:t=f'INC {R[y]}'
        elif z==5:t=f'DEC {R[y]}'
        elif z==6:t=f'LD {R[y]},${i8():02X}'
        else:t=['RLCA','RRCA','RLA','RRA','DAA','CPL','SCF','CCF'][y]
    elif x==1:
        if y==6 and z==6:t='HALT';flow='stop'
        else:t=f'LD {R[y]},{R[z]}'
    elif x==2:t=ALU[y]+R[z]
    else:
        if z==0:
            if y<=3:t=f'RET {CC[y]}';flow='cret'
            elif y==4:t=f'LDH ($FF{i8():02X}),A'
            elif y==5:t=f'ADD SP,{s8(i8()):+d}'
            elif y==6:t=f'LDH A,($FF{i8():02X})'
            else:t=f'LD HL,SP{s8(i8()):+d}'
        elif z==1:
            if not q:t=f'POP {RP2[p]}'
            elif p==0:t='RET';flow='ret'
            elif p==1:t='RETI';flow='ret'
            elif p==2:t='JP (HL)';flow='indirect'
            else:t='LD SP,HL'
        elif z==2:
            if y<=3:tgt=i16();t=f'JP {CC[y]},${tgt:04X}';flow='cjmp'
            elif y==4:t='LDH (C),A'
            elif y==5:t=f'LD (${i16():04X}),A'
            elif y==6:t='LDH A,(C)'
            else:t=f'LD A,(${i16():04X})'
        elif z==3:
            if y==0:tgt=i16();t=f'JP ${tgt:04X}';flow='jmp'
            elif y==6:t='DI'
            elif y==7:t='EI'
            else:t=f'ILLEGAL ${op:02X}';flow='stop'
        elif z==4:
            if y<=3:tgt=i16();t=f'CALL {CC[y]},${tgt:04X}';flow='ccall'
            else:t=f'ILLEGAL ${op:02X}';flow='stop'
        elif z==5:
            if not q:t=f'PUSH {RP2[p]}'
            elif p==0:tgt=i16();t=f'CALL ${tgt:04X}';flow='call'
            else:t=f'ILLEGAL ${op:02X}';flow='stop'
        elif z==6:t=ALU[y]+f'${i8():02X}'
        else:tgt=y*8;t=f'RST ${tgt:02X}';flow='rst'
    return n,t,tgt,flow

def off(bank,addr):
    return addr if bank==0 else bank*0x4000+(addr-0x4000)

def main():
    ap=argparse.ArgumentParser(); ap.add_argument('rom',type=Path)
    ap.add_argument('--disasm',metavar='BANK:ADDR'); ap.add_argument('--count',type=int,default=40)
    ap.add_argument('--mapper-writes',action='store_true'); args=ap.parse_args(); d=args.rom.read_bytes()
    x=0
    for b in d[0x134:0x14d]:x=(x-b-1)&255
    g=(sum(d[:0x14e])+sum(d[0x150:]))&0xffff
    print('size',len(d),'bytes'); print('title',d[0x134:0x144].split(b'\0')[0].decode('ascii','replace'))
    print(f'cart={d[0x147]:02X} rom_size={d[0x148]:02X} ram_size={d[0x149]:02X} cgb={d[0x143]:02X} sgb={d[0x146]:02X}')
    print(f'header checksum stored={d[0x14d]:02X} calc={x:02X}')
    print(f'global checksum stored={int.from_bytes(d[0x14e:0x150],"big"):04X} calc={g:04X}')
    print('md5',hashlib.md5(d).hexdigest()); print('sha1',hashlib.sha1(d).hexdigest()); print(f'crc32 {zlib.crc32(d)&0xffffffff:08X}')
    if args.mapper_writes:
        for i in range(len(d)-2):
            if d[i:i+3]==b'\xea\x00\x30':
                b=i//0x4000; a=i if b==0 else 0x4000+i%0x4000; print(f'bank{b} cpu ${a:04X} file ${i:05X}')
    if args.disasm:
        bs,as_=args.disasm.split(':'); bank=int(bs,0); a=int(as_,0); o=off(bank,a)
        for _ in range(args.count):
            n,t,_,_=dec(d,o,a); raw=d[o:o+n].hex(' '); print(f'B{bank}:${a:04X} [{o:05X}] {raw:<8} {t}'); o+=n;a+=n
if __name__=='__main__':main()
