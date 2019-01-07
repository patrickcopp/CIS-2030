*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:  MOVE    X,D0
	LEA	$7000,SP
        JSR     SOLVEQUAD
        TRAP    #14


SOLVEQUAD   MOVE    D0,D3
            MULS    D0,D0
            MULS    #5,D0
            MULS    #-2,D3
            ADD.L   D3,D0
            ADDI.L  #6,D0
            MOVE.L  D0,D1
            RTS

;could use -(A7) then (A7)+ to hold
* Put program code here


X   DC.W    -100

    END    START        ; last line of source
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
