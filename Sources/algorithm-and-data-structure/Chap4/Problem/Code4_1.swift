// print("\(Code4_1.tribonacci(8))")
struct Code4_1 {
    static func tribonacci(_ N: Int) -> Int {
        switch N {
        case 0:
            return 0
        case 1:
            return 0
        case 2:
            return 1
        default:
            return tribonacci(N - 1) + tribonacci(N - 2) + tribonacci(N - 3)
        }
    }
}
