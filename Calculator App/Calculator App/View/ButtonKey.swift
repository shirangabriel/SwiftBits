//
//  KeyButton.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ButtonKey: View {
    
    let key: String
    let onPress: (String) -> Void
    var body: some View {
        Button(action: {
            onPress(key)
        }){
            renderTextOrIcon(key: key)
        }
        .padding()
        .frame(width: 80, height: 80)
        .background(Color(hex: "#F7F7F7"))
        .cornerRadius(30)
    }
    
    
    
    func renderTextOrIcon(key: String)-> some View {
        if(key == "backspace" || key == "/" || key == "x" || key == "-" || key == "+" ){
            return AnyView(
                Image(systemName: getIconName(key: key))
                    .foregroundStyle(getTextColor(key: key))
                    .fontWeight(.semibold)
                    .font(.title)
            )
        }else {
            return AnyView(Text(key)
                .font(.title)
                .foregroundColor(self.getTextColor(key: key))
                .fontWeight(.semibold))
        }
    }
    
    
    func getTextColor(key: String)-> Color {
        let arithMaticRegexPatternHorizontalRow = "(AC|\\+/-|%)"
        let arithMaticRegexPatternVerticalRow = "(/|x|-|\\+|=)"
        if let _ = key.range(of: arithMaticRegexPatternHorizontalRow, options: .regularExpression){
            return .teal
        }else if let _ = key.range(of: arithMaticRegexPatternVerticalRow, options: .regularExpression){
            return .orange
        }
        
        return .black
    }
    
    
    func getIconName(key: String) -> String {
        switch key {
        case "backspace":
            return "delete.left"
        case "/":
            return "divide"
        case "x":
            return "multiply"
        case "-":
            return "minus"
        case "+":
            return "plus"
        default:
            return ""
        }
    }
}


#Preview {
    
    ButtonKey( key: "x", onPress: { name in
        print("\(name) pressed")
    })
}
