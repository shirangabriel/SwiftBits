//
//  Home.swift
//  todolist
//
//  Created by Gabe on 2025-01-14.
//

import SwiftUI

struct Home: View {
    @State private var isModalPresented = false
    let items = ["item1", "item2", "item3"]
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body:some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    Spacer().frame(height: 60)
                    Text("List")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    
                    LazyVGrid(columns: columns, spacing: 16){
                        ForEach(listItems, id: \.self) { item in
                            NavigationLink(destination: DetailView(listItem: item)) {
                                HomeTile(listItem: item)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                        }
                    }
                }
                .scrollIndicators(.hidden)
                .padding()
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        FloatingButton(onTap: {
                            isModalPresented = true
                        })
                        
                    }
                }
                
            }
            .ignoresSafeArea()
            .sheet(isPresented: $isModalPresented, content: {
                AddTaskModalView()
            })
        }
    }
}

#Preview {
    Home()
}
