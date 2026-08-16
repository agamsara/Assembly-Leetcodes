section .text

global count_turns
count_turns:
    mov r8, qword [rdi]
    mov r9, qword [rdi + 8]
    mov rax, -1
    mov r12, 0
    sub rsi,1
    .loop:
        add rax, 1
        add r12, 1
        cmp r12, rsi
        jge .end
        ;increasing
        cmp r8,r9
        jl .increasing
        jg .decreasing
        
    .increasing:
        mov r8, qword[rdi+r12*8]
        mov r9, qword[rdi+r12*8+8]
        add r12, 1
        cmp r8, r9
        jl .increasing
        jmp .loop
    .decreasing:
        mov r8, qword[rdi+r12*8]
        mov r9, qword[rdi+r12*8+8]
        add r12, 1
        cmp r8, r9
        jg .decreasing
        jmp .loop

.end:
    ret
