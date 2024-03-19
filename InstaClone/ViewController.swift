//
//  ViewController.swift
//  InstaClone
//
//  Created by Berkay Demir on 17.03.2024.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func signInClicked(_ sender: Any) {
        if emailText.text != "" && passwordText.text != "" {
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { authData , error in
                if error != nil {
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "email/password?")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        } else {
            makeAlert(titleInput: "Error", messageInput: "email/password?")
        }
    }
    
    @IBAction func signUpClicked(_ sender: Any) {
        
        if emailText.text != "" && passwordText.text != "" {
            
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { authData, error in
                
                if error != nil {
                    self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "email/password?")
                }else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            }
            
        } else {
            makeAlert(titleInput: "Error!", messageInput: "email/password?")
        }
        
    }
    
    func makeAlert(titleInput : String , messageInput: String) {
        let alert = UIAlertController(title: titleInput , message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}

