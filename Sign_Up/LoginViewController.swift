//
//  LoginViewController.swift
//  Sign_Up
//
//  Created by venky N on 21/02/21.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet var emailTextField:UITextField!
    @IBOutlet var passwordTextField:UITextField!
    @IBOutlet var loginBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       
//     navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text,let password = passwordTextField.text{
      
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
          
            if let e = error{
                print(e.localizedDescription)
            }else{
                self.performSegue(withIdentifier: "LoginToChat", sender: self)
            }
        }
        }
    }
    
    
}
