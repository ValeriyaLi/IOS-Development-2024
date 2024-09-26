import UIKit
import Foundation

//Assignment 3
//1

for i in 1...100{
    if(i % 3 == 0 && i % 5 == 0){
        print(i, "FizzBuzz")
    }
    if(i % 3 == 0){
        print(i, "Fizz")
    }else if(i % 5 == 0){
        print(i, "Buzz")
    }else{
        print(i)
    }
}

//2
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

//3
func celsiusToFahrenheit(_ celsius: Float) -> Float {
    return (celsius * 9/5) + 32
}

func celsiusToKelvin(_ celsius: Float) -> Float {
    return celsius + 273.15
}

func fahrenheitToCelsius(_ fahrenheit: Float) -> Float {
    return (fahrenheit - 32) * 5/9
}

func fahrenheitToKelvin(_ fahrenheit: Float) -> Float {
    return (fahrenheit - 32) * 5/9 + 273.15
}

func kelvinToCelsius(_ kelvin: Float) -> Float {
    return kelvin - 273.15
}

func kelvinToFahrenheit(_ kelvin: Float) -> Float {
    return (kelvin - 273.15) * 9/5 + 32
}

func temperatureConverter() {
    print("Enter the temperature value:")
    guard let input = readLine(), let temperature = Float(input) else {
        print("Invalid temperature input.")
        return
    }

    print("Enter the unit of the temperature (C for Celsius, F for Fahrenheit, K for Kelvin):")
    guard let unit = readLine()?.uppercased() else {
        print("Invalid unit input.")
        return
    }
    
    switch unit {
    case "C", "c":
        let fahrenheit = celsiusToFahrenheit(temperature)
        let kelvin = celsiusToKelvin(temperature)
        print("Temperature in Fahrenheit: \(fahrenheit)°F")
        print("Temperature in Kelvin: \(kelvin)K")
        
    case "F", "f":
        let celsius = fahrenheitToCelsius(temperature)
        let kelvin = fahrenheitToKelvin(temperature)
        print("Temperature in Celsius: \(celsius)°C")
        print("Temperature in Kelvin: \(kelvin)K")
        
    case "K", "k":
        let celsius = kelvinToCelsius(temperature)
        let fahrenheit = kelvinToFahrenheit(temperature)
        print("Temperature in Celsius: \(celsius)°C")
        print("Temperature in Fahrenheit: \(fahrenheit)°F")
        
    default:
        print("Unknown temperature unit.")
    }
}
temperatureConverter()

//4
var fruits: [String] = ["Apple", "Orange", "Banana", "Watermelon", "Peach"]

func add(fruit: String) {
    fruits.append(fruit)
}

func remove(fruit: String) {
    fruits = fruits.filter { $0 != fruit }
}

func show() {
    if fruits.isEmpty {
        print("No fruits available.")
    } else {
        for fruit in fruits {
            print(fruit)
        }
    }
}

var command = ""

while command != "exit" {
    print("Welcome to the Wonderful Fruits Shop(WFS). Please enter a command: add, remove, show, exit:")
    
    guard let option = readLine(), !option.isEmpty else {
        print("Invalid input. Try again please.")
        continue
    }
    
    command = option
    
    switch command {
    case "add":
        print()
        print("Hooray! New fruit is...")
        guard let input = readLine(), !input.isEmpty else {
            print("Invalid input. Try again please.")
            continue
        }
        add(fruit: input)
        show()
        
    case "remove":
        print()
        print("Awww, so sad. Seems like one fruit is out. For now it is...")
        guard let input = readLine(), !input.isEmpty else {
            print("Invalid input. Try again please.")
            continue
        }
        remove(fruit: input)
        show()
        
    case "show":
        show()
        
    case "exit":
        break
    default:
        print("Invalid input. Try again please.")
    }
}

print("Bye Bye")
//5
func counter() {
    guard let input = readLine(), !input.isEmpty else{
        print("Invalid input. Try again please.")
        return
    }
    
    let splitted = input.split(separator: " ")
    let punctuationSet = CharacterSet.punctuationCharacters
    
    var frequency: [String: Int] = [:]
    
    for word in splitted{
        let neword = String(word).trimmingCharacters(in: punctuationSet).lowercased()
        if frequency[neword] == nil{
            frequency[neword] = 0
        }
        frequency[neword]! += 1
    }
    print(frequency)
}
counter()

//6

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

//7

var transkript: [String: [Double]] = ["Sasha": [3.0, 5.0, 1.5, 2.3], "Nastya": [4.0, 1.2, 3.5, 2.5], "Olya": [1.3, 3.2, 4.7, 2.8]]

func average(_ transkript:[String: [Double]]) -> Double{
    let scoresList = transkript.values
    
    var scoresAmount = 0
    var scoresSum = 0.0
    
    for scores in scoresList {
        for score in scores {
            scoresSum += score
        }
        scoresAmount += scores.count
    }
    return scoresSum / Double(scoresAmount)
}

func low(_ transkript:[String: [Double]]) -> Double{
    let scoresList = transkript.values
    
    var low = 99999.9
    
    for scores in scoresList {
        for score in scores {
            low = min(low, score)
        }
    }
    return low
}

func high(_ transkript:[String: [Double]]) -> Double{
    let scoresList = transkript.values
    
    var high = -1.0
    
    for scores in scoresList {
        for score in scores {
            high = max(high, score)
        }
    }
    return high
}

func calc(_ transkript:[String: [Double]]) -> Void{
    let average = average(transkript)
    
    for
}



