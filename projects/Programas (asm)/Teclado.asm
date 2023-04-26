             
@130  
D=A
@left
M=D
//crear la constante arriba
@131  
D=A
@up
M=D
//crear la constante arriba
@132  
D=A
@rigth
M=D
//crear la constante arriba
@133  
D=A
@down
M=D
(teclado)
@movimiento
M=0
@KBD
D=M
@up //verificar tecla UP
D=D-M
@goUp
D;JEQ
@KBD
D=M
@down //verificar tecla DOWN
D=D-M
@goDown
D;JEQ
@KBD
D=M
@rigth //verificar tecla RIGTH
D=D-M
@goRigth
D;JEQ
@KBD
D=M
@left //verificar tecla LEFT
D=D-M
@goLeft
D;JEQ
@teclado
0;JMP
(goUp)
@1
D=A
@movimiento
M=D 
@teclado
0;JMP
(goDown)
@2
D=A
@movimiento
M=D 
@teclado
0;JMP
(goRigth)
@3
D=A
@movimiento
M=D 
@teclado
0;JMP
(goLeft)
@4
D=A
@movimiento
M=D 
@teclado
0;JMP