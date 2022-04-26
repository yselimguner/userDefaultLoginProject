//
//  ViewController.swift
//  UserDefaultLoginProject
//
//  Created by Yavuz Güner on 26.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var userTextfield: UITextField!
    let data = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userName = data.string(forKey: "userName") ?? "Empty"
        let password = data.string(forKey: "password") ?? "Empty"
        
        if userName != "Empty" &&  password != "Empty" {
            
            performSegue(withIdentifier: "enterToMainPage", sender: nil)
        }

    }

    @IBAction func loginButton(_ sender: Any) {
        
        if let userName = userTextfield.text , let password = passwordTextfield.text {
            if userName == "admin" && password == "123456"{
                data.set(userName, forKey: "userName")
                data.set(password, forKey: "password")
                
                performSegue(withIdentifier: "enterToMainPage", sender: nil)
            }
        } else {
            print("Wrong username or password")
        }
        
    }
    
}

