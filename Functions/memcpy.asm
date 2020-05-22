BITS 64

section .text

global _memcpy
_memcpy:
    mov rax, 0
    xor rcx, rcx
loop:
    cmp rdx, 0
    je return
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    dec rdx
    inc rcx
    jmp loop
return:
    mov rax, rdi
    ret