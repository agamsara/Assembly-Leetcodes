section .text

global first_pair_over
first_pair_over:
    ;rdx is target
    sub rsi, 1; i -1
    mov rax, -1
    mov r10, 0
    .loop:
        cmp r10, rsi
        jge .badEnd
        mov r8, qword[rdi+8*r10]
        add r10, 1
        mov r9, qword[rdi+8*r10]
        add r8, r9
        cmp r8, rdx
        jge .end
        jmp .loop 
  .badEnd:
    ret
  .end:
   mov rax, r10
   ret
