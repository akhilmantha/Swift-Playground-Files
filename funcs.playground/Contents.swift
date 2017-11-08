//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var age = 55
var height = 6.2
var personality = "Angry!"

func walk(){
    
}
func talk(){
    
}

func funka() {
    print("this is my first function")
    print("calling func b")
    funkb()
    
}

func funkb(){
    
    print("calling func c")
    funkc()
}

func funkc(){
    print ("calling func a")
    funka()
}


var bankAccount = 550.23
var itemAmount = 212.23

func makePurchase(){
    
    if bankAccount >= itemAmount {
        bankAccount -= itemAmount
    }
    
}
makePurchase()

func carPurchase(amount: Double) ->Bool {
    
    if bankAccount >= amount {
        return true
    }
    return false
    
}




