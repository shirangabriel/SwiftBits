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
            VStack {
                Image(systemName: listItem.image)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 16)
                
                Text(listItem.title)
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(String(listItem.count))
                    .font(.subheadline)
                    .padding(.bottom, 24)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.leading, 36)
            .foregroundStyle(.white)
            
            
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
