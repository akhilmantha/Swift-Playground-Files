//: Playground - noun: a place where people can play


var str = "Hello, playground"

var emptyarray : [String] = []
var dogname = [String]()

dogname.append("curry")

dogname += ["clive","pepper"]

dogname.count

if dogname.isEmpty{
    print("the array is empty")
}
else{
    print("there are \(dogname.count) dogs")
}

for name in dogname {
    print(name)
}
dogname.removeAtIndex(2)

print(dogname)

dogname.enumerate()

for (index,name) in dogname.enumerate() {
    print("\(index):\(name)")
}



