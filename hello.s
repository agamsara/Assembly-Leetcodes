.intel_syntax noprefix

.section .data
<<<<<<< HEAD
msg:
    .ascii "Hello, world!\n"
len = . - msg

.section .text
=======

msg:
    .ascii "Hello, world!\n"

len = . - msg

.section .text

>>>>>>> d72a3483e0ab9cec1ef27fc80edcbf5f2566412a
.global _start

_start:
    mov rax, 1
    mov rdi, 1
<<<<<<< HEAD
    lea rsi, [rip + msg]
=======
    lea rsi, [rip+msg]
>>>>>>> d72a3483e0ab9cec1ef27fc80edcbf5f2566412a
    mov rdx, len
    syscall

    mov rax, 60
<<<<<<< HEAD
    xor rdi, rdi
=======

    xor rdi,rdi

>>>>>>> d72a3483e0ab9cec1ef27fc80edcbf5f2566412a
    syscall
