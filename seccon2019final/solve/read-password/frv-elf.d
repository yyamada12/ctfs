
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
    1b14:	90 f4 1c 30 	setlo 0x1c30,gr8
    1b18:	92 fc 00 00 	setlos lo(0x0),gr9
    1b1c:	80 88 00 00 	nop
    1b20:	8e fc 00 02 	setlos 0x2,gr7
    1b24:	c0 70 00 00 	tira gr0,0
    1b28:	80 88 00 00 	nop
    1b2c:	80 88 00 00 	nop

00001b30 <__read>:
    1b30:	92 f8 00 00 	sethi hi(0x0),gr9
    1b34:	92 f4 1c 48 	setlo 0x1c48,gr9
    1b38:	94 fc 00 10 	setlos 0x10,gr10
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

00001b60 <__kopen>:
    1b60:	90 f8 00 00 	sethi hi(0x0),gr8
    1b64:	90 f4 1c 3d 	setlo 0x1c3d,gr8
    1b68:	92 fc 00 00 	setlos lo(0x0),gr9
    1b6c:	80 88 00 00 	nop
    1b70:	8e fc 00 02 	setlos 0x2,gr7
    1b74:	c0 70 00 00 	tira gr0,0
    1b78:	80 88 00 00 	nop
    1b7c:	80 88 00 00 	nop

00001b80 <__kread>:
    1b80:	92 f8 00 00 	sethi hi(0x0),gr9
    1b84:	92 f4 1c 58 	setlo 0x1c58,gr9
    1b88:	94 88 b0 00 	ori gr11,0,gr10
    1b8c:	80 88 00 00 	nop
    1b90:	8e fc 00 04 	setlos 0x4,gr7
    1b94:	c0 70 00 00 	tira gr0,0
    1b98:	80 88 00 00 	nop
    1b9c:	80 88 00 00 	nop

00001ba0 <_exchange>:
    1ba0:	90 f8 00 00 	sethi hi(0x0),gr8
    1ba4:	90 f4 1c 48 	setlo 0x1c48,gr8
    1ba8:	92 f8 00 00 	sethi hi(0x0),gr9
    1bac:	92 f4 1c 58 	setlo 0x1c58,gr9
    1bb0:	88 fc 00 00 	setlos lo(0x0),gr4
    1bb4:	80 88 00 00 	nop
    1bb8:	80 88 00 00 	nop
    1bbc:	80 88 00 00 	nop
    1bc0:	8a 08 80 04 	ldsb @(gr8,gr4),gr5
    1bc4:	8c 08 90 04 	ldsb @(gr9,gr4),gr6
    1bc8:	8a 04 51 06 	xor gr5,gr6,gr5
    1bcc:	8a 0c 80 04 	stb gr5,@(gr8,gr4)
    1bd0:	88 40 40 01 	addi gr4,1,gr4
    1bd4:	80 00 41 4b 	subcc gr4,gr11,gr0,icc0
    1bd8:	e0 1a ff fa 	bne icc0,0x2,1bc0 <_exchange+0x20>
    1bdc:	80 88 00 00 	nop

00001be0 <__write>:
    1be0:	90 fc 00 01 	setlos 0x1,gr8
    1be4:	92 f8 00 00 	sethi hi(0x0),gr9
    1be8:	92 f4 1c 48 	setlo 0x1c48,gr9
    1bec:	94 88 b0 00 	ori gr11,0,gr10
    1bf0:	8e fc 00 05 	setlos 0x5,gr7
    1bf4:	c0 70 00 00 	tira gr0,0
    1bf8:	80 88 00 00 	nop
    1bfc:	80 88 00 00 	nop

00001c00 <__kwrite>:
    1c00:	90 fc 00 01 	setlos 0x1,gr8
    1c04:	92 f8 00 00 	sethi hi(0x0),gr9
    1c08:	92 f4 1c 58 	setlo 0x1c58,gr9
    1c0c:	94 88 b0 00 	ori gr11,0,gr10
    1c10:	8e fc 00 05 	setlos 0x5,gr7
    1c14:	c0 70 00 00 	tira gr0,0
    1c18:	80 88 00 00 	nop
    1c1c:	80 88 00 00 	nop

00001c20 <__exit>:
    1c20:	90 fc 00 00 	setlos lo(0x0),gr8
    1c24:	8e fc 00 01 	setlos 0x1,gr7
    1c28:	c0 70 00 00 	tira gr0,0
    1c2c:	80 88 00 00 	nop

00001c30 <_fname>:
    1c30:	70 61 73 73 	smuli.p gr23,883,gr56
    1c34:	77 6f 72 64 	corcc.p gr55,gr36,gr59,cc1,0x0
    1c38:	2e 74 78 74 	ftiul.p fcc3,gr7,-1932
	...

00001c3d <_kname>:
    1c3d:	6b 65 79 2e 	caddcc.p gr23,gr46,gr53,cc4,0x1
    1c41:	62 69 6e 00 	umuli.p gr22,-512,gr49
    1c45:	Address 0x00001c45 is out of bounds.


00001c48 <_buffer>:
	...

00001c58 <_kbuffer>:
	...
