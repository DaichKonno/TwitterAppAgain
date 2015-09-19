//
//  TableViewController.swift
//  TwitterAppAgain
//
//  Created by 今野大地 on 2015/09/19.
//  Copyright (c) 2015年 diechkonno. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let dataArray:[[String:String]] =
    [
        ["title":"タイトル1",
         "image":"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQFW-T05xD7OgzHeVj20eGN3EuEU6cI7J83_GKivS8DaYqq16-ojw"
        ],
        ["title":"タイトル2",
         "image":"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQNCCdNQSSITXCBa9j_sMl6dUNYuCfeYyijVgkDef5eNQF-sF3Euw"
       ]
    ]
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを内部的にリサイクルしているのでこちらが必須になります。
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TimeLineTableViewCell
        
        cell.tweetLabel.text = dataArray[indexPath.row]["title"]
        
        if let imageURLString = dataArray[indexPath.row]["image"]
            ,let imageURL = NSURL(string: imageURLString){
        
                cell.iconImageView.sd_setImageWithURL(imageURL)
        
        }
        return cell
    }
    
 
    
}

