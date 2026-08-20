section .text
global remove_duplicates
remove_duplicates:

    mov r8, rdi; read pointer
    add r8,8; start at 1 because 0 can't be equal to -1
    mov r9, rdi; write pointer
    lea r10, [rdi+rsi*8]; end
    mov rax,1 
    
    mov r12, qword[rdi]; last duplicate

    ;rax will be the new length/ return value

    .loop:
        cmp r8, r10
        jge .end
        mov r11, qword[r8]
        cmp r11, r12
        jne .moveRight
        add r8,8
        jmp .loop
        .moveRight:
            add r9, 8
            mov qword[r9], r11
            mov r12, r11
            add r8,8
            add rax, 1
            jmp .loop

      ret
.end:
    ret
