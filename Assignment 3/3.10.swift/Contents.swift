import UIKit

func isUnique(_ text: String) -> Bool {
    var uniqueChars = Set<Character>()
    
    for letter in text {
        if uniqueChars.contains(letter) {
            return false
        }
        uniqueChars.insert(letter)
    }
    
    return true
}


let input = readLine()
print(isUnique(input!))
