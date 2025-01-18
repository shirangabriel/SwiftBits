//
//  ModalView.swift
//  todolist
//
//  Created by Gabe on 2025-01-17.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var task: String = ""
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
            
            
            VStack {
                TaskDetailCell(imageName: "bell", text: "May 29, 14:00", onTap: {
                    handleOnTaskInforCellTap(taskInfo: "reminder")
                })
                
                
                HStack {
                    Image(systemName: "note")
                    Text("Add note")
                        .padding(.leading, 16)
                    Spacer()
                }
                .font(.subheadline)
                .fontWeight(.medium)
                .padding(.bottom, 16)
                .onTapGesture {
                    print("Date")
                }
                
                
                
                TaskDetailCell(imageName: "tag", text: "Category", onTap: {
                    handleOnTaskInforCellTap(taskInfo: "category")
                })
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
            
            
        }
        .padding()
        
        Button(action: {}){
            Text("Create")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
        }
        
    }
    
    
    
    func handleOnTaskInforCellTap(taskInfo: String) {
        print(taskInfo)
    }
}

#Preview {
    ModalView()
}
