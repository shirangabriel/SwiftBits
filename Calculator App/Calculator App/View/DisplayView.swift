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
                EquationView(text: smallText)
                Text(largeText)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    
            }
        }.padding(.horizontal, 24)
    }
    
    
    
    
    
}



#Preview {
    DisplayView(largeText: "12936", smallText: "308+22+2")
}
