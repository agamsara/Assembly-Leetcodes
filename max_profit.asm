section .text

global max_profit
max_profit:
    mov r8, qword[rdi]; lowest
    mov r10, 0; best profit seen
    imul rsi, 8
    add rsi, rdi
    sub rsi, 8
    .loop:
        cmp rdi, rsi
        je .end
        cmp r8, qword[rdi]
        jg .newLowest
        add rdi, 8
        mov r9, qword[rdi]; current price
        sub r9, r8
        cmp r9, r10
        jl .loop; dont sell yet

        mov r10, r9
        jmp .loop

    .end:
        mov rax, r10
        ret

    .newLowest:
        mov r8,qword[rdi]
        jmp .loop
