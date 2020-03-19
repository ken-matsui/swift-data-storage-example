//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by KEN on 2017/01/31.
//  Copyright © 2017年 KEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        // textというキーを指定して保存していた値を取り出す
        if let value = userDefaults.string(forKey: "text"){
            // 取り出した値をテキストフィールドに設定
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(_ sender: Any) {
        // UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        // textというキーで値を保持する
        userDefaults.set(textField.text, forKey: "text")
        // UserDefaultsへの値の保持を明示的に行う
        userDefaults.synchronize()
    }

}

