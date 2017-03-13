//
//  ViewController.swift
//  BaiduUrl
//
//  Created by chenwenqiang on 2017/3/12.
//  Copyright © 2017年 cn.readingday. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = URL(string: "http://www.readingday.cn")
        
        URLSession.shared.dataTask(with: url!) {(data, _, Error) in
            guard let data = data  else {
                print("ERROR \(Error)")
                return
            }
            
            let html = String(data: data, encode(with: NSCoder),
            print(html)
    }.resume()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

