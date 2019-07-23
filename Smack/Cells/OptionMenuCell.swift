//
//  MenuViewCell.swift
//  Smack
//
//  Created by haider ali on 28/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    func setupViews (){
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


class OptionMenuCell
: UICollectionViewCell {
    
    @IBOutlet weak var optionLabel: UILabel!
    

    
    
    
    
    
}
