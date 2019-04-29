//
//  ViewController.swift
//  Frases do dia
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

    @IBAction func novaFrase(_ sender: Any) {
        
        var frases : [String] = []
        
        frases.append("Chega um tempo na vida que a gente aprende que ninguém nos decepciona, nós que colocamos expectativa demais sobre as pessoas. Cada um é o que é e oferece aquilo que tem para oferecer.")
        frases.append("Que o vento leve o necessário e me traga o suficiente.")
        frases.append("Algumas pessoas surgem em nossas vidas como uma benção, outras como lição.")
        frases.append("Algumas pessoas sempre vão jogar pedras no seu caminho, depende de você o que você faz com elas. Uma parede ou uma ponte?")
        
        let numero = arc4random_uniform(3)
        legendaResultado.text = frases[Int(numero)]
        
    }
    

}

