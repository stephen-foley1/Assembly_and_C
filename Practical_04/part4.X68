*-----------------------------------------------------------
* Title      :part 4
* Written by :Stephen Foley
* Date       :6/2/24
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code here
      ;Move Health to Memory Location $3000
    MOVE.B #100, $3000
    
    ;move player damage into mem location 4000
    MOVE.B #10, $4000
    
    ;Move Health to Memory Location $3000
    MOVE.B #20, $5000
    
    ; load Memeory Address $3000 into
    ; Address register A1
    LEA     $3000, A1
    
    ;load mem address 4000 into A2
    LEA     $4000,A2
    
    ;load mem address 5000 into A2
    LEA     $5000,A3
    
    ;location of player
    MOVE.B #$12 ,D2
    
    ;location of boss
    MOVE.B #$22 , D3
    
    ;Branch Taking damage
    BSR TAKING_DAMAGE
    
    BACK_IN_THE_GAME:
    ;lets help this player out
    BSR HEALTH_PICKUP
    AND.B #$30 ,D2
    BRA DAMAGE_BOOST
    
    DAMAGE_BOOST:
    ;gains damage boost
    ADD.B #20, (A2)
    BRA HITTING_BOSS
    
    TAKING_DAMAGE:
    ;hit by npc
    SUB.B #20,(A1)
    BRA BACK_IN_THE_GAME
    
    HITTING_BOSS:
    ;kill the boss
    SUB.B #20 ,(A3)
    BRA GAME_END
    
    
    HEALTH_PICKUP:
    ; Pickup helath found
    ADD.B #10, (A1)
    RTS ;returns to where health pickup was called and implements the next line of code
    
    GAME_END:
    ;Game Over 
    MOVE.B #$00,(A1)
    MOVE.B #$00,(A2)


    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
