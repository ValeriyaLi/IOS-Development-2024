import UIKit


//Easy Task
var fruits: [String] = ["Apple", "Orange", "Banana", "Watermelon", "Peach"]

print(fruits[3])

fruits[3] = "plum"

print("The mistake is resolved, now third element is fruit - \(fruits[3])")

var set: Set<Int> = [2, 4, 6, 8]

set.insert(10)

print(set)

let dict: [String: Int] = ["C++": 1985, "LavaScript": 1995, "Swift": 2014 ]


print("Swift was released in \(dict["Swift"])")

var colors: [String] = ["Yellow", "Red", "Blue", "Green"]

colors[2] = "Pink"

print(colors)


//Medium Task
var set1: Set = [1, 2, 3, 4]
var set2: Set = [3, 4, 5, 6]

var set3 = set1.intersection(set2)

print(set3)


var transcript: [String: Double] = ["A1": 2.8, "A2": 3.5, "A3": 4.0]

transcript.updateValue(3.0, forKey: "A1")

print(transcript)

var arr1: [String] = ["apple", "banana"]
var arr2: [String] = ["cherry", "date"]

var arr3 = arr1 + arr2

print(arr3)


//Hard Task

var countries: [String: Double?] = ["Kazakhstan": 19.6, "USA": 345.4, "Indonesia": 283.5]

countries.updateValue(nil, forKey: "France")

print(countries)

var set6: Set = ["cat", "dog"]
var set7: Set = ["dog", "mouse"]

var set8 = set6.union(set7)

var set9 = set8.subtracting(set6)
print(set9)


var trans: [String: Array<Double>] = ["A1": [3.2, 2.8], "A2": [3.9, 4.0]]

print(trans["A2"]?[1])
