%include "io.inc"

section .data
    arrayD DD 3, 1, 2

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    
    mov eax, [arrayD + 4]
    xchg eax, [arrayD]
    mov [arrayD + 4], eax
    
    xchg eax, [arrayD + 8]
    mov [arrayD + 4], eax
    
    xor eax, eax
    ret