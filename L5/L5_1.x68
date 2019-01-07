*Lab5_1.x68: Relative addressing

	ORG	$4030
START	BEQ  	HERE
	MOVE	#5,D0
	ORG	$4040
HERE	BNE	START
	TRAP	#14
	END	START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~12~
