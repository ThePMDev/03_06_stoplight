//
//  redVC.swift
//  03_06_stoplight
//
//  Created by The Duke on 7/16/23.
//

import UIKit

class redVC: UIViewController {
    
    @IBOutlet var nameText: UITextField!
    @IBOutlet var foodText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    } // end viewDidLoad()
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){}

    @IBAction func tappedToYellow(_ sender: Any) {
        performSegue(withIdentifier: "toYellow", sender: nil)
    }// end tappedToYellow()
    
    @IBAction func tappedToGreen(_ sender: Any) {
        performSegue(withIdentifier: "toGreen", sender: nil)
    } // end tappedToGreen()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toYellow" {                 // road
            let destVC = segue.destination as? yellowVC     // destination
            if let name = nameText.text {                   // check data
                destVC?.labelText = name                    // send data
            } // end if let
        } // end if
        
        if segue.identifier == "toGreen" {                      // road
            let destVC = segue.destination as? GreenVC          // destination
            if let name = nameText.text {destVC?.name = name}   // data
            if let food = foodText.text {destVC?.food = food}
        } // end if
    } // end override func
} // end ViewController
