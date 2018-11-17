//
//  SIgnInVC.swift
//  Explore
//
//  Created by Prabhdeep Kaur on 11/14/18.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit

class SIgnInVC: UIViewController {

  
    @IBAction func btnLogin(_ sender: UIButton) {
         self.performSegue(withIdentifier: "openHome", sender: self)
    }
    
    @IBAction func btnRegisterPage(_ sender: UIButton) {
       self.performSegue(withIdentifier: "OpenSignUpPage", sender: self)
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
