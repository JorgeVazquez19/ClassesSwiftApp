//
//  MStudents.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation

class MStudents{
    
    var id: String?
    var name: String?
    var lastname: String?
    var image: String?
    var date: String?
    var curse: String?
    var grade: String?

    
    
    convenience init(id:String,name:String,image:String,date:String,curse:String, lastname:String, grade:String) {
        self.init()
        self.id=id
        self.name=name
        self.image=image
        self.date=date
        self.curse=curse
        self.lastname = lastname
        self.grade = grade
    }
    
    func studentsEntity() -> EStudents {
        let entity = EStudents(id: self.id!, name: self.name!, image: self.image!, date: self.date!, curse: self.curse!, lastname: self.lastname!, grade: self.grade!)
        return entity
    }
    
    
}
