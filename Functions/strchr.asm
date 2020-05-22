BITS 64
section .text
global _strchr
_strchr:
    xor rax, rax
loop:
    cmp [rdi], sil
    je return_success
    cmp [rdi], byte 0
    je return_fail
    inc rdi
    jmp loop
return_fail:
    mov rax, 0
    ret

return_success:
    mov rax, rdi
    ret