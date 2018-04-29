//
//  SecondViewController.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let filename : String = "Lyrics"
    var fileBody : String? = nil
    var lines : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let path: String = Bundle.main.path(forResource: filename, ofType: "txt") {
            do {
                // ファイルの内容を取得する
                let content = try String(contentsOfFile: path)
                fileBody = content
                print("ファイルの内容取得に成功")
            } catch  {
                print("ファイルの内容取得時に失敗")
            }
        }else {
            print("指定されたファイルが見つかりません")
        }
        
        var lineIndex = 0
        
        fileBody!.enumerateLines { line, stop in
            if line != ""{
                self.lines.append(line)
                lineIndex += 1
            }
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    static func instantiateSubViewController() -> UIViewController? {
        let storyboard = UIStoryboard(name: "Second", bundle: nil)
        let initialViewController = storyboard.instantiateInitialViewController()
        
        return initialViewController
    }
    
    @IBOutlet weak var testLabel : UILabel! = TestLabel()
    @IBOutlet weak var testButton: UIButton!
    var count : Int = 0
    
    @IBAction func touch_testButton(_ sender: Any) {
        if count >= lines.endIndex {
            touch_ResetButton(self)
        } else {
            testLabel.text = self.lines[count]
            count += 1
        }
    }
    
    @IBAction func touch_ResetButton(_ sender: Any) {
        if count != 0
        {
            testLabel.text = "Want You Gone"
            count = 0
            print("Reseted")
        } else {
            print("Did not reset")
        }
        
    }
}
