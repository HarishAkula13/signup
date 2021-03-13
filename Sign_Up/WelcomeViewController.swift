//
//  ViewController.swift
//  Sign_Up
//
//  Created by venky N on 21/02/21.
//

import UIKit


class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var loginBtn:UIButton!
    @IBOutlet var signUpBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//        welcomeLabel.text = "Welcome!"
        
        welcomeLabel.text = ""
         var char = 0.0
         let titlText = "Welcome!"
        
         for letter in titlText{
        
            Timer.scheduledTimer(withTimeInterval: 0.1 * char, repeats: false){ (timer) in
                self.welcomeLabel.text?.append(letter)
            }
            char += 1
        
    }

    

}

}
