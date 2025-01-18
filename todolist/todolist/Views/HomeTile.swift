//
//  Home.swift
//  todolist
//
//  Created by Gabe on 2025-01-14.
//

import SwiftUI

struct HomeTile: View {
    let listItem: ListItem
    var body:some View {
        let size = UIScreen.main.bounds.width / 2        
        VStack {
            Image(systemName: listItem.image)
                .foregroundStyle(listItem.imageColor)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Text(listItem.title)
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 4)
            
            Text(String(listItem.count))
                .font(.caption)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(Color("cardBackground")) // Card background
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
        .frame(width: size, height: size)
    }
}

#Preview {
    HomeTile(listItem: ListItem(image: "plus", imageColor: .blue, title: "Add", count: 14))
}
