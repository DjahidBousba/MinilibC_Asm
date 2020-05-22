BITS 64
section .text
global _memset
_memset:
    xor rcx, rcx
    xor rax, rax
loop:
    cmp rcx, rdx
    je return
    mov byte[rdi + rcx], sil
    inc rcx
    jmp loop
return:
    mov rax, rdi
    ret