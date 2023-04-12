

object castillo{
	var defensa = 150
	
	method altura() = 20
	method defensa() = defensa
	method recibirAtaque(potencia) {
	   defensa = 0.max(defensa - potencia)
	}
	
	method recibirTrabajo() {
	   defensa = 200.min(defensa+20)
	   }
	
	method valor() = defensa/5
		
}



object aurora{
	var viva = true
		
	method altura() = 1
	
	method recibirAtaque(potencia){
		viva = potencia < 10
	}
	
	method valor()= 15
	
	
	method recibirTrabajo() {}
	
	
}

object tipa{
	
	var altura = 8
	
	method altura() = altura
	
	method recibirAtaque(potencia){}
	
	method valor() = altura * 2
	
	method recibirTrabajo() = altura ++

	
}