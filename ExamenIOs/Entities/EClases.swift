//
//  EClases.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation
import RealmSwift


class EClases: Object {
    
    @objc dynamic var id: String? = ""
    @objc dynamic var title: String? = ""
    @objc dynamic var date: String = ""
    @objc dynamic var image: String = ""
    @objc dynamic var teacher: String? = ""
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id:String,title:String,image:String,date:String,teacher:String) {
        self.init()
        self.id = id
        self.title = title
        self.image = image
        self.date = date
        self.teacher = teacher
    }
    
    func clasesModel() -> MClases{
        let model = MClases()
        model.id = self.id
        model.title = self.title
        model.image = self.image
        model.date = self.date
        model.teacher = self.teacher
        
        return model
    }
}
