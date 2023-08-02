//
//  GreenVC.swift
//  03_06_stoplight
//
//  Created by The Duke on 7/16/23.
//

import UIKit

class GreenVC: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!               // outlet for label on greenVC
    @IBOutlet var foodLabel: UILabel!               // outlet for label on greenVC
    
    var name: String = ""                           // variable to receive segue data
    var food: String = ""                           // variable to receive segue data

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(name)"            // adding segue data to label
        foodLabel.text = "Favorite Food: \(food)"   // adding segue data to label
    } // end viewDidLoad()
    
} // end GreenVC
