//
//  GradiantView.swift
//  Smack
//
//  Created by haider ali on 24/03/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit
@IBDesignable
class Button: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        buttonView ()
    }
    
    
    func buttonView () {
        self.layer.cornerRadius = self.frame.height/2.0
        self.clipsToBounds = true
        self.backgroundColor = UIColor.clear
        self.tintColor = UIColor.white
        
        
    }
    
}
