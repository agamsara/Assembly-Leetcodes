section .text

global reverse_byte
reverse_byte:

    mov r8, 0; loop counter
    mov rax, 0; result
    .loop:
        
        cmp r8, 8
        jge .end
        shl rax, 1
        add r8, 1
        
        test rdi, 1
        jnz .addOne
        shr rdi, 1
        jmp .loop
.addOne:
    shr rdi, 1
    add rax, 1
    jmp .loop

.end:
    ret
