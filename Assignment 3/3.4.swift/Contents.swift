import UIKit

/4
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
