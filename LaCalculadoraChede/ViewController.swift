//
//  ViewController.swift
//
//
 
import UIKit
enum estados_de_la_calculadora{
    case seleccionar_nuemros
    case seleccionar_operacion
    case mostrar_resultado
}
 
class ViewController: UIViewController {
    var estado_actual: estados_de_la_calculadora = estados_de_la_calculadora.seleccionar_nuemros
    
    //Declaracion del boton y el label a interactuar
    @IBOutlet weak var btn_Cambia: UIButton!
    @IBOutlet weak var txt_Cambiar: UILabel!
    @IBOutlet weak var btn_ope: UIButton!
    @IBOutlet weak var Stack_view: UIStackView!
    
    var botones_Interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    var operacion_actual: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        inicializar_Calculadora()
    }
    
    
    //La declaracion de la accion a hacer y se arrastraron cada boton a esta funcion para que otorgue su numero escrito
    @IBAction func QueHacer(_ sender: UIButton) {
        if (estado_actual == estados_de_la_calculadora.seleccionar_nuemros){
            // TODO: Arreglar glitch del text quitando el optional
            let text_a_añadir = botones_Interfaz[(sender.restorationIdentifier ?? btn_ope.restorationIdentifier) ?? "boton"]?.numero
            txt_Cambiar.text = "\(txt_Cambiar.text ?? "")\(text_a_añadir!)"
        }
        else if (estado_actual == estados_de_la_calculadora.seleccionar_operacion){
            if let _mensajero: UIButton? = sender{
                operacion_actual = botones_Interfaz[_mensajero!.restorationIdentifier ?? "boton_0"]?.operacion
            }
            else{
                operacion_actual = nil
            }
        }
    }
    
    
    @IBAction func btn_Operacion(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_nuemros){
            estado_actual = estados_de_la_calculadora.seleccionar_operacion
            dibujar_numeros_u_operaciones()
        }
    }
    
    func inicializar_Calculadora() -> Void{
        crear_arreglos_botones()
        identificar_botones()
    }
    
    func crear_arreglos_botones() -> Void{
        botones_Interfaz=IUBotonCalculadora.crear_arreglo()
        
    }
    func dibujar_numeros_u_operaciones(){
        if(estado_actual == estados_de_la_calculadora.seleccionar_operacion){
        }
    }
    func identificar_botones(){
        for pila_de_componentes in Stack_view.subviews{
            for boton in pila_de_componentes.subviews{
                print(boton.restorationIdentifier)
                if let identificador = boton.restorationIdentifier{
                    botones_Interfaz[identificador]?.referencia_btn_interfaz = boton as? UIButton
                }
            }
        }
        for elemento in botones_Interfaz.values{
            elemento.referencia_btn_interfaz?.titleLabel?.text = "h"
        }
    }
}
