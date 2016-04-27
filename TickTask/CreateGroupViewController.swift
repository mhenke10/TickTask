//
//  CreateGroupViewController.swift
//  TickTask
//
//  Created by Michael Henke on 4/27/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class CreateGroupViewController: UITableViewController {
    
    @IBOutlet weak var groupNameField: UITextField!
    
    override func viewDidLoad(){
            super.viewDidLoad()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 && indexPath.row == 0 {
            groupNameField.becomeFirstResponder()
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveGroup"{
            Groups.createNewGroup(groupNameField.text!)
        }
    }
    
    
    
    
    
    
    
}
