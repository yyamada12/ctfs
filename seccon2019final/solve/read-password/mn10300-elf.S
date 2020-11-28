/*
 * Use syscall.
 * See gdb/sim/mn10300/mn10300.igen,op_utils.c:do_syscall()
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_mn10300) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

	.org	0x1c10 - 268 - 28 + 12

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
	mov	_start, a0
	mov	a0, sp

	/*
	 * SYSCALL NO: D0
	 * ARG1-3: D1,*(SP+12),*(SP+16)
	 * RETVAL: D1
	 * ERRCODE: D0
	 */

___r_open:
	mov	_fname, a0
	mov	a0, d1
	mov	0, d2
	mov	d2, (12, sp)
	mov	SYS_open, d0
	syscall

___r_read:
	mov	_buffer, a0
	mov	a0, d2
	mov	d2, (12, sp)
	mov	16, d3
	mov	d3, (16, sp)
	mov	SYS_read, d0
	syscall

_save_size:
	mov	d1, (20, sp)

___r_kopen:
	mov	_kname, a0
	mov	a0, d1
	mov	0, d2
	mov	d2, (12, sp)
	mov	SYS_open, d0
	syscall

___r_kread:
	mov	_kbuffer, a0
	mov	a0, d2
	mov	d2, (12, sp)
	mov	(20, sp), d3
	mov	d3, (16, sp)
	mov	SYS_read, d0
	syscall

_exchange:
	mov	_buffer, a0
	mov	_kbuffer, a1
	mov	a0, d2
	mov	(20, sp), d0
	add	d0, d2
1:	movbu	(a0), d0
	movbu	(a1), d1
	xor	d1, d0
	movbu	d0, (a0)
	inc	a0
	inc	a1
	cmp	a0, d2
	bne	1b

___r_write:
	mov	1, d1
	mov	_buffer, a0
	mov	a0, d2
	mov	d2, (12, sp)
	mov	(20, sp), d3
	mov	d3, (16, sp)
	mov	SYS_write, d0
	syscall

___r_kwrite:
	mov	1, d1
	mov	_kbuffer, a0
	mov	a0, d2
	mov	d2, (12, sp)
	mov	(20, sp), d3
	mov	d3, (16, sp)
	mov	SYS_write, d0
	syscall

___r_exit:
	mov	0, d1
	mov	SYS_exit, d0
	syscall

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
