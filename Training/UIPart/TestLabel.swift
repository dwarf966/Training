//
//  TestLabel.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/29.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class TestLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        /*self.font = UIFont.systemFont(ofSize: FirstView().bounds.width/12)
        
        let testLabelSize = self.sizeThatFits(FirstView().bounds.size)
        let testLabelX = (FirstView().bounds.width - testLabelSize.width) / 2
        let testLabelY = (FirstView().bounds.height - testLabelSize.height) / 4
        let testLabelOrigin = CGPoint(x: testLabelX, y: testLabelY)
        self.frame = CGRect(origin: testLabelOrigin, size: testLabelSize)*/
        self.text = "Want You Gone"
        self.lineBreakMode = .byWordWrapping
        self.textAlignment = NSTextAlignment.center
        self.numberOfLines = 3
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        //fatalError("init(coder:) has not been implemented")
    }
    
    //self.frame = CGRect(x:50,y:50,width: 250,height:250)
    
    override var text: String? {
        didSet {
            //print("Text changed : " + oldValue! + " -> " + text!)
            
            //########################## Bound ##########################
            
            //UIView.animate(withDuration: TimeInterval)  :  TimeInterval = How time does it take
            //scaleX: 0.5, y: 0.5 = Finally scale
            UIView.animate(withDuration: 0.25) {
                self.transform = CGAffineTransform(scaleX: 0.4, y: 0.4)
            }
            
            UIView.animate(withDuration: 0.25) {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
            
            //###########################################################
        }
    }
}
