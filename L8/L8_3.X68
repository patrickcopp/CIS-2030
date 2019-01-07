
        ORG    $8000
START	PEA X
        PEA Y
        PEA Z
        PEA W
        
        JSR QUAD
        LEA 16(SP),SP
    
        TRAP #14          
  
QUAD    MOVEM.L D0-D1/A0-A3,-(SP)

        MOVEA.L 40(SP),A0      
        MOVEA.L 36(SP),A1
        MOVEA.L 32(SP),A2      
        MOVEA.L 28(SP),A3
        
        MOVE (A0),D0
        MOVE (A1),D1
        
        MULS D0,D1
        MULS (A0),D0
        
        MULS #5,D0
        MULS #4,D1
        
        SUB D1,D0
        
        MOVE (A2),D1
        MULS D1,D1        
        ADD.L D1,D0
        MOVE D0,(A3)
	MOVE.L D0,D5
        
        MOVEM.L (SP)+,D0-D1/A0-A3
        RTS
        
        ORG     $9000
        
X       DC.W    20
Y       DC.W    -4
Z       DC.W    -7
W       DS.L    0
      
        END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
