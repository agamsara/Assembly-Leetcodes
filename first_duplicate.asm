section .text

global first_duplicate
first_duplicate:
    
    mov rcx, 1

    .outer_loop:
        cmp rcx, rsi
        je .badEnd
        mov rax, qword[rdi+rcx*8]
        mov rdx, 0; inner =0
        
        .inner_loop:
            mov r15, qword[rdi + rdx *8]
            cmp rax, r15; using this for deubugging
            je .end
            add rdx, 1
            cmp rdx, rcx
            jl .inner_loop

            add rcx, 1
            jmp .outer_loop

.end:
    ret
.badEnd:
    mov rax, -1
    ret
