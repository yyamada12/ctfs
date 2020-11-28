
frv-elf.x:     file format elf32-frv


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00 00 00 	add.p gr0,gr0,gr0

00000004 <_.xy>:
       4:	00 00 00 00 	add.p gr0,gr0,gr0

00000008 <_.z>:
       8:	00 00 00 00 	add.p gr0,gr0,gr0

0000000c <_.frame>:
       c:	00 00 00 00 	add.p gr0,gr0,gr0

00000010 <_.d1>:
      10:	00 00 00 00 	add.p gr0,gr0,gr0

00000014 <_.d2>:
      14:	00 00 00 00 	add.p gr0,gr0,gr0

00000018 <_.d3>:
      18:	00 00 00 00 	add.p gr0,gr0,gr0

0000001c <_.d4>:
	...

00001ae0 <_start>:
    1ae0:	61 62 63 64 	csub.p gr38,gr36,gr48,cc1,0x1
	...
    1af8:	00 00 1b 00 	cmpb.p sp,gr0,icc2
    1afc:	00 00 00 00 	add.p gr0,gr0,gr0

00001b00 <_code>:
    1b00:	82 f8 00 00 	sethi hi(0x0),sp
    1b04:	82 f4 1a e0 	setlo 0x1ae0,sp
    1b08:	80 88 00 00 	nop
    1b0c:	80 88 00 00 	nop

00001b10 <__open>:
    1b10:	90 f8 00 00 	sethi hi(0x0),gr8
    1b14:	90 f4 1b 90 	setlo 0x1b90,gr8
    1b18:	92 fc 00 00 	setlos lo(0x0),gr9
    1b1c:	80 88 00 00 	nop
    1b20:	8e fc 00 02 	setlos 0x2,gr7
    1b24:	c0 70 00 00 	tira gr0,0
    1b28:	80 88 00 00 	nop
    1b2c:	80 88 00 00 	nop

00001b30 <__read>:
    1b30:	92 f8 00 00 	sethi hi(0x0),gr9
    1b34:	92 f4 1b 9c 	setlo 0x1b9c,gr9
    1b38:	94 fc 00 20 	setlos 0x20,gr10
    1b3c:	80 88 00 00 	nop
    1b40:	8e fc 00 04 	setlos 0x4,gr7
    1b44:	c0 70 00 00 	tira gr0,0
    1b48:	80 88 00 00 	nop
    1b4c:	80 88 00 00 	nop

00001b50 <_save_size>:
    1b50:	96 88 80 00 	ori gr8,0,gr11
    1b54:	80 88 00 00 	nop
    1b58:	80 88 00 00 	nop
    1b5c:	80 88 00 00 	nop

00001b60 <__write>:
    1b60:	90 fc 00 01 	setlos 0x1,gr8
    1b64:	92 f8 00 00 	sethi hi(0x0),gr9
    1b68:	92 f4 1b 9c 	setlo 0x1b9c,gr9
    1b6c:	94 88 b0 00 	ori gr11,0,gr10
    1b70:	8e fc 00 05 	setlos 0x5,gr7
    1b74:	c0 70 00 00 	tira gr0,0
    1b78:	80 88 00 00 	nop
    1b7c:	80 88 00 00 	nop

00001b80 <__exit>:
    1b80:	90 fc 00 00 	setlos lo(0x0),gr8
    1b84:	8e fc 00 01 	setlos 0x1,gr7
    1b88:	c0 70 00 00 	tira gr0,0
    1b8c:	80 88 00 00 	nop

00001b90 <_fname>:
    1b90:	77 6f 72 64 	corcc.p gr55,gr36,gr59,cc1,0x0
    1b94:	2e 74 78 74 	ftiul.p fcc3,gr7,-1932
    1b98:	00 00 00 00 	add.p gr0,gr0,gr0

00001b9c <_buffer>:
	...
