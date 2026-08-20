section .text

global max_subarray_sum
max_subarray_sum:
    ;mov r9, qword[rdi]; x=arr[i] we init this later
    mov rcx, qword[rdi];  current = ar[i]
    mov rax, qword[rdi]; max=arr[i]
    mov rdx, 0; i
    .loop:
        add rdx,1
        cmp rdx, rsi
        je .end

        add rdi,8
        mov r9, qword[rdi]
        ;max(current+x, x)
        mov r10, rcx
        add r10, r9

        cmp r10, r9
        jl .newCurrent
        mov rcx, r10
        jmp .checkMax
.newCurrent:
    mov rcx, r9
    cmp rcx, rax
    jg .newMax

.checkMax:

    cmp rcx, rax
    jg .newMax
    jmp .loop
.newMax:
    mov rax, rcx
    jmp .loop

.end:
    ret
