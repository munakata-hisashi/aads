//
//  Code3_3.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/09.
//

import Foundation
struct Code3_3 {
    static func searchSecondMinValue() {
        let list = Array<Int>.fromReadLine()

        var minValue: Int = 20000000
        var secondMinValue: Int = 20000000
        for element in list {
            if (element < minValue) {
                secondMinValue = minValue
                minValue = element
            } else if (element < secondMinValue) {
                secondMinValue = element
            }
        }
        print("min=\(minValue), second=\(secondMinValue)")
    }
}
