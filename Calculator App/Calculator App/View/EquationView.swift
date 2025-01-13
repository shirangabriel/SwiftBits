//
//  EquationView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-13.
//

import SwiftUI

struct EquationView: View {
    let calculator: Calculator = Calculator()
    let text: String
    let isLargeText: Bool
    @State private var isFullWidth = false
    
    
    var body: some View {
        mixTextAndImage()
    }
    
    
    func mixTextAndImage() -> some View {
        
        let textArray =  Array(text).map { String($0) }
        let formula = combineNumbers(from: textArray)
        
        return AnyView  (
            HStack(){
                ForEach(formula, id: \.self) { value in
                    if let _ = Int(value) { // Check if value can be converted to an Int
                           Text(value)
                            .font(isLargeText ? .system(size: 64): .largeTitle)
                            .fontWeight(isLargeText ? .bold : .semibold)
                            .lineLimit(3)
                       } else {
                           Image(systemName: calculator.getIconName(key: value))
                               .font(isLargeText ? .largeTitle: .title3)
                               .foregroundStyle(.orange)
                               .fontWeight(isLargeText ? .bold : .semibold)
                       }
                }
            }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .lineLimit(3)
        )
    }
    
    struct MoveUpModifier: ViewModifier {
        var isFullWidth: Bool

        func body(content: Content) -> some View {
            content
                .overlay(
                    Group {
                        if isFullWidth {
                            Text("Item 1")
                                .background(Color.red)
                                .padding()
                                .offset(y: -20) // Move up when full width is reached
                        }
                    }
                )
        }
    }
    
    
    func combineNumbers(from input: [String]) -> [String] {
        var result: [String] = []
        var currentNumber = ""
        
        for item in input {
            if let _ = Int(item) { // Check if the item is a number
                currentNumber += item
            } else { // If it's not a number, handle the current number and add the operator
                if !currentNumber.isEmpty {
                    result.append(currentNumber)
                    currentNumber = ""
                }
                result.append(item)
            }
        }
        
        // Append any remaining number at the end
        if !currentNumber.isEmpty {
            result.append(currentNumber)
        }
        
        return result
    }
}


#Preview {
    EquationView(text: "308\n+12x3+2", isLargeText: true)
}






