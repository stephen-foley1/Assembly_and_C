*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.L  #HEALTH,-(SP)       ;Pushes the address of the HEALTH variable onto the stack.   
    JSR     GAME_LOOP           ;Jumps to the GAME_LOOP subroutine.
    BSR     HEADS_UP_DISPLAY    ;Calls the HEADS_UP_DISPLAY subroutine.
    BRA     END                 ; Branches to the END label to terminate the program.


*-------------------------
*Subroutine
* Branches to the END label to terminate the program.
*-------------------------

GAME_LOOP:
    MOVEA.L 4(SP),A1
    SUB.B   #10, (A1)
    RTS
    
*-------------------------
*Subroutine
* The HEADS_UP_DISPLAY subroutine displays the health
* value using the trap code 14 for displaying a string 
* and trap code 3 for displaying a number.
*-------------------------  
 
HEADS_UP_DISPLAY:
    LEA     MESSAGE,A1
    MOVE.B  #14,    D0
    TRAP    #15
    MOVE.B  HEALTH, D1
    MOVE.B  #3,     D0
    TRAP    #15
    RTS
    
*-------------------------
*Subroutine
*Finally, the program terminates using
*trap code 9 (MOVE.B #9, D0 and TRAP #0). 
*------------------------- 
 
END:
   MOVE.B  #9, D0      ; Trap code 9: Terminate program
   TRAP    #0          ; Call trap handler

    SIMHALT             ; halt simulator

HEALTH:     DC.B    100
MESSAGE:    DC.B    'HEALTH: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
