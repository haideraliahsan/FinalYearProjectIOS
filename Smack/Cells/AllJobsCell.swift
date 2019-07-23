//
//  AllJobsCell.swift
//  Smack
//
//  Created by haider ali on 06/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class AllJobsCell: UITableViewCell {
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var jobCity: UILabel!
    
    @IBOutlet weak var jobPostedDate: UILabel!
    @IBOutlet weak var jobCountry: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
