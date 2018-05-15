//
//  MainView.swift
//  Training
//
//  Created by 内藤生真 on 2018/05/03.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class FirstView: UIView {
    static let testLabel: UILabel! = TestLabel()
    let nextButton: UIButton! = NextButton(type: .system)
    let prevButton: UIButton! = PrevButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(FirstView.testLabel)
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
        
        FirstView.testLabel.font = UIFont.systemFont(ofSize: self.bounds.width/12)
        
        let testLabelSize = FirstView.testLabel.sizeThatFits(self.bounds.size)
        let testLabelX = (self.bounds.width - testLabelSize.width) / 2
        let testLabelY = (self.bounds.height - testLabelSize.height) / 4
        FirstView.testLabel.frame = CGRect(x: testLabelX, y: testLabelY, width: testLabelSize.width, height: testLabelSize.height)
        
        self.nextButton.titleLabel?.font = UIFont.systemFont(ofSize: self.bounds.width/13)
        
        let nextButtonSize = self.nextButton.sizeThatFits(self.bounds.size)
        let nextButtonX = (self.bounds.width - nextButtonSize.width) / 1.25
        let nextButtonY = (self.bounds.height - nextButtonSize.height) / 1.5
        self.nextButton.frame = CGRect(x: nextButtonX, y: nextButtonY, width: nextButtonSize.width, height: nextButtonSize.height)
        
        self.prevButton.titleLabel?.font = UIFont.systemFont(ofSize: self.bounds.width/13)
        
        let prevButtonSize = self.prevButton.sizeThatFits(self.bounds.size)
        let prevButtonX = (self.bounds.width - prevButtonSize.width) / 4
        let prevButtonY = (self.bounds.height - prevButtonSize.height) / 1.5
        self.prevButton.frame = CGRect(x: prevButtonX, y: prevButtonY, width: prevButtonSize.width, height: prevButtonSize.height)
    }
}
