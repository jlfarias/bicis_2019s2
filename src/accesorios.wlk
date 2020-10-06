
/*
 AGREGAR PORTA-BOTELLITAS DE AGUA, CANASTO TRASERO Y LUCES PARA RUEDAS
 POLIMORFISMO:
 DOS OBJETOS PUEDEN RESPONDERLE A UN TERCERO LOS MISMOS MENSAJES (DISTINTO COMPORTAMIENTO IGUAL INTERFAZ)
 ENTONCES SE DEBEN IMPLEMENTAR LOS MISMOS METODOS CON LOS PARAMETROS QUE SE UTILICEN EN CADA CASO.
 PARA PORTA-BOTELLITAS DE AGUA Y CANASTO TRASERO, DEBEN TENER: peso(), carga() y esLuminoso()
 SIN SON CLASES, TODAS LAS INSTANCIAS SON POLIMORFICAS
 CONTRATO: 
 HAY QUE RESPETAR EL MISMO CONTRATO. ESTO SIGNIFICA QUE LOS ACCESORIOS
 PUEDAN ENTENEDER LOS MISMOS MENSAJES (METODOS), SIN IMPORTAR LA FORMA QUE LO RESUELVEN INTERNAMENTE
*/

class Farolito{
	method peso(){ return 0.5}
	method carga(){ return 0 }
	method esLuminoso(){ return true }
}

class Canasto{
	var property volumen
	
	method peso(){ return volumen / 10 }
	method carga(){ return volumen * 2 }
	method esLuminoso(){ return false }
}

class Morral{
	var property largo
	var property ojoGato
	
	method peso(){ return 1.2 }
	method carga(){ return largo / 3 }
	method esLuminoso(){ return ojoGato }
}


