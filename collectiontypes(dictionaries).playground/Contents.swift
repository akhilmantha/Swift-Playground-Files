//: Playground - noun: a place where people can play


var str = "Hello, playground"

var items : [String : String] = [:]
var products : [Int : String] = [:]

products[123] = "product1"

products

var states = ["ny":"newyork","nj":"new jersey"]

states.updateValue("fyou", forKey: "nj")

states
states["nj"]

for (abbrev,state) in states {
    print("\(abbrev):\(state)")
}





