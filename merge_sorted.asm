section .text
global merge_sorted
merge_sorted:
    ;rdi = arr a
    ;rsi = len(a)
    ;rdx = arr b
    ; rcx = len(b)
    ;r8 = out

    ;cmp *a and *b
    ; smaller value:
    ;   write to *out
    ;   advance THAT input pointer
    ; always:
    ;   advance out

    
    imul rsi, 8
    add rsi, rdi

    imul rcx, 8
    add rcx, rdx

    .loop:
        cmp rdi, rsi
        je    .checkArr2
        cmp rdx, rcx
        je    .checkArr1

        mov r9, qword[rdi]
        mov r10, qword[rdx]

        cmp r9, r10
        jl   .incArr1
        jmp  .incArr2
        mov rax, -1
        ;uh oh
        ret
    .checkArr2:
        cmp rdx, rcx
        je .end

        mov qword[r8], r10
        add r8, 8
        add rdx, 8; inc arr2

        ; use logic from .incArr2
        jmp .checkArr2
    .checkArr1:

        cmp rdi, rsi
        je .end

        mov qword[r8], r9
        add r8, 8
        add rdi, 8; inc arr1
        ; use logic from .incArr1
        jmp .checkArr1


    .incArr1:
        mov qword[r8], r9
        add r8, 8
        add rdi, 8; inc arr1
        jmp .loop
    .incArr2:
        mov qword[r8], r10
        add r8, 8
        add rdx, 8; inc arr2

        jmp .loop

    .end:
        ret
        

        

