; Assuming use of printf for displaying and scanf for inputting numbers

section .data
prompt  db "Enter a number: ", 0
result  db "The result is: %d", 10, 0
format  db "%d", 0  ; Format for scanf

section .text
global _start
_start:
    ; Display prompt for first number
    mov     rdi, prompt
    call    printf

    ; Input first number
    mov     rsi, rsp       ; Use stack space for the input number
    mov     rdi, format
    call    scanf
    mov     rsi, [rsp]     ; Move the number from stack to RSI (num1)

    ; Display prompt for second number
    mov     rdi, prompt
    call    printf

    ; Input second number
    mov     rdi, format
    call    scanf
    mov     rdx, [rsp]     ; Move the number from stack to RDX (num2)

    ; Add the numbers using Adder1 (adding routine)
    call    Adder1

    ; Display the result
    mov     rsi, rax       ; Move the sum (from RAX) to RSI for printing
    mov     rdi, result
    call    printf

    ; Exit program
    mov     rax, 60        ; syscall number for exit
    xor     rdi, rdi       ; status 0
    syscall

; Adder1 subroutine to add two numbers in RSI and RDX, sum in RAX
Adder1:
    mov     rax, rsi
    add     rax, rdx
    ret
