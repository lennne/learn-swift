import UIKit


//create bank accounts
//practice working with loops and switch statements to create bank accounts
//configure the account to be a debit or credit account

//output should resemble the following
//Welcome to your virtual bank system.
//What kind of account would you like to open?
//1. Debit account
//2. Credit account
//The selected option is 1.
//You have opened a debit account.

//Start the virtual bank system interface
//First, power on the virtual bank system interface that will guide users through the bank account setup process.

//To achieve this, create a class with a method to greet the customer
//another to onboard the customer on account opening.

class BankSystem {
    var accountType: String = ""
    
    
    func greetCustomer(){
        print("Welcome to your virtual Bank System")
    }
    
    func customerOnboarding(){
        print("What kind of account would you like to open?")
        print("1. Debit Account")
        print("2. Credit Account")
    }
    
    //ssince we're inside classes we don't need "mutating"
    func makeAccount(numberPadKey: Int){
        print("The selected option is \(numberPadKey)")
        //run the code at least once and repeat based on condition specified
   
            //block of code to execute once and repeat
            switch numberPadKey {
            case 1: accountType = "debit"
            case 2: accountType = "credit"
            default:
                print("Invalid Input: \(numberPadKey)")
                return
            }
        
        print("You have opened a \(accountType) bank account")
    }
    
//    Next, you will declare a switch statement inside the repeat while loop. The switch statement selects the bank account from the
//        options provided by the interface using the value of the numberPadKey parameter.
    
}

//Now, you will bring your virtual bank system into existence and have the system greet your customer.
//Create a virtual bank system class instance. Call the welcome customer method.
let bankInstance = BankSystem()
bankInstance.greetCustomer()
//You will start by defining a repeat while loop that generates user input using random numbers

//If the numbers generated are either 1 or 2, the bank account will be created.
//The loop should repeat itself as long as the accountType variable’s value is equal to an empty string.
repeat{
    bankInstance.customerOnboarding()
    let userInput = Int.random(in: 1...5)
    bankInstance.makeAccount(numberPadKey: userInput)
} while bankInstance.accountType == ""
