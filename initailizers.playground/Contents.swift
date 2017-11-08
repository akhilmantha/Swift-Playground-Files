//: Playground - noun: a place where people can play



// Two phase initialization

import UIKit

var str = "Hello, playground"



struct CombustionChamberStatus {
    var temperatureKelvin: Double
    var pressureKiloPascals: Double
    
    init(temperatureKelvin: Double, pressureKiloPascals: Double) {
        print("Phase 1 init")
        self.temperatureKelvin = temperatureKelvin
        self.pressureKiloPascals = pressureKiloPascals
        print("CombustionChamberStatus fully initialized")
        print("Phase 2 init")
    }
    
    init(temperatureCelsius: Double, pressureAtmospheric: Double) {
        print("Phase 1 delegating init")
        let temperatureKelvin = temperatureCelsius + 273.15
        let pressureKiloPascals = pressureAtmospheric * 101.325
        self.init(temperatureKelvin: temperatureKelvin, pressureKiloPascals: pressureKiloPascals)
        print("Phase 2 delegating init")
    }
}

CombustionChamberStatus(temperatureCelsius: 32, pressureAtmospheric: 0.96)


///using failable initializers

struct TankStatus {
    var currentVolume : Double
    var currentLiquidType : String?
    
    init? (currentVolume : Double , currentLiquidType : String?) {
        
        if let tankStatus = TankStatus(currentVolume: 0.0, currentLiquidType: nil){
            print("Tank status is created")
        }else{
            print("tank status is not created")
        }
        self.currentVolume = currentVolume
        self.currentLiquidType = currentLiquidType
        
        
    }
    
    
}

// thrwoing error with initializers


enum InvalidAstronautDataError : Error {
    
    case EmptyName
    case InvalidAge
    
}

struct Astronaut {
    
    var name : String
    var age  : Int
    
    init(name : String , age : Int) throws {
        if name.isEmpty {
            throw InvalidAstronautDataError.EmptyName
        }
        if age<18 && age>70 {
            throw InvalidAstronautDataError.InvalidAge
        }
        self.name = name
        self.age = age
    }
}
let Akhil = try? Astronaut(name: "Akhil Mantha", age: 22)
