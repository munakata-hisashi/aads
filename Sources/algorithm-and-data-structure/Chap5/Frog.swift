import Foundation

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
