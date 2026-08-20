section .text

global sort_colors
sort_colors:
    mov r8, rdi; low
    mov r9, rdi; medium
    lea  r10, [rdi+ rsi*8 -8] ; high
    mov rsi, r10
    .loop:
        
        cmp r9, r10
        jg .end
        cmp qword[r9], 0
        je .swapLowMed

        cmp qword[r9], 1
        je .addMid


        cmp qword[r9], 2
        je .swapMidHigh

        .swapLowMed:
            mov r11, qword[r9]
            mov rax, qword[r8]

            mov qword[r9], rax
            mov qword[r8], r11

            add r8, 8
            add r9, 8
            jmp .loop

        .addMid:
            add r9,8
            jmp .loop
        .swapMidHigh:
            mov r11, qword[r9]
            mov rax, qword[r10]
            mov qword[r9], rax
            mov qword[r10], r11

            sub r10, 8
            jmp .loop
        .end:
            ret
