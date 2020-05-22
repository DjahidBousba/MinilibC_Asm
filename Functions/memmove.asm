BITS 64
section .text
global _memmove
_memmove:
    mov rax, 0
    xor rcx, rcx
    cmp rdx, rcx
    je return
    mov r11, rdi
    sub r11, rsi
    cmp r11, 0
    jle copy
reverse_copy:
    dec rdx
    mov al, [rsi + rdx]
    mov [rdi + rdx], al
    cmp rdx, 0
    je return
    jmp reverse_copy
copy:
    cmp rdx, 0
    je return
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    dec rdx
    inc rcx
    jmp copy
return:
    mov rax, rdi
    ret