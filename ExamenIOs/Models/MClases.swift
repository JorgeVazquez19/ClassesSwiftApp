//
//  MClases.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation

class MClases{
    
    var id: String?
    var title: String?
    var image: String?
    var teacher: String?
    var date: String?
    
    
    convenience init(id:String,title:String,image:String,date:String,teacher:String) {
        self.init()
        self.id=id
        self.title=title
        self.image=image
        self.date=date
        self.teacher=teacher
    }
    
    func toEntity() -> EClases {
        let entity = EClases(id: self.id!, title: self.title!, image: self.image!, date: self.date!, teacher: self.teacher!)
        return entity
    }
    
    
}
