//
//  ViewController.swift
//  lab_login
//
//  Created by Thenea on 4/23/19.
//  Copyright © 2019 Thenea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fotgotUserName: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func usernameTextField(_ sender: Any) {
    }
    @IBOutlet weak var userName: UITextField!
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPassword)
    }
    @IBAction func forgotUserNameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: fotgotUserName)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == fotgotUserName {
            segue.destination.navigationItem.title = "Forgot User Name"
        } else {
        segue.destination.navigationItem.title = usernameTextField.text
        }
    }
}

