%include "io.inc"

section .data
    array DD 1, 2, 3

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov eax, 0
    
    mov ebx, [array + eax]
    PRINT_UDEC 4, ebx
    add eax, 4
    NEWLINE
    
    mov ebx, [array + eax]
    PRINT_UDEC 4, ebx
    add eax, 4
    NEWLINE
    
    mov ebx, [array + eax]
    PRINT_UDEC 4, ebx
    
    xor eax, eax
    ret
