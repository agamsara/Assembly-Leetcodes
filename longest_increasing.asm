section .text

global longest_increasing_run
longest_increasing_run:
    ;rdi = array pointer
    ; rsi is length
    mov rax, 1; current length
    mov r8, 1; max

    imul rsi, 8
    add rsi, rdi; makes rsi point to the memeory location
    sub rsi, 8; i-1
    .loop:
        cmp rdi, rsi
        jge .end
        mov r9, qword[rdi]
        add rdi, 8
        mov r10, qword[rdi]
        cmp r9, r10
        jl .addCurrentLength
        mov rax, 1
        jmp .loop
.addCurrentLength:
    add rax,1
    cmp rax,r8
    jg .makeNewMax
    jmp .loop
.makeNewMax:
    mov r8,rax
    jmp .loop

.end:
    mov rax, r8
    ret
