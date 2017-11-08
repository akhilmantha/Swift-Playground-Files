//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Player {
    //properties
    
    var name : String
    var score : Int
    
    //methods
    
    func description() -> String {
        return "player \(name) has a score of \(score)"
    }
    
    //default initializer
    
    init()
    {
        name = "john doe"
        score = 0
        
    }
    
    //initializer with parameter 
    
    init(name: String, score: Int)
    {
        self.name = name
        self.score = score
    }
    
    //deinitializer
    
    deinit
    {
        //cleanup code
    }
}
var defaultplayer = Player()

defaultplayer.description()

var alice = Player(name: "alice", score: 10)
alice.description()


