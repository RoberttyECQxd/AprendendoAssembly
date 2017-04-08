%include "io.inc"

section .text
global CMAIN
CMAIN:
    GET_HEX 4, eax
    PRINT_UDEC 4, eax
    xor eax, eax
    ret