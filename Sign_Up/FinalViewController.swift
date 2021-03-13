//
//  FinalViewController.swift
//  Sign_Up
//
//  Created by venky N on 21/02/21.
//

import UIKit
import Firebase

class FinalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        title = "Chat"
     navigationItem.hidesBackButton = true
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
    }
    

}
