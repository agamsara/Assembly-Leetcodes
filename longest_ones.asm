section .text

global longest_ones
longest_ones:
    ;rdi is number
    ; rax is longest run
    ;r8 is current length
    mov rax, 0
    mov r8, 0
    .loop:
        cmp rdi, 0
        je .end

        test rdi, 1
        jnz .checkMax

        mov r8, 0
        shr rdi, 1
        jmp .loop
        .checkMax:
            add r8, 1
            shr rdi, 1
            cmp rax, r8
                jg .loop
            mov rax, r8
            jmp .loop
        .end:
            ret
