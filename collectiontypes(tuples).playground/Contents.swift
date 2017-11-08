//: Playground - noun: a place where people can play


var str = "Hello, playground"

let productindex = [123:"apples",456:"bananas",143:"pineapple"]

for  (ink,product) in productindex{
    
    print("\(ink):\(product)")
}

let tuple1 = ("akhil",21,12.99,true)

tuple1.0

func getcardetails() -> (String,Int,Bool){
    let name = "mustang"
    let speed = 160
    let isconvertable = true
    return(name,speed,isconvertable)
}

let car = getcardetails()
car
car.0
