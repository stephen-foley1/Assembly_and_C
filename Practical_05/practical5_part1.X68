*-----------------------------------------------------------
* Title      :Part 1
* Written by :Stephen Foley
* Date       :14/2/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

INITIALISE: 

    MOVE.B #3, D0 

    MOVE.B #0, D1 

 

GAME_LOOP: 

    CMP.B #1, D0 

    BNE GAME_POINTS 

    BEQ GAME_OVER 

GAME_POINTS: 

    ADD.B	#10, D1 

    SUB.B	#1, D0 

    BRA		GAME_LOOP 

 

GAME_OVER: 


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
