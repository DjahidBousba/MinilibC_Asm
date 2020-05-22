BITS 64
section .text
global _strpbrk
_strpbrk:
    xor r12, r12
    mov r14, rdi
    mov r13, rsi
    xor rcx, rcx
    xor rax, rax
    cmp [rsi], byte 0
    je return_fail
    cmp [rdi], byte 0
    je return_fail
loop:
    cmp [rdi], byte 0
    je return
    mov rsi, r13
    jmp compare_loop

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
    cmp [rdi], byte 0
    je return_fail
    jmp loop

return_fail:
    mov rax, 0
    ret
return:
    mov rax, rcx
    add rax, r14
    ret