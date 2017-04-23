%include "io.inc"

section .bss
    array resd 5

section .text
global CMAIN
CMAIN:
    mov esi, 0
    mov ecx, 5
L1:
    GET_UDEC 4, [array + esi]
    add esi, 4
    loop L1

    mov ecx, 4
LOOP1:
    mov eax, ecx
    mov esi, 0
    mov edx, 4
LOOP2:
    mov ebx, [array + esi]
    sub ebx, [array + edx]
    js TROCA
    add esi, 4
    add edx, 4
    loop LOOP2
    
    mov ecx, eax
    loop LOOP1
    
    mov esi, 0
    mov ecx, 5
L2:
    PRINT_UDEC 4, array + esi
    add esi, 4
    loop L2
    
    xor eax, eax
    ret
    
TROCA:
    mov ebx, [array + esi]
    xchg ebx, [array + edx]
    mov [array + esi], ebx
    jmp LOOP2