//
//  ViewController2.swift
//  UserDefaultLoginProject
//
//  Created by Yavuz Güner on 26.04.2022.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    let data = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

       //Geri tuşunu kaldırıcaz
        navigationItem.hidesBackButton = true
        
        let userName = data.string(forKey: "userName") ?? "Empty"
        
        resultLabel.text = userName
        
        let password = data.string(forKey: "password") ?? "Empty"
        
        passwordLabel.text = password
    }
    
    @IBAction func exitButton(_ sender: Any) {
        
        data.removeObject(forKey: "userName")
        data.removeObject(forKey: "password")
        
        //Ana ekrana atacak bizi
        exit(-1)
    }
}
