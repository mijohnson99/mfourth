: SEARCH-WORDLIST ( search_wordlist ) ( c-addr u wid -- 0 | xt +/-1 )
	@
	BEGIN DUP 0<> WHILE
		>R
		2DUP DUP
		R@ LINK>NAME
		ROT OVER = IF1
			COMPARE 0= IF2
				2DROP DROP
				R> LINK>XT
				DUP 1- @ IMMEDIACY AND
				IF3 1 ELSE3 -1 THEN3
				EXIT
			THEN2
		ELSE1
			2DROP
		THEN1
		R> @
	REPEAT
	2DROP DROP 0
;
