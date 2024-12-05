//
//  ContentView.swift
//  StickyHeader
//
//  Created by Gabe on 2024-12-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        @State var offset: CGFloat = 0.0
        
        ScrollView {
            VStack(alignment: .leading) {
                Image(.image).resizable().scaledToFit()
//                    .frame(height: 400  + (offset < 0 ? abs(offset/2) : 0))
//                    .frame(height: 400  + (offset < 0 ? abs(offset/2) : 0))
                    .blur(radius: offset < 0 ? abs(offset/2) : 0)
                    .clipped()
                
                DetailView()
            }
            .offset(y: offset > 0 ? offset : 0)
        }
        .onScrollGeometryChange(for: CGFloat.self, of: { geometry in
            geometry.contentOffset.y
        }, action: { _, newValue in
            offset = newValue
        })
        .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
