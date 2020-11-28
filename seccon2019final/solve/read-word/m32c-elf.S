/*
 * Use syscall.
 * See gdb/sim/m32c/syscalls.c:m32c_syscall(),mem.c:mem_put_byte()
 * (case 0x400:)
 */

/* See gdb/sim/m32c/syscall.h */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

#define SYSCALL_ADDR 0x400

	.org	0x1c10 - 3 - (2 + 0xfe) - 2 - 3 - 2 - 16

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.short	0	/* FB */
	.long	_code	/* PC */

_code:
	ldc	#_start, sp

	/*
	 * SYSCALL NO: *SYSCALL_ADDR
	 * ARG1-3: R1,R2,*(SP+3)
	 * RETVAL: R0
	 * ERRCODE: -
	 */

___open:
	mov.w:g	#_fname, r1
	mov.w:q	#0, r2
	push.w:g #0
	add.b:q	#-3, sp	/* arg3 on stack (See gdb/sim/m32c/syscalls.c:arg() */
	mov.w:q	#SYS_open, r0
	mov.b:g	r0l, SYSCALL_ADDR
	add.b:q	#3, sp

___read:
	mov.w:g	r0, r1
	mov.w:g	#_buffer, r2
	push.w:g #32
	add.b:q	#-3, sp	/* arg3 on stack (See gdb/sim/m32c/syscalls.c:arg() */
	mov.w:q	#SYS_read, r0
	mov.b:g	r0l, SYSCALL_ADDR
	add.b:q	#3, sp

_save_size:
	mov.w:g	r0, r3

___write:
	mov.w:q	#1, r1
	mov.w:g	#_buffer, r2
	push.w:g r3
	add.b:q	#-3, sp	/* arg3 on stack (See gdb/sim/m32c/syscalls.c:arg() */
	mov.w:q	#SYS_write, r0
	mov.b:g	r0l, SYSCALL_ADDR
	add.b:q	#3, sp

___exit:
	mov.w:q	#0, r1
	mov.w:q	#SYS_exit, r0
	mov.b:g	r0l, SYSCALL_ADDR

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
