//
//  OpenJobsCell.swift
//  Smack
//
//  Created by haider ali on 28/06/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class OpenJobsCell: UITableViewCell {
    
    @IBOutlet weak var jobDescriptionLabel: UILabel!
    
    @IBOutlet weak var solutionLabel: UILabel!
    
    @IBOutlet weak var rankLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
