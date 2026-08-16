section .text

global longest_streak
longest_streak:
    ;longest amount of repeating numbers
    mov r9, 1; current streak
    mov r10, 1; max streak
    mov rax, qword[rdi]; current value
    imul rsi,8
    add rsi,rdi
    sub rsi, 8; i-1
    .loop:


        cmp rdi, rsi
        jge .end

        mov r11, qword[rdi]
        add rdi, 8
        mov r12, qword[rdi]

        cmp r11, r12
        je .curent_streak_add

        mov r9, 1
        jmp  .loop
.curent_streak_add:
    add r9,1
    cmp r9, r10
    jg .newMax
    jmp .loop
.newMax:
    mov  r10,r9
    mov rax, qword[rdi]
    jmp .loop

.end:
    ret
