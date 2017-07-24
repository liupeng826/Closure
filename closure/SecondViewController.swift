//
//  second.swift
//  closure
//
//  Created by v0cn123 on 2017/7/17.
//  Copyright © 2017年 v0cn123. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var closure: ((String) -> ())?
    
    @IBAction func bacBtnClick(_ sender: Any) {
        if closure != nil {
            //闭包回调
            closure!(backTxt.text!)
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    func someClosure(_ Closer:(_ a :String) -> Void){
        Closer("1234567890")
    }
}
