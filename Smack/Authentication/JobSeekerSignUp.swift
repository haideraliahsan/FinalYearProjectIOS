//
//  JobSeekerSignUp.swift
//  Smack
//
//  Created by haider ali on 07/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class JobSeekerSignUp: UIViewController {
    var clientSideAuthentication = false

    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
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
    func validationFunction () {
        let signUpTextFields : [UITextField] = [firstName, lastName, email, confirmPassword,password]
        signUpValidator(textfields: signUpTextFields)
    }
    func signUp (identifire: String) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (result, error) in
            if error != nil {
                Toast.show(message: error?.localizedDescription as! String, controller: self)
            }else {
                var ref: DatabaseReference!
                ref = Database.database().reference()
                
                ref.child("users").child((Auth.auth().currentUser?.uid)!).setValue(
                    [
                        "dob": "",
                        "email": self.email.text!,
                        "firstname": self.firstName.text!,
                        "lastname": self.lastName.text!,
                        "nationality": "",
                        "phone": "",
                        "profile_image": "",
                        "security_level": "",
                        "user_id": Auth.auth().currentUser?.uid])
                
                print(result)
                Auth.auth().currentUser?.sendEmailVerification(completion: { (error) in
                    if error != nil {
                        Toast.show(message: (error?.localizedDescription)!, controller: self)
                    }else {
                        Toast.show(message: "email sent", controller: self)
                        
                    }
                })
               
                    
                    self.performSegue(withIdentifier: identifire, sender: self)
                
            }
        }
    }
    
    
    @IBAction func backBtnPressed(_ sender: Any) {
    
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func signInBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        validationFunction()
        if clientSideAuthentication {
            
            if isJobSeeker {    // FOR JOB SEEKER
                signUp(identifire: "loginView")
            }
            else {              // FOR RECRUITER
                signUp(identifire: "loginView")
            }
            
            
            
        }else {
            
            
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

    
    
    func signUpValidator(textfields: [UITextField]) {
        for textfield in textfields {
            textfield.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingDidEnd)
        }
        let rule1 = emailValidation(textField: email)
        let rule2 = passwordValidation(textField: password)
        let rule3 = Smack.confirmPassword(confirmPassword: password, this: confirmPassword)
        if notEmpty(textField: firstName) && notEmpty(textField: lastName) && notEmpty(textField: email) && notEmpty(textField: confirmPassword) && notEmpty(textField: password) {
            if rule1 && rule2 && rule3 {
                clientSideAuthentication = true
            }
            else{
                clientSideAuthentication = false
            }
        }
        else {
            clientSideAuthentication = false
        }
        
    }
    
    
    
    @objc func textFieldDidChange(textField: UITextField) {
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
                }
            }
            else if textField == confirmPassword {
                if rule3 {
                    
                }
                else {
                    Toast.show(message: "conFirm Password", controller: self)
                }
            }
            
        } else {
            Toast.show(message: "field Empty", controller: self)
            clientSideAuthentication = false
            
        }
    }
    
    
    
    
}



extension UIViewController {
    func hideKeyboardWhenTappedAround(_ selector: Selector) {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: selector)
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
}
