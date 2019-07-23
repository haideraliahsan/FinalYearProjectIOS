//
//  CvModel.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import Foundation


class CV {
    var city: String?
    var country: String?
    var firstName: String?
    var lastName: String?
    var title: String?
    var date: String?
    
    
    
    init(city: String, country: String, firstName: String, lastName: String, title: String,date: String) {
        self.city = city
        self.country = country
        self.firstName = firstName
        self.lastName = lastName
        self.title = title
        self.date = date
    }
    
    
}
