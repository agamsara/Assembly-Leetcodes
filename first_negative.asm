section .text

global first_negative
first_negative:

    mov rdx, 0; for loop i
    ;mov rax, 0
    .loop:
        cmp rdx, rsi
        je .badEnd

        mov r8, qword[rdi]
        cmp r8, 0
        jl .end


        add rdi, 8; shift up 8 bytes
        add rdx, 1
        jmp .loop
    .end:
        mov rax, rdx
        ret

    .badEnd:
        mov rax, -1
        ret
