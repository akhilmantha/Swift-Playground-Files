//: Playground - noun: a place where people can play


var str = "Hello, playground"


var temperature : Double?

//temperature = 78.5

//code with forcibly unwrapped optional that will crash the app if nil 

//var tempString = "The temperature is \(temperature)"

if let temp = temperature{
    var tempString = "The temperature is \(temp)"
}else{
    print("temp not available")
}

var states = ["nj":"new jersey","ny":"new york"]

func getStates(abbrev :String) -> String{
    guard let state = states [abbrev] else{
        return "state not found  for\(abbrev)"
    }
    return "\(abbrev) is short for \(state)"
}


var model :String?

if let car = model{
    var carString = " the car model is \(model)"
}else{
    print("car model is \(model)")
}

var mods = ["ford":"fd","camary":"ca","buick":"bui"]

func getmods(cars:String) -> String {
    guard let mod = mods [cars] else{
        return "car not found \(cars)"
    }
    return "\(cars) found"
}
getmods("ford")

