//
//  Contacto.swift
//  Edicion
//
//  Created by Alumno on 10/28/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Contacto {
    var nombre: String
    var celular: String
    var correo: String
    
    init(nombre:String, celular: String, correo: String) {
        self.celular = celular
        self.correo = correo
        self.nombre = nombre
    }

}
