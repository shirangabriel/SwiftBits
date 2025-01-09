//
//  KeyboardLayout.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct KeyboardLayoutView: View {
    let buttons: [[String]] = [
        ["AC", "+/-", "%", "/"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["undo", "0", ".", "="]
    ]
    
    
    var body: some View {
        VStack {
            Spacer().frame(height: 40)
            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { button in
                        ButtonKey(name: button)
                    }
                }
            }
            Spacer().frame(height: 40)
        }
        .frame(maxWidth: .infinity)
        .background(Color(hex: "#F0F0F0"))
        .ignoresSafeArea()
    }
        
}


#Preview {
    KeyboardLayoutView()
}
