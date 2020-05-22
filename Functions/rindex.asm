BITS 64
section .text
global _rindex
_rindex:
    xor rax, rax
go_end:
    cmp [rdi + rax], byte 0
    je loop
    inc rax
    jmp go_end
loop:
    cmp byte[rdi + rax], sil
    je return
    cmp rax, 0
    je return_not_found
    dec rax
    jmp loop
return_not_found:
    mov rax, 0
    ret
return:
    add rax, rdi
    ret