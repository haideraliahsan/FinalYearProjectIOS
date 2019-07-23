//
//  AuthPreference.swift
//  Smack
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class AuthPreference: UIViewController {

    @IBOutlet weak var salary: UITextField!
    @IBOutlet weak var role: UITextField!
    @IBOutlet weak var empType: UITextField!
    @IBOutlet weak var industry: UITextField!
    @IBOutlet weak var targetLocation: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var careerLevel: UITextField!
    @IBOutlet weak var designationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func submitBtnPressed(_ sender: Any) {
        
        
        if salary.text != "" && role.text != "" && empType.text != "" && industry.text != "" && targetLocation.text != "" && city.text != "" && careerLevel.text != "" && designationTextField.text != ""   {
            
            var ref: DatabaseReference!
            ref = Database.database().reference()
            ref.child("jobpreference").child((Auth.auth().currentUser?.uid)!).setValue([
                "careerlevel": self.careerLevel.text!,
                "city": self.city.text!,
                "country": "Pakistan",
                "designation": self.designationTextField.text!,
                "employmenttype": self.empType.text!,
                "industry": self.industry.text!,
                "jobrole": self.role.text!,
                "salary": self.salary.text!,
                "user_id": Auth.auth().currentUser?.uid
                ])
            
            
            self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
            
            
        }
        else {
            Toast.show(message: "empty Fields", controller: self)
        }
        
        
        
        
        
        
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
