SECTION .data

ErrorMSG db "Error: Division by Zero!" 
ErrorLen equ $ - ErrorMSG 

SECTION .text

Addition:
    add r8, r9
    ret

Subtraction:
    sub r8, r9
    ret

Multiplication:
    imul r8, r9
    ret
    
Division:
    mov rax, r8
    test r9, r9
    jnz .divide
    jmp .DivByZero

    .divide:
    cqo
    idiv r9
    ret

    .DivByZero:
    mov rax, 1
    mov rdi, 1
    mov rsi, ErrorMSG
    mov rdx, ErrorLen
    syscall

    ret