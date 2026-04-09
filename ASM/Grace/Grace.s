; This is a comment
%define FILENAME "Grace_kid.s"
%define SRC "; This is a comment%1$c%%define FILENAME %2$cGrace_kid.s%2$c%1$c%%define SRC %2$c%3$s%2$c%1$c%1$cextern fopen%1$cextern fprintf%1$cextern fclose%1$cglobal main%1$c%1$csection .data%1$cfilename db FILENAME, 0%1$cmode db %2$cw%2$c, 0%1$csrc db SRC, 0%1$c%1$csection .text%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 16%1$c%1$c    lea rdi, [rel filename]%1$c    lea rsi, [rel mode]%1$c    call fopen%1$c    test rax, rax%1$c    jz .done%1$c    mov [rbp-8], rax%1$c%1$c    mov rdi, rax%1$c    lea rsi, [rel src]%1$c    mov edx, 10%1$c    mov ecx, 34%1$c    lea r8, [rel src]%1$c    xor eax, eax%1$c    call fprintf%1$c%1$c    mov rdi, [rbp-8]%1$c    call fclose%1$c%1$c.done:%1$c    xor eax, eax%1$c    leave%1$c    ret%1$c"

extern fopen
extern fprintf
extern fclose
global main

section .data
filename db FILENAME, 0
mode db "w", 0
src db SRC, 0

section .text
main:
    push rbp
    mov rbp, rsp
    sub rsp, 16

    lea rdi, [rel filename]
    lea rsi, [rel mode]
    call fopen
    test rax, rax
    jz .done
    mov [rbp-8], rax

    mov rdi, rax
    lea rsi, [rel src]
    mov edx, 10
    mov ecx, 34
    lea r8, [rel src]
    xor eax, eax
    call fprintf

    mov rdi, [rbp-8]
    call fclose

.done:
    xor eax, eax
    leave
    ret
