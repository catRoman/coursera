// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.
//
// Pseudo-code
// i = 1
// n = R1
// sum = 0
// LOOP:
//	IF(i > n) goto STOP
//	sum = sum + R1
//	i++
//	goto LOOP
// STOP:
// R2 = sum

//variables
//i=0
@i
M=1

//sum=0
@sum
M=0

//n=R1
@R1
D=M
@n
M=D

(LOOP)
//if (i > n)
@i
D=M
@n
D=D-M
@STOP
D;JGT

//sum += R0
@R0
D=M
@sum
M=M+D

//i++
@i
M=M+1

//goto LOOP
@LOOP
0;JMP

(STOP)
//R0=sum
@sum
D=M
@R2
M=D
//endless loop for termination
(END)
@END
0;JMP


