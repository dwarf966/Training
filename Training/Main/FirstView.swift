//
//  MainView.swift
//  Training
//
//  Created by 内藤生真 on 2018/05/03.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class FirstView: UIView {
    weak var testLabel : UILabel! = TestLabel()
    weak var nextButton: UIButton! = NextButton()
    //weak var prevButton: UIButton! = PrevButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(testLabel)
        //self.addSubview(nextButton)
        //self.addSubview(prevButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .white
        
        let testLabelSize = self.testLabel.sizeThatFits(self.bounds.size)
        let testLabelX = (self.bounds.width - testLabelSize.width) / 2
        let testLabelY = (self.bounds.height - testLabelSize.height) / 4
        let testLabelOrigin = CGPoint(x: testLabelX, y: testLabelY)
        self.testLabel.frame = CGRect(origin: testLabelOrigin, size: testLabelSize)
        
        let nextButtonSize = self.nextButton.sizeThatFits(self.bounds.size)
        let nextButtonX = (self.bounds.width - nextButtonSize.width) * 2
        let nextButtonY = (self.bounds.height - nextButtonSize.height) / 1.5
        let nextButtonOrigin = CGPoint(x: nextButtonX, y: nextButtonY)
        self.nextButton.frame = CGRect(origin: nextButtonOrigin, size: nextButtonSize)
    }
}
