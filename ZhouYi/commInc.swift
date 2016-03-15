//
//  commInc.swift
//  ZhouYi
//
//  Created by chksong on 16/3/9.
//  Copyright © 2016年 chksong company. All rights reserved.
//

import Foundation


struct GuaItem {
    var WenWangID : Int = 0
    var DrawID   :Int = 0
    var GuaName : String
    
    init(id : Int, name:String ,drawId:Int) {
        self.WenWangID = id
        self.GuaName = name
        self.DrawID = drawId
    }
}