//
//  ViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let login = "User"
    private let password = "123123"
    
    // MARK: - Override methods
    override func viewDidLoad() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else { return }
        welcomeVC.userNameLabel = userNameTF.text
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInPressed() {
        if userNameTF.text != login || passwordTF.text != password {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTF)
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Oops!",
                  message: "Your name is \(login)",
                  textField: userNameTF)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!",
                  message: "Your password is \(password)",
                  textField: passwordTF)
    }
    
    
    // MARK: - Private Methods
    private func showAlert(title: String,
                           message: String,
                           textField: UITextField) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
