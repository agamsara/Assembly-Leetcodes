section .text

global stable_partition_negatives
stable_partition_negatives:
    mov r8, rdi
    sub r8, 8

    cmp rsi, 0
    je .end
    imul rsi, 8
    add rsi ,rdi
    mov rcx, 0
    .pass1:
        add r8,8
        cmp r8, rsi
        jge .reset
       
        mov r10, qword[r8]
        
        cmp r10, 0
        jge .pass1

        mov r10, qword[r8]
        mov qword[rdx + rcx*8], r10
        add rcx, 1
        jmp .pass1

    .reset:
        mov r8, rdi
        sub r8, 8
    .pass2:
        add r8,8
        cmp r8, rsi
        je .copyArr
        
        mov r10, qword[r8]
        cmp r10, 0
        jl .pass2

        mov qword[rdx + rcx*8], r10

        add rcx, 1
        jmp .pass2

    .copyArr:
        .loop:
        cmp rdi, rsi
        je .end

        mov r10, qword[rdx]

        mov qword[rdi], r10; arr[i]= temp[i]
        add rdi, 8
        add rdx, 8
        jmp .loop

    .end:
        ret


