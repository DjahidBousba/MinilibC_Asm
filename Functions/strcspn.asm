BITS 64
section .text
global _strcspn
_strcspn:
    xor r12, r12
    mov r13, rsi
    xor rcx, rcx
    xor rax, rax
loop:
    cmp [rdi], byte 0
    je return
    mov rsi, r13
    jmp compare_loop
    jmp loop

compare_loop:
    cmp [rsi], byte 0
    je incLoop
    mov r12b, byte[rsi]
    cmp byte[rdi], r12b
    je return
    inc rsi
    jmp compare_loop

incLoop:
    inc rdi
    inc rcx
    jmp loop
return:
    mov rax, rcx
    ret