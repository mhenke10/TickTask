//
//  CreateTaskTableViewController.swift
//  TickTask
//
//  Created by Michael Henke on 2/1/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class CreateTaskTableViewController: UITableViewController {

    var task: Task?
    let currentDate = NSDate()
    var datePickerHidden = false
    @IBOutlet weak var taskNameField: UITextField!
    @IBOutlet weak var taskDescriptionField: UITextView!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePickerChanged()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Formatting and changing datePicker upon movement
    func datePickerChanged () {
        detailLabel.text = NSDateFormatter.localizedStringFromDate(datePicker.date, dateStyle: NSDateFormatterStyle.ShortStyle, timeStyle: NSDateFormatterStyle.ShortStyle)
    }

    
    //Setting location for datePicker
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if datePickerHidden && indexPath.section == 2 && indexPath.row == 1 {
            return 0
        }
        else {
            return super.tableView(tableView, heightForRowAtIndexPath: indexPath)
        }
    }
    
    //First
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 && indexPath.row == 0{
            taskNameField.becomeFirstResponder()
        }
        toggleDatepicker()
    }
    
    
 // ToggleDatePicker reveals datepicker

    func toggleDatepicker() {
        
        datePickerHidden = !datePickerHidden
        
        tableView.beginUpdates()
        tableView.endUpdates()
        
    }
   
    //Action on tap, datePickerChanged
    @IBAction func datePickerValue(sender: UIDatePicker) {
        datePickerChanged()
    }
    
    //Saving task based on segue and task identifer
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveTaskName"{
            TaskManager.createNewTask(taskNameField.text!, taskDescription: taskDescriptionField.text!, dueDate: currentDate)
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "SaveTaskName" {
            if(taskNameField.text?.isEmpty == true){
                let alert = UIAlertView()
                alert.title = "No Task Name Added"
                alert.addButtonWithTitle("Ok")
                alert.show()
                
                return false
            }
        }
        return true
    }

}
