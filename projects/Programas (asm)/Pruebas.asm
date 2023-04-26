@SCREEN  //@16384 se carga a A
D=A // D=16384
@cursor // bit de memoria ram 16
M=D // guarda en 16 M=16384
@SCREEN // @32 se carga a A
D=A // D=32
@cursor1 // bit de memoria ram 17
M=D // guarda en 17 M=32
@32 // @32 se carga a A
D=A // D=32
@linea // bit de memoria ram 18
M=D // guarda en 18 M=32
@16 // @16 se carga a A 
D=A // D=16 
@altura // bit de memoria ram 19
M=D

@cursor 
D=M
A = D 
M = -1
@altura
D=M // D=16 (Linea actual)
D=D-1 // Cantidad de lineasa faltantes
@altura
M=D // Carga las lineas que faltan
(contador)
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
@contador 
D;JNE  // Si el valor de D!=0 ejecuta nuevamente desde la etiquta contador

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

(END)
@END
0;JMP