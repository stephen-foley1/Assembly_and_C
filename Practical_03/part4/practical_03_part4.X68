*-----------------------------------------------------------
* Title      :Part 4
* Written by :Stephen Foley
* Date       :30/01/2024
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here

    LEA HEALTH, A3          ; Move label Health into address register 3
    LEA BOSSHEALTH, A4      ; Move label BossHealth into address register 4
    LEA PLAYERDAMAGE,A5     ; Move label PlayerDamage into address register 5

    LEA $3000, A3           ; Move memory location 3000 to Address Register 3
    LEA $4000, A4           ; Move memory location 4000 to Address Register 4
    LEA $5000, A5           ; Move memory location 5000 to Address Register 5
    
    
    MOVE.B #100, (A3)       ; Move byte value 100 into address register 3
    MOVE.L #100, (A4)       ; Move long value 100 into address register 4
    MOVE.W #100, (A5)       ; Move word value 100 into address register 5
    
    SUB.B #15, (A3)         ; Subtract byte value 10 from address register 3
    SUB.L #20, (A4)         ; Subtract long value 20 from address register 4
    SUB.W #5,  (A5)         ; Subtract word value 5 from address register  5
    
    MOVE.W #10, (A3)        ; Move word value 10 to address register 3
    MOVE.B #15, (A4)        ; Move byte value 15 to address register 4
    MOVE.L #20, (A5)        ; Move long vlaue 20 to address register 5

    SIMHALT             ; halt simulator
HEALTH dc.b $64
BOSSHEALTH dc.b $99
PLAYERDAMAGE dc.b $10

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
