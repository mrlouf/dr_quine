section .data
    msg db "section .data

section .text
    global main

main:
    push rbp
    mov rbp, rsp

    mov eax, 0
    pop rbp
    ret"

section .text
    global main

main:
    push rbp
    mov rbp, rsp
    mov rdi, msg
    call printf
    mov eax, 0
    pop rbp
    ret