//
//  Alumno.swift
//  practicatableview
//
//  Created by Emiliano Lopez on 11/3/20.
//  Copyright © 2020 Emiliano Lopez. All rights reserved.
//

import Foundation

class Alumno {
    var nombre : String
    var matricula : String
    var carrera : String
    
    init(nombre: String, matricula: String, carrera: String) {
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
    }
}
