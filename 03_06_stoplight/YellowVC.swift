//
//  yellowVC.swift
//  03_06_stoplight
//
//  Created by The Duke on 7/16/23.
//

import UIKit

class yellowVC: UIViewController {
    
    @IBOutlet var yellowLabel: UILabel!             // outlet for label on yellowVC
    
    var labelText: String = " "                     // variable to receive segue data

    override func viewDidLoad() {
        super.viewDidLoad()
        yellowLabel.text = "Hello, \(labelText)"    // adding segue data to label
    } // end viewDidLoad()

} // end yellowVC
