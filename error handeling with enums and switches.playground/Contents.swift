//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum LoginFailure : ErrorType {
    case InvalidUsername
    case InvalidPassword
}

let dbusername = "user1"
let dbpassworrd = "pass1"

var loginError = LoginFailure.InvalidPassword

func loginUser(username : String, password : String) throws ->Bool
{
    guard username == dbusername else {
        loginError = LoginFailure.InvalidUsername
        throw LoginFailure.InvalidUsername
    }
    //check for password 
    guard password == dbpassworrd else{
        loginError = LoginFailure.InvalidPassword
        throw LoginFailure.InvalidPassword
    }
    return true
}

do
{
    try loginUser("user1", password: "pass1")
    print("login successful")
}
catch {
    switch loginError {
    case .InvalidUsername :
        print("login failed")
    case .InvalidPassword :
        print("login failed, invalid password")
    }
}
