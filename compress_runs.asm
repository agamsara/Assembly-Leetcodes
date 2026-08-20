section .text
global compress_runs
compress_runs:
    mov r8, rdi; read pointer
    lea  r9, [rdi+8]; write pointer
    mov r10, qword[rdi]
    mov rax, 1 ; new length
    imul rsi, 8
   ; sub rsi, 8
    add rsi, rdi
    add r8, 8
    .loop:
        cmp r8, rsi
        je .end

        mov r11, qword[r8]

        cmp r11, r10
            je .addReadPointer

        mov qword[r9], r11
        add r8, 8
        mov r10, r11
        add r9, 8
        add rax, 1

        jmp .loop
        .addReadPointer:
            add r8, 8
            jmp .loop

        .end:
            ret
