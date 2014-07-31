//
//  TodayWidgetCell.swift
//  SwiftHN
//
//  Created by Thomas Ricouard on 31/07/14.
//  Copyright (c) 2014 Thomas Ricouard. All rights reserved.
//

import UIKit
import HackerSwifter
import SwiftHNShared

let todayCellId = "todayCell"

class TodayWidgetCell: UITableViewCell {
    
    @IBOutlet var postTitleLabel: UILabel!
    @IBOutlet var postSubtitleLabel: UILabel!
    
    var post: Post! {
        didSet {
            self.postTitleLabel.text = self.post.title!
            if let realPoint = self.post.points {
                self.postSubtitleLabel.text = String(realPoint) + " votes - " + self.post.domain! + " - " + self.post.prettyTime!
            }
            else {
                self.postSubtitleLabel.text = self.post.domain! + " - " + self.post.prettyTime!
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.postTitleLabel.textColor = UIColor.whiteColor()
        self.postSubtitleLabel.textColor = UIColorEXT.DateLightGrayColor()
        
    }
}
