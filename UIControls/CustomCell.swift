//
//  CustomCell.swift
//  UIControls
//
//  Created by Craig Booker on 1/24/19.
//  Copyright © 2019 Arcadia Softworks. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

  @IBOutlet weak var label: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
