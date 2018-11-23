//
//  SignoutViewController.swift
//  Explore
//
//  Created by Monika Sachdeva on 2018-11-22.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
//import FirebaseAuth

class SignoutViewController: UIViewController {

    @IBAction func logout(_ sender: UIButton) {
        
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "signOut", sender: nil)
        } catch {
            print(error)
        }
        
    
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
