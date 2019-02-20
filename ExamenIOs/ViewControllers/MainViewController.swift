//
//  MainViewController.swift
//  ExamenIOs
//
//  Created by JORGE VAZQUEZ REQUEJO on 20/2/19.
//  Copyright © 2019 JORGE VAZQUEZ REQUEJO. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var utadImg: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubtitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var btnAccess: UIButton!
    
    //creacion main en el tab bar
    init(){
        super.init(nibName: "MainViewController", bundle: nil)
        self.tabBarItem.image = UIImage(named: "utad")
        self.title = NSLocalizedString("U-tad", comment: "")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //link a la pagina de la utad
    @IBAction func utad(sender: UIButton) {
        if let url = NSURL(string: "https://www.u-tad.com/conoce-u-tad/") {
            UIApplication.shared.openURL(url as URL)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnAccess.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
