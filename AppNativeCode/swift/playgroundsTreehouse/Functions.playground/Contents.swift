//Swift Functions

import UIKit

func calcArea(length: Int, width: Int) -> Int {
    
    let area = length * width
    return area
}


let areaOfRoom1 = calcArea(10, width: 12)
let areaOfRoom2 = calcArea(11, width: 12)

// LOCAL Parameter Names
func temperatureInFahrenheit(temperatureInCelsius temp: Double) -> Double {
    //temp is local param nam, temperatureInCelsius is external param name
    return temp
}

func concatenateStrings(a: String, b: String) -> String {
    return a + b
}

concatenateStrings("A", b: "B")

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Pasan", and: "Gabe")

/*+++=======+++======+++
    Default Values
+++=======+++======+++*/
func carpetCost(length length: Int, width: Int, color: String = "tan") -> (price: Int, carpet: String) {
    // gray - 1$/sqft
    // tan - 2$/sqft
    // blue - 4$/sqf
    let area = calcArea(length, width: width)
    var price: Int
    switch color {
        case "gray": price = area * 1
        case "tan": price = area * 2
        case "blue": price = area * 4
        default: price = 0
    }
    return (price, color) // return a tuple
}
let result = carpetCost(length: 10, width: 10, color: "blue")
result.price  //can access tuple info
result.carpet




// Function Scope
func countDownAndUp(a: Int) { // when we create a parameter it is a constant unless using var
    var b = a
    var c = a
    while b >= 0 {
        b-=1
        c+=1
        print("a: \(a)\nb:\(b)")
    }
}

var a = 20
countDownAndUp(10)
var arr = [1,2,3,4,5]
arr.removeAtIndex(2)
