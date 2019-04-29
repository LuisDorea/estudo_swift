//
//  ViewController.swift
//  Alcool ou gasolina
//
//  Created by Temet Desenvolvimento on 28/04/19.
//  Copyright © 2019 Luis Dorea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var campoPrecoAlcool: UITextField!
    @IBOutlet weak var campoPrecoGasolina: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btCalcular(_ sender: Any) {
        
        if let precoGasolina = campoPrecoGasolina.text{
            if let precoAlcool = campoPrecoAlcool.text {
                
                //Validar campos digitados
                let camposOk = self.validarCampos(precogasolina: precoGasolina, precoAlcool: precoAlcool)
                
                if camposOk{
                    //fazer o calculo de melhor combustível
                    self.comQueAbasteco(precogasolina: precoGasolina, precoAlcool: precoAlcool)
                } else {
                    //setar mensagem de erro no campo de resultado
                    legendaResultado.text = "todos os campos tem que ser preenchidos."
                }
            }
        }
        
    }
    
    func validarCampos(precogasolina: String, precoAlcool: String) -> Bool{
        
        var camposOk = true
        
        if precogasolina.isEmpty{
            camposOk = false
        } else if precoAlcool.isEmpty{
            camposOk = false
        }
        
        return camposOk
    }
    
    func comQueAbasteco(precogasolina: String, precoAlcool: String){
        if let valorGasolina = Double(precogasolina){
            if let valorAlcool = Double(precoAlcool){
                let resultado = valorAlcool / valorGasolina
                
                if resultado >= 0.7{
                    legendaResultado.text = "Melhor utilizar gasolina"
                } else {
                    legendaResultado.text = "Melhor utilizar Álcool"
                }
            }
            
        }
        
    }
    
}

