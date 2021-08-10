//
//  Code3_4.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/11.
//

import Foundation

// N個の値の最大値と最小値を求め、それらの差が差の最大値
struct Code3_4 {
    static func searchMaxDiff() {
        let list = Array<Int>.fromReadLine()
        var minValue: Int = 20000000
        var maxValue: Int = -20000000
        for element in list {
            if (element < minValue) { minValue = element }
            if (element > maxValue) { maxValue = element }
        }
        print("Max diff = \(maxValue - minValue)")
    }
}
