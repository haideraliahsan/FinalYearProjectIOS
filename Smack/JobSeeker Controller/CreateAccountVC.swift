
//
//  CreateAccountVC.swift
//  Smack
//
//  Created by haider ali on 24/03/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    //outlets
    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    

    @IBAction func closePressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let email = emailText.text , emailText.text != "" else {
            return
        }
        guard let pass = passwordText.text, passwordText.text != "" else { return }
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("registered user")
            }
            else {
                print("not registered")
            }
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
