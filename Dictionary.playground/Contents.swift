import UIKit

var greeting = "Hello, playground"

//create an empty dictionary

var weeklyTemperatures:[String: Int] = [:]//stores the daily temperatures of the current week
//we set the type explicitly because type inference doesn't work with empty dictionaries

weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday":95]

weeklyTemperatures["Monday"]! += 20 //updating a key in the dictionary
print("The temperature on Monday \(weeklyTemperatures["Monday"]!) is 90ºF")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The key is Sunday and the value is \(weeklyTemperatures["Sunday"]!)")
}else{
    weeklyTemperatures["Sunday"] = 100
    print ("The temperature for the last day of the week is \(weeklyTemperatures["Sunday"]!)")
}

//if weeklyTemperatures.count == 7 {
//    print("You have accesss to the weather forecast of the whole week.")
//    weeklyTemperatures = [:]
//    print("Reset weekly temperatures for next week!")
//}

let newCode:Int? = 12
print("The value is \(newCode!) ")

var index = 0
for keys in weeklyTemperatures.keys {
    index += 1
    print("key for \(index) is \(keys)")
}

let levelScores = [10, 20, 30, 40, 50, 60, 70]
for (level, score) in levelScores.enumerated() {
    print("The score of level \(level+1) is \(score)")
}

var gameScore = 0
for score in levelScores{
    gameScore += score
}
print("The final game score is \(gameScore)")

let weekly_Temperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95, "Sunday": 100]
for (day, temperature) in weeklyTemperatures{
    print("The temperature for \(day) is \(temperature)")
}


let _days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]

for index in 1...7{
    print("The \(index) temperature for \(_days[index-1]) is \(temperatures[index-1] )")
}
