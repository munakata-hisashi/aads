// Code4_2.tribonacciMemo(7)
struct Code4_2 {
    static func tribonacciMemo(_ N: Int) {
        var memo: Array<Int> = .init(repeating: -1, count: N + 1)
        
        func recursive(_ N: Int) -> Int {
            switch N {
            case 0:
                memo[0] = 0
                return 0
            case 1:
                memo[1] = 0
                return 0
            case 2:
                memo[2] = 1
                return 1
            default:
                if (memo[N] != -1) { return memo[N] }
                memo[N] = recursive(N - 1) + recursive(N - 2) + recursive(N - 3)
                return memo[N]
            }
        }
        _ = recursive(N)
        for (index, n) in memo.enumerated() {
            print("第\(index)項: \(n)")
        }
    }
}
