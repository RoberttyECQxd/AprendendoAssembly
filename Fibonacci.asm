%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_DEC 4, eax
    mov ebx, 0
    mov ecx, 1
L1:
    mov edx, ebx
    add edx, ecx
    PRINT_DEC 4, edx
    NEWLINE
    mov ebx, ecx
    mov ecx, edx
    dec eax
    jnz L1
    
    ;write your code here
    xor eax, eax
    ret