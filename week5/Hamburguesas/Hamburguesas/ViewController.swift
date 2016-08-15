//
//  ViewController.swift
//  Hamburguesas
//
//  Created by Guillermo Varela on 8/15/16.
//  Copyright © 2016 Guillermo Varela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()

    @IBOutlet weak var pais: UILabel!
    @IBOutlet weak var hamburguesa: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func obtenerHamburguesa() {
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
        view.backgroundColor = colores.regresaColorAleatorio()
    }
}

