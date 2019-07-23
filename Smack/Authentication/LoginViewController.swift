//
//  LoginViewController.swift
//  Smack
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    var jobSeekerUsers : [String] = []
    
    var auth = false
    
    var clientSideAuthentication = false

    @IBOutlet weak var password: RoundTextField!
    @IBOutlet weak var email: RoundTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround(#selector(self.dismissKeyboard))

            validationFunction()

        // Do any additional setup after loading the view.
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
        // do aditional stuff
    }
    
    func signInUser (identifire: String) {
        AuthService.signIn(email: self.email.text!, password: self.password.text!, onsuccess: {
            var ref: DatabaseReference!
            ref = Database.database().reference()
            if isJobSeeker{
                ref.child("users").child((Auth.auth().currentUser?.uid)!).observe(.value, with: { (data) in
                    
                    let postDist = data.value as? [String : String] ?? [:]
                    print((Auth.auth().currentUser?.uid)!)
                    print(postDist["user_id"])
                    var str: String = postDist["user_id"]!
                    print(str)
                    if (Auth.auth().currentUser?.uid)! == str {
                        self.performSegue(withIdentifier: identifire, sender: self)
                    }
                    else {
                        Toast.show(message: "Must be registered as Recruiter", controller: self)
                    }
                })
            }
            else {
                ref.child("RecruiterUser").child((Auth.auth().currentUser?.uid)!).observe(.value, with: { (data) in
                    let postDist = data.value as? [String : String] ?? [:]
                    print((Auth.auth().currentUser?.uid)!)
                    print(postDist["user_id"])
                    var str: String = postDist["user_id"]!
                    print(str)
                    if (Auth.auth().currentUser?.uid)! == str {
                        self.performSegue(withIdentifier: identifire, sender: self)
                    }
                    else {
                        Toast.show(message: "Must be registered as Recruiter", controller: self)
                    }
                })
            }
            if self.auth == true {
//                self.performSegue(withIdentifier: identifire, sender: self)
            }
        }) { (error) in
            Toast.show(message: error, controller: self)
        }
    }
    
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        validationFunction()
        if clientSideAuthentication {
            
            if isJobSeeker {    // FOR JOB SEEKER
                    signInUser(identifire: "goToJobSeekerSide")
            }
            else {              // FOR RECRUITER
                signInUser(identifire: "goToRecruiterSide")
            }
        }else {
            
        }
        
    }
    
    @IBAction func signUpBtnPressed(_ sender: Any) {
        
        if isJobSeeker {
            self.performSegue(withIdentifier: "signUpJobSeeker", sender: self)
        }
        else {
            self.performSegue(withIdentifier: "signUpRecruiter", sender: self)
        }
        
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
    }
    @IBAction func backBtnPressed(_ sender: Any) {
            self.dismiss(animated: true, completion: nil)
    }
    
    func validationFunction () {
        let signInTextFields : [UITextField] = [email, password]
        signInValidator(textfields: signInTextFields)

    }
    
    
    func signInValidator(textfields: [UITextField]) {
        for textfield in textfields {
            textfield.addTarget(self, action: #selector(signInTextFieldDidChange), for: UIControl.Event.editingDidEnd)
            
        }
        
        let rule1 = emailValidation(textField: email)
        let rule2 = passwordValidation(textField: password)
        if notEmpty(textField: email) && notEmpty(textField: password) {
            if rule1 && rule2 {
                clientSideAuthentication = true
                if rule2 == false{
                    Toast.show(message: "strongPassword", controller: self)
                }else if rule1 == false {
                        Toast.show(message: "inValidEmail", controller: self)
                }
                
            }
            else {
                clientSideAuthentication = false
                
            }
        } else {
            clientSideAuthentication = false
        }
        
    }
    
    
    
    
    
    
    
    
    
    @objc func signInTextFieldDidChange(textField: UITextField) {
        if notEmpty(textField: textField) {
            if textField == email {
                if emailValidation(textField: textField) {
                    //valid email
                }
                else {
                    Toast.show(message: "inValid Email", controller: self)
                }
            }
            else if textField == password{
                if passwordValidation(textField: textField) {
                    //good password
                }
                else {
                    //invalidPassword
                    Toast.show(message: "inCorrect Password", controller: self)
                }
                
            }
        } else {
            Toast.show(message: "field Empty", controller: self)
            clientSideAuthentication = false
            
        }
    }
    

}
