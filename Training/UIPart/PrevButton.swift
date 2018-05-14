//
//  PrevButton.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class PrevButton: UIButton {
    static var isAfterNext = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setTitle("Prev", for: .normal)
        
        self.addTarget(self, action: #selector(touched), for: .touchDown)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.addTarget(self, action: #selector(touched), for: .touchDown)
    }
    
    //frame = CGRect(x: 0, y: 50, width: FirstViewController().view.frame.width, height: FirstViewController().view.frame.height / 4)
    
    @objc func touched(sender: UIButton) {
        print("tapped prev")
        
        NextButton.isAfterPrev = true
        
        if PrevButton.isAfterNext == true {
            FirstViewController.count -= 1
            PrevButton.isAfterNext = false
        }
        
        if FirstViewController.count <= 0 {
            FirstViewController.count = FirstViewController.lines.endIndex - 1
        } else {
            FirstViewController.count -= 1
        }
        
        FirstView.testLabel.text = FirstViewController.lines[FirstViewController.count]
        
        print(FirstViewController.count)
        print(FirstViewController.lines[FirstViewController.count])
    }
}

