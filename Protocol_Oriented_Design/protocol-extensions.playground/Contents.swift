
import UIKit

protocol Account {
    
    var balance: Double { get set }
    
    mutating func deposit(_ amount: Double)
    mutating func withdraw(_ amount: Double)
    func transfer(from: Account, to: Account, amount: Double)
    func calculateInterestEarned() -> Double
}

extension Account {
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    func calculateInterestEarned() -> Double {
           return (balance * (0.1/100))
    }
    
}

struct CheckingAccount: Account {
    
    var balance: Double
    
    func calculateInterestEarned() -> Double {
           return (balance * (0.2/100))
    }
    
    func transfer(from: Account, to: Account, amount: Double) {
        
    }
    
}

struct MoneyMarketAccount: Account {
    
    var balance: Double
    
    func calculateInterestEarned() -> Double {
           return (balance * (0.4/100))
    }
    
    func transfer(from: Account, to: Account, amount: Double) {
        
    }
    
}

let checkingAccount = CheckingAccount(balance: 100)

