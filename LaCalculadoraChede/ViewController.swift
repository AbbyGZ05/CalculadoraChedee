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
    
//Crear funciones
    @IBAction func QueHacer(_ sender: Any) {
        TextoCambiar.text="Adios Mundo Cruel"
    }
    //funcion para mostrar el texto de los botones 
    @IBAction func Opciones(_ sender: Any) {
        TextoCambiar.text="Aqui van a aparecer las opciones"
    }
    @IBAction func Numeros(_ sender: UIButton) {
        TextoCambiar.text=sender.titleLabel!.text ?? "Nosepo"
    }
}

