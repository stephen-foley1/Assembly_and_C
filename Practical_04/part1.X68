*-----------------------------------------------------------
* Title      :part1
* Written by :stephen foley
* Date       :6/2/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    ;Move Health to Memory Location $3000
    MOVE.B #100, $3000
    
    
    ; Load Memeory Address $300 into
    ; Address register A1
    LEA     $3000, A1
    
    ;Hit by NPC (Non playable character)
    SUB.B #20, (A1)
    
    ; Pickup health found
    ADD.B #10,(A1)
    
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

    ;Long (L) = 4 Byte(32 bit) integer or 8 Byte(64 bit) FLOATING point.
    ;Byte (B) = 1 Byte (8 bit).
    ;Word (W) = 2 Byte (16 bit).
    ;Single (S)= 4 Byte (32 bit) floating point.
    ;Quad (Q) = 8 Byte (64 bit).
    ;Ten Bytes (T)= 10 Bytes (80 Bit floating point).
	;LEA = Load Effective Address.
	;SUB = Subtract.
	;DC reserves a byte/long/word etc in memory.
	;MOVEA =
	;NOT =One is ture one is false 
	;EOR = exclusive or( only one can be true)
	;OR = One can be true and one false or both true/false
	;AND = both must be ture
	;Rts = return to subregister and if theres a bsr there is also a rts
	;Bra = branch

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
