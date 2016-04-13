//
//  ViewController.swift
//  BMI
//
//  Created by Release on 2016. 3. 30..
//  Copyright © 2016년 20101689. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextFleid: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // inspect which UITextField is selectd
        // tell the textField to resign as the first responder
        // tell the textField to stop receiving keyboard input
        textField.resignFirstResponder()
        
        return true
    }


}

