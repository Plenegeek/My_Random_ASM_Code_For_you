global _start
; This will NOT print anything, for now....
; I will try and add a print, and user input, and all that, but for now, just does 'nothing'

; Made by Pieter W. C. Tschopp 
section .text
_start:
    mov rax, 15
    mov rbx, 15

    cmp rax, rbx
    je equal

    mov rcx, 0
    jmp done

equal:
    mov rcx, 1

done:
    mov rax, 60
    mov rdi, 0
    syscall
