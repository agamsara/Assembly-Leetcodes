section .text
global merge_adjacent_equals
merge_adjacent_equals:
    mov r8, rdi; read pointer
    mov r9, rdi; write pointer
    cmp rsi, 0
    je .end
    imul rsi, 8
    add rsi, rdi
    sub rsi, 8
    .loop:
        cmp r8, rsi
        jg .end
        je .copyLastElement

        mov r10, qword[r8]
        mov r11, qword[r8+8]

        cmp r10, r11
        je .doubleIt

        mov r10, qword[r8]
        mov qword[r9], r10
        add r8, 8
        add r9, 8
        jmp .loop

        .doubleIt:
            imul r10, 2

            mov qword[r9], r10
            add r8, 16
        add r9, 8
        jmp .loop

    .copyLastElement:
        mov r10, qword[r8]
        mov qword[r9], r10
        add r9, 8

    .end:
        mov rax, r9
        sub rax, rdi
        shr rax, 3
        ret
