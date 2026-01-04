; The goal of this file is to take a string as an input that will be turned it to the tree.

SECTION .bss
    InputString resb 256
    InputLen resb 1
    Loadings resb 1
    ExtraBlocks resb 1

global GetInput
global InterpretInput
global InputString
global InputLen

SECTION .data

SECTION .text

GetInput:
   
    mov rax, 0
    mov rdi, 0
    mov rsi, InputString
    mov rdx, 256
    syscall
    mov [InputLen], rax
    ret

InterpretInput:

    InputLen
    Loadings
    ExtraBlocks

    mov rcx Loadings ; Iterations for total loop

    mov rsi InputString
    mov rbx, 8 ; Load 8 for the number for bytes into 

    .loop_interpretation:

    mov rax, [rsi] ; Load first 8 byte of rsi into rax

    .loop_InterpretBlock:





    ; Things to keep track of: Total bytes (InputLen), Total needed Loadings = (InputLen/8) and Remaining Extra blocks (remainder)
    ;Store these in r16, r15



    ; Iteriere über den String und Stelle fest ob die eingabe Gültig ist, und lege eine Operationsreihnfolge fest.

    ; Check if char is : number from 0-9, or a , . + - * / ( ) Power(x¹ oder x^y)

    ; Binding strength: Power => () => *or/ => +or-