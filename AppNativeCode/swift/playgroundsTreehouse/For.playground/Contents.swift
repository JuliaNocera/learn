//: Playground - noun: a place where people can play

import UIKit

var todo: [String] = ["Return calls", "Write Blog", "Cook Dinner", "Pickup Laundry", "Buy Bulbs"]

///////<< WHILE LOOP >>\\\\\\\
var index = 0                   // index
while index < todo.count {      // condition
    print(todo[index])          // do thing
    index += 1                  // increment
}


///////<< FOR LOOP >>\\\\\\\\\
for i in 0..<todo.count {
    print(todo[i])
}



