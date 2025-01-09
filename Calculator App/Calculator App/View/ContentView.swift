//
//  ContentView.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            DisplayView()
            KeyboardLayoutView()
        }
    }
}

#Preview {
    ContentView()
}
