; Created by Pieter Tschopp



section .data
    newline db 10

section .bss
    buffer resb 32

section .text
    global _start

_start:
    mov r12, 0          ; a = 0
    mov r13, 1          ; b = 1
    mov r14, 20         ; print 20 numbers

.loop:
    ; Print a
    mov rax, r12
    call print_number

    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall

    ; Calculate next = a + b
    mov r15, r12
    add r15, r13

    ; a = b
    mov r12, r13

    ; b = next
    mov r13, r15

    dec r14
    jnz .loop

    ; Exit
    mov rax, 60
    xor rdi, rdi
    syscall


; --------------------------------
; print_number
; Input: RAX = number
; --------------------------------
print_number:
    mov rbx, 10
    mov rcx, buffer + 32

.convert:
    xor rdx, rdx
    div rbx

    add dl, '0'
    dec rcx
    mov [rcx], dl

    test rax, rax
    jnz .convert

    ; write(stdout, buffer, length)
    mov rax, 1
    mov rdi, 1
    mov rsi, rcx
    mov rdx, buffer + 32
    sub rdx, rcx
    syscall

    ret
