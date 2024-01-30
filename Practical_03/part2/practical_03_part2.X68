*-----------------------------------------------------------
* Title      :Part 2
* Written by :Stephen Foley
* Date       :30/01/2024
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA $4000, A2       ; Move mem location 4000 to a2
    MOVE.B #100, (A2)   ; Move byte value 100 to a2
    SUB.B #10,   (A2)   ; Subtract value 10 from address register a

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source
    ;Long (L) = 4 Byte(32 bit) integer or 8 Byte(64 bit) FLOATING point
    ;Byte (B) = 1 Byte (8 bit)
    ;Word (W) = 2 Byte (16 bit)
    ;Single (S)= 4 Byte (32 bit) floating point
    ;Quad (Q) = 8 Byte (64 bit)
    ;Ten Bytes (T)= 10 Bytes (80 Bit floating point)
	;LEA = Load Effective Address
	;SUB = Subtract


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
