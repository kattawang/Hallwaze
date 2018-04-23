//
//  ViewController.swift
//  Hallwaze
//
//  Created by Alimah Granieri (student LM) on 2/12/18.
//  Copyright © 2018 Alimah Granieri (student LM). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    private var todoItems = [ToDoItem]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "To-Do"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(ViewController.didTapAddItemButton(_:)))
        
        // Setup a notification to let us know when the app is about to close,
        // and that we should store the user items to persistence. This will call the
        // applicationDidEnterBackground() function in this class
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(UIApplicationDelegate.applicationDidEnterBackground(_:)),
            name: NSNotification.Name.UIApplicationDidEnterBackground,
            object: nil)
        
        do
        {
            // Try to load from persistence
            self.todoItems = try [ToDoItem].readFromPersistence()
        }
        catch let error as NSError
        {
            if error.domain == NSCocoaErrorDomain && error.code == NSFileReadNoSuchFileError
            {
                NSLog("No persistence file found, not necesserially an error...")
            }
            else
            {
                let alert = UIAlertController(
                    title: "Error",
                    message: "Could not load the to-do items!",
                    preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                
                NSLog("Error loading from persistence: \(error)")
            }
        }
    }
    
    @objc
    public func applicationDidEnterBackground(_ notification: NSNotification)
    {
        do
        {
            try todoItems.writeToPersistence()
        }
        catch let error
        {
            NSLog("Error writing to persistence: \(error)")
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didTapAddItemButton(_ sender: UIBarButtonItem)
    {
        // Create an alert
        let alert = UIAlertController(
            title: "New to-do item",
            message: "Insert the title of the new to-do item:",
            preferredStyle: .alert)
        
        // Add a text field to the alert for the new item's title
        alert.addTextField(configurationHandler: nil)
        
        // Add a "cancel" button to the alert. This one doesn't need a handler
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        // Add a "OK" button to the alert. The handler calls addNewToDoItem()
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:
            { (_) in
                // Get the title the user inserted, but only if it is not an empty string
                if let title = alert.textFields?[0].text, title.characters.count > 0
                {
                    self.addNewToDoItem(title: title)
                }
        }))
        
        // Present the alert to the user
        self.present(alert, animated: true, completion: nil)
    }
    
    private func addNewToDoItem(title: String)
    {
        // The index of the new item will be the current item count
        let newIndex = todoItems.count
        
        // Create new item and add it to the todo items list
        todoItems.append(ToDoItem(title: title))
        
        // Tell the table view a new row has been created
        tableView.insertRows(at: [IndexPath(row: newIndex, section: 0)], with: .top)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return todoItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_todo", for: indexPath)
        
        if indexPath.row < todoItems.count
        {
            let item = todoItems[indexPath.row]
            cell.textLabel?.text = item.title
            
            let accessory: UITableViewCellAccessoryType = item.done ? .checkmark : .none
            cell.accessoryType = accessory
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row < todoItems.count
        {
            let item = todoItems[indexPath.row]
            item.done = !item.done
            
            tableView.reloadRows(at: [indexPath], with: .automatic)
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if indexPath.row < todoItems.count
        {
            todoItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
        }
    }

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
    
    @IBOutlet weak var times: UILabel!
    @IBOutlet weak var setList: UILabel!
    @IBOutlet weak var letterDay: UILabel!
    @IBOutlet weak var date: UILabel!
    var dailyschedule: DailySchedule!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func dayLengthChoice(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            dailyschedule.times(choice: 0)
            break
        case 1:
            dailyschedule.times(choice: 1)
            break
        case 2:
            dailyschedule.times(choice: 2)
            dailyschedule.sets.remove(at: 3)
            break
        default:
            dailyschedule.times(choice: 3)
            break
        }
        times.numberOfLines = dailyschedule.times.count
        times.text = dailyschedule.times.joined(separator: "\n")
    }
    @IBAction func letterDayChoice(_ sender: UIStepper) {
        if sender.value == 0{
            letterDay.text = "A"
            dailyschedule.sets(day: 0)
        }
        else if sender.value == 1{
            letterDay.text = "B"
            dailyschedule.sets(day: 1)
        }
        else if sender.value == 2{
            letterDay.text = "C"
            dailyschedule.sets(day: 2)
        }
        else{
            letterDay.text = "D"
            dailyschedule.sets(day: 3)
        }
        setList.numberOfLines = dailyschedule.sets.count
        setList.text = dailyschedule.sets.joined(separator: "\n")

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dailyschedule = DailySchedule()
        
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
        
        let defaults = UserDefaults.standard
        
        defaults.setValue(a1, forKey: "a1")
        defaults.setValue(a2, forKey: "a2")
        defaults.setValue(a3, forKey: "a3")
        defaults.setValue(a5, forKey: "a5")
        defaults.setValue(a6, forKey: "a6")
        defaults.setValue(a7, forKey: "a7")
    }

}

