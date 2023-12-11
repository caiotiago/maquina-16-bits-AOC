// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.

//// Replace this comment with your code.
(CAIO)
@KBD
D=M
@INGRID
D;JEQ
@8191
D=A
@i //variavel pra iterar sobre os bits da tela pra empretar
M=D // i <- 8191
(LOOP)
@i // a <- endereço de i
D=M // D <- 8191 ... 8190... 8189...
@SCREEN 
A=A+D //
M=-1
@i
M=M-1 // decrementando o m pro loop acabar
D=M
@LOOP
D;JLT
@CAIO
0;JEQ
(INGRID)
@8191
D=A
@i //variavel pra iterar sobre os bits da tela pra empretar
M=D // i <- 8191
(LOOP)
@i // a <- endereço de i
D=M // D <- 8191 ... 8190... 8189...
@SCREEN 
A=A+D //
M=0
@i
M=M-1 // decrementando o m pro loop acabar
D=M
@LOOP
D;JLT
@CAIO
0;JEQ