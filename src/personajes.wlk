import armas.*
import objetos.*

object floki {
	var property arma = ballesta
	
	method encontrar(elemento){
		if (arma.estaCargada()){
		elemento.recibirAtaque(arma.potencia())
		arma.registrarUso()
	}
  }
  
}

object mario {
	var valorRecolectado = 0
	var ultimoElemento 
    
    method encontrar(elemento){
    	valorRecolectado += elemento.valor()
    	elemento.recibirTrabajo()
    	ultimoElemento = elemento
    }
    
    method valorRecolectado()= valorRecolectado
    
    method esFeliz()= ((valorRecolectado > 49) || (ultimoElemento.altura() > 9))
    
}

