*-----------------------------------------------------------
* Title      :part3 
* Written by :Stephen Foley
* Date       :6/02/24
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
    
    ;Branch Taking damage
    BSR TAKING_DAMAGE
    
    BACK_IN_THE_GAME:
    ;lets help this player out
    BSR HEALTH_PICKUP
    BRA GAME_END
    
    TAKING_DAMAGE:
    ;hit by npc
    SUB.B #20,(A1)
    BRA BACK_IN_THE_GAME
    
    HEALTH_PICKUP:
    ; Pickup helath found
    ADD.B #10, (A1)
    RTS
    
    GAME_END:
    ;Game Over 
    MOVE.B #$00,(A1)

    


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
