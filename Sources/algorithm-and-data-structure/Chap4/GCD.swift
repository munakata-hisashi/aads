import Foundation

// code 4.4
struct GCD {
    static func gcd(_ m: Int, _ n: Int) -> Int {
        
        if (n == 0) { return m }
        
        return gcd(n, m % n)
    }
    
    
}
