import Foundation

struct Fibo {
    // code 4.5
    static func fiboRecursive(_ n: Int) -> Int {
        switch n {
        case 0:
            return 0
        case 1:
            return 1
        default:
            return fiboRecursive(n - 1) + fiboRecursive(n - 2)
        }
    }
    
    // code 4.7
    static func fiboLoop() {
        var a = Array<Int>.createCount(of: 50)
        a[0] = 0
        a[1] = 1
        for n in (2 ... 50) {
            a[n] = a[n - 1] + a[n - 2]
            print("\(n) 項目: \(a[n])")
        }
    }
}
