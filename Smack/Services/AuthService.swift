//
//  AuthService.swift
//  Insta
//
//  Created by haider ali on 13/09/2018.
//  Copyright © 2018 haider ali. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

 class AuthService
 {
    

    static func signIn (email: String, password: String,onsuccess: @escaping () -> Void, onError: @escaping (_ errorMessage: String) -> Void)
    {
        Auth.auth().signIn(withEmail: email, password: password, completion: {(user, error) in
            if error != nil {
                onError((error?.localizedDescription)!)
                return }
            onsuccess()
            
            
        })
    }
    
    
    
    static func isVerifiedUser () -> Bool {
        
        return Auth.auth().currentUser!.isEmailVerified
        
    }
    
    
    
    static func signUp (username: String,email: String, password: String,imageData: Data,onsuccess: @escaping () -> Void, onError: @escaping (_ errorMessage: String) -> Void)
    {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if error != nil
            {    print(error?.localizedDescription)
                return }
            let uid = Auth.auth().currentUser!.uid
            let storageRef = Storage.storage().reference().child("profile_image/"+uid+".jpg")
            //storage refernece code storage.utdata
                storageRef.putData(imageData, metadata: nil, completion: {(metadata, error)in
                    if error != nil { print("error : ",error?.localizedDescription) }
                    else{ storageRef.downloadURL(completion: { (url, err) in if let err = err {
                        onError(err.localizedDescription)
                        return }
                    else{
                        
                        guard let url = url else { return }
                        print("download URL = "+url.absoluteString)
                        //database reference code
                        self.setUserInformation(profileImageUrl: url.absoluteString, username: username, email: email, uid: uid)
                        onsuccess()
                        
                        }
                    })
                    }
                })
            }
        }
    
    static func updatePassword (password : String){
        Auth.auth().currentUser?.updatePassword(to: password) { (error) in
            
            if error != nil {
                return
            }
            else {
                 //password updated
            }
            
            // ...
        }
    }
    
    
    static func resetPassword (email: String) {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            
            
            if error != nil {
                return
            }
            else {
                //reset password sent
            }
            // ...
        }
    }
        
        
    static func deleteCurrentUser () {
        let user = Auth.auth().currentUser
        
        user?.delete { error in
            if let error = error {
                // An error happened.
            } else {
                // Account deleted.
            }
        }
    }
    
   
    
    static func sendVerificationEmail (email: String, viewController: UIViewController) {
     
        Auth.auth().currentUser?.sendEmailVerification { (error) in
            
            if error != nil {
                Toast.show(message: "Unable To Send Email", controller: viewController)
            }
            else {
                Toast.show(message: "Email Sent", controller: viewController)
            }
            
        }
    
    }
    
    static func signUp (email: String,password: String,onsuccess: @escaping () -> Void, onError: @escaping (_ errorMessage: String) -> Void)
    {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                onError((error?.localizedDescription)!)
            }
            else {
                onsuccess()
            }
        }
        
        
        
        
    }
    
    static func setUserInformation(profileImageUrl: String, username: String, email: String, uid: String){
        let ref = Database.database().reference()
        let userReference = ref.child("users")
        let newUserReference = userReference.child(uid)
        newUserReference.setValue(["username": username, "email": email,"profileImageUrl": profileImageUrl])
        
    }
    
    
    }
    
    
    
    
    


