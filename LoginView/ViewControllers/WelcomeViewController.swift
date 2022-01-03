//
//  WelcomeViewController.swift
//  LoginView
//
//  Created by Onix qq on 29.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var mainWelcomeLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        mainWelcomeLabel.text = "Welcome, \(user.person.fullName)!"
    }
}
