*-----------------------------------------------------------
* Title      :PART 2
* Written by :Stephen Foley
* Date       :6/2/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
    ;Move Health to Memory Location $3000
    MOVE.B #100, $3000
    
    ;Move Location of player into Data Register
    ; X First byte 0 to 15
    ; Y First byte 0 to 15
    MOVE.B #$22, D3
    
    ; Bitwise AND D2 and D3
    ; Whats new location of player
    AND.B D2, D3
    
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

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
