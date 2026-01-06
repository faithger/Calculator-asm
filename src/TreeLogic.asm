    SECTION .bss

    struc TreeNode
        .ParentAdress: resq 1 ; Node parent
        .Value1: resq 1       ; Value or child adress
        .Value2: resq 1       ; Value or child adress
        .Flags: resb 1        ; Flags for operation (2bits), Flags for if Value1 and 2 are adress or number
    endstruc 

SECTION .data

SECTION .text

CreateNode:

global _start

_start:

    ; Prufe bit 193 und bit 194 auf adresse oder wert.

    ; Wenn adresse dann gehe zu node in adresee. Wenn nur werte dann führe operations aus den bytes 195 und 196 auf die werte in byte 9-16 und 17-24 aus und speichere den wert in der src node.