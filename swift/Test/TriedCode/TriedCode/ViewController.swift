//
//  ViewController.swift
//  TriedCode
//
//  Created by 陈文强 on 2017/3/16.
//  Copyright © 2017年 陈文强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


func demo() {
    let name: String? = "老王"
    let age: Int? = nil
    guard let nName = name, let nAge = age else{
        print("name或age有一个为空")
        return
    }
    //代码到此，nName和nAge一定有值。
    //如果只是直接使用if let会凭空多了一个分支，guard let可以降低分支的层次。一般在解包的时候guard let用的相对比较频繁。
    print(nName + String(nAge))
}

