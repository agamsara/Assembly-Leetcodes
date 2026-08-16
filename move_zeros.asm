section .text
global move_zeros
move_zeros:
    mov r8, rdi; array[0]
    mov r9, rdi; i for our for in loop

    cmp rsi, 0
    je .done_zero
    imul rsi, 8
    add rsi, rdi; returns rdi + rsi*8
.loop:
    cmp qword[r9], 0
    jne .moveFirst
    add r9, 8
    cmp r9, rsi
    jl .loop

.makeZeros:
    mov qword[r8],0
    add r8, 8
    cmp r8, rsi
    jl .makeZeros
    ret


.moveFirst:
    mov r10, qword[r9]
    mov qword[r8], r10
    add r8, 8
    add r9, 8
    cmp r9, rsi
    je .makeZeros
    jmp .loop




.done_zero:
    xor rax, rax
    ret
