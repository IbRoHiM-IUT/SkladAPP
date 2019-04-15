//
//  LoginViewController.swift
//  Sklad App
//
//  Created by Ibrokhim Movlonov on 4/1/19.
//  Copyright © 2019 Ibrokhim Movlonov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpProperties()
    }
    
    func setUpProperties() {
        //Textfields
        username.layer.cornerRadius = username.layer.frame.height/2
        password.layer.cornerRadius = password.layer.frame.height/2
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        
    }
    
    
}
