//
//  NextButton.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class NextButton: UIButton {
    static var isAfterPrev = false
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setTitle("Next", for: .normal)
        
        self.addTarget(self, action: #selector(touched), for: .touchDown)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    @objc func touched(sender: UIButton) {
        print("tapped next")
        
        PrevButton.isAfterNext = true
        
        if NextButton.isAfterPrev == true {
            FirstViewController.count += 1
            NextButton.isAfterPrev = false
        }
        
        if FirstViewController.count >= FirstViewController.lines.endIndex {
            FirstViewController().touch_ResetButton(self)
        } else {
            FirstView.testLabel.text = FirstViewController.lines[FirstViewController.count]
            FirstViewController.count += 1
        }
        
        print(FirstViewController.count)
        print(FirstViewController.lines[FirstViewController.count])
    }
    
    //frame = CGRect(x: 0, y: 50, width: FirstViewController().view.frame.width, height: FirstViewController().view.frame.height / 4)
    //FirstViewController.lines[FirstViewController.count]
}
