%define X 5
%define SRC "%%define X 5%1$c%%define SRC %2$c%3$s%2$c%1$c%1$cextern fopen%1$cextern fprintf%1$cextern fclose%1$cextern snprintf%1$cextern system%1$cglobal main%1$c%1$csection .data%1$cfilename_fmt db %2$cSully_%%d.s%2$c, 0%1$cbinary_fmt db %2$cSully_%%d%2$c, 0%1$cmode db %2$cw%2$c, 0%1$ccmd_fmt db %2$cnasm -f elf64 %%s -o %%s.o && gcc -no-pie %%s.o -o %%s -lc && .%%s%2$c, 0%1$csrc db SRC, 0%1$c%1$csection .text%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c    sub rsp, 320%1$c%1$c    mov eax, X%1$c    cmp eax, 0%1$c    jl .done%1$c    mov dword [rbp-4], eax%1$c%1$c    lea rdi, [rbp-80]%1$c    mov rsi, 80%1$c    lea rdx, [rel filename_fmt]%1$c    mov ecx, eax%1$c    xor eax, eax%1$c    call snprintf%1$c%1$c    lea rdi, [rbp-80]%1$c    lea rsi, [rel mode]%1$c    call fopen%1$c    test rax, rax%1$c    jz .done%1$c    mov [rbp-8], rax%1$c%1$c    mov rdi, rax%1$c    lea rsi, [rel src]%1$c    mov edx, 10%1$c    mov ecx, 34%1$c    lea r8, [rel src]%1$c    mov eax, dword [rbp-4]%1$c    dec eax%1$c    mov r9d, eax%1$c    xor eax, eax%1$c    call fprintf%1$c%1%c     mov rdi, [rbp-8]%1$c    call fclose%1$c%1$c    lea rdi, [rbp-160]%1$c    mov rsi, 80%1$c    lea rdx, [rel binary_fmt]%1$c    mov ecx, dword [rbp-4]%1$c    xor eax, eax%1$c    call snprintf%1$c%1$c    lea rdi, [rbp-320]%1$c    mov rsi, 256%1$c    lea rdx, [rel cmd_fmt]%1$c    lea rcx, [rbp-80]%1$c    lea r8, [rbp-160]%1$c    lea r9, [rbp-160]%1$c    xor eax, eax%1$c    call snprintf%1$c%1$c    lea rdi, [rbp-320]%1$c    call system%1$c%1$c.done:%1$c    xor eax, eax%1$c    leave%1$c    ret%1$c"

extern fopen
extern fprintf
extern fclose
extern snprintf
extern system
global main

section .data
filename_fmt db "Sully_%d.s", 0
binary_fmt   db "Sully_%d", 0
mode         db "w", 0
cmd_fmt      db "nasm -f elf64 %s -o %s.o && gcc -no-pie %s.o -o %s -lc && ./%s", 0
src          db SRC, 0

section .text
main:
    push rbp
    mov rbp, rsp
    sub rsp, 320

    mov eax, X
    cmp eax, 0
    jl .done

    mov dword [rbp-4], eax

    lea rdi, [rbp-80]
    mov rsi, 80
    lea rdx, [rel filename_fmt]
    mov ecx, eax
    xor eax, eax
    call snprintf

    lea rdi, [rbp-80]
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
    mov eax, dword [rbp-4]
    dec eax
    mov r9d, eax
    xor eax, eax
    call fprintf

    mov rdi, [rbp-8]
    call fclose

    lea rdi, [rbp-160]
    mov rsi, 80
    lea rdx, [rel binary_fmt]
    mov ecx, dword [rbp-4]
    xor eax, eax
    call snprintf

    lea rdi, [rbp-320]
    mov rsi, 256
    lea rdx, [rel cmd_fmt]
    lea rcx, [rbp-80]
    lea r8, [rbp-160]
    lea r9, [rbp-160]
    xor eax, eax
    call snprintf

    lea rdi, [rbp-320]
    call system

.done:
    xor eax, eax
    leave
    ret
