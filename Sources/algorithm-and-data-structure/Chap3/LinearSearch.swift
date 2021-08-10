//
//  LinearSearch.swift
//  algorithm-and-data-structure
//
//  Created by h_munakata on 2021/05/06.
//

import Foundation

struct LinearSearch {

    // code 3.1
    static func search() {
        let v = Int(readLine()!)!
        let input = readLine()!
        let list = input.split(separator: " ").map { i in Int(i)! }
        var exist: Bool = false
        for element in list {
            if element == v {
                exist = true
            }
        }
        if exist {
            print("Yes")
        } else {
            print("No")
        }
    }

    // code 3.2
    static func searchWithIndex() {
        let v = Int(readLine()!)!
        let input = readLine()!
        let list = input.split(separator: " ").map { i in Int(i)! }
        var foundId: Int = -1
        var count = 0
        for element in list {
            if element == v {
                foundId = count
            } else {
                count += 1
            }
        }
        print("\(foundId)")
    }

    // code 3.3
    static func searchMinValue() {
        let input = readLine()!
        let list = input.split(separator: " ").map { i in Int(i)! }

        var minValue: Int = 20000000
        for element in list {
            if (element < minValue) { minValue = element }
        }
        print("\(minValue)")
    }

}
