
	@	Put the required header information here

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	    @ Load startval -> R2
	LDR	R3, =endval	    @ get addr of endval
	LDR	R3, [R3]	    @ Load endval -> R3
	@-------------
	@ Your code begins here
	@ Your code must put the final answer
	@ in R1.
	@-------------

    MOV R1, #0
loop:
    CMP R3, R2
    ADD R1, R1, R2
    ADD R2, R2, #1
    BGT loop





	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}

.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
