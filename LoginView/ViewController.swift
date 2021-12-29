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
    
    let alert = UIAlertController()
    let okAction = UIAlertAction()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forgotUserNamePressed() {
        showAlert("Oops!", "Your name is User", userNameTF)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert("Oops!", "Your password is 123123", passwordTF)
    }
    
    private func showAlert(_ title: String, _ message: String, _ textField: UITextField!) {
        let alert = UIAlertController(title: title, message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

