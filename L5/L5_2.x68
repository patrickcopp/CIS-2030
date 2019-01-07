*Lab5_2.x68: Signed and Unsigned Branches
	 
	  ORG	     $8000
START	MOVE.B	#%11110000,D0
	MOVE.B	#%00000001,D1
	CMP.B	D0,D1
	BHI	LABEL1
	
LABEL1	BHI	LABEL2
	MOVE.B	#$65,D0		      
	NOP
LABEL2	TRAP     #14
	END      START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~12~
