//
//  ViewController.swift
//  BMI
//
//  Created by Release on 2016. 3. 30..
//  Copyright © 2016년 20101689. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var weight : Double?
    var height : Double?
    
    var bmi: Double? {
        get {
            if (weight != nil) && (height != nil){
                return weight! / (height! * height!)
            } else {
                return nil
            }
        }
    }
    

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
    
    //Update UI
    func updateUI() {
        if let b = self.bmi {
            self.bmiLabel.text = String (format: "%4.1f", b)
        }
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        
        guard let txt: String = textField.text else{
            return
        }
        
        func conv(numString: String) -> Double? {
            let result : Double? = NSNumberFormatter().numberFromString(numString)?.doubleValue
            return result
        }// End of conv
        
        if let txt = textField.text {
            switch(textField){
            case heightTextField:
                self.height = conv(txt)
            case weightTextFleid:
                self.weight = conv(txt)
            default:
                print(" Something Wrong")
            }// End of switch
            
            updateUI()
            
        }// End of if
        
    }// End of func textFieldDidEndEditing
    
}// End of whole function

