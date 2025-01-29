//
//  TaskRow.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct TaskRow: View {
    let task: Todo
    let onToggle: () -> Void
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(task.name ?? "Unknown")
                    .font(.subheadline)
                
                Text("\(formattedDate(someDate: task.date ?? Date()))")
                    .font(.caption)
                
                Text(task.note ?? "")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Toggle(isOn: .constant(task.isCompleted)) {
               
            }
            .toggleStyle(iOSCheckboxToggleStyle())
            .onTapGesture {
                onToggle()
            }
        }
        .frame(height: 80)
        .background(Color("cardBackground"))
        
    }
    
    
    func formattedDate(someDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .medium
        formatter.timeZone = TimeZone.current // Set to local time zone
        return formatter.string(from: someDate)
    }
    
    
}


//#Preview {
//    TaskRow(task: Todo)
//}
