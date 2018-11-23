///Users/msachdeva01/Desktop/ ios explore/Explore/Base.lproj/Main.storyboard
//  HomeVC.swift
//  Explore
//
//  Created by Monika Sachdeva on 2018-11-15.
//  Copyright © 2018 Prabhdeep Kaur. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    

   
    @IBOutlet var mainView: UIView!
    @IBOutlet var Scroll: UIScrollView!
    
    @IBAction func btnTour(_ sender: UIButton) {
        self.performSegue(withIdentifier: "Opentourpage", sender: self)
    }
    @IBAction func btnCulture(_ sender: UIButton) {
        self.performSegue(withIdentifier: "OpenCulturePage", sender: self)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        self.setImagesinScroll()
    }

//    func setImagesinScroll(){
//        let width : Float = Float(self.view.frame.size.width)
//        Scroll.contentSize = CGSize.init(width: CGFloat( 4 * width),height: mainView.frame.size.height)
//        Scroll.isPagingEnabled = true
//
//        for i in stride(from: 0, to: 2, by: 1){
//            let img : UIImageView = UIImageView.init(image: UIImage.init(named: "culture.jpeg"))
//            img.frame = CGRect.init(x: CGFloat( Float(i) * width), y :mainView.frame.origin.y, width: CGFloat(width), height: mainView.frame.size.height)
//                Scroll.addSubview(img)
//
//
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
         x: CGFloat( Float(i) * width), y :mainView.frame.origin.y, width:Scroll.addSubview(img) )
    }
    */
   
//}

}
