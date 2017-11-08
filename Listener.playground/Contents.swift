//: Playground - noun: a place where people can play

import UIKit


//creating a listener
class DynamicString{
    typealias Listener = String -> Void
    var listener = Listener?()
    
    
    func bind(listener : Listener?){

        self.listener = listener}
    var value : String = "" {
        didSet{
            listener?(value)
        }
    }
    init(_ v : String){
        value = v
    }
}

let name = DynamicString("Akhil")

name.bind ({
    value in
    print(value)
})

name.value = "Nikhil"
name.value = "Groot"

var str = "Hello, playground"
