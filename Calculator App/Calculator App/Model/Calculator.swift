//
//  Calculator.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import Foundation
import SwiftUI

struct Calculator {
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
                .foregroundColor(getTextColor(key: key))
                .fontWeight(.semibold))
        }
    }
    
}
