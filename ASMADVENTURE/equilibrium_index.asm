section .text

global equilibrium_index
equilibrium_index:
    mov r8, 0; left sum
    mov r9, 0 ;right sum

    mov r12, 0; max

    mov r13, 0; tota
    mov rdx, 0
    .calculate_total:
        add r13, qword[rdi+rdx*8]
        add rdx, 1

        cmp rdx, rsi
        jl .calculate_total
    mov rdx, 0
    .loop:
        cmp rdx, rsi
        je .end
        mov r11, qword[rdi+rdx*8]; current
        mov r10, r13
        sub r10, r8
        sub r10, r11
        add rdx, 1
        cmp r8, r10
        je .endfound

        add r8, r11
        jmp .loop

    .endfound:
        sub rdx, 1
        mov rax, rdx
        ret
    .end:
        mov rax, -1
        ret
