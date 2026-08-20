section .text

global second_largest
second_largest:
    mov r8, rdi;    array pointer
    mov r9, -999;   largest value
    mov r10, -998;  second largest value
    imul rsi,8 
    add rsi, rdi
    mov rax, r8
    .loop:
        cmp r8,rsi
        je .end

        cmp qword[r8], r10
        jg .greater_than
        add r8, 8
        jmp .loop
    .greater_than:
        cmp qword[r8],r9
        jg .greatest
        je .next
        mov r10, qword[r8]
        add r8, 8
        jmp .loop
    .greatest:
        cmp r9, qword[r8]
        je .next

        mov r10, r9; second = largest
        mov r9, qword[r8]; largest = current

        jmp .next

    .next:
        add r8,8
        jmp .loop

.end:
    mov rax, r10
    ret
