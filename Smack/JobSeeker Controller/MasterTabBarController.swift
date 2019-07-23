//
//  MasterTabBarController.swift
//  Smack
//
//  Created by haider ali on 08/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit




class MasterTabBarController: UITabBarController {
    
    

    @IBOutlet weak var dottedBtn: UIBarButtonItem!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        menuBtn.addTarget(target: self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)))
        if revealViewController() != nil {
            
            
            menuBtn.target = revealViewController()
            menuBtn.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController()?.rearViewRevealWidth = view.frame.width - 60
            revealViewController()?.rightViewRevealWidth = view.frame.width - 60
            
            dottedBtn.target = revealViewController()
            dottedBtn.action = #selector(SWRevealViewController().rightRevealToggle(_:))
            
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            
            UINavigationBar.appearance().barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            UINavigationBar.appearance().tintColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
            UINavigationBar.appearance().isTranslucent = false
            
            
        }
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
