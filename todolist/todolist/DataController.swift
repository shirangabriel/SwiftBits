//
//  DataController.swift
//  todolist
//
//  Created by Gabe on 2025-01-27.
//

import Foundation
import CoreData


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "todolist")
    
    init(){
        container.loadPersistentStores { (storDescription, error) in
            if let error = error as NSError? {
                fatalError("Core Data failed to load\(error), \(error.localizedDescription)")
            }
        }
        
    }
}
