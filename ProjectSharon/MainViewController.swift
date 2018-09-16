//
//  MainViewController.swift
//  ProjectSharon
//
//  Created by Sharon Chetrit on 05/09/2018.
//  Copyright © 2018 Sharon Chetrit. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
    @IBAction func logOutButtonPressed(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
        } catch {
            print("there was a probleme signing out")
        }
        
        guard(navigationController?.popToRootViewController(animated: true))
            != nil
            else {
                print("You are sign out")
                return
        }
    }
    

}
