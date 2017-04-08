%include "io.inc"

section .data
    array DD 1, 4, 5, 3, 2

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov eax, 4
    mov ebx, 0
    
L1:     
    mov ecx, 4
    mov edx, 0
L2:
    mov ebp, [array + ebx]
    cmp ebp, [array + edx]
    jg swap
    add edx, 4
    dec ecx
    jge L2
    
    add ebx, 4
    dec eax
    jge L1
    
    xor eax, eax
    ret
    
swap:
    mov esp, [array + ebx]
    xchg esp, [array + edx]
    mov [array + ebx], esp
    xor edi, edi
    jge L2
    
