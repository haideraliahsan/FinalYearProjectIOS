//
//  StartScreenViewController.swift
//  Smack
//
//  Created by haider ali on 13/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
import FirebaseDatabase


class StartScreenViewController: UIViewController {
    
    let segueLogin = "goToLogin"
    let segueJobSeekerSignUp = "goToJobSeekerSignUp"
    let segueRecruiterSignUp = "goToRecruiterSignUp"
    
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var firstScreenView: UIView!
    @IBOutlet weak var loginRegisterView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHomeScreen()
        
        
        
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        firstScreenView.isHidden = false
        loginRegisterView.isHidden = true
        backBtn.isHidden = true

    }
    
    @IBAction func recruiterBtnPressed(_ sender: Any) {
        isJobSeeker = false
        firstScreenView.isHidden = true
        loginRegisterView.isHidden = false
        backBtn.isHidden = false

        
    }
    @IBAction func jobSeekerBtnPressed(_ sender: Any) {
        isJobSeeker = true
        firstScreenView.isHidden = true
        loginRegisterView.isHidden = false
        backBtn.isHidden = false

    }
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        self.performSegue(withIdentifier: segueLogin, sender: self)
    }
    @IBAction func registerBtnPressed(_ sender: Any) {
        if isJobSeeker {
            self.performSegue(withIdentifier: segueJobSeekerSignUp, sender: self)
        }
        else {
            self.performSegue(withIdentifier: segueRecruiterSignUp, sender: self)
        }
    }
    
    
    func setupHomeScreen () {
        backBtn.isHidden = true
        firstScreenView.isHidden = false
        loginRegisterView.isHidden = true
        
    }
    
    
    
//
//
//    // BACK BUTTONS
//
//    @IBAction func backBTNloginREGISTER(_ sender: Any) {
//        self.displayView(screen: frontScreenView)
//    }
//    @IBAction func loginBackBtnPressed(_ sender: Any) {
//        self.displayView(screen: loginRegisterScreen)
//    }
//    @IBAction func backBtnPressedSignUp(_ sender: Any) {
//        displayView(screen: loginRegisterScreen)
//    }
//    @IBAction func backBtnPressedRecruiterSignUp(_ sender: Any) {
//        self.displayView(screen: loginRegisterScreen)
//    }
//
//
//
//
//
//
//
//
//
//    var clientSideAuthentication = false
//
//
//    //prefferred jobs view
//
//    @IBOutlet weak var afterSignUpPreferredJobs: UIView!
//    @IBOutlet weak var jobDescriptionPreferredJobs: UITextField!
//    @IBOutlet weak var carreerLevelPreferredJobs: UITextField!
//    @IBOutlet weak var preferredJobsTextField: UITextField!
//    @IBOutlet weak var targetJobsTextField: UITextField!
//    @IBOutlet weak var carrerrIndustries: UITextField!
//    @IBOutlet weak var employeeTypePreferredJobs: UITextField!
//    @IBOutlet weak var jobRolePrefferredJob: UITextField!
//    @IBOutlet weak var monthlySalaryTextFields: UITextField!
//
//    @IBAction func backBtnPressedPreferredJobs(_ sender: Any) {
//        displayView(screen: EducationDetailsView)
//    }
//
//    @IBAction func submitBtnPressedPreferredJobs(_ sender: Any) {
//        self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
//    }
//
//
//
//
//
//
//
//
//
//
//    @IBOutlet weak var EducationDetailsView: UIView!
//    @IBOutlet weak var courseDegree: UITextField!
//    @IBOutlet weak var schoolCollege: UITextField!
//    @IBOutlet weak var percentageGPA: UISegmentedControl!
//    @IBOutlet weak var mark: UITextField!
//    @IBOutlet weak var graduated: UISegmentedControl!
//    @IBOutlet weak var passingYear: UITextField!
//    @IBAction func createAccountBtnEducationDetails(_ sender: Any) {
//    }
//    @IBAction func backBtnEducationDetails(_ sender: Any) {
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//    //recruiter signup
//
//    @IBOutlet weak var recruiterSignUpView: UIView!
//    @IBOutlet weak var phoneNumberRecruiter: UITextField!
//
//    @IBOutlet weak var confirmPasswordRecruiter: UITextField!
//    @IBOutlet weak var passwordRecruiter: UITextField!
//    @IBOutlet weak var emailRecruiter: UITextField!
//
//    @IBAction func backBtnRecruiterSignUp(_ sender: Any) {
//        displayView(screen: loginRegisterScreen)
//    }
//    @IBOutlet weak var firstNameRecruiterTextField: UITextField!
//    @IBOutlet weak var lastNameRecruiterTextFioeld: UITextField!
//
//    @IBAction func recruiterSignUpBtnPressed(_ sender: Any) {
//
//
//        validationFunction()
//        if clientSideAuthentication {
//            if recruiter == true {
//
//
//
//                AuthService.recruiterSignUp(firstName: firstNameRecruiterTextField.text!, lastName: lastNameRecruiterTextFioeld.text!, phoneNumber: phoneNumberRecruiter.text!, email: emailRecruiter.text!, password: passwordRecruiter.text!, onsuccess: {
//
//
//                    //send email to the user
//                    AuthService.sendVerificationEmail(email: self.emailRecruiter.text!, viewController: self)
//
//
//
//                    //display sigin View
//                    self.recruiter = true
//                    self.emailRecruiter.text = ""
//                    self.passwordRecruiter.text = ""
//
//                    self.performSegue(withIdentifier: "goToRecruiterSide", sender: self)
//
////                    self.displayView(screen: self.loginScreen)
//
//
//
//
//                }) { (error) in
//                    Toast.show(message: error, controller: self)
//                }
//
//
//            }
//            else if jobseeker == true
//            {
//                self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
//            }
//        }
//        else {
//            Toast.show(message: "client side authentication Failed", controller: self)
//        }
//
//
//    }
//
//
//    //sending verification email
//
//
//
//
//
//
//
//
//    // SignUp Credentials below
//
//    @IBOutlet weak var firstNameTextField: UITextField!
//    @IBOutlet weak var lastNameTextField: UITextField!
//    @IBOutlet weak var emailTextField: UITextField!
//    @IBOutlet weak var passwordTextField: UITextField!
//    @IBOutlet weak var confirmPasswordTextField: UITextField!
//    @IBOutlet weak var createAccountBtnOutlet: UIButton!
//
//    // SignUp Credentials above
//
//
//
//    // SignIn Credentials below
//
//
//    @IBOutlet weak var loginEmailTextField: UITextField!
//    @IBOutlet weak var loginPasswordTextField: UITextField!
//    @IBOutlet weak var loginBtnOutlet: UIButton!
//
//
//    // SignIn Credentials above
//
//    var jobseeker = false
//    var recruiter = false
//
//    @IBOutlet weak var frontScreenView: UIView!
//
//    @IBOutlet weak var firstScreenJobSeekerBtn: UIButton!
//    @IBOutlet weak var firstScreenRecruiterBtn: UIButton!
//    @IBOutlet weak var loginRegisterScreen: UIView!
//
//    @IBOutlet weak var signUpScreen: UIView!
//    @IBOutlet weak var loginScreen: UIView!
//
//
//    func displayView (screen: UIView) {
//
//        afterSignUpPreferredJobs.isHidden = true
//        EducationDetailsView.isHidden = true
//        frontScreenView.isHidden = true
//        loginRegisterScreen.isHidden = true
//        signUpScreen.isHidden = true
//        loginScreen.isHidden = true
//        recruiterSignUpView.isHidden = true
//
//        screen.isHidden = false
//        if screen == loginScreen || screen == signUpScreen || screen == recruiterSignUpView {
//            validationFunction()
//        }
//    }
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//
//
//
//        doEveryThingHere()
//
//
//        // Do any additional setup after loading the view.
//    }
//
//
//
//
//
//
//
//    func doEveryThingHere () {
//
//        setupView()
//
//
//
//
//
//    }
//
//    func setupView () {
//        roundEdge(textField: firstScreenJobSeekerBtn)
//        roundEdge(textField: firstScreenRecruiterBtn)
//        displayView(screen: frontScreenView)
//    }
//    func validationFunction ()  {
//
//        if loginScreen.isHidden == false {
//
//        }
//        if signUpScreen.isHidden == false {
//
//        }
//
//
//
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//    @IBAction func firstScreenSignUpBtnPressed(_ sender: Any) {
//
//        if recruiter == true {
//            displayView(screen: recruiterSignUpView)
//        }
//        else if jobseeker == true {
//            displayView(screen: signUpScreen)
//        }
//
//    }
//    @IBAction func firstScreenLoginBtnPressed(_ sender: Any) {
//        displayView(screen: loginScreen)
//    }
//    @IBAction func signUpViewSignInBtnPressed(_ sender: Any) {
//        displayView(screen: loginScreen)
//    }
//
//    @IBAction func loginViewSignUpBtnPressed(_ sender: Any) {
//        displayView(screen: signUpScreen)
//    }
//    @IBAction func recruiterBtnPressed(_ sender: Any) {
//        displayView(screen: loginRegisterScreen)
//        recruiter = true
//        jobseeker = false
//    }
//
//    @IBAction func jobSeekerBtnPressed(_ sender: Any) {
//        displayView(screen: loginRegisterScreen)
//        jobseeker = true
//        recruiter = false
//    }
//    @IBAction func loginRegisterBackBtnPressed(_ sender: Any) {
//        displayView(screen: frontScreenView)
//    }
//
//    @IBAction func loginBtnPressed(_ sender: Any) {
//      //  validationFunction()
//        clientSideAuthentication = true
//        if clientSideAuthentication {
//            if recruiter == true {
//                AuthService.signIn(email: emailTextField.text!, password: passwordTextField.text!, onsuccess: {
//
//                   // if AuthService.isVerifiedUser() {
//                        self.performSegue(withIdentifier: "goToRecruiterSide", sender: self)
//                 //   }else {
//                    //    Toast.show(message: "Verify Your Email", controller: self)
//                  //  }
//
//
//                    // userSuccessFullySignedIn
//                }) { (error) in
//                    //handle error her
//                    Toast.show(message: error, controller: self)
//                }
//
//            }
//            else if jobseeker == true {
//
//
//                AuthService.signIn(email: emailTextField.text!, password: passwordTextField.text!, onsuccess: {
//                    self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
//
//
////                    if AuthService.isVerifiedUser() {
////                        self.displayView(screen: self.EducationDetailsView)
////                    }else {
////                        Toast.show(message: "Verify Your Email", controller: self)
////                    }
//
//
//                }) { (error) in
//                    Toast.show(message: error, controller: self)
//                }
//
//            }
//        }
//        else {
//            Toast.show(message: "client Side Authentication Failed", controller: self)
//        }
//
//    }
//    @IBAction func singnUpBtnPressed(_ sender: Any) {
//        validationFunction()
//        if clientSideAuthentication {
//            if recruiter == true {
//
//
////                self.performSegue(withIdentifier: "goToRecruiterSide", sender: self)
//            }
//            else if jobseeker == true
//            {
//
//                AuthService.sendVerificationEmail(email: self.emailTextField.text!, viewController: self)
//
//
//                jobseeker = true
//                emailTextField.text = ""
//                passwordTextField.text = ""
////                displayView(screen: loginScreen)
//
//                self.performSegue(withIdentifier: "goToJobSeekerSide", sender: self)
//            }
//        }
//        else {
//            Toast.show(message: "client side authentication Failed", controller: self)
//        }
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */

}
