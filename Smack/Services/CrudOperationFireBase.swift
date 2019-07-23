//
//  CrudOperationFireBase.swift
//  Smack
//
//  Created by haider ali on 04/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation

import Foundation
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage



class CrudService {
    
    static var ref: DatabaseReference!
    
    
    static func oneLevelRetreivel(child: String,onsuccess: @escaping (_ array: DataSnapshot) -> Void) {
        ref = Database.database().reference()

        
        var databaseHandler = ref.child(child).observe(.childAdded) { (data) in
            if data != nil {
                
                
                //fetch data accordingly
                onsuccess(data)
            }
        }
    }
    
    static func SecondLevelFetching(parent: String, child: String,onsuccess: @escaping (_ array: [String : AnyObject]) -> Void) {
        
        ref = Database.database().reference()
        
        ref.child(parent).child(child).observe(.value) { (data) in
            let postDict = data.value as? [String : AnyObject] ?? [:]
            onsuccess(postDict)
            
            //            print(data)
        }
        
        
    }
    
    static func userProfileData (username: String) {
        
        let userID = Auth.auth().currentUser?.uid
        ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            // Get user value
            let value = snapshot.value as? NSDictionary
            let username = value?["username"] as? String ?? ""
     //       let user = User(username: username)
            
            // ...
        }) { (error) in
            print(error.localizedDescription)
        }
        
    }
    
    
    


}
