//
//  ViewController.swift
//  Gerador de Numeros
//
//  Created by Temet Desenvolvimento on 26/04/19.
//  Copyright © 2019 Luis Dorea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var legendaResultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gerarNumero(_ sender: Any) {
        let numeroAleatorio = arc4random_uniform(11)
        legendaResultado.text = String(numeroAleatorio)
    }
    
}

