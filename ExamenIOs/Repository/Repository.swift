//
//  Repository.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation

protocol Repository {
    associatedtype T
    //interfaz de los metodos de la base de datos
    func getAll() -> [T]
    func get(identifier: String) -> T?
    func create(a: T) -> Bool
    
}
