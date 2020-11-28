/*
 * Use break 13 syscall.
 * See gdb/sim/cris/traps.c:cris_break_13_handler()
 * (syscall_map)
 */

#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x1c10 - 4 - 0x100 - 4 - 28 + 12

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
	move.d	_start, sp

	/*
	 * SYSCALL NO: R9
	 * ARG1-3: R10-R12
	 * RETVAL: R10
	 * ERRCODE: R10
	 */

___open:
	move.d	_fname, r10
	/*
	 * Flags of open() exchanged by open_map[]
	 * from target value to host value.
	 * See gdb/sim/common/callback.c:cb_target_to_host_open()
	 * Specify O_RDWR, O_CREAT, O_TRUNC flags by the target value.
	 * (See gdb/sim/cris/traps.c:open_map[])
	 */
	move.d	0x0, r11
	moveq	SYS_open, r9
	break	13
	nop

___read:
	move.d	_buffer, r11
	move.d	32, r12
	moveq	SYS_read, r9
	break	13
	nop

_save_size:
	move.d	r10, r13

___write:
	moveq	1, r10
	move.d	_buffer, r11
	move.d	r13, r12
	moveq	SYS_write, r9
	break	13
	nop

___exit:
	moveq	0, r10
	moveq	SYS_exit, r9
	break	13
	nop

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
