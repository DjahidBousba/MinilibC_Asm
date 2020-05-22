BITS 64
section .text
global _strstr
_strstr:
    xor rax, rax
    xor r11, r11
    xor r12, r12
    xor rcx, rcx
    cmp [rdi], byte 0
    je return_fail
loop:
    mov r11, r12
    add r11, rcx
    mov bl, byte[rdi + r11]
    cmp byte[rsi + rcx], 0
    je return
    cmp [rdi + r11], byte 0
    je return_fail
    cmp bl, [rsi + rcx]
    jne restart_loop
    inc rcx
    jmp loop
restart_loop:
    inc r12
    xor rcx, rcx
    jmp loop
return_fail:
    mov rax, 0
    ret
return:
    add rdi, r12
    mov rax, rdi
    ret