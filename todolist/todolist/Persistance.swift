//
//  Persistance.swift
//  todolist
//
//  Created by Gabe on 2025-01-27.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "todolist")
        container.loadPersistentStores { (storDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
            
        }
        
    }
    
    
    
}
