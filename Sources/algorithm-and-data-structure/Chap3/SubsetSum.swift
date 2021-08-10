//
//  SubsetSum.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/09.
//

import Foundation

struct SubsetSum {
    //code 3.6
    static func search() {
        let w = Int(readLine()!)!
        let list = Array<Int>.fromReadLine()
        let count = list.count

        var exist = false
        // 0 <= bit < 2^N
        // <<, & はビット演算子
        for bit in 0 ..< (1 << count) {
            var sum = 0
            for i in 0..<count {
                let and = bit & (1 << i)
                if (and != 0) {
                    sum += list[i]
                }
            }
            
            if (sum == w) { exist = true }
        }
        
        if (exist) { print("Yes")} else { print("No")}
    }
}
