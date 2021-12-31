//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet weak var mainWelcomeLabel: UILabel!
    
    var userNameLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
            mainWelcomeLabel.text = "Welcome, \(userNameLabel)!"
    }
}
