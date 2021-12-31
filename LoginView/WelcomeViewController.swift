//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var mainWelcomeLabel: UILabel!
    
    var userNameLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userNameLabel = userNameLabel {
            mainWelcomeLabel.text = "Welcome, \(userNameLabel)!"
        }
    }
}
