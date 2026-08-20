section .text

global remove_negatives
remove_negatives:
    ;modify array in place and return length
    ;r11 is our reader pointer
    mov r11, rdi
    mov r9, r11
    mov rax, 0;
    mov rdx, 0; loop counter
    .loop:
        cmp rdx, rsi
        je .end

        mov r8, qword[r11]
        
        cmp r8, 0
        jl .negative

        mov qword[r9], r8
        add r9, 8
        add r11, 8
        add rdx, 1
        add rax, 1
        jmp .loop
.negative:
    add r11,8
    add rdx ,1 
    jmp .loop
.end:
    ret

    
    

