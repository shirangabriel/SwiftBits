//
//  DetailView.swift
//  todolist
//
//  Created by Gabe on 2025-01-15.
//

import SwiftUI

struct DetailView: View {
    let listItem: ListItem
    var body: some View {
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
            
            
            VStack {
                Text("Tasks")
                    .frame(maxWidth: .infinity)
                Spacer()
            }
            .padding()
            .background(Color("cardBackground"))
            .cornerRadius(30)
            .ignoresSafeArea(.all)
        }
        .background(.blue)
        
                
    }
}


#Preview {
    DetailView(listItem: ListItem(image: "plus", imageColor: .black, title: "All", count: 23))
}
