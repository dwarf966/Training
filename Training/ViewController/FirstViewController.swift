//
//  SecondViewController.swift
//  Training
//
//  Created by 内藤生真 on 2018/04/30.
//  Copyright © 2018年 内藤生真. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let firstView : UIView = FirstView()
    let filename : String = "Lyrics"
    var fileBody : String? = nil
    public static var lines : [String] = []
    public static var count : Int = 0
    
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
        //行ごとに配列に追加
        fileBody!.enumerateLines { line, stop in
            if line != ""{
                FirstViewController.lines.append(line)
                lineIndex += 1
            }
        }
        
        // 画面サイズを初期値として `MainView` クラスを `mainView` としてインスタンス化します。
        let firstView = FirstView(frame: self.view.bounds)
        // `MainView` に自動サイズ調整用に `autoresizingMask` を設定
        firstView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // `mainView` オブジェクトを表示します。
        self.view.addSubview(firstView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touch_ResetButton(_ sender: Any) {
        print("tapped reset")
        if FirstViewController.count != 0
        {
            FirstView.testLabel.text = "Want You Gone"
            FirstViewController.count = 0
            print("Reseted")
        } else {
            print("Did not reseted")
        }
    }
}
