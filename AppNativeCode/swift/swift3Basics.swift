Getting started with Swift (WWDC 2016)

Constants: 
  let languge: String = "Swift" // language is a type: string 
  let introduced: Int = 2014
  let isAwesome: Bool = true
    
    // Naming: Swift can infer the type so we don't ave to type it all out 
  let languge = "Swift" // language is a type: string 
  let introduced = 2014
  let isAwesome = true
  
Variables: 
  let languge = "Swift" // language is a type: string 
  let introduced = 2014
  let isAwesome = true
  var version = 1
  version = 3 // this is ok
  isAwesome = false // not ok

Building Strings: 
  let conference = "WWDC"
  let year = 2016
  let message = "Hello, \(conference) \(year+1)!" // "Hello, WWDC 2016!"

Unicode: 
  ASKI friendly - you can use characters like a happy face in a string: 
  let dogstring = "Dog?!<here you can use unicode to create a dog face"

Array & Dictionary
  Array:
  let names = ["lily", "Santiago", "Justyn", "Aadya"] // we always want this array to be strings

  Dictionary:
  let ages = ["Mohsen": 17, "Amy": 40, "Graham":5] // a dictionary with String keys and integer values 

Loops: 
  While and Repeat-while 
  For-in Loop
    for number in 1...5 {
    print("\(number) is a print of each number in the range")}
    
    let ages = ["Mohsen": 17, "Amy": 40, "Graham":5] // a dictionary with String keys and integer values 
    for (name, age) in ages {
      //do something  
    }

Modify an Array: 
  var packingList = ["Socks", "Shoes"]
  print(pakingList[0]) 
  packingList.append("Trousers")
  packingList[2] = "Jeans"
  packingList.append(contentsOf: ["Shorts", "Sandals", "Sunblock"])
  packingList[3...5] = ["Hoodies", "Scarf"]

  let ages = ["Mohsen": 17, "Amy": 40, "Graham":5] // a dictionary with String keys and integer values 
  ages["Justyn"] = 67
  ages["Justyn"] = 68

  //get a value for someone: 
  Optionals: 
  let possibleAge = ages["Daryl"]
  let possibleAge:Int? = ages["Amy"] // Int? means possible value of Int

  if possibleAge == nil {
    print("/(possibleAge)")
  }

  if age = 32

  if age == 1 {
    print()
  } else  if age ==21 {
    print()
  }

// ex of switch case: 
  let age = 40
  switch age {
  case: 1
    print("Happy first birthday!")
  case 13...19: 
    print("Happy birthday teenager!")
  case let decade where decade % 10 == 0: 
    print("Happy significant \(decade)th birthday")
  // always has a default to catch all other cases
  default: 
    print("Happy plain old, boring birthday.")
  }

let userName = "admin"
let passIsVal = true
swicth(userName, passIsVal) {
  case ("admin", true): 
    print("Welcome back!")
  case ("guest", _): 
    print("Guests aren't allowed")
  case (_, let isValid): 
    print(isValid ? "Welcom to the restricted area!": "Access Denied") // ternary operator
  // no need for default because final case will check all other cases  
}
_________________________________________________
-------- FUNCTIONS & CLOSURES IN SWIFT ----------
=================================================

Arguments: 
func sendMessage(_ message : String, to recipient: String, shouting: Bool) {
  var message = "\(message), \(recipient)"
  if shouting {
    message = message.uppercased()
  }
  print(message)
}

Argument Labels: 
sendMessage(shouting: true)

sendMessage("See you at the base:, to: "Morgan", shouting: true)
// you can provide more suitable argument label by using 2 param names in func declaration as well as using _ to indicate it won't take a label on input 

Function Return Values
func firstString(havingPrefix prefix: String, in strings: [String]) -> String? {
  for string in strings {
    if string.hasPrefix(prefix) {
    return string
    }  
  }
  return nil
}

var guests = ["Jack", "Kumar", "Anita", "Anna"]

if let guest = firstString(havingPrefix: "A", in: guests) {
  print("See you at the party, \(guests)!")
} else {
  print("Invite must be in the mail.")
}

// filter array function 
func filterInts(_ numbers: [Int], _ includeNumber: (int) -> Bool) -> [Int] {
  var result: [Int] = [] // initialied to an empty array of ints
  for number in numbers {
    if includeNumber(number) { // this is the (f) parameter 
      result.append(number)
    }
  }
  return result
}

let numbers = [4,12,34,41,82]
func divisibleByTwo(_ number: Int) -> Bool {
  return number % 2 == 0
}

let evenNumber = filterInts(numbers, divisibleByTwo)
print(evenNumbers)

Closure Expression : // you can write literal function called a colsure expression in your function 
//long hand (explicit)
let evenNumber = filterInts(numbers, { (number: Int) -> Bool in return number % 2 == 0 } ) // a closure function with no name 
// Short hand (implicit)
let evenNumber = filterInts(numbers) { $0 % 2 == 0 } // a closure function with no name can be set right outside of parens if it is the last function 

______filter array of strings_______
let names = ["lily", "Sam", "Haley"]

func filterStrings(_ strings: [String], _ includeNumber: (string) -> Bool) -> [Int] {
  var result: [Int] = [] // initialied to an empty array of string
  for string in strings {
    if includeNumber(string) { // this is the (f) parameter 
      result.append(string)
    }
  }
  return result
}

// point is how do you make a generic filter that accepts diff types??
func filter<Element>(_ source: [Element], _ includeElement: (Element) -> Bool) -> [Element] { // use a generic element type
  var result: [Element] = []
  for element in source {
    if includeElement(element) {
      result.append(element)
    }
  }
  return result
}

let evenNumbers = filter(numbers) { $0 % 2 == 0 }

// swift has a built in filter function method: 
let names = ["lily", "Santiago", "Justyn", "Aadya"] // we always want this array to be strings

let shortNames = names.filter { name in name.characters.count < 5 }
print(shortNames)

Map Method: 
// returns new array that applies a closure to each element + you can chain methods: 
let capitalizedShortNames = names.filter { name in name.characters.count < 5 }
                                 .map { name in name.uppercased() }
print(capitalizedShortNames)

_________________________________
-------- Data Structures --------
=================================
struct Rectangle {
        var width = 12
        var height = 10
}
var rectangle = Rectangle(width: 4, height: 5)

struct Rectangle {
  var width: Int
  var height: Int
  var area: Int {
    return width * height 
  }
}
let rectangle = Rectangle(width: 4, height: 5)
print("Width is \(rectangle.width) and areas is \(rectangle.area).") 
-----------------------------------
struct rectangle { 
  var width: int
  var height: int  
  /***************************************************************************************************** 
  ******* initializer that swift takes care of but this is how you would right an initializer:   ******* 
  ******* This would go here                                                                     ******* 
  ******* init(widthl int, height: int) {                                                        *******
  *******   self.width = height                                                                  *******
  *******   self.height = height                                                                 *******
  ******* }                                                                                      *******
  *************************************************************************************************** */
}

var rectangle = Rectangle(widthL 4, height: 5) 


