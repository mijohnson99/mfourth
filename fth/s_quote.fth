: S" ( s_quote )
	34 PARSE
	STATE @ IF
		( POSTPONE ) SLITERAL
	ELSE
		2>R PAD 2R> TUCK
		PAD SWAP CMOVE
	THEN
; IMMEDIATE
