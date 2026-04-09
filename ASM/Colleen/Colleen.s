; Outside comment

global main
extern printf

section .rodata
code_str db "; Outside comment%1$c%1$cglobal main%1$cextern printf%1$c%1$csection .rodata%1$ccode_str db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$cmain:%1$center 0, 0%1$clea rdi, [rel code_str]%1$c; Inside comment%1$cmov rsi, 10%1$cmov rdx, 34%1$clea rcx, [rel code_str]%1$cxor eax, eax%1$ccall printf%1$cxor eax, eax%1$cleave%1$cret%1$c", 0

section .text
main:
enter 0, 0
lea rdi, [rel code_str]
; Inside comment
mov rsi, 10
mov rdx, 34
lea rcx, [rel code_str]
xor eax, eax
call printf
xor eax, eax
leave
ret
