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
            
            self.calculate()
            
            self.$smallText.wrappedValue = self.$displayText.wrappedValue
            
            self.$displayText.wrappedValue = "1928"
        }else {
            self.$displayText.wrappedValue += name
        }
    }
    
    
    func calculate(){
        let chars = Array(displayText)
        
        for (index, char) in chars.enumerated(){
            let temp = ""

        }
        
        
        print(chars)

    }
    
    
    func isNumber(_ string: String) -> Bool {
        return Double(string) != nil
    }
    
    
    
}

#Preview {
    ContentView()
}
