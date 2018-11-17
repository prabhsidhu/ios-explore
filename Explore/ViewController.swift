//
//  ViewController.swift
//  Explore
//
//  Created by Prabhdeep Kaur on 11/14/18.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnSignUP(_ sender: UIButton) {
        self.performSegue(withIdentifier: "OpenSignUP", sender: self)
        
    }
    
    
    @IBAction func btnSignIn(_ sender: UIButton) {
         self.performSegue(withIdentifier: "OpenSignIn", sender: self)
    }
    
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
        
        
//        scroll.contentSize = CGSize.init(width: CGFloat( 4 * width),height: mainView.frame.size.height)
//        scroll.isPagingEnabled = true
    }



