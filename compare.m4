m4_forthword(`COMPARE-#',compare_n,
	m4_BEGIN_WHILE_REPEAT(`DUP,ZGTE',`
		TO_R,
		OVER,CHARFETCH,OVER,CHARFETCH,SUB,
		PUSH(1),MIN,PUSH(-1),MAX,
		DUP,ZNEQ,m4_IF(`
			RDROP,NIP,NIP,EXIT
		'),
		DROP,
		INCR,SWAP,INCR,SWAP,
		R_FROM,DECR
	'),
	TWO_DROP,
	PUSH(0),EXIT
)
m4_forthword(`COMPARE',compare,
	ROT,SWAP,
	TWO_DUP,MIN,
	UNROT,TO_R,TO_R,
	COMPARE_N,
	DUP,m4_IF(`
		RDROP,RDROP,
		EXIT
	'),
	R_FROM,R_FROM,SUB,
	PUSH(1),MIN,PUSH(-1),MAX,
	EXIT
)