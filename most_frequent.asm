section .text

global most_frequent
most_frequent:
    imul rsi, 8
    add rsi, rdi
    sub rsi, 8; i-1
    ;r8 current value
    ;r9 previous value
    mov r10, 1; current_count
    mov r11, 1; max count

    .loop:
        cmp rdi, rsi
        jge .end

        mov r8, qword[rdi]
        add rdi, 8
        mov r9, qword[rdi]

        cmp r8,r9
        je .addCount

        ;different value
        mov r10, 1
        jmp .loop
        .addCount:
            add r10, 1
            cmp r10, r11
            jle .loop

            mov r11, r10
            mov rax, r8
            jmp .loop

       .end:
            ;mov rax, r8
            ret 
