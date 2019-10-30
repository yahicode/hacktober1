section .text
        global _start

_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, message
        mov rdx, message_length
        syscall
        jmp _start

        mov rax, 60
        mov rdi, 0
        syscall

section .data
        message db "Hacktoberfest is Awesome.. :)", 10
        message_length equ $-message