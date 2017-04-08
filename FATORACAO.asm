%include "io.inc"

section .text
global CMAIN

MOSTRAR:
    PRINT_DEC 4, ebx
    NEWLINE
    mov ecx, eax
    xor ebp, ebp
    jz L1

CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_DEC 4, ecx
    mov eax, ecx
    mov ebx, 2
    
L1:
    mov edx, 0 
    div ebx      
    cmp edx, 0
    jz MOSTRAR
    
    mov eax, ecx
    inc ebx
    mov edx, eax
    dec edx
    jnz L1
    
    xor eax, eax
    ret
    
        
    