//
//  Calculator.swift
//  Calculator App
//
//  Created by Gabe on 2025-01-09.
//

import Foundation

struct Calculator {
    var displayVlaue: String = ""
    
    enum Operation: String {
        case add
        case subtract
        case multiply
        case divide
    }
    
    enum State {
        case idle
        case waitingForOperator
        case waitingForOperand
        case waitingForResult
    }
    
    let operations: [Operation] = [.add, .subtract, .multiply, .divide]
    
    let state: State = .idle
    
}
