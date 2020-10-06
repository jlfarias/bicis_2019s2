import accesorios.*

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




