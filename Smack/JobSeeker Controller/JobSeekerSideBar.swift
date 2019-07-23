//
//  JobSeekerSideBar.swift
//  Smack
//
//  Created by haider ali on 09/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseAuth

class JobSeekerSideBar: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signOutPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
           
            self.dismiss(animated: true, completion: nil)
        }
        catch let error {
            print(error)
        }
        
    }
    
}
