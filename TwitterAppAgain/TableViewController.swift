//
//  TableViewController.swift
//  TwitterAppAgain
//
//  Created by 今野大地 on 2015/09/19.
//  Copyright (c) 2015年 diechkonno. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let dataArray:[[String:String]] = [["title":"タイトル1"],["title":"タイトル2"]]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを内部的にリサイクルしているのでこちらが必須になります。
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = dataArray[indexPath.row]["title"]
        
        return cell
    }
    
}
   
