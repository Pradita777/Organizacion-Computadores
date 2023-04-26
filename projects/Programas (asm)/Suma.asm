// Suma dos números y almacena el resultado en R0

// Carga el primer número en R0

@R0
M=-1

// Carga el segundo número en R1


@R1
M=-1

// Suma los dos números y almacena el resultado en R0
@R0
D=M
@R1
D=D+M 
@R0
M=D

// Bucle infinito para finalizar el programa
(END)
@END
0;JMP

