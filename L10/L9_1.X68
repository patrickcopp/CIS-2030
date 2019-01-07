
DUART    EQU      $C001		;68681 base addres
SRA      EQU      2           ;status register A
RBA      EQU      6           ;Tx buffer A
CR       EQU      $0D         ;ASCII carriage return
LF       EQU      $0A         ;ASCII line feed



	ORG      $8000
MESSAGE	MOVE.W   #10,D7      ;use D7 as counter
	MOVEA.L  #TEXT,A1    ;A1 ---> message
	JSR	OUTSTR      ;send it
	TRAP	#14

TEXT	DC.B     CR,LF,'Assembly language programming'
	DC.B     ' is fun',0


OUTCHR  MOVE.L	A0,-(A7)      		 ;save A0
	MOVE.W  D7,-(A7)      			 ;save D7
	MOVEA.L #DUART,A0      ;A0 points to 68681
OUTCHR2	MOVE.B	SRA(A0),D7     ;get port A status
	ANDI.B	#4,D7          ;buffer empty?
	BEQ	OUTCHR2        ;no:  check again
	MOVE.B	D0,RBA(A0)     ;yes: send char.
	MOVE.W 	(A7)+,D7       ;restore D7
	MOVE.L	(A7)+,A0       ;restore A0
	RTS
OUTSTR 	MOVE.L	D0,-(A7)       ;save D0 on stack
OUTSTR2	MOVE.B 	(A1)+,D0       ;get character
	BEQ	EXIT           ;if null byte, done
	BSR	OUTCHR         ;send
	BRA	OUTSTR2        ;repeat
EXIT	MOVE.L  (A7)+,D0       ;restore D0
	RTS
	END	MESSAGE
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~8~
