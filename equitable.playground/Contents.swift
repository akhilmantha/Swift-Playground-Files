//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

let students = ["Akhil","Shruti","shreya"]
let nameToCheck = "Akhil"

if students.contains (nameToCheck){
    
    print("\(nameToCheck) is logged in")
    
}
else
{
    print("no record of \(nameToCheck)")
}


struct StreetAddress {
    
    let number: String
    let street: String
    let unit: String?
    
    
    init(_ number: String, _ street: String, _ unit: String? = nil) {
        
        self.number = number
        self.street = street
        self.unit = unit
    }
    
}


extension StreetAddress : Equatable {
    
    static func == (lhs: StreetAddress, rhs: StreetAddress) -> Bool{
        return
            lhs.number == rhs.number &&
            lhs.street == rhs.street &&
            lhs.unit == rhs.unit
    }
}