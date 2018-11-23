//
//  SignUPVC.swift
//  Explore
//
//  Created by Prabhdeep Kaur on 11/14/18.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth

class SignUPVC: UIViewController {

 
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBAction func btnRegister(_ sender: UIButton) {
        
        guard let email = emailTF.text,
        email != "",
        let password = passwordTF.text,
        password != ""
            else {
                AlertController.showAlert(self, title: "Missing Info", message: "Please fill out all fields")
                return
        }
        
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            
            guard error == nil else {
                AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
                return
            }
//            guard let email = email else { return }
//            print(user.email ?? "MISSING EMAIL")
//            print(user.uid)
//
//            let changeRequest = user.profileChangeRequest()
//            changeRequest.displayName = email
//            changeRequest.commitChanges(completion: { (error) in
//                guard error == nil else {
//                    AlertController.showAlert(self, title: "Error", message: error!.localizedDescription)
//                    return
//                }
//
//                self.performSegue(withIdentifier: "openLogOutpage", sender: nil)
//
//            })
            
        })
        
    
        self.performSegue(withIdentifier: "OpenSignInPage", sender: self)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
