//
//  ViewController.swift
//  IdadeDeCachorro
//
//  Created by Temet Desenvolvimento on 26/04/19.
//  Copyright © 2019 Luis Dorea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Referencia ao texto de resultado
    @IBOutlet weak var legendaResultado: UILabel!
    
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Referencia a ação de clicar no motão
    @IBAction func descobrirIdade(_ sender: Any) {
        
        //Tem que fazer um tratamento para certificar que o usuário irá digitar um número
        //A constante abaixo recebe o valor de forma forçada
        let idade = Int(campoIdadeCachorro.text!)! * 7
        legendaResultado.text = String("A idade do cachorro em anos humanos é: \(idade)")
    }
    

}

