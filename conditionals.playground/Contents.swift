import UIKit

var greeting = "Hello, playground"
let freeApp = true;

if freeApp == true {
    print("You are using the free version of the app. Buy the full version of the app to get access to all of its features");
}

let morningTemperature = 70;
let eveningTemprature = 80;

if morningTemperature < eveningTemprature {
    print(morningTemperature)
}else{
    print(eveningTemprature)
}

let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fahrenheit" {
    print("The degrees is Fahrenheit")
}else{
    print("The degree is celsius")
}

if temperatureDegree == "Fahrenheit" || temperatureDegree == "Celsius"{
    print("THe app is configured correctly")
}else {
    print("The app is not configured correctly")
}

switch temperatureDegree {
case "Fahrenheit": print("The app is configured for US")
case "Celsius": print("The app is configured for Europe")
default: print("The app has an unknown configuration")
}

for alphabet in "ABCDEF"{
    print(alphabet);
}
var alphabet = 1
for alphabet in 1...5{
    print(alphabet)
    
}
