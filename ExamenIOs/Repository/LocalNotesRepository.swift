//
//  LocalNotesRepository.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

/*import UIKit
import RealmSwift

class LocalNotesRepository: Repository {
    
    func getAll() -> [MNotes] {
        var tasks: [MNotes] = []
        do {
            let entities = try Realm().objects(ENotes.self).sorted(byKeyPath: "title", ascending: true) //Esto equivaldria a una Query
            for entity in entities {
                let model = entity.notesModel()
                tasks.append(model)
            }
        }
        catch let error as NSError {
            print("Error getAll Tasks: ", error.description)
        }
        return tasks
    }
    
    func get(identifier: String) -> MNotes? {
        do {
            let realm =  try Realm()
            if let entity = realm.objects(ENotes.self).filter("id == %@", identifier).first{ //Esto equivaldria a una Query
                let model = entity.notesModel()
                return model
            }
        }
        catch {
            return nil
        }
        return nil
    }
    
    func create(a: MNotes) -> Bool {
        do {
            let realm = try Realm()
            let entity = ENotes(id: a.id!, grade: a.grade!, image: a.image!,students: a.students)
            try realm.write {
                realm.add(entity, update: true)
            }
        }
        catch {
            return false
        }
        
        return true
    }
    
    func update(a: MNotes) -> Bool {
        return create(a: a)
    }
    
    func delete(a: MNotes) -> Bool {
        do {
            let realm = try Realm()
            try realm.write {
                let entityToDelete = realm.objects(ENotes.self).filter("id == %@", a.id) //Esto equivaldria a una Query
                realm.delete(entityToDelete)
            }
            
        }
        catch {
            return false
        }
        return true
    }
}
*/
