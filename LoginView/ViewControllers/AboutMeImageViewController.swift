//
//  AboutMeImageViewController.swift
//  LoginView
//
//  Created by Onix qq on 2.01.22.
//

import UIKit

class AboutMeImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: user.person.image)
    }
}
