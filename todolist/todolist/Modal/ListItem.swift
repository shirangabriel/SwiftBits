//
//  ListItem.swift
//  todolist
//
//  Created by Gabe on 2025-01-18.
//

import SwiftUI

struct ListItem : Hashable {
    let image: String
    let imageColor: Color
    let title: String
    let count: Int
}

let listItems: [ListItem] = [
    ListItem(image: "list.clipboard", imageColor: .blue, title: "All", count: 23),
    ListItem(image: "briefcase", imageColor: .orange, title: "Work", count: 14),
    ListItem(image: "beats.headphones", imageColor: .red, title: "Music", count: 6),
    ListItem(image: "airplane.departure", imageColor: .green, title: "Travel", count: 1),
    ListItem(image: "text.book.closed.fill", imageColor: .purple, title: "Study", count: 2),
    ListItem(image: "house", imageColor: .teal, title: "Home", count: 14),
    ListItem(image: "paintpalette", imageColor: .cyan, title: "Paint", count: 2),
    ListItem(image: "cart", imageColor: .pink, title: "Shopping", count: 7)
]
