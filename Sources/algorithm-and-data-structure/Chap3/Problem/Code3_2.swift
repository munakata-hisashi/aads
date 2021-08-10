//
//  Code3_2.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/09.
//

import Foundation

struct Code3_2 {
    static func count() {
        let v = Int(readLine()!)!
        let list = Array<Int>.fromReadLine()
        var count: Int = 0
        for element in list {
            if element == v {
                count += 1
            }
        }
        print("\(count)")
    }
}
