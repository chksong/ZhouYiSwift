//
//  ListItemTableViewCell.swift
//  ZhouYi
//
//  Created by chksong on 16/3/8.
//  Copyright © 2016年 chksong company. All rights reserved.
//

import UIKit

class ListItemTableViewCell: UITableViewCell {
    
    // 挂的ImageView
    
    @IBOutlet weak var guaView: BaguaImgUIVIew!
//    去掉默认的风格，使用自定义的风格
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: .Default, reuseIdentifier: reuseIdentifier)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
 
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
