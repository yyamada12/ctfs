
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
    1f18:	27 3e bc 1f 	movea	8124, r7, r7
    1f1c:	00 42       	mov	0, r8
    1f1e:	05 32       	mov	5, r6
    1f20:	ff 07 00 01 	trap	31

00001f24 <___r_read>:
    1f24:	00 3a       	mov	0, r7
    1f26:	ca 39       	add	r10, r7
    1f28:	40 46 00 00 	movhi	0, r0, r8
    1f2c:	28 46 d4 1f 	movea	8148, r8, r8
    1f30:	40 4e 00 00 	movhi	0, r0, r9
    1f34:	29 4e 10 00 	movea	16, r9, r9
    1f38:	03 32       	mov	3, r6
    1f3a:	ff 07 00 01 	trap	31

00001f3e <_save_size>:
    1f3e:	00 62       	mov	0, r12
    1f40:	ca 61       	add	r10, r12

00001f42 <___r_kopen>:
    1f42:	40 3e 00 00 	movhi	0, r0, r7
    1f46:	27 3e c9 1f 	movea	8137, r7, r7
    1f4a:	00 42       	mov	0, r8
    1f4c:	05 32       	mov	5, r6
    1f4e:	ff 07 00 01 	trap	31

00001f52 <___r_kread>:
    1f52:	00 3a       	mov	0, r7
    1f54:	ca 39       	add	r10, r7
    1f56:	40 46 00 00 	movhi	0, r0, r8
    1f5a:	28 46 e4 1f 	movea	8164, r8, r8
    1f5e:	0c 48       	mov	r12, r9
    1f60:	03 32       	mov	3, r6
    1f62:	ff 07 00 01 	trap	31

00001f66 <_exchange>:
    1f66:	40 36 00 00 	movhi	0, r0, r6
    1f6a:	26 36 d4 1f 	movea	8148, r6, r6
    1f6e:	40 3e 00 00 	movhi	0, r0, r7
    1f72:	27 3e e4 1f 	movea	8164, r7, r7
    1f76:	06 40       	mov	r6, r8
    1f78:	cc 41       	add	r12, r8
    1f7a:	06 4f 00 00 	ld.b	0[r6], r9
    1f7e:	07 57 00 00 	ld.b	0[r7], r10
    1f82:	2a 49       	xor	r10, r9
    1f84:	46 4f 00 00 	st.b	r9, 0[r6]
    1f88:	41 32       	add	1, r6
    1f8a:	41 3a       	add	1, r7
    1f8c:	e6 41       	cmp	r6, r8
    1f8e:	ea f5       	bne	1f7a <_exchange+0x14>

00001f90 <___r_write>:
    1f90:	01 3a       	mov	1, r7
    1f92:	40 46 00 00 	movhi	0, r0, r8
    1f96:	28 46 d4 1f 	movea	8148, r8, r8
    1f9a:	0c 48       	mov	r12, r9
    1f9c:	04 32       	mov	4, r6
    1f9e:	ff 07 00 01 	trap	31

00001fa2 <___r_kwrite>:
    1fa2:	01 3a       	mov	1, r7
    1fa4:	40 46 00 00 	movhi	0, r0, r8
    1fa8:	28 46 e4 1f 	movea	8164, r8, r8
    1fac:	0c 48       	mov	r12, r9
    1fae:	04 32       	mov	4, r6
    1fb0:	ff 07 00 01 	trap	31

00001fb4 <___r_exit>:
    1fb4:	00 3a       	mov	0, r7
    1fb6:	01 32       	mov	1, r6
    1fb8:	ff 07 00 01 	trap	31

00001fbc <_fname>:
    1fbc:	70 61       	tst	r16, r12
    1fbe:	73 73       	sld.b	115[ep], r14
    1fc0:	77 6f 72 64 	st.h	r13, 25714[r23]
    1fc4:	2e 74       	sld.h	92[ep], r14
    1fc6:	78 74       	sld.h	240[ep], r14
	...

00001fc9 <_kname>:
    1fc9:	6b 65       	sst.w	r12, 212[ep]
    1fcb:	79 2e 62 69 	satsubi	26978, r25, r5
    1fcf:	6e 00       	jmp	[r14]
    1fd1:	00 00       	nop	
	...

00001fd4 <_buffer>:
	...

00001fe4 <_kbuffer>:
	...
