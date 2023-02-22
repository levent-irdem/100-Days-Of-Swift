import UIKit

// Structs

struct Sport {
    var name:String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn Tennis"
print(tennis.name)

// Struct with default value.
struct User {
    var name = "Anonymous"
    var age: Int
}

let twostraws = User(name: "Levent", age: 12)
    

// Computed properties

struct SportOne {
    var name:String
    var isOlympicSport:Bool
    
    var olympicStatus : String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chess = SportOne(name: "Chess", isOlympicSport: false)
let gymnastics = SportOne(name: "Gymnastics", isOlympicSport: true)
print(chess.olympicStatus)
print(gymnastics.olympicStatus)

struct Dog {
    var breed: String
    var cuteness: Int
    var rating: String {
        if cuteness < 3 {
            return("That's a cute dog!")
        } else if cuteness < 7 {
            return("That's a really cute dog!")
        } else {
            return("That a super cute dog!")
        }
    }
}
let luna = Dog(breed: "Samoyed", cuteness: 11)
print(luna.rating)

// Property observers

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

// We also have willSet. Do not forget it.

var progress = Progress(task: "Loading Data", amount: 0)

progress.amount = 20
progress.amount = 80
progress.amount = 100

// Methods

// Structs can have functions inside them, and those functions can use the properties of the struct as they need to. Functions inside structs are called methods, but they still use the same func keyword.

struct City {
    var population : Int
    
    func collectTaxes () -> Int {
        return population * 1000    }
}

var london = City(population: 20000)
print(london.collectTaxes())

struct Venue {
    var name: String
    var maximumCapacity: Int
    func makeBooking(for people: Int) {
        if people > maximumCapacity {
            print("Sorry, we can only accommodate \(maximumCapacity).")
        } else {
            print("\(name) is all yours!")
        }
    }
}

var placeToMeet = Venue(name: "Balıkçı", maximumCapacity: 100)

placeToMeet.makeBooking(for: 23)


// Mutating methods

struct Person2 {
    var name:String
    
    mutating func makeAnonymous (){
        name = "Ananymous"
    }
}

var personTwo = Person2(name: "Ebrar")
print(personTwo.name)

personTwo.makeAnonymous()
print(personTwo.name)

struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}

struct Stapler {
    var stapleCount: Int
    mutating func staple() {
        if stapleCount > 0 {
            stapleCount -= 1
            print("It's stapled!")
        } else {
            print("Please refill me.")
        }
    }
}

struct Switch {
    var isOn: Bool
    mutating func toggle (){
        if isOn {
            isOn == false
        } else {
            isOn == true
        }
    }
}
struct MeetingRoom {
    var isBooked = true
    mutating func book(for name: String) {
        if isBooked {
            print("Sorry, the meeting room is already taken.")
        } else {
            isBooked = true
            print("It's reserved for \(name).")
        }
    }
}

struct Delorean {
    var speed = 0
    mutating func accelerate() {
        speed += 1
        if speed == 88 {
            travelThroughTime()
        }
    }
    func travelThroughTime() {
        print("Where we're going we don't need roads.")
    }
}

// Properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

// Properties and methods of arrays
var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")

toys.firstIndex(of: "Buzz")
print(toys.sorted())

toys.remove(at: 0)

var fibonacci = [1, 1, 2, 3, 5, 8]
fibonacci.sorted() == [1, 2, 3, 5, 8]

var examScores = [100, 95, 92]
examScores.insert(90,at: 3)









