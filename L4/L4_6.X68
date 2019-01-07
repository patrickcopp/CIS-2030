*L4_6.x68     

	ORG	$8000
START  	MOVE.L	A,D0
	MOVE.L	B,D1
	MOVE.L	C,D2

	CMP.L	D0,D1
	BGE	ELSEIF
	CMP.L	D1,D2
	BGE	ELSEIF
	BRA	BIG1	
	
ELSEIF	CMP.L	D1,D0
	BGE	BIG3
	CMP.L	D1,D2
	BGE	BIG3
	BRA	BIG2



BIG1	MOVE.L	D0,D6
	BRA	EXIT

BIG2	MOVE.L	D1,D6
	BRA	EXIT


BIG3	MOVE.L	D2,D6
	BRA	EXIT

	



EXIT	TRAP	#14



	ORG	$9000		
A	DC.L	-50
B	DC.L	-56
C	DC.L	-150
	
	END	START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~12~
