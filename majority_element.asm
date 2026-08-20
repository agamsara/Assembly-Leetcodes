section .text

global majority_element
majority_element:
    mov rax, qword[rdi]; candidate
    mov r8, 1; count
    imul rsi, 8
    add rsi, rdi; memory address of rsi[-1]
    .loop:
        add rdi, 8
        cmp rdi, rsi
        je .end

        cmp r8, 0
        je .resetCount

        cmp rax, qword[rdi]
        jne .subCount
        add r8,1 ; count ++
        jmp .loop
        
        .subCount:
            sub r8,1; count --
            jmp .loop

        .resetCount:
            mov rax, qword[rdi]
            mov r8, 1
            jmp .loop
        .end:
            ret
