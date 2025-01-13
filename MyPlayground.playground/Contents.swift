import SwiftUI

var keys: [[String]] = [
    ["AC", "+/-", "%", "/"],
    ["7", "8", "9", "x"],
    ["4", "5", "6", "-"],
    ["1", "2", "3", "+"],
    ["undo", "0", ".", "="]
]


HStack {
    ForEach(keys) { row in
        HStack {
            ForEach(row) { key in
                Button(action: { print(key) }) { Text(key) }
            }
        }
    }
}
