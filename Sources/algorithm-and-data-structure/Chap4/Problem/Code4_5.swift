import Foundation

struct Code4_5 {
    static func number753(K: Int) {
        var count = 0
        
        func recursive(K: Int, a: Int) {
            if (a > K) {
                return
            }
            if check(n: a) {
                count += 1
            }
            recursive(K: K, a: a*10+7)
            recursive(K: K, a: a*10+5)
            recursive(K: K, a: a*10+3)
        }
        
        func check(n: Int) -> Bool {
            let s = String(n)
            return s.contains("7") && s.contains("5") && s.contains("3")
        }
        
        recursive(K: K, a: 0)
        print("\(count)")
    }
}
