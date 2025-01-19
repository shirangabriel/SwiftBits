//
//  Task.swift
//  todolist
//
//  Created by Gabe on 2025-01-19.
//

import Foundation

struct Task: Hashable, Identifiable {
    let id: UUID = UUID()
    let name: String
    let isCompleted: Bool
    let dateAndTime: Date
}
