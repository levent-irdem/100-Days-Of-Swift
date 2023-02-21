import UIKit

// Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}
func buildCar(name: String, engine: (Int) -> Void) {
    print("I'm building the car")
}

buildCar(name: "Mazda", engine: changeSpeed)

print("-------------------")

// Using closures as parameters when they return values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}

print("-------------------")

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2: Void = travel()("London")

func travel2() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result3 = travel2()
result3("London")
