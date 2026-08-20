section .text

global partition_negatives
partition_negatives:
    ;rdi array start
    ; rsi = len
    ;r8 left pointer
    ;r9 right pointer
    ;r10 temp for swap
    ;r11 temp for swap

    mov r8, rdi
    mov r9, rsi
    test rsi, rsi
    jz .end
    lea r9, [rdi+rsi*8 -8]
    .while:
        cmp r8,r9
        jge .end

        cmp qword[r8], 0
        jl .moveRight

        cmp qword[r9], 0
        jge .moveLeft
        
    .swap:
            mov r10, qword[r8]
            mov r11, qword[r9]

            mov qword[r8], r11
            mov qword[r9], r10

            add r8, 8
            sub r9, 8
            jmp .while
    .moveLeft:
        sub r9, 8
        jmp .while

    .moveRight:
        add r8, 8
        jmp .while

    .end:
        ret

