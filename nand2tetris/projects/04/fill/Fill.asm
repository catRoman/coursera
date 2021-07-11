// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// pseudo-code
//
// KBD;			RAM[24576]
// screen[8191]  	RAM[16384](SCREEN)
// LOOP:
//	i = 0
// 	IF ( KBD >= 0) goto PRESSED
//	goto CLEAR
//	CLEAR:
//		IF (i > 8191) goto LOOP
//		screen[i] = false
//		i++
//		got CLEAR
//	PRESSED:
//		IF (i > 8191) goto LOOP
//		screen[i] = true
//		i++
//		goto PRESSED

//main loop
(LOOP)
//i=0
@i
M=0
//screenarray
@SCREEN
D=A
@arr
M=D
//screenEnd = 8191
@8191
D=A
@end
M=D
//IF (KBD > 0) gotto PRESSED
@KBD
D=M
@PRESSED
D;JGT
//goto CLEAR
@CLEAR
0;JMP

//clear screen loop
(CLEAR)
//if (i >= end) got LOOP
@i
D=M
@end
D=D-M
@LOOP
D;JGT

//screen[i] = false
@arr
D=M
@i
A=D+M
M=0
//i++
@i
M=M+1
//goto CLEAR
@CLEAR
0;JMP

//pressed screen loop
(PRESSED)
//if (i >= end) got LOOP
@i
D=M
@end
D=D-M
@LOOP
D;JGT

//screen[i] = false
@arr
D=M
@i
A=D+M
M=-1
//i++
@i
M=M+1
//goto PRESSED
@PRESSED
0;JMP
 




