



// Dictionaries
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
// Return default "Unknown instead of nil"
favoriteIceCream["Charlotte", default: "Unknown"]



// Empty initializers
var teams = [String: String]()
teams["Paul"] = "Red"
var words = Set<String>() // Sets must be this syntax


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
Planet.earth.rawValue // If you assign raw values it will enum

// Arithmetic
let remainder = 13 % 4 // brings back one leftover

"Taylor" <= "Swift" // comparisons work for alphabetized strings

let firstCard = 11
let secondCard = 10
let test = (firstCard == secondCard ? "Cards are the same" : "Cards are different")

var weather = "rainy"
switch weather {
case "warm":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // Goes to default value after
default:
    weather = "default"
//    print("Enjoy your day!")
}

/////////////////////////////////// ////////  Range
let score = 85
switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("")
}

//// repeat loops always run once. Then checks for false
//repeat {
//    print("This is false")
//} while false


// Break named top loop
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        if product == 50 {
            break outerLoop
        }
    }
}

// infinite loop. what iphones run on.
var counter = 0
while true {
    counter += 1
    if counter == 273 {
        break
    }
}



enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

//----------------------------------------------------------------------------- Closures //


// Pass closure into a function
//let driving = {
//    print("I'm driving in my car")
//}

//func travel(action: () -> Void) {
//    print("I'm getting ready to go.")
//    action()
//    print("I arrived!")
//}
//
//travel(action: driving)

// The same but because last param is closure we can do this.

//travel() {
//    print("I'm driving in my car")
//}

// because there arent any parenthesis we can also remove the () from travel()
//travel {
//    print("I'm driving in my car")
//}


//////////////////////////     / /////   (String) means that you pass a string back to your input closure
//func travel(action: (String) -> Void) {
//    print("I'm getting ready to go.")
//    action("London")
//    print("I arrived!")
//}
//
//travel { (place: String) in
//    print("I'm going to \(place) in my car")
//}
//
//
//// function with only one parameter closure. closure accepts a string and returns a string
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//// can remove all string and return things and use 0
//travel { place in
//    "I'm going to \(place) in my car"
//}
//
//// Even more shortening
//travel {
//    "I'm going to \($0) in my car"
//}
//
//// with two parameter closure
//func travel(action: (String, Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London", 60)
//    print(description)
//    print("I arrived!")
//}
//
//travel {
//    "I'm going to \($0) at \($1) miles per hour."
//}




// RETURN CLOSURE FROM A FUNCTION
// travel accepts no parameters. first -> is function return, second is closure return
//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}
//
//let result = travel()
//result("London")



// capturing capturing
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")
result("London")


