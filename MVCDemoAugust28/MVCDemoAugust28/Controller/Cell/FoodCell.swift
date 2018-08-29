//
//  FoodCell.swift
//  MVCDemoAugust28
//
//  Created by Administrator on 29/08/18.
//  Copyright © 2018 MyTeam. All rights reserved.
//

import UIKit

class FoodCell: UITableViewCell,CellConfigurable {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configure(data:Food){
        
    }
    
  
    
    
}
