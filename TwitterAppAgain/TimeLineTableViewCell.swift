//
//  TimeLineTableViewCell.swift
//  TwitterAppAgain
//
//  Created by 今野大地 on 2015/09/19.
//  Copyright (c) 2015年 diechkonno. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {

   
    
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var tweetLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
