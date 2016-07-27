//
//  ViewController.swift
//  Protocol
//
//  Created by MindLogic Solutions on 13/07/16.
//  Copyright © 2016 com.mls. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,viewControllerPassValue {
    
    @IBOutlet weak var tblView: UITableView!
    
    var arrayForNames:[String]=["Jack","Bunty","Janak","Navneet","Hari","Thikre"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblView.tableFooterView=UIView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getVal(name:String,index:Int){
        
        arrayForNames[index] = name
        tblView.reloadData()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return arrayForNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = arrayForNames[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let nextVC=self.storyboard?.instantiateViewControllerWithIdentifier("ViewController1")as! ViewController1
        nextVC.delegate=self
        nextVC.indexForRow = indexPath.row
        self.navigationController?.pushViewController(nextVC, animated: true)
    }

}

