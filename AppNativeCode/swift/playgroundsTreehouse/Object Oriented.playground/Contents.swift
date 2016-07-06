
// Grid 
    // towers can be at certain points 
    // enemies can be elsewhere on the grid 
//Use X, Y COORDS 
    // x = horizontal
    // y = vertical

/*
let coord1: (x: Int,y: Int) = (0,0) // Tuple with 2 ints
coord1.x
*/

/********************************
 ********** STRUCTURES **********
********************************/

// struct is an object that allows us to create
// we can use this obj to create custom data types
// store properties and function associated with the obj and they are scoped to an instance of the struct
// to create instance use Name(param1: <anything>, param2: <anything2>)
// it is required to declare what type a thing is in a struct since we aren't assigning it to anything (this assures only a correct value will get in there)

struct Point {  // our own object type
    let x: Int // stored constant of Int type no assigned val
    let y: Int // stored constant of Int type no assigned val
   
    // initializer is a special instance method - we can write it manually (it is automatic though) this way we can understand
    // better what is happening - this step sets up the obj ready for use with initial values
    init(x: Int, y: Int) { // mimic initializer swift created for us
        self.x = x // from what has been passed to Point
        self.y = y // we are referring to the instance within obj method using 'self'
      }
    
    // "Point" Object Method  --> below is an instance method
    func surroundingPoints(withRange range: Int = 1) -> [Point] { // returning type: array of Point
        var results: [Point] = [] // only be Point instances
        for xCoord in (x-range)...(x+range) {
            for yCoord in (y-range)...(y+range) {
                let coordPoint = Point(x: xCoord, y: yCoord)
                results.append(coordPoint)
            }
        }
        return results
    }
}

let coordPoint = Point(x: 2, y: 2) // this is an instance of Point
coordPoint.surroundingPoints()


class Enemy {
    var life: Int = 2                 // read/write  -  var  (assigned initial value here instead of in init in this case)
    let position: Point               // read only   -  let
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func decreaseHealth(factor: Int) {
        life -= factor
    }
}

class Tower {
    let position: Point
    var range: Int = 1 // can use this with the Point obj range
    var strength: Int = 1
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }

    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.position, range: self.range, target: enemy.position) {
            while enemy.life > 0 {
                enemy.decreaseHealth(self.strength)
                print("Enemy vanquished!")
            } 
        } else {
            print("Darn! The enemy is out of range!")
        }
    }
    
    // is taregt in range ?
    func inRange(position: Point, range: Int, target: Point ) -> Bool {
        let availablePositions = position.surroundingPoints(withRange: range)
        for point in availablePositions {
            if (point.x == target.x) && (point.y == target.y) {
                return true
            }
        }
        return false
    }
    
}

// now this is identical to Enemy and we can add more properties and methods
// SuperEnemy is a subclass of Enemy
class SuperEnemy: Enemy {
    let isSuper: Bool = true //customizable
    // initializer just like before
   override init(x: Int, y: Int) { // override init from super class & do something diff
      super.init(x: x, y: y) // enemy is the super class
      self.life = 50
   }
}

class LaserTower: Tower {
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        // change stored props from parent class
        self.range = 100
        self.strength = 100
    }

    override func fireAtEnemy(enemy: Enemy) { // override gives us the ability to change the function to account for the huge range of our tower
        while enemy.life >= 0 {
            enemy.decreaseHealth(strength)
        }
        print("Enemy vanquished")
    }
}

let tower = Tower(x: 0, y: 0)
let enemy1 = Enemy(x: 1, y: 1)
let enemy2 = Enemy(x: 5, y: 5)

let laserTower = LaserTower(x: 0, y: 0)
let superEnemy = SuperEnemy(x: 20, y: 20)

tower.fireAtEnemy(enemy1)
tower.fireAtEnemy(enemy2)

laserTower.fireAtEnemy(superEnemy)

/****************************************************
*************** STRUCTS VS CLASSES ******************
****************************************************/

/******* struct *******/
struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Jack Black", email: "JackBlack@tenciousD.com", age: 42)
var anotherUser = someUser
someUser.email = "somethingelse"
anotherUser.email
// when you change value on someUser anotherUser isn't changed because we have to diff copies of the struct User

/******* class *******/

class Person {
    var fullName: String
    var email: String
    var age: Int
   
    init(name: String, email: String, age: Int) {
      self.fullName = name
      self.email = email
      self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "someemail", age: 33)

var anotherPerson = somePerson
somePerson.email = "another email now"
anotherPerson.email
// in a class we actually are looking at references - it is a referrence so when we change something on one, it changes on the other
