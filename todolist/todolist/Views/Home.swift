//
//  Home.swift
//  todolist
//
//  Created by Gabe on 2025-01-14.
//

import SwiftUI

struct Home: View {
    let items = ["item1", "item2", "item3"]
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body:some View {
        ScrollView {
            
            Text("List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            
            LazyVGrid(columns: columns, spacing: 16){
                ForEach(items, id: \.self) { item in
                    HomeTile()
                }
            }
        }
        .padding()
        .background(Color(hex: "#F7F7F7"))
        
        
        
    }
}

#Preview {
    Home()
}
