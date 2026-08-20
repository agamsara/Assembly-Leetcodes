section .text

global longest_increasing_run
longest_increasing_run:
    ; rdx current_streak
    ; rax max_streak 
    ; r8 previous value
    mov rax, 1
    mov rdx, 1
    cmp rsi, 0
    je .end
    imul rsi, 8
    add rsi, rdi
    sub rsi, 8
    
    .loop:
        cmp rdi, rsi
        je .end
        mov r8, qword[rdi]
        add rdi, 8
        cmp r8, qword[rdi]
        jg .resetStreak
        add rdx, 1

        cmp rdx, rax
        jg .newMax
        jmp .loop
    .resetStreak:
        mov rdx, 1
        jmp .loop
    .newMax:
        mov rax, rdx
        jmp .loop
    .end:
        ret
