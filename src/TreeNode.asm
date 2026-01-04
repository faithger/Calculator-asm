SECTION .bss
    NodeSpace resb 25 ; I only need 24byte and 4 bits. Rest is 0ed/left for later potential usecase.

    ;First 8 bytes: Parent Nodes Adress, 2nd 8 bytes: number or adress, 3rd 9 bytes: Number or adress, Next bit: Flag for first number/adress, Next bit: Flag for 2nd number/adress. Next 2 bits: Operation used!

SECTION .data

SECTION .text

global _start

_start:
    