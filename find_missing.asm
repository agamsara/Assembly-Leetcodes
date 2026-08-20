section .text

global find_missing
find_missing:
    mov r8, rdi
    mov rax, 0
    mov r9, qword[rdi]; current
    mov r10, qword[rdi+8]; next value
    imul rsi, 8
    add rsi, rdi
    .loop:
        lea r11, qword[rdi+rax+8]
        cmp r11, rsi
        jge .end
        
        sub r10, r9
        cmp r10, 1
        jg  .end

        mov r9, qword[rdi +rax]
        mov r10, qword[rdi +rax + 8]
        add rax,8

        jmp .loop



.end:
    add r9, 1
    mov rax, r9
    ret

