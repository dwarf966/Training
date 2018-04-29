//
//  TestLabel.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/29.
//  Copyright © 2018年 内藤生真. All rights reserved.
//
import Foundation
import UIKit

class TestLabel: UILabel {
    /*
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x:50,y:50,width: 250,height:250)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    
    //self.frame = CGRect(x:50,y:50,width: 250,height:250)
    
    override var text: String? {
        didSet {
            print("Text changed : " + oldValue! + " -> " + text!)
            
            //########################## Bound ##########################
            //UIView.animate(withDuration: TimeInterval)  :  TimeInterval = How time does it take
            //scaleX: 0.5, y: 0.5 = Finally scale
            UIView.animate(withDuration: 0.3) {
                self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }
            
            UIView.animate(withDuration: 0.3) {
                self.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
            //###########################################################
        }
    }
}
