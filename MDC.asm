%include "io.inc"

section .bss
    var1 resd 1
    var2 resd 1
    result resd 1
    
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_UDEC 4, var1
    GET_UDEC 4, var2
    
    mov dword [result], 1
    mov ecx, 2
    mov ebp, 0
TOP:
    mov eax, [var1]
    mov ebx, [var2]
L1:
    sub eax, ecx
    jz divide1
    js L2
    jnz L1
L2:
    sub ebx, ecx
    jz divide2
    js FTOP
    jnz L2
FTOP:
    dec ebp
    jz FIMLOOP
    inc ecx
FIMLOOP:
    mov ebp, 0
    
    mov eax, [var1]
    mov ebx, [var1]
    sub eax, 1
    jnz TOP
    sub ebx, 1
    jnz TOP
    
    PRINT_DEC 4, result
    
    xor eax, eax
    ret

divide1:
    mov edx, 0
    mov eax, [var1]
    div ecx
    mov dword [var1], eax 
    mov ebp, 1
    jmp L2

divide2:
    mov edx, 0
    mov eax, [var2]
    div ecx
    mov dword [var2], eax 
    dec ebp
    jnz L2
    mov eax, [result]
    mul ecx
    mov dword [result], eax
    inc ebp
    jmp L2
        
    
    