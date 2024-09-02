//
//  ViewController.swift
//  LaCalculadoraChede
//
//  Created by alumno on 8/30/24.
//

import UIKit

class ViewController: UIViewController {
    //Declarar Botones
    @IBOutlet weak var botonParaInteractuar: UIButton!
    
    @IBOutlet weak var TextoCambiar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func QueHacer(_ sender: Any) {
        TextoCambiar.text="Adios Mundo Cruel"
    }
    
}

