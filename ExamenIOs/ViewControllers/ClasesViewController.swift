//
//  ClasesViewController.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit

class ClasesViewController: UIViewController {

    //array de clases
    internal var clases:[MClases] = []
    @IBOutlet weak var clasesCollectionView: UICollectionView!
    
    init(){
        super.init(nibName: "ClasesViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "clases")
        self.title = NSLocalizedString("Clases", comment: "")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    internal func registerCellClases(){
        let nib = UINib(nibName: "ClasesCollectionViewCell", bundle: nil)
        clasesCollectionView.register(nib, forCellWithReuseIdentifier: "ClasesCollectionViewCell")
    }
    
    //rellenamos el array con el singleton
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellClases()
        clases = Session.shared.clasesRepository.getAll()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension ClasesViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    //tantas filas como clases hay
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return clases.count
    }
    
    //rellenamos la celda
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clasesCollectionView.dequeueReusableCell(withReuseIdentifier: "ClasesCollectionViewCell", for: indexPath) as! ClasesCollectionViewCell
        cell.titleLbl.text = clases[indexPath.row].title
        cell.dateLbl.text = clases[indexPath.row].date
        cell.teacherLbl.text = clases[indexPath.row].teacher
        if let image = clases[indexPath.row].image{
            cell.imgClases.image = UIImage(named: image)
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let notesVC = NotesViewController()
        navigationController?.pushViewController(notesVC, animated: true)
    }
    
}
