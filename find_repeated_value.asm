section .text

global first_duplicate
first_duplicate:
    
    mov r8, rdi; first pointer
    mov r11, 0
    .loop:
        add r11, 1
        cmp r11, rsi
        je .not_found
        sub r11,1 
        mov r9, qword[rdi+r11*8]; first word
        mov r10, qword[rdi+8+r11*8]; next word
        cmp r9, r10
        je .end
        add r11, 1
        jmp .loop
.not_found:
        mov rax, -1
        ret

.end:
    mov rax, r9
    ret

