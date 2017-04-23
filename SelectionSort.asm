%include "io.inc"

section .bss
    array resd 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov esi, array
    mov ecx, 5
L1:
    GET_DEC 4, [esi]
    add esi, 4
    loop L1
    
    mov ecx, 4
    mov ebx, 4  
L2:
    mov edx, ebx
    mov esi, ebx
    sub esi, 4
L3:
   mov eax, [array + esi]
   sub eax, [array + edx]
   js TROCA
   
CONTINUA:
   
   add ebx, 4
   loop L2
    
   mov esi, array
   mov ecx, 5
L4:
   PRINT_DEC 4, [esi]
   add esi, 4
   loop L4
   
   xor eax, eax
   ret
    
TROCA:
    mov eax, [array + esi]
    xchg eax, [array + edx]
    mov dword [array + esi], eax
    sub edx, 4
    sub esi, 4
    js CONTINUA
    jmp L3