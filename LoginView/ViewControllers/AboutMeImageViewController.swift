//
//  AboutMeImageViewController.swift
//  LoginView
//
//  Created by Onix qq on 2.01.22.
//

import UIKit

class AboutMeImageViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: user.person.image)
    }
}
