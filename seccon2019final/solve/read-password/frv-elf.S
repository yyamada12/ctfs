/*
 * Use special purpose trap.
 * See gdb/sim/frv/traps.c:frv_itrap()
 * (TIRA insn)(case TRAP_SYSCALL:)
 * See gdb/sim/frv/sem.c:SEM_FN_NAME (frvbf,tira), SEM_FN_NAME (frvbf,tieq)
 * (tira always call trap, but tieq call trap only equal, ...)
 * See gdb/sim/testsuite/frv-elf/hello.s
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_frv) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

/* See traps.c:frv_itrap() and gdb/sim/testsuite/frv-elf/hello.s */
#define TRAP_SYSCALL 0

	.org	0x1c10 - 272 - 32

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0	/* FP */
	.long	0
	.long	_code	/* LR */
	.long	0

_code:
	sethi	#hi(_start), sp
	setlo	#lo(_start), sp
	nop
	nop

	/*
	 * SYSCALL NO: R7
	 * ARG1-3: R8-R10
	 * RETVAL: R8, R9
	 * ERRCODE: R10
	 */

__open:
	sethi	#hi(_fname), gr8
	setlo	#lo(_fname), gr8
	setlos	0, gr9
	nop

	setlos	SYS_open, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

__read:
	sethi	#hi(_buffer), gr9
	setlo	#lo(_buffer), gr9
	setlos	16, gr10
	nop

	setlos	SYS_read, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

_save_size:
	ori	gr8, 0, gr11
	nop
	nop
	nop

__kopen:
	sethi	#hi(_kname), gr8
	setlo	#lo(_kname), gr8
	setlos	0, gr9
	nop

	setlos	SYS_open, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

__kread:
	sethi	#hi(_kbuffer), gr9
	setlo	#lo(_kbuffer), gr9
	ori	gr11, 0, gr10
	nop

	setlos	SYS_read, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

_exchange:
	sethi	#hi(_buffer), gr8
	setlo	#lo(_buffer), gr8
	sethi	#hi(_kbuffer), gr9
	setlo	#lo(_kbuffer), gr9

	setlos  #0, gr4
	nop
	nop
	nop

1:	ldsb	@(gr8, gr4), gr5
	ldsb	@(gr9, gr4), gr6
	xor	gr5, gr6, gr5
	stb	gr5, @(gr8, gr4)

	addi	gr4, 1, gr4
	subcc	gr4, gr11, gr0, icc0
	bne	icc0, 0x2, 1b
	nop

__write:
	setlos	1, gr8
	sethi	#hi(_buffer), gr9
	setlo	#lo(_buffer), gr9
	ori	gr11, 0, gr10

	setlos	SYS_write, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

__kwrite:
	setlos	1, gr8
	sethi	#hi(_kbuffer), gr9
	setlo	#lo(_kbuffer), gr9
	ori	gr11, 0, gr10

	setlos	SYS_write, gr7
	tira	gr0, TRAP_SYSCALL
	nop
	nop

__exit:
	setlos	0, gr8
	setlos	SYS_exit, gr7
	tira	gr0, TRAP_SYSCALL
	nop

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
