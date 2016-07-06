//: Playground - noun: a place where people can play

import UIKit

let height = 12 // In Feet
let width = 10  // In Feet

let area =  height * width

// 1 sq meter == 1 sq ft / 10.764
let areaInMeters = Double(area) / 10.764
// you cannot operate on different types so we use a Double function that turns the area into a double in this context 


//How many chairs can we line up against the wall?
let chairWidth = 3
let spaceRemaining = width % chairWidth
let chairs = width / chairWidth



///////////*******OPERATOR PRECEDENCE********\\\\\\\\\\\\
var x = 100 + 100 - (((5 * 2) / 3) % 7)

/* 
 Precendence LEVEL 150
    multiplication
    division
    modulo
 
 Precedence LEVEL 140
    addition
    subtraction
*/


