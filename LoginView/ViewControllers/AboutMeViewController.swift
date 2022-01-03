//
//  AboutMeViewController.swift
//  LoginView
//
//  Created by Onix qq on 2.01.22.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!
    @IBOutlet weak var aboutMeTV: UITextView!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
        aboutMeTV.text = user.person.description
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutMeImageVC = segue.destination as? AboutMeImageViewController
        else { return }
        aboutMeImageVC.user = user
    }
}
