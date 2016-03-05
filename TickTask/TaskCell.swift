//
//  TaskCell.swift
//  TickTask
//
//  Created by Michael Henke on 2/20/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var task: Task!{
        didSet {
            taskLabel.text = task.taskName
            descriptionLabel.text = task.taskDescription
        }
    }
    
    
    
    
    
    
    
    
}
