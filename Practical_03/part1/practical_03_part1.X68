*-----------------------------------------------------------
* Title      :part 1
* Written by :Stephen Foley
* Date       :30/01/2024
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA $4000, A1       ; move memory location $4000 to address register A1
    MOVE.B #100,(A1)    ; move byte value 100 to address register A1

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

    ;Long (L) = 4 Byte(32 bit) integer or 8 Byte(64 bit) FLOATING point
    ;Byte (B) = 1 Byte (8 bit)
    ;Word (W) = 2 Byte (16 bit)
    ;Single (S)= 4 Byte (32 bit) floating point
    ;Quad (Q) = 8 Byte (64 bit)
    ;Ten Bytes (T)= 10 Bytes (80 Bit floating point)
	;LEA= Load Effective Address


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
