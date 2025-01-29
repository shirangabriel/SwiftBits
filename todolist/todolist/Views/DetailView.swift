//
//  DetailView.swift
//  todolist
//
//  Created by Gabe on 2025-01-15.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.managedObjectContext) var moc
    @State var isPresented: Bool = false
    
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
                        isPresented = true
                    })
                    
                }
            }
            
        }
        .sheet(isPresented: $isPresented, content: {
            AddTaskModalView()
        })
    }
}


#Preview {
    DetailView(listItem: ListItem(image: "plus", imageColor: .black, title: "All", count: 23))
}
