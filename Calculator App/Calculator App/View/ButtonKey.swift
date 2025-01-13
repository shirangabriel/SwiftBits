//
//  KeyButton.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ButtonKey: View {
    let calculater: Calculator = Calculator.init()
    let key: String
    let onPress: (String) -> Void
    
    var body: some View {
        Button(action: {
            onPress(key)
        }){
            calculater.renderTextOrIcon(key: key)
        }
        .padding()
        .frame(width: 80, height: 80)
        .background(Color(hex: "#F7F7F7"))
        .cornerRadius(30)
    }
}


#Preview {
    ButtonKey( key: "x", onPress: { name in
        print("\(name) pressed")
    })
}
