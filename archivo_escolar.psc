Algoritmo archivo_escolar
	Definir opcion, totalEstudiantes Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir estudiante Como Caracter
	Definir grado Como Caracter
	Definir edad Como Entero
	Definir acudiente Como Caracter
	Definir telefono Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension estudiante[100]
	Dimension grado[100]
	Dimension edad[100]
	Dimension acudiente[100]
	Dimension telefono[100]
	Dimension estado[100]
	totalEstudiantes <- 0
	siguienteID <- 1
	//------------------------------------//
	//--|menu_principal_archivo_escolar|--//
	//------------------------------------//
	Repetir
		Escribir "menu principal archivo escolar"
		Escribir "1) registrar estudiante"
		Escribir "2) editar estudiante"
		Escribir "3) eliminar estudiante"
		Escribir "4) buscar estudiante"
		Escribir "5) listar estudiantes"
		Escribir "6) ver detalles del estudiante"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//--------------------------//
			//--|registrar_estudiante|--//
			//--------------------------//
			1:
				Escribir "registrar estudiante"
				id[totalEstudiantes + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalEstudiantes + 1]
				Escribir "ingrese el nombre del estudiante:"
				Leer estudiante[totalEstudiantes + 1]
				Escribir "ingrese el grado:"
				Leer grado[totalEstudiantes + 1]
				Escribir "ingrese la edad:"
				Leer edad[totalEstudiantes + 1]
				Escribir "ingrese el nombre del acudiente:"
				Leer acudiente[totalEstudiantes + 1]
				Escribir "ingrese el telefono:"
				Leer telefono[totalEstudiantes + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalEstudiantes + 1]
				totalEstudiantes <- totalEstudiantes + 1
				Escribir "estudiante registrado correctamente."
			//-----------------------//
			//--|editar_estudiante|--//
			//-----------------------//
			2:
				Escribir "editar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", estudiante[i], " | ", grado[i], " | ", edad[i], " | ", acudiente[i], " | ", telefono[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del estudiante:"
							Leer estudiante[i]
							Escribir "ingrese el nuevo grado:"
							Leer grado[i]
							Escribir "ingrese la nueva edad:"
							Leer edad[i]
							Escribir "ingrese el nuevo acudiente:"
							Leer acudiente[i]
							Escribir "ingrese el nuevo telefono:"
							Leer telefono[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "estudiante editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//-------------------------//
			//--|eliminar_estudiante|--//
			//-------------------------//
			3:
				Escribir "eliminar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", estudiante[i], " | ", grado[i], " | ", edad[i], " | ", acudiente[i], " | ", telefono[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalEstudiantes Entonces
								Para j <- i Hasta totalEstudiantes - 1 Hacer
									id[j] <- id[j+1]
									estudiante[j] <- estudiante[j+1]
									grado[j] <- grado[j+1]
									edad[j] <- edad[j+1]
									acudiente[j] <- acudiente[j+1]
									telefono[j] <- telefono[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalEstudiantes <- totalEstudiantes - 1
							Escribir "estudiante eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|buscar_estudiante|--//
			//-----------------------//
			4:
				Escribir "buscar estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", estudiante[i], " | ", grado[i], " | ", edad[i], " | ", acudiente[i], " | ", telefono[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//------------------------//
			//--|listar_estudiantes|--//
			//------------------------//
			5:
				Escribir "listar estudiantes"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalEstudiantes Hacer
						Escribir id[i], " | ", estudiante[i], " | ", grado[i], " | ", edad[i], " | ", acudiente[i], " | ", telefono[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_estudiante|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del estudiante"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					Escribir "ingrese el id del estudiante:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalEstudiantes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del estudiante"
							Escribir "id: ", id[i]
							Escribir "estudiante: ", estudiante[i]
							Escribir "grado: ", grado[i]
							Escribir "edad: ", edad[i]
							Escribir "acudiente: ", acudiente[i]
							Escribir "telefono: ", telefono[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un estudiante con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalEstudiantes = 0 Entonces
					Escribir "no hay estudiantes registrados."
				SiNo
					totalActivos <- 0
					totalInactivos <- 0
					sumaEdades <- 0
					mayorEdad <- edad[1]
					menorEdad <- edad[1]
					Para i <- 1 Hasta totalEstudiantes Hacer
						sumaEdades <- sumaEdades + edad[i]
						Si estado[i] = "activo" Entonces
							totalActivos <- totalActivos + 1
						SiNo
							totalInactivos <- totalInactivos + 1
						FinSi
						Si edad[i] > mayorEdad Entonces
							mayorEdad <- edad[i]
						FinSi
						Si edad[i] < menorEdad Entonces
							menorEdad <- edad[i]
						FinSi
					FinPara
					promedioEdades <- sumaEdades / totalEstudiantes
					Escribir "estadistica general"
					Escribir "total de estudiantes: ", totalEstudiantes
					Escribir "estudiantes activos: ", totalActivos
					Escribir "estudiantes inactivos: ", totalInactivos
					Escribir "suma de edades: ", sumaEdades
					Escribir "promedio de edades: ", promedioEdades
					Escribir "edad mayor: ", mayorEdad
					Escribir "edad menor: ", menorEdad
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar archivo escolar."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo