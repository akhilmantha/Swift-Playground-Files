//: Playground - noun: a place where people can play

import UIKit

func domath (a : Double, b: Double, operation : String)->Double{
    print ("performing",operation,"on",a,"and",b)
    var result : Double
    switch operation{
    case "+" :result = a+b
    case "-" : result = a-b
    case "*" : result = a*b
    case "/" : result = a/b
    default : print("bad operation:",operation )
    }
    return result
}

let result = domath (2.0 , b:3.0 , operation: "+")
