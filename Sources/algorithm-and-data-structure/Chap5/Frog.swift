import Foundation

/// 5.2
struct Flog {
    static func flog() {
        let list = Array<Int>.fromReadLine()
        var dp: Array<Int> = .init(repeating: 0, count: list.count)

        for i in list.indices {
            guard i != 0 else { continue }
            if i == 1 {
                dp[i] = abs(list[i] - list[i - 1])
            } else {
                dp[i] = min(dp[i - 1] + abs(list[i] - list[i - 1]),
                            dp[i - 2] + abs(list[i] - list[i - 2]))
            }
        }
        print("\(dp[list.count - 1])")
        print("\(dp)")
    }
}

/// 5.3

struct Flog5_3 {
    
    static func flog() {
        let list = Array<Int>.fromReadLine()
        var dp: Array<Int> = .init(repeating: INF, count: list.count)
        dp[0] = 0
        for i in list.indices {
            guard i != 0 else { continue }
            chmin(a: &dp[i], b: dp[i - 1] + abs(list[i] - list[i - 1]))
            if i > 1 {
                chmin(a: &dp[i], b: dp[i - 2] + abs(list[i] - list[i - 2]))
            }
        }
        print("\(dp[list.count - 1])")
        print("\(dp)")
    }
}

struct Flog5_4 {
    static func flog() {
        let list = Array<Int>.fromReadLine()
        var dp: Array<Int> = .init(repeating: INF, count: list.count)
        dp[0] = 0
        for i in list.indices {
            if i + 1 < list.count {
                chmin(a: &dp[i + 1], b: dp[i] + abs(list[i] - list[i + 1]))
            }
            if i + 2 < list.count {
                chmin(a: &dp[i + 2], b: dp[i] + abs(list[i] - list[i + 2]))
            }
        }
        print("\(dp[list.count - 1])")
        print("\(dp)")
    }
}
