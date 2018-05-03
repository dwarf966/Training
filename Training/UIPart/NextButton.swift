//
//  NextButton.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class NextButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.titleLabel?.text = "Next"
        self.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        
        self.addTarget(self, action: #selector(touched), for: .touchDown)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    @objc func touched(sender: UIButton) {
        print("tapped next")
        print(FirstViewController.count)
        print(FirstViewController.lines[FirstViewController.count])
        
        if FirstViewController.count >= FirstViewController.lines.endIndex {
            FirstViewController().touch_ResetButton(self)
            
        } else {
            //FirstViewController.lines[FirstViewController.count]
            FirstViewController.count += 1
        }
    }
    
    //frame = CGRect(x: 0, y: 50, width: FirstViewController().view.frame.width, height: FirstViewController().view.frame.height / 4)
    //FirstViewController.lines[FirstViewController.count]
}
