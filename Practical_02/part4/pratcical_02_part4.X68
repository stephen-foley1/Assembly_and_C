*-----------------------------------------------------------
* Title      :PART 4
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

* Put program code her
    MOVE.L #254,  D0 ; Move Long value 254 to D0
    MOVE.L #$FA,  D1
    MOVE.L #%110, D2
    
    
    MOVE.L D0, $3000 ; Move long data  reg to mem location 3000
    MOVE.L D1, $3010
    MOVE.L D2, $3020
    
    MOVE.W #254 , $3020 ;Move word value 254 to mem location 3020
    MOVE.W #$FA , $3010
    MOVE.W #%100, $3000
    
    MOVE.W D0, $3000 ; Move word data  reg to mem location 3000
    MOVE.W D1, $3010
    MOVE.W D2, $3020
    
    
    MOVE.B #254, $3020 ;move byte value 254 to mem loaction 3020  
    MOVE.B #$FA, $3010
    MOVE.B #%110, $3000
    
    MOVE.B D0, $3000 Move byte data  reg to mem location 3000
    MOVE.B D1, $3010
    MOVE.B D2, $3020
  
    

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
