//
//  TaskManager.swift
//  TickTask
//
//  Created by Oberd on 1/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import Foundation

class TaskManager : NSObject {
    
    static var tasks = [Task]()
    
    override init(){
        TaskManager.createNewTask("Task1", taskDescription: "Task1", dueDate: NSDate())
        TaskManager.createNewTask("Task2", taskDescription: "Task2", dueDate: NSDate())
        TaskManager.createNewTask("Task3", taskDescription: "Task3", dueDate: NSDate())
        TaskManager.createNewTask("Task4", taskDescription: "Task4", dueDate: NSDate())
        TaskManager.createNewTask("Task5", taskDescription: "Task5", dueDate: NSDate())

    }
    
    static func createNewTask(taskName : String, taskDescription : String, dueDate : NSDate){
        let newTask = Task(taskName: taskName,taskDescription: taskDescription, dueDate: dueDate, groupName: "Group 1")
        tasks.append(newTask)
        print(newTask.taskName)
        print(tasks)
    }
    
    
}