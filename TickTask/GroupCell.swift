//
//  GroupCell.swift
//  TickTask
//
//  Created by Oberd on 4/24/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupLabel: UILabel!
    var group: App_Group!{
        didSet {
            groupLabel.text = group.groupName
        }
    }
}
