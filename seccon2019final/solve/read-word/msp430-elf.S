/*
 * Call (0x00180 | SYS_xxx).
 * See gdb/sim/msp430/msp430-sim.c:maybe_perform_syscall(),msp430_step_once()
 * (MSO_call)
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_msp430) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_read  4
#define SYS_write 5
#define SYS_close 3

	.org	0x1c10 - 4 - 256 - 4 - 4 - 16

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0
	.long	_code

_code:
	mova	#_start, r1

	/*
	 * SYSCALL NO: call address
	 * ARG1-3: R12-R14
	 * RETVAL: R12
	 * ERRCODE: -
	 */

__open:
	mov	#_fname, r12
	mov	#0, r13
	mov	#0, r14
	calla	#(0x00180 | SYS_open)

__read:
	mov	#_buffer, r13
	mov	#32, r14
	calla	#(0x00180 | SYS_read)

_save_size:
	mov	r12, r15

__write:
	mov	#1, r12
	mov	#_buffer, r13
	mov	r15, r14
	calla	#(0x00180 | SYS_write)

__exit:
	mov	#0, r12
	calla	#(0x00180 | SYS_exit)

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
