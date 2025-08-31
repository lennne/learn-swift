import UIKit

struct Recipe {
    var ingredients: [String]
    init(ingredients: [String]){
        self.ingredients = ingredients
    }
}

var marioRecipe = Recipe(ingredients: ["Cocoa powder", "Flour"]) //create an instance

var adrianRecipe = marioRecipe //we assign the marioRecipe to a new variable called adrianRecipe
//this copies and assigns marios recipe to adrian
//therefore changing the property in adrian property won't affect mario's property

adrianRecipe.ingredients = ["Cocoa powder"] //updating adrian's property to only include "Cocoa powder"
//marios recipe will remain as it was originally

print(adrianRecipe.ingredients)
print(marioRecipe.ingredients)

//the above behaviior is essentially value type

//to use the reference type behavior for the same functionality we replace struct with class
class niceRecipe {
    var ingredients: [String]
    init(ingredients: [String]){
        self.ingredients = ingredients
    }
}

var newMarioRecipe = niceRecipe(ingredients:["Cocoa powder", "flour"])
var newAdrianRecipe = newMarioRecipe
newAdrianRecipe.ingredients = ["Chaoooiiii"]
print(newMarioRecipe.ingredients)
//as we can observe, the value has been changed since it was still referencing the object
