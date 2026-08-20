section .text

global is_power_of_two
is_power_of_two:
        mov rax, 0
   .loop:
        shr rdi,1
        test rdi, 1
        jnz .isPower
        cmp rdi, 0
        jg .loop
        cmp rax, 1
        je .retOne
        mov rax,0
        ret
        .isPower:
            add rax, 1
            jmp .loop
        .retOne:
            ret
