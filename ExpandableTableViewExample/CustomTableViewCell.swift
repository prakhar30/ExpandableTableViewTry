//
//  CustomTableViewCell.swift
//  ExpandableTableViewExample
//
//  Created by Prakhar Tripathi on 06/03/18.
//  Copyright © 2018 Prakhar Tripathi. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
