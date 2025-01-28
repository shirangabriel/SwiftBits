//
//  TaskRow.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct TaskRow: View {
    let task: Todo
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.name ?? "Unknown")
                    .font(.subheadline)
                
                Text("\(task.date ?? Date())")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Toggle(isOn: .constant(task.isCompleted)) {
                
            }
            .toggleStyle(iOSCheckboxToggleStyle())
        }
        .frame(height: 80)
        .background(Color("cardBackground"))
        
    }

    
}


//#Preview {
//    TaskRow(task: Todo)
//}
