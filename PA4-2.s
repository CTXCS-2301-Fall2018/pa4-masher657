	@ Factorial
	@ Put the required header information here

	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	LDR	R0, =prompt	@ Get address of prompt
	BL	printf		@ Print prompt to screen
	LDR	R0, =in		@ Get addr of input format string
	LDR	R1, =n		@ Get addr of n
	BL	scanf		@ Put value in n using scanf
	LDR	R0, =n		@ Addr of n into R0
	LDR	R0, [R0]	@ n is now in R0
	@-------------
	@ Your code goes here.  Put n! in R2
	@-------------
    MOV R1, #1
    MOV R2, R0

loop:
    SUB R3, R0, R1    @ subtracts R0(n) from R1 and stores in R3
    ADD R1, R1, #1    @ adds 1 to R1
    MUL R2, R2, R3    @ multiplies R0 and R3 and stores in R2
    CMP R0, R1        @compares R0(n) and R1
    BGT loop

odd:
    CMP R0, #0
    MOVEQ R2, #1
    CMP R0, #1
    MOVEQ R2, #1




	@-------------
	@ Do NOT alter code past this line.
	@-------------
	MOV	R1, R2
	LDR	R0, =out
	BL 	printf
	POP	{PC}

.data
n:	.word 0
prompt:	.asciz "Enter n: "
in:	.asciz "%d"
out:	.asciz "factorial is: %d\n"

