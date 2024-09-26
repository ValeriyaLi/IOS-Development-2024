import UIKit

/6

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 {
        return []
    }
    
    if n == 1 {
        return [0]
    }

    var seq: [Int] = [0, 1]

    for i in 2..<n {
        let nextNumber = seq[i - 1] + seq[i - 2]
        seq.append(nextNumber)
    }

    return seq
}

let fibSequence = fibonacci(9)
print(fibSequence)
