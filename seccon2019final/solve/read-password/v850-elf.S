/*
 * Use trap 31.
 * See gdb/sim/v850/simops.c:OP_10007E0()
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_v850) */
#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x2010 - 4 - 256 - 24

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0	/* R29 */
	.long	_code	/* LP */

_code:
	movhi	hi(_start), r0, sp
	movea	lo(_start), sp, sp

	/*
	 * SYSCALL NO: R6
	 * ARG1-3: R7-R9
	 * RETVAL: R10
	 * ERRCODE: R11
	 */

___r_open:
	movhi	hi(_fname), r0, r7
	movea	lo(_fname), r7, r7
	mov	0, r8
	mov	SYS_open, r6
	trap	31

___r_read:
	/* to avoid 0x0a (mov r10, r7 -> 0a 38) */
	mov	0, r7
	add	r10, r7

	movhi	hi(_buffer), r0, r8
	movea	lo(_buffer), r8, r8
	movhi	hi(16), r0, r9
	movea	lo(16), r9, r9
	mov	SYS_read, r6
	trap	31

_save_size:
	/* to avoid 0x0a (mov r10, r12 -> 0a 60) */
	mov	0, r12
	add	r10, r12

___r_kopen:
	movhi	hi(_kname), r0, r7
	movea	lo(_kname), r7, r7
	mov	0, r8
	mov	SYS_open, r6
	trap	31

___r_kread:
	/* to avoid 0x0a (mov r10, r7 -> 0a 38) */
	mov	0, r7
	add	r10, r7

	movhi	hi(_kbuffer), r0, r8
	movea	lo(_kbuffer), r8, r8
	mov	r12, r9
	mov	SYS_read, r6
	trap	31

_exchange:
	movhi	hi(_buffer), r0, r6
	movea	lo(_buffer), r6, r6
	movhi	hi(_kbuffer), r0, r7
	movea	lo(_kbuffer), r7, r7
	mov	r6, r8
	add	r12, r8
1:	ld.b	0[r6], r9
	ld.b	0[r7], r10
	xor	r10, r9
	st.b	r9, 0[r6]
	add	1, r6
	add	1, r7
	cmp	r6, r8
	bne	1b

___r_write:
	mov	1, r7
	movhi	hi(_buffer), r0, r8
	movea	lo(_buffer), r8, r8
	mov	r12, r9
	mov	SYS_write, r6
	trap	31

___r_kwrite:
	mov	1, r7
	movhi	hi(_kbuffer), r0, r8
	movea	lo(_kbuffer), r8, r8
	mov	r12, r9
	mov	SYS_write, r6
	trap	31

___r_exit:
	mov	0, r7
	mov	SYS_exit, r6
	trap	31

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
