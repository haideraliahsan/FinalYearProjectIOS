//
//  MenuViewCell.swift
//  Smack
//
//  Created by haider ali on 12/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class MenuViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuImageView: UIImageView!
    

    @IBOutlet weak var menuBtnLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}





class SideMenuViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuImageView: UIImageView!
    
    
    @IBOutlet weak var menuBtnLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


class SecondSideMenuViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuImageView: UIImageView!
    
    
    @IBOutlet weak var menuBtnLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
