*-----------------------------------------------------------
* Title      :PART 3
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    MOVE.L #%100, D0 ; Move Long binary value 100 to D0
    MOVE.L #$100, D1 ; Move Long hex value 100 to D1
    MOVE.L #100,  D2 ; Move Long decimal value 100 to D2
    
    MOVE.L D0,  $3000 ; Move Data reg to Mem location 3000
    MOVE.L D1,  $3010
    MOVE.L D2,  $3020
     
    MOVE.W #100,  $3020 ; Move word value 100 to location $3020
    MOVE.W #$100, $3010
    MOVE.W #%100, $3000

    MOVE.B #100,    $3020 ;move byte value 100 to $3020
    MOVE.B #$64,    $3010
    MOVE.B #%10001111,  $3000 
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source
    
    ;Long (L) = 4 Byte(32 bit) integer or 8 Byte(64 bit) floatig point
    ;Byte (B) = 1 Byte (8 bit)
    ;Word (W) = 2 Byte (16 bit)
    ;Single (S)= 4 Byte (32 bit) floating point
    ;Quad (Q) = 8 Byte (64 bit)
    ;Ten Bytes (T)= 10 Bytes (80 Bit floating point)


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
