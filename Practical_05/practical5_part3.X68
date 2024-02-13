*-----------------------------------------------------------
* Title      : Part 3
* Written by : Stephen Foley
* Date       : 14/02/24
* Description:
*-----------------------------------------------------------
    ORG     $1000 

DAMAGE  EQU     100 
START: 
GAME_LOOP: 
    LEA     MSG_GAME_LOOP, A1 
    MOVE.B  #13, D0 
    TRAP    #15 
    CMP.B   #0, PLAYER_HEALTH 
    BEQ     GAME_OVER  
    BSR     UPDATE  
    BSR     COLLISION_CHECK 
    BRA     GAME_LOOP 
UPDATE: 
    ADD.B   #1, PLAYER_POSITION 
    RTS     
COLLISION_CHECK: 
    MOVE.B  PLAYER_POSITION, D1 
    CMP.B   D2, D1 
    BEQ     COLLISION 
    RTS     
COLLISION: 
    SUB.B   #DAMAGE, PLAYER_HEALTH  
    BRA     GAME_LOOP 
GAME_OVER: 
    LEA     MSG_GAME_OVER, A1 
    MOVE.B  #13, D0 
    TRAP    #15 
    SIMHALT 

PLAYER_POSITION:   DC.B    10 
ENEMY_POSITION:    DC.B    50 
PLAYER_HEALTH:     DC.B    100 

MSG_GAME_LOOP      DC.B    'Game Loop........',0
MSG_GAME_OVER      DC.B    'Game Over!',0

    END     START 

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
