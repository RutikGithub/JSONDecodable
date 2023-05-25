//
//  TableViewCell.swift
//  JSONTask
//
//  Created by Mac on 24/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var battersLabel: UILabel!
    @IBOutlet weak var toppingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
