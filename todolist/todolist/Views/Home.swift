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
                    Text("List")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    
                    LazyVGrid(columns: columns, spacing: 16){
                        ForEach(items, id: \.self) { item in
                            NavigationLink(destination: DetailView()) {
                                HomeTile()
                            }
                            
                        }
                    }
                }
                .padding()
                .background(Color(hex: "#F7F7F7"))
                
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
            .sheet(isPresented: $isModalPresented, content: {
                ModalView()
            })
        }
    }
}

#Preview {
    Home()
}
