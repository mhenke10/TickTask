//
//  TaskViewController.swift
//  TickTask
//
//  Created by Oberd on 3/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var taskNameLabel: UILabel!
    var task : Task!
//    @IBOutlet weak var descriptionLabel: UILabel!
//    @IBOutlet weak var dueDateLabel: UILabel!
//    var task : Task
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        taskNameLabel.text = ""
//        descriptionLabel.text = "Description of the task"
//        dueDateLabel.text = "May 19 2016"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
