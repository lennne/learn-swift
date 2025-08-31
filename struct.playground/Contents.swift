import UIKit

var greeting = "Hello, playground"
struct Recipe {
    let name: String
    var ingredients: Set<String>
    var steps: [String]
    init(name: String, ingredients: Set<String>, steps: [String]) {
        self.name = name
        self.ingredients = ingredients
        self.steps = steps
    }
    func printDescription(){
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated(){
            print("\(index + 1). \(step).")
        }
    }
}


let jollof = Recipe(name: "jollof", ingredients: ["tomatos", "pepper"], steps:  ["First action", "Second Action", "Third Action"])
jollof.printDescription()

struct Car{
    var color: String
    var name: String
    var topSpeed: Int
    var mileage: Int
    func drive(){
        print("\(color) car can drive at a maximum speed of: \(topSpeed)")
    }
}

var newCar = Car(color: "pink", name: "Car 2", topSpeed: 100, mileage: 4000)
var smallCar = Car(color: "orange", name: "Car 3", topSpeed: 80, mileage: 3000)

print("the color of the car is: \(newCar.color)")
newCar.drive()
//Adding methods to a struct

struct Recipes {
    var orderCount = 0
    mutating func incrementOrder(){
        orderCount += 1
    }
    mutating func decrementOrder(){
        orderCount -= 1
    }
}

var chocolate = Recipes()
chocolate.incrementOrder()
print(chocolate.orderCount)

struct TableReservation{
    var name: String
    let tableNumber: Int
    mutating func updatingBooking(name: String){
        self.name = name
    }
}

var johnBooking = TableReservation(name: "John", tableNumber: 1)
print(johnBooking)
johnBooking.updatingBooking(name: "Maria")
print(johnBooking)


struct Classroom{
    var classA: [String]
    var classB: [String]
    var countClasses: Int {
        classA.count + classB.count
    }
    init(classA: [String], classB: [String]){
        self.classA = classA
        self.classB = classB
    }
}

var School = Classroom(classA: ["beta", "gama"],classB: ["dentu", "volta"])
print(School.countClasses)

class LocalFile {
    let name: String
    let fileExtension: String
    var fullFileName: String {
        name + fileExtension
    }
    init(name: String, fileExtension: String){
        self.name = name
        self.fileExtension = fileExtension
    }
}

let file = LocalFile(name: "image",fileExtension: ".png")
print(file.fullFileName)

