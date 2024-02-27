*-----------------------------------------------------------
* Title      :Part 6
* Written by :Stephen Foley
* Date       :27/02/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.L  #HEALTH,    -(SP)   ;Note position in stack
    
    MOVE.B  #14, D0
    MOVE.B  #14, D1
    
    MOVE.L D0, -(SP)            ;PLAYER X
    MOVE.L D1, -(SP)            ;ENEMNY X
    
    JSR GAME_LOOP
    BRA HEADS_UP_DISPLAY
    BRA END_GAME

*-------------------------
*SUBROUTINE GAME LOOP
*DESCRIPTION
*-------------------------
GAME_LOOP:
    
    MOVE.L  4(SP), D1          ;NOTE DEPTH IN STACK
    MOVE.L  8(SP), D0          ;NOTE DEPTH IN STACK
    
    CMP D0, D1
    BEQ DAMAGE
    BRA NO_DAMAGE
    
*-------------------------
*SUBROUTINE DAMAGE
*DESCRIPTION
*-------------------------
DAMAGE:

    MOVEA.L 12(SP), A1         ; NOTE DEPTH IN STACK
    SUB.B   #10,(A1)

*-------------------------
*SUBROUTINE NO DAMAGE
*DESCRIPTION
*-------------------------       
NO_DAMAGE:

    RTS
    
*-------------------------
*SUBROUTINE HEADS UP DISPLAY
*DESCRIPTION
*-------------------------
HEADS_UP_DISPLAY:

    MOVE.B  HEALTH, D1
    MOVE.B  #3,     D0
    TRAP    #15
    RTS
    
*-------------------------
*SUBROUTINE END GAME
*DESCRIPTION
*-------------------------
END_GAME
    
    SIMHALT             ; halt simulator

HEALTH: DC.B    100

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
