//
//  TaskList.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct TaskList: View {
    var body: some View {
//        let task: Task = .init(name: "Test Task", isCompleted: false, dateAndTime: Date())
        VStack {
            List {
                Section(header: Text("Late")){
                    TaskRow()
                }
                .listRowBackground(Color("cardBackground"))
            }
        }
        .cornerRadius(30)
    }
}



#Preview {
    TaskList()
}
