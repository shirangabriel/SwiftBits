//
//  CoreDataManager.swift
//  todolist
//
//  Created by Gabe on 2025-01-25.
//

import CoreData

class CoreDataManager {
    static let shared  = CoreDataManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "todolist")
        
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Unresolved error \(error)")
            }
        }
        
        return container
    }()
    
    
    var context: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    
    func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
}
