: IF ( if )
	DOLIT 0BRANCH , MARK>
; IMMEDIATE
: ELSE ( else )
	DOLIT BRANCH , MARK>
	SWAP RESOLVE>
; IMMEDIATE
: THEN ( then )
	RESOLVE>
; IMMEDIATE
