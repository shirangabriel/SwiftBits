//
//  DisplayView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct DisplayView: View {
    let largeText: String
    let smallText: String
    var body: some View {
        HStack{
            Spacer()
            VStack {
                EquationView(text: smallText, isLargeText: false)
                EquationView(text: largeText, isLargeText: true)
//                Text(formatCurrency(largeText))
//                    .font(.system(size: 64))
//                    .fontWeight(.bold)
//                    .frame(maxWidth: .infinity, alignment: .trailing)
                
            }
        }.padding(.horizontal, 24)
    }
    
    
    
    func formatCurrency(_ amount: String) -> String {
        // Convert the string to a Double
        guard let amountDouble = Double(amount) else {
            return amount // Return an error message or handle invalid input
        }
        
        // Create a number formatter
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal // Use the decimal style for thousands separator
        formatter.groupingSeparator = "," // Set the grouping separator as comma
        formatter.groupingSize = 3 // Set the grouping size to 3 for thousands
        
        return formatter.string(from: NSNumber(value: amountDouble)) ?? ""
    }
    
}



#Preview {
    DisplayView(largeText: "12936", smallText: "308+22+2")
}
