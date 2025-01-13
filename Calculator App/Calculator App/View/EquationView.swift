//
//  EquationView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-13.
//

import SwiftUI

struct EquationView: View {
    let text: String
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
                       } else {
                           Image(systemName: "plus")
                               .foregroundStyle(.orange)
                       }
                }.font(.title)
                    .fontWeight(.semibold)
            }
                .frame(maxWidth: .infinity, alignment: .trailing)
        )
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
    EquationView(text: "308+12x3")
}






