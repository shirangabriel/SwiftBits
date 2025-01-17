//
//  ModalView.swift
//  todolist
//
//  Created by Gabe on 2025-01-17.
//

import SwiftUI

struct ModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack {
            Text("Modal View")
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Dismiss")
            }
        }
        
    }
}

#Preview {
    ModalView()
}
