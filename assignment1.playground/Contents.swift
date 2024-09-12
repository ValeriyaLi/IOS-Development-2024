import UIKit

var firstName = "Valeriya"
var lastName = "Li"
var age = 21
var birthYear = 2002
var isStudent = true
var height = 1.60

let currentYear = 2024

var bonusAge = currentYear - birthYear

print(bonusAge)

var hobby = "playing games"
var numberOfHobbies = 1
var favoriteNumber = 25
var isHobbyCreative = true
var hobbyDescription = "awesome"


var lifeStory = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). I enjoy \(hobby), which is an \(hobbyDescription) hobby. I have \(numberOfHobbies) hobby in total, and my favorite number is \(favoriteNumber).
"""

print(lifeStory)

var futurePlan = "UI/UX Designer"

var interestingFact = "make my own game with a professional team"


var futureGoals = """
My name is \(firstName) \(lastName). In the future i currently plan to be a \(futurePlan), but not completely sure \u{1F937}. One interesting fact about me is that I \(interestingFact) \u{1F3AE}.
"""


print(futureGoals)

