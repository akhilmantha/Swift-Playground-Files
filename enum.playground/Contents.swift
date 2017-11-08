//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let keyboardType = UIKeyboardType.NumberPad
let keyboardStyle = UIKeyboardAppearance.Dark

//

enum SeatPreference {
    case window
    case aisle
    case middle
    case nopreference
    
}



var customerPreference : SeatPreference

customerPreference = .window

switch customerPreference{
case .window :
    print("the customer prefers window seat")
case .aisle :
    print("the customer prefers aisle seat")
case .middle :
    print("the customer prefers middle seat")
default :
    print("the customer has no preference")
}

