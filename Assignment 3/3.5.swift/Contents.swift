import UIKit

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
        let neword = String(word).lowercased().filter { char in
            char.isLetter || char.isWhitespace
        }
        if frequency[neword] == nil{
            frequency[neword] = 0
        }
        frequency[neword]! += 1
    }
    print(frequency)
}
counter()
