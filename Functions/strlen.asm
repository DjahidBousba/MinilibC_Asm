BITS 64
section .text
global _strlen
_strlen:
    xor rcx, rcx
    xor rax, rax
loop:
    cmp [rdi], byte 0
    je return
    add rcx, 1
    inc rdi
    jmp loop
return:
    mov rax, rcx
    ret


