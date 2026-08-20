section .text
global count_bits
count_bits:
    mov rax, 0
    .loop:

        cmp rdi, 0
        je .end
        test rdi, 1
        jnz .found_one
        shr rdi, 1
        jmp .loop
    .found_one:
        shr rdi, 1
        add rax, 1
        jmp .loop



    .end:
        ret
