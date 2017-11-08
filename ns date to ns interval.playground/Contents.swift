//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let datecomponents = NSDateComponents()
let day = datecomponents.day
let month = datecomponents.month


let currentDate = NSDate()
let dateFormatter = NSDateFormatter()

dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
var convertedDate = dateFormatter.stringFromDate(currentDate)

//long style

dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle
convertedDate = dateFormatter.stringFromDate(currentDate)


