//
//  TaskList.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct TaskList: View {
    @FetchRequest(sortDescriptors: []) var todoItems: FetchedResults<Todo>
    var body: some View {
        VStack {
            List(todoItems) { todo in
                Section(header: Text("Late")){
                    TaskRow(task: todo, onToggle: {
                      
                    })
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
