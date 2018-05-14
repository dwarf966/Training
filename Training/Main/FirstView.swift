//
//  MainView.swift
//  Training
//
//  Created by 内藤生真 on 2018/05/03.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class FirstView: UIView {
    public let testLabel : UILabel! = TestLabel()
    public let nextButton: UIButton! = NextButton(type: .system)
    public let prevButton: UIButton! = PrevButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(testLabel)
        self.addSubview(nextButton)
        self.addSubview(prevButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.backgroundColor = .white
        
        //Layout
        
        self.testLabel.font = UIFont.systemFont(ofSize: self.bounds.width/12)
        
        let testLabelSize = self.testLabel.sizeThatFits(self.bounds.size)
        let testLabelX = (self.bounds.width - testLabelSize.width) / 2
        let testLabelY = (self.bounds.height - testLabelSize.height) / 4
        let testLabelOrigin = CGPoint(x: testLabelX, y: testLabelY)
        self.testLabel.frame = CGRect(origin: testLabelOrigin, size: testLabelSize)
        
        self.nextButton.titleLabel?.font = UIFont.systemFont(ofSize: self.bounds.width/13)
        
        let nextButtonSize = self.nextButton.sizeThatFits(self.bounds.size)
        let nextButtonX = (self.bounds.width - nextButtonSize.width) / 1.25
        let nextButtonY = (self.bounds.height - nextButtonSize.height) / 1.5
        let nextButtonOrigin = CGPoint(x: nextButtonX, y: nextButtonY)
        self.nextButton.frame = CGRect(origin: nextButtonOrigin, size: nextButtonSize)
        
        self.prevButton.titleLabel?.font = UIFont.systemFont(ofSize: self.bounds.width/13)
        
        let prevButtonSize = self.prevButton.sizeThatFits(self.bounds.size)
        let prevButtonX = (self.bounds.width - prevButtonSize.width) / 5
        let prevButtonY = (self.bounds.height - prevButtonSize.height) / 1.5
        let prevButtonOrigin = CGPoint(x: prevButtonX, y: prevButtonY)
        self.prevButton.frame = CGRect(origin: prevButtonOrigin, size: prevButtonSize)
    }
}
