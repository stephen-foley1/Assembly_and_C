*-----------------------------------------------------------
* Title      :Part 5
* Written by :Stephen Foley
* Date       :30/01/2024
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    MOVEA.L #ACHIEVEMENT_POINTS, A1 ; Move the label Achievement_points into address register 
    MOVE.L #0, D0                   ; Initialize D0 with long value 0
    
    MOVE.L (A1)+, D2                ; Move the long value from address register 1 into data register 2 
    ADD.L D2, D0                    ; Add the value from D2 to D0
    
    MOVE.L (A1)+, D2                ; Move the long value from address register 1 into data register 2
    ADD.L D2, D0                    ; Add the value from D2 to D0
    
    MOVE.L (A1)+, D2                ; Move the long value from address register 1 into data register 2
    ADD.L D2, D0                    ; Add the value from D2 to D0

    MOVE.L (A1)+, D2                ; Move the long value from address register 1 into data register 2
    ADD.L D2, D0                    ; Add the value from D2 to D0

    MOVE.L (A1)+, D2                ; Move the long value from address register 1 into data register 2
    ADD.L D2, D0                    ; Add the value from D2 to D0

    ACHIEVEMENT_POINTS: DC.L 5,10,15,20,30

    END    START        ; last line of source
    ;Long (L) = 4 Byte(32 bit) integer or 8 Byte(64 bit) FLOATING point
    ;Byte (B) = 1 Byte (8 bit)
    ;Word (W) = 2 Byte (16 bit)
    ;Single (S)= 4 Byte (32 bit) floating point
    ;Quad (Q) = 8 Byte (64 bit)
    ;Ten Bytes (T)= 10 Bytes (80 Bit floating point)
	;LEA = Load Effective Address
	;SUB = Subtract

;SIMHALT             ; halt simulator



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
