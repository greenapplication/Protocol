//
//  ViewController1.swift
//  Protocol
//
//  Created by MindLogic Solutions on 13/07/16.
//  Copyright © 2016 com.mls. All rights reserved.
//

import UIKit

protocol viewControllerPassValue{
    func getVal(name:String,index:Int)
}

class ViewController1: UIViewController {
    
    
    var delegate:viewControllerPassValue!
    var indexForRow:Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPress(sender: AnyObject) {
        self.delegate.getVal("JAckspa22ow", index: indexForRow)
        navigationController?.popViewControllerAnimated(true)
    }

}
