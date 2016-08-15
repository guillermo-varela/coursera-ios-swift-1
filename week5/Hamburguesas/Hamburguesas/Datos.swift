//
//  Datos.swift
//  Hamburguesas
//
//  Created by Guillermo Varela on 8/15/16.
//  Copyright © 2016 Guillermo Varela. All rights reserved.
//

import Foundation
import UIKit

class ColeccionDePaises {
    let paises = ["Canadá", "USA", "México", "Colombia", "Venezuela", "Perú", "Ecuador", "Brasil", "Bolivia", "Chile", "Paraguay", "Uruguay", "Argentina", "Guatemala", "Honduras", "Panamá", "República Dominicana", "Cuba", "Jamaica", "España"]

    func obtenPais( ) -> String {
        return paises[ Int(arc4random()) % paises.count ]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas = ["Veggie", "Orgánica y Artesanal", "Mexicana", "Mediterránea", "De Bistro", "Americana Clásica", "Barbacoa Ranchera", "Cebollas Caramelizadas", "Doble Queso", "Doble Cuarto de Libra", "Bacon Clubhouse", "Cuarto de Libra Habanero", "Cuarto de Libra Deluxe", "Doble Jalapeño", "Doble Diaria", "Pollo Premium Clubhouse Bacon Grillé", "Pollo Premium Clásico", "Pollo Premium Crispy con Bacon", "Pollo Crujiente estilo sureño", "Filet-O-Fish", "Costillas"]

    func obtenHamburguesa( ) -> String {
        return hamburguesas[ Int(arc4random()) % hamburguesas.count ]
    }
}