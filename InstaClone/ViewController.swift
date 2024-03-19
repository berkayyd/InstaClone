//
//  ViewController.swift
//  InstaClone
//
//  Created by Berkay Demir on 17.03.2024.
//

import UIKit
import FirebaseCore

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signInClicked(_ sender: Any) {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
    }
    
}

