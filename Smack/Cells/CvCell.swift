//
//  CvCell.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class CvCell: UITableViewCell {
    
    
    @IBOutlet weak var uploadDate: UILabel!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var cvTitle: UILabel!
    @IBOutlet weak var cityAndCountry: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
