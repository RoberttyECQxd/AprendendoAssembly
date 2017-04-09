%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_DEC 4, eax
    mov ebx, eax
    dec ebx
L1:
    mul ebx
    dec ebx
    jnz L1    
    
    PRINT_DEC 4, eax
    
    xor eax, eax
    ret