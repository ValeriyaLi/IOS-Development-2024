import UIKit

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
    
    for(names, scores) in transkript{
        let averageScore = (scores.reduce(0.0, + )) / Double(scores.count)
        let isAbove = (averageScore > average)
        print (names, scores, isAbove)
    }
}
