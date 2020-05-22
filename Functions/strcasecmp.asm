BITS 64
section .text
global _strcasecmp
_strcasecmp:
    xor r12, r12
    xor r13, r13
    xor rax, rax
loop:
    mov r12b, byte[rsi]
    mov r13b, byte[rdi]
    cmp [rdi], byte 0
    je return
    cmp [rsi], byte 0
    je return
    cmp r13b, r12b
    jg check_maj_greater
    jl check_maj_lower
    inc rdi
    inc rsi
    jmp loop
return:
    cmp r13b, r12b
    je return_equal
    jg return_greater
    jl return_lower
check_maj_lower:
    sub r12b, 32
    cmp r13b, r12b
    jne return_lower
    inc rdi
    inc rsi
    jmp loop

check_maj_greater:
    sub r13b, 32
    cmp r13b, r12b
    jne return_greater
    inc rdi
    inc rsi
    jmp loop


return_greater:
    mov rax, 1
    ret

return_lower:
    mov rax, -1
    ret
return_equal:
    mov rax, 0
    ret