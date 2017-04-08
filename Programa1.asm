%include "io.inc"

section .data
    val1 dd 9000h
    val2 dd 9000h
    val3 dd 1000h

section .bss
    finalVal: RESW 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov eax, [val1]
    add eax, [val2]
    sub eax, [val3]
    mov [finalVal], eax
    
    xor eax, eax
    ret