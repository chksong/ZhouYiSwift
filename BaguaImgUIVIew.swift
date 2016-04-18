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
   
    var drawId : Int = 0
    //爻的权值
    let  QuanZhis = [32,16,8,4,2,1]

    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let height = (rect.height)
        // 爻之间的距离
        let Yao_Distance = height/6
        let offset : CGFloat = Yao_Distance / 1.5

        let pRed  = UIBezierPath()
        let pBlue = UIBezierPath()
        
        pRed.lineWidth = 3
        pBlue.lineWidth = 3
 
        
        for var index = 0 ; index < 6; index++  {
            print("\(index)  \(self.drawId) \(QuanZhis[index]) ")
            if self.drawId >= QuanZhis[index] {
                // 划阳爻
                pRed.moveToPoint(CGPointMake(0, CGFloat(index) * Yao_Distance + offset))
                pRed.addLineToPoint(CGPointMake(rect.width, CGFloat(index) * Yao_Distance + offset))
                self.drawId -= QuanZhis[index]
            }
            else  {
                // 划阴爻
                pBlue.moveToPoint(CGPointMake(0, CGFloat(index) * Yao_Distance + offset))
                pBlue.addLineToPoint(CGPointMake(rect.width * 4 / 10, CGFloat(index) * Yao_Distance + offset))
                
                pBlue.moveToPoint(CGPointMake(rect.width * 6.2 / 10, CGFloat(index) * Yao_Distance + offset))
                pBlue.addLineToPoint(CGPointMake(rect.width , CGFloat(index) * Yao_Distance + offset))
            }
        }
       
        UIColor.redColor().setStroke()
        pRed.stroke()

        UIColor.blueColor().setStroke()
        pBlue.stroke()
        
//        let fontName = "HelveticaNeue"
//        let helveticaBold = UIFont(name: fontName, size: 10)
//        let string = "乾坤" as NSString
//        string.drawAtPoint(CGPointMake(40.0, 40.0),
//            withAttributes: [NSFontAttributeName : helveticaBold!])

    
    }
    

}
