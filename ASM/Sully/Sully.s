global main
extern printf

section .rodata
msg db "Sully starter (Linux NASM)\n", 0

section .text
main:
enter 0, 0
lea rdi, [rel msg]
xor eax, eax
call printf
xor eax, eax
leave
ret

section .note.GNU-stack noalloc noexec nowrite progbits
