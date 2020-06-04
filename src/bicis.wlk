class Bicicleta {
	var property rodado = 0
	var property largo = 0
	var property marca = ""
	const property accesorios= []
	
	method altura() {return rodado * 2.5 + 15}
	
	method velocidadDeCrucero() {
		if (self.largo() > 120) { 
			return rodado + 6 } 
		else {
			return rodado + 2
		}
	 } 
		
	method carga() {return accesorios.sum({acc => acc.carga()})}
	
	method peso() {return rodado/2 + self.pesoAccesorios()}
	
	method pesoAccesorios() {return accesorios.sum({acc => acc.peso()})}
	
	method tieneLuz() {return accesorios.any({acc => acc.esLuminoso()})}
	
	method agregarAccesorio(accesorio) {accesorios.add(accesorio)}
	

	
	method cantAccesoriosLivianos() {return accesorios.count({acc => acc.peso() < 1})}
	
}
/* Para agregar un nuevo tipo de accesorio se necesita crearlo y agregarle los mismos metodos
 * de los otros objetos o clases ya creados para respetar el poliformismo.
 */

object farolito {
	
	method peso() {return 0.5}
	
	method carga() {return 0}
	
	method esLuminoso() {return true}
	
}

class Canasto {
	
	var property volumen = 0
	
	method peso() {return volumen / 10}
	
	method carga() {return volumen * 2}
	
	method esLuminoso() {return false}
} 

class Morral {
	
	var property largo = 0
	
	var property ojoDeGato = false 
	
	method peso() {return 1.2}
	
	method carga() {return largo / 3}
	
	method esLuminoso() {return ojoDeGato} 
	
	method tieneOjoDeGato() {ojoDeGato == true}
}
