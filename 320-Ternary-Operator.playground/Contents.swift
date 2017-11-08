//: Control flow - Swift's ternary operator.

var temp = 34
var isFreezing : Bool

if temp <= 32 {
    isFreezing = true
} else {
    isFreezing = false
}

isFreezing = temp <= 32 ? true : false

var statement : String = isFreezing == true ? "It's Freezing" : "It's not Freezing"