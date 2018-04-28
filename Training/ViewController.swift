//
//  ViewController.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/27.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Booted")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!
    var count : Int = 0
    
    @IBAction func touch_testButton(_ sender: Any) {
        testLabel.text = ""
        count = count + 1
    }
}
