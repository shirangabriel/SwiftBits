//
//  TaskRow.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Call Max")
                    .font(.subheadline)
                
                Text("20:15 - April 15th")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Toggle(isOn: .constant(true)) {
                
            }
            .toggleStyle(iOSCheckboxToggleStyle())
        }
        .frame(height: 80)
        .background(Color("cardBackground"))
        
    }

    
}


#Preview {
    TaskRow()
}
