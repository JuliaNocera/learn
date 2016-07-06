//: Playground - noun: a place where people can play

import UIKit

var todo = ["return Calls","Write Blogpost","Cook dinner"]
// var todo: [String] = ["return Calls", "Write Blogpost", "Cook dinner"] --> explicit

todo += ["Pickup Laundry", "Buy Bulbs", "Laundry"] // adds to array


print(todo[0...2]) // print the 1st, 2nd, & 3rd items in array

print(todo.count) // length of todo 


// Add to array
todo.append("Edit blog post")

// Update Array -> just reassign
todo[2] = "Clean Dishes"

let item = todo.removeLast()
// --> option+click shows you doc for this function in line - shows that this returns item

let item2 = todo.removeAtIndex(1)

todo.insert("Call Mom", atIndex: 0) // atIndex is a label -->  put this task at top of array

print(todo)



