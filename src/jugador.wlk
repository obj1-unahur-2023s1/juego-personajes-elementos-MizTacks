import armas.*
import objetos.*


object luisa {
	var property personajeActivo
	
	method aparece(elemento){
		personajeActivo.encontrar(elemento)
	} 
	
	method asignarPersonaje(personaje){
		personajeActivo = personaje
	}
	
}


