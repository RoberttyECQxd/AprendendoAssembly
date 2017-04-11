%include "io.inc"

section .data
    myBytes DW 80h, 66h, 0A5h

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    
    movzx ax, [myBytes]
    add ax, [myBytes + 2]
    add ax, [myBytes + 4]
    
    xor eax, eax
    ret