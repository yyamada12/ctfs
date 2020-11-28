
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
    1f0c:	c87df030 	shori	8060,r3
    1f10:	cc000040 	movi	0,r4
    1f14:	cc001420 	movi	5,r2
    1f18:	cc008800 	movi	34,r0
    1f1c:	6c01fff0 	trapa	r0

0000000000001f20 <___r_read>:
    1f20:	0029fc30 	add	r2,r63,r3
    1f24:	cc000040 	movi	0,r4
    1f28:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    1f2c:	c8000040 	shori	0,r4
    1f30:	c87e2040 	shori	8072,r4
    1f34:	cc008050 	movi	32,r5
    1f38:	cc000c20 	movi	3,r2
    1f3c:	cc008800 	movi	34,r0
    1f40:	6c01fff0 	trapa	r0

0000000000001f44 <_save_size>:
    1f44:	0029fc60 	add	r2,r63,r6

0000000000001f48 <___r_write>:
    1f48:	cc000430 	movi	1,r3
    1f4c:	cc000040 	movi	0,r4
    1f50:	c8000040 	shori	0,r4	! 0x0 <_.xy-0x4>
    1f54:	c8000040 	shori	0,r4
    1f58:	c87e2040 	shori	8072,r4
    1f5c:	0069fc50 	add	r6,r63,r5
    1f60:	cc001020 	movi	4,r2
    1f64:	cc008800 	movi	34,r0
    1f68:	6c01fff0 	trapa	r0

0000000000001f6c <___r_exit>:
    1f6c:	cc000030 	movi	0,r3
    1f70:	cc000420 	movi	1,r2
    1f74:	cc008800 	movi	34,r0
    1f78:	6c01fff0 	trapa	r0

0000000000001f7c <_fname>:
    1f7c:	776f7264 	.long 0x776f7264
    1f80:	2e747874 	.long 0x2e747874
    1f84:	00000000 	.long 0x00000000

0000000000001f88 <_buffer>:
	...
