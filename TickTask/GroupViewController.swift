//
//  GroupViewController.swift
//  TickTask
//
//  Created by Oberd on 4/24/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class GroupViewController: UIViewController{

    @IBOutlet weak var nameLabel: UILabel!
    
    var group : App_Group?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = group?.groupName
    }
}
