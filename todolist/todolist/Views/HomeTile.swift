//
//  Home.swift
//  todolist
//
//  Created by Gabe on 2025-01-14.
//

import SwiftUI

struct HomeTile: View {
    var body:some View {
        let size = UIScreen.main.bounds.width / 2
        
        VStack {
            Image(systemName: "plus")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            Text("Add")
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 4)
            
            Text("23 Tasks")
                .font(.caption)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
        .background(.white) // Card background
        .cornerRadius(5)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
        .padding(.horizontal)
        .frame(width: size, height: size)
    }
}

#Preview {
    HomeTile()
}
