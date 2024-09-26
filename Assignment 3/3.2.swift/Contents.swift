import UIKit

func isPrime(_number: Int) -> Bool {
    if _number < 2 {
        return false
    }
    
    for i in 2..<_number{
        if _number % i == 0{
            return false
        }
    }
    return true
}

for i in 1...100 {
    if isPrime(_number: i){
        print (i, "is prime")
    }
    print(i)
}
