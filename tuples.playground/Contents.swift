import UIKit

var greeting = "Hello, playground"
var veggies = ("Carrots", 3, true)
print(veggies)


var (vegType, quantity, inStock) = veggies
print(vegType)

var veg = (vegType: "Carrot", quantity: 3, inStock: true);
print("The amount of \(veg.vegType)'s left is \(quantity), so yes it is \(inStock) that we have them in stock! ")

print(veg.0)
print(veg.1)

let credentials = ("", -1111)

if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid Credentials!")
}else{
    print("The username is \(credentials.0) and password is \(credentials.1)")
}

let fullCredentials = (password: "pass",passcode: 1111)

if fullCredentials.0 == "" || fullCredentials.passcode < 0 {
    print("Invalid Credentials")
}else {
    print("The username is \(fullCredentials.0) and password is \(fullCredentials.1)")
}
