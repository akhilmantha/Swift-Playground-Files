//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Person
{
    
    //stored properties
    
    var firstname : String
    var lastname : String
    var age : Int
    var occu : String
    var hoursPerWeek : Double
    var hourlyRate : Double
    static var employer = " Apple"
    static var insurance = "BC/BS"
    
    
    //computed properties
    
    var weeklySalary : Double
    {
       return hoursPerWeek * hourlyRate
    }
    
    var fullName : String
    {
      
         return " \(firstname) \(lastname)"
    }
    
    //methods
    
    func description() -> String
    {
        
        return " \(fullName) is a \(age) year old \(occu) who works about \(hoursPerWeek) and makes a weekly salary of \(weeklySalary) "
        
    }


   //convienence Intializer



    //custom initializer
    
    /*init(firstName:String, lastName:String, age:Int, occupation:String , hoursperweek : Double , hourlyrate : Double)
    {
        self.firstname = firstName
        self.lastname  = lastName
        self.age  = age
        self.occu = occupation
        self.hoursPerWeek = hoursperweek
        self.hourlyRate = hourlyrate
    }
    
}

var gary = Person(firstName: "Gary", lastName: "Mantha", age: 20, occupation: "student", hoursperweek: 6, hourlyrate: 20)


gary.fullName
gary.description()

Person.employer = "Google"

gary.description()

Person.employer
Person.insurance

*/



/*class PoliceOfficer : Person
{
    
    //properties
    var rank : String
    
    //methods
    
    override func description() -> String {
        return "\(rank) \(fullName) works very hard"
    }
    
    //initializers
    
    init(rank: String)
    {
        super.init(firstName: <#T##String#>, lastName: <#T##String#>, age: <#T##Int#>, occupation: <#T##String#>, hoursperweek: <#T##Double#>, hourlyrate: <#T##Double#>)
    }
    
    
}
*/
