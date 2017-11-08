//: Playground - noun: a place where people can play


var str = "Hello, playground"

func greeting (person:[String:String])
{
    guard let name = person ["name"] else{
        return
    }
    print("hello there \(name)")
}

greeting(["name":"akhil"])

var bankbalance: Double = 1000
var bankisavailable = false

enum BankingError: ErrorType{
    case insufficientfunds
    case banknotavailable
}

func withdrawl (amount:Double)throws -> Double {
    guard bankbalance > amount else {
        throw BankingError.insufficientfunds
    }
    guard bankisavailable == true else {
        throw BankingError.banknotavailable
    }
    bankbalance = bankbalance - amount
    return bankbalance
}

do{
    var newbalance = try withdrawl(120)
    print("new balance is \(newbalance)")
} catch BankingError.insufficientfunds{
    print(" there is no suffiecient funds in the account")
}catch BankingError.banknotavailable {
    print("the banking system is down")
}catch{
    print("unknown error")
}




