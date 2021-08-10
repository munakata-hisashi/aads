//
//  Code3_7.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/30.
//

import Foundation

struct Code3_7 {
    static func sum() {
        let S = readLine()!
        let N = S.count
        // + がおける場所の数
        let count = N - 1
        var sum: Int = 0
        // bit は 0 以上、2^N-1 以下の整数。N-1 個の整数からなる集合の部分集合。
        for bit in 0 ..< (1 << count) {
            var SArray: [String] = Array(S).map{c in String(c)}
            for i in 0..<count {
                let and = bit & (1 << i)
                if (and != 0) {
                    // i番目の隙間に + が入る
                    SArray[i] = SArray[i] + "+"
                    print("bit: \(bit), \(SArray)")
                }
            }
            sum += sumArray(array: SArray)
        }
        print("\(sum)")
    }
    // ["1+", "2", "5"] を受け取って、 1 + 25 = 26 を返すような関数
    private static func sumArray(array: [String]) -> Int {
        let str = array.joined()
        let intArray = str.split(separator: "+").map { el in Int(el)! }
        let sum = intArray.reduce(0, { (result, item) -> Int in
            return result + item
        })
        print("sumArray: \(sum)")
        return sum
    }

}
