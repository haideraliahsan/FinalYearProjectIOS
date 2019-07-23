//
//  AuthExperienceViewController.swift
//  Smack
//
//  Created by haider ali on 09/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

protocol valueStored {
    func messageSender (valueStored: Bool)
}

class AuthExperienceViewController: UIViewController, valueStored {
    
    
    func messageSender(valueStored: Bool) {
        if valueStored {
            self.performSegue(withIdentifier: "goToEducation", sender: self)

        }

    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToExperirnce" {
            let controller = segue.destination as! JobSeekerExperience
            controller.messageSender = self
        }
    }
    
    
    @IBAction func experienceBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "goToExperirnce", sender: self)
    }
    
    @IBAction func freshBtnPressed(_ sender: Any) {
        
        var ref: DatabaseReference!
        ref = Database.database().reference()
        ref.child("JobSeekerexperiences").childByAutoId().setValue([
            "cv_id": "\(Auth.auth().currentUser?.uid)",
            "designation": "",
            "emploaymentStatus":"",
            "fromExp":"",
            "organization":"",
            "role":"",
            "toExp":""
            ])
        
        self.performSegue(withIdentifier: "goToEducation", sender: self)
        
        
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
