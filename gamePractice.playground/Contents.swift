import UIKit

var greeting = "Hello, playground"
let levels = 10;
let freeLevels = 4;
let bonusLevel = 3;

for level in 1...levels{
   
    if level == bonusLevel{
        print("Skip bonus level \(level)")
        continue
    }
    print("Play Level \(level)")
    if level == freeLevels{
        print("Free level")
        break
    }
}

var password = "1234";
let passcode = Int(password);

print("the password is \(passcode!)")
password = "Hello World"

if let code = Int(password) {
    print("The password of the app is \(code).")
}else {
    print("invalid passcode!")
}

let accessCode:Int
if let code = Int(password) {
    accessCode = code
}else {
    accessCode = 1111
}

print("The passcode of the app is \(accessCode).")

let firstPassword = "hello"
let secondPassword = "world"

if let firstPasscode = Int(firstPassword), let secondPasscode = Int(secondPassword){
    print("The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode).")
}else {
    print("Invalid passcodes!")
}

let firstAccessCode:Int = 2348;
let secondAccessCode:Int = 1234
if let firstPasscode = Int("1234"), let secondpasscode = Int("ssfssgd"){
print("first")
}else{
    

    print("first accesscode is \(firstAccessCode) and second access code is \(secondAccessCode)")
}

//newCode has not been initialized so it's value is nil
var newCode:Int?;
if newCode != nil {
    print("there's a value here")
}else{
    print("this iis nil")
}

//using optional binding
//if let <constant name> = <some Optional> {
//statement
//}

let possibleNumber:Int? = Int("123");
if let code = possibleNumber {
    print("Optional binding")
}else{
    print("really really optional binding")
}

