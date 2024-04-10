global sub

section .data
section .text
sub:
    mov   eax, [esp+4]      ; argument 1 offset by 4 bytes (size of interger), first 4 bytes current instruction
    sub   eax, [esp+8]      ; argument 2 offset by 4 bytes (size of interger)
    ret

