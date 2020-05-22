BITS 64
section .text
global _strcmp
_strcmp:
    xor r12, r12
    xor r13, r13
    xor rax, rax
loop:
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
    jmp loop
return:
    movzx rax, r12b
    movzx rbx, r13b
    sub rax, rbx
    ret