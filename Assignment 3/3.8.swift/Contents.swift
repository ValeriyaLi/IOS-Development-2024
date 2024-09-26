import UIKit

func isPalindrome(s: String) -> Bool {
    let newstr = s.lowercased().filter { char in
        char.isLetter
    }
    
    return newstr == String(newstr.reversed())
}

let input = readLine()
print(isPalindrome(s: input!))
