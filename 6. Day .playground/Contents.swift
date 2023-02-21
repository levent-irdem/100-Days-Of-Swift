import UIKit

// Closures

let driving = {
    print("I'm driving in my car")
}


// Accepting parameters

let movingTo = {
    (place:String) in
    print("I'm moving to \(place)")
}

movingTo("London")

let sendMessage = { (message: String) in
    if message != "" {
        print("Sending to Twitter: \(message)")
    } else {
        print("Your message was empty.")
    }
}

sendMessage("Hello")

var printDocument = { (copies: Int) in
    if copies > 1{
        for _ in 1...copies {
            print("Printing document...")
        }
    }else {
        print("Type a number bigger than one")
    }
}

var pickFruit = { (name: String) in
    switch name {
    case "strawberry":
        fallthrough
    case "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry")

// Returning values from a closure


let drivingWithReturn = {
    (place:String) -> String in
    return "I'm going to \(place) in my car"
}

let result = drivingWithReturn("İzmir") ; print(result)

//Closure with return but does not have any parameters.

let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}


let isActive = {
    () -> Bool in
    print("Your system is active now")
    return true
}

isActive()

var callNumber = { (number: Int) -> String in
    return "Calling now..."
}

var resultTwo = callNumber(22)
print(resultTwo)

// Closures as parameters

var newClosure = {
    print("Its a new closure ")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: newClosure)

var closureOne = {
    print("Hello im Ebrar")
}


func greeting(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

animate(duration: 3.0, animations: {
    print("Fade out the image")
})

func doTricks(_ tricks: () -> Void) {
    print("Start recording now!")
    tricks()
    print("Did you get all that?")
}

doTricks({
    print("Hello")
})

func tendGarden(activities: () -> Void) {
    print("I love gardening")
    activities()
}
tendGarden {
    print("Let's grow some roses!")
}







