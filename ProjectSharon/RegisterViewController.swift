//
//  RegisterViewController.swift
//  ProjectSharon
//
//  Created by Sharon Chetrit on 05/09/2018.
//  Copyright © 2018 Sharon Chetrit. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FacebookLogin
import FBSDKLoginKit


class RegisterViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var mailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        registerButton.layer.borderWidth = 2
        registerButton.layer.cornerRadius = 10
        registerButton.layer.borderColor = UIColor.black.cgColor
        
        
        let loginButton = FBSDKLoginButton()
        loginButton.center = self.view.center;
        self.view.addSubview(loginButton);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: mailTxtField.text!, password: passwordTxtField.text!) { (user, error) in if error != nil {
            print(error!)
        } else {
            print("registration successful")
            self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
    }
    

}
