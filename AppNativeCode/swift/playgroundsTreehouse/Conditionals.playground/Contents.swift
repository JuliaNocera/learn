//import UIKit
//
//let cards = 1...13
//
//////// IF ELSE IF ELSE \\\\\\
//for card in cards {
//    if card == 11 {
//        print("Jack")
//    } else if card == 12 {
//        print("Queen")
//    } else if card == 13 {
//        print("King")
//    } else {
//        print(card)
//    }
//}
//
//////// SWITCH STATEMENT \\\\\\  ( lets you use ranges )
//for card in cards {
//    switch card {
//    case 1,2,3,5:
//        print("Low Cards")
//    case 11...13:
//        print("Trump cards")
//    default:
//        print(card)
//    }
//}
//
//var airportCodes = ["LGA", "LHR", "CDG", "SFO", "OAK", "LGW", "JFK", "ORY"]
//
//switch airport {
//    case "LGA", "JFK": print("New York") // check for multiple cases
//    case "LHR", "LGW": print("London")
//    case "CDG", "ORY": print("Paris")
//    case "SFO": print("San Fran")
//    case "OAK": print("Oaklandish")
//    default: print("I don't know which you are talking about")
//}
//
//import Foundation
//
//var randomTemp = Int(arc4random_uniform(UInt32(150)))
//
//switch randomTemp {
//    case 0..<32: print("don't leave the house - too cold!") // vals below 32 degrees
//    case 32...45: print("Its chilly - grab a jacket")
//    case 42..<70: print("a bit chill - wear a light sweater")
//    case 70...100: print("Its hot - grab nothing but a tshirt and shorts - head to water now")
//    default: print("My face is melting")
//    
//}
//
///*
//Operators:
//    Comparison
//    Logical
//*/
//// Comparison
//1 == 1
//2 != 1
//2 > 1
//1 > 2
//1 >= 1
//2 <= 1
//
//// Logical
//// &&   AND
//// ||   OR
//// !    NOT
//
//var distance = 121
//if distance < 5 {
//    print("\(distance) miles is near")
//} else if distance >= 5 && distance <= 20 {
//    print("\(distance) miles is close")
//} else {
//    print("\(distance) miles is far")
//}
//
//var number = 121
//func fizzbuzz(num: Int) {
//    if num % 3 == 0 {
//        print("buzz")
//    } else if num % 5 == 0 {
//        print("Buzz")
//    } else if num % 5 == 0 && num % 3 == 0 {
//        print("FizzBuzz")
//    } else {
//        print("\(num) is not divisible by 3 or 5")
//    }
//}
//
//fizzbuzz(number)
//
//for i in 1...20 {
//    if i % 3 == 0 {
//    print("Fizz")
//    } else if i % 5 == 0 {
//    print("Buzz")
//    } else if i % 5 == 0 && i % 3 == 0 {
//    print("FizzBuzz")
//    } else {
//    print("\(i) is not divisible by 3 or 5")
//    }
//}

//var europeanCapitals: [String] = []
//var asianCapitals: [String] = []
//var otherCapitals: [String] = []
//
//let world = [
//    "BEL": "Brussels",
//    "LIE": "Vaduz",
//    "BGR": "Sofia",
//    "USA": "Washington D.C.",
//    "MEX": "Mexico City",
//    "BRA": "Brasilia",
//    "IND": "New Delhi",
//    "VNM": "Hanoi"]
//
//for (key, value) in world {
//    // Enter your code below
//    switch key {
//    case "BEL", "LIE", "BGR": europeanCapitals.append(value)
//    case "VNM", "IND": asianCapitals.append(value)
//    default: otherCapitals.append(value)
//    }
//    // End code
//}
//print("\(europeanCapitals), \(asianCapitals), \(otherCapitals)")

// given rando num - if 3 : fizz, 5: buzz, 3 & 5 fizzbuzz

func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if (n % 3 == 0) {
        return "Fizz"
    } else if (n % 5 == 0) {
        return "Buzz"
    } else if (n % 5 == 0 && n % 3 == 0) {
        return "FizzBuzz"
    }
    // End code
    return "\(n)"
}


fizzBuzz(3)
