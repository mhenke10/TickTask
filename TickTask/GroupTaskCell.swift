//
//  TableViewCell.swift
//  TickTask
//
//  Created by Oberd on 4/9/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class GroupTaskCell: UITableViewCell {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    
    var task: Task!{
        didSet {
            taskLabel.text = task.taskName
            descriptionLabel.text = task.taskDescription
        }
    }

}
