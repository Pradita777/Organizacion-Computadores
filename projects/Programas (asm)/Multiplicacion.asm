// Multiplica dos números y almacena el resultado en R0
// Carga el primer número en R0
@5
D=A
@R0
M=D
// Carga el segundo número en R1
@7
D=A
@R1
M=D
// Inicializa el contador y el acumulador
@5
D=A
@R2
M=D
@0
D=A
@R3
M=D
// Comienza el bucle de multiplicación
(LOOP)
// Si el contador llegó a cero, termina el bucle
@R2
D=M
@END
D;JEQ
// Suma el segundo número al acumulador
@R1
D=M
@R3
D=D+M
@R3
M=D
// Resta uno al contador
@R2
M=M-1
// Vuelve al comienzo del bucle
@LOOP
0;JMP
// Finaliza el programa
(END)
@END
0;JMP
// Datos
//(num1)  // Primer número
  //@5
  //D=A
//(num2)  // Segundo número
  //@7
  //D=A