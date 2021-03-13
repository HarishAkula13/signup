//
//  SignUpViewController.swift
//  Sign_Up
//
//  Created by venky N on 21/02/21.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet var emailTextField:UITextField!
    @IBOutlet var passwordTextField:UITextField!
    @IBOutlet var registerBtn:UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
      
//     navigationItem.hidesBackButton = true
       
    }
    

    @IBAction func registerPressed(_ sender: UIButton) {
        if  let email = emailTextField.text ,let password = passwordTextField.text {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let e = error{
                print(e.localizedDescription)
            }else {
              // Navigate to the chat view controller
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                
                
                
            }
        }
        }
    }
   

}
