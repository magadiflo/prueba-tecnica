Algoritmo jugada_aciertos
	// Bolillas sacadas del bolillero
	Definir bolillas_bolillero Como Entero;
	Dimension bolillas_bolillero[6];
	bolillas_bolillero[1] = 1;
	bolillas_bolillero[2] = 2;
	bolillas_bolillero[3] = 3;
	bolillas_bolillero[4] = 4;
	bolillas_bolillero[5] = 5;
	bolillas_bolillero[6] = 6;
	
	// Jugada comprada
	Definir jugada Como Entero;
	Dimension jugada[7];
	jugada[1] = 1;
	jugada[2] = 2;
	jugada[3] = 6;
	jugada[4] = 12;
	jugada[5] = 20;
	jugada[6] = 22;
	jugada[7] = 30;
	
	// Apuestas (7) de la jugada (1) que participan en el sorteo
	definir columna como entero;
	definir jugada_index como entero;
	Definir apuestas Como Entero;
	Dimension apuestas[7, 6];
	
	jugada_index = 1;
	Para fila<-1 Hasta 7 Con Paso 1 Hacer //Para matríz de apuestas
		columna = 1; //Para la matríz de apuestas
		Para i<-1 Hasta 7 Con Paso 1 Hacer //Para arreglo de jugada
			Si i <> jugada_index Entonces
				apuestas[fila, columna] = jugada[i];
				columna = columna + 1;
			FinSi			
		Fin Para
		jugada_index = jugada_index + 1;
	Fin Para

	//  Calcular aciertos de la jugada
	definir aciertos como entero;
	Dimension aciertos[5];
	Definir coincidencias Como Entero;	
	Para num_apuesta_fila<-1 Hasta 7 Con Paso 1 Hacer //Cada fila de la matríz es una apuesta
		coincidencias = 0;			
		
		Para columna_apuesta<-1 Hasta 6 Con Paso 1 Hacer
			Para fila_bolillas_bolillero<-1 Hasta 6 Con Paso 1 Hacer //Para recorrer el arreglo de las bolillas del bolillero
				Si apuestas[num_apuesta_fila,columna_apuesta] = bolillas_bolillero[fila_bolillas_bolillero] Entonces
					coincidencias = coincidencias + 1;
				FinSi
			Fin Para			
		Fin Para
		
		Segun coincidencias Hacer
			caso 2:
				aciertos[1] = aciertos[1] + 1;
			caso 3: 
				aciertos[2] = aciertos[2] + 1;
			caso 4: 
				aciertos[3] = aciertos[3] + 1;
			caso 5: 
				aciertos[4] = aciertos[4] + 1;
			caso 6: 
				aciertos[5] = aciertos[5] + 1;				
		FinSegun		
		
	Fin Para
	
	// Mostando la cantidad de apuestas según el número de aciertos
	Para fila<-1 Hasta 5 Con Paso 1 Hacer
		escribir ConvertirATexto(fila + 1) + "° aciertos = " + ConvertirATexto(aciertos[fila]) + " apuestas";
	FinPara
	
	
FinAlgoritmo