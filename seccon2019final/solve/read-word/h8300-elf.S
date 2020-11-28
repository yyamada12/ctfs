/*
 * Use magic trap.
 * See gdb/sim/h8300/compile.c:decode()
 * (O_JSR)
 */

#define SYS_open  0xc5
#define SYS_read  0xc6
#define SYS_write 0xc7
#define SYS_close 0xc9

/* #define SYSCALL_BY_JSR */

#ifdef SYSCALL_BY_JSR /* Use magic traps by jump to special address. */
#define TRAP(addr) jsr (addr)
#else /* Direct code to avoid warning: branch operand has odd offset */
#define TRAP(addr) .long (0x5e000000 | (addr))
#endif

	.org	0x1c10 - 2 - 0x100 - 2 - 0x10

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.short	_code /* PC */

_code:
	mov.w	#_start, sp

	/*
	 * SYSCALL NO: call address
	 * ARG1-3: R0-R2 (open: R0,*(SP+2))
	 * RETVAL: R0
	 * ERRCODE: -
	 */

___open:
	/*
	 * Normally, arguments are got from registers,
	 * but open() get second argument from stack. (Why?)
	 * See gdb/sim/h8300/compile.c:sim_resume()
	 * (case O (O_SYS_OPEN, SB):)
	 */
	mov.w	#_fname, r0
	mov.w	#0, r1
	mov.w	r1, @-sp
	subs	#2, sp
	TRAP(SYS_open)
	adds	#2, sp
	adds	#2, sp

___read:
	mov.w	#_buffer, r1
	mov.w	#32, r2
	TRAP(SYS_read)

_save_size:
	mov.w	r0, r3

___write:
	mov.w	#1, r0
	mov.w	#_buffer, r1
	mov.w	r3, r2
	TRAP(SYS_write)

___exit:
	mov.w	#0, r0
/* See gdb/sim/h8300/compile.c:sim_resume() (O_SLEEP) */
	mov.w	#0xdead, r1
	mov.w	#0xbeef, r2
	sleep

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
