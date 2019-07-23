//
//  RecruiterSignUp.swift
//  Smack
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class RecruiterSignUp: UIViewController {
    
    
    
    
    var clientSideAuthentication = false
    
    
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var confirmPassword: UITextField!
    
    @IBOutlet weak var firstName: UITextField!
    
    var recruiterSignUpTextFields : [UITextField]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround(#selector(self.dismissKeyboard))
        recruiterSignUpTextFields = [firstName, lastName, email, password, phoneNumber, confirmPassword]

        validationFunction()
        

        // Do any additional setup after loading the view.
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        // do aditional stuff
    }
    
    func signUp (identifire: String) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (result, error) in
            if error != nil {
                Toast.show(message: (error?.localizedDescription)!, controller: self)
            }else {
                print(result)
                var ref: DatabaseReference!
                ref = Database.database().reference()
                Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                    if error != nil {
                        Toast.show(message: (error?.localizedDescription)!, controller: self)
                    }
                    else {
                        Toast.show(message: "email sent", controller: self)
                    }
                })
                if isJobSeeker {
                }else {
                    ref.child("RecruiterUser").child((Auth.auth().currentUser?.uid)!).setValue(
                        ["email": self.email.text!,
                         "firstname": self.firstName.text!,
                         "lastname": self.lastName.text!,
                         "phone": self.phoneNumber.text!,
                         "profile_image": "",
                         "user_id": (Auth.auth().currentUser?.uid)!
                        ])
                    
                    self.performSegue(withIdentifier: identifire, sender: self)

                }
            }
        }
        
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        validationFunction()
        if clientSideAuthentication {
            
            if isJobSeeker {    // FOR JOB SEEKER
//                self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
                signUp(identifire: "goToJobSeekerSide")
            }
            else {              // FOR RECRUITER
//                self.performSegue(withIdentifier: "goToRecruiterSide", sender: self)
                signUp(identifire: "goToRecruiterSide")
            }
            
            
            
        }else {
            
            
        }
    }
    @IBAction func signInBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
    @IBAction func backBtnPressed(_ sender: Any) {
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
    
    
    func validationFunction () {
        
        recruiterSigUpValidator(textfields: recruiterSignUpTextFields!)
    }
    @objc func recruiterTextFieldDidChange(textField: UITextField) {
        let rule1 = emailValidation(textField: email)
        let rule2 = passwordValidation(textField: password)
        let rule3 = Smack.confirmPassword(confirmPassword: password, this: confirmPassword)
        
        if notEmpty(textField: textField){
            if textField == email {
                if rule1 {
                    
                }else
                {
                    Toast.show(message: "inValid Email", controller: self)
                }
            }
            else if textField == password {
                if rule2 {
                    
                }
                else {
                    Toast.show(message: "use Strong Password", controller: self)
                    clientSideAuthentication = false

                }
            }
            else if textField == confirmPassword {
                if rule3 {
                    
                }
                else {
                    Toast.show(message: "conFirm Password", controller: self)
                    clientSideAuthentication = false
                }
            }
            
        } else {
            Toast.show(message: "field Empty", controller: self)
            clientSideAuthentication = false
            
        }
    }
    
    
    func recruiterSigUpValidator(textfields: [UITextField]) {
        for textfield in textfields {
            textfield.addTarget(self, action: #selector(recruiterTextFieldDidChange), for: UIControl.Event.editingDidEnd)
        }
        let rule1 = emailValidation(textField: email)
        let rule2 = passwordValidation(textField: password)
        let rule3 = Smack.confirmPassword(confirmPassword: password, this: confirmPassword)
        if notEmpty(textField: firstName) && notEmpty(textField: lastName) && notEmpty(textField: email) && notEmpty(textField: confirmPassword) && notEmpty(textField: password)  && notEmpty(textField: phoneNumber) {
            if rule1 && rule2 && rule3 {
                clientSideAuthentication = true
            }
            else{
                if !rule1 {
                    Toast.show(message: "Invalid Email", controller: self   )
                }
                if !rule2 {
                    Toast.show(message: "use Strong Password", controller: self)
                }
                if !rule3 {
                    Toast.show(message: "confirm Password", controller: self)
                }
                
                clientSideAuthentication = false
            }
        }
        else {
            Toast.show(message: "Empty TextField", controller: self)
            clientSideAuthentication = false
        }
        
    }
    
    

}
