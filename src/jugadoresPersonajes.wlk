object luisa {
	var personajeActivo
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	} 
	
	method asignarPersonaje(personaje){
		personajeActivo = personaje
	}
	
}





object floki {
	var arma 
	
	method setArma(armaNueva){
		arma = armaNueva
	}
	
	method encontrar(elemento){
		if (arma.estaCargada()){
		elemento.recibirAtaque(arma.potencia())
		arma.registrarUso()
	}
  }
  
}

object mario {
	var valorRecolectado = 0
	var alturaUltimoElemento = 0
    
    method encontrar(elemento){
    	valorRecolectado += elemento.valor()
    	elemento.recibirTrabajo()
    	alturaUltimoElemento = elemento.altura()
    }
    
    method esFeliz(){
    	return ((valorRecolectado > 49) || (alturaUltimoElemento > 10))
    }
}



object ballesta{
	
    var carga = 10
	
	method potencia(){
		return 4
	}
	
	method estaCargada(){
		return carga>0
	}
	
	method registrarUso(){
		carga --
	}
	
}

object jabalina{
	
    var carga = 1
	
	method potencia(){
		return 30
	}
	
	method estaCargada(){
		return carga>0
	}
	
	method registrarUso(){
		carga --
	}
	
}



object castillo{
	var defensa = 150
	
	method altura() {
		return 20
	}
	
	
	method recibirAtaque(potencia){
		defensa -= potencia
	}
	
	method recibirTrabajo(){
		defensa = 200.min(defensa+20)
	}
	
	method valor(){
		return defensa/5
	}
	
	
	
	
}

object aurora{
	var viva = true
	
	method viva(){
		return viva
	}
	
	method setViva(){
		viva = !viva
	}
	
	method altura() {
		return 1
	}
	
	method recibirAtaque(potencia){
		if (potencia > 9){
			self.setViva()
		} 
	}
	
	method valor(){
		return 15
	}
	
	method recibirTrabajo(){
		
	}
	
	
}

object tipa{
	
	var altura = 8
	
	method altura() {
		return altura
	}
	
	method recibirAtaque(potencia){
		
	}
	
	method valor(){
		return self.altura() * 2
	}
	
	method recibirTrabajo(){
		altura ++
	}
	
	
	
	
	
}