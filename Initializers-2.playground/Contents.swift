//: Playground - noun: a place where people can play
//Initalizer delegation // convenience intializers
import UIKit

var str = "Hello, playground"
class RocketComponent {
    let model: String
    let serialNumber: String
    let reusable: Bool
    
    // Init #1a - Designated
    init(model: String, serialNumber: String, reusable: Bool) {
        self.model = model
        self.serialNumber = serialNumber
        self.reusable = reusable
    }
}

let payload = RocketComponent(model:"RT-1" , serialNumber: "234", reusable: false)


