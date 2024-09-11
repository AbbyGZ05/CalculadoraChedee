//
//  InterfazBotones.swift
//  LaCalculadoraChede
//
//  Created by alumno on 9/6/24.
//

import Foundation
import UIKit

//Interfaz usuario [Nombre de la clase o estructura ]
struct IUBotonCalculadora{
    var referencia_btn_interfaz: UIButton?
    var numero: Character
    var operacion: String
    
    init( numero: Character, operacion: String ){
        self.referencia_btn_interfaz = nil
        self.numero = numero
        self.operacion = operacion
    }
    static func crear_arreglo() -> Dictionary<String, IUBotonCalculadora>{
        var botones_Interfaz: Dictionary<String, IUBotonCalculadora> = [:]
        
        botones_Interfaz["btn_0"] = IUBotonCalculadora(
                                                    numero: Character("0"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_1"] = IUBotonCalculadora(
                                                    numero: Character("1"),
                                                    operacion: "+"
            )
        botones_Interfaz["btn_2"] = IUBotonCalculadora(
                                                    numero: Character("2"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_3"] = IUBotonCalculadora(
                                                    numero: Character("3"),
                                                    operacion: "-"
            )
        botones_Interfaz["btn_4"] = IUBotonCalculadora(
                                                    numero: Character("4"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_5"] = IUBotonCalculadora(
                                                    numero: Character("5"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_6"] = IUBotonCalculadora(
                                                    numero: Character("6"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_7"] = IUBotonCalculadora(
                                                    numero: Character("7"),
                                                    operacion: "*"
            )
        botones_Interfaz["btn_8"] = IUBotonCalculadora(
                                                    numero: Character("8"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_9"] = IUBotonCalculadora(
                                                    numero: Character("9"),
                                                    operacion: "/"
            )
        return botones_Interfaz
        }
    }
