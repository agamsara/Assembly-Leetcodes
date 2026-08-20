section .text
global first_drop
first_drop:
    mov rax, 0
    imul rsi, 8
    add rsi, rdi
    mov r14, 0
    .loop:
        lea r11, qword[rdi+rax+8]
        cmp r11, rsi
        jge .endBad


        mov r9, qword[rdi +rax]
        mov r10, qword[rdi +rax + 8]
        cmp r9,r10
        jg  .end
        add rax,8
        add r14,1
        jmp .loop



.end:
mov rax, r14
ret

.endBad:
    mov rax, -1
    ret
