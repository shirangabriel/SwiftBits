//
//  KeyboardLayout.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct KeyboardLayoutView: View {
    
    struct Button {
        let name: String
        let text: String // SF Symbol name or plain text
        let isIconAvailable: Bool // SF Symbol name or plain text
        let type: ButtonType
        let color: String // Hex color code
    }
    
    enum ButtonType {
        case number
        case symbol
    }
    
    let buttons: [[String]] = [
        ["AC", "+/-", "%", "/"],
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["undo", "0", ".", "="]
    ]
    
    
    let onKeyPress: (String) -> Void
    
    var body: some View {
        VStack {
            Spacer().frame(height: 40)
            ForEach(buttons, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { button in
                        ButtonKey(name: button, onPress: { name in
                            onKeyPress(name)
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
