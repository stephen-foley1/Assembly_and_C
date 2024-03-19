*-----------------------------------------------------------
* Title      : Part 1
* Written by :Stephen Foley
* Date       :23/01/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0 ;move literal binary value 100 to data register  D0
    MOVE.L #$100, D1 ;"            "hex"                          "   D1
    MOVE.L #100, D2  ;"          " decimal "                    "   D2
    
    MOVE.L D0, $3000 ; Move data register to memory location $3000
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
