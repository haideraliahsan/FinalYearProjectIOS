//
//  FollowersCell.swift
//  Smack
//
//  Created by haider ali on 08/07/2019.
//  Copyright © 2019 haider ali. All rights reserved.
//

import UIKit

class FollowersCell: UITableViewCell {

    @IBOutlet weak var dottedBtn: RoundCornerButton!
    @IBOutlet weak var vacanciesLabel: UILabel!
    @IBOutlet weak var budgetLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
