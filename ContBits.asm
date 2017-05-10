%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    GET_UDEC 4, ebx
    mov ecx, 32
    mov esi, 0
Laco:
    mov eax, ebx
    and eax, 1
    jnz incr
cont:
    mov eax, ebx
    call shift
    mov ebx, eax
    loop Laco
    
    PRINT_DEC 4, esi
    xor eax, eax
    ret
    
shift:
    mov edx, 0
    mov ebp, 2
    div ebp
    ret
    
    
incr:
    inc esi
    jmp cont