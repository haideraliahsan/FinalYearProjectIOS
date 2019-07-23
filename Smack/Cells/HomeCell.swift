//
//  HomeCell.swift
//  RecruitorInterface
//
//  Created by haider ali on 22/01/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet weak var dotBtn: UIButton!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var candidateLabel: UILabel!
    
    

    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        // Initialization code
    }
    
    func setupViews () {
//        let screenSize: CGRect = UIScreen.main.bounds
//        let width = screenSize.width - 16
//        print("asdfasdfsdfadsf")
//        let height = width * 9 / 16
//        
//        
        
        
        
        dotBtn.layer.borderWidth = 1
        dotBtn.layer.borderColor = UIColor.clear.cgColor
        
        
        dotBtn.layer.cornerRadius = dotBtn.frame.size.height/6
        dotBtn.clipsToBounds = true
        
        
        
//        thumbNailImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
    }
   
  
    
}
