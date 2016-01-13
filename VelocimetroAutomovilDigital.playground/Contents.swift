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
    var velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    
    init(velocidadInicial: Velocidades) {
        self.velocidad = velocidadInicial
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        var velocidadactual: Int
        var velocidadencadena: String
        
        velocidadactual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidadencadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            velocidadencadena = "Velocidad baja"
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            velocidadencadena = "Velocidad media"
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            velocidadencadena = "Velocidad alta"
            velocidad = Velocidades.VelocidadMedia
        }
        return (velocidadactual, velocidadencadena)
    }
}

//Instanciación de la clase Auto inicializando la propiedad velocidad en "Apagado"
var auto = Auto(velocidadInicial: Velocidades.Apagado)
for i in 1...20 {
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    println("\(i). \(actual), \(velocidadEnCadena)")
}

