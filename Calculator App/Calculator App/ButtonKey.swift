//
//  KeyButton.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ButtonKey: View {
    
    let name: String
    var body: some View {
        Button() {
            print("Pressed")
        } label: {
            Text(name)
                .font(.title)
                .foregroundColor(.teal)
                .fontWeight(.semibold)
        }
        .padding()
        .frame(width: 80, height: 80)
        .background(Color(hex: "#F7F7F7"))
        .cornerRadius(10)
    }
}


#Preview {
    ButtonKey(name: "AC")
}
