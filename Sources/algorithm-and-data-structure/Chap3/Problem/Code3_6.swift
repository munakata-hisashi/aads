//
//  Code3_6.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/30.
//

import Foundation

struct Code3_6 {
    static func sumOfThreeIntegers() {
        let K = Int(readLine()!)!
        let N = Int(readLine()!)!
        // k > N のとき、x, y, z どれかが N より大きくなった時点で x + y + z = N は成立しないので
        // 0 以上 min(K, N) 以内を探索すると無駄がない
        let xList = Array<Int>.createCount(of: min(K, N))
        let yList = Array<Int>.createCount(of: min(K, N))
        var countOfPattern: Int = 0
        for x in xList {
            for y in yList {
                let z = N - x - y
                if z < 0 {
                    continue
                } else if z <= K {
                    countOfPattern += 1
                    print("\(x) \(y) \(z)")
                } else {
                    continue
                }
            }
        }
        print("count: \(countOfPattern)")
    }
}
