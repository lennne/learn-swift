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
    var isOpened = true
    
    
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
    
    //money transfer function
    func moneyTransfer(_ transferType: String, _ transferAmount: Int, bankAccount: inout BankAccount){
        //money withdrawal
        //deposit logic for debit/credit accounts
        switch transferType {
        case "withdraw":
            if accountType == "credit" {
                bankAccount.creditWithdraw(transferAmount)
            } else if accountType == "debit" {
                bankAccount.debitWithdraw(transferAmount)
            }
        case "deposit":
            if accountType == "credit" {
                bankAccount.creditDeposit(transferAmount)
            }else if accountType == "debit" {
                bankAccount.debitDeposit(transferAmount)
            }
        default: break
        }
    }
//Check balance of debit and credit accounts
//implement the method to check the balance of debit or credit accounts of the user’s bank account.
    func checkBalance(bankAccount: BankAccount){
        switch accountType {
        case "credit": print(bankAccount.creditBalanceInfo)
        case "debit": print(bankAccount.debitBalanceInfo)
        default: break
        }
    }
//    Next, you will declare a switch statement inside the repeat while loop. The switch statement selects the bank account from the
//        options provided by the interface using the value of the numberPadKey parameter.
    
}




struct BankAccount {
    //stored properties
    var debitBalance: Int = 0
    var creditBalance: Int = 0
    let creditLimit: Int = 100
    
    //computed properties
    var debitBalanceInfo: String {
        "Debit Balance: $\(self.debitBalance)"
    }
    
    var availableCredit: Int {
        self.creditLimit + self.creditBalance
    }
    
    var creditBalanceInfo: String {
        "Available Credit: $\(self.availableCredit)"
    }
    
    // Implement the deposit operation for debit and credit bank accounts
    
//    Debit deposit
    mutating func debitDeposit(_ amount: Int){
        debitBalance += amount
        print("Deposited: $\(amount). \(debitBalanceInfo)")
    }
    
    mutating func creditDeposit(_ amount: Int){
        creditBalance += amount
        print("Credit $\(amount) \(creditBalanceInfo)")
        
        if creditBalance == 0 {
            print("Paid off Balance")
        }else if creditBalance > 0 {
            print("Overpaid credit balance.")
        }
    }
    
    mutating func debitWithdraw(_ amount: Int){
        if amount > debitBalance {
            print("Insufficient Funds to Withdraw $\(amount) \(debitBalanceInfo) ")
        }else{
            debitBalance -= amount
            print("Debit Withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    
    mutating func creditWithdraw(_ amount: Int){
        if amount > availableCredit {
            print("Insufficient credit to withdraw $\(amount) \(creditBalanceInfo)")
        }else {
            creditBalance -= amount
            print("Credit Withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
    
   
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

var bankAccount = BankAccount()


repeat{
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw Money")
    print("3. Deposit Money")
    print("4. Close the system")
    
    let option = Int.random(in: 1...5)
    print("The selected option is \(option)")
    
    //Create a switch statement
    switch option {
    case 1:
        bankInstance.checkBalance(bankAccount: bankAccount)
    case 2:
        bankInstance.moneyTransfer("withdraw", 100, bankAccount: &bankAccount)
    case 3:
        bankInstance.moneyTransfer("deposit", 100, bankAccount: &bankAccount)
    case 4:
        bankInstance.isOpened = false
        print("The System is closed")
    default: break
    }
} while bankInstance.isOpened
