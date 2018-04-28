//
//  scheduleViewController.swift
//  Hallwaze
//
//  Created by Katherine Wang (student LM) on 4/26/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class scheduleViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var a1: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        a1.delegate = self
        
        if (defaults.value(forKey: "a1")) != nil {
            a1.text = defaults.value(forKey: "a1") as! String
        }
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        defaults.setValue(a1.text, forKey: "a1")
        
    }

}
