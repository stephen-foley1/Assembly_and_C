*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA $4000, SP       ;Initializes the stack pointer SP with the address $4000.
    
    MOVE.B  #1, -(SP)   ;Pushes immediate value 1 to stack
    MOVE.B  #2, -(SP)   ;Pushes immediate value 2 to stack
    MOVE.B  #3, -(SP)   ;Pushes immediate value 3 to stack
    MOVE.B  #4, -(SP)   ;Pushes immediate value 4 to stack
    
    MOVE.B  (SP)+, D1   ;Pops the top byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (SP)+, D1   ;Pops the next byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (SP)+, D1   ;Pops the next byte from the stack into register D1 and increments the stack pointer.
    MOVE.B  (SP)+, D1   ;Pops the last byte from the stack into register D1 and increments the stack pointer.
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
