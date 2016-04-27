//
//  GroupsTableViewController.swift
//  TickTask
//
//  Created by Oberd on 4/24/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.popViewControllerAnimated(false)
        self.dismissViewControllerAnimated(false, completion: nil)
        self.automaticallyAdjustsScrollViewInsets = true
        self.title = "Group List"
        navigationItem.leftBarButtonItem = editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Groups.getGroupCount()
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("GroupCell", forIndexPath: indexPath) as! GroupCell
            
            let group = Groups.groups[indexPath.row] as App_Group
            cell.group = group
            return cell
    }
    
    @IBAction func cancelToGroupsTableViewController(segue:UIStoryboardSegue) {
    }
   
    /*
    @IBAction func saveGroup(segue:UIStoryboardSegue) {
        
        let indexPath = NSIndexPath(forRow: Groups.groups.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        
        tableView.reloadData()
    }
    */

}
