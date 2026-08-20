section .text
global reverse_array

reverse_array:
mov r8, rdi         ; r8 = array pointer
mov r9, rsi         ; r9 = length


sub rsi, 1
imul rsi, 8
add rsi, rdi
mov r9, rsi
cmp r9, 0
jle .done_zero

.loop:

mov r10, qword[r8] ; left
mov r11, qword[r9] ; right

mov qword[r8], r11
mov qword[r9], r10
add r8, 8
sub r9, 8
cmp r9, r8
jg .loop


ret

.done_zero:
xor rax, rax
mov rax, r11
ret
