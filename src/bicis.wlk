class Bicicleta {
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method agregar(unAccesorio){accesorios.add(unAccesorio)	}
	method agregarLista(lista){	accesorios.addAll(lista) }
	method eliminar(unAccesorio){ accesorios.remove(unAccesorio) }
	
	method altura(){ return rodado * 2.5 + 15 }
	method velocidadCrucero(){ return if (largo > 120) {rodado + 6 } else {rodado + 2} }
	method carga(){ return accesorios.sum({acc => acc.carga()}) }
	method peso(){return (rodado / 2) + ( accesorios.sum({acc => acc.peso()}) ) }
	method tieneLuz(){ return accesorios.any({ acc => acc.esLuminoso()}) }
	method accesoriosLivianos(){return accesorios.count( {acc => acc.peso() < 1 }) } 
}

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


