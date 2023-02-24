import UIKit

// Structs part two

struct User {
    var username:String
}

var user = User(username: "twostraws")

print(user.username)
user.username = "ebrar"
print(user.username)

struct UserTwo {
    var username:String
    
    init() {
        username = "Anonymous"
        print("Creating a new user")
    }
}

var usertwo = UserTwo()
print(usertwo.username)

struct Employee {
    var name: String
    var yearsActive = 0
}

let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)

struct Employeee {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(name: String) {
        self.name = name
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
            
        } else {
            usesImperialMeasurements = false
        }
    }
}
struct Starship {
    var name: String
    var maxWarp: Double
    init(starshipName: String,maxWarp:Double) {
        name = starshipName
        self.maxWarp = maxWarp
        
    }
}
let voyager = Starship(starshipName: "Voyager", maxWarp: 23.3)

// self keyword
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct Student {
    var name: String
    var bestFriend: String

    init(name : String, bestFriend : String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}

var s1 = Student(name: "Levent", bestFriend: "Levent")


struct SuperHero {
    var nickname: String
    var powers: [String]
    init(nickname: String, superPowers: [String]) {
        self.nickname = nickname
        self.powers = superPowers
    }
}
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])

struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
let french = Language(english:"English ", local: "français", speakerCount: 220_000_000)

struct Character {
    var name: String
    var actor: String
    var probablyGoingToDie: Bool
    init(name: String, actor: String) {
        self.name = name
        self.actor = actor
        if self.actor == "Sean Bean" {
            probablyGoingToDie = true
        } else {
            probablyGoingToDie = false
        }
    }
}

// Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
var eb = Person2(name: "ebrar")
eb.familyTree

struct Student2 {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}

let ed2 = Student2(name: "Ed")
let taylor = Student2(name: "Taylor")

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
    static var entropy = Int.random(in: 1...1000)

    static func getEntropy() -> Int {
        entropy += 1
        return entropy
    }
}



Unwrap.getEntropy()

print(Unwrap.entropy)

Unwrap.getEntropy()


print(Unwrap.entropy)

struct NewsStory {
    static var breakingNewsCount = 0
    static var regularNewsCount = 0
    var headline: String
    init(headline: String, isBreaking: Bool) {
        self.headline = headline
        if isBreaking {
            NewsStory.breakingNewsCount += 1
        } else {
            NewsStory.regularNewsCount += 1
        }
    }
}

struct Cat {
    static var allCats = [Cat]()
    init() {
        Cat.allCats.append(self)
    }
    static func chorus() {
        for _ in allCats {
            print("Meow!")
        }
    }
}








