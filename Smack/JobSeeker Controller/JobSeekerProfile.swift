//
//  JobSeekerProfile.swift
//  Smack
//
//  Created by haider ali on 28/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase

class JobSeekerProfile: UIViewController {
    
    var contactDetails : contactdetails_Resume?
    var education : JobSeekersEducation?
    
    
    
    


    @IBOutlet weak var profileImageView: RoundImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastUpdated: UILabel!
    
    
    
    //PERSONAL INFORMATION VIEW
  
    @IBOutlet weak var birthDate: UILabel!
    @IBOutlet weak var Nationality: UILabel!
    @IBOutlet weak var residenceCountry: UILabel!
    @IBAction func personalInfoEditBtnPressed(_ sender: Any) {
        
        
        
        
        
        
        
        let alertController = UIAlertController(title: "Personal Information", message: "", preferredStyle: .alert)
        
        // ADDING TEXTFIELDS TO THE ALERT
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Birth Date"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Nationality"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Residence Country"
        }
        
        // ADDING BUTONS TO ALERT
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            let secondTextField = alertController.textFields![1] as UITextField
            let thirdTextField = alertController.textFields![2] as UITextField
            
            print("firstName \(firstTextField.text), secondName \(secondTextField.text)")
            // PERFORM SAVE ACTION BELOW
            
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" {
                
                self.birthDate.text = firstTextField.text
                self.Nationality.text = secondTextField.text
                self.residenceCountry.text = thirdTextField.text
                
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                ref.child("personalinfo_Resume").child(JOB_SEEKER_USER).setValue([
                    "custom": "null",
                    "dob":  self.birthDate.text,
                    "maritalstatus": "Married",
                    "nationality": self.Nationality.text,
                    "persnlInfo_id": JOB_SEEKER_USER
                    ])
                
            }
            else {
                Toast.show(message: "empty fields", controller: self)
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
        //ADDING ACTIONS TO ALERT BUTTONS
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
        

        
        


    }
    
    
    //CONTACT INFO
    @IBOutlet weak var emailAddress: UILabel!
    @IBOutlet weak var mobilePhone: UILabel!
    
    @IBAction func contactInfoEditBtnPressed(_ sender: Any) {
//        self.present(alertController, animated: true, completion: nil)
        
        
        
        let alertController = UIAlertController(title: "Contact Information", message: "", preferredStyle: .alert)
        
        // ADDING TEXTFIELDS TO THE ALERT
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Email"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Mobile Phone"
        }
        
        // ADDING BUTONS TO ALERT
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            let secondTextField = alertController.textFields![1] as UITextField
            
            print("firstName \(firstTextField.text), secondName \(secondTextField.text)")
            // PERFORM SAVE ACTION BELOW
            
            if firstTextField.text != "" && secondTextField.text != "" {
                
                self.emailAddress.text = firstTextField.text
                self.mobilePhone.text = secondTextField.text
               
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                ref.child("contactdetails_Resume").child(JOB_SEEKER_USER).setValue([
                    "address" :  "self.contactDetails?.address",
                    "contact_id": JOB_SEEKER_USER,
                    "email": self.emailAddress.text,
                    "name": "zunaira zaman",
                    "phone": self.mobilePhone.text])
  
            }
            else {
                Toast.show(message: "empty fields", controller: self)
            }
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
         //ADDING ACTIONS TO ALERT BUTTONS
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
         self.present(alertController, animated: true, completion: nil)
        
        
        
        
    }
    
    
    
    //PREFERRED JOBS
    @IBOutlet weak var jobDesignation: UILabel!
    
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var salaryDollar: UILabel!
    @IBOutlet weak var industry: UILabel!
    @IBOutlet weak var careerLevel: UILabel!
    
    @IBOutlet weak var employeeType: UILabel!
    
    
    @IBAction func editBtnPreferredJobPressed(_ sender: Any) {

        
        let alertController = UIAlertController(title: "Preferred Job", message: "", preferredStyle: .alert)
        
        // ADDING TEXTFIELDS TO THE ALERT
        
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Job Designation"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Country"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "City"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Salary"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Industry"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Career Level"
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Employement Type"
        }
        
        
        // ADDING BUTONS TO ALERT
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            let secondTextField = alertController.textFields![1] as UITextField
            let thirdTextField = alertController.textFields![2] as UITextField
            let forthTextField = alertController.textFields![3] as UITextField
            let fifthTextField = alertController.textFields![4] as UITextField
            let sixthTextField = alertController.textFields![5] as UITextField
            let seventhTextField = alertController.textFields![6] as UITextField
            print("firstName \(firstTextField.text), secondName \(secondTextField.text)")
            // PERFORM SAVE ACTION BELOW
            
            if firstTextField.text != "" && secondTextField.text != "" && thirdTextField.text != "" && forthTextField.text != "" && fifthTextField.text != "" && sixthTextField.text != "" && seventhTextField.text != "" {
                
                self.jobDesignation.text = firstTextField.text
                self.country.text = secondTextField.text
                self.city.text = thirdTextField.text
                self.salaryDollar.text = forthTextField.text
                self.industry.text = fifthTextField.text
                self.careerLevel.text = sixthTextField.text
                self.employeeType.text = seventhTextField.text
                
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                
                ref.child("jobpreference").child(JOB_SEEKER_USER).setValue(["careerlevel" : self.industry.text , "city": self.city.text, "salary": self.salaryDollar.text, "employmenttype": self.employeeType.text, "country": self.country.text, "designation": self.designationLabel.text, "industry": self.industry.text, "user_id" : JOB_SEEKER_USER, "jobrole": "ComputerScience"])
                
                
            }
            else {
                Toast.show(message: "empty fields", controller: self)
            }
            
            
            
            
            
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
        
        
        
        //ADDING ACTIONS TO ALERT BUTTONS
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        
        
        
        
        
            self.present(alertController, animated: true, completion: nil)
        
    }
    
    
    //SKILLS
    @IBOutlet weak var skillsLabel: UILabel!
    @IBAction func skillsEditBtnPressed(_ sender: Any) {
        
        
        let alertController = UIAlertController(title: "Skills", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Your Skills"
        }
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
        
           
            if firstTextField.text != "" {
                self.skillsLabel.text = firstTextField.text
                
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                
                ref.child("JobSeekerSkills").child("-LiLgkgoX8bTIk-bEqzz").setValue(["cv_id": JOB_SEEKER_USER, "skillName": self.skillsLabel.text])
                
                
                
            }
            
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
        
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
            self.present(alertController, animated: true, completion: nil)
        
        
        
    }
    @IBAction func addSkillsBtnPressed(_ sender: Any) {
    }
    
    
    //LANGUAGES
    @IBOutlet weak var languagesLabel: UILabel!
    @IBAction func languagesEditBtnPressed(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Languages", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Your Languages"
        }
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            
            if firstTextField.text != "" {
                self.languagesLabel.text = firstTextField.text
                
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                
                ref.child("languages").child(JOB_SEEKER_USER).setValue(["language": self.languagesLabel.text, "languagelevel": "Expert", "user_id": JOB_SEEKER_USER])
                
                
                
            }
            
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
        
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        
        
        
//        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func addLanguagesBtnPredded(_ sender: Any) {
    }
    
    
    
    //EDUCATION DETAILS
    @IBOutlet weak var coursesLabel: UILabel!
    @IBOutlet weak var InstituteLabel: UILabel!
    
    @IBAction func educationEditBtnPressed(_ sender: Any) {



        let alertController = UIAlertController(title: "Education Details", message: "", preferredStyle: .alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Your Course"
            
        }
        alertController.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Enter Your Institute"
            
        }
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            let secondTextField = alertController.textFields![1] as UITextField
            
            
            
            if firstTextField.text != "" && secondTextField.text != ""{
                self.coursesLabel.text = firstTextField.text
                self.InstituteLabel.text = secondTextField.text
                
                
                
                var ref: DatabaseReference!
                
                ref = Database.database().reference()
                
                ref.child("JobSeekersEducation").child("-LiMPengtE58cz7K4YLO").observe(.value, with: { (data) in
                    let postDist = data.value as? [String : String] ?? [:]
                    self.education?.cv_id = postDist["cv_id"]
                    self.education?.grade = postDist["grade"]
                    self.education?.instituition = postDist["institution"]
                    self.education?.name = postDist["name"]
                    self.education?.passingYear = postDist["passingYear"]
                    self.education?.statuscompletion = postDist["statuscompletion"]
                    
                })
                
                
                
                ref.child("JobSeekersEducation").child("-LiMPengtE58cz7K4YLO").setValue([
                    "cv_id": self.education?.cv_id,
                    "grade": self.education?.grade,
                    "instituition": self.InstituteLabel.text,
                    "name": self.education?.name,
                    "passingYear": self.education?.passingYear,
                    "statuscompletion": self.education?.statuscompletion])
                
                
                
            }
            
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
        
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        



    }
    
    
    
    func experienceAlertFunction() {
    
    
    
    
    
    
    let alertController = UIAlertController(title: "Personal Information", message: "", preferredStyle: .alert)
    
    // ADDING TEXTFIELDS TO THE ALERT
    
    alertController.addTextField { (textField : UITextField!) -> Void in
    textField.placeholder = "Birth Date"
    }
    
    
    // ADDING BUTONS TO ALERT
    
    let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
    let firstTextField = alertController.textFields![0] as UITextField
    
    
    
    // PERFORM SAVE ACTION BELOW
    
    if firstTextField.text != "" {
    
    self.designationLabel.text = firstTextField.text
    
    
    
    var ref: DatabaseReference!
    
    ref = Database.database().reference()
    ref.child("JobSeekerexperiences").child("-LiInWZwsE1g3DJm-sKA").setValue([
    "cv_id": JOB_SEEKER_USER,
    "designation": self.designationLabel.text,
    "emploaymentStatus": true,
    "fromExp": "Jun 26, 2018",
    "organization": "University of Gujrat",
    "role": "Building a mobile application for an online e-recruitement ",
    "toExp": "Jul 16, 2019",
    ])
    
    }
    else {
    Toast.show(message: "empty fields", controller: self)
    }
    })
    let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: { (action : UIAlertAction!) -> Void in })
    //ADDING ACTIONS TO ALERT BUTTONS
    alertController.addAction(saveAction)
    alertController.addAction(cancelAction)
    self.present(alertController, animated: true, completion: nil)
    
    
    
    
    
    
    
    
    
    
    }
    
    
    
    
    
    //EXPERIENCE DETAILS
    
    @IBOutlet weak var designationLabel: UILabel!
    
    @IBAction func experienceEditBtnPressed(_ sender: Any) {
   experienceAlertFunction()
        

    }
    
    
    
    
    func fetchData() {
        
        var ref: DatabaseReference

        ref = Database.database().reference()
        
        
        

        ref.child("users").child("c4QTVWWq1QeAtOZBGa1Wb4gV29M2").observe(.value) { (data) in
            let postDict = data.value as? [String : String] ?? [:]
             print(postDict["email"]!)
            
            self.nameLabel.text = postDict["firstname"]! + " " + postDict["lastname"]!
            self.birthDate.text = postDict["dob"]
            self.Nationality.text = postDict["nationality"]
            self.mobilePhone.text = postDict["phone"]
            self.emailAddress.text = postDict["email"]
           
        }
        ref.child("jobpreference").child(JOB_SEEKER_USER).observe(.value) { (data) in
            let postDict = data.value as? [String : String] ?? [:]
            
            self.careerLevel.text = postDict["careerlevel"]
            self.city.text = postDict["city"]
            self.country.text = postDict["country"]
            self.jobDesignation.text = postDict["designation"]
            self.employeeType.text = postDict["employmenttype"]
            self.industry.text = postDict["industry"]
            self.salaryDollar.text = postDict["salary"]
            
            var jobRole = postDict["jobrole"]
            
        }
        ref.child("JobSeekerSkills").child("-LiLgkgoX8bTIk-bEqzz").observe(.value) { (data) in
            let postDict = data.value as? [String : String] ?? [:]
            
            self.skillsLabel.text = postDict["skillName"]
            
        }
        ref.child("JobSeekerexperiences").child("-LiInWZwsE1g3DJm-sKA").observe(.value) { (data) in
            let postDict = data.value as? [String : AnyObject] ?? [:]
            
            self.designationLabel.text = postDict["designation"] as! String
        }
        ref.child("education").child("Jdv3Nvh6FQgXW27yAsNrQTBX0W23").observe(.value) { (data) in
            let postDict = data.value as? [String : AnyObject] ?? [:]
            
            self.coursesLabel.text = postDict["course"] as? String
            self.InstituteLabel.text = postDict["institite"] as? String
        }
        ref.child("languages").child("c4QTVWWq1QeAtOZBGa1Wb4gV29M2").observe(.value) { (data) in
            let postDist = data.value as? [String : String] ?? [:]
            self.languagesLabel.text = postDist["language"]
            
        }
        
        
        
    }
            // ...
        
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
      
        
        fetchData ()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func uploadPhotoBtnPressed(_ sender: Any) {
    }
    @IBAction func refreshBtnPressed(_ sender: Any) {
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
