
sh64-elf.x:     file format elf64-sh64


Disassembly of section .text:

0000000000000000 <_.xy-0x4>:
       0:	00000000 	.long 0x00000000

0000000000000004 <_.xy>:
       4:	00000000 	.long 0x00000000

0000000000000008 <_.z>:
       8:	00000000 	.long 0x00000000

000000000000000c <_.frame>:
       c:	00000000 	.long 0x00000000

0000000000000010 <_.d1>:
      10:	00000000 	.long 0x00000000

0000000000000014 <_.d2>:
      14:	00000000 	.long 0x00000000

0000000000000018 <_.d3>:
      18:	00000000 	.long 0x00000000

000000000000001c <_.d4>:
	...

0000000000001ed8 <_start>:
    1ed8:	61626364 	.long 0x61626364
	...
    1eec:	00001ef1 	.long 0x00001ef1

0000000000001ef0 <_code>:
    1ef0:	cc0000f0 	movi	0,r15
    1ef4:	c80000f0 	shori	0,r15	! 0x0 <_.xy-0x4>
    1ef8:	c80000f0 	shori	0,r15
    1efc:	c87b64f0 	shori	7897,r15

0000000000001f00 <___r_open>:
    1f00:	cc000030 	movi	0,r3
    1f04:	c8000030 	shori	0,r3	! 0x0 <_.xy-0x4>
    1f08:	c8000030 	shori	0,r3
    1f0c:	c880a030 	shori	8232,r3
    1f10:	cc000040 	movi	0,r4
    1f14:	cc001420 	movi	5,r2
    1f18:	cc008800 	movi	34,r0
    1f1c:	6c01fff0 	trapa	r0

0000000000001f20 <___r_read>:
    1f20:	0029fc30 	add	r2,r63,r3
    1f24:	cc000040 	movi	0,r4
    1f28:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    1f2c:	c8000040 	shori	0,r4
    1f30:	c8810040 	shori	8256,r4
    1f34:	cc004050 	movi	16,r5
    1f38:	cc000c20 	movi	3,r2
    1f3c:	cc008800 	movi	34,r0
    1f40:	6c01fff0 	trapa	r0

0000000000001f44 <_save_size>:
    1f44:	0029fc60 	add	r2,r63,r6

0000000000001f48 <___r_kopen>:
    1f48:	cc000030 	movi	0,r3
    1f4c:	c8000030 	shori	0,r3	! 0x0 <_.xy-0x4>
    1f50:	c8000030 	shori	0,r3
    1f54:	c880d430 	shori	8245,r3
    1f58:	cc000040 	movi	0,r4
    1f5c:	cc001420 	movi	5,r2
    1f60:	cc008800 	movi	34,r0
    1f64:	6c01fff0 	trapa	r0

0000000000001f68 <___r_kread>:
    1f68:	0029fc30 	add	r2,r63,r3
    1f6c:	cc000040 	movi	0,r4
    1f70:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    1f74:	c8000040 	shori	0,r4
    1f78:	c8814040 	shori	8272,r4
    1f7c:	0069fc50 	add	r6,r63,r5
    1f80:	cc000c20 	movi	3,r2
    1f84:	cc008800 	movi	34,r0
    1f88:	6c01fff0 	trapa	r0

0000000000001f8c <_exchange>:
    1f8c:	cc000020 	movi	0,r2
    1f90:	c8000020 	shori	0,r2	! 0x0 <_.xy-0x4>
    1f94:	c8000020 	shori	0,r2
    1f98:	c8810020 	shori	8256,r2
    1f9c:	cc000030 	movi	0,r3
    1fa0:	c8000030 	shori	0,r3	! 0x0 <_.xy-0x4>
    1fa4:	c8000030 	shori	0,r3
    1fa8:	c8814030 	shori	8272,r3
    1fac:	00291800 	add	r2,r6,r0
    1fb0:	90200040 	ld.ub	r2,0,r4
    1fb4:	90300050 	ld.ub	r3,0,r5
    1fb8:	044d1440 	xor	r4,r5,r4
    1fbc:	a0200040 	st.b	r2,0,r4
    1fc0:	d0200420 	addi	r2,1,r2
    1fc4:	d0300430 	addi	r3,1,r3
    1fc8:	ebffea00 	pta/l	1fb0 <_exchange+0x24>,tr0
    1fcc:	64250200 	bne/l	r2,r0,tr0

0000000000001fd0 <___r_write>:
    1fd0:	cc000430 	movi	1,r3
    1fd4:	cc000040 	movi	0,r4
    1fd8:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    1fdc:	c8000040 	shori	0,r4
    1fe0:	c8810040 	shori	8256,r4
    1fe4:	0069fc50 	add	r6,r63,r5
    1fe8:	cc001020 	movi	4,r2
    1fec:	cc008800 	movi	34,r0
    1ff0:	6c01fff0 	trapa	r0

0000000000001ff4 <___r_kwrite>:
    1ff4:	cc000430 	movi	1,r3
    1ff8:	cc000040 	movi	0,r4
    1ffc:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    2000:	c8000040 	shori	0,r4
    2004:	c8814040 	shori	8272,r4
    2008:	0069fc50 	add	r6,r63,r5
    200c:	cc001020 	movi	4,r2
    2010:	cc008800 	movi	34,r0
    2014:	6c01fff0 	trapa	r0

0000000000002018 <___r_exit>:
    2018:	cc000030 	movi	0,r3
    201c:	cc000420 	movi	1,r2
    2020:	cc008800 	movi	34,r0
    2024:	6c01fff0 	trapa	r0

0000000000002028 <_fname>:
    2028:	70617373 	.long 0x70617373
    202c:	776f7264 	.long 0x776f7264
    2030:	2e747874 	.long 0x2e747874
	...

0000000000002035 <_kname>:
    2035:	6b65792e 	.long 0x006b6579
    2039:	62696e00 	.long 0x2e62696e
    203d:	00000000 	.long 0x00000000

0000000000002040 <_buffer>:
	...

0000000000002050 <_kbuffer>:
	...
