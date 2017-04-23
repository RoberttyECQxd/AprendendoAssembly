%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_UDEC 4, eax
    mov ecx, 2
    mov edx, 0
L1:
    mov ebx, eax
L2:
    sub ebx, ecx
    js L3
    jnz L2
    jz divisivel
L3:
    inc ecx
    mov edx, eax
    dec edx
    jnz L1    
    
    xor eax, eax
    ret
    
divisivel:
    mov edx, 0
    div ecx
    PRINT_UDEC 4, ecx
    NEWLINE
    jmp L1
    