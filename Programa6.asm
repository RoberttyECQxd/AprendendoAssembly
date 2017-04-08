%include "io.inc"

section .bss
    array1 RESD 5
    array2 RESD 5
    array3 RESD 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov eax, 5
    mov ebx, 0

L1: GET_UDEC 4, ecx
    mov [array1 + ebx], ecx
    add ebx, 4
    dec eax
    jg L1
    
    mov eax, 5
    mov ebx, 0

L2: GET_UDEC 4, ecx
    mov [array2 + ebx], ecx
    add ebx, 4
    dec eax
    jg L2
    
    mov eax, 5
    mov ebx, 0

L3: mov ecx, [array1 + ebx]
    add ecx, [array2 + ebx]
    mov [array3 + ebx],ecx 
    add ebx, 4
    dec eax
    jg L3
    
    mov eax, 5
    mov ebx, 0

L4: mov ecx, [array3 + ebx]
    PRINT_UDEC 4, ecx
    NEWLINE
    add ebx, 4
    dec eax
    jg L4
    
    xor eax, eax
    ret