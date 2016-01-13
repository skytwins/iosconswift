//: Velocímetro Digital

import UIKit

enum Velocidades: Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidades = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init() {
        self.velocidades = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        var velocidad: Int
        var velocidadencadena: String
        
        velocidad = velocidades.rawValue
        switch velocidades {
        case .Apagado:
            velocidadencadena = "Velocidad Apagado"
            velocidades = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadencadena = "Velocidad baja"
            velocidades = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadencadena = "Velocidad Media"
            velocidades = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidadencadena = "Velocidad Alta"
            velocidades = Velocidades.VelocidadMedia
        }
        return (velocidad, velocidadencadena)
    }
}

//Prueba de la clase Auto
var auto = Auto()
for i in 1...20 {
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    println("\(actual), \(velocidadEnCadena)")
}

