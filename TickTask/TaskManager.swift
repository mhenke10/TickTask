//
//  TaskManager.swift
//  TickTask
//
//  Created by Oberd on 1/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import Foundation

class TaskManager : NSObject {
    
    var tasks = [Task]()
    
    func createNewTask(taskName:String,taskDescription:String,dueDate:NSDate){
        let newTask = Task(taskName: taskName,taskDescription: taskDescription, dueDate: dueDate)
        tasks.append(newTask)
    }
}