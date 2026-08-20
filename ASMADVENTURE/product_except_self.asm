section .text

global product_except_self
product_except_self:
    ; rdx is out
    ;rcx is index
    ; r8 is running prefix product
    ; r9 running suffix product
    ;r10 temp current value

    mov r8, 1
    mov rcx, 0
    mov r9, 1
    
    .prefix_loop:
        cmp rcx, rsi
        je .suffix_loop; yet to be defined
        mov qword[rdx+rcx*8], r8
        imul r8, qword[rdi+rcx*8]
        add rcx, 1
        jmp .prefix_loop

    .suffix_loop:
        sub rcx, 1
        cmp rcx, 0
        jl .end
        mov r11, qword[rdx+rcx*8]
        imul r11, r9
        mov qword[rdx+rcx*8] , r11
        imul r9, qword[rdi+rcx*8]
        jmp .suffix_loop

    .end:
        ret
