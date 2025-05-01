/** First Wollok example */
import wollok.game.*

object lionel {
	
	var property position = game.at(3,5)
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}

	method camiseta() {
		self.validarPosicionCambio()
		return "lionel-suplente.png"
	}

	method validarPosicionCambio() {
		return position == game.at(0, position.y())
	}

	method Levantarla() {
		pelota.levantar() 
		game.schedule(2, {pelota.bajar()})
	}
	
}

object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)

	method levantar() {
		position = game.at(position.x(), (game.width() - 1).min(position.y() + 1))
	}	
	method bajar() {
		position = game.at(position.x(), (game.width() - 1).min(position.y() - 1))
	}

}
