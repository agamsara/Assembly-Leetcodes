section .text

global reverse_range
reverse_range:
    .loop:
        cmp rdi, rsi
        jge .done

        mov r8, qword[rdi]
        mov r9, qword[rsi]

        mov qword[rdi], r9
        mov qword[rsi], r8

        add rdi,  8
        sub rsi, 8
        jmp .loop

    .done:
        ret


global rotate_right
rotate_right:
    mov r11, rdi
    mov rax, rdx
    xor rdx, rdx
    div rsi
    ; reverse whole array:
    lea rsi, [rdi + rsi *8-8]
    mov r10, rsi
    call reverse_range
    mov rdi, r11
    lea rsi, qword[rdi+rdx*8-8]
    call reverse_range
    mov rdi, r11
    lea rdi, [rdi + rdx*8]
    mov rsi, r10
    call reverse_range

    ret
