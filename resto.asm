%include "io.inc"

section .bss
    Valor1 RESD 1
    Valor2 RESD 1
    
section .text
global CMAIN
CMAIN:
    
    GET_UDEC 4, Valor1
    GET_UDEC 4, Valor2
    
    mov eax, [Valor1]
    mov ebx, [Valor2]
    
TOP:
    mov ecx, eax
    sub eax, ebx
    js MUDA
    jnz TOP
    
FIM:
    PRINT_DEC 4, eax
    xor eax, eax
    ret
    
MUDA:
    mov eax, ecx
    jmp FIM