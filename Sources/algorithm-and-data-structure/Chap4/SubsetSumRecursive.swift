import Foundation

// SubsetSumRecursive.search()
struct SubsetSumRecursive {
    static func search() {
        let w = Int(readLine()!)!
        let list = Array<Int>.fromReadLine()
        let count = list.count
        
        func exist(_ i: Int, _ w: Int, _ array: Array<Int>) -> Bool {
            if (i == 0) {
                if (w == 0) { return true } else { return false }
            }
            
            if (exist(i - 1 , w, array)) { return true }
            
            if (exist(i - 1, w - array[i - 1], array)) { return true }
            
            return false
        }
        
        if (exist(count, w, list)) { print("Yes")} else { print("No") }
    }
}
