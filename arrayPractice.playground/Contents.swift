import UIKit

var greeting = "Hello, playground"
var train1 = ["first", "secondn"]
print(train1[1]);
print("hello motto")
print(train1[1].count)
train1.append("rocks");
print(train1.count)
train1.insert("potato", at:3)
print(train1.count)
train1.remove(at:3)
print(train1.count)
train1.append("hell motto")

//PRACTICE
//create an empty array
var levelScores:[Int] = []

//use the count property to determine if the game has started
//if it's the users first time playing display a welcome message
if levelScores.count == 0 {
    print("Start playing the game!")
}

let firstLevelScore = 10
levelScores.append(firstLevelScore)
print("The first level's score is 10");

//add the bonus score to the first level's score
let levelBonusScore = 40
levelScores[0] += levelBonusScore
print(levelScores[0])

//Add more values to the array/
let freeLevelScores = [20, 30]
levelScores += freeLevelScores

//check if free version of the game has been played
let freeLevels = 3

if levelScores.count == freeLevels {
    print("You have to buy the game in order to play its full version")
    levelScores = []
    print("Game restarted!")
}

let misc:[Any] = ["hello", 1, [1, 2, 3]]
print(misc[1])
var combination:[Int] = [1,2,3]
let secondArray:[Int] = [4,5]
combination += secondArray
print(combination)
