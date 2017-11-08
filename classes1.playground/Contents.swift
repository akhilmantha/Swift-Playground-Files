//: Playground - noun: a place where people can play

import UIKit

class BankAccount {
    var accountbalance : float_t = 0
    var accountnumber : intmax_t = 0
    
    init(number:intmax_t,balance:float_t)
    {
        accountnumber = number
        accountbalance = balance
    }
    deinit{
        
    }
  func displaydetails()
  {
    print("number\(accountnumber)")
       print("balance\(accountbalance)")
    }
}
var account1 = BankAccount(number:123456 , balance:500.5)


func getmaxbalance() ->float_t{
    return 100000.0
}

class savingsaccount : BankAccount {
    var interestrate : float_t = 0
    func calcinterestrate() -> float_t{
        return interestrate * accountbalance
    }
}

