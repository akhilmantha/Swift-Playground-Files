//: Playground - noun: a place where people can play

import UIKit



//let dateFormatter = NSDateFormatter()
//dateFormatter.dateFormat = "hh:mm"
//print(dateFormatter.stringFromDate(NSDate))

var str = "Hello, playground"
extension NSDate: Comparable {
    
}

func + (date: NSDate, timeInterval: NSTimeInterval) -> NSDate {
    return date.dateByAddingTimeInterval(timeInterval)
}

public func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    if lhs.compare(rhs) == .OrderedSame {
        return true
    }
    return false
}

public func <(lhs: NSDate, rhs: NSDate) -> Bool {
    if lhs.compare(rhs) == .OrderedAscending {
        return true
    }
    return false
}

extension NSTimeInterval {
    var second: NSTimeInterval {
        return self.seconds
    }
    
    var seconds: NSTimeInterval {
        return self
    }
    
    var minute: NSTimeInterval {
        return self.minutes
    }
    
    var minutes: NSTimeInterval {
        let secondsInAMinute = 60 as NSTimeInterval
        return self * minutesInASecond
    }
    
    var day: NSTimeInterval {
        return self.days
    }
    
    var days: NSTimeInterval {
        let secondsInADay = 86_400 as NSTimeInterval
        return self * secondsInADay
    }
    
    var fromNow: NSDate {
        let timeInterval = self
        return NSDate().dateByAddingTimeInterval(timeInterval)
    }
    
    func from(date: NSDate) -> NSDate {
        let timeInterval = self
        return date.dateByAddingTimeInterval(timeInterval)
    }
    
    var ago: NSDate {
        let timeInterval = self
        return NSDate().dateByAddingTimeInterval(-timeInterval)
    }
}



