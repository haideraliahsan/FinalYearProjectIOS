//
//  Onstants.swift
//  Smack
//
//  Created by haider ali on 24/03/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation
import FirebaseDatabase

typealias CompletionHandler = (_ Success: Bool) -> ()

//url constants
let BASE_URL = "http://localhost:3005"
let URL_REGISTER = "\(BASE_URL)/v1/account/register"



let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"


//user defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedin"
let USER_EMAIL = "useremail"

var DATABASE_REF: DatabaseReference!
var INDEX_PATH = IndexPath(item: 0, section: 0)


let JOB_SEEKER_USER = "c4QTVWWq1QeAtOZBGa1Wb4gV29M2"
let RECRUITER_USER = "yNxAb49HZWa7Za1MD0kdsuSCuCv2"

var isJobSeeker = false

