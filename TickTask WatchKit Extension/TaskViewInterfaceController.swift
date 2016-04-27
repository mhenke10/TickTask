//
//  TaskViewInterfaceController.swift
//  TickTask
//
//  Created by Oberd on 4/26/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import WatchKit
import Foundation


class TaskViewInterfaceController: WKInterfaceController {

    @IBOutlet var nameLabel: WKInterfaceLabel!
    @IBOutlet var descLabel: WKInterfaceLabel!
    @IBOutlet var dateLabel: WKInterfaceLabel!
    @IBOutlet var groupLabel: WKInterfaceLabel!
    
    var task : Task?
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        task = (context as! Task)
        nameLabel.setText(task!.taskName)
        descLabel.setText(task!.taskDescription)
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.stringFromDate((task!.dateDue))
        dateLabel.setText(date)
        groupLabel.setText(task!.groupName)

        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
