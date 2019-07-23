//
//  JobSeekerExperience.swift
//  PDFModule
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth
class JobSeekerExperience: UIViewController {
    
    var shareData: myDelegate?
    
    var messageSender: valueStored?

    
    @IBOutlet weak var organization: UITextField!
    @IBOutlet weak var designation: UITextField!
    @IBOutlet weak var previouslyEmployed: UISegmentedControl!
    @IBOutlet weak var durationFrom: UITextField!
    @IBOutlet weak var durationTo: UITextField!
    @IBOutlet weak var role: UITextField!
    @IBOutlet weak var saveBtnExperienceDetails: RoundCornerButton!
    @IBOutlet weak var viewListExperienceDetails: RoundCornerButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func viewListPressed(_ sender: Any) {
    }
    
    @IBAction func saveBtnPressed(_ sender: Any) {
        if organization.text != "" && designation.text != "" && previouslyEmployed.titleForSegment(at: previouslyEmployed.selectedSegmentIndex) != "" && durationFrom.text != "" && durationTo.text != "" && role.text != ""  {
            
            var ref: DatabaseReference!
            ref = Database.database().reference()
            ref.child("JobSeekerexperiences").childByAutoId().setValue([
                "cv_id": "\(Auth.auth().currentUser?.uid)",
                "designation": designation.text!,
                "emploaymentStatus": previouslyEmployed.titleForSegment(at: previouslyEmployed.selectedSegmentIndex),
                "fromExp": durationFrom.text!,
                "organization": organization.text!,
                "role": role.text!,
                "toExp": durationTo.text!
                ])
            messageSender?.messageSender(valueStored: true)
            
            self.dismiss(animated: true, completion: nil)
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
