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
    var numero_anterior : Double = 0.0
    
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
        else if (estado_actual == estados_de_la_calculadora.mostrar_resultado){
            if let _mensajero_id  = sender.restorationIdentifier{
                let txt_añadir = botones_Interfaz[_mensajero_id]?.numero
                txt_Cambiar.text = "\(txt_Cambiar.text ?? "")\(txt_añadir!)"
                estado_actual = estados_de_la_calculadora.seleccionar_nuemros
                }
            }
        
        else if (estado_actual == estados_de_la_calculadora.seleccionar_operacion){
            if let _mensajero_id  = sender.restorationIdentifier{
                
                operacion_actual = botones_Interfaz[_mensajero_id]?.operacion
                
                if let numero_actual: String = txt_Cambiar.text{
                    numero_anterior = Double(numero_actual) ?? 0.0
                }
                txt_Cambiar.text = ""
                estado_actual = estados_de_la_calculadora.seleccionar_nuemros
            }
            else{
                operacion_actual = nil
            }
        }
        dibujar_numeros_u_operaciones()
    }
    
    
    @IBAction func btn_Operacion(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_nuemros){
            estado_actual = estados_de_la_calculadora.seleccionar_operacion
            
        }
        else if estado_actual == estados_de_la_calculadora.seleccionar_operacion{
            estado_actual = estados_de_la_calculadora.seleccionar_nuemros
        }
        else if estado_actual == estados_de_la_calculadora.mostrar_resultado{
            estado_actual = estados_de_la_calculadora.seleccionar_nuemros
        }
        
        dibujar_numeros_u_operaciones()
    }
    
    func inicializar_Calculadora() -> Void{
        crear_arreglos_botones()
        identificar_botones()
    }
    
    func crear_arreglos_botones() -> Void{
        botones_Interfaz=IUBotonCalculadora.crear_arreglo()
        
    }
    func dibujar_numeros_u_operaciones(){
        switch(estado_actual){
                    case .seleccionar_operacion:
                        for elemento in botones_Interfaz.values{
                            elemento.referencia_btn_interfaz?.setTitle(
                                    elemento.operacion,
                                    for: .normal
                                    )
                            elemento.referencia_btn_interfaz?.setTitle("Ñ", for: .selected)
                        }
                    
                    case .seleccionar_nuemros:
                        for elemento in botones_Interfaz.values{
                            elemento.referencia_btn_interfaz?.setTitle(
                                String(elemento.numero),
                                for: .normal
                            )
                        }
                    case .mostrar_resultado:
                            0 == 0
        }
    }
    func identificar_botones(){
        for pila_de_componentes in Stack_view.subviews{
            for boton in pila_de_componentes.subviews{
                //print(boton.restorationIdentifier)
                if let identificador = boton.restorationIdentifier{
                    botones_Interfaz[identificador]?.referencia_btn_interfaz = boton as? UIButton
                }
            }
        }
    }
    
    
    @IBAction func obtener_resultado(_ sender: Any) {
        if numero_anterior != 0.0 && txt_Cambiar.text != ""{
            var numero_actual: Double = 0.0
            if let numero_actual_string = txt_Cambiar.text{
                numero_actual = Double(numero_actual_string) ?? 0.0
            }
            switch(operacion_actual){
            case"+":
                txt_Cambiar.text = "\(numero_anterior + numero_actual)"
            case"-":
                txt_Cambiar.text = "\(numero_anterior - numero_actual)"
            case"*":
                txt_Cambiar.text = "\(numero_anterior * numero_actual)"
            case"/":
                txt_Cambiar.text = "\(numero_anterior / numero_actual)"
            default: txt_Cambiar.text = "Hay un error"
            }
            estado_actual = estados_de_la_calculadora.mostrar_resultado
        }
    }
}
