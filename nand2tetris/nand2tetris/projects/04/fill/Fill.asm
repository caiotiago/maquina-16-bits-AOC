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
@8192
D=A 
@max
M=D

(CAIO)
    @i
    M=0
    @KBD 
    D=M 
    @BRANCO
    D;JEQ
    (PRETO)
        @i
        D=M 
        @SCREEN 
        A=A+D
        M=-1
        @max
        D=M
        @i
        M=M+1
        D=D-M
        @PRETO
        D;JGT
    @CAIO
    0;JMP
    (BRANCO)
        @i
        D=M 
        @SCREEN 
        A=A+D
        M=0
        @max
        D=M
        @i
        M=M+1
        D=D-M
        @BRANCO
        D;JGT
    @CAIO
    0;JMP