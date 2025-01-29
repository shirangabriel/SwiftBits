//
//  AddTaskModalView.swift
//  todolist
//
//  Created by Gabe on 2025-01-17.
//

import SwiftUI

struct AddTaskModalView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.presentationMode) var presentationMode
    @State var task: String = ""
    @State var note: String = ""
    @State var selectedDate = Date()
    @FocusState private var textFieldFocus: Bool;
    
    var body: some View {
        
        VStack {
            HStack{
                Spacer()
                Text("New Task")
                Spacer()
                Image(systemName: "xmark")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
            .font(.title2)
            
            
            VStack {
                Text("What are you plannig?")
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextEditor(text: $task)
                    .font(.title2)
                    .focused($textFieldFocus)
                    .disableAutocorrection(false)
                
                Divider()
                    .frame(height: 1)
                    .background(.gray)
                
                
            }
            .padding()
            .onAppear{
                textFieldFocus = true
            }
            
            
            TaskBottomForm(date: $selectedDate, note: $note)
        }
        .padding()
        
        Button(action: {
            let todo = Todo(context: moc)
            todo.id = UUID()
            todo.name = task
            todo.date = selectedDate
            todo.isCompleted = false
            todo.note = note
            
            try? moc.save()
            
            presentationMode.wrappedValue.dismiss()
            
            
            
        }){
            Text("Create")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
        }
        
    }
}

#Preview {
    AddTaskModalView()
}
