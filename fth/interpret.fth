: INTERPRET ( interpret ) ( i*x -- j*x )
	BEGIN
		PARSE-NAME
		DUP
	WHILE
		INTERPRET-NAME
	REPEAT
	2DROP
;
