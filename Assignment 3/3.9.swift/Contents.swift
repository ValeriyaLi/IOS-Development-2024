import UIKit

func add(_ first: Int, _ second: Int) -> Int {
    return first + second
}

func subtract(_ first: Int, _ second: Int) -> Int {
    return first - second
}

func multiply(_ first: Int, _ second: Int) -> Int {
    return first * second
}

func divide(_ first: Int, _ second: Int) -> Double {
    return Double(first) / Double(second)
}

func calculate() {
    while true {
        print("Enter the first number: ", terminator: "")
        guard let firstInput = readLine(), let first = Int(firstInput) else {
            print("Please enter a valid NUMBER")
            continue
        }
        
        print("Enter the second number: ", terminator: "")
        guard let secondInput = readLine(), let second = Int(secondInput) else {
            print("Please enter a valid NUMBER")
            continue
        }
        
        print("Choose the operation: *, /, +, -. Enter Q to quit app")
        let operation = readLine()
        
        switch operation {
            case "*":
                print(multiply(first, second))
            case "/":
                if second == 0 {
                    print("Not appropriate operation. Division by zero is not allowed.")
                } else {
                    print(divide(first, second))
                }
            case "-":
                print(subtract(first, second))
            case "+":
                print(add(first, second))
            case "Q":
                print("Exiting.")
                return
            default:
                print("Choose a correct operation.")
        }
    }
}

calculate()
