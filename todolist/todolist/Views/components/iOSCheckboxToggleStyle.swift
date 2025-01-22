//
//  iOSCheckboxToggleStyle.swift
//  todolist
//
//  Created by Gabe on 2025-01-22.
//

import SwiftUI

struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Spacer()
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundStyle(.gray)
        }
    }
}
