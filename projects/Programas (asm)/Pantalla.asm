@SCREEN  //@16384 guarda el valor de mostrar por pantalla
D=A // D=16384
@cursor // bit de memoria ram 16
M=D 
@32 // @32 se carga a A
D=A // D=32
@linea // bit de memoria ram 17
M=D // guarda en 17 M=32// En 18 guarda 16
@16 
D=A 
@altura
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
(fin)
@fin
0;JMP