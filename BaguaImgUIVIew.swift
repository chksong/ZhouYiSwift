//
//  BaguaImgUIVIew.swift
//  ZhouYi
//
//  Created by chksong on 15/12/10.
//  Copyright © 2015年 chksong company. All rights reserved.
//
//  实现划八卦图

import UIKit

class BaguaImgUIVIew: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
         //  NSLog("width= %f  height=%f", rect.width ,rect.height) 
        let height = (rect.height)
        // 爻之间的距离
        let yao_distance = height/6
    
        
        let p = UIBezierPath()
    
        p.lineWidth = 3
        p.lineCapStyle = .Round
       for i in 0...5  {
            p.moveToPoint(CGPointMake(0, CGFloat(i) * yao_distance + 12))
            p.addLineToPoint(CGPointMake(rect.width, CGFloat(i) * yao_distance + 12))
       }
        
        UIColor.redColor().setStroke()
        
        p.stroke()
        
        
        let fontName = "HelveticaNeue"
        let helveticaBold = UIFont(name: fontName, size: 10)
        let string = "乾坤" as NSString
        string.drawAtPoint(CGPointMake(40.0, 40.0),
            withAttributes: [NSFontAttributeName : helveticaBold!])

    
    }
    

}
