//
//  ViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = User.getUser()
    
    // MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController
        else { return }
        guard let viewControllers = tabBarController.viewControllers
        else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController
                        as? UINavigationController {
                let aboutMeVC = navigationVC.topViewController
                as! AboutMeViewController
                aboutMeVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInPressed() {
        if userNameTF.text != user.login || passwordTF.text != user.password {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTF)
        }
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Oops!",
                  message: "Your name is \(user.login)",
                  textField: userNameTF)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!",
                  message: "Your password is \(user.password)",
                  textField: passwordTF)
    }
    
    // MARK: - Public Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
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
