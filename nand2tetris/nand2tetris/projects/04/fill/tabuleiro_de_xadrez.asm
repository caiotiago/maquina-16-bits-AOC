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

@128
D=A 
@maxbloco
M=D

@4
D=A 
@maxlinha
M=D

@linha
M=0

(INGRID)
@max
D=M
@linha
D=D-M
@GIULIA
D;JEQ
@dhominicontacaios
M=0
@i
M=0
    (CAIO)
    @linha
    D=M
    @SCREEN
    A=A+D
    M=0
    @linha
    M=M+1
    @maxlinha
    D=M
    @dhominicontacaios
    M=M+1
    D=D-M
    @CAIO
    D;JGT

    @dhominicontacaios
    M=0
    (CAIODOIS)
    @linha
    D=M
    @SCREEN
    A=A+D
    M=-1
    @linha
    M=M+1
    @maxlinha
    D=M
    @dhominicontacaios
    M=M+1
    D=D-M
    @CAIODOIS
    D;JGT
    @dhominicontacaios
    M=0

    @maxbloco
    D=M
    @i
    M=M+1
    D=D-M
    @INGRIDDOIS
    D;JEQ

    @CAIO
    0;JMP

(INGRIDDOIS)
@i
M=0
    (DESIREE)
    @linha
    D=M
    @SCREEN
    A=A+D
    M=-1
    @linha
    M=M+1
    @maxlinha
    D=M
    @dhominicontacaios
    M=M+1
    D=D-M
    @DESIREE
    D;JGT
    @dhominicontacaios
    M=0

    (DESIREEDOIS)
    @linha
    D=M
    @SCREEN
    A=A+D
    M=0
    @linha
    M=M+1
    @maxlinha
    D=M
    @dhominicontacaios
    M=M+1
    D=D-M
    @DESIREEDOIS
    D;JGT
    @dhominicontacaios
    M=0

    @maxbloco
    D=M
    @i
    M=M+1
    D=D-M
    @INGRID
    D;JEQ

    @DESIREE
    0;JMP

(GIULIA)
@GIULIA
0;JMP