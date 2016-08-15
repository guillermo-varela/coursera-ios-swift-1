//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120

    // Retorna el nombre de la enumeración cambiando camel case por separación con espacio y sólo la primera letra en mayúscula para coincidir con el ejemplo
    var descripcion : String {
        let string = String( self )

        var resultado : String = String( string.characters.first! )
        var letra : String

        for var indice = 1; indice < string.characters.count; indice++ {
            letra = String( string[string.startIndex.advancedBy(indice)] )
            resultado += letra == letra.uppercaseString ? " \(letra.lowercaseString)" : letra
        }

        return resultado
    }

    init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades

    init( ) {
        self.velocidad = Velocidades( velocidadInicial: .Apagado )
    }

    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String ) {
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
        }

        return (velocidad.rawValue, velocidad.descripcion)
    }
}

var auto = Auto()

func imprimirVelocidad( tupla : (actual : Int, velocidadEnCadena: String) ) {
    print( "\(tupla.actual), \(tupla.velocidadEnCadena)" )
}

// Se deja para tener el valor 0 en consola, ver https://www.coursera.org/learn/swift/peer/tdzGW/un-velocimetro-de-un-automovil-digital/discussions/threads/wFsQ3mKDEeauFBL_LvfvIQ
imprimirVelocidad( ( actual : auto.velocidad.rawValue, velocidadEnCadena: auto.velocidad.descripcion ) )

for _ in 0...19 {
    imprimirVelocidad(auto.cambioDeVelocidad())
}
