//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let name = " akhilmantha"

if name.characters.count > 7
{
    print("long name")
    
}else{
    print("short name")
    
}

switch name.characters.count {
case 6...10:
    print("long name")
case 1...5:
    print("short name")
default :
    print("some length")
    
}
