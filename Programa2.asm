%include "io.inc"

section .data
    msg dw "Hello Word!!", 0xa
    len equ $-msg

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    mov	edx,len   ;tamanho da mensagem
    mov	ecx,msg   ;mensagem a ser escrita
    mov	ebx,1     ;saída padrão (stdout)
    mov	eax,4     ;chamada de sistema (sys_write)
    int	0x80      ;kernel
		       	
    xor eax, eax
    ret