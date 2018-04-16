//
//  ViewController.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 2/12/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var a1: UITextField!
    
    @IBOutlet weak var a2: UITextField!
    
    @IBOutlet weak var a3: UITextField!
    
    @IBOutlet weak var a5: UITextField!
    
    @IBOutlet weak var a6: UITextField!
    
    @IBOutlet weak var a7: UITextField!
    
    @IBOutlet weak var b4: UITextField!
    
    @IBOutlet weak var b1: UITextField!
    
    @IBOutlet weak var b2: UITextField!
    
    @IBOutlet weak var b8: UITextField!
    
    @IBOutlet weak var b5: UITextField!
    
    @IBOutlet weak var b6: UITextField!
    
    @IBOutlet weak var c3: UITextField!
    
    @IBOutlet weak var c4: UITextField!
    
    @IBOutlet weak var c1: UITextField!
    
    @IBOutlet weak var c7: UITextField!
    
    @IBOutlet weak var c8: UITextField!
    
    @IBOutlet weak var c5: UITextField!
    
    @IBOutlet weak var d2: UITextField!
    
    @IBOutlet weak var d3: UITextField!
    
    @IBOutlet weak var d4: UITextField!
    
    @IBOutlet weak var d6: UITextField!
    
    @IBOutlet weak var d7: UITextField!
    
    @IBOutlet weak var d8: UITextField!
    
    @IBOutlet weak var letterDay: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func dayLengthChoice(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            break
        case 1:
            break
        case 2:
            break
        default:
            break
        }
    }
    @IBAction func letterDayChoice(_ sender: UIStepper) {
        if sender.value == 0{
            letterDay.text = "A"
        }
        else if sender.value == 1{
            letterDay.text = "B"
        }
        else if sender.value == 2{
            letterDay.text = "C"
        }
        else{
            letterDay.text = "D"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        a1.delegate = self
//        a2.delegate = self
//        a3.delegate = self
//        a5.delegate = self
//        a6.delegate = self
//        a7.delegate = self
//        b4.delegate = self
//        b1.delegate = self
//        b2.delegate = self
//        b8.delegate = self
//        b5.delegate = self
//        b6.delegate = self
//        c3.delegate = self
//        c4.delegate = self
//        c1.delegate = self
//        c7.delegate = self
//        c8.delegate = self
//        c5.delegate = self
//        d2.delegate = self
//        d3.delegate = self
//        d4.delegate = self
//        d6.delegate = self
//        d7.delegate = self
//        d8.delegate = self
        
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        date.text = formatter.string(from: Date())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        var defaults = UserDefaults.standard
        
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a2, forKey: "a2")
        defaults.setValue(a3, forKey: "a3")
        defaults.setValue(a5, forKey: "a5")
        defaults.setValue(a6, forKey: "a6")
        defaults.setValue(a7, forKey: "a7")
    }

}

