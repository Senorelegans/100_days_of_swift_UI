



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
