//
//  DetailView.swift
//  todolist
//
//  Created by Gabe on 2025-01-15.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.managedObjectContext) var moc
    
    let listItem: ListItem
    var body: some View {
        
        ZStack {
            VStack {
                VStack(alignment: .leading) {
                    ZStack {
                        Circle()
                            .frame(width: 70)
                        Image(systemName: listItem.image)
                            .font(.largeTitle)
                            .foregroundStyle(listItem.imageColor)
                    }
                    .padding(.bottom)
                    
                    
                    Text(listItem.title)
                        .font(.largeTitle)
                    
                    Text(String(listItem.count))
                        .font(.subheadline)
                        .padding(.bottom, 24)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .foregroundStyle(.white)
                .padding(.leading, 36)
                
                
                TaskList()
                    .ignoresSafeArea()
            }
            .background(.blue)
            
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    FloatingButton(onTap: {
                        let todo = Todo(context: moc)
                        
                        let action = ["Organize", "Clean", "Prepare", "Update", "Write", "Fix", "Review"]
                        let objects = ["documents", "desk", "meeting agenda", "project report", "budget"];

                        todo.isCompleted = false
                        todo.name = "\(action.randomElement()!) \(objects.randomElement()!)"
                        todo.date = Date()
                        
                        try? moc.save()
                    })
                    
                }
            }
            
        }
        
        
    }
}


#Preview {
    DetailView(listItem: ListItem(image: "plus", imageColor: .black, title: "All", count: 23))
}
