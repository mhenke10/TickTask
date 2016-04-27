//
//  Groups.swift
//  TickTask
//
//  Created by Oberd on 4/24/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import Foundation

class Groups: NSObject {
    
    static var groups = [App_Group]()
    
    
    static func getGroupCount()->Int{
        return groups.count
    }
    
    static func createNewGroup(groupName:String){
        let newGroup = App_Group(groupName: groupName)
        groups.append(newGroup)
    }

}
