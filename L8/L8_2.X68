
        ORG    $8000
START   LEA	$7000,SP
	MOVE #100,-(SP) ;X = 1, Y = 2, Z = 3, W expected to equal 10
        MOVE #100,-(SP)
        MOVE #100,-(SP)
        MOVE.L  #$FFFFF,D2              

        JSR  SQUAD
	LEA 6(SP),SP
        TRAP #14        
 
SQUAD   MOVEM.L D2-D7/A0-A5,-(SP)
        MOVE 12(SP),D1
        MOVE 10(SP),D2
       
        MULS D1,D2
        MULS D1,D1
        MULS #5,D1
        MULS #2,D2
        
        SUB D2,D1
        
        MOVE 8(SP),D2
        MULS D2,D2
        ADD D2,D1
        
        MOVEM.L (SP)+,D2-D7/A0-A5
        RTS

        END    START

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
