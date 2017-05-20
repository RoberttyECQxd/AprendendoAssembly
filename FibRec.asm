%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_DEC 4, eax
    call fib
    PRINT_DEC 4, eax
    
    xor eax, eax
    ret
    
fib:
    cmp eax, 1
    jne L1
    mov eax, 1
    ret
L1:
    cmp eax, 2
    jne L2
    mov eax, 1
    ret
L2:
    dec eax
    push eax
    call fib
    mov ebx, eax
    pop eax
    dec eax
    push eax
    push ebx
    call fib
    pop ebx
    add ebx, eax
    pop eax
    mov eax, ebx
    ret
    
    
    