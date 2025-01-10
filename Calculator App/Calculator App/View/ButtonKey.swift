//
//  KeyButton.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ButtonKey: View {
    
    let name: String
    let onPress: (String) -> Void
    var body: some View {
        Button(action: {
            onPress(name)
        }){
            Text(name)
                .font(.title)
                .foregroundColor(.teal)
                .fontWeight(.semibold)
        }
        .padding()
        .frame(width: 80, height: 80)
        .background(Color(hex: "#F7F7F7"))
        .cornerRadius(30)
    }
}


#Preview {
    ButtonKey(name: "AC", onPress: { name in
        print("\(name) pressed")
    })
}
