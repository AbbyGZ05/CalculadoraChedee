//
//  InterfazBotones.swift
//  LaCalculadoraChede
//
//  Created by alumno on 9/6/24.
//

import Foundation

//Interfaz usuario [Nombre de la clase o estructura ]
struct IUBotonCalculadora{
    var id:String
    var numero: Character
    var operacion: String
    
    init(_ id: String, numero: Character, operacion: String ){
        self.id = id
        self.numero = numero
        self.operacion = operacion
    }
    static func crear_arreglo() -> Dictionary<String, IUBotonCalculadora>{
        var botones_Interfaz: Dictionary<String, IUBotonCalculadora> = [:]
        
        botones_Interfaz["btn_0"] = IUBotonCalculadora(
                                                    "btn_0)",
                                                    numero: Character("0"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_1"] = IUBotonCalculadora(
                                                    "btn_1)",
                                                    numero: Character("1"),
                                                    operacion: "+"
            )
        botones_Interfaz["btn_2"] = IUBotonCalculadora(
                                                    "btn_2)",
                                                    numero: Character("2"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_3"] = IUBotonCalculadora(
                                                    "btn_3)",
                                                    numero: Character("3"),
                                                    operacion: "-"
            )
        botones_Interfaz["btn_4"] = IUBotonCalculadora(
                                                    "btn_4)",
                                                    numero: Character("4"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_5"] = IUBotonCalculadora(
                                                    "btn_5)",
                                                    numero: Character("5"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_6"] = IUBotonCalculadora(
                                                    "btn_6)",
                                                    numero: Character("6"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_7"] = IUBotonCalculadora(
                                                    "btn_7)",
                                                    numero: Character("7"),
                                                    operacion: "*"
            )
        botones_Interfaz["btn_8"] = IUBotonCalculadora(
                                                    "btn_8)",
                                                    numero: Character("8"),
                                                    operacion: ""
            )
        botones_Interfaz["btn_9"] = IUBotonCalculadora(
                                                    "btn_9)",
                                                    numero: Character("9"),
                                                    operacion: "/"
            )
        return botones_Interfaz
        }
    }
