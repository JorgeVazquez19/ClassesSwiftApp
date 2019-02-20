//
//  LocalClasesRepository.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit
import RealmSwift

class LocalClasesRepository: Repository {
    
    //metodo para obtener todas las clases

    func getAll() -> [MClases] {
        var tasks: [MClases] = []
        do {
            let entities = try Realm().objects(EClases.self).sorted(byKeyPath: "title", ascending: true) //Esto equivaldria a una Query
            for entity in entities {
                let model = entity.clasesModel()
                tasks.append(model)
            }
        }
        catch let error as NSError {
            print("Error getAll Tasks: ", error.description)
        }
        return tasks
    }
    
    func get(identifier: String) -> MClases? {
        do {
            let realm =  try Realm()
            if let entity = realm.objects(EClases.self).filter("id == %@", identifier).first{ //Esto equivaldria a una Query
                let model = entity.clasesModel()
                return model
            }
        }
        catch {
            return nil
        }
        return nil
    }
    
    func create(a: MClases) -> Bool {
        do {
            let realm = try Realm()
            let entity = EClases(id: a.id!, title: a.title!, image: a.image!, date: a.date!, teacher: a.teacher!)
            try realm.write {
                realm.add(entity, update: true)
            }
        }
        catch {
            return false
        }
        
        return true
    }
}
