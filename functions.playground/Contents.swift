import UIKit

var greeting = "Hello, playground"



//Functions
func helloMotto(){
    print("Hello Greeting")
}

helloMotto()

func addSum(Value: Int)->Int{
    var Sum:Int = 0
    Sum += Value
    return Sum
}

print(addSum(Value:5))

@MainActor //parameter is constant
func printAnything(Value: Any){
    print(greeting)
}

printAnything(Value: "chao")

//parameters are constant
func calculate(add: String, subtract: Int){
    print(add)
    let sum = 10 - subtract
    
    
}

calculate(add: "Chao", subtract: 23)

//when "inout" is used, it becomes pass by value
func variableCalculate(add: inout String, subtract: inout Int){
    subtract = 0
    subtract -= 2
}

var mygee = 3
var six = "chao"
variableCalculate(add: &six, subtract: &mygee)

print(mygee)

//EXERCISE

var newgoldBars = 0
func unlockTreasureChest(inventory: Int) -> Int{
   inventory + 100
}

newgoldBars = unlockTreasureChest(inventory: newgoldBars)
print(newgoldBars)

newgoldBars = unlockTreasureChest(inventory: newgoldBars)
print(newgoldBars)

newgoldBars = unlockTreasureChest(inventory: newgoldBars)
print(newgoldBars)

func withoutNames(_ firstName: String,_ lastName: String){
    print(firstName)
    print(lastName)
    
}

withoutNames("chao", "son")

//you can also provide two names for a function
func manyNames(firstName fn: String, lastName sn: String){
    print(fn)
    print(sn)
    
}

manyNames(firstName: "Mat", lastName: "son")


//DEFAULT VALUED PARAMETERS
func defaultValues(firstName: String, Score: Int = 0){
    print("Your name is \(firstName) and score is \(Score)")
}


//storing a function into a variable - without a return statement, in this case it returns void - ()
var displayDefaults: (String, Int)->() = defaultValues

displayDefaults("Chao", 2)

func passFunction(Value: String, myFunc: (String, Int)->()){
    myFunc("tinana", 38)
}

//just like javascript
passFunction(Value:"tombo", myFunc: defaultValues)

//PRACTICE
var goldBars = 0



//Every time you increment the inventory, it will always increment by 100. However, suppose you wish to increment it by a different value,
//that’s currently not an option. To make a dynamic increment value possible, you can utilize a second parameter.
//Add a second parameter called amount of type Int to the function.

func incrementInventory(_ inventory: inout Int,by amount: Int = 100){
    inventory += amount
}

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars)
print(goldBars)

incrementInventory(&goldBars, by: 300)
print(goldBars)

incrementInventory(&goldBars, by: 50)
print(goldBars)
