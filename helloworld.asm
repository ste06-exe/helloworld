;Assembly (x86-64 Linux, sintassi NASM)
section .data
    msg db "Hello, World!", 0xA
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, msg        ; indirizzo stringa
    mov rdx, len        ; lunghezza
    syscall

    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; codice uscita 0
    syscall