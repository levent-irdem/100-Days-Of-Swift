import UIKit

// Protocols

protocol Identifiable {
    var id:String {get set}
}

struct User:Identifiable {
    var id: String
    
}

func displayID(thing:Identifiable){
    print("My ID is \(thing.id)")
}

protocol HavaHayvani {
    func havadaUc()

}
protocol KaraHayvani {
    func havadaUc()
    

}


protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

protocol Payable {
    var name:String {get set}
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {
    
}

struct Example:Employee{
    var name: String
    
    func calculateWages() -> Int {
        return 2
    }
    
    func study() {
        
    }
    
    func takeVacation(days: Int) {
        
    }
    
    
}
protocol HasEngine {
    func startEngine()
}
protocol HasTrunk {
    func openTrunk()
}
struct Car2: HasEngine, HasTrunk {
    func startEngine() {
        
    }
    
    func openTrunk() {
        
    }
}

// Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

extension String {
    var isLong: Bool {
    return self.count > 25
    }
}

var asd:String = "Levent"

print(asd.isLong)

extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

beatles.summarize()

let numbers = [4, 8, 12, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }
print(allEven)

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

print(allEven3)

protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}
extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much!")
        } else {
            print("Someone call the police!")
        }
    }
}
func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0

print(scores)

class Animal { }
class Fish: Animal { }

class Dog:Animal{
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]


var dizi:[Any] = [1,2,3,4,5,6,"Levent"]

for i in dizi {
    if let exp = i as? Int {
        print(exp)
        exp.isEven
    }else{
        print("Bu bir string")
    }
}
