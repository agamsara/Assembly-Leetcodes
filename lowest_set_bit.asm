section .text

global lowest_set_bit
lowest_set_bit:
    ;rdx is our number
    mov rax, 0
    .loop:
        cmp rdi,0
        je .end
        test rdi, 1
        jnz .end
        shr rdi, 1
        add rax, 1
        jmp .loop

    .end:
        ret

