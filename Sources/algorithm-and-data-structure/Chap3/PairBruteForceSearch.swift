//
//  PairBruteForceSearch.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/07.
//

import Foundation

struct PairBruteForceSearch {
    //code 3.5
    static func pairMinSum() {
        let K = Int(readLine()!)!
        let list1 = Array<Int>.fromReadLine()
        let list2 = Array<Int>.fromReadLine()

        var minValue: Int = 20000000
        for e1 in list1 {
            for e2 in list2 {
                if (e1 + e2 < K) {
                    continue
                }

                if (e1 + e2 < minValue) {
                    minValue = e1 + e2
                }
            }
        }
        print("\(minValue)")
    }
}
