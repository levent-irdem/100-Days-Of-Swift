import UIKit

// CLASSES

class Dog {
    var name:String
    var breed:String
    init(name:String,breed:String) {
        self.name = name
        self.breed = breed
    }
}

var dog = Dog(name: "Poppy", breed: "Poodle")


class Poodle:Dog {
    init(name:String){
        super.init(name: name, breed: "Poodle")
    }
}

var dogTwo = Poodle(name: "Kılçık")

print(dogTwo.breed)

class Phone {
    var price: Int
    init(price: Int) {
        self.price = price
    }
}
class SmartPhone: Phone {
    var features: [String]
    init(features: [String]) {
        self.features = features
        super.init(price: features.count * 50)
    }
}

class Shape {
    var sides: Int
    init(sides: Int) {
        self.sides = sides
    }
}
class Rectangle: Shape {
    var color: String
    init(color: String) {
        self.color = color
        super.init(sides: 4)
    }
}

// Overriding methods


class Animal {
    func makeNoise()  {
        print("Making noise")
    }
}

class Cat:Animal {
    override func makeNoise(){
        print("Meeoww")
        
    }
}

class Dogg:Animal {
    override func makeNoise() {
        print("Wooof!!")
    }
}

var catOne = Cat()
catOne.makeNoise()

var dogOne = Dogg()
dogOne.makeNoise()

// Copying Objects

class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerTwo = singer
singerTwo.name = "Justin Bieber"

print(singer.name)


class Person {
    var name = "Levent İrdem"
    
    init(){
        print("\(name) is alive")
    }
    deinit {
        print("\(name) is no more! ")
    }
    
    func printGreeting (){
        print("Hello, I'm \(name)")
    }
}

var person1 = Person()
person1.printGreeting()


    
    
    
