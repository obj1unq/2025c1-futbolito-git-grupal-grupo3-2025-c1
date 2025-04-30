/** First Wollok example */
import wollok.game.*

object lionel { 
	var property position = game.at(3,5)
	var bocha = pelota
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method patearBocha() {
		
		bocha.position().posicionBochaPateada() 
	}


	method posicionBochaPateada() {
		return game.at((game.width() - 1).min(position.x() + 3), position.y())
		
	}
	
} 


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

	method position() = position

	method IrAlInicio() {
		position = game.at(0,5)
		game.schedule(3000, {})
	}
}
