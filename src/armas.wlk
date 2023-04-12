object ballesta{
	
    var carga = 10
	
	method potencia() = 4
	
	method estaCargada() = carga>0
		
	method registrarUso() {	carga -- }

	
}

object jabalina{
	
    var carga = true
	
	method potencia()= 30
	
	method estaCargada() = carga
	
	method registrarUso() {carga = false}	
	
}

	
	
	
