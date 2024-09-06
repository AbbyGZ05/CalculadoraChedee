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
    var operacion: Character
    
    init(_ id: String, numero: Character, operacion: Character) {
        self.id = id
        self.numero = numero
        self.operacion = operacion
    }
}
