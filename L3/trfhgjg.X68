* L3_3.x68 example of program with assemble-time expression
	ORG	$8000

START	MOVE.W	W,D0
	MOVE.W	X,D1
	MOVE.B	Y,D2
	EXT.W	D2
	MULS	D0,D2
	DIVS	#3,D1
	EXT.L	D1
	ADD.L	D2,D1
	MOVE.L	D1,Z
	TRAP	#14

	ORG 	$9000
W	DC.W 	1
X	DC.W	3
Y	DC.B	1
Z	DC.L	0
	END	START*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
