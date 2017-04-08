%include "io.inc"

section .text
global CMAIN

L2:
    mov eax, 0
    PRINT_DEC 4, eax
    xor eax, eax
    ret

CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_DEC 4, ecx
    mov ebx, ecx
    dec ebx
    
    L1:
    
    mov edx, 0     
    mov eax, ecx
    div ebx      
    
    cmp edx, 0
    jz L2
    
    dec ebx
    mov ebp, ebx
    dec ebp
    jnz L1
    
    mov eax, 1
    PRINT_DEC 4, eax
        
    xor eax, eax
    ret
    
        
    