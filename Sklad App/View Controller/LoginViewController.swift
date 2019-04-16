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
        password.isSecureTextEntry = true
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let user = "admin"
        let pass = "admin"
        
        if user == username.text! {
            if pass == password.text! {
                
                let vc = storyboard?.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
                present(vc,animated: true, completion: nil)
                
                username.text = ""
                password.text = ""
            } else {
                let ac = UIAlertController(title: "Incorrect Password !!!", message: nil, preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "OK", style: .default))
                present(ac, animated: true)
            }
        } else {
            let ac = UIAlertController(title: "Incorrect Username !!!", message: nil, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    
}
