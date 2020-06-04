import bicis.*

class Deposito {
	const property coleccionBicis = []
	
	method agregarBici(bici) {coleccionBicis.add(bici)}
	
	method bicisRapidas() {return coleccionBicis.filter({bici => bici.velocidadDeCrucero() > 25}) }
	
	method marcasDeBicis() { return coleccionBicis.map({bici => bici.marca()}).asSet() }
	
	method esDepositoNocturno() {return coleccionBicis.all({bici => bici.tieneLuz()})}
	
	method tieneBiciParaLlevar(kilos) {return coleccionBicis.any({bici => bici.carga() > kilos})}
	
	method marcaBiciMasRapida() {return coleccionBicis.max({bici => bici.velocidadDeCrucero()}).marca()}
	 
	method cargaTotalBicisLargas() {return coleccionBicis.filter({bici => bici.largo() > 170}).sum({bici => bici.carga()})}
	
	method bicisSinAccesorios() {return coleccionBicis.count({bici => bici.accesorios().size() == 0})}
	
	method bicisCompanieras(bicicleta) {return coleccionBicis.filter({bici => bici.marca() == bicicleta.marca() and bici.largo().between(bicicleta.largo(),bicicleta.largo() + 10)}) }
	

}
