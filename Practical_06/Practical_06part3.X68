*-----------------------------------------------------------
* Title      :part 3
* Written by :Stephen Foley
* Date       :27/02/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA $4000, A7       ;Initializes the stack pointer A7 with the address $4000.
    
    MOVE.B  #1, -(A7)   ;Pushes immediate value 1 to stack
    MOVE.B  #2, -(A7)   ;Pushes immediate value 2 to stack
    MOVE.B  #3, -(A7)   ;Pushes immediate value 3 to stack
    MOVE.B  #4, -(A7)   ;Pushes immediate value 4 to stack
    
    MOVE.B  (A7)+, D1   ;Pops the top byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (A7)+, D1   ;Pops the next byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (A7)+, D1   ;Pops the next byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (A7)+, D1   ;Pops the last byte from the stack into register D1 and increments the stack pointer.
    SIMHALT             ; halt simulator



    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
