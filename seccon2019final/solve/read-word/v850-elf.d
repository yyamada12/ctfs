
v850-elf.x:     file format elf32-v850-rh850


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	nop	
	...

00000004 <_.xy>:
       4:	00 00       	nop	
	...

00000008 <_.z>:
       8:	00 00       	nop	
	...

0000000c <_.frame>:
       c:	00 00       	nop	
	...

00000010 <_.d1>:
      10:	00 00       	nop	
	...

00000014 <_.d2>:
      14:	00 00       	nop	
	...

00000018 <_.d3>:
      18:	00 00       	nop	
	...

0000001c <_.d4>:
	...

00001ef4 <_start>:
    1ef4:	64 63       	sld.b	100[ep], r12
    1ef6:	62 61       	tst	r2, r12
	...
    1f08:	0c 1f 00 00 	ld.b	0[r12], sp

00001f0c <_code>:
    1f0c:	40 1e 00 00 	movhi	0, r0, sp
    1f10:	23 1e f4 1e 	movea	7924, sp, sp

00001f14 <___r_open>:
    1f14:	40 3e 00 00 	movhi	0, r0, r7
    1f18:	27 3e 5c 1f 	movea	8028, r7, r7
    1f1c:	00 42       	mov	0, r8
    1f1e:	05 32       	mov	5, r6
    1f20:	ff 07 00 01 	trap	31

00001f24 <___r_read>:
    1f24:	00 3a       	mov	0, r7
    1f26:	ca 39       	add	r10, r7
    1f28:	40 46 00 00 	movhi	0, r0, r8
    1f2c:	28 46 68 1f 	movea	8040, r8, r8
    1f30:	40 4e 00 00 	movhi	0, r0, r9
    1f34:	29 4e 20 00 	movea	32, r9, r9
    1f38:	03 32       	mov	3, r6
    1f3a:	ff 07 00 01 	trap	31

00001f3e <_save_size>:
    1f3e:	00 62       	mov	0, r12
    1f40:	ca 61       	add	r10, r12

00001f42 <___r_write>:
    1f42:	01 3a       	mov	1, r7
    1f44:	40 46 00 00 	movhi	0, r0, r8
    1f48:	28 46 68 1f 	movea	8040, r8, r8
    1f4c:	0c 48       	mov	r12, r9
    1f4e:	04 32       	mov	4, r6
    1f50:	ff 07 00 01 	trap	31

00001f54 <___r_exit>:
    1f54:	00 3a       	mov	0, r7
    1f56:	01 32       	mov	1, r6
    1f58:	ff 07 00 01 	trap	31

00001f5c <_fname>:
    1f5c:	77 6f 72 64 	st.h	r13, 25714[r23]
    1f60:	2e 74       	sld.h	92[ep], r14
    1f62:	78 74       	sld.h	240[ep], r14
    1f64:	00 00       	nop	
	...

00001f68 <_buffer>:
	...
