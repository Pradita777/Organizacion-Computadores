@SCREEN  //@16384 se carga a A
D=A // D=16384
@cursor // bit de memoria ram 16
M=D // guarda en 16 M=16384

@SCREEN // @32 se carga a A
D=A // D=32
@cursor1 // bit de memoria ram 17
M=D // guarda en 17 M=32

@16385
D=A 
@cursor11
M=D 

@16385
D=A 
@cursor2
M=D 

@512
D=A 
@dist
M=D

@480
D=A 
@dist1
M=D 

@0
D=A 
@divisor 
M=D

@32 // @32 se carga a A
D=A // D=32
@linea // bit de memoria ram 18
M=D // guarda en 18 M=32

@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D // guarda en 19 M=16

@130  
D=A
@left
M=D
//crear la constante izquierda = 4
@131  
D=A
@up
M=D
//crear la constante arriba = 1
@132  
D=A
@rigth
M=D
//crear la constante derecha = 3
@133  
D=A
@down
M=D
//crear la constante abajo = 2

@cursor 
D=M
A = D 
M = -1
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D // Carga las lineas que faltan
(pintar)
@cursor2
D=M 
@linea
D=D+M
@cursor2
M=D
@cursor
D=M 
@linea
D=D+M
@cursor
M=D
@cursor 
D=M 
A = D 
M = -1
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D 
@pintar 
D;JNE  // Si el valor de D!=0 ejecuta nuevamente desde la etiquta contador
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D // guarda en 19 M=16


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
@cursor
D=M
A=D  
M=0
@linea
D=D-M 
@cursor
M=D
@cursor2 
D=M
A=D  
M=0
@linea
D=D-M 
@cursor2
M=D
@cursor1
D=M 
@linea 
D=D-M 
@cursor1
M=D
@cursor11
D=M 
@linea 
D=D-M 
@cursor11
M=D
@cursor
D=M  
A=D  
D=M 
@cursor1 
A=M 
M=D 
@cursor2 
D=M 
A=D  
D=M 
@cursor11
A=M 
M=D 
@teclado
0;JMP

(goDown)
@cursor1
D=M
A=D  
M=0
@linea
D=D+M 
@cursor1
M=D
@cursor11
D=M
A=D  
M=0
@linea
D=D+M 
@cursor11
M=D
@cursor
D=M 
@linea 
D=D+M 
@cursor
M=D
@cursor2
D=M 
@linea 
D=D+M 
@cursor2
M=D
@cursor1 
D=M 
A=D  
D=M 
@cursor 
A=M 
M=D 
@cursor11 
D=M 
A=D  
D=M 
@cursor2 
A=M 
M=D 
@teclado
0;JMP 

(goRigth)
@cursor1
D=M 
A=D
D=M
D=D+M 
M=D 
@cursor1
D=M 
@linea 
D=D+M
@cursor1
M=D
@altura 
D=M
D=D-1 
@altura
M=D 
@goRigth 
D;JNE
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D
@cursor11
D=M 
A=D
D=M
@goRigthD0
D;JEQ 
(goRigth1)
@cursor11
D=M 
A=D
D=M+1 
D=D+M 
M=D 
@cursor11
D=M 
@linea 
D=D+M
@cursor11
M=D 
@altura 
D=M
D=D-1 
@altura
M=D 
@goRigth1 
D;JNE
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D
@cursor1
D=M  
@dist 
D=D-M
@cursor1
M=D
@cursor11
D=M  
@dist 
D=D-M
@cursor11
M=D
@teclado
0;JMP
(goRigthD0)
@cursor11 
D=M
A = D 
M = 1
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D // Carga las lineas que faltan
(pintarD)
M=D
@cursor11
D=M 
@linea
D=D+M
@cursor11
M=D
@cursor11
D=M 
A = D 
M = 1
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D 
@pintarD
D;JNE  // Si el valor de D!=0 ejecuta nuevamente desde la etiquta contador
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D
@cursor1
D=M  
@dist 
D=D-M
@cursor1
M=D
@cursor11
D=M  
@dist1 
D=D-M
@cursor11
M=D
@teclado
0;JMP


(goLeft)
(Division)
@divisor
D=M-1
M=D
@divisor
D=M 
D=D+M
@cursor1
A=M 
D=D-M
@Division  
D;JNE
@divisor
D=M
@cursor1
A=M
M=D 
@0
D=A 
@divisor 
M=D
@cursor1
D=M 
@linea 
D=D+M
@cursor1
M=D
@altura 
D=M
D=D-1 
@altura
M=D 
@goLeft
D;JNE
@16 
D=A 
@altura 
M=D
@0
D=A 
@divisor 
M=D
(goLeft1)
@cursor11
A=M
D=M-1
@desmarcar
D;JEQ
(Division1)
@divisor
D=M+1
M=D  
@divisor
D=M+1 
D=D+M
@cursor11
A=M 
D=D-M
@Division1
D;JNE
@divisor
D=M
@cursor11
A=M
M=D 
@0
D=A 
@divisor 
M=D
@cursor11
D=M 
@linea 
D=D+M
@cursor11
M=D
@altura 
D=M
D=D-1 
@altura
M=D 
@goLeft1
D;JNE
@16 
D=A 
@altura 
M=D
@cursor1
D=M 
@dist 
D=D-M
@cursor1
M=D
@cursor11
D=M 
@dist 
D=D-M
@cursor11
M=D
@teclado
0;JMP
(desmarcar)
@cursor11 
D=M
A = D 
M = 0
@altura
D=M 
D=D-1 
@altura
M=D 
(pintar2)
@cursor11
D=M 
@linea
D=D+M
@cursor11
M=D
@cursor11 
D=M 
A = D 
M = 0
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D 
@pintar2 
D;JNE  // Si el valor de D!=0 ejecuta nuevamente desde la etiquta contador
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D // guarda en 19 M=16
@cursor11
D=M  
@dist1 
D=D-M
@cursor11
M=D
@teclado
0;JMP
 


(fin)
@fin
0;JMP