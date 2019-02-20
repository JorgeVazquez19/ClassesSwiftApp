//
//  LocalStudentsRepository.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit
import RealmSwift

class LocalStudentsRepository: Repository {
    
    //metodo para obtener todos los estudiantes
    func getAll() -> [MStudents] {
        var tasks: [MStudents] = []
        do {
            let entities = try Realm().objects(EStudents.self).sorted(byKeyPath: "name", ascending: true) //Esto equivaldria a una Query
            for entity in entities {
                let model = entity.studentsModel()
                tasks.append(model)
            }
        }
        catch let error as NSError {
            print("Error getAll Tasks: ", error.description)
        }
        return tasks
    }
    
    func get(identifier: String) -> MStudents? {
        do {
            let realm =  try Realm()
            if let entity = realm.objects(EStudents.self).filter("id == %@", identifier).first{ //Esto equivaldria a una Query
                let model = entity.studentsModel()
                return model
            }
        }
        catch {
            return nil
        }
        return nil
    }
    //metodo para crear los estudiantes

    func create(a: MStudents) -> Bool {
        do {
            let realm = try Realm()
            let entity = EStudents(id: a.id!, name: a.name!, image: a.image!, date: a.date!, curse: a.curse!, lastname: a.lastname!, grade: a.grade!)
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
