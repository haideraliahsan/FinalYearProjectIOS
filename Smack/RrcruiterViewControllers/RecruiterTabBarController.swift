//
//  RecruiterTabBarController.swift
//  Smack
//
//  Created by haider ali on 09/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class RecruiterTabBarController: UITabBarController {

    @IBOutlet weak var dotBtn: UIBarButtonItem!
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        if revealViewController() != nil {
            
            
            menuBar.target = revealViewController()
            menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController()?.rearViewRevealWidth = view.frame.width - 60
            revealViewController()?.rightViewRevealWidth = view.frame.width - 60
            
            dotBtn.target = revealViewController()
            dotBtn.action = #selector(SWRevealViewController().rightRevealToggle(_:))
            
            view.addGestureRecognizer((self.revealViewController()?.panGestureRecognizer())!)
            
        }
        
        
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        UINavigationBar.appearance().tintColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = false
        
    }
    

   

}
