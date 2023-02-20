import UIKit

// arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let age = 25

let beatles = [john,paul,george,ringo,]

print(beatles[1])

// arrays with type annotations

let numbers:[Int] = [1,2,3,4,5,65,67]
let cities:[String]
let doubles:[Double]
let bools:[Bool]
let chars:[Character]

// you can mix types by using "any" keyword

let mixArray = ["asd",2,3,4,true,2.13] as [Any]
print(mixArray[4])

// Sets

// Items aren’t stored in any order; they are stored in what is effectively a random order.

// No item can appear twice in a set; all items must be unique.

let colors = Set(["red","green","blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"])

// Tuples

var name = (first: "Taylor", last: "Swift")

name.0
name.first

//Dictionaries

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

//-------------------

var teams = [String:String]()
teams["Paul"] = "Red"
var results = [Int]()

var words = Set<String>()
var numbers2 = Set<Int>()

// Enums

enum Result {
    case success
    
    case failure
}

let result = Result.failure
let result2 = Result.success

// As well as storing a simple value, enums can also store associated values attached to each case. This lets you attach additional information to your enums so they can represent more nuanced data.

enum Activity {
        case bored
        case running(destination: String)
        case talking(topic: String)
        case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")
print(talking)





enum days {
    case Pazartesi
    case Sali
    case Çarşamba
    case Perşembe
    case Cuma
    case Cumartesi
    case Pazar
}

var day = days.Cuma
switch day {
case days.Cuma:
    print("Cuma")
case days.Cumartesi:
    print("salı")
case days.Pazar:
    print("çrş")
case days.Pazartesi:
    print("prş")
default:
    print("okey")
}
