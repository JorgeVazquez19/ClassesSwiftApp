//
//  Session.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import Foundation

final class Session {
    private init() { }
    static let shared = Session()
    var studentsRepository = LocalStudentsRepository()
    var clasesRepository = LocalClasesRepository()


    func checkData(){
        let carlos = MStudents(id: "1", name: "Carlos", image: "carlos", date: "20/02/2019", curse: "4º ESO", lastname: "Gimenez", grade: "2.3")
        let joaquin = MStudents(id: "2", name: "Joaquin", image: "joaquin", date: "20/02/2019", curse: "3º ESO", lastname: "Vazquez", grade: "9.3")
        let sara = MStudents(id: "3", name: "Sara", image: "sara", date: "20/02/2019", curse: "1º ESO", lastname: "Rodriguez", grade: "6.3")
        let manuel = MStudents(id: "4", name: "Manuel", image: "manuel", date: "20/02/2019", curse: "2º ESO", lastname: "Pina", grade: "8.2")
        
        
        let maths = MClases(id: "1", title: "Maths", image: "maths", date: "13:00", teacher: "Pedro")
        let history = MClases(id: "2", title: "History", image: "history", date: "16:00", teacher: "Jesus")
        
        
        studentsRepository.create(a: carlos)
        studentsRepository.create(a: joaquin)
        studentsRepository.create(a: sara)
        studentsRepository.create(a: manuel)
        
        clasesRepository.create(a: maths)
        clasesRepository.create(a: history)



    }

}
