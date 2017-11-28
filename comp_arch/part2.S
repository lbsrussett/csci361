	.globl binary_search
binary_search:

	// LOAD LOWER BOUND FROM BASE OF ARRAY
	LDUR X20, [X0, #0]
	// LOAD UPPER BOUND FROM END OF ARRAY
	LDUR X22, [X0, #112]
	// ADD UPPER AND LOWER BOUNDS
	ADD X27, X20, X22
	// DIVIDE THE SUM OF THE BOUNDS BY 2
	LSR X23, X27, #1
	// COMPARE SEARCH VALUE TO MID ARRAY VALUE
	CMP X2, X23
	// IF X2 == X23, EXIT
	B.EQ exit
	// IF X2 > X23 SEARCH TOP HALF OF ARRAY
	B.GT upperloop
	// IF X2 < X23 SEARCH BOTTOM HALF OF ARRAY
	B.LT lowerloop


lowerloop:
	CMP X20, X23
	//MOV X30, #13451
	MOV X29, #1
	MVN X29, X29 // MVN is a "not" logic instructions. Puts -1 in x30.
	MOV X0, X29
	B.EQ exit
	ADD X24, X20, X23
	SUB X24, X24, #1
	LSR X23, X24, #1
	CMP X2, X23
	MOV X29, X23
	MOV X0, X29
	B.EQ exit
	B.GT upperloop
	B.LT lowerloop


upperloop:
	CMP X22, X23
	//MOV X30, #13456
	MOV X29, #1
	MVN X29, X29
	MOV X0, X29
	B.EQ exit
	ADD X26, X23, X22
	ADD X26, X26, #1
	LSR X23, X26, #1
	CMP X2, X23
	MOV X29, X23
	MOV X0, X29
	B.EQ exit
	B.GT upperloop
	B.LT lowerloop

exit:
	BR	X30
