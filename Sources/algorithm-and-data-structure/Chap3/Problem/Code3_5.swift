//
//  Code3_5.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/11.
//

import Foundation

// N個の整数それぞれが2で何回割れるかを求める。その回数の最小値が答え。
struct Code3_5 {
    static func getNumberOfTimes() {
        let list = Array<Int>.fromReadLine()
        var result = Int.max
        for element in list {
            result = min(result, howManyTimes(n: element))
        }
        print("\(result)")
    }
    
    private static func howManyTimes(n: Int) -> Int {
        var exp = 0
        var N = n
        while(N % 2 == 0){
            N /= 2
            exp += 1
        }
        return exp
    }
}
