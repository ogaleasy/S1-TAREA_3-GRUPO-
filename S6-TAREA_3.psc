// Operaciones con numeros
Funcion calcularCostoColas(cantidad)
    Definir costoPorUnidad Como Real
    Definir costoTotal Como Real
    Definir iva Como Real
    
    Si cantidad > 23 Entonces
        costoPorUnidad = 0.5  // Precio por unidad si son más de 23 colas
	SiNo
        costoPorUnidad = 0.5 * 1.2  // Precio por unidad con 20% de aumento si son 23 o menos colas
    FinSi
    
    costoTotal = cantidad * costoPorUnidad
    iva = costoTotal * 0.12  // Calcula el 12% del IVA
    
    Escribir "Cantidad comprada: ", cantidad
    Escribir "Costo por unidad: $", costoPorUnidad
    Escribir "Total sin IVA: $", costoTotal
    Escribir "IVA: $", iva
    Escribir "Total a pagar: $", costoTotal + iva
FinFuncion

Funcion ganancia = calcularGananciaUva(tipo, tamaño)
    Definir precioInicial Como Real
    Definir ganancia Como Real
    
    Si tipo = "A" Entonces
        Si tamaño = 1 Entonces
            precioInicial = 20  // Precio inicial para tipo A, tamaño 1
		SiNo
            precioInicial = 30  // Precio inicial para tipo A, tamaño 2
        FinSi
	SiNo
        Si tamaño = 1 Entonces
            precioInicial = 30  // Precio inicial para tipo B, tamaño 1
		SiNo
            precioInicial = 50  // Precio inicial para tipo B, tamaño 2
        FinSi
    FinSi
    
    ganancia = precioInicial  // La ganancia es igual al precio inicial
FinFuncion

Funcion residuo = obtenerResiduo(dividendo, divisor)
    Definir cociente Como Real
    Definir residuo Como Real
    
    cociente = dividendo / divisor  // Calcula el cociente
    //residuo = (dividendo - cociente) * divisor  // Calcula el residuo
	residuo = dividendo - (cociente * divisor) // Calcula el residuo
FinFuncion

Funcion calcularCostoConsulta(numeroCita)
    Definir costoConsulta Como Real
    Definir montoTratamiento Como Real
    
    Si numeroCita <= 3 Entonces
        costoConsulta = 200.00  // Las tres primeras citas a $200.00 c/u
    Sino Si numeroCita <= 5 Entonces
			costoConsulta = 150.00  // Las siguientes dos citas a $150.00 c/u
		Sino Si numeroCita <= 8 Entonces
				costoConsulta = 100.00  // Las tres siguientes citas a $100.00 c/u
			Sino
				costoConsulta = 50.00  // Las restantes a $50.00 c/u mientras dure el tratamiento
			FinSi
		FinSi
	FinSi
	
	montoTratamiento = costoConsulta * numeroCita
	
	Escribir "Costo de la consulta: $", costoConsulta
	Escribir"Monto pagado por el tratamiento: $", montoTratamiento
FinFuncion

Funcion esDivisor = verificarRelacionesNumericas(num1, num2, num3, num4)
    Definir mitad Como Real
    Definir esDivisor Como Logico
    
    mitad = num2 / 2
    
    Si num1 == mitad Entonces
        Escribir("El número 1 es la mitad del número 2.")
    Sino
        Escribir("El número 1 no es la mitad del número 2.")
    FinSi
    
    Si num4 % num3 == 0 Entonces
        esDivisor = Verdadero
    Sino
        esDivisor = Falso
    FinSi
FinFuncion

Funcion nuevoLimite = calcularNuevoLimite(tipoTarjeta)
    Definir aumentoPorcentaje Como Real
    Definir nuevoLimite Como Real
    
    Segun tipoTarjeta Hacer
		Caso 1:
			aumentoPorcentaje = 25  // Aumento del 25% para tarjeta tipo 1
		Caso 2:
			aumentoPorcentaje = 35  // Aumento del 35% para tarjeta tipo 2
		Caso 3:
			aumentoPorcentaje = 40  // Aumento del 40% para tarjeta tipo 3
		De Otro Modo:
			aumentoPorcentaje = 50  // Aumento del 50% para cualquier otro tipo
	FinSegun
	
	nuevoLimite = aumentoPorcentaje / 100 * 20  // Aumento del porcentaje más $20 adicionales
FinFuncion

Funcion verificarDivisibilidadYRelacion(num1, num2, num3, num4)
	Definir esDivisor Como Logico
	Definir esDoble Como Logico
	
	// Verifica si el número 1 es divisor del número 3
	Si num3 % num1 == 0 Entonces
		esDivisor = Verdadero
	Sino
		esDivisor = Falso
	FinSi
	
	// Verifica si el número 2 es el doble del número 4
	Si num2 == num4 * 2 Entonces
		esDoble = Verdadero
	Sino
		esDoble = Falso
	FinSi
	
	Si Divisor Entonces
		Escribir "El número 1 es divisor del número 3."
	Sino
		Escribir "El número 1 no es divisor del número 3."
	FinSi
	
	Si Doble Entonces
		Escribir "El número 2 es el doble del número 4."
	Sino
		Escribir "El número 2 no es el doble del número 4."
	FinSi
FinFuncion

Funcion aumento = calcularNuevoAumento(tipoTarjeta)
    Definir aumento Como Real
	
    // Determina el aumento según el tipo de tarjeta
    Segun tipoTarjeta Hacer
        Caso 1:
            aumento = 100
        Caso 2:
            aumento = 200
        Caso 3:
            aumento = 300
        De Otro Modo:
            aumento = 500
    FinSegun
	
    // Aplica el aumento del 10%
    aumento = aumento + (aumento * 0.10)
FinFuncion

Funcion evaluarNumero(numero)
    // Verifica si es negativo y menor que -20
    Si numero < -20 Entonces
        Escribir("El número es negativo y menor que -20.")
    Sino
		// Verifica si es positivo, par o impar y múltiplo de 7
        Si numero > 0 Entonces
            Si numero % 2 == 0 Entonces
                Escribir("El número es positivo y par.")
            Sino
                Si numero % 7 == 0 Entonces
                    Escribir("El número es positivo, impar y múltiplo de 7.")
                Sino
                    Escribir("El número es positivo e impar pero no es múltiplo de 7.")
                FinSi
            FinSi
        Sino
			// En caso de ser negativo y mayor o igual a -20
            Escribir("El número es negativo pero no es menor que -20.")
        FinSi
    FinSi
FinFuncion

Funcion precioFinal = calcularPrecioPitajaya(tipo, tamaño)
    Definir precioInicial Como Real
    Definir precioFinal Como Real
    Definir descuento Como Real
    Definir iva Como Real
	
    // Determina el precio inicial según el tipo y tamaño
    Si tipo == "Amarilla" Entonces
        Si tamaño == "1" Entonces
            precioInicial = 10
        Sino
            precioInicial = 10 + (10 * 0.15)
        FinSi
    Sino
        Si tamaño == "1" Entonces
            precioInicial = 10 - 20
        Sino
            precioInicial = 10 - (10 * 0.20)
        FinSi
    FinSi
	
    // Calcula el descuento del 5%
    descuento = precioInicial * 0.05
	
    // Calcula el precio final con el descuento
    precioFinal = precioInicial - descuento
	
    // Calcula el IVA del 12%
    iva = precioFinal * 0.12
	
	// Calcula el precio final
    precioFinal =  precioFinal + iva
FinFuncion

Funcion evaluarNumero2(numero)
    Si numero % 2 == 0 y numero < 10 Entonces
        Escribir("El número es par y menor que 10.")
    Sino
        Si numero < 0 Y numero % 2 == 0 Entonces
            Escribir("El número es negativo e impar.")
        Sino
            Si numero < 0 y numero % 5 == 0 Entonces
                Escribir("El número es negativo y divisible por 5.")
            Sino
                Escribir("El número no cumple ninguna de las condiciones.")
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion precioVenta = calcularPrecioVenta(clave, costoMateriaPrima)
    Definir costoManoObra Como Real
    Definir costoFabricacion Como Real
    Definir precioVenta Como Real
	
    // Calcula el costo de la mano de obra
    Si clave == 1 o clave == 5 Entonces
        costoManoObra = costoMateriaPrima * 0.80
    Sino
        Si clave == 2 o clave == 6 Entonces
            costoManoObra = costoMateriaPrima * 0.85
        Sino
            costoManoObra = costoMateriaPrima * 0.75
        FinSi
    FinSi
	
    // Calcula el costo de fabricación
    Si clave == 2 o clave == 5 Entonces
        costoFabricacion = costoMateriaPrima * 0.30
    Sino
        Si clave == 3 o clave == 6 Entonces
            costoFabricacion = costoMateriaPrima * 0.35
        Sino
            costoFabricacion = costoMateriaPrima * 0.28
        FinSi
    FinSi
	
    // Calcula el precio de venta
    precioVenta = costoMateriaPrima + costoManoObra + costoFabricacion
    precioVenta = precioVenta + (precioVenta * 0.45)
FinFuncion

Funcion cantidadDigitos = calcularCantidadDigitos(numero)
    Definir cantidadDigitos Como Entero
    cantidadDigitos = 0
	Para i = 1 Hasta Longitud(numero) Con Paso 1 Hacer
		cantidadDigitos = cantidadDigitos + 1
	Fin Para
FinFuncion

Funcion numeroInverso = esCapicua(numero)
	Definir numeroOriginal, numeroInvertido Como Entero
	Definir digito, resto Como Entero
	Definir numeroInverso Como Logico
	
	numeroOriginal = numero
	numeroInvertido = 0
	digito = 0
	
	Mientras numeroOriginal > 0 Hacer
		digito = numeroOriginal % 10
		numeroInvertido = numeroInvertido * 10 + digito
		numeroOriginal = numeroOriginal / 10
	FinMientras
	
	Si numeroOriginal == numeroInvertido Entonces
		numeroInverso = Verdadero  // Es capicúa
	Sino
		numeroInverso = Falso  // No es capicúa
	FinSi
FinFuncion

Funcion presentarDivisores(numero)
    Escribir "Los divisores de ", numero, " son: "
    Para divisor = 1 Hasta numero Hacer
        Si numero % divisor == 0 Entonces
            Escribir divisor
        FinSi
    FinPara
FinFuncion

Funcion suma = sumaDivisores(numero)
    Definir suma Como Entero
    suma = 0
	
    Para divisor = 1 Hasta numero Hacer
        Si numero % divisor == 0 Entonces
            suma = suma + divisor
        FinSi
    FinPara
FinFuncion

Funcion cantidad = contarDivisores(numero)
    Definir cantidad Como Entero
    cantidad = 0
	
    Para divisor = 1 Hasta numero Hacer
        Si numero % divisor == 0 Entonces
            cantidad = cantidad + 1
        FinSi
    FinPara
FinFuncion

Funcion esPerfecto = esNumeroPerfecto(numero)
	Definir sumaDeNumerosDivisores Como Entero
	Definir esUnNumeroPerfecto Como Logico
	
	sumaDeNumerosDivisores = 0
	
    Para divisor = 1 Hasta numero - 1 Hacer
        Si numero % divisor == 0 Entonces
            sumaDeNumerosDivisores = sumaDeNumerosDivisores + divisor
        FinSi
    FinPara
	
    Si sumaDeNumerosDivisores == numero Entonces
        esUnNumeroPerfecto = Verdadero  // Es un número perfecto
    Sino
        esUnNumeroPerfecto = Falso  // No es un número perfecto
    FinSi
FinFuncion

Funcion esPrimo = esNumeroPrimo(numero)
	Si numero <= 1 Entonces
        esPrimo = Falso  // Los números menores o iguales a 1 no son primos
		Sino Si numero <= 3 Entonces
				esPrimo = Verdadero  // 2 y 3 son primos
		Sino Si numero % 2 == 0 o numero % 3 == 0 Entonces
				esPrimo = Falso  // Los múltiplos de 2 y 3 no son primos
			FinSi
		FinSi
    FinSi
	
    Definir i Como Entero
    i = 5
    Mientras i * i <= numero Hacer
        Si numero % i == 0 o numero % (i + 2) == 0 Entonces
            esPrimo = Falso  // Si es divisible por algún número mayor a 3, no es primo
        FinSi
        i = i + 6
    FinMientras
	
    esPrimo = Verdadero  // Si no se encontraron divisores, es primo
FinFuncion

Funcion primo = _esPrimo(numero)
	Para i = 2 Hasta numero - 1 Con Paso 1 Hacer
		Si numero % i == 0 Entonces
			primo = Falso
		FinSi
	FinPara
	
	primo = Verdadero
FinFuncion

Funcion sonPrimosGemelos = sonNumerosPrimosGemelos(numero1, numero2)
	Definir primo1, primo2 Como Logico
	primo1 = _esPrimo(numero1)
	primo2 = _esPrimo(numero2)
	
    Si (primo1 Y primo2 Y Abs(numero1 - numero2) == 2) Entonces
        sonPrimosGemelos = Verdadero
    Sino
        sonPrimosGemelos = Falso
    FinSi
FinFuncion

Funcion suma = _sumaDivisores(numero)
    Definir suma Como Entero
    suma = 0
	
    Para divisor = 1 Hasta numero - 1 Hacer
        Si numero % divisor == 0 Entonces
            suma = suma + divisor
        FinSi
    FinPara
	
    suma = suma
FinFuncion

Funcion sonPrimosAmigos = sonNumerosPrimosAmigos(numero1, numero2)
	Definir sumaDivisores1, sumaDivisores2 Como Entero
	Definir primo1, primo2 Como Logico
	
	Si (_esPrimo(numero1) Y _esPrimo(numero2) Y _sumaDivisores(numero1) == _sumaDivisores(numero2)) Entonces
		sonPrimosAmigos = Verdadero
	Sino
		sonPrimosAmigos = Falso
	FinSi
FinFuncion

// Cadenas y Arreglos

Funcion presentarSecuencia(n)
    Definir respuesta Como Real
    respuesta = 2
    Para i = 1 Hasta n Hacer
        Escribir respuesta
        respuesta = respuesta * respuesta
    FinPara
FinFuncion

Funcion calcularPromedioParesImpares(arreglo, cantidadDeValoresArreglo)
    Definir sumaPares, sumaImpares Como Entero
    Definir promedioPares, promedioImpares Como Real
	
    sumaPares = 0
    sumaImpares = 0
	
    Para i = 1 Hasta cantidadDeValoresArreglo Hacer
        Si arreglo[i] % 2 == 0 Entonces
            sumaPares = sumaPares + arreglo[i]
        Sino
            sumaImpares = sumaImpares + arreglo[i]
        FinSi
    FinPara
	
	promedioPares = sumaPares / cantidadDeValoresArreglo
	promedioImpares = sumaImpares / cantidadDeValoresArreglo
	
    Escribir "El promedio de valores es: ", promedioPares
    Escribir "La suma de valores es: ", promedioImpares
FinFuncion

Funcion presentarSecuencia2(n)
    Definir respuesta Como Entero
	
    respuesta = 20
	
    Para i = 1 Hasta n Hacer
        Escribir respuesta
        Si i % 2 == 0 Entonces
            respuesta = respuesta - 5
        Sino
            respuesta = respuesta + 5
        FinSi
    FinPara
FinFuncion

Funcion _imprimirValoresArreglo(arreglo, longitudArreglo)
	Para i = 1 Hasta longitudArreglo Hacer
		Si arreglo[i] <> 0 Entonces
			Escribir arreglo[i]
		FinSi
	Fin Para
FinFuncion

Funcion copiarPositivosNegativos(arreglo, longitudArreglo)
	Definir contadorPositivo, contadorNegativo Como Entero
    Dimension arregloPositivo[longitudArreglo]
	Dimension arregloNegativo[longitudArreglo]
	
    contadorPositivo = 0
    contadorNegativo = 0
	
    Para i = 1 Hasta longitudArreglo Hacer
        Si arreglo[i] > 0 Entonces
            contadorPositivo = contadorPositivo + 1
            arregloPositivo[contadorPositivo] = arreglo[i]
		SiNo Si arreglo[i] < 0 Entonces
				contadorNegativo = contadorNegativo + 1
				arregloNegativo[contadorNegativo] = arreglo[i]
            FinSi
        FinSi
    FinPara
	
	Escribir "Los valores del arreglo original son: "
	_imprimirValoresArreglo(arreglo, longitudArreglo)
	
	Escribir "Los valores positivos del arreglo original son: "
	_imprimirValoresArreglo(arregloPositivo, longitudArreglo)
	
	Escribir "Los valores negativos del arreglo original son: "
	_imprimirValoresArreglo(arregloNegativo, longitudArreglo)
FinFuncion

Funcion procesarSecuencia(secuencia)
    Definir sumaPares, contMultiplos3 Como Entero
	
    sumaPares = 0
    contMultiplos3 = 0
    
    Mientras secuencia >= 0 Hacer
        Si secuencia % 2 == 0 Entonces
            sumaPares = sumaPares + secuencia
        FinSi
        
        Si secuencia % 3 == 0 Entonces
            contMultiplos3 = contMultiplos3 + 1
        FinSi
        
        // Leer el siguiente número de la secuencia
        Leer secuencia
    FinMientras
    
    Escribir "paresSuma = ", sumaPares
    Escribir "contMultiplos3 = ", contMultiplos3
FinFuncion

Funcion procesarSecuenciaYArreglo(longitudArreglo)
    Definir secuencia Como Entero
    Definir sumaCuadrados Como Entero
	Dimension arreglo[longitudArreglo]
	Dimension exponentes[longitudArreglo]
	
    sumaCuadrados = 0
    
	Para i = 1 Hasta longitudArreglo Hacer
		Escribir "Ingrese un numero para la secuencia, 0 para salir"
		Leer secuencia
		
		Si secuencia <> 0 Entonces
			// Agregar el número al arreglo
			arreglo[i] = secuencia
			exponentes[i] = secuencia^2
			// Sumar el cuadrado del número
			sumaCuadrados = sumaCuadrados + (secuencia * secuencia)
		FinSi
	Fin Para
    
    Escribir "arreglo = "
	_imprimirValoresArreglo(arreglo, longitudArreglo)
	
	Escribir "exponentes = "
	_imprimirValoresArreglo(exponentes, longitudArreglo)
	
    Escribir "respuestaSuma = ", sumaCuadrados
FinFuncion

Funcion procesarSecuencia2(longitudArreglo)
    Definir contMay5, sumaMultiplos5 Como Entero
	
    contMay5 = 0
    sumaMultiplos5 = 0
    
    Mientras secuencia % 2 <> 0 Hacer
        Si secuencia > 5 Entonces
            contMay5 = contMay5 + 1
        FinSi
        
        Si secuencia % 5 == 0 Entonces
            sumaMultiplos5 = sumaMultiplos5 + secuencia
        FinSi
        
        // Leer el siguiente número de la secuencia
        Leer secuencia
    FinMientras
    
    Escribir "La cantidad de numeros mayores a 5 es: ", contMay5
    Escribir "La suma de los numeros multiplos de 5 es: ", sumaMultiplos5
FinFuncion

Funcion procesarSecuenciaYArreglo2(secuencia, longitudArreglo)
    Definir sumaCubos Como Entero
	Definir contador Como Entero
	Dimension arreglo[longitudArreglo]
	Dimension exponentes[longitudArreglo]
	
    sumaCubos = 0
    contador = 0
	
    Mientras secuencia >= 0 Y contador < longitudArreglo Hacer
		contador = contador + 1
        // Agregar el número al arreglo
        arreglo[contador] = secuencia
		// Agregar el número elevado al exponente
		exponentes[contador] = secuencia^3
        // Sumar el cubo del número
        sumaCubos = sumaCubos + (secuencia * secuencia * secuencia)
        // Leer el siguiente número de la secuencia
		Si contador <> longitudArreglo Entonces
			Leer secuencia
		FinSi
    FinMientras
    
    Escribir "arreglo ="
	_imprimirValoresArreglo(arreglo, longitudArreglo)
	
	Escribir "exponentes = "
	_imprimirValoresArreglo(exponentes, longitudArreglo)
	
    Escribir "respuestaSuma =", sumaCubos
FinFuncion

Funcion contPalabras = contarPalabras(frase)
	Definir i, contPalabras Como Entero
	
	contPalabras = 0
	i = 1
	
	Mientras i <= Longitud(frase)
		Si Subcadena(frase, i, i) == " " Entonces
			contPalabras = contPalabras + 1
		FinSi
		
		i = i + 1
	FinMientras
	// Sumar la ultima palabra
	contPalabras = contPalabras + 1
FinFuncion

Funcion duplicarElementos(longitudArreglo)
	Definir numero, contador Como Entero
	Dimension arreglo[longitudArreglo]
	
	Escribir "Ingrese una secuencia de números separados por espacios (ingrese -1 para finalizar):"
	Leer numero
	
	Mientras numero <> -1 Y contador < longitudArreglo Hacer
		contador = contador + 1
        // Agregar el número al arreglo
        arreglo[contador] = numero
		
		// Leer el siguiente número de la secuencia
		Si contador <> longitudArreglo Entonces
			Leer numero
		FinSi
	FinMientras
	
    Para i = 1 Hasta longitudArreglo Hacer
        arreglo[i] = arreglo[i] * 2
    FinPara
	
	Escribir "arreglo duplicado = "
	_imprimirValoresArreglo(arreglo, longitudArreglo)
FinFuncion

Funcion contX = contarX(secuencia)
    Definir contX Como Entero
	
    contX = 0
    
	Mientras secuencia <> "." Hacer
		Para i = 1 Hasta Longitud(secuencia) Hacer
			Si Subcadena(secuencia, i, i) == "x" O Subcadena(secuencia, i, i) == "X" Entonces
				contX = contX + 1
			FinSi
		Fin Para
		
		Leer secuencia
	FinMientras
FinFuncion






// Function to display the main menu
Funcion mostrarMenuPrincipal(menuPrincipal, longitudMenu)
	_borrarPantalla
	Escribir "Menú Principal"
	
	Para index = 1 Hasta longitudMenu Con Paso 1 Hacer
		//Escribir menuPrincipal[index]
		Escribir index , ") " , menuPrincipal[index]
	Fin Para
FinFuncion

// Function to display the menu for numbers
Funcion mostrarMenuNumeros(menuNumeros, longitudMenu)	
    Para index = 1 Hasta longitudMenu Con Paso 1 Hacer
		//Escribir menuNumeros[index]
		Escribir index , ") " , menuNumeros[index]
	Fin Para
FinFuncion

// Function to display the menu for strings and arrays
Funcion mostrarMenuCadenasYArreglos(menuCadenasYArreglos, longitudMenu)
    Para index = 1 Hasta longitudMenu Con Paso 1 Hacer
		//Escribir menuCadenasYArreglos[index]
		Escribir index , ") " , menuCadenasYArreglos[index]
	Fin Para
FinFuncion

// Function to clear the screen
Funcion _borrarPantalla
	Borrar Pantalla
FinFuncion

// Function to perform operations with numbers
Funcion realizarOperacionesConNumeros(opcionSeleccionada)
	Repetir
		Escribir "Selecciona una opcion de las funciones mencionadas: "
		Escribir "22) Salir"
		Leer opcionSeleccionada
		
		Segun opcionSeleccionada Hacer
			Caso 1:
				// Llama a la función correspondiente con argumentos
				// Ejemplo: funcionNumeros(arg1, arg2)
				// Llamando a la función con la cantidad de colas
				Escribir "Ingrese la cantidad de colas"
				Leer cantidad
				
				calcularCostoColas(cantidad)
			Caso 2:
				// Clcular la ganancia de un productor de uva
				Escribir "Ingrese el tipo de uva A o B"
				Leer tipo
				Escribir  "Ingrese el tamaño 1 o 2"
				Leer tamaño
				
				ganancia = calcularGananciaUva(tipo, tamaño)
				
				Escribir "Ganancia obtenida: $", ganancia
			Caso 3:
				// Llamando a la función con los números que desees dividir
				Escribir "Ingrese el dividendo"
				Leer dividendo
				Escribir "Ingrese el divisor"
				Leer divisor
				
				residuo = obtenerResiduo(dividendo, divisor)
				
				Escribir "Residuo: ", residuo
			Caso 4:
				Escribir "Ingrese el número de cita: "
				Leer numeroCita
				
				calcularCostoConsulta(numeroCita)
			Caso 5:
				Escribir("Ingrese el primer número: ")
				Leer num1
				
				Escribir("Ingrese el segundo número: ")
				Leer num2
				
				Escribir("Ingrese el tercer número: ")
				Leer num3
				
				Escribir("Ingrese el cuarto número: ")
				Leer num4
				
				esDivisor = verificarRelacionesNumericas(num1, num2, num3, num4)
				
				Si esDivisor Entonces
					Escribir("El número 3 es divisor del número 4.")
				SiNo
					Escribir("El número 3 no es divisor del número 4.")
				FinSi
			Caso 6:
				Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
				Leer tipoTarjeta
				
				nuevoLimite = calcularNuevoLimite(tipoTarjeta)
				
				Escribir "Nuevo límite de crédito: $", nuevoLimite
				
			Caso 7:
				Escribir "Ingrese el número 1: "
				Leer num1
				Escribir "Ingrese el número 2: "
				Leer num2
				Escribir "Ingrese el número 3: "
				Leer num3
				Escribir "Ingrese el número 4: "
				Leer num4
				
				verificarDivisibilidadYRelacion(num1, num2, num3, num4)
			Caso 8:
				Escribir "Ingrese el tipo de tarjeta (1, 2, 3 u otro): "
				Leer tipoTarjeta
				
				aumento = calcularNuevoAumento(tipoTarjeta)
				Escribir "El nuevo límite de crédito es: $", aumento
			Caso 9:
				Escribir "Ingrese un número: "
				Leer numero
				
				evaluarNumero(numero)
				
			Caso 10:
				Definir tipo, tamaño Como Cadena
				Escribir "Ingrese el tipo de pitajaya (Amarilla o Colorada): "
				Leer tipo
				Escribir "Ingrese el tamaño de pitajaya (1 o 2): "
				Leer tamaño
				
				precioEmbarque = calcularPrecioPitajaya(tipo, tamaño)
				Escribir "El precio de embarque es: $", precioEmbarque
				
			Caso 11:
				Escribir "Ingrese un número: "
				Leer numero
				
				evaluarNumero2(numero)
				
			Caso 12:
				Escribir "Ingrese la clave del artículo (1, 2, 3, 4, 5 o 6): "
				Leer clave
				Escribir "Ingrese el costo de materia prima: "
				Leer costoMateriaPrima
				
				precioVenta = calcularPrecioVenta(clave, costoMateriaPrima)
				Escribir "El precio de venta es: $", precioVenta
				
			Caso 13:
				Definir numero Como Caracter
				Escribir "Ingrese un número entero: "
				Leer numero
				
				cantidadDigitos = calcularCantidadDigitos(numero)
				Escribir "El número tiene ", cantidadDigitos, " dígitos."
				
			Caso 14:
				// Función para determinar si un número es capicúa
				Definir numero Como Entero
				Escribir "Ingrese un número: "
				Leer numero
				
				numeroInverso = esCapicua(numero)
				Si numeroInverso Entonces
					Escribir "El número es capicúa."
				Sino
					Escribir "El número no es capicúa."
				FinSi
				
			Caso 15:
				// Función para presentar los divisores de un número
				Escribir "Ingrese un número: "
				Leer numero
				
				presentarDivisores(numero)
				
			Caso 16:
				// Función para calcular la suma de los divisores de un número
				Escribir "Ingrese un número: "
				Leer numero
				
				resultado = sumaDivisores(numero)
				Escribir "La suma de los divisores de ", numero, " es: ", resultado
			Caso 17:
				// Función para contar la cantidad de divisores de un número
				Definir numero Como Entero
				Escribir "Ingrese un número: "
				Leer numero
				
				cantidadDivisores = contarDivisores(numero)
				Escribir "El número tiene ", cantidadDivisores, " divisores."
				
			Caso 18:
				// Función para determinar si un número es perfecto
				Escribir "Ingrese un número: "
				Leer numero
				
				esPerfecto = esNumeroPerfecto(numero)
				Si esPerfecto Entonces
					Escribir "El número es perfecto."
				Sino
					Escribir "El número no es perfecto."
				FinSi
				
			Caso 19:
				// Función para determinar si un número es primo
				Escribir "Ingrese un número: "
				Leer numero
				
				esPrimo = esNumeroPrimo(numero)
				Si esPrimo Entonces
					Escribir "El número es primo."
				Sino
					Escribir "El número no es primo."
				FinSi
				
			Caso 20:
				Definir numero1, numero2 Como Entero
				Escribir "Ingrese el primer número: "
				Leer numero1
				Escribir "Ingrese el segundo número: "
				Leer numero2
				
				sonPrimosGemelos = sonNumerosPrimosGemelos(numero1, numero2)
				Si sonPrimosGemelos Entonces
					Escribir "Los números son primos gemelos."
				Sino
					Escribir "Los números no son primos gemelos."
				FinSi
				
			Caso 21:
				// Función para determinar si dos números son primos amigos
				Escribir "Ingrese el primer número: "
				Leer numero1
				Escribir "Ingrese el segundo número: "
				Leer numero2
				
				sonPrimosAmigos = sonNumerosPrimosAmigos(numero1, numero2)
				Si sonPrimosAmigos Entonces
					Escribir "Los números son primos amigos."
				Sino
					Escribir "Los números no son primos amigos."
				FinSi
			// TODO Agregar mas aqui
			De Otro Modo:
				Escribir "Opción no válida. Intente de nuevo."
		Fin Segun
	Hasta Que opcionSeleccionada == 22 // TODO Ajustar este limite al final
	
	_borrarPantalla
	Esperar 2 Segundos
FinFuncion

// Function to perform operations with strings and arrays
Funcion realizarOperacionesConCadenasYArreglos(opcionSeleccionada)
	Repetir
		Escribir "Selecciona una opcion de las funciones mencionadas: "
		Escribir "24) Salir"
		Leer opcionSeleccionada
		
		Segun opcionSeleccionada Hacer
			Caso 1:
				// Llama a la función correspondiente con argumentos
				// Ejemplo: funcionNumeros(arg1, arg2)
				// Algoritmo para presentar la secuencia
				Escribir "Ingrese el valor de n: "
				Leer n
				presentarSecuencia(n)
			Caso 2:
				Escribir "Ingrese la cantidad de valores para el arrglo"
				Leer longitudArreglo
				Dimension arreglo[longitudArreglo]
				
				Para i = 1 Hasta longitudArreglo Hacer
					Escribir "Ingrese un valor del arreglo"
					Leer valorArreglo
					
					arreglo[i] = valorArreglo
				Fin Para
				
				calcularPromedioParesImpares(arreglo, cantidadDeValoresArreglo)
			Caso 3:
				Escribir "Ingrese el valor de n: "
				Leer n
				
				presentarSecuencia2(n)
				
			Caso 4:				
				Escribir "Ingrese la longitud para el arreglo"
				Leer longitudArreglo
				Dimension arreglo[longitudArreglo]
				
				Para i = 1 Hasta longitudArreglo Hacer
					Escribir "Ingrese un valor del arreglo"
					Leer valorArreglo
					
					arreglo[i] = valorArreglo
				Fin Para
				
				copiarPositivosNegativos(arreglo, longitudArreglo)
			Caso 5:
				Escribir "Ingrese un numero positivo, ingrese uno negativo para salir"
				Leer secuencia
				
				procesarSecuencia(secuencia)
			Caso 6:
				Escribir "Ingrese la longitud para el arreglo"
				Leer longitudArreglo
				
				procesarSecuenciaYArreglo(longitudArreglo)
			Caso 7:
				Escribir "Ingrese una secuencia de numeros impares, ingrese un numero par para salir"
				Leer secuencia
				
				procesarSecuencia2(secuencia)
			Caso 8:
				Escribir "Ingrese la longitud para el arreglo"
				Leer longitudArreglo
				Escribir "Ingrese un valor para la secuencia, ingrese un numero negativo para salir"
				Leer secuencia
				
				procesarSecuenciaYArreglo2(secuencia, longitudArreglo)
			Caso 9:
				// Función para contar palabras en una frase
				Escribir "Ingrese una frase:"
                Leer frase
                contPalabras = contarPalabras(frase)
				
                Escribir "contPalabras = ", contPalabras
			Caso 10:
				// Función para cambiar cada elemento del arreglo por su doble
				Escribir "Ingrese la longitud del arreglo"
				Leer longitudArreglo
				
				duplicarElementos(longitudArreglo)
			Caso 11:
				// Función para contar la cantidad de "x" en una secuencia de caracteres
				Escribir "Ingrese una secuencia de caracteres (termine con un punto):"
                Leer secuencia
                contX = contarX(secuencia)
				
                Escribir "contX = ", contX
			Caso 12:
				
			Caso 13:
				
			Caso 14:
				
			Caso 15:
				
			Caso 16:
				
			Caso 17:
				
			Caso 18:
				
			Caso 19:
				
			Caso 20:
				
			Caso 21:
				
			Caso 22:
				
			Caso 23:
				
			De Otro Modo:
				Escribir "Opción no válida. Intente de nuevo."
		Fin Segun
	Hasta Que opcionSeleccionada == 24 // TODO Ajustar este limite al final
	
	_borrarPantalla
	Esperar 2 Segundos
FinFuncion

// Main algorithm
Algoritmo AlgoritmoPrincipal
    Definir opcionSeleccionada Como Entero
	Definir longitudMenuNumeros Como Entero
	Definir longitudMenuCadenasYArreglos Como Entero
	Definir longitudMenuPrincipal Como Entero
	
	longitudMenuPrincipal = 3
	longitudMenuNumeros = 21 // TODO Ajustar tamano del arreglo al final
	longitudMenuCadenasYArreglos = 23 // TODO Ajustar tamano del arreglo al final
	
	Dimension menuPrincipal[longitudMenuPrincipal]
    Dimension menuNumeros[longitudMenuNumeros] 
    Dimension menuCadenasYArreglos[longitudMenuCadenasYArreglos]
    
	menuPrincipal[1] = "Números"
	menuPrincipal[2] = "Cadenas y Arreglos"
	menuPrincipal[3] = "Salir"
	
	menuNumeros[1] = "calcularCostoColas(cantidad)"
	menuNumeros[2] = "calcularGananciaUva(tipo, tamaño)"
	menuNumeros[3] = "obtenerResiduo(dividendo, divisor)"
	menuNumeros[4] = "calcularCostoConsulta(numeroCita)"
	menuNumeros[5] = "verificarRelacionesNumericas(num1, num2, num3, num4)"
	menuNumeros[6] = "calcularNuevoLimite(tipoTarjeta)"
	menuNumeros[7] = "verificarDivisibilidadYRelacion(num1, num2, num3, num4)"
	menuNumeros[8] = "calcularNuevoAumento(tipoTarjeta)"
	menuNumeros[9] = "evaluarNumero(numero)"
	menuNumeros[10] = "calcularPrecioPitajaya(tipo, tamaño)"
	menuNumeros[11] = "evaluarNumero2(numero)"
	menuNumeros[12] = "calcularPrecioVenta(clave, costoMateriaPrima)"
	menuNumeros[13] = "calcularCantidadDigitos(numero)"
	menuNumeros[14] = "esCapicua(numero)"
	menuNumeros[15] = "presentarDivisores(numero)"
	menuNumeros[16] = "sumaDivisores(numero)"
	menuNumeros[17] = "contarDivisores(numero)"
	menuNumeros[18] = "esNumeroPerfecto(numero)"
	menuNumeros[19] = "esNumeroPrimo(numero)"
	menuNumeros[20] = "sonPrimosGemelos"
	menuNumeros[21] = "sonNumerosPrimosAmigos(numero1, numero2)"
	
	menuCadenasYArreglos[1] = "presentarSecuencia(n)"
	menuCadenasYArreglos[2] = "calcularPromedioParesImpares(arreglo)"
	menuCadenasYArreglos[3] = "presentarSecuencia2(n)"
	menuCadenasYArreglos[4] = "copiarPositivosNegativos(arreglo, cantidadDeValoresArreglo)"
	menuCadenasYArreglos[5] = "procesarSecuencia(secuencia)"
	menuCadenasYArreglos[6] = "procesarSecuenciaYArreglo(longitudArreglo)"
	menuCadenasYArreglos[7] = "procesarSecuencia2(secuencia)"
	menuCadenasYArreglos[8] = "procesarSecuenciaYArreglo2(secuencia, longitudArreglo)"
	menuCadenasYArreglos[9] = "contarPalabras(frase)"
	menuCadenasYArreglos[10] = "duplicarElementos(longitudArreglo)"
	menuCadenasYArreglos[11] = "contarX(secuencia)"
	menuCadenasYArreglos[12] = ""
	menuCadenasYArreglos[13] = ""
	menuCadenasYArreglos[14] = ""
	menuCadenasYArreglos[15] = ""
	menuCadenasYArreglos[16] = ""
	menuCadenasYArreglos[17] = ""
	menuCadenasYArreglos[18] = ""
	menuCadenasYArreglos[19] = ""
	menuCadenasYArreglos[20] = ""
	menuCadenasYArreglos[21] = ""
	menuCadenasYArreglos[22] = ""
	menuCadenasYArreglos[23] = ""
	
    Repetir
		Repetir
			mostrarMenuPrincipal(menuPrincipal, longitudMenuPrincipal)
			Leer opcionSeleccionada
			_borrarPantalla
			
			Si opcionSeleccionada <> 3 Entonces
				Segun opcionSeleccionada Hacer
					Caso 1:
						mostrarMenuNumeros(menuNumeros, longitudMenuNumeros)
						realizarOperacionesConNumeros(opcionSeleccionada)
					Caso 2:
						mostrarMenuCadenasYArreglos(menuCadenasYArreglos, longitudMenuCadenasYArreglos)
						realizarOperacionesConCadenasYArreglos(opcionSeleccionada)
					De Otro Modo:
						Escribir "Opción no válida. Intente de nuevo."
				FinSegun
			FinSi
		Hasta Que opcionSeleccionada == 3
    Hasta Que opcionSeleccionada == 3
    
    Escribir "Gracias por usar el sistema"
FinAlgoritmo
