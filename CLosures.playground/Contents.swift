import UIKit

var greeting = "Hello, playground"
let letters = ["H", "E", "X", "A"]
let myCollection = letters.sorted(by: {(string1: String, string2: String) -> Bool in return string1 > string2})


//Practice
var goldBars = 100

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void){
    inventory -= 10
    completion(inventory) //calling the completion func// we will decide the definition when passing in the value

}

print("you had \(goldBars) gold bars")
spendTenGoldBars(from: &goldBars, completion: {goldBars in
    print("You spent ten gold bars.")
print("You have \(goldBars) gold bars")
})
print("")
