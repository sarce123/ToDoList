//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by  Scholar on 7/19/21.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelagate = UIApplication.shared.delegate as? AppDelegate else{
            return
        }
        
        let context = appDelagate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelagate.saveContext()
        
        
        navigationController?.popViewController(animated: true)
        
        // let toDo = ToDo()
        
        //if let titleText = titleTextField.text {
            //toDo.name = titleText
            //toDo.important = importantSwitch.isOn
        //}
        
        //update toDos array with new object
        //previousVC.toDos.append(toDo)
        //previousVC.tableView.reloadData()
        //navigationController?.popViewController(animated: true)
        
    }
    

    }
    


