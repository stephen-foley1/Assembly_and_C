*-----------------------------------------------------------
* Title      :Part 5
* Written by :Stephen Foley
* Date       :14/2/24
* Description:
*-----------------------------------------------------------
 ORG $1000
;D0 used for trap codes, An counting enemies 

;D1 used for player health 

;D2 used for enemy positions 

;D4 used for enemy count 

;A0 for counting enemies 

;A2 for progress messages 

;A3 used for player_x 

;A4 used for Enemy_positions 

DAMAGE EQU 10		            ;damage when collisions occur 

 

START: 
    LEA PLAYER_X, A2 		    ;player will move along x axis 
    LEA ENEMY_POSITIONS, A3	    ;Enemy positions or spawn points 
    BRA GAME_LOOP
 
GAME_LOOP: 
    BSR 		COUNT_ENEMIES	;size of enemy_positions array 
    MOVE.B  	D0,D4			    ;reset enemy count at beginning of loop 
    
    LEA		MSG_GAMELOOP, A1	;Load and Draw Game loop Message 
    BSR		DRAW 
    
    BSR 	UPDATE		        ;call Update 
	BRA		GAME_LOOP		    ;call GAME_LOOP 
	
UPDATE: 

    MOVE.B	PLAYER_HEALTH, D1	;Move player health into D1 

    LEA 		MSG_HEALTH, A1	; Load and draw Health Message 
    BSR 		DRAW 
    
    MOVE.B 	#3, D0			    ; Display signed number in D1.L in decimal smallest field 
    TRAP 	#15 

    LEA		CRLF, A1		    ;load and carriage return and line feed    
    BSR 		DRAW 

 

    CMP		#0, D1			    ;check if health is 0 
    BLE		GAME_OVER		    ;Game Over 
    ADD.L 	#1, (A2)		   	;Change X position of player 
    BSR		COLLISION		    ;Check for collisions with enemies 
    BSR     POWER_UP
    RTS     

 

DRAW: 
    MOVE.B	#13, D0 
    TRAP		#15 
    RTS 
    
POWER_UP:
    MOVE.B #1, D6
    LEA     MSG_POWERUP, A1
    LEA     POWER_UPS, A3
    BNE		ITERATE	
    BRA     GAME_LOOP
    
COLLISION: 

    MOVE.B	#1,	D5		        ;loop through array 
    LEA		ENEMY_POSITIONS, A3	; Load enemy_positions Array 

ITERATE: 
    CMP		D5, D4			    ;Counter for enemy positions 
    ADD.B 	#1, D5			    ;Subtract 1 
    BEQ		GAME_LOOP		    ;If 0 go into game loop 
    BNE		CHECK_ENEMIES	    ;If not check for enemy collision 
    RTS 

CHECK_ENEMIES: 
    MOVE.L	(A3)+, D2		    ;Move enemies position to D2 
    MOVE.L	(A2),D3		        ;Move player position to D3 
 
    CMP.L	D2, D3			    ;Compare Player and Enemy position 
    BEQ 	REDUCE_HEALTH	    ;If Equal reduce health 
    BNE		ITERATE		        ;iterate to next enemy 

REDUCE_HEALTH: 

    LEA 	MSG_COLLISION, A1	;Load and draw collision Msg 
    BSR		DRAW 

    SUB.B   #DAMAGE, PLAYER_HEALTH	
    
    LEA     MSG_DAMAGE, A1		    ;load and draw damage msg 
    BSR 	DRAW 
    
    BRA 		GAME_LOOP 

       
GAME_OVER: 
    LEA		MSG_GAMEOVER, A1 
    BSR		DRAW 
    SIMHALT 

COUNT_ENEMIES: 
    MOVE.B 	#0, D0 			        ; Initialise counter to 0 
    LEA 		ENEMY_POSITIONS, A0	;Load the address of the array into 0 

COUNT_ENEMIES_LOOP: 
    TST.L		(A0)+			;Test the byte at the address in A0 (check if 0) and increment A0 
    BEQ 		END_COUNTING	;If the byte is zero it’s the end of the array 
    
    ADD.B	#1, D0			    ; Increment the counter 
    BRA	COUNT_ENEMIES_LOOP	    ;Repeat the loop 

END_COUNTING: 
    RTS 

PLAYER_X		    DC.L	1 
PLAYER_HEALTH		DC.B	100 
MSG_HEALTH          DC.B    'Health : ',0
MSG_GAMELOOP        DC.B    'Game Loop',0
MSG_COLLISION       DC.B    'Collision',0
MSG_GAMEOVER        DC.B    'Game Over',0
MSG_DAMAGE          DC.B    'Taking Damage',0
MSG_POWERUP         DC.B    'You got a Power Up',0
POWER_UPS           DC.L    10, 55, 220, 240,280,300,320,340,360,380,400, 0 ; Terminate Array with a 0
CRLF		        DC.B 	$0D, $0A, 0 
ENEMY_POSITIONS	    DC.L	20, 30, 40, 50, 60, 70, 80, 90, 200, 300, 500, 0	;Terminate the array with 0 

 

    END 	START 



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
