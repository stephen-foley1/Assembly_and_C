;Author Stephen Foley
;Date 02/05/2024
;Description I changed the origianl X68 code to X86_64 code while keeping 
;the orignal functions of the tutorial4.X68 file. I added basic error
;handling such as the AsciiToInt duction checks each input is a valid digit
; and the IntToAscii fucntion checks if the number is 0"
;
;

section .data
    ; Strings for user prompts and result message
    prompt1         db 'Number 1: ', 0
    len1            equ $ - prompt1
    prompt2         db 'Number 2: ', 0
    len2            equ $ - prompt2
    resultMessage   db 'The result is: ', 0
    resMsgLen       equ $ - resultMessage

section .bss
    ; Variables to store user input and result
    num1            resb 11    ; Reserve space for first number, plus newline
    num2            resb 11    ; Reserve space for second number, plus newline
    result          resb 33    ; Reserve space for result string

section .text
global _start

_start:
    ; Prompt and read the first number
    mov     eax, 1
    mov     edi, 1
    mov     rsi, prompt1
    mov     edx, len1
    syscall
    mov     eax, 0
    mov     edi, 0
    mov     rsi, num1
    mov     edx, 11
    syscall

    ; Convert num1 from ASCII to integer
    mov     rsi, num1
    call    AsciiToInteger
    mov     ebx, eax    ; Store the first integer in ebx

    ; Prompt and read the second number
    mov     eax, 1
    mov     edi, 1
    mov     rsi, prompt2
    mov     edx, len2
    syscall
    mov     eax, 0
    mov     edi, 0
    mov     rsi, num2
    mov     edx, 11
    syscall

    ; Convert num2 from ASCII to integer
    mov     rsi, num2
    call    AsciiToInteger
    add     ebx, eax    ; Add the second integer to the first one

    ; Print the result message
    mov     eax, 1
    mov     edi, 1
    mov     rsi, resultMessage
    mov     edx, resMsgLen
    syscall

    ; Convert the result integer to ASCII
    mov     eax, ebx    ; Move sum into eax for conversion
    mov     rdi, result
    call    IntegerToAscii

    ; Print the sum
    mov     eax, 1
    mov     edi, 1
    mov     rsi, result
    mov     edx, 33
    syscall

    ; Exit the program
    mov     eax, 60         ; syscall number for sys_exit
    xor     edi, edi        ; Return 0 status
    syscall

; Function: Convert ASCII string to integer
; Input: RSI points to the string
; Output: RAX contains the converted integer
AsciiToInteger:
    xor     rax, rax          ; Clear RAX to store the result
.parse_loop:
    movzx   rcx, byte [rsi]  ; Load the current byte with zero-extension
    inc     rsi               ; Increment RSI in advance
    cmp     rcx, '0'
    jl      .done              ; If less than '0', stop parsing
    cmp     rcx, '9'
    jg      .done              ; If greater than '9', stop parsing
    sub     rcx, '0'          ; Convert from ASCII to integer ('0' -> 0, '1' -> 1, etc.)
    imul    rax, rax, 10      ; Multiply the current result by 10 to shift left
    add     rax, rcx          ; Add the new digit to the result
    jmp     .parse_loop
.done:
    ret

; Function: Convert integer to ASCII string
; Input: RAX contains the integer
; Output: RDI points to the buffer to store the ASCII string
IntegerToAscii:
    mov     rcx, 10           ; Divisor
    mov     rbx, rdi           ; Save the original buffer address
    add     rdi, 32           ; Move to the end of the buffer
    mov     byte [rdi], 0      ; Null-terminate the string
    dec     rdi               ; Move back one byte
    test    rax, rax          ; Check if the number is zero
    jz      .zero             ; If zero, handle separately
.convert_digit:
    xor     rdx, rdx          ; Clear RDX before division
    div     rcx               ; Divide RAX by 10, result in RAX, remainder in RDX
    add     dl, '0'           ; Convert remainder to ASCII
    dec     rdi               ; Move back one byte
    mov     [rdi], dl         ; Store ASCII character
    test    rax, rax          ; Check if number is zero
    jnz     .convert_digit    ; If not zero, continue
    ret
.zero:
    mov     byte [rbx], '0'   ; Store '0' at the beginning of the buffer
    ret
