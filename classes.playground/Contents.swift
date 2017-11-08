//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Car {
    
    //properties
    
    var name = ""
    var topspeed = 0
    
    //methods
    
    func description() -> String
    {
        return("the name of the car is \(name) and top speed is \(topspeed)")
    }
   //initializers
    
    
    
}

var viper = Car()
viper.name = "viper"
viper.topspeed = 200

viper.description()



