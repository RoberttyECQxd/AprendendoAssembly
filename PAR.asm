%include "io.inc"

section .data
    par db "O numero eh par",0
    impar db "O numero eh impar",0
    
section .text
global CMAIN
CMAIN:
    GET_UDEC 4, eax
L1:
    sub eax, 2
    js I
    jnz L1
    
    PRINT_STRING par
    xor eax, eax
    ret
    
I:
    PRINT_STRING impar
    xor eax, eax
    ret