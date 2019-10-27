//
//  SecondViewController.swift
//  ExampleSegues
//
//  Created by Nurudeen Ajayi on 27/10/2019.
//  Copyright © 2019 Nurudeen Ajayi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var textPassedOver : String? //optional string
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //passing the data coming from the previous page after the button is been clicked
        //we are able to do this because once the previous segue that link to this screen is been pressed, weve captured the data we needed from there
        label.text = textPassedOver
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
