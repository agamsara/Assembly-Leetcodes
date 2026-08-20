section .text
global remove_value
remove_value:
    mov r8, 0
    mov r9, rdi
    sub rsi, 1
    .loop:
        cmp r8, rsi
        jg .end
        lea r10, qword[rdi+r8*8]
        mov r11, qword[r10]

        cmp r11, rdx
        je .moveRight

        mov qword[r9], r11
        add r9, 8
        add r8 ,1
        jmp .loop

    .moveRight:
        add r8,1
        cmp r8, rsi
        jg .end
        cmp qword[rdi+r8*8], rdx
        je .moveRight
        jmp .loop
    .end:
        mov rax, r9
        sub rax, rdi
        shr rax, 3
        ret
