section .text

global partition_even_odd
partition_even_odd:
    mov r8, rdi; left pointer
    lea r9, [rdi+ rsi*8-8]

    .loop:
        cmp r8, r9
        jge .end

        test qword[r8], 1
        jz .move_left

        test qword[r9], 1
        jnz .move_right

        jmp .swap

        .move_left:
            add r8, 8
            jmp .loop

        .move_right:
            sub r9, 8
            jmp .loop

        .swap:
            mov r10, qword[r8]
            mov r11, qword[r9]
            mov qword[r8], r11
            mov qword[r9], r10
            mov r9, r10
            jmp .loop
    .end:
        ret
