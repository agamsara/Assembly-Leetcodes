section .text

global longest_alternating_bits
longest_alternating_bits:
    mov r12,0; accum
    mov rax, 0; max
    mov r11, 2
    .loop:
        cmp rdi, 0
        jle .end
        mov r10, rdi
        and r10, 1; gets first bit
        cmp r10, r11
        jne .accum
        
        mov r11, r10; r11 is now the last bit in rdi, aka r10
        shr rdi,1
        mov r12, 0 
        jmp .loop

        .accum:
            shr rdi,1
            add r12, 1
            mov r11, r10
            cmp rax, r12
            jg .loop
            mov rax, r12
            jmp .loop
.end:
    ret
