//: Subclasses, inheritence, and overriding.

class Person {
    
    // stored properties
    var firstName : String
    var lastName : String
    var age : Int
    var occu : String
    var hoursPerWeek : Double
    var hourlyRate : Double
    
    // computed properties
    var weeklySalary : Double {
        return hoursPerWeek * hourlyRate
    }
    
    var fullName : String {
        return "\(firstName) \(lastName)"
    }
    
    // methods
    func description() -> String {
        return "\(fullName) is a \(age) year old \(occu) who works about \(hoursPerWeek) hours per week and makes a weekly salary of $\(weeklySalary)."
    }
    
    // custom initializer (default not needed)
    init(firstName: String, lastName: String, age: Int, occupation: String, hoursPerWeek: Double, hourlyRate: Double) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.occu = occupation
        self.hoursPerWeek = hoursPerWeek
        self.hourlyRate = hourlyRate
    }
}

class PoliceOfficer : Person {
    
    // property
    var rank : String
    
    // methods
    override func description() -> String {
        return "\(rank) \(fullName) works very hard."
    }
    
    // init
    init(rank: String) {
        super.init(firstName: <#T##String#>, lastName: <#T##String#>, age: <#T##Int#>, occupation: <#T##String#>, hoursPerWeek: <#T##Double#>, hourlyRate: <#T##Double#>)
    }
    
}

var rick = PoliceOfficer(rank: "Sargeant")

rick.age = 40







