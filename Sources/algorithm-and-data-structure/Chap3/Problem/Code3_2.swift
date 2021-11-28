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
