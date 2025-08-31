import UIKit

let day = "Monday";
let dailyTemperature = 75;
print("Today is \(day). Rise and shine!!");
print("The temperature on \(day) is \(dailyTemperature)ºF")

var temperature = 70;
print("The temperature on \(day) mornnig is \(temperature)ºF.");
temperature = 80;
print("The temperature on \(day) evening is \(temperature)ºF.");
let weeklyTemperature = 75;
temperature = weeklyTemperature;
print("The average weekly temperature is \(weeklyTemperature)ºF.")

//Operators and Data types
let levelScore = 10;
var gameScore = 0;

gameScore += levelScore;
print("The game's Score is \(gameScore)");

var levelBonusScore = 10.0;
levelBonusScore = 20

print("The level's bonus score is \(levelBonusScore)");
gameScore += Int(levelBonusScore)

print("The game's final score is 30.");
let levelLowestScore = 50;
let levelHighestScore = 99;
let levels = 10;
let levelScoreDifference = levelHighestScore - levelLowestScore;
let levelAverageScore = Double(levelScoreDifference)/Double(levels);
print("The level's average score is \(levelAverageScore)");

let firstString = "Hello World";
print("It is \(firstString.hasPrefix("Hel")) that 'Hel' is at the start of the string");
print("It is \(firstString.hasSuffix("rld")) that 'rld' is at the start of the string");

let newDay = "Monday";
print("Today is \(newDay)")
let hour = "6";
let minutes = "15";
let period = "PM";
var time = hour + ":" + minutes + " " + period;
print("It is \(time)")
print("It is \(time) on \(day)")
let timezone = "PST";
time += " \(timezone)"
print("It is \(time)  on \(day)")
let shortDay = newDay.prefix(3);
print("Today is \(shortDay)")
print("Today is \(time) on \(shortDay)")

if dailyTemperature > 100 {
    print("hello motoo")
}else {
    print("hellooo ma gee")
}

if temperature >= 68 && temperature <= 72 {
    print("The temperature is just right")
}else {
    print("The temperature is too hot or cold");
}

let language = "hashasha";
switch language {
case "hashasha":
    print("idk bro")
    print("so far me go")
case "chaomeng": print("wassuppppp");
    
    
default: print("language is not configured")
}
