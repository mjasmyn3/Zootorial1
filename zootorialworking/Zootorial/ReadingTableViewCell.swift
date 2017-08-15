//
//  ReadingTableViewCell.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/24/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit

class ReadingTableViewCell: UITableViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
                }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
   
        // Configure the view for the selected state
    }

}
