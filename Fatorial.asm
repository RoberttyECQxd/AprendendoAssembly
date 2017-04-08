%include "io.inc"

section .data

    msg: dw "O fatorial de 3: ", 0xa
    len equ $ - msg

section .bss

    result RESD 1

section .text
global CMAIN
CMAIN:

    mov  bx, 3          ;para calcular o fatorial de 3
    call proc_fact
    add  ax, 30h
    mov [result], ax
    
    mov	edx,len   ;tamanho da mensagem
    mov	ecx,msg   ;mensagem a ser escrita
    mov	ebx,1     ;saída padrão (stdout)
    mov	eax,4     ;chamada de sistema (sys_write)
    int	0x80      ;kernel
    
    mov edx,1          ;tamanho da mensagem
    mov	ecx,result       ;resultado a ser escrito
    mov	ebx,1          ;(stdout)
    mov	eax,4          ;chamada de sistema (sys_write)
    int	0x80           ;invoca kernel
    
    xor eax, eax
    ret
 
 do_calculation:
   dec   bl
   call  proc_fact
   inc   bl
   mul   bl        	 ;ax = al * bl
   ret
 
 proc_fact:
   cmp   bl, 1
   jg    do_calculation
   mov   ax, 1
   ret
