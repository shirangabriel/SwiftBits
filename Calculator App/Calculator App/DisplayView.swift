//
//  DisplayView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct DisplayView: View {
    var body: some View {
        HStack{
            Spacer()
            VStack {
                HStack{
                    Text("308")
                    Text("x")
                    Text("42")
                }.font(.title2)
                    .fontWeight(.semibold)
                
                Text("12936")
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
        }.padding(.horizontal, 24)
    }
}



#Preview {
    DisplayView()
}
