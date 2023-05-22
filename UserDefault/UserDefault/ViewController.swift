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
       UserDefaults.standard.set(nameTextField.self, forKey: "UserData")
        
    }
    func getData()
    {
        nameLabel.text = UserDefaults.standard.string(forKey: "UserData")
    }

    @IBAction func button(_ sender: Any) {
        
        var alert = UIAlertController(title: "Alert", message: "Are You Sure?", preferredStyle: .alert)
        var action = UIAlertAction(title: "Yes", style: .default)
        
    }
}

