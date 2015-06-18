//
//  ViewController.swift
//  Checklists2
//
//  Created by Brad Gray on 6/16/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ChecklistItem") as! UITableViewCell
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row == 0 {
            label.text = "do your homework"
            
        } else if indexPath.row == 1 {
            label.text = "brush your teeth"
        } else if indexPath.row == 2 {
            label.text = "Do IOS development"
            
        } else if indexPath.row == 3 {
            label.text = "have fun"
        } else if indexPath.row == 4 {
            label.text = "relax"
        } /* will not show up bcs not enough rows declaredelse if indexPath.row == 5 {
            label.text = "do nothing"
        } */
        
        
        
        return cell
        
       
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .None {
                cell.accessoryType = .Checkmark
            } else {
                cell.accessoryType = .None
            }
        }
    tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}

