//
//  AuthEducation.swift
//  Smack
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class AuthEducation: UIViewController {

    @IBOutlet weak var passingYear: UITextField!
    @IBOutlet weak var graduated: UISegmentedControl!
    @IBOutlet weak var mark: UITextField!
    @IBOutlet weak var percentage: UISegmentedControl!
    @IBOutlet weak var school: UITextField!
    @IBOutlet weak var course: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func createAccountBtnPressed(_ sender: Any) {
        if passingYear.text != "" && percentage.titleForSegment(at: percentage.selectedSegmentIndex) != "" && graduated.titleForSegment(at: graduated.selectedSegmentIndex) != "" && mark.text != "" && school.text != "" && course.text != ""  {
            
            var ref: DatabaseReference!
            ref = Database.database().reference()
            ref.child("JobSeekersEducation").childByAutoId().setValue([
                "cv_id": "\(Auth.auth().currentUser?.uid)",
                "grade": mark.text!,
                "instituition": school.text!,
                "name": course.text!,
                "passingYear": passingYear.text!,
                "statuscompletion": graduated.titleForSegment(at: graduated.selectedSegmentIndex)
                ])
            
            
            self.performSegue(withIdentifier: "goToPreferredJob", sender: self)
         
            
        }
        else {
            Toast.show(message: "empty Fields", controller: self)
        }
        
        
        
        
    }
    @IBAction func signInBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
