//
//  Task.swift
//  TickTask
//
//  Created by Oberd on 1/30/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import Foundation

class Task : NSObject {
    var taskName:String
    var taskDescription:String
    var dateDue:NSDate
    var isCompleted:Bool
    var dateCompleted:NSDate?
 
    init(taskName:String,taskDescription:String,dueDate:NSDate) {
        self.taskName = taskName
        self.taskDescription = taskDescription
        self.dateDue = dueDate
        self.isCompleted = false
        self.dateCompleted = nil;
    }
    
    func getTaskName()->String{
        return self.taskName
    }
    
    func getTaskDescription()->String{
        return self.taskDescription
    }
    
    func getDueDate()->NSDate{
        return self.dateDue
    }
    
    func setName(forTaskName : String){
        self.taskName = forTaskName
    }
    
    func setDesciption(forDescription :String){
        self.taskDescription = forDescription
    }
    
    func setDueDate(forDueDate:NSDate){
        self.dateDue = forDueDate
    }
    
    func editName(newName:String){
        self.setName(newName)
    }
    func editDescription(newDescription:String){
        self.setDesciption(newDescription)
    }
    func editDueDate(newDueDate:NSDate){
        self.setDueDate(newDueDate)
    }
    func completeTask(){
        self.isCompleted = true;
        self.dateCompleted = NSDate()
    }
    
    
}
