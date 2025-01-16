//
//  FloatingButton.swift
//  todolist
//
//  Created by Gabe on 2025-01-15.
//

import SwiftUI

struct FloatingButton: View {
    let onTap: () -> Void
    var body: some View {
        Button(action: {
            onTap()
        }) {
            Image(systemName: "plus")
                .frame(width: 64, height: 64)
                .foregroundColor(.white)
                .font(.title3)
                .background(.blue)
                .clipShape(Circle())
                .padding()
                .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 5)
        }
        .padding(16)
    }
}


#Preview { FloatingButton(onTap: {}) }
