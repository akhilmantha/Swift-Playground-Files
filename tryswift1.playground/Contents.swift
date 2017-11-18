//: Playground - noun: a place where people can play

import UIKit
import Foundation
var str = "Hello, playground"


//gaurd statements

func enterPhoneWithGuard (phone: String){
    guard phone == "iphone x" else {
        print("I'm not happy")
        return
    }
    
}
func enterNutirentsWithGuard (nutrients : String){
    guard nutrients == "sunlight" else {
        print("no nutrients")
        return
    }
}

//property observer

func getDiameter(radius:Double)-> Double {
    
    return radius*2;
}

func getRadius(diameter:Double)->Double{
    return diameter/2;
}
var radius:Double = 5
var diameter:Double{
    get{
        return radius*2;
    }
}

var sideLength:Double = 100
var area:Double{
    get{
        return sideLength*sideLength;
        
    }
}
struct user{
let name = " akhil"
    let age: Int = 27
}
let sUser = user()
sUser.age
sUser.name

//type casting

class model ()
func allObjects()->[Any] {
    
}




