//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var inches : Double = 0

var feet : Double {

get {
    return(inches/12)
}
set {
    inches = (newValue * 12)
}

}
feet = 2

print("inches = \(inches)")
print("feet = \(feet)")

var celsious : Double = 0
var fahrenheit : Double {
    get{
        return (celsious * 1.8 ) + 32
        
    }
    set
    {
        celsious = (newValue - 32)/1.8
        
    }
}

print("celsious = \(celsious)")
print("fahreheit = \(fahrenheit)")

fahrenheit = 100
celsious = 85

//

var feet2 : Double  = 0
var metres : Double {
get {
    return (feet2 * 0.3048)
}
set {
    feet2 = (newValue / 0.3048)
}
}
print("feet2 = \(feet2)")
print("metres = \(metres)")

feet2 = 40

//

var display = "0"
var displayvalue : Double {
get{
    
    return Double(display)!
    
}
set {
    
    display = String(newValue)
    
}
}

display = "234"

displayvalue








