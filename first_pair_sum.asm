section .text

global first_pair_sum
first_pair_sum:
    mov rax, -1
    .outer_loop:
        add rax, 1
        mov rbx, rax
        add rbx, 1
        cmp rbx, rsi
        je .badEnd
        mov r8, qword[rdi + rax * 8]
        .inner_loop:
            cmp rbx, rsi
            je .outer_loop
            mov r9, qword[rdi + rbx * 8]
            add r9, r8
            cmp r9, rdx
            je .end
            
            
            add rbx, 1
            jmp .inner_loop

.end:
    ret

.badEnd:
    mov rax, -1
    ret
