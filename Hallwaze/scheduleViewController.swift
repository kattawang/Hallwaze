//
//  scheduleViewController.swift
//  Hallwaze
//
//  Created by Katherine Wang (student LM) on 4/26/18.
//  Copyright © 2018 Katherine Wang (student LM). All rights reserved.
//

import UIKit

class scheduleViewController: UIViewController, UITextFieldDelegate {
    
    var defaults = UserDefaults.standard
    
    
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
    
    @IBAction func clearSchedule(_ sender: UIButton) {
        defaults.removeObject(forKey: "a1")
        defaults.removeObject(forKey: "a2")
        defaults.removeObject(forKey: "a3")
        defaults.removeObject(forKey: "a5")
        defaults.removeObject(forKey: "a6")
        defaults.removeObject(forKey: "a7")
        defaults.removeObject(forKey: "b4")
        defaults.removeObject(forKey: "b1")
        defaults.removeObject(forKey: "b2")
        defaults.removeObject(forKey: "b8")
        defaults.removeObject(forKey: "b5")
        defaults.removeObject(forKey: "b6")
        defaults.removeObject(forKey: "c3")
        defaults.removeObject(forKey: "c4")
        defaults.removeObject(forKey: "c1")
        defaults.removeObject(forKey: "c7")
        defaults.removeObject(forKey: "c8")
        defaults.removeObject(forKey: "c5")
        defaults.removeObject(forKey: "d2")
        defaults.removeObject(forKey: "d3")
        defaults.removeObject(forKey: "d4")
        defaults.removeObject(forKey: "d6")
        defaults.removeObject(forKey: "d7")
        defaults.removeObject(forKey: "d8")
        
        super.loadView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (defaults.value(forKey: "a1")) != nil {
            a1.text = defaults.value(forKey: "a1") as? String
        }
        if (defaults.value(forKey: "a2")) != nil {
            a2.text = defaults.value(forKey: "a2") as? String
        }
        if (defaults.value(forKey: "a3")) != nil {
            a3.text = defaults.value(forKey: "a3") as? String
        }
        if (defaults.value(forKey: "a5")) != nil {
            a5.text = defaults.value(forKey: "a5") as? String
        }
        if (defaults.value(forKey: "a6")) != nil {
            a6.text = defaults.value(forKey: "a6") as? String
        }
        if (defaults.value(forKey: "a7")) != nil {
            a7.text = defaults.value(forKey: "a7") as? String
        }
        
        
        if (defaults.value(forKey: "b4")) != nil {
            b4.text = defaults.value(forKey: "b4") as? String
        }
        if (defaults.value(forKey: "b1")) != nil {
            b1.text = defaults.value(forKey: "b1") as? String
        }
        if (defaults.value(forKey: "b2")) != nil {
            b2.text = defaults.value(forKey: "b2") as? String
        }
        if (defaults.value(forKey: "b8")) != nil {
            b8.text = defaults.value(forKey: "b8") as? String
        }
        if (defaults.value(forKey: "b5")) != nil {
            b5.text = defaults.value(forKey: "b5") as? String
        }
        if (defaults.value(forKey: "b6")) != nil {
            b6.text = defaults.value(forKey: "b6") as? String
        }
        
        
        
        
        if (defaults.value(forKey: "c3")) != nil {
            c3.text = defaults.value(forKey: "c3") as? String
        }
        if (defaults.value(forKey: "c4")) != nil {
            c4.text = defaults.value(forKey: "c4") as? String
        }
        if (defaults.value(forKey: "c1")) != nil {
            c1.text = defaults.value(forKey: "c1") as? String
        }
        if (defaults.value(forKey: "c7")) != nil {
            c7.text = defaults.value(forKey: "c7") as? String
        }
        if (defaults.value(forKey: "c8")) != nil {
            c8.text = defaults.value(forKey: "c8") as? String
        }
        if (defaults.value(forKey: "c5")) != nil {
            c5.text = defaults.value(forKey: "c5") as? String
        }
        
        
        
        
        if (defaults.value(forKey: "d2")) != nil {
            d2.text = defaults.value(forKey: "d2") as? String
        }
        if (defaults.value(forKey: "d3")) != nil {
            d3.text = defaults.value(forKey: "d3") as? String
        }
        if (defaults.value(forKey: "d4")) != nil {
            d4.text = defaults.value(forKey: "d4") as? String
        }
        if (defaults.value(forKey: "d6")) != nil {
            d6.text = defaults.value(forKey: "d6") as? String
        }
        if (defaults.value(forKey: "d7")) != nil {
            d7.text = defaults.value(forKey: "d7") as? String
        }
        if (defaults.value(forKey: "d8")) != nil {
            d8.text = defaults.value(forKey: "d8") as? String
        }
        
        
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        defaults.setValue(a1.text, forKey: "a1")
        defaults.setValue(a2.text, forKey: "a2")
        defaults.setValue(a3.text, forKey: "a3")
        defaults.setValue(a5.text, forKey: "a5")
        defaults.setValue(a6.text, forKey: "a6")
        defaults.setValue(a7.text, forKey: "a7")
        
        defaults.setValue(b4.text, forKey: "b4")
        defaults.setValue(b1.text, forKey: "b1")
        defaults.setValue(b2.text, forKey: "b2")
        defaults.setValue(b8.text, forKey: "b8")
        defaults.setValue(b5.text, forKey: "b5")
        defaults.setValue(b6.text, forKey: "b6")
        
        defaults.setValue(c3.text, forKey: "c3")
        defaults.setValue(c4.text, forKey: "c4")
        defaults.setValue(c1.text, forKey: "c1")
        defaults.setValue(c7.text, forKey: "c7")
        defaults.setValue(c8.text, forKey: "c8")
        defaults.setValue(c5.text, forKey: "c5")
        
        defaults.setValue(d2.text, forKey: "d2")
        defaults.setValue(d3.text, forKey: "d3")
        defaults.setValue(d4.text, forKey: "d4")
        defaults.setValue(d6.text, forKey: "d6")
        defaults.setValue(d7.text, forKey: "d7")
        defaults.setValue(d8.text, forKey: "d8")
        
        
        
        
    }
    
}


