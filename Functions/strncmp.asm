BITS 64
section .text
global _strncmp
_strncmp:
    xor r12, r12
    xor r13, r13
    xor rax, rax
    xor rcx, rcx
loop:
    cmp rdx, rcx
    je return
    mov r12b, byte[rdi]
    mov r13b, byte[rsi]
    cmp byte[rdi], 0
    je return
    cmp byte[rsi], 0
    je return
    cmp r12b, r13b
    jne return
    inc rdi
    inc rsi
    inc rcx
    jmp loop
return:
    movzx rax, r12b
    movzx rbx, r13b
    sub rax, rbx
    ret