//
//  ContentView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    @State var displayText: String = ""
    @State var smallText: String = ""
    var body: some View {
        VStack {
            Spacer()
            DisplayView(largeText: displayText, smallText: smallText)
            KeyboardLayoutView(onKeyPress: { name in
                self.handleKeyboardInput(name: name)
            })
        }
    }
    
    
    func handleKeyboardInput(name: String){
        if(name == "AC") {
            self.$displayText.wrappedValue = ""
            self.$smallText.wrappedValue = ""
        } else if(name == "undo"){
            if($displayText.wrappedValue.count > 0){
                self.$displayText.wrappedValue.removeLast()
            }
            
            if($displayText.wrappedValue.count == 0 ){
                self.$displayText.wrappedValue = $smallText.wrappedValue
                self.$smallText.wrappedValue = ""
            }
            
        } else if(name == "=") {
            self.$smallText.wrappedValue = self.$displayText.wrappedValue
            self.calculate()
        }else {
            self.$displayText.wrappedValue += name
        }
    }
    
    
    func calculate(){
        var equation: String = self.$displayText.wrappedValue;
        equation = equation.replacingOccurrences(of: "x", with: "*")
        if  let expression = NSExpression(format: equation) as NSExpression? {
            if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
                self.$displayText.wrappedValue = result.stringValue
            }else {
                print("Could not evaluate the formula.")
            }
        }else {
            print("Invalid Formula")
        }
    }
}

#Preview {
    ContentView()
}
