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
    @IBOutlet weak var btn_Operacion: UIButton!
    
    
    var boton_interfaz: Dictionary<String, IUBotonCalculadora> =[:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IniciarCal()
        // Do any additional setup after loading the view.
    }
    
    //Crear funciones
    @IBAction func QueHacer(_ sender: UIButton) {
        //TextoCambiar.text = sender.titleLabel!.text ?? "Nosupe"
        /*for boton in boton_interfaz{
            if(boton.id == sender.restorationIdentifier){
                //funciona como log 
                print(boton.numero)
            }
        }*/
        print(boton_interfaz[(sender.restorationIdentifier ??
                              btn_Operacion.restorationIdentifier)?? "boton"]?.numero ?? "Esto no funge")
    }
    
    //funcion para mostrar el texto de los botones
    @IBAction func Opciones(_ sender: Any) {
        TextoCambiar.text="Aqui van a aparecer las opciones"
    }
    
    func IniciarCal() -> Void {
        crear_arreglo_botones()
    }
    
    func crear_arreglo_botones() -> Void{
        boton_interfaz["btn_\(numero)"] =  IUBotonCalculadora
        for numero in 0...9{
            boton_interfaz.append(IUBotonCalculadora(
                "btn_\(numero)",
                numero: Character("\(numero)"),
                operacion: "+"
                )
            )
        }
    }
}
