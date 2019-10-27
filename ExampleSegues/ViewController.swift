//
//  ViewController.swift
//  ExampleSegues
//
//  Created by Nurudeen Ajayi on 27/10/2019.
//  Copyright © 2019 Nurudeen Ajayi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


//    PERFORM SEGUE WHEN THIS BUTTON IS PRESSED
    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    //this is a builtin swift method that gets executed before every segue gets triggered
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondScreen" {
            //when a user clicks the button from the first screen
            //while typing segue.destination the intellisence tells us that segue.destination is of type UIViewController
//            which means that we could type cast or overite the UIViewController as the controller we want (SecondViewController)
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = textField.text
        }
    }
}

