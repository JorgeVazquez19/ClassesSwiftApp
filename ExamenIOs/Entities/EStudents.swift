//
//  EStudents.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation
import RealmSwift


class EStudents: Object {
    
    @objc dynamic var id: String? = ""
    @objc dynamic var name: String? = ""
    @objc dynamic var date: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var curse: String? = ""
    @objc dynamic var lastname: String? = ""
    @objc dynamic var grade: String? = ""

    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id:String,name:String,image:String,date:String,curse:String, lastname:String, grade:String) {
        self.init()
        self.id = id
        self.name = name
        self.image = image
        self.date = date
        self.curse = curse
        self.lastname = lastname
        self.grade = grade
    }
    
    func studentsModel() -> MStudents{
        let model = MStudents()
        model.id = self.id
        model.name = self.name
        model.image = self.image
        model.date = self.date
        model.curse = self.curse
        model.lastname = self.lastname
        model.grade = self.grade
        
        return model
    }
}
