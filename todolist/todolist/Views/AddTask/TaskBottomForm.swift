//
//  TaskBottomForm.swift
//  todolist
//
//  Created by Gabe on 2025-01-28.
//

import SwiftUI

struct TaskBottomForm: View {
    
    @Binding var date: Date
    @Binding var note: String
    
    var body: some View {
        VStack {
            
            HStack() {
                Image(systemName: "bell")
                DatePicker("", selection: $date)
                    .frame(width: 0)
                    .datePickerStyle(CompactDatePickerStyle())
                    .padding(.leading, 115)
                Spacer()
            }
            
            
            HStack {
                Image(systemName: "note")
                TextField("Note", text: $note )
                Spacer()
            }
            .font(.subheadline)
            .fontWeight(.medium)
            .padding(.bottom, 16)
            .padding(.top, 16)
            .onTapGesture {
                print("Date")
            }
            
            
            
            HStack {
                Image(systemName: "tag")
                Text("Category")
                Spacer()
            }
            .font(.subheadline)
            .fontWeight(.medium)
            .padding(.bottom, 16)
            .onTapGesture {
                
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 16)
    }
}


#Preview {
    TaskBottomForm(date: .constant(Date()), note: .constant("This is a new note"))
}
