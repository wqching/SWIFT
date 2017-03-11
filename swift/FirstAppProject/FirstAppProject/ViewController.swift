//
//  ViewController.swift
//  FirstAppProject
//
//  Created by chenwenqiang on 2017/3/4.
//  Copyright © 2017年 chenwenqiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func Touch(_ sender: UIButton) {
        print("You pressed the button")
        let tishi = UIAlertController(title: "提示信息", message: "一个按钮被点击", preferredStyle: .actionSheet)
        let btn = UIAlertAction(title: "好的", style: .default, handler: nil)
        tishi.addAction(btn)
        self.present(tishi, animated: true, completion:nil)
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

