//
//  NotesViewController.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {

    //array de estudiantes
    @IBOutlet weak var notesCollectionView: UICollectionView!
    internal var students:[MStudents] = []

    //rellenamos el array de estudiantes con lo que hay en la base de datos
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellNotes()
        students = Session.shared.studentsRepository.getAll()
        title = "Grades"
        // Do any additional setup after loading the view.
    }

    //registramos la celda correspondiente
    internal func registerCellNotes(){
        let nib = UINib(nibName: "NotesCollectionViewCell", bundle: nil)
        notesCollectionView.register(nib, forCellWithReuseIdentifier: "NotesCollectionViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension NotesViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    //returnea tantas columnas como estudiantes hay
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return students.count
    }
    
    //metemos los datos en la celda
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = notesCollectionView.dequeueReusableCell(withReuseIdentifier: "NotesCollectionViewCell", for: indexPath) as! NotesCollectionViewCell
        
        cell.gradeLbl.text = students[indexPath.row].grade
        cell.idLbl.text = students[indexPath.row].id
        cell.nameLbl.text = students[indexPath.row].name
        cell.lastnameLbl.text = students[indexPath.row].lastname
        if let image = students[indexPath.row].image{
            cell.imgNotes.image = UIImage(named: image)
        }
        return cell
    }
}
