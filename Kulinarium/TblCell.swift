//
//  TblCell.swift
//  Kulinarium
//
//  Created by Piotr on 6/7/16.
//  Copyright © 2016 Piotr Klis. All rights reserved.
//

import UIKit

class TblCell: UITableViewCell {
    
    @IBOutlet weak var lblJedzName: UILabel!
    @IBOutlet weak var imgJedzName: UIImageView!
    
    
    
    override func awakeFromNib() {
      
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
