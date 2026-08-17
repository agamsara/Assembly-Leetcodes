section .text

global rotate_left
rotate_left:

        imul rsi, 8
        add rsi, rdi
        sub rsi, 8; i -1

        mov rax, 0
        .loopForK:
            ;r10 = arr
            ;rsi = len
            ;rdx = k
            mov r10, rdi
            mov r8, qword[r10]; save arr 0
            .loop:
                cmp r10, rsi
                je .end
                mov r9, qword[r10+8]
                mov qword[r10], r9
                add r10, 8

                jmp .loop
            .end:
                mov qword[r10], r8
                add rax, 1
                cmp rax,rdx
                jl .loopForK

                ret

