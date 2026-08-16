section .text

global add_two
add_two:
    mov rax, rdi
    add rax, rsi
    ret 
