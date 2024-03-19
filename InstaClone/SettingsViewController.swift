//
//  SettingsViewController.swift
//  InstaClone
//
//  Created by Berkay Demir on 19.03.2024.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutClicked(_ sender: Any) {
        print("hey I'm here")
        performSegue(withIdentifier: "toViewController", sender: nil)
    }
    
}
