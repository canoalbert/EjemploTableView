//
//  ObtenerTarea.swift
//  EjemploTableView
//
//  Created by Alberto Cano Roca on 02/11/2023.
//

import Foundation

protocol ObtenerTarea {
    func obtener(dato: Tarea)
    func eliminar(posicion: Int)
    func modificar(posicion: Int, nuevoDato: Tarea)
    
}

