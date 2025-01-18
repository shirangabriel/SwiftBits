//
//  TaskDetailCell.swift
//  todolist
//
//  Created by Gabe on 2025-01-18.
//

import SwiftUI

struct TaskDetailCell: View {
    let imageName: String
    let text: String
    let onTap: () -> Void
    
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
            Text(text)
                .padding(.leading, 16)
            
            Spacer()
        }
        .font(.subheadline)
        .fontWeight(.medium)
        .padding(.bottom, 16)
        .onTapGesture {
            onTap()
        }
    }
}


#Preview {
    TaskDetailCell(imageName: "plus", text: "some text", onTap: {})
}
