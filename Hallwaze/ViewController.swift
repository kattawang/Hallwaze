//
//  ViewController.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 2/12/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func a1(_ sender: UITextField) {
        
    }
    
    @IBAction func a2(_ sender: UITextField) {
    }
    
    @IBAction func a3(_ sender: UITextField) {
    }
    
    @IBAction func a5(_ sender: UITextField) {
    }
    
    @IBAction func a6(_ sender: UITextField) {
    }
    
    @IBAction func a7(_ sender: UITextField) {
    }
    
    @IBAction func b4(_ sender: UITextField) {
    }
    
    @IBAction func b1(_ sender: UITextField) {
    }
    
    @IBAction func b2(_ sender: UITextField) {
    }
    
    @IBAction func b8(_ sender: UITextField) {
    }
    
    @IBAction func b5(_ sender: UITextField) {
    }
    
    @IBAction func b6(_ sender: UITextField) {
    }
    
    @IBAction func c3(_ sender: UITextField) {
    }
    
    @IBAction func c4(_ sender: UITextField) {
    }
    
    @IBAction func c1(_ sender: UITextField) {
    }
    
    @IBAction func c7(_ sender: UITextField) {
    }
    
    @IBAction func c8(_ sender: UITextField) {
    }
    
    @IBAction func c5(_ sender: UITextField) {
    }
    
    @IBAction func d2(_ sender: UITextField) {
    }
    
    @IBAction func d3(_ sender: UITextField) {
    }
    
    @IBAction func d4(_ sender: UITextField) {
    }
    
    @IBAction func d6(_ sender: UITextField) {
    }
    
    @IBAction func d7(_ sender: UITextField) {
    }
    
    @IBAction func d8(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var defaults = UserDefaults.standard
        
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a2, forKey: "a1")
        defaults.setValue(a3, forKey: "a1")
        defaults.setValue(a5, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a1, forKey: "a1")
        
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
    

}

