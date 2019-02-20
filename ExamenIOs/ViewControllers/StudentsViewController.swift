//
//  StudentsViewController.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit

class StudentsViewController: UIViewController {

    //array donde se guardan todos los estudiantes
    internal var students:[MStudents] = []
    @IBOutlet weak var studentsCollectionView: UICollectionView!
    
    
    init(){
        super.init(nibName: "StudentsViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "students")
        self.title = NSLocalizedString("Students", comment: "")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellStudents()
        students = Session.shared.studentsRepository.getAll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //coge la celda correspondiente
    internal func registerCellStudents(){
        let nib = UINib(nibName: "StudentsCollectionViewCell", bundle: nil)
        studentsCollectionView.register(nib, forCellWithReuseIdentifier: "StudentsCollectionViewCell")
    }

}

extension StudentsViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    //numero de columnas, segun alumnos haya
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return students.count
    }
    
    //seteamos los valores a la celda
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = studentsCollectionView.dequeueReusableCell(withReuseIdentifier: "StudentsCollectionViewCell", for: indexPath) as! StudentsCollectionViewCell
            cell.nameLbl.text = students[indexPath.row].name
            cell.dateLbl.text = students[indexPath.row].date
            cell.curseLbl.text = students[indexPath.row].curse
            if let image = students[indexPath.row].image{
                cell.imgStudents.image = UIImage(named: image)
            }
            return cell
        }
    
            
    
}

