// Enumerations - a new type

// just need a val to indicate what day it is

/*
let week = ["mon", "tues", "wed", "thurs", "fri", "Sat", "Sun"]
This way sucks because you could mispell the day easily when you enter
func weekendOrDay(day: String) -> String {
    switch day {
        case "Sat", "Sun": return "Weekend"
        case "mon", "tues", "wed", "thurs", "fri": return "Weekday"
        default: return "not a day in the calander"
    }
}
*/
// compiler will provide checks and autocomplete will show you your options when you are typing later & strings can cause errors
enum DayType {
    case Weekend
    case Weekday
}

enum Day {
    case Monday
    case Tuesday
    case Wednesday
    case Saturday
    case Sunday
}

func weekdayOrEnd(day: Day) -> DayType {
    switch day { // also compiler knows this is echaustive because it knows about Day --> if you didn't have one of the Day.<s> it would throw an error
    case .Saturday, .Sunday: return .Weekend            // "Weekend"   could be returning simple strings but
    default: return .Weekday                            // "Weekday"   better to return another enum
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case DayType.Weekend: return true           // You don't need to put DayType before the .Whatever because the compiler knows what you 
    case DayType.Weekday: return false          // are looking at based on the switch on 'dayType' which is passed in with type: DayType
    }                                           // Shown above in WeekdayOrEnd
}


// Color Objects
import UIKit
// Wrapper object for UIColor : 
enum ColorComponents {
    // rgb or hsb 
    case RGB(red: CGFloat, green: CGFloat, yellow: CGFloat, alpha: CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue): return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue): return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
        }
    }
}

ColorComponents.RGB(red: 61.0, green: 120.0, yellow: 198.0, alpha: 1.0).color()

// enums are sort of like objects
