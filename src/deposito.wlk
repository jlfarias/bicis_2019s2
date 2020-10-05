import bicis.*

class Deposito {
	var property bicicletas = []
	
	method agregar(unaBicicleta){ bicicletas.add(unaBicicleta) }
	method agregarLista(lista){	bicicletas.addAll(lista) }
	method eliminar(unaBicicleta){ bicicletas.remove(unaBicicleta) }
	
	method bicisRapidas(){
		//COLECCIN DE BICIS RAPIDAS
		return bicicletas.filter({ bi => bi.velocidadCrucero() > 25 })
	}
	method marcas(){
		// MARCAS SI REPETIR
		return bicicletas.map({bi => bi.marca()}).asSet()
	}
	method esNocturno(){
		// SI TODAS TIENEN LUZ
		return bicicletas.all({ bi => bi.tieneLuz()} )
	}
	method cargaParaLlevar(unaCarga){
		return bicicletas.any({ bi => bi.carga() > unaCarga })
	}
	
	method marcaBiciMasRapida(){
		// MARCA DE LA BICI MAS RAPIDA
		return bicicletas.max({ bi => bi.velocidadCrucero() }).marca()
	}
	
	method cargaTotalBicisLargas(){
		// SUMAR CARGA BICICLETAS CUYO LARGO > 170
		const bicisLargas = bicicletas.filter({ bi => bi.largo() > 170 }) 
		return bicisLargas.sum({ b => b.carga() })
	}
	
	method bicisSinAccesorios(){
		// CANTIDAD DE BICIS SIN ACCESORIOS
		return bicicletas.filter({ bi => bi.accesorios().isEmpty()}).size()
	}
	
	method bicisCompanieras(unaBici){
		//  RETORNAR BOLEANO
		// HAY UNA BICICLETA DE IGUAL MARCA ?
		const hayIgualMarca = bicicletas.any({ bi => bi.marca() == unaBici.marca() }) 
		// HAY UNA BICICLETA QUE MIDA +- 5 CM QUE LA BICI QUE INGRESA POR PARAMETRO?
		const hayBiciDeLargo = bicicletas.any({ bi => bi.largo().between(unaBici.largo()-5, unaBici.largo()+5) })
		return hayIgualMarca and hayBiciDeLargo
	}
	

}
