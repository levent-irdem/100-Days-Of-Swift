import UIKit

// Writing functions

func printHelp(){
    let massage = """
Welcome to MyApp!
Run this app inside a directory of images and MyApp will resize them all into thumbnails.
"""
    print(massage)
}

printHelp()

func readUserInput() {
    while true {
        print("Reading user input...")
        break
    }
}
readUserInput()

func listOriginalStarWarsMovies(num:Int) {
    for i in 4...num {
        print("Episode \(i)")
    }
}

listOriginalStarWarsMovies(num: 6)

// Accepting parameters

func square (number:Int){
    print(number * number)
}

square(number: 5)
square(number: 2324)

// Returning values

func squareTwo (number:Int) -> Int {
    return number * number
}

let result = squareTwo(number: 9)
print(result)

// How can you return two or more values from a function?

func getUser () -> [String] {
 return  ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])
print(user[1])

func getUserTwo() -> [String:String]{
    return ["first":"Taylor", "last":"Swift"]
}

let userTwo = getUserTwo()
print(userTwo["first"]!)
print(userTwo["last"]!)

func getUserByTuples() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let userThree = getUserByTuples()
print(userThree.first)

// Parameter Labels

func sayHello(to name:String){
    print("Say hello to \(name)!")
}

sayHello(to: "Levent")

// Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

// Default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

// Variadic functions

func square3(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square3(numbers: 1,2,3,4,5,6,8)

// Writing throwing functions

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


// inout parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)
