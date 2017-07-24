//
//  FirstViewController.swift
//  closure
//
//  Created by v0cn123 on 2017/7/17.
//  Copyright © 2017年 v0cn123. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let secondVC = SecondViewController()
        
        //标准闭包
        secondVC.someClosure({ (str :String) -> Void in
            print("value:\(str)")
        })
        
        //推测类型，省略类型
        secondVC.someClosure({ (str) -> Void in
            print("value:\(str)")
        })
        
        secondVC.someClosure({ (str) in
            print("value:\(str)")
        })
        
        //尾随闭包  最后一个参数是闭包
        secondVC.someClosure{ (str) in
            print("value:\(str)")
        }
        //or
        secondVC.someClosure{
            firstLable.text = $0
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var firstLable: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //拿到跳转的目标控制器
        let secondVC = segue.destination as! SecondViewController
        
        //为目标控制器的闭包属性赋值
        secondVC.closure = {
            //将闭包的参数(输入的文本内容)显示在label上
            self.firstLable.text = $0
        }
    }
}
