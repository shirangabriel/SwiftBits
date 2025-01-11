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
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["backsapce", "0", ".", "="]
    ]
    
    
    let onKeyPress: (String) -> Void
    
    var body: some View {
        VStack {
            Spacer().frame(height: 40)
            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { key in
                        ButtonKey(key: key, onPress: { name in
                            onKeyPress(key)
                        })
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
    KeyboardLayoutView(onKeyPress: {_ in })
}
