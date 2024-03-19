*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    LEA HEALTH, A3  ; move value health into A3
    SUB.B #10, (A3) ; subtract byte value 10 from A3
    SIMHALT             ; halt simulator
HEALTH dc.b $64     ; define constant byte label Health with value $64 (100 in hex)
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
