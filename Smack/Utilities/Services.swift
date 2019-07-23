//
//  Services.swift
//  Smack
//
//  Created by haider ali on 27/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase



func createUser (email: String, password: String) {
    
    Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
        if error == nil {
            
        }else {
            
        }
    }
    
    
    
}


func signInUser (email: String, password: String) {
    
    Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
        if error == nil {
            
        }
        else{
            
        }
    }
    
}

func insertDataInDataBase (username: String) {
    DATABASE_REF = Database.database().reference()

    

    DATABASE_REF.child("Posts").childByAutoId().setValue("username")
    

}

func retriveDataFromDataBase () {
    
    DATABASE_REF = Database.database().reference()
    
    DATABASE_REF.child("Posts").observe(.childAdded) { (DataSnapshot) in
        
        
        
        
        //code to execute when a child is added under "posts    "
    }
}
