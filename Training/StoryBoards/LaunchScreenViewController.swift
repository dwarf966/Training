//
//  LaunchScreenViewController.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class LaunchScreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let firstViewController = FirstViewController.instantiateSubViewController() {
            present(firstViewController, animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
