//
//  DailySalesCell.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 29.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import UIKit

class DailySalesCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
