//
//  ViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forgotUserNamePressed() {
        showAlert(with: "Oops!", and: "Your name is User")
    }
    
    @IBAction func forgotPasswordPressed() {
    }
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true) //sfklgksfg
    }
    
}

