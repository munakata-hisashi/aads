//
//  File.swift
//  
//
//  Created by 宗像恒 on 2022/06/12.
//

import Foundation


func chmin<T: Comparable>(a: inout T, b: T) {
    if a > b {
        a = b
    }
}
