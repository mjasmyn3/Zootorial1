//
//  DataTableViewCell.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 8/1/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var bookName: UILabel!
    @IBOutlet weak var numCorrect: UILabel!
 

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

