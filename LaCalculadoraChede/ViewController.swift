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
    var estado_actual: estados_de_la_calculadora = estados_de_la_calculadora.selacionar_nuemros
    
    //Declaracion del boton y el label a interactuar
    @IBOutlet weak var btn_Cambia: UIButton!
    @IBOutlet weak var txt_Cambiar: UILabel!
    @IBOutlet weak var btn_ope: UIButton!
    
    var botones_Interfaz: Dictionary<String, IUBotonCalculadora> = [:]
    
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
            
        }
    }
    
    func inicializar_Calculadora() -> Void{
        crear_arreglos_botones()
    }
    
    func crear_arreglos_botones() -> Void{
        botones_Interfaz=IUBotonCalculadora.crear_arreglo()
        
    }
    func dibujar_numeros_u_operaciones(){
        if(estado_actual == estados_de_la_calculadora.)
    }
    
    //Declaracion del boton operacion
    @IBAction func btn_Operacion(_ sender: UIButton) {
        if(estado_actual == estados_de_la_calculadora.seleccionar_nuemros){
            estado_actual = estados_de_la_calculadora.seleccionar_operacion
            dibujar_numeros_u_operaciones()
        }
        
    }
    
}
 
