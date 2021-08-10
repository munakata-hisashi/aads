//
//  ArrayExtension.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/07.
//

import Foundation

extension Array {
    static func createCount(of: Int) -> Array<Int> {
        return (0 ... of).map { i in return i }
    }
    
    static func fromReadLine() -> Array<Int> {
        let input = readLine()!
        let list = input.split(separator: " ").map { i in Int(i)! }
        return list
    }
}
