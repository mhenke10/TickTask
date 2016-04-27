//
//  Task.swift
//  TickTask
//
//  Created by Oberd on 1/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import CoreLocation
import Foundation


//enum to determine onEntry or onExit of location
enum EventType: Int {
    case OnEntry = 0
    case OnExit
}

class TaskLocation : Task {
    
    //for the location stuff
    var coordinate: CLLocationCoordinate2D
    var radius: CLLocationDistance
    var identifier: String
    var eventType: EventType
    
    
    init(taskName: String, taskDescription: String, dueDate: NSDate, groupName: String, identifier: String, coordinate: CLLocationCoordinate2D, eventType: EventType) {
        self.radius = 0
        self.coordinate = coordinate
        self.identifier = identifier
        self.eventType = eventType
        super.init(taskName: taskName, taskDescription: taskDescription, dueDate: dueDate, groupName: groupName)
    }
    
    
}
