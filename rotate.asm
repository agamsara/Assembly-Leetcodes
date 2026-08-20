section .text

global rotate_right
rotate_right:
    cmp rsi, 0
    jle .done_zero

    sub rsi, 1
    imul rsi, 8
    add rsi, rdi
    mov r9, rsi
    mov r12, qword[rsi]; last element of array, paste to first element later
    .loop:
    mov r11, qword[r9-8]
    mov qword[r9], r11

    sub r9,8 ; sub 8 for 8 bytes

    cmp r9, rdi
    jg .loop
    mov qword[rdi], r12; previous last cell because first cell

    ret
.done_zero:
    xor rax, rax
    mov rax, r11
    ret
