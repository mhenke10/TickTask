//
//  App_Group.swift
//  TickTask
//
//  Created by Oberd on 4/24/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import Foundation

class App_Group : NSObject {
    var groupName:String
    
    init(groupName:String) {
        self.groupName = groupName
    }
    
    func getGroup()->String{
        return self.groupName
    }
}