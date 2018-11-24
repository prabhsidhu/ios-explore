//
//  SIgnInVC.swift
//  Explore
//
//  Created by Prabhdeep Kaur on 11/14/18.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth

class SIgnInVC: UIViewController {

  
    @IBOutlet var emailTF: UITextField!
     @IBOutlet var passwordTF: UITextField!
    @IBAction func btnLogin(_ sender: UIButton) {
        guard let email = emailTF.text,
            email != "",
            let password = passwordTF.text,
            password != ""
            else {
                AlertController.showAlert(self, title: "Missing Info", message: "Please fill out all required fields")
                return
        }
        
        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
            guard error == nil else {
                AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
//            guard let user = user else { return }
//            print(user.name ?? "MISSING EMAIL")
//            print(user.displayName ?? "MISSING DISPLAY NAME")
//            print(user.uid)
            
//            self.performSegue(withIdentifier: "logoutpage", sender: nil)
              self.performSegue(withIdentifier: "openHome", sender: self)
            
            
        })
        
    
       
    }
    
   
    @IBAction func btnRegisterPage(_ sender: UIButton) {
       self.performSegue(withIdentifier: "OpenSignUpPage", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
UIFont.boldSystemFont(ofSize: 18.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
