//
//  TableViewCell.swift
//  ProjectTwoYelpApp
//
//  Created by Daniel Kim on 9/20/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var businessImage: UIImageView!

    @IBOutlet weak var myLabel: UILabel!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


