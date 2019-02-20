//
//  NotesCollectionViewCell.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit

class NotesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var imgNotes: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var lastnameLbl: UILabel!
    @IBOutlet weak var gradeLbl: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        view.layer.cornerRadius = 20.0
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        view.layer.shadowRadius = 12.0
        view.layer.shadowOpacity = 0.7
    }

}
