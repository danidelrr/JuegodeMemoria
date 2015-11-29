//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int{
    case   Apagado = 0 , VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {

    var velocidad : Velocidades

    init () {
        self.velocidad = Velocidades (velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual : Int , velocidadEnCadena : String) {
        switch (velocidad) {
        case Velocidades.Apagado:
            velocidad = .VelocidadBaja
        case Velocidades.VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }
        return(velocidad.rawValue, "\(velocidad)")
    }
}

var auto = Auto()
print(auto.velocidad.rawValue, "\(auto.velocidad)")

for numero in 1...20 {
    let tuplareturn = auto.cambioDeVelocidad()
    print("\(tuplareturn.0), \(tuplareturn.1)")
}




