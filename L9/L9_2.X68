


	ORG	$8500
hi	DC.B	'hElLo',0

	ORG	$9000
START	MOVEA.L	#hi,A1
	TRAP	#6
	MOVE.B	#$0A,D0
	TRAP	#1

	TRAP	#5
	END	START


	ORG	$9500
TRAP6	MOVEM.L	D0-D1/A1,-(SP)
LOOP	CMPI.B	#0,(A1)
	BEQ	EXIT
	MOVE.B	(A1)+,D0
	MOVE.B	D0,D1
	SUBI.B	#$20,D1
	CMPI.B	#$77,D1
	BGE	LOWER
	BRA	TOUPPER
LOWER	TRAP	#1
	BRA	LOOP
EXIT	MOVEM.L	(SP)+,D0-D1/A1
	RTE

TOUPPER	SUBI.B	#$20,D0
	BRA	LOWER


	ORG	$802A
	JMP	TRAP6
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
