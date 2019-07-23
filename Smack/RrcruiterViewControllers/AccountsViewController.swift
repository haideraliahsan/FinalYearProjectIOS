//
//  AccountsViewController.swift
//  RecruitorInterface
//
//  Created by haider ali on 22/01/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class AccountsViewController: UIViewController {
    
    @IBOutlet weak var menuBar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        UINavigationBar.appearance().barTintColor = UIColor.darkGray
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        UINavigationBar.appearance().shadowImage = UIImage()
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
