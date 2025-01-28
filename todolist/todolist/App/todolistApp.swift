//
//  todolistApp.swift
//  todolist
//
//  Created by Gabe on 2025-01-14.
//

import SwiftUI

@main
struct todolistApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
