//
//  ViewController.swift
//  UserDefault
//
//  Created by Mac on 21/05/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
func userData()
    {
        UserDefaults.standard.set(nameTextField.text, forKey: "UserData")
        
    }
    

    @IBAction func button(_ sender: Any) {
        userData()
        var alert = UIAlertController(title: "Alert", message: "Are You Sure?", preferredStyle: .alert)
        var action = UIAlertAction(title: "Yes", style: .default) { (action) in
            let val = UserDefaults.standard.string(forKey: "UserData")
            if let val{
                self.nameLabel.text = val
            }
            else
            {
                print("No Value")
            }
        }
        
        alert.addAction(action)
        present(alert, animated: true)
        
    }
}

