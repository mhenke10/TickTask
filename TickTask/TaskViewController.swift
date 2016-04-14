//
//  TaskViewController.swift
//  TickTask
//
//  Created by Oberd on 3/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet var taskDescLabel: UILabel!
    
    @IBOutlet weak var dueDateLabel: UILabel!
    
    @IBOutlet weak var groupLabel: UILabel!
    
    var task : Task?
//    @IBOutlet weak var descriptionLabel: UILabel!
//    @IBOutlet weak var dueDateLabel: UILabel!
//    var task : Task
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.stringFromDate((task?.dateDue)!)
        
        self.title = task?.taskName
        taskDescLabel.text = task?.taskDescription
        dueDateLabel.text = date
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
