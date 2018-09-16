//
//  ViewController.swift
//  ProjectSharon
//
//  Created by Sharon Chetrit on 02/09/2018.
//  Copyright © 2018 Sharon Chetrit. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        loginButton.layer.borderWidth = 2
        loginButton.layer.cornerRadius = 10
        loginButton.layer.borderColor = UIColor.black.cgColor
        
        registerButton.layer.borderWidth = 2
        registerButton.layer.cornerRadius = 10
        registerButton.layer.borderColor = UIColor.black.cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

