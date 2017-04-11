%include "io.inc"

section .data
    vet1 DD 1, 2, 3, 4, 5
    vet2 DD 2, 3, 4, 5, 6
    
section .bss
    result resd 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov ecx, 20
    
L1:
    mov eax, [vet1 + ecx - 4]
    mov ebx, [vet2 + ecx - 4]
    mul ebx
    add [result], eax
    sub ecx, 4
    jnz L1
    
    PRINT_DEC 4, [result]
    
    xor eax, eax
    ret