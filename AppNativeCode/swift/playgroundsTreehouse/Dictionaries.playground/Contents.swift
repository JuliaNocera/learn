// Dictionary

import UIKit

//  Code    Country name
//  Key     Val
//  CA      Canada
//  BE      Belgium

var countries = ["CA": "Canada",
                 "BE": "Belgium",
                 "FR": "France"]

countries["CA"]
countries["US"] = "United States"

countries["US"] = "Unite States of America"

let item = countries.removeValueForKey("CA")
item // diff from video - no some to indicate optionals - swift3 optionals?

countries


// Read from a dictionary
countries["newKey"] = "VALUE of Key"
countries.updateValue("New k,v pair if not there already", forKey: "Key?")
countries["US"] = nil // removes from dictionary
print(countries)

var todo = ["say hello", "wash dishes", "eat dinner", "eradicate hate"]

// Dealing with non-existent data 
// let lastItem = todo[5] --> this throws a weird execution area - not very helpful

/*
//////////////////////////////////////
||||||||||||||||||||||||||||||||||||||
\\\\\\\\//// OPTIONAL /////\\\\\\/////
||||||||||||||||||||||||||||||||||||||
//////////////////////////////////////
*/

