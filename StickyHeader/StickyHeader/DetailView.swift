//
//  DetailView.swift
//  StickyHeader
//
//  Created by Gabe on 2024-12-05.
//
import SwiftUI

struct DetailView : View {
    var body: some View {
        VStack() {
            Text("Detail View")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
            Text("Lorem Ipsum Title")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title)
            
            Text("Touting “quick and simple image placeholders,” Placeholder.com is easy to remember, and easy to use. Just grab their image URL, modify with your size parameters, and voila!")
                .frame(maxWidth: .infinity, alignment: .leading)
                
        }
        .padding()
     
    }
}


#Preview {
    DetailView()
}
