
cr16-elf.x:     file format elf32-cr16


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	illegal 
	...

00000004 <_.xy>:
       4:	00 00       	illegal 
	...

00000008 <_.z>:
       8:	00 00       	illegal 
	...

0000000c <_.frame>:
       c:	00 00       	illegal 
	...

00000010 <_.d1>:
      10:	00 00       	illegal 
	...

00000014 <_.d2>:
      14:	00 00       	illegal 
	...

00000018 <_.d3>:
      18:	00 00       	illegal 
	...

0000001c <_.d4>:
	...

00001af8 <_start>:
    1af8:	64 63       	muluw	r6,(r5,r4)
    1afa:	62 61       	addd	(r7,r6),(r3,r2)
	...
    1b08:	86 0d       	bne0b	r6,*+0x32 <_.d4+0x16>:s
	...

00001b0c <_code>:
    1b0c:	bf 5a f8 1a 	movw	$0x1af8:m,r15

00001b10 <___open>:
    1b10:	b2 5a 96 1b 	movw	$0x1b96:m,r2
    1b14:	03 5a       	movw	$0x0:s,r3
    1b16:	b0 5a 01 04 	movw	$0x401:m,r0
    1b1a:	c8 00       	excp	bpt

00001b1c <___read>:
    1b1c:	02 5b       	movw	r0,r2
    1b1e:	b3 5a ac 1b 	movw	$0x1bac:m,r3
    1b22:	04 5a       	movw	$0x0:s,r4
    1b24:	b5 5a 10 00 	movw	$0x10:m,r5
    1b28:	b0 5a 03 04 	movw	$0x403:m,r0
    1b2c:	c8 00       	excp	bpt

00001b2e <_save_size>:
    1b2e:	06 5b       	movw	r0,r6

00001b30 <___kopen>:
    1b30:	b2 5a a3 1b 	movw	$0x1ba3:m,r2
    1b34:	03 5a       	movw	$0x0:s,r3
    1b36:	b0 5a 01 04 	movw	$0x401:m,r0
    1b3a:	c8 00       	excp	bpt

00001b3c <___kread>:
    1b3c:	02 5b       	movw	r0,r2
    1b3e:	b3 5a bc 1b 	movw	$0x1bbc:m,r3
    1b42:	04 5a       	movw	$0x0:s,r4
    1b44:	65 5b       	movw	r6,r5
    1b46:	b0 5a 03 04 	movw	$0x403:m,r0
    1b4a:	c8 00       	excp	bpt

00001b4c <_exchange>:
    1b4c:	b2 5a ac 1b 	movw	$0x1bac:m,r2
    1b50:	03 5a       	movw	$0x0:s,r3
    1b52:	b4 5a bc 1b 	movw	$0x1bbc:m,r4
    1b56:	05 5a       	movw	$0x0:s,r5
    1b58:	20 55       	movd	(r3,r2),(r1,r0)
    1b5a:	07 5a       	movw	$0x0:s,r7
    1b5c:	60 61       	addd	(r7,r6),(r1,r0)

00001b5e <.L11>:
    1b5e:	72 b0       	loadb	0x0:s(r3,r2),r7
    1b60:	84 b0       	loadb	0x0:s(r5,r4),r8
    1b62:	87 29       	xorb	r8,r7
    1b64:	72 f0       	storb	r7,0x0:s(r3,r2)
    1b66:	12 60       	addd	$0x1:s,(r3,r2)
    1b68:	14 60       	addd	$0x1:s,(r5,r4)
    1b6a:	20 57       	cmpd	(r3,r2),(r1,r0)
    1b6c:	19 1f       	bne	*-0x1b5e <.L11>:s

00001b6e <___write>:
    1b6e:	12 5a       	movw	$0x1:s,r2
    1b70:	b3 5a ac 1b 	movw	$0x1bac:m,r3
    1b74:	04 5a       	movw	$0x0:s,r4
    1b76:	65 5b       	movw	r6,r5
    1b78:	b0 5a 04 04 	movw	$0x404:m,r0
    1b7c:	c8 00       	excp	bpt

00001b7e <___kwrite>:
    1b7e:	12 5a       	movw	$0x1:s,r2
    1b80:	b3 5a bc 1b 	movw	$0x1bbc:m,r3
    1b84:	04 5a       	movw	$0x0:s,r4
    1b86:	65 5b       	movw	r6,r5
    1b88:	b0 5a 04 04 	movw	$0x404:m,r0
    1b8c:	c8 00       	excp	bpt

00001b8e <___exit>:
    1b8e:	02 5a       	movw	$0x0:s,r2
    1b90:	b0 5a 10 04 	movw	$0x410:m,r0
    1b94:	c8 00       	excp	bpt

00001b96 <_fname>:
    1b96:	70 61       	addd	(r8,r7),(r1,r0)
    1b98:	73 73 77 6f 	sbitb	$0x7,0x6f77:m(r4,r3)
    1b9c:	72 64       	mulb	$0x7:s,r2
    1b9e:	2e 74 78 74 	sbitw	$0x2:s,[r12]0xe7478:m
	...

00001ba3 <_kname>:
    1ba3:	6b 65       	mulb	r6,r11
    1ba5:	79 2e       	adduw	$0x7:s,r9
    1ba7:	62 69 6e 00 	cbitw	$0x6:s,0x6e:m(r3,r2)
	...

00001bac <_buffer>:
	...

00001bbc <_kbuffer>:
	...
