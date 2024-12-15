//
//  DetailView.swift
//  StickyHeader
//
//  Created by Gabe on 2024-12-05.
//
import SwiftUI

struct DetailView : View {
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Detail View")
                .font(.largeTitle)
            Text("Lorem Ipsum Title")
                .font(.title)
            
            Text("Touting “quick and simple image placeholders,” Placeholder.com is easy to remember, and easy to use. Just grab their image URL, modify with your size parameters, and voila!")
                
        }
        .padding()
     
    }
}


#Preview {
    DetailView()
}
