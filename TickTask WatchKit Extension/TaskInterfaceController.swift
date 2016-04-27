//
//  TaskInterfaceController.swift
//  TickTask
//
//  Created by Oberd on 4/20/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import WatchKit
import Foundation


class TaskInterfaceController: WKInterfaceController {

    
    @IBOutlet var table: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        TaskManager.init()
        TaskManager.tasks.sortInPlace({$0.groupName < $1.groupName})
        table.setNumberOfRows(TaskManager.tasks.count, withRowType: "TaskRowType")

        for (index, task) in TaskManager.tasks.enumerate() {
            if(task.isCompleted != true){
                let controller = table.rowControllerAtIndex(index) as! TaskRowController
                controller.titleLabel.setText(task.taskName)
                controller.groupLabel.setText("\(task.groupName)")
            }
        }
        // Configure interface objects here.
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String, inTable table: WKInterfaceTable, rowIndex: Int) -> AnyObject? {
        return TaskManager.tasks[rowIndex]
    }


}
