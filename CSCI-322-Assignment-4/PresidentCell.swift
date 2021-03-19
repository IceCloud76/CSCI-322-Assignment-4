//
//  PresidentCell.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman Z1864162 and Dan Hufford Z1864126 on 3/17/21.
//

import UIKit

class PresidentCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var politicalPartyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
