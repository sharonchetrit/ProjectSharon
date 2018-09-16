//
//  LoginViewController.swift
//  ProjectSharon
//
//  Created by Sharon Chetrit on 05/09/2018.
//  Copyright © 2018 Sharon Chetrit. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.borderWidth = 2
        loginButton.layer.cornerRadius = 10
        loginButton.layer.borderColor = UIColor.black.cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTxtField.text!, password: passwordTxtField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("login successful")
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
            
        }
    }
    

