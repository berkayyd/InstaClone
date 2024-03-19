//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Berkay Demir on 19.03.2024.
//

import UIKit
import FirebaseAuth

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        }catch {
            print("ERROR!")
        }
    }
    
}
