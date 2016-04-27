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
    static var groupsList : [String] = ["Group1","Group2","Group3"]
    
    override init(){
        TaskManager.createNewTask("Task1", taskDescription: "Task1", dueDate: NSDate(),groupName: "A")
        TaskManager.createNewTask("Task2", taskDescription: "Task2", dueDate: NSDate(),groupName: "B")
        TaskManager.createNewTask("Task3", taskDescription: "Task3", dueDate: NSDate(),groupName: "C")
        TaskManager.createNewTask("Task4", taskDescription: "Task4", dueDate: NSDate(),groupName: "A")
        TaskManager.createNewTask("Task5", taskDescription: "Task5", dueDate: NSDate(),groupName: "A")

    }
    
    
    static func createNewTask(taskName : String, taskDescription : String, dueDate : NSDate, groupName : String){
 
        let newTask = Task(taskName: taskName,taskDescription: taskDescription, dueDate: dueDate, groupName: groupName)
        tasks.append(newTask)
    }
    
    
}