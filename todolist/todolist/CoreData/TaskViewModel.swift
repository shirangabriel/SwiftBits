//
//  TaskViewModel.swift
//  todolist
//
//  Created by Gabe on 2025-01-26.
//

import CoreData

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func fetchTasks(){
        tasks = CoreDataManager.shared.fetchTasks()
    }
}
