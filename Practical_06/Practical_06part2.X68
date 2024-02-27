*-----------------------------------------------------------
* Title      :Part 2
* Written by :Stephen foley
* Date       :27/02/24
* Description:
*-----------------------------------------------------------
    ORG    $5000
START:                  ; first instruction of program





A1      EQU     $1000           ; Example address for string input
D1      EQU     $2000           ; Example address for data input

TRAP8   MOVE.B  #8, D0          ; Return time in hundredths of a second
        TRAP    #0              ; Use trap code 0

END

    SIMHALT             ; halt simulator



    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
