//
//  GroupTasksTableViewController.swift
//  TickTask
//
//  Created by Oberd on 3/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class GroupTasksTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = true
        self.title = "Group Task List"
        //setting up editing ability
        navigationItem.leftBarButtonItem = editButtonItem()
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //number of sections in table
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //Number or rows in section is equal to count of tasks in taskManager array
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManager.tasks.count
    }
    
    //Fill cells in tableView to be of type task.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("GroupTaskCell", forIndexPath: indexPath) as! GroupTaskCell
            
            let task = TaskManager.tasks[indexPath.row] as Task
            cell.task = task
            return cell
    }
    
    
    //segues and handling saving/canceling
    @IBAction func cancelToTaskListViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveTask(segue:UIStoryboardSegue) {
        
        let indexPath = NSIndexPath(forRow: TaskManager.tasks.count-1, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        tableView.reloadData()
        
    }
    
    //Delete task from tableView / from array of tasks
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            TaskManager.tasks.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewTaskFromGroup"{
            let destination = segue.destinationViewController as! TaskViewController
            destination.task = Task(taskName: "Task Name",taskDescription: "Desc",dueDate: NSDate())
        }
    }
}
